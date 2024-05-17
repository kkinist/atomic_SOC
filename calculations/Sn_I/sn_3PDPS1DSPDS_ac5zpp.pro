
 Working directory              : /wrk/irikura/molpro.KIBJvLHUA4/
 Global scratch directory       : /wrk/irikura/molpro.KIBJvLHUA4/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.KIBJvLHUA4/

 id        : nistki

 Nodes            nprocs
 pn112695.nist.gov   12
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1042), CPU time= 0.01 sec
 ***,Sn SO-CI
 memory,1500,M;
 
 gprint,orbitals,civector;
                                                                     !gthresh,twoint=1.d-14,step=1.d-9,gradient=1.d-9,energy=1.d-10
 
 symmetry,xyz
 geometry={Sn};
 
 basis=aug-cc-pwCV5Z-PP
 
                                                                                 ! spherical anion orbitals (4S odd)
 {rhf; wf,nelec=23,sym=2,spin=3}
 
                                                                                 ! seek spherical orbitals using preliminary MCSCF
                                                                                 !{multi
                                                                                 !    !wf,nelec=22,sym=1,spin=2; state,3
                                                                                 !    wf,nelec=22,sym=1,spin=0; state,5
                                                                                 !    expec2,lxx,lyy,lzz;
                                                                                 !}
 
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
 Commands initialized (847), CPU time= 0.01 sec, 718 directives.
 Default parameters read. Elapsed time= 0.11 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2024.1 linked Wed Jan 31 05:42:09 2024


 **********************************************************************************************************************************
 LABEL *   Sn SO-CI                                                                                                                                                      
  (32 PROC) 64 bit mpp version                                                           DATE: 01-May-24          TIME: 09:42:13  
 **********************************************************************************************************************************

 SHA1:             675817fde4514a4a933b69e420913a90cee4ef91
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

 Library entry Sn   ECP ECP28MDF                 selected for group  1
 Library entry SN     S aug-cc-pwCV5Z-PP     selected for orbital group  1
 Library entry SN     P aug-cc-pwCV5Z-PP     selected for orbital group  1
 Library entry SN     D aug-cc-pwCV5Z-PP     selected for orbital group  1
 Library entry SN     F aug-cc-pwCV5Z-PP     selected for orbital group  1
 Library entry SN     G aug-cc-pwCV5Z-PP     selected for orbital group  1
 Library entry SN     H aug-cc-pwCV5Z-PP     selected for orbital group  1
 Library entry SN     I aug-cc-pwCV5Z-PP     selected for orbital group  1


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

         1 0.418E-05 0.576E-04 0.211E-03 0.211E-03 0.211E-03 0.211E-03 0.211E-03 0.441E-03
         2 0.131E-06 0.131E-06 0.131E-06 0.624E-03 0.624E-03 0.624E-03 0.398E-02 0.398E-02


 Contracted 2-electron integrals neglected if value below      1.0D-14
 AO integral compression algorithm  1   Integral accuracy      1.0D-14

     738.198 MB (compressed) written to integral file ( 18.0%)

     Node minimum: 48.234 MB, node maximum: 72.614 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:   26065404.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   2  SEGMENT LENGTH:   15978249      RECORD LENGTH: 524288

 Memory used in sort:      16.54 MW

 SORT1 READ   511790813. AND WROTE     4291573. INTEGRALS IN     13 RECORDS. CPU TIME:     2.14 SEC, REAL TIME:     2.21 SEC
 SORT2 READ    53582289. AND WROTE   312900871. INTEGRALS IN   2976 RECORDS. CPU TIME:     0.51 SEC, REAL TIME:     0.58 SEC

 Node minimum:    26062456.  Node maximum:    26096463. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      19       30.46       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         8.33      8.10
 REAL TIME  *         9.56 SEC
 DISK USED  *        30.88 MB (local),        1.61 GB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 Program * Restricted Hartree-Fock

 Orbital guess generated from atomic densities.

 Initial alpha occupancy:   7   6
 Initial beta  occupancy:   7   3

 NELEC=   23   SYM=2   MS2= 3   THRE=1.0D-08   THRD=3.2D-06   THRG=3.2D-06  HFMA2=F  DIIS_START=2   DIIS_MAX=10   DIIS_INCORE=F

 Level shifts:    0.00 (CLOSED)    0.00 (OPEN)    0.30 (GAP_MIN)

 ITER           ETOT              DE          GRAD        DDIFF     DIIS  NEXP   TIME(IT)  TIME(TOT)  DIAG
   1     -213.37058296    -213.37058296     0.00D+00     0.47D-01     0     0       0.14      0.27    start
   2     -213.37339836      -0.00281540     0.77D-03     0.12D-02     1     0       0.16      0.43    diag2
   3     -213.37370172      -0.00030336     0.42D-03     0.30D-03     2     0       0.15      0.58    diag2
   4     -213.37379302      -0.00009130     0.14D-03     0.22D-03     3     0       0.15      0.73    diag2
   5     -213.37380338      -0.00001036     0.36D-04     0.72D-04     4     0       0.15      0.88    diag2
   6     -213.37380432      -0.00000094     0.75D-05     0.29D-04     5     0       0.15      1.03    diag2
   7     -213.37380442      -0.00000010     0.21D-05     0.16D-04     6     0       0.15      1.18    diag2
   8     -213.37380443      -0.00000000     0.38D-06     0.39D-05     7     0       0.15      1.33    fixocc
   9     -213.37380443      -0.00000000     0.12D-06     0.86D-06     8     0       0.15      1.48    diag2
  10     -213.37380443      -0.00000000     0.55D-07     0.14D-06     0     0       0.15      1.63    diag/orth

 Final alpha occupancy:   7   6
 Final beta  occupancy:   7   3

 !RHF STATE 1.2 Energy               -213.373804427883
  RHF One-electron energy            -381.084099687726
  RHF Two-electron energy             167.710295259843
  RHF Kinetic energy                   82.648030960694
  RHF Nuclear energy                    0.000000000000
  RHF Virial quotient                  -2.581716732361

 !RHF STATE 1.2 Dipole moment           0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 ELECTRON ORBITALS
 =================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -5.62712     1  1  s    1.00021
    2.1     2.00000    -1.07696     1  1  d1+  0.98589
    3.1     2.00000    -1.07696     1  1  d0   0.78471    1  1  d2+ -0.61407
    4.1     2.00000    -1.07696     1  1  d2-  0.82647    1  1  d1- -0.53085
    5.1     2.00000    -1.07696     1  1  d0   0.30277    1  1  d2-  0.39335    1  1  d2+  0.38215    1  1  d1-  0.77697
    6.1     2.00000    -1.07696     1  1  d0   0.52447    1  1  d2- -0.37998    1  1  d2+  0.67679    1  1  d1- -0.33667
    7.1     2.00000    -0.29348     1  1  s   -0.33848    1  5  s    0.48349    1  6  s    0.46879
    1.2     2.00000    -3.81343     1  1  py   0.86810    1  1  pz  -0.48323
    2.2     2.00000    -3.81343     1  1  px   0.99276
    3.2     2.00000    -3.81343     1  1  py   0.48195    1  1  pz   0.87446
    4.2     1.00000    -0.05737     1  5  py   0.34546    1  6  py   0.38365    1  7  py   0.25651
    5.2     1.00000    -0.05737     1  5  px   0.34428    1  6  px   0.38234    1  7  px   0.25563
    6.2     1.00000    -0.05737     1  5  pz   0.33795    1  6  pz   0.37531    1  7  pz   0.25094


 HOMO      6.2    -0.057369 =      -1.5611eV
 LUMO      7.2     0.127892 =       3.4801eV
 LUMO-HOMO         0.185261 =       5.0412eV

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
 CPU TIMES  *         9.96      1.64      8.10
 REAL TIME  *        11.30 SEC
 DISK USED  *        36.69 MB (local),        1.67 GB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING NTRIP          =        12.00000000                                  
 SETTING NSING          =        15.00000000                                  

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of closed-shell orbitals:   9 (    6    3)
 Number of active  orbitals:        7 (    1    6)
 Number of external orbitals:     249 (  122  127)

 State symmetry 1

 Number of active electrons:   4    Spin symmetry=Triplet   Space symmetry=1
 Number of states:            12
 Number of CSFs:             120   (135 determinants, 245 intermediate states)

 State symmetry 2

 Number of active electrons:   4    Spin symmetry=Singlet   Space symmetry=1
 Number of states:            15
 Number of CSFs:             126   (261 determinants, 441 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  
 *** IN SYMMETRY 1 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.226D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.478D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.507D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.595D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.664D+00 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 4 2 3 6 5 1 1 2 4   3 6 5 1 5 6 3 2 4 9   81015 712141311 1 5   6 3 2 4 9 715 81014
                                       131211 4 4 3 6 5 1 7   915 81014131112 5 3   2 4 6 1 7 9 8151014  131112 5 2 3 6 42821
                                       26171819222016242327  25 1 912 81514101311   7 5 3 2 6 4 91113 7  1415 81012 1 5 3 6 4
                                        2 3 5 6 2 2 1 1 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.405D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.116D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.373D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.169D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.204D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.292D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.996D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.996D-01 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   2 1 3 2 1 3 2 3 1 2   1 3 6 4 8 9 710 5 2   1 3 6 810 7 9 4 5 6   4 8 9 710 5 2 1 319
                                       11211620171815141312   4 6 8 9 710 5131121  1614171815201912 4 6   8 5 710 9 3 1 2 4 6
                                        8 9 7 5101119162117  141815201312 1 2 3 6   4 8 510 7 9 2 1 319  11211615141718201213
                                        9 7 6 8 510 4 2 1 3   2 1 3 2 1 3

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.03704   0.03704   0.03704   0.03704   0.03704   0.03704   0.03704   0.03704
                                          0.03704   0.03704   0.03704   0.03704
 Weight factors for state symmetry  2:    0.03704   0.03704   0.03704   0.03704   0.03704   0.03704   0.03704   0.03704
                                          0.03704   0.03704   0.03704   0.03704   0.03704   0.03704   0.03704
 
 Number of orbital rotations:  2021  ( 24 closed/active, 1113 closed/virtual, 0 active/active, 884 active/virtual )
 Total number of variables:    7556
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1   12   18    0   -213.17177767    -213.22565030   -0.05387263    0.46981534 0.00413386 0.00000000  0.79E+00      2.20
   2    6   10    0   -213.20947918    -213.21473071   -0.00525153    0.46409350 0.00001377 0.00000000  0.60E-01      4.22
   3    6   10    0   -213.21474383    -213.21474403   -0.00000020    0.00099045 0.00000001 0.00000000  0.11E-02      6.42
   4    2    4    0   -213.21474403    -213.21474403    0.00000000    0.00000009 0.00000001 0.00000000  0.26E-06      7.92

 CONVERGENCE REACHED!  Final gradient:    0.00000001 ( 0.82E-08)
                       Final energy:   -213.21474403
 
 Results for state 1.1 Triplet
 =============================
 !MCSCF STATE 1.1 Triplet Energy              -213.340847266954
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.84579421
 One electron energy                          -376.84539718
 Two electron energy                           163.50454991
 Virial ratio                                    3.57515604
 
 !MCSCF STATE 1.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Triplet
 =============================
 !MCSCF STATE 2.1 Triplet Energy              -213.340847266564
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.84579422
 One electron energy                          -376.84539721
 Two electron energy                           163.50454994
 Virial ratio                                    3.57515604
 
 !MCSCF STATE 2.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Triplet
 =============================
 !MCSCF STATE 3.1 Triplet Energy              -213.340847266429
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.84579421
 One electron energy                          -376.84539719
 Two electron energy                           163.50454992
 Virial ratio                                    3.57515604
 
 !MCSCF STATE 3.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Triplet
 =============================
 !MCSCF STATE 4.1 Triplet Energy              -213.170224391166
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.32206809
 One electron energy                          -371.77384532
 Two electron energy                           158.60362093
 Virial ratio                                    3.58946634
 
 !MCSCF STATE 4.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Triplet
 =============================
 !MCSCF STATE 5.1 Triplet Energy              -213.170224391165
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.32206809
 One electron energy                          -371.77384532
 Two electron energy                           158.60362093
 Virial ratio                                    3.58946634
 
 !MCSCF STATE 5.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Triplet
 =============================
 !MCSCF STATE 6.1 Triplet Energy              -213.170224390753
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.32206807
 One electron energy                          -371.77384524
 Two electron energy                           158.60362085
 Virial ratio                                    3.58946634
 
 !MCSCF STATE 6.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.1 Triplet
 =============================
 !MCSCF STATE 7.1 Triplet Energy              -213.170224390712
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.32206807
 One electron energy                          -371.77384523
 Two electron energy                           158.60362084
 Virial ratio                                    3.58946634
 
 !MCSCF STATE 7.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.1 Triplet
 =============================
 !MCSCF STATE 8.1 Triplet Energy              -213.170224390587
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.32206807
 One electron energy                          -371.77384521
 Two electron energy                           158.60362082
 Virial ratio                                    3.58946634
 
 !MCSCF STATE 8.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 9.1 Triplet
 =============================
 !MCSCF STATE 9.1 Triplet Energy              -213.166542827733
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.38721353
 One electron energy                          -372.11826963
 Two electron energy                           158.95172680
 Virial ratio                                    3.58737410
 
 !MCSCF STATE 9.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 10.1 Triplet
 ==============================
 !MCSCF STATE 10.1 Triplet Energy             -213.166542827600
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.38721353
 One electron energy                          -372.11826964
 Two electron energy                           158.95172682
 Virial ratio                                    3.58737410
 
 !MCSCF STATE 10.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 11.1 Triplet
 ==============================
 !MCSCF STATE 11.1 Triplet Energy             -213.166542827231
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.38721355
 One electron energy                          -372.11826977
 Two electron energy                           158.95172694
 Virial ratio                                    3.58737410
 
 !MCSCF STATE 11.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 12.1 Triplet
 ==============================
 !MCSCF STATE 12.1 Triplet Energy             -213.164541275752
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.32196225
 One electron energy                          -371.77221471
 Two electron energy                           158.60767343
 Virial ratio                                    3.58940063
 
 !MCSCF STATE 12.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.1 Singlet
 =============================
 !MCSCF STATE 1.1 Singlet Energy              -213.305033519938
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.80752045
 One electron energy                          -376.61425705
 Two electron energy                           163.30922353
 Virial ratio                                    3.57591379
 
 !MCSCF STATE 1.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Singlet
 =============================
 !MCSCF STATE 2.1 Singlet Energy              -213.305033519937
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.80752045
 One electron energy                          -376.61425705
 Two electron energy                           163.30922353
 Virial ratio                                    3.57591379
 
 !MCSCF STATE 2.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Singlet
 =============================
 !MCSCF STATE 3.1 Singlet Energy              -213.305033519475
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.80752045
 One electron energy                          -376.61425704
 Two electron energy                           163.30922352
 Virial ratio                                    3.57591379
 
 !MCSCF STATE 3.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Singlet
 =============================
 !MCSCF STATE 4.1 Singlet Energy              -213.305033519442
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.80752046
 One electron energy                          -376.61425709
 Two electron energy                           163.30922357
 Virial ratio                                    3.57591379
 
 !MCSCF STATE 4.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Singlet
 =============================
 !MCSCF STATE 5.1 Singlet Energy              -213.305033519298
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.80752046
 One electron energy                          -376.61425707
 Two electron energy                           163.30922355
 Virial ratio                                    3.57591379
 
 !MCSCF STATE 5.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Singlet
 =============================
 !MCSCF STATE 6.1 Singlet Energy              -213.275221333515
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.75717275
 One electron energy                          -376.22942684
 Two electron energy                           162.95420550
 Virial ratio                                    3.57712068
 
 !MCSCF STATE 6.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.1 Singlet
 =============================
 !MCSCF STATE 7.1 Singlet Energy              -213.174016471542
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.32213482
 One electron energy                          -371.77487863
 Two electron energy                           158.60086215
 Virial ratio                                    3.58951031
 
 !MCSCF STATE 7.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.1 Singlet
 =============================
 !MCSCF STATE 8.1 Singlet Energy              -213.174016471001
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.32213480
 One electron energy                          -371.77487855
 Two electron energy                           158.60086207
 Virial ratio                                    3.58951031
 
 !MCSCF STATE 8.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 9.1 Singlet
 =============================
 !MCSCF STATE 9.1 Singlet Energy              -213.174016470894
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.32213480
 One electron energy                          -371.77487854
 Two electron energy                           158.60086207
 Virial ratio                                    3.58951031
 
 !MCSCF STATE 9.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 10.1 Singlet
 ==============================
 !MCSCF STATE 10.1 Singlet Energy             -213.158138396607
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.42756883
 One electron energy                          -372.35800126
 Two electron energy                           159.19986286
 Virial ratio                                    3.58600540
 
 !MCSCF STATE 10.1 Singlet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 11.1 Singlet
 ==============================
 !MCSCF STATE 11.1 Singlet Energy             -213.158138396352
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.42756884
 One electron energy                          -372.35800130
 Two electron energy                           159.19986290
 Virial ratio                                    3.58600540
 
 !MCSCF STATE 11.1 Singlet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 12.1 Singlet
 ==============================
 !MCSCF STATE 12.1 Singlet Energy             -213.158138396025
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.42756884
 One electron energy                          -372.35800132
 Two electron energy                           159.19986293
 Virial ratio                                    3.58600540
 
 !MCSCF STATE 12.1 Singlet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 13.1 Singlet
 ==============================
 !MCSCF STATE 13.1 Singlet Energy             -213.158138395002
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.42756886
 One electron energy                          -372.35800147
 Two electron energy                           159.19986307
 Virial ratio                                    3.58600540
 
 !MCSCF STATE 13.1 Singlet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 14.1 Singlet
 ==============================
 !MCSCF STATE 14.1 Singlet Energy             -213.158138394980
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.42756886
 One electron energy                          -372.35800147
 Two electron energy                           159.19986307
 Virial ratio                                    3.58600540
 
 !MCSCF STATE 14.1 Singlet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 15.1 Singlet
 ==============================
 !MCSCF STATE 15.1 Singlet Energy             -213.147124872508
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.47275933
 One electron energy                          -372.62180206
 Two electron energy                           159.47467719
 Virial ratio                                    3.58445487
 
 !MCSCF STATE 15.1 Singlet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 ? Warning
 ? Transition properties are only calculated between states of the same symmetry
 ? The problem occurs in mu_properties_expec2

 !MCSCF expec      <1.1 Triplet|LXLX|1.1 Triplet>     0.000000000003
 !MCSCF expec      <2.1 Triplet|LXLX|2.1 Triplet>     0.999999999995
 !MCSCF expec      <3.1 Triplet|LXLX|3.1 Triplet>     1.000000000000
 !MCSCF expec      <4.1 Triplet|LXLX|4.1 Triplet>     1.145275412481
 !MCSCF expec      <5.1 Triplet|LXLX|5.1 Triplet>     1.000000000000
 !MCSCF expec      <6.1 Triplet|LXLX|6.1 Triplet>     3.999999972296
 !MCSCF expec      <7.1 Triplet|LXLX|7.1 Triplet>     1.000000042350
 !MCSCF expec      <8.1 Triplet|LXLX|8.1 Triplet>     2.854723228562
 !MCSCF expec      <9.1 Triplet|LXLX|9.1 Triplet>     0.999999999991
 !MCSCF expec    <10.1 Triplet|LXLX|10.1 Triplet>     0.000000000009
 !MCSCF expec    <11.1 Triplet|LXLX|11.1 Triplet>     1.000000000000
 !MCSCF expec    <12.1 Triplet|LXLX|12.1 Triplet>    -0.000000000000
 !MCSCF expec      <1.1 Singlet|LXLX|1.1 Singlet>     3.996473676177
 !MCSCF expec      <2.1 Singlet|LXLX|2.1 Singlet>     3.999999999955
 !MCSCF expec      <3.1 Singlet|LXLX|3.1 Singlet>     1.000000000000
 !MCSCF expec      <4.1 Singlet|LXLX|4.1 Singlet>     1.000000000082
 !MCSCF expec      <5.1 Singlet|LXLX|5.1 Singlet>     0.003525948810
 !MCSCF expec      <6.1 Singlet|LXLX|6.1 Singlet>    -0.000000000000
 !MCSCF expec      <7.1 Singlet|LXLX|7.1 Singlet>     1.000000000000
 !MCSCF expec      <8.1 Singlet|LXLX|8.1 Singlet>     0.000000000935
 !MCSCF expec      <9.1 Singlet|LXLX|9.1 Singlet>     0.999999999486
 !MCSCF expec    <10.1 Singlet|LXLX|10.1 Singlet>     2.570628517397
 !MCSCF expec    <11.1 Singlet|LXLX|11.1 Singlet>     1.000000000119
 !MCSCF expec    <12.1 Singlet|LXLX|12.1 Singlet>     3.999999999568
 !MCSCF expec    <13.1 Singlet|LXLX|13.1 Singlet>     1.000000000000
 !MCSCF expec    <14.1 Singlet|LXLX|14.1 Singlet>     1.429372336299
 !MCSCF expec    <15.1 Singlet|LXLX|15.1 Singlet>     0.000000000000
 
 !MCSCF expec      <1.1 Triplet|LYLY|1.1 Triplet>     0.999999999997
 !MCSCF expec      <2.1 Triplet|LYLY|2.1 Triplet>     0.000000000005
 !MCSCF expec      <3.1 Triplet|LYLY|3.1 Triplet>     1.000000000000
 !MCSCF expec      <4.1 Triplet|LYLY|4.1 Triplet>     0.861449010995
 !MCSCF expec      <5.1 Triplet|LYLY|5.1 Triplet>     1.000000000000
 !MCSCF expec      <6.1 Triplet|LYLY|6.1 Triplet>     1.000000027717
 !MCSCF expec      <7.1 Triplet|LYLY|7.1 Triplet>     3.999999957766
 !MCSCF expec      <8.1 Triplet|LYLY|8.1 Triplet>     3.138552224806
 !MCSCF expec      <9.1 Triplet|LYLY|9.1 Triplet>     0.000000000009
 !MCSCF expec    <10.1 Triplet|LYLY|10.1 Triplet>     0.999999999991
 !MCSCF expec    <11.1 Triplet|LYLY|11.1 Triplet>     1.000000000000
 !MCSCF expec    <12.1 Triplet|LYLY|12.1 Triplet>    -0.000000000000
 !MCSCF expec      <1.1 Singlet|LYLY|1.1 Singlet>     0.898954381898
 !MCSCF expec      <2.1 Singlet|LYLY|2.1 Singlet>     1.000000000045
 !MCSCF expec      <3.1 Singlet|LYLY|3.1 Singlet>     1.000000000000
 !MCSCF expec      <4.1 Singlet|LYLY|4.1 Singlet>     3.999999999907
 !MCSCF expec      <5.1 Singlet|LYLY|5.1 Singlet>     3.101040343561
 !MCSCF expec      <6.1 Singlet|LYLY|6.1 Singlet>    -0.000000000000
 !MCSCF expec      <7.1 Singlet|LYLY|7.1 Singlet>     1.000000000000
 !MCSCF expec      <8.1 Singlet|LYLY|8.1 Singlet>     0.999999999065
 !MCSCF expec      <9.1 Singlet|LYLY|9.1 Singlet>     0.000000000514
 !MCSCF expec    <10.1 Singlet|LYLY|10.1 Singlet>     3.374742162318
 !MCSCF expec    <11.1 Singlet|LYLY|11.1 Singlet>     3.999999999905
 !MCSCF expec    <12.1 Singlet|LYLY|12.1 Singlet>     1.000000000434
 !MCSCF expec    <13.1 Singlet|LYLY|13.1 Singlet>     1.000000000000
 !MCSCF expec    <14.1 Singlet|LYLY|14.1 Singlet>     0.625257190663
 !MCSCF expec    <15.1 Singlet|LYLY|15.1 Singlet>     0.000000000000
 
 !MCSCF expec      <1.1 Triplet|LZLZ|1.1 Triplet>     1.000000000000
 !MCSCF expec      <2.1 Triplet|LZLZ|2.1 Triplet>     1.000000000000
 !MCSCF expec      <3.1 Triplet|LZLZ|3.1 Triplet>    -0.000000000000
 !MCSCF expec      <4.1 Triplet|LZLZ|4.1 Triplet>     3.993275576523
 !MCSCF expec      <5.1 Triplet|LZLZ|5.1 Triplet>     4.000000000000
 !MCSCF expec      <6.1 Triplet|LZLZ|6.1 Triplet>     0.999999999987
 !MCSCF expec      <7.1 Triplet|LZLZ|7.1 Triplet>     0.999999999883
 !MCSCF expec      <8.1 Triplet|LZLZ|8.1 Triplet>     0.006724546631
 !MCSCF expec      <9.1 Triplet|LZLZ|9.1 Triplet>     1.000000000000
 !MCSCF expec    <10.1 Triplet|LZLZ|10.1 Triplet>     1.000000000000
 !MCSCF expec    <11.1 Triplet|LZLZ|11.1 Triplet>    -0.000000000000
 !MCSCF expec    <12.1 Triplet|LZLZ|12.1 Triplet>    -0.000000000000
 !MCSCF expec      <1.1 Singlet|LZLZ|1.1 Singlet>     1.104571941925
 !MCSCF expec      <2.1 Singlet|LZLZ|2.1 Singlet>     1.000000000000
 !MCSCF expec      <3.1 Singlet|LZLZ|3.1 Singlet>     4.000000000000
 !MCSCF expec      <4.1 Singlet|LZLZ|4.1 Singlet>     1.000000000011
 !MCSCF expec      <5.1 Singlet|LZLZ|5.1 Singlet>     2.895433707629
 !MCSCF expec      <6.1 Singlet|LZLZ|6.1 Singlet>    -0.000000000000
 !MCSCF expec      <7.1 Singlet|LZLZ|7.1 Singlet>    -0.000000000000
 !MCSCF expec      <8.1 Singlet|LZLZ|8.1 Singlet>     1.000000000000
 !MCSCF expec      <9.1 Singlet|LZLZ|9.1 Singlet>     1.000000000000
 !MCSCF expec    <10.1 Singlet|LZLZ|10.1 Singlet>     0.054629320285
 !MCSCF expec    <11.1 Singlet|LZLZ|11.1 Singlet>     0.999999999976
 !MCSCF expec    <12.1 Singlet|LZLZ|12.1 Singlet>     0.999999999998
 !MCSCF expec    <13.1 Singlet|LZLZ|13.1 Singlet>     4.000000000000
 !MCSCF expec    <14.1 Singlet|LZLZ|14.1 Singlet>     3.945370473038
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
 !MCSCF expec    <15.1 Singlet|L**2|15.1 Singlet>     0.000000000000
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 2 4 6 5 3 1 1 2 4   6 3 5 1 2 4 6 5 3 9   711 81214151310 1 2   4 6 5 3 9 71112 814
                                       151013 2 4 6 3 5 1 9   71112 814151013 2 4   6 5 3 1 9 711 81214  151310 2 4 6 5 32825
                                       17212723262419182022  16 1 9 711 812141513  10 2 4 6 5 3 9 711 8  1214151310 1 2 4 6 3
                                        5 2 4 6 3 5 1 1 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 1 2 2 1 3 1 3 2 2   1 3 4 6 5 810 7 9 3   1 2 4 6 5 810 7 9 4   6 5 810 7 9 3 1 211
                                       19211312161415171820   4 6 5 810 7 9111921  1312161415172018 4 6   510 8 7 9 3 1 2 4 6
                                        510 8 9 71119211312  161415172018 3 1 2 4   6 5 810 9 7 3 1 211  19211312161415171820
                                        4 6 510 8 9 7 3 1 2   3 1 2 3 1 2
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -5.97492     1  1  s    1.00029
    2.1     2.00000    -1.42431     1  1  d0   1.00067
    3.1     2.00000    -1.42431     1  1  d1+  1.00067
    4.1     2.00000    -1.42431     1  1  d1-  1.00067
    5.1     2.00000    -1.42431     1  1  d2+  1.00067
    6.1     2.00000    -1.42431     1  1  d2-  1.00067
    7.1     1.95359    -0.59412     1  1  s   -0.36272    1  5  s    0.60695    1  6  s    0.50582
    1.2     2.00000    -4.16059     1  1  pz   0.99789
    2.2     2.00000    -4.16059     1  1  px   0.99789
    3.2     2.00000    -4.16059     1  1  py   0.99789
    4.2     0.45975    -0.12016     1  1  py  -0.27770    1  5  py   0.50204    1  6  py   0.41845
    5.2     0.45975    -0.12016     1  1  px  -0.27770    1  5  px   0.50204    1  6  px   0.41845
    6.2     0.45975    -0.12016     1  1  pz  -0.27770    1  5  pz   0.50204    1  6  pz   0.41845
    7.2     0.22239     0.01866     1 12  px   1.15477
    8.2     0.22239     0.01866     1 12  pz   1.15477
    9.2     0.22239     0.01866     1 12  py   1.15477
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 1 (Triplet)
 =======================================

 State:              1               2               3               4               5               6               7
 2 aa0000      -0.00000003      0.00000008      0.98214549     -0.00000000     -0.00000002     -0.00000000     -0.00000000
 2 a0a000       0.98214548      0.00000174      0.00000003      0.00000000     -0.00000000     -0.00000005     -0.00000000
 2 0aa000      -0.00000174      0.98214548     -0.00000008      0.00000000      0.00000000      0.00000000     -0.00000004
 2 00a0a0       0.00000000     -0.00000000      0.00000000     -0.03305530      0.00000014     -0.00000318     -0.00000920
 2 a0000a      -0.00000000     -0.00000000      0.00000000      0.71413143     -0.00000297      0.00000356      0.00000885
 2 a000a0       0.09897081      0.00000018      0.00000000     -0.00000209      0.00000000      0.69819092      0.00006706
 2 0a00a0      -0.00000018      0.09897081     -0.00000001     -0.00000458      0.00000000     -0.00006706      0.69819092
 2 a00a00      -0.00000000      0.00000001      0.09897077      0.00000290      0.69819089     -0.00000000     -0.00000000
 2 0a000a       0.00000000     -0.00000001     -0.09897075      0.00000290      0.69819089      0.00000000     -0.00000000
 2 00aa00       0.00000018     -0.09897077      0.00000001     -0.00000458      0.00000000     -0.00006706      0.69819085
 2 00a00a      -0.09897075     -0.00000018     -0.00000000     -0.00000209     -0.00000000      0.69819085      0.00006706
 2 0a0a00       0.00000000     -0.00000000      0.00000000     -0.68107613      0.00000283     -0.00000039      0.00000035
 0 aa2000       0.00000000     -0.00000001     -0.12050753      0.00000000      0.00000000     -0.00000000     -0.00000000
 0 a2a000      -0.12050753     -0.00000021     -0.00000000     -0.00000000      0.00000000      0.00000001      0.00000000
 0 2aa000       0.00000021     -0.12050753      0.00000001     -0.00000000     -0.00000000     -0.00000000      0.00000000
 0 20a0a0      -0.00000000      0.00000000     -0.00000000      0.00316894     -0.00000001      0.00000036      0.00000103
 0 02a0a0       0.00000000      0.00000000     -0.00000000      0.00426263     -0.00000002      0.00000036      0.00000104
 0 a0200a       0.00000000      0.00000000     -0.00000000     -0.08053040      0.00000033     -0.00000040     -0.00000099
 0 a2000a       0.00000000      0.00000000      0.00000000     -0.08002242      0.00000033     -0.00000040     -0.00000100
 0 a200a0      -0.01033446     -0.00000002     -0.00000000      0.00000024     -0.00000000     -0.07875817     -0.00000756
 0 2a00a0       0.00000002     -0.01033446      0.00000000      0.00000052     -0.00000000      0.00000756     -0.07875817
 0 a02a00       0.00000000     -0.00000000     -0.01033445     -0.00000033     -0.07875817      0.00000000      0.00000000
 0 0a200a      -0.00000000      0.00000000      0.01033445     -0.00000033     -0.07875817     -0.00000000      0.00000000
 0 02a00a       0.01033445      0.00000002      0.00000000      0.00000024      0.00000000     -0.07875816     -0.00000756
 0 20aa00      -0.00000002      0.01033445     -0.00000000      0.00000052     -0.00000000      0.00000756     -0.07875816
 0 0a20a0       0.00000004     -0.02038525      0.00000000      0.00000051     -0.00000000      0.00000751     -0.07821087
 0 a020a0      -0.02038525     -0.00000004     -0.00000000      0.00000023     -0.00000000     -0.07821087     -0.00000751
 0 a20a00       0.00000000     -0.00000000     -0.02038525     -0.00000033     -0.07821086      0.00000000      0.00000000
 0 2a000a      -0.00000000      0.00000000      0.02038525     -0.00000033     -0.07821086     -0.00000000      0.00000000
 0 02aa00      -0.00000004      0.02038525     -0.00000000      0.00000051     -0.00000000      0.00000751     -0.07821086
 0 20a00a       0.02038525      0.00000004      0.00000000      0.00000023      0.00000000     -0.07821086     -0.00000751
 0 0a2a00      -0.00000000      0.00000000      0.00000000      0.07685348     -0.00000032      0.00000005     -0.00000003
 0 2a0a00      -0.00000000      0.00000000     -0.00000000      0.07626777     -0.00000032      0.00000004     -0.00000005
 
 Energy:     -213.34084727   -213.34084727   -213.34084727   -213.17022439   -213.17022439   -213.17022439   -213.17022439

 State:              8               9              10              11              12
 2 aa0000       0.00000000      0.00000000      0.00000000     -0.14150478      0.00000000
 2 a0a000      -0.00000000      0.00000042     -0.14150481     -0.00000000     -0.00000000
 2 0aa000      -0.00000000     -0.14150482     -0.00000042     -0.00000000      0.00000000
 2 00a0a0       0.80552343     -0.00000000     -0.00000000      0.00000000      0.56993430
 2 a0000a      -0.37413503     -0.00000000     -0.00000000      0.00000000      0.56993424
 2 a000a0       0.00000267     -0.00000204      0.69118441      0.00000001      0.00000000
 2 0a00a0       0.00000779      0.69118441      0.00000204      0.00000002      0.00000000
 2 a00a00      -0.00000000     -0.00000002     -0.00000001      0.69118445     -0.00000000
 2 0a000a       0.00000000      0.00000002      0.00000001     -0.69118446     -0.00000000
 2 00aa00       0.00000779     -0.69118449     -0.00000204     -0.00000002     -0.00000000
 2 00a00a       0.00000267      0.00000204     -0.69118449     -0.00000001     -0.00000000
 2 0a0a00      -0.43138849     -0.00000000     -0.00000000     -0.00000000      0.56993423
 0 aa2000      -0.00000000     -0.00000000     -0.00000000      0.02074711      0.00000000
 0 a2a000       0.00000000     -0.00000006      0.02074711      0.00000000      0.00000000
 0 2aa000       0.00000000      0.02074712      0.00000006      0.00000000     -0.00000000
 0 20a0a0      -0.09057234      0.00000000      0.00000000     -0.00000000     -0.06468403
 0 02a0a0      -0.09052746      0.00000000      0.00000000     -0.00000000     -0.06468403
 0 a0200a       0.04157219      0.00000000      0.00000000     -0.00000000     -0.06468402
 0 a2000a       0.04254179      0.00000000      0.00000000     -0.00000000     -0.06468402
 0 a200a0      -0.00000030      0.00000023     -0.07809608     -0.00000000     -0.00000000
 0 2a00a0      -0.00000088     -0.07809608     -0.00000023     -0.00000000     -0.00000000
 0 a02a00       0.00000000      0.00000000      0.00000000     -0.07809609     -0.00000000
 0 0a200a      -0.00000000     -0.00000000     -0.00000000      0.07809609     -0.00000000
 0 02a00a      -0.00000030     -0.00000023      0.07809609      0.00000000      0.00000000
 0 20aa00      -0.00000088      0.07809609      0.00000023      0.00000000      0.00000000
 0 0a20a0      -0.00000087     -0.07507409     -0.00000022     -0.00000000     -0.00000000
 0 a020a0      -0.00000030      0.00000022     -0.07507409     -0.00000000     -0.00000000
 0 a20a00       0.00000000      0.00000000      0.00000000     -0.07507410     -0.00000000
 0 2a000a      -0.00000000     -0.00000000     -0.00000000      0.07507410      0.00000000
 0 02aa00      -0.00000087      0.07507410      0.00000022      0.00000000      0.00000000
 0 20a00a      -0.00000030     -0.00000022      0.07507410      0.00000000      0.00000000
 0 0a2a00       0.04803056      0.00000000      0.00000000      0.00000000     -0.06468402
 0 2a0a00       0.04895528      0.00000000      0.00000000      0.00000000     -0.06468402
 
 Energy:     -213.17022439   -213.16654283   -213.16654283   -213.16654283   -213.16454128
 
 
 CI Coefficients of symmetry 1 (Singlet)
 =======================================

 State:              1               2               3               4               5               6               7
 2 020000      -0.02353910     -0.00000022     -0.00000000     -0.00000025      0.79244151      0.54140406     -0.00000000
 2 200000       0.69804404      0.00000748      0.00000000      0.00000012     -0.37583531      0.54140404      0.00000000
 2 ba0000       0.00000000     -0.00000001     -0.68657719      0.00000000      0.00000000      0.00000000      0.00000001
 2 ab0000      -0.00000000      0.00000001      0.68657719     -0.00000000     -0.00000000     -0.00000000     -0.00000001
 2 b0a000       0.00000738     -0.68657719      0.00000001      0.00000266      0.00000003     -0.00000000     -0.00000000
 2 a0b000      -0.00000738      0.68657719     -0.00000001     -0.00000266     -0.00000003      0.00000000      0.00000000
 2 0ba000      -0.00000000     -0.00000266     -0.00000000     -0.68657718     -0.00000022     -0.00000000      0.00000000
 2 0ab000       0.00000000      0.00000266      0.00000000      0.68657718      0.00000022      0.00000000     -0.00000000
 2 002000      -0.67450492     -0.00000726     -0.00000000      0.00000013     -0.41660622      0.54140404      0.00000000
 2 00b0a0       0.09953222      0.00000107      0.00000000     -0.00000002      0.06147582     -0.10904004      0.00000000
 2 00a0b0      -0.09953222     -0.00000107     -0.00000000      0.00000002     -0.06147582      0.10904004     -0.00000000
 2 a0000b       0.10300568      0.00000110      0.00000000      0.00000002     -0.05545950      0.10904001     -0.00000000
 2 b0000a      -0.10300568     -0.00000110     -0.00000000     -0.00000002      0.05545950     -0.10904001      0.00000000
 2 a000b0      -0.00000109      0.10131364     -0.00000000     -0.00000039     -0.00000000     -0.00000000      0.00000000
 2 b000a0       0.00000109     -0.10131364      0.00000000      0.00000039      0.00000000      0.00000000     -0.00000000
 2 0a00b0       0.00000000      0.00000039      0.00000000      0.10131364      0.00000003      0.00000000      0.00000001
 2 0b00a0      -0.00000000     -0.00000039     -0.00000000     -0.10131364     -0.00000003     -0.00000000     -0.00000001
 2 a00b00      -0.00000000      0.00000000      0.10131361     -0.00000000     -0.00000000     -0.00000000      0.49377032
 2 b00a00       0.00000000     -0.00000000     -0.10131361      0.00000000      0.00000000      0.00000000     -0.49377032
 2 0a000b      -0.00000000      0.00000000      0.10131360     -0.00000000     -0.00000000     -0.00000000     -0.49377031
 2 0b000a       0.00000000     -0.00000000     -0.10131360      0.00000000      0.00000000      0.00000000      0.49377031
 2 00ba00      -0.00000000     -0.00000039     -0.00000000     -0.10131361     -0.00000003      0.00000000      0.00000001
 2 00ab00       0.00000000      0.00000039      0.00000000      0.10131361      0.00000003     -0.00000000     -0.00000001
 2 00a00b      -0.00000109      0.10131360     -0.00000000     -0.00000039     -0.00000000     -0.00000000     -0.00000000
 2 00b00a       0.00000109     -0.10131360      0.00000000      0.00000039      0.00000000      0.00000000      0.00000000
 2 0b0a00       0.00347351      0.00000003      0.00000000      0.00000004     -0.11693531     -0.10904002     -0.00000000
 2 0a0b00      -0.00347351     -0.00000003     -0.00000000     -0.00000004      0.11693531      0.10904002      0.00000000
 0 220000      -0.08263551     -0.00000089     -0.00000000      0.00000002     -0.05103961     -0.12732947      0.00000000
 0 022000       0.08551935      0.00000092      0.00000000      0.00000001     -0.04604465     -0.12732947     -0.00000000
 0 202000      -0.00288384     -0.00000003     -0.00000000     -0.00000003      0.09708426     -0.12732947     -0.00000000
 0 ba2000      -0.00000000      0.00000000      0.08411452     -0.00000000     -0.00000000      0.00000000     -0.00000000
 0 ab2000       0.00000000     -0.00000000     -0.08411452      0.00000000      0.00000000     -0.00000000      0.00000000
 0 b2a000      -0.00000090      0.08411452     -0.00000000     -0.00000033     -0.00000000      0.00000000      0.00000000
 0 a2b000       0.00000090     -0.08411452      0.00000000      0.00000033      0.00000000     -0.00000000     -0.00000000
 0 2ba000       0.00000000      0.00000033      0.00000000      0.08411452      0.00000003      0.00000000      0.00000000
 0 2ab000      -0.00000000     -0.00000033     -0.00000000     -0.08411452     -0.00000003     -0.00000000     -0.00000000
 0 20a0b0       0.01786452      0.00000019      0.00000000     -0.00000000      0.00270817     -0.00651097      0.00000000
 0 20b0a0      -0.01786452     -0.00000019     -0.00000000      0.00000000     -0.00270817      0.00651097     -0.00000000
 0 02a0b0       0.01041978      0.00000011      0.00000000     -0.00000000      0.01476156     -0.00651097      0.00000000
 0 02b0a0      -0.01041978     -0.00000011     -0.00000000      0.00000000     -0.01476156      0.00651097     -0.00000000
 0 b0200a       0.01799377      0.00000019      0.00000000      0.00000000     -0.00164301      0.00651096     -0.00000000
 0 a0200b      -0.01799377     -0.00000019     -0.00000000     -0.00000000      0.00164301     -0.00651096      0.00000000
 0 a2000b      -0.01127760     -0.00000012     -0.00000000     -0.00000000      0.01411705     -0.00651096     -0.00000000
 0 b2000a       0.01127760      0.00000012      0.00000000      0.00000000     -0.01411705      0.00651096      0.00000000
 0 a200b0       0.00000012     -0.01085347      0.00000000      0.00000004      0.00000000      0.00000000     -0.00000000
 0 b200a0      -0.00000012      0.01085347     -0.00000000     -0.00000004     -0.00000000     -0.00000000      0.00000000
 0 2b00a0       0.00000000      0.00000004      0.00000000      0.01085347      0.00000000      0.00000000      0.00000000
 0 2a00b0      -0.00000000     -0.00000004     -0.00000000     -0.01085347     -0.00000000     -0.00000000     -0.00000000
 0 b02a00      -0.00000000      0.00000000      0.01085347     -0.00000000     -0.00000000      0.00000000      0.05573378
 0 a02b00       0.00000000     -0.00000000     -0.01085347      0.00000000      0.00000000     -0.00000000     -0.05573378
 0 0b200a      -0.00000000      0.00000000      0.01085347     -0.00000000     -0.00000000      0.00000000     -0.05573378
 0 0a200b       0.00000000     -0.00000000     -0.01085347      0.00000000      0.00000000     -0.00000000      0.05573378
 0 02b00a      -0.00000012      0.01085347     -0.00000000     -0.00000004     -0.00000000     -0.00000000     -0.00000000
 0 02a00b       0.00000012     -0.01085347      0.00000000      0.00000004      0.00000000      0.00000000      0.00000000
 0 20ba00       0.00000000      0.00000004      0.00000000      0.01085347      0.00000000     -0.00000000     -0.00000000
 0 20ab00      -0.00000000     -0.00000004     -0.00000000     -0.01085347     -0.00000000      0.00000000      0.00000000
 0 b020a0      -0.00000019      0.01793706     -0.00000000     -0.00000007     -0.00000000     -0.00000000      0.00000000
 0 a020b0       0.00000019     -0.01793706      0.00000000      0.00000007      0.00000000      0.00000000     -0.00000000
 0 0b20a0       0.00000000      0.00000007      0.00000000      0.01793706      0.00000001      0.00000000      0.00000000
 0 0a20b0      -0.00000000     -0.00000007     -0.00000000     -0.01793706     -0.00000001     -0.00000000     -0.00000000
 0 a20b00       0.00000000     -0.00000000     -0.01793706      0.00000000      0.00000000      0.00000000     -0.05458814
 0 b20a00      -0.00000000      0.00000000      0.01793706     -0.00000000     -0.00000000     -0.00000000      0.05458814
 0 2a000b       0.00000000     -0.00000000     -0.01793706      0.00000000      0.00000000      0.00000000      0.05458814
 0 2b000a      -0.00000000      0.00000000      0.01793706     -0.00000000     -0.00000000     -0.00000000     -0.05458814
 0 02ba00       0.00000000      0.00000007      0.00000000      0.01793706      0.00000001     -0.00000000     -0.00000000
 0 02ab00      -0.00000000     -0.00000007     -0.00000000     -0.01793706     -0.00000001      0.00000000      0.00000000
 0 20b00a      -0.00000019      0.01793706     -0.00000000     -0.00000007     -0.00000000     -0.00000000     -0.00000000
 0 20a00b       0.00000019     -0.01793706      0.00000000      0.00000007      0.00000000      0.00000000      0.00000000
 0 0b2a00       0.00658693      0.00000007      0.00000000     -0.00000001      0.01682521      0.00651097      0.00000000
 0 0a2b00      -0.00658693     -0.00000007     -0.00000000      0.00000001     -0.01682521     -0.00651097     -0.00000000
 
 Energy:     -213.30503352   -213.30503352   -213.30503352   -213.30503352   -213.30503352   -213.27522133   -213.17401647

 State:              8               9              10              11              12              13              14
 2 020000       0.00000000      0.00000000      0.09982181     -0.00000185     -0.00000030     -0.00000000      0.13386673
 2 200000      -0.00000000     -0.00000000      0.06602104     -0.00000034     -0.00000023      0.00000000     -0.15338157
 2 ba0000       0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.00000001      0.14461507      0.00000000
 2 ab0000      -0.00000000      0.00000000      0.00000000      0.00000000      0.00000001     -0.14461507     -0.00000000
 2 b0a000       0.00000003      0.00000000      0.00000046      0.00000081      0.14461509      0.00000001     -0.00000002
 2 a0b000      -0.00000003     -0.00000000     -0.00000046     -0.00000081     -0.14461509     -0.00000001      0.00000002
 2 0ba000      -0.00000000      0.00000002      0.00000197      0.14461510     -0.00000081      0.00000000      0.00000053
 2 0ab000       0.00000000     -0.00000002     -0.00000197     -0.14461510      0.00000081     -0.00000000     -0.00000053
 2 002000       0.00000000     -0.00000000     -0.16584296      0.00000219      0.00000053     -0.00000000      0.01951489
 2 00b0a0      -0.00000000      0.00000000     -0.55409683      0.00000732      0.00000176     -0.00000001      0.06520107
 2 00a0b0       0.00000000     -0.00000000      0.55409683     -0.00000732     -0.00000176      0.00000001     -0.06520107
 2 a0000b       0.00000000      0.00000000     -0.22058257      0.00000114      0.00000077     -0.00000001      0.51246241
 2 b0000a      -0.00000000     -0.00000000      0.22058257     -0.00000114     -0.00000077      0.00000001     -0.51246241
 2 a000b0       0.49377033      0.00001510      0.00000152      0.00000270      0.48317264      0.00000002     -0.00000007
 2 b000a0      -0.49377033     -0.00001510     -0.00000152     -0.00000270     -0.48317264     -0.00000002      0.00000007
 2 0a00b0      -0.00001510      0.49377033      0.00000659      0.48317264     -0.00000270      0.00000001      0.00000176
 2 0b00a0       0.00001510     -0.49377033     -0.00000659     -0.48317264      0.00000270     -0.00000001     -0.00000176
 2 a00b00      -0.00000000     -0.00000001     -0.00000001     -0.00000001     -0.00000002      0.48317266      0.00000001
 2 b00a00       0.00000000      0.00000001      0.00000001      0.00000001      0.00000002     -0.48317266     -0.00000001
 2 0a000b       0.00000000      0.00000001     -0.00000001     -0.00000001     -0.00000002      0.48317267      0.00000001
 2 0b000a      -0.00000000     -0.00000001      0.00000001      0.00000001      0.00000002     -0.48317267     -0.00000001
 2 00ba00      -0.00001510      0.49377030     -0.00000659     -0.48317267      0.00000270     -0.00000001     -0.00000176
 2 00ab00       0.00001510     -0.49377030      0.00000659      0.48317267     -0.00000270      0.00000001      0.00000176
 2 00a00b      -0.49377030     -0.00001510      0.00000152      0.00000270      0.48317268      0.00000002     -0.00000007
 2 00b00a       0.49377030      0.00001510     -0.00000152     -0.00000270     -0.48317268     -0.00000002      0.00000007
 2 0b0a00      -0.00000000      0.00000000      0.33351411     -0.00000618     -0.00000099     -0.00000000      0.44726139
 2 0a0b00       0.00000000     -0.00000000     -0.33351411      0.00000618      0.00000099      0.00000000     -0.44726139
 0 220000      -0.00000000     -0.00000000     -0.02299072      0.00000030      0.00000007     -0.00000000      0.00270534
 0 022000      -0.00000000      0.00000000      0.00915248     -0.00000005     -0.00000003      0.00000000     -0.02126323
 0 202000       0.00000000      0.00000000      0.01383827     -0.00000026     -0.00000004     -0.00000000      0.01855788
 0 ba2000       0.00000000     -0.00000000      0.00000000      0.00000000      0.00000000     -0.02004793     -0.00000000
 0 ab2000      -0.00000000      0.00000000     -0.00000000     -0.00000000     -0.00000000      0.02004793      0.00000000
 0 b2a000      -0.00000000     -0.00000000     -0.00000006     -0.00000011     -0.02004793     -0.00000000      0.00000000
 0 a2b000       0.00000000      0.00000000      0.00000006      0.00000011      0.02004793      0.00000000     -0.00000000
 0 2ba000       0.00000000     -0.00000000     -0.00000027     -0.02004793      0.00000011     -0.00000000     -0.00000007
 0 2ab000      -0.00000000      0.00000000      0.00000027      0.02004793     -0.00000011      0.00000000      0.00000007
 0 20a0b0      -0.00000000      0.00000000     -0.06177342      0.00000082      0.00000020     -0.00000000      0.00543094
 0 20b0a0       0.00000000     -0.00000000      0.06177342     -0.00000082     -0.00000020      0.00000000     -0.00543094
 0 02a0b0      -0.00000000      0.00000000     -0.06134677      0.00000080      0.00000019     -0.00000000      0.00905672
 0 02b0a0       0.00000000     -0.00000000      0.06134677     -0.00000080     -0.00000019      0.00000000     -0.00905672
 0 b0200a       0.00000000      0.00000000     -0.02283002      0.00000010      0.00000008     -0.00000000      0.05765621
 0 a0200b      -0.00000000     -0.00000000      0.02283002     -0.00000010     -0.00000008      0.00000000     -0.05765621
 0 a2000b      -0.00000000     -0.00000000      0.02618337     -0.00000015     -0.00000009      0.00000000     -0.05621281
 0 b2000a       0.00000000      0.00000000     -0.02618337      0.00000015      0.00000009     -0.00000000      0.05621281
 0 a200b0      -0.05573378     -0.00000170     -0.00000017     -0.00000030     -0.05459312     -0.00000000      0.00000001
 0 b200a0       0.05573378      0.00000170      0.00000017      0.00000030      0.05459312      0.00000000     -0.00000001
 0 2b00a0      -0.00000170      0.05573378      0.00000075      0.05459312     -0.00000030      0.00000000      0.00000020
 0 2a00b0       0.00000170     -0.05573378     -0.00000075     -0.05459312      0.00000030     -0.00000000     -0.00000020
 0 b02a00      -0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.00000000      0.05459312      0.00000000
 0 a02b00       0.00000000      0.00000000      0.00000000      0.00000000      0.00000000     -0.05459312     -0.00000000
 0 0b200a       0.00000000      0.00000000     -0.00000000     -0.00000000     -0.00000000      0.05459313      0.00000000
 0 0a200b      -0.00000000     -0.00000000      0.00000000      0.00000000      0.00000000     -0.05459313     -0.00000000
 0 02b00a      -0.05573377     -0.00000170      0.00000017      0.00000030      0.05459313      0.00000000     -0.00000001
 0 02a00b       0.05573377      0.00000170     -0.00000017     -0.00000030     -0.05459313     -0.00000000      0.00000001
 0 20ba00       0.00000170     -0.05573377      0.00000075      0.05459313     -0.00000030      0.00000000      0.00000020
 0 20ab00      -0.00000170      0.05573377     -0.00000075     -0.05459313      0.00000030     -0.00000000     -0.00000020
 0 b020a0       0.05458815      0.00000167      0.00000017      0.00000029      0.05276772      0.00000000     -0.00000001
 0 a020b0      -0.05458815     -0.00000167     -0.00000017     -0.00000029     -0.05276772     -0.00000000      0.00000001
 0 0b20a0      -0.00000167      0.05458815      0.00000072      0.05276772     -0.00000029      0.00000000      0.00000019
 0 0a20b0       0.00000167     -0.05458815     -0.00000072     -0.05276772      0.00000029     -0.00000000     -0.00000019
 0 a20b00       0.00000000      0.00000000      0.00000000      0.00000000      0.00000000     -0.05276773     -0.00000000
 0 b20a00      -0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.00000000      0.05276773      0.00000000
 0 2a000b      -0.00000000     -0.00000000      0.00000000      0.00000000      0.00000000     -0.05276773     -0.00000000
 0 2b000a       0.00000000      0.00000000     -0.00000000     -0.00000000     -0.00000000      0.05276773      0.00000000
 0 02ba00       0.00000167     -0.05458814      0.00000072      0.05276773     -0.00000029      0.00000000      0.00000019
 0 02ab00      -0.00000167      0.05458814     -0.00000072     -0.05276773      0.00000029     -0.00000000     -0.00000019
 0 20b00a      -0.05458814     -0.00000167      0.00000017      0.00000029      0.05276773      0.00000000     -0.00000001
 0 20a00b       0.05458814      0.00000167     -0.00000017     -0.00000029     -0.05276773     -0.00000000      0.00000001
 0 0b2a00       0.00000000     -0.00000000     -0.03559003      0.00000067      0.00000010      0.00000000     -0.05078188
 0 0a2b00      -0.00000000      0.00000000      0.03559003     -0.00000067     -0.00000010     -0.00000000      0.05078188
 
 Energy:     -213.17401647   -213.17401647   -213.15813840   -213.15813840   -213.15813840   -213.15813840   -213.15813839

 State:             15
 2 020000      -0.14985920
 2 200000      -0.14985919
 2 ba0000       0.00000000
 2 ab0000      -0.00000000
 2 b0a000       0.00000000
 2 a0b000      -0.00000000
 2 0ba000      -0.00000000
 2 0ab000       0.00000000
 2 002000      -0.14985919
 2 00b0a0      -0.38787694
 2 00a0b0       0.38787694
 2 a0000b       0.38787708
 2 b0000a      -0.38787708
 2 a000b0       0.00000000
 2 b000a0      -0.00000000
 2 0a00b0       0.00000000
 2 0b00a0      -0.00000000
 2 a00b00      -0.00000000
 2 b00a00       0.00000000
 2 0a000b      -0.00000000
 2 0b000a       0.00000000
 2 00ba00       0.00000000
 2 00ab00      -0.00000000
 2 00a00b       0.00000000
 2 00b00a      -0.00000000
 2 0b0a00      -0.38787704
 2 0a0b00       0.38787704
 0 220000       0.03707314
 0 022000       0.03707314
 0 202000       0.03707314
 0 ba2000       0.00000000
 0 ab2000      -0.00000000
 0 b2a000      -0.00000000
 0 a2b000       0.00000000
 0 2ba000       0.00000000
 0 2ab000      -0.00000000
 0 20a0b0      -0.04552371
 0 20b0a0       0.04552371
 0 02a0b0      -0.04552372
 0 02b0a0       0.04552372
 0 b0200a       0.04552373
 0 a0200b      -0.04552373
 0 a2000b      -0.04552373
 0 b2000a       0.04552373
 0 a200b0      -0.00000000
 0 b200a0       0.00000000
 0 2b00a0       0.00000000
 0 2a00b0      -0.00000000
 0 b02a00      -0.00000000
 0 a02b00       0.00000000
 0 0b200a       0.00000000
 0 0a200b      -0.00000000
 0 02b00a       0.00000000
 0 02a00b      -0.00000000
 0 20ba00      -0.00000000
 0 20ab00       0.00000000
 0 b020a0       0.00000000
 0 a020b0      -0.00000000
 0 0b20a0       0.00000000
 0 0a20b0      -0.00000000
 0 a20b00      -0.00000000
 0 b20a00       0.00000000
 0 2a000b       0.00000000
 0 2b000a      -0.00000000
 0 02ba00      -0.00000000
 0 02ab00       0.00000000
 0 20b00a       0.00000000
 0 20a00b      -0.00000000
 0 0b2a00       0.04552373
 0 0a2b00      -0.04552373
 
 Energy:     -213.14712487
 


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
 CPU TIMES  *        18.20      8.22      1.64      8.10
 REAL TIME  *        20.77 SEC
 DISK USED  *        89.89 MB (local),        2.30 GB (total)
 SF USED    *       147.57 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

         ENERGY     LL
    -213.3408473   2.0
    -213.3408473   2.0
    -213.3408473   2.0
    -213.1702244   6.0
    -213.1702244   6.0
    -213.1702244   6.0
    -213.1702244   6.0
    -213.1702244   6.0
    -213.1665428   2.0
    -213.1665428   2.0
    -213.1665428   2.0
    -213.1645413  -0.0
    -213.3050335   6.0
    -213.3050335   6.0
    -213.3050335   6.0
    -213.3050335   6.0
    -213.3050335   6.0
    -213.2752213  -0.0
    -213.1740165   2.0
    -213.1740165   2.0
    -213.1740165   2.0
    -213.1581384   6.0
    -213.1581384   6.0
    -213.1581384   6.0
    -213.1581384   6.0
    -213.1581384   6.0
    -213.1471249   0.0
                                                  


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
 Number of external orbitals:     249 ( 122 127 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Valence orbitals related to previous ones by unitary transformation. Operators transformed.


 Number of p-space configurations:  15

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -213.34084727
     2      -213.34084727
     3      -213.34084727
     4      -213.17022439
     5      -213.17022439
     6      -213.17022439
     7      -213.17022439
     8      -213.17022439
     9      -213.16654283
    10      -213.16654283
    11      -213.16654283
    12      -213.16454128

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1440D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1360D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1470D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1440D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1360D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1470D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1440D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1360D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1470D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1440D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1360D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1470D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1440D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1360D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1470D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1440D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1360D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1470D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2034D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1440D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1360D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1470D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1440D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1360D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1470D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1440D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1360D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1470D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1440D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1360D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1470D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1440D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1360D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1470D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1440D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1360D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1470D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1440D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1360D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1470D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1440D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1360D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1470D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1440D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1360D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1470D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1440D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1360D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1470D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1440D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1360D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1470D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1440D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1360D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1470D-06

 Number of blocks in overlap matrix:  1178   Smallest eigenvalue:  0.14D-06
 Number of N-2 electron functions:    2438
 Number of N-1 electron functions:   88545

 Number of internal configurations:                38406
 Number of singly external configurations:      11024685
 Number of doubly external configurations:      37799453
 Total number of contracted configurations:     48862544
 Total number of uncontracted configurations:  731368774

 Diagonal Coupling coefficients finished.               Storage:  25417216 words, CPU-Time:     76.36 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   3832054 words, CPU-time:      5.89 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -213.34084727     0.00000000    -1.05699796  0.54D-01  0.12D+00    98.14
    1     2     2     1.00000000     0.00000000  -213.34084727     0.00000000    -1.05687209  0.54D-01  0.12D+00    98.14
    1     3     3     1.00000000     0.00000000  -213.34084727     0.00000000    -1.05719906  0.55D-01  0.12D+00    98.14
    1     4     4     1.00000000     0.00000000  -213.17022439     0.00000000    -1.00817555  0.37D-01  0.10D+00    98.14
    1     5     5     1.00000000     0.00000000  -213.17022439     0.00000000    -1.00789982  0.37D-01  0.10D+00    98.14
    1     6     6     1.00000000     0.00000000  -213.17022439    -0.00000000    -1.00790511  0.37D-01  0.10D+00    98.14
    1     7     7     1.00000000     0.00000000  -213.17022439     0.00000000    -1.00789051  0.37D-01  0.10D+00    98.14
    1     8     8     1.00000000     0.00000000  -213.17022439     0.00000000    -1.00814589  0.37D-01  0.10D+00    98.14
    1     9     9     1.00000000     0.00000000  -213.16654283    -0.00000000    -1.01244694  0.39D-01  0.11D+00    98.14
    1    10    10     1.00000000     0.00000000  -213.16654283     0.00000000    -1.01247209  0.39D-01  0.11D+00    98.14
    1    11    11     1.00000000     0.00000000  -213.16654283     0.00000000    -1.01248463  0.39D-01  0.11D+00    98.14
    1    12    12     1.00000000     0.00000000  -213.16454128    -0.00000000    -1.00853175  0.37D-01  0.10D+00    98.14
    2     1     1     1.10817690    -0.84177004  -214.18261731    -0.84177004    -0.03079934  0.62D-02  0.20D-02  2739.18
    2     2     2     1.10831379    -0.84161929  -214.18246656    -0.84161929    -0.03096046  0.63D-02  0.20D-02  2739.18
    2     3     3     1.10852126    -0.84143257  -214.18227984    -0.84143257    -0.03115152  0.64D-02  0.20D-02  2739.18
    2     4     4     1.09613357    -0.83300546  -214.00322986    -0.83300546    -0.02185895  0.31D-02  0.14D-02  2739.18
    2     5     5     1.09606528    -0.83299792  -214.00322231    -0.83299792    -0.02187971  0.31D-02  0.14D-02  2739.18
    2     6     6     1.09608879    -0.83297934  -214.00320373    -0.83297934    -0.02189824  0.31D-02  0.14D-02  2739.18
    2     7     7     1.09611211    -0.83295756  -214.00318195    -0.83295756    -0.02192113  0.31D-02  0.14D-02  2739.18
    2     8     8     1.09622502    -0.83292664  -214.00315103    -0.83292664    -0.02193891  0.31D-02  0.14D-02  2739.18
    2     9     9     1.09677653    -0.83313677  -213.99967960    -0.83313677    -0.02300454  0.36D-02  0.14D-02  2739.18
    2    10    10     1.09679900    -0.83311051  -213.99965334    -0.83311051    -0.02303543  0.36D-02  0.14D-02  2739.18
    2    11    11     1.09683312    -0.83307936  -213.99962219    -0.83307936    -0.02306727  0.36D-02  0.14D-02  2739.18
    2    12    12     1.09629761    -0.83298830  -213.99752958    -0.83298830    -0.02216591  0.33D-02  0.14D-02  2739.18
    3     1     1     1.08931508    -0.87101289  -214.21186016    -0.02924285    -0.00062286  0.97D-04  0.68D-04  5386.29
    3     2     2     1.08931044    -0.87100773  -214.21185500    -0.02938844    -0.00062798  0.98D-04  0.68D-04  5386.29
    3     3     3     1.08931231    -0.87100080  -214.21184807    -0.02956823    -0.00063475  0.99D-04  0.69D-04  5386.29
    3     4     4     1.08497119    -0.85381212  -214.02403651    -0.02080666    -0.00032224  0.38D-04  0.31D-04  5386.29
    3     5     5     1.08497137    -0.85381143  -214.02403582    -0.02081351    -0.00032295  0.38D-04  0.31D-04  5386.29
    3     6     6     1.08496984    -0.85381071  -214.02403510    -0.02083137    -0.00032339  0.38D-04  0.31D-04  5386.29
    3     7     7     1.08498383    -0.85381008  -214.02403447    -0.02085252    -0.00032451  0.38D-04  0.32D-04  5386.29
    3     8     8     1.08498402    -0.85380734  -214.02403173    -0.02088071    -0.00032696  0.39D-04  0.32D-04  5386.29
    3     9     9     1.08493360    -0.85491261  -214.02145544    -0.02177584    -0.00035497  0.42D-04  0.35D-04  5386.29
    3    10    10     1.08493345    -0.85491187  -214.02145470    -0.02180136    -0.00035572  0.42D-04  0.35D-04  5386.29
    3    11    11     1.08493272    -0.85491051  -214.02145334    -0.02183115    -0.00035690  0.42D-04  0.36D-04  5386.29
    3    12    12     1.08499720    -0.85407532  -214.01861660    -0.02108702    -0.00032479  0.35D-04  0.32D-04  5386.29
    4     1     1     1.08850639    -0.87164711  -214.21249438    -0.00063422    -0.00002488  0.39D-05  0.28D-05  8033.17
    4     2     2     1.08850431    -0.87164700  -214.21249426    -0.00063926    -0.00002498  0.39D-05  0.28D-05  8033.17
    4     3     3     1.08850224    -0.87164681  -214.21249408    -0.00064601    -0.00002514  0.39D-05  0.29D-05  8033.17
    4     4     4     1.08484758    -0.85414212  -214.02436651    -0.00033000    -0.00001182  0.21D-05  0.12D-05  8033.17
    4     5     5     1.08484791    -0.85414206  -214.02436645    -0.00033063    -0.00001179  0.21D-05  0.12D-05  8033.17
    4     6     6     1.08484736    -0.85414192  -214.02436631    -0.00033121    -0.00001182  0.21D-05  0.12D-05  8033.17
    4     7     7     1.08484537    -0.85414178  -214.02436617    -0.00033170    -0.00001210  0.22D-05  0.12D-05  8033.17
    4     8     8     1.08484346    -0.85414159  -214.02436598    -0.00033424    -0.00001221  0.22D-05  0.13D-05  8033.17
    4     9     9     1.08478454    -0.85527461  -214.02181743    -0.00036199    -0.00001313  0.23D-05  0.13D-05  8033.17
    4    10    10     1.08478462    -0.85527460  -214.02181743    -0.00036273    -0.00001310  0.23D-05  0.13D-05  8033.17
    4    11    11     1.08478389    -0.85527449  -214.02181732    -0.00036398    -0.00001316  0.23D-05  0.13D-05  8033.17
    4    12    12     1.08494486    -0.85440563  -214.01894690    -0.00033030    -0.00001198  0.19D-05  0.14D-05  8033.17
    5     1     1     1.08858192    -0.87167354  -214.21252081    -0.00002643    -0.00000087  0.81D-07  0.12D-06 10679.68
    5     2     2     1.08858153    -0.87167354  -214.21252080    -0.00002654    -0.00000087  0.81D-07  0.12D-06 10679.68
    5     3     3     1.08858104    -0.87167353  -214.21252079    -0.00002672    -0.00000088  0.81D-07  0.12D-06 10679.68
    5     4     4     1.08490802    -0.85415509  -214.02437948    -0.00001297    -0.00000043  0.29D-07  0.77D-07 10679.68
    5     5     5     1.08490777    -0.85415503  -214.02437942    -0.00001297    -0.00000045  0.31D-07  0.80D-07 10679.68
    5     6     6     1.08490807    -0.85415500  -214.02437939    -0.00001308    -0.00000043  0.29D-07  0.76D-07 10679.68
    5     7     7     1.08490735    -0.85415490  -214.02437929    -0.00001312    -0.00000045  0.31D-07  0.79D-07 10679.68
    5     8     8     1.08490784    -0.85415490  -214.02437929    -0.00001331    -0.00000043  0.29D-07  0.76D-07 10679.68
    5     9     9     1.08484819    -0.85528884  -214.02183166    -0.00001423    -0.00000048  0.43D-07  0.75D-07 10679.68
    5    10    10     1.08484820    -0.85528880  -214.02183162    -0.00001420    -0.00000048  0.43D-07  0.75D-07 10679.68
    5    11    11     1.08484797    -0.85528875  -214.02183158    -0.00001426    -0.00000048  0.43D-07  0.75D-07 10679.68
    5    12    12     1.08503693    -0.85441882  -214.01896010    -0.00001319    -0.00000050  0.28D-07  0.99D-07 10679.68
    6     1     1     1.08857804    -0.87167448  -214.21252175    -0.00000094    -0.00000005  0.37D-08  0.76D-08 13328.26
    6     2     2     1.08857813    -0.87167448  -214.21252174    -0.00000094    -0.00000005  0.37D-08  0.76D-08 13328.26
    6     3     3     1.08857797    -0.87167448  -214.21252174    -0.00000095    -0.00000005  0.38D-08  0.77D-08 13328.26
    6     4     4     1.08491310    -0.85415560  -214.02437999    -0.00000051    -0.00000003  0.22D-08  0.65D-08 13328.26
    6     5     5     1.08491261    -0.85415555  -214.02437994    -0.00000053    -0.00000003  0.23D-08  0.68D-08 13328.26
    6     6     6     1.08491306    -0.85415551  -214.02437990    -0.00000051    -0.00000003  0.22D-08  0.64D-08 13328.26
    6     7     7     1.08491256    -0.85415542  -214.02437981    -0.00000052    -0.00000003  0.23D-08  0.67D-08 13328.26
    6     8     8     1.08491295    -0.85415540  -214.02437979    -0.00000051    -0.00000003  0.22D-08  0.64D-08 13328.26
    6     9     9     1.08485103    -0.85528938  -214.02183221    -0.00000055    -0.00000003  0.29D-08  0.68D-08 13328.26
    6    10    10     1.08485101    -0.85528934  -214.02183217    -0.00000054    -0.00000003  0.29D-08  0.67D-08 13328.26
    6    11    11     1.08485093    -0.85528930  -214.02183212    -0.00000055    -0.00000003  0.29D-08  0.67D-08 13328.26
    6    12    12     1.08504918    -0.85441942  -214.01896070    -0.00000060    -0.00000004  0.31D-08  0.78D-08 13328.26
    7     1     1     1.08858636    -0.87167453  -214.21252180    -0.00000005    -0.00000000  0.16D-09  0.55D-09 14308.67
    7     2     2     1.08858635    -0.87167453  -214.21252180    -0.00000005    -0.00000000  0.16D-09  0.54D-09 14308.67
    7     3     3     1.08858638    -0.87167453  -214.21252179    -0.00000005    -0.00000000  0.16D-09  0.55D-09 14308.67
    7     4     4     1.08491310    -0.85415560  -214.02437999    -0.00000000    -0.00000003  0.22D-08  0.65D-08 14308.67
    7     5     5     1.08491261    -0.85415555  -214.02437994    -0.00000000    -0.00000003  0.23D-08  0.68D-08 14308.67
    7     6     6     1.08491306    -0.85415551  -214.02437990    -0.00000000    -0.00000003  0.22D-08  0.64D-08 14308.67
    7     7     7     1.08491256    -0.85415542  -214.02437981    -0.00000000    -0.00000003  0.23D-08  0.67D-08 14308.67
    7     8     8     1.08491295    -0.85415540  -214.02437979    -0.00000000    -0.00000003  0.22D-08  0.64D-08 14308.67
    7     9     9     1.08485104    -0.85528938  -214.02183221    -0.00000000    -0.00000003  0.29D-08  0.68D-08 14308.67
    7    10    10     1.08485102    -0.85528934  -214.02183217    -0.00000000    -0.00000003  0.29D-08  0.67D-08 14308.67
    7    11    11     1.08485094    -0.85528930  -214.02183212    -0.00000000    -0.00000003  0.29D-08  0.68D-08 14308.67
    7    12    12     1.08505728    -0.85441947  -214.01896074    -0.00000005    -0.00000000  0.23D-09  0.41D-09 14308.67


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.3%
 S   0.2%  27.6%
 P   0.2%  27.4%  30.4%

 Initialization:   0.6%
 Other:           13.3%

 Total CPU:    14308.7 seconds
 =====================================



 Wavefunction saved on  5201.2

 Reference coefficients greater than 0.0500000
 =============================================
 2222222222/0/000           0.9467819   0.0000000  -0.0000000  -0.0000001  -0.0000000   0.0000000   0.0000000   0.0000000
                           -0.1002701  -0.0000180  -0.0000000  -0.0000000
 22222222220//000          -0.0000000   0.9467769   0.0030680  -0.0000000  -0.0000000   0.0000010   0.0000000  -0.0000000
                            0.0000180  -0.1002701  -0.0000000  -0.0000000
 2222222222//0000           0.0000000  -0.0030680   0.9467769  -0.0000000  -0.0000000  -0.0000000   0.0000000   0.0000005
                            0.0000000   0.0000000  -0.1002701  -0.0000000
 222222222200/0/0          -0.0000000  -0.0000000   0.0000000  -0.0000010   0.7740580  -0.0000043  -0.0473648  -0.0000088
                           -0.0000000  -0.0000000  -0.0000000   0.5481800
 22222222220/0/00           0.0000000  -0.0000000  -0.0000000   0.0000145  -0.3460004   0.0000720   0.6940258   0.0001319
                            0.0000000   0.0000000   0.0000000   0.5481990
 222222222200//00           0.0000000  -0.0707373  -0.0002292  -0.0000000  -0.0000006   0.6716075  -0.0000699  -0.0000000
                            0.0001201  -0.6680145  -0.0000001  -0.0000000
 22222222220/000/          -0.0000000   0.0002292  -0.0707373  -0.0000000  -0.0000002  -0.0000000  -0.0001278   0.6716041
                            0.0000000   0.0000001  -0.6680181  -0.0000000
 2222222222/000/0           0.0707377   0.0000000  -0.0000000   0.6716007  -0.0000000  -0.0000000  -0.0000141  -0.0000000
                            0.6680213   0.0001201   0.0000000   0.0000000
 222222222200/00/          -0.0707377  -0.0000000   0.0000000   0.6716007  -0.0000000   0.0000000  -0.0000141  -0.0000000
                           -0.6680214  -0.0001201  -0.0000000  -0.0000000
 2222222222/00/00           0.0000000  -0.0002292   0.0707373  -0.0000000  -0.0000002   0.0000000  -0.0001278   0.6715975
                           -0.0000000  -0.0000001   0.6680247   0.0000000
 22222222220/00/0          -0.0000000   0.0707373   0.0002292  -0.0000000  -0.0000006   0.6715940  -0.0000699  -0.0000000
                           -0.0001201   0.6680283   0.0000001   0.0000000
 2222222222/0000/          -0.0000000   0.0000000   0.0000000  -0.0000136  -0.4280344  -0.0000677  -0.6466685  -0.0001231
                           -0.0000000  -0.0000000  -0.0000000   0.5481941
 2222220222/2/000          -0.1053338  -0.0000000   0.0000000  -0.0000002   0.0000000  -0.0000000  -0.0000000  -0.0000000
                            0.0143384   0.0000026  -0.0000000   0.0000000
 2222220222//2000          -0.0000000   0.0003413  -0.1053333   0.0000000   0.0000000   0.0000000   0.0000000  -0.0000002
                            0.0000000  -0.0000000   0.0143385   0.0000000
 22222202222//000           0.0000000  -0.1053333  -0.0003413   0.0000000  -0.0000000   0.0000000  -0.0000000  -0.0000000
                           -0.0000026   0.0143385   0.0000000   0.0000000
 222222022202/0/0          -0.0000000  -0.0000000  -0.0000000   0.0000001  -0.0785819   0.0000004   0.0042363   0.0000008
                            0.0000000   0.0000000   0.0000000  -0.0562813
 222222022220/0/0          -0.0000000  -0.0000000  -0.0000000   0.0000001  -0.0785126   0.0000005   0.0053759   0.0000010
                            0.0000000   0.0000000   0.0000000  -0.0562805
 22222202220/2/00           0.0000000   0.0000000   0.0000000  -0.0000015   0.0346007  -0.0000073  -0.0706811  -0.0000134
                           -0.0000000  -0.0000000  -0.0000000  -0.0562833
 22222202222/0/00           0.0000000  -0.0000000   0.0000000  -0.0000015   0.0356218  -0.0000073  -0.0701737  -0.0000133
                           -0.0000000  -0.0000000  -0.0000000  -0.0562841
 222222022220//00          -0.0000000   0.0064260   0.0000208   0.0000000   0.0000001  -0.0684368   0.0000071   0.0000000
                           -0.0000122   0.0681526   0.0000000   0.0000000
 22222202220/200/           0.0000000  -0.0000208   0.0064261   0.0000000   0.0000000   0.0000000   0.0000130  -0.0684363
                           -0.0000000  -0.0000000   0.0681536   0.0000000
 222222022202/00/           0.0064260   0.0000000  -0.0000000  -0.0684363   0.0000000  -0.0000000   0.0000014   0.0000000
                            0.0681533   0.0000122   0.0000000   0.0000000
 2222220222/200/0          -0.0064260  -0.0000000   0.0000000  -0.0684362   0.0000000   0.0000000   0.0000014   0.0000000
                           -0.0681532  -0.0000122  -0.0000000  -0.0000000
 2222220222/02/00          -0.0000000   0.0000208  -0.0064261   0.0000000   0.0000000  -0.0000000   0.0000130  -0.0684356
                            0.0000000   0.0000000  -0.0681542  -0.0000000
 22222202222/00/0           0.0000000  -0.0064261  -0.0000208   0.0000000   0.0000001  -0.0684353   0.0000071   0.0000000
                            0.0000122  -0.0681547  -0.0000000  -0.0000000
 22222202222/000/          -0.0000000  -0.0000485   0.0149549   0.0000000   0.0000000   0.0000000   0.0000129  -0.0678674
                           -0.0000000  -0.0000000   0.0656861   0.0000000
 222222022202//00          -0.0000000   0.0149549   0.0000485   0.0000000   0.0000001  -0.0678669   0.0000071   0.0000000
                           -0.0000118   0.0656856   0.0000000   0.0000000
 2222220222/20/00          -0.0000000   0.0000485  -0.0149549   0.0000000   0.0000000  -0.0000000   0.0000129  -0.0678667
                            0.0000000   0.0000000  -0.0656866  -0.0000000
 2222220222/020/0          -0.0149551  -0.0000000   0.0000000  -0.0678657   0.0000000   0.0000000   0.0000014   0.0000000
                           -0.0656870  -0.0000118  -0.0000000  -0.0000000
 22222202220/20/0           0.0000000  -0.0149550  -0.0000485   0.0000000   0.0000001  -0.0678656   0.0000071   0.0000000
                            0.0000118  -0.0656877  -0.0000000  -0.0000000
 222222022220/00/           0.0149551   0.0000000  -0.0000000  -0.0678655   0.0000000  -0.0000000   0.0000014   0.0000000
                            0.0656870   0.0000118   0.0000000   0.0000000
 2222220222/0200/          -0.0000000  -0.0000000  -0.0000000   0.0000014   0.0429599   0.0000069   0.0659355   0.0000126
                            0.0000000   0.0000000   0.0000000  -0.0562826
 2222220222/2000/           0.0000000   0.0000000  -0.0000000   0.0000014   0.0439119   0.0000068   0.0653076   0.0000124
                            0.0000000   0.0000000   0.0000000  -0.0562836

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.957516   -0.000000    0.000000   -0.000000    0.000000    0.000000    0.000000   -0.000000    0.000000   -0.035158
            -0.000000   -0.000000
 2           0.000000    0.957511   -0.003103    0.000000    0.000000   -0.000000   -0.000000    0.000000   -0.035158   -0.000000
             0.000114   -0.000000
 3          -0.000000    0.003103    0.957511    0.000000   -0.000000   -0.000000   -0.000000    0.000000   -0.000114    0.000000
            -0.035158   -0.000000
 4           0.000000    0.000000    0.000000   -0.000020   -0.000000    0.959576   -0.000000   -0.000002    0.000000   -0.000000
             0.000000   -0.000000
 5           0.000000    0.000000    0.000000   -0.097897   -0.000000   -0.000000   -0.000001    0.954570    0.000000    0.000000
             0.000000    0.000013
 6          -0.000000   -0.000000    0.000000   -0.000099   -0.000000   -0.000000    0.959576   -0.000009   -0.000010   -0.000000
             0.000000    0.000000
 7          -0.000000   -0.000000    0.000000   -0.954570   -0.000183   -0.000020   -0.000100   -0.097897   -0.000000   -0.000000
            -0.000000   -0.000004
 8          -0.000000   -0.000000   -0.000000   -0.000182    0.959576   -0.000000   -0.000000   -0.000018    0.000000   -0.000000
            -0.000005   -0.000000
 9           0.036117   -0.000006   -0.000000   -0.000000    0.000000   -0.000000   -0.000000   -0.000000   -0.000172    0.958924
            -0.000000   -0.000000
 10          0.000006    0.036117   -0.000000   -0.000000   -0.000000   -0.000000    0.000010   -0.000000    0.958924    0.000172
            -0.000000   -0.000000
 11          0.000000    0.000000    0.036117   -0.000000    0.000005   -0.000000   -0.000000   -0.000000    0.000000    0.000000
             0.958924   -0.000000
 12          0.000000    0.000000    0.000000   -0.000003   -0.000000   -0.000000   -0.000000   -0.000014    0.000000    0.000000
             0.000000    0.959513

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.958161   -0.000000    0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.000453    0.000000
            -0.000000   -0.000000
 2          -0.000000    0.958161    0.000000    0.000000    0.000000    0.000000   -0.000000    0.000000   -0.000000    0.000453
            -0.000001   -0.000000
 3           0.000000    0.000000    0.958161   -0.000000   -0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.000001
             0.000453    0.000000
 4           0.000000    0.000000   -0.000000    0.959576   -0.000000   -0.000000    0.000000   -0.000000   -0.000000   -0.000000
            -0.000000   -0.000000
 5          -0.000000    0.000000   -0.000000   -0.000000    0.959576   -0.000000    0.000000    0.000000   -0.000000    0.000000
            -0.000000   -0.000000
 6          -0.000000    0.000000    0.000000   -0.000000   -0.000000    0.959576   -0.000000   -0.000000   -0.000000    0.000000
            -0.000000    0.000000
 7          -0.000000   -0.000000   -0.000000    0.000000    0.000000   -0.000000    0.959576    0.000000    0.000000   -0.000000
             0.000000    0.000000
 8           0.000000    0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.000000    0.959576    0.000000    0.000000
            -0.000000   -0.000000
 9           0.000453   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.000000    0.959604    0.000000
             0.000000    0.000000
 10          0.000000    0.000453    0.000001   -0.000000    0.000000    0.000000   -0.000000    0.000000    0.000000    0.959604
            -0.000000    0.000000
 11         -0.000000   -0.000001    0.000453   -0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.000000   -0.000000
             0.959604    0.000000
 12         -0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.000000    0.000000   -0.000000    0.000000    0.000000
             0.000000    0.959513


 RESULTS FOR STATE 1.1
 =====================

 Coefficient of reference function:   C(0) = 0.95751555 (fixed)   0.95822839 (relaxed)   0.95816069 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00059980   -0.00117152   -0.75233873
 Singles      0.01427858   -0.05272046   -0.05982543
 Pairs        0.07436091    0.00000000   -0.05951038
 Total        1.08923929   -0.05389198   -0.87167453
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.34060650
 Nuclear energy                         0.00000000
 Kinetic energy                        83.47548065
 One electron energy                 -376.13652966
 Two electron energy                  161.92400786
 Virial quotient                       -2.56617297
 Correlation energy                    -0.87191530
 !MRCI STATE 1.1 Energy              -214.212521797049

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.29033090 (Davidson, fixed reference)
 Cluster corrected energies          -214.29019672 (Davidson, relaxed reference)
 Cluster corrected energies          -214.29033090 (Davidson, rotated reference)

 Cluster corrected energies          -214.28787118 (Pople, fixed reference)
 Cluster corrected energies          -214.28773150 (Pople, relaxed reference)
 Cluster corrected energies          -214.28787118 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Coefficient of reference function:   C(0) = 0.95751052 (fixed)   0.95822839 (relaxed)   0.95816070 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00059980   -0.00117152   -0.75233876
 Singles      0.01427855   -0.05272043   -0.05982541
 Pairs        0.07436093    0.00000000   -0.05951036
 Total        1.08923928   -0.05389195   -0.87167453
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.34060650
 Nuclear energy                         0.00000000
 Kinetic energy                        83.47548096
 One electron energy                 -376.13652921
 Two electron energy                  161.92400741
 Virial quotient                       -2.56617296
 Correlation energy                    -0.87191530
 !MRCI STATE 2.1 Energy              -214.212521796128

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.29033089 (Davidson, fixed reference)
 Cluster corrected energies          -214.29019671 (Davidson, relaxed reference)
 Cluster corrected energies          -214.29033089 (Davidson, rotated reference)

 Cluster corrected energies          -214.28787117 (Pople, fixed reference)
 Cluster corrected energies          -214.28773149 (Pople, relaxed reference)
 Cluster corrected energies          -214.28787117 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Coefficient of reference function:   C(0) = 0.95751051 (fixed)   0.95822838 (relaxed)   0.95816068 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00059980   -0.00117152   -0.75233869
 Singles      0.01427861   -0.05272048   -0.05982545
 Pairs        0.07436090    0.00000000   -0.05951039
 Total        1.08923931   -0.05389200   -0.87167453
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.34060650
 Nuclear energy                         0.00000000
 Kinetic energy                        83.47547968
 One electron energy                 -376.13652945
 Two electron energy                  161.92400766
 Virial quotient                       -2.56617300
 Correlation energy                    -0.87191530
 !MRCI STATE 3.1 Energy              -214.212521794490

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.29033092 (Davidson, fixed reference)
 Cluster corrected energies          -214.29019673 (Davidson, relaxed reference)
 Cluster corrected energies          -214.29033092 (Davidson, rotated reference)

 Cluster corrected energies          -214.28787120 (Pople, fixed reference)
 Cluster corrected energies          -214.28773152 (Pople, relaxed reference)
 Cluster corrected energies          -214.28787120 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Maximum overlap with reference state  6

 Coefficient of reference function:   C(0) = 0.95957620 (fixed)   0.95968719 (relaxed)   0.95957620 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00102773   -0.00201221   -0.73679864
 Singles      0.01480865   -0.05484941   -0.06215792
 Pairs        0.07019172    0.00000000   -0.05519903
 Total        1.08602810   -0.05686162   -0.85415560
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.17022439
 Nuclear energy                         0.00000000
 Kinetic energy                        83.19486737
 One electron energy                 -371.57452603
 Two electron energy                  157.55014604
 Virial quotient                       -2.57256712
 Correlation energy                    -0.85415560
 !MRCI STATE 4.1 Energy              -214.024379987214

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.09786137 (Davidson, fixed reference)
 Cluster corrected energies          -214.09764682 (Davidson, relaxed reference)
 Cluster corrected energies          -214.09786137 (Davidson, rotated reference)

 Cluster corrected energies          -214.09534661 (Pople, fixed reference)
 Cluster corrected energies          -214.09512447 (Pople, relaxed reference)
 Cluster corrected energies          -214.09534661 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Maximum overlap with reference state  8

 Coefficient of reference function:   C(0) = 0.95456956 (fixed)   0.95968740 (relaxed)   0.95957641 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00102774   -0.00201221   -0.73678909
 Singles      0.01480830   -0.05484890   -0.06215771
 Pairs        0.07019158   -0.00001120   -0.05520875
 Total        1.08602762   -0.05687230   -0.85415555
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.17022439
 Nuclear energy                         0.00000000
 Kinetic energy                        83.19482161
 One electron energy                 -371.57448613
 Two electron energy                  157.55010618
 Virial quotient                       -2.57256853
 Correlation energy                    -0.85415555
 !MRCI STATE 5.1 Energy              -214.024379943754

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.09786091 (Davidson, fixed reference)
 Cluster corrected energies          -214.09764636 (Davidson, relaxed reference)
 Cluster corrected energies          -214.09786091 (Davidson, rotated reference)

 Cluster corrected energies          -214.09534614 (Pople, fixed reference)
 Cluster corrected energies          -214.09512400 (Pople, relaxed reference)
 Cluster corrected energies          -214.09534614 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Maximum overlap with reference state  7

 Coefficient of reference function:   C(0) = 0.95957621 (fixed)   0.95968721 (relaxed)   0.95957622 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00102774   -0.00201220   -0.73679863
 Singles      0.01480862   -0.05484936   -0.06215784
 Pairs        0.07019171   -0.00000000   -0.05519904
 Total        1.08602807   -0.05686157   -0.85415551
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.17022439
 Nuclear energy                         0.00000000
 Kinetic energy                        83.19486667
 One electron energy                 -371.57452552
 Two electron energy                  157.55014562
 Virial quotient                       -2.57256714
 Correlation energy                    -0.85415551
 !MRCI STATE 6.1 Energy              -214.024379897267

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.09786124 (Davidson, fixed reference)
 Cluster corrected energies          -214.09764669 (Davidson, relaxed reference)
 Cluster corrected energies          -214.09786124 (Davidson, rotated reference)

 Cluster corrected energies          -214.09534648 (Pople, fixed reference)
 Cluster corrected energies          -214.09512434 (Pople, relaxed reference)
 Cluster corrected energies          -214.09534648 (Pople, rotated reference)



 RESULTS FOR STATE 7.1
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.95456958 (fixed)   0.95968743 (relaxed)   0.95957644 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00102773   -0.00201220   -0.73680261
 Singles      0.01480829   -0.05484892   -0.06215760
 Pairs        0.07019154    0.00000360   -0.05519521
 Total        1.08602756   -0.05685753   -0.85415542
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.17022439
 Nuclear energy                         0.00000000
 Kinetic energy                        83.19483367
 One electron energy                 -371.57449536
 Two electron energy                  157.55011555
 Virial quotient                       -2.57256816
 Correlation energy                    -0.85415542
 !MRCI STATE 7.1 Energy              -214.024379812049

 Properties without orbital relaxation:

 !MRCI STATE 7.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.09786072 (Davidson, fixed reference)
 Cluster corrected energies          -214.09764617 (Davidson, relaxed reference)
 Cluster corrected energies          -214.09786072 (Davidson, rotated reference)

 Cluster corrected energies          -214.09534594 (Pople, fixed reference)
 Cluster corrected energies          -214.09512380 (Pople, relaxed reference)
 Cluster corrected energies          -214.09534594 (Pople, rotated reference)



 RESULTS FOR STATE 8.1
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.95957625 (fixed)   0.95968726 (relaxed)   0.95957626 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00102774   -0.00201220   -0.73679868
 Singles      0.01480854   -0.05484929   -0.06215772
 Pairs        0.07019168    0.00000000   -0.05519901
 Total        1.08602796   -0.05686149   -0.85415540
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.17022439
 Nuclear energy                         0.00000000
 Kinetic energy                        83.19486920
 One electron energy                 -371.57452649
 Two electron energy                  157.55014670
 Virial quotient                       -2.57256706
 Correlation energy                    -0.85415540
 !MRCI STATE 8.1 Energy              -214.024379794255

 Properties without orbital relaxation:

 !MRCI STATE 8.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.09786104 (Davidson, fixed reference)
 Cluster corrected energies          -214.09764648 (Davidson, relaxed reference)
 Cluster corrected energies          -214.09786104 (Davidson, rotated reference)

 Cluster corrected energies          -214.09534627 (Pople, fixed reference)
 Cluster corrected energies          -214.09512413 (Pople, relaxed reference)
 Cluster corrected energies          -214.09534627 (Pople, rotated reference)



 RESULTS FOR STATE 9.1
 =====================

 Maximum overlap with reference state 10

 Coefficient of reference function:   C(0) = 0.95892417 (fixed)   0.95972470 (relaxed)   0.95960401 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00102697   -0.00196812   -0.73817249
 Singles      0.01456780   -0.05453814   -0.06170080
 Pairs        0.07037038    0.00000000   -0.05541609
 Total        1.08596515   -0.05650626   -0.85528938
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.16678360
 Nuclear energy                         0.00000000
 Kinetic energy                        83.21942361
 One electron energy                 -371.74130577
 Two electron energy                  157.71947356
 Virial quotient                       -2.57177739
 Correlation energy                    -0.85504861
 !MRCI STATE 9.1 Energy              -214.021832208396

 Properties without orbital relaxation:

 !MRCI STATE 9.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.09533659 (Davidson, fixed reference)
 Cluster corrected energies          -214.09510308 (Davidson, relaxed reference)
 Cluster corrected energies          -214.09533659 (Davidson, rotated reference)

 Cluster corrected energies          -214.09281729 (Pople, fixed reference)
 Cluster corrected energies          -214.09257555 (Pople, relaxed reference)
 Cluster corrected energies          -214.09281729 (Pople, rotated reference)



 RESULTS FOR STATE 10.1
 ======================

 Maximum overlap with reference state  9

 Coefficient of reference function:   C(0) = 0.95892418 (fixed)   0.95972470 (relaxed)   0.95960402 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00102697   -0.00196812   -0.73817248
 Singles      0.01456779   -0.05453813   -0.06170076
 Pairs        0.07037037    0.00000000   -0.05541610
 Total        1.08596513   -0.05650625   -0.85528934
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.16678360
 Nuclear energy                         0.00000000
 Kinetic energy                        83.21942388
 One electron energy                 -371.74130655
 Two electron energy                  157.71947439
 Virial quotient                       -2.57177738
 Correlation energy                    -0.85504857
 !MRCI STATE 10.1 Energy             -214.021832168324

 Properties without orbital relaxation:

 !MRCI STATE 10.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.09533653 (Davidson, fixed reference)
 Cluster corrected energies          -214.09510302 (Davidson, relaxed reference)
 Cluster corrected energies          -214.09533653 (Davidson, rotated reference)

 Cluster corrected energies          -214.09281723 (Pople, fixed reference)
 Cluster corrected energies          -214.09257549 (Pople, relaxed reference)
 Cluster corrected energies          -214.09281723 (Pople, rotated reference)



 RESULTS FOR STATE 11.1
 ======================

 Coefficient of reference function:   C(0) = 0.95892423 (fixed)   0.95972474 (relaxed)   0.95960406 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00102697   -0.00196812   -0.73817257
 Singles      0.01456772   -0.05453804   -0.06170065
 Pairs        0.07037036    0.00000000   -0.05541608
 Total        1.08596505   -0.05650616   -0.85528930
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.16678360
 Nuclear energy                         0.00000000
 Kinetic energy                        83.21942619
 One electron energy                 -371.74130761
 Two electron energy                  157.71947548
 Virial quotient                       -2.57177731
 Correlation energy                    -0.85504853
 !MRCI STATE 11.1 Energy             -214.021832124014

 Properties without orbital relaxation:

 !MRCI STATE 11.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.09533641 (Davidson, fixed reference)
 Cluster corrected energies          -214.09510290 (Davidson, relaxed reference)
 Cluster corrected energies          -214.09533641 (Davidson, rotated reference)

 Cluster corrected energies          -214.09281711 (Pople, fixed reference)
 Cluster corrected energies          -214.09257537 (Pople, relaxed reference)
 Cluster corrected energies          -214.09281711 (Pople, rotated reference)



 RESULTS FOR STATE 12.1
 ======================

 Coefficient of reference function:   C(0) = 0.95951341 (fixed)   0.95962202 (relaxed)   0.95951341 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00102571   -0.00201334   -0.00266048
 Singles      0.01474686   -0.05481408   -0.06206307
 Pairs        0.07039767   -0.79759204   -0.78969592
 Total        1.08617024   -0.85441946   -0.85441947
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.16454128
 Nuclear energy                         0.00000000
 Kinetic energy                        83.19568212
 One electron energy                 -371.57389127
 Two electron energy                  157.55493053
 Virial quotient                       -2.57247678
 Correlation energy                    -0.85441947
 !MRCI STATE 12.1 Energy             -214.018960741830

 Properties without orbital relaxation:

 !MRCI STATE 12.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.09258627 (Davidson, fixed reference)
 Cluster corrected energies          -214.09237622 (Davidson, relaxed reference)
 Cluster corrected energies          -214.09258627 (Davidson, rotated reference)

 Cluster corrected energies          -214.09007506 (Pople, fixed reference)
 Cluster corrected energies          -214.08985753 (Pople, relaxed reference)
 Cluster corrected energies          -214.09007506 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       86.94       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       6     4500.06       700     1000      520     2100     2140     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *     16135.78  16117.57      8.22      1.64      8.10
 REAL TIME  *     16506.08 SEC
 DISK USED  *         4.48 GB (local),       55.00 GB (total)
 SF USED    *        43.35 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =      -214.29033090  AU                              
 SETTING HLSDIAG(2)     =      -214.29033089  AU                              
 SETTING HLSDIAG(3)     =      -214.29033092  AU                              
 SETTING HLSDIAG(4)     =      -214.09786137  AU                              
 SETTING HLSDIAG(5)     =      -214.09786091  AU                              
 SETTING HLSDIAG(6)     =      -214.09786124  AU                              
 SETTING HLSDIAG(7)     =      -214.09786072  AU                              
 SETTING HLSDIAG(8)     =      -214.09786104  AU                              
 SETTING HLSDIAG(9)     =      -214.09533659  AU                              
 SETTING HLSDIAG(10)    =      -214.09533653  AU                              
 SETTING HLSDIAG(11)    =      -214.09533641  AU                              
 SETTING HLSDIAG(12)    =      -214.09258627  AU                              


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
 Number of external orbitals:     249 ( 122 127 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Coulomb and exchange operators available. No transformation done.


 Number of p-space configurations:  21

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -213.30503352
     2      -213.30503352
     3      -213.30503352
     4      -213.30503352
     5      -213.30503352
     6      -213.27522133
     7      -213.17401647
     8      -213.17401647
     9      -213.17401647
    10      -213.15813840
    11      -213.15813840
    12      -213.15813840
    13      -213.15813840
    14      -213.15813839
    15      -213.14712487

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2437D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.3025D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2437D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.3025D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2437D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.3025D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2437D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.3025D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2437D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.3025D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2437D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.3025D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2437D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.3025D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2437D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.3025D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2437D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.3025D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2437D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.3025D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2437D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.3025D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2437D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.3025D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2437D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.3025D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2437D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.3025D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2437D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.3025D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2437D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.3025D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2437D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.3025D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2437D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.3025D-06

 Number of blocks in overlap matrix:  1349   Smallest eigenvalue:  0.24D-06
 Number of N-2 electron functions:    2650
 Number of N-1 electron functions:   51520

 Number of internal configurations:                24150
 Number of singly external configurations:       6415270
 Number of doubly external configurations:      41092579
 Total number of contracted configurations:     47531999
 Total number of uncontracted configurations:  427217996

 Diagonal Coupling coefficients finished.               Storage:  21847082 words, CPU-Time:     61.13 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   3831765 words, CPU-time:      6.42 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -213.30503352    -0.00000000    -1.06239773  0.62D-01  0.12D+00    83.93
    1     2     2     1.00000000     0.00000000  -213.30503352    -0.00000000    -1.06302866  0.63D-01  0.12D+00    83.93
    1     3     3     1.00000000     0.00000000  -213.30503352    -0.00000000    -1.06266986  0.63D-01  0.12D+00    83.93
    1     4     4     1.00000000     0.00000000  -213.30503352     0.00000000    -1.06302256  0.63D-01  0.12D+00    83.93
    1     5     5     1.00000000     0.00000000  -213.30503352    -0.00000000    -1.06249759  0.62D-01  0.12D+00    83.93
    1     6     6     1.00000000     0.00000000  -213.27522133    -0.00000000    -1.03659165  0.35D-01  0.12D+00    83.93
    1     7     7     1.00000000     0.00000000  -213.17401647     0.00000000    -1.00735949  0.37D-01  0.10D+00    83.93
    1     8     8     1.00000000     0.00000000  -213.17401647    -0.00000000    -1.00740535  0.37D-01  0.10D+00    83.93
    1     9     9     1.00000000     0.00000000  -213.17401647     0.00000000    -1.00735885  0.37D-01  0.10D+00    83.93
    1    10    10     1.00000000     0.00000000  -213.15813840     0.00000000    -1.01682518  0.42D-01  0.11D+00    83.93
    1    11    11     1.00000000     0.00000000  -213.15813840     0.00000000    -1.01729037  0.42D-01  0.11D+00    83.93
    1    12    12     1.00000000     0.00000000  -213.15813840    -0.00000000    -1.01729997  0.42D-01  0.11D+00    83.93
    1    13    13     1.00000000     0.00000000  -213.15813840    -0.00000000    -1.01726036  0.42D-01  0.11D+00    83.93
    1    14    14     1.00000000     0.00000000  -213.15813839    -0.00000000    -1.01701626  0.42D-01  0.11D+00    83.93
    1    15    15     1.00000000     0.00000000  -213.14712487     0.00000000    -1.01825758  0.46D-01  0.11D+00    83.93
    2     1     1     1.11267845    -0.84656374  -214.15159726    -0.84656374    -0.03218850  0.68D-02  0.21D-02  2537.98
    2     2     2     1.11271065    -0.84656078  -214.15159430    -0.84656078    -0.03219128  0.68D-02  0.21D-02  2537.98
    2     3     3     1.11303169    -0.84616809  -214.15120161    -0.84616809    -0.03258516  0.71D-02  0.21D-02  2537.98
    2     4     4     1.11324843    -0.84597511  -214.15100863    -0.84597511    -0.03279048  0.72D-02  0.21D-02  2537.98
    2     5     5     1.11328205    -0.84594490  -214.15097842    -0.84594490    -0.03282783  0.72D-02  0.21D-02  2537.98
    2     6     6     1.10274882    -0.84558620  -214.12080753    -0.84558620    -0.02621477  0.56D-02  0.17D-02  2537.98
    2     7     7     1.09605808    -0.83298663  -214.00700310    -0.83298663    -0.02172815  0.30D-02  0.14D-02  2537.98
    2     8     8     1.09608628    -0.83297172  -214.00698819    -0.83297172    -0.02174260  0.30D-02  0.14D-02  2537.98
    2     9     9     1.09608637    -0.83296110  -214.00697757    -0.83296110    -0.02175361  0.30D-02  0.14D-02  2537.98
    2    10    10     1.09813138    -0.83443316  -213.99257156    -0.83443316    -0.02385833  0.40D-02  0.15D-02  2537.98
    2    11    11     1.09823820    -0.83437398  -213.99251237    -0.83437398    -0.02391313  0.41D-02  0.15D-02  2537.98
    2    12    12     1.09854520    -0.83410488  -213.99224327    -0.83410488    -0.02421220  0.43D-02  0.15D-02  2537.98
    2    13    13     1.09856840    -0.83408488  -213.99222328    -0.83408488    -0.02424284  0.43D-02  0.15D-02  2537.98
    2    14    14     1.09857496    -0.83408121  -213.99221960    -0.83408121    -0.02424348  0.43D-02  0.15D-02  2537.98
    2    15    15     1.10208060    -0.83337281  -213.98049768    -0.83337281    -0.02566399  0.61D-02  0.15D-02  2537.98
    3     1     1     1.09301214    -0.87690482  -214.18193834    -0.03034108    -0.00078372  0.13D-03  0.92D-04  4992.94
    3     2     2     1.09300741    -0.87690147  -214.18193499    -0.03034068    -0.00078669  0.13D-03  0.93D-04  4992.94
    3     3     3     1.09300271    -0.87688946  -214.18192298    -0.03072137    -0.00079843  0.13D-03  0.94D-04  4992.94
    3     4     4     1.09301818    -0.87688112  -214.18191464    -0.03090601    -0.00080736  0.13D-03  0.96D-04  4992.94
    3     5     5     1.09301771    -0.87688048  -214.18191400    -0.03093558    -0.00080790  0.13D-03  0.96D-04  4992.94
    3     6     6     1.08972838    -0.87070088  -214.14592221    -0.02511468    -0.00059959  0.85D-04  0.76D-04  4992.94
    3     7     7     1.08498981    -0.85366883  -214.02768530    -0.02068220    -0.00031933  0.37D-04  0.31D-04  4992.94
    3     8     8     1.08499288    -0.85366800  -214.02768447    -0.02069629    -0.00032000  0.37D-04  0.32D-04  4992.94
    3     9     9     1.08498924    -0.85366755  -214.02768402    -0.02070645    -0.00032037  0.37D-04  0.32D-04  4992.94
    3    10    10     1.08563889    -0.85691285  -214.01505125    -0.02247969    -0.00041025  0.54D-04  0.45D-04  4992.94
    3    11    11     1.08564877    -0.85690922  -214.01504762    -0.02253525    -0.00041349  0.54D-04  0.45D-04  4992.94
    3    12    12     1.08566196    -0.85689801  -214.01503641    -0.02279313    -0.00042479  0.55D-04  0.47D-04  4992.94
    3    13    13     1.08566386    -0.85689767  -214.01503606    -0.02281279    -0.00042518  0.55D-04  0.47D-04  4992.94
    3    14    14     1.08566578    -0.85689640  -214.01503479    -0.02281519    -0.00042622  0.55D-04  0.48D-04  4992.94
    3    15    15     1.08635509    -0.85790900  -214.00503387    -0.02453619    -0.00052569  0.84D-04  0.65D-04  4992.94
    4     1     1     1.09185873    -0.87771933  -214.18275285    -0.00081451    -0.00003874  0.56D-05  0.48D-05  7450.49
    4     2     2     1.09185462    -0.87771923  -214.18275275    -0.00081777    -0.00003891  0.55D-05  0.48D-05  7450.49
    4     3     3     1.09185335    -0.87771904  -214.18275256    -0.00082958    -0.00003900  0.56D-05  0.48D-05  7450.49
    4     4     4     1.09185681    -0.87771896  -214.18275248    -0.00083783    -0.00003919  0.56D-05  0.48D-05  7450.49
    4     5     5     1.09185273    -0.87771877  -214.18275229    -0.00083829    -0.00003934  0.56D-05  0.49D-05  7450.49
    4     6     6     1.08957929    -0.87131395  -214.14653528    -0.00061307    -0.00003225  0.40D-05  0.45D-05  7450.49
    4     7     7     1.08483414    -0.85399886  -214.02801533    -0.00033003    -0.00001232  0.23D-05  0.12D-05  7450.49
    4     8     8     1.08483351    -0.85399880  -214.02801527    -0.00033080    -0.00001237  0.23D-05  0.12D-05  7450.49
    4     9     9     1.08483438    -0.85399878  -214.02801525    -0.00033123    -0.00001238  0.23D-05  0.12D-05  7450.49
    4    10    10     1.08545848    -0.85733624  -214.01547464    -0.00042339    -0.00001867  0.33D-05  0.23D-05  7450.49
    4    11    11     1.08545715    -0.85733600  -214.01547440    -0.00042678    -0.00001888  0.33D-05  0.23D-05  7450.49
    4    12    12     1.08545612    -0.85733597  -214.01547436    -0.00043796    -0.00001929  0.34D-05  0.24D-05  7450.49
    4    13    13     1.08545561    -0.85733589  -214.01547429    -0.00043822    -0.00001937  0.34D-05  0.24D-05  7450.49
    4    14    14     1.08545544    -0.85733580  -214.01547420    -0.00043940    -0.00001940  0.34D-05  0.24D-05  7450.49
    4    15    15     1.08598820    -0.85846622  -214.00559109    -0.00055722    -0.00002871  0.50D-05  0.39D-05  7450.49
    5     1     1     1.09188054    -0.87776218  -214.18279570    -0.00004285    -0.00000139  0.10D-06  0.21D-06  9913.45
    5     2     2     1.09188191    -0.87776218  -214.18279570    -0.00004295    -0.00000139  0.10D-06  0.21D-06  9913.45
    5     3     3     1.09188097    -0.87776218  -214.18279570    -0.00004314    -0.00000140  0.11D-06  0.21D-06  9913.45
    5     4     4     1.09188067    -0.87776217  -214.18279569    -0.00004321    -0.00000140  0.10D-06  0.21D-06  9913.45
    5     5     5     1.09188058    -0.87776217  -214.18279569    -0.00004339    -0.00000140  0.11D-06  0.21D-06  9913.45
    5     6     6     1.08985001    -0.87134909  -214.14657043    -0.00003514    -0.00000138  0.92D-07  0.23D-06  9913.45
    5     7     7     1.08487223    -0.85401242  -214.02802889    -0.00001356    -0.00000044  0.40D-07  0.64D-07  9913.45
    5     8     8     1.08487253    -0.85401241  -214.02802889    -0.00001361    -0.00000043  0.41D-07  0.63D-07  9913.45
    5     9     9     1.08487241    -0.85401239  -214.02802886    -0.00001362    -0.00000044  0.41D-07  0.63D-07  9913.45
    5    10    10     1.08554646    -0.85735783  -214.01549623    -0.00002159    -0.00000101  0.68D-07  0.21D-06  9913.45
    5    11    11     1.08554652    -0.85735781  -214.01549620    -0.00002181    -0.00000099  0.68D-07  0.20D-06  9913.45
    5    12    12     1.08554610    -0.85735776  -214.01549616    -0.00002179    -0.00000100  0.68D-07  0.20D-06  9913.45
    5    13    13     1.08554654    -0.85735748  -214.01549587    -0.00002159    -0.00000098  0.66D-07  0.20D-06  9913.45
    5    14    14     1.08554677    -0.85735741  -214.01549580    -0.00002160    -0.00000097  0.65D-07  0.20D-06  9913.45
    5    15    15     1.08609123    -0.85849847  -214.00562334    -0.00003225    -0.00000159  0.10D-06  0.32D-06  9913.45
    6     1     1     1.09187454    -0.87776371  -214.18279723    -0.00000152    -0.00000008  0.64D-08  0.14D-07 12368.64
    6     2     2     1.09187458    -0.87776371  -214.18279723    -0.00000153    -0.00000008  0.65D-08  0.14D-07 12368.64
    6     3     3     1.09187462    -0.87776371  -214.18279723    -0.00000153    -0.00000008  0.66D-08  0.13D-07 12368.64
    6     4     4     1.09187431    -0.87776371  -214.18279723    -0.00000154    -0.00000008  0.66D-08  0.14D-07 12368.64
    6     5     5     1.09187429    -0.87776371  -214.18279723    -0.00000154    -0.00000008  0.66D-08  0.14D-07 12368.64
    6     6     6     1.08988080    -0.87135067  -214.14657201    -0.00000158    -0.00000008  0.83D-08  0.13D-07 12368.64
    6     7     7     1.08486961    -0.85401292  -214.02802939    -0.00000050    -0.00000003  0.20D-08  0.50D-08 12368.64
    6     8     8     1.08486971    -0.85401291  -214.02802938    -0.00000050    -0.00000002  0.19D-08  0.48D-08 12368.64
    6     9     9     1.08486961    -0.85401289  -214.02802936    -0.00000050    -0.00000003  0.20D-08  0.49D-08 12368.64
    6    10    10     1.08555546    -0.85735908  -214.01549748    -0.00000126    -0.00000010  0.10D-07  0.18D-07 12368.64
    6    11    11     1.08555561    -0.85735905  -214.01549744    -0.00000124    -0.00000010  0.10D-07  0.17D-07 12368.64
    6    12    12     1.08555539    -0.85735901  -214.01549741    -0.00000125    -0.00000010  0.10D-07  0.18D-07 12368.64
    6    13    13     1.08555547    -0.85735870  -214.01549710    -0.00000123    -0.00000009  0.96D-08  0.17D-07 12368.64
    6    14    14     1.08555541    -0.85735862  -214.01549701    -0.00000121    -0.00000009  0.94D-08  0.17D-07 12368.64
    6    15    15     1.08609640    -0.85850042  -214.00562529    -0.00000195    -0.00000014  0.15D-07  0.25D-07 12368.64
    7     1     1     1.09188717    -0.87776380  -214.18279732    -0.00000009    -0.00000001  0.45D-09  0.11D-08 14359.37
    7     2     2     1.09188724    -0.87776380  -214.18279732    -0.00000009    -0.00000001  0.46D-09  0.11D-08 14359.37
    7     3     3     1.09188719    -0.87776380  -214.18279732    -0.00000009    -0.00000001  0.45D-09  0.11D-08 14359.37
    7     4     4     1.09188732    -0.87776380  -214.18279732    -0.00000009    -0.00000001  0.46D-09  0.11D-08 14359.37
    7     5     5     1.09188733    -0.87776380  -214.18279732    -0.00000009    -0.00000001  0.45D-09  0.11D-08 14359.37
    7     6     6     1.08989237    -0.87135076  -214.14657210    -0.00000009    -0.00000001  0.46D-09  0.96D-09 14359.37
    7     7     7     1.08486961    -0.85401292  -214.02802939    -0.00000000    -0.00000003  0.20D-08  0.50D-08 14359.37
    7     8     8     1.08486971    -0.85401291  -214.02802938    -0.00000000    -0.00000002  0.19D-08  0.48D-08 14359.37
    7     9     9     1.08486961    -0.85401289  -214.02802936    -0.00000000    -0.00000003  0.20D-08  0.49D-08 14359.37
    7    10    10     1.08556651    -0.85735921  -214.01549760    -0.00000012    -0.00000001  0.66D-09  0.11D-08 14359.37
    7    11    11     1.08556526    -0.85735916  -214.01549756    -0.00000012    -0.00000001  0.73D-09  0.14D-08 14359.37
    7    12    12     1.08556635    -0.85735913  -214.01549753    -0.00000012    -0.00000001  0.66D-09  0.11D-08 14359.37
    7    13    13     1.08556500    -0.85735882  -214.01549721    -0.00000011    -0.00000001  0.70D-09  0.14D-08 14359.37
    7    14    14     1.08556484    -0.85735873  -214.01549712    -0.00000011    -0.00000001  0.69D-09  0.14D-08 14359.37
    7    15    15     1.08610930    -0.85850059  -214.00562546    -0.00000017    -0.00000001  0.78D-09  0.19D-08 14359.37


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.2%
 S   0.2%  14.0%
 P   0.3%  23.2%  41.9%

 Initialization:   0.5%
 Other:           19.8%

 Total CPU:    14359.4 seconds
 =====================================



 Wavefunction saved on  5101.2

 Reference coefficients greater than 0.0500000
 =============================================
 2222222222/\0000           0.9404784   0.0000638   0.0050760  -0.0056643  -0.0035070   0.0000000   0.0000001  -0.0000000
                           -0.0000000  -0.1366656  -0.0000000   0.0000088  -0.0000036   0.0000023   0.0000000
 2222222222/0\000          -0.0050953   0.0124575   0.9403918   0.0012534  -0.0070971   0.0000000  -0.0000000  -0.0000000
                           -0.0000000  -0.0000088  -0.0000001  -0.1366656  -0.0000052   0.0000022   0.0000000
 22222222220/\000           0.0000008   0.9403823  -0.0123881  -0.0054667   0.0082160   0.0000000   0.0000000  -0.0000005
                           -0.0000000   0.0000000  -0.1366656   0.0000001   0.0000001  -0.0000010  -0.0000000
 2222222222002000           0.0022657  -0.0071099   0.0059818  -0.0906260   0.7625015   0.5289703   0.0000000  -0.0000000
                           -0.0000000  -0.0000025   0.0000008  -0.0000028   0.0292496  -0.1076860  -0.1097637
 22222222220/0\00           0.0004569   0.0009760  -0.0004800   0.1027379  -0.0440752   0.1135974   0.0000000   0.0000000
                           -0.0000000  -0.0000226   0.0000017  -0.0000314   0.7418523  -0.1960625   0.5360780
 222222222200/0\0           0.0003299  -0.0010351   0.0008709  -0.0131939   0.1110094   0.1135976   0.0000000  -0.0000000
                           -0.0000000   0.0000174  -0.0000055   0.0000196  -0.2011330   0.7405009   0.5360680
 2222222222020000           0.0031386   0.0067040  -0.0032972   0.7056866  -0.3027440   0.5289704   0.0000000   0.0000000
                           -0.0000000   0.0000033  -0.0000003   0.0000046  -0.1078821   0.0285118  -0.1097651
 22222222220/00\0           0.0000001   0.0968075  -0.0012753  -0.0005628   0.0008458  -0.0000000  -0.0000000   0.6717195
                            0.0001611  -0.0000000   0.6645221  -0.0000003  -0.0000003   0.0000048   0.0000000
 22222222220/000\           0.0968174   0.0000066   0.0005225  -0.0005831  -0.0003610   0.0000000  -0.6717178   0.0000000
                            0.0000000   0.6645236   0.0000000  -0.0000427   0.0000173  -0.0000110  -0.0000000
 2222222222/000\0          -0.0005245   0.0012824   0.0968085   0.0001290  -0.0007306   0.0000000  -0.0000000  -0.0001611
                            0.6717174   0.0000427   0.0000003   0.6645239   0.0000253  -0.0000107  -0.0000000
 222222222200/00\          -0.0005245   0.0012824   0.0968084   0.0001290  -0.0007306   0.0000000   0.0000000   0.0001611
                           -0.6717170   0.0000427   0.0000003   0.6645245   0.0000253  -0.0000107  -0.0000000
 2222222222/00\00           0.0968174   0.0000066   0.0005225  -0.0005831  -0.0003610  -0.0000000   0.6717167   0.0000000
                            0.0000000   0.6645246   0.0000000  -0.0000427   0.0000173  -0.0000110  -0.0000000
 222222222200/\00           0.0000001   0.0968074  -0.0012753  -0.0005628   0.0008458  -0.0000000  -0.0000000  -0.6717148
                           -0.0001611  -0.0000000   0.6645270  -0.0000003  -0.0000003   0.0000048   0.0000000
 2222222222200000          -0.0054043   0.0004060  -0.0026846  -0.6150606  -0.4597576   0.5289704  -0.0000000  -0.0000000
                           -0.0000000  -0.0000007  -0.0000005  -0.0000017   0.0786344   0.0791724  -0.1097643
 2222222222/0000\          -0.0007868   0.0000591  -0.0003908  -0.0895441  -0.0669341   0.1135975   0.0000000   0.0000000
                           -0.0000000   0.0000051   0.0000037   0.0000119  -0.5407279  -0.5444302   0.5360729
 2222220222202000           0.0003492   0.0007459  -0.0003669   0.0785202  -0.0336858  -0.1134806  -0.0000000   0.0000000
                            0.0000000   0.0000004  -0.0000000   0.0000006  -0.0144432   0.0038173   0.0254463
 2222220222220000           0.0002521  -0.0007911   0.0006656  -0.0100839   0.0848419  -0.1134806  -0.0000000  -0.0000000
                            0.0000000  -0.0000003   0.0000001  -0.0000004   0.0039156  -0.0144165   0.0254466
 2222220222022000          -0.0006013   0.0000452  -0.0002987  -0.0684364  -0.0511563  -0.1134806  -0.0000000  -0.0000000
                            0.0000000  -0.0000001  -0.0000001  -0.0000002   0.0105271   0.0105996   0.0254465
 2222220222/\2000          -0.1046448  -0.0000071  -0.0005648   0.0006302   0.0003902   0.0000000   0.0000000   0.0000000
                            0.0000000   0.0182965   0.0000000  -0.0000012   0.0000005  -0.0000003  -0.0000000
 2222220222/2\000           0.0005669  -0.0013861  -0.1046353  -0.0001395   0.0007897  -0.0000000  -0.0000000   0.0000000
                            0.0000000   0.0000012   0.0000000   0.0182965   0.0000007  -0.0000003  -0.0000000
 22222202222/\000          -0.0000001  -0.1046342   0.0013784   0.0006083  -0.0009142  -0.0000000  -0.0000000   0.0000001
                           -0.0000000   0.0000000   0.0182964  -0.0000000  -0.0000000   0.0000001   0.0000000
 22222202220/2\00          -0.0000136  -0.0001835   0.0001224  -0.0108190   0.0139920  -0.0043895  -0.0000000  -0.0000000
                           -0.0000000   0.0000023  -0.0000002   0.0000032  -0.0751648   0.0181318  -0.0563556
 222222022202/0\0           0.0000096   0.0001838  -0.0001244   0.0103578  -0.0143367  -0.0043896  -0.0000000   0.0000000
                            0.0000000  -0.0000017   0.0000006  -0.0000019   0.0186452  -0.0750397  -0.0563550
 22222202222/0\00          -0.0001127  -0.0000864   0.0000104  -0.0175957  -0.0018019  -0.0043895   0.0000000  -0.0000000
                           -0.0000000   0.0000023  -0.0000002   0.0000032  -0.0743086   0.0213723  -0.0563555
 222222022220/0\0          -0.0001008   0.0001024  -0.0001165  -0.0067087  -0.0163656  -0.0043896   0.0000000   0.0000000
                            0.0000000  -0.0000018   0.0000005  -0.0000020   0.0218803  -0.0741608  -0.0563549
 22222202222/00\0          -0.0000000  -0.0090910   0.0001198   0.0000528  -0.0000794   0.0000000  -0.0000000  -0.0684860
                           -0.0000164   0.0000000  -0.0677841   0.0000000   0.0000000  -0.0000005  -0.0000000
 222222022202/00\           0.0000493  -0.0001204  -0.0090910  -0.0000121   0.0000686  -0.0000000   0.0000000  -0.0000164
                            0.0684858  -0.0000044  -0.0000000  -0.0677846  -0.0000026   0.0000011   0.0000000
 22222202220/200\          -0.0090919  -0.0000006  -0.0000491   0.0000548   0.0000339  -0.0000000   0.0684857  -0.0000000
                           -0.0000000  -0.0677845  -0.0000000   0.0000044  -0.0000018   0.0000011   0.0000000
 2222220222/200\0           0.0000493  -0.0001204  -0.0090911  -0.0000121   0.0000686  -0.0000000   0.0000000   0.0000164
                           -0.0684857  -0.0000044  -0.0000000  -0.0677846  -0.0000026   0.0000011   0.0000000
 2222220222/02\00          -0.0090919  -0.0000006  -0.0000491   0.0000548   0.0000339  -0.0000000  -0.0684857  -0.0000000
                           -0.0000000  -0.0677845  -0.0000000   0.0000044  -0.0000018   0.0000011   0.0000000
 222222022220/\00          -0.0000000  -0.0090910   0.0001198   0.0000528  -0.0000794  -0.0000000   0.0000000   0.0684856
                            0.0000164   0.0000000  -0.0677846   0.0000000   0.0000000  -0.0000005  -0.0000000
 22222202220/20\0          -0.0000000  -0.0176834   0.0002330   0.0001028  -0.0001545   0.0000000   0.0000000  -0.0668011
                           -0.0000160   0.0000000  -0.0661078   0.0000000   0.0000000  -0.0000005  -0.0000000
 2222220222/020\0           0.0000958  -0.0002343  -0.0176835  -0.0000236   0.0001335   0.0000000  -0.0000000   0.0000160
                           -0.0668009  -0.0000042  -0.0000000  -0.0661081  -0.0000025   0.0000011   0.0000000
 222222022220/00\           0.0000958  -0.0002343  -0.0176835  -0.0000236   0.0001335  -0.0000000  -0.0000000  -0.0000160
                            0.0668009  -0.0000042  -0.0000000  -0.0661082  -0.0000025   0.0000011   0.0000000
 22222202222/000\          -0.0176852  -0.0000012  -0.0000955   0.0001065   0.0000659  -0.0000000   0.0668006  -0.0000000
                           -0.0000000  -0.0661086  -0.0000000   0.0000042  -0.0000017   0.0000011   0.0000000
 2222220222/20\00          -0.0176852  -0.0000012  -0.0000955   0.0001065   0.0000659  -0.0000000  -0.0668004  -0.0000000
                           -0.0000000  -0.0661088  -0.0000000   0.0000042  -0.0000017   0.0000011   0.0000000
 222222022202/\00          -0.0000000  -0.0176835   0.0002330   0.0001028  -0.0001545  -0.0000000   0.0000000   0.0668002
                            0.0000160   0.0000000  -0.0661088   0.0000000   0.0000000  -0.0000005  -0.0000000
 2222220222/0200\           0.0001032  -0.0000974   0.0001140   0.0072378   0.0161386  -0.0043896   0.0000000  -0.0000000
                            0.0000000  -0.0000006  -0.0000004  -0.0000013   0.0556638   0.0536663  -0.0563555
 2222220222/2000\           0.0001144   0.0000811  -0.0000059   0.0175278   0.0023736  -0.0043895   0.0000000  -0.0000000
                            0.0000000  -0.0000005  -0.0000004  -0.0000011   0.0532858   0.0560286  -0.0563553

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1          -0.005619   -0.005173    0.954764    0.000001    0.003737    0.000000   -0.000000   -0.000000   -0.000000   -0.000129
            -0.000000    0.000320   -0.058995    0.000397    0.000000
 2           0.005145    0.012647    0.000065    0.954667    0.008492   -0.000000   -0.000000    0.000000    0.000000    0.000575
            -0.058989   -0.000781   -0.000004    0.000214   -0.000000
 3          -0.006096    0.954676    0.005153   -0.012576   -0.004283   -0.000000    0.000000    0.000000   -0.000000   -0.000460
             0.000777   -0.058990   -0.000318    0.000027    0.000000
 4          -0.402392    0.001272   -0.005750   -0.005550    0.865831   -0.000000   -0.000000   -0.000000   -0.000000    0.013756
             0.000343   -0.000079    0.000355    0.057369   -0.000000
 5          -0.865814   -0.007205   -0.003560    0.008341   -0.402343   -0.000000   -0.000000   -0.000000    0.000000   -0.057366
            -0.000515    0.000445    0.000220    0.013758    0.000000
 6           0.000000    0.000000   -0.000000    0.000000    0.000000    0.955439   -0.000000    0.000000   -0.000000    0.000000
            -0.000000    0.000000   -0.000000    0.000000   -0.061641
 7           0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.000000    0.959595   -0.000000   -0.000000   -0.000000
            -0.000000    0.000000   -0.000001    0.000000    0.000000
 8           0.000000   -0.000000    0.000000    0.000000    0.000000    0.000000    0.000000   -0.000230    0.959595   -0.000000
             0.000003    0.000000    0.000000    0.000000    0.000000
 9          -0.000000    0.000000    0.000000    0.000000    0.000000   -0.000000    0.000000    0.959595    0.000230   -0.000000
             0.000000    0.000000    0.000000   -0.000000   -0.000000
 10         -0.000001    0.000004    0.061009   -0.000000   -0.000002    0.000000    0.000001   -0.000000   -0.000000    0.000024
            -0.000000    0.000061    0.957341    0.000017    0.000000
 11          0.000000    0.000000    0.000000    0.061009    0.000000    0.000000    0.000000   -0.000000   -0.000003   -0.000007
             0.957342    0.000000    0.000000    0.000002   -0.000000
 12         -0.000000    0.061009   -0.000004   -0.000000   -0.000003   -0.000000   -0.000000   -0.000000   -0.000000    0.000028
            -0.000000    0.957341   -0.000061    0.000028    0.000000
 13         -0.017336    0.000002    0.000002   -0.000000    0.058494   -0.000000    0.000000   -0.000000    0.000000   -0.357114
            -0.000000    0.000037    0.000025   -0.888242   -0.000005
 14         -0.058494   -0.000001   -0.000001    0.000000   -0.017336    0.000000    0.000000   -0.000000    0.000000    0.888242
             0.000007   -0.000015   -0.000016   -0.357114    0.000005
 15          0.000000   -0.000000   -0.000000    0.000000    0.000000    0.063365   -0.000000    0.000000   -0.000000   -0.000006
             0.000000   -0.000000   -0.000000   -0.000003    0.956948

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.956623   -0.000000    0.000000   -0.000000    0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.000924
             0.000000   -0.000005    0.000005    0.000004    0.000000
 2          -0.000000    0.956623    0.000000   -0.000000    0.000000    0.000000   -0.000000    0.000000    0.000000    0.000000
             0.000924    0.000012    0.000006   -0.000007   -0.000000
 3           0.000000    0.000000    0.956623    0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.000000    0.000005
            -0.000012    0.000924   -0.000002    0.000007    0.000000
 4          -0.000000   -0.000000    0.000000    0.956623    0.000000   -0.000000   -0.000000   -0.000000   -0.000000   -0.000006
            -0.000005    0.000001    0.000914    0.000135    0.000000
 5           0.000000    0.000000   -0.000000    0.000000    0.956623   -0.000000   -0.000000    0.000000   -0.000000   -0.000003
             0.000008   -0.000007   -0.000135    0.000914    0.000000
 6          -0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.957425    0.000000    0.000000   -0.000000    0.000000
             0.000000   -0.000000    0.000000    0.000000    0.000811
 7           0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.000000    0.959595   -0.000000   -0.000000   -0.000000
             0.000000    0.000000    0.000000   -0.000000   -0.000000
 8          -0.000000    0.000000   -0.000000   -0.000000    0.000000    0.000000   -0.000000    0.959595   -0.000000   -0.000000
            -0.000000    0.000000    0.000000   -0.000000   -0.000000
 9          -0.000000    0.000000    0.000000   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.959595   -0.000000
            -0.000000   -0.000000   -0.000000    0.000000    0.000000
 10          0.000924    0.000000    0.000005   -0.000006   -0.000003    0.000000   -0.000000   -0.000000   -0.000000    0.959283
            -0.000000    0.000000    0.000000   -0.000000   -0.000000
 11          0.000000    0.000924   -0.000012   -0.000005    0.000008    0.000000    0.000000   -0.000000   -0.000000   -0.000000
             0.959283   -0.000000    0.000000   -0.000000    0.000000
 12         -0.000005    0.000012    0.000924    0.000001   -0.000007   -0.000000    0.000000    0.000000   -0.000000    0.000000
            -0.000000    0.959283    0.000000   -0.000000   -0.000000
 13          0.000005    0.000006   -0.000002    0.000914   -0.000135    0.000000    0.000000    0.000000   -0.000000    0.000000
             0.000000    0.000000    0.959283   -0.000000    0.000000
 14          0.000004   -0.000007    0.000007    0.000135    0.000914    0.000000   -0.000000   -0.000000    0.000000   -0.000000
            -0.000000   -0.000000   -0.000000    0.959284   -0.000000
 15          0.000000   -0.000000    0.000000    0.000000    0.000000    0.000811   -0.000000   -0.000000    0.000000   -0.000000
             0.000000   -0.000000    0.000000   -0.000000    0.959043


 RESULTS FOR STATE 1.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.95476443 (fixed)   0.95669033 (relaxed)   0.95662283 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00078493   -0.00161191   -0.75172115
 Singles      0.01658917   -0.05701384   -0.06549691
 Pairs        0.07537012   -0.00000000   -0.06054575
 Total        1.09274422   -0.05862576   -0.87776380
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.30445720
 Nuclear energy                         0.00000000
 Kinetic energy                        83.46011614
 One electron energy                 -376.01087623
 Two electron energy                  161.82807891
 Virial quotient                       -2.56628923
 Correlation energy                    -0.87834012
 !MRCI STATE 1.1 Energy              -214.182797319797

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.26425829 (Davidson, fixed reference)
 Cluster corrected energies          -214.26412286 (Davidson, relaxed reference)
 Cluster corrected energies          -214.26425829 (Davidson, rotated reference)

 Cluster corrected energies          -214.26286703 (Pople, fixed reference)
 Cluster corrected energies          -214.26272324 (Pople, relaxed reference)
 Cluster corrected energies          -214.26286703 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.95466686 (fixed)   0.95669029 (relaxed)   0.95662280 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00078493   -0.00161192   -0.75172092
 Singles      0.01658941   -0.05701403   -0.06549714
 Pairs        0.07536996    0.00000000   -0.06054573
 Total        1.09274429   -0.05862595   -0.87776380
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.30445720
 Nuclear energy                         0.00000000
 Kinetic energy                        83.46010463
 One electron energy                 -376.01085652
 Two electron energy                  161.82805920
 Virial quotient                       -2.56628959
 Correlation energy                    -0.87834012
 !MRCI STATE 2.1 Energy              -214.182797318989

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.26425835 (Davidson, fixed reference)
 Cluster corrected energies          -214.26412292 (Davidson, relaxed reference)
 Cluster corrected energies          -214.26425835 (Davidson, rotated reference)

 Cluster corrected energies          -214.26286709 (Pople, fixed reference)
 Cluster corrected energies          -214.26272331 (Pople, relaxed reference)
 Cluster corrected energies          -214.26286709 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.95467647 (fixed)   0.95669032 (relaxed)   0.95662282 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00078492   -0.00161191   -0.75172108
 Singles      0.01658921   -0.05701389   -0.06549693
 Pairs        0.07537011   -0.00000000   -0.06054579
 Total        1.09274424   -0.05862581   -0.87776380
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.30445720
 Nuclear energy                         0.00000000
 Kinetic energy                        83.46011588
 One electron energy                 -376.01087705
 Two electron energy                  161.82807973
 Virial quotient                       -2.56628924
 Correlation energy                    -0.87834012
 !MRCI STATE 3.1 Energy              -214.182797318536

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.26425830 (Davidson, fixed reference)
 Cluster corrected energies          -214.26412287 (Davidson, relaxed reference)
 Cluster corrected energies          -214.26425830 (Davidson, rotated reference)

 Cluster corrected energies          -214.26286704 (Pople, fixed reference)
 Cluster corrected energies          -214.26272325 (Pople, relaxed reference)
 Cluster corrected energies          -214.26286704 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.86583070 (fixed)   0.95669026 (relaxed)   0.95662277 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00078492   -0.00161191   -0.75172083
 Singles      0.01658941   -0.05701409   -0.06549714
 Pairs        0.07537003    0.00000002   -0.06054583
 Total        1.09274436   -0.05862599   -0.87776380
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.30445720
 Nuclear energy                         0.00000000
 Kinetic energy                        83.46011408
 One electron energy                 -376.01086610
 Two electron energy                  161.82806879
 Virial quotient                       -2.56628929
 Correlation energy                    -0.87834012
 !MRCI STATE 4.1 Energy              -214.182797317689

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.26425841 (Davidson, fixed reference)
 Cluster corrected energies          -214.26412298 (Davidson, relaxed reference)
 Cluster corrected energies          -214.26425841 (Davidson, rotated reference)

 Cluster corrected energies          -214.26286716 (Pople, fixed reference)
 Cluster corrected energies          -214.26272337 (Pople, relaxed reference)
 Cluster corrected energies          -214.26286716 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.86581353 (fixed)   0.95669026 (relaxed)   0.95662276 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00078492   -0.00161191   -0.75172075
 Singles      0.01658941   -0.05701408   -0.06549715
 Pairs        0.07537005   -0.00000007   -0.06054590
 Total        1.09274438   -0.05862606   -0.87776380
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.30445719
 Nuclear energy                         0.00000000
 Kinetic energy                        83.46011435
 One electron energy                 -376.01086656
 Two electron energy                  161.82806924
 Virial quotient                       -2.56628929
 Correlation energy                    -0.87834012
 !MRCI STATE 5.1 Energy              -214.182797316288

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.26425842 (Davidson, fixed reference)
 Cluster corrected energies          -214.26412300 (Davidson, relaxed reference)
 Cluster corrected energies          -214.26425842 (Davidson, rotated reference)

 Cluster corrected energies          -214.26286717 (Pople, fixed reference)
 Cluster corrected energies          -214.26272338 (Pople, relaxed reference)
 Cluster corrected energies          -214.26286717 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Coefficient of reference function:   C(0) = 0.95543921 (fixed)   0.95760720 (relaxed)   0.95742523 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00093678   -0.00141250   -0.82381660
 Singles      0.00953273   -0.04103630   -0.04522812
 Pairs        0.08044385    0.06758180   -0.00230605
 Total        1.09091336    0.02513300   -0.87135076
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.27467633
 Nuclear energy                         0.00000000
 Kinetic energy                        83.44476373
 One electron energy                 -375.72357095
 Two electron energy                  161.57699886
 Virial quotient                       -2.56632726
 Correlation energy                    -0.87189576
 !MRCI STATE 6.1 Energy              -214.146572098292

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.22583907 (Davidson, fixed reference)
 Cluster corrected energies          -214.22547762 (Davidson, relaxed reference)
 Cluster corrected energies          -214.22583907 (Davidson, rotated reference)

 Cluster corrected energies          -214.22436191 (Pople, fixed reference)
 Cluster corrected energies          -214.22397943 (Pople, relaxed reference)
 Cluster corrected energies          -214.22436191 (Pople, rotated reference)



 RESULTS FOR STATE 7.1
 =====================

 Coefficient of reference function:   C(0) = 0.95959478 (fixed)   0.95970743 (relaxed)   0.95959478 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00102910   -0.00201102   -0.73664180
 Singles      0.01489205   -0.05490907   -0.06227857
 Pairs        0.07006489   -0.00000000   -0.05509256
 Total        1.08598605   -0.05692010   -0.85401292
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.17401647
 Nuclear energy                         0.00000000
 Kinetic energy                        83.19430665
 One electron energy                 -371.57552677
 Two electron energy                  157.54749738
 Virial quotient                       -2.57262832
 Correlation energy                    -0.85401292
 !MRCI STATE 7.1 Energy              -214.028029394804

 Properties without orbital relaxation:

 !MRCI STATE 7.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.10146259 (Davidson, fixed reference)
 Cluster corrected energies          -214.10124489 (Davidson, relaxed reference)
 Cluster corrected energies          -214.10146259 (Davidson, rotated reference)

 Cluster corrected energies          -214.09978810 (Pople, fixed reference)
 Cluster corrected energies          -214.09955963 (Pople, relaxed reference)
 Cluster corrected energies          -214.09978810 (Pople, rotated reference)



 RESULTS FOR STATE 8.1
 =====================

 Maximum overlap with reference state  9

 Coefficient of reference function:   C(0) = 0.95959471 (fixed)   0.95970738 (relaxed)   0.95959473 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00102910   -0.00201102   -0.73664165
 Singles      0.01489209   -0.05490914   -0.06227862
 Pairs        0.07006496   -0.00000000   -0.05509264
 Total        1.08598615   -0.05692017   -0.85401291
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.17401647
 Nuclear energy                         0.00000000
 Kinetic energy                        83.19430596
 One electron energy                 -371.57552419
 Two electron energy                  157.54749481
 Virial quotient                       -2.57262834
 Correlation energy                    -0.85401291
 !MRCI STATE 8.1 Energy              -214.028029382548

 Properties without orbital relaxation:

 !MRCI STATE 8.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.10146267 (Davidson, fixed reference)
 Cluster corrected energies          -214.10124496 (Davidson, relaxed reference)
 Cluster corrected energies          -214.10146267 (Davidson, rotated reference)

 Cluster corrected energies          -214.09978818 (Pople, fixed reference)
 Cluster corrected energies          -214.09955971 (Pople, relaxed reference)
 Cluster corrected energies          -214.09978818 (Pople, rotated reference)



 RESULTS FOR STATE 9.1
 =====================

 Maximum overlap with reference state  8

 Coefficient of reference function:   C(0) = 0.95959475 (fixed)   0.95970742 (relaxed)   0.95959478 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00102910   -0.00201102   -0.73664176
 Singles      0.01489205   -0.05490908   -0.06227857
 Pairs        0.07006490    0.00000000   -0.05509256
 Total        1.08598606   -0.05692010   -0.85401289
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.17401647
 Nuclear energy                         0.00000000
 Kinetic energy                        83.19430397
 One electron energy                 -371.57552339
 Two electron energy                  157.54749403
 Virial quotient                       -2.57262840
 Correlation energy                    -0.85401289
 !MRCI STATE 9.1 Energy              -214.028029362468

 Properties without orbital relaxation:

 !MRCI STATE 9.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.10146256 (Davidson, fixed reference)
 Cluster corrected energies          -214.10124485 (Davidson, relaxed reference)
 Cluster corrected energies          -214.10146256 (Davidson, rotated reference)

 Cluster corrected energies          -214.09978807 (Pople, fixed reference)
 Cluster corrected energies          -214.09955960 (Pople, relaxed reference)
 Cluster corrected energies          -214.09978807 (Pople, rotated reference)



 RESULTS FOR STATE 10.1
 ======================

 Maximum overlap with reference state 13

 Coefficient of reference function:   C(0) = 0.95734127 (fixed)   0.95940031 (relaxed)   0.95928280 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00103727   -0.00200993   -0.73921510
 Singles      0.01479665   -0.05494899   -0.06223565
 Pairs        0.07085861   -0.00000000   -0.05590846
 Total        1.08669254   -0.05695892   -0.85735921
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.15871471
 Nuclear energy                         0.00000000
 Kinetic energy                        83.23301151
 One electron energy                 -371.83950857
 Two electron energy                  157.82401096
 Virial quotient                       -2.57128144
 Correlation energy                    -0.85678289
 !MRCI STATE 10.1 Energy             -214.015497602624

 Properties without orbital relaxation:

 !MRCI STATE 10.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.08977428 (Davidson, fixed reference)
 Cluster corrected energies          -214.08954622 (Davidson, relaxed reference)
 Cluster corrected energies          -214.08977428 (Davidson, rotated reference)

 Cluster corrected energies          -214.08812481 (Pople, fixed reference)
 Cluster corrected energies          -214.08788518 (Pople, relaxed reference)
 Cluster corrected energies          -214.08812481 (Pople, rotated reference)



 RESULTS FOR STATE 11.1
 ======================

 Coefficient of reference function:   C(0) = 0.95734180 (fixed)   0.95940087 (relaxed)   0.95928334 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00103729   -0.00200992   -0.73921465
 Singles      0.01479743   -0.05495036   -0.06223689
 Pairs        0.07085659    0.00000000   -0.05590762
 Total        1.08669131   -0.05696028   -0.85735916
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.15871472
 Nuclear energy                         0.00000000
 Kinetic energy                        83.23308470
 One electron energy                 -371.83949549
 Two electron energy                  157.82399793
 Virial quotient                       -2.57127918
 Correlation energy                    -0.85678284
 !MRCI STATE 11.1 Energy             -214.015497557954

 Properties without orbital relaxation:

 !MRCI STATE 11.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.08977319 (Davidson, fixed reference)
 Cluster corrected energies          -214.08954509 (Davidson, relaxed reference)
 Cluster corrected energies          -214.08977319 (Davidson, rotated reference)

 Cluster corrected energies          -214.08812366 (Pople, fixed reference)
 Cluster corrected energies          -214.08788400 (Pople, relaxed reference)
 Cluster corrected energies          -214.08812366 (Pople, rotated reference)



 RESULTS FOR STATE 12.1
 ======================

 Coefficient of reference function:   C(0) = 0.95734132 (fixed)   0.95940038 (relaxed)   0.95928285 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00103731   -0.00200993   -0.73921530
 Singles      0.01479649   -0.05494882   -0.06223544
 Pairs        0.07085862   -0.00000000   -0.05590839
 Total        1.08669242   -0.05695875   -0.85735913
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.15871472
 Nuclear energy                         0.00000000
 Kinetic energy                        83.23300987
 One electron energy                 -371.83950991
 Two electron energy                  157.82401239
 Virial quotient                       -2.57128149
 Correlation energy                    -0.85678281
 !MRCI STATE 12.1 Energy             -214.015497528229

 Properties without orbital relaxation:

 !MRCI STATE 12.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.08977410 (Davidson, fixed reference)
 Cluster corrected energies          -214.08954600 (Davidson, relaxed reference)
 Cluster corrected energies          -214.08977410 (Davidson, rotated reference)

 Cluster corrected energies          -214.08812462 (Pople, fixed reference)
 Cluster corrected energies          -214.08788496 (Pople, relaxed reference)
 Cluster corrected energies          -214.08812462 (Pople, rotated reference)



 RESULTS FOR STATE 13.1
 ======================

 Maximum overlap with reference state 14

 Coefficient of reference function:   C(0) = 0.88824177 (fixed)   0.95940098 (relaxed)   0.95928345 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00103730   -0.00200992   -0.73921867
 Singles      0.01479725   -0.05495011   -0.06223646
 Pairs        0.07085651    0.00000427   -0.05590369
 Total        1.08669106   -0.05695576   -0.85735882
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.15871472
 Nuclear energy                         0.00000000
 Kinetic energy                        83.23307527
 One electron energy                 -371.83949690
 Two electron energy                  157.82399969
 Virial quotient                       -2.57127946
 Correlation energy                    -0.85678249
 !MRCI STATE 13.1 Energy             -214.015497211965

 Properties without orbital relaxation:

 !MRCI STATE 13.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.08977260 (Davidson, fixed reference)
 Cluster corrected energies          -214.08954449 (Davidson, relaxed reference)
 Cluster corrected energies          -214.08977260 (Davidson, rotated reference)

 Cluster corrected energies          -214.08812305 (Pople, fixed reference)
 Cluster corrected energies          -214.08788339 (Pople, relaxed reference)
 Cluster corrected energies          -214.08812305 (Pople, rotated reference)



 RESULTS FOR STATE 14.1
 ======================

 Maximum overlap with reference state 10

 Coefficient of reference function:   C(0) = 0.88824182 (fixed)   0.95940105 (relaxed)   0.95928350 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00103734   -0.00200992   -0.73921128
 Singles      0.01479706   -0.05494992   -0.06223619
 Pairs        0.07085655   -0.00000398   -0.05591126
 Total        1.08669094   -0.05696382   -0.85735873
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.15871472
 Nuclear energy                         0.00000000
 Kinetic energy                        83.23307273
 One electron energy                 -371.83949838
 Two electron energy                  157.82400125
 Virial quotient                       -2.57127954
 Correlation energy                    -0.85678240
 !MRCI STATE 14.1 Energy             -214.015497124982

 Properties without orbital relaxation:

 !MRCI STATE 14.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.08977240 (Davidson, fixed reference)
 Cluster corrected energies          -214.08954426 (Davidson, relaxed reference)
 Cluster corrected energies          -214.08977240 (Davidson, rotated reference)

 Cluster corrected energies          -214.08812285 (Pople, fixed reference)
 Cluster corrected energies          -214.08788315 (Pople, relaxed reference)
 Cluster corrected energies          -214.08812285 (Pople, rotated reference)



 RESULTS FOR STATE 15.1
 ======================

 Coefficient of reference function:   C(0) = 0.95694820 (fixed)   0.95917179 (relaxed)   0.95904343 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00103652   -0.00194790   -0.00383590
 Singles      0.01412948   -0.05275535   -0.05967531
 Pairs        0.07206907   -0.80246457   -0.79498938
 Total        1.08723508   -0.85716782   -0.85850059
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.14766987
 Nuclear energy                         0.00000000
 Kinetic energy                        83.25705239
 One electron energy                 -372.01046869
 Two electron energy                  158.00484323
 Virial quotient                       -2.57042039
 Correlation energy                    -0.85795559
 !MRCI STATE 15.1 Energy             -214.005625463297

 Properties without orbital relaxation:

 !MRCI STATE 15.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.08046928 (Davidson, fixed reference)
 Cluster corrected energies          -214.08021962 (Davidson, relaxed reference)
 Cluster corrected energies          -214.08046928 (Davidson, rotated reference)

 Cluster corrected energies          -214.07884148 (Pople, fixed reference)
 Cluster corrected energies          -214.07857893 (Pople, relaxed reference)
 Cluster corrected energies          -214.07884148 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       86.94       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       7     9962.00       700     1000      520     2100     2140     5201     5101   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *     32591.39  16455.59  16117.57      8.22      1.64      8.10
 REAL TIME  *     33429.39 SEC
 DISK USED  *         9.81 GB (local),      119.01 GB (total)
 SF USED    *        51.93 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(13)    =      -214.26425829  AU                              
 SETTING HLSDIAG(14)    =      -214.26425835  AU                              
 SETTING HLSDIAG(15)    =      -214.26425830  AU                              
 SETTING HLSDIAG(16)    =      -214.26425841  AU                              
 SETTING HLSDIAG(17)    =      -214.26425842  AU                              
 SETTING HLSDIAG(18)    =      -214.22583907  AU                              
 SETTING HLSDIAG(19)    =      -214.10146259  AU                              
 SETTING HLSDIAG(20)    =      -214.10146267  AU                              
 SETTING HLSDIAG(21)    =      -214.10146256  AU                              
 SETTING HLSDIAG(22)    =      -214.08977428  AU                              
 SETTING HLSDIAG(23)    =      -214.08977319  AU                              
 SETTING HLSDIAG(24)    =      -214.08977410  AU                              
 SETTING HLSDIAG(25)    =      -214.08977260  AU                              
 SETTING HLSDIAG(26)    =      -214.08977240  AU                              
 SETTING HLSDIAG(27)    =      -214.08046928  AU                              


         HLSDIAG
    -214.2903309
    -214.2903309
    -214.2903309
    -214.0978614
    -214.0978609
    -214.0978612
    -214.0978607
    -214.0978610
    -214.0953366
    -214.0953365
    -214.0953364
    -214.0925863
    -214.2642583
    -214.2642584
    -214.2642583
    -214.2642584
    -214.2642584
    -214.2258391
    -214.1014626
    -214.1014627
    -214.1014626
    -214.0897743
    -214.0897732
    -214.0897741
    -214.0897726
    -214.0897724
    -214.0804693
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Diagonal elements of H will be replaced by values from variable HLSDIAG


   ******************************
   *** Spin-orbit calculation ***
   ******************************


   Spin-orbit matrix elements
   ==========================

 Wavefunction restored from record  5201.2  Symmetry=1  S= 1.0  NSTATE=  12

 Original energies:   -214.212522   -214.212522   -214.212522   -214.024380   -214.024380   -214.024380   -214.024380   -214.024380
                      -214.021832   -214.021832   -214.021832   -214.018961
 Replaced energies:   -214.290331   -214.290331   -214.290331   -214.097861   -214.097861   -214.097861   -214.097861   -214.097861
                      -214.095337   -214.095337   -214.095336   -214.092586

 Wavefunction restored from record  5101.2  Symmetry=1  S= 0.0  NSTATE=  15

 Original energies:   -214.182797   -214.182797   -214.182797   -214.182797   -214.182797   -214.146572   -214.028029   -214.028029
                      -214.028029   -214.015498   -214.015498   -214.015498   -214.015497   -214.015497   -214.005625
 Replaced energies:   -214.264258   -214.264258   -214.264258   -214.264258   -214.264258   -214.225839   -214.101463   -214.101463
                      -214.101463   -214.089774   -214.089773   -214.089774   -214.089773   -214.089772   -214.080469



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=  -214.29033092

 Wigner-Eckart theorem used for 10 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00    1144.84       3.71       0.00      -0.00     260.95      -0.03      -0.00       0.04    -229.33

    2   2.1  1.0  1.0       0.00       0.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                        -1144.84       0.00       0.00    -260.95       0.97      -0.00      -0.05      -0.00     229.34       0.04

    3   3.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -3.71      -0.00       0.00      -0.85    -300.75       0.00      18.40       0.00       0.74       0.00

    4   4.1  1.0  1.0       0.00       0.00       0.00   42242.18       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00     260.95       0.85      -0.00      -0.00     673.39      -0.07      -0.03      -0.10     582.52

    5   5.1  1.0  1.0       0.00       0.00       0.00       0.00   42242.28       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.97     300.75       0.00       0.00       0.00       0.02     -82.26       0.00      -0.00

    6   6.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00   42242.21       0.00       0.00       0.00       0.00
                         -260.95       0.00      -0.00    -673.39      -0.00       0.00       0.01      -0.14    -582.50      -0.10

    7   7.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00   42242.33       0.00       0.00       0.00
                            0.03       0.05     -18.40       0.07      -0.02      -0.01       0.00   -1344.27       0.06      -0.01

    8   8.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00   42242.26       0.00       0.00
                            0.00       0.00      -0.00       0.03      82.26       0.14    1344.27      -0.00       0.00       0.00

    9   9.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   42796.31       0.00
                           -0.04    -229.34      -0.74       0.10      -0.00     582.50      -0.06      -0.00       0.00     701.89

   10  10.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   42796.32
                          229.33      -0.04      -0.00    -582.52       0.00       0.10       0.01      -0.00    -701.89      -0.00

   11  11.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00       0.00    -671.35       0.00      41.08       0.01      -0.00       0.00

   12  12.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       1.37    -423.36      -0.00      -0.00      -0.00       0.00      -0.00       0.00       0.00

   13   1.1  1.0  0.0       0.00      -2.62     809.53      -0.00       0.00      -0.00       0.04    -184.52       0.00       0.00
                           -0.00       0.00       0.00       0.00     -95.07       0.02     190.68       0.04       0.00       0.00

   14   2.1  1.0  0.0       2.62      -0.00       0.00      -0.60    -117.61      -0.02    -177.67      -0.03      -0.53      -0.00
                           -0.00      -0.00    -809.53      -0.00       0.00       0.60       0.04    -184.52      -0.00       0.53

   15   3.1  1.0  0.0    -809.53      -0.00      -0.00     184.52      -0.38      -0.00      -0.58      -0.00     162.16       0.03
                           -0.00     809.53       0.00       0.00       0.00    -184.52       0.02      -0.60       0.03    -162.17

   16   4.1  1.0  0.0       0.00       0.60    -184.52       0.00      -0.00      -0.01      -0.09     476.16       0.00       0.01
                           -0.00       0.00      -0.00       0.00    -852.27      -0.04    -424.90      -0.08      -0.01      -0.00

   17   5.1  1.0  0.0      -0.00     117.61       0.38       0.00       0.00     794.11      -0.08      -0.00      -0.05     262.54
                           95.07      -0.00      -0.00     852.27       0.00       0.00      -0.02      -0.00     212.22       0.04

   18   6.1  1.0  0.0       0.00       0.02       0.00       0.01    -794.11      -0.00     525.65       0.10      -0.00       0.04
                           -0.02      -0.60     184.52       0.04      -0.00      -0.00      -0.09     476.16      -0.04      -0.00

   19   7.1  1.0  0.0      -0.04     177.67       0.58       0.09       0.08    -525.65       0.00      -0.01      -0.15     396.59
                         -190.68      -0.04      -0.02     424.90       0.02       0.09       0.00      -0.05    -425.65      -0.15

   20   8.1  1.0  0.0     184.52       0.03       0.00    -476.16       0.00      -0.10       0.01       0.00     411.90       0.15
                           -0.04     184.52       0.60       0.08       0.00    -476.16       0.05       0.00      -0.15     411.89

   21   9.1  1.0  0.0      -0.00       0.53    -162.16      -0.00       0.05       0.00       0.15    -411.90      -0.00      -0.00
                           -0.00       0.00      -0.03       0.01    -212.22       0.04     425.65       0.15      -0.00      -0.00

   22  10.1  1.0  0.0      -0.00       0.00      -0.03      -0.01    -262.54      -0.04    -396.59      -0.15       0.00       0.00
                           -0.00      -0.53     162.17       0.00      -0.04       0.00       0.15    -411.89       0.00       0.00

   23  11.1  1.0  0.0     162.17       0.00      -0.00     411.89      -0.00      -0.00      -0.01      -0.00    -496.31      -0.09
                            0.00    -162.16      -0.53      -0.00       0.00    -411.90       0.04      -0.00      -0.09     496.31

   24  12.1  1.0  0.0      -0.00     299.36       0.97       0.00       0.00      -0.02      -0.00      -0.00      -0.12     675.50
                          299.36       0.00       0.00      -0.01       0.00      -0.00      -0.00      -0.00     675.50       0.12

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

   37   1.1  0.0  0.0    -800.28      -6.49      -4.36     201.72       0.00       0.26      -0.00       1.09     140.33       1.17
                            3.78    -800.27      -2.59      -2.33      -1.96     201.72      -1.00      -0.00      -0.69     140.33

   38   2.1  0.0  0.0      -0.05       0.45      10.60       0.01     336.38       4.17    -222.65      -2.71       0.01      -0.09
                            8.07       2.54    -800.19       2.28       4.78       0.01       2.42    -201.70      -1.41       0.01

   39   3.1  0.0  0.0      -4.32      -5.82     800.19       1.09      -4.43      -2.81       2.97    -201.70       0.76       0.57
                           -3.97      -4.35      10.53      -2.62     361.02       1.11     179.98       2.69       0.70       0.76

   40   4.1  0.0  0.0       4.82    -740.17      -1.33      -1.21      -1.96     241.54       1.27      -0.27      -0.87     129.79
                          849.23       4.80       4.67    -159.07       0.48      -1.21       0.24       1.17    -148.91      -0.87

   41   5.1  0.0  0.0       2.98    -553.25      -7.83      -0.75       2.94    -323.12      -1.91       1.52      -0.54      97.01
                         -364.32       3.01      -6.98    -370.74      -2.72      -0.75      -1.35      -1.76      63.88      -0.51

   42   6.1  0.0  0.0       0.00   -1314.79      -4.26       0.00       0.00      -0.00      -0.00      -0.00      -0.03     184.81
                        -1314.80      -0.00       0.00      -0.00       0.00      -0.00      -0.00      -0.00     184.81       0.03

   43   7.1  0.0  0.0     185.72       0.00      -0.00    -475.44       0.00      -0.00       0.01       0.00     410.63       0.07
                            0.00    -185.72      -0.60      -0.00      -0.00     475.44      -0.05      -0.00       0.07    -410.62

   44   8.1  0.0  0.0       0.00      -0.00       0.04       0.01     303.03       0.05     457.78      -0.03       0.00      -0.00
                            0.00      -0.60     185.72       0.00      -0.06       0.00       0.03     475.43      -0.00      -0.00

   45   9.1  0.0  0.0      -0.00       0.60    -185.72       0.00       0.07       0.00       0.02     475.44       0.00       0.00
                            0.00      -0.00       0.04      -0.01     244.96      -0.05    -491.32       0.02      -0.00      -0.00

   46  10.1  0.0  0.0     189.86      -0.00      -0.01     406.03      -0.00      -0.02      -0.01      -0.03    -502.31      -0.09
                            0.01     189.86       0.62      -0.01       0.05     406.04      -0.02       0.00       0.07    -502.31

   47  11.1  0.0  0.0       0.00      -0.00      -0.00      -0.01     677.16      -0.04    -448.23      -0.09      -0.00       0.00
                           -0.00      -0.62     189.85       0.01       0.00       0.00       0.08    -406.03       0.00       0.00

   48  12.1  0.0  0.0      -0.01       0.61    -189.86      -0.03      -0.00      -0.03       0.08    -406.04       0.03       0.01
                            0.01      -0.01      -0.00       0.00     726.75       0.01     362.32       0.07      -0.02       0.03

   49  13.1  0.0  0.0       0.00     154.48       0.49       0.01      -0.00     576.18      -0.06      -0.02       0.06    -408.72
                         -211.95       0.00      -0.00    -207.50       0.03       0.01       0.02       0.00     560.76       0.09

   50  14.1  0.0  0.0      -0.00     155.54       0.51      -0.01       0.01    -572.25       0.06       0.01       0.08    -411.54
                           56.02      -0.00       0.00    -785.11      -0.01      -0.01       0.01      -0.00    -148.21      -0.02

   51  15.1  0.0  0.0      -0.00     391.92       1.27      -0.00      -0.00       0.02       0.00       0.00       0.15    -836.44
                          391.92       0.00      -0.00       0.00      -0.00      -0.00       0.00      -0.00    -836.44      -0.15


   Nr   State  S   Sz       11         12         13         14         15         16         17         18         19         20

    1   1.1  1.0  1.0       0.00       0.00       0.00       2.62    -809.53       0.00      -0.00       0.00      -0.04     184.52
                           -0.00      -0.00       0.00       0.00       0.00       0.00     -95.07       0.02     190.68       0.04

    2   2.1  1.0  1.0       0.00       0.00      -2.62      -0.00      -0.00       0.60     117.61       0.02     177.67       0.03
                            0.00      -1.37      -0.00       0.00    -809.53      -0.00       0.00       0.60       0.04    -184.52

    3   3.1  1.0  1.0       0.00       0.00     809.53       0.00      -0.00    -184.52       0.38       0.00       0.58       0.00
                            0.00     423.36      -0.00     809.53      -0.00       0.00       0.00    -184.52       0.02      -0.60

    4   4.1  1.0  1.0       0.00       0.00      -0.00      -0.60     184.52       0.00       0.00       0.01       0.09    -476.16
                           -0.00       0.00      -0.00       0.00      -0.00      -0.00    -852.27      -0.04    -424.90      -0.08

    5   5.1  1.0  1.0       0.00       0.00       0.00    -117.61      -0.38      -0.00       0.00    -794.11       0.08       0.00
                          671.35       0.00      95.07      -0.00      -0.00     852.27      -0.00       0.00      -0.02      -0.00

    6   6.1  1.0  1.0       0.00       0.00      -0.00      -0.02      -0.00      -0.01     794.11      -0.00    -525.65      -0.10
                           -0.00       0.00      -0.02      -0.60     184.52       0.04      -0.00       0.00      -0.09     476.16

    7   7.1  1.0  1.0       0.00       0.00       0.04    -177.67      -0.58      -0.09      -0.08     525.65       0.00       0.01
                          -41.08      -0.00    -190.68      -0.04      -0.02     424.90       0.02       0.09      -0.00      -0.05

    8   8.1  1.0  1.0       0.00       0.00    -184.52      -0.03      -0.00     476.16      -0.00       0.10      -0.01       0.00
                           -0.01       0.00      -0.04     184.52       0.60       0.08       0.00    -476.16       0.05      -0.00

    9   9.1  1.0  1.0       0.00       0.00       0.00      -0.53     162.16       0.00      -0.05      -0.00      -0.15     411.90
                            0.00      -0.00      -0.00       0.00      -0.03       0.01    -212.22       0.04     425.65       0.15

   10  10.1  1.0  1.0       0.00       0.00       0.00      -0.00       0.03       0.01     262.54       0.04     396.59       0.15
                           -0.00      -0.00      -0.00      -0.53     162.17       0.00      -0.04       0.00       0.15    -411.89

   11  11.1  1.0  1.0   42796.35       0.00    -162.17      -0.00       0.00    -411.89       0.00       0.00       0.01       0.00
                            0.00     955.32       0.00    -162.16      -0.53      -0.00       0.00    -411.90       0.04      -0.00

   12  12.1  1.0  1.0       0.00   43399.93       0.00    -299.36      -0.97      -0.00      -0.00       0.02       0.00       0.00
                         -955.32      -0.00     299.36       0.00       0.00      -0.01       0.00      -0.00      -0.00      -0.00

   13   1.1  1.0  0.0    -162.17       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00    -299.36       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   14   2.1  1.0  0.0      -0.00    -299.36       0.00       0.01       0.00       0.00       0.00       0.00       0.00       0.00
                          162.16      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   15   3.1  1.0  0.0       0.00      -0.97       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.53      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   16   4.1  1.0  0.0    -411.89      -0.00       0.00       0.00       0.00   42242.18       0.00       0.00       0.00       0.00
                            0.00       0.01      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00

   17   5.1  1.0  0.0       0.00      -0.00       0.00       0.00       0.00       0.00   42242.28       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00

   18   6.1  1.0  0.0       0.00       0.02       0.00       0.00       0.00       0.00       0.00   42242.21       0.00       0.00
                          411.90       0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00

   19   7.1  1.0  0.0       0.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00   42242.33       0.00
                           -0.04       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00

   20   8.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   42242.26
                            0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   21   9.1  1.0  0.0     496.31       0.12       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.09    -675.50      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   22  10.1  1.0  0.0       0.09    -675.50       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -496.31      -0.12      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   23  11.1  1.0  0.0      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   24  12.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   25   1.1  1.0 -1.0       0.00       0.00       0.00      -2.62     809.53      -0.00       0.00      -0.00       0.04    -184.52
                           -0.00      -0.00      -0.00       0.00       0.00       0.00     -95.07       0.02     190.68       0.04

   26   2.1  1.0 -1.0       0.00       0.00       2.62      -0.00       0.00      -0.60    -117.61      -0.02    -177.67      -0.03
                           -0.00      -0.00      -0.00      -0.00    -809.53      -0.00       0.00       0.60       0.04    -184.52

   27   3.1  1.0 -1.0       0.00       0.00    -809.53      -0.00      -0.00     184.52      -0.38      -0.00      -0.58      -0.00
                           -0.00      -0.00      -0.00     809.53       0.00       0.00       0.00    -184.52       0.02      -0.60

   28   4.1  1.0 -1.0       0.00       0.00       0.00       0.60    -184.52       0.00      -0.00      -0.01      -0.09     476.16
                           -0.00      -0.00      -0.00       0.00      -0.00       0.00    -852.27      -0.04    -424.90      -0.08

   29   5.1  1.0 -1.0       0.00       0.00      -0.00     117.61       0.38       0.00       0.00     794.11      -0.08      -0.00
                           -0.00      -0.00      95.07      -0.00      -0.00     852.27       0.00       0.00      -0.02      -0.00

   30   6.1  1.0 -1.0       0.00       0.00       0.00       0.02       0.00       0.01    -794.11      -0.00     525.65       0.10
                           -0.00      -0.00      -0.02      -0.60     184.52       0.04      -0.00      -0.00      -0.09     476.16

   31   7.1  1.0 -1.0       0.00       0.00      -0.04     177.67       0.58       0.09       0.08    -525.65       0.00      -0.01
                           -0.00      -0.00    -190.68      -0.04      -0.02     424.90       0.02       0.09       0.00      -0.05

   32   8.1  1.0 -1.0       0.00       0.00     184.52       0.03       0.00    -476.16       0.00      -0.10       0.01       0.00
                           -0.00      -0.00      -0.04     184.52       0.60       0.08       0.00    -476.16       0.05       0.00

   33   9.1  1.0 -1.0       0.00       0.00      -0.00       0.53    -162.16      -0.00       0.05       0.00       0.15    -411.90
                           -0.00      -0.00      -0.00       0.00      -0.03       0.01    -212.22       0.04     425.65       0.15

   34  10.1  1.0 -1.0       0.00       0.00      -0.00       0.00      -0.03      -0.01    -262.54      -0.04    -396.59      -0.15
                           -0.00      -0.00      -0.00      -0.53     162.17       0.00      -0.04       0.00       0.15    -411.89

   35  11.1  1.0 -1.0       0.00       0.00     162.17       0.00      -0.00     411.89      -0.00      -0.00      -0.01      -0.00
                           -0.00      -0.00       0.00    -162.16      -0.53      -0.00       0.00    -411.90       0.04      -0.00

   36  12.1  1.0 -1.0       0.00       0.00      -0.00     299.36       0.97       0.00       0.00      -0.02      -0.00      -0.00
                           -0.00      -0.00     299.36       0.00       0.00      -0.01       0.00      -0.00      -0.00      -0.00

   37   1.1  0.0  0.0       0.76       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00      -6.14       3.84       0.01      34.84      -1.49     569.47      -3.56

   38   2.1  0.0  0.0      -1.86      -0.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          140.31      -0.00   -1131.64      15.03     -12.05    -285.24       0.00       3.78       0.04      -2.70

   39   3.1  0.0  0.0    -140.32       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -1.85      -0.00      14.91    1131.62      13.85       3.76       0.19     285.25       3.04       0.26

   40   4.1  0.0  0.0      -0.19       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.82      -0.00       6.58       2.01    -154.23       1.66      -0.21       0.38      -3.32    -566.55

   41   5.1  0.0  0.0       1.06      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            1.23       0.00      -9.89     -12.75    1297.65      -2.49      -0.13      -2.15      -2.11     -67.35

   42   6.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00       6.03   -1859.40       0.00       0.00       0.00       0.00      -0.00

   43   7.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00       0.00    -774.92       0.00      47.41       0.01

   44   8.1  0.0  0.0       0.10     778.33       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          410.63      -0.19    -262.64      -0.06      -0.00    -672.37       0.00      -0.16       0.01       0.00

   45   9.1  0.0  0.0    -410.62       0.19       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.10     778.33      -0.06     262.64       0.85      -0.16      -0.00     672.37      -0.07      -0.00

   46  10.1  0.0  0.0       0.03      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.02      -0.01       0.02      70.14       0.16    1146.29       0.24

   47  11.1  0.0  0.0       0.00      -0.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -502.31      -0.00     268.49      -0.00       0.00    -574.22       0.00       0.00       0.01       0.00

   48  12.1  0.0  0.0     502.31       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.01      -0.00    -268.50      -0.88       0.00      -0.00     574.21      -0.13       0.04

   49  13.1  0.0  0.0       0.02      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.27      81.26       0.00       0.00       0.02       0.24   -1108.28

   50  14.1  0.0  0.0      -0.01      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.97    -299.18      -0.00      -0.00      -0.01       0.04    -301.03

   51  15.1  0.0  0.0      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00      -1.80     554.27      -0.00      -0.00      -0.00      -0.00       0.00


   Nr   State  S   Sz       21         22         23         24         25         26         27         28         29         30

    1   1.1  1.0  1.0      -0.00      -0.00     162.17      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00    -299.36       0.00       0.00       0.00       0.00       0.00       0.00

    2   2.1  1.0  1.0       0.53       0.00       0.00     299.36       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.53     162.16      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

    3   3.1  1.0  1.0    -162.16      -0.03      -0.00       0.97       0.00       0.00       0.00       0.00       0.00       0.00
                            0.03    -162.17       0.53      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

    4   4.1  1.0  1.0      -0.00      -0.01     411.89       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.01      -0.00       0.00       0.01       0.00       0.00       0.00       0.00       0.00       0.00

    5   5.1  1.0  1.0       0.05    -262.54      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          212.22       0.04      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

    6   6.1  1.0  1.0       0.00      -0.04      -0.00      -0.02       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.04      -0.00     411.90       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    7   7.1  1.0  1.0       0.15    -396.59      -0.01      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -425.65      -0.15      -0.04       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    8   8.1  1.0  1.0    -411.90      -0.15      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.15     411.89       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    9   9.1  1.0  1.0      -0.00       0.00    -496.31      -0.12       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.09    -675.50       0.00       0.00       0.00       0.00       0.00       0.00

   10  10.1  1.0  1.0      -0.00       0.00      -0.09     675.50       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00    -496.31      -0.12       0.00       0.00       0.00       0.00       0.00       0.00

   11  11.1  1.0  1.0     496.31       0.09      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.09     496.31      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   12  12.1  1.0  1.0       0.12    -675.50      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          675.50       0.12       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   13   1.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       2.62    -809.53       0.00      -0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     -95.07       0.02

   14   2.1  1.0  0.0       0.00       0.00       0.00       0.00      -2.62      -0.00      -0.00       0.60     117.61       0.02
                            0.00       0.00       0.00       0.00      -0.00       0.00    -809.53      -0.00       0.00       0.60

   15   3.1  1.0  0.0       0.00       0.00       0.00       0.00     809.53       0.00      -0.00    -184.52       0.38       0.00
                            0.00       0.00       0.00       0.00      -0.00     809.53      -0.00       0.00       0.00    -184.52

   16   4.1  1.0  0.0       0.00       0.00       0.00       0.00      -0.00      -0.60     184.52       0.00       0.00       0.01
                            0.00       0.00       0.00       0.00      -0.00       0.00      -0.00      -0.00    -852.27      -0.04

   17   5.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00    -117.61      -0.38      -0.00       0.00    -794.11
                            0.00       0.00       0.00       0.00      95.07      -0.00      -0.00     852.27      -0.00       0.00

   18   6.1  1.0  0.0       0.00       0.00       0.00       0.00      -0.00      -0.02      -0.00      -0.01     794.11      -0.00
                            0.00       0.00       0.00       0.00      -0.02      -0.60     184.52       0.04      -0.00       0.00

   19   7.1  1.0  0.0       0.00       0.00       0.00       0.00       0.04    -177.67      -0.58      -0.09      -0.08     525.65
                            0.00       0.00       0.00       0.00    -190.68      -0.04      -0.02     424.90       0.02       0.09

   20   8.1  1.0  0.0       0.00       0.00       0.00       0.00    -184.52      -0.03      -0.00     476.16      -0.00       0.10
                            0.00       0.00       0.00       0.00      -0.04     184.52       0.60       0.08       0.00    -476.16

   21   9.1  1.0  0.0   42796.31       0.00       0.00       0.00       0.00      -0.53     162.16       0.00      -0.05      -0.00
                            0.00       0.00       0.00       0.00      -0.00       0.00      -0.03       0.01    -212.22       0.04

   22  10.1  1.0  0.0       0.00   42796.32       0.00       0.00       0.00      -0.00       0.03       0.01     262.54       0.04
                           -0.00       0.00       0.00       0.00      -0.00      -0.53     162.17       0.00      -0.04       0.00

   23  11.1  1.0  0.0       0.00       0.00   42796.35       0.00    -162.17      -0.00       0.00    -411.89       0.00       0.00
                           -0.00      -0.00       0.00       0.00       0.00    -162.16      -0.53      -0.00       0.00    -411.90

   24  12.1  1.0  0.0       0.00       0.00       0.00   43399.93       0.00    -299.36      -0.97      -0.00      -0.00       0.02
                           -0.00      -0.00      -0.00       0.00     299.36       0.00       0.00      -0.01       0.00      -0.00

   25   1.1  1.0 -1.0       0.00       0.00    -162.17       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00    -299.36      -0.00   -1144.84      -3.71      -0.00       0.00    -260.95

   26   2.1  1.0 -1.0      -0.53      -0.00      -0.00    -299.36       0.00       0.01       0.00       0.00       0.00       0.00
                           -0.00       0.53     162.16      -0.00    1144.84      -0.00      -0.00     260.95      -0.97       0.00

   27   3.1  1.0 -1.0     162.16       0.03       0.00      -0.97       0.00       0.00       0.00       0.00       0.00       0.00
                            0.03    -162.17       0.53      -0.00       3.71       0.00      -0.00       0.85     300.75      -0.00

   28   4.1  1.0 -1.0       0.00       0.01    -411.89      -0.00       0.00       0.00       0.00   42242.18       0.00       0.00
                           -0.01      -0.00       0.00       0.01       0.00    -260.95      -0.85       0.00       0.00    -673.39

   29   5.1  1.0 -1.0      -0.05     262.54       0.00      -0.00       0.00       0.00       0.00       0.00   42242.28       0.00
                          212.22       0.04      -0.00      -0.00      -0.00       0.97    -300.75      -0.00      -0.00      -0.00

   30   6.1  1.0 -1.0      -0.00       0.04       0.00       0.02       0.00       0.00       0.00       0.00       0.00   42242.21
                           -0.04      -0.00     411.90       0.00     260.95      -0.00       0.00     673.39       0.00      -0.00

   31   7.1  1.0 -1.0      -0.15     396.59       0.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -425.65      -0.15      -0.04       0.00      -0.03      -0.05      18.40      -0.07       0.02       0.01

   32   8.1  1.0 -1.0     411.90       0.15       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.15     411.89       0.00       0.00      -0.00      -0.00       0.00      -0.03     -82.26      -0.14

   33   9.1  1.0 -1.0      -0.00      -0.00     496.31       0.12       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.09    -675.50       0.04     229.34       0.74      -0.10       0.00    -582.50

   34  10.1  1.0 -1.0       0.00       0.00       0.09    -675.50       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00    -496.31      -0.12    -229.33       0.04       0.00     582.52      -0.00      -0.10

   35  11.1  1.0 -1.0    -496.31      -0.09      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.09     496.31       0.00      -0.00      -0.00       0.00       0.00      -0.00     671.35      -0.00

   36  12.1  1.0 -1.0      -0.12     675.50       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          675.50       0.12       0.00       0.00      -0.00      -1.37     423.36       0.00       0.00       0.00

   37   1.1  0.0  0.0       0.00       0.00       0.00       0.00    -800.28      -6.49      -4.36     201.72       0.00       0.26
                           -0.00       1.08      -0.68       0.00      -3.78     800.27       2.59       2.33       1.96    -201.72

   38   2.1  0.0  0.0       0.00       0.00       0.00       0.00      -0.05       0.45      10.60       0.01     336.38       4.17
                          198.43      -2.59       2.12       0.00      -8.07      -2.54     800.19      -2.28      -4.78      -0.01

   39   3.1  0.0  0.0       0.00       0.00       0.00       0.00      -4.32      -5.82     800.19       1.09      -4.43      -2.81
                           -2.58    -198.43      -1.79       0.00       3.97       4.35     -10.53       2.62    -361.02      -1.11

   40   4.1  0.0  0.0       0.00       0.00       0.00       0.00       4.82    -740.17      -1.33      -1.21      -1.96     241.54
                           -1.15      -0.26      27.04      -0.00    -849.23      -4.80      -4.67     159.07      -0.48       1.21

   41   5.1  0.0  0.0       0.00       0.00       0.00       0.00       2.98    -553.25      -7.83      -0.75       2.94    -323.12
                            1.73       1.50    -227.54      -0.00     364.32      -3.01       6.98     370.74       2.72       0.75

   42   6.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00   -1314.79      -4.26       0.00       0.00      -0.00
                           -0.00      -0.00     261.35       0.00    1314.80       0.00      -0.00       0.00      -0.00       0.00

   43   7.1  0.0  0.0       0.00       0.00       0.00       0.00     185.72       0.00      -0.00    -475.44       0.00      -0.00
                            0.00      -0.00      -0.00    1100.74      -0.00     185.72       0.60       0.00       0.00    -475.44

   44   8.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00      -0.00       0.04       0.01     303.03       0.05
                         -580.72      -0.24      -0.00      -0.00      -0.00       0.60    -185.72      -0.00       0.06      -0.00

   45   9.1  0.0  0.0       0.00       0.00       0.00       0.00      -0.00       0.60    -185.72       0.00       0.07       0.00
                           -0.24     580.72       0.00       0.00      -0.00       0.00      -0.04       0.01    -244.96       0.05

   46  10.1  0.0  0.0       0.00       0.00       0.00       0.00     189.86      -0.00      -0.01     406.03      -0.00      -0.02
                            0.00       0.05       0.02       0.01      -0.01    -189.86      -0.62       0.01      -0.05    -406.04

   47  11.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.01     677.16      -0.04
                         -710.37      -0.13      -0.01      -0.00       0.00       0.62    -189.85      -0.01      -0.00      -0.00

   48  12.1  0.0  0.0       0.00       0.00       0.00       0.00      -0.01       0.61    -189.86      -0.03      -0.00      -0.03
                           -0.13     710.38       0.02       0.00      -0.01       0.01       0.00      -0.00    -726.75      -0.01

   49  13.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00     154.48       0.49       0.01      -0.00     576.18
                            0.00       0.03    -215.01       0.00     211.95      -0.00       0.00     207.50      -0.03      -0.01

   50  14.1  0.0  0.0       0.00       0.00       0.00       0.00      -0.00     155.54       0.51      -0.01       0.01    -572.25
                           -0.01      -0.01     791.57       0.00     -56.02       0.00      -0.00     785.11       0.01       0.01

   51  15.1  0.0  0.0       0.00       0.00       0.00       0.00      -0.00     391.92       1.27      -0.00      -0.00       0.02
                            0.00       0.00   -1182.91      -0.00    -391.92      -0.00       0.00      -0.00       0.00       0.00


   Nr   State  S   Sz       31         32         33         34         35         36         37         38         39         40

    1   1.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00    -800.28      -0.05      -4.32       4.82
                            0.00       0.00       0.00       0.00       0.00       0.00      -3.78      -8.07       3.97    -849.23

    2   2.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00      -6.49       0.45      -5.82    -740.17
                            0.00       0.00       0.00       0.00       0.00       0.00     800.27      -2.54       4.35      -4.80

    3   3.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00      -4.36      10.60     800.19      -1.33
                            0.00       0.00       0.00       0.00       0.00       0.00       2.59     800.19     -10.53      -4.67

    4   4.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00     201.72       0.01       1.09      -1.21
                            0.00       0.00       0.00       0.00       0.00       0.00       2.33      -2.28       2.62     159.07

    5   5.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00     336.38      -4.43      -1.96
                            0.00       0.00       0.00       0.00       0.00       0.00       1.96      -4.78    -361.02      -0.48

    6   6.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.26       4.17      -2.81     241.54
                            0.00       0.00       0.00       0.00       0.00       0.00    -201.72      -0.01      -1.11       1.21

    7   7.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00      -0.00    -222.65       2.97       1.27
                            0.00       0.00       0.00       0.00       0.00       0.00       1.00      -2.42    -179.98      -0.24

    8   8.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       1.09      -2.71    -201.70      -0.27
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00     201.70      -2.69      -1.17

    9   9.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00     140.33       0.01       0.76      -0.87
                            0.00       0.00       0.00       0.00       0.00       0.00       0.69       1.41      -0.70     148.91

   10  10.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       1.17      -0.09       0.57     129.79
                            0.00       0.00       0.00       0.00       0.00       0.00    -140.33      -0.01      -0.76       0.87

   11  11.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.76      -1.86    -140.32      -0.19
                            0.00       0.00       0.00       0.00       0.00       0.00      -0.00    -140.31       1.85       0.82

   12  12.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.01       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00       0.00       0.00

   13   1.1  1.0  0.0      -0.04     184.52      -0.00      -0.00     162.17      -0.00       0.00       0.00       0.00       0.00
                          190.68       0.04       0.00       0.00      -0.00    -299.36       0.00    1131.64     -14.91      -6.58

   14   2.1  1.0  0.0     177.67       0.03       0.53       0.00       0.00     299.36       0.00       0.00       0.00       0.00
                            0.04    -184.52      -0.00       0.53     162.16      -0.00       6.14     -15.03   -1131.62      -2.01

   15   3.1  1.0  0.0       0.58       0.00    -162.16      -0.03      -0.00       0.97       0.00       0.00       0.00       0.00
                            0.02      -0.60       0.03    -162.17       0.53      -0.00      -3.84      12.05     -13.85     154.23

   16   4.1  1.0  0.0       0.09    -476.16      -0.00      -0.01     411.89       0.00       0.00       0.00       0.00       0.00
                         -424.90      -0.08      -0.01      -0.00       0.00       0.01      -0.01     285.24      -3.76      -1.66

   17   5.1  1.0  0.0       0.08       0.00       0.05    -262.54      -0.00       0.00       0.00       0.00       0.00       0.00
                           -0.02      -0.00     212.22       0.04      -0.00      -0.00     -34.84      -0.00      -0.19       0.21

   18   6.1  1.0  0.0    -525.65      -0.10       0.00      -0.04      -0.00      -0.02       0.00       0.00       0.00       0.00
                           -0.09     476.16      -0.04      -0.00     411.90       0.00       1.49      -3.78    -285.25      -0.38

   19   7.1  1.0  0.0       0.00       0.01       0.15    -396.59      -0.01      -0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.05    -425.65      -0.15      -0.04       0.00    -569.47      -0.04      -3.04       3.32

   20   8.1  1.0  0.0      -0.01       0.00    -411.90      -0.15      -0.00      -0.00       0.00       0.00       0.00       0.00
                            0.05      -0.00      -0.15     411.89       0.00       0.00       3.56       2.70      -0.26     566.55

   21   9.1  1.0  0.0      -0.15     411.90      -0.00       0.00    -496.31      -0.12       0.00       0.00       0.00       0.00
                          425.65       0.15       0.00      -0.00       0.09    -675.50       0.00    -198.43       2.58       1.15

   22  10.1  1.0  0.0     396.59       0.15      -0.00       0.00      -0.09     675.50       0.00       0.00       0.00       0.00
                            0.15    -411.89       0.00      -0.00    -496.31      -0.12      -1.08       2.59     198.43       0.26

   23  11.1  1.0  0.0       0.01       0.00     496.31       0.09      -0.00       0.00       0.00       0.00       0.00       0.00
                            0.04      -0.00      -0.09     496.31      -0.00      -0.00       0.68      -2.12       1.79     -27.04

   24  12.1  1.0  0.0       0.00       0.00       0.12    -675.50      -0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00     675.50       0.12       0.00      -0.00      -0.00      -0.00      -0.00       0.00

   25   1.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00    -800.28      -0.05      -4.32       4.82
                            0.03       0.00      -0.04     229.33       0.00       0.00       3.78       8.07      -3.97     849.23

   26   2.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00      -6.49       0.45      -5.82    -740.17
                            0.05       0.00    -229.34      -0.04      -0.00       1.37    -800.27       2.54      -4.35       4.80

   27   3.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00      -4.36      10.60     800.19      -1.33
                          -18.40      -0.00      -0.74      -0.00      -0.00    -423.36      -2.59    -800.19      10.53       4.67

   28   4.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00     201.72       0.01       1.09      -1.21
                            0.07       0.03       0.10    -582.52       0.00      -0.00      -2.33       2.28      -2.62    -159.07

   29   5.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00     336.38      -4.43      -1.96
                           -0.02      82.26      -0.00       0.00    -671.35      -0.00      -1.96       4.78     361.02       0.48

   30   6.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.26       4.17      -2.81     241.54
                           -0.01       0.14     582.50       0.10       0.00      -0.00     201.72       0.01       1.11      -1.21

   31   7.1  1.0 -1.0   42242.33       0.00       0.00       0.00       0.00       0.00      -0.00    -222.65       2.97       1.27
                           -0.00    1344.27      -0.06       0.01      41.08       0.00      -1.00       2.42     179.98       0.24

   32   8.1  1.0 -1.0       0.00   42242.26       0.00       0.00       0.00       0.00       1.09      -2.71    -201.70      -0.27
                        -1344.27       0.00      -0.00      -0.00       0.01      -0.00      -0.00    -201.70       2.69       1.17

   33   9.1  1.0 -1.0       0.00       0.00   42796.31       0.00       0.00       0.00     140.33       0.01       0.76      -0.87
                            0.06       0.00      -0.00    -701.89      -0.00       0.00      -0.69      -1.41       0.70    -148.91

   34  10.1  1.0 -1.0       0.00       0.00       0.00   42796.32       0.00       0.00       1.17      -0.09       0.57     129.79
                           -0.01       0.00     701.89       0.00       0.00       0.00     140.33       0.01       0.76      -0.87

   35  11.1  1.0 -1.0       0.00       0.00       0.00       0.00   42796.35       0.00       0.76      -1.86    -140.32      -0.19
                          -41.08      -0.01       0.00      -0.00      -0.00    -955.32       0.00     140.31      -1.85      -0.82

   36  12.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00   43399.93       0.00      -0.01       0.00       0.00
                           -0.00       0.00      -0.00      -0.00     955.32       0.00       0.00      -0.00      -0.00      -0.00

   37   1.1  0.0  0.0      -0.00       1.09     140.33       1.17       0.76       0.00    5722.28       0.00       0.00       0.00
                            1.00       0.00       0.69    -140.33      -0.00      -0.00       0.00       0.00       0.00       0.00

   38   2.1  0.0  0.0    -222.65      -2.71       0.01      -0.09      -1.86      -0.01       0.00    5722.27       0.00       0.00
                           -2.42     201.70       1.41      -0.01    -140.31       0.00      -0.00       0.00       0.00       0.00

   39   3.1  0.0  0.0       2.97    -201.70       0.76       0.57    -140.32       0.00       0.00       0.00    5722.28       0.00
                         -179.98      -2.69      -0.70      -0.76       1.85       0.00      -0.00      -0.00       0.00       0.00

   40   4.1  0.0  0.0       1.27      -0.27      -0.87     129.79      -0.19       0.00       0.00       0.00       0.00    5722.25
                           -0.24      -1.17     148.91       0.87       0.82       0.00      -0.00      -0.00      -0.00       0.00

   41   5.1  0.0  0.0      -1.91       1.52      -0.54      97.01       1.06      -0.00       0.00       0.00       0.00       0.00
                            1.35       1.76     -63.88       0.51      -1.23      -0.00      -0.00      -0.00      -0.00      -0.00

   42   6.1  0.0  0.0      -0.00      -0.00      -0.03     184.81       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00    -184.81      -0.03      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   43   7.1  0.0  0.0       0.01       0.00     410.63       0.07       0.00       0.00       0.00       0.00       0.00       0.00
                            0.05       0.00      -0.07     410.62       0.00       0.00      -0.00      -0.00      -0.00      -0.00

   44   8.1  0.0  0.0     457.78      -0.03       0.00      -0.00       0.10     778.33       0.00       0.00       0.00       0.00
                           -0.03    -475.43       0.00       0.00    -410.63       0.19      -0.00      -0.00      -0.00      -0.00

   45   9.1  0.0  0.0       0.02     475.44       0.00       0.00    -410.62       0.19       0.00       0.00       0.00       0.00
                          491.32      -0.02       0.00       0.00      -0.10    -778.33      -0.00      -0.00      -0.00      -0.00

   46  10.1  0.0  0.0      -0.01      -0.03    -502.31      -0.09       0.03      -0.00       0.00       0.00       0.00       0.00
                            0.02      -0.00      -0.07     502.31       0.00       0.00      -0.00      -0.00      -0.00      -0.00

   47  11.1  0.0  0.0    -448.23      -0.09      -0.00       0.00       0.00      -0.01       0.00       0.00       0.00       0.00
                           -0.08     406.03      -0.00      -0.00     502.31       0.00      -0.00      -0.00      -0.00      -0.00

   48  12.1  0.0  0.0       0.08    -406.04       0.03       0.01     502.31       0.00       0.00       0.00       0.00       0.00
                         -362.32      -0.07       0.02      -0.03      -0.00       0.01      -0.00      -0.00      -0.00      -0.00

   49  13.1  0.0  0.0      -0.06      -0.02       0.06    -408.72       0.02      -0.00       0.00       0.00       0.00       0.00
                           -0.02      -0.00    -560.76      -0.09      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   50  14.1  0.0  0.0       0.06       0.01       0.08    -411.54      -0.01      -0.00       0.00       0.00       0.00       0.00
                           -0.01       0.00     148.21       0.02       0.00       0.00      -0.00      -0.00      -0.00      -0.00

   51  15.1  0.0  0.0       0.00       0.00       0.15    -836.44      -0.00      -0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00     836.44       0.15       0.00       0.00      -0.00      -0.00      -0.00      -0.00


   Nr   State  S   Sz       41         42         43         44         45         46         47         48         49         50

    1   1.1  1.0  1.0       2.98       0.00     185.72       0.00      -0.00     189.86       0.00      -0.01       0.00      -0.00
                          364.32    1314.80      -0.00      -0.00      -0.00      -0.01       0.00      -0.01     211.95     -56.02

    2   2.1  1.0  1.0    -553.25   -1314.79       0.00      -0.00       0.60      -0.00      -0.00       0.61     154.48     155.54
                           -3.01       0.00     185.72       0.60       0.00    -189.86       0.62       0.01      -0.00       0.00

    3   3.1  1.0  1.0      -7.83      -4.26      -0.00       0.04    -185.72      -0.01      -0.00    -189.86       0.49       0.51
                            6.98      -0.00       0.60    -185.72      -0.04      -0.62    -189.85       0.00       0.00      -0.00

    4   4.1  1.0  1.0      -0.75       0.00    -475.44       0.01       0.00     406.03      -0.01      -0.03       0.01      -0.01
                          370.74       0.00       0.00      -0.00       0.01       0.01      -0.01      -0.00     207.50     785.11

    5   5.1  1.0  1.0       2.94       0.00       0.00     303.03       0.07      -0.00     677.16      -0.00      -0.00       0.01
                            2.72      -0.00       0.00       0.06    -244.96      -0.05      -0.00    -726.75      -0.03       0.01

    6   6.1  1.0  1.0    -323.12      -0.00      -0.00       0.05       0.00      -0.02      -0.04      -0.03     576.18    -572.25
                            0.75       0.00    -475.44      -0.00       0.05    -406.04      -0.00      -0.01      -0.01       0.01

    7   7.1  1.0  1.0      -1.91      -0.00       0.01     457.78       0.02      -0.01    -448.23       0.08      -0.06       0.06
                            1.35       0.00       0.05      -0.03     491.32       0.02      -0.08    -362.32      -0.02      -0.01

    8   8.1  1.0  1.0       1.52      -0.00       0.00      -0.03     475.44      -0.03      -0.09    -406.04      -0.02       0.01
                            1.76       0.00       0.00    -475.43      -0.02      -0.00     406.03      -0.07      -0.00       0.00

    9   9.1  1.0  1.0      -0.54      -0.03     410.63       0.00       0.00    -502.31      -0.00       0.03       0.06       0.08
                          -63.88    -184.81      -0.07       0.00       0.00      -0.07      -0.00       0.02    -560.76     148.21

   10  10.1  1.0  1.0      97.01     184.81       0.07      -0.00       0.00      -0.09       0.00       0.01    -408.72    -411.54
                            0.51      -0.03     410.62       0.00       0.00     502.31      -0.00      -0.03      -0.09       0.02

   11  11.1  1.0  1.0       1.06       0.00       0.00       0.10    -410.62       0.03       0.00     502.31       0.02      -0.01
                           -1.23      -0.00       0.00    -410.63      -0.10       0.00     502.31      -0.00      -0.00       0.00

   12  12.1  1.0  1.0      -0.00       0.00       0.00     778.33       0.19      -0.00      -0.01       0.00      -0.00      -0.00
                           -0.00      -0.00       0.00       0.19    -778.33       0.00       0.00       0.01      -0.00       0.00

   13   1.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            9.89       0.00       0.00     262.64       0.06       0.00    -268.49       0.00       0.00      -0.00

   14   2.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           12.75      -6.03       0.00       0.06    -262.64       0.02       0.00     268.50       0.27      -0.97

   15   3.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                        -1297.65    1859.40       0.00       0.00      -0.85       0.01      -0.00       0.88     -81.26     299.18

   16   4.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            2.49      -0.00      -0.00     672.37       0.16      -0.02     574.22      -0.00      -0.00       0.00

   17   5.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.13      -0.00     774.92      -0.00       0.00     -70.14      -0.00       0.00      -0.00       0.00

   18   6.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            2.15      -0.00      -0.00       0.16    -672.37      -0.16      -0.00    -574.21      -0.02       0.01

   19   7.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            2.11      -0.00     -47.41      -0.01       0.07   -1146.29      -0.01       0.13      -0.24      -0.04

   20   8.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           67.35       0.00      -0.01      -0.00       0.00      -0.24      -0.00      -0.04    1108.28     301.03

   21   9.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -1.73       0.00      -0.00     580.72       0.24      -0.00     710.37       0.13      -0.00       0.01

   22  10.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -1.50       0.00       0.00       0.24    -580.72      -0.05       0.13    -710.38      -0.03       0.01

   23  11.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          227.54    -261.35       0.00       0.00      -0.00      -0.02       0.01      -0.02     215.01    -791.57

   24  12.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00   -1100.74       0.00      -0.00      -0.01       0.00      -0.00      -0.00      -0.00

   25   1.1  1.0 -1.0       2.98       0.00     185.72       0.00      -0.00     189.86       0.00      -0.01       0.00      -0.00
                         -364.32   -1314.80       0.00       0.00       0.00       0.01      -0.00       0.01    -211.95      56.02

   26   2.1  1.0 -1.0    -553.25   -1314.79       0.00      -0.00       0.60      -0.00      -0.00       0.61     154.48     155.54
                            3.01      -0.00    -185.72      -0.60      -0.00     189.86      -0.62      -0.01       0.00      -0.00

   27   3.1  1.0 -1.0      -7.83      -4.26      -0.00       0.04    -185.72      -0.01      -0.00    -189.86       0.49       0.51
                           -6.98       0.00      -0.60     185.72       0.04       0.62     189.85      -0.00      -0.00       0.00

   28   4.1  1.0 -1.0      -0.75       0.00    -475.44       0.01       0.00     406.03      -0.01      -0.03       0.01      -0.01
                         -370.74      -0.00      -0.00       0.00      -0.01      -0.01       0.01       0.00    -207.50    -785.11

   29   5.1  1.0 -1.0       2.94       0.00       0.00     303.03       0.07      -0.00     677.16      -0.00      -0.00       0.01
                           -2.72       0.00      -0.00      -0.06     244.96       0.05       0.00     726.75       0.03      -0.01

   30   6.1  1.0 -1.0    -323.12      -0.00      -0.00       0.05       0.00      -0.02      -0.04      -0.03     576.18    -572.25
                           -0.75      -0.00     475.44       0.00      -0.05     406.04       0.00       0.01       0.01      -0.01

   31   7.1  1.0 -1.0      -1.91      -0.00       0.01     457.78       0.02      -0.01    -448.23       0.08      -0.06       0.06
                           -1.35      -0.00      -0.05       0.03    -491.32      -0.02       0.08     362.32       0.02       0.01

   32   8.1  1.0 -1.0       1.52      -0.00       0.00      -0.03     475.44      -0.03      -0.09    -406.04      -0.02       0.01
                           -1.76      -0.00      -0.00     475.43       0.02       0.00    -406.03       0.07       0.00      -0.00

   33   9.1  1.0 -1.0      -0.54      -0.03     410.63       0.00       0.00    -502.31      -0.00       0.03       0.06       0.08
                           63.88     184.81       0.07      -0.00      -0.00       0.07       0.00      -0.02     560.76    -148.21

   34  10.1  1.0 -1.0      97.01     184.81       0.07      -0.00       0.00      -0.09       0.00       0.01    -408.72    -411.54
                           -0.51       0.03    -410.62      -0.00      -0.00    -502.31       0.00       0.03       0.09      -0.02

   35  11.1  1.0 -1.0       1.06       0.00       0.00       0.10    -410.62       0.03       0.00     502.31       0.02      -0.01
                            1.23       0.00      -0.00     410.63       0.10      -0.00    -502.31       0.00       0.00      -0.00

   36  12.1  1.0 -1.0      -0.00       0.00       0.00     778.33       0.19      -0.00      -0.01       0.00      -0.00      -0.00
                            0.00       0.00      -0.00      -0.19     778.33      -0.00      -0.00      -0.01       0.00      -0.00

   37   1.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   38   2.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   39   3.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   40   4.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   41   5.1  0.0  0.0    5722.25       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   42   6.1  0.0  0.0       0.00   14154.32       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   43   7.1  0.0  0.0       0.00       0.00   41451.81       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   44   8.1  0.0  0.0       0.00       0.00       0.00   41451.79       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   45   9.1  0.0  0.0       0.00       0.00       0.00       0.00   41451.81       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   46  10.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00   44017.09       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00

   47  11.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00   44017.33       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00

   48  12.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00   44017.13       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00

   49  13.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   44017.46       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00

   50  14.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   44017.51
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   51  15.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00


   Nr   State  S   Sz       51

    1   1.1  1.0  1.0      -0.00
                         -391.92

    2   2.1  1.0  1.0     391.92
                           -0.00

    3   3.1  1.0  1.0       1.27
                            0.00

    4   4.1  1.0  1.0      -0.00
                           -0.00

    5   5.1  1.0  1.0      -0.00
                            0.00

    6   6.1  1.0  1.0       0.02
                            0.00

    7   7.1  1.0  1.0       0.00
                           -0.00

    8   8.1  1.0  1.0       0.00
                            0.00

    9   9.1  1.0  1.0       0.15
                          836.44

   10  10.1  1.0  1.0    -836.44
                            0.15

   11  11.1  1.0  1.0      -0.00
                            0.00

   12  12.1  1.0  1.0      -0.00
                            0.00

   13   1.1  1.0  0.0       0.00
                           -0.00

   14   2.1  1.0  0.0       0.00
                            1.80

   15   3.1  1.0  0.0       0.00
                         -554.27

   16   4.1  1.0  0.0       0.00
                            0.00

   17   5.1  1.0  0.0       0.00
                            0.00

   18   6.1  1.0  0.0       0.00
                            0.00

   19   7.1  1.0  0.0       0.00
                            0.00

   20   8.1  1.0  0.0       0.00
                           -0.00

   21   9.1  1.0  0.0       0.00
                           -0.00

   22  10.1  1.0  0.0       0.00
                           -0.00

   23  11.1  1.0  0.0       0.00
                         1182.91

   24  12.1  1.0  0.0       0.00
                            0.00

   25   1.1  1.0 -1.0      -0.00
                          391.92

   26   2.1  1.0 -1.0     391.92
                            0.00

   27   3.1  1.0 -1.0       1.27
                           -0.00

   28   4.1  1.0 -1.0      -0.00
                            0.00

   29   5.1  1.0 -1.0      -0.00
                           -0.00

   30   6.1  1.0 -1.0       0.02
                           -0.00

   31   7.1  1.0 -1.0       0.00
                            0.00

   32   8.1  1.0 -1.0       0.00
                           -0.00

   33   9.1  1.0 -1.0       0.15
                         -836.44

   34  10.1  1.0 -1.0    -836.44
                           -0.15

   35  11.1  1.0 -1.0      -0.00
                           -0.00

   36  12.1  1.0 -1.0      -0.00
                           -0.00

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

   51  15.1  0.0  0.0   46059.30
                            0.00




   Spin-orbit calculation in the basis of symmetry adapted wave functions
   ======================================================================


 >>> Hamiltonian transformed to symmetry adapted basis <<<


  Results for symmetry 1
  ======================

 => Spin-Orbit Matrixblock (CM-1)  (dimension: 51)

    The diagonal matrixelements are shifted by   -214.29033092 a.u.

  State Sym Spin    / Nr.        1           2           3           4           5           6           7           8

    1    1  |1 1>+              0.003       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>+              0.000       0.006       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>+              0.000       0.000       0.000   42242.183       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>+              0.000       0.000       0.000       0.000   42242.283       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>+              0.000       0.000       0.000       0.000       0.000   42242.211       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000   42242.326       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000   42242.256
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   10    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   11    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   12    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>               0.000      -0.000       0.000       0.000       0.000       0.000      -0.000       0.000
                                0.000       0.000       0.000       0.006    -134.448       0.028     269.666       0.051

    2    1  |1 0>              -0.000      -0.000       0.000      -0.000       0.000      -0.000      -0.000      -0.000
                               -0.000       0.000   -1144.851      -0.000       0.000       0.846       0.050    -260.949

    3    1  |1 0>               0.000       0.000      -0.000      -0.000       0.000       0.000      -0.000       0.000
                               -0.000    1144.851       0.000       0.000       0.000    -260.945       0.027      -0.846

    4    1  |1 0>               0.000      -0.000      -0.000       0.000      -0.000      -0.000      -0.000       0.000
                               -0.006       0.000      -0.000       0.000   -1205.299      -0.064    -600.901      -0.115

    5    1  |1 0>               0.000       0.000       0.000      -0.000       0.000      -0.000      -0.000       0.000
                              134.448      -0.000      -0.000    1205.299       0.000       0.000      -0.025      -0.001

    6    1  |1 0>               0.000      -0.000       0.000      -0.000      -0.000      -0.000       0.000      -0.000
                               -0.028      -0.846     260.945       0.064      -0.000       0.000      -0.128     673.397

    7    1  |1 0>              -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000      -0.000
                             -269.666      -0.050      -0.027     600.901       0.025       0.128       0.000      -0.070

    8    1  |1 0>               0.000      -0.000       0.000       0.000       0.000      -0.000      -0.000       0.000
                               -0.051     260.949       0.846       0.115       0.001    -673.397       0.070       0.000

    9    1  |1 0>               0.000      -0.000       0.000       0.000      -0.000       0.000      -0.000      -0.000
                               -0.000       0.000      -0.041       0.013    -300.123       0.062     601.965       0.219

   10    1  |1 0>               0.000       0.000      -0.000       0.000      -0.000      -0.000       0.000      -0.000
                               -0.000      -0.743     229.338       0.000      -0.054       0.000       0.219    -582.500

   11    1  |1 0>              -0.000      -0.000       0.000      -0.000      -0.000      -0.000      -0.000       0.000
                                0.000    -229.334      -0.743      -0.000       0.000    -582.520       0.061      -0.000

   12    1  |1 0>               0.000       0.000       0.000      -0.000      -0.000      -0.000      -0.000       0.000
                              423.353       0.000       0.000      -0.013       0.000      -0.000      -0.000      -0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000    1144.845       3.710       0.000      -0.000     260.952      -0.027      -0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                            -1144.845       0.000       0.000    -260.948       0.975      -0.000      -0.054      -0.000

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -3.710      -0.000       0.000      -0.845    -300.748       0.002      18.400       0.003

    4    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000     260.948       0.845      -0.000      -0.001     673.388      -0.070      -0.028

    5    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.975     300.748       0.001       0.000       0.000       0.015     -82.255

    6    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -260.952       0.000      -0.002    -673.388      -0.000       0.000       0.014      -0.140

    7    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.027       0.054     -18.400       0.070      -0.015      -0.014       0.000   -1344.272

    8    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.003       0.028      82.255       0.140    1344.272      -0.000

    9    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.041    -229.336      -0.743       0.105      -0.000     582.504      -0.061      -0.000

   10    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              229.334      -0.041      -0.000    -582.517       0.000       0.105       0.012      -0.000

   11    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000       0.001    -671.352       0.004      41.083       0.008

   12    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       1.372    -423.358      -0.000      -0.000      -0.000       0.000      -0.001

    1    1  |0 0>           -1131.761      -9.177      -6.161     285.270       0.000       0.374      -0.007       1.546
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |0 0>              -0.077       0.642      14.993       0.013     475.707       5.893    -314.881      -3.838
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |0 0>              -6.108      -8.236    1131.636       1.540      -6.267      -3.980       4.203    -285.242
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |0 0>               6.816   -1046.753      -1.884      -1.718      -2.766     341.587       1.795      -0.380
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |0 0>               4.220    -782.415     -11.076      -1.064       4.157    -456.954      -2.704       2.152
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |0 0>               0.000   -1859.398      -6.025       0.000       0.000      -0.003      -0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |0 0>             262.643       0.000      -0.000    -672.371       0.000      -0.000       0.014       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |0 0>               0.000      -0.000       0.063       0.014     428.550       0.068     647.398      -0.038
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |0 0>              -0.000       0.851    -262.642       0.000       0.103       0.000       0.027     672.373
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   10    1  |0 0>             268.505      -0.002      -0.017     574.218      -0.000      -0.035      -0.012      -0.037
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   11    1  |0 0>               0.000      -0.002      -0.000      -0.013     957.645      -0.059    -633.891      -0.121
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   12    1  |0 0>              -0.017       0.865    -268.504      -0.037      -0.000      -0.044       0.109    -574.223
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   13    1  |0 0>               0.007     218.465       0.698       0.015      -0.001     814.842      -0.085      -0.022
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   14    1  |0 0>              -0.004     219.969       0.717      -0.009       0.008    -809.283       0.080       0.009
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   15    1  |0 0>              -0.000     554.262       1.796      -0.000      -0.000       0.022       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

  State Sym Spin    / Nr.        9          10          11          12          13          14          15          16

    1    1  |1 1>+              0.000       0.000       0.000       0.000       0.000      -0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.006

    2    1  |1 1>+              0.000       0.000       0.000       0.000      -0.000      -0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000      -0.000       0.000   -1144.851      -0.000

    3    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000      -0.000      -0.000
                                0.000       0.000       0.000       0.000      -0.000    1144.851       0.000       0.000

    4    1  |1 1>+              0.000       0.000       0.000       0.000       0.000      -0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000      -0.006       0.000      -0.000       0.000

    5    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000     134.448      -0.000      -0.000    1205.299

    6    1  |1 1>+              0.000       0.000       0.000       0.000       0.000      -0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000      -0.028      -0.846     260.945       0.064

    7    1  |1 1>+              0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000      -0.000
                                0.000       0.000       0.000       0.000    -269.666      -0.050      -0.027     600.901

    8    1  |1 1>+              0.000       0.000       0.000       0.000       0.000      -0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.051     260.949       0.846       0.115

    9    1  |1 1>+          42796.308       0.000       0.000       0.000       0.000      -0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000       0.000      -0.041       0.013

   10    1  |1 1>+              0.000   42796.321       0.000       0.000       0.000       0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000      -0.743     229.338       0.000

   11    1  |1 1>+              0.000       0.000   42796.347       0.000      -0.000      -0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000    -229.334      -0.743      -0.000

   12    1  |1 1>+              0.000       0.000       0.000   43399.934       0.000       0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000     423.353       0.000       0.000      -0.013

    1    1  |1 0>               0.000       0.000      -0.000       0.000       0.003       0.000       0.000       0.000
                                0.000       0.000      -0.000    -423.353       0.000       0.000       0.000       0.000

    2    1  |1 0>              -0.000       0.000      -0.000       0.000       0.000       0.006       0.000       0.000
                               -0.000       0.743     229.334      -0.000      -0.000       0.000       0.000       0.000

    3    1  |1 0>               0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.041    -229.338       0.743      -0.000      -0.000      -0.000       0.000       0.000

    4    1  |1 0>               0.000       0.000      -0.000      -0.000       0.000       0.000       0.000   42242.183
                               -0.013      -0.000       0.000       0.013      -0.000      -0.000      -0.000       0.000

    5    1  |1 0>              -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                              300.123       0.054      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

    6    1  |1 0>               0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                               -0.062      -0.000     582.520       0.000      -0.000      -0.000      -0.000      -0.000

    7    1  |1 0>              -0.000       0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                             -601.965      -0.219      -0.061       0.000      -0.000      -0.000      -0.000      -0.000

    8    1  |1 0>              -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.219     582.500       0.000       0.000      -0.000      -0.000      -0.000      -0.000

    9    1  |1 0>              -0.000      -0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.126    -955.304      -0.000      -0.000      -0.000      -0.000

   10    1  |1 0>              -0.000       0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000    -701.884      -0.172      -0.000      -0.000      -0.000      -0.000

   11    1  |1 0>               0.000       0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                               -0.126     701.884       0.000      -0.000      -0.000      -0.000      -0.000      -0.000

   12    1  |1 0>              -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                              955.304       0.172       0.000       0.000      -0.000      -0.000      -0.000      -0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       3.710   -1144.845       0.000
                                0.041    -229.334      -0.000      -0.000       0.000      -0.000      -0.000       0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000      -3.710       0.000      -0.000       0.851
                              229.336       0.041       0.000      -1.372      -0.000       0.000      -0.000       0.000

    3    1  |1 1>-              0.000       0.000       0.000       0.000    1144.845       0.000       0.000    -260.947
                                0.743       0.000       0.000     423.358      -0.000      -0.000      -0.000      -0.000

    4    1  |1 1>-              0.000       0.000       0.000       0.000      -0.000      -0.851     260.947       0.000
                               -0.105     582.517      -0.001       0.000       0.000       0.000      -0.000      -0.000

    5    1  |1 1>-              0.000       0.000       0.000       0.000       0.000    -166.321      -0.539      -0.000
                                0.000      -0.000     671.352       0.000       0.000      -0.000      -0.000       0.000

    6    1  |1 1>-              0.000       0.000       0.000       0.000      -0.000      -0.026      -0.000      -0.016
                             -582.504      -0.105      -0.004       0.000      -0.000      -0.000      -0.000      -0.000

    7    1  |1 1>-              0.000       0.000       0.000       0.000       0.050    -251.257      -0.820      -0.128
                                0.061      -0.012     -41.083      -0.000       0.000       0.000      -0.000      -0.000

    8    1  |1 1>-              0.000       0.000       0.000       0.000    -260.947      -0.048      -0.000     673.395
                                0.000       0.000      -0.008       0.001      -0.000      -0.000       0.000       0.000

    9    1  |1 1>-              0.000       0.000       0.000       0.000       0.000      -0.743     229.335       0.000
                                0.000     701.894       0.000      -0.000       0.000       0.000      -0.000       0.000

   10    1  |1 1>-              0.000       0.000       0.000       0.000       0.000      -0.000       0.041       0.012
                             -701.894      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

   11    1  |1 1>-              0.000       0.000       0.000       0.000    -229.337      -0.000       0.000    -582.505
                               -0.000       0.000       0.000     955.319      -0.000      -0.000       0.000      -0.000

   12    1  |1 1>-              0.000       0.000       0.000       0.000       0.000    -423.353      -1.372      -0.000
                                0.000       0.000    -955.319      -0.000       0.000       0.000      -0.000      -0.000

    1    1  |0 0>             198.454       1.648       1.075       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.001      -6.144       3.836       0.012

    2    1  |0 0>               0.013      -0.121      -2.629      -0.008       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000   -1131.642      15.030     -12.052    -285.242

    3    1  |0 0>               1.071       0.801    -198.438       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      14.908    1131.617      13.847       3.758

    4    1  |0 0>              -1.228     183.546      -0.264       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       6.579       2.008    -154.228       1.658

    5    1  |0 0>              -0.765     137.195       1.498      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -9.887     -12.745    1297.646      -2.492

    6    1  |0 0>              -0.047     261.354       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000       6.025   -1859.399       0.000

    7    1  |0 0>             580.715       0.104       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000       0.001

    8    1  |0 0>               0.000      -0.000       0.139    1100.725       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000    -262.641      -0.063      -0.000    -672.372

    9    1  |0 0>               0.000       0.000    -580.710       0.264       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.063     262.641       0.851      -0.161

   10    1  |0 0>            -710.374      -0.122       0.046      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000      -0.017      -0.007       0.024

   11    1  |0 0>              -0.000       0.004       0.000      -0.020       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000     268.489      -0.000       0.002    -574.217

   12    1  |0 0>               0.046       0.013     710.372       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000    -268.503      -0.878       0.000

   13    1  |0 0>               0.085    -578.013       0.027      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000      -0.274      81.258       0.000

   14    1  |0 0>               0.116    -582.005      -0.012      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.002       0.974    -299.180      -0.004

   15    1  |0 0>               0.213   -1182.910      -0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000      -1.796     554.265      -0.000

  State Sym Spin    / Nr.       17          18          19          20          21          22          23          24

    1    1  |1 1>+              0.000       0.000      -0.000       0.000       0.000       0.000      -0.000       0.000
                             -134.448       0.028     269.666       0.051       0.000       0.000      -0.000    -423.353

    2    1  |1 1>+              0.000      -0.000      -0.000      -0.000      -0.000       0.000      -0.000       0.000
                                0.000       0.846       0.050    -260.949      -0.000       0.743     229.334      -0.000

    3    1  |1 1>+              0.000       0.000      -0.000       0.000       0.000      -0.000       0.000       0.000
                                0.000    -260.945       0.027      -0.846       0.041    -229.338       0.743      -0.000

    4    1  |1 1>+             -0.000      -0.000      -0.000       0.000       0.000       0.000      -0.000      -0.000
                            -1205.299      -0.064    -600.901      -0.115      -0.013      -0.000       0.000       0.013

    5    1  |1 1>+              0.000      -0.000      -0.000       0.000      -0.000      -0.000      -0.000      -0.000
                                0.000       0.000      -0.025      -0.001     300.123       0.054      -0.000      -0.000

    6    1  |1 1>+             -0.000      -0.000       0.000      -0.000       0.000      -0.000      -0.000      -0.000
                               -0.000       0.000      -0.128     673.397      -0.062      -0.000     582.520       0.000

    7    1  |1 1>+             -0.000       0.000       0.000      -0.000      -0.000       0.000      -0.000      -0.000
                                0.025       0.128       0.000      -0.070    -601.965      -0.219      -0.061       0.000

    8    1  |1 1>+              0.000      -0.000      -0.000       0.000      -0.000      -0.000       0.000       0.000
                                0.001    -673.397       0.070       0.000      -0.219     582.500       0.000       0.000

    9    1  |1 1>+             -0.000       0.000      -0.000      -0.000      -0.000      -0.000       0.000      -0.000
                             -300.123       0.062     601.965       0.219       0.000      -0.000       0.126    -955.304

   10    1  |1 1>+             -0.000      -0.000       0.000      -0.000      -0.000       0.000       0.000      -0.000
                               -0.054       0.000       0.219    -582.500       0.000       0.000    -701.884      -0.172

   11    1  |1 1>+             -0.000      -0.000      -0.000       0.000       0.000       0.000      -0.000      -0.000
                                0.000    -582.520       0.061      -0.000      -0.126     701.884       0.000      -0.000

   12    1  |1 1>+             -0.000      -0.000      -0.000       0.000      -0.000      -0.000      -0.000       0.000
                                0.000      -0.000      -0.000      -0.000     955.304       0.172       0.000       0.000

    1    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 0>           42242.283       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 0>               0.000   42242.211       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 0>               0.000       0.000   42242.326       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 0>               0.000       0.000       0.000   42242.256       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 0>               0.000       0.000       0.000       0.000   42796.308       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

   10    1  |1 0>               0.000       0.000       0.000       0.000       0.000   42796.321       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000

   11    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000   42796.347       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000

   12    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000   43399.934
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000

    1    1  |1 1>-             -0.000       0.000      -0.050     260.947      -0.000      -0.000     229.337      -0.000
                                0.000      -0.000       0.000      -0.000       0.000       0.000      -0.000       0.000

    2    1  |1 1>-            166.321       0.026     251.257       0.048       0.743       0.000       0.000     423.353
                               -0.000      -0.000       0.000      -0.000       0.000       0.000      -0.000       0.000

    3    1  |1 1>-              0.539       0.000       0.820       0.000    -229.335      -0.041      -0.000       1.372
                               -0.000      -0.000      -0.000       0.000      -0.000       0.000       0.000      -0.000

    4    1  |1 1>-              0.000       0.016       0.128    -673.395      -0.000      -0.012     582.505       0.000
                                0.000      -0.000      -0.000       0.000       0.000       0.000      -0.000      -0.000

    5    1  |1 1>-              0.000   -1123.043       0.118       0.000       0.067    -371.285      -0.000       0.000
                               -0.000       0.000      -0.000       0.000      -0.000       0.000      -0.000       0.000

    6    1  |1 1>-           1123.043       0.000    -743.375      -0.141       0.000      -0.059      -0.000      -0.028
                                0.000       0.000       0.000       0.000      -0.000      -0.000       0.000       0.000

    7    1  |1 1>-             -0.118     743.375       0.000       0.014       0.212    -560.869      -0.012      -0.000
                               -0.000       0.000      -0.000       0.000      -0.000      -0.000       0.000       0.000

    8    1  |1 1>-             -0.000       0.141      -0.014       0.000    -582.513      -0.212      -0.000      -0.000
                                0.000       0.000       0.000      -0.000      -0.000      -0.000      -0.000      -0.000

    9    1  |1 1>-             -0.067      -0.000      -0.212     582.513       0.000       0.000    -701.883      -0.172
                               -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000      -0.000

   10    1  |1 1>-            371.285       0.059     560.869       0.212      -0.000       0.000      -0.126     955.308
                                0.000      -0.000      -0.000      -0.000       0.000      -0.000      -0.000       0.000

   11    1  |1 1>-              0.000       0.000       0.012       0.000     701.883       0.126       0.000       0.000
                               -0.000       0.000       0.000      -0.000       0.000      -0.000      -0.000      -0.000

   12    1  |1 1>-             -0.000       0.028       0.000       0.000       0.172    -955.308      -0.000       0.000
                                0.000       0.000       0.000      -0.000      -0.000       0.000      -0.000      -0.000

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               34.845      -1.486     569.473      -3.556      -0.000       1.075      -0.676       0.002

    2    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.002       3.779       0.045      -2.702     198.434      -2.593       2.122       0.000

    3    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.188     285.247       3.044       0.263      -2.578    -198.435      -1.785       0.000

    4    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.210       0.380      -3.322    -566.553      -1.154      -0.265      27.042      -0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.130      -2.153      -2.110     -67.352       1.733       1.498    -227.542      -0.000

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.002      -0.000      -0.000     261.354       0.000

    7    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -774.920       0.004      47.411       0.009       0.000      -0.000      -0.000    1100.740

    8    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.161       0.014       0.000    -580.717      -0.244      -0.000      -0.000

    9    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.001     672.365      -0.070      -0.000      -0.244     580.721       0.000       0.000

   10    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               70.137       0.156    1146.286       0.242       0.000       0.046       0.019       0.005

   11    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.012       0.002    -710.367      -0.127      -0.006      -0.000

   12    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.005     574.212      -0.133       0.037      -0.127     710.381       0.021       0.000

   13    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.002       0.022       0.241   -1108.279       0.000       0.027    -215.005       0.000

   14    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.001      -0.009       0.038    -301.029      -0.005      -0.012     791.575       0.000

   15    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000       0.001       0.000       0.000   -1182.915      -0.000

  State Sym Spin    / Nr.       25          26          27          28          29          30          31          32

    1    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000    1144.845       3.710       0.000      -0.000     260.952      -0.027      -0.000

    2    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                            -1144.845       0.000       0.000    -260.948       0.975      -0.000      -0.054      -0.000

    3    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -3.710      -0.000       0.000      -0.845    -300.748       0.002      18.400       0.003

    4    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000     260.948       0.845      -0.000      -0.001     673.388      -0.070      -0.028

    5    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.975     300.748       0.001       0.000       0.000       0.015     -82.255

    6    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -260.952       0.000      -0.002    -673.388      -0.000       0.000       0.014      -0.140

    7    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.027       0.054     -18.400       0.070      -0.015      -0.014       0.000   -1344.272

    8    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.003       0.028      82.255       0.140    1344.272      -0.000

    9    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.041    -229.336      -0.743       0.105      -0.000     582.504      -0.061      -0.000

   10    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              229.334      -0.041      -0.000    -582.517       0.000       0.105       0.012      -0.000

   11    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000       0.001    -671.352       0.004      41.083       0.008

   12    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       1.372    -423.358      -0.000      -0.000      -0.000       0.000      -0.001

    1    1  |1 0>               0.000      -3.710    1144.845      -0.000       0.000      -0.000       0.050    -260.947
                               -0.000       0.000       0.000      -0.000      -0.000       0.000       0.000       0.000

    2    1  |1 0>               3.710       0.000       0.000      -0.851    -166.321      -0.026    -251.257      -0.048
                                0.000      -0.000       0.000      -0.000       0.000       0.000       0.000       0.000

    3    1  |1 0>           -1144.845      -0.000       0.000     260.947      -0.539      -0.000      -0.820      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000

    4    1  |1 0>               0.000       0.851    -260.947       0.000      -0.000      -0.016      -0.128     673.395
                               -0.000      -0.000       0.000       0.000      -0.000       0.000       0.000      -0.000

    5    1  |1 0>              -0.000     166.321       0.539       0.000       0.000    1123.043      -0.118      -0.000
                               -0.000       0.000       0.000      -0.000       0.000      -0.000       0.000      -0.000

    6    1  |1 0>               0.000       0.026       0.000       0.016   -1123.043       0.000     743.375       0.141
                                0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000      -0.000

    7    1  |1 0>              -0.050     251.257       0.820       0.128       0.118    -743.375       0.000      -0.014
                                0.000       0.000       0.000       0.000       0.000      -0.000       0.000      -0.000

    8    1  |1 0>             260.947       0.048       0.000    -673.395       0.000      -0.141       0.014       0.000
                                0.000       0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000

    9    1  |1 0>              -0.000       0.743    -229.335      -0.000       0.067       0.000       0.212    -582.513
                               -0.000      -0.000       0.000      -0.000       0.000       0.000       0.000       0.000

   10    1  |1 0>              -0.000       0.000      -0.041      -0.012    -371.285      -0.059    -560.869      -0.212
                               -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000

   11    1  |1 0>             229.337       0.000      -0.000     582.505      -0.000      -0.000      -0.012      -0.000
                                0.000       0.000      -0.000       0.000       0.000      -0.000      -0.000       0.000

   12    1  |1 0>              -0.000     423.353       1.372       0.000       0.000      -0.028      -0.000      -0.000
                                0.000      -0.000       0.000       0.000      -0.000      -0.000      -0.000       0.000

    1    1  |1 1>-              0.003       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>-              0.000       0.006       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>-              0.000       0.000       0.000   42242.183       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>-              0.000       0.000       0.000       0.000   42242.283       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>-              0.000       0.000       0.000       0.000       0.000   42242.211       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000   42242.326       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000   42242.256
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
                                5.342   -1131.755      -3.668      -3.290      -2.767     285.268      -1.409      -0.001

    2    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               11.409       3.590   -1131.637       3.224       6.763       0.020       3.426    -285.242

    3    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -5.611      -6.157      14.888      -3.712     510.553       1.567     254.535       3.806

    4    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             1200.987       6.795       6.601    -224.963       0.681      -1.718       0.344       1.658

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -515.230       4.252      -9.873    -524.305      -3.853      -1.064      -1.909      -2.493

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                            -1859.408      -0.000       0.000      -0.001       0.000      -0.000      -0.000      -0.000

    7    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000    -262.641      -0.851      -0.000      -0.001     672.376      -0.070      -0.000

    8    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.851     262.643       0.000      -0.083       0.000       0.039     672.366

    9    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.063      -0.015     346.420      -0.072    -694.827       0.029

   10    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.009     268.503       0.870      -0.011       0.066     574.227      -0.027       0.000

   11    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.001      -0.870     268.486       0.008       0.001       0.000       0.109    -574.218

   12    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.013      -0.017      -0.000       0.004    1027.785       0.017     512.404       0.098

   13    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -299.737       0.007      -0.000    -293.444       0.039       0.015       0.026       0.000

   14    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               79.219      -0.004       0.002   -1110.315      -0.017      -0.009       0.015      -0.004

   15    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              554.263       0.000      -0.000       0.004      -0.000      -0.000       0.000      -0.000

  State Sym Spin    / Nr.       33          34          35          36          37          38          39          40

    1    1  |1 1>+              0.000       0.000       0.000       0.000   -1131.761      -0.077      -6.108       6.816
                                0.041    -229.334      -0.000      -0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>+              0.000       0.000       0.000       0.000      -9.177       0.642      -8.236   -1046.753
                              229.336       0.041       0.000      -1.372       0.000       0.000       0.000       0.000

    3    1  |1 1>+              0.000       0.000       0.000       0.000      -6.161      14.993    1131.636      -1.884
                                0.743       0.000       0.000     423.358       0.000       0.000       0.000       0.000

    4    1  |1 1>+              0.000       0.000       0.000       0.000     285.270       0.013       1.540      -1.718
                               -0.105     582.517      -0.001       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>+              0.000       0.000       0.000       0.000       0.000     475.707      -6.267      -2.766
                                0.000      -0.000     671.352       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>+              0.000       0.000       0.000       0.000       0.374       5.893      -3.980     341.587
                             -582.504      -0.105      -0.004       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>+              0.000       0.000       0.000       0.000      -0.007    -314.881       4.203       1.795
                                0.061      -0.012     -41.083      -0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>+              0.000       0.000       0.000       0.000       1.546      -3.838    -285.242      -0.380
                                0.000       0.000      -0.008       0.001       0.000       0.000       0.000       0.000

    9    1  |1 1>+              0.000       0.000       0.000       0.000     198.454       0.013       1.071      -1.228
                                0.000     701.894       0.000      -0.000       0.000       0.000       0.000       0.000

   10    1  |1 1>+              0.000       0.000       0.000       0.000       1.648      -0.121       0.801     183.546
                             -701.894      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

   11    1  |1 1>+              0.000       0.000       0.000       0.000       1.075      -2.629    -198.438      -0.264
                               -0.000       0.000       0.000     955.319       0.000       0.000       0.000       0.000

   12    1  |1 1>+              0.000       0.000       0.000       0.000       0.000      -0.008       0.000       0.000
                                0.000       0.000    -955.319      -0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>               0.000       0.000    -229.337       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000       0.001    1131.642     -14.908      -6.579

    2    1  |1 0>              -0.743      -0.000      -0.000    -423.353       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000      -0.000       6.144     -15.030   -1131.617      -2.008

    3    1  |1 0>             229.335       0.041       0.000      -1.372       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000       0.000      -3.836      12.052     -13.847     154.228

    4    1  |1 0>               0.000       0.012    -582.505      -0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000      -0.012     285.242      -3.758      -1.658

    5    1  |1 0>              -0.067     371.285       0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000      -0.000     -34.845      -0.002      -0.188       0.210

    6    1  |1 0>              -0.000       0.059       0.000       0.028       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000      -0.000       1.486      -3.779    -285.247      -0.380

    7    1  |1 0>              -0.212     560.869       0.012       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000      -0.000    -569.473      -0.045      -3.044       3.322

    8    1  |1 0>             582.513       0.212       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       3.556       2.702      -0.263     566.553

    9    1  |1 0>               0.000      -0.000     701.883       0.172       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000       0.000       0.000    -198.434       2.578       1.154

   10    1  |1 0>               0.000       0.000       0.126    -955.308       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000      -0.000      -1.075       2.593     198.435       0.265

   11    1  |1 0>            -701.883      -0.126       0.000      -0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.676      -2.122       1.785     -27.042

   12    1  |1 0>              -0.172     955.308       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000       0.000      -0.002      -0.000      -0.000       0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -5.342     -11.409       5.611   -1200.987

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000    1131.755      -3.590       6.157      -6.795

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       3.668    1131.637     -14.888      -6.601

    4    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       3.290      -3.224       3.712     224.963

    5    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       2.767      -6.763    -510.553      -0.681

    6    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000    -285.268      -0.020      -1.567       1.718

    7    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       1.409      -3.426    -254.535      -0.344

    8    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.001     285.242      -3.806      -1.658

    9    1  |1 1>-          42796.308       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.972       2.001      -0.984     210.587

   10    1  |1 1>-              0.000   42796.321       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000    -198.457      -0.013      -1.071       1.233

   11    1  |1 1>-              0.000       0.000   42796.347       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000    -198.432       2.614       1.154

   12    1  |1 1>-              0.000       0.000       0.000   43399.934       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000       0.000       0.006       0.000

    1    1  |0 0>               0.000       0.000       0.000       0.000    5722.280       0.000       0.000       0.000
                               -0.972     198.457       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |0 0>               0.000       0.000       0.000       0.000       0.000    5722.266       0.000       0.000
                               -2.001       0.013     198.432      -0.000      -0.000       0.000       0.000       0.000

    3    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000    5722.277       0.000
                                0.984       1.071      -2.614      -0.006      -0.000      -0.000       0.000       0.000

    4    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000    5722.254
                             -210.587      -1.233      -1.154      -0.000      -0.000      -0.000      -0.000       0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               90.344      -0.724       1.734       0.000      -0.000      -0.000      -0.000      -0.000

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              261.354       0.047       0.000       0.000      -0.000      -0.000      -0.000      -0.000

    7    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.104    -580.707      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

    8    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000     580.715      -0.264      -0.000      -0.000      -0.000      -0.000

    9    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.139    1100.721      -0.000      -0.000      -0.000      -0.000

   10    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.104    -710.369      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

   11    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.002       0.000    -710.373      -0.000      -0.000      -0.000      -0.000      -0.000

   12    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.034       0.046       0.000      -0.012      -0.000      -0.000      -0.000      -0.000

   13    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              793.038       0.124       0.000       0.000      -0.000      -0.000      -0.000      -0.000

   14    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -209.598      -0.026      -0.005      -0.000      -0.000      -0.000      -0.000      -0.000

   15    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                            -1182.904      -0.213      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

  State Sym Spin    / Nr.       41          42          43          44          45          46          47          48

    1    1  |1 1>+              4.220       0.000     262.643       0.000      -0.000     268.505       0.000      -0.017
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>+           -782.415   -1859.398       0.000      -0.000       0.851      -0.002      -0.002       0.865
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>+            -11.076      -6.025      -0.000       0.063    -262.642      -0.017      -0.000    -268.504
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>+             -1.064       0.000    -672.371       0.014       0.000     574.218      -0.013      -0.037
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>+              4.157       0.000       0.000     428.550       0.103      -0.000     957.645      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>+           -456.954      -0.003      -0.000       0.068       0.000      -0.035      -0.059      -0.044
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>+             -2.704      -0.000       0.014     647.398       0.027      -0.012    -633.891       0.109
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>+              2.152      -0.000       0.000      -0.038     672.373      -0.037      -0.121    -574.223
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>+             -0.765      -0.047     580.715       0.000       0.000    -710.374      -0.000       0.046
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   10    1  |1 1>+            137.195     261.354       0.104      -0.000       0.000      -0.122       0.004       0.013
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   11    1  |1 1>+              1.498       0.000       0.000       0.139    -580.710       0.046       0.000     710.372
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   12    1  |1 1>+             -0.000       0.000       0.000    1100.725       0.264      -0.000      -0.020       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                9.887       0.000       0.000     262.641       0.063       0.000    -268.489       0.000

    2    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               12.745      -6.025       0.000       0.063    -262.641       0.017       0.000     268.503

    3    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                            -1297.646    1859.399       0.000       0.000      -0.851       0.007      -0.002       0.878

    4    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                2.492      -0.000      -0.001     672.372       0.161      -0.024     574.217      -0.000

    5    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.130      -0.000     774.920      -0.000       0.001     -70.137      -0.000       0.005

    6    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                2.153      -0.000      -0.004       0.161    -672.365      -0.156      -0.000    -574.212

    7    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                2.110      -0.000     -47.411      -0.014       0.070   -1146.286      -0.012       0.133

    8    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               67.352       0.002      -0.009      -0.000       0.000      -0.242      -0.002      -0.037

    9    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -1.733       0.000      -0.000     580.717       0.244      -0.000     710.367       0.127

   10    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -1.498       0.000       0.000       0.244    -580.721      -0.046       0.127    -710.381

   11    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              227.542    -261.354       0.000       0.000      -0.000      -0.019       0.006      -0.021

   12    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000   -1100.740       0.000      -0.000      -0.005       0.000      -0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              515.230    1859.408      -0.000      -0.000      -0.000      -0.009       0.001      -0.013

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -4.252       0.000     262.641       0.851       0.000    -268.503       0.870       0.017

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                9.873      -0.000       0.851    -262.643      -0.063      -0.870    -268.486       0.000

    4    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              524.305       0.001       0.000      -0.000       0.015       0.011      -0.008      -0.004

    5    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                3.853      -0.000       0.001       0.083    -346.420      -0.066      -0.001   -1027.785

    6    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                1.064       0.000    -672.376      -0.000       0.072    -574.227      -0.000      -0.017

    7    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                1.909       0.000       0.070      -0.039     694.827       0.027      -0.109    -512.404

    8    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                2.493       0.000       0.000    -672.366      -0.029      -0.000     574.218      -0.098

    9    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -90.344    -261.354      -0.104       0.000       0.000      -0.104      -0.002       0.034

   10    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.724      -0.047     580.707       0.000       0.000     710.369      -0.000      -0.046

   11    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -1.734      -0.000       0.000    -580.715      -0.139       0.000     710.373      -0.000

   12    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.264   -1100.721       0.000       0.000       0.012

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |0 0>            5722.251       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |0 0>               0.000   14154.324       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |0 0>               0.000       0.000   41451.806       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |0 0>               0.000       0.000       0.000   41451.789       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |0 0>               0.000       0.000       0.000       0.000   41451.813       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

   10    1  |0 0>               0.000       0.000       0.000       0.000       0.000   44017.093       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000

   11    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000   44017.334       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000

   12    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000   44017.134
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000

   13    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

   14    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

   15    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

  State Sym Spin    / Nr.       49          50          51

    1    1  |1 1>+              0.007      -0.004      -0.000
                                0.000       0.000       0.000

    2    1  |1 1>+            218.465     219.969     554.262
                                0.000       0.000       0.000

    3    1  |1 1>+              0.698       0.717       1.796
                                0.000       0.000       0.000

    4    1  |1 1>+              0.015      -0.009      -0.000
                                0.000       0.000       0.000

    5    1  |1 1>+             -0.001       0.008      -0.000
                                0.000       0.000       0.000

    6    1  |1 1>+            814.842    -809.283       0.022
                                0.000       0.000       0.000

    7    1  |1 1>+             -0.085       0.080       0.000
                                0.000       0.000       0.000

    8    1  |1 1>+             -0.022       0.009       0.000
                                0.000       0.000       0.000

    9    1  |1 1>+              0.085       0.116       0.213
                                0.000       0.000       0.000

   10    1  |1 1>+           -578.013    -582.005   -1182.910
                                0.000       0.000       0.000

   11    1  |1 1>+              0.027      -0.012      -0.000
                                0.000       0.000       0.000

   12    1  |1 1>+             -0.000      -0.000      -0.000
                                0.000       0.000       0.000

    1    1  |1 0>               0.000       0.000       0.000
                                0.000      -0.002      -0.000

    2    1  |1 0>               0.000       0.000       0.000
                                0.274      -0.974       1.796

    3    1  |1 0>               0.000       0.000       0.000
                              -81.258     299.180    -554.265

    4    1  |1 0>               0.000       0.000       0.000
                               -0.000       0.004       0.000

    5    1  |1 0>               0.000       0.000       0.000
                               -0.002       0.001       0.000

    6    1  |1 0>               0.000       0.000       0.000
                               -0.022       0.009       0.000

    7    1  |1 0>               0.000       0.000       0.000
                               -0.241      -0.038       0.000

    8    1  |1 0>               0.000       0.000       0.000
                             1108.279     301.029      -0.001

    9    1  |1 0>               0.000       0.000       0.000
                               -0.000       0.005      -0.000

   10    1  |1 0>               0.000       0.000       0.000
                               -0.027       0.012      -0.000

   11    1  |1 0>               0.000       0.000       0.000
                              215.005    -791.575    1182.915

   12    1  |1 0>               0.000       0.000       0.000
                               -0.000      -0.000       0.000

    1    1  |1 1>-              0.000       0.000       0.000
                              299.737     -79.219    -554.263

    2    1  |1 1>-              0.000       0.000       0.000
                               -0.007       0.004      -0.000

    3    1  |1 1>-              0.000       0.000       0.000
                                0.000      -0.002       0.000

    4    1  |1 1>-              0.000       0.000       0.000
                              293.444    1110.315      -0.004

    5    1  |1 1>-              0.000       0.000       0.000
                               -0.039       0.017       0.000

    6    1  |1 1>-              0.000       0.000       0.000
                               -0.015       0.009       0.000

    7    1  |1 1>-              0.000       0.000       0.000
                               -0.026      -0.015      -0.000

    8    1  |1 1>-              0.000       0.000       0.000
                               -0.000       0.004       0.000

    9    1  |1 1>-              0.000       0.000       0.000
                             -793.038     209.598    1182.904

   10    1  |1 1>-              0.000       0.000       0.000
                               -0.124       0.026       0.213

   11    1  |1 1>-              0.000       0.000       0.000
                               -0.000       0.005       0.000

   12    1  |1 1>-              0.000       0.000       0.000
                               -0.000       0.000       0.000

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

   13    1  |0 0>           44017.464       0.000       0.000
                                0.000       0.000       0.000

   14    1  |0 0>               0.000   44017.507       0.000
                               -0.000       0.000       0.000

   15    1  |0 0>               0.000       0.000   46059.305
                               -0.000      -0.000       0.000

 => Eigenvalues of spin-orbit matrix in ascending order  (E0 = Emin,ges)
    (symmetry =  1)

    Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
             (au)           (au)        (cm-1)           (au)       (cm-1)        (eV)
    1  -214.30365172    -0.01332080    -2923.58      0.00000000        0.00      0.0000
    2  -214.29561567    -0.00528475    -1159.87      0.00803605     1763.71      0.2187
    3  -214.29561566    -0.00528474    -1159.87      0.00803606     1763.71      0.2187
    4  -214.29561565    -0.00528473    -1159.86      0.00803607     1763.71      0.2187
    5  -214.28747188     0.00285904      627.49      0.01617984     3551.06      0.4403
    6  -214.28747186     0.00285905      627.49      0.01617985     3551.07      0.4403
    7  -214.28747181     0.00285911      627.50      0.01617991     3551.08      0.4403
    8  -214.28747181     0.00285911      627.50      0.01617991     3551.08      0.4403
    9  -214.28747180     0.00285912      627.50      0.01617992     3551.08      0.4403
   10  -214.26201203     0.02831889     6215.28      0.04163969     9138.86      1.1331
   11  -214.26201202     0.02831889     6215.28      0.04163969     9138.86      1.1331
   12  -214.26201201     0.02831891     6215.28      0.04163971     9138.86      1.1331
   13  -214.26201197     0.02831895     6215.29      0.04163975     9138.87      1.1331
   14  -214.26201196     0.02831896     6215.29      0.04163976     9138.87      1.1331
   15  -214.22309308     0.06723783    14757.00      0.08055863    17680.58      2.1921
   16  -214.11093955     0.17939137    39371.86      0.19271217    42295.43      5.2440
   17  -214.11093951     0.17939141    39371.86      0.19271221    42295.44      5.2440
   18  -214.11093946     0.17939146    39371.87      0.19271226    42295.45      5.2440
   19  -214.10697097     0.18335994    40242.86      0.19668074    43166.43      5.3520
   20  -214.10697090     0.18336001    40242.87      0.19668081    43166.45      5.3520
   21  -214.10697087     0.18336005    40242.88      0.19668085    43166.46      5.3520
   22  -214.10643783     0.18389309    40359.87      0.19721389    43283.45      5.3665
   23  -214.10643782     0.18389310    40359.87      0.19721390    43283.45      5.3665
   24  -214.10643775     0.18389317    40359.89      0.19721397    43283.46      5.3665
   25  -214.10643766     0.18389325    40359.90      0.19721405    43283.48      5.3665
   26  -214.10643766     0.18389325    40359.90      0.19721405    43283.48      5.3665
   27  -214.10516368     0.18516724    40639.51      0.19848804    43563.09      5.4011
   28  -214.09346204     0.19686887    43207.72      0.21018967    46131.30      5.7196
   29  -214.09346204     0.19686888    43207.72      0.21018968    46131.30      5.7196
   30  -214.09346198     0.19686894    43207.74      0.21018974    46131.32      5.7196
   31  -214.09172481     0.19860611    43589.00      0.21192691    46512.58      5.7668
   32  -214.09172476     0.19860616    43589.01      0.21192696    46512.59      5.7668
   33  -214.09172473     0.19860619    43589.02      0.21192699    46512.60      5.7668
   34  -214.09172469     0.19860623    43589.03      0.21192703    46512.61      5.7668
   35  -214.09172464     0.19860628    43589.04      0.21192708    46512.62      5.7668
   36  -214.09172447     0.19860645    43589.08      0.21192725    46512.66      5.7668
   37  -214.09172446     0.19860646    43589.08      0.21192726    46512.66      5.7668
   38  -214.09062698     0.19970394    43829.95      0.21302474    46753.53      5.7967
   39  -214.09062694     0.19970398    43829.96      0.21302478    46753.54      5.7967
   40  -214.09062689     0.19970403    43829.97      0.21302483    46753.55      5.7967
   41  -214.09062687     0.19970404    43829.97      0.21302484    46753.55      5.7967
   42  -214.09062687     0.19970404    43829.97      0.21302484    46753.55      5.7967
   43  -214.08820823     0.20212269    44360.80      0.21544349    47284.38      5.8625
   44  -214.08820822     0.20212270    44360.81      0.21544350    47284.38      5.8625
   45  -214.08820821     0.20212271    44360.81      0.21544351    47284.38      5.8625
   46  -214.08566621     0.20466470    44918.71      0.21798550    47842.29      5.9317
   47  -214.08566605     0.20466487    44918.75      0.21798566    47842.32      5.9317
   48  -214.08566541     0.20466550    44918.89      0.21798630    47842.46      5.9317
   49  -214.08566501     0.20466591    44918.98      0.21798671    47842.55      5.9317
   50  -214.08566483     0.20466608    44919.01      0.21798688    47842.59      5.9317
   51  -214.07689600     0.21343492    46843.55      0.22675572    49767.13      6.1703

 => Eigenvectors of spin-orbit matrix columnwise and corresponding to the
    eigenvalues in ascending order (symmetry =  1)

  Basis states          Eigenvectors (columnwise)

 State Sym Spin     / Nr.      1           2           3           4           5           6           7           8

   1    1  |1 1>+          0.00000001  0.00207097  0.00005911  0.70698383 -0.00003942 -0.00059915  0.00265076 -0.00457647
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   2    1  |1 1>+         -0.56715130 -0.00000009 -0.00229092  0.00000020  0.23787250  0.74113742  0.00300361 -0.00027947
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000010 -0.00000001  0.00000000 -0.00000000

   3    1  |1 1>+         -0.00183781  0.00002681  0.70698377 -0.00005919  0.00128929  0.00297132 -0.67390058 -0.01584504
                           0.00000000 -0.00000000  0.00000004 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   4    1  |1 1>+         -0.00000000  0.00001260  0.00000036  0.00427039  0.00000037  0.00000562 -0.00002485  0.00004277
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   5    1  |1 1>+         -0.00000000  0.00272151 -0.00000011 -0.00000797 -0.00000794  0.00000746 -0.00024752  0.01053931
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   6    1  |1 1>+         -0.00000008  0.00000043  0.00000000 -0.00000000  0.01203798 -0.00386371  0.00000572  0.00001122
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   7    1  |1 1>+         -0.00000000  0.00411191 -0.00000097 -0.00001213  0.00000399 -0.00000453  0.00016263 -0.00697624
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   8    1  |1 1>+         -0.00000000  0.00000094  0.00427041 -0.00000036 -0.00000486 -0.00000534  0.00631965  0.00014725
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   9    1  |1 1>+         -0.00000135 -0.00000948 -0.00000027 -0.00323671 -0.00000029 -0.00000254  0.00000920 -0.00001588
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  10    1  |1 1>+          0.00749302 -0.00000000  0.00000000 -0.00000058  0.00082570  0.00257229  0.00000285 -0.00000115
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  11    1  |1 1>+          0.00000000 -0.00000012 -0.00323670  0.00000027  0.00000180  0.00000198 -0.00233893 -0.00005499
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  12    1  |1 1>+          0.00000000 -0.01351131  0.00000052  0.00003958  0.00000000 -0.00000000  0.00000000 -0.00000016
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   1    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.70698259  0.00002697  0.00207097 -0.00050687  0.00047681 -0.01582634  0.67389807

   2    1  |1 0>          -0.00000000  0.00000000 -0.00000004  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00183781  0.00002680  0.70698131 -0.00005919 -0.00298375 -0.00110299  0.67390348  0.01584252

   3    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000031  0.00000000 -0.00000000  0.00000000
                           0.56715241  0.00000009  0.00229093 -0.00000019  0.76078036  0.16456255  0.00289783  0.00052258

   4    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00427038 -0.00000016 -0.00001250 -0.00000475  0.00000447 -0.00014841  0.00631950

   5    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00001442 -0.00000041 -0.00492205 -0.00000005 -0.00000068  0.00000303 -0.00000524

   6    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000016 -0.00427038  0.00000038 -0.00000486 -0.00000534  0.00631957  0.00014857

   7    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000079  0.00000047  0.00030126 -0.00000125 -0.00000886  0.00004897 -0.00008582

   8    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000004  0.00000000  0.00000000  0.00000006  0.00267293 -0.01235702 -0.00000867  0.00001061

   9    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00323671  0.00000046 -0.00000948 -0.00000176  0.00000166 -0.00005535  0.00233892

  10    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000046 -0.00323676  0.00000027 -0.00000180 -0.00000198  0.00233900  0.00005541

  11    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00749301  0.00000000 -0.00000000  0.00000000  0.00264052  0.00057112  0.00000248  0.00000164

  12    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00003958 -0.00000113 -0.01351123  0.00000000 -0.00000000  0.00000000 -0.00000000

   1    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000022  0.00000000 -0.00000000 -0.00000000
                           0.56715481  0.00000000  0.00000000 -0.00000001 -0.52291172  0.57657700  0.00010577 -0.00080205

   2    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000001 -0.00021995  0.00005920  0.70698560  0.00004105  0.00059760 -0.00259947  0.00239275

   3    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.70698685 -0.00002679  0.00021995 -0.00050673  0.00047875 -0.01583481  0.67390804

   4    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000001  0.00000000  0.00000009 -0.00000000 -0.00936503 -0.00849336 -0.00001427 -0.00000131

   5    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000008 -0.00219991  0.00000018 -0.00000870 -0.00000956  0.01131138  0.00026594

   6    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00001251  0.00000081  0.00427044 -0.00000037 -0.00000562  0.00002545 -0.00004290

   7    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000098  0.00441293 -0.00000082 -0.00000414 -0.00000459  0.00563931  0.00013139

   8    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00427036  0.00000100  0.00001251 -0.00000475  0.00000447 -0.00014734  0.00631952

   9    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00749302  0.00000000  0.00000000  0.00000058 -0.00181488  0.00200118  0.00000037 -0.00000279

  10    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000135 -0.00000948 -0.00000027 -0.00323668 -0.00000019  0.00000244 -0.00000920  0.00001588

  11    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00323672  0.00000012  0.00000948 -0.00000176  0.00000165 -0.00005493  0.00233897

  12    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000051  0.01351140 -0.00000113 -0.00000000  0.00000000 -0.00000011 -0.00000000

   1    1  |0 0>           0.00000000 -0.00000000  0.00000000  0.00000025  0.00044357  0.00181387 -0.00044515 -0.00208616
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   2    1  |0 0>          -0.00000000 -0.00000028 -0.00000001 -0.00000000 -0.00280611  0.00058845  0.01106635 -0.30122033
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   3    1  |0 0>           0.00000000  0.00000000 -0.00000051  0.00000000  0.00208949  0.00010738  0.30123424  0.01104404
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   4    1  |0 0>           0.00000002  0.00000000  0.00000000 -0.00000000 -0.09805701  0.28504577  0.00052623  0.00150034
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000004 -0.00000000  0.00000000  0.00000000

   5    1  |0 0>           0.00000030 -0.00000000  0.00000001 -0.00000000  0.28503258  0.09806380 -0.00191761 -0.00252706
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000012 -0.00000000 -0.00000000 -0.00000000

   6    1  |0 0>          -0.18559609  0.00000000  0.00000000 -0.00000000  0.00000012  0.00000009  0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   7    1  |0 0>          -0.00000000 -0.00002564 -0.00000073 -0.00875135  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   8    1  |0 0>          -0.00000000  0.00875136 -0.00000243 -0.00002564 -0.00000000  0.00000000 -0.00000000  0.00000003
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   9    1  |0 0>          -0.00000000  0.00000243  0.00875141 -0.00000074 -0.00000000  0.00000000  0.00000001  0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  10    1  |0 0>           0.00000000  0.00000000 -0.00000000 -0.00000002  0.00000025  0.00000702 -0.00003103  0.00005270
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  11    1  |0 0>          -0.00000000 -0.00000002  0.00000000 -0.00000000 -0.00000579  0.00000551 -0.00018228  0.00776153
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  12    1  |0 0>           0.00000000 -0.00000000  0.00000002 -0.00000000  0.00000572  0.00000677 -0.00776220 -0.00018250
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  13    1  |0 0>          -0.00000014  0.00000000 -0.00000000 -0.00000000  0.00357308 -0.00689277 -0.00000357  0.00000752
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  14    1  |0 0>           0.00000008 -0.00000000 -0.00000000 -0.00000000 -0.00689275 -0.00357308 -0.00000815 -0.00000277
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  15    1  |0 0>           0.01979577 -0.00000000 -0.00000000  0.00000000  0.00000005 -0.00000002 -0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 State Sym Spin     / Nr.      9          10          11          12          13          14          15          16

   1    1  |1 1>+         -0.67407788  0.00013683  0.00139939  0.00278044 -0.00065574 -0.21324879  0.00000000  0.00066096
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   2    1  |1 1>+         -0.00065896 -0.01793965 -0.13584467 -0.20458322 -0.00243176 -0.00356292 -0.10721528 -0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   3    1  |1 1>+         -0.00254520  0.00171862 -0.00409039 -0.00019741  0.21322562 -0.00068398 -0.00034742  0.00000006
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   4    1  |1 1>+          0.00632121  0.00000404  0.00003983  0.00007918 -0.00001867 -0.00607248 -0.00000000  0.43753659
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   5    1  |1 1>+         -0.00007253 -0.01000568  0.00155965 -0.00015957  0.00011042  0.00000139 -0.00000000  0.00002983
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   6    1  |1 1>+          0.00000268  0.00166196  0.00995404 -0.00675683  0.00017123 -0.00002224  0.00000008  0.00000001
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   7    1  |1 1>+          0.00004787  0.00662280 -0.00103339  0.00010633 -0.00007426 -0.00000079  0.00000000  0.00003588
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   8    1  |1 1>+          0.00002386  0.00005185 -0.00010414  0.00001328  0.00607196 -0.00001915 -0.00000000  0.00004125
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   9    1  |1 1>+         -0.00233956  0.00000396  0.00004031  0.00007975 -0.00001856 -0.00603699  0.00000136 -0.02644700
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  10    1  |1 1>+         -0.00000274 -0.00050768 -0.00384589 -0.00579159 -0.00004928 -0.00010201 -0.00757950 -0.00000475
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  11    1  |1 1>+         -0.00000883  0.00005030 -0.00010334  0.00001318  0.00603657 -0.00001904 -0.00000000 -0.00000249
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  12    1  |1 1>+          0.00000000  0.00000018 -0.00000003  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00001816
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   1    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00463787  0.21068915 -0.03284167  0.00336018 -0.00232516 -0.00002936  0.00000000 -0.00000007

   2    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00254367 -0.00165315  0.00443665 -0.00051851 -0.21321875  0.00067694 -0.00034742  0.00000006

   3    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00018291 -0.03814289 -0.24270024  0.01635221 -0.00456808 -0.00138987  0.10721530  0.00000000

   4    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00004376 -0.00599961  0.00093520 -0.00009569  0.00006621  0.00000109  0.00000000  0.00004745

   5    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00077212 -0.00000048 -0.00000487 -0.00000967  0.00000228  0.00074172  0.00000000 -0.50426421

   6    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00002253  0.00005059 -0.00010395  0.00001324  0.00607210 -0.00001789  0.00000000 -0.00003846

   7    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.01261877 -0.00000767 -0.00007940 -0.00015575  0.00003664  0.01212218  0.00000000  0.03085190

   8    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000832  0.00006463 -0.00082578 -0.01211679  0.00001127 -0.00016109 -0.00000005  0.00000573

   9    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00001610  0.00596454 -0.00092975  0.00009513 -0.00006474 -0.00000083 -0.00000000  0.00000283

  10    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000882 -0.00004923  0.00010317 -0.00001316 -0.00603651  0.00001904 -0.00000000 -0.00000249

  11    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000066 -0.00107963 -0.00687097  0.00046291 -0.00010976 -0.00003941  0.00757951  0.00000000

  12    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000005  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000004 -0.00000000  0.16978446

   1    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00047605  0.02020333  0.10685604 -0.22093648  0.00213633 -0.00217306  0.10721585  0.00000000

   2    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.67409065 -0.00081955 -0.00129296 -0.00279131  0.00066327  0.21324780  0.00000000  0.00066091

   3    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00245355  0.21068760 -0.03284603  0.00335115 -0.00232303  0.00066165 -0.00000000  0.00000221

   4    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000805 -0.00159665 -0.01077992 -0.00535986 -0.00015986 -0.00014116 -0.00000002  0.00000000

   5    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00004269  0.00009056 -0.00018604  0.00002373  0.01086813 -0.00003428  0.00000000 -0.00002162

   6    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00632123 -0.00000389 -0.00003986 -0.00007917  0.00001925  0.00607242 -0.00000000  0.43753224

   7    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00002195  0.00004632 -0.00009270  0.00001197  0.00541829 -0.00001772 -0.00000000 -0.00000293

   8    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00004349 -0.00599962  0.00093519 -0.00009568  0.00006725  0.00000083 -0.00000000 -0.00004680

   9    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000207  0.00057194  0.00302501 -0.00625447  0.00006047 -0.00006260  0.00757951  0.00000475

  10    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00233949 -0.00000377 -0.00003907 -0.00007984  0.00001857  0.00603705  0.00000136 -0.02644163

  11    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00001610  0.00596449 -0.00092973  0.00009512 -0.00006582 -0.00000083  0.00000000 -0.00000283

  12    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000013  0.00000000 -0.00000000 -0.00001600

   1    1  |0 0>          -0.30143094 -0.00025083 -0.00297819 -0.00651747 -0.00219397  0.95324075 -0.00000000  0.00000006
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   2    1  |0 0>           0.00206777  0.94030384 -0.15538064  0.02013263  0.00208975 -0.00009557  0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   3    1  |0 0>          -0.00051757 -0.00331457 -0.00712492  0.00088450  0.95323493  0.00217687 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   4    1  |0 0>           0.00155977 -0.02791706 -0.04564793  0.95174383 -0.00133589  0.00635419  0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   5    1  |0 0>           0.00102984  0.15415047  0.93938020  0.04956481  0.00750376  0.00333159 -0.00000004 -0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   6    1  |0 0>          -0.00000000  0.00000001  0.00000005 -0.00000001  0.00000000  0.00000000  0.98250626  0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   7    1  |0 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.57590518
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   8    1  |0 0>          -0.00000000  0.00000002 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00006159
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   9    1  |0 0>           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00005430
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  10    1  |0 0>           0.00776418 -0.00000214 -0.00002196 -0.00004383  0.00001054  0.00335595  0.00000000 -0.00000096
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  11    1  |0 0>          -0.00005342  0.00331546 -0.00051683  0.00005287 -0.00003659 -0.00000046 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  12    1  |0 0>          -0.00002979  0.00002797 -0.00005737  0.00000721  0.00335569 -0.00001080  0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  13    1  |0 0>           0.00000605 -0.00015346 -0.00064680  0.00328939 -0.00001672  0.00003868 -0.00000004 -0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  14    1  |0 0>           0.00000344  0.00049691  0.00325185  0.00066251  0.00005012  0.00003009  0.00000002 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  15    1  |0 0>           0.00000000 -0.00000000 -0.00000003  0.00000001 -0.00000000 -0.00000000  0.00483608  0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 State Sym Spin     / Nr.     17          18          19          20          21          22          23          24

   1    1  |1 1>+          0.00000007  0.00000006 -0.00688651  0.00000002  0.00000057 -0.00501062  0.00001069 -0.00000010
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   2    1  |1 1>+         -0.00000000  0.00000214  0.00000000  0.00000000  0.00002231  0.00000072 -0.00001624  0.00344394
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   3    1  |1 1>+          0.00000030 -0.00066104 -0.00000057 -0.00000043 -0.00688634  0.00001070  0.00501076  0.00001146
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   4    1  |1 1>+          0.00003795  0.00004126  0.23296090 -0.00000527 -0.00001914 -0.33232510  0.00070924 -0.00000692
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   5    1  |1 1>+         -0.27886451 -0.00012588 -0.00000036 -0.14845340  0.00000920  0.00001366 -0.00006117  0.00009739
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   6    1  |1 1>+         -0.00004411 -0.00000002  0.00000001 -0.00002349  0.00000000  0.00008119  0.00004938 -0.53408615
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000015

   7    1  |1 1>+         -0.42126684 -0.00010711 -0.00000544 -0.22433105 -0.00003031 -0.00000223 -0.00002282 -0.00000855
                           0.00000000  0.00000000 -0.00000000 -0.00000001 -0.00000000  0.00000000 -0.00000000  0.00000000

   8    1  |1 1>+          0.00011747 -0.43752409  0.00001914 -0.00002818  0.23297010  0.00070924  0.33232448  0.00002007
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   9    1  |1 1>+         -0.00000283 -0.00000250  0.47768984 -0.00000118 -0.00003926  0.28124807 -0.00060023  0.00004061
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  10    1  |1 1>+         -0.00000000 -0.00000000  0.00008585 -0.00000000 -0.00000008  0.00000844  0.00000028 -0.19331850
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000005

  11    1  |1 1>+         -0.00001195  0.02644740  0.00003925  0.00002983  0.47768218 -0.00060023 -0.28125361 -0.00001702
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  12    1  |1 1>+         -0.16978466 -0.00007672  0.00000107  0.43311229 -0.00002704  0.00000001  0.00000001 -0.00000001
                           0.00000000  0.00000000  0.00000000  0.00000001  0.00000000  0.00000000  0.00000000  0.00000000

   1    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00066125  0.00000030 -0.00000002 -0.00688663  0.00000043 -0.00000012  0.00000055 -0.00000088

   2    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000030 -0.00066120 -0.00000057 -0.00000043 -0.00688646 -0.00001069 -0.00501058 -0.00001893

   3    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000214 -0.00000000 -0.00000000 -0.00002231 -0.00000027 -0.00001661  0.00574916

   4    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000001  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.43753782 -0.00019770 -0.00000023 -0.23296306  0.00001454  0.00002209 -0.00003666  0.00005813

   5    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00005391 -0.00004793 -0.26850085  0.00000066  0.00002226  0.04059071 -0.00008691  0.00000082

   6    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00019770  0.43753507 -0.00001766 -0.00001455 -0.23297308  0.00077833  0.33231487  0.00002007

   7    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00001249 -0.00004265  0.01643641  0.00000483  0.00002290  0.66337995 -0.00145037 -0.00000056

   8    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000002
                           0.00000000 -0.00000001  0.00000306  0.00000000  0.00000001  0.00024145  0.00002381  0.07556345

   9    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000002 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.02645861 -0.00001671  0.00000117  0.47769804 -0.00011569  0.00000684 -0.00008153  0.00004919

  10    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00001671  0.02645922  0.00003925  0.00011568  0.47768951  0.00060023  0.28124782  0.00001704

  11    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000009
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000008  0.00001330  0.00002111 -0.32263731

  12    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00001815  0.00001601 -0.43311161  0.00000107  0.00003559  0.00000622 -0.00000001 -0.00000000

   1    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000099  0.00000037 -0.00230451

   2    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000221  0.00000006 -0.00688638 -0.00002230  0.00000057  0.00501070 -0.00001070  0.00000011

   3    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00066104 -0.00000030 -0.00002230  0.00688624 -0.00000043  0.00001611  0.00000052 -0.00000088

   4    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000017
                           0.00000001 -0.00000947  0.00000001  0.00000000  0.00000505  0.00003407 -0.00001907  0.60965636

   5    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00010198  0.22542117 -0.00001005 -0.00000757 -0.12000850  0.00126912  0.59480539  0.00003592

   6    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00004680 -0.00000562  0.23295882 -0.00000058  0.00000583  0.33232662 -0.00067786  0.00000692

   7    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00012106 -0.45212835 -0.00000448 -0.00002929  0.24074419  0.00059827  0.29654260  0.00000512

   8    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000001 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.43751995  0.00011174  0.00000057  0.23298417  0.00003122  0.00000831  0.00001997  0.00005812

   9    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000004
                           0.00000000 -0.00000000 -0.00008586  0.00000000  0.00000000 -0.00000486 -0.00002084  0.12936529

  10    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000283 -0.00000250  0.47768548 -0.00000110 -0.00003925 -0.28125232  0.00060023  0.00001739

  11    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000002  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.02645127  0.00001195 -0.00000110 -0.47767204  0.00002982  0.00000688 -0.00003100  0.00004920

  12    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00007672  0.16978105  0.00003559  0.00002704  0.43311545 -0.00000003 -0.00001291 -0.00000000

   1    1  |0 0>          -0.00000000  0.00000000 -0.00000008  0.00000000  0.00000000 -0.01287089  0.00009720  0.00004687
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   2    1  |0 0>          -0.00000030 -0.00000000  0.00000000  0.00000039 -0.00000000 -0.00000090 -0.00017190 -0.00010923
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   3    1  |0 0>           0.00000000 -0.00000023 -0.00000000 -0.00000000 -0.00000009 -0.00009694 -0.01286979  0.00009814
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   4    1  |0 0>           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00007976 -0.00001675 -0.00005609
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   5    1  |0 0>          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00004794  0.00009624  0.01287105
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   6    1  |0 0>           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000033
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   7    1  |0 0>           0.00006158  0.00005432 -0.41838380  0.00000103  0.00003437  0.00000603 -0.00000001 -0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   8    1  |0 0>           0.57591514  0.00012210 -0.00000104 -0.41837380 -0.00007422 -0.00000001 -0.00000001  0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000001 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   9    1  |0 0>          -0.00012211  0.57591218  0.00003438 -0.00007422  0.41837457 -0.00000003 -0.00001530 -0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  10    1  |0 0>          -0.00000000  0.00000000  0.00000338 -0.00000001 -0.00000000  0.42305391 -0.00087569  0.00000026
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  11    1  |0 0>           0.00000592  0.00000000 -0.00000000 -0.00001454  0.00000001 -0.00001042  0.00004678 -0.00007092
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  12    1  |0 0>          -0.00000000  0.00000437  0.00000000 -0.00000001  0.00000542  0.00087568  0.42305071  0.00001639
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  13    1  |0 0>           0.00000000  0.00000000 -0.00000001 -0.00000000 -0.00000000 -0.00006427 -0.00000588  0.06375129
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000002

  14    1  |0 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000950  0.00001567 -0.41818518
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000012

  15    1  |0 0>           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000674
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 State Sym Spin     / Nr.     25          26          27          28          29          30          31          32

   1    1  |1 1>+          0.00000089  0.00000013  0.00000000  0.00669697  0.00000167  0.00000063 -0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   2    1  |1 1>+          0.00464966  0.00004203 -0.00970102 -0.00000000 -0.00000000  0.00002170  0.00000018 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   3    1  |1 1>+          0.00001484  0.00000069 -0.00003144  0.00000063  0.00000087 -0.00669685  0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   4    1  |1 1>+          0.00005875  0.00000112 -0.00000000 -0.23239948 -0.00005332 -0.00002171 -0.00022123  0.00009797
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   5    1  |1 1>+         -0.00508150  0.55419726  0.00000000 -0.00003696  0.14807884  0.00001922  0.00001631 -0.63419509
                          -0.00000001  0.00000004  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000487

   6    1  |1 1>+          0.39559700  0.00368272  0.00002471 -0.00000001  0.00002343  0.00000000  0.57734976  0.00000258
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000012  0.00000000

   7    1  |1 1>+          0.00332214 -0.36683542 -0.00000000 -0.00005098  0.22372324 -0.00001506 -0.00002263 -0.06788047
                           0.00000000 -0.00000003 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000052

   8    1  |1 1>+         -0.00001425 -0.00003316  0.00000000 -0.00002171  0.00001233  0.23239388 -0.00001106 -0.00010552
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   9    1  |1 1>+         -0.00000277 -0.00000704  0.00009714  0.40546830  0.00010121  0.00003788 -0.00000002  0.00000001
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  10    1  |1 1>+         -0.26094806 -0.00235869 -0.54048506  0.00007288  0.00000002  0.00000007  0.00004453  0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  11    1  |1 1>+          0.00001254 -0.00003086 -0.00000009  0.00003787  0.00005283 -0.40546307  0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  12    1  |1 1>+          0.00000024 -0.00002675 -0.00000000 -0.00004428  0.17737501  0.00002311 -0.00000000 -0.00000627
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   1    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00004594 -0.00501058 -0.00000000 -0.00000167  0.00669680  0.00000087 -0.00000000 -0.00000028

   2    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000236 -0.00000053 -0.00003144  0.00000063  0.00000087 -0.00669683 -0.00000000  0.00000000

   3    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00065790 -0.00000704  0.00970081  0.00000000  0.00000000 -0.00002170  0.00000006  0.00000000

   4    1  |1 0>           0.00000000 -0.00000002  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000558
                          -0.00304681  0.33231235  0.00000000 -0.00005836  0.23239988  0.00003028 -0.00001672  0.72616875

   5    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000735 -0.00000108  0.00000000  0.26777591  0.00006684  0.00002521 -0.00012483  0.00004655

   6    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00001489  0.00003646  0.00000000  0.00002022  0.00003028 -0.23238491  0.00000373 -0.00007794

   7    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00024270 -0.00002570 -0.00000000 -0.01638737 -0.00000897  0.00002267 -0.00003719  0.00005720

   8    1  |1 0>           0.00000001  0.00000001 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000012  0.00000000
                           0.66030504  0.00604080  0.00000133 -0.00000304 -0.00000001  0.00000000 -0.57733216 -0.00001019

   9    1  |1 0>           0.00000000 -0.00000002 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00257840  0.28122370 -0.00000000 -0.00010122  0.40546592  0.00012570  0.00000000 -0.00004747

  10    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00001307  0.00008141 -0.00000008  0.00003785  0.00012571 -0.40546631 -0.00000000 -0.00000001

  11    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.03691797  0.00039492  0.54049236  0.00000000  0.00000000 -0.00000006  0.00001606  0.00000000

  12    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000001  0.00000000  0.00000000 -0.17736976 -0.00004427 -0.00001657  0.00000000 -0.00000000

   1    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00530729  0.00004906  0.00970113 -0.00000000 -0.00000000 -0.00000000  0.00000010 -0.00000000

   2    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000103  0.00001611  0.00000000  0.00669694  0.00002337  0.00000063  0.00000000 -0.00000000

   3    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00004594 -0.00501109 -0.00000000  0.00002337 -0.00669687 -0.00000087  0.00000000  0.00000002

   4    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000012 -0.00000000
                           0.26472311  0.00232048 -0.00001390 -0.00000000  0.00000000  0.00000503  0.57736882  0.00001020

   5    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00002663  0.00006517  0.00000000  0.00001138  0.00001566 -0.11970719 -0.00000245  0.00007056

   6    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00005869 -0.00000881 -0.00000000 -0.23239807 -0.00005801  0.00000319  0.00008754 -0.00005084

   7    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00001824 -0.00003072 -0.00000000  0.00000176  0.00001292  0.24010825  0.00000099  0.00000041

   8    1  |1 1>-          0.00000000 -0.00000002 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000197
                          -0.00304679  0.33230974  0.00000000  0.00005801 -0.23238334  0.00001538  0.00003009  0.25664711

   9    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.29788076 -0.00275376  0.54048342 -0.00007288 -0.00000001 -0.00000000  0.00001857 -0.00000000

  10    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000388  0.00000691  0.00009714  0.40546458  0.00010128  0.00003788  0.00000001 -0.00000000

  11    1  |1 1>-          0.00000000 -0.00000002  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00257872  0.28125751  0.00000001  0.00010128 -0.40546532 -0.00005282  0.00000000 -0.00003158

  12    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00001657  0.00002311 -0.17737187 -0.00000000  0.00000000

   1    1  |0 0>           0.00008009  0.00000106 -0.00000000  0.00000002  0.00000000  0.00000000  0.00000001  0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   2    1  |0 0>          -0.00004389  0.01287013  0.00000000 -0.00000000 -0.00000006 -0.00000000 -0.00000000  0.00000103
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   3    1  |0 0>          -0.00001515 -0.00017112 -0.00000000  0.00000000  0.00000000 -0.00000004  0.00000000 -0.00000001
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   4    1  |0 0>           0.01287147  0.00004320  0.00000013 -0.00000000  0.00000000 -0.00000000  0.00000064 -0.00000001
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   5    1  |0 0>           0.00005555  0.00011072 -0.00000041 -0.00000000 -0.00000000  0.00000000  0.00000050  0.00000001
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   6    1  |0 0>           0.00000014  0.00000000 -0.01395727 -0.00000000  0.00000000  0.00000000  0.00000001  0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   7    1  |0 0>           0.00000001  0.00000000  0.00000000  0.67797733  0.00016924  0.00006334 -0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   8    1  |0 0>          -0.00000026  0.00002908 -0.00000000 -0.00016923  0.67797672 -0.00007428 -0.00000000 -0.00002382
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   9    1  |0 0>          -0.00000000  0.00000001  0.00000000 -0.00006335  0.00007426  0.67797848  0.00000000 -0.00000001
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  10    1  |0 0>          -0.00006487 -0.00001111 -0.00000000 -0.00000142  0.00000000  0.00000000 -0.00000001  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  11    1  |0 0>           0.00387873 -0.42301730 -0.00000000 -0.00000000  0.00000689  0.00000000 -0.00000000  0.00002534
                           0.00000000 -0.00000003 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  12    1  |0 0>          -0.00000401  0.00004672  0.00000000  0.00000000 -0.00000000  0.00000390 -0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  13    1  |0 0>          -0.41817284 -0.00384500 -0.00000294  0.00000000  0.00000000  0.00000000  0.00001817 -0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  14    1  |0 0>          -0.06374868 -0.00051441  0.00000758 -0.00000000 -0.00000000  0.00000000  0.00001586  0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  15    1  |0 0>           0.00000146  0.00000002 -0.35091941  0.00000000  0.00000000 -0.00000000  0.00000038  0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 State Sym Spin     / Nr.     33          34          35          36          37          38          39          40

   1    1  |1 1>+          0.00000051 -0.00000000  0.00000027 -0.00000000  0.00000000  0.00227794 -0.00000063  0.00000045
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   2    1  |1 1>+          0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000050  0.00000714  0.00059104
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   3    1  |1 1>+          0.00000000  0.00000005  0.00000000  0.00000000 -0.00000024 -0.00000064 -0.00227764  0.00000145
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   4    1  |1 1>+          0.72885278 -0.00018455  0.04598071 -0.00000441  0.00001081  0.21774517 -0.00006069  0.00004339
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   5    1  |1 1>+          0.00009053 -0.00007610 -0.00001741  0.11117504  0.00006528 -0.00000849 -0.00000433 -0.00002163
                          -0.00000000  0.00000000 -0.00000000 -0.00001193 -0.00000000  0.00000000 -0.00000000 -0.00000000

   6    1  |1 1>+          0.00017622 -0.00000086 -0.00001525  0.00004554 -0.00001019 -0.00006977 -0.00008255  0.42444650
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000002

   7    1  |1 1>+          0.00001303 -0.00004503 -0.00000007  0.71704546  0.00022930  0.00000107  0.00004437 -0.00003012
                          -0.00000000 -0.00000000 -0.00000000 -0.00007692 -0.00000000 -0.00000000  0.00000000  0.00000000

   8    1  |1 1>+          0.00009306  0.32822869 -0.00000402  0.00021543 -0.65237890 -0.00006070 -0.21778481 -0.00004468
                           0.00000000  0.00000008 -0.00000000 -0.00000002  0.00000001  0.00000000  0.00000000 -0.00000000

   9    1  |1 1>+          0.00007233 -0.00000002 -0.00001244  0.00000000  0.00000000  0.56534455 -0.00015757  0.00008632
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  10    1  |1 1>+          0.00000004 -0.00000000 -0.00000001 -0.00000000 -0.00000000 -0.00002425 -0.00005922  0.14675205
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000001

  11    1  |1 1>+          0.00000001  0.00003166  0.00000000  0.00000002 -0.00002324 -0.00015755 -0.56534258 -0.00011595
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  12    1  |1 1>+          0.00000000 -0.00000000 -0.00000000  0.00000397  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   1    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000016  0.00000000  0.00000005  0.00000003  0.00000013

   2    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000013  0.00000000  0.00000000 -0.00000013  0.00000063  0.00227797  0.00000670

   3    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000011  0.00000769 -0.00192316

   4    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000832 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00009291  0.00008882  0.00001253 -0.07752362 -0.00006758 -0.00001420 -0.00000263 -0.00001275

   5    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.46320481 -0.00022239  0.62006214 -0.00001465 -0.00004947 -0.02661729  0.00000761 -0.00000540

   6    1  |1 0>          -0.00000000 -0.00000018 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00021683  0.71372786  0.00010372 -0.00004740  0.15467861 -0.00010600 -0.21778421 -0.00004468

   7    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.45031530 -0.00011918 -0.36262617 -0.00000886  0.00002778 -0.43488588  0.00014391 -0.00014320

   8    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000001
                          -0.00009039  0.00000084 -0.00005356  0.00002922  0.00001020 -0.00019035 -0.00007551  0.29703729

   9    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000001 -0.00000000 -0.00000000 -0.00001563 -0.00000000  0.00001318 -0.00009478  0.00003309

  10    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000001 -0.00002426 -0.00000001 -0.00000001  0.00000308  0.00015756  0.56534729  0.00011606

  11    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000002
                           0.00000000  0.00000000 -0.00000000 -0.00000001  0.00000001  0.00002762  0.00007760 -0.47753531

  12    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000671  0.00000000 -0.00000943 -0.00000000 -0.00000000  0.00000520 -0.00000000 -0.00000000

   1    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000062 -0.00000055  0.00251412

   2    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000006 -0.00000000  0.00000052  0.00000000  0.00000000 -0.00227777  0.00000063 -0.00000045

   3    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000034 -0.00000000 -0.00000733  0.00000003  0.00000013

   4    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000001
                           0.00017622  0.00000053 -0.00001525 -0.00002923  0.00000524 -0.00003785  0.00000295 -0.12743554

   5    1  |1 1>-          0.00000000  0.00000016 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00014686 -0.61518657 -0.00011788  0.00003452 -0.08916272 -0.00010848 -0.38989463 -0.00007998

   6    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.22678377 -0.00006150  0.69419806  0.00000328  0.00000585 -0.21775106  0.00004012 -0.00004340

   7    1  |1 1>-          0.00000000 -0.00000002 -0.00000000 -0.00000002  0.00000001 -0.00000000 -0.00000000  0.00000000
                           0.00002433  0.06636130  0.00000953 -0.00023508  0.73656378 -0.00003149 -0.19437997 -0.00003719

   8    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00007335  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00001736  0.00006960  0.00000989  0.68372208  0.00021527 -0.00000509 -0.00003971 -0.00001276

   9    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000003
                           0.00000003 -0.00000000 -0.00000002  0.00000000 -0.00000000 -0.00005187 -0.00013682  0.62427783

  10    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00004710  0.00000001  0.00005820  0.00000001  0.00000000 -0.56534408  0.00015756 -0.00000049

  11    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00003391 -0.00000002  0.00001312  0.00000684  0.00003311

  12    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000063 -0.00000000  0.00000000 -0.00000736 -0.00000000 -0.00001029 -0.00000000

   1    1  |0 0>           0.00000146  0.00000000 -0.00000079 -0.00000000 -0.00000000  0.01553626 -0.00008851  0.00003759
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   2    1  |0 0>           0.00000000 -0.00000001 -0.00000000  0.00000068  0.00000000  0.00000072  0.00020557  0.00015452
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   3    1  |0 0>           0.00000001 -0.00000081 -0.00000000 -0.00000001  0.00000028  0.00008819  0.01553483 -0.00009019
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   4    1  |0 0>          -0.00000001 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00009745  0.00001784  0.01186069
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   5    1  |0 0>          -0.00000001  0.00000001  0.00000000  0.00000001 -0.00000000 -0.00005777 -0.00011571 -0.01003367
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   6    1  |0 0>          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000005
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   7    1  |0 0>           0.00002045 -0.00000001  0.00002324  0.00000000  0.00000000 -0.00000179  0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   8    1  |0 0>           0.00000000 -0.00000001 -0.00000000  0.00001707  0.00000001 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   9    1  |0 0>           0.00000000  0.00001178  0.00000000 -0.00000001  0.00002345 -0.00000000  0.00000293  0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  10    1  |0 0>           0.00003965 -0.00000001 -0.00002327 -0.00000000  0.00000000  0.27542153 -0.00005908  0.00004641
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  11    1  |0 0>          -0.00000000  0.00000000 -0.00000000  0.00001664  0.00000001 -0.00000643 -0.00000323 -0.00001497
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  12    1  |0 0>          -0.00000001 -0.00001858 -0.00000000 -0.00000001  0.00000957  0.00005907  0.27542097  0.00004523
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  13    1  |0 0>           0.00000001 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00006153 -0.00004415  0.23399038
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000001

  14    1  |0 0>           0.00000001  0.00000000  0.00000000 -0.00000001  0.00000000 -0.00001113  0.00001461 -0.14516172
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000001

  15    1  |0 0>           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000349
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 State Sym Spin     / Nr.     41          42          43          44          45          46          47          48

   1    1  |1 1>+         -0.00000006  0.00000034  0.00881660 -0.00000010  0.00000023  0.00862180 -0.00000051  0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   2    1  |1 1>+         -0.00007828  0.00256062 -0.00000000  0.00000000  0.00002857 -0.00000006  0.00002777 -0.00000006
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   3    1  |1 1>+         -0.00000022  0.00000819  0.00000023 -0.00000056 -0.00881667 -0.00000051 -0.00862169 -0.00000003
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   4    1  |1 1>+         -0.00000106  0.00003304 -0.01677390 -0.00000014 -0.00000044  0.09333187 -0.00000551 -0.00000211
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   5    1  |1 1>+         -0.36311520 -0.01109526 -0.00000012 -0.01069350  0.00000067 -0.00000008 -0.00000046  0.15567214
                          -0.00000010 -0.00000002  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   6    1  |1 1>+          0.00299150 -0.09790592  0.00000000 -0.00000169  0.00000000 -0.00000505 -0.00000707 -0.00000919
                          -0.00000000  0.00000001 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   7    1  |1 1>+          0.24035949  0.00735463  0.00000016 -0.01614668 -0.00000217 -0.00000190  0.00001808 -0.10304571
                           0.00000006  0.00000001  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   8    1  |1 1>+          0.00004855 -0.00000852 -0.00000044 -0.00000202  0.01676817 -0.00000551 -0.09333681 -0.00001985
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   9    1  |1 1>+         -0.00001234 -0.00002888  0.32664845 -0.00000378  0.00000849 -0.31818462  0.00001877 -0.00000017
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  10    1  |1 1>+         -0.01943716  0.63583481  0.00005871 -0.00000000  0.00000005 -0.00005502  0.00000619  0.00000232
                           0.00000003 -0.00000006  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  11    1  |1 1>+          0.00000764 -0.00002564  0.00000849 -0.00002060 -0.32666466  0.00001877  0.31818474  0.00000100
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  12    1  |1 1>+         -0.00001491 -0.00000046  0.00001005  0.86714615 -0.00005467 -0.00000000 -0.00000000 -0.00000536
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   1    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00227641  0.00006956 -0.00000010 -0.00881664  0.00000056  0.00000000  0.00000003 -0.00862148

   2    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000015 -0.00000570  0.00000023 -0.00000056 -0.00881658  0.00000051  0.00862174  0.00000003

   3    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00005464  0.00179191  0.00000000 -0.00000000 -0.00002857  0.00000021  0.00002818 -0.00000010

   4    1  |1 0>           0.00000006  0.00000001 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.21765748 -0.00665074 -0.00000022 -0.01676913  0.00000106 -0.00000395 -0.00000029  0.09333841

   5    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000075 -0.00000412  0.01933128 -0.00000022  0.00000052 -0.01140045  0.00000075 -0.00000001

   6    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000295 -0.00000992  0.00000033 -0.00000106 -0.01676529 -0.00002492 -0.09333223 -0.00000029

   7    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00001860 -0.00012616 -0.00118130  0.00000037  0.00000172 -0.18633090  0.00002072 -0.00000205

   8    1  |1 0>          -0.00000001  0.00000003 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00974988  0.31851340 -0.00000022  0.00000000  0.00000000 -0.00003893 -0.00000628 -0.00000032

   9    1  |1 0>          -0.00000015 -0.00000003 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.56510598  0.01726737 -0.00000379 -0.32664308  0.00007930 -0.00000017  0.00005619  0.31814680

  10    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00009393  0.00002878  0.00000848 -0.00007930 -0.32664797 -0.00001878 -0.31818244  0.00005619

  11    1  |1 0>          -0.00000002  0.00000004 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.01356792  0.44495008 -0.00000000 -0.00000000 -0.00000005 -0.00000752 -0.00000899  0.00000356

  12    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.86714761 -0.00001004  0.00002253 -0.00000089 -0.00000000  0.00000000

   1    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00002364  0.00076878 -0.00000000  0.00000000  0.00000000 -0.00000026 -0.00000041  0.00000003

   2    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000731 -0.00000057  0.00881659 -0.00002867  0.00000023 -0.00862170  0.00000051  0.00002793

   3    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00227591  0.00006954  0.00002867  0.00881667 -0.00000056 -0.00002793  0.00000003 -0.00862135

   4    1  |1 1>-         -0.00000002  0.00000004  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.01271355  0.41631806  0.00000000  0.00000000  0.00000036  0.00000157 -0.00000096 -0.00000172

   5    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000533 -0.00001775  0.00000024 -0.00000055 -0.00864295 -0.00000978 -0.16706359 -0.00000055

   6    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000609 -0.00003289 -0.01677649  0.00000019  0.00000136 -0.09333550 -0.00000331 -0.00000005

   7    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00004431 -0.00001631  0.00000130 -0.00000210  0.01733169  0.00000480 -0.08329244 -0.00001802

   8    1  |1 1>-          0.00000006  0.00000001  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.21766236 -0.00665089  0.00000019  0.01677021  0.00000224 -0.00000005 -0.00001619  0.09334044

   9    1  |1 1>-         -0.00000001  0.00000002  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00586941  0.19089017 -0.00005871 -0.00000000 -0.00000000 -0.00004750  0.00001518 -0.00000125

  10    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00001469 -0.00005109  0.32665593 -0.00000384  0.00000849  0.31818576 -0.00001877  0.00000012

  11    1  |1 1>-         -0.00000015 -0.00000003  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.56509310  0.01726698  0.00000384  0.32666928 -0.00002060 -0.00000012 -0.00000100  0.31815340

  12    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00002253  0.00005467  0.86714592  0.00000000  0.00000209 -0.00000000

   1    1  |0 0>          -0.00000363  0.00010654 -0.00000011  0.00000000 -0.00000000  0.00035592 -0.00000195  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   2    1  |0 0>          -0.01552596 -0.00051870 -0.00000000 -0.00000037  0.00000000  0.00000002  0.00000471  0.00035652
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   3    1  |0 0>           0.00020198  0.00008422 -0.00000000  0.00000000  0.00000026  0.00000194  0.00035591 -0.00000470
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   4    1  |0 0>          -0.00021690  0.01003252  0.00000000  0.00000000  0.00000000 -0.00000215  0.00000046 -0.00000207
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   5    1  |0 0>          -0.00049731  0.01185088  0.00000000 -0.00000000 -0.00000000 -0.00000132 -0.00000268  0.00000311
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   6    1  |0 0>           0.00000000 -0.00000001 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   7    1  |0 0>           0.00000000 -0.00000000 -0.18318933  0.00000212 -0.00000476  0.00000054  0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   8    1  |0 0>          -0.00000437 -0.00000013  0.00000212  0.18318308  0.00003238 -0.00000000 -0.00000000 -0.00000239
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   9    1  |0 0>          -0.00000000  0.00000000  0.00000476  0.00003238 -0.18318417 -0.00000000 -0.00000105 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  10    1  |0 0>          -0.00000771  0.00004168 -0.00000222  0.00000000 -0.00000000  0.86318946  0.00000451  0.00000044
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  11    1  |0 0>          -0.27525169 -0.00841223 -0.00000000 -0.00000545  0.00000000 -0.00000044 -0.00000238  0.86321232
                          -0.00000007 -0.00000001  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  12    1  |0 0>          -0.00000356  0.00001077  0.00000000  0.00000000  0.00000472 -0.00000451  0.86319121  0.00000238
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  13    1  |0 0>          -0.00444695  0.14508958  0.00000000  0.00000000  0.00000000  0.00000233 -0.00000061  0.00000042
                           0.00000001 -0.00000001 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  14    1  |0 0>          -0.00714007  0.23388435 -0.00000000  0.00000000 -0.00000000 -0.00000139 -0.00000124 -0.00000217
                           0.00000001 -0.00000002  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  15    1  |0 0>           0.00000005 -0.00000162 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 State Sym Spin     / Nr.     49          50          51

   1    1  |1 1>+          0.00000020 -0.00000013 -0.00000000
                           0.00000000  0.00000000 -0.00000000

   2    1  |1 1>+          0.00718997  0.00688537  0.00891005
                           0.00000000  0.00000000 -0.00000000

   3    1  |1 1>+          0.00002297  0.00002245  0.00002887
                           0.00000000  0.00000000 -0.00000000

   4    1  |1 1>+          0.00000214 -0.00000144 -0.00000000
                           0.00000000 -0.00000000 -0.00000000

   5    1  |1 1>+         -0.00000021  0.00000164 -0.00000000
                           0.00000000 -0.00000000 -0.00000000

   6    1  |1 1>+          0.12912048 -0.13483251  0.00000305
                           0.00000000 -0.00000000 -0.00000000

   7    1  |1 1>+         -0.00001338  0.00001303  0.00000000
                          -0.00000000  0.00000000 -0.00000000

   8    1  |1 1>+         -0.00000359  0.00000146 -0.00000000
                          -0.00000000  0.00000000  0.00000000

   9    1  |1 1>+          0.00004038  0.00005058  0.00003644
                           0.00000000  0.00000000 -0.00000000

  10    1  |1 1>+         -0.26530951 -0.25407166 -0.20271524
                          -0.00000000 -0.00000001  0.00000000

  11    1  |1 1>+          0.00001220 -0.00000501 -0.00000003
                           0.00000000 -0.00000000  0.00000000

  12    1  |1 1>+         -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000

   1    1  |1 0>           0.00000000 -0.00000000  0.00000000
                           0.00000001 -0.00000008 -0.00000000

   2    1  |1 0>          -0.00000000  0.00000000  0.00000000
                           0.00000800 -0.00003147  0.00002887

   3    1  |1 0>           0.00000000 -0.00000000 -0.00000000
                          -0.00236779  0.00966933 -0.00891013

   4    1  |1 0>          -0.00000000  0.00000000 -0.00000000
                          -0.00000006  0.00000092  0.00000000

   5    1  |1 0>           0.00000000 -0.00000000 -0.00000000
                          -0.00000031  0.00000016  0.00000000

   6    1  |1 0>           0.00000000 -0.00000000 -0.00000000
                          -0.00000359  0.00000146  0.00000000

   7    1  |1 0>           0.00000000  0.00000000  0.00000000
                          -0.00003878 -0.00000557  0.00000000

   8    1  |1 0>          -0.00000000 -0.00000000 -0.00000000
                           0.18133401  0.04440720 -0.00000020

   9    1  |1 0>          -0.00000000  0.00000000  0.00000000
                          -0.00000021  0.00000313 -0.00000000

  10    1  |1 0>           0.00000000 -0.00000000 -0.00000000
                          -0.00001225  0.00000503 -0.00000003

  11    1  |1 0>          -0.00000000  0.00000001  0.00000000
                           0.08737555 -0.35680080  0.20271815

  12    1  |1 0>           0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000

   1    1  |1 1>-         -0.00000000  0.00000000 -0.00000000
                           0.00955802 -0.00278412 -0.00891004

   2    1  |1 1>-         -0.00000000  0.00000000 -0.00000000
                          -0.00000020  0.00000013 -0.00000000

   3    1  |1 1>-          0.00000000 -0.00000000  0.00000000
                           0.00000001 -0.00000008 -0.00000000

   4    1  |1 1>-         -0.00000000 -0.00000001 -0.00000000
                           0.05220790  0.17923564 -0.00000040

   5    1  |1 1>-          0.00000000 -0.00000000 -0.00000000
                          -0.00000643  0.00000261  0.00000000

   6    1  |1 1>-          0.00000000 -0.00000000 -0.00000000
                          -0.00000214  0.00000144  0.00000000

   7    1  |1 1>-          0.00000000 -0.00000000  0.00000000
                          -0.00000430 -0.00000246 -0.00000000

   8    1  |1 1>-         -0.00000000  0.00000000 -0.00000000
                          -0.00000006  0.00000092  0.00000000

   9    1  |1 1>-          0.00000000 -0.00000000  0.00000000
                          -0.35268841  0.10273328  0.20271325

  10    1  |1 1>-          0.00000000 -0.00000000  0.00000000
                          -0.00005609  0.00001355  0.00003644

  11    1  |1 1>-         -0.00000000  0.00000000  0.00000000
                          -0.00000021  0.00000312  0.00000000

  12    1  |1 1>-          0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000

   1    1  |0 0>           0.00000198  0.00000156 -0.00000000
                           0.00000000  0.00000000  0.00000000

   2    1  |0 0>           0.00000243 -0.00000280 -0.00000000
                           0.00000000 -0.00000000  0.00000000

   3    1  |0 0>          -0.00000081  0.00000266  0.00000000
                          -0.00000000  0.00000000 -0.00000000

   4    1  |0 0>           0.00035422  0.00004337 -0.00000000
                           0.00000000  0.00000000  0.00000000

   5    1  |0 0>          -0.00004334  0.00035415  0.00000000
                          -0.00000000  0.00000000 -0.00000000

   6    1  |0 0>           0.00000004 -0.00000002 -0.00638266
                           0.00000000 -0.00000000  0.00000000

   7    1  |0 0>          -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000

   8    1  |0 0>          -0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000

   9    1  |0 0>          -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000

  10    1  |0 0>          -0.00000229  0.00000145  0.00000000
                          -0.00000000  0.00000000 -0.00000000

  11    1  |0 0>          -0.00000037  0.00000218 -0.00000000
                           0.00000000 -0.00000000  0.00000000

  12    1  |0 0>           0.00000064  0.00000122  0.00000000
                           0.00000000 -0.00000000 -0.00000000

  13    1  |0 0>           0.86295469 -0.02163020  0.00000010
                           0.00000001 -0.00000000 -0.00000000

  14    1  |0 0>           0.02163070  0.86295584  0.00000008
                           0.00000000  0.00000003 -0.00000000

  15    1  |0 0>          -0.00000075  0.00000088  0.93618391
                          -0.00000000  0.00000000 -0.00000000


  No SO block in symmetry 2


 Summary of SO results
 =====================

 Eigenvalues of the spin-orbit matrix
 ....................................

     Nr  Sym         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
                   (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1   1   -214.30365172     -0.01332080    -2923.58      0.00000000        0.00      0.0000
     2   1   -214.29561567     -0.00528475    -1159.87      0.00803605     1763.71      0.2187
     3   1   -214.29561566     -0.00528474    -1159.87      0.00803606     1763.71      0.2187
     4   1   -214.29561565     -0.00528473    -1159.86      0.00803607     1763.71      0.2187
     5   1   -214.28747188      0.00285904      627.49      0.01617984     3551.06      0.4403
     6   1   -214.28747186      0.00285905      627.49      0.01617985     3551.07      0.4403
     7   1   -214.28747181      0.00285911      627.50      0.01617991     3551.08      0.4403
     8   1   -214.28747181      0.00285911      627.50      0.01617991     3551.08      0.4403
     9   1   -214.28747180      0.00285912      627.50      0.01617992     3551.08      0.4403
    10   1   -214.26201203      0.02831889     6215.28      0.04163969     9138.86      1.1331
    11   1   -214.26201202      0.02831889     6215.28      0.04163969     9138.86      1.1331
    12   1   -214.26201201      0.02831891     6215.28      0.04163971     9138.86      1.1331
    13   1   -214.26201197      0.02831895     6215.29      0.04163975     9138.87      1.1331
    14   1   -214.26201196      0.02831896     6215.29      0.04163976     9138.87      1.1331
    15   1   -214.22309308      0.06723783    14757.00      0.08055863    17680.58      2.1921
    16   1   -214.11093955      0.17939137    39371.86      0.19271217    42295.43      5.2440
    17   1   -214.11093951      0.17939141    39371.86      0.19271221    42295.44      5.2440
    18   1   -214.11093946      0.17939146    39371.87      0.19271226    42295.45      5.2440
    19   1   -214.10697097      0.18335994    40242.86      0.19668074    43166.43      5.3520
    20   1   -214.10697090      0.18336001    40242.87      0.19668081    43166.45      5.3520
    21   1   -214.10697087      0.18336005    40242.88      0.19668085    43166.46      5.3520
    22   1   -214.10643783      0.18389309    40359.87      0.19721389    43283.45      5.3665
    23   1   -214.10643782      0.18389310    40359.87      0.19721390    43283.45      5.3665
    24   1   -214.10643775      0.18389317    40359.89      0.19721397    43283.46      5.3665
    25   1   -214.10643766      0.18389325    40359.90      0.19721405    43283.48      5.3665
    26   1   -214.10643766      0.18389325    40359.90      0.19721405    43283.48      5.3665
    27   1   -214.10516368      0.18516724    40639.51      0.19848804    43563.09      5.4011
    28   1   -214.09346204      0.19686887    43207.72      0.21018967    46131.30      5.7196
    29   1   -214.09346204      0.19686888    43207.72      0.21018968    46131.30      5.7196
    30   1   -214.09346198      0.19686894    43207.74      0.21018974    46131.32      5.7196
    31   1   -214.09172481      0.19860611    43589.00      0.21192691    46512.58      5.7668
    32   1   -214.09172476      0.19860616    43589.01      0.21192696    46512.59      5.7668
    33   1   -214.09172473      0.19860619    43589.02      0.21192699    46512.60      5.7668
    34   1   -214.09172469      0.19860623    43589.03      0.21192703    46512.61      5.7668
    35   1   -214.09172464      0.19860628    43589.04      0.21192708    46512.62      5.7668
    36   1   -214.09172447      0.19860645    43589.08      0.21192725    46512.66      5.7668
    37   1   -214.09172446      0.19860646    43589.08      0.21192726    46512.66      5.7668
    38   1   -214.09062698      0.19970394    43829.95      0.21302474    46753.53      5.7967
    39   1   -214.09062694      0.19970398    43829.96      0.21302478    46753.54      5.7967
    40   1   -214.09062689      0.19970403    43829.97      0.21302483    46753.55      5.7967
    41   1   -214.09062687      0.19970404    43829.97      0.21302484    46753.55      5.7967
    42   1   -214.09062687      0.19970404    43829.97      0.21302484    46753.55      5.7967
    43   1   -214.08820823      0.20212269    44360.80      0.21544349    47284.38      5.8625
    44   1   -214.08820822      0.20212270    44360.81      0.21544350    47284.38      5.8625
    45   1   -214.08820821      0.20212271    44360.81      0.21544351    47284.38      5.8625
    46   1   -214.08566621      0.20466470    44918.71      0.21798550    47842.29      5.9317
    47   1   -214.08566605      0.20466487    44918.75      0.21798566    47842.32      5.9317
    48   1   -214.08566541      0.20466550    44918.89      0.21798630    47842.46      5.9317
    49   1   -214.08566501      0.20466591    44918.98      0.21798671    47842.55      5.9317
    50   1   -214.08566483      0.20466608    44919.01      0.21798688    47842.59      5.9317
    51   1   -214.07689600      0.21343492    46843.55      0.22675572    49767.13      6.1703

 E0 =   -214.29033092 is the energy of the lowest zeroth-order state
 E1 =   -214.30365172 is the energy of the lowest SO-state


 Spin-orbit eigenvectors   (columnwise and corresponding to the eigenvalues in ascending order)
 .......................

        Basis states           Eigenvectors (columnwise)

   Total
 Nr Sym  State Sym Spin / Nr.        1           2           3           4           5           6           7           8

  1  1     1    1  |1 1>+       0.00000001  0.00207097  0.00005911  0.70698383 -0.00003942 -0.00059915  0.00265076 -0.00457647
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  2  1     2    1  |1 1>+      -0.56715130 -0.00000009 -0.00229092  0.00000020  0.23787250  0.74113742  0.00300361 -0.00027947
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000010 -0.00000001  0.00000000 -0.00000000

  3  1     3    1  |1 1>+      -0.00183781  0.00002681  0.70698377 -0.00005919  0.00128929  0.00297132 -0.67390058 -0.01584504
                                0.00000000 -0.00000000  0.00000004 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  4  1     4    1  |1 1>+      -0.00000000  0.00001260  0.00000036  0.00427039  0.00000037  0.00000562 -0.00002485  0.00004277
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  5  1     5    1  |1 1>+      -0.00000000  0.00272151 -0.00000011 -0.00000797 -0.00000794  0.00000746 -0.00024752  0.01053931
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  6  1     6    1  |1 1>+      -0.00000008  0.00000043  0.00000000 -0.00000000  0.01203798 -0.00386371  0.00000572  0.00001122
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  7  1     7    1  |1 1>+      -0.00000000  0.00411191 -0.00000097 -0.00001213  0.00000399 -0.00000453  0.00016263 -0.00697624
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  8  1     8    1  |1 1>+      -0.00000000  0.00000094  0.00427041 -0.00000036 -0.00000486 -0.00000534  0.00631965  0.00014725
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  9  1     9    1  |1 1>+      -0.00000135 -0.00000948 -0.00000027 -0.00323671 -0.00000029 -0.00000254  0.00000920 -0.00001588
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 10  1    10    1  |1 1>+       0.00749302 -0.00000000  0.00000000 -0.00000058  0.00082570  0.00257229  0.00000285 -0.00000115
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 11  1    11    1  |1 1>+       0.00000000 -0.00000012 -0.00323670  0.00000027  0.00000180  0.00000198 -0.00233893 -0.00005499
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 12  1    12    1  |1 1>+       0.00000000 -0.01351131  0.00000052  0.00003958  0.00000000 -0.00000000  0.00000000 -0.00000016
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 13  1     1    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.70698259  0.00002697  0.00207097 -0.00050687  0.00047681 -0.01582634  0.67389807

 14  1     2    1  |1 0>       -0.00000000  0.00000000 -0.00000004  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00183781  0.00002680  0.70698131 -0.00005919 -0.00298375 -0.00110299  0.67390348  0.01584252

 15  1     3    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000  0.00000031  0.00000000 -0.00000000  0.00000000
                                0.56715241  0.00000009  0.00229093 -0.00000019  0.76078036  0.16456255  0.00289783  0.00052258

 16  1     4    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00427038 -0.00000016 -0.00001250 -0.00000475  0.00000447 -0.00014841  0.00631950

 17  1     5    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00001442 -0.00000041 -0.00492205 -0.00000005 -0.00000068  0.00000303 -0.00000524

 18  1     6    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000016 -0.00427038  0.00000038 -0.00000486 -0.00000534  0.00631957  0.00014857

 19  1     7    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000079  0.00000047  0.00030126 -0.00000125 -0.00000886  0.00004897 -0.00008582

 20  1     8    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000004  0.00000000  0.00000000  0.00000006  0.00267293 -0.01235702 -0.00000867  0.00001061

 21  1     9    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00323671  0.00000046 -0.00000948 -0.00000176  0.00000166 -0.00005535  0.00233892

 22  1    10    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000046 -0.00323676  0.00000027 -0.00000180 -0.00000198  0.00233900  0.00005541

 23  1    11    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00749301  0.00000000 -0.00000000  0.00000000  0.00264052  0.00057112  0.00000248  0.00000164

 24  1    12    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00003958 -0.00000113 -0.01351123  0.00000000 -0.00000000  0.00000000 -0.00000000

 25  1     1    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000022  0.00000000 -0.00000000 -0.00000000
                                0.56715481  0.00000000  0.00000000 -0.00000001 -0.52291172  0.57657700  0.00010577 -0.00080205

 26  1     2    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000001 -0.00021995  0.00005920  0.70698560  0.00004105  0.00059760 -0.00259947  0.00239275

 27  1     3    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.70698685 -0.00002679  0.00021995 -0.00050673  0.00047875 -0.01583481  0.67390804

 28  1     4    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000001  0.00000000  0.00000009 -0.00000000 -0.00936503 -0.00849336 -0.00001427 -0.00000131

 29  1     5    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000008 -0.00219991  0.00000018 -0.00000870 -0.00000956  0.01131138  0.00026594

 30  1     6    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00001251  0.00000081  0.00427044 -0.00000037 -0.00000562  0.00002545 -0.00004290

 31  1     7    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000098  0.00441293 -0.00000082 -0.00000414 -0.00000459  0.00563931  0.00013139

 32  1     8    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00427036  0.00000100  0.00001251 -0.00000475  0.00000447 -0.00014734  0.00631952

 33  1     9    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00749302  0.00000000  0.00000000  0.00000058 -0.00181488  0.00200118  0.00000037 -0.00000279

 34  1    10    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000135 -0.00000948 -0.00000027 -0.00323668 -0.00000019  0.00000244 -0.00000920  0.00001588

 35  1    11    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00323672  0.00000012  0.00000948 -0.00000176  0.00000165 -0.00005493  0.00233897

 36  1    12    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000051  0.01351140 -0.00000113 -0.00000000  0.00000000 -0.00000011 -0.00000000

 37  1     1    1  |0 0>        0.00000000 -0.00000000  0.00000000  0.00000025  0.00044357  0.00181387 -0.00044515 -0.00208616
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 38  1     2    1  |0 0>       -0.00000000 -0.00000028 -0.00000001 -0.00000000 -0.00280611  0.00058845  0.01106635 -0.30122033
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 39  1     3    1  |0 0>        0.00000000  0.00000000 -0.00000051  0.00000000  0.00208949  0.00010738  0.30123424  0.01104404
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 40  1     4    1  |0 0>        0.00000002  0.00000000  0.00000000 -0.00000000 -0.09805701  0.28504577  0.00052623  0.00150034
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000004 -0.00000000  0.00000000  0.00000000

 41  1     5    1  |0 0>        0.00000030 -0.00000000  0.00000001 -0.00000000  0.28503258  0.09806380 -0.00191761 -0.00252706
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000012 -0.00000000 -0.00000000 -0.00000000

 42  1     6    1  |0 0>       -0.18559609  0.00000000  0.00000000 -0.00000000  0.00000012  0.00000009  0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 43  1     7    1  |0 0>       -0.00000000 -0.00002564 -0.00000073 -0.00875135  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 44  1     8    1  |0 0>       -0.00000000  0.00875136 -0.00000243 -0.00002564 -0.00000000  0.00000000 -0.00000000  0.00000003
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 45  1     9    1  |0 0>       -0.00000000  0.00000243  0.00875141 -0.00000074 -0.00000000  0.00000000  0.00000001  0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 46  1    10    1  |0 0>        0.00000000  0.00000000 -0.00000000 -0.00000002  0.00000025  0.00000702 -0.00003103  0.00005270
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 47  1    11    1  |0 0>       -0.00000000 -0.00000002  0.00000000 -0.00000000 -0.00000579  0.00000551 -0.00018228  0.00776153
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 48  1    12    1  |0 0>        0.00000000 -0.00000000  0.00000002 -0.00000000  0.00000572  0.00000677 -0.00776220 -0.00018250
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 49  1    13    1  |0 0>       -0.00000014  0.00000000 -0.00000000 -0.00000000  0.00357308 -0.00689277 -0.00000357  0.00000752
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 50  1    14    1  |0 0>        0.00000008 -0.00000000 -0.00000000 -0.00000000 -0.00689275 -0.00357308 -0.00000815 -0.00000277
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 51  1    15    1  |0 0>        0.01979577 -0.00000000 -0.00000000  0.00000000  0.00000005 -0.00000002 -0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.        9          10          11          12          13          14          15          16

  1  1     1    1  |1 1>+      -0.67407788  0.00013683  0.00139939  0.00278044 -0.00065574 -0.21324879  0.00000000  0.00066096
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  2  1     2    1  |1 1>+      -0.00065896 -0.01793965 -0.13584467 -0.20458322 -0.00243176 -0.00356292 -0.10721528 -0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  3  1     3    1  |1 1>+      -0.00254520  0.00171862 -0.00409039 -0.00019741  0.21322562 -0.00068398 -0.00034742  0.00000006
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  4  1     4    1  |1 1>+       0.00632121  0.00000404  0.00003983  0.00007918 -0.00001867 -0.00607248 -0.00000000  0.43753659
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  5  1     5    1  |1 1>+      -0.00007253 -0.01000568  0.00155965 -0.00015957  0.00011042  0.00000139 -0.00000000  0.00002983
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  6  1     6    1  |1 1>+       0.00000268  0.00166196  0.00995404 -0.00675683  0.00017123 -0.00002224  0.00000008  0.00000001
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  7  1     7    1  |1 1>+       0.00004787  0.00662280 -0.00103339  0.00010633 -0.00007426 -0.00000079  0.00000000  0.00003588
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  8  1     8    1  |1 1>+       0.00002386  0.00005185 -0.00010414  0.00001328  0.00607196 -0.00001915 -0.00000000  0.00004125
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  9  1     9    1  |1 1>+      -0.00233956  0.00000396  0.00004031  0.00007975 -0.00001856 -0.00603699  0.00000136 -0.02644700
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 10  1    10    1  |1 1>+      -0.00000274 -0.00050768 -0.00384589 -0.00579159 -0.00004928 -0.00010201 -0.00757950 -0.00000475
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 11  1    11    1  |1 1>+      -0.00000883  0.00005030 -0.00010334  0.00001318  0.00603657 -0.00001904 -0.00000000 -0.00000249
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 12  1    12    1  |1 1>+       0.00000000  0.00000018 -0.00000003  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00001816
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 13  1     1    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00463787  0.21068915 -0.03284167  0.00336018 -0.00232516 -0.00002936  0.00000000 -0.00000007

 14  1     2    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00254367 -0.00165315  0.00443665 -0.00051851 -0.21321875  0.00067694 -0.00034742  0.00000006

 15  1     3    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00018291 -0.03814289 -0.24270024  0.01635221 -0.00456808 -0.00138987  0.10721530  0.00000000

 16  1     4    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00004376 -0.00599961  0.00093520 -0.00009569  0.00006621  0.00000109  0.00000000  0.00004745

 17  1     5    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00077212 -0.00000048 -0.00000487 -0.00000967  0.00000228  0.00074172  0.00000000 -0.50426421

 18  1     6    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00002253  0.00005059 -0.00010395  0.00001324  0.00607210 -0.00001789  0.00000000 -0.00003846

 19  1     7    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.01261877 -0.00000767 -0.00007940 -0.00015575  0.00003664  0.01212218  0.00000000  0.03085190

 20  1     8    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000832  0.00006463 -0.00082578 -0.01211679  0.00001127 -0.00016109 -0.00000005  0.00000573

 21  1     9    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00001610  0.00596454 -0.00092975  0.00009513 -0.00006474 -0.00000083 -0.00000000  0.00000283

 22  1    10    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000882 -0.00004923  0.00010317 -0.00001316 -0.00603651  0.00001904 -0.00000000 -0.00000249

 23  1    11    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000066 -0.00107963 -0.00687097  0.00046291 -0.00010976 -0.00003941  0.00757951  0.00000000

 24  1    12    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000005  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000004 -0.00000000  0.16978446

 25  1     1    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00047605  0.02020333  0.10685604 -0.22093648  0.00213633 -0.00217306  0.10721585  0.00000000

 26  1     2    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.67409065 -0.00081955 -0.00129296 -0.00279131  0.00066327  0.21324780  0.00000000  0.00066091

 27  1     3    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00245355  0.21068760 -0.03284603  0.00335115 -0.00232303  0.00066165 -0.00000000  0.00000221

 28  1     4    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000805 -0.00159665 -0.01077992 -0.00535986 -0.00015986 -0.00014116 -0.00000002  0.00000000

 29  1     5    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00004269  0.00009056 -0.00018604  0.00002373  0.01086813 -0.00003428  0.00000000 -0.00002162

 30  1     6    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00632123 -0.00000389 -0.00003986 -0.00007917  0.00001925  0.00607242 -0.00000000  0.43753224

 31  1     7    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00002195  0.00004632 -0.00009270  0.00001197  0.00541829 -0.00001772 -0.00000000 -0.00000293

 32  1     8    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00004349 -0.00599962  0.00093519 -0.00009568  0.00006725  0.00000083 -0.00000000 -0.00004680

 33  1     9    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000207  0.00057194  0.00302501 -0.00625447  0.00006047 -0.00006260  0.00757951  0.00000475

 34  1    10    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00233949 -0.00000377 -0.00003907 -0.00007984  0.00001857  0.00603705  0.00000136 -0.02644163

 35  1    11    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00001610  0.00596449 -0.00092973  0.00009512 -0.00006582 -0.00000083  0.00000000 -0.00000283

 36  1    12    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000013  0.00000000 -0.00000000 -0.00001600

 37  1     1    1  |0 0>       -0.30143094 -0.00025083 -0.00297819 -0.00651747 -0.00219397  0.95324075 -0.00000000  0.00000006
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 38  1     2    1  |0 0>        0.00206777  0.94030384 -0.15538064  0.02013263  0.00208975 -0.00009557  0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 39  1     3    1  |0 0>       -0.00051757 -0.00331457 -0.00712492  0.00088450  0.95323493  0.00217687 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 40  1     4    1  |0 0>        0.00155977 -0.02791706 -0.04564793  0.95174383 -0.00133589  0.00635419  0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 41  1     5    1  |0 0>        0.00102984  0.15415047  0.93938020  0.04956481  0.00750376  0.00333159 -0.00000004 -0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 42  1     6    1  |0 0>       -0.00000000  0.00000001  0.00000005 -0.00000001  0.00000000  0.00000000  0.98250626  0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 43  1     7    1  |0 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.57590518
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 44  1     8    1  |0 0>       -0.00000000  0.00000002 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00006159
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 45  1     9    1  |0 0>        0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00005430
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 46  1    10    1  |0 0>        0.00776418 -0.00000214 -0.00002196 -0.00004383  0.00001054  0.00335595  0.00000000 -0.00000096
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 47  1    11    1  |0 0>       -0.00005342  0.00331546 -0.00051683  0.00005287 -0.00003659 -0.00000046 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 48  1    12    1  |0 0>       -0.00002979  0.00002797 -0.00005737  0.00000721  0.00335569 -0.00001080  0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 49  1    13    1  |0 0>        0.00000605 -0.00015346 -0.00064680  0.00328939 -0.00001672  0.00003868 -0.00000004 -0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 50  1    14    1  |0 0>        0.00000344  0.00049691  0.00325185  0.00066251  0.00005012  0.00003009  0.00000002 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 51  1    15    1  |0 0>        0.00000000 -0.00000000 -0.00000003  0.00000001 -0.00000000 -0.00000000  0.00483608  0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.       17          18          19          20          21          22          23          24

  1  1     1    1  |1 1>+       0.00000007  0.00000006 -0.00688651  0.00000002  0.00000057 -0.00501062  0.00001069 -0.00000010
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  2  1     2    1  |1 1>+      -0.00000000  0.00000214  0.00000000  0.00000000  0.00002231  0.00000072 -0.00001624  0.00344394
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  3  1     3    1  |1 1>+       0.00000030 -0.00066104 -0.00000057 -0.00000043 -0.00688634  0.00001070  0.00501076  0.00001146
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  4  1     4    1  |1 1>+       0.00003795  0.00004126  0.23296090 -0.00000527 -0.00001914 -0.33232510  0.00070924 -0.00000692
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  5  1     5    1  |1 1>+      -0.27886451 -0.00012588 -0.00000036 -0.14845340  0.00000920  0.00001366 -0.00006117  0.00009739
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  6  1     6    1  |1 1>+      -0.00004411 -0.00000002  0.00000001 -0.00002349  0.00000000  0.00008119  0.00004938 -0.53408615
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000015

  7  1     7    1  |1 1>+      -0.42126684 -0.00010711 -0.00000544 -0.22433105 -0.00003031 -0.00000223 -0.00002282 -0.00000855
                                0.00000000  0.00000000 -0.00000000 -0.00000001 -0.00000000  0.00000000 -0.00000000  0.00000000

  8  1     8    1  |1 1>+       0.00011747 -0.43752409  0.00001914 -0.00002818  0.23297010  0.00070924  0.33232448  0.00002007
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  9  1     9    1  |1 1>+      -0.00000283 -0.00000250  0.47768984 -0.00000118 -0.00003926  0.28124807 -0.00060023  0.00004061
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 10  1    10    1  |1 1>+      -0.00000000 -0.00000000  0.00008585 -0.00000000 -0.00000008  0.00000844  0.00000028 -0.19331850
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000005

 11  1    11    1  |1 1>+      -0.00001195  0.02644740  0.00003925  0.00002983  0.47768218 -0.00060023 -0.28125361 -0.00001702
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 12  1    12    1  |1 1>+      -0.16978466 -0.00007672  0.00000107  0.43311229 -0.00002704  0.00000001  0.00000001 -0.00000001
                                0.00000000  0.00000000  0.00000000  0.00000001  0.00000000  0.00000000  0.00000000  0.00000000

 13  1     1    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00066125  0.00000030 -0.00000002 -0.00688663  0.00000043 -0.00000012  0.00000055 -0.00000088

 14  1     2    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000030 -0.00066120 -0.00000057 -0.00000043 -0.00688646 -0.00001069 -0.00501058 -0.00001893

 15  1     3    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000214 -0.00000000 -0.00000000 -0.00002231 -0.00000027 -0.00001661  0.00574916

 16  1     4    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000001  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.43753782 -0.00019770 -0.00000023 -0.23296306  0.00001454  0.00002209 -0.00003666  0.00005813

 17  1     5    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00005391 -0.00004793 -0.26850085  0.00000066  0.00002226  0.04059071 -0.00008691  0.00000082

 18  1     6    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00019770  0.43753507 -0.00001766 -0.00001455 -0.23297308  0.00077833  0.33231487  0.00002007

 19  1     7    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00001249 -0.00004265  0.01643641  0.00000483  0.00002290  0.66337995 -0.00145037 -0.00000056

 20  1     8    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000002
                                0.00000000 -0.00000001  0.00000306  0.00000000  0.00000001  0.00024145  0.00002381  0.07556345

 21  1     9    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000002 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.02645861 -0.00001671  0.00000117  0.47769804 -0.00011569  0.00000684 -0.00008153  0.00004919

 22  1    10    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00001671  0.02645922  0.00003925  0.00011568  0.47768951  0.00060023  0.28124782  0.00001704

 23  1    11    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000009
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000008  0.00001330  0.00002111 -0.32263731

 24  1    12    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00001815  0.00001601 -0.43311161  0.00000107  0.00003559  0.00000622 -0.00000001 -0.00000000

 25  1     1    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000099  0.00000037 -0.00230451

 26  1     2    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000221  0.00000006 -0.00688638 -0.00002230  0.00000057  0.00501070 -0.00001070  0.00000011

 27  1     3    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00066104 -0.00000030 -0.00002230  0.00688624 -0.00000043  0.00001611  0.00000052 -0.00000088

 28  1     4    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000017
                                0.00000001 -0.00000947  0.00000001  0.00000000  0.00000505  0.00003407 -0.00001907  0.60965636

 29  1     5    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00010198  0.22542117 -0.00001005 -0.00000757 -0.12000850  0.00126912  0.59480539  0.00003592

 30  1     6    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00004680 -0.00000562  0.23295882 -0.00000058  0.00000583  0.33232662 -0.00067786  0.00000692

 31  1     7    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00012106 -0.45212835 -0.00000448 -0.00002929  0.24074419  0.00059827  0.29654260  0.00000512

 32  1     8    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000001 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.43751995  0.00011174  0.00000057  0.23298417  0.00003122  0.00000831  0.00001997  0.00005812

 33  1     9    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000004
                                0.00000000 -0.00000000 -0.00008586  0.00000000  0.00000000 -0.00000486 -0.00002084  0.12936529

 34  1    10    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000283 -0.00000250  0.47768548 -0.00000110 -0.00003925 -0.28125232  0.00060023  0.00001739

 35  1    11    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000002  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.02645127  0.00001195 -0.00000110 -0.47767204  0.00002982  0.00000688 -0.00003100  0.00004920

 36  1    12    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00007672  0.16978105  0.00003559  0.00002704  0.43311545 -0.00000003 -0.00001291 -0.00000000

 37  1     1    1  |0 0>       -0.00000000  0.00000000 -0.00000008  0.00000000  0.00000000 -0.01287089  0.00009720  0.00004687
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 38  1     2    1  |0 0>       -0.00000030 -0.00000000  0.00000000  0.00000039 -0.00000000 -0.00000090 -0.00017190 -0.00010923
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 39  1     3    1  |0 0>        0.00000000 -0.00000023 -0.00000000 -0.00000000 -0.00000009 -0.00009694 -0.01286979  0.00009814
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 40  1     4    1  |0 0>        0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00007976 -0.00001675 -0.00005609
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 41  1     5    1  |0 0>       -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00004794  0.00009624  0.01287105
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 42  1     6    1  |0 0>        0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000033
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 43  1     7    1  |0 0>        0.00006158  0.00005432 -0.41838380  0.00000103  0.00003437  0.00000603 -0.00000001 -0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 44  1     8    1  |0 0>        0.57591514  0.00012210 -0.00000104 -0.41837380 -0.00007422 -0.00000001 -0.00000001  0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000001 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 45  1     9    1  |0 0>       -0.00012211  0.57591218  0.00003438 -0.00007422  0.41837457 -0.00000003 -0.00001530 -0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 46  1    10    1  |0 0>       -0.00000000  0.00000000  0.00000338 -0.00000001 -0.00000000  0.42305391 -0.00087569  0.00000026
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 47  1    11    1  |0 0>        0.00000592  0.00000000 -0.00000000 -0.00001454  0.00000001 -0.00001042  0.00004678 -0.00007092
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 48  1    12    1  |0 0>       -0.00000000  0.00000437  0.00000000 -0.00000001  0.00000542  0.00087568  0.42305071  0.00001639
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 49  1    13    1  |0 0>        0.00000000  0.00000000 -0.00000001 -0.00000000 -0.00000000 -0.00006427 -0.00000588  0.06375129
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000002

 50  1    14    1  |0 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000950  0.00001567 -0.41818518
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000012

 51  1    15    1  |0 0>        0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000674
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.       25          26          27          28          29          30          31          32

  1  1     1    1  |1 1>+       0.00000089  0.00000013  0.00000000  0.00669697  0.00000167  0.00000063 -0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  2  1     2    1  |1 1>+       0.00464966  0.00004203 -0.00970102 -0.00000000 -0.00000000  0.00002170  0.00000018 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  3  1     3    1  |1 1>+       0.00001484  0.00000069 -0.00003144  0.00000063  0.00000087 -0.00669685  0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  4  1     4    1  |1 1>+       0.00005875  0.00000112 -0.00000000 -0.23239948 -0.00005332 -0.00002171 -0.00022123  0.00009797
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  5  1     5    1  |1 1>+      -0.00508150  0.55419726  0.00000000 -0.00003696  0.14807884  0.00001922  0.00001631 -0.63419509
                               -0.00000001  0.00000004  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000487

  6  1     6    1  |1 1>+       0.39559700  0.00368272  0.00002471 -0.00000001  0.00002343  0.00000000  0.57734976  0.00000258
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000012  0.00000000

  7  1     7    1  |1 1>+       0.00332214 -0.36683542 -0.00000000 -0.00005098  0.22372324 -0.00001506 -0.00002263 -0.06788047
                                0.00000000 -0.00000003 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000052

  8  1     8    1  |1 1>+      -0.00001425 -0.00003316  0.00000000 -0.00002171  0.00001233  0.23239388 -0.00001106 -0.00010552
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  9  1     9    1  |1 1>+      -0.00000277 -0.00000704  0.00009714  0.40546830  0.00010121  0.00003788 -0.00000002  0.00000001
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 10  1    10    1  |1 1>+      -0.26094806 -0.00235869 -0.54048506  0.00007288  0.00000002  0.00000007  0.00004453  0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 11  1    11    1  |1 1>+       0.00001254 -0.00003086 -0.00000009  0.00003787  0.00005283 -0.40546307  0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 12  1    12    1  |1 1>+       0.00000024 -0.00002675 -0.00000000 -0.00004428  0.17737501  0.00002311 -0.00000000 -0.00000627
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 13  1     1    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00004594 -0.00501058 -0.00000000 -0.00000167  0.00669680  0.00000087 -0.00000000 -0.00000028

 14  1     2    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000236 -0.00000053 -0.00003144  0.00000063  0.00000087 -0.00669683 -0.00000000  0.00000000

 15  1     3    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00065790 -0.00000704  0.00970081  0.00000000  0.00000000 -0.00002170  0.00000006  0.00000000

 16  1     4    1  |1 0>        0.00000000 -0.00000002  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000558
                               -0.00304681  0.33231235  0.00000000 -0.00005836  0.23239988  0.00003028 -0.00001672  0.72616875

 17  1     5    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000735 -0.00000108  0.00000000  0.26777591  0.00006684  0.00002521 -0.00012483  0.00004655

 18  1     6    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00001489  0.00003646  0.00000000  0.00002022  0.00003028 -0.23238491  0.00000373 -0.00007794

 19  1     7    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00024270 -0.00002570 -0.00000000 -0.01638737 -0.00000897  0.00002267 -0.00003719  0.00005720

 20  1     8    1  |1 0>        0.00000001  0.00000001 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000012  0.00000000
                                0.66030504  0.00604080  0.00000133 -0.00000304 -0.00000001  0.00000000 -0.57733216 -0.00001019

 21  1     9    1  |1 0>        0.00000000 -0.00000002 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00257840  0.28122370 -0.00000000 -0.00010122  0.40546592  0.00012570  0.00000000 -0.00004747

 22  1    10    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00001307  0.00008141 -0.00000008  0.00003785  0.00012571 -0.40546631 -0.00000000 -0.00000001

 23  1    11    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.03691797  0.00039492  0.54049236  0.00000000  0.00000000 -0.00000006  0.00001606  0.00000000

 24  1    12    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000001  0.00000000  0.00000000 -0.17736976 -0.00004427 -0.00001657  0.00000000 -0.00000000

 25  1     1    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00530729  0.00004906  0.00970113 -0.00000000 -0.00000000 -0.00000000  0.00000010 -0.00000000

 26  1     2    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000103  0.00001611  0.00000000  0.00669694  0.00002337  0.00000063  0.00000000 -0.00000000

 27  1     3    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00004594 -0.00501109 -0.00000000  0.00002337 -0.00669687 -0.00000087  0.00000000  0.00000002

 28  1     4    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000012 -0.00000000
                                0.26472311  0.00232048 -0.00001390 -0.00000000  0.00000000  0.00000503  0.57736882  0.00001020

 29  1     5    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00002663  0.00006517  0.00000000  0.00001138  0.00001566 -0.11970719 -0.00000245  0.00007056

 30  1     6    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00005869 -0.00000881 -0.00000000 -0.23239807 -0.00005801  0.00000319  0.00008754 -0.00005084

 31  1     7    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00001824 -0.00003072 -0.00000000  0.00000176  0.00001292  0.24010825  0.00000099  0.00000041

 32  1     8    1  |1 1>-       0.00000000 -0.00000002 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000197
                               -0.00304679  0.33230974  0.00000000  0.00005801 -0.23238334  0.00001538  0.00003009  0.25664711

 33  1     9    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.29788076 -0.00275376  0.54048342 -0.00007288 -0.00000001 -0.00000000  0.00001857 -0.00000000

 34  1    10    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000388  0.00000691  0.00009714  0.40546458  0.00010128  0.00003788  0.00000001 -0.00000000

 35  1    11    1  |1 1>-       0.00000000 -0.00000002  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00257872  0.28125751  0.00000001  0.00010128 -0.40546532 -0.00005282  0.00000000 -0.00003158

 36  1    12    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00001657  0.00002311 -0.17737187 -0.00000000  0.00000000

 37  1     1    1  |0 0>        0.00008009  0.00000106 -0.00000000  0.00000002  0.00000000  0.00000000  0.00000001  0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 38  1     2    1  |0 0>       -0.00004389  0.01287013  0.00000000 -0.00000000 -0.00000006 -0.00000000 -0.00000000  0.00000103
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 39  1     3    1  |0 0>       -0.00001515 -0.00017112 -0.00000000  0.00000000  0.00000000 -0.00000004  0.00000000 -0.00000001
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 40  1     4    1  |0 0>        0.01287147  0.00004320  0.00000013 -0.00000000  0.00000000 -0.00000000  0.00000064 -0.00000001
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 41  1     5    1  |0 0>        0.00005555  0.00011072 -0.00000041 -0.00000000 -0.00000000  0.00000000  0.00000050  0.00000001
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 42  1     6    1  |0 0>        0.00000014  0.00000000 -0.01395727 -0.00000000  0.00000000  0.00000000  0.00000001  0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 43  1     7    1  |0 0>        0.00000001  0.00000000  0.00000000  0.67797733  0.00016924  0.00006334 -0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 44  1     8    1  |0 0>       -0.00000026  0.00002908 -0.00000000 -0.00016923  0.67797672 -0.00007428 -0.00000000 -0.00002382
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 45  1     9    1  |0 0>       -0.00000000  0.00000001  0.00000000 -0.00006335  0.00007426  0.67797848  0.00000000 -0.00000001
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 46  1    10    1  |0 0>       -0.00006487 -0.00001111 -0.00000000 -0.00000142  0.00000000  0.00000000 -0.00000001  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 47  1    11    1  |0 0>        0.00387873 -0.42301730 -0.00000000 -0.00000000  0.00000689  0.00000000 -0.00000000  0.00002534
                                0.00000000 -0.00000003 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 48  1    12    1  |0 0>       -0.00000401  0.00004672  0.00000000  0.00000000 -0.00000000  0.00000390 -0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 49  1    13    1  |0 0>       -0.41817284 -0.00384500 -0.00000294  0.00000000  0.00000000  0.00000000  0.00001817 -0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 50  1    14    1  |0 0>       -0.06374868 -0.00051441  0.00000758 -0.00000000 -0.00000000  0.00000000  0.00001586  0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 51  1    15    1  |0 0>        0.00000146  0.00000002 -0.35091941  0.00000000  0.00000000 -0.00000000  0.00000038  0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.       33          34          35          36          37          38          39          40

  1  1     1    1  |1 1>+       0.00000051 -0.00000000  0.00000027 -0.00000000  0.00000000  0.00227794 -0.00000063  0.00000045
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  2  1     2    1  |1 1>+       0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000050  0.00000714  0.00059104
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  3  1     3    1  |1 1>+       0.00000000  0.00000005  0.00000000  0.00000000 -0.00000024 -0.00000064 -0.00227764  0.00000145
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  4  1     4    1  |1 1>+       0.72885278 -0.00018455  0.04598071 -0.00000441  0.00001081  0.21774517 -0.00006069  0.00004339
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  5  1     5    1  |1 1>+       0.00009053 -0.00007610 -0.00001741  0.11117504  0.00006528 -0.00000849 -0.00000433 -0.00002163
                               -0.00000000  0.00000000 -0.00000000 -0.00001193 -0.00000000  0.00000000 -0.00000000 -0.00000000

  6  1     6    1  |1 1>+       0.00017622 -0.00000086 -0.00001525  0.00004554 -0.00001019 -0.00006977 -0.00008255  0.42444650
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000002

  7  1     7    1  |1 1>+       0.00001303 -0.00004503 -0.00000007  0.71704546  0.00022930  0.00000107  0.00004437 -0.00003012
                               -0.00000000 -0.00000000 -0.00000000 -0.00007692 -0.00000000 -0.00000000  0.00000000  0.00000000

  8  1     8    1  |1 1>+       0.00009306  0.32822869 -0.00000402  0.00021543 -0.65237890 -0.00006070 -0.21778481 -0.00004468
                                0.00000000  0.00000008 -0.00000000 -0.00000002  0.00000001  0.00000000  0.00000000 -0.00000000

  9  1     9    1  |1 1>+       0.00007233 -0.00000002 -0.00001244  0.00000000  0.00000000  0.56534455 -0.00015757  0.00008632
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 10  1    10    1  |1 1>+       0.00000004 -0.00000000 -0.00000001 -0.00000000 -0.00000000 -0.00002425 -0.00005922  0.14675205
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000001

 11  1    11    1  |1 1>+       0.00000001  0.00003166  0.00000000  0.00000002 -0.00002324 -0.00015755 -0.56534258 -0.00011595
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 12  1    12    1  |1 1>+       0.00000000 -0.00000000 -0.00000000  0.00000397  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 13  1     1    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000016  0.00000000  0.00000005  0.00000003  0.00000013

 14  1     2    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000013  0.00000000  0.00000000 -0.00000013  0.00000063  0.00227797  0.00000670

 15  1     3    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000011  0.00000769 -0.00192316

 16  1     4    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000832 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00009291  0.00008882  0.00001253 -0.07752362 -0.00006758 -0.00001420 -0.00000263 -0.00001275

 17  1     5    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.46320481 -0.00022239  0.62006214 -0.00001465 -0.00004947 -0.02661729  0.00000761 -0.00000540

 18  1     6    1  |1 0>       -0.00000000 -0.00000018 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00021683  0.71372786  0.00010372 -0.00004740  0.15467861 -0.00010600 -0.21778421 -0.00004468

 19  1     7    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.45031530 -0.00011918 -0.36262617 -0.00000886  0.00002778 -0.43488588  0.00014391 -0.00014320

 20  1     8    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000001
                               -0.00009039  0.00000084 -0.00005356  0.00002922  0.00001020 -0.00019035 -0.00007551  0.29703729

 21  1     9    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000001 -0.00000000 -0.00000000 -0.00001563 -0.00000000  0.00001318 -0.00009478  0.00003309

 22  1    10    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000001 -0.00002426 -0.00000001 -0.00000001  0.00000308  0.00015756  0.56534729  0.00011606

 23  1    11    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000002
                                0.00000000  0.00000000 -0.00000000 -0.00000001  0.00000001  0.00002762  0.00007760 -0.47753531

 24  1    12    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000671  0.00000000 -0.00000943 -0.00000000 -0.00000000  0.00000520 -0.00000000 -0.00000000

 25  1     1    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000062 -0.00000055  0.00251412

 26  1     2    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000006 -0.00000000  0.00000052  0.00000000  0.00000000 -0.00227777  0.00000063 -0.00000045

 27  1     3    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000034 -0.00000000 -0.00000733  0.00000003  0.00000013

 28  1     4    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000001
                                0.00017622  0.00000053 -0.00001525 -0.00002923  0.00000524 -0.00003785  0.00000295 -0.12743554

 29  1     5    1  |1 1>-       0.00000000  0.00000016 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00014686 -0.61518657 -0.00011788  0.00003452 -0.08916272 -0.00010848 -0.38989463 -0.00007998

 30  1     6    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.22678377 -0.00006150  0.69419806  0.00000328  0.00000585 -0.21775106  0.00004012 -0.00004340

 31  1     7    1  |1 1>-       0.00000000 -0.00000002 -0.00000000 -0.00000002  0.00000001 -0.00000000 -0.00000000  0.00000000
                                0.00002433  0.06636130  0.00000953 -0.00023508  0.73656378 -0.00003149 -0.19437997 -0.00003719

 32  1     8    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00007335  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00001736  0.00006960  0.00000989  0.68372208  0.00021527 -0.00000509 -0.00003971 -0.00001276

 33  1     9    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000003
                                0.00000003 -0.00000000 -0.00000002  0.00000000 -0.00000000 -0.00005187 -0.00013682  0.62427783

 34  1    10    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00004710  0.00000001  0.00005820  0.00000001  0.00000000 -0.56534408  0.00015756 -0.00000049

 35  1    11    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00003391 -0.00000002  0.00001312  0.00000684  0.00003311

 36  1    12    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000063 -0.00000000  0.00000000 -0.00000736 -0.00000000 -0.00001029 -0.00000000

 37  1     1    1  |0 0>        0.00000146  0.00000000 -0.00000079 -0.00000000 -0.00000000  0.01553626 -0.00008851  0.00003759
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 38  1     2    1  |0 0>        0.00000000 -0.00000001 -0.00000000  0.00000068  0.00000000  0.00000072  0.00020557  0.00015452
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 39  1     3    1  |0 0>        0.00000001 -0.00000081 -0.00000000 -0.00000001  0.00000028  0.00008819  0.01553483 -0.00009019
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 40  1     4    1  |0 0>       -0.00000001 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00009745  0.00001784  0.01186069
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 41  1     5    1  |0 0>       -0.00000001  0.00000001  0.00000000  0.00000001 -0.00000000 -0.00005777 -0.00011571 -0.01003367
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 42  1     6    1  |0 0>       -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000005
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 43  1     7    1  |0 0>        0.00002045 -0.00000001  0.00002324  0.00000000  0.00000000 -0.00000179  0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 44  1     8    1  |0 0>        0.00000000 -0.00000001 -0.00000000  0.00001707  0.00000001 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 45  1     9    1  |0 0>        0.00000000  0.00001178  0.00000000 -0.00000001  0.00002345 -0.00000000  0.00000293  0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 46  1    10    1  |0 0>        0.00003965 -0.00000001 -0.00002327 -0.00000000  0.00000000  0.27542153 -0.00005908  0.00004641
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 47  1    11    1  |0 0>       -0.00000000  0.00000000 -0.00000000  0.00001664  0.00000001 -0.00000643 -0.00000323 -0.00001497
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 48  1    12    1  |0 0>       -0.00000001 -0.00001858 -0.00000000 -0.00000001  0.00000957  0.00005907  0.27542097  0.00004523
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 49  1    13    1  |0 0>        0.00000001 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00006153 -0.00004415  0.23399038
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000001

 50  1    14    1  |0 0>        0.00000001  0.00000000  0.00000000 -0.00000001  0.00000000 -0.00001113  0.00001461 -0.14516172
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000001

 51  1    15    1  |0 0>        0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000349
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.       41          42          43          44          45          46          47          48

  1  1     1    1  |1 1>+      -0.00000006  0.00000034  0.00881660 -0.00000010  0.00000023  0.00862180 -0.00000051  0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  2  1     2    1  |1 1>+      -0.00007828  0.00256062 -0.00000000  0.00000000  0.00002857 -0.00000006  0.00002777 -0.00000006
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  3  1     3    1  |1 1>+      -0.00000022  0.00000819  0.00000023 -0.00000056 -0.00881667 -0.00000051 -0.00862169 -0.00000003
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  4  1     4    1  |1 1>+      -0.00000106  0.00003304 -0.01677390 -0.00000014 -0.00000044  0.09333187 -0.00000551 -0.00000211
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  5  1     5    1  |1 1>+      -0.36311520 -0.01109526 -0.00000012 -0.01069350  0.00000067 -0.00000008 -0.00000046  0.15567214
                               -0.00000010 -0.00000002  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  6  1     6    1  |1 1>+       0.00299150 -0.09790592  0.00000000 -0.00000169  0.00000000 -0.00000505 -0.00000707 -0.00000919
                               -0.00000000  0.00000001 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  7  1     7    1  |1 1>+       0.24035949  0.00735463  0.00000016 -0.01614668 -0.00000217 -0.00000190  0.00001808 -0.10304571
                                0.00000006  0.00000001  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  8  1     8    1  |1 1>+       0.00004855 -0.00000852 -0.00000044 -0.00000202  0.01676817 -0.00000551 -0.09333681 -0.00001985
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  9  1     9    1  |1 1>+      -0.00001234 -0.00002888  0.32664845 -0.00000378  0.00000849 -0.31818462  0.00001877 -0.00000017
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 10  1    10    1  |1 1>+      -0.01943716  0.63583481  0.00005871 -0.00000000  0.00000005 -0.00005502  0.00000619  0.00000232
                                0.00000003 -0.00000006  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 11  1    11    1  |1 1>+       0.00000764 -0.00002564  0.00000849 -0.00002060 -0.32666466  0.00001877  0.31818474  0.00000100
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 12  1    12    1  |1 1>+      -0.00001491 -0.00000046  0.00001005  0.86714615 -0.00005467 -0.00000000 -0.00000000 -0.00000536
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 13  1     1    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00227641  0.00006956 -0.00000010 -0.00881664  0.00000056  0.00000000  0.00000003 -0.00862148

 14  1     2    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000015 -0.00000570  0.00000023 -0.00000056 -0.00881658  0.00000051  0.00862174  0.00000003

 15  1     3    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00005464  0.00179191  0.00000000 -0.00000000 -0.00002857  0.00000021  0.00002818 -0.00000010

 16  1     4    1  |1 0>        0.00000006  0.00000001 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.21765748 -0.00665074 -0.00000022 -0.01676913  0.00000106 -0.00000395 -0.00000029  0.09333841

 17  1     5    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000075 -0.00000412  0.01933128 -0.00000022  0.00000052 -0.01140045  0.00000075 -0.00000001

 18  1     6    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000295 -0.00000992  0.00000033 -0.00000106 -0.01676529 -0.00002492 -0.09333223 -0.00000029

 19  1     7    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00001860 -0.00012616 -0.00118130  0.00000037  0.00000172 -0.18633090  0.00002072 -0.00000205

 20  1     8    1  |1 0>       -0.00000001  0.00000003 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00974988  0.31851340 -0.00000022  0.00000000  0.00000000 -0.00003893 -0.00000628 -0.00000032

 21  1     9    1  |1 0>       -0.00000015 -0.00000003 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.56510598  0.01726737 -0.00000379 -0.32664308  0.00007930 -0.00000017  0.00005619  0.31814680

 22  1    10    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00009393  0.00002878  0.00000848 -0.00007930 -0.32664797 -0.00001878 -0.31818244  0.00005619

 23  1    11    1  |1 0>       -0.00000002  0.00000004 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.01356792  0.44495008 -0.00000000 -0.00000000 -0.00000005 -0.00000752 -0.00000899  0.00000356

 24  1    12    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.86714761 -0.00001004  0.00002253 -0.00000089 -0.00000000  0.00000000

 25  1     1    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00002364  0.00076878 -0.00000000  0.00000000  0.00000000 -0.00000026 -0.00000041  0.00000003

 26  1     2    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000731 -0.00000057  0.00881659 -0.00002867  0.00000023 -0.00862170  0.00000051  0.00002793

 27  1     3    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00227591  0.00006954  0.00002867  0.00881667 -0.00000056 -0.00002793  0.00000003 -0.00862135

 28  1     4    1  |1 1>-      -0.00000002  0.00000004  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.01271355  0.41631806  0.00000000  0.00000000  0.00000036  0.00000157 -0.00000096 -0.00000172

 29  1     5    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000533 -0.00001775  0.00000024 -0.00000055 -0.00864295 -0.00000978 -0.16706359 -0.00000055

 30  1     6    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000609 -0.00003289 -0.01677649  0.00000019  0.00000136 -0.09333550 -0.00000331 -0.00000005

 31  1     7    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00004431 -0.00001631  0.00000130 -0.00000210  0.01733169  0.00000480 -0.08329244 -0.00001802

 32  1     8    1  |1 1>-       0.00000006  0.00000001  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.21766236 -0.00665089  0.00000019  0.01677021  0.00000224 -0.00000005 -0.00001619  0.09334044

 33  1     9    1  |1 1>-      -0.00000001  0.00000002  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00586941  0.19089017 -0.00005871 -0.00000000 -0.00000000 -0.00004750  0.00001518 -0.00000125

 34  1    10    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00001469 -0.00005109  0.32665593 -0.00000384  0.00000849  0.31818576 -0.00001877  0.00000012

 35  1    11    1  |1 1>-      -0.00000015 -0.00000003  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.56509310  0.01726698  0.00000384  0.32666928 -0.00002060 -0.00000012 -0.00000100  0.31815340

 36  1    12    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00002253  0.00005467  0.86714592  0.00000000  0.00000209 -0.00000000

 37  1     1    1  |0 0>       -0.00000363  0.00010654 -0.00000011  0.00000000 -0.00000000  0.00035592 -0.00000195  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 38  1     2    1  |0 0>       -0.01552596 -0.00051870 -0.00000000 -0.00000037  0.00000000  0.00000002  0.00000471  0.00035652
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 39  1     3    1  |0 0>        0.00020198  0.00008422 -0.00000000  0.00000000  0.00000026  0.00000194  0.00035591 -0.00000470
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 40  1     4    1  |0 0>       -0.00021690  0.01003252  0.00000000  0.00000000  0.00000000 -0.00000215  0.00000046 -0.00000207
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 41  1     5    1  |0 0>       -0.00049731  0.01185088  0.00000000 -0.00000000 -0.00000000 -0.00000132 -0.00000268  0.00000311
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 42  1     6    1  |0 0>        0.00000000 -0.00000001 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 43  1     7    1  |0 0>        0.00000000 -0.00000000 -0.18318933  0.00000212 -0.00000476  0.00000054  0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 44  1     8    1  |0 0>       -0.00000437 -0.00000013  0.00000212  0.18318308  0.00003238 -0.00000000 -0.00000000 -0.00000239
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 45  1     9    1  |0 0>       -0.00000000  0.00000000  0.00000476  0.00003238 -0.18318417 -0.00000000 -0.00000105 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 46  1    10    1  |0 0>       -0.00000771  0.00004168 -0.00000222  0.00000000 -0.00000000  0.86318946  0.00000451  0.00000044
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 47  1    11    1  |0 0>       -0.27525169 -0.00841223 -0.00000000 -0.00000545  0.00000000 -0.00000044 -0.00000238  0.86321232
                               -0.00000007 -0.00000001  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 48  1    12    1  |0 0>       -0.00000356  0.00001077  0.00000000  0.00000000  0.00000472 -0.00000451  0.86319121  0.00000238
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 49  1    13    1  |0 0>       -0.00444695  0.14508958  0.00000000  0.00000000  0.00000000  0.00000233 -0.00000061  0.00000042
                                0.00000001 -0.00000001 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 50  1    14    1  |0 0>       -0.00714007  0.23388435 -0.00000000  0.00000000 -0.00000000 -0.00000139 -0.00000124 -0.00000217
                                0.00000001 -0.00000002  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 51  1    15    1  |0 0>        0.00000005 -0.00000162 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.       49          50          51

  1  1     1    1  |1 1>+       0.00000020 -0.00000013 -0.00000000
                                0.00000000  0.00000000 -0.00000000

  2  1     2    1  |1 1>+       0.00718997  0.00688537  0.00891005
                                0.00000000  0.00000000 -0.00000000

  3  1     3    1  |1 1>+       0.00002297  0.00002245  0.00002887
                                0.00000000  0.00000000 -0.00000000

  4  1     4    1  |1 1>+       0.00000214 -0.00000144 -0.00000000
                                0.00000000 -0.00000000 -0.00000000

  5  1     5    1  |1 1>+      -0.00000021  0.00000164 -0.00000000
                                0.00000000 -0.00000000 -0.00000000

  6  1     6    1  |1 1>+       0.12912048 -0.13483251  0.00000305
                                0.00000000 -0.00000000 -0.00000000

  7  1     7    1  |1 1>+      -0.00001338  0.00001303  0.00000000
                               -0.00000000  0.00000000 -0.00000000

  8  1     8    1  |1 1>+      -0.00000359  0.00000146 -0.00000000
                               -0.00000000  0.00000000  0.00000000

  9  1     9    1  |1 1>+       0.00004038  0.00005058  0.00003644
                                0.00000000  0.00000000 -0.00000000

 10  1    10    1  |1 1>+      -0.26530951 -0.25407166 -0.20271524
                               -0.00000000 -0.00000001  0.00000000

 11  1    11    1  |1 1>+       0.00001220 -0.00000501 -0.00000003
                                0.00000000 -0.00000000  0.00000000

 12  1    12    1  |1 1>+      -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000

 13  1     1    1  |1 0>        0.00000000 -0.00000000  0.00000000
                                0.00000001 -0.00000008 -0.00000000

 14  1     2    1  |1 0>       -0.00000000  0.00000000  0.00000000
                                0.00000800 -0.00003147  0.00002887

 15  1     3    1  |1 0>        0.00000000 -0.00000000 -0.00000000
                               -0.00236779  0.00966933 -0.00891013

 16  1     4    1  |1 0>       -0.00000000  0.00000000 -0.00000000
                               -0.00000006  0.00000092  0.00000000

 17  1     5    1  |1 0>        0.00000000 -0.00000000 -0.00000000
                               -0.00000031  0.00000016  0.00000000

 18  1     6    1  |1 0>        0.00000000 -0.00000000 -0.00000000
                               -0.00000359  0.00000146  0.00000000

 19  1     7    1  |1 0>        0.00000000  0.00000000  0.00000000
                               -0.00003878 -0.00000557  0.00000000

 20  1     8    1  |1 0>       -0.00000000 -0.00000000 -0.00000000
                                0.18133401  0.04440720 -0.00000020

 21  1     9    1  |1 0>       -0.00000000  0.00000000  0.00000000
                               -0.00000021  0.00000313 -0.00000000

 22  1    10    1  |1 0>        0.00000000 -0.00000000 -0.00000000
                               -0.00001225  0.00000503 -0.00000003

 23  1    11    1  |1 0>       -0.00000000  0.00000001  0.00000000
                                0.08737555 -0.35680080  0.20271815

 24  1    12    1  |1 0>        0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000

 25  1     1    1  |1 1>-      -0.00000000  0.00000000 -0.00000000
                                0.00955802 -0.00278412 -0.00891004

 26  1     2    1  |1 1>-      -0.00000000  0.00000000 -0.00000000
                               -0.00000020  0.00000013 -0.00000000

 27  1     3    1  |1 1>-       0.00000000 -0.00000000  0.00000000
                                0.00000001 -0.00000008 -0.00000000

 28  1     4    1  |1 1>-      -0.00000000 -0.00000001 -0.00000000
                                0.05220790  0.17923564 -0.00000040

 29  1     5    1  |1 1>-       0.00000000 -0.00000000 -0.00000000
                               -0.00000643  0.00000261  0.00000000

 30  1     6    1  |1 1>-       0.00000000 -0.00000000 -0.00000000
                               -0.00000214  0.00000144  0.00000000

 31  1     7    1  |1 1>-       0.00000000 -0.00000000  0.00000000
                               -0.00000430 -0.00000246 -0.00000000

 32  1     8    1  |1 1>-      -0.00000000  0.00000000 -0.00000000
                               -0.00000006  0.00000092  0.00000000

 33  1     9    1  |1 1>-       0.00000000 -0.00000000  0.00000000
                               -0.35268841  0.10273328  0.20271325

 34  1    10    1  |1 1>-       0.00000000 -0.00000000  0.00000000
                               -0.00005609  0.00001355  0.00003644

 35  1    11    1  |1 1>-      -0.00000000  0.00000000  0.00000000
                               -0.00000021  0.00000312  0.00000000

 36  1    12    1  |1 1>-       0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000

 37  1     1    1  |0 0>        0.00000198  0.00000156 -0.00000000
                                0.00000000  0.00000000  0.00000000

 38  1     2    1  |0 0>        0.00000243 -0.00000280 -0.00000000
                                0.00000000 -0.00000000  0.00000000

 39  1     3    1  |0 0>       -0.00000081  0.00000266  0.00000000
                               -0.00000000  0.00000000 -0.00000000

 40  1     4    1  |0 0>        0.00035422  0.00004337 -0.00000000
                                0.00000000  0.00000000  0.00000000

 41  1     5    1  |0 0>       -0.00004334  0.00035415  0.00000000
                               -0.00000000  0.00000000 -0.00000000

 42  1     6    1  |0 0>        0.00000004 -0.00000002 -0.00638266
                                0.00000000 -0.00000000  0.00000000

 43  1     7    1  |0 0>       -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000

 44  1     8    1  |0 0>       -0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000

 45  1     9    1  |0 0>       -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000

 46  1    10    1  |0 0>       -0.00000229  0.00000145  0.00000000
                               -0.00000000  0.00000000 -0.00000000

 47  1    11    1  |0 0>       -0.00000037  0.00000218 -0.00000000
                                0.00000000 -0.00000000  0.00000000

 48  1    12    1  |0 0>        0.00000064  0.00000122  0.00000000
                                0.00000000 -0.00000000 -0.00000000

 49  1    13    1  |0 0>        0.86295469 -0.02163020  0.00000010
                                0.00000001 -0.00000000 -0.00000000

 50  1    14    1  |0 0>        0.02163070  0.86295584  0.00000008
                                0.00000000  0.00000003 -0.00000000

 51  1    15    1  |0 0>       -0.00000075  0.00000088  0.93618391
                               -0.00000000  0.00000000 -0.00000000



 Composition of spin-orbit eigenvectors
 ======================================
   Total
 Nr Sym  State Sym Spin / Nr.      1        2        3        4        5        6        7        8

  1  1     1    1  |1 1>+         0.00%    0.00%    0.00%   49.98%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |1 1>+        32.17%    0.00%    0.00%    0.00%    5.66%   54.93%    0.00%    0.00%
  3  1     3    1  |1 1>+         0.00%    0.00%   49.98%    0.00%    0.00%    0.00%   45.41%    0.03%
  4  1     4    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  5  1     5    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.01%
  6  1     6    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.01%    0.00%    0.00%    0.00%
  7  1     7    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  8  1     8    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  9  1     9    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 10  1    10    1  |1 1>+         0.01%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1    11    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1    12    1  |1 1>+         0.00%    0.02%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 13  1     1    1  |1 0>          0.00%   49.98%    0.00%    0.00%    0.00%    0.00%    0.03%   45.41%
 14  1     2    1  |1 0>          0.00%    0.00%   49.98%    0.00%    0.00%    0.00%   45.41%    0.03%
 15  1     3    1  |1 0>         32.17%    0.00%    0.00%    0.00%   57.88%    2.71%    0.00%    0.00%
 16  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 17  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 18  1     6    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 19  1     7    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 20  1     8    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.02%    0.00%    0.00%
 21  1     9    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 22  1    10    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 23  1    11    1  |1 0>          0.01%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 24  1    12    1  |1 0>          0.00%    0.00%    0.00%    0.02%    0.00%    0.00%    0.00%    0.00%
 25  1     1    1  |1 1>-        32.17%    0.00%    0.00%    0.00%   27.34%   33.24%    0.00%    0.00%
 26  1     2    1  |1 1>-         0.00%    0.00%    0.00%   49.98%    0.00%    0.00%    0.00%    0.00%
 27  1     3    1  |1 1>-         0.00%   49.98%    0.00%    0.00%    0.00%    0.00%    0.03%   45.42%
 28  1     4    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.01%    0.01%    0.00%    0.00%
 29  1     5    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    0.00%
 30  1     6    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 31  1     7    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 32  1     8    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 33  1     9    1  |1 1>-         0.01%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 34  1    10    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 35  1    11    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 36  1    12    1  |1 1>-         0.00%    0.00%    0.02%    0.00%    0.00%    0.00%    0.00%    0.00%
 37  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 38  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    9.07%
 39  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    9.07%    0.01%
 40  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.96%    8.13%    0.00%    0.00%
 41  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    8.12%    0.96%    0.00%    0.00%
 42  1     6    1  |0 0>          3.44%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 43  1     7    1  |0 0>          0.00%    0.00%    0.00%    0.01%    0.00%    0.00%    0.00%    0.00%
 44  1     8    1  |0 0>          0.00%    0.01%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 45  1     9    1  |0 0>          0.00%    0.00%    0.01%    0.00%    0.00%    0.00%    0.00%    0.00%
 46  1    10    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 47  1    11    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.01%
 48  1    12    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    0.00%
 49  1    13    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 50  1    14    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 51  1    15    1  |0 0>          0.04%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.      9       10       11       12       13       14       15       16

  1  1     1    1  |1 1>+        45.44%    0.00%    0.00%    0.00%    0.00%    4.55%    0.00%    0.00%
  2  1     2    1  |1 1>+         0.00%    0.03%    1.85%    4.19%    0.00%    0.00%    1.15%    0.00%
  3  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    4.55%    0.00%    0.00%    0.00%
  4  1     4    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   19.14%
  5  1     5    1  |1 1>+         0.00%    0.01%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  6  1     6    1  |1 1>+         0.00%    0.00%    0.01%    0.00%    0.00%    0.00%    0.00%    0.00%
  7  1     7    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  8  1     8    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  9  1     9    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.07%
 10  1    10    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    0.00%
 11  1    11    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1    12    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 13  1     1    1  |1 0>          0.00%    4.44%    0.11%    0.00%    0.00%    0.00%    0.00%    0.00%
 14  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.00%    4.55%    0.00%    0.00%    0.00%
 15  1     3    1  |1 0>          0.00%    0.15%    5.89%    0.03%    0.00%    0.00%    1.15%    0.00%
 16  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 17  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   25.43%
 18  1     6    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 19  1     7    1  |1 0>          0.02%    0.00%    0.00%    0.00%    0.00%    0.01%    0.00%    0.10%
 20  1     8    1  |1 0>          0.00%    0.00%    0.00%    0.01%    0.00%    0.00%    0.00%    0.00%
 21  1     9    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 22  1    10    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 23  1    11    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    0.00%
 24  1    12    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    2.88%
 25  1     1    1  |1 1>-         0.00%    0.04%    1.14%    4.88%    0.00%    0.00%    1.15%    0.00%
 26  1     2    1  |1 1>-        45.44%    0.00%    0.00%    0.00%    0.00%    4.55%    0.00%    0.00%
 27  1     3    1  |1 1>-         0.00%    4.44%    0.11%    0.00%    0.00%    0.00%    0.00%    0.00%
 28  1     4    1  |1 1>-         0.00%    0.00%    0.01%    0.00%    0.00%    0.00%    0.00%    0.00%
 29  1     5    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.01%    0.00%    0.00%    0.00%
 30  1     6    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   19.14%
 31  1     7    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 32  1     8    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 33  1     9    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    0.00%
 34  1    10    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.07%
 35  1    11    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 36  1    12    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 37  1     1    1  |0 0>          9.09%    0.00%    0.00%    0.00%    0.00%   90.87%    0.00%    0.00%
 38  1     2    1  |0 0>          0.00%   88.42%    2.41%    0.04%    0.00%    0.00%    0.00%    0.00%
 39  1     3    1  |0 0>          0.00%    0.00%    0.01%    0.00%   90.87%    0.00%    0.00%    0.00%
 40  1     4    1  |0 0>          0.00%    0.08%    0.21%   90.58%    0.00%    0.00%    0.00%    0.00%
 41  1     5    1  |0 0>          0.00%    2.38%   88.24%    0.25%    0.01%    0.00%    0.00%    0.00%
 42  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   96.53%    0.00%
 43  1     7    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   33.17%
 44  1     8    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 45  1     9    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 46  1    10    1  |0 0>          0.01%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 47  1    11    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 48  1    12    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 49  1    13    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 50  1    14    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 51  1    15    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.     17       18       19       20       21       22       23       24

  1  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  3  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  4  1     4    1  |1 1>+         0.00%    0.00%    5.43%    0.00%    0.00%   11.04%    0.00%    0.00%
  5  1     5    1  |1 1>+         7.78%    0.00%    0.00%    2.20%    0.00%    0.00%    0.00%    0.00%
  6  1     6    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   28.52%
  7  1     7    1  |1 1>+        17.75%    0.00%    0.00%    5.03%    0.00%    0.00%    0.00%    0.00%
  8  1     8    1  |1 1>+         0.00%   19.14%    0.00%    0.00%    5.43%    0.00%   11.04%    0.00%
  9  1     9    1  |1 1>+         0.00%    0.00%   22.82%    0.00%    0.00%    7.91%    0.00%    0.00%
 10  1    10    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    3.74%
 11  1    11    1  |1 1>+         0.00%    0.07%    0.00%    0.00%   22.82%    0.00%    7.91%    0.00%
 12  1    12    1  |1 1>+         2.88%    0.00%    0.00%   18.76%    0.00%    0.00%    0.00%    0.00%
 13  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 14  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 15  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 16  1     4    1  |1 0>         19.14%    0.00%    0.00%    5.43%    0.00%    0.00%    0.00%    0.00%
 17  1     5    1  |1 0>          0.00%    0.00%    7.21%    0.00%    0.00%    0.16%    0.00%    0.00%
 18  1     6    1  |1 0>          0.00%   19.14%    0.00%    0.00%    5.43%    0.00%   11.04%    0.00%
 19  1     7    1  |1 0>          0.00%    0.00%    0.03%    0.00%    0.00%   44.01%    0.00%    0.00%
 20  1     8    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.57%
 21  1     9    1  |1 0>          0.07%    0.00%    0.00%   22.82%    0.00%    0.00%    0.00%    0.00%
 22  1    10    1  |1 0>          0.00%    0.07%    0.00%    0.00%   22.82%    0.00%    7.91%    0.00%
 23  1    11    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   10.41%
 24  1    12    1  |1 0>          0.00%    0.00%   18.76%    0.00%    0.00%    0.00%    0.00%    0.00%
 25  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 26  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 27  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 28  1     4    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   37.17%
 29  1     5    1  |1 1>-         0.00%    5.08%    0.00%    0.00%    1.44%    0.00%   35.38%    0.00%
 30  1     6    1  |1 1>-         0.00%    0.00%    5.43%    0.00%    0.00%   11.04%    0.00%    0.00%
 31  1     7    1  |1 1>-         0.00%   20.44%    0.00%    0.00%    5.80%    0.00%    8.79%    0.00%
 32  1     8    1  |1 1>-        19.14%    0.00%    0.00%    5.43%    0.00%    0.00%    0.00%    0.00%
 33  1     9    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    1.67%
 34  1    10    1  |1 1>-         0.00%    0.00%   22.82%    0.00%    0.00%    7.91%    0.00%    0.00%
 35  1    11    1  |1 1>-         0.07%    0.00%    0.00%   22.82%    0.00%    0.00%    0.00%    0.00%
 36  1    12    1  |1 1>-         0.00%    2.88%    0.00%    0.00%   18.76%    0.00%    0.00%    0.00%
 37  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.02%    0.00%    0.00%
 38  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 39  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.02%    0.00%
 40  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 41  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.02%
 42  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 43  1     7    1  |0 0>          0.00%    0.00%   17.50%    0.00%    0.00%    0.00%    0.00%    0.00%
 44  1     8    1  |0 0>         33.17%    0.00%    0.00%   17.50%    0.00%    0.00%    0.00%    0.00%
 45  1     9    1  |0 0>          0.00%   33.17%    0.00%    0.00%   17.50%    0.00%    0.00%    0.00%
 46  1    10    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%   17.90%    0.00%    0.00%
 47  1    11    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 48  1    12    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   17.90%    0.00%
 49  1    13    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.41%
 50  1    14    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   17.49%
 51  1    15    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.     25       26       27       28       29       30       31       32

  1  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |1 1>+         0.00%    0.00%    0.01%    0.00%    0.00%    0.00%    0.00%    0.00%
  3  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  4  1     4    1  |1 1>+         0.00%    0.00%    0.00%    5.40%    0.00%    0.00%    0.00%    0.00%
  5  1     5    1  |1 1>+         0.00%   30.71%    0.00%    0.00%    2.19%    0.00%    0.00%   40.22%
  6  1     6    1  |1 1>+        15.65%    0.00%    0.00%    0.00%    0.00%    0.00%   33.33%    0.00%
  7  1     7    1  |1 1>+         0.00%   13.46%    0.00%    0.00%    5.01%    0.00%    0.00%    0.46%
  8  1     8    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    5.40%    0.00%    0.00%
  9  1     9    1  |1 1>+         0.00%    0.00%    0.00%   16.44%    0.00%    0.00%    0.00%    0.00%
 10  1    10    1  |1 1>+         6.81%    0.00%   29.21%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1    11    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%   16.44%    0.00%    0.00%
 12  1    12    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    3.15%    0.00%    0.00%    0.00%
 13  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 14  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 15  1     3    1  |1 0>          0.00%    0.00%    0.01%    0.00%    0.00%    0.00%    0.00%    0.00%
 16  1     4    1  |1 0>          0.00%   11.04%    0.00%    0.00%    5.40%    0.00%    0.00%   52.73%
 17  1     5    1  |1 0>          0.00%    0.00%    0.00%    7.17%    0.00%    0.00%    0.00%    0.00%
 18  1     6    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    5.40%    0.00%    0.00%
 19  1     7    1  |1 0>          0.00%    0.00%    0.00%    0.03%    0.00%    0.00%    0.00%    0.00%
 20  1     8    1  |1 0>         43.60%    0.00%    0.00%    0.00%    0.00%    0.00%   33.33%    0.00%
 21  1     9    1  |1 0>          0.00%    7.91%    0.00%    0.00%   16.44%    0.00%    0.00%    0.00%
 22  1    10    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%   16.44%    0.00%    0.00%
 23  1    11    1  |1 0>          0.14%    0.00%   29.21%    0.00%    0.00%    0.00%    0.00%    0.00%
 24  1    12    1  |1 0>          0.00%    0.00%    0.00%    3.15%    0.00%    0.00%    0.00%    0.00%
 25  1     1    1  |1 1>-         0.00%    0.00%    0.01%    0.00%    0.00%    0.00%    0.00%    0.00%
 26  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 27  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 28  1     4    1  |1 1>-         7.01%    0.00%    0.00%    0.00%    0.00%    0.00%   33.34%    0.00%
 29  1     5    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    1.43%    0.00%    0.00%
 30  1     6    1  |1 1>-         0.00%    0.00%    0.00%    5.40%    0.00%    0.00%    0.00%    0.00%
 31  1     7    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    5.77%    0.00%    0.00%
 32  1     8    1  |1 1>-         0.00%   11.04%    0.00%    0.00%    5.40%    0.00%    0.00%    6.59%
 33  1     9    1  |1 1>-         8.87%    0.00%   29.21%    0.00%    0.00%    0.00%    0.00%    0.00%
 34  1    10    1  |1 1>-         0.00%    0.00%    0.00%   16.44%    0.00%    0.00%    0.00%    0.00%
 35  1    11    1  |1 1>-         0.00%    7.91%    0.00%    0.00%   16.44%    0.00%    0.00%    0.00%
 36  1    12    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    3.15%    0.00%    0.00%
 37  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 38  1     2    1  |0 0>          0.00%    0.02%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 39  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 40  1     4    1  |0 0>          0.02%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 41  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 42  1     6    1  |0 0>          0.00%    0.00%    0.02%    0.00%    0.00%    0.00%    0.00%    0.00%
 43  1     7    1  |0 0>          0.00%    0.00%    0.00%   45.97%    0.00%    0.00%    0.00%    0.00%
 44  1     8    1  |0 0>          0.00%    0.00%    0.00%    0.00%   45.97%    0.00%    0.00%    0.00%
 45  1     9    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%   45.97%    0.00%    0.00%
 46  1    10    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 47  1    11    1  |0 0>          0.00%   17.89%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 48  1    12    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 49  1    13    1  |0 0>         17.49%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 50  1    14    1  |0 0>          0.41%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 51  1    15    1  |0 0>          0.00%    0.00%   12.31%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.     33       34       35       36       37       38       39       40

  1  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  3  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  4  1     4    1  |1 1>+        53.12%    0.00%    0.21%    0.00%    0.00%    4.74%    0.00%    0.00%
  5  1     5    1  |1 1>+         0.00%    0.00%    0.00%    1.24%    0.00%    0.00%    0.00%    0.00%
  6  1     6    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   18.02%
  7  1     7    1  |1 1>+         0.00%    0.00%    0.00%   51.42%    0.00%    0.00%    0.00%    0.00%
  8  1     8    1  |1 1>+         0.00%   10.77%    0.00%    0.00%   42.56%    0.00%    4.74%    0.00%
  9  1     9    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%   31.96%    0.00%    0.00%
 10  1    10    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    2.15%
 11  1    11    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   31.96%    0.00%
 12  1    12    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 13  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 14  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 15  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 16  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.60%    0.00%    0.00%    0.00%    0.00%
 17  1     5    1  |1 0>         21.46%    0.00%   38.45%    0.00%    0.00%    0.07%    0.00%    0.00%
 18  1     6    1  |1 0>          0.00%   50.94%    0.00%    0.00%    2.39%    0.00%    4.74%    0.00%
 19  1     7    1  |1 0>         20.28%    0.00%   13.15%    0.00%    0.00%   18.91%    0.00%    0.00%
 20  1     8    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    8.82%
 21  1     9    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 22  1    10    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   31.96%    0.00%
 23  1    11    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   22.80%
 24  1    12    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 25  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 26  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 27  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 28  1     4    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    1.62%
 29  1     5    1  |1 1>-         0.00%   37.85%    0.00%    0.00%    0.79%    0.00%   15.20%    0.00%
 30  1     6    1  |1 1>-         5.14%    0.00%   48.19%    0.00%    0.00%    4.74%    0.00%    0.00%
 31  1     7    1  |1 1>-         0.00%    0.44%    0.00%    0.00%   54.25%    0.00%    3.78%    0.00%
 32  1     8    1  |1 1>-         0.00%    0.00%    0.00%   46.75%    0.00%    0.00%    0.00%    0.00%
 33  1     9    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   38.97%
 34  1    10    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%   31.96%    0.00%    0.00%
 35  1    11    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 36  1    12    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 37  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.02%    0.00%    0.00%
 38  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 39  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.02%    0.00%
 40  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.01%
 41  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.01%
 42  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 43  1     7    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 44  1     8    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 45  1     9    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 46  1    10    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    7.59%    0.00%    0.00%
 47  1    11    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 48  1    12    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    7.59%    0.00%
 49  1    13    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    5.48%
 50  1    14    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    2.11%
 51  1    15    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.     41       42       43       44       45       46       47       48

  1  1     1    1  |1 1>+         0.00%    0.00%    0.01%    0.00%    0.00%    0.01%    0.00%    0.00%
  2  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  3  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.01%    0.00%    0.01%    0.00%
  4  1     4    1  |1 1>+         0.00%    0.00%    0.03%    0.00%    0.00%    0.87%    0.00%    0.00%
  5  1     5    1  |1 1>+        13.19%    0.01%    0.00%    0.01%    0.00%    0.00%    0.00%    2.42%
  6  1     6    1  |1 1>+         0.00%    0.96%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  7  1     7    1  |1 1>+         5.78%    0.01%    0.00%    0.03%    0.00%    0.00%    0.00%    1.06%
  8  1     8    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.03%    0.00%    0.87%    0.00%
  9  1     9    1  |1 1>+         0.00%    0.00%   10.67%    0.00%    0.00%   10.12%    0.00%    0.00%
 10  1    10    1  |1 1>+         0.04%   40.43%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1    11    1  |1 1>+         0.00%    0.00%    0.00%    0.00%   10.67%    0.00%   10.12%    0.00%
 12  1    12    1  |1 1>+         0.00%    0.00%    0.00%   75.19%    0.00%    0.00%    0.00%    0.00%
 13  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.01%    0.00%    0.00%    0.00%    0.01%
 14  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.01%    0.00%    0.01%    0.00%
 15  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 16  1     4    1  |1 0>          4.74%    0.00%    0.00%    0.03%    0.00%    0.00%    0.00%    0.87%
 17  1     5    1  |1 0>          0.00%    0.00%    0.04%    0.00%    0.00%    0.01%    0.00%    0.00%
 18  1     6    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.03%    0.00%    0.87%    0.00%
 19  1     7    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    3.47%    0.00%    0.00%
 20  1     8    1  |1 0>          0.01%   10.15%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 21  1     9    1  |1 0>         31.93%    0.03%    0.00%   10.67%    0.00%    0.00%    0.00%   10.12%
 22  1    10    1  |1 0>          0.00%    0.00%    0.00%    0.00%   10.67%    0.00%   10.12%    0.00%
 23  1    11    1  |1 0>          0.02%   19.80%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 24  1    12    1  |1 0>          0.00%    0.00%   75.19%    0.00%    0.00%    0.00%    0.00%    0.00%
 25  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 26  1     2    1  |1 1>-         0.00%    0.00%    0.01%    0.00%    0.00%    0.01%    0.00%    0.00%
 27  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.01%    0.00%    0.00%    0.00%    0.01%
 28  1     4    1  |1 1>-         0.02%   17.33%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 29  1     5    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.01%    0.00%    2.79%    0.00%
 30  1     6    1  |1 1>-         0.00%    0.00%    0.03%    0.00%    0.00%    0.87%    0.00%    0.00%
 31  1     7    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.03%    0.00%    0.69%    0.00%
 32  1     8    1  |1 1>-         4.74%    0.00%    0.00%    0.03%    0.00%    0.00%    0.00%    0.87%
 33  1     9    1  |1 1>-         0.00%    3.64%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 34  1    10    1  |1 1>-         0.00%    0.00%   10.67%    0.00%    0.00%   10.12%    0.00%    0.00%
 35  1    11    1  |1 1>-        31.93%    0.03%    0.00%   10.67%    0.00%    0.00%    0.00%   10.12%
 36  1    12    1  |1 1>-         0.00%    0.00%    0.00%    0.00%   75.19%    0.00%    0.00%    0.00%
 37  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 38  1     2    1  |0 0>          0.02%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 39  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 40  1     4    1  |0 0>          0.00%    0.01%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 41  1     5    1  |0 0>          0.00%    0.01%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 42  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 43  1     7    1  |0 0>          0.00%    0.00%    3.36%    0.00%    0.00%    0.00%    0.00%    0.00%
 44  1     8    1  |0 0>          0.00%    0.00%    0.00%    3.36%    0.00%    0.00%    0.00%    0.00%
 45  1     9    1  |0 0>          0.00%    0.00%    0.00%    0.00%    3.36%    0.00%    0.00%    0.00%
 46  1    10    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%   74.51%    0.00%    0.00%
 47  1    11    1  |0 0>          7.58%    0.01%    0.00%    0.00%    0.00%    0.00%    0.00%   74.51%
 48  1    12    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   74.51%    0.00%
 49  1    13    1  |0 0>          0.00%    2.11%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 50  1    14    1  |0 0>          0.01%    5.47%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 51  1    15    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.     49       50       51

  1  1     1    1  |1 1>+         0.00%    0.00%    0.00%
  2  1     2    1  |1 1>+         0.01%    0.00%    0.01%
  3  1     3    1  |1 1>+         0.00%    0.00%    0.00%
  4  1     4    1  |1 1>+         0.00%    0.00%    0.00%
  5  1     5    1  |1 1>+         0.00%    0.00%    0.00%
  6  1     6    1  |1 1>+         1.67%    1.82%    0.00%
  7  1     7    1  |1 1>+         0.00%    0.00%    0.00%
  8  1     8    1  |1 1>+         0.00%    0.00%    0.00%
  9  1     9    1  |1 1>+         0.00%    0.00%    0.00%
 10  1    10    1  |1 1>+         7.04%    6.46%    4.11%
 11  1    11    1  |1 1>+         0.00%    0.00%    0.00%
 12  1    12    1  |1 1>+         0.00%    0.00%    0.00%
 13  1     1    1  |1 0>          0.00%    0.00%    0.00%
 14  1     2    1  |1 0>          0.00%    0.00%    0.00%
 15  1     3    1  |1 0>          0.00%    0.01%    0.01%
 16  1     4    1  |1 0>          0.00%    0.00%    0.00%
 17  1     5    1  |1 0>          0.00%    0.00%    0.00%
 18  1     6    1  |1 0>          0.00%    0.00%    0.00%
 19  1     7    1  |1 0>          0.00%    0.00%    0.00%
 20  1     8    1  |1 0>          3.29%    0.20%    0.00%
 21  1     9    1  |1 0>          0.00%    0.00%    0.00%
 22  1    10    1  |1 0>          0.00%    0.00%    0.00%
 23  1    11    1  |1 0>          0.76%   12.73%    4.11%
 24  1    12    1  |1 0>          0.00%    0.00%    0.00%
 25  1     1    1  |1 1>-         0.01%    0.00%    0.01%
 26  1     2    1  |1 1>-         0.00%    0.00%    0.00%
 27  1     3    1  |1 1>-         0.00%    0.00%    0.00%
 28  1     4    1  |1 1>-         0.27%    3.21%    0.00%
 29  1     5    1  |1 1>-         0.00%    0.00%    0.00%
 30  1     6    1  |1 1>-         0.00%    0.00%    0.00%
 31  1     7    1  |1 1>-         0.00%    0.00%    0.00%
 32  1     8    1  |1 1>-         0.00%    0.00%    0.00%
 33  1     9    1  |1 1>-        12.44%    1.06%    4.11%
 34  1    10    1  |1 1>-         0.00%    0.00%    0.00%
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
 49  1    13    1  |0 0>         74.47%    0.05%    0.00%
 50  1    14    1  |0 0>          0.05%   74.47%    0.00%
 51  1    15    1  |0 0>          0.00%    0.00%   87.64%



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       86.94       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       7     9962.00       700     1000      520     2100     2140     5201     5101   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *    172513.80 139922.41  16455.59  16117.57      8.22      1.64      8.10
 REAL TIME  *    175351.69 SEC
 DISK USED  *         9.81 GB (local),      119.01 GB (total)
 SF USED    *        51.93 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCV5Z-PP energy=   -214.076895998156

              CI              CI           MULTI         RHF-SCF
   -214.00562546   -214.01896074   -213.15813840   -213.37380443
 **********************************************************************************************************************************
 Molpro calculation terminated with 1 warning(s)
