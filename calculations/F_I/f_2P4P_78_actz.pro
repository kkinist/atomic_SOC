
 Working directory              : /wrk/irikura/molpro.Zn0Qjtfu1R/
 Global scratch directory       : /wrk/irikura/molpro.Zn0Qjtfu1R/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.Zn0Qjtfu1R/

 id        : nistki

 Nodes         nprocs
 gamba.nist.gov    5
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1042), CPU time= 0.01 sec
 ***,F SO-CI
 memory,1000,M;
 
 gprint,orbitals,civector;
 
 symmetry,xyz
 geometry={F};
 
 basis=aug-cc-pwCVTZ-DK
 
 set,dkho=101
 
                                                                                 !{rhf;wf,nelec=9,sym=2,spin=1}
 
                                                                                 ! Active space (5/8) to get 3p orbs
 {multi
     closed,1,0;
     occ,3,6
     wf,sym=2,spin=1;state,3; lquant,1,1,0
     wf,sym=2,spin=3;state,3; lquant,1,1,0
     expec2,lxx,lyy,lzz;
 }
 table, energy, ll
 title, Energies and &lt;L**2&gt; values
 
 Commands initialized (847), CPU time= 0.01 sec, 718 directives.
 Default parameters read. Elapsed time= 0.11 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2024.1 linked Wed Jan 31 05:42:09 2024


 **********************************************************************************************************************************
 LABEL *   F SO-CI                                                                                                                                                       
  (4 PROC) 64 bit mpp version                                                            DATE: 16-Feb-24          TIME: 14:33:44  
 **********************************************************************************************************************************

 SHA1:             675817fde4514a4a933b69e420913a90cee4ef91
 **********************************************************************************************************************************

 Memory per process:      1000 MW
 Total memory per node:   5000 MW

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

     2.621 MB (compressed) written to integral file ( 22.1%)

     Node minimum: 0.524 MB, node maximum: 0.524 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:     161145.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:     161145      RECORD LENGTH: 524288

 Memory used in sort:       0.72 MW

 SORT1 READ     1711873. AND WROTE       35932. INTEGRALS IN      1 RECORDS. CPU TIME:     0.01 SEC, REAL TIME:     0.01 SEC
 SORT2 READ      173263. AND WROTE      810039. INTEGRALS IN     10 RECORDS. CPU TIME:     0.01 SEC, REAL TIME:     0.01 SEC

 Node minimum:      160965.  Node maximum:      162825. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000

 EXTRA SYMMETRY OF AOS IN SYMMETRY 1:   1 1 1 1 1 1 1 2 3 4   5 6 2 3 4 5 6 2 3 4   5 6 2 3 4 5 6
 EXTRA SYMMETRY OF AOS IN SYMMETRY 2:   1 2 3 1 2 3 1 2 3 1   2 3 1 2 3 1 2 3 4 5   6 7 8 910 4 5 6 7 8   910

 Eigenvalues of metric

         1 0.531E-02 0.200E-01 0.649E-01 0.199E+00 0.237E+00 0.237E+00 0.237E+00 0.237E+00
         2 0.200E-01 0.200E-01 0.200E-01 0.204E+00 0.204E+00 0.204E+00 0.393E+00 0.393E+00


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      22       28.71       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600   
                                         AOSYM     SMH  

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         0.66      0.48
 REAL TIME  *         1.66 SEC
 DISK USED  *        29.03 MB (local),      166.29 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

  State symmetry 1:     Projection for operator LZ       squared   value = 1 1 0

  State symmetry 2:     Projection for operator LZ       squared   value = 1 1 0

 Number of closed-shell orbitals:   1 (    1    0)
 Number of active  orbitals:        8 (    2    6)
 Number of external orbitals:      50 (   24   26)

 State symmetry 1

 Number of active electrons:   7    Spin symmetry=Doublet   Space symmetry=2
 Number of states:             3
 Number of CSFs:            1204   (1980 determinants, 3920 intermediate states)

 State symmetry 2

 Number of active electrons:   7    Spin symmetry=Quartet   Space symmetry=2
 Number of states:             3
 Number of CSFs:             656   (776 determinants, 1568 intermediate states)

 Orbital guess generated from atomic densities.

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 5 4 6 3 2 1 5   3 4 6 2 1 2 4 6 5 3   1 2 4 3 5 6 1
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.262D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.262D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.360D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.360D+00 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 3 2 1 2 3 1 2 3 6   5 4 7 9 810 3 1 2 6  10 8 5 4 9 7 3 2 1 2   3 1

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.16667   0.16667   0.16667
 Weight factors for state symmetry  2:    0.16667   0.16667   0.16667
 
 Number of orbital rotations:  230  ( 2 closed/active, 24 closed/virtual, 0 active/active, 204 active/virtual )
 Total number of variables:    8498
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1   14  123    0    -99.17783272     -99.25471660   -0.07688388    0.41616352 0.00951066 0.00187172  0.10E+01      0.66
   2   12  116    0    -99.23846706     -99.24471543   -0.00624838    0.20534963 0.00018017 0.00021559  0.25E+00      1.42
   3    9   90    0    -99.24477811     -99.24477951   -0.00000140    0.00228789 0.00000279 0.00000216  0.27E-02      2.03
   4   14  128    0    -99.24819181     -99.27782831   -0.02963650    0.02696204 0.00001997 0.00003196  0.10E+01      2.91
   5    9   87    0    -99.27722799     -99.27725086   -0.00002287    0.00506963 0.00002055 0.00000703  0.22E-01      3.44
   6    7   60    0    -99.27725088     -99.27725088   -0.00000000    0.00000730 0.00000001 0.00000003  0.43E-04      3.78

 CONVERGENCE REACHED!  Final gradient:    0.00000001 ( 0.11E-07)
                       Final energy:    -99.27725088
 
 Results for state 1.2 Doublet
 =============================
 !MCSCF STATE 1.2 Doublet Energy               -99.540295439679
 Nuclear energy                                  0.00000000
 Kinetic energy                                100.19497564
 One electron energy                          -139.33214840
 Two electron energy                            39.79185296
 Virial ratio                                    1.99346594
 
 !MCSCF STATE 1.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.2 Doublet
 =============================
 !MCSCF STATE 2.2 Doublet Energy               -99.540295439679
 Nuclear energy                                  0.00000000
 Kinetic energy                                100.19497564
 One electron energy                          -139.33214840
 Two electron energy                            39.79185296
 Virial ratio                                    1.99346594
 
 !MCSCF STATE 2.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.2 Doublet
 =============================
 !MCSCF STATE 3.2 Doublet Energy               -99.562645498436
 Nuclear energy                                  0.00000000
 Kinetic energy                                100.06786209
 One electron energy                          -139.28679840
 Two electron energy                            39.72415291
 Virial ratio                                    1.99495126
 
 !MCSCF STATE 3.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.2 Quartet
 =============================
 !MCSCF STATE 1.2 Quartet Energy               -99.015445451095
 Nuclear energy                                  0.00000000
 Kinetic energy                                 99.65792303
 One electron energy                          -135.28655240
 Two electron energy                            36.27110695
 Virial ratio                                    1.99355317
 
 !MCSCF STATE 1.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.2 Quartet
 =============================
 !MCSCF STATE 2.2 Quartet Energy               -99.015445451095
 Nuclear energy                                  0.00000000
 Kinetic energy                                 99.65792303
 One electron energy                          -135.28655240
 Two electron energy                            36.27110695
 Virial ratio                                    1.99355317
 
 !MCSCF STATE 2.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.2 Quartet
 =============================
 !MCSCF STATE 3.2 Quartet Energy               -98.989377980542
 Nuclear energy                                  0.00000000
 Kinetic energy                                 99.72879074
 One electron energy                          -135.38767739
 Two electron energy                            36.39829941
 Virial ratio                                    1.99258576
 
 !MCSCF STATE 3.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 ? Warning
 ? Transition properties are only calculated between states of the same symmetry
 ? The problem occurs in mu_properties_expec2

 !MCSCF expec      <1.2 Doublet|LXLX|1.2 Doublet>     0.097604782174
 !MCSCF expec      <2.2 Doublet|LXLX|2.2 Doublet>     0.950742305282
 !MCSCF expec      <3.2 Doublet|LXLX|3.2 Doublet>     1.011885707948
 !MCSCF expec      <1.2 Quartet|LXLX|1.2 Quartet>     1.477050912597
 !MCSCF expec      <2.2 Quartet|LXLX|2.2 Quartet>     1.509942202908
 !MCSCF expec      <3.2 Quartet|LXLX|3.2 Quartet>     2.025415833752
 
 !MCSCF expec      <1.2 Doublet|LYLY|1.2 Doublet>     0.950742305282
 !MCSCF expec      <2.2 Doublet|LYLY|2.2 Doublet>     0.097604782174
 !MCSCF expec      <3.2 Doublet|LYLY|3.2 Doublet>     1.011885707948
 !MCSCF expec      <1.2 Quartet|LYLY|1.2 Quartet>     1.509942202908
 !MCSCF expec      <2.2 Quartet|LYLY|2.2 Quartet>     1.477050912597
 !MCSCF expec      <3.2 Quartet|LYLY|3.2 Quartet>     2.025415833752
 
 !MCSCF expec      <1.2 Doublet|LZLZ|1.2 Doublet>     1.000000000000
 !MCSCF expec      <2.2 Doublet|LZLZ|2.2 Doublet>     1.000000000000
 !MCSCF expec      <3.2 Doublet|LZLZ|3.2 Doublet>     0.000000000000
 !MCSCF expec      <1.2 Quartet|LZLZ|1.2 Quartet>     1.000000000000
 !MCSCF expec      <2.2 Quartet|LZLZ|2.2 Quartet>     1.000000000000
 !MCSCF expec      <3.2 Quartet|LZLZ|3.2 Quartet>     0.000000000000
 
 !MCSCF expec      <1.2 Doublet|L**2|1.2 Doublet>     2.048347087456
 !MCSCF expec      <2.2 Doublet|L**2|2.2 Doublet>     2.048347087456
 !MCSCF expec      <3.2 Doublet|L**2|3.2 Doublet>     2.023771415896
 !MCSCF expec      <1.2 Quartet|L**2|1.2 Quartet>     3.986993115504
 !MCSCF expec      <2.2 Quartet|L**2|2.2 Quartet>     3.986993115504
 !MCSCF expec      <3.2 Quartet|L**2|3.2 Quartet>     4.050831667505
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 1 5 3 4 6 2 3   5 4 6 2 1 3 5 4 6 2   1 3 5 4 6 2 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 2 1 3 1 2 2 1 3 7   910 8 5 4 6 2 1 3 9   710 8 4 5 6 1 2 3 2   1 3
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000   -26.66297     1  1  s    0.99931
    2.1     1.99270    -1.75857     1  2  s    1.03394
    3.1     0.00726     1.59243     1  2  s   -0.75253    1  3  s   -0.88011    1  4  s    1.48859
    1.2     1.49648    -0.72279     1  1  pz   1.03777
    2.2     1.48946    -0.72328     1  1  py   1.05042
    3.2     1.48946    -0.72328     1  1  px   1.05042
    4.2     0.50329     0.13916     1  1  pz  -0.40409    1  6  pz   1.05660
    5.2     0.01068     1.36890     1  1  px  -1.84448    1  2  px   0.84153    1  3  px   1.46842
    6.2     0.01068     1.36890     1  1  py  -1.84448    1  2  py   0.84153    1  3  py   1.46842
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 2 (Doublet)
 =======================================
 
 20 a22000      0.00000000      0.00000000      0.98652332
 20 2a2000      0.24624782      0.95752517     -0.00000000
 20 22a000      0.95752517     -0.24624782      0.00000000
 20 2aa0b0      0.01343854      0.05225523     -0.00000000
 20 2aa00b     -0.05225523      0.01343854      0.00000000
 20 a2a0b0     -0.00000000     -0.00000000      0.05184788
 20 aa200b      0.00000000      0.00000000      0.05184788
 
 Energy:      -99.54029544    -99.54029544    -99.56264550
 
 
 CI Coefficients of symmetry 2 (Quartet)
 =======================================
 
 20 2aaa00     -0.00000000     -0.00000000      0.98996455
 20 aa2a00      0.71253512      0.68876995      0.00000000
 20 a2aa00     -0.68876995      0.71253512      0.00000000
 20 aaa200      0.00000000     -0.00000000      0.07063208
 20 2a0aa0     -0.00000000      0.00000000      0.06390986
 20 20aa0a      0.00000000      0.00000000     -0.06390986
 
 Energy:      -99.01544545    -99.01544545    -98.98937798
 


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       29.68       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       4        0.42       700     1000      520     2140   
                                         GEOM     BASIS   MCVARS    MCSCF   

 PROGRAMS   *        TOTAL     MULTI       INT
 CPU TIMES  *         4.10      3.44      0.48
 REAL TIME  *         5.56 SEC
 DISK USED  *        30.18 MB (local),      172.07 MB (total)
 SF USED    *         3.48 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

        ENERGY       LL
    -99.54029544   2.04834709
    -99.54029544   2.04834709
    -99.56264550   2.02377142
    -99.01544545   3.98699312
    -99.01544545   3.98699312
    -98.98937798   4.05083167
                                                  

 MULTI/aug-cc-pWCVTZ-DK energy=    -98.989377980542

           MULTI
    -98.98937798
 **********************************************************************************************************************************
 Molpro calculation terminated with 1 warning(s)
