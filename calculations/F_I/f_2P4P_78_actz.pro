
 Working directory              : /wrk/irikura/molpro.Wj4lvmeLJl/
 Global scratch directory       : /wrk/irikura/molpro.Wj4lvmeLJl/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.Wj4lvmeLJl/

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
     wf,nelec=9,sym=2,spin=3;state,3;
     expec2,lxx,lyy,lzz;
 }
 table, energy, ll
 title, Energies and &lt;L**2&gt; values
 
 {ci;wf,sym=2,spin=1;state,3; save,5201.2}
 hlsdiag = energd4
 {ci;wf,sym=2,spin=3;state,3; save,5203.2}
 hlsdiag(4) = energd4
 
 table,hlsdiag
 
 {ci;hlsmat,ls,5201.2,5203.2;print,vls=0,hls=0}                                  !compute and diagonalize SO matrix
 Commands initialized (810), CPU time= 0.01 sec, 661 directives.
 Default parameters read. Elapsed time= 0.17 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2021.2 linked Jun  2 2021 00:13:23


 **********************************************************************************************************************************
 LABEL *   F SO-CI                                                                       
  64 bit mpp version                                                                     DATE: 29-Feb-24          TIME: 16:01:29  
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

 SORT1 READ     1711873. AND WROTE       15143. INTEGRALS IN      1 RECORDS. CPU TIME:     0.02 SEC, REAL TIME:     0.02 SEC
 SORT2 READ      173263. AND WROTE      810039. INTEGRALS IN     12 RECORDS. CPU TIME:     0.01 SEC, REAL TIME:     0.01 SEC

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
 CPU TIMES  *         0.55      0.31
 REAL TIME  *         1.11 SEC
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
    3    1    0     -97.68751708      -0.00722455    0.02375093    0.02375093    0.00000000    0    0.34E-02      0.05
    4    1    0     -97.68758330      -0.00006622    0.00405769    0.00405769    0.00000000    1    0.65E-03      0.07
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
    1.2     1.00000    -2.34205     1  1  px   1.24775    1  3  px  -0.29091
    2.2     1.00000    -2.34205     1  1  py   1.24671    1  3  py  -0.29067
    3.2     1.00000    -2.34205     1  1  pz   1.24974    1  3  pz  -0.29138


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
 CPU TIMES  *         0.68      0.13      0.31
 REAL TIME  *         1.27 SEC
 DISK USED  *        31.54 MB (local),      427.89 MB (total)
 SF USED    *         0.46 MB
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
 Number of states:             3
 Number of CSFs:             656   (776 determinants, 1568 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL (state 1.2)

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 6 4 5 3 2 1 6   4 5 3 2 1 2 6 4 5 3   1 2 6 4 3 5 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.679D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.996D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.396D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.418D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.366D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.416D-01 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 2 3 3 1 2 3 1 2 6   5 4 9 710 8 3 2 1 6  10 8 4 5 7 9 3 1 2 2   3 1

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.16667   0.16667   0.16667
 Weight factors for state symmetry  2:    0.16667   0.16667   0.16667
 
 Number of orbital rotations:  230  ( 2 closed/active, 24 closed/virtual, 0 active/active, 204 active/virtual )
 Total number of variables:    8498
 
  Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1    7   34    0    -99.12956106     -99.24004087   -0.11047982    0.69338772 0.00101544 0.00054328  0.69E+00      0.34
   2    8   32    0    -99.24333577     -99.24364233   -0.00030655    0.03844413 0.00001136 0.00001906  0.19E-01      0.73
   3    6   24    0    -99.24364307     -99.24364307   -0.00000000    0.00014603 0.00000021 0.00000088  0.12E-03      1.06
   4    2    6    0    -99.24364307     -99.24364307    0.00000000    0.00000009 0.00000001 0.00000009  0.44E-06      1.22

 CONVERGENCE REACHED!  Final gradient:    0.00000002 ( 0.19E-07)
                       Final energy:    -99.24364307
 
 Results for state 1.2 Doublet
 =============================
 !MCSCF STATE 1.2 Doublet Energy               -99.506944997174
 Nuclear energy                                  0.00000000
 Kinetic energy                                100.26346479
 One electron energy                          -139.27231067
 Two electron energy                            39.76536568
 Virial ratio                                    1.99245468
 
 !MCSCF STATE 1.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.2 Doublet
 =============================
 !MCSCF STATE 2.2 Doublet Energy               -99.506944996754
 Nuclear energy                                  0.00000000
 Kinetic energy                                100.26346479
 One electron energy                          -139.27231068
 Two electron energy                            39.76536568
 Virial ratio                                    1.99245468
 
 !MCSCF STATE 2.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.2 Doublet
 =============================
 !MCSCF STATE 3.2 Doublet Energy               -99.506944994884
 Nuclear energy                                  0.00000000
 Kinetic energy                                100.26346482
 One electron energy                          -139.27231071
 Two electron energy                            39.76536572
 Virial ratio                                    1.99245468
 
 !MCSCF STATE 3.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.2 Quartet
 =============================
 !MCSCF STATE 1.2 Quartet Energy               -98.980341151632
 Nuclear energy                                  0.00000000
 Kinetic energy                                 99.43739902
 One electron energy                          -135.39541947
 Two electron energy                            36.41507832
 Virial ratio                                    1.99540356
 
 !MCSCF STATE 1.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.2 Quartet
 =============================
 !MCSCF STATE 2.2 Quartet Energy               -98.980341147183
 Nuclear energy                                  0.00000000
 Kinetic energy                                 99.43739905
 One electron energy                          -135.39541952
 Two electron energy                            36.41507837
 Virial ratio                                    1.99540356
 
 !MCSCF STATE 2.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.2 Quartet
 =============================
 !MCSCF STATE 3.2 Quartet Energy               -98.980341146185
 Nuclear energy                                  0.00000000
 Kinetic energy                                 99.43739906
 One electron energy                          -135.39541953
 Two electron energy                            36.41507838
 Virial ratio                                    1.99540356
 
 !MCSCF STATE 3.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 !MCSCF expec      <1.2 Doublet|LXLX|1.2 Doublet>     0.999999999810
 !MCSCF expec      <2.2 Doublet|LXLX|2.2 Doublet>     0.000000000214
 !MCSCF expec      <3.2 Doublet|LXLX|3.2 Doublet>     0.999999999976
 !MCSCF expec      <1.2 Quartet|LXLX|1.2 Quartet>     1.000000000000
 !MCSCF expec      <2.2 Quartet|LXLX|2.2 Quartet>     0.000000000010
 !MCSCF expec      <3.2 Quartet|LXLX|3.2 Quartet>     0.999999999990
 
 !MCSCF expec      <1.2 Doublet|LYLY|1.2 Doublet>     0.000000000191
 !MCSCF expec      <2.2 Doublet|LYLY|2.2 Doublet>     0.999999999810
 !MCSCF expec      <3.2 Doublet|LYLY|3.2 Doublet>     0.999999999999
 !MCSCF expec      <1.2 Quartet|LYLY|1.2 Quartet>     1.000000000000
 !MCSCF expec      <2.2 Quartet|LYLY|2.2 Quartet>     0.999999999990
 !MCSCF expec      <3.2 Quartet|LYLY|3.2 Quartet>     0.000000000010
 
 !MCSCF expec      <1.2 Doublet|LZLZ|1.2 Doublet>     0.999999999999
 !MCSCF expec      <2.2 Doublet|LZLZ|2.2 Doublet>     0.999999999976
 !MCSCF expec      <3.2 Doublet|LZLZ|3.2 Doublet>     0.000000000025
 !MCSCF expec      <1.2 Quartet|LZLZ|1.2 Quartet>     0.000000000000
 !MCSCF expec      <2.2 Quartet|LZLZ|2.2 Quartet>     1.000000000000
 !MCSCF expec      <3.2 Quartet|LZLZ|3.2 Quartet>     1.000000000000
 
 !MCSCF expec      <1.2 Doublet|L**2|1.2 Doublet>     2.000000000000
 !MCSCF expec      <2.2 Doublet|L**2|2.2 Doublet>     2.000000000000
 !MCSCF expec      <3.2 Doublet|L**2|3.2 Doublet>     2.000000000000
 !MCSCF expec      <1.2 Quartet|L**2|1.2 Quartet>     2.000000000000
 !MCSCF expec      <2.2 Quartet|L**2|2.2 Quartet>     2.000000000001
 !MCSCF expec      <3.2 Quartet|L**2|3.2 Quartet>     2.000000000000
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000   -26.66762     1  1  s    0.99934
    2.1     1.99356    -1.75732     1  2  s    1.04084
    3.1     0.00678     1.16538     1  2  s   -1.25803    1  3  s   -0.48538    1  4  s    1.68135
    1.2     1.49225    -0.72159     1  1  pz   1.04143
    2.2     1.49225    -0.72159     1  1  px   1.04143
    3.2     1.49225    -0.72159     1  1  py   1.04143
    4.2     0.17430     0.20072     1  1  py  -0.49048    1  6  py   0.97338
    5.2     0.17430     0.20072     1  1  px  -0.49048    1  6  px   0.97338
    6.2     0.17430     0.20072     1  1  pz  -0.49048    1  6  pz   0.97338
 *** IN SYMMETRY  1 ORBITAL   5 SYMMETRY CONTAMINATION OF 0.170D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL   6 SYMMETRY CONTAMINATION OF 0.170D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL   8 SYMMETRY CONTAMINATION OF 0.146D-03 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  10 SYMMETRY CONTAMINATION OF 0.402D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  11 SYMMETRY CONTAMINATION OF 0.402D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  16 SYMMETRY CONTAMINATION OF 0.333D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  17 SYMMETRY CONTAMINATION OF 0.333D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  22 SYMMETRY CONTAMINATION OF 0.968D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  23 SYMMETRY CONTAMINATION OF 0.968D-01 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 1 5 3 6 4 2 5   3 6 4 2 1 5 3 6 4 2   1 3 5 6 4 2 1
 *** IN SYMMETRY  2 ORBITAL  10 SYMMETRY CONTAMINATION OF 0.526D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  11 SYMMETRY CONTAMINATION OF 0.526D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  12 SYMMETRY CONTAMINATION OF 0.145D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  13 SYMMETRY CONTAMINATION OF 0.145D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  18 SYMMETRY CONTAMINATION OF 0.642D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  19 SYMMETRY CONTAMINATION OF 0.642D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  20 SYMMETRY CONTAMINATION OF 0.349D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  21 SYMMETRY CONTAMINATION OF 0.349D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  22 SYMMETRY CONTAMINATION OF 0.603D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  23 SYMMETRY CONTAMINATION OF 0.603D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  25 SYMMETRY CONTAMINATION OF 0.103D-03 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  26 SYMMETRY CONTAMINATION OF 0.103D-03 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 1 2 2 1 3 3 1 2 9   7 810 5 4 6 3 1 2 7   9 810 5 4 6 2 1 3 2   1 3
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Reoptimze the CI vectors with natural orbitals 
 
 CI Coefficients of symmetry 2 (Doublet)
 =======================================
 
 20 a22000      0.00000254      0.00000271      0.98600748
 20 2a2000     -0.00000445      0.98600748     -0.00000271
 20 22a000      0.98600748      0.00000445     -0.00000254
 20 a2a00b     -0.06854359     -0.00000031      0.00000018
 20 aa200b      0.00000031     -0.06854359      0.00000019
 20 aa20b0      0.00000018      0.00000019      0.06854358
 20 2aa0b0     -0.06854357     -0.00000031      0.00000018
 20 a2ab00      0.00000018      0.00000019      0.06854357
 20 2aab00     -0.00000031      0.06854357     -0.00000019
 
 Energy:      -99.50694500    -99.50694500    -99.50694499
 
 
 CI Coefficients of symmetry 2 (Quartet)
 =======================================
 
 20 2aaa00      0.00000118      0.69968472      0.00000963
 20 2aa0a0      0.00000146     -0.00000963      0.69968467
 20 a2aa00      0.69968450     -0.00000118     -0.00000146
 20 aa20a0      0.69968441     -0.00000118     -0.00000146
 20 a2a00a      0.00000146     -0.00000963      0.69968424
 20 aa200a     -0.00000118     -0.69968419     -0.00000963
 20 20aaa0     -0.00000010     -0.06244686     -0.00000086
 20 2a0aa0     -0.00000013      0.00000086     -0.06244686
 20 02aa0a     -0.06244684      0.00000011      0.00000013
 20 0a20aa     -0.06244683      0.00000011      0.00000013
 20 a20a0a     -0.00000013      0.00000086     -0.06244682
 20 a020aa      0.00000010      0.06244681      0.00000086
 
 Energy:      -98.98034115    -98.98034115    -98.98034115
 


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
 CPU TIMES  *         2.06      1.38      0.13      0.31
 REAL TIME  *         2.89 SEC
 DISK USED  *        34.80 MB (local),      467.01 MB (total)
 SF USED    *         3.47 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

        ENERGY      LL
    -99.50694500   2.0
    -99.50694500   2.0
    -99.50694499   2.0
    -98.98034115   2.0
    -98.98034115   2.0
    -98.98034115   2.0
                                                  


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


 Number of p-space configurations:   3

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1       -99.50694500
     2       -99.50694500
     3       -99.50694499

 Number of blocks in overlap matrix:    16   Smallest eigenvalue:  0.38D-06
 Number of N-2 electron functions:     192
 Number of N-1 electron functions:    2688

 Number of internal configurations:                 1204
 Number of singly external configurations:         67232
 Number of doubly external configurations:        120648
 Total number of contracted configurations:       189084
 Total number of uncontracted configurations:    1637598

 Diagonal Coupling coefficients finished.               Storage:  508056 words, CPU-Time:      0.08 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   58596 words, CPU-time:      0.00 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000   -99.50694500    -0.00000000    -0.20792821  0.26D-01  0.12D-01     0.20
    1     2     2     1.00000000     0.00000000   -99.50694500    -0.00000000    -0.20791012  0.26D-01  0.12D-01     0.20
    1     3     3     1.00000000     0.00000000   -99.50694499    -0.00000000    -0.20792161  0.26D-01  0.12D-01     0.20
    2     1     1     1.03481857    -0.19958423   -99.70652923    -0.19958423    -0.00788601  0.54D-03  0.69D-03     0.71
    2     2     2     1.03481902    -0.19958034   -99.70652534    -0.19958034    -0.00788720  0.54D-03  0.69D-03     0.71
    2     3     3     1.03482879    -0.19957187   -99.70651687    -0.19957187    -0.00790304  0.54D-03  0.69D-03     0.71
    3     1     1     1.03713475    -0.20758979   -99.71453479    -0.00800556    -0.00053940  0.34D-04  0.54D-04     1.20
    3     2     2     1.03713446    -0.20758945   -99.71453445    -0.00800911    -0.00053983  0.34D-04  0.54D-04     1.20
    3     3     3     1.03713412    -0.20758808   -99.71453307    -0.00801620    -0.00054095  0.34D-04  0.54D-04     1.20
    4     1     1     1.03853692    -0.20819777   -99.71514277    -0.00060798    -0.00004592  0.47D-05  0.38D-05     1.64
    4     2     2     1.03853620    -0.20819775   -99.71514275    -0.00060830    -0.00004592  0.47D-05  0.38D-05     1.64
    4     3     3     1.03853548    -0.20819753   -99.71514252    -0.00060945    -0.00004615  0.48D-05  0.38D-05     1.64
    5     1     1     1.03886087    -0.20824772   -99.71519272    -0.00004995    -0.00000382  0.32D-06  0.32D-06     2.09
    5     2     2     1.03886074    -0.20824772   -99.71519271    -0.00004996    -0.00000382  0.32D-06  0.32D-06     2.09
    5     3     3     1.03886044    -0.20824769   -99.71519269    -0.00005017    -0.00000384  0.32D-06  0.32D-06     2.09
    6     1     1     1.03885955    -0.20825182   -99.71519681    -0.00000410    -0.00000038  0.16D-07  0.39D-07     2.56
    6     2     2     1.03885952    -0.20825182   -99.71519681    -0.00000410    -0.00000038  0.16D-07  0.39D-07     2.56
    6     3     3     1.03885948    -0.20825182   -99.71519681    -0.00000412    -0.00000038  0.16D-07  0.39D-07     2.56
    7     1     1     1.03885988    -0.20825222   -99.71519721    -0.00000040    -0.00000004  0.19D-08  0.36D-08     3.04
    7     2     2     1.03885987    -0.20825222   -99.71519721    -0.00000040    -0.00000004  0.19D-08  0.36D-08     3.04
    7     3     3     1.03885986    -0.20825222   -99.71519721    -0.00000040    -0.00000004  0.19D-08  0.36D-08     3.04


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   3.6%
 S   1.3%   4.9%
 P   4.6%  24.7%  37.2%

 Initialization:   4.6%
 Other:           19.1%

 Total CPU:        3.0 seconds
 =====================================



 gnormi=  0.96259373  gnorms=  0.02167082  gnormp=  0.01573545  gnorm=  1.00000000
 ecorri= -0.20046228  ecorrs= -0.00451204  ecorrp= -0.00327790  ecorr= -0.20825222

 gnormi=  0.96259374  gnorms=  0.02167081  gnormp=  0.01573546  gnorm=  1.00000000
 ecorri= -0.20046228  ecorrs= -0.00451206  ecorrp= -0.00327788  ecorr= -0.20825222

 gnormi=  0.96259374  gnorms=  0.02167082  gnormp=  0.01573544  gnorm=  1.00000000
 ecorri= -0.20046228  ecorrs= -0.00451205  ecorrp= -0.00327789  ecorr= -0.20825222

 Wavefunction saved on  5201.2

 Reference coefficients greater than 0.0500000
 =============================================
 202/2000           0.0000000   0.9752156   0.0000000
 2022/000           0.0000000  -0.0000000   0.9752156
 20/22000           0.9752156  -0.0000000  -0.0000000

 Coefficients of singly external configurations greater than 0.0500000
 =====================================================================

 20/\2000   7.2     0.0000000  -0.0541222   0.0000000
 20/2\000   9.2     0.0541221   0.0000000  -0.0000000
 20/\2000   8.2     0.0541221   0.0000000  -0.0000000
 202/\000   9.2    -0.0000000   0.0541221  -0.0000000
 202/\000   8.2    -0.0000000  -0.0000000  -0.0541220
 20/2\000   7.2    -0.0000000  -0.0000000  -0.0541220

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1          -0.000000    0.000000    0.978590
 2          -0.000000    0.978590   -0.000000
 3           0.978590    0.000000    0.000000

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.978590   -0.000000    0.000000
 2          -0.000000    0.978590    0.000000
 3           0.000000    0.000000    0.978590


 RESULTS FOR STATE 1.2
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.97859001 (fixed)   0.98111861 (relaxed)   0.97859001 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00517453    0.00000001   -0.00103154
 Singles      0.02262944   -0.08053208   -0.08163265
 Pairs        0.01643152   -0.12772057   -0.12558802
 Total        1.04423549   -0.20825264   -0.20825222
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -99.50694499
 Nuclear energy                         0.00000000
 Kinetic energy                       100.28808868
 One electron energy                 -139.07633474
 Two electron energy                   39.36113752
 Virial quotient                       -0.99428754
 Correlation energy                    -0.20825222
 !MRCI STATE 1.2 Energy               -99.715197213607

 Properties without orbital relaxation:

 !MRCI STATE 1.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -99.72440935 (Davidson, fixed reference)
 Cluster corrected energies           -99.72328987 (Davidson, relaxed reference)
 Cluster corrected energies           -99.72440935 (Davidson, rotated reference)

 Cluster corrected energies           -99.72142776 (Pople, fixed reference)
 Cluster corrected energies           -99.72066124 (Pople, relaxed reference)
 Cluster corrected energies           -99.72142776 (Pople, rotated reference)



 RESULTS FOR STATE 2.2
 =====================

 Coefficient of reference function:   C(0) = 0.97859001 (fixed)   0.98111861 (relaxed)   0.97859001 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00517452    0.00000002   -0.12334169
 Singles      0.02262943   -0.08053205   -0.08163264
 Pairs        0.01643152    0.00000000   -0.00327788
 Total        1.04423547   -0.08053204   -0.20825222
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -99.50694500
 Nuclear energy                         0.00000000
 Kinetic energy                       100.28808895
 One electron energy                 -139.07633482
 Two electron energy                   39.36113761
 Virial quotient                       -0.99428754
 Correlation energy                    -0.20825222
 !MRCI STATE 2.2 Energy               -99.715197213310

 Properties without orbital relaxation:

 !MRCI STATE 2.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -99.72440935 (Davidson, fixed reference)
 Cluster corrected energies           -99.72328987 (Davidson, relaxed reference)
 Cluster corrected energies           -99.72440935 (Davidson, rotated reference)

 Cluster corrected energies           -99.72142776 (Pople, fixed reference)
 Cluster corrected energies           -99.72066124 (Pople, relaxed reference)
 Cluster corrected energies           -99.72142776 (Pople, rotated reference)



 RESULTS FOR STATE 3.2
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.97859003 (fixed)   0.98111862 (relaxed)   0.97859003 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00517450    0.00000002   -0.12334168
 Singles      0.02262944   -0.08053207   -0.08163265
 Pairs        0.01643150   -0.00000000   -0.00327789
 Total        1.04423544   -0.08053205   -0.20825222
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -99.50694500
 Nuclear energy                         0.00000000
 Kinetic energy                       100.28808971
 One electron energy                 -139.07633510
 Two electron energy                   39.36113789
 Virial quotient                       -0.99428753
 Correlation energy                    -0.20825222
 !MRCI STATE 3.2 Energy               -99.715197212852

 Properties without orbital relaxation:

 !MRCI STATE 3.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -99.72440934 (Davidson, fixed reference)
 Cluster corrected energies           -99.72328986 (Davidson, relaxed reference)
 Cluster corrected energies           -99.72440934 (Davidson, rotated reference)

 Cluster corrected energies           -99.72142775 (Pople, fixed reference)
 Cluster corrected energies           -99.72066123 (Pople, relaxed reference)
 Cluster corrected energies           -99.72142775 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       29.65       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       6        9.74       700     1000      520     2100     2140     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *         5.33      3.27      1.38      0.13      0.31
 REAL TIME  *         6.58 SEC
 DISK USED  *        39.44 MB (local),      522.67 MB (total)
 SF USED    *        49.61 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =       -99.72440935  AU                              
 SETTING HLSDIAG(2)     =       -99.72440935  AU                              
 SETTING HLSDIAG(3)     =       -99.72440934  AU                              


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 3  Roots:    1   2   3
 Number of reference states: 3  Roots:    1   2   3

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
     1       -98.98034115
     2       -98.98034115
     3       -98.98034115

 Number of blocks in overlap matrix:    11   Smallest eigenvalue:  0.12D-05
 Number of N-2 electron functions:     185
 Number of N-1 electron functions:    1932

 Number of internal configurations:                  656
 Number of singly external configurations:         48256
 Number of doubly external configurations:        116091
 Total number of contracted configurations:       165003
 Total number of uncontracted configurations:    1322822

 Diagonal Coupling coefficients finished.               Storage:  322538 words, CPU-Time:      0.03 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   59008 words, CPU-time:      0.00 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000   -98.98034115    -0.00000000    -0.18255906  0.27D-01  0.96D-02     0.10
    1     2     2     1.00000000     0.00000000   -98.98034115     0.00000000    -0.18251840  0.27D-01  0.96D-02     0.10
    1     3     3     1.00000000     0.00000000   -98.98034115    -0.00000000    -0.18246079  0.27D-01  0.96D-02     0.10
    2     1     1     1.03461999    -0.17700314   -99.15734429    -0.17700314    -0.00474853  0.55D-03  0.37D-03     0.48
    2     2     2     1.03462908    -0.17700016   -99.15734131    -0.17700016    -0.00475127  0.55D-03  0.37D-03     0.48
    2     3     3     1.03462779    -0.17699728   -99.15733842    -0.17699728    -0.00475339  0.55D-03  0.37D-03     0.48
    3     1     1     1.03751212    -0.18188360   -99.16222475    -0.00488046    -0.00035595  0.46D-04  0.32D-04     0.88
    3     2     2     1.03751311    -0.18188354   -99.16222469    -0.00488338    -0.00035610  0.46D-04  0.32D-04     0.88
    3     3     3     1.03751422    -0.18188332   -99.16222447    -0.00488605    -0.00035632  0.46D-04  0.32D-04     0.88
    4     1     1     1.03921028    -0.18226749   -99.16260864    -0.00038389    -0.00003131  0.53D-05  0.27D-05     1.24
    4     2     2     1.03920978    -0.18226739   -99.16260854    -0.00038385    -0.00003140  0.53D-05  0.27D-05     1.24
    4     3     3     1.03920936    -0.18226738   -99.16260852    -0.00038406    -0.00003142  0.53D-05  0.27D-05     1.24
    5     1     1     1.03962012    -0.18230017   -99.16264132    -0.00003268    -0.00000226  0.18D-06  0.22D-06     1.60
    5     2     2     1.03962053    -0.18230017   -99.16264131    -0.00003278    -0.00000227  0.18D-06  0.22D-06     1.60
    5     3     3     1.03962049    -0.18230017   -99.16264131    -0.00003279    -0.00000227  0.18D-06  0.22D-06     1.60
    6     1     1     1.03964028    -0.18230262   -99.16264378    -0.00000246    -0.00000023  0.25D-07  0.22D-07     1.97
    6     2     2     1.03964026    -0.18230263   -99.16264378    -0.00000246    -0.00000023  0.25D-07  0.22D-07     1.97
    6     3     3     1.03964022    -0.18230263   -99.16264378    -0.00000246    -0.00000022  0.25D-07  0.22D-07     1.97
    7     1     1     1.03965290    -0.18230286   -99.16264402    -0.00000024    -0.00000003  0.32D-08  0.34D-08     2.33
    7     2     2     1.03965290    -0.18230287   -99.16264402    -0.00000024    -0.00000003  0.33D-08  0.34D-08     2.33
    7     3     3     1.03965289    -0.18230287   -99.16264401    -0.00000024    -0.00000003  0.32D-08  0.34D-08     2.33


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   3.0%
 S   0.9%   4.7%
 P   4.3%  24.9%  36.1%

 Initialization:   2.6%
 Other:           23.6%

 Total CPU:        2.3 seconds
 =====================================



 gnormi=  0.96185948  gnorms=  0.02731891  gnormp=  0.01082161  gnorm=  1.00000000
 ecorri= -0.17534974  ecorrs= -0.00497944  ecorrp= -0.00197369  ecorr= -0.18230286

 gnormi=  0.96185948  gnorms=  0.02731888  gnormp=  0.01082163  gnorm=  1.00000000
 ecorri= -0.17534974  ecorrs= -0.00497947  ecorrp= -0.00197366  ecorr= -0.18230287

 gnormi=  0.96185949  gnorms=  0.02731886  gnormp=  0.01082165  gnorm=  1.00000000
 ecorri= -0.17534974  ecorrs= -0.00497947  ecorrp= -0.00197365  ecorr= -0.18230287

 Wavefunction saved on  5203.2

 Reference coefficients greater than 0.0500000
 =============================================
 20//200/           0.0000000   0.6864224  -0.0000000
 20//20/0           0.6863914   0.0000000   0.0000000
 20/2/00/           0.0000000   0.0000000   0.6863865
 202//0/0          -0.0000000   0.0000000   0.6863427
 20/2//00           0.6863378   0.0000000   0.0000000
 202///00           0.0000000  -0.6863069   0.0000000
 20/020//          -0.0000000  -0.0611797  -0.0000000
 200/20//          -0.0611768   0.0000000  -0.0000000
 20/20/0/           0.0000000   0.0000000  -0.0611762
 202/0//0           0.0000000   0.0000000  -0.0611721
 2002//0/          -0.0611716   0.0000000  -0.0000000
 2020///0           0.0000000   0.0611687   0.0000000
 20///\0/          -0.0000000  -0.0519458   0.0000000
 20///\/0          -0.0519444  -0.0000000   0.0000000
 20///0\/           0.0000000   0.0000000   0.0519442

 Coefficients of singly external configurations greater than 0.0500000
 =====================================================================

 20//2000   7.2    -0.0000000  -0.0636449  -0.0000000
 20//2000   8.2    -0.0636392   0.0000000  -0.0000000
 20/2/000   7.2     0.0000000   0.0000000  -0.0636381
 202//000   8.2     0.0000000   0.0000000  -0.0636299
 20/2/000   9.2    -0.0636288   0.0000000  -0.0000000
 202//000   9.2     0.0000000   0.0636231   0.0000000

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.980714    0.000000   -0.000000
 2           0.000000   -0.980714    0.000000
 3           0.000000    0.000000    0.980714

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.980714    0.000000    0.000000
 2           0.000000    0.980714   -0.000000
 3           0.000000   -0.000000    0.980714


 RESULTS FOR STATE 1.2
 =====================

 Coefficient of reference function:   C(0) = 0.98071376 (fixed)   0.98074435 (relaxed)   0.98071376 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00006239    0.00000000   -0.09232913
 Singles      0.02840395   -0.08631800   -0.08800004
 Pairs        0.01125142   -0.00000000   -0.00197369
 Total        1.03971776   -0.08631800   -0.18230286
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -98.98034115
 Nuclear energy                         0.00000000
 Kinetic energy                        99.85490829
 One electron energy                 -135.36893326
 Two electron energy                   36.20628924
 Virial quotient                       -0.99306730
 Correlation energy                    -0.18230286
 !MRCI STATE 1.2 Energy               -99.162644016430

 Properties without orbital relaxation:

 !MRCI STATE 1.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -99.16988468 (Davidson, fixed reference)
 Cluster corrected energies           -99.16987285 (Davidson, relaxed reference)
 Cluster corrected energies           -99.16988468 (Davidson, rotated reference)

 Cluster corrected energies           -99.16626292 (Pople, fixed reference)
 Cluster corrected energies           -99.16625702 (Pople, relaxed reference)
 Cluster corrected energies           -99.16626292 (Pople, rotated reference)



 RESULTS FOR STATE 2.2
 =====================

 Coefficient of reference function:   C(0) = 0.98071376 (fixed)   0.98074435 (relaxed)   0.98071376 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00006239    0.00000000   -0.09232917
 Singles      0.02840393   -0.08631796   -0.08800003
 Pairs        0.01125145   -0.00000000   -0.00197366
 Total        1.03971776   -0.08631796   -0.18230287
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -98.98034115
 Nuclear energy                         0.00000000
 Kinetic energy                        99.85490820
 One electron energy                 -135.36893323
 Two electron energy                   36.20628922
 Virial quotient                       -0.99306730
 Correlation energy                    -0.18230287
 !MRCI STATE 2.2 Energy               -99.162644015830

 Properties without orbital relaxation:

 !MRCI STATE 2.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -99.16988468 (Davidson, fixed reference)
 Cluster corrected energies           -99.16987285 (Davidson, relaxed reference)
 Cluster corrected energies           -99.16988468 (Davidson, rotated reference)

 Cluster corrected energies           -99.16626292 (Pople, fixed reference)
 Cluster corrected energies           -99.16625701 (Pople, relaxed reference)
 Cluster corrected energies           -99.16626292 (Pople, rotated reference)



 RESULTS FOR STATE 3.2
 =====================

 Coefficient of reference function:   C(0) = 0.98071377 (fixed)   0.98074436 (relaxed)   0.98071377 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00006238   -0.00000000   -0.00001092
 Singles      0.02840391   -0.08631795   -0.08800003
 Pairs        0.01125146   -0.09598494   -0.09429191
 Total        1.03971775   -0.18230288   -0.18230287
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -98.98034115
 Nuclear energy                         0.00000000
 Kinetic energy                        99.85490752
 One electron energy                 -135.36893296
 Two electron energy                   36.20628895
 Virial quotient                       -0.99306731
 Correlation energy                    -0.18230287
 !MRCI STATE 3.2 Energy               -99.162644013401

 Properties without orbital relaxation:

 !MRCI STATE 3.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -99.16988467 (Davidson, fixed reference)
 Cluster corrected energies           -99.16987285 (Davidson, relaxed reference)
 Cluster corrected energies           -99.16988467 (Davidson, rotated reference)

 Cluster corrected energies           -99.16626292 (Pople, fixed reference)
 Cluster corrected energies           -99.16625701 (Pople, relaxed reference)
 Cluster corrected energies           -99.16626292 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       29.65       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7       15.25       700     1000      520     2100     2140     5201     5203   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *         7.83      2.49      3.27      1.38      0.13      0.31
 REAL TIME  *         9.41 SEC
 DISK USED  *        44.94 MB (local),      588.77 MB (total)
 SF USED    *        49.61 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(4)     =       -99.16988468  AU                              
 SETTING HLSDIAG(5)     =       -99.16988468  AU                              
 SETTING HLSDIAG(6)     =       -99.16988467  AU                              


        HLSDIAG
    -99.72440935
    -99.72440935
    -99.72440934
    -99.16988468
    -99.16988468
    -99.16988467
                                                  


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

 Time for Seward_LS:       2.00 sec

         907905. SPIN-ORBIT INTEGRALS WRITTEN OUT IN      236 RECORDS ON RECORD     11290 OF FILE 1


 CPU time:      2.00 sec, REAL time:      3.39 sec


 SORTLS1 read      953880. and wrote      953880. SO integrals in    36 records. CPU time:      0.00 sec, REAL time:      0.02 sec
 SORTLS2 read      953880. and wrote      953880. SO integrals in    36 records. CPU time:      0.01 sec, REAL time:      0.01 sec

 FILE SIZES: FILE 1:    46.6 MBYTE, FILE 4:     0.0 MBYTE, TOTAL:    46.6 MBYTE
 Preparing effective Fock matrices
 eXact-2-Component (X2C) method activated

 Computing Douglas-Kroll / X2C integrals

  
 Total X Y Z Fock matrices evaluated:     3    3    3
  
 Wavefunction restored from record  5201.2  Symmetry=2  S= 0.5  NSTATE=   3

 Original energies: -99.715197 -99.715197 -99.715197
 Replaced energies: -99.724409 -99.724409 -99.724409

 Wavefunction restored from record  5203.2  Symmetry=2  S= 1.5  NSTATE=   3

 Original energies: -99.162644 -99.162644 -99.162644
 Replaced energies: -99.169885 -99.169885 -99.169885

 >>> Fock matrix approximation error in all internal so: 
  -6.0693047641807150       (exact)   -6.0505595522582620       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -6.0697833042350524       (exact)   -6.1697067608808958       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -6.0698315599126147       (exact)   -6.0504388981960675       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -6.0701360108028712       (exact)   -6.1700647700204172       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   7.0078777897896005       (exact)    6.9862336153898550       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -7.0082842566970731       (exact)   -7.1244041790028376       (Fock matrix)


   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=   -99.72440935

 Wigner-Eckart theorem used for 23 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.2  0.5  0.5       0.00       0.00       0.00       0.00     128.61       0.00      -0.00      25.38      -0.00       0.00
                            0.00       0.00       0.00       0.00       0.00    -128.61       0.00       0.00      26.15       0.00

    2   2.2  0.5  0.5       0.00       0.00       0.00    -128.61      -0.00      -0.00      27.00       0.00      -0.00       0.00
                           -0.00      -0.00     128.61      -0.00       0.00       0.00      -0.00      -0.00       0.00       0.00

    3   3.2  0.5  0.5       0.00       0.00       0.00      -0.00       0.00      -0.00       0.00      -0.00      -0.00       0.00
                           -0.00    -128.61       0.00     128.61      -0.00      -0.00      26.94       0.00       0.00       0.00

    4   1.2  0.5 -0.5       0.00    -128.61      -0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                           -0.00       0.00    -128.61      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00

    5   2.2  0.5 -0.5     128.61      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      15.59
                           -0.00      -0.00       0.00       0.00       0.00    -128.61       0.00       0.00       0.00      -0.00

    6   3.2  0.5 -0.5       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          128.61      -0.00       0.00       0.00     128.61      -0.00       0.00       0.00       0.00      15.56

    7   1.2  1.5  1.5      -0.00      27.00       0.00       0.00       0.00       0.00  121704.10       0.00       0.00      -0.00
                           -0.00       0.00     -26.94      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00

    8   2.2  1.5  1.5      25.38       0.00      -0.00       0.00       0.00       0.00       0.00  121704.10       0.00      43.12
                           -0.00       0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00      74.78      -0.00

    9   3.2  1.5  1.5      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00  121704.10      -0.00
                          -26.15      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00     -74.78       0.00     -43.14

   10   1.2  1.5  0.5       0.00       0.00       0.00      -0.00      15.59       0.00      -0.00      43.12      -0.00  121704.10
                           -0.00      -0.00      -0.00      -0.00       0.00     -15.56       0.00       0.00      43.14      -0.00

   11   2.2  1.5  0.5       0.00       0.00       0.00      14.65       0.00      -0.00     -43.12      -0.00      -0.00       0.00
                           -0.00      -0.00      32.01      -0.00       0.00      -0.00      -0.00      -0.00      -0.00       0.00

   12   3.2  1.5  0.5       0.00       0.00       0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00
                            0.00     -30.13      -0.00     -15.10      -0.00      -0.00     -43.14       0.00      -0.00      -0.00

   13   1.2  1.5 -0.5      -0.00      15.59       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                            0.00      -0.00      15.56      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   14   2.2  1.5 -0.5      14.65       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00     -49.79
                            0.00      -0.00       0.00      -0.00      -0.00      32.01      -0.00      -0.00      -0.00      -0.00

   15   3.2  1.5 -0.5      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           15.10       0.00       0.00       0.00     -30.13      -0.00      -0.00      -0.00      -0.00     -49.82

   16   1.2  1.5 -1.5       0.00       0.00       0.00      -0.00      27.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00      -0.00      26.94      -0.00      -0.00      -0.00      -0.00

   17   2.2  1.5 -1.5       0.00       0.00       0.00      25.38       0.00      -0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00      -0.00       0.00      -0.00      -0.00      -0.00      -0.00

   18   3.2  1.5 -1.5       0.00       0.00       0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      26.15       0.00       0.00      -0.00      -0.00      -0.00      -0.00


   Nr   State  S   Sz       11         12         13         14         15         16         17         18

    1   1.2  0.5  0.5       0.00       0.00      -0.00      14.65      -0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00     -15.10       0.00       0.00       0.00

    2   2.2  0.5  0.5       0.00       0.00      15.59       0.00      -0.00       0.00       0.00       0.00
                            0.00      30.13       0.00       0.00      -0.00       0.00       0.00       0.00

    3   3.2  0.5  0.5       0.00       0.00       0.00      -0.00      -0.00       0.00       0.00       0.00
                          -32.01       0.00     -15.56      -0.00      -0.00       0.00       0.00       0.00

    4   1.2  0.5 -0.5      14.65      -0.00       0.00       0.00       0.00      -0.00      25.38      -0.00
                            0.00      15.10       0.00       0.00      -0.00      -0.00      -0.00     -26.15

    5   2.2  0.5 -0.5       0.00      -0.00       0.00       0.00       0.00      27.00       0.00      -0.00
                           -0.00       0.00       0.00       0.00      30.13       0.00       0.00      -0.00

    6   3.2  0.5 -0.5      -0.00      -0.00       0.00       0.00       0.00       0.00      -0.00      -0.00
                            0.00       0.00       0.00     -32.01       0.00     -26.94      -0.00      -0.00

    7   1.2  1.5  1.5     -43.12       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      43.14       0.00       0.00       0.00       0.00       0.00       0.00

    8   2.2  1.5  1.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

    9   3.2  1.5  1.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   10   1.2  1.5  0.5       0.00       0.00      -0.00     -49.79       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00       0.00      49.82       0.00       0.00       0.00

   11   2.2  1.5  0.5  121704.10       0.00      49.79      -0.00       0.00       0.00       0.00       0.00
                           -0.00      24.93      -0.00       0.00      -0.00       0.00       0.00       0.00

   12   3.2  1.5  0.5       0.00  121704.10      -0.00      -0.00       0.00       0.00       0.00       0.00
                          -24.93       0.00     -49.82       0.00       0.00       0.00       0.00       0.00

   13   1.2  1.5 -0.5      49.79      -0.00  121704.10       0.00       0.00      -0.00     -43.12       0.00
                            0.00      49.82       0.00       0.00      -0.00      -0.00       0.00      43.14

   14   2.2  1.5 -0.5      -0.00      -0.00       0.00  121704.10       0.00      43.12      -0.00       0.00
                           -0.00      -0.00      -0.00       0.00     -24.93      -0.00       0.00      -0.00

   15   3.2  1.5 -0.5       0.00       0.00       0.00       0.00  121704.10      -0.00      -0.00       0.00
                            0.00      -0.00       0.00      24.93      -0.00     -43.14       0.00       0.00

   16   1.2  1.5 -1.5       0.00       0.00      -0.00      43.12      -0.00  121704.10       0.00       0.00
                           -0.00      -0.00       0.00       0.00      43.14       0.00       0.00      -0.00

   17   2.2  1.5 -1.5       0.00       0.00     -43.12      -0.00      -0.00       0.00  121704.10       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00     -74.78

   18   3.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00  121704.10
                           -0.00      -0.00     -43.14       0.00      -0.00       0.00      74.78      -0.00


 No symmetry adaption


 Spin-orbit eigenstates   (energies)
 ======================

   Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
            (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
   1   -99.72499542    -0.00058607     -128.63      0.00000000        0.00      0.0000
   2   -99.72499542    -0.00058607     -128.63      0.00000000        0.00      0.0000
   3   -99.72499542    -0.00058606     -128.63      0.00000000        0.00      0.0000
   4   -99.72499542    -0.00058606     -128.63      0.00000000        0.00      0.0000
   5   -99.72323742     0.00117193      257.21      0.00175800      385.84      0.0478
   6   -99.72323742     0.00117193      257.21      0.00175800      385.84      0.0478
   7   -99.17022539     0.55418396   121629.32      0.55477002   121757.95     15.0961
   8   -99.17022539     0.55418396   121629.32      0.55477002   121757.95     15.0961
   9   -99.17022516     0.55418419   121629.37      0.55477026   121758.00     15.0961
  10   -99.17022516     0.55418419   121629.37      0.55477026   121758.00     15.0961
  11   -99.17022492     0.55418443   121629.42      0.55477050   121758.05     15.0961
  12   -99.17022492     0.55418443   121629.42      0.55477050   121758.05     15.0961
  13   -99.16965774     0.55475162   121753.91      0.55533768   121882.53     15.1115
  14   -99.16965774     0.55475162   121753.91      0.55533768   121882.53     15.1115
  15   -99.16965746     0.55475189   121753.97      0.55533795   121882.59     15.1115
  16   -99.16965746     0.55475189   121753.97      0.55533795   121882.59     15.1115
  17   -99.16931717     0.55509218   121828.65      0.55567825   121957.28     15.1208
  18   -99.16931717     0.55509218   121828.65      0.55567825   121957.28     15.1208


 Eigenvectors of spin-orbit matrix
 =================================

  Basis states          Eigenvectors (columnwise)

   Nr   State  S   Sz        1             2             3             4             5             6             7             8

    1    1.2  0.5  0.5  -0.035028396  -0.200247916  -0.042391577   0.789647823   0.109675623   0.566837007  -0.000004252  -0.000000080
                        -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000

    2    2.2  0.5  0.5   0.769482675  -0.134601817  -0.153061396  -0.008216959  -0.157617475   0.030496941  -0.000000017   0.000000917
                        -0.089936494   0.015732263   0.156663478   0.008410374   0.544482375  -0.105350291   0.000000000  -0.000000024

    3    3.2  0.5  0.5   0.066689801  -0.011665826   0.408156661   0.021911520   0.544483076  -0.105350426  -0.000000000   0.000000007
                         0.570587959  -0.099810128   0.398772324   0.021407769   0.157617678  -0.030496980  -0.000000005   0.000000254

    4    1.2  0.5 -0.5   0.198894019  -0.034791566  -0.551834354  -0.029624762   0.157617442  -0.030496935  -0.000000080   0.000004250
                        -0.023246612   0.004066422   0.564820787   0.030321929  -0.544482262   0.105350269   0.000000002  -0.000000111

    5    2.2  0.5 -0.5   0.135518090   0.774720692   0.011758092  -0.219023390   0.109675645   0.566837124   0.000000918   0.000000017
                         0.000000105  -0.000000040   0.000000026  -0.000000004   0.000000000  -0.000000000   0.000000000   0.000000000

    6    3.2  0.5 -0.5   0.000000105  -0.000000040   0.000000026  -0.000000004   0.000000000   0.000000000  -0.000000000  -0.000000000
                        -0.100489572  -0.574472075   0.030633437  -0.570623527   0.109675786   0.566837853  -0.000000254  -0.000000005

    7    1.2  1.5  1.5  -0.000296595   0.000051882  -0.000054252  -0.000002912   0.000000071  -0.000000014  -0.000751263   0.039811353
                         0.000034666  -0.000006064   0.000055528   0.000002981  -0.000000245   0.000000047   0.000019699  -0.001036366

    8    2.2  1.5  1.5   0.000007295   0.000041701   0.000008828  -0.000164441  -0.000022897  -0.000118339   0.652349019   0.012311952
                        -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000016   0.000000052

    9    3.2  1.5  1.5   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000016  -0.000000086
                        -0.000007516  -0.000042965  -0.000009095   0.000169424   0.000023591   0.000121927   0.734595448   0.013864194

   10    1.2  1.5  0.5  -0.000004506  -0.000025761  -0.000005414   0.000100841  -0.000028097  -0.000145215   0.142609865   0.002691485
                         0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000058

   11    2.2  1.5  0.5   0.000125935  -0.000022029   0.000171074   0.000009184   0.000022503  -0.000004354   0.000693214  -0.036725835
                        -0.000014719   0.000002575  -0.000175099  -0.000009400  -0.000077736   0.000015041  -0.000017952   0.000956047

   12    3.2  1.5  0.5   0.000025113  -0.000004393  -0.000108693  -0.000005835  -0.000067324   0.000013026  -0.000052083   0.002751682
                         0.000214860  -0.000037584  -0.000106194  -0.000005701  -0.000019489   0.000003771  -0.001994873   0.105704059

   13    1.2  1.5 -0.5  -0.000025587   0.000004476   0.000070471   0.000003783   0.000040379  -0.000007813  -0.002690572   0.142561569
                         0.000002991  -0.000000523  -0.000072130  -0.000003872  -0.000139489   0.000026989   0.000070099  -0.003711157

   14    2.2  1.5 -0.5  -0.000022179  -0.000126793   0.000013142  -0.000244798   0.000015658   0.000080927   0.036738276   0.000693446
                        -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000001  -0.000000094

   15    3.2  1.5 -0.5  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000001  -0.000000152
                         0.000037840   0.000216323   0.000008158  -0.000151958   0.000013561   0.000070088   0.105739869   0.001995553

   16    1.2  1.5 -1.5  -0.000052235  -0.000298614   0.000004168  -0.000077631  -0.000000049  -0.000000255   0.039824840   0.000751522
                        -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000001   0.000000142

   17    2.2  1.5 -1.5  -0.000041419   0.000007245   0.000114917   0.000006169  -0.000032906   0.000006367   0.012307781  -0.652128096
                         0.000004841  -0.000000847  -0.000117621  -0.000006314   0.000113672  -0.000021994  -0.000320448   0.016976155

   18    3.2  1.5 -1.5  -0.000004988   0.000000872   0.000121186   0.000006506  -0.000117119   0.000022661  -0.000360876   0.019116465
                        -0.000042674   0.000007465   0.000118400   0.000006356  -0.000033904   0.000006560  -0.013859496   0.734346671


   Nr   State  S   Sz        9            10            11            12            13            14            15            16

    1    1.2  0.5  0.5   0.000000042   0.000002435  -0.000000252   0.000000007   0.000072521  -0.000039049   0.000007691   0.000304023
                         0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000

    2    2.2  0.5  0.5   0.000005601  -0.000000096   0.000000025   0.000000877   0.000108594   0.000201683  -0.000230038   0.000005820
                        -0.000000100   0.000000002  -0.000000002  -0.000000055   0.000000106   0.000000197  -0.000001208   0.000000031

    3    3.2  0.5  0.5  -0.000000043   0.000000001   0.000000008   0.000000269  -0.000000150  -0.000000278  -0.000000449   0.000000011
                        -0.000002433   0.000000042   0.000000122   0.000004297   0.000153238   0.000284596   0.000085560  -0.000002164

    4    1.2  0.5 -0.5  -0.000002434   0.000000042   0.000000007   0.000000251  -0.000039049  -0.000072521  -0.000304019   0.000007691
                         0.000000043  -0.000000001  -0.000000000  -0.000000016  -0.000000038  -0.000000071  -0.000001596   0.000000040

    5    2.2  0.5 -0.5   0.000000096   0.000005602   0.000000878  -0.000000025   0.000201683  -0.000108594  -0.000005820  -0.000230041
                         0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000

    6    3.2  0.5 -0.5   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000
                         0.000000042   0.000002433  -0.000004305   0.000000122  -0.000284596   0.000153238  -0.000002164  -0.000085561

    7    1.2  1.5  1.5   0.565707982  -0.009691021  -0.007914083  -0.278805789   0.353967819   0.657393326  -0.206407852   0.005221777
                        -0.010076567   0.000172762   0.000494853   0.017446254   0.000346603   0.000642718  -0.001083846   0.000027291

    8    2.2  1.5  1.5  -0.003287441  -0.191894497  -0.295586730   0.008390353   0.104821457  -0.056440271   0.010898383   0.430800970
                         0.000000014  -0.000000010   0.000000496  -0.000000599   0.000000000   0.000000001  -0.000000000  -0.000000001

    9    3.2  1.5  1.5  -0.000000181   0.000000001   0.000000167  -0.000000144   0.000000001   0.000000001  -0.000000000  -0.000000001
                        -0.000035629  -0.002073369   0.100562063  -0.002854464  -0.104808763   0.056433436  -0.010897068  -0.430748999

   10    1.2  1.5  0.5   0.005635965   0.328993575   0.686360739  -0.019482581  -0.060723619   0.032696144  -0.006298447  -0.248970602
                         0.000000290   0.000000017  -0.000001149   0.000001287  -0.000000000  -0.000000001   0.000000000   0.000000000

   11    2.2  1.5  0.5   0.325553566  -0.005576967  -0.016575925  -0.583956796  -0.269615665  -0.500733368  -0.378500982   0.009575254
                        -0.005798867   0.000099318   0.001036288   0.036541055  -0.000263933  -0.000489600  -0.001987512   0.000050354

   12    3.2  1.5  0.5   0.011658016  -0.000199980   0.000179094   0.006320324   0.000136222   0.000252420  -0.003238456   0.000081853
                         0.654492424  -0.011211990   0.002867000   0.101004139  -0.139040730  -0.258228242   0.616730837  -0.015602074

   13    1.2  1.5 -0.5   0.328941397  -0.005635066   0.019444628   0.685020908  -0.032696128  -0.060723590  -0.248967169   0.006298360
                        -0.005859194   0.000100663  -0.001215489  -0.042865130  -0.000031979  -0.000059390  -0.001307328   0.000033073

   14    2.2  1.5 -0.5  -0.005577851  -0.325605207   0.585098956  -0.016608286   0.500733608  -0.269615794   0.009575386   0.378506200
                         0.000000020  -0.000000035  -0.000000976   0.000000975   0.000000141   0.000000236  -0.000000075  -0.000000001

   15    3.2  1.5 -0.5  -0.000000269  -0.000000052   0.000000172  -0.000000312   0.000000139   0.000000233  -0.000000074  -0.000000002
                         0.011213773   0.654596243   0.101201693  -0.002872589  -0.258228366   0.139040796   0.015602289   0.616739339

   16    1.2  1.5 -1.5   0.009692561   0.565797719  -0.279351105   0.007929539   0.657393640  -0.353967989  -0.005221848  -0.206410698
                         0.000000144   0.000000051   0.000000464  -0.000000382   0.000000243   0.000000406  -0.000000129  -0.000000003

   17    2.2  1.5 -1.5   0.191864062  -0.003286920   0.008374011   0.295009722  -0.056440244  -0.104821407  -0.430795031   0.010898233
                        -0.003417535   0.000058534  -0.000523417  -0.018460209  -0.000055202  -0.000102520  -0.002262108   0.000057227

   18    3.2  1.5 -1.5  -0.000036926   0.000000454   0.000178130   0.006280381   0.000055196   0.000102507   0.002261835  -0.000057220
                        -0.002073040   0.000035626   0.002848900   0.100365758  -0.056433409  -0.104808713  -0.430743061   0.010896918


   Nr   State  S   Sz       17            18

    1    1.2  0.5  0.5   0.000000001   0.000141413
                        -0.000000000  -0.000000000

    2    2.2  0.5  0.5  -0.000001964   0.000000000
                         0.000145562  -0.000000001

    3    3.2  0.5  0.5   0.000149744  -0.000000001
                         0.000002021  -0.000000000

    4    1.2  0.5 -0.5   0.000001908  -0.000000000
                        -0.000141400   0.000000001

    5    2.2  0.5 -0.5   0.000000001   0.000145576
                        -0.000000000  -0.000000000

    6    3.2  0.5 -0.5  -0.000000000   0.000000000
                         0.000000001   0.000149758

    7    1.2  1.5  1.5  -0.000001867   0.000000000
                         0.000138357  -0.000000001

    8    2.2  1.5  1.5   0.000002878   0.500131601
                         0.000000000  -0.000000004

    9    3.2  1.5  1.5   0.000000000  -0.000000004
                        -0.000002878  -0.500218985

   10    1.2  1.5  0.5   0.000003321   0.577177227
                         0.000000000  -0.000000004

   11    2.2  1.5  0.5  -0.003892402   0.000000022
                         0.288414013  -0.000001659

   12    3.2  1.5  0.5   0.288622154  -0.000001660
                         0.003895211  -0.000000022

   13    1.2  1.5 -0.5  -0.007788808   0.000000044
                         0.577124671  -0.000003321

   14    2.2  1.5 -0.5  -0.000001660  -0.288440278
                        -0.000000000   0.000000002

   15    3.2  1.5 -0.5   0.000000000  -0.000000002
                        -0.000001661  -0.288648438

   16    1.2  1.5 -1.5   0.000000001   0.000138369
                        -0.000000000   0.000000000

   17    2.2  1.5 -1.5   0.006749104  -0.000000038
                        -0.500086060   0.000002877

   18    3.2  1.5 -1.5   0.500173437  -0.000002878
                         0.006750283  -0.000000038


 Composition of spin-orbit eigenvectors
 ======================================

   Nr   State  S   Sz       1        2        3        4        5        6        7        8        9       10

    1    1.2  0.5  0.5   0.123%   4.010%   0.180%  62.354%   1.203%  32.130%   0.000%   0.000%   0.000%   0.000%
    2    2.2  0.5  0.5  60.019%   1.837%   4.797%   0.014%  32.130%   1.203%   0.000%   0.000%   0.000%   0.000%
    3    3.2  0.5  0.5  33.002%   1.010%  32.561%   0.094%  32.131%   1.203%   0.000%   0.000%   0.000%   0.000%
    4    1.2  0.5 -0.5   4.010%   0.123%  62.354%   0.180%  32.130%   1.203%   0.000%   0.000%   0.000%   0.000%
    5    2.2  0.5 -0.5   1.837%  60.019%   0.014%   4.797%   1.203%  32.130%   0.000%   0.000%   0.000%   0.000%
    6    3.2  0.5 -0.5   1.010%  33.002%   0.094%  32.561%   1.203%  32.131%   0.000%   0.000%   0.000%   0.000%
    7    1.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.159%  32.013%   0.009%
    8    2.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  42.556%   0.015%   0.001%   3.682%
    9    3.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  53.963%   0.019%   0.000%   0.000%
   10    1.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   2.034%   0.001%   0.003%  10.824%
   11    2.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.135%  10.602%   0.003%
   12    3.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   1.118%  42.850%   0.013%
   13    1.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   2.034%  10.824%   0.003%
   14    2.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.135%   0.000%   0.003%  10.602%
   15    3.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   1.118%   0.000%   0.013%  42.850%
   16    1.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.159%   0.000%   0.009%  32.013%
   17    2.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.015%  42.556%   3.682%   0.001%
   18    3.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.019%  53.963%   0.000%   0.000%

   Nr   State  S   Sz      11       12       13       14       15       16       17       18

    1    1.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    2    2.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    3    3.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    4    1.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    5    2.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    6    3.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    7    1.2  1.5  1.5   0.006%   7.804%  12.529%  43.217%   4.261%   0.003%   0.000%   0.000%
    8    2.2  1.5  1.5   8.737%   0.007%   1.099%   0.319%   0.012%  18.559%   0.000%  25.013%
    9    3.2  1.5  1.5   1.011%   0.001%   1.098%   0.318%   0.012%  18.554%   0.000%  25.022%
   10    1.2  1.5  0.5  47.109%   0.038%   0.369%   0.107%   0.004%   6.199%   0.000%  33.313%
   11    2.2  1.5  0.5   0.028%  34.234%   7.269%  25.073%  14.327%   0.009%   8.320%   0.000%
   12    3.2  1.5  0.5   0.001%   1.024%   1.933%   6.668%  38.037%   0.024%   8.332%   0.000%
   13    1.2  1.5 -0.5   0.038%  47.109%   0.107%   0.369%   6.199%   0.004%  33.313%   0.000%
   14    2.2  1.5 -0.5  34.234%   0.028%  25.073%   7.269%   0.009%  14.327%   0.000%   8.320%
   15    3.2  1.5 -0.5   1.024%   0.001%   6.668%   1.933%   0.024%  38.037%   0.000%   8.332%
   16    1.2  1.5 -1.5   7.804%   0.006%  43.217%  12.529%   0.003%   4.261%   0.000%   0.000%
   17    2.2  1.5 -1.5   0.007%   8.737%   0.319%   1.099%  18.559%   0.012%  25.013%   0.000%
   18    3.2  1.5 -1.5   0.001%   1.011%   0.318%   1.098%  18.554%   0.012%  25.022%   0.000%


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
              1      24       44.42       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7       15.25       700     1000      520     2100     2140     5201     5203   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *        28.15     20.31      2.49      3.27      1.38      0.13      0.31
 REAL TIME  *        32.67 SEC
 DISK USED  *        44.97 MB (local),      699.62 MB (total)
 SF USED    *        49.61 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCVTZ-DK energy=    -99.169317170111

              CI              CI           MULTI         RHF-SCF
    -99.16264401    -99.71519721    -98.98034115    -97.68758534
 **********************************************************************************************************************************
 Molpro calculation terminated
