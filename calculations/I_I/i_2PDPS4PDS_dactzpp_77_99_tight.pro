
 Working directory              : /wrk/irikura/molpro.GjrpmlWiVa/
 Global scratch directory       : /wrk/irikura/molpro.GjrpmlWiVa/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.GjrpmlWiVa/

 id        : nistki

 Nodes            nprocs
 pn112695.nist.gov    8
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1040), CPU time= 0.01 sec
 ***,I SO-CI
                                                                                 ! active space (7/7)
                                                                                 ! additional diffuse spdf functions
 memory,4000,M;
 
 gprint,orbitals,civector;
                                                       !gthresh,energy=1.d-10,coeff=1.d-8,twoint=1.d-12,civec=1.d-7,gradient=1.d-8;
 gthresh,twoint=1.d-13,energy=1.d-9,gradient=1.e-6
 
 symmetry,xyz
 geometry={I};
 
 basis={
 ecp,i,ECP28MDF;
 spdfg,i,aug-cc-pwCVTZ-PP;C; spdf,1,even,nprim=1,ratio=3.0;
 }
 
 {rhf;wf,charge=-1}
 
 NDOUB=12
 NQUAR=9
 
 {multi
     occ,7,9
     closed,6,3
     wf,charge=0,sym=2,spin=1;state,NDOUB; weight,3[99],(NDOUB-3)[1]
     wf,charge=0,sym=2,spin=3;state,NQUAR; weight,all,1
                                                                                 !accuracy,gradient=1.d-6,energy=1.d-9
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
 LABEL *   I SO-CI                                                                                                                                                       
  (32 PROC) 64 bit mpp version                                                           DATE: 22-Oct-24          TIME: 14:47:16  
 **********************************************************************************************************************************

 SHA1:             3c61bfe44d37c8635c785372c339f5cbdd4e4b59
 **********************************************************************************************************************************

 Memory per process:      4000 MW
 Total memory per node:  32000 MW

 GA preallocation disabled
 GA check disabled

 Variable memory set to 4000.0 MW



 THRESHOLDS:

 ZERO    =  1.00D-12  ONEINT  =  1.00D-12  TWOINT  =  1.00D-13  PREFAC  =  1.00D-14  XXXXXX  =  1.00D-09  EORDER  =  1.00D-04
 ENERGY  =  1.00D-09  ETEST   =  0.00D+00  EDENS   =  0.00D+00  THRDEDEF=  1.00D-06  GRADIENT=  1.00D-06  STEP    =  1.00D-03
 ORBITAL =  1.00D-05  CIVEC   =  1.00D-05  COEFF   =  1.00D-04  PRINTCI =  5.00D-02  PUNCHCI =  9.90D+01  OPTGRAD =  3.00D-04
 OPTENERG=  1.00D-06  OPTSTEP =  3.00D-04  THRGRAD =  1.00D-10  COMPRESS=  1.00D-11  VARMIN  =  1.00D-07  VARMAX  =  1.00D-03
 THRDOUB =  0.00D+00  THRDIV  =  1.00D-05  THRRED  =  1.00D-07  THRPSP  =  1.00D+00  THRDC   =  1.00D-10  THRCS   =  1.00D-10
 THRNRM  =  1.00D-08  THREQ   =  0.00D+00  THRDE   =  1.00D+00  THRREF  =  1.00D-05  SPARFAC =  1.00D+00  THRDLP  =  1.00D-07
 THRDIA  =  1.00D-10  THRDLS  =  1.00D-07  THRGPS  =  0.00D+00  THRKEX  =  0.00D+00  THRDIS  =  2.00D-01  THRVAR  =  1.00D-10
 THRLOC  =  1.00D-06  THRGAP  =  1.00D-06  THRLOCT = -1.00D+00  THRGAPT = -1.00D+00  THRORB  =  1.00D-06  THRMLTP =  0.00D+00
 THRCPQCI=  1.00D-10  KEXTA   =  0.00D+00  THRCOARS=  0.00D+00  SYMTOL  =  1.00D-06  GRADTOL =  1.00D-06  THROVL  =  1.00D-08
 THRORTH =  1.00D-08  THRDLOVL= -1.00D+00  GRID    =  1.00D-06  GRIDMAX =  1.00D-03  DTMAX   =  0.00D+00  THROCCDE=  1.00D-01
 THROCCDE=  1.00D-01  THRPRINT=  2.50D-01

 ZSYMEL=XYZ

 SETTING BASIS          =    USERDEF


 Recomputing integrals since basis changed


 Using spherical harmonics

 Library entry I    ECP ECP28MDF                 selected for group  1
 Library entry I      S AUG-CC-PWCVTZ-PP     selected for orbital group  1
 Even tempered I  S diffuse               selected for group 1    nprim= 1    centre=  0.014    ratio= 3.000    dratio= 1.000
 Library entry I      P AUG-CC-PWCVTZ-PP     selected for orbital group  1
 Even tempered I  P diffuse               selected for group 1    nprim= 1    centre=  0.012    ratio= 3.000    dratio= 1.000
 Library entry I      D AUG-CC-PWCVTZ-PP     selected for orbital group  1
 Even tempered I  D diffuse               selected for group 1    nprim= 1    centre=  0.026    ratio= 3.000    dratio= 1.000
 Library entry I      F AUG-CC-PWCVTZ-PP     selected for orbital group  1
 Even tempered I  F diffuse               selected for group 1    nprim= 1    centre=  0.062    ratio= 3.000    dratio= 1.000
 Library entry I      G AUG-CC-PWCVTZ-PP     selected for orbital group  1


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

   1  I      25.00    0.000000000    0.000000000    0.000000000

 NUCLEAR CHARGE:                   25
 NUMBER OF PRIMITIVE AOS:         204
 NUMBER OF SYMMETRY AOS:          170
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

         1 0.169E-04 0.125E-02 0.515E-02 0.515E-02 0.515E-02 0.515E-02 0.515E-02 0.549E-02
         2 0.573E-02 0.573E-02 0.573E-02 0.118E-01 0.118E-01 0.118E-01 0.908E-01 0.908E-01


 Contracted 2-electron integrals neglected if value below      1.0D-14
 AO integral compression algorithm  1   Integral accuracy      1.0D-14

     38.273 MB (compressed) written to integral file ( 22.6%)

     Node minimum: 2.359 MB, node maximum: 8.389 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:    1272449.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:    1272449      RECORD LENGTH: 524288

 Memory used in sort:       1.83 MW

 SORT1 READ    21109381. AND WROTE      252985. INTEGRALS IN      1 RECORDS. CPU TIME:     0.09 SEC, REAL TIME:     0.09 SEC
 SORT2 READ     2032599. AND WROTE    10190541. INTEGRALS IN    176 RECORDS. CPU TIME:     0.03 SEC, REAL TIME:     0.04 SEC

 Node minimum:     1271881.  Node maximum:     1277544. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      19       28.94       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         1.28      1.06
 REAL TIME  *         3.16 SEC
 DISK USED  *        29.28 MB (local),      285.76 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 Program * Restricted Hartree-Fock

 Orbital guess generated from atomic densities.

 Initial occupancy:   7   6

 NELEC=   26   SYM=1   MS2= 0   THRE=1.0D-11   THRD=1.0D-06   THRG=1.0D-06  HFMA2=F  DIIS_START=2   DIIS_MAX=10   DIIS_INCORE=F

 Level shifts:    0.00 (CLOSED)    0.00 (OPEN)    0.30 (GAP_MIN)

 ITER           ETOT              DE          GRAD        DDIFF     DIIS  NEXP   TIME(IT)  TIME(TOT)  DIAG
   1     -294.71863326    -294.71863326     0.00D+00     0.13D+00     0     0       0.00      0.01    start
   2     -294.74411714      -0.02548388     0.46D-02     0.13D-01     1     0       0.01      0.02    diag
   3     -294.74616668      -0.00204954     0.26D-02     0.21D-02     2     0       0.01      0.03    diag
   4     -294.74648011      -0.00031343     0.44D-03     0.85D-03     3     0       0.00      0.03    diag
   5     -294.74653920      -0.00005909     0.14D-03     0.53D-03     4     0       0.01      0.04    diag
   6     -294.74654357      -0.00000437     0.33D-04     0.18D-03     5     0       0.01      0.05    diag
   7     -294.74654371      -0.00000014     0.45D-05     0.24D-04     6     0       0.00      0.05    diag
   8     -294.74654372      -0.00000001     0.98D-06     0.95D-05     7     0       0.01      0.06    fixocc
   9     -294.74654372      -0.00000000     0.70D-07     0.30D-06     8     0       0.01      0.07    diag
  10     -294.74654372      -0.00000000     0.13D-07     0.39D-07     9     0       0.00      0.07    diag/orth
  11     -294.74654372       0.00000000     0.20D-08     0.48D-08     0     0       0.01      0.08    diag

 Final occupancy:   7   6

 !RHF STATE 1.1 Energy               -294.746543715343
  RHF One-electron energy            -520.925436316234
  RHF Two-electron energy             226.178892600891
  RHF Kinetic energy                  110.887383049695
  RHF Nuclear energy                    0.000000000000
  RHF Virial quotient                  -2.658071059205

 !RHF STATE 1.1 Dipole moment           0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 ELECTRON ORBITALS
 =================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -7.45092     1  1  s    1.00263
    2.1     2.00000    -2.00367     1  1  d2-  0.96748
    3.1     2.00000    -2.00367     1  1  d1+  0.96462
    4.1     2.00000    -2.00367     1  1  d2+  0.68856    1  1  d1- -0.66662
    5.1     2.00000    -2.00367     1  1  d1+  0.25312    1  1  d2+  0.64593    1  1  d1-  0.69855
    6.1     2.00000    -2.00367     1  1  d0   0.96926
    7.1     2.00000    -0.60771     1  2  s    0.97222
    1.2     2.00000    -5.27630     1  1  px   1.00022
    2.2     2.00000    -5.27630     1  1  py   0.84148    1  1  pz   0.54069
    3.2     2.00000    -5.27630     1  1  py  -0.54069    1  1  pz   0.84148
    4.2     2.00000    -0.12598     1  2  px   0.87696
    5.2     2.00000    -0.12598     1  2  py   0.60304    1  2  pz   0.63671
    6.2     2.00000    -0.12598     1  2  py   0.63671    1  2  pz  -0.60304


 HOMO      6.2    -0.125977 =      -3.4280eV
 LUMO      7.2     0.121193 =       3.2978eV
 LUMO-HOMO         0.247170 =       6.7258eV

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
 CPU TIMES  *         1.44      0.16      1.06
 REAL TIME  *         3.81 SEC
 DISK USED  *        29.95 MB (local),      291.11 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING NDOUB          =        12.00000000                                  
 SETTING NQUAR          =         9.00000000                                  

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of closed-shell orbitals:   9 (    6    3)
 Number of active  orbitals:        7 (    1    6)
 Number of external orbitals:      96 (   46   50)

 State symmetry 1

 Number of active electrons:   7    Spin symmetry=Doublet   Space symmetry=2
 Number of states:            12
 Number of CSFs:             420   (600 determinants, 1225 intermediate states)

 State symmetry 2

 Number of active electrons:   7    Spin symmetry=Quartet   Space symmetry=2
 Number of states:             9
 Number of CSFs:             168   (180 determinants, 441 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  
 *** IN SYMMETRY 1 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.306D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.334D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.606D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.610D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.247D+00 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 3 4 5 6 2 1 1 6 4   3 5 2 1 2 6 3 4 5 1   2 3 6 4 5 1 2 3 5 4   6 3 6 4 2 51311 915
                                        8141210 7 1 6 3 2 5   4 1 1
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.391D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.391D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.486D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.486D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.426D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.426D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  9 SYMMETRY CONTAMINATION OF 0.239D-03 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 2 3 1 3 2 3 2 1 3   1 2 810 7 9 6 5 4 2   3 1 810 6 5 4 7 9 8  10 9 7 5 4 6 3 2 1 6
                                       10 7 8 9 5 5 2 3 1 6   4 7 810 9 4 2 3 1

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-05 (gradient)  0.10E-08 (energy)

 Weight factors for state symmetry  1:    0.31429   0.31429   0.31429   0.00317   0.00317   0.00317   0.00317   0.00317
                                          0.00317   0.00317   0.00317   0.00317
 Weight factors for state symmetry  2:    0.00317   0.00317   0.00317   0.00317   0.00317   0.00317   0.00317   0.00317
                                          0.00317
 
 Number of orbital rotations:  796  ( 24 closed/active, 426 closed/virtual, 0 active/active, 346 active/virtual )
 Total number of variables:    9616
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1   10   23    0   -294.60159444    -294.65404030   -0.05244586    0.24552580 0.00182819 0.00693769  0.11E+01      1.30
   2   10   31    0   -294.63454065    -294.64213675   -0.00759610    0.20288162 0.00068828 0.00177223  0.10E+01      3.16
   3    7   23    0   -294.64204483    -294.64205130   -0.00000647    0.00252703 0.00000080 0.00000145  0.25E-01      4.75
   4   10   28    0   -294.64205130    -294.64205130   -0.00000000    0.00000163 0.00000000 0.00000001  0.46E-04      6.59
   5    2    5    0   -294.64205130    -294.64205130    0.00000000    0.00000000 0.00000000 0.00000001  0.30E-07      7.06
   6    2    5    0   -294.64205130    -294.64205130    0.00000000    0.00000000 0.00000000 0.00000000  0.19E-07      7.49

 CONVERGENCE REACHED!  Final gradient:    0.00000000 ( 0.41E-08)
                       Final energy:   -294.64205130
 
 Results for state 1.2 Doublet
 =============================
 !MCSCF STATE 1.2 Doublet Energy              -294.662518618994
 Nuclear energy                                  0.00000000
 Kinetic energy                                110.78294245
 One electron energy                          -513.49600640
 Two electron energy                           218.83348778
 Virial ratio                                    3.65981849
 
 !MCSCF STATE 1.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.2 Doublet
 =============================
 !MCSCF STATE 2.2 Doublet Energy              -294.662518618987
 Nuclear energy                                  0.00000000
 Kinetic energy                                110.78294245
 One electron energy                          -513.49600640
 Two electron energy                           218.83348778
 Virial ratio                                    3.65981849
 
 !MCSCF STATE 2.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.2 Doublet
 =============================
 !MCSCF STATE 3.2 Doublet Energy              -294.662518618942
 Nuclear energy                                  0.00000000
 Kinetic energy                                110.78294245
 One electron energy                          -513.49600640
 Two electron energy                           218.83348778
 Virial ratio                                    3.65981849
 
 !MCSCF STATE 3.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.2 Doublet
 =============================
 !MCSCF STATE 4.2 Doublet Energy              -294.301439175237
 Nuclear energy                                  0.00000000
 Kinetic energy                                110.68125621
 One electron energy                          -509.90574891
 Two electron energy                           215.60430973
 Virial ratio                                    3.65899981
 
 !MCSCF STATE 4.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.2 Doublet
 =============================
 !MCSCF STATE 5.2 Doublet Energy              -294.301439174295
 Nuclear energy                                  0.00000000
 Kinetic energy                                110.68125621
 One electron energy                          -509.90574890
 Two electron energy                           215.60430973
 Virial ratio                                    3.65899981
 
 !MCSCF STATE 5.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.2 Doublet
 =============================
 !MCSCF STATE 6.2 Doublet Energy              -294.301439174133
 Nuclear energy                                  0.00000000
 Kinetic energy                                110.68125621
 One electron energy                          -509.90574890
 Two electron energy                           215.60430973
 Virial ratio                                    3.65899981
 
 !MCSCF STATE 6.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.2 Doublet
 =============================
 !MCSCF STATE 7.2 Doublet Energy              -294.295433550793
 Nuclear energy                                  0.00000000
 Kinetic energy                                110.77684699
 One electron energy                          -510.21082897
 Two electron energy                           215.91539542
 Virial ratio                                    3.65665111
 
 !MCSCF STATE 7.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.2 Doublet
 =============================
 !MCSCF STATE 8.2 Doublet Energy              -294.295433550776
 Nuclear energy                                  0.00000000
 Kinetic energy                                110.77684699
 One electron energy                          -510.21082897
 Two electron energy                           215.91539542
 Virial ratio                                    3.65665111
 
 !MCSCF STATE 8.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 9.2 Doublet
 =============================
 !MCSCF STATE 9.2 Doublet Energy              -294.295433548338
 Nuclear energy                                  0.00000000
 Kinetic energy                                110.77684700
 One electron energy                          -510.21082901
 Two electron energy                           215.91539546
 Virial ratio                                    3.65665111
 
 !MCSCF STATE 9.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 10.2 Doublet
 ==============================
 !MCSCF STATE 10.2 Doublet Energy             -294.295433547918
 Nuclear energy                                  0.00000000
 Kinetic energy                                110.77684700
 One electron energy                          -510.21082902
 Two electron energy                           215.91539547
 Virial ratio                                    3.65665111
 
 !MCSCF STATE 10.2 Doublet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 11.2 Doublet
 ==============================
 !MCSCF STATE 11.2 Doublet Energy             -294.295433547229
 Nuclear energy                                  0.00000000
 Kinetic energy                                110.77684700
 One electron energy                          -510.21082903
 Two electron energy                           215.91539548
 Virial ratio                                    3.65665111
 
 !MCSCF STATE 11.2 Doublet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 12.2 Doublet
 ==============================
 !MCSCF STATE 12.2 Doublet Energy             -294.282589412803
 Nuclear energy                                  0.00000000
 Kinetic energy                                110.76370987
 One electron energy                          -510.17238400
 Two electron energy                           215.88979459
 Virial ratio                                    3.65685024
 
 !MCSCF STATE 12.2 Doublet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.2 Quartet
 =============================
 !MCSCF STATE 1.2 Quartet Energy              -294.327611143662
 Nuclear energy                                  0.00000000
 Kinetic energy                                110.68156227
 One electron energy                          -509.90209739
 Two electron energy                           215.57448625
 Virial ratio                                    3.65922892
 
 !MCSCF STATE 1.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.2 Quartet
 =============================
 !MCSCF STATE 2.2 Quartet Energy              -294.327611141677
 Nuclear energy                                  0.00000000
 Kinetic energy                                110.68156228
 One electron energy                          -509.90209742
 Two electron energy                           215.57448628
 Virial ratio                                    3.65922892
 
 !MCSCF STATE 2.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.2 Quartet
 =============================
 !MCSCF STATE 3.2 Quartet Energy              -294.327611141336
 Nuclear energy                                  0.00000000
 Kinetic energy                                110.68156228
 One electron energy                          -509.90209743
 Two electron energy                           215.57448629
 Virial ratio                                    3.65922892
 
 !MCSCF STATE 3.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.2 Quartet
 =============================
 !MCSCF STATE 4.2 Quartet Energy              -294.309389723405
 Nuclear energy                                  0.00000000
 Kinetic energy                                110.71473689
 One electron energy                          -510.01288672
 Two electron energy                           215.70349700
 Virial ratio                                    3.65826753
 
 !MCSCF STATE 4.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.2 Quartet
 =============================
 !MCSCF STATE 5.2 Quartet Energy              -294.309389723390
 Nuclear energy                                  0.00000000
 Kinetic energy                                110.71473689
 One electron energy                          -510.01288672
 Two electron energy                           215.70349700
 Virial ratio                                    3.65826753
 
 !MCSCF STATE 5.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.2 Quartet
 =============================
 !MCSCF STATE 6.2 Quartet Energy              -294.309389721175
 Nuclear energy                                  0.00000000
 Kinetic energy                                110.71473690
 One electron energy                          -510.01288676
 Two electron energy                           215.70349704
 Virial ratio                                    3.65826753
 
 !MCSCF STATE 6.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.2 Quartet
 =============================
 !MCSCF STATE 7.2 Quartet Energy              -294.309389720794
 Nuclear energy                                  0.00000000
 Kinetic energy                                110.71473690
 One electron energy                          -510.01288676
 Two electron energy                           215.70349704
 Virial ratio                                    3.65826753
 
 !MCSCF STATE 7.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.2 Quartet
 =============================
 !MCSCF STATE 8.2 Quartet Energy              -294.309389720168
 Nuclear energy                                  0.00000000
 Kinetic energy                                110.71473690
 One electron energy                          -510.01288677
 Two electron energy                           215.70349705
 Virial ratio                                    3.65826753
 
 !MCSCF STATE 8.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 9.2 Quartet
 =============================
 !MCSCF STATE 9.2 Quartet Energy              -294.284273911740
 Nuclear energy                                  0.00000000
 Kinetic energy                                110.74844292
 One electron energy                          -510.11588470
 Two electron energy                           215.83161078
 Virial ratio                                    3.65723171
 
 !MCSCF STATE 9.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 ? Warning
 ? Transition properties are only calculated between states of the same symmetry
 ? The problem occurs in mu_properties_expec2

 !MCSCF expec      <1.2 Doublet|LXLX|1.2 Doublet>     0.999995313747
 !MCSCF expec      <2.2 Doublet|LXLX|2.2 Doublet>     0.000004687196
 !MCSCF expec      <3.2 Doublet|LXLX|3.2 Doublet>     0.999999999057
 !MCSCF expec      <4.2 Doublet|LXLX|4.2 Doublet>     0.999999999996
 !MCSCF expec      <5.2 Doublet|LXLX|5.2 Doublet>     0.000000000984
 !MCSCF expec      <6.2 Doublet|LXLX|6.2 Doublet>     0.999999999019
 !MCSCF expec      <7.2 Doublet|LXLX|7.2 Doublet>     1.244494154975
 !MCSCF expec      <8.2 Doublet|LXLX|8.2 Doublet>     1.000000000082
 !MCSCF expec      <9.2 Doublet|LXLX|9.2 Doublet>     3.999999999924
 !MCSCF expec    <10.2 Doublet|LXLX|10.2 Doublet>     1.000000000001
 !MCSCF expec    <11.2 Doublet|LXLX|11.2 Doublet>     2.755505845022
 !MCSCF expec    <12.2 Doublet|LXLX|12.2 Doublet>    -0.000000000000
 !MCSCF expec      <1.2 Quartet|LXLX|1.2 Quartet>     1.000000000000
 !MCSCF expec      <2.2 Quartet|LXLX|2.2 Quartet>    -0.000000000001
 !MCSCF expec      <3.2 Quartet|LXLX|3.2 Quartet>     1.000000000000
 !MCSCF expec      <4.2 Quartet|LXLX|4.2 Quartet>     1.244497296917
 !MCSCF expec      <5.2 Quartet|LXLX|5.2 Quartet>     1.000000000556
 !MCSCF expec      <6.2 Quartet|LXLX|6.2 Quartet>     4.000000000002
 !MCSCF expec      <7.2 Quartet|LXLX|7.2 Quartet>     1.000000000003
 !MCSCF expec      <8.2 Quartet|LXLX|8.2 Quartet>     2.755501407717
 !MCSCF expec      <9.2 Quartet|LXLX|9.2 Quartet>    -0.000000000001
 
 !MCSCF expec      <1.2 Doublet|LYLY|1.2 Doublet>     0.999999982499
 !MCSCF expec      <2.2 Doublet|LYLY|2.2 Doublet>     0.999999999039
 !MCSCF expec      <3.2 Doublet|LYLY|3.2 Doublet>     0.000000018461
 !MCSCF expec      <4.2 Doublet|LYLY|4.2 Doublet>     0.000000000014
 !MCSCF expec      <5.2 Doublet|LYLY|5.2 Doublet>     0.999999999996
 !MCSCF expec      <6.2 Doublet|LYLY|6.2 Doublet>     0.999999999988
 !MCSCF expec      <7.2 Doublet|LYLY|7.2 Doublet>     3.981469913943
 !MCSCF expec      <8.2 Doublet|LYLY|8.2 Doublet>     3.999999999902
 !MCSCF expec      <9.2 Doublet|LYLY|9.2 Doublet>     1.000000000077
 !MCSCF expec    <10.2 Doublet|LYLY|10.2 Doublet>     1.000000000023
 !MCSCF expec    <11.2 Doublet|LYLY|11.2 Doublet>     0.018530086060
 !MCSCF expec    <12.2 Doublet|LYLY|12.2 Doublet>    -0.000000000001
 !MCSCF expec      <1.2 Quartet|LYLY|1.2 Quartet>    -0.000000000001
 !MCSCF expec      <2.2 Quartet|LYLY|2.2 Quartet>     1.000000000000
 !MCSCF expec      <3.2 Quartet|LYLY|3.2 Quartet>     0.999999999999
 !MCSCF expec      <4.2 Quartet|LYLY|4.2 Quartet>     3.981469453075
 !MCSCF expec      <5.2 Quartet|LYLY|5.2 Quartet>     3.999999999967
 !MCSCF expec      <6.2 Quartet|LYLY|6.2 Quartet>     1.000000000000
 !MCSCF expec      <7.2 Quartet|LYLY|7.2 Quartet>     1.000000000016
 !MCSCF expec      <8.2 Quartet|LYLY|8.2 Quartet>     0.018530736918
 !MCSCF expec      <9.2 Quartet|LYLY|9.2 Quartet>    -0.000000000001
 
 !MCSCF expec      <1.2 Doublet|LZLZ|1.2 Doublet>     0.000004703753
 !MCSCF expec      <2.2 Doublet|LZLZ|2.2 Doublet>     0.999995313764
 !MCSCF expec      <3.2 Doublet|LZLZ|3.2 Doublet>     0.999999982482
 !MCSCF expec      <4.2 Doublet|LZLZ|4.2 Doublet>     0.999999999988
 !MCSCF expec      <5.2 Doublet|LZLZ|5.2 Doublet>     0.999999999019
 !MCSCF expec      <6.2 Doublet|LZLZ|6.2 Doublet>     0.000000000992
 !MCSCF expec      <7.2 Doublet|LZLZ|7.2 Doublet>     0.774035931084
 !MCSCF expec      <8.2 Doublet|LZLZ|8.2 Doublet>     1.000000000019
 !MCSCF expec      <9.2 Doublet|LZLZ|9.2 Doublet>     1.000000000001
 !MCSCF expec    <10.2 Doublet|LZLZ|10.2 Doublet>     3.999999999979
 !MCSCF expec    <11.2 Doublet|LZLZ|11.2 Doublet>     3.225964068920
 !MCSCF expec    <12.2 Doublet|LZLZ|12.2 Doublet>    -0.000000000000
 !MCSCF expec      <1.2 Quartet|LZLZ|1.2 Quartet>     1.000000000000
 !MCSCF expec      <2.2 Quartet|LZLZ|2.2 Quartet>     1.000000000000
 !MCSCF expec      <3.2 Quartet|LZLZ|3.2 Quartet>     0.000000000001
 !MCSCF expec      <4.2 Quartet|LZLZ|4.2 Quartet>     0.774033250011
 !MCSCF expec      <5.2 Quartet|LZLZ|5.2 Quartet>     0.999999999479
 !MCSCF expec      <6.2 Quartet|LZLZ|6.2 Quartet>     1.000000000000
 !MCSCF expec      <7.2 Quartet|LZLZ|7.2 Quartet>     3.999999999984
 !MCSCF expec      <8.2 Quartet|LZLZ|8.2 Quartet>     3.225967855367
 !MCSCF expec      <9.2 Quartet|LZLZ|9.2 Quartet>    -0.000000000001
 
 !MCSCF expec      <1.2 Doublet|L**2|1.2 Doublet>     2.000000000000
 !MCSCF expec      <2.2 Doublet|L**2|2.2 Doublet>     2.000000000000
 !MCSCF expec      <3.2 Doublet|L**2|3.2 Doublet>     2.000000000000
 !MCSCF expec      <4.2 Doublet|L**2|4.2 Doublet>     1.999999999998
 !MCSCF expec      <5.2 Doublet|L**2|5.2 Doublet>     1.999999999999
 !MCSCF expec      <6.2 Doublet|L**2|6.2 Doublet>     1.999999999999
 !MCSCF expec      <7.2 Doublet|L**2|7.2 Doublet>     6.000000000003
 !MCSCF expec      <8.2 Doublet|L**2|8.2 Doublet>     6.000000000003
 !MCSCF expec      <9.2 Doublet|L**2|9.2 Doublet>     6.000000000002
 !MCSCF expec    <10.2 Doublet|L**2|10.2 Doublet>     6.000000000002
 !MCSCF expec    <11.2 Doublet|L**2|11.2 Doublet>     6.000000000002
 !MCSCF expec    <12.2 Doublet|L**2|12.2 Doublet>    -0.000000000002
 !MCSCF expec      <1.2 Quartet|L**2|1.2 Quartet>     2.000000000000
 !MCSCF expec      <2.2 Quartet|L**2|2.2 Quartet>     2.000000000000
 !MCSCF expec      <3.2 Quartet|L**2|3.2 Quartet>     2.000000000000
 !MCSCF expec      <4.2 Quartet|L**2|4.2 Quartet>     6.000000000003
 !MCSCF expec      <5.2 Quartet|L**2|5.2 Quartet>     6.000000000003
 !MCSCF expec      <6.2 Quartet|L**2|6.2 Quartet>     6.000000000003
 !MCSCF expec      <7.2 Quartet|L**2|7.2 Quartet>     6.000000000003
 !MCSCF expec      <8.2 Quartet|L**2|8.2 Quartet>     6.000000000003
 !MCSCF expec      <9.2 Quartet|L**2|9.2 Quartet>    -0.000000000002
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 2 6 4 3 5 1 1 2 6   4 3 5 1 6 2 4 3 5 1   2 6 4 3 5 1 2 6 4 5   3 2 6 4 3 511 7 9 8
                                       1215141310 1 2 6 4 3   5 1 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 2 1 1 2 3 1 2 3 2   1 3 5 6 810 4 7 9 2   1 3 5 6 4 810 7 9 5   6 410 8 9 7 2 1 3 5
                                        6 4 810 7 9 3 2 1 5   6 4 810 9 7 3 2 1
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -7.76035     1  1  s    1.00188
    2.1     2.00000    -2.31268     1  1  d0   1.00012
    3.1     2.00000    -2.31268     1  1  d1-  1.00012
    4.1     2.00000    -2.31268     1  1  d1+  1.00012
    5.1     2.00000    -2.31268     1  1  d2-  1.00012
    6.1     2.00000    -2.31268     1  1  d2+  1.00012
    7.1     1.99877    -0.88674     1  2  s    1.00966
    1.2     2.00000    -5.58520     1  1  pz   0.99984
    2.2     2.00000    -5.58520     1  1  py   0.99984
    3.2     2.00000    -5.58520     1  1  px   0.99984
    4.2     1.64296    -0.34962     1  2  px   0.99832
    5.2     1.64296    -0.34962     1  2  py   0.99832
    6.2     1.64296    -0.34962     1  2  pz   0.99832
    7.2     0.02412     0.20435     1  2  px  -1.15541    1  4  px   0.82233    1  7  px   0.79667
    8.2     0.02412     0.20435     1  2  py  -1.15541    1  4  py   0.82233    1  7  py   0.79667
    9.2     0.02412     0.20435     1  2  pz  -1.15541    1  4  pz   0.82233    1  7  pz   0.79667
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 2 (Doublet)
 =======================================

 State:              1               2               3               4               5               6               7
 2 2a2000       0.00013173      0.00003086      0.99575203     -0.04030818      0.00000007     -0.00000014     -0.00000000
 2 a22000      -0.00215558      0.99574971     -0.00003058      0.00000007      0.04030818      0.00000126      0.00000000
 2 22a000       0.99574970      0.00215558     -0.00013179      0.00000014      0.00000126     -0.04030818     -0.00000000
 2 a2a0b0      -0.00000000      0.00000000     -0.00000000     -0.00000000      0.00000000     -0.00000000      0.04470150
 2 aa200b      -0.00000000     -0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000000      0.58981162
 2 aa20b0      -0.00003798      0.01754337     -0.00000054     -0.00000073     -0.40638752     -0.00001273     -0.00000015
 2 2aa0b0      -0.01754337     -0.00003798      0.00000232      0.00000140      0.00001273     -0.40638755      0.00000027
 2 aa2b00      -0.00000232     -0.00000054     -0.01754341     -0.40638769      0.00000073     -0.00000140      0.00000092
 2 2aa00b       0.00000232      0.00000054      0.01754341      0.40638775     -0.00000073      0.00000140      0.00000092
 2 a2ab00      -0.01754337     -0.00003798      0.00000232      0.00000140      0.00001273     -0.40638788     -0.00000027
 2 a2a00b      -0.00003798      0.01754337     -0.00000054     -0.00000073     -0.40638791     -0.00001273      0.00000015
 2 2aab00      -0.00000000      0.00000000      0.00000000      0.00000000      0.00000000      0.00000000     -0.54511006
 2 b2a00a       0.00003407     -0.01573656      0.00000048      0.00000083      0.46395711      0.00001453     -0.00000008
 2 a2ba00       0.01573656      0.00003407     -0.00000208     -0.00000159     -0.00001453      0.46395709      0.00000015
 2 2ba00a      -0.00000208     -0.00000049     -0.01573659     -0.46395702      0.00000083     -0.00000159     -0.00000050
 2 ab2a00       0.00000208      0.00000049      0.01573659      0.46395699     -0.00000083      0.00000159     -0.00000050
 2 2ab0a0       0.01573656      0.00003407     -0.00000208     -0.00000159     -0.00001453      0.46395689     -0.00000015
 2 ba20a0       0.00003407     -0.01573656      0.00000048      0.00000083      0.46395687      0.00001453      0.00000008
 2 22000a      -0.02044910     -0.00004427      0.00000271      0.00000157      0.00001428     -0.45594354     -0.00000000
 2 022a00       0.00004427     -0.02044911      0.00000063      0.00000082      0.45594353      0.00001428      0.00000000
 2 2020a0      -0.00000271     -0.00000063     -0.02044915     -0.45594349      0.00000082     -0.00000157     -0.00000000
 2 a2b0a0       0.00000000      0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000      0.02292486
 2 b2a0a0      -0.00000000     -0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000     -0.06762636
 2 ab200a       0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000000      0.00000000     -0.31486869
 2 2baa00       0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.00000000      0.29786777
 2 ba200a       0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000000      0.00000000     -0.27494293
 2 a2b00a       0.00000391     -0.00180681      0.00000006     -0.00000010     -0.05756920     -0.00000180     -0.00000007
 2 b2aa00       0.00180681      0.00000391     -0.00000024      0.00000020      0.00000180     -0.05756921      0.00000013
 2 2ab00a      -0.00000024     -0.00000006     -0.00180681      0.05756927     -0.00000010      0.00000020     -0.00000042
 2 ba2a00       0.00000024      0.00000006      0.00180681     -0.05756929      0.00000010     -0.00000020     -0.00000042
 2 2ba0a0       0.00180681      0.00000391     -0.00000024      0.00000020      0.00000180     -0.05756934     -0.00000013
 2 ab20a0       0.00000391     -0.00180681      0.00000006     -0.00000010     -0.05756935     -0.00000180      0.00000007
 2 2aba00      -0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.00000000      0.24724230
 2 a02020       0.00007217     -0.03333691      0.00000102      0.00000006      0.03488222      0.00000109      0.00000002
 2 20a020      -0.03333691     -0.00007217      0.00000441      0.00000012      0.00000109     -0.03488223      0.00000004
 2 0a2200      -0.00000441     -0.00000103     -0.03333699     -0.03488225      0.00000006     -0.00000012      0.00000012
 2 2a0002      -0.00000441     -0.00000103     -0.03333699     -0.03488225      0.00000006     -0.00000012     -0.00000012
 2 02a200      -0.03333691     -0.00007217      0.00000441      0.00000012      0.00000109     -0.03488227     -0.00000004
 2 a20002       0.00007217     -0.03333691      0.00000102      0.00000006      0.03488227      0.00000109     -0.00000002
 2 02200a      -0.00651936     -0.00001411      0.00000086     -0.00000023     -0.00000205      0.06558277      0.00000002
 2 220a00       0.00001411     -0.00651936      0.00000020     -0.00000012     -0.06558277     -0.00000205      0.00000001
 2 20200a      -0.00651936     -0.00001411      0.00000086     -0.00000023     -0.00000205      0.06558275     -0.00000002
 2 202a00       0.00001411     -0.00651936      0.00000020     -0.00000012     -0.06558275     -0.00000205     -0.00000001
 2 2200a0      -0.00000086     -0.00000020     -0.00651937      0.06558274     -0.00000012      0.00000023      0.00000007
 2 0220a0      -0.00000086     -0.00000020     -0.00651937      0.06558274     -0.00000012      0.00000023     -0.00000007
 2 02aab0      -0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000000      0.00237872
 2 a200ba      -0.00000000     -0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000000      0.00550047
 2 aba020       0.00000000     -0.00000000     -0.00000000      0.00000000     -0.00000000      0.00000000     -0.00388186
 2 0a2a0b       0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00000000     -0.00000000      0.05266899
 2 a020ab      -0.00000000     -0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000     -0.05129255
 2 aab002      -0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00000000     -0.00000000      0.05121898
 
 Energy:     -294.66251862   -294.66251862   -294.66251862   -294.30143918   -294.30143917   -294.30143917   -294.29543355

 State:              8               9              10              11              12
 2 2a2000       0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.00000000
 2 a22000       0.00000000      0.00000001     -0.00000000     -0.00000000      0.00000000
 2 22a000       0.00000000     -0.00000000      0.00000001     -0.00000000      0.00000000
 2 a2a0b0      -0.00000046     -0.00000028      0.00000016      0.65524725     -0.46636396
 2 aa200b      -0.00000112     -0.00000027     -0.00000020      0.28891111      0.46636375
 2 aa20b0      -0.00000288     -0.56877994      0.00000034     -0.00000023      0.00000000
 2 2aa0b0       0.00000153      0.00000034      0.56877992     -0.00000016      0.00000000
 2 aa2b00       0.56877983     -0.00000288     -0.00000153      0.00000034     -0.00000000
 2 2aa00b       0.56877979     -0.00000288     -0.00000153      0.00000034      0.00000000
 2 a2ab00      -0.00000153     -0.00000034     -0.56877970      0.00000016      0.00000000
 2 a2a00b       0.00000288      0.56877968     -0.00000034      0.00000023      0.00000000
 2 2aab00       0.00000066     -0.00000001      0.00000036      0.36633641      0.46636378
 2 b2a00a      -0.00000155     -0.30708017      0.00000018     -0.00000012     -0.00000000
 2 a2ba00       0.00000083      0.00000018      0.30708019     -0.00000009     -0.00000000
 2 2ba00a      -0.30708031      0.00000155      0.00000083     -0.00000018     -0.00000000
 2 ab2a00      -0.30708036      0.00000155      0.00000083     -0.00000018      0.00000000
 2 2ab0a0      -0.00000083     -0.00000018     -0.30708047      0.00000009     -0.00000000
 2 ba20a0       0.00000155      0.30708049     -0.00000018      0.00000012     -0.00000000
 2 22000a       0.00000000     -0.00000000      0.00000015     -0.00000000      0.00000000
 2 022a00       0.00000000      0.00000017     -0.00000000     -0.00000000     -0.00000000
 2 2020a0       0.00000002     -0.00000000     -0.00000000     -0.00000000     -0.00000000
 2 a2b0a0       0.00000016      0.00000013     -0.00000010     -0.33071236      0.23318198
 2 b2a0a0       0.00000030      0.00000015     -0.00000006     -0.32453488      0.23318198
 2 ab200a       0.00000057      0.00000012      0.00000012     -0.10370135     -0.23318188
 2 2baa00      -0.00000040     -0.00000002     -0.00000018     -0.14550274     -0.23318190
 2 ba200a       0.00000055      0.00000015      0.00000008     -0.18520976     -0.23318186
 2 a2b00a      -0.00000132     -0.26169951      0.00000015     -0.00000011      0.00000000
 2 b2aa00       0.00000070      0.00000015      0.26169951     -0.00000007     -0.00000000
 2 2ab00a      -0.26169949      0.00000132      0.00000070     -0.00000015     -0.00000000
 2 ba2a00      -0.26169948      0.00000132      0.00000070     -0.00000015      0.00000000
 2 2ba0a0      -0.00000070     -0.00000015     -0.26169945      0.00000007     -0.00000000
 2 ab20a0       0.00000132      0.26169945     -0.00000015      0.00000011      0.00000000
 2 2aba00      -0.00000027      0.00000003     -0.00000018     -0.22083367     -0.23318188
 2 a02020       0.00000038      0.07593242     -0.00000004      0.00000003      0.00000000
 2 20a020       0.00000020      0.00000004      0.07593242     -0.00000002      0.00000000
 2 0a2200       0.07593241     -0.00000038     -0.00000020      0.00000004     -0.00000000
 2 2a0002      -0.07593241      0.00000038      0.00000020     -0.00000004     -0.00000000
 2 02a200      -0.00000020     -0.00000004     -0.07593240      0.00000002     -0.00000000
 2 a20002      -0.00000038     -0.07593240      0.00000004     -0.00000003     -0.00000000
 2 02200a       0.00000012      0.00000003      0.04538083     -0.00000001     -0.00000000
 2 220a00       0.00000023      0.04538083     -0.00000003      0.00000002      0.00000000
 2 20200a      -0.00000012     -0.00000003     -0.04538087      0.00000001     -0.00000000
 2 202a00      -0.00000023     -0.04538088      0.00000003     -0.00000002      0.00000000
 2 2200a0       0.04538084     -0.00000023     -0.00000012      0.00000003      0.00000000
 2 0220a0      -0.04538085      0.00000023      0.00000012     -0.00000003      0.00000000
 2 02aab0      -0.00000004     -0.00000002      0.00000002      0.05785417     -0.03950543
 2 a200ba      -0.00000004     -0.00000002      0.00000001      0.05764120     -0.03950543
 2 aba020       0.00000004      0.00000002     -0.00000001     -0.05690138      0.03869406
 2 0a2a0b      -0.00000010     -0.00000002     -0.00000002      0.02405706      0.03950541
 2 a020ab       0.00000010      0.00000002      0.00000002     -0.02686707     -0.03950541
 2 aab002      -0.00000010     -0.00000002     -0.00000002      0.02508891      0.03869404
 
 Energy:     -294.29543355   -294.29543355   -294.29543355   -294.29543355   -294.28258941
 
 
 CI Coefficients of symmetry 2 (Quartet)
 =======================================

 State:              1               2               3               4               5               6               7
 2 a2a0a0      -0.00000000      0.00000000     -0.00000000      0.05510038     -0.00000090     -0.00000000      0.00000034
 2 aa200a       0.00000000     -0.00000000      0.00000000      0.72701021     -0.00002056     -0.00000001      0.00000013
 2 a2a00a       0.00000002      0.70190748      0.00000001     -0.00000001      0.00000000     -0.70108573     -0.00000000
 2 a2aa00      -0.00000029     -0.00000001      0.70190746      0.00000002      0.00000063     -0.00000000      0.70108575
 2 2aa00a      -0.70190740      0.00000002     -0.00000029      0.00002012      0.70108581      0.00000000     -0.00000063
 2 aa2a00       0.70190737     -0.00000002      0.00000029      0.00002012      0.70108584      0.00000000     -0.00000063
 2 2aa0a0      -0.00000029     -0.00000001      0.70190730     -0.00000002     -0.00000063      0.00000000     -0.70108591
 2 aa20a0       0.00000002      0.70190729      0.00000001      0.00000001     -0.00000000      0.70108592      0.00000000
 2 2aaa00      -0.00000000     -0.00000000      0.00000000     -0.67190980      0.00001966      0.00000001      0.00000022
 2 a200aa      -0.00000000      0.00000000     -0.00000000      0.00066154      0.00000004     -0.00000000      0.00000003
 2 02aaa0       0.00000000      0.00000000     -0.00000000      0.00845250     -0.00000019     -0.00000000      0.00000003
 2 a020aa      -0.00000000      0.00000000     -0.00000000     -0.06184426      0.00000175      0.00000000     -0.00000001
 2 02aa0a       0.00000000      0.06093091      0.00000000     -0.00000000      0.00000000     -0.05993488     -0.00000000
 2 a20a0a      -0.00000002     -0.00000000      0.06093091      0.00000000      0.00000005     -0.00000000      0.05993488
 2 20a0aa      -0.06093091      0.00000000     -0.00000002      0.00000172      0.05993488      0.00000000     -0.00000005
 2 a02aa0       0.06093091     -0.00000000      0.00000002      0.00000172      0.05993489      0.00000000     -0.00000005
 2 2a00aa      -0.00000002     -0.00000000      0.06093090     -0.00000000     -0.00000005      0.00000000     -0.05993489
 2 0a2aa0       0.00000000      0.06093090      0.00000000      0.00000000     -0.00000000      0.05993489      0.00000000
 2 0a2a0a       0.00000000     -0.00000000      0.00000000      0.05840908     -0.00000165     -0.00000000      0.00000001
 2 20aaa0       0.00000000      0.00000000     -0.00000000      0.05774753     -0.00000169     -0.00000000     -0.00000002
 2 aab0aa      -0.00000000     -0.04126565     -0.00000000     -0.00000000      0.00000000     -0.05603035     -0.00000000
 2 baaaa0      -0.00000002     -0.00000000      0.04126565     -0.00000000     -0.00000005      0.00000000     -0.05603035
 2 aaba0a      -0.04126565      0.00000000     -0.00000002     -0.00000161     -0.05603035     -0.00000000      0.00000005
 2 baaa0a      -0.04126566      0.00000000     -0.00000002      0.00000161      0.05603035      0.00000000     -0.00000005
 2 abaaa0      -0.00000002     -0.00000000      0.04126566      0.00000000      0.00000005     -0.00000000      0.05603035
 2 aba0aa      -0.00000000     -0.04126566     -0.00000000      0.00000000     -0.00000000      0.05603034      0.00000000
 2 2a0a0a      -0.00000000     -0.00000000      0.00000000     -0.05339175      0.00000157      0.00000000      0.00000002
 
 Energy:     -294.32761114   -294.32761114   -294.32761114   -294.30938972   -294.30938972   -294.30938972   -294.30938972

 State:              8               9
 2 a2a0a0       0.80766679     -0.57123559
 2 aa200a       0.35611514      0.57123546
 2 a2a00a      -0.00000000      0.00000000
 2 a2aa00      -0.00000030     -0.00000000
 2 2aa00a      -0.00000059      0.00000000
 2 aa2a00      -0.00000059      0.00000000
 2 2aa0a0       0.00000030     -0.00000000
 2 aa20a0       0.00000000      0.00000000
 2 2aaa00       0.45155181      0.57123548
 2 a200aa       0.06706305     -0.05166039
 2 02aaa0       0.06653153     -0.05166039
 2 a020aa      -0.02594569     -0.05166038
 2 02aa0a      -0.00000000      0.00000000
 2 a20a0a      -0.00000003     -0.00000000
 2 20a0aa      -0.00000005      0.00000000
 2 a02aa0      -0.00000005      0.00000000
 2 2a00aa       0.00000003     -0.00000000
 2 0a2aa0       0.00000000      0.00000000
 2 0a2a0a       0.03295862      0.05166038
 2 20aaa0      -0.03410444     -0.05166038
 2 aab0aa      -0.00000000     -0.00000000
 2 baaaa0       0.00000002     -0.00000000
 2 aaba0a       0.00000005     -0.00000000
 2 baaa0a      -0.00000005      0.00000000
 2 abaaa0      -0.00000002     -0.00000000
 2 aba0aa       0.00000000     -0.00000000
 2 2a0a0a       0.04058586      0.05166038
 
 Energy:     -294.30938972   -294.28427391
 


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
 CPU TIMES  *         6.60      5.16      0.16      1.06
 REAL TIME  *        11.78 SEC
 DISK USED  *        39.97 MB (local),      371.25 MB (total)
 SF USED    *        26.73 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

         ENERGY     LL
    -294.6625186   2.0
    -294.6625186   2.0
    -294.6625186   2.0
    -294.3014392   2.0
    -294.3014392   2.0
    -294.3014392   2.0
    -294.2954336   6.0
    -294.2954336   6.0
    -294.2954335   6.0
    -294.2954335   6.0
    -294.2954335   6.0
    -294.2825894  -0.0
    -294.3276111   2.0
    -294.3276111   2.0
    -294.3276111   2.0
    -294.3093897   6.0
    -294.3093897   6.0
    -294.3093897   6.0
    -294.3093897   6.0
    -294.3093897   6.0
    -294.2842739  -0.0
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-09

 Number of optimized states: 12  Roots:   1   2   3   4   5   6   7   8   9  10  11  12
 Number of reference states: 12  Roots:   1   2   3   4   5   6   7   8   9  10  11  12

 Reference symmetry:                   2   Doublet 
 Number of electrons:                 25
 Maximum number of shells:             6
 Maximum number of spin couplings:   132

 Reference space:      252 conf      420 CSFs
 N elec internal:    15576 conf    58240 CSFs
 N-1 el internal:    19959 conf   132244 CSFs
 N-2 el internal:    14819 conf   136456 CSFs

 Number of electrons in valence space:                     25
 Maximum number of open shell orbitals in reference space:  5
 Maximum number of open shell orbitals in internal spaces: 11


 Number of closed-shell orbitals:   9 (   6   3 )
 Number of active  orbitals:        7 (   1   6 )
 Number of external orbitals:      96 (  46  50 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Valence orbitals related to previous ones by unitary transformation. Operators transformed.


 Number of p-space configurations:  30

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -294.66251862
     2      -294.66251862
     3      -294.66251862
     4      -294.30143918
     5      -294.30143917
     6      -294.30143917
     7      -294.29543355
     8      -294.29543355
     9      -294.29543355
    10      -294.29543355
    11      -294.29543355
    12      -294.28258941

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.7300D-07

 Number of blocks in overlap matrix:  1066   Smallest eigenvalue:  0.73D-07
 Number of N-2 electron functions:    3028
 Number of N-1 electron functions:  132244

 Number of internal configurations:                29358
 Number of singly external configurations:       6348776
 Number of doubly external configurations:       6983632
 Total number of contracted configurations:     13361766
 Total number of uncontracted configurations:  319907094

 Diagonal Coupling coefficients finished.               Storage:  34450777 words, CPU-Time:    178.25 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   1772592 words, CPU-time:      0.28 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -294.66251862    -0.00000000    -0.93531145  0.32D-01  0.97D-01   191.68
    1     2     2     1.00000000     0.00000000  -294.66251862     0.00000000    -0.93572965  0.32D-01  0.98D-01   191.68
    1     3     3     1.00000000     0.00000000  -294.66251862    -0.00000000    -0.93523697  0.32D-01  0.97D-01   191.68
    1     4     4     1.00000000     0.00000000  -294.30143918    -0.00000000    -0.98400879  0.11D+00  0.10D+00   191.68
    1     5     5     1.00000000     0.00000000  -294.30143917     0.00000000    -0.98390351  0.11D+00  0.10D+00   191.68
    1     6     6     1.00000000     0.00000000  -294.30143917     0.00000000    -0.98399535  0.11D+00  0.10D+00   191.68
    1     7     7     1.00000000     0.00000000  -294.29543355     0.00000000    -0.98207910  0.88D-01  0.10D+00   191.68
    1     8     8     1.00000000     0.00000000  -294.29543355     0.00000000    -0.98225728  0.87D-01  0.10D+00   191.68
    1     9     9     1.00000000     0.00000000  -294.29543355     0.00000000    -0.98241640  0.87D-01  0.10D+00   191.68
    1    10    10     1.00000000     0.00000000  -294.29543355    -0.00000000    -0.98226229  0.87D-01  0.10D+00   191.68
    1    11    11     1.00000000     0.00000000  -294.29543355     0.00000000    -0.98610514  0.10D+00  0.10D+00   191.68
    1    12    12     1.00000000     0.00000000  -294.28258941     0.00000000    -0.99313293  0.11D+00  0.10D+00   191.68
    2     1     1     1.08815697    -0.77228315  -295.43480177    -0.77228315    -0.01916371  0.21D-02  0.16D-02  1280.46
    2     2     2     1.08821884    -0.77224917  -295.43476779    -0.77224917    -0.01921990  0.22D-02  0.16D-02  1280.46
    2     3     3     1.08815813    -0.77224368  -295.43476230    -0.77224368    -0.01920530  0.22D-02  0.16D-02  1280.46
    2     4     4     1.12146629    -0.77761629  -295.07905546    -0.77761629    -0.02372870  0.54D-02  0.19D-02  1280.46
    2     5     5     1.12147838    -0.77758752  -295.07902670    -0.77758752    -0.02375786  0.54D-02  0.19D-02  1280.46
    2     6     6     1.12170443    -0.77756694  -295.07900611    -0.77756694    -0.02378258  0.55D-02  0.19D-02  1280.46
    2     7     7     1.12152079    -0.78356452  -295.07899807    -0.78356452    -0.02380125  0.55D-02  0.19D-02  1280.46
    2     8     8     1.12350264    -0.78095257  -295.07638612    -0.78095257    -0.02535775  0.66D-02  0.20D-02  1280.46
    2     9     9     1.13033831    -0.77818468  -295.07361823    -0.77818468    -0.02897842  0.93D-02  0.20D-02  1280.46
    2    10    10     1.13034942    -0.77814667  -295.07358022    -0.77814667    -0.02903765  0.93D-02  0.20D-02  1280.46
    2    11    11     1.13036527    -0.77810118  -295.07353473    -0.77810118    -0.02907901  0.93D-02  0.20D-02  1280.46
    2    12    12     1.13706435    -0.78354331  -295.06613272    -0.78354331    -0.02737297  0.85D-02  0.21D-02  1280.46
    3     1     1     1.08658604    -0.79161605  -295.45413467    -0.01933291    -0.00092559  0.53D-04  0.14D-03  2373.14
    3     2     2     1.08657949    -0.79161534  -295.45413395    -0.01936617    -0.00092504  0.53D-04  0.14D-03  2373.14
    3     3     3     1.08657207    -0.79161019  -295.45412881    -0.01936651    -0.00092950  0.53D-04  0.14D-03  2373.14
    3     4     4     1.10687278    -0.80101162  -295.10245079    -0.02339533    -0.00088643  0.11D-03  0.14D-03  2373.14
    3     5     5     1.10687879    -0.80100986  -295.10244903    -0.02342233    -0.00088928  0.12D-03  0.14D-03  2373.14
    3     6     6     1.10687251    -0.80100751  -295.10244669    -0.02344058    -0.00088934  0.12D-03  0.14D-03  2373.14
    3     7     7     1.10696020    -0.80701030  -295.10244385    -0.02344579    -0.00089007  0.12D-03  0.14D-03  2373.14
    3     8     8     1.10435957    -0.80678757  -295.10222113    -0.02583501    -0.00107899  0.22D-03  0.14D-03  2373.14
    3     9     9     1.10436817    -0.80678663  -295.10222017    -0.02860194    -0.00107974  0.22D-03  0.14D-03  2373.14
    3    10    10     1.10757039    -0.80678261  -295.10221616    -0.02863594    -0.00106508  0.16D-03  0.16D-03  2373.14
    3    11    11     1.10435679    -0.80678173  -295.10221528    -0.02868055    -0.00108303  0.22D-03  0.14D-03  2373.14
    3    12    12     1.11063502    -0.81015132  -295.09274074    -0.02660801    -0.00101144  0.16D-03  0.15D-03  2373.14
    4     1     1     1.08972476    -0.79283908  -295.45535770    -0.00122303    -0.00011627  0.73D-05  0.15D-04  3481.41
    4     2     2     1.08971910    -0.79283869  -295.45535731    -0.00122335    -0.00011661  0.73D-05  0.15D-04  3481.41
    4     3     3     1.08971860    -0.79283807  -295.45535669    -0.00122788    -0.00011695  0.73D-05  0.15D-04  3481.41
    4     4     4     1.10775908    -0.80215551  -295.10359469    -0.00114390    -0.00011284  0.84D-05  0.19D-04  3481.41
    4     5     5     1.10775976    -0.80215540  -295.10359458    -0.00114555    -0.00011278  0.85D-05  0.19D-04  3481.41
    4     6     6     1.10775845    -0.80215477  -295.10359395    -0.00114726    -0.00011315  0.85D-05  0.19D-04  3481.41
    4     7     7     1.10776378    -0.80815851  -295.10359206    -0.00114821    -0.00011392  0.85D-05  0.19D-04  3481.41
    4     8     8     1.10777842    -0.80814224  -295.10357579    -0.00135466    -0.00012465  0.10D-04  0.21D-04  3481.41
    4     9     9     1.10310870    -0.80808867  -295.10352221    -0.00130204    -0.00009831  0.93D-05  0.16D-04  3481.41
    4    10    10     1.10311235    -0.80808828  -295.10352182    -0.00130566    -0.00009833  0.92D-05  0.16D-04  3481.41
    4    11    11     1.10310829    -0.80808792  -295.10352147    -0.00130619    -0.00009869  0.92D-05  0.16D-04  3481.41
    4    12    12     1.11004763    -0.81143759  -295.09402700    -0.00128627    -0.00011580  0.11D-04  0.19D-04  3481.41
    5     1     1     1.09055206    -0.79298703  -295.45550565    -0.00014795    -0.00001067  0.34D-06  0.15D-05  4578.15
    5     2     2     1.09055229    -0.79298702  -295.45550564    -0.00014833    -0.00001069  0.34D-06  0.15D-05  4578.15
    5     3     3     1.09055170    -0.79298692  -295.45550554    -0.00014885    -0.00001074  0.34D-06  0.15D-05  4578.15
    5     4     4     1.10859747    -0.80231435  -295.10375353    -0.00015884    -0.00001647  0.14D-05  0.27D-05  4578.15
    5     5     5     1.10859814    -0.80231424  -295.10375342    -0.00015884    -0.00001652  0.14D-05  0.27D-05  4578.15
    5     6     6     1.10859794    -0.80231416  -295.10375334    -0.00015939    -0.00001656  0.14D-05  0.27D-05  4578.15
    5     7     7     1.10859259    -0.80831933  -295.10375288    -0.00016082    -0.00001679  0.14D-05  0.27D-05  4578.15
    5     8     8     1.10855024    -0.80831632  -295.10374987    -0.00017409    -0.00001847  0.15D-05  0.30D-05  4578.15
    5     9     9     1.10342775    -0.80821898  -295.10365252    -0.00013031    -0.00001202  0.83D-06  0.20D-05  4578.15
    5    10    10     1.10342764    -0.80821889  -295.10365244    -0.00013062    -0.00001204  0.82D-06  0.21D-05  4578.15
    5    11    11     1.10342763    -0.80821883  -295.10365238    -0.00013091    -0.00001206  0.82D-06  0.21D-05  4578.15
    5    12    12     1.11080512    -0.81159769  -295.09418711    -0.00016010    -0.00001621  0.16D-05  0.26D-05  4578.15
    6     1     1     1.09051403    -0.79300073  -295.45551935    -0.00001371    -0.00000132  0.77D-07  0.17D-06  5675.09
    6     2     2     1.09051405    -0.79300073  -295.45551935    -0.00001371    -0.00000132  0.77D-07  0.17D-06  5675.09
    6     3     3     1.09051375    -0.79300072  -295.45551934    -0.00001379    -0.00000133  0.78D-07  0.17D-06  5675.09
    6     4     4     1.10861741    -0.80233673  -295.10377591    -0.00002238    -0.00000287  0.16D-06  0.45D-06  5675.09
    6     5     5     1.10861728    -0.80233671  -295.10377588    -0.00002246    -0.00000289  0.16D-06  0.45D-06  5675.09
    6     6     6     1.10861703    -0.80233669  -295.10377586    -0.00002253    -0.00000290  0.16D-06  0.45D-06  5675.09
    6     7     7     1.10861399    -0.80834221  -295.10377576    -0.00002288    -0.00000295  0.17D-06  0.46D-06  5675.09
    6     8     8     1.10860172    -0.80834168  -295.10377523    -0.00002536    -0.00000327  0.19D-06  0.51D-06  5675.09
    6     9     9     1.10350131    -0.80823502  -295.10366857    -0.00001604    -0.00000182  0.13D-06  0.28D-06  5675.09
    6    10    10     1.10350089    -0.80823500  -295.10366855    -0.00001611    -0.00000182  0.13D-06  0.28D-06  5675.09
    6    11    11     1.10350084    -0.80823498  -295.10366853    -0.00001615    -0.00000184  0.13D-06  0.29D-06  5675.09
    6    12    12     1.11084629    -0.81161958  -295.09420899    -0.00002189    -0.00000276  0.16D-06  0.44D-06  5675.09
    7     1     1     1.09056050    -0.79300240  -295.45552102    -0.00000167    -0.00000020  0.21D-07  0.23D-07  6775.37
    7     2     2     1.09056042    -0.79300240  -295.45552102    -0.00000167    -0.00000021  0.21D-07  0.23D-07  6775.37
    7     3     3     1.09056044    -0.79300240  -295.45552102    -0.00000168    -0.00000021  0.21D-07  0.23D-07  6775.37
    7     4     4     1.10868577    -0.80234056  -295.10377973    -0.00000383    -0.00000059  0.62D-07  0.83D-07  6775.37
    7     5     5     1.10868573    -0.80234055  -295.10377973    -0.00000385    -0.00000059  0.62D-07  0.83D-07  6775.37
    7     6     6     1.10868562    -0.80234055  -295.10377972    -0.00000386    -0.00000059  0.62D-07  0.84D-07  6775.37
    7     7     7     1.10868620    -0.80834614  -295.10377969    -0.00000394    -0.00000061  0.65D-07  0.85D-07  6775.37
    7     8     8     1.10868625    -0.80834601  -295.10377956    -0.00000433    -0.00000066  0.72D-07  0.94D-07  6775.37
    7     9     9     1.10358222    -0.80823739  -295.10367094    -0.00000237    -0.00000034  0.35D-07  0.50D-07  6775.37
    7    10    10     1.10358245    -0.80823738  -295.10367093    -0.00000238    -0.00000034  0.36D-07  0.50D-07  6775.37
    7    11    11     1.10358245    -0.80823738  -295.10367093    -0.00000240    -0.00000034  0.36D-07  0.51D-07  6775.37
    7    12    12     1.11092444    -0.81162327  -295.09421268    -0.00000369    -0.00000055  0.59D-07  0.78D-07  6775.37
    8     1     1     1.09056882    -0.79300265  -295.45552126    -0.00000024    -0.00000003  0.15D-08  0.40D-08  7875.28
    8     2     2     1.09056880    -0.79300264  -295.45552126    -0.00000025    -0.00000003  0.16D-08  0.41D-08  7875.28
    8     3     3     1.09056881    -0.79300264  -295.45552126    -0.00000024    -0.00000003  0.15D-08  0.40D-08  7875.28
    8     4     4     1.10868226    -0.80234131  -295.10378048    -0.00000075    -0.00000013  0.12D-07  0.19D-07  7875.28
    8     5     5     1.10868230    -0.80234131  -295.10378048    -0.00000075    -0.00000013  0.12D-07  0.19D-07  7875.28
    8     6     6     1.10868229    -0.80234131  -295.10378048    -0.00000076    -0.00000013  0.12D-07  0.19D-07  7875.28
    8     7     7     1.10868228    -0.80834692  -295.10378047    -0.00000078    -0.00000013  0.12D-07  0.20D-07  7875.28
    8     8     8     1.10868257    -0.80834685  -295.10378040    -0.00000084    -0.00000015  0.14D-07  0.22D-07  7875.28
    8     9     9     1.10357228    -0.80823783  -295.10367137    -0.00000043    -0.00000007  0.68D-08  0.11D-07  7875.28
    8    10    10     1.10357221    -0.80823782  -295.10367137    -0.00000044    -0.00000007  0.68D-08  0.11D-07  7875.28
    8    11    11     1.10357219    -0.80823782  -295.10367136    -0.00000044    -0.00000007  0.68D-08  0.11D-07  7875.28
    8    12    12     1.11091843    -0.81162397  -295.09421338    -0.00000070    -0.00000012  0.13D-07  0.17D-07  7875.28
    9     1     1     1.09057160    -0.79300268  -295.45552130    -0.00000004    -0.00000000  0.34D-09  0.60D-09  8973.42
    9     2     2     1.09057160    -0.79300268  -295.45552130    -0.00000004    -0.00000000  0.34D-09  0.60D-09  8973.42
    9     3     3     1.09057160    -0.79300268  -295.45552130    -0.00000004    -0.00000000  0.34D-09  0.59D-09  8973.42
    9     4     4     1.10868728    -0.80234147  -295.10378065    -0.00000016    -0.00000003  0.25D-08  0.43D-08  8973.42
    9     5     5     1.10868730    -0.80234147  -295.10378065    -0.00000016    -0.00000003  0.25D-08  0.43D-08  8973.42
    9     6     6     1.10868730    -0.80234147  -295.10378064    -0.00000016    -0.00000003  0.25D-08  0.42D-08  8973.42
    9     7     7     1.10868732    -0.80834709  -295.10378064    -0.00000017    -0.00000003  0.25D-08  0.42D-08  8973.42
    9     8     8     1.10868653    -0.80834703  -295.10378058    -0.00000018    -0.00000003  0.28D-08  0.48D-08  8973.42
    9     9     9     1.10357279    -0.80823791  -295.10367146    -0.00000009    -0.00000001  0.13D-08  0.21D-08  8973.42
    9    10    10     1.10357273    -0.80823791  -295.10367146    -0.00000009    -0.00000001  0.13D-08  0.22D-08  8973.42
    9    11    11     1.10357272    -0.80823791  -295.10367145    -0.00000009    -0.00000001  0.13D-08  0.22D-08  8973.42
    9    12    12     1.11092008    -0.81162411  -295.09421352    -0.00000014    -0.00000002  0.23D-08  0.36D-08  8973.42
   10     1     1     1.09057484    -0.79300269  -295.45552131    -0.00000001    -0.00000000  0.75D-10  0.93D-10 10068.70
   10     2     2     1.09057484    -0.79300269  -295.45552131    -0.00000001    -0.00000000  0.75D-10  0.93D-10 10068.70
   10     3     3     1.09057484    -0.79300268  -295.45552130    -0.00000001    -0.00000000  0.75D-10  0.93D-10 10068.70
   10     4     4     1.10869698    -0.80234151  -295.10378069    -0.00000004    -0.00000001  0.64D-09  0.98D-09 10068.70
   10     5     5     1.10869697    -0.80234151  -295.10378068    -0.00000004    -0.00000001  0.62D-09  0.97D-09 10068.70
   10     6     6     1.10869697    -0.80234151  -295.10378068    -0.00000004    -0.00000001  0.62D-09  0.97D-09 10068.70
   10     7     7     1.10869697    -0.80834713  -295.10378068    -0.00000004    -0.00000001  0.62D-09  0.96D-09 10068.70
   10     8     8     1.10869679    -0.80834707  -295.10378063    -0.00000004    -0.00000001  0.74D-09  0.11D-08 10068.70
   10     9     9     1.10357864    -0.80823793  -295.10367148    -0.00000002    -0.00000000  0.34D-09  0.47D-09 10068.70
   10    10    10     1.10357866    -0.80823793  -295.10367148    -0.00000002    -0.00000000  0.34D-09  0.48D-09 10068.70
   10    11    11     1.10357866    -0.80823793  -295.10367147    -0.00000002    -0.00000000  0.34D-09  0.48D-09 10068.70
   10    12    12     1.11092968    -0.81162414  -295.09421355    -0.00000003    -0.00000001  0.51D-09  0.81D-09 10068.70
   11     1     1     1.09057508    -0.79300269  -295.45552131    -0.00000000    -0.00000000  0.96D-11  0.18D-10 11163.98
   11     2     2     1.09057507    -0.79300269  -295.45552131    -0.00000000    -0.00000000  0.96D-11  0.18D-10 11163.98
   11     3     3     1.09057507    -0.79300268  -295.45552130    -0.00000000    -0.00000000  0.95D-11  0.18D-10 11163.98
   11     4     4     1.10869593    -0.80234152  -295.10378069    -0.00000001    -0.00000000  0.17D-09  0.25D-09 11163.98
   11     5     5     1.10869595    -0.80234152  -295.10378069    -0.00000001    -0.00000000  0.17D-09  0.25D-09 11163.98
   11     6     6     1.10869595    -0.80234152  -295.10378069    -0.00000001    -0.00000000  0.17D-09  0.25D-09 11163.98
   11     7     7     1.10869596    -0.80834713  -295.10378069    -0.00000001    -0.00000000  0.17D-09  0.25D-09 11163.98
   11     8     8     1.10869578    -0.80834708  -295.10378063    -0.00000001    -0.00000000  0.21D-09  0.28D-09 11163.98
   11     9     9     1.10357743    -0.80823794  -295.10367148    -0.00000000    -0.00000000  0.87D-10  0.12D-09 11163.98
   11    10    10     1.10357741    -0.80823793  -295.10367148    -0.00000000    -0.00000000  0.88D-10  0.12D-09 11163.98
   11    11    11     1.10357741    -0.80823793  -295.10367148    -0.00000000    -0.00000000  0.88D-10  0.12D-09 11163.98
   11    12    12     1.11092846    -0.81162415  -295.09421356    -0.00000001    -0.00000000  0.16D-09  0.19D-09 11163.98
   12     1     1     1.09057512    -0.79300269  -295.45552131    -0.00000000    -0.00000000  0.93D-11  0.16D-10 12097.83
   12     2     2     1.09057512    -0.79300269  -295.45552131    -0.00000000    -0.00000000  0.92D-11  0.16D-10 12097.83
   12     3     3     1.09057510    -0.79300268  -295.45552130    -0.00000000    -0.00000000  0.94D-11  0.16D-10 12097.83
   12     4     4     1.10869662    -0.80234152  -295.10378070    -0.00000000    -0.00000000  0.46D-10  0.61D-10 12097.83
   12     5     5     1.10869665    -0.80234152  -295.10378070    -0.00000000    -0.00000000  0.45D-10  0.59D-10 12097.83
   12     6     6     1.10869665    -0.80234152  -295.10378069    -0.00000000    -0.00000000  0.45D-10  0.58D-10 12097.83
   12     7     7     1.10869665    -0.80834714  -295.10378069    -0.00000000    -0.00000000  0.44D-10  0.58D-10 12097.83
   12     8     8     1.10869649    -0.80834709  -295.10378064    -0.00000000    -0.00000000  0.51D-10  0.67D-10 12097.83
   12     9     9     1.10357787    -0.80823794  -295.10367149    -0.00000000    -0.00000000  0.19D-10  0.26D-10 12097.83
   12    10    10     1.10357849    -0.80823793  -295.10367148    -0.00000000    -0.00000000  0.31D-11  0.53D-11 12097.83
   12    11    11     1.10357848    -0.80823793  -295.10367148    -0.00000000    -0.00000000  0.30D-11  0.53D-11 12097.83
   12    12    12     1.11092992    -0.81162415  -295.09421356    -0.00000000    -0.00000000  0.48D-11  0.77D-11 12097.83
   13     1     1     1.09057512    -0.79300269  -295.45552131    -0.00000000    -0.00000000  0.91D-11  0.16D-10 12965.45
   13     2     2     1.09057512    -0.79300269  -295.45552131    -0.00000000    -0.00000000  0.89D-11  0.16D-10 12965.45
   13     3     3     1.09057510    -0.79300268  -295.45552130    -0.00000000    -0.00000000  0.93D-11  0.16D-10 12965.45
   13     4     4     1.10869763    -0.80234152  -295.10378070    -0.00000000    -0.00000000  0.11D-10  0.15D-10 12965.45
   13     5     5     1.10869762    -0.80234152  -295.10378070    -0.00000000    -0.00000000  0.10D-10  0.15D-10 12965.45
   13     6     6     1.10869762    -0.80234152  -295.10378069    -0.00000000    -0.00000000  0.10D-10  0.15D-10 12965.45
   13     7     7     1.10869761    -0.80834714  -295.10378069    -0.00000000    -0.00000000  0.10D-10  0.14D-10 12965.45
   13     8     8     1.10869756    -0.80834709  -295.10378064    -0.00000000    -0.00000000  0.12D-10  0.17D-10 12965.45
   13     9     9     1.10357787    -0.80823794  -295.10367149    -0.00000000    -0.00000000  0.19D-10  0.26D-10 12965.45
   13    10    10     1.10357833    -0.80823793  -295.10367148    -0.00000000    -0.00000000  0.13D-12  0.64D-12 12965.45
   13    11    11     1.10357832    -0.80823793  -295.10367148    -0.00000000    -0.00000000  0.12D-12  0.64D-12 12965.45
   13    12    12     1.11092980    -0.81162415  -295.09421356    -0.00000000    -0.00000000  0.97D-13  0.63D-12 12965.45


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.4%
 S   0.3%   6.8%
 P   0.3%  54.5%  32.3%

 Initialization:   1.4%
 Other:            4.1%

 Total CPU:    12965.5 seconds
 =====================================



 Wavefunction saved on  5203.2

 Reference coefficients greater than 0.0500000
 =============================================
 2222222222/22000           0.3880021  -0.3443095   0.8010557   0.0000007  -0.0000003  -0.0000002   0.0000007   0.0000016
                           -0.0267959   0.0121714  -0.0025015   0.0000000
 2222222222/2/0\0          -0.0000000   0.0000000   0.0000000   0.2507107   0.1042503   0.1306125  -0.1306363   0.6885865
                            0.0000286  -0.0000276  -0.0000009  -0.5411629
 22222222222/2000           0.6788080   0.6695700  -0.0409954  -0.0000006   0.0000011  -0.0000006  -0.0000004  -0.0000002
                           -0.0108556  -0.0200374   0.0187906   0.0000000
 22222222222//\00          -0.0000000   0.0000000  -0.0000000  -0.3557690  -0.1360382  -0.1535523   0.1377335   0.6279921
                            0.0000269  -0.0000132   0.0000028   0.5411629
 2222222222//200\          -0.0000000   0.0000000  -0.0000000   0.6064806   0.2402890   0.2841651  -0.2683704   0.0605945
                            0.0000018  -0.0000145  -0.0000038   0.5411620
 2222222222//20\0           0.0035035  -0.0031090   0.0072331  -0.2050096  -0.1761866   0.0213709  -0.6022460  -0.0170185
                            0.4333898  -0.1968570   0.0404491  -0.0000001
 2222222222/2/00\           0.0035035  -0.0031089   0.0072331   0.2049871   0.1761971  -0.0213652   0.6022250   0.0169684
                            0.4334204  -0.1968680   0.0404714   0.0000000
 222222222222/000           0.5472285  -0.5864400  -0.5171209   0.0000002  -0.0000001   0.0000004  -0.0000004   0.0000003
                            0.0060461   0.0179663   0.0226513   0.0000000
 2222222222//2\00          -0.0061293  -0.0060459   0.0003702  -0.1652758   0.5767249  -0.2487987  -0.1212178  -0.0029484
                           -0.1755791  -0.3240602   0.3039060  -0.0000000
 22222222222//00\           0.0061293   0.0060459  -0.0003702  -0.1652559   0.5766898  -0.2487787  -0.1212056  -0.0029412
                            0.1755829   0.3241175  -0.3039416  -0.0000000
 2222222222/2/\00          -0.0049412   0.0052953   0.0046693  -0.2975551   0.1711984   0.5598769   0.0713475  -0.0102355
                            0.0977801   0.2905935   0.3663633   0.0000000
 22222222222//0\0          -0.0049412   0.0052953   0.0046693   0.2975605  -0.1712009  -0.5598635  -0.0713616   0.0102448
                            0.0978024   0.2905899   0.3663720   0.0000000
 2222222222022/00          -0.0096898   0.0085987  -0.0200053   0.0000101  -0.0000047  -0.0000026   0.0000094   0.0000224
                           -0.3880617   0.1762662  -0.0362272   0.0000000
 222222222222000/          -0.0136663   0.0146456   0.0129144   0.0000024  -0.0000011   0.0000060  -0.0000063   0.0000042
                            0.0875602   0.2601892   0.3280372   0.0000000
 2222222222/2\00/           0.0047985  -0.0042581   0.0099068   0.0093344   0.0080336  -0.0009717   0.0274385   0.0007562
                            0.3158811  -0.1434801   0.0294893  -0.0000000
 2222222222/\20/0           0.0047985  -0.0042581   0.0099068  -0.0093507  -0.0080258   0.0009759  -0.0274537  -0.0007927
                            0.3158799  -0.1434797   0.0294883  -0.0000000
 22222222222020/0          -0.0169523  -0.0167216   0.0010238  -0.0000089   0.0000158  -0.0000090  -0.0000055  -0.0000032
                           -0.1572114  -0.2901817   0.2721263   0.0000000
 22222222222/\0/0           0.0067677  -0.0072526  -0.0063953  -0.0135630   0.0078032   0.0255108   0.0032571  -0.0004701
                           -0.0712742  -0.2117930  -0.2670214  -0.0000000
 2222222222/2\/00           0.0067677  -0.0072526  -0.0063953   0.0135590  -0.0078014  -0.0255205  -0.0032468   0.0004633
                           -0.0712732  -0.2117932  -0.2670210  -0.0000000
 22222222222/\00/           0.0083949   0.0082807  -0.0005070  -0.0075246   0.0262701  -0.0113310  -0.0055196  -0.0001316
                            0.1279696   0.2362082  -0.2215107  -0.0000000
 2222222222/\2/00           0.0083949   0.0082807  -0.0005070   0.0075391  -0.0262957   0.0113456   0.0055286   0.0001368
                            0.1279694   0.2362056  -0.2215091  -0.0000000
 2222222222/02020          -0.0116274   0.0103180  -0.0240055   0.0237353   0.0203989  -0.0024742   0.0697269   0.0019694
                           -0.0325473   0.0147839  -0.0030373   0.0000000
 2222222222/20002          -0.0116274   0.0103180  -0.0240055  -0.0237336  -0.0203997   0.0024737  -0.0697253  -0.0019656
                           -0.0325509   0.0147851  -0.0030399  -0.0000000
 22222222220/2200          -0.0203421  -0.0200652   0.0012285  -0.0191350   0.0667718  -0.0288052  -0.0140342  -0.0003412
                           -0.0131861  -0.0243360   0.0228228  -0.0000000
 22222222222/0002          -0.0203421  -0.0200652   0.0012285   0.0191335  -0.0667691   0.0288037   0.0140333   0.0003407
                           -0.0131865  -0.0243426   0.0228269   0.0000000
 222222222202//\0          -0.0000000  -0.0000000  -0.0000000   0.0221561   0.0092488   0.0116386  -0.0116886   0.0657006
                            0.0000027  -0.0000026  -0.0000001  -0.0489102
 222222222202/200          -0.0163990   0.0175740   0.0154967  -0.0344506   0.0198212   0.0648215   0.0082608  -0.0011853
                            0.0073429   0.0218239   0.0275140   0.0000000
 222222222220/020          -0.0163990   0.0175740   0.0154967   0.0344511  -0.0198214  -0.0648205  -0.0082619   0.0011859
                            0.0073455   0.0218235   0.0275150   0.0000000
 2222222222/\200/           0.0000000   0.0000000  -0.0000000  -0.0047879  -0.0014487  -0.0010454   0.0003234   0.0600016
                            0.0000025  -0.0000019   0.0000001  -0.0000000
 2222222222220/00          -0.0029037   0.0025767  -0.0059949   0.0132108   0.0113564  -0.0013768   0.0388132   0.0010918
                            0.0586611  -0.0266451   0.0054769  -0.0000000
 2222222222202/00          -0.0029037   0.0025767  -0.0059949  -0.0132138  -0.0113550   0.0013776  -0.0388160  -0.0010986
                            0.0586590  -0.0266443   0.0054754  -0.0000000
 22222222220/2/0\          -0.0000000  -0.0000000   0.0000000   0.0572705   0.0226758   0.0267943  -0.0252829   0.0037179
                            0.0000001  -0.0000013  -0.0000004   0.0489101
 2222222222/020/\          -0.0000000  -0.0000000   0.0000000  -0.0569532  -0.0225798  -0.0267250   0.0252615  -0.0076944
                           -0.0000002   0.0000014   0.0000004  -0.0489101
 22222222220/2/\0           0.0101239  -0.0089839   0.0209015  -0.0189951  -0.0163257   0.0019800  -0.0558027  -0.0015750
                            0.0062583  -0.0028428   0.0005834  -0.0000000
 222222222202//0\           0.0101239  -0.0089839   0.0209015   0.0189948   0.0163258  -0.0019799   0.0558024   0.0015742
                            0.0062611  -0.0028438   0.0005854   0.0000000
 2222222222//\002          -0.0000000   0.0000000  -0.0000000   0.0557718   0.0220969   0.0261318  -0.0246793   0.0055723
                            0.0000002  -0.0000013  -0.0000003   0.0478066
 2222222222/\/020          -0.0000000   0.0000000   0.0000000  -0.0206876  -0.0085845  -0.0107299   0.0107081  -0.0544135
                           -0.0000023   0.0000022   0.0000001   0.0414018
 222222222220/0/\           0.0177118   0.0174707  -0.0010697  -0.0153132   0.0534369  -0.0230524  -0.0112313  -0.0002728
                            0.0025361   0.0046835  -0.0043913  -0.0000000
 2222222222/200\/           0.0000000   0.0000000   0.0000000   0.0216116   0.0089419   0.0111396  -0.0110822   0.0533334
                            0.0000022  -0.0000022  -0.0000001  -0.0433131
 2222222222///0\\           0.0098325  -0.0087253   0.0202998  -0.0000013   0.0000006   0.0000003  -0.0000012  -0.0000030
                            0.0519529  -0.0235981   0.0048500  -0.0000000
 222222222220/\/0          -0.0000000   0.0000000   0.0000000   0.0264973   0.0101005   0.0113523  -0.0101322  -0.0510171
                           -0.0000022   0.0000011  -0.0000002  -0.0433132

 Coefficients of singly external configurations greater than 0.0500000
 =====================================================================

 2222222222/2\000  20.2     0.0000000   0.0000000   0.0000000  -0.0286015  -0.0118930  -0.0149005   0.0149032  -0.0785549
                           -0.0000033   0.0000031   0.0000001   0.0632978
 22222222222/\000  21.2    -0.0000000  -0.0000000   0.0000000   0.0405866   0.0155194   0.0175175  -0.0157128  -0.0716426
                           -0.0000031   0.0000015  -0.0000003  -0.0632978
 2222222222/\2000  22.2    -0.0000000   0.0000000   0.0000000  -0.0691883  -0.0274126  -0.0324180   0.0306162  -0.0069130
                           -0.0000002   0.0000017   0.0000004  -0.0632977
 2222222222/\2000  20.2    -0.0004765   0.0004228  -0.0009837   0.0233878   0.0200997  -0.0024380   0.0687051   0.0019414
                           -0.0476867   0.0216605  -0.0044507   0.0000000
 2222222222/2\000  22.2    -0.0004764   0.0004228  -0.0009837  -0.0233853  -0.0201008   0.0024374  -0.0687028  -0.0019359
                           -0.0476902   0.0216618  -0.0044532  -0.0000000
 2222222222/\2000  21.2     0.0008335   0.0008222  -0.0000503   0.0188549  -0.0657936   0.0283833   0.0138287   0.0003363
                            0.0193193   0.0356569  -0.0334393   0.0000000
 22222222222/\000  22.2    -0.0008335  -0.0008222   0.0000503   0.0188527  -0.0657897   0.0283811   0.0138273   0.0003356
                           -0.0193198  -0.0356634   0.0334434   0.0000000
 2222222222/2\000  21.2     0.0006720  -0.0007201  -0.0006350   0.0339456  -0.0195306  -0.0638716  -0.0081395   0.0011677
                           -0.0107589  -0.0319746  -0.0403117  -0.0000000
 22222222222/\000  20.2     0.0006720  -0.0007201  -0.0006350  -0.0339462   0.0195309   0.0638701   0.0081410  -0.0011687
                           -0.0107614  -0.0319742  -0.0403127  -0.0000000

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.548936    0.389213    0.680927   -0.006158   -0.003520    0.004965   -0.000000   -0.000000    0.000000   -0.000000
            -0.000000   -0.000000
 2          -0.588270   -0.345384    0.671660   -0.006075    0.003124   -0.005320   -0.000000   -0.000000    0.000000    0.000000
             0.000000    0.000000
 3          -0.518735    0.803556   -0.041123    0.000372   -0.007268   -0.004692    0.000000   -0.000000    0.000000    0.000000
            -0.000000   -0.000000
 4          -0.000000   -0.000000    0.000000    0.000020   -0.000022    0.000005    0.711170   -0.237539    0.294647   -0.427684
             0.264269    0.000000
 5           0.000000    0.000000   -0.000000   -0.000035    0.000011   -0.000002    0.278658    0.828910    0.253243    0.246068
             0.111052    0.000000
 6          -0.000000    0.000000    0.000000    0.000020    0.000006    0.000014    0.324908   -0.357588   -0.030713    0.804710
             0.140787    0.000000
 7           0.000000   -0.000000    0.000000    0.000012   -0.000021   -0.000014   -0.302243   -0.174219    0.865602    0.102559
            -0.142363   -0.000000
 8          -0.000000   -0.000000    0.000000    0.000007   -0.000050    0.000009   -0.348465   -0.004233    0.024425   -0.014718
             0.882892   -0.000000
 9          -0.001906    0.008448    0.003422    0.349758    0.863344    0.194800   -0.000016    0.000003    0.000022   -0.000016
             0.000037    0.000000
 10         -0.005664   -0.003837    0.006317    0.645585   -0.392150    0.578859   -0.000003    0.000041   -0.000008    0.000002
            -0.000034   -0.000000
 11         -0.007141    0.000789   -0.005924   -0.605416    0.080597    0.729805   -0.000005   -0.000026    0.000016   -0.000007
            -0.000001   -0.000000
 12         -0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.000000   -0.000001   -0.000000    0.000000    0.000000
            -0.000000    0.948661

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.957368    0.000000    0.000000    0.000000   -0.000000    0.000000    0.000000   -0.000000    0.000181   -0.000012
            -0.000303    0.000000
 2           0.000000    0.957368    0.000000    0.000000   -0.000000    0.000000    0.000000    0.000000    0.000020    0.000353
            -0.000002   -0.000000
 3           0.000000    0.000000    0.957368   -0.000000    0.000000    0.000000   -0.000000   -0.000000    0.000303   -0.000016
             0.000182    0.000000
 4           0.000000    0.000000   -0.000000    0.949609   -0.000000    0.000000    0.000000   -0.000000   -0.000000    0.000000
            -0.000000   -0.000000
 5          -0.000000   -0.000000    0.000000   -0.000000    0.949609   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000
             0.000000   -0.000000
 6           0.000000    0.000000    0.000000    0.000000   -0.000000    0.949609    0.000000   -0.000000    0.000000    0.000000
            -0.000000   -0.000000
 7           0.000000    0.000000   -0.000000    0.000000   -0.000000    0.000000    0.949609    0.000000   -0.000000    0.000000
            -0.000000    0.000000
 8          -0.000000    0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.949609   -0.000000    0.000000
            -0.000000   -0.000000
 9           0.000181    0.000020    0.000303   -0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.951697   -0.000000
             0.000000   -0.000000
 10         -0.000012    0.000353   -0.000016    0.000000   -0.000000    0.000000    0.000000    0.000000   -0.000000    0.951696
            -0.000000    0.000000
 11         -0.000303   -0.000002    0.000182   -0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.000000   -0.000000
             0.951696    0.000000
 12          0.000000   -0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.000000
             0.000000    0.948661


 RESULTS FOR STATE 1.2
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.68092653 (fixed)   0.95753562 (relaxed)   0.95736814 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00042947   -0.00047173   -0.67592758
 Singles      0.01355295   -0.05587688   -0.06106511
 Pairs        0.07706107    0.00000000   -0.05601000
 Total        1.09104349   -0.05634861   -0.79300269
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -294.66248662
 Nuclear energy                         0.00000000
 Kinetic energy                       111.39073280
 One electron energy                 -513.19384686
 Two electron energy                  217.73832555
 Virial quotient                       -2.65242461
 Correlation energy                    -0.79303468
 !MRCI STATE 1.2 Energy              -295.455521307282

 Properties without orbital relaxation:

 !MRCI STATE 1.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -295.52772195 (Davidson, fixed reference)
 Cluster corrected energies          -295.52741931 (Davidson, relaxed reference)
 Cluster corrected energies          -295.52772195 (Davidson, rotated reference)

 Cluster corrected energies          -295.52708580 (Pople, fixed reference)
 Cluster corrected energies          -295.52676178 (Pople, relaxed reference)
 Cluster corrected energies          -295.52708580 (Pople, rotated reference)



 RESULTS FOR STATE 2.2
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.67165976 (fixed)   0.95753561 (relaxed)   0.95736814 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00042947   -0.00047173   -0.67592757
 Singles      0.01355295   -0.05587688   -0.06106511
 Pairs        0.07706107   -0.00000000   -0.05601001
 Total        1.09104349   -0.05634861   -0.79300269
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -294.66248662
 Nuclear energy                         0.00000000
 Kinetic energy                       111.39073269
 One electron energy                 -513.19384674
 Two electron energy                  217.73832543
 Virial quotient                       -2.65242462
 Correlation energy                    -0.79303468
 !MRCI STATE 2.2 Energy              -295.455521306372

 Properties without orbital relaxation:

 !MRCI STATE 2.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -295.52772195 (Davidson, fixed reference)
 Cluster corrected energies          -295.52741931 (Davidson, relaxed reference)
 Cluster corrected energies          -295.52772195 (Davidson, rotated reference)

 Cluster corrected energies          -295.52708580 (Pople, fixed reference)
 Cluster corrected energies          -295.52676179 (Pople, relaxed reference)
 Cluster corrected energies          -295.52708580 (Pople, rotated reference)



 RESULTS FOR STATE 3.2
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.80355582 (fixed)   0.95753562 (relaxed)   0.95736814 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00042947   -0.00047173   -0.67592759
 Singles      0.01355294   -0.05587687   -0.06106510
 Pairs        0.07706106    0.00000000   -0.05600999
 Total        1.09104347   -0.05634860   -0.79300268
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -294.66248662
 Nuclear energy                         0.00000000
 Kinetic energy                       111.39073301
 One electron energy                 -513.19384706
 Two electron energy                  217.73832575
 Virial quotient                       -2.65242461
 Correlation energy                    -0.79303468
 !MRCI STATE 3.2 Energy              -295.455521303534

 Properties without orbital relaxation:

 !MRCI STATE 3.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -295.52772193 (Davidson, fixed reference)
 Cluster corrected energies          -295.52741929 (Davidson, relaxed reference)
 Cluster corrected energies          -295.52772193 (Davidson, rotated reference)

 Cluster corrected energies          -295.52708578 (Pople, fixed reference)
 Cluster corrected energies          -295.52676177 (Pople, relaxed reference)
 Cluster corrected energies          -295.52708578 (Pople, rotated reference)



 RESULTS FOR STATE 4.2
 =====================

 Maximum overlap with reference state  7

 Coefficient of reference function:   C(0) = 0.71116996 (fixed)   0.94967170 (relaxed)   0.94960872 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00022452   -0.00051949   -0.64519661
 Singles      0.03549837   -0.08703276   -0.10416543
 Pairs        0.07322366   -0.00000034   -0.05297948
 Total        1.10894655   -0.08755259   -0.80234152
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -294.29543355
 Nuclear energy                         0.00000000
 Kinetic energy                       111.34373508
 One electron energy                 -509.57151066
 Two electron energy                  214.46772996
 Virial quotient                       -2.65038514
 Correlation energy                    -0.80834715
 !MRCI STATE 4.2 Energy              -295.103780697497

 Properties without orbital relaxation:

 !MRCI STATE 4.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -295.19184733 (Davidson, fixed reference)
 Cluster corrected energies          -295.19172843 (Davidson, relaxed reference)
 Cluster corrected energies          -295.19184733 (Davidson, rotated reference)

 Cluster corrected energies          -295.19247230 (Pople, fixed reference)
 Cluster corrected energies          -295.19234090 (Pople, relaxed reference)
 Cluster corrected energies          -295.19247230 (Pople, rotated reference)



 RESULTS FOR STATE 5.2
 =====================

 Maximum overlap with reference state  8

 Coefficient of reference function:   C(0) = 0.82891042 (fixed)   0.94967171 (relaxed)   0.94960872 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00022452   -0.00051949   -0.64519680
 Singles      0.03549836   -0.08703274   -0.10416541
 Pairs        0.07322367   -0.00000016   -0.05297931
 Total        1.10894655   -0.08755239   -0.80234152
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -294.29543355
 Nuclear energy                         0.00000000
 Kinetic energy                       111.34373476
 One electron energy                 -509.57151050
 Two electron energy                  214.46772980
 Virial quotient                       -2.65038515
 Correlation energy                    -0.80834715
 !MRCI STATE 5.2 Energy              -295.103780695695

 Properties without orbital relaxation:

 !MRCI STATE 5.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -295.19184733 (Davidson, fixed reference)
 Cluster corrected energies          -295.19172842 (Davidson, relaxed reference)
 Cluster corrected energies          -295.19184733 (Davidson, rotated reference)

 Cluster corrected energies          -295.19247230 (Pople, fixed reference)
 Cluster corrected energies          -295.19234089 (Pople, relaxed reference)
 Cluster corrected energies          -295.19247230 (Pople, rotated reference)



 RESULTS FOR STATE 6.2
 =====================

 Maximum overlap with reference state 10

 Coefficient of reference function:   C(0) = 0.80471012 (fixed)   0.94967171 (relaxed)   0.94960872 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00022452   -0.00051949   -0.64519681
 Singles      0.03549836   -0.08703274   -0.10416541
 Pairs        0.07322367   -0.00000015   -0.05297930
 Total        1.10894655   -0.08755238   -0.80234152
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -294.29543355
 Nuclear energy                         0.00000000
 Kinetic energy                       111.34373474
 One electron energy                 -509.57151034
 Two electron energy                  214.46772964
 Virial quotient                       -2.65038515
 Correlation energy                    -0.80834714
 !MRCI STATE 6.2 Energy              -295.103780692228

 Properties without orbital relaxation:

 !MRCI STATE 6.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -295.19184732 (Davidson, fixed reference)
 Cluster corrected energies          -295.19172841 (Davidson, relaxed reference)
 Cluster corrected energies          -295.19184732 (Davidson, rotated reference)

 Cluster corrected energies          -295.19247229 (Pople, fixed reference)
 Cluster corrected energies          -295.19234089 (Pople, relaxed reference)
 Cluster corrected energies          -295.19247229 (Pople, rotated reference)



 RESULTS FOR STATE 7.2
 =====================

 Maximum overlap with reference state  9

 Coefficient of reference function:   C(0) = 0.86560248 (fixed)   0.94967171 (relaxed)   0.94960872 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00022452   -0.00051949   -0.65061397
 Singles      0.03549835   -0.08703273   -0.10435765
 Pairs        0.07322367    0.00000022   -0.05337552
 Total        1.10894654   -0.08755200   -0.80834714
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -294.29543355
 Nuclear energy                         0.00000000
 Kinetic energy                       111.34373459
 One electron energy                 -509.57151050
 Two electron energy                  214.46772981
 Virial quotient                       -2.65038515
 Correlation energy                    -0.80834714
 !MRCI STATE 7.2 Energy              -295.103780688344

 Properties without orbital relaxation:

 !MRCI STATE 7.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -295.19184731 (Davidson, fixed reference)
 Cluster corrected energies          -295.19172841 (Davidson, relaxed reference)
 Cluster corrected energies          -295.19184731 (Davidson, rotated reference)

 Cluster corrected energies          -295.19247228 (Pople, fixed reference)
 Cluster corrected energies          -295.19234088 (Pople, relaxed reference)
 Cluster corrected energies          -295.19247228 (Pople, rotated reference)



 RESULTS FOR STATE 8.2
 =====================

 Maximum overlap with reference state 11

 Coefficient of reference function:   C(0) = 0.88289168 (fixed)   0.94967173 (relaxed)   0.94960875 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00022452   -0.00051949   -0.65061385
 Singles      0.03549835   -0.08703272   -0.10435760
 Pairs        0.07322362    0.00000008   -0.05337564
 Total        1.10894649   -0.08755213   -0.80834709
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -294.29543355
 Nuclear energy                         0.00000000
 Kinetic energy                       111.34373460
 One electron energy                 -509.57150949
 Two electron energy                  214.46772885
 Virial quotient                       -2.65038515
 Correlation energy                    -0.80834709
 !MRCI STATE 8.2 Energy              -295.103780637952

 Properties without orbital relaxation:

 !MRCI STATE 8.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -295.19184721 (Davidson, fixed reference)
 Cluster corrected energies          -295.19172830 (Davidson, relaxed reference)
 Cluster corrected energies          -295.19184721 (Davidson, rotated reference)

 Cluster corrected energies          -295.19247218 (Pople, fixed reference)
 Cluster corrected energies          -295.19234077 (Pople, relaxed reference)
 Cluster corrected energies          -295.19247218 (Pople, rotated reference)



 RESULTS FOR STATE 9.2
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.86334368 (fixed)   0.95185519 (relaxed)   0.95169664 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00046049   -0.00063300   -0.65640027
 Singles      0.03159090   -0.08388769   -0.09910544
 Pairs        0.07203466   -0.00000004   -0.05273223
 Total        1.10408605   -0.08452073   -0.80823794
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -294.30147117
 Nuclear energy                         0.00000000
 Kinetic energy                       111.30791278
 One electron energy                 -509.42497559
 Two electron energy                  214.32130410
 Virial quotient                       -2.65123713
 Correlation energy                    -0.80220032
 !MRCI STATE 9.2 Energy              -295.103671485598

 Properties without orbital relaxation:

 !MRCI STATE 9.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -295.18716935 (Davidson, fixed reference)
 Cluster corrected energies          -295.18687432 (Davidson, relaxed reference)
 Cluster corrected energies          -295.18716935 (Davidson, rotated reference)

 Cluster corrected energies          -295.18739767 (Pople, fixed reference)
 Cluster corrected energies          -295.18707448 (Pople, relaxed reference)
 Cluster corrected energies          -295.18739767 (Pople, rotated reference)



 RESULTS FOR STATE 10.2
 ======================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.64558521 (fixed)   0.95185499 (relaxed)   0.95169644 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00046050   -0.00063300   -0.65639987
 Singles      0.03159097   -0.08388792   -0.09910544
 Pairs        0.07203505    0.00000004   -0.05273262
 Total        1.10408652   -0.08452088   -0.80823793
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -294.30147117
 Nuclear energy                         0.00000000
 Kinetic energy                       111.30791999
 One electron energy                 -509.42497436
 Two electron energy                  214.32130288
 Virial quotient                       -2.65123696
 Correlation energy                    -0.80220031
 !MRCI STATE 10.2 Energy             -295.103671482301

 Properties without orbital relaxation:

 !MRCI STATE 10.2 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -295.18716972 (Davidson, fixed reference)
 Cluster corrected energies          -295.18687468 (Davidson, relaxed reference)
 Cluster corrected energies          -295.18716972 (Davidson, rotated reference)

 Cluster corrected energies          -295.18739808 (Pople, fixed reference)
 Cluster corrected energies          -295.18707488 (Pople, relaxed reference)
 Cluster corrected energies          -295.18739808 (Pople, rotated reference)



 RESULTS FOR STATE 11.2
 ======================

 Maximum overlap with reference state  6

 Coefficient of reference function:   C(0) = 0.72980462 (fixed)   0.95185500 (relaxed)   0.95169644 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00046050   -0.00063300   -0.65639988
 Singles      0.03159097   -0.08388791   -0.09910544
 Pairs        0.07203505    0.00000005   -0.05273262
 Total        1.10408652   -0.08452087   -0.80823793
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -294.30147117
 Nuclear energy                         0.00000000
 Kinetic energy                       111.30791993
 One electron energy                 -509.42497422
 Two electron energy                  214.32130274
 Virial quotient                       -2.65123696
 Correlation energy                    -0.80220031
 !MRCI STATE 11.2 Energy             -295.103671477919

 Properties without orbital relaxation:

 !MRCI STATE 11.2 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -295.18716971 (Davidson, fixed reference)
 Cluster corrected energies          -295.18687467 (Davidson, relaxed reference)
 Cluster corrected energies          -295.18716971 (Davidson, rotated reference)

 Cluster corrected energies          -295.18739807 (Pople, fixed reference)
 Cluster corrected energies          -295.18707487 (Pople, relaxed reference)
 Cluster corrected energies          -295.18739807 (Pople, rotated reference)



 RESULTS FOR STATE 12.2
 ======================

 Coefficient of reference function:   C(0) = 0.94866052 (fixed)   0.94871633 (relaxed)   0.94866052 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00021123   -0.00051950   -0.00062182
 Singles      0.03795512   -0.09098054   -0.10960203
 Pairs        0.07299811   -0.72012411   -0.70140031
 Total        1.11116446   -0.81162415   -0.81162415
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -294.28258941
 Nuclear energy                         0.00000000
 Kinetic energy                       111.33804877
 One electron energy                 -509.54383996
 Two electron energy                  214.44962639
 Virial quotient                       -2.65043457
 Correlation energy                    -0.81162415
 !MRCI STATE 12.2 Energy             -295.094213564086

 Properties without orbital relaxation:

 !MRCI STATE 12.2 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -295.18443733 (Davidson, fixed reference)
 Cluster corrected energies          -295.18433124 (Davidson, relaxed reference)
 Cluster corrected energies          -295.18443733 (Davidson, rotated reference)

 Cluster corrected energies          -295.18525817 (Pople, fixed reference)
 Cluster corrected energies          -295.18514047 (Pople, relaxed reference)
 Cluster corrected energies          -295.18525817 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       39.05       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       6     1244.23       700     1000      520     2100     2140     5203   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *     15000.51  14993.90      5.16      0.16      1.06
 REAL TIME  *     15288.50 SEC
 DISK USED  *         1.25 GB (local),       10.08 GB (total)
 SF USED    *        12.90 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =      -295.52772195  AU                              
 SETTING HLSDIAG(2)     =      -295.52772195  AU                              
 SETTING HLSDIAG(3)     =      -295.52772193  AU                              
 SETTING HLSDIAG(4)     =      -295.19184733  AU                              
 SETTING HLSDIAG(5)     =      -295.19184733  AU                              
 SETTING HLSDIAG(6)     =      -295.19184732  AU                              
 SETTING HLSDIAG(7)     =      -295.19184731  AU                              
 SETTING HLSDIAG(8)     =      -295.19184721  AU                              
 SETTING HLSDIAG(9)     =      -295.18716935  AU                              
 SETTING HLSDIAG(10)    =      -295.18716972  AU                              
 SETTING HLSDIAG(11)    =      -295.18716971  AU                              
 SETTING HLSDIAG(12)    =      -295.18443733  AU                              


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-09

 Number of optimized states: 9  Roots:    1   2   3   4   5   6   7   8   9
 Number of reference states: 9  Roots:    1   2   3   4   5   6   7   8   9

 Reference symmetry:                   2   Quartet 
 Number of electrons:                 25
 Maximum number of shells:             5
 Maximum number of spin couplings:   165

 Reference space:      132 conf      168 CSFs
 N elec internal:    13636 conf    42944 CSFs
 N-1 el internal:    15469 conf   107720 CSFs
 N-2 el internal:     8549 conf   109646 CSFs

 Number of electrons in valence space:                     25
 Maximum number of open shell orbitals in reference space:  5
 Maximum number of open shell orbitals in internal spaces: 11


 Number of closed-shell orbitals:   9 (   6   3 )
 Number of active  orbitals:        7 (   1   6 )
 Number of external orbitals:      96 (  46  50 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Coulomb and exchange operators available. No transformation done.


 Number of p-space configurations:  30

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -294.32761114
     2      -294.32761114
     3      -294.32761114
     4      -294.30938972
     5      -294.30938972
     6      -294.30938972
     7      -294.30938972
     8      -294.30938972
     9      -294.28427391

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1684D-06

 Number of blocks in overlap matrix:   953   Smallest eigenvalue:  0.17D-06
 Number of N-2 electron functions:    2199
 Number of N-1 electron functions:  107720

 Number of internal configurations:                21432
 Number of singly external configurations:       5171200
 Number of doubly external configurations:       5068092
 Total number of contracted configurations:     10260724
 Total number of uncontracted configurations:  256637568

 Diagonal Coupling coefficients finished.               Storage:  19050069 words, CPU-Time:     62.38 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   1674207 words, CPU-time:      0.21 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -294.32761114    -0.00000000    -0.97379241  0.91D-01  0.10D+00    70.19
    1     2     2     1.00000000     0.00000000  -294.32761114    -0.00000000    -0.97389649  0.91D-01  0.10D+00    70.19
    1     3     3     1.00000000     0.00000000  -294.32761114     0.00000000    -0.97371982  0.91D-01  0.10D+00    70.19
    1     4     4     1.00000000     0.00000000  -294.30938972     0.00000000    -0.97900920  0.89D-01  0.10D+00    70.19
    1     5     5     1.00000000     0.00000000  -294.30938972     0.00000000    -0.97835194  0.89D-01  0.10D+00    70.19
    1     6     6     1.00000000     0.00000000  -294.30938972    -0.00000000    -0.97859814  0.90D-01  0.10D+00    70.19
    1     7     7     1.00000000     0.00000000  -294.30938972     0.00000000    -0.97831722  0.89D-01  0.10D+00    70.19
    1     8     8     1.00000000     0.00000000  -294.30938972     0.00000000    -0.98338073  0.98D-01  0.11D+00    70.19
    1     9     9     1.00000000     0.00000000  -294.28427391     0.00000000    -0.99040915  0.11D+00  0.11D+00    70.19
    2     1     1     1.12114169    -0.77084083  -295.09845197    -0.77084083    -0.02538102  0.74D-02  0.16D-02   583.87
    2     2     2     1.12116983    -0.77081625  -295.09842739    -0.77081625    -0.02542249  0.74D-02  0.16D-02   583.87
    2     3     3     1.12119391    -0.77076359  -295.09837473    -0.77076359    -0.02549198  0.74D-02  0.16D-02   583.87
    2     4     4     1.12165099    -0.77793061  -295.08732034    -0.77793061    -0.02337820  0.60D-02  0.16D-02   583.87
    2     5     5     1.12149502    -0.77756613  -295.08695586    -0.77756613    -0.02361473  0.61D-02  0.17D-02   583.87
    2     6     6     1.12160617    -0.77748400  -295.08687373    -0.77748400    -0.02373264  0.61D-02  0.17D-02   583.87
    2     7     7     1.12154321    -0.77747309  -295.08686281    -0.77747309    -0.02370218  0.61D-02  0.17D-02   583.87
    2     8     8     1.12437356    -0.77561103  -295.08500075    -0.77561103    -0.02516766  0.71D-02  0.17D-02   583.87
    2     9     9     1.13385770    -0.78197017  -295.06624408    -0.78197017    -0.02487041  0.76D-02  0.18D-02   583.87
    3     1     1     1.10028372    -0.79634742  -295.12395856    -0.02550659    -0.00091623  0.20D-03  0.11D-03  1096.37
    3     2     2     1.10028611    -0.79634724  -295.12395838    -0.02553099    -0.00091836  0.20D-03  0.11D-03  1096.37
    3     3     3     1.10026948    -0.79634692  -295.12395806    -0.02558333    -0.00091540  0.20D-03  0.11D-03  1096.37
    3     4     4     1.10360264    -0.80141206  -295.11080178    -0.02348144    -0.00085850  0.18D-03  0.11D-03  1096.37
    3     5     5     1.10340920    -0.80135252  -295.11074224    -0.02378639    -0.00089685  0.18D-03  0.12D-03  1096.37
    3     6     6     1.10338577    -0.80134925  -295.11073897    -0.02386524    -0.00089557  0.18D-03  0.12D-03  1096.37
    3     7     7     1.10337178    -0.80133534  -295.11072506    -0.02386225    -0.00090378  0.18D-03  0.12D-03  1096.37
    3     8     8     1.10396033    -0.80128698  -295.11067670    -0.02567595    -0.00096501  0.21D-03  0.12D-03  1096.37
    3     9     9     1.10872576    -0.80730506  -295.09157897    -0.02533490    -0.00099989  0.22D-03  0.13D-03  1096.37
    4     1     1     1.09978783    -0.79746734  -295.12507849    -0.00111992    -0.00007938  0.50D-05  0.13D-04  1611.86
    4     2     2     1.09978427    -0.79746669  -295.12507783    -0.00111945    -0.00007958  0.50D-05  0.13D-04  1611.86
    4     3     3     1.09978052    -0.79746665  -295.12507780    -0.00111973    -0.00007966  0.51D-05  0.13D-04  1611.86
    4     4     4     1.10298899    -0.80248308  -295.11187280    -0.00107102    -0.00008692  0.57D-05  0.15D-04  1611.86
    4     5     5     1.10297660    -0.80247625  -295.11186597    -0.00112373    -0.00009095  0.63D-05  0.16D-04  1611.86
    4     6     6     1.10292844    -0.80247581  -295.11186553    -0.00112656    -0.00009247  0.62D-05  0.15D-04  1611.86
    4     7     7     1.10291953    -0.80247494  -295.11186466    -0.00113961    -0.00009298  0.63D-05  0.15D-04  1611.86
    4     8     8     1.10290735    -0.80247233  -295.11186205    -0.00118536    -0.00009462  0.65D-05  0.16D-04  1611.86
    4     9     9     1.10745914    -0.80856278  -295.09283669    -0.00125771    -0.00009962  0.76D-05  0.17D-04  1611.86
    5     1     1     1.10036812    -0.79757486  -295.12518601    -0.00010752    -0.00000919  0.99D-06  0.14D-05  2129.19
    5     2     2     1.10036875    -0.79757480  -295.12518594    -0.00010811    -0.00000924  0.10D-05  0.14D-05  2129.19
    5     3     3     1.10036922    -0.79757478  -295.12518592    -0.00010813    -0.00000924  0.10D-05  0.14D-05  2129.19
    5     4     4     1.10373401    -0.80260681  -295.11199654    -0.00012373    -0.00001281  0.14D-05  0.19D-05  2129.19
    5     5     5     1.10373901    -0.80260673  -295.11199645    -0.00013048    -0.00001326  0.14D-05  0.20D-05  2129.19
    5     6     6     1.10373787    -0.80260672  -295.11199644    -0.00013091    -0.00001323  0.14D-05  0.20D-05  2129.19
    5     7     7     1.10373699    -0.80260651  -295.11199623    -0.00013157    -0.00001345  0.14D-05  0.20D-05  2129.19
    5     8     8     1.10371594    -0.80260563  -295.11199535    -0.00013330    -0.00001346  0.14D-05  0.21D-05  2129.19
    5     9     9     1.10844299    -0.80870535  -295.09297926    -0.00014257    -0.00001533  0.17D-05  0.23D-05  2129.19
    6     1     1     1.10047440    -0.79758655  -295.12519770    -0.00001169    -0.00000096  0.60D-07  0.15D-06  2641.04
    6     2     2     1.10047449    -0.79758656  -295.12519770    -0.00001176    -0.00000096  0.59D-07  0.15D-06  2641.04
    6     3     3     1.10047462    -0.79758655  -295.12519769    -0.00001177    -0.00000096  0.60D-07  0.15D-06  2641.04
    6     4     4     1.10387047    -0.80262472  -295.11201444    -0.00001791    -0.00000214  0.12D-06  0.34D-06  2641.04
    6     5     5     1.10386887    -0.80262470  -295.11201442    -0.00001797    -0.00000215  0.12D-06  0.34D-06  2641.04
    6     6     6     1.10387050    -0.80262470  -295.11201442    -0.00001798    -0.00000215  0.12D-06  0.34D-06  2641.04
    6     7     7     1.10387412    -0.80262444  -295.11201416    -0.00001793    -0.00000213  0.12D-06  0.34D-06  2641.04
    6     8     8     1.10387295    -0.80262426  -295.11201398    -0.00001863    -0.00000225  0.13D-06  0.36D-06  2641.04
    6     9     9     1.10862419    -0.80872680  -295.09300071    -0.00002145    -0.00000275  0.16D-06  0.45D-06  2641.04
    7     1     1     1.10051928    -0.79758773  -295.12519887    -0.00000117    -0.00000013  0.14D-07  0.21D-07  3153.19
    7     2     2     1.10051932    -0.79758773  -295.12519887    -0.00000118    -0.00000013  0.14D-07  0.21D-07  3153.19
    7     3     3     1.10051934    -0.79758773  -295.12519887    -0.00000118    -0.00000013  0.14D-07  0.21D-07  3153.19
    7     4     4     1.10391676    -0.80262771  -295.11201744    -0.00000300    -0.00000051  0.53D-07  0.70D-07  3153.19
    7     5     5     1.10391715    -0.80262771  -295.11201743    -0.00000301    -0.00000052  0.54D-07  0.70D-07  3153.19
    7     6     6     1.10391643    -0.80262771  -295.11201743    -0.00000301    -0.00000052  0.53D-07  0.70D-07  3153.19
    7     7     7     1.10391877    -0.80262742  -295.11201714    -0.00000298    -0.00000051  0.52D-07  0.69D-07  3153.19
    7     8     8     1.10391999    -0.80262739  -295.11201711    -0.00000313    -0.00000052  0.53D-07  0.73D-07  3153.19
    7     9     9     1.10866050    -0.80873073  -295.09300464    -0.00000393    -0.00000068  0.67D-07  0.93D-07  3153.19
    8     1     1     1.10051345    -0.79758791  -295.12519905    -0.00000018    -0.00000002  0.20D-08  0.36D-08  3669.89
    8     2     2     1.10051345    -0.79758791  -295.12519905    -0.00000018    -0.00000002  0.20D-08  0.36D-08  3669.89
    8     3     3     1.10051353    -0.79758791  -295.12519905    -0.00000018    -0.00000002  0.20D-08  0.36D-08  3669.89
    8     4     4     1.10390240    -0.80262841  -295.11201813    -0.00000070    -0.00000012  0.11D-07  0.17D-07  3669.89
    8     5     5     1.10390244    -0.80262841  -295.11201813    -0.00000070    -0.00000012  0.11D-07  0.17D-07  3669.89
    8     6     6     1.10390244    -0.80262841  -295.11201813    -0.00000070    -0.00000012  0.11D-07  0.17D-07  3669.89
    8     7     7     1.10390219    -0.80262811  -295.11201783    -0.00000069    -0.00000012  0.11D-07  0.17D-07  3669.89
    8     8     8     1.10390175    -0.80262810  -295.11201782    -0.00000071    -0.00000013  0.12D-07  0.17D-07  3669.89
    8     9     9     1.10864796    -0.80873165  -295.09300556    -0.00000092    -0.00000017  0.19D-07  0.23D-07  3669.89
    9     1     1     1.10051452    -0.79758794  -295.12519908    -0.00000003    -0.00000000  0.31D-09  0.58D-09  4185.43
    9     2     2     1.10051451    -0.79758794  -295.12519908    -0.00000003    -0.00000000  0.31D-09  0.58D-09  4185.43
    9     3     3     1.10051455    -0.79758794  -295.12519908    -0.00000003    -0.00000000  0.32D-09  0.59D-09  4185.43
    9     4     4     1.10390396    -0.80262856  -295.11201829    -0.00000015    -0.00000003  0.19D-08  0.41D-08  4185.43
    9     5     5     1.10390399    -0.80262856  -295.11201829    -0.00000015    -0.00000003  0.19D-08  0.41D-08  4185.43
    9     6     6     1.10390393    -0.80262856  -295.11201829    -0.00000015    -0.00000003  0.19D-08  0.41D-08  4185.43
    9     7     7     1.10390377    -0.80262826  -295.11201798    -0.00000015    -0.00000003  0.18D-08  0.41D-08  4185.43
    9     8     8     1.10390359    -0.80262825  -295.11201797    -0.00000016    -0.00000003  0.20D-08  0.43D-08  4185.43
    9     9     9     1.10865347    -0.80873186  -295.09300577    -0.00000021    -0.00000004  0.30D-08  0.61D-08  4185.43
   10     1     1     1.10051733    -0.79758794  -295.12519909    -0.00000000    -0.00000000  0.59D-10  0.10D-09  4696.17
   10     2     2     1.10051732    -0.79758794  -295.12519908    -0.00000000    -0.00000000  0.58D-10  0.10D-09  4696.17
   10     3     3     1.10051733    -0.79758794  -295.12519908    -0.00000000    -0.00000000  0.60D-10  0.11D-09  4696.17
   10     4     4     1.10391299    -0.80262860  -295.11201832    -0.00000004    -0.00000001  0.66D-09  0.10D-08  4696.17
   10     5     5     1.10391299    -0.80262860  -295.11201832    -0.00000004    -0.00000001  0.66D-09  0.10D-08  4696.17
   10     6     6     1.10391300    -0.80262860  -295.11201832    -0.00000004    -0.00000001  0.64D-09  0.99D-09  4696.17
   10     7     7     1.10391286    -0.80262829  -295.11201802    -0.00000004    -0.00000001  0.63D-09  0.99D-09  4696.17
   10     8     8     1.10391290    -0.80262829  -295.11201801    -0.00000004    -0.00000001  0.63D-09  0.10D-08  4696.17
   10     9     9     1.10866468    -0.80873192  -295.09300583    -0.00000006    -0.00000001  0.93D-09  0.16D-08  4696.17
   11     1     1     1.10051704    -0.79758794  -295.12519909    -0.00000000    -0.00000000  0.15D-10  0.21D-10  5210.14
   11     2     2     1.10051705    -0.79758794  -295.12519909    -0.00000000    -0.00000000  0.14D-10  0.21D-10  5210.14
   11     3     3     1.10051705    -0.79758794  -295.12519909    -0.00000000    -0.00000000  0.15D-10  0.22D-10  5210.14
   11     4     4     1.10391213    -0.80262861  -295.11201833    -0.00000001    -0.00000000  0.20D-09  0.26D-09  5210.14
   11     5     5     1.10391212    -0.80262861  -295.11201833    -0.00000001    -0.00000000  0.20D-09  0.26D-09  5210.14
   11     6     6     1.10391213    -0.80262861  -295.11201833    -0.00000001    -0.00000000  0.19D-09  0.26D-09  5210.14
   11     7     7     1.10391200    -0.80262830  -295.11201803    -0.00000001    -0.00000000  0.19D-09  0.25D-09  5210.14
   11     8     8     1.10391192    -0.80262830  -295.11201802    -0.00000001    -0.00000000  0.21D-09  0.26D-09  5210.14
   11     9     9     1.10866365    -0.80873193  -295.09300584    -0.00000001    -0.00000000  0.36D-09  0.42D-09  5210.14
   12     1     1     1.10051704    -0.79758794  -295.12519909     0.00000000    -0.00000000  0.15D-10  0.21D-10  5623.92
   12     2     2     1.10051705    -0.79758794  -295.12519909    -0.00000000    -0.00000000  0.14D-10  0.21D-10  5623.92
   12     3     3     1.10051705    -0.79758794  -295.12519909    -0.00000000    -0.00000000  0.15D-10  0.22D-10  5623.92
   12     4     4     1.10391228    -0.80262861  -295.11201834    -0.00000000    -0.00000000  0.38D-10  0.70D-10  5623.92
   12     5     5     1.10391228    -0.80262861  -295.11201833    -0.00000000    -0.00000000  0.38D-10  0.71D-10  5623.92
   12     6     6     1.10391228    -0.80262861  -295.11201833    -0.00000000    -0.00000000  0.38D-10  0.70D-10  5623.92
   12     7     7     1.10391331    -0.80262831  -295.11201803    -0.00000000    -0.00000000  0.82D-11  0.10D-10  5623.92
   12     8     8     1.10391333    -0.80262831  -295.11201803    -0.00000000    -0.00000000  0.95D-11  0.11D-10  5623.92
   12     9     9     1.10866579    -0.80873194  -295.09300585    -0.00000001    -0.00000000  0.14D-10  0.21D-10  5623.92
   13     1     1     1.10051704    -0.79758794  -295.12519909    -0.00000000    -0.00000000  0.15D-10  0.21D-10  6038.05
   13     2     2     1.10051705    -0.79758794  -295.12519909     0.00000000    -0.00000000  0.14D-10  0.21D-10  6038.05
   13     3     3     1.10051705    -0.79758794  -295.12519909    -0.00000000    -0.00000000  0.15D-10  0.22D-10  6038.05
   13     4     4     1.10391308    -0.80262861  -295.11201834    -0.00000000    -0.00000000  0.11D-10  0.18D-10  6038.05
   13     5     5     1.10391308    -0.80262861  -295.11201834    -0.00000000    -0.00000000  0.12D-10  0.18D-10  6038.05
   13     6     6     1.10391308    -0.80262861  -295.11201834    -0.00000000    -0.00000000  0.11D-10  0.18D-10  6038.05
   13     7     7     1.10391308    -0.80262831  -295.11201803    -0.00000000    -0.00000000  0.23D-12  0.82D-12  6038.05
   13     8     8     1.10391308    -0.80262831  -295.11201803    -0.00000000    -0.00000000  0.26D-12  0.87D-12  6038.05
   13     9     9     1.10866561    -0.80873194  -295.09300585    -0.00000000    -0.00000000  0.29D-12  0.24D-11  6038.05


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.6%
 S   0.4%   9.5%
 P   0.3%  59.0%  24.7%

 Initialization:   1.0%
 Other:            4.5%

 Total CPU:     6038.1 seconds
 =====================================



 Wavefunction saved on  5303.2

 Reference coefficients greater than 0.0500000
 =============================================
 2222222222/2/0/0          -0.0000000   0.0000000  -0.0000000   0.0000426   0.0000960  -0.0000301  -0.0000784   0.7695608
                           -0.5417465
 22222222222///00           0.0000000   0.0000000   0.0000000   0.0000590   0.0001355  -0.0000545  -0.6664984   0.3847126
                            0.5417464
 2222222222//200/          -0.0000000   0.0000000   0.0000000  -0.0000163  -0.0000395   0.0000245   0.6664200   0.3848484
                            0.5417464
 2222222222//2/00          -0.6627004   0.0758381   0.0424228   0.6656986  -0.0287502   0.0136700   0.0000330  -0.0000328
                            0.0000000
 22222222222//00/           0.6627004  -0.0758381  -0.0424228   0.6656985  -0.0287502   0.0136700   0.0000330  -0.0000328
                           -0.0000000
 2222222222/2/00/           0.0476945   0.0446845   0.6651703   0.0302965   0.6600317  -0.0872245   0.0000936  -0.0000875
                           -0.0000000
 2222222222//20/0           0.0476945   0.0446845   0.6651702  -0.0302966  -0.6600319   0.0872245  -0.0000936   0.0000874
                           -0.0000000
 2222222222/2//00           0.0726385   0.6625518  -0.0497170  -0.0097754   0.0877463   0.6605853  -0.0000282   0.0000154
                           -0.0000000
 22222222222//0/0           0.0726385   0.6625517  -0.0497170   0.0097754  -0.0877464  -0.6605854   0.0000282  -0.0000154
                            0.0000000
 2222222222/\///0           0.0000000   0.0000000  -0.0000000  -0.0011772   0.0105666   0.0795490  -0.0000034   0.0000019
                           -0.0000000
 2222222222//\/0/           0.0234211  -0.0026803  -0.0014993  -0.0694247   0.0029983  -0.0014256  -0.0000034   0.0000034
                           -0.0000000
 2222222222//\0//          -0.0016856  -0.0015792  -0.0235084   0.0031596   0.0688337  -0.0090965   0.0000098  -0.0000091
                           -0.0000000
 222222222202///0          -0.0000000   0.0000000   0.0000000   0.0000035   0.0000079  -0.0000024   0.0040016   0.0678436
                           -0.0525303
 2222222222/200//          -0.0000000   0.0000000  -0.0000000   0.0000040   0.0000090  -0.0000029  -0.0040154   0.0678428
                           -0.0525303
 222222222202//0/           0.0043949   0.0041175   0.0612935   0.0027620   0.0601722  -0.0079519   0.0000085  -0.0000080
                           -0.0000000
 22222222220/2//0           0.0043949   0.0041175   0.0612935  -0.0027620  -0.0601722   0.0079519  -0.0000085   0.0000080
                           -0.0000000
 222222222220/0//           0.0610659  -0.0069883  -0.0039091   0.0606888  -0.0026210   0.0012462   0.0000030  -0.0000030
                            0.0000000
 2222222222/02//0          -0.0610659   0.0069883   0.0039091   0.0606888  -0.0026210   0.0012462   0.0000030  -0.0000030
                            0.0000000
 2222222222/20/0/           0.0066934   0.0610522  -0.0045813  -0.0008912   0.0079995   0.0602227  -0.0000026   0.0000014
                            0.0000000
 22222222222/00//           0.0066934   0.0610522  -0.0045813   0.0008912  -0.0079995  -0.0602227   0.0000026  -0.0000014
                            0.0000000
 222222222220///0           0.0000000  -0.0000000  -0.0000000  -0.0000051  -0.0000118   0.0000048   0.0607613  -0.0304440
                           -0.0525303
 2222222222/020//           0.0000000  -0.0000000  -0.0000000   0.0000017   0.0000042  -0.0000024  -0.0607551  -0.0304563
                           -0.0525303
 22222222222/0/0/          -0.0000000  -0.0000000   0.0000000   0.0000053   0.0000121  -0.0000048  -0.0567535   0.0373873
                            0.0525303
 22222222220/2/0/           0.0000000   0.0000000  -0.0000000  -0.0000011  -0.0000028   0.0000019   0.0567459   0.0373988
                            0.0525303
 2222222222///0\/           0.0037769   0.0035385   0.0526743   0.0015524   0.0338195  -0.0044693   0.0000048  -0.0000045
                           -0.0000000
 2222222222///\0/          -0.0524787   0.0060056   0.0033594  -0.0341099   0.0014731  -0.0007004  -0.0000017   0.0000017
                           -0.0000000
 2222222222///\/0          -0.0057522  -0.0524669   0.0039370  -0.0005009   0.0044961   0.0338479  -0.0000014   0.0000008
                            0.0000000

 Coefficients of singly external configurations greater than 0.0500000
 =====================================================================

 2222222222/2/000  20.2     0.0000000  -0.0000000  -0.0000000  -0.0000042  -0.0000095   0.0000030   0.0000078  -0.0761167
                            0.0615980
 22222222222//000  21.2    -0.0000000  -0.0000000  -0.0000000  -0.0000058  -0.0000134   0.0000054   0.0659228  -0.0380516
                           -0.0615980
 2222222222//2000  22.2     0.0000000  -0.0000000  -0.0000000   0.0000016   0.0000039  -0.0000024  -0.0659151  -0.0380650
                           -0.0615980
 22222222222//000  22.2    -0.0590916   0.0067623   0.0037827  -0.0658438   0.0028437  -0.0013521  -0.0000033   0.0000032
                            0.0000000
 2222222222//2000  21.2     0.0590916  -0.0067623  -0.0037828  -0.0658438   0.0028437  -0.0013521  -0.0000033   0.0000032
                           -0.0000000
 22222222222//000  20.2    -0.0064770  -0.0590783   0.0044332  -0.0009669   0.0086789   0.0653381  -0.0000028   0.0000015
                            0.0000000
 2222222222/2/000  21.2    -0.0064770  -0.0590784   0.0044332   0.0009669  -0.0086789  -0.0653381   0.0000028  -0.0000015
                            0.0000000
 2222222222//2000  20.2    -0.0042528  -0.0039844  -0.0593118   0.0029966   0.0652833  -0.0086273   0.0000093  -0.0000086
                            0.0000000
 2222222222/2/000  22.2    -0.0042528  -0.0039844  -0.0593118  -0.0029966  -0.0652833   0.0086273  -0.0000093   0.0000086
                            0.0000000

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.945039    0.068014    0.103586   -0.000000    0.000000    0.000000    0.000000   -0.000000    0.000000
 2          -0.108148    0.063722    0.944827    0.000000    0.000000    0.000000   -0.000000    0.000000    0.000000
 3          -0.060497    0.948562   -0.070899   -0.000000    0.000000   -0.000000    0.000000    0.000000    0.000000
 4          -0.000000   -0.000000   -0.000000   -0.000050    0.950579    0.043262   -0.013959    0.000056   -0.000000
 5          -0.000000    0.000000   -0.000000   -0.000117   -0.041054    0.942487    0.125297    0.000127   -0.000000
 6          -0.000000   -0.000000    0.000000    0.000054    0.019520   -0.124551    0.943278   -0.000041    0.000000
 7           0.000000    0.000000    0.000000    0.949450    0.000047    0.000134   -0.000040   -0.064890   -0.000000
 8           0.000000   -0.000000   -0.000000    0.064890   -0.000047   -0.000125    0.000022    0.949450   -0.000000
 9          -0.000000   -0.000000   -0.000000    0.000000    0.000000    0.000000   -0.000000    0.000000    0.949604

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.953129   -0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.000000    0.000000   -0.000000
 2          -0.000000    0.953129    0.000000   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.000000
 3          -0.000000    0.000000    0.953129   -0.000000   -0.000000    0.000000    0.000000   -0.000000   -0.000000
 4           0.000000   -0.000000   -0.000000    0.951665    0.000000    0.000000   -0.000000   -0.000000    0.000000
 5          -0.000000   -0.000000   -0.000000    0.000000    0.951665   -0.000000    0.000000   -0.000000    0.000000
 6          -0.000000   -0.000000    0.000000    0.000000   -0.000000    0.951665    0.000000    0.000000    0.000000
 7           0.000000   -0.000000    0.000000   -0.000000    0.000000    0.000000    0.951665   -0.000000   -0.000000
 8           0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.951665    0.000000
 9          -0.000000    0.000000   -0.000000    0.000000    0.000000    0.000000   -0.000000    0.000000    0.949604


 RESULTS FOR STATE 1.2
 =====================

 Coefficient of reference function:   C(0) = 0.94503948 (fixed)   0.95320941 (relaxed)   0.95312935 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00022922   -0.00037866   -0.65139296
 Singles      0.02926296   -0.08073738   -0.09454982
 Pairs        0.07127712   -0.00000000   -0.05164516
 Total        1.10076931   -0.08111605   -0.79758794
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -294.32761114
 Nuclear energy                         0.00000000
 Kinetic energy                       111.31481206
 One electron energy                 -509.45390908
 Two electron energy                  214.32870999
 Virial quotient                       -2.65126620
 Correlation energy                    -0.79758794
 !MRCI STATE 1.2 Energy              -295.125199086073

 Properties without orbital relaxation:

 !MRCI STATE 1.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -295.20557147 (Davidson, fixed reference)
 Cluster corrected energies          -295.20542401 (Davidson, relaxed reference)
 Cluster corrected energies          -295.20557147 (Davidson, rotated reference)

 Cluster corrected energies          -295.20475107 (Pople, fixed reference)
 Cluster corrected energies          -295.20459234 (Pople, relaxed reference)
 Cluster corrected energies          -295.20475107 (Pople, rotated reference)



 RESULTS FOR STATE 2.2
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.94482748 (fixed)   0.95320941 (relaxed)   0.95312935 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00022922   -0.00037866   -0.65139296
 Singles      0.02926296   -0.08073739   -0.09454982
 Pairs        0.07127712   -0.00000000   -0.05164516
 Total        1.10076931   -0.08111605   -0.79758794
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -294.32761114
 Nuclear energy                         0.00000000
 Kinetic energy                       111.31481200
 One electron energy                 -509.45390915
 Two electron energy                  214.32871006
 Virial quotient                       -2.65126620
 Correlation energy                    -0.79758794
 !MRCI STATE 2.2 Energy              -295.125199085556

 Properties without orbital relaxation:

 !MRCI STATE 2.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -295.20557147 (Davidson, fixed reference)
 Cluster corrected energies          -295.20542401 (Davidson, relaxed reference)
 Cluster corrected energies          -295.20557147 (Davidson, rotated reference)

 Cluster corrected energies          -295.20475108 (Pople, fixed reference)
 Cluster corrected energies          -295.20459235 (Pople, relaxed reference)
 Cluster corrected energies          -295.20475108 (Pople, rotated reference)



 RESULTS FOR STATE 3.2
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.94856160 (fixed)   0.95320941 (relaxed)   0.95312935 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00022922   -0.00037866   -0.65139296
 Singles      0.02926296   -0.08073739   -0.09454982
 Pairs        0.07127712   -0.00000000   -0.05164516
 Total        1.10076931   -0.08111606   -0.79758794
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -294.32761114
 Nuclear energy                         0.00000000
 Kinetic energy                       111.31481231
 One electron energy                 -509.45390916
 Two electron energy                  214.32871008
 Virial quotient                       -2.65126620
 Correlation energy                    -0.79758794
 !MRCI STATE 3.2 Energy              -295.125199085358

 Properties without orbital relaxation:

 !MRCI STATE 3.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -295.20557147 (Davidson, fixed reference)
 Cluster corrected energies          -295.20542401 (Davidson, relaxed reference)
 Cluster corrected energies          -295.20557147 (Davidson, rotated reference)

 Cluster corrected energies          -295.20475107 (Pople, fixed reference)
 Cluster corrected energies          -295.20459234 (Pople, relaxed reference)
 Cluster corrected energies          -295.20475107 (Pople, rotated reference)



 RESULTS FOR STATE 4.2
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.95057885 (fixed)   0.95173539 (relaxed)   0.95166516 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00022288   -0.00043976   -0.65106601
 Singles      0.03186159   -0.08392703   -0.09917000
 Pairs        0.07207464    0.00000000   -0.05239260
 Total        1.10415912   -0.08436679   -0.80262861
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -294.30938972
 Nuclear energy                         0.00000000
 Kinetic energy                       111.32629335
 One electron energy                 -509.50014330
 Two electron energy                  214.38812496
 Virial quotient                       -2.65087438
 Correlation energy                    -0.80262861
 !MRCI STATE 4.2 Energy              -295.112018336662

 Properties without orbital relaxation:

 !MRCI STATE 4.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -295.19561943 (Davidson, fixed reference)
 Cluster corrected energies          -295.19548864 (Davidson, relaxed reference)
 Cluster corrected energies          -295.19561943 (Davidson, rotated reference)

 Cluster corrected energies          -295.19501077 (Pople, fixed reference)
 Cluster corrected energies          -295.19486917 (Pople, relaxed reference)
 Cluster corrected energies          -295.19501077 (Pople, rotated reference)



 RESULTS FOR STATE 5.2
 =====================

 Maximum overlap with reference state  6

 Coefficient of reference function:   C(0) = 0.94248707 (fixed)   0.95173538 (relaxed)   0.95166515 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00022288   -0.00043976   -0.65106601
 Singles      0.03186160   -0.08392703   -0.09917000
 Pairs        0.07207464    0.00000000   -0.05239261
 Total        1.10415912   -0.08436680   -0.80262861
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -294.30938972
 Nuclear energy                         0.00000000
 Kinetic energy                       111.32629345
 One electron energy                 -509.50014338
 Two electron energy                  214.38812505
 Virial quotient                       -2.65087437
 Correlation energy                    -0.80262861
 !MRCI STATE 5.2 Energy              -295.112018335584

 Properties without orbital relaxation:

 !MRCI STATE 5.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -295.19561943 (Davidson, fixed reference)
 Cluster corrected energies          -295.19548864 (Davidson, relaxed reference)
 Cluster corrected energies          -295.19561943 (Davidson, rotated reference)

 Cluster corrected energies          -295.19501078 (Pople, fixed reference)
 Cluster corrected energies          -295.19486917 (Pople, relaxed reference)
 Cluster corrected energies          -295.19501078 (Pople, rotated reference)



 RESULTS FOR STATE 6.2
 =====================

 Maximum overlap with reference state  7

 Coefficient of reference function:   C(0) = 0.94327751 (fixed)   0.95173538 (relaxed)   0.95166515 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00022288   -0.00043976   -0.65106601
 Singles      0.03186159   -0.08392703   -0.09917000
 Pairs        0.07207465   -0.00000000   -0.05239261
 Total        1.10415912   -0.08436679   -0.80262861
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -294.30938972
 Nuclear energy                         0.00000000
 Kinetic energy                       111.32629342
 One electron energy                 -509.50014333
 Two electron energy                  214.38812500
 Virial quotient                       -2.65087437
 Correlation energy                    -0.80262861
 !MRCI STATE 6.2 Energy              -295.112018335241

 Properties without orbital relaxation:

 !MRCI STATE 6.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -295.19561943 (Davidson, fixed reference)
 Cluster corrected energies          -295.19548864 (Davidson, relaxed reference)
 Cluster corrected energies          -295.19561943 (Davidson, rotated reference)

 Cluster corrected energies          -295.19501078 (Pople, fixed reference)
 Cluster corrected energies          -295.19486917 (Pople, relaxed reference)
 Cluster corrected energies          -295.19501078 (Pople, rotated reference)



 RESULTS FOR STATE 7.2
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.94945031 (fixed)   0.95173540 (relaxed)   0.95166515 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00022288   -0.00043964   -0.65106662
 Singles      0.03186112   -0.08392606   -0.09916932
 Pairs        0.07207513    0.00000000   -0.05239237
 Total        1.10415912   -0.08436570   -0.80262831
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -294.30938972
 Nuclear energy                         0.00000000
 Kinetic energy                       111.32627255
 One electron energy                 -509.50013408
 Two electron energy                  214.38811605
 Virial quotient                       -2.65087487
 Correlation energy                    -0.80262830
 !MRCI STATE 7.2 Energy              -295.112018028202

 Properties without orbital relaxation:

 !MRCI STATE 7.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -295.19561909 (Davidson, fixed reference)
 Cluster corrected energies          -295.19548828 (Davidson, relaxed reference)
 Cluster corrected energies          -295.19561909 (Davidson, rotated reference)

 Cluster corrected energies          -295.19501044 (Pople, fixed reference)
 Cluster corrected energies          -295.19486881 (Pople, relaxed reference)
 Cluster corrected energies          -295.19501044 (Pople, rotated reference)



 RESULTS FOR STATE 8.2
 =====================

 Coefficient of reference function:   C(0) = 0.94945030 (fixed)   0.95173540 (relaxed)   0.95166515 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00022288   -0.00043964   -0.65106661
 Singles      0.03186111   -0.08392606   -0.09916932
 Pairs        0.07207513   -0.00000000   -0.05239238
 Total        1.10415913   -0.08436570   -0.80262831
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -294.30938972
 Nuclear energy                         0.00000000
 Kinetic energy                       111.32627265
 One electron energy                 -509.50013398
 Two electron energy                  214.38811596
 Virial quotient                       -2.65087487
 Correlation energy                    -0.80262831
 !MRCI STATE 8.2 Energy              -295.112018025763

 Properties without orbital relaxation:

 !MRCI STATE 8.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -295.19561909 (Davidson, fixed reference)
 Cluster corrected energies          -295.19548828 (Davidson, relaxed reference)
 Cluster corrected energies          -295.19561909 (Davidson, rotated reference)

 Cluster corrected energies          -295.19501044 (Pople, fixed reference)
 Cluster corrected energies          -295.19486881 (Pople, relaxed reference)
 Cluster corrected energies          -295.19501044 (Pople, rotated reference)



 RESULTS FOR STATE 9.2
 =====================

 Coefficient of reference function:   C(0) = 0.94960409 (fixed)   0.94969512 (relaxed)   0.94960409 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00026315   -0.00043870   -0.00058750
 Singles      0.03538112   -0.08682422   -0.10409611
 Pairs        0.07331309   -0.72146902   -0.70404833
 Total        1.10895735   -0.80873194   -0.80873194
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -294.28427391
 Nuclear energy                         0.00000000
 Kinetic energy                       111.33758528
 One electron energy                 -509.53790266
 Two electron energy                  214.44489682
 Virial quotient                       -2.65043476
 Correlation energy                    -0.80873194
 !MRCI STATE 9.2 Energy              -295.093005849207

 Properties without orbital relaxation:

 !MRCI STATE 9.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -295.18112314 (Davidson, fixed reference)
 Cluster corrected energies          -295.18095122 (Davidson, relaxed reference)
 Cluster corrected energies          -295.18112314 (Davidson, rotated reference)

 Cluster corrected energies          -295.18084891 (Pople, fixed reference)
 Cluster corrected energies          -295.18066122 (Pople, relaxed reference)
 Cluster corrected energies          -295.18084891 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       39.05       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       7     1959.27       700     1000      520     2100     2140     5203     5303   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *     21612.20   6611.68  14993.90      5.16      0.16      1.06
 REAL TIME  *     22033.26 SEC
 DISK USED  *         1.95 GB (local),       15.66 GB (total)
 SF USED    *        12.90 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(13)    =      -295.20557147  AU                              
 SETTING HLSDIAG(14)    =      -295.20557147  AU                              
 SETTING HLSDIAG(15)    =      -295.20557147  AU                              
 SETTING HLSDIAG(16)    =      -295.19561943  AU                              
 SETTING HLSDIAG(17)    =      -295.19561943  AU                              
 SETTING HLSDIAG(18)    =      -295.19561943  AU                              
 SETTING HLSDIAG(19)    =      -295.19561909  AU                              
 SETTING HLSDIAG(20)    =      -295.19561909  AU                              
 SETTING HLSDIAG(21)    =      -295.18112314  AU                              


         HLSDIAG
    -295.5277219
    -295.5277220
    -295.5277219
    -295.1918473
    -295.1918473
    -295.1918473
    -295.1918473
    -295.1918472
    -295.1871694
    -295.1871697
    -295.1871697
    -295.1844373
    -295.2055715
    -295.2055715
    -295.2055715
    -295.1956194
    -295.1956194
    -295.1956194
    -295.1956191
    -295.1956191
    -295.1811231
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Diagonal elements of H will be replaced by values from variable HLSDIAG


   ******************************
   *** Spin-orbit calculation ***
   ******************************


   Spin-orbit matrix elements
   ==========================

 Wavefunction restored from record  5203.2  Symmetry=2  S= 0.5  NSTATE=  12

 Original energies:   -295.455521   -295.455521   -295.455521   -295.103781   -295.103781   -295.103781   -295.103781   -295.103781
                      -295.103671   -295.103671   -295.103671   -295.094214
 Replaced energies:   -295.527722   -295.527722   -295.527722   -295.191847   -295.191847   -295.191847   -295.191847   -295.191847
                      -295.187169   -295.187170   -295.187170   -295.184437

 Wavefunction restored from record  5303.2  Symmetry=2  S= 1.5  NSTATE=   9

 Original energies:   -295.125199   -295.125199   -295.125199   -295.112018   -295.112018   -295.112018   -295.112018   -295.112018
                      -295.093006
 Replaced energies:   -295.205571   -295.205571   -295.205571   -295.195619   -295.195619   -295.195619   -295.195619   -295.195619
                      -295.181123



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=  -295.52772195

 Wigner-Eckart theorem used for 23 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00    1331.95   -1510.50      75.65     138.61      43.22    -354.49      12.05     -38.46      44.12

    2   2.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                        -1331.95      -0.00   -1409.50    -256.46    -269.07     -39.22    -120.06     -27.00     -59.65       3.44

    3   3.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         1510.50    1409.50       0.00    -257.39     202.89    -204.17      39.04     -19.41      26.95      42.80

    4   4.2  0.5  0.5       0.00       0.00       0.00   73715.96       0.00       0.00       0.00       0.00       0.00       0.00
                          -75.65     256.46     257.39      -0.00     439.62      27.97     201.37    -982.55     339.92     427.98

    5   5.2  0.5  0.5       0.00       0.00       0.00       0.00   73715.96       0.00       0.00       0.00       0.00       0.00
                         -138.61     269.07    -202.89    -439.62       0.00     -44.37    -918.52     540.20    -398.17     489.68

    6   6.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00   73715.96       0.00       0.00       0.00       0.00
                          -43.22      39.22     204.17     -27.97      44.37       0.00     397.47    1864.25     268.63      54.25

    7   7.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00   73715.96       0.00       0.00       0.00
                          354.49     120.06     -39.04    -201.37     918.52    -397.47       0.00     237.20     268.90     190.10

    8   8.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00   73715.98       0.00       0.00
                          -12.05      27.00      19.41     982.55    -540.20   -1864.25    -237.20       0.00      20.80      45.91

    9   9.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   74742.66       0.00
                           38.46      59.65     -26.95    -339.92     398.17    -268.63    -268.90     -20.80      -0.00    -621.80

   10  10.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   74742.57
                          -44.12      -3.44     -42.80    -427.98    -489.68     -54.25    -190.10     -45.91     621.80      -0.00

   11  11.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           24.74     -13.19      41.13    -339.20     -22.69    -245.74     562.99     -34.92    -493.20     165.99

   12  12.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          421.75    -451.97    -398.54      -0.01       0.00      -0.02       0.03      -0.02    -354.20   -1052.53

   13   1.2  0.5 -0.5       0.00    -105.59   -1724.61      98.18     137.41     173.04     157.97     278.06     -46.78      -0.87
                           -0.00   -2063.28    -886.84     -15.58      86.23    -338.66     -36.07     146.46     -27.62     -63.71

   14   2.2  0.5 -0.5     105.59       0.00    1748.41      88.29     -54.39     -54.57    -273.63     267.40      48.97      -2.63
                         2063.28       0.00    -999.38     246.25    -238.80    -103.58     -14.18    -122.13       6.37      -0.78

   15   3.2  0.5 -0.5    1724.61   -1748.41       0.00    -208.60      24.56     267.14    -146.41     -26.60      24.79     -56.90
                          886.84     999.38       0.00    -124.53    -235.38      16.82     103.49     296.54      16.14      30.52

   16   4.2  0.5 -0.5     -98.18     -88.29     208.60       0.00   -1772.40     147.49     -25.36     235.55     213.79    -163.52
                           15.58    -246.25     124.53       0.00     562.71    -678.90    1383.82    -347.65     174.72    -436.76

   17   5.2  0.5 -0.5    -137.41      54.39     -24.56    1772.40      -0.00     613.13    -246.64    -808.43    -153.31     104.06
                          -86.23     238.80     235.38    -562.71       0.00     716.97     854.44    -330.87     296.10     399.71

   18   6.2  0.5 -0.5    -173.04      54.57    -267.14    -147.49    -613.13      -0.00    1239.51     381.73    -545.06     125.57
                          338.66     103.58     -16.82     678.90    -716.97      -0.00     732.91      68.55     286.18     160.67

   19   7.2  0.5 -0.5    -157.97     273.63     146.41      25.36     246.64   -1239.51      -0.00     188.56     103.70     471.21
                           36.07      14.18    -103.49   -1383.82    -854.44    -732.91       0.00   -1148.27    -120.24      30.66

   20   8.2  0.5 -0.5    -278.06    -267.40      26.60    -235.55     808.43    -381.73    -188.56      -0.00    -233.80    -448.48
                         -146.46     122.13    -296.54     347.65     330.87     -68.55    1148.27       0.00    -558.47     243.24

   21   9.2  0.5 -0.5      46.78     -48.97     -24.79    -213.79     153.31     545.06    -103.70     233.80      -0.00     515.84
                           27.62      -6.37     -16.14    -174.72    -296.10    -286.18     120.24     558.47       0.00      68.66

   22  10.2  0.5 -0.5       0.87       2.63      56.90     163.52    -104.06    -125.57    -471.21     448.48    -515.84      -0.00
                           63.71       0.78     -30.52     436.76    -399.71    -160.67     -30.66    -243.24     -68.66      -0.00

   23  11.2  0.5 -0.5      27.94     -25.49      46.36    -332.65    -181.89     -18.81    -362.56    -439.63    -550.11     298.05
                           14.01      72.03      24.17     -90.20    -335.50     519.41     145.94      47.57    -334.15    -735.66

   24  12.2  0.5 -0.5    -523.15    -516.03      31.59      -0.04       0.06      -0.04      -0.02      -0.01    -635.96   -1173.86
                          299.03    -265.36     617.37      -0.04       0.02       0.01      -0.04      -0.09    1569.81    -713.04

   25   1.2  1.5  1.5     -86.58      84.57     -51.98     216.06     105.71     196.87    -216.13     840.58     128.14    -135.30
                          662.59    -550.04    -557.39    -371.51     304.53     691.91      63.86     -69.52     251.39     815.92

   26   2.2  1.5  1.5    -444.95     402.06    -799.85    -301.42    -208.76      57.21    -696.97    -117.77    1352.43    -686.55
                          642.28     771.27      20.42    -127.77     676.29    -368.08    -165.91     -54.58    -591.93   -1132.82

   27   3.2  1.5  1.5    -556.89     602.42     617.83    -379.02     227.31     704.11     154.35     -65.60    -416.95    -885.93
                          -90.66     -12.39      38.61     440.43      87.11     148.51    -148.10    -781.44      21.71      17.58

   28   4.2  1.5  1.5     -21.52      24.11      38.93     589.48     223.06     253.03    -254.20    -320.35       5.89       5.39
                          619.02    -641.04    -575.30     181.01     -85.16    -279.56     -47.27      24.85     -50.51    -151.67

   29   5.2  1.5  1.5    -658.45     695.16     454.73     145.48     -84.93    -304.22      20.75      20.51      19.54     167.21
                         -123.50     -67.94      30.89     497.27     256.91     242.69    -247.84     423.91     -10.57     -17.20

   30   6.2  1.5  1.5    -339.08     286.23    -939.86     112.47     120.33      31.34     355.13       2.79    -246.26      88.57
                         -720.27    -736.11      32.38    -163.07     312.68    -186.54     -40.90     -57.75     -98.34    -182.55

   31   7.2  1.5  1.5       1.00       1.16       0.05     164.87    -575.38     248.14     120.89       2.90      -0.12      -0.34
                         -432.67     383.98    -893.41    -101.97     -87.72      10.63    -299.85      -8.36    -224.83     102.07

   32   8.2  1.5  1.5    -873.06    -861.35      52.67       0.75      -2.93       1.29       0.57       0.03    -107.95    -199.26
                          249.70    -221.60     515.63    -176.34    -151.48      18.34    -517.72     -14.77     129.56     -58.88

   33   9.2  1.5  1.5   -1264.41   -1247.19      76.34       0.19      -0.62       0.26       0.14       0.00      72.74     134.13
                         -722.95     641.53   -1492.64       0.10       0.11      -0.03       0.48       0.10     175.31     -79.70

   34   1.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          408.25    -475.25     971.06    -392.56    -218.93     -39.86    -803.62     -27.33   -1539.89     806.86

   35   2.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -110.13      -8.12    -107.26    -824.51    -247.87    -420.94     453.66     -30.47     225.31      -1.67

   36   3.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -871.16    -803.10     -11.12    -161.98     889.03    -338.45    -152.93      -0.35     752.16    1154.99

   37   4.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -447.38     471.21   -1007.93    -144.61    -105.08       7.91    -416.91     -25.19    -274.90     136.06

   38   5.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          884.22     832.63      -8.68     -99.17     347.03    -149.79     -55.00     119.97     118.88     191.63

   39   6.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -124.14    -103.59     -13.71     -41.23     -61.49      13.91      -3.43     912.52     -19.80     -23.42

   40   7.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -703.24     753.89     664.65    -171.78      98.93     323.26      41.17      -5.95      61.95     183.52

   41   8.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -406.16     435.06     383.80     298.36    -171.53    -561.10     -71.51      10.18      35.55     105.62

   42   9.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         1176.38   -1260.71   -1111.78       0.42      -0.36      -0.96      -0.07       0.07      47.76     142.18

   43   1.2  1.5 -0.5     -49.99      48.83     -30.01     124.74      61.03     113.66    -124.78     485.31      73.98     -78.12
                         -382.55     317.56     321.81     214.49    -175.82    -399.47     -36.87      40.14    -145.14    -471.07

   44   2.2  1.5 -0.5    -256.89     232.13    -461.79    -174.02    -120.53      33.03    -402.39     -68.00     780.83    -396.38
                         -370.82    -445.29     -11.79      73.77    -390.45     212.51      95.79      31.51     341.75     654.03

   45   3.2  1.5 -0.5    -321.52     347.81     356.70    -218.83     131.24     406.52      89.12     -37.87    -240.73    -511.49
                           52.34       7.16     -22.29    -254.28     -50.29     -85.74      85.51     451.16     -12.53     -10.15

   46   4.2  1.5 -0.5     -12.42      13.92      22.48     340.33     128.78     146.09    -146.76    -184.95       3.40       3.11
                         -357.39     370.11     332.15    -104.51      49.16     161.40      27.29     -14.35      29.16      87.57

   47   5.2  1.5 -0.5    -380.16     401.35     262.54      83.99     -49.04    -175.64      11.98      11.84      11.28      96.54
                           71.30      39.22     -17.84    -287.10    -148.33    -140.12     143.09    -244.74       6.11       9.93

   48   6.2  1.5 -0.5    -195.77     165.26    -542.63      64.94      69.47      18.09     205.03       1.61    -142.18      51.14
                          415.85     425.00     -18.69      94.15    -180.53     107.70      23.61      33.34      56.78     105.40

   49   7.2  1.5 -0.5       0.57       0.67       0.03      95.19    -332.20     143.27      69.79       1.67      -0.07      -0.20
                          249.80    -221.69     515.81      58.87      50.64      -6.14     173.12       4.82     129.81     -58.93

   50   8.2  1.5 -0.5    -504.06    -497.30      30.41       0.43      -1.69       0.74       0.33       0.02     -62.32    -115.04
                         -144.17     127.94    -297.70     101.81      87.46     -10.59     298.91       8.53     -74.80      34.00

   51   9.2  1.5 -0.5    -730.00    -720.06      44.08       0.11      -0.36       0.15       0.08       0.00      42.00      77.44
                          417.39    -370.39     861.77      -0.06      -0.06       0.01      -0.28      -0.06    -101.22      46.01

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

    1   1.2  0.5  0.5       0.00       0.00       0.00     105.59    1724.61     -98.18    -137.41    -173.04    -157.97    -278.06
                          -24.74    -421.75       0.00   -2063.28    -886.84     -15.58      86.23    -338.66     -36.07     146.46

    2   2.2  0.5  0.5       0.00       0.00    -105.59       0.00   -1748.41     -88.29      54.39      54.57     273.63    -267.40
                           13.19     451.97    2063.28      -0.00    -999.38     246.25    -238.80    -103.58     -14.18    -122.13

    3   3.2  0.5  0.5       0.00       0.00   -1724.61    1748.41       0.00     208.60     -24.56    -267.14     146.41      26.60
                          -41.13     398.54     886.84     999.38      -0.00    -124.53    -235.38      16.82     103.49     296.54

    4   4.2  0.5  0.5       0.00       0.00      98.18      88.29    -208.60       0.00    1772.40    -147.49      25.36    -235.55
                          339.20       0.01      15.58    -246.25     124.53      -0.00     562.71    -678.90    1383.82    -347.65

    5   5.2  0.5  0.5       0.00       0.00     137.41     -54.39      24.56   -1772.40      -0.00    -613.13     246.64     808.43
                           22.69      -0.00     -86.23     238.80     235.38    -562.71      -0.00     716.97     854.44    -330.87

    6   6.2  0.5  0.5       0.00       0.00     173.04     -54.57     267.14     147.49     613.13      -0.00   -1239.51    -381.73
                          245.74       0.02     338.66     103.58     -16.82     678.90    -716.97       0.00     732.91      68.55

    7   7.2  0.5  0.5       0.00       0.00     157.97    -273.63    -146.41     -25.36    -246.64    1239.51      -0.00    -188.56
                         -562.99      -0.03      36.07      14.18    -103.49   -1383.82    -854.44    -732.91      -0.00   -1148.27

    8   8.2  0.5  0.5       0.00       0.00     278.06     267.40     -26.60     235.55    -808.43     381.73     188.56      -0.00
                           34.92       0.02    -146.46     122.13    -296.54     347.65     330.87     -68.55    1148.27      -0.00

    9   9.2  0.5  0.5       0.00       0.00     -46.78      48.97      24.79     213.79    -153.31    -545.06     103.70    -233.80
                          493.20     354.20      27.62      -6.37     -16.14    -174.72    -296.10    -286.18     120.24     558.47

   10  10.2  0.5  0.5       0.00       0.00      -0.87      -2.63     -56.90    -163.52     104.06     125.57     471.21    -448.48
                         -165.99    1052.53      63.71       0.78     -30.52     436.76    -399.71    -160.67     -30.66    -243.24

   11  11.2  0.5  0.5   74742.58       0.00     -27.94      25.49     -46.36     332.65     181.89      18.81     362.56     439.63
                            0.00    1327.00      14.01      72.03      24.17     -90.20    -335.50     519.41     145.94      47.57

   12  12.2  0.5  0.5       0.00   75342.27     523.15     516.03     -31.59       0.04      -0.06       0.04       0.02       0.01
                        -1327.00      -0.00     299.03    -265.36     617.37      -0.04       0.02       0.01      -0.04      -0.09

   13   1.2  0.5 -0.5     -27.94     523.15       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -14.01    -299.03       0.00   -1331.95    1510.50     -75.65    -138.61     -43.22     354.49     -12.05

   14   2.2  0.5 -0.5      25.49     516.03       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -72.03     265.36    1331.95       0.00    1409.50     256.46     269.07      39.22     120.06      27.00

   15   3.2  0.5 -0.5     -46.36     -31.59       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -24.17    -617.37   -1510.50   -1409.50      -0.00     257.39    -202.89     204.17     -39.04      19.41

   16   4.2  0.5 -0.5     332.65       0.04       0.00       0.00       0.00   73715.96       0.00       0.00       0.00       0.00
                           90.20       0.04      75.65    -256.46    -257.39       0.00    -439.62     -27.97    -201.37     982.55

   17   5.2  0.5 -0.5     181.89      -0.06       0.00       0.00       0.00       0.00   73715.96       0.00       0.00       0.00
                          335.50      -0.02     138.61    -269.07     202.89     439.62      -0.00      44.37     918.52    -540.20

   18   6.2  0.5 -0.5      18.81       0.04       0.00       0.00       0.00       0.00       0.00   73715.96       0.00       0.00
                         -519.41      -0.01      43.22     -39.22    -204.17      27.97     -44.37      -0.00    -397.47   -1864.25

   19   7.2  0.5 -0.5     362.56       0.02       0.00       0.00       0.00       0.00       0.00       0.00   73715.96       0.00
                         -145.94       0.04    -354.49    -120.06      39.04     201.37    -918.52     397.47      -0.00    -237.20

   20   8.2  0.5 -0.5     439.63       0.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00   73715.98
                          -47.57       0.09      12.05     -27.00     -19.41    -982.55     540.20    1864.25     237.20      -0.00

   21   9.2  0.5 -0.5     550.11     635.96       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          334.15   -1569.81     -38.46     -59.65      26.95     339.92    -398.17     268.63     268.90      20.80

   22  10.2  0.5 -0.5    -298.05    1173.86       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          735.66     713.04      44.12       3.44      42.80     427.98     489.68      54.25     190.10      45.91

   23  11.2  0.5 -0.5       0.00   -1100.82       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00    -146.55     -24.74      13.19     -41.13     339.20      22.69     245.74    -562.99      34.92

   24  12.2  0.5 -0.5    1100.82       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          146.55       0.00    -421.75     451.97     398.54       0.01      -0.00       0.02      -0.03       0.02

   25   1.2  1.5  1.5     -70.24    1090.43       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         1276.11      78.70      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   26   2.2  1.5  1.5      49.29    -124.80       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          828.78      73.71      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   27   3.2  1.5  1.5   -1185.48     -69.96       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -147.14    1097.73      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   28   4.2  1.5  1.5       9.20      33.97       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -196.92       1.62      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   29   5.2  1.5  1.5     189.80      -1.68       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           30.73      35.05      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   30   6.2  1.5  1.5     -47.82       0.74       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          164.26      -4.56      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   31   7.2  1.5  1.5       0.31       0.03       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -21.03       0.01      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   32   8.2  1.5  1.5     186.74      -0.04       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           12.08      -0.04      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   33   9.2  1.5  1.5    -125.81       0.04       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           16.33       0.02      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   34   1.2  1.5  0.5       0.00       0.00     -49.99      48.83     -30.01     124.74      61.03     113.66    -124.78     485.31
                         -228.88     137.44     382.55    -317.56    -321.81    -214.49     175.82     399.47      36.87     -40.14

   35   2.2  1.5  0.5       0.00       0.00    -256.89     232.13    -461.79    -174.02    -120.53      33.03    -402.39     -68.00
                          -58.69    1253.92     370.82     445.29      11.79     -73.77     390.45    -212.51     -95.79     -31.51

   36   3.2  1.5  0.5       0.00       0.00    -321.52     347.81     356.70    -218.83     131.24     406.52      89.12     -37.87
                        -1117.00     -94.15     -52.34      -7.16      22.29     254.28      50.29      85.74     -85.51    -451.16

   37   4.2  1.5  0.5       0.00       0.00     -12.42      13.92      22.48     340.33     128.78     146.09    -146.76    -184.95
                          -34.58       0.60     357.39    -370.11    -332.15     104.51     -49.16    -161.40     -27.29      14.35

   38   5.2  1.5  0.5       0.00       0.00    -380.16     401.35     262.54      83.99     -49.04    -175.64      11.98      11.84
                         -183.66      -5.45     -71.30     -39.22      17.84     287.10     148.33     140.12    -143.09     244.74

   39   6.2  1.5  0.5       0.00       0.00    -195.77     165.26    -542.63      64.94      69.47      18.09     205.03       1.61
                           24.00     -41.20    -415.85    -425.00      18.69     -94.15     180.53    -107.70     -23.61     -33.34

   40   7.2  1.5  0.5       0.00       0.00       0.57       0.67       0.03      95.19    -332.20     143.27      69.79       1.67
                          231.44       0.04    -249.80     221.69    -515.81     -58.87     -50.64       6.14    -173.12      -4.82

   41   8.2  1.5  0.5       0.00       0.00    -504.06    -497.30      30.41       0.43      -1.69       0.74       0.33       0.02
                          133.29       0.01     144.17    -127.94     297.70    -101.81     -87.46      10.59    -298.91      -8.53

   42   9.2  1.5  0.5       0.00       0.00    -730.00    -720.06      44.08       0.11      -0.36       0.15       0.08       0.00
                          179.29       0.02    -417.39     370.39    -861.77       0.06       0.06      -0.01       0.28       0.06

   43   1.2  1.5 -0.5     -40.55     629.56       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -736.76     -45.44     408.25    -475.25     971.06    -392.56    -218.93     -39.86    -803.62     -27.33

   44   2.2  1.5 -0.5      28.46     -72.06       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -478.49     -42.56    -110.13      -8.12    -107.26    -824.51    -247.87    -420.94     453.66     -30.47

   45   3.2  1.5 -0.5    -684.43     -40.39       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           84.95    -633.77    -871.16    -803.10     -11.12    -161.98     889.03    -338.45    -152.93      -0.35

   46   4.2  1.5 -0.5       5.31      19.61       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          113.69      -0.94    -447.38     471.21   -1007.93    -144.61    -105.08       7.91    -416.91     -25.19

   47   5.2  1.5 -0.5     109.58      -0.97       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -17.74     -20.23     884.22     832.63      -8.68     -99.17     347.03    -149.79     -55.00     119.97

   48   6.2  1.5 -0.5     -27.61       0.43       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -94.83       2.63    -124.14    -103.59     -13.71     -41.23     -61.49      13.91      -3.43     912.52

   49   7.2  1.5 -0.5       0.18       0.02       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           12.14      -0.01    -703.24     753.89     664.65    -171.78      98.93     323.26      41.17      -5.95

   50   8.2  1.5 -0.5     107.81      -0.02       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -6.97       0.03    -406.16     435.06     383.80     298.36    -171.53    -561.10     -71.51      10.18

   51   9.2  1.5 -0.5     -72.64       0.02       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -9.43      -0.01    1176.38   -1260.71   -1111.78       0.42      -0.36      -0.96      -0.07       0.07

   52   1.2  1.5 -1.5       0.00       0.00     -86.58      84.57     -51.98     216.06     105.71     196.87    -216.13     840.58
                           -0.00      -0.00    -662.59     550.04     557.39     371.51    -304.53    -691.91     -63.86      69.52

   53   2.2  1.5 -1.5       0.00       0.00    -444.95     402.06    -799.85    -301.42    -208.76      57.21    -696.97    -117.77
                           -0.00      -0.00    -642.28    -771.27     -20.42     127.77    -676.29     368.08     165.91      54.58

   54   3.2  1.5 -1.5       0.00       0.00    -556.89     602.42     617.83    -379.02     227.31     704.11     154.35     -65.60
                           -0.00      -0.00      90.66      12.39     -38.61    -440.43     -87.11    -148.51     148.10     781.44

   55   4.2  1.5 -1.5       0.00       0.00     -21.52      24.11      38.93     589.48     223.06     253.03    -254.20    -320.35
                           -0.00      -0.00    -619.02     641.04     575.30    -181.01      85.16     279.56      47.27     -24.85

   56   5.2  1.5 -1.5       0.00       0.00    -658.45     695.16     454.73     145.48     -84.93    -304.22      20.75      20.51
                           -0.00      -0.00     123.50      67.94     -30.89    -497.27    -256.91    -242.69     247.84    -423.91

   57   6.2  1.5 -1.5       0.00       0.00    -339.08     286.23    -939.86     112.47     120.33      31.34     355.13       2.79
                           -0.00      -0.00     720.27     736.11     -32.38     163.07    -312.68     186.54      40.90      57.75

   58   7.2  1.5 -1.5       0.00       0.00       1.00       1.16       0.05     164.87    -575.38     248.14     120.89       2.90
                           -0.00      -0.00     432.67    -383.98     893.41     101.97      87.72     -10.63     299.85       8.36

   59   8.2  1.5 -1.5       0.00       0.00    -873.06    -861.35      52.67       0.75      -2.93       1.29       0.57       0.03
                           -0.00      -0.00    -249.70     221.60    -515.63     176.34     151.48     -18.34     517.72      14.77

   60   9.2  1.5 -1.5       0.00       0.00   -1264.41   -1247.19      76.34       0.19      -0.62       0.26       0.14       0.00
                           -0.00      -0.00     722.95    -641.53    1492.64      -0.10      -0.11       0.03      -0.48      -0.10


   Nr   State  S   Sz       21         22         23         24         25         26         27         28         29         30

    1   1.2  0.5  0.5      46.78       0.87      27.94    -523.15     -86.58    -444.95    -556.89     -21.52    -658.45    -339.08
                          -27.62     -63.71     -14.01    -299.03    -662.59    -642.28      90.66    -619.02     123.50     720.27

    2   2.2  0.5  0.5     -48.97       2.63     -25.49    -516.03      84.57     402.06     602.42      24.11     695.16     286.23
                            6.37      -0.78     -72.03     265.36     550.04    -771.27      12.39     641.04      67.94     736.11

    3   3.2  0.5  0.5     -24.79      56.90      46.36      31.59     -51.98    -799.85     617.83      38.93     454.73    -939.86
                           16.14      30.52     -24.17    -617.37     557.39     -20.42     -38.61     575.30     -30.89     -32.38

    4   4.2  0.5  0.5    -213.79     163.52    -332.65      -0.04     216.06    -301.42    -379.02     589.48     145.48     112.47
                          174.72    -436.76      90.20       0.04     371.51     127.77    -440.43    -181.01    -497.27     163.07

    5   5.2  0.5  0.5     153.31    -104.06    -181.89       0.06     105.71    -208.76     227.31     223.06     -84.93     120.33
                          296.10     399.71     335.50      -0.02    -304.53    -676.29     -87.11      85.16    -256.91    -312.68

    6   6.2  0.5  0.5     545.06    -125.57     -18.81      -0.04     196.87      57.21     704.11     253.03    -304.22      31.34
                          286.18     160.67    -519.41      -0.01    -691.91     368.08    -148.51     279.56    -242.69     186.54

    7   7.2  0.5  0.5    -103.70    -471.21    -362.56      -0.02    -216.13    -696.97     154.35    -254.20      20.75     355.13
                         -120.24      30.66    -145.94       0.04     -63.86     165.91     148.10      47.27     247.84      40.90

    8   8.2  0.5  0.5     233.80     448.48    -439.63      -0.01     840.58    -117.77     -65.60    -320.35      20.51       2.79
                         -558.47     243.24     -47.57       0.09      69.52      54.58     781.44     -24.85    -423.91      57.75

    9   9.2  0.5  0.5      -0.00    -515.84    -550.11    -635.96     128.14    1352.43    -416.95       5.89      19.54    -246.26
                           -0.00      68.66     334.15   -1569.81    -251.39     591.93     -21.71      50.51      10.57      98.34

   10  10.2  0.5  0.5     515.84      -0.00     298.05   -1173.86    -135.30    -686.55    -885.93       5.39     167.21      88.57
                          -68.66       0.00     735.66     713.04    -815.92    1132.82     -17.58     151.67      17.20     182.55

   11  11.2  0.5  0.5     550.11    -298.05       0.00    1100.82     -70.24      49.29   -1185.48       9.20     189.80     -47.82
                         -334.15    -735.66       0.00    -146.55   -1276.11    -828.78     147.14     196.92     -30.73    -164.26

   12  12.2  0.5  0.5     635.96    1173.86   -1100.82       0.00    1090.43    -124.80     -69.96      33.97      -1.68       0.74
                         1569.81    -713.04     146.55      -0.00     -78.70     -73.71   -1097.73      -1.62     -35.05       4.56

   13   1.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           38.46     -44.12      24.74     421.75       0.00       0.00       0.00       0.00       0.00       0.00

   14   2.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           59.65      -3.44     -13.19    -451.97       0.00       0.00       0.00       0.00       0.00       0.00

   15   3.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -26.95     -42.80      41.13    -398.54       0.00       0.00       0.00       0.00       0.00       0.00

   16   4.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -339.92    -427.98    -339.20      -0.01       0.00       0.00       0.00       0.00       0.00       0.00

   17   5.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          398.17    -489.68     -22.69       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   18   6.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -268.63     -54.25    -245.74      -0.02       0.00       0.00       0.00       0.00       0.00       0.00

   19   7.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -268.90    -190.10     562.99       0.03       0.00       0.00       0.00       0.00       0.00       0.00

   20   8.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -20.80     -45.91     -34.92      -0.02       0.00       0.00       0.00       0.00       0.00       0.00

   21   9.2  0.5 -0.5   74742.66       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00     621.80    -493.20    -354.20       0.00       0.00       0.00       0.00       0.00       0.00

   22  10.2  0.5 -0.5       0.00   74742.57       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -621.80       0.00     165.99   -1052.53       0.00       0.00       0.00       0.00       0.00       0.00

   23  11.2  0.5 -0.5       0.00       0.00   74742.58       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          493.20    -165.99      -0.00   -1327.00       0.00       0.00       0.00       0.00       0.00       0.00

   24  12.2  0.5 -0.5       0.00       0.00       0.00   75342.27       0.00       0.00       0.00       0.00       0.00       0.00
                          354.20    1052.53    1327.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   25   1.2  1.5  1.5       0.00       0.00       0.00       0.00   70703.86       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00       0.00     -73.96    -985.58      44.73   -1681.40     224.00

   26   2.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00   70703.86       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      73.96       0.00     108.05     122.84     186.99     -23.07

   27   3.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00   70703.86       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00     985.58    -108.05      -0.00    1701.77      34.01      20.67

   28   4.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00   72888.08       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00     -44.73    -122.84   -1701.77      -0.00    -971.37     128.88

   29   5.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   72888.08       0.00
                           -0.00      -0.00      -0.00      -0.00    1681.40    -186.99     -34.01     971.37       0.00      14.02

   30   6.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   72888.08
                           -0.00      -0.00      -0.00      -0.00    -224.00      23.07     -20.67    -128.88     -14.02      -0.00

   31   7.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00     185.73    1691.95    -127.06     -14.24     128.99     971.51

   32   8.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00     106.91     977.13     -73.22      24.77    -223.41   -1682.30

   33   9.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00    -305.24   -2784.16     208.92      -0.00       0.00       0.00

   34   1.2  1.5  0.5      73.98     -78.12     -40.55     629.56      -0.00     -36.43      65.13      -5.84     -96.67      83.68
                          145.14     471.07     736.76      45.44       0.00    -571.27      38.38     -92.64    -124.02    -970.74

   35   2.2  1.5  0.5     780.83    -396.38      28.46     -72.06      36.43      -0.00     569.15     -45.38    -958.85     193.17
                         -341.75    -654.03     478.49      42.56     571.27       0.00     -40.96    -977.45      56.88      90.79

   36   3.2  1.5  0.5    -240.73    -511.49    -684.43     -40.39     -65.13    -569.15       0.00     -11.06     201.72     962.56
                           12.53      10.15     -84.95     633.77     -38.38      40.96       0.00      72.39       5.27      63.42

   37   4.2  1.5  0.5       3.40       3.11       5.31      19.61       5.84      45.38      11.06       0.00     -11.76     -24.34
                          -29.16     -87.57    -113.69       0.94      92.64     977.45     -72.39       0.00      74.07     560.33

   38   5.2  1.5  0.5      11.28      96.54     109.58      -0.97      96.67     958.85    -201.72      11.76       0.00    -565.14
                           -6.11      -9.93      17.74      20.23     124.02     -56.88      -5.27     -74.07       0.00     -25.72

   39   6.2  1.5  0.5    -142.18      51.14     -27.61       0.43     -83.68    -193.17    -962.56      24.34     565.14      -0.00
                          -56.78    -105.40      94.83      -2.63     970.74     -90.79     -63.42    -560.33      25.72       0.00

   40   7.2  1.5  0.5      -0.07      -0.20       0.18       0.02       0.13       0.13       0.02   -1130.28      48.78     -23.29
                         -129.81      58.93     -12.14       0.01      70.29      65.94     980.84      25.74     560.23     -74.01

   41   8.2  1.5  0.5     -62.32    -115.04     107.81      -0.02   -1128.33     128.99      72.22      -0.12       0.03       0.07
                           74.80     -34.00       6.97      -0.03     -40.58     -38.08    -566.16      44.54     970.57    -128.29

   42   9.2  1.5  0.5      42.00      77.44     -72.64       0.02   -1607.80     183.99     102.92       0.00       0.00       0.00
                          101.22     -46.01       9.43       0.01     115.71     108.41    1613.79      -0.00      -0.00       0.00

   43   1.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                        -1539.89     806.86    -228.88     137.44      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   44   2.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          225.31      -1.67     -58.69    1253.92      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   45   3.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          752.16    1154.99   -1117.00     -94.15      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   46   4.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -274.90     136.06     -34.58       0.60      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   47   5.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          118.88     191.63    -183.66      -5.45      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   48   6.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -19.80     -23.42      24.00     -41.20      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   49   7.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           61.95     183.52     231.44       0.04      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   50   8.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           35.55     105.62     133.29       0.01      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   51   9.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           47.76     142.18     179.29       0.02      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   52   1.2  1.5 -1.5     128.14    -135.30     -70.24    1090.43       0.00       0.00       0.00       0.00       0.00       0.00
                         -251.39    -815.92   -1276.11     -78.70      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   53   2.2  1.5 -1.5    1352.43    -686.55      49.29    -124.80       0.00       0.00       0.00       0.00       0.00       0.00
                          591.93    1132.82    -828.78     -73.71      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   54   3.2  1.5 -1.5    -416.95    -885.93   -1185.48     -69.96       0.00       0.00       0.00       0.00       0.00       0.00
                          -21.71     -17.58     147.14   -1097.73      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   55   4.2  1.5 -1.5       5.89       5.39       9.20      33.97       0.00       0.00       0.00       0.00       0.00       0.00
                           50.51     151.67     196.92      -1.62      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   56   5.2  1.5 -1.5      19.54     167.21     189.80      -1.68       0.00       0.00       0.00       0.00       0.00       0.00
                           10.57      17.20     -30.73     -35.05      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   57   6.2  1.5 -1.5    -246.26      88.57     -47.82       0.74       0.00       0.00       0.00       0.00       0.00       0.00
                           98.34     182.55    -164.26       4.56      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   58   7.2  1.5 -1.5      -0.12      -0.34       0.31       0.03       0.00       0.00       0.00       0.00       0.00       0.00
                          224.83    -102.07      21.03      -0.01      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   59   8.2  1.5 -1.5    -107.95    -199.26     186.74      -0.04       0.00       0.00       0.00       0.00       0.00       0.00
                         -129.56      58.88     -12.08       0.04      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   60   9.2  1.5 -1.5      72.74     134.13    -125.81       0.04       0.00       0.00       0.00       0.00       0.00       0.00
                         -175.31      79.70     -16.33      -0.02      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00


   Nr   State  S   Sz       31         32         33         34         35         36         37         38         39         40

    1   1.2  0.5  0.5       1.00    -873.06   -1264.41       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          432.67    -249.70     722.95    -408.25     110.13     871.16     447.38    -884.22     124.14     703.24

    2   2.2  0.5  0.5       1.16    -861.35   -1247.19       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -383.98     221.60    -641.53     475.25       8.12     803.10    -471.21    -832.63     103.59    -753.89

    3   3.2  0.5  0.5       0.05      52.67      76.34       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          893.41    -515.63    1492.64    -971.06     107.26      11.12    1007.93       8.68      13.71    -664.65

    4   4.2  0.5  0.5     164.87       0.75       0.19       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          101.97     176.34      -0.10     392.56     824.51     161.98     144.61      99.17      41.23     171.78

    5   5.2  0.5  0.5    -575.38      -2.93      -0.62       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           87.72     151.48      -0.11     218.93     247.87    -889.03     105.08    -347.03      61.49     -98.93

    6   6.2  0.5  0.5     248.14       1.29       0.26       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -10.63     -18.34       0.03      39.86     420.94     338.45      -7.91     149.79     -13.91    -323.26

    7   7.2  0.5  0.5     120.89       0.57       0.14       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          299.85     517.72      -0.48     803.62    -453.66     152.93     416.91      55.00       3.43     -41.17

    8   8.2  0.5  0.5       2.90       0.03       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            8.36      14.77      -0.10      27.33      30.47       0.35      25.19    -119.97    -912.52       5.95

    9   9.2  0.5  0.5      -0.12    -107.95      72.74       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          224.83    -129.56    -175.31    1539.89    -225.31    -752.16     274.90    -118.88      19.80     -61.95

   10  10.2  0.5  0.5      -0.34    -199.26     134.13       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -102.07      58.88      79.70    -806.86       1.67   -1154.99    -136.06    -191.63      23.42    -183.52

   11  11.2  0.5  0.5       0.31     186.74    -125.81       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           21.03     -12.08     -16.33     228.88      58.69    1117.00      34.58     183.66     -24.00    -231.44

   12  12.2  0.5  0.5       0.03      -0.04       0.04       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.01       0.04      -0.02    -137.44   -1253.92      94.15      -0.60       5.45      41.20      -0.04

   13   1.2  0.5 -0.5       0.00       0.00       0.00     -49.99    -256.89    -321.52     -12.42    -380.16    -195.77       0.57
                            0.00       0.00       0.00    -382.55    -370.82      52.34    -357.39      71.30     415.85     249.80

   14   2.2  0.5 -0.5       0.00       0.00       0.00      48.83     232.13     347.81      13.92     401.35     165.26       0.67
                            0.00       0.00       0.00     317.56    -445.29       7.16     370.11      39.22     425.00    -221.69

   15   3.2  0.5 -0.5       0.00       0.00       0.00     -30.01    -461.79     356.70      22.48     262.54    -542.63       0.03
                            0.00       0.00       0.00     321.81     -11.79     -22.29     332.15     -17.84     -18.69     515.81

   16   4.2  0.5 -0.5       0.00       0.00       0.00     124.74    -174.02    -218.83     340.33      83.99      64.94      95.19
                            0.00       0.00       0.00     214.49      73.77    -254.28    -104.51    -287.10      94.15      58.87

   17   5.2  0.5 -0.5       0.00       0.00       0.00      61.03    -120.53     131.24     128.78     -49.04      69.47    -332.20
                            0.00       0.00       0.00    -175.82    -390.45     -50.29      49.16    -148.33    -180.53      50.64

   18   6.2  0.5 -0.5       0.00       0.00       0.00     113.66      33.03     406.52     146.09    -175.64      18.09     143.27
                            0.00       0.00       0.00    -399.47     212.51     -85.74     161.40    -140.12     107.70      -6.14

   19   7.2  0.5 -0.5       0.00       0.00       0.00    -124.78    -402.39      89.12    -146.76      11.98     205.03      69.79
                            0.00       0.00       0.00     -36.87      95.79      85.51      27.29     143.09      23.61     173.12

   20   8.2  0.5 -0.5       0.00       0.00       0.00     485.31     -68.00     -37.87    -184.95      11.84       1.61       1.67
                            0.00       0.00       0.00      40.14      31.51     451.16     -14.35    -244.74      33.34       4.82

   21   9.2  0.5 -0.5       0.00       0.00       0.00      73.98     780.83    -240.73       3.40      11.28    -142.18      -0.07
                            0.00       0.00       0.00    -145.14     341.75     -12.53      29.16       6.11      56.78     129.81

   22  10.2  0.5 -0.5       0.00       0.00       0.00     -78.12    -396.38    -511.49       3.11      96.54      51.14      -0.20
                            0.00       0.00       0.00    -471.07     654.03     -10.15      87.57       9.93     105.40     -58.93

   23  11.2  0.5 -0.5       0.00       0.00       0.00     -40.55      28.46    -684.43       5.31     109.58     -27.61       0.18
                            0.00       0.00       0.00    -736.76    -478.49      84.95     113.69     -17.74     -94.83      12.14

   24  12.2  0.5 -0.5       0.00       0.00       0.00     629.56     -72.06     -40.39      19.61      -0.97       0.43       0.02
                            0.00       0.00       0.00     -45.44     -42.56    -633.77      -0.94     -20.23       2.63      -0.01

   25   1.2  1.5  1.5       0.00       0.00       0.00      -0.00      36.43     -65.13       5.84      96.67     -83.68       0.13
                         -185.73    -106.91     305.24      -0.00    -571.27      38.38     -92.64    -124.02    -970.74     -70.29

   26   2.2  1.5  1.5       0.00       0.00       0.00     -36.43      -0.00    -569.15      45.38     958.85    -193.17       0.13
                        -1691.95    -977.13    2784.16     571.27      -0.00     -40.96    -977.45      56.88      90.79     -65.94

   27   3.2  1.5  1.5       0.00       0.00       0.00      65.13     569.15       0.00      11.06    -201.72    -962.56       0.02
                          127.06      73.22    -208.92     -38.38      40.96      -0.00      72.39       5.27      63.42    -980.84

   28   4.2  1.5  1.5       0.00       0.00       0.00      -5.84     -45.38     -11.06       0.00      11.76      24.34   -1130.28
                           14.24     -24.77       0.00      92.64     977.45     -72.39      -0.00      74.07     560.33     -25.74

   29   5.2  1.5  1.5       0.00       0.00       0.00     -96.67    -958.85     201.72     -11.76       0.00     565.14      48.78
                         -128.99     223.41      -0.00     124.02     -56.88      -5.27     -74.07      -0.00     -25.72    -560.23

   30   6.2  1.5  1.5       0.00       0.00       0.00      83.68     193.17     962.56     -24.34    -565.14      -0.00     -23.29
                         -971.51    1682.30      -0.00     970.74     -90.79     -63.42    -560.33      25.72      -0.00      74.01

   31   7.2  1.5  1.5   72888.15       0.00       0.00      -0.13      -0.13      -0.02    1130.28     -48.78      23.29      -0.00
                           -0.00      -0.05      -0.00      70.29      65.94     980.84      25.74     560.23     -74.01       0.00

   32   8.2  1.5  1.5       0.00   72888.15       0.00    1128.33    -128.99     -72.22       0.12      -0.03      -0.07       0.06
                            0.05      -0.00      -0.00     -40.58     -38.08    -566.16      44.54     970.57    -128.29       0.21

   33   9.2  1.5  1.5       0.00       0.00   76069.65    1607.80    -183.99    -102.92      -0.00      -0.00      -0.00      -0.00
                            0.00       0.00      -0.00     115.71     108.41    1613.79      -0.00      -0.00       0.00       0.00

   34   1.2  1.5  0.5      -0.13    1128.33    1607.80   70703.86       0.00       0.00       0.00       0.00       0.00       0.00
                          -70.29      40.58    -115.71       0.00     -24.65    -328.53      14.91    -560.47      74.67     -61.91

   35   2.2  1.5  0.5      -0.13    -128.99    -183.99       0.00   70703.86       0.00       0.00       0.00       0.00       0.00
                          -65.94      38.08    -108.41      24.65       0.00      36.02      40.95      62.33      -7.69    -563.98

   36   3.2  1.5  0.5      -0.02     -72.22    -102.92       0.00       0.00   70703.86       0.00       0.00       0.00       0.00
                         -980.84     566.16   -1613.79     328.53     -36.02      -0.00     567.26      11.34       6.89      42.35

   37   4.2  1.5  0.5    1130.28       0.12      -0.00       0.00       0.00       0.00   72888.08       0.00       0.00       0.00
                          -25.74     -44.54       0.00     -14.91     -40.95    -567.26      -0.00    -323.79      42.96       4.75

   38   5.2  1.5  0.5     -48.78      -0.03      -0.00       0.00       0.00       0.00       0.00   72888.08       0.00       0.00
                         -560.23    -970.57       0.00     560.47     -62.33     -11.34     323.79       0.00       4.67     -43.00

   39   6.2  1.5  0.5      23.29      -0.07      -0.00       0.00       0.00       0.00       0.00       0.00   72888.08       0.00
                           74.01     128.29      -0.00     -74.67       7.69      -6.89     -42.96      -4.67      -0.00    -323.84

   40   7.2  1.5  0.5      -0.00       0.06      -0.00       0.00       0.00       0.00       0.00       0.00       0.00   72888.15
                           -0.00      -0.21      -0.00      61.91     563.98     -42.35      -4.75      43.00     323.84      -0.00

   41   8.2  1.5  0.5      -0.06       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.21       0.00       0.00      35.64     325.71     -24.41       8.26     -74.47    -560.77       0.02

   42   9.2  1.5  0.5       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00    -101.75    -928.05      69.64      -0.00       0.00       0.00       0.00

   43   1.2  1.5 -0.5       0.00       0.00       0.00      -0.00     -42.07      75.21      -6.74    -111.63      96.62      -0.15
                           -0.00      -0.00      -0.00       0.00    -659.65      44.31    -106.98    -143.20   -1120.92     -81.17

   44   2.2  1.5 -0.5       0.00       0.00       0.00      42.07      -0.00     657.20     -52.40   -1107.19     223.05      -0.15
                           -0.00      -0.00      -0.00     659.65       0.00     -47.30   -1128.66      65.68     104.84     -76.15

   45   3.2  1.5 -0.5       0.00       0.00       0.00     -75.21    -657.20       0.00     -12.77     232.93    1111.47      -0.03
                           -0.00      -0.00      -0.00     -44.31      47.30       0.00      83.59       6.09      73.24   -1132.58

   46   4.2  1.5 -0.5       0.00       0.00       0.00       6.74      52.40      12.77       0.00     -13.57     -28.10    1305.13
                           -0.00      -0.00      -0.00     106.98    1128.66     -83.59       0.00      85.53     647.01     -29.72

   47   5.2  1.5 -0.5       0.00       0.00       0.00     111.63    1107.19    -232.93      13.57       0.00    -652.57     -56.33
                           -0.00      -0.00      -0.00     143.20     -65.68      -6.09     -85.53       0.00     -29.70    -646.90

   48   6.2  1.5 -0.5       0.00       0.00       0.00     -96.62    -223.05   -1111.47      28.10     652.57      -0.00      26.89
                           -0.00      -0.00      -0.00    1120.92    -104.84     -73.24    -647.01      29.70       0.00      85.46

   49   7.2  1.5 -0.5       0.00       0.00       0.00       0.15       0.15       0.03   -1305.13      56.33     -26.89      -0.00
                           -0.00      -0.00      -0.00      81.17      76.15    1132.58      29.72     646.90     -85.46      -0.00

   50   8.2  1.5 -0.5       0.00       0.00       0.00   -1302.88     148.95      83.39      -0.13       0.03       0.08      -0.06
                           -0.00      -0.00      -0.00     -46.86     -43.98    -653.74      51.43    1120.72    -148.14       0.24

   51   9.2  1.5 -0.5       0.00       0.00       0.00   -1856.52     212.46     118.85       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00     133.61     125.18    1863.44      -0.00      -0.00       0.00       0.00

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

    1   1.2  0.5  0.5       0.00       0.00     -49.99    -256.89    -321.52     -12.42    -380.16    -195.77       0.57    -504.06
                          406.16   -1176.38     382.55     370.82     -52.34     357.39     -71.30    -415.85    -249.80     144.17

    2   2.2  0.5  0.5       0.00       0.00      48.83     232.13     347.81      13.92     401.35     165.26       0.67    -497.30
                         -435.06    1260.71    -317.56     445.29      -7.16    -370.11     -39.22    -425.00     221.69    -127.94

    3   3.2  0.5  0.5       0.00       0.00     -30.01    -461.79     356.70      22.48     262.54    -542.63       0.03      30.41
                         -383.80    1111.78    -321.81      11.79      22.29    -332.15      17.84      18.69    -515.81     297.70

    4   4.2  0.5  0.5       0.00       0.00     124.74    -174.02    -218.83     340.33      83.99      64.94      95.19       0.43
                         -298.36      -0.42    -214.49     -73.77     254.28     104.51     287.10     -94.15     -58.87    -101.81

    5   5.2  0.5  0.5       0.00       0.00      61.03    -120.53     131.24     128.78     -49.04      69.47    -332.20      -1.69
                          171.53       0.36     175.82     390.45      50.29     -49.16     148.33     180.53     -50.64     -87.46

    6   6.2  0.5  0.5       0.00       0.00     113.66      33.03     406.52     146.09    -175.64      18.09     143.27       0.74
                          561.10       0.96     399.47    -212.51      85.74    -161.40     140.12    -107.70       6.14      10.59

    7   7.2  0.5  0.5       0.00       0.00    -124.78    -402.39      89.12    -146.76      11.98     205.03      69.79       0.33
                           71.51       0.07      36.87     -95.79     -85.51     -27.29    -143.09     -23.61    -173.12    -298.91

    8   8.2  0.5  0.5       0.00       0.00     485.31     -68.00     -37.87    -184.95      11.84       1.61       1.67       0.02
                          -10.18      -0.07     -40.14     -31.51    -451.16      14.35     244.74     -33.34      -4.82      -8.53

    9   9.2  0.5  0.5       0.00       0.00      73.98     780.83    -240.73       3.40      11.28    -142.18      -0.07     -62.32
                          -35.55     -47.76     145.14    -341.75      12.53     -29.16      -6.11     -56.78    -129.81      74.80

   10  10.2  0.5  0.5       0.00       0.00     -78.12    -396.38    -511.49       3.11      96.54      51.14      -0.20    -115.04
                         -105.62    -142.18     471.07    -654.03      10.15     -87.57      -9.93    -105.40      58.93     -34.00

   11  11.2  0.5  0.5       0.00       0.00     -40.55      28.46    -684.43       5.31     109.58     -27.61       0.18     107.81
                         -133.29    -179.29     736.76     478.49     -84.95    -113.69      17.74      94.83     -12.14       6.97

   12  12.2  0.5  0.5       0.00       0.00     629.56     -72.06     -40.39      19.61      -0.97       0.43       0.02      -0.02
                           -0.01      -0.02      45.44      42.56     633.77       0.94      20.23      -2.63       0.01      -0.03

   13   1.2  0.5 -0.5    -504.06    -730.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -144.17     417.39    -408.25     110.13     871.16     447.38    -884.22     124.14     703.24     406.16

   14   2.2  0.5 -0.5    -497.30    -720.06       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          127.94    -370.39     475.25       8.12     803.10    -471.21    -832.63     103.59    -753.89    -435.06

   15   3.2  0.5 -0.5      30.41      44.08       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -297.70     861.77    -971.06     107.26      11.12    1007.93       8.68      13.71    -664.65    -383.80

   16   4.2  0.5 -0.5       0.43       0.11       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          101.81      -0.06     392.56     824.51     161.98     144.61      99.17      41.23     171.78    -298.36

   17   5.2  0.5 -0.5      -1.69      -0.36       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           87.46      -0.06     218.93     247.87    -889.03     105.08    -347.03      61.49     -98.93     171.53

   18   6.2  0.5 -0.5       0.74       0.15       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -10.59       0.01      39.86     420.94     338.45      -7.91     149.79     -13.91    -323.26     561.10

   19   7.2  0.5 -0.5       0.33       0.08       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          298.91      -0.28     803.62    -453.66     152.93     416.91      55.00       3.43     -41.17      71.51

   20   8.2  0.5 -0.5       0.02       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            8.53      -0.06      27.33      30.47       0.35      25.19    -119.97    -912.52       5.95     -10.18

   21   9.2  0.5 -0.5     -62.32      42.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -74.80    -101.22    1539.89    -225.31    -752.16     274.90    -118.88      19.80     -61.95     -35.55

   22  10.2  0.5 -0.5    -115.04      77.44       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           34.00      46.01    -806.86       1.67   -1154.99    -136.06    -191.63      23.42    -183.52    -105.62

   23  11.2  0.5 -0.5     107.81     -72.64       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -6.97      -9.43     228.88      58.69    1117.00      34.58     183.66     -24.00    -231.44    -133.29

   24  12.2  0.5 -0.5      -0.02       0.02       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.03      -0.01    -137.44   -1253.92      94.15      -0.60       5.45      41.20      -0.04      -0.01

   25   1.2  1.5  1.5   -1128.33   -1607.80       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           40.58    -115.71       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   26   2.2  1.5  1.5     128.99     183.99       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           38.08    -108.41       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   27   3.2  1.5  1.5      72.22     102.92       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          566.16   -1613.79       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   28   4.2  1.5  1.5      -0.12       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -44.54       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   29   5.2  1.5  1.5       0.03       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -970.57       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   30   6.2  1.5  1.5       0.07       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          128.29      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   31   7.2  1.5  1.5      -0.06       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.21      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   32   8.2  1.5  1.5       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   33   9.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   34   1.2  1.5  0.5       0.00       0.00      -0.00      42.07     -75.21       6.74     111.63     -96.62       0.15   -1302.88
                          -35.64     101.75      -0.00    -659.65      44.31    -106.98    -143.20   -1120.92     -81.17      46.86

   35   2.2  1.5  0.5       0.00       0.00     -42.07      -0.00    -657.20      52.40    1107.19    -223.05       0.15     148.95
                         -325.71     928.05     659.65      -0.00     -47.30   -1128.66      65.68     104.84     -76.15      43.98

   36   3.2  1.5  0.5       0.00       0.00      75.21     657.20       0.00      12.77    -232.93   -1111.47       0.03      83.39
                           24.41     -69.64     -44.31      47.30      -0.00      83.59       6.09      73.24   -1132.58     653.74

   37   4.2  1.5  0.5       0.00       0.00      -6.74     -52.40     -12.77       0.00      13.57      28.10   -1305.13      -0.13
                           -8.26       0.00     106.98    1128.66     -83.59      -0.00      85.53     647.01     -29.72     -51.43

   38   5.2  1.5  0.5       0.00       0.00    -111.63   -1107.19     232.93     -13.57       0.00     652.57      56.33       0.03
                           74.47      -0.00     143.20     -65.68      -6.09     -85.53      -0.00     -29.70    -646.90   -1120.72

   39   6.2  1.5  0.5       0.00       0.00      96.62     223.05    1111.47     -28.10    -652.57      -0.00     -26.89       0.08
                          560.77      -0.00    1120.92    -104.84     -73.24    -647.01      29.70      -0.00      85.46     148.14

   40   7.2  1.5  0.5       0.00       0.00      -0.15      -0.15      -0.03    1305.13     -56.33      26.89      -0.00      -0.06
                           -0.02      -0.00      81.17      76.15    1132.58      29.72     646.90     -85.46       0.00      -0.24

   41   8.2  1.5  0.5   72888.15       0.00    1302.88    -148.95     -83.39       0.13      -0.03      -0.08       0.06       0.00
                           -0.00      -0.00     -46.86     -43.98    -653.74      51.43    1120.72    -148.14       0.24      -0.00

   42   9.2  1.5  0.5       0.00   76069.65    1856.52    -212.46    -118.85      -0.00      -0.00      -0.00      -0.00       0.00
                            0.00      -0.00     133.61     125.18    1863.44      -0.00      -0.00       0.00       0.00      -0.00

   43   1.2  1.5 -0.5    1302.88    1856.52   70703.86       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           46.86    -133.61      -0.00      24.65     328.53     -14.91     560.47     -74.67      61.91      35.64

   44   2.2  1.5 -0.5    -148.95    -212.46       0.00   70703.86       0.00       0.00       0.00       0.00       0.00       0.00
                           43.98    -125.18     -24.65      -0.00     -36.02     -40.95     -62.33       7.69     563.98     325.71

   45   3.2  1.5 -0.5     -83.39    -118.85       0.00       0.00   70703.86       0.00       0.00       0.00       0.00       0.00
                          653.74   -1863.44    -328.53      36.02       0.00    -567.26     -11.34      -6.89     -42.35     -24.41

   46   4.2  1.5 -0.5       0.13      -0.00       0.00       0.00       0.00   72888.08       0.00       0.00       0.00       0.00
                          -51.43       0.00      14.91      40.95     567.26       0.00     323.79     -42.96      -4.75       8.26

   47   5.2  1.5 -0.5      -0.03      -0.00       0.00       0.00       0.00       0.00   72888.08       0.00       0.00       0.00
                        -1120.72       0.00    -560.47      62.33      11.34    -323.79      -0.00      -4.67      43.00     -74.47

   48   6.2  1.5 -0.5      -0.08      -0.00       0.00       0.00       0.00       0.00       0.00   72888.08       0.00       0.00
                          148.14      -0.00      74.67      -7.69       6.89      42.96       4.67       0.00     323.84    -560.77

   49   7.2  1.5 -0.5       0.06      -0.00       0.00       0.00       0.00       0.00       0.00       0.00   72888.15       0.00
                           -0.24      -0.00     -61.91    -563.98      42.35       4.75     -43.00    -323.84       0.00       0.02

   50   8.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   72888.15
                            0.00       0.00     -35.64    -325.71      24.41      -8.26      74.47     560.77      -0.02       0.00

   51   9.2  1.5 -0.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00     101.75     928.05     -69.64       0.00      -0.00      -0.00      -0.00      -0.00

   52   1.2  1.5 -1.5       0.00       0.00      -0.00     -36.43      65.13      -5.84     -96.67      83.68      -0.13    1128.33
                           -0.00      -0.00       0.00    -571.27      38.38     -92.64    -124.02    -970.74     -70.29      40.58

   53   2.2  1.5 -1.5       0.00       0.00      36.43      -0.00     569.15     -45.38    -958.85     193.17      -0.13    -128.99
                           -0.00      -0.00     571.27       0.00     -40.96    -977.45      56.88      90.79     -65.94      38.08

   54   3.2  1.5 -1.5       0.00       0.00     -65.13    -569.15       0.00     -11.06     201.72     962.56      -0.02     -72.22
                           -0.00      -0.00     -38.38      40.96       0.00      72.39       5.27      63.42    -980.84     566.16

   55   4.2  1.5 -1.5       0.00       0.00       5.84      45.38      11.06       0.00     -11.76     -24.34    1130.28       0.12
                           -0.00      -0.00      92.64     977.45     -72.39       0.00      74.07     560.33     -25.74     -44.54

   56   5.2  1.5 -1.5       0.00       0.00      96.67     958.85    -201.72      11.76       0.00    -565.14     -48.78      -0.03
                           -0.00      -0.00     124.02     -56.88      -5.27     -74.07       0.00     -25.72    -560.23    -970.57

   57   6.2  1.5 -1.5       0.00       0.00     -83.68    -193.17    -962.56      24.34     565.14      -0.00      23.29      -0.07
                           -0.00      -0.00     970.74     -90.79     -63.42    -560.33      25.72       0.00      74.01     128.29

   58   7.2  1.5 -1.5       0.00       0.00       0.13       0.13       0.02   -1130.28      48.78     -23.29      -0.00       0.06
                           -0.00      -0.00      70.29      65.94     980.84      25.74     560.23     -74.01      -0.00      -0.21

   59   8.2  1.5 -1.5       0.00       0.00   -1128.33     128.99      72.22      -0.12       0.03       0.07      -0.06       0.00
                           -0.00      -0.00     -40.58     -38.08    -566.16      44.54     970.57    -128.29       0.21       0.00

   60   9.2  1.5 -1.5       0.00       0.00   -1607.80     183.99     102.92       0.00       0.00       0.00       0.00      -0.00
                           -0.00      -0.00     115.71     108.41    1613.79      -0.00      -0.00       0.00       0.00      -0.00


   Nr   State  S   Sz       51         52         53         54         55         56         57         58         59         60

    1   1.2  0.5  0.5    -730.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -417.39       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    2   2.2  0.5  0.5    -720.06       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          370.39       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    3   3.2  0.5  0.5      44.08       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -861.77       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    4   4.2  0.5  0.5       0.11       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.06       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    5   5.2  0.5  0.5      -0.36       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.06       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    6   6.2  0.5  0.5       0.15       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    7   7.2  0.5  0.5       0.08       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.28       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    8   8.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.06       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    9   9.2  0.5  0.5      42.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          101.22       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   10  10.2  0.5  0.5      77.44       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -46.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   11  11.2  0.5  0.5     -72.64       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            9.43       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   12  12.2  0.5  0.5       0.02       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   13   1.2  0.5 -0.5       0.00     -86.58    -444.95    -556.89     -21.52    -658.45    -339.08       1.00    -873.06   -1264.41
                        -1176.38     662.59     642.28     -90.66     619.02    -123.50    -720.27    -432.67     249.70    -722.95

   14   2.2  0.5 -0.5       0.00      84.57     402.06     602.42      24.11     695.16     286.23       1.16    -861.35   -1247.19
                         1260.71    -550.04     771.27     -12.39    -641.04     -67.94    -736.11     383.98    -221.60     641.53

   15   3.2  0.5 -0.5       0.00     -51.98    -799.85     617.83      38.93     454.73    -939.86       0.05      52.67      76.34
                         1111.78    -557.39      20.42      38.61    -575.30      30.89      32.38    -893.41     515.63   -1492.64

   16   4.2  0.5 -0.5       0.00     216.06    -301.42    -379.02     589.48     145.48     112.47     164.87       0.75       0.19
                           -0.42    -371.51    -127.77     440.43     181.01     497.27    -163.07    -101.97    -176.34       0.10

   17   5.2  0.5 -0.5       0.00     105.71    -208.76     227.31     223.06     -84.93     120.33    -575.38      -2.93      -0.62
                            0.36     304.53     676.29      87.11     -85.16     256.91     312.68     -87.72    -151.48       0.11

   18   6.2  0.5 -0.5       0.00     196.87      57.21     704.11     253.03    -304.22      31.34     248.14       1.29       0.26
                            0.96     691.91    -368.08     148.51    -279.56     242.69    -186.54      10.63      18.34      -0.03

   19   7.2  0.5 -0.5       0.00    -216.13    -696.97     154.35    -254.20      20.75     355.13     120.89       0.57       0.14
                            0.07      63.86    -165.91    -148.10     -47.27    -247.84     -40.90    -299.85    -517.72       0.48

   20   8.2  0.5 -0.5       0.00     840.58    -117.77     -65.60    -320.35      20.51       2.79       2.90       0.03       0.00
                           -0.07     -69.52     -54.58    -781.44      24.85     423.91     -57.75      -8.36     -14.77       0.10

   21   9.2  0.5 -0.5       0.00     128.14    1352.43    -416.95       5.89      19.54    -246.26      -0.12    -107.95      72.74
                          -47.76     251.39    -591.93      21.71     -50.51     -10.57     -98.34    -224.83     129.56     175.31

   22  10.2  0.5 -0.5       0.00    -135.30    -686.55    -885.93       5.39     167.21      88.57      -0.34    -199.26     134.13
                         -142.18     815.92   -1132.82      17.58    -151.67     -17.20    -182.55     102.07     -58.88     -79.70

   23  11.2  0.5 -0.5       0.00     -70.24      49.29   -1185.48       9.20     189.80     -47.82       0.31     186.74    -125.81
                         -179.29    1276.11     828.78    -147.14    -196.92      30.73     164.26     -21.03      12.08      16.33

   24  12.2  0.5 -0.5       0.00    1090.43    -124.80     -69.96      33.97      -1.68       0.74       0.03      -0.04       0.04
                           -0.02      78.70      73.71    1097.73       1.62      35.05      -4.56       0.01      -0.04       0.02

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

   34   1.2  1.5  0.5   -1856.52       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -133.61       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   35   2.2  1.5  0.5     212.46       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -125.18       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   36   3.2  1.5  0.5     118.85       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                        -1863.44       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   37   4.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   38   5.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   39   6.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   40   7.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   41   8.2  1.5  0.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   42   9.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   43   1.2  1.5 -0.5       0.00      -0.00      36.43     -65.13       5.84      96.67     -83.68       0.13   -1128.33   -1607.80
                         -101.75      -0.00    -571.27      38.38     -92.64    -124.02    -970.74     -70.29      40.58    -115.71

   44   2.2  1.5 -0.5       0.00     -36.43      -0.00    -569.15      45.38     958.85    -193.17       0.13     128.99     183.99
                         -928.05     571.27      -0.00     -40.96    -977.45      56.88      90.79     -65.94      38.08    -108.41

   45   3.2  1.5 -0.5       0.00      65.13     569.15       0.00      11.06    -201.72    -962.56       0.02      72.22     102.92
                           69.64     -38.38      40.96      -0.00      72.39       5.27      63.42    -980.84     566.16   -1613.79

   46   4.2  1.5 -0.5       0.00      -5.84     -45.38     -11.06       0.00      11.76      24.34   -1130.28      -0.12       0.00
                           -0.00      92.64     977.45     -72.39      -0.00      74.07     560.33     -25.74     -44.54       0.00

   47   5.2  1.5 -0.5       0.00     -96.67    -958.85     201.72     -11.76       0.00     565.14      48.78       0.03       0.00
                            0.00     124.02     -56.88      -5.27     -74.07      -0.00     -25.72    -560.23    -970.57       0.00

   48   6.2  1.5 -0.5       0.00      83.68     193.17     962.56     -24.34    -565.14      -0.00     -23.29       0.07       0.00
                            0.00     970.74     -90.79     -63.42    -560.33      25.72      -0.00      74.01     128.29      -0.00

   49   7.2  1.5 -0.5       0.00      -0.13      -0.13      -0.02    1130.28     -48.78      23.29      -0.00      -0.06       0.00
                            0.00      70.29      65.94     980.84      25.74     560.23     -74.01       0.00      -0.21      -0.00

   50   8.2  1.5 -0.5       0.00    1128.33    -128.99     -72.22       0.12      -0.03      -0.07       0.06       0.00      -0.00
                            0.00     -40.58     -38.08    -566.16      44.54     970.57    -128.29       0.21      -0.00       0.00

   51   9.2  1.5 -0.5   76069.65    1607.80    -183.99    -102.92      -0.00      -0.00      -0.00      -0.00       0.00       0.00
                            0.00     115.71     108.41    1613.79      -0.00      -0.00       0.00       0.00      -0.00       0.00

   52   1.2  1.5 -1.5    1607.80   70703.86       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -115.71      -0.00      73.96     985.58     -44.73    1681.40    -224.00     185.73     106.91    -305.24

   53   2.2  1.5 -1.5    -183.99       0.00   70703.86       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -108.41     -73.96      -0.00    -108.05    -122.84    -186.99      23.07    1691.95     977.13   -2784.16

   54   3.2  1.5 -1.5    -102.92       0.00       0.00   70703.86       0.00       0.00       0.00       0.00       0.00       0.00
                        -1613.79    -985.58     108.05       0.00   -1701.77     -34.01     -20.67    -127.06     -73.22     208.92

   55   4.2  1.5 -1.5      -0.00       0.00       0.00       0.00   72888.08       0.00       0.00       0.00       0.00       0.00
                            0.00      44.73     122.84    1701.77       0.00     971.37    -128.88     -14.24      24.77      -0.00

   56   5.2  1.5 -1.5      -0.00       0.00       0.00       0.00       0.00   72888.08       0.00       0.00       0.00       0.00
                            0.00   -1681.40     186.99      34.01    -971.37      -0.00     -14.02     128.99    -223.41       0.00

   57   6.2  1.5 -1.5      -0.00       0.00       0.00       0.00       0.00       0.00   72888.08       0.00       0.00       0.00
                           -0.00     224.00     -23.07      20.67     128.88      14.02       0.00     971.51   -1682.30       0.00

   58   7.2  1.5 -1.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00   72888.15       0.00       0.00
                           -0.00    -185.73   -1691.95     127.06      14.24    -128.99    -971.51       0.00       0.05       0.00

   59   8.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   72888.15       0.00
                            0.00    -106.91    -977.13      73.22     -24.77     223.41    1682.30      -0.05       0.00       0.00

   60   9.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   76069.65
                           -0.00     305.24    2784.16    -208.92       0.00      -0.00      -0.00      -0.00      -0.00       0.00


 No symmetry adaption


 Spin-orbit eigenstates   (energies)
 ======================

     Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
              (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1  -295.53978058    -0.01205863    -2646.56      0.00000000        0.00      0.0000
     2  -295.53978058    -0.01205863    -2646.56      0.00000000        0.00      0.0000
     3  -295.53977193    -0.01204998    -2644.67      0.00000865        1.90      0.0002
     4  -295.53977193    -0.01204998    -2644.67      0.00000865        1.90      0.0002
     5  -295.50598333     0.02173863     4771.08      0.03379725     7417.64      0.9197
     6  -295.50598333     0.02173863     4771.08      0.03379725     7417.64      0.9197
     7  -295.21858361     0.30913834    67848.02      0.32119697    70494.59      8.7402
     8  -295.21858361     0.30913834    67848.02      0.32119697    70494.59      8.7402
     9  -295.21853185     0.30919010    67859.38      0.32124873    70505.95      8.7416
    10  -295.21853185     0.30919010    67859.38      0.32124873    70505.95      8.7416
    11  -295.21785955     0.30986240    68006.94      0.32192102    70653.50      8.7599
    12  -295.21785955     0.30986240    68006.94      0.32192102    70653.50      8.7599
    13  -295.21771404     0.31000792    68038.87      0.32206654    70685.44      8.7639
    14  -295.21771404     0.31000792    68038.87      0.32206654    70685.44      8.7639
    15  -295.21749976     0.31022219    68085.90      0.32228082    70732.46      8.7697
    16  -295.21749976     0.31022219    68085.90      0.32228082    70732.46      8.7697
    17  -295.21480023     0.31292172    68678.38      0.32498035    71324.94      8.8432
    18  -295.21480023     0.31292172    68678.38      0.32498035    71324.94      8.8432
    19  -295.20480512     0.32291683    70872.05      0.33497546    73518.62      9.1151
    20  -295.20480512     0.32291683    70872.05      0.33497546    73518.62      9.1151
    21  -295.20463995     0.32308200    70908.30      0.33514063    73554.87      9.1196
    22  -295.20463995     0.32308200    70908.30      0.33514063    73554.87      9.1196
    23  -295.20455145     0.32317051    70927.73      0.33522913    73574.29      9.1220
    24  -295.20455145     0.32317051    70927.73      0.33522913    73574.29      9.1220
    25  -295.20454975     0.32317220    70928.10      0.33523082    73574.66      9.1221
    26  -295.20454975     0.32317220    70928.10      0.33523082    73574.66      9.1221
    27  -295.20434399     0.32337796    70973.26      0.33543658    73619.82      9.1277
    28  -295.20434399     0.32337796    70973.26      0.33543658    73619.82      9.1277
    29  -295.20429136     0.32343059    70984.81      0.33548922    73631.37      9.1291
    30  -295.20429136     0.32343059    70984.81      0.33548922    73631.37      9.1291
    31  -295.20386074     0.32386121    71079.32      0.33591983    73725.88      9.1408
    32  -295.20386074     0.32386121    71079.32      0.33591983    73725.88      9.1408
    33  -295.18967533     0.33804662    74192.66      0.35010525    76839.22      9.5268
    34  -295.18967533     0.33804662    74192.66      0.35010525    76839.22      9.5268
    35  -295.18738237     0.34033958    74695.90      0.35239821    77342.47      9.5892
    36  -295.18738237     0.34033958    74695.90      0.35239821    77342.47      9.5892
    37  -295.18731326     0.34040869    74711.07      0.35246732    77357.63      9.5911
    38  -295.18731326     0.34040869    74711.07      0.35246732    77357.63      9.5911
    39  -295.18434581     0.34337614    75362.35      0.35543477    78008.92      9.6719
    40  -295.18434581     0.34337614    75362.35      0.35543477    78008.92      9.6719
    41  -295.18405263     0.34366932    75426.70      0.35572795    78073.26      9.6799
    42  -295.18405263     0.34366932    75426.70      0.35572795    78073.26      9.6799
    43  -295.18401618     0.34370577    75434.70      0.35576440    78081.26      9.6808
    44  -295.18401618     0.34370577    75434.70      0.35576440    78081.26      9.6808
    45  -295.18331386     0.34440809    75588.84      0.35646671    78235.40      9.7000
    46  -295.18331386     0.34440809    75588.84      0.35646671    78235.40      9.7000
    47  -295.18326195     0.34446000    75600.23      0.35651863    78246.80      9.7014
    48  -295.18326195     0.34446000    75600.23      0.35651863    78246.80      9.7014
    49  -295.18107099     0.34665097    76081.09      0.35870959    78727.66      9.7610
    50  -295.18107099     0.34665097    76081.09      0.35870959    78727.66      9.7610
    51  -295.17519422     0.35252773    77370.89      0.36458636    80017.46      9.9209
    52  -295.17519422     0.35252773    77370.89      0.36458636    80017.46      9.9209
    53  -295.17518135     0.35254060    77373.72      0.36459923    80020.28      9.9213
    54  -295.17518135     0.35254060    77373.72      0.36459923    80020.28      9.9213
    55  -295.17302989     0.35469206    77845.91      0.36675068    80492.47      9.9798
    56  -295.17302989     0.35469206    77845.91      0.36675068    80492.47      9.9798
    57  -295.16542850     0.36229345    79514.22      0.37435207    82160.78     10.1866
    58  -295.16542850     0.36229345    79514.22      0.37435207    82160.78     10.1866
    59  -295.16538290     0.36233905    79524.23      0.37439768    82170.79     10.1879
    60  -295.16538290     0.36233905    79524.23      0.37439768    82170.79     10.1879


 Eigenvectors of spin-orbit matrix
 =================================

  Basis states          Eigenvectors (columnwise)

   Nr   State  S   Sz        1             2             3             4             5             6             7             8

    1    1.2  0.5  0.5  -0.037338090   0.614354944  -0.076527764  -0.529483301   0.527175107   0.233934583  -0.000978208  -0.016047534
                         0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000

    2    2.2  0.5  0.5  -0.093098437  -0.101995245  -0.028114316  -0.107666257  -0.134290801   0.302756975  -0.006160515   0.002007984
                        -0.602045934  -0.146129208   0.120926908  -0.484929146  -0.429260866   0.196637500   0.015186281   0.001388650

    3    3.2  0.5  0.5   0.157244318  -0.296108099   0.151862095  -0.376455612   0.053355249  -0.119829887  -0.005763395   0.008258710
                        -0.304639871   0.102901884   0.185183570   0.500090539   0.147313015   0.542046655   0.004784994  -0.002962798

    4    4.2  0.5  0.5  -0.005236505   0.000780681   0.003419581   0.000774782   0.000003984  -0.000002402   0.017522171   0.003652821
                        -0.000290821   0.002218469   0.001389169   0.000504080  -0.000006425   0.000001770   0.009950638  -0.015375256

    5    5.2  0.5  0.5  -0.001875146  -0.003551822  -0.000845351  -0.003846096  -0.000005476  -0.000011624   0.006943873  -0.006999587
                         0.002893728   0.001104411  -0.001163104  -0.002184541   0.000006413  -0.000002913   0.008497838  -0.003903546

    6    6.2  0.5  0.5  -0.001733839   0.000043915  -0.002038901   0.000460395   0.000005018   0.000001905   0.009875876  -0.003257425
                        -0.002520668   0.001543788  -0.005339576   0.001661663  -0.000004744  -0.000000112  -0.002878787  -0.009059565

    7    7.2  0.5  0.5  -0.002860232  -0.000568755  -0.000586201  -0.000376832   0.000001667   0.000003749   0.003772315   0.001914213
                         0.000426055  -0.005851551  -0.000155993   0.001976425   0.000001170   0.000001751  -0.000795433   0.017819787

    8    8.2  0.5  0.5  -0.001689479  -0.000080698  -0.005340273   0.000797282  -0.000001286   0.000003055   0.007107009  -0.000208676
                        -0.000120516   0.001561527   0.003481698   0.001021050   0.000002570   0.000000160   0.003839076  -0.008270600

    9    9.2  0.5  0.5   0.000031507   0.000017215   0.000026685  -0.000179101  -0.000473980  -0.000054492  -0.074485468  -0.013372667
                        -0.000082167   0.000023214   0.000049163   0.000122565  -0.000154643  -0.000733730   0.064068653  -0.031556465

   10   10.2  0.5  0.5  -0.000028355  -0.000026817  -0.000010180  -0.000019023   0.000240357  -0.000463999  -0.075706623   0.028277669
                        -0.000161713  -0.000042606   0.000031351  -0.000149744   0.000674638  -0.000271081   0.192977866   0.019540110

   11   11.2  0.5  0.5   0.000031540  -0.000186262   0.000041341   0.000075166   0.000660852   0.000409160  -0.027043758   0.232526808
                        -0.000038466   0.000015420   0.000026770   0.000076064  -0.000119123  -0.000433572   0.030880303  -0.019771026

   12   12.2  0.5  0.5  -0.000006438  -0.000000386   0.000007684  -0.000001139   0.005571705  -0.012555869  -0.000145041   0.000029001
                        -0.000000530   0.000006917  -0.000004845  -0.000001424  -0.010779442  -0.000394636  -0.000038560   0.000168232

   13    1.2  0.5 -0.5   0.604298099   0.036726874   0.524923719  -0.075868754  -0.162395794   0.365961370  -0.014883411   0.000907247
                        -0.110705939  -0.006728274   0.069337256  -0.010021516   0.168383476  -0.379454700  -0.006000619   0.000365779

   14    2.2  0.5 -0.5  -0.073993320  -0.016913434   0.170241872  -0.012036510  -0.068634374   0.215753374   0.002381575   0.000035045
                         0.162116514  -0.608966799  -0.466654052  -0.123567206   0.354425472   0.394650975  -0.000537073   0.016388223

   15    3.2  0.5 -0.5  -0.309803662  -0.209565963   0.307725614   0.174804637   0.473344165  -0.068995398   0.006551732   0.003556063
                        -0.047859122  -0.271317773   0.545081940  -0.163702136   0.290032895  -0.140668199   0.005836031   0.006592974

   16    4.2  0.5 -0.5   0.000368136   0.005098379  -0.000834120   0.003572049   0.000002942   0.000007390  -0.002361399  -0.019971895
                        -0.002322831  -0.001229672   0.000398279  -0.000929403  -0.000000500   0.000001592   0.015625793   0.002676770

   17    5.2  0.5 -0.5  -0.003692693   0.002365896   0.004099047  -0.000990383   0.000005972  -0.000008417  -0.007951465  -0.009617727
                        -0.000446298   0.002508460  -0.001662073   0.001042387  -0.000010389  -0.000000510   0.001003034   0.005284879

   18    6.2  0.5 -0.5  -0.000234993   0.001251235  -0.000674029  -0.002720575  -0.000001403   0.000006899  -0.006408748  -0.008083000
                        -0.001526430  -0.002791840   0.001587063   0.005026595   0.000001293  -0.000000319   0.007184323  -0.006362818

   19    7.2  0.5 -0.5   0.000494997   0.002890185   0.000114768  -0.000601581  -0.000001342   0.000000315   0.008438665  -0.003201229
                         0.005858252  -0.000096329   0.002008752   0.000077886   0.000003914  -0.000002013  -0.015811323  -0.002148304

   20    8.2  0.5 -0.5  -0.000360762   0.001640105  -0.000924126  -0.004838349  -0.000002005  -0.000002742  -0.003286145  -0.008026988
                        -0.001521424  -0.000422985   0.000907851  -0.004151039   0.000002310  -0.000000858   0.007592603   0.000903073

   21    9.2  0.5 -0.5   0.000012750  -0.000045798   0.000161509   0.000032894  -0.000490303  -0.000217723  -0.024202424   0.045125078
                        -0.000025936  -0.000075144   0.000144964  -0.000045245  -0.000548573   0.000448518   0.024266878   0.087273160

   22   10.2  0.5 -0.5  -0.000018701  -0.000001249   0.000038468  -0.000005987   0.000126984  -0.000318743   0.033532935  -0.001945092
                         0.000046741  -0.000164176  -0.000145963  -0.000032415  -0.000522164  -0.000641335  -0.007548821   0.207287641

   23   11.2  0.5 -0.5  -0.000185991  -0.000037955  -0.000084479   0.000044491  -0.000596117   0.000544502   0.208265868   0.013534941
                         0.000018397  -0.000032152   0.000065565  -0.000021125  -0.000006474  -0.000392979   0.105285033   0.038752591

   24   12.2  0.5 -0.5  -0.000001626   0.000006237   0.000001315   0.000006983   0.008432145   0.011626761   0.000089803   0.000148938
                        -0.000006734  -0.000001682  -0.000001263   0.000005809  -0.009311527   0.003472565  -0.000145184   0.000018472

   25    1.2  1.5  1.5   0.007201233   0.000973284  -0.002327025  -0.000959425   0.002938991  -0.005799667   0.169208404   0.005450867
                         0.001349259  -0.008557695   0.001671901   0.002087249  -0.004803883  -0.000600638   0.110475320  -0.250526254

   26    2.2  1.5  1.5  -0.004543237  -0.000464304   0.002747110  -0.012030230   0.000046321   0.000675953  -0.142432504   0.007004297
                         0.001275571  -0.002368305   0.002347411   0.014396008   0.000749056  -0.000365180  -0.047667257  -0.085892534

   27    3.2  1.5  1.5  -0.000927142   0.008301891  -0.001596877   0.000391942   0.004845723   0.000555612  -0.115349232   0.263954276
                         0.007572789   0.001266146  -0.002810438  -0.000725043   0.002909245  -0.005825472   0.207166380   0.010432085

   28    4.2  1.5  1.5   0.007000351   0.000775965  -0.002405879   0.000365656   0.002829075  -0.006071439  -0.071092733   0.000843120
                         0.001009714  -0.007754748   0.001343598   0.000433295  -0.005257507  -0.000634540  -0.041977474   0.094068128

   29    5.2  1.5  1.5   0.000000174   0.007839810  -0.001285601  -0.000681464   0.006272925   0.000019899   0.028067818  -0.087235506
                         0.006809783   0.001670375  -0.002315147   0.000611260   0.003984109  -0.004599863  -0.072225818  -0.011188559

   30    6.2  1.5  1.5   0.007476117   0.000879326   0.000525669  -0.001628475   0.008203248  -0.003447309  -0.093894869   0.002216417
                        -0.002696159   0.006476351   0.000738147   0.002018509   0.007538588   0.011833334  -0.032295220  -0.085498345

   31    7.2  1.5  1.5   0.000517216  -0.001867629  -0.001496196  -0.007956272  -0.004149046  -0.005722076   0.012335884   0.025639544
                         0.002021883   0.000510460   0.001424478  -0.006587548   0.004582445  -0.001710281  -0.025832160  -0.002687896

   32    8.2  1.5  1.5  -0.001819912   0.006909960  -0.000381231  -0.002134308   0.007167123   0.009883696  -0.039698181  -0.085435898
                        -0.007480244  -0.001944097   0.000364124  -0.001778874  -0.007915512   0.002952662   0.086201206   0.009084587

   33    9.2  1.5  1.5  -0.001408416   0.005600560  -0.004510179  -0.024149510  -0.000001394  -0.000002432   0.032781291   0.073104660
                        -0.006066116  -0.001614956   0.004296890  -0.020012088   0.000001598  -0.000000500  -0.073742620  -0.007781120

   34    1.2  1.5  0.5  -0.000892175   0.006227004   0.002090067   0.011319701   0.002947738   0.002923317   0.122085475   0.178858087
                        -0.007729316  -0.001085012  -0.001890223   0.008601795  -0.001894732   0.000391823  -0.190502662   0.006371913

   35    2.2  1.5  0.5   0.001367847  -0.005193068   0.000579760  -0.000649447   0.005546544  -0.000195860   0.067537423  -0.144521314
                        -0.003699492   0.000642580   0.001572113  -0.001652436   0.003331812  -0.006443374  -0.067036603   0.032841875

   36    3.2  1.5  0.5   0.011520474   0.002909212  -0.001228722   0.004196770   0.001943018  -0.001138869   0.353966120   0.035544631
                        -0.001999005   0.010705107  -0.001060937  -0.006479945   0.002200376   0.003560164   0.186727089   0.361591639

   37    4.2  1.5  0.5  -0.000563807   0.001835228  -0.001457389  -0.008051063  -0.007396723  -0.009570750  -0.012462747  -0.028907356
                        -0.002051939  -0.000629666   0.001316797  -0.006025664   0.007446460  -0.003346413   0.030518675   0.004109293

   38    5.2  1.5  0.5  -0.001983093  -0.000344752   0.002170229  -0.005978560  -0.007513964   0.003335242   0.024320312  -0.000460145
                         0.000793844  -0.001792773   0.002534282   0.007977123  -0.007417408  -0.009640646   0.005136236   0.021816663

   39    6.2  1.5  0.5   0.000066478   0.002092874   0.005106248   0.002250399   0.000898988  -0.000583594   0.009957520  -0.031610680
                         0.001747409   0.000324370   0.008309023  -0.002418292   0.001101708   0.001219143  -0.025364885  -0.001752396

   40    7.2  1.5  0.5  -0.007139877  -0.000441515  -0.002369265   0.000332547  -0.004730435   0.010657365   0.082605700  -0.004957960
                        -0.000666674   0.007675332   0.001496431   0.000415719   0.009148444   0.000333396   0.043954113  -0.103131176

   41    8.2  1.5  0.5  -0.001917052  -0.000143681   0.008745573  -0.001294452  -0.002726165   0.006146223   0.012575098  -0.001249094
                        -0.000164560   0.002066998  -0.005486321  -0.001608092   0.005276986   0.000194615   0.006692699  -0.015957660

   42    9.2  1.5  0.5   0.021711753   0.001381259  -0.007083713   0.001094942  -0.000002779   0.000005012   0.204859787  -0.012923905
                         0.002004851  -0.023349952   0.004416753   0.001356585   0.000005460   0.000000092   0.109041255  -0.256153888

   43    1.2  1.5 -0.5  -0.006320587   0.000515242   0.012348651  -0.001824538   0.001747317  -0.003410106  -0.168265965   0.041994884
                         0.000054847   0.007763557  -0.007045376  -0.002147645  -0.002376172   0.000806439  -0.060970332   0.222334336

   44    2.2  1.5 -0.5   0.005223851   0.002012100  -0.000860245  -0.000780640   0.004501903  -0.001452172   0.121756931   0.037571260
                        -0.000303723   0.003392448   0.001553159   0.001482654   0.004613924   0.006305261   0.084499992   0.087427742

   45    3.2  1.5 -0.5  -0.000932543   0.011692105   0.003312064   0.001357073  -0.003353161   0.000234976  -0.168175316   0.398111095
                         0.011054103  -0.000109692   0.006973722  -0.000890896  -0.001651696   0.002926049   0.322069864  -0.040823721

   46    4.2  1.5 -0.5  -0.001918650  -0.000184821  -0.008770809   0.001272401  -0.004235240   0.010494633   0.025273775  -0.000146891
                        -0.000288653   0.002119947   0.004919467   0.001496307   0.009211975  -0.000154796   0.014620460  -0.032964951

   47    5.2  1.5 -0.5   0.000016053  -0.002093679  -0.004882450  -0.002483411   0.009254531  -0.000122824  -0.007731092   0.024476645
                        -0.001825550  -0.000423498  -0.008691337   0.002228261   0.004291801  -0.010557580   0.020406096   0.004330399

   48    6.2  1.5 -0.5  -0.002000163  -0.000249491   0.001914338  -0.006150365  -0.001282652   0.000168926   0.029972842  -0.000249456
                         0.000696193  -0.001730783   0.002692163   0.007568794  -0.000426256   0.001411880   0.010194839   0.027248255

   49    7.2  1.5 -0.5   0.001817372  -0.006902865   0.000384123   0.002152901   0.007158296   0.009868783   0.043161914   0.093048967
                         0.007470128   0.001942357  -0.000368591   0.001793807  -0.007902493   0.002945873  -0.093795896  -0.009877017

   50    8.2  1.5 -0.5   0.000513800  -0.001856017  -0.001493889  -0.007951813   0.004126584   0.005690800   0.007125495   0.014165459
                         0.002007271   0.000507316   0.001424732  -0.006584332  -0.004559082   0.001700985  -0.014332986  -0.001505018

   51    9.2  1.5 -0.5  -0.005566278   0.020995066   0.001263161   0.006444327   0.000003413   0.000005859   0.107769440   0.230772368
                        -0.022718818  -0.005884461  -0.001201517   0.005306350  -0.000003671   0.000001790  -0.232739317  -0.024528392

   52    1.2  1.5 -1.5   0.002499437  -0.006840216   0.000677832  -0.002088046   0.003593757   0.005498008  -0.088623284  -0.198243450
                         0.008242223   0.002624825   0.002194914  -0.001962233  -0.004591494   0.001219370   0.234390762   0.039189471

   53    2.2  1.5 -1.5  -0.000029938   0.004698722   0.010041437   0.003030853  -0.000732094  -0.000507007  -0.025621417   0.149924252
                         0.002413203   0.000436005   0.015847429  -0.001967455   0.000233037  -0.000553331   0.082280803   0.009050105

   54    3.2  1.5 -1.5   0.007937833   0.002276572  -0.000293620  -0.001951160  -0.004578811   0.001269826   0.248707302   0.029516276
                        -0.002741409   0.007281755  -0.000770125   0.002577121  -0.003644080  -0.005507475   0.089024526   0.235270363

   55    4.2  1.5 -1.5   0.002160658  -0.006703808  -0.000419248  -0.002209213   0.003758017   0.005748219   0.035956647   0.081632056
                         0.007487977   0.002254639   0.000381680  -0.001647084  -0.004810646   0.001613389  -0.086928954  -0.012348787

   56    5.2  1.5 -1.5   0.007410475   0.001226943   0.000595549  -0.001577705  -0.003324743   0.001486905  -0.085090965   0.000975525
                        -0.003055755   0.006698340   0.000695236   0.002126857  -0.003178871  -0.007280922  -0.022242865  -0.077481737

   57    6.2  1.5 -1.5  -0.000302098  -0.007839579   0.001350122   0.000617804   0.010910599   0.000268448  -0.029914576   0.099159611
                        -0.006528788  -0.001304838   0.002214380  -0.000662953   0.005733286  -0.011137842   0.080124888   0.005157449

   58    7.2  1.5 -1.5  -0.001929041  -0.000144409   0.008750415  -0.001296772   0.002741185  -0.006178631   0.022774516  -0.001781649
                        -0.000165559   0.002081986  -0.005488925  -0.001608142  -0.005305952  -0.000194666   0.012080249  -0.028570969

   59    8.2  1.5 -1.5   0.007147170   0.000442190   0.002348877  -0.000330265  -0.004735901   0.010672864  -0.075841211   0.004585360
                         0.000667107  -0.007685740  -0.001484062  -0.000410911   0.009163891   0.000336080  -0.040372429   0.094792236

   60    9.2  1.5 -1.5   0.005799893   0.000292255   0.026562186  -0.003908651   0.000001328  -0.000002118   0.064891911  -0.002828848
                         0.000579306  -0.006220610  -0.016677313  -0.004850508  -0.000002097  -0.000000106   0.034552526  -0.080651005


   Nr   State  S   Sz        9            10            11            12            13            14            15            16

    1    1.2  0.5  0.5   0.013522053  -0.000000139   0.000988160   0.000074360   0.000253158   0.000235852  -0.000145945   0.000500058
                         0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000

    2    2.2  0.5  0.5   0.001820977  -0.001625494   0.000579656  -0.000398908  -0.000296386  -0.000095825  -0.000403334  -0.000307732
                         0.011478889  -0.005435987   0.000535057  -0.000423550   0.000115990  -0.000151867   0.000191519  -0.000000175

    3    3.2  0.5  0.5   0.009109685  -0.007116923   0.000058060  -0.000421613  -0.000285869  -0.000110244  -0.000146904  -0.000375883
                        -0.013072694  -0.000909288  -0.000569041  -0.000032857   0.000039502  -0.000019162  -0.000036800   0.000048684

    4    4.2  0.5  0.5  -0.001430916  -0.003595576   0.045776256   0.088083797  -0.051529020   0.047671896  -0.016534426   0.006267592
                        -0.003565605   0.006429603   0.039383073   0.039021042  -0.040372752  -0.049070676  -0.000105847  -0.157075337

    5    5.2  0.5  0.5   0.013641456  -0.003297788  -0.121361442  -0.026460663   0.012027390  -0.071857544   0.056708062  -0.027454802
                         0.008650236  -0.002781821  -0.004873451  -0.006158712  -0.104670380   0.101903218   0.001011640  -0.070921064

    6    6.2  0.5  0.5  -0.005888535  -0.001933245  -0.014334489  -0.173121052   0.029857354   0.067751027  -0.037871530  -0.005274759
                        -0.003480515   0.002866183   0.018238327  -0.098615737  -0.001290659  -0.048971993  -0.018740078  -0.063371731

    7    7.2  0.5  0.5   0.002921580  -0.001168933  -0.020677573  -0.000642800  -0.032357282   0.067859009   0.044810237   0.005476976
                        -0.009349904  -0.000181040   0.100407670  -0.033033265   0.030314013   0.043172932   0.159556348   0.008233567

    8    8.2  0.5  0.5   0.000196637   0.012713494  -0.002980633   0.051499324   0.028375927  -0.032645737  -0.008879725  -0.002762060
                        -0.006031212  -0.015777242  -0.027708071  -0.087517962   0.156162825   0.083009076  -0.021330691  -0.071283350

    9    9.2  0.5  0.5   0.192399426  -0.080236151   0.008319936  -0.005419368  -0.003235352   0.004706590  -0.006126645   0.000472518
                        -0.136884918  -0.014045541  -0.008047831  -0.000489889   0.001222675   0.000723241  -0.003542468   0.002129778

   10   10.2  0.5  0.5   0.012155819  -0.016853402   0.006369109  -0.005911292  -0.001397675   0.001537134  -0.007529716  -0.000356948
                         0.156251917  -0.069818374   0.008319813  -0.006371688   0.003563048  -0.005566486   0.005350128  -0.000825482

   11   11.2  0.5  0.5  -0.089741980  -0.047336391  -0.011195458  -0.005198363  -0.001937343  -0.004532098   0.005061658  -0.006943211
                        -0.087894155  -0.005704511  -0.004053316  -0.000959399  -0.002373763   0.003378080  -0.002293521   0.000374515

   12   12.2  0.5  0.5  -0.000002721  -0.000111989  -0.000044199   0.001351650   0.001093268  -0.001261567   0.000948804   0.000274126
                         0.000043060   0.000130824  -0.000838531  -0.002408214   0.005837550   0.003075447   0.002334826   0.006493905

   13    1.2  0.5 -0.5  -0.000000136  -0.013241391  -0.000055534   0.000737980  -0.000194956   0.000209262  -0.000187767  -0.000054801
                         0.000000028   0.002740710   0.000049451  -0.000657149  -0.000132734   0.000142474  -0.000463467  -0.000135266

   14    2.2  0.5 -0.5  -0.000489965   0.000543411   0.000016243   0.000077076   0.000164678  -0.000179717   0.000115712   0.000026057
                         0.005652620   0.011609719  -0.000581599  -0.000785077  -0.000071605  -0.000262680   0.000285148  -0.000445734

   15    3.2  0.5 -0.5  -0.006784907  -0.011570237   0.000293019   0.000421786   0.000101913  -0.000214069   0.000096019  -0.000089269
                         0.002332904  -0.010954967  -0.000304920   0.000386361   0.000046204  -0.000193535   0.000366659  -0.000122336

   16    4.2  0.5 -0.5  -0.004824127   0.000678524  -0.039833106   0.007996107  -0.011789557  -0.065315235   0.143228155  -0.006306614
                        -0.005567384  -0.003781622   0.087719557  -0.059854443  -0.067391003   0.004372539  -0.064789196  -0.015284798

   17    5.2  0.5 -0.5  -0.002665508  -0.011605047   0.015665744  -0.087394546   0.002048174  -0.048964970   0.076040521   0.022230928
                         0.003392492   0.011235604  -0.022196417   0.084347753   0.124673884   0.093289755  -0.001184318   0.052178669

   18    6.2  0.5 -0.5  -0.002474049   0.005060867   0.063709032  -0.022834231  -0.028442579   0.023953838   0.060715214  -0.031589182
                        -0.002414854  -0.004601788  -0.188777969  -0.004088035  -0.078609653   0.017870116  -0.018906669  -0.028063622

   19    7.2  0.5 -0.5  -0.001107977  -0.004756020  -0.021487823  -0.082215894  -0.080389562  -0.009686397  -0.009687637   0.164706837
                         0.000414207  -0.008563680  -0.025097475  -0.061235685  -0.002503084  -0.043267849  -0.001984584  -0.018380510

   20    8.2  0.5 -0.5   0.015647416  -0.001414989  -0.096662330   0.016200499  -0.019731124   0.111341647   0.067104418  -0.023104096
                         0.012872944  -0.005866173  -0.031112183   0.022675212   0.086988124  -0.113115245  -0.024206239  -0.000220502

   21    9.2  0.5 -0.5  -0.075723965  -0.216150447   0.003721521   0.011565511  -0.004297514  -0.001986252  -0.002151360  -0.005583747
                         0.030016632  -0.095047380  -0.003969864   0.000477356  -0.002050962  -0.002831474   0.000361768  -0.004348175

   22   10.2  0.5 -0.5  -0.002352497   0.019766317   0.000177369  -0.000776271   0.001862131   0.000849904   0.000899109   0.002131307
                         0.071785153   0.155472564  -0.008689668  -0.010449031  -0.005466353  -0.003731818   0.000020869  -0.008987660

   23   11.2  0.5 -0.5  -0.045197666   0.070064528   0.003244234  -0.005665476   0.001845119  -0.002937332   0.002259996  -0.000225094
                         0.015180458  -0.104259135  -0.004173533   0.010472346   0.005342928   0.000871855   0.006575778   0.005552473

   24   12.2  0.5 -0.5  -0.000136181   0.000011393  -0.002610961   0.000524633  -0.000687997   0.004188981  -0.006121654   0.002520245
                        -0.000105410   0.000041615  -0.000899631   0.000655628   0.003252166  -0.004210066   0.002184330   0.000002673

   25    1.2  1.5  1.5  -0.041207087  -0.066520070   0.012970464  -0.188496923  -0.095711949   0.067018963   0.046230945   0.008658087
                         0.082235488   0.091420800   0.179183830   0.427278961  -0.244200918  -0.107209628   0.121704241   0.289596415

   26    2.2  1.5  1.5  -0.356364935   0.158345419  -0.114886103   0.141021188  -0.215921907   0.232047194   0.041316521  -0.005811769
                         0.426733479  -0.049167841   0.319195221  -0.095946772  -0.007535555   0.263194774   0.122158992  -0.088697832

   27    3.2  1.5  1.5   0.002915231  -0.075278598   0.142686100   0.400962268  -0.354708207  -0.218899747  -0.027732472  -0.060593636
                        -0.034943816  -0.057839209  -0.050151081   0.190494864   0.091014941  -0.092318073  -0.008216114  -0.012441054

   28    4.2  1.5  1.5   0.000332191   0.023241500   0.006187895  -0.053162036  -0.029130706   0.030239945  -0.014142990   0.003518960
                        -0.009038656  -0.026053796   0.036855438   0.111238663  -0.140251938  -0.074232922  -0.044295077  -0.116069526

   29    5.2  1.5  1.5   0.015476047   0.032242666   0.040440878   0.121586791  -0.031698381  -0.022500177   0.071265166   0.184936139
                        -0.003314206   0.028845814  -0.006136878   0.059547793   0.013269788  -0.007167740  -0.013525561  -0.007676453

   30    6.2  1.5  1.5   0.023146673  -0.014416073  -0.005869958  -0.016459577   0.020183748  -0.017513841   0.021064565  -0.024660133
                        -0.029676318  -0.001846603   0.003093505  -0.006612658  -0.000460079  -0.021313163   0.087655751  -0.036274061

   31    7.2  1.5  1.5   0.090724669  -0.007195328   0.136588766  -0.025223383  -0.019243841   0.120685571   0.016389491  -0.006728736
                         0.074971666  -0.032293075   0.049531580  -0.035937650   0.093350854  -0.119493732  -0.005872039   0.000066844

   32    8.2  1.5  1.5   0.018924851  -0.001517074   0.080567004  -0.014930688  -0.006975493   0.043791766   0.114127472  -0.046962393
                         0.015172572  -0.006965489   0.029180729  -0.021242230   0.033835088  -0.043349359  -0.040567218   0.000225053

   33    9.2  1.5  1.5  -0.257319839   0.020421282  -0.019326611   0.003631145   0.000408051  -0.002798461   0.003846088  -0.001577225
                        -0.211966899   0.092024817  -0.006978965   0.005160929  -0.002145662   0.002784531  -0.001361675   0.000030970

   34    1.2  1.5  0.5   0.371491503  -0.027655386  -0.255286934   0.052063170   0.031259213  -0.115336631  -0.368379345   0.225653839
                         0.285038412  -0.122564697  -0.073208293   0.063183349  -0.121687138   0.171171299   0.118674768   0.000453267

   35    2.2  1.5  0.5  -0.014278913   0.048017587   0.026950647   0.011898618   0.194639597   0.147523705   0.257361702   0.582359364
                        -0.045575053   0.054391479   0.025893071  -0.003803434  -0.031148565   0.048646222  -0.111724396  -0.022077115

   36    3.2  1.5  0.5   0.118370009  -0.065288156  -0.071682908   0.059214087  -0.234048476   0.278159647  -0.040645726  -0.055198086
                        -0.194098822   0.019168898   0.246344538  -0.048979506  -0.034300064   0.267068822  -0.141289864   0.059106198

   37    4.2  1.5  0.5   0.098307113  -0.007596510   0.029047886  -0.006453747   0.007461605  -0.015607637   0.144157371  -0.059955335
                         0.073471842  -0.032276984   0.008831362  -0.007647457  -0.011603370   0.012668220  -0.044852402  -0.002036734

   38    5.2  1.5  0.5   0.067141912  -0.045083684   0.013080285  -0.002583120   0.015757412  -0.069658489   0.042005537   0.014055644
                        -0.095356780  -0.001295645  -0.034254053   0.009841043   0.014849013  -0.062894565   0.124103617  -0.051335219

   39    6.2  1.5  0.5  -0.042280461  -0.090119116   0.014737465   0.046722616  -0.213941438  -0.102863647   0.028948419   0.087087591
                         0.013275857  -0.077557415   0.002787734   0.023725913   0.039099277  -0.037923501  -0.030046435   0.002836859

   40    7.2  1.5  0.5   0.000102658   0.020434585  -0.004323179   0.058562504  -0.006476649   0.007314361  -0.011283726  -0.003458786
                        -0.009432490  -0.024862580  -0.037018401  -0.108428229  -0.033048381  -0.017498354  -0.028152441  -0.078244799

   41    8.2  1.5  0.5  -0.000578395  -0.083936350   0.007658110  -0.104308379  -0.001036466   0.001201955  -0.008511388  -0.002491319
                         0.037819463   0.104605415   0.065965010   0.192944211  -0.005744614  -0.003010942  -0.021322000  -0.059165432

   42    9.2  1.5  0.5  -0.000508650  -0.065862858   0.000360620  -0.004992695   0.001552529  -0.001732411   0.001693543   0.000465599
                         0.029190191   0.083422995   0.003209474   0.009260063   0.008062760   0.004247204   0.004224802   0.011778536

   43    1.2  1.5 -0.5   0.002239417   0.306008015  -0.003136413   0.141968928   0.000994845   0.042644639   0.085150872   0.028331869
                        -0.125626073  -0.354417731  -0.081809976  -0.224445309  -0.206400490  -0.118179239   0.208971744   0.385984906

   44    2.2  1.5 -0.5  -0.035996633  -0.004745188   0.011415531  -0.002907872   0.149320979  -0.143359892   0.198208493   0.006912364
                         0.062994953   0.047523215  -0.005072363   0.037260338   0.042812889  -0.135287647   0.548035784  -0.280481025

   45    3.2  1.5 -0.5   0.067818279   0.155253944   0.076794933   0.217359217   0.380229967   0.212768884   0.034054854   0.146213245
                         0.005538137   0.166078369  -0.002799713   0.136304958  -0.064216178   0.103366267  -0.073352834  -0.015381406

   46    4.2  1.5 -0.5   0.000896795   0.081375062   0.000265928  -0.015820567  -0.005771855   0.000362405  -0.024400331  -0.012559267
                        -0.033146741  -0.091872190   0.010003186   0.025912975  -0.019255332  -0.013790664  -0.054803416  -0.150450492

   47    5.2  1.5 -0.5   0.043885325   0.085075657  -0.008473653  -0.032548389  -0.092976046  -0.021381928  -0.042301083  -0.130795173
                        -0.010406514   0.079768944  -0.005631682  -0.016883020   0.012786172   0.003406224   0.032303006   0.007667832

   48    6.2  1.5 -0.5   0.072528933  -0.044093702   0.019115242  -0.009152369  -0.106370229   0.154840329   0.035329799   0.016977987
                        -0.094213384  -0.004430714  -0.048790669   0.011882697  -0.026542347   0.152722509   0.079649868  -0.038112297

   49    7.2  1.5 -0.5  -0.025049705   0.002012346   0.115843083  -0.021389439  -0.003801722   0.023952735  -0.073818087   0.030329353
                        -0.020204763   0.009215903   0.042031272  -0.030521202   0.018580613  -0.023672958   0.026174450  -0.000112906

   50    8.2  1.5 -0.5   0.103396066  -0.008231806  -0.206212221   0.038148996  -0.000700971   0.004089726  -0.055771551   0.022957735
                         0.085421644  -0.036917255  -0.074727683   0.054356999   0.003165298  -0.004165212   0.019907011  -0.000117620

   51    9.2  1.5 -0.5   0.081404358  -0.006414489  -0.009886814   0.001865055   0.000958243  -0.005820922   0.011091486  -0.004551567
                         0.068342100  -0.028481227  -0.003595371   0.002636729  -0.004485728   0.005790968  -0.003991193   0.000016751

   52    1.2  1.5 -1.5  -0.083668960   0.057019651   0.424924148  -0.109474727   0.004937780  -0.216548319  -0.271656636   0.130157967
                        -0.076040697   0.072176582   0.193746920  -0.142444242  -0.126337105   0.147992200   0.100716029  -0.002850670

   53    2.2  1.5 -1.5   0.165024374   0.435460497  -0.169124660  -0.298071731  -0.339932987  -0.182722748   0.084389756   0.128734124
                         0.016053166   0.345646618   0.022127086  -0.161980397   0.086965245  -0.115288560  -0.027918652  -0.007576243

   54    3.2  1.5 -1.5  -0.061993016  -0.009937290  -0.172764336   0.139912868   0.232898519  -0.241981341   0.034283005  -0.018028179
                         0.071896505  -0.033627654   0.408915050  -0.057435561   0.046882896  -0.274857531   0.051488291  -0.022618119

   55    4.2  1.5 -1.5   0.028039801  -0.002157291   0.113678893  -0.019888452   0.016780678  -0.103011152   0.106254969  -0.046364400
                         0.020802336  -0.008783721   0.047721604  -0.031639577  -0.078379780   0.099538469  -0.046844417   0.003524264

   56    5.2  1.5 -1.5   0.025726843  -0.015826566  -0.051203147   0.034283338   0.022632622  -0.018733970  -0.062326941   0.014223514
                        -0.034782180  -0.000108663   0.125329666  -0.022310952   0.006737868  -0.028808210  -0.174286132   0.071129152

   57    6.2  1.5 -1.5  -0.013742577  -0.028681171   0.007894819  -0.006441071   0.026471722   0.016425036   0.042879392   0.089151201
                         0.004730189  -0.024368889  -0.015884481   0.001593357  -0.007761024   0.011739401   0.009235114  -0.013390667

   58    7.2  1.5 -1.5  -0.000500679  -0.073646007  -0.005061963   0.069067978  -0.032509937   0.036629372   0.002464621   0.000711729
                         0.033081184   0.091804040  -0.043613189  -0.127825987  -0.166693920  -0.087994298   0.006261470   0.017395106

   59    8.2  1.5 -1.5  -0.000073789  -0.015456805  -0.002975992   0.040763427  -0.011802095   0.013275891   0.017425326   0.005254961
                         0.007128401   0.018693424  -0.025793434  -0.075371746  -0.060478065  -0.031893909   0.043610492   0.121008944

   60    9.2  1.5 -1.5   0.001345422   0.209016545   0.000720315  -0.009792383   0.000746128  -0.000870248   0.000563529   0.000182131
                        -0.094253836  -0.259722063   0.006269094   0.018064691   0.003876634   0.002003257   0.001473442   0.004075951


   Nr   State  S   Sz       17            18            19            20            21            22            23            24

    1    1.2  0.5  0.5  -0.000175158  -0.002024646   0.000047420   0.000297329   0.000186566   0.000037979  -0.000031660  -0.000004385
                         0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000

    2    2.2  0.5  0.5  -0.001671003   0.000136500   0.000229497   0.000095368  -0.000064256   0.000001001   0.000026172   0.000012890
                         0.000067268   0.001138173   0.000163305  -0.000062689  -0.000161201  -0.000025675   0.000009281  -0.000001573

    3    3.2  0.5  0.5  -0.000772042  -0.000005196   0.000055282  -0.000094875   0.000265056   0.000049244  -0.000029408   0.000027568
                        -0.001526305  -0.001164821   0.000105213   0.000024233   0.000174170   0.000069683  -0.000015620   0.000031216

    4    4.2  0.5  0.5   0.000169628  -0.000679884  -0.142142552   0.041029396   0.077111791  -0.149226164   0.012677946   0.010426493
                        -0.000299957   0.000948988   0.091592351  -0.280271753  -0.080089774   0.067505980  -0.000363858   0.010985839

    5    5.2  0.5  0.5   0.001564489   0.001855961  -0.069146278  -0.060411066  -0.104932256  -0.112430177  -0.005813828  -0.005956461
                        -0.000336445  -0.000732583  -0.004188061  -0.148564103   0.203249474   0.036193037   0.007936269  -0.006852805

    6    6.2  0.5  0.5  -0.000989392  -0.000277040  -0.054289008   0.015156561   0.077427951  -0.072836377  -0.017657879  -0.027930002
                        -0.000487200   0.000711458   0.115831007  -0.086167540  -0.086214054  -0.054939547   0.000836992  -0.014343989

    7    7.2  0.5  0.5  -0.000503513  -0.000057980   0.201253302  -0.049801898   0.043055012   0.081489242   0.003831205  -0.005476822
                         0.000597810   0.000358440  -0.258117399  -0.196012231  -0.013863761  -0.026490721   0.000641095  -0.005536278

    8    8.2  0.5  0.5  -0.000126298   0.000008748  -0.134586944   0.021766442  -0.040683612   0.209641458  -0.001720600   0.013529351
                         0.000213624  -0.000175993   0.119484800  -0.149988665   0.026222318  -0.052931629  -0.014864330  -0.020801578

    9    9.2  0.5  0.5   0.143283699   0.169494261   0.000966073  -0.000812319   0.001129491   0.000417463   0.000143982  -0.000240499
                         0.214064339   0.150558088  -0.000182751  -0.001243557  -0.000133376   0.000661831  -0.000639970   0.000287798

   10   10.2  0.5  0.5   0.278057860  -0.035273487   0.001391162  -0.001801184   0.000037912   0.000591085   0.000564398  -0.000469508
                        -0.018489889  -0.197723884   0.002107256   0.000237517  -0.001617982   0.001473507  -0.001105788   0.000421577

   11   11.2  0.5  0.5   0.043747878  -0.296454686   0.002097491  -0.002293775  -0.000819458   0.000377704  -0.000228657   0.000808220
                         0.134038350   0.101530238   0.002178399  -0.000479451   0.000580928   0.002371953   0.001005925  -0.000211498

   12   12.2  0.5  0.5  -0.186641805   0.015998127  -0.001609751   0.000259284   0.000941188  -0.004696721   0.000037063  -0.000223343
                         0.319888396  -0.295213496   0.001465529  -0.001666447  -0.000597000   0.001206684   0.000258421   0.000371373

   13    1.2  0.5 -0.5   0.000071357  -0.000006173  -0.000185892   0.000029647   0.000011743  -0.000057689  -0.000002754   0.000019881
                         0.002023389  -0.000175049   0.000232053  -0.000037009  -0.000036117   0.000177423  -0.000003413   0.000024640

   14    2.2  0.5 -0.5  -0.001142277   0.000008333  -0.000108551   0.000016030   0.000024727  -0.000133432   0.000006870  -0.000023657
                        -0.000096301  -0.001672335   0.000035238  -0.000281213   0.000006987  -0.000110952   0.000011020  -0.000014541

   15    3.2  0.5 -0.5   0.001164281  -0.001552567   0.000078230  -0.000047552  -0.000051042   0.000083676   0.000041605   0.000030623
                        -0.000035860  -0.000717769  -0.000058895  -0.000108925  -0.000068377   0.000305922   0.000001853   0.000013079

   16    4.2  0.5 -0.5  -0.000924437  -0.000293792  -0.244392585  -0.160352547  -0.110340333  -0.100008752   0.015097083  -0.007677926
                         0.000712908   0.000180094  -0.143205904   0.053672381   0.121039317   0.048567991   0.001215923  -0.010095155

   17    5.2  0.5 -0.5   0.000666716  -0.000281096  -0.078178879  -0.039962082  -0.069184160   0.225735194  -0.009073580  -0.002525653
                        -0.001880627   0.001575375  -0.140031613   0.056584270   0.095728955  -0.036942513  -0.000332433   0.009508209

   18    6.2  0.5 -0.5  -0.000701252  -0.000521767  -0.076726252  -0.124343240   0.029725187  -0.105930659  -0.028701887   0.010436850
                         0.000301943  -0.000971606  -0.042043414  -0.030047912   0.086254884   0.046974952  -0.012729365   0.014267915

   19    7.2  0.5 -0.5  -0.000356174   0.000579693  -0.121843139   0.327275017   0.050389996  -0.026497495  -0.007747798  -0.002904735
                         0.000070577  -0.000524269  -0.161416459   0.004306595  -0.069304424   0.036658160  -0.000785863  -0.002579078

   20    8.2  0.5 -0.5   0.000175575   0.000209040  -0.130668594  -0.177397659   0.115161405   0.037517127  -0.007693186   0.012648683
                        -0.000014945  -0.000133749  -0.076786043   0.030336997  -0.183000408  -0.030581553   0.023591606  -0.007994973

   21    9.2  0.5 -0.5  -0.156438259   0.218981283  -0.000462679   0.000746625  -0.000500312  -0.000476093   0.000072959   0.000407647
                        -0.164082641   0.135650129  -0.001411462  -0.000639724  -0.000601651   0.001032897  -0.000367892  -0.000513923

   22   10.2  0.5 -0.5   0.198844233  -0.008678442   0.001311484  -0.000774864  -0.001218524  -0.001550412   0.000033267   0.000506172
                         0.028282929   0.278536774  -0.001257254  -0.002403215  -0.001017745  -0.000464247  -0.000630126  -0.001133623

   23   11.2  0.5 -0.5  -0.091018817   0.135496939   0.001059891  -0.000388787  -0.002138919   0.000805845   0.000342921  -0.000639281
                         0.299848870   0.038996608  -0.002089954  -0.002998956  -0.001092632  -0.000599669   0.000761811   0.000809622

   24   12.2  0.5 -0.5   0.294466244   0.313111594  -0.001462700  -0.002150213  -0.002599834  -0.000858770   0.000148775  -0.000224391
                        -0.026392786  -0.197800098  -0.000839512   0.000340088   0.004093426   0.000710463  -0.000407021   0.000133431

   25    1.2  1.5  1.5   0.136830989  -0.024871690  -0.007730532   0.001193824  -0.002822502   0.006661339  -0.000640607   0.002135439
                        -0.198743147   0.190799905   0.007825668  -0.006436857   0.000194318  -0.003367258  -0.002575352  -0.003572077

   26    2.2  1.5  1.5   0.000685206  -0.012886839  -0.003483826   0.001505527  -0.013636947  -0.003545497  -0.001547803   0.000125933
                         0.031475805  -0.023533416   0.007311973   0.012445027  -0.008758674  -0.003831070  -0.000227421   0.001181209

   27    3.2  1.5  1.5   0.209744921  -0.200034585   0.003370797  -0.003095832   0.003220174  -0.004482296  -0.001094004  -0.001911163
                         0.140190122  -0.023017971   0.001749653  -0.000822871   0.003845954  -0.015856326   0.000376774  -0.000945309

   28    4.2  1.5  1.5  -0.017421651   0.001868296   0.095863911  -0.015498176   0.012974881  -0.095547227  -0.034870050   0.120731039
                         0.026683831  -0.026564742  -0.090357393   0.094208376  -0.017564144   0.031424683  -0.158660672  -0.233245547

   29    5.2  1.5  1.5  -0.021455204   0.025272412  -0.038712899   0.028733324   0.029269108   0.057280319  -0.242551853  -0.354036159
                        -0.007999622   0.009100513   0.010682195   0.039955956  -0.001543065   0.184272536   0.045230234  -0.206211723

   30    6.2  1.5  1.5   0.007047542   0.029925080  -0.115414473   0.045449141   0.398212180   0.060843462   0.053090523   0.042113302
                         0.050985931   0.051049943   0.209763046   0.308039636   0.255531586   0.061179398  -0.001925584   0.013100455

   31    7.2  1.5  1.5  -0.023127799  -0.024582104  -0.021062383  -0.031003048   0.163069184   0.054478469  -0.063637836   0.099531175
                         0.002058190   0.015547404  -0.011941293   0.004845802  -0.256169718  -0.044446847   0.175632351  -0.057707769

   32    8.2  1.5  1.5   0.039924612   0.042443165  -0.108437388  -0.159053627  -0.124911078  -0.041805096  -0.072110232   0.114990101
                        -0.003583762  -0.026813410  -0.062352380   0.025017783   0.197213580   0.034380688   0.207924574  -0.066434032

   33    9.2  1.5  1.5  -0.000019565  -0.000020534  -0.000719317  -0.001058139   0.000598855   0.000194539   0.000102031  -0.000163982
                        -0.000000210   0.000011190  -0.000411261   0.000166894  -0.000933537  -0.000166444  -0.000278424   0.000090480

   34    1.2  1.5  0.5  -0.090668231  -0.152113850  -0.011944140  -0.021234269   0.000294616   0.000761116   0.000111578  -0.000062884
                         0.016973198   0.067373774  -0.006292315   0.002672716  -0.003920423   0.000697028  -0.000449808   0.000250229

   35    2.2  1.5  0.5   0.246250630  -0.206917025   0.014027749  -0.011919376  -0.003152742   0.003185133   0.000676195   0.001147624
                         0.127351577  -0.028934889   0.014400814  -0.002772594  -0.003153921   0.013260749  -0.000106021   0.000672140

   36    3.2  1.5  0.5  -0.020620316  -0.054512347   0.001079616   0.001843449  -0.018073355  -0.003455575  -0.001233937   0.000317549
                        -0.127813776  -0.128368725  -0.002531237  -0.002967524  -0.011112569  -0.004810540  -0.000388504   0.000589590

   37    4.2  1.5  0.5  -0.038832960  -0.042347960   0.262252395   0.392663429  -0.066865632  -0.023109448   0.028411485  -0.068673317
                         0.001732009   0.024136132   0.148324920  -0.061584925   0.134774836   0.031395879  -0.132068833   0.051131507

   38    5.2  1.5  0.5  -0.001916787  -0.023707042   0.016820677  -0.047114625   0.324145991   0.041266699  -0.361871996   0.137344228
                        -0.038449172  -0.041729708   0.018217118  -0.007651603   0.206206204   0.009809284  -0.126570828   0.214495138

   39    6.2  1.5  0.5  -0.001635806   0.003725860   0.201992335  -0.215928166   0.010987191  -0.115801484   0.133469718   0.099190082
                         0.004346289   0.006003786   0.219953843  -0.035895582   0.060991244  -0.428367002   0.002701327   0.045200831

   40    7.2  1.5  0.5   0.024681074  -0.002108118  -0.063057107   0.009991893   0.011349469  -0.056334951   0.000620617   0.000118918
                        -0.042312482   0.039036980   0.057068876  -0.064871803  -0.006998355   0.015133391  -0.005685966  -0.004443635

   41    8.2  1.5  0.5   0.013836047  -0.001187145  -0.034019572   0.005442895  -0.004299346   0.020090268   0.042666886  -0.240343430
                        -0.023621583   0.021804618   0.030691751  -0.035137462   0.002409808  -0.004242519   0.275407550   0.389204261

   42    9.2  1.5  0.5  -0.000071356   0.000022602   0.002184190  -0.000352016  -0.000249691   0.001221446  -0.000013325   0.000065221
                         0.000091765  -0.000098514  -0.001990715   0.002262075   0.000153577  -0.000316396  -0.000068325  -0.000094410

   43    1.2  1.5 -0.5   0.061970768  -0.013767113  -0.015361747   0.002556656   0.000427523   0.003819394  -0.000155254  -0.000280000
                        -0.154393889   0.091210110   0.014901488  -0.013255912   0.000939346   0.000932067   0.000206070   0.000369292

   44    2.2  1.5 -0.5  -0.036209562  -0.135951392  -0.005288172   0.002469014   0.011625995   0.002024488  -0.001243745   0.000342105
                        -0.205768683  -0.241609222   0.011036033   0.019951570   0.007129431   0.003973468  -0.000471074   0.000592828

   45    3.2  1.5 -0.5  -0.130210223   0.128461118   0.003468568  -0.002650511  -0.003506282   0.004979463  -0.000658256  -0.001077205
                        -0.049954212   0.016102796   0.000416578  -0.000739949  -0.004773708   0.020623780   0.000123098  -0.000716357

   46    4.2  1.5 -0.5   0.022628612  -0.000362292   0.293560215  -0.048200278   0.037002993  -0.148845615   0.003329989  -0.084942232
                        -0.043172312   0.038869878  -0.267954607   0.297411051  -0.012268916   0.021914651   0.085553297   0.105043831

   47    5.2  1.5 -0.5  -0.042539321   0.038492840  -0.023484598   0.003701328  -0.003431628  -0.095870581  -0.253176984  -0.325741410
                        -0.022221578   0.000560481   0.041554887   0.024517315   0.042277493  -0.372022115   0.027803166  -0.202148583

   48    6.2  1.5 -0.5   0.006131372  -0.004285935  -0.106984618   0.045378167  -0.371566691  -0.054604861  -0.097464047   0.085914464
                         0.003511946   0.001787972   0.190965330   0.295163376  -0.242582906  -0.029308008  -0.048811341   0.102177139

   49    7.2  1.5 -0.5   0.038938428   0.041416327   0.056876809   0.083963650   0.031811229   0.010164786   0.003383606  -0.004035414
                        -0.003482640  -0.026157015   0.032759997  -0.013533692  -0.048894702  -0.008629285  -0.002882924   0.004053493

   50    8.2  1.5 -0.5   0.021749231   0.023119266   0.030826298   0.045222921  -0.010246772  -0.003621123  -0.151976682   0.241129835
                        -0.001954896  -0.014659978   0.017720206  -0.007362219   0.017793861   0.003343505   0.431448733  -0.139736125

   51    9.2  1.5 -0.5  -0.000097657  -0.000089193  -0.001985541  -0.002919242  -0.000678577  -0.000223258   0.000032520  -0.000061542
                         0.000026060   0.000074546  -0.001139530   0.000460064   0.001063753   0.000189967  -0.000110043   0.000032534

   52    1.2  1.5 -1.5  -0.189804780  -0.193797158  -0.005770093  -0.010940794   0.005262010   0.001057548  -0.001439039   0.002406548
                         0.031580851   0.143750546  -0.003092633   0.001140710  -0.005293687  -0.002624094   0.003904996  -0.001118634

   53    2.2  1.5 -1.5   0.023972983   0.031480400   0.008771574  -0.007884809   0.002547008  -0.004112720   0.000998361   0.001148932
                         0.012049413  -0.000424563   0.008955712  -0.001852507   0.004556358  -0.015676933  -0.000643731   0.001061776

   54    3.2  1.5 -1.5   0.030053754   0.147495343   0.001293316   0.000741911   0.013693271   0.002661756  -0.001935803   0.000393752
                         0.199099056   0.204673706  -0.002930635  -0.003724665   0.009165609   0.004251581  -0.000893766   0.001088009

   55    4.2  1.5 -1.5   0.026482391   0.026053239   0.083215378   0.130455012  -0.059429066  -0.020715374  -0.105711534   0.145375016
                        -0.002803391  -0.018351281   0.046803979  -0.018325880   0.081147825   0.006907964   0.240425748  -0.072492992

   56    5.2  1.5 -1.5  -0.009985568  -0.008750826   0.013219747  -0.032540571  -0.157530072  -0.010517823  -0.382801806   0.117109493
                        -0.024935970  -0.021159933   0.047405913   0.023535272  -0.111452585   0.027357579  -0.146039905   0.217169386

   57    6.2  1.5 -1.5  -0.052072916   0.051202640   0.211997361  -0.235869421  -0.039367602   0.119876463   0.036640486  -0.031839533
                        -0.028107268   0.005246199   0.228059556  -0.041068873  -0.076779148   0.457710570   0.024548460  -0.042527117

   58    7.2  1.5 -1.5  -0.014671365   0.001241787   0.023165255  -0.003848640   0.059114071  -0.294038647   0.017589136  -0.096725401
                         0.025114790  -0.023185969  -0.021166996   0.023904109  -0.038065108   0.075866708   0.113698125   0.159814561

   59    8.2  1.5 -1.5   0.025300871  -0.002174420   0.118966706  -0.019132240  -0.045622457   0.226172807   0.020505294  -0.116536744
                        -0.043361817   0.040026115  -0.108493633   0.123614093   0.029125404  -0.057808606   0.131208753   0.186686104

   60    9.2  1.5 -1.5  -0.000010460  -0.000000900   0.000791809  -0.000128749   0.000218441  -0.001072961  -0.000032556   0.000152615
                         0.000020915  -0.000019546  -0.000721491   0.000818521  -0.000133539   0.000280846  -0.000184437  -0.000254242


   Nr   State  S   Sz       25            26            27            28            29            30            31            32

    1    1.2  0.5  0.5  -0.000008238  -0.000100081  -0.000366489  -0.000001234  -0.000065599  -0.000404700  -0.000055057   0.000095987
                         0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000

    2    2.2  0.5  0.5   0.000013401  -0.000021586   0.000357822   0.000013315  -0.000107556  -0.000251733   0.000063236  -0.000039199
                        -0.000009619   0.000092192   0.000054465  -0.000123510  -0.000227944  -0.000185150   0.000022057   0.000077569

    3    3.2  0.5  0.5   0.000022126  -0.000078172   0.000142370   0.000404795  -0.000126570  -0.000014488   0.000096704   0.000098181
                         0.000000372  -0.000103095  -0.000060144  -0.000097683  -0.000014052   0.000252018   0.000006602  -0.000069141

    4    4.2  0.5  0.5   0.002404445  -0.000965769   0.056877735   0.053859486   0.118796354  -0.068532776  -0.254960732  -0.007386220
                        -0.001944644  -0.000122507   0.402559578   0.073705982   0.123080161   0.068509807   0.005029660   0.150734987

    5    5.2  0.5  0.5  -0.001717036   0.001701646   0.047421650   0.010246627  -0.063653956  -0.047124392   0.097018905  -0.342046930
                         0.000025198  -0.002494243   0.018707909   0.347041935  -0.097741842   0.055947467  -0.067077558  -0.267509539

    6    6.2  0.5  0.5  -0.005176180  -0.001280064  -0.121607664  -0.007755049  -0.127258854   0.139446261   0.427391930   0.014840631
                         0.000403971   0.000707306   0.216917081  -0.020605524  -0.260968339   0.057138405   0.102105433   0.172423445

    7    7.2  0.5  0.5  -0.000261188  -0.002059621   0.046508116  -0.195606586  -0.114094383  -0.022010124  -0.034717225  -0.306176225
                         0.000963558  -0.001395409  -0.094825541  -0.106004049   0.039894212   0.175380451   0.026419380   0.291941308

    8    8.2  0.5  0.5  -0.001844091   0.000103973   0.004001181  -0.044381422   0.427732301  -0.072642517  -0.017521400  -0.010930375
                        -0.007869917  -0.000591390  -0.155891398  -0.069915923  -0.280399719   0.201580761   0.051673838  -0.003907111

    9    9.2  0.5  0.5  -0.000271565  -0.000295992   0.001590675  -0.001679897   0.000289302  -0.000534862   0.000333684   0.001354282
                         0.000132545  -0.001151979   0.000222545   0.000482969  -0.000450618  -0.001432584   0.000329137   0.000833500

   10   10.2  0.5  0.5  -0.000999368   0.000985929   0.001400890   0.001729973  -0.000296234  -0.001883416   0.000411902   0.001026983
                         0.000274034  -0.000262573  -0.000536538   0.000231202   0.000025919  -0.000010725   0.000652943   0.002427776

   11   11.2  0.5  0.5  -0.001167921  -0.000834595   0.002047824   0.000679627   0.000755782   0.001228305   0.000540548  -0.001391852
                         0.000241952   0.000483268   0.000383154  -0.001219925   0.000991363   0.000242170  -0.000484479  -0.002073796

   12   12.2  0.5  0.5  -0.000113967  -0.000003744  -0.000014503   0.001043728  -0.001079456   0.000183395   0.000130975   0.000074048
                        -0.000444862  -0.000027173   0.004098080   0.001830335   0.000725066  -0.000487069  -0.000874972   0.000190621

   13    1.2  0.5 -0.5  -0.000080646   0.000006638  -0.000001227   0.000364383   0.000387142  -0.000062753  -0.000087403  -0.000050133
                        -0.000059266   0.000004878   0.000000132  -0.000039236  -0.000117910   0.000019112   0.000039677   0.000022758

   14    2.2  0.5 -0.5   0.000037200  -0.000005102   0.000026461  -0.000349935   0.000186868  -0.000036478   0.000067757   0.000048463
                        -0.000087072  -0.000015687   0.000121375   0.000092460  -0.000250460   0.000249391   0.000054428  -0.000046224

   15    3.2  0.5 -0.5  -0.000124042  -0.000018049   0.000412926  -0.000147991   0.000087285  -0.000116985  -0.000117980   0.000085327
                         0.000036783  -0.000012803   0.000053785  -0.000044556   0.000236864   0.000050319  -0.000022373  -0.000045985

   16    4.2  0.5 -0.5  -0.000850769  -0.000785942   0.045659104  -0.013453495   0.085519982   0.077782936   0.069033809  -0.234237808
                        -0.000473190  -0.002990867  -0.079048480   0.406335199   0.045570469  -0.152351943   0.134201065   0.100811318

   17    5.2  0.5 -0.5  -0.000105838   0.001368678  -0.026965987  -0.045146268   0.061380323  -0.032415183   0.200878160   0.116069512
                         0.003017556   0.001037096  -0.346144383   0.023677271   0.039790494   0.112047087  -0.384974571   0.020974627

   18    6.2  0.5 -0.5  -0.000612634   0.003931779  -0.005504486   0.144131530  -0.116749189  -0.045704395   0.057759971   0.346962294
                        -0.001327978   0.003390744   0.021317341   0.202651291   0.095287375   0.286723557   0.163137594  -0.269641518

   19    7.2  0.5 -0.5  -0.002485988  -0.000360131  -0.183133770  -0.056392684   0.072152569  -0.120767757   0.399471389  -0.042533122
                        -0.000095233   0.000931112   0.126336127  -0.089301474   0.161359087  -0.004921894   0.139270302  -0.009705813

   20    8.2  0.5 -0.5  -0.000266426   0.006146375  -0.036641270  -0.020667655   0.128221828   0.490870447   0.008337782  -0.037314420
                         0.000538117  -0.005249603   0.074265498  -0.154567090   0.171670910   0.143614510  -0.008075890  -0.039809787

   21    9.2  0.5 -0.5  -0.000920689   0.000140339  -0.001721948  -0.001557707   0.000094273   0.000408039  -0.000888626   0.000167789
                         0.000752993   0.000267620  -0.000300346   0.000391560  -0.001526266   0.000346779   0.001318766  -0.000437633

   22   10.2  0.5 -0.5   0.000638979   0.000643021   0.001695278  -0.001450280   0.001798581  -0.000290934   0.000068415   0.000105162
                         0.000795429   0.000812622  -0.000415081  -0.000383478  -0.000558996   0.000061514   0.002635168  -0.000764813

   23   11.2  0.5 -0.5  -0.000386342   0.000797840   0.000806324  -0.001995035  -0.001104460   0.000434158   0.000410145   0.000692471
                        -0.000883650   0.000886584   0.001140154   0.000600189   0.000589532  -0.001168552  -0.002463668   0.000217708

   24   12.2  0.5 -0.5  -0.000019108   0.000355273   0.000841777   0.000453153  -0.000317347  -0.001243874   0.000011370   0.000480941
                         0.000019679  -0.000290984  -0.001931555   0.004072975  -0.000412505  -0.000379109   0.000204182   0.000742580

   25    1.2  1.5  1.5  -0.000023912  -0.000069402  -0.000855555  -0.003257087   0.025868315  -0.003061602  -0.000986537   0.000447649
                         0.000377030  -0.000069094  -0.006459560  -0.002419123  -0.020335597   0.011549786   0.028279109  -0.007774812

   26    2.2  1.5  1.5  -0.000066119  -0.000644549   0.002721468  -0.008755044  -0.000618511   0.004721322   0.009995805   0.028651452
                         0.000010924  -0.000766771   0.002510892   0.001573718  -0.002566309  -0.011998321  -0.003391679  -0.017345536

   27    3.2  1.5  1.5  -0.001647240  -0.000061566  -0.018738683  -0.007380047  -0.020945231   0.013042651   0.028137263  -0.008047735
                         0.000381988   0.000037219   0.000241684   0.004871515  -0.026822873   0.004629396   0.002167171   0.004047961

   28    4.2  1.5  1.5   0.102217654  -0.005074802   0.005450064  -0.057985781   0.179671266  -0.024563423  -0.004559627  -0.003057043
                         0.404086315   0.029238098  -0.254872243  -0.115192488  -0.140748583   0.087971331   0.036925712  -0.007898233

   29    5.2  1.5  1.5   0.020367905  -0.013693352   0.160150257   0.029660837  -0.210183327   0.137113499   0.014740849  -0.003493474
                        -0.023745775  -0.020465895   0.018706827  -0.026472369  -0.290636657   0.052819337   0.000484814   0.001856424

   30    6.2  1.5  1.5   0.009645389  -0.108387086   0.117942568  -0.297209659   0.007015610  -0.037689557  -0.003216130  -0.004283174
                         0.012801481  -0.128803699   0.053858264   0.033881070   0.052515974   0.059173386   0.000445480   0.002464002

   31    7.2  1.5  1.5   0.005549711  -0.164447415   0.047755502   0.025310423  -0.055238046  -0.218780617  -0.004545240  -0.183739434
                        -0.012781213   0.136684023  -0.108071606   0.229606284  -0.074429683  -0.067209253  -0.077362939  -0.291041151

   32    8.2  1.5  1.5  -0.006194706   0.230457151  -0.071137641  -0.038405693  -0.054724911  -0.219582699  -0.002166035  -0.092339022
                         0.020596484  -0.192207100   0.166211726  -0.348177717  -0.076832119  -0.066172027  -0.038869063  -0.146497016

   33    9.2  1.5  1.5  -0.000027301   0.000866062  -0.000229985  -0.000116829   0.001128600   0.004486567  -0.000043520  -0.001685074
                         0.000064959  -0.000721435   0.000477591  -0.001027770   0.001528397   0.001366581  -0.000705276  -0.002659529

   34    1.2  1.5  0.5  -0.000151847  -0.001874504   0.005021305   0.000516608   0.000953022   0.003929264   0.001426800   0.018725499
                        -0.000085297   0.001522040  -0.005170154   0.011242223   0.001377823   0.001143196   0.006964716   0.024779827

   35    2.2  1.5  0.5  -0.001977669   0.000070981   0.017700920   0.006082632  -0.000071566  -0.000383897   0.004255619  -0.000553725
                         0.000503327  -0.000212092   0.000995387  -0.005542704  -0.000196672  -0.000187701  -0.000323661  -0.004038554

   36    3.2  1.5  0.5   0.000159066  -0.000083746   0.009202556  -0.023069961   0.000000836  -0.000074802   0.008081226   0.030617157
                        -0.000015721  -0.000346720   0.004956654   0.002063492  -0.000187507  -0.000432429  -0.000977869  -0.021667862

   37    4.2  1.5  0.5  -0.007964804   0.297027287  -0.000956645   0.003198445   0.057502282   0.217712714   0.000409266   0.038340095
                         0.023209702  -0.228755611   0.000378233  -0.005318807   0.072456441   0.057123179   0.016179505   0.060297107

   38    5.2  1.5  0.5  -0.044507306   0.177310248  -0.049068752   0.061363359   0.056853919   0.047944247   0.006115578   0.001285616
                        -0.001308107   0.239457898  -0.013508656  -0.003588630  -0.053350832  -0.182779542   0.000016871  -0.004558550

   39    6.2  1.5  0.5  -0.168164403  -0.030760671  -0.116013464  -0.062805366  -0.031597582   0.013365342   0.038048740  -0.007914381
                         0.044403136  -0.037784869   0.001666683   0.031468299  -0.028054664   0.031072926   0.005487654   0.004591125

   40    7.2  1.5  0.5   0.148984098  -0.012171323   0.000337078  -0.053767187  -0.135699290   0.021567705   0.018540549   0.010865520
                         0.598700336   0.041819510  -0.211115358  -0.095505420   0.090224595  -0.063259833  -0.134831771   0.028345869

   41    8.2  1.5  0.5   0.024942629  -0.005120052   0.000002361  -0.037732525   0.044531777  -0.007573654  -0.044947166  -0.026419872
                         0.104016282   0.008714263  -0.147768752  -0.066073796  -0.030786804   0.020522312   0.324923317  -0.068873957

   42    9.2  1.5  0.5  -0.000166500   0.000011095   0.000009638  -0.001393026  -0.001420359   0.000218080   0.000247693   0.000148424
                        -0.000684505  -0.000044352  -0.005469911  -0.002457824   0.000928455  -0.000672482  -0.001777836   0.000374375

   43    1.2  1.5 -0.5   0.000609170  -0.000172870   0.000689935   0.005545955   0.003425726  -0.000510246   0.006807768   0.001579755
                         0.002336511  -0.000021188   0.011232918   0.004602867  -0.002238396   0.001595712  -0.030304099   0.006931623

   44    2.2  1.5 -0.5   0.000068399  -0.001295560  -0.006641066   0.017492624  -0.000312555   0.000011161   0.001165183  -0.004008814
                        -0.000212938  -0.001576718  -0.004859653  -0.002884697   0.000291406  -0.000208990   0.003906262   0.001464397

   45    3.2  1.5 -0.5   0.000272803   0.000118866   0.023158286   0.008619016   0.000054432  -0.000055430   0.036835639  -0.007762709
                        -0.000229796   0.000106863  -0.000418199  -0.005913377   0.000435462  -0.000179129   0.007074053   0.002450059

   46    4.2  1.5 -0.5  -0.103882555   0.007326187  -0.003749485  -0.000991640   0.191624576  -0.033897328   0.009986660   0.006315333
                        -0.360225976  -0.023419124  -0.004945819  -0.000273643  -0.118075845   0.086066367  -0.070752885   0.014901692

   47    5.2  1.5 -0.5  -0.284679602  -0.036638931  -0.061394881  -0.047340527   0.099117304  -0.069931212   0.003054971  -0.005561667
                         0.087957566  -0.025302178   0.003001452   0.018684236   0.160881235  -0.034471801   0.003619438   0.002543312

   48    6.2  1.5 -0.5   0.047162543  -0.109213476   0.065813351  -0.115525137   0.003732363   0.022052992  -0.009104369  -0.032377523
                        -0.012231510  -0.135363665   0.024563606   0.010763101  -0.033618872  -0.036043542  -0.000909018   0.020724790

   49    7.2  1.5 -0.5  -0.014956868   0.474589762   0.043233524   0.022936795   0.039062851   0.156099185  -0.001823334  -0.072616778
                         0.040906046  -0.394211759  -0.100712750   0.209865937   0.054231596   0.046774131  -0.030302199  -0.115109348

   50    8.2  1.5 -0.5  -0.001034623   0.081695127   0.030441918   0.015822221  -0.013224283  -0.051569593   0.004412844   0.175238444
                         0.010053998  -0.069046562  -0.069733634   0.146919234  -0.017425380  -0.016476760   0.073635307   0.277284867

   51    9.2  1.5 -0.5   0.000017324  -0.000539516   0.001121889   0.000595182   0.000404547   0.001629245  -0.000019602  -0.000960432
                        -0.000042310   0.000452981  -0.002592833   0.005437442   0.000579770   0.000474351  -0.000402246  -0.001516451

   52    1.2  1.5 -1.5  -0.000096841  -0.000204000  -0.002979380   0.000159089   0.006293823   0.030670850  -0.003621429  -0.012587826
                         0.000014578   0.000317974   0.002753918  -0.006514030   0.010156710   0.011916592  -0.006894443  -0.025342216

   53    2.2  1.5 -1.5  -0.000973447   0.000046810  -0.008873206  -0.002437015  -0.008012219   0.000156020  -0.033259047   0.010503839
                         0.000236182   0.000047957  -0.000627373   0.002787817  -0.010102224   0.002635176  -0.003950836  -0.001043539

   54    3.2  1.5 -1.5  -0.000027570   0.001101152  -0.007859168   0.018656861  -0.011128030  -0.012221665   0.009001273   0.024725026
                        -0.000066449   0.001283268  -0.004053422  -0.001765837   0.008228549   0.031761614   0.000359308  -0.013604237

   55    4.2  1.5 -1.5   0.013224856  -0.321658839  -0.045320209  -0.032704934   0.049128332   0.212883717  -0.000481190  -0.019415542
                        -0.026565451   0.265084497   0.120738307  -0.252823952   0.076998206   0.082294898  -0.008455534  -0.031738543

   56    5.2  1.5 -1.5  -0.023153657  -0.002350868   0.032324455  -0.157227111  -0.115775998  -0.116387378   0.003948417   0.013222121
                         0.008382655  -0.031195942   0.023144786   0.035744730   0.090476031   0.339264905   0.000246328  -0.006534767

   57    6.2  1.5 -1.5  -0.163613823  -0.015353080  -0.299128769  -0.111498747   0.053294683  -0.008589354   0.004918641  -0.003112645
                         0.039606441   0.004603733  -0.001867582   0.066175459   0.045625312  -0.052281635   0.000473135   0.000923787

   58    7.2  1.5 -1.5  -0.051571564   0.003096761   0.000583696  -0.059051003   0.189707558  -0.031156417   0.047001554   0.027840179
                        -0.207523127  -0.013585609  -0.230996369  -0.102337867  -0.128035481   0.087294313  -0.340963319   0.072322942

   59    8.2  1.5 -1.5   0.071883109  -0.007205053  -0.000909646   0.088523141   0.190777040  -0.029965591   0.023524488   0.014094687
                         0.291353542   0.020265160   0.350288299   0.157640589  -0.127276942   0.089443020  -0.171564766   0.036288229

   60    9.2  1.5 -1.5   0.000270661  -0.000016468  -0.000006126   0.000279794  -0.003893767   0.000634336   0.000435023   0.000251906
                         0.001094201   0.000068511   0.001034371   0.000450225   0.002614461  -0.001790908  -0.003118225   0.000660190


   Nr   State  S   Sz       33            34            35            36            37            38            39            40

    1    1.2  0.5  0.5  -0.001975062   0.000155756  -0.002672798   0.024579272  -0.020670266  -0.001627722   0.000029281  -0.000329598
                        -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000

    2    2.2  0.5  0.5  -0.000100155   0.000630404   0.021821490   0.000337231  -0.002929407   0.006314742   0.000015379  -0.000319124
                         0.001757015  -0.000152354  -0.012107081  -0.005036363  -0.018131578   0.003991400  -0.000002961  -0.000055291

    3    3.2  0.5  0.5  -0.001616621   0.000483062   0.013630942  -0.010566701  -0.014935707   0.008767910  -0.000009866   0.000013962
                        -0.001937142   0.000947722  -0.000898427   0.004008443   0.020335312  -0.003351240  -0.000008656   0.000064007

    4    4.2  0.5  0.5   0.003618631   0.006902887   0.100317346  -0.048047617  -0.059416412  -0.141321761  -0.099594125   0.046889290
                        -0.008226199  -0.001581917   0.233978259  -0.065542969  -0.036761217   0.097076667  -0.055733902   0.073031026

    5    5.2  0.5  0.5  -0.017211285   0.005275862   0.139432575   0.179610559   0.193801564   0.046346357   0.066709780  -0.209132444
                         0.010753767  -0.004728225   0.052747951  -0.022250729   0.130515847   0.011722825   0.029475460   0.046429409

    6    6.2  0.5  0.5   0.004193678  -0.007572845  -0.081256872  -0.007284279  -0.019840245   0.275218326   0.166916292   0.101378516
                        -0.007078723  -0.007521959   0.127168313  -0.065109884  -0.052107434   0.068418702   0.106702026   0.008486542

    7    7.2  0.5  0.5  -0.004078744  -0.003171199   0.049019371   0.018929181   0.014321833   0.033513124   0.020631854   0.026782969
                        -0.009197678   0.004815409   0.099695646   0.302033869  -0.086544354  -0.015075880  -0.003737512   0.215788467

    8    8.2  0.5  0.5  -0.000304438  -0.002524884   0.033048458   0.002312977  -0.002605412   0.013623261  -0.008606916  -0.000029297
                         0.000918348   0.003656858   0.088833353  -0.067325444  -0.059000774  -0.287894002   0.006669866   0.006435201

    9    9.2  0.5  0.5   0.287773814  -0.111423435  -0.105461136  -0.027044602   0.228877666  -0.070687629   0.000230123  -0.000858993
                         0.142803519  -0.117335303   0.017943922  -0.023192313  -0.148936326   0.023415952   0.000096523  -0.000626492

   10   10.2  0.5  0.5   0.012731349  -0.209398439  -0.204426704   0.011429460   0.025878017  -0.067796208   0.000760797  -0.001464588
                        -0.270198917  -0.061892378   0.110891463   0.045096473   0.190788379  -0.042073055   0.000363834   0.000075415

   11   11.2  0.5  0.5  -0.206052206  -0.142275771  -0.098644984   0.251986829  -0.109662177  -0.064674748   0.000652598   0.001536990
                         0.156252959  -0.174518868   0.009914283  -0.017532940  -0.109888493   0.018049569   0.000493733   0.000188403

   12   12.2  0.5  0.5   0.011642192   0.148628090  -0.001429887  -0.000206631  -0.000046208   0.000342923  -0.000030208  -0.000025353
                        -0.069463193  -0.197064312  -0.003991199   0.003540686  -0.001164380  -0.005681549   0.000091799  -0.000001347

   13    1.2  0.5 -0.5  -0.000016659  -0.000211250   0.012637800   0.001374259  -0.001126673   0.014307493   0.000192403   0.000017093
                        -0.000154863  -0.001963732   0.021081429   0.002292435   0.001174772  -0.014918296  -0.000267612  -0.000023774

   14    2.2  0.5 -0.5   0.000084053   0.001736223  -0.004146253  -0.000835707   0.001490220  -0.011058386   0.000141395   0.000011382
                        -0.000643083  -0.000287508   0.002878762  -0.024941140  -0.007320279  -0.014664503  -0.000291384  -0.000010758

   15    3.2  0.5 -0.5  -0.000993953  -0.002098941  -0.001995021  -0.006237980   0.008487632   0.025014710   0.000043819   0.000001269
                        -0.000378924  -0.001400154  -0.011123968  -0.012153081  -0.004008388   0.003296137   0.000048700   0.000013064

   16    4.2  0.5 -0.5   0.000834520  -0.007791966  -0.080920037  -0.252260786  -0.167882624   0.014595128   0.031924839  -0.012885670
                        -0.007032488   0.004477734  -0.007510127   0.034262103   0.034801493  -0.068327735   0.080702794   0.113398488

   17    5.2  0.5 -0.5   0.004136803   0.008851185   0.073265196  -0.116932802   0.023619222  -0.039948227   0.159778426   0.015009608
                        -0.005751321  -0.018262759   0.165490963  -0.092468962  -0.041563707   0.230212014  -0.142698716  -0.071370226

   18    6.2  0.5 -0.5   0.008288789  -0.006589566  -0.059589503  -0.067291723   0.141120282  -0.023874388  -0.052289062   0.010802125
                         0.006724867   0.004926750   0.027229558   0.135078803  -0.245990471  -0.050386839   0.087266712  -0.197812247

   19    7.2  0.5 -0.5  -0.004448598  -0.009581171   0.268784550  -0.110712132   0.034077704  -0.072374675   0.159571554   0.015078432
                         0.003668056  -0.003071577  -0.139059835   0.009216518  -0.013752152  -0.049567596   0.147712251  -0.014569944

   20    8.2  0.5 -0.5  -0.003365822   0.000880517  -0.056555197  -0.093183955   0.217210682  -0.040779063   0.005242063  -0.010439769
                         0.002901532  -0.000400916   0.036600203   0.017329620   0.189441467  -0.042719405   0.003732753   0.003094725

   21    9.2  0.5 -0.5   0.128579885   0.172764162  -0.033797232   0.038834073  -0.065828317  -0.265915383  -0.000007235   0.000055964
                         0.098234253   0.270848957  -0.011271246   0.099679237   0.034809198   0.062096894  -0.001063160  -0.000243190

   22   10.2  0.5 -0.5   0.083934261  -0.267287194   0.044555482   0.009998400  -0.016561736   0.119785005   0.000916184   0.000148705
                         0.201577311   0.041558370  -0.013384077   0.232351514   0.078052398   0.150736292  -0.001145126  -0.000830104

   23   11.2  0.5 -0.5   0.188735333   0.133317591   0.114524944   0.042216399  -0.057793272  -0.003403838  -0.000744245  -0.000019926
                         0.122793339  -0.221582758   0.225141740   0.089704523   0.034184027  -0.155208531   0.001357916  -0.000818083

   24   12.2  0.5 -0.5   0.180036823  -0.067819486   0.002930573   0.004158415   0.004337892  -0.000808381   0.000013707  -0.000092168
                        -0.168853175   0.019005081  -0.001997722  -0.000825733   0.003685143  -0.000839308  -0.000021371  -0.000029061

   25    1.2  1.5  1.5   0.022122384   0.214332178  -0.019707283  -0.006764328   0.010658142   0.003124862  -0.065923601  -0.002630826
                        -0.090127044  -0.245445838  -0.073793066   0.069406334  -0.019911640  -0.033889432   0.132609930  -0.020939574

   26    2.2  1.5  1.5   0.006400773  -0.005113569   0.024147168   0.003593768   0.096314619  -0.018446287   0.016604433   0.024517436
                         0.013596295   0.042115791   0.032105236   0.027876035  -0.112756989   0.024762545   0.009282998  -0.269959578

   27    3.2  1.5  1.5   0.090731387   0.248165147   0.071269195  -0.062548826   0.001520184   0.044040458   0.126722861   0.006559528
                         0.021094676   0.213235835  -0.022284228  -0.009843012   0.008528184   0.003561928   0.063179002   0.025316764

   28    4.2  1.5  1.5  -0.003197848  -0.046360936  -0.054860901  -0.014349307  -0.001074011   0.009329289   0.068448967   0.005421789
                         0.021485160   0.055246897  -0.183041796   0.162481871  -0.015762965  -0.081348441  -0.129305760  -0.008496885

   29    5.2  1.5  1.5  -0.030907753  -0.054710787   0.174513202  -0.166504662   0.024009733   0.079613333  -0.140830057  -0.009284929
                        -0.015669937  -0.041801127  -0.075708489  -0.040467083  -0.009045123   0.010512503  -0.076536974  -0.005708905

   30    6.2  1.5  1.5  -0.077620482   0.015758812  -0.117249649  -0.018225018   0.052771588  -0.023540724   0.019677808   0.001150728
                        -0.084703086   0.039160740  -0.132801511  -0.191316734  -0.065683878   0.009479287   0.008163281   0.002232870

   31    7.2  1.5  1.5   0.038827707  -0.014643922   0.034397062   0.049185997   0.200418398  -0.036089033  -0.030405146   0.436090951
                        -0.036378241   0.004065894  -0.023528357  -0.009561566   0.168796012  -0.037532106  -0.000216121   0.037796649

   32    8.2  1.5  1.5  -0.073860933   0.027801322  -0.147345615  -0.209063118   0.035938852  -0.006396876  -0.017654505   0.253923843
                         0.069284955  -0.007780264   0.097678179   0.042326866   0.030474010  -0.005987395  -0.000047970   0.022046264

   33    9.2  1.5  1.5  -0.005769858   0.002151000  -0.066558172  -0.093881721   0.292200122  -0.052585102  -0.000256640   0.003741068
                         0.005446019  -0.000631490   0.043153874   0.019550585   0.246237891  -0.054166259   0.000015510   0.000310812

   34    1.2  1.5  0.5   0.164916489  -0.021651387  -0.041056948  -0.047353990  -0.089648276   0.015301087  -0.015234188   0.230420568
                        -0.122757801   0.036683214   0.019519727   0.003041948  -0.069121624   0.015560279   0.001523574   0.002897483

   35    2.2  1.5  0.5   0.100163911   0.311007108  -0.030772703   0.032117901   0.005319612  -0.009517358   0.008321399  -0.024361520
                         0.042893928   0.225362887   0.004051657  -0.006253572   0.011818843  -0.003074546   0.005006841  -0.017915449

   36    3.2  1.5  0.5   0.113948942  -0.034260981  -0.039992231  -0.018401595  -0.036561924   0.008648462   0.000389727   0.005806550
                         0.147228411  -0.071008044  -0.069730040  -0.096340009   0.054597474  -0.009980515   0.016187119  -0.237965091

   37    4.2  1.5  0.5   0.080604803  -0.029486394  -0.041197888  -0.057243796   0.204779726  -0.033360520  -0.007733246   0.083201870
                        -0.068320619   0.006633411   0.029448528   0.015354783   0.157663399  -0.034799333  -0.000830963   0.002673606

   38    5.2  1.5  0.5   0.075520264  -0.007177062   0.041091609   0.008809460   0.138777824  -0.065218922   0.017774548   0.006090670
                         0.087039862  -0.031580345   0.042996986   0.065819254  -0.189447417   0.032329511   0.017181949  -0.097133439

   39    6.2  1.5  0.5  -0.007616778   0.004011925   0.059821130  -0.059735991  -0.065378463  -0.244293185   0.131841328   0.009367962
                        -0.012349970   0.006972249  -0.028227656  -0.010628810   0.029251491  -0.021024854   0.077704803   0.019261636

   40    7.2  1.5  0.5   0.005464367   0.069451500   0.068450861   0.007653450  -0.000018114   0.003974249  -0.131410421  -0.010218959
                        -0.032484043  -0.092103052   0.193511281  -0.169847505  -0.012327206  -0.064583842   0.220619336   0.014512277

   41    8.2  1.5  0.5   0.003645184   0.046218611   0.013626519   0.002073611   0.002038810  -0.016674768   0.222327167   0.017291376
                        -0.021575860  -0.061234416   0.037357784  -0.033002555   0.051344914   0.257987645  -0.373352647  -0.024480537

   42    9.2  1.5  0.5  -0.000689946  -0.008417854  -0.099943499  -0.011644670  -0.001561862   0.008089197  -0.000843917  -0.000056110
                         0.003954107   0.011121291  -0.281499284   0.247260421  -0.024896766  -0.121541250   0.001443844   0.000086129

   43    1.2  1.5 -0.5   0.034156982   0.104414391   0.021738709  -0.004368143   0.000639210  -0.012165554   0.132155141   0.010129980
                        -0.025450763  -0.177100427   0.042179169  -0.045250547   0.021813687   0.112546043  -0.188777786  -0.011479776

   44    2.2  1.5 -0.5   0.257334925  -0.053361242  -0.011150265  -0.012347174   0.004368717  -0.004847866   0.000325164  -0.000792380
                         0.285118552  -0.095001452  -0.030762613  -0.028476701  -0.008997069  -0.012020046   0.030238075   0.009679167

   45    3.2  1.5 -0.5  -0.074265207  -0.158571635   0.092091445  -0.080369453  -0.013189482  -0.064711829   0.196601607   0.012915376
                        -0.026469533  -0.097547953  -0.033751768   0.001551753  -0.000666457  -0.011403403   0.134197276   0.009765642

   46    4.2  1.5 -0.5   0.003441540   0.059307334   0.016263089   0.004075236  -0.002024229   0.027953933   0.046398190   0.003839585
                        -0.030026745  -0.087449880   0.056992398  -0.050476472  -0.048164513  -0.256926179  -0.069115174  -0.006763962

   47    5.2  1.5 -0.5  -0.032166832  -0.094618086  -0.060982119   0.058006008   0.068476161   0.232788262   0.082421400   0.003574746
                        -0.003758106  -0.065777394   0.026286156   0.013136374  -0.024692519   0.030971490   0.051756294   0.024461707

   48    6.2  1.5 -0.5   0.007361362   0.013093803   0.039830391   0.006547312   0.153920032  -0.066365100  -0.010170649  -0.013871002
                         0.003243170   0.006252151   0.045770080   0.065821736  -0.190865996   0.026938199  -0.018850126   0.152406586

   49    7.2  1.5 -0.5  -0.084146278   0.031713237   0.141741596   0.201167981  -0.049362809   0.008884343  -0.017748321   0.255839088
                         0.078904289  -0.008907463  -0.093893931  -0.040787008  -0.041835157   0.008545688  -0.000174398   0.022089611

   50    8.2  1.5 -0.5  -0.055939674   0.021062206   0.027239827   0.039047725   0.197738631  -0.035645809   0.029970408  -0.432921049
                         0.052503015  -0.005931994  -0.018747275  -0.007520716   0.166538604  -0.037011259   0.000251019  -0.037429050

   51    9.2  1.5 -0.5   0.010157133  -0.003857629  -0.206085837  -0.292826938  -0.093318801   0.016887590  -0.000102685   0.001664942
                        -0.009559081   0.001108913   0.137120174   0.059016393  -0.078289922   0.018360220  -0.000004720   0.000157637

   52    1.2  1.5 -1.5   0.221113202  -0.087243854   0.056051230   0.073424467   0.026621888  -0.021748100  -0.015465819  -0.146153379
                        -0.239355163   0.031635326  -0.041488009  -0.021039043   0.021202204  -0.006090117  -0.014359507  -0.023885236

   53    2.2  1.5 -1.5  -0.041327254   0.014202916   0.025756823  -0.039952010  -0.030639910  -0.148046610  -0.233501487   0.002155631
                         0.009588874   0.004909816  -0.011250536  -0.004203430  -0.003826887  -0.008534958  -0.137682003  -0.018900649

   54    3.2  1.5 -1.5  -0.238555962   0.030678154  -0.040602680  -0.017531133   0.027913073   0.005102786   0.016726436   0.022677101
                        -0.223934174   0.087954652  -0.048586654  -0.072584739  -0.034250688   0.007000175   0.020104535  -0.139771309

   55    4.2  1.5 -1.5  -0.049971280   0.021019874   0.131981381   0.185200913   0.065168916  -0.010633156  -0.010063875   0.144944789
                         0.052004108  -0.005477523  -0.095849759  -0.047059956   0.049574357  -0.011685913  -0.000557909   0.019905999

   56    5.2  1.5 -1.5   0.047413115  -0.018885891  -0.120319127  -0.024794058   0.047519396  -0.023147108   0.000784809  -0.020066361
                         0.049925955  -0.029054418  -0.122002849  -0.188605111  -0.064735636   0.011067650  -0.010871319   0.159023126

   57    6.2  1.5 -1.5  -0.040621632  -0.092519352  -0.173461369   0.174188364  -0.023135820  -0.083933154   0.001141208   0.004858846
                        -0.011479840  -0.068115501   0.082736919   0.032282125   0.010428635  -0.007378205   0.002237751  -0.020742394

   58    7.2  1.5 -1.5  -0.002476279  -0.032016606   0.017088844   0.002494305   0.002107930  -0.016900409  -0.223879128  -0.017573488
                         0.014994798   0.042495931   0.047102625  -0.041599518   0.052025320   0.261484233   0.376140985   0.024813144

   59    8.2  1.5 -1.5   0.004762047   0.060987452  -0.071189541  -0.008017776  -0.000106507  -0.002882139  -0.130327594  -0.010266846
                        -0.028474005  -0.080847840  -0.201074614   0.176599752   0.008761140   0.047031475   0.219038978   0.014362302

   60    9.2  1.5 -1.5   0.000397800   0.004797643  -0.031502323  -0.002790825   0.002695045  -0.024537732  -0.001931484  -0.000162407
                        -0.002206204  -0.006319257  -0.090573763   0.079274576   0.075444770   0.381329136   0.003218938   0.000199321


   Nr   State  S   Sz       41            42            43            44            45            46            47            48

    1    1.2  0.5  0.5   0.000105329  -0.001394582  -0.002031339  -0.000445302   0.006344311  -0.001484179  -0.007403405  -0.000006728
                        -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000

    2    2.2  0.5  0.5   0.000908115   0.001017650  -0.000994812  -0.000176665   0.001124330   0.002601723   0.000737981  -0.007544522
                        -0.000237289   0.000400434  -0.001691002  -0.000364776   0.005542987   0.000804604   0.000613037  -0.000824114

    3    3.2  0.5  0.5   0.000748227   0.000527002  -0.001040576  -0.000209152   0.004368178   0.002880239   0.003849807  -0.003181291
                         0.001181471  -0.000398231   0.001924999   0.000392034  -0.006195834  -0.000753876  -0.000641731  -0.001287577

    4    4.2  0.5  0.5  -0.041931892  -0.006226072  -0.006831883   0.128521783  -0.018077801   0.052548087  -0.027512871  -0.029274912
                         0.023951379   0.232426776   0.042970828   0.025382813  -0.005527678  -0.092843144  -0.089952696   0.142705633

    5    5.2  0.5  0.5  -0.168176479   0.088140528  -0.124565235  -0.079972527   0.066196396  -0.021247262   0.069761188   0.043993162
                         0.032654103   0.037811798  -0.061140627   0.031108320   0.046851103  -0.028245897  -0.028944204   0.074661493

    6    6.2  0.5  0.5   0.046173417  -0.006440111   0.092669259  -0.175288012  -0.011619280  -0.100561072  -0.000019126  -0.060589741
                         0.041138634   0.113132987   0.008023968   0.102484057  -0.014901720  -0.043166250  -0.058320471   0.043392425

    7    7.2  0.5  0.5  -0.001993556   0.070937282  -0.012401941  -0.035284010   0.002255648  -0.013341079  -0.002047368  -0.014888532
                        -0.229169062   0.005946069   0.090801114   0.010728252  -0.030813984   0.029650487   0.138749699   0.033549228

    8    8.2  0.5  0.5  -0.019521790   0.000262603   0.018901065  -0.089063203  -0.001730057  -0.002846035  -0.001020785  -0.014322439
                         0.029483613   0.068644847   0.052641192  -0.240940773  -0.031320005   0.227994257  -0.074219676   0.073781042

    9    9.2  0.5  0.5   0.027813099  -0.001183160  -0.080355841  -0.013784332   0.393088141   0.092551728  -0.035200337  -0.177553722
                         0.027227665  -0.006539862   0.060925454   0.011106351  -0.294359977  -0.035888524  -0.056813907  -0.094281597

   10   10.2  0.5  0.5   0.041609768   0.043426314  -0.038521701   0.002156154   0.024817245   0.105566418   0.031594899  -0.420011715
                        -0.004865743   0.015149697  -0.070612056  -0.018550081   0.314742369   0.044458710   0.049499032  -0.029223295

   11   11.2  0.5  0.5   0.012830446   0.066696878   0.047684526   0.022092152  -0.157300862   0.114406750   0.468198446  -0.072826589
                         0.025760142  -0.008494745   0.041612163   0.004221502  -0.168031134  -0.020603654  -0.022148753  -0.037720287

   12   12.2  0.5  0.5   0.002144590   0.000148491   0.000596657  -0.002507197  -0.000137806  -0.000268245  -0.000043598   0.001222829
                        -0.003876234  -0.007405918   0.001382298  -0.006667592  -0.001792939   0.012885559   0.007100500  -0.006667971

   13    1.2  0.5 -0.5   0.000399401   0.000030166  -0.000077780   0.000354811   0.000958168   0.004095813  -0.000000667   0.000734027
                         0.001336165   0.000100917   0.000438456  -0.002000112  -0.001133446  -0.004845059   0.000006695  -0.007366927

   14    2.2  0.5 -0.5  -0.000675110   0.000032731   0.000328310  -0.001491244  -0.001065178  -0.003507245   0.000072035   0.000536848
                        -0.000860340   0.000938034   0.000237664  -0.001274884   0.002506341  -0.004437123   0.007589057   0.000795126

   15    3.2  0.5 -0.5   0.000230619   0.001346270  -0.000422540   0.002077163  -0.002435172   0.007551714   0.000965816  -0.001020267
                        -0.000618978   0.000378517   0.000137460  -0.000688343   0.001712904   0.000664043   0.003293276   0.003767213

   16    4.2  0.5 -0.5  -0.220907671   0.010939003  -0.002543879   0.043503565  -0.104827406  -0.007449409  -0.144905016  -0.086781654
                         0.072531173  -0.047034990  -0.130979635   0.000778799  -0.019808228   0.017374361   0.014981803  -0.036295868

   17    5.2  0.5 -0.5  -0.061470942  -0.016878653  -0.044598796  -0.038443083  -0.007854002   0.006956105  -0.069931820  -0.035718217
                        -0.073619346  -0.170483810   0.073309482  -0.133329679  -0.034461449  -0.080799761  -0.051178877   0.066547722

   18    6.2  0.5 -0.5  -0.106549609   0.052639244  -0.131525922  -0.008285799   0.031955606   0.003878958  -0.049185925  -0.058031217
                         0.038571084   0.032457381   0.154692601   0.092646215  -0.104664672   0.018493853   0.055988964  -0.005801344

   19    7.2  0.5 -0.5  -0.026013091  -0.220140479  -0.016726340   0.091571483   0.031256495   0.024988417  -0.034860080   0.138269039
                        -0.066262907   0.063722859   0.032867708   0.003648821   0.008953617   0.018170541   0.011488861   0.011719366

   20    8.2  0.5 -0.5  -0.065844632   0.022657646   0.221680303   0.048530529   0.175953306   0.022801734  -0.074837536  -0.073752771
                         0.019407948  -0.027148017   0.129778865   0.027805272   0.145016948   0.021541048   0.006936684  -0.008374430

   21    9.2  0.5 -0.5   0.006604768   0.034052678  -0.013343307   0.074024511  -0.087157863   0.478571590   0.076213094  -0.053043957
                        -0.000739386   0.018850181   0.011632498  -0.068478783   0.047511215  -0.110160409   0.186026633  -0.040659838

   22   10.2  0.5 -0.5  -0.026952185   0.007254911   0.018641528  -0.062798021  -0.034199966  -0.224342503  -0.012563685   0.046122593
                        -0.037268455   0.041260326   0.001117111  -0.050263232   0.109321580  -0.222146564   0.420839632   0.036346915

   23   11.2  0.5 -0.5  -0.010962749   0.028355668  -0.000297799   0.032643477  -0.089594374   0.026771367   0.030313878  -0.068460191
                        -0.066335905   0.004915419  -0.022489900   0.054219826   0.074069313   0.228607343   0.076207617   0.463695541

   24   12.2  0.5 -0.5   0.007053169  -0.003099664   0.006127164   0.001256832   0.010013692   0.001280276   0.006756357   0.007069837
                        -0.002263290   0.003164891   0.003633274   0.000828929   0.008113911   0.001262741  -0.000555693   0.000660611

   25    1.2  1.5  1.5  -0.038177067  -0.006686787   0.031271037  -0.114004363   0.002919743   0.004268376  -0.001358694  -0.001673618
                         0.070512046   0.130439159   0.038909896  -0.241284373  -0.012129465   0.054409290  -0.013301463   0.016197238

   26    2.2  1.5  1.5   0.009305212  -0.011873696   0.059546066   0.004562497   0.035048088   0.009845684   0.000297026  -0.000249017
                         0.012100101  -0.024439774  -0.103469534   0.015692190  -0.043125066  -0.011757186   0.018274984   0.016043304

   27    3.2  1.5  1.5  -0.021987042  -0.044193485   0.053034726  -0.276559117  -0.011596152   0.066558091  -0.020309032   0.019074059
                        -0.019819142  -0.008524771  -0.020063341   0.125605488   0.004239673  -0.001756470  -0.000119500   0.001553978

   28    4.2  1.5  1.5  -0.062263711  -0.018081221  -0.031035266   0.137711457   0.002379670   0.007883929   0.012695885  -0.049506124
                         0.101206676   0.190848288  -0.067888624   0.327427011   0.028110772  -0.204561852  -0.221884782   0.201230144

   29    5.2  1.5  1.5  -0.156178753  -0.269401368  -0.043353778   0.226152490  -0.017117494   0.071810293   0.256887677  -0.239236756
                        -0.115276934  -0.000358204   0.016964783  -0.104693363   0.007294656   0.011578905   0.032245573  -0.031418557

   30    6.2  1.5  1.5  -0.053538724   0.138738970   0.028239599  -0.022451701  -0.042047875  -0.016893346  -0.019087420   0.014192196
                        -0.213071557   0.104776327  -0.042035045   0.010412031   0.054360626   0.002814598   0.159819376   0.182548284

   31    7.2  1.5  1.5   0.078372048  -0.034756913   0.234455776   0.048583487  -0.175170232  -0.022503968  -0.036427170  -0.037925149
                        -0.025056567   0.035879757   0.141324274   0.030954821  -0.142104823  -0.021396826   0.002728854  -0.002979954

   32    8.2  1.5  1.5  -0.211639578   0.093888081   0.092246878   0.018704413  -0.040194860  -0.004815766   0.166643104   0.174883345
                         0.067541879  -0.094664344   0.056092241   0.011688383  -0.032839522  -0.004039786  -0.015064008   0.017182724

   33    9.2  1.5  1.5   0.002644066  -0.001172831   0.011986345   0.002487785  -0.008033655  -0.001037765   0.004637777   0.004895586
                        -0.000850177   0.001225792   0.007219378   0.001576191  -0.006562719  -0.000973002  -0.000437623   0.000513569

   34    1.2  1.5  0.5  -0.145607376   0.107980265   0.066918530   0.020231904  -0.011337047  -0.004794787  -0.038912938  -0.034687603
                         0.051867570  -0.067147492   0.030866934   0.003925949  -0.012542851  -0.002130173   0.001184212  -0.005137069

   35    2.2  1.5  0.5   0.174324049   0.296544309  -0.015074481   0.056951119   0.007059458  -0.029621895  -0.022306212   0.029110225
                         0.072860622   0.017442361  -0.006699206  -0.024128252  -0.000836646  -0.000708630  -0.002408452   0.003065746

   36    3.2  1.5  0.5  -0.040790803   0.028131523   0.065943124   0.010227267   0.020811590   0.005592183   0.001876079   0.003272632
                        -0.132301835   0.058415873  -0.117688286  -0.022817471  -0.024432096  -0.003049390  -0.027996534  -0.029248582

   37    4.2  1.5  0.5  -0.266432990   0.123200707   0.056467242   0.005238678  -0.232431857  -0.023933955   0.038946333   0.045291367
                         0.072952464  -0.112808650   0.024631150   0.007102175  -0.173578536  -0.025790594  -0.008585555   0.001002249

   38    5.2  1.5  0.5  -0.074675638   0.096231093   0.070252913   0.070347937  -0.135184440  -0.071834145   0.003817252  -0.005191760
                        -0.257400037   0.115942979  -0.135680271  -0.049294080   0.194396995   0.023970815  -0.091495052  -0.099215657

   39    6.2  1.5  0.5  -0.040524393  -0.099358565  -0.091449502   0.389798565   0.067169520  -0.380970822   0.110390989  -0.101183552
                         0.010892015  -0.018677343   0.052206411  -0.147015426  -0.031111513  -0.011494310   0.011198829  -0.007426160

   40    7.2  1.5  0.5  -0.060212846  -0.003876946   0.007870869  -0.037779140  -0.000200998   0.000683296  -0.000367150   0.034426800
                         0.110490296   0.209812802   0.019850277  -0.097352645   0.004279427  -0.037499305   0.191880811  -0.179592826

   41    8.2  1.5  0.5  -0.028313289  -0.001708894  -0.020699524   0.093383371  -0.001989611  -0.005090921  -0.000818793   0.006092914
                         0.050590800   0.095535415  -0.050705536   0.243081902  -0.033890395   0.245891212   0.037346178  -0.035311020

   42    9.2  1.5  0.5   0.002852584   0.000180094  -0.000098164   0.000485733   0.000053973   0.000148242   0.000005478  -0.000132016
                        -0.005206923  -0.009883910  -0.000241676   0.001269987   0.001226681  -0.008973455  -0.000875329   0.000796493

   43    1.2  1.5 -0.5  -0.033409766  -0.007993674   0.000331717  -0.018703854  -0.001468676  -0.002259730  -0.001672579  -0.005036486
                         0.122687859   0.154362735   0.020606625  -0.071281296   0.005036925  -0.016755458  -0.035026016   0.038603794

   44    2.2  1.5 -0.5   0.101640580  -0.119734169  -0.033704911   0.003963181  -0.018582378  -0.005196438   0.000164443   0.000184986
                         0.279127132  -0.146154963   0.051861174   0.016012886   0.023079299   0.004851078   0.029270753   0.022435095

   45    3.2  1.5 -0.5   0.064025657   0.138442210  -0.024253088   0.127397294   0.005939023  -0.032094160  -0.029428940   0.028044597
                         0.010223116   0.001191538   0.006084549  -0.044372941  -0.002302020   0.000120437   0.000356591   0.000908943

   46    4.2  1.5 -0.5  -0.072799190   0.006408515   0.006077963  -0.014389444   0.004244425   0.017495852  -0.003493202   0.012404673
                         0.150347876   0.276165767   0.006398673  -0.059901477   0.034928123  -0.289565142   0.045167577  -0.037903202

   47    5.2  1.5 -0.5   0.138646430   0.268004699  -0.060823876   0.145865478  -0.064681450   0.235731685  -0.098212051   0.091422705
                         0.058994619  -0.002170528   0.060656365  -0.045473840   0.039383427   0.022262010  -0.015003134   0.005273036

   48    6.2  1.5 -0.5  -0.046350790   0.001170224  -0.212840998  -0.067377220  -0.237172266  -0.067123271   0.002642497  -0.000198692
                        -0.089847492   0.041946311   0.358127305   0.080924848   0.298362536   0.031211169  -0.101421281  -0.110957400

   49    7.2  1.5 -0.5   0.199913739  -0.088617366  -0.089257236  -0.018170329   0.029078808   0.003397899  -0.182121253  -0.190971773
                        -0.063803916   0.089334510  -0.054202829  -0.011217093   0.023687289   0.002609248   0.016451044  -0.018659106

   50    8.2  1.5 -0.5   0.091044169  -0.040362843   0.223033918   0.046310495  -0.191070226  -0.024597138  -0.035741130  -0.037243346
                        -0.028998191   0.041616250   0.134406608   0.029237985  -0.154856626  -0.023398680   0.002561904  -0.002888011

   51    9.2  1.5 -0.5  -0.009418311   0.004171847   0.001165621   0.000220815   0.006948602   0.000901954   0.000805657   0.000871559
                         0.003003254  -0.004224332   0.000700092   0.000138868   0.005679947   0.000833149  -0.000052396   0.000081336

   52    1.2  1.5 -1.5  -0.123060207   0.056624682   0.217662181   0.032849673   0.038795980   0.011148051  -0.016283365  -0.013101213
                         0.043763830  -0.056772198   0.154396627   0.037586656   0.038385698   0.005600875   0.000059461  -0.002670802

   53    2.2  1.5 -1.5   0.026816600   0.014258215  -0.014654033  -0.112279757  -0.015335053   0.055560629  -0.015988944   0.018155490
                         0.004376893   0.005450021  -0.007233293   0.040557793  -0.000071295   0.001075317  -0.001342858   0.002107476

   54    3.2  1.5 -1.5   0.020824482  -0.025285932  -0.171980804  -0.029018419  -0.044310515  -0.010724117   0.000344819   0.001894673
                         0.039900838  -0.015389933   0.250368303   0.048715000   0.049695502   0.006118732  -0.019134150  -0.020220813

   55    4.2  1.5 -1.5  -0.177675582   0.079135265  -0.298339685  -0.061424101  -0.161310720  -0.019931506  -0.205147033  -0.222050268
                         0.071981852  -0.088640685  -0.192785699  -0.042416186  -0.126041895  -0.019965306   0.029310789  -0.009365927

   56    5.2  1.5 -1.5   0.077498445  -0.155177004   0.142585697   0.024276535  -0.037517241  -0.016621678   0.007544093   0.006616995
                         0.258013985  -0.116621918  -0.204389257  -0.039724096   0.062315694   0.008363040   0.241173046   0.258818992

   57    6.2  1.5 -1.5  -0.140121581  -0.219479559  -0.014173579  -0.046321425   0.013055615  -0.068660045  -0.180241711   0.160924375
                        -0.102919983   0.009726588   0.020287902   0.020463274  -0.011084134  -0.002983226  -0.032221421  -0.003147727

   58    7.2  1.5 -1.5  -0.024422600  -0.001561613  -0.021992947   0.098199653  -0.001812150  -0.004564440  -0.000794902   0.006327060
                         0.043576790   0.082265247  -0.053243463   0.255536474  -0.030999497   0.225516201   0.038033737  -0.035977127

   59    8.2  1.5 -1.5   0.063809914   0.004100109  -0.008241625   0.039117309   0.000023876  -0.000870260   0.000241135  -0.031511983
                        -0.117066668  -0.222118000  -0.020458470   0.100626349  -0.006285770   0.051897049  -0.175725275   0.164328461

   60    9.2  1.5 -1.5  -0.000838552  -0.000057317  -0.001117422   0.005014757  -0.000073099  -0.000174580  -0.000025655  -0.000895289
                         0.001474764   0.002776797  -0.002724852   0.013063081  -0.001420685   0.010372002  -0.004922383   0.004571537


   Nr   State  S   Sz       49            50            51            52            53            54            55            56

    1    1.2  0.5  0.5   0.000000668  -0.018003877  -0.004912006  -0.001420461   0.005753565  -0.002359983   0.001680371  -0.018349253
                        -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000

    2    2.2  0.5  0.5   0.009360180   0.000033537  -0.001122256   0.001294369  -0.002787941  -0.004842308  -0.003155335  -0.000233818
                        -0.011953285   0.009689379  -0.004652711   0.000560974   0.000436927   0.002972498   0.014280097   0.011228004

    3    3.2  0.5  0.5   0.014062019   0.000119484  -0.003855666   0.001801915  -0.003980814  -0.001644227  -0.013721810  -0.001063484
                         0.001930345  -0.010987686   0.004982314   0.000554122   0.000849611  -0.000206684   0.005631696  -0.010734129

    4    4.2  0.5  0.5   0.003910533   0.000227689   0.036580054   0.203209193   0.107630914   0.068465771  -0.002028248  -0.003313172
                         0.004369133   0.003194259   0.052669840  -0.092370586   0.220298371   0.209111094  -0.003282844   0.005940628

    5    5.2  0.5  0.5   0.000234799  -0.000005954  -0.221035959  -0.092413872  -0.104002002   0.252285085  -0.001362668   0.009636823
                         0.003012866   0.000422637  -0.139289337  -0.051912692   0.064809452   0.046971254  -0.006775646  -0.002941173

    6    6.2  0.5  0.5  -0.000943793  -0.001899772   0.075341733  -0.299706820  -0.041316220  -0.091780894  -0.004533593  -0.001520436
                         0.002873732   0.002002753   0.088614846  -0.125552804   0.149496011   0.097696539   0.003908416   0.003998011

    7    7.2  0.5  0.5   0.000149085  -0.001482121  -0.009261416  -0.042580668   0.008910343   0.052309280   0.003865506   0.000853364
                        -0.001100609  -0.003412229   0.095656860   0.034571576  -0.258770603   0.279133338   0.003310364   0.003076274

    8    8.2  0.5  0.5  -0.001320162   0.000013525   0.024688617  -0.072214982   0.019855478   0.040429855   0.002539882   0.000209970
                        -0.002938809  -0.002349522   0.013309937   0.366687054   0.135657033   0.057181169   0.002058870  -0.001882988

    9    9.2  0.5  0.5  -0.105380560   0.070973564   0.172418457  -0.022779214   0.014944174   0.086131616  -0.154746018  -0.144019477
                        -0.001325702   0.065460811  -0.123109942  -0.013917715  -0.025785770   0.010982386   0.079738735  -0.118587744

   10   10.2  0.5  0.5  -0.089471925  -0.009142279   0.017052793  -0.026307650   0.070884169   0.129021148  -0.038048415   0.006436051
                         0.107564206  -0.083988175   0.139470210  -0.012679146  -0.008393330  -0.087788186   0.198327254   0.163938288

   11   11.2  0.5  0.5  -0.073591420  -0.146163419  -0.060430228  -0.048954615   0.188188075  -0.038240841  -0.120466598   0.215339782
                        -0.003566948   0.049113737  -0.073208574  -0.005540349  -0.011775170   0.007144120   0.041028879  -0.078266461

   12   12.2  0.5  0.5   0.111074353  -0.000017330  -0.000962304   0.003364561   0.001220633   0.002903044   0.496726621   0.045463534
                         0.235673189   0.183465480  -0.000390745  -0.014559975   0.012582028   0.004425982   0.434069170  -0.411636195

   13    1.2  0.5 -0.5  -0.014719096  -0.000000547  -0.001117827   0.003865489  -0.001146130  -0.002794229   0.018132580   0.001660529
                        -0.010367632  -0.000000385   0.000876453  -0.003030808  -0.002062985  -0.005029492   0.002811518   0.000257471

   14    2.2  0.5 -0.5   0.005607102  -0.000769063   0.000672467  -0.001987662   0.000246740   0.000972027  -0.001489325  -0.000930044
                        -0.007902254  -0.015162537  -0.001240109  -0.004353893  -0.005676514   0.002649280   0.011131247  -0.014594942

   15    3.2  0.5 -0.5  -0.006229635  -0.012608024   0.001076108   0.006108395  -0.000979195   0.001190600   0.002695636  -0.012696877
                         0.009051804  -0.006519536  -0.001547883   0.001541794  -0.001336929   0.003892452  -0.010444427  -0.007667685

   16    4.2  0.5 -0.5   0.002025579  -0.005713051   0.216909433   0.003711796   0.216045477  -0.244845485   0.002363811  -0.002507303
                        -0.002480355   0.001320089  -0.052693447   0.064019021  -0.041705674   0.012902494   0.006378132   0.002933306

   17    5.2  0.5 -0.5   0.000238510  -0.001926936  -0.040693644   0.087999258   0.163582746  -0.006144570  -0.009072375  -0.002384759
                        -0.000348956   0.002327963   0.097873790  -0.245997043   0.197723919   0.122388422  -0.004383021   0.006486846

   18    6.2  0.5 -0.5  -0.000399865  -0.000883255  -0.158384789  -0.004612795   0.040828098  -0.110616988   0.000889897  -0.003881202
                        -0.002731348   0.002892913   0.283728643   0.116222587  -0.127676986   0.108719682   0.004183766  -0.004556912

   19    7.2  0.5 -0.5  -0.003176661   0.000511907  -0.054840103   0.066310479   0.269409156   0.221877600  -0.001314642   0.004327083
                         0.001936186  -0.000985656  -0.000932863   0.069562412  -0.089835339  -0.133461415   0.002909194  -0.002678991

   20    8.2  0.5 -0.5  -0.001341928   0.002771630  -0.283082766  -0.011216134   0.069619885  -0.128227760   0.000081026   0.002825356
                         0.001928644  -0.001642405  -0.244005218   0.025707597   0.007571712   0.048525375  -0.001892925  -0.001645392

   21    9.2  0.5 -0.5   0.095720513   0.086917444  -0.009338524  -0.211645560   0.051430256   0.015283026   0.160489163  -0.140700966
                        -0.012647061   0.059600151   0.025007746   0.009504686   0.069958536  -0.025586391  -0.095120404  -0.102507728

   22   10.2  0.5 -0.5  -0.055839340   0.011206457  -0.012879439   0.072636317  -0.014080890  -0.027087978  -0.031479084  -0.007210933
                         0.063400023   0.139462178   0.026210174   0.120277606   0.155418631  -0.066039798   0.161016310  -0.201815223

   23   11.2  0.5 -0.5  -0.091213698   0.062218819  -0.035106187   0.002384213  -0.012326686  -0.081100592  -0.200804807  -0.112757548
                        -0.124322024   0.039461864   0.034565958  -0.094897963  -0.036897875  -0.170223677  -0.110337165  -0.059002590

   24   12.2  0.5 -0.5   0.105635447  -0.226522713   0.011631533   0.000516185   0.005278851  -0.011591412   0.018145233   0.557370290
                        -0.150002450   0.128712176   0.009381928  -0.000901257   0.000388216   0.005043465  -0.413741514  -0.352833870

   25    1.2  1.5  1.5  -0.037880621   0.004921508  -0.009478547  -0.008348094  -0.001928876  -0.015798318   0.076670885   0.012455774
                        -0.096975394  -0.073235166   0.014103984   0.030229700  -0.086678318  -0.025690250   0.077646731  -0.067427494

   26    2.2  1.5  1.5   0.011428417   0.004314095  -0.103222830   0.009385166   0.010150232   0.022997229  -0.014635059   0.003527294
                         0.008226158   0.007764400   0.123748617   0.001586460  -0.012819703   0.048746506  -0.002575634   0.007835641

   27    3.2  1.5  1.5   0.091535834   0.069116610   0.007267096  -0.027915145   0.086240000   0.030019128  -0.078567312   0.069086241
                        -0.035785565   0.004741758  -0.007658019  -0.009323140  -0.001741033  -0.022226768   0.079328217   0.012063318

   28    4.2  1.5  1.5  -0.052821419   0.002546806  -0.000351525   0.001066832  -0.000217454  -0.000251630   0.052542255   0.006145530
                        -0.132084545  -0.106125137  -0.000192889  -0.005421891  -0.000778249  -0.000172449   0.051336838  -0.047802351

   29    5.2  1.5  1.5   0.113804835   0.126233601  -0.000321682  -0.002220538  -0.002408321  -0.001080450  -0.038774039   0.054178222
                        -0.075183416   0.040972990   0.000486348  -0.000200462   0.000595314  -0.000001442   0.052570116   0.021863822

   30    6.2  1.5  1.5  -0.201698967   0.142717878  -0.001967182   0.000498792   0.000135916  -0.001902095   0.090664591   0.065164611
                        -0.122788727   0.273478567   0.002453802   0.000089701   0.002066384  -0.004723941  -0.002501031   0.110517850

   31    7.2  1.5  1.5   0.066090367  -0.141632276  -0.011491843  -0.000530900  -0.000358671   0.000867125  -0.001839628  -0.056509701
                        -0.093868327   0.080542699  -0.009497121   0.000938615   0.000080452  -0.000497581   0.041972646   0.035767462

   32    8.2  1.5  1.5  -0.112013105   0.240133433  -0.002028671  -0.000058914   0.005091518  -0.011082521   0.003164628   0.096980376
                         0.159068202  -0.136496719  -0.001864920   0.000230129   0.000518225   0.004695900  -0.072030018  -0.061418782

   33    9.2  1.5  1.5  -0.001246583   0.002747974   0.498986916   0.022167340  -0.084515953   0.181204315  -0.000130450  -0.004261839
                         0.001789711  -0.001568744   0.415338731  -0.041843921  -0.013401017  -0.072197414   0.003154402   0.002644409

   34    1.2  1.5  0.5  -0.012336872   0.058723044   0.099550615   0.005630623   0.024735521  -0.072054079  -0.004192073   0.061200698
                         0.024049007  -0.023433882   0.076173649  -0.007187638   0.006332480   0.022485257  -0.027463535  -0.027250859

   35    2.2  1.5  0.5   0.110324799   0.082049020  -0.008583146   0.012801671  -0.051294315  -0.012260289  -0.076789770   0.071670443
                        -0.056915746   0.006349284  -0.012605235   0.004250991   0.008167376   0.000290320   0.095108379   0.015575589

   36    3.2  1.5  0.5  -0.039020606   0.018183396   0.029044604  -0.005368303  -0.004007474  -0.043096285   0.045727775   0.025129383
                        -0.020779349   0.050301442  -0.045529984  -0.001475464   0.052323587  -0.117655278  -0.002659921   0.055144127

   37    4.2  1.5  0.5   0.122008949  -0.252560918  -0.005412003  -0.000216507   0.001622012  -0.003372075  -0.006323502  -0.096720947
                        -0.157938768   0.128975702  -0.003836952   0.000461782   0.000244592   0.001266714   0.069762503   0.055246354

   38    5.2  1.5  0.5   0.154687711  -0.124731566  -0.007086217   0.000764563  -0.000584945  -0.001078781  -0.069047781  -0.056063427
                         0.118286334  -0.245617008   0.009044843   0.000383766   0.001028672  -0.002132245  -0.006767723  -0.096647178

   39    6.2  1.5  0.5  -0.010959435   0.018876307   0.000851405   0.000335648  -0.003808089  -0.001272490   0.013771660   0.001568965
                        -0.021728606   0.034546697  -0.001274076   0.000111020   0.000282209   0.001248952  -0.003455991   0.013176963

   40    7.2  1.5  0.5   0.116600497  -0.000061844   0.000206869  -0.000415472   0.000989126   0.002326519  -0.086944354  -0.007965709
                         0.247458745   0.192618092   0.000123254   0.002358260   0.009495000   0.003337447  -0.075992139   0.072035357

   41    8.2  1.5  0.5   0.067593595   0.000044639  -0.000763389   0.002549614   0.000188841   0.000577817  -0.051163974  -0.004675207
                         0.143522786   0.111725867  -0.000315618  -0.011473048   0.002849230   0.001019692  -0.044726491   0.042417874

   42    9.2  1.5  0.5  -0.002269263  -0.000009907  -0.012486512   0.051513505   0.060901275   0.143538681  -0.006844568  -0.000605753
                        -0.004739793  -0.003687265  -0.002792098  -0.205362090   0.599670854   0.210259981  -0.005952944   0.005655644

   43    1.2  1.5 -0.5  -0.034514580   0.003762727  -0.008865921   0.031340378   0.015337655   0.017548403   0.056302578   0.008350603
                        -0.052974395  -0.026765556  -0.002182082  -0.121369396   0.073906247   0.018547233   0.036306396  -0.026496918

   44    2.2  1.5 -0.5  -0.070735566   0.057420952  -0.007451291   0.001023205   0.005700448  -0.017771648   0.073210669   0.061310273
                        -0.042057517   0.110062699   0.011244198   0.015215630   0.010858355  -0.048805546  -0.004410144   0.105751232

   45    3.2  1.5 -0.5  -0.043832227  -0.043867257   0.003314179   0.050949498   0.123778425   0.043792548   0.033281968  -0.044780248
                         0.030653008  -0.005482046  -0.004473465   0.017908579  -0.019466784  -0.028914189  -0.050642583  -0.009635035

   46    4.2  1.5 -0.5   0.132210173   0.008798678   0.000455309  -0.001891483   0.000530354   0.001001543  -0.087113855  -0.004440352
                         0.250882879   0.199382600   0.000229809   0.006358795   0.003562889   0.001299099  -0.069413813   0.069907630

   47    5.2  1.5 -0.5   0.243414391   0.194581005  -0.000364879  -0.011157331   0.002387819   0.000615136  -0.070209935   0.069269413
                        -0.128977178  -0.007627388   0.000773754  -0.002745473  -0.000092510  -0.001010908   0.086915763   0.003891865

   48    6.2  1.5 -0.5  -0.035326259  -0.021472441  -0.000195636   0.001456142  -0.000473788  -0.001602712   0.003569445  -0.013079505
                         0.017373676   0.011453202   0.000294469   0.000477297   0.001718906  -0.003465905  -0.012780965  -0.005525310

   49    7.2  1.5 -0.5  -0.110869637   0.237827398   0.001782049   0.000086744  -0.004047315   0.008780447   0.003165789   0.097561395
                         0.157510815  -0.135165214   0.001599472  -0.000224637  -0.000412895  -0.003746618  -0.072405269  -0.061772972

   50    8.2  1.5 -0.5  -0.064374456   0.137909635  -0.009085516  -0.000406004  -0.001171984   0.002582372   0.001879372   0.057412919
                         0.091315940  -0.078413116  -0.007455518   0.000719402  -0.000009884  -0.001218658  -0.042633339  -0.036358877

   51    9.2  1.5 -0.5   0.002131432  -0.004584676  -0.167251005  -0.008103444  -0.253509076   0.553780489   0.000267972   0.007675870
                        -0.003008824   0.002568257  -0.129824230   0.009901666  -0.023361526  -0.237994261  -0.005681675  -0.004833909

   52    1.2  1.5 -1.5  -0.038149291   0.086813176  -0.025221851   0.016161561  -0.030129674   0.076706815  -0.001977285   0.087662759
                         0.062707595  -0.057468608  -0.018638232   0.005250633  -0.001333620  -0.040409353  -0.068539796  -0.064982153

   53    2.2  1.5 -1.5   0.007998168  -0.014080398   0.006406752   0.157586333   0.053780518   0.006276895  -0.004686239  -0.014856889
                        -0.003863501   0.000144190  -0.007039299   0.033693031  -0.003570749  -0.015098761   0.007202654   0.000302800

   54    3.2  1.5 -1.5   0.059236953  -0.054227938  -0.016215176  -0.010443974  -0.004850736  -0.040360686  -0.070118822  -0.065484701
                         0.035924552  -0.081967959   0.024561032  -0.001542510   0.037035761  -0.076232433   0.001335306  -0.090429766

   55    4.2  1.5 -1.5  -0.059030605   0.119245846   0.004184958   0.000157615  -0.000272952   0.000785915   0.001251434   0.059787779
                         0.088229353  -0.077568405   0.003608485  -0.000368691  -0.000136213  -0.000187870  -0.048179520  -0.042679983

   56    5.2  1.5 -1.5   0.126796989  -0.049746521  -0.001623757   0.000553233  -0.000525983   0.000649210  -0.056888499  -0.030261261
                         0.039194792  -0.127001457   0.001527870   0.000184245  -0.000943777   0.002394355   0.013304326  -0.057890408

   57    6.2  1.5 -1.5   0.274163360   0.235607855   0.000337176   0.003062114  -0.005053200  -0.001872342  -0.081328949   0.089210784
                        -0.141397919   0.015763367  -0.000378354   0.000717221   0.000631470   0.000884732   0.099228140   0.016363352

   58    7.2  1.5 -1.5  -0.069410713   0.000022321  -0.000996935   0.003183556  -0.000013840   0.000103862   0.050362039   0.004613248
                        -0.147407533  -0.114800693  -0.000411064  -0.014564433   0.000999651   0.000352605   0.044003666  -0.041758894

   59    8.2  1.5 -1.5   0.117719045  -0.000023830  -0.000188356   0.000445763  -0.001277314  -0.002925713  -0.086424466  -0.007909359
                         0.249875262   0.194549809  -0.000144748  -0.002719325  -0.011968384  -0.004199085  -0.075553106   0.071664359

   60    9.2  1.5 -1.5   0.001343240  -0.000011469   0.043263078  -0.136403868   0.024890671   0.052759858   0.003806331   0.000354415
                         0.002864965   0.002181032   0.019251253   0.634734738   0.193462981   0.067371588   0.003266193  -0.003137142


   Nr   State  S   Sz       57            58            59            60

    1    1.2  0.5  0.5   0.000163967  -0.000837029   0.000076383  -0.000747241
                        -0.000000000  -0.000000000  -0.000000000   0.000000000

    2    2.2  0.5  0.5   0.000267167  -0.000153809  -0.000726436   0.000053060
                         0.000098046  -0.000744704   0.000188320   0.000190934

    3    3.2  0.5  0.5   0.000182192  -0.000568280  -0.000425142   0.000308038
                        -0.000437411   0.000781337  -0.000174148  -0.000211158

    4    4.2  0.5  0.5  -0.016123479  -0.053747734  -0.015036739   0.044533519
                         0.161261134  -0.007653119  -0.245659768   0.076605805

    5    5.2  0.5  0.5   0.012081880   0.177192240  -0.125657200  -0.171745653
                        -0.042817320   0.096126372  -0.082613599   0.042479229

    6    6.2  0.5  0.5   0.217851465   0.022328187   0.102200063   0.019936605
                        -0.142232442  -0.069171108  -0.095388347   0.062744500

    7    7.2  0.5  0.5   0.007255494   0.021901065  -0.019152302  -0.030399540
                        -0.012813398  -0.092199560  -0.098386503  -0.275844923

    8    8.2  0.5  0.5  -0.202905889  -0.039098332  -0.003305495  -0.001154774
                        -0.192453135  -0.092395085  -0.081910557   0.060981577

    9    9.2  0.5  0.5   0.074861922  -0.260966199  -0.132646283  -0.038842579
                        -0.107494827   0.177016211  -0.035755988  -0.045380921

   10   10.2  0.5  0.5   0.080008857  -0.024819707  -0.268510442   0.022329857
                         0.024870098  -0.222560722   0.066304994   0.066453193

   11   11.2  0.5  0.5  -0.003700097   0.126164220  -0.104997479   0.300913617
                        -0.074680763   0.112732055  -0.032264513  -0.039572099

   12   12.2  0.5  0.5   0.001118564   0.000233552  -0.000063241   0.000030195
                         0.001094891   0.000505424  -0.001222698   0.001067912

   13    1.2  0.5 -0.5  -0.000089570  -0.000017546  -0.000220978  -0.000022588
                        -0.000832223  -0.000163026  -0.000713819  -0.000072967

   14    2.2  0.5 -0.5  -0.000756887  -0.000126073   0.000198085   0.000034929
                        -0.000073236  -0.000255142  -0.000005777   0.000749636

   15    3.2  0.5 -0.5   0.000716039   0.000415403  -0.000110619   0.000292085
                        -0.000648628  -0.000227953   0.000356705   0.000354626

   16    4.2  0.5 -0.5  -0.013360682  -0.158609814   0.086349156   0.239118868
                        -0.052620160   0.033287338   0.019887358  -0.058283720

   17    5.2  0.5 -0.5   0.114535632   0.041278590  -0.010210348   0.116078597
                         0.165888391  -0.016594357  -0.176626167   0.095605953

   18    6.2  0.5 -0.5  -0.066384605   0.118103615   0.065833887   0.060898717
                         0.029601930  -0.231820759   0.000489736  -0.125837736

   19    7.2  0.5 -0.5  -0.089326534   0.011963418  -0.272497104   0.099649787
                         0.031641519  -0.008584986   0.052534578  -0.010799743

   20    8.2  0.5 -0.5  -0.096048440   0.213060888   0.057912551   0.079224455
                        -0.028986697   0.181146535  -0.019136944  -0.021065407

   21    9.2  0.5 -0.5   0.148073980   0.098866672  -0.054837913   0.073383642
                        -0.278410115  -0.085935012  -0.023684958   0.116139434

   22   10.2  0.5 -0.5  -0.223938722  -0.033288986   0.070084447   0.016066077
                        -0.000861128  -0.076888116   0.001679190   0.276108839

   23   11.2  0.5 -0.5   0.125585494   0.074647893   0.051185739   0.061871869
                         0.113376411  -0.004312685   0.299157109   0.090759800

   24   12.2  0.5 -0.5   0.000527514  -0.001208301   0.001029076   0.001186712
                         0.000178126  -0.000994978  -0.000286965  -0.000301171

   25    1.2  1.5  1.5   0.038753115  -0.017469209   0.008641601  -0.008091173
                         0.025992894   0.045965219  -0.150893840   0.144515520

   26    2.2  1.5  1.5   0.027723985  -0.218233060   0.030766125   0.010967616
                        -0.116320705   0.261998308   0.076782861   0.053345679

   27    3.2  1.5  1.5  -0.041359373  -0.001038672   0.156260856  -0.138805629
                         0.044435500  -0.013272588   0.000804278  -0.014402406

   28    4.2  1.5  1.5   0.023301867   0.004668565   0.001803679  -0.003701941
                         0.024364900   0.010575829  -0.093966014   0.084185181

   29    5.2  1.5  1.5  -0.021282079  -0.012404662   0.091749354  -0.086073678
                         0.019329912   0.007003007  -0.009135992  -0.015836550

   30    6.2  1.5  1.5   0.006589817  -0.018705818  -0.036985853  -0.014001811
                        -0.012717175   0.023381786  -0.079440213  -0.088476938

   31    7.2  1.5  1.5   0.038097002  -0.087453807   0.021483737   0.024704505
                         0.011571917  -0.072082765  -0.006401623  -0.006525116

   32    8.2  1.5  1.5   0.010220369  -0.023423406  -0.075824325  -0.087907645
                         0.002846628  -0.018740062   0.023940882   0.024472447

   33    9.2  1.5  1.5  -0.147148786   0.337672993   0.076375858   0.089182924
                        -0.044197481   0.277253293  -0.025350219  -0.026002323

   34    1.2  1.5  0.5  -0.085704748   0.207595238  -0.130825497  -0.130252741
                        -0.025919957   0.157254239   0.022652390   0.020980678

   35    2.2  1.5  0.5   0.031616630  -0.006630079  -0.082294809   0.091236475
                        -0.017388804  -0.030831223  -0.013946651  -0.018591035

   36    3.2  1.5  0.5  -0.009695698   0.073713782  -0.045273948  -0.058348602
                         0.050460717  -0.117955233  -0.190692766  -0.220694699

   37    4.2  1.5  0.5   0.038665702  -0.094220231  -0.019733455  -0.022287512
                         0.011315431  -0.069939197   0.007554813   0.007892814

   38    5.2  1.5  0.5   0.020761060  -0.062785834   0.011630754   0.005368208
                        -0.049863882   0.088501435   0.021598174   0.025276378

   39    6.2  1.5  0.5   0.082326715   0.046040060   0.025198751  -0.024469277
                        -0.079296984  -0.029268003  -0.003225683  -0.003695794

   40    7.2  1.5  0.5   0.022496170   0.004150039   0.002613587   0.000445558
                         0.022603135   0.010476596   0.091056671  -0.079351461

   41    8.2  1.5  0.5  -0.081682740  -0.015694572   0.001032301  -0.000245565
                        -0.079869660  -0.036943951   0.023900994  -0.020988692

   42    9.2  1.5  0.5  -0.084506446  -0.016722056   0.010581071   0.001016034
                        -0.080655877  -0.037222436   0.346647134  -0.302369592

   43    1.2  1.5 -0.5  -0.178565908  -0.034942329   0.018476811  -0.017049249
                        -0.189575566  -0.082438957   0.130631439  -0.131672945

   44    2.2  1.5 -0.5   0.031363670  -0.013905685  -0.009221459  -0.037659548
                         0.003292782   0.033295851  -0.092653578  -0.074489617

   45    3.2  1.5 -0.5   0.109389877   0.049133442   0.228078846  -0.195552301
                        -0.085912825  -0.015039791  -0.009526258   0.013143778

   46    4.2  1.5 -0.5   0.079620048   0.015388047  -0.000948801   0.001381218
                         0.086195076   0.037232828   0.023624764  -0.021084987

   47    5.2  1.5 -0.5  -0.081274594  -0.047355939  -0.025733355   0.024071663
                         0.071895795   0.025977749   0.002346771   0.004723409

   48    6.2  1.5 -0.5   0.024173232  -0.070031939   0.010766686   0.004370511
                        -0.048907647   0.090339511   0.022281895   0.025025601

   49    7.2  1.5 -0.5  -0.010860533   0.024880647   0.075670537   0.087756875
                        -0.003005117   0.019948252  -0.023891897  -0.024431109

   50    8.2  1.5 -0.5   0.038411284  -0.088151862   0.020122548   0.023137249
                         0.011651108  -0.072666924  -0.005972314  -0.006082009

   51    9.2  1.5 -0.5   0.038798121  -0.089235727   0.288545009   0.334271707
                         0.012642891  -0.075390283  -0.090389052  -0.092404659

   52    1.2  1.5 -1.5   0.043831921  -0.029990587   0.135658991   0.141589252
                        -0.022287606  -0.035749115  -0.050466232  -0.052878275

   53    2.2  1.5 -1.5   0.237140955   0.112686070   0.054203087  -0.082446920
                        -0.245016223  -0.040012191  -0.005298623  -0.006683380

   54    3.2  1.5 -1.5  -0.013307524  -0.039754515  -0.054806621  -0.046978658
                         0.000387582   0.045876900  -0.128338093  -0.149033915

   55    4.2  1.5 -1.5   0.011014683  -0.026718514   0.079325063   0.089229792
                         0.003510047  -0.020560797  -0.028432086  -0.029511171

   56    5.2  1.5 -1.5   0.005635382  -0.016941540  -0.040582427  -0.018405277
                        -0.013082821   0.023228358  -0.077540577  -0.090347419

   57    6.2  1.5 -1.5   0.021245832   0.011938982  -0.088660316   0.086824750
                        -0.021100478  -0.007912835   0.012789354   0.011839069

   58    7.2  1.5 -1.5  -0.081027237  -0.015582204   0.001072491  -0.000237997
                        -0.079238123  -0.036639947   0.025529189  -0.022415956

   59    8.2  1.5 -1.5  -0.021138979  -0.003923957  -0.002618685  -0.000446874
                        -0.021283548  -0.009857068  -0.091212922   0.079512857

   60    9.2  1.5 -1.5   0.311795458   0.059689988   0.001534369   0.001630072
                         0.306065403   0.141574319   0.092883585  -0.080456498


 Composition of spin-orbit eigenvectors
 ======================================

   Nr   State  S   Sz       1        2        3        4        5        6        7        8        9       10

    1    1.2  0.5  0.5   0.139%  37.743%   0.586%  28.035%  27.791%   5.473%   0.000%   0.026%   0.018%   0.000%
    2    2.2  0.5  0.5  37.113%   3.176%   1.541%  24.675%  20.230%  13.033%   0.027%   0.001%   0.014%   0.003%
    3    3.2  0.5  0.5  11.753%   9.827%   5.736%  39.181%   2.455%  30.817%   0.006%   0.008%   0.025%   0.005%
    4    4.2  0.5  0.5   0.003%   0.001%   0.001%   0.000%   0.000%   0.000%   0.041%   0.025%   0.001%   0.005%
    5    5.2  0.5  0.5   0.001%   0.001%   0.000%   0.002%   0.000%   0.000%   0.012%   0.006%   0.026%   0.002%
    6    6.2  0.5  0.5   0.001%   0.000%   0.003%   0.000%   0.000%   0.000%   0.011%   0.009%   0.005%   0.001%
    7    7.2  0.5  0.5   0.001%   0.003%   0.000%   0.000%   0.000%   0.000%   0.001%   0.032%   0.010%   0.000%
    8    8.2  0.5  0.5   0.000%   0.000%   0.004%   0.000%   0.000%   0.000%   0.007%   0.007%   0.004%   0.041%
    9    9.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.965%   0.117%   5.576%   0.664%
   10   10.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   4.297%   0.118%   2.456%   0.516%
   11   11.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.168%   5.446%   1.578%   0.227%
   12   12.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.015%   0.016%   0.000%   0.000%   0.000%   0.000%
   13    1.2  0.5 -0.5  37.743%   0.139%  28.035%   0.586%   5.473%  27.791%   0.026%   0.000%   0.000%   0.018%
   14    2.2  0.5 -0.5   3.176%  37.113%  24.675%   1.541%  13.033%  20.230%   0.001%   0.027%   0.003%   0.014%
   15    3.2  0.5 -0.5   9.827%  11.753%  39.181%   5.736%  30.817%   2.455%   0.008%   0.006%   0.005%   0.025%
   16    4.2  0.5 -0.5   0.001%   0.003%   0.000%   0.001%   0.000%   0.000%   0.025%   0.041%   0.005%   0.001%
   17    5.2  0.5 -0.5   0.001%   0.001%   0.002%   0.000%   0.000%   0.000%   0.006%   0.012%   0.002%   0.026%
   18    6.2  0.5 -0.5   0.000%   0.001%   0.000%   0.003%   0.000%   0.000%   0.009%   0.011%   0.001%   0.005%
   19    7.2  0.5 -0.5   0.003%   0.001%   0.000%   0.000%   0.000%   0.000%   0.032%   0.001%   0.000%   0.010%
   20    8.2  0.5 -0.5   0.000%   0.000%   0.000%   0.004%   0.000%   0.000%   0.007%   0.007%   0.041%   0.004%
   21    9.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.117%   0.965%   0.664%   5.576%
   22   10.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.118%   4.297%   0.516%   2.456%
   23   11.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   5.446%   0.168%   0.227%   1.578%
   24   12.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.016%   0.015%   0.000%   0.000%   0.000%   0.000%
   25    1.2  1.5  1.5   0.005%   0.007%   0.001%   0.001%   0.003%   0.003%   4.084%   6.279%   0.846%   1.278%
   26    2.2  1.5  1.5   0.002%   0.001%   0.001%   0.035%   0.000%   0.000%   2.256%   0.743%  30.910%   2.749%
   27    3.2  1.5  1.5   0.006%   0.007%   0.001%   0.000%   0.003%   0.003%   5.622%   6.978%   0.123%   0.901%
   28    4.2  1.5  1.5   0.005%   0.006%   0.001%   0.000%   0.004%   0.004%   0.682%   0.885%   0.008%   0.122%
   29    5.2  1.5  1.5   0.005%   0.006%   0.001%   0.000%   0.006%   0.002%   0.600%   0.774%   0.025%   0.187%
   30    6.2  1.5  1.5   0.006%   0.004%   0.000%   0.001%   0.012%   0.015%   0.986%   0.731%   0.142%   0.021%
   31    7.2  1.5  1.5   0.000%   0.000%   0.000%   0.011%   0.004%   0.004%   0.082%   0.066%   1.385%   0.109%
   32    8.2  1.5  1.5   0.006%   0.005%   0.000%   0.001%   0.011%   0.011%   0.901%   0.738%   0.059%   0.005%
   33    9.2  1.5  1.5   0.004%   0.003%   0.004%   0.098%   0.000%   0.000%   0.651%   0.540%  11.114%   0.889%
   34    1.2  1.5  0.5   0.006%   0.004%   0.001%   0.020%   0.001%   0.001%   5.120%   3.203%  21.925%   1.579%
   35    2.2  1.5  0.5   0.002%   0.003%   0.000%   0.000%   0.004%   0.004%   0.906%   2.196%   0.228%   0.526%
   36    3.2  1.5  0.5   0.014%   0.012%   0.000%   0.006%   0.001%   0.001%  16.016%  13.201%   5.169%   0.463%
   37    4.2  1.5  0.5   0.000%   0.000%   0.000%   0.010%   0.011%   0.010%   0.109%   0.085%   1.506%   0.110%
   38    5.2  1.5  0.5   0.000%   0.000%   0.001%   0.010%   0.011%   0.010%   0.062%   0.048%   1.360%   0.203%
   39    6.2  1.5  0.5   0.000%   0.000%   0.010%   0.001%   0.000%   0.000%   0.074%   0.100%   0.196%   1.414%
   40    7.2  1.5  0.5   0.005%   0.006%   0.001%   0.000%   0.011%   0.011%   0.876%   1.066%   0.009%   0.104%
   41    8.2  1.5  0.5   0.000%   0.000%   0.011%   0.000%   0.004%   0.004%   0.020%   0.026%   0.143%   1.799%
   42    9.2  1.5  0.5   0.048%   0.055%   0.007%   0.000%   0.000%   0.000%   5.386%   6.578%   0.085%   1.130%
   43    1.2  1.5 -0.5   0.004%   0.006%   0.020%   0.001%   0.001%   0.001%   3.203%   5.120%   1.579%  21.925%
   44    2.2  1.5 -0.5   0.003%   0.002%   0.000%   0.000%   0.004%   0.004%   2.196%   0.906%   0.526%   0.228%
   45    3.2  1.5 -0.5   0.012%   0.014%   0.006%   0.000%   0.001%   0.001%  13.201%  16.016%   0.463%   5.169%
   46    4.2  1.5 -0.5   0.000%   0.000%   0.010%   0.000%   0.010%   0.011%   0.085%   0.109%   0.110%   1.506%
   47    5.2  1.5 -0.5   0.000%   0.000%   0.010%   0.001%   0.010%   0.011%   0.048%   0.062%   0.203%   1.360%
   48    6.2  1.5 -0.5   0.000%   0.000%   0.001%   0.010%   0.000%   0.000%   0.100%   0.074%   1.414%   0.196%
   49    7.2  1.5 -0.5   0.006%   0.005%   0.000%   0.001%   0.011%   0.011%   1.066%   0.876%   0.104%   0.009%
   50    8.2  1.5 -0.5   0.000%   0.000%   0.000%   0.011%   0.004%   0.004%   0.026%   0.020%   1.799%   0.143%
   51    9.2  1.5 -0.5   0.055%   0.048%   0.000%   0.007%   0.000%   0.000%   6.578%   5.386%   1.130%   0.085%
   52    1.2  1.5 -1.5   0.007%   0.005%   0.001%   0.001%   0.003%   0.003%   6.279%   4.084%   1.278%   0.846%
   53    2.2  1.5 -1.5   0.001%   0.002%   0.035%   0.001%   0.000%   0.000%   0.743%   2.256%   2.749%  30.910%
   54    3.2  1.5 -1.5   0.007%   0.006%   0.000%   0.001%   0.003%   0.003%   6.978%   5.622%   0.901%   0.123%
   55    4.2  1.5 -1.5   0.006%   0.005%   0.000%   0.001%   0.004%   0.004%   0.885%   0.682%   0.122%   0.008%
   56    5.2  1.5 -1.5   0.006%   0.005%   0.000%   0.001%   0.002%   0.006%   0.774%   0.600%   0.187%   0.025%
   57    6.2  1.5 -1.5   0.004%   0.006%   0.001%   0.000%   0.015%   0.012%   0.731%   0.986%   0.021%   0.142%
   58    7.2  1.5 -1.5   0.000%   0.000%   0.011%   0.000%   0.004%   0.004%   0.066%   0.082%   0.109%   1.385%
   59    8.2  1.5 -1.5   0.005%   0.006%   0.001%   0.000%   0.011%   0.011%   0.738%   0.901%   0.005%   0.059%
   60    9.2  1.5 -1.5   0.003%   0.004%   0.098%   0.004%   0.000%   0.000%   0.540%   0.651%   0.889%  11.114%

   Nr   State  S   Sz      11       12       13       14       15       16       17       18       19       20

    1    1.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    2    2.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    3    3.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    4    4.2  0.5  0.5   0.365%   0.928%   0.429%   0.468%   0.027%   2.471%   0.000%   0.000%   2.859%   8.024%
    5    5.2  0.5  0.5   1.475%   0.074%   1.110%   1.555%   0.322%   0.578%   0.000%   0.000%   0.480%   2.572%
    6    6.2  0.5  0.5   0.054%   3.970%   0.089%   0.699%   0.179%   0.404%   0.000%   0.000%   1.636%   0.765%
    7    7.2  0.5  0.5   1.051%   0.109%   0.197%   0.647%   2.747%   0.010%   0.000%   0.000%  10.713%   4.090%
    8    8.2  0.5  0.5   0.078%   1.031%   2.519%   0.796%   0.053%   0.509%   0.000%   0.000%   3.239%   2.297%
    9    9.2  0.5  0.5   0.013%   0.003%   0.001%   0.002%   0.005%   0.000%   6.635%   5.140%   0.000%   0.000%
   10   10.2  0.5  0.5   0.011%   0.008%   0.001%   0.003%   0.009%   0.000%   7.766%   4.034%   0.001%   0.000%
   11   11.2  0.5  0.5   0.014%   0.003%   0.001%   0.003%   0.003%   0.005%   1.988%   9.819%   0.001%   0.001%
   12   12.2  0.5  0.5   0.000%   0.001%   0.004%   0.001%   0.001%   0.004%  13.716%   8.741%   0.000%   0.000%
   13    1.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   14    2.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   15    3.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   16    4.2  0.5 -0.5   0.928%   0.365%   0.468%   0.429%   2.471%   0.027%   0.000%   0.000%   8.024%   2.859%
   17    5.2  0.5 -0.5   0.074%   1.475%   1.555%   1.110%   0.578%   0.322%   0.000%   0.000%   2.572%   0.480%
   18    6.2  0.5 -0.5   3.970%   0.054%   0.699%   0.089%   0.404%   0.179%   0.000%   0.000%   0.765%   1.636%
   19    7.2  0.5 -0.5   0.109%   1.051%   0.647%   0.197%   0.010%   2.747%   0.000%   0.000%   4.090%  10.713%
   20    8.2  0.5 -0.5   1.031%   0.078%   0.796%   2.519%   0.509%   0.053%   0.000%   0.000%   2.297%   3.239%
   21    9.2  0.5 -0.5   0.003%   0.013%   0.002%   0.001%   0.000%   0.005%   5.140%   6.635%   0.000%   0.000%
   22   10.2  0.5 -0.5   0.008%   0.011%   0.003%   0.001%   0.000%   0.009%   4.034%   7.766%   0.000%   0.001%
   23   11.2  0.5 -0.5   0.003%   0.014%   0.003%   0.001%   0.005%   0.003%   9.819%   1.988%   0.001%   0.001%
   24   12.2  0.5 -0.5   0.001%   0.000%   0.001%   0.004%   0.004%   0.001%   8.741%  13.716%   0.000%   0.000%
   25    1.2  1.5  1.5   3.228%  21.810%   6.879%   1.599%   1.695%   8.394%   5.822%   3.702%   0.012%   0.004%
   26    2.2  1.5  1.5  11.508%   2.909%   4.668%  12.312%   1.663%   0.790%   0.099%   0.072%   0.007%   0.016%
   27    3.2  1.5  1.5   2.287%  19.706%  13.410%   5.644%   0.084%   0.383%   6.365%   4.054%   0.001%   0.001%
   28    4.2  1.5  1.5   0.140%   1.520%   2.052%   0.642%   0.216%   1.348%   0.102%   0.071%   1.735%   0.912%
   29    5.2  1.5  1.5   0.167%   1.833%   0.118%   0.056%   0.526%   3.426%   0.052%   0.072%   0.161%   0.242%
   30    6.2  1.5  1.5   0.004%   0.031%   0.041%   0.076%   0.813%   0.192%   0.265%   0.350%   5.732%   9.695%
   31    7.2  1.5  1.5   2.111%   0.193%   0.908%   2.884%   0.030%   0.005%   0.054%   0.085%   0.059%   0.098%
   32    8.2  1.5  1.5   0.734%   0.067%   0.119%   0.380%   1.467%   0.221%   0.161%   0.252%   1.565%   2.592%
   33    9.2  1.5  1.5   0.042%   0.004%   0.000%   0.002%   0.002%   0.000%   0.000%   0.000%   0.000%   0.000%
   34    1.2  1.5  0.5   7.053%   0.670%   1.578%   4.260%  14.979%   5.092%   0.851%   2.768%   0.018%   0.046%
   35    2.2  1.5  0.5   0.140%   0.016%   3.885%   2.413%   7.872%  33.963%   7.686%   4.365%   0.040%   0.015%
   36    3.2  1.5  0.5   6.582%   0.591%   5.596%  14.870%   2.161%   0.654%   1.676%   1.945%   0.001%   0.001%
   37    4.2  1.5  0.5   0.092%   0.010%   0.019%   0.040%   2.279%   0.360%   0.151%   0.238%   9.078%  15.798%
   38    5.2  1.5  0.5   0.134%   0.010%   0.047%   0.881%   1.717%   0.283%   0.148%   0.230%   0.061%   0.228%
   39    6.2  1.5  0.5   0.022%   0.275%   4.730%   1.202%   0.174%   0.759%   0.002%   0.005%   8.918%   4.791%
   40    7.2  1.5  0.5   0.139%   1.519%   0.113%   0.036%   0.092%   0.613%   0.240%   0.153%   0.723%   0.431%
   41    8.2  1.5  0.5   0.441%   4.811%   0.003%   0.001%   0.053%   0.351%   0.075%   0.048%   0.210%   0.126%
   42    9.2  1.5  0.5   0.001%   0.011%   0.007%   0.002%   0.002%   0.014%   0.000%   0.000%   0.001%   0.001%
   43    1.2  1.5 -0.5   0.670%   7.053%   4.260%   1.578%   5.092%  14.979%   2.768%   0.851%   0.046%   0.018%
   44    2.2  1.5 -0.5   0.016%   0.140%   2.413%   3.885%  33.963%   7.872%   4.365%   7.686%   0.015%   0.040%
   45    3.2  1.5 -0.5   0.591%   6.582%  14.870%   5.596%   0.654%   2.161%   1.945%   1.676%   0.001%   0.001%
   46    4.2  1.5 -0.5   0.010%   0.092%   0.040%   0.019%   0.360%   2.279%   0.238%   0.151%  15.798%   9.078%
   47    5.2  1.5 -0.5   0.010%   0.134%   0.881%   0.047%   0.283%   1.717%   0.230%   0.148%   0.228%   0.061%
   48    6.2  1.5 -0.5   0.275%   0.022%   1.202%   4.730%   0.759%   0.174%   0.005%   0.002%   4.791%   8.918%
   49    7.2  1.5 -0.5   1.519%   0.139%   0.036%   0.113%   0.613%   0.092%   0.153%   0.240%   0.431%   0.723%
   50    8.2  1.5 -0.5   4.811%   0.441%   0.001%   0.003%   0.351%   0.053%   0.048%   0.075%   0.126%   0.210%
   51    9.2  1.5 -0.5   0.011%   0.001%   0.002%   0.007%   0.014%   0.002%   0.000%   0.000%   0.001%   0.001%
   52    1.2  1.5 -1.5  21.810%   3.228%   1.599%   6.879%   8.394%   1.695%   3.702%   5.822%   0.004%   0.012%
   53    2.2  1.5 -1.5   2.909%  11.508%  12.312%   4.668%   0.790%   1.663%   0.072%   0.099%   0.016%   0.007%
   54    3.2  1.5 -1.5  19.706%   2.287%   5.644%  13.410%   0.383%   0.084%   4.054%   6.365%   0.001%   0.001%
   55    4.2  1.5 -1.5   1.520%   0.140%   0.642%   2.052%   1.348%   0.216%   0.071%   0.102%   0.912%   1.735%
   56    5.2  1.5 -1.5   1.833%   0.167%   0.056%   0.118%   3.426%   0.526%   0.072%   0.052%   0.242%   0.161%
   57    6.2  1.5 -1.5   0.031%   0.004%   0.076%   0.041%   0.192%   0.813%   0.350%   0.265%   9.695%   5.732%
   58    7.2  1.5 -1.5   0.193%   2.111%   2.884%   0.908%   0.005%   0.030%   0.085%   0.054%   0.098%   0.059%
   59    8.2  1.5 -1.5   0.067%   0.734%   0.380%   0.119%   0.221%   1.467%   0.252%   0.161%   2.592%   1.565%
   60    9.2  1.5 -1.5   0.004%   0.042%   0.002%   0.000%   0.000%   0.002%   0.000%   0.000%   0.000%   0.000%

   Nr   State  S   Sz      21       22       23       24       25       26       27       28       29       30

    1    1.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    2    2.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    3    3.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    4    4.2  0.5  0.5   1.236%   2.683%   0.016%   0.023%   0.001%   0.000%  16.529%   0.833%   2.926%   0.939%
    5    5.2  0.5  0.5   5.232%   1.395%   0.010%   0.008%   0.000%   0.001%   0.260%  12.054%   1.361%   0.535%
    6    6.2  0.5  0.5   1.343%   0.832%   0.031%   0.099%   0.003%   0.000%   6.184%   0.048%   8.430%   2.271%
    7    7.2  0.5  0.5   0.205%   0.734%   0.002%   0.006%   0.000%   0.001%   1.115%   4.950%   1.461%   3.124%
    8    8.2  0.5  0.5   0.234%   4.675%   0.022%   0.062%   0.007%   0.000%   2.432%   0.686%  26.158%   4.591%
    9    9.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   10   10.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   11   11.2  0.5  0.5   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   12   12.2  0.5  0.5   0.000%   0.002%   0.000%   0.000%   0.000%   0.000%   0.002%   0.000%   0.000%   0.000%
   13    1.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   14    2.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   15    3.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   16    4.2  0.5 -0.5   2.683%   1.236%   0.023%   0.016%   0.000%   0.001%   0.833%  16.529%   0.939%   2.926%
   17    5.2  0.5 -0.5   1.395%   5.232%   0.008%   0.010%   0.001%   0.000%  12.054%   0.260%   0.535%   1.361%
   18    6.2  0.5 -0.5   0.832%   1.343%   0.099%   0.031%   0.000%   0.003%   0.048%   6.184%   2.271%   8.430%
   19    7.2  0.5 -0.5   0.734%   0.205%   0.006%   0.002%   0.001%   0.000%   4.950%   1.115%   3.124%   1.461%
   20    8.2  0.5 -0.5   4.675%   0.234%   0.062%   0.022%   0.000%   0.007%   0.686%   2.432%   4.591%  26.158%
   21    9.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   22   10.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   23   11.2  0.5 -0.5   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   24   12.2  0.5 -0.5   0.002%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.002%   0.000%   0.000%
   25    1.2  1.5  1.5   0.001%   0.006%   0.001%   0.002%   0.000%   0.000%   0.004%   0.002%   0.108%   0.014%
   26    2.2  1.5  1.5   0.026%   0.003%   0.000%   0.000%   0.000%   0.000%   0.001%   0.008%   0.001%   0.017%
   27    3.2  1.5  1.5   0.003%   0.027%   0.000%   0.000%   0.000%   0.000%   0.035%   0.008%   0.116%   0.019%
   28    4.2  1.5  1.5   0.048%   1.012%   2.639%   6.898%  17.373%   0.088%   6.499%   1.663%   5.209%   0.834%
   29    5.2  1.5  1.5   0.086%   3.724%   6.088%  16.786%   0.098%   0.061%   2.600%   0.158%  12.865%   2.159%
   30    6.2  1.5  1.5  22.387%   0.744%   0.282%   0.195%   0.026%   2.834%   1.681%   8.948%   0.281%   0.492%
   31    7.2  1.5  1.5   9.221%   0.494%   3.490%   1.324%   0.019%   4.573%   1.396%   5.336%   0.859%   5.238%
   32    8.2  1.5  1.5   5.450%   0.293%   4.843%   1.764%   0.046%   9.005%   3.269%  12.270%   0.890%   5.260%
   33    9.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.002%
   34    1.2  1.5  0.5   0.002%   0.000%   0.000%   0.000%   0.000%   0.001%   0.005%   0.013%   0.000%   0.002%
   35    2.2  1.5  0.5   0.002%   0.019%   0.000%   0.000%   0.000%   0.000%   0.031%   0.007%   0.000%   0.000%
   36    3.2  1.5  0.5   0.045%   0.004%   0.000%   0.000%   0.000%   0.000%   0.011%   0.054%   0.000%   0.000%
   37    4.2  1.5  0.5   2.264%   0.152%   1.825%   0.733%   0.060%  14.055%   0.000%   0.004%   0.856%   5.066%
   38    5.2  1.5  0.5  14.759%   0.180%  14.697%   6.487%   0.198%   8.878%   0.259%   0.378%   0.608%   3.571%
   39    6.2  1.5  0.5   0.384%  19.691%   1.782%   1.188%   3.025%   0.237%   1.346%   0.493%   0.179%   0.114%
   40    7.2  1.5  0.5   0.018%   0.340%   0.003%   0.002%  38.064%   0.190%   4.457%   1.201%   2.655%   0.447%
   41    8.2  1.5  0.5   0.002%   0.042%   7.767%  20.924%   1.144%   0.010%   2.184%   0.579%   0.293%   0.048%
   42    9.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.003%   0.001%   0.000%   0.000%
   43    1.2  1.5 -0.5   0.000%   0.002%   0.000%   0.000%   0.001%   0.000%   0.013%   0.005%   0.002%   0.000%
   44    2.2  1.5 -0.5   0.019%   0.002%   0.000%   0.000%   0.000%   0.000%   0.007%   0.031%   0.000%   0.000%
   45    3.2  1.5 -0.5   0.004%   0.045%   0.000%   0.000%   0.000%   0.000%   0.054%   0.011%   0.000%   0.000%
   46    4.2  1.5 -0.5   0.152%   2.264%   0.733%   1.825%  14.055%   0.060%   0.004%   0.000%   5.066%   0.856%
   47    5.2  1.5 -0.5   0.180%  14.759%   6.487%  14.697%   8.878%   0.198%   0.378%   0.259%   3.571%   0.608%
   48    6.2  1.5 -0.5  19.691%   0.384%   1.188%   1.782%   0.237%   3.025%   0.493%   1.346%   0.114%   0.179%
   49    7.2  1.5 -0.5   0.340%   0.018%   0.002%   0.003%   0.190%  38.064%   1.201%   4.457%   0.447%   2.655%
   50    8.2  1.5 -0.5   0.042%   0.002%  20.924%   7.767%   0.010%   1.144%   0.579%   2.184%   0.048%   0.293%
   51    9.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.003%   0.000%   0.000%
   52    1.2  1.5 -1.5   0.006%   0.001%   0.002%   0.001%   0.000%   0.000%   0.002%   0.004%   0.014%   0.108%
   53    2.2  1.5 -1.5   0.003%   0.026%   0.000%   0.000%   0.000%   0.000%   0.008%   0.001%   0.017%   0.001%
   54    3.2  1.5 -1.5   0.027%   0.003%   0.000%   0.000%   0.000%   0.000%   0.008%   0.035%   0.019%   0.116%
   55    4.2  1.5 -1.5   1.012%   0.048%   6.898%   2.639%   0.088%  17.373%   1.663%   6.499%   0.834%   5.209%
   56    5.2  1.5 -1.5   3.724%   0.086%  16.786%   6.088%   0.061%   0.098%   0.158%   2.600%   2.159%  12.865%
   57    6.2  1.5 -1.5   0.744%  22.387%   0.195%   0.282%   2.834%   0.026%   8.948%   1.681%   0.492%   0.281%
   58    7.2  1.5 -1.5   0.494%   9.221%   1.324%   3.490%   4.573%   0.019%   5.336%   1.396%   5.238%   0.859%
   59    8.2  1.5 -1.5   0.293%   5.450%   1.764%   4.843%   9.005%   0.046%  12.270%   3.269%   5.260%   0.890%
   60    9.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.002%   0.000%

   Nr   State  S   Sz      31       32       33       34       35       36       37       38       39       40

    1    1.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.001%   0.060%   0.043%   0.000%   0.000%   0.000%
    2    2.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.062%   0.003%   0.034%   0.006%   0.000%   0.000%
    3    3.2  0.5  0.5   0.000%   0.000%   0.001%   0.000%   0.019%   0.013%   0.064%   0.009%   0.000%   0.000%
    4    4.2  0.5  0.5   6.503%   2.278%   0.008%   0.005%   6.481%   0.660%   0.488%   2.940%   1.303%   0.753%
    5    5.2  0.5  0.5   1.391%  18.856%   0.041%   0.005%   2.222%   3.276%   5.459%   0.229%   0.532%   4.589%
    6    6.2  0.5  0.5  19.309%   2.995%   0.007%   0.011%   2.277%   0.429%   0.311%   8.043%   3.925%   1.035%
    7    7.2  0.5  0.5   0.190%  17.897%   0.010%   0.003%   1.234%   9.158%   0.770%   0.135%   0.044%   4.728%
    8    8.2  0.5  0.5   0.298%   0.013%   0.000%   0.002%   0.898%   0.454%   0.349%   8.307%   0.012%   0.004%
    9    9.2  0.5  0.5   0.000%   0.000%  10.321%   2.618%   1.144%   0.127%   7.457%   0.555%   0.000%   0.000%
   10   10.2  0.5  0.5   0.000%   0.001%   7.317%   4.768%   5.409%   0.216%   3.707%   0.637%   0.000%   0.000%
   11   11.2  0.5  0.5   0.000%   0.001%   6.687%   5.070%   0.983%   6.380%   2.410%   0.451%   0.000%   0.000%
   12   12.2  0.5  0.5   0.000%   0.000%   0.496%   6.092%   0.002%   0.001%   0.000%   0.003%   0.000%   0.000%
   13    1.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.060%   0.001%   0.000%   0.043%   0.000%   0.000%
   14    2.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.003%   0.062%   0.006%   0.034%   0.000%   0.000%
   15    3.2  0.5 -0.5   0.000%   0.000%   0.000%   0.001%   0.013%   0.019%   0.009%   0.064%   0.000%   0.000%
   16    4.2  0.5 -0.5   2.278%   6.503%   0.005%   0.008%   0.660%   6.481%   2.940%   0.488%   0.753%   1.303%
   17    5.2  0.5 -0.5  18.856%   1.391%   0.005%   0.041%   3.276%   2.222%   0.229%   5.459%   4.589%   0.532%
   18    6.2  0.5 -0.5   2.995%  19.309%   0.011%   0.007%   0.429%   2.277%   8.043%   0.311%   1.035%   3.925%
   19    7.2  0.5 -0.5  17.897%   0.190%   0.003%   0.010%   9.158%   1.234%   0.135%   0.770%   4.728%   0.044%
   20    8.2  0.5 -0.5   0.013%   0.298%   0.002%   0.000%   0.454%   0.898%   8.307%   0.349%   0.004%   0.012%
   21    9.2  0.5 -0.5   0.000%   0.000%   2.618%  10.321%   0.127%   1.144%   0.555%   7.457%   0.000%   0.000%
   22   10.2  0.5 -0.5   0.001%   0.000%   4.768%   7.317%   0.216%   5.409%   0.637%   3.707%   0.000%   0.000%
   23   11.2  0.5 -0.5   0.001%   0.000%   5.070%   6.687%   6.380%   0.983%   0.451%   2.410%   0.000%   0.000%
   24   12.2  0.5 -0.5   0.000%   0.000%   6.092%   0.496%   0.001%   0.002%   0.003%   0.000%   0.000%   0.000%
   25    1.2  1.5  1.5   0.080%   0.006%   0.861%  10.618%   0.583%   0.486%   0.051%   0.116%   2.193%   0.045%
   26    2.2  1.5  1.5   0.011%   0.112%   0.023%   0.180%   0.161%   0.079%   2.199%   0.095%   0.036%   7.348%
   27    3.2  1.5  1.5   0.080%   0.008%   0.868%  10.706%   0.558%   0.401%   0.008%   0.195%   2.005%   0.068%
   28    4.2  1.5  1.5   0.138%   0.007%   0.047%   0.520%   3.651%   2.661%   0.025%   0.670%   2.141%   0.010%
   29    5.2  1.5  1.5   0.022%   0.002%   0.120%   0.474%   3.619%   2.936%   0.066%   0.645%   2.569%   0.012%
   30    6.2  1.5  1.5   0.001%   0.002%   1.320%   0.178%   3.138%   3.693%   0.710%   0.064%   0.045%   0.001%
   31    7.2  1.5  1.5   0.601%  11.847%   0.283%   0.023%   0.174%   0.251%   6.866%   0.271%   0.092%  19.160%
   32    8.2  1.5  1.5   0.152%   2.999%   1.026%   0.083%   3.125%   4.550%   0.222%   0.008%   0.031%   6.496%
   33    9.2  1.5  1.5   0.000%   0.001%   0.006%   0.001%   0.629%   0.920%  14.601%   0.570%   0.000%   0.001%
   34    1.2  1.5  0.5   0.005%   0.096%   4.227%   0.181%   0.207%   0.225%   1.281%   0.048%   0.023%   5.310%
   35    2.2  1.5  0.5   0.002%   0.002%   1.187%  14.751%   0.096%   0.107%   0.017%   0.010%   0.009%   0.091%
   36    3.2  1.5  0.5   0.007%   0.141%   3.466%   0.622%   0.646%   0.962%   0.432%   0.017%   0.026%   5.666%
   37    4.2  1.5  0.5   0.026%   0.511%   1.116%   0.091%   0.256%   0.351%   6.679%   0.232%   0.006%   0.693%
   38    5.2  1.5  0.5   0.004%   0.002%   1.328%   0.105%   0.354%   0.441%   5.515%   0.530%   0.061%   0.947%
   39    6.2  1.5  0.5   0.148%   0.008%   0.021%   0.006%   0.438%   0.368%   0.513%   6.012%   2.342%   0.046%
   40    7.2  1.5  0.5   1.852%   0.092%   0.109%   1.331%   4.213%   2.891%   0.015%   0.419%   6.594%   0.032%
   41    8.2  1.5  0.5  10.760%   0.544%   0.048%   0.589%   0.158%   0.109%   0.264%   6.684%  18.882%   0.090%
   42    9.2  1.5  0.5   0.000%   0.000%   0.002%   0.019%   8.923%   6.127%   0.062%   1.484%   0.000%   0.000%
   43    1.2  1.5 -0.5   0.096%   0.005%   0.181%   4.227%   0.225%   0.207%   0.048%   1.281%   5.310%   0.023%
   44    2.2  1.5 -0.5   0.002%   0.002%  14.751%   1.187%   0.107%   0.096%   0.010%   0.017%   0.091%   0.009%
   45    3.2  1.5 -0.5   0.141%   0.007%   0.622%   3.466%   0.962%   0.646%   0.017%   0.432%   5.666%   0.026%
   46    4.2  1.5 -0.5   0.511%   0.026%   0.091%   1.116%   0.351%   0.256%   0.232%   6.679%   0.693%   0.006%
   47    5.2  1.5 -0.5   0.002%   0.004%   0.105%   1.328%   0.441%   0.354%   0.530%   5.515%   0.947%   0.061%
   48    6.2  1.5 -0.5   0.008%   0.148%   0.006%   0.021%   0.368%   0.438%   6.012%   0.513%   0.046%   2.342%
   49    7.2  1.5 -0.5   0.092%   1.852%   1.331%   0.109%   2.891%   4.213%   0.419%   0.015%   0.032%   6.594%
   50    8.2  1.5 -0.5   0.544%  10.760%   0.589%   0.048%   0.109%   0.158%   6.684%   0.264%   0.090%  18.882%
   51    9.2  1.5 -0.5   0.000%   0.000%   0.019%   0.002%   6.127%   8.923%   1.484%   0.062%   0.000%   0.000%
   52    1.2  1.5 -1.5   0.006%   0.080%  10.618%   0.861%   0.486%   0.583%   0.116%   0.051%   0.045%   2.193%
   53    2.2  1.5 -1.5   0.112%   0.011%   0.180%   0.023%   0.079%   0.161%   0.095%   2.199%   7.348%   0.036%
   54    3.2  1.5 -1.5   0.008%   0.080%  10.706%   0.868%   0.401%   0.558%   0.195%   0.008%   0.068%   2.005%
   55    4.2  1.5 -1.5   0.007%   0.138%   0.520%   0.047%   2.661%   3.651%   0.670%   0.025%   0.010%   2.141%
   56    5.2  1.5 -1.5   0.002%   0.022%   0.474%   0.120%   2.936%   3.619%   0.645%   0.066%   0.012%   2.569%
   57    6.2  1.5 -1.5   0.002%   0.001%   0.178%   1.320%   3.693%   3.138%   0.064%   0.710%   0.001%   0.045%
   58    7.2  1.5 -1.5  11.847%   0.601%   0.023%   0.283%   0.251%   0.174%   0.271%   6.866%  19.160%   0.092%
   59    8.2  1.5 -1.5   2.999%   0.152%   0.083%   1.026%   4.550%   3.125%   0.008%   0.222%   6.496%   0.031%
   60    9.2  1.5 -1.5   0.001%   0.000%   0.001%   0.006%   0.920%   0.629%   0.570%  14.601%   0.001%   0.000%

   Nr   State  S   Sz      41       42       43       44       45       46       47       48       49       50

    1    1.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.004%   0.000%   0.005%   0.000%   0.000%   0.032%
    2    2.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.003%   0.001%   0.000%   0.006%   0.023%   0.009%
    3    3.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.006%   0.001%   0.002%   0.001%   0.020%   0.012%
    4    4.2  0.5  0.5   0.233%   5.406%   0.189%   1.716%   0.036%   1.138%   0.885%   2.122%   0.003%   0.001%
    5    5.2  0.5  0.5   2.935%   0.920%   1.925%   0.736%   0.658%   0.125%   0.570%   0.751%   0.001%   0.000%
    6    6.2  0.5  0.5   0.382%   1.284%   0.865%   4.123%   0.036%   1.198%   0.340%   0.555%   0.001%   0.001%
    7    7.2  0.5  0.5   5.252%   0.507%   0.840%   0.136%   0.095%   0.106%   1.926%   0.135%   0.000%   0.001%
    8    8.2  0.5  0.5   0.125%   0.471%   0.313%   6.598%   0.098%   5.199%   0.551%   0.565%   0.001%   0.001%
    9    9.2  0.5  0.5   0.151%   0.004%   1.017%   0.031%  24.117%   0.985%   0.447%   4.041%   1.111%   0.932%
   10   10.2  0.5  0.5   0.176%   0.212%   0.647%   0.035%   9.968%   1.312%   0.345%  17.726%   1.958%   0.714%
   11   11.2  0.5  0.5   0.083%   0.452%   0.401%   0.051%   5.298%   1.351%  21.970%   0.673%   0.543%   2.378%
   12   12.2  0.5  0.5   0.002%   0.005%   0.000%   0.005%   0.000%   0.017%   0.005%   0.005%   6.788%   3.366%
   13    1.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.004%   0.000%   0.005%   0.032%   0.000%
   14    2.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.001%   0.003%   0.006%   0.000%   0.009%   0.023%
   15    3.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.001%   0.006%   0.001%   0.002%   0.012%   0.020%
   16    4.2  0.5 -0.5   5.406%   0.233%   1.716%   0.189%   1.138%   0.036%   2.122%   0.885%   0.001%   0.003%
   17    5.2  0.5 -0.5   0.920%   2.935%   0.736%   1.925%   0.125%   0.658%   0.751%   0.570%   0.000%   0.001%
   18    6.2  0.5 -0.5   1.284%   0.382%   4.123%   0.865%   1.198%   0.036%   0.555%   0.340%   0.001%   0.001%
   19    7.2  0.5 -0.5   0.507%   5.252%   0.136%   0.840%   0.106%   0.095%   0.135%   1.926%   0.001%   0.000%
   20    8.2  0.5 -0.5   0.471%   0.125%   6.598%   0.313%   5.199%   0.098%   0.565%   0.551%   0.001%   0.001%
   21    9.2  0.5 -0.5   0.004%   0.151%   0.031%   1.017%   0.985%  24.117%   4.041%   0.447%   0.932%   1.111%
   22   10.2  0.5 -0.5   0.212%   0.176%   0.035%   0.647%   1.312%   9.968%  17.726%   0.345%   0.714%   1.958%
   23   11.2  0.5 -0.5   0.452%   0.083%   0.051%   0.401%   1.351%   5.298%   0.673%  21.970%   2.378%   0.543%
   24   12.2  0.5 -0.5   0.005%   0.002%   0.005%   0.000%   0.017%   0.000%   0.005%   0.005%   3.366%   6.788%
   25    1.2  1.5  1.5   0.643%   1.706%   0.249%   7.122%   0.016%   0.298%   0.018%   0.027%   1.084%   0.539%
   26    2.2  1.5  1.5   0.023%   0.074%   1.425%   0.027%   0.309%   0.024%   0.033%   0.026%   0.020%   0.008%
   27    3.2  1.5  1.5   0.088%   0.203%   0.322%   9.226%   0.015%   0.443%   0.041%   0.037%   0.966%   0.480%
   28    4.2  1.5  1.5   1.412%   3.675%   0.557%  12.617%   0.080%   4.191%   4.939%   4.294%   2.024%   1.127%
   29    5.2  1.5  1.5   3.768%   7.258%   0.217%   6.211%   0.035%   0.529%   6.703%   5.822%   1.860%   1.761%
   30    6.2  1.5  1.5   4.827%   3.023%   0.256%   0.061%   0.472%   0.029%   2.591%   3.353%   5.576%   9.516%
   31    7.2  1.5  1.5   0.677%   0.250%   7.494%   0.332%   5.088%   0.096%   0.133%   0.145%   1.318%   2.655%
   32    8.2  1.5  1.5   4.935%   1.778%   1.166%   0.049%   0.269%   0.004%   2.800%   3.088%   3.785%   7.630%
   33    9.2  1.5  1.5   0.001%   0.000%   0.020%   0.001%   0.011%   0.000%   0.002%   0.002%   0.000%   0.001%
   34    1.2  1.5  0.5   2.389%   1.617%   0.543%   0.042%   0.029%   0.003%   0.152%   0.123%   0.073%   0.400%
   35    2.2  1.5  0.5   3.570%   8.824%   0.027%   0.383%   0.005%   0.088%   0.050%   0.086%   1.541%   0.677%
   36    3.2  1.5  0.5   1.917%   0.420%   1.820%   0.063%   0.103%   0.004%   0.079%   0.087%   0.195%   0.286%
   37    4.2  1.5  0.5   7.631%   2.790%   0.380%   0.008%   8.415%   0.124%   0.159%   0.205%   3.983%   8.042%
   38    5.2  1.5  0.5   7.183%   2.270%   2.334%   0.738%   5.607%   0.573%   0.839%   0.987%   3.792%   7.589%
   39    6.2  1.5  0.5   0.176%   1.022%   1.109%  17.356%   0.548%  14.527%   1.231%   1.029%   0.059%   0.155%
   40    7.2  1.5  0.5   1.583%   4.404%   0.046%   1.090%   0.002%   0.141%   3.682%   3.344%   7.483%   3.710%
   41    8.2  1.5  0.5   0.336%   0.913%   0.300%   6.781%   0.115%   6.049%   0.140%   0.128%   2.517%   1.248%
   42    9.2  1.5  0.5   0.004%   0.010%   0.000%   0.000%   0.000%   0.008%   0.000%   0.000%   0.003%   0.001%
   43    1.2  1.5 -0.5   1.617%   2.389%   0.042%   0.543%   0.003%   0.029%   0.123%   0.152%   0.400%   0.073%
   44    2.2  1.5 -0.5   8.824%   3.570%   0.383%   0.027%   0.088%   0.005%   0.086%   0.050%   0.677%   1.541%
   45    3.2  1.5 -0.5   0.420%   1.917%   0.063%   1.820%   0.004%   0.103%   0.087%   0.079%   0.286%   0.195%
   46    4.2  1.5 -0.5   2.790%   7.631%   0.008%   0.380%   0.124%   8.415%   0.205%   0.159%   8.042%   3.983%
   47    5.2  1.5 -0.5   2.270%   7.183%   0.738%   2.334%   0.573%   5.607%   0.987%   0.839%   7.589%   3.792%
   48    6.2  1.5 -0.5   1.022%   0.176%  17.356%   1.109%  14.527%   0.548%   1.029%   1.231%   0.155%   0.059%
   49    7.2  1.5 -0.5   4.404%   1.583%   1.090%   0.046%   0.141%   0.002%   3.344%   3.682%   3.710%   7.483%
   50    8.2  1.5 -0.5   0.913%   0.336%   6.781%   0.300%   6.049%   0.115%   0.128%   0.140%   1.248%   2.517%
   51    9.2  1.5 -0.5   0.010%   0.004%   0.000%   0.000%   0.008%   0.000%   0.000%   0.000%   0.001%   0.003%
   52    1.2  1.5 -1.5   1.706%   0.643%   7.122%   0.249%   0.298%   0.016%   0.027%   0.018%   0.539%   1.084%
   53    2.2  1.5 -1.5   0.074%   0.023%   0.027%   1.425%   0.024%   0.309%   0.026%   0.033%   0.008%   0.020%
   54    3.2  1.5 -1.5   0.203%   0.088%   9.226%   0.322%   0.443%   0.015%   0.037%   0.041%   0.480%   0.966%
   55    4.2  1.5 -1.5   3.675%   1.412%  12.617%   0.557%   4.191%   0.080%   4.294%   4.939%   1.127%   2.024%
   56    5.2  1.5 -1.5   7.258%   3.768%   6.211%   0.217%   0.529%   0.035%   5.822%   6.703%   1.761%   1.860%
   57    6.2  1.5 -1.5   3.023%   4.827%   0.061%   0.256%   0.029%   0.472%   3.353%   2.591%   9.516%   5.576%
   58    7.2  1.5 -1.5   0.250%   0.677%   0.332%   7.494%   0.096%   5.088%   0.145%   0.133%   2.655%   1.318%
   59    8.2  1.5 -1.5   1.778%   4.935%   0.049%   1.166%   0.004%   0.269%   3.088%   2.800%   7.630%   3.785%
   60    9.2  1.5 -1.5   0.000%   0.001%   0.001%   0.020%   0.000%   0.011%   0.002%   0.002%   0.001%   0.000%

   Nr   State  S   Sz      51       52       53       54       55       56       57       58       59       60

    1    1.2  0.5  0.5   0.002%   0.000%   0.003%   0.001%   0.000%   0.034%   0.000%   0.000%   0.000%   0.000%
    2    2.2  0.5  0.5   0.002%   0.000%   0.001%   0.003%   0.021%   0.013%   0.000%   0.000%   0.000%   0.000%
    3    3.2  0.5  0.5   0.004%   0.000%   0.002%   0.000%   0.022%   0.012%   0.000%   0.000%   0.000%   0.000%
    4    4.2  0.5  0.5   0.411%   4.983%   6.012%   4.842%   0.001%   0.005%   2.627%   0.295%   6.057%   0.785%
    5    5.2  0.5  0.5   6.826%   1.124%   1.502%   6.585%   0.005%   0.010%   0.198%   4.064%   2.261%   3.130%
    6    6.2  0.5  0.5   1.353%  10.559%   2.406%   1.797%   0.004%   0.002%   6.769%   0.528%   1.954%   0.433%
    7    7.2  0.5  0.5   0.924%   0.301%   6.704%   8.065%   0.003%   0.001%   0.022%   0.898%   1.005%   7.701%
    8    8.2  0.5  0.5   0.079%  13.967%   1.880%   0.490%   0.001%   0.000%   7.821%   1.007%   0.672%   0.372%
    9    9.2  0.5  0.5   4.488%   0.071%   0.089%   0.754%   3.030%   3.480%   1.716%   9.944%   1.887%   0.357%
   10   10.2  0.5  0.5   1.974%   0.085%   0.510%   2.435%   4.078%   2.692%   0.702%   5.015%   7.649%   0.491%
   11   11.2  0.5  0.5   0.901%   0.243%   3.555%   0.151%   1.620%   5.250%   0.559%   2.863%   1.207%   9.211%
   12   12.2  0.5  0.5   0.000%   0.022%   0.016%   0.003%  43.515%  17.151%   0.000%   0.000%   0.000%   0.000%
   13    1.2  0.5 -0.5   0.000%   0.002%   0.001%   0.003%   0.034%   0.000%   0.000%   0.000%   0.000%   0.000%
   14    2.2  0.5 -0.5   0.000%   0.002%   0.003%   0.001%   0.013%   0.021%   0.000%   0.000%   0.000%   0.000%
   15    3.2  0.5 -0.5   0.000%   0.004%   0.000%   0.002%   0.012%   0.022%   0.000%   0.000%   0.000%   0.000%
   16    4.2  0.5 -0.5   4.983%   0.411%   4.842%   6.012%   0.005%   0.001%   0.295%   2.627%   0.785%   6.057%
   17    5.2  0.5 -0.5   1.124%   6.826%   6.585%   1.502%   0.010%   0.005%   4.064%   0.198%   3.130%   2.261%
   18    6.2  0.5 -0.5  10.559%   1.353%   1.797%   2.406%   0.002%   0.004%   0.528%   6.769%   0.433%   1.954%
   19    7.2  0.5 -0.5   0.301%   0.924%   8.065%   6.704%   0.001%   0.003%   0.898%   0.022%   7.701%   1.005%
   20    8.2  0.5 -0.5  13.967%   0.079%   0.490%   1.880%   0.000%   0.001%   1.007%   7.821%   0.372%   0.672%
   21    9.2  0.5 -0.5   0.071%   4.488%   0.754%   0.089%   3.480%   3.030%   9.944%   1.716%   0.357%   1.887%
   22   10.2  0.5 -0.5   0.085%   1.974%   2.435%   0.510%   2.692%   4.078%   5.015%   0.702%   0.491%   7.649%
   23   11.2  0.5 -0.5   0.243%   0.901%   0.151%   3.555%   5.250%   1.620%   2.863%   0.559%   9.211%   1.207%
   24   12.2  0.5 -0.5   0.022%   0.000%   0.003%   0.016%  17.151%  43.515%   0.000%   0.000%   0.000%   0.000%
   25    1.2  1.5  1.5   0.029%   0.098%   0.752%   0.091%   1.191%   0.470%   0.218%   0.242%   2.284%   2.095%
   26    2.2  1.5  1.5   2.597%   0.009%   0.027%   0.291%   0.022%   0.007%   1.430%  11.627%   0.684%   0.297%
   27    3.2  1.5  1.5   0.011%   0.087%   0.744%   0.140%   1.247%   0.492%   0.369%   0.018%   2.442%   1.947%
   28    4.2  1.5  1.5   0.000%   0.003%   0.000%   0.000%   0.540%   0.232%   0.114%   0.013%   0.883%   0.710%
   29    5.2  1.5  1.5   0.000%   0.000%   0.001%   0.000%   0.427%   0.341%   0.083%   0.020%   0.850%   0.766%
   30    6.2  1.5  1.5   0.001%   0.000%   0.000%   0.003%   0.823%   1.646%   0.021%   0.090%   0.768%   0.802%
   31    7.2  1.5  1.5   0.022%   0.000%   0.000%   0.000%   0.177%   0.447%   0.159%   1.284%   0.050%   0.065%
   32    8.2  1.5  1.5   0.001%   0.000%   0.003%   0.014%   0.520%   1.318%   0.011%   0.090%   0.632%   0.833%
   33    9.2  1.5  1.5  42.149%   0.224%   0.732%   3.805%   0.001%   0.003%   2.361%  19.089%   0.648%   0.863%
   34    1.2  1.5  0.5   1.571%   0.008%   0.065%   0.570%   0.077%   0.449%   0.802%   6.782%   1.763%   1.741%
   35    2.2  1.5  0.5   0.023%   0.018%   0.270%   0.015%   1.494%   0.538%   0.130%   0.099%   0.697%   0.867%
   36    3.2  1.5  0.5   0.292%   0.003%   0.275%   1.570%   0.210%   0.367%   0.264%   1.935%   3.841%   5.211%
   37    4.2  1.5  0.5   0.004%   0.000%   0.000%   0.001%   0.491%   1.241%   0.162%   1.377%   0.045%   0.056%
   38    5.2  1.5  0.5   0.013%   0.000%   0.000%   0.001%   0.481%   1.248%   0.292%   1.177%   0.060%   0.067%
   39    6.2  1.5  0.5   0.000%   0.000%   0.001%   0.000%   0.020%   0.018%   1.307%   0.298%   0.065%   0.061%
   40    7.2  1.5  0.5   0.000%   0.001%   0.009%   0.002%   1.333%   0.525%   0.102%   0.013%   0.830%   0.630%
   41    8.2  1.5  0.5   0.000%   0.014%   0.001%   0.000%   0.462%   0.182%   1.305%   0.161%   0.057%   0.044%
   42    9.2  1.5  0.5   0.016%   4.483%  36.331%   6.481%   0.008%   0.003%   1.365%   0.167%  12.028%   9.143%
   43    1.2  1.5 -0.5   0.008%   1.571%   0.570%   0.065%   0.449%   0.077%   6.782%   0.802%   1.741%   1.763%
   44    2.2  1.5 -0.5   0.018%   0.023%   0.015%   0.270%   0.538%   1.494%   0.099%   0.130%   0.867%   0.697%
   45    3.2  1.5 -0.5   0.003%   0.292%   1.570%   0.275%   0.367%   0.210%   1.935%   0.264%   5.211%   3.841%
   46    4.2  1.5 -0.5   0.000%   0.004%   0.001%   0.000%   1.241%   0.491%   1.377%   0.162%   0.056%   0.045%
   47    5.2  1.5 -0.5   0.000%   0.013%   0.001%   0.000%   1.248%   0.481%   1.177%   0.292%   0.067%   0.060%
   48    6.2  1.5 -0.5   0.000%   0.000%   0.000%   0.001%   0.018%   0.020%   0.298%   1.307%   0.061%   0.065%
   49    7.2  1.5 -0.5   0.001%   0.000%   0.002%   0.009%   0.525%   1.333%   0.013%   0.102%   0.630%   0.830%
   50    8.2  1.5 -0.5   0.014%   0.000%   0.000%   0.001%   0.182%   0.462%   0.161%   1.305%   0.044%   0.057%
   51    9.2  1.5 -0.5   4.483%   0.016%   6.481%  36.331%   0.003%   0.008%   0.167%   1.365%   9.143%  12.028%
   52    1.2  1.5 -1.5   0.098%   0.029%   0.091%   0.752%   0.470%   1.191%   0.242%   0.218%   2.095%   2.284%
   53    2.2  1.5 -1.5   0.009%   2.597%   0.291%   0.027%   0.007%   0.022%  11.627%   1.430%   0.297%   0.684%
   54    3.2  1.5 -1.5   0.087%   0.011%   0.140%   0.744%   0.492%   1.247%   0.018%   0.369%   1.947%   2.442%
   55    4.2  1.5 -1.5   0.003%   0.000%   0.000%   0.000%   0.232%   0.540%   0.013%   0.114%   0.710%   0.883%
   56    5.2  1.5 -1.5   0.000%   0.000%   0.000%   0.001%   0.341%   0.427%   0.020%   0.083%   0.766%   0.850%
   57    6.2  1.5 -1.5   0.000%   0.001%   0.003%   0.000%   1.646%   0.823%   0.090%   0.021%   0.802%   0.768%
   58    7.2  1.5 -1.5   0.000%   0.022%   0.000%   0.000%   0.447%   0.177%   1.284%   0.159%   0.065%   0.050%
   59    8.2  1.5 -1.5   0.000%   0.001%   0.014%   0.003%   1.318%   0.520%   0.090%   0.011%   0.833%   0.632%
   60    9.2  1.5 -1.5   0.224%  42.149%   3.805%   0.732%   0.003%   0.001%  19.089%   2.361%   0.863%   0.648%


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

              2       7     1959.27       700     1000      520     2100     2140     5203     5303   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *    304156.85 282544.63   6611.68  14993.90      5.16      0.16      1.06
 REAL TIME  *    306571.36 SEC
 DISK USED  *         1.95 GB (local),       15.66 GB (total)
 SF USED    *        12.90 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/USERDEF energy=   -295.165382900318

              CI              CI           MULTI         RHF-SCF
   -295.09300585   -295.09421356   -294.28427391   -294.74654372
 **********************************************************************************************************************************
 Molpro calculation terminated with 1 warning(s)
