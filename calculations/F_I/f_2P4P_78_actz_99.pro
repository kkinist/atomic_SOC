
 Working directory              : /wrk/irikura/molpro.LsLWTBF9aK/
 Global scratch directory       : /wrk/irikura/molpro.LsLWTBF9aK/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.LsLWTBF9aK/

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
         weight,all,99
     wf,sym=2,spin=3;state,3; lquant,1,1,0
         weight,all,1
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
  (4 PROC) 64 bit mpp version                                                            DATE: 16-Feb-24          TIME: 14:35:45  
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

 SORT1 READ     1711873. AND WROTE       35932. INTEGRALS IN      1 RECORDS. CPU TIME:     0.03 SEC, REAL TIME:     0.03 SEC
 SORT2 READ      173263. AND WROTE      810039. INTEGRALS IN     10 RECORDS. CPU TIME:     0.02 SEC, REAL TIME:     0.01 SEC

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
 CPU TIMES  *         0.73      0.56
 REAL TIME  *         1.67 SEC
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

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 4 3 6 5 2 1 3   4 5 6 2 1 2 4 6 5 3   1 2 4 6 3 5 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.341D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.397D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.175D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.326D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.326D+00 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 2 3 3 2 1 1 3 2 6   5 4 7 910 8 1 3 2 6  10 8 4 5 9 7 3 2 1 3   2 1

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.33000   0.33000   0.33000
 Weight factors for state symmetry  2:    0.00333   0.00333   0.00333
 
 Number of orbital rotations:  230  ( 2 closed/active, 24 closed/virtual, 0 active/active, 204 active/virtual )
 Total number of variables:    8498
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1   17  170    0    -99.47980550     -99.57374855   -0.09394305    0.15086639 0.00370715 0.00070137  0.18E+01      0.92
   2    8   78    0    -99.57089403     -99.57131884   -0.00042481    0.02981953 0.00021497 0.00009206  0.10E+00      1.42
   3   10   90    0    -99.57145772     -99.57176804   -0.00031032    0.00438632 0.00001883 0.00000657  0.78E-01      1.94
   4    8   68    0    -99.57176791     -99.57176791   -0.00000000    0.00002179 0.00000000 0.00000006  0.16E-03      2.31
   5    2    8    0    -99.57176791     -99.57176791    0.00000000    0.00000000 0.00000000 0.00000000  0.15E-08      2.39

 CONVERGENCE REACHED!  Final gradient:    0.00000000 ( 0.31E-09)
                       Final energy:    -99.57176791
 
 Results for state 1.2 Doublet
 =============================
 !MCSCF STATE 1.2 Doublet Energy               -99.583678508910
 Nuclear energy                                  0.00000000
 Kinetic energy                                100.10374831
 One electron energy                          -139.09307785
 Two electron energy                            39.50939934
 Virial ratio                                    1.99480469
 
 !MCSCF STATE 1.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.2 Doublet
 =============================
 !MCSCF STATE 2.2 Doublet Energy               -99.583678508910
 Nuclear energy                                  0.00000000
 Kinetic energy                                100.10374831
 One electron energy                          -139.09307785
 Two electron energy                            39.50939934
 Virial ratio                                    1.99480469
 
 !MCSCF STATE 2.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.2 Doublet
 =============================
 !MCSCF STATE 3.2 Doublet Energy               -99.584582891321
 Nuclear energy                                  0.00000000
 Kinetic energy                                100.12648207
 One electron energy                          -139.13199489
 Two electron energy                            39.54741200
 Virial ratio                                    1.99458785
 
 !MCSCF STATE 3.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.2 Quartet
 =============================
 !MCSCF STATE 1.2 Quartet Energy               -98.386153096345
 Nuclear energy                                  0.00000000
 Kinetic energy                                101.93197467
 One electron energy                          -136.94104639
 Two electron energy                            38.55489330
 Virial ratio                                    1.96521384
 
 !MCSCF STATE 1.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.2 Quartet
 =============================
 !MCSCF STATE 2.2 Quartet Energy               -98.386153096345
 Nuclear energy                                  0.00000000
 Kinetic energy                                101.93197467
 One electron energy                          -136.94104639
 Two electron energy                            38.55489330
 Virial ratio                                    1.96521384
 
 !MCSCF STATE 2.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.2 Quartet
 =============================
 !MCSCF STATE 3.2 Quartet Energy               -98.316015111011
 Nuclear energy                                  0.00000000
 Kinetic energy                                101.94920793
 One electron energy                          -136.97359725
 Two electron energy                            38.65758214
 Virial ratio                                    1.96436272
 
 !MCSCF STATE 3.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 ? Warning
 ? Transition properties are only calculated between states of the same symmetry
 ? The problem occurs in mu_properties_expec2

 !MCSCF expec      <1.2 Doublet|LXLX|1.2 Doublet>     0.988480617545
 !MCSCF expec      <2.2 Doublet|LXLX|2.2 Doublet>     0.013255901108
 !MCSCF expec      <3.2 Doublet|LXLX|3.2 Doublet>     1.000406980562
 !MCSCF expec      <1.2 Quartet|LXLX|1.2 Quartet>     1.021240993727
 !MCSCF expec      <2.2 Quartet|LXLX|2.2 Quartet>     1.483994914210
 !MCSCF expec      <3.2 Quartet|LXLX|3.2 Quartet>     2.282946515780
 
 !MCSCF expec      <1.2 Doublet|LYLY|1.2 Doublet>     0.013255901108
 !MCSCF expec      <2.2 Doublet|LYLY|2.2 Doublet>     0.988480617545
 !MCSCF expec      <3.2 Doublet|LYLY|3.2 Doublet>     1.000406980562
 !MCSCF expec      <1.2 Quartet|LYLY|1.2 Quartet>     1.483994914210
 !MCSCF expec      <2.2 Quartet|LYLY|2.2 Quartet>     1.021240993727
 !MCSCF expec      <3.2 Quartet|LYLY|3.2 Quartet>     2.282946515780
 
 !MCSCF expec      <1.2 Doublet|LZLZ|1.2 Doublet>     1.000000000000
 !MCSCF expec      <2.2 Doublet|LZLZ|2.2 Doublet>     1.000000000000
 !MCSCF expec      <3.2 Doublet|LZLZ|3.2 Doublet>    -0.000000000000
 !MCSCF expec      <1.2 Quartet|LZLZ|1.2 Quartet>     1.000000000000
 !MCSCF expec      <2.2 Quartet|LZLZ|2.2 Quartet>     1.000000000000
 !MCSCF expec      <3.2 Quartet|LZLZ|3.2 Quartet>    -0.000000000000
 
 !MCSCF expec      <1.2 Doublet|L**2|1.2 Doublet>     2.001736518653
 !MCSCF expec      <2.2 Doublet|L**2|2.2 Doublet>     2.001736518653
 !MCSCF expec      <3.2 Doublet|L**2|3.2 Doublet>     2.000813961124
 !MCSCF expec      <1.2 Quartet|L**2|1.2 Quartet>     3.505235907937
 !MCSCF expec      <2.2 Quartet|L**2|2.2 Quartet>     3.505235907937
 !MCSCF expec      <3.2 Quartet|L**2|3.2 Quartet>     4.565893031560
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 1 2 4 6 5 3 3   5 4 6 2 1 2 4 6 5 3   1 2 4 6 3 5 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   2 1 3 3 1 2 2 1 3 7   910 8 4 5 6 2 1 3 6   4 510 8 9 7 1 2 3 3   2 1
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000   -26.43300     1  1  s    0.99916
    2.1     1.99173    -1.59380     1  2  s    0.98842
    3.1     0.00827     1.81844     1  2  s   -0.64949    1  3  s   -0.95895    1  4  s    1.40903
    1.2     1.65192    -0.60593     1  1  py   1.00707
    2.2     1.65192    -0.60593     1  1  px   1.00707
    3.2     1.65123    -0.60453     1  1  pz   1.00387
    4.2     0.02211     1.19822     1  1  pz  -1.60712    1  2  pz   0.57832    1  3  pz   1.36502
    5.2     0.01141     1.62106     1  1  px  -1.98281    1  2  px   0.95568    1  3  px   1.44827
    6.2     0.01141     1.62106     1  1  py  -1.98281    1  2  py   0.95568    1  3  py   1.44827
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 2 (Doublet)
 =======================================
 
 20 22a000      0.00000000      0.00000000      0.98904322
 20 a22000      0.98284256     -0.10810296     -0.00000000
 20 2a2000      0.10810296      0.98284256     -0.00000000
 20 2a0200     -0.00567871     -0.05162926     -0.00000000
 20 a20200     -0.05162926      0.00567871      0.00000000
 
 Energy:      -99.58367851    -99.58367851    -99.58458289
 
 
 CI Coefficients of symmetry 2 (Quartet)
 =======================================
 
 20 aa2a00     -0.00000000      0.00000000      0.98663448
 20 2aaa00     -0.19981964      0.95964001      0.00000000
 20 a2aa00      0.95964001      0.19981964      0.00000000
 20 aa20a0      0.11877696      0.02473216     -0.00000000
 20 aa200a      0.02473216     -0.11877696      0.00000000
 aa a22000      0.09382372      0.01953631      0.00000000
 aa 2a2000     -0.01953631      0.09382372      0.00000000
 20 2aa00a     -0.00000000     -0.00000000     -0.07465747
 20 a2a0a0      0.00000000      0.00000000      0.07465747
 
 Energy:      -98.38615310    -98.38615310    -98.31601511
 


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
 CPU TIMES  *         2.88      2.16      0.56
 REAL TIME  *         4.19 SEC
 DISK USED  *        30.18 MB (local),      172.07 MB (total)
 SF USED    *         3.48 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

        ENERGY       LL
    -99.58367851   2.00173652
    -99.58367851   2.00173652
    -99.58458289   2.00081396
    -98.38615310   3.50523591
    -98.38615310   3.50523591
    -98.31601511   4.56589303
                                                  

 MULTI/aug-cc-pWCVTZ-DK energy=    -98.316015111011

           MULTI
    -98.31601511
 **********************************************************************************************************************************
 Molpro calculation terminated with 1 warning(s)
