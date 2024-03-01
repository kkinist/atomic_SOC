
 Working directory              : /wrk/irikura/molpro.4Q5E9Hlv93/
 Global scratch directory       : /wrk/irikura/molpro.4Q5E9Hlv93/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.4Q5E9Hlv93/

 id        : nistki

 Nodes            nprocs
 pn112695.nist.gov   12
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1009), CPU time= 0.01 sec
 ***,F SO-CI
 memory,1000,M;
 
 gprint,orbitals,civector;
 
 symmetry,xyz
 geometry={F};
 
 basis=aug-cc-pwCVTZ-DK
 
 set,dkho=101
 
                                                                                 ! start with dication to get better 3s3p orbitals
 {rhf,so-sci;wf,nelec=7,sym=2,spin=3}
 
                                                                                 ! Active space (7/8) to get 3p orbs
 {multi
     closed,1,0;
     occ,3,6
     wf,nelec=9,sym=2,spin=1;state,8;
     wf,nelec=9,sym=2,spin=3;state,8;
     expec2,lxx,lyy,lzz;
 }
 table, energy, ll
 title, Energies and &lt;L**2&gt; values
 
 {ci;wf,sym=2,spin=1;state,8; save,5201.2}
 hlsdiag = energd4
 {ci;wf,sym=2,spin=3;state,8; save,5203.2}
 hlsdiag(9) = energd4
 
 table,hlsdiag
 
 {ci;hlsmat,ls,5201.2,5203.2;print,vls=0,hls=0}                                  !compute and diagonalize SO matrix
 Commands initialized (810), CPU time= 0.02 sec, 661 directives.
 Default parameters read. Elapsed time= 0.10 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2021.2 linked Jun  2 2021 00:13:23


 **********************************************************************************************************************************
 LABEL *   F SO-CI                                                                       
  64 bit mpp version                                                                     DATE: 29-Feb-24          TIME: 16:18:04  
 **********************************************************************************************************************************

 SHA1:             1987c3f1b0c3ae76932bc24993909f2d7ae6b1f1
 **********************************************************************************************************************************

 Memory per process:      1000 MW
 Total memory per node:  12000 MW

 GA preallocation disabled
 GA check disabled

 Variable memory set to 1000.0 MW


 ZSYMEL=XYZ

 SETTING BASIS          =    AUG-CC-PWCVTZ-DK
 SETTING DKHO           =       101.00000000                                  


 Recomputing integrals since basis changed


 Using spherical harmonics

 Library entry F      S aug-cc-pwCVTZ-DK     selected for orbital group  1
 Library entry F      P aug-cc-pwCVTZ-DK     selected for orbital group  1
 Library entry F      D aug-cc-pwCVTZ-DK     selected for orbital group  1
 Library entry F      F aug-cc-pwCVTZ-DK     selected for orbital group  1


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

   1  F       9.00    0.000000000    0.000000000    0.000000000

 NUCLEAR CHARGE:                    9
 NUMBER OF PRIMITIVE AOS:          81
 NUMBER OF SYMMETRY AOS:           71
 NUMBER OF CONTRACTIONS:           59   (   27Ag  +   32Au  )
 NUMBER OF INNER CORE ORBITALS:     0   (    0Ag  +    0Au  )
 NUMBER OF OUTER CORE ORBITALS:     1   (    1Ag  +    0Au  )
 NUMBER OF VALENCE ORBITALS:        4   (    1Ag  +    3Au  )


 NUCLEAR REPULSION ENERGY    0.00000000

 One-electron integrals computed with SEWARD

 eXact-2-Component (X2C) method activated

 Computing Douglas-Kroll / X2C integrals

 AO integral compression algorithm  1   Integral accuracy      1.0D-11

     3.408 MB (compressed) written to integral file ( 29.7%)

     Node minimum: 0.262 MB, node maximum: 0.524 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:      67728.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:      67728      RECORD LENGTH: 524288

 Memory used in sort:       0.62 MW

 SORT1 READ     1711873. AND WROTE       15143. INTEGRALS IN      1 RECORDS. CPU TIME:     0.03 SEC, REAL TIME:     0.02 SEC
 SORT2 READ      173263. AND WROTE      810039. INTEGRALS IN     12 RECORDS. CPU TIME:     0.00 SEC, REAL TIME:     0.01 SEC

 Node minimum:       67276.  Node maximum:       67728. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000

 EXTRA SYMMETRY OF AOS IN SYMMETRY 1:   1 1 1 1 1 1 1 2 3 4   5 6 2 3 4 5 6 2 3 4   5 6 2 3 4 5 6
 EXTRA SYMMETRY OF AOS IN SYMMETRY 2:   1 2 3 1 2 3 1 2 3 1   2 3 1 2 3 1 2 3 4 5   6 7 8 910 4 5 6 7 8   910

 Eigenvalues of metric

         1 0.531E-02 0.200E-01 0.649E-01 0.199E+00 0.237E+00 0.237E+00 0.237E+00 0.237E+00
         2 0.200E-01 0.200E-01 0.200E-01 0.204E+00 0.204E+00 0.204E+00 0.393E+00 0.393E+00


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      22       28.68       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600   
                                         AOSYM     SMH  

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         0.51      0.32
 REAL TIME  *         1.09 SEC
 DISK USED  *        28.94 MB (local),      396.66 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 Program * Restricted Hartree-Fock

 Orbital guess generated from atomic densities. Full valence occupancy:    2   3

 Initial alpha occupancy:   2   3
 Initial beta  occupancy:   2   0
 
 SO-SCI SOLVER WITH NELEC=7 SYM=2 MS2=3 THRE=1.0D-08 THRG=3.2D-06
 
 Number of closed-shell orbitals:                 2   (   2   0)
 Number of singly occupied active orbitals:       3   (   0   3)
 Number of virtual orbitals:                     54   (  25  29)
 
 Number of orbital rotations:  137  ( 0 closed/active, 50 closed/virtual, 0 active/active, 87 active/virtual )
 Total number of variables:    138
 
 ITER.  MIC  NCI          ENERGY    ENERGY CHANGE          GRAD      ORB GRAD        CI RES  NQN        STEP      TIME
    1    1    0     -97.26662956     -97.26662956    1.22955574    1.22955574    0.00000000    0    0.37E+00      0.01
    2    1    0     -97.68029253      -0.41366298    0.22718929    0.22718929    0.00000000    0    0.51E-01      0.03
    3    1    0     -97.68751708      -0.00722455    0.02375093    0.02375093    0.00000000    0    0.34E-02      0.04
    4    1    0     -97.68758330      -0.00006622    0.00405769    0.00405769    0.00000000    1    0.65E-03      0.06
    5    1    0     -97.68758533      -0.00000203    0.00019107    0.00019107    0.00000000    2    0.33E-04      0.08
    6    1    0     -97.68758534      -0.00000001    0.00002611    0.00002611    0.00000000    3    0.49E-05      0.10

 CONVERGENCE REACHED!  Final gradient:     0.00000128 ( 0.13E-05)
                       Final energy:     -97.68758534
 

 Final alpha occupancy:   2   3
 Final beta  occupancy:   2   0

 !RHF STATE 1.2 Energy                -97.687585335127
  RHF One-electron energy            -126.288628141949
  RHF Two-electron energy              28.601042806823
  RHF Kinetic energy                   98.260101999277
  RHF Nuclear energy                    0.000000000000
  RHF Virial quotient                  -0.994173457461

 !RHF STATE 1.2 Dipole moment           0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 ELECTRON ORBITALS
 =================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000   -28.10815     1  1  s    0.99980
    2.1     2.00000    -2.92205     1  2  s    1.18147
    1.2     1.00000    -2.34205     1  1  px   1.24622    1  3  px  -0.29056
    2.2     1.00000    -2.34205     1  1  py   1.24534    1  3  py  -0.29035
    3.2     1.00000    -2.34205     1  1  pz   1.24989    1  3  pz  -0.29141


 HOMO      3.2    -2.342048 =     -63.7304eV
 LUMO      3.1    -0.464570 =     -12.6416eV
 LUMO-HOMO         1.877478 =      51.0888eV

 Orbitals saved in record  2100.2


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      23       28.83       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380   
                                         AOSYM     SMH     JKOP   

              2       4        2.66       700     1000      520     2100   
                                         GEOM     BASIS   MCVARS     RHF  

 PROGRAMS   *        TOTAL   RHF-SCF       INT
 CPU TIMES  *         0.64      0.12      0.32
 REAL TIME  *         1.25 SEC
 DISK USED  *        31.54 MB (local),      427.89 MB (total)
 SF USED    *         0.45 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of closed-shell orbitals:   1 (   1   0 )
 Number of active  orbitals:        8 (   2   6 )
 Number of external orbitals:      50 (  24  26 )

 State symmetry 1

 Number of active electrons:   7    Spin symmetry=Doublet   Space symmetry=2
 Number of states:             8
 Number of CSFs:            1204   (1980 determinants, 3920 intermediate states)

 State symmetry 2

 Number of active electrons:   7    Spin symmetry=Quartet   Space symmetry=2
 Number of states:             8
 Number of CSFs:             656   (776 determinants, 1568 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL (state 1.2)

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 6 4 5 3 2 1 4   6 5 3 2 1 2 4 6 5 3   1 2 6 4 3 5 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.818D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.110D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.367D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.725D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.990D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.676D-01 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 2 3 3 1 2 3 1 2 6   5 4 9 710 8 3 2 1 6  10 8 5 4 9 7 3 1 2 2   3 1

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.06250   0.06250   0.06250   0.06250   0.06250   0.06250   0.06250   0.06250
 Weight factors for state symmetry  2:    0.06250   0.06250   0.06250   0.06250   0.06250   0.06250   0.06250   0.06250
 
 Number of orbital rotations:  230  ( 2 closed/active, 24 closed/virtual, 0 active/active, 204 active/virtual )
 Total number of variables:    22278
 
  Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1    5   26    0    -98.97235826     -99.07067768   -0.09831942    0.62532871 0.00299780 0.00891309  0.76E+00      0.58
   2    7   28    0    -99.07380374     -99.07410478   -0.00030104    0.03250654 0.00000660 0.00001787  0.34E-01      1.26
   3    5   21    0    -99.07410552     -99.07410552   -0.00000000    0.00012222 0.00000487 0.00000223  0.12E-03      1.78
   4    2    7    0    -99.07410552     -99.07410552   -0.00000000    0.00000071 0.00000001 0.00000022  0.12E-05      2.02

 CONVERGENCE REACHED!  Final gradient:    0.00000007 ( 0.75E-07)
                       Final energy:    -99.07410552
 
 Results for state 1.2 Doublet
 =============================
 !MCSCF STATE 1.2 Doublet Energy               -99.477645893065
 Nuclear energy                                  0.00000000
 Kinetic energy                                100.73686841
 One electron energy                          -139.66050696
 Two electron energy                            40.18286107
 Virial ratio                                    1.98749988
 
 !MCSCF STATE 1.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.2 Doublet
 =============================
 !MCSCF STATE 2.2 Doublet Energy               -99.477645893065
 Nuclear energy                                  0.00000000
 Kinetic energy                                100.73686841
 One electron energy                          -139.66050696
 Two electron energy                            40.18286107
 Virial ratio                                    1.98749988
 
 !MCSCF STATE 2.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.2 Doublet
 =============================
 !MCSCF STATE 3.2 Doublet Energy               -99.477645893064
 Nuclear energy                                  0.00000000
 Kinetic energy                                100.73686841
 One electron energy                          -139.66050696
 Two electron energy                            40.18286107
 Virial ratio                                    1.98749988
 
 !MCSCF STATE 3.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.2 Doublet
 =============================
 !MCSCF STATE 4.2 Doublet Energy               -98.973318529395
 Nuclear energy                                  0.00000000
 Kinetic energy                                 99.58895819
 One electron energy                          -135.43756624
 Two electron energy                            36.46424771
 Virial ratio                                    1.99381819
 
 !MCSCF STATE 4.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.2 Doublet
 =============================
 !MCSCF STATE 5.2 Doublet Energy               -98.973318529395
 Nuclear energy                                  0.00000000
 Kinetic energy                                 99.58895819
 One electron energy                          -135.43756624
 Two electron energy                            36.46424771
 Virial ratio                                    1.99381819
 
 !MCSCF STATE 5.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.2 Doublet
 =============================
 !MCSCF STATE 6.2 Doublet Energy               -98.973318529352
 Nuclear energy                                  0.00000000
 Kinetic energy                                 99.58895819
 One electron energy                          -135.43756624
 Two electron energy                            36.46424771
 Virial ratio                                    1.99381819
 
 !MCSCF STATE 6.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.2 Doublet
 =============================
 !MCSCF STATE 7.2 Doublet Energy               -98.973318529352
 Nuclear energy                                  0.00000000
 Kinetic energy                                 99.58895819
 One electron energy                          -135.43756624
 Two electron energy                            36.46424771
 Virial ratio                                    1.99381819
 
 !MCSCF STATE 7.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.2 Doublet
 =============================
 !MCSCF STATE 8.2 Doublet Energy               -98.973318529352
 Nuclear energy                                  0.00000000
 Kinetic energy                                 99.58895819
 One electron energy                          -135.43756624
 Two electron energy                            36.46424771
 Virial ratio                                    1.99381819
 
 !MCSCF STATE 8.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.2 Quartet
 =============================
 !MCSCF STATE 1.2 Quartet Energy               -98.993172063584
 Nuclear energy                                  0.00000000
 Kinetic energy                                 99.50773403
 One electron energy                          -135.35507297
 Two electron energy                            36.36190091
 Virial ratio                                    1.99482892
 
 !MCSCF STATE 1.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.2 Quartet
 =============================
 !MCSCF STATE 2.2 Quartet Energy               -98.993172063584
 Nuclear energy                                  0.00000000
 Kinetic energy                                 99.50773403
 One electron energy                          -135.35507297
 Two electron energy                            36.36190091
 Virial ratio                                    1.99482892
 
 !MCSCF STATE 2.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.2 Quartet
 =============================
 !MCSCF STATE 3.2 Quartet Energy               -98.993172063584
 Nuclear energy                                  0.00000000
 Kinetic energy                                 99.50773403
 One electron energy                          -135.35507297
 Two electron energy                            36.36190091
 Virial ratio                                    1.99482892
 
 !MCSCF STATE 3.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.2 Quartet
 =============================
 !MCSCF STATE 4.2 Quartet Energy               -98.981328361970
 Nuclear energy                                  0.00000000
 Kinetic energy                                 99.53768838
 One electron energy                          -135.38667251
 Two electron energy                            36.40534414
 Virial ratio                                    1.99441056
 
 !MCSCF STATE 4.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.2 Quartet
 =============================
 !MCSCF STATE 5.2 Quartet Energy               -98.981328361970
 Nuclear energy                                  0.00000000
 Kinetic energy                                 99.53768838
 One electron energy                          -135.38667251
 Two electron energy                            36.40534414
 Virial ratio                                    1.99441056
 
 !MCSCF STATE 5.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.2 Quartet
 =============================
 !MCSCF STATE 6.2 Quartet Energy               -98.981328361970
 Nuclear energy                                  0.00000000
 Kinetic energy                                 99.53768838
 One electron energy                          -135.38667251
 Two electron energy                            36.40534414
 Virial ratio                                    1.99441056
 
 !MCSCF STATE 6.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.2 Quartet
 =============================
 !MCSCF STATE 7.2 Quartet Energy               -98.981328361923
 Nuclear energy                                  0.00000000
 Kinetic energy                                 99.53768838
 One electron energy                          -135.38667251
 Two electron energy                            36.40534414
 Virial ratio                                    1.99441056
 
 !MCSCF STATE 7.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.2 Quartet
 =============================
 !MCSCF STATE 8.2 Quartet Energy               -98.981328361923
 Nuclear energy                                  0.00000000
 Kinetic energy                                 99.53768838
 One electron energy                          -135.38667251
 Two electron energy                            36.40534414
 Virial ratio                                    1.99441056
 
 !MCSCF STATE 8.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 !MCSCF expec      <1.2 Doublet|LXLX|1.2 Doublet>     0.981156960385
 !MCSCF expec      <2.2 Doublet|LXLX|2.2 Doublet>     0.993000975504
 !MCSCF expec      <3.2 Doublet|LXLX|3.2 Doublet>     0.025842064111
 !MCSCF expec      <4.2 Doublet|LXLX|4.2 Doublet>     2.274061548569
 !MCSCF expec      <5.2 Doublet|LXLX|5.2 Doublet>     1.725938425522
 !MCSCF expec      <6.2 Doublet|LXLX|6.2 Doublet>     1.365545748336
 !MCSCF expec      <7.2 Doublet|LXLX|7.2 Doublet>     3.461988546795
 !MCSCF expec      <8.2 Doublet|LXLX|8.2 Doublet>     1.172465730777
 !MCSCF expec      <1.2 Quartet|LXLX|1.2 Quartet>     0.196613929334
 !MCSCF expec      <2.2 Quartet|LXLX|2.2 Quartet>     0.815288627946
 !MCSCF expec      <3.2 Quartet|LXLX|3.2 Quartet>     0.988097442721
 !MCSCF expec      <4.2 Quartet|LXLX|4.2 Quartet>     1.894036889268
 !MCSCF expec      <5.2 Quartet|LXLX|5.2 Quartet>     3.013431696623
 !MCSCF expec      <6.2 Quartet|LXLX|6.2 Quartet>     1.092531327174
 !MCSCF expec      <7.2 Quartet|LXLX|7.2 Quartet>     1.543194262750
 !MCSCF expec      <8.2 Quartet|LXLX|8.2 Quartet>     2.456805824185
 
 !MCSCF expec      <1.2 Doublet|LYLY|1.2 Doublet>     0.991829969672
 !MCSCF expec      <2.2 Doublet|LYLY|2.2 Doublet>     0.013300301214
 !MCSCF expec      <3.2 Doublet|LYLY|3.2 Doublet>     0.994869729115
 !MCSCF expec      <4.2 Doublet|LYLY|4.2 Doublet>     0.147257366778
 !MCSCF expec      <5.2 Doublet|LYLY|5.2 Doublet>     3.852741748382
 !MCSCF expec      <6.2 Doublet|LYLY|6.2 Doublet>     1.264595907157
 !MCSCF expec      <7.2 Doublet|LYLY|7.2 Doublet>     1.366695173690
 !MCSCF expec      <8.2 Doublet|LYLY|8.2 Doublet>     3.368709803993
 !MCSCF expec      <1.2 Quartet|LYLY|1.2 Quartet>     0.961533816618
 !MCSCF expec      <2.2 Quartet|LYLY|2.2 Quartet>     0.973234704279
 !MCSCF expec      <3.2 Quartet|LYLY|3.2 Quartet>     0.065231479104
 !MCSCF expec      <4.2 Quartet|LYLY|4.2 Quartet>     1.001664536165
 !MCSCF expec      <5.2 Quartet|LYLY|5.2 Quartet>     1.151250819492
 !MCSCF expec      <6.2 Quartet|LYLY|6.2 Quartet>     3.847084601202
 !MCSCF expec      <7.2 Quartet|LYLY|7.2 Quartet>     0.542135976724
 !MCSCF expec      <8.2 Quartet|LYLY|8.2 Quartet>     3.457864066416
 
 !MCSCF expec      <1.2 Doublet|LZLZ|1.2 Doublet>     0.027013069943
 !MCSCF expec      <2.2 Doublet|LZLZ|2.2 Doublet>     0.993698723283
 !MCSCF expec      <3.2 Doublet|LZLZ|3.2 Doublet>     0.979288206775
 !MCSCF expec      <4.2 Doublet|LZLZ|4.2 Doublet>     3.578681084653
 !MCSCF expec      <5.2 Doublet|LZLZ|5.2 Doublet>     0.421319826096
 !MCSCF expec      <6.2 Doublet|LZLZ|6.2 Doublet>     3.369858344506
 !MCSCF expec      <7.2 Doublet|LZLZ|7.2 Doublet>     1.171316279515
 !MCSCF expec      <8.2 Doublet|LZLZ|8.2 Doublet>     1.458824465230
 !MCSCF expec      <1.2 Quartet|LZLZ|1.2 Quartet>     0.841852254049
 !MCSCF expec      <2.2 Quartet|LZLZ|2.2 Quartet>     0.211476667776
 !MCSCF expec      <3.2 Quartet|LZLZ|3.2 Quartet>     0.946671078176
 !MCSCF expec      <4.2 Quartet|LZLZ|4.2 Quartet>     3.104298574567
 !MCSCF expec      <5.2 Quartet|LZLZ|5.2 Quartet>     1.835317483885
 !MCSCF expec      <6.2 Quartet|LZLZ|6.2 Quartet>     1.060384071624
 !MCSCF expec      <7.2 Quartet|LZLZ|7.2 Quartet>     3.914669760526
 !MCSCF expec      <8.2 Quartet|LZLZ|8.2 Quartet>     0.085330109399
 
 !MCSCF expec      <1.2 Doublet|L**2|1.2 Doublet>     2.000000000000
 !MCSCF expec      <2.2 Doublet|L**2|2.2 Doublet>     2.000000000000
 !MCSCF expec      <3.2 Doublet|L**2|3.2 Doublet>     2.000000000000
 !MCSCF expec      <4.2 Doublet|L**2|4.2 Doublet>     6.000000000000
 !MCSCF expec      <5.2 Doublet|L**2|5.2 Doublet>     6.000000000000
 !MCSCF expec      <6.2 Doublet|L**2|6.2 Doublet>     6.000000000000
 !MCSCF expec      <7.2 Doublet|L**2|7.2 Doublet>     6.000000000000
 !MCSCF expec      <8.2 Doublet|L**2|8.2 Doublet>     6.000000000000
 !MCSCF expec      <1.2 Quartet|L**2|1.2 Quartet>     2.000000000000
 !MCSCF expec      <2.2 Quartet|L**2|2.2 Quartet>     2.000000000000
 !MCSCF expec      <3.2 Quartet|L**2|3.2 Quartet>     2.000000000000
 !MCSCF expec      <4.2 Quartet|L**2|4.2 Quartet>     6.000000000000
 !MCSCF expec      <5.2 Quartet|L**2|5.2 Quartet>     6.000000000000
 !MCSCF expec      <6.2 Quartet|L**2|6.2 Quartet>     6.000000000000
 !MCSCF expec      <7.2 Quartet|L**2|7.2 Quartet>     6.000000000000
 !MCSCF expec      <8.2 Quartet|L**2|8.2 Quartet>     6.000000000000
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000   -26.80914     1  1  s    0.99936
    2.1     1.99601    -1.86594     1  2  s    1.06918
    3.1     0.00421     1.27204     1  2  s   -1.05034    1  3  s   -0.66128    1  4  s    1.64800
    1.2     1.39108    -0.79991     1  1  py   1.07980
    2.2     1.39108    -0.79991     1  1  px   1.07980
    3.2     1.39108    -0.79991     1  1  pz   1.07980
    4.2     0.27551     0.13475     1  1  py  -0.33205    1  6  py   1.06487
    5.2     0.27551     0.13475     1  1  px  -0.33205    1  6  px   1.06487
    6.2     0.27551     0.13475     1  1  pz  -0.33205    1  6  pz   1.06487
 *** IN SYMMETRY  1 ORBITAL   5 SYMMETRY CONTAMINATION OF 0.418D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL   6 SYMMETRY CONTAMINATION OF 0.109D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL   7 SYMMETRY CONTAMINATION OF 0.182D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL   8 SYMMETRY CONTAMINATION OF 0.414D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL   9 SYMMETRY CONTAMINATION OF 0.364D-03 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  10 SYMMETRY CONTAMINATION OF 0.545D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  11 SYMMETRY CONTAMINATION OF 0.572D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  12 SYMMETRY CONTAMINATION OF 0.347D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  13 SYMMETRY CONTAMINATION OF 0.203D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  14 SYMMETRY CONTAMINATION OF 0.697D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  16 SYMMETRY CONTAMINATION OF 0.145D-03 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  17 SYMMETRY CONTAMINATION OF 0.125D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  18 SYMMETRY CONTAMINATION OF 0.105D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  20 SYMMETRY CONTAMINATION OF 0.106D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  22 SYMMETRY CONTAMINATION OF 0.220D-03 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  23 SYMMETRY CONTAMINATION OF 0.231D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  25 SYMMETRY CONTAMINATION OF 0.231D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  26 SYMMETRY CONTAMINATION OF 0.959D-02 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 1 5 3 6 4 2 4   5 6 3 2 1 2 4 5 6 3   1 2 3 6 4 5 1
 *** IN SYMMETRY  2 ORBITAL   7 SYMMETRY CONTAMINATION OF 0.767D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL   8 SYMMETRY CONTAMINATION OF 0.151D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL   9 SYMMETRY CONTAMINATION OF 0.151D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  11 SYMMETRY CONTAMINATION OF 0.113D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  12 SYMMETRY CONTAMINATION OF 0.113D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  13 SYMMETRY CONTAMINATION OF 0.154D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  14 SYMMETRY CONTAMINATION OF 0.154D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  15 SYMMETRY CONTAMINATION OF 0.227D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  16 SYMMETRY CONTAMINATION OF 0.227D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  17 SYMMETRY CONTAMINATION OF 0.113D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  18 SYMMETRY CONTAMINATION OF 0.113D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  19 SYMMETRY CONTAMINATION OF 0.287D-03 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  21 SYMMETRY CONTAMINATION OF 0.118D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  22 SYMMETRY CONTAMINATION OF 0.693D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  23 SYMMETRY CONTAMINATION OF 0.117D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  24 SYMMETRY CONTAMINATION OF 0.664D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  25 SYMMETRY CONTAMINATION OF 0.212D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  26 SYMMETRY CONTAMINATION OF 0.212D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  27 SYMMETRY CONTAMINATION OF 0.371D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  28 SYMMETRY CONTAMINATION OF 0.371D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  29 SYMMETRY CONTAMINATION OF 0.188D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  30 SYMMETRY CONTAMINATION OF 0.133D-03 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  32 SYMMETRY CONTAMINATION OF 0.133D-03 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   2 1 3 2 1 3 3 2 1 6   4 5 9 7 810 1 2 3 6   4 510 8 7 9 1 2 3 2   3 1
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Reoptimze the CI vectors with natural orbitals 
 
 CI Coefficients of symmetry 2 (Doublet)
 =======================================

 State:              1               2               3               4               5               6               7
 20 2a2000     -0.28468830      0.21529364      0.90194112     -0.00000000     -0.00000000      0.00000000      0.00000000
 20 22a000      0.89021685      0.32753767      0.20280431     -0.00000000      0.00000000      0.00000000      0.00000000
 20 a22000     -0.25954400      0.88727914     -0.29371618     -0.00000000      0.00000000      0.00000000      0.00000000
 20 aa200b     -0.00000000     -0.00000000     -0.00000000     -0.13218370      0.65060419     -0.00008071      0.00012550
 20 2aab00     -0.00000000     -0.00000000     -0.00000000      0.62953157     -0.21082769     -0.00021943     -0.00003767
 20 aa20b0     -0.03131397      0.10705020     -0.03543685     -0.00006397      0.00003506     -0.20801129     -0.49944743
 20 a2a00b     -0.03131397      0.10705020     -0.03543685      0.00006397     -0.00003506      0.20801129      0.49944743
 20 a2a0b0     -0.00000000      0.00000000      0.00000000      0.49734787      0.43977650     -0.00030014      0.00008782
 20 aa2b00      0.03434763     -0.02597517     -0.10881916      0.00021721      0.00005506      0.41960672     -0.02188090
 20 2aa00b     -0.03434763      0.02597517      0.10881916      0.00021721      0.00005506      0.41960672     -0.02188091
 20 a2ab00     -0.10740463     -0.03951741     -0.02446833      0.00010171      0.00015984      0.33351193     -0.28397579
 20 2aa0b0     -0.10740463     -0.03951741     -0.02446833     -0.00010171     -0.00015984     -0.33351193      0.28397580
 20 ba200a     -0.00000000      0.00000000      0.00000000      0.05335302     -0.32789025      0.00004623     -0.00006332
 20 ab200a      0.00000000     -0.00000000     -0.00000000      0.07883068     -0.32271394      0.00003448     -0.00006218
 20 2aba00     -0.00000000      0.00000000     -0.00000000     -0.31889379      0.09308762      0.00011402      0.00001642
 20 2baa00      0.00000000      0.00000000      0.00000000     -0.31063778      0.11774007      0.00010541      0.00002125
 20 a2b0a0     -0.00000000     -0.00000000      0.00000000     -0.25728476     -0.21015018      0.00015164     -0.00004207
 20 ba20a0      0.00652980     -0.02232283      0.00738953      0.00003271     -0.00001793      0.10635711      0.25536973
 20 b2a00a      0.00652980     -0.02232283      0.00738953     -0.00003271      0.00001793     -0.10635711     -0.25536973
 20 a2b00a      0.02478417     -0.08472736      0.02804731     -0.00003126      0.00001713     -0.10165418     -0.24407771
 20 ab20a0      0.02478417     -0.08472736      0.02804731      0.00003126     -0.00001713      0.10165418      0.24407771
 20 b2a0a0      0.00000000      0.00000000     -0.00000000     -0.24006311     -0.22962632      0.00014850     -0.00004576
 20 ab2a00     -0.00716240      0.00541652      0.02269171     -0.00011106     -0.00002815     -0.21454681      0.01118780
 20 2ba00a      0.00716240     -0.00541652     -0.02269171     -0.00011106     -0.00002815     -0.21454681      0.01118781
 20 ba2a00     -0.02718523      0.02055865      0.08612745     -0.00010615     -0.00002691     -0.20505991      0.01069310
 20 2ab00a      0.02718523     -0.02055865     -0.08612745     -0.00010615     -0.00002691     -0.20505991      0.01069310
 20 a2ba00      0.02239674      0.00824044      0.00510230     -0.00005200     -0.00008173     -0.17052616      0.14519811
 20 2ab0a0      0.02239674      0.00824044      0.00510230      0.00005201      0.00008173      0.17052616     -0.14519811
 20 b2aa00      0.08500789      0.03127697      0.01936603     -0.00004971     -0.00007811     -0.16298577      0.13877769
 20 2ba0a0      0.08500789      0.03127697      0.01936603      0.00004971      0.00007811      0.16298577     -0.13877769
 20 2020a0     -0.01687402      0.01276087      0.05345978     -0.00000000      0.00000000      0.00000000      0.00000000
 20 22000a      0.05276486      0.01941378      0.01202060     -0.00000000      0.00000000      0.00000000      0.00000000
 20 022a00     -0.01538367      0.05259073     -0.01740912     -0.00000000     -0.00000000      0.00000000      0.00000000
 ab 2a2000     -0.01616498      0.01222466      0.05121342      0.00000000     -0.00000000     -0.00000000      0.00000000
 ab 22a000      0.05054770      0.01859803      0.01151550     -0.00000000      0.00000000     -0.00000000     -0.00000000
 ab a22000     -0.01473725      0.05038089     -0.01667760     -0.00000000      0.00000000      0.00000000     -0.00000000
 
 Energy:      -99.47764589    -99.47764589    -99.47764589    -98.97331853    -98.97331853    -98.97331853    -98.97331853

 State:              8
 20 2a2000     -0.00000000
 20 22a000     -0.00000000
 20 a22000     -0.00000000
 20 aa200b      0.00007517
 20 2aab00     -0.00008634
 20 aa20b0      0.19455678
 20 a2a00b     -0.19455676
 20 a2a0b0     -0.00001116
 20 aa2b00      0.39245401
 20 2aa00b      0.39245402
 20 a2ab00     -0.37241951
 20 2aa0b0      0.37241949
 20 ba200a     -0.00003648
 20 ab200a     -0.00003869
 20 2aba00      0.00004244
 20 2baa00      0.00004389
 20 a2b0a0      0.00000741
 20 ba20a0     -0.09947776
 20 b2a00a      0.09947775
 20 a2b00a      0.09507901
 20 ab20a0     -0.09507902
 20 b2a0a0      0.00000376
 20 ab2a00     -0.20066350
 20 2ba00a     -0.20066352
 20 ba2a00     -0.19179050
 20 2ab00a     -0.19179051
 20 a2ba00      0.19041978
 20 2ab0a0     -0.19041976
 20 b2aa00      0.18199973
 20 2ba0a0     -0.18199972
 20 2020a0     -0.00000001
 20 22000a     -0.00000001
 20 022a00     -0.00000001
 ab 2a2000      0.00000000
 ab 22a000      0.00000000
 ab a22000     -0.00000000
 
 Energy:      -98.97331853
 
 
 CI Coefficients of symmetry 2 (Quartet)
 =======================================

 State:              1               2               3               4               5               6               7
 20 aa200a     -0.00000000      0.00000000      0.00000000      0.00011301      0.00008824      0.00008265     -0.13021135
 20 2aaa00     -0.00000000      0.00000000      0.00000000     -0.00001940     -0.00014196     -0.00011092      0.76110683
 20 a2a00a      0.08478548     -0.17352155      0.67805413      0.34028071     -0.58884230     -0.18603128     -0.00012213
 20 aa20a0      0.08478548     -0.17352155      0.67805413     -0.34028071      0.58884230      0.18603128      0.00012213
 20 2aa0a0      0.66877734     -0.18133989     -0.13003237      0.24110466      0.32223196     -0.57893780     -0.00002325
 20 a2aa00      0.66877734     -0.18133989     -0.13003237     -0.24110466     -0.32223196      0.57893780      0.00002325
 20 aa2a00      0.20640736      0.65883368      0.14279317      0.56851688      0.21578963      0.35687147      0.00005695
 20 2aa00a     -0.20640736     -0.65883368     -0.14279317      0.56851688      0.21578963      0.35687147      0.00005695
 20 a2a0a0      0.00000000     -0.00000000     -0.00000000      0.00009361     -0.00005372     -0.00002826      0.63089547
 
 Energy:      -98.99317206    -98.99317206    -98.99317206    -98.98132836    -98.98132836    -98.98132836    -98.98132836

 State:              8
 20 aa200a      0.80367290
 20 2aaa00     -0.28907010
 20 a2a00a      0.00001615
 20 aa20a0     -0.00001615
 20 2aa0a0     -0.00001351
 20 a2aa00      0.00001351
 20 aa2a00     -0.00013111
 20 2aa00a     -0.00013111
 20 a2a0a0      0.51460280
 
 Energy:      -98.98132836
 


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       29.65       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       5        5.10       700     1000      520     2100     2140   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF   

 PROGRAMS   *        TOTAL     MULTI   RHF-SCF       INT
 CPU TIMES  *         3.76      3.11      0.12      0.32
 REAL TIME  *         4.68 SEC
 DISK USED  *        34.80 MB (local),      467.01 MB (total)
 SF USED    *         3.59 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

        ENERGY      LL
    -99.47764589   2.0
    -99.47764589   2.0
    -99.47764589   2.0
    -98.97331853   6.0
    -98.97331853   6.0
    -98.97331853   6.0
    -98.97331853   6.0
    -98.97331853   6.0
    -98.99317206   2.0
    -98.99317206   2.0
    -98.99317206   2.0
    -98.98132836   6.0
    -98.98132836   6.0
    -98.98132836   6.0
    -98.98132836   6.0
    -98.98132836   6.0
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 8  Roots:    1   2   3   4   5   6   7   8
 Number of reference states: 8  Roots:    1   2   3   4   5   6   7   8

 Reference symmetry:                   2   Doublet 
 Number of electrons:                  9
 Maximum number of shells:             4
 Maximum number of spin couplings:    14

 Reference space:      554 conf     1204 CSFs
 N elec internal:     1016 conf     2352 CSFs
 N-1 el internal:      784 conf     2688 CSFs
 N-2 el internal:      504 conf     2520 CSFs

 Number of electrons in valence space:                      7
 Maximum number of open shell orbitals in reference space:  7
 Maximum number of open shell orbitals in internal spaces:  7


 Number of core orbitals:           1 (   1   0 )
 Number of active  orbitals:        8 (   2   6 )
 Number of external orbitals:      50 (  24  26 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Valence orbitals related to previous ones by unitary transformation. Operators transformed.


 Number of p-space configurations:  12

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1       -99.47764589
     2       -99.47764589
     3       -99.47764589
     4       -98.97331853
     5       -98.97331853
     6       -98.97331853
     7       -98.97331853
     8       -98.97331853

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1075D-06

 Number of blocks in overlap matrix:     9   Smallest eigenvalue:  0.11D-06
 Number of N-2 electron functions:     481
 Number of N-1 electron functions:    2688

 Number of internal configurations:                 1204
 Number of singly external configurations:         67232
 Number of doubly external configurations:        301547
 Total number of contracted configurations:       369983
 Total number of uncontracted configurations:    1637598

 Diagonal Coupling coefficients finished.               Storage: 1176179 words, CPU-Time:      0.50 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   87207 words, CPU-time:      0.01 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000   -99.47764589    -0.00000000    -0.23651370  0.46D-01  0.11D-01     0.91
    1     2     2     1.00000000     0.00000000   -99.47764589    -0.00000000    -0.23613374  0.46D-01  0.11D-01     0.91
    1     3     3     1.00000000     0.00000000   -99.47764589    -0.00000000    -0.23643425  0.46D-01  0.11D-01     0.91
    1     4     4     1.00000000     0.00000000   -98.97331853     0.00000000    -0.17248379  0.19D-01  0.97D-02     0.91
    1     5     5     1.00000000     0.00000000   -98.97331853     0.00000000    -0.17110536  0.19D-01  0.93D-02     0.91
    1     6     6     1.00000000     0.00000000   -98.97331853    -0.00000000    -0.17107308  0.19D-01  0.94D-02     0.91
    1     7     7     1.00000000     0.00000000   -98.97331853    -0.00000000    -0.17124560  0.19D-01  0.94D-02     0.91
    1     8     8     1.00000000     0.00000000   -98.97331853     0.00000000    -0.17102910  0.19D-01  0.94D-02     0.91
    2     1     1     1.04913850    -0.22065795   -99.69830384    -0.22065795    -0.01293555  0.10D-02  0.11D-02     4.15
    2     2     2     1.04913923    -0.22063728   -99.69828317    -0.22063728    -0.01293587  0.10D-02  0.11D-02     4.15
    2     3     3     1.04914673    -0.22050321   -99.69814910    -0.22050321    -0.01300124  0.11D-02  0.11D-02     4.15
    2     4     4     1.02709675    -0.16711360   -99.14043213    -0.16711360    -0.00490533  0.30D-03  0.43D-03     4.15
    2     5     5     1.02708011    -0.16710203   -99.14042056    -0.16710203    -0.00491035  0.29D-03  0.43D-03     4.15
    2     6     6     1.02708695    -0.16709987   -99.14041840    -0.16709987    -0.00491876  0.30D-03  0.43D-03     4.15
    2     7     7     1.02733171    -0.16703308   -99.14035160    -0.16703308    -0.00500958  0.30D-03  0.45D-03     4.15
    2     8     8     1.02738147    -0.16702980   -99.14034833    -0.16702980    -0.00500332  0.31D-03  0.44D-03     4.15
    3     1     1     1.04999712    -0.23442198   -99.71206787    -0.01376403    -0.00087921  0.43D-04  0.82D-04     7.39
    3     2     2     1.04999338    -0.23441957   -99.71206546    -0.01378229    -0.00087909  0.43D-04  0.82D-04     7.39
    3     3     3     1.04998431    -0.23439521   -99.71204110    -0.01389200    -0.00089314  0.44D-04  0.83D-04     7.39
    3     4     4     1.02840771    -0.17236124   -99.14567977    -0.00524763    -0.00037545  0.25D-04  0.37D-04     7.39
    3     5     5     1.02840606    -0.17235921   -99.14567774    -0.00525718    -0.00037565  0.25D-04  0.37D-04     7.39
    3     6     6     1.02840549    -0.17235735   -99.14567588    -0.00525748    -0.00037857  0.25D-04  0.38D-04     7.39
    3     7     7     1.02843257    -0.17234921   -99.14566774    -0.00531613    -0.00037860  0.26D-04  0.38D-04     7.39
    3     8     8     1.02840642    -0.17234136   -99.14565989    -0.00531156    -0.00038969  0.26D-04  0.40D-04     7.39
    4     1     1     1.05152267    -0.23550646   -99.71315235    -0.00108448    -0.00008581  0.38D-05  0.79D-05    10.64
    4     2     2     1.05152403    -0.23550577   -99.71315167    -0.00108620    -0.00008619  0.38D-05  0.79D-05    10.64
    4     3     3     1.05151918    -0.23550202   -99.71314791    -0.00110681    -0.00008853  0.39D-05  0.81D-05    10.64
    4     4     4     1.02947817    -0.17284234   -99.14616087    -0.00048110    -0.00005900  0.46D-05  0.63D-05    10.64
    4     5     5     1.02947738    -0.17284213   -99.14616066    -0.00048292    -0.00005920  0.46D-05  0.63D-05    10.64
    4     6     6     1.02947934    -0.17284131   -99.14615984    -0.00048396    -0.00005930  0.46D-05  0.63D-05    10.64
    4     7     7     1.02948891    -0.17283760   -99.14615613    -0.00048840    -0.00006147  0.45D-05  0.66D-05    10.64
    4     8     8     1.02948210    -0.17283659   -99.14615511    -0.00049522    -0.00006325  0.45D-05  0.71D-05    10.64
    5     1     1     1.05209895    -0.23561012   -99.71325601    -0.00010366    -0.00000865  0.53D-06  0.75D-06    13.91
    5     2     2     1.05210028    -0.23561001   -99.71325590    -0.00010423    -0.00000872  0.54D-06  0.75D-06    13.91
    5     3     3     1.05210199    -0.23560947   -99.71325536    -0.00010746    -0.00000908  0.57D-06  0.78D-06    13.91
    5     4     4     1.02969208    -0.17292010   -99.14623863    -0.00007777    -0.00001198  0.84D-06  0.13D-05    13.91
    5     5     5     1.02969065    -0.17292003   -99.14623856    -0.00007790    -0.00001200  0.84D-06  0.13D-05    13.91
    5     6     6     1.02969237    -0.17291982   -99.14623835    -0.00007850    -0.00001214  0.85D-06  0.13D-05    13.91
    5     7     7     1.02969652    -0.17291902   -99.14623755    -0.00008142    -0.00001272  0.91D-06  0.13D-05    13.91
    5     8     8     1.02969696    -0.17291870   -99.14623723    -0.00008212    -0.00001293  0.85D-06  0.14D-05    13.91
    6     1     1     1.05203845    -0.23562049   -99.71326638    -0.00001036    -0.00000087  0.42D-07  0.81D-07    17.12
    6     2     2     1.05203821    -0.23562047   -99.71326637    -0.00001047    -0.00000088  0.43D-07  0.82D-07    17.12
    6     3     3     1.05203762    -0.23562039   -99.71326628    -0.00001092    -0.00000092  0.45D-07  0.86D-07    17.12
    6     4     4     1.02966516    -0.17293634   -99.14625487    -0.00001624    -0.00000280  0.18D-06  0.26D-06    17.12
    6     5     5     1.02966490    -0.17293630   -99.14625483    -0.00001627    -0.00000282  0.18D-06  0.26D-06    17.12
    6     6     6     1.02966486    -0.17293628   -99.14625481    -0.00001646    -0.00000284  0.18D-06  0.26D-06    17.12
    6     7     7     1.02965858    -0.17293618   -99.14625470    -0.00001715    -0.00000298  0.20D-06  0.27D-06    17.12
    6     8     8     1.02965748    -0.17293606   -99.14625459    -0.00001736    -0.00000304  0.21D-06  0.28D-06    17.12
    7     1     1     1.05205055    -0.23562149   -99.71326739    -0.00000101    -0.00000011  0.52D-08  0.10D-07    20.37
    7     2     2     1.05205064    -0.23562149   -99.71326739    -0.00000102    -0.00000011  0.51D-08  0.10D-07    20.37
    7     3     3     1.05205006    -0.23562146   -99.71326735    -0.00000107    -0.00000012  0.54D-08  0.11D-07    20.37
    7     4     4     1.02968558    -0.17293985   -99.14625838    -0.00000351    -0.00000070  0.70D-07  0.62D-07    20.37
    7     5     5     1.02968531    -0.17293982   -99.14625835    -0.00000352    -0.00000073  0.73D-07  0.68D-07    20.37
    7     6     6     1.02968655    -0.17293982   -99.14625835    -0.00000354    -0.00000066  0.66D-07  0.60D-07    20.37
    7     7     7     1.02968665    -0.17293980   -99.14625833    -0.00000362    -0.00000066  0.67D-07  0.60D-07    20.37
    7     8     8     1.02968636    -0.17293979   -99.14625832    -0.00000373    -0.00000067  0.66D-07  0.60D-07    20.37
    8     1     1     1.05205937    -0.23562162   -99.71326752    -0.00000013    -0.00000002  0.70D-09  0.14D-08    23.60
    8     2     2     1.05205933    -0.23562162   -99.71326752    -0.00000013    -0.00000002  0.68D-09  0.14D-08    23.60
    8     3     3     1.05205926    -0.23562160   -99.71326749    -0.00000014    -0.00000002  0.74D-09  0.15D-08    23.60
    8     4     4     1.02969197    -0.17294070   -99.14625922    -0.00000084    -0.00000020  0.13D-07  0.21D-07    23.60
    8     5     5     1.02969185    -0.17294068   -99.14625921    -0.00000086    -0.00000020  0.12D-07  0.23D-07    23.60
    8     6     6     1.02969227    -0.17294060   -99.14625913    -0.00000079    -0.00000018  0.13D-07  0.18D-07    23.60
    8     7     7     1.02969228    -0.17294059   -99.14625912    -0.00000079    -0.00000018  0.13D-07  0.18D-07    23.60
    8     8     8     1.02969212    -0.17294058   -99.14625911    -0.00000080    -0.00000018  0.13D-07  0.19D-07    23.60
    9     1     1     1.05205937    -0.23562162   -99.71326752    -0.00000000    -0.00000002  0.69D-09  0.14D-08    26.01
    9     2     2     1.05205934    -0.23562162   -99.71326752    -0.00000000    -0.00000002  0.68D-09  0.14D-08    26.01
    9     3     3     1.05205927    -0.23562160   -99.71326749    -0.00000000    -0.00000002  0.74D-09  0.15D-08    26.01
    9     4     4     1.02970236    -0.17294101   -99.14625954    -0.00000032    -0.00000003  0.17D-08  0.34D-08    26.01
    9     5     5     1.02970228    -0.17294100   -99.14625953    -0.00000032    -0.00000003  0.16D-08  0.36D-08    26.01
    9     6     6     1.02970189    -0.17294087   -99.14625940    -0.00000027    -0.00000003  0.17D-08  0.28D-08    26.01
    9     7     7     1.02969658    -0.17294083   -99.14625936    -0.00000024    -0.00000006  0.33D-08  0.63D-08    26.01
    9     8     8     1.02969654    -0.17294082   -99.14625934    -0.00000023    -0.00000006  0.33D-08  0.62D-08    26.01


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   1.0%
 S   0.8%   1.8%
 P   3.5%  15.5%  53.8%

 Initialization:   2.8%
 Other:           20.8%

 Total CPU:       26.0 seconds
 =====================================



 gnormi=  0.95051670  gnorms=  0.03324076  gnormp=  0.01624254  gnorm=  1.00000000
 ecorri= -0.22396229  ecorrs= -0.00783172  ecorrp= -0.00382761  ecorr= -0.23562162

 gnormi=  0.95051673  gnorms=  0.03324072  gnormp=  0.01624256  gnorm=  1.00000000
 ecorri= -0.22396229  ecorrs= -0.00783174  ecorrp= -0.00382758  ecorr= -0.23562162

 gnormi=  0.95051679  gnorms=  0.03324080  gnormp=  0.01624241  gnorm=  1.00000000
 ecorri= -0.22396228  ecorrs= -0.00783165  ecorrp= -0.00382766  ecorr= -0.23562160

 gnormi=  0.97115442  gnorms=  0.01697194  gnormp=  0.01187364  gnorm=  1.00000000
 ecorri= -0.16795243  ecorrs= -0.00293079  ecorrp= -0.00205779  ecorr= -0.17294101

 gnormi=  0.97115450  gnorms=  0.01697205  gnormp=  0.01187345  gnorm=  1.00000000
 ecorri= -0.16795243  ecorrs= -0.00293050  ecorrp= -0.00205807  ecorr= -0.17294100

 gnormi=  0.97115486  gnorms=  0.01697165  gnormp=  0.01187348  gnorm=  1.00000000
 ecorri= -0.16795237  ecorrs= -0.00293105  ecorrp= -0.00205745  ecorr= -0.17294087

 gnormi=  0.97115988  gnorms=  0.01696968  gnormp=  0.01187045  gnorm=  1.00000000
 ecorri= -0.16795320  ecorrs= -0.00293459  ecorrp= -0.00205304  ecorr= -0.17294083

 gnormi=  0.97115991  gnorms=  0.01696968  gnormp=  0.01187041  gnorm=  1.00000000
 ecorri= -0.16795319  ecorrs= -0.00293460  ecorrp= -0.00205303  ecorr= -0.17294082

 Wavefunction saved on  5201.2

 Reference coefficients greater than 0.0500000
 =============================================
 202/2000          -0.0000365  -0.0000070   0.9616423  -0.0000000  -0.0000000   0.0000043   0.0000000   0.0000000
 2022/000           0.0000000   0.9616423   0.0000070  -0.0000000  -0.0000000  -0.0000000  -0.0000000   0.0000057
 20/22000           0.9616423  -0.0000000   0.0000365   0.0000000   0.0000000   0.0000000  -0.0000013  -0.0000000
 202//\00           0.0000000  -0.0000000  -0.0000000   0.8004535  -0.0305356   0.0000014   0.0000078  -0.0000014
 20//200\           0.0000000  -0.0000000  -0.0000000  -0.3740407   0.7085118   0.0000003  -0.0000036   0.0000065
 20/2/\00          -0.0000000  -0.0892757  -0.0000006   0.0000010  -0.0000059  -0.0000286  -0.0000000   0.6938740
 20//2\00           0.0000034   0.0000006  -0.0892758  -0.0000012  -0.0000010   0.6938639   0.0000052   0.0000286
 20/2/00\           0.0892758  -0.0000000   0.0000034  -0.0000067  -0.0000001  -0.0000052   0.6938443   0.0000000
 20//20\0           0.0892758  -0.0000000   0.0000034   0.0000067   0.0000001   0.0000052  -0.6938275  -0.0000000
 202//00\          -0.0000034  -0.0000006   0.0892758  -0.0000012  -0.0000010   0.6938049   0.0000052   0.0000286
 202//0\0          -0.0000000  -0.0892757  -0.0000006  -0.0000010   0.0000059   0.0000286   0.0000000  -0.6937977
 20/2/0\0          -0.0000000   0.0000000   0.0000000   0.4268270   0.6781541   0.0000017   0.0000042   0.0000051
 /\2/2000          -0.0000022  -0.0000004   0.0587354  -0.0000000  -0.0000000   0.0000009  -0.0000000   0.0000000
 /\/22000           0.0587353   0.0000000   0.0000022   0.0000000  -0.0000000  -0.0000000  -0.0000011  -0.0000000
 /\22/000          -0.0000000   0.0587353   0.0000004  -0.0000000  -0.0000000  -0.0000000  -0.0000000   0.0000020

 Coefficients of singly external configurations greater than 0.0500000
 =====================================================================

 20/2\000   8.2     0.0000000  -0.0879442  -0.0000006  -0.0000000   0.0000003   0.0000013   0.0000000  -0.0321630
 20/2\000   7.2     0.0879441   0.0000000   0.0000033   0.0000003   0.0000000   0.0000002  -0.0321589  -0.0000000
 202/\000   7.2    -0.0000033  -0.0000006   0.0879439   0.0000001   0.0000000  -0.0321451  -0.0000002  -0.0000013
 20/\2000   8.2     0.0000033   0.0000006  -0.0879439   0.0000001   0.0000000  -0.0321528  -0.0000002  -0.0000013
 20/\2000   9.2     0.0879435  -0.0000000   0.0000033  -0.0000003  -0.0000000  -0.0000002   0.0321579   0.0000000
 202/\000   9.2     0.0000000  -0.0879434  -0.0000006   0.0000000  -0.0000003  -0.0000013  -0.0000000   0.0321541

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.000000   -0.000037    0.971361   -0.000000    0.000000    0.000000    0.000000    0.000000
 2           0.971361   -0.000007   -0.000000   -0.000000   -0.000000    0.000000    0.000000   -0.000000
 3           0.000007    0.971361    0.000037    0.000000    0.000000   -0.000000   -0.000000    0.000000
 4           0.000000    0.000000   -0.000000    0.492062    0.853801    0.000001   -0.000010   -0.000002
 5           0.000000    0.000000   -0.000000    0.853801   -0.492063   -0.000008   -0.000000   -0.000001
 6           0.000000   -0.000004   -0.000000    0.000002    0.000001   -0.000041   -0.000007    0.985445
 7           0.000000    0.000000    0.000001    0.000005    0.000008   -0.000000    0.985447    0.000007
 8          -0.000005   -0.000000   -0.000000    0.000006   -0.000005    0.985447    0.000000    0.000041

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.971361    0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.000001   -0.000000
 2           0.000000    0.971361    0.000000    0.000000    0.000000    0.000000    0.000000   -0.000002
 3          -0.000000    0.000000    0.971361    0.000000    0.000000   -0.000002    0.000000   -0.000000
 4          -0.000000    0.000000    0.000000    0.985445   -0.000000   -0.000000   -0.000000    0.000000
 5          -0.000000    0.000000    0.000000   -0.000000    0.985445    0.000000    0.000000    0.000000
 6           0.000000    0.000000   -0.000002   -0.000000    0.000000    0.985445   -0.000000    0.000000
 7           0.000001    0.000000    0.000000   -0.000000    0.000000   -0.000000    0.985447   -0.000000
 8          -0.000000   -0.000002   -0.000000    0.000000    0.000000    0.000000   -0.000000    0.985447


 RESULTS FOR STATE 1.2
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.97136123 (fixed)   0.97494446 (relaxed)   0.97136123 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00739135    0.00000000   -0.12542463
 Singles      0.03522974   -0.10443371   -0.10636938
 Pairs        0.01721442   -0.00000000   -0.00382761
 Total        1.05983551   -0.10443371   -0.23562162
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -99.47764589
 Nuclear energy                         0.00000000
 Kinetic energy                       100.31561666
 One electron energy                 -139.10545950
 Two electron energy                   39.39219198
 Virial quotient                       -0.99399546
 Correlation energy                    -0.23562162
 !MRCI STATE 1.2 Energy               -99.713267517586

 Properties without orbital relaxation:

 !MRCI STATE 1.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -99.72736606 (Davidson, fixed reference)
 Cluster corrected energies           -99.72553383 (Davidson, relaxed reference)
 Cluster corrected energies           -99.72736606 (Davidson, rotated reference)

 Cluster corrected energies           -99.72284989 (Pople, fixed reference)
 Cluster corrected energies           -99.72158429 (Pople, relaxed reference)
 Cluster corrected energies           -99.72284989 (Pople, rotated reference)



 RESULTS FOR STATE 2.2
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.97136124 (fixed)   0.97494447 (relaxed)   0.97136124 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00739137    0.00000000   -0.12542467
 Singles      0.03522969   -0.10443367   -0.10636937
 Pairs        0.01721444    0.00000000   -0.00382758
 Total        1.05983550   -0.10443367   -0.23562162
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -99.47764589
 Nuclear energy                         0.00000000
 Kinetic energy                       100.31561882
 One electron energy                 -139.10546089
 Two electron energy                   39.39219337
 Virial quotient                       -0.99399544
 Correlation energy                    -0.23562162
 !MRCI STATE 2.2 Energy               -99.713267515206

 Properties without orbital relaxation:

 !MRCI STATE 2.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -99.72736605 (Davidson, fixed reference)
 Cluster corrected energies           -99.72553382 (Davidson, relaxed reference)
 Cluster corrected energies           -99.72736605 (Davidson, rotated reference)

 Cluster corrected energies           -99.72284989 (Pople, fixed reference)
 Cluster corrected energies           -99.72158428 (Pople, relaxed reference)
 Cluster corrected energies           -99.72284989 (Pople, rotated reference)



 RESULTS FOR STATE 3.2
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.97136127 (fixed)   0.97494451 (relaxed)   0.97136127 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00739137    0.00000000   -0.12542453
 Singles      0.03522978   -0.10443375   -0.10636936
 Pairs        0.01721428   -0.00000005   -0.00382771
 Total        1.05983543   -0.10443380   -0.23562160
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -99.47764589
 Nuclear energy                         0.00000000
 Kinetic energy                       100.31561319
 One electron energy                 -139.10545893
 Two electron energy                   39.39219144
 Virial quotient                       -0.99399549
 Correlation energy                    -0.23562160
 !MRCI STATE 3.2 Energy               -99.713267491218

 Properties without orbital relaxation:

 !MRCI STATE 3.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -99.72736601 (Davidson, fixed reference)
 Cluster corrected energies           -99.72553378 (Davidson, relaxed reference)
 Cluster corrected energies           -99.72736601 (Davidson, rotated reference)

 Cluster corrected energies           -99.72284985 (Pople, fixed reference)
 Cluster corrected energies           -99.72158424 (Pople, relaxed reference)
 Cluster corrected energies           -99.72284985 (Pople, rotated reference)



 RESULTS FOR STATE 4.2
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.85380065 (fixed)   0.98547167 (relaxed)   0.98544458 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00005500   -0.00000000   -0.09662986
 Singles      0.01747701   -0.07344523   -0.07425353
 Pairs        0.01222699    0.00000018   -0.00205762
 Total        1.02975899   -0.07344505   -0.17294101
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -98.97331853
 Nuclear energy                         0.00000000
 Kinetic energy                        99.89291160
 One electron energy                 -135.35040523
 Two electron energy                   36.20414568
 Virial quotient                       -0.99252548
 Correlation energy                    -0.17294101
 !MRCI STATE 4.2 Energy               -99.146259542383

 Properties without orbital relaxation:

 !MRCI STATE 4.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -99.15140609 (Davidson, fixed reference)
 Cluster corrected energies           -99.15139630 (Davidson, relaxed reference)
 Cluster corrected energies           -99.15140609 (Davidson, rotated reference)

 Cluster corrected energies           -99.14972426 (Pople, fixed reference)
 Cluster corrected energies           -99.14971760 (Pople, relaxed reference)
 Cluster corrected energies           -99.14972426 (Pople, rotated reference)



 RESULTS FOR STATE 5.2
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.85380069 (fixed)   0.98547171 (relaxed)   0.98544465 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00005493   -0.00000000   -0.09662943
 Singles      0.01747712   -0.07344563   -0.07425364
 Pairs        0.01222679    0.00000014   -0.00205794
 Total        1.02975884   -0.07344550   -0.17294100
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -98.97331853
 Nuclear energy                         0.00000000
 Kinetic energy                        99.89290636
 One electron energy                 -135.35040536
 Two electron energy                   36.20414583
 Virial quotient                       -0.99252553
 Correlation energy                    -0.17294100
 !MRCI STATE 5.2 Energy               -99.146259533331

 Properties without orbital relaxation:

 !MRCI STATE 5.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -99.15140606 (Davidson, fixed reference)
 Cluster corrected energies           -99.15139628 (Davidson, relaxed reference)
 Cluster corrected energies           -99.15140606 (Davidson, rotated reference)

 Cluster corrected energies           -99.14972423 (Pople, fixed reference)
 Cluster corrected energies           -99.14971758 (Pople, relaxed reference)
 Cluster corrected energies           -99.14972423 (Pople, rotated reference)



 RESULTS FOR STATE 6.2
 =====================

 Maximum overlap with reference state  8

 Coefficient of reference function:   C(0) = 0.98544482 (fixed)   0.98547190 (relaxed)   0.98544483 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00005495   -0.00000000   -0.00000921
 Singles      0.01747670   -0.07344492   -0.07425353
 Pairs        0.01222682   -0.09949597   -0.09867814
 Total        1.02975847   -0.17294089   -0.17294087
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -98.97331853
 Nuclear energy                         0.00000000
 Kinetic energy                        99.89291967
 One electron energy                 -135.35041788
 Two electron energy                   36.20415847
 Virial quotient                       -0.99252539
 Correlation energy                    -0.17294087
 !MRCI STATE 6.2 Energy               -99.146259404283

 Properties without orbital relaxation:

 !MRCI STATE 6.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -99.15140586 (Davidson, fixed reference)
 Cluster corrected energies           -99.15139608 (Davidson, relaxed reference)
 Cluster corrected energies           -99.15140586 (Davidson, rotated reference)

 Cluster corrected energies           -99.14972405 (Pople, fixed reference)
 Cluster corrected energies           -99.14971740 (Pople, relaxed reference)
 Cluster corrected energies           -99.14972405 (Pople, rotated reference)



 RESULTS FOR STATE 7.2
 =====================

 Coefficient of reference function:   C(0) = 0.98544744 (fixed)   0.98547444 (relaxed)   0.98544744 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00005480   -0.00000000   -0.09663296
 Singles      0.01747457   -0.07344148   -0.07425410
 Pairs        0.01222363   -0.00000074   -0.00205376
 Total        1.02975300   -0.07344223   -0.17294083
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -98.97331853
 Nuclear energy                         0.00000000
 Kinetic energy                        99.89306856
 One electron energy                 -135.35042577
 Two electron energy                   36.20416641
 Virial quotient                       -0.99252391
 Correlation energy                    -0.17294083
 !MRCI STATE 7.2 Energy               -99.146259359782

 Properties without orbital relaxation:

 !MRCI STATE 7.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -99.15140487 (Davidson, fixed reference)
 Cluster corrected energies           -99.15139511 (Davidson, relaxed reference)
 Cluster corrected energies           -99.15140487 (Davidson, rotated reference)

 Cluster corrected energies           -99.14972337 (Pople, fixed reference)
 Cluster corrected energies           -99.14971673 (Pople, relaxed reference)
 Cluster corrected energies           -99.14972337 (Pople, rotated reference)



 RESULTS FOR STATE 8.2
 =====================

 Maximum overlap with reference state  6

 Coefficient of reference function:   C(0) = 0.98544745 (fixed)   0.98547446 (relaxed)   0.98544746 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00005480   -0.00000000   -0.09662971
 Singles      0.01747458   -0.07344146   -0.07425409
 Pairs        0.01222359   -0.00000410   -0.00205701
 Total        1.02975297   -0.07344556   -0.17294082
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -98.97331853
 Nuclear energy                         0.00000000
 Kinetic energy                        99.89306876
 One electron energy                 -135.35042579
 Two electron energy                   36.20416645
 Virial quotient                       -0.99252391
 Correlation energy                    -0.17294082
 !MRCI STATE 8.2 Energy               -99.146259344608

 Properties without orbital relaxation:

 !MRCI STATE 8.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -99.15140485 (Davidson, fixed reference)
 Cluster corrected energies           -99.15139509 (Davidson, relaxed reference)
 Cluster corrected energies           -99.15140485 (Davidson, rotated reference)

 Cluster corrected energies           -99.14972335 (Pople, fixed reference)
 Cluster corrected energies           -99.14971671 (Pople, relaxed reference)
 Cluster corrected energies           -99.14972335 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       29.65       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       6       29.10       700     1000      520     2100     2140     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *        33.01     29.26      3.11      0.12      0.32
 REAL TIME  *        37.37 SEC
 DISK USED  *        58.79 MB (local),      754.97 MB (total)
 SF USED    *       244.68 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =       -99.72736606  AU                              
 SETTING HLSDIAG(2)     =       -99.72736605  AU                              
 SETTING HLSDIAG(3)     =       -99.72736601  AU                              
 SETTING HLSDIAG(4)     =       -99.15140609  AU                              
 SETTING HLSDIAG(5)     =       -99.15140606  AU                              
 SETTING HLSDIAG(6)     =       -99.15140586  AU                              
 SETTING HLSDIAG(7)     =       -99.15140487  AU                              
 SETTING HLSDIAG(8)     =       -99.15140485  AU                              


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 8  Roots:    1   2   3   4   5   6   7   8
 Number of reference states: 8  Roots:    1   2   3   4   5   6   7   8

 Reference symmetry:                   2   Quartet 
 Number of electrons:                  9
 Maximum number of shells:             3
 Maximum number of spin couplings:    14

 Reference space:      344 conf      656 CSFs
 N elec internal:      736 conf     1344 CSFs
 N-1 el internal:      728 conf     1932 CSFs
 N-2 el internal:      492 conf     2060 CSFs

 Number of electrons in valence space:                      7
 Maximum number of open shell orbitals in reference space:  7
 Maximum number of open shell orbitals in internal spaces:  7


 Number of core orbitals:           1 (   1   0 )
 Number of active  orbitals:        8 (   2   6 )
 Number of external orbitals:      50 (  24  26 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Coulomb and exchange operators available. No transformation done.


 Number of p-space configurations:   9

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1       -98.99317206
     2       -98.99317206
     3       -98.99317206
     4       -98.98132836
     5       -98.98132836
     6       -98.98132836
     7       -98.98132836
     8       -98.98132836

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1188D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1188D-06

 Number of blocks in overlap matrix:    13   Smallest eigenvalue:  0.12D-06
 Number of N-2 electron functions:     446
 Number of N-1 electron functions:    1932

 Number of internal configurations:                  656
 Number of singly external configurations:         48256
 Number of doubly external configurations:        278762
 Total number of contracted configurations:       327674
 Total number of uncontracted configurations:    1322822

 Diagonal Coupling coefficients finished.               Storage:  701463 words, CPU-Time:      0.19 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   84847 words, CPU-time:      0.01 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000   -98.99317206     0.00000000    -0.16908581  0.19D-01  0.89D-02     0.43
    1     2     2     1.00000000     0.00000000   -98.99317206    -0.00000000    -0.16920085  0.19D-01  0.90D-02     0.43
    1     3     3     1.00000000     0.00000000   -98.99317206     0.00000000    -0.16920688  0.19D-01  0.89D-02     0.43
    1     4     4     1.00000000     0.00000000   -98.98132836     0.00000000    -0.16942207  0.19D-01  0.90D-02     0.43
    1     5     5     1.00000000     0.00000000   -98.98132836    -0.00000000    -0.16953447  0.19D-01  0.90D-02     0.43
    1     6     6     1.00000000     0.00000000   -98.98132836     0.00000000    -0.16956377  0.19D-01  0.90D-02     0.43
    1     7     7     1.00000000     0.00000000   -98.98132836     0.00000000    -0.17203506  0.19D-01  0.97D-02     0.43
    1     8     8     1.00000000     0.00000000   -98.98132836    -0.00000000    -0.16973791  0.19D-01  0.90D-02     0.43
    2     1     1     1.02646060    -0.16531904   -99.15849110    -0.16531904    -0.00523865  0.31D-03  0.44D-03     2.99
    2     2     2     1.02647295    -0.16531437   -99.15848644    -0.16531437    -0.00524531  0.31D-03  0.44D-03     2.99
    2     3     3     1.02647498    -0.16528162   -99.15845368    -0.16528162    -0.00526412  0.31D-03  0.44D-03     2.99
    2     4     4     1.02633395    -0.16586717   -99.14719553    -0.16586717    -0.00509829  0.28D-03  0.45D-03     2.99
    2     5     5     1.02643795    -0.16570667   -99.14703503    -0.16570667    -0.00519481  0.31D-03  0.44D-03     2.99
    2     6     6     1.02646751    -0.16557176   -99.14690012    -0.16557176    -0.00528274  0.32D-03  0.44D-03     2.99
    2     7     7     1.02648178    -0.16556142   -99.14688979    -0.16556142    -0.00529127  0.32D-03  0.44D-03     2.99
    2     8     8     1.02648742    -0.16554132   -99.14686968    -0.16554132    -0.00530407  0.32D-03  0.45D-03     2.99
    3     1     1     1.02769166    -0.17102386   -99.16419593    -0.00570483    -0.00041741  0.29D-04  0.38D-04     5.59
    3     2     2     1.02769306    -0.17102275   -99.16419481    -0.00570837    -0.00041824  0.29D-04  0.38D-04     5.59
    3     3     3     1.02768392    -0.17101773   -99.16418979    -0.00573611    -0.00042092  0.29D-04  0.38D-04     5.59
    3     4     4     1.02747056    -0.17139508   -99.15272344    -0.00552791    -0.00041482  0.27D-04  0.40D-04     5.59
    3     5     5     1.02750544    -0.17138618   -99.15271455    -0.00567951    -0.00041770  0.25D-04  0.39D-04     5.59
    3     6     6     1.02750950    -0.17136588   -99.15269424    -0.00579412    -0.00043300  0.26D-04  0.41D-04     5.59
    3     7     7     1.02751017    -0.17136549   -99.15269385    -0.00580406    -0.00043349  0.26D-04  0.41D-04     5.59
    3     8     8     1.02750391    -0.17136298   -99.15269135    -0.00582167    -0.00043445  0.26D-04  0.41D-04     5.59
    4     1     1     1.02859377    -0.17154477   -99.16471683    -0.00052090    -0.00005395  0.50D-05  0.49D-05     8.16
    4     2     2     1.02859387    -0.17154475   -99.16471682    -0.00052201    -0.00005395  0.50D-05  0.49D-05     8.16
    4     3     3     1.02859473    -0.17154462   -99.16471668    -0.00052689    -0.00005420  0.51D-05  0.49D-05     8.16
    4     4     4     1.02842161    -0.17193022   -99.15325858    -0.00053514    -0.00006424  0.56D-05  0.61D-05     8.16
    4     5     5     1.02841640    -0.17192859   -99.15325695    -0.00054240    -0.00006585  0.57D-05  0.62D-05     8.16
    4     6     6     1.02841678    -0.17192858   -99.15325694    -0.00056270    -0.00006584  0.57D-05  0.62D-05     8.16
    4     7     7     1.02841611    -0.17192837   -99.15325674    -0.00056289    -0.00006610  0.58D-05  0.62D-05     8.16
    4     8     8     1.02843504    -0.17192772   -99.15325608    -0.00056473    -0.00006503  0.57D-05  0.64D-05     8.16
    5     1     1     1.02872053    -0.17161138   -99.16478345    -0.00006661    -0.00000736  0.53D-06  0.68D-06    10.71
    5     2     2     1.02872129    -0.17161130   -99.16478336    -0.00006655    -0.00000741  0.52D-06  0.70D-06    10.71
    5     3     3     1.02872161    -0.17161129   -99.16478335    -0.00006667    -0.00000742  0.52D-06  0.70D-06    10.71
    5     4     4     1.02857767    -0.17201595   -99.15334432    -0.00008573    -0.00001244  0.96D-06  0.12D-05    10.71
    5     5     5     1.02857381    -0.17201577   -99.15334413    -0.00008718    -0.00001255  0.97D-06  0.12D-05    10.71
    5     6     6     1.02857411    -0.17201568   -99.15334405    -0.00008711    -0.00001259  0.98D-06  0.12D-05    10.71
    5     7     7     1.02857371    -0.17201568   -99.15334404    -0.00008731    -0.00001259  0.98D-06  0.12D-05    10.71
    5     8     8     1.02858439    -0.17201496   -99.15334332    -0.00008724    -0.00001305  0.94D-06  0.12D-05    10.71
    6     1     1     1.02872310    -0.17162105   -99.16479311    -0.00000966    -0.00000132  0.67D-07  0.13D-06    13.30
    6     2     2     1.02872327    -0.17162103   -99.16479309    -0.00000973    -0.00000135  0.68D-07  0.13D-06    13.30
    6     3     3     1.02872338    -0.17162103   -99.16479309    -0.00000974    -0.00000135  0.68D-07  0.13D-06    13.30
    6     4     4     1.02857311    -0.17203351   -99.15336188    -0.00001756    -0.00000295  0.18D-06  0.25D-06    13.30
    6     5     5     1.02857070    -0.17203339   -99.15336175    -0.00001762    -0.00000297  0.18D-06  0.26D-06    13.30
    6     6     6     1.02857110    -0.17203338   -99.15336174    -0.00001770    -0.00000298  0.18D-06  0.26D-06    13.30
    6     7     7     1.02857095    -0.17203338   -99.15336174    -0.00001770    -0.00000298  0.18D-06  0.26D-06    13.30
    6     8     8     1.02856905    -0.17203331   -99.15336167    -0.00001835    -0.00000308  0.19D-06  0.27D-06    13.30
    7     1     1     1.02873786    -0.17162280   -99.16479487    -0.00000176    -0.00000031  0.31D-07  0.27D-07    15.89
    7     2     2     1.02873768    -0.17162280   -99.16479487    -0.00000177    -0.00000032  0.32D-07  0.27D-07    15.89
    7     3     3     1.02873761    -0.17162280   -99.16479486    -0.00000177    -0.00000032  0.32D-07  0.27D-07    15.89
    7     4     4     1.02860508    -0.17203737   -99.15336573    -0.00000385    -0.00000073  0.71D-07  0.62D-07    15.89
    7     5     5     1.02860538    -0.17203732   -99.15336568    -0.00000393    -0.00000076  0.74D-07  0.63D-07    15.89
    7     6     6     1.02860525    -0.17203732   -99.15336568    -0.00000393    -0.00000076  0.74D-07  0.63D-07    15.89
    7     7     7     1.02860520    -0.17203731   -99.15336568    -0.00000393    -0.00000076  0.75D-07  0.63D-07    15.89
    7     8     8     1.02860492    -0.17203728   -99.15336564    -0.00000397    -0.00000078  0.80D-07  0.69D-07    15.89
    8     1     1     1.02873865    -0.17162317   -99.16479523    -0.00000037    -0.00000007  0.53D-08  0.60D-08    18.50
    8     2     2     1.02873873    -0.17162317   -99.16479523    -0.00000037    -0.00000007  0.53D-08  0.58D-08    18.50
    8     3     3     1.02873865    -0.17162316   -99.16479523    -0.00000037    -0.00000007  0.52D-08  0.60D-08    18.50
    8     4     4     1.02861150    -0.17203823   -99.15336659    -0.00000086    -0.00000018  0.15D-07  0.16D-07    18.50
    8     5     5     1.02861186    -0.17203821   -99.15336657    -0.00000089    -0.00000018  0.16D-07  0.17D-07    18.50
    8     6     6     1.02861176    -0.17203820   -99.15336657    -0.00000089    -0.00000019  0.16D-07  0.17D-07    18.50
    8     7     7     1.02861174    -0.17203820   -99.15336657    -0.00000089    -0.00000019  0.16D-07  0.17D-07    18.50
    8     8     8     1.02861114    -0.17203819   -99.15336655    -0.00000091    -0.00000020  0.15D-07  0.19D-07    18.50
    9     1     1     1.02874039    -0.17162325   -99.16479531    -0.00000008    -0.00000001  0.72D-09  0.14D-08    21.01
    9     2     2     1.02874041    -0.17162324   -99.16479531    -0.00000008    -0.00000001  0.73D-09  0.14D-08    21.01
    9     3     3     1.02874042    -0.17162324   -99.16479530    -0.00000008    -0.00000001  0.72D-09  0.14D-08    21.01
    9     4     4     1.02861644    -0.17203845   -99.15336682    -0.00000023    -0.00000005  0.33D-08  0.47D-08    21.01
    9     5     5     1.02861594    -0.17203844   -99.15336680    -0.00000023    -0.00000006  0.35D-08  0.53D-08    21.01
    9     6     6     1.02861617    -0.17203844   -99.15336680    -0.00000023    -0.00000005  0.34D-08  0.49D-08    21.01
    9     7     7     1.02861615    -0.17203844   -99.15336680    -0.00000023    -0.00000005  0.34D-08  0.50D-08    21.01
    9     8     8     1.02861618    -0.17203844   -99.15336680    -0.00000025    -0.00000005  0.34D-08  0.50D-08    21.01


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.8%
 S   0.4%   1.6%
 P   2.4%  15.8%  53.0%

 Initialization:   1.5%
 Other:           24.4%

 Total CPU:       21.0 seconds
 =====================================



 gnormi=  0.97206254  gnorms=  0.01648692  gnormp=  0.01145054  gnorm=  1.00000000
 ecorri= -0.16682853  ecorrs= -0.00282867  ecorrp= -0.00196605  ecorr= -0.17162325

 gnormi=  0.97206252  gnorms=  0.01648689  gnormp=  0.01145059  gnorm=  1.00000000
 ecorri= -0.16682852  ecorrs= -0.00282876  ecorrp= -0.00196596  ecorr= -0.17162324

 gnormi=  0.97206252  gnorms=  0.01648695  gnormp=  0.01145054  gnorm=  1.00000000
 ecorri= -0.16682852  ecorrs= -0.00282865  ecorrp= -0.00196607  ecorr= -0.17162324

 gnormi=  0.97217968  gnorms=  0.01614012  gnormp=  0.01168020  gnorm=  1.00000000
 ecorri= -0.16725229  ecorrs= -0.00277671  ecorrp= -0.00200945  ecorr= -0.17203845

 gnormi=  0.97218015  gnorms=  0.01613991  gnormp=  0.01167994  gnorm=  1.00000000
 ecorri= -0.16725236  ecorrs= -0.00277713  ecorrp= -0.00200895  ecorr= -0.17203844

 gnormi=  0.97217993  gnorms=  0.01613992  gnormp=  0.01168015  gnorm=  1.00000000
 ecorri= -0.16725232  ecorrs= -0.00277666  ecorrp= -0.00200946  ecorr= -0.17203844

 gnormi=  0.97217995  gnorms=  0.01613990  gnormp=  0.01168015  gnorm=  1.00000000
 ecorri= -0.16725232  ecorrs= -0.00277667  ecorrp= -0.00200945  ecorr= -0.17203844

 gnormi=  0.97217992  gnorms=  0.01613993  gnormp=  0.01168014  gnorm=  1.00000000
 ecorri= -0.16725231  ecorrs= -0.00277665  ecorrp= -0.00200947  ecorr= -0.17203844

 Wavefunction saved on  5203.2

 Reference coefficients greater than 0.0500000
 =============================================
 202///00           0.0000000   0.0000000  -0.0000000  -0.0169676   0.8027015   0.0000486   0.0000000  -0.0000816
 20//200/          -0.0000000  -0.0000000   0.0000000   0.7035479  -0.3864216  -0.0000234  -0.0000002   0.0000834
 20/2/00/           0.0000001   0.6948355  -0.0000000  -0.0000000  -0.0000421   0.6951899  -0.0000015   0.0000000
 20//20/0           0.0000001   0.6948355  -0.0000000   0.0000000   0.0000421  -0.6951899   0.0000015  -0.0000000
 20//2/00          -0.6948355   0.0000001   0.0000000   0.0000002  -0.0000001   0.0000015   0.6951897  -0.0006582
 202//0/0           0.0000000   0.0000000   0.6948354   0.0000441  -0.0000697   0.0000000  -0.0006582  -0.6951897
 20/2//00           0.0000000   0.0000000   0.6948356  -0.0000441   0.0000697  -0.0000000   0.0006582   0.6951896
 202//00/           0.6948355  -0.0000001  -0.0000000   0.0000002  -0.0000001   0.0000015   0.6951896  -0.0006582
 20/2/0/0           0.0000000  -0.0000000  -0.0000000   0.6865205   0.4158449   0.0000252  -0.0000002   0.0000018

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.000000    0.985853    0.000000    0.000000    0.000000    0.000000    0.000000   -0.000000
 2           0.000000   -0.000000    0.985853    0.000000   -0.000000   -0.000000    0.000000   -0.000000
 3           0.985853   -0.000000   -0.000000    0.000000   -0.000000    0.000000   -0.000000   -0.000000
 4           0.000000    0.000000    0.000000   -0.000063    0.000000   -0.000000   -0.018842    0.985791
 5           0.000000   -0.000000   -0.000000    0.000099   -0.000000   -0.000060    0.985791    0.018842
 6          -0.000000   -0.000000    0.000000   -0.000000    0.000002    0.985971    0.000060    0.000001
 7          -0.000000   -0.000000    0.000000    0.000933    0.985970   -0.000002    0.000000   -0.000000
 8          -0.000000    0.000000   -0.000000    0.985970   -0.000933    0.000000   -0.000100    0.000061

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.985853   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.000000
 2          -0.000000    0.985853    0.000000    0.000000    0.000000   -0.000000   -0.000000    0.000000
 3          -0.000000    0.000000    0.985853   -0.000000    0.000000   -0.000000    0.000000    0.000000
 4          -0.000000    0.000000   -0.000000    0.985971   -0.000000    0.000000    0.000000   -0.000000
 5          -0.000000    0.000000    0.000000   -0.000000    0.985971    0.000000   -0.000000   -0.000000
 6          -0.000000   -0.000000   -0.000000    0.000000    0.000000    0.985971    0.000000   -0.000000
 7          -0.000000   -0.000000    0.000000    0.000000   -0.000000    0.000000    0.985971   -0.000000
 8           0.000000    0.000000    0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.985971


 RESULTS FOR STATE 1.2
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.98585263 (fixed)   0.98593232 (relaxed)   0.98585263 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00016167   -0.00000000   -0.09484187
 Singles      0.01696351   -0.07406755   -0.07481532
 Pairs        0.01178154   -0.00000000   -0.00196605
 Total        1.02890671   -0.07406755   -0.17162325
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -98.99317206
 Nuclear energy                         0.00000000
 Kinetic energy                        99.86555672
 One electron energy                 -135.35313117
 Two electron energy                   36.18833586
 Virial quotient                       -0.99298295
 Correlation energy                    -0.17162325
 !MRCI STATE 1.2 Energy               -99.164795310670

 Properties without orbital relaxation:

 !MRCI STATE 1.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -99.16975637 (Davidson, fixed reference)
 Cluster corrected energies           -99.16972783 (Davidson, relaxed reference)
 Cluster corrected energies           -99.16975637 (Davidson, rotated reference)

 Cluster corrected energies           -99.16727532 (Pople, fixed reference)
 Cluster corrected energies           -99.16726106 (Pople, relaxed reference)
 Cluster corrected energies           -99.16727532 (Pople, rotated reference)



 RESULTS FOR STATE 2.2
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.98585262 (fixed)   0.98593231 (relaxed)   0.98585262 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00016167   -0.00000000   -0.09484195
 Singles      0.01696347   -0.07406747   -0.07481533
 Pairs        0.01178158    0.00000000   -0.00196596
 Total        1.02890673   -0.07406747   -0.17162324
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -98.99317206
 Nuclear energy                         0.00000000
 Kinetic energy                        99.86555710
 One electron energy                 -135.35313240
 Two electron energy                   36.18833710
 Virial quotient                       -0.99298295
 Correlation energy                    -0.17162324
 !MRCI STATE 2.2 Energy               -99.164795305971

 Properties without orbital relaxation:

 !MRCI STATE 2.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -99.16975637 (Davidson, fixed reference)
 Cluster corrected energies           -99.16972783 (Davidson, relaxed reference)
 Cluster corrected energies           -99.16975637 (Davidson, rotated reference)

 Cluster corrected energies           -99.16727532 (Pople, fixed reference)
 Cluster corrected energies           -99.16726106 (Pople, relaxed reference)
 Cluster corrected energies           -99.16727532 (Pople, rotated reference)



 RESULTS FOR STATE 3.2
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.98585262 (fixed)   0.98593231 (relaxed)   0.98585262 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00016167   -0.00000000   -0.09484186
 Singles      0.01696353   -0.07406756   -0.07481531
 Pairs        0.01178153    0.00000000   -0.00196607
 Total        1.02890674   -0.07406756   -0.17162324
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -98.99317206
 Nuclear energy                         0.00000000
 Kinetic energy                        99.86555766
 One electron energy                 -135.35313181
 Two electron energy                   36.18833650
 Virial quotient                       -0.99298294
 Correlation energy                    -0.17162324
 !MRCI STATE 3.2 Energy               -99.164795304487

 Properties without orbital relaxation:

 !MRCI STATE 3.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -99.16975637 (Davidson, fixed reference)
 Cluster corrected energies           -99.16972783 (Davidson, relaxed reference)
 Cluster corrected energies           -99.16975637 (Davidson, rotated reference)

 Cluster corrected energies           -99.16727532 (Pople, fixed reference)
 Cluster corrected energies           -99.16726106 (Pople, relaxed reference)
 Cluster corrected energies           -99.16727532 (Pople, rotated reference)



 RESULTS FOR STATE 4.2
 =====================

 Maximum overlap with reference state  8

 Coefficient of reference function:   C(0) = 0.98579060 (fixed)   0.98599172 (relaxed)   0.98597066 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00004274   -0.00000000   -0.00002460
 Singles      0.01660270   -0.07368642   -0.07441009
 Pairs        0.01201496   -0.09833409   -0.09760377
 Total        1.02866040   -0.17202051   -0.17203845
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -98.98132836
 Nuclear energy                         0.00000000
 Kinetic energy                        99.88029126
 One electron energy                 -135.34908941
 Two electron energy                   36.19572260
 Virial quotient                       -0.99272204
 Correlation energy                    -0.17203845
 !MRCI STATE 4.2 Energy               -99.153366815550

 Properties without orbital relaxation:

 !MRCI STATE 4.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -99.15829751 (Davidson, fixed reference)
 Cluster corrected energies           -99.15828994 (Davidson, relaxed reference)
 Cluster corrected energies           -99.15829751 (Davidson, rotated reference)

 Cluster corrected energies           -99.15583165 (Pople, fixed reference)
 Cluster corrected energies           -99.15582788 (Pople, relaxed reference)
 Cluster corrected energies           -99.15583165 (Pople, rotated reference)



 RESULTS FOR STATE 5.2
 =====================

 Maximum overlap with reference state  7

 Coefficient of reference function:   C(0) = 0.98579081 (fixed)   0.98599196 (relaxed)   0.98597086 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00004280   -0.00000000   -0.09379222
 Singles      0.01660247   -0.07368600   -0.07441014
 Pairs        0.01201469   -0.00187950   -0.00383608
 Total        1.02865997   -0.07556550   -0.17203844
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -98.98132836
 Nuclear energy                         0.00000000
 Kinetic energy                        99.88026817
 One electron energy                 -135.34906884
 Two electron energy                   36.19570204
 Virial quotient                       -0.99272227
 Correlation energy                    -0.17203844
 !MRCI STATE 5.2 Energy               -99.153366803120

 Properties without orbital relaxation:

 !MRCI STATE 5.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -99.15829742 (Davidson, fixed reference)
 Cluster corrected energies           -99.15828985 (Davidson, relaxed reference)
 Cluster corrected energies           -99.15829742 (Davidson, rotated reference)

 Cluster corrected energies           -99.15583161 (Pople, fixed reference)
 Cluster corrected energies           -99.15582782 (Pople, relaxed reference)
 Cluster corrected energies           -99.15583161 (Pople, rotated reference)



 RESULTS FOR STATE 6.2
 =====================

 Coefficient of reference function:   C(0) = 0.98597078 (fixed)   0.98599185 (relaxed)   0.98597078 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00004274   -0.00000000   -0.09561886
 Singles      0.01660249   -0.07368637   -0.07441001
 Pairs        0.01201491   -0.00000011   -0.00200957
 Total        1.02866013   -0.07368649   -0.17203844
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -98.98132836
 Nuclear energy                         0.00000000
 Kinetic energy                        99.88029725
 One electron energy                 -135.34910050
 Two electron energy                   36.19573370
 Virial quotient                       -0.99272198
 Correlation energy                    -0.17203844
 !MRCI STATE 6.2 Energy               -99.153366800210

 Properties without orbital relaxation:

 !MRCI STATE 6.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -99.15829744 (Davidson, fixed reference)
 Cluster corrected energies           -99.15828988 (Davidson, relaxed reference)
 Cluster corrected energies           -99.15829744 (Davidson, rotated reference)

 Cluster corrected energies           -99.15583162 (Pople, fixed reference)
 Cluster corrected energies           -99.15582784 (Pople, relaxed reference)
 Cluster corrected energies           -99.15583162 (Pople, rotated reference)



 RESULTS FOR STATE 7.2
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.98597035 (fixed)   0.98599186 (relaxed)   0.98597079 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00004274   -0.00000000   -0.09561901
 Singles      0.01660247   -0.07368635   -0.07441000
 Pairs        0.01201490    0.00000003   -0.00200943
 Total        1.02866012   -0.07368632   -0.17203844
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -98.98132836
 Nuclear energy                         0.00000000
 Kinetic energy                        99.88029761
 One electron energy                 -135.34909998
 Two electron energy                   36.19573319
 Virial quotient                       -0.99272198
 Correlation energy                    -0.17203844
 !MRCI STATE 7.2 Energy               -99.153366798879

 Properties without orbital relaxation:

 !MRCI STATE 7.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -99.15829744 (Davidson, fixed reference)
 Cluster corrected energies           -99.15828988 (Davidson, relaxed reference)
 Cluster corrected energies           -99.15829744 (Davidson, rotated reference)

 Cluster corrected energies           -99.15583161 (Pople, fixed reference)
 Cluster corrected energies           -99.15582783 (Pople, relaxed reference)
 Cluster corrected energies           -99.15583161 (Pople, rotated reference)



 RESULTS FOR STATE 8.2
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.98597033 (fixed)   0.98599185 (relaxed)   0.98597078 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00004274   -0.00000000   -0.09561309
 Singles      0.01660250   -0.07368636   -0.07440999
 Pairs        0.01201490   -0.00000605   -0.00201535
 Total        1.02866014   -0.07369241   -0.17203844
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -98.98132836
 Nuclear energy                         0.00000000
 Kinetic energy                        99.88029845
 One electron energy                 -135.34910009
 Two electron energy                   36.19573329
 Virial quotient                       -0.99272197
 Correlation energy                    -0.17203844
 !MRCI STATE 8.2 Energy               -99.153366798683

 Properties without orbital relaxation:

 !MRCI STATE 8.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -99.15829745 (Davidson, fixed reference)
 Cluster corrected energies           -99.15828988 (Davidson, relaxed reference)
 Cluster corrected energies           -99.15829745 (Davidson, rotated reference)

 Cluster corrected energies           -99.15583162 (Pople, fixed reference)
 Cluster corrected energies           -99.15582784 (Pople, relaxed reference)
 Cluster corrected energies           -99.15583162 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       29.65       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7       54.13       700     1000      520     2100     2140     5201     5203   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *        55.90     22.89     29.26      3.11      0.12      0.32
 REAL TIME  *        63.47 SEC
 DISK USED  *        83.82 MB (local),        1.03 GB (total)
 SF USED    *       244.68 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(9)     =       -99.16975637  AU                              
 SETTING HLSDIAG(10)    =       -99.16975637  AU                              
 SETTING HLSDIAG(11)    =       -99.16975637  AU                              
 SETTING HLSDIAG(12)    =       -99.15829751  AU                              
 SETTING HLSDIAG(13)    =       -99.15829742  AU                              
 SETTING HLSDIAG(14)    =       -99.15829744  AU                              
 SETTING HLSDIAG(15)    =       -99.15829744  AU                              
 SETTING HLSDIAG(16)    =       -99.15829745  AU                              


        HLSDIAG
    -99.72736606
    -99.72736605
    -99.72736601
    -99.15140609
    -99.15140606
    -99.15140586
    -99.15140487
    -99.15140485
    -99.16975637
    -99.16975637
    -99.16975637
    -99.15829751
    -99.15829742
    -99.15829744
    -99.15829744
    -99.15829745
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Diagonal elements of H will be replaced by values from variable HLSDIAG


   ******************************
   *** Spin-orbit calculation ***
   ******************************


   Spin-orbit matrix elements
   ==========================

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

 Time for Seward_LS:       1.89 sec

 CPU time:      1.89 sec, REAL time:      3.32 sec


 SORTLS1 read      953880. and wrote      953880. SO integrals in    36 records. CPU time:      0.01 sec, REAL time:      0.02 sec
 SORTLS2 read      953880. and wrote      953880. SO integrals in    36 records. CPU time:      0.00 sec, REAL time:      0.01 sec

 FILE SIZES: FILE 1:    31.1 MBYTE, FILE 4:     0.0 MBYTE, TOTAL:    31.1 MBYTE
 Preparing effective Fock matrices
 eXact-2-Component (X2C) method activated

 Computing Douglas-Kroll / X2C integrals

  
 Total X Y Z Fock matrices evaluated:     3    3    3
  
 Wavefunction restored from record  5201.2  Symmetry=2  S= 0.5  NSTATE=   8

 Original energies: -99.713268 -99.713268 -99.713267 -99.146260 -99.146260 -99.146259 -99.146259 -99.146259
 Replaced energies: -99.727366 -99.727366 -99.727366 -99.151406 -99.151406 -99.151406 -99.151405 -99.151405

 Wavefunction restored from record  5203.2  Symmetry=2  S= 1.5  NSTATE=   8

 Original energies: -99.164795 -99.164795 -99.164795 -99.153367 -99.153367 -99.153367 -99.153367 -99.153367
 Replaced energies: -99.169756 -99.169756 -99.169756 -99.158298 -99.158297 -99.158297 -99.158297 -99.158297

 >>> Fock matrix approximation error in all internal so: 
  -3.0734652115524290       (exact)   -3.6082035706796241       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -4.8864252734866911       (exact)   -5.5723498262047668       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -1.2270831305197187E-005  (exact)   -1.4176287388058161E-005  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -3.0225995373826788E-005  (exact)   -3.5474327419949361E-005  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -3.7277227821500958E-005  (exact)   -4.2377931979599754E-005  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   4.7675719983028912       (exact)    4.8725569551794852       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -6.9028673943238153E-006  (exact)   -8.0760213911033376E-006  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   4.2701028425047231E-005  (exact)    4.9938735140237749E-005  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   2.0609434789625373E-004  (exact)    2.4109752948803413E-004  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -5.0011007358150072       (exact)   -5.8504883765175899       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   4.7675761857910199       (exact)    4.8191134271854201       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   1.8111976766780022E-004  (exact)    1.8307812899730642E-004  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -4.8600102043224906E-005  (exact)   -5.5838171093467122E-005  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -3.7302172559020034E-005  (exact)   -4.2859636501799520E-005  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   5.0014834606161198       (exact)    5.7463774391295539       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -5.4597051559438555E-004  (exact)   -5.5358794644085117E-004  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   5.3414684799037149       (exact)    5.4511265563364022       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -7.6119482347803852E-006  (exact)   -6.4314523572465273E-006  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -1.0614943178933123E-005  (exact)   -9.1312526987990785E-006  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   6.1306397492117455       (exact)    5.2367049241001276       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   4.2092264483609897E-004  (exact)    3.6896893157488202E-004  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   2.5259983739820172E-004  (exact)    2.1576426152058366E-004  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   4.1925643384463747E-004  (exact)    4.2216535245510298E-004  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -3.5117983812748941E-004  (exact)   -3.5815462876055969E-004  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   3.2387819929769526       (exact)    3.3058093339088646       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   1.6882128162301049E-005  (exact)    1.4440807517552874E-005  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   1.4805068046622617E-005  (exact)    1.2700971754905697E-005  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -10.118168782859366       (exact)   -8.6670813963213416       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -6.6858428442838661E-004  (exact)   -5.8617089606399840E-004  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -7.7533815039484077E-004  (exact)   -6.6607881264022450E-004  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   5.4083941376678819       (exact)    5.5154850495582819       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   2.3546395886933177E-004  (exact)    2.4030213966420638E-004  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   2.9638867024970072E-005  (exact)    2.5842618921270813E-005  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -6.3203793744722426E-005  (exact)   -5.4793436773229091E-005  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -8.5676661118394039E-004  (exact)   -7.3520700884247535E-004  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   5.9149393143149114       (exact)    5.0986032780348864       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   5.1205571198864848E-003  (exact)    5.1720704044746499E-003  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   10.013429923918849       (exact)    8.7698886013660946       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -6.3011316243118829       (exact)   -5.5797963478933088       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -5.5034001749539960E-003  (exact)   -4.8394752688982840E-003  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -8.0085445769685124E-005  (exact)   -7.0482964986671971E-005  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   5.4083953436867276       (exact)    5.4628042788113245       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   2.1957360988525076E-004  (exact)    2.2187648736718548E-004  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -9.4230337748734041E-003  (exact)   -8.2526115667642588E-003  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   5.9662477404687879E-003  (exact)    5.2832469559920816E-003  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   1.4475330424186768E-003  (exact)    1.2400066410829253E-003  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -5.9150176894890052       (exact)   -5.2010686693180954       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   4.7675420777708020       (exact)    4.8725268900429244       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   6.6410565703591382E-006  (exact)    7.7814410298542236E-006  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -4.2221176284706147E-005  (exact)   -4.9396452202685263E-005  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -2.0613691184123576E-004  (exact)   -2.4113473808588481E-004  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   5.0020456770249968       (exact)    5.8513434705525000       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -5.7721929868218922       (exact)   -6.6438203755442489       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  0.21871117352742742       (exact)   0.16289765978434745       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -9.9252869588042756E-006  (exact)   -1.1548356488442238E-005  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -5.6055247639803498E-005  (exact)   -6.4529705835272681E-005  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -1.8111986893410768E-004  (exact)   -1.8309236741017977E-004  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   4.7675532687375259       (exact)    4.8194736517029639       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -8.8639399019633252E-006  (exact)   -1.0185593943681733E-005  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -6.9910886370036846E-006  (exact)   -8.0331271449174726E-006  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   5.0019007511871516       (exact)    5.7478137014408839       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   3.7291576547076512E-005  (exact)    4.2856787617605783E-005  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   2.0616774276135521E-004  (exact)    2.3690395196125113E-004  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
 -0.13248679596001775       (exact)  -0.13519881077739249       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   3.3800960376326969E-004  (exact)    3.4133313344732023E-004  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   1.1492332121332373E-004  (exact)    9.8361467013358421E-005  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -2.8696247539091693E-004  (exact)   -2.5446416228794354E-004  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -11.828001260995926       (exact)   -10.123465715421831       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   6.2412201315106257       (exact)    6.3689937074633951       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -2.4837740800093685E-005  (exact)   -1.8841953531332192E-005  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -7.1631721894604018E-004  (exact)   -6.2939409630596312E-004  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   5.9497712348797669E-004  (exact)    5.2323090181431459E-004  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
 -0.25030226942438083       (exact)  -0.21421454683191449       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   3.7816640765080426E-004  (exact)    3.8590844932344376E-004  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  0.45009035395198549       (exact)   0.34534853006264216       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   11.822567463588062       (exact)    10.387930046264508       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   1.7101186382326603E-005  (exact)    1.4937054804639413E-005  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -9.9356998527357060E-006  (exact)   -8.8695790005350485E-006  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   8.6707634588808295E-005  (exact)    7.6465579534262140E-005  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   5.4083815318609023       (exact)    5.5154721696611322       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -5.0813358076474500E-003  (exact)   -5.1317068519483077E-003  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -9.4925770634194625E-006  (exact)   -8.0927483474875036E-006  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   2.5032719606642575E-005  (exact)    2.1163074005049654E-005  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   5.8443082689145541E-003  (exact)    5.1357560056174570E-003  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -5.9153984180590502       (exact)   -5.0991563966786488       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -4.2879646447781657E-004  (exact)   -4.3972862525978293E-004  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -5.0813369200745214E-003  (exact)   -5.1823359707929909E-003  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -5.4083782447092910       (exact)   -5.4624010269905581       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -1.0450811189741225E-005  (exact)   -9.1942270342890013E-006  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   5.9153451769291880       (exact)    5.2024896114402948       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -6.8099916029382384E-004  (exact)   -5.8182003874215438E-004  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   5.8443382964531608E-003  (exact)    5.0421624922370395E-003  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -5.5050874925946944       (exact)   -5.5645953825611718       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -2.0860137722747264E-004  (exact)   -2.1085055942249105E-004  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -5.6120061229332115E-005  (exact)   -6.4477615857420087E-005  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -4.3633580045655185E-005  (exact)   -5.0146737171758895E-005  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   5.7753396656597138       (exact)    6.6354469146855193       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -2.0860109592437973E-004  (exact)   -2.1318398279717175E-004  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   5.5050943233485388       (exact)    5.6258779991018431       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   1.0234720078239715E-005  (exact)    1.1970646594991014E-005  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   8.0698760064908861E-006  (exact)    9.4391750246403097E-006  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -5.7747619832562620       (exact)   -6.7543235100019974       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -4.3635764586213378E-005  (exact)   -5.1028173167338575E-005  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -2.3797341573252359E-004  (exact)   -2.7834145255087675E-004  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -3.1097887123739607       (exact)   -3.6659147798630820       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   5.8976615321157775       (exact)    6.7298963016151960       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -2.9749790627279469E-005  (exact)   -3.5088296276909602E-005  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   5.4296501008091754E-005  (exact)    6.2126394625212182E-005  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   6.3196055964835454       (exact)    6.4502757554196100       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   7.7585642166231553E-004  (exact)    6.7981267942419845E-004  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   3.4884513273831440E-004  (exact)    3.1108534242619185E-004  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -2.7102908521197837E-004  (exact)   -2.3199168630449533E-004  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   6.5783119513600568       (exact)    5.6309144419260768       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -3.4754816839193960       (exact)   -3.5473386434731471       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   3.5319510690169512E-004  (exact)    3.6019370008174418E-004  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -1.1942042037126062E-003  (exact)   -1.0470243109531542E-003  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -7.4034119188520103E-004  (exact)   -6.5345065424153310E-004  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -7.9537506125113954E-005  (exact)   -6.5677616787977031E-005  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   11.972616118822852       (exact)    10.248538857007540       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   2.5039899741091540E-004  (exact)    2.5524559094222649E-004  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -1.6526982017693950E-004  (exact)   -1.6872343445941930E-004  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -6.2450602853154580       (exact)   -6.3691615387277807       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   1.2538970138258985E-005  (exact)    1.0812510706777789E-005  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   9.7668176182585750E-006  (exact)    8.4228629163636490E-006  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -6.8301513026271925       (exact)   -5.8863253833672182       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -3.6606314046162978E-005  (exact)   -3.1301322130548958E-005  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   4.4400641124079900E-004  (exact)    3.7843477767885510E-004  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   6.2450672572986967       (exact)    6.3078907642926172       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   2.5040021747889081E-004  (exact)    2.5304821915834373E-004  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -1.1505587671730468E-002  (exact)   -1.0084359204893128E-002  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -6.0368588028785943E-003  (exact)   -5.3537766469034381E-003  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -3.6643426759868073E-005  (exact)   -3.2477510669798685E-005  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   6.8303994733688338       (exact)    6.0060277571124079       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -5.9126997467205808E-003  (exact)   -5.9721797366946170E-003  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   7.4926592637693094E-004  (exact)    7.6475792088403713E-004  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -12.082250012241552       (exact)   -10.589591762920849       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -6.3756545366971853       (exact)   -5.6542425390010571       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -3.0541194965426519E-005  (exact)   -2.6856782402931328E-005  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -6.5847862886291991E-003  (exact)   -5.7897284650252874E-003  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -8.1965303943528267E-004  (exact)   -7.0293612134659643E-004  (Fock matrix)


   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=   -99.72736606

 Wigner-Eckart theorem used for 23 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00
                           -0.00       0.00    -128.64       0.00       0.00     -15.72      -0.00      -0.00       0.00     128.64

    2   2.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00
                           -0.00       0.00       0.00       8.47     -16.06      -0.00      -0.00      -0.00    -128.64      -0.00

    3   3.2  0.5  0.5       0.00       0.00       0.01       0.00       0.00       0.00       0.00       0.00      -0.00    -128.62
                          128.64      -0.00       0.00      -0.00      -0.00      -0.00      15.72       0.00      -0.00       0.00

    4   4.2  0.5  0.5       0.00       0.00       0.00  126408.60       0.00       0.00       0.00       0.00      18.14      -0.00
                           -0.00      -8.47       0.00      -0.00      -0.00      -0.00      -0.00      98.90       0.00       0.00

    5   5.2  0.5  0.5       0.00       0.00       0.00       0.00  126408.61       0.00       0.00       0.00      -0.69      -0.00
                           -0.00      16.06       0.00       0.00       0.00      -0.00      -0.00      52.18       0.00       0.00

    6   6.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00  126408.65       0.00       0.00       0.00      15.72
                           15.72       0.00       0.00       0.00       0.00       0.00      55.91       0.00       0.00       0.00

    7   7.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00  126408.87       0.00       0.00       0.00
                            0.00       0.00     -15.72       0.00       0.00     -55.91       0.00      -0.00       0.00     -15.72

    8   8.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00  126408.87       0.00       0.00
                            0.00       0.00      -0.00     -98.90     -52.18      -0.00       0.00       0.00     -15.72      -0.00

    9   1.2  0.5 -0.5      -0.00      -0.00      -0.00      18.14      -0.69       0.00       0.00       0.00       0.00       0.00
                           -0.00     128.64       0.00      -0.00      -0.00      -0.00      -0.00      15.72       0.00      -0.00

   10   2.2  0.5 -0.5       0.00       0.00    -128.62      -0.00      -0.00      15.72       0.00       0.00       0.00       0.00
                         -128.64       0.00      -0.00      -0.00      -0.00      -0.00      15.72       0.00       0.00      -0.00

   11   3.2  0.5 -0.5       0.00     128.62      -0.00       0.00       0.00       0.00       0.00     -15.71       0.00       0.00
                           -0.00       0.00      -0.00       9.67      15.36       0.00       0.00       0.00    -128.64       0.00

   12   4.2  0.5 -0.5     -18.14       0.00      -0.00      -0.00       0.00      -0.00       4.25      -0.00       0.00       0.00
                            0.00       0.00      -9.67       0.00      -0.00      94.65       0.00       0.00       0.00       8.47

   13   5.2  0.5 -0.5       0.69       0.00      -0.00      -0.00       0.00      -0.00     111.75      -0.00       0.00       0.00
                            0.00       0.00     -15.36       0.00      -0.00     -59.55      -0.00      -0.00       0.00     -16.06

   14   6.2  0.5 -0.5      -0.00     -15.72      -0.00       0.00       0.00       0.00       0.00      55.92       0.00       0.00
                            0.00       0.00      -0.00     -94.65      59.55      -0.00      -0.00       0.00     -15.72      -0.00

   15   7.2  0.5 -0.5      -0.00      -0.00      -0.00      -4.25    -111.75      -0.00      -0.00      -0.00       0.00       0.00
                            0.00     -15.72      -0.00      -0.00       0.00       0.00      -0.00     -55.91      -0.00      -0.00

   16   8.2  0.5 -0.5      -0.00      -0.00      15.71       0.00       0.00     -55.92       0.00       0.00       0.00       0.00
                          -15.72      -0.00      -0.00      -0.00       0.00      -0.00      55.91       0.00      -0.00      -0.00

   17   1.2  1.5  1.5      -0.00     -25.57      -0.00      -0.00       0.00       0.00       0.00     -30.38       0.00       0.00
                           -0.00       0.00       0.00     -18.66     -29.66      -0.00      -0.00      -0.00      -0.00      -0.00

   18   2.2  1.5  1.5      -0.00       0.00      -0.00      35.04      -1.33       0.00       0.00      -0.00       0.00       0.00
                           -0.00      25.58       0.00      -0.00       0.00       0.00       0.00     -30.36      -0.00      -0.00

   19   3.2  1.5  1.5       0.00       0.00     -25.54       0.00       0.00     -30.39      -0.00      -0.00       0.00       0.00
                           25.54       0.00       0.00      -0.00      -0.00      -0.00      30.39       0.00      -0.00      -0.00

   20   4.2  1.5  1.5       0.75      -0.00      -0.00      -0.00      -0.00       0.00      71.38       0.00       0.00       0.00
                           -0.00      -0.00      30.23      -0.00      -0.00      37.06       0.00       0.00      -0.00      -0.00

   21   5.2  1.5  1.5     -35.31       0.00       0.00       0.00       0.00      -0.00       1.53      -0.00       0.00       0.00
                            0.00      -0.00      18.31       0.00       0.00     -61.13      -0.00      -0.00      -0.00      -0.00

   22   6.2  1.5  1.5      -0.00      -0.00      -0.00      -2.73     -71.16      -0.00       0.00      -0.00       0.00       0.00
                           -0.00      30.53       0.00       0.00      -0.00      -0.01       0.00      35.66      -0.00      -0.00

   23   7.2  1.5  1.5      -0.00     -30.53       0.03       0.00      -0.00      -0.04      -0.00      35.64       0.00       0.00
                            0.03      -0.00      -0.00      60.37     -38.03       0.00      -0.03      -0.00      -0.00      -0.00

   24   8.2  1.5  1.5       0.00       0.03      30.55       0.00       0.00     -35.70       0.00      -0.04       0.00       0.00
                           30.56       0.00       0.00      -0.06       0.04       0.01     -35.70       0.00      -0.00      -0.00

   25   1.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00     -14.76
                          -29.49       0.00      -0.00      -0.00      -0.00      -0.00      35.10       0.00      -0.00       0.00

   26   2.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00
                           -0.00      -0.00      29.53       0.00       0.00     -35.06      -0.00      -0.00      -0.00      14.77

   27   3.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00     -18.88      35.81       0.00      -0.00       0.00      14.75       0.00

   28   4.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.43      -0.00
                            0.00      35.78       0.00       0.00       0.00      -0.00       0.00      39.75      -0.00      -0.00

   29   5.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     -20.39       0.00
                           -0.00     -19.66       0.00      -0.01      -0.00      -0.00      -0.00      72.44       0.00      -0.00

   30   6.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00
                            0.00      -0.00     -35.25       0.00       0.00     -41.15      -0.00       0.00      -0.00      17.63

   31   7.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00     -17.63
                           35.27      -0.00       0.00      -0.07      -0.04      -0.00      41.23      -0.00       0.02      -0.00

   32   8.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.02
                           -0.03       0.00      -0.00     -73.01     -38.52      -0.00      -0.04      -0.00      17.64       0.00

   33   1.2  1.5 -0.5      -0.00     -14.76      -0.00      -0.00       0.00       0.00       0.00     -17.54       0.00       0.00
                            0.00      -0.00      -0.00      10.78      17.12       0.00       0.00       0.00     -29.49       0.00

   34   2.2  1.5 -0.5      -0.00       0.00      -0.00      20.23      -0.77       0.00       0.00      -0.00       0.00       0.00
                            0.00     -14.77      -0.00       0.00      -0.00      -0.00      -0.00      17.53      -0.00      -0.00

   35   3.2  1.5 -0.5       0.00       0.00     -14.75       0.00       0.00     -17.55      -0.00      -0.00       0.00       0.00
                          -14.75      -0.00      -0.00       0.00       0.00       0.00     -17.55      -0.00       0.00       0.00

   36   4.2  1.5 -0.5       0.43      -0.00      -0.00      -0.00      -0.00       0.00      41.21       0.00       0.00       0.00
                            0.00       0.00     -17.45       0.00       0.00     -21.39      -0.00      -0.00       0.00      35.78

   37   5.2  1.5 -0.5     -20.39       0.00       0.00       0.00       0.00      -0.00       0.89      -0.00       0.00       0.00
                           -0.00       0.00     -10.57      -0.00      -0.00      35.29       0.00       0.00      -0.00     -19.66

   38   6.2  1.5 -0.5      -0.00      -0.00      -0.00      -1.57     -41.08      -0.00       0.00      -0.00       0.00       0.00
                            0.00     -17.63      -0.00      -0.00       0.00       0.00      -0.00     -20.59       0.00      -0.00

   39   7.2  1.5 -0.5      -0.00     -17.63       0.02       0.00      -0.00      -0.02      -0.00      20.58       0.00       0.00
                           -0.02       0.00       0.00     -34.86      21.96      -0.00       0.02       0.00      35.27      -0.00

   40   8.2  1.5 -0.5       0.00       0.02      17.64       0.00       0.00     -20.61       0.00      -0.02       0.00       0.00
                          -17.64      -0.00      -0.00       0.03      -0.02      -0.01      20.61      -0.00      -0.03       0.00

   41   1.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00     -25.57
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00

   42   2.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00     -25.58

   43   3.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00     -25.54      -0.00

   44   4.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.75      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00

   45   5.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     -35.31       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   46   6.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00     -30.53

   47   7.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00     -30.53
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.03       0.00

   48   8.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.03
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00     -30.56      -0.00


   Nr   State  S   Sz       11         12         13         14         15         16         17         18         19         20

    1   1.2  0.5  0.5       0.00     -18.14       0.69      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.75
                            0.00      -0.00      -0.00      -0.00      -0.00      15.72       0.00       0.00     -25.54       0.00

    2   2.2  0.5  0.5     128.62       0.00       0.00     -15.72      -0.00      -0.00     -25.57       0.00       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      15.72       0.00      -0.00     -25.58      -0.00       0.00

    3   3.2  0.5  0.5      -0.00      -0.00      -0.00      -0.00      -0.00      15.71      -0.00      -0.00     -25.54      -0.00
                            0.00       9.67      15.36       0.00       0.00       0.00      -0.00      -0.00      -0.00     -30.23

    4   4.2  0.5  0.5       0.00      -0.00      -0.00       0.00      -4.25       0.00      -0.00      35.04       0.00      -0.00
                           -9.67      -0.00      -0.00      94.65       0.00       0.00      18.66       0.00       0.00       0.00

    5   5.2  0.5  0.5       0.00       0.00       0.00       0.00    -111.75       0.00       0.00      -1.33       0.00      -0.00
                          -15.36       0.00       0.00     -59.55      -0.00      -0.00      29.66      -0.00       0.00       0.00

    6   6.2  0.5  0.5       0.00      -0.00      -0.00       0.00      -0.00     -55.92       0.00       0.00     -30.39       0.00
                           -0.00     -94.65      59.55       0.00      -0.00       0.00       0.00      -0.00       0.00     -37.06

    7   7.2  0.5  0.5       0.00       4.25     111.75       0.00      -0.00       0.00       0.00       0.00      -0.00      71.38
                           -0.00      -0.00       0.00       0.00       0.00     -55.91       0.00      -0.00     -30.39      -0.00

    8   8.2  0.5  0.5     -15.71      -0.00      -0.00      55.92      -0.00       0.00     -30.38      -0.00      -0.00       0.00
                           -0.00      -0.00       0.00      -0.00      55.91      -0.00       0.00      30.36      -0.00      -0.00

    9   1.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          128.64      -0.00      -0.00      15.72       0.00       0.00       0.00       0.00       0.00       0.00

   10   2.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -8.47      16.06       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   11   3.2  0.5 -0.5       0.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00     -15.72      -0.00       0.00       0.00       0.00       0.00

   12   4.2  0.5 -0.5       0.00  126408.60       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00     -98.90       0.00       0.00       0.00       0.00

   13   5.2  0.5 -0.5       0.00       0.00  126408.61       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00       0.00     -52.18       0.00       0.00       0.00       0.00

   14   6.2  0.5 -0.5       0.00       0.00       0.00  126408.65       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00     -55.91      -0.00       0.00       0.00       0.00       0.00

   15   7.2  0.5 -0.5       0.00       0.00       0.00       0.00  126408.87       0.00       0.00       0.00       0.00       0.00
                           15.72      -0.00      -0.00      55.91      -0.00       0.00       0.00       0.00       0.00       0.00

   16   8.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00  126408.87       0.00       0.00       0.00       0.00
                            0.00      98.90      52.18       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00

   17   1.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00  122381.18       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      75.15      -0.00      -0.00

   18   2.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00  122381.18       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00     -75.15      -0.00      -0.00      -0.00

   19   3.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00  122381.18       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00      84.32

   20   4.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00  124896.11
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00     -84.32       0.00

   21   5.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.01      -0.00      46.37      -0.02

   22   6.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00     -83.33       0.00       0.00      -0.00

   23   7.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      83.33       0.00      -0.07

   24   8.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.08      -0.01     -72.41

   25   1.2  1.5  0.5      -0.00      -0.00       0.00       0.00       0.00     -17.54      -0.00      -0.00     -43.39       0.00
                            0.00     -10.78     -17.12      -0.00      -0.00      -0.00      -0.00       0.00      -0.00      47.52

   26   2.2  1.5  0.5      -0.00      20.23      -0.77       0.00       0.00      -0.00       0.00      -0.00       0.00      -1.18
                            0.00      -0.00       0.00       0.00       0.00     -17.53      -0.00       0.00     -43.39      -0.00

   27   3.2  1.5  0.5     -14.75       0.00       0.00     -17.55      -0.00      -0.00      43.39      -0.00      -0.00      -0.00
                            0.00      -0.00      -0.00      -0.00      17.55       0.00       0.00      43.39      -0.00       0.00

   28   4.2  1.5  0.5      -0.00      -0.00      -0.00       0.00      41.21       0.00      -0.00       1.18       0.00      -0.00
                           17.45      -0.00      -0.00      21.39       0.00       0.00     -47.52       0.00      -0.00       0.00

   29   5.2  1.5  0.5       0.00       0.00       0.00      -0.00       0.89      -0.00       0.00     -55.52      -0.00       0.01
                           10.57       0.00       0.00     -35.29      -0.00      -0.00     -28.81      -0.00      -0.00       0.00

   30   6.2  1.5  0.5      -0.00      -1.57     -41.08      -0.00       0.00      -0.00      -0.00      -0.00       0.00     -86.79
                            0.00       0.00      -0.00      -0.00       0.00      20.59      -0.00       0.00      48.11       0.00

   31   7.2  1.5  0.5       0.02       0.00      -0.00      -0.02      -0.00      20.58       0.05      -0.00      48.11      -0.00
                           -0.00      34.86     -21.96       0.00      -0.02      -0.00       0.00      -0.05      -0.00      44.99

   32   8.2  1.5  0.5      17.64       0.00       0.00     -20.61       0.00      -0.02      48.11       0.01      -0.05      -0.00
                            0.00      -0.03       0.02       0.01     -20.61       0.00      -0.00     -48.11       0.00      -0.04

   33   1.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      35.10       0.00      -0.00      -0.00      -0.00      -0.00

   34   2.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           29.53       0.00       0.00     -35.06      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   35   3.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00     -18.88      35.81       0.00      -0.00       0.00      -0.00      -0.00      -0.00      -0.00

   36   4.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00      -0.00       0.00      39.75      -0.00      -0.00      -0.00      -0.00

   37   5.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.01      -0.00      -0.00      -0.00      72.44      -0.00      -0.00      -0.00      -0.00

   38   6.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -35.25       0.00       0.00     -41.15      -0.00       0.00      -0.00      -0.00      -0.00      -0.00

   39   7.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.07      -0.04      -0.00      41.23      -0.00      -0.00      -0.00      -0.00      -0.00

   40   8.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00     -73.01     -38.52      -0.00      -0.04      -0.00      -0.00      -0.00      -0.00      -0.00

   41   1.2  1.5 -1.5      -0.00      -0.00       0.00       0.00       0.00     -30.38       0.00       0.00       0.00       0.00
                           -0.00      18.66      29.66       0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00

   42   2.2  1.5 -1.5      -0.00      35.04      -1.33       0.00       0.00      -0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00      -0.00      -0.00      30.36      -0.00      -0.00      -0.00      -0.00

   43   3.2  1.5 -1.5     -25.54       0.00       0.00     -30.39      -0.00      -0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00     -30.39      -0.00      -0.00      -0.00      -0.00      -0.00

   44   4.2  1.5 -1.5      -0.00      -0.00      -0.00       0.00      71.38       0.00       0.00       0.00       0.00       0.00
                          -30.23       0.00       0.00     -37.06      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   45   5.2  1.5 -1.5       0.00       0.00       0.00      -0.00       1.53      -0.00       0.00       0.00       0.00       0.00
                          -18.31      -0.00      -0.00      61.13       0.00       0.00      -0.00      -0.00      -0.00      -0.00

   46   6.2  1.5 -1.5      -0.00      -2.73     -71.16      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.01      -0.00     -35.66      -0.00      -0.00      -0.00      -0.00

   47   7.2  1.5 -1.5       0.03       0.00      -0.00      -0.04      -0.00      35.64       0.00       0.00       0.00       0.00
                            0.00     -60.37      38.03      -0.00       0.03       0.00      -0.00      -0.00      -0.00      -0.00

   48   8.2  1.5 -1.5      30.55       0.00       0.00     -35.70       0.00      -0.04       0.00       0.00       0.00       0.00
                           -0.00       0.06      -0.04      -0.01      35.70      -0.00      -0.00      -0.00      -0.00      -0.00


   Nr   State  S   Sz       21         22         23         24         25         26         27         28         29         30

    1   1.2  0.5  0.5     -35.31      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.03     -30.56      29.49       0.00      -0.00      -0.00       0.00      -0.00

    2   2.2  0.5  0.5       0.00      -0.00     -30.53       0.03       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00     -30.53       0.00      -0.00      -0.00       0.00      -0.00     -35.78      19.66       0.00

    3   3.2  0.5  0.5       0.00      -0.00       0.03      30.55       0.00       0.00       0.00       0.00       0.00       0.00
                          -18.31      -0.00       0.00      -0.00       0.00     -29.53       0.00      -0.00      -0.00      35.25

    4   4.2  0.5  0.5       0.00      -2.73       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00     -60.37       0.06       0.00      -0.00      18.88      -0.00       0.01      -0.00

    5   5.2  0.5  0.5       0.00     -71.16      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      38.03      -0.04       0.00      -0.00     -35.81      -0.00       0.00      -0.00

    6   6.2  0.5  0.5      -0.00      -0.00      -0.04     -35.70       0.00       0.00       0.00       0.00       0.00       0.00
                           61.13       0.01      -0.00      -0.01       0.00      35.06      -0.00       0.00       0.00      41.15

    7   7.2  0.5  0.5       1.53       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.03      35.70     -35.10       0.00       0.00      -0.00       0.00       0.00

    8   8.2  0.5  0.5      -0.00      -0.00      35.64      -0.04       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00     -35.66       0.00      -0.00      -0.00       0.00      -0.00     -39.75     -72.44      -0.00

    9   1.2  0.5 -0.5       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00       0.43     -20.39      -0.00
                            0.00       0.00       0.00       0.00       0.00       0.00     -14.75       0.00      -0.00       0.00

   10   2.2  0.5 -0.5       0.00       0.00       0.00       0.00     -14.76       0.00       0.00      -0.00       0.00      -0.00
                            0.00       0.00       0.00       0.00      -0.00     -14.77      -0.00       0.00       0.00     -17.63

   11   3.2  0.5 -0.5       0.00       0.00       0.00       0.00      -0.00      -0.00     -14.75      -0.00       0.00      -0.00
                            0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00     -17.45     -10.57      -0.00

   12   4.2  0.5 -0.5       0.00       0.00       0.00       0.00      -0.00      20.23       0.00      -0.00       0.00      -1.57
                            0.00       0.00       0.00       0.00      10.78       0.00       0.00       0.00      -0.00      -0.00

   13   5.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00      -0.77       0.00      -0.00       0.00     -41.08
                            0.00       0.00       0.00       0.00      17.12      -0.00       0.00       0.00      -0.00       0.00

   14   6.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00     -17.55       0.00      -0.00      -0.00
                            0.00       0.00       0.00       0.00       0.00      -0.00       0.00     -21.39      35.29       0.00

   15   7.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      41.21       0.89       0.00
                            0.00       0.00       0.00       0.00       0.00      -0.00     -17.55      -0.00       0.00      -0.00

   16   8.2  0.5 -0.5       0.00       0.00       0.00       0.00     -17.54      -0.00      -0.00       0.00      -0.00      -0.00
                            0.00       0.00       0.00       0.00       0.00      17.53      -0.00      -0.00       0.00     -20.59

   17   1.2  1.5  1.5       0.00       0.00       0.00       0.00      -0.00       0.00      43.39      -0.00       0.00      -0.00
                           -0.01      83.33      -0.00       0.00       0.00       0.00      -0.00      47.52      28.81       0.00

   18   2.2  1.5  1.5       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00       1.18     -55.52      -0.00
                            0.00      -0.00     -83.33       0.08      -0.00      -0.00     -43.39      -0.00       0.00      -0.00

   19   3.2  1.5  1.5       0.00       0.00       0.00       0.00     -43.39       0.00      -0.00       0.00      -0.00       0.00
                          -46.37      -0.00      -0.00       0.01       0.00      43.39       0.00       0.00       0.00     -48.11

   20   4.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00      -1.18      -0.00      -0.00       0.01     -86.79
                            0.02       0.00       0.07      72.41     -47.52       0.00      -0.00      -0.00      -0.00      -0.00

   21   5.2  1.5  1.5  124896.13       0.00       0.00       0.00      -0.00      55.52       0.00      -0.01      -0.00      -1.84
                            0.00      -0.00       0.13     131.78     -28.81      -0.00      -0.00       0.00      -0.00       0.00

   22   6.2  1.5  1.5       0.00  124896.12       0.00       0.00       0.00       0.00      -0.00      86.79       1.84       0.00
                            0.00      -0.00     -75.18       0.08      -0.00       0.00      48.11       0.00      -0.00      -0.00

   23   7.2  1.5  1.5       0.00       0.00  124896.12       0.00      -0.05       0.00     -48.11       0.00      -0.00       0.00
                           -0.13      75.18       0.00      -0.00       0.00      -0.05      -0.00      44.99     -74.25       0.04

   24   8.2  1.5  1.5       0.00       0.00       0.00  124896.12     -48.11      -0.01       0.05       0.00      -0.00      -0.01
                         -131.78      -0.08       0.00      -0.00      -0.00     -48.11       0.00      -0.04       0.07      43.41

   25   1.2  1.5  0.5      -0.00       0.00      -0.05     -48.11  122381.18       0.00       0.00       0.00       0.00       0.00
                           28.81       0.00      -0.00       0.00       0.00      25.05      -0.00      -0.00      -0.00      27.78

   26   2.2  1.5  0.5      55.52       0.00       0.00      -0.01       0.00  122381.18       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.05      48.11     -25.05      -0.00      -0.00      -0.00       0.00      -0.00

   27   3.2  1.5  0.5       0.00      -0.00     -48.11       0.05       0.00       0.00  122381.18       0.00       0.00       0.00
                            0.00     -48.11       0.00      -0.00       0.00       0.00       0.00      28.11     -15.46      -0.00

   28   4.2  1.5  0.5      -0.01      86.79       0.00       0.00       0.00       0.00       0.00  124896.11       0.00       0.00
                           -0.00      -0.00     -44.99       0.04       0.00       0.00     -28.11       0.00       0.01       0.00

   29   5.2  1.5  0.5      -0.00       1.84      -0.00      -0.00       0.00       0.00       0.00       0.00  124896.13       0.00
                            0.00       0.00      74.25      -0.07       0.00      -0.00      15.46      -0.01       0.00      -0.00

   30   6.2  1.5  0.5      -1.84       0.00       0.00      -0.01       0.00       0.00       0.00       0.00       0.00  124896.12
                           -0.00       0.00      -0.04     -43.41     -27.78       0.00       0.00      -0.00       0.00      -0.00

   31   7.2  1.5  0.5       0.00      -0.00      -0.00      43.41       0.00       0.00       0.00       0.00       0.00       0.00
                          -74.25       0.04       0.00       0.01       0.00      27.78       0.00      -0.02      -0.04      25.06

   32   8.2  1.5  0.5       0.00       0.01     -43.41      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.07      43.41      -0.01       0.00      -0.00      -0.03      -0.00     -24.14     -43.93      -0.03

   33   1.2  1.5 -0.5       0.00       0.00       0.00       0.00      -0.00      -0.00     -50.10       0.00      -0.01       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00      54.87      33.27       0.00

   34   2.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00      -0.00       0.00      -1.36      64.11       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00       0.00     -50.10      -0.00       0.01      -0.00

   35   3.2  1.5 -0.5       0.00       0.00       0.00       0.00      50.10      -0.00      -0.00      -0.00       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00       0.00      50.10      -0.00       0.00       0.00     -55.55

   36   4.2  1.5 -0.5       0.00       0.00       0.00       0.00      -0.00       1.36       0.00      -0.00      -0.01     100.22
                           -0.00      -0.00      -0.00      -0.00     -54.87       0.00      -0.00       0.00      -0.00      -0.00

   37   5.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.01     -64.11      -0.00       0.01      -0.00       2.12
                           -0.00      -0.00      -0.00      -0.00     -33.27      -0.01      -0.00       0.00       0.00       0.01

   38   6.2  1.5 -0.5       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00    -100.22      -2.12       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00       0.00      55.55       0.00      -0.01       0.00

   39   7.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.05      -0.00      55.55      -0.00       0.01      -0.00
                           -0.00      -0.00      -0.00      -0.00       0.00      -0.05      -0.00      51.95     -85.74       0.04

   40   8.2  1.5 -0.5       0.00       0.00       0.00       0.00      55.55       0.01      -0.05      -0.00       0.00       0.01
                           -0.00      -0.00      -0.00      -0.00      -0.00     -55.55       0.00      -0.05       0.08      50.12

   41   1.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   42   2.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   43   3.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   44   4.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   45   5.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   46   6.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   47   7.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   48   8.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00


   Nr   State  S   Sz       31         32         33         34         35         36         37         38         39         40

    1   1.2  0.5  0.5       0.00       0.00      -0.00      -0.00       0.00       0.43     -20.39      -0.00      -0.00       0.00
                          -35.27       0.03      -0.00      -0.00      14.75      -0.00       0.00      -0.00       0.02      17.64

    2   2.2  0.5  0.5       0.00       0.00     -14.76       0.00       0.00      -0.00       0.00      -0.00     -17.63       0.02
                            0.00      -0.00       0.00      14.77       0.00      -0.00      -0.00      17.63      -0.00       0.00

    3   3.2  0.5  0.5       0.00       0.00      -0.00      -0.00     -14.75      -0.00       0.00      -0.00       0.02      17.64
                           -0.00       0.00       0.00       0.00       0.00      17.45      10.57       0.00      -0.00       0.00

    4   4.2  0.5  0.5       0.00       0.00      -0.00      20.23       0.00      -0.00       0.00      -1.57       0.00       0.00
                            0.07      73.01     -10.78      -0.00      -0.00      -0.00       0.00       0.00      34.86      -0.03

    5   5.2  0.5  0.5       0.00       0.00       0.00      -0.77       0.00      -0.00       0.00     -41.08      -0.00       0.00
                            0.04      38.52     -17.12       0.00      -0.00      -0.00       0.00      -0.00     -21.96       0.02

    6   6.2  0.5  0.5       0.00       0.00       0.00       0.00     -17.55       0.00      -0.00      -0.00      -0.02     -20.61
                            0.00       0.00      -0.00       0.00      -0.00      21.39     -35.29      -0.00       0.00       0.01

    7   7.2  0.5  0.5       0.00       0.00       0.00       0.00      -0.00      41.21       0.89       0.00      -0.00       0.00
                          -41.23       0.04      -0.00       0.00      17.55       0.00      -0.00       0.00      -0.02     -20.61

    8   8.2  0.5  0.5       0.00       0.00     -17.54      -0.00      -0.00       0.00      -0.00      -0.00      20.58      -0.02
                            0.00       0.00      -0.00     -17.53       0.00       0.00      -0.00      20.59      -0.00       0.00

    9   1.2  0.5 -0.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.02     -17.64      29.49       0.00      -0.00      -0.00       0.00      -0.00     -35.27       0.03

   10   2.2  0.5 -0.5     -17.63       0.02       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00       0.00      -0.00     -35.78      19.66       0.00       0.00      -0.00

   11   3.2  0.5 -0.5       0.02      17.64       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00     -29.53       0.00      -0.00      -0.00      35.25      -0.00       0.00

   12   4.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -34.86       0.03       0.00      -0.00      18.88      -0.00       0.01      -0.00       0.07      73.01

   13   5.2  0.5 -0.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           21.96      -0.02       0.00      -0.00     -35.81      -0.00       0.00      -0.00       0.04      38.52

   14   6.2  0.5 -0.5      -0.02     -20.61       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.01       0.00      35.06      -0.00       0.00       0.00      41.15       0.00       0.00

   15   7.2  0.5 -0.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.02      20.61     -35.10       0.00       0.00      -0.00       0.00       0.00     -41.23       0.04

   16   8.2  0.5 -0.5      20.58      -0.02       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00       0.00      -0.00     -39.75     -72.44      -0.00       0.00       0.00

   17   1.2  1.5  1.5       0.05      48.11       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   18   2.2  1.5  1.5      -0.00       0.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.05      48.11       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   19   3.2  1.5  1.5      48.11      -0.05       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   20   4.2  1.5  1.5      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -44.99       0.04       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   21   5.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           74.25      -0.07       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   22   6.2  1.5  1.5      -0.00       0.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.04     -43.41       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   23   7.2  1.5  1.5      -0.00     -43.41       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   24   8.2  1.5  1.5      43.41      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.01      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   25   1.2  1.5  0.5       0.00       0.00      -0.00       0.00      50.10      -0.00       0.01      -0.00       0.05      55.55
                           -0.00       0.00       0.00       0.00      -0.00      54.87      33.27       0.00      -0.00       0.00

   26   2.2  1.5  0.5       0.00       0.00      -0.00      -0.00      -0.00       1.36     -64.11      -0.00      -0.00       0.01
                          -27.78       0.03      -0.00      -0.00     -50.10      -0.00       0.01      -0.00       0.05      55.55

   27   3.2  1.5  0.5       0.00       0.00     -50.10       0.00      -0.00       0.00      -0.00       0.00      55.55      -0.05
                           -0.00       0.00       0.00      50.10       0.00       0.00       0.00     -55.55       0.00      -0.00

   28   4.2  1.5  0.5       0.00       0.00       0.00      -1.36      -0.00      -0.00       0.01    -100.22      -0.00      -0.00
                            0.02      24.14     -54.87       0.00      -0.00      -0.00      -0.00      -0.00     -51.95       0.05

   29   5.2  1.5  0.5       0.00       0.00      -0.01      64.11       0.00      -0.01      -0.00      -2.12       0.01       0.00
                            0.04      43.93     -33.27      -0.01      -0.00       0.00      -0.00       0.01      85.74      -0.08

   30   6.2  1.5  0.5       0.00       0.00       0.00       0.00      -0.00     100.22       2.12       0.00      -0.00       0.01
                          -25.06       0.03      -0.00       0.00      55.55       0.00      -0.01      -0.00      -0.04     -50.12

   31   7.2  1.5  0.5  124896.12       0.00      -0.05       0.00     -55.55       0.00      -0.01       0.00      -0.00     -50.12
                            0.00      -0.00       0.00      -0.05      -0.00      51.95     -85.74       0.04      -0.00       0.01

   32   8.2  1.5  0.5       0.00  124896.12     -55.55      -0.01       0.05       0.00      -0.00      -0.01      50.12      -0.00
                            0.00      -0.00      -0.00     -55.55       0.00      -0.05       0.08      50.12      -0.01      -0.00

   33   1.2  1.5 -0.5      -0.05     -55.55  122381.18       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00     -25.05       0.00       0.00       0.00     -27.78       0.00      -0.00

   34   2.2  1.5 -0.5       0.00      -0.01       0.00  122381.18       0.00       0.00       0.00       0.00       0.00       0.00
                            0.05      55.55      25.05       0.00       0.00       0.00      -0.00       0.00      27.78      -0.03

   35   3.2  1.5 -0.5     -55.55       0.05       0.00       0.00  122381.18       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00     -28.11      15.46       0.00       0.00      -0.00

   36   4.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00  124896.11       0.00       0.00       0.00       0.00
                          -51.95       0.05      -0.00      -0.00      28.11      -0.00      -0.01      -0.00      -0.02     -24.14

   37   5.2  1.5 -0.5      -0.01      -0.00       0.00       0.00       0.00       0.00  124896.13       0.00       0.00       0.00
                           85.74      -0.08      -0.00       0.00     -15.46       0.01      -0.00       0.00      -0.04     -43.93

   38   6.2  1.5 -0.5       0.00      -0.01       0.00       0.00       0.00       0.00       0.00  124896.12       0.00       0.00
                           -0.04     -50.12      27.78      -0.00      -0.00       0.00      -0.00       0.00      25.06      -0.03

   39   7.2  1.5 -0.5      -0.00      50.12       0.00       0.00       0.00       0.00       0.00       0.00  124896.12       0.00
                            0.00       0.01      -0.00     -27.78      -0.00       0.02       0.04     -25.06      -0.00       0.00

   40   8.2  1.5 -0.5     -50.12      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00  124896.12
                           -0.01       0.00       0.00       0.03       0.00      24.14      43.93       0.03      -0.00       0.00

   41   1.2  1.5 -1.5       0.00       0.00      -0.00      -0.00     -43.39       0.00      -0.00       0.00      -0.05     -48.11
                           -0.00      -0.00      -0.00       0.00      -0.00      47.52      28.81       0.00      -0.00       0.00

   42   2.2  1.5 -1.5       0.00       0.00       0.00      -0.00       0.00      -1.18      55.52       0.00       0.00      -0.01
                           -0.00      -0.00      -0.00       0.00     -43.39      -0.00       0.00      -0.00       0.05      48.11

   43   3.2  1.5 -1.5       0.00       0.00      43.39      -0.00      -0.00      -0.00       0.00      -0.00     -48.11       0.05
                           -0.00      -0.00       0.00      43.39      -0.00       0.00       0.00     -48.11       0.00      -0.00

   44   4.2  1.5 -1.5       0.00       0.00      -0.00       1.18       0.00      -0.00      -0.01      86.79       0.00       0.00
                           -0.00      -0.00     -47.52       0.00      -0.00       0.00      -0.00      -0.00     -44.99       0.04

   45   5.2  1.5 -1.5       0.00       0.00       0.00     -55.52      -0.00       0.01      -0.00       1.84      -0.00      -0.00
                           -0.00      -0.00     -28.81      -0.00      -0.00       0.00       0.00       0.00      74.25      -0.07

   46   6.2  1.5 -1.5       0.00       0.00      -0.00      -0.00       0.00     -86.79      -1.84       0.00       0.00      -0.01
                           -0.00      -0.00      -0.00       0.00      48.11       0.00      -0.00       0.00      -0.04     -43.41

   47   7.2  1.5 -1.5       0.00       0.00       0.05      -0.00      48.11      -0.00       0.00      -0.00      -0.00      43.41
                           -0.00      -0.00       0.00      -0.05      -0.00      44.99     -74.25       0.04       0.00       0.01

   48   8.2  1.5 -1.5       0.00       0.00      48.11       0.01      -0.05      -0.00       0.00       0.01     -43.41      -0.00
                           -0.00      -0.00      -0.00     -48.11       0.00      -0.04       0.07      43.41      -0.01       0.00


   Nr   State  S   Sz       41         42         43         44         45         46         47         48

    1   1.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    2   2.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    3   3.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    4   4.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    5   5.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    6   6.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    7   7.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    8   8.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    9   1.2  0.5 -0.5      -0.00      -0.00       0.00       0.75     -35.31      -0.00      -0.00       0.00
                           -0.00      -0.00      25.54      -0.00       0.00      -0.00       0.03      30.56

   10   2.2  0.5 -0.5     -25.57       0.00       0.00      -0.00       0.00      -0.00     -30.53       0.03
                            0.00      25.58       0.00      -0.00      -0.00      30.53      -0.00       0.00

   11   3.2  0.5 -0.5      -0.00      -0.00     -25.54      -0.00       0.00      -0.00       0.03      30.55
                            0.00       0.00       0.00      30.23      18.31       0.00      -0.00       0.00

   12   4.2  0.5 -0.5      -0.00      35.04       0.00      -0.00       0.00      -2.73       0.00       0.00
                          -18.66      -0.00      -0.00      -0.00       0.00       0.00      60.37      -0.06

   13   5.2  0.5 -0.5       0.00      -1.33       0.00      -0.00       0.00     -71.16      -0.00       0.00
                          -29.66       0.00      -0.00      -0.00       0.00      -0.00     -38.03       0.04

   14   6.2  0.5 -0.5       0.00       0.00     -30.39       0.00      -0.00      -0.00      -0.04     -35.70
                           -0.00       0.00      -0.00      37.06     -61.13      -0.01       0.00       0.01

   15   7.2  0.5 -0.5       0.00       0.00      -0.00      71.38       1.53       0.00      -0.00       0.00
                           -0.00       0.00      30.39       0.00      -0.00       0.00      -0.03     -35.70

   16   8.2  0.5 -0.5     -30.38      -0.00      -0.00       0.00      -0.00      -0.00      35.64      -0.04
                           -0.00     -30.36       0.00       0.00      -0.00      35.66      -0.00       0.00

   17   1.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   18   2.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   19   3.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   20   4.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   21   5.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   22   6.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   23   7.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   24   8.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   25   1.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   26   2.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   27   3.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   28   4.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   29   5.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   30   6.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   31   7.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   32   8.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   33   1.2  1.5 -0.5      -0.00       0.00      43.39      -0.00       0.00      -0.00       0.05      48.11
                            0.00       0.00      -0.00      47.52      28.81       0.00      -0.00       0.00

   34   2.2  1.5 -0.5      -0.00      -0.00      -0.00       1.18     -55.52      -0.00      -0.00       0.01
                           -0.00      -0.00     -43.39      -0.00       0.00      -0.00       0.05      48.11

   35   3.2  1.5 -0.5     -43.39       0.00      -0.00       0.00      -0.00       0.00      48.11      -0.05
                            0.00      43.39       0.00       0.00       0.00     -48.11       0.00      -0.00

   36   4.2  1.5 -0.5       0.00      -1.18      -0.00      -0.00       0.01     -86.79      -0.00      -0.00
                          -47.52       0.00      -0.00      -0.00      -0.00      -0.00     -44.99       0.04

   37   5.2  1.5 -0.5      -0.00      55.52       0.00      -0.01      -0.00      -1.84       0.00       0.00
                          -28.81      -0.00      -0.00       0.00      -0.00       0.00      74.25      -0.07

   38   6.2  1.5 -0.5       0.00       0.00      -0.00      86.79       1.84       0.00      -0.00       0.01
                           -0.00       0.00      48.11       0.00      -0.00      -0.00      -0.04     -43.41

   39   7.2  1.5 -0.5      -0.05       0.00     -48.11       0.00      -0.00       0.00      -0.00     -43.41
                            0.00      -0.05      -0.00      44.99     -74.25       0.04      -0.00       0.01

   40   8.2  1.5 -0.5     -48.11      -0.01       0.05       0.00      -0.00      -0.01      43.41      -0.00
                           -0.00     -48.11       0.00      -0.04       0.07      43.41      -0.01      -0.00

   41   1.2  1.5 -1.5  122381.18       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00     -75.15       0.00       0.00       0.01     -83.33       0.00      -0.00

   42   2.2  1.5 -1.5       0.00  122381.18       0.00       0.00       0.00       0.00       0.00       0.00
                           75.15       0.00       0.00       0.00      -0.00       0.00      83.33      -0.08

   43   3.2  1.5 -1.5       0.00       0.00  122381.18       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00     -84.32      46.37       0.00       0.00      -0.01

   44   4.2  1.5 -1.5       0.00       0.00       0.00  124896.11       0.00       0.00       0.00       0.00
                           -0.00      -0.00      84.32      -0.00      -0.02      -0.00      -0.07     -72.41

   45   5.2  1.5 -1.5       0.00       0.00       0.00       0.00  124896.13       0.00       0.00       0.00
                           -0.01       0.00     -46.37       0.02      -0.00       0.00      -0.13    -131.78

   46   6.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00  124896.12       0.00       0.00
                           83.33      -0.00      -0.00       0.00      -0.00       0.00      75.18      -0.08

   47   7.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00  124896.12       0.00
                           -0.00     -83.33      -0.00       0.07       0.13     -75.18      -0.00       0.00

   48   8.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00  124896.12
                            0.00       0.08       0.01      72.41     131.78       0.08      -0.00       0.00


 No symmetry adaption


 Spin-orbit eigenstates   (energies)
 ======================

   Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
            (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
   1   -99.72795245    -0.00058639     -128.70      0.00000000        0.00      0.0000
   2   -99.72795245    -0.00058639     -128.70      0.00000000        0.00      0.0000
   3   -99.72795233    -0.00058627     -128.67      0.00000013        0.03      0.0000
   4   -99.72795233    -0.00058627     -128.67      0.00000013        0.03      0.0000
   5   -99.72619408     0.00117197      257.22      0.00175837      385.92      0.0478
   6   -99.72619408     0.00117197      257.22      0.00175837      385.92      0.0478
   7   -99.17013046     0.55723559   122299.08      0.55782199   122427.78     15.1791
   8   -99.17013046     0.55723559   122299.08      0.55782199   122427.78     15.1791
   9   -99.17013046     0.55723560   122299.08      0.55782199   122427.78     15.1791
  10   -99.17013046     0.55723560   122299.08      0.55782199   122427.78     15.1791
  11   -99.17013046     0.55723560   122299.08      0.55782199   122427.78     15.1791
  12   -99.17013046     0.55723560   122299.08      0.55782199   122427.78     15.1791
  13   -99.16954998     0.55781608   122426.48      0.55840247   122555.18     15.1949
  14   -99.16954998     0.55781608   122426.48      0.55840247   122555.18     15.1949
  15   -99.16954996     0.55781609   122426.48      0.55840249   122555.18     15.1949
  16   -99.16954996     0.55781609   122426.48      0.55840249   122555.18     15.1949
  17   -99.16919235     0.55817371   122504.97      0.55876010   122633.67     15.2046
  18   -99.16919235     0.55817371   122504.97      0.55876010   122633.67     15.2046
  19   -99.15898260     0.56838346   124745.75      0.56896985   124874.45     15.4825
  20   -99.15898260     0.56838346   124745.75      0.56896985   124874.45     15.4825
  21   -99.15898259     0.56838347   124745.75      0.56896987   124874.45     15.4825
  22   -99.15898259     0.56838347   124745.75      0.56896987   124874.45     15.4825
  23   -99.15898256     0.56838349   124745.76      0.56896989   124874.46     15.4825
  24   -99.15898256     0.56838349   124745.76      0.56896989   124874.46     15.4825
  25   -99.15898256     0.56838350   124745.76      0.56896989   124874.46     15.4825
  26   -99.15898256     0.56838350   124745.76      0.56896989   124874.46     15.4825
  27   -99.15819652     0.56916954   124918.27      0.56975593   125046.97     15.5038
  28   -99.15819652     0.56916954   124918.27      0.56975593   125046.97     15.5038
  29   -99.15819646     0.56916960   124918.29      0.56975600   125046.99     15.5039
  30   -99.15819646     0.56916960   124918.29      0.56975600   125046.99     15.5039
  31   -99.15819636     0.56916970   124918.31      0.56975609   125047.01     15.5039
  32   -99.15819636     0.56916970   124918.31      0.56975609   125047.01     15.5039
  33   -99.15761402     0.56975204   125046.12      0.57033843   125174.82     15.5197
  34   -99.15761402     0.56975204   125046.12      0.57033843   125174.82     15.5197
  35   -99.15761399     0.56975207   125046.12      0.57033846   125174.82     15.5197
  36   -99.15761399     0.56975207   125046.12      0.57033846   125174.82     15.5197
  37   -99.15726282     0.57010324   125123.20      0.57068963   125251.90     15.5293
  38   -99.15726282     0.57010324   125123.20      0.57068963   125251.90     15.5293
  39   -99.15187067     0.57549539   126306.64      0.57608179   126435.34     15.6760
  40   -99.15187067     0.57549539   126306.64      0.57608179   126435.34     15.6760
  41   -99.15187027     0.57549578   126306.72      0.57608218   126435.42     15.6760
  42   -99.15187027     0.57549578   126306.72      0.57608218   126435.42     15.6760
  43   -99.15186971     0.57549634   126306.85      0.57608274   126435.55     15.6760
  44   -99.15186971     0.57549634   126306.85      0.57608274   126435.55     15.6760
  45   -99.15061767     0.57674839   126581.64      0.57733478   126710.34     15.7101
  46   -99.15061767     0.57674839   126581.64      0.57733478   126710.34     15.7101
  47   -99.15061728     0.57674878   126581.73      0.57733517   126710.42     15.7101
  48   -99.15061728     0.57674878   126581.73      0.57733517   126710.42     15.7101


 Eigenvectors of spin-orbit matrix
 =================================

  Basis states          Eigenvectors (columnwise)

   Nr   State  S   Sz        1             2             3             4             5             6             7             8

    1    1.2  0.5  0.5   0.790482864   0.200210417  -0.041273183  -0.001145540  -0.085301969   0.571026255   0.000000036   0.000000007
                         0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000

    2    2.2  0.5  0.5   0.020105690  -0.079382321   0.018909857  -0.681280785   0.081029313   0.012104452  -0.000000001   0.000000004
                        -0.107010635   0.422520348  -0.002046183   0.074146547  -0.565220202  -0.084438871  -0.000000005   0.000000026

    3    3.2  0.5  0.5   0.000018601   0.000004308   0.000376556   0.000022532   0.000000587   0.000000090  -0.000000000  -0.000000000
                        -0.360597860  -0.091328426   0.726556967   0.020165184  -0.085304615   0.571015926   0.000000092   0.000000017

    4    4.2  0.5  0.5   0.000042231  -0.000166738  -0.000000045   0.000001681  -0.000000027  -0.000000004   0.000156603  -0.000836553
                         0.000007935  -0.000031328  -0.000000429   0.000015453  -0.000000004  -0.000000001  -0.000021464   0.000114633

    5    5.2  0.5  0.5  -0.000003755   0.000014828  -0.000000521   0.000018931  -0.000000039  -0.000000006   0.001110074  -0.005939421
                        -0.000000705   0.000002784  -0.000004828   0.000173960  -0.000000006  -0.000000001  -0.000152275   0.000813977

    6    6.2  0.5  0.5  -0.000000002   0.000000000  -0.000000039  -0.000000007  -0.000000000   0.000000000  -0.000000834  -0.000000189
                        -0.000151629  -0.000038410  -0.000079990  -0.000002219   0.000000006  -0.000000041   0.004794831   0.000895988

    7    7.2  0.5  0.5  -0.000008609  -0.000002182  -0.000175422  -0.000004869   0.000000001  -0.000000007  -0.010471792  -0.001957126
                        -0.000000002  -0.000000001   0.000000090   0.000000007  -0.000000000  -0.000000000  -0.000002017  -0.000000508

    8    8.2  0.5  0.5   0.000006689  -0.000026408  -0.000002631   0.000094806  -0.000000005  -0.000000001  -0.000103549   0.000554195
                        -0.000035604   0.000140546   0.000000281  -0.000010315   0.000000034   0.000000005  -0.000755464   0.004044042

    9    1.2  0.5 -0.5  -0.196767933   0.776891043   0.000124524  -0.004486546   0.565244316   0.084438242  -0.000000007   0.000000036
                        -0.036967437   0.145957067   0.001138752  -0.041028606   0.081054595   0.012108229   0.000000001  -0.000000005

   10    2.2  0.5 -0.5   0.000002003   0.000001230   0.000350539   0.000021513  -0.000003828   0.000021604  -0.000000000  -0.000000000
                         0.429912778   0.108883032   0.685303652   0.019020228   0.085302056  -0.570998797   0.000000026   0.000000005

   11    3.2  0.5 -0.5   0.016858914  -0.066563562  -0.020048138   0.722292469   0.081053218   0.012108023   0.000000002  -0.000000013
                        -0.089758890   0.354401057   0.002169631  -0.078605070  -0.565234079  -0.084440944   0.000000017  -0.000000091

   12    4.2  0.5 -0.5   0.000169656   0.000042970  -0.000015544  -0.000000431  -0.000000004   0.000000027   0.000844370   0.000158067
                        -0.000000003  -0.000000001   0.000000009   0.000000002  -0.000000000   0.000000000   0.000000147   0.000000033

   13    5.2  0.5 -0.5  -0.000015087  -0.000003821  -0.000174987  -0.000004856  -0.000000006   0.000000040   0.005994938   0.001120469
                        -0.000000002  -0.000000001   0.000000091   0.000000007  -0.000000000   0.000000000   0.000001147   0.000000357

   14    6.2  0.5 -0.5   0.000007092  -0.000027999   0.000002207  -0.000079520  -0.000000006  -0.000000001   0.000121672  -0.000650948
                        -0.000037750   0.000149022  -0.000000234   0.000008657   0.000000040   0.000000006   0.000887688  -0.004750439

   15    7.2  0.5 -0.5   0.000002145  -0.000008461   0.000000522  -0.000018980  -0.000000007  -0.000000001   0.001938983  -0.010374815
                         0.000000402  -0.000001587   0.000004840  -0.000174392  -0.000000001  -0.000000000  -0.000265865   0.001421847

   16    8.2  0.5 -0.5   0.000000003  -0.000000000  -0.000000052  -0.000000007  -0.000000000  -0.000000000  -0.000000754  -0.000000161
                         0.000143006   0.000036227  -0.000095365  -0.000002646  -0.000000005   0.000000034   0.004081839   0.000762527

   17    1.2  1.5  1.5   0.000004191  -0.000016547   0.000003942  -0.000142010   0.000016926   0.000002528   0.002106435  -0.011235360
                        -0.000022306   0.000088072  -0.000000425   0.000015456  -0.000118068  -0.000017637   0.015331632  -0.081983405

   18    2.2  1.5  1.5  -0.000022315   0.000088108  -0.000000426   0.000015462  -0.000118116  -0.000017645   0.022468450  -0.120280305
                        -0.000004193   0.000016554  -0.000003943   0.000142068  -0.000016933  -0.000002530  -0.003079091   0.016485947

   19    3.2  1.5  1.5  -0.000000005  -0.000000001   0.000000084   0.000000006  -0.000000000  -0.000000000  -0.000106916  -0.000024682
                        -0.000239676  -0.000060704   0.000159867   0.000004437   0.000000002  -0.000000013   0.549430795   0.102686600

   20    4.2  1.5  1.5  -0.000091763  -0.000023241   0.000175633   0.000004874  -0.000020135   0.000134786  -0.029276824  -0.005471706
                         0.000000010   0.000000002  -0.000000081  -0.000000006  -0.000000003   0.000000023  -0.000006120  -0.000001437

   21    5.2  1.5  1.5   0.000170182   0.000043096   0.000094625   0.000002625  -0.000036619   0.000245190   0.008770954   0.001638744
                        -0.000000012  -0.000000004  -0.000000064  -0.000000014   0.000000004  -0.000000019   0.000002307   0.000000498

   22    6.2  1.5  1.5  -0.000026081   0.000103018  -0.000000492   0.000018078  -0.000138171  -0.000020625  -0.001668024   0.008926632
                        -0.000004902   0.000019355  -0.000004610   0.000166105  -0.000019808  -0.000002959   0.000228993  -0.001223377

   23    7.2  1.5  1.5   0.000004903  -0.000019357   0.000004611  -0.000166128   0.000019811   0.000002959  -0.000259512   0.001388163
                        -0.000026194   0.000103005  -0.000000656   0.000018076  -0.000138149  -0.000020908  -0.001886463   0.010129557

   24    8.2  1.5  1.5  -0.000000028   0.000000012  -0.000000088   0.000000151  -0.000000018  -0.000000008  -0.000003772  -0.000002215
                        -0.000104897  -0.000026672  -0.000167187  -0.000004657   0.000041867  -0.000279368   0.006412580   0.001188512

   25    1.2  1.5  0.5   0.000000004   0.000000001   0.000000036   0.000000003   0.000000000  -0.000000003  -0.000127944  -0.000032123
                         0.000241756   0.000061231   0.000072552   0.000002014  -0.000010262   0.000068692   0.652637192   0.121974084

   26    2.2  1.5  0.5  -0.000035042  -0.000008876   0.000257401   0.000007144  -0.000010286   0.000068853  -0.299002981  -0.055883973
                         0.000000003   0.000000001  -0.000000133  -0.000000010  -0.000000000   0.000000003  -0.000057332  -0.000010644

   27    3.2  1.5  0.5  -0.000002417   0.000009543  -0.000002273   0.000081892   0.000019524   0.000002917  -0.008981938   0.048016545
                         0.000012865  -0.000050795   0.000000245  -0.000008913  -0.000136187  -0.000020344  -0.065474209   0.350344652

   28    4.2  1.5  0.5  -0.000042410   0.000167448  -0.000000282   0.000010255  -0.000242870  -0.000036281   0.002879135  -0.015406345
                        -0.000007971   0.000031472  -0.000002613   0.000094150  -0.000034817  -0.000005201  -0.000394534   0.002110254

   29    5.2  1.5  0.5  -0.000022821   0.000090060   0.000000530  -0.000019019   0.000133416   0.000019945   0.002774810  -0.014847039
                        -0.000004282   0.000016907   0.000004848  -0.000174665   0.000019127   0.000002857  -0.000380603   0.002036755

   30    6.2  1.5  0.5   0.000162015   0.000041040  -0.000108042  -0.000003000   0.000036120  -0.000241735  -0.004272906  -0.000799448
                        -0.000000004   0.000000000   0.000000058  -0.000000007   0.000000003  -0.000000010  -0.000000932  -0.000000221

   31    7.2  1.5  0.5  -0.000000011   0.000000027   0.000000060  -0.000000098  -0.000000001   0.000000010   0.000002364   0.000003262
                        -0.000162081  -0.000041212   0.000108105   0.000003011   0.000036129  -0.000241853  -0.014236790  -0.002642071

   32    8.2  1.5  0.5  -0.000007585   0.000029947   0.000002984  -0.000107519  -0.000000026  -0.000000004  -0.000488180   0.002610280
                         0.000040519  -0.000159334  -0.000000425   0.000011721  -0.000000057   0.000000226  -0.003545879   0.019045171

   33    1.2  1.5 -0.5   0.000011307  -0.000044642   0.000002002  -0.000072126  -0.000009748  -0.000001456  -0.016570042   0.088616498
                        -0.000060178   0.000237598  -0.000000216   0.000007851   0.000067997   0.000010158  -0.120843336   0.646592941

   34    2.2  1.5 -0.5  -0.000008723   0.000034439   0.000000767  -0.000027848  -0.000068156  -0.000010181  -0.055366464   0.296234040
                        -0.000001639   0.000006473   0.000007103  -0.000255890  -0.000009771  -0.000001460   0.007587745  -0.040598035

   35    3.2  1.5 -0.5   0.000000000   0.000000000   0.000000042   0.000000003   0.000000001  -0.000000005   0.000070644   0.000021484
                         0.000051684   0.000013090   0.000082376   0.000002286  -0.000020552   0.000137580  -0.353619834  -0.066087425

   36    4.2  1.5 -0.5   0.000170380   0.000043153   0.000094707   0.000002628   0.000036652  -0.000245353  -0.015550198  -0.002906041
                        -0.000000012  -0.000000003  -0.000000041  -0.000000004   0.000000001  -0.000000009  -0.000001852  -0.000000514

   37    5.2  1.5 -0.5   0.000091633   0.000023219  -0.000175698  -0.000004877  -0.000020149   0.000134780  -0.014986090  -0.002800790
                         0.000000013   0.000000005   0.000000081  -0.000000000  -0.000000003   0.000000005  -0.000004865  -0.000000857

   38    6.2  1.5 -0.5   0.000040335  -0.000159228  -0.000000333   0.000011687   0.000239289   0.000035754  -0.000792035   0.004233320
                         0.000007578  -0.000029919  -0.000002981   0.000107408   0.000034304   0.000005124   0.000108615  -0.000580277

   39    7.2  1.5 -0.5  -0.000007583   0.000029938   0.000002983  -0.000107471   0.000034320   0.000005127   0.000361465  -0.001932678
                         0.000040508  -0.000159292  -0.000000425   0.000011692  -0.000239406  -0.000035763   0.002617230  -0.014104996

   40    8.2  1.5 -0.5   0.000000012  -0.000000027  -0.000000036   0.000000098  -0.000000028  -0.000000034   0.000003879   0.000002894
                         0.000162124   0.000041223  -0.000108156  -0.000003013   0.000000224   0.000000053  -0.019223217  -0.003579325

   41    1.2  1.5 -1.5   0.000000000   0.000000000   0.000000073   0.000000006  -0.000000001   0.000000005   0.000015666   0.000008201
                         0.000089613   0.000022697   0.000142848   0.000003965   0.000017818  -0.000119275  -0.082749707  -0.015475658

   42    2.2  1.5 -1.5  -0.000089650  -0.000022706  -0.000142906  -0.000003966  -0.000017825   0.000119324   0.121404860   0.022678451
                         0.000000000   0.000000000   0.000000073   0.000000006  -0.000000001   0.000000005   0.000025139   0.000004206

   43    3.2  1.5 -1.5   0.000011210  -0.000044260  -0.000004411   0.000158929  -0.000000002  -0.000000000   0.013947522  -0.074602139
                        -0.000059660   0.000235553   0.000000476  -0.000017294   0.000000013   0.000000002   0.101734978  -0.544342493

   44    4.2  1.5 -1.5   0.000022841  -0.000090183  -0.000000524   0.000019012   0.000133424   0.000019931   0.005420982  -0.029005632
                         0.000004294  -0.000016953  -0.000004846   0.000174601   0.000019110   0.000002855  -0.000743321   0.003975649

   45    5.2  1.5 -1.5  -0.000042354   0.000167253  -0.000000271   0.000010222   0.000242704   0.000036247  -0.001623543   0.008689645
                        -0.000007962   0.000031435  -0.000002611   0.000094071   0.000034822   0.000005202   0.000222688  -0.001191522

   46    6.2  1.5 -1.5  -0.000104820  -0.000026537  -0.000167085  -0.000004637  -0.000020836   0.000139584  -0.009010073  -0.001683669
                         0.000000000   0.000000002   0.000000086   0.000000012   0.000000001   0.000000005  -0.000001737  -0.000000715

   47    7.2  1.5 -1.5   0.000000005  -0.000000018   0.000000090  -0.000000151  -0.000000038  -0.000000001  -0.000001898  -0.000001334
                         0.000104808   0.000026649   0.000167108   0.000004655   0.000021116  -0.000139562   0.010224233   0.001904229

   48    8.2  1.5 -1.5   0.000004913  -0.000019396   0.000004613  -0.000166206  -0.000039663  -0.000005925   0.000163342  -0.000873205
                        -0.000026215   0.000103089  -0.000000656   0.000018086   0.000276538   0.000041445   0.001177236  -0.006352850


   Nr   State  S   Sz        9            10            11            12            13            14            15            16

    1    1.2  0.5  0.5  -0.000000004   0.000000002   0.000000000   0.000000005  -0.000293632  -0.000004639   0.000036045   0.000001094
                         0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000

    2    2.2  0.5  0.5   0.000000014   0.000000022  -0.000000022  -0.000000000   0.000002585  -0.000163595   0.000007127  -0.000234744
                         0.000000015   0.000000025  -0.000000031   0.000000000   0.000001118  -0.000070845  -0.000000885   0.000029198

    3    3.2  0.5  0.5   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000007  -0.000000001  -0.000000054  -0.000000003
                         0.000000091  -0.000000057   0.000000000  -0.000000132   0.000115624   0.000001826  -0.000272444  -0.000008271

    4    4.2  0.5  0.5   0.000835405   0.001343853  -0.008570088   0.000001011   0.000019893  -0.001258961   0.000001947  -0.000063116
                        -0.000763670  -0.001229082   0.006041046   0.000001184  -0.000045922   0.002907073   0.000015413  -0.000507737

    5    5.2  0.5  0.5   0.003329397   0.005357754   0.001837785  -0.000000073  -0.000003216   0.000203601   0.000011872  -0.000390952
                        -0.003043764  -0.004899672  -0.001295337  -0.000000325   0.000007437  -0.000470276   0.000095433  -0.003143475

    6    6.2  0.5  0.5   0.000011324  -0.000007774  -0.000000853  -0.000014535  -0.000000022  -0.000000098  -0.000000196   0.000000074
                         0.005438054  -0.003379085   0.000000331  -0.007117130  -0.002957922  -0.000046770  -0.001250633  -0.000037986

    7    7.2  0.5  0.5   0.000999014  -0.000620547  -0.000000173  -0.000833856  -0.000393099  -0.000006226  -0.003188574  -0.000096802
                        -0.000002042   0.000001356   0.000000247   0.000001623  -0.000000051   0.000000025   0.000000622   0.000000011

    8    8.2  0.5  0.5   0.003026417   0.004871468  -0.002931155  -0.000000496  -0.000037181   0.002353558   0.000058132  -0.001914966
                         0.003310702   0.005326676  -0.004158193   0.000000434  -0.000016225   0.001019261  -0.000007281   0.000238114

    9    1.2  0.5 -0.5  -0.000000002  -0.000000003  -0.000000004   0.000000000   0.000001843  -0.000116687   0.000000135  -0.000004456
                         0.000000002   0.000000002   0.000000003  -0.000000000  -0.000004257   0.000269452   0.000001086  -0.000035769

   10    2.2  0.5 -0.5   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000001  -0.000000045  -0.000000003
                         0.000000033  -0.000000021   0.000000000   0.000000038  -0.000178276  -0.000002816  -0.000236552  -0.000007181

   11    3.2  0.5 -0.5  -0.000000038  -0.000000062  -0.000000076  -0.000000000   0.000001676  -0.000106105  -0.000008208   0.000270360
                        -0.000000042  -0.000000067  -0.000000108   0.000000000   0.000000725  -0.000045942   0.000001019  -0.000033626

   12    4.2  0.5 -0.5  -0.001821147   0.001131851  -0.000000141  -0.010485236   0.003167973   0.000050046  -0.000511645  -0.000015535
                         0.000003698  -0.000002585   0.000001550   0.000021322  -0.000000045  -0.000000006   0.000000134  -0.000000027

   13    5.2  0.5 -0.5  -0.007260308   0.004511018  -0.000000129   0.002248408  -0.000512458  -0.000008103  -0.003167693  -0.000096169
                         0.000015120  -0.000010113  -0.000000307  -0.000004667  -0.000000049  -0.000000005   0.000000642   0.000000016

   14    6.2  0.5 -0.5  -0.002279858  -0.003669912  -0.004100467  -0.000000887  -0.000042879   0.002714328  -0.000037685   0.001241065
                        -0.002494098  -0.004013019  -0.005817207   0.000000224  -0.000018676   0.001175468   0.000004769  -0.000154408

   15    7.2  0.5 -0.5   0.000457976   0.000737198   0.000681509  -0.000000284   0.000002497  -0.000156166  -0.000011956   0.000393554
                        -0.000418734  -0.000674220  -0.000480484  -0.000000102  -0.000005703   0.000360748  -0.000096060   0.003164194

   16    8.2  0.5 -0.5   0.000014872  -0.000010244   0.000000656   0.000010305   0.000000045   0.000000114  -0.000000440   0.000000039
                         0.007218343  -0.004485515   0.000000068   0.005087447   0.002564786   0.000040567  -0.001929713  -0.000058587

   17    1.2  1.5  1.5   0.233070153   0.375168618  -0.193832205  -0.000032011  -0.003898003   0.246705346  -0.010745605   0.353947980
                         0.254950045   0.410242928  -0.274970753   0.000045829  -0.001687744   0.106835865   0.001336913  -0.044024485

   18    2.2  1.5  1.5  -0.148681771  -0.239223017   0.508923874  -0.000067976  -0.001687813   0.106840234   0.001336962  -0.044026093
                         0.135919481   0.218776536  -0.358743412  -0.000067057   0.003898163  -0.246715436   0.010745998  -0.353960903

   19    3.2  1.5  1.5   0.000337574  -0.000223035  -0.000027823  -0.000463193  -0.000013445  -0.000000476   0.000099423   0.000002660
                         0.159839722  -0.099316612   0.000008636  -0.226225113  -0.618002024  -0.009763128   0.465498991   0.014131167

   20    4.2  1.5  1.5  -0.004114546   0.002556768  -0.000000384   0.006454568   0.007738095   0.000122232  -0.017204452  -0.000522298
                         0.000009190  -0.000006028  -0.000000708  -0.000013820  -0.000001011  -0.000000028   0.000002556   0.000000063

   21    5.2  1.5  1.5   0.010564026  -0.006562095   0.000000211  -0.013801979  -0.017226804  -0.000271892  -0.007727411  -0.000234724
                        -0.000023598   0.000014180   0.000001925   0.000029099   0.000001300  -0.000000617   0.000002892  -0.000000828

   22    6.2  1.5  1.5  -0.011342265  -0.018253096   0.001287504  -0.000001580   0.000070255  -0.004513319  -0.000056945   0.001859753
                         0.010369532   0.016691971  -0.000907880   0.000000097  -0.000164671   0.010422053  -0.000453945   0.014952424

   23    7.2  1.5  1.5   0.001217571   0.001959272  -0.016443380  -0.000003191   0.000164676  -0.010422545   0.000453968  -0.014952951
                         0.001325110   0.002146206  -0.023327219   0.000011340   0.000082054  -0.004513345  -0.000042212   0.001860266

   24    8.2  1.5  1.5  -0.000017763   0.000009117   0.000016868   0.000020129   0.000002054   0.000009891   0.000002134   0.000014220
                        -0.007278052   0.004519025   0.000022016   0.008988444   0.011356260   0.000183702   0.015068933   0.000455722

   25    1.2  1.5  0.5  -0.000129362   0.000086858   0.000011761   0.000104522   0.000007542  -0.000000034   0.000021377   0.000000441
                        -0.062264538   0.038677353   0.000005574   0.051980664   0.667241185   0.010541600   0.143095598   0.004344935

   26    2.2  1.5  0.5  -0.339105647   0.210692924  -0.000009385   0.443799822  -0.046359488  -0.000731785   0.680630767   0.020662907
                         0.000714011  -0.000473136  -0.000059949  -0.000906728   0.000007912   0.000000582  -0.000136133  -0.000003512

   27    3.2  1.5  0.5  -0.168264827  -0.270870868  -0.285636988  -0.000060702   0.002250664  -0.142444944   0.006204022  -0.204353423
                        -0.184056537  -0.296206305  -0.405222182   0.000038361   0.000974485  -0.061685865  -0.000771872   0.025417710

   28    4.2  1.5  0.5  -0.001879301  -0.003023302   0.010052913  -0.000001445   0.000108087  -0.006841743  -0.000029041   0.000956225
                         0.001718508   0.002765804  -0.007088363  -0.000001349  -0.000249561   0.015796131  -0.000233207   0.007681036

   29    5.2  1.5  0.5  -0.010350199  -0.016653191   0.003043117  -0.000000275   0.000049567  -0.003079381   0.000063774  -0.002122913
                         0.009460473   0.015228229  -0.002142252  -0.000000165  -0.000112374   0.007113994   0.000517914  -0.017060221

   30    6.2  1.5  0.5   0.011952236  -0.007427370   0.000000362  -0.015024776  -0.015072915  -0.000238307   0.011354096   0.000344548
                        -0.000024538   0.000017587   0.000001998   0.000030638   0.000000353   0.000000443  -0.000002418  -0.000001099

   31    7.2  1.5  0.5   0.000014951  -0.000019107   0.000012332  -0.000022227   0.000000153   0.000013109  -0.000002125  -0.000010734
                         0.009049727  -0.005632334   0.000019826  -0.010922451   0.015072100   0.000243776  -0.011353623  -0.000343337

   32    8.2  1.5  0.5  -0.004258822  -0.006855238   0.014744147   0.000002820  -0.000218504   0.013831320   0.000342037  -0.011267101
                        -0.004669135  -0.007493397   0.020915934   0.000007950  -0.000108911   0.005990148  -0.000031862   0.001403716

   33    1.2  1.5 -0.5  -0.026097045  -0.042019904  -0.029949508  -0.000006375  -0.009673512   0.612290867  -0.004311662   0.142000653
                        -0.028546292  -0.045948029  -0.042485630   0.000011350  -0.004189091   0.265161634   0.000536682  -0.017668215

   34    2.2  1.5 -0.5   0.155504336   0.250248768   0.362741307  -0.000027011  -0.000291338   0.018430036  -0.002550857   0.084004271
                        -0.142162348  -0.228842216  -0.255690772  -0.000054328   0.000671291  -0.042538644  -0.020504849   0.675426933

   35    3.2  1.5 -0.5   0.000843361  -0.000559988  -0.000071709  -0.001011190  -0.000000108  -0.000000154   0.000039357   0.000000988
                         0.401383105  -0.249378306   0.000003812  -0.495774702   0.155227923   0.002452572   0.205928094   0.006251854

   36    4.2  1.5 -0.5  -0.004097559   0.002546569  -0.000000400  -0.012300624  -0.017214157  -0.000271962  -0.007740328  -0.000235008
                         0.000007802  -0.000005388   0.000001936   0.000023317   0.000001107   0.000000013   0.000000636   0.000000011

   37    5.2  1.5 -0.5  -0.022566025   0.014022343  -0.000000132  -0.003721514  -0.007751871  -0.000122817   0.017191798   0.000521825
                         0.000047831  -0.000032741   0.000000294   0.000009886  -0.000001233   0.000000829  -0.000002350  -0.000000740

   38    6.2  1.5 -0.5  -0.005482471  -0.008819931  -0.012280518   0.000000860  -0.000095107   0.005990143  -0.000041502   0.001401191
                         0.005010854   0.008066315   0.008656421   0.000001839   0.000218507  -0.013831520  -0.000342041   0.011267305

   39    7.2  1.5 -0.5   0.003795588   0.006110145   0.006292932   0.000001390  -0.000218492   0.013830852   0.000342030  -0.011266799
                         0.004161379   0.006675624   0.008927452   0.000023307  -0.000108904   0.005989636  -0.000031792   0.001401423

   40    8.2  1.5 -0.5   0.000019290  -0.000021356  -0.000002292   0.000051606  -0.000000436  -0.000013111  -0.000000114   0.000010665
                         0.010156033  -0.006319646  -0.000008117   0.025590300  -0.015072733  -0.000243790   0.011354205   0.000343353

   41    1.2  1.5 -1.5   0.001156963  -0.000779820   0.000052605   0.000679498  -0.000000213  -0.000000268   0.000068133   0.000001710
                         0.555922197  -0.345428162   0.000018974   0.336421309   0.268844621   0.004247695   0.356675374   0.010828452

   42    2.2  1.5 -1.5   0.324176593  -0.201445205   0.000016773   0.622654522  -0.268855616  -0.004247868  -0.356688397  -0.010828847
                        -0.000670057   0.000456516  -0.000094006  -0.001263275  -0.000000213  -0.000000267   0.000068135   0.000001710

   43    3.2  1.5 -1.5  -0.067012605  -0.107865567  -0.130336496  -0.000027687  -0.008958945   0.567104210   0.014023105  -0.461940748
                        -0.073301759  -0.117957107  -0.184906430   0.000009043  -0.003880202   0.245599917  -0.001744250   0.057446181

   44    4.2  1.5 -1.5  -0.001887245  -0.003036754  -0.005276027   0.000000096  -0.000048600   0.003075967  -0.000064504   0.002124273
                         0.001724935   0.002776275   0.003718217   0.000000799   0.000112155  -0.007100461  -0.000518300   0.017072804

   45    5.2  1.5 -1.5   0.004842854   0.007796819   0.011281615  -0.000000942   0.000107480  -0.006846946  -0.000029838   0.000952390
                        -0.004428099  -0.007128034  -0.007951136  -0.000001692  -0.000249747   0.015807659  -0.000232821   0.007668496

   46    6.2  1.5 -1.5   0.024734485  -0.015367921   0.000001348   0.001575401   0.011357342   0.000179029   0.015067636   0.000457503
                        -0.000051882   0.000034204  -0.000000834  -0.000002942  -0.000000031   0.000000969  -0.000002926   0.000000391

   47    7.2  1.5 -1.5   0.000008586   0.000000501   0.000009156   0.000057997   0.000000140  -0.000009856  -0.000002482  -0.000014232
                         0.002906013  -0.001799555   0.000007412   0.028540156  -0.011357805  -0.000183723  -0.015068223  -0.000455704

   48    8.2  1.5 -1.5   0.003049914   0.004909728   0.005177160   0.000001046   0.000164643  -0.010420255   0.000453984  -0.014953613
                         0.003334621   0.005372612   0.007347756  -0.000027717   0.000082078  -0.004514744  -0.000042225   0.001860699


   Nr   State  S   Sz       17            18            19            20            21            22            23            24

    1    1.2  0.5  0.5   0.000000001  -0.000130395  -0.000000000   0.000000070   0.000000011  -0.000000140   0.000000019  -0.000000090
                         0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000

    2    2.2  0.5  0.5   0.000071687   0.000000001   0.000000645  -0.000000000   0.000000176   0.000000014   0.000000137   0.000000029
                        -0.000109152  -0.000000000   0.000000130   0.000000000   0.000000014   0.000000001   0.000000035   0.000000007

    3    3.2  0.5  0.5   0.000000001   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000
                         0.000000000  -0.000130488   0.000000000   0.000000397  -0.000000029   0.000000355  -0.000000019   0.000000092

    4    4.2  0.5  0.5  -0.000003575  -0.000000000  -0.000001164   0.000000001  -0.000001750  -0.000000145   0.000011040   0.000002278
                        -0.000002348  -0.000000000   0.000005786  -0.000000001   0.000022680   0.000001837  -0.000043780  -0.000009211

    5    5.2  0.5  0.5  -0.000003623  -0.000000000  -0.000000466   0.000000002  -0.000003792  -0.000000312   0.000018392   0.000003794
                        -0.000002379  -0.000000000   0.000002273  -0.000000001   0.000049100   0.000003976  -0.000072953  -0.000015350

    6    6.2  0.5  0.5   0.000000000   0.000000000   0.000000006   0.000000015  -0.000000002   0.000000002   0.000000016   0.000000004
                        -0.000000000   0.000002115  -0.000000006  -0.000044992   0.000002228  -0.000027516  -0.000003242   0.000015429

    7    7.2  0.5  0.5   0.000000000  -0.000000670   0.000000001   0.000005678   0.000000859  -0.000010603   0.000000423  -0.000002004
                         0.000000000  -0.000000000   0.000000000  -0.000000002   0.000000000  -0.000000002  -0.000000002  -0.000000001

    8    8.2  0.5  0.5  -0.000000462   0.000000000  -0.000006056   0.000000001   0.000034042   0.000002757   0.000089116   0.000018751
                         0.000000703   0.000000000  -0.000001216  -0.000000004   0.000002631   0.000000209   0.000022467   0.000004645

    9    1.2  0.5 -0.5   0.000108988   0.000000001  -0.000000014  -0.000000000  -0.000000011  -0.000000001  -0.000000022  -0.000000005
                         0.000071585   0.000000001   0.000000069   0.000000000   0.000000140   0.000000011   0.000000087   0.000000018

   10    2.2  0.5 -0.5  -0.000000001  -0.000000005   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000
                        -0.000000000   0.000130588  -0.000000000  -0.000000658  -0.000000014   0.000000176  -0.000000030   0.000000142

   11    3.2  0.5 -0.5   0.000071637   0.000000001   0.000000389  -0.000000000  -0.000000354  -0.000000029  -0.000000089  -0.000000019
                        -0.000109066  -0.000000000   0.000000078   0.000000000  -0.000000027  -0.000000002  -0.000000022  -0.000000005

   12    4.2  0.5 -0.5   0.000000000  -0.000004277  -0.000000001  -0.000005902  -0.000001842   0.000022748   0.000009489  -0.000045150
                         0.000000000  -0.000000000   0.000000000   0.000000000   0.000000003   0.000000003   0.000000040   0.000000016

   13    5.2  0.5 -0.5   0.000000000  -0.000004334  -0.000000001  -0.000002321  -0.000003988   0.000049246   0.000015811  -0.000075236
                         0.000000000  -0.000000000   0.000000002   0.000000009   0.000000005   0.000000003   0.000000069   0.000000022

   14    6.2  0.5 -0.5  -0.000001161  -0.000000000  -0.000044112   0.000000007   0.000027434   0.000002222  -0.000014961  -0.000003148
                         0.000001768   0.000000000  -0.000008854  -0.000000005   0.000002119   0.000000170  -0.000003771  -0.000000776

   15    7.2  0.5 -0.5   0.000000560   0.000000000  -0.000001121  -0.000000000  -0.000000816  -0.000000066  -0.000000489  -0.000000106
                         0.000000368  -0.000000000   0.000005566  -0.000000001   0.000010571   0.000000856   0.000001944   0.000000409

   16    8.2  0.5 -0.5  -0.000000000  -0.000000000  -0.000000004  -0.000000002   0.000000004  -0.000000000   0.000000074   0.000000027
                         0.000000000  -0.000000842   0.000000000   0.000006177  -0.000002765   0.000034143  -0.000019317   0.000091904

   17    1.2  1.5  1.5  -0.274402472  -0.000002594  -0.000000552   0.000000000   0.000001802   0.000000146   0.000004824   0.000001015
                         0.417808449   0.000003947  -0.000000111  -0.000000000   0.000000139   0.000000011   0.000001216   0.000000251

   18    2.2  1.5  1.5   0.417807768   0.000003947   0.000000228   0.000000000   0.000000189   0.000000015   0.000000819   0.000000169
                         0.274402024   0.000002594  -0.000001133   0.000000000  -0.000002448  -0.000000198  -0.000003250  -0.000000684

   19    3.2  1.5  1.5  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000003   0.000000001
                        -0.000000000   0.000002393   0.000000000   0.000001370   0.000000038  -0.000000471  -0.000000057   0.000000275

   20    4.2  1.5  1.5   0.000000049  -0.005111972  -0.000024367  -0.204851701   0.042210452  -0.521231381   0.006611148  -0.031539171
                        -0.000000001  -0.000000868  -0.000037715  -0.000102550  -0.000007242  -0.000024317   0.000089956   0.000049943

   21    5.2  1.5  1.5   0.000000356  -0.009303075  -0.000013567  -0.066764723  -0.002889240   0.035673028   0.005175108  -0.024880639
                         0.000000177   0.000000711   0.000016123  -0.000014870   0.000010702  -0.000046995   0.000209700   0.000066784

   22    6.2  1.5  1.5  -0.004436025  -0.000000606   0.065904971   0.000017156   0.009807588   0.000828952  -0.110714593  -0.022865667
                        -0.002913445  -0.000000028  -0.328072205   0.000053321  -0.126715826  -0.010261466   0.439142759   0.092398231

   23    7.2  1.5  1.5   0.002913554   0.000000028   0.110875583  -0.000017353  -0.003669528  -0.000295968   0.543263621   0.114305826
                        -0.004436190   0.000010008   0.022250924   0.000072105  -0.000238027  -0.000306036   0.136972817   0.028198874

   24    8.2  1.5  1.5  -0.000002759   0.000000205  -0.000105282   0.000009299   0.000017031  -0.000017498  -0.000810203  -0.000211227
                         0.000004100   0.010615080  -0.000009512   0.066676982   0.022794664  -0.281460432   0.018863111  -0.090688202

   25    1.2  1.5  0.5  -0.000000001  -0.000010943   0.000000000   0.000000000   0.000000000   0.000000000   0.000000002   0.000000001
                        -0.000002727   0.288591005  -0.000000000  -0.000000620  -0.000000081   0.000000995  -0.000000978   0.000004652

   26    2.2  1.5  0.5  -0.000002727   0.288593915   0.000000000   0.000000094  -0.000000234   0.000002889  -0.000001196   0.000005693
                         0.000000001   0.000010943  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000007  -0.000000003

   27    3.2  1.5  0.5  -0.316851508  -0.000002995  -0.000000718   0.000000000  -0.000001580  -0.000000128  -0.000001873  -0.000000394
                         0.482441751   0.000004558  -0.000000144   0.000000000  -0.000000122  -0.000000010  -0.000000472  -0.000000098

   28    4.2  1.5  0.5  -0.007776107  -0.000000074  -0.131972564  -0.000048803  -0.005846552  -0.000500691   0.018058294   0.003739288
                        -0.005107085  -0.000000045   0.657151254  -0.000106018   0.075193591   0.006090476  -0.071693995  -0.015085221

   29    5.2  1.5  0.5   0.004272458  -0.000000517   0.034410291   0.000037603   0.019039666   0.001558340   0.114674099   0.023700575
                         0.002806007   0.000000026  -0.171320307   0.000027604  -0.246488987  -0.019962030  -0.454719314  -0.095676456

   30    6.2  1.5  0.5   0.000000172   0.009193191  -0.000069605  -0.535070480   0.029723473  -0.367044087  -0.016226319   0.077302981
                         0.000000170   0.000000369  -0.000079326  -0.000164027  -0.000005840  -0.000059556  -0.000141052  -0.000024820

   31    7.2  1.5  0.5   0.000000002  -0.000000369  -0.000014178   0.000013092  -0.000297293  -0.000017334   0.000443033   0.000101294
                        -0.000000085   0.009192682  -0.000042495  -0.240361141  -0.047062425   0.580860488  -0.022744684   0.108646289

   32    8.2  1.5  0.5  -0.000001183   0.000000001  -0.021835715   0.000004206  -0.292750153  -0.023706658   0.417851094   0.087917464
                        -0.000000208  -0.000008703  -0.004360594   0.000235931  -0.022535576  -0.002404477   0.105411257   0.021637689

   33    1.2  1.5 -0.5   0.158424387   0.000001498   0.000000608  -0.000000000   0.000000992   0.000000080   0.000004511   0.000000949
                        -0.241218742  -0.000002279   0.000000122  -0.000000000   0.000000077   0.000000006   0.000001136   0.000000237

   34    2.2  1.5 -0.5   0.241221175   0.000002279   0.000000018  -0.000000000  -0.000000222  -0.000000018  -0.000001392  -0.000000285
                         0.158425985   0.000001498  -0.000000092   0.000000000   0.000002880   0.000000233   0.000005520   0.000001161

   35    3.2  1.5 -0.5  -0.000000001  -0.000021943   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000002   0.000000001
                        -0.000005454   0.577187077  -0.000000000  -0.000000732  -0.000000128   0.000001585  -0.000000406   0.000001932

   36    4.2  1.5 -0.5  -0.000000086   0.009303234   0.000094318   0.670271961   0.006110948  -0.075420543  -0.015541651   0.073933290
                        -0.000000003   0.000000354   0.000068744   0.000156284  -0.000029838   0.000034350  -0.000057334  -0.000005791

   37    5.2  1.5 -0.5  -0.000000418  -0.005111513  -0.000019651  -0.174741850  -0.020022755   0.247223245  -0.098567531   0.468956045
                        -0.000000305  -0.000000194  -0.000042307  -0.000035987   0.000015325   0.000012709  -0.000378637  -0.000171845

   38    6.2  1.5 -0.5   0.007684138  -0.000000237  -0.105313701  -0.000064049   0.028226990   0.002296472  -0.018899539  -0.003825282
                         0.005046660   0.000000048   0.524604102  -0.000083877  -0.365957112  -0.029634626   0.074957048   0.015769610

   39    7.2  1.5 -0.5   0.005046381   0.000000045   0.235647565  -0.000038864   0.579134368   0.046899553   0.105332957   0.022164405
                        -0.007683713  -0.000000072   0.047367785  -0.000022277   0.044746910   0.003923289   0.026626965   0.005124066

   40    8.2  1.5 -0.5  -0.000004777   0.000001103  -0.000230473   0.000029278  -0.000570366  -0.000092323  -0.000484527  -0.000191688
                         0.000007275   0.000000475  -0.000050631  -0.022266839  -0.023821459   0.293616236   0.090539689  -0.430942031

   41    1.2  1.5 -1.5   0.000000001   0.000019052  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000004   0.000000001
                         0.000004723  -0.499860597   0.000000000   0.000000563  -0.000000146   0.000001807  -0.000001046   0.000004975

   42    2.2  1.5 -1.5  -0.000004723   0.499859782   0.000000000   0.000001155   0.000000199  -0.000002456   0.000000705  -0.000003352
                         0.000000001   0.000019052   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000003   0.000000001

   43    3.2  1.5 -1.5  -0.000001314  -0.000000000   0.000001343  -0.000000000   0.000000469   0.000000038  -0.000000266  -0.000000056
                         0.000002000  -0.000000000   0.000000270   0.000000000   0.000000037   0.000000003  -0.000000068  -0.000000011

   44    4.2  1.5 -1.5   0.004273211   0.000000040   0.040280370   0.000032172  -0.040144612  -0.003260182  -0.007749519  -0.001527045
                         0.002805695   0.000000028  -0.200852482   0.000031325   0.519683140   0.042084362   0.030572326   0.006432998

   45    5.2  1.5 -1.5   0.007775390   0.000000395   0.013146252  -0.000018481   0.002796013   0.000233331  -0.006139997  -0.001060280
                         0.005107888   0.000000048  -0.065457657   0.000010123  -0.035563315  -0.002879823   0.024111231   0.005069664

   46    6.2  1.5 -1.5   0.000000522  -0.005307210   0.000048893   0.334626405   0.010294834  -0.127094804  -0.095184670   0.452884167
                         0.000000309  -0.000000191   0.000027330   0.000058623  -0.000035684   0.000013030  -0.000387811  -0.000135599

   47    7.2  1.5 -1.5  -0.000005518  -0.000000191   0.000074111   0.000041752   0.000282318   0.000045472   0.000565326   0.000175280
                         0.000008350   0.005307408  -0.000002800  -0.113086238   0.000318676  -0.003676952  -0.117731384   0.560265012

   48    8.2  1.5 -1.5  -0.005827743  -0.000000055   0.065366869  -0.000011427   0.280622032   0.022725562   0.087891607   0.018489974
                         0.008872279  -0.000004941   0.013152667   0.000105091   0.021708276   0.001773658   0.022348647   0.003820225


   Nr   State  S   Sz       25            26            27            28            29            30            31            32

    1    1.2  0.5  0.5  -0.000000252   0.000000002  -0.000000022  -0.000000000  -0.000000011   0.000000108   0.000000029  -0.000000081
                         0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000

    2    2.2  0.5  0.5  -0.000000000  -0.000000010  -0.000000000  -0.000000002  -0.000000058  -0.000000006  -0.000000274  -0.000000099
                         0.000000000   0.000000033  -0.000000000   0.000000020   0.000000019   0.000000002   0.000000123   0.000000044

    3    3.2  0.5  0.5   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000
                        -0.000000177   0.000000002   0.000000018  -0.000000000   0.000000008  -0.000000084   0.000000091  -0.000000250

    4    4.2  0.5  0.5  -0.000000012  -0.000002997  -0.000001677  -0.008627097  -0.018823235  -0.001852303  -0.004686722  -0.001695156
                        -0.000000009  -0.000000923  -0.000000289  -0.000717462  -0.057516891  -0.005661483  -0.010459285  -0.003785155

    5    5.2  0.5  0.5  -0.000000083  -0.000011771  -0.000000995  -0.006648582  -0.003515587  -0.000345261   0.023496271   0.008504526
                        -0.000000034  -0.000003623  -0.000000220  -0.000554551  -0.010741267  -0.001057296   0.052444038   0.018979602

    6    6.2  0.5  0.5  -0.000000002   0.000000003  -0.000042110  -0.000000545  -0.000001020  -0.000000250   0.000000696  -0.000000569
                        -0.000023308   0.000000209   0.048505234  -0.000008823  -0.002254337   0.022905035   0.010980269  -0.030340982

    7    7.2  0.5  0.5  -0.000012373   0.000000115  -0.050595875   0.000006987   0.000181367  -0.001843698   0.012530683  -0.034623875
                        -0.000000000  -0.000000000  -0.000043175  -0.000000718  -0.000000124  -0.000001312   0.000000124   0.000001208

    8    8.2  0.5  0.5  -0.000000062  -0.000006724  -0.000001033  -0.003232267   0.044119627   0.004342752  -0.013293882  -0.004811064
                         0.000000233   0.000021882   0.000006691   0.038726691  -0.014437230  -0.001418744   0.005956585   0.002155076

    9    1.2  0.5 -0.5  -0.000000002  -0.000000241   0.000000000  -0.000000022   0.000000034   0.000000003   0.000000033   0.000000012
                        -0.000000001  -0.000000074  -0.000000000  -0.000000002   0.000000103   0.000000010   0.000000074   0.000000027

   10    2.2  0.5 -0.5  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000
                         0.000000034  -0.000000000   0.000000020   0.000000000  -0.000000006   0.000000061   0.000000109  -0.000000300

   11    3.2  0.5 -0.5  -0.000000000  -0.000000052  -0.000000000   0.000000001  -0.000000080  -0.000000008   0.000000228   0.000000083
                         0.000000002   0.000000169  -0.000000000  -0.000000018   0.000000026   0.000000003  -0.000000102  -0.000000037

   12    4.2  0.5 -0.5   0.000003136  -0.000000014   0.008656874  -0.000001696  -0.005956796   0.060518649   0.004147403  -0.011461326
                        -0.000000002   0.000000005   0.000009640   0.000000147   0.000000882  -0.000004147  -0.000000799  -0.000000167

   13    5.2  0.5 -0.5   0.000012316  -0.000000089   0.006671666  -0.000001010  -0.001112241   0.011301954  -0.020797891   0.057466963
                        -0.000000004   0.000000008   0.000005805   0.000000136   0.000000793  -0.000000440  -0.000000229  -0.000002341

   14    6.2  0.5 -0.5  -0.000000064  -0.000006851   0.000001284   0.004031860   0.021768366   0.002142790   0.027688743   0.010020635
                         0.000000199   0.000022278  -0.000008746  -0.048337394  -0.007125927  -0.000700348  -0.012405995  -0.004489228

   15    7.2  0.5 -0.5  -0.000000110  -0.000011827  -0.000006902  -0.050420738  -0.000574815  -0.000056305   0.014156699   0.005123946
                        -0.000000034  -0.000003636  -0.000001302  -0.004206386  -0.001751802  -0.000172406   0.031597477   0.011435174

   16    8.2  0.5 -0.5  -0.000000003   0.000000009  -0.000031702  -0.000000467   0.000002674  -0.000004660   0.000000583  -0.000000059
                         0.000022892  -0.000000241   0.038861333  -0.000006754   0.004568624  -0.046421709   0.005271688  -0.014567367

   17    1.2  1.5  1.5  -0.000000003  -0.000000364  -0.000000218  -0.000648796   0.025960870   0.002555355  -0.016778664  -0.006072217
                         0.000000013   0.000001186   0.000000687   0.007765822  -0.008495582  -0.000835529   0.007517011   0.002721087

   18    2.2  1.5  1.5   0.000000012   0.000001153  -0.000000642  -0.008370060   0.010382364   0.001021405   0.000147237   0.000052874
                         0.000000003   0.000000354  -0.000000231  -0.000699417   0.031726091   0.003122834   0.000327951   0.000118684

   19    3.2  1.5  1.5   0.000000000   0.000000000  -0.000024809  -0.000000393   0.000000372  -0.000000435   0.000000103   0.000000125
                        -0.000009464   0.000000088   0.028578646  -0.000004123  -0.000703116   0.007142267  -0.000446079   0.001232388

   20    4.2  1.5  1.5   0.149278207  -0.001375896   0.610441253  -0.000087176  -0.010889366   0.110610723  -0.055157865   0.152404757
                        -0.000028733   0.000006535   0.000528973   0.000008413  -0.000006553   0.000006467  -0.000008015   0.000009103

   21    5.2  1.5  1.5   0.674425149  -0.006234606  -0.325616014   0.000042522   0.015522681  -0.157625489  -0.077904259   0.215222758
                         0.000060405   0.000021567  -0.000286234  -0.000004873   0.000021940   0.000009881  -0.000017721  -0.000044053

   22    6.2  1.5  1.5  -0.000297116  -0.019319451  -0.000009524   0.099908811  -0.092342106  -0.009086979   0.212159192   0.076808446
                        -0.000052842  -0.005921175   0.000002851   0.008344665  -0.282184627  -0.027775690   0.473561188   0.171382295

   23    7.2  1.5  1.5  -0.000128102  -0.013987972   0.000003254   0.010501311  -0.524157298  -0.051593432  -0.243593447  -0.088156735
                         0.001233871   0.045579399  -0.000016546  -0.125652463   0.171524841   0.016959132   0.109229570   0.039247627

   24    8.2  1.5  1.5  -0.000056178  -0.000013645   0.000075762  -0.000009716   0.000495564   0.000077100   0.000235262   0.000061453
                         0.649214004  -0.006025318  -0.008620500   0.000118379  -0.008517398   0.084858303   0.094726317  -0.262065219

   25    1.2  1.5  0.5  -0.000000000   0.000000000  -0.000021762  -0.000000355   0.000000226  -0.000000715   0.000000069   0.000000736
                         0.000008011  -0.000000076   0.025286065  -0.000003534  -0.000090596   0.000920023  -0.006262485   0.017303977

   26    2.2  1.5  0.5  -0.000005612   0.000000050  -0.024208582   0.000003606   0.001126652  -0.011444815  -0.005487257   0.015162243
                         0.000000000  -0.000000001  -0.000021209  -0.000000326   0.000000418  -0.000000040   0.000000109  -0.000000519

   27    3.2  1.5  0.5   0.000000002   0.000000215  -0.000000022  -0.000088826   0.009994655   0.000983788   0.029628791   0.010722688
                        -0.000000007  -0.000000699  -0.000000076   0.001060315  -0.003270946  -0.000322236  -0.013274534  -0.004804521

   28    4.2  1.5  0.5   0.000243137   0.023640156   0.000036306   0.291568266  -0.079260059  -0.007796097  -0.069160989  -0.025029721
                         0.000067218   0.007276415   0.000007688   0.024352663  -0.242099427  -0.023830258  -0.154389401  -0.055873592

   29    5.2  1.5  0.5   0.001328953   0.124858151   0.000073571   0.512816380  -0.089305043  -0.008766437   0.096561077   0.034927058
                         0.000356527   0.038360122   0.000013517   0.042755983  -0.273138640  -0.026885477   0.215553744   0.078008965

   30    6.2  1.5  0.5  -0.170156152   0.001552722  -0.102876541   0.000048556   0.014892093  -0.151336029  -0.135040400   0.373155023
                         0.000020125  -0.000012070  -0.000093492   0.000001354  -0.000012781   0.000004259   0.000013632  -0.000008540

   31    7.2  1.5  0.5   0.000007227   0.000022963  -0.000106187   0.000024005   0.000543632   0.000044308  -0.000142599  -0.000037399
                         0.217773335  -0.002110437   0.127713848  -0.000327695   0.009045025  -0.093712320  -0.138590070   0.383143578

   32    8.2  1.5  0.5   0.000188034   0.019871309   0.000008377   0.027427442   0.574987535   0.056596436  -0.150914328  -0.054616217
                        -0.000649885  -0.064594178  -0.000175958  -0.329443694  -0.188176509  -0.018428344   0.067701161   0.024102318

   33    1.2  1.5 -0.5  -0.000000022  -0.000002354  -0.000000651  -0.002102022  -0.000874147  -0.000086031   0.015791528   0.005714977
                         0.000000072   0.000007658   0.000003492   0.025198553   0.000286896   0.000028399  -0.007074974  -0.002560811

   34    2.2  1.5 -0.5   0.000000048   0.000005364   0.000003566   0.024124830   0.003560486   0.000350896   0.006199412   0.002243656
                         0.000000015   0.000001649   0.000000628   0.002012078   0.010876890   0.001070615   0.013836940   0.005007594

   35    3.2  1.5 -0.5  -0.000000000   0.000000000   0.000000541   0.000000029   0.000000193   0.000000673   0.000000039  -0.000001252
                         0.000000731  -0.000000007  -0.001064029  -0.000000073  -0.001035218   0.010516283   0.011749871  -0.032466575

   36    4.2  1.5 -0.5   0.024734652  -0.000252155   0.292583419  -0.000036823   0.025073099  -0.254743575  -0.061223731   0.169172484
                        -0.000008681  -0.000007194   0.000221396   0.000004611  -0.000004284  -0.000010599   0.000005302  -0.000015480

   37    5.2  1.5 -0.5   0.130617974  -0.001375046   0.514595470  -0.000074446   0.028278582  -0.287367529   0.085471033  -0.236193686
                         0.000022055  -0.000049719   0.000465118   0.000007290  -0.000032564   0.000099077  -0.000024429   0.000021040

   38    6.2  1.5 -0.5   0.001480628   0.162638463   0.000048498   0.102520913   0.047076152   0.004620740   0.152576369   0.055205968
                         0.000467793   0.050018470   0.000002729   0.008547156   0.143827778   0.014157096   0.340536522   0.123240460

   39    7.2  1.5 -0.5  -0.000598188  -0.063998117  -0.000003602  -0.010620524   0.089048356   0.008765316   0.349633072   0.126532545
                         0.002024016   0.208157313   0.000328553   0.127271532  -0.029195740  -0.002297225  -0.156702641  -0.056539746

   40    8.2  1.5 -0.5   0.000013505   0.000011229  -0.000338534   0.000006431  -0.000093092   0.000038111  -0.000337485  -0.000073282
                         0.067581634  -0.000676448   0.330583267  -0.000176040  -0.059521019   0.604996746  -0.059697060   0.165404282

   41    1.2  1.5 -1.5  -0.000000000   0.000000001  -0.000005727  -0.000000160   0.000000895  -0.000002336  -0.000000257  -0.000000986
                         0.000001240  -0.000000013   0.007792875  -0.000000703   0.002688484  -0.027315594   0.006654031  -0.018385566

   42    2.2  1.5 -1.5  -0.000001206   0.000000012   0.008399229  -0.000000660   0.003285629  -0.033381707  -0.000129929   0.000359486
                        -0.000000000   0.000000000   0.000006033   0.000000176  -0.000000784   0.000002723   0.000000279   0.000000265

   43    3.2  1.5 -1.5  -0.000000026  -0.000002781   0.000000738   0.002375521   0.006787719   0.000668110  -0.001124701  -0.000407040
                         0.000000084   0.000009046  -0.000004075  -0.028479757  -0.002222352  -0.000219091   0.000503813   0.000182497

   44    4.2  1.5 -1.5   0.001313235   0.142679677   0.000086161   0.608328887   0.034416820   0.003393878  -0.062327051  -0.022561524
                         0.000410544   0.043891840   0.000015705   0.050742178   0.105119999   0.010346977  -0.139077492  -0.050332572

   45    5.2  1.5 -1.5   0.005953033   0.644669486  -0.000041962  -0.324489597  -0.049027441  -0.004849913  -0.087965004  -0.031871447
                         0.001852611   0.198117487  -0.000008427  -0.027062371  -0.149806891  -0.014745591  -0.196425547  -0.071086460

   46    6.2  1.5 -1.5   0.020206458  -0.000299526  -0.100256663  -0.000009251  -0.029224341   0.296909460  -0.187806891   0.518913982
                         0.000017118  -0.000036798  -0.000075884  -0.000003641   0.000004870  -0.000026899  -0.000014977  -0.000028741

   47    7.2  1.5 -1.5  -0.000022742   0.000240121   0.000088996   0.000001853   0.000067021   0.000050354   0.000231025   0.000074431
                         0.047677499  -0.001217041  -0.126090489   0.000016761  -0.054309207   0.551508514   0.096498356  -0.266962284

   48    8.2  1.5 -1.5   0.001783541   0.190713404  -0.000000261  -0.000648518   0.080671461   0.007940581   0.239129801   0.086541343
                        -0.005755313  -0.620570079   0.000118776   0.008596406  -0.026325898  -0.003120711  -0.107215303  -0.038519169


   Nr   State  S   Sz       33            34            35            36            37            38            39            40

    1    1.2  0.5  0.5  -0.000371889  -0.000004045   0.000114045   0.000001551  -0.000000109   0.000368054  -0.000000014  -0.000000007
                         0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000

    2    2.2  0.5  0.5   0.000000748  -0.000068841  -0.000005145   0.000377966   0.000154866   0.000000046   0.000000022  -0.000000041
                        -0.000000583   0.000053556  -0.000000398   0.000029638   0.000333891   0.000000096  -0.000000048   0.000000089

    3    3.2  0.5  0.5  -0.000000008  -0.000000002  -0.000000028  -0.000000005   0.000000001   0.000000000   0.000000000  -0.000000000
                         0.000284693   0.000003099   0.000265103   0.000003609  -0.000000106   0.000368009  -0.000000052  -0.000000027

    4    4.2  0.5  0.5  -0.000235664   0.021654555  -0.000010294   0.000729640   0.000000546   0.000000001  -0.243403529   0.456218006
                        -0.000302716   0.027832877   0.000126480  -0.009301732  -0.000000252  -0.000000000  -0.112758781   0.211261116

    5    5.2  0.5  0.5  -0.000062667   0.005740019   0.000036678  -0.002750975  -0.000000809   0.000000000   0.195140917  -0.365845471
                        -0.000080315   0.007377778  -0.000477622   0.035083314   0.000000374  -0.000000000   0.090422231  -0.169417922

    6    6.2  0.5  0.5  -0.000000932  -0.000001181  -0.000003073  -0.000000765  -0.000000000  -0.000000002  -0.000097671   0.000009262
                        -0.024853544  -0.000269279   0.026717488   0.000363596  -0.000000006   0.000017958   0.591207164   0.315415308

    7    7.2  0.5  0.5   0.010683198   0.000116636   0.034863689   0.000474545  -0.000000002   0.000005351   0.091203292   0.048654166
                        -0.000000217   0.000000389   0.000004193   0.000000737  -0.000000000   0.000000002   0.000014336  -0.000002982

    8    8.2  0.5  0.5  -0.000305440   0.028075099  -0.000111259   0.008166822   0.000004877   0.000000002   0.001455723  -0.002726662
                         0.000236691  -0.021843086  -0.000007239   0.000640447   0.000010515   0.000000003  -0.003141924   0.005892207

    9    1.2  0.5 -0.5  -0.000002484   0.000228370  -0.000000121   0.000008928  -0.000333893  -0.000000099  -0.000000007   0.000000012
                        -0.000003193   0.000293511   0.000001547  -0.000113695   0.000154852   0.000000046  -0.000000003   0.000000006

   10    2.2  0.5 -0.5  -0.000000005   0.000000000  -0.000000042  -0.000000006  -0.000000001   0.000000014   0.000000000  -0.000000000
                        -0.000087220  -0.000000948   0.000379127   0.000005160   0.000000106  -0.000368058  -0.000000098  -0.000000053

   11    3.2  0.5 -0.5   0.000002445  -0.000224686   0.000003598  -0.000264291   0.000154833   0.000000046  -0.000000012   0.000000022
                        -0.000001904   0.000174831   0.000000278  -0.000020726   0.000333852   0.000000096   0.000000025  -0.000000047

   12    4.2  0.5 -0.5   0.035264554   0.000383633  -0.009330305  -0.000126897  -0.000000001   0.000000601   0.502758512   0.268253277
                        -0.000000968   0.000000104  -0.000000781   0.000000361   0.000000000  -0.000000001   0.000083052   0.000002772

   13    5.2  0.5 -0.5   0.009347696   0.000101871   0.035191004   0.000479028  -0.000000000  -0.000000891  -0.403169117  -0.215072446
                        -0.000000292   0.000000139   0.000003947   0.000000825   0.000000000   0.000000001  -0.000061460   0.000017305

   14    6.2  0.5 -0.5  -0.000213252   0.019616044   0.000362540  -0.026635734   0.000007557   0.000000002   0.132594441  -0.248427582
                         0.000164427  -0.015261372   0.000027701  -0.002088502   0.000016291   0.000000005  -0.286191423   0.536478944

   15    7.2  0.5 -0.5   0.000071931  -0.006560185  -0.000036414   0.002725106  -0.000004853  -0.000000001   0.044145603  -0.082760269
                         0.000091815  -0.008431767   0.000473146  -0.034757023   0.000002253   0.000000001   0.020454671  -0.038324647

   16    8.2  0.5 -0.5   0.000000916   0.000000759  -0.000000854  -0.000001493  -0.000000000   0.000000001   0.000002747  -0.000000145
                         0.035571500   0.000386414   0.008191895   0.000111484   0.000000003  -0.000011591  -0.006492518  -0.003462775

   17    1.2  1.5  1.5  -0.000035993   0.003312921   0.000247461  -0.018180164  -0.004992974  -0.000001474   0.000155371  -0.000291124
                         0.000027934  -0.002577354   0.000019062  -0.001425582  -0.010764808  -0.000003178  -0.000334705   0.000628584

   18    2.2  1.5  1.5   0.000027950  -0.002578814   0.000019059  -0.001425370  -0.010764927  -0.000003178  -0.002594315   0.004862160
                         0.000036014  -0.003314798  -0.000247424   0.018177459   0.004993029   0.000001474  -0.001201721   0.002251525

   19    3.2  1.5  1.5  -0.000000795   0.000000045   0.000001047   0.000000355   0.000000000  -0.000000000   0.000000761  -0.000000016
                        -0.031589126  -0.000343712  -0.007261426  -0.000098898  -0.000000002   0.000006979  -0.004437701  -0.002367646

   20    4.2  1.5  1.5  -0.332832733  -0.003622684  -0.296953655  -0.004042553   0.000063521  -0.215272191  -0.011338957  -0.006049959
                         0.000013093  -0.000001137  -0.000063332  -0.000008906  -0.000000052  -0.000036540  -0.000000930   0.000000480

   21    5.2  1.5  1.5   0.296967244   0.003232641  -0.332776186  -0.004526566   0.000127975  -0.391850340   0.026729609   0.014259119
                        -0.000020513   0.000003802   0.000008775  -0.000031005  -0.000005680   0.000029931   0.000002843  -0.000001895

   22    6.2  1.5  1.5   0.000683506  -0.061404471   0.000434297  -0.033987537  -0.202787476  -0.000083604  -0.009656268   0.018108947
                         0.000857540  -0.078929681  -0.005899564   0.433420422   0.094057116   0.000027753  -0.004475667   0.008385678

   23    7.2  1.5  1.5  -0.000857628   0.078945893   0.005899101  -0.433385546  -0.094059263  -0.000027733   0.007586530  -0.014214059
                         0.000571005  -0.061418305   0.000865952  -0.033978926  -0.202792237   0.000363433  -0.016392857   0.030685746

   24    8.2  1.5  1.5  -0.000055971  -0.000076641  -0.000039097   0.000401733   0.000089049   0.000008664  -0.000007747   0.000011208
                        -0.099967783  -0.001026962   0.434657238   0.005947943   0.000060018   0.447087673  -0.017938388  -0.009607409

   25    1.2  1.5  0.5   0.000000743   0.000000039   0.000001720   0.000000220  -0.000000000   0.000000260  -0.000000168   0.000000114
                         0.023083789   0.000251042  -0.016859845  -0.000229425   0.000002024  -0.006857412   0.001401417   0.000747526

   26    2.2  1.5  0.5  -0.013389553  -0.000145814  -0.025242937  -0.000343600   0.000002022  -0.006849382   0.009082393   0.004845555
                         0.000000171  -0.000000091  -0.000002929  -0.000000631   0.000000000  -0.000000260   0.000001486  -0.000000142

   27    3.2  1.5  0.5   0.000020772  -0.001911932  -0.000142929   0.010500534  -0.005766535  -0.000001703  -0.002351127   0.004405076
                        -0.000016121   0.001487426  -0.000011010   0.000823392  -0.012432601  -0.000003670   0.005074450  -0.009512572

   28    4.2  1.5  0.5   0.001981924  -0.182334954   0.000349110  -0.026009899  -0.355438175  -0.000104926   0.005943208  -0.011139739
                         0.002549029  -0.234406078  -0.004515240   0.331758989   0.164860638   0.000048800   0.002752471  -0.005157003

   29    5.2  1.5  0.5   0.002199215  -0.204379561  -0.000313862   0.023199071   0.195336445   0.000034202  -0.007246335   0.013582228
                         0.002857715  -0.262616432   0.004030335  -0.296019618  -0.090601666  -0.000026791  -0.003355803   0.006287453

   30    6.2  1.5  0.5   0.434746264   0.004717976   0.100046938   0.001364013  -0.000102463   0.387171179   0.029645878   0.015817169
                        -0.000011687  -0.000015316   0.000014449  -0.000013045  -0.000005500   0.000015533   0.000004577  -0.000000236

   31    7.2  1.5  0.5  -0.000008323  -0.000324169   0.000015480  -0.000089488   0.000000100  -0.000015538  -0.000008432   0.000009813
                        -0.434686106  -0.004476883  -0.099958020  -0.001368883  -0.000114369   0.387216335   0.022114907   0.011772511

   32    8.2  1.5  0.5   0.003732425  -0.343070386   0.001358192  -0.099696780  -0.000049863   0.000000016  -0.005201470   0.009745371
                        -0.002493481   0.266940006   0.000195687  -0.007761956   0.000002983  -0.000366606   0.011211254  -0.021062094

   33    1.2  1.5 -0.5  -0.000198157   0.018219162   0.000228738  -0.016808238   0.002885368   0.000000852  -0.000314329   0.000588938
                         0.000154129  -0.014174747   0.000017741  -0.001318150   0.006220832   0.000001836   0.000678228  -0.001271660

   34    2.2  1.5 -0.5   0.000089613  -0.008222145  -0.000026270   0.001973210  -0.006213547  -0.000001834  -0.004396605   0.008241627
                         0.000115027  -0.010567708   0.000342594  -0.025165698   0.002881989   0.000000851  -0.002036976   0.003816470

   35    3.2  1.5 -0.5   0.000000143   0.000000033   0.000001164   0.000000213  -0.000000000   0.000000521   0.000001656  -0.000000255
                         0.002422380   0.000026294  -0.010532767  -0.000143352   0.000004046  -0.013704835  -0.010483021  -0.005592660

   36    4.2  1.5 -0.5   0.296971789   0.003228865  -0.332777012  -0.004528713  -0.000115719   0.391810319   0.012275523   0.006549643
                        -0.000038009  -0.000001094  -0.000041509  -0.000005435  -0.000000125   0.000014899   0.000003372   0.000000768

   37    5.2  1.5 -0.5   0.332773788   0.003605928   0.296927279   0.004042537   0.000042300  -0.215325309  -0.014966929  -0.007985661
                         0.000037066  -0.000019157   0.000045873   0.000002614   0.000009914  -0.000008187  -0.000004357  -0.000001102

   38    6.2  1.5 -0.5  -0.002885134   0.266960518   0.000119786  -0.007817719   0.351229350   0.000090639  -0.014351771   0.026901416
                        -0.003733032   0.343127376  -0.001358806   0.099741031  -0.162909380  -0.000048098  -0.006649022   0.012457606

   39    7.2  1.5 -0.5   0.003732412  -0.343077831   0.001357677  -0.099652467  -0.162928383  -0.000048209  -0.004957525   0.009288435
                        -0.002493324   0.266926231   0.000196376  -0.007809730  -0.351270312  -0.000103712   0.010677784  -0.020069732

   40    8.2  1.5 -0.5  -0.000007120   0.000324053  -0.000066577   0.000088761   0.000154258   0.000046490   0.000010970  -0.000006913
                         0.434688690   0.004476989   0.099998457   0.001369343   0.000332573  -0.000018273  -0.023207412  -0.012359104

   41    1.2  1.5 -1.5   0.000000247   0.000000056   0.000002018   0.000000369   0.000000000  -0.000000452   0.000000073  -0.000000283
                         0.004197404   0.000045561  -0.018235971  -0.000248194  -0.000003503   0.011866376  -0.000692727  -0.000369009

   42    2.2  1.5 -1.5  -0.004199782  -0.000045587   0.018233258   0.000248157   0.000003503  -0.011866507   0.005358168   0.002859126
                         0.000000247   0.000000056   0.000002017   0.000000369   0.000000000  -0.000000452   0.000000883   0.000000137

   43    3.2  1.5 -1.5  -0.000271245   0.024931967  -0.000098622   0.007239223   0.000002936   0.000000001  -0.000995264   0.001864714
                         0.000211103  -0.019397677  -0.000007388   0.000567414   0.000006331   0.000000002   0.002148301  -0.004026914

   44    4.2  1.5 -1.5  -0.002225522   0.204376170   0.000307591  -0.023183730   0.195276329   0.000057648  -0.005489291   0.010288910
                        -0.002858478   0.262693757  -0.004030843   0.296047280  -0.090605039  -0.000026678  -0.002543559   0.004765530

   45    5.2  1.5 -1.5   0.001988107  -0.182345972   0.000323450  -0.026059965   0.355493342   0.000118487   0.012937361  -0.024254580
                         0.002549003  -0.234391747  -0.004515101   0.331754229  -0.164836808  -0.000048690   0.005995595  -0.011233314

   46    6.2  1.5 -1.5  -0.100002018  -0.001096536   0.434750978   0.005915457   0.000087521  -0.223538590   0.019956291   0.010643078
                         0.000006261  -0.000012852   0.000046869   0.000028880  -0.000009998  -0.000008033   0.000003334  -0.000001993

   47    7.2  1.5 -1.5   0.000005298   0.000075992   0.000052722  -0.000401486   0.000178067  -0.000007977   0.000001599   0.000007084
                         0.100023309   0.001027520  -0.434715535  -0.005948788   0.000318032   0.223543813  -0.033817961  -0.018063254

   48    8.2  1.5 -1.5  -0.000857586   0.078933187   0.005898239  -0.433326361   0.188096212   0.000055532  -0.004028342   0.007547500
                         0.000570150  -0.061344215   0.000866132  -0.033987946   0.405594875  -0.000091913   0.008722092  -0.016273324


   Nr   State  S   Sz       41            42            43            44            45            46            47            48

    1    1.2  0.5  0.5  -0.000000060   0.000000005   0.000000084  -0.000000005  -0.000079020   0.000146058   0.000013390  -0.000116432
                         0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000

    2    2.2  0.5  0.5   0.000000007   0.000000077   0.000000002   0.000000040  -0.000006639  -0.000003592  -0.000015428  -0.000001775
                        -0.000000007  -0.000000080  -0.000000002  -0.000000027  -0.000162144  -0.000087730   0.000083281   0.000009569

    3    3.2  0.5  0.5   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000003   0.000000005  -0.000000003   0.000000007
                         0.000000131  -0.000000012  -0.000000047   0.000000003  -0.000008802   0.000016255  -0.000023113   0.000201046

    4    4.2  0.5  0.5   0.029575555   0.334610573  -0.007697235  -0.129531942  -0.440724647  -0.238443767  -0.374315528  -0.043052752
                         0.028518186   0.322706853  -0.011403330  -0.191789547   0.018042990   0.009760323  -0.069350055  -0.007975635

    5    5.2  0.5  0.5   0.038879239   0.439358798   0.003655600   0.061415356   0.336812183   0.182244014  -0.489726755  -0.056294122
                         0.037448455   0.423745963   0.005406174   0.090934207  -0.013792566  -0.007463553  -0.090733670  -0.010435527

    6    6.2  0.5  0.5  -0.000001315   0.000000330   0.000003823   0.000004555   0.000002407  -0.000006495   0.000001229  -0.000009628
                         0.087175467  -0.007701192   0.372632494  -0.022158409  -0.299200332   0.552987340   0.006538974  -0.056944591

    7    7.2  0.5  0.5  -0.459576309   0.040641752  -0.608871999   0.036220447  -0.173374072   0.320407001  -0.058938877   0.512686620
                         0.000035923   0.000022567   0.000000422   0.000029341  -0.000003898   0.000008353   0.000008361  -0.000029313

    8    8.2  0.5  0.5  -0.025887468  -0.292933216   0.031723931   0.533582257   0.009534017   0.005157839  -0.103787306  -0.011936540
                         0.026862892   0.303730660  -0.021445824  -0.360379009   0.232828507   0.125983147   0.560176007   0.064407678

    9    1.2  0.5 -0.5   0.000000004   0.000000043  -0.000000003  -0.000000047  -0.000145936  -0.000078954  -0.000114485  -0.000013167
                         0.000000004   0.000000042  -0.000000004  -0.000000069   0.000005974   0.000003232  -0.000021203  -0.000002439

   10    2.2  0.5 -0.5   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000001  -0.000000001  -0.000000002   0.000000004
                         0.000000111  -0.000000010   0.000000049  -0.000000003  -0.000087803   0.000162280  -0.000009732   0.000084698

   11    3.2  0.5 -0.5  -0.000000008  -0.000000091   0.000000002   0.000000039   0.000000660   0.000000357   0.000036620   0.000004212
                         0.000000008   0.000000094  -0.000000002  -0.000000026   0.000016242   0.000008795  -0.000197683  -0.000022727

   12    4.2  0.5 -0.5   0.464869818  -0.041085282  -0.231434125   0.013758028   0.238643445  -0.441093827  -0.043785274   0.380685623
                        -0.000030088  -0.000001100   0.000002734  -0.000003819   0.000000044  -0.000002694   0.000001964  -0.000024082

   13    5.2  0.5 -0.5   0.610407071  -0.053981303   0.109730925  -0.006526110  -0.182396780   0.337094469  -0.057253195   0.498061134
                        -0.000051952  -0.000030813  -0.000001561  -0.000003525  -0.000003709   0.000005743   0.000009346  -0.000032674

   14    6.2  0.5 -0.5  -0.005345476  -0.060511118  -0.018359985  -0.308800364   0.022623120   0.012239401  -0.010379604  -0.001192016
                         0.005543848   0.062753220   0.012405887   0.208560089   0.552524381   0.298949889   0.055990628   0.006429407

   15    7.2  0.5 -0.5   0.029271186   0.330796049   0.020296982   0.340786697  -0.320138570  -0.173228848   0.504108291   0.057951797
                         0.028194861   0.319036612   0.029999236   0.504568666   0.013112673   0.007094722   0.093393801   0.010741536

   16    8.2  0.5 -0.5  -0.000032875  -0.000011823   0.000003369   0.000016064  -0.000000938   0.000003586  -0.000007706   0.000038570
                        -0.421974148   0.037306512   0.643881243  -0.038292700   0.126088685  -0.233023628  -0.065504426   0.569709542

   17    1.2  1.5  1.5   0.000709441   0.008027725  -0.000296781  -0.004991768  -0.000109544  -0.000059268  -0.000252345  -0.000029024
                        -0.000736183  -0.008323525   0.000200729   0.003371369  -0.002675562  -0.001447633   0.001362133   0.000156527

   18    2.2  1.5  1.5   0.000525694   0.005946974  -0.000270564  -0.004545191  -0.002671642  -0.001445512   0.001376483   0.000158177
                         0.000506862   0.005735512  -0.000400110  -0.006729681   0.000109383   0.000059181   0.000255004   0.000029330

   19    3.2  1.5  1.5  -0.000000258  -0.000000060   0.000000014  -0.000000518   0.000000000  -0.000000004  -0.000000063   0.000000322
                        -0.004852151   0.000428889  -0.008710401   0.000518227   0.001158611  -0.002141723  -0.000602695   0.005241611

   20    4.2  1.5  1.5  -0.026547591   0.002346977  -0.042185930   0.002509787  -0.000848230   0.001566412  -0.002925455   0.025445482
                         0.000001057   0.000000737  -0.000000498   0.000002403  -0.000000752   0.000001399   0.000000295  -0.000000822

   21    5.2  1.5  1.5   0.003407189  -0.000298499   0.016092859  -0.000957997  -0.012197919   0.022548272   0.000203705  -0.001771835
                         0.000001453   0.000002356   0.000000560  -0.000001798   0.000000989  -0.000001929   0.000000100  -0.000000869

   22    6.2  1.5  1.5  -0.002803497  -0.031689836   0.000388691   0.006509250  -0.020434162  -0.011054290   0.010453811   0.001201175
                        -0.002701075  -0.030563939   0.000573014   0.009638061   0.000836546   0.000452607   0.001936668   0.000222752

   23    7.2  1.5  1.5  -0.000899462  -0.010178476   0.001491865   0.025092277  -0.000837647  -0.000453201  -0.001947980  -0.000224060
                         0.000941035   0.010553570  -0.001002838  -0.016947705  -0.020449790  -0.011089608   0.010516024   0.001198173

   24    8.2  1.5  1.5  -0.000000097   0.000010659  -0.000005776  -0.000023385   0.000001876  -0.000001549   0.000001900   0.000001471
                         0.009794334  -0.000876639   0.006212463  -0.000353338   0.011113319  -0.020493714   0.001219358  -0.010698532

   25    1.2  1.5  0.5  -0.000000538  -0.000000299   0.000000035  -0.000000482   0.000000013  -0.000000026  -0.000000003  -0.000000105
                        -0.007064919   0.000624722  -0.009359468   0.000556793  -0.002345566   0.004335347   0.000161527  -0.001403870

   26    2.2  1.5  0.5   0.001341997  -0.000118378   0.005721464  -0.000340450  -0.001003616   0.001854721  -0.000533220   0.004638313
                         0.000000092   0.000000194  -0.000000008  -0.000000414  -0.000000013   0.000000030   0.000000076  -0.000000266

   27    3.2  1.5  0.5  -0.000351410  -0.003976266  -0.000178999  -0.003010639   0.000062895   0.000034028   0.000146271   0.000016824
                         0.000365131   0.004122567   0.000120978   0.002033447   0.001536181   0.000831162  -0.000789555  -0.000090731

   28    4.2  1.5  0.5   0.000014934   0.000159996   0.001048697   0.017610669  -0.022528677  -0.012188918  -0.001767305  -0.000203837
                         0.000014054   0.000158841   0.001550279   0.026074956   0.000921726   0.000498679  -0.000329035  -0.000037820

   29    5.2  1.5  0.5  -0.001269226  -0.014352924   0.001481534   0.024871049   0.001548074   0.000837566  -0.025080280  -0.002882011
                        -0.001224019  -0.013850464   0.002189321   0.036823317  -0.000062507  -0.000033834  -0.004644162  -0.000534134

   30    6.2  1.5  0.5  -0.009972995   0.000881849  -0.001521526   0.000091789  -0.005123903   0.009471883   0.002655513  -0.023108265
                         0.000001216   0.000000331   0.000000001   0.000001959   0.000000007  -0.000000037  -0.000000566   0.000001434

   31    7.2  1.5  0.5   0.000001186   0.000031997   0.000000382   0.000003758   0.000000385   0.000000165  -0.000004279   0.000001008
                        -0.018296198   0.001583662  -0.016445937   0.000975236   0.005119664  -0.009442391  -0.002639870   0.023148870

   32    8.2  1.5  0.5   0.003105583   0.035141558   0.000274547   0.004617450   0.000386298   0.000208985  -0.004217573  -0.000485064
                        -0.003204210  -0.036436011  -0.000171127  -0.003122836   0.009471596   0.005135429   0.022780444   0.002597133

   33    1.2  1.5 -0.5  -0.000433430  -0.004904437  -0.000461141  -0.007756113  -0.000177337  -0.000095944   0.000255761   0.000029412
                         0.000449907   0.005085231   0.000312038   0.005238545  -0.004331719  -0.002343603  -0.001380375  -0.000158826

   34    2.2  1.5 -0.5   0.000085078   0.000966085   0.000190894   0.003202310   0.001853168   0.001002776  -0.004560704  -0.000524290
                         0.000082311   0.000931469   0.000281897   0.004741346  -0.000075886  -0.000041060  -0.000844941  -0.000097179

   35    3.2  1.5 -0.5   0.000000629   0.000000494  -0.000000044   0.000000068   0.000000006  -0.000000014  -0.000000020   0.000000040
                         0.005727674  -0.000506764   0.003633023  -0.000216047  -0.000831859   0.001537468  -0.000092278   0.000802990

   36    4.2  1.5 -0.5  -0.000225429   0.000020506  -0.031464886   0.001871664  -0.012199115   0.022547525   0.000207316  -0.001797673
                         0.000003280   0.000000249   0.000000361   0.000001354   0.000000253  -0.000000445  -0.000000067   0.000001690

   37    5.2  1.5 -0.5   0.019945970  -0.001763281  -0.044435636   0.002643495   0.000838249  -0.001549335   0.002931090  -0.025506640
                        -0.000007152   0.000000075  -0.000000389   0.000002370  -0.000000450   0.000000860  -0.000000361  -0.000000847

   38    6.2  1.5 -0.5  -0.000635019  -0.007178107  -0.000052998  -0.000851601   0.009463959   0.005119616   0.022721595   0.002611005
                        -0.000611889  -0.006923540  -0.000074969  -0.001260879  -0.000387354  -0.000209556   0.004209639   0.000484150

   39    7.2  1.5 -0.5  -0.001122318  -0.012699287  -0.000810275  -0.013628432   0.000386349   0.000209004  -0.004216615  -0.000484953
                         0.001117772   0.013171142   0.000542727   0.009205145   0.009434484   0.005115396   0.022761598   0.002594948

   40    8.2  1.5 -0.5  -0.000004538   0.000011346   0.000003478   0.000011853  -0.000001224   0.000001404   0.000003991   0.000001481
                        -0.050621260   0.004462228  -0.005574311   0.000323296  -0.005139679   0.009479470   0.002642039  -0.023167575

   41    1.2  1.5 -1.5   0.000000970   0.000000331  -0.000000071  -0.000000234   0.000000011  -0.000000024  -0.000000034   0.000000069
                         0.011563971  -0.001022385  -0.006023610   0.000358289  -0.001448845   0.002677804  -0.000159195   0.001385310

   42    2.2  1.5 -1.5   0.008262118  -0.000730249  -0.008120798   0.000483004   0.001446723  -0.002673880   0.000160873  -0.001399904
                        -0.000000608  -0.000000046   0.000000046   0.000000273   0.000000011  -0.000000024  -0.000000034   0.000000070

   43    3.2  1.5 -1.5   0.000297666   0.003368263   0.000429162   0.007218247  -0.000087591  -0.000047386   0.000954862   0.000109818
                        -0.000308773  -0.003492589  -0.000290482  -0.004875243  -0.002139931  -0.001157642  -0.005153903  -0.000592605

   44    4.2  1.5 -1.5   0.001689957   0.019109260   0.001406725   0.023611974  -0.001565044  -0.000847490   0.025019841   0.002876483
                         0.001628603   0.018428532   0.002078499   0.034958939   0.000065463   0.000035443   0.004634666   0.000533043

   45    5.2  1.5 -1.5  -0.000213236  -0.002453636  -0.000537683  -0.009007674  -0.022529484  -0.012187754  -0.001742365  -0.000200317
                        -0.000208897  -0.002364024  -0.000792879  -0.013335739   0.000920275   0.000497894  -0.000321813  -0.000036998

   46    6.2  1.5 -1.5  -0.044027265   0.003892993   0.011630243  -0.000692405   0.011063551  -0.020451278   0.001221654  -0.010631690
                         0.000003903   0.000001683  -0.000000270  -0.000001389   0.000000119  -0.000000110  -0.000000283   0.000000548

   47    7.2  1.5 -1.5  -0.000001199  -0.000005744  -0.000000253  -0.000003955  -0.000000732  -0.000000570  -0.000002115   0.000000341
                        -0.014662169   0.001301747   0.030279483  -0.001797590  -0.011098864   0.020466938  -0.001218941   0.010694924

   48    8.2  1.5 -1.5  -0.000600839  -0.006798579  -0.000305898  -0.005144997  -0.000836625  -0.000452649  -0.001946855  -0.000223925
                         0.000638438   0.007050412   0.000178385   0.003481916  -0.020476630  -0.011104097   0.010519902   0.001198622


 Composition of spin-orbit eigenvectors
 ======================================

   Nr   State  S   Sz       1        2        3        4        5        6        7        8        9       10

    1    1.2  0.5  0.5  62.486%   4.008%   0.170%   0.000%   0.728%  32.607%   0.000%   0.000%   0.000%   0.000%
    2    2.2  0.5  0.5   1.186%  18.482%   0.036%  46.964%  32.604%   0.728%   0.000%   0.000%   0.000%   0.000%
    3    3.2  0.5  0.5  13.003%   0.834%  52.789%   0.041%   0.728%  32.606%   0.000%   0.000%   0.000%   0.000%
    4    4.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    5    5.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.004%   0.002%   0.005%
    6    6.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.002%   0.000%   0.003%   0.001%
    7    7.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.011%   0.000%   0.000%   0.000%
    8    8.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.002%   0.002%   0.005%
    9    1.2  0.5 -0.5   4.008%  62.486%   0.000%   0.170%  32.607%   0.728%   0.000%   0.000%   0.000%   0.000%
   10    2.2  0.5 -0.5  18.482%   1.186%  46.964%   0.036%   0.728%  32.604%   0.000%   0.000%   0.000%   0.000%
   11    3.2  0.5 -0.5   0.834%  13.003%   0.041%  52.789%  32.606%   0.728%   0.000%   0.000%   0.000%   0.000%
   12    4.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   13    5.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.004%   0.000%   0.005%   0.002%
   14    6.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.002%   0.001%   0.003%
   15    7.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.011%   0.000%   0.000%
   16    8.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.002%   0.000%   0.005%   0.002%
   17    1.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.024%   0.685%  11.932%  30.905%
   18    2.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.051%   1.474%   4.058%  10.509%
   19    3.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  30.187%   1.054%   2.555%   0.986%
   20    4.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.086%   0.003%   0.002%   0.001%
   21    5.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.008%   0.000%   0.011%   0.004%
   22    6.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.008%   0.024%   0.061%
   23    7.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.010%   0.000%   0.001%
   24    8.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.004%   0.000%   0.005%   0.002%
   25    1.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  42.594%   1.488%   0.388%   0.150%
   26    2.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   8.940%   0.312%  11.499%   4.439%
   27    3.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.437%  12.505%   6.219%  16.111%
   28    4.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.024%   0.001%   0.002%
   29    5.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.022%   0.020%   0.051%
   30    6.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.002%   0.000%   0.014%   0.006%
   31    7.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.020%   0.001%   0.008%   0.003%
   32    8.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.037%   0.004%   0.010%
   33    1.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   1.488%  42.594%   0.150%   0.388%
   34    2.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.312%   8.940%   4.439%  11.499%
   35    3.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  12.505%   0.437%  16.111%   6.219%
   36    4.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.024%   0.001%   0.002%   0.001%
   37    5.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.022%   0.001%   0.051%   0.020%
   38    6.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.002%   0.006%   0.014%
   39    7.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.020%   0.003%   0.008%
   40    8.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.037%   0.001%   0.010%   0.004%
   41    1.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.685%   0.024%  30.905%  11.932%
   42    2.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   1.474%   0.051%  10.509%   4.058%
   43    3.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   1.054%  30.187%   0.986%   2.555%
   44    4.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.003%   0.086%   0.001%   0.002%
   45    5.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.008%   0.004%   0.011%
   46    6.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.008%   0.000%   0.061%   0.024%
   47    7.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.010%   0.000%   0.001%   0.000%
   48    8.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.004%   0.002%   0.005%

   Nr   State  S   Sz      11       12       13       14       15       16       17       18       19       20

    1    1.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    2    2.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    3    3.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    4    4.2  0.5  0.5   0.011%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    5    5.2  0.5  0.5   0.001%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%
    6    6.2  0.5  0.5   0.000%   0.005%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    7    7.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%
    8    8.2  0.5  0.5   0.003%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    9    1.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   10    2.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   11    3.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   12    4.2  0.5 -0.5   0.000%   0.011%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   13    5.2  0.5 -0.5   0.000%   0.001%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%
   14    6.2  0.5 -0.5   0.005%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   15    7.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%
   16    8.2  0.5 -0.5   0.000%   0.003%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   17    1.2  1.5  1.5  11.318%   0.000%   0.002%   7.228%   0.012%  12.722%  24.986%   0.000%   0.000%   0.000%
   18    2.2  1.5  1.5  38.770%   0.000%   0.002%   7.228%   0.012%  12.723%  24.986%   0.000%   0.000%   0.000%
   19    3.2  1.5  1.5   0.000%   5.118%  38.193%   0.010%  21.669%   0.020%   0.000%   0.000%   0.000%   0.000%
   20    4.2  1.5  1.5   0.000%   0.004%   0.006%   0.000%   0.030%   0.000%   0.000%   0.003%   0.000%   4.196%
   21    5.2  1.5  1.5   0.000%   0.019%   0.030%   0.000%   0.006%   0.000%   0.000%   0.009%   0.000%   0.446%
   22    6.2  1.5  1.5   0.000%   0.000%   0.000%   0.013%   0.000%   0.023%   0.003%   0.000%  11.197%   0.000%
   23    7.2  1.5  1.5   0.081%   0.000%   0.000%   0.013%   0.000%   0.023%   0.003%   0.000%   1.279%   0.000%
   24    8.2  1.5  1.5   0.000%   0.008%   0.013%   0.000%   0.023%   0.000%   0.000%   0.011%   0.000%   0.445%
   25    1.2  1.5  0.5   0.000%   0.270%  44.521%   0.011%   2.048%   0.002%   0.000%   8.328%   0.000%   0.000%
   26    2.2  1.5  0.5   0.000%  19.696%   0.215%   0.000%  46.326%   0.043%   0.000%   8.329%   0.000%   0.000%
   27    3.2  1.5  0.5  24.579%   0.000%   0.001%   2.410%   0.004%   4.241%  33.314%   0.000%   0.000%   0.000%
   28    4.2  1.5  0.5   0.015%   0.000%   0.000%   0.030%   0.000%   0.006%   0.009%   0.000%  44.926%   0.000%
   29    5.2  1.5  0.5   0.001%   0.000%   0.000%   0.006%   0.000%   0.030%   0.003%   0.000%   3.053%   0.000%
   30    6.2  1.5  0.5   0.000%   0.023%   0.023%   0.000%   0.013%   0.000%   0.000%   0.008%   0.000%  28.630%
   31    7.2  1.5  0.5   0.000%   0.012%   0.023%   0.000%   0.013%   0.000%   0.000%   0.008%   0.000%   5.777%
   32    8.2  1.5  0.5   0.065%   0.000%   0.000%   0.023%   0.000%   0.013%   0.000%   0.000%   0.050%   0.000%
   33    1.2  1.5 -0.5   0.270%   0.000%   0.011%  44.521%   0.002%   2.048%   8.328%   0.000%   0.000%   0.000%
   34    2.2  1.5 -0.5  19.696%   0.000%   0.000%   0.215%   0.043%  46.326%   8.329%   0.000%   0.000%   0.000%
   35    3.2  1.5 -0.5   0.000%  24.579%   2.410%   0.001%   4.241%   0.004%   0.000%  33.314%   0.000%   0.000%
   36    4.2  1.5 -0.5   0.000%   0.015%   0.030%   0.000%   0.006%   0.000%   0.000%   0.009%   0.000%  44.926%
   37    5.2  1.5 -0.5   0.000%   0.001%   0.006%   0.000%   0.030%   0.000%   0.000%   0.003%   0.000%   3.053%
   38    6.2  1.5 -0.5   0.023%   0.000%   0.000%   0.023%   0.000%   0.013%   0.008%   0.000%  28.630%   0.000%
   39    7.2  1.5 -0.5   0.012%   0.000%   0.000%   0.023%   0.000%   0.013%   0.008%   0.000%   5.777%   0.000%
   40    8.2  1.5 -0.5   0.000%   0.065%   0.023%   0.000%   0.013%   0.000%   0.000%   0.000%   0.000%   0.050%
   41    1.2  1.5 -1.5   0.000%  11.318%   7.228%   0.002%  12.722%   0.012%   0.000%  24.986%   0.000%   0.000%
   42    2.2  1.5 -1.5   0.000%  38.770%   7.228%   0.002%  12.723%   0.012%   0.000%  24.986%   0.000%   0.000%
   43    3.2  1.5 -1.5   5.118%   0.000%   0.010%  38.193%   0.020%  21.669%   0.000%   0.000%   0.000%   0.000%
   44    4.2  1.5 -1.5   0.004%   0.000%   0.000%   0.006%   0.000%   0.030%   0.003%   0.000%   4.196%   0.000%
   45    5.2  1.5 -1.5   0.019%   0.000%   0.000%   0.030%   0.000%   0.006%   0.009%   0.000%   0.446%   0.000%
   46    6.2  1.5 -1.5   0.000%   0.000%   0.013%   0.000%   0.023%   0.000%   0.000%   0.003%   0.000%  11.197%
   47    7.2  1.5 -1.5   0.000%   0.081%   0.013%   0.000%   0.023%   0.000%   0.000%   0.003%   0.000%   1.279%
   48    8.2  1.5 -1.5   0.008%   0.000%   0.000%   0.013%   0.000%   0.023%   0.011%   0.000%   0.445%   0.000%

   Nr   State  S   Sz      21       22       23       24       25       26       27       28       29       30

    1    1.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    2    2.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    3    3.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    4    4.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.007%   0.366%   0.004%
    5    5.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.004%   0.013%   0.000%
    6    6.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.235%   0.000%   0.001%   0.052%
    7    7.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.256%   0.000%   0.000%   0.000%
    8    8.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.151%   0.215%   0.002%
    9    1.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   10    2.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   11    3.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   12    4.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.007%   0.000%   0.004%   0.366%
   13    5.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.004%   0.000%   0.000%   0.013%
   14    6.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.235%   0.052%   0.001%
   15    7.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.256%   0.000%   0.000%
   16    8.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.151%   0.000%   0.002%   0.215%
   17    1.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.006%   0.075%   0.001%
   18    2.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.007%   0.111%   0.001%
   19    3.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.082%   0.000%   0.000%   0.005%
   20    4.2  1.5  1.5   0.178%  27.168%   0.004%   0.099%   2.228%   0.000%  37.264%   0.000%   0.012%   1.223%
   21    5.2  1.5  1.5   0.001%   0.127%   0.003%   0.062%  45.485%   0.004%  10.603%   0.000%   0.024%   2.485%
   22    6.2  1.5  1.5   1.615%   0.011%  20.510%   0.906%   0.000%   0.041%   0.000%   1.005%   8.816%   0.085%
   23    7.2  1.5  1.5   0.001%   0.000%  31.390%   1.386%   0.000%   0.227%   0.000%   1.590%  30.416%   0.295%
   24    8.2  1.5  1.5   0.052%   7.922%   0.036%   0.822%  42.148%   0.004%   0.007%   0.000%   0.007%   0.720%
   25    1.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.064%   0.000%   0.000%   0.000%
   26    2.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.059%   0.000%   0.000%   0.013%
   27    3.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.011%   0.000%
   28    4.2  1.5  0.5   0.569%   0.004%   0.547%   0.024%   0.000%   0.061%   0.000%   8.561%   6.489%   0.063%
   29    5.2  1.5  0.5   6.112%   0.040%  21.992%   0.972%   0.000%   1.706%   0.000%  26.481%   8.258%   0.080%
   30    6.2  1.5  0.5   0.088%  13.472%   0.026%   0.598%   2.895%   0.000%   1.058%   0.000%   0.022%   2.290%
   31    7.2  1.5  0.5   0.221%  33.740%   0.052%   1.180%   4.743%   0.000%   1.631%   0.000%   0.008%   0.878%
   32    8.2  1.5  0.5   8.621%   0.057%  18.571%   0.820%   0.000%   0.457%   0.000%  10.929%  36.602%   0.354%
   33    1.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.064%   0.000%   0.000%
   34    2.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.059%   0.013%   0.000%
   35    3.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.011%
   36    4.2  1.5 -0.5   0.004%   0.569%   0.024%   0.547%   0.061%   0.000%   8.561%   0.000%   0.063%   6.489%
   37    5.2  1.5 -0.5   0.040%   6.112%   0.972%  21.992%   1.706%   0.000%  26.481%   0.000%   0.080%   8.258%
   38    6.2  1.5 -0.5  13.472%   0.088%   0.598%   0.026%   0.000%   2.895%   0.000%   1.058%   2.290%   0.022%
   39    7.2  1.5 -0.5  33.740%   0.221%   1.180%   0.052%   0.000%   4.743%   0.000%   1.631%   0.878%   0.008%
   40    8.2  1.5 -0.5   0.057%   8.621%   0.820%  18.571%   0.457%   0.000%  10.929%   0.000%   0.354%  36.602%
   41    1.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.006%   0.000%   0.001%   0.075%
   42    2.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.007%   0.000%   0.001%   0.111%
   43    3.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.082%   0.005%   0.000%
   44    4.2  1.5 -1.5  27.168%   0.178%   0.099%   0.004%   0.000%   2.228%   0.000%  37.264%   1.223%   0.012%
   45    5.2  1.5 -1.5   0.127%   0.001%   0.062%   0.003%   0.004%  45.485%   0.000%  10.603%   2.485%   0.024%
   46    6.2  1.5 -1.5   0.011%   1.615%   0.906%  20.510%   0.041%   0.000%   1.005%   0.000%   0.085%   8.816%
   47    7.2  1.5 -1.5   0.000%   0.001%   1.386%  31.390%   0.227%   0.000%   1.590%   0.000%   0.295%  30.416%
   48    8.2  1.5 -1.5   7.922%   0.052%   0.822%   0.036%   0.004%  42.148%   0.000%   0.007%   0.720%   0.007%

   Nr   State  S   Sz      31       32       33       34       35       36       37       38       39       40

    1    1.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    2    2.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    3    3.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    4    4.2  0.5  0.5   0.013%   0.002%   0.000%   0.124%   0.000%   0.009%   0.000%   0.000%   7.196%  25.277%
    5    5.2  0.5  0.5   0.330%   0.043%   0.000%   0.009%   0.000%   0.124%   0.000%   0.000%   4.626%  16.255%
    6    6.2  0.5  0.5   0.012%   0.092%   0.062%   0.000%   0.071%   0.000%   0.000%   0.000%  34.953%   9.949%
    7    7.2  0.5  0.5   0.016%   0.120%   0.011%   0.000%   0.122%   0.000%   0.000%   0.000%   0.832%   0.237%
    8    8.2  0.5  0.5   0.021%   0.003%   0.000%   0.127%   0.000%   0.007%   0.000%   0.000%   0.001%   0.004%
    9    1.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   10    2.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   11    3.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   12    4.2  0.5 -0.5   0.002%   0.013%   0.124%   0.000%   0.009%   0.000%   0.000%   0.000%  25.277%   7.196%
   13    5.2  0.5 -0.5   0.043%   0.330%   0.009%   0.000%   0.124%   0.000%   0.000%   0.000%  16.255%   4.626%
   14    6.2  0.5 -0.5   0.092%   0.012%   0.000%   0.062%   0.000%   0.071%   0.000%   0.000%   9.949%  34.953%
   15    7.2  0.5 -0.5   0.120%   0.016%   0.000%   0.011%   0.000%   0.122%   0.000%   0.000%   0.237%   0.832%
   16    8.2  0.5 -0.5   0.003%   0.021%   0.127%   0.000%   0.007%   0.000%   0.000%   0.000%   0.004%   0.001%
   17    1.2  1.5  1.5   0.034%   0.004%   0.000%   0.002%   0.000%   0.033%   0.014%   0.000%   0.000%   0.000%
   18    2.2  1.5  1.5   0.000%   0.000%   0.000%   0.002%   0.000%   0.033%   0.014%   0.000%   0.001%   0.003%
   19    3.2  1.5  1.5   0.000%   0.000%   0.100%   0.000%   0.005%   0.000%   0.000%   0.000%   0.002%   0.001%
   20    4.2  1.5  1.5   0.304%   2.323%  11.078%   0.001%   8.818%   0.002%   0.000%   4.634%   0.013%   0.004%
   21    5.2  1.5  1.5   0.607%   4.632%   8.819%   0.001%  11.074%   0.002%   0.000%  15.355%   0.071%   0.020%
   22    6.2  1.5  1.5  26.927%   3.527%   0.000%   1.000%   0.003%  18.901%   4.997%   0.000%   0.011%   0.040%
   23    7.2  1.5  1.5   7.127%   0.931%   0.000%   1.000%   0.004%  18.898%   4.997%   0.000%   0.033%   0.114%
   24    8.2  1.5  1.5   0.897%   6.868%   0.999%   0.000%  18.893%   0.004%   0.000%  19.989%   0.032%   0.009%
   25    1.2  1.5  0.5   0.004%   0.030%   0.053%   0.000%   0.028%   0.000%   0.000%   0.005%   0.000%   0.000%
   26    2.2  1.5  0.5   0.003%   0.023%   0.018%   0.000%   0.064%   0.000%   0.000%   0.005%   0.008%   0.002%
   27    3.2  1.5  0.5   0.105%   0.014%   0.000%   0.001%   0.000%   0.011%   0.019%   0.000%   0.003%   0.011%
   28    4.2  1.5  0.5   2.862%   0.375%   0.001%   8.819%   0.002%  11.074%  15.352%   0.000%   0.004%   0.015%
   29    5.2  1.5  0.5   5.579%   0.731%   0.001%  11.074%   0.002%   8.817%   4.636%   0.000%   0.006%   0.022%
   30    6.2  1.5  0.5   1.824%  13.924%  18.900%   0.002%   1.001%   0.000%   0.000%  14.990%   0.088%   0.025%
   31    7.2  1.5  0.5   1.921%  14.680%  18.895%   0.002%   0.999%   0.000%   0.000%  14.994%   0.049%   0.014%
   32    8.2  1.5  0.5   2.736%   0.356%   0.002%  18.895%   0.000%   1.000%   0.000%   0.000%   0.015%   0.054%
   33    1.2  1.5 -0.5   0.030%   0.004%   0.000%   0.053%   0.000%   0.028%   0.005%   0.000%   0.000%   0.000%
   34    2.2  1.5 -0.5   0.023%   0.003%   0.000%   0.018%   0.000%   0.064%   0.005%   0.000%   0.002%   0.008%
   35    3.2  1.5 -0.5   0.014%   0.105%   0.001%   0.000%   0.011%   0.000%   0.000%   0.019%   0.011%   0.003%
   36    4.2  1.5 -0.5   0.375%   2.862%   8.819%   0.001%  11.074%   0.002%   0.000%  15.352%   0.015%   0.004%
   37    5.2  1.5 -0.5   0.731%   5.579%  11.074%   0.001%   8.817%   0.002%   0.000%   4.636%   0.022%   0.006%
   38    6.2  1.5 -0.5  13.924%   1.824%   0.002%  18.900%   0.000%   1.001%  14.990%   0.000%   0.025%   0.088%
   39    7.2  1.5 -0.5  14.680%   1.921%   0.002%  18.895%   0.000%   0.999%  14.994%   0.000%   0.014%   0.049%
   40    8.2  1.5 -0.5   0.356%   2.736%  18.895%   0.002%   1.000%   0.000%   0.000%   0.000%   0.054%   0.015%
   41    1.2  1.5 -1.5   0.004%   0.034%   0.002%   0.000%   0.033%   0.000%   0.000%   0.014%   0.000%   0.000%
   42    2.2  1.5 -1.5   0.000%   0.000%   0.002%   0.000%   0.033%   0.000%   0.000%   0.014%   0.003%   0.001%
   43    3.2  1.5 -1.5   0.000%   0.000%   0.000%   0.100%   0.000%   0.005%   0.000%   0.000%   0.001%   0.002%
   44    4.2  1.5 -1.5   2.323%   0.304%   0.001%  11.078%   0.002%   8.818%   4.634%   0.000%   0.004%   0.013%
   45    5.2  1.5 -1.5   4.632%   0.607%   0.001%   8.819%   0.002%  11.074%  15.355%   0.000%   0.020%   0.071%
   46    6.2  1.5 -1.5   3.527%  26.927%   1.000%   0.000%  18.901%   0.003%   0.000%   4.997%   0.040%   0.011%
   47    7.2  1.5 -1.5   0.931%   7.127%   1.000%   0.000%  18.898%   0.004%   0.000%   4.997%   0.114%   0.033%
   48    8.2  1.5 -1.5   6.868%   0.897%   0.000%   0.999%   0.004%  18.893%  19.989%   0.000%   0.009%   0.032%

   Nr   State  S   Sz      41       42       43       44       45       46       47       48

    1    1.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    2    2.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    3    3.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    4    4.2  0.5  0.5   0.169%  21.610%   0.019%   5.356%  19.456%   5.695%  14.492%   0.192%
    5    5.2  0.5  0.5   0.291%  37.260%   0.004%   1.204%  11.363%   3.327%  24.806%   0.328%
    6    6.2  0.5  0.5   0.760%   0.006%  13.885%   0.049%   8.952%  30.579%   0.004%   0.324%
    7    7.2  0.5  0.5  21.121%   0.165%  37.073%   0.131%   3.006%  10.266%   0.347%  26.285%
    8    8.2  0.5  0.5   0.139%  17.806%   0.147%  41.458%   5.430%   1.590%  32.457%   0.429%
    9    1.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   10    2.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   11    3.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   12    4.2  0.5 -0.5  21.610%   0.169%   5.356%   0.019%   5.695%  19.456%   0.192%  14.492%
   13    5.2  0.5 -0.5  37.260%   0.291%   1.204%   0.004%   3.327%  11.363%   0.328%  24.806%
   14    6.2  0.5 -0.5   0.006%   0.760%   0.049%  13.885%  30.579%   8.952%   0.324%   0.004%
   15    7.2  0.5 -0.5   0.165%  21.121%   0.131%  37.073%  10.266%   3.006%  26.285%   0.347%
   16    8.2  0.5 -0.5  17.806%   0.139%  41.458%   0.147%   1.590%   5.430%   0.429%  32.457%
   17    1.2  1.5  1.5   0.000%   0.013%   0.000%   0.004%   0.001%   0.000%   0.000%   0.000%
   18    2.2  1.5  1.5   0.000%   0.007%   0.000%   0.007%   0.001%   0.000%   0.000%   0.000%
   19    3.2  1.5  1.5   0.002%   0.000%   0.008%   0.000%   0.000%   0.000%   0.000%   0.003%
   20    4.2  1.5  1.5   0.070%   0.001%   0.178%   0.001%   0.000%   0.000%   0.001%   0.065%
   21    5.2  1.5  1.5   0.001%   0.000%   0.026%   0.000%   0.015%   0.051%   0.000%   0.000%
   22    6.2  1.5  1.5   0.002%   0.194%   0.000%   0.014%   0.042%   0.012%   0.011%   0.000%
   23    7.2  1.5  1.5   0.000%   0.021%   0.000%   0.092%   0.042%   0.012%   0.011%   0.000%
   24    8.2  1.5  1.5   0.010%   0.000%   0.004%   0.000%   0.012%   0.042%   0.000%   0.011%
   25    1.2  1.5  0.5   0.005%   0.000%   0.009%   0.000%   0.001%   0.002%   0.000%   0.000%
   26    2.2  1.5  0.5   0.000%   0.000%   0.003%   0.000%   0.000%   0.000%   0.000%   0.002%
   27    3.2  1.5  0.5   0.000%   0.003%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%
   28    4.2  1.5  0.5   0.000%   0.000%   0.000%   0.099%   0.051%   0.015%   0.000%   0.000%
   29    5.2  1.5  0.5   0.000%   0.040%   0.001%   0.197%   0.000%   0.000%   0.065%   0.001%
   30    6.2  1.5  0.5   0.010%   0.000%   0.000%   0.000%   0.003%   0.009%   0.001%   0.053%
   31    7.2  1.5  0.5   0.033%   0.000%   0.027%   0.000%   0.003%   0.009%   0.001%   0.054%
   32    8.2  1.5  0.5   0.002%   0.256%   0.000%   0.003%   0.009%   0.003%   0.054%   0.001%
   33    1.2  1.5 -0.5   0.000%   0.005%   0.000%   0.009%   0.002%   0.001%   0.000%   0.000%
   34    2.2  1.5 -0.5   0.000%   0.000%   0.000%   0.003%   0.000%   0.000%   0.002%   0.000%
   35    3.2  1.5 -0.5   0.003%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%
   36    4.2  1.5 -0.5   0.000%   0.000%   0.099%   0.000%   0.015%   0.051%   0.000%   0.000%
   37    5.2  1.5 -0.5   0.040%   0.000%   0.197%   0.001%   0.000%   0.000%   0.001%   0.065%
   38    6.2  1.5 -0.5   0.000%   0.010%   0.000%   0.000%   0.009%   0.003%   0.053%   0.001%
   39    7.2  1.5 -0.5   0.000%   0.033%   0.000%   0.027%   0.009%   0.003%   0.054%   0.001%
   40    8.2  1.5 -0.5   0.256%   0.002%   0.003%   0.000%   0.003%   0.009%   0.001%   0.054%
   41    1.2  1.5 -1.5   0.013%   0.000%   0.004%   0.000%   0.000%   0.001%   0.000%   0.000%
   42    2.2  1.5 -1.5   0.007%   0.000%   0.007%   0.000%   0.000%   0.001%   0.000%   0.000%
   43    3.2  1.5 -1.5   0.000%   0.002%   0.000%   0.008%   0.000%   0.000%   0.003%   0.000%
   44    4.2  1.5 -1.5   0.001%   0.070%   0.001%   0.178%   0.000%   0.000%   0.065%   0.001%
   45    5.2  1.5 -1.5   0.000%   0.001%   0.000%   0.026%   0.051%   0.015%   0.000%   0.000%
   46    6.2  1.5 -1.5   0.194%   0.002%   0.014%   0.000%   0.012%   0.042%   0.000%   0.011%
   47    7.2  1.5 -1.5   0.021%   0.000%   0.092%   0.000%   0.012%   0.042%   0.000%   0.011%
   48    8.2  1.5 -1.5   0.000%   0.010%   0.000%   0.004%   0.042%   0.012%   0.011%   0.000%


 Property matrices transformed in SO basis (not sym. adapted)
 ============================================================

 No matrix element <i|DMX|i> larger than 1E-10
 No matrix element <i|DMX|1> larger than 1E-10

 No matrix element <i|DMY|i> larger than 1E-10
 No matrix element <i|DMY|1> larger than 1E-10

 No matrix element <i|DMZ|i> larger than 1E-10
 No matrix element <i|DMZ|1> larger than 1E-10


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       29.67       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7       54.13       700     1000      520     2100     2140     5201     5203   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *       478.68    422.78     22.89     29.26      3.11      0.12      0.32
 REAL TIME  *       508.38 SEC
 DISK USED  *        83.84 MB (local),        1.14 GB (total)
 SF USED    *       244.68 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCVTZ-DK energy=    -99.150617280649

              CI              CI           MULTI         RHF-SCF
    -99.15336680    -99.14625934    -98.98132836    -97.68758534
 **********************************************************************************************************************************
 Molpro calculation terminated
