
 Working directory              : /wrk/irikura/molpro.77N836i03s/
 Global scratch directory       : /wrk/irikura/molpro.77N836i03s/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.77N836i03s/

 id        : nistki

 Nodes            nprocs
 pn112695.nist.gov    8
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1040), CPU time= 0.01 sec
 ***,At SO-CI
                                                                                 ! active space (5/6)
                                                                                 ! additional diffuse spdf functions
 memory,3000,M;
 
 gprint,orbitals,civector;
                                                                                 !gthresh,energy=1.d-10,coeff=1.d-8;
 
 symmetry,xyz
 geometry={At};
 
 basis={
 ecp,at,ECP60MDF;
 spdfg,at,aug-cc-pwCVTZ-PP;C; spdf,1,even,nprim=1,ratio=3.0;
 }
 
 {rhf;wf,charge=-1}
 
 NDOUB=3
 NQUAR=8
 
 {multi
     occ,7,9
     closed,7,3
     wf,charge=0,sym=2,spin=1;state,NDOUB;
     wf,charge=0,sym=2,spin=3;state,NQUAR;
     expec2,lxx,lyy,lzz;
 }
 table, energy, ll
 title, Energies and &lt;L**2&gt; values
 
 core,0,0
 
 {ci;wf,sym=2,spin=1;state,NDOUB; save,5203.2}
 hlsdiag = energd4
 {ci;wf,sym=2,spin=3;state,NQUAR; save,5303.2}
 hlsdiag(NDOUB+1) = energd4
 
 table,hlsdiag
 
 {ci;hlsmat,ecp,5203.2,5303.2;print,vls=0,hls=0}                                 !compute and diagonalize SO matrix
 Commands initialized (846), CPU time= 0.02 sec, 717 directives.
 Default parameters read. Elapsed time= 0.13 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2023.2 linked Fri Sep 22 03:27:09 2023


 **********************************************************************************************************************************
 LABEL *   At SO-CI                                                                                                                                                      
  (32 PROC) 64 bit mpp version                                                           DATE: 03-Dec-24          TIME: 10:29:13  
 **********************************************************************************************************************************

 SHA1:             3c61bfe44d37c8635c785372c339f5cbdd4e4b59
 **********************************************************************************************************************************

 Memory per process:      3000 MW
 Total memory per node:  24000 MW

 GA preallocation disabled
 GA check disabled

 Variable memory set to 3000.0 MW


 ZSYMEL=XYZ

 SETTING BASIS          =    USERDEF


 Recomputing integrals since basis changed


 Using spherical harmonics

 Library entry At   ECP ECP60MDF                 selected for group  1
 Library entry AT     S AUG-CC-PWCVTZ-PP     selected for orbital group  1
 Even tempered At S diffuse               selected for group 1    nprim= 1    centre=  0.013    ratio= 3.000    dratio= 1.000
 Library entry AT     P AUG-CC-PWCVTZ-PP     selected for orbital group  1
 Even tempered At P diffuse               selected for group 1    nprim= 1    centre=  0.012    ratio= 3.000    dratio= 1.000
 Library entry AT     D AUG-CC-PWCVTZ-PP     selected for orbital group  1
 Even tempered At D diffuse               selected for group 1    nprim= 1    centre=  0.023    ratio= 3.000    dratio= 1.000
 Library entry AT     F AUG-CC-PWCVTZ-PP     selected for orbital group  1
 Even tempered At F diffuse               selected for group 1    nprim= 1    centre=  0.057    ratio= 3.000    dratio= 1.000
 Library entry AT     G AUG-CC-PWCVTZ-PP     selected for orbital group  1


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

   1  AT     25.00    0.000000000    0.000000000    0.000000000

 NUCLEAR CHARGE:                   25
 NUMBER OF PRIMITIVE AOS:         198
 NUMBER OF SYMMETRY AOS:          165
 NUMBER OF CONTRACTIONS:          112   (   53Ag  +   59Au  )
 NUMBER OF INNER CORE ORBITALS:     0   (    0Ag  +    0Au  )
 NUMBER OF OUTER CORE ORBITALS:     9   (    6Ag  +    3Au  )
 NUMBER OF VALENCE ORBITALS:        4   (    1Ag  +    3Au  )


 LX: Ag           LY: Ag           LZ: Ag 


 NUCLEAR REPULSION ENERGY    0.00000000

 EXTRA SYMMETRY OF AOS IN SYMMETRY 1:   1 1 1 1 1 1 1 1 1 2   3 4 5 6 2 3 4 5 6 2   3 4 5 6 2 3 4 5 6 2   3 4 5 6 2 3 4 5 6 2
                                        3 4 5 6 7 8 9101112  131415
 EXTRA SYMMETRY OF AOS IN SYMMETRY 2:   1 2 3 1 2 3 1 2 3 1   2 3 1 2 3 1 2 3 1 2   3 1 2 3 4 5 6 7 8 9  10 4 5 6 7 8 910 4 5
                                        6 7 8 910 4 5 6 7 8   910 4 5 6 7 8 910


 Eigenvalues of metric

         1 0.326E-04 0.122E-02 0.526E-02 0.686E-02 0.686E-02 0.686E-02 0.686E-02 0.686E-02
         2 0.389E-02 0.389E-02 0.389E-02 0.830E-02 0.830E-02 0.830E-02 0.546E-01 0.546E-01


 Contracted 2-electron integrals neglected if value below      1.0D-12
 AO integral compression algorithm  1   Integral accuracy      1.0D-12

     29.098 MB (compressed) written to integral file ( 17.0%)

     Node minimum: 2.621 MB, node maximum: 5.243 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:    1272449.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:    1272449      RECORD LENGTH: 524288

 Memory used in sort:       1.83 MW

 SORT1 READ    21109381. AND WROTE      252985. INTEGRALS IN      1 RECORDS. CPU TIME:     0.11 SEC, REAL TIME:     0.11 SEC
 SORT2 READ     2032599. AND WROTE    10190541. INTEGRALS IN    104 RECORDS. CPU TIME:     0.04 SEC, REAL TIME:     0.05 SEC

 Node minimum:     1271881.  Node maximum:     1277544. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      19       28.94       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         1.67      1.42
 REAL TIME  *         3.38 SEC
 DISK USED  *        29.28 MB (local),      279.81 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 Program * Restricted Hartree-Fock

 Orbital guess generated from atomic densities.

 Initial occupancy:   7   6

 NELEC=   26   SYM=1   MS2= 0   THRE=1.0D-08   THRD=3.2D-06   THRG=3.2D-06  HFMA2=F  DIIS_START=2   DIIS_MAX=10   DIIS_INCORE=F

 Level shifts:    0.00 (CLOSED)    0.00 (OPEN)    0.30 (GAP_MIN)

 ITER           ETOT              DE          GRAD        DDIFF     DIIS  NEXP   TIME(IT)  TIME(TOT)  DIAG
   1     -261.41291773    -261.41291773     0.00D+00     0.13D+00     0     0       0.01      0.03    start
   2     -261.43588930      -0.02297157     0.44D-02     0.13D-01     1     0       0.01      0.04    diag
   3     -261.43822845      -0.00233915     0.26D-02     0.22D-02     2     0       0.00      0.04    diag
   4     -261.43862700      -0.00039855     0.44D-03     0.99D-03     3     0       0.01      0.05    diag
   5     -261.43869302      -0.00006602     0.15D-03     0.60D-03     4     0       0.01      0.06    diag
   6     -261.43869802      -0.00000501     0.32D-04     0.18D-03     5     0       0.01      0.07    diag
   7     -261.43869823      -0.00000021     0.54D-05     0.35D-04     6     0       0.01      0.08    diag
   8     -261.43869824      -0.00000001     0.12D-05     0.12D-04     7     0       0.00      0.08    fixocc
   9     -261.43869824      -0.00000000     0.11D-06     0.52D-06     8     0       0.01      0.09    diag
  10     -261.43869824      -0.00000000     0.26D-07     0.65D-07     0     0       0.01      0.10    diag/orth

 Final occupancy:   7   6

 !RHF STATE 1.1 Energy               -261.438698241382
  RHF One-electron energy            -461.392278900984
  RHF Two-electron energy             199.953580659601
  RHF Kinetic energy                   82.729407290141
  RHF Nuclear energy                    0.000000000000
  RHF Virial quotient                  -3.160166460815

 !RHF STATE 1.1 Dipole moment           0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 ELECTRON ORBITALS
 =================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -7.53208     1  1  s    1.00132
    2.1     2.00000    -1.54351     1  1  d0   0.99967
    3.1     2.00000    -1.54351     1  1  d1+ -0.59881    1  1  d1-  0.78642
    4.1     2.00000    -1.54351     1  1  d1+  0.73645    1  1  d2+  0.37759    1  1  d1-  0.50831
    5.1     2.00000    -1.54351     1  1  d2-  0.72918    1  1  d2+ -0.66448
    6.1     2.00000    -1.54351     1  1  d2-  0.63960    1  1  d1+ -0.31364    1  1  d2+  0.62884    1  1  d1- -0.31054
    7.1     2.00000    -0.67783     1  2  s    0.97520
    1.2     2.00000    -4.82203     1  1  pz   1.00002
    2.2     2.00000    -4.82203     1  1  py   1.00002
    3.2     2.00000    -4.82203     1  1  px   1.00054
    4.2     2.00000    -0.11633     1  2  px   0.88058
    5.2     2.00000    -0.11633     1  2  py   0.88058
    6.2     2.00000    -0.11633     1  2  pz   0.88058


 HOMO      6.2    -0.116327 =      -3.1654eV
 LUMO      7.2     0.122759 =       3.3404eV
 LUMO-HOMO         0.239086 =       6.5059eV

 Orbitals saved in record  2100.2


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      19       28.94       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    

              2       4        0.48       700     1000      520     2100   
                                         GEOM     BASIS   MCVARS     RHF  

 PROGRAMS   *        TOTAL   RHF-SCF       INT
 CPU TIMES  *         1.78      0.10      1.42
 REAL TIME  *         4.08 SEC
 DISK USED  *        29.93 MB (local),      284.97 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING NDOUB          =         3.00000000                                  
 SETTING NQUAR          =         8.00000000                                  

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of closed-shell orbitals:  10 (    7    3)
 Number of active  orbitals:        6 (    0    6)
 Number of external orbitals:      96 (   46   50)

 State symmetry 1

 Number of active electrons:   5    Spin symmetry=Doublet   Space symmetry=2
 Number of states:             3
 Number of CSFs:             210   (300 determinants, 300 intermediate states)

 State symmetry 2

 Number of active electrons:   5    Spin symmetry=Quartet   Space symmetry=2
 Number of states:             8
 Number of CSFs:              84   (90 determinants, 90 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  
 *** IN SYMMETRY 1 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.275D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.501D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.604D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.533D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.668D+00 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 2 6 4 3 5 1 1 4 6   5 3 2 1 4 6 5 3 2 1   3 5 4 6 2 1 4 6 5 3   21514 812 711 91310
                                        6 4 2 3 5 1 2 6 4 5   3 1 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.315D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.315D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.109D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.159D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.159D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.758D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  9 SYMMETRY CONTAMINATION OF 0.758D-04 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 2 1 1 2 3 1 2 3 1   2 3 810 7 9 5 4 6 3   1 2 9 7 6 5 4 810 7   9 5 4 6 810 3 1 2 7
                                        9 5 4 610 8 5 4 810   7 9 6 3 2 1 3 2 1

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.09091   0.09091   0.09091
 Weight factors for state symmetry  2:    0.09091   0.09091   0.09091   0.09091   0.09091   0.09091   0.09091   0.09091
 
 Number of orbital rotations:  790  ( 18 closed/active, 472 closed/virtual, 0 active/active, 300 active/virtual )
 Total number of variables:    2410
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1    7   12    0   -261.07652860    -261.17189223   -0.09536363    0.35090582 0.00010547 0.00000000  0.10E+01      0.83
   2    7   12    0   -261.16786496    -261.16817157   -0.00030661    0.02075959 0.00000424 0.00000000  0.52E-01      1.71
   3    4    8    0   -261.16817262    -261.16817263   -0.00000001    0.00012661 0.00000040 0.00000000  0.40E-03      2.31
   4    2    4    0   -261.16817263    -261.16817263    0.00000000    0.00000001 0.00000000 0.00000000  0.52E-07      2.66

 CONVERGENCE REACHED!  Final gradient:    0.00000006 ( 0.61E-07)
                       Final energy:   -261.16817263
 
 Results for state 1.2 Doublet
 =============================
 !MCSCF STATE 1.2 Doublet Energy              -261.346445595727
 Nuclear energy                                  0.00000000
 Kinetic energy                                 83.09446915
 One electron energy                          -455.52577159
 Two electron energy                           194.17932600
 Virial ratio                                    4.14517258
 
 !MCSCF STATE 1.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.2 Doublet
 =============================
 !MCSCF STATE 2.2 Doublet Energy              -261.346445595702
 Nuclear energy                                  0.00000000
 Kinetic energy                                 83.09446915
 One electron energy                          -455.52577160
 Two electron energy                           194.17932600
 Virial ratio                                    4.14517258
 
 !MCSCF STATE 2.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.2 Doublet
 =============================
 !MCSCF STATE 3.2 Doublet Energy              -261.346445595696
 Nuclear energy                                  0.00000000
 Kinetic energy                                 83.09446915
 One electron energy                          -455.52577160
 Two electron energy                           194.17932600
 Virial ratio                                    4.14517258
 
 !MCSCF STATE 3.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.2 Quartet
 =============================
 !MCSCF STATE 1.2 Quartet Energy              -261.104931185605
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.32774299
 One electron energy                          -449.23603643
 Two electron energy                           188.13110524
 Virial ratio                                    4.17153030
 
 !MCSCF STATE 1.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.2 Quartet
 =============================
 !MCSCF STATE 2.2 Quartet Energy              -261.104931185604
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.32774299
 One electron energy                          -449.23603642
 Two electron energy                           188.13110524
 Virial ratio                                    4.17153030
 
 !MCSCF STATE 2.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.2 Quartet
 =============================
 !MCSCF STATE 3.2 Quartet Energy              -261.104931185597
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.32774299
 One electron energy                          -449.23603643
 Two electron energy                           188.13110525
 Virial ratio                                    4.17153030
 
 !MCSCF STATE 3.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.2 Quartet
 =============================
 !MCSCF STATE 4.2 Quartet Energy              -261.099153712269
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.33498637
 One electron energy                          -449.26120148
 Two electron energy                           188.16204777
 Virial ratio                                    4.17118111
 
 !MCSCF STATE 4.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.2 Quartet
 =============================
 !MCSCF STATE 5.2 Quartet Energy              -261.099153712259
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.33498637
 One electron energy                          -449.26120148
 Two electron energy                           188.16204777
 Virial ratio                                    4.17118111
 
 !MCSCF STATE 5.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.2 Quartet
 =============================
 !MCSCF STATE 6.2 Quartet Energy              -261.099153712250
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.33498637
 One electron energy                          -449.26120148
 Two electron energy                           188.16204777
 Virial ratio                                    4.17118111
 
 !MCSCF STATE 6.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.2 Quartet
 =============================
 !MCSCF STATE 7.2 Quartet Energy              -261.099153712212
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.33498637
 One electron energy                          -449.26120149
 Two electron energy                           188.16204778
 Virial ratio                                    4.17118111
 
 !MCSCF STATE 7.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.2 Quartet
 =============================
 !MCSCF STATE 8.2 Quartet Energy              -261.099153712211
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.33498637
 One electron energy                          -449.26120149
 Two electron energy                           188.16204778
 Virial ratio                                    4.17118111
 
 !MCSCF STATE 8.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 ? Warning
 ? Transition properties are only calculated between states of the same symmetry
 ? The problem occurs in mu_properties_expec2

 !MCSCF expec      <1.2 Doublet|LXLX|1.2 Doublet>     0.000000013516
 !MCSCF expec      <2.2 Doublet|LXLX|2.2 Doublet>     1.000000000000
 !MCSCF expec      <3.2 Doublet|LXLX|3.2 Doublet>     0.999999976775
 !MCSCF expec      <1.2 Quartet|LXLX|1.2 Quartet>     0.999999997074
 !MCSCF expec      <2.2 Quartet|LXLX|2.2 Quartet>     1.000000000002
 !MCSCF expec      <3.2 Quartet|LXLX|3.2 Quartet>     0.000000025789
 !MCSCF expec      <4.2 Quartet|LXLX|4.2 Quartet>     0.033199264212
 !MCSCF expec      <5.2 Quartet|LXLX|5.2 Quartet>     0.999999997038
 !MCSCF expec      <6.2 Quartet|LXLX|6.2 Quartet>     1.000000011032
 !MCSCF expec      <7.2 Quartet|LXLX|7.2 Quartet>     3.999999995661
 !MCSCF expec      <8.2 Quartet|LXLX|8.2 Quartet>     3.966786911688
 
 !MCSCF expec      <1.2 Doublet|LYLY|1.2 Doublet>     0.999999986481
 !MCSCF expec      <2.2 Doublet|LYLY|2.2 Doublet>     1.000000000000
 !MCSCF expec      <3.2 Doublet|LYLY|3.2 Doublet>     0.000000023226
 !MCSCF expec      <1.2 Quartet|LYLY|1.2 Quartet>     0.999999793137
 !MCSCF expec      <2.2 Quartet|LYLY|2.2 Quartet>    -0.000000000000
 !MCSCF expec      <3.2 Quartet|LYLY|3.2 Quartet>     0.999999998407
 !MCSCF expec      <4.2 Quartet|LYLY|4.2 Quartet>     3.297679127558
 !MCSCF expec      <5.2 Quartet|LYLY|5.2 Quartet>     3.999999997782
 !MCSCF expec      <6.2 Quartet|LYLY|6.2 Quartet>     0.999999996018
 !MCSCF expec      <7.2 Quartet|LYLY|7.2 Quartet>     0.999999966727
 !MCSCF expec      <8.2 Quartet|LYLY|8.2 Quartet>     0.702263517211
 
 !MCSCF expec      <1.2 Doublet|LZLZ|1.2 Doublet>     1.000000000000
 !MCSCF expec      <2.2 Doublet|LZLZ|2.2 Doublet>    -0.000000000003
 !MCSCF expec      <3.2 Doublet|LZLZ|3.2 Doublet>     0.999999999996
 !MCSCF expec      <1.2 Quartet|LZLZ|1.2 Quartet>     0.000000209789
 !MCSCF expec      <2.2 Quartet|LZLZ|2.2 Quartet>     0.999999999999
 !MCSCF expec      <3.2 Quartet|LZLZ|3.2 Quartet>     0.999999975805
 !MCSCF expec      <4.2 Quartet|LZLZ|4.2 Quartet>     2.669121608246
 !MCSCF expec      <5.2 Quartet|LZLZ|5.2 Quartet>     1.000000005196
 !MCSCF expec      <6.2 Quartet|LZLZ|6.2 Quartet>     3.999999992965
 !MCSCF expec      <7.2 Quartet|LZLZ|7.2 Quartet>     1.000000037628
 !MCSCF expec      <8.2 Quartet|LZLZ|8.2 Quartet>     1.330949571117
 
 !MCSCF expec      <1.2 Doublet|L**2|1.2 Doublet>     1.999999999997
 !MCSCF expec      <2.2 Doublet|L**2|2.2 Doublet>     1.999999999997
 !MCSCF expec      <3.2 Doublet|L**2|3.2 Doublet>     1.999999999997
 !MCSCF expec      <1.2 Quartet|L**2|1.2 Quartet>     2.000000000000
 !MCSCF expec      <2.2 Quartet|L**2|2.2 Quartet>     2.000000000000
 !MCSCF expec      <3.2 Quartet|L**2|3.2 Quartet>     2.000000000000
 !MCSCF expec      <4.2 Quartet|L**2|4.2 Quartet>     6.000000000016
 !MCSCF expec      <5.2 Quartet|L**2|5.2 Quartet>     6.000000000016
 !MCSCF expec      <6.2 Quartet|L**2|6.2 Quartet>     6.000000000016
 !MCSCF expec      <7.2 Quartet|L**2|7.2 Quartet>     6.000000000016
 !MCSCF expec      <8.2 Quartet|L**2|8.2 Quartet>     6.000000000016
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 2 4 6 3 5 1 1 2 4   6 3 5 1 2 4 6 5 3 1   2 4 6 5 3 1 2 4 6 3   5 9 711 81214151310
                                        2 4 6 3 5 1 2 4 6 3   5 1 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 1 2 2 1 3 2 1 3 3   1 2 4 6 5 810 7 9 3   1 2 4 6 5 810 7 9 4   6 510 8 7 9 3 1 2 4
                                        6 510 8 9 7 4 6 5 8  10 7 9 3 1 2 3 1 2
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -7.95685     1  1  s    1.00020
    2.1     2.00000    -1.96738     1  1  d0   1.00066
    3.1     2.00000    -1.96738     1  1  d1+  1.00066
    4.1     2.00000    -1.96738     1  1  d1-  1.00066
    5.1     2.00000    -1.96738     1  1  d2-  1.00066
    6.1     2.00000    -1.96738     1  1  d2+  1.00066
    7.1     2.00000    -1.05771     1  2  s    1.02750
    1.2     2.00000    -5.24650     1  1  pz   0.99956
    2.2     2.00000    -5.24650     1  1  px   0.99956
    3.2     2.00000    -5.24650     1  1  py   0.99956
    4.2     1.42241    -0.40054     1  2  py   1.09780
    5.2     1.42241    -0.40054     1  2  px   1.09780
    6.2     1.42240    -0.40054     1  2  pz   1.09780
    7.2     0.24426     0.02012     1  2  py  -0.34174    1  7  py   0.41567    1  8  py   0.76395
    8.2     0.24426     0.02012     1  2  px  -0.34174    1  7  px   0.41567    1  8  px   0.76395
    9.2     0.24426     0.02012     1  2  pz  -0.34174    1  7  pz   0.41567    1  8  pz   0.76395
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 2 (Doublet)
 =======================================
 
 22a000        -0.00000020      0.99365556     -0.00000000
 2a2000         0.99365555      0.00000020     -0.00011553
 a22000         0.00011553      0.00000000      0.99365555
 a2a00b         0.00000686      0.00000000      0.05900422
 2aa00b         0.05900422      0.00000001     -0.00000686
 2aa0b0         0.00000001     -0.05900420      0.00000000
 aa20b0         0.00000686      0.00000000      0.05900420
 a2ab00         0.00000001     -0.05900419     -0.00000000
 aa2b00        -0.05900418     -0.00000001      0.00000686
 
 Energy:     -261.34644560   -261.34644560   -261.34644560
 
 
 CI Coefficients of symmetry 2 (Quartet)
 =======================================

 State:              1               2               3               4               5               6               7
 a2a0a0         0.00000000     -0.00000000      0.00000000      0.81196215     -0.00005601      0.00001321      0.00002492
 2aaa00         0.00000000     -0.00000000      0.00000000      0.34165153     -0.00002395      0.00004547      0.00024521
 aa2a00         0.00003822      0.00000028      0.70633134     -0.00000029      0.00000000     -0.00002984      0.70611623
 2aa00a        -0.00003822     -0.00000028     -0.70633134     -0.00000029      0.00000000     -0.00002984      0.70611623
 aa20a0        -0.00032126      0.70633127     -0.00000026      0.00004868      0.70611626     -0.00000028     -0.00000000
 2aa0a0         0.70633127      0.00032126     -0.00003822      0.00000786     -0.00000028     -0.70611626     -0.00002983
 a2a00a        -0.00032126      0.70633126     -0.00000026     -0.00004868     -0.70611627      0.00000028      0.00000000
 a2aa00         0.70633126      0.00032126     -0.00003822     -0.00000786      0.00000028      0.70611627      0.00002983
 aa200a         0.00000000     -0.00000000     -0.00000000      0.47031060     -0.00003207     -0.00003225     -0.00022029
 
 Energy:     -261.10493119   -261.10493119   -261.10493119   -261.09915371   -261.09915371   -261.09915371   -261.09915371

 State:              8
 a2a0a0         0.07428135
 2aaa00         0.74032048
 aa2a00        -0.00023375
 2aa00a        -0.00023375
 aa20a0         0.00000038
 2aa0a0         0.00003975
 a2a00a        -0.00000038
 a2aa00        -0.00003975
 aa200a        -0.66603913
 
 Energy:     -261.09915371
 


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       39.05       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       5        0.83       700     1000      520     2100     2140   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF   

 PROGRAMS   *        TOTAL     MULTI   RHF-SCF       INT
 CPU TIMES  *         4.42      2.64      0.10      1.42
 REAL TIME  *         7.09 SEC
 DISK USED  *        39.97 MB (local),      365.31 MB (total)
 SF USED    *        25.88 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

         ENERGY     LL
    -261.3464456   2.0
    -261.3464456   2.0
    -261.3464456   2.0
    -261.1049312   2.0
    -261.1049312   2.0
    -261.1049312   2.0
    -261.0991537   6.0
    -261.0991537   6.0
    -261.0991537   6.0
    -261.0991537   6.0
    -261.0991537   6.0
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 3  Roots:    1   2   3
 Number of reference states: 3  Roots:    1   2   3

 Reference symmetry:                   2   Doublet 
 Number of electrons:                 25
 Maximum number of shells:             6
 Maximum number of spin couplings:   132

 Reference space:      126 conf      210 CSFs
 N elec internal:     8466 conf    28630 CSFs
 N-1 el internal:     9105 conf    51730 CSFs
 N-2 el internal:     7880 conf    73240 CSFs

 Number of electrons in valence space:                     25
 Maximum number of open shell orbitals in reference space:  5
 Maximum number of open shell orbitals in internal spaces: 11


 Number of closed-shell orbitals:  10 (   7   3 )
 Number of active  orbitals:        6 (   0   6 )
 Number of external orbitals:      96 (  46  50 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Valence orbitals related to previous ones by unitary transformation. Operators transformed.


 Number of p-space configurations:  30

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -261.34644560
     2      -261.34644560
     3      -261.34644560

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.3883D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.3883D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.3883D-06

 Number of blocks in overlap matrix:   388   Smallest eigenvalue:  0.39D-06
 Number of N-2 electron functions:     758
 Number of N-1 electron functions:   51730

 Number of internal configurations:                15498
 Number of singly external configurations:       2492420
 Number of doubly external configurations:       1748264
 Total number of contracted configurations:      4256182
 Total number of uncontracted configurations:  170780814

 Diagonal Coupling coefficients finished.               Storage:   7184480 words, CPU-Time:      3.53 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   1114026 words, CPU-time:      0.09 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -261.34644560     0.00000000    -0.91193328  0.39D-01  0.13D+00     5.83
    1     2     2     1.00000000     0.00000000  -261.34644560    -0.00000000    -0.91197453  0.39D-01  0.13D+00     5.83
    1     3     3     1.00000000     0.00000000  -261.34644560     0.00000000    -0.91194204  0.39D-01  0.13D+00     5.83
    2     1     1     1.10177052    -0.70419869  -262.05064428    -0.70419869    -0.02106695  0.30D-02  0.20D-02    67.80
    2     2     2     1.10174213    -0.70417076  -262.05061636    -0.70417076    -0.02109427  0.30D-02  0.20D-02    67.80
    2     3     3     1.10174513    -0.70416882  -262.05061442    -0.70416882    -0.02109631  0.30D-02  0.20D-02    67.80
    3     1     1     1.09414202    -0.72393834  -262.07038393    -0.01973965    -0.00037920  0.46D-04  0.52D-04   136.08
    3     2     2     1.09412723    -0.72393386  -262.07037946    -0.01976310    -0.00038287  0.46D-04  0.53D-04   136.08
    3     3     3     1.09412727    -0.72393381  -262.07037941    -0.01976499    -0.00038293  0.46D-04  0.53D-04   136.08
    4     1     1     1.09440910    -0.72433793  -262.07078352    -0.00039959    -0.00001915  0.16D-05  0.35D-05   202.27
    4     2     2     1.09440218    -0.72433734  -262.07078294    -0.00040348    -0.00001961  0.16D-05  0.36D-05   202.27
    4     3     3     1.09440214    -0.72433734  -262.07078294    -0.00040353    -0.00001962  0.16D-05  0.36D-05   202.27
    5     1     1     1.09457488    -0.72435926  -262.07080485    -0.00002133    -0.00000135  0.62D-07  0.28D-06   267.03
    5     2     2     1.09457368    -0.72435920  -262.07080480    -0.00002186    -0.00000140  0.64D-07  0.29D-06   267.03
    5     3     3     1.09457368    -0.72435920  -262.07080480    -0.00002186    -0.00000140  0.64D-07  0.29D-06   267.03
    6     1     1     1.09460797    -0.72436084  -262.07080644    -0.00000158    -0.00000010  0.72D-08  0.18D-07   335.68
    6     2     2     1.09460767    -0.72436084  -262.07080643    -0.00000163    -0.00000010  0.75D-08  0.18D-07   335.68
    6     3     3     1.09460767    -0.72436084  -262.07080643    -0.00000163    -0.00000010  0.75D-08  0.18D-07   335.68
    7     1     1     1.09462146    -0.72436095  -262.07080654    -0.00000011    -0.00000001  0.57D-09  0.12D-08   397.36
    7     2     2     1.09462142    -0.72436095  -262.07080654    -0.00000011    -0.00000001  0.60D-09  0.12D-08   397.36
    7     3     3     1.09462142    -0.72436095  -262.07080654    -0.00000011    -0.00000001  0.60D-09  0.12D-08   397.36


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   1.3%
 S   0.9%  13.8%
 P   0.5%  67.5%  10.6%

 Initialization:   1.0%
 Other:            4.6%

 Total CPU:      397.4 seconds
 =====================================



 Wavefunction saved on  5203.2

 Reference coefficients greater than 0.0500000
 =============================================
 22222222222/2000           0.0000000   0.9512885   0.0000000
 2222222222/22000           0.0000000  -0.0000000   0.9512885
 222222222222/000           0.9512884  -0.0000000  -0.0000000
 22222222222//0\0          -0.0596290  -0.0000000   0.0000000
 2222222222/2/\00          -0.0596290  -0.0000000   0.0000000
 2222222222/2/00\           0.0000000  -0.0000000   0.0596290
 22222222222//00\          -0.0000000   0.0596290   0.0000000
 2222222222//20\0           0.0000000  -0.0000000   0.0596290
 2222222222//2\00           0.0000000  -0.0596290  -0.0000000

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.000000    0.955655    0.000000
 2           0.955655   -0.000000   -0.000000
 3           0.000000   -0.000000    0.955655

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.955655    0.000000   -0.000000
 2           0.000000    0.955655   -0.000000
 3          -0.000000   -0.000000    0.955655


 RESULTS FOR STATE 1.2
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.95565489 (fixed)   0.95577811 (relaxed)   0.95565489 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00030829   -0.00017576   -0.62631657
 Singles      0.01215362   -0.03879334   -0.04346611
 Pairs        0.08249701   -0.00000000   -0.05457826
 Total        1.09495892   -0.03896911   -0.72436095
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -261.34644560
 Nuclear energy                         0.00000000
 Kinetic energy                        83.16434236
 One electron energy                 -454.51125873
 Two electron energy                  192.44045218
 Virial quotient                       -3.15124005
 Correlation energy                    -0.72436095
 !MRCI STATE 1.2 Energy              -262.070806544548

 Properties without orbital relaxation:

 !MRCI STATE 1.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -262.13959108 (Davidson, fixed reference)
 Cluster corrected energies          -262.13938658 (Davidson, relaxed reference)
 Cluster corrected energies          -262.13959108 (Davidson, rotated reference)

 Cluster corrected energies          -262.13922176 (Pople, fixed reference)
 Cluster corrected energies          -262.13900130 (Pople, relaxed reference)
 Cluster corrected energies          -262.13922176 (Pople, rotated reference)



 RESULTS FOR STATE 2.2
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.95565491 (fixed)   0.95577813 (relaxed)   0.95565491 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00030829   -0.00017576   -0.62631650
 Singles      0.01215368   -0.03879345   -0.04346616
 Pairs        0.08249691    0.00000000   -0.05457829
 Total        1.09495888   -0.03896921   -0.72436095
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -261.34644560
 Nuclear energy                         0.00000000
 Kinetic energy                        83.16434065
 One electron energy                 -454.51125659
 Two electron energy                  192.44045004
 Virial quotient                       -3.15124012
 Correlation energy                    -0.72436095
 !MRCI STATE 2.2 Energy              -262.070806544281

 Properties without orbital relaxation:

 !MRCI STATE 2.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -262.13959105 (Davidson, fixed reference)
 Cluster corrected energies          -262.13938655 (Davidson, relaxed reference)
 Cluster corrected energies          -262.13959105 (Davidson, rotated reference)

 Cluster corrected energies          -262.13922173 (Pople, fixed reference)
 Cluster corrected energies          -262.13900126 (Pople, relaxed reference)
 Cluster corrected energies          -262.13922173 (Pople, rotated reference)



 RESULTS FOR STATE 3.2
 =====================

 Coefficient of reference function:   C(0) = 0.95565491 (fixed)   0.95577813 (relaxed)   0.95565491 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00030829   -0.00017576   -0.00036447
 Singles      0.01215368   -0.03879345   -0.04346617
 Pairs        0.08249691   -0.68539173   -0.68053032
 Total        1.09495888   -0.72436095   -0.72436095
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -261.34644560
 Nuclear energy                         0.00000000
 Kinetic energy                        83.16434061
 One electron energy                 -454.51125657
 Two electron energy                  192.44045002
 Virial quotient                       -3.15124012
 Correlation energy                    -0.72436095
 !MRCI STATE 3.2 Energy              -262.070806544271

 Properties without orbital relaxation:

 !MRCI STATE 3.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -262.13959105 (Davidson, fixed reference)
 Cluster corrected energies          -262.13938655 (Davidson, relaxed reference)
 Cluster corrected energies          -262.13959105 (Davidson, rotated reference)

 Cluster corrected energies          -262.13922173 (Pople, fixed reference)
 Cluster corrected energies          -262.13900126 (Pople, relaxed reference)
 Cluster corrected energies          -262.13922173 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       39.05       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       6      100.24       700     1000      520     2100     2140     5203   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *       418.49    414.06      2.64      0.10      1.42
 REAL TIME  *       430.08 SEC
 DISK USED  *       139.38 MB (local),        1.13 GB (total)
 SF USED    *         1.07 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =      -262.13959108  AU                              
 SETTING HLSDIAG(2)     =      -262.13959105  AU                              
 SETTING HLSDIAG(3)     =      -262.13959105  AU                              


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 8  Roots:    1   2   3   4   5   6   7   8
 Number of reference states: 8  Roots:    1   2   3   4   5   6   7   8

 Reference symmetry:                   2   Quartet 
 Number of electrons:                 25
 Maximum number of shells:             5
 Maximum number of spin couplings:   165

 Reference space:       66 conf       84 CSFs
 N elec internal:     7606 conf    20444 CSFs
 N-1 el internal:     7990 conf    43460 CSFs
 N-2 el internal:     4430 conf    58610 CSFs

 Number of electrons in valence space:                     25
 Maximum number of open shell orbitals in reference space:  5
 Maximum number of open shell orbitals in internal spaces: 11


 Number of closed-shell orbitals:  10 (   7   3 )
 Number of active  orbitals:        6 (   0   6 )
 Number of external orbitals:      96 (  46  50 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Coulomb and exchange operators available. No transformation done.


 Number of p-space configurations:  42

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -261.10493119
     2      -261.10493119
     3      -261.10493119
     4      -261.09915371
     5      -261.09915371
     6      -261.09915371
     7      -261.09915371
     8      -261.09915371

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1235D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.4802D-06

 Number of blocks in overlap matrix:   888   Smallest eigenvalue:  0.12D-06
 Number of N-2 electron functions:    1852
 Number of N-1 electron functions:   43460

 Number of internal configurations:                10812
 Number of singly external configurations:       2092696
 Number of doubly external configurations:       4267696
 Total number of contracted configurations:      6371204
 Total number of uncontracted configurations:  136499244

 Diagonal Coupling coefficients finished.               Storage:   8240362 words, CPU-Time:     11.72 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   1506257 words, CPU-time:      0.20 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -261.10493119     0.00000000    -0.86795066  0.33D-01  0.12D+00    15.56
    1     2     2     1.00000000     0.00000000  -261.10493119    -0.00000000    -0.86784266  0.33D-01  0.12D+00    15.56
    1     3     3     1.00000000     0.00000000  -261.10493119    -0.00000000    -0.86844615  0.33D-01  0.12D+00    15.56
    1     4     4     1.00000000     0.00000000  -261.09915371    -0.00000000    -0.86995804  0.34D-01  0.12D+00    15.56
    1     5     5     1.00000000     0.00000000  -261.09915371     0.00000000    -0.86919055  0.34D-01  0.12D+00    15.56
    1     6     6     1.00000000     0.00000000  -261.09915371     0.00000000    -0.86964913  0.34D-01  0.12D+00    15.56
    1     7     7     1.00000000     0.00000000  -261.09915371    -0.00000000    -0.86945336  0.34D-01  0.12D+00    15.56
    1     8     8     1.00000000     0.00000000  -261.09915371    -0.00000000    -0.86971237  0.34D-01  0.12D+00    15.56
    2     1     1     1.09478576    -0.68538728  -261.79031847    -0.68538728    -0.01707251  0.17D-02  0.16D-02   249.60
    2     2     2     1.09473259    -0.68537207  -261.79030326    -0.68537207    -0.01709186  0.17D-02  0.16D-02   249.60
    2     3     3     1.09496997    -0.68530698  -261.79023817    -0.68530698    -0.01717265  0.17D-02  0.17D-02   249.60
    2     4     4     1.09539811    -0.68602113  -261.78517484    -0.68602113    -0.01714898  0.18D-02  0.17D-02   249.60
    2     5     5     1.09554246    -0.68601533  -261.78516904    -0.68601533    -0.01716513  0.18D-02  0.17D-02   249.60
    2     6     6     1.09522077    -0.68599638  -261.78515010    -0.68599638    -0.01720484  0.17D-02  0.17D-02   249.60
    2     7     7     1.09558038    -0.68598019  -261.78513390    -0.68598019    -0.01719485  0.17D-02  0.17D-02   249.60
    2     8     8     1.09510674    -0.68581811  -261.78497182    -0.68581811    -0.01738558  0.17D-02  0.17D-02   249.60
    3     1     1     1.08814262    -0.70137174  -261.80630292    -0.01598446    -0.00023728  0.23D-04  0.26D-04   478.73
    3     2     2     1.08811519    -0.70137009  -261.80630127    -0.01599801    -0.00023744  0.23D-04  0.27D-04   478.73
    3     3     3     1.08810373    -0.70136909  -261.80630028    -0.01606211    -0.00023843  0.23D-04  0.27D-04   478.73
    3     4     4     1.08848943    -0.70213790  -261.80129162    -0.01611677    -0.00024696  0.31D-04  0.29D-04   478.73
    3     5     5     1.08854292    -0.70213614  -261.80128985    -0.01612081    -0.00024916  0.32D-04  0.28D-04   478.73
    3     6     6     1.08853090    -0.70213395  -261.80128767    -0.01613757    -0.00025029  0.32D-04  0.29D-04   478.73
    3     7     7     1.08850708    -0.70213329  -261.80128701    -0.01615310    -0.00025057  0.32D-04  0.29D-04   478.73
    3     8     8     1.08840886    -0.70212872  -261.80128243    -0.01631060    -0.00025326  0.31D-04  0.31D-04   478.73
    4     1     1     1.08827592    -0.70161784  -261.80654903    -0.00024610    -0.00000829  0.85D-06  0.14D-05   707.32
    4     2     2     1.08826873    -0.70161730  -261.80654848    -0.00024721    -0.00000864  0.86D-06  0.15D-05   707.32
    4     3     3     1.08826651    -0.70161722  -261.80654841    -0.00024813    -0.00000869  0.87D-06  0.15D-05   707.32
    4     4     4     1.08864137    -0.70240058  -261.80155429    -0.00026267    -0.00001079  0.93D-06  0.22D-05   707.32
    4     5     5     1.08865092    -0.70240051  -261.80155423    -0.00026438    -0.00001077  0.93D-06  0.22D-05   707.32
    4     6     6     1.08864488    -0.70240025  -261.80155396    -0.00026629    -0.00001098  0.93D-06  0.23D-05   707.32
    4     7     7     1.08864023    -0.70240006  -261.80155378    -0.00026677    -0.00001110  0.93D-06  0.23D-05   707.32
    4     8     8     1.08861991    -0.70239974  -261.80155345    -0.00027103    -0.00001142  0.94D-06  0.24D-05   707.32
    5     1     1     1.08833979    -0.70162747  -261.80655865    -0.00000963    -0.00000055  0.16D-07  0.13D-06   939.76
    5     2     2     1.08833845    -0.70162741  -261.80655860    -0.00001011    -0.00000059  0.17D-07  0.14D-06   939.76
    5     3     3     1.08833842    -0.70162740  -261.80655859    -0.00001018    -0.00000059  0.17D-07  0.14D-06   939.76
    5     4     4     1.08874450    -0.70241442  -261.80156814    -0.00001385    -0.00000120  0.43D-07  0.27D-06   939.76
    5     5     5     1.08874447    -0.70241437  -261.80156809    -0.00001386    -0.00000123  0.44D-07  0.28D-06   939.76
    5     6     6     1.08874356    -0.70241436  -261.80156808    -0.00001412    -0.00000121  0.44D-07  0.28D-06   939.76
    5     7     7     1.08874456    -0.70241434  -261.80156806    -0.00001428    -0.00000120  0.43D-07  0.28D-06   939.76
    5     8     8     1.08874401    -0.70241434  -261.80156805    -0.00001459    -0.00000123  0.45D-07  0.28D-06   939.76
    6     1     1     1.08835352    -0.70162816  -261.80655935    -0.00000069    -0.00000005  0.27D-08  0.90D-08  1166.83
    6     2     2     1.08835322    -0.70162816  -261.80655934    -0.00000075    -0.00000005  0.29D-08  0.92D-08  1166.83
    6     3     3     1.08835325    -0.70162816  -261.80655934    -0.00000075    -0.00000005  0.30D-08  0.93D-08  1166.83
    6     4     4     1.08876936    -0.70241609  -261.80156981    -0.00000167    -0.00000015  0.80D-08  0.29D-07  1166.83
    6     5     5     1.08876923    -0.70241609  -261.80156980    -0.00000171    -0.00000015  0.85D-08  0.30D-07  1166.83
    6     6     6     1.08876801    -0.70241606  -261.80156977    -0.00000170    -0.00000015  0.83D-08  0.28D-07  1166.83
    6     7     7     1.08876824    -0.70241606  -261.80156977    -0.00000171    -0.00000015  0.84D-08  0.29D-07  1166.83
    6     8     8     1.08876816    -0.70241606  -261.80156977    -0.00000172    -0.00000015  0.87D-08  0.29D-07  1166.83
    7     1     1     1.08835849    -0.70162822  -261.80655940    -0.00000006    -0.00000000  0.20D-09  0.74D-09  1399.79
    7     2     2     1.08835851    -0.70162822  -261.80655940    -0.00000006    -0.00000000  0.21D-09  0.76D-09  1399.79
    7     3     3     1.08835859    -0.70162821  -261.80655940    -0.00000006    -0.00000000  0.20D-09  0.74D-09  1399.79
    7     4     4     1.08877404    -0.70241628  -261.80156999    -0.00000019    -0.00000002  0.12D-08  0.37D-08  1399.79
    7     5     5     1.08877395    -0.70241628  -261.80156999    -0.00000019    -0.00000002  0.11D-08  0.37D-08  1399.79
    7     6     6     1.08877387    -0.70241625  -261.80156996    -0.00000019    -0.00000002  0.12D-08  0.36D-08  1399.79
    7     7     7     1.08877390    -0.70241625  -261.80156996    -0.00000019    -0.00000002  0.11D-08  0.35D-08  1399.79
    7     8     8     1.08877390    -0.70241625  -261.80156996    -0.00000019    -0.00000002  0.11D-08  0.35D-08  1399.79


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.7%
 S   0.4%   9.4%
 P   0.3%  51.8%  28.1%

 Initialization:   0.9%
 Other:            8.4%

 Total CPU:     1399.8 seconds
 =====================================



 Wavefunction saved on  5303.2

 Reference coefficients greater than 0.0500000
 =============================================
 2222222222/2/0/0           0.0000000   0.0000000  -0.0000000   0.7690328   0.1377410   0.0001068  -0.0006987  -0.0001026
 22222222222///00           0.0000000   0.0000000  -0.0000000   0.2652287   0.7348723   0.0001086  -0.0003913   0.0000999
 22222222222//00/           0.0232294  -0.0025588  -0.6765465   0.0006012   0.0001315  -0.0283875   0.6697948   0.0914157
 2222222222//2/00          -0.0232294   0.0025588   0.6765465   0.0006012   0.0001315  -0.0283875   0.6697948   0.0914157
 2222222222/2/00/           0.0729098   0.6730123  -0.0000421   0.0000571   0.0000606  -0.6756999  -0.0308613   0.0162914
 2222222222//20/0           0.0729098   0.6730122  -0.0000421  -0.0000571  -0.0000606   0.6756998   0.0308613  -0.0162914
 22222222222//0/0           0.6726113  -0.0728649   0.0233699  -0.0000319   0.0001538  -0.0202972   0.0906105  -0.6701982
 2222222222/2//00           0.6726112  -0.0728649   0.0233699   0.0000319  -0.0001538   0.0202972  -0.0906106   0.6701984
 2222222222//200/           0.0000000   0.0000000   0.0000000   0.5038031  -0.5971316  -0.0000018  -0.0003074  -0.0002025

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.952380    0.103236   -0.032892    0.000000   -0.000000   -0.000000   -0.000000    0.000000
 2          -0.103173    0.952948    0.003623    0.000000   -0.000000   -0.000000   -0.000000   -0.000000
 3           0.033090   -0.000060    0.957952   -0.000000    0.000000   -0.000000   -0.000000   -0.000000
 4           0.000000   -0.000000    0.000000    0.954622   -0.000081    0.000045    0.000852   -0.084322
 5          -0.000000   -0.000000    0.000000    0.084322   -0.000086   -0.000218    0.000186    0.954623
 6           0.000000   -0.000000   -0.000000    0.000124    0.957064    0.028749   -0.040208    0.000089
 7          -0.000000   -0.000000    0.000000   -0.000848    0.043712   -0.128341    0.948700   -0.000135
 8           0.000000    0.000000    0.000000   -0.000144   -0.023075    0.949272    0.129482    0.000202

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.958523   -0.000000    0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.000000
 2          -0.000000    0.958523   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000
 3           0.000000   -0.000000    0.958523    0.000000    0.000000    0.000000   -0.000000    0.000000
 4          -0.000000   -0.000000    0.000000    0.958340    0.000000   -0.000000    0.000000   -0.000000
 5           0.000000   -0.000000    0.000000    0.000000    0.958340    0.000000    0.000000   -0.000000
 6          -0.000000   -0.000000    0.000000   -0.000000    0.000000    0.958340    0.000000   -0.000000
 7          -0.000000   -0.000000   -0.000000    0.000000    0.000000    0.000000    0.958340    0.000000
 8           0.000000   -0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.958340


 RESULTS FOR STATE 1.2
 =====================

 Coefficient of reference function:   C(0) = 0.95237992 (fixed)   0.95852874 (relaxed)   0.95852338 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00005205   -0.00015107   -0.59888502
 Singles      0.01453007   -0.04982921   -0.05514626
 Pairs        0.07383302   -0.00000000   -0.04759693
 Total        1.08841514   -0.04998028   -0.70162822
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -261.10493119
 Nuclear energy                         0.00000000
 Kinetic energy                        82.79585200
 One electron energy                 -449.09817868
 Two electron energy                  187.29161928
 Virial quotient                       -3.16207338
 Correlation energy                    -0.70162822
 !MRCI STATE 1.2 Energy              -261.806559400750

 Properties without orbital relaxation:

 !MRCI STATE 1.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -261.86859396 (Davidson, fixed reference)
 Cluster corrected energies          -261.86858543 (Davidson, relaxed reference)
 Cluster corrected energies          -261.86859396 (Davidson, rotated reference)

 Cluster corrected energies          -261.86730661 (Pople, fixed reference)
 Cluster corrected energies          -261.86729762 (Pople, relaxed reference)
 Cluster corrected energies          -261.86730661 (Pople, rotated reference)



 RESULTS FOR STATE 2.2
 =====================

 Coefficient of reference function:   C(0) = 0.95294772 (fixed)   0.95852873 (relaxed)   0.95852338 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00005205   -0.00015107   -0.59888497
 Singles      0.01453010   -0.04982926   -0.05514629
 Pairs        0.07383301    0.00000000   -0.04759696
 Total        1.08841516   -0.04998033   -0.70162822
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -261.10493119
 Nuclear energy                         0.00000000
 Kinetic energy                        82.79585302
 One electron energy                 -449.09817949
 Two electron energy                  187.29162009
 Virial quotient                       -3.16207334
 Correlation energy                    -0.70162822
 !MRCI STATE 2.2 Energy              -261.806559400653

 Properties without orbital relaxation:

 !MRCI STATE 2.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -261.86859397 (Davidson, fixed reference)
 Cluster corrected energies          -261.86858544 (Davidson, relaxed reference)
 Cluster corrected energies          -261.86859397 (Davidson, rotated reference)

 Cluster corrected energies          -261.86730662 (Pople, fixed reference)
 Cluster corrected energies          -261.86729763 (Pople, relaxed reference)
 Cluster corrected energies          -261.86730662 (Pople, rotated reference)



 RESULTS FOR STATE 3.2
 =====================

 Coefficient of reference function:   C(0) = 0.95795199 (fixed)   0.95852870 (relaxed)   0.95852334 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00005205   -0.00015107   -0.59888501
 Singles      0.01453007   -0.04982917   -0.05514623
 Pairs        0.07383312    0.00000000   -0.04759697
 Total        1.08841524   -0.04998024   -0.70162821
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -261.10493119
 Nuclear energy                         0.00000000
 Kinetic energy                        82.79585082
 One electron energy                 -449.09817919
 Two electron energy                  187.29161979
 Virial quotient                       -3.16207342
 Correlation energy                    -0.70162821
 !MRCI STATE 3.2 Energy              -261.806559400126

 Properties without orbital relaxation:

 !MRCI STATE 3.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -261.86859403 (Davidson, fixed reference)
 Cluster corrected energies          -261.86858549 (Davidson, relaxed reference)
 Cluster corrected energies          -261.86859403 (Davidson, rotated reference)

 Cluster corrected energies          -261.86730668 (Pople, fixed reference)
 Cluster corrected energies          -261.86729769 (Pople, relaxed reference)
 Cluster corrected energies          -261.86730668 (Pople, rotated reference)



 RESULTS FOR STATE 4.2
 =====================

 Coefficient of reference function:   C(0) = 0.95462238 (fixed)   0.95834398 (relaxed)   0.95833959 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00005385   -0.00016556   -0.65182640
 Singles      0.01471586   -0.05010468   -0.05550648
 Pairs        0.07406296    0.05738045    0.00491660
 Total        1.08883266    0.00711021   -0.70241628
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -261.09915371
 Nuclear energy                         0.00000000
 Kinetic energy                        82.80011833
 One electron energy                 -449.10612265
 Two electron energy                  187.30455266
 Virial quotient                       -3.16185019
 Correlation energy                    -0.70241628
 !MRCI STATE 4.2 Energy              -261.801569994398

 Properties without orbital relaxation:

 !MRCI STATE 4.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -261.86396750 (Davidson, fixed reference)
 Cluster corrected energies          -261.86396049 (Davidson, relaxed reference)
 Cluster corrected energies          -261.86396750 (Davidson, rotated reference)

 Cluster corrected energies          -261.86269467 (Pople, fixed reference)
 Cluster corrected energies          -261.86268727 (Pople, relaxed reference)
 Cluster corrected energies          -261.86269467 (Pople, rotated reference)



 RESULTS FOR STATE 5.2
 =====================

 Maximum overlap with reference state  8

 Coefficient of reference function:   C(0) = 0.95462277 (fixed)   0.95834402 (relaxed)   0.95833963 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00005385   -0.00016556   -0.00250975
 Singles      0.01471595   -0.05010473   -0.05550651
 Pairs        0.07406278   -0.64961667   -0.64440002
 Total        1.08883258   -0.69988696   -0.70241628
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -261.09915371
 Nuclear energy                         0.00000000
 Kinetic energy                        82.80012031
 One electron energy                 -449.10613946
 Two electron energy                  187.30456946
 Virial quotient                       -3.16185012
 Correlation energy                    -0.70241628
 !MRCI STATE 5.2 Energy              -261.801569993348

 Properties without orbital relaxation:

 !MRCI STATE 5.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -261.86396744 (Davidson, fixed reference)
 Cluster corrected energies          -261.86396043 (Davidson, relaxed reference)
 Cluster corrected energies          -261.86396744 (Davidson, rotated reference)

 Cluster corrected energies          -261.86269460 (Pople, fixed reference)
 Cluster corrected energies          -261.86268720 (Pople, relaxed reference)
 Cluster corrected energies          -261.86269460 (Pople, rotated reference)



 RESULTS FOR STATE 6.2
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.95706410 (fixed)   0.95834406 (relaxed)   0.95833967 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00005385   -0.00016557   -0.59907139
 Singles      0.01471592   -0.05010478   -0.05550652
 Pairs        0.07406273   -0.00006090   -0.04783834
 Total        1.08883249   -0.05033124   -0.70241625
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -261.09915371
 Nuclear energy                         0.00000000
 Kinetic energy                        82.80011591
 One electron energy                 -449.10612902
 Two electron energy                  187.30455906
 Virial quotient                       -3.16185028
 Correlation energy                    -0.70241625
 !MRCI STATE 6.2 Energy              -261.801569959660

 Properties without orbital relaxation:

 !MRCI STATE 6.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -261.86396735 (Davidson, fixed reference)
 Cluster corrected energies          -261.86396033 (Davidson, relaxed reference)
 Cluster corrected energies          -261.86396735 (Davidson, rotated reference)

 Cluster corrected energies          -261.86269450 (Pople, fixed reference)
 Cluster corrected energies          -261.86268711 (Pople, relaxed reference)
 Cluster corrected energies          -261.86269450 (Pople, rotated reference)



 RESULTS FOR STATE 7.2
 =====================

 Coefficient of reference function:   C(0) = 0.94870013 (fixed)   0.95834404 (relaxed)   0.95833965 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00005385   -0.00016557   -0.59921211
 Singles      0.01471585   -0.05010463   -0.05550643
 Pairs        0.07406283    0.00009219   -0.04769771
 Total        1.08883252   -0.05017801   -0.70241625
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -261.09915371
 Nuclear energy                         0.00000000
 Kinetic energy                        82.80011614
 One electron energy                 -449.10613411
 Two electron energy                  187.30456415
 Virial quotient                       -3.16185027
 Correlation energy                    -0.70241625
 !MRCI STATE 7.2 Energy              -261.801569959144

 Properties without orbital relaxation:

 !MRCI STATE 7.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -261.86396737 (Davidson, fixed reference)
 Cluster corrected energies          -261.86396036 (Davidson, relaxed reference)
 Cluster corrected energies          -261.86396737 (Davidson, rotated reference)

 Cluster corrected energies          -261.86269452 (Pople, fixed reference)
 Cluster corrected energies          -261.86268713 (Pople, relaxed reference)
 Cluster corrected energies          -261.86269452 (Pople, rotated reference)



 RESULTS FOR STATE 8.2
 =====================

 Maximum overlap with reference state  6

 Coefficient of reference function:   C(0) = 0.94927176 (fixed)   0.95834404 (relaxed)   0.95833965 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00005385   -0.00016557   -0.59900120
 Singles      0.01471581   -0.05010455   -0.05550641
 Pairs        0.07406287   -0.00013753   -0.04790864
 Total        1.08883253   -0.05040765   -0.70241625
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -261.09915371
 Nuclear energy                         0.00000000
 Kinetic energy                        82.80011362
 One electron energy                 -449.10612982
 Two electron energy                  187.30455987
 Virial quotient                       -3.16185037
 Correlation energy                    -0.70241625
 !MRCI STATE 8.2 Energy              -261.801569958976

 Properties without orbital relaxation:

 !MRCI STATE 8.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -261.86396737 (Davidson, fixed reference)
 Cluster corrected energies          -261.86396036 (Davidson, relaxed reference)
 Cluster corrected energies          -261.86396737 (Davidson, rotated reference)

 Cluster corrected energies          -261.86269453 (Pople, fixed reference)
 Cluster corrected energies          -261.86268713 (Pople, relaxed reference)
 Cluster corrected energies          -261.86269453 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       39.05       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       7      495.94       700     1000      520     2100     2140     5203     5303   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *      2024.41   1605.91    414.06      2.64      0.10      1.42
 REAL TIME  *      2083.41 SEC
 DISK USED  *       535.08 MB (local),        4.22 GB (total)
 SF USED    *         4.09 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(4)     =      -261.86859396  AU                              
 SETTING HLSDIAG(5)     =      -261.86859397  AU                              
 SETTING HLSDIAG(6)     =      -261.86859403  AU                              
 SETTING HLSDIAG(7)     =      -261.86396750  AU                              
 SETTING HLSDIAG(8)     =      -261.86396744  AU                              
 SETTING HLSDIAG(9)     =      -261.86396735  AU                              
 SETTING HLSDIAG(10)    =      -261.86396737  AU                              
 SETTING HLSDIAG(11)    =      -261.86396737  AU                              


         HLSDIAG
    -262.1395911
    -262.1395911
    -262.1395911
    -261.8685940
    -261.8685940
    -261.8685940
    -261.8639675
    -261.8639674
    -261.8639673
    -261.8639674
    -261.8639674
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Diagonal elements of H will be replaced by values from variable HLSDIAG


   ******************************
   *** Spin-orbit calculation ***
   ******************************


   Spin-orbit matrix elements
   ==========================

 Wavefunction restored from record  5203.2  Symmetry=2  S= 0.5  NSTATE=   3

 Original energies:   -262.070807   -262.070807   -262.070807
 Replaced energies:   -262.139591   -262.139591   -262.139591

 Wavefunction restored from record  5303.2  Symmetry=2  S= 1.5  NSTATE=   8

 Original energies:   -261.806559   -261.806559   -261.806559   -261.801570   -261.801570   -261.801570   -261.801570   -261.801570
 Replaced energies:   -261.868594   -261.868594   -261.868594   -261.863968   -261.863967   -261.863967   -261.863967   -261.863967



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=  -262.13959108

 Wigner-Eckart theorem used for 23 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.2  0.5  0.5       0.00       0.00       0.00      -0.00    7113.32      -0.00     -46.72       5.15    1360.77      -1.31
                            0.00       0.00       0.00      -0.00      -0.00   -7113.32    -146.65   -1353.71       0.08      -0.12

    2   2.2  0.5  0.5       0.00       0.01       0.00   -7113.32      -0.00      -0.00   -1344.33     145.63     -46.71       0.07
                           -0.00       0.00    7113.32       0.00       0.00      -0.00       0.00      -0.00       0.00   -1677.45

    3   3.2  0.5  0.5       0.00       0.00       0.01       0.00       0.00       0.00       0.00      -0.00       0.00    -578.66
                           -0.00   -7113.32       0.00    7113.32       0.00       0.00   -1344.36     145.64     -46.71      -0.07

    4   1.2  0.5 -0.5      -0.00   -7113.32       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00   -7113.32      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00

    5   2.2  0.5 -0.5    7113.32      -0.00       0.00       0.00       0.01       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00       0.00      -0.00   -7113.32       0.00       0.00       0.00       0.00

    6   3.2  0.5 -0.5      -0.00      -0.00       0.00       0.00       0.00       0.01       0.00       0.00       0.00       0.00
                         7113.32       0.00      -0.00       0.00    7113.32      -0.00       0.00       0.00       0.00       0.00

    7   1.2  1.5  1.5     -46.72   -1344.33       0.00       0.00       0.00       0.00   59476.99       0.00       0.00       0.00
                          146.65      -0.00    1344.36      -0.00      -0.00      -0.00       0.00     126.60     394.72    3004.49

    8   2.2  1.5  1.5       5.15     145.63      -0.00       0.00       0.00       0.00       0.00   59476.99       0.00       0.00
                         1353.71       0.00    -145.64      -0.00      -0.00      -0.00    -126.60       0.00    3643.65    -329.11

    9   3.2  1.5  1.5    1360.77     -46.71       0.00       0.00       0.00       0.00       0.00       0.00   59476.98       0.00
                           -0.08      -0.00      46.71      -0.00      -0.00      -0.00    -394.72   -3643.65      -0.00     104.06

   10   4.2  1.5  1.5      -1.31       0.07    -578.66       0.00       0.00       0.00       0.00       0.00       0.00   60492.38
                            0.12    1677.45       0.07      -0.00      -0.00      -0.00   -3004.49     329.11    -104.06      -0.00

   11   5.2  1.5  1.5      -0.29      -0.33   -1603.19       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.13     300.73      -0.33      -0.00      -0.00      -0.00    3561.59    -385.04     124.11       1.50

   12   6.2  1.5  1.5      61.87      43.98      -0.24       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                        -1472.67       0.23      43.98      -0.00      -0.00      -0.00     120.84    -184.75   -4053.68    -165.10

   13   7.2  1.5  1.5   -1459.80    -196.33       0.85       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -67.26      -1.52    -196.33      -0.00      -0.00      -0.00     441.23    3996.38    -185.33     751.98

   14   8.2  1.5  1.5    -199.24    1452.12      -0.22       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           35.51      -0.22    1452.12      -0.00      -0.00      -0.00      56.95     545.80      97.74   -5558.67

   15   1.2  1.5  0.5       0.00       0.00       0.00     -26.98    -776.15       0.00       0.00      -0.13   -2104.92      96.93
                            0.00     169.34     -53.61      84.67      -0.00     776.17      -0.00    2115.97      -8.00      91.27

   16   2.2  1.5  0.5       0.00       0.00       0.00       2.97      84.08      -0.00       0.13      -0.00     228.03     914.09
                            0.00    1563.17       5.91     781.57       0.00     -84.08   -2115.97       0.00     -72.65      -9.94

   17   3.2  1.5  0.5       0.00       0.00       0.00     785.64     -26.97       0.00    2104.92    -228.03      -0.00      -0.02
                           -0.00      -0.10    1561.48      -0.05      -0.00      26.97       8.00      72.65       0.00   -2663.68

   18   4.2  1.5  0.5       0.00       0.00       0.00      -0.76       0.04    -334.09     -96.93    -914.09       0.02       0.00
                         1268.79      -0.14       1.50       0.07     968.48       0.04     -91.27       9.94    2663.68      -0.00

   19   5.2  1.5  0.5       0.00       0.00       0.00      -0.17      -0.19    -925.60    -273.87   -2532.11       0.71      -0.48
                        -1503.89      -0.15       0.33       0.08     173.63      -0.19     -16.12       2.31     477.10       3.85

   20   6.2  1.5  0.5       0.00       0.00       0.00      35.72      25.39      -0.14     -95.38       9.95     -73.70    3981.93
                           -0.00    1700.50     -71.02    -850.25       0.13      25.39   -2334.38     182.13     -80.47     -31.25

   21   7.2  1.5  0.5       0.00       0.00       0.00    -842.82    -113.35       0.49    2295.83    -247.33     393.98     182.22
                           -0.77      77.67    1675.77     -38.83      -0.88    -113.35     -72.37     323.71      -6.13     739.82

   22   8.2  1.5  0.5       0.00       0.00       0.00    -115.03     838.38      -0.13     394.46     -43.23   -2310.41     -97.86
                           -0.51     -41.00     228.71      20.50      -0.13     838.38    -194.05   -2315.30       1.74     101.15

   23   1.2  1.5 -0.5     -26.98    -776.15       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -84.67       0.00    -776.17       0.00     169.34     -53.61      -0.00      -0.00      -0.00      -0.00

   24   2.2  1.5 -0.5       2.97      84.08      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -781.57      -0.00      84.08       0.00    1563.17       5.91      -0.00      -0.00      -0.00      -0.00

   25   3.2  1.5 -0.5     785.64     -26.97       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.05       0.00     -26.97      -0.00      -0.10    1561.48      -0.00      -0.00      -0.00      -0.00

   26   4.2  1.5 -0.5      -0.76       0.04    -334.09       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.07    -968.48      -0.04    1268.79      -0.14       1.50      -0.00      -0.00      -0.00      -0.00

   27   5.2  1.5 -0.5      -0.17      -0.19    -925.60       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.08    -173.63       0.19   -1503.89      -0.15       0.33      -0.00      -0.00      -0.00      -0.00

   28   6.2  1.5 -0.5      35.72      25.39      -0.14       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          850.25      -0.13     -25.39      -0.00    1700.50     -71.02      -0.00      -0.00      -0.00      -0.00

   29   7.2  1.5 -0.5    -842.82    -113.35       0.49       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           38.83       0.88     113.35      -0.77      77.67    1675.77      -0.00      -0.00      -0.00      -0.00

   30   8.2  1.5 -0.5    -115.03     838.38      -0.13       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -20.50       0.13    -838.38      -0.51     -41.00     228.71      -0.00      -0.00      -0.00      -0.00

   31   1.2  1.5 -1.5       0.00       0.00       0.00     -46.72   -1344.33       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00    -146.65       0.00   -1344.36      -0.00      -0.00      -0.00      -0.00

   32   2.2  1.5 -1.5       0.00       0.00       0.00       5.15     145.63      -0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00   -1353.71      -0.00     145.64      -0.00      -0.00      -0.00      -0.00

   33   3.2  1.5 -1.5       0.00       0.00       0.00    1360.77     -46.71       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.08       0.00     -46.71      -0.00      -0.00      -0.00      -0.00

   34   4.2  1.5 -1.5       0.00       0.00       0.00      -1.31       0.07    -578.66       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.12   -1677.45      -0.07      -0.00      -0.00      -0.00      -0.00

   35   5.2  1.5 -1.5       0.00       0.00       0.00      -0.29      -0.33   -1603.19       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.13    -300.73       0.33      -0.00      -0.00      -0.00      -0.00

   36   6.2  1.5 -1.5       0.00       0.00       0.00      61.87      43.98      -0.24       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00    1472.67      -0.23     -43.98      -0.00      -0.00      -0.00      -0.00

   37   7.2  1.5 -1.5       0.00       0.00       0.00   -1459.80    -196.33       0.85       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      67.26       1.52     196.33      -0.00      -0.00      -0.00      -0.00

   38   8.2  1.5 -1.5       0.00       0.00       0.00    -199.24    1452.12      -0.22       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00     -35.51       0.22   -1452.12      -0.00      -0.00      -0.00      -0.00


   Nr   State  S   Sz       11         12         13         14         15         16         17         18         19         20

    1   1.2  0.5  0.5      -0.29      61.87   -1459.80    -199.24       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.13    1472.67      67.26     -35.51      -0.00      -0.00       0.00   -1268.79    1503.89       0.00

    2   2.2  0.5  0.5      -0.33      43.98    -196.33    1452.12       0.00       0.00       0.00       0.00       0.00       0.00
                         -300.73      -0.23       1.52       0.22    -169.34   -1563.17       0.10       0.14       0.15   -1700.50

    3   3.2  0.5  0.5   -1603.19      -0.24       0.85      -0.22       0.00       0.00       0.00       0.00       0.00       0.00
                            0.33     -43.98     196.33   -1452.12      53.61      -5.91   -1561.48      -1.50      -0.33      71.02

    4   1.2  0.5 -0.5       0.00       0.00       0.00       0.00     -26.98       2.97     785.64      -0.76      -0.17      35.72
                            0.00       0.00       0.00       0.00     -84.67    -781.57       0.05      -0.07      -0.08     850.25

    5   2.2  0.5 -0.5       0.00       0.00       0.00       0.00    -776.15      84.08     -26.97       0.04      -0.19      25.39
                            0.00       0.00       0.00       0.00       0.00      -0.00       0.00    -968.48    -173.63      -0.13

    6   3.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00      -0.00       0.00    -334.09    -925.60      -0.14
                            0.00       0.00       0.00       0.00    -776.17      84.08     -26.97      -0.04       0.19     -25.39

    7   1.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.13    2104.92     -96.93    -273.87     -95.38
                        -3561.59    -120.84    -441.23     -56.95       0.00    2115.97      -8.00      91.27      16.12    2334.38

    8   2.2  1.5  1.5       0.00       0.00       0.00       0.00      -0.13      -0.00    -228.03    -914.09   -2532.11       9.95
                          385.04     184.75   -3996.38    -545.80   -2115.97      -0.00     -72.65      -9.94      -2.31    -182.13

    9   3.2  1.5  1.5       0.00       0.00       0.00       0.00   -2104.92     228.03      -0.00       0.02       0.71     -73.70
                         -124.11    4053.68     185.33     -97.74       8.00      72.65      -0.00   -2663.68    -477.10      80.47

   10   4.2  1.5  1.5       0.00       0.00       0.00       0.00      96.93     914.09      -0.02       0.00      -0.48    3981.93
                           -1.50     165.10    -751.98    5558.67     -91.27       9.94    2663.68       0.00      -3.85      31.25

   11   5.2  1.5  1.5   60492.40       0.00       0.00       0.00     273.87    2532.11      -0.71       0.48      -0.00   -1437.17
                           -0.00     141.34    -634.43    4689.84     -16.12       2.31     477.10       3.85       0.00    -174.59

   12   6.2  1.5  1.5       0.00   60492.42       0.00       0.00      95.38      -9.95      73.70   -3981.93    1437.17      -0.00
                         -141.34      -0.00    3636.41     492.80   -2334.38     182.13     -80.47     -31.25     174.59       0.00

   13   7.2  1.5  1.5       0.00       0.00   60492.41       0.00   -2295.83     247.33    -393.98    -182.22      66.06     -54.20
                          634.43   -3636.41      -0.00     104.27     -72.37     323.71      -6.13     739.82   -4130.73     286.04

   14   8.2  1.5  1.5       0.00       0.00       0.00   60492.41    -394.46      43.23    2310.41      97.86     -34.18     -97.62
                        -4689.84    -492.80    -104.27       0.00    -194.05   -2315.30       1.74     101.15    -563.57   -2098.29

   15   1.2  1.5  0.5     273.87      95.38   -2295.83    -394.46   59476.99       0.00       0.00       0.00       0.00       0.00
                           16.12    2334.38      72.37     194.05       0.00      42.20     131.57    1001.50   -1187.20     -40.28

   16   2.2  1.5  0.5    2532.11      -9.95     247.33      43.23       0.00   59476.99       0.00       0.00       0.00       0.00
                           -2.31    -182.13    -323.71    2315.30     -42.20       0.00    1214.55    -109.70     128.35      61.58

   17   3.2  1.5  0.5      -0.71      73.70    -393.98    2310.41       0.00       0.00   59476.98       0.00       0.00       0.00
                         -477.10      80.47       6.13      -1.74    -131.57   -1214.55      -0.00      34.69     -41.37    1351.23

   18   4.2  1.5  0.5       0.48   -3981.93    -182.22      97.86       0.00       0.00       0.00   60492.38       0.00       0.00
                           -3.85      31.25    -739.82    -101.15   -1001.50     109.70     -34.69      -0.00      -0.50      55.03

   19   5.2  1.5  0.5      -0.00    1437.17      66.06     -34.18       0.00       0.00       0.00       0.00   60492.40       0.00
                           -0.00    -174.59    4130.73     563.57    1187.20    -128.35      41.37       0.50      -0.00      47.11

   20   6.2  1.5  0.5   -1437.17      -0.00     -54.20     -97.62       0.00       0.00       0.00       0.00       0.00   60492.42
                          174.59      -0.00    -286.04    2098.29      40.28     -61.58   -1351.23     -55.03     -47.11      -0.00

   21   7.2  1.5  0.5     -66.06      54.20       0.00    2116.59       0.00       0.00       0.00       0.00       0.00       0.00
                        -4130.73     286.04       0.00      87.95     147.08    1332.13     -61.78     250.66     211.48   -1212.14

   22   8.2  1.5  0.5      34.18      97.62   -2116.59       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -563.57   -2098.29     -87.95       0.00      18.98     181.93      32.58   -1852.89   -1563.28    -164.27

   23   1.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00      -0.15   -2430.55     111.92     316.24     110.13
                           -0.00      -0.00      -0.00      -0.00      -0.00    2443.31      -9.24     105.39      18.61    2695.50

   24   2.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.15      -0.00     263.31    1055.50    2923.83     -11.49
                           -0.00      -0.00      -0.00      -0.00   -2443.31       0.00     -83.89     -11.48      -2.67    -210.31

   25   3.2  1.5 -0.5       0.00       0.00       0.00       0.00    2430.55    -263.31      -0.00      -0.02      -0.82      85.10
                           -0.00      -0.00      -0.00      -0.00       9.24      83.89       0.00   -3075.75    -550.90      92.92

   26   4.2  1.5 -0.5       0.00       0.00       0.00       0.00    -111.92   -1055.50       0.02       0.00       0.55   -4597.94
                           -0.00      -0.00      -0.00      -0.00    -105.39      11.48    3075.75      -0.00      -4.45      36.09

   27   5.2  1.5 -0.5       0.00       0.00       0.00       0.00    -316.24   -2923.83       0.82      -0.55      -0.00    1659.50
                           -0.00      -0.00      -0.00      -0.00     -18.61       2.67     550.90       4.45      -0.00    -201.60

   28   6.2  1.5 -0.5       0.00       0.00       0.00       0.00    -110.13      11.49     -85.10    4597.94   -1659.50      -0.00
                           -0.00      -0.00      -0.00      -0.00   -2695.50     210.31     -92.92     -36.09     201.60      -0.00

   29   7.2  1.5 -0.5       0.00       0.00       0.00       0.00    2650.99    -285.59     454.93     210.41     -76.28      62.58
                           -0.00      -0.00      -0.00      -0.00     -83.56     373.79      -7.08     854.27   -4769.76     330.29

   30   8.2  1.5 -0.5       0.00       0.00       0.00       0.00     455.48     -49.91   -2667.83    -113.00      39.47     112.73
                           -0.00      -0.00      -0.00      -0.00    -224.07   -2673.47       2.01     116.80    -650.75   -2422.90

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

    1   1.2  0.5  0.5       0.00       0.00     -26.98       2.97     785.64      -0.76      -0.17      35.72    -842.82    -115.03
                            0.77       0.51      84.67     781.57      -0.05       0.07       0.08    -850.25     -38.83      20.50

    2   2.2  0.5  0.5       0.00       0.00    -776.15      84.08     -26.97       0.04      -0.19      25.39    -113.35     838.38
                          -77.67      41.00      -0.00       0.00      -0.00     968.48     173.63       0.13      -0.88      -0.13

    3   3.2  0.5  0.5       0.00       0.00       0.00      -0.00       0.00    -334.09    -925.60      -0.14       0.49      -0.13
                        -1675.77    -228.71     776.17     -84.08      26.97       0.04      -0.19      25.39    -113.35     838.38

    4   1.2  0.5 -0.5    -842.82    -115.03       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           38.83     -20.50      -0.00      -0.00       0.00   -1268.79    1503.89       0.00       0.77       0.51

    5   2.2  0.5 -0.5    -113.35     838.38       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.88       0.13    -169.34   -1563.17       0.10       0.14       0.15   -1700.50     -77.67      41.00

    6   3.2  0.5 -0.5       0.49      -0.13       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          113.35    -838.38      53.61      -5.91   -1561.48      -1.50      -0.33      71.02   -1675.77    -228.71

    7   1.2  1.5  1.5    2295.83     394.46       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           72.37     194.05       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    8   2.2  1.5  1.5    -247.33     -43.23       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -323.71    2315.30       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    9   3.2  1.5  1.5     393.98   -2310.41       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            6.13      -1.74       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   10   4.2  1.5  1.5     182.22     -97.86       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -739.82    -101.15       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   11   5.2  1.5  1.5     -66.06      34.18       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         4130.73     563.57       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   12   6.2  1.5  1.5      54.20      97.62       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -286.04    2098.29       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   13   7.2  1.5  1.5       0.00   -2116.59       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      87.95       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   14   8.2  1.5  1.5    2116.59       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -87.95      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   15   1.2  1.5  0.5       0.00       0.00       0.00       0.15    2430.55    -111.92    -316.24    -110.13    2650.99     455.48
                         -147.08     -18.98       0.00    2443.31      -9.24     105.39      18.61    2695.50      83.56     224.07

   16   2.2  1.5  0.5       0.00       0.00      -0.15      -0.00    -263.31   -1055.50   -2923.83      11.49    -285.59     -49.91
                        -1332.13    -181.93   -2443.31      -0.00     -83.89     -11.48      -2.67    -210.31    -373.79    2673.47

   17   3.2  1.5  0.5       0.00       0.00   -2430.55     263.31      -0.00       0.02       0.82     -85.10     454.93   -2667.83
                           61.78     -32.58       9.24      83.89      -0.00   -3075.75    -550.90      92.92       7.08      -2.01

   18   4.2  1.5  0.5       0.00       0.00     111.92    1055.50      -0.02       0.00      -0.55    4597.94     210.41    -113.00
                         -250.66    1852.89    -105.39      11.48    3075.75       0.00      -4.45      36.09    -854.27    -116.80

   19   5.2  1.5  0.5       0.00       0.00     316.24    2923.83      -0.82       0.55      -0.00   -1659.50     -76.28      39.47
                         -211.48    1563.28     -18.61       2.67     550.90       4.45       0.00    -201.60    4769.76     650.75

   20   6.2  1.5  0.5       0.00       0.00     110.13     -11.49      85.10   -4597.94    1659.50      -0.00      62.58     112.73
                         1212.14     164.27   -2695.50     210.31     -92.92     -36.09     201.60       0.00    -330.29    2422.90

   21   7.2  1.5  0.5   60492.41       0.00   -2650.99     285.59    -454.93    -210.41      76.28     -62.58       0.00   -2444.03
                           -0.00      34.76     -83.56     373.79      -7.08     854.27   -4769.76     330.29      -0.00     101.56

   22   8.2  1.5  0.5       0.00   60492.41    -455.48      49.91    2667.83     113.00     -39.47    -112.73    2444.03       0.00
                          -34.76       0.00    -224.07   -2673.47       2.01     116.80    -650.75   -2422.90    -101.56      -0.00

   23   1.2  1.5 -0.5   -2650.99    -455.48   59476.99       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           83.56     224.07      -0.00     -42.20    -131.57   -1001.50    1187.20      40.28     147.08      18.98

   24   2.2  1.5 -0.5     285.59      49.91       0.00   59476.99       0.00       0.00       0.00       0.00       0.00       0.00
                         -373.79    2673.47      42.20      -0.00   -1214.55     109.70    -128.35     -61.58    1332.13     181.93

   25   3.2  1.5 -0.5    -454.93    2667.83       0.00       0.00   59476.98       0.00       0.00       0.00       0.00       0.00
                            7.08      -2.01     131.57    1214.55       0.00     -34.69      41.37   -1351.23     -61.78      32.58

   26   4.2  1.5 -0.5    -210.41     113.00       0.00       0.00       0.00   60492.38       0.00       0.00       0.00       0.00
                         -854.27    -116.80    1001.50    -109.70      34.69       0.00       0.50     -55.03     250.66   -1852.89

   27   5.2  1.5 -0.5      76.28     -39.47       0.00       0.00       0.00       0.00   60492.40       0.00       0.00       0.00
                         4769.76     650.75   -1187.20     128.35     -41.37      -0.50       0.00     -47.11     211.48   -1563.28

   28   6.2  1.5 -0.5     -62.58    -112.73       0.00       0.00       0.00       0.00       0.00   60492.42       0.00       0.00
                         -330.29    2422.90     -40.28      61.58    1351.23      55.03      47.11       0.00   -1212.14    -164.27

   29   7.2  1.5 -0.5       0.00    2444.03       0.00       0.00       0.00       0.00       0.00       0.00   60492.41       0.00
                            0.00     101.56    -147.08   -1332.13      61.78    -250.66    -211.48    1212.14       0.00     -34.76

   30   8.2  1.5 -0.5   -2444.03       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   60492.41
                         -101.56       0.00     -18.98    -181.93     -32.58    1852.89    1563.28     164.27      34.76      -0.00

   31   1.2  1.5 -1.5       0.00       0.00       0.00      -0.13   -2104.92      96.93     273.87      95.38   -2295.83    -394.46
                           -0.00      -0.00      -0.00    2115.97      -8.00      91.27      16.12    2334.38      72.37     194.05

   32   2.2  1.5 -1.5       0.00       0.00       0.13      -0.00     228.03     914.09    2532.11      -9.95     247.33      43.23
                           -0.00      -0.00   -2115.97       0.00     -72.65      -9.94      -2.31    -182.13    -323.71    2315.30

   33   3.2  1.5 -1.5       0.00       0.00    2104.92    -228.03      -0.00      -0.02      -0.71      73.70    -393.98    2310.41
                           -0.00      -0.00       8.00      72.65       0.00   -2663.68    -477.10      80.47       6.13      -1.74

   34   4.2  1.5 -1.5       0.00       0.00     -96.93    -914.09       0.02       0.00       0.48   -3981.93    -182.22      97.86
                           -0.00      -0.00     -91.27       9.94    2663.68      -0.00      -3.85      31.25    -739.82    -101.15

   35   5.2  1.5 -1.5       0.00       0.00    -273.87   -2532.11       0.71      -0.48      -0.00    1437.17      66.06     -34.18
                           -0.00      -0.00     -16.12       2.31     477.10       3.85      -0.00    -174.59    4130.73     563.57

   36   6.2  1.5 -1.5       0.00       0.00     -95.38       9.95     -73.70    3981.93   -1437.17      -0.00     -54.20     -97.62
                           -0.00      -0.00   -2334.38     182.13     -80.47     -31.25     174.59      -0.00    -286.04    2098.29

   37   7.2  1.5 -1.5       0.00       0.00    2295.83    -247.33     393.98     182.22     -66.06      54.20       0.00    2116.59
                           -0.00      -0.00     -72.37     323.71      -6.13     739.82   -4130.73     286.04       0.00      87.95

   38   8.2  1.5 -1.5       0.00       0.00     394.46     -43.23   -2310.41     -97.86      34.18      97.62   -2116.59       0.00
                           -0.00      -0.00    -194.05   -2315.30       1.74     101.15    -563.57   -2098.29     -87.95       0.00


   Nr   State  S   Sz       31         32         33         34         35         36         37         38

    1   1.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    2   2.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    3   3.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    4   1.2  0.5 -0.5     -46.72       5.15    1360.77      -1.31      -0.29      61.87   -1459.80    -199.24
                          146.65    1353.71      -0.08       0.12       0.13   -1472.67     -67.26      35.51

    5   2.2  0.5 -0.5   -1344.33     145.63     -46.71       0.07      -0.33      43.98    -196.33    1452.12
                           -0.00       0.00      -0.00    1677.45     300.73       0.23      -1.52      -0.22

    6   3.2  0.5 -0.5       0.00      -0.00       0.00    -578.66   -1603.19      -0.24       0.85      -0.22
                         1344.36    -145.64      46.71       0.07      -0.33      43.98    -196.33    1452.12

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

   23   1.2  1.5 -0.5       0.00       0.13    2104.92     -96.93    -273.87     -95.38    2295.83     394.46
                            0.00    2115.97      -8.00      91.27      16.12    2334.38      72.37     194.05

   24   2.2  1.5 -0.5      -0.13      -0.00    -228.03    -914.09   -2532.11       9.95    -247.33     -43.23
                        -2115.97      -0.00     -72.65      -9.94      -2.31    -182.13    -323.71    2315.30

   25   3.2  1.5 -0.5   -2104.92     228.03      -0.00       0.02       0.71     -73.70     393.98   -2310.41
                            8.00      72.65      -0.00   -2663.68    -477.10      80.47       6.13      -1.74

   26   4.2  1.5 -0.5      96.93     914.09      -0.02       0.00      -0.48    3981.93     182.22     -97.86
                          -91.27       9.94    2663.68       0.00      -3.85      31.25    -739.82    -101.15

   27   5.2  1.5 -0.5     273.87    2532.11      -0.71       0.48      -0.00   -1437.17     -66.06      34.18
                          -16.12       2.31     477.10       3.85       0.00    -174.59    4130.73     563.57

   28   6.2  1.5 -0.5      95.38      -9.95      73.70   -3981.93    1437.17      -0.00      54.20      97.62
                        -2334.38     182.13     -80.47     -31.25     174.59       0.00    -286.04    2098.29

   29   7.2  1.5 -0.5   -2295.83     247.33    -393.98    -182.22      66.06     -54.20       0.00   -2116.59
                          -72.37     323.71      -6.13     739.82   -4130.73     286.04      -0.00      87.95

   30   8.2  1.5 -0.5    -394.46      43.23    2310.41      97.86     -34.18     -97.62    2116.59       0.00
                         -194.05   -2315.30       1.74     101.15    -563.57   -2098.29     -87.95      -0.00

   31   1.2  1.5 -1.5   59476.99       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00    -126.60    -394.72   -3004.49    3561.59     120.84     441.23      56.95

   32   2.2  1.5 -1.5       0.00   59476.99       0.00       0.00       0.00       0.00       0.00       0.00
                          126.60      -0.00   -3643.65     329.11    -385.04    -184.75    3996.38     545.80

   33   3.2  1.5 -1.5       0.00       0.00   59476.98       0.00       0.00       0.00       0.00       0.00
                          394.72    3643.65       0.00    -104.06     124.11   -4053.68    -185.33      97.74

   34   4.2  1.5 -1.5       0.00       0.00       0.00   60492.38       0.00       0.00       0.00       0.00
                         3004.49    -329.11     104.06       0.00       1.50    -165.10     751.98   -5558.67

   35   5.2  1.5 -1.5       0.00       0.00       0.00       0.00   60492.40       0.00       0.00       0.00
                        -3561.59     385.04    -124.11      -1.50       0.00    -141.34     634.43   -4689.84

   36   6.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00   60492.42       0.00       0.00
                         -120.84     184.75    4053.68     165.10     141.34       0.00   -3636.41    -492.80

   37   7.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00   60492.41       0.00
                         -441.23   -3996.38     185.33    -751.98    -634.43    3636.41       0.00    -104.27

   38   8.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00   60492.41
                          -56.95    -545.80     -97.74    5558.67    4689.84     492.80     104.27      -0.00


 No symmetry adaption


 Spin-orbit eigenstates   (energies)
 ======================

     Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
              (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1  -262.17278785    -0.03319677    -7285.85      0.00000000        0.00      0.0000
     2  -262.17278785    -0.03319677    -7285.85      0.00000000        0.00      0.0000
     3  -262.17278346    -0.03319238    -7284.89      0.00000439        0.96      0.0001
     4  -262.17278346    -0.03319238    -7284.89      0.00000439        0.96      0.0001
     5  -262.07607932     0.06351176    13939.22      0.09670852    21225.07      2.6316
     6  -262.07607932     0.06351176    13939.22      0.09670852    21225.07      2.6316
     7  -261.90315419     0.23643689    51891.90      0.26963365    59177.75      7.3371
     8  -261.90315419     0.23643689    51891.90      0.26963365    59177.75      7.3371
     9  -261.90315416     0.23643691    51891.90      0.26963368    59177.75      7.3371
    10  -261.90315416     0.23643691    51891.90      0.26963368    59177.75      7.3371
    11  -261.90315413     0.23643695    51891.91      0.26963372    59177.76      7.3371
    12  -261.90315413     0.23643695    51891.91      0.26963372    59177.76      7.3371
    13  -261.89742119     0.24216989    53150.15      0.27536665    60435.99      7.4931
    14  -261.89742119     0.24216989    53150.15      0.27536665    60435.99      7.4931
    15  -261.89742117     0.24216990    53150.15      0.27536667    60436.00      7.4931
    16  -261.89742117     0.24216990    53150.15      0.27536667    60436.00      7.4931
    17  -261.89742116     0.24216992    53150.15      0.27536668    60436.00      7.4931
    18  -261.89742116     0.24216992    53150.15      0.27536668    60436.00      7.4931
    19  -261.89742115     0.24216993    53150.16      0.27536669    60436.00      7.4931
    20  -261.89742115     0.24216993    53150.16      0.27536669    60436.00      7.4931
    21  -261.87205710     0.26753398    58716.92      0.30073075    66002.77      8.1833
    22  -261.87205710     0.26753398    58716.92      0.30073075    66002.77      8.1833
    23  -261.87205633     0.26753474    58717.09      0.30073151    66002.94      8.1833
    24  -261.87205633     0.26753474    58717.09      0.30073151    66002.94      8.1833
    25  -261.84655244     0.29303864    64314.55      0.32623541    71600.40      8.8773
    26  -261.84655244     0.29303864    64314.55      0.32623541    71600.40      8.8773
    27  -261.84054042     0.29905066    65634.03      0.33224742    72919.88      9.0409
    28  -261.84054042     0.29905066    65634.03      0.33224742    72919.88      9.0409
    29  -261.84054038     0.29905070    65634.04      0.33224747    72919.89      9.0409
    30  -261.84054038     0.29905070    65634.04      0.33224747    72919.89      9.0409
    31  -261.84054036     0.29905072    65634.05      0.33224749    72919.89      9.0409
    32  -261.84054036     0.29905072    65634.05      0.33224749    72919.89      9.0409
    33  -261.81512960     0.32446148    71211.06      0.35765825    78496.91      9.7324
    34  -261.81512960     0.32446148    71211.06      0.35765825    78496.91      9.7324
    35  -261.81512602     0.32446506    71211.85      0.35766183    78497.70      9.7325
    36  -261.81512602     0.32446506    71211.85      0.35766183    78497.70      9.7325
    37  -261.80667069     0.33292039    73067.58      0.36611715    80353.43      9.9626
    38  -261.80667069     0.33292039    73067.58      0.36611715    80353.43      9.9626


 Eigenvectors of spin-orbit matrix
 =================================

  Basis states          Eigenvectors (columnwise)

   Nr   State  S   Sz        1             2             3             4             5             6             7             8

    1    1.2  0.5  0.5   0.788085674  -0.001247103  -0.209139547  -0.019843302  -0.018526893   0.575616942   0.000004228   0.000009038
                         0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000

    2    2.2  0.5  0.5   0.000864685   0.546519904   0.006460589  -0.068097827   0.035151399   0.001131388   0.000030728  -0.000014041
                        -0.000286370  -0.181737297   0.054166868  -0.570846158   0.574572977   0.018493291  -0.000057792   0.000027606

    3    3.2  0.5  0.5  -0.000107133  -0.066930056  -0.073866871   0.778475395   0.574602989   0.018494257  -0.000009674   0.000004384
                        -0.000318646  -0.201265512   0.008810844  -0.092868470  -0.035153235  -0.001131447  -0.000004809   0.000002864

    4    1.2  0.5 -0.5   0.001183388   0.747821869  -0.002350682   0.024775137  -0.035149549  -0.001131329  -0.000004215   0.000001972
                        -0.000393522  -0.248679475  -0.019703577   0.207666903  -0.574542752  -0.018492318   0.000007995  -0.000003740

    5    2.2  0.5 -0.5  -0.575944833   0.000910871  -0.574893599  -0.054550791  -0.018527867   0.575647224   0.000030968   0.000065453
                         0.000001469  -0.000001111   0.000005387   0.000001631  -0.000000000   0.000000000   0.000000452  -0.000000231

    6    3.2  0.5 -0.5   0.000001469  -0.000001111   0.000005387   0.000001631  -0.000000000  -0.000000000   0.000000489  -0.000000257
                        -0.212102425   0.000336172   0.783995213   0.074390494  -0.018528835   0.575677292   0.000005214   0.000010800

    7    1.2  1.5  1.5   0.000503076   0.006209790   0.000144132  -0.002909804  -0.000015453   0.000455929   0.201980543  -0.102173216
                        -0.001551212  -0.002062747   0.002715951  -0.024248803   0.000033353  -0.001431568  -0.397950132   0.167813194

    8    2.2  1.5  1.5  -0.000055399  -0.000672714  -0.000015375   0.000315246   0.000001701  -0.000050223  -0.032409763   0.016613700
                        -0.014288744   0.000246337   0.003547310   0.002991393   0.000426578  -0.013210627  -0.050491319  -0.211008371

    9    3.2  1.5  1.5  -0.014365484   0.000238519   0.003817725   0.000260652   0.000427388  -0.013279477   0.048053281   0.089634643
                         0.000000782  -0.000071757   0.000079836  -0.000843903  -0.000000468   0.000000812  -0.023991069   0.012019109

   10    4.2  1.5  1.5   0.000006082  -0.004272206   0.000594541  -0.006301772   0.022076086   0.000723374   0.207946984  -0.102339604
                        -0.000021544  -0.012845118  -0.000070974   0.000751553  -0.001351916  -0.000044732   0.109551708  -0.053935965

   11    5.2  1.5  1.5  -0.000000398  -0.002010898  -0.001271186   0.013389023   0.018639008   0.000602723  -0.190645958   0.091602557
                        -0.000010880  -0.006057349   0.000151800  -0.001596357  -0.001133741  -0.000037783  -0.100401228   0.048375570

   12    6.2  1.5  1.5  -0.000606256  -0.000407716   0.000162110   0.000002368  -0.000028408  -0.000606715   0.007449340   0.002499807
                         0.014417439   0.000110669  -0.003811261  -0.000476177  -0.001321812   0.014377328  -0.005848474  -0.001566082

   13    7.2  1.5  1.5   0.014292092   0.001802712  -0.003802044  -0.000297193  -0.000248554   0.014285715  -0.061882211  -0.117482657
                         0.000657541  -0.000594158  -0.000222595   0.000489657   0.003810038   0.000781231   0.008813062  -0.004892344

   14    8.2  1.5  1.5   0.001928920  -0.013472987  -0.000476042  -0.000492425  -0.001795776   0.001893052   0.010516667  -0.026054950
                        -0.000340515   0.004480892   0.000447662  -0.003738191  -0.028315750  -0.001259044  -0.035055343   0.018636998

   15    1.2  1.5  0.5  -0.008190037  -0.000266907   0.002275010  -0.000777776   0.000355357   0.015152009  -0.053838821  -0.186718404
                        -0.000003524  -0.002226775  -0.000072167   0.000760589   0.000208353   0.000006706   0.000638753  -0.000160901

   16    2.2  1.5  0.5   0.000876997  -0.006458957   0.000693282  -0.009819126   0.007678635  -0.001393053   0.270257902  -0.104997606
                        -0.000030485  -0.019266486  -0.000104149   0.001097813  -0.000495166  -0.000015938   0.139254205  -0.066160893

   17    3.2  1.5  0.5  -0.000303665  -0.012078682   0.000284762  -0.002195319  -0.000478709   0.000510651  -0.221019761   0.101839085
                         0.000006384   0.004018147   0.001752329  -0.018467753  -0.007540508  -0.000242700   0.413700391  -0.204222520

   18    4.2  1.5  0.5   0.000000209   0.000003353   0.000000788  -0.000000205  -0.000003458  -0.000000111  -0.003905201   0.002087721
                        -0.006371950   0.000009314   0.013473368   0.001265595   0.000577611  -0.018628300  -0.116581209  -0.239442337

   19    5.2  1.5  0.5  -0.000000847   0.000000810  -0.000003262   0.000000664  -0.000002530  -0.000000085  -0.003269659   0.001757115
                         0.013523346  -0.000021303   0.006359124   0.000600490  -0.000716051   0.022101346  -0.070238896  -0.148678422

   20    6.2  1.5  0.5   0.000112382  -0.001369202   0.001774278  -0.014144901   0.024995193   0.000804917  -0.005335362  -0.000550823
                        -0.000005053  -0.003601591  -0.000215446   0.002295033  -0.000483198  -0.000015485  -0.007143734   0.004647081

   21    7.2  1.5  0.5  -0.000505577   0.003586514  -0.001691340  -0.002504788  -0.000365455  -0.000013628  -0.042243253   0.045516317
                         0.000000432  -0.001377648   0.001309662  -0.013941427  -0.024657367  -0.000782251   0.098337577  -0.049645740

   22    8.2  1.5  0.5   0.003782269   0.000520274   0.014129437   0.001457238  -0.000806850  -0.000012172  -0.076718859  -0.138049747
                         0.000003588  -0.000077164   0.000184295  -0.001954338  -0.003319224  -0.000099332   0.008497016  -0.004310100

   23    1.2  1.5 -0.5   0.000449386   0.007770490  -0.000663096   0.000197843   0.000931938  -0.000229663  -0.086930854   0.025671934
                         0.002197230  -0.002587700   0.000862400   0.002267540   0.015123324  -0.000341971   0.165247739  -0.047328411

   24    2.2  1.5 -0.5  -0.000049449  -0.000841810   0.000073113  -0.000021287  -0.000100973   0.000025353   0.009562514  -0.002845052
                         0.020320265   0.000247808   0.009880035   0.000700738  -0.001389480  -0.007694542   0.123734875   0.304011469

   25    3.2  1.5 -0.5  -0.012729496   0.000290165   0.018597776   0.001773723  -0.000211064   0.007555668   0.228148050   0.469032006
                        -0.000001444  -0.000089763  -0.000007871   0.000075172   0.000524519   0.000017361   0.005148228  -0.002593315

   26    4.2  1.5 -0.5   0.000000242  -0.002010860  -0.001256659   0.013378589  -0.018593544  -0.000576322   0.212786325  -0.101307611
                        -0.000009896  -0.006046337   0.000150129  -0.001595303   0.001137410   0.000038723   0.109813349  -0.057820386

   27    5.2  1.5 -0.5   0.000007490   0.004268079  -0.000596340   0.006313960   0.022060097   0.000714869   0.132341612  -0.060609176
                         0.000019959   0.012832163   0.000070476  -0.000756555  -0.001349684  -0.000041200   0.067779483  -0.035647172

   28    6.2  1.5 -0.5  -0.000162771  -0.000108234  -0.000603236  -0.000003744   0.000033696  -0.001044014  -0.004367715  -0.003831347
                         0.003849634   0.000030667   0.014317175   0.001787307   0.000804360  -0.024978054  -0.001679830  -0.008051075

   29    7.2  1.5 -0.5   0.003837992   0.000479883   0.014139982   0.001100080  -0.000781624   0.024633669   0.065142866   0.106689741
                         0.000175543  -0.000159124   0.000835618  -0.001834576   0.000034165  -0.001140908  -0.017112615   0.008489436

   30    8.2  1.5 -0.5   0.000518042  -0.003587899   0.001767949   0.001856802  -0.000099890   0.003362300  -0.060564575   0.043293165
                        -0.000090950   0.001196895  -0.001678492   0.014008113  -0.000006084   0.000602659   0.124129939  -0.063903712

   31    1.2  1.5 -1.5  -0.006543425   0.000966857  -0.024422758  -0.002713901   0.001401055   0.000032347   0.196095865   0.446220553
                         0.000002131   0.001313214  -0.000016748   0.000178621  -0.000542495  -0.000017461  -0.012126264   0.006904056

   32    2.2  1.5 -1.5   0.000716076   0.004456227   0.003007674  -0.003520511   0.013189041   0.000425886  -0.194407356   0.029551272
                         0.000021478   0.013576204  -0.000041341   0.000435489  -0.000756566  -0.000024351  -0.083703811   0.052215787

   33    3.2  1.5 -1.5  -0.000248976  -0.013631789  -0.000807083  -0.000531530   0.000810089   0.000025631  -0.031167498   0.043631596
                         0.000007174   0.004532269   0.000358787  -0.003781385   0.013254745   0.000426619   0.084896497  -0.031320488

   34    4.2  1.5 -1.5   0.000000675   0.000012569  -0.000000260   0.000000044   0.000000476  -0.000001336   0.000012246   0.000062420
                        -0.013536942   0.000018524  -0.006346429  -0.000598763  -0.000724755   0.022117443  -0.115682681  -0.235039403

   35    5.2  1.5 -1.5  -0.000003230   0.000003056   0.000000977  -0.000000143   0.000000908   0.000006550   0.000076035  -0.000088952
                        -0.006382412   0.000010450   0.013483853   0.001280217  -0.000603905   0.018673455   0.103591595   0.215467585

   36    6.2  1.5 -1.5   0.000421807  -0.005124688  -0.000472544   0.003765221  -0.014313449  -0.001321080  -0.002551115   0.008647493
                        -0.000023640  -0.013489540   0.000058761  -0.000612459   0.001483522   0.000052361   0.001481033  -0.003862407

   37    7.2  1.5 -1.5  -0.001898096   0.013354414   0.000451003   0.000671426  -0.001652117   0.003787750   0.050458379  -0.036653905
                         0.000005041  -0.005133799  -0.000353107   0.003748904  -0.014211350  -0.000480747  -0.106207636   0.050631704

   38    8.2  1.5 -1.5   0.014198584   0.001937820  -0.003770202  -0.000388117   0.001141097  -0.028372566   0.028636765   0.035914540
                         0.000000576  -0.000285551  -0.000046123   0.000525721  -0.001966402  -0.000063348  -0.014357362   0.007044374


   Nr   State  S   Sz        9            10            11            12            13            14            15            16

    1    1.2  0.5  0.5   0.000001364   0.000008733   0.000016955   0.000002995  -0.000033542   0.000011127  -0.000000680  -0.000035643
                        -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000

    2    2.2  0.5  0.5   0.000018594  -0.000003088  -0.000013527   0.000076122   0.000005522   0.000016157   0.000106029  -0.000002073
                        -0.000022800   0.000003401   0.000016367  -0.000093886  -0.000000970  -0.000002823  -0.000084509   0.000001681

    3    3.2  0.5  0.5  -0.000013470   0.000001873  -0.000002371   0.000014518  -0.000006802  -0.000020563  -0.000070606  -0.000000019
                        -0.000011347   0.000001853  -0.000002447   0.000011760  -0.000040302  -0.000121455  -0.000086700   0.000001608

    4    1.2  0.5 -0.5  -0.000005575   0.000000871   0.000001885  -0.000010671  -0.000010965  -0.000033055  -0.000027702   0.000000528
                         0.000006722  -0.000001050  -0.000002328   0.000013175   0.000001889   0.000005695   0.000022429  -0.000000428

    5    2.2  0.5 -0.5   0.000004589   0.000029420   0.000120869   0.000021232  -0.000016402   0.000005607  -0.000002669  -0.000135583
                        -0.000000206   0.000000243  -0.000000059  -0.000000210  -0.000000039   0.000000018  -0.000000002   0.000001040

    6    3.2  0.5 -0.5   0.000000231   0.000000135  -0.000000000  -0.000000410  -0.000000355   0.000000139  -0.000001026   0.000000317
                         0.000002624   0.000017612  -0.000018683  -0.000003382  -0.000123183   0.000040872  -0.000001238  -0.000111813

    7    1.2  1.5  1.5  -0.012148974  -0.022962548  -0.012009239   0.133256005  -0.000004442  -0.000013096   0.000003514  -0.000000020
                         0.001925451  -0.043980161   0.078223431  -0.151481820   0.000000752   0.000002224  -0.000002603   0.000000186

    8    2.2  1.5  1.5  -0.003609717  -0.000394739   0.001307514  -0.005639269   0.000000454   0.000001427  -0.000000424  -0.000000004
                        -0.051390686  -0.340216156   0.463477631   0.101508738   0.000000110  -0.000000308   0.000000313  -0.000000423

    9    3.2  1.5  1.5   0.088534338   0.576630990  -0.201778796  -0.030342992   0.000002807  -0.000001426   0.000000077  -0.000001721
                         0.000395463  -0.004563094   0.001672484   0.001222476   0.000000015   0.000000077  -0.000000110   0.000000058

   10    4.2  1.5  1.5  -0.060101342   0.013560327  -0.000793118   0.008619938   0.000177782   0.000235090   0.394512098  -0.007215698
                        -0.051553966   0.005088554   0.001566241   0.007807298  -0.011638499  -0.035756462   0.494441090  -0.009804102

   11    5.2  1.5  1.5  -0.043699891   0.004684264   0.025287637  -0.143934164   0.014767654   0.045175354   0.165537213  -0.000141414
                        -0.035437153   0.006975622   0.019160145  -0.117055163   0.093873048   0.281970116   0.204027326  -0.003735489

   12    6.2  1.5  1.5  -0.003791079   0.004526668  -0.012980116  -0.006434478   0.013529357  -0.003412587  -0.004444893  -0.004155063
                         0.054427838   0.334480257   0.027075663   0.008858728  -0.042669003   0.014273701   0.000406834  -0.114995987

   13    7.2  1.5  1.5   0.003027416  -0.045586275   0.299851708   0.064198865  -0.330578888   0.104406638   0.070690554   0.032956759
                        -0.003412316   0.017687600   0.003609569  -0.015632535  -0.003625007   0.001731825  -0.045568791  -0.010077594

   14    8.2  1.5  1.5  -0.062319528   0.002206820   0.054621642  -0.061321672  -0.035605657   0.044887811  -0.473802420   0.014006413
                         0.072709413  -0.021287441  -0.015931439   0.084691502   0.000015631  -0.003330232   0.379495035  -0.000809143

   15    1.2  1.5  0.5   0.076692358   0.401043341   0.455479888   0.118946994  -0.000005158   0.000002246  -0.000000775  -0.000012723
                         0.027456363  -0.005819054  -0.003876060   0.026046395   0.000000051   0.000000067  -0.000001253   0.000000099

   16    2.2  1.5  0.5   0.141365293  -0.065423405  -0.106202532   0.309467444   0.000000624  -0.000000031  -0.000007794   0.000001544
                         0.120643150  -0.019617955  -0.044717926   0.258541844   0.000000456   0.000001444  -0.000009762   0.000000183

   17    3.2  1.5  0.5   0.140032340  -0.001160125   0.004129228   0.034240983  -0.000004513  -0.000012988  -0.000008279  -0.000000294
                        -0.161325116   0.034277432   0.008263780  -0.041073191   0.000000723   0.000002185   0.000006773   0.000000063

   18    4.2  1.5  0.5  -0.004629766  -0.000250773  -0.000429249   0.004423671   0.002562801  -0.001569842   0.009590169  -0.001668539
                        -0.014106569  -0.101314669   0.117703609   0.022666484  -0.175088584   0.057930335  -0.012134235  -0.206709421

   19    5.2  1.5  0.5  -0.001243046  -0.001041376   0.000106771   0.002643071   0.000152387  -0.000191141   0.001123087  -0.005885284
                        -0.032398664  -0.212115811  -0.045644046  -0.007694440   0.589015846  -0.194455579  -0.001679188  -0.016256933

   20    6.2  1.5  0.5   0.103183198  -0.011239354  -0.032661473   0.138698568   0.000070139   0.001825406  -0.177671738   0.008226683
                         0.093270588  -0.013449024  -0.022571234   0.120384649  -0.027782376  -0.085320421  -0.211879677   0.004375606

   21    7.2  1.5  0.5   0.090087107  -0.042673407   0.016472861   0.096237430  -0.182803721  -0.554350988   0.100156093   0.003158246
                        -0.102993997   0.019948237   0.017615111  -0.099252024   0.028720342   0.085674040  -0.092395613   0.000495397

   22    8.2  1.5  0.5   0.044537368   0.221695700  -0.258805894  -0.036209810  -0.029796380  -0.073763463   0.023722025  -0.038789786
                        -0.014615640   0.000410862   0.003694316  -0.014651022   0.000457205   0.015841632   0.000566845  -0.002155106

   23    1.2  1.5 -0.5   0.260499206  -0.027825647  -0.054626692   0.289696306   0.000002202   0.000005092   0.000009950   0.000000186
                        -0.304975060   0.076559147   0.108824292  -0.351501069  -0.000000448  -0.000000826  -0.000007929   0.000001461

   24    2.2  1.5 -0.5  -0.026665069   0.002615550   0.006123249  -0.032096054  -0.000000276  -0.000000538  -0.000001085   0.000000086
                         0.062881318   0.185828077   0.403207750   0.110673004  -0.000001418   0.000000555   0.000001114   0.000012491

   25    3.2  1.5 -0.5  -0.027124527  -0.213569266  -0.053468503  -0.003822569  -0.000013170   0.000004570   0.000000268  -0.000010696
                        -0.020989241   0.004797680   0.000755769  -0.008410027   0.000000052  -0.000000053  -0.000000136  -0.000000054

   26    4.2  1.5 -0.5   0.077823528  -0.007902491   0.014829182  -0.091734363  -0.011382023  -0.032250809  -0.128777875   0.015089034
                         0.064870821  -0.012569037   0.017704059  -0.073750460  -0.056822862  -0.172111781  -0.161702898   0.003395890

   27    5.2  1.5 -0.5   0.162604336  -0.024144258  -0.007642715   0.035535917   0.032824826   0.099848462  -0.005655894   0.001929507
                         0.136213185  -0.021639625  -0.002789113   0.028645924   0.191665175   0.580491150  -0.016338153   0.000598336

   28    6.2  1.5 -0.5   0.003176904   0.005921314   0.006249062  -0.003018034   0.016283962  -0.004785800  -0.003640303  -0.004756985
                         0.017236781   0.138964430   0.183550281   0.039586916   0.083771947  -0.027367162   0.008577438   0.276473535

   29    7.2  1.5 -0.5  -0.042596573  -0.136786512  -0.137698934  -0.003320001  -0.560848727   0.185025934  -0.002142830   0.135981702
                         0.020111783   0.003591717   0.012313045  -0.023887756   0.009683165  -0.002731610   0.002372386   0.008784596

   30    8.2  1.5 -0.5   0.141211032  -0.039681908   0.011405975  -0.165766183  -0.075382133   0.029441456   0.028790992   0.018079879
                        -0.170905226   0.024950757  -0.037359156   0.198785592  -0.003088664  -0.004608035  -0.026083921  -0.015367947

   31    1.2  1.5 -1.5  -0.019193322  -0.009237780   0.201585169   0.068343999   0.000013283  -0.000004505  -0.000000132  -0.000004369
                        -0.045750951   0.008122092  -0.008205106   0.039902691  -0.000000032   0.000000013  -0.000000132   0.000000188

   32    2.2  1.5 -1.5  -0.261618146   0.037251892  -0.082429027   0.359332567  -0.000001459   0.000000429   0.000000263   0.000000527
                        -0.217492837   0.035585520  -0.059508659   0.292734233  -0.000000061  -0.000000185   0.000000332  -0.000000023

   33    3.2  1.5 -1.5  -0.371625049   0.056214627  -0.020048183   0.128301557   0.000001418   0.000002763  -0.000001374  -0.000000129
                         0.440929636  -0.068398838   0.022809251  -0.155743990  -0.000000166  -0.000000492   0.000001038  -0.000000037

   34    4.2  1.5 -1.5  -0.004739967   0.001314147  -0.000641344   0.001716280  -0.006302138   0.002151098   0.000561378   0.004521910
                         0.013686072   0.079172317  -0.011612317   0.000369501  -0.035197483   0.011439362   0.012160245   0.632527738

   35    5.2  1.5 -1.5   0.002378889  -0.000620791   0.000366467  -0.001027519   0.003351188  -0.001383777   0.002240698  -0.000267319
                         0.008058692   0.056259105   0.185523099   0.031709934   0.285546368  -0.095017461   0.002992179   0.262734936

   36    6.2  1.5 -1.5   0.254565365  -0.044314199  -0.010933806   0.029209577   0.005786327   0.020576976   0.069133470   0.003710542
                         0.217011539  -0.031827874  -0.000575733   0.006955251   0.013487131   0.039752678   0.091988610  -0.002480820

   37    7.2  1.5 -1.5   0.042716054   0.004559175   0.052555117  -0.185925250  -0.102596982  -0.325164547   0.031955194  -0.083614916
                        -0.023797024  -0.000151881  -0.040047846   0.235278297   0.019432051   0.059695557  -0.012906251   0.009067264

   38    8.2  1.5 -1.5  -0.017794106  -0.095749540  -0.104407975  -0.046759372  -0.044801569  -0.035091435   0.011394838   0.607037837
                        -0.011890963   0.001551775  -0.005654454   0.032417521   0.004338824   0.006029454  -0.008184860  -0.003205899


   Nr   State  S   Sz       17            18            19            20            21            22            23            24

    1    1.2  0.5  0.5   0.000006941   0.000010553   0.000001736  -0.000011149  -0.002504256   0.000361482  -0.008978878   0.000086671
                        -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000

    2    2.2  0.5  0.5  -0.000025509   0.000016834  -0.000056398  -0.000009055   0.000338109   0.002126839  -0.000024261  -0.001614776
                        -0.000051441   0.000032733   0.000032896   0.000003961  -0.000882094  -0.006011017  -0.000058368  -0.006463513

    3    3.2  0.5  0.5  -0.000080486   0.000048458   0.000011044   0.000001785   0.001216187   0.008325953  -0.000025256  -0.002201667
                         0.000036751  -0.000024453   0.000018074   0.000002732   0.000456444   0.002947550  -0.000003329   0.000549977

    4    1.2  0.5 -0.5   0.000004559  -0.000002999   0.000009793   0.000001525  -0.000120787  -0.000836780  -0.000021007  -0.002176239
                         0.000009517  -0.000006260  -0.000005330  -0.000000830   0.000340705   0.002360317  -0.000084086  -0.008711156

    5    2.2  0.5 -0.5   0.000036793   0.000057413   0.000009847  -0.000065262  -0.006376187   0.000944370   0.006662169  -0.000062508
                         0.000001041   0.000000783  -0.000000850  -0.000001934  -0.000003947  -0.000023929   0.000000047  -0.000009391

    6    3.2  0.5 -0.5  -0.000001119   0.000001626  -0.000000261   0.000001060  -0.000003929  -0.000023828   0.000000046  -0.000009352
                         0.000054267   0.000088464   0.000003253  -0.000021155   0.008832301  -0.001298802   0.002269320  -0.000023696

    7    1.2  1.5  1.5   0.000000721  -0.000000549  -0.000006749  -0.000001003  -0.029330430  -0.210394146   0.013811508   0.043240365
                         0.000002526  -0.000000828   0.000003882   0.000000361   0.075704363   0.594597496  -0.038447220   0.173942748

    8    2.2  1.5  1.5  -0.000000172   0.000000118   0.000000739   0.000000194   0.003170887   0.022792788  -0.001519341  -0.004684239
                         0.000001676   0.000003415  -0.000000416  -0.000000115  -0.111699019  -0.049474346  -0.367445631  -0.015256445

    9    3.2  1.5  1.5   0.000000687   0.000000976   0.000000155  -0.000002791  -0.103966642   0.007549605  -0.369192241   0.005070681
                         0.000000118   0.000000028   0.000000050  -0.000000091   0.003021874   0.020603205   0.000069650   0.006030248

   10    4.2  1.5  1.5  -0.026200027   0.003278057   0.066989152  -0.004656747  -0.013099170  -0.088515103  -0.002078169  -0.202659606
                         0.011028788  -0.007267229   0.108911816   0.017532492  -0.005088931  -0.031309643   0.000667774   0.050640751

   11    5.2  1.5  1.5   0.311062269  -0.185206135  -0.124031109  -0.010059581   0.028424796   0.194817924  -0.001020039  -0.092109270
                        -0.146164956   0.096994272  -0.206694905  -0.032827190   0.010644635   0.068988697   0.000051524   0.022958023

   12    6.2  1.5  1.5   0.006441261  -0.022554726   0.017751707  -0.018694574   0.002671071   0.000253553   0.009282763   0.001482546
                        -0.160128175  -0.300381876   0.063747161  -0.454295499  -0.061689899   0.007132606  -0.220528088   0.008566608

   13    7.2  1.5  1.5   0.021960357   0.085238490  -0.069661271   0.449347738  -0.061283462   0.006071045  -0.218733432  -0.004862768
                        -0.048346155  -0.003875833   0.022688721  -0.009547399  -0.001683276   0.008181530  -0.010352631  -0.028651343

   14    8.2  1.5  1.5   0.136351145  -0.076732160   0.038515518   0.069213141  -0.005364436   0.021611871  -0.029332135   0.053335424
                         0.281944738  -0.166675213  -0.032477444   0.003003846  -0.006804949  -0.057621716   0.007367384   0.212220833

   15    1.2  1.5  0.5   0.000004990   0.000009060   0.000001235  -0.000007590  -0.054490868   0.039120190  -0.211413350   0.060169012
                        -0.000000004   0.000000138   0.000000186  -0.000000205  -0.000845664  -0.006806900  -0.000068185  -0.003108466

   16    2.2  1.5  0.5  -0.000003444   0.000000967   0.000001533   0.000001114   0.040368324   0.229712473   0.027706502   0.511233675
                         0.000001464  -0.000000983   0.000002835   0.000000483   0.013539018   0.083507847  -0.001659615  -0.129032248

   17    3.2  1.5  0.5   0.000004727  -0.000002721   0.000001474  -0.000000052  -0.026863303  -0.161282228  -0.007703306  -0.078115500
                         0.000010050  -0.000005951  -0.000000968  -0.000000156   0.066553647   0.456285468  -0.003212220  -0.312842110

   18    4.2  1.5  0.5   0.010738947  -0.014143795   0.002931582  -0.010748179  -0.000063376  -0.000443039  -0.000002215  -0.000213815
                        -0.256292972  -0.444246614   0.030862442  -0.198332654   0.206657592  -0.030535928   0.094934713  -0.001010587

   19    5.2  1.5  0.5  -0.005086085  -0.005970387   0.005950308   0.010128423  -0.000117691  -0.000402238   0.000014968  -0.000171190
                         0.036841746   0.059399587   0.024105552  -0.168838893   0.093881274  -0.014029044  -0.208907933   0.001970143

   20    6.2  1.5  0.5   0.426687652  -0.239723927  -0.157557517   0.011602354  -0.024031847  -0.209749587  -0.002314222  -0.059562724
                        -0.202445197   0.133980414  -0.218357724  -0.035792445  -0.010097223  -0.064155187   0.000402524   0.017581708

   21    7.2  1.5  0.5   0.056375317  -0.038369717   0.232547225  -0.034620950  -0.019338397   0.067097158   0.007912640  -0.017738077
                         0.071627526  -0.037162052  -0.141754274  -0.009092408  -0.030580812  -0.207312027  -0.000480888  -0.059044828

   22    8.2  1.5  0.5   0.003408797   0.022442889  -0.037818732   0.526891782   0.218717261  -0.017113368  -0.061609297  -0.000040670
                         0.011763892  -0.020917881   0.006957942   0.010400786  -0.003702885  -0.025395388  -0.000131017  -0.008243241

   23    1.2  1.5 -0.5  -0.000004038   0.000002152  -0.000006569  -0.000000996   0.019487399   0.017410694   0.011567572   0.051307074
                        -0.000008112   0.000004502   0.000003808   0.000000754  -0.034597173  -0.051641432   0.059128367   0.205093133

   24    2.2  1.5 -0.5   0.000000469  -0.000000167   0.000000747   0.000000009  -0.001951156  -0.000727973  -0.001275585  -0.005105182
                        -0.000001297  -0.000003739  -0.000000956   0.000003223  -0.244412712   0.042572017   0.527264227  -0.027282626

   25    3.2  1.5 -0.5   0.000006543   0.000011106   0.000000029  -0.000001757  -0.483950597   0.071704488  -0.322447229   0.004983516
                        -0.000000117  -0.000000079   0.000000161  -0.000000146  -0.000452573  -0.003080816   0.000038193   0.006695061

   26    4.2  1.5 -0.5   0.406762416  -0.226503300   0.085369664   0.012178444   0.028632755   0.194800572  -0.001032277  -0.092103518
                        -0.179163160   0.120406264   0.179341534   0.028509122   0.010620946   0.068993490   0.000037500   0.023011776

   27    5.2  1.5 -0.5  -0.050991365   0.031029182   0.089607331   0.006296937   0.013088283   0.088524523   0.001869907   0.202675319
                         0.031045726  -0.020502988   0.143456205   0.024017334   0.005066827   0.031258860  -0.000643595  -0.050648198

   28    6.2  1.5 -0.5  -0.017269602   0.001754357   0.027300902   0.034006140  -0.009618696  -0.001486781   0.002621071   0.000170383
                         0.274080413   0.472274637   0.025891592  -0.267110557   0.219130687  -0.026024471  -0.062048083   0.002342780

   29    7.2  1.5 -0.5   0.050091400   0.088953333  -0.026062466  -0.272019239   0.217816271  -0.022361305  -0.061583528  -0.001451263
                         0.018550068   0.019899327   0.024536300  -0.013342423   0.006031329  -0.028445241  -0.002898301  -0.007793264

   30    8.2  1.5 -0.5   0.009169632   0.012082120   0.457818196   0.036543856   0.018217405  -0.076572932  -0.008007310   0.015059550
                        -0.029277276  -0.002007831  -0.261008861  -0.011967290   0.024615427   0.204908609   0.001958483   0.059740544

   31    1.2  1.5 -1.5  -0.000000983  -0.000002590   0.000001054  -0.000007783   0.630723184  -0.081153615  -0.179236618  -0.033953305
                        -0.000000137   0.000000441  -0.000000162  -0.000000184   0.000379514   0.002348489   0.000207983   0.022718266

   32    2.2  1.5 -1.5   0.000003131  -0.000001437  -0.000000225   0.000000848  -0.054246731   0.106338350   0.015936879  -0.356857789
                        -0.000001369   0.000000879  -0.000000009   0.000000013   0.004951197   0.034334832   0.000846816   0.087584921

   33    3.2  1.5 -1.5   0.000000447  -0.000000403   0.000002409   0.000000112   0.016896332  -0.037587927  -0.007079442  -0.089414717
                         0.000000868  -0.000000569  -0.000001414  -0.000000118   0.014000092   0.096981143  -0.003457919  -0.358200955

   34    4.2  1.5 -1.5  -0.005137933   0.001372154   0.012471375   0.006775447   0.000066680   0.000419433  -0.000011551   0.000144170
                         0.006095890   0.028393534   0.013173394  -0.127684862  -0.093889364   0.014046692   0.208890885  -0.002178055

   35    5.2  1.5 -1.5   0.007465190  -0.002560421  -0.006856858  -0.010133806  -0.000073692  -0.000534855   0.000051329  -0.000197243
                        -0.208934136  -0.343682082  -0.033642282   0.240839793   0.206672345  -0.030347837   0.094927266  -0.001002112

   36    6.2  1.5 -1.5  -0.280648906   0.141631914  -0.200749578  -0.014881427   0.006637918   0.059036628  -0.008670507  -0.211702732
                         0.109426589  -0.074986154  -0.407962616  -0.064477646   0.002622291   0.018095714   0.000637974   0.062456070

   37    7.2  1.5 -1.5   0.033328391   0.034114795  -0.399244115  -0.072032317   0.005682676  -0.018890926   0.028975653  -0.063059061
                         0.078548332  -0.040691386   0.206418698   0.013372209   0.008455898   0.058323487  -0.002226541  -0.209702279

   38    8.2  1.5 -1.5  -0.183468240  -0.313182225  -0.059356727   0.049355120  -0.061531213   0.004621327  -0.218820141   0.000038389
                         0.002803031  -0.001167873   0.035724798   0.010114418   0.001115768   0.007329928  -0.000308493  -0.030243197


   Nr   State  S   Sz       25            26            27            28            29            30            31            32

    1    1.2  0.5  0.5  -0.000004658   0.000323567   0.000000520   0.000003434  -0.000000035   0.000001906  -0.000000072   0.000000030
                         0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000

    2    2.2  0.5  0.5   0.000276948   0.000003988   0.000001076  -0.000000320   0.000018355   0.000000621   0.000000022  -0.000000022
                        -0.000196475  -0.000002828   0.000023103  -0.000003646   0.000024592   0.000000650  -0.000000537   0.000002804

    3    3.2  0.5  0.5  -0.000205749  -0.000002962  -0.000005913   0.000000954  -0.000020173  -0.000001106  -0.000000184   0.000039220
                        -0.000290021  -0.000004176   0.000000286  -0.000000331   0.000014355   0.000000616  -0.000001639   0.000005836

    4    1.2  0.5 -0.5  -0.000263902  -0.000003799  -0.000000146   0.000000022   0.000001127   0.000000020   0.000000014   0.000000033
                         0.000187220   0.000002695  -0.000003431   0.000000519   0.000001538   0.000000028  -0.000000027  -0.000000065

    5    2.2  0.5 -0.5  -0.000004889   0.000339563   0.000003656   0.000023128   0.000000891  -0.000030686  -0.000002511  -0.000000489
                         0.000000001   0.000000000   0.000000165   0.000000094   0.000000117  -0.000000269  -0.000001247  -0.000000223

    6    3.2  0.5 -0.5  -0.000000000   0.000000000   0.000000290   0.000000035  -0.000000157   0.000000346   0.000012507  -0.000001379
                        -0.000005119   0.000355591  -0.000000967  -0.000005920  -0.000001257   0.000024757  -0.000037628  -0.000000905

    7    1.2  1.5  1.5  -0.000228754   0.015813516   0.012105478  -0.004156875  -0.032216919   0.012796739   0.011882377  -0.024622687
                         0.000715421  -0.049633870   0.279447149  -0.062020098  -0.048961597   0.028709402  -0.022337000   0.163759610

    8    2.2  1.5  1.5   0.000025693  -0.001741841   0.001180873   0.001152584   0.003255744  -0.000949327   0.061005446  -0.006151764
                         0.006596136  -0.458158151  -0.057934787  -0.167879855  -0.006263211   0.289721489  -0.191334206  -0.020247494

    9    3.2  1.5  1.5   0.006630808  -0.460563022   0.013975262   0.079681970   0.009681717  -0.387138142   0.007067831  -0.006032797
                        -0.000000881   0.000028547   0.011607520  -0.000577892  -0.000691683  -0.002423929  -0.002661410   0.002597527

   10    4.2  1.5  1.5   0.076681353   0.001026849   0.403469245  -0.061220398  -0.115754732  -0.002342295   0.001811720   0.036635128
                         0.108072992   0.001563445  -0.017317782   0.002751390   0.083920941   0.001030400   0.000512973   0.006957148

   11    5.2  1.5  1.5   0.064655700   0.000913882  -0.327477632   0.050554635   0.015071904   0.004580056   0.005282315  -0.356663406
                         0.091205295   0.001320897   0.014503885  -0.001215010  -0.004454185  -0.000428750   0.013240457  -0.050583479

   12    6.2  1.5  1.5   0.004205662   0.003698591  -0.000758026  -0.010412859   0.003535331   0.003231599  -0.085725661   0.001364427
                        -0.001740348  -0.086620574  -0.002650336   0.014925071  -0.008008597   0.500448362   0.179536898   0.020046431

   13    7.2  1.5  1.5  -0.017782066  -0.086094209   0.042827946   0.274313843   0.004519924  -0.200333408   0.383934617   0.014278973
                         0.013377267  -0.003762533   0.016286963  -0.000786857  -0.012566112   0.026356195   0.138848314  -0.041251286

   14    8.2  1.5  1.5   0.140234363  -0.009696336   0.001785079   0.038752020   0.062376273  -0.026606754   0.063436584  -0.025720287
                        -0.099397247   0.000656961  -0.095807825   0.013992655   0.078047366  -0.012930863   0.008827270   0.197739109

   15    1.2  1.5  0.5  -0.016746586   0.528589589  -0.041292805  -0.158740028  -0.006532880  -0.165249698  -0.319193018  -0.046748770
                        -0.028654363  -0.000412443   0.010860285  -0.001345761   0.000904517  -0.004812360  -0.109700052   0.004173009

   16    2.2  1.5  0.5  -0.153050034  -0.059492231  -0.161521539   0.043039993  -0.023648500   0.021405113   0.039806261  -0.308402985
                        -0.215161103  -0.003097935   0.006315497  -0.000049403   0.023496916   0.000522417   0.024095164  -0.044278866

   17    3.2  1.5  0.5  -0.217131289   0.015247978  -0.014794318  -0.003205003   0.078846475  -0.004803664  -0.008466988  -0.002422983
                         0.153871994   0.002215100  -0.327216063   0.049758591   0.107375573   0.001102324  -0.006127233   0.026204664

   18    4.2  1.5  0.5   0.000101381   0.000001440  -0.002078472  -0.000860611  -0.000708541   0.001340730  -0.021730641   0.005439345
                        -0.001697216   0.111806907   0.068188456   0.438909710   0.008242263  -0.193290288   0.070839406   0.000040376

   19    5.2  1.5  0.5   0.000016150   0.000000265  -0.000836870  -0.001077655  -0.002166807   0.004763346   0.069302632  -0.003121361
                         0.001880056  -0.132516868   0.038492941   0.243106969   0.006068201  -0.293586592  -0.192139626  -0.010279350

   20    6.2  1.5  0.5   0.081627376   0.001175155  -0.054647030   0.013520443   0.102809548   0.011564534  -0.015732088   0.339056501
                         0.125948079   0.001812992  -0.007615033   0.000023330  -0.073362211  -0.000814975  -0.017624162   0.057002506

   21    7.2  1.5  0.5   0.125192349   0.001802213   0.003024325  -0.027287634  -0.090316904  -0.064728220   0.029996570   0.047817718
                        -0.080416836  -0.001225895   0.223468919  -0.033923791  -0.130482085   0.001542048   0.018471870  -0.239275746

   22    8.2  1.5  0.5   0.014453867   0.000209998   0.029939353   0.186681578  -0.031861371   0.470536555  -0.306996647  -0.006980405
                        -0.014686202  -0.000256374   0.027449651  -0.005155367  -0.014435006  -0.001773624  -0.097016887  -0.021917980

   23    1.2  1.5 -0.5   0.431357767  -0.002921204  -0.008082090  -0.009097872   0.101562395  -0.003132077   0.024837341  -0.046290681
                        -0.305512032  -0.033060358  -0.158539861   0.041716547   0.130444248  -0.005804030  -0.039824214   0.334328366

   24    2.2  1.5 -0.5  -0.046729524   0.000333175   0.001777426   0.000545793  -0.013074158   0.004973527   0.099785711  -0.003518951
                         0.036949619  -0.264042615   0.043003305   0.161644038  -0.016956361  -0.032963928  -0.295153910  -0.046397546

   25    3.2  1.5 -0.5   0.011154609   0.266125099   0.049577719   0.327549121   0.001950370   0.133215105   0.024473987   0.001642541
                        -0.010629308  -0.000136407  -0.005314063   0.000892669   0.004526186   0.000126037   0.009673638   0.010321576

   26    4.2  1.5 -0.5  -0.064691673  -0.001064717   0.438477660  -0.068038790   0.155113642   0.006229307  -0.002420671  -0.073017184
                        -0.091190854  -0.001325593  -0.019488863   0.004970781  -0.115337291  -0.005443589   0.004871186  -0.012606865

   27    5.2  1.5 -0.5   0.076676102   0.001074652   0.242842155  -0.038422733   0.233988575   0.003613733  -0.007761401   0.202726509
                         0.108080969   0.001542723  -0.011395085   0.002469905  -0.177384114  -0.005334702  -0.007427555   0.024949002

   28    6.2  1.5 -0.5  -0.000090560   0.006299591   0.000597169   0.009927603  -0.006178564   0.001598494  -0.102278502   0.008618729
                        -0.002158640   0.149954201   0.013507269   0.054274573  -0.009809587   0.126290386   0.328249455   0.021996072

   29    7.2  1.5 -0.5   0.002179208  -0.148637392  -0.035051413  -0.223395904   0.037017713  -0.158632893  -0.235077347  -0.002932456
                        -0.000042939   0.006849637  -0.025823187   0.006463287   0.053120705   0.004280516  -0.065406866  -0.035105625

   30    8.2  1.5 -0.5   0.000319616  -0.020286230   0.002772768  -0.028695657  -0.276708393  -0.030476725  -0.016402367  -0.052097996
                         0.000087592  -0.003614922   0.186732164  -0.028747303  -0.380578848  -0.017166408  -0.016127189   0.317718457

   31    1.2  1.5 -1.5  -0.041616314  -0.000600523   0.062140643   0.279709129   0.030721022   0.058535724  -0.157226218  -0.025295642
                        -0.031331626  -0.000451140   0.001520756   0.000233750  -0.006648690  -0.002955834  -0.051994261   0.000512817

   32    2.2  1.5 -1.5  -0.263675277  -0.003795650   0.167679650  -0.057832459   0.233125521   0.003127345   0.015286228  -0.198260475
                        -0.374682897  -0.005394692  -0.008277016   0.003638785  -0.172023061  -0.006328301   0.014633402  -0.031987928

   33    3.2  1.5 -1.5   0.375652984   0.005408615  -0.002804640   0.012190224  -0.230796442  -0.005165058  -0.005042227  -0.005566697
                        -0.266464132  -0.003835949  -0.079634693   0.013470000  -0.310829243  -0.008218045   0.004209244   0.005103843

   34    4.2  1.5 -1.5   0.000067127   0.000009163  -0.000150480  -0.000177379  -0.000553443   0.000733953   0.010339229  -0.000360597
                         0.001869297  -0.132513401   0.061282009   0.403840693  -0.002498353   0.142973226  -0.035827850   0.001848090

   35    5.2  1.5 -1.5   0.000018923  -0.000039136  -0.000931820   0.000591396   0.002361492  -0.005316455  -0.115957724   0.009427283
                         0.001606111  -0.111797871  -0.050560648  -0.327798128   0.003947669  -0.014789774   0.341059056   0.010692937

   36    6.2  1.5 -1.5  -0.053136308   0.004437136  -0.014469659  -0.002680121   0.405567263   0.004369890  -0.017269055   0.198899937
                        -0.068507928  -0.001014015   0.011036953  -0.000644853  -0.293213579  -0.007585530  -0.010271358   0.004604422

   37    7.2  1.5 -1.5   0.068041626  -0.022243353  -0.010856793   0.018090069  -0.097160468   0.007463936   0.043253280  -0.049525498
                        -0.052883898  -0.000621614  -0.274100043   0.042098071  -0.177166492  -0.011073686   0.005891643   0.405255315

   38    8.2  1.5 -1.5   0.008288484   0.171887999  -0.015624831  -0.095645723  -0.026157440  -0.099823538  -0.188038251  -0.020775668
                        -0.005074600  -0.000072655  -0.038123196   0.005849926  -0.013817196  -0.004177529  -0.066361923   0.060584590


   Nr   State  S   Sz       33            34            35            36            37            38

    1    1.2  0.5  0.5  -0.003800045  -0.008886606  -0.000073685  -0.036079665   0.000000355   0.040322463
                         0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000

    2    2.2  0.5  0.5   0.003972366  -0.001688553   0.015207023  -0.000033541   0.038434123  -0.000000337
                        -0.023913174   0.010221103  -0.021511046   0.000045045   0.011960937  -0.000000106

    3    3.2  0.5  0.5   0.032579892  -0.013927133  -0.007861000   0.000014942   0.011940316  -0.000000107
                         0.005410342  -0.002303478  -0.005556642   0.000008868  -0.038367869   0.000000337

    4    1.2  0.5 -0.5  -0.001454589   0.000622004   0.020826919  -0.000042535  -0.038501138   0.000000339
                         0.008766752  -0.003748793  -0.029461529   0.000060169  -0.011981791   0.000000105

    5    2.2  0.5 -0.5  -0.010359639  -0.024240866   0.000056144   0.026343475   0.000000353   0.040252277
                        -0.000007244   0.000004603  -0.000001386  -0.000000370  -0.000000001  -0.000000001

    6    3.2  0.5 -0.5  -0.000007228   0.000004589  -0.000001383  -0.000000367   0.000000002  -0.000000001
                         0.014116337   0.033026068   0.000017320   0.009626609   0.000000353   0.040182889

    7    1.2  1.5  1.5  -0.056561832   0.026273364  -0.058856171   0.007740638  -0.000070967  -0.006639862
                         0.342860799  -0.153491456   0.083222761  -0.024007037  -0.000021897   0.020840493

    8    2.2  1.5  1.5   0.006125948  -0.002849631   0.006375940  -0.000852403   0.000007687   0.000731418
                        -0.060554123  -0.038121206  -0.009470018  -0.219887668   0.000004087   0.192373401

    9    3.2  1.5  1.5  -0.025260473  -0.053564267  -0.002496957  -0.221052083  -0.000000763   0.193383009
                         0.012001234  -0.005125983   0.002893290   0.000007374  -0.000000770  -0.000012033

   10    4.2  1.5  1.5   0.147874057  -0.063102642   0.283581630  -0.000258537  -0.093362169  -0.000181973
                         0.024566498  -0.010436817   0.200450843  -0.000459679   0.300066149   0.000014746

   11    5.2  1.5  1.5  -0.315000252   0.134678652   0.133180327  -0.000189886  -0.078849407  -0.000039270
                        -0.052333340   0.022277210   0.094246651  -0.000203053   0.253052626   0.000016194

   12    6.2  1.5  1.5  -0.002099725  -0.003627534   0.006434091  -0.015555297   0.011755142   0.008632105
                         0.041648236   0.089923961  -0.008289160   0.369958255   0.003724970  -0.205469953

   13    7.2  1.5  1.5   0.040543729   0.089438469  -0.028177229   0.366770548  -0.052467061  -0.203674122
                        -0.010302046   0.009325780   0.040368247   0.016813923  -0.016674461  -0.009384294

   14    8.2  1.5  1.5  -0.009632418   0.018691998   0.211992964   0.049617230   0.388785763  -0.027801560
                         0.088328856  -0.040368247  -0.299802387  -0.008307144   0.120991740   0.004952871

   15    1.2  1.5  0.5   0.003034243  -0.038331077   0.023537271  -0.127026705  -0.007228161  -0.221842390
                        -0.006537104   0.002801959   0.025069333  -0.000052822   0.010342414  -0.000000091

   16    2.2  1.5  0.5   0.139074136  -0.055425977   0.255997650   0.013225005  -0.032573994   0.024032784
                         0.023888247  -0.010143680   0.180044552  -0.000385255   0.106089342  -0.000000925

   17    3.2  1.5  0.5  -0.044082298   0.017491762   0.113185876  -0.004625347   0.106415274  -0.007708836
                         0.262625693  -0.112270568  -0.160162667   0.000319190   0.033109831  -0.000000301

   18    4.2  1.5  0.5  -0.000019053  -0.000024593  -0.000045101   0.000008167   0.000310999   0.000000009
                        -0.136136191  -0.319304724  -0.000244488  -0.162979736   0.000067615   0.265321758

   19    5.2  1.5  0.5   0.000047722   0.000059656  -0.000007804  -0.000019688   0.000075522  -0.000000010
                        -0.064056191  -0.150075328   0.000737404   0.347081193  -0.000012652  -0.314357208

   20    6.2  1.5  0.5   0.333527981  -0.154650516   0.083426440   0.002792206  -0.119968025   0.000003301
                         0.041600399  -0.017734865   0.053882024  -0.000122461   0.335222337  -0.000003856

   21    7.2  1.5  0.5  -0.020447395   0.062589252  -0.052984999  -0.013153214   0.331712296  -0.000012907
                         0.335485122  -0.143035081   0.082753694  -0.000117091   0.120246721  -0.000162994

   22    8.2  1.5  0.5  -0.159862209  -0.330785514  -0.009457422   0.098323127   0.048480646   0.000073479
                         0.044002447  -0.018765252   0.009539983   0.000070875   0.006104995  -0.000106705

   23    1.2  1.5 -0.5   0.009038326   0.006945592  -0.073282794   0.006883990  -0.211822025   0.003828431
                        -0.037355470  -0.001923306   0.103756535   0.033691026  -0.065920222   0.012023101

   24    2.2  1.5 -0.5  -0.000934566  -0.000801954   0.007948696  -0.000755398   0.022946973  -0.000421712
                        -0.056338795  -0.141108542  -0.010576738   0.312970073   0.007142208   0.110976735

   25    3.2  1.5 -0.5  -0.113619478  -0.266299180  -0.002930613  -0.196120171  -0.007360725  -0.111447169
                        -0.001120965   0.000500323   0.003592662  -0.000029543  -0.002290388  -0.000006929

   26    4.2  1.5 -0.5  -0.314994217   0.134296996   0.133088882  -0.000173607   0.078840181  -0.000317043
                        -0.052289106   0.022302014   0.094073077  -0.000177958  -0.253337446  -0.000027852

   27    5.2  1.5 -0.5  -0.148061018   0.063200073  -0.283427039   0.000606646  -0.093411030  -0.000068351
                        -0.024505971   0.010437849  -0.200335889   0.000419293   0.300158014  -0.000034522

   28    6.2  1.5 -0.5   0.007818030   0.013553623   0.001711794  -0.004159376   0.000002006   0.014938114
                        -0.155467636  -0.335838960  -0.002209338   0.099226725   0.000004663   0.355729104

   29    7.2  1.5 -0.5  -0.151350772  -0.334307311  -0.007497055   0.098159576  -0.000060758  -0.352460422
                         0.038332656  -0.034741685   0.010808094   0.004503518   0.000151796   0.016247228

   30    8.2  1.5 -0.5   0.035631894  -0.069575754   0.056698966   0.013249332   0.000038453  -0.048104920
                        -0.329395748   0.150503673  -0.080328510  -0.002215699   0.000123719  -0.008576751

   31    1.2  1.5 -1.5   0.155721819   0.347494842  -0.024071666  -0.101931724   0.000147208  -0.000074268
                        -0.000795029   0.000321601  -0.007537254   0.000019931   0.021872179  -0.000000180

   32    2.2  1.5 -1.5   0.037140626  -0.060740142  -0.179061362   0.011413421  -0.057862000   0.000008554
                         0.009051002  -0.003868370  -0.127625789   0.000260156   0.183466753  -0.000001618

   33    3.2  1.5 -1.5  -0.003710726   0.015974090   0.127607920  -0.003803934  -0.184644523  -0.000000958
                         0.053680880  -0.022955382  -0.180499978   0.000368791  -0.057475113   0.000000509

   34    4.2  1.5 -1.5  -0.000032792   0.000030657  -0.000226120   0.000015058   0.000169372   0.000019347
                         0.063959906   0.149900796  -0.000476462  -0.347273784   0.000068154  -0.314254973

   35    5.2  1.5 -1.5   0.000067887  -0.000067242  -0.000056196  -0.000080782   0.000032684  -0.000093453
                        -0.136508640  -0.319317918  -0.000272267  -0.163154602   0.000027132  -0.265052546

   36    6.2  1.5 -1.5  -0.089304918   0.041430213   0.311075635   0.010482736   0.052813048   0.012331046
                        -0.011140440   0.004745714   0.200855737  -0.000468976  -0.198754111  -0.000063685

   37    7.2  1.5 -1.5   0.005439579  -0.016799432  -0.197987884  -0.049228703   0.197262908  -0.055051982
                        -0.089758681   0.038310640   0.309199193  -0.000293848   0.051561205   0.000330743

   38    8.2  1.5 -1.5   0.042883366   0.088714225  -0.035424808   0.367181815   0.025074050   0.407177321
                        -0.011832291   0.004955452   0.035720599  -0.000046477   0.012990369   0.000000745


 Composition of spin-orbit eigenvectors
 ======================================

   Nr   State  S   Sz       1        2        3        4        5        6        7        8        9       10

    1    1.2  0.5  0.5  62.108%   0.000%   4.374%   0.039%   0.034%  33.133%   0.000%   0.000%   0.000%   0.000%
    2    2.2  0.5  0.5   0.000%  33.171%   0.298%  33.050%  33.137%   0.034%   0.000%   0.000%   0.000%   0.000%
    3    3.2  0.5  0.5   0.000%   4.499%   0.553%  61.465%  33.140%   0.034%   0.000%   0.000%   0.000%   0.000%
    4    1.2  0.5 -0.5   0.000%  62.108%   0.039%   4.374%  33.133%   0.034%   0.000%   0.000%   0.000%   0.000%
    5    2.2  0.5 -0.5  33.171%   0.000%  33.050%   0.298%   0.034%  33.137%   0.000%   0.000%   0.000%   0.000%
    6    3.2  0.5 -0.5   4.499%   0.000%  61.465%   0.553%   0.034%  33.140%   0.000%   0.000%   0.000%   0.000%
    7    1.2  1.5  1.5   0.000%   0.004%   0.001%   0.060%   0.000%   0.000%  19.916%   3.860%   0.015%   0.246%
    8    2.2  1.5  1.5   0.020%   0.000%   0.001%   0.001%   0.000%   0.017%   0.360%   4.480%   0.265%  11.575%
    9    3.2  1.5  1.5   0.021%   0.000%   0.001%   0.000%   0.000%   0.018%   0.288%   0.818%   0.784%  33.252%
   10    4.2  1.5  1.5   0.000%   0.018%   0.000%   0.004%   0.049%   0.000%   5.524%   1.338%   0.627%   0.021%
   11    5.2  1.5  1.5   0.000%   0.004%   0.000%   0.018%   0.035%   0.000%   4.643%   1.073%   0.317%   0.007%
   12    6.2  1.5  1.5   0.021%   0.000%   0.001%   0.000%   0.000%   0.021%   0.009%   0.001%   0.298%  11.190%
   13    7.2  1.5  1.5   0.020%   0.000%   0.001%   0.000%   0.001%   0.020%   0.391%   1.383%   0.002%   0.239%
   14    8.2  1.5  1.5   0.000%   0.020%   0.000%   0.001%   0.081%   0.001%   0.134%   0.103%   0.917%   0.046%
   15    1.2  1.5  0.5   0.007%   0.001%   0.001%   0.000%   0.000%   0.023%   0.290%   3.486%   0.664%  16.087%
   16    2.2  1.5  0.5   0.000%   0.041%   0.000%   0.010%   0.006%   0.000%   9.243%   1.540%   3.454%   0.467%
   17    3.2  1.5  0.5   0.000%   0.016%   0.000%   0.035%   0.006%   0.000%  22.000%   5.208%   4.563%   0.118%
   18    4.2  1.5  0.5   0.004%   0.000%   0.018%   0.000%   0.000%   0.035%   1.361%   5.734%   0.022%   1.026%
   19    5.2  1.5  0.5   0.018%   0.000%   0.004%   0.000%   0.000%   0.049%   0.494%   2.211%   0.105%   4.499%
   20    6.2  1.5  0.5   0.000%   0.001%   0.000%   0.021%   0.062%   0.000%   0.008%   0.002%   1.935%   0.031%
   21    7.2  1.5  0.5   0.000%   0.001%   0.000%   0.020%   0.061%   0.000%   1.145%   0.454%   1.872%   0.222%
   22    8.2  1.5  0.5   0.001%   0.000%   0.020%   0.001%   0.001%   0.000%   0.596%   1.908%   0.220%   4.915%
   23    1.2  1.5 -0.5   0.001%   0.007%   0.000%   0.001%   0.023%   0.000%   3.486%   0.290%  16.087%   0.664%
   24    2.2  1.5 -0.5   0.041%   0.000%   0.010%   0.000%   0.000%   0.006%   1.540%   9.243%   0.467%   3.454%
   25    3.2  1.5 -0.5   0.016%   0.000%   0.035%   0.000%   0.000%   0.006%   5.208%  22.000%   0.118%   4.563%
   26    4.2  1.5 -0.5   0.000%   0.004%   0.000%   0.018%   0.035%   0.000%   5.734%   1.361%   1.026%   0.022%
   27    5.2  1.5 -0.5   0.000%   0.018%   0.000%   0.004%   0.049%   0.000%   2.211%   0.494%   4.499%   0.105%
   28    6.2  1.5 -0.5   0.001%   0.000%   0.021%   0.000%   0.000%   0.062%   0.002%   0.008%   0.031%   1.935%
   29    7.2  1.5 -0.5   0.001%   0.000%   0.020%   0.000%   0.000%   0.061%   0.454%   1.145%   0.222%   1.872%
   30    8.2  1.5 -0.5   0.000%   0.001%   0.001%   0.020%   0.000%   0.001%   1.908%   0.596%   4.915%   0.220%
   31    1.2  1.5 -1.5   0.004%   0.000%   0.060%   0.001%   0.000%   0.000%   3.860%  19.916%   0.246%   0.015%
   32    2.2  1.5 -1.5   0.000%   0.020%   0.001%   0.001%   0.017%   0.000%   4.480%   0.360%  11.575%   0.265%
   33    3.2  1.5 -1.5   0.000%   0.021%   0.000%   0.001%   0.018%   0.000%   0.818%   0.288%  33.252%   0.784%
   34    4.2  1.5 -1.5   0.018%   0.000%   0.004%   0.000%   0.000%   0.049%   1.338%   5.524%   0.021%   0.627%
   35    5.2  1.5 -1.5   0.004%   0.000%   0.018%   0.000%   0.000%   0.035%   1.073%   4.643%   0.007%   0.317%
   36    6.2  1.5 -1.5   0.000%   0.021%   0.000%   0.001%   0.021%   0.000%   0.001%   0.009%  11.190%   0.298%
   37    7.2  1.5 -1.5   0.000%   0.020%   0.000%   0.001%   0.020%   0.001%   1.383%   0.391%   0.239%   0.002%
   38    8.2  1.5 -1.5   0.020%   0.000%   0.001%   0.000%   0.001%   0.081%   0.103%   0.134%   0.046%   0.917%

   Nr   State  S   Sz      11       12       13       14       15       16       17       18       19       20

    1    1.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    2    2.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    3    3.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    4    1.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    5    2.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    6    3.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    7    1.2  1.5  1.5   0.626%   4.070%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    8    2.2  1.5  1.5  21.481%   1.034%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    9    3.2  1.5  1.5   4.072%   0.092%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   10    4.2  1.5  1.5   0.000%   0.014%   0.014%   0.128%  40.011%   0.015%   0.081%   0.006%   1.635%   0.033%
   11    5.2  1.5  1.5   0.101%   3.442%   0.903%   8.155%   6.903%   0.001%  11.812%   4.371%   5.811%   0.118%
   12    6.2  1.5  1.5   0.090%   0.012%   0.200%   0.022%   0.002%   1.324%   2.568%   9.074%   0.438%  20.673%
   13    7.2  1.5  1.5   8.992%   0.437%  10.930%   1.090%   0.707%   0.119%   0.282%   0.728%   0.537%  20.200%
   14    8.2  1.5  1.5   0.324%   1.093%   0.127%   0.203%  36.851%   0.020%   9.808%   3.367%   0.254%   0.480%
   15    1.2  1.5  0.5  20.748%   1.483%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   16    2.2  1.5  0.5   1.328%  16.261%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   17    3.2  1.5  0.5   0.009%   0.286%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   18    4.2  1.5  0.5   1.385%   0.053%   3.066%   0.336%   0.024%   4.273%   6.580%  19.756%   0.096%   3.945%
   19    5.2  1.5  0.5   0.208%   0.007%  34.694%   3.781%   0.000%   0.030%   0.138%   0.356%   0.062%   2.861%
   20    6.2  1.5  0.5   0.158%   3.373%   0.077%   0.728%   7.646%   0.009%  22.305%   7.542%   7.250%   0.142%
   21    7.2  1.5  0.5   0.058%   1.911%   3.424%  31.465%   1.857%   0.001%   0.831%   0.285%   7.417%   0.128%
   22    8.2  1.5  0.5   6.699%   0.153%   0.089%   0.569%   0.056%   0.151%   0.015%   0.094%   0.148%  27.772%
   23    1.2  1.5 -0.5   1.483%  20.748%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   24    2.2  1.5 -0.5  16.261%   1.328%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   25    3.2  1.5 -0.5   0.286%   0.009%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   26    4.2  1.5 -0.5   0.053%   1.385%   0.336%   3.066%   4.273%   0.024%  19.756%   6.580%   3.945%   0.096%
   27    5.2  1.5 -0.5   0.007%   0.208%   3.781%  34.694%   0.030%   0.000%   0.356%   0.138%   2.861%   0.062%
   28    6.2  1.5 -0.5   3.373%   0.158%   0.728%   0.077%   0.009%   7.646%   7.542%  22.305%   0.142%   7.250%
   29    7.2  1.5 -0.5   1.911%   0.058%  31.465%   3.424%   0.001%   1.857%   0.285%   0.831%   0.128%   7.417%
   30    8.2  1.5 -0.5   0.153%   6.699%   0.569%   0.089%   0.151%   0.056%   0.094%   0.015%  27.772%   0.148%
   31    1.2  1.5 -1.5   4.070%   0.626%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   32    2.2  1.5 -1.5   1.034%  21.481%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   33    3.2  1.5 -1.5   0.092%   4.072%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   34    4.2  1.5 -1.5   0.014%   0.000%   0.128%   0.014%   0.015%  40.011%   0.006%   0.081%   0.033%   1.635%
   35    5.2  1.5 -1.5   3.442%   0.101%   8.155%   0.903%   0.001%   6.903%   4.371%  11.812%   0.118%   5.811%
   36    6.2  1.5 -1.5   0.012%   0.090%   0.022%   0.200%   1.324%   0.002%   9.074%   2.568%  20.673%   0.438%
   37    7.2  1.5 -1.5   0.437%   8.992%   1.090%  10.930%   0.119%   0.707%   0.728%   0.282%  20.200%   0.537%
   38    8.2  1.5 -1.5   1.093%   0.324%   0.203%   0.127%   0.020%  36.851%   3.367%   9.808%   0.480%   0.254%

   Nr   State  S   Sz      21       22       23       24       25       26       27       28       29       30

    1    1.2  0.5  0.5   0.001%   0.000%   0.008%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    2    2.2  0.5  0.5   0.000%   0.004%   0.000%   0.004%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    3    3.2  0.5  0.5   0.000%   0.008%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    4    1.2  0.5 -0.5   0.000%   0.001%   0.000%   0.008%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    5    2.2  0.5 -0.5   0.004%   0.000%   0.004%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    6    3.2  0.5 -0.5   0.008%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    7    1.2  1.5  1.5   0.659%  39.781%   0.167%   3.213%   0.000%   0.271%   7.824%   0.386%   0.344%   0.099%
    8    2.2  1.5  1.5   1.249%   0.297%  13.502%   0.025%   0.004%  20.991%   0.336%   2.818%   0.005%   8.394%
    9    3.2  1.5  1.5   1.082%   0.048%  13.630%   0.006%   0.004%  21.212%   0.033%   0.635%   0.009%  14.988%
   10    4.2  1.5  1.5   0.020%   0.882%   0.000%   4.364%   1.756%   0.000%  16.309%   0.376%   2.044%   0.001%
   11    5.2  1.5  1.5   0.092%   4.271%   0.000%   0.901%   1.250%   0.000%  10.745%   0.256%   0.025%   0.002%
   12    6.2  1.5  1.5   0.381%   0.005%   4.872%   0.008%   0.002%   0.752%   0.001%   0.033%   0.008%  25.046%
   13    7.2  1.5  1.5   0.376%   0.010%   4.795%   0.084%   0.050%   0.743%   0.210%   7.525%   0.018%   4.083%
   14    8.2  1.5  1.5   0.008%   0.379%   0.091%   4.788%   2.955%   0.009%   0.918%   0.170%   0.998%   0.088%
   15    1.2  1.5  0.5   0.297%   0.158%   4.470%   0.363%   0.110%  27.941%   0.182%   2.520%   0.004%   2.733%
   16    2.2  1.5  0.5   0.181%   5.974%   0.077%  27.801%   6.972%   0.355%   2.613%   0.185%   0.111%   0.046%
   17    3.2  1.5  0.5   0.515%  23.421%   0.007%  10.397%   7.082%   0.024%  10.729%   0.249%   1.775%   0.002%
   18    4.2  1.5  0.5   4.271%   0.093%   0.901%   0.000%   0.000%   1.250%   0.465%  19.264%   0.007%   3.736%
   19    5.2  1.5  0.5   0.881%   0.020%   4.364%   0.000%   0.000%   1.756%   0.148%   5.910%   0.004%   8.622%
   20    6.2  1.5  0.5   0.068%   4.811%   0.001%   0.386%   2.253%   0.000%   0.304%   0.018%   1.595%   0.013%
   21    7.2  1.5  0.5   0.131%   4.748%   0.006%   0.380%   2.214%   0.000%   4.995%   0.190%   2.518%   0.419%
   22    8.2  1.5  0.5   4.785%   0.094%   0.380%   0.007%   0.042%   0.000%   0.165%   3.488%   0.122%  22.141%
   23    1.2  1.5 -0.5   0.158%   0.297%   0.363%   4.470%  27.941%   0.110%   2.520%   0.182%   2.733%   0.004%
   24    2.2  1.5 -0.5   5.974%   0.181%  27.801%   0.077%   0.355%   6.972%   0.185%   2.613%   0.046%   0.111%
   25    3.2  1.5 -0.5  23.421%   0.515%  10.397%   0.007%   0.024%   7.082%   0.249%  10.729%   0.002%   1.775%
   26    4.2  1.5 -0.5   0.093%   4.271%   0.000%   0.901%   1.250%   0.000%  19.264%   0.465%   3.736%   0.007%
   27    5.2  1.5 -0.5   0.020%   0.881%   0.000%   4.364%   1.756%   0.000%   5.910%   0.148%   8.622%   0.004%
   28    6.2  1.5 -0.5   4.811%   0.068%   0.386%   0.001%   0.000%   2.253%   0.018%   0.304%   0.013%   1.595%
   29    7.2  1.5 -0.5   4.748%   0.131%   0.380%   0.006%   0.000%   2.214%   0.190%   4.995%   0.419%   2.518%
   30    8.2  1.5 -0.5   0.094%   4.785%   0.007%   0.380%   0.000%   0.042%   3.488%   0.165%  22.141%   0.122%
   31    1.2  1.5 -1.5  39.781%   0.659%   3.213%   0.167%   0.271%   0.000%   0.386%   7.824%   0.099%   0.344%
   32    2.2  1.5 -1.5   0.297%   1.249%   0.025%  13.502%  20.991%   0.004%   2.818%   0.336%   8.394%   0.005%
   33    3.2  1.5 -1.5   0.048%   1.082%   0.006%  13.630%  21.212%   0.004%   0.635%   0.033%  14.988%   0.009%
   34    4.2  1.5 -1.5   0.882%   0.020%   4.364%   0.000%   0.000%   1.756%   0.376%  16.309%   0.001%   2.044%
   35    5.2  1.5 -1.5   4.271%   0.092%   0.901%   0.000%   0.000%   1.250%   0.256%  10.745%   0.002%   0.025%
   36    6.2  1.5 -1.5   0.005%   0.381%   0.008%   4.872%   0.752%   0.002%   0.033%   0.001%  25.046%   0.008%
   37    7.2  1.5 -1.5   0.010%   0.376%   0.084%   4.795%   0.743%   0.050%   7.525%   0.210%   4.083%   0.018%
   38    8.2  1.5 -1.5   0.379%   0.008%   4.788%   0.091%   0.009%   2.955%   0.170%   0.918%   0.088%   0.998%

   Nr   State  S   Sz      31       32       33       34       35       36       37       38

    1    1.2  0.5  0.5   0.000%   0.000%   0.001%   0.008%   0.000%   0.130%   0.000%   0.163%
    2    2.2  0.5  0.5   0.000%   0.000%   0.059%   0.011%   0.069%   0.000%   0.162%   0.000%
    3    3.2  0.5  0.5   0.000%   0.000%   0.109%   0.020%   0.009%   0.000%   0.161%   0.000%
    4    1.2  0.5 -0.5   0.000%   0.000%   0.008%   0.001%   0.130%   0.000%   0.163%   0.000%
    5    2.2  0.5 -0.5   0.000%   0.000%   0.011%   0.059%   0.000%   0.069%   0.000%   0.162%
    6    3.2  0.5 -0.5   0.000%   0.000%   0.020%   0.109%   0.000%   0.009%   0.000%   0.161%
    7    1.2  1.5  1.5   0.064%   2.742%  12.075%   2.425%   1.039%   0.064%   0.000%   0.048%
    8    2.2  1.5  1.5   4.033%   0.045%   0.370%   0.146%   0.013%   4.835%   0.000%   3.701%
    9    3.2  1.5  1.5   0.006%   0.004%   0.078%   0.290%   0.001%   4.886%   0.000%   3.740%
   10    4.2  1.5  1.5   0.000%   0.139%   2.247%   0.409%  12.060%   0.000%   9.876%   0.000%
   11    5.2  1.5  1.5   0.020%  12.977%  10.196%   1.863%   2.662%   0.000%   7.025%   0.000%
   12    6.2  1.5  1.5   3.958%   0.040%   0.174%   0.810%   0.011%  13.711%   0.015%   4.229%
   13    7.2  1.5  1.5  16.668%   0.191%   0.175%   0.809%   0.242%  13.480%   0.303%   4.157%
   14    8.2  1.5  1.5   0.410%   3.976%   0.789%   0.198%  13.482%   0.253%  16.579%   0.080%
   15    1.2  1.5  0.5  11.392%   0.220%   0.005%   0.148%   0.118%   1.614%   0.016%   4.921%
   16    2.2  1.5  0.5   0.217%   9.707%   1.991%   0.317%   9.795%   0.018%   1.232%   0.058%
   17    3.2  1.5  0.5   0.011%   0.069%   7.092%   1.291%   3.846%   0.002%   1.242%   0.006%
   18    4.2  1.5  0.5   0.549%   0.003%   1.853%  10.196%   0.000%   2.656%   0.000%   7.040%
   19    5.2  1.5  0.5   4.172%   0.012%   0.410%   2.252%   0.000%  12.047%   0.000%   9.882%
   20    6.2  1.5  0.5   0.056%  11.821%  11.297%   2.423%   0.986%   0.001%  12.677%   0.000%
   21    7.2  1.5  0.5   0.124%   5.954%  11.297%   2.438%   0.966%   0.017%  12.449%   0.000%
   22    8.2  1.5  0.5  10.366%   0.053%   2.749%  10.977%   0.018%   0.967%   0.239%   0.000%
   23    1.2  1.5 -0.5   0.220%  11.392%   0.148%   0.005%   1.614%   0.118%   4.921%   0.016%
   24    2.2  1.5 -0.5   9.707%   0.217%   0.317%   1.991%   0.018%   9.795%   0.058%   1.232%
   25    3.2  1.5 -0.5   0.069%   0.011%   1.291%   7.092%   0.002%   3.846%   0.006%   1.242%
   26    4.2  1.5 -0.5   0.003%   0.549%  10.196%   1.853%   2.656%   0.000%   7.040%   0.000%
   27    5.2  1.5 -0.5   0.012%   4.172%   2.252%   0.410%  12.047%   0.000%   9.882%   0.000%
   28    6.2  1.5 -0.5  11.821%   0.056%   2.423%  11.297%   0.001%   0.986%   0.000%  12.677%
   29    7.2  1.5 -0.5   5.954%   0.124%   2.438%  11.297%   0.017%   0.966%   0.000%  12.449%
   30    8.2  1.5 -0.5   0.053%  10.366%  10.977%   2.749%   0.967%   0.018%   0.000%   0.239%
   31    1.2  1.5 -1.5   2.742%   0.064%   2.425%  12.075%   0.064%   1.039%   0.048%   0.000%
   32    2.2  1.5 -1.5   0.045%   4.033%   0.146%   0.370%   4.835%   0.013%   3.701%   0.000%
   33    3.2  1.5 -1.5   0.004%   0.006%   0.290%   0.078%   4.886%   0.001%   3.740%   0.000%
   34    4.2  1.5 -1.5   0.139%   0.000%   0.409%   2.247%   0.000%  12.060%   0.000%   9.876%
   35    5.2  1.5 -1.5  12.977%   0.020%   1.863%  10.196%   0.000%   2.662%   0.000%   7.025%
   36    6.2  1.5 -1.5   0.040%   3.958%   0.810%   0.174%  13.711%   0.011%   4.229%   0.015%
   37    7.2  1.5 -1.5   0.191%  16.668%   0.809%   0.175%  13.480%   0.242%   4.157%   0.303%
   38    8.2  1.5 -1.5   3.976%   0.410%   0.198%   0.789%   0.253%  13.482%   0.080%  16.579%


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
              1      21       39.05       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       7      495.94       700     1000      520     2100     2140     5203     5303   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *     10722.41   8697.99   1605.91    414.06      2.64      0.10      1.42
 REAL TIME  *     10888.14 SEC
 DISK USED  *       535.08 MB (local),        4.22 GB (total)
 SF USED    *         4.09 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/USERDEF energy=   -261.806670694039

              CI              CI           MULTI         RHF-SCF
   -261.80156996   -262.07080654   -261.09915371   -261.43869824
 **********************************************************************************************************************************
 Molpro calculation terminated with 1 warning(s)
