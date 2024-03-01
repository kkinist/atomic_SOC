
 Working directory              : /wrk/irikura/molpro.bIEff7gRMt/
 Global scratch directory       : /wrk/irikura/molpro.bIEff7gRMt/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.bIEff7gRMt/

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
     wf,nelec=9,sym=2,spin=1;state,3;
     wf,nelec=9,sym=2,spin=3;state,8;
     expec2,lxx,lyy,lzz;
 }
 table, energy, ll
 title, Energies and &lt;L**2&gt; values
 
 {ci;wf,sym=2,spin=1;state,3; save,5201.2}
 hlsdiag = energd4
 {ci;wf,sym=2,spin=3;state,8; save,5203.2}
 hlsdiag(4) = energd4
 
 table,hlsdiag
 
 {ci;hlsmat,ls,5201.2,5203.2;print,vls=0,hls=0}                                  !compute and diagonalize SO matrix
 Commands initialized (810), CPU time= 0.01 sec, 661 directives.
 Default parameters read. Elapsed time= 0.09 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2021.2 linked Jun  2 2021 00:13:23


 **********************************************************************************************************************************
 LABEL *   F SO-CI                                                                       
  64 bit mpp version                                                                     DATE: 29-Feb-24          TIME: 16:10:06  
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

     3.670 MB (compressed) written to integral file ( 27.8%)

     Node minimum: 0.262 MB, node maximum: 0.524 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:      67728.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:      67728      RECORD LENGTH: 524288

 Memory used in sort:       0.62 MW

 SORT1 READ     1711873. AND WROTE       15143. INTEGRALS IN      1 RECORDS. CPU TIME:     0.01 SEC, REAL TIME:     0.02 SEC
 SORT2 READ      173263. AND WROTE      810039. INTEGRALS IN     12 RECORDS. CPU TIME:     0.00 SEC, REAL TIME:     0.00 SEC

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
 CPU TIMES  *         0.47      0.31
 REAL TIME  *         1.01 SEC
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
    2    1    0     -97.68029254      -0.41366298    0.22718929    0.22718929    0.00000000    0    0.51E-01      0.04
    3    1    0     -97.68751708      -0.00722455    0.02375093    0.02375093    0.00000000    0    0.34E-02      0.06
    4    1    0     -97.68758330      -0.00006622    0.00405769    0.00405769    0.00000000    1    0.65E-03      0.08
    5    1    0     -97.68758533      -0.00000203    0.00019107    0.00019107    0.00000000    2    0.33E-04      0.10
    6    1    0     -97.68758534      -0.00000001    0.00002611    0.00002611    0.00000000    3    0.49E-05      0.11

 CONVERGENCE REACHED!  Final gradient:     0.00000128 ( 0.13E-05)
                       Final energy:     -97.68758534
 

 Final alpha occupancy:   2   3
 Final beta  occupancy:   2   0

 !RHF STATE 1.2 Energy                -97.687585336158
  RHF One-electron energy            -126.288628142958
  RHF Two-electron energy              28.601042806799
  RHF Kinetic energy                   98.260101998673
  RHF Nuclear energy                    0.000000000000
  RHF Virial quotient                  -0.994173457478

 !RHF STATE 1.2 Dipole moment           0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 ELECTRON ORBITALS
 =================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000   -28.10815     1  1  s    0.99980
    2.1     2.00000    -2.92205     1  2  s    1.18147
    1.2     1.00000    -2.34205     1  1  px   1.08769    1  1  py   0.61244    1  3  px  -0.25360
    2.2     1.00000    -2.34205     1  1  px   0.60940    1  1  py  -1.09046    1  3  py   0.25424
    3.2     1.00000    -2.34205     1  1  pz   1.24666    1  3  pz  -0.29066


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
 CPU TIMES  *         0.62      0.15      0.31
 REAL TIME  *         1.19 SEC
 DISK USED  *        31.54 MB (local),      427.89 MB (total)
 SF USED    *         0.41 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of closed-shell orbitals:   1 (   1   0 )
 Number of active  orbitals:        8 (   2   6 )
 Number of external orbitals:      50 (  24  26 )

 State symmetry 1

 Number of active electrons:   7    Spin symmetry=Doublet   Space symmetry=2
 Number of states:             3
 Number of CSFs:            1204   (1980 determinants, 3920 intermediate states)

 State symmetry 2

 Number of active electrons:   7    Spin symmetry=Quartet   Space symmetry=2
 Number of states:             8
 Number of CSFs:             656   (776 determinants, 1568 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL (state 1.2)

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 6 4 5 3 2 1 6   4 5 3 2 1 2 4 6 5 3   1 2 6 4 3 5 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.389D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.381D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.853D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.964D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.182D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.911D-01 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 2 3 3 1 2 3 1 2 6   5 4 9 710 8 3 1 2 6  10 8 5 4 7 9 3 1 2 2   3 1

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.09091   0.09091   0.09091
 Weight factors for state symmetry  2:    0.09091   0.09091   0.09091   0.09091   0.09091   0.09091   0.09091   0.09091
 
 Number of orbital rotations:  230  ( 2 closed/active, 24 closed/virtual, 0 active/active, 204 active/virtual )
 Total number of variables:    12378
 
  Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1    6   30    0    -99.01962170     -99.11751743   -0.09789573    0.63646092 0.00233523 0.00208895  0.74E+00      0.44
   2    7   27    0    -99.12045719     -99.12073116   -0.00027397    0.03277768 0.00000863 0.00001460  0.25E-01      1.00
   3    5   20    0    -99.12073181     -99.12073181   -0.00000000    0.00011736 0.00000509 0.00000170  0.11E-03      1.45
   4    3    9    0    -99.12073181     -99.12073181   -0.00000000    0.00000059 0.00000001 0.00000007  0.14E-05      1.75

 CONVERGENCE REACHED!  Final gradient:    0.00000002 ( 0.23E-07)
                       Final energy:    -99.12073181
 
 Results for state 1.2 Doublet
 =============================
 !MCSCF STATE 1.2 Doublet Energy               -99.487920147611
 Nuclear energy                                  0.00000000
 Kinetic energy                                100.57740843
 One electron energy                          -139.52856303
 Two electron energy                            40.04064289
 Virial ratio                                    1.98916766
 
 !MCSCF STATE 1.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.2 Doublet
 =============================
 !MCSCF STATE 2.2 Doublet Energy               -99.487920147611
 Nuclear energy                                  0.00000000
 Kinetic energy                                100.57740843
 One electron energy                          -139.52856303
 Two electron energy                            40.04064289
 Virial ratio                                    1.98916766
 
 !MCSCF STATE 2.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.2 Doublet
 =============================
 !MCSCF STATE 3.2 Doublet Energy               -99.487920147611
 Nuclear energy                                  0.00000000
 Kinetic energy                                100.57740843
 One electron energy                          -139.52856303
 Two electron energy                            40.04064289
 Virial ratio                                    1.98916766
 
 !MCSCF STATE 3.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.2 Quartet
 =============================
 !MCSCF STATE 1.2 Quartet Energy               -98.991307872958
 Nuclear energy                                  0.00000000
 Kinetic energy                                 99.47072141
 One electron energy                          -135.35353484
 Two electron energy                            36.36222697
 Virial ratio                                    1.99518036
 
 !MCSCF STATE 1.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.2 Quartet
 =============================
 !MCSCF STATE 2.2 Quartet Energy               -98.991307872958
 Nuclear energy                                  0.00000000
 Kinetic energy                                 99.47072141
 One electron energy                          -135.35353484
 Two electron energy                            36.36222697
 Virial ratio                                    1.99518036
 
 !MCSCF STATE 2.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.2 Quartet
 =============================
 !MCSCF STATE 3.2 Quartet Energy               -98.991307872958
 Nuclear energy                                  0.00000000
 Kinetic energy                                 99.47072141
 One electron energy                          -135.35353484
 Two electron energy                            36.36222697
 Virial ratio                                    1.99518036
 
 !MCSCF STATE 3.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.2 Quartet
 =============================
 !MCSCF STATE 4.2 Quartet Energy               -98.978073178709
 Nuclear energy                                  0.00000000
 Kinetic energy                                 99.50490926
 One electron energy                          -135.38888028
 Two electron energy                            36.41080710
 Virial ratio                                    1.99470543
 
 !MCSCF STATE 4.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.2 Quartet
 =============================
 !MCSCF STATE 5.2 Quartet Energy               -98.978073178709
 Nuclear energy                                  0.00000000
 Kinetic energy                                 99.50490926
 One electron energy                          -135.38888028
 Two electron energy                            36.41080710
 Virial ratio                                    1.99470543
 
 !MCSCF STATE 5.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.2 Quartet
 =============================
 !MCSCF STATE 6.2 Quartet Energy               -98.978073178709
 Nuclear energy                                  0.00000000
 Kinetic energy                                 99.50490926
 One electron energy                          -135.38888028
 Two electron energy                            36.41080710
 Virial ratio                                    1.99470543
 
 !MCSCF STATE 6.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.2 Quartet
 =============================
 !MCSCF STATE 7.2 Quartet Energy               -98.978073178664
 Nuclear energy                                  0.00000000
 Kinetic energy                                 99.50490926
 One electron energy                          -135.38888028
 Two electron energy                            36.41080710
 Virial ratio                                    1.99470543
 
 !MCSCF STATE 7.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.2 Quartet
 =============================
 !MCSCF STATE 8.2 Quartet Energy               -98.978073178663
 Nuclear energy                                  0.00000000
 Kinetic energy                                 99.50490926
 One electron energy                          -135.38888028
 Two electron energy                            36.41080710
 Virial ratio                                    1.99470543
 
 !MCSCF STATE 8.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 !MCSCF expec      <1.2 Doublet|LXLX|1.2 Doublet>     0.931293540383
 !MCSCF expec      <2.2 Doublet|LXLX|2.2 Doublet>     0.768903275771
 !MCSCF expec      <3.2 Doublet|LXLX|3.2 Doublet>     0.299803183845
 !MCSCF expec      <1.2 Quartet|LXLX|1.2 Quartet>     0.934561319825
 !MCSCF expec      <2.2 Quartet|LXLX|2.2 Quartet>     0.242825281667
 !MCSCF expec      <3.2 Quartet|LXLX|3.2 Quartet>     0.822613398508
 !MCSCF expec      <4.2 Quartet|LXLX|4.2 Quartet>     1.128655107579
 !MCSCF expec      <5.2 Quartet|LXLX|5.2 Quartet>     1.004241042680
 !MCSCF expec      <6.2 Quartet|LXLX|6.2 Quartet>     3.867103754908
 !MCSCF expec      <7.2 Quartet|LXLX|7.2 Quartet>     3.693866609428
 !MCSCF expec      <8.2 Quartet|LXLX|8.2 Quartet>     0.306133485405
 
 !MCSCF expec      <1.2 Doublet|LYLY|1.2 Doublet>     0.979350019370
 !MCSCF expec      <2.2 Doublet|LYLY|2.2 Doublet>     0.231096724229
 !MCSCF expec      <3.2 Doublet|LYLY|3.2 Doublet>     0.789553256401
 !MCSCF expec      <1.2 Quartet|LYLY|1.2 Quartet>     0.999685696259
 !MCSCF expec      <2.2 Quartet|LYLY|2.2 Quartet>     0.813917371990
 !MCSCF expec      <3.2 Quartet|LYLY|3.2 Quartet>     0.186396931751
 !MCSCF expec      <4.2 Quartet|LYLY|4.2 Quartet>     1.486941984218
 !MCSCF expec      <5.2 Quartet|LYLY|5.2 Quartet>     3.505499379916
 !MCSCF expec      <6.2 Quartet|LYLY|6.2 Quartet>     1.007558717950
 !MCSCF expec      <7.2 Quartet|LYLY|7.2 Quartet>     0.232136776140
 !MCSCF expec      <8.2 Quartet|LYLY|8.2 Quartet>     3.767863141776
 
 !MCSCF expec      <1.2 Doublet|LZLZ|1.2 Doublet>     0.089356440246
 !MCSCF expec      <2.2 Doublet|LZLZ|2.2 Doublet>     1.000000000000
 !MCSCF expec      <3.2 Doublet|LZLZ|3.2 Doublet>     0.910643559754
 !MCSCF expec      <1.2 Quartet|LZLZ|1.2 Quartet>     0.065752983917
 !MCSCF expec      <2.2 Quartet|LZLZ|2.2 Quartet>     0.943257346343
 !MCSCF expec      <3.2 Quartet|LZLZ|3.2 Quartet>     0.990989669741
 !MCSCF expec      <4.2 Quartet|LZLZ|4.2 Quartet>     3.384402908202
 !MCSCF expec      <5.2 Quartet|LZLZ|5.2 Quartet>     1.490259577405
 !MCSCF expec      <6.2 Quartet|LZLZ|6.2 Quartet>     1.125337527142
 !MCSCF expec      <7.2 Quartet|LZLZ|7.2 Quartet>     2.073996614432
 !MCSCF expec      <8.2 Quartet|LZLZ|8.2 Quartet>     1.926003372819
 
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
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000   -26.77119     1  1  s    0.99937
    2.1     1.99536    -1.83620     1  2  s    1.06141
    3.1     0.00493     1.23171     1  2  s   -1.12942    1  3  s   -0.59840    1  4  s    1.67155
    1.2     1.41840    -0.77838     1  1  py  -1.06801
    2.2     1.41840    -0.77838     1  1  px   1.06801
    3.2     1.41840    -0.77838     1  1  pz   1.06801
    4.2     0.24817     0.14997     1  1  py  -0.38145    1  6  py   1.04013
    5.2     0.24817     0.14997     1  1  px  -0.38145    1  6  px   1.04013
    6.2     0.24817     0.14997     1  1  pz  -0.38145    1  6  pz   1.04013
 *** IN SYMMETRY  1 ORBITAL   5 SYMMETRY CONTAMINATION OF 0.619D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL   6 SYMMETRY CONTAMINATION OF 0.165D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL   7 SYMMETRY CONTAMINATION OF 0.400D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL   8 SYMMETRY CONTAMINATION OF 0.605D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL   9 SYMMETRY CONTAMINATION OF 0.159D-03 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  10 SYMMETRY CONTAMINATION OF 0.375D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  11 SYMMETRY CONTAMINATION OF 0.715D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  12 SYMMETRY CONTAMINATION OF 0.363D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  13 SYMMETRY CONTAMINATION OF 0.191D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  14 SYMMETRY CONTAMINATION OF 0.338D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  16 SYMMETRY CONTAMINATION OF 0.250D-03 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  17 SYMMETRY CONTAMINATION OF 0.840D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  19 SYMMETRY CONTAMINATION OF 0.122D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  20 SYMMETRY CONTAMINATION OF 0.133D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  22 SYMMETRY CONTAMINATION OF 0.721D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  24 SYMMETRY CONTAMINATION OF 0.202D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  25 SYMMETRY CONTAMINATION OF 0.255D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  26 SYMMETRY CONTAMINATION OF 0.157D+00 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 1 5 4 6 3 2 3   6 4 5 2 1 2 4 6 5 3   1 2 6 3 4 5 1
 *** IN SYMMETRY  2 ORBITAL   7 SYMMETRY CONTAMINATION OF 0.157D-03 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL   8 SYMMETRY CONTAMINATION OF 0.296D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL   9 SYMMETRY CONTAMINATION OF 0.296D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  11 SYMMETRY CONTAMINATION OF 0.489D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  12 SYMMETRY CONTAMINATION OF 0.489D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  13 SYMMETRY CONTAMINATION OF 0.219D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  14 SYMMETRY CONTAMINATION OF 0.219D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  15 SYMMETRY CONTAMINATION OF 0.349D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  16 SYMMETRY CONTAMINATION OF 0.349D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  17 SYMMETRY CONTAMINATION OF 0.275D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  18 SYMMETRY CONTAMINATION OF 0.275D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  19 SYMMETRY CONTAMINATION OF 0.618D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  21 SYMMETRY CONTAMINATION OF 0.640D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  22 SYMMETRY CONTAMINATION OF 0.657D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  23 SYMMETRY CONTAMINATION OF 0.244D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  24 SYMMETRY CONTAMINATION OF 0.299D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  25 SYMMETRY CONTAMINATION OF 0.526D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  26 SYMMETRY CONTAMINATION OF 0.526D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  27 SYMMETRY CONTAMINATION OF 0.253D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  28 SYMMETRY CONTAMINATION OF 0.253D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  30 SYMMETRY CONTAMINATION OF 0.289D-03 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  32 SYMMETRY CONTAMINATION OF 0.289D-03 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   2 1 3 2 1 3 3 1 2 6   5 4 9 7 810 1 2 3 6   4 510 8 7 9 1 2 3 2   3 1
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Reoptimze the CI vectors with natural orbitals 
 
 CI Coefficients of symmetry 2 (Doublet)
 =======================================
 
 20 22a000      0.82021394      0.32966213     -0.41580487
 20 2a2000      0.06010607      0.70284957      0.67580431
 20 a22000      0.52721729     -0.59299839      0.56983907
 20 a2ab00      0.08435672      0.03390483     -0.04276437
 20 2aa0b0     -0.08435672     -0.03390483      0.04276437
 20 2aa00b      0.00618174      0.07228612      0.06950459
 20 aa2b00      0.00618174      0.07228612      0.06950459
 20 2ba0a0      0.06388682      0.02567753     -0.03238722
 20 b2aa00     -0.06388682     -0.02567753      0.03238722
 20 aa20b0      0.05422283     -0.06098823      0.05860636
 20 a2a00b      0.05422283     -0.06098823      0.05860636
 20 2ab00a     -0.00468169     -0.05474526     -0.05263869
 20 ba2a00     -0.00468169     -0.05474526     -0.05263869
 
 Energy:      -99.48792015    -99.48792015    -99.48792015
 
 
 CI Coefficients of symmetry 2 (Quartet)
 =======================================

 State:              1               2               3               4               5               6               7
 20 a2a0a0     -0.00000000      0.00000000      0.00000000      0.00000965      0.00004065      0.00006426      0.78944175
 20 aa200a      0.00000000     -0.00000000     -0.00000000     -0.00029873      0.00004920      0.00018096      0.22840791
 20 aa2a00     -0.06593952      0.69896115     -0.04789079      0.19739232      0.61632260     -0.27614567     -0.00003898
 20 2aa00a     -0.06593952      0.69896115     -0.04789079     -0.19739232     -0.61632260      0.27614567      0.00003898
 20 2aa0a0     -0.52456360     -0.01737010      0.46874252      0.67535679     -0.17938610      0.08238611     -0.00007190
 20 a2aa00      0.52456360      0.01737010     -0.46874252      0.67535679     -0.17938610      0.08238611     -0.00007190
 20 aa20a0      0.46440634      0.07962304      0.52266162     -0.00176187      0.28816800      0.64189547     -0.00002825
 20 a2a00a      0.46440634      0.07962304      0.52266162      0.00176187     -0.28816800     -0.64189547      0.00002825
 20 2aaa00     -0.00000000      0.00000000      0.00000000     -0.00030839      0.00000854      0.00011670     -0.56103385
 
 Energy:      -98.99130787    -98.99130787    -98.99130787    -98.97807318    -98.97807318    -98.97807318    -98.97807318

 State:              8
 20 a2a0a0      0.19204169
 20 aa200a      0.77969738
 20 aa2a00      0.00011225
 20 2aa00a     -0.00011225
 20 2aa0a0      0.00027201
 20 a2aa00      0.00027201
 20 aa20a0     -0.00015956
 20 a2a00a      0.00015956
 20 2aaa00      0.58765569
 
 Energy:      -98.97807318
 


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
 CPU TIMES  *         3.03      2.41      0.15      0.31
 REAL TIME  *         3.87 SEC
 DISK USED  *        34.80 MB (local),      467.01 MB (total)
 SF USED    *         3.47 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

        ENERGY      LL
    -99.48792015   2.0
    -99.48792015   2.0
    -99.48792015   2.0
    -98.99130787   2.0
    -98.99130787   2.0
    -98.99130787   2.0
    -98.97807318   6.0
    -98.97807318   6.0
    -98.97807318   6.0
    -98.97807318   6.0
    -98.97807318   6.0
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 3  Roots:    1   2   3
 Number of reference states: 3  Roots:    1   2   3

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


 Number of p-space configurations:   6

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1       -99.48792015
     2       -99.48792015
     3       -99.48792015

 Number of blocks in overlap matrix:    14   Smallest eigenvalue:  0.36D-06
 Number of N-2 electron functions:     192
 Number of N-1 electron functions:    2688

 Number of internal configurations:                 1204
 Number of singly external configurations:         67232
 Number of doubly external configurations:        120648
 Total number of contracted configurations:       189084
 Total number of uncontracted configurations:    1637598

 Diagonal Coupling coefficients finished.               Storage:  510456 words, CPU-Time:      0.07 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   58596 words, CPU-time:      0.01 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000   -99.48792015    -0.00000000    -0.23143882  0.38D-01  0.13D-01     0.20
    1     2     2     1.00000000     0.00000000   -99.48792015    -0.00000000    -0.23147278  0.38D-01  0.13D-01     0.20
    1     3     3     1.00000000     0.00000000   -99.48792015     0.00000000    -0.23144441  0.38D-01  0.13D-01     0.20
    2     1     1     1.04373932    -0.21505398   -99.70297413    -0.21505398    -0.01008047  0.71D-03  0.92D-03     0.67
    2     2     2     1.04373712    -0.21505139   -99.70297154    -0.21505139    -0.01008114  0.71D-03  0.92D-03     0.67
    2     3     3     1.04374703    -0.21504309   -99.70296324    -0.21504309    -0.01009323  0.71D-03  0.92D-03     0.67
    3     1     1     1.04545492    -0.22514842   -99.71306857    -0.01009444    -0.00059602  0.32D-04  0.62D-04     1.15
    3     2     2     1.04545384    -0.22514829   -99.71306844    -0.01009690    -0.00059625  0.32D-04  0.62D-04     1.15
    3     3     3     1.04545599    -0.22514736   -99.71306750    -0.01010426    -0.00059692  0.32D-04  0.62D-04     1.15
    4     1     1     1.04694990    -0.22582985   -99.71375000    -0.00068143    -0.00004453  0.24D-05  0.45D-05     1.64
    4     2     2     1.04694979    -0.22582985   -99.71375000    -0.00068156    -0.00004452  0.24D-05  0.45D-05     1.64
    4     3     3     1.04694868    -0.22582977   -99.71374992    -0.00068241    -0.00004460  0.25D-05  0.45D-05     1.64
    5     1     1     1.04735523    -0.22588124   -99.71380139    -0.00005139    -0.00000321  0.21D-06  0.31D-06     2.11
    5     2     2     1.04735531    -0.22588124   -99.71380139    -0.00005139    -0.00000321  0.21D-06  0.31D-06     2.11
    5     3     3     1.04735491    -0.22588123   -99.71380138    -0.00005146    -0.00000322  0.22D-06  0.31D-06     2.11
    6     1     1     1.04732584    -0.22588495   -99.71380510    -0.00000371    -0.00000026  0.13D-07  0.28D-07     2.59
    6     2     2     1.04732584    -0.22588495   -99.71380510    -0.00000371    -0.00000026  0.13D-07  0.28D-07     2.59
    6     3     3     1.04732589    -0.22588495   -99.71380510    -0.00000372    -0.00000026  0.13D-07  0.28D-07     2.59
    7     1     1     1.04732963    -0.22588523   -99.71380538    -0.00000028    -0.00000002  0.10D-08  0.26D-08     3.06
    7     2     2     1.04732963    -0.22588523   -99.71380538    -0.00000028    -0.00000002  0.10D-08  0.26D-08     3.06
    7     3     3     1.04732963    -0.22588523   -99.71380538    -0.00000028    -0.00000002  0.10D-08  0.26D-08     3.06


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   3.9%
 S   1.3%   4.6%
 P   4.9%  24.8%  37.6%

 Initialization:   4.6%
 Other:           18.3%

 Total CPU:        3.1 seconds
 =====================================



 gnormi=  0.95480924  gnorms=  0.02904000  gnormp=  0.01615077  gnorm=  1.00000000
 ecorri= -0.21567731  ecorrs= -0.00655707  ecorrp= -0.00365086  ecorr= -0.22588523

 gnormi=  0.95480923  gnorms=  0.02904000  gnormp=  0.01615077  gnorm=  1.00000000
 ecorri= -0.21567731  ecorrs= -0.00655707  ecorrp= -0.00365085  ecorr= -0.22588523

 gnormi=  0.95480923  gnorms=  0.02904001  gnormp=  0.01615076  gnorm=  1.00000000
 ecorri= -0.21567730  ecorrs= -0.00655707  ecorrp= -0.00365086  ecorr= -0.22588523

 Wavefunction saved on  5201.2

 Reference coefficients greater than 0.0500000
 =============================================
 2022/000           0.0000000   0.0000000   0.9675014
 202/2000           0.0000000   0.9675014  -0.0000000
 20/22000           0.9675014  -0.0000000  -0.0000000
 20//20\0           0.0721408   0.0000000  -0.0000000
 20//2\00          -0.0000000   0.0721408   0.0000000
 20/2/00\           0.0721408   0.0000000  -0.0000000
 20/2/\00           0.0000000  -0.0000000   0.0721407
 202//00\          -0.0000000   0.0721407   0.0000000
 202//0\0          -0.0000000   0.0000000  -0.0721407
 /\/22000           0.0517750  -0.0000000  -0.0000000
 /\2/2000           0.0000000   0.0517750   0.0000000
 /\22/000           0.0000000  -0.0000000   0.0517750

 Coefficients of singly external configurations greater than 0.0500000
 =====================================================================

 202/\000   8.2    -0.0000000   0.0000000  -0.0775209
 20/2\000   7.2     0.0775209  -0.0000000  -0.0000000
 20/2\000   9.2     0.0000000  -0.0000000   0.0775209
 202/\000   7.2     0.0000000   0.0775209   0.0000000
 20/\2000   9.2     0.0000000   0.0775209   0.0000000
 20/\2000   8.2     0.0775208  -0.0000000  -0.0000000

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.000000    0.973829    0.000000
 2           0.000000   -0.000000    0.973829
 3           0.973829   -0.000000   -0.000000

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.973829    0.000000   -0.000000
 2           0.000000    0.973829   -0.000000
 3          -0.000000   -0.000000    0.973829


 RESULTS FOR STATE 1.2
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.97382931 (fixed)   0.97714341 (relaxed)   0.97382931 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00681789    0.00000001   -0.12512970
 Singles      0.03062181   -0.09547975   -0.09710467
 Pairs        0.01703050   -0.00000000   -0.00365086
 Total        1.05447021   -0.09547974   -0.22588523
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -99.48792015
 Nuclear energy                         0.00000000
 Kinetic energy                       100.30868398
 One electron energy                 -139.09739779
 Two electron energy                   39.38359241
 Virial quotient                       -0.99406952
 Correlation energy                    -0.22588523
 !MRCI STATE 1.2 Energy               -99.713805380221

 Properties without orbital relaxation:

 !MRCI STATE 1.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -99.72610940 (Davidson, fixed reference)
 Cluster corrected energies           -99.72449644 (Davidson, relaxed reference)
 Cluster corrected energies           -99.72610940 (Davidson, rotated reference)

 Cluster corrected energies           -99.72215404 (Pople, fixed reference)
 Cluster corrected energies           -99.72104329 (Pople, relaxed reference)
 Cluster corrected energies           -99.72215404 (Pople, rotated reference)



 RESULTS FOR STATE 2.2
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.97382931 (fixed)   0.97714340 (relaxed)   0.97382931 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00681790    0.00000001   -0.00146035
 Singles      0.03062182   -0.09547975   -0.09710467
 Pairs        0.01703050   -0.13040566   -0.12732022
 Total        1.05447021   -0.22588540   -0.22588523
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -99.48792015
 Nuclear energy                         0.00000000
 Kinetic energy                       100.30868425
 One electron energy                 -139.09739794
 Two electron energy                   39.38359256
 Virial quotient                       -0.99406952
 Correlation energy                    -0.22588523
 !MRCI STATE 2.2 Energy               -99.713805379835

 Properties without orbital relaxation:

 !MRCI STATE 2.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -99.72610940 (Davidson, fixed reference)
 Cluster corrected energies           -99.72449644 (Davidson, relaxed reference)
 Cluster corrected energies           -99.72610940 (Davidson, rotated reference)

 Cluster corrected energies           -99.72215404 (Pople, fixed reference)
 Cluster corrected energies           -99.72104329 (Pople, relaxed reference)
 Cluster corrected energies           -99.72215404 (Pople, rotated reference)



 RESULTS FOR STATE 3.2
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.97382930 (fixed)   0.97714340 (relaxed)   0.97382930 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00681791    0.00000001   -0.12512970
 Singles      0.03062183   -0.09547975   -0.09710468
 Pairs        0.01703049    0.00000000   -0.00365086
 Total        1.05447023   -0.09547975   -0.22588523
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -99.48792015
 Nuclear energy                         0.00000000
 Kinetic energy                       100.30868542
 One electron energy                 -139.09739863
 Two electron energy                   39.38359325
 Virial quotient                       -0.99406951
 Correlation energy                    -0.22588523
 !MRCI STATE 3.2 Energy               -99.713805378994

 Properties without orbital relaxation:

 !MRCI STATE 3.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -99.72610940 (Davidson, fixed reference)
 Cluster corrected energies           -99.72449644 (Davidson, relaxed reference)
 Cluster corrected energies           -99.72610940 (Davidson, rotated reference)

 Cluster corrected energies           -99.72215404 (Pople, fixed reference)
 Cluster corrected energies           -99.72104329 (Pople, relaxed reference)
 Cluster corrected energies           -99.72215404 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       29.65       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       6        9.80       700     1000      520     2100     2140     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *         6.34      3.31      2.41      0.15      0.31
 REAL TIME  *         7.55 SEC
 DISK USED  *        39.49 MB (local),      523.36 MB (total)
 SF USED    *        49.81 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =       -99.72610940  AU                              
 SETTING HLSDIAG(2)     =       -99.72610940  AU                              
 SETTING HLSDIAG(3)     =       -99.72610940  AU                              


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
     1       -98.99130787
     2       -98.99130787
     3       -98.99130787
     4       -98.97807318
     5       -98.97807318
     6       -98.97807318
     7       -98.97807318
     8       -98.97807318

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1086D-06

 Number of blocks in overlap matrix:    10   Smallest eigenvalue:  0.11D-06
 Number of N-2 electron functions:     450
 Number of N-1 electron functions:    1932

 Number of internal configurations:                  656
 Number of singly external configurations:         48256
 Number of doubly external configurations:        281366
 Total number of contracted configurations:       330278
 Total number of uncontracted configurations:    1322822

 Diagonal Coupling coefficients finished.               Storage:  718943 words, CPU-Time:      0.22 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   85243 words, CPU-time:      0.00 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000   -98.99130787    -0.00000000    -0.17079739  0.20D-01  0.89D-02     0.53
    1     2     2     1.00000000     0.00000000   -98.99130787    -0.00000000    -0.17105708  0.20D-01  0.89D-02     0.53
    1     3     3     1.00000000     0.00000000   -98.99130787     0.00000000    -0.17097865  0.20D-01  0.89D-02     0.53
    1     4     4     1.00000000     0.00000000   -98.97807318    -0.00000000    -0.17239883  0.21D-01  0.89D-02     0.53
    1     5     5     1.00000000     0.00000000   -98.97807318    -0.00000000    -0.17259992  0.21D-01  0.89D-02     0.53
    1     6     6     1.00000000     0.00000000   -98.97807318    -0.00000000    -0.17268340  0.21D-01  0.89D-02     0.53
    1     7     7     1.00000000     0.00000000   -98.97807318     0.00000000    -0.17262999  0.21D-01  0.90D-02     0.53
    1     8     8     1.00000000     0.00000000   -98.97807318    -0.00000000    -0.17515693  0.21D-01  0.97D-02     0.53
    2     1     1     1.02771913    -0.16705695   -99.15836482    -0.16705695    -0.00527757  0.35D-03  0.44D-03     3.18
    2     2     2     1.02771269    -0.16705602   -99.15836389    -0.16705602    -0.00527514  0.35D-03  0.44D-03     3.18
    2     3     3     1.02769919    -0.16702629   -99.15833416    -0.16702629    -0.00528670  0.35D-03  0.44D-03     3.18
    2     4     4     1.02858701    -0.16871024   -99.14678342    -0.16871024    -0.00521513  0.32D-03  0.45D-03     3.18
    2     5     5     1.02869458    -0.16859160   -99.14666478    -0.16859160    -0.00529553  0.34D-03  0.44D-03     3.18
    2     6     6     1.02886489    -0.16841620   -99.14648938    -0.16841620    -0.00542166  0.35D-03  0.45D-03     3.18
    2     7     7     1.02885636    -0.16841253   -99.14648571    -0.16841253    -0.00542193  0.35D-03  0.45D-03     3.18
    2     8     8     1.02884512    -0.16838781   -99.14646098    -0.16838781    -0.00543528  0.35D-03  0.45D-03     3.18
    3     1     1     1.02891471    -0.17271186   -99.16401973    -0.00565491    -0.00041373  0.29D-04  0.37D-04     5.72
    3     2     2     1.02891498    -0.17271031   -99.16401818    -0.00565429    -0.00041480  0.29D-04  0.37D-04     5.72
    3     3     3     1.02891128    -0.17270427   -99.16401214    -0.00567798    -0.00041879  0.29D-04  0.38D-04     5.72
    3     4     4     1.02980360    -0.17432275   -99.15239593    -0.00561251    -0.00042316  0.30D-04  0.40D-04     5.72
    3     5     5     1.02985221    -0.17431773   -99.15239091    -0.00572613    -0.00042429  0.29D-04  0.39D-04     5.72
    3     6     6     1.02987708    -0.17429603   -99.15236921    -0.00587983    -0.00044007  0.29D-04  0.41D-04     5.72
    3     7     7     1.02987627    -0.17429430   -99.15236748    -0.00588177    -0.00044128  0.29D-04  0.41D-04     5.72
    3     8     8     1.02987354    -0.17429047   -99.15236365    -0.00590266    -0.00044409  0.29D-04  0.41D-04     5.72
    4     1     1     1.02980084    -0.17321253   -99.16452040    -0.00050067    -0.00005286  0.52D-05  0.46D-05     8.33
    4     2     2     1.02980088    -0.17321233   -99.16452020    -0.00050202    -0.00005300  0.52D-05  0.47D-05     8.33
    4     3     3     1.02980105    -0.17321213   -99.16452000    -0.00050786    -0.00005321  0.52D-05  0.46D-05     8.33
    4     4     4     1.03093437    -0.17485896   -99.15293214    -0.00053621    -0.00006488  0.63D-05  0.59D-05     8.33
    4     5     5     1.03094127    -0.17485737   -99.15293055    -0.00053964    -0.00006525  0.62D-05  0.61D-05     8.33
    4     6     6     1.03093788    -0.17485712   -99.15293030    -0.00056109    -0.00006660  0.63D-05  0.61D-05     8.33
    4     7     7     1.03093864    -0.17485698   -99.15293015    -0.00056268    -0.00006674  0.64D-05  0.61D-05     8.33
    4     8     8     1.03093726    -0.17485665   -99.15292982    -0.00056618    -0.00006703  0.64D-05  0.61D-05     8.33
    5     1     1     1.02989936    -0.17327717   -99.16458504    -0.00006464    -0.00000719  0.57D-06  0.65D-06    10.91
    5     2     2     1.02990075    -0.17327714   -99.16458501    -0.00006481    -0.00000721  0.57D-06  0.65D-06    10.91
    5     3     3     1.02990096    -0.17327714   -99.16458501    -0.00006501    -0.00000720  0.57D-06  0.65D-06    10.91
    5     4     4     1.03112230    -0.17494406   -99.15301724    -0.00008509    -0.00001234  0.11D-05  0.11D-05    10.91
    5     5     5     1.03112007    -0.17494388   -99.15301706    -0.00008652    -0.00001247  0.11D-05  0.11D-05    10.91
    5     6     6     1.03111851    -0.17494388   -99.15301706    -0.00008676    -0.00001247  0.11D-05  0.11D-05    10.91
    5     7     7     1.03112024    -0.17494387   -99.15301705    -0.00008689    -0.00001246  0.11D-05  0.11D-05    10.91
    5     8     8     1.03113256    -0.17494332   -99.15301650    -0.00008667    -0.00001279  0.11D-05  0.12D-05    10.91
    6     1     1     1.02987197    -0.17328658   -99.16459445    -0.00000941    -0.00000131  0.84D-07  0.12D-06    13.46
    6     2     2     1.02987192    -0.17328658   -99.16459445    -0.00000944    -0.00000130  0.83D-07  0.12D-06    13.46
    6     3     3     1.02987198    -0.17328657   -99.16459444    -0.00000943    -0.00000131  0.84D-07  0.12D-06    13.46
    6     4     4     1.03107461    -0.17496132   -99.15303450    -0.00001726    -0.00000295  0.21D-06  0.25D-06    13.46
    6     5     5     1.03106989    -0.17496125   -99.15303442    -0.00001736    -0.00000295  0.21D-06  0.25D-06    13.46
    6     6     6     1.03106979    -0.17496124   -99.15303441    -0.00001735    -0.00000295  0.21D-06  0.25D-06    13.46
    6     7     7     1.03107000    -0.17496124   -99.15303441    -0.00001737    -0.00000295  0.21D-06  0.25D-06    13.46
    6     8     8     1.03107225    -0.17496121   -99.15303439    -0.00001789    -0.00000303  0.22D-06  0.26D-06    13.46
    7     1     1     1.02988374    -0.17328826   -99.16459613    -0.00000168    -0.00000032  0.35D-07  0.27D-07    16.08
    7     2     2     1.02988377    -0.17328825   -99.16459613    -0.00000168    -0.00000032  0.35D-07  0.27D-07    16.08
    7     3     3     1.02988376    -0.17328825   -99.16459612    -0.00000168    -0.00000032  0.35D-07  0.27D-07    16.08
    7     4     4     1.03110812    -0.17496513   -99.15303831    -0.00000381    -0.00000076  0.80D-07  0.63D-07    16.08
    7     5     5     1.03110857    -0.17496511   -99.15303829    -0.00000386    -0.00000078  0.82D-07  0.64D-07    16.08
    7     6     6     1.03110862    -0.17496510   -99.15303828    -0.00000387    -0.00000078  0.82D-07  0.64D-07    16.08
    7     7     7     1.03110857    -0.17496510   -99.15303828    -0.00000387    -0.00000078  0.82D-07  0.63D-07    16.08
    7     8     8     1.03110765    -0.17496509   -99.15303827    -0.00000388    -0.00000079  0.84D-07  0.67D-07    16.08
    8     1     1     1.02988410    -0.17328862   -99.16459649    -0.00000037    -0.00000007  0.54D-08  0.59D-08    18.65
    8     2     2     1.02988409    -0.17328862   -99.16459649    -0.00000037    -0.00000007  0.54D-08  0.59D-08    18.65
    8     3     3     1.02988410    -0.17328861   -99.16459649    -0.00000036    -0.00000007  0.54D-08  0.58D-08    18.65
    8     4     4     1.03111414    -0.17496601   -99.15303919    -0.00000087    -0.00000018  0.16D-07  0.16D-07    18.65
    8     5     5     1.03111462    -0.17496600   -99.15303918    -0.00000090    -0.00000019  0.17D-07  0.17D-07    18.65
    8     6     6     1.03111467    -0.17496600   -99.15303918    -0.00000090    -0.00000019  0.17D-07  0.17D-07    18.65
    8     7     7     1.03111459    -0.17496600   -99.15303918    -0.00000090    -0.00000019  0.17D-07  0.17D-07    18.65
    8     8     8     1.03111415    -0.17496600   -99.15303917    -0.00000091    -0.00000020  0.16D-07  0.18D-07    18.65
    9     1     1     1.02988458    -0.17328870   -99.16459657    -0.00000008    -0.00000001  0.95D-09  0.14D-08    21.25
    9     2     2     1.02988456    -0.17328870   -99.16459657    -0.00000008    -0.00000001  0.95D-09  0.14D-08    21.25
    9     3     3     1.02988460    -0.17328869   -99.16459656    -0.00000008    -0.00000001  0.96D-09  0.13D-08    21.25
    9     4     4     1.03111548    -0.17496624   -99.15303942    -0.00000024    -0.00000006  0.45D-08  0.50D-08    21.25
    9     5     5     1.03111542    -0.17496624   -99.15303942    -0.00000023    -0.00000005  0.42D-08  0.47D-08    21.25
    9     6     6     1.03111583    -0.17496624   -99.15303942    -0.00000024    -0.00000005  0.43D-08  0.46D-08    21.25
    9     7     7     1.03111547    -0.17496623   -99.15303941    -0.00000024    -0.00000005  0.42D-08  0.47D-08    21.25
    9     8     8     1.03111542    -0.17496623   -99.15303941    -0.00000023    -0.00000005  0.42D-08  0.47D-08    21.25


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.8%
 S   0.6%   1.6%
 P   2.2%  15.9%  53.0%

 Initialization:   2.0%
 Other:           24.0%

 Total CPU:       21.3 seconds
 =====================================



 gnormi=  0.97098259  gnorms=  0.01772077  gnormp=  0.01129663  gnorm=  1.00000000
 ecorri= -0.16826031  ecorrs= -0.00307015  ecorrp= -0.00195824  ecorr= -0.17328870

 gnormi=  0.97098261  gnorms=  0.01772076  gnormp=  0.01129663  gnorm=  1.00000000
 ecorri= -0.16826031  ecorrs= -0.00307015  ecorrp= -0.00195824  ecorr= -0.17328870

 gnormi=  0.97098257  gnorms=  0.01772077  gnormp=  0.01129666  gnorm=  1.00000000
 ecorri= -0.16826030  ecorrs= -0.00307018  ecorrp= -0.00195821  ecorr= -0.17328869

 gnormi=  0.96982348  gnorms=  0.01862997  gnormp=  0.01154655  gnorm=  1.00000000
 ecorri= -0.16968637  ecorrs= -0.00326012  ecorrp= -0.00201975  ecorr= -0.17496624

 gnormi=  0.96982354  gnorms=  0.01862965  gnormp=  0.01154681  gnorm=  1.00000000
 ecorri= -0.16968638  ecorrs= -0.00326002  ecorrp= -0.00201984  ecorr= -0.17496624

 gnormi=  0.96982315  gnorms=  0.01863010  gnormp=  0.01154676  gnorm=  1.00000000
 ecorri= -0.16968631  ecorrs= -0.00325992  ecorrp= -0.00202001  ecorr= -0.17496624

 gnormi=  0.96982349  gnorms=  0.01862973  gnormp=  0.01154679  gnorm=  1.00000000
 ecorri= -0.16968636  ecorrs= -0.00325996  ecorrp= -0.00201991  ecorr= -0.17496623

 gnormi=  0.96982354  gnorms=  0.01862966  gnormp=  0.01154681  gnorm=  1.00000000
 ecorri= -0.16968637  ecorrs= -0.00326001  ecorrp= -0.00201986  ecorr= -0.17496623

 Wavefunction saved on  5203.2

 Reference coefficients greater than 0.0500000
 =============================================
 20//200/           0.0000000  -0.0000000   0.0000000   0.7966204  -0.0002915   0.0765564  -0.0000063  -0.0000175
 20/2/0/0          -0.0000000  -0.0000000   0.0000000   0.3317812  -0.0050911   0.7280294   0.0000684  -0.0000343
 202//00/           0.6932491  -0.0002221   0.0000132  -0.0002218   0.6929246   0.0049466   0.0000702  -0.0000202
 20/2/00/           0.0002221   0.6932491  -0.0001897   0.0000126   0.0000199   0.0000270   0.0010561   0.6929414
 20/2//00          -0.0000132   0.0001897   0.6932490   0.0000123  -0.0000697  -0.0000713   0.6929415  -0.0010561
 202//0/0           0.0000132  -0.0001897  -0.6932485   0.0000123  -0.0000697  -0.0000713   0.6929421  -0.0010561
 20//2/00           0.6932483  -0.0002221   0.0000132   0.0002218  -0.6929253  -0.0049467  -0.0000702   0.0000202
 20//20/0           0.0002221   0.6932483  -0.0001897  -0.0000126  -0.0000199  -0.0000270  -0.0010561  -0.6929422
 202///00           0.0000000  -0.0000000  -0.0000000   0.4643877   0.0047993  -0.6514614  -0.0000747   0.0000169
 20/\///0          -0.0000000   0.0000000   0.0000008   0.0000009  -0.0000052  -0.0000053   0.0519010  -0.0000791

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1          -0.000019    0.000316    0.985329    0.000000    0.000001    0.000000   -0.000000    0.000000
 2           0.000270    0.985329   -0.000316    0.000000   -0.000000    0.000001    0.000000   -0.000000
 3           0.985329   -0.000270    0.000019    0.000000    0.000000   -0.000000    0.000000    0.000000
 4          -0.000000    0.000000   -0.000000    0.000017   -0.000315    0.000018   -0.093121    0.980361
 5          -0.000000    0.000000   -0.000001   -0.000099    0.984748    0.000028   -0.007028   -0.000351
 6          -0.000000   -0.000000   -0.000000   -0.000101    0.007030    0.000038    0.980336    0.093121
 7          -0.000000   -0.000000   -0.000000    0.984772    0.000100    0.001501    0.000102   -0.000008
 8           0.000000   -0.000001    0.000000   -0.001501   -0.000029    0.984772   -0.000036   -0.000021

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.985329    0.000000   -0.000000   -0.000000    0.000000    0.000000    0.000000   -0.000000
 2           0.000000    0.985329   -0.000000    0.000000   -0.000000    0.000000    0.000000    0.000000
 3          -0.000000   -0.000000    0.985329    0.000000    0.000000    0.000000   -0.000000   -0.000000
 4          -0.000000    0.000000    0.000000    0.984774   -0.000000    0.000000   -0.000000   -0.000000
 5           0.000000   -0.000000    0.000000   -0.000000    0.984774    0.000000   -0.000000    0.000000
 6           0.000000    0.000000    0.000000    0.000000    0.000000    0.984773   -0.000000    0.000000
 7           0.000000    0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.984774    0.000000
 8          -0.000000    0.000000   -0.000000   -0.000000    0.000000    0.000000    0.000000    0.984774


 RESULTS FOR STATE 1.2
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.98532924 (fixed)   0.98538449 (relaxed)   0.98532929 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00011204   -0.00000000   -0.09441354
 Singles      0.01825240   -0.07606217   -0.07691692
 Pairs        0.01163553   -0.00000000   -0.00195824
 Total        1.02999997   -0.07606217   -0.17328870
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -98.99130787
 Nuclear energy                         0.00000000
 Kinetic energy                        99.86441282
 One electron energy                 -135.35779021
 Two electron energy                   36.19319363
 Virial quotient                       -0.99299234
 Correlation energy                    -0.17328870
 !MRCI STATE 1.2 Energy               -99.164596573901

 Properties without orbital relaxation:

 !MRCI STATE 1.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -99.16979523 (Davidson, fixed reference)
 Cluster corrected energies           -99.16977523 (Davidson, relaxed reference)
 Cluster corrected energies           -99.16979523 (Davidson, rotated reference)

 Cluster corrected energies           -99.16719532 (Pople, fixed reference)
 Cluster corrected energies           -99.16718533 (Pople, relaxed reference)
 Cluster corrected energies           -99.16719532 (Pople, rotated reference)



 RESULTS FOR STATE 2.2
 =====================

 Coefficient of reference function:   C(0) = 0.98532921 (fixed)   0.98538450 (relaxed)   0.98532930 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00011204   -0.00000000   -0.09441355
 Singles      0.01825238   -0.07606217   -0.07691692
 Pairs        0.01163553    0.00000000   -0.00195824
 Total        1.02999996   -0.07606217   -0.17328870
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -98.99130787
 Nuclear energy                         0.00000000
 Kinetic energy                        99.86441280
 One electron energy                 -135.35779021
 Two electron energy                   36.19319364
 Virial quotient                       -0.99299234
 Correlation energy                    -0.17328870
 !MRCI STATE 2.2 Energy               -99.164596570202

 Properties without orbital relaxation:

 !MRCI STATE 2.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -99.16979522 (Davidson, fixed reference)
 Cluster corrected energies           -99.16977523 (Davidson, relaxed reference)
 Cluster corrected energies           -99.16979522 (Davidson, rotated reference)

 Cluster corrected energies           -99.16719531 (Pople, fixed reference)
 Cluster corrected energies           -99.16718532 (Pople, relaxed reference)
 Cluster corrected energies           -99.16719531 (Pople, rotated reference)



 RESULTS FOR STATE 3.2
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.98532924 (fixed)   0.98538448 (relaxed)   0.98532928 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00011205   -0.00000000   -0.09441358
 Singles      0.01825239   -0.07606212   -0.07691690
 Pairs        0.01163556    0.00000000   -0.00195821
 Total        1.02999999   -0.07606212   -0.17328869
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -98.99130787
 Nuclear energy                         0.00000000
 Kinetic energy                        99.86441453
 One electron energy                 -135.35779215
 Two electron energy                   36.19319558
 Virial quotient                       -0.99299232
 Correlation energy                    -0.17328869
 !MRCI STATE 3.2 Energy               -99.164596563441

 Properties without orbital relaxation:

 !MRCI STATE 3.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -99.16979522 (Davidson, fixed reference)
 Cluster corrected energies           -99.16977523 (Davidson, relaxed reference)
 Cluster corrected energies           -99.16979522 (Davidson, rotated reference)

 Cluster corrected energies           -99.16719531 (Pople, fixed reference)
 Cluster corrected energies           -99.16718532 (Pople, relaxed reference)
 Cluster corrected energies           -99.16719531 (Pople, rotated reference)



 RESULTS FOR STATE 4.2
 =====================

 Maximum overlap with reference state  8

 Coefficient of reference function:   C(0) = 0.98036080 (fixed)   0.98479616 (relaxed)   0.98477356 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00004589   -0.00000000   -0.00043399
 Singles      0.01921053   -0.07688545   -0.07782202
 Pairs        0.01190638   -0.09764131   -0.09671024
 Total        1.03116280   -0.17452676   -0.17496624
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -98.97807318
 Nuclear energy                         0.00000000
 Kinetic energy                        99.87891302
 One electron energy                 -135.35334032
 Two electron energy                   36.20030090
 Virial quotient                       -0.99273246
 Correlation energy                    -0.17496624
 !MRCI STATE 4.2 Energy               -99.153039422981

 Properties without orbital relaxation:

 !MRCI STATE 4.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -99.15849186 (Davidson, fixed reference)
 Cluster corrected energies           -99.15848358 (Davidson, relaxed reference)
 Cluster corrected energies           -99.15849186 (Davidson, rotated reference)

 Cluster corrected energies           -99.15576498 (Pople, fixed reference)
 Cluster corrected energies           -99.15576084 (Pople, relaxed reference)
 Cluster corrected energies           -99.15576498 (Pople, rotated reference)



 RESULTS FOR STATE 5.2
 =====================

 Coefficient of reference function:   C(0) = 0.98474848 (fixed)   0.98479619 (relaxed)   0.98477363 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00004582   -0.00000000   -0.09515846
 Singles      0.01921020   -0.07688537   -0.07782184
 Pairs        0.01190664    0.00003496   -0.00198594
 Total        1.03116267   -0.07685041   -0.17496624
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -98.97807318
 Nuclear energy                         0.00000000
 Kinetic energy                        99.87893244
 One electron energy                 -135.35336291
 Two electron energy                   36.20032349
 Virial quotient                       -0.99273227
 Correlation energy                    -0.17496624
 !MRCI STATE 5.2 Energy               -99.153039417362

 Properties without orbital relaxation:

 !MRCI STATE 5.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -99.15849183 (Davidson, fixed reference)
 Cluster corrected energies           -99.15848356 (Davidson, relaxed reference)
 Cluster corrected energies           -99.15849183 (Davidson, rotated reference)

 Cluster corrected energies           -99.15576496 (Pople, fixed reference)
 Cluster corrected energies           -99.15576083 (Pople, relaxed reference)
 Cluster corrected energies           -99.15576496 (Pople, rotated reference)



 RESULTS FOR STATE 6.2
 =====================

 Maximum overlap with reference state  7

 Coefficient of reference function:   C(0) = 0.98033552 (fixed)   0.98479599 (relaxed)   0.98477343 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00004582   -0.00000000   -0.08612999
 Singles      0.01921067   -0.07688558   -0.07782192
 Pairs        0.01190659   -0.00927461   -0.01101433
 Total        1.03116308   -0.08616019   -0.17496624
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -98.97807318
 Nuclear energy                         0.00000000
 Kinetic energy                        99.87892940
 One electron energy                 -135.35335402
 Two electron energy                   36.20031460
 Virial quotient                       -0.99273230
 Correlation energy                    -0.17496624
 !MRCI STATE 6.2 Energy               -99.153039416940

 Properties without orbital relaxation:

 !MRCI STATE 6.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -99.15849190 (Davidson, fixed reference)
 Cluster corrected energies           -99.15848364 (Davidson, relaxed reference)
 Cluster corrected energies           -99.15849190 (Davidson, rotated reference)

 Cluster corrected energies           -99.15576500 (Pople, fixed reference)
 Cluster corrected energies           -99.15576087 (Pople, relaxed reference)
 Cluster corrected energies           -99.15576500 (Pople, rotated reference)



 RESULTS FOR STATE 7.2
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.98477245 (fixed)   0.98479617 (relaxed)   0.98477360 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00004582   -0.00000000   -0.09512526
 Singles      0.01921028   -0.07688541   -0.07782183
 Pairs        0.01190662    0.00000079   -0.00201914
 Total        1.03116272   -0.07688463   -0.17496623
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -98.97807318
 Nuclear energy                         0.00000000
 Kinetic energy                        99.87893492
 One electron energy                 -135.35336435
 Two electron energy                   36.20032494
 Virial quotient                       -0.99273225
 Correlation energy                    -0.17496623
 !MRCI STATE 7.2 Energy               -99.153039411168

 Properties without orbital relaxation:

 !MRCI STATE 7.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -99.15849183 (Davidson, fixed reference)
 Cluster corrected energies           -99.15848357 (Davidson, relaxed reference)
 Cluster corrected energies           -99.15849183 (Davidson, rotated reference)

 Cluster corrected energies           -99.15576496 (Pople, fixed reference)
 Cluster corrected energies           -99.15576083 (Pople, relaxed reference)
 Cluster corrected energies           -99.15576496 (Pople, rotated reference)



 RESULTS FOR STATE 8.2
 =====================

 Maximum overlap with reference state  6

 Coefficient of reference function:   C(0) = 0.98477248 (fixed)   0.98479619 (relaxed)   0.98477363 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00004582   -0.00000000   -0.09512661
 Singles      0.01921021   -0.07688538   -0.07782184
 Pairs        0.01190664    0.00000214   -0.00201778
 Total        1.03116266   -0.07688324   -0.17496623
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -98.97807318
 Nuclear energy                         0.00000000
 Kinetic energy                        99.87893220
 One electron energy                 -135.35336305
 Two electron energy                   36.20032364
 Virial quotient                       -0.99273227
 Correlation energy                    -0.17496623
 !MRCI STATE 8.2 Energy               -99.153039409626

 Properties without orbital relaxation:

 !MRCI STATE 8.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -99.15849182 (Davidson, fixed reference)
 Cluster corrected energies           -99.15848356 (Davidson, relaxed reference)
 Cluster corrected energies           -99.15849182 (Davidson, rotated reference)

 Cluster corrected energies           -99.15576496 (Pople, fixed reference)
 Cluster corrected energies           -99.15576082 (Pople, relaxed reference)
 Cluster corrected energies           -99.15576496 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       29.65       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7       32.60       700     1000      520     2100     2140     5201     5203   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *        29.49     23.14      3.31      2.41      0.15      0.31
 REAL TIME  *        33.57 SEC
 DISK USED  *        62.29 MB (local),      796.96 MB (total)
 SF USED    *       219.00 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(4)     =       -99.16979523  AU                              
 SETTING HLSDIAG(5)     =       -99.16979522  AU                              
 SETTING HLSDIAG(6)     =       -99.16979522  AU                              
 SETTING HLSDIAG(7)     =       -99.15849186  AU                              
 SETTING HLSDIAG(8)     =       -99.15849183  AU                              
 SETTING HLSDIAG(9)     =       -99.15849190  AU                              
 SETTING HLSDIAG(10)    =       -99.15849183  AU                              
 SETTING HLSDIAG(11)    =       -99.15849182  AU                              


        HLSDIAG
    -99.72610940
    -99.72610940
    -99.72610940
    -99.16979523
    -99.16979522
    -99.16979522
    -99.15849186
    -99.15849183
    -99.15849190
    -99.15849183
    -99.15849182
                                                  


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

 Time for Seward_LS:       1.91 sec

 CPU time:      1.91 sec, REAL time:      3.39 sec


 SORTLS1 read      953880. and wrote      953880. SO integrals in    36 records. CPU time:      0.01 sec, REAL time:      0.02 sec
 SORTLS2 read      953880. and wrote      953880. SO integrals in    36 records. CPU time:      0.00 sec, REAL time:      0.01 sec

 FILE SIZES: FILE 1:    31.1 MBYTE, FILE 4:     0.0 MBYTE, TOTAL:    31.1 MBYTE
 Preparing effective Fock matrices
 eXact-2-Component (X2C) method activated

 Computing Douglas-Kroll / X2C integrals

  
 Total X Y Z Fock matrices evaluated:     3    3    3
  
 Wavefunction restored from record  5201.2  Symmetry=2  S= 0.5  NSTATE=   3

 Original energies: -99.713805 -99.713805 -99.713805
 Replaced energies: -99.726109 -99.726109 -99.726109

 Wavefunction restored from record  5203.2  Symmetry=2  S= 1.5  NSTATE=   8

 Original energies: -99.164597 -99.164597 -99.164597 -99.153039 -99.153039 -99.153039 -99.153039 -99.153039
 Replaced energies: -99.169795 -99.169795 -99.169795 -99.158492 -99.158492 -99.158492 -99.158492 -99.158492

 >>> Fock matrix approximation error in all internal so: 
  -1.6487322147321058E-003  (exact)   -1.6841862466653193E-003  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   1.4086190366493511E-003  (exact)    1.4184463413741669E-003  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -5.1472654189354428       (exact)   -5.2579512054632946       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   5.1472651157363352       (exact)    5.1831752302029299       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   1.4085863959735980E-003  (exact)    1.4388763945062707E-003  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -2.7804201966768640       (exact)   -2.8364834403426729       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -1.0566715583958373E-004  (exact)   -1.0771747804178092E-004  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -5.8338767130008008E-004  (exact)   -5.8721467533450204E-004  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   4.2601139376768911E-002  (exact)    4.3480315969163359E-002  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -1.6684907138416114E-004  (exact)   -1.7008644914783656E-004  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -5.9635380101096794E-004  (exact)   -6.0026587708753932E-004  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -6.0922026982453703       (exact)   -6.2178708350944252       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -2.2575556789122602E-004  (exact)   -2.3013598464297644E-004  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   5.7986718215324817       (exact)    5.8367106702000724       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -5.7246566006435851E-004  (exact)   -5.8429721407211909E-004  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -8.8377950386269236E-003  (exact)   -9.0092760643936103E-003  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -8.8377606542703376E-003  (exact)   -8.8957357181121272E-003  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   2.8746499052020473E-004  (exact)    2.9337134906684851E-004  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -5.7986701327379100       (exact)   -5.9111826238281493       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   5.1472652047200675       (exact)    5.2579509067110628       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -1.4086165808007839E-003  (exact)   -1.4184756864307668E-003  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -1.6487062032560999E-003  (exact)   -1.6841596365344785E-003  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -5.1472597338985731       (exact)   -5.1832860640626421       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   9.8186247442894582E-005  (exact)    1.0029763178073080E-004  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -3.8901002696823550       (exact)   -3.9702774064161357       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -1.8559520312296279E-003  (exact)   -1.8919633436801724E-003  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -4.0163564816649691E-002  (exact)   -4.0991400116411614E-002  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -5.8338838039399485E-004  (exact)   -5.8720359995691033E-004  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   5.7985290514261196       (exact)    5.9110387422634165       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   5.4516724911192833       (exact)    5.5640403651139820       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -5.9635308472498385E-004  (exact)   -6.0025312972865179E-004  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   4.1394526315847210E-002  (exact)    4.2197710343985874E-002  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   6.2545916761276295E-004  (exact)    6.3835085463873542E-004  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   5.7986752858694857       (exact)    5.8365971425805609       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   5.8740598214636060E-004  (exact)    5.9880350158647317E-004  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -1.4118585158988560E-004  (exact)   -1.4409594026458240E-004  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -8.8377631299484151E-003  (exact)   -8.8955598336996310E-003  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -1.6931748020270509E-004  (exact)   -1.7260274279855040E-004  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   5.9435438757046635       (exact)    5.9850093828470055       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -1.9037907667823180E-003  (exact)   -1.9446865365192524E-003  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -1.9037590405320542E-003  (exact)   -1.9170407495623923E-003  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -5.9435429789109691       (exact)   -6.0712176442300816       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   1.6264955825750736E-003  (exact)    1.6614347070183864E-003  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   2.1430667277494522E-003  (exact)    2.1571250963799363E-003  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   1.2201412542160892E-004  (exact)    1.2438408603257175E-004  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -7.6929419078516386       (exact)   -7.8505326578333037       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -6.6955719940595575       (exact)   -6.7394945945526308       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   1.9265970093828918E-004  (exact)    1.9640179250166143E-004  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   2.8194443398937910E-003  (exact)    2.8771970527256517E-003  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -4.7798335295034140E-002  (exact)   -4.8111889920340510E-002  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   2.6067903399334247E-004  (exact)    2.6574232535030211E-004  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
 -0.73986589250322399       (exact)  -0.75502156939229881       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -6.7827753563171793E-004  (exact)   -6.8272702135381785E-004  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   1.0205016132923678E-002  (exact)    1.0403231985023690E-002  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   6.1001031711560292E-005  (exact)    6.2250740106420670E-005  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   1.9551125281840723E-004  (exact)    1.9679373953294252E-004  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   6.6957339574173895       (exact)    6.8257876901983563       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   1.6885141240925372E-004  (exact)    1.7231033376336109E-004  (Fock matrix)


   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=   -99.72610940

 Wigner-Eckart theorem used for 23 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.2  0.5  0.5       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00       0.00      -0.00      20.28
                            0.00     128.63      -0.00       0.00      -0.00    -128.63       0.00      -0.01     -26.10      -0.00

    2   2.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00    -128.63      -0.00       0.01      26.03      -0.00
                         -128.63       0.00      -0.00       0.00       0.00       0.00       0.00       0.00      -0.00      15.86

    3   3.2  0.5  0.5       0.00       0.00       0.00       0.00     128.63      -0.00     -26.40       0.01      -0.00       0.01
                            0.00       0.00      -0.00     128.63      -0.00       0.00       0.01      26.11      -0.01       0.00

    4   1.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00    -128.63      -0.00    -128.63       0.00       0.00       0.00       0.00       0.00

    5   2.2  0.5 -0.5      -0.00       0.00     128.63       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00     128.63      -0.00       0.00       0.00       0.00       0.00       0.00

    6   3.2  0.5 -0.5      -0.00    -128.63      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          128.63      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00

    7   1.2  1.5  1.5       0.00      -0.00     -26.40       0.00       0.00       0.00  122096.85       0.00       0.00       0.00
                           -0.00      -0.00      -0.01      -0.00      -0.00      -0.00      -0.00     -75.03       0.02      -0.00

    8   2.2  1.5  1.5       0.00       0.01       0.01       0.00       0.00       0.00       0.00  122096.85       0.00       0.00
                            0.01      -0.00     -26.11      -0.00      -0.00      -0.00      75.03       0.00       0.00      -0.00

    9   3.2  1.5  1.5      -0.00      26.03      -0.00       0.00       0.00       0.00       0.00       0.00  122096.85       0.00
                           26.10       0.00       0.01      -0.00      -0.00      -0.00      -0.02      -0.00       0.00      95.75

   10   4.2  1.5  1.5      20.28      -0.00       0.01       0.00       0.00       0.00       0.00       0.00       0.00  124577.65
                            0.00     -15.86      -0.00      -0.00      -0.00      -0.00       0.00       0.00     -95.75       0.00

   11   5.2  1.5  1.5       0.21       0.00     -31.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.22      -0.00      -0.00      -0.00      -0.00      -0.02     -83.33       0.06      -0.00

   12   6.2  1.5  1.5     -28.41       0.00      -0.22       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00     -31.83      -0.00      -0.00      -0.00      -0.00       0.00      -0.60      -9.21       0.00

   13   7.2  1.5  1.5      -0.00     -30.24      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           30.31      -0.00      -0.05      -0.00      -0.00      -0.00       0.13      -0.01       0.00      14.36

   14   8.2  1.5  1.5       0.00       0.05       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.05       0.00     -31.56      -0.00      -0.00      -0.00      83.33      -0.02       0.00      -0.05

   15   1.2  1.5  0.5       0.00       0.00       0.00       0.00      -0.00     -15.24      -0.00       0.01      43.32      -0.01
                           29.79      -0.01      -0.00      -0.00      -0.00      -0.00       0.00      -0.00      -0.01     -23.07

   16   2.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00      -0.01      -0.00      -0.01     -32.28
                           -0.01     -30.22       0.00       0.00      -0.00     -15.08       0.00       0.00     -43.32       0.01

   17   3.2  1.5  0.5       0.00       0.00       0.00      -0.00      15.03      -0.00     -43.32       0.01       0.00      -0.01
                            0.00       0.01      -0.00      15.07       0.00       0.00       0.01      43.32      -0.00      -0.00

   18   4.2  1.5  0.5       0.00       0.00       0.00      11.71      -0.00       0.01       0.01      32.28       0.01      -0.00
                            0.01       0.00     -41.56       0.00      -9.16      -0.00      23.07      -0.01       0.00       0.00

   19   5.2  1.5  0.5       0.00       0.00       0.00       0.12       0.00     -17.90       0.01       0.32     -48.11      -0.00
                          -35.62       0.00       0.02      -0.00       0.13      -0.00      -0.35       0.00       0.00     -78.84

   20   6.2  1.5  0.5       0.00       0.00       0.00     -16.40       0.00      -0.13      -0.01     -45.24      -0.33      -0.00
                           -0.25       0.00      -4.01      -0.00     -18.38      -0.00      50.55      -0.01       0.00      -0.55

   21   7.2  1.5  0.5       0.00       0.00       0.00      -0.00     -17.46      -0.00     -48.11       0.01      -0.01      -0.12
                           -0.00       0.06       0.00      17.50      -0.00      -0.03      -0.01     -48.11       0.09      -0.01

   22   8.2  1.5  0.5       0.00       0.00       0.00       0.00       0.03       0.00       0.07       0.00       0.00     -70.56
                            0.00      36.50       0.00      -0.03       0.00     -18.22      -0.00       0.09      48.11       0.00

   23   1.2  1.5 -0.5       0.00      -0.00     -15.24       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00      29.79      -0.01      -0.00      -0.00      -0.00      -0.00      -0.00

   24   2.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      15.08      -0.01     -30.22       0.00      -0.00      -0.00      -0.00      -0.00

   25   3.2  1.5 -0.5      -0.00      15.03      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -15.07      -0.00      -0.00       0.00       0.01      -0.00      -0.00      -0.00      -0.00      -0.00

   26   4.2  1.5 -0.5      11.71      -0.00       0.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       9.16       0.00       0.01       0.00     -41.56      -0.00      -0.00      -0.00      -0.00

   27   5.2  1.5 -0.5       0.12       0.00     -17.90       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.13       0.00     -35.62       0.00       0.02      -0.00      -0.00      -0.00      -0.00

   28   6.2  1.5 -0.5     -16.40       0.00      -0.13       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      18.38       0.00      -0.25       0.00      -4.01      -0.00      -0.00      -0.00      -0.00

   29   7.2  1.5 -0.5      -0.00     -17.46      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -17.50       0.00       0.03      -0.00       0.06       0.00      -0.00      -0.00      -0.00      -0.00

   30   8.2  1.5 -0.5       0.00       0.03       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.03      -0.00      18.22       0.00      36.50       0.00      -0.00      -0.00      -0.00      -0.00

   31   1.2  1.5 -1.5       0.00       0.00       0.00       0.00      -0.00     -26.40       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00       0.00       0.01      -0.00      -0.00      -0.00      -0.00

   32   2.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.01       0.01       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.01       0.00      26.11      -0.00      -0.00      -0.00      -0.00

   33   3.2  1.5 -1.5       0.00       0.00       0.00      -0.00      26.03      -0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00     -26.10      -0.00      -0.01      -0.00      -0.00      -0.00      -0.00

   34   4.2  1.5 -1.5       0.00       0.00       0.00      20.28      -0.00       0.01       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      15.86       0.00      -0.00      -0.00      -0.00      -0.00

   35   5.2  1.5 -1.5       0.00       0.00       0.00       0.21       0.00     -31.01       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00      -0.22       0.00      -0.00      -0.00      -0.00      -0.00

   36   6.2  1.5 -1.5       0.00       0.00       0.00     -28.41       0.00      -0.22       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00      31.83       0.00      -0.00      -0.00      -0.00      -0.00

   37   7.2  1.5 -1.5       0.00       0.00       0.00      -0.00     -30.24      -0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00     -30.31       0.00       0.05      -0.00      -0.00      -0.00      -0.00

   38   8.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.05       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.05      -0.00      31.56      -0.00      -0.00      -0.00      -0.00


   Nr   State  S   Sz       11         12         13         14         15         16         17         18         19         20

    1   1.2  0.5  0.5       0.21     -28.41      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00     -30.31       0.05     -29.79       0.01      -0.00      -0.01      35.62       0.25

    2   2.2  0.5  0.5       0.00       0.00     -30.24       0.05       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.22      31.83       0.00      -0.00       0.01      30.22      -0.01      -0.00      -0.00      -0.00

    3   3.2  0.5  0.5     -31.01      -0.22      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.05      31.56       0.00      -0.00       0.00      41.56      -0.02       4.01

    4   1.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      11.71       0.12     -16.40
                            0.00       0.00       0.00       0.00       0.00      -0.00     -15.07      -0.00       0.00       0.00

    5   2.2  0.5 -0.5       0.00       0.00       0.00       0.00      -0.00       0.00      15.03      -0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00      -0.00       9.16      -0.13      18.38

    6   3.2  0.5 -0.5       0.00       0.00       0.00       0.00     -15.24       0.00      -0.00       0.01     -17.90      -0.13
                            0.00       0.00       0.00       0.00       0.00      15.08      -0.00       0.00       0.00       0.00

    7   1.2  1.5  1.5       0.00       0.00       0.00       0.00      -0.00      -0.01     -43.32       0.01       0.01      -0.01
                            0.02      -0.00      -0.13     -83.33      -0.00      -0.00      -0.01     -23.07       0.35     -50.55

    8   2.2  1.5  1.5       0.00       0.00       0.00       0.00       0.01      -0.00       0.01      32.28       0.32     -45.24
                           83.33       0.60       0.01       0.02       0.00      -0.00     -43.32       0.01      -0.00       0.01

    9   3.2  1.5  1.5       0.00       0.00       0.00       0.00      43.32      -0.01       0.00       0.01     -48.11      -0.33
                           -0.06       9.21      -0.00      -0.00       0.01      43.32       0.00      -0.00      -0.00      -0.00

   10   4.2  1.5  1.5       0.00       0.00       0.00       0.00      -0.01     -32.28      -0.01      -0.00      -0.00      -0.00
                            0.00      -0.00     -14.36       0.05      23.07      -0.01       0.00      -0.00      78.84       0.55

   11   5.2  1.5  1.5  124577.66       0.00       0.00       0.00      -0.01      -0.32      48.11       0.00       0.00      -0.00
                            0.00       0.01      -1.19     -75.04      -0.35       0.00       0.00     -78.84      -0.00      35.95

   12   6.2  1.5  1.5       0.00  124577.64       0.00       0.00       0.01      45.24       0.33       0.00       0.00      -0.00
                           -0.01      -0.00     149.39      -0.76      50.55      -0.01       0.00      -0.55     -35.95       0.00

   13   7.2  1.5  1.5       0.00       0.00  124577.66       0.00      48.11      -0.01       0.01       0.12     -43.33      -0.23
                            1.19    -149.39      -0.00      -0.00      -0.01     -48.11       0.09      -0.01      -0.00       0.01

   14   8.2  1.5  1.5       0.00       0.00       0.00  124577.66      -0.07      -0.00      -0.00      70.56      -0.27      50.31
                           75.04       0.76       0.00       0.00      -0.00       0.09      48.11       0.00       0.00       0.00

   15   1.2  1.5  0.5      -0.01       0.01      48.11      -0.07  122096.85       0.00       0.00       0.00       0.00       0.00
                            0.35     -50.55       0.01       0.00      -0.00     -25.01       0.01      -0.00       0.01      -0.00

   16   2.2  1.5  0.5      -0.32      45.24      -0.01      -0.00       0.00  122096.85       0.00       0.00       0.00       0.00
                           -0.00       0.01      48.11      -0.09      25.01       0.00       0.00      -0.00      27.78       0.20

   17   3.2  1.5  0.5      48.11       0.33       0.01      -0.00       0.00       0.00  122096.85       0.00       0.00       0.00
                           -0.00      -0.00      -0.09     -48.11      -0.01      -0.00       0.00      31.92      -0.02       3.07

   18   4.2  1.5  0.5       0.00       0.00       0.12      70.56       0.00       0.00       0.00  124577.65       0.00       0.00
                           78.84       0.55       0.01      -0.00       0.00       0.00     -31.92       0.00       0.00      -0.00

   19   5.2  1.5  0.5       0.00       0.00     -43.33      -0.27       0.00       0.00       0.00       0.00  124577.66       0.00
                            0.00      35.95       0.00      -0.00      -0.01     -27.78       0.02      -0.00       0.00       0.00

   20   6.2  1.5  0.5      -0.00      -0.00      -0.23      50.31       0.00       0.00       0.00       0.00       0.00  124577.64
                          -35.95      -0.00      -0.01      -0.00       0.00      -0.20      -3.07       0.00      -0.00      -0.00

   21   7.2  1.5  0.5      43.33       0.23       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.01       0.00      43.33       0.04      -0.00       0.00       4.79       0.40     -49.80

   22   8.2  1.5  0.5       0.27     -50.31      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00     -43.33      -0.00      27.78      -0.01       0.00      -0.02      25.01       0.25

   23   1.2  1.5 -0.5       0.00       0.00       0.00       0.00      -0.00       0.01      50.03      -0.01      -0.01       0.01
                           -0.00      -0.00      -0.00      -0.00       0.00      -0.00      -0.02     -26.64       0.41     -58.37

   24   2.2  1.5 -0.5       0.00       0.00       0.00       0.00      -0.01      -0.00      -0.02     -37.27      -0.37      52.23
                           -0.00      -0.00      -0.00      -0.00       0.00       0.00     -50.02       0.01      -0.01       0.01

   25   3.2  1.5 -0.5       0.00       0.00       0.00       0.00     -50.03       0.02       0.00      -0.01      55.56       0.38
                           -0.00      -0.00      -0.00      -0.00       0.02      50.02      -0.00      -0.00      -0.00      -0.00

   26   4.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.01      37.27       0.01      -0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      26.64      -0.01       0.00       0.00      91.04       0.64

   27   5.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.01       0.37     -55.56      -0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.41       0.01       0.00     -91.04       0.00      41.51

   28   6.2  1.5 -0.5       0.00       0.00       0.00       0.00      -0.01     -52.23      -0.38      -0.00      -0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      58.37      -0.01       0.00      -0.64     -41.51      -0.00

   29   7.2  1.5 -0.5       0.00       0.00       0.00       0.00     -55.56       0.01      -0.01      -0.14      50.03       0.27
                           -0.00      -0.00      -0.00      -0.00      -0.01     -55.56       0.10      -0.01      -0.00       0.01

   30   8.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.08       0.00       0.00     -81.47       0.31     -58.09
                           -0.00      -0.00      -0.00      -0.00      -0.00       0.10      55.56       0.00       0.00       0.00

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

    1   1.2  0.5  0.5       0.00       0.00       0.00       0.00      -0.00      11.71       0.12     -16.40      -0.00       0.00
                            0.00      -0.00      -0.00       0.00      15.07       0.00      -0.00      -0.00      17.50      -0.03

    2   2.2  0.5  0.5       0.00       0.00      -0.00       0.00      15.03      -0.00       0.00       0.00     -17.46       0.03
                           -0.06     -36.50      -0.00      -0.00       0.00      -9.16       0.13     -18.38      -0.00       0.00

    3   3.2  0.5  0.5       0.00       0.00     -15.24       0.00      -0.00       0.01     -17.90      -0.13      -0.00       0.00
                           -0.00      -0.00      -0.00     -15.08       0.00      -0.00      -0.00      -0.00      -0.03     -18.22

    4   1.2  0.5 -0.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -17.50       0.03     -29.79       0.01      -0.00      -0.01      35.62       0.25       0.00      -0.00

    5   2.2  0.5 -0.5     -17.46       0.03       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.01      30.22      -0.01      -0.00      -0.00      -0.00      -0.06     -36.50

    6   3.2  0.5 -0.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.03      18.22       0.00      -0.00       0.00      41.56      -0.02       4.01      -0.00      -0.00

    7   1.2  1.5  1.5     -48.11       0.07       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    8   2.2  1.5  1.5       0.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           48.11      -0.09       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    9   3.2  1.5  1.5      -0.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.09     -48.11       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   10   4.2  1.5  1.5      -0.12     -70.56       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.01      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   11   5.2  1.5  1.5      43.33       0.27       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   12   6.2  1.5  1.5       0.23     -50.31       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.01      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   13   7.2  1.5  1.5       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      43.33       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   14   8.2  1.5  1.5       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -43.33       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   15   1.2  1.5  0.5       0.00       0.00      -0.00      -0.01     -50.03       0.01       0.01      -0.01     -55.56       0.08
                           -0.04     -27.78      -0.00      -0.00      -0.02     -26.64       0.41     -58.37       0.01       0.00

   16   2.2  1.5  0.5       0.00       0.00       0.01      -0.00       0.02      37.27       0.37     -52.23       0.01       0.00
                            0.00       0.01       0.00      -0.00     -50.02       0.01      -0.01       0.01      55.56      -0.10

   17   3.2  1.5  0.5       0.00       0.00      50.03      -0.02       0.00       0.01     -55.56      -0.38      -0.01       0.00
                           -0.00      -0.00       0.02      50.02       0.00      -0.00      -0.00      -0.00      -0.10     -55.56

   18   4.2  1.5  0.5       0.00       0.00      -0.01     -37.27      -0.01      -0.00      -0.00      -0.00      -0.14     -81.47
                           -4.79       0.02      26.64      -0.01       0.00      -0.00      91.04       0.64       0.01      -0.00

   19   5.2  1.5  0.5       0.00       0.00      -0.01      -0.37      55.56       0.00       0.00      -0.00      50.03       0.31
                           -0.40     -25.01      -0.41       0.01       0.00     -91.04      -0.00      41.51       0.00      -0.00

   20   6.2  1.5  0.5       0.00       0.00       0.01      52.23       0.38       0.00       0.00      -0.00       0.27     -58.09
                           49.80      -0.25      58.37      -0.01       0.00      -0.64     -41.51       0.00      -0.01      -0.00

   21   7.2  1.5  0.5  124577.66       0.00      55.56      -0.01       0.01       0.14     -50.03      -0.27       0.00      -0.00
                           -0.00      -0.00      -0.01     -55.56       0.10      -0.01      -0.00       0.01      -0.00      50.03

   22   8.2  1.5  0.5       0.00  124577.66      -0.08      -0.00      -0.00      81.47      -0.31      58.09       0.00      -0.00
                            0.00       0.00      -0.00       0.10      55.56       0.00       0.00       0.00     -50.03       0.00

   23   1.2  1.5 -0.5      55.56      -0.08  122096.85       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.01       0.00       0.00      25.01      -0.01       0.00      -0.01       0.00       0.04      27.78

   24   2.2  1.5 -0.5      -0.01      -0.00       0.00  122096.85       0.00       0.00       0.00       0.00       0.00       0.00
                           55.56      -0.10     -25.01      -0.00      -0.00       0.00     -27.78      -0.20      -0.00      -0.01

   25   3.2  1.5 -0.5       0.01      -0.00       0.00       0.00  122096.85       0.00       0.00       0.00       0.00       0.00
                           -0.10     -55.56       0.01       0.00      -0.00     -31.92       0.02      -3.07       0.00       0.00

   26   4.2  1.5 -0.5       0.14      81.47       0.00       0.00       0.00  124577.65       0.00       0.00       0.00       0.00
                            0.01      -0.00      -0.00      -0.00      31.92      -0.00      -0.00       0.00       4.79      -0.02

   27   5.2  1.5 -0.5     -50.03      -0.31       0.00       0.00       0.00       0.00  124577.66       0.00       0.00       0.00
                            0.00      -0.00       0.01      27.78      -0.02       0.00      -0.00      -0.00       0.40      25.01

   28   6.2  1.5 -0.5      -0.27      58.09       0.00       0.00       0.00       0.00       0.00  124577.64       0.00       0.00
                           -0.01      -0.00      -0.00       0.20       3.07      -0.00       0.00       0.00     -49.80       0.25

   29   7.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00  124577.66       0.00
                            0.00      50.03      -0.04       0.00      -0.00      -4.79      -0.40      49.80       0.00       0.00

   30   8.2  1.5 -0.5      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00  124577.66
                          -50.03      -0.00     -27.78       0.01      -0.00       0.02     -25.01      -0.25      -0.00      -0.00

   31   1.2  1.5 -1.5       0.00       0.00      -0.00       0.01      43.32      -0.01      -0.01       0.01      48.11      -0.07
                           -0.00      -0.00       0.00      -0.00      -0.01     -23.07       0.35     -50.55       0.01       0.00

   32   2.2  1.5 -1.5       0.00       0.00      -0.01      -0.00      -0.01     -32.28      -0.32      45.24      -0.01      -0.00
                           -0.00      -0.00       0.00       0.00     -43.32       0.01      -0.00       0.01      48.11      -0.09

   33   3.2  1.5 -1.5       0.00       0.00     -43.32       0.01       0.00      -0.01      48.11       0.33       0.01      -0.00
                           -0.00      -0.00       0.01      43.32      -0.00      -0.00      -0.00      -0.00      -0.09     -48.11

   34   4.2  1.5 -1.5       0.00       0.00       0.01      32.28       0.01      -0.00       0.00       0.00       0.12      70.56
                           -0.00      -0.00      23.07      -0.01       0.00       0.00      78.84       0.55       0.01      -0.00

   35   5.2  1.5 -1.5       0.00       0.00       0.01       0.32     -48.11      -0.00       0.00       0.00     -43.33      -0.27
                           -0.00      -0.00      -0.35       0.00       0.00     -78.84       0.00      35.95       0.00      -0.00

   36   6.2  1.5 -1.5       0.00       0.00      -0.01     -45.24      -0.33      -0.00      -0.00      -0.00      -0.23      50.31
                           -0.00      -0.00      50.55      -0.01       0.00      -0.55     -35.95      -0.00      -0.01      -0.00

   37   7.2  1.5 -1.5       0.00       0.00     -48.11       0.01      -0.01      -0.12      43.33       0.23       0.00       0.00
                           -0.00      -0.00      -0.01     -48.11       0.09      -0.01      -0.00       0.01       0.00      43.33

   38   8.2  1.5 -1.5       0.00       0.00       0.07       0.00       0.00     -70.56       0.27     -50.31      -0.00      -0.00
                           -0.00      -0.00      -0.00       0.09      48.11       0.00       0.00       0.00     -43.33      -0.00


   Nr   State  S   Sz       31         32         33         34         35         36         37         38

    1   1.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    2   2.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    3   3.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    4   1.2  0.5 -0.5       0.00       0.00      -0.00      20.28       0.21     -28.41      -0.00       0.00
                           -0.00       0.01      26.10       0.00      -0.00      -0.00      30.31      -0.05

    5   2.2  0.5 -0.5      -0.00       0.01      26.03      -0.00       0.00       0.00     -30.24       0.05
                           -0.00      -0.00       0.00     -15.86       0.22     -31.83      -0.00       0.00

    6   3.2  0.5 -0.5     -26.40       0.01      -0.00       0.01     -31.01      -0.22      -0.00       0.00
                           -0.01     -26.11       0.01      -0.00      -0.00      -0.00      -0.05     -31.56

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

   23   1.2  1.5 -0.5      -0.00      -0.01     -43.32       0.01       0.01      -0.01     -48.11       0.07
                           -0.00      -0.00      -0.01     -23.07       0.35     -50.55       0.01       0.00

   24   2.2  1.5 -0.5       0.01      -0.00       0.01      32.28       0.32     -45.24       0.01       0.00
                            0.00      -0.00     -43.32       0.01      -0.00       0.01      48.11      -0.09

   25   3.2  1.5 -0.5      43.32      -0.01       0.00       0.01     -48.11      -0.33      -0.01       0.00
                            0.01      43.32       0.00      -0.00      -0.00      -0.00      -0.09     -48.11

   26   4.2  1.5 -0.5      -0.01     -32.28      -0.01      -0.00      -0.00      -0.00      -0.12     -70.56
                           23.07      -0.01       0.00      -0.00      78.84       0.55       0.01      -0.00

   27   5.2  1.5 -0.5      -0.01      -0.32      48.11       0.00       0.00      -0.00      43.33       0.27
                           -0.35       0.00       0.00     -78.84      -0.00      35.95       0.00      -0.00

   28   6.2  1.5 -0.5       0.01      45.24       0.33       0.00       0.00      -0.00       0.23     -50.31
                           50.55      -0.01       0.00      -0.55     -35.95       0.00      -0.01      -0.00

   29   7.2  1.5 -0.5      48.11      -0.01       0.01       0.12     -43.33      -0.23       0.00      -0.00
                           -0.01     -48.11       0.09      -0.01      -0.00       0.01      -0.00      43.33

   30   8.2  1.5 -0.5      -0.07      -0.00      -0.00      70.56      -0.27      50.31       0.00      -0.00
                           -0.00       0.09      48.11       0.00       0.00       0.00     -43.33       0.00

   31   1.2  1.5 -1.5  122096.85       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      75.03      -0.02       0.00      -0.02       0.00       0.13      83.33

   32   2.2  1.5 -1.5       0.00  122096.85       0.00       0.00       0.00       0.00       0.00       0.00
                          -75.03      -0.00      -0.00       0.00     -83.33      -0.60      -0.01      -0.02

   33   3.2  1.5 -1.5       0.00       0.00  122096.85       0.00       0.00       0.00       0.00       0.00
                            0.02       0.00      -0.00     -95.75       0.06      -9.21       0.00       0.00

   34   4.2  1.5 -1.5       0.00       0.00       0.00  124577.65       0.00       0.00       0.00       0.00
                           -0.00      -0.00      95.75      -0.00      -0.00       0.00      14.36      -0.05

   35   5.2  1.5 -1.5       0.00       0.00       0.00       0.00  124577.66       0.00       0.00       0.00
                            0.02      83.33      -0.06       0.00      -0.00      -0.01       1.19      75.04

   36   6.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00  124577.64       0.00       0.00
                           -0.00       0.60       9.21      -0.00       0.01       0.00    -149.39       0.76

   37   7.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00  124577.66       0.00
                           -0.13       0.01      -0.00     -14.36      -1.19     149.39       0.00       0.00

   38   8.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00  124577.66
                          -83.33       0.02      -0.00       0.05     -75.04      -0.76      -0.00      -0.00


 No symmetry adaption


 Spin-orbit eigenstates   (energies)
 ======================

   Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
            (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
   1   -99.72669570    -0.00058630     -128.68      0.00000000        0.00      0.0000
   2   -99.72669570    -0.00058630     -128.68      0.00000000        0.00      0.0000
   3   -99.72669570    -0.00058630     -128.68      0.00000000        0.00      0.0000
   4   -99.72669570    -0.00058630     -128.68      0.00000000        0.00      0.0000
   5   -99.72493746     0.00117194      257.21      0.00175825      385.89      0.0478
   6   -99.72493746     0.00117194      257.21      0.00175825      385.89      0.0478
   7   -99.17016567     0.55594373   122015.54      0.55653003   122144.22     15.1440
   8   -99.17016567     0.55594373   122015.54      0.55653003   122144.22     15.1440
   9   -99.17016565     0.55594375   122015.55      0.55653005   122144.23     15.1440
  10   -99.17016565     0.55594375   122015.55      0.55653005   122144.23     15.1440
  11   -99.17016564     0.55594376   122015.55      0.55653006   122144.23     15.1440
  12   -99.17016564     0.55594376   122015.55      0.55653006   122144.23     15.1440
  13   -99.16958899     0.55652041   122142.11      0.55710671   122270.79     15.1596
  14   -99.16958899     0.55652041   122142.11      0.55710671   122270.79     15.1596
  15   -99.16958896     0.55652044   122142.12      0.55710674   122270.80     15.1596
  16   -99.16958896     0.55652044   122142.12      0.55710674   122270.80     15.1596
  17   -99.16923219     0.55687721   122220.42      0.55746352   122349.10     15.1694
  18   -99.16923219     0.55687721   122220.42      0.55746352   122349.10     15.1694
  19   -99.15917575     0.56693365   124427.55      0.56751995   124556.23     15.4430
  20   -99.15917575     0.56693365   124427.55      0.56751995   124556.23     15.4430
  21   -99.15917571     0.56693369   124427.56      0.56752000   124556.24     15.4430
  22   -99.15917571     0.56693369   124427.56      0.56752000   124556.24     15.4430
  23   -99.15917568     0.56693372   124427.57      0.56752002   124556.25     15.4430
  24   -99.15917568     0.56693372   124427.57      0.56752002   124556.25     15.4430
  25   -99.15917568     0.56693372   124427.57      0.56752002   124556.25     15.4430
  26   -99.15917568     0.56693372   124427.57      0.56752002   124556.25     15.4430
  27   -99.15834937     0.56776003   124608.92      0.56834633   124737.60     15.4655
  28   -99.15834937     0.56776003   124608.92      0.56834633   124737.60     15.4655
  29   -99.15834934     0.56776006   124608.93      0.56834636   124737.61     15.4655
  30   -99.15834934     0.56776006   124608.93      0.56834636   124737.61     15.4655
  31   -99.15834930     0.56776010   124608.94      0.56834640   124737.62     15.4655
  32   -99.15834930     0.56776010   124608.94      0.56834640   124737.62     15.4655
  33   -99.15778613     0.56832327   124732.54      0.56890957   124861.22     15.4808
  34   -99.15778613     0.56832327   124732.54      0.56890957   124861.22     15.4808
  35   -99.15778610     0.56832330   124732.55      0.56890960   124861.23     15.4808
  36   -99.15778610     0.56832330   124732.55      0.56890960   124861.23     15.4808
  37   -99.15745902     0.56865037   124804.33      0.56923668   124933.01     15.4897
  38   -99.15745902     0.56865037   124804.33      0.56923668   124933.01     15.4897


 Eigenvectors of spin-orbit matrix
 =================================

  Basis states          Eigenvectors (columnwise)

   Nr   State  S   Sz        1             2             3             4             5             6             7             8

    1    1.2  0.5  0.5  -0.203240283   0.135070686   0.779105175  -0.010361426  -0.228690460   0.530129562   0.000000112  -0.000001584
                         0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000

    2    2.2  0.5  0.5  -0.000000074  -0.000000223   0.000000021   0.000000135  -0.000000000  -0.000000000   0.000000000  -0.000000000
                         0.460372194  -0.305957521   0.600874297  -0.007991174   0.228689289  -0.530126848  -0.000000001   0.000000013

    3    3.2  0.5  0.5   0.374854976   0.564041799  -0.001170203  -0.088002379  -0.530062984  -0.228661739  -0.000000013  -0.000000001
                        -0.232362606  -0.349634955  -0.002061316  -0.154995448  -0.008037678  -0.003467341   0.000000016   0.000000001

    4    1.2  0.5 -0.5   0.071163672   0.107079671   0.009010389   0.677516846  -0.008037763  -0.003467378  -0.000001240  -0.000000088
                         0.114803421   0.172744211  -0.005115860  -0.384676213   0.530068625   0.228664172  -0.000000986  -0.000000070

    5    2.2  0.5 -0.5  -0.260048904  -0.391293599  -0.003945690  -0.296676284  -0.530065911  -0.228663001   0.000000008   0.000000001
                         0.161197290   0.242552811  -0.006949130  -0.522525712  -0.008037722  -0.003467361  -0.000000010  -0.000000001

    6    3.2  0.5 -0.5  -0.000000074  -0.000000223   0.000000021   0.000000135   0.000000000   0.000000000  -0.000000000   0.000000000
                         0.663617170  -0.441031327  -0.178235840   0.002370317  -0.228688026   0.530123921  -0.000000002   0.000000021

    7    1.2  1.5  1.5   0.000080876   0.000121693  -0.000000252  -0.000018972  -0.000114601  -0.000049437   0.233554127   0.016551679
                        -0.000050096  -0.000075382  -0.000000439  -0.000033440  -0.000001774  -0.000000765  -0.293862388  -0.020790197

    8    2.2  1.5  1.5   0.000049543   0.000074547   0.000000440   0.000033070   0.000001755   0.000000757  -0.026343376  -0.001867211
                         0.000079967   0.000120359  -0.000000330  -0.000018761  -0.000113333  -0.000048890  -0.020797857  -0.001588305

    9    3.2  1.5  1.5  -0.000000012  -0.000000018  -0.000000000  -0.000000009  -0.000000003  -0.000000001   0.000004991   0.000015413
                        -0.000054591   0.000036231  -0.000293875   0.000003913   0.000000157  -0.000000279   0.025503978  -0.360461310

   10    4.2  1.5  1.5  -0.000025492   0.000016879  -0.000202751   0.000002704   0.000008152  -0.000018780  -0.001340166   0.018965082
                         0.000000023   0.000000028  -0.000000001   0.000000012   0.000000000  -0.000000005  -0.000003128   0.000000469

   11    5.2  1.5  1.5   0.000094184   0.000139204  -0.000000527  -0.000021833  -0.000131150  -0.000058754  -0.006171562  -0.000522721
                        -0.000057676  -0.000086750  -0.000000507  -0.000038462  -0.000002016  -0.000000839   0.007772844   0.000551029

   12    6.2  1.5  1.5  -0.000162817   0.000109652   0.000024035  -0.000000474  -0.000111527   0.000255943  -0.000956582   0.012880241
                        -0.000000425  -0.000000603   0.000000001  -0.000000275  -0.000000031   0.000000018   0.000055047   0.000004589

   13    7.2  1.5  1.5   0.000000083   0.000000159   0.000000007   0.000000057  -0.000000022   0.000000022  -0.000028027  -0.000001527
                         0.000160841  -0.000106592  -0.000043571   0.000000542   0.000110946  -0.000257748   0.000758146  -0.011011974

   14    8.2  1.5  1.5   0.000058691   0.000088297   0.000000523   0.000039145   0.000002044   0.000000870  -0.018084248  -0.001280607
                         0.000094432   0.000142623  -0.000000229  -0.000022225  -0.000134454  -0.000057536  -0.014374713  -0.001001361

   15    1.2  1.5  0.5  -0.000000063   0.000000040  -0.000000040   0.000000001  -0.000000012   0.000000020  -0.000007791   0.000005768
                         0.000132118  -0.000087802  -0.000211831   0.000002818   0.000027244  -0.000063154  -0.043029479   0.608196550

   16    2.2  1.5  0.5  -0.000195390   0.000129881  -0.000126406   0.000001678  -0.000028328   0.000065766  -0.001036615   0.016172652
                        -0.000000050   0.000000016   0.000000068  -0.000000006  -0.000000008   0.000000020  -0.000125009  -0.000177431

   17    3.2  1.5  0.5   0.000046111   0.000069268  -0.000000111  -0.000010926   0.000130627   0.000056329   0.368345777   0.026073348
                        -0.000028548  -0.000042961  -0.000000260  -0.000019242   0.000001981   0.000000853  -0.463476168  -0.032784300

   18    4.2  1.5  0.5   0.000058801   0.000088477   0.000000354   0.000026361   0.000004030   0.000001733   0.008145250   0.000576601
                         0.000094848   0.000142743  -0.000000262  -0.000014970  -0.000265615  -0.000114669   0.006472731   0.000464550

   19    5.2  1.5  0.5   0.000000071   0.000000105  -0.000000010  -0.000001201   0.000000001  -0.000000007  -0.000036637  -0.000002849
                         0.000037248  -0.000024519   0.000196575  -0.000001910  -0.000098163   0.000227819   0.001335283  -0.019245299

   20    6.2  1.5  0.5  -0.000006913  -0.000010406   0.000002279   0.000170754   0.000000390   0.000000158   0.005346098   0.000378717
                        -0.000010895  -0.000016968   0.000000114  -0.000096945  -0.000026170  -0.000009361   0.004259003   0.000162316

   21    7.2  1.5  0.5  -0.000020198  -0.000030517  -0.000000960  -0.000095304   0.000000328  -0.000000279   0.013072854   0.000944822
                         0.000012556   0.000018884  -0.000002213  -0.000167889  -0.000000005   0.000000025  -0.016450661  -0.001166191

   22    8.2  1.5  0.5   0.000037762  -0.000025031   0.000201539  -0.000002542   0.000100466  -0.000232893  -0.000907844   0.012538185
                        -0.000000021  -0.000000030  -0.000000002   0.000000260   0.000000009  -0.000000004   0.000025145   0.000001444

   23    1.2  1.5 -0.5   0.000074606   0.000112260  -0.000001390  -0.000104554   0.000063147   0.000027241  -0.378392651  -0.026776796
                        -0.000046294  -0.000069662  -0.000002451  -0.000184230   0.000000938   0.000000402   0.476153384   0.033682926

   24    2.2  1.5 -0.5  -0.000068443  -0.000102986   0.000001462   0.000109957   0.000000977   0.000000421  -0.012551179  -0.000889341
                        -0.000110384  -0.000166046  -0.000000823  -0.000062353  -0.000065759  -0.000028325  -0.010200690  -0.000547059

   25    3.2  1.5 -0.5   0.000000020   0.000000030  -0.000000000  -0.000000032   0.000000001   0.000000000  -0.000016140   0.000027172
                        -0.000081509   0.000054233   0.000022127  -0.000000281  -0.000056336   0.000130642  -0.041888299   0.592020920

   26    4.2  1.5 -0.5  -0.000167939   0.000111596   0.000030315  -0.000000437   0.000114682  -0.000265645  -0.000740440   0.010403910
                         0.000000005   0.000000006   0.000000003  -0.000000053   0.000000005   0.000000002   0.000004966   0.000000049

   27    5.2  1.5 -0.5   0.000020784   0.000031697  -0.000000101   0.000097066  -0.000227793  -0.000098152   0.011975651   0.000802060
                        -0.000013007  -0.000019564   0.000002254   0.000170938  -0.000003447  -0.000001487  -0.015065368  -0.001068187

   28    6.2  1.5 -0.5   0.000019904  -0.000012902   0.000196355  -0.000001925   0.000009362  -0.000026173  -0.000397481   0.006835189
                        -0.000000096  -0.000000136  -0.000000004   0.000001224  -0.000000016  -0.000000007  -0.000108541  -0.000008310

   29    7.2  1.5 -0.5   0.000000027   0.000000030   0.000000016  -0.000000258  -0.000000029  -0.000000010  -0.000014157  -0.000000007
                         0.000035887  -0.000023783   0.000193053  -0.000002398   0.000000279   0.000000328  -0.001500830   0.021012467

   30    8.2  1.5 -0.5   0.000013213   0.000019877  -0.000002339  -0.000175261  -0.000003527  -0.000001515  -0.009817042  -0.000695107
                         0.000021259   0.000032107   0.000001029   0.000099506   0.000232866   0.000100455  -0.007799473  -0.000584499

   31    1.2  1.5 -1.5   0.000000045  -0.000000031  -0.000000012  -0.000000003  -0.000000016   0.000000036   0.000023731  -0.000023650
                         0.000143149  -0.000095134  -0.000038447   0.000000506  -0.000049443   0.000114614   0.026574236  -0.375369994

   32    2.2  1.5 -1.5   0.000141575  -0.000094071  -0.000038021   0.000000545  -0.000048896   0.000113347  -0.002450003   0.033563565
                        -0.000000051   0.000000023   0.000000013   0.000000070   0.000000016  -0.000000037   0.000081803   0.000106836

   33    3.2  1.5 -1.5   0.000030785   0.000046406   0.000001940   0.000145098  -0.000000279  -0.000000157  -0.224248138  -0.015871152
                        -0.000019104  -0.000028752   0.000003398   0.000255556  -0.000000005   0.000000000   0.282214686   0.019963956

   34    4.2  1.5 -1.5   0.000008917   0.000013411  -0.000002346  -0.000176314   0.000000279   0.000000123   0.014848051   0.001051161
                         0.000014332   0.000021679   0.000001346   0.000100107  -0.000018778  -0.000008151   0.011798717   0.000831332

   35    5.2  1.5 -1.5  -0.000000392  -0.000000600  -0.000000004  -0.000000208   0.000000052   0.000000027  -0.000066417  -0.000004143
                         0.000164022  -0.000110439  -0.000044226   0.000000701  -0.000058760   0.000131165  -0.000756610   0.009924982

   36    6.2  1.5 -1.5   0.000057259   0.000086143   0.000000276   0.000020901  -0.000003862  -0.000001660   0.010086793   0.000714660
                         0.000093516   0.000138163  -0.000000474  -0.000011868   0.000255914   0.000111515   0.008009821   0.000638231

   37    7.2  1.5 -1.5  -0.000090514  -0.000136750   0.000000218   0.000021519  -0.000257718  -0.000110933  -0.006852270  -0.000449736
                         0.000056295   0.000084671   0.000000499   0.000037887  -0.000003886  -0.000001660   0.008620323   0.000610989

   38    8.2  1.5 -1.5   0.000167743  -0.000111185  -0.000045014   0.000000568  -0.000057543   0.000134470  -0.001625581   0.023101351
                        -0.000000094  -0.000000132   0.000000000  -0.000000059  -0.000000002  -0.000000005  -0.000012761  -0.000002885


   Nr   State  S   Sz        9            10            11            12            13            14            15            16

    1    1.2  0.5  0.5  -0.000000202  -0.000000741  -0.000000117   0.000000036   0.000005330  -0.000083545   0.000288217  -0.000001519
                        -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000

    2    2.2  0.5  0.5   0.000000000   0.000000000   0.000000001  -0.000000000  -0.000000004   0.000000029   0.000000009  -0.000000001
                         0.000000277   0.000001018   0.000001038  -0.000000315  -0.000013305   0.000208509   0.000217743  -0.000001149

    3    3.2  0.5  0.5  -0.000001349   0.000000367   0.000000199   0.000000656  -0.000163528  -0.000010433   0.000000315   0.000059736
                         0.000000792  -0.000000216   0.000000025   0.000000081  -0.000244439  -0.000015598   0.000000214   0.000040898

    4    1.2  0.5 -0.5   0.000000375  -0.000000102  -0.000000004  -0.000000014   0.000069434   0.000004429  -0.000000858  -0.000162852
                         0.000000639  -0.000000174   0.000000035   0.000000117  -0.000046461  -0.000002964   0.000001253   0.000237799

    5    2.2  0.5 -0.5  -0.000000878   0.000000239  -0.000000313  -0.000001030   0.000115932   0.000007396   0.000000947   0.000179648
                         0.000000516  -0.000000140  -0.000000039  -0.000000127   0.000173309   0.000011060   0.000000650   0.000123039

    6    3.2  0.5 -0.5  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000004   0.000000030   0.000000009  -0.000000001
                        -0.000000426  -0.000001564   0.000000661  -0.000000201  -0.000018765   0.000294095  -0.000072395   0.000000381

    7    1.2  1.5  1.5   0.451868243  -0.123101860  -0.096595122  -0.317824515   0.240771235   0.015360426  -0.000459808  -0.087272962
                        -0.265489058   0.072298645  -0.011836249  -0.039118069   0.360152063   0.022978161  -0.000327659  -0.059792994

    8    2.2  1.5  1.5  -0.212048326   0.057733424  -0.021274473  -0.070257797  -0.360157706  -0.022981996   0.000313390   0.059794069
                        -0.360836087   0.098175531   0.172950991   0.569296534   0.240771965   0.015410715  -0.000254054  -0.087275509

    9    3.2  1.5  1.5   0.000059280  -0.000028372  -0.000119615   0.000022555   0.000097545   0.000049998   0.000012585  -0.000019444
                        -0.112683726  -0.414125356  -0.277744242   0.084249809  -0.011729145   0.182844300   0.751879794  -0.003941649

   10    4.2  1.5  1.5   0.006348901   0.023323676   0.016205720  -0.004916515   0.000177868  -0.002729790  -0.018988609   0.000098867
                         0.000000902  -0.000000899  -0.000006817   0.000001589   0.000004629   0.000001527   0.000000176  -0.000000783

   11    5.2  1.5  1.5   0.008695708  -0.002351619  -0.007982555  -0.026451734  -0.010361264  -0.000525929  -0.000005867   0.003751623
                        -0.005103676   0.001388967  -0.000990137  -0.003266481  -0.015475917  -0.000989428   0.000013916   0.002568638

   12    6.2  1.5  1.5  -0.000258743  -0.001191790  -0.006699150   0.001830036   0.001137026  -0.018973334   0.002739383   0.000012297
                        -0.000037018   0.000010043  -0.000004109  -0.000023229  -0.000111014  -0.000007022   0.000001140   0.000018416

   13    7.2  1.5  1.5  -0.000014689   0.000003835   0.000002546  -0.000003086   0.000022417   0.000001425   0.000001145  -0.000003599
                         0.000899346   0.003407994   0.008162265  -0.002477722  -0.001205425   0.018618891  -0.004546801   0.000029894

   14    8.2  1.5  1.5  -0.010270598   0.002796353  -0.000079970  -0.000264583   0.015475981   0.000988325  -0.000013224  -0.002568637
                        -0.017490984   0.004759633   0.000636781   0.002140948  -0.010350854  -0.000688845   0.000026695   0.003751443

   15    1.2  1.5  0.5   0.000036465   0.000144540   0.000132281  -0.000053160  -0.000011757   0.000168591   0.000092540   0.000001253
                         0.072760512   0.267196040   0.021069469  -0.006405619   0.025176223  -0.394661903   0.556221839  -0.002930539

   16    2.2  1.5  0.5   0.122625735   0.450052432   0.459960338  -0.139675082  -0.038617751   0.605801629   0.311945453  -0.001660135
                        -0.000061152  -0.000096847  -0.000228906   0.000032881   0.000058545   0.000054628  -0.000200240  -0.000006035

   17    3.2  1.5  0.5   0.157656701  -0.043090871   0.132261068   0.435570691   0.139083583   0.008706626  -0.000350837  -0.050386740
                        -0.092611444   0.025232004   0.016296083   0.053797852   0.207885323   0.013257824  -0.000170189  -0.034497975

   18    4.2  1.5  0.5   0.003310396  -0.000901750  -0.000279683  -0.000922217   0.015782338   0.001007177  -0.000007751  -0.001550330
                         0.005636542  -0.001535966   0.002266140   0.007465685  -0.010557978  -0.000675024   0.000005959   0.002265440

   19    5.2  1.5  0.5   0.000118401  -0.000032035   0.000007454   0.000008363   0.000020891   0.000002551   0.000001245   0.000074583
                         0.000490441   0.001003209   0.009183176  -0.002842770  -0.000304167   0.004535748   0.018658066  -0.000210661

   20    6.2  1.5  0.5  -0.016436192   0.004475208  -0.000261550  -0.000863363  -0.002275169  -0.000145083  -0.000055924  -0.010740951
                        -0.027983810   0.007630563   0.002190594   0.006972230   0.001518687   0.000129416   0.000215857   0.015679470

   21    7.2  1.5  0.5   0.001830254  -0.000513909  -0.008151913  -0.026741463   0.002521397   0.000167812   0.000109578   0.015392410
                        -0.001077757   0.000293213  -0.000999871  -0.003304250   0.003771813   0.000241231   0.000057512   0.010544002

   22    8.2  1.5  0.5  -0.002388270  -0.008758506  -0.014349247   0.004406044  -0.000293684   0.004537865   0.018657992  -0.000121393
                         0.000003014  -0.000000150   0.000008701   0.000004194  -0.000005468  -0.000001568  -0.000000948  -0.000016680

   23    1.2  1.5 -0.5   0.230458109  -0.062754889   0.006351247   0.020895797   0.219619635   0.014010782  -0.002418601  -0.458868387
                        -0.135213923   0.036822778   0.000834567   0.002702814   0.327910446   0.020917465  -0.001654820  -0.314360538

   24    2.2  1.5 -0.5   0.227874385  -0.062058934  -0.017079950  -0.056365259   0.503452426   0.032127839   0.000933053   0.176424961
                         0.388098539  -0.105762788   0.138626864   0.456493708  -0.336944022  -0.021427461  -0.001373134  -0.257262973

   25    3.2  1.5 -0.5  -0.000070293  -0.000002814  -0.000234342   0.000031818  -0.000136853   0.000016649   0.000007050  -0.000057817
                        -0.049934661  -0.182845593  -0.438880380   0.133261211  -0.015860533   0.250121071  -0.061064995   0.000385627

   26    4.2  1.5 -0.5  -0.001781107  -0.006536767  -0.007522428   0.002283333   0.001212461  -0.018988236   0.002745130  -0.000009296
                         0.000000471   0.000000659   0.000004138  -0.000001010   0.000000902   0.000002125   0.000000923   0.000003028

   27    5.2  1.5 -0.5   0.000848772  -0.000482846   0.002822539   0.009113612  -0.002520301  -0.000186516  -0.000215951  -0.015393464
                        -0.000535762   0.000146327   0.000338659   0.001128203  -0.003771086  -0.000241176  -0.000057495  -0.010543467

   28    6.2  1.5 -0.5   0.008846070   0.032453690  -0.007025477   0.002206140  -0.000192550   0.002735470   0.019005625  -0.000209696
                        -0.000006321  -0.000002387   0.000005949   0.000007767  -0.000026874  -0.000003085  -0.000002580  -0.000075825

   29    7.2  1.5 -0.5  -0.000007485   0.000002227   0.000015757   0.000002543   0.000005316   0.000002044   0.000002282   0.000014463
                        -0.000591626  -0.002124003   0.026944826  -0.008213003  -0.000293811   0.004536961   0.018657499  -0.000122905

   30    8.2  1.5 -0.5  -0.004436436   0.001207094   0.000533594   0.001759959   0.003772300   0.000241040   0.000054829   0.010543179
                        -0.007551786   0.002060769  -0.004373616  -0.014240910  -0.002522296  -0.000167868  -0.000109583  -0.015393571

   31    1.2  1.5 -1.5   0.000014642  -0.000035475  -0.000035199  -0.000041659   0.000012547  -0.000182496   0.000021087  -0.000010534
                         0.142762616   0.524089074  -0.320222782   0.097317597   0.027639436  -0.433220802   0.105791168  -0.000564511

   32    2.2  1.5 -1.5  -0.113892867  -0.418529787   0.573615393  -0.174254559   0.027670590  -0.433225897   0.105793877  -0.000386688
                        -0.000052295  -0.000066249  -0.000250016   0.000006788   0.000027116   0.000185027  -0.000020536   0.000115018

   33    3.2  1.5 -1.5   0.357086388  -0.097129464   0.083617211   0.275653203   0.101641886   0.006603886   0.003241141   0.620344621
                        -0.209735855   0.057127004   0.010305058   0.034017347   0.151990028   0.009693867   0.002243207   0.424847943

   34    4.2  1.5 -1.5  -0.011812995   0.003216585   0.000601637   0.001984670   0.002269582   0.000145252   0.000056509   0.010729353
                        -0.020110869   0.005473767  -0.004879566  -0.016083733  -0.001516823  -0.000102763  -0.000081130  -0.015666789

   35    5.2  1.5 -1.5  -0.000006484   0.000003947  -0.000013632   0.000008465  -0.000113141  -0.000004792   0.000000494   0.000014797
                         0.002731173   0.010082800  -0.026652653   0.008043723  -0.001114795   0.018624171  -0.004546710   0.000003022

   36    6.2  1.5 -1.5   0.000595000  -0.000162975  -0.000246411  -0.000813551   0.015764867   0.001006721  -0.000008246  -0.001546904
                         0.001032686  -0.000204347   0.001813519   0.006649568  -0.010557293  -0.000540060  -0.000020551   0.002260821

   37    7.2  1.5 -1.5  -0.002940423   0.000768005  -0.002458822  -0.008100933   0.010353160   0.000688992  -0.000026698  -0.003752066
                         0.001722891  -0.000468197  -0.000305469  -0.000998730   0.015474986   0.000989365  -0.000013921  -0.002568152

   38    8.2  1.5 -1.5  -0.005520299  -0.020283483   0.002157234  -0.000641781  -0.001204479   0.018618436  -0.004546562   0.000029497
                        -0.000000283   0.000003793  -0.000001303   0.000001653  -0.000022873  -0.000003895  -0.000000393   0.000004173


   Nr   State  S   Sz       17            18            19            20            21            22            23            24

    1    1.2  0.5  0.5  -0.000132838   0.000002242  -0.000000012   0.000000004  -0.000000102  -0.000001498   0.000001326   0.000000050
                         0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000

    2    2.2  0.5  0.5  -0.000000000   0.000000000  -0.000000018  -0.000000049  -0.000000005   0.000000000  -0.000000000   0.000000002
                         0.000133535  -0.000002253  -0.000000879   0.000000862  -0.000000018  -0.000000337   0.000000276   0.000000014

    3    3.2  0.5  0.5   0.000002260   0.000133920   0.000001006   0.000001015   0.000000313  -0.000000003   0.000000065  -0.000000684
                        -0.000000162  -0.000009579   0.000000035   0.000000114   0.000000304  -0.000000021  -0.000000012   0.000000335

    4    1.2  0.5 -0.5  -0.000000160  -0.000009478  -0.000000000  -0.000000001   0.000001045  -0.000000071  -0.000000022   0.000000580
                        -0.000002236  -0.000132499   0.000000004   0.000000012  -0.000001073   0.000000073  -0.000000045   0.000001192

    5    2.2  0.5 -0.5   0.000002248   0.000133195   0.000000863   0.000000874  -0.000000241   0.000000010  -0.000000013   0.000000248
                        -0.000000161  -0.000009527   0.000000030   0.000000098  -0.000000235   0.000000016   0.000000004  -0.000000121

    6    3.2  0.5 -0.5  -0.000000000  -0.000000000   0.000000021   0.000000057  -0.000000013   0.000000001  -0.000000002   0.000000017
                        -0.000134262   0.000002266   0.000001021  -0.000001005  -0.000000016  -0.000000437   0.000000762   0.000000063

    7    1.2  1.5  1.5  -0.008412673  -0.498515638   0.000003470   0.000003496   0.000002005  -0.000000142  -0.000000052   0.000000122
                         0.000599042   0.035497757   0.000000121   0.000000393   0.000001956  -0.000000133   0.000000002  -0.000000061

    8    2.2  1.5  1.5  -0.000599036  -0.035497427  -0.000000087  -0.000000283  -0.000001333   0.000000091  -0.000000024   0.000000660
                        -0.008412598  -0.498511034   0.000002494   0.000002507   0.000001364  -0.000000125  -0.000000138   0.000001346

    9    3.2  1.5  1.5   0.000000004   0.000000247  -0.000000058  -0.000000156  -0.000000014   0.000000001  -0.000000002   0.000000026
                        -0.000009404   0.000137296  -0.000002845   0.000002773  -0.000000172  -0.000002752   0.000004463   0.000000220

   10    4.2  1.5  1.5   0.001029509  -0.000019083   0.195856709  -0.191369412   0.010269002   0.170500614  -0.304625439  -0.015295249
                         0.000000195   0.000000217  -0.004045792  -0.010763950  -0.001257256   0.000104067  -0.000168903   0.001916858

   11    5.2  1.5  1.5   0.000167259   0.005361560   0.021432790   0.023676759   0.116610442  -0.005125365   0.021975991  -0.319621710
                        -0.000007553  -0.000383425   0.000786549   0.002606209   0.113436076  -0.007743965  -0.005795651   0.156160070

   12    6.2  1.5  1.5  -0.010705475   0.000218970   0.208271618  -0.203836802   0.030586449   0.479351149   0.382930418   0.022535876
                        -0.000001149  -0.000002511  -0.004327605  -0.011485093  -0.001961356   0.000091262   0.000271153  -0.004048403

   13    7.2  1.5  1.5  -0.000001092   0.000001147   0.001478812   0.003890470   0.002464055  -0.000128905  -0.000433020   0.006618303
                         0.010755858  -0.000173372   0.070026761  -0.068918657   0.034422639   0.543258004   0.443602936   0.030085684

   14    8.2  1.5  1.5   0.000006869   0.000383487   0.008789182   0.028852497   0.228502240  -0.015535682  -0.004705277   0.126611657
                         0.000074120   0.005363859  -0.255630468  -0.256736835  -0.234838822   0.010473439  -0.018199205   0.259243472

   15    1.2  1.5  0.5   0.000092242  -0.000012491   0.000000039   0.000000109   0.000000006  -0.000000000   0.000000003  -0.000000021
                        -0.288564870   0.004870442   0.000001926  -0.000001908  -0.000000269  -0.000003863   0.000001246   0.000000004

   16    2.2  1.5  0.5   0.288551949  -0.004711866  -0.000004647   0.000004561   0.000000150   0.000001616   0.000005544   0.000000366
                         0.000092241  -0.000012828   0.000000096   0.000000258   0.000000038  -0.000000002   0.000000007  -0.000000079

   17    3.2  1.5  0.5   0.009635192   0.575639920   0.000001597   0.000001593   0.000001191  -0.000000081   0.000000004  -0.000000425
                        -0.000700349  -0.041174672   0.000000055   0.000000179   0.000001160  -0.000000079  -0.000000008   0.000000206

   18    4.2  1.5  0.5   0.000013060   0.000763823  -0.011240123  -0.036862310  -0.164862287   0.011213179  -0.001801152   0.050185684
                         0.000183187   0.010678522   0.325809305   0.328448584   0.168951293  -0.014222512  -0.011972877   0.102323330

   19    5.2  1.5  0.5   0.000000263  -0.000000284   0.000242468   0.000638740   0.001167024  -0.000078274  -0.000051220   0.000886801
                        -0.009315185   0.000153290   0.008770710  -0.010457602   0.023171639   0.358308001  -0.208642604  -0.005966217

   20    6.2  1.5  0.5   0.000001601   0.000073384  -0.008892277  -0.029216888  -0.089034522   0.006049438   0.002170430  -0.059526105
                        -0.000049185   0.001027144   0.258091995   0.260229016   0.091799906  -0.000285269   0.009596406  -0.121597031

   21    7.2  1.5  0.5   0.000014177  -0.000001328  -0.014805234  -0.014705202  -0.229485028   0.009942358  -0.024966916   0.370385623
                        -0.000000944   0.000000009  -0.000490337  -0.001644521  -0.223253500   0.015183861   0.006682268  -0.180853152

   22    8.2  1.5  0.5   0.009314158  -0.000157196   0.419260624  -0.411270454   0.002808122   0.072846523  -0.324551031  -0.019585921
                         0.000000268  -0.000000239  -0.008719569  -0.023176856  -0.002057276   0.000148256  -0.000318859   0.003677979

   23    1.2  1.5 -0.5   0.004857139   0.287822906   0.000001911   0.000001915   0.000002767  -0.000000197  -0.000000006  -0.000001121
                        -0.000359949  -0.020680117   0.000000064   0.000000214   0.000002696  -0.000000183  -0.000000021   0.000000542

   24    2.2  1.5 -0.5  -0.000348971  -0.020679195   0.000000157   0.000000517   0.000001129  -0.000000077   0.000000090  -0.000002433
                        -0.004698943  -0.287810018  -0.000004566  -0.000004619  -0.000001156   0.000000134   0.000000364  -0.000004982

   25    3.2  1.5 -0.5   0.000000186   0.000011126  -0.000000034  -0.000000090   0.000000000   0.000000000  -0.000000001   0.000000006
                         0.577110623  -0.009660605  -0.000001603   0.000001595   0.000000113   0.000001663  -0.000000472  -0.000000007

   26    4.2  1.5 -0.5   0.010705805  -0.000183652  -0.330438468   0.325485214   0.018011664   0.236059505   0.113967362   0.011553246
                         0.000000001   0.000000043   0.006908049   0.018368968   0.001896082  -0.000149165   0.000330284  -0.003621663

   27    5.2  1.5 -0.5   0.000152879   0.009291427   0.010472421   0.008712530  -0.256659016   0.015779992  -0.004976028   0.187612777
                        -0.000011220  -0.000664869   0.000312778   0.001037289  -0.250021567   0.017008194   0.003409004  -0.091286299

   28    6.2  1.5 -0.5   0.001029762   0.000048945  -0.261806590   0.257834205   0.004426443   0.127883833  -0.135385053  -0.009578217
                        -0.000000086  -0.000005106   0.005484153   0.014562712  -0.004133240   0.000308266  -0.000291277   0.002249355

   29    7.2  1.5 -0.5  -0.000000086  -0.000000070   0.000303440   0.000855058  -0.003934839   0.000282559  -0.000470202   0.004921137
                        -0.000001325  -0.000014209   0.014793759  -0.014788652  -0.017717708  -0.320164679   0.412180974   0.025372860

   30    8.2  1.5 -0.5  -0.000011454  -0.000664801  -0.014235901  -0.046725749   0.050736357  -0.003433231  -0.005266783   0.142357457
                        -0.000156778  -0.009290402   0.411676926   0.416739974  -0.052272946   0.000575197  -0.019219700   0.291663895

   31    1.2  1.5 -1.5   0.000160082  -0.000002700   0.000000074   0.000000195   0.000000004  -0.000000001   0.000000001  -0.000000021
                         0.499777857  -0.008433973   0.000003518  -0.000003466  -0.000000194  -0.000002801  -0.000000136  -0.000000048

   32    2.2  1.5 -1.5   0.499773241  -0.008433898   0.000002523  -0.000002492  -0.000000153  -0.000001907  -0.000001499  -0.000000135
                        -0.000160083   0.000002701  -0.000000054  -0.000000140  -0.000000022   0.000000003  -0.000000004   0.000000039

   33    3.2  1.5 -1.5  -0.000136964  -0.000009379   0.000002776   0.000002828  -0.000001972   0.000000113  -0.000000209   0.000004012
                         0.000009549   0.000000674   0.000000097   0.000000316  -0.000001920   0.000000130   0.000000073  -0.000001956

   34    4.2  1.5 -1.5   0.000001145   0.000073646   0.006644601   0.021800412  -0.118924736   0.008067542   0.004971981  -0.133500280
                         0.000019050   0.001026872  -0.191556686  -0.194681692   0.122177656  -0.006476716   0.014591039  -0.273814471

   35    5.2  1.5 -1.5  -0.000000081   0.000004400   0.000447115   0.001161428  -0.001968688   0.000149222  -0.000490339   0.004409031
                        -0.005375253   0.000167371   0.023815568  -0.021415746  -0.009075386  -0.162682872   0.355729915   0.022295612

   36    6.2  1.5 -1.5  -0.000013118  -0.000764945   0.007057677   0.023207544  -0.334493161   0.022752154  -0.006225065   0.167869871
                        -0.000218591  -0.010678111  -0.204038080  -0.207019814   0.343353832  -0.020535755  -0.022034153   0.344173636

   37    7.2  1.5 -1.5   0.000172848   0.010728370  -0.068987370  -0.069603712   0.389147373  -0.022932211  -0.029947140   0.398653369
                        -0.000013513  -0.000768483  -0.002379001  -0.007826677   0.379069377  -0.025789597   0.007219366  -0.194574536

   38    8.2  1.5 -1.5  -0.005377550   0.000074421  -0.258295751   0.255373478   0.018343594   0.327662141  -0.288509216  -0.018422601
                         0.000000183   0.000001563   0.005438131   0.014442032  -0.003816135   0.000260274  -0.000353714   0.003736112


   Nr   State  S   Sz       25            26            27            28            29            30            31            32

    1    1.2  0.5  0.5   0.000000137  -0.000003124   0.000001692  -0.000000670  -0.000000099   0.000001252   0.000000000  -0.000001065
                        -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000

    2    2.2  0.5  0.5   0.000000000  -0.000000000   0.000000018   0.000000044   0.000000085   0.000000006   0.000000005  -0.000000001
                         0.000000000  -0.000000023   0.000004040  -0.000001639   0.000000659  -0.000007717  -0.000000011   0.000008148

    3    3.2  0.5  0.5   0.000001527   0.000000072   0.000000060   0.000000126  -0.000000625  -0.000000054   0.000001559   0.000000011
                         0.000001404   0.000000062   0.000000066   0.000000166   0.000001165   0.000000093   0.000000693   0.000000000

    4    1.2  0.5 -0.5  -0.000002114  -0.000000093   0.000000527   0.000001333  -0.000001103  -0.000000088   0.000000433  -0.000000000
                         0.000002300   0.000000101  -0.000000413  -0.000001043  -0.000000592  -0.000000047  -0.000000973  -0.000000000

    5    2.2  0.5 -0.5   0.000000017  -0.000000000  -0.000001044  -0.000002476   0.000003643   0.000000387   0.000007446   0.000000012
                         0.000000015   0.000000001  -0.000001264  -0.000003193  -0.000006803  -0.000000540   0.000003309  -0.000000000

    6    3.2  0.5 -0.5   0.000000003  -0.000000000   0.000000003   0.000000007   0.000000004   0.000000000  -0.000000005  -0.000000000
                        -0.000000095   0.000002075   0.000000208  -0.000000088   0.000000107  -0.000001322   0.000000010  -0.000001706

    7    1.2  1.5  1.5  -0.000002530  -0.000000127  -0.000234785  -0.000072535   0.014630550   0.001292163  -0.017409469  -0.000174290
                        -0.000002329  -0.000000102  -0.000073398  -0.000180906  -0.027291349  -0.002167992  -0.007728495  -0.000000910

    8    2.2  1.5  1.5   0.000003814   0.000000167  -0.003303190  -0.008345375  -0.014146801  -0.001123748  -0.012442333  -0.000000598
                        -0.000004146  -0.000000225   0.002730254   0.006470182  -0.007577058  -0.000675300   0.028006608   0.000177665

    9    3.2  1.5  1.5   0.000000013  -0.000000000   0.000044435   0.000110316   0.000224316   0.000015481   0.000020665  -0.000001544
                         0.000000209  -0.000005091   0.024388281  -0.009752155   0.000792607  -0.008481461  -0.000047271   0.014242188

   10    4.2  1.5  1.5  -0.012142738   0.300572898   0.546422752  -0.218606720   0.019711594  -0.213653050  -0.001068501   0.341589387
                         0.000916380  -0.000007451  -0.001044113  -0.002584645  -0.005116533  -0.000355243  -0.000478135   0.000038549

   11    5.2  1.5  1.5   0.318958800   0.018071970   0.068176710   0.171788887  -0.006974446  -0.002069753   0.513647625   0.003286900
                         0.293245744   0.012908516   0.086937786   0.219644087   0.013162860   0.001061396   0.228305464  -0.000007452

   12    6.2  1.5  1.5   0.007362558  -0.221804081   0.191690136  -0.074295976  -0.014357236   0.178932825   0.003574793  -0.122213299
                        -0.002131181  -0.000016228   0.000699226   0.001718962   0.000300489   0.000039425   0.001585226  -0.000017781

   13    7.2  1.5  1.5   0.005148825   0.000102880   0.000113024   0.000245247   0.001503444   0.000131346   0.000111231  -0.000023586
                        -0.001110145  -0.102518351  -0.137993050   0.054412908   0.016589643  -0.198541442  -0.000108571   0.154367156

   14    8.2  1.5  1.5   0.094016836   0.004154760  -0.042008188  -0.106166793   0.538103482   0.042748252   0.040241489   0.000008297
                        -0.102390433  -0.004731566   0.030226513   0.084177610   0.288540614   0.025738879  -0.090530890  -0.002561237

   15    1.2  1.5  0.5  -0.000000007   0.000000001  -0.000031279  -0.000066651  -0.000146930  -0.000003774  -0.000015730  -0.000006182
                         0.000000318  -0.000007082  -0.030119478   0.011980723   0.000366128  -0.005575899   0.000034471  -0.002293629

   16    2.2  1.5  0.5  -0.000000179   0.000002909  -0.012146924   0.004920081  -0.001733559   0.020280017   0.000038796  -0.022389400
                        -0.000000047   0.000000002   0.000059340   0.000119289   0.000229102   0.000017297   0.000017315  -0.000000945

   17    3.2  1.5  0.5  -0.000001873  -0.000000092   0.004316107   0.011089704   0.012214020   0.001066719   0.018360429   0.000005220
                        -0.000001723  -0.000000076   0.005593434   0.014138704  -0.022778705  -0.001810031   0.008160074  -0.000000117

   18    4.2  1.5  0.5   0.322452198   0.014158144   0.029099407   0.073553794  -0.215652971  -0.017126586   0.056070372  -0.000006622
                        -0.350672170  -0.018614701  -0.021749738  -0.057986960  -0.115613792  -0.010398956  -0.126143697   0.000145344

   19    5.2  1.5  0.5   0.002331997   0.000099706  -0.000961622  -0.002446868  -0.002874035  -0.000224993  -0.000621279  -0.000010122
                        -0.025866476   0.532700969  -0.292079660   0.117829274   0.018623507  -0.254175185   0.001249954   0.168047726

   20    6.2  1.5  0.5  -0.231976164  -0.010188411   0.146389190   0.369845061   0.414522407   0.032921521   0.071808679  -0.000000186
                         0.252226622   0.015336001  -0.121089892  -0.286737634   0.222196991   0.021120568  -0.161622097  -0.000800111

   21    7.2  1.5  0.5  -0.080195142  -0.005151771  -0.070770275  -0.180249572  -0.109247617  -0.005882136   0.548849679   0.002914661
                        -0.073585338  -0.003213256  -0.091087617  -0.230101179   0.203267747   0.016142261   0.243922702   0.000026434

   22    8.2  1.5  0.5   0.001084567   0.023117715   0.105641541  -0.040596227  -0.026189543   0.319176916  -0.000698282  -0.277505694
                         0.001881120  -0.000014965   0.000550651   0.001342249   0.001518834   0.000104078  -0.000298990  -0.000018410

   23    1.2  1.5 -0.5  -0.000005214  -0.000000238  -0.007436171  -0.018537907  -0.002639272  -0.000043608   0.002093407   0.000037888
                        -0.000004793  -0.000000210  -0.009393910  -0.023738786   0.004911712   0.000392092   0.000937240  -0.000000373

   24    2.2  1.5 -0.5  -0.000001967  -0.000000087   0.003801115   0.009602443   0.017878976   0.001419311  -0.009092925   0.000000065
                         0.000002143   0.000000164  -0.003126172  -0.007439380   0.009571918   0.001021406   0.020459813   0.000042485

   25    3.2  1.5 -0.5   0.000000007   0.000000000   0.000019658   0.000048222   0.000084323   0.000005364   0.000002227  -0.000000689
                        -0.000000119   0.000002545  -0.017968976   0.007064911   0.002099284  -0.025846696  -0.000004722   0.020092092

   26    4.2  1.5 -0.5  -0.023285616   0.476388905   0.093661819  -0.036320483  -0.020007982   0.244689085  -0.000135505  -0.138043902
                        -0.002177204  -0.000012360   0.000334570   0.000805650   0.001067175   0.000068477  -0.000052983   0.000001951

   27    5.2  1.5 -0.5   0.392065600   0.020619299  -0.074544751  -0.179250478  -0.120356850  -0.006271457  -0.153566089   0.001394549
                         0.360631237   0.015791049  -0.091284199  -0.230609451   0.223873411   0.017769747  -0.068245840  -0.000060037

   28    6.2  1.5 -0.5   0.018185183  -0.342682368   0.467973639  -0.189910845   0.038995043  -0.470319363   0.000731066  -0.176856405
                         0.002880231   0.000043646  -0.002124451  -0.005140785  -0.003048200  -0.000160498   0.000325148  -0.000026467

   29    7.2  1.5 -0.5   0.001121617  -0.000112123  -0.000138426  -0.000404431   0.002447728   0.000176617   0.001159677  -0.000026963
                        -0.005967219   0.108839549   0.292295126  -0.115348265  -0.017005316   0.230765655  -0.002674154   0.600611567

   30    8.2  1.5 -0.5  -0.015658214  -0.000650648  -0.032797318  -0.082854823   0.281308653   0.022360275  -0.112696251   0.000010401
                         0.017007317  -0.002071609   0.023962286   0.065540193   0.150795741   0.013719225   0.253592125  -0.000759528

   31    1.2  1.5 -1.5  -0.000000011  -0.000000002  -0.000054369  -0.000139661  -0.000113762  -0.000009217   0.000069958  -0.000008818
                         0.000000163  -0.000003439  -0.000187170   0.000202499  -0.002521296   0.030965637  -0.000159636   0.019047812

   32    2.2  1.5 -1.5   0.000000279  -0.000005634   0.010559652  -0.004283955   0.001309491  -0.016048168   0.000162593  -0.030646072
                         0.000000029   0.000000001  -0.000047870  -0.000114368  -0.000063836  -0.000010827   0.000071615  -0.000005500

   33    3.2  1.5 -1.5   0.000003747   0.000000145  -0.006097098  -0.014995427   0.003995878   0.000572364   0.013015135   0.000051589
                         0.000003446   0.000000151  -0.007611971  -0.019233496  -0.007481201  -0.000592405   0.005783266   0.000000316

   34    4.2  1.5 -1.5   0.203447799   0.008893362   0.170562933   0.430959023   0.188439509   0.014951118  -0.138706396   0.000002933
                        -0.221253372  -0.008318289  -0.136762072  -0.335936355   0.100689142   0.013827144   0.312159969   0.001170597

   35    5.2  1.5 -1.5   0.002729737  -0.000022005   0.000079810   0.000110628   0.001322109   0.000076702  -0.001341833   0.000000152
                        -0.022040289   0.433275633   0.278845729  -0.110481809   0.001913758  -0.014896237   0.003000542  -0.562100763

   36    6.2  1.5 -1.5  -0.150115822  -0.006552147   0.059568508   0.150527726  -0.157694665  -0.012509577   0.049622506   0.000003376
                         0.163285913   0.003977254  -0.044434667  -0.118688673  -0.084553827  -0.007052021  -0.111685710  -0.003910509

   37    7.2  1.5 -1.5   0.075535665  -0.004302179   0.033341367   0.085133687   0.093742589   0.009167414   0.141070256   0.000144390
                         0.069313673   0.003038767   0.043002069   0.108601795  -0.175017280  -0.013908095   0.062676969  -0.000057545

   38    8.2  1.5 -1.5   0.006295153  -0.139007032   0.135486223  -0.051710539  -0.049837639   0.610582532  -0.002343828   0.099071791
                         0.000144141  -0.000094897   0.000860783   0.002085713   0.002472384   0.000119964  -0.001032703  -0.000002194


   Nr   State  S   Sz       33            34            35            36            37            38

    1    1.2  0.5  0.5   0.000007053   0.000081683   0.000004368   0.000367325  -0.000000124   0.000367526
                         0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000

    2    2.2  0.5  0.5  -0.000000004  -0.000000002   0.000000001   0.000000001  -0.000000000  -0.000000000
                         0.000031081   0.000359982   0.000001462   0.000122910   0.000000126  -0.000372728

    3    3.2  0.5  0.5   0.000052536  -0.000004540  -0.000051636   0.000000615  -0.000373558  -0.000000127
                         0.000278854  -0.000024075  -0.000256467   0.000003049  -0.000056961  -0.000000019

    4    1.2  0.5 -0.5   0.000080271  -0.000006931   0.000360099  -0.000004282  -0.000055401  -0.000000019
                        -0.000015122   0.000001306  -0.000072501   0.000000862   0.000363326   0.000000123

    5    2.2  0.5 -0.5  -0.000066648   0.000005759  -0.000024259   0.000000288  -0.000368469  -0.000000125
                        -0.000353759   0.000030543  -0.000120492   0.000001433  -0.000056185  -0.000000019

    6    3.2  0.5 -0.5  -0.000000005  -0.000000002   0.000000001   0.000000001   0.000000000  -0.000000000
                         0.000024500   0.000283759  -0.000003111  -0.000261613  -0.000000128   0.000377876

    7    1.2  1.5  1.5  -0.002612367   0.000225777   0.002551386  -0.000030401   0.011894013   0.000004039
                        -0.013890532   0.001198827   0.012693174  -0.000151389   0.001817523   0.000000615

    8    2.2  1.5  1.5   0.013888796  -0.001199104  -0.012694191   0.000150935  -0.001817366  -0.000000615
                        -0.002611521   0.000231843   0.002551670  -0.000023685   0.011892982   0.000004037

    9    3.2  1.5  1.5  -0.000004082   0.000000210   0.000003557  -0.000000011   0.000000722   0.000000000
                         0.001929313   0.022340140   0.000291595   0.024558064  -0.000003213  -0.000002919

   10    4.2  1.5  1.5   0.023104559   0.267301730   0.004224107   0.357253150  -0.000085750   0.042736418
                         0.000104362  -0.000013310  -0.000093711   0.000006110  -0.000006753   0.000007933

   11    5.2  1.5  1.5  -0.061065233   0.002803383   0.059464916   0.001321510   0.221002394   0.003265408
                        -0.323047670   0.027923966   0.295272716  -0.003541121   0.033705603  -0.000033576

   12    6.2  1.5  1.5   0.030310152   0.355982027  -0.002777378  -0.268305480   0.001726899  -0.444968210
                        -0.002299840   0.000236116   0.002108585  -0.000056837   0.000249191  -0.000045891

   13    7.2  1.5  1.5   0.000494370  -0.000007529  -0.000445512  -0.000029173  -0.000028955  -0.000046187
                        -0.028509592  -0.328740764   0.003703031   0.301283030   0.000189017   0.447045252

   14    8.2  1.5  1.5   0.323083209  -0.027912588  -0.295283557   0.003514871  -0.033709499   0.000005123
                        -0.060816271   0.005760745   0.059437313  -0.001167481   0.221028691  -0.000606288

   15    1.2  1.5  0.5   0.000000985   0.000009427  -0.000000069  -0.000000266   0.000000259  -0.000002222
                        -0.000295226  -0.003421340   0.000346280   0.029131518  -0.000002293   0.006935901

   16    2.2  1.5  0.5   0.002522155   0.029216841  -0.000008791  -0.000774776  -0.000001407  -0.006938637
                        -0.000001700   0.000001498   0.000001803  -0.000009409  -0.000000572  -0.000002222

   17    3.2  1.5  0.5  -0.001511602   0.000122567   0.001476111  -0.000017364  -0.013726187  -0.000002743
                        -0.008019685   0.000692322   0.007331511  -0.000086616  -0.002092998  -0.000000576

   18    4.2  1.5  0.5   0.349787234  -0.030204839  -0.262949001   0.003120389  -0.067089618  -0.000015636
                        -0.065886316   0.005790818   0.052948898  -0.000525648   0.439983426   0.000273103

   19    5.2  1.5  0.5   0.001983905  -0.000178083   0.002408507  -0.000038563   0.000024585   0.000011152
                        -0.026315709  -0.300075417  -0.004443329  -0.329991873  -0.000030317  -0.387156982

   20    6.2  1.5  0.5  -0.262652942   0.022665410  -0.350202818   0.004151896  -0.006454174   0.000012891
                         0.049266386  -0.006414157   0.070445170  -0.003193329   0.042328304  -0.002749243

   21    7.2  1.5  0.5   0.055494883  -0.005255219   0.065086845  -0.001276360   0.000014637   0.000590306
                         0.294951966  -0.025496375   0.323467963  -0.003880302  -0.000001293  -0.000039220

   22    8.2  1.5  0.5  -0.025996837  -0.300153893  -0.004004263  -0.329907548  -0.000129791   0.387231059
                        -0.000452390   0.000045981  -0.000496320   0.000015966  -0.000009702   0.000011303

   23    1.2  1.5 -0.5  -0.000642672   0.000055625   0.005750083  -0.000068414  -0.006856982  -0.000002306
                        -0.003360451   0.000289940   0.028558394  -0.000339454  -0.001043319  -0.000000089

   24    2.2  1.5 -0.5  -0.028711497   0.002478870   0.000757678  -0.000008974  -0.001043732  -0.000000353
                         0.005410522  -0.000465268  -0.000162145  -0.000000033   0.006859687  -0.000001477

   25    3.2  1.5 -0.5   0.000007724  -0.000000750  -0.000000073   0.000000019   0.000000156   0.000000000
                         0.000703046   0.008160900  -0.000088340  -0.007478634   0.000002798  -0.013884842

   26    4.2  1.5 -0.5   0.030754774   0.355938362  -0.003162754  -0.268227071  -0.000272339   0.445069019
                         0.000098750  -0.000010397   0.000100578  -0.000007831  -0.000025711  -0.000000007

   27    5.2  1.5 -0.5  -0.055379361   0.006821560  -0.065094222   0.003238128   0.382734804  -0.000033677
                        -0.294921032   0.025493504  -0.323507926   0.003880542   0.058348938   0.000019734

   28    6.2  1.5 -0.5  -0.023461079  -0.267233416  -0.004700503  -0.357217767   0.002719772   0.042817539
                        -0.002107123   0.000211441  -0.002311032   0.000061772   0.000401676   0.000000135

   29    7.2  1.5 -0.5   0.000444109  -0.000070285   0.000485378  -0.000037906   0.000127754  -0.000003485
                        -0.026028546  -0.300127203  -0.004055890  -0.329951239  -0.000577649   0.000014275

   30    8.2  1.5 -0.5   0.294973695  -0.025463681   0.323420800  -0.003827530   0.058359955   0.000009973
                        -0.055523708   0.005257486  -0.065099731   0.001276897  -0.382808058  -0.000129771

   31    1.2  1.5 -1.5  -0.000000071  -0.000004411   0.000000078   0.000004115  -0.000000001  -0.000003854
                        -0.001219902  -0.014134048   0.000154411   0.012947054   0.000004085  -0.012032079

   32    2.2  1.5 -1.5  -0.001221298  -0.014132186   0.000152640   0.012948108   0.000004084  -0.012031036
                        -0.000005840   0.000004922  -0.000006572  -0.000004038   0.000000001   0.000003854

   33    3.2  1.5 -1.5  -0.004135728   0.000361194  -0.004847149   0.000054066  -0.000002886   0.000003286
                        -0.021953989   0.001895205  -0.024074959   0.000286560  -0.000000440  -0.000000230

   34    4.2  1.5 -1.5   0.262683393  -0.022685833   0.350224106  -0.004159507  -0.006434237  -0.000006250
                        -0.049473740   0.004380013  -0.070518700   0.000741864   0.042249285   0.000085788

   35    5.2  1.5 -1.5  -0.002414773   0.000202283   0.001994441  -0.000015785  -0.000525420  -0.000006610
                        -0.027960252  -0.328768491   0.003210628   0.301201015   0.003223035  -0.223557880

   36    6.2  1.5 -1.5   0.349784508  -0.030211965  -0.263016195   0.003138923   0.067029049   0.000013969
                        -0.066136651   0.003351377   0.053012416   0.001518921  -0.439890687  -0.001744729

   37    7.2  1.5 -1.5   0.060853916  -0.005763938  -0.059494228   0.001167632   0.441944040  -0.000191222
                         0.323059267  -0.027925226  -0.295350475   0.003542253   0.067341848   0.000000132

   38    8.2  1.5 -1.5  -0.028496582  -0.328757323   0.003676158   0.301206194  -0.000600133  -0.223584464
                        -0.000493572   0.000048955   0.000450768  -0.000013414  -0.000086327   0.000006498


 Composition of spin-orbit eigenvectors
 ======================================

   Nr   State  S   Sz       1        2        3        4        5        6        7        8        9       10

    1    1.2  0.5  0.5   4.131%   1.824%  60.700%   0.011%   5.230%  28.104%   0.000%   0.000%   0.000%   0.000%
    2    2.2  0.5  0.5  21.194%   9.361%  36.105%   0.006%   5.230%  28.103%   0.000%   0.000%   0.000%   0.000%
    3    3.2  0.5  0.5  19.451%  44.039%   0.001%   3.177%  28.103%   5.230%   0.000%   0.000%   0.000%   0.000%
    4    1.2  0.5 -0.5   1.824%   4.131%   0.011%  60.700%  28.104%   5.230%   0.000%   0.000%   0.000%   0.000%
    5    2.2  0.5 -0.5   9.361%  21.194%   0.006%  36.105%  28.103%   5.230%   0.000%   0.000%   0.000%   0.000%
    6    3.2  0.5 -0.5  44.039%  19.451%   3.177%   0.001%   5.230%  28.103%   0.000%   0.000%   0.000%   0.000%
    7    1.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  14.090%   0.071%  27.467%   2.038%
    8    2.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.113%   0.001%  17.517%   1.297%
    9    3.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.065%  12.993%   1.270%  17.150%
   10    4.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.036%   0.004%   0.054%
   11    5.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.010%   0.000%   0.010%   0.001%
   12    6.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.017%   0.000%   0.000%
   13    7.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.012%   0.000%   0.001%
   14    8.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.053%   0.000%   0.041%   0.003%
   15    1.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.185%  36.990%   0.529%   7.139%
   16    2.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.026%   1.504%  20.255%
   17    3.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  35.049%   0.175%   3.343%   0.249%
   18    4.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.011%   0.000%   0.004%   0.000%
   19    5.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.037%   0.000%   0.000%
   20    6.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.005%   0.000%   0.105%   0.008%
   21    7.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.044%   0.000%   0.000%   0.000%
   22    8.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.016%   0.001%   0.008%
   23    1.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  36.990%   0.185%   7.139%   0.529%
   24    2.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.026%   0.000%  20.255%   1.504%
   25    3.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.175%  35.049%   0.249%   3.343%
   26    4.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.011%   0.000%   0.004%
   27    5.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.037%   0.000%   0.000%   0.000%
   28    6.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.005%   0.008%   0.105%
   29    7.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.044%   0.000%   0.000%
   30    8.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.016%   0.000%   0.008%   0.001%
   31    1.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.071%  14.090%   2.038%  27.467%
   32    2.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.113%   1.297%  17.517%
   33    3.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  12.993%   0.065%  17.150%   1.270%
   34    4.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.036%   0.000%   0.054%   0.004%
   35    5.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.010%   0.001%   0.010%
   36    6.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.017%   0.000%   0.000%   0.000%
   37    7.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.012%   0.000%   0.001%   0.000%
   38    8.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.053%   0.003%   0.041%

   Nr   State  S   Sz      11       12       13       14       15       16       17       18       19       20

    1    1.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    2    2.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    3    3.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    4    1.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    5    2.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    6    3.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    7    1.2  1.5  1.5   0.947%  10.254%  18.768%   0.076%   0.000%   1.119%   0.007%  24.978%   0.000%   0.000%
    8    2.2  1.5  1.5   3.036%  32.903%  18.768%   0.077%   0.000%   1.119%   0.007%  24.977%   0.000%   0.000%
    9    3.2  1.5  1.5   7.714%   0.710%   0.014%   3.343%  56.532%   0.002%   0.000%   0.000%   0.000%   0.000%
   10    4.2  1.5  1.5   0.026%   0.002%   0.000%   0.001%   0.036%   0.000%   0.000%   0.000%   3.838%   3.674%
   11    5.2  1.5  1.5   0.006%   0.071%   0.035%   0.000%   0.000%   0.002%   0.000%   0.003%   0.046%   0.057%
   12    6.2  1.5  1.5   0.004%   0.000%   0.000%   0.036%   0.001%   0.000%   0.011%   0.000%   4.340%   4.168%
   13    7.2  1.5  1.5   0.007%   0.001%   0.000%   0.035%   0.002%   0.000%   0.012%   0.000%   0.491%   0.476%
   14    8.2  1.5  1.5   0.000%   0.000%   0.035%   0.000%   0.000%   0.002%   0.000%   0.003%   6.542%   6.675%
   15    1.2  1.5  0.5   0.044%   0.004%   0.063%  15.576%  30.938%   0.001%   8.327%   0.002%   0.000%   0.000%
   16    2.2  1.5  0.5  21.156%   1.951%   0.149%  36.700%   9.731%   0.000%   8.326%   0.002%   0.000%   0.000%
   17    3.2  1.5  0.5   1.776%  19.262%   6.256%   0.025%   0.000%   0.373%   0.009%  33.306%   0.000%   0.000%
   18    4.2  1.5  0.5   0.001%   0.006%   0.036%   0.000%   0.000%   0.001%   0.000%   0.011%  10.628%  10.924%
   19    5.2  1.5  0.5   0.008%   0.001%   0.000%   0.002%   0.035%   0.000%   0.009%   0.000%   0.008%   0.011%
   20    6.2  1.5  0.5   0.000%   0.005%   0.001%   0.000%   0.000%   0.036%   0.000%   0.000%   6.669%   6.857%
   21    7.2  1.5  0.5   0.007%   0.073%   0.002%   0.000%   0.000%   0.035%   0.000%   0.000%   0.022%   0.022%
   22    8.2  1.5  0.5   0.021%   0.002%   0.000%   0.002%   0.035%   0.000%   0.009%   0.000%  17.586%  16.968%
   23    1.2  1.5 -0.5   0.004%   0.044%  15.576%   0.063%   0.001%  30.938%   0.002%   8.327%   0.000%   0.000%
   24    2.2  1.5 -0.5   1.951%  21.156%  36.700%   0.149%   0.000%   9.731%   0.002%   8.326%   0.000%   0.000%
   25    3.2  1.5 -0.5  19.262%   1.776%   0.025%   6.256%   0.373%   0.000%  33.306%   0.009%   0.000%   0.000%
   26    4.2  1.5 -0.5   0.006%   0.001%   0.000%   0.036%   0.001%   0.000%   0.011%   0.000%  10.924%  10.628%
   27    5.2  1.5 -0.5   0.001%   0.008%   0.002%   0.000%   0.000%   0.035%   0.000%   0.009%   0.011%   0.008%
   28    6.2  1.5 -0.5   0.005%   0.000%   0.000%   0.001%   0.036%   0.000%   0.000%   0.000%   6.857%   6.669%
   29    7.2  1.5 -0.5   0.073%   0.007%   0.000%   0.002%   0.035%   0.000%   0.000%   0.000%   0.022%   0.022%
   30    8.2  1.5 -0.5   0.002%   0.021%   0.002%   0.000%   0.000%   0.035%   0.000%   0.009%  16.968%  17.586%
   31    1.2  1.5 -1.5  10.254%   0.947%   0.076%  18.768%   1.119%   0.000%  24.978%   0.007%   0.000%   0.000%
   32    2.2  1.5 -1.5  32.903%   3.036%   0.077%  18.768%   1.119%   0.000%  24.977%   0.007%   0.000%   0.000%
   33    3.2  1.5 -1.5   0.710%   7.714%   3.343%   0.014%   0.002%  56.532%   0.000%   0.000%   0.000%   0.000%
   34    4.2  1.5 -1.5   0.002%   0.026%   0.001%   0.000%   0.000%   0.036%   0.000%   0.000%   3.674%   3.838%
   35    5.2  1.5 -1.5   0.071%   0.006%   0.000%   0.035%   0.002%   0.000%   0.003%   0.000%   0.057%   0.046%
   36    6.2  1.5 -1.5   0.000%   0.004%   0.036%   0.000%   0.000%   0.001%   0.000%   0.011%   4.168%   4.340%
   37    7.2  1.5 -1.5   0.001%   0.007%   0.035%   0.000%   0.000%   0.002%   0.000%   0.012%   0.476%   0.491%
   38    8.2  1.5 -1.5   0.000%   0.000%   0.000%   0.035%   0.002%   0.000%   0.003%   0.000%   6.675%   6.542%

   Nr   State  S   Sz      21       22       23       24       25       26       27       28       29       30

    1    1.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    2    2.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    3    3.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    4    1.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    5    2.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    6    3.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    7    1.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.096%   0.001%
    8    2.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.002%   0.011%   0.026%   0.000%
    9    3.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.059%   0.010%   0.000%   0.007%
   10    4.2  1.5  1.5   0.011%   2.907%   9.280%   0.024%   0.015%   9.034%  29.858%   4.780%   0.041%   4.565%
   11    5.2  1.5  1.5   2.647%   0.009%   0.052%  12.654%  18.773%   0.049%   1.221%   7.775%   0.022%   0.001%
   12    6.2  1.5  1.5   0.094%  22.978%  14.664%   0.052%   0.006%   4.920%   3.675%   0.552%   0.021%   3.202%
   13    7.2  1.5  1.5   0.119%  29.513%  19.678%   0.095%   0.003%   1.051%   1.904%   0.296%   0.028%   3.942%
   14    8.2  1.5  1.5  10.736%   0.035%   0.035%   8.324%   1.932%   0.004%   0.268%   1.836%  37.281%   0.249%
   15    1.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.091%   0.014%   0.000%   0.003%
   16    2.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.015%   0.002%   0.000%   0.041%
   17    3.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.005%   0.032%   0.067%   0.000%
   18    4.2  1.5  0.5   5.572%   0.033%   0.015%   1.299%  22.695%   0.055%   0.132%   0.877%   5.987%   0.040%
   19    5.2  1.5  0.5   0.054%  12.838%   4.353%   0.004%   0.067%  28.377%   8.531%   1.389%   0.036%   6.461%
   20    6.2  1.5  0.5   1.635%   0.004%   0.010%   1.833%  11.743%   0.034%   3.609%  21.900%  22.120%   0.153%
   21    7.2  1.5  0.5  10.251%   0.033%   0.067%  16.989%   1.185%   0.004%   1.331%   8.544%   5.325%   0.030%
   22    8.2  1.5  0.5   0.001%   0.531%  10.533%   0.040%   0.000%   0.053%   1.116%   0.165%   0.069%  10.187%
   23    1.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.014%   0.091%   0.003%   0.000%
   24    2.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.002%   0.015%   0.041%   0.000%
   25    3.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.032%   0.005%   0.000%   0.067%
   26    4.2  1.5 -0.5   0.033%   5.572%   1.299%   0.015%   0.055%  22.695%   0.877%   0.132%   0.040%   5.987%
   27    5.2  1.5 -0.5  12.838%   0.054%   0.004%   4.353%  28.377%   0.067%   1.389%   8.531%   6.461%   0.036%
   28    6.2  1.5 -0.5   0.004%   1.635%   1.833%   0.010%   0.034%  11.743%  21.900%   3.609%   0.153%  22.120%
   29    7.2  1.5 -0.5   0.033%  10.251%  16.989%   0.067%   0.004%   1.185%   8.544%   1.331%   0.030%   5.325%
   30    8.2  1.5 -0.5   0.531%   0.001%   0.040%  10.533%   0.053%   0.000%   0.165%   1.116%  10.187%   0.069%
   31    1.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.096%
   32    2.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.011%   0.002%   0.000%   0.026%
   33    3.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.010%   0.059%   0.007%   0.000%
   34    4.2  1.5 -1.5   2.907%   0.011%   0.024%   9.280%   9.034%   0.015%   4.780%  29.858%   4.565%   0.041%
   35    5.2  1.5 -1.5   0.009%   2.647%  12.654%   0.052%   0.049%  18.773%   7.775%   1.221%   0.001%   0.022%
   36    6.2  1.5 -1.5  22.978%   0.094%   0.052%  14.664%   4.920%   0.006%   0.552%   3.675%   3.202%   0.021%
   37    7.2  1.5 -1.5  29.513%   0.119%   0.095%  19.678%   1.051%   0.003%   0.296%   1.904%   3.942%   0.028%
   38    8.2  1.5 -1.5   0.035%  10.736%   8.324%   0.035%   0.004%   1.932%   1.836%   0.268%   0.249%  37.281%

   Nr   State  S   Sz      31       32       33       34       35       36       37       38

    1    1.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    2    2.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    3    3.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    4    1.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    5    2.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    6    3.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    7    1.2  1.5  1.5   0.036%   0.000%   0.020%   0.000%   0.017%   0.000%   0.014%   0.000%
    8    2.2  1.5  1.5   0.094%   0.000%   0.020%   0.000%   0.017%   0.000%   0.014%   0.000%
    9    3.2  1.5  1.5   0.000%   0.020%   0.000%   0.050%   0.000%   0.060%   0.000%   0.000%
   10    4.2  1.5  1.5   0.000%  11.668%   0.053%   7.145%   0.002%  12.763%   0.000%   0.183%
   11    5.2  1.5  1.5  31.596%   0.001%  10.809%   0.079%   9.072%   0.001%   4.998%   0.001%
   12    6.2  1.5  1.5   0.002%   1.494%   0.092%  12.672%   0.001%   7.199%   0.000%  19.800%
   13    7.2  1.5  1.5   0.000%   2.383%   0.081%  10.807%   0.001%   9.077%   0.000%  19.985%
   14    8.2  1.5  1.5   0.982%   0.001%  10.808%   0.081%   9.073%   0.001%   4.999%   0.000%
   15    1.2  1.5  0.5   0.000%   0.001%   0.000%   0.001%   0.000%   0.085%   0.000%   0.005%
   16    2.2  1.5  0.5   0.000%   0.050%   0.001%   0.085%   0.000%   0.000%   0.000%   0.005%
   17    3.2  1.5  0.5   0.040%   0.000%   0.007%   0.000%   0.006%   0.000%   0.019%   0.000%
   18    4.2  1.5  0.5   1.906%   0.000%  12.669%   0.095%   7.195%   0.001%  19.809%   0.000%
   19    5.2  1.5  0.5   0.000%   2.824%   0.070%   9.005%   0.003%  10.889%   0.000%  14.989%
   20    6.2  1.5  0.5   3.128%   0.000%   7.141%   0.055%  12.760%   0.003%   0.183%   0.001%
   21    7.2  1.5  0.5  36.073%   0.001%   9.008%   0.068%  10.887%   0.002%   0.000%   0.000%
   22    8.2  1.5  0.5   0.000%   7.701%   0.068%   9.009%   0.002%  10.884%   0.000%  14.995%
   23    1.2  1.5 -0.5   0.001%   0.000%   0.001%   0.000%   0.085%   0.000%   0.005%   0.000%
   24    2.2  1.5 -0.5   0.050%   0.000%   0.085%   0.001%   0.000%   0.000%   0.005%   0.000%
   25    3.2  1.5 -0.5   0.000%   0.040%   0.000%   0.007%   0.000%   0.006%   0.000%   0.019%
   26    4.2  1.5 -0.5   0.000%   1.906%   0.095%  12.669%   0.001%   7.195%   0.000%  19.809%
   27    5.2  1.5 -0.5   2.824%   0.000%   9.005%   0.070%  10.889%   0.003%  14.989%   0.000%
   28    6.2  1.5 -0.5   0.000%   3.128%   0.055%   7.141%   0.003%  12.760%   0.001%   0.183%
   29    7.2  1.5 -0.5   0.001%  36.073%   0.068%   9.008%   0.002%  10.887%   0.000%   0.000%
   30    8.2  1.5 -0.5   7.701%   0.000%   9.009%   0.068%  10.884%   0.002%  14.995%   0.000%
   31    1.2  1.5 -1.5   0.000%   0.036%   0.000%   0.020%   0.000%   0.017%   0.000%   0.014%
   32    2.2  1.5 -1.5   0.000%   0.094%   0.000%   0.020%   0.000%   0.017%   0.000%   0.014%
   33    3.2  1.5 -1.5   0.020%   0.000%   0.050%   0.000%   0.060%   0.000%   0.000%   0.000%
   34    4.2  1.5 -1.5  11.668%   0.000%   7.145%   0.053%  12.763%   0.002%   0.183%   0.000%
   35    5.2  1.5 -1.5   0.001%  31.596%   0.079%  10.809%   0.001%   9.072%   0.001%   4.998%
   36    6.2  1.5 -1.5   1.494%   0.002%  12.672%   0.092%   7.199%   0.001%  19.800%   0.000%
   37    7.2  1.5 -1.5   2.383%   0.000%  10.807%   0.081%   9.077%   0.001%  19.985%   0.000%
   38    8.2  1.5 -1.5   0.001%   0.982%   0.081%  10.808%   0.001%   9.073%   0.000%   4.999%


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

              2       7       32.60       700     1000      520     2100     2140     5201     5203   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *       184.41    154.92     23.14      3.31      2.41      0.15      0.31
 REAL TIME  *       197.86 SEC
 DISK USED  *        62.31 MB (local),      907.81 MB (total)
 SF USED    *       219.00 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCVTZ-DK energy=    -99.157459024426

              CI              CI           MULTI         RHF-SCF
    -99.15303941    -99.71380538    -98.97807318    -97.68758534
 **********************************************************************************************************************************
 Molpro calculation terminated
