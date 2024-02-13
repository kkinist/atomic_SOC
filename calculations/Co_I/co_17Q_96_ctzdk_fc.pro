
 Working directory              : /wrk/irikura/molpro.D22lt1ZzH3/
 Global scratch directory       : /wrk/irikura/molpro.D22lt1ZzH3/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.D22lt1ZzH3/

 id        : nistki

 Nodes            nprocs
 pn125343.nist.gov   16
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1025), CPU time= 0.00 sec
 ***,Co atom, default active space/core
                                                                                 ! 4F + 4F + 4P
 memory,1000,M;
 
 gprint,orbitals,civector
 
 symmetry,xyz
 geometry={Co}
 
 basis=cc-pwCVTZ-DK
 
 set,dkho=101
 
                                                                                 ! Co anion orbitals to favor s2 (?)
 {rhf,so-sci;wf,nelec=28,sym=1, spin=2}
 
                                                                                 ! state-averaged casscf
 {multi
                                                                                 ! 17 quartets
     wf,nelec=27,sym=1,spin=3; state,17;
     expec2,lxx,lyy,lzz;
  }
 table, energy, ll
 title, Energies and &lt;L**2&gt; values
 
 {ci;wf,sym=1,spin=3; state,17;save,5101.2}
 hlsdiag = energd4
                                                                                 !{ci;wf,sym=1,spin=2;state,7;save,5102.2}
                                                                                 !hlsdiag(13) = energd4
 
 table, hlsdiag
 
                                                                                 !compute and diagonalize SO matrix
                                                                                 !{ci;hlsmat,ls,5101.2,5102.2;print,vls=0,hls=0}
 {ci;hlsmat,ls,5101.2;print,vls=0,hls=0}
 
 Commands initialized (840), CPU time= 0.02 sec, 684 directives.
 Default parameters read. Elapsed time= 0.09 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2022.3 linked Wed Nov 30 06:40:34 2022


 **********************************************************************************************************************************
 LABEL *   Co atolt activcore                                                            
  64 bit mpp version                                                                     DATE: 30-Jan-24          TIME: 12:02:13  
 **********************************************************************************************************************************

 SHA1:             e31ec9a5ea85254ab76f59d122cbdd51c71cf98b
 **********************************************************************************************************************************

 Memory per process:      1000 MW
 Total memory per node:  16000 MW

 GA preallocation disabled
 GA check disabled

 Variable memory set to 1000.0 MW


 ZSYMEL=XYZ

 SETTING BASIS          =    CC-PWCVTZ-DK
 SETTING DKHO           =       101.00000000                                  


 Recomputing integrals since basis changed


 Using spherical harmonics

 Library entry CO     S cc-pwCVTZ-DK         selected for orbital group  1
 Library entry CO     P cc-pwCVTZ-DK         selected for orbital group  1
 Library entry CO     D cc-pwCVTZ-DK         selected for orbital group  1
 Library entry CO     F cc-pwCVTZ-DK         selected for orbital group  1
 Library entry CO     G cc-pwCVTZ-DK         selected for orbital group  1


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

   1  CO     27.00    0.000000000    0.000000000    0.000000000

 NUCLEAR CHARGE:                   27
 NUMBER OF PRIMITIVE AOS:         196
 NUMBER OF SYMMETRY AOS:          165
 NUMBER OF CONTRACTIONS:          102   (   57Ag  +   45Au  )
 NUMBER OF INNER CORE ORBITALS:     5   (    2Ag  +    3Au  )
 NUMBER OF OUTER CORE ORBITALS:     4   (    1Ag  +    3Au  )
 NUMBER OF VALENCE ORBITALS:        6   (    6Ag  +    0Au  )


 NUCLEAR REPULSION ENERGY    0.00000000

 One-electron integrals computed with SEWARD

 eXact-2-Component (X2C) method activated

 Computing Douglas-Kroll / X2C integrals

 AO integral compression algorithm  1   Integral accuracy      1.0D-11

     17.564 MB (compressed) written to integral file ( 16.0%)

     Node minimum: 0.524 MB, node maximum: 1.835 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:     436352.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:     436352      RECORD LENGTH: 524288

 Memory used in sort:       0.99 MW

 SORT1 READ    12883698. AND WROTE       84089. INTEGRALS IN      1 RECORDS. CPU TIME:     0.06 SEC, REAL TIME:     0.07 SEC
 SORT2 READ     1353984. AND WROTE     7035726. INTEGRALS IN     80 RECORDS. CPU TIME:     0.01 SEC, REAL TIME:     0.02 SEC

 Node minimum:      435684.  Node maximum:      442156. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000

 EXTRA SYMMETRY OF AOS IN SYMMETRY 1:   1 1 1 1 1 1 1 1 1 2   3 4 5 6 2 3 4 5 6 2   3 4 5 6 2 3 4 5 6 2   3 4 5 6 2 3 4 5 6 7
                                        8 9101112131415 7 8   9101112131415
 EXTRA SYMMETRY OF AOS IN SYMMETRY 2:   1 2 3 1 2 3 1 2 3 1   2 3 1 2 3 1 2 3 1 2   3 1 2 3 4 5 6 7 8 9  10 4 5 6 7 8 910 4 5
                                        6 7 8 910

 Eigenvalues of metric

         1 0.366E-03 0.267E-02 0.154E-01 0.154E-01 0.154E-01 0.154E-01 0.154E-01 0.248E-01
         2 0.242E-03 0.242E-03 0.242E-03 0.177E-02 0.177E-02 0.177E-02 0.125E+00 0.125E+00


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      22       29.06       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600   
                                         AOSYM     SMH  

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         1.07      0.88
 REAL TIME  *         1.69 SEC
 DISK USED  *        29.34 MB (local),      542.57 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 Program * Restricted Hartree-Fock

 Orbital guess generated from atomic densities. Full valence occupancy:    9   6

 Initial alpha occupancy:   9   6
 Initial beta  occupancy:   7   6
 
 SO-SCI SOLVER WITH NELEC=28 SYM=1 MS2=2 THRE=1.0D-08 THRG=3.2D-06
 
 Authors: D.A. Kreplin, H.-J. Werner (2022)
 
 Number of closed-shell orbitals:                13   (    7    6)
 Number of singly occupied active orbitals:       2   (    2    0)
 Number of virtual orbitals:                     87   (   48   39)
 
 ITER.  MIC  NCI          ENERGY    ENERGY CHANGE          GRAD      ORB GRAD        CI RES  NQN        STEP      TIME
    1    1    0   -1390.91468015   -1390.91468015    2.40142143    2.40142143    0.00000000    0    0.56E+00      0.04
    2    1    0   -1391.18766591      -0.27298577    2.43347885    2.43347885    0.00000000    0    0.39E+00      0.07
    3    1    0   -1391.23683850      -0.04917259    2.29875182    2.29875182    0.00000000    0    0.45E+00      0.11
    4    1    0   -1391.15476448       0.08207402    2.43337111    2.43337111    0.00000000    0    0.40E+00      0.15
    5    2    0   -1391.30895029      -0.15418581    2.15334045    2.15334045    0.00000000    1    0.36E+00      0.24
    6    2    0   -1391.47494473      -0.16599444    1.39520997    1.39520997    0.00000000    1    0.37E+00      0.29
    7    1    0   -1391.60567031      -0.13072558    0.68557517    0.68557517    0.00000000    2    0.49E+00      0.33
    8    1    0   -1391.71561792      -0.10994760    0.37032358    0.37032358    0.00000000    3    0.30E+00      0.37
    9    1    0   -1391.76382099      -0.04820307    0.45647199    0.45647199    0.00000000    4    0.12E+00      0.40
   10    1    0   -1391.77747997      -0.01365899    0.38753651    0.38753651    0.00000000    5    0.62E-01      0.44
   11    1    0   -1391.78177897      -0.00429900    0.35124222    0.35124222    0.00000000    6    0.32E-01      0.47
   12    2    0   -1391.78553316      -0.00375419    0.29252556    0.29252556    0.00000000    7    0.49E-01      0.51
   13    2    0   -1391.79185795      -0.00632479    0.18270304    0.18270304    0.00000000    8    0.47E-01      0.55
   14    2    0   -1391.79640155      -0.00454361    0.07936710    0.07936710    0.00000000    9    0.44E-01      0.58
   15    3    0   -1391.79841577      -0.00201421    0.02118661    0.02118661    0.00000000   10    0.60E-01      0.63
   16    2    0   -1391.79877066      -0.00035489    0.01603019    0.01603019    0.00000000   10    0.10E+00      0.66
   17    2    0   -1391.79879309      -0.00002244    0.02152468    0.02152468    0.00000000   10    0.57E-01      0.70
   18    3    0   -1391.79882258      -0.00002949    0.00172491    0.00172491    0.00000000   10    0.59E-02      0.75
   19    2    0   -1391.79882334      -0.00000076    0.00106755    0.00106755    0.00000000   10    0.62E-02      0.80
   20    3    0   -1391.79882337      -0.00000003    0.00121314    0.00121314    0.00000000   10    0.36E-02      0.85
   21    2    0   -1391.79882347      -0.00000010    0.00017916    0.00017916    0.00000000   10    0.13E-03      0.88
   22    2    0   -1391.79882347      -0.00000001    0.00009208    0.00009208    0.00000000   10    0.12E-03      0.92
   23    2    0   -1391.79882347      -0.00000000    0.00001330    0.00001330    0.00000000   10    0.29E-04      0.96
   24    2    0   -1391.79882347      -0.00000000    0.00000716    0.00000716    0.00000000   10    0.54E-04      0.99
   25    2    0   -1391.79882347      -0.00000000    0.00001282    0.00001282    0.00000000   10    0.40E-04      1.03

 CONVERGENCE REACHED!  Final gradient:     0.00000196 ( 0.20E-05)
                       Final energy:   -1391.79882347
 

 Final alpha occupancy:   9   6
 Final beta  occupancy:   7   6

 !RHF STATE 1.1 Energy              -1391.798823474099
  RHF One-electron energy           -1938.323825243300
  RHF Two-electron energy             546.525001769201
  RHF Kinetic energy                 1454.671992211329
  RHF Nuclear energy                    0.000000000000
  RHF Virial quotient                  -0.956778456536

 !RHF STATE 1.1 Dipole moment           0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 ELECTRON ORBITALS
 =================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000  -285.35294     1  1  s    0.97812
    2.1     2.00000   -35.02558     1  2  s    0.99666
    3.1     2.00000    -4.19029     1  3  s    0.99060
    4.1     2.00000    -0.18856     1  1  d2+  0.99144
    5.1     2.00000    -0.18856     1  1  d1+  0.86780    1  1  d1- -0.48215
    6.1     2.00000    -0.18856     1  1  d1+  0.48225    1  1  d1-  0.86649
    7.1     2.00000    -0.00831     1  7  s    1.23323
    8.1     1.00000    -0.26742     1  1  d2-  0.99601
    9.1     1.00000    -0.26742     1  1  d0  -0.99612
    1.2     2.00000   -29.79843     1  1  py   0.30867    1  1  pz   0.95073
    2.2     2.00000   -29.79843     1  1  px   0.99771
    3.2     2.00000   -29.79843     1  1  py   0.94991    1  1  pz  -0.30653
    4.2     2.00000    -2.61047     1  2  pz   0.99557
    5.2     2.00000    -2.61047     1  2  px   0.99061
    6.2     2.00000    -2.61047     1  2  py   0.99033


 HOMO      9.1    -0.267420 =      -7.2769eV
 LUMO      7.2     0.209764 =       5.7080eV
 LUMO-HOMO         0.477184 =      12.9848eV

 Orbitals saved in record  2100.2


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      23       29.33       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380   
                                         AOSYM     SMH     JKOP   

              2       4        0.50       700     1000      520     2100   
                                         GEOM     BASIS   MCVARS     RHF  

 PROGRAMS   *        TOTAL   RHF-SCF       INT
 CPU TIMES  *         2.03      0.96      0.88
 REAL TIME  *         2.75 SEC
 DISK USED  *        29.88 MB (local),      551.17 MB (total)
 SF USED    *         1.28 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)


 Number of closed-shell orbitals:   9 (    3    6)
 Number of active  orbitals:        6 (    6    0)
 Number of external orbitals:      87 (   48   39)

 State symmetry 1

 Number of active electrons:   9    Spin symmetry=Quartet   Space symmetry=1
 Number of states:            17
 Number of CSFs:              20   (20 determinants, 20 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL (state 1.1)
 *** IN SYMMETRY 1 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.209D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.141D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.747D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.371D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.384D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.150D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.542D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  9 SYMMETRY CONTAMINATION OF 0.463D-01 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 5 4 6 1 3 2 1   2 3 5 4 6 1 3 2 5 4   6 1 3 2 5 4 6 7 911  13 810121415 1 2 3 4
                                        6 5 7 91113 8101214  15 2 3 4 6 5 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.263D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.884D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.280D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.139D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.175D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.181D+00 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 1 2 3 1 2 3 1 2 3   1 2 1 2 3 6 9 7 4 5   810 1 2 3 9 7 6 4 5   810 3 1 2 6 7 9 8 5
                                        410 3 1 2

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.05882   0.05882   0.05882   0.05882   0.05882   0.05882   0.05882   0.05882
                                          0.05882   0.05882   0.05882   0.05882   0.05882   0.05882   0.05882   0.05882
                                          0.05882
 
 Number of orbital rotations:  684  ( 18 closed/active, 378 closed/virtual, 0 active/active, 288 active/virtual )
 Total number of variables:    1024
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1    6    5    0  -1391.72496044   -1391.80741460   -0.08245416    0.40624967 0.00190286 0.00000000  0.38E+00      0.23
   2    5    4    0  -1391.80048068   -1391.80122177   -0.00074109    0.04572566 0.00000147 0.00000000  0.24E-01      0.52
   3    4    4    0  -1391.80122627   -1391.80122634   -0.00000007    0.00039659 0.00000013 0.00000000  0.29E-03      0.75
   4   20   20    0  -1391.80122634   -1391.80122634    0.00000000    0.00004054 0.00000009 0.00000000  0.34E-07      1.07

 CONVERGENCE REACHED!  Final gradient:    0.00000013 ( 0.13E-06)
                       Final energy:  -1391.80122634
 
 Results for state 1.1
 =====================
 !MCSCF STATE 1.1 Energy                     -1391.851202888351
 Nuclear energy                                  0.00000000
 Kinetic energy                               1451.86897594
 One electron energy                         -1922.86696690
 Two electron energy                           531.01576401
 Virial ratio                                    1.95866172
 
 !MCSCF STATE 1.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1
 =====================
 !MCSCF STATE 2.1 Energy                     -1391.851202888080
 Nuclear energy                                  0.00000000
 Kinetic energy                               1451.86897592
 One electron energy                         -1922.86696686
 Two electron energy                           531.01576397
 Virial ratio                                    1.95866172
 
 !MCSCF STATE 2.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1
 =====================
 !MCSCF STATE 3.1 Energy                     -1391.851202887652
 Nuclear energy                                  0.00000000
 Kinetic energy                               1451.86897585
 One electron energy                         -1922.86696675
 Two electron energy                           531.01576386
 Virial ratio                                    1.95866172
 
 !MCSCF STATE 3.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1
 =====================
 !MCSCF STATE 4.1 Energy                     -1391.851202887230
 Nuclear energy                                  0.00000000
 Kinetic energy                               1451.86897584
 One electron energy                         -1922.86696672
 Two electron energy                           531.01576384
 Virial ratio                                    1.95866172
 
 !MCSCF STATE 4.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1
 =====================
 !MCSCF STATE 5.1 Energy                     -1391.851202887228
 Nuclear energy                                  0.00000000
 Kinetic energy                               1451.86897581
 One electron energy                         -1922.86696670
 Two electron energy                           531.01576381
 Virial ratio                                    1.95866172
 
 !MCSCF STATE 5.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1
 =====================
 !MCSCF STATE 6.1 Energy                     -1391.851202886979
 Nuclear energy                                  0.00000000
 Kinetic energy                               1451.86897578
 One electron energy                         -1922.86696663
 Two electron energy                           531.01576374
 Virial ratio                                    1.95866172
 
 !MCSCF STATE 6.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.1
 =====================
 !MCSCF STATE 7.1 Energy                     -1391.851202886089
 Nuclear energy                                  0.00000000
 Kinetic energy                               1451.86897571
 One electron energy                         -1922.86696651
 Two electron energy                           531.01576362
 Virial ratio                                    1.95866172
 
 !MCSCF STATE 7.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.1
 =====================
 !MCSCF STATE 8.1 Energy                     -1391.771057670937
 Nuclear energy                                  0.00000000
 Kinetic energy                               1451.86897586
 One electron energy                         -1922.86696675
 Two electron energy                           531.09590907
 Virial ratio                                    1.95860651
 
 !MCSCF STATE 8.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 9.1
 =====================
 !MCSCF STATE 9.1 Energy                     -1391.771057670862
 Nuclear energy                                  0.00000000
 Kinetic energy                               1451.86897575
 One electron energy                         -1922.86696660
 Two electron energy                           531.09590893
 Virial ratio                                    1.95860651
 
 !MCSCF STATE 9.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 10.1
 ======================
 !MCSCF STATE 10.1 Energy                    -1391.771057670560
 Nuclear energy                                  0.00000000
 Kinetic energy                               1451.86897590
 One electron energy                         -1922.86696683
 Two electron energy                           531.09590916
 Virial ratio                                    1.95860651
 
 !MCSCF STATE 10.1 Dipole moment                 0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 11.1
 ======================
 !MCSCF STATE 11.1 Energy                    -1391.764179225776
 Nuclear energy                                  0.00000000
 Kinetic energy                               1458.66655744
 One electron energy                         -1939.20841877
 Two electron energy                           547.44423954
 Virial ratio                                    1.95413456
 
 !MCSCF STATE 11.1 Dipole moment                 0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 12.1
 ======================
 !MCSCF STATE 12.1 Energy                    -1391.764179225553
 Nuclear energy                                  0.00000000
 Kinetic energy                               1458.66655745
 One electron energy                         -1939.20841880
 Two electron energy                           547.44423957
 Virial ratio                                    1.95413456
 
 !MCSCF STATE 12.1 Dipole moment                 0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 13.1
 ======================
 !MCSCF STATE 13.1 Energy                    -1391.764179223870
 Nuclear energy                                  0.00000000
 Kinetic energy                               1458.66655753
 One electron energy                         -1939.20841891
 Two electron energy                           547.44423968
 Virial ratio                                    1.95413456
 
 !MCSCF STATE 13.1 Dipole moment                 0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 14.1
 ======================
 !MCSCF STATE 14.1 Energy                    -1391.764179222789
 Nuclear energy                                  0.00000000
 Kinetic energy                               1458.66655756
 One electron energy                         -1939.20841896
 Two electron energy                           547.44423974
 Virial ratio                                    1.95413456
 
 !MCSCF STATE 14.1 Dipole moment                 0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 15.1
 ======================
 !MCSCF STATE 15.1 Energy                    -1391.764179222713
 Nuclear energy                                  0.00000000
 Kinetic energy                               1458.66655754
 One electron energy                         -1939.20841894
 Two electron energy                           547.44423972
 Virial ratio                                    1.95413456
 
 !MCSCF STATE 15.1 Dipole moment                 0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 16.1
 ======================
 !MCSCF STATE 16.1 Energy                    -1391.764179221212
 Nuclear energy                                  0.00000000
 Kinetic energy                               1458.66655759
 One electron energy                         -1939.20841903
 Two electron energy                           547.44423981
 Virial ratio                                    1.95413456
 
 !MCSCF STATE 16.1 Dipole moment                 0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 17.1
 ======================
 !MCSCF STATE 17.1 Energy                    -1391.764179219479
 Nuclear energy                                  0.00000000
 Kinetic energy                               1458.66655767
 One electron energy                         -1939.20841916
 Two electron energy                           547.44423994
 Virial ratio                                    1.95413456
 
 !MCSCF STATE 17.1 Dipole moment                 0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 !MCSCF expec                      <1.1|LXLX|1.1>     3.996199262257
 !MCSCF expec                      <2.1|LXLX|2.1>     5.502301553681
 !MCSCF expec                      <3.1|LXLX|3.1>     1.307282285599
 !MCSCF expec                      <4.1|LXLX|4.1>     8.689886748079
 !MCSCF expec                      <5.1|LXLX|5.1>     4.002925772237
 !MCSCF expec                      <6.1|LXLX|6.1>     0.003802823323
 !MCSCF expec                      <7.1|LXLX|7.1>     4.497675743155
 !MCSCF expec                      <8.1|LXLX|8.1>     0.999999943349
 !MCSCF expec                      <9.1|LXLX|9.1>     0.999999783235
 !MCSCF expec                    <10.1|LXLX|10.1>     0.000000260070
 !MCSCF expec                    <11.1|LXLX|11.1>     3.996437600399
 !MCSCF expec                    <12.1|LXLX|12.1>     6.282390111043
 !MCSCF expec                    <13.1|LXLX|13.1>     6.624898111391
 !MCSCF expec                    <14.1|LXLX|14.1>     3.999999110697
 !MCSCF expec                    <15.1|LXLX|15.1>     3.375089748697
 !MCSCF expec                    <16.1|LXLX|16.1>     0.003562499535
 !MCSCF expec                    <17.1|LXLX|17.1>     3.717608829317
 
 !MCSCF expec                      <1.1|LYLY|1.1>     4.240557337484
 !MCSCF expec                      <2.1|LYLY|2.1>     0.016049832443
 !MCSCF expec                      <3.1|LYLY|3.1>     7.486800149219
 !MCSCF expec                      <4.1|LYLY|4.1>     2.514065183852
 !MCSCF expec                      <5.1|LYLY|5.1>     3.999104051677
 !MCSCF expec                      <6.1|LYLY|6.1>     5.759433641630
 !MCSCF expec                      <7.1|LYLY|7.1>     3.983951727833
 !MCSCF expec                      <8.1|LYLY|8.1>     0.999999999895
 !MCSCF expec                      <9.1|LYLY|9.1>     0.000000216805
 !MCSCF expec                    <10.1|LYLY|10.1>     0.999999783880
 !MCSCF expec                    <11.1|LYLY|11.1>     3.770719207898
 !MCSCF expec                    <12.1|LYLY|12.1>     0.005426353046
 !MCSCF expec                    <13.1|LYLY|13.1>     1.808699774739
 !MCSCF expec                    <14.1|LYLY|14.1>     4.000008053990
 !MCSCF expec                    <15.1|LYLY|15.1>     8.191301125788
 !MCSCF expec                    <16.1|LYLY|16.1>     6.229280236878
 !MCSCF expec                    <17.1|LYLY|17.1>     3.994573688737
 
 !MCSCF expec                      <1.1|LZLZ|1.1>     3.763243400259
 !MCSCF expec                      <2.1|LZLZ|2.1>     6.481648613876
 !MCSCF expec                      <3.1|LZLZ|3.1>     3.205917565182
 !MCSCF expec                      <4.1|LZLZ|4.1>     0.796048068069
 !MCSCF expec                      <5.1|LZLZ|5.1>     3.997970176086
 !MCSCF expec                      <6.1|LZLZ|6.1>     6.236763535047
 !MCSCF expec                      <7.1|LZLZ|7.1>     3.518372529012
 !MCSCF expec                      <8.1|LZLZ|8.1>     0.000000056755
 !MCSCF expec                      <9.1|LZLZ|9.1>     0.999999999960
 !MCSCF expec                    <10.1|LZLZ|10.1>     0.999999956050
 !MCSCF expec                    <11.1|LZLZ|11.1>     4.232843191703
 !MCSCF expec                    <12.1|LZLZ|12.1>     5.712183535911
 !MCSCF expec                    <13.1|LZLZ|13.1>     3.566402113869
 !MCSCF expec                    <14.1|LZLZ|14.1>     3.999992835314
 !MCSCF expec                    <15.1|LZLZ|15.1>     0.433609125516
 !MCSCF expec                    <16.1|LZLZ|16.1>     5.767157263588
 !MCSCF expec                    <17.1|LZLZ|17.1>     4.287817481946
 
 !MCSCF expec                      <1.1|L**2|1.1>    12.000000000000
 !MCSCF expec                      <2.1|L**2|2.1>    12.000000000000
 !MCSCF expec                      <3.1|L**2|3.1>    12.000000000000
 !MCSCF expec                      <4.1|L**2|4.1>    12.000000000000
 !MCSCF expec                      <5.1|L**2|5.1>    12.000000000000
 !MCSCF expec                      <6.1|L**2|6.1>    12.000000000000
 !MCSCF expec                      <7.1|L**2|7.1>    12.000000000000
 !MCSCF expec                      <8.1|L**2|8.1>     2.000000000000
 !MCSCF expec                      <9.1|L**2|9.1>     2.000000000000
 !MCSCF expec                    <10.1|L**2|10.1>     2.000000000000
 !MCSCF expec                    <11.1|L**2|11.1>    12.000000000000
 !MCSCF expec                    <12.1|L**2|12.1>    12.000000000000
 !MCSCF expec                    <13.1|L**2|13.1>    12.000000000000
 !MCSCF expec                    <14.1|L**2|14.1>    12.000000000000
 !MCSCF expec                    <15.1|L**2|15.1>    12.000000000000
 !MCSCF expec                    <16.1|L**2|16.1>    12.000000000000
 !MCSCF expec                    <17.1|L**2|17.1>    12.000000000000
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 1 4 6 3 5 2 1   4 6 3 5 2 1 4 6 3 5   2 1 4 3 6 5 21013 9   712151411 8 1 4 3 5
                                        6 21013 9 712111415   8 5 2 3 4 6 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 3 2 1 3 2 1 2 3 1   2 3 1 2 3 810 4 7 9   5 6 1 2 3 810 4 9 7   5 6 1 2 3 7 9 4 610
                                        8 5 1 3 2
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000  -285.68441     1  1  s    0.97813
    2.1     2.00000   -35.37003     1  2  s    0.99658
    3.1     2.00000    -4.52563     1  3  s    0.98750
    4.1     1.58824    -0.19432     1  4  s    1.01969
    5.1     1.48235    -0.30891     1  1  d1+  1.00155
    6.1     1.48235    -0.30891     1  1  d1-  1.00155
    7.1     1.48235    -0.30891     1  1  d2-  1.00155
    8.1     1.48235    -0.30890     1  1  d2+  1.00155
    9.1     1.48235    -0.30890     1  1  d0  -1.00155
    1.2     2.00000   -30.14054     1  1  px   0.99984
    2.2     2.00000   -30.14054     1  1  pz   0.99984
    3.2     2.00000   -30.14054     1  1  py   0.99984
    4.2     2.00000    -2.93712     1  2  px   0.99990
    5.2     2.00000    -2.93712     1  2  pz   0.99990
    6.2     2.00000    -2.93712     1  2  py   0.99990
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 1
 =============================

 State:              1               2               3               4               5               6               7
 a222aa        -0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000000     -0.00000000
 2aaa22         0.00009533     -0.00006983     -0.00023105      0.02463401      0.99969649      0.00008161     -0.00016647
 a22a2a         0.00000000     -0.00000000      0.00000000     -0.00000000      0.00000000      0.00000000     -0.00000000
 2aa2a2         0.00003413      0.00005026      0.89525376      0.44542630     -0.01076902     -0.00037109      0.00003432
 2aa22a        -0.00005403      0.00005030     -0.19925893      0.40024701     -0.00990871     -0.00012860      0.00004858
 aa2a22        -0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000000     -0.00000000
 22a2aa        -0.02757083     -0.00010128      0.00018481      0.00037355     -0.00007950      0.89400204      0.00011799
 a2aa22         0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000      0.00000000     -0.00000000
 2a22aa         0.00009620      0.89263095      0.00000556     -0.00011440      0.00007459      0.00009667      0.05665640
 aa22a2        -0.00000000     -0.00000000      0.00000000      0.00000000     -0.00000000     -0.00000000      0.00000000
 a2a2a2         0.00000000      0.00000000     -0.00000000     -0.00000000      0.00000000     -0.00000000     -0.00000000
 2a2a2a         0.85872114     -0.00012159     -0.00002137      0.00018304     -0.00010683      0.25019581      0.00003135
 22aa2a        -0.00002826     -0.27801507      0.00001355     -0.00005850      0.00012360     -0.00014453      0.85012210
 aaa222         0.00000000     -0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000000     -0.00000000
 222aaa        -0.00010806      0.00010060     -0.39851785      0.80049403     -0.01981741     -0.00025719      0.00009717
 22aaa2         0.00003922      0.35484864      0.00001104     -0.00009982      0.00011442     -0.00002764      0.52352881
 2a2aa2        -0.51170091      0.00001173      0.00011904      0.00010999      0.00001578      0.37170170      0.00005002
 a2a22a        -0.00000000      0.00000000     -0.00000000     -0.00000000      0.00000000     -0.00000000      0.00000000
 aa222a         0.00000000     -0.00000000      0.00000000      0.00000000     -0.00000000     -0.00000000      0.00000000
 a22aa2         0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00000000      0.00000000     -0.00000000
 
 Energy:    -1391.85120289  -1391.85120289  -1391.85120289  -1391.85120289  -1391.85120289  -1391.85120289  -1391.85120289

 State:              8               9              10              11              12              13              14
 a222aa         0.00000000     -0.00000000      0.00000000      0.00004027      0.00001107     -0.00003267      0.99999901
 2aaa22        -0.00000000      0.00000000      0.00000000     -0.00000000     -0.00000000      0.00000000     -0.00000000
 a22a2a        -0.00000002      0.00000000     -0.00000000     -0.00000179      0.00003028      0.94424601     -0.00043201
 2aa2a2         0.00000000      0.00000000      0.00000000      0.00000000      0.00000000      0.00000000      0.00000000
 2aa22a         0.89442716     -0.00000906      0.00021289     -0.00000000      0.00000000      0.00000001     -0.00000000
 aa2a22         0.00000000     -0.00000000     -0.00000000      0.02669262     -0.00003341     -0.00005852     -0.00001245
 22a2aa         0.00010644     -0.00020822     -0.44721354     -0.00000000      0.00000000      0.00000000      0.00000000
 a2aa22        -0.00000000      0.00000001     -0.00000000      0.00016056      0.89382031     -0.00003492     -0.00000793
 2a22aa        -0.00000458     -0.44721354      0.00020821      0.00000000      0.00000000     -0.00000000     -0.00000000
 aa22a2        -0.00000000      0.00000001     -0.00000000     -0.00003152     -0.19155789     -0.00001118     -0.00005102
 a2a2a2         0.00000000     -0.00000000     -0.00000001      0.87231281     -0.00016313     -0.00002158     -0.00003769
 2a2a2a        -0.00010644      0.00020822      0.44721353      0.00000000     -0.00000000     -0.00000000     -0.00000000
 22aa2a        -0.00000458     -0.44721355      0.00020821      0.00000000      0.00000000     -0.00000000     -0.00000000
 aaa222        -0.00000001      0.00000000     -0.00000000     -0.00003170     -0.00003060     -0.29448188     -0.00119694
 222aaa        -0.44721358      0.00000453     -0.00010645      0.00000000     -0.00000000     -0.00000001      0.00000000
 22aaa2         0.00000793      0.77459659     -0.00036064     -0.00000000     -0.00000001      0.00000000      0.00000000
 2a2aa2        -0.00018436      0.00036064      0.77459656      0.00000001     -0.00000000     -0.00000000     -0.00000000
 a2a22a         0.00000000     -0.00000000     -0.00000000      0.48821904     -0.00007489      0.00002133     -0.00001457
 aa222a         0.00000000     -0.00000001      0.00000000     -0.00007450     -0.40545134      0.00002662      0.00003404
 a22aa2        -0.00000000      0.00000000     -0.00000000     -0.00001585     -0.00001530     -0.14724095     -0.00059847
 
 Energy:    -1391.77105767  -1391.77105767  -1391.77105767  -1391.76417923  -1391.76417923  -1391.76417922  -1391.76417922

 State:             15              16              17
 a222aa         0.00140585      0.00001273      0.00006079
 2aaa22         0.00000000     -0.00000000     -0.00000000
 a22a2a         0.32924047      0.00006623      0.00000868
 2aa2a2        -0.00000000      0.00000000     -0.00000000
 2aa22a         0.00000002      0.00000000      0.00000000
 aa2a22        -0.00001187      0.89402878      0.00006794
 22a2aa        -0.00000000     -0.00000000      0.00000000
 a2aa22         0.00001879      0.00003111     -0.03294325
 2a22aa         0.00000000     -0.00000000      0.00000001
 aa22a2         0.00002661     -0.00007261      0.87367360
 a2a2a2         0.00002683      0.19766219      0.00001213
 2a2a2a         0.00000000      0.00000000     -0.00000000
 22aa2a         0.00000000      0.00000000      0.00000001
 aaa222         0.84455846     -0.00000713     -0.00003628
 222aaa        -0.00000001     -0.00000000     -0.00000000
 22aaa2        -0.00000000     -0.00000000     -0.00000001
 2a2aa2         0.00000000      0.00000000     -0.00000000
 a2a22a         0.00002235     -0.40204749     -0.00003222
 aa222a        -0.00002621      0.00002396     -0.48539590
 a22aa2         0.42227923     -0.00000357     -0.00001814
 
 Energy:    -1391.76417922  -1391.76417922  -1391.76417922
 


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       36.44       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       5        0.80       700     1000      520     2100     2140   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF   

 PROGRAMS   *        TOTAL     MULTI   RHF-SCF       INT
 CPU TIMES  *         2.99      0.96      0.96      0.88
 REAL TIME  *         4.04 SEC
 DISK USED  *        37.30 MB (local),      669.96 MB (total)
 SF USED    *        19.27 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

          ENERGY     LL
    -1391.851203   12.0
    -1391.851203   12.0
    -1391.851203   12.0
    -1391.851203   12.0
    -1391.851203   12.0
    -1391.851203   12.0
    -1391.851203   12.0
    -1391.771058    2.0
    -1391.771058    2.0
    -1391.771058    2.0
    -1391.764179   12.0
    -1391.764179   12.0
    -1391.764179   12.0
    -1391.764179   12.0
    -1391.764179   12.0
    -1391.764179   12.0
    -1391.764179   12.0
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 17  Roots:   1   2   3   4   5   6   7   8   9  10  11  12  13  14  15  16  17
 Number of reference states: 17  Roots:   1   2   3   4   5   6   7   8   9  10  11  12  13  14  15  16  17

 Reference symmetry:                   1   Quartet 
 Number of electrons:                 27
 Maximum number of shells:             3
 Maximum number of spin couplings:    14

 Reference space:       20 conf       20 CSFs
 N elec internal:       20 conf       20 CSFs
 N-1 el internal:       75 conf      120 CSFs
 N-2 el internal:      126 conf      384 CSFs

 Number of electrons in valence space:                      9
 Maximum number of open shell orbitals in reference space:  3
 Maximum number of open shell orbitals in internal spaces:  7


 Number of core orbitals:           9 (   3   6 )
 Number of active  orbitals:        6 (   6   0 )
 Number of external orbitals:      87 (  48  39 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Valence orbitals related to previous ones by unitary transformation. Operators transformed.


 Number of p-space configurations:  20

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1     -1391.85120289
     2     -1391.85120289
     3     -1391.85120289
     4     -1391.85120289
     5     -1391.85120289
     6     -1391.85120289
     7     -1391.85120289
     8     -1391.77105767
     9     -1391.77105767
    10     -1391.77105767
    11     -1391.76417923
    12     -1391.76417923
    13     -1391.76417922
    14     -1391.76417922
    15     -1391.76417922
    16     -1391.76417922
    17     -1391.76417922

 Number of blocks in overlap matrix:    14   Smallest eigenvalue:  0.15D+00
 Number of N-2 electron functions:     339
 Number of N-1 electron functions:     120

 Number of internal configurations:                   20
 Number of singly external configurations:          5760
 Number of doubly external configurations:        640899
 Total number of contracted configurations:       646679
 Total number of uncontracted configurations:     730784

 Diagonal Coupling coefficients finished.               Storage:  256762 words, CPU-Time:      0.01 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:  307895 words, CPU-time:      0.01 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000 -1391.85120289     0.00000000    -0.32920237  0.30D-01  0.73D-01     0.20
    1     2     2     1.00000000     0.00000000 -1391.85120289    -0.00000000    -0.32913012  0.30D-01  0.72D-01     0.20
    1     3     3     1.00000000     0.00000000 -1391.85120289    -0.00000000    -0.33045597  0.31D-01  0.75D-01     0.20
    1     4     4     1.00000000     0.00000000 -1391.85120289     0.00000000    -0.32891840  0.30D-01  0.72D-01     0.20
    1     5     5     1.00000000     0.00000000 -1391.85120289     0.00000000    -0.33013705  0.31D-01  0.74D-01     0.20
    1     6     6     1.00000000     0.00000000 -1391.85120289    -0.00000000    -0.32900898  0.30D-01  0.72D-01     0.20
    1     7     7     1.00000000     0.00000000 -1391.85120289     0.00000000    -0.32910506  0.30D-01  0.72D-01     0.20
    1     8     8     1.00000000     0.00000000 -1391.77105767     0.00000000    -0.34468901  0.33D-01  0.78D-01     0.20
    1     9     9     1.00000000     0.00000000 -1391.77105767     0.00000000    -0.34564614  0.34D-01  0.79D-01     0.20
    1    10    10     1.00000000     0.00000000 -1391.77105767    -0.00000000    -0.34564259  0.34D-01  0.79D-01     0.20
    1    11    11     1.00000000     0.00000000 -1391.76417923     0.00000000    -0.45331953  0.11D+00  0.75D-01     0.20
    1    12    12     1.00000000     0.00000000 -1391.76417923     0.00000000    -0.45308711  0.11D+00  0.75D-01     0.20
    1    13    13     1.00000000     0.00000000 -1391.76417922     0.00000000    -0.45413856  0.11D+00  0.75D-01     0.20
    1    14    14     1.00000000     0.00000000 -1391.76417922     0.00000000    -0.45288242  0.11D+00  0.75D-01     0.20
    1    15    15     1.00000000     0.00000000 -1391.76417922     0.00000000    -0.45330340  0.11D+00  0.75D-01     0.20
    1    16    16     1.00000000     0.00000000 -1391.76417922     0.00000000    -0.45299676  0.11D+00  0.75D-01     0.20
    1    17    17     1.00000000     0.00000000 -1391.76417922     0.00000000    -0.45316860  0.11D+00  0.75D-01     0.20
    2     1     1     1.06571334    -0.26372399 -1392.11492688    -0.26372399    -0.01147086  0.34D-02  0.14D-02     9.96
    2     2     2     1.06626225    -0.26368409 -1392.11488698    -0.26368409    -0.01156469  0.35D-02  0.14D-02     9.96
    2     3     3     1.06551792    -0.26367422 -1392.11487711    -0.26367422    -0.01152166  0.34D-02  0.14D-02     9.96
    2     4     4     1.06546679    -0.26354377 -1392.11474666    -0.26354377    -0.01172333  0.35D-02  0.15D-02     9.96
    2     5     5     1.06542809    -0.26351068 -1392.11471357    -0.26351068    -0.01175799  0.35D-02  0.15D-02     9.96
    2     6     6     1.06654470    -0.26348987 -1392.11469276    -0.26348987    -0.01188896  0.36D-02  0.14D-02     9.96
    2     7     7     1.06599855    -0.26345440 -1392.11465729    -0.26345440    -0.01187345  0.36D-02  0.15D-02     9.96
    2     8     8     1.09174249    -0.31024174 -1392.08129941    -0.31024174    -0.01659066  0.54D-02  0.20D-02     9.96
    2     9     9     1.09186992    -0.31021049 -1392.08126816    -0.31021049    -0.01663473  0.55D-02  0.20D-02     9.96
    2    10    10     1.09155763    -0.31019628 -1392.08125395    -0.31019628    -0.01661898  0.54D-02  0.20D-02     9.96
    2    11    11     1.09184939    -0.31680180 -1392.08098102    -0.31680180    -0.01698319  0.57D-02  0.20D-02     9.96
    2    12    12     1.09205111    -0.31677934 -1392.08095856    -0.31677934    -0.01702577  0.57D-02  0.20D-02     9.96
    2    13    13     1.09010351    -0.31649117 -1392.08067040    -0.31649117    -0.01723647  0.60D-02  0.19D-02     9.96
    2    14    14     1.09164998    -0.31635089 -1392.08053011    -0.31635089    -0.01753150  0.62D-02  0.20D-02     9.96
    2    15    15     1.07135416    -0.28276506 -1392.04694429    -0.28276506    -0.01249670  0.43D-02  0.14D-02     9.96
    2    16    16     1.07214675    -0.28258136 -1392.04676058    -0.28258136    -0.01283158  0.44D-02  0.14D-02     9.96
    2    17    17     1.07229607    -0.28257852 -1392.04675774    -0.28257852    -0.01282538  0.44D-02  0.14D-02     9.96
    3     1     1     1.06545800    -0.27323582 -1392.12443870    -0.00951183    -0.00054153  0.16D-03  0.14D-03    19.50
    3     2     2     1.06523591    -0.27322796 -1392.12443085    -0.00954387    -0.00054618  0.16D-03  0.14D-03    19.50
    3     3     3     1.06490188    -0.27321370 -1392.12441659    -0.00953948    -0.00055329  0.16D-03  0.14D-03    19.50
    3     4     4     1.06489000    -0.27320970 -1392.12441259    -0.00966593    -0.00055452  0.16D-03  0.14D-03    19.50
    3     5     5     1.06466033    -0.27319905 -1392.12440193    -0.00968837    -0.00056246  0.16D-03  0.15D-03    19.50
    3     6     6     1.06463420    -0.27319355 -1392.12439644    -0.00970368    -0.00056528  0.16D-03  0.15D-03    19.50
    3     7     7     1.06456274    -0.27319268 -1392.12439557    -0.00973828    -0.00056510  0.16D-03  0.15D-03    19.50
    3     8     8     1.08398925    -0.32387402 -1392.09493169    -0.01363228    -0.00046379  0.12D-03  0.13D-03    19.50
    3     9     9     1.08393709    -0.32387347 -1392.09493114    -0.01366298    -0.00046401  0.12D-03  0.13D-03    19.50
    3    10    10     1.08383454    -0.32385954 -1392.09491721    -0.01366325    -0.00047148  0.12D-03  0.13D-03    19.50
    3    11    11     1.08379605    -0.33072819 -1392.09490742    -0.01392640    -0.00048118  0.13D-03  0.13D-03    19.50
    3    12    12     1.08374012    -0.33072224 -1392.09490146    -0.01394290    -0.00048400  0.13D-03  0.13D-03    19.50
    3    13    13     1.08326541    -0.33066424 -1392.09484347    -0.01417307    -0.00052537  0.16D-03  0.14D-03    19.50
    3    14    14     1.08266298    -0.33062202 -1392.09480124    -0.01427113    -0.00054991  0.20D-03  0.14D-03    19.50
    3    15    15     1.07113802    -0.29306660 -1392.05724582    -0.01030153    -0.00073905  0.22D-03  0.17D-03    19.50
    3    16    16     1.07120569    -0.29306403 -1392.05724325    -0.01048267    -0.00074112  0.22D-03  0.17D-03    19.50
    3    17    17     1.07083192    -0.29305334 -1392.05723256    -0.01047482    -0.00074504  0.22D-03  0.17D-03    19.50
    4     1     1     1.07110853    -0.27399974 -1392.12520263    -0.00076393    -0.00005077  0.13D-04  0.79D-05    29.15
    4     2     2     1.07110907    -0.27399974 -1392.12520263    -0.00077177    -0.00005082  0.13D-04  0.79D-05    29.15
    4     3     3     1.07111355    -0.27399951 -1392.12520240    -0.00078580    -0.00005091  0.13D-04  0.79D-05    29.15
    4     4     4     1.07111800    -0.27399949 -1392.12520238    -0.00078979    -0.00005098  0.13D-04  0.79D-05    29.15
    4     5     5     1.07111121    -0.27399937 -1392.12520226    -0.00080032    -0.00005099  0.14D-04  0.79D-05    29.15
    4     6     6     1.07108376    -0.27399910 -1392.12520199    -0.00080555    -0.00005125  0.13D-04  0.83D-05    29.15
    4     7     7     1.07106099    -0.27399808 -1392.12520097    -0.00080540    -0.00005202  0.13D-04  0.88D-05    29.15
    4     8     8     1.08551682    -0.32442608 -1392.09548375    -0.00055206    -0.00004290  0.68D-05  0.12D-04    29.15
    4     9     9     1.08551760    -0.32442606 -1392.09548373    -0.00055258    -0.00004284  0.68D-05  0.12D-04    29.15
    4    10    10     1.08547830    -0.32442388 -1392.09548155    -0.00056435    -0.00004444  0.67D-05  0.13D-04    29.15
    4    11    11     1.08546303    -0.33130217 -1392.09548140    -0.00057398    -0.00004485  0.68D-05  0.13D-04    29.15
    4    12    12     1.08544765    -0.33130126 -1392.09548049    -0.00057903    -0.00004552  0.68D-05  0.13D-04    29.15
    4    13    13     1.08532350    -0.33129516 -1392.09547438    -0.00063092    -0.00005090  0.69D-05  0.15D-04    29.15
    4    14    14     1.08526352    -0.33129140 -1392.09547063    -0.00066938    -0.00005464  0.69D-05  0.16D-04    29.15
    4    15    15     1.07791550    -0.29410480 -1392.05828403    -0.00103821    -0.00007825  0.26D-04  0.12D-04    29.15
    4    16    16     1.07786885    -0.29410372 -1392.05828294    -0.00103969    -0.00007913  0.26D-04  0.12D-04    29.15
    4    17    17     1.07785942    -0.29410365 -1392.05828287    -0.00105031    -0.00007921  0.26D-04  0.12D-04    29.15
    5     1     1     1.07204811    -0.27405730 -1392.12526019    -0.00005756    -0.00000428  0.58D-06  0.10D-05    38.78
    5     2     2     1.07204886    -0.27405727 -1392.12526016    -0.00005754    -0.00000429  0.58D-06  0.10D-05    38.78
    5     3     3     1.07204902    -0.27405727 -1392.12526016    -0.00005777    -0.00000430  0.58D-06  0.10D-05    38.78
    5     4     4     1.07205319    -0.27405725 -1392.12526014    -0.00005776    -0.00000433  0.59D-06  0.10D-05    38.78
    5     5     5     1.07205124    -0.27405725 -1392.12526014    -0.00005788    -0.00000431  0.57D-06  0.10D-05    38.78
    5     6     6     1.07204855    -0.27405724 -1392.12526012    -0.00005813    -0.00000432  0.58D-06  0.10D-05    38.78
    5     7     7     1.07205983    -0.27405719 -1392.12526008    -0.00005911    -0.00000436  0.59D-06  0.11D-05    38.78
    5     8     8     1.08663949    -0.32447629 -1392.09553397    -0.00005022    -0.00000268  0.50D-06  0.75D-06    38.78
    5     9     9     1.08663705    -0.32447629 -1392.09553396    -0.00005023    -0.00000268  0.49D-06  0.76D-06    38.78
    5    10    10     1.08663151    -0.32447615 -1392.09553382    -0.00005227    -0.00000279  0.48D-06  0.81D-06    38.78
    5    11    11     1.08662899    -0.33135450 -1392.09553373    -0.00005233    -0.00000287  0.50D-06  0.84D-06    38.78
    5    12    12     1.08663244    -0.33135449 -1392.09553372    -0.00005323    -0.00000286  0.52D-06  0.82D-06    38.78
    5    13    13     1.08661509    -0.33135414 -1392.09553336    -0.00005898    -0.00000319  0.49D-06  0.98D-06    38.78
    5    14    14     1.08662559    -0.33135397 -1392.09553319    -0.00006256    -0.00000335  0.48D-06  0.11D-05    38.78
    5    15    15     1.07941387    -0.29419533 -1392.05837455    -0.00009052    -0.00000734  0.97D-06  0.17D-05    38.78
    5    16    16     1.07941509    -0.29419529 -1392.05837451    -0.00009157    -0.00000737  0.96D-06  0.17D-05    38.78
    5    17    17     1.07941910    -0.29419529 -1392.05837451    -0.00009164    -0.00000735  0.93D-06  0.17D-05    38.78
    6     1     1     1.07199696    -0.27406223 -1392.12526512    -0.00000493    -0.00000053  0.16D-06  0.72D-07    48.41
    6     2     2     1.07199599    -0.27406223 -1392.12526512    -0.00000496    -0.00000053  0.16D-06  0.72D-07    48.41
    6     3     3     1.07199340    -0.27406223 -1392.12526512    -0.00000496    -0.00000053  0.16D-06  0.71D-07    48.41
    6     4     4     1.07199872    -0.27406223 -1392.12526511    -0.00000498    -0.00000054  0.16D-06  0.74D-07    48.41
    6     5     5     1.07199618    -0.27406223 -1392.12526511    -0.00000498    -0.00000054  0.16D-06  0.73D-07    48.41
    6     6     6     1.07200395    -0.27406222 -1392.12526511    -0.00000498    -0.00000054  0.16D-06  0.78D-07    48.41
    6     7     7     1.07200478    -0.27406222 -1392.12526510    -0.00000502    -0.00000055  0.16D-06  0.80D-07    48.41
    6     8     8     1.08683597    -0.32447915 -1392.09553682    -0.00000286    -0.00000025  0.30D-07  0.85D-07    48.41
    6     9     9     1.08683512    -0.32447915 -1392.09553682    -0.00000286    -0.00000025  0.32D-07  0.85D-07    48.41
    6    10    10     1.08683420    -0.32447914 -1392.09553681    -0.00000298    -0.00000027  0.30D-07  0.92D-07    48.41
    6    11    11     1.08683363    -0.33135757 -1392.09553679    -0.00000307    -0.00000028  0.31D-07  0.95D-07    48.41
    6    12    12     1.08683444    -0.33135756 -1392.09553679    -0.00000307    -0.00000028  0.33D-07  0.94D-07    48.41
    6    13    13     1.08682945    -0.33135752 -1392.09553675    -0.00000338    -0.00000031  0.35D-07  0.11D-06    48.41
    6    14    14     1.08683177    -0.33135750 -1392.09553672    -0.00000353    -0.00000033  0.34D-07  0.12D-06    48.41
    6    15    15     1.07935357    -0.29420362 -1392.05838284    -0.00000829    -0.00000096  0.32D-06  0.12D-06    48.41
    6    16    16     1.07935761    -0.29420361 -1392.05838283    -0.00000832    -0.00000097  0.32D-06  0.13D-06    48.41
    6    17    17     1.07935777    -0.29420361 -1392.05838283    -0.00000832    -0.00000097  0.32D-06  0.13D-06    48.41
    7     1     1     1.07200849    -0.27406278 -1392.12526567    -0.00000055    -0.00000005  0.21D-07  0.63D-08    58.05
    7     2     2     1.07200870    -0.27406278 -1392.12526567    -0.00000055    -0.00000005  0.21D-07  0.64D-08    58.05
    7     3     3     1.07200870    -0.27406278 -1392.12526567    -0.00000055    -0.00000005  0.21D-07  0.64D-08    58.05
    7     4     4     1.07200910    -0.27406278 -1392.12526567    -0.00000055    -0.00000005  0.21D-07  0.65D-08    58.05
    7     5     5     1.07200932    -0.27406278 -1392.12526567    -0.00000055    -0.00000005  0.21D-07  0.65D-08    58.05
    7     6     6     1.07200990    -0.27406278 -1392.12526567    -0.00000056    -0.00000005  0.22D-07  0.65D-08    58.05
    7     7     7     1.07200943    -0.27406278 -1392.12526567    -0.00000056    -0.00000005  0.22D-07  0.69D-08    58.05
    7     8     8     1.08687785    -0.32447943 -1392.09553710    -0.00000028    -0.00000003  0.69D-08  0.88D-08    58.05
    7     9     9     1.08687776    -0.32447943 -1392.09553710    -0.00000028    -0.00000003  0.70D-08  0.86D-08    58.05
    7    10    10     1.08687787    -0.32447943 -1392.09553710    -0.00000029    -0.00000003  0.75D-08  0.95D-08    58.05
    7    11    11     1.08687773    -0.33135787 -1392.09553710    -0.00000030    -0.00000003  0.77D-08  0.99D-08    58.05
    7    12    12     1.08687732    -0.33135787 -1392.09553710    -0.00000031    -0.00000003  0.76D-08  0.96D-08    58.05
    7    13    13     1.08687781    -0.33135787 -1392.09553709    -0.00000034    -0.00000004  0.96D-08  0.12D-07    58.05
    7    14    14     1.08687783    -0.33135787 -1392.09553709    -0.00000037    -0.00000004  0.11D-07  0.13D-07    58.05
    7    15    15     1.07936984    -0.29420459 -1392.05838381    -0.00000097    -0.00000011  0.53D-07  0.11D-07    58.05
    7    16    16     1.07937039    -0.29420459 -1392.05838381    -0.00000098    -0.00000011  0.54D-07  0.11D-07    58.05
    7    17    17     1.07937025    -0.29420459 -1392.05838381    -0.00000098    -0.00000011  0.54D-07  0.11D-07    58.05
    8     1     1     1.07201148    -0.27406284 -1392.12526573    -0.00000006    -0.00000001  0.12D-08  0.16D-08    67.64
    8     2     2     1.07201150    -0.27406284 -1392.12526573    -0.00000006    -0.00000001  0.12D-08  0.16D-08    67.64
    8     3     3     1.07201140    -0.27406284 -1392.12526573    -0.00000006    -0.00000001  0.12D-08  0.16D-08    67.64
    8     4     4     1.07201154    -0.27406284 -1392.12526573    -0.00000006    -0.00000001  0.13D-08  0.16D-08    67.64
    8     5     5     1.07201147    -0.27406284 -1392.12526573    -0.00000006    -0.00000001  0.12D-08  0.16D-08    67.64
    8     6     6     1.07201094    -0.27406284 -1392.12526572    -0.00000006    -0.00000001  0.14D-08  0.17D-08    67.64
    8     7     7     1.07201095    -0.27406284 -1392.12526572    -0.00000006    -0.00000001  0.14D-08  0.17D-08    67.64
    8     8     8     1.08687937    -0.32447946 -1392.09553713    -0.00000003    -0.00000000  0.64D-09  0.11D-08    67.64
    8     9     9     1.08687931    -0.32447946 -1392.09553713    -0.00000003    -0.00000000  0.68D-09  0.11D-08    67.64
    8    10    10     1.08687985    -0.32447946 -1392.09553713    -0.00000003    -0.00000000  0.58D-09  0.98D-09    67.64
    8    11    11     1.08687985    -0.33135790 -1392.09553713    -0.00000003    -0.00000000  0.61D-09  0.98D-09    67.64
    8    12    12     1.08687938    -0.33135790 -1392.09553713    -0.00000003    -0.00000000  0.68D-09  0.11D-08    67.64
    8    13    13     1.08687838    -0.33135790 -1392.09553713    -0.00000004    -0.00000000  0.79D-09  0.13D-08    67.64
    8    14    14     1.08687772    -0.33135791 -1392.09553713    -0.00000004    -0.00000000  0.90D-09  0.14D-08    67.64
    8    15    15     1.07938612    -0.29420471 -1392.05838393    -0.00000012    -0.00000002  0.26D-08  0.39D-08    67.64
    8    16    16     1.07938554    -0.29420471 -1392.05838393    -0.00000012    -0.00000002  0.28D-08  0.39D-08    67.64
    8    17    17     1.07938561    -0.29420471 -1392.05838393    -0.00000012    -0.00000002  0.28D-08  0.39D-08    67.64


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.0%
 S   0.0%   0.0%
 P   0.1%   5.8%  30.9%

 Initialization:   0.2%
 Other:           62.8%

 Total CPU:       67.6 seconds
 =====================================



 Wavefunction saved on  5101.2

 Reference coefficients greater than 0.0500000
 =============================================
 2///22           0.0000000   0.0000000   0.0000000   0.0000000   0.0000000   0.0000000   0.9658152   0.0000000   0.0000000
                  0.0000000   0.0000000   0.0000000   0.0000000   0.0054830   0.0000000   0.0000000   0.0000000
 2//2/2           0.0000000   0.0129499   0.0000000   0.0000000   0.0000000   0.9657284   0.0000000   0.0000000   0.0000000
                 -0.0010309   0.0000000   0.0000000  -0.0053853   0.0000000  -0.0000002   0.0000000   0.0000000
 /222//           0.0000000   0.0000000   0.0000000   0.0000000   0.0000000   0.0000000  -0.0052219   0.0000000   0.0000000
                  0.0000000   0.0000000   0.0000000   0.0000000   0.9591854   0.0000000   0.0000000   0.0000000
 /22/2/           0.0000000   0.0000700   0.0000000   0.0000000   0.0000000   0.0052215   0.0000000   0.0000000   0.0000000
                  0.1803298   0.0000000   0.0000000   0.9420813   0.0000000   0.0000001   0.0000000   0.0000000
 2/22//           0.8638421   0.0000000   0.0000000   0.0000000   0.0039674   0.0000000   0.0000000   0.0000000   0.0048766
                  0.0000000  -0.0005200   0.0000000   0.0000000   0.0000000   0.0000000  -0.4304513   0.0000000
 222///           0.0000000   0.8637736   0.0000000   0.0000000   0.0000000  -0.0115829   0.0000000   0.0000000   0.0000000
                  0.0048167   0.0000000   0.0000000  -0.0009220   0.0000000  -0.4304511   0.0000000   0.0000000
 2//22/           0.0000000   0.4318866   0.0000000   0.0000000   0.0000000  -0.0057916   0.0000000   0.0000000   0.0000000
                  0.0024086   0.0000000   0.0000000  -0.0004610   0.0000000   0.8609021   0.0000000   0.0000000
 /2/2/2           0.0000000   0.0000000   0.0037855   0.0027357   0.0000000   0.0000000   0.0000000   0.8550376   0.0000000
                  0.0000000   0.0000000   0.0702553   0.0000000   0.0000000   0.0000000   0.0000000  -0.0015511
 /2//22          -0.0046702   0.0000000   0.0000000   0.0000000  -0.0000213   0.0000000   0.0000000   0.0000000   0.8530757
                  0.0000000  -0.0909791   0.0000000   0.0000000   0.0000000   0.0000000  -0.0015511   0.0000000
 //22/2           0.0011888   0.0000000   0.0000000   0.0000000  -0.0045168   0.0000000   0.0000000   0.0000000  -0.1251982
                  0.0000000   0.8487285   0.0000000   0.0000000   0.0000000   0.0000000  -0.0015511   0.0000000
 //2/22           0.0000000   0.0000000  -0.0017022   0.0043492   0.0000000   0.0000000   0.0000000   0.1457492   0.0000000
                  0.0000000   0.0000000   0.8454390   0.0000000   0.0000000   0.0000000   0.0000000   0.0015510
 ///222           0.0000000  -0.0046707   0.0000000   0.0000000   0.0000000   0.0000628   0.0000000   0.0000000   0.0000000
                  0.8426242   0.0000000   0.0000000  -0.1612926   0.0000000  -0.0015495   0.0000000   0.0000000
 22//2/          -0.2198018   0.0000000   0.0000000   0.0000000   0.8354196   0.0000000   0.0000000   0.0000000  -0.0007155
                  0.0000000   0.0048517   0.0000000   0.0000000   0.0000000   0.0000000  -0.4304510   0.0000000
 22/2//           0.0000000   0.0000000  -0.3148442   0.8044327   0.0000000   0.0000000   0.0000000  -0.0008330   0.0000000
                  0.0000000   0.0000000  -0.0048329   0.0000000   0.0000000   0.0000000   0.0000000  -0.4304512
 22///2           0.3718367   0.0000000   0.0000000   0.0000000   0.4846203   0.0000000   0.0000000   0.0000000   0.0024023
                  0.0000000   0.0025009   0.0000000   0.0000000   0.0000000   0.0000000   0.7455633   0.0000000
 2/2//2           0.0000000   0.0000000  -0.5860230   0.1723263   0.0000000   0.0000000   0.0000000   0.0023409   0.0000000
                  0.0000000   0.0000000  -0.0025583   0.0000000   0.0000000   0.0000000   0.0000000   0.7455632
 2/2/2/           0.0000000   0.0000000   0.7001777   0.5059547   0.0000000   0.0000000   0.0000000  -0.0048878   0.0000000
                  0.0000000   0.0000000  -0.0004016   0.0000000   0.0000000   0.0000000   0.0000000   0.4304512
 /2/22/           0.0000000   0.0000000   0.0031688  -0.0009319   0.0000000   0.0000000   0.0000000   0.4095158   0.0000000
                  0.0000000   0.0000000  -0.4475850   0.0000000   0.0000000   0.0000000   0.0000000   0.0026866
 //222/           0.0020110   0.0000000   0.0000000   0.0000000   0.0026204   0.0000000   0.0000000   0.0000000  -0.4202648
                  0.0000000  -0.4375129   0.0000000   0.0000000   0.0000000   0.0000000  -0.0026869   0.0000000
 /22//2           0.0000000  -0.0023340   0.0000000   0.0000000   0.0000000   0.0000308   0.0000000   0.0000000   0.0000000
                  0.4213081   0.0000000   0.0000000  -0.0806449   0.0000000   0.0030995   0.0000000   0.0000000

 Coefficients of singly external configurations greater than 0.0500000
 =====================================================================

 /22//\  13.1    -0.0000000   0.0000000   0.0000000  -0.0000000   0.0000000   0.0000000  -0.0005312   0.0000000   0.0000000
                 -0.0000000  -0.0000000   0.0000000  -0.0000000   0.0705059   0.0000000   0.0000000   0.0000000
 //22/\  11.1    -0.0000000   0.0000000   0.0000000  -0.0000000   0.0000000   0.0000000  -0.0005313   0.0000000   0.0000000
                 -0.0000000  -0.0000000   0.0000000  -0.0000000   0.0705057   0.0000000   0.0000000   0.0000000
 /2/2/\  12.1    -0.0000000   0.0000000   0.0000000  -0.0000000   0.0000000   0.0000000  -0.0005312   0.0000000   0.0000000
                 -0.0000000  -0.0000000   0.0000000  -0.0000000   0.0705041   0.0000000   0.0000000   0.0000000
 //2/2\  11.1     0.0000000   0.0021007   0.0000000  -0.0000000   0.0000000   0.0005032   0.0000000   0.0000000  -0.0000000
                  0.0090927   0.0000000  -0.0000000   0.0700471  -0.0000000  -0.0074157  -0.0000000  -0.0000000
 /22//\  14.1    -0.0000000  -0.0000071  -0.0000000   0.0000000  -0.0000000  -0.0005311  -0.0000000  -0.0000000   0.0000000
                 -0.0132577  -0.0000000   0.0000000  -0.0692497   0.0000000   0.0000001   0.0000000   0.0000000
 /2//2\  12.1     0.0000000  -0.0020861   0.0000000  -0.0000000   0.0000000   0.0005592   0.0000000   0.0000000  -0.0000000
                  0.0174192   0.0000000  -0.0000000   0.0684511  -0.0000000   0.0074152  -0.0000000  -0.0000000
 ///2\2  11.1    -0.0000000   0.0000000   0.0023448   0.0016942   0.0000000   0.0000000  -0.0000000   0.0677309  -0.0000000
                  0.0000000  -0.0000000   0.0055687   0.0000000  -0.0000000   0.0000000   0.0000000  -0.0060682
 ///\22  11.1    -0.0028927   0.0000000  -0.0000000   0.0000000  -0.0000135  -0.0000000   0.0000000  -0.0000000   0.0675749
                 -0.0000000  -0.0072086   0.0000000  -0.0000000   0.0000000   0.0000000  -0.0060682  -0.0000000
 ///2\2  12.1    -0.0007362   0.0000000   0.0000000  -0.0000000   0.0027975   0.0000000   0.0000000   0.0000000   0.0099194
                 -0.0000000  -0.0672320   0.0000000  -0.0000000  -0.0000000  -0.0000000   0.0060685  -0.0000000
 ///\22  12.1     0.0000000   0.0000000   0.0010542  -0.0026937  -0.0000000   0.0000000   0.0000000  -0.0115462  -0.0000000
                 -0.0000000   0.0000000  -0.0669695   0.0000000  -0.0000000  -0.0000000   0.0000000  -0.0060682
 ///2\2  14.1     0.0000000  -0.0028926  -0.0000000  -0.0000000  -0.0000000   0.0000393   0.0000000   0.0000000   0.0000000
                  0.0667495  -0.0000000   0.0000000  -0.0127767  -0.0000000  -0.0060679   0.0000000  -0.0000000
 ///\22  13.1     0.0000000  -0.0028926  -0.0000000  -0.0000000  -0.0000000   0.0000390   0.0000000   0.0000000   0.0000000
                  0.0667489  -0.0000000   0.0000000  -0.0127780  -0.0000000  -0.0060677   0.0000000  -0.0000000
 /2/2/\  15.1     0.0000000  -0.0000000   0.0004960  -0.0025291  -0.0000000  -0.0000000   0.0000000  -0.0636821  -0.0000000
                 -0.0000000   0.0000000  -0.0099901  -0.0000000   0.0000000  -0.0000000  -0.0000000   0.0017854
 /2//2\  15.1     0.0010901  -0.0000000   0.0000000  -0.0000000  -0.0023353   0.0000000  -0.0000000   0.0000000  -0.0634190
                  0.0000000   0.0115314  -0.0000000   0.0000000  -0.0000000  -0.0000000   0.0017858   0.0000000
 //22/\  15.1    -0.0025382  -0.0000000   0.0000000  -0.0000000   0.0004483   0.0000000  -0.0000000   0.0000000   0.0140719
                 -0.0000000  -0.0629061   0.0000000  -0.0000000  -0.0000000   0.0000000   0.0017860  -0.0000000
 //2/2\  15.1     0.0000000   0.0000000  -0.0017864  -0.0018583  -0.0000000   0.0000000  -0.0000000  -0.0155929  -0.0000000
                 -0.0000000   0.0000000  -0.0625457   0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.0017860
 /2//\2  13.1    -0.0000000  -0.0000000   0.0006932   0.0033888  -0.0000000  -0.0000000   0.0000000  -0.0571429  -0.0000000
                 -0.0000000   0.0000000   0.0000602  -0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0067771
 /2//\2  14.1     0.0025573   0.0000000  -0.0000000   0.0000000  -0.0023289  -0.0000000  -0.0000000  -0.0000000   0.0571264
                 -0.0000000  -0.0013270   0.0000000  -0.0000000   0.0000000   0.0000000   0.0067763  -0.0000000
 //2/\2  13.1     0.0029115  -0.0000000   0.0000000  -0.0000000  -0.0018675   0.0000000  -0.0000000   0.0000000   0.0036221
                 -0.0000000  -0.0570252  -0.0000000  -0.0000000  -0.0000000   0.0000000  -0.0067766  -0.0000000
 //2/\2  14.1    -0.0000000  -0.0000000  -0.0012513  -0.0032247   0.0000000  -0.0000000  -0.0000000   0.0050039   0.0000000
                  0.0000000   0.0000000   0.0569205  -0.0000000   0.0000000   0.0000000   0.0000000  -0.0067765
 ///22\  15.1    -0.0000000  -0.0043591   0.0000000   0.0000000  -0.0000000   0.0000586  -0.0000000  -0.0000000   0.0000000
                 -0.0523226  -0.0000000   0.0000000   0.0100160   0.0000000  -0.0110574   0.0000000   0.0000000

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.000000    0.964146    0.000000    0.000000    0.000000    0.000000    0.056749    0.000000   -0.000000    0.000000
             0.000000   -0.005217    0.000000    0.000000    0.000000    0.000000    0.000216
 2           0.000000    0.000000   -0.418657    0.870359    0.000000    0.000000    0.000000   -0.000000    0.000000    0.000000
             0.000000    0.000000    0.001785    0.000000   -0.004907    0.000000    0.000000
 3           0.909810    0.000000    0.000000    0.000000    0.000000   -0.324105    0.000000    0.000000    0.000000    0.000000
             0.004804    0.000000    0.000000    0.000000    0.000000   -0.002048    0.000000
 4           0.324105    0.000000    0.000000    0.000000    0.000000    0.909810    0.000000    0.000000    0.000000   -0.000000
             0.002048    0.000000    0.000000    0.000000    0.000000    0.004804    0.000000
 5           0.000000   -0.056749    0.000000    0.000000    0.000000    0.000000    0.964146    0.000000   -0.000000    0.000000
             0.000000   -0.000216    0.000000    0.000000    0.000000    0.000000   -0.005217
 6           0.000000    0.000000    0.870359    0.418657    0.000000    0.000000    0.000000   -0.000000    0.000000    0.000000
             0.000000    0.000000    0.004907    0.000000    0.001785    0.000000    0.000000
 7           0.000000    0.000000    0.000000    0.000000    0.965815    0.000000    0.000000    0.000000    0.000000    0.000000
             0.000000    0.000000    0.000000   -0.005222    0.000000    0.000000    0.000000
 8          -0.005372    0.000000    0.000000    0.000000    0.000000   -0.001098    0.000000    0.000000    0.000000   -0.000000
             0.949684    0.000000    0.000000    0.000000    0.000000    0.134668    0.000000
 9           0.000000    0.005404    0.000000    0.000000    0.000000    0.000000    0.000926    0.000000   -0.000000    0.000000
             0.000000    0.956876    0.000000    0.000000    0.000000    0.000000    0.066512
 10          0.000000    0.000000   -0.003322    0.004362    0.000000    0.000000    0.000000    0.000000    0.000000    0.000000
             0.000000    0.000000   -0.139894    0.000000    0.948928    0.000000    0.000000
 11          0.000000   -0.000926    0.000000    0.000000    0.000000    0.000000    0.005404    0.000000   -0.000000    0.000000
             0.000000   -0.066512    0.000000    0.000000    0.000000    0.000000    0.956876
 12          0.001098    0.000000    0.000000    0.000000    0.000000   -0.005372    0.000000    0.000000    0.000000    0.000000
            -0.134668    0.000000    0.000000    0.000000    0.000000    0.949684    0.000000
 13          0.000000    0.000000   -0.004362   -0.003322    0.000000    0.000000    0.000000    0.000000    0.000000    0.000000
             0.000000    0.000000    0.948929    0.000000    0.139894    0.000000    0.000000
 14          0.000000    0.000000    0.000000    0.000000    0.005483    0.000000    0.000000    0.000000    0.000000    0.000000
             0.000000    0.000000    0.000000    0.959185    0.000000    0.000000    0.000000
 15          0.000000    0.000000   -0.000000   -0.000000    0.000000    0.000000    0.000000    0.962518    0.000000    0.000000
             0.000000    0.000000    0.000000    0.000000    0.000000    0.000000    0.000000
 16          0.000000   -0.000000    0.000000    0.000000    0.000000    0.000000    0.000000    0.000000    0.962518    0.000000
             0.000000    0.000000    0.000000    0.000000    0.000000    0.000000    0.000000
 17          0.000000    0.000000    0.000000    0.000000    0.000000   -0.000000    0.000000    0.000000    0.000000    0.962518
             0.000000    0.000000    0.000000    0.000000    0.000000   -0.000000    0.000000

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.965829   -0.000000    0.000000   -0.000000    0.000000    0.000000    0.000000   -0.000000    0.000148   -0.000000
            -0.000016   -0.000000   -0.000000    0.000000    0.000000   -0.000000    0.000000
 2          -0.000000    0.965829    0.000000   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.000146
            -0.000000   -0.000000   -0.000030    0.000000   -0.000000   -0.000000    0.000000
 3           0.000000    0.000000    0.965829    0.000000   -0.000000   -0.000000    0.000000   -0.000128    0.000000    0.000000
             0.000000    0.000077   -0.000000    0.000000    0.000000    0.000000    0.000000
 4          -0.000000   -0.000000    0.000000    0.965829    0.000000    0.000000    0.000000   -0.000077   -0.000000    0.000000
            -0.000000   -0.000128   -0.000000    0.000000    0.000000    0.000000   -0.000000
 5           0.000000   -0.000000   -0.000000    0.000000    0.965829    0.000000   -0.000000   -0.000000    0.000017   -0.000000
             0.000148   -0.000000   -0.000000   -0.000000    0.000000    0.000000    0.000000
 6           0.000000   -0.000000   -0.000000    0.000000    0.000000    0.965829    0.000000   -0.000000   -0.000000   -0.000030
            -0.000000   -0.000000   -0.000146    0.000000   -0.000000   -0.000000    0.000000
 7           0.000000   -0.000000    0.000000    0.000000   -0.000000    0.000000    0.965829    0.000000    0.000000    0.000000
             0.000000    0.000000   -0.000000    0.000149   -0.000000   -0.000000   -0.000000
 8          -0.000000   -0.000000   -0.000128   -0.000077   -0.000000   -0.000000    0.000000    0.959200   -0.000000    0.000000
            -0.000000   -0.000000   -0.000000    0.000000    0.000000   -0.000000   -0.000000
 9           0.000148    0.000000    0.000000   -0.000000    0.000017   -0.000000    0.000000   -0.000000    0.959200    0.000000
            -0.000000   -0.000000   -0.000000    0.000000    0.000000    0.000000    0.000000
 10         -0.000000    0.000146    0.000000    0.000000   -0.000000   -0.000030    0.000000    0.000000    0.000000    0.959200
             0.000000    0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.000000
 11         -0.000016   -0.000000    0.000000   -0.000000    0.000148   -0.000000    0.000000   -0.000000   -0.000000    0.000000
             0.959200   -0.000000    0.000000   -0.000000    0.000000    0.000000    0.000000
 12         -0.000000   -0.000000    0.000077   -0.000128   -0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.000000
            -0.000000    0.959200   -0.000000    0.000000    0.000000   -0.000000   -0.000000
 13         -0.000000   -0.000030   -0.000000   -0.000000   -0.000000   -0.000146   -0.000000   -0.000000   -0.000000   -0.000000
             0.000000   -0.000000    0.959201   -0.000000    0.000000   -0.000000   -0.000000
 14          0.000000    0.000000    0.000000    0.000000   -0.000000    0.000000    0.000149    0.000000    0.000000   -0.000000
            -0.000000    0.000000   -0.000000    0.959201   -0.000000   -0.000000    0.000000
 15          0.000000   -0.000000    0.000000    0.000000    0.000000   -0.000000   -0.000000    0.000000    0.000000    0.000000
             0.000000    0.000000    0.000000   -0.000000    0.962518   -0.000000   -0.000000
 16         -0.000000   -0.000000    0.000000    0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.000000   -0.000000
             0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.962518   -0.000000
 17          0.000000    0.000000    0.000000   -0.000000    0.000000    0.000000   -0.000000   -0.000000    0.000000    0.000000
             0.000000   -0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.962518


 RESULTS FOR STATE 1.1
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.96414629 (fixed)   0.96582909 (relaxed)   0.96582908 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000002   -0.00000007   -0.22844566
 Singles      0.01481667   -0.02910450   -0.03093800
 Pairs        0.05719481   -0.00006197   -0.01467918
 Total        1.07201151   -0.02916654   -0.27406284
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -1391.85120020
 Nuclear energy                         0.00000000
 Kinetic energy                      1454.19083439
 One electron energy                -1926.00410611
 Two electron energy                  533.87884038
 Virial quotient                       -0.95731952
 Correlation energy                    -0.27406553
 !MRCI STATE 1.1 Energy             -1392.125265725516

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -1392.14500160 (Davidson, fixed reference)
 Cluster corrected energies         -1392.14500159 (Davidson, relaxed reference)
 Cluster corrected energies         -1392.14500160 (Davidson, rotated reference)

 Cluster corrected energies         -1392.13873030 (Pople, fixed reference)
 Cluster corrected energies         -1392.13873029 (Pople, relaxed reference)
 Cluster corrected energies         -1392.13873030 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.87035887 (fixed)   0.96582908 (relaxed)   0.96582907 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000002   -0.00000007   -0.22850343
 Singles      0.01481672   -0.02910453   -0.03093802
 Pairs        0.05719478    0.00000000   -0.01462138
 Total        1.07201152   -0.02910460   -0.27406284
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -1391.85120020
 Nuclear energy                         0.00000000
 Kinetic energy                      1454.19083192
 One electron energy                -1926.00410249
 Two electron energy                  533.87883676
 Virial quotient                       -0.95731952
 Correlation energy                    -0.27406553
 !MRCI STATE 2.1 Energy             -1392.125265725509

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -1392.14500160 (Davidson, fixed reference)
 Cluster corrected energies         -1392.14500159 (Davidson, relaxed reference)
 Cluster corrected energies         -1392.14500160 (Davidson, rotated reference)

 Cluster corrected energies         -1392.13873030 (Pople, fixed reference)
 Cluster corrected energies         -1392.13873029 (Pople, relaxed reference)
 Cluster corrected energies         -1392.13873030 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.90981026 (fixed)   0.96582913 (relaxed)   0.96582912 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000002   -0.00000007   -0.22850349
 Singles      0.01481662   -0.02910449   -0.03093798
 Pairs        0.05719478   -0.00000000   -0.01462137
 Total        1.07201142   -0.02910457   -0.27406284
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -1391.85120020
 Nuclear energy                         0.00000000
 Kinetic energy                      1454.19083177
 One electron energy                -1926.00409949
 Two electron energy                  533.87883376
 Virial quotient                       -0.95731952
 Correlation energy                    -0.27406553
 !MRCI STATE 3.1 Energy             -1392.125265725477

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -1392.14500157 (Davidson, fixed reference)
 Cluster corrected energies         -1392.14500157 (Davidson, relaxed reference)
 Cluster corrected energies         -1392.14500157 (Davidson, rotated reference)

 Cluster corrected energies         -1392.13873028 (Pople, fixed reference)
 Cluster corrected energies         -1392.13873028 (Pople, relaxed reference)
 Cluster corrected energies         -1392.13873028 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Maximum overlap with reference state  6

 Coefficient of reference function:   C(0) = 0.90981015 (fixed)   0.96582906 (relaxed)   0.96582905 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000002   -0.00000007   -0.22850346
 Singles      0.01481666   -0.02910449   -0.03093800
 Pairs        0.05719488    0.00000000   -0.01462138
 Total        1.07201157   -0.02910457   -0.27406284
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -1391.85120020
 Nuclear energy                         0.00000000
 Kinetic energy                      1454.19083706
 One electron energy                -1926.00410875
 Two electron energy                  533.87884303
 Virial quotient                       -0.95731951
 Correlation energy                    -0.27406553
 !MRCI STATE 4.1 Energy             -1392.125265725341

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -1392.14500161 (Davidson, fixed reference)
 Cluster corrected energies         -1392.14500161 (Davidson, relaxed reference)
 Cluster corrected energies         -1392.14500161 (Davidson, rotated reference)

 Cluster corrected energies         -1392.13873031 (Pople, fixed reference)
 Cluster corrected energies         -1392.13873030 (Pople, relaxed reference)
 Cluster corrected energies         -1392.13873031 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Maximum overlap with reference state  7

 Coefficient of reference function:   C(0) = 0.96414630 (fixed)   0.96582909 (relaxed)   0.96582908 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000002   -0.00000007   -0.22989764
 Singles      0.01481666   -0.02910450   -0.03093800
 Pairs        0.05719481    0.00149457   -0.01322720
 Total        1.07201150   -0.02761000   -0.27406284
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -1391.85120019
 Nuclear energy                         0.00000000
 Kinetic energy                      1454.19083212
 One electron energy                -1926.00410105
 Two electron energy                  533.87883532
 Virial quotient                       -0.95731952
 Correlation energy                    -0.27406553
 !MRCI STATE 5.1 Energy             -1392.125265725130

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -1392.14500159 (Davidson, fixed reference)
 Cluster corrected energies         -1392.14500159 (Davidson, relaxed reference)
 Cluster corrected energies         -1392.14500159 (Davidson, rotated reference)

 Cluster corrected energies         -1392.13873029 (Pople, fixed reference)
 Cluster corrected energies         -1392.13873029 (Pople, relaxed reference)
 Cluster corrected energies         -1392.13873029 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.87035921 (fixed)   0.96582933 (relaxed)   0.96582932 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000002   -0.00000007   -0.22850349
 Singles      0.01481671   -0.02910460   -0.03093814
 Pairs        0.05719423   -0.00000000   -0.01462120
 Total        1.07201096   -0.02910467   -0.27406284
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -1391.85120020
 Nuclear energy                         0.00000000
 Kinetic energy                      1454.19085744
 One electron energy                -1926.00414942
 Two electron energy                  533.87888370
 Virial quotient                       -0.95731950
 Correlation energy                    -0.27406553
 !MRCI STATE 6.1 Energy             -1392.125265724971

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -1392.14500145 (Davidson, fixed reference)
 Cluster corrected energies         -1392.14500144 (Davidson, relaxed reference)
 Cluster corrected energies         -1392.14500145 (Davidson, rotated reference)

 Cluster corrected energies         -1392.13873019 (Pople, fixed reference)
 Cluster corrected energies         -1392.13873019 (Pople, relaxed reference)
 Cluster corrected energies         -1392.13873019 (Pople, rotated reference)



 RESULTS FOR STATE 7.1
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.96581521 (fixed)   0.96582933 (relaxed)   0.96582932 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000002   -0.00000007   -0.22850354
 Singles      0.01481674   -0.02910455   -0.03093811
 Pairs        0.05719421   -0.00000000   -0.01462119
 Total        1.07201097   -0.02910462   -0.27406284
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -1391.85120020
 Nuclear energy                         0.00000000
 Kinetic energy                      1454.19085098
 One electron energy                -1926.00414161
 Two electron energy                  533.87887589
 Virial quotient                       -0.95731951
 Correlation energy                    -0.27406553
 !MRCI STATE 7.1 Energy             -1392.125265724867

 Properties without orbital relaxation:

 !MRCI STATE 7.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -1392.14500145 (Davidson, fixed reference)
 Cluster corrected energies         -1392.14500144 (Davidson, relaxed reference)
 Cluster corrected energies         -1392.14500145 (Davidson, rotated reference)

 Cluster corrected energies         -1392.13873019 (Pople, fixed reference)
 Cluster corrected energies         -1392.13873019 (Pople, relaxed reference)
 Cluster corrected energies         -1392.13873019 (Pople, rotated reference)



 RESULTS FOR STATE 8.1
 =====================

 Maximum overlap with reference state 11

 Coefficient of reference function:   C(0) = 0.94968400 (fixed)   0.95920035 (relaxed)   0.95920034 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000002   -0.00000008   -0.24930171
 Singles      0.03697765   -0.05351857   -0.06028365
 Pairs        0.04990172    0.00000000   -0.01489410
 Total        1.08687940   -0.05351865   -0.32447946
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -1391.76418192
 Nuclear energy                         0.00000000
 Kinetic energy                      1455.92259778
 One electron energy                -1933.21557667
 Two electron energy                  541.12003954
 Virial quotient                       -0.95616040
 Correlation energy                    -0.33135521
 !MRCI STATE 8.1 Energy             -1392.095537129220

 Properties without orbital relaxation:

 !MRCI STATE 8.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -1392.12432507 (Davidson, fixed reference)
 Cluster corrected energies         -1392.12432506 (Davidson, relaxed reference)
 Cluster corrected energies         -1392.12432507 (Davidson, rotated reference)

 Cluster corrected energies         -1392.11526643 (Pople, fixed reference)
 Cluster corrected energies         -1392.11526642 (Pople, relaxed reference)
 Cluster corrected energies         -1392.11526643 (Pople, rotated reference)



 RESULTS FOR STATE 9.1
 =====================

 Maximum overlap with reference state 12

 Coefficient of reference function:   C(0) = 0.95687588 (fixed)   0.95920038 (relaxed)   0.95920036 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000002   -0.00000008   -0.23157621
 Singles      0.03697756   -0.05351855   -0.06028364
 Pairs        0.04990175   -0.01926552   -0.03261961
 Total        1.08687933   -0.07278414   -0.32447946
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -1391.76418192
 Nuclear energy                         0.00000000
 Kinetic energy                      1455.92259937
 One electron energy                -1933.21557997
 Two electron energy                  541.12004284
 Virial quotient                       -0.95616040
 Correlation energy                    -0.33135521
 !MRCI STATE 9.1 Energy             -1392.095537128978

 Properties without orbital relaxation:

 !MRCI STATE 9.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -1392.12432505 (Davidson, fixed reference)
 Cluster corrected energies         -1392.12432504 (Davidson, relaxed reference)
 Cluster corrected energies         -1392.12432505 (Davidson, rotated reference)

 Cluster corrected energies         -1392.11526641 (Pople, fixed reference)
 Cluster corrected energies         -1392.11526641 (Pople, relaxed reference)
 Cluster corrected energies         -1392.11526641 (Pople, rotated reference)



 RESULTS FOR STATE 10.1
 ======================

 Maximum overlap with reference state 15

 Coefficient of reference function:   C(0) = 0.94892815 (fixed)   0.95920013 (relaxed)   0.95920012 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000002   -0.00000008   -0.24930140
 Singles      0.03697790   -0.05351879   -0.06028371
 Pairs        0.04990195    0.00000000   -0.01489434
 Total        1.08687988   -0.05351886   -0.32447946
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -1391.76418191
 Nuclear energy                         0.00000000
 Kinetic energy                      1455.92258152
 One electron energy                -1933.21554322
 Two electron energy                  541.12000609
 Virial quotient                       -0.95616041
 Correlation energy                    -0.33135522
 !MRCI STATE 10.1 Energy            -1392.095537128920

 Properties without orbital relaxation:

 !MRCI STATE 10.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -1392.12432523 (Davidson, fixed reference)
 Cluster corrected energies         -1392.12432522 (Davidson, relaxed reference)
 Cluster corrected energies         -1392.12432523 (Davidson, rotated reference)

 Cluster corrected energies         -1392.11526654 (Pople, fixed reference)
 Cluster corrected energies         -1392.11526653 (Pople, relaxed reference)
 Cluster corrected energies         -1392.11526654 (Pople, rotated reference)



 RESULTS FOR STATE 11.1
 ======================

 Maximum overlap with reference state 17

 Coefficient of reference function:   C(0) = 0.95687563 (fixed)   0.95920014 (relaxed)   0.95920013 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000002   -0.00000008   -0.00062118
 Singles      0.03697775   -0.05351868   -0.06051768
 Pairs        0.04990210   -0.27716409   -0.27021905
 Total        1.08687987   -0.33068284   -0.33135790
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -1391.76418191
 Nuclear energy                         0.00000000
 Kinetic energy                      1455.92258701
 One electron energy                -1933.21555537
 Two electron energy                  541.12001824
 Virial quotient                       -0.95616041
 Correlation energy                    -0.33135522
 !MRCI STATE 11.1 Energy            -1392.095537128349

 Properties without orbital relaxation:

 !MRCI STATE 11.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -1392.12432523 (Davidson, fixed reference)
 Cluster corrected energies         -1392.12432522 (Davidson, relaxed reference)
 Cluster corrected energies         -1392.12432523 (Davidson, rotated reference)

 Cluster corrected energies         -1392.11526654 (Pople, fixed reference)
 Cluster corrected energies         -1392.11526653 (Pople, relaxed reference)
 Cluster corrected energies         -1392.11526654 (Pople, rotated reference)



 RESULTS FOR STATE 12.1
 ======================

 Maximum overlap with reference state 16

 Coefficient of reference function:   C(0) = 0.94968398 (fixed)   0.95920034 (relaxed)   0.95920033 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000002   -0.00000008   -0.25563039
 Singles      0.03697751   -0.05351851   -0.06051764
 Pairs        0.04990187   -0.00000000   -0.01520988
 Total        1.08687940   -0.05351858   -0.33135790
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -1391.76418191
 Nuclear energy                         0.00000000
 Kinetic energy                      1455.92260148
 One electron energy                -1933.21558351
 Two electron energy                  541.12004638
 Virial quotient                       -0.95616040
 Correlation energy                    -0.33135522
 !MRCI STATE 12.1 Energy            -1392.095537128141

 Properties without orbital relaxation:

 !MRCI STATE 12.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -1392.12432507 (Davidson, fixed reference)
 Cluster corrected energies         -1392.12432506 (Davidson, relaxed reference)
 Cluster corrected energies         -1392.12432507 (Davidson, rotated reference)

 Cluster corrected energies         -1392.11526643 (Pople, fixed reference)
 Cluster corrected energies         -1392.11526642 (Pople, relaxed reference)
 Cluster corrected energies         -1392.11526643 (Pople, rotated reference)



 RESULTS FOR STATE 13.1
 ======================

 Coefficient of reference function:   C(0) = 0.94892881 (fixed)   0.95920078 (relaxed)   0.95920077 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000002   -0.00000008   -0.25563084
 Singles      0.03697702   -0.05351828   -0.06051756
 Pairs        0.04990136   -0.00000000   -0.01520951
 Total        1.08687840   -0.05351835   -0.33135790
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -1391.76418191
 Nuclear energy                         0.00000000
 Kinetic energy                      1455.92261592
 One electron energy                -1933.21562443
 Two electron energy                  541.12008730
 Virial quotient                       -0.95616039
 Correlation energy                    -0.33135521
 !MRCI STATE 13.1 Energy            -1392.095537128129

 Properties without orbital relaxation:

 !MRCI STATE 13.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -1392.12432474 (Davidson, fixed reference)
 Cluster corrected energies         -1392.12432473 (Davidson, relaxed reference)
 Cluster corrected energies         -1392.12432474 (Davidson, rotated reference)

 Cluster corrected energies         -1392.11526619 (Pople, fixed reference)
 Cluster corrected energies         -1392.11526619 (Pople, relaxed reference)
 Cluster corrected energies         -1392.11526619 (Pople, rotated reference)



 RESULTS FOR STATE 14.1
 ======================

 Coefficient of reference function:   C(0) = 0.95918540 (fixed)   0.95920107 (relaxed)   0.95920106 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000002   -0.00000008   -0.25563113
 Singles      0.03697644   -0.05351813   -0.06051747
 Pairs        0.04990128    0.00000000   -0.01520930
 Total        1.08687775   -0.05351820   -0.33135791
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -1391.76418191
 Nuclear energy                         0.00000000
 Kinetic energy                      1455.92262329
 One electron energy                -1933.21565001
 Two electron energy                  541.12011288
 Virial quotient                       -0.95616039
 Correlation energy                    -0.33135521
 !MRCI STATE 14.1 Energy            -1392.095537127831

 Properties without orbital relaxation:

 !MRCI STATE 14.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -1392.12432452 (Davidson, fixed reference)
 Cluster corrected energies         -1392.12432451 (Davidson, relaxed reference)
 Cluster corrected energies         -1392.12432452 (Davidson, rotated reference)

 Cluster corrected energies         -1392.11526604 (Pople, fixed reference)
 Cluster corrected energies         -1392.11526604 (Pople, relaxed reference)
 Cluster corrected energies         -1392.11526604 (Pople, rotated reference)



 RESULTS FOR STATE 15.1
 ======================

 Maximum overlap with reference state  8

 Coefficient of reference function:   C(0) = 0.96251780 (fixed)   0.96252404 (relaxed)   0.96251780 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00001296   -0.00000000   -0.23905611
 Singles      0.02101547   -0.03617133   -0.03923924
 Pairs        0.05837168    0.00000000   -0.01590935
 Total        1.07940011   -0.03617133   -0.29420471
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -1391.77105767
 Nuclear energy                         0.00000000
 Kinetic energy                      1454.05761356
 One electron energy                -1925.69074181
 Two electron energy                  533.63235788
 Virial quotient                       -0.95736123
 Correlation energy                    -0.28732626
 !MRCI STATE 15.1 Energy            -1392.058383928960

 Properties without orbital relaxation:

 !MRCI STATE 15.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -1392.08119767 (Davidson, fixed reference)
 Cluster corrected energies         -1392.08119365 (Davidson, relaxed reference)
 Cluster corrected energies         -1392.08119767 (Davidson, rotated reference)

 Cluster corrected energies         -1392.07398354 (Pople, fixed reference)
 Cluster corrected energies         -1392.07398073 (Pople, relaxed reference)
 Cluster corrected energies         -1392.07398354 (Pople, rotated reference)



 RESULTS FOR STATE 16.1
 ======================

 Maximum overlap with reference state  9

 Coefficient of reference function:   C(0) = 0.96251805 (fixed)   0.96252430 (relaxed)   0.96251805 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00001299    0.00000000   -0.23905628
 Singles      0.02101520   -0.03617141   -0.03923937
 Pairs        0.05837137    0.00000013   -0.01590905
 Total        1.07939955   -0.03617128   -0.29420471
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -1391.77105767
 Nuclear energy                         0.00000000
 Kinetic energy                      1454.05763389
 One electron energy                -1925.69077353
 Two electron energy                  533.63238960
 Virial quotient                       -0.95736122
 Correlation energy                    -0.28732626
 !MRCI STATE 16.1 Energy            -1392.058383928765

 Properties without orbital relaxation:

 !MRCI STATE 16.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -1392.08119751 (Davidson, fixed reference)
 Cluster corrected energies         -1392.08119348 (Davidson, relaxed reference)
 Cluster corrected energies         -1392.08119751 (Davidson, rotated reference)

 Cluster corrected energies         -1392.07398343 (Pople, fixed reference)
 Cluster corrected energies         -1392.07398061 (Pople, relaxed reference)
 Cluster corrected energies         -1392.07398343 (Pople, rotated reference)



 RESULTS FOR STATE 17.1
 ======================

 Maximum overlap with reference state 10

 Coefficient of reference function:   C(0) = 0.96251802 (fixed)   0.96252427 (relaxed)   0.96251802 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00001298    0.00000000   -0.23905615
 Singles      0.02101527   -0.03617141   -0.03923938
 Pairs        0.05837138   -0.00000000   -0.01590919
 Total        1.07939963   -0.03617141   -0.29420471
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -1391.77105767
 Nuclear energy                         0.00000000
 Kinetic energy                      1454.05762999
 One electron energy                -1925.69076888
 Two electron energy                  533.63238495
 Virial quotient                       -0.95736122
 Correlation energy                    -0.28732626
 !MRCI STATE 17.1 Energy            -1392.058383928633

 Properties without orbital relaxation:

 !MRCI STATE 17.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -1392.08119753 (Davidson, fixed reference)
 Cluster corrected energies         -1392.08119350 (Davidson, relaxed reference)
 Cluster corrected energies         -1392.08119753 (Davidson, rotated reference)

 Cluster corrected energies         -1392.07398344 (Pople, fixed reference)
 Cluster corrected energies         -1392.07398062 (Pople, relaxed reference)
 Cluster corrected energies         -1392.07398344 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       36.44       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       6       88.19       700     1000      520     2100     2140     5101   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *        74.91     71.91      0.96      0.96      0.88
 REAL TIME  *        87.52 SEC
 DISK USED  *       124.69 MB (local),        2.02 GB (total)
 SF USED    *       839.23 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =     -1392.14500160  AU                              
 SETTING HLSDIAG(2)     =     -1392.14500160  AU                              
 SETTING HLSDIAG(3)     =     -1392.14500157  AU                              
 SETTING HLSDIAG(4)     =     -1392.14500161  AU                              
 SETTING HLSDIAG(5)     =     -1392.14500159  AU                              
 SETTING HLSDIAG(6)     =     -1392.14500145  AU                              
 SETTING HLSDIAG(7)     =     -1392.14500145  AU                              
 SETTING HLSDIAG(8)     =     -1392.12432507  AU                              
 SETTING HLSDIAG(9)     =     -1392.12432505  AU                              
 SETTING HLSDIAG(10)    =     -1392.12432523  AU                              
 SETTING HLSDIAG(11)    =     -1392.12432523  AU                              
 SETTING HLSDIAG(12)    =     -1392.12432507  AU                              
 SETTING HLSDIAG(13)    =     -1392.12432474  AU                              
 SETTING HLSDIAG(14)    =     -1392.12432452  AU                              
 SETTING HLSDIAG(15)    =     -1392.08119767  AU                              
 SETTING HLSDIAG(16)    =     -1392.08119751  AU                              
 SETTING HLSDIAG(17)    =     -1392.08119753  AU                              


         HLSDIAG
    -1392.145002
    -1392.145002
    -1392.145002
    -1392.145002
    -1392.145002
    -1392.145001
    -1392.145001
    -1392.124325
    -1392.124325
    -1392.124325
    -1392.124325
    -1392.124325
    -1392.124325
    -1392.124325
    -1392.081198
    -1392.081198
    -1392.081198
                                                  


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

 Time for Seward_LS:       4.57 sec

 CPU time:      4.57 sec, REAL time:      4.78 sec


 SORTLS1 read     8314052. and wrote     8314052. SO integrals in    48 records. CPU time:      0.05 sec, REAL time:      0.13 sec
 SORTLS2 read     8314052. and wrote     8314052. SO integrals in    48 records. CPU time:      0.01 sec, REAL time:      0.06 sec

 FILE SIZES: FILE 1:    38.3 MBYTE, FILE 4:     0.0 MBYTE, TOTAL:    38.3 MBYTE

 Preparing effective Fock matrices
 eXact-2-Component (X2C) method activated

 Computing Douglas-Kroll / X2C integrals

 Total X Y Z Fock matrices evaluated:     2    2    2
  
 Wavefunction restored from record  5101.2  Symmetry=1  S= 1.5  NSTATE=  17

 Original energies:  -1392.125266  -1392.125266  -1392.125266  -1392.125266  -1392.125266  -1392.125266  -1392.125266  -1392.095537
                     -1392.095537  -1392.095537  -1392.095537  -1392.095537  -1392.095537  -1392.095537  -1392.058384  -1392.058384
                     -1392.058384
 Replaced energies:  -1392.145002  -1392.145002  -1392.145002  -1392.145002  -1392.145002  -1392.145001  -1392.145001  -1392.124325
                     -1392.124325  -1392.124325  -1392.124325  -1392.124325  -1392.124325  -1392.124325  -1392.081198  -1392.081198
                     -1392.081198



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0= -1392.14500161

 Wigner-Eckart theorem used for 13 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00     333.43     560.82       0.00      -0.00       0.00       1.39       0.00      -0.00

    2   2.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00      -0.00       0.00       0.00       7.12       0.00      -0.00       0.00

    3   3.1  1.5  1.5       0.00       0.00       0.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -333.43      -0.00       0.00      -0.00     -65.32       0.00      -0.00      -0.00       0.82       0.00

    4   4.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -560.82       0.00       0.00      -0.00     524.75       0.00      -0.00      -0.00       1.21       0.00

    5   5.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      65.32    -524.75      -0.00       0.00      -0.00      -0.52      -0.00       0.00

    6   6.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.04       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00       0.00     531.12       0.00      -0.00       0.00

    7   7.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.04       0.00       0.00       0.00
                           -0.00      -7.12       0.00       0.00       0.00    -531.12      -0.00      -0.00       0.00      -0.24

    8   8.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00    4537.98       0.00       0.00
                           -1.39      -0.00       0.00       0.00       0.52      -0.00       0.00      -0.00     493.72       0.00

    9   9.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    4537.98       0.00
                           -0.00       0.00      -0.82      -1.21       0.00       0.00      -0.00    -493.72       0.00       0.00

   10  10.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    4537.94
                            0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.24      -0.00      -0.00       0.00

   11  11.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.07       1.41      -0.00      -0.00       0.00     250.34      -0.00      -0.00

   12  12.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.74      -0.00      -0.00      -0.00       1.17       0.00      -0.00       0.00     227.12       0.00

   13  13.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00       0.00      -0.00       0.00       1.26       0.00      -0.00       0.00

   14  14.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.02       0.00      -0.00      -0.00       1.28       0.00      -0.00      -0.00      89.95

   15  15.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00      -0.00       0.00       0.00      -0.00      -0.00      -0.00       0.00

   16  16.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.01       0.00       0.00       0.00      -0.00      -0.00      -0.00       0.00

   17  17.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.01       0.00       0.00       0.00      -0.01      -0.00      -0.00       0.00       0.00       0.00

   18   1.1  1.5  0.5      -0.00      -0.00       0.00      -0.00      -0.00       0.00      -1.41       0.00      -0.00      -0.00
                           -0.00    -232.60       0.00       0.00       0.00    -293.49       0.00      -0.00       0.00       0.41

   19   2.1  1.5  0.5       0.00       0.00    -357.90     102.62      -0.00       0.00       0.00      -0.61      -0.00       0.00
                          232.60      -0.00       0.00      -0.00     299.01      -0.00       0.00      -0.00      -0.64      -0.00

   20   3.1  1.5  0.5      -0.00     357.90      -0.00       0.00       0.00    -184.43       0.00      -0.00       0.00      -0.94
                           -0.00      -0.00       0.00       0.00      -0.00       0.00    -285.58      -0.00      -0.00      -0.00

   21   4.1  1.5  0.5       0.00    -102.62      -0.00       0.00       0.00     249.97      -0.00       0.00      -0.00       0.36
                           -0.00       0.00      -0.00       0.00      -0.00       0.00    -111.78       0.00       0.00      -0.00

   22   5.1  1.5  0.5       0.00       0.00      -0.00      -0.00      -0.00      -0.00     306.68       0.00      -0.00       0.00
                           -0.00    -299.01       0.00       0.00      -0.00     -74.03       0.00      -0.00      -0.00       0.67

   23   6.1  1.5  0.5      -0.00      -0.00     184.43    -249.97       0.00      -0.00      -0.00       0.07       0.00      -0.00
                          293.49       0.00      -0.00      -0.00      74.03       0.00       0.00       0.00      -0.72      -0.00

   24   7.1  1.5  0.5       1.41      -0.00      -0.00       0.00    -306.68       0.00      -0.00       0.00       0.08       0.00
                           -0.00      -0.00     285.58     111.78      -0.00      -0.00       0.00       0.73       0.00      -0.00

   25   8.1  1.5  0.5      -0.00       0.61       0.00      -0.00      -0.00      -0.07      -0.00       0.00      -0.00    -228.56
                            0.00       0.00       0.00      -0.00       0.00      -0.00      -0.73       0.00       0.00      -0.00

   26   9.1  1.5  0.5       0.00       0.00      -0.00       0.00       0.00      -0.00      -0.08       0.00       0.00      -0.00
                           -0.00       0.64       0.00      -0.00       0.00       0.72      -0.00      -0.00      -0.00    -178.81

   27  10.1  1.5  0.5       0.00      -0.00       0.94      -0.36      -0.00       0.00      -0.00     228.56       0.00       0.00
                           -0.41       0.00       0.00       0.00      -0.67       0.00       0.00       0.00     178.81       0.00

   28  11.1  1.5  0.5       0.00       0.00       0.00      -0.00      -0.00       0.00      -0.74       0.00       0.00      -0.00
                           -0.00       0.66       0.00      -0.00      -0.00       0.10      -0.00      -0.00      -0.00    -232.06

   29  12.1  1.5  0.5      -0.00      -0.66       0.00      -0.00       0.00       0.75       0.00       0.00       0.00     296.91
                           -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.13      -0.00       0.00       0.00

   30  13.1  1.5  0.5       0.00       0.00       0.26      -0.54       0.00      -0.00      -0.00     -20.72       0.00       0.00
                            0.81       0.00      -0.00       0.00       0.32       0.00      -0.00       0.00    -312.47      -0.00

   31  14.1  1.5  0.5      -0.00       0.00      -0.00      -0.00       0.74      -0.00      -0.00       0.00     -29.29      -0.00
                            0.00       0.00      -0.69      -0.27       0.00      -0.00      -0.00    -272.22       0.00      -0.00

   32  15.1  1.5  0.5       0.00      -0.00       0.00      -0.00       0.00       0.00      -0.00      -0.00      -0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00      -0.00      -0.00      -0.00

   33  16.1  1.5  0.5       0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.00      -0.00       0.00
                            0.00      -0.01       0.00      -0.00       0.00       0.00      -0.00       0.00       0.00       0.00

   34  17.1  1.5  0.5       0.00      -0.01      -0.00       0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00
                            0.00      -0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00       0.00

   35   1.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   36   2.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   37   3.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   38   4.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   39   5.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   40   6.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   41   7.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   42   8.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   43   9.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   44  10.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   45  11.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   46  12.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   47  13.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   48  14.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   49  15.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   50  16.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   51  17.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   52   1.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   53   2.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   54   3.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   55   4.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   56   5.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   57   6.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   58   7.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   59   8.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   60   9.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   61  10.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   62  11.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   63  12.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   64  13.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   65  14.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   66  15.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   67  16.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   68  17.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00


   Nr   State  S   Sz       11         12         13         14         15         16         17         18         19         20

    1   1.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00      -0.00
                            0.00       0.74      -0.00      -0.00       0.00       0.00       0.01       0.00    -232.60       0.00

    2   2.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00     357.90
                            0.00       0.00       0.00      -0.02      -0.00       0.00      -0.00     232.60       0.00       0.00

    3   3.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    -357.90      -0.00
                            0.07       0.00       0.00      -0.00       0.00       0.01      -0.00      -0.00      -0.00      -0.00

    4   4.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00     102.62       0.00
                           -1.41       0.00      -0.00       0.00       0.00      -0.00      -0.00      -0.00       0.00      -0.00

    5   5.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00
                            0.00      -1.17       0.00       0.00      -0.00      -0.00       0.01      -0.00    -299.01       0.00

    6   6.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    -184.43
                            0.00      -0.00      -0.00      -1.28      -0.00      -0.00       0.00     293.49       0.00      -0.00

    7   7.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -1.41       0.00       0.00
                           -0.00       0.00      -1.26      -0.00       0.00       0.00       0.00      -0.00      -0.00     285.58

    8   8.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.61      -0.00
                         -250.34      -0.00      -0.00       0.00       0.00       0.00      -0.00       0.00       0.00       0.00

    9   9.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00
                            0.00    -227.12       0.00       0.00       0.00       0.00      -0.00      -0.00       0.64       0.00

   10  10.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00      -0.94
                            0.00      -0.00      -0.00     -89.95      -0.00      -0.00      -0.00      -0.41       0.00       0.00

   11  11.1  1.5  1.5    4537.94       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00
                           -0.00     462.90      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.66       0.00

   12  12.1  1.5  1.5       0.00    4537.98       0.00       0.00       0.00       0.00       0.00       0.00       0.66      -0.00
                         -462.90       0.00      -0.00       0.00       0.00      -0.00       0.00      -0.00      -0.00      -0.00

   13  13.1  1.5  1.5       0.00       0.00    4538.05       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.26
                            0.00       0.00       0.00    -469.92      -0.00       0.00      -0.00       0.81       0.00      -0.00

   14  14.1  1.5  1.5       0.00       0.00       0.00    4538.10       0.00       0.00       0.00       0.00      -0.00       0.00
                            0.00      -0.00     469.92       0.00      -0.00       0.00      -0.00       0.00       0.00      -0.69

   15  15.1  1.5  1.5       0.00       0.00       0.00       0.00   14003.35       0.00       0.00      -0.00       0.00      -0.00
                            0.00      -0.00       0.00       0.00       0.00      -0.00       0.00      -0.00      -0.00      -0.00

   16  16.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00   14003.38       0.00      -0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.00       0.00       0.00    -245.97       0.00      -0.01       0.00

   17  17.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00   14003.38      -0.00       0.01       0.00
                            0.00      -0.00       0.00       0.00      -0.00     245.97      -0.00       0.00      -0.00       0.00

   18   1.1  1.5  0.5      -0.00       0.00      -0.00       0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00
                            0.00       0.00      -0.81      -0.00       0.00      -0.00      -0.00       0.00      -0.00     111.14

   19   2.1  1.5  0.5      -0.00       0.66      -0.00      -0.00       0.00       0.00       0.01       0.00       0.00       0.00
                           -0.66       0.00      -0.00      -0.00       0.00       0.01       0.00       0.00       0.00       0.00

   20   3.1  1.5  0.5      -0.00      -0.00      -0.26       0.00      -0.00       0.00       0.00       0.00       0.00       0.01
                           -0.00       0.00       0.00       0.69       0.00      -0.00      -0.00    -111.14      -0.00       0.00

   21   4.1  1.5  0.5       0.00       0.00       0.54       0.00       0.00       0.00      -0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00       0.27       0.00       0.00      -0.00    -186.94       0.00       0.00

   22   5.1  1.5  0.5       0.00      -0.00      -0.00      -0.74      -0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.32      -0.00       0.00      -0.00      -0.00      -0.00      -0.00      21.77

   23   6.1  1.5  0.5      -0.00      -0.75       0.00       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00
                           -0.10      -0.00      -0.00       0.00      -0.00      -0.00       0.00       0.00      -0.00      -0.00

   24   7.1  1.5  0.5       0.74      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.13       0.00       0.00       0.00       0.00       0.00      -0.00      -2.37       0.00

   25   8.1  1.5  0.5      -0.00      -0.00      20.72      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00     272.22       0.00      -0.00       0.00      -0.46      -0.00       0.00

   26   9.1  1.5  0.5      -0.00      -0.00      -0.00      29.29       0.00       0.00      -0.00       0.00       0.00       0.00
                            0.00      -0.00     312.47      -0.00       0.00      -0.00       0.00      -0.00       0.00      -0.27

   27  10.1  1.5  0.5       0.00    -296.91      -0.00       0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00
                          232.06      -0.00       0.00       0.00       0.00      -0.00      -0.00       0.00      -0.00      -0.00

   28  11.1  1.5  0.5       0.00      -0.00      -0.00     274.68       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      85.46      -0.00       0.00      -0.00       0.00      -0.00      -0.00      -0.02

   29  12.1  1.5  0.5       0.00       0.00     223.47      -0.00      -0.00       0.00      -0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00     -46.93      -0.00      -0.00      -0.00      -0.25      -0.00      -0.00

   30  13.1  1.5  0.5       0.00    -223.47      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -85.46       0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00      -0.00      -0.00

   31  14.1  1.5  0.5    -274.68       0.00      -0.00      -0.00       0.00      -0.00      -0.00       0.00       0.00       0.00
                            0.00      46.93       0.00      -0.00       0.00       0.00      -0.00       0.00       0.01       0.00

   32  15.1  1.5  0.5      -0.00       0.00      -0.00      -0.00      -0.00      -0.00    -142.01       0.00       0.00       0.00
                           -0.00       0.00       0.00      -0.00       0.00    -142.01      -0.00      -0.00       0.00      -0.00

   33  16.1  1.5  0.5      -0.00      -0.00      -0.00       0.00       0.00       0.00      -0.00       0.00       0.00       0.00
                            0.00       0.00       0.00      -0.00     142.01      -0.00      -0.00      -0.00      -0.00      -0.00

   34  17.1  1.5  0.5      -0.00       0.00      -0.00       0.00     142.01       0.00      -0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00       0.00       0.00       0.00      -0.00      -0.00       0.00       0.00

   35   1.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00    -268.58       0.00

   36   2.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    -413.27
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00     268.58      -0.00       0.00

   37   3.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00     413.27      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   38   4.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    -118.49      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00

   39   5.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00    -345.27       0.00

   40   6.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00     212.97
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00     338.90       0.00      -0.00

   41   7.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       1.63      -0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00     329.76

   42   8.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.71       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00

   43   9.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.74       0.00

   44  10.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       1.08
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.47       0.00       0.00

   45  11.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.76       0.00

   46  12.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.76       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   47  13.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.30
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.93       0.00      -0.00

   48  14.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00      -0.80

   49  15.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   50  16.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.01       0.00

   51  17.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.01      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.00

   52   1.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   53   2.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   54   3.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   55   4.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   56   5.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   57   6.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   58   7.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   59   8.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   60   9.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   61  10.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   62  11.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   63  12.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   64  13.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   65  14.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   66  15.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   67  16.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   68  17.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00


   Nr   State  S   Sz       21         22         23         24         25         26         27         28         29         30

    1   1.1  1.5  1.5       0.00       0.00      -0.00       1.41      -0.00       0.00       0.00       0.00      -0.00       0.00
                            0.00       0.00    -293.49       0.00      -0.00       0.00       0.41       0.00       0.00      -0.81

    2   2.1  1.5  1.5    -102.62       0.00      -0.00      -0.00       0.61       0.00      -0.00       0.00      -0.66       0.00
                           -0.00     299.01      -0.00       0.00      -0.00      -0.64      -0.00      -0.66       0.00      -0.00

    3   3.1  1.5  1.5      -0.00      -0.00     184.43      -0.00       0.00      -0.00       0.94       0.00       0.00       0.26
                            0.00      -0.00       0.00    -285.58      -0.00      -0.00      -0.00      -0.00       0.00       0.00

    4   4.1  1.5  1.5       0.00      -0.00    -249.97       0.00      -0.00       0.00      -0.36      -0.00      -0.00      -0.54
                           -0.00      -0.00       0.00    -111.78       0.00       0.00      -0.00       0.00       0.00      -0.00

    5   5.1  1.5  1.5       0.00      -0.00       0.00    -306.68      -0.00       0.00      -0.00      -0.00       0.00       0.00
                            0.00       0.00     -74.03       0.00      -0.00      -0.00       0.67       0.00       0.00      -0.32

    6   6.1  1.5  1.5     249.97      -0.00      -0.00       0.00      -0.07      -0.00       0.00       0.00       0.75      -0.00
                           -0.00      74.03      -0.00       0.00       0.00      -0.72      -0.00      -0.10      -0.00      -0.00

    7   7.1  1.5  1.5      -0.00     306.68      -0.00      -0.00      -0.00      -0.08      -0.00      -0.74       0.00      -0.00
                          111.78      -0.00      -0.00      -0.00       0.73       0.00      -0.00       0.00      -0.13       0.00

    8   8.1  1.5  1.5       0.00       0.00       0.07       0.00       0.00       0.00     228.56       0.00       0.00     -20.72
                           -0.00       0.00      -0.00      -0.73      -0.00       0.00      -0.00       0.00       0.00      -0.00

    9   9.1  1.5  1.5      -0.00      -0.00       0.00       0.08      -0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.72      -0.00      -0.00       0.00    -178.81       0.00      -0.00     312.47

   10  10.1  1.5  1.5       0.36       0.00      -0.00       0.00    -228.56      -0.00       0.00      -0.00     296.91       0.00
                            0.00      -0.67       0.00       0.00       0.00     178.81      -0.00     232.06      -0.00       0.00

   11  11.1  1.5  1.5       0.00       0.00      -0.00       0.74      -0.00      -0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.10      -0.00      -0.00      -0.00    -232.06       0.00       0.00      85.46

   12  12.1  1.5  1.5       0.00      -0.00      -0.75      -0.00      -0.00      -0.00    -296.91      -0.00       0.00    -223.47
                           -0.00      -0.00       0.00       0.13      -0.00       0.00       0.00      -0.00       0.00      -0.00

   13  13.1  1.5  1.5       0.54      -0.00       0.00       0.00      20.72      -0.00      -0.00      -0.00     223.47      -0.00
                            0.00       0.32       0.00      -0.00       0.00    -312.47      -0.00     -85.46       0.00       0.00

   14  14.1  1.5  1.5       0.00      -0.74       0.00       0.00      -0.00      29.29       0.00     274.68      -0.00       0.00
                           -0.27       0.00      -0.00      -0.00    -272.22       0.00      -0.00       0.00      46.93       0.00

   15  15.1  1.5  1.5       0.00      -0.00      -0.00       0.00       0.00       0.00      -0.00       0.00      -0.00       0.00
                           -0.00      -0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00

   16  16.1  1.5  1.5       0.00       0.00      -0.00       0.00      -0.00       0.00      -0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   17  17.1  1.5  1.5      -0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00      -0.00       0.00
                            0.00       0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.00      -0.00

   18   1.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          186.94       0.00      -0.00       0.00       0.46       0.00      -0.00       0.00       0.25      -0.00

   19   2.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       2.37       0.00      -0.00       0.00       0.00       0.00       0.00

   20   3.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00     -21.77       0.00      -0.00      -0.00       0.27       0.00       0.02       0.00       0.00

   21   4.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00     174.92       0.00      -0.00      -0.00       0.40       0.00      -0.47       0.00      -0.00

   22   5.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -174.92      -0.00       0.00      -0.00      -0.17      -0.00       0.00       0.00      -0.39       0.00

   23   6.1  1.5  0.5       0.00       0.00       0.04       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00     177.04       0.00      -0.00       0.00       0.00      -0.00      -0.00

   24   7.1  1.5  0.5       0.00       0.00       0.00       0.04       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00    -177.04      -0.00      -0.00       0.00      -0.08      -0.00       0.00      -0.42

   25   8.1  1.5  0.5       0.00       0.00       0.00       0.00    4537.98       0.00       0.00       0.00       0.00       0.00
                            0.00       0.17      -0.00       0.00      -0.00     164.57       0.00     -83.45      -0.00      -0.00

   26   9.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00    4537.98       0.00       0.00       0.00       0.00
                           -0.40       0.00       0.00      -0.00    -164.57       0.00       0.00       0.00     -75.71       0.00

   27  10.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00    4537.94       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.08      -0.00      -0.00       0.00       0.00      -0.00      -0.00

   28  11.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00    4537.94       0.00       0.00
                            0.47      -0.00      -0.00       0.00      83.45      -0.00      -0.00      -0.00     154.30      -0.00

   29  12.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    4537.98       0.00
                           -0.00       0.39       0.00      -0.00       0.00      75.71       0.00    -154.30       0.00      -0.00

   30  13.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    4538.05
                            0.00      -0.00       0.00       0.42       0.00      -0.00       0.00       0.00       0.00       0.00

   31  14.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.43       0.00      -0.00      -0.00      29.98       0.00      -0.00     156.64

   32  15.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00      -0.00      -0.00      -0.00       0.00       0.00      -0.00       0.00

   33  16.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00      -0.00

   34  17.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00      -0.00       0.00

   35   1.1  1.5 -0.5      -0.00      -0.00       0.00      -1.63       0.00      -0.00      -0.00      -0.00       0.00      -0.00
                            0.00       0.00    -338.90       0.00      -0.00       0.00       0.47       0.00       0.00      -0.93

   36   2.1  1.5 -0.5     118.49      -0.00       0.00       0.00      -0.71      -0.00       0.00      -0.00       0.76      -0.00
                           -0.00     345.27      -0.00       0.00      -0.00      -0.74      -0.00      -0.76       0.00      -0.00

   37   3.1  1.5 -0.5       0.00       0.00    -212.97       0.00      -0.00       0.00      -1.08      -0.00      -0.00      -0.30
                            0.00      -0.00       0.00    -329.76      -0.00      -0.00      -0.00      -0.00       0.00       0.00

   38   4.1  1.5 -0.5       0.00       0.00     288.64      -0.00       0.00      -0.00       0.42       0.00       0.00       0.63
                            0.00      -0.00       0.00    -129.07       0.00       0.00      -0.00       0.00       0.00      -0.00

   39   5.1  1.5 -0.5      -0.00      -0.00      -0.00     354.12       0.00      -0.00       0.00       0.00      -0.00      -0.00
                            0.00      -0.00     -85.48       0.00      -0.00      -0.00       0.78       0.00       0.00      -0.37

   40   6.1  1.5 -0.5    -288.64       0.00      -0.00      -0.00       0.08       0.00      -0.00      -0.00      -0.86       0.00
                           -0.00      85.48       0.00       0.00       0.00      -0.84      -0.00      -0.11      -0.00      -0.00

   41   7.1  1.5 -0.5       0.00    -354.12       0.00      -0.00       0.00       0.09       0.00       0.85      -0.00       0.00
                          129.07      -0.00      -0.00       0.00       0.84       0.00      -0.00       0.00      -0.15       0.00

   42   8.1  1.5 -0.5      -0.00      -0.00      -0.08      -0.00       0.00      -0.00    -263.92      -0.00      -0.00      23.93
                           -0.00       0.00      -0.00      -0.84       0.00       0.00      -0.00       0.00       0.00      -0.00

   43   9.1  1.5 -0.5       0.00       0.00      -0.00      -0.09       0.00       0.00      -0.00      -0.00      -0.00      -0.00
                           -0.00       0.00       0.84      -0.00      -0.00      -0.00    -206.48       0.00      -0.00     360.81

   44  10.1  1.5 -0.5      -0.42      -0.00       0.00      -0.00     263.92       0.00       0.00       0.00    -342.85      -0.00
                            0.00      -0.78       0.00       0.00       0.00     206.48       0.00     267.96      -0.00       0.00

   45  11.1  1.5 -0.5      -0.00      -0.00       0.00      -0.85       0.00       0.00      -0.00       0.00      -0.00      -0.00
                           -0.00      -0.00       0.11      -0.00      -0.00      -0.00    -267.96      -0.00       0.00      98.68

   46  12.1  1.5 -0.5      -0.00       0.00       0.86       0.00       0.00       0.00     342.85       0.00       0.00     258.05
                           -0.00      -0.00       0.00       0.15      -0.00       0.00       0.00      -0.00      -0.00      -0.00

   47  13.1  1.5 -0.5      -0.63       0.00      -0.00      -0.00     -23.93       0.00       0.00       0.00    -258.05      -0.00
                            0.00       0.37       0.00      -0.00       0.00    -360.81      -0.00     -98.68       0.00      -0.00

   48  14.1  1.5 -0.5      -0.00       0.86      -0.00      -0.00       0.00     -33.82      -0.00    -317.17       0.00      -0.00
                           -0.31       0.00      -0.00      -0.00    -314.33       0.00      -0.00       0.00      54.19       0.00

   49  15.1  1.5 -0.5      -0.00       0.00       0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.00      -0.00
                           -0.00      -0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00

   50  16.1  1.5 -0.5      -0.00      -0.00       0.00      -0.01       0.00      -0.00       0.00      -0.00      -0.00      -0.00
                           -0.00       0.00       0.01      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   51  17.1  1.5 -0.5       0.00      -0.00      -0.01      -0.00      -0.00       0.00       0.00      -0.00       0.00      -0.00
                            0.00       0.00      -0.00      -0.01      -0.00      -0.00       0.00      -0.00       0.00      -0.00

   52   1.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   53   2.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   54   3.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   55   4.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   56   5.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   57   6.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   58   7.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   59   8.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   60   9.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   61  10.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   62  11.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   63  12.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   64  13.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   65  14.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   66  15.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   67  16.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   68  17.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00


   Nr   State  S   Sz       31         32         33         34         35         36         37         38         39         40

    1   1.1  1.5  1.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

    2   2.1  1.5  1.5       0.00      -0.00      -0.00      -0.01       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    3   3.1  1.5  1.5      -0.00       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.69       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

    4   4.1  1.5  1.5      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.27       0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

    5   5.1  1.5  1.5       0.74       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

    6   6.1  1.5  1.5      -0.00       0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    7   7.1  1.5  1.5      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    8   8.1  1.5  1.5       0.00      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          272.22       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    9   9.1  1.5  1.5     -29.29      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   10  10.1  1.5  1.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   11  11.1  1.5  1.5    -274.68      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   12  12.1  1.5  1.5       0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -46.93      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   13  13.1  1.5  1.5      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   14  14.1  1.5  1.5      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   15  15.1  1.5  1.5       0.00      -0.00       0.00     142.01       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00    -142.01      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   16  16.1  1.5  1.5      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00     142.01       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   17  17.1  1.5  1.5      -0.00    -142.01      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   18   1.1  1.5  0.5       0.00       0.00       0.00       0.00      -0.00       0.00      -0.00       0.00       0.00      -0.00
                           -0.00       0.00       0.00       0.00       0.00    -268.58       0.00       0.00       0.00    -338.90

   19   2.1  1.5  0.5       0.00       0.00       0.00       0.00      -0.00       0.00     413.27    -118.49       0.00      -0.00
                           -0.01      -0.00       0.00      -0.00     268.58       0.00       0.00      -0.00     345.27      -0.00

   20   3.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00    -413.27      -0.00      -0.00      -0.00     212.97
                           -0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.00

   21   4.1  1.5  0.5       0.00       0.00       0.00       0.00      -0.00     118.49       0.00       0.00      -0.00    -288.64
                            0.00       0.00      -0.00      -0.00      -0.00       0.00      -0.00      -0.00      -0.00       0.00

   22   5.1  1.5  0.5       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00       0.00      -0.00       0.00
                            0.00      -0.00      -0.00       0.00      -0.00    -345.27       0.00       0.00       0.00     -85.48

   23   6.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00    -212.97     288.64      -0.00      -0.00
                           -0.43      -0.00      -0.00       0.00     338.90       0.00      -0.00      -0.00      85.48      -0.00

   24   7.1  1.5  0.5       0.00       0.00       0.00       0.00      -1.63       0.00       0.00      -0.00     354.12      -0.00
                           -0.00       0.00       0.00       0.00      -0.00      -0.00     329.76     129.07      -0.00      -0.00

   25   8.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00      -0.71      -0.00       0.00       0.00       0.08
                            0.00       0.00       0.00      -0.00       0.00       0.00       0.00      -0.00       0.00      -0.00

   26   9.1  1.5  0.5       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00      -0.00      -0.00       0.00
                            0.00       0.00       0.00      -0.00      -0.00       0.74       0.00      -0.00       0.00       0.84

   27  10.1  1.5  0.5       0.00       0.00       0.00       0.00      -0.00       0.00      -1.08       0.42       0.00      -0.00
                          -29.98      -0.00      -0.00      -0.00      -0.47       0.00       0.00       0.00      -0.78       0.00

   28  11.1  1.5  0.5       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00       0.00       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00       0.76       0.00      -0.00      -0.00       0.11

   29  12.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.76      -0.00       0.00      -0.00      -0.86
                            0.00       0.00      -0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   30  13.1  1.5  0.5       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.30       0.63      -0.00       0.00
                         -156.64      -0.00       0.00      -0.00       0.93       0.00      -0.00       0.00       0.37       0.00

   31  14.1  1.5  0.5    4538.10       0.00       0.00       0.00       0.00      -0.00       0.00       0.00      -0.86       0.00
                            0.00      -0.00       0.00      -0.00       0.00       0.00      -0.80      -0.31       0.00      -0.00

   32  15.1  1.5  0.5       0.00   14003.35       0.00       0.00      -0.00       0.00      -0.00       0.00      -0.00      -0.00
                            0.00       0.00      -0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   33  16.1  1.5  0.5       0.00       0.00   14003.38       0.00      -0.00       0.00       0.00       0.00       0.00      -0.00
                           -0.00       0.00       0.00     -81.99       0.00      -0.01       0.00      -0.00       0.00       0.01

   34  17.1  1.5  0.5       0.00       0.00       0.00   14003.38      -0.00       0.01       0.00      -0.00       0.00       0.01
                            0.00      -0.00      81.99      -0.00       0.00      -0.00       0.00       0.00       0.00      -0.00

   35   1.1  1.5 -0.5       0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00      -0.00      -0.00       0.00    -111.14    -186.94      -0.00       0.00

   36   2.1  1.5 -0.5      -0.00       0.00       0.00       0.01       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.01       0.00      -0.00      -0.00      -0.00       0.00      -0.00      -0.00

   37   3.1  1.5 -0.5       0.00      -0.00       0.00       0.00       0.00       0.00       0.01       0.00       0.00       0.00
                            0.80       0.00      -0.00      -0.00     111.14       0.00      -0.00       0.00      21.77      -0.00

   38   4.1  1.5 -0.5       0.00       0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.31       0.00       0.00      -0.00     186.94      -0.00      -0.00       0.00    -174.92      -0.00

   39   5.1  1.5 -0.5      -0.86      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00      -0.00       0.00       0.00     -21.77     174.92       0.00      -0.00

   40   6.1  1.5 -0.5       0.00      -0.00      -0.00       0.01       0.00       0.00       0.00       0.00       0.00       0.04
                            0.00      -0.00      -0.01       0.00      -0.00       0.00       0.00       0.00       0.00      -0.00

   41   7.1  1.5 -0.5       0.00       0.00       0.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.01       0.00       2.37      -0.00      -0.00      -0.00     177.04

   42   8.1  1.5 -0.5      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          314.33       0.00      -0.00       0.00       0.46       0.00      -0.00      -0.00      -0.17       0.00

   43   9.1  1.5 -0.5      33.82       0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00       0.00       0.00      -0.00       0.27       0.40      -0.00      -0.00

   44  10.1  1.5 -0.5       0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00

   45  11.1  1.5 -0.5     317.17       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00       0.00       0.00       0.00       0.02      -0.47       0.00       0.00

   46  12.1  1.5 -0.5      -0.00      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -54.19      -0.00      -0.00      -0.00       0.25       0.00       0.00       0.00      -0.39      -0.00

   47  13.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00      -0.00       0.00       0.00      -0.00       0.00      -0.00

   48  14.1  1.5 -0.5      -0.00       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00      -0.00      -0.00      -0.01      -0.00       0.00       0.00      -0.43

   49  15.1  1.5 -0.5      -0.00      -0.00      -0.00    -163.98       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00    -163.98      -0.00       0.00      -0.00       0.00       0.00      -0.00      -0.00

   50  16.1  1.5 -0.5       0.00       0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00     163.98      -0.00      -0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00

   51  17.1  1.5 -0.5       0.00     163.98       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00      -0.00       0.00      -0.00      -0.00      -0.00       0.00       0.00

   52   1.1  1.5 -1.5       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00      -0.00      -0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00    -232.60       0.00       0.00       0.00    -293.49

   53   2.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00    -357.90     102.62      -0.00       0.00
                           -0.00      -0.00      -0.00      -0.00     232.60      -0.00       0.00      -0.00     299.01      -0.00

   54   3.1  1.5 -1.5       0.00       0.00       0.00       0.00      -0.00     357.90      -0.00       0.00       0.00    -184.43
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00      -0.00       0.00

   55   4.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00    -102.62      -0.00       0.00       0.00     249.97
                           -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.00      -0.00       0.00

   56   5.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00    -299.01       0.00       0.00      -0.00     -74.03

   57   6.1  1.5 -1.5       0.00       0.00       0.00       0.00      -0.00      -0.00     184.43    -249.97       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00     293.49       0.00      -0.00      -0.00      74.03       0.00

   58   7.1  1.5 -1.5       0.00       0.00       0.00       0.00       1.41      -0.00      -0.00       0.00    -306.68       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00     285.58     111.78      -0.00      -0.00

   59   8.1  1.5 -1.5       0.00       0.00       0.00       0.00      -0.00       0.61       0.00      -0.00      -0.00      -0.07
                           -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00      -0.00       0.00      -0.00

   60   9.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00       0.64       0.00      -0.00       0.00       0.72

   61  10.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00      -0.00       0.94      -0.36      -0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.41       0.00       0.00       0.00      -0.67       0.00

   62  11.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00       0.66       0.00      -0.00      -0.00       0.10

   63  12.1  1.5 -1.5       0.00       0.00       0.00       0.00      -0.00      -0.66       0.00      -0.00       0.00       0.75
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   64  13.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.26      -0.54       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00       0.81       0.00      -0.00       0.00       0.32       0.00

   65  14.1  1.5 -1.5       0.00       0.00       0.00       0.00      -0.00       0.00      -0.00      -0.00       0.74      -0.00
                           -0.00      -0.00      -0.00      -0.00       0.00       0.00      -0.69      -0.27       0.00      -0.00

   66  15.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00      -0.00       0.00      -0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   67  16.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00       0.00
                           -0.00      -0.00      -0.00      -0.00       0.00      -0.01       0.00      -0.00       0.00       0.00

   68  17.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00      -0.01      -0.00       0.00      -0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.00       0.00       0.00      -0.00


   Nr   State  S   Sz       41         42         43         44         45         46         47         48         49         50

    1   1.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    2   2.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    3   3.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    4   4.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    5   5.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    6   6.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    7   7.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    8   8.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    9   9.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   10  10.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   11  11.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   12  12.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   13  13.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   14  14.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   15  15.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   16  16.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   17  17.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   18   1.1  1.5  0.5       1.63      -0.00       0.00       0.00       0.00      -0.00       0.00      -0.00       0.00       0.00
                            0.00      -0.00       0.00       0.47       0.00       0.00      -0.93      -0.00       0.00      -0.00

   19   2.1  1.5  0.5      -0.00       0.71       0.00      -0.00       0.00      -0.76       0.00       0.00      -0.00      -0.00
                            0.00      -0.00      -0.74      -0.00      -0.76       0.00      -0.00      -0.00       0.00       0.01

   20   3.1  1.5  0.5      -0.00       0.00      -0.00       1.08       0.00       0.00       0.30      -0.00       0.00      -0.00
                         -329.76      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.80       0.00      -0.00

   21   4.1  1.5  0.5       0.00      -0.00       0.00      -0.42      -0.00      -0.00      -0.63      -0.00      -0.00      -0.00
                         -129.07       0.00       0.00      -0.00       0.00       0.00      -0.00       0.31       0.00       0.00

   22   5.1  1.5  0.5    -354.12      -0.00       0.00      -0.00      -0.00       0.00       0.00       0.86       0.00      -0.00
                            0.00      -0.00      -0.00       0.78       0.00       0.00      -0.37      -0.00       0.00      -0.00

   23   6.1  1.5  0.5       0.00      -0.08      -0.00       0.00       0.00       0.86      -0.00      -0.00       0.00       0.00
                            0.00       0.00      -0.84      -0.00      -0.11      -0.00      -0.00       0.00      -0.00      -0.01

   24   7.1  1.5  0.5      -0.00      -0.00      -0.09      -0.00      -0.85       0.00      -0.00      -0.00      -0.00      -0.01
                           -0.00       0.84       0.00      -0.00       0.00      -0.15       0.00       0.00       0.00       0.00

   25   8.1  1.5  0.5       0.00       0.00       0.00     263.92       0.00       0.00     -23.93       0.00      -0.00       0.00
                           -0.84      -0.00       0.00      -0.00       0.00       0.00      -0.00     314.33       0.00      -0.00

   26   9.1  1.5  0.5       0.09      -0.00       0.00       0.00       0.00       0.00       0.00     -33.82      -0.00      -0.00
                           -0.00      -0.00       0.00    -206.48       0.00      -0.00     360.81      -0.00       0.00      -0.00

   27  10.1  1.5  0.5       0.00    -263.92      -0.00       0.00      -0.00     342.85       0.00      -0.00       0.00       0.00
                            0.00       0.00     206.48      -0.00     267.96      -0.00       0.00       0.00       0.00      -0.00

   28  11.1  1.5  0.5       0.85      -0.00      -0.00       0.00       0.00       0.00       0.00    -317.17      -0.00      -0.00
                           -0.00      -0.00      -0.00    -267.96       0.00       0.00      98.68      -0.00       0.00      -0.00

   29  12.1  1.5  0.5      -0.00      -0.00      -0.00    -342.85      -0.00       0.00    -258.05       0.00       0.00      -0.00
                            0.15      -0.00       0.00       0.00      -0.00       0.00      -0.00     -54.19      -0.00      -0.00

   30  13.1  1.5  0.5       0.00      23.93      -0.00      -0.00      -0.00     258.05      -0.00      -0.00      -0.00      -0.00
                           -0.00       0.00    -360.81      -0.00     -98.68       0.00       0.00      -0.00      -0.00      -0.00

   31  14.1  1.5  0.5       0.00      -0.00      33.82       0.00     317.17      -0.00       0.00      -0.00      -0.00       0.00
                           -0.00    -314.33       0.00      -0.00       0.00      54.19       0.00       0.00       0.00       0.00

   32  15.1  1.5  0.5       0.00       0.00       0.00      -0.00       0.00      -0.00       0.00       0.00      -0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00      -0.00      -0.00    -163.98

   33  16.1  1.5  0.5       0.01      -0.00       0.00      -0.00       0.00       0.00       0.00      -0.00      -0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00     163.98       0.00

   34  17.1  1.5  0.5       0.00       0.00      -0.00      -0.00       0.00      -0.00       0.00      -0.00    -163.98      -0.00
                           -0.01      -0.00      -0.00       0.00      -0.00       0.00      -0.00       0.00       0.00       0.00

   35   1.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.46      -0.00       0.00      -0.00      -0.25       0.00       0.00      -0.00      -0.00

   36   2.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -2.37      -0.00       0.00      -0.00      -0.00      -0.00      -0.00       0.01       0.00      -0.00

   37   3.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.27      -0.00      -0.02      -0.00      -0.00       0.00      -0.00      -0.00

   38   4.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.40      -0.00       0.47      -0.00       0.00      -0.00      -0.00       0.00

   39   5.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.17       0.00      -0.00      -0.00       0.39      -0.00      -0.00       0.00       0.00

   40   6.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -177.04      -0.00       0.00      -0.00      -0.00       0.00       0.00       0.43       0.00       0.00

   41   7.1  1.5 -0.5       0.04       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00       0.08       0.00      -0.00       0.42       0.00      -0.00      -0.00

   42   8.1  1.5 -0.5       0.00    4537.98       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00    -164.57      -0.00      83.45       0.00       0.00      -0.00      -0.00      -0.00

   43   9.1  1.5 -0.5       0.00       0.00    4537.98       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00     164.57      -0.00      -0.00      -0.00      75.71      -0.00      -0.00      -0.00      -0.00

   44  10.1  1.5 -0.5       0.00       0.00       0.00    4537.94       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.08       0.00       0.00      -0.00      -0.00       0.00       0.00      29.98       0.00       0.00

   45  11.1  1.5 -0.5       0.00       0.00       0.00       0.00    4537.94       0.00       0.00       0.00       0.00       0.00
                           -0.00     -83.45       0.00       0.00       0.00    -154.30       0.00       0.00       0.00       0.00

   46  12.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00    4537.98       0.00       0.00       0.00       0.00
                            0.00      -0.00     -75.71      -0.00     154.30      -0.00       0.00      -0.00      -0.00       0.00

   47  13.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00    4538.05       0.00       0.00       0.00
                           -0.42      -0.00       0.00      -0.00      -0.00      -0.00      -0.00     156.64       0.00      -0.00

   48  14.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00    4538.10       0.00       0.00
                           -0.00       0.00       0.00     -29.98      -0.00       0.00    -156.64      -0.00       0.00      -0.00

   49  15.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   14003.35       0.00
                            0.00       0.00       0.00      -0.00      -0.00       0.00      -0.00      -0.00      -0.00       0.00

   50  16.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   14003.38
                            0.00       0.00       0.00      -0.00      -0.00      -0.00       0.00       0.00      -0.00      -0.00

   51  17.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00      -0.00       0.00     -81.99

   52   1.1  1.5 -1.5      -1.41       0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.00      -0.00      -0.00
                            0.00      -0.00       0.00       0.41       0.00       0.00      -0.81      -0.00       0.00      -0.00

   53   2.1  1.5 -1.5       0.00      -0.61      -0.00       0.00      -0.00       0.66      -0.00      -0.00       0.00       0.00
                            0.00      -0.00      -0.64      -0.00      -0.66       0.00      -0.00      -0.00       0.00       0.01

   54   3.1  1.5 -1.5       0.00      -0.00       0.00      -0.94      -0.00      -0.00      -0.26       0.00      -0.00       0.00
                         -285.58      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.69       0.00      -0.00

   55   4.1  1.5 -1.5      -0.00       0.00      -0.00       0.36       0.00       0.00       0.54       0.00       0.00       0.00
                         -111.78       0.00       0.00      -0.00       0.00       0.00      -0.00       0.27       0.00       0.00

   56   5.1  1.5 -1.5     306.68       0.00      -0.00       0.00       0.00      -0.00      -0.00      -0.74      -0.00       0.00
                            0.00      -0.00      -0.00       0.67       0.00       0.00      -0.32      -0.00       0.00      -0.00

   57   6.1  1.5 -1.5      -0.00       0.07       0.00      -0.00      -0.00      -0.75       0.00       0.00      -0.00      -0.00
                            0.00       0.00      -0.72      -0.00      -0.10      -0.00      -0.00       0.00      -0.00      -0.00

   58   7.1  1.5 -1.5      -0.00       0.00       0.08       0.00       0.74      -0.00       0.00       0.00       0.00       0.00
                            0.00       0.73       0.00      -0.00       0.00      -0.13       0.00       0.00       0.00       0.00

   59   8.1  1.5 -1.5      -0.00       0.00      -0.00    -228.56      -0.00      -0.00      20.72      -0.00       0.00      -0.00
                           -0.73       0.00       0.00      -0.00       0.00       0.00      -0.00     272.22       0.00      -0.00

   60   9.1  1.5 -1.5      -0.08       0.00       0.00      -0.00      -0.00      -0.00      -0.00      29.29       0.00       0.00
                           -0.00      -0.00      -0.00    -178.81       0.00      -0.00     312.47      -0.00       0.00      -0.00

   61  10.1  1.5 -1.5      -0.00     228.56       0.00       0.00       0.00    -296.91      -0.00       0.00      -0.00      -0.00
                            0.00       0.00     178.81       0.00     232.06      -0.00       0.00       0.00       0.00      -0.00

   62  11.1  1.5 -1.5      -0.74       0.00       0.00      -0.00       0.00      -0.00      -0.00     274.68       0.00       0.00
                           -0.00      -0.00      -0.00    -232.06      -0.00       0.00      85.46      -0.00       0.00      -0.00

   63  12.1  1.5 -1.5       0.00       0.00       0.00     296.91       0.00       0.00     223.47      -0.00      -0.00       0.00
                            0.13      -0.00       0.00       0.00      -0.00      -0.00      -0.00     -46.93      -0.00      -0.00

   64  13.1  1.5 -1.5      -0.00     -20.72       0.00       0.00       0.00    -223.47      -0.00       0.00       0.00       0.00
                           -0.00       0.00    -312.47      -0.00     -85.46       0.00      -0.00      -0.00      -0.00      -0.00

   65  14.1  1.5 -1.5      -0.00       0.00     -29.29      -0.00    -274.68       0.00      -0.00      -0.00       0.00      -0.00
                           -0.00    -272.22       0.00      -0.00       0.00      46.93       0.00      -0.00       0.00       0.00

   66  15.1  1.5 -1.5      -0.00      -0.00      -0.00       0.00      -0.00       0.00      -0.00      -0.00      -0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00      -0.00       0.00    -142.01

   67  16.1  1.5 -1.5      -0.00       0.00      -0.00       0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00     142.01      -0.00

   68  17.1  1.5 -1.5      -0.00      -0.00       0.00       0.00      -0.00       0.00      -0.00       0.00     142.01       0.00
                           -0.00      -0.00      -0.00       0.00      -0.00       0.00      -0.00       0.00       0.00       0.00


   Nr   State  S   Sz       51         52         53         54         55         56         57         58         59         60

    1   1.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    2   2.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    3   3.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    4   4.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    5   5.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    6   6.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    7   7.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    8   8.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    9   9.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   10  10.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   11  11.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   12  12.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   13  13.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   14  14.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   15  15.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   16  16.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   17  17.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   18   1.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   19   2.1  1.5  0.5      -0.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   20   3.1  1.5  0.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   21   4.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   22   5.1  1.5  0.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   23   6.1  1.5  0.5      -0.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   24   7.1  1.5  0.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   25   8.1  1.5  0.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   26   9.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   27  10.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   28  11.1  1.5  0.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   29  12.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   30  13.1  1.5  0.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   31  14.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   32  15.1  1.5  0.5     163.98       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   33  16.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   34  17.1  1.5  0.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   35   1.1  1.5 -0.5       0.00      -0.00       0.00      -0.00       0.00       0.00      -0.00       1.41      -0.00       0.00
                           -0.00       0.00    -232.60       0.00       0.00       0.00    -293.49       0.00      -0.00       0.00

   36   2.1  1.5 -0.5       0.00      -0.00       0.00     357.90    -102.62       0.00      -0.00      -0.00       0.61       0.00
                            0.00     232.60       0.00       0.00      -0.00     299.01      -0.00       0.00      -0.00      -0.64

   37   3.1  1.5 -0.5       0.00       0.00    -357.90      -0.00      -0.00      -0.00     184.43      -0.00       0.00      -0.00
                            0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.00    -285.58      -0.00      -0.00

   38   4.1  1.5 -0.5       0.00      -0.00     102.62       0.00       0.00      -0.00    -249.97       0.00      -0.00       0.00
                            0.00      -0.00       0.00      -0.00      -0.00      -0.00       0.00    -111.78       0.00       0.00

   39   5.1  1.5 -0.5       0.00      -0.00      -0.00       0.00       0.00      -0.00       0.00    -306.68      -0.00       0.00
                           -0.00      -0.00    -299.01       0.00       0.00       0.00     -74.03       0.00      -0.00      -0.00

   40   6.1  1.5 -0.5       0.00       0.00       0.00    -184.43     249.97      -0.00      -0.00       0.00      -0.07      -0.00
                           -0.00     293.49       0.00      -0.00      -0.00      74.03      -0.00       0.00       0.00      -0.72

   41   7.1  1.5 -0.5       0.00      -1.41       0.00       0.00      -0.00     306.68      -0.00      -0.00      -0.00      -0.08
                           -0.00      -0.00      -0.00     285.58     111.78      -0.00      -0.00      -0.00       0.73       0.00

   42   8.1  1.5 -0.5       0.00       0.00      -0.61      -0.00       0.00       0.00       0.07       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00      -0.00       0.00      -0.00      -0.73      -0.00       0.00

   43   9.1  1.5 -0.5       0.00      -0.00      -0.00       0.00      -0.00      -0.00       0.00       0.08      -0.00       0.00
                            0.00      -0.00       0.64       0.00      -0.00       0.00       0.72      -0.00      -0.00       0.00

   44  10.1  1.5 -0.5       0.00      -0.00       0.00      -0.94       0.36       0.00      -0.00       0.00    -228.56      -0.00
                            0.00      -0.41       0.00       0.00       0.00      -0.67       0.00       0.00       0.00     178.81

   45  11.1  1.5 -0.5       0.00      -0.00      -0.00      -0.00       0.00       0.00      -0.00       0.74      -0.00      -0.00
                            0.00      -0.00       0.66       0.00      -0.00      -0.00       0.10      -0.00      -0.00      -0.00

   46  12.1  1.5 -0.5       0.00       0.00       0.66      -0.00       0.00      -0.00      -0.75      -0.00      -0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.13      -0.00       0.00

   47  13.1  1.5 -0.5       0.00      -0.00      -0.00      -0.26       0.54      -0.00       0.00       0.00      20.72      -0.00
                            0.00       0.81       0.00      -0.00       0.00       0.32       0.00      -0.00       0.00    -312.47

   48  14.1  1.5 -0.5       0.00       0.00      -0.00       0.00       0.00      -0.74       0.00       0.00      -0.00      29.29
                            0.00       0.00       0.00      -0.69      -0.27       0.00      -0.00      -0.00    -272.22       0.00

   49  15.1  1.5 -0.5       0.00      -0.00       0.00      -0.00       0.00      -0.00      -0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00      -0.00      -0.00

   50  16.1  1.5 -0.5       0.00      -0.00       0.00       0.00       0.00       0.00      -0.00       0.00      -0.00       0.00
                           81.99       0.00      -0.01       0.00      -0.00       0.00       0.00      -0.00       0.00       0.00

   51  17.1  1.5 -0.5   14003.38      -0.00       0.01       0.00      -0.00       0.00       0.00       0.00       0.00      -0.00
                            0.00       0.00      -0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00

   52   1.1  1.5 -1.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00    -333.43    -560.82      -0.00       0.00      -0.00      -1.39      -0.00

   53   2.1  1.5 -1.5       0.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00       0.00      -0.00      -0.00      -7.12      -0.00       0.00

   54   3.1  1.5 -1.5       0.00       0.00       0.00       0.01       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00     333.43       0.00      -0.00       0.00      65.32      -0.00       0.00       0.00      -0.82

   55   4.1  1.5 -1.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00     560.82      -0.00      -0.00       0.00    -524.75      -0.00       0.00       0.00      -1.21

   56   5.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00     -65.32     524.75       0.00      -0.00       0.00       0.52       0.00

   57   6.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.04       0.00       0.00       0.00
                            0.00      -0.00       0.00       0.00       0.00       0.00      -0.00    -531.12      -0.00       0.00

   58   7.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.04       0.00       0.00
                            0.00       0.00       7.12      -0.00      -0.00      -0.00     531.12       0.00       0.00      -0.00

   59   8.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    4537.98       0.00
                            0.00       1.39       0.00      -0.00      -0.00      -0.52       0.00      -0.00       0.00    -493.72

   60   9.1  1.5 -1.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    4537.98
                            0.00       0.00      -0.00       0.82       1.21      -0.00      -0.00       0.00     493.72      -0.00

   61  10.1  1.5 -1.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00       0.00       0.00       0.00      -0.24       0.00       0.00

   62  11.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.07      -1.41       0.00       0.00      -0.00    -250.34       0.00

   63  12.1  1.5 -1.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.74       0.00       0.00       0.00      -1.17      -0.00       0.00      -0.00    -227.12

   64  13.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00       0.00      -0.00       0.00      -0.00      -1.26      -0.00       0.00

   65  14.1  1.5 -1.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.02      -0.00       0.00       0.00      -1.28      -0.00       0.00       0.00

   66  15.1  1.5 -1.5    -142.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00       0.00       0.00      -0.00      -0.00       0.00       0.00       0.00

   67  16.1  1.5 -1.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.01      -0.00      -0.00      -0.00       0.00       0.00       0.00

   68  17.1  1.5 -1.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.01      -0.00      -0.00      -0.00       0.01       0.00       0.00      -0.00      -0.00


   Nr   State  S   Sz       61         62         63         64         65         66         67         68

    1   1.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    2   2.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    3   3.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    4   4.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    5   5.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    6   6.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    7   7.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    8   8.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    9   9.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   10  10.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   11  11.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   12  12.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   13  13.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   14  14.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   15  15.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   16  16.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   17  17.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   18   1.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   19   2.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   20   3.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   21   4.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   22   5.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   23   6.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   24   7.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   25   8.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   26   9.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   27  10.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   28  11.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   29  12.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   30  13.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   31  14.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   32  15.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   33  16.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   34  17.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   35   1.1  1.5 -0.5       0.00       0.00      -0.00       0.00      -0.00       0.00       0.00       0.00
                            0.41       0.00       0.00      -0.81      -0.00       0.00      -0.00      -0.00

   36   2.1  1.5 -0.5      -0.00       0.00      -0.66       0.00       0.00      -0.00      -0.00      -0.01
                           -0.00      -0.66       0.00      -0.00      -0.00       0.00       0.01       0.00

   37   3.1  1.5 -0.5       0.94       0.00       0.00       0.26      -0.00       0.00      -0.00      -0.00
                           -0.00      -0.00       0.00       0.00       0.69       0.00      -0.00      -0.00

   38   4.1  1.5 -0.5      -0.36      -0.00      -0.00      -0.54      -0.00      -0.00      -0.00       0.00
                           -0.00       0.00       0.00      -0.00       0.27       0.00       0.00      -0.00

   39   5.1  1.5 -0.5      -0.00      -0.00       0.00       0.00       0.74       0.00      -0.00      -0.00
                            0.67       0.00       0.00      -0.32      -0.00       0.00      -0.00      -0.00

   40   6.1  1.5 -0.5       0.00       0.00       0.75      -0.00      -0.00       0.00       0.00      -0.00
                           -0.00      -0.10      -0.00      -0.00       0.00      -0.00      -0.00       0.00

   41   7.1  1.5 -0.5      -0.00      -0.74       0.00      -0.00      -0.00      -0.00      -0.00      -0.00
                           -0.00       0.00      -0.13       0.00       0.00       0.00       0.00       0.00

   42   8.1  1.5 -0.5     228.56       0.00       0.00     -20.72       0.00      -0.00       0.00      -0.00
                           -0.00       0.00       0.00      -0.00     272.22       0.00      -0.00       0.00

   43   9.1  1.5 -0.5       0.00       0.00       0.00       0.00     -29.29      -0.00      -0.00       0.00
                         -178.81       0.00      -0.00     312.47      -0.00       0.00      -0.00       0.00

   44  10.1  1.5 -0.5       0.00      -0.00     296.91       0.00      -0.00       0.00       0.00       0.00
                           -0.00     232.06      -0.00       0.00       0.00       0.00      -0.00      -0.00

   45  11.1  1.5 -0.5       0.00       0.00       0.00       0.00    -274.68      -0.00      -0.00      -0.00
                         -232.06       0.00       0.00      85.46      -0.00       0.00      -0.00       0.00

   46  12.1  1.5 -0.5    -296.91      -0.00       0.00    -223.47       0.00       0.00      -0.00       0.00
                            0.00      -0.00       0.00      -0.00     -46.93      -0.00      -0.00      -0.00

   47  13.1  1.5 -0.5      -0.00      -0.00     223.47      -0.00      -0.00      -0.00      -0.00      -0.00
                           -0.00     -85.46       0.00       0.00      -0.00      -0.00      -0.00       0.00

   48  14.1  1.5 -0.5       0.00     274.68      -0.00       0.00      -0.00      -0.00       0.00       0.00
                           -0.00       0.00      46.93       0.00       0.00       0.00       0.00      -0.00

   49  15.1  1.5 -0.5      -0.00       0.00      -0.00       0.00       0.00      -0.00       0.00     142.01
                           -0.00      -0.00       0.00       0.00      -0.00      -0.00    -142.01      -0.00

   50  16.1  1.5 -0.5      -0.00       0.00       0.00       0.00      -0.00      -0.00       0.00       0.00
                            0.00       0.00       0.00       0.00      -0.00     142.01       0.00      -0.00

   51  17.1  1.5 -0.5      -0.00       0.00      -0.00       0.00      -0.00    -142.01      -0.00      -0.00
                            0.00      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00

   52   1.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.74       0.00       0.00      -0.00      -0.00      -0.01

   53   2.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00       0.02       0.00      -0.00       0.00

   54   3.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.07      -0.00      -0.00       0.00      -0.00      -0.01       0.00

   55   4.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       1.41      -0.00       0.00      -0.00      -0.00       0.00       0.00

   56   5.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       1.17      -0.00      -0.00       0.00       0.00      -0.01

   57   6.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00       1.28       0.00       0.00      -0.00

   58   7.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.24       0.00      -0.00       1.26       0.00      -0.00      -0.00      -0.00

   59   8.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00     250.34       0.00       0.00      -0.00      -0.00      -0.00       0.00

   60   9.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00     227.12      -0.00      -0.00      -0.00      -0.00       0.00

   61  10.1  1.5 -1.5    4537.94       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00      89.95       0.00       0.00       0.00

   62  11.1  1.5 -1.5       0.00    4537.94       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00    -462.90       0.00       0.00       0.00       0.00       0.00

   63  12.1  1.5 -1.5       0.00       0.00    4537.98       0.00       0.00       0.00       0.00       0.00
                           -0.00     462.90      -0.00       0.00      -0.00      -0.00       0.00      -0.00

   64  13.1  1.5 -1.5       0.00       0.00       0.00    4538.05       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00     469.92       0.00      -0.00       0.00

   65  14.1  1.5 -1.5       0.00       0.00       0.00       0.00    4538.10       0.00       0.00       0.00
                          -89.95      -0.00       0.00    -469.92      -0.00       0.00      -0.00       0.00

   66  15.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00   14003.35       0.00       0.00
                           -0.00      -0.00       0.00      -0.00      -0.00      -0.00       0.00      -0.00

   67  16.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00   14003.38       0.00
                           -0.00      -0.00      -0.00       0.00       0.00      -0.00      -0.00     245.97

   68  17.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00   14003.38
                           -0.00      -0.00       0.00      -0.00      -0.00       0.00    -245.97       0.00


 No symmetry adaption


 Spin-orbit eigenstates   (energies)
 ======================

     Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
              (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1 -1392.14863191    -0.00363030     -796.76      0.00000000        0.00      0.0000
     2 -1392.14863191    -0.00363030     -796.76      0.00000000        0.00      0.0000
     3 -1392.14863190    -0.00363029     -796.76      0.00000001        0.00      0.0000
     4 -1392.14863190    -0.00363029     -796.76      0.00000001        0.00      0.0000
     5 -1392.14863188    -0.00363026     -796.75      0.00000004        0.01      0.0000
     6 -1392.14863188    -0.00363026     -796.75      0.00000004        0.01      0.0000
     7 -1392.14863183    -0.00363021     -796.74      0.00000009        0.02      0.0000
     8 -1392.14863183    -0.00363021     -796.74      0.00000009        0.02      0.0000
     9 -1392.14863180    -0.00363019     -796.73      0.00000011        0.02      0.0000
    10 -1392.14863180    -0.00363019     -796.73      0.00000011        0.02      0.0000
    11 -1392.14500160     0.00000001        0.00      0.00363031      796.76      0.0988
    12 -1392.14500160     0.00000001        0.00      0.00363031      796.76      0.0988
    13 -1392.14500157     0.00000004        0.01      0.00363034      796.77      0.0988
    14 -1392.14500157     0.00000004        0.01      0.00363034      796.77      0.0988
    15 -1392.14500157     0.00000004        0.01      0.00363034      796.77      0.0988
    16 -1392.14500157     0.00000004        0.01      0.00363034      796.77      0.0988
    17 -1392.14500147     0.00000014        0.03      0.00363044      796.79      0.0988
    18 -1392.14500147     0.00000014        0.03      0.00363044      796.79      0.0988
    19 -1392.14217806     0.00282356      619.70      0.00645386     1416.46      0.1756
    20 -1392.14217806     0.00282356      619.70      0.00645386     1416.46      0.1756
    21 -1392.14217796     0.00282365      619.72      0.00645395     1416.48      0.1756
    22 -1392.14217796     0.00282365      619.72      0.00645395     1416.48      0.1756
    23 -1392.14217793     0.00282368      619.73      0.00645398     1416.48      0.1756
    24 -1392.14217793     0.00282368      619.73      0.00645398     1416.48      0.1756
    25 -1392.14016117     0.00484044     1062.35      0.00847074     1859.11      0.2305
    26 -1392.14016117     0.00484044     1062.35      0.00847074     1859.11      0.2305
    27 -1392.14016113     0.00484048     1062.36      0.00847078     1859.12      0.2305
    28 -1392.14016113     0.00484048     1062.36      0.00847078     1859.12      0.2305
    29 -1392.12759516     0.01740645     3820.27      0.02103675     4617.03      0.5724
    30 -1392.12759516     0.01740645     3820.27      0.02103675     4617.03      0.5724
    31 -1392.12759508     0.01740653     3820.29      0.02103683     4617.05      0.5724
    32 -1392.12759508     0.01740653     3820.29      0.02103683     4617.05      0.5724
    33 -1392.12759505     0.01740656     3820.30      0.02103686     4617.06      0.5724
    34 -1392.12759505     0.01740656     3820.30      0.02103686     4617.06      0.5724
    35 -1392.12759487     0.01740675     3820.34      0.02103705     4617.10      0.5724
    36 -1392.12759487     0.01740675     3820.34      0.02103705     4617.10      0.5724
    37 -1392.12759477     0.01740684     3820.36      0.02103714     4617.12      0.5724
    38 -1392.12759477     0.01740684     3820.36      0.02103714     4617.12      0.5724
    39 -1392.12432508     0.02067654     4537.98      0.02430684     5334.73      0.6614
    40 -1392.12432508     0.02067654     4537.98      0.02430684     5334.73      0.6614
    41 -1392.12432504     0.02067658     4537.98      0.02430688     5334.74      0.6614
    42 -1392.12432504     0.02067658     4537.98      0.02430688     5334.74      0.6614
    43 -1392.12432493     0.02067668     4538.01      0.02430698     5334.77      0.6614
    44 -1392.12432493     0.02067668     4538.01      0.02430698     5334.77      0.6614
    45 -1392.12432490     0.02067671     4538.01      0.02430701     5334.77      0.6614
    46 -1392.12432490     0.02067671     4538.01      0.02430701     5334.77      0.6614
    47 -1392.12178176     0.02321985     5096.17      0.02685015     5892.93      0.7306
    48 -1392.12178176     0.02321985     5096.17      0.02685015     5892.93      0.7306
    49 -1392.12178160     0.02322001     5096.20      0.02685032     5892.96      0.7306
    50 -1392.12178160     0.02322001     5096.20      0.02685032     5892.96      0.7306
    51 -1392.12178158     0.02322003     5096.21      0.02685033     5892.97      0.7306
    52 -1392.12178158     0.02322003     5096.21      0.02685033     5892.97      0.7306
    53 -1392.11996500     0.02503661     5494.90      0.02866691     6291.66      0.7801
    54 -1392.11996500     0.02503661     5494.90      0.02866691     6291.66      0.7801
    55 -1392.11996495     0.02503667     5494.91      0.02866697     6291.67      0.7801
    56 -1392.11996495     0.02503667     5494.91      0.02866697     6291.67      0.7801
    57 -1392.08231836     0.06268325    13757.38      0.06631355    14554.14      1.8045
    58 -1392.08231836     0.06268325    13757.38      0.06631355    14554.14      1.8045
    59 -1392.08231832     0.06268329    13757.39      0.06631360    14554.15      1.8045
    60 -1392.08231832     0.06268329    13757.39      0.06631360    14554.15      1.8045
    61 -1392.08231823     0.06268338    13757.41      0.06631368    14554.17      1.8045
    62 -1392.08231823     0.06268338    13757.41      0.06631368    14554.17      1.8045
    63 -1392.08045043     0.06455118    14167.35      0.06818148    14964.11      1.8553
    64 -1392.08045043     0.06455118    14167.35      0.06818148    14964.11      1.8553
    65 -1392.08045038     0.06455124    14167.36      0.06818154    14964.12      1.8553
    66 -1392.08045038     0.06455124    14167.36      0.06818154    14964.12      1.8553
    67 -1392.07932967     0.06567195    14413.33      0.06930225    15210.09      1.8858
    68 -1392.07932967     0.06567195    14413.33      0.06930225    15210.09      1.8858


 Eigenvectors of spin-orbit matrix
 =================================

  Basis states          Eigenvectors (columnwise)

   Nr   State  S   Sz        1             2             3             4             5             6             7             8

    1    1.1  1.5  1.5  -0.092190878  -0.158077042  -0.007997156   0.000098452   0.245821723   0.000275856  -0.000043286  -0.001216168
                        -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000

    2    2.1  1.5  1.5   0.139634084  -0.081434904  -0.005537837  -0.449834967  -0.000030632   0.027296736   0.013926845  -0.000495685
                         0.045345014  -0.026445312  -0.000929541  -0.075505985   0.000007776  -0.006929595  -0.012106573   0.000430898

    3    3.1  1.5  1.5  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000
                         0.101651152   0.174298302  -0.075150939   0.000925170   0.436839735   0.000490212  -0.000577805  -0.016234103

    4    4.1  1.5  1.5   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000
                        -0.021760260  -0.037311691   0.110008126  -0.001354290  -0.154037798  -0.000172858   0.000392929   0.011039798

    5    5.1  1.5  1.5  -0.089026765  -0.152651629   0.088506124  -0.001089583   0.375189895   0.000421030  -0.000208540  -0.005859180
                         0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000

    6    6.1  1.5  1.5   0.124906650  -0.072845833   0.000940981   0.076435320  -0.000021268   0.018952591   0.431696140  -0.015364959
                         0.040562402  -0.023656082   0.000157946   0.012829870   0.000005399  -0.004811336  -0.375272409   0.013356725

    7    7.1  1.5  1.5   0.036008682  -0.021000342   0.000071682   0.005822712  -0.000002840   0.002530934   0.380919621  -0.013557721
                        -0.110884061   0.064667828  -0.000427055  -0.034689427  -0.000011188   0.009969736   0.438192434  -0.015596176

    8    8.1  1.5  1.5  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000
                         0.000031633   0.000054240  -0.000003116   0.000000038   0.000122602   0.000000138  -0.000000121  -0.000003412

    9    9.1  1.5  1.5   0.000042363   0.000072639  -0.000000805   0.000000010  -0.000119125  -0.000000134   0.000000027   0.000000770
                        -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000

   10   10.1  1.5  1.5  -0.000046577   0.000027164   0.000002342   0.000190277   0.000000011  -0.000009567   0.000030492  -0.000001085
                        -0.000015125   0.000008821   0.000000393   0.000031938  -0.000000003   0.000002429  -0.000026506   0.000000943

   11   11.1  1.5  1.5   0.000032695   0.000056061  -0.000037090   0.000000457  -0.000144100  -0.000000162   0.000000084   0.000002368
                        -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000

   12   12.1  1.5  1.5   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000
                        -0.000029750  -0.000051012   0.000055510  -0.000000683  -0.000149169  -0.000000167   0.000000265   0.000007444

   13   13.1  1.5  1.5   0.000062813  -0.000036633  -0.000000080  -0.000006503  -0.000000011   0.000010030   0.000177385  -0.000006313
                         0.000020398  -0.000011896  -0.000000013  -0.000001092   0.000000003  -0.000002546  -0.000154200   0.000005488

   14   14.1  1.5  1.5  -0.000015041   0.000008772  -0.000000030  -0.000002435   0.000000001  -0.000001053  -0.000158739   0.000005650
                         0.000046318  -0.000027012   0.000000179   0.000014504   0.000000005  -0.000004150  -0.000182606   0.000006499

   15   15.1  1.5  1.5  -0.000000057   0.000000033   0.000000002   0.000000186   0.000000000  -0.000000015  -0.000000010   0.000000000
                        -0.000000019   0.000000011   0.000000000   0.000000031  -0.000000000   0.000000004   0.000000008  -0.000000000

   16   16.1  1.5  1.5  -0.000000224  -0.000000384   0.000000209  -0.000000003  -0.000000747  -0.000000001   0.000000001   0.000000033
                         0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000

   17   17.1  1.5  1.5  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000
                        -0.000000265  -0.000000455   0.000000144  -0.000000002   0.000000720   0.000000001  -0.000000000  -0.000000005

   18    1.1  1.5  0.5  -0.096869877   0.056494725   0.000413434   0.033582948   0.000035037  -0.031221871   0.214927455  -0.007649715
                         0.298298211  -0.173968172  -0.002463075  -0.200073998   0.000138014  -0.122987736   0.247242671  -0.008799879

   19    2.1  1.5  0.5  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000
                         0.326753986   0.560275645  -0.233861117   0.002879022   0.015130103   0.000016979  -0.000659656  -0.018533776

   20    3.1  1.5  0.5   0.172622875  -0.100674039   0.007274212   0.590879630   0.000082806  -0.073790493  -0.102257480   0.003639555
                         0.056057851  -0.032693062   0.001220996   0.099180703  -0.000021021   0.018732577   0.088892180  -0.003163857

   21    4.1  1.5  0.5  -0.047839212   0.027899933  -0.002408009  -0.195601007   0.000218425  -0.194644132  -0.286338938   0.010191396
                        -0.015535388   0.009060273  -0.000404191  -0.032832145  -0.000055450   0.049412683   0.248913745  -0.008859358

   22    5.1  1.5  0.5  -0.118763958   0.069263401   0.000553408   0.044952917  -0.000041777   0.037228167  -0.164976397   0.005871853
                         0.365718190  -0.213287651  -0.003296982  -0.267811803  -0.000164565   0.146647456  -0.189781269   0.006754708

   23    6.1  1.5  0.5   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000
                         0.065012413   0.111474911   0.330503174  -0.004068765  -0.479870918  -0.000538501   0.000735702   0.020670381

   24    7.1  1.5  0.5   0.044094755   0.075608007   0.285948787  -0.003520264   0.517052989   0.000580226  -0.000211953  -0.005955069
                         0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000

   25    8.1  1.5  0.5   0.000051359  -0.000029953   0.000002077   0.000168744   0.000000077  -0.000068329  -0.000098286   0.000003498
                         0.000016678  -0.000009727   0.000000349   0.000028324  -0.000000019   0.000017346   0.000085439  -0.000003041

   26    9.1  1.5  0.5   0.000045658  -0.000026628  -0.000000197  -0.000015992  -0.000000013   0.000011222  -0.000081477   0.000002900
                        -0.000140598   0.000081997   0.000001173   0.000095275  -0.000000050   0.000044205  -0.000093728   0.000003336

   27   10.1  1.5  0.5   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000
                        -0.000128109  -0.000219665   0.000123344  -0.000001518  -0.000046440  -0.000000052   0.000000331   0.000009309

   28   11.1  1.5  0.5   0.000044788  -0.000026120  -0.000000210  -0.000017082   0.000000019  -0.000016871   0.000078302  -0.000002787
                        -0.000137918   0.000080434   0.000001253   0.000101768   0.000000075  -0.000066458   0.000090075  -0.000003206

   29   12.1  1.5  0.5  -0.000054395   0.000031723  -0.000002430  -0.000197371   0.000000060  -0.000053544  -0.000080130   0.000002852
                        -0.000017664   0.000010302  -0.000000408  -0.000033129  -0.000000015   0.000013593   0.000069657  -0.000002479

   30   13.1  1.5  0.5   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000
                         0.000054002   0.000092595   0.000115473  -0.000001422  -0.000194750  -0.000000219   0.000000245   0.000006893

   31   14.1  1.5  0.5  -0.000018406  -0.000031561  -0.000119342   0.000001469  -0.000215628  -0.000000242   0.000000088   0.000002483
                        -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000

   32   15.1  1.5  0.5  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000
                        -0.000000146  -0.000000251   0.000000105  -0.000000001  -0.000000004  -0.000000000   0.000000001   0.000000016

   33   16.1  1.5  0.5  -0.000000079   0.000000046  -0.000000001  -0.000000049  -0.000000000   0.000000001  -0.000000012   0.000000000
                         0.000000242  -0.000000141   0.000000004   0.000000292  -0.000000000   0.000000004  -0.000000014   0.000000000

   34   17.1  1.5  0.5  -0.000000346   0.000000202   0.000000000   0.000000033   0.000000000  -0.000000012   0.000000011  -0.000000000
                        -0.000000112   0.000000066   0.000000000   0.000000006  -0.000000000   0.000000003  -0.000000010   0.000000000

   35    1.1  1.5 -0.5  -0.182911396  -0.313632900  -0.202872914   0.002497532   0.126888882   0.000142392  -0.011660017  -0.327601510
                         0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000001   0.000000002

   36    2.1  1.5 -0.5   0.532881668  -0.310777758   0.002839302   0.230634676  -0.000016457   0.014664934  -0.013987544   0.000497846
                         0.173048914  -0.100922507   0.000476585   0.038712638   0.000004178  -0.003722865   0.012159338  -0.000432776

   37    3.1  1.5 -0.5   0.000000000  -0.000000000   0.000000000  -0.000000001   0.000000000  -0.000000000  -0.000000001   0.000000001
                        -0.105849414  -0.181496941   0.599145683  -0.007375974   0.076131113   0.000085433   0.004822485   0.135493217

   38    4.1  1.5 -0.5  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000001   0.000000002
                         0.029334192   0.050298494  -0.198337348   0.002441695   0.200818205   0.000225354   0.013503805   0.379404849

   39    5.1  1.5 -0.5  -0.224252181  -0.384518754  -0.271558330   0.003343105  -0.151299084  -0.000169785   0.008950125   0.251463997
                        -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000001  -0.000000002

   40    6.1  1.5 -0.5   0.106024484  -0.061833712  -0.004012630  -0.325943420   0.000521945  -0.465117485   0.015600051  -0.000555238
                         0.034430574  -0.020079987  -0.000673531  -0.054710462  -0.000132502   0.118075499  -0.013561086   0.000482667

   41    7.1  1.5 -0.5  -0.023352583   0.013619278   0.000582734   0.047335068  -0.000142768   0.127224400  -0.003906904   0.000139055
                         0.071911248  -0.041938798  -0.003471697  -0.282003724  -0.000562387   0.501156408  -0.004494323   0.000159962

   42    8.1  1.5 -0.5   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000
                        -0.000031492  -0.000053999   0.000171104  -0.000002106   0.000070496   0.000000079   0.000004635   0.000130230

   43    9.1  1.5 -0.5   0.000086212   0.000147826   0.000096608  -0.000001189  -0.000045607  -0.000000051   0.000004420   0.000124191
                        -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000

   44   10.1  1.5 -0.5  -0.000208925   0.000121845  -0.000001498  -0.000121642   0.000000051  -0.000045013   0.000007026  -0.000000250
                        -0.000067847   0.000039568  -0.000000251  -0.000020418  -0.000000013   0.000011427  -0.000006108   0.000000217

   45   11.1  1.5 -0.5   0.000084569   0.000145008   0.000103191  -0.000001270   0.000068566   0.000000077  -0.000004248  -0.000119352
                         0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000

   46   12.1  1.5 -0.5  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000
                         0.000033354   0.000057191  -0.000200132   0.000002464   0.000055242   0.000000062   0.000003779   0.000106173

   47   13.1  1.5 -0.5   0.000088068  -0.000051361  -0.000001402  -0.000113880   0.000000212  -0.000188763   0.000005202  -0.000000185
                         0.000028599  -0.000016679  -0.000000235  -0.000019115  -0.000000054   0.000047920  -0.000004522   0.000000161

   48   14.1  1.5 -0.5   0.000009748  -0.000005685  -0.000000243  -0.000019756   0.000000060  -0.000053057   0.000001629  -0.000000058
                        -0.000030018   0.000017506   0.000001449   0.000117696   0.000000235  -0.000208999   0.000001874  -0.000000067

   49   15.1  1.5 -0.5  -0.000000238   0.000000139  -0.000000001  -0.000000103   0.000000000  -0.000000004   0.000000012  -0.000000000
                        -0.000000077   0.000000045  -0.000000000  -0.000000017  -0.000000000   0.000000001  -0.000000010   0.000000000

   50   16.1  1.5 -0.5  -0.000000149  -0.000000255   0.000000296  -0.000000004  -0.000000004  -0.000000000   0.000000001   0.000000018
                         0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000

   51   17.1  1.5 -0.5   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000
                         0.000000212   0.000000364   0.000000033  -0.000000000   0.000000013   0.000000000  -0.000000001  -0.000000015

   52    1.1  1.5 -1.5  -0.048824290   0.028474433   0.000016297   0.001323824   0.000067876  -0.060486105   0.000797884  -0.000028398
                         0.150348062  -0.087683320  -0.000097093  -0.007886824   0.000267375  -0.238264035   0.000917848  -0.000032668

   53    2.1  1.5 -1.5   0.000000000  -0.000000000   0.000000000  -0.000000001   0.000000000  -0.000000000  -0.000000000   0.000000000
                         0.085621248   0.146812287   0.456127890  -0.005615308   0.028162584   0.000031603   0.000656793   0.018453350

   54    3.1  1.5 -1.5  -0.165776204   0.096681046  -0.000912406  -0.074114126   0.000475141  -0.423409277   0.012251967  -0.000436073
                        -0.053834451   0.031396370  -0.000153150  -0.012440251  -0.000120620   0.107487384  -0.010650606   0.000379077

   55    4.1  1.5 -1.5   0.035487383  -0.020696319   0.001335606   0.108490410  -0.000167543   0.149301969  -0.008331796   0.000296546
                         0.011524234  -0.006720959   0.000224185   0.018210401   0.000042533  -0.037902046   0.007242810  -0.000257787

   56    5.1  1.5 -1.5  -0.047148576   0.027497153  -0.000180366  -0.014651027   0.000103597  -0.092318022   0.003843995  -0.000136816
                         0.145187918  -0.084673913   0.001074551   0.087285058   0.000408086  -0.363654837   0.004421955  -0.000157387

   57    6.1  1.5 -1.5   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000002   0.000000004
                         0.076590636   0.131327757  -0.077504604   0.000954145   0.019553764   0.000021943   0.020358882   0.572006065

   58    7.1  1.5 -1.5  -0.067992223  -0.116584305   0.035174712  -0.000433030   0.010285974   0.000011543   0.020665249   0.580613784
                        -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000002  -0.000000004

   59    8.1  1.5 -1.5  -0.000051588   0.000030086  -0.000000038  -0.000003073   0.000000133  -0.000118833   0.000002575  -0.000000092
                        -0.000016753   0.000009770  -0.000000006  -0.000000516  -0.000000034   0.000030167  -0.000002239   0.000000080

   60    9.1  1.5 -1.5   0.000022435  -0.000013084   0.000000002   0.000000133  -0.000000033   0.000029312  -0.000000505   0.000000018
                        -0.000069087   0.000040292  -0.000000010  -0.000000794  -0.000000130   0.000115463  -0.000000581   0.000000021

   61   10.1  1.5 -1.5  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000
                        -0.000028560  -0.000048971  -0.000192939   0.000002375  -0.000009870  -0.000000011   0.000001438   0.000040402

   62   11.1  1.5 -1.5   0.000017315  -0.000010098   0.000000076   0.000006140  -0.000000040   0.000035457  -0.000001554   0.000000055
                        -0.000053320   0.000031096  -0.000000450  -0.000036578  -0.000000157   0.000139670  -0.000001787   0.000000064

   63   12.1  1.5 -1.5   0.000048517  -0.000028295   0.000000674   0.000054744  -0.000000162   0.000144583  -0.000005618   0.000000200
                         0.000015756  -0.000009189   0.000000113   0.000009189   0.000000041  -0.000036704   0.000004884  -0.000000174

   64   13.1  1.5 -1.5   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000
                         0.000038516   0.000066042   0.000006594  -0.000000081   0.000010349   0.000000012   0.000008366   0.000235039

   65   14.1  1.5 -1.5   0.000028401   0.000048699  -0.000014707   0.000000181  -0.000004281  -0.000000005  -0.000008612  -0.000241957
                         0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000

   66   15.1  1.5 -1.5   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000
                        -0.000000035  -0.000000060  -0.000000189   0.000000002  -0.000000015  -0.000000000  -0.000000000  -0.000000013

   67   16.1  1.5 -1.5  -0.000000119   0.000000069  -0.000000000  -0.000000035  -0.000000000   0.000000184  -0.000000022   0.000000001
                         0.000000366  -0.000000213   0.000000003   0.000000206  -0.000000001   0.000000724  -0.000000025   0.000000001

   68   17.1  1.5 -1.5   0.000000433  -0.000000252   0.000000002   0.000000142   0.000000001  -0.000000698   0.000000004  -0.000000000
                         0.000000141  -0.000000082   0.000000000   0.000000024  -0.000000000   0.000000177  -0.000000004   0.000000000


   Nr   State  S   Sz        9            10            11            12            13            14            15            16

    1    1.1  1.5  1.5   0.568985318   0.000075526  -0.001475424   0.321290867   0.093026228  -0.138540228   0.240224517  -0.000637412
                        -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000

    2    2.1  1.5  1.5   0.000000342  -0.002577006  -0.018572683  -0.000085289  -0.196689095  -0.132071711  -0.001010939  -0.380997105
                        -0.000000421   0.003169278  -0.031914508  -0.000146557   0.096745145   0.064961898   0.001352748   0.509816456

    3    3.1  1.5  1.5   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000
                         0.222158997   0.000029489  -0.002009931   0.437685861  -0.210551834   0.313566394  -0.251754000   0.000668004

    4    4.1  1.5  1.5  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000001   0.000000000   0.000000000   0.000000000
                         0.670213064   0.000088963   0.000646302  -0.140739820   0.111188045  -0.165587891  -0.135215316   0.000358781

    5    5.1  1.5  1.5  -0.419789109  -0.000055722  -0.001835842   0.399775947   0.198899475  -0.296213002  -0.016688924   0.000044283
                         0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000001  -0.000000000  -0.000000000  -0.000000000

    6    6.1  1.5  1.5  -0.000000085   0.000639880  -0.015679062  -0.000072001   0.230053915   0.154475335  -0.000191301  -0.072096782
                         0.000000104  -0.000786943  -0.026942234  -0.000123723  -0.113156253  -0.075981538   0.000255982   0.096473510

    7    7.1  1.5  1.5   0.000000601  -0.004529454  -0.008940745  -0.000041057  -0.120842979  -0.081142978   0.000291105   0.109710502
                         0.000000489  -0.003682994   0.005203076   0.000023893  -0.245681520  -0.164968873   0.000217549   0.081989078

    8    8.1  1.5  1.5   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000
                         0.000223969   0.000000030   0.000000000  -0.000000048  -0.000000051   0.000000076  -0.000000015   0.000000000

    9    9.1  1.5  1.5  -0.000216534  -0.000000029  -0.000000000   0.000000028  -0.000000046   0.000000068  -0.000000018   0.000000000
                        -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000

   10   10.1  1.5  1.5  -0.000000000   0.000001107   0.000000000   0.000000000   0.000000025   0.000000017   0.000000000   0.000000004
                         0.000000000  -0.000001362   0.000000000   0.000000000  -0.000000012  -0.000000008  -0.000000000  -0.000000006

   11   11.1  1.5  1.5   0.000200330   0.000000027  -0.000000000   0.000000041  -0.000000046   0.000000068  -0.000000061   0.000000000
                        -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000

   12   12.1  1.5  1.5  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000
                         0.000191326   0.000000025  -0.000000000   0.000000041   0.000000040  -0.000000059   0.000000047  -0.000000000

   13   13.1  1.5  1.5  -0.000000000   0.000000047  -0.000000006  -0.000000000   0.000000075   0.000000050  -0.000000000  -0.000000028
                         0.000000000  -0.000000058  -0.000000011  -0.000000000  -0.000000037  -0.000000025   0.000000000   0.000000037

   14   14.1  1.5  1.5  -0.000000000   0.000001890   0.000000003   0.000000000   0.000000041   0.000000028  -0.000000000  -0.000000036
                        -0.000000000   0.000001537  -0.000000002  -0.000000000   0.000000083   0.000000056  -0.000000000  -0.000000027

   15   15.1  1.5  1.5  -0.000000000   0.000000001  -0.000000003  -0.000000000   0.000000005   0.000000004   0.000000000   0.000000008
                         0.000000000  -0.000000001  -0.000000006  -0.000000000  -0.000000003  -0.000000002  -0.000000000  -0.000000010

   16   16.1  1.5  1.5  -0.000000046  -0.000000000   0.000000001  -0.000000241   0.000000282  -0.000000420   0.000000227  -0.000000001
                         0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000

   17   17.1  1.5  1.5  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000
                         0.000000022   0.000000000  -0.000000001   0.000000311   0.000000272  -0.000000406   0.000000198  -0.000000001

   18    1.1  1.5  0.5   0.000000513  -0.003862657   0.299966675   0.001377500   0.078215027   0.052519396  -0.000144902  -0.054610018
                         0.000000417  -0.003140807  -0.174565933  -0.000801638   0.159016163   0.106775297  -0.000108288  -0.040811270

   19    2.1  1.5  0.5   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000
                         0.014885755   0.000001976   0.000071371  -0.015541939  -0.157029211   0.233857301  -0.124882927   0.000331364

   20    3.1  1.5  0.5  -0.000000940   0.007083750  -0.074950350  -0.000344185   0.241755281   0.162332504  -0.000205327  -0.077382766
                         0.000001156  -0.008711803  -0.128791494  -0.000591433  -0.118911786  -0.079846231   0.000274750   0.103546745

   21    4.1  1.5  0.5   0.000000855  -0.006444082  -0.213855680  -0.000982063  -0.096364380  -0.064706222   0.000121866   0.045928254
                        -0.000001052   0.007925120  -0.367480505  -0.001687535   0.047398594   0.031826947  -0.000163070  -0.061457109

   22    5.1  1.5  0.5  -0.000001037   0.007815314  -0.205089400  -0.000941807   0.100637234   0.067575335  -0.000279015  -0.105154008
                        -0.000000844   0.006354796   0.119352000   0.000548085   0.204601945   0.137384986  -0.000208514  -0.078583910

   23    6.1  1.5  0.5  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000001   0.000000000   0.000000001   0.000000000
                        -0.023418559  -0.000003109  -0.001111442   0.242029350   0.097200388  -0.144756632  -0.443460629   0.001176680

   24    7.1  1.5  0.5   0.017719574   0.000002352   0.001335296  -0.290776372   0.105457103  -0.157053027  -0.406543938   0.001078725
                         0.000000000   0.000000000   0.000000000  -0.000000000   0.000000001  -0.000000000  -0.000000001  -0.000000000

   25    8.1  1.5  0.5  -0.000000000   0.000001140   0.000000016   0.000000000   0.000000011   0.000000007   0.000000000   0.000000062
                         0.000000000  -0.000001401   0.000000028   0.000000000  -0.000000005  -0.000000004  -0.000000000  -0.000000083

   26    9.1  1.5  0.5  -0.000000000   0.000001239   0.000000017   0.000000000   0.000000028   0.000000018   0.000000000   0.000000071
                        -0.000000000   0.000001008  -0.000000010  -0.000000000   0.000000056   0.000000038   0.000000000   0.000000053

   27   10.1  1.5  0.5  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000
                        -0.000008048  -0.000000001   0.000000000  -0.000000049   0.000000012  -0.000000018   0.000000020  -0.000000000

   28   11.1  1.5  0.5   0.000000000  -0.000003419  -0.000000027  -0.000000000   0.000000025   0.000000017   0.000000000   0.000000066
                         0.000000000  -0.000002780   0.000000016   0.000000000   0.000000051   0.000000034   0.000000000   0.000000050

   29   12.1  1.5  0.5   0.000000001  -0.000003830   0.000000008   0.000000000  -0.000000007  -0.000000005  -0.000000000  -0.000000072
                        -0.000000001   0.000004710   0.000000014   0.000000000   0.000000004   0.000000002   0.000000000   0.000000097

   30   13.1  1.5  0.5  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000
                        -0.000008321  -0.000000001   0.000000001  -0.000000218  -0.000000006   0.000000009   0.000000047  -0.000000000

   31   14.1  1.5  0.5  -0.000007386  -0.000000001   0.000000001  -0.000000219   0.000000010  -0.000000015  -0.000000015   0.000000000
                        -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000

   32   15.1  1.5  0.5  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000
                        -0.000000018  -0.000000000   0.000000000  -0.000000001   0.000000009  -0.000000014   0.000000007  -0.000000000

   33   16.1  1.5  0.5  -0.000000000   0.000000008   0.000000016   0.000000000  -0.000000194  -0.000000130  -0.000000001  -0.000000422
                        -0.000000000   0.000000006  -0.000000009  -0.000000000  -0.000000395  -0.000000265  -0.000000001  -0.000000316

   34   17.1  1.5  0.5   0.000000000  -0.000000004  -0.000000025  -0.000000000  -0.000000006  -0.000000004  -0.000000001  -0.000000450
                        -0.000000000   0.000000005  -0.000000042  -0.000000000   0.000000003   0.000000002   0.000000002   0.000000603

   35    1.1  1.5 -0.5   0.004978432   0.000000661   0.001593778  -0.347063786  -0.118992649   0.177210975  -0.068174888   0.000180895
                         0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000

   36    2.1  1.5 -0.5  -0.000001247   0.009391167   0.007817275   0.000035898  -0.209846433  -0.140906526   0.000198363   0.074758189
                         0.000001533  -0.011549532   0.013432873   0.000061686   0.103216831   0.069307470  -0.000265432  -0.100034769

   37    3.1  1.5 -0.5  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000
                        -0.011228314  -0.000001490   0.000684293  -0.149012764  -0.180906775   0.269417197  -0.129267263   0.000342997

   38    4.1  1.5 -0.5   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000
                         0.010214388   0.000001356   0.001952492  -0.425177814   0.072109982  -0.107390501   0.076722759  -0.000203576

   39    5.1  1.5 -0.5  -0.010072863  -0.000001337  -0.001089678   0.237290038  -0.153104733   0.228012732  -0.131273760   0.000348322
                        -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000

   40    6.1  1.5 -0.5   0.000001961  -0.014774366  -0.121735776  -0.000559032   0.129893993   0.087220504   0.000704392   0.265467187
                        -0.000002412   0.018169948  -0.209185581  -0.000960617  -0.063890747  -0.042901008  -0.000942554  -0.355224591

   41    7.1  1.5 -0.5  -0.000001825   0.013748230  -0.251317554  -0.001154095   0.069317967   0.046545248   0.000864089   0.325653271
                        -0.000001484   0.011178974   0.146254524   0.000671627   0.140927879   0.094629477   0.000645754   0.243367887

   42    8.1  1.5 -0.5   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000
                        -0.000001806  -0.000000000  -0.000000000   0.000000032  -0.000000008   0.000000012   0.000000104  -0.000000000

   43    9.1  1.5 -0.5  -0.000001597  -0.000000000   0.000000000  -0.000000020  -0.000000042   0.000000062   0.000000089  -0.000000000
                        -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000

   44   10.1  1.5 -0.5   0.000000001  -0.000005078   0.000000025   0.000000000   0.000000016   0.000000011  -0.000000000  -0.000000012
                        -0.000000001   0.000006245   0.000000042   0.000000000  -0.000000008  -0.000000005   0.000000000   0.000000016

   45   11.1  1.5 -0.5   0.000004406   0.000000001  -0.000000000   0.000000031  -0.000000038   0.000000057   0.000000083  -0.000000000
                         0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000

   46   12.1  1.5 -0.5   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000
                         0.000006071   0.000000001  -0.000000000   0.000000017   0.000000006  -0.000000008  -0.000000121   0.000000000

   47   13.1  1.5 -0.5   0.000000001  -0.000005250   0.000000109   0.000000001  -0.000000008  -0.000000005  -0.000000000  -0.000000028
                        -0.000000001   0.000006456   0.000000188   0.000000001   0.000000004   0.000000003   0.000000000   0.000000038

   48   14.1  1.5 -0.5   0.000000001  -0.000005730  -0.000000189  -0.000000001   0.000000007   0.000000004   0.000000000   0.000000012
                         0.000000001  -0.000004659   0.000000110   0.000000001   0.000000013   0.000000009   0.000000000   0.000000009

   49   15.1  1.5 -0.5   0.000000000  -0.000000011   0.000000001   0.000000000   0.000000012   0.000000008  -0.000000000  -0.000000004
                        -0.000000000   0.000000014   0.000000001   0.000000000  -0.000000006  -0.000000004   0.000000000   0.000000006

   50   16.1  1.5 -0.5  -0.000000010  -0.000000000   0.000000000  -0.000000019   0.000000296  -0.000000440  -0.000000527   0.000000001
                         0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000

   51   17.1  1.5 -0.5   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000
                         0.000000007   0.000000000   0.000000000  -0.000000049   0.000000004  -0.000000007  -0.000000752   0.000000002

   52    1.1  1.5 -1.5   0.000058599  -0.441463270  -0.277691182  -0.001275207  -0.061147051  -0.041058685   0.000510585   0.192426669
                         0.000047648  -0.358963052   0.161602686   0.000742108  -0.124315871  -0.083474935   0.000381571   0.143804699

   53    2.1  1.5 -1.5  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000001  -0.000000000  -0.000000001  -0.000000000
                        -0.004084762  -0.000000542  -0.000169568   0.036925335  -0.147183528   0.219194514   0.636452351  -0.001688764

   54    3.1  1.5 -1.5   0.000018604  -0.140156291   0.220146970   0.001010954   0.281371544   0.188933814  -0.000399884  -0.150706542
                        -0.000022880   0.172368309   0.378291190   0.001737180  -0.138397775  -0.092930576   0.000535090   0.201662106

   55    4.1  1.5 -1.5   0.000056125  -0.422825897  -0.070789230  -0.000325077  -0.148586451  -0.099772012  -0.000214776  -0.080943448
                        -0.000069025   0.520003666  -0.121641202  -0.000558598   0.073084979   0.049074700   0.000287394   0.108311324

   56    5.1  1.5 -1.5  -0.000043234   0.325705193  -0.345525712  -0.001586715  -0.130738559  -0.087787608  -0.000035472  -0.013368316
                        -0.000035154   0.264837730   0.201079064   0.000923391  -0.265799872  -0.178477833  -0.000026510  -0.009990442

   57    6.1  1.5 -1.5   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000
                         0.001014261   0.000000135  -0.000143149   0.031172375   0.172150580  -0.256376947   0.120437071  -0.000319567

   58    7.1  1.5 -1.5  -0.005837841  -0.000000775   0.000047504  -0.010344511  -0.183844800   0.273792680  -0.136962068   0.000363415
                        -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000

   59    8.1  1.5 -1.5   0.000000019  -0.000141298  -0.000000024  -0.000000000   0.000000068   0.000000046  -0.000000000  -0.000000009
                        -0.000000023   0.000173772  -0.000000041  -0.000000000  -0.000000034  -0.000000023   0.000000000   0.000000012

   60    9.1  1.5 -1.5  -0.000000022   0.000168004  -0.000000024  -0.000000000   0.000000030   0.000000020  -0.000000000  -0.000000014
                        -0.000000018   0.000136608   0.000000014   0.000000000   0.000000061   0.000000041  -0.000000000  -0.000000011

   61   10.1  1.5 -1.5   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000
                         0.000001755   0.000000000   0.000000000  -0.000000001   0.000000019  -0.000000028  -0.000000007   0.000000000

   62   11.1  1.5 -1.5   0.000000021  -0.000155432  -0.000000035  -0.000000000   0.000000030   0.000000020  -0.000000000  -0.000000049
                         0.000000017  -0.000126385   0.000000021   0.000000000   0.000000061   0.000000041  -0.000000000  -0.000000037

   63   12.1  1.5 -1.5   0.000000016  -0.000120704   0.000000020   0.000000000  -0.000000053  -0.000000036   0.000000000   0.000000028
                        -0.000000020   0.000148446   0.000000035   0.000000000   0.000000026   0.000000018  -0.000000000  -0.000000038

   64   13.1  1.5 -1.5   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000
                         0.000000074   0.000000000  -0.000000000   0.000000013   0.000000056  -0.000000083   0.000000046  -0.000000000

   65   14.1  1.5 -1.5   0.000002436   0.000000000  -0.000000000   0.000000004   0.000000062  -0.000000093   0.000000046  -0.000000000
                         0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000

   66   15.1  1.5 -1.5   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000
                         0.000000002   0.000000000  -0.000000000   0.000000007   0.000000004  -0.000000006  -0.000000013   0.000000000

   67   16.1  1.5 -1.5  -0.000000000   0.000000036   0.000000208   0.000000001  -0.000000186  -0.000000125   0.000000000   0.000000181
                        -0.000000000   0.000000029  -0.000000121  -0.000000001  -0.000000377  -0.000000253   0.000000000   0.000000136

   68   17.1  1.5 -1.5   0.000000000  -0.000000014   0.000000156   0.000000001  -0.000000364  -0.000000245   0.000000000   0.000000118
                        -0.000000000   0.000000017   0.000000269   0.000000001   0.000000179   0.000000120  -0.000000000  -0.000000158


   Nr   State  S   Sz       17            18            19            20            21            22            23            24

    1    1.1  1.5  1.5  -0.000219589   0.000995470  -0.315269374  -0.006204328  -0.027487610   0.280281871   0.013823495   0.116401626
                        -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000

    2    2.1  1.5  1.5   0.001212560   0.000267477   0.002490680  -0.126562474  -0.002765825  -0.000271248  -0.000797437   0.000094701
                         0.002463569   0.000543435  -0.009659179   0.490825636   0.009299077   0.000911973   0.002627703  -0.000312058

    3    3.1  1.5  1.5   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000
                        -0.005443510   0.024677226   0.111993290   0.002203966   0.038978447  -0.397450050   0.030656649   0.258146286

    4    4.1  1.5  1.5  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000
                         0.001799164  -0.008156202   0.384852921   0.007573694  -0.011174915   0.113946837  -0.009340468  -0.078652014

    5    5.1  1.5  1.5   0.000026584  -0.000120512   0.247545986   0.004871569  -0.035372630   0.360682758   0.017503209   0.147386895
                         0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000

    6    6.1  1.5  1.5   0.180354423   0.039784094  -0.000047919   0.002434988  -0.130727501  -0.012820617   0.012570636  -0.001492850
                         0.366427795   0.080829721   0.000185837  -0.009443198   0.439523537   0.043104649  -0.041422593   0.004919218

    7    7.1  1.5  1.5  -0.348364837  -0.076845242   0.000056310  -0.002861341   0.439608517   0.043112983  -0.041382985   0.004914514
                         0.171463901   0.037822948   0.000014520  -0.000737815   0.130752777   0.012823096  -0.012558616   0.001491422

    8    8.1  1.5  1.5  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000
                        -0.000000000   0.000000001  -0.000098728  -0.000001943  -0.000009224   0.000094050  -0.000007164  -0.000060324

    9    9.1  1.5  1.5  -0.000000001   0.000000004  -0.000095712  -0.000001884  -0.000010449   0.000106545   0.000005247   0.000044181
                        -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000

   10   10.1  1.5  1.5   0.000000006   0.000000001   0.000000820  -0.000041662   0.000007886   0.000000773  -0.000001106   0.000000131
                         0.000000012   0.000000003  -0.000003180   0.000161571  -0.000026515  -0.000002600   0.000003646  -0.000000433

   11   11.1  1.5  1.5  -0.000000001   0.000000004   0.000094034   0.000001851  -0.000010743   0.000109542   0.000005313   0.000044736
                        -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000

   12   12.1  1.5  1.5   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000
                         0.000000000  -0.000000001  -0.000090845  -0.000001788   0.000009946  -0.000101415   0.000007984   0.000067228

   13   13.1  1.5  1.5   0.000000033   0.000000007  -0.000000152   0.000007723   0.000043009   0.000004218  -0.000004066   0.000000483
                         0.000000066   0.000000015   0.000000589  -0.000029952  -0.000144604  -0.000014181   0.000013397  -0.000001591

   14   14.1  1.5  1.5   0.000000053   0.000000012   0.000000019  -0.000000955   0.000147005   0.000014417  -0.000013836   0.000001643
                        -0.000000026  -0.000000006   0.000000005  -0.000000246   0.000043724   0.000004288  -0.000004199   0.000000499

   15   15.1  1.5  1.5  -0.000000000  -0.000000000   0.000000001  -0.000000045  -0.000000002  -0.000000000  -0.000000003   0.000000000
                        -0.000000001  -0.000000000  -0.000000003   0.000000173   0.000000007   0.000000001   0.000000009  -0.000000001

   16   16.1  1.5  1.5   0.000000005  -0.000000023   0.000000000   0.000000000  -0.000000022   0.000000224   0.000000007   0.000000057
                        -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000

   17   17.1  1.5  1.5  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000
                         0.000000002  -0.000000008  -0.000000004  -0.000000000  -0.000000021   0.000000212  -0.000000012  -0.000000097

   18    1.1  1.5  0.5   0.403387683   0.088982643  -0.004901790   0.249081637   0.013727585   0.001346282  -0.391426057   0.046484540
                        -0.198545946  -0.043796932  -0.001263957   0.064227265   0.004082996   0.000400425  -0.118787216   0.014106800

   19    2.1  1.5  0.5   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000
                        -0.002001739   0.009074542   0.005219494   0.000102717  -0.040279370   0.410715128  -0.003930245  -0.033094882

   20    3.1  1.5  0.5   0.073375733   0.016185836   0.001968904  -0.100048718   0.018201681   0.001785063  -0.044879735   0.005329778
                         0.149078174   0.032884916  -0.007635664   0.388001862  -0.061196514  -0.006001622   0.147887105  -0.017562612

   21    4.1  1.5  0.5   0.232264383   0.051234829  -0.000598155   0.030394903  -0.019745294  -0.001936447  -0.141669161   0.016824188
                         0.471893753   0.104094287   0.002319722  -0.117875364   0.066386348   0.006510596   0.466826336  -0.055438842

   22    5.1  1.5  0.5  -0.321979420  -0.071024925  -0.006271328   0.318673910   0.094156908   0.009234091   0.294118414  -0.034928587
                         0.158477095   0.034958209  -0.001617101   0.082172070   0.028005093   0.002746496   0.089256980  -0.010599881

   23    6.1  1.5  0.5   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000
                        -0.001169624   0.005302291   0.191925977   0.003776998  -0.003208915   0.032720223   0.049523195   0.417013248

   24    7.1  1.5  0.5   0.002004001  -0.009084799   0.185861282   0.003657648   0.004008533  -0.040873659  -0.049760267  -0.419009531
                         0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000

   25    8.1  1.5  0.5   0.000000003   0.000000001  -0.000000460   0.000023399  -0.000001772  -0.000000174   0.000037380  -0.000004439
                         0.000000007   0.000000002   0.000001786  -0.000090743   0.000005957   0.000000584  -0.000123174   0.000014628

   26    9.1  1.5  0.5  -0.000000006  -0.000000001  -0.000001863   0.000094670   0.000007970   0.000000782  -0.000119293   0.000014167
                         0.000000003   0.000000001  -0.000000480   0.000024411   0.000002371   0.000000232  -0.000036202   0.000004299

   27   10.1  1.5  0.5  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000
                         0.000000001  -0.000000004  -0.000011246  -0.000000221  -0.000012991   0.000132466  -0.000004619  -0.000038894

   28   11.1  1.5  0.5   0.000000008   0.000000002  -0.000001905   0.000096806   0.000030733   0.000003014   0.000112326  -0.000013339
                        -0.000000004  -0.000000001  -0.000000491   0.000024962   0.000009141   0.000000896   0.000034088  -0.000004048

   29   12.1  1.5  0.5   0.000000003   0.000000001   0.000000512  -0.000026035   0.000008781   0.000000861   0.000032804  -0.000003896
                         0.000000007   0.000000001  -0.000001987   0.000100966  -0.000029524  -0.000002895  -0.000108096   0.000012837

   30   13.1  1.5  0.5  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000
                         0.000000000  -0.000000002  -0.000063423  -0.000001248   0.000003762  -0.000038364  -0.000015952  -0.000134326

   31   14.1  1.5  0.5   0.000000001  -0.000000003   0.000062353   0.000001227   0.000001340  -0.000013667  -0.000016636  -0.000140081
                         0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000

   32   15.1  1.5  0.5  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000
                        -0.000000002   0.000000010   0.000000001   0.000000000  -0.000000014   0.000000139  -0.000000001  -0.000000010

   33   16.1  1.5  0.5   0.000000011   0.000000002   0.000000004  -0.000000225   0.000000555   0.000000054  -0.000000058   0.000000007
                        -0.000000005  -0.000000001   0.000000001  -0.000000058   0.000000165   0.000000016  -0.000000018   0.000000002

   34   17.1  1.5  0.5   0.000000006   0.000000001   0.000000001  -0.000000057  -0.000000168  -0.000000016   0.000000014  -0.000000002
                         0.000000012   0.000000003  -0.000000004   0.000000221   0.000000563   0.000000055  -0.000000045   0.000000005

   35    1.1  1.5 -0.5   0.099177024  -0.449602175   0.257229088   0.005062127   0.001404570  -0.014321922   0.048577919   0.409053494
                         0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000

   36    2.1  1.5 -0.5  -0.004007351  -0.000883975   0.000025647  -0.001303250   0.117089611   0.011483131  -0.009610599   0.001141325
                        -0.008141773  -0.001795981  -0.000099463   0.005054173  -0.393671106  -0.038607841   0.031668717  -0.003760878

   37    3.1  1.5 -0.5   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000
                        -0.036652407   0.166157456  -0.400693388  -0.007885426   0.006261463  -0.063846022   0.018353525   0.154547036

   38    4.1  1.5 -0.5   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000
                        -0.116019948   0.525956707   0.121731062   0.002395600  -0.006792473   0.069260550   0.057935468   0.487849340

   39    5.1  1.5 -0.5  -0.079161962   0.358867296   0.329097721   0.006476462   0.009633882  -0.098233439  -0.036501557  -0.307363709
                        -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000

   40    6.1  1.5 -0.5  -0.002341511  -0.000516510   0.000943075  -0.047921799   0.009328115   0.000914820   0.121098692  -0.014381304
                        -0.004757270  -0.001049398  -0.003657366   0.185846931  -0.031362386  -0.003075750  -0.399042800   0.047389080

   41    7.1  1.5 -0.5  -0.008150975  -0.001798010   0.003541796  -0.179974329  -0.039177467  -0.003842185  -0.400953056   0.047615936
                         0.004011880   0.000884974   0.000913274  -0.046407512  -0.011652555  -0.001142781  -0.121678403   0.014450148

   42    8.1  1.5 -0.5   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000
                        -0.000000002   0.000000008   0.000093711   0.000001844  -0.000000609   0.000006215  -0.000015286  -0.000128721

   43    9.1  1.5 -0.5  -0.000000001   0.000000007   0.000097766   0.000001924   0.000000816  -0.000008315   0.000014805   0.000124665
                         0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000

   44   10.1  1.5 -0.5   0.000000002   0.000000000  -0.000000055   0.000002808   0.000037764   0.000003704  -0.000011295   0.000001341
                         0.000000003   0.000000001   0.000000214  -0.000010890  -0.000126969  -0.000012452   0.000037218  -0.000004420

   45   11.1  1.5 -0.5   0.000000002  -0.000000009   0.000099973   0.000001967   0.000003144  -0.000032063  -0.000013940  -0.000117384
                         0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000

   46   12.1  1.5 -0.5   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000
                        -0.000000002   0.000000007  -0.000104268  -0.000002052   0.000003021  -0.000030802  -0.000013415  -0.000112964

   47   13.1  1.5 -0.5   0.000000001   0.000000000  -0.000000312   0.000015836  -0.000010937  -0.000001073  -0.000039008   0.000004632
                         0.000000001   0.000000000   0.000001209  -0.000061414   0.000036772   0.000003606   0.000128537  -0.000015265

   48   14.1  1.5 -0.5  -0.000000003  -0.000000001   0.000001188  -0.000060378  -0.000013100  -0.000001285  -0.000134045   0.000015919
                         0.000000001   0.000000000   0.000000306  -0.000015569  -0.000003896  -0.000000382  -0.000040679   0.000004831

   49   15.1  1.5 -0.5  -0.000000004  -0.000000001   0.000000000  -0.000000000   0.000000040   0.000000004  -0.000000003   0.000000000
                        -0.000000009  -0.000000002  -0.000000000   0.000000001  -0.000000134  -0.000000013   0.000000010  -0.000000001

   50   16.1  1.5 -0.5   0.000000003  -0.000000012  -0.000000232  -0.000000005   0.000000057  -0.000000579   0.000000007   0.000000060
                         0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000

   51   17.1  1.5 -0.5   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000
                        -0.000000003   0.000000013  -0.000000228  -0.000000004  -0.000000058   0.000000588  -0.000000006  -0.000000047

   52    1.1  1.5 -1.5  -0.000893146  -0.000197018   0.006007813  -0.305283561  -0.268650620  -0.026346918  -0.111385504   0.013227796
                         0.000439603   0.000096971   0.001549152  -0.078719284  -0.079904763  -0.007836365  -0.033802486   0.004014278

   53    2.1  1.5 -1.5   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000
                         0.000605694  -0.002745810   0.506880523   0.009975130   0.000951457  -0.009701681  -0.000326111  -0.002746038

   54    3.1  1.5 -1.5   0.010897552   0.002403874  -0.000550306   0.027963489   0.113307908   0.011112255  -0.074964471   0.008902547
                         0.022140660   0.004883973   0.002134158  -0.108446024  -0.380956508  -0.037360903   0.247021928  -0.029335555

   55    4.1  1.5 -1.5  -0.003601808  -0.000794517  -0.001891068   0.096093528  -0.032484781  -0.003185825   0.022840176  -0.002712428
                        -0.007317828  -0.001614228   0.007333806  -0.372663125   0.109218225   0.010711174  -0.075262644   0.008937957

   56    5.1  1.5 -1.5   0.000108125   0.000023851  -0.004717267   0.239705237  -0.345714999  -0.033904723  -0.141035518   0.016748939
                        -0.000053219  -0.000011739  -0.001216377   0.061809502  -0.102826024  -0.010084283  -0.042800463   0.005082850

   57    6.1  1.5 -1.5  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000
                         0.090090054  -0.408407941  -0.009752084  -0.000191916   0.044970868  -0.458552744   0.005140750   0.043288013

   58    7.1  1.5 -1.5   0.085649089  -0.388275584   0.002954936   0.000058152  -0.044979563   0.458641403  -0.005135834  -0.043246622
                         0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000

   59    8.1  1.5 -1.5   0.000000001   0.000000000   0.000000485  -0.000024651  -0.000026813  -0.000002630   0.000017518  -0.000002080
                         0.000000001   0.000000000  -0.000001881   0.000095601   0.000090147   0.000008841  -0.000057725   0.000006855

   60    9.1  1.5 -1.5  -0.000000003  -0.000000001   0.000001824  -0.000092681  -0.000102123  -0.000010015  -0.000042277   0.000005021
                         0.000000002   0.000000000   0.000000470  -0.000023898  -0.000030374  -0.000002979  -0.000012830   0.000001524

   61   10.1  1.5 -1.5   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000
                         0.000000003  -0.000000014   0.000166856   0.000003284  -0.000002713   0.000027663  -0.000000452  -0.000003810

   62   11.1  1.5 -1.5  -0.000000004  -0.000000001  -0.000001792   0.000091055  -0.000104996  -0.000010297  -0.000042808   0.000005084
                         0.000000002   0.000000000  -0.000000462   0.000023479  -0.000031229  -0.000003063  -0.000012991   0.000001543

   63   12.1  1.5 -1.5  -0.000000000  -0.000000000   0.000000446  -0.000022683   0.000028912   0.000002835  -0.000019523   0.000002318
                        -0.000000001  -0.000000000  -0.000001731   0.000087968  -0.000097207  -0.000009533   0.000064331  -0.000007640

   64   13.1  1.5 -1.5   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000
                         0.000000016  -0.000000074  -0.000030932  -0.000000609  -0.000014795   0.000150864  -0.000001663  -0.000014000

   65   14.1  1.5 -1.5  -0.000000013   0.000000059   0.000000986   0.000000019  -0.000015041   0.000153370  -0.000001717  -0.000014459
                         0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000

   66   15.1  1.5 -1.5   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000
                        -0.000000000   0.000000001   0.000000179   0.000000004   0.000000001  -0.000000008  -0.000000001  -0.000000009

   67   16.1  1.5 -1.5   0.000000021   0.000000005  -0.000000000   0.000000000  -0.000000215  -0.000000021  -0.000000054   0.000000006
                        -0.000000010  -0.000000002  -0.000000000   0.000000000  -0.000000064  -0.000000006  -0.000000016   0.000000002

   68   17.1  1.5 -1.5  -0.000000004  -0.000000001   0.000000000  -0.000000001  -0.000000060  -0.000000006   0.000000028  -0.000000003
                        -0.000000007  -0.000000002  -0.000000000   0.000000004   0.000000203   0.000000020  -0.000000093   0.000000011


   Nr   State  S   Sz       25            26            27            28            29            30            31            32

    1    1.1  1.5  1.5  -0.429396155   0.000857212   0.128650629  -0.008226981  -0.000001428  -0.000011901   0.000002696  -0.000214054
                        -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000

    2    2.1  1.5  1.5   0.000281453   0.140985943  -0.000096213  -0.001504539  -0.000029395   0.000003527  -0.000009038  -0.000000114
                         0.000186371   0.093357155  -0.000003531  -0.000055220   0.000014546  -0.000001745   0.000012569   0.000000158

    3    3.1  1.5  1.5  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000
                         0.159594910  -0.000318602  -0.222837486   0.014250064   0.000014690   0.000122444   0.000000517  -0.000041042

    4    4.1  1.5  1.5   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000
                         0.509778848  -0.001017682   0.087144091  -0.005572711   0.000000061   0.000000511   0.000003663  -0.000290905

    5    5.1  1.5  1.5   0.317749706  -0.000634330   0.201740673  -0.012900960  -0.000010854  -0.000090469  -0.000002398   0.000190428
                        -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000

    6    6.1  1.5  1.5   0.000020689   0.010363504   0.024090727   0.376722309   0.000062802  -0.000007535   0.000005515   0.000000069
                         0.000013700   0.006862438   0.000884188   0.013826623  -0.000031077   0.000003728  -0.000007670  -0.000000097

    7    7.1  1.5  1.5   0.000016197   0.008113562   0.000884061   0.013824638  -0.000024124   0.000002894  -0.000003756  -0.000000047
                        -0.000024461  -0.012252925  -0.024087268  -0.376668213  -0.000048751   0.000005849  -0.000002701  -0.000000034

    8    8.1  1.5  1.5   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000
                        -0.000231949   0.000000463   0.000084358  -0.000005395  -0.030184420  -0.251590871  -0.005602800   0.444922583

    9    9.1  1.5  1.5  -0.000226899   0.000000453   0.000087012  -0.000005564  -0.006254520  -0.052132198   0.005785499  -0.459430843
                        -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000

   10   10.1  1.5  1.5   0.000000157   0.000078832  -0.000002861  -0.000044745  -0.099267425   0.011909532  -0.023869139  -0.000300578
                         0.000000104   0.000052200  -0.000000105  -0.000001642   0.049121173  -0.005893275   0.033195959   0.000418029

   11   11.1  1.5  1.5   0.000210513  -0.000000420   0.000107915  -0.000006901  -0.025466235  -0.212264215  -0.006427485   0.510411431
                        -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000

   12   12.1  1.5  1.5  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000
                        -0.000204925   0.000000409  -0.000110008   0.000007035   0.018079368   0.150693769  -0.006873874   0.545859497

   13   13.1  1.5  1.5  -0.000000045  -0.000022315  -0.000013657  -0.000213556  -0.133346673   0.015998164  -0.008599739  -0.000108294
                        -0.000000029  -0.000014776  -0.000000501  -0.000007838   0.065984838  -0.007916480   0.011960071   0.000150610

   14   14.1  1.5  1.5   0.000000009   0.000004700   0.000000512   0.000008007  -0.057835040   0.006938714  -0.009002708  -0.000113369
                        -0.000000014  -0.000007097  -0.000013951  -0.000218154  -0.116877004   0.014022228  -0.006473285  -0.000081516

   15   15.1  1.5  1.5   0.000000000   0.000000094   0.000000000   0.000000002   0.000000003  -0.000000000   0.000000003   0.000000000
                         0.000000000   0.000000062   0.000000000   0.000000000  -0.000000002   0.000000000  -0.000000004  -0.000000000

   16   16.1  1.5  1.5  -0.000000006   0.000000000  -0.000000015   0.000000001   0.000000003   0.000000027  -0.000000000   0.000000021
                        -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000

   17   17.1  1.5  1.5  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000
                         0.000000004  -0.000000000  -0.000000015   0.000000001   0.000000003   0.000000022   0.000000000  -0.000000012

   18    1.1  1.5  0.5   0.000171071   0.085693374   0.000576257   0.009011309   0.000035119  -0.000004213  -0.000006858  -0.000000086
                        -0.000258348  -0.129412268  -0.015700796  -0.245523514   0.000070971  -0.000008515  -0.000004931  -0.000000062

   19    2.1  1.5  0.5   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000
                        -0.024778424   0.000049466   0.505422583  -0.032320883   0.000033226   0.000276946  -0.000000383   0.000030423

   20    3.1  1.5  0.5   0.000355752   0.178203691  -0.025882356  -0.404739167   0.000173372  -0.000020800   0.000017307   0.000000218
                         0.000235569   0.118001761  -0.000949945  -0.014854910  -0.000085791   0.000010293  -0.000024070  -0.000000303

   21    4.1  1.5  0.5  -0.000104612  -0.052402207   0.007610928   0.119017006  -0.000063988   0.000007677  -0.000014697  -0.000000185
                        -0.000069271  -0.034699353   0.000279340   0.004368213   0.000031664  -0.000003799   0.000020441   0.000000257

   22    5.1  1.5  0.5   0.000222960   0.111685644   0.000751044   0.011744564   0.000048072  -0.000005767   0.000007774   0.000000098
                        -0.000336710  -0.168665228  -0.020463064  -0.319994189   0.000097147  -0.000011655   0.000005590   0.000000070

   23    6.1  1.5  0.5  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000
                        -0.377398091   0.000753407  -0.021445635   0.001371411  -0.000005674  -0.000047297   0.000000575  -0.000045629

   24    7.1  1.5  0.5  -0.377696777   0.000754004  -0.014666626   0.000937905  -0.000000196  -0.000001637  -0.000000306   0.000024303
                         0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000

   25    8.1  1.5  0.5  -0.000000145  -0.000072656   0.000010551   0.000164993  -0.276099796   0.033124859  -0.017225546  -0.000216917
                        -0.000000096  -0.000048111   0.000000387   0.000006056   0.136624334  -0.016391399   0.023956395   0.000301677

   26    9.1  1.5  0.5   0.000000113   0.000056501   0.000000380   0.000005941   0.096337553  -0.011558023  -0.014332770  -0.000180489
                        -0.000000170  -0.000085327  -0.000010352  -0.000161876   0.194685515  -0.023357244  -0.010305799  -0.000129778

   27   10.1  1.5  0.5   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000
                         0.000029871  -0.000000060   0.000289441  -0.000018509   0.080714724   0.672767200  -0.001176127   0.093397121

   28   11.1  1.5  0.5   0.000000117   0.000058824   0.000000396   0.000006185   0.105171810  -0.012617906   0.020375086   0.000256578
                        -0.000000177  -0.000088835  -0.000010776  -0.000168515   0.212538385  -0.025499128   0.014650451   0.000184489

   29   12.1  1.5  0.5   0.000000159   0.000079402  -0.000011531  -0.000180325   0.346169869  -0.041531462   0.051637409   0.000650257
                         0.000000105   0.000052578  -0.000000423  -0.000006618  -0.171297583   0.020551295  -0.071814627  -0.000904344

   30   13.1  1.5  0.5   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000
                         0.000216860  -0.000000433  -0.000046759   0.000002990  -0.002684482  -0.022375487  -0.001165076   0.092519569

   31   14.1  1.5  0.5  -0.000218612   0.000000436  -0.000008488   0.000000543  -0.000468977  -0.003908978  -0.000733812   0.058272543
                         0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000

   32   15.1  1.5  0.5   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000
                        -0.000000019   0.000000000   0.000000327  -0.000000021  -0.000000009  -0.000000078   0.000000000  -0.000000016

   33   16.1  1.5  0.5   0.000000000   0.000000090   0.000000000   0.000000004  -0.000000006   0.000000001  -0.000000003  -0.000000000
                        -0.000000000  -0.000000135  -0.000000007  -0.000000116  -0.000000011   0.000000001  -0.000000002  -0.000000000

   34   17.1  1.5  0.5  -0.000000000  -0.000000127   0.000000008   0.000000127   0.000000008  -0.000000001  -0.000000000  -0.000000000
                        -0.000000000  -0.000000084   0.000000000   0.000000005  -0.000000004   0.000000000   0.000000001   0.000000000

   35    1.1  1.5 -0.5  -0.155212401   0.000309854   0.245688827  -0.015711367  -0.000009500  -0.000079185  -0.000000106   0.000008447
                        -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000

   36    2.1  1.5 -0.5   0.000041243   0.020659639   0.032299136   0.505082507   0.000248218  -0.000029780   0.000017760   0.000000224
                         0.000027310   0.013680265   0.001185457   0.018537754  -0.000122828   0.000014736  -0.000024700  -0.000000311

   37    3.1  1.5 -0.5   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000
                         0.213731072  -0.000426676   0.405011681  -0.025899783  -0.000023207  -0.000193437   0.000000373  -0.000029646

   38    4.1  1.5 -0.5  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000
                        -0.062849315   0.000125467  -0.119097141   0.007616052   0.000008565   0.000071394  -0.000000317   0.000025176

   39    5.1  1.5 -0.5  -0.202290983   0.000403837   0.320209643  -0.020476842  -0.000013004  -0.000108390   0.000000121  -0.000009575
                        -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000

   40    6.1  1.5 -0.5   0.000628172   0.314665210  -0.001370488  -0.021431205  -0.000042391   0.000005086  -0.000026638  -0.000000335
                         0.000415959   0.208362963  -0.000050300  -0.000786577   0.000020976  -0.000002517   0.000037047   0.000000467

   41    7.1  1.5 -0.5  -0.000416288  -0.208527869   0.000034400   0.000537939  -0.000000726   0.000000087   0.000019732   0.000000248
                         0.000628670   0.314914248  -0.000937274  -0.014656758  -0.000001467   0.000000176   0.000014188   0.000000179

   42    8.1  1.5 -0.5  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000
                        -0.000087141   0.000000174  -0.000165104   0.000010558   0.036958548   0.308054064  -0.000371567   0.029506412

   43    9.1  1.5 -0.5  -0.000102338   0.000000204   0.000161985  -0.000010359  -0.026060482  -0.217217342  -0.000222303   0.017653266
                        -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000

   44   10.1  1.5 -0.5  -0.000000050  -0.000024906   0.000018497   0.000289246   0.602981453  -0.072342233   0.054524300   0.000686611
                        -0.000000033  -0.000016492   0.000000679   0.000010616  -0.298377400   0.035797597  -0.075829565  -0.000954903

   45   11.1  1.5 -0.5  -0.000106545   0.000000213   0.000168628  -0.000010783  -0.028450256  -0.237136405   0.000316020  -0.025095414
                        -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000

   46   12.1  1.5 -0.5   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000
                         0.000095232  -0.000000190   0.000180446  -0.000011539  -0.046338084  -0.386233660   0.001113855  -0.088452036

   47   13.1  1.5 -0.5  -0.000000361  -0.000180813  -0.000002988  -0.000046728  -0.020054491   0.002406022   0.054011993   0.000680160
                        -0.000000239  -0.000119729  -0.000000110  -0.000001715   0.009923700  -0.001190588  -0.075117076  -0.000945931

   48   14.1  1.5 -0.5  -0.000000241  -0.000120697   0.000000020   0.000000311  -0.001733662   0.000207995   0.047311754   0.000595785
                         0.000000364   0.000182274  -0.000000542  -0.000008482  -0.003503502   0.000420330   0.034018925   0.000428392

   49   15.1  1.5 -0.5   0.000000000   0.000000016   0.000000021   0.000000327  -0.000000070   0.000000008  -0.000000009  -0.000000000
                         0.000000000   0.000000011   0.000000001   0.000000012   0.000000034  -0.000000004   0.000000013   0.000000000

   50   16.1  1.5 -0.5  -0.000000162   0.000000000   0.000000116  -0.000000007   0.000000002   0.000000013  -0.000000000   0.000000003
                        -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000

   51   17.1  1.5 -0.5   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000
                        -0.000000153   0.000000000  -0.000000127   0.000000008  -0.000000001  -0.000000009  -0.000000000   0.000000001

   52    1.1  1.5 -1.5   0.000473270   0.237071297   0.000301747   0.004718613   0.000005278  -0.000000633   0.000173792   0.000002189
                        -0.000714722  -0.358019912  -0.008221445  -0.128564065   0.000010666  -0.000001280   0.000124963   0.000001574

   53    2.1  1.5 -1.5  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000
                        -0.169093449   0.000337565  -0.001505552   0.000096277  -0.000003935  -0.000032797   0.000000195  -0.000015481

   54    3.1  1.5 -1.5   0.000265643   0.133066296   0.014240476   0.222687549  -0.000109743   0.000013166   0.000023960   0.000000302
                         0.000175902   0.088112974   0.000522660   0.008173174   0.000054305  -0.000006515  -0.000033322  -0.000000420

   55    4.1  1.5 -1.5   0.000848518   0.425041017  -0.005568961  -0.087085456  -0.000000458   0.000000055   0.000169827   0.000002139
                         0.000561866   0.281450897  -0.000204394  -0.003196248   0.000000226  -0.000000027  -0.000236187  -0.000002974

   56    5.1  1.5 -1.5  -0.000350216  -0.175430856   0.000473178   0.007399391   0.000040124  -0.000004814  -0.000154609  -0.000001947
                         0.000528889   0.264931859  -0.012892280  -0.201604931   0.000081085  -0.000009728  -0.000111170  -0.000001400

   57    6.1  1.5 -1.5   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000
                        -0.012429612   0.000024813   0.376975959  -0.024106948   0.000008407   0.000070071  -0.000000119   0.000009447

   58    7.1  1.5 -1.5   0.014695715  -0.000029337  -0.376921826   0.024103486  -0.000006526  -0.000054393   0.000000058  -0.000004626
                         0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000

   59    8.1  1.5 -1.5  -0.000000386  -0.000193393  -0.000005391  -0.000084302   0.225493498  -0.027053408  -0.259741329  -0.003270858
                        -0.000000256  -0.000128060  -0.000000198  -0.000003094  -0.111582476   0.013387021   0.361234753   0.004548940

   60    9.1  1.5 -1.5   0.000000250   0.000125272   0.000000204   0.000003191   0.023121029  -0.002773927   0.373014079   0.004697274
                        -0.000000378  -0.000189183  -0.000005561  -0.000086954   0.046724556  -0.005605742   0.268211106   0.003377516

   61   10.1  1.5 -1.5  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000
                        -0.000094548   0.000000189  -0.000044775   0.000002863  -0.013287876  -0.110756089   0.000514874  -0.040886520

   62   11.1  1.5 -1.5  -0.000000232  -0.000116225   0.000000253   0.000003958   0.094140803  -0.011294470  -0.414405459  -0.005218505
                         0.000000350   0.000175521  -0.000006896  -0.000107842   0.190246173  -0.022824637  -0.297973060  -0.003752301

   63   12.1  1.5 -1.5  -0.000000341  -0.000170861   0.000007030   0.000109934  -0.135062393   0.016204006  -0.318667284  -0.004012898
                        -0.000000226  -0.000113140   0.000000258   0.000004035   0.066833839  -0.008018338   0.443185912   0.005580930

   64   13.1  1.5 -1.5  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000
                         0.000026764  -0.000000053  -0.000213700   0.000013666  -0.017849703  -0.148779482   0.000185502  -0.014730880

   65   14.1  1.5 -1.5   0.000008512  -0.000000017  -0.000218301   0.000013960  -0.015645083  -0.130403704   0.000139633  -0.011088380
                         0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000

   66   15.1  1.5 -1.5   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000
                        -0.000000112   0.000000000   0.000000002  -0.000000000   0.000000000   0.000000004  -0.000000000   0.000000004

   67   16.1  1.5 -1.5   0.000000000   0.000000003  -0.000000000  -0.000000001  -0.000000012   0.000000001  -0.000000017  -0.000000000
                        -0.000000000  -0.000000005   0.000000001   0.000000015  -0.000000024   0.000000003  -0.000000012  -0.000000000

   68   17.1  1.5 -1.5   0.000000000   0.000000004   0.000000001   0.000000015  -0.000000020   0.000000002   0.000000007   0.000000000
                         0.000000000   0.000000002   0.000000000   0.000000001   0.000000010  -0.000000001  -0.000000010  -0.000000000


   Nr   State  S   Sz       33            34            35            36            37            38            39            40

    1    1.1  1.5  1.5  -0.000063688  -0.000002895   0.000000563   0.000150025   0.000011918  -0.000002434   0.000000091  -0.000000000
                        -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000

    2    2.1  1.5  1.5   0.000000627  -0.000013791  -0.000009218   0.000000035  -0.000003511  -0.000017190   0.000000000  -0.000000004
                        -0.000008885   0.000195446  -0.000018723   0.000000070  -0.000006179  -0.000030249  -0.000000000  -0.000000006

    3    3.1  1.5  1.5   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000
                         0.000004536   0.000000206   0.000000678   0.000180582   0.000019407  -0.000003964  -0.000000163   0.000000000

    4    4.1  1.5  1.5   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000
                         0.000008804   0.000000400  -0.000000019  -0.000004957   0.000003404  -0.000000695  -0.000000057   0.000000000

    5    5.1  1.5  1.5   0.000002437   0.000000111   0.000000490   0.000130664   0.000017555  -0.000003586  -0.000000037  -0.000000000
                         0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000

    6    6.1  1.5  1.5  -0.000000079   0.000001727   0.000016113  -0.000000060  -0.000023201  -0.000113585   0.000000000  -0.000000016
                         0.000001113  -0.000024474   0.000032725  -0.000000123  -0.000040827  -0.000199879  -0.000000000  -0.000000022

    7    7.1  1.5  1.5  -0.000002102   0.000046238  -0.000020942   0.000000079   0.000041305   0.000202218   0.000000000  -0.000000056
                        -0.000000148   0.000003263   0.000010311  -0.000000039  -0.000023472  -0.000114915   0.000000000   0.000000041

    8    8.1  1.5  1.5  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000
                        -0.020437343  -0.000929052  -0.001367473  -0.364443384  -0.044089828   0.009005679  -0.002643881  -0.000000000

    9    9.1  1.5  1.5  -0.151293769  -0.006877593   0.001471314   0.392117974   0.033017687  -0.006744111   0.278156244  -0.000000000
                         0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000

   10   10.1  1.5  1.5   0.001509095  -0.033197173  -0.029408252   0.000110346   0.002956328   0.014473531   0.000000000   0.235332180
                        -0.021386319   0.470457745  -0.059729506   0.000224118   0.005202314   0.025469389   0.000000000   0.318687975

   11   11.1  1.5  1.5   0.022937879   0.001042722   0.001019280   0.271646890   0.038711928  -0.007907202   0.441396876  -0.000000000
                         0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000

   12   12.1  1.5  1.5  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000
                        -0.012690611  -0.000576897   0.000878774   0.234200975   0.017062255  -0.003485094  -0.152940487   0.000000000

   13   13.1  1.5  1.5  -0.000117633   0.002587700  -0.033415696   0.000125383   0.056208460   0.275184293   0.000000000   0.178484390
                         0.001667051  -0.036671896  -0.067868809   0.000254659   0.098911252   0.484247800   0.000000000   0.241704423

   14   14.1  1.5  1.5  -0.005041319   0.110899282  -0.050233267   0.000188486   0.099069036   0.485020272  -0.000000000  -0.098279158
                        -0.000355733   0.007825448   0.024732710  -0.000092803  -0.056298124  -0.275623267   0.000000000   0.072573333

   15   15.1  1.5  1.5  -0.000000000   0.000000004   0.000000002  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000006
                         0.000000003  -0.000000061   0.000000004  -0.000000000  -0.000000000  -0.000000001   0.000000000   0.000000008

   16   16.1  1.5  1.5  -0.000000003  -0.000000000   0.000000000   0.000000057   0.000000006  -0.000000001  -0.000000019   0.000000000
                        -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000

   17   17.1  1.5  1.5  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000
                         0.000000011   0.000000000  -0.000000000  -0.000000069  -0.000000008   0.000000002  -0.000000034   0.000000000

   18    1.1  1.5  0.5   0.000006080  -0.000133742  -0.000070938   0.000000266   0.000025135   0.000123057   0.000000000  -0.000000033
                         0.000000429  -0.000009437   0.000034927  -0.000000131  -0.000014284  -0.000069930  -0.000000000   0.000000024

   19    2.1  1.5  0.5   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000
                         0.000056734   0.000002579  -0.000000117  -0.000031289  -0.000004980   0.000001017   0.000000019  -0.000000000

   20    3.1  1.5  0.5  -0.000000507   0.000011151   0.000024710  -0.000000093   0.000008454   0.000041387  -0.000000000  -0.000000011
                         0.000007184  -0.000158027   0.000050187  -0.000000188   0.000014876   0.000072829   0.000000000  -0.000000015

   21    4.1  1.5  0.5   0.000000256  -0.000005622   0.000021014  -0.000000079   0.000015637   0.000076553   0.000000000   0.000000007
                        -0.000003622   0.000079670   0.000042680  -0.000000160   0.000027516   0.000134713  -0.000000000   0.000000009

   22    5.1  1.5  0.5   0.000009140  -0.000201056   0.000060105  -0.000000226  -0.000012446  -0.000060935   0.000000000   0.000000058
                         0.000000645  -0.000014187  -0.000029593   0.000000111   0.000007073   0.000034628  -0.000000000  -0.000000043

   23    6.1  1.5  0.5   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000
                         0.000149912   0.000006815  -0.000000704  -0.000187704   0.000000042  -0.000000009   0.000000038   0.000000000

   24    7.1  1.5  0.5   0.000112372   0.000005108   0.000000813   0.000216743   0.000042518  -0.000008685   0.000000028   0.000000000
                        -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000

   25    8.1  1.5  0.5   0.000722672  -0.015897378  -0.076893946   0.000288523  -0.036769907  -0.180017401   0.000000000   0.263074326
                        -0.010241427   0.225291615  -0.156175127   0.000586004  -0.064704807  -0.316780544   0.000000000   0.356256522

   26    9.1  1.5  0.5   0.016904515  -0.371866710  -0.153406365   0.000575615   0.056630985   0.277252883   0.000000000   0.152417000
                         0.001192843  -0.026240239   0.075530727  -0.000283408  -0.032181783  -0.157554951  -0.000000000  -0.112550921

   27   10.1  1.5  0.5   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000
                         0.060844559   0.002765904   0.000064245   0.017121980  -0.011709350   0.002391723  -0.278537246   0.000000000

   28   11.1  1.5  0.5   0.020161710  -0.443518697   0.162358812  -0.000609207  -0.036362158  -0.178021151  -0.000000000   0.154101878
                         0.001422682  -0.031296258  -0.079938528   0.000299947   0.020663583   0.101164372  -0.000000000  -0.113795103

   29   12.1  1.5  0.5  -0.001153114   0.025366271  -0.012599225   0.000047275  -0.021625831  -0.105875327  -0.000000000   0.023831226
                         0.016341487  -0.359481164  -0.025589603   0.000096018  -0.038055447  -0.186311121   0.000000000   0.032272361

   30   13.1  1.5  0.5  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000
                        -0.379444485  -0.017248990   0.001711132   0.456031435   0.002307863  -0.000471398  -0.285379292   0.000000000

   31   14.1  1.5  0.5   0.269402868   0.012246659   0.001950124   0.519725019   0.101950774  -0.020824212   0.113567269  -0.000000000
                        -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000

   32   15.1  1.5  0.5  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000
                        -0.000000024  -0.000000001   0.000000000   0.000000011  -0.000000005   0.000000001   0.000000007  -0.000000000

   33   16.1  1.5  0.5   0.000000001  -0.000000028   0.000000002  -0.000000000   0.000000001   0.000000004  -0.000000000   0.000000030
                         0.000000000  -0.000000002  -0.000000001   0.000000000  -0.000000000  -0.000000002   0.000000000  -0.000000022

   34   17.1  1.5  0.5   0.000000000  -0.000000002  -0.000000001   0.000000000  -0.000000000  -0.000000002   0.000000000  -0.000000006
                        -0.000000001   0.000000031  -0.000000002   0.000000000  -0.000000001  -0.000000003   0.000000000  -0.000000008

   35    1.1  1.5 -0.5  -0.000134075  -0.000006095   0.000000297   0.000079071  -0.000141538   0.000028910   0.000000041  -0.000000000
                         0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000

   36    2.1  1.5 -0.5   0.000000182  -0.000003993   0.000013821  -0.000000052   0.000000503   0.000002460   0.000000000  -0.000000011
                        -0.000002573   0.000056593   0.000028071  -0.000000105   0.000000884   0.000004329  -0.000000000  -0.000000015

   37    3.1  1.5 -0.5   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000
                         0.000158420   0.000007202   0.000000210   0.000055940   0.000083767  -0.000017110  -0.000000019  -0.000000000

   38    4.1  1.5 -0.5  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000
                        -0.000079868  -0.000003631   0.000000179   0.000047573   0.000154945  -0.000031649   0.000000011   0.000000000

   39    5.1  1.5 -0.5  -0.000201556  -0.000009162  -0.000000251  -0.000066995   0.000070086  -0.000014316  -0.000000073   0.000000000
                         0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000

   40    6.1  1.5 -0.5   0.000000480  -0.000010552   0.000082913  -0.000000311  -0.000000004  -0.000000021  -0.000000000  -0.000000023
                        -0.000006798   0.000149540   0.000168399  -0.000000632  -0.000000007  -0.000000036  -0.000000000  -0.000000031

   41    7.1  1.5 -0.5   0.000005096  -0.000112093   0.000194452  -0.000000730   0.000007551   0.000036966  -0.000000000   0.000000022
                         0.000000360  -0.000007910  -0.000095740   0.000000359  -0.000004291  -0.000021007  -0.000000000  -0.000000017

   42    8.1  1.5 -0.5  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000
                        -0.225851806  -0.010266892  -0.000653182  -0.174078572  -0.364357212   0.074422699   0.442862067  -0.000000000

   43    9.1  1.5 -0.5  -0.372791363  -0.016946549   0.000641602   0.170992408  -0.318892966   0.065136285  -0.189469395   0.000000000
                         0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000

   44   10.1  1.5 -0.5   0.000194688  -0.004282760  -0.007563117   0.000028379   0.001181675   0.005785220   0.000000000   0.165460092
                        -0.002759044   0.060693643  -0.015361037   0.000057638   0.002079419   0.010180379   0.000000000   0.224066855

   45   11.1  1.5 -0.5  -0.444621513  -0.020211842  -0.000679044  -0.180971136   0.204757809  -0.041823321  -0.191563865   0.000000000
                         0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000

   46   12.1  1.5 -0.5   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000
                         0.360375020   0.016382120  -0.000107025  -0.028523118  -0.214292834   0.043770922   0.040117734   0.000000000

   47   13.1  1.5 -0.5  -0.001214131   0.026708543  -0.201438100   0.000755841  -0.000232903  -0.001140242   0.000000000   0.169524487
                         0.017206207  -0.378503331  -0.409130006   0.001535147  -0.000409845  -0.002006509   0.000000000   0.229570879

   48   14.1  1.5 -0.5   0.012216283  -0.268734655   0.466272900  -0.001749560   0.018105049   0.088638349  -0.000000000   0.091358197
                         0.000862024  -0.018962874  -0.229572815   0.000861409  -0.010288586  -0.050370660  -0.000000000  -0.067462614

   49   15.1  1.5 -0.5  -0.000000000   0.000000002  -0.000000005   0.000000000   0.000000000   0.000000002  -0.000000000  -0.000000004
                         0.000000001  -0.000000024  -0.000000010   0.000000000   0.000000001   0.000000004  -0.000000000  -0.000000006

   50   16.1  1.5 -0.5  -0.000000028  -0.000000001  -0.000000000  -0.000000002  -0.000000004   0.000000001  -0.000000037  -0.000000000
                         0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000

   51   17.1  1.5 -0.5  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000
                        -0.000000031  -0.000000001  -0.000000000  -0.000000002  -0.000000004   0.000000001  -0.000000010   0.000000000

   52    1.1  1.5 -1.5   0.000002888  -0.000063530  -0.000134595   0.000000505  -0.000002116  -0.000010362  -0.000000000  -0.000000073
                         0.000000204  -0.000004483   0.000066269  -0.000000249   0.000001203   0.000005888   0.000000000   0.000000054

   53    2.1  1.5 -1.5   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000
                         0.000195932   0.000008907   0.000000078   0.000020869   0.000034793  -0.000007107   0.000000007  -0.000000000

   54    3.1  1.5 -1.5  -0.000000015   0.000000319   0.000079767  -0.000000299   0.000001959   0.000009589   0.000000000  -0.000000097
                         0.000000206  -0.000004525   0.000162010  -0.000000608   0.000003446   0.000016873  -0.000000000  -0.000000131

   55    4.1  1.5 -1.5  -0.000000028   0.000000620  -0.000002190   0.000000008   0.000000344   0.000001682  -0.000000000  -0.000000034
                         0.000000399  -0.000008782  -0.000004448   0.000000017   0.000000605   0.000002960  -0.000000000  -0.000000046

   56    5.1  1.5 -1.5  -0.000000111   0.000002431  -0.000117226   0.000000440  -0.000003118  -0.000015263  -0.000000000   0.000000030
                        -0.000000008   0.000000172   0.000057717  -0.000000217   0.000001772   0.000008673  -0.000000000  -0.000000022

   57    6.1  1.5 -1.5  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000
                        -0.000024535  -0.000001115  -0.000000137  -0.000036477   0.000229898  -0.000046958   0.000000027   0.000000000

   58    7.1  1.5 -1.5  -0.000046353  -0.000002107  -0.000000088  -0.000023342   0.000232589  -0.000047508  -0.000000070  -0.000000000
                         0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000

   59    8.1  1.5 -1.5   0.000065395  -0.001438555  -0.160981847   0.000604040  -0.004449422  -0.021783393   0.000000000  -0.001570550
                        -0.000926747   0.020386652  -0.326961504   0.001226833  -0.007829744  -0.038332711  -0.000000000  -0.002126847

   60    9.1  1.5 -1.5   0.006860534  -0.150918507  -0.351789848   0.001319994  -0.005863485  -0.028706337  -0.000000000  -0.223760361
                         0.000484104  -0.010649347   0.173206261  -0.000649909   0.003332052   0.016312997   0.000000000   0.165233764

   61   10.1  1.5 -1.5   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000
                         0.471627546   0.021439497   0.000249811   0.066576716  -0.029294588   0.005983640  -0.396160649   0.000000000

   62   11.1  1.5 -1.5  -0.001040136   0.022880985  -0.243708844   0.000914450  -0.006874703  -0.033657041  -0.000000000  -0.355077862
                        -0.000073396   0.001614564   0.119991802  -0.000450236   0.003906699   0.019126342   0.000000000   0.262203955

   63   12.1  1.5 -1.5   0.000040607  -0.000893274   0.103451201  -0.000388172   0.001721875   0.008429922  -0.000000000  -0.090851573
                        -0.000575466   0.012659134   0.210114126  -0.000788395   0.003030021   0.014834317   0.000000000  -0.123031639

   64   13.1  1.5 -1.5  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000
                        -0.036763081  -0.001671196   0.000283852   0.075649084  -0.556976056   0.113766545  -0.300462486   0.000000000

   65   14.1  1.5 -1.5  -0.111175035  -0.005053854  -0.000210094  -0.055991857   0.557864544  -0.113948026  -0.122170707   0.000000000
                         0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000

   66   15.1  1.5 -1.5   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000
                        -0.000000061  -0.000000003  -0.000000000  -0.000000004   0.000000001  -0.000000000  -0.000000010  -0.000000000

   67   16.1  1.5 -1.5   0.000000000  -0.000000003  -0.000000051   0.000000000  -0.000000001  -0.000000005   0.000000000   0.000000015
                         0.000000000  -0.000000000   0.000000025  -0.000000000   0.000000001   0.000000003  -0.000000000  -0.000000011

   68   17.1  1.5 -1.5  -0.000000000   0.000000001  -0.000000030   0.000000000  -0.000000001  -0.000000004   0.000000000  -0.000000020
                         0.000000000  -0.000000011  -0.000000062   0.000000000  -0.000000001  -0.000000007  -0.000000000  -0.000000027


   Nr   State  S   Sz       41            42            43            44            45            46            47            48

    1    1.1  1.5  1.5  -0.000000073   0.000000025   0.000000008  -0.000000095   0.000000001  -0.000000083   0.000088204   0.000000000
                        -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000

    2    2.1  1.5  1.5  -0.000000000  -0.000000000   0.000000005   0.000000000   0.000000005   0.000000000  -0.000000000   0.000044006
                         0.000000000   0.000000000  -0.000000017  -0.000000001   0.000000007   0.000000000   0.000000000  -0.000161043

    3    3.1  1.5  1.5   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000
                        -0.000000060   0.000000021   0.000000003  -0.000000041  -0.000000000   0.000000019  -0.000017079  -0.000000000

    4    4.1  1.5  1.5   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000
                        -0.000000006   0.000000002  -0.000000012   0.000000156  -0.000000001   0.000000058  -0.000132860  -0.000000000

    5    5.1  1.5  1.5  -0.000000129   0.000000045  -0.000000008   0.000000103   0.000000000  -0.000000010  -0.000102343  -0.000000000
                         0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000

    6    6.1  1.5  1.5   0.000000001   0.000000004  -0.000000014  -0.000000001   0.000000040   0.000000001  -0.000000000  -0.000007339
                        -0.000000003  -0.000000009   0.000000047   0.000000004   0.000000056   0.000000001   0.000000000   0.000026856

    7    7.1  1.5  1.5  -0.000000014  -0.000000039   0.000000016   0.000000001  -0.000000021  -0.000000000   0.000000000   0.000024689
                        -0.000000006  -0.000000016   0.000000005   0.000000000   0.000000015   0.000000000   0.000000000   0.000006747

    8    8.1  1.5  1.5   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000
                        -0.392579143   0.135573724  -0.015399371   0.194033765   0.001643863  -0.104024719  -0.248866737  -0.000000000

    9    9.1  1.5  1.5   0.139558761  -0.048195380  -0.028430111   0.358222510  -0.000729458   0.046160556  -0.227977142  -0.000000000
                         0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000

   10   10.1  1.5  1.5   0.001222081   0.003538765  -0.150432460  -0.011938980  -0.102064117  -0.001612880   0.000000000  -0.133146063
                        -0.003007101  -0.008707626   0.506781256   0.040220385  -0.144158790  -0.002278086  -0.000000000   0.487252595

   11   11.1  1.5  1.5   0.172233062  -0.059479160  -0.009522647   0.119986399   0.000896906  -0.056756814   0.332936721   0.000000000
                         0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000

   12   12.1  1.5  1.5  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000
                         0.401396463  -0.138618707  -0.003769656   0.047498084  -0.003496393   0.221253999  -0.313240278   0.000000000

   13   13.1  1.5  1.5  -0.034425677  -0.099686006   0.052789338   0.004189594   0.172442487   0.002725043  -0.000000000   0.004940052
                         0.084709205   0.245291391  -0.177838262  -0.014114025   0.243563566   0.003848942   0.000000000  -0.018078289

   14   14.1  1.5  1.5  -0.003416703  -0.009893703   0.246912386   0.019596051   0.368503283   0.005823317  -0.000000000  -0.073867797
                        -0.001388542  -0.004020784   0.073293235   0.005816873  -0.260899541  -0.004122896  -0.000000000  -0.020185026

   15   15.1  1.5  1.5   0.000000000   0.000000000   0.000000001   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000015
                        -0.000000000  -0.000000000  -0.000000004  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000053

   16   16.1  1.5  1.5   0.000000027  -0.000000009   0.000000001  -0.000000010  -0.000000000   0.000000015  -0.000000011  -0.000000000
                        -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000

   17   17.1  1.5  1.5  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000
                         0.000000003  -0.000000001   0.000000002  -0.000000021  -0.000000000   0.000000008  -0.000000005   0.000000000

   18    1.1  1.5  0.5   0.000000015   0.000000042  -0.000000002  -0.000000000  -0.000000074  -0.000000001   0.000000000  -0.000083757
                         0.000000006   0.000000017  -0.000000001  -0.000000000   0.000000052   0.000000001   0.000000000  -0.000022887

   19    2.1  1.5  0.5   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000
                         0.000000001  -0.000000000  -0.000000001   0.000000009   0.000000000  -0.000000009  -0.000023838   0.000000000

   20    3.1  1.5  0.5   0.000000007   0.000000020  -0.000000001  -0.000000000  -0.000000010  -0.000000000   0.000000000   0.000035553
                        -0.000000017  -0.000000049   0.000000004   0.000000000  -0.000000014  -0.000000000   0.000000000  -0.000130107

   21    4.1  1.5  0.5   0.000000014   0.000000042   0.000000013   0.000000001  -0.000000035  -0.000000001   0.000000000  -0.000012414
                        -0.000000035  -0.000000102  -0.000000045  -0.000000004  -0.000000050  -0.000000001  -0.000000000   0.000045429

   22    5.1  1.5  0.5  -0.000000009  -0.000000027  -0.000000005  -0.000000000   0.000000044   0.000000001  -0.000000000  -0.000097850
                        -0.000000004  -0.000000011  -0.000000002  -0.000000000  -0.000000031  -0.000000000  -0.000000000  -0.000026738

   23    6.1  1.5  0.5  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000
                         0.000000022  -0.000000008   0.000000004  -0.000000046   0.000000000  -0.000000014  -0.000067774  -0.000000000

   24    7.1  1.5  0.5  -0.000000019   0.000000007   0.000000005  -0.000000066   0.000000000  -0.000000029  -0.000056424   0.000000000
                         0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000

   25    8.1  1.5  0.5   0.003829564   0.011089220   0.032313318   0.002564527   0.216288808   0.003417930   0.000000000   0.071681947
                        -0.009423178  -0.027286579  -0.108858047  -0.008639452   0.305493584   0.004827599  -0.000000000  -0.262322550

   26    9.1  1.5  0.5  -0.088440482  -0.256096002  -0.283061218  -0.022464981  -0.296296180  -0.004682256  -0.000000000   0.280967808
                        -0.035942062  -0.104076981  -0.084023620  -0.006668483   0.209777065   0.003315027  -0.000000000   0.076776928

   27   10.1  1.5  0.5   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000
                         0.070443766  -0.024327129   0.007295734  -0.091927046  -0.001604856   0.101556306   0.028990623  -0.000000000

   28   11.1  1.5  0.5   0.150317858   0.435273549   0.024090942   0.001911963   0.165796005   0.002620011   0.000000000   0.262759980
                         0.061088923   0.176894433   0.007151132   0.000567545  -0.117383219  -0.001854962   0.000000000   0.071801479

   29   12.1  1.5  0.5   0.029468537   0.085331675  -0.042376375  -0.003363175   0.280106006   0.004426408   0.000000000  -0.086675539
                        -0.072511465  -0.209970547   0.142758765   0.011329962   0.395631141   0.006252008  -0.000000000   0.317192116

   30   13.1  1.5  0.5   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000
                        -0.271868173   0.093887261  -0.026146344   0.329446802  -0.001181518   0.074767212  -0.212889218  -0.000000000

   31   14.1  1.5  0.5  -0.174579365   0.060289435   0.034688370  -0.437077266   0.003405553  -0.215505636   0.168802234  -0.000000000
                        -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000

   32   15.1  1.5  0.5   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000
                         0.000000009  -0.000000003   0.000000000  -0.000000000  -0.000000000   0.000000011   0.000000019  -0.000000000

   33   16.1  1.5  0.5   0.000000001   0.000000002   0.000000026   0.000000002  -0.000000014  -0.000000000  -0.000000000   0.000000010
                         0.000000000   0.000000001   0.000000008   0.000000001   0.000000010   0.000000000   0.000000000   0.000000003

   34   17.1  1.5  0.5  -0.000000002  -0.000000005   0.000000017   0.000000001   0.000000006   0.000000000   0.000000000  -0.000000001
                         0.000000005   0.000000013  -0.000000058  -0.000000005   0.000000009   0.000000000   0.000000000   0.000000003

   35    1.1  1.5 -0.5   0.000000046  -0.000000016   0.000000000  -0.000000002  -0.000000001   0.000000090  -0.000086828  -0.000000000
                         0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000

   36    2.1  1.5 -0.5  -0.000000000  -0.000000000  -0.000000003  -0.000000000   0.000000005   0.000000000   0.000000000   0.000006284
                         0.000000000   0.000000001   0.000000008   0.000000001   0.000000008   0.000000000  -0.000000000  -0.000022995

   37    3.1  1.5 -0.5   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000
                         0.000000052  -0.000000018   0.000000000  -0.000000005   0.000000000  -0.000000017   0.000134877   0.000000000

   38    4.1  1.5 -0.5  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000
                         0.000000111  -0.000000038  -0.000000004   0.000000047   0.000000001  -0.000000061  -0.000047095  -0.000000000

   39    5.1  1.5 -0.5  -0.000000029   0.000000010   0.000000000  -0.000000006   0.000000001  -0.000000054  -0.000101437   0.000000000
                         0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000

   40    6.1  1.5 -0.5  -0.000000003  -0.000000008   0.000000013   0.000000001   0.000000008   0.000000000  -0.000000000   0.000017865
                         0.000000007   0.000000020  -0.000000044  -0.000000003   0.000000012   0.000000000   0.000000000  -0.000065377

   41    7.1  1.5 -0.5   0.000000006   0.000000018   0.000000064   0.000000005  -0.000000024  -0.000000000   0.000000000   0.000054428
                         0.000000002   0.000000007   0.000000019   0.000000001   0.000000017   0.000000000   0.000000000   0.000014873

   42    8.1  1.5 -0.5  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000
                         0.029453831  -0.010171619  -0.009012044   0.113552740  -0.005915061   0.374308934   0.271940107  -0.000000000

   43    9.1  1.5 -0.5  -0.276436575   0.095464918   0.023433822  -0.295268728  -0.005736978   0.363039727   0.291268958   0.000000000
                        -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000

   44   10.1  1.5 -0.5  -0.009159042  -0.026521724   0.026159367   0.002076122  -0.058682789  -0.000927342  -0.000000000  -0.007641772
                         0.022537107   0.065260419  -0.088126439  -0.006994101  -0.082885545  -0.001309809   0.000000000   0.027965327

   45   11.1  1.5 -0.5   0.469845403  -0.162256941  -0.001994420   0.025129906   0.003210194  -0.203143141   0.272393575  -0.000000000
                         0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000

   46   12.1  1.5 -0.5  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000
                         0.226647580  -0.078270730   0.011818587  -0.148915487  -0.007660333   0.484750838  -0.328821362  -0.000000000

   47   13.1  1.5 -0.5   0.035348082   0.102357001  -0.093749558  -0.007440376  -0.043203113  -0.000682722  -0.000000000   0.056116451
                        -0.086978910  -0.251863748   0.315826243   0.025065357  -0.061021529  -0.000964300   0.000000000  -0.205360082

   48   14.1  1.5 -0.5   0.055853257   0.161733582   0.419006862   0.033254224  -0.175885701  -0.002779455  -0.000000000  -0.162832298
                         0.022698669   0.065728254   0.124377594   0.009871152   0.124526702   0.001967848  -0.000000000  -0.044495359

   49   15.1  1.5 -0.5  -0.000000001  -0.000000004   0.000000000   0.000000000  -0.000000006  -0.000000000  -0.000000000  -0.000000005
                         0.000000003   0.000000009  -0.000000000  -0.000000000  -0.000000009  -0.000000000   0.000000000   0.000000018

   50   16.1  1.5 -0.5   0.000000002  -0.000000001  -0.000000002   0.000000027  -0.000000000   0.000000017   0.000000010   0.000000000
                        -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000

   51   17.1  1.5 -0.5   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000
                        -0.000000014   0.000000005  -0.000000005   0.000000061  -0.000000000   0.000000011  -0.000000003  -0.000000000

   52    1.1  1.5 -1.5  -0.000000023  -0.000000068  -0.000000091  -0.000000007   0.000000068   0.000000001  -0.000000000   0.000085084
                        -0.000000010  -0.000000028  -0.000000027  -0.000000002  -0.000000048  -0.000000001  -0.000000000   0.000023250

   53    2.1  1.5 -1.5   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000
                         0.000000000  -0.000000000   0.000000001  -0.000000018   0.000000000  -0.000000008  -0.000166947  -0.000000000

   54    3.1  1.5 -1.5  -0.000000008  -0.000000023  -0.000000012  -0.000000001   0.000000011   0.000000000   0.000000000  -0.000004502
                         0.000000019   0.000000056   0.000000040   0.000000003   0.000000016   0.000000000  -0.000000000   0.000016475

   55    4.1  1.5 -1.5  -0.000000001  -0.000000002   0.000000044   0.000000004   0.000000033   0.000000001  -0.000000000  -0.000035021
                         0.000000002   0.000000006  -0.000000149  -0.000000012   0.000000047   0.000000001  -0.000000000   0.000128161

   56    5.1  1.5 -1.5  -0.000000041  -0.000000120   0.000000098   0.000000008   0.000000008   0.000000000   0.000000000  -0.000098724
                        -0.000000017  -0.000000049   0.000000029   0.000000002  -0.000000006  -0.000000000  -0.000000000  -0.000026977

   57    6.1  1.5 -1.5   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000
                        -0.000000009   0.000000003  -0.000000004   0.000000049   0.000000001  -0.000000069   0.000027841  -0.000000000

   58    7.1  1.5 -1.5   0.000000042  -0.000000015   0.000000001  -0.000000017   0.000000000  -0.000000025  -0.000025595   0.000000000
                        -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000

   59    8.1  1.5 -1.5  -0.051042826  -0.147804075   0.055215530   0.004382147  -0.060109125  -0.000949882   0.000000000  -0.065599931
                         0.125598027   0.363692644  -0.186011686  -0.014762704  -0.084900149  -0.001341645  -0.000000000   0.240065203

   60    9.1  1.5 -1.5   0.044649099   0.129289841   0.343412256   0.027254704  -0.037674104  -0.000595350   0.000000000  -0.219914399
                         0.018145318   0.052543172   0.101938164   0.008090260   0.026673186   0.000421506   0.000000000  -0.060093546

   61   10.1  1.5 -1.5   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000
                        -0.009399234   0.003245942  -0.041954959   0.528637084  -0.002791247   0.176631935   0.505116784   0.000000000

   62   11.1  1.5 -1.5   0.055102603   0.159559923   0.115025714   0.009128946   0.046322278   0.000732013  -0.000000000   0.321161931
                         0.022393605   0.064844882   0.034144122   0.002709827  -0.032796074  -0.000518264   0.000000000   0.087760326

   63   12.1  1.5 -1.5   0.052189246   0.151123751   0.013516369   0.001072718   0.127848307   0.002020338  -0.000000000  -0.082568450
                        -0.128418956  -0.371861173  -0.045534336  -0.003613805   0.180577247   0.002853593   0.000000000   0.302162080

   64   13.1  1.5 -1.5  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000
                         0.264773802  -0.091437283   0.014722717  -0.185507848   0.004715953  -0.298428587  -0.018741095  -0.000000000

   65   14.1  1.5 -1.5   0.010679516  -0.003688076   0.020441165  -0.257560914  -0.007135075   0.451512170   0.076576020  -0.000000000
                         0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000

   66   15.1  1.5 -1.5   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000
                        -0.000000000   0.000000000   0.000000000  -0.000000004   0.000000000  -0.000000001   0.000000055  -0.000000000

   67   16.1  1.5 -1.5   0.000000009   0.000000025  -0.000000009  -0.000000001  -0.000000012  -0.000000000  -0.000000000  -0.000000010
                         0.000000004   0.000000010  -0.000000003  -0.000000000   0.000000009   0.000000000  -0.000000000  -0.000000003

   68   17.1  1.5 -1.5   0.000000000   0.000000001  -0.000000006  -0.000000000   0.000000005   0.000000000  -0.000000000  -0.000000001
                        -0.000000001  -0.000000003   0.000000020   0.000000002   0.000000006   0.000000000   0.000000000   0.000000005


   Nr   State  S   Sz       49            50            51            52            53            54            55            56

    1    1.1  1.5  1.5   0.000014928  -0.000000355  -0.000116464  -0.000000320  -0.000000000   0.000094650   0.000000749  -0.000241806
                         0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000

    2    2.1  1.5  1.5   0.000000229   0.000009641  -0.000000058   0.000021176   0.000056717   0.000000000   0.000068783   0.000000213
                        -0.000000107  -0.000004495  -0.000000055   0.000019876  -0.000022889  -0.000000000   0.000033717   0.000000104

    3    3.1  1.5  1.5   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000
                        -0.000140909   0.000003353   0.000081700   0.000000224  -0.000000000   0.000044769  -0.000000473   0.000152555

    4    4.1  1.5  1.5  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000
                         0.000033602  -0.000000799  -0.000001510  -0.000000004   0.000000000  -0.000221960  -0.000000623   0.000201172

    5    5.1  1.5  1.5   0.000007108  -0.000000169  -0.000116293  -0.000000319   0.000000000  -0.000205703  -0.000000225   0.000072610
                        -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000

    6    6.1  1.5  1.5   0.000001807   0.000075960  -0.000000254   0.000092652  -0.000155524  -0.000000000   0.000126244   0.000000391
                        -0.000000843  -0.000035414  -0.000000239   0.000086963   0.000062763   0.000000000   0.000061884   0.000000192

    7    7.1  1.5  1.5  -0.000000844  -0.000035471  -0.000000239   0.000087221   0.000062450   0.000000000   0.000062331   0.000000193
                        -0.000001810  -0.000076082   0.000000255  -0.000092926   0.000154748   0.000000000  -0.000127155  -0.000000394

    8    8.1  1.5  1.5   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000
                        -0.308291563   0.007334938   0.206763698   0.000567351   0.000000000  -0.132140038  -0.001254976   0.405064095

    9    9.1  1.5  1.5  -0.046870745   0.001115159   0.384304195   0.001054515   0.000000000  -0.123170219  -0.001242509   0.401040023
                         0.000000000   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000

   10   10.1  1.5  1.5   0.000416178   0.017492201   0.000017050  -0.006213632  -0.149858677  -0.000000000  -0.072371663  -0.000224223
                        -0.000194028  -0.008155087   0.000016003  -0.005832153   0.060476655   0.000000000  -0.035476246  -0.000109913

   11   11.1  1.5  1.5  -0.016405347   0.000390319   0.306897233   0.000842113  -0.000000000   0.371002078   0.000529100  -0.170775572
                         0.000000000   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000

   12   12.1  1.5  1.5  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000
                         0.303702025  -0.007225743  -0.130364893  -0.000357716   0.000000000  -0.367907069  -0.000498808   0.160998541

   13   13.1  1.5  1.5   0.005432993   0.228351751  -0.000779792   0.284185011  -0.243444651  -0.000000000   0.237459698   0.000735702
                        -0.002532931  -0.106460497  -0.000731917   0.266737768   0.098244016   0.000000000   0.116401616   0.000360637

   14   14.1  1.5  1.5   0.002524402   0.106102047   0.000715889  -0.260896670  -0.107866521  -0.000000000  -0.107658795  -0.000333550
                         0.005414700   0.227582895  -0.000762716   0.277961848  -0.267288825  -0.000000000   0.219624313   0.000680444

   15   15.1  1.5  1.5  -0.000000000  -0.000000006   0.000000000  -0.000000001  -0.000000018  -0.000000000  -0.000000023  -0.000000000
                         0.000000000   0.000000003   0.000000000  -0.000000001   0.000000007  -0.000000000  -0.000000011  -0.000000000

   16   16.1  1.5  1.5   0.000000003  -0.000000000  -0.000000028  -0.000000000  -0.000000000  -0.000000012   0.000000000  -0.000000001
                        -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000

   17   17.1  1.5  1.5  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000
                         0.000000027  -0.000000001  -0.000000008  -0.000000000  -0.000000000  -0.000000005   0.000000000  -0.000000001

   18    1.1  1.5  0.5  -0.000001298  -0.000054571   0.000000088  -0.000032025   0.000021250  -0.000000000   0.000069899   0.000000217
                        -0.000002785  -0.000117052  -0.000000094   0.000034120   0.000052657   0.000000000  -0.000142594  -0.000000442

   19    2.1  1.5  0.5  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000
                         0.000073576  -0.000001751  -0.000115069  -0.000000316   0.000000000  -0.000222182   0.000000596  -0.000192401

   20    3.1  1.5  0.5  -0.000001037  -0.000043583  -0.000000052   0.000018862   0.000242506   0.000000000  -0.000042720  -0.000000132
                         0.000000483   0.000020319  -0.000000049   0.000017704  -0.000097865  -0.000000000  -0.000020941  -0.000000065

   21    4.1  1.5  0.5  -0.000002954  -0.000124178  -0.000000181   0.000065998  -0.000071303  -0.000000000   0.000012564   0.000000039
                         0.000001377   0.000057893  -0.000000170   0.000061946   0.000028775   0.000000000   0.000006159   0.000000019

   22    5.1  1.5  0.5   0.000000703   0.000029533  -0.000000176   0.000064105   0.000027692  -0.000000000   0.000091101   0.000000282
                         0.000001507   0.000063346   0.000000187  -0.000068298   0.000068621   0.000000000  -0.000185847  -0.000000576

   23    6.1  1.5  0.5   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000
                        -0.000123011   0.000002927  -0.000065197  -0.000000179  -0.000000000   0.000144633   0.000000509  -0.000164340

   24    7.1  1.5  0.5   0.000114935  -0.000002735   0.000087085   0.000000239  -0.000000000   0.000141647   0.000000517  -0.000166909
                         0.000000000   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000

   25    8.1  1.5  0.5  -0.007224351  -0.303643536  -0.000412548   0.150347657   0.294453111   0.000000000  -0.051903098  -0.000160807
                         0.003368084   0.141562487  -0.000387220   0.141117220  -0.118828883  -0.000000000  -0.025442652  -0.000078827

   26    9.1  1.5  0.5   0.003626023   0.152403790  -0.000203141   0.074031993  -0.041743176   0.000000000  -0.137264619  -0.000425276
                         0.007777615   0.326897518   0.000216428  -0.078874404  -0.103437882  -0.000000000   0.280020296   0.000867563

   27   10.1  1.5  0.5   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000
                        -0.289187336   0.006880406   0.297439823   0.000816162  -0.000000000   0.425679519  -0.000830472   0.268048432

   28   11.1  1.5  0.5  -0.002517856  -0.105826901   0.000551599  -0.201023048  -0.043451650   0.000000000  -0.142892331  -0.000442711
                        -0.005400659  -0.226992725  -0.000587679   0.214171909  -0.107671411  -0.000000000   0.291500846   0.000903133

   29   12.1  1.5  0.5  -0.005956144  -0.250340079  -0.000383428   0.139735388  -0.321802571  -0.000000000   0.056722244   0.000175738
                         0.002776830   0.116711736  -0.000359888   0.131156480   0.129865974   0.000000000   0.027804975   0.000086146

   30   13.1  1.5  0.5   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000
                        -0.315929274   0.007516656  -0.259997668  -0.000713423  -0.000000000   0.167522456   0.001068096  -0.344745298

   31   14.1  1.5  0.5  -0.343513312   0.008172941  -0.260308190  -0.000714275   0.000000000  -0.244589422  -0.000892923   0.288205345
                        -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000

   32   15.1  1.5  0.5  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000
                        -0.000000026   0.000000001   0.000000035   0.000000000   0.000000000   0.000000077  -0.000000000   0.000000060

   33   16.1  1.5  0.5  -0.000000000  -0.000000009  -0.000000000   0.000000024   0.000000002  -0.000000000   0.000000016   0.000000000
                        -0.000000000  -0.000000020   0.000000000  -0.000000025   0.000000006  -0.000000000  -0.000000033  -0.000000000

   34   17.1  1.5  0.5   0.000000001   0.000000026  -0.000000000   0.000000033  -0.000000036  -0.000000000  -0.000000003  -0.000000000
                        -0.000000000  -0.000000012  -0.000000000   0.000000031   0.000000014   0.000000000  -0.000000001  -0.000000000

   35    1.1  1.5 -0.5  -0.000129148   0.000003073  -0.000046795  -0.000000128   0.000000000  -0.000056783   0.000000492  -0.000158805
                        -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000

   36    2.1  1.5 -0.5  -0.000001587  -0.000066685   0.000000230  -0.000083901  -0.000206037  -0.000000000   0.000172761   0.000000535
                         0.000000740   0.000031090   0.000000216  -0.000078750   0.000083148   0.000000000   0.000084687   0.000000262

   37    3.1  1.5 -0.5   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000
                        -0.000048087   0.000001144  -0.000025870  -0.000000071   0.000000000  -0.000261509   0.000000147  -0.000047576

   38    4.1  1.5 -0.5   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000
                        -0.000137010   0.000003260  -0.000090515  -0.000000248  -0.000000000   0.000076891  -0.000000043   0.000013992

   39    5.1  1.5 -0.5   0.000069892  -0.000001663   0.000093670   0.000000257   0.000000000  -0.000073998   0.000000641  -0.000206974
                         0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000

   40    6.1  1.5 -0.5   0.000002653   0.000111490   0.000000130  -0.000047537   0.000134123   0.000000000   0.000147565   0.000000457
                        -0.000001237  -0.000051978   0.000000122  -0.000044619  -0.000054127  -0.000000000   0.000072336   0.000000224

   41    7.1  1.5 -0.5  -0.000001155  -0.000048565   0.000000164  -0.000059598   0.000053009   0.000000000  -0.000073466  -0.000000228
                        -0.000002478  -0.000104170  -0.000000174   0.000063496   0.000131354   0.000000000   0.000149871   0.000000464

   42    8.1  1.5 -0.5   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000
                        -0.335021394   0.007970900  -0.206200116  -0.000565804   0.000000000  -0.317526279   0.000179088  -0.057803635

   43    9.1  1.5 -0.5   0.360678392  -0.008581336   0.108175356   0.000296829  -0.000000000   0.111543212  -0.000966191   0.311854039
                         0.000000000   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000

   44   10.1  1.5 -0.5   0.006235992   0.262102262  -0.000595092   0.216873693   0.394747354   0.000000000  -0.240686321  -0.000745698
                        -0.002907299  -0.122195416  -0.000558557   0.203558959  -0.159303419  -0.000000000  -0.117983291  -0.000365538

   45   11.1  1.5 -0.5  -0.250449656   0.005958751  -0.293734357  -0.000805995  -0.000000000   0.116108478  -0.001005804   0.324639741
                        -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000

   46   12.1  1.5 -0.5   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000
                        -0.276209674   0.006571639  -0.191645509  -0.000525867  -0.000000000   0.347018827  -0.000195716   0.063170639

   47   13.1  1.5 -0.5   0.006812651   0.286339570   0.000520181  -0.189573318   0.155349372  -0.000000000   0.309554048   0.000959065
                        -0.003176145  -0.133495157   0.000488245  -0.177934663  -0.062692469  -0.000000000   0.151741924   0.000470129

   48   14.1  1.5 -0.5   0.003453457   0.145150726  -0.000488828   0.178147175  -0.091533488  -0.000000000   0.126855490   0.000393026
                         0.007407469   0.311340107   0.000520802  -0.189799731  -0.226816238  -0.000000000  -0.258785637  -0.000801774

   49   15.1  1.5 -0.5   0.000000001   0.000000024  -0.000000000   0.000000025   0.000000071   0.000000000  -0.000000054  -0.000000000
                        -0.000000000  -0.000000011  -0.000000000   0.000000024  -0.000000029  -0.000000000  -0.000000026  -0.000000000

   50   16.1  1.5 -0.5  -0.000000022   0.000000001   0.000000035   0.000000000  -0.000000000  -0.000000007   0.000000000  -0.000000036
                        -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000

   51   17.1  1.5 -0.5  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000
                         0.000000029  -0.000000001  -0.000000045  -0.000000000  -0.000000000   0.000000039   0.000000000  -0.000000003

   52    1.1  1.5 -1.5   0.000000150   0.000006308   0.000000219  -0.000079705  -0.000035421  -0.000000000   0.000106433   0.000000330
                         0.000000322   0.000013530  -0.000000233   0.000084918  -0.000087772   0.000000000  -0.000217123  -0.000000673

   53    2.1  1.5 -1.5   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000
                        -0.000010637   0.000000253   0.000029043   0.000000080  -0.000000000   0.000061162   0.000000237  -0.000076602

   54    3.1  1.5 -1.5  -0.000003039  -0.000127711   0.000000163  -0.000059570  -0.000041515  -0.000000000   0.000136982   0.000000424
                         0.000001417   0.000059541   0.000000153  -0.000055913   0.000016754  -0.000000000   0.000067148   0.000000208

   55    4.1  1.5 -1.5   0.000000725   0.000030455  -0.000000003   0.000001101   0.000205831   0.000000000   0.000180636   0.000000560
                        -0.000000338  -0.000014198  -0.000000003   0.000001033  -0.000083065  -0.000000000   0.000088547   0.000000274

   56    5.1  1.5 -1.5   0.000000071   0.000003003   0.000000218  -0.000079587   0.000076981   0.000000000  -0.000031960  -0.000000099
                         0.000000153   0.000006442  -0.000000233   0.000084793   0.000190755   0.000000000   0.000065198   0.000000202

   57    6.1  1.5 -1.5   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000
                        -0.000083810   0.000001994   0.000127071   0.000000349   0.000000000  -0.000167710   0.000000436  -0.000140596

   58    7.1  1.5 -1.5   0.000083945  -0.000001997  -0.000127448  -0.000000350  -0.000000000   0.000166873  -0.000000439   0.000141610
                         0.000000000   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000

   59    8.1  1.5 -1.5  -0.006647953  -0.279417201   0.000413675  -0.150758585   0.122538031  -0.000000000   0.363715564   0.001126870
                         0.003099360   0.130267861   0.000388278  -0.141502919  -0.049451192  -0.000000000   0.178291642   0.000552386

   60    9.1  1.5 -1.5  -0.000471208  -0.019805121  -0.000721678   0.263006348   0.046094388   0.000000000  -0.176520420  -0.000546898
                        -0.001010714  -0.042480865   0.000768883  -0.280209520   0.114220008  -0.000000000   0.360102265   0.001115675

   61   10.1  1.5 -1.5   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000
                        -0.019299807   0.000459185  -0.008521926  -0.000023384   0.000000000  -0.161601513  -0.000249714   0.080599141

   62   11.1  1.5 -1.5  -0.000164929  -0.006932040  -0.000576317   0.210031328  -0.138841304  -0.000000000   0.075167998   0.000232887
                        -0.000353762  -0.014868834   0.000614014  -0.223769418  -0.344043070  -0.000000000  -0.153342975  -0.000475090

   63   12.1  1.5 -1.5   0.006548985   0.275257516  -0.000260823   0.095053566   0.341172962   0.000000000   0.144563974   0.000447890
                        -0.003053220  -0.128328563  -0.000244810   0.089217851  -0.137683049  -0.000000000   0.070864574   0.000219554

   64   13.1  1.5 -1.5   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000
                        -0.251949121   0.005994427   0.389756536   0.001069476   0.000000000  -0.262520828   0.000819339  -0.264454995

   65   14.1  1.5 -1.5  -0.251100814   0.005974243   0.381221539   0.001046056   0.000000000  -0.288233417   0.000757799  -0.244592018
                        -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000

   66   15.1  1.5 -1.5  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000
                         0.000000007  -0.000000000  -0.000000002  -0.000000000  -0.000000000  -0.000000019  -0.000000000   0.000000026

   67   16.1  1.5 -1.5   0.000000000   0.000000001   0.000000000  -0.000000019   0.000000004   0.000000000   0.000000001   0.000000000
                         0.000000000   0.000000003  -0.000000000   0.000000020   0.000000011   0.000000000  -0.000000001  -0.000000000

   68   17.1  1.5 -1.5   0.000000001   0.000000025  -0.000000000   0.000000006   0.000000004   0.000000000  -0.000000001  -0.000000000
                        -0.000000000  -0.000000011  -0.000000000   0.000000005  -0.000000002  -0.000000000  -0.000000000  -0.000000000


   Nr   State  S   Sz       57            58            59            60            61            62            63            64

    1    1.1  1.5  1.5   0.000000003  -0.000000231   0.000000001  -0.000000035  -0.000000000   0.000000388   0.000000035  -0.000000000
                         0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000

    2    2.1  1.5  1.5  -0.000000061  -0.000000001   0.000000493   0.000000012  -0.000000001  -0.000000000  -0.000000000  -0.000000326
                        -0.000000002  -0.000000000   0.000000180   0.000000004  -0.000000000  -0.000000000   0.000000000  -0.000000284

    3    3.1  1.5  1.5   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000
                        -0.000000004   0.000000335  -0.000000001   0.000000038  -0.000000000   0.000000622  -0.000000044  -0.000000000

    4    4.1  1.5  1.5   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000
                         0.000000001  -0.000000089  -0.000000000   0.000000003   0.000000000  -0.000000177   0.000000003   0.000000000

    5    5.1  1.5  1.5   0.000000004  -0.000000307   0.000000001  -0.000000025  -0.000000000   0.000000501   0.000000029   0.000000000
                        -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000

    6    6.1  1.5  1.5  -0.000000292  -0.000000004  -0.000000032  -0.000000001   0.000000008   0.000000000   0.000000000  -0.000000024
                        -0.000000011  -0.000000000  -0.000000012  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000021

    7    7.1  1.5  1.5  -0.000000011  -0.000000000  -0.000000013  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000026
                         0.000000284   0.000000004   0.000000036   0.000000001  -0.000000008  -0.000000000   0.000000000   0.000000030

    8    8.1  1.5  1.5   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000
                         0.000000000  -0.000000016   0.000000000  -0.000000000  -0.000000000   0.000000026  -0.000000002   0.000000000

    9    9.1  1.5  1.5   0.000000000  -0.000000028   0.000000000  -0.000000001   0.000000000  -0.000000032  -0.000000002  -0.000000000
                        -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000

   10   10.1  1.5  1.5   0.000000001   0.000000000  -0.000000022  -0.000000001   0.000000000   0.000000000   0.000000000   0.000000009
                         0.000000000   0.000000000  -0.000000008  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000008

   11   11.1  1.5  1.5   0.000000000  -0.000000027   0.000000000  -0.000000004   0.000000000  -0.000000038  -0.000000000  -0.000000000
                        -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000

   12   12.1  1.5  1.5   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000
                        -0.000000000   0.000000027  -0.000000000   0.000000004   0.000000000  -0.000000041   0.000000000  -0.000000000

   13   13.1  1.5  1.5  -0.000000029  -0.000000000   0.000000004   0.000000000   0.000000001   0.000000000   0.000000000  -0.000000007
                        -0.000000001  -0.000000000   0.000000001   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000006

   14   14.1  1.5  1.5   0.000000001   0.000000000   0.000000002   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000010
                        -0.000000028  -0.000000000  -0.000000005  -0.000000000   0.000000001   0.000000000  -0.000000000  -0.000000011

   15   15.1  1.5  1.5  -0.065727134  -0.000852172   0.590750906   0.014609257  -0.000882242  -0.000000249   0.000000000   0.581536324
                        -0.002522602  -0.000032706   0.215603077   0.005331860  -0.000021067  -0.000000006  -0.000000000   0.506727377

   16   16.1  1.5  1.5  -0.002643195   0.203866943  -0.000502406   0.020315674  -0.000201529   0.712750485  -0.040833256  -0.000000000
                        -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000

   17   17.1  1.5  1.5   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000
                        -0.003121103   0.240727467  -0.000646739   0.026152033   0.000198198  -0.700970432  -0.040832777  -0.000000000

   18    1.1  1.5  0.5  -0.000000007  -0.000000000   0.000000001   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000120
                         0.000000186   0.000000002  -0.000000004  -0.000000000  -0.000000017  -0.000000000   0.000000000   0.000000138

   19    2.1  1.5  0.5   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000
                        -0.000000008   0.000000604  -0.000000001   0.000000053  -0.000000000   0.000000006   0.000000022  -0.000000000

   20    3.1  1.5  0.5   0.000000289   0.000000004   0.000000058   0.000000001  -0.000000012  -0.000000000   0.000000000  -0.000000205
                         0.000000011   0.000000000   0.000000021   0.000000001  -0.000000000  -0.000000000   0.000000000  -0.000000179

   21    4.1  1.5  0.5  -0.000000074  -0.000000001  -0.000000022  -0.000000001  -0.000000012  -0.000000000  -0.000000000   0.000000052
                        -0.000000003  -0.000000000  -0.000000008  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000046

   22    5.1  1.5  0.5  -0.000000010  -0.000000000  -0.000000001  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000160
                         0.000000248   0.000000003   0.000000002   0.000000000   0.000000002   0.000000000  -0.000000000   0.000000184

   23    6.1  1.5  0.5   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000
                        -0.000000001   0.000000055   0.000000011  -0.000000446   0.000000000  -0.000000471   0.000000345   0.000000000

   24    7.1  1.5  0.5  -0.000000000   0.000000030   0.000000011  -0.000000437  -0.000000000   0.000000454   0.000000334   0.000000000
                        -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000

   25    8.1  1.5  0.5  -0.000000023  -0.000000000   0.000000021   0.000000001  -0.000000001  -0.000000000  -0.000000000   0.000000014
                        -0.000000001  -0.000000000   0.000000007   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000012

   26    9.1  1.5  0.5  -0.000000001  -0.000000000  -0.000000015  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000019
                         0.000000034   0.000000000   0.000000040   0.000000001   0.000000001   0.000000000   0.000000000   0.000000022

   27   10.1  1.5  0.5  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000
                         0.000000000  -0.000000030   0.000000000  -0.000000005   0.000000000  -0.000000003   0.000000002   0.000000000

   28   11.1  1.5  0.5  -0.000000001  -0.000000000  -0.000000015  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000018
                         0.000000034   0.000000000   0.000000042   0.000000001  -0.000000002  -0.000000000   0.000000000   0.000000021

   29   12.1  1.5  0.5   0.000000041   0.000000001  -0.000000035  -0.000000001  -0.000000002  -0.000000000  -0.000000000  -0.000000024
                         0.000000002   0.000000000  -0.000000013  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000020

   30   13.1  1.5  0.5   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000
                        -0.000000000   0.000000016   0.000000001  -0.000000045   0.000000000  -0.000000051   0.000000041   0.000000000

   31   14.1  1.5  0.5   0.000000000  -0.000000003  -0.000000001   0.000000045   0.000000000  -0.000000049  -0.000000040   0.000000000
                         0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000

   32   15.1  1.5  0.5   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000
                        -0.009984335   0.770081507  -0.001990394   0.080485064  -0.000005772   0.020415053  -0.023578234  -0.000000000

   33   16.1  1.5  0.5   0.012581594   0.000163124   0.200496867   0.004958283  -0.000261918  -0.000000074   0.000000000  -0.261607219
                        -0.327817151  -0.004250247  -0.549359996  -0.013585660   0.010968835   0.000003101   0.000000000   0.300228697

   34   17.1  1.5  0.5   0.441654652   0.005726183  -0.473762527  -0.011716137  -0.009440998  -0.000002669   0.000000000   0.371328697
                         0.016950668   0.000219770  -0.172906479  -0.004275974  -0.000225436  -0.000000064  -0.000000000   0.323560900

   35    1.1  1.5 -0.5   0.000000002  -0.000000186  -0.000000000   0.000000004   0.000000000  -0.000000017  -0.000000183  -0.000000000
                        -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000

   36    2.1  1.5 -0.5   0.000000603   0.000000008   0.000000050   0.000000001  -0.000000006  -0.000000000  -0.000000000   0.000000016
                         0.000000023   0.000000000   0.000000018   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000014

   37    3.1  1.5 -0.5  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000
                         0.000000004  -0.000000290   0.000000002  -0.000000062   0.000000000  -0.000000012   0.000000272  -0.000000000

   38    4.1  1.5 -0.5   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000
                        -0.000000001   0.000000074  -0.000000001   0.000000023   0.000000000  -0.000000012  -0.000000070  -0.000000000

   39    5.1  1.5 -0.5   0.000000003  -0.000000249   0.000000000  -0.000000002  -0.000000000   0.000000002  -0.000000244  -0.000000000
                        -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000

   40    6.1  1.5 -0.5   0.000000055   0.000000001  -0.000000419  -0.000000010   0.000000471   0.000000000   0.000000000   0.000000260
                         0.000000002   0.000000000  -0.000000153  -0.000000004   0.000000011   0.000000000   0.000000000   0.000000227

   41    7.1  1.5 -0.5  -0.000000001  -0.000000000   0.000000150   0.000000004   0.000000011   0.000000000  -0.000000000  -0.000000219
                         0.000000030   0.000000000  -0.000000410  -0.000000010  -0.000000454  -0.000000000  -0.000000000   0.000000252

   42    8.1  1.5 -0.5  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000
                        -0.000000000   0.000000023   0.000000001  -0.000000022   0.000000000  -0.000000001  -0.000000018  -0.000000000

   43    9.1  1.5 -0.5   0.000000000  -0.000000034   0.000000001  -0.000000042  -0.000000000   0.000000001  -0.000000029  -0.000000000
                         0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000

   44   10.1  1.5 -0.5  -0.000000030  -0.000000000  -0.000000005  -0.000000000   0.000000003   0.000000000   0.000000000   0.000000001
                        -0.000000001  -0.000000000  -0.000000002  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000001

   45   11.1  1.5 -0.5   0.000000000  -0.000000034   0.000000001  -0.000000044   0.000000000  -0.000000002  -0.000000028  -0.000000000
                         0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000

   46   12.1  1.5 -0.5  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000
                         0.000000001  -0.000000041  -0.000000001   0.000000038   0.000000000  -0.000000002   0.000000031  -0.000000000

   47   13.1  1.5 -0.5   0.000000016   0.000000000  -0.000000042  -0.000000001   0.000000051   0.000000000   0.000000000   0.000000031
                         0.000000001   0.000000000  -0.000000015  -0.000000000   0.000000001   0.000000000  -0.000000000   0.000000027

   48   14.1  1.5 -0.5   0.000000000   0.000000000  -0.000000015  -0.000000000  -0.000000001  -0.000000000   0.000000000   0.000000026
                        -0.000000003  -0.000000000   0.000000042   0.000000001   0.000000049   0.000000000  -0.000000000  -0.000000030

   49   15.1  1.5 -0.5   0.769514961   0.009976990   0.075607033   0.001869760  -0.020409236  -0.000005771  -0.000000000  -0.017776460
                         0.029533918   0.000382916   0.027593879   0.000682396  -0.000487340  -0.000000138   0.000000000  -0.015489693

   50   16.1  1.5 -0.5  -0.004253376   0.328058503  -0.014462183   0.584803727  -0.000003102   0.010971961  -0.398215529  -0.000000000
                        -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000

   51   17.1  1.5 -0.5   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000
                         0.005730399  -0.441979815  -0.012472041   0.504328844   0.000002670  -0.009443689  -0.492520718  -0.000000000

   52    1.1  1.5 -1.5  -0.000000009  -0.000000000  -0.000000012  -0.000000000  -0.000000009  -0.000000000   0.000000000   0.000000023
                         0.000000231   0.000000003   0.000000033   0.000000001   0.000000388   0.000000000  -0.000000000  -0.000000026

   53    2.1  1.5 -1.5  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000
                         0.000000001  -0.000000061  -0.000000013   0.000000525  -0.000000000   0.000000001  -0.000000432  -0.000000000

   54    3.1  1.5 -1.5  -0.000000335  -0.000000004  -0.000000035  -0.000000001   0.000000622   0.000000000  -0.000000000   0.000000033
                        -0.000000013  -0.000000000  -0.000000013  -0.000000000   0.000000015   0.000000000   0.000000000   0.000000029

   55    4.1  1.5 -1.5   0.000000089   0.000000001  -0.000000003  -0.000000000  -0.000000177  -0.000000000   0.000000000  -0.000000002
                         0.000000003   0.000000000  -0.000000001  -0.000000000  -0.000000004  -0.000000000   0.000000000  -0.000000002

   56    5.1  1.5 -1.5  -0.000000012  -0.000000000  -0.000000009  -0.000000000  -0.000000012  -0.000000000  -0.000000000   0.000000019
                         0.000000307   0.000000004   0.000000024   0.000000001   0.000000501   0.000000000   0.000000000  -0.000000022

   57    6.1  1.5 -1.5   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000
                         0.000000004  -0.000000293   0.000000001  -0.000000034   0.000000000  -0.000000008  -0.000000032  -0.000000000

   58    7.1  1.5 -1.5  -0.000000004   0.000000284  -0.000000001   0.000000039  -0.000000000   0.000000008   0.000000040  -0.000000000
                         0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000

   59    8.1  1.5 -1.5   0.000000016   0.000000000   0.000000000   0.000000000   0.000000026   0.000000000   0.000000000   0.000000002
                         0.000000001   0.000000000   0.000000000   0.000000000   0.000000001   0.000000000  -0.000000000   0.000000001

   60    9.1  1.5 -1.5  -0.000000001  -0.000000000  -0.000000000  -0.000000000   0.000000001   0.000000000  -0.000000000  -0.000000001
                         0.000000028   0.000000000   0.000000001   0.000000000  -0.000000032  -0.000000000   0.000000000   0.000000002

   61   10.1  1.5 -1.5   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000
                        -0.000000000   0.000000001   0.000000001  -0.000000023   0.000000000  -0.000000000   0.000000012   0.000000000

   62   11.1  1.5 -1.5  -0.000000001  -0.000000000  -0.000000001  -0.000000000   0.000000001   0.000000000   0.000000000  -0.000000000
                         0.000000027   0.000000000   0.000000004   0.000000000  -0.000000038  -0.000000000  -0.000000000   0.000000000

   63   12.1  1.5 -1.5  -0.000000027  -0.000000000  -0.000000004  -0.000000000  -0.000000041  -0.000000000   0.000000000  -0.000000000
                        -0.000000001  -0.000000000  -0.000000001  -0.000000000  -0.000000001  -0.000000000   0.000000000  -0.000000000

   64   13.1  1.5 -1.5   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000
                         0.000000000  -0.000000029  -0.000000000   0.000000004   0.000000000  -0.000000001  -0.000000009  -0.000000000

   65   14.1  1.5 -1.5   0.000000000  -0.000000028   0.000000000  -0.000000005   0.000000000  -0.000000001  -0.000000015  -0.000000000
                         0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000

   66   15.1  1.5 -1.5   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000
                         0.000852799  -0.065775525  -0.015551820   0.628865104  -0.000000250   0.000882493   0.771334643   0.000000000

   67   16.1  1.5 -1.5   0.007818639   0.000101371   0.006965122   0.000172247  -0.017014504  -0.000004811   0.000000000  -0.026825359
                        -0.203716959  -0.002641251  -0.019084384  -0.000471956   0.712547374   0.000201472   0.000000000   0.030785629

   68   17.1  1.5 -1.5  -0.240550364  -0.003118807  -0.024567013  -0.000607542  -0.700770678  -0.000198142   0.000000000   0.030785267
                        -0.009232302  -0.000119700  -0.008966086  -0.000221731  -0.016733295  -0.000004731  -0.000000000   0.026825044


   Nr   State  S   Sz       65            66            67            68

    1    1.1  1.5  1.5  -0.000000000   0.000000291  -0.000000000   0.000000200
                        -0.000000000  -0.000000000   0.000000000  -0.000000000

    2    2.1  1.5  1.5  -0.000000024   0.000000000   0.000000004  -0.000000000
                        -0.000000021  -0.000000000   0.000000001   0.000000000

    3    3.1  1.5  1.5  -0.000000000   0.000000000  -0.000000000  -0.000000000
                        -0.000000000  -0.000000455  -0.000000000  -0.000000305

    4    4.1  1.5  1.5   0.000000000  -0.000000000   0.000000000   0.000000000
                        -0.000000000   0.000000128   0.000000000   0.000000093

    5    5.1  1.5  1.5   0.000000000   0.000000379   0.000000000   0.000000252
                        -0.000000000  -0.000000000  -0.000000000  -0.000000000

    6    6.1  1.5  1.5   0.000000278   0.000000000   0.000000196   0.000000000
                         0.000000243   0.000000000   0.000000034  -0.000000000

    7    7.1  1.5  1.5   0.000000236   0.000000000   0.000000033   0.000000000
                        -0.000000269   0.000000000  -0.000000190  -0.000000000

    8    8.1  1.5  1.5  -0.000000000  -0.000000000  -0.000000000  -0.000000000
                         0.000000000  -0.000000010  -0.000000000  -0.000000034

    9    9.1  1.5  1.5   0.000000000  -0.000000008  -0.000000000  -0.000000049
                        -0.000000000   0.000000000  -0.000000000  -0.000000000

   10   10.1  1.5  1.5   0.000000003  -0.000000000   0.000000001   0.000000000
                         0.000000002   0.000000000   0.000000000   0.000000000

   11   11.1  1.5  1.5  -0.000000000  -0.000000012  -0.000000000  -0.000000055
                        -0.000000000  -0.000000000  -0.000000000   0.000000000

   12   12.1  1.5  1.5   0.000000000   0.000000000   0.000000000   0.000000000
                        -0.000000000   0.000000015   0.000000000   0.000000057

   13   13.1  1.5  1.5   0.000000031  -0.000000000   0.000000024  -0.000000000
                         0.000000027  -0.000000000   0.000000004  -0.000000000

   14   14.1  1.5  1.5  -0.000000026  -0.000000000  -0.000000004  -0.000000000
                         0.000000029   0.000000000   0.000000023   0.000000000

   15   15.1  1.5  1.5   0.053216744   0.000000000   0.000001249   0.000000000
                         0.046580496  -0.000000000   0.000000219   0.000000000

   16   16.1  1.5  1.5  -0.000000000  -0.445339578  -0.000000000  -0.500010316
                         0.000000000  -0.000000000   0.000000000  -0.000000000

   17   17.1  1.5  1.5  -0.000000000   0.000000000  -0.000000000   0.000000000
                        -0.000000000  -0.445334353  -0.000000000  -0.500006611

   18    1.1  1.5  0.5   0.000000032   0.000000000  -0.000000006   0.000000000
                        -0.000000037  -0.000000000   0.000000037  -0.000000000

   19    2.1  1.5  0.5   0.000000000   0.000000000  -0.000000000   0.000000000
                        -0.000000000   0.000000157  -0.000000000  -0.000000752

   20    3.1  1.5  0.5  -0.000000094  -0.000000000   0.000000063   0.000000000
                        -0.000000082   0.000000000   0.000000011  -0.000000000

   21    4.1  1.5  0.5   0.000000029   0.000000000  -0.000000012  -0.000000000
                         0.000000025  -0.000000000  -0.000000002   0.000000000

   22    5.1  1.5  0.5   0.000000039  -0.000000000  -0.000000009  -0.000000000
                        -0.000000045  -0.000000000   0.000000054   0.000000000

   23    6.1  1.5  0.5  -0.000000000   0.000000000   0.000000000  -0.000000000
                         0.000000000  -0.000000033   0.000000000   0.000000004

   24    7.1  1.5  0.5   0.000000000  -0.000000033   0.000000000  -0.000000003
                        -0.000000000  -0.000000000  -0.000000000  -0.000000000

   25    8.1  1.5  0.5  -0.000000011  -0.000000000  -0.000000021  -0.000000000
                        -0.000000010  -0.000000000  -0.000000004  -0.000000000

   26    9.1  1.5  0.5  -0.000000017   0.000000000  -0.000000006   0.000000000
                         0.000000020  -0.000000000   0.000000035   0.000000000

   27   10.1  1.5  0.5   0.000000000   0.000000000  -0.000000000   0.000000000
                        -0.000000000  -0.000000004   0.000000000   0.000000019

   28   11.1  1.5  0.5  -0.000000018  -0.000000000  -0.000000006  -0.000000000
                         0.000000021   0.000000000   0.000000037  -0.000000000

   29   12.1  1.5  0.5   0.000000018  -0.000000000   0.000000037  -0.000000000
                         0.000000015  -0.000000000   0.000000006   0.000000000

   30   13.1  1.5  0.5   0.000000000  -0.000000000  -0.000000000  -0.000000000
                         0.000000000  -0.000000002  -0.000000000  -0.000000008

   31   14.1  1.5  0.5  -0.000000000  -0.000000005   0.000000000   0.000000001
                         0.000000000   0.000000000  -0.000000000   0.000000000

   32   15.1  1.5  0.5  -0.000000000   0.000000000   0.000000000  -0.000000000
                        -0.000000000  -0.257112234   0.000000000   0.577333153

   33   16.1  1.5  0.5  -0.365598731   0.000000000  -0.049811096   0.000000000
                         0.417684999   0.000000000   0.284349515   0.000000000

   34   17.1  1.5  0.5  -0.356225794  -0.000000000  -0.284345966  -0.000000000
                        -0.311803628   0.000000000  -0.049810474   0.000000000

   35    1.1  1.5 -0.5  -0.000000000  -0.000000049  -0.000000000  -0.000000038
                        -0.000000000  -0.000000000   0.000000000  -0.000000000

   36    2.1  1.5 -0.5  -0.000000118   0.000000000  -0.000000741   0.000000000
                        -0.000000103  -0.000000000  -0.000000130   0.000000000

   37    3.1  1.5 -0.5  -0.000000000  -0.000000000  -0.000000000   0.000000000
                        -0.000000000  -0.000000125  -0.000000000  -0.000000064

   38    4.1  1.5 -0.5   0.000000000   0.000000000   0.000000000   0.000000000
                         0.000000000   0.000000038   0.000000000   0.000000012

   39    5.1  1.5 -0.5  -0.000000000  -0.000000060  -0.000000000  -0.000000055
                         0.000000000  -0.000000000   0.000000000  -0.000000000

   40    6.1  1.5 -0.5   0.000000025  -0.000000000   0.000000004   0.000000000
                         0.000000021   0.000000000   0.000000001  -0.000000000

   41    7.1  1.5 -0.5  -0.000000022  -0.000000000   0.000000000  -0.000000000
                         0.000000025   0.000000000  -0.000000003   0.000000000

   42    8.1  1.5 -0.5   0.000000000   0.000000000   0.000000000  -0.000000000
                        -0.000000000  -0.000000015   0.000000000   0.000000022

   43    9.1  1.5 -0.5   0.000000000   0.000000026  -0.000000000  -0.000000035
                        -0.000000000  -0.000000000  -0.000000000   0.000000000

   44   10.1  1.5 -0.5   0.000000003  -0.000000000   0.000000019   0.000000000
                         0.000000003  -0.000000000   0.000000003  -0.000000000

   45   11.1  1.5 -0.5   0.000000000   0.000000028  -0.000000000  -0.000000037
                         0.000000000  -0.000000000   0.000000000   0.000000000

   46   12.1  1.5 -0.5  -0.000000000  -0.000000000   0.000000000   0.000000000
                         0.000000000   0.000000023   0.000000000  -0.000000037

   47   13.1  1.5 -0.5   0.000000002  -0.000000000  -0.000000008  -0.000000000
                         0.000000002   0.000000000  -0.000000001  -0.000000000

   48   14.1  1.5 -0.5  -0.000000003   0.000000000  -0.000000000   0.000000000
                         0.000000004  -0.000000000   0.000000001   0.000000000

   49   15.1  1.5 -0.5   0.193468127   0.000000000   0.568673781   0.000000000
                         0.169342212  -0.000000000   0.099617769  -0.000000000

   50   16.1  1.5 -0.5   0.000000000   0.555088453  -0.000000000  -0.288679393
                        -0.000000000   0.000000000   0.000000000  -0.000000000

   51   17.1  1.5 -0.5  -0.000000000  -0.000000000   0.000000000  -0.000000000
                        -0.000000000  -0.473411363   0.000000000   0.288675790

   52    1.1  1.5 -1.5  -0.000000192   0.000000000   0.000000034  -0.000000000
                         0.000000219  -0.000000000  -0.000000197   0.000000000

   53    2.1  1.5 -1.5  -0.000000000   0.000000000  -0.000000000  -0.000000000
                        -0.000000000   0.000000032  -0.000000000   0.000000004

   54    3.1  1.5 -1.5  -0.000000343  -0.000000000   0.000000301   0.000000000
                        -0.000000300   0.000000000   0.000000053   0.000000000

   55    4.1  1.5 -1.5   0.000000097   0.000000000  -0.000000091  -0.000000000
                         0.000000085  -0.000000000  -0.000000016   0.000000000

   56    5.1  1.5 -1.5  -0.000000250  -0.000000000   0.000000043  -0.000000000
                         0.000000285   0.000000000  -0.000000248  -0.000000000

   57    6.1  1.5 -1.5  -0.000000000   0.000000000  -0.000000000  -0.000000000
                        -0.000000000  -0.000000369   0.000000000   0.000000199

   58    7.1  1.5 -1.5  -0.000000000   0.000000358  -0.000000000  -0.000000193
                         0.000000000   0.000000000   0.000000000  -0.000000000

   59    8.1  1.5 -1.5  -0.000000008   0.000000000   0.000000034  -0.000000000
                        -0.000000007  -0.000000000   0.000000006  -0.000000000

   60    9.1  1.5 -1.5   0.000000005   0.000000000  -0.000000008   0.000000000
                        -0.000000006  -0.000000000   0.000000048  -0.000000000

   61   10.1  1.5 -1.5  -0.000000000   0.000000000   0.000000000  -0.000000000
                         0.000000000  -0.000000004   0.000000000   0.000000001

   62   11.1  1.5 -1.5   0.000000008   0.000000000  -0.000000010   0.000000000
                        -0.000000009  -0.000000000   0.000000055  -0.000000000

   63   12.1  1.5 -1.5   0.000000012  -0.000000000  -0.000000057   0.000000000
                         0.000000010   0.000000000  -0.000000010   0.000000000

   64   13.1  1.5 -1.5  -0.000000000   0.000000000   0.000000000   0.000000000
                         0.000000000  -0.000000041  -0.000000000   0.000000024

   65   14.1  1.5 -1.5  -0.000000000  -0.000000039  -0.000000000   0.000000023
                        -0.000000000  -0.000000000   0.000000000  -0.000000000

   66   15.1  1.5 -1.5  -0.000000000   0.000000000  -0.000000000  -0.000000000
                        -0.000000000  -0.070723154   0.000000000   0.000001268

   67   16.1  1.5 -1.5   0.293314667  -0.000000000  -0.086275856   0.000000000
                        -0.335102739  -0.000000000   0.492510703   0.000000000

   68   17.1  1.5 -1.5  -0.335098808  -0.000000000   0.492507054   0.000000000
                        -0.293311225   0.000000000   0.086275217  -0.000000000


 Composition of spin-orbit eigenvectors
 ======================================

   Nr   State  S   Sz       1        2        3        4        5        6        7        8        9       10

    1    1.1  1.5  1.5   0.850%   2.499%   0.006%   0.000%   6.043%   0.000%   0.000%   0.000%  32.374%   0.000%
    2    2.1  1.5  1.5   2.155%   0.733%   0.003%  20.805%   0.000%   0.079%   0.034%   0.000%   0.000%   0.002%
    3    3.1  1.5  1.5   1.033%   3.038%   0.565%   0.000%  19.083%   0.000%   0.000%   0.026%   4.935%   0.000%
    4    4.1  1.5  1.5   0.047%   0.139%   1.210%   0.000%   2.373%   0.000%   0.000%   0.012%  44.919%   0.000%
    5    5.1  1.5  1.5   0.793%   2.330%   0.783%   0.000%  14.077%   0.000%   0.000%   0.003%  17.622%   0.000%
    6    6.1  1.5  1.5   1.725%   0.587%   0.000%   0.601%   0.000%   0.038%  32.719%   0.041%   0.000%   0.000%
    7    7.1  1.5  1.5   1.359%   0.462%   0.000%   0.124%   0.000%   0.011%  33.711%   0.043%   0.000%   0.003%
    8    8.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    9    9.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   10   10.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   11   11.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   12   12.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   13   13.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   14   14.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   15   15.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   16   16.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   17   17.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   18    1.1  1.5  0.5   9.837%   3.346%   0.001%   4.116%   0.000%   1.610%  10.732%   0.014%   0.000%   0.002%
   19    2.1  1.5  0.5  10.677%  31.391%   5.469%   0.001%   0.023%   0.000%   0.000%   0.034%   0.022%   0.000%
   20    3.1  1.5  0.5   3.294%   1.120%   0.005%  35.898%   0.000%   0.580%   1.836%   0.002%   0.000%   0.013%
   21    4.1  1.5  0.5   0.253%   0.086%   0.001%   3.934%   0.000%   4.033%  14.395%   0.018%   0.000%   0.010%
   22    5.1  1.5  0.5  14.785%   5.029%   0.001%   7.374%   0.000%   2.289%   6.323%   0.008%   0.000%   0.010%
   23    6.1  1.5  0.5   0.423%   1.243%  10.923%   0.002%  23.028%   0.000%   0.000%   0.043%   0.055%   0.000%
   24    7.1  1.5  0.5   0.194%   0.572%   8.177%   0.001%  26.734%   0.000%   0.000%   0.004%   0.031%   0.000%
   25    8.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   26    9.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   27   10.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   28   11.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   29   12.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   30   13.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   31   14.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   32   15.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   33   16.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   34   17.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   35    1.1  1.5 -0.5   3.346%   9.837%   4.116%   0.001%   1.610%   0.000%   0.014%  10.732%   0.002%   0.000%
   36    2.1  1.5 -0.5  31.391%  10.677%   0.001%   5.469%   0.000%   0.023%   0.034%   0.000%   0.000%   0.022%
   37    3.1  1.5 -0.5   1.120%   3.294%  35.898%   0.005%   0.580%   0.000%   0.002%   1.836%   0.013%   0.000%
   38    4.1  1.5 -0.5   0.086%   0.253%   3.934%   0.001%   4.033%   0.000%   0.018%  14.395%   0.010%   0.000%
   39    5.1  1.5 -0.5   5.029%  14.785%   7.374%   0.001%   2.289%   0.000%   0.008%   6.323%   0.010%   0.000%
   40    6.1  1.5 -0.5   1.243%   0.423%   0.002%  10.923%   0.000%  23.028%   0.043%   0.000%   0.000%   0.055%
   41    7.1  1.5 -0.5   0.572%   0.194%   0.001%   8.177%   0.000%  26.734%   0.004%   0.000%   0.000%   0.031%
   42    8.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   43    9.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   44   10.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   45   11.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   46   12.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   47   13.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   48   14.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   49   15.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   50   16.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   51   17.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   52    1.1  1.5 -1.5   2.499%   0.850%   0.000%   0.006%   0.000%   6.043%   0.000%   0.000%   0.000%  32.374%
   53    2.1  1.5 -1.5   0.733%   2.155%  20.805%   0.003%   0.079%   0.000%   0.000%   0.034%   0.002%   0.000%
   54    3.1  1.5 -1.5   3.038%   1.033%   0.000%   0.565%   0.000%  19.083%   0.026%   0.000%   0.000%   4.935%
   55    4.1  1.5 -1.5   0.139%   0.047%   0.000%   1.210%   0.000%   2.373%   0.012%   0.000%   0.000%  44.919%
   56    5.1  1.5 -1.5   2.330%   0.793%   0.000%   0.783%   0.000%  14.077%   0.003%   0.000%   0.000%  17.622%
   57    6.1  1.5 -1.5   0.587%   1.725%   0.601%   0.000%   0.038%   0.000%   0.041%  32.719%   0.000%   0.000%
   58    7.1  1.5 -1.5   0.462%   1.359%   0.124%   0.000%   0.011%   0.000%   0.043%  33.711%   0.003%   0.000%
   59    8.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   60    9.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   61   10.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   62   11.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   63   12.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   64   13.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   65   14.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   66   15.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   67   16.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   68   17.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%

   Nr   State  S   Sz      11       12       13       14       15       16       17       18       19       20

    1    1.1  1.5  1.5   0.000%  10.323%   0.865%   1.919%   5.771%   0.000%   0.000%   0.000%   9.939%   0.004%
    2    2.1  1.5  1.5   0.136%   0.000%   4.805%   2.166%   0.000%  40.507%   0.001%   0.000%   0.010%  25.693%
    3    3.1  1.5  1.5   0.000%  19.157%   4.433%   9.832%   6.338%   0.000%   0.003%   0.061%   1.254%   0.000%
    4    4.1  1.5  1.5   0.000%   1.981%   1.236%   2.742%   1.828%   0.000%   0.000%   0.007%  14.811%   0.006%
    5    5.1  1.5  1.5   0.000%  15.982%   3.956%   8.774%   0.028%   0.000%   0.000%   0.000%   6.128%   0.002%
    6    6.1  1.5  1.5   0.097%   0.000%   6.573%   2.964%   0.000%   1.451%  16.680%   0.812%   0.000%   0.010%
    7    7.1  1.5  1.5   0.011%   0.000%   7.496%   3.380%   0.000%   1.876%  15.076%   0.734%   0.000%   0.001%
    8    8.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    9    9.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   10   10.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   11   11.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   12   12.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   13   13.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   14   14.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   15   15.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   16   16.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   17   17.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   18    1.1  1.5  0.5  12.045%   0.000%   3.140%   1.416%   0.000%   0.465%  20.214%   0.984%   0.003%   6.617%
   19    2.1  1.5  0.5   0.000%   0.024%   2.466%   5.469%   1.560%   0.000%   0.000%   0.008%   0.003%   0.000%
   20    3.1  1.5  0.5   2.220%   0.000%   7.259%   3.273%   0.000%   1.671%   2.761%   0.134%   0.006%  16.056%
   21    4.1  1.5  0.5  18.078%   0.000%   1.153%   0.520%   0.000%   0.589%  27.663%   1.346%   0.001%   1.482%
   22    5.1  1.5  0.5   5.631%   0.000%   5.199%   2.344%   0.000%   1.723%  12.879%   0.627%   0.004%  10.831%
   23    6.1  1.5  0.5   0.000%   5.858%   0.945%   2.095%  19.666%   0.000%   0.000%   0.003%   3.684%   0.001%
   24    7.1  1.5  0.5   0.000%   8.455%   1.112%   2.467%  16.528%   0.000%   0.000%   0.008%   3.454%   0.001%
   25    8.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   26    9.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   27   10.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   28   11.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   29   12.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   30   13.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   31   14.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   32   15.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   33   16.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   34   17.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   35    1.1  1.5 -0.5   0.000%  12.045%   1.416%   3.140%   0.465%   0.000%   0.984%  20.214%   6.617%   0.003%
   36    2.1  1.5 -0.5   0.024%   0.000%   5.469%   2.466%   0.000%   1.560%   0.008%   0.000%   0.000%   0.003%
   37    3.1  1.5 -0.5   0.000%   2.220%   3.273%   7.259%   1.671%   0.000%   0.134%   2.761%  16.056%   0.006%
   38    4.1  1.5 -0.5   0.000%  18.078%   0.520%   1.153%   0.589%   0.000%   1.346%  27.663%   1.482%   0.001%
   39    5.1  1.5 -0.5   0.000%   5.631%   2.344%   5.199%   1.723%   0.000%   0.627%  12.879%  10.831%   0.004%
   40    6.1  1.5 -0.5   5.858%   0.000%   2.095%   0.945%   0.000%  19.666%   0.003%   0.000%   0.001%   3.684%
   41    7.1  1.5 -0.5   8.455%   0.000%   2.467%   1.112%   0.000%  16.528%   0.008%   0.000%   0.001%   3.454%
   42    8.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   43    9.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   44   10.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   45   11.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   46   12.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   47   13.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   48   14.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   49   15.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   50   16.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   51   17.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   52    1.1  1.5 -1.5  10.323%   0.000%   1.919%   0.865%   0.000%   5.771%   0.000%   0.000%   0.004%   9.939%
   53    2.1  1.5 -1.5   0.000%   0.136%   2.166%   4.805%  40.507%   0.000%   0.000%   0.001%  25.693%   0.010%
   54    3.1  1.5 -1.5  19.157%   0.000%   9.832%   4.433%   0.000%   6.338%   0.061%   0.003%   0.000%   1.254%
   55    4.1  1.5 -1.5   1.981%   0.000%   2.742%   1.236%   0.000%   1.828%   0.007%   0.000%   0.006%  14.811%
   56    5.1  1.5 -1.5  15.982%   0.000%   8.774%   3.956%   0.000%   0.028%   0.000%   0.000%   0.002%   6.128%
   57    6.1  1.5 -1.5   0.000%   0.097%   2.964%   6.573%   1.451%   0.000%   0.812%  16.680%   0.010%   0.000%
   58    7.1  1.5 -1.5   0.000%   0.011%   3.380%   7.496%   1.876%   0.000%   0.734%  15.076%   0.001%   0.000%
   59    8.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   60    9.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   61   10.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   62   11.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   63   12.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   64   13.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   65   14.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   66   15.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   67   16.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   68   17.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%

   Nr   State  S   Sz      21       22       23       24       25       26       27       28       29       30

    1    1.1  1.5  1.5   0.076%   7.856%   0.019%   1.355%  18.438%   0.000%   1.655%   0.007%   0.000%   0.000%
    2    2.1  1.5  1.5   0.009%   0.000%   0.001%   0.000%   0.000%   2.859%   0.000%   0.000%   0.000%   0.000%
    3    3.1  1.5  1.5   0.152%  15.797%   0.094%   6.664%   2.547%   0.000%   4.966%   0.020%   0.000%   0.000%
    4    4.1  1.5  1.5   0.012%   1.298%   0.009%   0.619%  25.987%   0.000%   0.759%   0.003%   0.000%   0.000%
    5    5.1  1.5  1.5   0.125%  13.009%   0.031%   2.172%  10.096%   0.000%   4.070%   0.017%   0.000%   0.000%
    6    6.1  1.5  1.5  21.027%   0.202%   0.187%   0.003%   0.000%   0.015%   0.058%  14.211%   0.000%   0.000%
    7    7.1  1.5  1.5  21.035%   0.202%   0.187%   0.003%   0.000%   0.022%   0.058%  14.207%   0.000%   0.000%
    8    8.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.091%   6.330%
    9    9.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.004%   0.272%
   10   10.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   1.227%   0.018%
   11   11.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.065%   4.506%
   12   12.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.033%   2.271%
   13   13.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   2.214%   0.032%
   14   14.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   1.701%   0.024%
   15   15.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   16   16.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   17   17.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   18    1.1  1.5  0.5   0.021%   0.000%  16.732%   0.236%   0.000%   2.409%   0.025%   6.036%   0.000%   0.000%
   19    2.1  1.5  0.5   0.162%  16.869%   0.002%   0.110%   0.061%   0.000%  25.545%   0.104%   0.000%   0.000%
   20    3.1  1.5  0.5   0.408%   0.004%   2.388%   0.034%   0.000%   4.568%   0.067%  16.403%   0.000%   0.000%
   21    4.1  1.5  0.5   0.480%   0.005%  23.800%   0.336%   0.000%   0.395%   0.006%   1.418%   0.000%   0.000%
   22    5.1  1.5  0.5   0.965%   0.009%   9.447%   0.133%   0.000%   4.092%   0.042%  10.253%   0.000%   0.000%
   23    6.1  1.5  0.5   0.001%   0.107%   0.245%  17.390%  14.243%   0.000%   0.046%   0.000%   0.000%   0.000%
   24    7.1  1.5  0.5   0.002%   0.167%   0.248%  17.557%  14.265%   0.000%   0.022%   0.000%   0.000%   0.000%
   25    8.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   9.490%   0.137%
   26    9.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   4.718%   0.068%
   27   10.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.651%  45.262%
   28   11.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   5.623%   0.081%
   29   12.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  14.918%   0.215%
   30   13.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.050%
   31   14.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.002%
   32   15.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   33   16.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   34   17.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   35    1.1  1.5 -0.5   0.000%   0.021%   0.236%  16.732%   2.409%   0.000%   6.036%   0.025%   0.000%   0.000%
   36    2.1  1.5 -0.5  16.869%   0.162%   0.110%   0.002%   0.000%   0.061%   0.104%  25.545%   0.000%   0.000%
   37    3.1  1.5 -0.5   0.004%   0.408%   0.034%   2.388%   4.568%   0.000%  16.403%   0.067%   0.000%   0.000%
   38    4.1  1.5 -0.5   0.005%   0.480%   0.336%  23.800%   0.395%   0.000%   1.418%   0.006%   0.000%   0.000%
   39    5.1  1.5 -0.5   0.009%   0.965%   0.133%   9.447%   4.092%   0.000%  10.253%   0.042%   0.000%   0.000%
   40    6.1  1.5 -0.5   0.107%   0.001%  17.390%   0.245%   0.000%  14.243%   0.000%   0.046%   0.000%   0.000%
   41    7.1  1.5 -0.5   0.167%   0.002%  17.557%   0.248%   0.000%  14.265%   0.000%   0.022%   0.000%   0.000%
   42    8.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.137%   9.490%
   43    9.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.068%   4.718%
   44   10.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  45.262%   0.651%
   45   11.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.081%   5.623%
   46   12.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.215%  14.918%
   47   13.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.050%   0.001%
   48   14.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.002%   0.000%
   49   15.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   50   16.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   51   17.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   52    1.1  1.5 -1.5   7.856%   0.076%   1.355%   0.019%   0.000%  18.438%   0.007%   1.655%   0.000%   0.000%
   53    2.1  1.5 -1.5   0.000%   0.009%   0.000%   0.001%   2.859%   0.000%   0.000%   0.000%   0.000%   0.000%
   54    3.1  1.5 -1.5  15.797%   0.152%   6.664%   0.094%   0.000%   2.547%   0.020%   4.966%   0.000%   0.000%
   55    4.1  1.5 -1.5   1.298%   0.012%   0.619%   0.009%   0.000%  25.987%   0.003%   0.759%   0.000%   0.000%
   56    5.1  1.5 -1.5  13.009%   0.125%   2.172%   0.031%   0.000%  10.096%   0.017%   4.070%   0.000%   0.000%
   57    6.1  1.5 -1.5   0.202%  21.027%   0.003%   0.187%   0.015%   0.000%  14.211%   0.058%   0.000%   0.000%
   58    7.1  1.5 -1.5   0.202%  21.035%   0.003%   0.187%   0.022%   0.000%  14.207%   0.058%   0.000%   0.000%
   59    8.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   6.330%   0.091%
   60    9.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.272%   0.004%
   61   10.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.018%   1.227%
   62   11.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   4.506%   0.065%
   63   12.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   2.271%   0.033%
   64   13.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.032%   2.214%
   65   14.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.024%   1.701%
   66   15.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   67   16.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   68   17.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%

   Nr   State  S   Sz      31       32       33       34       35       36       37       38       39       40

    1    1.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    2    2.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    3    3.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    4    4.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    5    5.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    6    6.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    7    7.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    8    8.1  1.5  1.5   0.003%  19.796%   0.042%   0.000%   0.000%  13.282%   0.194%   0.008%   0.001%   0.000%
    9    9.1  1.5  1.5   0.003%  21.108%   2.289%   0.005%   0.000%  15.376%   0.109%   0.005%   7.737%   0.000%
   10   10.1  1.5  1.5   0.167%   0.000%   0.046%  22.243%   0.443%   0.000%   0.004%   0.086%   0.000%  15.694%
   11   11.1  1.5  1.5   0.004%  26.052%   0.053%   0.000%   0.000%   7.379%   0.150%   0.006%  19.483%   0.000%
   12   12.1  1.5  1.5   0.005%  29.796%   0.016%   0.000%   0.000%   5.485%   0.029%   0.001%   2.339%   0.000%
   13   13.1  1.5  1.5   0.022%   0.000%   0.000%   0.135%   0.572%   0.000%   1.294%  31.022%   0.000%   9.028%
   14   14.1  1.5  1.5   0.012%   0.000%   0.003%   1.236%   0.314%   0.000%   1.298%  31.121%   0.000%   1.493%
   15   15.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   16   16.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   17   17.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   18    1.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   19    2.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   20    3.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   21    4.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   22    5.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   23    6.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   24    7.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   25    8.1  1.5  0.5   0.087%   0.000%   0.011%   5.101%   3.030%   0.000%   0.554%  13.276%   0.000%  19.613%
   26    9.1  1.5  0.5   0.031%   0.000%   0.029%  13.897%   2.924%   0.000%   0.424%  10.169%   0.000%   3.590%
   27   10.1  1.5  0.5   0.000%   0.872%   0.370%   0.001%   0.000%   0.029%   0.014%   0.001%   7.758%   0.000%
   28   11.1  1.5  0.5   0.063%   0.000%   0.041%  19.769%   3.275%   0.000%   0.175%   4.193%   0.000%   3.670%
   29   12.1  1.5  0.5   0.782%   0.000%   0.027%  12.987%   0.081%   0.000%   0.192%   4.592%   0.000%   0.161%
   30   13.1  1.5  0.5   0.000%   0.856%  14.398%   0.030%   0.000%  20.796%   0.001%   0.000%   8.144%   0.000%
   31   14.1  1.5  0.5   0.000%   0.340%   7.258%   0.015%   0.000%  27.011%   1.039%   0.043%   1.290%   0.000%
   32   15.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   33   16.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   34   17.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   35    1.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   36    2.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   37    3.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   38    4.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   39    5.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   40    6.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   41    7.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   42    8.1  1.5 -0.5   0.000%   0.087%   5.101%   0.011%   0.000%   3.030%  13.276%   0.554%  19.613%   0.000%
   43    9.1  1.5 -0.5   0.000%   0.031%  13.897%   0.029%   0.000%   2.924%  10.169%   0.424%   3.590%   0.000%
   44   10.1  1.5 -0.5   0.872%   0.000%   0.001%   0.370%   0.029%   0.000%   0.001%   0.014%   0.000%   7.758%
   45   11.1  1.5 -0.5   0.000%   0.063%  19.769%   0.041%   0.000%   3.275%   4.193%   0.175%   3.670%   0.000%
   46   12.1  1.5 -0.5   0.000%   0.782%  12.987%   0.027%   0.000%   0.081%   4.592%   0.192%   0.161%   0.000%
   47   13.1  1.5 -0.5   0.856%   0.000%   0.030%  14.398%  20.796%   0.000%   0.000%   0.001%   0.000%   8.144%
   48   14.1  1.5 -0.5   0.340%   0.000%   0.015%   7.258%  27.011%   0.000%   0.043%   1.039%   0.000%   1.290%
   49   15.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   50   16.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   51   17.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   52    1.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   53    2.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   54    3.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   55    4.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   56    5.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   57    6.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   58    7.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   59    8.1  1.5 -1.5  19.796%   0.003%   0.000%   0.042%  13.282%   0.000%   0.008%   0.194%   0.000%   0.001%
   60    9.1  1.5 -1.5  21.108%   0.003%   0.005%   2.289%  15.376%   0.000%   0.005%   0.109%   0.000%   7.737%
   61   10.1  1.5 -1.5   0.000%   0.167%  22.243%   0.046%   0.000%   0.443%   0.086%   0.004%  15.694%   0.000%
   62   11.1  1.5 -1.5  26.052%   0.004%   0.000%   0.053%   7.379%   0.000%   0.006%   0.150%   0.000%  19.483%
   63   12.1  1.5 -1.5  29.796%   0.005%   0.000%   0.016%   5.485%   0.000%   0.001%   0.029%   0.000%   2.339%
   64   13.1  1.5 -1.5   0.000%   0.022%   0.135%   0.000%   0.000%   0.572%  31.022%   1.294%   9.028%   0.000%
   65   14.1  1.5 -1.5   0.000%   0.012%   1.236%   0.003%   0.000%   0.314%  31.121%   1.298%   1.493%   0.000%
   66   15.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   67   16.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   68   17.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%

   Nr   State  S   Sz      41       42       43       44       45       46       47       48       49       50

    1    1.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    2    2.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    3    3.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    4    4.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    5    5.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    6    6.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    7    7.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    8    8.1  1.5  1.5  15.412%   1.838%   0.024%   3.765%   0.000%   1.082%   6.193%   0.000%   9.504%   0.005%
    9    9.1  1.5  1.5   1.948%   0.232%   0.081%  12.832%   0.000%   0.213%   5.197%   0.000%   0.220%   0.000%
   10   10.1  1.5  1.5   0.001%   0.009%  27.946%   0.176%   3.120%   0.001%   0.000%  25.514%   0.000%   0.037%
   11   11.1  1.5  1.5   2.966%   0.354%   0.009%   1.440%   0.000%   0.322%  11.085%   0.000%   0.027%   0.000%
   12   12.1  1.5  1.5  16.112%   1.922%   0.001%   0.226%   0.001%   4.895%   9.812%   0.000%   9.223%   0.005%
   13   13.1  1.5  1.5   0.836%   7.011%   3.441%   0.022%   8.906%   0.002%   0.000%   0.035%   0.004%   6.348%
   14   14.1  1.5  1.5   0.001%   0.011%   6.634%   0.042%  20.386%   0.005%   0.000%   0.586%   0.004%   6.305%
   15   15.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   16   16.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   17   17.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   18    1.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   19    2.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   20    3.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   21    4.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   22    5.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   23    6.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   24    7.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   25    8.1  1.5  0.5   0.010%   0.087%   1.289%   0.008%  14.011%   0.003%   0.000%   7.395%   0.006%  11.224%
   26    9.1  1.5  0.5   0.911%   7.642%   8.718%   0.055%  13.180%   0.003%   0.000%   8.484%   0.007%  13.009%
   27   10.1  1.5  0.5   0.496%   0.059%   0.005%   0.845%   0.000%   1.031%   0.084%   0.000%   8.363%   0.005%
   28   11.1  1.5  0.5   2.633%  22.075%   0.063%   0.000%   4.127%   0.001%   0.000%   7.420%   0.004%   6.273%
   29   12.1  1.5  0.5   0.613%   5.137%   2.218%   0.014%  23.498%   0.006%   0.000%  10.812%   0.004%   7.629%
   30   13.1  1.5  0.5   7.391%   0.881%   0.068%  10.854%   0.000%   0.559%   4.532%   0.000%   9.981%   0.006%
   31   14.1  1.5  0.5   3.048%   0.363%   0.120%  19.104%   0.001%   4.644%   2.849%   0.000%  11.800%   0.007%
   32   15.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   33   16.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   34   17.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   35    1.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   36    2.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   37    3.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   38    4.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   39    5.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   40    6.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   41    7.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   42    8.1  1.5 -0.5   0.087%   0.010%   0.008%   1.289%   0.003%  14.011%   7.395%   0.000%  11.224%   0.006%
   43    9.1  1.5 -0.5   7.642%   0.911%   0.055%   8.718%   0.003%  13.180%   8.484%   0.000%  13.009%   0.007%
   44   10.1  1.5 -0.5   0.059%   0.496%   0.845%   0.005%   1.031%   0.000%   0.000%   0.084%   0.005%   8.363%
   45   11.1  1.5 -0.5  22.075%   2.633%   0.000%   0.063%   0.001%   4.127%   7.420%   0.000%   6.273%   0.004%
   46   12.1  1.5 -0.5   5.137%   0.613%   0.014%   2.218%   0.006%  23.498%  10.812%   0.000%   7.629%   0.004%
   47   13.1  1.5 -0.5   0.881%   7.391%  10.854%   0.068%   0.559%   0.000%   0.000%   4.532%   0.006%   9.981%
   48   14.1  1.5 -0.5   0.363%   3.048%  19.104%   0.120%   4.644%   0.001%   0.000%   2.849%   0.007%  11.800%
   49   15.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   50   16.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   51   17.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   52    1.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   53    2.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   54    3.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   55    4.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   56    5.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   57    6.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   58    7.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   59    8.1  1.5 -1.5   1.838%  15.412%   3.765%   0.024%   1.082%   0.000%   0.000%   6.193%   0.005%   9.504%
   60    9.1  1.5 -1.5   0.232%   1.948%  12.832%   0.081%   0.213%   0.000%   0.000%   5.197%   0.000%   0.220%
   61   10.1  1.5 -1.5   0.009%   0.001%   0.176%  27.946%   0.001%   3.120%  25.514%   0.000%   0.037%   0.000%
   62   11.1  1.5 -1.5   0.354%   2.966%   1.440%   0.009%   0.322%   0.000%   0.000%  11.085%   0.000%   0.027%
   63   12.1  1.5 -1.5   1.922%  16.112%   0.226%   0.001%   4.895%   0.001%   0.000%   9.812%   0.005%   9.223%
   64   13.1  1.5 -1.5   7.011%   0.836%   0.022%   3.441%   0.002%   8.906%   0.035%   0.000%   6.348%   0.004%
   65   14.1  1.5 -1.5   0.011%   0.001%   0.042%   6.634%   0.005%  20.386%   0.586%   0.000%   6.305%   0.004%
   66   15.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   67   16.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   68   17.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%

   Nr   State  S   Sz      51       52       53       54       55       56       57       58       59       60

    1    1.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    2    2.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    3    3.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    4    4.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    5    5.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    6    6.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    7    7.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    8    8.1  1.5  1.5   4.275%   0.000%   0.000%   1.746%   0.000%  16.408%   0.000%   0.000%   0.000%   0.000%
    9    9.1  1.5  1.5  14.769%   0.000%   0.000%   1.517%   0.000%  16.083%   0.000%   0.000%   0.000%   0.000%
   10   10.1  1.5  1.5   0.000%   0.007%   2.612%   0.000%   0.650%   0.000%   0.000%   0.000%   0.000%   0.000%
   11   11.1  1.5  1.5   9.419%   0.000%   0.000%  13.764%   0.000%   2.916%   0.000%   0.000%   0.000%   0.000%
   12   12.1  1.5  1.5   1.700%   0.000%   0.000%  13.536%   0.000%   2.592%   0.000%   0.000%   0.000%   0.000%
   13   13.1  1.5  1.5   0.000%  15.191%   6.892%   0.000%   6.994%   0.000%   0.000%   0.000%   0.000%   0.000%
   14   14.1  1.5  1.5   0.000%  14.533%   8.308%   0.000%   5.983%   0.000%   0.000%   0.000%   0.000%   0.000%
   15   15.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.433%   0.000%  39.547%   0.024%
   16   16.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   4.156%   0.000%   0.041%
   17   17.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   5.795%   0.000%   0.068%
   18    1.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   19    2.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   20    3.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   21    4.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   22    5.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   23    6.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   24    7.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   25    8.1  1.5  0.5   0.000%   4.252%  10.082%   0.000%   0.334%   0.000%   0.000%   0.000%   0.000%   0.000%
   26    9.1  1.5  0.5   0.000%   1.170%   1.244%   0.000%   9.725%   0.000%   0.000%   0.000%   0.000%   0.000%
   27   10.1  1.5  0.5   8.847%   0.000%   0.000%  18.120%   0.000%   7.185%   0.000%   0.000%   0.000%   0.000%
   28   11.1  1.5  0.5   0.000%   8.628%   1.348%   0.000%  10.539%   0.000%   0.000%   0.000%   0.000%   0.000%
   29   12.1  1.5  0.5   0.000%   3.673%  12.042%   0.000%   0.399%   0.000%   0.000%   0.000%   0.000%   0.000%
   30   13.1  1.5  0.5   6.760%   0.000%   0.000%   2.806%   0.000%  11.885%   0.000%   0.000%   0.000%   0.000%
   31   14.1  1.5  0.5   6.776%   0.000%   0.000%   5.982%   0.000%   8.306%   0.000%   0.000%   0.000%   0.000%
   32   15.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.010%  59.303%   0.000%   0.648%
   33   16.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  10.762%   0.002%  34.200%   0.021%
   34   17.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  19.535%   0.003%  25.435%   0.016%
   35    1.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   36    2.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   37    3.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   38    4.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   39    5.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   40    6.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   41    7.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   42    8.1  1.5 -0.5   4.252%   0.000%   0.000%  10.082%   0.000%   0.334%   0.000%   0.000%   0.000%   0.000%
   43    9.1  1.5 -0.5   1.170%   0.000%   0.000%   1.244%   0.000%   9.725%   0.000%   0.000%   0.000%   0.000%
   44   10.1  1.5 -0.5   0.000%   8.847%  18.120%   0.000%   7.185%   0.000%   0.000%   0.000%   0.000%   0.000%
   45   11.1  1.5 -0.5   8.628%   0.000%   0.000%   1.348%   0.000%  10.539%   0.000%   0.000%   0.000%   0.000%
   46   12.1  1.5 -0.5   3.673%   0.000%   0.000%  12.042%   0.000%   0.399%   0.000%   0.000%   0.000%   0.000%
   47   13.1  1.5 -0.5   0.000%   6.760%   2.806%   0.000%  11.885%   0.000%   0.000%   0.000%   0.000%   0.000%
   48   14.1  1.5 -0.5   0.000%   6.776%   5.982%   0.000%   8.306%   0.000%   0.000%   0.000%   0.000%   0.000%
   49   15.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  59.303%   0.010%   0.648%   0.000%
   50   16.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.002%  10.762%   0.021%  34.200%
   51   17.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.003%  19.535%   0.016%  25.435%
   52    1.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   53    2.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   54    3.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   55    4.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   56    5.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   57    6.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   58    7.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   59    8.1  1.5 -1.5   0.000%   4.275%   1.746%   0.000%  16.408%   0.000%   0.000%   0.000%   0.000%   0.000%
   60    9.1  1.5 -1.5   0.000%  14.769%   1.517%   0.000%  16.083%   0.000%   0.000%   0.000%   0.000%   0.000%
   61   10.1  1.5 -1.5   0.007%   0.000%   0.000%   2.612%   0.000%   0.650%   0.000%   0.000%   0.000%   0.000%
   62   11.1  1.5 -1.5   0.000%   9.419%  13.764%   0.000%   2.916%   0.000%   0.000%   0.000%   0.000%   0.000%
   63   12.1  1.5 -1.5   0.000%   1.700%  13.536%   0.000%   2.592%   0.000%   0.000%   0.000%   0.000%   0.000%
   64   13.1  1.5 -1.5  15.191%   0.000%   0.000%   6.892%   0.000%   6.994%   0.000%   0.000%   0.000%   0.000%
   65   14.1  1.5 -1.5  14.533%   0.000%   0.000%   8.308%   0.000%   5.983%   0.000%   0.000%   0.000%   0.000%
   66   15.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.433%   0.024%  39.547%
   67   16.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   4.156%   0.001%   0.041%   0.000%
   68   17.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   5.795%   0.001%   0.068%   0.000%

   Nr   State  S   Sz      61       62       63       64       65       66       67       68

    1    1.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    2    2.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    3    3.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    4    4.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    5    5.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    6    6.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    7    7.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    8    8.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    9    9.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   10   10.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   11   11.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   12   12.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   13   13.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   14   14.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   15   15.1  1.5  1.5   0.000%   0.000%   0.000%  59.496%   0.500%   0.000%   0.000%   0.000%
   16   16.1  1.5  1.5   0.000%  50.801%   0.167%   0.000%   0.000%  19.833%   0.000%  25.001%
   17   17.1  1.5  1.5   0.000%  49.136%   0.167%   0.000%   0.000%  19.832%   0.000%  25.001%
   18    1.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   19    2.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   20    3.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   21    4.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   22    5.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   23    6.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   24    7.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   25    8.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   26    9.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   27   10.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   28   11.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   29   12.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   30   13.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   31   14.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   32   15.1  1.5  0.5   0.000%   0.042%   0.056%   0.000%   0.000%   6.611%   0.000%  33.331%
   33   16.1  1.5  0.5   0.012%   0.000%   0.000%  15.858%  30.812%   0.000%   8.334%   0.000%
   34   17.1  1.5  0.5   0.009%   0.000%   0.000%  24.258%  22.412%   0.000%   8.333%   0.000%
   35    1.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   36    2.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   37    3.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   38    4.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   39    5.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   40    6.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   41    7.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   42    8.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   43    9.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   44   10.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   45   11.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   46   12.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   47   13.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   48   14.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   49   15.1  1.5 -0.5   0.042%   0.000%   0.000%   0.056%   6.611%   0.000%  33.331%   0.000%
   50   16.1  1.5 -0.5   0.000%   0.012%  15.858%   0.000%   0.000%  30.812%   0.000%   8.334%
   51   17.1  1.5 -0.5   0.000%   0.009%  24.258%   0.000%   0.000%  22.412%   0.000%   8.333%
   52    1.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   53    2.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   54    3.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   55    4.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   56    5.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   57    6.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   58    7.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   59    8.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   60    9.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   61   10.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   62   11.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   63   12.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   64   13.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   65   14.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   66   15.1  1.5 -1.5   0.000%   0.000%  59.496%   0.000%   0.000%   0.500%   0.000%   0.000%
   67   16.1  1.5 -1.5  50.801%   0.000%   0.000%   0.167%  19.833%   0.000%  25.001%   0.000%
   68   17.1  1.5 -1.5  49.136%   0.000%   0.000%   0.167%  19.832%   0.000%  25.001%   0.000%


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
              1      24       36.51       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       6       88.19       700     1000      520     2100     2140     5101   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *       387.77    312.86     71.91      0.96      0.96      0.88
 REAL TIME  *       426.82 SEC
 DISK USED  *       124.76 MB (local),        2.27 GB (total)
 SF USED    *       839.23 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/cc-pWCVTZ-DK energy=  -1392.079329666761

              CI           MULTI         RHF-SCF
  -1392.05838393  -1391.77105767  -1391.79882347
 **********************************************************************************************************************************
 Molpro calculation terminated
