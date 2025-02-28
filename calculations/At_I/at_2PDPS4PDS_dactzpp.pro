
 Working directory              : /wrk/irikura/molpro.BF5Qy74zBb/
 Global scratch directory       : /wrk/irikura/molpro.BF5Qy74zBb/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.BF5Qy74zBb/

 id        : nistki

 Nodes            nprocs
 pn112695.nist.gov    8
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1040), CPU time= 0.00 sec
 ***,At SO-CI
                                                                                 ! active space (5/6)
                                                                                 ! additional diffuse spdf functions
 memory,2000,M;
 
 gprint,orbitals,civector;
                                                                                 !gthresh,energy=1.d-10,coeff=1.d-8;
 
 symmetry,xyz
 geometry={At};
 
 basis={
 ecp,at,ECP60MDF;
 spdfg,at,aug-cc-pwCVTZ-PP;C; spdf,1,even,nprim=1,ratio=3.0;
 }
 
 {rhf;wf,charge=-1}
 
 NDOUB=12
 NQUAR=9
 
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
 Commands initialized (846), CPU time= 0.01 sec, 717 directives.
 Default parameters read. Elapsed time= 0.11 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2023.2 linked Fri Sep 22 03:27:09 2023


 **********************************************************************************************************************************
 LABEL *   At SO-CI                                                                                                                                                      
  (32 PROC) 64 bit mpp version                                                           DATE: 03-Dec-24          TIME: 17:30:29  
 **********************************************************************************************************************************

 SHA1:             3c61bfe44d37c8635c785372c339f5cbdd4e4b59
 **********************************************************************************************************************************

 Memory per process:      2000 MW
 Total memory per node:  16000 MW

 GA preallocation disabled
 GA check disabled

 Variable memory set to 2000.0 MW


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

     Node minimum: 2.359 MB, node maximum: 6.029 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:    1272449.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:    1272449      RECORD LENGTH: 524288

 Memory used in sort:       1.83 MW

 SORT1 READ    21109381. AND WROTE      252985. INTEGRALS IN      1 RECORDS. CPU TIME:     0.10 SEC, REAL TIME:     0.11 SEC
 SORT2 READ     2032599. AND WROTE    10190541. INTEGRALS IN     72 RECORDS. CPU TIME:     0.04 SEC, REAL TIME:     0.05 SEC

 Node minimum:     1271881.  Node maximum:     1277544. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      19       28.94       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         1.05      0.88
 REAL TIME  *         2.06 SEC
 DISK USED  *        29.28 MB (local),      280.02 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 Program * Restricted Hartree-Fock

 Orbital guess generated from atomic densities.

 Initial occupancy:   7   6

 NELEC=   26   SYM=1   MS2= 0   THRE=1.0D-08   THRD=3.2D-06   THRG=3.2D-06  HFMA2=F  DIIS_START=2   DIIS_MAX=10   DIIS_INCORE=F

 Level shifts:    0.00 (CLOSED)    0.00 (OPEN)    0.30 (GAP_MIN)

 ITER           ETOT              DE          GRAD        DDIFF     DIIS  NEXP   TIME(IT)  TIME(TOT)  DIAG
   1     -261.41291773    -261.41291773     0.00D+00     0.13D+00     0     0       0.01      0.02    start
   2     -261.43588930      -0.02297157     0.44D-02     0.13D-01     1     0       0.01      0.03    diag
   3     -261.43822845      -0.00233915     0.26D-02     0.22D-02     2     0       0.01      0.04    diag
   4     -261.43862700      -0.00039855     0.44D-03     0.99D-03     3     0       0.00      0.04    diag
   5     -261.43869302      -0.00006602     0.15D-03     0.60D-03     4     0       0.01      0.05    diag
   6     -261.43869802      -0.00000501     0.32D-04     0.18D-03     5     0       0.01      0.06    diag
   7     -261.43869823      -0.00000021     0.54D-05     0.35D-04     6     0       0.00      0.06    diag
   8     -261.43869824      -0.00000001     0.12D-05     0.12D-04     7     0       0.01      0.07    fixocc
   9     -261.43869824      -0.00000000     0.11D-06     0.52D-06     8     0       0.01      0.08    diag
  10     -261.43869824      -0.00000000     0.26D-07     0.65D-07     0     0       0.01      0.09    diag/orth

 Final occupancy:   7   6

 !RHF STATE 1.1 Energy               -261.438698241382
  RHF One-electron energy            -461.392278900977
  RHF Two-electron energy             199.953580659595
  RHF Kinetic energy                   82.729407290139
  RHF Nuclear energy                    0.000000000000
  RHF Virial quotient                  -3.160166460815

 !RHF STATE 1.1 Dipole moment           0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 ELECTRON ORBITALS
 =================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -7.53208     1  1  s    1.00132
    2.1     2.00000    -1.54351     1  1  d0   0.99967
    3.1     2.00000    -1.54351     1  1  d2+ -0.29256    1  1  d1-  0.92169
    4.1     2.00000    -1.54351     1  1  d1+  0.76361    1  1  d2+  0.52338    1  1  d1-  0.37432
    5.1     2.00000    -1.54351     1  1  d2-  0.59948    1  1  d1+ -0.50358    1  1  d2+  0.61456
    6.1     2.00000    -1.54351     1  1  d2-  0.79693    1  1  d1+  0.31792    1  1  d2+ -0.51198
    7.1     2.00000    -0.67783     1  2  s    0.97520
    1.2     2.00000    -4.82203     1  1  pz   0.99647
    2.2     2.00000    -4.82203     1  1  py   0.99647
    3.2     2.00000    -4.82203     1  1  px   1.00054
    4.2     2.00000    -0.11633     1  2  py   0.88058
    5.2     2.00000    -0.11633     1  2  px   0.88058
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
 CPU TIMES  *         1.14      0.09      0.88
 REAL TIME  *         2.73 SEC
 DISK USED  *        29.93 MB (local),      285.18 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING NDOUB          =        12.00000000                                  
 SETTING NQUAR          =         9.00000000                                  

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of closed-shell orbitals:  10 (    7    3)
 Number of active  orbitals:        6 (    0    6)
 Number of external orbitals:      96 (   46   50)

 State symmetry 1

 Number of active electrons:   5    Spin symmetry=Doublet   Space symmetry=2
 Number of states:            12
 Number of CSFs:             210   (300 determinants, 300 intermediate states)

 State symmetry 2

 Number of active electrons:   5    Spin symmetry=Quartet   Space symmetry=2
 Number of states:             9
 Number of CSFs:              84   (90 determinants, 90 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  
 *** IN SYMMETRY 1 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.302D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.391D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.553D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.661D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.520D+00 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 2 6 4 5 3 1 1 6 4   3 5 2 1 4 6 5 3 2 1   3 5 4 6 2 1 4 6 3 5   21514 812 711 91310
                                        4 6 2 3 5 1 2 6 4 5   3 1 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.830D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.830D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.411D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.413D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.126D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  9 SYMMETRY CONTAMINATION OF 0.126D-04 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 2 1 2 1 3 2 1 3 1   2 3 810 9 7 5 4 6 3   1 2 9 7 6 5 4 810 9   7 5 4 610 8 3 1 2 7
                                        9 5 4 610 8 5 4 810   7 9 6 3 1 2 3 2 1

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.04762   0.04762   0.04762   0.04762   0.04762   0.04762   0.04762   0.04762
                                          0.04762   0.04762   0.04762   0.04762
 Weight factors for state symmetry  2:    0.04762   0.04762   0.04762   0.04762   0.04762   0.04762   0.04762   0.04762
                                          0.04762
 
 Number of orbital rotations:  790  ( 18 closed/active, 472 closed/virtual, 0 active/active, 300 active/virtual )
 Total number of variables:    5200
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1    6   10    0   -261.03166532    -261.13710989   -0.10544457    0.37420937 0.00022380 0.00000000  0.93E+00      0.57
   2    7   12    0   -261.13307671    -261.13339332   -0.00031661    0.02330300 0.00000268 0.00000000  0.37E-01      1.30
   3    4    8    0   -261.13339429    -261.13339430   -0.00000001    0.00011891 0.00000024 0.00000000  0.38E-03      1.85
   4   17   34    0   -261.13339430    -261.13339430    0.00000000    0.00000010 0.00000001 0.00000000  0.24E-06      2.98

 CONVERGENCE REACHED!  Final gradient:    0.00000004 ( 0.40E-07)
                       Final energy:   -261.13339430
 
 Results for state 1.2 Doublet
 =============================
 !MCSCF STATE 1.2 Doublet Energy              -261.341207435840
 Nuclear energy                                  0.00000000
 Kinetic energy                                 83.22250944
 One electron energy                          -455.88631119
 Two electron energy                           194.54510375
 Virial ratio                                    4.14027069
 
 !MCSCF STATE 1.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.2 Doublet
 =============================
 !MCSCF STATE 2.2 Doublet Energy              -261.341207435674
 Nuclear energy                                  0.00000000
 Kinetic energy                                 83.22250945
 One electron energy                          -455.88631121
 Two electron energy                           194.54510378
 Virial ratio                                    4.14027069
 
 !MCSCF STATE 2.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.2 Doublet
 =============================
 !MCSCF STATE 3.2 Doublet Energy              -261.341207435563
 Nuclear energy                                  0.00000000
 Kinetic energy                                 83.22250945
 One electron energy                          -455.88631120
 Two electron energy                           194.54510377
 Virial ratio                                    4.14027069
 
 !MCSCF STATE 3.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.2 Doublet
 =============================
 !MCSCF STATE 4.2 Doublet Energy              -261.098587761824
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.39567029
 One electron energy                          -449.26985799
 Two electron energy                           188.17127023
 Virial ratio                                    4.16883869
 
 !MCSCF STATE 4.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.2 Doublet
 =============================
 !MCSCF STATE 5.2 Doublet Energy              -261.098587761819
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.39567029
 One electron energy                          -449.26985800
 Two electron energy                           188.17127024
 Virial ratio                                    4.16883869
 
 !MCSCF STATE 5.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.2 Doublet
 =============================
 !MCSCF STATE 6.2 Doublet Energy              -261.098587761704
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.39567030
 One electron energy                          -449.26985802
 Two electron energy                           188.17127026
 Virial ratio                                    4.16883869
 
 !MCSCF STATE 6.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.2 Doublet
 =============================
 !MCSCF STATE 7.2 Doublet Energy              -261.098587761669
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.39567030
 One electron energy                          -449.26985805
 Two electron energy                           188.17127029
 Virial ratio                                    4.16883869
 
 !MCSCF STATE 7.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.2 Doublet
 =============================
 !MCSCF STATE 8.2 Doublet Energy              -261.098587761642
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.39567030
 One electron energy                          -449.26985805
 Two electron energy                           188.17127029
 Virial ratio                                    4.16883869
 
 !MCSCF STATE 8.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 9.2 Doublet
 =============================
 !MCSCF STATE 9.2 Doublet Energy              -261.093360569166
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.39296365
 One electron energy                          -449.26096467
 Two electron energy                           188.16760410
 Virial ratio                                    4.16887934
 
 !MCSCF STATE 9.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 10.2 Doublet
 ==============================
 !MCSCF STATE 10.2 Doublet Energy             -261.093293304223
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.46786513
 One electron energy                          -449.57633381
 Two electron energy                           188.48304050
 Virial ratio                                    4.16600039
 
 !MCSCF STATE 10.2 Doublet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 11.2 Doublet
 ==============================
 !MCSCF STATE 11.2 Doublet Energy             -261.093293303806
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.46786514
 One electron energy                          -449.57633384
 Two electron energy                           188.48304054
 Virial ratio                                    4.16600039
 
 !MCSCF STATE 11.2 Doublet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 12.2 Doublet
 ==============================
 !MCSCF STATE 12.2 Doublet Energy             -261.093293303483
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.46786514
 One electron energy                          -449.57633387
 Two electron energy                           188.48304057
 Virial ratio                                    4.16600039
 
 !MCSCF STATE 12.2 Doublet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.2 Quartet
 =============================
 !MCSCF STATE 1.2 Quartet Energy              -261.105245954202
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.38048219
 One electron energy                          -449.21711400
 Two electron energy                           188.11186805
 Virial ratio                                    4.16950373
 
 !MCSCF STATE 1.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.2 Quartet
 =============================
 !MCSCF STATE 2.2 Quartet Energy              -261.105245954042
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.38048219
 One electron energy                          -449.21711398
 Two electron energy                           188.11186803
 Virial ratio                                    4.16950373
 
 !MCSCF STATE 2.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.2 Quartet
 =============================
 !MCSCF STATE 3.2 Quartet Energy              -261.105245953973
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.38048218
 One electron energy                          -449.21711396
 Two electron energy                           188.11186801
 Virial ratio                                    4.16950373
 
 !MCSCF STATE 3.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.2 Quartet
 =============================
 !MCSCF STATE 4.2 Quartet Energy              -261.100462485190
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.38578912
 One electron energy                          -449.23601754
 Two electron energy                           188.13555505
 Virial ratio                                    4.16924151
 
 !MCSCF STATE 4.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.2 Quartet
 =============================
 !MCSCF STATE 5.2 Quartet Energy              -261.100462485181
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.38578912
 One electron energy                          -449.23601756
 Two electron energy                           188.13555507
 Virial ratio                                    4.16924151
 
 !MCSCF STATE 5.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.2 Quartet
 =============================
 !MCSCF STATE 6.2 Quartet Energy              -261.100462485167
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.38578911
 One electron energy                          -449.23601751
 Two electron energy                           188.13555502
 Virial ratio                                    4.16924151
 
 !MCSCF STATE 6.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.2 Quartet
 =============================
 !MCSCF STATE 7.2 Quartet Energy              -261.100462485131
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.38578912
 One electron energy                          -449.23601754
 Two electron energy                           188.13555505
 Virial ratio                                    4.16924151
 
 !MCSCF STATE 7.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.2 Quartet
 =============================
 !MCSCF STATE 8.2 Quartet Energy              -261.100462485130
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.38578912
 One electron energy                          -449.23601753
 Two electron energy                           188.13555504
 Virial ratio                                    4.16924151
 
 !MCSCF STATE 8.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 9.2 Quartet
 =============================
 !MCSCF STATE 9.2 Quartet Energy              -261.093428488365
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.39210816
 One electron energy                          -449.25748636
 Two electron energy                           188.16405787
 Virial ratio                                    4.16891307
 
 !MCSCF STATE 9.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 ? Warning
 ? Transition properties are only calculated between states of the same symmetry
 ? The problem occurs in mu_properties_expec2

 !MCSCF expec      <1.2 Doublet|LXLX|1.2 Doublet>     1.000000000000
 !MCSCF expec      <2.2 Doublet|LXLX|2.2 Doublet>     0.000000000348
 !MCSCF expec      <3.2 Doublet|LXLX|3.2 Doublet>     0.999999999574
 !MCSCF expec      <4.2 Doublet|LXLX|4.2 Doublet>     3.950273763340
 !MCSCF expec      <5.2 Doublet|LXLX|5.2 Doublet>     3.999999889141
 !MCSCF expec      <6.2 Doublet|LXLX|6.2 Doublet>     1.000000047111
 !MCSCF expec      <7.2 Doublet|LXLX|7.2 Doublet>     1.000000000001
 !MCSCF expec      <8.2 Doublet|LXLX|8.2 Doublet>     0.049742918950
 !MCSCF expec      <9.2 Doublet|LXLX|9.2 Doublet>    -0.000000000001
 !MCSCF expec    <10.2 Doublet|LXLX|10.2 Doublet>     0.000000000398
 !MCSCF expec    <11.2 Doublet|LXLX|11.2 Doublet>     0.999999999598
 !MCSCF expec    <12.2 Doublet|LXLX|12.2 Doublet>     0.999999999999
 !MCSCF expec      <1.2 Quartet|LXLX|1.2 Quartet>     1.000000000001
 !MCSCF expec      <2.2 Quartet|LXLX|2.2 Quartet>     0.999999999912
 !MCSCF expec      <3.2 Quartet|LXLX|3.2 Quartet>     0.000000000130
 !MCSCF expec      <4.2 Quartet|LXLX|4.2 Quartet>     2.484786798547
 !MCSCF expec      <5.2 Quartet|LXLX|5.2 Quartet>     1.000000001923
 !MCSCF expec      <6.2 Quartet|LXLX|6.2 Quartet>     3.999999953379
 !MCSCF expec      <7.2 Quartet|LXLX|7.2 Quartet>     1.000000178475
 !MCSCF expec      <8.2 Quartet|LXLX|8.2 Quartet>     1.515151257875
 !MCSCF expec      <9.2 Quartet|LXLX|9.2 Quartet>    -0.000000000001
 
 !MCSCF expec      <1.2 Doublet|LYLY|1.2 Doublet>    -0.000000000003
 !MCSCF expec      <2.2 Doublet|LYLY|2.2 Doublet>     1.000000000000
 !MCSCF expec      <3.2 Doublet|LYLY|3.2 Doublet>     1.000000000000
 !MCSCF expec      <4.2 Doublet|LYLY|4.2 Doublet>     0.641034957383
 !MCSCF expec      <5.2 Doublet|LYLY|5.2 Doublet>     0.999999739460
 !MCSCF expec      <6.2 Doublet|LYLY|6.2 Doublet>     0.999999999309
 !MCSCF expec      <7.2 Doublet|LYLY|7.2 Doublet>     4.000000000006
 !MCSCF expec      <8.2 Doublet|LYLY|8.2 Doublet>     3.359020419360
 !MCSCF expec      <9.2 Doublet|LYLY|9.2 Doublet>    -0.000000000001
 !MCSCF expec    <10.2 Doublet|LYLY|10.2 Doublet>     0.999999999999
 !MCSCF expec    <11.2 Doublet|LYLY|11.2 Doublet>     0.999999999999
 !MCSCF expec    <12.2 Doublet|LYLY|12.2 Doublet>    -0.000000000000
 !MCSCF expec      <1.2 Quartet|LYLY|1.2 Quartet>    -0.000000000002
 !MCSCF expec      <2.2 Quartet|LYLY|2.2 Quartet>     0.999999999998
 !MCSCF expec      <3.2 Quartet|LYLY|3.2 Quartet>     1.000000000000
 !MCSCF expec      <4.2 Quartet|LYLY|4.2 Quartet>     3.438004264840
 !MCSCF expec      <5.2 Quartet|LYLY|5.2 Quartet>     3.999999996696
 !MCSCF expec      <6.2 Quartet|LYLY|6.2 Quartet>     1.000000003382
 !MCSCF expec      <7.2 Quartet|LYLY|7.2 Quartet>     0.999999875705
 !MCSCF expec      <8.2 Quartet|LYLY|8.2 Quartet>     0.562040138168
 !MCSCF expec      <9.2 Quartet|LYLY|9.2 Quartet>    -0.000000000001
 
 !MCSCF expec      <1.2 Doublet|LZLZ|1.2 Doublet>     1.000000000000
 !MCSCF expec      <2.2 Doublet|LZLZ|2.2 Doublet>     0.999999999649
 !MCSCF expec      <3.2 Doublet|LZLZ|3.2 Doublet>     0.000000000423
 !MCSCF expec      <4.2 Doublet|LZLZ|4.2 Doublet>     1.408691279285
 !MCSCF expec      <5.2 Doublet|LZLZ|5.2 Doublet>     1.000000371407
 !MCSCF expec      <6.2 Doublet|LZLZ|6.2 Doublet>     3.999999953588
 !MCSCF expec      <7.2 Doublet|LZLZ|7.2 Doublet>     1.000000000001
 !MCSCF expec      <8.2 Doublet|LZLZ|8.2 Doublet>     2.591236661697
 !MCSCF expec      <9.2 Doublet|LZLZ|9.2 Doublet>    -0.000000000001
 !MCSCF expec    <10.2 Doublet|LZLZ|10.2 Doublet>     0.999999999601
 !MCSCF expec    <11.2 Doublet|LZLZ|11.2 Doublet>     0.000000000401
 !MCSCF expec    <12.2 Doublet|LZLZ|12.2 Doublet>     0.999999999999
 !MCSCF expec      <1.2 Quartet|LZLZ|1.2 Quartet>     1.000000000001
 !MCSCF expec      <2.2 Quartet|LZLZ|2.2 Quartet>     0.000000000090
 !MCSCF expec      <3.2 Quartet|LZLZ|3.2 Quartet>     0.999999999870
 !MCSCF expec      <4.2 Quartet|LZLZ|4.2 Quartet>     0.077208936621
 !MCSCF expec      <5.2 Quartet|LZLZ|5.2 Quartet>     1.000000001389
 !MCSCF expec      <6.2 Quartet|LZLZ|6.2 Quartet>     1.000000043247
 !MCSCF expec      <7.2 Quartet|LZLZ|7.2 Quartet>     3.999999945829
 !MCSCF expec      <8.2 Quartet|LZLZ|8.2 Quartet>     3.922808603965
 !MCSCF expec      <9.2 Quartet|LZLZ|9.2 Quartet>    -0.000000000001
 
 !MCSCF expec      <1.2 Doublet|L**2|1.2 Doublet>     1.999999999997
 !MCSCF expec      <2.2 Doublet|L**2|2.2 Doublet>     1.999999999997
 !MCSCF expec      <3.2 Doublet|L**2|3.2 Doublet>     1.999999999997
 !MCSCF expec      <4.2 Doublet|L**2|4.2 Doublet>     6.000000000008
 !MCSCF expec      <5.2 Doublet|L**2|5.2 Doublet>     6.000000000008
 !MCSCF expec      <6.2 Doublet|L**2|6.2 Doublet>     6.000000000008
 !MCSCF expec      <7.2 Doublet|L**2|7.2 Doublet>     6.000000000008
 !MCSCF expec      <8.2 Doublet|L**2|8.2 Doublet>     6.000000000008
 !MCSCF expec      <9.2 Doublet|L**2|9.2 Doublet>    -0.000000000004
 !MCSCF expec    <10.2 Doublet|L**2|10.2 Doublet>     1.999999999998
 !MCSCF expec    <11.2 Doublet|L**2|11.2 Doublet>     1.999999999998
 !MCSCF expec    <12.2 Doublet|L**2|12.2 Doublet>     1.999999999998
 !MCSCF expec      <1.2 Quartet|L**2|1.2 Quartet>     2.000000000000
 !MCSCF expec      <2.2 Quartet|L**2|2.2 Quartet>     2.000000000000
 !MCSCF expec      <3.2 Quartet|L**2|3.2 Quartet>     2.000000000000
 !MCSCF expec      <4.2 Quartet|L**2|4.2 Quartet>     6.000000000009
 !MCSCF expec      <5.2 Quartet|L**2|5.2 Quartet>     6.000000000009
 !MCSCF expec      <6.2 Quartet|L**2|6.2 Quartet>     6.000000000009
 !MCSCF expec      <7.2 Quartet|L**2|7.2 Quartet>     6.000000000009
 !MCSCF expec      <8.2 Quartet|L**2|8.2 Quartet>     6.000000000009
 !MCSCF expec      <9.2 Quartet|L**2|9.2 Quartet>    -0.000000000004
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 3 5 6 2 4 1 1 3 5   6 2 4 1 5 3 6 2 4 1   5 3 6 2 4 1 3 5 6 2   41310111415 812 7 9
                                        3 5 6 2 4 1 3 5 6 2   4 1 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   2 1 3 3 1 2 3 1 2 2   1 3 9 7 5 810 6 4 2   1 3 7 9 5 810 6 4 9   7 510 8 6 4 2 1 3 9
                                        7 510 8 6 4 7 9 5 8  10 6 4 2 1 3 2 1 3
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -7.98649     1  1  s    1.00010
    2.1     2.00000    -1.99690     1  1  d2-  1.00078
    3.1     2.00000    -1.99690     1  1  d2+  1.00078
    4.1     2.00000    -1.99690     1  1  d1-  1.00078
    5.1     2.00000    -1.99690     1  1  d0   1.00078
    6.1     2.00000    -1.99690     1  1  d1+  1.00078
    7.1     2.00000    -1.08349     1  2  s    1.03166
    1.2     2.00000    -5.27611     1  1  py   0.99948
    2.2     2.00000    -5.27611     1  1  px   0.99948
    3.2     2.00000    -5.27611     1  1  pz   0.99948
    4.2     1.38039    -0.41894     1  2  pz   1.12111
    5.2     1.38039    -0.41894     1  2  px   1.12111
    6.2     1.38039    -0.41894     1  2  py   1.12111
    7.2     0.28628     0.00857     1  7  pz   0.29733    1  8  pz   0.85348
    8.2     0.28628     0.00857     1  7  px   0.29733    1  8  px   0.85348
    9.2     0.28628     0.00857     1  7  py   0.29733    1  8  py   0.85348
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 2 (Doublet)
 =======================================

 State:              1               2               3               4               5               6               7
 22a000         0.98897426     -0.00000000      0.00000000      0.00000000     -0.00000000     -0.00000000     -0.00000001
 a22000        -0.00000000     -0.00001852      0.98897426     -0.00000000      0.00000000     -0.00000002      0.00000000
 2a2000         0.00000000      0.98897426      0.00001852     -0.00000000     -0.00000001     -0.00000000      0.00000000
 a2a0b0        -0.00000000      0.00000000     -0.00000000      0.07430138     -0.00007167     -0.00001434      0.00000003
 aa200b         0.00000000     -0.00000000     -0.00000000      0.61067015     -0.00056312     -0.00001657      0.00000025
 a2a00b        -0.00000000     -0.00000143      0.07632619      0.00001064     -0.00008982      0.57711819      0.00000020
 a2ab00        -0.07632619     -0.00000000      0.00000000      0.00000023     -0.00000080      0.00000020     -0.57711817
 2aa0b0        -0.07632618      0.00000000      0.00000000     -0.00000023      0.00000080     -0.00000020      0.57711814
 aa20b0         0.00000000     -0.00000143      0.07632618     -0.00001064      0.00008982     -0.57711811     -0.00000020
 2aa00b        -0.00000000      0.07632619      0.00000143      0.00053092      0.57711793      0.00008981     -0.00000080
 aa2b00        -0.00000000     -0.07632619     -0.00000143      0.00053092      0.57711788      0.00008981     -0.00000080
 2aab00         0.00000000      0.00000000      0.00000000     -0.53636875      0.00049145      0.00000223     -0.00000022
 ba20a0         0.00000000      0.00000025     -0.01339951      0.00000539     -0.00004546      0.29212641      0.00000010
 2ab0a0         0.01339951      0.00000000      0.00000000      0.00000012     -0.00000040      0.00000010     -0.29212643
 ab2a00         0.00000000      0.01339951      0.00000025     -0.00026874     -0.29212629     -0.00004546      0.00000040
 a2ba00         0.01339951      0.00000000     -0.00000000     -0.00000012      0.00000040     -0.00000010      0.29212644
 2ba00a         0.00000000     -0.01339951     -0.00000025     -0.00026874     -0.29212632     -0.00004546      0.00000040
 b2a00a         0.00000000      0.00000025     -0.01339951     -0.00000539      0.00004546     -0.29212645     -0.00000010
 a2b0a0         0.00000000     -0.00000000     -0.00000000     -0.03006046      0.00002932      0.00000705     -0.00000001
 b2a0a0         0.00000000     -0.00000000      0.00000000     -0.04424091      0.00004235      0.00000729     -0.00000002
 ab200a        -0.00000000      0.00000000      0.00000000     -0.30819127      0.00028416      0.00000821     -0.00000013
 ba200a        -0.00000000      0.00000000      0.00000000     -0.30247889      0.00027897      0.00000836     -0.00000012
 a2b00a         0.00000000      0.00000118     -0.06292667     -0.00000526      0.00004435     -0.28499174     -0.00000010
 b2aa00         0.06292667      0.00000000      0.00000000     -0.00000012      0.00000039     -0.00000010      0.28499173
 2ba0a0         0.06292666     -0.00000000     -0.00000000      0.00000012     -0.00000039      0.00000010     -0.28499171
 ab20a0         0.00000000      0.00000118     -0.06292666      0.00000526     -0.00004435      0.28499170      0.00000010
 2ab00a         0.00000000     -0.06292667     -0.00000118     -0.00026218     -0.28499161     -0.00004435      0.00000039
 ba2a00         0.00000000      0.06292667      0.00000118     -0.00026218     -0.28499159     -0.00004435      0.00000039
 2baa00        -0.00000000     -0.00000000     -0.00000000      0.27241841     -0.00024965     -0.00000131      0.00000011
 2aba00        -0.00000000      0.00000000     -0.00000000      0.26395034     -0.00024180     -0.00000092      0.00000011
 2020a0        -0.00000000      0.04090047      0.00000077     -0.00000000     -0.00000000     -0.00000000      0.00000000
 022a00         0.00000000     -0.00000077      0.04090048     -0.00000000      0.00000000     -0.00000000      0.00000000
 22000a         0.04090048     -0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000000     -0.00000000
 
 Energy:     -261.34120744   -261.34120744   -261.34120744   -261.09858776   -261.09858776   -261.09858776   -261.09858776

 State:              8               9              10              11              12
 22a000         0.00000000      0.00000000     -0.00000009     -0.00000006      0.11523062
 a22000        -0.00000000     -0.00000000     -0.00000230     -0.11523063     -0.00000006
 2a2000        -0.00000000     -0.00000000     -0.11523063      0.00000230     -0.00000009
 a2a0b0         0.66224349     -0.47129776      0.00000000      0.00000000      0.00000000
 aa200b         0.26677485      0.47129772     -0.00000000     -0.00000000     -0.00000000
 a2a00b         0.00001129      0.00000000      0.00001116      0.55914437      0.00000028
 a2ab00        -0.00000000      0.00000000     -0.00000044     -0.00000028      0.55914440
 2aa0b0        -0.00000000      0.00000000     -0.00000044     -0.00000028      0.55914442
 aa20b0        -0.00001129      0.00000000      0.00001116      0.55914445      0.00000028
 2aa00b         0.00000289      0.00000000      0.55914439     -0.00001116      0.00000044
 aa2b00         0.00000289     -0.00000000     -0.55914444      0.00001116     -0.00000044
 2aab00         0.39546868      0.47129774     -0.00000000     -0.00000000     -0.00000000
 ba20a0         0.00000572     -0.00000000     -0.00000726     -0.36354762     -0.00000018
 2ab0a0         0.00000000     -0.00000000      0.00000028      0.00000018     -0.36354761
 ab2a00        -0.00000146      0.00000000      0.36354761     -0.00000726      0.00000028
 a2ba00         0.00000000     -0.00000000      0.00000028      0.00000018     -0.36354759
 2ba00a        -0.00000146     -0.00000000     -0.36354758      0.00000726     -0.00000028
 b2a00a        -0.00000572     -0.00000000     -0.00000726     -0.36354758     -0.00000018
 a2b0a0        -0.33191724      0.23564888     -0.00000000     -0.00000000     -0.00000000
 b2a0a0        -0.33032624      0.23564888     -0.00000000     -0.00000000     -0.00000000
 ab200a        -0.12684936     -0.23564886      0.00000000      0.00000000      0.00000000
 ba200a        -0.13992549     -0.23564886      0.00000000      0.00000000      0.00000000
 a2b00a        -0.00000558     -0.00000000     -0.00000390     -0.19559680     -0.00000010
 b2aa00         0.00000000     -0.00000000      0.00000015      0.00000010     -0.19559680
 2ba0a0         0.00000000     -0.00000000      0.00000015      0.00000010     -0.19559681
 ab20a0         0.00000558     -0.00000000     -0.00000390     -0.19559683     -0.00000010
 2ab00a        -0.00000143     -0.00000000     -0.19559680      0.00000390     -0.00000015
 ba2a00        -0.00000143      0.00000000      0.19559683     -0.00000390      0.00000015
 2baa00        -0.19199177     -0.23564887      0.00000000      0.00000000      0.00000000
 2aba00        -0.20347691     -0.23564887      0.00000000      0.00000000      0.00000000
 2020a0         0.00000000     -0.00000000     -0.13105631      0.00000262     -0.00000010
 022a00        -0.00000000     -0.00000000     -0.00000262     -0.13105631     -0.00000007
 22000a        -0.00000000      0.00000000     -0.00000010     -0.00000007      0.13105630
 
 Energy:     -261.09858776   -261.09336057   -261.09329330   -261.09329330   -261.09329330
 
 
 CI Coefficients of symmetry 2 (Quartet)
 =======================================

 State:              1               2               3               4               5               6               7
 2aaa00        -0.00000000     -0.00000000      0.00000000      0.80846146      0.00004560     -0.00000469     -0.00004635
 aa200a        -0.00000000     -0.00000000      0.00000000     -0.30600480      0.00000102      0.00001542      0.00040683
 aa20a0        -0.00000001      0.70700648      0.00000668     -0.00001355     -0.00000098     -0.00008398      0.70700466
 2aa0a0         0.70700648      0.00000001     -0.00000004      0.00004241     -0.70700477      0.00000149     -0.00000097
 aa2a00         0.00000004     -0.00000668      0.70700646      0.00000220      0.00000149      0.70700479      0.00008397
 2aa00a        -0.00000004      0.00000668     -0.70700645      0.00000220      0.00000149      0.70700480      0.00008397
 a2aa00         0.70700643      0.00000001     -0.00000004     -0.00004241      0.70700482     -0.00000149      0.00000097
 a2a00a        -0.00000001      0.70700643      0.00000668      0.00001355      0.00000098      0.00008398     -0.70700471
 a2a0a0         0.00000000     -0.00000000      0.00000000      0.50245665      0.00004661      0.00001073      0.00036048
 
 Energy:     -261.10524595   -261.10524595   -261.10524595   -261.10046249   -261.10046249   -261.10046249   -261.10046249

 State:              8               9
 2aaa00        -0.11342151      0.57718632
 aa200a         0.75685883      0.57718631
 aa20a0        -0.00038551      0.00000000
 2aa0a0         0.00001810      0.00000000
 aa2a00        -0.00001356     -0.00000000
 2aa00a        -0.00001356     -0.00000000
 a2aa00        -0.00001810      0.00000000
 a2a00a         0.00038551     -0.00000000
 a2a0a0         0.64343729     -0.57718634
 
 Energy:     -261.10046249   -261.09342849
 


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
 CPU TIMES  *         4.07      2.93      0.09      0.88
 REAL TIME  *         6.02 SEC
 DISK USED  *        39.97 MB (local),      365.52 MB (total)
 SF USED    *        25.90 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

         ENERGY     LL
    -261.3412074   2.0
    -261.3412074   2.0
    -261.3412074   2.0
    -261.0985878   6.0
    -261.0985878   6.0
    -261.0985878   6.0
    -261.0985878   6.0
    -261.0985878   6.0
    -261.0933606  -0.0
    -261.0932933   2.0
    -261.0932933   2.0
    -261.0932933   2.0
    -261.1052460   2.0
    -261.1052460   2.0
    -261.1052460   2.0
    -261.1004625   6.0
    -261.1004625   6.0
    -261.1004625   6.0
    -261.1004625   6.0
    -261.1004625   6.0
    -261.0934285  -0.0
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 12  Roots:   1   2   3   4   5   6   7   8   9  10  11  12
 Number of reference states: 12  Roots:   1   2   3   4   5   6   7   8   9  10  11  12

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
     1      -261.34120744
     2      -261.34120744
     3      -261.34120744
     4      -261.09858776
     5      -261.09858776
     6      -261.09858776
     7      -261.09858776
     8      -261.09858776
     9      -261.09336057
    10      -261.09329330
    11      -261.09329330
    12      -261.09329330

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.6997D-07

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2181D-06

 Number of blocks in overlap matrix:  1242   Smallest eigenvalue:  0.70D-07
 Number of N-2 electron functions:    2790
 Number of N-1 electron functions:   51730

 Number of internal configurations:                15498
 Number of singly external configurations:       2492420
 Number of doubly external configurations:       6432120
 Total number of contracted configurations:      8940038
 Total number of uncontracted configurations:  170780814

 Diagonal Coupling coefficients finished.               Storage:  14711030 words, CPU-Time:     38.82 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   1607802 words, CPU-time:      0.26 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -261.34120744     0.00000000    -0.90879485  0.47D-01  0.13D+00    45.97
    1     2     2     1.00000000     0.00000000  -261.34120744     0.00000000    -0.90875608  0.47D-01  0.13D+00    45.97
    1     3     3     1.00000000     0.00000000  -261.34120744     0.00000000    -0.90863357  0.47D-01  0.13D+00    45.97
    1     4     4     1.00000000     0.00000000  -261.09858776    -0.00000000    -0.86782500  0.32D-01  0.12D+00    45.97
    1     5     5     1.00000000     0.00000000  -261.09858776    -0.00000000    -0.86581343  0.32D-01  0.12D+00    45.97
    1     6     6     1.00000000     0.00000000  -261.09858776     0.00000000    -0.86579814  0.32D-01  0.12D+00    45.97
    1     7     7     1.00000000     0.00000000  -261.09858776    -0.00000000    -0.86571868  0.32D-01  0.12D+00    45.97
    1     8     8     1.00000000     0.00000000  -261.09858776    -0.00000000    -0.86795311  0.32D-01  0.12D+00    45.97
    1     9     9     1.00000000     0.00000000  -261.09336057     0.00000000    -0.86912929  0.33D-01  0.12D+00    45.97
    1    10    10     1.00000000     0.00000000  -261.09329330    -0.00000000    -0.87385837  0.39D-01  0.12D+00    45.97
    1    11    11     1.00000000     0.00000000  -261.09329330     0.00000000    -0.87357341  0.39D-01  0.12D+00    45.97
    1    12    12     1.00000000     0.00000000  -261.09329330     0.00000000    -0.87366206  0.39D-01  0.12D+00    45.97
    2     1     1     1.10458939    -0.70649670  -262.04770414    -0.70649670    -0.02157246  0.41D-02  0.18D-02   647.47
    2     2     2     1.10447757    -0.70645415  -262.04766159    -0.70645415    -0.02158508  0.41D-02  0.18D-02   647.47
    2     3     3     1.10453387    -0.70644899  -262.04765642    -0.70644899    -0.02160875  0.41D-02  0.18D-02   647.47
    2     4     4     1.09266635    -0.68571556  -261.78430333    -0.68571556    -0.01691663  0.17D-02  0.16D-02   647.47
    2     5     5     1.09270849    -0.68570087  -261.78428863    -0.68570087    -0.01693656  0.17D-02  0.16D-02   647.47
    2     6     6     1.09270358    -0.68568926  -261.78427703    -0.68568926    -0.01694416  0.17D-02  0.16D-02   647.47
    2     7     7     1.09315892    -0.68550133  -261.78408909    -0.68550133    -0.01719753  0.17D-02  0.17D-02   647.47
    2     8     8     1.09315089    -0.68543667  -261.78402443    -0.68543667    -0.01725513  0.17D-02  0.17D-02   647.47
    2     9     9     1.09385473    -0.68605711  -261.77941768    -0.68605711    -0.01726365  0.17D-02  0.17D-02   647.47
    2    10    10     1.09616022    -0.68569842  -261.77899173    -0.68569842    -0.01888418  0.28D-02  0.17D-02   647.47
    2    11    11     1.09614146    -0.68569018  -261.77898348    -0.68569018    -0.01888477  0.28D-02  0.17D-02   647.47
    2    12    12     1.09623717    -0.68565392  -261.77894722    -0.68565392    -0.01892979  0.28D-02  0.17D-02   647.47
    3     1     1     1.09544654    -0.72712275  -262.06833018    -0.02062605    -0.00046871  0.59D-04  0.61D-04  1201.32
    3     2     2     1.09540865    -0.72711523  -262.06832266    -0.02066108    -0.00047325  0.59D-04  0.62D-04  1201.32
    3     3     3     1.09538656    -0.72711298  -262.06832042    -0.02066399    -0.00047369  0.58D-04  0.63D-04  1201.32
    3     4     4     1.08764335    -0.70159657  -261.80018434    -0.01588101    -0.00025904  0.25D-04  0.35D-04  1201.32
    3     5     5     1.08755857    -0.70159336  -261.80018112    -0.01589249    -0.00026096  0.26D-04  0.35D-04  1201.32
    3     6     6     1.08755149    -0.70159264  -261.80018040    -0.01590338    -0.00026109  0.26D-04  0.35D-04  1201.32
    3     7     7     1.08755010    -0.70159212  -261.80017988    -0.01609079    -0.00026154  0.26D-04  0.36D-04  1201.32
    3     8     8     1.08760770    -0.70159151  -261.80017927    -0.01615484    -0.00026177  0.25D-04  0.35D-04  1201.32
    3     9     9     1.08838733    -0.70331068  -261.79667125    -0.01725357    -0.00033173  0.43D-04  0.44D-04  1201.32
    3    10    10     1.08837329    -0.70337593  -261.79666923    -0.01767750    -0.00033271  0.43D-04  0.44D-04  1201.32
    3    11    11     1.08838898    -0.70337555  -261.79666886    -0.01768538    -0.00033323  0.43D-04  0.44D-04  1201.32
    3    12    12     1.08810406    -0.70231226  -261.79560556    -0.01665834    -0.00026728  0.30D-04  0.36D-04  1201.32
    4     1     1     1.09583470    -0.72761379  -262.06882123    -0.00049105    -0.00002255  0.17D-05  0.38D-05  1751.47
    4     2     2     1.09582092    -0.72761261  -262.06882005    -0.00049738    -0.00002334  0.17D-05  0.39D-05  1751.47
    4     3     3     1.09581547    -0.72761229  -262.06881972    -0.00049931    -0.00002354  0.17D-05  0.40D-05  1751.47
    4     4     4     1.08801137    -0.70187562  -261.80046338    -0.00027904    -0.00001317  0.13D-05  0.27D-05  1751.47
    4     5     5     1.08799943    -0.70187510  -261.80046286    -0.00028174    -0.00001361  0.13D-05  0.28D-05  1751.47
    4     6     6     1.08799744    -0.70187487  -261.80046263    -0.00028222    -0.00001373  0.13D-05  0.28D-05  1751.47
    4     7     7     1.08799745    -0.70187486  -261.80046262    -0.00028274    -0.00001375  0.13D-05  0.28D-05  1751.47
    4     8     8     1.08800396    -0.70187443  -261.80046219    -0.00028293    -0.00001378  0.13D-05  0.29D-05  1751.47
    4     9     9     1.08862709    -0.70366848  -261.79702905    -0.00035780    -0.00001788  0.26D-05  0.33D-05  1751.47
    4    10    10     1.08862433    -0.70373529  -261.79702860    -0.00035937    -0.00001811  0.26D-05  0.34D-05  1751.47
    4    11    11     1.08862308    -0.70373526  -261.79702856    -0.00035970    -0.00001815  0.26D-05  0.34D-05  1751.47
    4    12    12     1.08844194    -0.70260305  -261.79589635    -0.00029079    -0.00001413  0.16D-05  0.28D-05  1751.47
    5     1     1     1.09607204    -0.72763853  -262.06884597    -0.00002474    -0.00000128  0.42D-07  0.25D-06  2300.86
    5     2     2     1.09607063    -0.72763840  -262.06884583    -0.00002579    -0.00000138  0.46D-07  0.27D-06  2300.86
    5     3     3     1.09606943    -0.72763836  -262.06884580    -0.00002607    -0.00000141  0.46D-07  0.28D-06  2300.86
    5     4     4     1.08816922    -0.70189217  -261.80047994    -0.00001656    -0.00000122  0.44D-07  0.27D-06  2300.86
    5     5     5     1.08816994    -0.70189213  -261.80047990    -0.00001703    -0.00000125  0.45D-07  0.28D-06  2300.86
    5     6     6     1.08816990    -0.70189210  -261.80047986    -0.00001723    -0.00000127  0.46D-07  0.29D-06  2300.86
    5     7     7     1.08817011    -0.70189209  -261.80047985    -0.00001723    -0.00000127  0.46D-07  0.29D-06  2300.86
    5     8     8     1.08816885    -0.70189197  -261.80047973    -0.00001753    -0.00000135  0.50D-07  0.30D-06  2300.86
    5     9     9     1.08875985    -0.70369050  -261.79705107    -0.00002202    -0.00000154  0.74D-07  0.33D-06  2300.86
    5    10    10     1.08875917    -0.70375770  -261.79705100    -0.00002241    -0.00000159  0.76D-07  0.34D-06  2300.86
    5    11    11     1.08875894    -0.70375768  -261.79705099    -0.00002243    -0.00000160  0.76D-07  0.34D-06  2300.86
    5    12    12     1.08860212    -0.70262092  -261.79591423    -0.00001788    -0.00000127  0.54D-07  0.27D-06  2300.86
    6     1     1     1.09609553    -0.72764001  -262.06884745    -0.00000148    -0.00000008  0.55D-08  0.15D-07  2850.59
    6     2     2     1.09609522    -0.72764000  -262.06884744    -0.00000161    -0.00000009  0.60D-08  0.17D-07  2850.59
    6     3     3     1.09609504    -0.72764000  -262.06884744    -0.00000164    -0.00000010  0.61D-08  0.17D-07  2850.59
    6     4     4     1.08819288    -0.70189372  -261.80048148    -0.00000154    -0.00000011  0.59D-08  0.21D-07  2850.59
    6     5     5     1.08819279    -0.70189371  -261.80048147    -0.00000158    -0.00000011  0.60D-08  0.25D-07  2850.59
    6     6     6     1.08819283    -0.70189371  -261.80048147    -0.00000161    -0.00000012  0.61D-08  0.25D-07  2850.59
    6     7     7     1.08819284    -0.70189370  -261.80048147    -0.00000161    -0.00000012  0.61D-08  0.25D-07  2850.59
    6     8     8     1.08819268    -0.70189369  -261.80048146    -0.00000173    -0.00000012  0.66D-08  0.24D-07  2850.59
    6     9     9     1.08877587    -0.70369241  -261.79705297    -0.00000190    -0.00000012  0.76D-08  0.24D-07  2850.59
    6    10    10     1.08877568    -0.70375967  -261.79705297    -0.00000197    -0.00000013  0.78D-08  0.26D-07  2850.59
    6    11    11     1.08877555    -0.70375966  -261.79705297    -0.00000198    -0.00000013  0.80D-08  0.26D-07  2850.59
    6    12    12     1.08862345    -0.70262250  -261.79591581    -0.00000158    -0.00000010  0.54D-08  0.21D-07  2850.59
    7     1     1     1.09610465    -0.72764011  -262.06884755    -0.00000010    -0.00000001  0.53D-09  0.11D-08  3425.30
    7     2     2     1.09610465    -0.72764011  -262.06884755    -0.00000011    -0.00000001  0.60D-09  0.12D-08  3425.30
    7     3     3     1.09610466    -0.72764011  -262.06884755    -0.00000011    -0.00000001  0.62D-09  0.13D-08  3425.30
    7     4     4     1.08820017    -0.70189384  -261.80048160    -0.00000012    -0.00000001  0.53D-09  0.23D-08  3425.30
    7     5     5     1.08819993    -0.70189384  -261.80048160    -0.00000013    -0.00000001  0.60D-09  0.30D-08  3425.30
    7     6     6     1.08820004    -0.70189384  -261.80048160    -0.00000013    -0.00000001  0.63D-09  0.29D-08  3425.30
    7     7     7     1.08819974    -0.70189384  -261.80048160    -0.00000014    -0.00000001  0.56D-09  0.34D-08  3425.30
    7     8     8     1.08819970    -0.70189384  -261.80048160    -0.00000014    -0.00000001  0.55D-09  0.35D-08  3425.30
    7     9     9     1.08878505    -0.70369256  -261.79705312    -0.00000015    -0.00000001  0.82D-09  0.28D-08  3425.30
    7    10    10     1.08878506    -0.70375982  -261.79705312    -0.00000015    -0.00000001  0.80D-09  0.28D-08  3425.30
    7    11    11     1.08878507    -0.70375982  -261.79705312    -0.00000015    -0.00000001  0.75D-09  0.26D-08  3425.30
    7    12    12     1.08863000    -0.70262262  -261.79591593    -0.00000012    -0.00000001  0.47D-09  0.24D-08  3425.30


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.5%
 S   0.3%   6.2%
 P   0.3%  45.3%  39.1%

 Initialization:   1.2%
 Other:            7.1%

 Total CPU:     3425.3 seconds
 =====================================



 Wavefunction saved on  5203.2

 Reference coefficients greater than 0.0500000
 =============================================
 2222222222/22000          -0.0405069  -0.0454594   0.9464391  -0.0000000   0.0000000  -0.0000000  -0.0000000   0.0000000
                           -0.0791964   0.0030836  -0.0004173  -0.0000000
 22222222222/2000          -0.1388362   0.9373641   0.0390814   0.0000000   0.0000000  -0.0000000   0.0000000  -0.0000000
                           -0.0030888  -0.0791905   0.0010423   0.0000000
 222222222222/000           0.9373035   0.1368806   0.0466905  -0.0000000   0.0000000  -0.0000000   0.0000000   0.0000000
                           -0.0003764   0.0010577   0.0792496  -0.0000000
 2222222222/2/0\0          -0.0000000  -0.0000000   0.0000000   0.6976608   0.2079116   0.2437175  -0.0615710   0.1374366
                            0.0000000  -0.0000000   0.0000000  -0.5531858
 22222222222//0\0          -0.0667356  -0.0097458  -0.0033243   0.0357807  -0.0925773   0.1004987  -0.4943359  -0.4412578
                           -0.0031298   0.0087954   0.6589843  -0.0000000
 2222222222/2/\00          -0.0667356  -0.0097458  -0.0033243  -0.0357807   0.0925773  -0.1004988   0.4943359   0.4412578
                           -0.0031298   0.0087955   0.6589842  -0.0000000
 2222222222//20\0          -0.0028841  -0.0032367   0.0673860  -0.0365511   0.3353172  -0.4037493  -0.3567739   0.2344191
                            0.6585424  -0.0256409   0.0034699   0.0000000
 2222222222/2/00\          -0.0028841  -0.0032367   0.0673860   0.0365511  -0.3353173   0.4037495   0.3567740  -0.2344192
                            0.6585421  -0.0256409   0.0034699   0.0000000
 2222222222//2\00           0.0098851  -0.0667399  -0.0027826  -0.0362090  -0.4185353   0.1490457  -0.2766299   0.4287252
                           -0.0256846  -0.6584930   0.0086669   0.0000000
 22222222222//00\          -0.0098851   0.0667399   0.0027826  -0.0362091  -0.4185356   0.1490459  -0.2766302   0.4287255
                            0.0256846   0.6584923  -0.0086669   0.0000000
 22222222222//\00          -0.0000000   0.0000000  -0.0000000   0.6489166  -0.2571904  -0.3462761   0.0586804  -0.0380264
                           -0.0000000   0.0000000   0.0000000   0.5531856
 2222222222//200\          -0.0000000  -0.0000000   0.0000000   0.0487445   0.4651021   0.5899936  -0.1202514   0.1754631
                           -0.0000000  -0.0000000   0.0000000   0.5531856
 222222222222000/           0.0367044   0.0053602   0.0018284  -0.0000000   0.0000000  -0.0000000   0.0000000   0.0000000
                           -0.0005862   0.0016474   0.1234263  -0.0000000
 2222222222022/00          -0.0015862  -0.0017802   0.0370620  -0.0000000   0.0000000  -0.0000000  -0.0000000   0.0000000
                           -0.1233431   0.0048025  -0.0006499  -0.0000000
 22222222222020/0          -0.0054368   0.0367069   0.0015304   0.0000000   0.0000001  -0.0000000   0.0000000  -0.0000001
                           -0.0048107  -0.1233343   0.0016233   0.0000000
 22222222222/\0/0          -0.0317160  -0.0046317  -0.0015799  -0.0002573   0.0006658  -0.0007227   0.0035550   0.0031733
                            0.0005316  -0.0014939  -0.1119267   0.0000000
 2222222222/2\/00          -0.0317159  -0.0046317  -0.0015799   0.0002573  -0.0006657   0.0007227  -0.0035549  -0.0031732
                            0.0005316  -0.0014939  -0.1119263   0.0000000
 2222222222/2\00/           0.0013706   0.0015382  -0.0320249   0.0002629  -0.0024116   0.0029037   0.0025659  -0.0016859
                            0.1118518  -0.0043550   0.0005894   0.0000000
 2222222222/\20/0           0.0013706   0.0015382  -0.0320251  -0.0002629   0.0024116  -0.0029037  -0.0025659   0.0016859
                            0.1118515  -0.0043550   0.0005894   0.0000000
 22222222222/\00/           0.0046979  -0.0317179  -0.0013224  -0.0002604  -0.0030100   0.0010719  -0.0019895   0.0030833
                            0.0043625   0.1118433  -0.0014721  -0.0000000
 2222222222/\2/00           0.0046979  -0.0317180  -0.0013224   0.0002604   0.0030099  -0.0010719   0.0019894  -0.0030832
                            0.0043624   0.1118428  -0.0014720  -0.0000000

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.943464   -0.139749   -0.040773    0.000000    0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.004347
             0.001268    0.029344
 2           0.137780    0.943525   -0.045758   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.000000   -0.029346
             0.001423    0.004285
 3           0.046997    0.039338    0.952660    0.000000   -0.000000    0.000000   -0.000000    0.000000   -0.000000   -0.001224
            -0.029630    0.001462
 4          -0.000000   -0.000000   -0.000000   -0.326746   -0.051231    0.051715   -0.050625    0.896811    0.000000   -0.000000
             0.000000   -0.000000
 5           0.000000   -0.000000   -0.000000    0.536162   -0.592169   -0.474427    0.130984    0.196271    0.000000   -0.000000
            -0.000000   -0.000000
 6          -0.000000    0.000000   -0.000000    0.691480    0.210879    0.571249   -0.142192    0.223014    0.000000    0.000000
             0.000000   -0.000000
 7           0.000000   -0.000000    0.000000   -0.134196   -0.391393    0.504785    0.699416   -0.060878   -0.000000   -0.000000
             0.000000    0.000000
 8           0.000000    0.000000   -0.000000    0.168842    0.606587   -0.331670    0.624318    0.150536    0.000000    0.000000
            -0.000000   -0.000000
 9           0.000150    0.001232    0.031593   -0.000000   -0.000000   -0.000000    0.000000    0.000000   -0.000000    0.037327
             0.957059   -0.004549
 10         -0.000422    0.031591   -0.001230   -0.000000   -0.000000    0.000000    0.000000   -0.000000    0.000000    0.956987
            -0.037264    0.012782
 11         -0.031615   -0.000416    0.000166    0.000000    0.000000   -0.000000   -0.000000    0.000000    0.000000   -0.012596
             0.005043    0.957702
 12          0.000000    0.000000    0.000000   -0.000000    0.000000    0.000000   -0.000000   -0.000000    0.958408   -0.000000
             0.000000   -0.000000

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.955091    0.000000    0.000000   -0.000000    0.000000   -0.000000    0.000000   -0.000000   -0.000040   -0.000144
            -0.000900    0.000000
 2           0.000000    0.955091    0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.000000   -0.000008    0.000901
            -0.000144    0.000000
 3           0.000000    0.000000    0.955091   -0.000000   -0.000000    0.000000    0.000000   -0.000000    0.000911    0.000002
            -0.000041    0.000000
 4          -0.000000   -0.000000   -0.000000    0.958590   -0.000000    0.000000    0.000000   -0.000000   -0.000000    0.000000
             0.000000    0.000000
 5           0.000000   -0.000000   -0.000000   -0.000000    0.958590   -0.000000    0.000000   -0.000000   -0.000000   -0.000000
             0.000000   -0.000000
 6          -0.000000    0.000000    0.000000    0.000000   -0.000000    0.958590    0.000000   -0.000000   -0.000000    0.000000
             0.000000   -0.000000
 7           0.000000   -0.000000    0.000000    0.000000    0.000000    0.000000    0.958590   -0.000000    0.000000    0.000000
            -0.000000   -0.000000
 8          -0.000000    0.000000   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.958590    0.000000    0.000000
             0.000000   -0.000000
 9          -0.000040   -0.000008    0.000911   -0.000000   -0.000000   -0.000000    0.000000    0.000000    0.958319   -0.000000
             0.000000    0.000000
 10         -0.000144    0.000901    0.000002    0.000000   -0.000000    0.000000    0.000000    0.000000   -0.000000    0.958319
            -0.000000    0.000000
 11         -0.000900   -0.000144   -0.000041    0.000000    0.000000    0.000000   -0.000000    0.000000    0.000000   -0.000000
             0.958319   -0.000000
 12          0.000000    0.000000    0.000000    0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.000000
            -0.000000    0.958408


 RESULTS FOR STATE 1.2
 =====================

 Coefficient of reference function:   C(0) = 0.94346445 (fixed)   0.95513720 (relaxed)   0.95509062 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00013545   -0.00013779   -0.59927007
 Singles      0.01324524   -0.03954388   -0.04486012
 Pairs        0.08287243   -0.03124311   -0.08350992
 Total        1.09625311   -0.07092478   -0.72764011
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -261.34095291
 Nuclear energy                         0.00000000
 Kinetic energy                        83.22000526
 One electron energy                 -454.73286692
 Two electron energy                  192.66401937
 Virial quotient                       -3.14910876
 Correlation energy                    -0.72789464
 !MRCI STATE 1.2 Energy              -262.068847546014

 Properties without orbital relaxation:

 !MRCI STATE 1.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -262.13890967 (Davidson, fixed reference)
 Cluster corrected energies          -262.13883184 (Davidson, relaxed reference)
 Cluster corrected energies          -262.13890967 (Davidson, rotated reference)

 Cluster corrected energies          -262.13861352 (Pople, fixed reference)
 Cluster corrected energies          -262.13852941 (Pople, relaxed reference)
 Cluster corrected energies          -262.13861352 (Pople, rotated reference)



 RESULTS FOR STATE 2.2
 =====================

 Coefficient of reference function:   C(0) = 0.94352537 (fixed)   0.95513720 (relaxed)   0.95509062 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00013544   -0.00013779   -0.62360769
 Singles      0.01324541   -0.03954416   -0.04486027
 Pairs        0.08287226   -0.00456264   -0.05917215
 Total        1.09625311   -0.04424459   -0.72764011
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -261.34095291
 Nuclear energy                         0.00000000
 Kinetic energy                        83.21999819
 One electron energy                 -454.73285306
 Two electron energy                  192.66400551
 Virial quotient                       -3.14910903
 Correlation energy                    -0.72789464
 !MRCI STATE 2.2 Energy              -262.068847545686

 Properties without orbital relaxation:

 !MRCI STATE 2.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -262.13890967 (Davidson, fixed reference)
 Cluster corrected energies          -262.13883184 (Davidson, relaxed reference)
 Cluster corrected energies          -262.13890967 (Davidson, rotated reference)

 Cluster corrected energies          -262.13861351 (Pople, fixed reference)
 Cluster corrected energies          -262.13852941 (Pople, relaxed reference)
 Cluster corrected energies          -262.13861351 (Pople, rotated reference)



 RESULTS FOR STATE 3.2
 =====================

 Coefficient of reference function:   C(0) = 0.95266000 (fixed)   0.95513720 (relaxed)   0.95509062 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00013545   -0.00013779   -0.62634993
 Singles      0.01324549   -0.03954427   -0.04486035
 Pairs        0.08287219   -0.00155633   -0.05642982
 Total        1.09625312   -0.04123839   -0.72764011
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -261.34095291
 Nuclear energy                         0.00000000
 Kinetic energy                        83.21999561
 One electron energy                 -454.73284977
 Two electron energy                  192.66400222
 Virial quotient                       -3.14910912
 Correlation energy                    -0.72789464
 !MRCI STATE 3.2 Energy              -262.068847545095

 Properties without orbital relaxation:

 !MRCI STATE 3.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -262.13890968 (Davidson, fixed reference)
 Cluster corrected energies          -262.13883185 (Davidson, relaxed reference)
 Cluster corrected energies          -262.13890968 (Davidson, rotated reference)

 Cluster corrected energies          -262.13861353 (Pople, fixed reference)
 Cluster corrected energies          -262.13852942 (Pople, relaxed reference)
 Cluster corrected energies          -262.13861353 (Pople, rotated reference)



 RESULTS FOR STATE 4.2
 =====================

 Maximum overlap with reference state  8

 Coefficient of reference function:   C(0) = 0.89681087 (fixed)   0.95859229 (relaxed)   0.95858987 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00005881   -0.00018670   -0.60053935
 Singles      0.01392910   -0.04838967   -0.05344584
 Pairs        0.07427625    0.00000000   -0.04790865
 Total        1.08826416   -0.04857637   -0.70189384
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -261.09858776
 Nuclear energy                         0.00000000
 Kinetic energy                        82.81607823
 One electron energy                 -449.02245927
 Two electron energy                  187.22197767
 Virial quotient                       -3.16122771
 Correlation energy                    -0.70189384
 !MRCI STATE 4.2 Energy              -261.800481603636

 Properties without orbital relaxation:

 !MRCI STATE 4.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -261.86243368 (Davidson, fixed reference)
 Cluster corrected energies          -261.86242983 (Davidson, relaxed reference)
 Cluster corrected energies          -261.86243368 (Davidson, rotated reference)

 Cluster corrected energies          -261.86173725 (Pople, fixed reference)
 Cluster corrected energies          -261.86173314 (Pople, relaxed reference)
 Cluster corrected energies          -261.86173725 (Pople, rotated reference)



 RESULTS FOR STATE 5.2
 =====================

 Coefficient of reference function:   C(0) = 0.59216934 (fixed)   0.95859240 (relaxed)   0.95858998 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00005881   -0.00018670   -0.60053924
 Singles      0.01392924   -0.04838993   -0.05344599
 Pairs        0.07427587    0.00000000   -0.04790861
 Total        1.08826392   -0.04857663   -0.70189384
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -261.09858776
 Nuclear energy                         0.00000000
 Kinetic energy                        82.81608492
 One electron energy                 -449.02246393
 Two electron energy                  187.22198232
 Virial quotient                       -3.16122746
 Correlation energy                    -0.70189384
 !MRCI STATE 5.2 Energy              -261.800481601884

 Properties without orbital relaxation:

 !MRCI STATE 5.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -261.86243350 (Davidson, fixed reference)
 Cluster corrected energies          -261.86242965 (Davidson, relaxed reference)
 Cluster corrected energies          -261.86243350 (Davidson, rotated reference)

 Cluster corrected energies          -261.86173706 (Pople, fixed reference)
 Cluster corrected energies          -261.86173296 (Pople, relaxed reference)
 Cluster corrected energies          -261.86173706 (Pople, rotated reference)



 RESULTS FOR STATE 6.2
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.69148049 (fixed)   0.95859234 (relaxed)   0.95858993 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00005881   -0.00018670   -0.60053906
 Singles      0.01392929   -0.04839006   -0.05344606
 Pairs        0.07427594    0.00000000   -0.04790872
 Total        1.08826404   -0.04857675   -0.70189384
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -261.09858776
 Nuclear energy                         0.00000000
 Kinetic energy                        82.81608521
 One electron energy                 -449.02246109
 Two electron energy                  187.22197948
 Virial quotient                       -3.16122745
 Correlation energy                    -0.70189384
 !MRCI STATE 6.2 Energy              -261.800481601819

 Properties without orbital relaxation:

 !MRCI STATE 6.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -261.86243359 (Davidson, fixed reference)
 Cluster corrected energies          -261.86242974 (Davidson, relaxed reference)
 Cluster corrected energies          -261.86243359 (Davidson, rotated reference)

 Cluster corrected energies          -261.86173715 (Pople, fixed reference)
 Cluster corrected energies          -261.86173305 (Pople, relaxed reference)
 Cluster corrected energies          -261.86173715 (Pople, rotated reference)



 RESULTS FOR STATE 7.2
 =====================

 Coefficient of reference function:   C(0) = 0.69941647 (fixed)   0.95859248 (relaxed)   0.95859006 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00005881   -0.00018670   -0.60053946
 Singles      0.01392919   -0.04838981   -0.05344592
 Pairs        0.07427573    0.00000001   -0.04790846
 Total        1.08826373   -0.04857650   -0.70189384
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -261.09858776
 Nuclear energy                         0.00000000
 Kinetic energy                        82.81608630
 One electron energy                 -449.02246885
 Two electron energy                  187.22198725
 Virial quotient                       -3.16122741
 Correlation energy                    -0.70189384
 !MRCI STATE 7.2 Energy              -261.800481601336

 Properties without orbital relaxation:

 !MRCI STATE 7.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -261.86243337 (Davidson, fixed reference)
 Cluster corrected energies          -261.86242952 (Davidson, relaxed reference)
 Cluster corrected energies          -261.86243337 (Davidson, rotated reference)

 Cluster corrected energies          -261.86173692 (Pople, fixed reference)
 Cluster corrected energies          -261.86173282 (Pople, relaxed reference)
 Cluster corrected energies          -261.86173692 (Pople, rotated reference)



 RESULTS FOR STATE 8.2
 =====================

 Maximum overlap with reference state  7

 Coefficient of reference function:   C(0) = 0.62431830 (fixed)   0.95859250 (relaxed)   0.95859008 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00005881   -0.00018670   -0.60053953
 Singles      0.01392918   -0.04838976   -0.05344590
 Pairs        0.07427570    0.00000002   -0.04790841
 Total        1.08826369   -0.04857645   -0.70189384
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -261.09858776
 Nuclear energy                         0.00000000
 Kinetic energy                        82.81608646
 One electron energy                 -449.02247065
 Two electron energy                  187.22198905
 Virial quotient                       -3.16122740
 Correlation energy                    -0.70189384
 !MRCI STATE 8.2 Energy              -261.800481600979

 Properties without orbital relaxation:

 !MRCI STATE 8.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -261.86243334 (Davidson, fixed reference)
 Cluster corrected energies          -261.86242949 (Davidson, relaxed reference)
 Cluster corrected energies          -261.86243334 (Davidson, rotated reference)

 Cluster corrected energies          -261.86173689 (Pople, fixed reference)
 Cluster corrected energies          -261.86173279 (Pople, relaxed reference)
 Cluster corrected energies          -261.86173689 (Pople, rotated reference)



 RESULTS FOR STATE 9.2
 =====================

 Maximum overlap with reference state 11

 Coefficient of reference function:   C(0) = 0.95705942 (fixed)   0.95832931 (relaxed)   0.95831917 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00008636   -0.00023307   -0.60427699
 Singles      0.01440395   -0.04887642   -0.05419179
 Pairs        0.07438877    0.00310767   -0.04522377
 Total        1.08887907   -0.04600182   -0.70369256
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -261.09354783
 Nuclear energy                         0.00000000
 Kinetic energy                        82.83880866
 One electron energy                 -449.14486799
 Two electron energy                  187.34781486
 Virial quotient                       -3.16031891
 Correlation energy                    -0.70350529
 !MRCI STATE 9.2 Energy              -261.797053124191

 Properties without orbital relaxation:

 !MRCI STATE 9.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -261.85958002 (Davidson, fixed reference)
 Cluster corrected energies          -261.85956381 (Davidson, relaxed reference)
 Cluster corrected energies          -261.85958002 (Davidson, rotated reference)

 Cluster corrected energies          -261.85891070 (Pople, fixed reference)
 Cluster corrected energies          -261.85889340 (Pople, relaxed reference)
 Cluster corrected energies          -261.85891070 (Pople, rotated reference)



 RESULTS FOR STATE 10.2
 ======================

 Coefficient of reference function:   C(0) = 0.95698734 (fixed)   0.95832931 (relaxed)   0.95831916 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00008636   -0.00023307   -0.59346444
 Singles      0.01440391   -0.04887635   -0.05419264
 Pairs        0.07438881   -0.00873323   -0.05610274
 Total        1.08887908   -0.05784264   -0.70375982
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -261.09354783
 Nuclear energy                         0.00000000
 Kinetic energy                        82.83881020
 One electron energy                 -449.14487270
 Two electron energy                  187.34781958
 Virial quotient                       -3.16031885
 Correlation energy                    -0.70350529
 !MRCI STATE 10.2 Energy             -261.797053122666

 Properties without orbital relaxation:

 !MRCI STATE 10.2 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -261.85958003 (Davidson, fixed reference)
 Cluster corrected energies          -261.85956381 (Davidson, relaxed reference)
 Cluster corrected energies          -261.85958003 (Davidson, rotated reference)

 Cluster corrected energies          -261.85891070 (Pople, fixed reference)
 Cluster corrected energies          -261.85889340 (Pople, relaxed reference)
 Cluster corrected energies          -261.85891070 (Pople, rotated reference)



 RESULTS FOR STATE 11.2
 ======================

 Maximum overlap with reference state 12

 Coefficient of reference function:   C(0) = 0.95770177 (fixed)   0.95832930 (relaxed)   0.95831916 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00008636   -0.00023307   -0.00057128
 Singles      0.01440382   -0.04887619   -0.05419254
 Pairs        0.07438892   -0.65432235   -0.64899599
 Total        1.08887909   -0.70343160   -0.70375982
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -261.09354783
 Nuclear energy                         0.00000000
 Kinetic energy                        82.83880679
 One electron energy                 -449.14486982
 Two electron energy                  187.34781670
 Virial quotient                       -3.16031898
 Correlation energy                    -0.70350529
 !MRCI STATE 11.2 Energy             -261.797053119858

 Properties without orbital relaxation:

 !MRCI STATE 11.2 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -261.85958003 (Davidson, fixed reference)
 Cluster corrected energies          -261.85956381 (Davidson, relaxed reference)
 Cluster corrected energies          -261.85958003 (Davidson, rotated reference)

 Cluster corrected energies          -261.85891071 (Pople, fixed reference)
 Cluster corrected energies          -261.85889341 (Pople, relaxed reference)
 Cluster corrected energies          -261.85891071 (Pople, rotated reference)



 RESULTS FOR STATE 12.2
 ======================

 Maximum overlap with reference state  9

 Coefficient of reference function:   C(0) = 0.95840752 (fixed)   0.95840993 (relaxed)   0.95840752 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00004438   -0.00014432   -0.60036420
 Singles      0.01432272   -0.04905034   -0.05429594
 Pairs        0.07431122    0.00000002   -0.04796248
 Total        1.08867832   -0.04919464   -0.70262262
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -261.09336057
 Nuclear energy                         0.00000000
 Kinetic energy                        82.81595262
 One electron energy                 -449.01316005
 Two electron energy                  187.21724413
 Virial quotient                       -3.16117738
 Correlation energy                    -0.70255536
 !MRCI STATE 12.2 Energy             -261.795915925680

 Properties without orbital relaxation:

 !MRCI STATE 12.2 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -261.85821735 (Davidson, fixed reference)
 Cluster corrected energies          -261.85821351 (Davidson, relaxed reference)
 Cluster corrected energies          -261.85821735 (Davidson, rotated reference)

 Cluster corrected energies          -261.85753952 (Pople, fixed reference)
 Cluster corrected energies          -261.85753543 (Pople, relaxed reference)
 Cluster corrected energies          -261.85753952 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       39.05       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       6      835.17       700     1000      520     2100     2140     5203   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *      4500.02   4495.94      2.93      0.09      0.88
 REAL TIME  *      4622.02 SEC
 DISK USED  *       874.31 MB (local),        6.88 GB (total)
 SF USED    *         8.55 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =      -262.13890967  AU                              
 SETTING HLSDIAG(2)     =      -262.13890967  AU                              
 SETTING HLSDIAG(3)     =      -262.13890968  AU                              
 SETTING HLSDIAG(4)     =      -261.86243368  AU                              
 SETTING HLSDIAG(5)     =      -261.86243350  AU                              
 SETTING HLSDIAG(6)     =      -261.86243359  AU                              
 SETTING HLSDIAG(7)     =      -261.86243337  AU                              
 SETTING HLSDIAG(8)     =      -261.86243334  AU                              
 SETTING HLSDIAG(9)     =      -261.85958002  AU                              
 SETTING HLSDIAG(10)    =      -261.85958003  AU                              
 SETTING HLSDIAG(11)    =      -261.85958003  AU                              
 SETTING HLSDIAG(12)    =      -261.85821735  AU                              


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 9  Roots:    1   2   3   4   5   6   7   8   9
 Number of reference states: 9  Roots:    1   2   3   4   5   6   7   8   9

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
     1      -261.10524595
     2      -261.10524595
     3      -261.10524595
     4      -261.10046249
     5      -261.10046249
     6      -261.10046249
     7      -261.10046249
     8      -261.10046249
     9      -261.09342849

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.3621D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1020D-06

 Number of blocks in overlap matrix:   990   Smallest eigenvalue:  0.10D-06
 Number of N-2 electron functions:    2080
 Number of N-1 electron functions:   43460

 Number of internal configurations:                10812
 Number of singly external configurations:       2092696
 Number of doubly external configurations:       4793008
 Total number of contracted configurations:      6896516
 Total number of uncontracted configurations:  136499244

 Diagonal Coupling coefficients finished.               Storage:   8771366 words, CPU-Time:     14.22 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   1561661 words, CPU-time:      0.23 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -261.10524595     0.00000000    -0.86684078  0.33D-01  0.12D+00    17.72
    1     2     2     1.00000000     0.00000000  -261.10524595    -0.00000000    -0.86588565  0.33D-01  0.12D+00    17.72
    1     3     3     1.00000000     0.00000000  -261.10524595     0.00000000    -0.86559749  0.33D-01  0.12D+00    17.72
    1     4     4     1.00000000     0.00000000  -261.10046249     0.00000000    -0.86857562  0.32D-01  0.12D+00    17.72
    1     5     5     1.00000000     0.00000000  -261.10046249     0.00000000    -0.86791677  0.33D-01  0.12D+00    17.72
    1     6     6     1.00000000     0.00000000  -261.10046249    -0.00000000    -0.86667481  0.33D-01  0.12D+00    17.72
    1     7     7     1.00000000     0.00000000  -261.10046249     0.00000000    -0.86624449  0.33D-01  0.12D+00    17.72
    1     8     8     1.00000000     0.00000000  -261.10046249     0.00000000    -0.86812639  0.33D-01  0.12D+00    17.72
    1     9     9     1.00000000     0.00000000  -261.09342849     0.00000000    -0.86965286  0.33D-01  0.12D+00    17.72
    2     1     1     1.09317936    -0.68486750  -261.79011346    -0.68486750    -0.01701311  0.17D-02  0.16D-02   294.68
    2     2     2     1.09329135    -0.68479447  -261.79004042    -0.68479447    -0.01708274  0.17D-02  0.16D-02   294.68
    2     3     3     1.09372426    -0.68478771  -261.79003366    -0.68478771    -0.01711387  0.17D-02  0.16D-02   294.68
    2     4     4     1.09327238    -0.68551057  -261.78597306    -0.68551057    -0.01691378  0.17D-02  0.16D-02   294.68
    2     5     5     1.09339083    -0.68547176  -261.78593425    -0.68547176    -0.01696964  0.17D-02  0.16D-02   294.68
    2     6     6     1.09393592    -0.68538445  -261.78584693    -0.68538445    -0.01707878  0.17D-02  0.16D-02   294.68
    2     7     7     1.09361091    -0.68509459  -261.78555707    -0.68509459    -0.01738985  0.16D-02  0.17D-02   294.68
    2     8     8     1.09348610    -0.68498487  -261.78544736    -0.68498487    -0.01746063  0.16D-02  0.17D-02   294.68
    2     9     9     1.09419572    -0.68572965  -261.77915814    -0.68572965    -0.01749248  0.17D-02  0.17D-02   294.68
    3     1     1     1.08761072    -0.70080422  -261.80605018    -0.01593672    -0.00024881  0.27D-04  0.29D-04   562.36
    3     2     2     1.08750620    -0.70080290  -261.80604885    -0.01600843    -0.00024929  0.26D-04  0.30D-04   562.36
    3     3     3     1.08750372    -0.70079921  -261.80604517    -0.01601151    -0.00025175  0.26D-04  0.31D-04   562.36
    3     4     4     1.08786570    -0.70135811  -261.80182060    -0.01584754    -0.00024492  0.26D-04  0.28D-04   562.36
    3     5     5     1.08776294    -0.70135720  -261.80181968    -0.01588544    -0.00024495  0.26D-04  0.29D-04   562.36
    3     6     6     1.08774229    -0.70135458  -261.80181707    -0.01597014    -0.00024629  0.26D-04  0.29D-04   562.36
    3     7     7     1.08771917    -0.70134640  -261.80180889    -0.01625182    -0.00025260  0.25D-04  0.32D-04   562.36
    3     8     8     1.08763111    -0.70133145  -261.80179393    -0.01634657    -0.00026255  0.25D-04  0.35D-04   562.36
    3     9     9     1.08806330    -0.70212055  -261.79554904    -0.01639090    -0.00026487  0.32D-04  0.34D-04   562.36
    4     1     1     1.08780783    -0.70106502  -261.80631097    -0.00026079    -0.00000986  0.89D-06  0.18D-05   830.07
    4     2     2     1.08779023    -0.70106486  -261.80631081    -0.00026196    -0.00001005  0.88D-06  0.19D-05   830.07
    4     3     3     1.08778614    -0.70106442  -261.80631038    -0.00026521    -0.00001035  0.87D-06  0.20D-05   830.07
    4     4     4     1.08805228    -0.70161297  -261.80207546    -0.00025486    -0.00000912  0.85D-06  0.17D-05   830.07
    4     5     5     1.08803390    -0.70161283  -261.80207531    -0.00025563    -0.00000928  0.84D-06  0.17D-05   830.07
    4     6     6     1.08803040    -0.70161239  -261.80207487    -0.00025780    -0.00000961  0.84D-06  0.18D-05   830.07
    4     7     7     1.08801618    -0.70161184  -261.80207432    -0.00026543    -0.00000999  0.84D-06  0.19D-05   830.07
    4     8     8     1.08799138    -0.70161015  -261.80207263    -0.00027870    -0.00001124  0.83D-06  0.22D-05   830.07
    4     9     9     1.08834894    -0.70240030  -261.79582879    -0.00027975    -0.00001119  0.99D-06  0.22D-05   830.07
    5     1     1     1.08789388    -0.70107672  -261.80632267    -0.00001170    -0.00000073  0.24D-07  0.17D-06  1098.18
    5     2     2     1.08789393    -0.70107671  -261.80632266    -0.00001185    -0.00000073  0.24D-07  0.17D-06  1098.18
    5     3     3     1.08789300    -0.70107668  -261.80632263    -0.00001225    -0.00000076  0.26D-07  0.18D-06  1098.18
    5     4     4     1.08813608    -0.70162359  -261.80208608    -0.00001062    -0.00000064  0.18D-07  0.16D-06  1098.18
    5     5     5     1.08813663    -0.70162358  -261.80208606    -0.00001075    -0.00000065  0.17D-07  0.16D-06  1098.18
    5     6     6     1.08813585    -0.70162356  -261.80208604    -0.00001117    -0.00000067  0.19D-07  0.16D-06  1098.18
    5     7     7     1.08813331    -0.70162352  -261.80208601    -0.00001169    -0.00000071  0.21D-07  0.17D-06  1098.18
    5     8     8     1.08813109    -0.70162341  -261.80208590    -0.00001327    -0.00000080  0.25D-07  0.19D-06  1098.18
    5     9     9     1.08847090    -0.70241320  -261.79584169    -0.00001290    -0.00000086  0.17D-07  0.23D-06  1098.18
    6     1     1     1.08791114    -0.70107764  -261.80632359    -0.00000092    -0.00000006  0.39D-08  0.12D-07  1365.83
    6     2     2     1.08791158    -0.70107764  -261.80632359    -0.00000093    -0.00000006  0.38D-08  0.13D-07  1365.83
    6     3     3     1.08791172    -0.70107764  -261.80632359    -0.00000096    -0.00000006  0.37D-08  0.13D-07  1365.83
    6     4     4     1.08815365    -0.70162438  -261.80208687    -0.00000079    -0.00000006  0.32D-08  0.15D-07  1365.83
    6     5     5     1.08815380    -0.70162438  -261.80208687    -0.00000081    -0.00000006  0.30D-08  0.14D-07  1365.83
    6     6     6     1.08815331    -0.70162438  -261.80208687    -0.00000082    -0.00000006  0.32D-08  0.15D-07  1365.83
    6     7     7     1.08815366    -0.70162438  -261.80208686    -0.00000085    -0.00000006  0.31D-08  0.15D-07  1365.83
    6     8     8     1.08815321    -0.70162437  -261.80208686    -0.00000096    -0.00000006  0.33D-08  0.16D-07  1365.83
    6     9     9     1.08849126    -0.70241418  -261.79584267    -0.00000097    -0.00000009  0.40D-08  0.27D-07  1365.83
    7     1     1     1.08791763    -0.70107771  -261.80632367    -0.00000008    -0.00000001  0.28D-09  0.13D-08  1633.19
    7     2     2     1.08791751    -0.70107771  -261.80632367    -0.00000007    -0.00000001  0.26D-09  0.12D-08  1633.19
    7     3     3     1.08791763    -0.70107771  -261.80632367    -0.00000007    -0.00000001  0.26D-09  0.12D-08  1633.19
    7     4     4     1.08815826    -0.70162445  -261.80208694    -0.00000007    -0.00000001  0.23D-09  0.17D-08  1633.19
    7     5     5     1.08815806    -0.70162445  -261.80208694    -0.00000007    -0.00000001  0.23D-09  0.16D-08  1633.19
    7     6     6     1.08815821    -0.70162445  -261.80208693    -0.00000007    -0.00000001  0.22D-09  0.16D-08  1633.19
    7     7     7     1.08815813    -0.70162445  -261.80208693    -0.00000007    -0.00000001  0.23D-09  0.17D-08  1633.19
    7     8     8     1.08815809    -0.70162444  -261.80208693    -0.00000007    -0.00000001  0.23D-09  0.17D-08  1633.19
    7     9     9     1.08849582    -0.70241427  -261.79584276    -0.00000010    -0.00000001  0.38D-09  0.27D-08  1633.19


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.6%
 S   0.4%   8.7%
 P   0.3%  48.1%  33.1%

 Initialization:   0.9%
 Other:            7.9%

 Total CPU:     1633.2 seconds
 =====================================



 Wavefunction saved on  5303.2

 Reference coefficients greater than 0.0500000
 =============================================
 22222222222///00          -0.0000000  -0.0000000  -0.0000000   0.7811771  -0.0000000  -0.0000000  -0.0000000  -0.0467311
                            0.5531804
 2222222222//200/          -0.0000000  -0.0000000   0.0000000  -0.3501176   0.0000000   0.0000000  -0.0000000   0.6998845
                            0.5531813
 2222222222//2/00           0.0000000  -0.0000000   0.6778218   0.0000000   0.0000000   0.6777266  -0.0000000  -0.0000000
                           -0.0000000
 2222222222/2//00          -0.0000000   0.6778218  -0.0000000   0.0000000  -0.6777267   0.0000000  -0.0000000   0.0000000
                            0.0000000
 2222222222//20/0           0.6778203   0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0000000   0.6777283  -0.0000000
                            0.0000000
 2222222222/2/00/           0.6778201   0.0000000  -0.0000000  -0.0000000   0.0000000  -0.0000000  -0.6777284   0.0000000
                           -0.0000000
 22222222222//0/0          -0.0000000   0.6778187  -0.0000000   0.0000000   0.6777300   0.0000000   0.0000000   0.0000000
                            0.0000000
 22222222222//00/           0.0000000  -0.0000000  -0.6778186  -0.0000000   0.0000000   0.6777300   0.0000000   0.0000000
                            0.0000000
 2222222222/2/0/0           0.0000000  -0.0000000   0.0000000   0.4310583   0.0000000  -0.0000000   0.0000000   0.6531533
                           -0.5531815

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1          -0.000000    0.958722   -0.000000    0.000000   -0.000000    0.000000    0.000000   -0.000000   -0.000000
 2           0.958722    0.000000    0.000000   -0.000000   -0.000002   -0.000000   -0.000000   -0.000000   -0.000000
 3          -0.000000    0.000000    0.958722   -0.000000    0.000000    0.000002    0.000000    0.000000    0.000000
 4           0.000000   -0.000000    0.000000    0.955878    0.000000    0.000000   -0.000000   -0.072394    0.000001
 5           0.000002    0.000000    0.000000   -0.000000    0.958616    0.000000   -0.000000    0.000000   -0.000000
 6           0.000000   -0.000000   -0.000002   -0.000000   -0.000000    0.958616   -0.000000   -0.000000    0.000000
 7          -0.000000   -0.000000   -0.000000    0.000000    0.000000    0.000000    0.958616    0.000000   -0.000000
 8           0.000000    0.000000   -0.000000    0.072394   -0.000000    0.000000   -0.000000    0.955878    0.000000
 9           0.000000    0.000000   -0.000000   -0.000001    0.000000   -0.000000    0.000000   -0.000000    0.958453

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.958722   -0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.000000   -0.000000    0.000000
 2          -0.000000    0.958722    0.000000    0.000000    0.000000    0.000000   -0.000000   -0.000000    0.000000
 3          -0.000000    0.000000    0.958722    0.000000    0.000000   -0.000000    0.000000    0.000000   -0.000000
 4          -0.000000    0.000000    0.000000    0.958616   -0.000000   -0.000000    0.000000    0.000000   -0.000000
 5           0.000000    0.000000    0.000000   -0.000000    0.958616    0.000000   -0.000000   -0.000000    0.000000
 6          -0.000000    0.000000   -0.000000   -0.000000    0.000000    0.958616   -0.000000    0.000000   -0.000000
 7           0.000000   -0.000000    0.000000    0.000000   -0.000000   -0.000000    0.958616   -0.000000    0.000000
 8          -0.000000   -0.000000    0.000000    0.000000   -0.000000    0.000000   -0.000000    0.958616   -0.000000
 9           0.000000    0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.000000   -0.000000    0.958453


 RESULTS FOR STATE 1.2
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.95872200 (fixed)   0.95872675 (relaxed)   0.95872200 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00004282   -0.00011999   -0.59981064
 Singles      0.01403293   -0.04853522   -0.05365153
 Pairs        0.07388847   -0.00000000   -0.04761555
 Total        1.08796422   -0.04865521   -0.70107771
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -261.10524595
 Nuclear energy                         0.00000000
 Kinetic energy                        82.80701544
 One electron energy                 -448.99952873
 Two electron energy                  187.19320506
 Virial quotient                       -3.16164424
 Correlation energy                    -0.70107771
 !MRCI STATE 1.2 Energy              -261.806323668320

 Properties without orbital relaxation:

 !MRCI STATE 1.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -261.86799342 (Davidson, fixed reference)
 Cluster corrected energies          -261.86798587 (Davidson, relaxed reference)
 Cluster corrected energies          -261.86799342 (Davidson, rotated reference)

 Cluster corrected energies          -261.86669013 (Pople, fixed reference)
 Cluster corrected energies          -261.86668218 (Pople, relaxed reference)
 Cluster corrected energies          -261.86669013 (Pople, rotated reference)



 RESULTS FOR STATE 2.2
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.95872205 (fixed)   0.95872680 (relaxed)   0.95872205 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00004282   -0.00011999   -0.59981094
 Singles      0.01403280   -0.04853496   -0.05365136
 Pairs        0.07388848    0.00000000   -0.04761540
 Total        1.08796410   -0.04865495   -0.70107771
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -261.10524595
 Nuclear energy                         0.00000000
 Kinetic energy                        82.80701213
 One electron energy                 -448.99953184
 Two electron energy                  187.19320817
 Virial quotient                       -3.16164437
 Correlation energy                    -0.70107771
 !MRCI STATE 2.2 Energy              -261.806323666261

 Properties without orbital relaxation:

 !MRCI STATE 2.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -261.86799334 (Davidson, fixed reference)
 Cluster corrected energies          -261.86798579 (Davidson, relaxed reference)
 Cluster corrected energies          -261.86799334 (Davidson, rotated reference)

 Cluster corrected energies          -261.86669004 (Pople, fixed reference)
 Cluster corrected energies          -261.86668209 (Pople, relaxed reference)
 Cluster corrected energies          -261.86669004 (Pople, rotated reference)



 RESULTS FOR STATE 3.2
 =====================

 Coefficient of reference function:   C(0) = 0.95872200 (fixed)   0.95872675 (relaxed)   0.95872200 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00004282   -0.00011999   -0.59981076
 Singles      0.01403285   -0.04853509   -0.05365144
 Pairs        0.07388854   -0.00000000   -0.04761551
 Total        1.08796421   -0.04865508   -0.70107771
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -261.10524595
 Nuclear energy                         0.00000000
 Kinetic energy                        82.80701383
 One electron energy                 -448.99952823
 Two electron energy                  187.19320457
 Virial quotient                       -3.16164430
 Correlation energy                    -0.70107771
 !MRCI STATE 3.2 Energy              -261.806323665067

 Properties without orbital relaxation:

 !MRCI STATE 3.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -261.86799341 (Davidson, fixed reference)
 Cluster corrected energies          -261.86798587 (Davidson, relaxed reference)
 Cluster corrected energies          -261.86799341 (Davidson, rotated reference)

 Cluster corrected energies          -261.86669012 (Pople, fixed reference)
 Cluster corrected energies          -261.86668218 (Pople, relaxed reference)
 Cluster corrected energies          -261.86669012 (Pople, rotated reference)



 RESULTS FOR STATE 4.2
 =====================

 Coefficient of reference function:   C(0) = 0.95587821 (fixed)   0.95861943 (relaxed)   0.95861572 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00004340   -0.00013029   -0.60005270
 Singles      0.01408252   -0.04867365   -0.05380598
 Pairs        0.07407957   -0.00000062   -0.04776578
 Total        1.08820548   -0.04880455   -0.70162445
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -261.10046249
 Nuclear energy                         0.00000000
 Kinetic energy                        82.81078462
 One electron energy                 -449.00575581
 Two electron energy                  187.20366887
 Virial quotient                       -3.16144918
 Correlation energy                    -0.70162445
 !MRCI STATE 4.2 Energy              -261.802086937979

 Properties without orbital relaxation:

 !MRCI STATE 4.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -261.86397406 (Davidson, fixed reference)
 Cluster corrected energies          -261.86396815 (Davidson, relaxed reference)
 Cluster corrected energies          -261.86397406 (Davidson, rotated reference)

 Cluster corrected energies          -261.86267880 (Pople, fixed reference)
 Cluster corrected energies          -261.86267257 (Pople, relaxed reference)
 Cluster corrected energies          -261.86267880 (Pople, rotated reference)



 RESULTS FOR STATE 5.2
 =====================

 Coefficient of reference function:   C(0) = 0.95861581 (fixed)   0.95861952 (relaxed)   0.95861581 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00004340   -0.00013029   -0.60005365
 Singles      0.01408226   -0.04867335   -0.05380574
 Pairs        0.07407962    0.00000000   -0.04776506
 Total        1.08820528   -0.04880365   -0.70162445
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -261.10046249
 Nuclear energy                         0.00000000
 Kinetic energy                        82.81078223
 One electron energy                 -449.00575579
 Two electron energy                  187.20366886
 Virial quotient                       -3.16144927
 Correlation energy                    -0.70162445
 !MRCI STATE 5.2 Energy              -261.802086935655

 Properties without orbital relaxation:

 !MRCI STATE 5.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -261.86397392 (Davidson, fixed reference)
 Cluster corrected energies          -261.86396800 (Davidson, relaxed reference)
 Cluster corrected energies          -261.86397392 (Davidson, rotated reference)

 Cluster corrected energies          -261.86267865 (Pople, fixed reference)
 Cluster corrected energies          -261.86267242 (Pople, relaxed reference)
 Cluster corrected energies          -261.86267865 (Pople, rotated reference)



 RESULTS FOR STATE 6.2
 =====================

 Coefficient of reference function:   C(0) = 0.95861574 (fixed)   0.95861945 (relaxed)   0.95861574 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00004340   -0.00013029   -0.60005347
 Singles      0.01408230   -0.04867345   -0.05380581
 Pairs        0.07407974    0.00000000   -0.04776517
 Total        1.08820544   -0.04880375   -0.70162445
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -261.10046249
 Nuclear energy                         0.00000000
 Kinetic energy                        82.81078286
 One electron energy                 -449.00574909
 Two electron energy                  187.20366215
 Virial quotient                       -3.16144924
 Correlation energy                    -0.70162445
 !MRCI STATE 6.2 Energy              -261.802086934954

 Properties without orbital relaxation:

 !MRCI STATE 6.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -261.86397402 (Davidson, fixed reference)
 Cluster corrected energies          -261.86396811 (Davidson, relaxed reference)
 Cluster corrected energies          -261.86397402 (Davidson, rotated reference)

 Cluster corrected energies          -261.86267876 (Pople, fixed reference)
 Cluster corrected energies          -261.86267253 (Pople, relaxed reference)
 Cluster corrected energies          -261.86267876 (Pople, rotated reference)



 RESULTS FOR STATE 7.2
 =====================

 Coefficient of reference function:   C(0) = 0.95861578 (fixed)   0.95861949 (relaxed)   0.95861578 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00004340   -0.00013029   -0.60005350
 Singles      0.01408227   -0.04867346   -0.05380581
 Pairs        0.07407968   -0.00000000   -0.04776514
 Total        1.08820535   -0.04880376   -0.70162445
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -261.10046249
 Nuclear energy                         0.00000000
 Kinetic energy                        82.81078478
 One electron energy                 -449.00574916
 Two electron energy                  187.20366223
 Virial quotient                       -3.16144917
 Correlation energy                    -0.70162445
 !MRCI STATE 7.2 Energy              -261.802086930503

 Properties without orbital relaxation:

 !MRCI STATE 7.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -261.86397396 (Davidson, fixed reference)
 Cluster corrected energies          -261.86396805 (Davidson, relaxed reference)
 Cluster corrected energies          -261.86397396 (Davidson, rotated reference)

 Cluster corrected energies          -261.86267869 (Pople, fixed reference)
 Cluster corrected energies          -261.86267247 (Pople, relaxed reference)
 Cluster corrected energies          -261.86267869 (Pople, rotated reference)



 RESULTS FOR STATE 8.2
 =====================

 Coefficient of reference function:   C(0) = 0.95587828 (fixed)   0.95861950 (relaxed)   0.95861579 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00004340   -0.00013029   -0.60005323
 Singles      0.01408257   -0.04867369   -0.05380604
 Pairs        0.07407935   -0.00000008   -0.04776517
 Total        1.08820532   -0.04880406   -0.70162444
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -261.10046249
 Nuclear energy                         0.00000000
 Kinetic energy                        82.81078653
 One electron energy                 -449.00575774
 Two electron energy                  187.20367082
 Virial quotient                       -3.16144910
 Correlation energy                    -0.70162444
 !MRCI STATE 8.2 Energy              -261.802086927254

 Properties without orbital relaxation:

 !MRCI STATE 8.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -261.86397393 (Davidson, fixed reference)
 Cluster corrected energies          -261.86396802 (Davidson, relaxed reference)
 Cluster corrected energies          -261.86397393 (Davidson, rotated reference)

 Cluster corrected energies          -261.86267867 (Pople, fixed reference)
 Cluster corrected energies          -261.86267244 (Pople, relaxed reference)
 Cluster corrected energies          -261.86267867 (Pople, rotated reference)



 RESULTS FOR STATE 9.2
 =====================

 Coefficient of reference function:   C(0) = 0.95845301 (fixed)   0.95845605 (relaxed)   0.95845301 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00007273   -0.00022019   -0.00024921
 Singles      0.01413533   -0.04870495   -0.05386062
 Pairs        0.07436693   -0.65348913   -0.64830445
 Total        1.08857499   -0.70241427   -0.70241427
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -261.09342849
 Nuclear energy                         0.00000000
 Kinetic energy                        82.81536504
 One electron energy                 -449.01025812
 Two electron energy                  187.21441535
 Virial quotient                       -3.16119892
 Correlation energy                    -0.70241427
 !MRCI STATE 9.2 Energy              -261.795842761596

 Properties without orbital relaxation:

 !MRCI STATE 9.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -261.85805910 (Davidson, fixed reference)
 Cluster corrected energies          -261.85805425 (Davidson, relaxed reference)
 Cluster corrected energies          -261.85805910 (Davidson, rotated reference)

 Cluster corrected energies          -261.85677639 (Pople, fixed reference)
 Cluster corrected energies          -261.85677128 (Pople, relaxed reference)
 Cluster corrected energies          -261.85677639 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       39.05       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       7     1317.13       700     1000      520     2100     2140     5203     5303   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *      6406.17   1906.14   4495.94      2.93      0.09      0.88
 REAL TIME  *      6583.41 SEC
 DISK USED  *         1.32 GB (local),       10.64 GB (total)
 SF USED    *         8.55 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(13)    =      -261.86799342  AU                              
 SETTING HLSDIAG(14)    =      -261.86799334  AU                              
 SETTING HLSDIAG(15)    =      -261.86799341  AU                              
 SETTING HLSDIAG(16)    =      -261.86397406  AU                              
 SETTING HLSDIAG(17)    =      -261.86397392  AU                              
 SETTING HLSDIAG(18)    =      -261.86397402  AU                              
 SETTING HLSDIAG(19)    =      -261.86397396  AU                              
 SETTING HLSDIAG(20)    =      -261.86397393  AU                              
 SETTING HLSDIAG(21)    =      -261.85805910  AU                              


         HLSDIAG
    -262.1389097
    -262.1389097
    -262.1389097
    -261.8624337
    -261.8624335
    -261.8624336
    -261.8624334
    -261.8624333
    -261.8595800
    -261.8595800
    -261.8595800
    -261.8582174
    -261.8679934
    -261.8679933
    -261.8679934
    -261.8639741
    -261.8639739
    -261.8639740
    -261.8639740
    -261.8639739
    -261.8580591
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Diagonal elements of H will be replaced by values from variable HLSDIAG


   ******************************
   *** Spin-orbit calculation ***
   ******************************


   Spin-orbit matrix elements
   ==========================

 Wavefunction restored from record  5203.2  Symmetry=2  S= 0.5  NSTATE=  12

 Original energies:   -262.068848   -262.068848   -262.068848   -261.800482   -261.800482   -261.800482   -261.800482   -261.800482
                      -261.797053   -261.797053   -261.797053   -261.795916
 Replaced energies:   -262.138910   -262.138910   -262.138910   -261.862434   -261.862434   -261.862434   -261.862433   -261.862433
                      -261.859580   -261.859580   -261.859580   -261.858217

 Wavefunction restored from record  5303.2  Symmetry=2  S= 1.5  NSTATE=   9

 Original energies:   -261.806324   -261.806324   -261.806324   -261.802087   -261.802087   -261.802087   -261.802087   -261.802087
                      -261.795843
 Replaced energies:   -261.867993   -261.867993   -261.867993   -261.863974   -261.863974   -261.863974   -261.863974   -261.863974
                      -261.858059



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=  -262.13890968

 Wigner-Eckart theorem used for 23 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00   -7192.52    -345.47     -62.53    -353.95     134.07    -185.15     445.67      13.18     331.31

    2   2.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         7192.52      -0.00     307.83      -0.88    -126.97     125.02    -483.32    -338.78       0.31      52.91

    3   3.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          345.47    -307.83      -0.00     588.80    -255.69    -303.90      22.35     -31.86       0.58      16.72

    4   4.2  0.5  0.5       0.00       0.00       0.00   60679.47       0.00       0.00       0.00       0.00       0.00       0.00
                           62.53       0.88    -588.80       0.00   -1716.64    1638.48    1435.25   -1095.09   -2344.27     -39.65

    5   5.2  0.5  0.5       0.00       0.00       0.00       0.00   60679.51       0.00       0.00       0.00       0.00       0.00
                          353.95     126.97     255.69    1716.64      -0.00    3393.06     -12.54   -1623.02     947.57     277.53

    6   6.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00   60679.49       0.00       0.00       0.00       0.00
                         -134.07    -125.02     303.90   -1638.48   -3393.06       0.00    2439.83   -1246.55    1231.91    -403.79

    7   7.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00   60679.54       0.00       0.00       0.00
                          185.15     483.32     -22.35   -1435.25      12.54   -2439.83      -0.00   -2359.49    -137.33    1777.26

    8   8.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00   60679.54       0.00       0.00
                         -445.67     338.78      31.86    1095.09    1623.02    1246.55    2359.49      -0.00     191.82    1606.28

    9   9.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   61305.77       0.00
                          -13.18      -0.31      -0.58    2344.27    -947.57   -1231.91     137.33    -191.82      -0.00      -5.43

   10  10.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   61305.77
                         -331.31     -52.91     -16.72      39.65    -277.53     403.79   -1777.26   -1606.28       5.43      -0.00

   11  11.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           53.58    -331.60     -13.63     141.28    1509.68    -549.14    1022.72   -1526.72      40.11    1030.11

   12  12.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -37.12     -41.66     867.33      -0.00       0.00      -0.00      -0.00       0.00    4874.19    -189.78

   13   1.2  0.5 -0.5       0.00     354.83   -1040.23     -50.09    -389.74    -578.39      49.85    -109.87      48.62     -16.26
                            0.00    -297.00    7123.55      58.66     332.74    -334.43    -309.74     246.19    -332.06      13.12

   14   2.2  0.5 -0.5    -354.83       0.00    7123.09      24.88    -380.79     292.04     324.49    -215.10    -332.64      -3.17
                          297.00      -0.00    1055.09    -633.62    -138.87    -276.51      30.07     -73.55     -48.56       2.10

   15   3.2  0.5 -0.5    1040.23   -7123.09       0.00      32.06     346.54    -146.59     269.88    -405.83      -0.77     335.75
                        -7123.55   -1055.09       0.00       4.69     -76.82      64.01    -462.42    -395.22     -14.94      -3.83

   16   4.2  0.5 -0.5      50.09     -24.88     -32.06      -0.00     880.18    -931.27    3880.16    3457.53    -134.87    -129.05
                          -58.66     633.62      -4.69      -0.00    1573.33    -262.16    1114.61   -1415.88     -30.28    2518.70

   17   5.2  0.5 -0.5     389.74     380.79    -346.54    -880.18       0.00    -612.15   -1558.36    1234.89   -1454.03    1245.36
                         -332.74     138.87      76.82   -1573.33       0.00    2902.95   -2772.09    1596.90     357.31     752.78

   18   6.2  0.5 -0.5     578.39    -292.04     146.59     931.27     612.15      -0.00     666.70   -1424.44     490.76   -1505.07
                          334.43     276.51     -64.01     262.16   -2902.95       0.00      18.22    3068.90    -321.18     873.39

   19   7.2  0.5 -0.5     -49.85    -324.49    -269.88   -3880.16    1558.36    -666.70       0.00    -811.03   -1049.71   -1241.73
                          309.74     -30.07     462.42   -1114.61    2772.09     -18.22       0.00    1496.77    1779.93    -308.58

   20   8.2  0.5 -0.5     109.87     215.10     405.83   -3457.53   -1234.89    1424.44     811.03       0.00    1581.87     776.56
                         -246.19      73.55     395.22    1415.88   -1596.90   -3068.90   -1496.77      -0.00    1606.40     444.87

   21   9.2  0.5 -0.5     -48.62     332.64       0.77     134.87    1454.03    -490.76    1049.71   -1581.87       0.00   -1030.79
                          332.06      48.56      14.94      30.28    -357.31     321.18   -1779.93   -1606.40       0.00      13.56

   22  10.2  0.5 -0.5      16.26       3.17    -335.75     129.05   -1245.36    1505.07    1241.73    -776.56    1030.79       0.00
                          -13.12      -2.10       3.83   -2518.70    -752.78    -873.39     308.58    -444.87     -13.56       0.00

   23  11.2  0.5 -0.5      -0.45       1.54       4.48     174.83    1702.05    2106.83    -445.57     636.09     -13.76      -4.90
                          -12.61     -15.86     335.54     165.67   -1201.79    1470.29    1275.00    -847.70   -1030.03      40.18

   24  12.2  0.5 -0.5    -858.95    -125.44     -42.79       0.00      -0.00       0.00      -0.00      -0.00     -23.17      65.10
                         -127.23     859.01      35.81       0.00      -0.00       0.00      -0.00       0.00     190.10    4873.83

   25   1.2  1.5  1.5    -180.41    1218.08      50.78      86.97    1005.29    -358.00     664.45   -1029.77    -101.50   -2602.13
                        -1217.79    -177.84     -60.66     -85.95     222.37    -241.40    1187.43    1059.93      12.38     -34.77

   26   2.2  1.5  1.5      -0.00      -0.00      -0.00     110.75    1113.08    1412.15    -287.72     419.41      -0.00       0.00
                           52.49      58.91   -1226.45     -87.45     802.33    -966.07    -853.67     560.91    2607.85    -101.54

   27   3.2  1.5  1.5     -52.49     -58.91    1226.43     -87.46     802.36    -966.11    -853.71     560.93   -2607.64     101.53
                           -0.00      -0.00       0.00   -1672.25    -494.46    -579.22     146.58    -327.99       0.00      -0.01

   28   4.2  1.5  1.5    -645.15     -94.22     -32.14    -150.63     389.72    -423.06    2080.98    1857.54      -3.44       9.66
                          117.66    -794.36     -33.12    -142.30   -1644.82     585.75   -1087.14    1684.87     -34.70    -889.68

   29   5.2  1.5  1.5      -0.00       0.00       0.00    3188.20    -114.54    -240.11      -7.39     236.15       0.00      -0.00
                          -53.79     -60.36    1256.69     -86.55     794.01    -956.05    -844.81     555.09    1393.42     -54.25

   30   6.2  1.5  1.5     -53.79     -60.36    1256.70      86.56    -794.07     956.12     844.88    -555.13    1393.30     -54.25
                           -0.00      -0.00       0.00   -1417.61    1710.95    2217.70    -423.90     506.07       0.00      -0.00

   31   7.2  1.5  1.5    -184.88    1248.19      52.04     -85.39    -986.99     351.48    -652.35    1011.02      54.60    1399.84
                         1248.03     182.26      62.17     -84.38     218.31    -236.99    1165.71    1040.55       6.65     -18.70

   32   8.2  1.5  1.5    1289.64     188.33      64.24     -75.34     194.93    -211.61    1040.87     929.11       6.87     -19.31
                          178.26   -1203.55     -50.18      93.80    1084.20    -386.10     716.60   -1110.60     -52.58   -1348.12

   33   9.2  1.5  1.5   -2212.75    -323.14    -110.22      -0.00       0.01      -0.01       0.04       0.04      -6.23      17.50
                          327.76   -2212.93     -92.26       0.06       0.72      -0.26       0.48      -0.74     -51.16   -1311.64

   34   1.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00    1797.19    -707.05    -952.35     161.17    -103.39       0.00      -0.00

   35   2.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          207.74   -1402.61     -58.48     100.02    1156.17    -411.73     764.17   -1184.32     117.44    3010.98

   36   3.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         1406.61     205.42      70.07     -99.25     256.79    -278.77    1371.23    1224.00     -14.28      40.12

   37   4.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           71.81      80.59   -1677.92      11.87    -108.87     131.09     115.84     -76.11   -1859.19      72.39

   38   5.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          212.89   -1437.36     -59.93     -99.01   -1144.45     407.55    -756.42    1172.32     -62.80   -1610.17

   39   6.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                        -1441.00    -210.44     -71.78     -97.44     252.11    -273.68    1346.16    1201.62      -7.68      21.59

   40   7.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00    2037.29    1841.26    2281.05    -497.38     855.63      -0.00       0.00

   41   8.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -4.29      -4.82     100.27     198.31   -1819.33    2190.62    1935.74   -1271.88     111.18      -4.33

   42   9.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -110.43    -123.93    2580.19      -0.01       0.05      -0.07      -0.06       0.04    1516.40     -59.04

   43   1.2  1.5 -0.5    -104.16     703.26      29.32      50.21     580.41    -206.69     383.62    -594.54     -58.60   -1502.34
                          703.09     102.68      35.02      49.62    -128.39     139.37    -685.56    -611.95      -7.14      20.08

   44   2.2  1.5 -0.5      -0.00      -0.00      -0.00      63.94     642.64     815.31    -166.11     242.14      -0.00       0.00
                          -30.31     -34.01     708.09      50.49    -463.22     557.76     492.87    -323.84   -1505.64      58.62

   45   3.2  1.5 -0.5     -30.30     -34.01     708.08     -50.49     463.24    -557.79    -492.89     323.86   -1505.52      58.62
                            0.00       0.00      -0.00     965.48     285.47     334.41     -84.63     189.37      -0.00       0.00

   46   4.2  1.5 -0.5    -372.48     -54.40     -18.55     -86.96     225.00    -244.26    1201.45    1072.45      -1.98       5.58
                          -67.93     458.62      19.12      82.16     949.64    -338.18     627.66    -972.76      20.03     513.66

   47   5.2  1.5 -0.5      -0.00       0.00       0.00    1840.71     -66.13    -138.63      -4.27     136.34       0.00      -0.00
                           31.05      34.85    -725.55      49.97    -458.42     551.97     487.75    -320.48    -804.49      31.32

   48   6.2  1.5 -0.5     -31.05     -34.85     725.56      49.98    -458.46     552.02     487.79    -320.50     804.42     -31.32
                            0.00       0.00      -0.00     818.46    -987.82   -1280.39     244.74    -292.18      -0.00       0.00

   49   7.2  1.5 -0.5    -106.74     720.64      30.05     -49.30    -569.84     202.93    -376.63     583.71      31.52     808.20
                         -720.55    -105.23     -35.89      48.71    -126.04     136.83    -673.02    -600.76      -3.84      10.80

   50   8.2  1.5 -0.5     744.57     108.73      37.09     -43.50     112.54    -122.17     600.95     536.42       3.97     -11.15
                         -102.92     694.87      28.97     -54.15    -625.96     222.91    -413.73     641.20      30.36     778.33

   51   9.2  1.5 -0.5   -1277.53    -186.57     -63.64      -0.00       0.00      -0.00       0.02       0.02      -3.60      10.11
                         -189.24    1277.64      53.27      -0.04      -0.42       0.15      -0.28       0.43      29.54     757.28

   52   1.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   53   2.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   54   3.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   55   4.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   56   5.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   57   6.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   58   7.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   59   8.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   60   9.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00


   Nr   State  S   Sz       11         12         13         14         15         16         17         18         19         20

    1   1.2  0.5  0.5       0.00       0.00       0.00    -354.83    1040.23      50.09     389.74     578.39     -49.85     109.87
                          -53.58      37.12      -0.00    -297.00    7123.55      58.66     332.74    -334.43    -309.74     246.19

    2   2.2  0.5  0.5       0.00       0.00     354.83       0.00   -7123.09     -24.88     380.79    -292.04    -324.49     215.10
                          331.60      41.66     297.00       0.00    1055.09    -633.62    -138.87    -276.51      30.07     -73.55

    3   3.2  0.5  0.5       0.00       0.00   -1040.23    7123.09       0.00     -32.06    -346.54     146.59    -269.88     405.83
                           13.63    -867.33   -7123.55   -1055.09      -0.00       4.69     -76.82      64.01    -462.42    -395.22

    4   4.2  0.5  0.5       0.00       0.00     -50.09      24.88      32.06      -0.00    -880.18     931.27   -3880.16   -3457.53
                         -141.28       0.00     -58.66     633.62      -4.69       0.00    1573.33    -262.16    1114.61   -1415.88

    5   5.2  0.5  0.5       0.00       0.00    -389.74    -380.79     346.54     880.18       0.00     612.15    1558.36   -1234.89
                        -1509.68      -0.00    -332.74     138.87      76.82   -1573.33      -0.00    2902.95   -2772.09    1596.90

    6   6.2  0.5  0.5       0.00       0.00    -578.39     292.04    -146.59    -931.27    -612.15      -0.00    -666.70    1424.44
                          549.14       0.00     334.43     276.51     -64.01     262.16   -2902.95      -0.00      18.22    3068.90

    7   7.2  0.5  0.5       0.00       0.00      49.85     324.49     269.88    3880.16   -1558.36     666.70       0.00     811.03
                        -1022.72       0.00     309.74     -30.07     462.42   -1114.61    2772.09     -18.22      -0.00    1496.77

    8   8.2  0.5  0.5       0.00       0.00    -109.87    -215.10    -405.83    3457.53    1234.89   -1424.44    -811.03       0.00
                         1526.72      -0.00    -246.19      73.55     395.22    1415.88   -1596.90   -3068.90   -1496.77       0.00

    9   9.2  0.5  0.5       0.00       0.00      48.62    -332.64      -0.77    -134.87   -1454.03     490.76   -1049.71    1581.87
                          -40.11   -4874.19     332.06      48.56      14.94      30.28    -357.31     321.18   -1779.93   -1606.40

   10  10.2  0.5  0.5       0.00       0.00     -16.26      -3.17     335.75    -129.05    1245.36   -1505.07   -1241.73     776.56
                        -1030.11     189.78     -13.12      -2.10       3.83   -2518.70    -752.78    -873.39     308.58    -444.87

   11  11.2  0.5  0.5   61305.77       0.00       0.45      -1.54      -4.48    -174.83   -1702.05   -2106.83     445.57    -636.09
                            0.00     -25.68     -12.61     -15.86     335.54     165.67   -1201.79    1470.29    1275.00    -847.70

   12  12.2  0.5  0.5       0.00   61604.84     858.95     125.44      42.79      -0.00       0.00      -0.00       0.00       0.00
                           25.68       0.00    -127.23     859.01      35.81       0.00      -0.00       0.00      -0.00       0.00

   13   1.2  0.5 -0.5       0.45     858.95       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           12.61     127.23      -0.00    7192.52     345.47      62.53     353.95    -134.07     185.15    -445.67

   14   2.2  0.5 -0.5      -1.54     125.44       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           15.86    -859.01   -7192.52       0.00    -307.83       0.88     126.97    -125.02     483.32     338.78

   15   3.2  0.5 -0.5      -4.48      42.79       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -335.54     -35.81    -345.47     307.83       0.00    -588.80     255.69     303.90     -22.35      31.86

   16   4.2  0.5 -0.5    -174.83      -0.00       0.00       0.00       0.00   60679.47       0.00       0.00       0.00       0.00
                         -165.67      -0.00     -62.53      -0.88     588.80      -0.00    1716.64   -1638.48   -1435.25    1095.09

   17   5.2  0.5 -0.5   -1702.05       0.00       0.00       0.00       0.00       0.00   60679.51       0.00       0.00       0.00
                         1201.79       0.00    -353.95    -126.97    -255.69   -1716.64       0.00   -3393.06      12.54    1623.02

   18   6.2  0.5 -0.5   -2106.83      -0.00       0.00       0.00       0.00       0.00       0.00   60679.49       0.00       0.00
                        -1470.29      -0.00     134.07     125.02    -303.90    1638.48    3393.06      -0.00   -2439.83    1246.55

   19   7.2  0.5 -0.5     445.57       0.00       0.00       0.00       0.00       0.00       0.00       0.00   60679.54       0.00
                        -1275.00       0.00    -185.15    -483.32      22.35    1435.25     -12.54    2439.83       0.00    2359.49

   20   8.2  0.5 -0.5    -636.09       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   60679.54
                          847.70      -0.00     445.67    -338.78     -31.86   -1095.09   -1623.02   -1246.55   -2359.49       0.00

   21   9.2  0.5 -0.5      13.76      23.17       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         1030.03    -190.10      13.18       0.31       0.58   -2344.27     947.57    1231.91    -137.33     191.82

   22  10.2  0.5 -0.5       4.90     -65.10       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -40.18   -4873.83     331.31      52.91      16.72     -39.65     277.53    -403.79    1777.26    1606.28

   23  11.2  0.5 -0.5      -0.00   -4877.46       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      64.15     -53.58     331.60      13.63    -141.28   -1509.68     549.14   -1022.72    1526.72

   24  12.2  0.5 -0.5    4877.46       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -64.15       0.00      37.12      41.66    -867.33       0.00      -0.00       0.00       0.00      -0.00

   25   1.2  1.5  1.5      34.24      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                        -2604.68      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   26   2.2  1.5  1.5       0.00   -2558.84       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           13.74       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   27   3.2  1.5  1.5     -13.74       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00   -2558.77      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   28   4.2  1.5  1.5     723.49      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           11.71      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   29   5.2  1.5  1.5      -0.00      -5.11       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            7.34      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   30   6.2  1.5  1.5       7.34       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       4.97      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   31   7.2  1.5  1.5     -18.42      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                        -1401.10       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   32   8.2  1.5  1.5   -1446.76      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           17.74      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   33   9.2  1.5  1.5    1311.48      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           17.26       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   34   1.2  1.5  0.5       0.00       0.00    -104.16     703.26      29.32      50.21     580.41    -206.69     383.62    -594.54
                            0.00   -2954.33    -703.09    -102.68     -35.02     -49.62     128.39    -139.37     685.56     611.95

   35   2.2  1.5  0.5       0.00       0.00      -0.00      -0.00      -0.00      63.94     642.64     815.31    -166.11     242.14
                          -39.63      -0.00      30.31      34.01    -708.09     -50.49     463.22    -557.76    -492.87     323.84

   36   3.2  1.5  0.5       0.00       0.00     -30.30     -34.01     708.08     -50.49     463.24    -557.79    -492.89     323.86
                         3006.18      -0.00      -0.00      -0.00       0.00    -965.48    -285.47    -334.41      84.63    -189.37

   37   4.2  1.5  0.5       0.00       0.00    -372.48     -54.40     -18.55     -86.96     225.00    -244.26    1201.45    1072.45
                           -9.80      -0.00      67.93    -458.62     -19.12     -82.16    -949.64     338.18    -627.66     972.76

   38   5.2  1.5  0.5       0.00       0.00      -0.00       0.00       0.00    1840.71     -66.13    -138.63      -4.27     136.34
                           21.19      -0.00     -31.05     -34.85     725.55     -49.97     458.42    -551.97    -487.75     320.48

   39   6.2  1.5  0.5       0.00       0.00     -31.05     -34.85     725.56      49.98    -458.46     552.02     487.79    -320.50
                         1617.49       0.00      -0.00      -0.00       0.00    -818.46     987.82    1280.39    -244.74     292.18

   40   7.2  1.5  0.5       0.00       0.00    -106.74     720.64      30.05     -49.30    -569.84     202.93    -376.63     583.71
                            0.00       5.81     720.55     105.23      35.89     -48.71     126.04    -136.83     673.02     600.76

   41   8.2  1.5  0.5       0.00       0.00     744.57     108.73      37.09     -43.50     112.54    -122.17     600.95     536.42
                            0.59      -0.00     102.92    -694.87     -28.97      54.15     625.96    -222.91     413.73    -641.20

   42   9.2  1.5  0.5       0.00       0.00   -1277.53    -186.57     -63.64      -0.00       0.00      -0.00       0.02       0.02
                            7.99       0.00     189.24   -1277.64     -53.27       0.04       0.42      -0.15       0.28      -0.43

   43   1.2  1.5 -0.5      19.77      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         1503.81       0.00       0.00       0.00       0.00    1797.19    -707.05    -952.35     161.17    -103.39

   44   2.2  1.5 -0.5       0.00   -1477.35       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -7.93      -0.00     207.74   -1402.61     -58.48     100.02    1156.17    -411.73     764.17   -1184.32

   45   3.2  1.5 -0.5      -7.93       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00    1477.30    1406.61     205.42      70.07     -99.25     256.79    -278.77    1371.23    1224.00

   46   4.2  1.5 -0.5     417.71      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -6.76       0.00      71.81      80.59   -1677.92      11.87    -108.87     131.09     115.84     -76.11

   47   5.2  1.5 -0.5      -0.00      -2.95       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -4.24       0.00     212.89   -1437.36     -59.93     -99.01   -1144.45     407.55    -756.42    1172.32

   48   6.2  1.5 -0.5       4.24       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -2.87   -1441.00    -210.44     -71.78     -97.44     252.11    -273.68    1346.16    1201.62

   49   7.2  1.5 -0.5     -10.64      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          808.92      -0.00      -0.00       0.00      -0.00    2037.29    1841.26    2281.05    -497.38     855.63

   50   8.2  1.5 -0.5    -835.29      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -10.24       0.00      -4.29      -4.82     100.27     198.31   -1819.33    2190.62    1935.74   -1271.88

   51   9.2  1.5 -0.5     757.18      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -9.97      -0.00    -110.43    -123.93    2580.19      -0.01       0.05      -0.07      -0.06       0.04

   52   1.2  1.5 -1.5       0.00       0.00    -180.41    1218.08      50.78      86.97    1005.29    -358.00     664.45   -1029.77
                           -0.00      -0.00    1217.79     177.84      60.66      85.95    -222.37     241.40   -1187.43   -1059.93

   53   2.2  1.5 -1.5       0.00       0.00      -0.00      -0.00      -0.00     110.75    1113.08    1412.15    -287.72     419.41
                           -0.00      -0.00     -52.49     -58.91    1226.45      87.45    -802.33     966.07     853.67    -560.91

   54   3.2  1.5 -1.5       0.00       0.00     -52.49     -58.91    1226.43     -87.46     802.36    -966.11    -853.71     560.93
                           -0.00      -0.00       0.00       0.00      -0.00    1672.25     494.46     579.22    -146.58     327.99

   55   4.2  1.5 -1.5       0.00       0.00    -645.15     -94.22     -32.14    -150.63     389.72    -423.06    2080.98    1857.54
                           -0.00      -0.00    -117.66     794.36      33.12     142.30    1644.82    -585.75    1087.14   -1684.87

   56   5.2  1.5 -1.5       0.00       0.00      -0.00       0.00       0.00    3188.20    -114.54    -240.11      -7.39     236.15
                           -0.00      -0.00      53.79      60.36   -1256.69      86.55    -794.01     956.05     844.81    -555.09

   57   6.2  1.5 -1.5       0.00       0.00     -53.79     -60.36    1256.70      86.56    -794.07     956.12     844.88    -555.13
                           -0.00      -0.00       0.00       0.00      -0.00    1417.61   -1710.95   -2217.70     423.90    -506.07

   58   7.2  1.5 -1.5       0.00       0.00    -184.88    1248.19      52.04     -85.39    -986.99     351.48    -652.35    1011.02
                           -0.00      -0.00   -1248.03    -182.26     -62.17      84.38    -218.31     236.99   -1165.71   -1040.55

   59   8.2  1.5 -1.5       0.00       0.00    1289.64     188.33      64.24     -75.34     194.93    -211.61    1040.87     929.11
                           -0.00      -0.00    -178.26    1203.55      50.18     -93.80   -1084.20     386.10    -716.60    1110.60

   60   9.2  1.5 -1.5       0.00       0.00   -2212.75    -323.14    -110.22      -0.00       0.01      -0.01       0.04       0.04
                           -0.00      -0.00    -327.76    2212.93      92.26      -0.06      -0.72       0.26      -0.48       0.74


   Nr   State  S   Sz       21         22         23         24         25         26         27         28         29         30

    1   1.2  0.5  0.5     -48.62      16.26      -0.45    -858.95    -180.41      -0.00     -52.49    -645.15      -0.00     -53.79
                         -332.06      13.12      12.61     127.23    1217.79     -52.49       0.00    -117.66      53.79       0.00

    2   2.2  0.5  0.5     332.64       3.17       1.54    -125.44    1218.08      -0.00     -58.91     -94.22       0.00     -60.36
                          -48.56       2.10      15.86    -859.01     177.84     -58.91       0.00     794.36      60.36       0.00

    3   3.2  0.5  0.5       0.77    -335.75       4.48     -42.79      50.78      -0.00    1226.43     -32.14       0.00    1256.70
                          -14.94      -3.83    -335.54     -35.81      60.66    1226.45      -0.00      33.12   -1256.69      -0.00

    4   4.2  0.5  0.5     134.87     129.05     174.83       0.00      86.97     110.75     -87.46    -150.63    3188.20      86.56
                          -30.28    2518.70    -165.67      -0.00      85.95      87.45    1672.25     142.30      86.55    1417.61

    5   5.2  0.5  0.5    1454.03   -1245.36    1702.05      -0.00    1005.29    1113.08     802.36     389.72    -114.54    -794.07
                          357.31     752.78    1201.79       0.00    -222.37    -802.33     494.46    1644.82    -794.01   -1710.95

    6   6.2  0.5  0.5    -490.76    1505.07    2106.83       0.00    -358.00    1412.15    -966.11    -423.06    -240.11     956.12
                         -321.18     873.39   -1470.29      -0.00     241.40     966.07     579.22    -585.75     956.05   -2217.70

    7   7.2  0.5  0.5    1049.71    1241.73    -445.57      -0.00     664.45    -287.72    -853.71    2080.98      -7.39     844.88
                         1779.93    -308.58   -1275.00       0.00   -1187.43     853.67    -146.58    1087.14     844.81     423.90

    8   8.2  0.5  0.5   -1581.87    -776.56     636.09      -0.00   -1029.77     419.41     560.93    1857.54     236.15    -555.13
                         1606.40     444.87     847.70      -0.00   -1059.93    -560.91     327.99   -1684.87    -555.09    -506.07

    9   9.2  0.5  0.5       0.00    1030.79     -13.76     -23.17    -101.50      -0.00   -2607.64      -3.44       0.00    1393.30
                           -0.00      13.56    1030.03    -190.10     -12.38   -2607.85      -0.00      34.70   -1393.42      -0.00

   10  10.2  0.5  0.5   -1030.79       0.00      -4.90      65.10   -2602.13       0.00     101.53       9.66      -0.00     -54.25
                          -13.56      -0.00     -40.18   -4873.83      34.77     101.54       0.01     889.68      54.25       0.00

   11  11.2  0.5  0.5      13.76       4.90      -0.00    4877.46      34.24       0.00     -13.74     723.49      -0.00       7.34
                        -1030.03      40.18       0.00      64.15    2604.68     -13.74       0.00     -11.71      -7.34      -0.00

   12  12.2  0.5  0.5      23.17     -65.10   -4877.46       0.00      -0.00   -2558.84       0.00      -0.00      -5.11       0.00
                          190.10    4873.83     -64.15      -0.00       0.00      -0.00    2558.77       0.00       0.00      -4.97

   13   1.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -13.18    -331.31      53.58     -37.12       0.00       0.00       0.00       0.00       0.00       0.00

   14   2.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.31     -52.91    -331.60     -41.66       0.00       0.00       0.00       0.00       0.00       0.00

   15   3.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.58     -16.72     -13.63     867.33       0.00       0.00       0.00       0.00       0.00       0.00

   16   4.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         2344.27      39.65     141.28      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   17   5.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -947.57    -277.53    1509.68       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   18   6.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                        -1231.91     403.79    -549.14      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   19   7.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          137.33   -1777.26    1022.72      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   20   8.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -191.82   -1606.28   -1526.72       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   21   9.2  0.5 -0.5   61305.77       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       5.43      40.11    4874.19       0.00       0.00       0.00       0.00       0.00       0.00

   22  10.2  0.5 -0.5       0.00   61305.77       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -5.43       0.00    1030.11    -189.78       0.00       0.00       0.00       0.00       0.00       0.00

   23  11.2  0.5 -0.5       0.00       0.00   61305.77       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -40.11   -1030.11      -0.00      25.68       0.00       0.00       0.00       0.00       0.00       0.00

   24  12.2  0.5 -0.5       0.00       0.00       0.00   61604.84       0.00       0.00       0.00       0.00       0.00       0.00
                        -4874.19     189.78     -25.68      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   25   1.2  1.5  1.5       0.00       0.00       0.00       0.00   59459.25       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00       0.00       0.00      -0.00    4652.73      -0.00      -0.00

   26   2.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00   59459.26       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00   -3745.87      -0.00       0.00   -4036.59

   27   3.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00   59459.25       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00       0.00    3745.87      -0.00       0.00   -4036.59       0.00

   28   4.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00   60341.39       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00   -4652.73       0.00      -0.00      -0.00      -0.00       0.00

   29   5.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   60341.43       0.00
                           -0.00      -0.00      -0.00      -0.00       0.00      -0.00    4036.59       0.00       0.00    3750.52

   30   6.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   60341.40
                           -0.00      -0.00      -0.00      -0.00       0.00    4036.59      -0.00      -0.00   -3750.52      -0.00

   31   7.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00     447.93       0.00       0.00

   32   8.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00     278.32       0.00      -0.00      -0.00       0.00       0.00

   33   9.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00    6613.31       0.00      -0.00       0.00       0.00      -0.00

   34   1.2  1.5  0.5     -58.60   -1502.34      19.77      -0.00       0.00      -0.00    2162.66       0.00       0.00   -2330.53
                            7.14     -20.08   -1503.81      -0.00      -0.00    2162.66       0.00       0.00    2330.54      -0.00

   35   2.2  1.5  0.5      -0.00       0.00       0.00   -1477.35       0.00       0.00       0.00   -1203.97       0.00      -0.00
                         1505.64     -58.62       7.93       0.00   -2162.66       0.00       0.00      -0.00       0.00       0.00

   36   3.2  1.5  0.5   -1505.52      58.62      -7.93       0.00   -2162.66      -0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00   -1477.30      -0.00      -0.00      -0.00    1482.31       0.00       0.00

   37   4.2  1.5  0.5      -1.98       5.58     417.71      -0.00      -0.00    1203.97      -0.00       0.00   -3873.15       0.00
                          -20.03    -513.66       6.76      -0.00      -0.00       0.00   -1482.31       0.00       0.00   -3614.53

   38   5.2  1.5  0.5       0.00      -0.00      -0.00      -2.95      -0.00      -0.00      -0.00    3873.15       0.00       0.00
                          804.49     -31.32       4.24      -0.00   -2330.54      -0.00      -0.00      -0.00      -0.00       0.00

   39   6.2  1.5  0.5     804.42     -31.32       4.24       0.00    2330.53       0.00      -0.00      -0.00      -0.00      -0.00
                            0.00      -0.00       0.00       2.87       0.00      -0.00      -0.00    3614.53      -0.00       0.00

   40   7.2  1.5  0.5      31.52     808.20     -10.64      -0.00       0.00      -0.00   -2330.52       0.00      -0.00    2165.38
                            3.84     -10.80    -808.92       0.00      -0.00    2330.53       0.00       0.00    2165.38      -0.00

   41   8.2  1.5  0.5       3.97     -11.15    -835.29      -0.00       0.00   -2406.72      -0.00       0.00   -1937.56       0.00
                          -30.36    -778.33      10.24      -0.00       0.00      -0.00   -2246.01      -0.00      -0.00    2385.47

   42   9.2  1.5  0.5      -3.60      10.11     757.18      -0.00      -0.00    3818.20       0.00      -0.00       0.02      -0.00
                          -29.54    -757.28       9.97       0.00      -0.00       0.00   -3818.20      -0.00       0.00       0.01

   43   1.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00   -2954.33      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   44   2.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          117.44    3010.98     -39.63      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   45   3.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -14.28      40.12    3006.18      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   46   4.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                        -1859.19      72.39      -9.80      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   47   5.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -62.80   -1610.17      21.19      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   48   6.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -7.68      21.59    1617.49       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   49   7.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       5.81      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   50   8.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          111.18      -4.33       0.59      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   51   9.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         1516.40     -59.04       7.99       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   52   1.2  1.5 -1.5    -101.50   -2602.13      34.24      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -12.38      34.77    2604.68       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   53   2.2  1.5 -1.5      -0.00       0.00       0.00   -2558.84       0.00       0.00       0.00       0.00       0.00       0.00
                        -2607.85     101.54     -13.74      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   54   3.2  1.5 -1.5   -2607.64     101.53     -13.74       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.01       0.00    2558.77      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   55   4.2  1.5 -1.5      -3.44       9.66     723.49      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           34.70     889.68     -11.71       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   56   5.2  1.5 -1.5       0.00      -0.00      -0.00      -5.11       0.00       0.00       0.00       0.00       0.00       0.00
                        -1393.42      54.25      -7.34       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   57   6.2  1.5 -1.5    1393.30     -54.25       7.34       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00      -4.97      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   58   7.2  1.5 -1.5      54.60    1399.84     -18.42      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -6.65      18.70    1401.10      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   59   8.2  1.5 -1.5       6.87     -19.31   -1446.76      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           52.58    1348.12     -17.74       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   60   9.2  1.5 -1.5      -6.23      17.50    1311.48      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           51.16    1311.64     -17.26      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00


   Nr   State  S   Sz       31         32         33         34         35         36         37         38         39         40

    1   1.2  0.5  0.5    -184.88    1289.64   -2212.75       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                        -1248.03    -178.26    -327.76      -0.00    -207.74   -1406.61     -71.81    -212.89    1441.00       0.00

    2   2.2  0.5  0.5    1248.19     188.33    -323.14       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -182.26    1203.55    2212.93      -0.00    1402.61    -205.42     -80.59    1437.36     210.44      -0.00

    3   3.2  0.5  0.5      52.04      64.24    -110.22       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -62.17      50.18      92.26      -0.00      58.48     -70.07    1677.92      59.93      71.78       0.00

    4   4.2  0.5  0.5     -85.39     -75.34      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           84.38     -93.80      -0.06   -1797.19    -100.02      99.25     -11.87      99.01      97.44   -2037.29

    5   5.2  0.5  0.5    -986.99     194.93       0.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -218.31   -1084.20      -0.72     707.05   -1156.17    -256.79     108.87    1144.45    -252.11   -1841.26

    6   6.2  0.5  0.5     351.48    -211.61      -0.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          236.99     386.10       0.26     952.35     411.73     278.77    -131.09    -407.55     273.68   -2281.05

    7   7.2  0.5  0.5    -652.35    1040.87       0.04       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                        -1165.71    -716.60      -0.48    -161.17    -764.17   -1371.23    -115.84     756.42   -1346.16     497.38

    8   8.2  0.5  0.5    1011.02     929.11       0.04       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                        -1040.55    1110.60       0.74     103.39    1184.32   -1224.00      76.11   -1172.32   -1201.62    -855.63

    9   9.2  0.5  0.5      54.60       6.87      -6.23       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -6.65      52.58      51.16      -0.00    -117.44      14.28    1859.19      62.80       7.68       0.00

   10  10.2  0.5  0.5    1399.84     -19.31      17.50       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           18.70    1348.12    1311.64       0.00   -3010.98     -40.12     -72.39    1610.17     -21.59      -0.00

   11  11.2  0.5  0.5     -18.42   -1446.76    1311.48       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         1401.10     -17.74     -17.26      -0.00      39.63   -3006.18       9.80     -21.19   -1617.49      -0.00

   12  12.2  0.5  0.5      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00    2954.33       0.00       0.00       0.00       0.00      -0.00      -5.81

   13   1.2  0.5 -0.5       0.00       0.00       0.00    -104.16      -0.00     -30.30    -372.48      -0.00     -31.05    -106.74
                            0.00       0.00       0.00     703.09     -30.31       0.00     -67.93      31.05       0.00    -720.55

   14   2.2  0.5 -0.5       0.00       0.00       0.00     703.26      -0.00     -34.01     -54.40       0.00     -34.85     720.64
                            0.00       0.00       0.00     102.68     -34.01       0.00     458.62      34.85       0.00    -105.23

   15   3.2  0.5 -0.5       0.00       0.00       0.00      29.32      -0.00     708.08     -18.55       0.00     725.56      30.05
                            0.00       0.00       0.00      35.02     708.09      -0.00      19.12    -725.55      -0.00     -35.89

   16   4.2  0.5 -0.5       0.00       0.00       0.00      50.21      63.94     -50.49     -86.96    1840.71      49.98     -49.30
                            0.00       0.00       0.00      49.62      50.49     965.48      82.16      49.97     818.46      48.71

   17   5.2  0.5 -0.5       0.00       0.00       0.00     580.41     642.64     463.24     225.00     -66.13    -458.46    -569.84
                            0.00       0.00       0.00    -128.39    -463.22     285.47     949.64    -458.42    -987.82    -126.04

   18   6.2  0.5 -0.5       0.00       0.00       0.00    -206.69     815.31    -557.79    -244.26    -138.63     552.02     202.93
                            0.00       0.00       0.00     139.37     557.76     334.41    -338.18     551.97   -1280.39     136.83

   19   7.2  0.5 -0.5       0.00       0.00       0.00     383.62    -166.11    -492.89    1201.45      -4.27     487.79    -376.63
                            0.00       0.00       0.00    -685.56     492.87     -84.63     627.66     487.75     244.74    -673.02

   20   8.2  0.5 -0.5       0.00       0.00       0.00    -594.54     242.14     323.86    1072.45     136.34    -320.50     583.71
                            0.00       0.00       0.00    -611.95    -323.84     189.37    -972.76    -320.48    -292.18    -600.76

   21   9.2  0.5 -0.5       0.00       0.00       0.00     -58.60      -0.00   -1505.52      -1.98       0.00     804.42      31.52
                            0.00       0.00       0.00      -7.14   -1505.64      -0.00      20.03    -804.49      -0.00      -3.84

   22  10.2  0.5 -0.5       0.00       0.00       0.00   -1502.34       0.00      58.62       5.58      -0.00     -31.32     808.20
                            0.00       0.00       0.00      20.08      58.62       0.00     513.66      31.32       0.00      10.80

   23  11.2  0.5 -0.5       0.00       0.00       0.00      19.77       0.00      -7.93     417.71      -0.00       4.24     -10.64
                            0.00       0.00       0.00    1503.81      -7.93       0.00      -6.76      -4.24      -0.00     808.92

   24  12.2  0.5 -0.5       0.00       0.00       0.00      -0.00   -1477.35       0.00      -0.00      -2.95       0.00      -0.00
                            0.00       0.00       0.00       0.00      -0.00    1477.30       0.00       0.00      -2.87      -0.00

   25   1.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00   -2162.66      -0.00      -0.00    2330.53       0.00
                            0.00    -278.32   -6613.31       0.00    2162.66       0.00       0.00    2330.54      -0.00       0.00

   26   2.2  1.5  1.5       0.00       0.00       0.00      -0.00       0.00      -0.00    1203.97      -0.00       0.00      -0.00
                            0.00      -0.00      -0.00   -2162.66      -0.00       0.00      -0.00       0.00       0.00   -2330.53

   27   3.2  1.5  1.5       0.00       0.00       0.00    2162.66       0.00       0.00      -0.00      -0.00      -0.00   -2330.52
                           -0.00       0.00       0.00      -0.00      -0.00       0.00    1482.31       0.00       0.00      -0.00

   28   4.2  1.5  1.5       0.00       0.00       0.00       0.00   -1203.97       0.00       0.00    3873.15      -0.00       0.00
                         -447.93       0.00      -0.00      -0.00       0.00   -1482.31      -0.00       0.00   -3614.53      -0.00

   29   5.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00   -3873.15       0.00      -0.00      -0.00
                           -0.00      -0.00      -0.00   -2330.54      -0.00      -0.00      -0.00       0.00       0.00   -2165.38

   30   6.2  1.5  1.5       0.00       0.00       0.00   -2330.53      -0.00       0.00       0.00       0.00      -0.00    2165.38
                           -0.00      -0.00       0.00       0.00      -0.00      -0.00    3614.53      -0.00      -0.00       0.00

   31   7.2  1.5  1.5   60341.42       0.00       0.00      -0.00       0.00    2330.52      -0.00       0.00   -2165.38      -0.00
                           -0.00    7487.69      -0.01      -0.00    2330.53       0.00       0.00    2165.38      -0.00       0.00

   32   8.2  1.5  1.5       0.00   60341.42       0.00      -0.00    2406.72       0.00      -0.00    1937.56      -0.00       0.00
                        -7487.69       0.00       0.00       0.00      -0.00   -2246.01      -0.00      -0.00    2385.47      -0.00

   33   9.2  1.5  1.5       0.00       0.00   61639.58       0.00   -3818.20      -0.00       0.00      -0.02       0.00       0.00
                            0.01      -0.00      -0.00      -0.00       0.00   -3818.20      -0.00       0.00       0.01       0.00

   34   1.2  1.5  0.5      -0.00      -0.00       0.00   59459.25       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00       0.00       0.00      -0.00    1550.91      -0.00      -0.00       0.00

   35   2.2  1.5  0.5       0.00    2406.72   -3818.20       0.00   59459.26       0.00       0.00       0.00       0.00       0.00
                        -2330.53       0.00      -0.00      -0.00      -0.00   -1248.62      -0.00       0.00   -1345.53       0.00

   36   3.2  1.5  0.5    2330.52       0.00      -0.00       0.00       0.00   59459.25       0.00       0.00       0.00       0.00
                           -0.00    2246.01    3818.20       0.00    1248.62      -0.00       0.00   -1345.53       0.00      -0.00

   37   4.2  1.5  0.5      -0.00      -0.00       0.00       0.00       0.00       0.00   60341.39       0.00       0.00       0.00
                           -0.00       0.00       0.00   -1550.91       0.00      -0.00      -0.00      -0.00       0.00    -149.31

   38   5.2  1.5  0.5       0.00    1937.56      -0.02       0.00       0.00       0.00       0.00   60341.43       0.00       0.00
                        -2165.38       0.00      -0.00       0.00      -0.00    1345.53       0.00       0.00    1250.17      -0.00

   39   6.2  1.5  0.5   -2165.38      -0.00       0.00       0.00       0.00       0.00       0.00       0.00   60341.40       0.00
                            0.00   -2385.47      -0.01       0.00    1345.53      -0.00      -0.00   -1250.17      -0.00      -0.00

   40   7.2  1.5  0.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   60341.42
                           -0.00       0.00      -0.00      -0.00      -0.00       0.00     149.31       0.00       0.00      -0.00

   41   8.2  1.5  0.5      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      92.77       0.00      -0.00      -0.00       0.00       0.00   -2495.90

   42   9.2  1.5  0.5      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00    2204.44       0.00      -0.00       0.00       0.00      -0.00       0.00

   43   1.2  1.5 -0.5       0.00       0.00       0.00       0.00      -0.00    2497.22       0.00       0.00   -2691.06      -0.00
                           -0.00      -0.00      -0.00      -0.00    2497.23       0.00       0.00    2691.07      -0.00       0.00

   44   2.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00   -1390.23       0.00      -0.00       0.00
                           -0.00      -0.00      -0.00   -2497.23       0.00       0.00      -0.00       0.00       0.00   -2691.06

   45   3.2  1.5 -0.5       0.00       0.00       0.00   -2497.22      -0.00       0.00       0.00       0.00       0.00    2691.05
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00    1711.62       0.00       0.00      -0.00

   46   4.2  1.5 -0.5       0.00       0.00       0.00      -0.00    1390.23      -0.00       0.00   -4472.33       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00       0.00   -1711.62       0.00       0.00   -4173.70      -0.00

   47   5.2  1.5 -0.5       0.00       0.00       0.00      -0.00      -0.00      -0.00    4472.33       0.00       0.00       0.00
                           -0.00      -0.00      -0.00   -2691.07      -0.00      -0.00      -0.00      -0.00       0.00   -2500.37

   48   6.2  1.5 -0.5       0.00       0.00       0.00    2691.06       0.00      -0.00      -0.00      -0.00      -0.00   -2500.36
                           -0.00      -0.00      -0.00       0.00      -0.00      -0.00    4173.70      -0.00       0.00       0.00

   49   7.2  1.5 -0.5       0.00       0.00       0.00       0.00      -0.00   -2691.05       0.00      -0.00    2500.36      -0.00
                           -0.00      -0.00      -0.00      -0.00    2691.06       0.00       0.00    2500.37      -0.00      -0.00

   50   8.2  1.5 -0.5       0.00       0.00       0.00       0.00   -2779.04      -0.00       0.00   -2237.30       0.00      -0.00
                           -0.00      -0.00      -0.00       0.00      -0.00   -2593.47      -0.00      -0.00    2754.51      -0.00

   51   9.2  1.5 -0.5       0.00       0.00       0.00      -0.00    4408.88       0.00      -0.00       0.02      -0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00       0.00   -4408.87      -0.00       0.00       0.01       0.00

   52   1.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   53   2.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   54   3.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   55   4.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   56   5.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   57   6.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   58   7.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   59   8.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   60   9.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00


   Nr   State  S   Sz       41         42         43         44         45         46         47         48         49         50

    1   1.2  0.5  0.5       0.00       0.00    -104.16      -0.00     -30.30    -372.48      -0.00     -31.05    -106.74     744.57
                            4.29     110.43    -703.09      30.31      -0.00      67.93     -31.05      -0.00     720.55     102.92

    2   2.2  0.5  0.5       0.00       0.00     703.26      -0.00     -34.01     -54.40       0.00     -34.85     720.64     108.73
                            4.82     123.93    -102.68      34.01      -0.00    -458.62     -34.85      -0.00     105.23    -694.87

    3   3.2  0.5  0.5       0.00       0.00      29.32      -0.00     708.08     -18.55       0.00     725.56      30.05      37.09
                         -100.27   -2580.19     -35.02    -708.09       0.00     -19.12     725.55       0.00      35.89     -28.97

    4   4.2  0.5  0.5       0.00       0.00      50.21      63.94     -50.49     -86.96    1840.71      49.98     -49.30     -43.50
                         -198.31       0.01     -49.62     -50.49    -965.48     -82.16     -49.97    -818.46     -48.71      54.15

    5   5.2  0.5  0.5       0.00       0.00     580.41     642.64     463.24     225.00     -66.13    -458.46    -569.84     112.54
                         1819.33      -0.05     128.39     463.22    -285.47    -949.64     458.42     987.82     126.04     625.96

    6   6.2  0.5  0.5       0.00       0.00    -206.69     815.31    -557.79    -244.26    -138.63     552.02     202.93    -122.17
                        -2190.62       0.07    -139.37    -557.76    -334.41     338.18    -551.97    1280.39    -136.83    -222.91

    7   7.2  0.5  0.5       0.00       0.00     383.62    -166.11    -492.89    1201.45      -4.27     487.79    -376.63     600.95
                        -1935.74       0.06     685.56    -492.87      84.63    -627.66    -487.75    -244.74     673.02     413.73

    8   8.2  0.5  0.5       0.00       0.00    -594.54     242.14     323.86    1072.45     136.34    -320.50     583.71     536.42
                         1271.88      -0.04     611.95     323.84    -189.37     972.76     320.48     292.18     600.76    -641.20

    9   9.2  0.5  0.5       0.00       0.00     -58.60      -0.00   -1505.52      -1.98       0.00     804.42      31.52       3.97
                         -111.18   -1516.40       7.14    1505.64       0.00     -20.03     804.49       0.00       3.84     -30.36

   10  10.2  0.5  0.5       0.00       0.00   -1502.34       0.00      58.62       5.58      -0.00     -31.32     808.20     -11.15
                            4.33      59.04     -20.08     -58.62      -0.00    -513.66     -31.32      -0.00     -10.80    -778.33

   11  11.2  0.5  0.5       0.00       0.00      19.77       0.00      -7.93     417.71      -0.00       4.24     -10.64    -835.29
                           -0.59      -7.99   -1503.81       7.93      -0.00       6.76       4.24       0.00    -808.92      10.24

   12  12.2  0.5  0.5       0.00       0.00      -0.00   -1477.35       0.00      -0.00      -2.95       0.00      -0.00      -0.00
                            0.00      -0.00      -0.00       0.00   -1477.30      -0.00      -0.00       2.87       0.00      -0.00

   13   1.2  0.5 -0.5     744.57   -1277.53       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -102.92    -189.24      -0.00    -207.74   -1406.61     -71.81    -212.89    1441.00       0.00       4.29

   14   2.2  0.5 -0.5     108.73    -186.57       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          694.87    1277.64      -0.00    1402.61    -205.42     -80.59    1437.36     210.44      -0.00       4.82

   15   3.2  0.5 -0.5      37.09     -63.64       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           28.97      53.27      -0.00      58.48     -70.07    1677.92      59.93      71.78       0.00    -100.27

   16   4.2  0.5 -0.5     -43.50      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -54.15      -0.04   -1797.19    -100.02      99.25     -11.87      99.01      97.44   -2037.29    -198.31

   17   5.2  0.5 -0.5     112.54       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -625.96      -0.42     707.05   -1156.17    -256.79     108.87    1144.45    -252.11   -1841.26    1819.33

   18   6.2  0.5 -0.5    -122.17      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          222.91       0.15     952.35     411.73     278.77    -131.09    -407.55     273.68   -2281.05   -2190.62

   19   7.2  0.5 -0.5     600.95       0.02       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -413.73      -0.28    -161.17    -764.17   -1371.23    -115.84     756.42   -1346.16     497.38   -1935.74

   20   8.2  0.5 -0.5     536.42       0.02       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          641.20       0.43     103.39    1184.32   -1224.00      76.11   -1172.32   -1201.62    -855.63    1271.88

   21   9.2  0.5 -0.5       3.97      -3.60       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           30.36      29.54      -0.00    -117.44      14.28    1859.19      62.80       7.68       0.00    -111.18

   22  10.2  0.5 -0.5     -11.15      10.11       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          778.33     757.28       0.00   -3010.98     -40.12     -72.39    1610.17     -21.59      -0.00       4.33

   23  11.2  0.5 -0.5    -835.29     757.18       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -10.24      -9.97      -0.00      39.63   -3006.18       9.80     -21.19   -1617.49      -0.00      -0.59

   24  12.2  0.5 -0.5      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00    2954.33       0.00       0.00       0.00       0.00      -0.00      -5.81       0.00

   25   1.2  1.5  1.5       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   26   2.2  1.5  1.5   -2406.72    3818.20       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   27   3.2  1.5  1.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         2246.01    3818.20       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   28   4.2  1.5  1.5       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   29   5.2  1.5  1.5   -1937.56       0.02       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   30   6.2  1.5  1.5       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                        -2385.47      -0.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   31   7.2  1.5  1.5      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   32   8.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   33   9.2  1.5  1.5      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   34   1.2  1.5  0.5       0.00       0.00       0.00       0.00   -2497.22      -0.00      -0.00    2691.06       0.00       0.00
                          -92.77   -2204.44       0.00    2497.23       0.00       0.00    2691.07      -0.00       0.00      -0.00

   35   2.2  1.5  0.5       0.00       0.00      -0.00       0.00      -0.00    1390.23      -0.00       0.00      -0.00   -2779.04
                           -0.00      -0.00   -2497.23      -0.00       0.00      -0.00       0.00       0.00   -2691.06       0.00

   36   3.2  1.5  0.5       0.00       0.00    2497.22       0.00       0.00      -0.00      -0.00      -0.00   -2691.05      -0.00
                            0.00       0.00      -0.00      -0.00       0.00    1711.62       0.00       0.00      -0.00    2593.47

   37   4.2  1.5  0.5       0.00       0.00       0.00   -1390.23       0.00       0.00    4472.33      -0.00       0.00       0.00
                            0.00      -0.00      -0.00       0.00   -1711.62      -0.00       0.00   -4173.70      -0.00       0.00

   38   5.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00   -4472.33       0.00      -0.00      -0.00   -2237.30
                           -0.00      -0.00   -2691.07      -0.00      -0.00      -0.00       0.00       0.00   -2500.37       0.00

   39   6.2  1.5  0.5       0.00       0.00   -2691.06      -0.00       0.00       0.00       0.00      -0.00    2500.36       0.00
                           -0.00       0.00       0.00      -0.00      -0.00    4173.70      -0.00      -0.00       0.00   -2754.51

   40   7.2  1.5  0.5       0.00       0.00      -0.00       0.00    2691.05      -0.00       0.00   -2500.36      -0.00      -0.00
                         2495.90      -0.00      -0.00    2691.06       0.00       0.00    2500.37      -0.00       0.00       0.00

   41   8.2  1.5  0.5   60341.42       0.00      -0.00    2779.04       0.00      -0.00    2237.30      -0.00       0.00       0.00
                            0.00       0.00       0.00      -0.00   -2593.47      -0.00      -0.00    2754.51      -0.00       0.00

   42   9.2  1.5  0.5       0.00   61639.58       0.00   -4408.88      -0.00       0.00      -0.02       0.00       0.00      -0.00
                           -0.00      -0.00      -0.00       0.00   -4408.87      -0.00       0.00       0.01       0.00       0.00

   43   1.2  1.5 -0.5      -0.00       0.00   59459.25       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00      -0.00       0.00   -1550.91       0.00       0.00      -0.00      92.77

   44   2.2  1.5 -0.5    2779.04   -4408.88       0.00   59459.26       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00       0.00    1248.62       0.00      -0.00    1345.53      -0.00       0.00

   45   3.2  1.5 -0.5       0.00      -0.00       0.00       0.00   59459.25       0.00       0.00       0.00       0.00       0.00
                         2593.47    4408.87      -0.00   -1248.62       0.00      -0.00    1345.53      -0.00       0.00      -0.00

   46   4.2  1.5 -0.5      -0.00       0.00       0.00       0.00       0.00   60341.39       0.00       0.00       0.00       0.00
                            0.00       0.00    1550.91      -0.00       0.00       0.00       0.00      -0.00     149.31      -0.00

   47   5.2  1.5 -0.5    2237.30      -0.02       0.00       0.00       0.00       0.00   60341.43       0.00       0.00       0.00
                            0.00      -0.00      -0.00       0.00   -1345.53      -0.00      -0.00   -1250.17       0.00       0.00

   48   6.2  1.5 -0.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00   60341.40       0.00       0.00
                        -2754.51      -0.01      -0.00   -1345.53       0.00       0.00    1250.17       0.00       0.00       0.00

   49   7.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   60341.42       0.00
                            0.00      -0.00       0.00       0.00      -0.00    -149.31      -0.00      -0.00       0.00   -2495.90

   50   8.2  1.5 -0.5       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   60341.42
                           -0.00      -0.00     -92.77      -0.00       0.00       0.00      -0.00      -0.00    2495.90      -0.00

   51   9.2  1.5 -0.5       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00   -2204.44      -0.00       0.00      -0.00      -0.00       0.00      -0.00       0.00

   52   1.2  1.5 -1.5       0.00       0.00       0.00      -0.00    2162.66       0.00       0.00   -2330.53      -0.00      -0.00
                           -0.00      -0.00      -0.00    2162.66       0.00       0.00    2330.54      -0.00       0.00      -0.00

   53   2.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00   -1203.97       0.00      -0.00       0.00    2406.72
                           -0.00      -0.00   -2162.66       0.00       0.00      -0.00       0.00       0.00   -2330.53       0.00

   54   3.2  1.5 -1.5       0.00       0.00   -2162.66      -0.00       0.00       0.00       0.00       0.00    2330.52       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00    1482.31       0.00       0.00      -0.00    2246.01

   55   4.2  1.5 -1.5       0.00       0.00      -0.00    1203.97      -0.00       0.00   -3873.15       0.00      -0.00      -0.00
                           -0.00      -0.00      -0.00       0.00   -1482.31       0.00       0.00   -3614.53      -0.00       0.00

   56   5.2  1.5 -1.5       0.00       0.00      -0.00      -0.00      -0.00    3873.15       0.00       0.00       0.00    1937.56
                           -0.00      -0.00   -2330.54      -0.00      -0.00      -0.00      -0.00       0.00   -2165.38       0.00

   57   6.2  1.5 -1.5       0.00       0.00    2330.53       0.00      -0.00      -0.00      -0.00      -0.00   -2165.38      -0.00
                           -0.00      -0.00       0.00      -0.00      -0.00    3614.53      -0.00       0.00       0.00   -2385.47

   58   7.2  1.5 -1.5       0.00       0.00       0.00      -0.00   -2330.52       0.00      -0.00    2165.38      -0.00       0.00
                           -0.00      -0.00      -0.00    2330.53       0.00       0.00    2165.38      -0.00      -0.00       0.00

   59   8.2  1.5 -1.5       0.00       0.00       0.00   -2406.72      -0.00       0.00   -1937.56       0.00      -0.00       0.00
                           -0.00      -0.00       0.00      -0.00   -2246.01      -0.00      -0.00    2385.47      -0.00      -0.00

   60   9.2  1.5 -1.5       0.00       0.00      -0.00    3818.20       0.00      -0.00       0.02      -0.00      -0.00       0.00
                           -0.00      -0.00      -0.00       0.00   -3818.20      -0.00       0.00       0.01       0.00       0.00


   Nr   State  S   Sz       51         52         53         54         55         56         57         58         59         60

    1   1.2  0.5  0.5   -1277.53       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          189.24       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    2   2.2  0.5  0.5    -186.57       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                        -1277.64       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    3   3.2  0.5  0.5     -63.64       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -53.27       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    4   4.2  0.5  0.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.04       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    5   5.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.42       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    6   6.2  0.5  0.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.15       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    7   7.2  0.5  0.5       0.02       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.28       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    8   8.2  0.5  0.5       0.02       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.43       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    9   9.2  0.5  0.5      -3.60       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -29.54       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   10  10.2  0.5  0.5      10.11       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -757.28       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   11  11.2  0.5  0.5     757.18       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            9.97       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   12  12.2  0.5  0.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   13   1.2  0.5 -0.5       0.00    -180.41      -0.00     -52.49    -645.15      -0.00     -53.79    -184.88    1289.64   -2212.75
                          110.43   -1217.79      52.49      -0.00     117.66     -53.79      -0.00    1248.03     178.26     327.76

   14   2.2  0.5 -0.5       0.00    1218.08      -0.00     -58.91     -94.22       0.00     -60.36    1248.19     188.33    -323.14
                          123.93    -177.84      58.91      -0.00    -794.36     -60.36      -0.00     182.26   -1203.55   -2212.93

   15   3.2  0.5 -0.5       0.00      50.78      -0.00    1226.43     -32.14       0.00    1256.70      52.04      64.24    -110.22
                        -2580.19     -60.66   -1226.45       0.00     -33.12    1256.69       0.00      62.17     -50.18     -92.26

   16   4.2  0.5 -0.5       0.00      86.97     110.75     -87.46    -150.63    3188.20      86.56     -85.39     -75.34      -0.00
                            0.01     -85.95     -87.45   -1672.25    -142.30     -86.55   -1417.61     -84.38      93.80       0.06

   17   5.2  0.5 -0.5       0.00    1005.29    1113.08     802.36     389.72    -114.54    -794.07    -986.99     194.93       0.01
                           -0.05     222.37     802.33    -494.46   -1644.82     794.01    1710.95     218.31    1084.20       0.72

   18   6.2  0.5 -0.5       0.00    -358.00    1412.15    -966.11    -423.06    -240.11     956.12     351.48    -211.61      -0.01
                            0.07    -241.40    -966.07    -579.22     585.75    -956.05    2217.70    -236.99    -386.10      -0.26

   19   7.2  0.5 -0.5       0.00     664.45    -287.72    -853.71    2080.98      -7.39     844.88    -652.35    1040.87       0.04
                            0.06    1187.43    -853.67     146.58   -1087.14    -844.81    -423.90    1165.71     716.60       0.48

   20   8.2  0.5 -0.5       0.00   -1029.77     419.41     560.93    1857.54     236.15    -555.13    1011.02     929.11       0.04
                           -0.04    1059.93     560.91    -327.99    1684.87     555.09     506.07    1040.55   -1110.60      -0.74

   21   9.2  0.5 -0.5       0.00    -101.50      -0.00   -2607.64      -3.44       0.00    1393.30      54.60       6.87      -6.23
                        -1516.40      12.38    2607.85       0.00     -34.70    1393.42       0.00       6.65     -52.58     -51.16

   22  10.2  0.5 -0.5       0.00   -2602.13       0.00     101.53       9.66      -0.00     -54.25    1399.84     -19.31      17.50
                           59.04     -34.77    -101.54      -0.01    -889.68     -54.25      -0.00     -18.70   -1348.12   -1311.64

   23  11.2  0.5 -0.5       0.00      34.24       0.00     -13.74     723.49      -0.00       7.34     -18.42   -1446.76    1311.48
                           -7.99   -2604.68      13.74      -0.00      11.71       7.34       0.00   -1401.10      17.74      17.26

   24  12.2  0.5 -0.5       0.00      -0.00   -2558.84       0.00      -0.00      -5.11       0.00      -0.00      -0.00      -0.00
                           -0.00      -0.00       0.00   -2558.77      -0.00      -0.00       4.97       0.00      -0.00       0.00

   25   1.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   26   2.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   27   3.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   28   4.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   29   5.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   30   6.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   31   7.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   32   8.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   33   9.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   34   1.2  1.5  0.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   35   2.2  1.5  0.5    4408.88       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   36   3.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         4408.87       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   37   4.2  1.5  0.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   38   5.2  1.5  0.5       0.02       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   39   6.2  1.5  0.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   40   7.2  1.5  0.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   41   8.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   42   9.2  1.5  0.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   43   1.2  1.5 -0.5       0.00       0.00       0.00   -2162.66      -0.00      -0.00    2330.53       0.00       0.00      -0.00
                         2204.44       0.00    2162.66       0.00       0.00    2330.54      -0.00       0.00      -0.00       0.00

   44   2.2  1.5 -0.5       0.00      -0.00       0.00      -0.00    1203.97      -0.00       0.00      -0.00   -2406.72    3818.20
                            0.00   -2162.66      -0.00       0.00      -0.00       0.00       0.00   -2330.53       0.00      -0.00

   45   3.2  1.5 -0.5       0.00    2162.66       0.00       0.00      -0.00      -0.00      -0.00   -2330.52      -0.00       0.00
                           -0.00      -0.00      -0.00       0.00    1482.31       0.00       0.00      -0.00    2246.01    3818.20

   46   4.2  1.5 -0.5       0.00       0.00   -1203.97       0.00       0.00    3873.15      -0.00       0.00       0.00      -0.00
                            0.00      -0.00       0.00   -1482.31      -0.00       0.00   -3614.53      -0.00       0.00       0.00

   47   5.2  1.5 -0.5       0.00       0.00       0.00       0.00   -3873.15       0.00      -0.00      -0.00   -1937.56       0.02
                            0.00   -2330.54      -0.00      -0.00      -0.00       0.00       0.00   -2165.38       0.00      -0.00

   48   6.2  1.5 -0.5       0.00   -2330.53      -0.00       0.00       0.00       0.00      -0.00    2165.38       0.00      -0.00
                           -0.00       0.00      -0.00      -0.00    3614.53      -0.00      -0.00       0.00   -2385.47      -0.01

   49   7.2  1.5 -0.5       0.00      -0.00       0.00    2330.52      -0.00       0.00   -2165.38      -0.00      -0.00      -0.00
                            0.00      -0.00    2330.53       0.00       0.00    2165.38      -0.00       0.00       0.00      -0.00

   50   8.2  1.5 -0.5       0.00      -0.00    2406.72       0.00      -0.00    1937.56      -0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00   -2246.01      -0.00      -0.00    2385.47      -0.00       0.00      -0.00

   51   9.2  1.5 -0.5   61639.58       0.00   -3818.20      -0.00       0.00      -0.02       0.00       0.00      -0.00      -0.00
                            0.00      -0.00       0.00   -3818.20      -0.00       0.00       0.01       0.00       0.00       0.00

   52   1.2  1.5 -1.5       0.00   59459.25       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00       0.00   -4652.73       0.00       0.00      -0.00     278.32    6613.31

   53   2.2  1.5 -1.5   -3818.20       0.00   59459.26       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00    3745.87       0.00      -0.00    4036.59      -0.00       0.00       0.00

   54   3.2  1.5 -1.5      -0.00       0.00       0.00   59459.25       0.00       0.00       0.00       0.00       0.00       0.00
                         3818.20      -0.00   -3745.87       0.00      -0.00    4036.59      -0.00       0.00      -0.00      -0.00

   55   4.2  1.5 -1.5       0.00       0.00       0.00       0.00   60341.39       0.00       0.00       0.00       0.00       0.00
                            0.00    4652.73      -0.00       0.00       0.00       0.00      -0.00     447.93      -0.00       0.00

   56   5.2  1.5 -1.5      -0.02       0.00       0.00       0.00       0.00   60341.43       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00   -4036.59      -0.00      -0.00   -3750.52       0.00       0.00       0.00

   57   6.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00   60341.40       0.00       0.00       0.00
                           -0.01      -0.00   -4036.59       0.00       0.00    3750.52       0.00       0.00       0.00      -0.00

   58   7.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00   60341.42       0.00       0.00
                           -0.00       0.00       0.00      -0.00    -447.93      -0.00      -0.00       0.00   -7487.69       0.01

   59   8.2  1.5 -1.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   60341.42       0.00
                           -0.00    -278.32      -0.00       0.00       0.00      -0.00      -0.00    7487.69      -0.00      -0.00

   60   9.2  1.5 -1.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   61639.58
                           -0.00   -6613.31      -0.00       0.00      -0.00      -0.00       0.00      -0.01       0.00       0.00


 No symmetry adaption


 Spin-orbit eigenstates   (energies)
 ======================

     Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
              (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1  -262.17328550    -0.03437582    -7544.62      0.00000000        0.00      0.0000
     2  -262.17328550    -0.03437582    -7544.62      0.00000000        0.00      0.0000
     3  -262.17328366    -0.03437399    -7544.22      0.00000183        0.40      0.0000
     4  -262.17328366    -0.03437399    -7544.22      0.00000183        0.40      0.0000
     5  -262.07450470     0.06440498    14135.26      0.09878079    21679.88      2.6880
     6  -262.07450470     0.06440498    14135.26      0.09878079    21679.88      2.6880
     7  -261.90658153     0.23232815    50990.14      0.26670397    58534.76      7.2574
     8  -261.90658153     0.23232815    50990.14      0.26670397    58534.76      7.2574
     9  -261.90657637     0.23233331    50991.27      0.26670912    58535.89      7.2575
    10  -261.90657637     0.23233331    50991.27      0.26670912    58535.89      7.2575
    11  -261.90615479     0.23275489    51083.79      0.26713071    58628.41      7.2690
    12  -261.90615479     0.23275489    51083.79      0.26713071    58628.41      7.2690
    13  -261.90289106     0.23601862    51800.10      0.27039444    59344.72      7.3578
    14  -261.90289106     0.23601862    51800.10      0.27039444    59344.72      7.3578
    15  -261.90287995     0.23602973    51802.54      0.27040555    59347.16      7.3581
    16  -261.90287995     0.23602973    51802.54      0.27040555    59347.16      7.3581
    17  -261.90286508     0.23604460    51805.80      0.27042042    59350.42      7.3585
    18  -261.90286508     0.23604460    51805.80      0.27042042    59350.42      7.3585
    19  -261.89906147     0.23984821    52640.60      0.27422403    60185.22      7.4620
    20  -261.89906147     0.23984821    52640.60      0.27422403    60185.22      7.4620
    21  -261.89904590     0.23986378    52644.01      0.27423960    60188.63      7.4624
    22  -261.89904590     0.23986378    52644.01      0.27423960    60188.63      7.4624
    23  -261.89898805     0.23992163    52656.71      0.27429745    60201.33      7.4640
    24  -261.89898805     0.23992163    52656.71      0.27429745    60201.33      7.4640
    25  -261.89815140     0.24075828    52840.34      0.27513410    60384.96      7.4868
    26  -261.89815140     0.24075828    52840.34      0.27513410    60384.96      7.4868
    27  -261.89815132     0.24075836    52840.35      0.27513417    60384.97      7.4868
    28  -261.89815132     0.24075836    52840.35      0.27513417    60384.97      7.4868
    29  -261.89815075     0.24075893    52840.48      0.27513475    60385.10      7.4868
    30  -261.89815075     0.24075893    52840.48      0.27513475    60385.10      7.4868
    31  -261.89814921     0.24076047    52840.82      0.27513629    60385.44      7.4868
    32  -261.89814921     0.24076047    52840.82      0.27513629    60385.44      7.4868
    33  -261.88140558     0.25750410    56515.62      0.29187992    64060.24      7.9425
    34  -261.88140558     0.25750410    56515.62      0.29187992    64060.24      7.9425
    35  -261.88139861     0.25751107    56517.15      0.29188689    64061.77      7.9426
    36  -261.88139861     0.25751107    56517.15      0.29188689    64061.77      7.9426
    37  -261.83178669     0.30712299    67405.70      0.34149881    74950.32      9.2927
    38  -261.83178669     0.30712299    67405.70      0.34149881    74950.32      9.2927
    39  -261.82869410     0.31021558    68084.45      0.34459140    75629.07      9.3768
    40  -261.82869410     0.31021558    68084.45      0.34459140    75629.07      9.3768
    41  -261.82869281     0.31021687    68084.73      0.34459269    75629.35      9.3768
    42  -261.82869281     0.31021687    68084.73      0.34459269    75629.35      9.3768
    43  -261.82838486     0.31052482    68152.32      0.34490064    75696.94      9.3852
    44  -261.82838486     0.31052482    68152.32      0.34490064    75696.94      9.3852
    45  -261.82833686     0.31057282    68162.85      0.34494863    75707.47      9.3865
    46  -261.82833686     0.31057282    68162.85      0.34494863    75707.47      9.3865
    47  -261.82833492     0.31057476    68163.28      0.34495058    75707.90      9.3866
    48  -261.82833492     0.31057476    68163.28      0.34495058    75707.90      9.3866
    49  -261.82595932     0.31295036    68684.66      0.34732618    76229.28      9.4512
    50  -261.82595932     0.31295036    68684.66      0.34732618    76229.28      9.4512
    51  -261.82595314     0.31295653    68686.02      0.34733235    76230.64      9.4514
    52  -261.82595314     0.31295653    68686.02      0.34733235    76230.64      9.4514
    53  -261.82502333     0.31388635    68890.09      0.34826217    76434.71      9.4767
    54  -261.82502333     0.31388635    68890.09      0.34826217    76434.71      9.4767
    55  -261.79642047     0.34248921    75167.69      0.37686503    82712.31     10.2550
    56  -261.79642047     0.34248921    75167.69      0.37686503    82712.31     10.2550
    57  -261.79028153     0.34862815    76515.03      0.38300397    84059.65     10.4221
    58  -261.79028153     0.34862815    76515.03      0.38300397    84059.65     10.4221
    59  -261.79027930     0.34863037    76515.52      0.38300619    84060.14     10.4221
    60  -261.79027930     0.34863037    76515.52      0.38300619    84060.14     10.4221


 Eigenvectors of spin-orbit matrix
 =================================

  Basis states          Eigenvectors (columnwise)

   Nr   State  S   Sz        1             2             3             4             5             6             7             8

    1    1.2  0.5  0.5   0.783399812  -0.007397103   0.011132994   0.222216809   0.571793260  -0.068007039   0.000481934   0.004639137
                         0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000

    2    2.2  0.5  0.5   0.052967741   0.009669927  -0.113796328  -0.180704539  -0.003219579  -0.027045731  -0.002176006  -0.019019169
                        -0.573963828   0.011662039   0.013880771   0.533855828   0.573575674  -0.043043514   0.008512954   0.013072506

    3    3.2  0.5  0.5   0.031569481  -0.216128272   0.402533451  -0.138652822   0.067923061   0.571104190   0.012482766  -0.008742769
                        -0.027448425   0.014036139   0.658248152  -0.007277681   0.026476961  -0.011089405  -0.022344962   0.003093046

    4    4.2  0.5  0.5   0.000131524   0.000895501  -0.009817861   0.000058007  -0.000000146   0.000000126   0.083404004  -0.010149796
                        -0.000409526   0.003870128   0.006173316  -0.002787434   0.000000200  -0.000000045   0.042888228  -0.035078761

    5    5.2  0.5  0.5  -0.001145711  -0.005517277   0.002121783   0.003747519  -0.000000127  -0.000001043  -0.010509579   0.042243323
                        -0.005300142   0.007596246  -0.002689732  -0.003856513   0.000002577  -0.000000327   0.004006550  -0.007392928

    6    6.2  0.5  0.5   0.000837033   0.007751834   0.003346257  -0.002859639  -0.000000129   0.000001269  -0.005116308  -0.024141737
                         0.002094176   0.008430850  -0.000219071   0.001593712  -0.000000971  -0.000000133  -0.025201110   0.001496949

    7    7.2  0.5  0.5  -0.002555696   0.006314481   0.001755960   0.009129766   0.000001593   0.000000998   0.034486468   0.049787641
                        -0.003432849  -0.002203448   0.002947226  -0.000113182   0.000001936  -0.000000126  -0.020608973   0.046965273

    8    8.2  0.5  0.5  -0.001534423  -0.003973552  -0.001130945   0.005333688   0.000001897  -0.000000881   0.014889975   0.008821874
                         0.005920069   0.003093787   0.000854224   0.008059900  -0.000002370   0.000000132   0.030262313   0.067423784

    9    9.2  0.5  0.5   0.000010986   0.000751392  -0.001400789   0.000510191   0.000961169   0.012853907   0.149213875  -0.104818922
                         0.000078018  -0.000048497  -0.002287355   0.000041504   0.000481121  -0.000239831  -0.268093874   0.035492630

   10   10.2  0.5  0.5   0.000247800  -0.000036047   0.000394376   0.000742898  -0.002090957  -0.000336203  -0.026024478  -0.229602102
                         0.001971292  -0.000040128  -0.000051436  -0.001832342   0.012695548  -0.000953073   0.098616705   0.151903084

   11   11.2  0.5  0.5   0.002719820  -0.000053492   0.000038022   0.000640196  -0.012702157   0.001029605  -0.007332601  -0.012712657
                        -0.000318569   0.000008557   0.000109187   0.000290694  -0.002052446   0.000163107  -0.003941403  -0.023853249

   12   12.2  0.5  0.5   0.000000003   0.000000137   0.000001728  -0.000000087  -0.000062301  -0.000523797  -0.002530359   0.000261986
                         0.000000045   0.000002218  -0.000001069   0.000000366  -0.002531630  -0.033401435  -0.001388119   0.000890287

   13    1.2  0.5 -0.5   0.001248040   0.132175313   0.219206989  -0.010982203  -0.008903428  -0.074858722  -0.000368007   0.000038230
                         0.007291058   0.772168992  -0.036450047   0.001826136   0.067421705   0.566871858  -0.004624517   0.000480416

   14    2.2  0.5 -0.5  -0.013126363  -0.556798759  -0.265824932   0.114531863   0.039132234   0.569060436  -0.011522586   0.008313512
                        -0.007563679   0.149047643  -0.496984185  -0.004973159   0.032448173   0.071900206   0.019996230  -0.002844452

   15    3.2  0.5 -0.5   0.022630272  -0.021728518  -0.135581084  -0.289109406   0.085762468   0.017356641  -0.002389766  -0.021284332
                         0.215398036   0.035748002   0.029922221   0.715359742  -0.564736903   0.070804792   0.008960579   0.014215977

   16    4.2  0.5 -0.5  -0.003965735  -0.000381464   0.000514442   0.010697487   0.000000061   0.000000217   0.035773365   0.049369223
                        -0.000229695   0.000198734   0.002740164   0.004479285  -0.000000119  -0.000000118   0.007335135   0.079738998

   17    5.2  0.5 -0.5  -0.006556471  -0.005417463   0.004329342  -0.002534240   0.000000188   0.000002572   0.004018615   0.003160236
                         0.006719821  -0.000235045   0.003189576  -0.002305266   0.000001077   0.000000212  -0.042696656  -0.010794286

   18    6.2  0.5 -0.5  -0.009617876   0.002205378  -0.003082322  -0.003336868   0.000000299  -0.000000946   0.000422849  -0.025527552
                        -0.006218250   0.000471703  -0.001103062   0.000332780  -0.000001241  -0.000000255   0.024184407  -0.003101069

   19    7.2  0.5 -0.5   0.001106479  -0.003814833   0.009024673  -0.001248745   0.000000256   0.000001711  -0.050766751  -0.017808337
                        -0.006595723  -0.001939866  -0.001385899   0.003195336  -0.000000973   0.000001832  -0.045905153   0.036012628

   20    8.2  0.5 -0.5  -0.002379017   0.005576311   0.003939387   0.001255745  -0.000000246  -0.000002598  -0.067911120   0.031348116
                         0.004438571  -0.002511261  -0.008825613   0.000657146   0.000000857   0.000001571  -0.003445580   0.012442448

   21    9.2  0.5 -0.5  -0.000078974   0.000078753   0.000496473   0.001006623   0.001920590   0.000351144  -0.027065862  -0.255412409
                        -0.000748803  -0.000002335  -0.000124628  -0.002486144  -0.012711876   0.001015884   0.107304111   0.170010609

   22   10.2  0.5 -0.5   0.000045634   0.001984840   0.001033393  -0.000397471   0.000900855   0.012860024  -0.133210854   0.096241502
                         0.000028760  -0.000088349   0.001685666   0.000013950   0.000458085  -0.000410870   0.240928496  -0.033765387

   23   11.2  0.5 -0.5   0.000000591   0.000144886   0.000583842  -0.000019597  -0.000026908  -0.000371824   0.024786531  -0.004510653
                         0.000054169   0.002734578  -0.000391767   0.000113945  -0.001042097  -0.012861534   0.010780401  -0.006996836

   24   12.2  0.5 -0.5  -0.000002210   0.000000045  -0.000000145  -0.000001880   0.033045376  -0.002501684  -0.000908264  -0.001584469
                         0.000000239  -0.000000004  -0.000000346  -0.000000771   0.004892178  -0.000393204  -0.000190537  -0.002412270

   25    1.2  1.5  1.5   0.002937235  -0.000083104   0.001276910   0.002835932   0.000001203  -0.000000060  -0.015828078  -0.178468316
                         0.027342718  -0.000579680  -0.000535144  -0.006892576  -0.000008315   0.000000632   0.067346175   0.116699289

   26    2.2  1.5  1.5  -0.000002411  -0.000271377  -0.013243402   0.000662983   0.000018120   0.000152403  -0.229765166   0.024884713
                        -0.000090695  -0.004355244   0.008207353  -0.002809151   0.000736489   0.009717032  -0.126894222   0.081061640

   27    3.2  1.5  1.5   0.000090698   0.004355777  -0.008207068   0.002809047  -0.000736525  -0.009717086   0.127053809  -0.081168378
                        -0.000002419  -0.000271399  -0.013243013   0.000662976   0.000018135   0.000152359  -0.230064642   0.024916752

   28    4.2  1.5  1.5   0.012123661  -0.000257126  -0.000293413  -0.003781255  -0.001504502   0.000113891  -0.020782127  -0.036047154
                        -0.001302311   0.000036854  -0.000700170  -0.001555552  -0.000222744   0.000017909  -0.004854495  -0.055061633

   29    5.2  1.5  1.5   0.000001887   0.000211960   0.010345050  -0.000517888  -0.000023614  -0.000198632  -0.110057561   0.011920682
                         0.000070846   0.003401694  -0.006411148   0.002194362  -0.000959972  -0.012665709  -0.060780534   0.038829306

   30    6.2  1.5  1.5   0.000070872   0.003403329  -0.006410962   0.002194295  -0.000959971  -0.012665434  -0.060683774   0.038765199
                        -0.000001888  -0.000212058  -0.010344785   0.000517878   0.000023616   0.000198608   0.109875307  -0.011900314

   31    7.2  1.5  1.5  -0.000365834   0.000010112   0.002085955   0.004641356   0.003721526  -0.000299121   0.008788349   0.104677896
                        -0.003396376   0.000070298  -0.000873453  -0.011290462  -0.025137890   0.001903044  -0.039572700  -0.069181270

   32    8.2  1.5  1.5  -0.004131188   0.000085877  -0.000857990  -0.011091398  -0.025113642   0.001901216  -0.038257091  -0.066899085
                         0.000444764  -0.000012342  -0.002049083  -0.004559451  -0.003717933   0.000298820  -0.008481598  -0.101192648

   33    9.2  1.5  1.5   0.048014043  -0.001017918  -0.000939322  -0.012097724   0.000002239  -0.000000175   0.058731110   0.101772440
                        -0.005157817   0.000145915  -0.002241199  -0.004977604   0.000000334  -0.000000031   0.013800612   0.155636673

   34    1.2  1.5  0.5  -0.000052370  -0.002515011   0.004750045  -0.001625819  -0.000854177  -0.011269821  -0.072294865   0.046181631
                         0.000001394   0.000156697   0.007664688  -0.000383696   0.000020989   0.000176723   0.130892950  -0.014180085

   35    2.2  1.5  0.5   0.010736464  -0.000230136  -0.001594891  -0.020601404  -0.005543155   0.000419645   0.134668664   0.234827916
                        -0.001151869   0.000032931  -0.003808170  -0.008470387  -0.000820635   0.000065992   0.030409377   0.356412406

   36    3.2  1.5  0.5  -0.002236171   0.000062899   0.002340505   0.005210806   0.000829055  -0.000066632  -0.011962769  -0.148319719
                        -0.020802906   0.000438492  -0.000979739  -0.012679222  -0.005600237   0.000423990   0.056141347   0.098748204

   37    4.2  1.5  0.5  -0.000002333  -0.000258851  -0.010194609   0.000510332   0.000047379   0.000398226   0.106802140  -0.011553871
                        -0.000086805  -0.004150918   0.006317829  -0.002162343   0.001924724   0.025393923   0.059002164  -0.037682458

   38    5.2  1.5  0.5   0.012301041  -0.000260793  -0.000240703  -0.003099958  -0.021686262   0.001641743  -0.018531067  -0.032110185
                        -0.001321403   0.000037385  -0.000574283  -0.001275481  -0.003210500   0.000258043  -0.004356272  -0.049105862

   39    6.2  1.5  0.5   0.001326209  -0.000037516   0.000572056   0.001270489  -0.003218017   0.000258638   0.004389325   0.049493449
                         0.012345579  -0.000261731  -0.000239758  -0.003087821   0.021736786  -0.001645570  -0.018676080  -0.032361949

   40    7.2  1.5  0.5   0.000264277   0.012391117   0.001773475  -0.000608310  -0.000000793  -0.000010533   0.028800201  -0.018568966
                        -0.000007178  -0.000775680   0.002859720  -0.000143785   0.000000026   0.000000186  -0.052753499   0.005950847

   41    8.2  1.5  0.5  -0.000007056  -0.000761906   0.003474746  -0.000174569  -0.000002821  -0.000023711  -0.058859892   0.006609353
                        -0.000259689  -0.012170176  -0.002154638   0.000738776  -0.000114681  -0.001512909  -0.032177803   0.020723757

   42    9.2  1.5  0.5   0.000007382   0.000827395   0.040365974  -0.002020803   0.000000001   0.000000035   0.345125551  -0.037385020
                         0.000276507   0.013278864  -0.025015998   0.008562288   0.000000188   0.000002492   0.190603831  -0.121762567

   43    1.2  1.5 -0.5  -0.000269882   0.000007462   0.001540860   0.003428475   0.001650638  -0.000132637  -0.010471971  -0.124745566
                        -0.002505394   0.000051854  -0.000645181  -0.008340019  -0.011149685   0.000844078   0.047160955   0.082450323

   44    2.2  1.5 -0.5  -0.000006369  -0.000676101   0.018932977  -0.000948638   0.000010485   0.000087867   0.373917320  -0.040996343
                        -0.000232393  -0.010776890  -0.011734892   0.004018199   0.000424673   0.005602882   0.205814944  -0.131832011

   45    3.2  1.5 -0.5   0.000442818   0.020881963  -0.007219991   0.002469510   0.000429064   0.005660575   0.086671330  -0.055015463
                        -0.000011985  -0.001305756  -0.011652764   0.000582558  -0.000010550  -0.000088741  -0.155685668   0.016378568

   46    4.2  1.5 -0.5  -0.004135083   0.000085955  -0.000858107  -0.011092836   0.025123223  -0.001901955  -0.038480237  -0.067288472
                         0.000445203  -0.000012346  -0.002049346  -0.004560043   0.003719351  -0.000298954  -0.008528243  -0.101785137

   47    5.2  1.5 -0.5  -0.000007152  -0.000772973   0.002848754  -0.000143243   0.000040887   0.000343719  -0.051498303   0.005812549
                        -0.000263362  -0.012347640  -0.001766688   0.000605987   0.001661396   0.021919925  -0.028113598   0.018127102

   48    6.2  1.5 -0.5  -0.000264309  -0.012392351  -0.001759774   0.000603635  -0.001665267  -0.021970999  -0.028333823   0.018269036
                         0.000007181   0.000775751  -0.002837601   0.000142677   0.000040975   0.000344557   0.051904640  -0.005857001

   49    7.2  1.5 -0.5   0.001326071  -0.000037514   0.000576486   0.001280376   0.000001563  -0.000000129   0.004459082   0.050302636
                         0.012344351  -0.000261699  -0.000241618  -0.003111888  -0.000010418   0.000000783  -0.018982510  -0.032894194

   50    8.2  1.5 -0.5  -0.012124253   0.000257157   0.000293385   0.003781106  -0.001496784   0.000113324   0.021182747   0.036745551
                         0.001302371  -0.000036860   0.000700135   0.001555494  -0.000221576   0.000017811   0.004944581   0.056121853

   51    9.2  1.5 -0.5   0.013228097  -0.000273789   0.003397897   0.043922591   0.000002466  -0.000000187  -0.124344479  -0.217380787
                        -0.001424879   0.000039376   0.008114845   0.018055969   0.000000361  -0.000000026  -0.027608207  -0.328918014

   52    1.2  1.5 -1.5   0.000585391   0.027446303   0.003928105  -0.001347394  -0.000000634  -0.000008401  -0.102174263   0.065878359
                        -0.000015891  -0.001718140   0.006334044  -0.000318445  -0.000000023   0.000000104   0.187163254  -0.021120536

   53    2.2  1.5 -1.5   0.004338594  -0.000089802   0.001114786   0.014410272  -0.009613446   0.000727777  -0.082780207  -0.144720809
                        -0.000467331   0.000012926   0.002662354   0.005923884  -0.001423237   0.000114384  -0.018375955  -0.218975027

   54    3.2  1.5 -1.5  -0.000467399   0.000012918   0.002662252   0.005923666  -0.001423201   0.000114404  -0.018399427  -0.219260900
                        -0.004339123   0.000089806  -0.001114762  -0.014409842   0.009613505  -0.000727812   0.082889150   0.144903649

   55    4.2  1.5 -1.5   0.000007057   0.000761865  -0.003474883   0.000174590  -0.000002844  -0.000023859   0.057747612  -0.006487771
                         0.000259658   0.012169583   0.002154719  -0.000738815  -0.000115255  -0.001520714   0.031565711  -0.020331546

   56    5.2  1.5 -1.5  -0.003388689   0.000070149  -0.000870813  -0.011256547   0.012530691  -0.000948618  -0.039652569  -0.069319479
                         0.000365013  -0.000010093  -0.002079692  -0.004627422   0.001855107  -0.000149090  -0.008802922  -0.104889227

   57    6.2  1.5 -1.5  -0.000365192   0.000010096   0.002079627   0.004627282  -0.001855048   0.000149091   0.008787704   0.104715223
                        -0.003390317   0.000070174  -0.000870792  -0.011256255   0.012530421  -0.000948617  -0.039587048  -0.069208566

   58    7.2  1.5 -1.5  -0.000070996  -0.003409409   0.006430457  -0.002200973  -0.001925825  -0.025408748   0.060659525  -0.038750845
                         0.000001894   0.000212448   0.010376220  -0.000519465   0.000047401   0.000398462  -0.109835932   0.011899818

   59    8.2  1.5 -1.5  -0.000002324  -0.000258626  -0.010193287   0.000510259  -0.000047342  -0.000398074   0.106180629  -0.011489672
                        -0.000086728  -0.004147004   0.006317008  -0.002162065  -0.001923974  -0.025384239   0.058661004  -0.037463715

   60    9.2  1.5 -1.5   0.000027920   0.003017061  -0.011117394   0.000558977   0.000000008   0.000000038  -0.163219466   0.018416056
                         0.001027944   0.048195941   0.006894565  -0.002364919   0.000000177   0.000002264  -0.089105608   0.057451276


   Nr   State  S   Sz        9            10            11            12            13            14            15            16

    1    1.2  0.5  0.5  -0.030008567  -0.002403106  -0.021057588  -0.003398953  -0.000028797  -0.000000089  -0.000144949   0.000008969
                        -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000

    2    2.2  0.5  0.5  -0.002997688  -0.000591272  -0.000065436   0.000984087   0.000015517  -0.000003748  -0.000020484   0.000003112
                         0.017152323   0.000871709  -0.021473497  -0.002437781   0.000058919  -0.000004704   0.000027483   0.000003152

    3    3.2  0.5  0.5  -0.002090628   0.011283423   0.000169598  -0.000755380   0.000003630   0.000052833  -0.000006836  -0.000061254
                         0.000390068   0.005650835   0.002449177  -0.021677825   0.000002788  -0.000000965  -0.000005094  -0.000102507

    4    4.2  0.5  0.5  -0.000364027   0.002027700  -0.000102014   0.000556435   0.004590973   0.003337990  -0.006642339  -0.078946612
                         0.005426001  -0.015482832  -0.000013076   0.000003751  -0.001448409   0.045937303  -0.004671508   0.045004212

    5    5.2  0.5  0.5   0.000725828   0.067367398   0.000252724  -0.000865120  -0.028683679  -0.027308774   0.004354189   0.031655365
                         0.051750656  -0.031787323  -0.000417363  -0.000265307  -0.032265671   0.003117385  -0.048459008   0.008618772

    6    6.2  0.5  0.5  -0.002419586  -0.015298176   0.000109643  -0.001153975   0.022294392   0.033844865  -0.002664004   0.013624505
                        -0.011781550  -0.093281800   0.000042704   0.000335164   0.007957834  -0.002067637   0.016528859  -0.038910808

    7    7.2  0.5  0.5   0.011583983  -0.048773375   0.000196354   0.000281586  -0.079994734   0.037707197   0.022844927  -0.015652259
                         0.033669318  -0.004584233  -0.000276652   0.000209753   0.000523452  -0.000969921  -0.034575161  -0.014590542

    8    8.2  0.5  0.5  -0.001775770   0.038081750   0.000172006  -0.000285160  -0.055036379  -0.016292243   0.022516244   0.005447955
                        -0.051474437  -0.010885134   0.000462674  -0.000071942   0.060638690  -0.000400458   0.050970825   0.010902062

    9    9.2  0.5  0.5  -0.009172110   0.139851840  -0.017232182   0.009740608  -0.000009340  -0.000221647   0.000003849   0.000734523
                         0.002867505   0.069256235  -0.041498635   0.342787510   0.000015394   0.000002802   0.000154132   0.001223127

   10   10.2  0.5  0.5   0.021401585  -0.002332311  -0.052527837  -0.024273447   0.000137883  -0.000002826   0.000031615  -0.000090290
                         0.206106235   0.010569313   0.341078913   0.039529875   0.000426637  -0.000032738   0.002001300  -0.000134745

   11   11.2  0.5  0.5   0.352489531   0.022944116  -0.342965349  -0.053355814  -0.000303032   0.000021522  -0.001405274   0.000065510
                        -0.031869157  -0.004540279  -0.053945760  -0.022309911   0.000094413  -0.000008003   0.000008790  -0.000036397

   12   12.2  0.5  0.5  -0.000204305   0.002601793  -0.106944300   0.662516761  -0.000000839   0.000011914   0.000162410   0.002616498
                         0.000331162  -0.005303198   0.033003396  -0.020201294   0.000056813   0.000745687   0.000009886  -0.001573518

   13    1.2  0.5 -0.5  -0.000868777   0.010848774  -0.003377768   0.020926335  -0.000000029   0.000009517   0.000007569   0.000122312
                         0.002240568  -0.027978888  -0.000378908   0.002347451  -0.000000084   0.000027179  -0.000004813  -0.000077782

   14    2.2  0.5 -0.5  -0.001026507   0.017075929   0.000706195   0.002458844  -0.000005678  -0.000060736   0.000000935   0.000032033
                         0.000236138   0.003406018   0.002532290  -0.021332356  -0.000001983   0.000004828  -0.000004329   0.000012199

   15    3.2  0.5 -0.5  -0.001189419   0.001119494  -0.003167266  -0.000441569   0.000016551  -0.000003831   0.000003319   0.000003035
                        -0.012563155  -0.001808207   0.021458498   0.002415005   0.000050183  -0.000002505   0.000119368  -0.000007967

   16    4.2  0.5 -0.5   0.015168684   0.005190608   0.000553385   0.000102836   0.044459144  -0.000150285  -0.090767244   0.003098203
                         0.003706840   0.001622216   0.000058302  -0.000001622  -0.012031728  -0.004811688   0.004387942  -0.007506317

   17    5.2  0.5 -0.5   0.053992169   0.047988012  -0.000889304  -0.000204622  -0.006083262   0.039932440   0.022086753  -0.029677922
                        -0.051319058   0.019385765   0.000167212  -0.000442935  -0.026804499   0.016408144  -0.024259445  -0.038554576

   18    6.2  0.5 -0.5   0.081441896  -0.010109950  -0.001109419  -0.000113720   0.009234181  -0.014878892   0.032376790   0.011117563
                         0.047986935  -0.006515230  -0.000461717   0.000030215   0.032626368  -0.018411561   0.025522961   0.012517982

   19    7.2  0.5 -0.5  -0.013358505   0.027204167   0.000303214  -0.000164289   0.011546703   0.025943993  -0.005378347  -0.037830681
                         0.047131812   0.022972700  -0.000177055  -0.000296817   0.035908872   0.075672589   0.020711120  -0.016916621

   20    8.2  0.5 -0.5   0.023916312  -0.047350898  -0.000291403  -0.000222512  -0.005762495  -0.039041854  -0.001253048   0.008351759
                        -0.031570807  -0.020264833   0.000039704   0.000440616  -0.015244383   0.071984633  -0.012122914   0.055093143

   21    9.2  0.5 -0.5  -0.014012380   0.005989481   0.047893057   0.021750945  -0.000070609  -0.000011442  -0.000036534   0.000079462
                        -0.155430423  -0.007515071  -0.339565033  -0.039318967  -0.000210118   0.000013903  -0.001426264   0.000132126

   22   10.2  0.5 -0.5  -0.010697623   0.184428746  -0.019715450   0.014177734  -0.000031832  -0.000448233  -0.000003883   0.001047246
                        -0.001646483   0.094466109  -0.041989430   0.344808629   0.000008153   0.000010867   0.000162153   0.001705719

   23   11.2  0.5 -0.5   0.012528005  -0.157146555  -0.055510301   0.346841374  -0.000000441   0.000011043   0.000074810   0.001190527
                        -0.019750840   0.317126904   0.016222868  -0.015376524   0.000022957   0.000317207  -0.000004441  -0.000746671

   24   12.2  0.5 -0.5   0.005885114   0.000382624   0.656135257   0.102598566   0.000707722  -0.000053343   0.003052245  -0.000131741
                        -0.000508591  -0.000070764   0.093931223   0.044719588  -0.000235203   0.000019568  -0.000076267   0.000095493

   25    1.2  1.5  1.5   0.038565586   0.006392906   0.000692037   0.000311555   0.162339615  -0.012583060   0.003710521  -0.004778238
                         0.473799718   0.030131038  -0.004723011  -0.000736292   0.480684386  -0.037684126   0.153873673  -0.006587505

   26    2.2  1.5  1.5  -0.004502802   0.058175505  -0.031423657   0.194682958   0.000232964   0.001856912   0.000667730   0.009587452
                         0.006884857  -0.118402905   0.009697528  -0.005938995   0.013135633   0.167557567   0.000009593  -0.005709037

   27    3.2  1.5  1.5  -0.006857226   0.117916098  -0.009600780   0.005878240   0.002846960   0.036345241   0.001208009  -0.186711936
                        -0.004481850   0.057938079  -0.031104127   0.192698530  -0.000078218  -0.000513896  -0.019251290  -0.310790206

   28    4.2  1.5  1.5  -0.126384809  -0.008046484  -0.002816264  -0.000440305  -0.299628206   0.023490906  -0.088341608   0.003781835
                         0.010267008   0.001707139  -0.000400116  -0.000194368   0.101195091  -0.007843422   0.002121497  -0.002742665

   29    5.2  1.5  1.5  -0.002129830   0.027536954  -0.005623251   0.034840863   0.000027695   0.000298937  -0.013637223  -0.220579035
                         0.003256609  -0.056042374   0.001736484  -0.001063118   0.002681650   0.034178906  -0.000867577   0.132533213

   30    6.2  1.5  1.5   0.003295645  -0.056696587   0.001716904  -0.001052913   0.008359287   0.106602431  -0.000433859   0.063895665
                         0.002156171  -0.027854469   0.005563236  -0.034471156  -0.000139703  -0.001141385   0.006531039   0.106294612

   31    7.2  1.5  1.5   0.005311165   0.000793954   0.010196766   0.004855233  -0.015129000   0.001169477   0.003199175  -0.003950699
                         0.060994832   0.003728051  -0.071234224  -0.011140411  -0.044666634   0.003509073   0.126339794  -0.005408241

   32    8.2  1.5  1.5   0.068559808   0.004209953  -0.070955899  -0.011096478  -0.026879391   0.002114652   0.132325295  -0.005664564
                        -0.005924823  -0.000896081  -0.010156985  -0.004835016   0.009121793  -0.000703853  -0.003343742   0.004136734

   33    9.2  1.5  1.5   0.412132166   0.026209749  -0.002715641  -0.000423223   0.000520617  -0.000041103   0.001097261  -0.000046772
                        -0.033545301  -0.005561006  -0.000404930  -0.000175157  -0.000174647   0.000013767  -0.000028021   0.000033656

   34    1.2  1.5  0.5   0.003841827  -0.066236988  -0.011140407   0.006816880   0.017813170   0.227125290  -0.002088875   0.315429202
                         0.002517869  -0.032540503  -0.036098859   0.223631764  -0.000270652  -0.002320586   0.032386469   0.524897854

   35    2.2  1.5  0.5   0.126533845   0.008410617   0.115318783   0.018035978  -0.307315298   0.024074060  -0.436382954   0.018681260
                        -0.009460600  -0.001778398   0.016493473   0.007866659   0.103682317  -0.008043973   0.010888272  -0.013617493

   36    3.2  1.5  0.5  -0.035184652  -0.005623278  -0.016614612  -0.007897187   0.177011356  -0.013712134  -0.004542211   0.005438381
                        -0.421991288  -0.026474074   0.115986111   0.018139636   0.523803135  -0.041082154  -0.173027463   0.007406167

   37    4.2  1.5  0.5   0.002412041  -0.031000482   0.011069488  -0.068579617   0.000074321   0.000647722  -0.006291433  -0.101991285
                        -0.003688359   0.063188662  -0.003416256   0.002092006   0.004854516   0.061909222  -0.000407782   0.061285669

   38    5.2  1.5  0.5  -0.131149883  -0.008341162  -0.056818636  -0.008884791   0.014671200  -0.001160837  -0.199564870   0.008543373
                         0.010677413   0.001768978  -0.008128224  -0.003875944  -0.005019345   0.000384031   0.005033534  -0.006236747

   39    6.2  1.5  0.5  -0.010694836  -0.001773949  -0.008610248  -0.004094159  -0.038487400   0.002978198   0.004259118  -0.005239788
                        -0.131409486  -0.008355395   0.060107028   0.009397235  -0.113768978   0.008930039   0.167459566  -0.007168864

   40    7.2  1.5  0.5   0.007216009  -0.119731964   0.000063962  -0.000031052  -0.013037789  -0.166549197   0.000047515  -0.007272251
                         0.004717096  -0.058001637   0.000196068  -0.001210802   0.000173035   0.001832226  -0.000794216  -0.012288372

   41    8.2  1.5  0.5   0.004522135  -0.055528013  -0.000779290   0.004833345   0.000300091   0.002786326   0.007885764   0.127362040
                        -0.006918775   0.114675687   0.000236966  -0.000152542   0.019443450   0.248265282   0.000483967  -0.076603440

   42    9.2  1.5  0.5   0.006656667  -0.086054430  -0.000572315   0.003523135   0.000000883   0.000006908   0.000018248   0.000295822
                        -0.010173100   0.175131558   0.000174653  -0.000103701   0.000044966   0.000562572   0.000000415  -0.000178593

   43    1.2  1.5 -0.5  -0.006393406  -0.000958661  -0.031704345  -0.015095186  -0.072874074   0.005631759   0.015498864  -0.019141652
                        -0.073521067  -0.004492245   0.221477923   0.034631946  -0.215129384   0.016901644   0.612187164  -0.026207708

   44    2.2  1.5 -0.5  -0.004698742   0.054565558  -0.018800516   0.116438648  -0.000364450  -0.003710731  -0.023071103  -0.374075151
                         0.007198820  -0.114555300   0.005807016  -0.003535196  -0.025379776  -0.324313037  -0.001466222   0.224980928

   45    3.2  1.5 -0.5  -0.022650514   0.380729169   0.005825799  -0.003581187   0.043305446   0.552870809  -0.000614815   0.089015937
                        -0.014813914   0.185364255   0.018906931  -0.117115321  -0.000635926  -0.006050883   0.009167840   0.148442911

   46    4.2  1.5 -0.5   0.070122166   0.004310898   0.067918944   0.010619655  -0.058644427   0.004606289   0.118949837  -0.005090069
                        -0.006059586  -0.000915474   0.009724064   0.004628963   0.019849497  -0.001534259  -0.003015255   0.003720163

   47    5.2  1.5 -0.5   0.004664848  -0.057368872   0.009261492  -0.057370597   0.000021203   0.000111497  -0.010555861  -0.171099580
                        -0.007137468   0.118419219  -0.002861329   0.001743549   0.001222528   0.015505661  -0.000678259   0.102841662

   48    6.2  1.5 -0.5  -0.007148941   0.118654965   0.003021057  -0.001855986  -0.009412519  -0.120095933   0.000574577  -0.086267013
                        -0.004674629   0.057478968   0.009795068  -0.060692228   0.000140508   0.001275645  -0.008861030  -0.143592649

   49    7.2  1.5 -0.5  -0.010792794  -0.001789297   0.000165836   0.000085421   0.053314766  -0.004145640  -0.000457568   0.000466281
                        -0.132602596  -0.008433278  -0.001199794  -0.000187715   0.157795842  -0.012362344  -0.014271663   0.000644685

   50    8.2  1.5 -0.5   0.126994039   0.008085667  -0.004786213  -0.000748016  -0.235235382   0.018450044  -0.148578117   0.006394529
                        -0.010314436  -0.001714980  -0.000690402  -0.000322363   0.079421212  -0.006142776   0.003703960  -0.004639989

   51    9.2  1.5 -0.5   0.194396866   0.011891561  -0.003489615  -0.000549277  -0.000533242   0.000042731  -0.000345458   0.000015176
                        -0.016919987  -0.002528627  -0.000495806  -0.000237365   0.000179408  -0.000014028   0.000008040  -0.000010142

   52    1.2  1.5 -1.5  -0.025781896   0.427811167   0.000227533  -0.000161213  -0.039725208  -0.507326063  -0.000497073   0.079439568
                        -0.016853561   0.207246431   0.000766434  -0.004770718   0.000578516   0.005647551   0.008122789   0.131834101

   53    2.2  1.5 -1.5   0.131426288   0.008047053   0.192807421   0.030146734   0.158755707  -0.012474496   0.011153709  -0.000558302
                        -0.011435387  -0.001709216   0.027604786   0.013140120  -0.053624731   0.004121416  -0.000327303   0.000366407

   54    3.2  1.5 -1.5  -0.011390011  -0.001699671   0.027323190   0.013008355   0.011526980  -0.000867089   0.009221213  -0.011349845
                        -0.130886572  -0.008013716  -0.190842135  -0.029839980   0.034472734  -0.002712832   0.362445676  -0.015596553

   55    4.2  1.5 -1.5  -0.004500660   0.055263543  -0.000459228   0.002843314   0.000361000   0.003517631   0.004662970   0.075683587
                         0.006885078  -0.114124810   0.000144073  -0.000083671   0.024763110   0.316235884   0.000284957  -0.045615075

   56    5.2  1.5 -1.5   0.062207087   0.003806325   0.034505183   0.005394621   0.032357088  -0.002540113  -0.257249915   0.011041924
                        -0.005413864  -0.000808438   0.004940471   0.002352528  -0.011013891   0.000860139   0.006530276  -0.008049997

   57    6.2  1.5 -1.5   0.005473391   0.000818885  -0.004889115  -0.002326379   0.034154552  -0.002630868  -0.003122088   0.003870743
                         0.062931839   0.003852243   0.034138919   0.005337164   0.100989344  -0.007935725  -0.123981665   0.005278262

   58    7.2  1.5 -1.5  -0.003188866   0.054949240   0.003583063  -0.002192182   0.003698396   0.047156773  -0.000431580   0.065096020
                        -0.002088028   0.027002944   0.011612222  -0.071926928  -0.000055978  -0.000483339   0.006683624   0.108325835

   59    8.2  1.5 -1.5   0.002357466  -0.030310006  -0.011566310   0.071645904   0.000034586   0.000274350  -0.006999746  -0.113454147
                        -0.003601252   0.061780696   0.003567869  -0.002183675   0.002228445   0.028383684  -0.000451015   0.068185928

   60    9.2  1.5 -1.5   0.014660294  -0.180271489  -0.000440111   0.002743855  -0.000000591  -0.000007229  -0.000057527  -0.000940937
                        -0.022426580   0.372129547   0.000126886  -0.000099673  -0.000043344  -0.000549082  -0.000003302   0.000565160


   Nr   State  S   Sz       17            18            19            20            21            22            23            24

    1    1.2  0.5  0.5   0.000127135   0.000023207   0.000092427   0.000065616  -0.000034851   0.000004523   0.000036966  -0.000003561
                         0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000

    2    2.2  0.5  0.5   0.000018320   0.000002736   0.000004925   0.000001463   0.000001391  -0.000005075   0.000001603   0.000001240
                        -0.000017731  -0.000006867  -0.000077572  -0.000055069  -0.000041175   0.000004037  -0.000031628   0.000001716

    3    3.2  0.5  0.5  -0.000001274   0.000028792  -0.000008573   0.000020440   0.000008921   0.000030779   0.000000052  -0.000004588
                        -0.000015489   0.000079658   0.000006297  -0.000016763   0.000006453   0.000063011   0.000001706   0.000031919

    4    4.2  0.5  0.5   0.005419540  -0.030823351  -0.080126452   0.120836446   0.092678573   0.562027066   0.035623786   0.083554104
                        -0.000263803   0.006872919  -0.143591355   0.172305148  -0.067790079  -0.274127067  -0.028488983  -0.009088680

    5    5.2  0.5  0.5   0.007500818  -0.039093168  -0.279213637   0.330420856  -0.119714346  -0.136363839  -0.124241031   0.009610727
                         0.010072108   0.055491504  -0.213429792   0.023283383   0.245988288  -0.020767047  -0.276948562   0.256382583

    6    6.2  0.5  0.5   0.014261309  -0.077586270  -0.017518288   0.068859000   0.055476927  -0.181412656   0.112272560   0.045918863
                        -0.006000071  -0.020169446  -0.283489713   0.485636394  -0.033777434   0.173651931   0.074173307  -0.276782764

    7    7.2  0.5  0.5   0.006094980   0.001455506   0.086278358  -0.270060087  -0.285755177   0.121642419  -0.422669562   0.078696892
                         0.021609545  -0.037847177  -0.126094700   0.015193128   0.115618454   0.051309092  -0.179052734  -0.241810824

    8    8.2  0.5  0.5   0.005345991  -0.011658169  -0.177934469   0.165437063  -0.210429395  -0.011192310  -0.333244265   0.012729876
                        -0.027982078   0.026939142   0.124889808   0.115009435  -0.290983098   0.026901571   0.378418626   0.111149935

    9    9.2  0.5  0.5   0.000091303  -0.000361370  -0.000112426   0.000156212   0.000071407   0.000212760  -0.000013001  -0.000025743
                         0.000133546  -0.001048947   0.000069152  -0.000139616   0.000053920   0.000434381  -0.000011795   0.000197914

   10   10.2  0.5  0.5  -0.000027396   0.000050082  -0.000063596  -0.000060059   0.000015762  -0.000019005  -0.000098448   0.000039795
                        -0.001456313  -0.000239293  -0.000499198  -0.000352719  -0.000098752  -0.000000823  -0.000789134   0.000070778

   11   11.2  0.5  0.5   0.001100209   0.000210273  -0.000687646  -0.000494515   0.000140638  -0.000020660  -0.000174381   0.000015859
                        -0.000008884   0.000022699   0.000088275   0.000069450   0.000024722  -0.000013113   0.000032026  -0.000008842

   12   12.2  0.5  0.5   0.000391911  -0.002141663  -0.000035399   0.000049746   0.000002443   0.000020628  -0.000021200  -0.000206474
                        -0.000202895   0.000745327  -0.000044719   0.000061330  -0.000003385  -0.000010308  -0.000010236  -0.000029155

   13    1.2  0.5 -0.5   0.000021712  -0.000118944   0.000046931  -0.000066106   0.000004334   0.000033395  -0.000003560  -0.000036960
                        -0.000008195   0.000044896   0.000045859  -0.000064596  -0.000001294  -0.000009971  -0.000000064  -0.000000662

   14    2.2  0.5 -0.5   0.000004985  -0.000023402  -0.000037441   0.000050691  -0.000006018  -0.000013114   0.000001270  -0.000001036
                         0.000005458  -0.000010119   0.000040409  -0.000058924  -0.000002416  -0.000039056  -0.000001693  -0.000031651

   15    3.2  0.5 -0.5  -0.000001193  -0.000004278   0.000002904   0.000001730   0.000011465  -0.000006702  -0.000004016  -0.000000082
                        -0.000084694  -0.000014941   0.000026275   0.000010495  -0.000069184   0.000008736  -0.000031996   0.000001705

   16    4.2  0.5 -0.5  -0.031264529  -0.005163524   0.206848066   0.157663303   0.616963051  -0.108199741   0.083377994  -0.035108027
                         0.004454796   0.001667040  -0.038786441  -0.046701269   0.101865923  -0.038439936   0.010583127  -0.029122204

   17    5.2  0.5 -0.5  -0.056170610  -0.003460704   0.252599321   0.348865718  -0.124721714   0.185089671   0.014199309   0.129179442
                        -0.038110962   0.012071999   0.214274687   0.042488142   0.058914013   0.201453657  -0.256169425  -0.274679835

   18    6.2  0.5 -0.5  -0.065464877  -0.015461324   0.388656158   0.210657573  -0.223512611  -0.062821879   0.040956148  -0.113582521
                         0.046268626  -0.000577281  -0.299216743  -0.190516915  -0.114488678  -0.016492906   0.277560506   0.072151356

   19    7.2  0.5 -0.5   0.014727012   0.001928867  -0.182536678   0.026417412   0.101877305   0.306889295   0.074355039   0.425807472
                         0.034894734   0.022369637  -0.199608725  -0.150485710  -0.083967350   0.029027724   0.243181010  -0.171456808

   20    8.2  0.5 -0.5  -0.020420286  -0.014883095   0.198704383   0.039979846  -0.018421251   0.118379492   0.014717799   0.326415868
                        -0.021086540  -0.024291353   0.033364056   0.213681425  -0.022574761  -0.339025057  -0.110904212   0.384324183

   21    9.2  0.5 -0.5   0.000032335  -0.000038261   0.000014151   0.000032081   0.000079585  -0.000052995  -0.000022195   0.000013210
                         0.001108978   0.000157185   0.000209032   0.000128033  -0.000477096   0.000072097  -0.000198343  -0.000011560

   22   10.2  0.5 -0.5   0.000131359  -0.000488649  -0.000289468   0.000394370  -0.000017975  -0.000043357   0.000041056   0.000112561
                         0.000206190  -0.001372159   0.000210300  -0.000312595   0.000006226  -0.000090114  -0.000070054  -0.000787245

   23   11.2  0.5 -0.5   0.000188709  -0.001032461  -0.000305154   0.000430130  -0.000016045  -0.000127686   0.000015698   0.000173779
                        -0.000095492   0.000380214  -0.000395284   0.000543726   0.000018476   0.000063926   0.000009125   0.000035143

   24   12.2  0.5 -0.5  -0.002266882  -0.000438310   0.000078443   0.000056572   0.000022715  -0.000003310  -0.000206962   0.000021380
                         0.000058997  -0.000051424  -0.000009098  -0.000007245   0.000003975  -0.000002544   0.000025454  -0.000009855

   25    1.2  1.5  1.5  -0.003637256   0.003057040   0.001777081   0.001405347   0.000248854  -0.000184469   0.006065396  -0.002422883
                        -0.138249259  -0.026721081   0.014886500   0.010734808  -0.001552718   0.000236557   0.049672216  -0.004932643

   26    2.2  1.5  1.5  -0.105010248   0.574633101   0.026259522  -0.037051183   0.000739356   0.005937563   0.002084682   0.020763388
                         0.054134920  -0.199681242   0.033457962  -0.045837911  -0.000947820  -0.002857511   0.001035892   0.002897927

   27    3.2  1.5  1.5   0.046224999  -0.170559346   0.028728650  -0.039325736   0.005061090   0.014980173   0.000912355   0.002584864
                         0.089686320  -0.490986565  -0.022528737   0.031839043   0.004126958   0.030420152  -0.001853181  -0.018518176

   28    4.2  1.5  1.5   0.084988568   0.016426700   0.069039930   0.049806014   0.008239120  -0.001370852   0.285424654  -0.028354215
                        -0.002236664   0.001877508  -0.008259494  -0.006515785   0.001437591  -0.000816686  -0.034852773   0.013930063

   29    5.2  1.5  1.5   0.026984777  -0.147815461   0.059820405  -0.084721247  -0.027297820  -0.202632470   0.006021587   0.060414401
                        -0.013903073   0.051323052   0.076370268  -0.104420255   0.033600252   0.099583150   0.002956702   0.008440832

   30    6.2  1.5  1.5   0.022613192  -0.083390049  -0.107121159   0.146839573   0.019176537   0.057078026  -0.004671832  -0.012936862
                         0.043856736  -0.239914071   0.084123808  -0.118569811   0.015455837   0.116647059   0.009272718   0.092563629

   31    7.2  1.5  1.5  -0.000830363   0.000721485  -0.002580769  -0.001932792  -0.021489769   0.014017211   0.000927409  -0.000408659
                        -0.032120103  -0.006213898  -0.020810554  -0.015017096   0.128275099  -0.020503343   0.007638517  -0.000788075

   32    8.2  1.5  1.5  -0.037397688  -0.007234226  -0.021421906  -0.015462349   0.112212298  -0.017931347  -0.006590730   0.000628267
                         0.000969222  -0.000838336   0.002637592   0.002002288   0.018793734  -0.012267852   0.000807070  -0.000292814

   33    9.2  1.5  1.5  -0.001011565  -0.000195289  -0.001332865  -0.000961225  -0.000019305   0.000005058  -0.000700981   0.000068346
                         0.000026887  -0.000024006   0.000157879   0.000127466  -0.000004108   0.000002108   0.000085709  -0.000034635

   34    1.2  1.5  0.5   0.013955889  -0.051385651   0.007678673  -0.010575042  -0.010075742  -0.029906817   0.000194108   0.000488666
                         0.027036968  -0.147587562  -0.006059460   0.008461231  -0.008159538  -0.060958417  -0.000362654  -0.003505958

   35    2.2  1.5  0.5   0.195446475   0.037790087  -0.021257898  -0.015333368   0.034193705  -0.005451396  -0.042539057   0.004214812
                        -0.005107390   0.004345786   0.002558399   0.002003030   0.005715697  -0.003750830   0.005196517  -0.002067428

   36    3.2  1.5  0.5  -0.001117499   0.000882071   0.000943930   0.000773879  -0.005313649   0.003448523   0.005538340  -0.002221819
                        -0.041185623  -0.007947265   0.008110930   0.005845173   0.031663132  -0.005072315   0.045370831  -0.004511717

   37    4.2  1.5  0.5  -0.007528385   0.041130196  -0.009888317   0.013830356  -0.013066051  -0.097612655  -0.002942091  -0.029514680
                         0.003885902  -0.014312920  -0.012540563   0.017260500   0.016133607   0.047894309  -0.001512675  -0.004131477

   38    5.2  1.5  0.5   0.061472516   0.011890129   0.049448032   0.035670400  -0.181671355   0.029016586   0.041336735  -0.004060126
                        -0.001596472   0.001376149  -0.006028214  -0.004632973  -0.030408767   0.019860812  -0.005048963   0.001969216

   39    6.2  1.5  0.5  -0.000840361   0.000740630  -0.001007551  -0.000649230  -0.028902221   0.018826533   0.007745552  -0.003151836
                        -0.032731742  -0.006334904  -0.007311369  -0.005293841   0.172393937  -0.027572470   0.063496870  -0.006343161

   40    7.2  1.5  0.5   0.026275149  -0.096960662  -0.121005705   0.165803344  -0.005111774  -0.015181191   0.007086253   0.019498852
                         0.051004166  -0.279030254   0.095013254  -0.133962070  -0.004312228  -0.030542793  -0.013586368  -0.138682491

   41    8.2  1.5  0.5  -0.030745878   0.168409337  -0.044331857   0.062794842   0.005894887   0.043272785  -0.024577592  -0.248189957
                         0.015863815  -0.058496917  -0.056610679   0.077433847  -0.007284390  -0.021312246  -0.012527599  -0.034781715

   42    9.2  1.5  0.5   0.000034992  -0.000190121  -0.000127986   0.000180302  -0.000113363  -0.000845906  -0.000037099  -0.000369318
                        -0.000018548   0.000064379  -0.000163061   0.000224379   0.000139386   0.000415362  -0.000018780  -0.000052113

   43    1.2  1.5 -0.5  -0.004043868   0.003508942   0.001650119   0.001257122   0.011215783  -0.007320015  -0.000425819   0.000187584
                        -0.156224904  -0.030223366   0.013442509   0.009700449  -0.066966802   0.010701216  -0.003514145   0.000366071

   44    2.2  1.5 -0.5  -0.033820653   0.184657703   0.009566984  -0.013416242   0.004150358   0.031128976  -0.004177123  -0.042439203
                         0.017410914  -0.064241285   0.012148956  -0.016686764  -0.005153733  -0.015259933  -0.002142556  -0.005957278

   45    3.2  1.5 -0.5  -0.003631723   0.013498716  -0.004638631   0.006343771  -0.004755605  -0.014150669   0.002302238   0.006349745
                        -0.007123739   0.038926714   0.003639785  -0.005141476  -0.003873618  -0.028819219  -0.004471216  -0.045264404

   46    4.2  1.5 -0.5  -0.043534664  -0.008415601  -0.021955063  -0.015836885   0.107235178  -0.017135838   0.029583917  -0.002968702
                         0.001133887  -0.000976977   0.002679332   0.002058542   0.017964184  -0.011720838  -0.003602401   0.001459759

   47    5.2  1.5 -0.5  -0.010638092   0.058075689  -0.022274594   0.031153646  -0.022121214  -0.165376630   0.004024220   0.041239716
                         0.005486344  -0.020214679  -0.028243306   0.038870266   0.027332508   0.081115624   0.002041590   0.005788223

   48    6.2  1.5 -0.5  -0.002930009   0.010772611   0.004164159  -0.005830469  -0.025928290  -0.077017692   0.003264895   0.008881121
                        -0.005665209   0.030919638  -0.003332572   0.004525142  -0.021033385  -0.156918078  -0.006285716  -0.063348021

   49    7.2  1.5 -0.5  -0.007822634   0.006570754  -0.024962797  -0.020143112   0.005807960  -0.003664312  -0.017012837   0.006841875
                        -0.295293174  -0.056996786  -0.211691861  -0.152525913  -0.033609498   0.005594493  -0.139009359   0.013711058

   50    8.2  1.5 -0.5  -0.178216416  -0.034367076  -0.099030436  -0.071272068  -0.047561492   0.007732600   0.248772889  -0.024797940
                         0.004743736  -0.003984185   0.011496334   0.009506571  -0.008040535   0.005293291  -0.030332693   0.012085568

   51    9.2  1.5 -0.5   0.000200607   0.000039288  -0.000285774  -0.000205501   0.000929383  -0.000148504   0.000370191  -0.000037430
                        -0.000006908   0.000004996   0.000034471   0.000027178   0.000155976  -0.000101125  -0.000045492   0.000018112

   52    1.2  1.5 -1.5   0.012296312  -0.045418179   0.008507590  -0.011675039  -0.000244439  -0.000682699  -0.002510806  -0.006953726
                         0.023919916  -0.130626476  -0.006695671   0.009405284  -0.000173890  -0.001416609   0.004888475   0.049555664

   53    2.2  1.5 -1.5   0.608125237   0.117361668  -0.058535739  -0.042165008   0.006506917  -0.000979630   0.020811943  -0.002102893
                        -0.016108870   0.013563943   0.006889954   0.005577625   0.001039259  -0.000696661  -0.002525727   0.000998403

   54    3.2  1.5 -1.5   0.013815691  -0.011575114  -0.005874963  -0.004802488   0.005650433  -0.003668755   0.002252911  -0.000879030
                         0.519583895   0.100231748  -0.050256572  -0.036191373  -0.033434471   0.005402468   0.018561486  -0.001869219

   55    4.2  1.5 -1.5   0.014705327  -0.080302706   0.031068927  -0.043606936  -0.001079884  -0.007483388  -0.028100275  -0.284754923
                        -0.007557437   0.027920150   0.039469181  -0.054158715   0.001174761   0.003734792  -0.014435468  -0.039957262

   56    5.2  1.5 -1.5  -0.156416014  -0.030155886  -0.133573368  -0.096159706  -0.222653527   0.035770059   0.060555837  -0.006073557
                         0.004182914  -0.003477960   0.015473681   0.012814433  -0.037445010   0.024385463  -0.007357855   0.002848421

   57    6.2  1.5 -1.5   0.006705491  -0.005668763   0.022156832   0.017822991   0.021318052  -0.013952820  -0.011277584   0.004505070
                         0.253904900   0.049016679   0.187429280   0.135033695  -0.128101437   0.020296337  -0.092780407   0.009354874

   58    7.2  1.5 -1.5   0.002869365  -0.010565971  -0.011877680   0.016390119   0.019297462   0.057292251  -0.000422703  -0.001064015
                         0.005558760  -0.030343876   0.009389865  -0.013080654   0.015635767   0.116764332   0.000780633   0.007620688

   59    8.2  1.5 -1.5  -0.006472085   0.035330468  -0.009659753   0.013478198  -0.013671799  -0.102144372   0.000622924   0.006575225
                         0.003339004  -0.012299775  -0.012238568   0.016858028   0.016885358   0.050113187   0.000304015   0.000924937

   60    9.2  1.5 -1.5  -0.000174229   0.000955886  -0.000598412   0.000842964   0.000004243   0.000017323   0.000067715   0.000699334
                         0.000091423  -0.000332068  -0.000762958   0.001044445  -0.000003467  -0.000009459   0.000035853   0.000098245


   Nr   State  S   Sz       25            26            27            28            29            30            31            32

    1    1.2  0.5  0.5   0.000007913   0.000000000  -0.000000962  -0.000006296  -0.000007782  -0.000000050  -0.000052494  -0.000000130
                         0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000

    2    2.2  0.5  0.5  -0.000016305   0.000012921  -0.000000208  -0.000000870   0.000015653   0.000002282  -0.000007581  -0.000000304
                        -0.000021820  -0.000009270  -0.000000008  -0.000000443  -0.000024668  -0.000002366   0.000005636   0.000000063

    3    3.2  0.5  0.5  -0.000034659  -0.000015521   0.000000706  -0.000000511   0.000001898  -0.000015353  -0.000002619   0.000006839
                        -0.000000805   0.000069487  -0.000001700   0.000000233  -0.000001200  -0.000000402   0.000000269  -0.000001271

    4    4.2  0.5  0.5   0.000044182  -0.001483876  -0.003734602   0.000322430  -0.000523167  -0.000043256   0.000375175  -0.001299615
                        -0.000785817  -0.000289833  -0.001685542   0.000298366   0.000154061   0.005567287  -0.000809736  -0.018047973

    5    5.2  0.5  0.5  -0.000043159   0.000213669  -0.000185762   0.000706720  -0.005461805  -0.001259849  -0.001161372  -0.018136685
                         0.000260347  -0.000233345  -0.000375110   0.001186826   0.009267312  -0.009175122  -0.008656368  -0.006799932

    6    6.2  0.5  0.5   0.000049104   0.000324894  -0.000740137  -0.000629756   0.001812377   0.001473738   0.001176328   0.017733991
                         0.000008911   0.000410864   0.000136637  -0.000439214  -0.001749636  -0.013098831   0.003019337  -0.015283994

    7    7.2  0.5  0.5  -0.000932238  -0.000339160   0.000509139   0.003560414  -0.003380365   0.000562375  -0.005187678   0.018005811
                         0.000717805  -0.000263824   0.000605184   0.000695839   0.005493129   0.003064892  -0.005605514  -0.000347645

    8    8.2  0.5  0.5  -0.000691488  -0.000224909   0.000132013   0.003259602   0.006203992   0.000044907  -0.004503470  -0.012388444
                         0.000607529  -0.000575925  -0.000589818  -0.001029752  -0.007889104  -0.003982310   0.008878974  -0.003144886

    9    9.2  0.5  0.5  -0.000002030  -0.000000041   0.000072742  -0.000009335  -0.000040575   0.000498772   0.000001203  -0.000403624
                        -0.000000415   0.000002247  -0.000155284   0.000015951  -0.000014778   0.000007775   0.000013899   0.000070981

   10   10.2  0.5  0.5  -0.000008813   0.000006548   0.000001201   0.000004860   0.000243935   0.000004614  -0.000000608   0.000015379
                        -0.000011895  -0.000003291  -0.000027295  -0.000221040  -0.000345469  -0.000033308   0.000360858  -0.000003785

   11   11.2  0.5  0.5   0.000046373   0.000013614   0.000027615   0.000179562   0.000352896   0.000036404  -0.000450810  -0.000000833
                        -0.000039404   0.000025890   0.000002644   0.000004783   0.000247083   0.000024543   0.000001992  -0.000000051

   12   12.2  0.5  0.5   0.000000337   0.000204353  -0.000289742   0.000046021  -0.000000146   0.000018415  -0.000000244   0.000115554
                         0.000100288   0.000046396  -0.000136781   0.000016577   0.000096710  -0.000999502   0.000001822   0.000657626

   13    1.2  0.5 -0.5  -0.000000000   0.000006991   0.000005667  -0.000000866   0.000000029  -0.000004497  -0.000000024   0.000009856
                        -0.000000000  -0.000003708   0.000002742  -0.000000419  -0.000000041   0.000006352  -0.000000128   0.000051560

   14    2.2  0.5 -0.5  -0.000015758  -0.000004180   0.000000976  -0.000000190  -0.000003250   0.000029178   0.000000005  -0.000004112
                        -0.000002134   0.000026916  -0.000000020  -0.000000083   0.000000495   0.000001479  -0.000000311   0.000008504

   15    3.2  0.5 -0.5   0.000046273  -0.000030241   0.000000359  -0.000000104   0.000008543   0.000002076   0.000000036   0.000000227
                         0.000054113   0.000016952   0.000000432   0.000001838  -0.000012763  -0.000000856   0.000006956   0.000002623

   16    4.2  0.5 -0.5   0.001175064   0.000407259  -0.000420185  -0.004095901   0.004568734  -0.000428044  -0.017970996   0.000724890
                        -0.000951375   0.000673499   0.000128171  -0.000109079   0.003181702   0.000337960   0.002112258  -0.000520541

   17    5.2  0.5 -0.5  -0.000298102  -0.000160124  -0.001153038  -0.000330579  -0.006760280  -0.010719567  -0.010084404   0.008720471
                        -0.000106016  -0.000209771   0.000760601   0.000256773  -0.006329984  -0.000897380  -0.016537328  -0.000484637

   18    6.2  0.5 -0.5  -0.000094489   0.000039204   0.000758175  -0.000606761  -0.011542192   0.002475230  -0.011682353  -0.003186507
                         0.000515206  -0.000030882  -0.000121123  -0.000445323  -0.006366246  -0.000468160   0.020288360  -0.000588484

   19    7.2  0.5 -0.5   0.000175993  -0.001159911  -0.003508090   0.000721876   0.002176447  -0.006436528   0.003039380   0.006479873
                        -0.000391994  -0.000197280  -0.000924145  -0.000323056   0.002230001  -0.000415270   0.017750838   0.004042898

   20    8.2  0.5 -0.5  -0.000071186  -0.000895554  -0.002485820  -0.000138024  -0.003276109   0.010023607  -0.005415054  -0.007875465
                        -0.000614171  -0.000212674  -0.002346507   0.000588440  -0.002264490  -0.000504741  -0.011577610   0.006090523

   21    9.2  0.5 -0.5   0.000001089  -0.000001599   0.000001456  -0.000002143  -0.000281865  -0.000011385  -0.000006067  -0.000013878
                         0.000001966   0.000001318   0.000018424   0.000171464   0.000411565   0.000041655  -0.000409773   0.000001428

   22   10.2  0.5 -0.5  -0.000007327  -0.000002211   0.000091887  -0.000010805  -0.000029850   0.000422910  -0.000000830  -0.000354325
                         0.000000161   0.000014638  -0.000201095   0.000025094  -0.000015481   0.000000539   0.000015816   0.000068353

   23   11.2  0.5 -0.5   0.000000106   0.000059431  -0.000163723   0.000026011  -0.000001005   0.000002261  -0.000000206   0.000082689
                         0.000029251   0.000013080  -0.000073892   0.000009646   0.000043893  -0.000430791  -0.000000809   0.000443166

   24   12.2  0.5 -0.5  -0.000158787  -0.000046696  -0.000048647  -0.000320390  -0.000826384  -0.000079015   0.000667627  -0.000001744
                         0.000136745  -0.000088754  -0.000005120  -0.000003051  -0.000562523  -0.000055764  -0.000009979   0.000000582

   25    1.2  1.5  1.5  -0.000052976   0.000034411   0.000004704   0.000003247   0.000616558   0.000061045   0.000024867  -0.000001922
                        -0.000061873  -0.000017958  -0.000047914  -0.000316275  -0.000904848  -0.000086887   0.001592843  -0.000005302

   26    2.2  1.5  1.5   0.000000111   0.000128784  -0.000090689   0.000014460   0.000000038  -0.000022996  -0.000001931   0.000709237
                         0.000062939   0.000029508  -0.000042391   0.000005283  -0.000131010   0.001352394   0.000015100   0.004055356

   27    3.2  1.5  1.5  -0.000054075  -0.000025163   0.000184158  -0.000022668  -0.000052862   0.000549632   0.000014066   0.003902963
                         0.000000160   0.000110746  -0.000390363   0.000061590   0.000000177   0.000010078   0.000001749  -0.000681887

   28    4.2  1.5  1.5   0.130752915   0.038257413  -0.046999046  -0.312384864  -0.319863666  -0.030522956  -0.051841513   0.000190000
                        -0.113366897   0.072826198  -0.004871734  -0.003289898  -0.218095880  -0.021619888   0.000803555  -0.000037165

   29    5.2  1.5  1.5   0.000724276   0.237967419   0.070145923  -0.011087573   0.000034172   0.002216996   0.000230103  -0.083881834
                         0.116441492   0.054896901   0.033081858  -0.003709356   0.012395262  -0.128567554  -0.001782802  -0.479482072

   30    6.2  1.5  1.5   0.059165601   0.027837253  -0.020356983   0.002559563   0.011696587  -0.120160979   0.001928528   0.539517750
                        -0.000480196  -0.120672934   0.043424404  -0.006879703   0.000075342  -0.002137828   0.000254870  -0.094374417

   31    7.2  1.5  1.5   0.074877729  -0.049010767  -0.008831952  -0.006726892   0.202015599   0.020070715   0.000981529   0.000020294
                         0.086350236   0.025032852   0.089874297   0.595226141  -0.295980335  -0.028331178   0.059244883  -0.000087343

   32    8.2  1.5  1.5  -0.232952195  -0.067860658  -0.085325462  -0.564433411   0.219863843   0.021037385  -0.029648364   0.000015948
                         0.202015131  -0.131075705  -0.008182025  -0.006468030   0.150103105   0.014929205   0.000518445   0.000045232

   33    9.2  1.5  1.5  -0.000168727  -0.000049191   0.000023132   0.000154781   0.000049800   0.000004392   0.000462643  -0.000001323
                         0.000145594  -0.000094363   0.000002529   0.000001316   0.000033737   0.000003467  -0.000007175   0.000000428

   34    1.2  1.5  0.5  -0.000081414  -0.000037930  -0.000109709   0.000013644  -0.000227818   0.002343449  -0.000002391  -0.000986372
                         0.000000759   0.000165234   0.000233321  -0.000036661  -0.000000609   0.000040307  -0.000000306   0.000171615

   35    2.2  1.5  0.5   0.000022241   0.000006365   0.000037898   0.000251957   0.001294298   0.000124404  -0.001130774   0.000003918
                        -0.000019742   0.000012444   0.000003594   0.000002431   0.000882934   0.000087726   0.000018745  -0.000001474

   36    3.2  1.5  0.5   0.000265741  -0.000171776   0.000010168   0.000006063   0.000252808   0.000025030   0.000007665  -0.000000861
                         0.000306479   0.000089377  -0.000096235  -0.000638185  -0.000373197  -0.000034827   0.000554546  -0.000002210

   37    4.2  1.5  0.5   0.001792460   0.533368310   0.033996685  -0.005357410  -0.000055757   0.006588122  -0.000022209   0.009913886
                         0.261164937   0.123042359   0.016219173  -0.001375014   0.036412109  -0.376027780   0.000101146   0.056721147

   38    5.2  1.5  0.5   0.095925213   0.027969687   0.038099550   0.252445766   0.498185633   0.047598570   0.007966126  -0.000101844
                        -0.083218039   0.054061139   0.003683294   0.002740712   0.339725129   0.033672445  -0.000109953   0.000006984

   39    6.2  1.5  0.5  -0.332981953   0.214659882  -0.005001282  -0.003014000  -0.107787655  -0.010695237   0.001634648  -0.000089374
                        -0.383988565  -0.112219396   0.044906819   0.299600532   0.158102094   0.015032531   0.104899962  -0.000321425

   40    7.2  1.5  0.5   0.070022051   0.033076389   0.081219574  -0.009708219  -0.018256275   0.188406080  -0.001549615  -0.427431287
                        -0.000312019  -0.143429715  -0.172499414   0.027163230  -0.000042617   0.003348940  -0.000212003   0.074761851

   41    8.2  1.5  0.5  -0.000207813  -0.073898325  -0.077477152   0.012127829   0.000056754   0.003161631   0.000225289  -0.086383821
                        -0.036112370  -0.017036140  -0.036524907   0.004436933   0.017454989  -0.181176157  -0.001800168  -0.493787835

   42    9.2  1.5  0.5  -0.000000767  -0.000265361   0.000097282  -0.000015233   0.000000048   0.000006703   0.000000148  -0.000016710
                        -0.000129650  -0.000061166   0.000045546  -0.000006068   0.000036218  -0.000376488  -0.000000730  -0.000098342

   43    1.2  1.5 -0.5  -0.000110936   0.000072278  -0.000003683  -0.000002850   0.001321244   0.000131146   0.000016642  -0.000000749
                        -0.000128196  -0.000037480   0.000038944   0.000257811  -0.001935896  -0.000186285   0.001001051  -0.000002291

   44    2.2  1.5 -0.5  -0.000000208  -0.000028899   0.000227869  -0.000035681   0.000000288  -0.000027292   0.000000713  -0.000193907
                        -0.000013976  -0.000007018   0.000107537  -0.000013269  -0.000152224   0.001566536  -0.000004125  -0.001114182

   45    3.2  1.5 -0.5  -0.000193631  -0.000091146  -0.000272467   0.000032757   0.000042888  -0.000450667   0.000002333   0.000546122
                         0.000001535   0.000395272   0.000577130  -0.000091058  -0.000000304  -0.000009319   0.000000431  -0.000096595

   46    4.2  1.5 -0.5   0.413528528   0.120796453  -0.005421507  -0.037666882   0.310701805   0.029749947  -0.057573786   0.000095177
                        -0.358629800   0.231556806  -0.001095334  -0.000204925   0.211907250   0.020994891   0.000912624  -0.000040805

   47    5.2  1.5 -0.5  -0.000623821  -0.123737068   0.228443308  -0.035900970   0.000022637  -0.010605391   0.000012263   0.001387754
                        -0.060864776  -0.028566179   0.107471070  -0.013276395  -0.058304861   0.602900998   0.000101344   0.007845087

   48    6.2  1.5 -0.5   0.242218806   0.114226887   0.127760606  -0.015054467  -0.018448937   0.191319051   0.000332489   0.103341160
                        -0.001451783  -0.495253891  -0.271010685   0.042602797   0.000042506   0.003386968   0.000027433  -0.018090850

   49    7.2  1.5 -0.5   0.096430252  -0.062004700   0.003090118   0.002008961   0.106135459   0.010514437   0.006824005  -0.000499195
                         0.111208530   0.032536167  -0.028679988  -0.190653169  -0.155702700  -0.014924477   0.433866653  -0.001482248

   50    8.2  1.5 -0.5  -0.057299839  -0.016738401   0.012849629   0.085650663   0.149693767   0.014213087   0.501225182  -0.001725849
                         0.049678175  -0.031999568   0.001287485   0.000861277   0.102110587   0.010132523  -0.007868105   0.000559288

   51    9.2  1.5 -0.5  -0.000205762  -0.000060076  -0.000016356  -0.000107407   0.000311144   0.000029532   0.000099731  -0.000000689
                         0.000178381  -0.000114894  -0.000001172  -0.000001365   0.000212079   0.000020967  -0.000002053   0.000000282

   52    1.2  1.5 -1.5  -0.000038814  -0.000017807   0.000134812  -0.000016632  -0.000106187   0.001094763  -0.000005568  -0.001569182
                         0.000000261   0.000079484  -0.000286122   0.000045180  -0.000000385   0.000019655  -0.000000892   0.000274654

   53    2.2  1.5 -1.5  -0.000099943  -0.000029395  -0.000015318  -0.000100099   0.001117044   0.000106946   0.004116397  -0.000014469
                         0.000086415  -0.000055654  -0.000001542  -0.000001334   0.000762700   0.000075672  -0.000064827   0.000004732

   54    3.2  1.5 -1.5   0.000074124  -0.000047846  -0.000006417  -0.000004222  -0.000309374  -0.000030690   0.000063076  -0.000004359
                         0.000086043   0.000025198   0.000065315   0.000431601   0.000454405   0.000043041   0.003961579  -0.000013487

   55    4.2  1.5 -1.5   0.000328661   0.168631891   0.282639193  -0.044429785  -0.000007657  -0.006831369  -0.000000829   0.008944701
                         0.082262851   0.038880113   0.133079725  -0.016082234  -0.037404149   0.387081271   0.000193599   0.051070349

   56    5.2  1.5 -1.5  -0.184499573  -0.053923777   0.011596345   0.077551725  -0.106211428  -0.010096642  -0.486704076   0.001707889
                         0.160006469  -0.103205483   0.001489421   0.000767988  -0.072482161  -0.007190376   0.007639486  -0.000560756

   57    6.2  1.5 -1.5  -0.081138266   0.052492762   0.000691960   0.000585801   0.067689113   0.006697273   0.008606054  -0.000612445
                        -0.093559881  -0.027300346  -0.007307726  -0.047955631  -0.099304659  -0.009589701   0.547642099  -0.001846372

   58    7.2  1.5 -1.5   0.055027026   0.025684992  -0.253161024   0.031189127  -0.034720155   0.358297059  -0.000081979  -0.058375460
                        -0.000851697  -0.111370190   0.538747534  -0.084750404   0.000009799   0.006154524   0.000036333   0.010159978

   59    8.2  1.5 -1.5  -0.001472012  -0.300456112   0.510915421  -0.080372539   0.000028208   0.004539681   0.000047422   0.005057668
                        -0.147593165  -0.069303423   0.239984046  -0.029793203   0.025796355  -0.266177465   0.000007172   0.029218389

   60    9.2  1.5 -1.5  -0.000000762  -0.000217281  -0.000139905   0.000021924   0.000000292   0.000001242   0.000000172  -0.000079820
                        -0.000106412  -0.000049556  -0.000066221   0.000007798   0.000005588  -0.000060139  -0.000001380  -0.000455762


   Nr   State  S   Sz       33            34            35            36            37            38            39            40

    1    1.2  0.5  0.5  -0.000521474  -0.036863636  -0.000827940  -0.009946673   0.007478994  -0.000118068   0.006373204  -0.028018738
                        -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000

    2    2.2  0.5  0.5   0.000029764  -0.002595487  -0.004130128   0.009938739  -0.000029387  -0.000428684  -0.000091969  -0.004615194
                         0.000960113   0.026516939  -0.001035579  -0.025091012   0.007534438  -0.000356488  -0.000475085   0.003306610

    3    3.2  0.5  0.5  -0.006459122  -0.001460224   0.028178081   0.003388102   0.000028163   0.002478763   0.024488533   0.005228638
                        -0.008460838   0.001360034   0.022879538  -0.002987982   0.000475192   0.007163063  -0.005523193  -0.001203229

    4    4.2  0.5  0.5   0.048585492   0.001232804   0.136342012  -0.018469309  -0.000014427   0.000347353  -0.006246278  -0.006241630
                        -0.052264340  -0.007928850  -0.174563376  -0.033015133  -0.000065480  -0.000079581  -0.062375726  -0.027823826

    5    5.2  0.5  0.5   0.175546744  -0.022513618  -0.011109750   0.075232197   0.000211026  -0.000683188  -0.028969557  -0.000179808
                         0.006292152  -0.102543903   0.049237842  -0.076119467  -0.000891135  -0.000115652   0.144793667  -0.081415180

    6    6.2  0.5  0.5   0.052531762   0.013148454  -0.064188245  -0.046185457  -0.000157301  -0.000645006   0.096318045   0.013630041
                        -0.208828264   0.041549290   0.025142295   0.025894764   0.000274243   0.000667893   0.104869004   0.071937985

    7    7.2  0.5  0.5  -0.100790627  -0.045330835  -0.028360803   0.175752533   0.000478067   0.000295214   0.034757242   0.065676705
                        -0.075703148  -0.064316133  -0.045430230   0.009779159  -0.000505253   0.000324796  -0.018584324  -0.085645680

    8    8.2  0.5  0.5   0.089947745  -0.027366206   0.031575154   0.094111986   0.000231241  -0.000313603  -0.043437335   0.042770560
                         0.031454184   0.111438886  -0.003966371   0.154294724   0.000936280  -0.000158756   0.010906824   0.122397961

    9    9.2  0.5  0.5   0.092766503  -0.002517287  -0.407035825  -0.053835120   0.006645915  -0.055460969   0.320650776   0.086023872
                         0.122062351  -0.016256784  -0.329782555   0.039896763  -0.009201896  -0.159772540  -0.073126655  -0.016253709

   10   10.2  0.5  0.5  -0.001456430  -0.046842469   0.056223203  -0.164155672   0.027291441   0.009006303  -0.013997390  -0.001681410
                        -0.013459754  -0.377293051   0.014189436   0.357183321  -0.167703689   0.007599876  -0.006790396   0.044880972

   11   11.2  0.5  0.5  -0.011481635  -0.530576698  -0.003074380  -0.116572824   0.169291711  -0.001681643  -0.096649019   0.369408066
                        -0.003244271   0.061047885   0.012313491  -0.058847981   0.027699744   0.006052511   0.004213285  -0.006153576

   12   12.2  0.5  0.5   0.000089741  -0.000001135  -0.000085203   0.000006740  -0.004581443  -0.290231554   0.000136688   0.000033578
                        -0.000068207   0.000002366   0.000105381   0.000012516  -0.011742239   0.101231371   0.000593505   0.000162144

   13    1.2  0.5 -0.5  -0.026890465   0.000380393   0.008903015  -0.000741068  -0.000116024  -0.007349490  -0.006930656  -0.001576462
                         0.025215680  -0.000356702  -0.004435383   0.000369192   0.000021877   0.001385769  -0.027148033  -0.006175152

   14    2.2  0.5 -0.5  -0.020031570   0.000635031  -0.020084403  -0.003234991  -0.000355208   0.001424920   0.002062250   0.000483070
                        -0.017567607   0.000720721  -0.018026485   0.002768611   0.000429745   0.007398528  -0.005289689  -0.000028405

   15    3.2  0.5 -0.5  -0.001995470  -0.001075776  -0.004364994   0.015019130   0.001108610   0.000060372   0.000127507  -0.000705876
                         0.000006743  -0.010590030  -0.001163657  -0.033043960  -0.007498314   0.000472182   0.005363782  -0.025093737

   16    4.2  0.5 -0.5   0.006322816  -0.071191224   0.001809427   0.199876929   0.000356084   0.000002044  -0.028503094   0.061982415
                         0.004940492  -0.004890896  -0.037786774   0.095450143   0.000013843  -0.000067019   0.000834777  -0.009376958

   17    5.2  0.5 -0.5   0.053719947  -0.123749941  -0.101281342  -0.031900009  -0.000649929  -0.000372489  -0.078929613  -0.133128237
                         0.090201342   0.124668371  -0.034585351  -0.039117528   0.000240237  -0.000836604   0.019964467   0.063885161

   18    6.2  0.5 -0.5  -0.018829547  -0.181163634   0.052886330  -0.068664631  -0.000757589   0.000205391   0.073073951  -0.125435143
                        -0.039302334  -0.116398315   0.002582903   0.006118348  -0.000536816   0.000240348  -0.004587952  -0.067384707

   19    7.2  0.5 -0.5   0.010926968   0.021739595  -0.152950959  -0.005126960   0.000229921  -0.000563406  -0.066738518   0.009409322
                         0.077923366  -0.124165644   0.087123986   0.053309992  -0.000373872  -0.000407925   0.084820883  -0.038274111

   20    8.2  0.5 -0.5  -0.096189571  -0.044097606  -0.015434734   0.030030791  -0.000278757  -0.000053755   0.129173980   0.000176683
                        -0.062570768   0.084471082   0.180071366  -0.010529675   0.000214114   0.000962914   0.011165327   0.044785373

   21    9.2  0.5 -0.5   0.009283806   0.015824558   0.065977068  -0.217272069  -0.024896660  -0.008235838   0.005530072  -0.008461317
                         0.013580527   0.152494016   0.011704629   0.476683904   0.167282217  -0.007811149   0.087371093  -0.328774747

   22   10.2  0.5 -0.5   0.223908599  -0.008144416   0.306205431   0.043996666   0.007442185  -0.057892377   0.043070349   0.010041744
                         0.307260805  -0.010814558   0.246506072  -0.037771444  -0.009137040  -0.159742990  -0.012730822   0.011882751

   23   11.2  0.5 -0.5  -0.428791623   0.006156203   0.078100114  -0.008242585  -0.002773983  -0.161227860   0.085413654   0.019824544
                         0.318396326  -0.010220294  -0.104655054  -0.009650578  -0.005636119   0.058587851   0.359450544   0.094687761

   24   12.2  0.5 -0.5  -0.000002446  -0.000112117  -0.000000452  -0.000123254  -0.303962946   0.002326414   0.000165411  -0.000608872
                        -0.000000949   0.000011631   0.000014208  -0.000056330  -0.045702001  -0.012387800  -0.000007573   0.000014368

   25    1.2  1.5  1.5  -0.001103173   0.016769620  -0.004563519   0.019157305  -0.000028563  -0.000008076   0.000001930  -0.000007995
                         0.003596244   0.158871517  -0.000134433  -0.041800735   0.000194989  -0.000002100   0.000235640  -0.000893523

   26    2.2  1.5  1.5  -0.021737815   0.000221964   0.057657379  -0.004483243   0.006199680   0.392759621   0.001362258   0.000316291
                         0.016451531  -0.000618175  -0.071442996  -0.008389826   0.015891254  -0.136993017   0.005629555   0.001502028

   27    3.2  1.5  1.5  -0.016092484   0.000605524   0.071499422   0.008396309  -0.015899830   0.137070252  -0.002515374  -0.000715729
                        -0.021262747   0.000215369   0.057701737  -0.004486247   0.006203274   0.392981262   0.000518652   0.000137918

   28    4.2  1.5  1.5   0.001620601   0.071518030  -0.000074329  -0.023117329  -0.008965668   0.000067090  -0.048204407   0.185109350
                         0.000491423  -0.007548893   0.002542704  -0.010593762  -0.001347487  -0.000365664   0.002083154  -0.000675343

   29    5.2  1.5  1.5   0.016693686  -0.000168670  -0.045308482   0.003522866   0.001169743   0.074111927   0.060234969   0.014908458
                        -0.012633836   0.000475659   0.056141511   0.006592344   0.002998754  -0.025850388   0.265041923   0.072743638

   30    6.2  1.5  1.5  -0.012721710   0.000478394   0.056195734   0.006599255   0.003007417  -0.025929419   0.261763887   0.071915242
                        -0.016810181   0.000170778   0.045350902  -0.003525957  -0.001173446  -0.074338607  -0.059348406  -0.014720797

   31    7.2  1.5  1.5   0.000233567  -0.002237279  -0.007470859   0.030041977   0.023584333   0.006392656   0.003600848  -0.007314333
                        -0.000456030  -0.021148446  -0.000213203  -0.065577183  -0.156859350   0.001199888   0.075108444  -0.275091216

   32    8.2  1.5  1.5  -0.000555559  -0.025549307  -0.000210799  -0.064801223  -0.156590395   0.001197958   0.078146419  -0.286730597
                        -0.000264643   0.002702180   0.007387982  -0.029686581  -0.023543908  -0.006381629  -0.003732846   0.007369393

   33    9.2  1.5  1.5   0.012399121   0.547741947  -0.000465493  -0.144967132  -0.000203008   0.000001257  -0.025938677   0.099207272
                         0.003802588  -0.057816973   0.015830178  -0.066437702  -0.000029214  -0.000008654   0.001123135  -0.000549784

   34    1.2  1.5  0.5   0.009547294  -0.000358351  -0.041243251  -0.004843777  -0.018341783   0.158121318   0.003489459   0.000946402
                         0.012614740  -0.000129191  -0.033284603   0.002588033   0.007155234   0.453334082  -0.000814707  -0.000194449

   35    2.2  1.5  0.5   0.001426661   0.061543622  -0.000392293  -0.120926705   0.237344960  -0.001815706   0.000713090  -0.002779230
                         0.000299659  -0.006488494   0.013660543  -0.055403140   0.035685934   0.009673050  -0.000035003  -0.000008912

   36    3.2  1.5  0.5   0.000980347  -0.012976867  -0.008305624   0.032934045  -0.035622591  -0.009656128  -0.000038012   0.000033845
                        -0.002747891  -0.122864324  -0.000235136  -0.071898760   0.236925909  -0.001813793  -0.000729089   0.002743715

   37    4.2  1.5  0.5  -0.020252008   0.000221335   0.044580257  -0.003468814  -0.002342408  -0.148359578  -0.063886758  -0.015738817
                         0.015329016  -0.000566957  -0.055239265  -0.006491538  -0.006002539   0.051747158  -0.280077605  -0.076758179

   38    5.2  1.5  0.5   0.001637699   0.072348106  -0.000061791  -0.019253234  -0.134671815   0.001030475  -0.053033434   0.202762039
                         0.000501875  -0.007636822   0.002102862  -0.008823601  -0.020246940  -0.005489156   0.002305929  -0.001165989

   39    6.2  1.5  0.5  -0.000499575   0.007600227  -0.002098287   0.008802445  -0.020396932  -0.005528112  -0.002221874   0.001044154
                         0.001629887   0.072002907  -0.000061317  -0.019206822   0.135651646  -0.001039022  -0.051244588   0.196084298

   40    7.2  1.5  0.5  -0.043697680   0.001479259  -0.016140763  -0.001814723  -0.000009512   0.000087105   0.189346764   0.050002457
                        -0.057708753   0.000846680  -0.013022456   0.000971919   0.000003122   0.000243588  -0.047178912  -0.010480452

   41    8.2  1.5  0.5  -0.057234841   0.000843744  -0.015813916   0.001188520   0.000149534   0.009508276  -0.044495773  -0.009781343
                         0.043339706  -0.001464385   0.019599859   0.002220327   0.000383853  -0.003318451  -0.176841420  -0.046490093

   42    9.2  1.5  0.5   0.127700678  -0.001296635  -0.344227465   0.026764486   0.000006719   0.000399303   0.030248444   0.007489988
                        -0.096646464   0.003635231   0.426535790   0.050088428   0.000016314  -0.000139553   0.133210112   0.036572122

   43    1.2  1.5 -0.5   0.000173032  -0.001664460  -0.005489588   0.022073645  -0.071385888  -0.019349961  -0.000045694   0.000073756
                        -0.000339360  -0.015732516  -0.000156564  -0.048183241   0.474782261  -0.003632820  -0.000965090   0.003582546

   44    2.2  1.5 -0.5  -0.049331770   0.000835714  -0.083533274   0.006442590   0.003576567   0.226622969   0.000696099   0.000142473
                         0.037364347  -0.001194462   0.103513130   0.012052277   0.009169125  -0.079045215   0.002690659   0.000699588

   45    3.2  1.5 -0.5  -0.074576298   0.002594750   0.061539255   0.007329303   0.009152850  -0.078905324  -0.002666823  -0.000715835
                        -0.098500848   0.001333888   0.049668935  -0.003914077  -0.003571552  -0.226222910   0.000645887   0.000143515

   46    4.2  1.5 -0.5  -0.000549268  -0.025258428  -0.000210166  -0.064534745   0.155378753  -0.001189648   0.078265976  -0.287176859
                        -0.000262173   0.002671027   0.007357212  -0.029564208   0.023361843   0.006332621  -0.003737022   0.007377983

   47    5.2  1.5 -0.5  -0.057998672   0.000851337  -0.013298496   0.000993008  -0.002029708  -0.128588351  -0.049025036  -0.010883969
                         0.043917236  -0.001486325   0.016483112   0.001854665  -0.005203172   0.044849442  -0.196749459  -0.051955766

   48    6.2  1.5 -0.5   0.043707805  -0.001479304   0.016443479   0.001850782   0.005239870  -0.045178387  -0.190249098  -0.050201718
                         0.057721831  -0.000847211   0.013266387  -0.000990544  -0.002045324  -0.129523423   0.047491294   0.010522926

   49    7.2  1.5 -0.5  -0.000499906   0.007598667  -0.002057708   0.008640264  -0.000040462  -0.000009926  -0.002213739   0.001123628
                         0.001629469   0.071986441  -0.000060726  -0.018853499   0.000255510  -0.000001305  -0.051041012   0.195132735

   50    8.2  1.5 -0.5  -0.001617152  -0.071395879   0.000073734   0.022894532  -0.009958503   0.000075821   0.047464868  -0.182352309
                        -0.000491064   0.007535627  -0.002517339   0.010491656  -0.001499219  -0.000404913  -0.002022312   0.000630091

   51    9.2  1.5 -0.5   0.003432432   0.159260931   0.001620971   0.498308528  -0.000418246   0.000003580  -0.037288321   0.136552690
                         0.001764816  -0.016851052  -0.056767604   0.228284775  -0.000063150  -0.000017277   0.001789173  -0.003642125

   52    1.2  1.5 -1.5  -0.096439496   0.003264642  -0.035786846  -0.004024744  -0.000007547   0.000064198  -0.000867734  -0.000228795
                        -0.127360915   0.001868709  -0.028872227   0.002155275   0.000003560   0.000186320   0.000213274   0.000056417

   53    2.2  1.5 -1.5   0.000584761   0.027110090   0.000271678   0.083465253   0.411341871  -0.003147867   0.001533588  -0.005791578
                         0.000299103  -0.002868531  -0.009508672   0.038236456   0.061847170   0.016764812  -0.000065076   0.000072590

   54    3.2  1.5 -1.5   0.000294386  -0.002805481  -0.009515814   0.038267182   0.061882000   0.016773906  -0.000043409   0.000119663
                        -0.000571297  -0.026517951  -0.000271475  -0.083530118  -0.411573984   0.003149809  -0.000727602   0.002565500

   55    4.2  1.5 -1.5   0.057333020  -0.000846013   0.015967805  -0.001200363   0.000133682   0.008560747   0.045133903   0.009905323
                        -0.043413583   0.001467005  -0.019790600  -0.002242765   0.000346901  -0.002985386   0.179523977   0.047221700

   56    5.2  1.5 -1.5  -0.000448401  -0.020819210  -0.000213595  -0.065588887   0.077618393  -0.000593855   0.074170795  -0.271705124
                        -0.000231598   0.002203063   0.007471544  -0.030047058   0.011670706   0.003163567  -0.003548548   0.007197094

   57    6.2  1.5 -1.5   0.000232152  -0.002218648  -0.007479107   0.030076675  -0.011706367  -0.003172767   0.003525467  -0.007245259
                        -0.000451809  -0.020964295  -0.000213280  -0.065651035   0.077855791  -0.000595888   0.073321723  -0.268309657

   58    7.2  1.5 -1.5   0.012834084  -0.000482314  -0.056131744  -0.006591906   0.006059638  -0.052240132  -0.268351789  -0.073665086
                         0.016957255  -0.000172889  -0.045300272   0.003522210  -0.002363595  -0.149773312   0.060958950   0.015089718

   59    8.2  1.5 -1.5  -0.020485502   0.000224234   0.044764206  -0.003483102   0.002359655   0.149516505  -0.063784694  -0.015713289
                         0.015505260  -0.000573063  -0.055467624  -0.006518797   0.006049159  -0.052150574  -0.279643087  -0.076641304

   60    9.2  1.5 -1.5   0.439102920  -0.006443566   0.100130761  -0.007475584   0.000002838   0.000194080   0.024007003   0.005327904
                        -0.332494614   0.011255147  -0.124109904  -0.013961621   0.000008271  -0.000066323   0.096260318   0.025410428


   Nr   State  S   Sz       41            42            43            44            45            46            47            48

    1    1.2  0.5  0.5  -0.013543814   0.002064116   0.000127408   0.000006303   0.000554769  -0.000000071   0.000046709  -0.000001668
                         0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000

    2    2.2  0.5  0.5   0.009420773  -0.000385936   0.000010036   0.000001661   0.000040407  -0.000001261  -0.000248734  -0.000010785
                         0.029702226  -0.002740441  -0.000083889  -0.000004033  -0.000396270   0.000002651  -0.000109937   0.000061391

    3    3.2  0.5  0.5  -0.002013399  -0.017757946   0.000006971  -0.000012065   0.000025220  -0.000007831  -0.000048893   0.000004839
                         0.000836873  -0.005507327  -0.000004240   0.000009664  -0.000019096  -0.000049420  -0.000014845  -0.000205147

    4    4.2  0.5  0.5   0.003442960  -0.042849230  -0.012409281   0.015755049   0.003857210  -0.054855272   0.008437924   0.305740703
                         0.015646640   0.173855787   0.014167882   0.001791505   0.010453285   0.015789780  -0.048428488   0.018295017

    5    5.2  0.5  0.5  -0.024928080  -0.080692863   0.051879622  -0.087987700   0.005295438   0.171845537  -0.042136644   0.027810453
                         0.021575649   0.018692117   0.140815848   0.078238110   0.127157475  -0.106624906  -0.051187020  -0.070696586

    6    6.2  0.5  0.5   0.027842334   0.072128223  -0.046293263   0.111824459   0.003932023   0.247985746   0.021014413   0.035706079
                        -0.005678689   0.073356623  -0.044540576  -0.079819616  -0.047423289   0.064268851   0.031408777   0.092808079

    7    7.2  0.5  0.5  -0.104423651   0.091606288   0.184472962   0.104797847  -0.030788345  -0.033643358   0.046704196  -0.042684784
                         0.055128753   0.002204379   0.084243305  -0.067573712   0.088796753   0.092344015  -0.139549390   0.083398183

    8    8.2  0.5  0.5  -0.116197738  -0.047735245   0.146568103  -0.054312116  -0.050043744   0.053974076   0.082837884   0.016228099
                         0.028718533   0.013047932  -0.170610295   0.042658759  -0.126377509  -0.065242487  -0.113115215  -0.066921312

    9    9.2  0.5  0.5  -0.019811471  -0.235088093   0.000029364  -0.000572229   0.000001004   0.000330185  -0.000831773   0.000102391
                         0.007624254  -0.072257004  -0.000079627   0.000429450  -0.000304904   0.002453046  -0.000241851  -0.003732459

   10   10.2  0.5  0.5   0.150772098  -0.009719441  -0.000165986   0.000027607  -0.000866367  -0.000045377  -0.003294008  -0.000139651
                         0.386724380  -0.035792680  -0.001468096  -0.000082126  -0.007727792  -0.000085308  -0.001409710   0.000824556

   11   11.2  0.5  0.5   0.158156262  -0.015669061  -0.001210721  -0.000058132  -0.005161067   0.000008272  -0.000406996   0.000213552
                        -0.062359055   0.008938475   0.000134906   0.000007541   0.000641315   0.000031115   0.001056917   0.000015012

   12   12.2  0.5  0.5   0.000009629   0.000095359   0.000012501  -0.000214608   0.000000306  -0.002438875   0.000030826   0.000530652
                        -0.000032704  -0.000304454   0.000010931  -0.000288584   0.000011427   0.000341682  -0.000099266   0.000022369

   13    1.2  0.5 -0.5  -0.000178131  -0.001168818  -0.000004232   0.000085540   0.000000069   0.000538389   0.000000698   0.000019536
                        -0.002056415  -0.013493285  -0.000004671   0.000094422  -0.000000017  -0.000133815  -0.000001515  -0.000042427

   14    2.2  0.5 -0.5   0.002763523   0.030404419   0.000001873  -0.000055432   0.000001863   0.000134797   0.000060274  -0.000004174
                         0.000147999   0.006822354  -0.000003939   0.000063760   0.000002269   0.000374823   0.000015880   0.000271914

   15    3.2  0.5 -0.5   0.007019274   0.000659997   0.000000938   0.000001539  -0.000004320   0.000029081  -0.000188365  -0.000006966
                         0.017216419  -0.002078109   0.000015430   0.000008013  -0.000049849   0.000012449  -0.000081408   0.000050620

   16    4.2  0.5 -0.5  -0.169509333   0.015885391  -0.011905502   0.002168362   0.057044207   0.001221897  -0.111258486   0.047518288
                         0.057692956   0.002079826  -0.010473304  -0.018708751   0.002091999  -0.011075026   0.285365791   0.012590843

   17    5.2  0.5 -0.5  -0.011658667   0.019343887   0.001091772   0.139190535  -0.192490346  -0.025532390  -0.075847685   0.028871073
                         0.082004931  -0.026697037   0.117736338  -0.056094504  -0.062026011  -0.124680240  -0.004307827   0.059683070

   18    6.2  0.5 -0.5  -0.079307546  -0.003254737  -0.015923521  -0.064090054  -0.225161349   0.015254827   0.069366380  -0.019740274
                        -0.065528528   0.028228527  -0.136463630  -0.004403870   0.122187488   0.045074599   0.071250046  -0.032224811

   19    7.2  0.5 -0.5  -0.010101689   0.045911424  -0.020281381   0.186286577   0.054924147  -0.051297804   0.093606151   0.146291178
                        -0.091074295  -0.108791633  -0.123034389   0.080153098   0.081502336  -0.078748466  -0.003890537   0.015943817

   20    8.2  0.5 -0.5  -0.008879749   0.018583641   0.004850202  -0.028035076  -0.068117446  -0.018082781  -0.067574151   0.137393147
                         0.048683182  -0.118242618   0.068891590   0.223168359  -0.050297083   0.134716978  -0.013249429  -0.027933673

   21    9.2  0.5 -0.5   0.092275306   0.005886100   0.000065923  -0.000039297   0.000271260   0.000074520  -0.003433135  -0.000128209
                         0.227975336  -0.020395526   0.000712409   0.000075222   0.002460260   0.000295659  -0.001468101   0.000856680

   22   10.2  0.5 -0.5   0.036497926   0.398293105   0.000042329  -0.001199451   0.000023460   0.001023224   0.000807380  -0.000097239
                         0.006594307   0.116835674  -0.000075598   0.000862655  -0.000093735   0.007708591   0.000218022   0.003581664

   23   11.2  0.5 -0.5  -0.007552903  -0.048477680   0.000033441  -0.000712889  -0.000000522  -0.005163368  -0.000075682  -0.001130257
                         0.016381986   0.162947750   0.000048145  -0.000987843   0.000032192   0.000622515   0.000200255  -0.000072369

   24   12.2  0.5 -0.5   0.000295089  -0.000031751   0.000357957   0.000016494   0.002449280  -0.000002460  -0.000201627   0.000103059
                        -0.000121277   0.000012415  -0.000034706   0.000001926  -0.000256684  -0.000011163   0.000491364   0.000013518

   25    1.2  1.5  1.5  -0.000253503   0.000031833   0.028659368  -0.001099612   0.008570846   0.000461306   0.066815242   0.002820706
                        -0.000677664   0.000067977   0.285214010   0.013567513   0.083941816   0.000017971   0.028817489  -0.013760390

   26    2.2  1.5  1.5  -0.000151504  -0.000891881   0.004444566  -0.077207280  -0.000177352   0.303739722   0.005916804   0.140415028
                         0.000311276   0.003333269   0.004278923  -0.104624127  -0.001640102  -0.043066891  -0.026404207   0.003203328

   27    3.2  1.5  1.5   0.000609725   0.005993132   0.004137425  -0.102001545  -0.001174810  -0.022255999  -0.055777389   0.007967326
                         0.000218271   0.001739183  -0.004348161   0.075215933   0.000286272  -0.152267285  -0.013591492  -0.296758604

   28    4.2  1.5  1.5   0.279244578  -0.027300485   0.505524548   0.024053636   0.136956406   0.000052419   0.055846774  -0.026724134
                        -0.104794744   0.013932483  -0.050798660   0.001954004  -0.013914136  -0.000793629  -0.129651076  -0.005419091

   29    5.2  1.5  1.5   0.006336773   0.057928840   0.004386939  -0.075617648  -0.000405216   0.004681449   0.021875542   0.466298868
                        -0.020329334  -0.191934197   0.004131527  -0.102612409  -0.000749230  -0.002030677  -0.087632329   0.013089504

   30    6.2  1.5  1.5  -0.021287805  -0.201641365  -0.004531052   0.110060061   0.002148918   0.065225437  -0.003018401   0.001588522
                        -0.006721815  -0.060666969   0.004662911  -0.081266122  -0.000072234   0.464821984  -0.001790037  -0.016186545

   31    7.2  1.5  1.5   0.075704859  -0.008225413   0.000291891   0.000030658  -0.016481341  -0.000427369   0.144451355   0.005329902
                         0.189876188  -0.020079111   0.003420847   0.000178003  -0.153377654   0.000221827   0.061248208  -0.029987251

   32    8.2  1.5  1.5   0.173528425  -0.018483897  -0.026792796  -0.001259594  -0.161768170   0.000218965   0.057991503  -0.028429780
                        -0.069578845   0.007407281   0.002744251  -0.000147485   0.017334981   0.000475326  -0.136893803  -0.005013095

   33    9.2  1.5  1.5   0.131402037  -0.012803556  -0.000736620  -0.000031985  -0.000456029   0.000003364   0.001096390  -0.000532838
                        -0.049182349   0.006591389   0.000071013   0.000001869   0.000060389  -0.000007438  -0.002559063  -0.000100758

   34    1.2  1.5  0.5  -0.000022379  -0.000119789   0.000232562  -0.004216422  -0.000795281  -0.035702855   0.050543211  -0.008195042
                         0.000014059  -0.000070816  -0.000151057   0.003207244  -0.000187860  -0.259874121   0.013203001   0.269003449

   35    2.2  1.5  0.5  -0.006336729   0.000621800  -0.244043752  -0.011597653  -0.203116517   0.000169199   0.025804681  -0.012938822
                         0.002394335  -0.000317930   0.024560271  -0.000973632   0.021424662   0.000770779  -0.061874726  -0.001970117

   36    3.2  1.5  0.5   0.000607517  -0.000090707   0.025068270  -0.000935047  -0.006158643   0.000060872   0.183609640   0.007096447
                         0.001682635  -0.000154672   0.249821777   0.011897695  -0.053446259   0.000199816   0.078296725  -0.038016490

   37    4.2  1.5  0.5  -0.005784596  -0.054356300  -0.001113487   0.019579537  -0.000104420  -0.164256212   0.007254423   0.146812360
                         0.019058983   0.178918085  -0.001113278   0.026442006   0.000542687   0.022637654  -0.027584724   0.004526326

   38    5.2  1.5  0.5   0.265154344  -0.025827050   0.078599640   0.003722571   0.243226891  -0.000307682  -0.081712230   0.040092150
                        -0.099216908   0.013312678  -0.007965306   0.000362626  -0.026025170  -0.000743020   0.193019452   0.007025681

   39    6.2  1.5  0.5   0.098743091  -0.013213960   0.008758777  -0.000289182  -0.022045712  -0.000504379   0.231050505   0.008627422
                         0.263743918  -0.025709776   0.087773196   0.004199705  -0.204007882   0.000333452   0.098110111  -0.047935036

   40    7.2  1.5  0.5   0.025897449   0.262650102   0.006108800  -0.152227673   0.002235078   0.054068794   0.065858226  -0.008843601
                         0.010611056   0.073164018  -0.006605874   0.112453934  -0.000429060   0.377800515   0.015570020   0.350329380

   41    8.2  1.5  0.5   0.011425210   0.079737573  -0.017005580   0.292719410   0.000128371  -0.154546830  -0.008053156  -0.178122401
                        -0.028201079  -0.285139123  -0.016060426   0.396602206   0.001079146   0.022242767   0.033481420  -0.004705388

   42    9.2  1.5  0.5   0.003255146   0.029667647  -0.000006391   0.000038561   0.000001177   0.003438524  -0.000054852  -0.000988877
                        -0.010410680  -0.098404875   0.000000462   0.000061931  -0.000015482  -0.000480144   0.000185593  -0.000037188

   43    1.2  1.5 -0.5  -0.000080889  -0.000012075  -0.000453975  -0.000044191   0.028035193   0.000726485  -0.247771863  -0.009147059
                        -0.000113231   0.000023509  -0.005278118  -0.000273771   0.260812730  -0.000374142  -0.105067209   0.051432156

   44    2.2  1.5 -0.5  -0.000263083  -0.001838549  -0.008508131   0.145647323  -0.000021716   0.202286969  -0.003622159  -0.066995596
                         0.000646917   0.006519717  -0.007941361   0.197351000  -0.000788832  -0.028201379   0.012576742  -0.002439979

   45    3.2  1.5 -0.5  -0.000161923  -0.001728786   0.008189628  -0.201974175   0.000010878  -0.006914896   0.037499668  -0.005675585
                        -0.000077020  -0.000460041  -0.008680981   0.149150163  -0.000208599  -0.053353685   0.009454518   0.199526101

   46    4.2  1.5 -0.5   0.173559697  -0.018488674   0.032741780   0.001572639  -0.164866665   0.000232238   0.057293046  -0.028090242
                        -0.069593968   0.007407786  -0.003242505   0.000077762   0.017650764   0.000501477  -0.135247416  -0.004947924

   47    5.2  1.5 -0.5   0.011034163   0.075964197   0.002768047  -0.046868054  -0.000119375  -0.242322698   0.010386945   0.209501867
                        -0.026879568  -0.272727449   0.002515343  -0.063598231   0.000795296   0.033411674  -0.039355458   0.006508840

   48    6.2  1.5 -0.5  -0.026754212  -0.271281395   0.002918257  -0.070929506  -0.000569918  -0.027813672   0.047149328  -0.007520664
                        -0.010945934  -0.075613866  -0.003033961   0.052439062  -0.000201945  -0.203301817   0.012212329   0.250905100

   49    7.2  1.5 -0.5   0.095557510  -0.012806393  -0.018864538   0.000794231  -0.038656395  -0.002272576  -0.321914019  -0.013402546
                         0.255356245  -0.024885109  -0.188316969  -0.008962377  -0.379687169   0.000122729  -0.138492773   0.066333273

   50    8.2  1.5 -0.5  -0.277194075   0.027109885   0.490452326   0.023319830  -0.155348718   0.000135719  -0.070225861   0.033780467
                         0.104047322  -0.013816311  -0.049340430   0.001820037   0.015692006   0.001078246   0.163762202   0.006688711

   51    9.2  1.5 -0.5  -0.095477465   0.010090925   0.000071787   0.000003948   0.003452811  -0.000004876  -0.000379820   0.000191522
                         0.038049209  -0.004141433  -0.000013003   0.000005046  -0.000363434  -0.000014741   0.000913781   0.000027801

   52    1.2  1.5 -1.5  -0.000070471  -0.000697013  -0.009316647   0.230614480  -0.000443350  -0.011929706  -0.013678758   0.001769727
                        -0.000025847  -0.000194075   0.009924044  -0.170250851   0.000128712  -0.083530653  -0.003193164  -0.072743332

   53    2.2  1.5 -1.5  -0.003243865   0.000297040   0.129373545   0.006155166  -0.305159394   0.000223491  -0.055819074   0.026458480
                         0.001176211  -0.000177802  -0.013025286   0.000421045   0.031469351   0.001634454   0.128883173   0.005669173

   54    3.2  1.5 -1.5  -0.002249896   0.000270075   0.012740297  -0.000444600  -0.015129319  -0.001209173  -0.272887498  -0.010983383
                        -0.005820683   0.000588614   0.126092968   0.005985576  -0.153139672   0.000005555  -0.116882679   0.056349011

   55    4.2  1.5 -1.5  -0.011524499  -0.080305250  -0.017597534   0.301758079  -0.000242301   0.136268744   0.006255071   0.141124124
                         0.028400994   0.287246478  -0.016514307   0.408751311  -0.000757552  -0.019531759  -0.026540912   0.003499344

   56    5.2  1.5 -1.5   0.186218943  -0.019706634   0.126815389   0.006007241  -0.005033038  -0.000212530  -0.183140467   0.088748667
                        -0.074276457   0.008067534  -0.012852714   0.000477298  -0.000841512   0.000824849   0.429028599   0.016782088

   57    6.2  1.5 -1.5   0.077842090  -0.008533854  -0.013666909   0.000413583   0.048819493   0.002102891  -0.015367148   0.000363497
                         0.195653598  -0.020628301  -0.136127202  -0.006488614   0.466830260  -0.000448236  -0.005327137   0.003490394

   58    7.2  1.5 -1.5   0.020714047   0.195701069  -0.000152502   0.002731171   0.000468257   0.021001301  -0.029467599   0.004783287
                         0.006461919   0.059036297   0.000096789  -0.002080408   0.000112192   0.152824359  -0.007700887  -0.156826838

   59    8.2  1.5 -1.5  -0.005784505  -0.054343933   0.000954983  -0.015954696  -0.000097847  -0.161173036   0.007337239   0.148599955
                         0.019054180   0.178885625   0.000834468  -0.021698676   0.000514107   0.022196731  -0.027920394   0.004580499

   60    9.2  1.5 -1.5  -0.005461864  -0.037658996   0.000020090  -0.000441933  -0.000005059  -0.000457130   0.000131338   0.002783044
                         0.013324619   0.135156201   0.000024959  -0.000593588  -0.000006407   0.000051392  -0.000526136   0.000074446


   Nr   State  S   Sz       49            50            51            52            53            54            55            56

    1    1.2  0.5  0.5  -0.000400536   0.000035461  -0.000029207  -0.001298635   0.017278907   0.000000000  -0.030460141  -0.000154447
                        -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000

    2    2.2  0.5  0.5   0.000284701   0.000120805  -0.000011151  -0.000112298  -0.000011543   0.000790139  -0.000020829   0.001907522
                        -0.000890082   0.000091242   0.000028385   0.000829872   0.017282322  -0.000788742  -0.030361535   0.000243571

    3    3.2  0.5  0.5   0.000075434  -0.000658151  -0.000010920  -0.000059887  -0.000008067  -0.017320624   0.000083513  -0.018043225
                        -0.000128868  -0.000887976  -0.000259428   0.000047701   0.000830102   0.000950607  -0.001334567  -0.024397056

    4    4.2  0.5  0.5   0.046580929   0.317232995  -0.127311541  -0.002003130   0.000020369  -0.000050870  -0.000001299   0.000070372
                         0.050901302  -0.245468912   0.027271993   0.014429085  -0.000008802  -0.001314692  -0.000015845  -0.000050101

    5    5.2  0.5  0.5  -0.127155491  -0.038784645  -0.250949011   0.039013791  -0.000156686  -0.000150847   0.000042693  -0.000061692
                         0.147677664   0.076735486  -0.186732138   0.188332804   0.000549542   0.001744185  -0.000226031   0.000028098

    6    6.2  0.5  0.5   0.077109602  -0.126839411  -0.295328976  -0.016784217   0.000117196   0.000428319  -0.000021588  -0.000072042
                        -0.050800432   0.017864685   0.251187016  -0.073552453  -0.000061367   0.002258971   0.000074044   0.000076108

    7    7.2  0.5  0.5  -0.315255178  -0.018764126   0.072429147   0.081327499  -0.000419851   0.000262764   0.000067372   0.000032005
                        -0.000860575  -0.091700349   0.215242005   0.113353596   0.000245368  -0.000460686  -0.000140266  -0.000000177

    8    8.2  0.5  0.5  -0.184393120   0.061112857  -0.103651854   0.050966386  -0.000279673  -0.000135813   0.000007618  -0.000030565
                        -0.264270531   0.014155559  -0.140449625  -0.196165326  -0.000527546   0.000564302   0.000234239   0.000011256

    9    9.2  0.5  0.5  -0.000507705   0.003542067   0.000032251   0.000025515   0.015337571   0.348142061   0.011389299  -0.145222168
                         0.000713490   0.004765670   0.000997789  -0.000162090  -0.013726740  -0.019233830  -0.008610025  -0.196271346

   10   10.2  0.5  0.5  -0.002473982  -0.000752401   0.000029029  -0.000402330   0.055364531  -0.015111366   0.038534406   0.015117225
                         0.006308152  -0.000571615  -0.000098831  -0.003171916  -0.344970571   0.015706932  -0.241417295   0.001604460

   11   11.2  0.5  0.5  -0.002592371   0.000179808  -0.000191964  -0.007930575   0.345998683  -0.013140924   0.241864655   0.005271565
                        -0.001088845  -0.000205434  -0.000047779   0.000785215   0.056010555  -0.001661960   0.038985340   0.008431983

   12   12.2  0.5  0.5   0.000185444   0.001923890   0.002550527  -0.000063056  -0.000000184   0.031046418  -0.001593370   0.314229982
                         0.000165913  -0.001429872  -0.000099263   0.000024981   0.023463101   0.545208001   0.017870804  -0.233376734

   13    1.2  0.5 -0.5  -0.000034162  -0.000385858  -0.001287493   0.000028956  -0.000000000   0.001561881  -0.000136120   0.026845559
                         0.000009512   0.000107438   0.000169749  -0.000003818   0.000000000  -0.017208171   0.000072975  -0.014392225

   14    2.2  0.5 -0.5  -0.000091904   0.000513020  -0.000219810   0.000014766  -0.000856936  -0.017212615   0.001566078  -0.014327276
                         0.000120302   0.000781096  -0.000808073   0.000026684   0.000715608  -0.001550694  -0.001115960  -0.026768496

   15    3.2  0.5 -0.5   0.000395844   0.000107237  -0.000065609  -0.000023085   0.002512367  -0.000827433  -0.004374653  -0.000704177
                        -0.001031975   0.000103911  -0.000039464  -0.000258629  -0.017163790  -0.000067001   0.030027267  -0.001136740

   16    4.2  0.5 -0.5  -0.371451126   0.031220287  -0.003872023   0.129784051  -0.001304711   0.000010607   0.000085694  -0.000006342
                        -0.151379724  -0.061530635  -0.014043449   0.010396637  -0.000169500  -0.000019490   0.000010906  -0.000014579

   17    5.2  0.5 -0.5   0.057946573  -0.162108188   0.014061376   0.224387453   0.001750680  -0.000561455  -0.000067647  -0.000144425
                         0.063519903  -0.108157971  -0.191816575  -0.217932486   0.000007432   0.000106370   0.000004385  -0.000179037

   18    6.2  0.5 -0.5   0.126983097   0.087910307  -0.007025896   0.325628690   0.002211007   0.000071710  -0.000099454   0.000054011
                        -0.016812975   0.028255133   0.075115312   0.210428319   0.000630759  -0.000111169  -0.000033037   0.000055058

   19    7.2  0.5 -0.5  -0.006520913  -0.303471202   0.065812851  -0.043672632  -0.000482552  -0.000282314   0.000028291  -0.000125652
                        -0.093373038   0.085392019  -0.123011661   0.222862746   0.000220046   0.000395953  -0.000014966  -0.000091788

   20    8.2  0.5 -0.5  -0.055076218  -0.106748644   0.076170604   0.084403843   0.000574268   0.000500106  -0.000032257   0.000103962
                         0.030029507   0.304046811   0.187820252  -0.152793309  -0.000084248   0.000326214   0.000004521   0.000210043

   21    9.2  0.5 -0.5  -0.002133934  -0.000680484   0.000046483   0.000098451  -0.050624467   0.015056945  -0.035252266  -0.014105960
                         0.005541134  -0.000551157   0.000157364   0.000993443   0.344978257  -0.014033990   0.241597179  -0.002206936

   22   10.2  0.5 -0.5   0.000571500  -0.004075396   0.000015735  -0.000041698   0.017008583   0.348562871   0.012565227  -0.148029836
                        -0.000752489  -0.005413365   0.003197291  -0.000094189  -0.013629718  -0.023955184  -0.008556859  -0.194562017

   23   11.2  0.5 -0.5  -0.000228324  -0.002205300  -0.007965171   0.000184071  -0.000467318  -0.024505630   0.000661951  -0.194743227
                        -0.000149674   0.001744311   0.000258157  -0.000072462  -0.013237356  -0.349645170  -0.009922175   0.148638634

   24   12.2  0.5 -0.5  -0.002236929   0.000134144  -0.000065780  -0.002541619   0.540169688  -0.023367065   0.387210619   0.009848133
                        -0.000861414  -0.000209576  -0.000016524   0.000234977   0.080201949  -0.002120702   0.057211173   0.014997291

   25    1.2  1.5  1.5  -0.035919259  -0.009653689   0.002604118  -0.032263563   0.000256227  -0.000004580  -0.000013274  -0.000003516
                         0.092106492  -0.005752608  -0.007836084  -0.344871741  -0.001752138   0.000077197   0.000090768   0.000002725

   26    2.2  1.5  1.5   0.015301541   0.158492282   0.054908369  -0.001612530  -0.000000654   0.006066548   0.000655236  -0.129195258
                         0.014001586  -0.118178464  -0.001952438   0.000290139   0.004585179   0.106546811  -0.007347720   0.095952619

   27    3.2  1.5  1.5  -0.013961453   0.117915412   0.002141021  -0.000342245  -0.004527346  -0.105180580   0.007349247  -0.095973901
                         0.015260034   0.158142826   0.060032447  -0.001727620  -0.000000675   0.005989986   0.000655359  -0.129224226

   28    4.2  1.5  1.5  -0.018702063   0.001158105   0.001250368   0.055274854   0.013684545  -0.000591830  -0.019717126  -0.000501311
                        -0.007283859  -0.001929484   0.000423168  -0.005170127   0.002032301  -0.000053999  -0.002913505  -0.000763731

   29    5.2  1.5  1.5   0.004652862   0.048154874   0.013410315  -0.000413662  -0.000000301  -0.006885699  -0.000678520   0.133781563
                         0.004259992  -0.035909543  -0.000470274   0.000056330  -0.005203191  -0.120905577   0.007608538  -0.099358781

   30    6.2  1.5  1.5   0.004212510  -0.035592352  -0.000674384   0.000112726  -0.005262530  -0.122302912   0.007607014  -0.099338713
                        -0.004603965  -0.047733951  -0.018948902   0.000537633   0.000000290   0.006964395   0.000678395  -0.133754583

   31    7.2  1.5  1.5   0.020629997   0.005083466   0.000037667  -0.001712940  -0.035158786   0.000929673   0.048892804   0.012816880
                        -0.053332234   0.003176314  -0.000523388  -0.017951168   0.236799359  -0.010243598  -0.330910958  -0.008416033

   32    8.2  1.5  1.5  -0.052146881   0.003103080  -0.000597157  -0.021219341   0.236430283  -0.010227552  -0.330313035  -0.008400889
                        -0.020168495  -0.004961706  -0.000062803   0.002018570   0.035103985  -0.000928277  -0.048804430  -0.012793737

   33    9.2  1.5  1.5  -0.143897209   0.008986147   0.012196571   0.536744589   0.001965775  -0.000087076  -0.000137468  -0.000003886
                        -0.056116568  -0.015079528   0.004053551  -0.050214560   0.000287090  -0.000004704  -0.000020135  -0.000005305

   34    1.2  1.5  0.5   0.007896926  -0.066683767  -0.001185047   0.000184115  -0.005275231  -0.122561791   0.008504593  -0.111063470
                        -0.008630457  -0.089433102  -0.033221883   0.000960460  -0.000000071   0.006979295   0.000758062  -0.149541345

   35    2.2  1.5  0.5   0.268373793  -0.016138407  -0.002533149  -0.131739559   0.062930906  -0.002721268  -0.092017410  -0.002339806
                         0.103993717   0.026100454  -0.001388082   0.012174346   0.009345342  -0.000248564  -0.013595961  -0.003564051

   36    3.2  1.5  0.5  -0.062323012  -0.014908169  -0.001603248   0.024863552  -0.009424099   0.000248943   0.013649348   0.003578064
                         0.161519108  -0.009467451   0.006463190   0.264148756   0.063476271  -0.002746481  -0.092381408  -0.002349613

   37    4.2  1.5  0.5  -0.004121702  -0.042760173  -0.018522211   0.000515236   0.000000014   0.013571892   0.001357193  -0.267638504
                        -0.003769688   0.031881420   0.000665783  -0.000113663   0.010257001   0.238336433  -0.015221306   0.198773554

   38    5.2  1.5  0.5  -0.018958458   0.001175565   0.001286943   0.056938518   0.204075962  -0.008828391  -0.286247067  -0.007280030
                        -0.007382379  -0.001956818   0.000433280  -0.005324903   0.030299593  -0.000800956  -0.042293877  -0.011087010

   39    6.2  1.5  0.5   0.004685881   0.001292173  -0.000444194   0.005569175   0.030218092  -0.000799250  -0.042341023  -0.011099424
                        -0.011985180   0.000758581   0.001360567   0.059505406  -0.203520364   0.008804366   0.286569779   0.007288746

   40    7.2  1.5  0.5  -0.001322845   0.010048497  -0.002380262   0.000653791  -0.000081810  -0.001914435  -0.000015603   0.000203079
                         0.001384372   0.013399331  -0.062992904   0.001355409  -0.000000580   0.000106827  -0.000001621   0.000274074

   41    8.2  1.5  0.5   0.001575447   0.015484930  -0.055228574   0.001175611  -0.000000605  -0.000806549  -0.000082288   0.016175101
                         0.001494283  -0.011599629   0.002094929  -0.000579320  -0.000608457  -0.014147050   0.000919971  -0.012012793

   42    9.2  1.5  0.5   0.041457557   0.429524345   0.155341598  -0.004515561  -0.000001448  -0.000199856  -0.000000665   0.000181795
                         0.037934231  -0.320269619  -0.005529045   0.000852275  -0.000149938  -0.003494904   0.000010208  -0.000135035

   43    1.2  1.5 -0.5  -0.040250779  -0.009922533  -0.000056990   0.003167677  -0.018029370   0.000476770   0.027226674   0.007137208
                         0.104042680  -0.006195933   0.000976286   0.033091746   0.121429177  -0.005253641  -0.184272669  -0.004686472

   44    2.2  1.5 -0.5  -0.022548081  -0.230643792   0.132200608  -0.002329974   0.000001564   0.003618613   0.000378159  -0.074674070
                        -0.020815041   0.172170343  -0.005150277   0.001707290   0.002732596   0.063518029  -0.004246663   0.055460230

   45    3.2  1.5 -0.5  -0.011822313   0.103364403   0.009877642  -0.002434320   0.002757740   0.064068281  -0.004263647   0.055679269
                         0.013119414   0.138882613   0.265132407  -0.006198170   0.000000337  -0.003647750  -0.000380181   0.074969649

   46    4.2  1.5 -0.5  -0.049744907   0.002959486  -0.000525672  -0.018450320  -0.236133944   0.010215010   0.329798178   0.008388112
                        -0.019243220  -0.004737132  -0.000045340   0.001761037  -0.035060120   0.000927168   0.048728392   0.012773790

   47    5.2  1.5 -0.5   0.001657375   0.016283464  -0.057146032   0.001219266  -0.000000341   0.011728650   0.001177595  -0.232295695
                         0.001569777  -0.012197190   0.002163430  -0.000597783   0.008864650   0.205979374  -0.013211128   0.172524970

   48    6.2  1.5 -0.5   0.001041340  -0.007729022   0.002256782  -0.000618227  -0.008840569  -0.205418683   0.013226187  -0.172719001
                        -0.001077389  -0.010289035   0.059722826  -0.001290832   0.000000131   0.011697704   0.001179412  -0.232557836

   49    7.2  1.5 -0.5   0.006086059   0.001645706  -0.000471011   0.005874198  -0.000279440   0.000006818  -0.000049482  -0.000012986
                        -0.015603661   0.000978803   0.001429239   0.062763567   0.001896941  -0.000081528   0.000337505   0.000008801

   50    8.2  1.5 -0.5   0.018028900  -0.001116890  -0.001241250  -0.055028558   0.014016229  -0.000605911  -0.019931637  -0.000507203
                         0.007020913   0.001862115  -0.000420681   0.005142178   0.002082032  -0.000055603  -0.002944650  -0.000771921

   51    9.2  1.5 -0.5   0.499691630  -0.029762915   0.004588222   0.154731513   0.003462531  -0.000149193  -0.000224025  -0.000005409
                         0.193318562   0.047664492   0.000254717  -0.014823673   0.000514950  -0.000014996  -0.000033114  -0.000008682

   52    1.2  1.5 -1.5   0.007756850  -0.059309261   0.013092724  -0.003606059   0.000077295   0.001768126  -0.000004386   0.000054587
                        -0.008131266  -0.079096211   0.346130085  -0.007428457   0.000002416  -0.000096798  -0.000000741   0.000073725

   53    2.2  1.5 -1.5  -0.184383816   0.010985048  -0.001636620  -0.054692474   0.105562264  -0.004566467  -0.159201187  -0.004049233
                        -0.071334152  -0.017592904  -0.000076870   0.005241592   0.015672729  -0.000413814  -0.023522364  -0.006166201

   54    3.2  1.5 -1.5  -0.071174477  -0.017543109  -0.000113485   0.005724413   0.015472983  -0.000408565  -0.023527433  -0.006167488
                         0.183976606  -0.010955827   0.001757533   0.059797239  -0.104208546   0.004508874   0.159236773   0.004050063

   55    4.2  1.5 -1.5  -0.001633222  -0.016062892   0.055476411  -0.001184326  -0.000000281  -0.000787003  -0.000080964   0.016000761
                        -0.001548128   0.012033505  -0.002099414   0.000582978  -0.000594288  -0.013812228   0.000909969  -0.011883989

   56    5.2  1.5 -1.5  -0.056022399   0.003339663  -0.000417476  -0.013356728  -0.119788203   0.005181863   0.164852645   0.004192989
                        -0.021676668  -0.005351944  -0.000001775   0.001286673  -0.017786449   0.000470628   0.024357330   0.006385067

   57    6.2  1.5 -1.5   0.021484008   0.005293087   0.000041482  -0.001808284   0.017991131  -0.000475982  -0.024352392  -0.006383783
                        -0.055531820   0.003305294  -0.000547755  -0.018874475  -0.121172704   0.005240960   0.164819384   0.004192158

   58    7.2  1.5 -1.5  -0.004045169   0.034179628   0.000648220  -0.000105758  -0.010285698  -0.239008042   0.015272476  -0.199444237
                         0.004423484   0.045844050   0.018021055  -0.000513974  -0.000000076   0.013610006   0.001361442  -0.268541551

   59    8.2  1.5 -1.5  -0.004320272  -0.044825929  -0.021301137   0.000583824   0.000000015  -0.013588790  -0.001359029   0.268056337
                        -0.003947515   0.033417085   0.000772408  -0.000140321  -0.010269592  -0.238635524   0.015244924  -0.199083835

   60    9.2  1.5 -1.5  -0.012701714  -0.123571299   0.538703136  -0.011562071   0.000003186  -0.000108224  -0.000000919   0.000111641
                        -0.012116496   0.092658567  -0.020376159   0.005613032  -0.000087145  -0.001983678   0.000006512  -0.000082698


   Nr   State  S   Sz       57            58            59            60

    1    1.2  0.5  0.5  -0.003578179   0.000416316   0.000332260   0.000631403
                        -0.000000000  -0.000000000   0.000000000   0.000000000

    2    2.2  0.5  0.5  -0.000322447  -0.000031261  -0.000952190  -0.001292381
                         0.002318854  -0.000315648   0.001547541   0.001695956

    3    3.2  0.5  0.5   0.000005297   0.001288481   0.002499671  -0.002124833
                         0.000129153   0.000319452  -0.000792935   0.000418105

    4    4.2  0.5  0.5   0.000542717   0.000170440   0.084746653  -0.041620769
                         0.004986201  -0.077112267   0.233819219  -0.218132873

    5    5.2  0.5  0.5   0.048356917   0.198586979   0.010705939   0.135049540
                         0.141527936  -0.174577333  -0.072170870  -0.033765828

    6    6.2  0.5  0.5  -0.030512536  -0.120604986  -0.002060926  -0.091035916
                        -0.095095026  -0.279769861  -0.058112890   0.050838995

    7    7.2  0.5  0.5   0.025971377  -0.179410140   0.209068321   0.151789024
                         0.106171735  -0.002563809   0.018385378   0.075244022

    8    8.2  0.5  0.5   0.033934580   0.121827727   0.045634517   0.087532152
                        -0.175300001  -0.026543988   0.163454959   0.181682775

    9    9.2  0.5  0.5  -0.010903096  -0.084173807  -0.166173945   0.142705857
                        -0.007147784  -0.021360638   0.053740930  -0.026887736

   10   10.2  0.5  0.5  -0.016159695   0.006250427   0.066054735   0.092176431
                        -0.150237509   0.020418398  -0.102044228  -0.111968868

   11   11.2  0.5  0.5  -0.236625496   0.030607065   0.019292327   0.021684345
                         0.024511075  -0.002344177   0.013924789   0.019103558

   12   12.2  0.5  0.5   0.000002966   0.000034714  -0.000037044   0.000014093
                        -0.000017694  -0.000134074  -0.000107942   0.000089557

   13    1.2  0.5 -0.5   0.000063118   0.000542488   0.000230929  -0.000121521
                        -0.000411504  -0.003536817  -0.000587657   0.000309240

   14    2.2  0.5 -0.5   0.000307259   0.002340935  -0.002051131   0.001788577
                         0.000078755   0.000032842   0.000582562  -0.000320222

   15    3.2  0.5 -0.5  -0.000120412   0.000126857  -0.001166274  -0.001652228
                        -0.001322019   0.000024817   0.001824700   0.002036478

   16    4.2  0.5 -0.5   0.076246720   0.004846281   0.187797608   0.186624298
                         0.011522523   0.001292402   0.118517076   0.164392195

   17    5.2  0.5 -0.5   0.202667064   0.132560534   0.080819450  -0.071086250
                        -0.169823717   0.069254984  -0.113343398  -0.016431573

   18    6.2  0.5 -0.5   0.258250904  -0.089369758  -0.080612195  -0.053332895
                         0.161626755  -0.044577183   0.066134827  -0.023172347

   19    7.2  0.5 -0.5  -0.024666204   0.101006909  -0.014515579  -0.059353060
                         0.177724928   0.041767858  -0.168792383   0.201307723

   20    8.2  0.5 -0.5   0.044707455  -0.178418423  -0.137081251   0.135439952
                        -0.116395111   0.006965071  -0.147916324   0.102254839

   21    9.2  0.5 -0.5   0.008352124  -0.005412139   0.077218114   0.110794058
                         0.086439277  -0.011860736  -0.122984856  -0.135005719

   22   10.2  0.5 -0.5  -0.019234742  -0.146050850   0.137923943  -0.119133163
                        -0.009273808  -0.038750408  -0.044838685   0.024156614

   23   11.2  0.5 -0.5   0.006957417   0.060102534  -0.009849176   0.005904063
                        -0.029897858  -0.230174072  -0.027168925   0.023048550

   24   12.2  0.5 -0.5   0.000137788  -0.000017939  -0.000078197  -0.000086915
                        -0.000013986   0.000000249  -0.000045871  -0.000073956

   25    1.2  1.5  1.5   0.034640324  -0.004359843  -0.045113027  -0.076509198
                         0.372865439  -0.048775623   0.075970270   0.087359596

   26    2.2  1.5  1.5   0.001124789   0.021308733  -0.055507629   0.021543193
                        -0.011074563  -0.080992852  -0.161992399   0.133739941

   27    3.2  1.5  1.5   0.011056994   0.080859788   0.162023186  -0.133764263
                         0.001120452   0.021275226  -0.055518702   0.021547160

   28    4.2  1.5  1.5   0.193642889  -0.025318731   0.046777531   0.053592423
                        -0.017932642   0.002348745   0.027762546   0.046752165

   29    5.2  1.5  1.5  -0.001031027  -0.019606575   0.051226149  -0.019880994
                         0.010189818   0.074513780   0.149494629  -0.123420128

   30    6.2  1.5  1.5   0.010225665   0.074786953   0.149421003  -0.123361571
                         0.001039829   0.019675082  -0.051199541   0.019871429

   31    7.2  1.5  1.5  -0.008059204  -0.000523596  -0.063419526  -0.101993861
                        -0.076400093   0.010197902   0.107220332   0.119978691

   32    8.2  1.5  1.5  -0.088069906   0.011723994   0.104569541   0.116937895
                         0.009141247   0.000383989   0.061845994   0.099337598

   33    9.2  1.5  1.5  -0.309565950   0.040495234  -0.063057041  -0.072510871
                         0.028759713  -0.003619472  -0.037444816  -0.063505020

   34    1.2  1.5  0.5  -0.006334602  -0.046313200  -0.093386632   0.077096678
                        -0.000636944  -0.012189186   0.032001314  -0.012418894

   35    2.2  1.5  0.5   0.119508121  -0.015377605   0.178216176   0.200778896
                        -0.009898248   0.003172807   0.105515252   0.171977479

   36    3.2  1.5  0.5  -0.030091888   0.001859170  -0.053482243  -0.083728628
                        -0.310936491   0.040930160   0.090592523   0.100016851

   37    4.2  1.5  0.5   0.001407956   0.022489479  -0.049776828   0.019352284
                        -0.011700338  -0.086066142  -0.145437174   0.120168542

   38    5.2  1.5  0.5   0.199009631  -0.026033177   0.040479337   0.046549513
                        -0.018488830   0.002326257   0.024037432   0.040769925

   39    6.2  1.5  0.5   0.018451711  -0.002321941  -0.024019639  -0.040736309
                         0.198609209  -0.025980516   0.040448920   0.046513559

   40    7.2  1.5  0.5   0.025374009   0.193863295  -0.058199894   0.046437161
                         0.006244563   0.048436722   0.020907320  -0.007562564

   41    8.2  1.5  0.5   0.006155685   0.047052438   0.023885637  -0.008720858
                        -0.024653758  -0.188560951   0.066903788  -0.053629934

   42    9.2  1.5  0.5   0.001606889   0.030543356  -0.079766686   0.030957483
                        -0.015873566  -0.116079534  -0.232785444   0.192183936

   43    1.2  1.5 -0.5  -0.005026738  -0.000330808  -0.039755815  -0.063939395
                        -0.047625840   0.006357944   0.067213108   0.075212371

   44    2.2  1.5 -0.5   0.005467530   0.027902458   0.086629503  -0.033024064
                        -0.014718817  -0.116625979   0.249767386  -0.204459984

   45    3.2  1.5 -0.5   0.040175154   0.302779954   0.123710298  -0.103876602
                         0.008043102   0.076885127  -0.041347500   0.016643528

   46    4.2  1.5 -0.5  -0.088480881   0.011778547   0.104765009   0.117155483
                         0.009181019   0.000382208   0.061961942   0.099520334

   47    5.2  1.5 -0.5   0.006246258   0.048446962   0.020920246  -0.007567136
                        -0.025379560  -0.193906065   0.058235618  -0.046466260

   48    6.2  1.5 -0.5  -0.025328161  -0.193515899   0.058189861  -0.046431443
                        -0.006234007  -0.048349564  -0.020902110   0.007561700

   49    7.2  1.5 -0.5   0.018485193  -0.002325424  -0.024022534  -0.040744828
                         0.198965803  -0.026027434   0.040453926   0.046520992

   50    8.2  1.5 -0.5  -0.193514881   0.025302034  -0.046724728  -0.053532565
                         0.017920799  -0.002346771  -0.027731263  -0.046700161

   51    9.2  1.5 -0.5  -0.119368379   0.015933694   0.167546480   0.187483519
                         0.012591465   0.000818278   0.099102009   0.159379162

   52    1.2  1.5 -1.5   0.047550800   0.363303439  -0.109289540   0.087206465
                         0.011704318   0.090770035   0.039257519  -0.014202098

   53    2.2  1.5 -1.5   0.083287224  -0.011117075  -0.116594839  -0.130467731
                        -0.008783084  -0.000567228  -0.068964662  -0.110908996

   54    3.2  1.5 -1.5  -0.008770138  -0.000568851  -0.068977250  -0.110930562
                        -0.083150618   0.011099052   0.116616025   0.130492335

   55    4.2  1.5 -1.5  -0.006160168  -0.047083551  -0.023912146   0.008730661
                         0.024669963   0.188685684  -0.066978519   0.053690519

   56    5.2  1.5 -1.5  -0.076624982   0.010228342   0.107597945   0.120401751
                         0.008082894   0.000525770   0.063643257   0.102353216

   57    6.2  1.5 -1.5  -0.008109193  -0.000522504  -0.063612938  -0.102301523
                        -0.076905385   0.010265109   0.107546943   0.120342958

   58    7.2  1.5 -1.5  -0.010159401  -0.074295081  -0.148969449   0.122986850
                        -0.001028561  -0.019549063   0.051046422  -0.019810872

   59    8.2  1.5 -1.5   0.001397925   0.022387859  -0.049686333   0.019315860
                        -0.011646686  -0.085665947  -0.145167827   0.119944210

   60    9.2  1.5 -1.5   0.009717116   0.075360564   0.032585081  -0.011788047
                        -0.039478376  -0.301627227   0.090713431  -0.072383330


 Composition of spin-orbit eigenvectors
 ======================================

   Nr   State  S   Sz       1        2        3        4        5        6        7        8        9       10

    1    1.2  0.5  0.5  61.372%   0.005%   0.012%   4.938%  32.695%   0.462%   0.000%   0.002%   0.090%   0.001%
    2    2.2  0.5  0.5  33.224%   0.023%   1.314%  31.766%  32.900%   0.258%   0.008%   0.053%   0.030%   0.000%
    3    3.2  0.5  0.5   0.175%   4.691%  59.532%   1.928%   0.531%  32.628%   0.066%   0.009%   0.000%   0.016%
    4    4.2  0.5  0.5   0.000%   0.002%   0.013%   0.001%   0.000%   0.000%   0.880%   0.133%   0.003%   0.024%
    5    5.2  0.5  0.5   0.003%   0.009%   0.001%   0.003%   0.000%   0.000%   0.013%   0.184%   0.268%   0.555%
    6    6.2  0.5  0.5   0.001%   0.013%   0.001%   0.001%   0.000%   0.000%   0.066%   0.059%   0.014%   0.894%
    7    7.2  0.5  0.5   0.002%   0.004%   0.001%   0.008%   0.000%   0.000%   0.161%   0.468%   0.127%   0.240%
    8    8.2  0.5  0.5   0.004%   0.003%   0.000%   0.009%   0.000%   0.000%   0.114%   0.462%   0.265%   0.157%
    9    9.2  0.5  0.5   0.000%   0.000%   0.001%   0.000%   0.000%   0.017%   9.414%   1.225%   0.009%   2.435%
   10   10.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.017%   0.000%   1.040%   7.579%   4.294%   0.012%
   11   11.2  0.5  0.5   0.001%   0.000%   0.000%   0.000%   0.017%   0.000%   0.007%   0.073%  12.526%   0.055%
   12   12.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.001%   0.112%   0.001%   0.000%   0.000%   0.003%
   13    1.2  0.5 -0.5   0.005%  61.372%   4.938%   0.012%   0.462%  32.695%   0.002%   0.000%   0.001%   0.090%
   14    2.2  0.5 -0.5   0.023%  33.224%  31.766%   1.314%   0.258%  32.900%   0.053%   0.008%   0.000%   0.030%
   15    3.2  0.5 -0.5   4.691%   0.175%   1.928%  59.532%  32.628%   0.531%   0.009%   0.066%   0.016%   0.000%
   16    4.2  0.5 -0.5   0.002%   0.000%   0.001%   0.013%   0.000%   0.000%   0.133%   0.880%   0.024%   0.003%
   17    5.2  0.5 -0.5   0.009%   0.003%   0.003%   0.001%   0.000%   0.000%   0.184%   0.013%   0.555%   0.268%
   18    6.2  0.5 -0.5   0.013%   0.001%   0.001%   0.001%   0.000%   0.000%   0.059%   0.066%   0.894%   0.014%
   19    7.2  0.5 -0.5   0.004%   0.002%   0.008%   0.001%   0.000%   0.000%   0.468%   0.161%   0.240%   0.127%
   20    8.2  0.5 -0.5   0.003%   0.004%   0.009%   0.000%   0.000%   0.000%   0.462%   0.114%   0.157%   0.265%
   21    9.2  0.5 -0.5   0.000%   0.000%   0.000%   0.001%   0.017%   0.000%   1.225%   9.414%   2.435%   0.009%
   22   10.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.017%   7.579%   1.040%   0.012%   4.294%
   23   11.2  0.5 -0.5   0.000%   0.001%   0.000%   0.000%   0.000%   0.017%   0.073%   0.007%   0.055%  12.526%
   24   12.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.112%   0.001%   0.000%   0.001%   0.003%   0.000%
   25    1.2  1.5  1.5   0.076%   0.000%   0.000%   0.006%   0.000%   0.000%   0.479%   4.547%  22.597%   0.095%
   26    2.2  1.5  1.5   0.000%   0.002%   0.024%   0.001%   0.000%   0.009%   6.889%   0.719%   0.007%   1.740%
   27    3.2  1.5  1.5   0.000%   0.002%   0.024%   0.001%   0.000%   0.009%   6.907%   0.721%   0.007%   1.726%
   28    4.2  1.5  1.5   0.015%   0.000%   0.000%   0.002%   0.000%   0.000%   0.046%   0.433%   1.608%   0.007%
   29    5.2  1.5  1.5   0.000%   0.001%   0.015%   0.001%   0.000%   0.016%   1.581%   0.165%   0.002%   0.390%
   30    6.2  1.5  1.5   0.000%   0.001%   0.015%   0.001%   0.000%   0.016%   1.576%   0.164%   0.002%   0.399%
   31    7.2  1.5  1.5   0.001%   0.000%   0.001%   0.015%   0.065%   0.000%   0.164%   1.574%   0.375%   0.001%
   32    8.2  1.5  1.5   0.002%   0.000%   0.000%   0.014%   0.064%   0.000%   0.154%   1.472%   0.474%   0.002%
   33    9.2  1.5  1.5   0.233%   0.000%   0.001%   0.017%   0.000%   0.000%   0.364%   3.458%  17.098%   0.072%
   34    1.2  1.5  0.5   0.000%   0.001%   0.008%   0.000%   0.000%   0.013%   2.236%   0.233%   0.002%   0.545%
   35    2.2  1.5  0.5   0.012%   0.000%   0.002%   0.050%   0.003%   0.000%   1.906%  18.217%   1.610%   0.007%
   36    3.2  1.5  0.5   0.044%   0.000%   0.001%   0.019%   0.003%   0.000%   0.329%   3.175%  17.931%   0.073%
   37    4.2  1.5  0.5   0.000%   0.002%   0.014%   0.000%   0.000%   0.065%   1.489%   0.155%   0.002%   0.495%
   38    5.2  1.5  0.5   0.015%   0.000%   0.000%   0.001%   0.048%   0.000%   0.036%   0.344%   1.731%   0.007%
   39    6.2  1.5  0.5   0.015%   0.000%   0.000%   0.001%   0.048%   0.000%   0.037%   0.350%   1.738%   0.007%
   40    7.2  1.5  0.5   0.000%   0.015%   0.001%   0.000%   0.000%   0.000%   0.361%   0.038%   0.007%   1.770%
   41    8.2  1.5  0.5   0.000%   0.015%   0.002%   0.000%   0.000%   0.000%   0.450%   0.047%   0.007%   1.623%
   42    9.2  1.5  0.5   0.000%   0.018%   0.226%   0.008%   0.000%   0.000%  15.544%   1.622%   0.015%   3.808%
   43    1.2  1.5 -0.5   0.001%   0.000%   0.000%   0.008%   0.013%   0.000%   0.233%   2.236%   0.545%   0.002%
   44    2.2  1.5 -0.5   0.000%   0.012%   0.050%   0.002%   0.000%   0.003%  18.217%   1.906%   0.007%   1.610%
   45    3.2  1.5 -0.5   0.000%   0.044%   0.019%   0.001%   0.000%   0.003%   3.175%   0.329%   0.073%  17.931%
   46    4.2  1.5 -0.5   0.002%   0.000%   0.000%   0.014%   0.065%   0.000%   0.155%   1.489%   0.495%   0.002%
   47    5.2  1.5 -0.5   0.000%   0.015%   0.001%   0.000%   0.000%   0.048%   0.344%   0.036%   0.007%   1.731%
   48    6.2  1.5 -0.5   0.000%   0.015%   0.001%   0.000%   0.000%   0.048%   0.350%   0.037%   0.007%   1.738%
   49    7.2  1.5 -0.5   0.015%   0.000%   0.000%   0.001%   0.000%   0.000%   0.038%   0.361%   1.770%   0.007%
   50    8.2  1.5 -0.5   0.015%   0.000%   0.000%   0.002%   0.000%   0.000%   0.047%   0.450%   1.623%   0.007%
   51    9.2  1.5 -0.5   0.018%   0.000%   0.008%   0.226%   0.000%   0.000%   1.622%  15.544%   3.808%   0.015%
   52    1.2  1.5 -1.5   0.000%   0.076%   0.006%   0.000%   0.000%   0.000%   4.547%   0.479%   0.095%  22.597%
   53    2.2  1.5 -1.5   0.002%   0.000%   0.001%   0.024%   0.009%   0.000%   0.719%   6.889%   1.740%   0.007%
   54    3.2  1.5 -1.5   0.002%   0.000%   0.001%   0.024%   0.009%   0.000%   0.721%   6.907%   1.726%   0.007%
   55    4.2  1.5 -1.5   0.000%   0.015%   0.002%   0.000%   0.000%   0.000%   0.433%   0.046%   0.007%   1.608%
   56    5.2  1.5 -1.5   0.001%   0.000%   0.001%   0.015%   0.016%   0.000%   0.165%   1.581%   0.390%   0.002%
   57    6.2  1.5 -1.5   0.001%   0.000%   0.001%   0.015%   0.016%   0.000%   0.164%   1.576%   0.399%   0.002%
   58    7.2  1.5 -1.5   0.000%   0.001%   0.015%   0.001%   0.000%   0.065%   1.574%   0.164%   0.001%   0.375%
   59    8.2  1.5 -1.5   0.000%   0.002%   0.014%   0.000%   0.000%   0.064%   1.472%   0.154%   0.002%   0.474%
   60    9.2  1.5 -1.5   0.000%   0.233%   0.017%   0.001%   0.000%   0.000%   3.458%   0.364%   0.072%  17.098%

   Nr   State  S   Sz      11       12       13       14       15       16       17       18       19       20

    1    1.2  0.5  0.5   0.044%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    2    2.2  0.5  0.5   0.046%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    3    3.2  0.5  0.5   0.001%   0.047%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    4    4.2  0.5  0.5   0.000%   0.000%   0.002%   0.212%   0.007%   0.826%   0.003%   0.100%   2.704%   4.429%
    5    5.2  0.5  0.5   0.000%   0.000%   0.186%   0.076%   0.237%   0.108%   0.016%   0.461%  12.351%  10.972%
    6    6.2  0.5  0.5   0.000%   0.000%   0.056%   0.115%   0.028%   0.170%   0.024%   0.643%   8.067%  24.058%
    7    7.2  0.5  0.5   0.000%   0.000%   0.640%   0.142%   0.172%   0.046%   0.050%   0.143%   2.334%   7.316%
    8    8.2  0.5  0.5   0.000%   0.000%   0.671%   0.027%   0.311%   0.015%   0.081%   0.086%   4.726%   4.060%
    9    9.2  0.5  0.5   0.202%  11.760%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   10   10.2  0.5  0.5  11.909%   0.215%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   11   11.2  0.5  0.5  12.054%   0.334%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   12   12.2  0.5  0.5   1.253%  43.934%   0.000%   0.000%   0.000%   0.001%   0.000%   0.001%   0.000%   0.000%
   13    1.2  0.5 -0.5   0.001%   0.044%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   14    2.2  0.5 -0.5   0.001%   0.046%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   15    3.2  0.5 -0.5   0.047%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   16    4.2  0.5 -0.5   0.000%   0.000%   0.212%   0.002%   0.826%   0.007%   0.100%   0.003%   4.429%   2.704%
   17    5.2  0.5 -0.5   0.000%   0.000%   0.076%   0.186%   0.108%   0.237%   0.461%   0.016%  10.972%  12.351%
   18    6.2  0.5 -0.5   0.000%   0.000%   0.115%   0.056%   0.170%   0.028%   0.643%   0.024%  24.058%   8.067%
   19    7.2  0.5 -0.5   0.000%   0.000%   0.142%   0.640%   0.046%   0.172%   0.143%   0.050%   7.316%   2.334%
   20    8.2  0.5 -0.5   0.000%   0.000%   0.027%   0.671%   0.015%   0.311%   0.086%   0.081%   4.060%   4.726%
   21    9.2  0.5 -0.5  11.760%   0.202%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   22   10.2  0.5 -0.5   0.215%  11.909%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   23   11.2  0.5 -0.5   0.334%  12.054%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   24   12.2  0.5 -0.5  43.934%   1.253%   0.000%   0.000%   0.001%   0.000%   0.001%   0.000%   0.000%   0.000%
   25    1.2  1.5  1.5   0.002%   0.000%  25.741%   0.158%   2.369%   0.007%   1.913%   0.072%   0.022%   0.012%
   26    2.2  1.5  1.5   0.108%   3.794%   0.017%   2.808%   0.000%   0.012%   1.396%  37.008%   0.181%   0.347%
   27    3.2  1.5  1.5   0.106%   3.717%   0.001%   0.132%   0.037%  13.145%   1.018%  27.016%   0.133%   0.256%
   28    4.2  1.5  1.5   0.001%   0.000%  10.002%   0.061%   0.781%   0.002%   0.723%   0.027%   0.483%   0.252%
   29    5.2  1.5  1.5   0.003%   0.122%   0.001%   0.117%   0.019%   6.622%   0.092%   2.448%   0.941%   1.808%
   30    6.2  1.5  1.5   0.003%   0.119%   0.007%   1.137%   0.004%   1.538%   0.243%   6.451%   1.855%   3.562%
   31    7.2  1.5  1.5   0.518%   0.015%   0.222%   0.001%   1.597%   0.004%   0.103%   0.004%   0.044%   0.023%
   32    8.2  1.5  1.5   0.514%   0.015%   0.081%   0.000%   1.752%   0.005%   0.140%   0.005%   0.047%   0.024%
   33    9.2  1.5  1.5   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   34    1.2  1.5  0.5   0.143%   5.006%   0.032%   5.159%   0.105%  37.501%   0.093%   2.442%   0.010%   0.018%
   35    2.2  1.5  0.5   1.357%   0.039%  10.519%   0.064%  19.055%   0.053%   3.823%   0.145%   0.046%   0.024%
   36    3.2  1.5  0.5   1.373%   0.039%  30.570%   0.188%   2.996%   0.008%   0.170%   0.006%   0.007%   0.003%
   37    4.2  1.5  0.5   0.013%   0.471%   0.002%   0.383%   0.004%   1.416%   0.007%   0.190%   0.026%   0.049%
   38    5.2  1.5  0.5   0.329%   0.009%   0.024%   0.000%   3.985%   0.011%   0.378%   0.014%   0.248%   0.129%
   39    6.2  1.5  0.5   0.369%   0.011%   1.442%   0.009%   2.806%   0.008%   0.107%   0.004%   0.005%   0.003%
   40    7.2  1.5  0.5   0.000%   0.000%   0.017%   2.774%   0.000%   0.020%   0.329%   8.726%   2.367%   4.544%
   41    8.2  1.5  0.5   0.000%   0.002%   0.038%   6.164%   0.006%   2.209%   0.120%   3.178%   0.517%   0.994%
   42    9.2  1.5  0.5   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   43    1.2  1.5 -0.5   5.006%   0.143%   5.159%   0.032%  37.501%   0.105%   2.442%   0.093%   0.018%   0.010%
   44    2.2  1.5 -0.5   0.039%   1.357%   0.064%  10.519%   0.053%  19.055%   0.145%   3.823%   0.024%   0.046%
   45    3.2  1.5 -0.5   0.039%   1.373%   0.188%  30.570%   0.008%   2.996%   0.006%   0.170%   0.003%   0.007%
   46    4.2  1.5 -0.5   0.471%   0.013%   0.383%   0.002%   1.416%   0.004%   0.190%   0.007%   0.049%   0.026%
   47    5.2  1.5 -0.5   0.009%   0.329%   0.000%   0.024%   0.011%   3.985%   0.014%   0.378%   0.129%   0.248%
   48    6.2  1.5 -0.5   0.011%   0.369%   0.009%   1.442%   0.008%   2.806%   0.004%   0.107%   0.003%   0.005%
   49    7.2  1.5 -0.5   0.000%   0.000%   2.774%   0.017%   0.020%   0.000%   8.726%   0.329%   4.544%   2.367%
   50    8.2  1.5 -0.5   0.002%   0.000%   6.164%   0.038%   2.209%   0.006%   3.178%   0.120%   0.994%   0.517%
   51    9.2  1.5 -0.5   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   52    1.2  1.5 -1.5   0.000%   0.002%   0.158%  25.741%   0.007%   2.369%   0.072%   1.913%   0.012%   0.022%
   53    2.2  1.5 -1.5   3.794%   0.108%   2.808%   0.017%   0.012%   0.000%  37.008%   1.396%   0.347%   0.181%
   54    3.2  1.5 -1.5   3.717%   0.106%   0.132%   0.001%  13.145%   0.037%  27.016%   1.018%   0.256%   0.133%
   55    4.2  1.5 -1.5   0.000%   0.001%   0.061%  10.002%   0.002%   0.781%   0.027%   0.723%   0.252%   0.483%
   56    5.2  1.5 -1.5   0.122%   0.003%   0.117%   0.001%   6.622%   0.019%   2.448%   0.092%   1.808%   0.941%
   57    6.2  1.5 -1.5   0.119%   0.003%   1.137%   0.007%   1.538%   0.004%   6.451%   0.243%   3.562%   1.855%
   58    7.2  1.5 -1.5   0.015%   0.518%   0.001%   0.222%   0.004%   1.597%   0.004%   0.103%   0.023%   0.044%
   59    8.2  1.5 -1.5   0.015%   0.514%   0.000%   0.081%   0.005%   1.752%   0.005%   0.140%   0.024%   0.047%
   60    9.2  1.5 -1.5   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%

   Nr   State  S   Sz      21       22       23       24       25       26       27       28       29       30

    1    1.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    2    2.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    3    3.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    4    4.2  0.5  0.5   1.318%  39.102%   0.208%   0.706%   0.000%   0.000%   0.002%   0.000%   0.000%   0.003%
    5    5.2  0.5  0.5   7.484%   1.903%   9.214%   6.582%   0.000%   0.000%   0.000%   0.000%   0.012%   0.009%
    6    6.2  0.5  0.5   0.422%   6.307%   1.811%   7.872%   0.000%   0.000%   0.000%   0.000%   0.001%   0.017%
    7    7.2  0.5  0.5   9.502%   1.743%  21.071%   6.467%   0.000%   0.000%   0.000%   0.001%   0.004%   0.001%
    8    8.2  0.5  0.5  12.895%   0.085%  25.425%   1.252%   0.000%   0.000%   0.000%   0.001%   0.010%   0.002%
    9    9.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   10   10.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   11   11.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   12   12.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   13    1.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   14    2.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   15    3.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   16    4.2  0.5 -0.5  39.102%   1.318%   0.706%   0.208%   0.000%   0.000%   0.000%   0.002%   0.003%   0.000%
   17    5.2  0.5 -0.5   1.903%   7.484%   6.582%   9.214%   0.000%   0.000%   0.000%   0.000%   0.009%   0.012%
   18    6.2  0.5 -0.5   6.307%   0.422%   7.872%   1.811%   0.000%   0.000%   0.000%   0.000%   0.017%   0.001%
   19    7.2  0.5 -0.5   1.743%   9.502%   6.467%  21.071%   0.000%   0.000%   0.001%   0.000%   0.001%   0.004%
   20    8.2  0.5 -0.5   0.085%  12.895%   1.252%  25.425%   0.000%   0.000%   0.001%   0.000%   0.002%   0.010%
   21    9.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   22   10.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   23   11.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   24   12.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   25    1.2  1.5  1.5   0.000%   0.000%   0.250%   0.003%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   26    2.2  1.5  1.5   0.000%   0.004%   0.001%   0.044%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   27    3.2  1.5  1.5   0.004%   0.115%   0.000%   0.035%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   28    4.2  1.5  1.5   0.007%   0.000%   8.268%   0.100%   2.995%   0.677%   0.223%   9.760%  14.988%   0.140%
   29    5.2  1.5  1.5   0.187%   5.098%   0.005%   0.372%   1.356%   5.964%   0.601%   0.014%   0.015%   1.653%
   30    6.2  1.5  1.5   0.061%   1.686%   0.011%   0.874%   0.350%   1.534%   0.230%   0.005%   0.014%   1.444%
   31    7.2  1.5  1.5   1.692%   0.062%   0.006%   0.000%   1.306%   0.303%   0.816%  35.434%  12.841%   0.121%
   32    8.2  1.5  1.5   1.294%   0.047%   0.004%   0.000%   9.508%   2.179%   0.735%  31.863%   7.087%   0.067%
   33    9.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   34    1.2  1.5  0.5   0.017%   0.461%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%
   35    2.2  1.5  0.5   0.120%   0.004%   0.184%   0.002%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   36    3.2  1.5  0.5   0.103%   0.004%   0.209%   0.003%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   37    4.2  1.5  0.5   0.043%   1.182%   0.001%   0.089%   6.821%  29.962%   0.142%   0.003%   0.133%  14.144%
   38    5.2  1.5  0.5   3.393%   0.124%   0.173%   0.002%   1.613%   0.370%   0.147%   6.374%  36.360%   0.340%
   39    6.2  1.5  0.5   3.056%   0.111%   0.409%   0.005%  25.832%   5.867%   0.204%   8.977%   3.661%   0.034%
   40    7.2  1.5  0.5   0.004%   0.116%   0.023%   1.961%   0.490%   2.167%   3.635%   0.083%   0.033%   3.551%
   41    8.2  1.5  0.5   0.009%   0.233%   0.076%   6.281%   0.130%   0.575%   0.734%   0.017%   0.030%   3.283%
   42    9.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   43    1.2  1.5 -0.5   0.461%   0.017%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%
   44    2.2  1.5 -0.5   0.004%   0.120%   0.002%   0.184%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   45    3.2  1.5 -0.5   0.004%   0.103%   0.003%   0.209%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   46    4.2  1.5 -0.5   1.182%   0.043%   0.089%   0.001%  29.962%   6.821%   0.003%   0.142%  14.144%   0.133%
   47    5.2  1.5 -0.5   0.124%   3.393%   0.002%   0.173%   0.370%   1.613%   6.374%   0.147%   0.340%  36.360%
   48    6.2  1.5 -0.5   0.111%   3.056%   0.005%   0.409%   5.867%  25.832%   8.977%   0.204%   0.034%   3.661%
   49    7.2  1.5 -0.5   0.116%   0.004%   1.961%   0.023%   2.167%   0.490%   0.083%   3.635%   3.551%   0.033%
   50    8.2  1.5 -0.5   0.233%   0.009%   6.281%   0.076%   0.575%   0.130%   0.017%   0.734%   3.283%   0.030%
   51    9.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   52    1.2  1.5 -1.5   0.000%   0.000%   0.003%   0.250%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   53    2.2  1.5 -1.5   0.004%   0.000%   0.044%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   54    3.2  1.5 -1.5   0.115%   0.004%   0.035%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   55    4.2  1.5 -1.5   0.000%   0.007%   0.100%   8.268%   0.677%   2.995%   9.760%   0.223%   0.140%  14.988%
   56    5.2  1.5 -1.5   5.098%   0.187%   0.372%   0.005%   5.964%   1.356%   0.014%   0.601%   1.653%   0.015%
   57    6.2  1.5 -1.5   1.686%   0.061%   0.874%   0.011%   1.534%   0.350%   0.005%   0.230%   1.444%   0.014%
   58    7.2  1.5 -1.5   0.062%   1.692%   0.000%   0.006%   0.303%   1.306%  35.434%   0.816%   0.121%  12.841%
   59    8.2  1.5 -1.5   0.047%   1.294%   0.000%   0.004%   2.179%   9.508%  31.863%   0.735%   0.067%   7.087%
   60    9.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%

   Nr   State  S   Sz      31       32       33       34       35       36       37       38       39       40

    1    1.2  0.5  0.5   0.000%   0.000%   0.000%   0.136%   0.000%   0.010%   0.006%   0.000%   0.004%   0.079%
    2    2.2  0.5  0.5   0.000%   0.000%   0.000%   0.071%   0.002%   0.073%   0.006%   0.000%   0.000%   0.003%
    3    3.2  0.5  0.5   0.000%   0.000%   0.011%   0.000%   0.132%   0.002%   0.000%   0.006%   0.063%   0.003%
    4    4.2  0.5  0.5   0.000%   0.033%   0.509%   0.006%   4.906%   0.143%   0.000%   0.000%   0.393%   0.081%
    5    5.2  0.5  0.5   0.008%   0.038%   3.086%   1.102%   0.255%   1.145%   0.000%   0.000%   2.180%   0.663%
    6    6.2  0.5  0.5   0.001%   0.055%   4.637%   0.190%   0.475%   0.280%   0.000%   0.000%   2.027%   0.536%
    7    7.2  0.5  0.5   0.006%   0.032%   1.589%   0.619%   0.287%   3.098%   0.000%   0.000%   0.155%   1.165%
    8    8.2  0.5  0.5   0.010%   0.016%   0.908%   1.317%   0.101%   3.266%   0.000%   0.000%   0.201%   1.681%
    9    9.2  0.5  0.5   0.000%   0.000%   2.350%   0.027%  27.443%   0.449%   0.013%   2.860%  10.816%   0.766%
   10   10.2  0.5  0.5   0.000%   0.000%   0.018%  14.454%   0.336%  15.453%   2.887%   0.014%   0.024%   0.202%
   11   11.2  0.5  0.5   0.000%   0.000%   0.014%  28.524%   0.016%   1.705%   2.943%   0.004%   0.936%  13.650%
   12   12.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.016%   9.448%   0.000%   0.000%
   13    1.2  0.5 -0.5   0.000%   0.000%   0.136%   0.000%   0.010%   0.000%   0.000%   0.006%   0.079%   0.004%
   14    2.2  0.5 -0.5   0.000%   0.000%   0.071%   0.000%   0.073%   0.002%   0.000%   0.006%   0.003%   0.000%
   15    3.2  0.5 -0.5   0.000%   0.000%   0.000%   0.011%   0.002%   0.132%   0.006%   0.000%   0.003%   0.063%
   16    4.2  0.5 -0.5   0.033%   0.000%   0.006%   0.509%   0.143%   4.906%   0.000%   0.000%   0.081%   0.393%
   17    5.2  0.5 -0.5   0.038%   0.008%   1.102%   3.086%   1.145%   0.255%   0.000%   0.000%   0.663%   2.180%
   18    6.2  0.5 -0.5   0.055%   0.001%   0.190%   4.637%   0.280%   0.475%   0.000%   0.000%   0.536%   2.027%
   19    7.2  0.5 -0.5   0.032%   0.006%   0.619%   1.589%   3.098%   0.287%   0.000%   0.000%   1.165%   0.155%
   20    8.2  0.5 -0.5   0.016%   0.010%   1.317%   0.908%   3.266%   0.101%   0.000%   0.000%   1.681%   0.201%
   21    9.2  0.5 -0.5   0.000%   0.000%   0.027%   2.350%   0.449%  27.443%   2.860%   0.013%   0.766%  10.816%
   22   10.2  0.5 -0.5   0.000%   0.000%  14.454%   0.018%  15.453%   0.336%   0.014%   2.887%   0.202%   0.024%
   23   11.2  0.5 -0.5   0.000%   0.000%  28.524%   0.014%   1.705%   0.016%   0.004%   2.943%  13.650%   0.936%
   24   12.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   9.448%   0.016%   0.000%   0.000%
   25    1.2  1.5  1.5   0.000%   0.000%   0.001%   2.552%   0.002%   0.211%   0.000%   0.000%   0.000%   0.000%
   26    2.2  1.5  1.5   0.000%   0.002%   0.074%   0.000%   0.843%   0.009%   0.029%  17.303%   0.003%   0.000%
   27    3.2  1.5  1.5   0.000%   0.002%   0.071%   0.000%   0.844%   0.009%   0.029%  17.322%   0.001%   0.000%
   28    4.2  1.5  1.5   0.269%   0.000%   0.000%   0.517%   0.001%   0.065%   0.008%   0.000%   0.233%   3.427%
   29    5.2  1.5  1.5   0.000%  23.694%   0.044%   0.000%   0.520%   0.006%   0.001%   0.616%   7.388%   0.551%
   30    6.2  1.5  1.5   0.000%  29.999%   0.044%   0.000%   0.521%   0.006%   0.001%   0.620%   7.204%   0.539%
   31    7.2  1.5  1.5   0.351%   0.000%   0.000%   0.045%   0.006%   0.520%   2.516%   0.004%   0.565%   7.573%
   32    8.2  1.5  1.5   0.088%   0.000%   0.000%   0.066%   0.005%   0.508%   2.507%   0.004%   0.612%   8.227%
   33    9.2  1.5  1.5   0.000%   0.000%   0.017%  30.336%   0.025%   2.543%   0.000%   0.000%   0.067%   0.984%
   34    1.2  1.5  0.5   0.000%   0.000%   0.025%   0.000%   0.281%   0.003%   0.039%  23.051%   0.001%   0.000%
   35    2.2  1.5  0.5   0.000%   0.000%   0.000%   0.383%   0.019%   1.769%   5.761%   0.010%   0.000%   0.001%
   36    3.2  1.5  0.5   0.000%   0.000%   0.001%   1.526%   0.007%   0.625%   5.740%   0.010%   0.000%   0.001%
   37    4.2  1.5  0.5   0.000%   0.332%   0.065%   0.000%   0.504%   0.005%   0.004%   2.469%   8.252%   0.614%
   38    5.2  1.5  0.5   0.006%   0.000%   0.000%   0.529%   0.000%   0.045%   1.855%   0.003%   0.282%   4.111%
   39    6.2  1.5  0.5   1.101%   0.000%   0.000%   0.524%   0.000%   0.045%   1.882%   0.003%   0.263%   3.845%
   40    7.2  1.5  0.5   0.000%  18.829%   0.524%   0.000%   0.043%   0.000%   0.000%   0.000%   3.808%   0.261%
   41    8.2  1.5  0.5   0.000%  25.129%   0.515%   0.000%   0.063%   0.001%   0.000%   0.010%   3.325%   0.226%
   42    9.2  1.5  0.5   0.000%   0.000%   2.565%   0.001%  30.043%   0.323%   0.000%   0.000%   1.866%   0.139%
   43    1.2  1.5 -0.5   0.000%   0.000%   0.000%   0.025%   0.003%   0.281%  23.051%   0.039%   0.000%   0.001%
   44    2.2  1.5 -0.5   0.000%   0.000%   0.383%   0.000%   1.769%   0.019%   0.010%   5.761%   0.001%   0.000%
   45    3.2  1.5 -0.5   0.000%   0.000%   1.526%   0.001%   0.625%   0.007%   0.010%   5.740%   0.001%   0.000%
   46    4.2  1.5 -0.5   0.332%   0.000%   0.000%   0.065%   0.005%   0.504%   2.469%   0.004%   0.614%   8.252%
   47    5.2  1.5 -0.5   0.000%   0.006%   0.529%   0.000%   0.045%   0.000%   0.003%   1.855%   4.111%   0.282%
   48    6.2  1.5 -0.5   0.000%   1.101%   0.524%   0.000%   0.045%   0.000%   0.003%   1.882%   3.845%   0.263%
   49    7.2  1.5 -0.5  18.829%   0.000%   0.000%   0.524%   0.000%   0.043%   0.000%   0.000%   0.261%   3.808%
   50    8.2  1.5 -0.5  25.129%   0.000%   0.000%   0.515%   0.001%   0.063%   0.010%   0.000%   0.226%   3.325%
   51    9.2  1.5 -0.5   0.000%   0.000%   0.001%   2.565%   0.323%  30.043%   0.000%   0.000%   0.139%   1.866%
   52    1.2  1.5 -1.5   0.000%   0.000%   2.552%   0.001%   0.211%   0.002%   0.000%   0.000%   0.000%   0.000%
   53    2.2  1.5 -1.5   0.002%   0.000%   0.000%   0.074%   0.009%   0.843%  17.303%   0.029%   0.000%   0.003%
   54    3.2  1.5 -1.5   0.002%   0.000%   0.000%   0.071%   0.009%   0.844%  17.322%   0.029%   0.000%   0.001%
   55    4.2  1.5 -1.5   0.000%   0.269%   0.517%   0.000%   0.065%   0.001%   0.000%   0.008%   3.427%   0.233%
   56    5.2  1.5 -1.5  23.694%   0.000%   0.000%   0.044%   0.006%   0.520%   0.616%   0.001%   0.551%   7.388%
   57    6.2  1.5 -1.5  29.999%   0.000%   0.000%   0.044%   0.006%   0.521%   0.620%   0.001%   0.539%   7.204%
   58    7.2  1.5 -1.5   0.000%   0.351%   0.045%   0.000%   0.520%   0.006%   0.004%   2.516%   7.573%   0.565%
   59    8.2  1.5 -1.5   0.000%   0.088%   0.066%   0.000%   0.508%   0.005%   0.004%   2.507%   8.227%   0.612%
   60    9.2  1.5 -1.5   0.000%   0.000%  30.336%   0.017%   2.543%   0.025%   0.000%   0.000%   0.984%   0.067%

   Nr   State  S   Sz      41       42       43       44       45       46       47       48       49       50

    1    1.2  0.5  0.5   0.018%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    2    2.2  0.5  0.5   0.097%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    3    3.2  0.5  0.5   0.000%   0.035%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    4    4.2  0.5  0.5   0.026%   3.206%   0.035%   0.025%   0.012%   0.326%   0.242%   9.381%   0.476%  16.089%
    5    5.2  0.5  0.5   0.109%   0.686%   2.252%   1.386%   1.620%   4.090%   0.440%   0.577%   3.798%   0.739%
    6    6.2  0.5  0.5   0.081%   1.058%   0.413%   1.888%   0.226%   6.563%   0.143%   0.989%   0.853%   1.641%
    7    7.2  0.5  0.5   1.394%   0.840%   4.113%   1.555%   0.883%   0.966%   2.166%   0.878%   9.939%   0.876%
    8    8.2  0.5  0.5   1.433%   0.245%   5.059%   0.477%   1.848%   0.717%   1.966%   0.474%  10.384%   0.394%
    9    9.2  0.5  0.5   0.045%   6.049%   0.000%   0.000%   0.000%   0.001%   0.000%   0.001%   0.000%   0.004%
   10   10.2  0.5  0.5  17.229%   0.138%   0.000%   0.000%   0.006%   0.000%   0.001%   0.000%   0.005%   0.000%
   11   11.2  0.5  0.5   2.890%   0.033%   0.000%   0.000%   0.003%   0.000%   0.000%   0.000%   0.001%   0.000%
   12   12.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.001%
   13    1.2  0.5 -0.5   0.000%   0.018%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   14    2.2  0.5 -0.5   0.001%   0.097%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   15    3.2  0.5 -0.5   0.035%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   16    4.2  0.5 -0.5   3.206%   0.026%   0.025%   0.035%   0.326%   0.012%   9.381%   0.242%  16.089%   0.476%
   17    5.2  0.5 -0.5   0.686%   0.109%   1.386%   2.252%   4.090%   1.620%   0.577%   0.440%   0.739%   3.798%
   18    6.2  0.5 -0.5   1.058%   0.081%   1.888%   0.413%   6.563%   0.226%   0.989%   0.143%   1.641%   0.853%
   19    7.2  0.5 -0.5   0.840%   1.394%   1.555%   4.113%   0.966%   0.883%   0.878%   2.166%   0.876%   9.939%
   20    8.2  0.5 -0.5   0.245%   1.433%   0.477%   5.059%   0.717%   1.848%   0.474%   1.966%   0.394%  10.384%
   21    9.2  0.5 -0.5   6.049%   0.045%   0.000%   0.000%   0.001%   0.000%   0.001%   0.000%   0.004%   0.000%
   22   10.2  0.5 -0.5   0.138%  17.229%   0.000%   0.000%   0.000%   0.006%   0.000%   0.001%   0.000%   0.005%
   23   11.2  0.5 -0.5   0.033%   2.890%   0.000%   0.000%   0.000%   0.003%   0.000%   0.000%   0.000%   0.001%
   24   12.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.001%   0.000%
   25    1.2  1.5  1.5   0.000%   0.000%   8.217%   0.019%   0.712%   0.000%   0.529%   0.020%   0.977%   0.013%
   26    2.2  1.5  1.5   0.000%   0.001%   0.004%   1.691%   0.000%   9.411%   0.073%   1.973%   0.043%   3.909%
   27    3.2  1.5  1.5   0.000%   0.004%   0.004%   1.606%   0.000%   2.368%   0.330%   8.813%   0.043%   3.891%
   28    4.2  1.5  1.5   8.896%   0.094%  25.814%   0.058%   1.895%   0.000%   1.993%   0.074%   0.040%   0.001%
   29    5.2  1.5  1.5   0.045%   4.019%   0.004%   1.625%   0.000%   0.003%   0.816%  21.761%   0.004%   0.361%
   30    6.2  1.5  1.5   0.050%   4.434%   0.004%   1.872%   0.000%  22.031%   0.001%   0.026%   0.004%   0.355%
   31    7.2  1.5  1.5   4.178%   0.047%   0.001%   0.000%   2.380%   0.000%   2.462%   0.093%   0.327%   0.004%
   32    8.2  1.5  1.5   3.495%   0.040%   0.073%   0.000%   2.647%   0.000%   2.210%   0.083%   0.313%   0.003%
   33    9.2  1.5  1.5   1.969%   0.021%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   2.386%   0.031%
   34    1.2  1.5  0.5   0.000%   0.000%   0.000%   0.003%   0.000%   6.881%   0.273%   7.243%   0.014%   1.245%
   35    2.2  1.5  0.5   0.005%   0.000%   6.016%   0.014%   4.172%   0.000%   0.449%   0.017%   8.284%   0.094%
   36    3.2  1.5  0.5   0.000%   0.000%   6.304%   0.014%   0.289%   0.000%   3.984%   0.150%   2.997%   0.031%
   37    4.2  1.5  0.5   0.040%   3.497%   0.000%   0.108%   0.000%   2.749%   0.081%   2.157%   0.003%   0.284%
   38    5.2  1.5  0.5   8.015%   0.084%   0.624%   0.001%   5.984%   0.000%   4.393%   0.166%   0.041%   0.001%
   39    6.2  1.5  0.5   7.931%   0.084%   0.778%   0.002%   4.211%   0.000%   6.301%   0.237%   0.017%   0.000%
   40    7.2  1.5  0.5   0.078%   7.434%   0.008%   3.582%   0.001%  14.566%   0.458%  12.281%   0.000%   0.028%
   41    8.2  1.5  0.5   0.093%   8.766%   0.055%  24.298%   0.000%   2.438%   0.119%   3.175%   0.000%   0.037%
   42    9.2  1.5  0.5   0.012%   1.056%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.316%  28.706%
   43    1.2  1.5 -0.5   0.000%   0.000%   0.003%   0.000%   6.881%   0.000%   7.243%   0.273%   1.245%   0.014%
   44    2.2  1.5 -0.5   0.000%   0.005%   0.014%   6.016%   0.000%   4.172%   0.017%   0.449%   0.094%   8.284%
   45    3.2  1.5 -0.5   0.000%   0.000%   0.014%   6.304%   0.000%   0.289%   0.150%   3.984%   0.031%   2.997%
   46    4.2  1.5 -0.5   3.497%   0.040%   0.108%   0.000%   2.749%   0.000%   2.157%   0.081%   0.284%   0.003%
   47    5.2  1.5 -0.5   0.084%   8.015%   0.001%   0.624%   0.000%   5.984%   0.166%   4.393%   0.001%   0.041%
   48    6.2  1.5 -0.5   0.084%   7.931%   0.002%   0.778%   0.000%   4.211%   0.237%   6.301%   0.000%   0.017%
   49    7.2  1.5 -0.5   7.434%   0.078%   3.582%   0.008%  14.566%   0.001%  12.281%   0.458%   0.028%   0.000%
   50    8.2  1.5 -0.5   8.766%   0.093%  24.298%   0.055%   2.438%   0.000%   3.175%   0.119%   0.037%   0.000%
   51    9.2  1.5 -0.5   1.056%   0.012%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%  28.706%   0.316%
   52    1.2  1.5 -1.5   0.000%   0.000%   0.019%   8.217%   0.000%   0.712%   0.020%   0.529%   0.013%   0.977%
   53    2.2  1.5 -1.5   0.001%   0.000%   1.691%   0.004%   9.411%   0.000%   1.973%   0.073%   3.909%   0.043%
   54    3.2  1.5 -1.5   0.004%   0.000%   1.606%   0.004%   2.368%   0.000%   8.813%   0.330%   3.891%   0.043%
   55    4.2  1.5 -1.5   0.094%   8.896%   0.058%  25.814%   0.000%   1.895%   0.074%   1.993%   0.001%   0.040%
   56    5.2  1.5 -1.5   4.019%   0.045%   1.625%   0.004%   0.003%   0.000%  21.761%   0.816%   0.361%   0.004%
   57    6.2  1.5 -1.5   4.434%   0.050%   1.872%   0.004%  22.031%   0.000%   0.026%   0.001%   0.355%   0.004%
   58    7.2  1.5 -1.5   0.047%   4.178%   0.000%   0.001%   0.000%   2.380%   0.093%   2.462%   0.004%   0.327%
   59    8.2  1.5 -1.5   0.040%   3.495%   0.000%   0.073%   0.000%   2.647%   0.083%   2.210%   0.003%   0.313%
   60    9.2  1.5 -1.5   0.021%   1.969%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.031%   2.386%

   Nr   State  S   Sz      51       52       53       54       55       56       57       58       59       60

    1    1.2  0.5  0.5   0.000%   0.000%   0.030%   0.000%   0.093%   0.000%   0.001%   0.000%   0.000%   0.000%
    2    2.2  0.5  0.5   0.000%   0.000%   0.030%   0.000%   0.092%   0.000%   0.001%   0.000%   0.000%   0.000%
    3    3.2  0.5  0.5   0.000%   0.000%   0.000%   0.030%   0.000%   0.092%   0.000%   0.000%   0.001%   0.000%
    4    4.2  0.5  0.5   1.695%   0.021%   0.000%   0.000%   0.000%   0.000%   0.003%   0.595%   6.185%   4.931%
    5    5.2  0.5  0.5   9.784%   3.699%   0.000%   0.000%   0.000%   0.000%   2.237%   6.991%   0.532%   1.938%
    6    6.2  0.5  0.5  15.031%   0.569%   0.000%   0.001%   0.000%   0.000%   0.997%   9.282%   0.338%   1.087%
    7    7.2  0.5  0.5   5.158%   1.946%   0.000%   0.000%   0.000%   0.000%   1.195%   3.219%   4.405%   2.870%
    8    8.2  0.5  0.5   3.047%   4.108%   0.000%   0.000%   0.000%   0.000%   3.188%   1.555%   2.880%   4.067%
    9    9.2  0.5  0.5   0.000%   0.000%   0.042%  12.157%   0.020%   5.961%   0.017%   0.754%   3.050%   2.109%
   10   10.2  0.5  0.5   0.000%   0.001%  12.207%   0.048%   5.977%   0.023%   2.283%   0.046%   1.478%   2.103%
   11   11.2  0.5  0.5   0.000%   0.006%  12.285%   0.018%   6.002%   0.010%   5.659%   0.094%   0.057%   0.084%
   12   12.2  0.5  0.5   0.001%   0.000%   0.055%  29.822%   0.032%  15.321%   0.000%   0.000%   0.000%   0.000%
   13    1.2  0.5 -0.5   0.000%   0.000%   0.000%   0.030%   0.000%   0.093%   0.000%   0.001%   0.000%   0.000%
   14    2.2  0.5 -0.5   0.000%   0.000%   0.000%   0.030%   0.000%   0.092%   0.000%   0.001%   0.000%   0.000%
   15    3.2  0.5 -0.5   0.000%   0.000%   0.030%   0.000%   0.092%   0.000%   0.000%   0.000%   0.000%   0.001%
   16    4.2  0.5 -0.5   0.021%   1.695%   0.000%   0.000%   0.000%   0.000%   0.595%   0.003%   4.931%   6.185%
   17    5.2  0.5 -0.5   3.699%   9.784%   0.000%   0.000%   0.000%   0.000%   6.991%   2.237%   1.938%   0.532%
   18    6.2  0.5 -0.5   0.569%  15.031%   0.001%   0.000%   0.000%   0.000%   9.282%   0.997%   1.087%   0.338%
   19    7.2  0.5 -0.5   1.946%   5.158%   0.000%   0.000%   0.000%   0.000%   3.219%   1.195%   2.870%   4.405%
   20    8.2  0.5 -0.5   4.108%   3.047%   0.000%   0.000%   0.000%   0.000%   1.555%   3.188%   4.067%   2.880%
   21    9.2  0.5 -0.5   0.000%   0.000%  12.157%   0.042%   5.961%   0.020%   0.754%   0.017%   2.109%   3.050%
   22   10.2  0.5 -0.5   0.001%   0.000%   0.048%  12.207%   0.023%   5.977%   0.046%   2.283%   2.103%   1.478%
   23   11.2  0.5 -0.5   0.006%   0.000%   0.018%  12.285%   0.010%   6.002%   0.094%   5.659%   0.084%   0.057%
   24   12.2  0.5 -0.5   0.000%   0.001%  29.822%   0.055%  15.321%   0.032%   0.000%   0.000%   0.000%   0.000%
   25    1.2  1.5  1.5   0.007%  11.998%   0.000%   0.000%   0.000%   0.000%  14.023%   0.240%   0.781%   1.349%
   26    2.2  1.5  1.5   0.302%   0.000%   0.002%   1.139%   0.005%   2.590%   0.012%   0.701%   2.932%   1.835%
   27    3.2  1.5  1.5   0.361%   0.000%   0.002%   1.110%   0.005%   2.591%   0.012%   0.699%   2.933%   1.836%
   28    4.2  1.5  1.5   0.000%   0.308%   0.019%   0.000%   0.040%   0.000%   3.782%   0.065%   0.296%   0.506%
   29    5.2  1.5  1.5   0.018%   0.000%   0.003%   1.467%   0.006%   2.777%   0.010%   0.594%   2.497%   1.563%
   30    6.2  1.5  1.5   0.036%   0.000%   0.003%   1.501%   0.006%   2.776%   0.011%   0.598%   2.495%   1.561%
   31    7.2  1.5  1.5   0.000%   0.033%   5.731%   0.011%  11.189%   0.024%   0.590%   0.010%   1.552%   2.480%
   32    8.2  1.5  1.5   0.000%   0.045%   5.713%   0.011%  11.149%   0.023%   0.784%   0.014%   1.476%   2.354%
   33    9.2  1.5  1.5   0.017%  29.062%   0.000%   0.000%   0.000%   0.000%   9.666%   0.165%   0.538%   0.929%
   34    1.2  1.5  0.5   0.111%   0.000%   0.003%   1.507%   0.007%   3.470%   0.004%   0.229%   0.975%   0.610%
   35    2.2  1.5  0.5   0.001%   1.750%   0.405%   0.001%   0.865%   0.002%   1.438%   0.025%   4.289%   6.989%
   36    3.2  1.5  0.5   0.004%   7.039%   0.412%   0.001%   0.872%   0.002%   9.759%   0.168%   1.107%   1.701%
   37    4.2  1.5  0.5   0.034%   0.000%   0.011%   5.699%   0.023%  11.114%   0.014%   0.791%   2.363%   1.481%
   38    5.2  1.5  0.5   0.000%   0.327%   4.257%   0.008%   8.373%   0.018%   3.995%   0.068%   0.222%   0.383%
   39    6.2  1.5  0.5   0.000%   0.357%   4.233%   0.008%   8.392%   0.018%   3.979%   0.068%   0.221%   0.382%
   40    7.2  1.5  0.5   0.397%   0.000%   0.000%   0.000%   0.000%   0.000%   0.068%   3.993%   0.382%   0.221%
   41    8.2  1.5  0.5   0.305%   0.000%   0.000%   0.020%   0.000%   0.041%   0.065%   3.777%   0.505%   0.295%
   42    9.2  1.5  0.5   2.416%   0.002%   0.000%   0.001%   0.000%   0.000%   0.025%   1.441%   6.055%   3.789%
   43    1.2  1.5 -0.5   0.000%   0.111%   1.507%   0.003%   3.470%   0.007%   0.229%   0.004%   0.610%   0.975%
   44    2.2  1.5 -0.5   1.750%   0.001%   0.001%   0.405%   0.002%   0.865%   0.025%   1.438%   6.989%   4.289%
   45    3.2  1.5 -0.5   7.039%   0.004%   0.001%   0.412%   0.002%   0.872%   0.168%   9.759%   1.701%   1.107%
   46    4.2  1.5 -0.5   0.000%   0.034%   5.699%   0.011%  11.114%   0.023%   0.791%   0.014%   1.481%   2.363%
   47    5.2  1.5 -0.5   0.327%   0.000%   0.008%   4.257%   0.018%   8.373%   0.068%   3.995%   0.383%   0.222%
   48    6.2  1.5 -0.5   0.357%   0.000%   0.008%   4.233%   0.018%   8.392%   0.068%   3.979%   0.382%   0.221%
   49    7.2  1.5 -0.5   0.000%   0.397%   0.000%   0.000%   0.000%   0.000%   3.993%   0.068%   0.221%   0.382%
   50    8.2  1.5 -0.5   0.000%   0.305%   0.020%   0.000%   0.041%   0.000%   3.777%   0.065%   0.295%   0.505%
   51    9.2  1.5 -0.5   0.002%   2.416%   0.001%   0.000%   0.000%   0.000%   1.441%   0.025%   3.789%   6.055%
   52    1.2  1.5 -1.5  11.998%   0.007%   0.000%   0.000%   0.000%   0.000%   0.240%  14.023%   1.349%   0.781%
   53    2.2  1.5 -1.5   0.000%   0.302%   1.139%   0.002%   2.590%   0.005%   0.701%   0.012%   1.835%   2.932%
   54    3.2  1.5 -1.5   0.000%   0.361%   1.110%   0.002%   2.591%   0.005%   0.699%   0.012%   1.836%   2.933%
   55    4.2  1.5 -1.5   0.308%   0.000%   0.000%   0.019%   0.000%   0.040%   0.065%   3.782%   0.506%   0.296%
   56    5.2  1.5 -1.5   0.000%   0.018%   1.467%   0.003%   2.777%   0.006%   0.594%   0.010%   1.563%   2.497%
   57    6.2  1.5 -1.5   0.000%   0.036%   1.501%   0.003%   2.776%   0.006%   0.598%   0.011%   1.561%   2.495%
   58    7.2  1.5 -1.5   0.033%   0.000%   0.011%   5.731%   0.024%  11.189%   0.010%   0.590%   2.480%   1.552%
   59    8.2  1.5 -1.5   0.045%   0.000%   0.011%   5.713%   0.023%  11.149%   0.014%   0.784%   2.354%   1.476%
   60    9.2  1.5 -1.5  29.062%   0.017%   0.000%   0.000%   0.000%   0.000%   0.165%   9.666%   0.929%   0.538%


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

              2       7     1317.13       700     1000      520     2100     2140     5203     5303   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *     81742.95  75336.78   1906.14   4495.94      2.93      0.09      0.88
 REAL TIME  *     82659.76 SEC
 DISK USED  *         1.32 GB (local),       10.64 GB (total)
 SF USED    *         8.55 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/USERDEF energy=   -261.790279304160

              CI              CI           MULTI         RHF-SCF
   -261.79584276   -261.79591593   -261.09342849   -261.43869824
 **********************************************************************************************************************************
 Molpro calculation terminated with 1 warning(s)
