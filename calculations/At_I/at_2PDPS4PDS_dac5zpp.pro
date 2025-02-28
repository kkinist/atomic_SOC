
 Working directory              : /wrk/irikura/molpro.EazFMnpa72/
 Global scratch directory       : /wrk/irikura/molpro.EazFMnpa72/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.EazFMnpa72/

 id        : nistki

 Nodes            nprocs
 pn112695.nist.gov   16
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1040), CPU time= 0.02 sec
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
 spdfghi,at,aug-cc-pwCV5Z-PP;C; spdf,1,even,nprim=1,ratio=3.0;
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
 Commands initialized (846), CPU time= 0.02 sec, 717 directives.
 Default parameters read. Elapsed time= 0.20 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2023.2 linked Fri Sep 22 03:27:09 2023


 **********************************************************************************************************************************
 LABEL *   At SO-CI                                                                                                                                                      
  (32 PROC) 64 bit mpp version                                                           DATE: 09-Dec-24          TIME: 14:41:09  
 **********************************************************************************************************************************

 SHA1:             3c61bfe44d37c8635c785372c339f5cbdd4e4b59
 **********************************************************************************************************************************

 Memory per process:      2000 MW
 Total memory per node:  32000 MW

 GA preallocation disabled
 GA check disabled

 Variable memory set to 2000.0 MW


 ZSYMEL=XYZ

 SETTING BASIS          =    USERDEF


 Recomputing integrals since basis changed


 Using spherical harmonics

 Library entry At   ECP ECP60MDF                 selected for group  1
 Library entry AT     S AUG-CC-PWCV5Z-PP     selected for orbital group  1
 Even tempered At S diffuse               selected for group 1    nprim= 1    centre=  0.009    ratio= 3.000    dratio= 1.000
 Library entry AT     P AUG-CC-PWCV5Z-PP     selected for orbital group  1
 Even tempered At P diffuse               selected for group 1    nprim= 1    centre=  0.007    ratio= 3.000    dratio= 1.000
 Library entry AT     D AUG-CC-PWCV5Z-PP     selected for orbital group  1
 Even tempered At D diffuse               selected for group 1    nprim= 1    centre=  0.017    ratio= 3.000    dratio= 1.000
 Library entry AT     F AUG-CC-PWCV5Z-PP     selected for orbital group  1
 Even tempered At F diffuse               selected for group 1    nprim= 1    centre=  0.033    ratio= 3.000    dratio= 1.000
 Library entry AT     G AUG-CC-PWCV5Z-PP     selected for orbital group  1
 Library entry AT     H AUG-CC-PWCV5Z-PP     selected for orbital group  1
 Library entry AT     I AUG-CC-PWCV5Z-PP     selected for orbital group  1


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
 NUMBER OF PRIMITIVE AOS:         479
 NUMBER OF SYMMETRY AOS:          343
 NUMBER OF CONTRACTIONS:          281   (  135Ag  +  146Au  )
 NUMBER OF INNER CORE ORBITALS:     0   (    0Ag  +    0Au  )
 NUMBER OF OUTER CORE ORBITALS:     9   (    6Ag  +    3Au  )
 NUMBER OF VALENCE ORBITALS:        4   (    1Ag  +    3Au  )


 LX: Ag           LY: Ag           LZ: Ag 


 NUCLEAR REPULSION ENERGY    0.00000000

 EXTRA SYMMETRY OF AOS IN SYMMETRY 1:   1 1 1 1 1 1 1 1 1 1   1 1 1 2 3 4 5 6 2 3   4 5 6 2 3 4 5 6 2 3   4 5 6 2 3 4 5 6 2 3
                                        4 5 6 2 3 4 5 6 2 3   4 5 6 2 3 4 5 6 2 3   4 5 6 2 3 4 5 6 7 8   9101112131415 7 8 9
                                       101112131415 7 8 910  1112131415 7 8 91011  12131415 7 8 9101112  131415 7 8 910111213
                                       14151617181920212223  2425262728
 EXTRA SYMMETRY OF AOS IN SYMMETRY 2:   1 2 3 1 2 3 1 2 3 1   2 3 1 2 3 1 2 3 1 2   3 1 2 3 1 2 3 1 2 3   1 2 3 1 2 3 1 2 3 4
                                        5 6 7 8 910 4 5 6 7   8 910 4 5 6 7 8 910   4 5 6 7 8 910 4 5 6   7 8 910 4 5 6 7 8 9
                                       10 4 5 6 7 8 910 4 5   6 7 8 910 4 5 6 7 8   9101112131415161718  19202111121314151617
                                       18192021111213141516  17181920211112131415  161718192021


 Eigenvalues of metric

         1 0.745E-05 0.258E-04 0.258E-04 0.258E-04 0.258E-04 0.258E-04 0.311E-04 0.199E-03
         2 0.156E-05 0.156E-05 0.156E-05 0.212E-03 0.212E-03 0.212E-03 0.162E-02 0.162E-02


 Contracted 2-electron integrals neglected if value below      1.0D-12
 AO integral compression algorithm  1   Integral accuracy      1.0D-12

     705.954 MB (compressed) written to integral file ( 13.6%)

     Node minimum: 27.787 MB, node maximum: 56.099 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:   24679576.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   2  SEGMENT LENGTH:   15976936      RECORD LENGTH: 524288

 Memory used in sort:      16.53 MW

 SORT1 READ   646821870. AND WROTE     4259432. INTEGRALS IN     14 RECORDS. CPU TIME:     3.09 SEC, REAL TIME:     3.18 SEC
 SORT2 READ    68066133. AND WROTE   395255076. INTEGRALS IN   3168 RECORDS. CPU TIME:     0.63 SEC, REAL TIME:     0.68 SEC

 Node minimum:    24675847.  Node maximum:    24720811. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      19       30.69       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *        10.52     10.16
 REAL TIME  *        12.09 SEC
 DISK USED  *        31.11 MB (local),        1.89 GB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 Program * Restricted Hartree-Fock

 Orbital guess generated from atomic densities.

 Initial occupancy:   7   6

 NELEC=   26   SYM=1   MS2= 0   THRE=1.0D-08   THRD=3.2D-06   THRG=3.2D-06  HFMA2=F  DIIS_START=2   DIIS_MAX=10   DIIS_INCORE=F

 Level shifts:    0.00 (CLOSED)    0.00 (OPEN)    0.30 (GAP_MIN)

 ITER           ETOT              DE          GRAD        DDIFF     DIIS  NEXP   TIME(IT)  TIME(TOT)  DIAG
   1     -261.41335624    -261.41335624     0.00D+00     0.47D-01     0     0       0.12      0.25    start
   2     -261.43614492      -0.02278868     0.27D-02     0.24D-02     1     0       0.13      0.38    diag
   3     -261.43851524      -0.00237032     0.15D-02     0.64D-03     2     0       0.13      0.51    diag
   4     -261.43904418      -0.00052894     0.29D-03     0.39D-03     3     0       0.12      0.63    diag
   5     -261.43914754      -0.00010336     0.11D-03     0.22D-03     4     0       0.14      0.77    diag
   6     -261.43915801      -0.00001048     0.27D-04     0.78D-04     5     0       0.12      0.89    diag
   7     -261.43915859      -0.00000057     0.56D-05     0.27D-04     6     0       0.13      1.02    diag
   8     -261.43915862      -0.00000003     0.12D-05     0.62D-05     7     0       0.13      1.15    fixocc
   9     -261.43915862      -0.00000000     0.25D-06     0.15D-05     8     0       0.13      1.28    diag
  10     -261.43915862      -0.00000000     0.61D-07     0.25D-06     0     0       0.14      1.42    diag/orth

 Final occupancy:   7   6

 !RHF STATE 1.1 Energy               -261.439158617972
  RHF One-electron energy            -461.393639139865
  RHF Two-electron energy             199.954480521893
  RHF Kinetic energy                   82.729366050137
  RHF Nuclear energy                    0.000000000000
  RHF Virial quotient                  -3.160173600986

 !RHF STATE 1.1 Dipole moment           0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 ELECTRON ORBITALS
 =================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -7.53203     1  1  s    1.00010
    2.1     2.00000    -1.54347     1  1  d2-  0.99919
    3.1     2.00000    -1.54347     1  1  d2+  0.99775
    4.1     2.00000    -1.54347     1  1  d1-  0.99921
    5.1     2.00000    -1.54347     1  1  d0   0.99787
    6.1     2.00000    -1.54347     1  1  d1+  0.99918
    7.1     2.00000    -0.67783     1  1  s   -0.44780    1  4  s    0.26077    1  5  s    0.60824    1  6  s    0.41281
                                    1 11  s   -0.25265
    1.2     2.00000    -4.82203     1  1  pz   1.00062
    2.2     2.00000    -4.82203     1  1  px   1.00062
    3.2     2.00000    -4.82203     1  1  py   1.00062
    4.2     2.00000    -0.11634     1  1  pz  -0.28718    1  4  pz   0.27772    1  5  pz   0.41989    1  6  pz   0.34150
    5.2     2.00000    -0.11634     1  1  px  -0.28717    1  4  px   0.27772    1  5  px   0.41988    1  6  px   0.34149
    6.2     2.00000    -0.11634     1  1  py  -0.28718    1  4  py   0.27772    1  5  py   0.41989    1  6  py   0.34150


 HOMO      6.2    -0.116338 =      -3.1657eV
 LUMO      7.2     0.083876 =       2.2824eV
 LUMO-HOMO         0.200214 =       5.4481eV

 Orbitals saved in record  2100.2


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      19       30.69       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    

              2       4        1.03       700     1000      520     2100   
                                         GEOM     BASIS   MCVARS     RHF  

 PROGRAMS   *        TOTAL   RHF-SCF       INT
 CPU TIMES  *        11.95      1.42     10.16
 REAL TIME  *        13.60 SEC
 DISK USED  *        34.43 MB (local),        1.94 GB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING NDOUB          =        12.00000000                                  
 SETTING NQUAR          =         9.00000000                                  

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of closed-shell orbitals:  10 (    7    3)
 Number of active  orbitals:        6 (    0    6)
 Number of external orbitals:     265 (  128  137)

 State symmetry 1

 Number of active electrons:   5    Spin symmetry=Doublet   Space symmetry=2
 Number of states:            12
 Number of CSFs:             210   (300 determinants, 300 intermediate states)

 State symmetry 2

 Number of active electrons:   5    Spin symmetry=Quartet   Space symmetry=2
 Number of states:             9
 Number of CSFs:              84   (90 determinants, 90 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  
 *** IN SYMMETRY 1 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.165D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.728D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.137D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.502D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.159D-01 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 3 5 6 2 4 1 1 3 5   4 6 2 1 2 3 5 6 4 1   2 5 3 6 412 8 7 911  13101415 1 5 3 4 6 2
                                       12 8 711 913101514 5   3 6 4 2 1 712 811 9  13101514 5 3 6 4 2 1   812 711 913101514 5
                                        3 6 4 2201824192623  22162827172125 812 7   91115141310 1 2 5 4   3 61514 812 711 913
                                       10 1 2 5 4 3 6 2 5 4   3 6 1 1 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.133D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.133D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.647D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.129D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.706D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.681D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.681D-04 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 1 2 3 1 2 3 2 1 1   2 3 6 9 7 4 5 810 1   2 3 6 810 5 4 9 7 1   2 3 6 810 5 4 7 9 6
                                        5 4 810 7 9 1 2 319  14161211201815172113   6 5 4 810 7 9141620  1812111921131517 1 2
                                        3 6 810 5 4 7 91416  111221132018151719 8  10 6 5 4 7 9 2 1 310   8 6 7 9 5 416142113
                                       20181517191112 3 2 1  10 8 6 5 4 7 9 2 3 1   2 3 1 2 3 1

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.04762   0.04762   0.04762   0.04762   0.04762   0.04762   0.04762   0.04762
                                          0.04762   0.04762   0.04762   0.04762
 Weight factors for state symmetry  2:    0.04762   0.04762   0.04762   0.04762   0.04762   0.04762   0.04762   0.04762
                                          0.04762
 
 Number of orbital rotations:  2147  ( 18 closed/active, 1307 closed/virtual, 0 active/active, 822 active/virtual )
 Total number of variables:    6557
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1    8   14    0   -261.01823117    -261.13578343   -0.11755226    0.38010598 0.00049136 0.00000000  0.14E+01      2.84
   2    6   10    0   -261.13319508    -261.13385601   -0.00066092    0.02342939 0.00000274 0.00000000  0.12E+00      5.69
   3    4    8    0   -261.13385665    -261.13385666   -0.00000001    0.00011251 0.00000019 0.00000000  0.33E-03      8.13
   4   16   32    0   -261.13385666    -261.13385666    0.00000000    0.00000004 0.00000001 0.00000000  0.58E-07     11.26

 CONVERGENCE REACHED!  Final gradient:    0.00000007 ( 0.74E-07)
                       Final energy:   -261.13385666
 
 Results for state 1.2 Doublet
 =============================
 !MCSCF STATE 1.2 Doublet Energy              -261.341611522552
 Nuclear energy                                  0.00000000
 Kinetic energy                                 83.22389152
 One electron energy                          -455.89040283
 Two electron energy                           194.54879130
 Virial ratio                                    4.14022340
 
 !MCSCF STATE 1.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.2 Doublet
 =============================
 !MCSCF STATE 2.2 Doublet Energy              -261.341611522354
 Nuclear energy                                  0.00000000
 Kinetic energy                                 83.22389152
 One electron energy                          -455.89040283
 Two electron energy                           194.54879131
 Virial ratio                                    4.14022340
 
 !MCSCF STATE 2.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.2 Doublet
 =============================
 !MCSCF STATE 3.2 Doublet Energy              -261.341611522337
 Nuclear energy                                  0.00000000
 Kinetic energy                                 83.22389151
 One electron energy                          -455.89040282
 Two electron energy                           194.54879130
 Virial ratio                                    4.14022340
 
 !MCSCF STATE 3.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.2 Doublet
 =============================
 !MCSCF STATE 4.2 Doublet Energy              -261.099062510217
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.39574250
 One electron energy                          -449.26094152
 Two electron energy                           188.16187901
 Virial ratio                                    4.16884167
 
 !MCSCF STATE 4.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.2 Doublet
 =============================
 !MCSCF STATE 5.2 Doublet Energy              -261.099062510188
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.39574250
 One electron energy                          -449.26094153
 Two electron energy                           188.16187902
 Virial ratio                                    4.16884167
 
 !MCSCF STATE 5.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.2 Doublet
 =============================
 !MCSCF STATE 6.2 Doublet Energy              -261.099062510153
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.39574250
 One electron energy                          -449.26094153
 Two electron energy                           188.16187902
 Virial ratio                                    4.16884167
 
 !MCSCF STATE 6.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.2 Doublet
 =============================
 !MCSCF STATE 7.2 Doublet Energy              -261.099062510041
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.39574250
 One electron energy                          -449.26094156
 Two electron energy                           188.16187905
 Virial ratio                                    4.16884167
 
 !MCSCF STATE 7.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.2 Doublet
 =============================
 !MCSCF STATE 8.2 Doublet Energy              -261.099062510040
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.39574250
 One electron energy                          -449.26094156
 Two electron energy                           188.16187905
 Virial ratio                                    4.16884167
 
 !MCSCF STATE 8.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 9.2 Doublet
 =============================
 !MCSCF STATE 9.2 Doublet Energy              -261.093857096037
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.39304713
 One electron energy                          -449.25209077
 Two electron energy                           188.15823368
 Virial ratio                                    4.16888216
 
 !MCSCF STATE 9.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 10.2 Doublet
 ==============================
 !MCSCF STATE 10.2 Doublet Energy             -261.093779042947
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.46789909
 One electron energy                          -449.56724086
 Two electron energy                           188.47346182
 Virial ratio                                    4.16600498
 
 !MCSCF STATE 10.2 Doublet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 11.2 Doublet
 ==============================
 !MCSCF STATE 11.2 Doublet Energy             -261.093779042943
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.46789909
 One electron energy                          -449.56724086
 Two electron energy                           188.47346182
 Virial ratio                                    4.16600498
 
 !MCSCF STATE 11.2 Doublet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 12.2 Doublet
 ==============================
 !MCSCF STATE 12.2 Doublet Energy             -261.093779042485
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.46789910
 One electron energy                          -449.56724090
 Two electron energy                           188.47346186
 Virial ratio                                    4.16600498
 
 !MCSCF STATE 12.2 Doublet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.2 Quartet
 =============================
 !MCSCF STATE 1.2 Quartet Energy              -261.105692599113
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.38062325
 One electron energy                          -449.20846206
 Two electron energy                           188.10276946
 Virial ratio                                    4.16950373
 
 !MCSCF STATE 1.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.2 Quartet
 =============================
 !MCSCF STATE 2.2 Quartet Energy              -261.105692599067
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.38062325
 One electron energy                          -449.20846203
 Two electron energy                           188.10276943
 Virial ratio                                    4.16950373
 
 !MCSCF STATE 2.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.2 Quartet
 =============================
 !MCSCF STATE 3.2 Quartet Energy              -261.105692599004
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.38062325
 One electron energy                          -449.20846203
 Two electron energy                           188.10276943
 Virial ratio                                    4.16950373
 
 !MCSCF STATE 3.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.2 Quartet
 =============================
 !MCSCF STATE 4.2 Quartet Energy              -261.100929205935
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.38590444
 One electron energy                          -449.22726625
 Two electron energy                           188.12633705
 Virial ratio                                    4.16924274
 
 !MCSCF STATE 4.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.2 Quartet
 =============================
 !MCSCF STATE 5.2 Quartet Energy              -261.100929205935
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.38590445
 One electron energy                          -449.22726626
 Two electron energy                           188.12633705
 Virial ratio                                    4.16924274
 
 !MCSCF STATE 5.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.2 Quartet
 =============================
 !MCSCF STATE 6.2 Quartet Energy              -261.100929205888
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.38590444
 One electron energy                          -449.22726626
 Two electron energy                           188.12633705
 Virial ratio                                    4.16924274
 
 !MCSCF STATE 6.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.2 Quartet
 =============================
 !MCSCF STATE 7.2 Quartet Energy              -261.100929205869
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.38590445
 One electron energy                          -449.22726629
 Two electron energy                           188.12633708
 Virial ratio                                    4.16924274
 
 !MCSCF STATE 7.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.2 Quartet
 =============================
 !MCSCF STATE 8.2 Quartet Energy              -261.100929205857
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.38590445
 One electron energy                          -449.22726628
 Two electron energy                           188.12633708
 Virial ratio                                    4.16924274
 
 !MCSCF STATE 8.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 9.2 Quartet
 =============================
 !MCSCF STATE 9.2 Quartet Energy              -261.093924610681
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.39219371
 One electron energy                          -449.24862313
 Two electron energy                           188.15469851
 Virial ratio                                    4.16891580
 
 !MCSCF STATE 9.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 ? Warning
 ? Transition properties are only calculated between states of the same symmetry
 ? The problem occurs in mu_properties_expec2

 !MCSCF expec      <1.2 Doublet|LXLX|1.2 Doublet>     1.000000000000
 !MCSCF expec      <2.2 Doublet|LXLX|2.2 Doublet>     0.999999954294
 !MCSCF expec      <3.2 Doublet|LXLX|3.2 Doublet>     0.000000066257
 !MCSCF expec      <4.2 Doublet|LXLX|4.2 Doublet>     0.051246221498
 !MCSCF expec      <5.2 Doublet|LXLX|5.2 Doublet>     1.000000000001
 !MCSCF expec      <6.2 Doublet|LXLX|6.2 Doublet>     0.999999847747
 !MCSCF expec      <7.2 Doublet|LXLX|7.2 Doublet>     3.999999696752
 !MCSCF expec      <8.2 Doublet|LXLX|8.2 Doublet>     3.948762552742
 !MCSCF expec      <9.2 Doublet|LXLX|9.2 Doublet>     0.000000000007
 !MCSCF expec    <10.2 Doublet|LXLX|10.2 Doublet>     0.999999999996
 !MCSCF expec    <11.2 Doublet|LXLX|11.2 Doublet>     0.999999999995
 !MCSCF expec    <12.2 Doublet|LXLX|12.2 Doublet>     0.000000000010
 !MCSCF expec      <1.2 Quartet|LXLX|1.2 Quartet>     0.000000000010
 !MCSCF expec      <2.2 Quartet|LXLX|2.2 Quartet>     0.999999999995
 !MCSCF expec      <3.2 Quartet|LXLX|3.2 Quartet>     0.999999999995
 !MCSCF expec      <4.2 Quartet|LXLX|4.2 Quartet>     0.567827724269
 !MCSCF expec      <5.2 Quartet|LXLX|5.2 Quartet>     0.999998369930
 !MCSCF expec      <6.2 Quartet|LXLX|6.2 Quartet>     0.999999999716
 !MCSCF expec      <7.2 Quartet|LXLX|7.2 Quartet>     3.999999995632
 !MCSCF expec      <8.2 Quartet|LXLX|8.2 Quartet>     3.432276400984
 !MCSCF expec      <9.2 Quartet|LXLX|9.2 Quartet>     0.000000000007
 
 !MCSCF expec      <1.2 Doublet|LYLY|1.2 Doublet>     1.000000000000
 !MCSCF expec      <2.2 Doublet|LYLY|2.2 Doublet>     0.000000045708
 !MCSCF expec      <3.2 Doublet|LYLY|3.2 Doublet>     0.999999933745
 !MCSCF expec      <4.2 Doublet|LYLY|4.2 Doublet>     2.584802167143
 !MCSCF expec      <5.2 Doublet|LYLY|5.2 Doublet>     0.999999999994
 !MCSCF expec      <6.2 Doublet|LYLY|6.2 Doublet>     3.999999870860
 !MCSCF expec      <7.2 Doublet|LYLY|7.2 Doublet>     1.000002403628
 !MCSCF expec      <8.2 Doublet|LYLY|8.2 Doublet>     1.415161241585
 !MCSCF expec      <9.2 Doublet|LYLY|9.2 Doublet>     0.000000000007
 !MCSCF expec    <10.2 Doublet|LYLY|10.2 Doublet>     0.999999998421
 !MCSCF expec    <11.2 Doublet|LYLY|11.2 Doublet>     0.000000000014
 !MCSCF expec    <12.2 Doublet|LYLY|12.2 Doublet>     0.999999999996
 !MCSCF expec      <1.2 Quartet|LYLY|1.2 Quartet>     0.999999999995
 !MCSCF expec      <2.2 Quartet|LYLY|2.2 Quartet>     0.999999999428
 !MCSCF expec      <3.2 Quartet|LYLY|3.2 Quartet>     0.000000000526
 !MCSCF expec      <4.2 Quartet|LYLY|4.2 Quartet>     1.507095288497
 !MCSCF expec      <5.2 Quartet|LYLY|5.2 Quartet>     1.000001906600
 !MCSCF expec      <6.2 Quartet|LYLY|6.2 Quartet>     3.999999999618
 !MCSCF expec      <7.2 Quartet|LYLY|7.2 Quartet>     1.000000000873
 !MCSCF expec      <8.2 Quartet|LYLY|8.2 Quartet>     2.492761393278
 !MCSCF expec      <9.2 Quartet|LYLY|9.2 Quartet>     0.000000000007
 
 !MCSCF expec      <1.2 Doublet|LZLZ|1.2 Doublet>     0.000000000001
 !MCSCF expec      <2.2 Doublet|LZLZ|2.2 Doublet>     1.000000000000
 !MCSCF expec      <3.2 Doublet|LZLZ|3.2 Doublet>     1.000000000000
 !MCSCF expec      <4.2 Doublet|LZLZ|4.2 Doublet>     3.363951611316
 !MCSCF expec      <5.2 Doublet|LZLZ|5.2 Doublet>     3.999999999963
 !MCSCF expec      <6.2 Doublet|LZLZ|6.2 Doublet>     1.000000281351
 !MCSCF expec      <7.2 Doublet|LZLZ|7.2 Doublet>     0.999997899577
 !MCSCF expec      <8.2 Doublet|LZLZ|8.2 Doublet>     0.636076205632
 !MCSCF expec      <9.2 Doublet|LZLZ|9.2 Doublet>     0.000000000007
 !MCSCF expec    <10.2 Doublet|LZLZ|10.2 Doublet>     0.000000001584
 !MCSCF expec    <11.2 Doublet|LZLZ|11.2 Doublet>     0.999999999994
 !MCSCF expec    <12.2 Doublet|LZLZ|12.2 Doublet>     0.999999999996
 !MCSCF expec      <1.2 Quartet|LZLZ|1.2 Quartet>     0.999999999995
 !MCSCF expec      <2.2 Quartet|LZLZ|2.2 Quartet>     0.000000000577
 !MCSCF expec      <3.2 Quartet|LZLZ|3.2 Quartet>     0.999999999479
 !MCSCF expec      <4.2 Quartet|LZLZ|4.2 Quartet>     3.925076987191
 !MCSCF expec      <5.2 Quartet|LZLZ|5.2 Quartet>     3.999999723428
 !MCSCF expec      <6.2 Quartet|LZLZ|6.2 Quartet>     1.000000000623
 !MCSCF expec      <7.2 Quartet|LZLZ|7.2 Quartet>     1.000000003453
 !MCSCF expec      <8.2 Quartet|LZLZ|8.2 Quartet>     0.074962205695
 !MCSCF expec      <9.2 Quartet|LZLZ|9.2 Quartet>     0.000000000007
 
 !MCSCF expec      <1.2 Doublet|L**2|1.2 Doublet>     2.000000000001
 !MCSCF expec      <2.2 Doublet|L**2|2.2 Doublet>     2.000000000001
 !MCSCF expec      <3.2 Doublet|L**2|3.2 Doublet>     2.000000000001
 !MCSCF expec      <4.2 Doublet|L**2|4.2 Doublet>     5.999999999958
 !MCSCF expec      <5.2 Doublet|L**2|5.2 Doublet>     5.999999999958
 !MCSCF expec      <6.2 Doublet|L**2|6.2 Doublet>     5.999999999958
 !MCSCF expec      <7.2 Doublet|L**2|7.2 Doublet>     5.999999999958
 !MCSCF expec      <8.2 Doublet|L**2|8.2 Doublet>     5.999999999958
 !MCSCF expec      <9.2 Doublet|L**2|9.2 Doublet>     0.000000000021
 !MCSCF expec    <10.2 Doublet|L**2|10.2 Doublet>     2.000000000002
 !MCSCF expec    <11.2 Doublet|L**2|11.2 Doublet>     2.000000000002
 !MCSCF expec    <12.2 Doublet|L**2|12.2 Doublet>     2.000000000002
 !MCSCF expec      <1.2 Quartet|L**2|1.2 Quartet>     2.000000000000
 !MCSCF expec      <2.2 Quartet|L**2|2.2 Quartet>     2.000000000000
 !MCSCF expec      <3.2 Quartet|L**2|3.2 Quartet>     2.000000000000
 !MCSCF expec      <4.2 Quartet|L**2|4.2 Quartet>     5.999999999958
 !MCSCF expec      <5.2 Quartet|L**2|5.2 Quartet>     5.999999999958
 !MCSCF expec      <6.2 Quartet|L**2|6.2 Quartet>     5.999999999958
 !MCSCF expec      <7.2 Quartet|L**2|7.2 Quartet>     5.999999999958
 !MCSCF expec      <8.2 Quartet|L**2|8.2 Quartet>     5.999999999958
 !MCSCF expec      <9.2 Quartet|L**2|9.2 Quartet>     0.000000000021
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 4 2 3 5 6 1 1 4 2   3 5 6 1 4 2 3 5 6 1   4 2 5 3 6 9 712 814  15111310 1 4 2 5 3 6
                                        9 712 81415111310 4   2 5 3 6 1 9 7 81214  15111310 4 2 5 3 6 1   9 7 8121415111310 4
                                        2 5 3 6282517212623  24192018272216 9 7 8  121415111310 1 4 2 5   3 6 9 7 81214151113
                                       10 1 4 2 5 3 6 4 2 5   3 6 1 1 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 3 2 2 3 1 2 3 1 1   3 2 4 6 810 7 9 5 1   3 2 4 6 810 9 7 5 1   3 2 4 610 8 9 7 5 4
                                        610 8 9 7 5 1 3 211  19211316141517122018   4 610 8 9 7 5111921  1316141517122018 1 3
                                        2 4 6 810 9 7 51119  211314161517122018 4   6 810 7 9 5 1 3 2 4   6 810 7 9 511192113
                                       14161517122018 1 3 2   4 6 810 7 9 5 1 3 2   1 3 2 1 3 2
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -7.98680     1  1  s    1.00020
    2.1     2.00000    -1.99722     1  1  d1+  1.00149
    3.1     2.00000    -1.99722     1  1  d0   1.00149
    4.1     2.00000    -1.99722     1  1  d2-  1.00149
    5.1     2.00000    -1.99722     1  1  d2+  1.00149
    6.1     2.00000    -1.99722     1  1  d1-  1.00149
    7.1     2.00000    -1.08381     1  1  s   -0.46849    1  4  s    0.26921    1  5  s    0.70813    1  6  s    0.39815
                                    1 11  s   -0.27022
    1.2     2.00000    -5.27647     1  1  px   1.00016
    2.2     2.00000    -5.27647     1  1  pz   1.00016
    3.2     2.00000    -5.27647     1  1  py   1.00016
    4.2     1.38039    -0.41927     1  1  py  -0.32728    1  4  py   0.33239    1  5  py   0.54221    1  6  py   0.30178
    5.2     1.38039    -0.41927     1  1  pz  -0.32728    1  4  pz   0.33239    1  5  pz   0.54221    1  6  pz   0.30178
    6.2     1.38039    -0.41927     1  1  px  -0.32728    1  4  px   0.33239    1  5  px   0.54221    1  6  px   0.30178
    7.2     0.28628     0.00806     1 12  py   0.78585    1 13  py   0.36818
    8.2     0.28627     0.00806     1 12  pz   0.78585    1 13  pz   0.36818
    9.2     0.28627     0.00806     1 12  px   0.78585    1 13  px   0.36818
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 2 (Doublet)
 =======================================

 State:              1               2               3               4               5               6               7
 2a2000         0.98900425      0.00000000      0.00000000     -0.00000000     -0.00000003      0.00000000      0.00000000
 22a000        -0.00000000     -0.00021144      0.98900423     -0.00000000     -0.00000000      0.00000000      0.00000002
 a22000        -0.00000000      0.98900423      0.00021144      0.00000000      0.00000000     -0.00000001      0.00000000
 aa200b        -0.00000000      0.00000000      0.00000000      0.66211778     -0.00001061      0.00024680     -0.00017418
 a2a0b0         0.00000000     -0.00000000     -0.00000000      0.26573585     -0.00000489      0.00013555     -0.00145987
 2aa00b         0.07622305     -0.00000000     -0.00000000      0.00000918      0.57711967     -0.00000038     -0.00000051
 aa2b00        -0.07622302     -0.00000000     -0.00000000      0.00000918      0.57711963     -0.00000038     -0.00000051
 a2a00b        -0.00000000      0.07622305      0.00001630     -0.00021098      0.00000039      0.57711962     -0.00000139
 aa20b0        -0.00000000      0.07622304      0.00001630      0.00021098     -0.00000039     -0.57711960      0.00000139
 2aa0b0        -0.00000000      0.00001630     -0.07622304     -0.00000551      0.00000051      0.00000148      0.57711801
 a2ab00         0.00000000      0.00001630     -0.07622302      0.00000551     -0.00000051     -0.00000148     -0.57711799
 2aab00        -0.00000000     -0.00000000     -0.00000000     -0.39638188      0.00000572     -0.00011124     -0.00128569
 ab2a00         0.01337864      0.00000000      0.00000000     -0.00000464     -0.29211241      0.00000019      0.00000026
 a2ba00        -0.00000000     -0.00000286      0.01337864     -0.00000279      0.00000026      0.00000075      0.29211158
 ba20a0         0.00000000     -0.01337864     -0.00000286     -0.00010679      0.00000020      0.29211240     -0.00000071
 2ab0a0         0.00000000     -0.00000286      0.01337864      0.00000279     -0.00000026     -0.00000075     -0.29211159
 b2a00a         0.00000000     -0.01337863     -0.00000286      0.00010679     -0.00000020     -0.29211241      0.00000071
 2ba00a        -0.01337864      0.00000000      0.00000000     -0.00000464     -0.29211243      0.00000019      0.00000026
 ab200a         0.00000000     -0.00000000     -0.00000000     -0.33186311      0.00000531     -0.00012325      0.00007019
 ba200a         0.00000000     -0.00000000     -0.00000000     -0.33025467      0.00000530     -0.00012355      0.00010399
 a2b0a0         0.00000000      0.00000000      0.00000000     -0.12635208      0.00000235     -0.00006557      0.00073678
 b2a0a0        -0.00000000      0.00000000      0.00000000     -0.13938377      0.00000255     -0.00006998      0.00072309
 2ab00a        -0.06284442      0.00000000     -0.00000000     -0.00000453     -0.28500724      0.00000019      0.00000025
 ba2a00         0.06284438      0.00000000      0.00000000     -0.00000453     -0.28500722      0.00000019      0.00000025
 a2b00a         0.00000000     -0.06284441     -0.00001344      0.00010419     -0.00000019     -0.28500722      0.00000069
 ab20a0         0.00000000     -0.06284441     -0.00001344     -0.00010419      0.00000019      0.28500720     -0.00000069
 2ba0a0        -0.00000000     -0.00001344      0.06284441      0.00000272     -0.00000025     -0.00000073     -0.28500642
 b2aa00        -0.00000000     -0.00001344      0.06284438     -0.00000272      0.00000025      0.00000073      0.28500641
 2aba00         0.00000000      0.00000000      0.00000000      0.19247932     -0.00000276      0.00005327      0.00065291
 2baa00         0.00000000      0.00000000      0.00000000      0.20390257     -0.00000295      0.00005798      0.00063279
 2020a0         0.04085222      0.00000000      0.00000000     -0.00000000     -0.00000000      0.00000000      0.00000000
 22000a        -0.00000000     -0.00000873      0.04085222      0.00000000      0.00000000      0.00000000      0.00000000
 022a00        -0.00000000      0.04085219      0.00000873      0.00000000     -0.00000000      0.00000000     -0.00000000
 
 Energy:     -261.34161152   -261.34161152   -261.34161152   -261.09906251   -261.09906251   -261.09906251   -261.09906251

 State:              8               9              10              11              12
 2a2000        -0.00000000      0.00000000     -0.11516733      0.00000457     -0.00000000
 22a000         0.00000000      0.00000000     -0.00000000      0.00000014      0.11516732
 a22000         0.00000000      0.00000000     -0.00000457     -0.11516735      0.00000014
 aa200b         0.07542831      0.47129842     -0.00000000      0.00000000     -0.00000000
 a2a0b0         0.61112335     -0.47129845     -0.00000000     -0.00000000      0.00000000
 2aa00b         0.00000063      0.00000000      0.55928228     -0.00002220      0.00000000
 aa2b00         0.00000063     -0.00000000     -0.55928232      0.00002220     -0.00000000
 a2a00b        -0.00003627     -0.00000000      0.00002220      0.55928229     -0.00000068
 aa20b0         0.00003627     -0.00000000      0.00002220      0.55928231     -0.00000068
 2aa0b0         0.00138103      0.00000000     -0.00000000      0.00000068      0.55928229
 a2ab00        -0.00138103      0.00000000     -0.00000000      0.00000068      0.55928231
 2aab00         0.53569505      0.47129844     -0.00000000     -0.00000000     -0.00000000
 ab2a00        -0.00000032      0.00000000      0.36322900     -0.00001442      0.00000000
 a2ba00         0.00069902     -0.00000000      0.00000000     -0.00000044     -0.36322900
 ba20a0        -0.00001836      0.00000000     -0.00001442     -0.36322899      0.00000044
 2ab0a0        -0.00069902     -0.00000000      0.00000000     -0.00000044     -0.36322899
 b2a00a         0.00001836      0.00000000     -0.00001442     -0.36322898      0.00000044
 2ba00a        -0.00000032     -0.00000000     -0.36322897      0.00001442     -0.00000000
 ab200a        -0.03065464     -0.23564921      0.00000000     -0.00000000      0.00000000
 ba200a        -0.04477367     -0.23564921      0.00000000     -0.00000000      0.00000000
 a2b0a0        -0.30839496      0.23564922      0.00000000      0.00000000     -0.00000000
 b2a0a0        -0.30272840      0.23564923      0.00000000      0.00000000     -0.00000000
 2ab00a        -0.00000031     -0.00000000     -0.19605331      0.00000778     -0.00000000
 ba2a00        -0.00000031      0.00000000      0.19605333     -0.00000778      0.00000000
 a2b00a         0.00001791      0.00000000     -0.00000778     -0.19605331      0.00000024
 ab20a0        -0.00001791      0.00000000     -0.00000778     -0.19605332      0.00000024
 2ba0a0        -0.00068202     -0.00000000      0.00000000     -0.00000024     -0.19605331
 b2aa00         0.00068202     -0.00000000      0.00000000     -0.00000024     -0.19605332
 2aba00        -0.27207376     -0.23564922      0.00000000      0.00000000      0.00000000
 2baa00        -0.26362129     -0.23564922      0.00000000      0.00000000      0.00000000
 2020a0         0.00000000      0.00000000     -0.13043545      0.00000518     -0.00000000
 22000a         0.00000000      0.00000000     -0.00000000      0.00000016      0.13043545
 022a00        -0.00000000      0.00000000     -0.00000518     -0.13043545      0.00000016
 
 Energy:     -261.09906251   -261.09385710   -261.09377904   -261.09377904   -261.09377904
 
 
 CI Coefficients of symmetry 2 (Quartet)
 =======================================

 State:              1               2               3               4               5               6               7
 a2a0a0         0.00000000     -0.00000000     -0.00000000      0.11172999     -0.00041719      0.00000602     -0.00000180
 aa200a         0.00000000      0.00000000      0.00000000      0.75621299     -0.00279021      0.00000199     -0.00000222
 aa20a0        -0.00000003     -0.00001682      0.70700713      0.00000024     -0.00001482      0.70700548      0.00000121
 aa2a00         0.00000000      0.70700712      0.00001682      0.00260677      0.70700068      0.00001482     -0.00000341
 2aa0a0         0.70700710     -0.00000000      0.00000003     -0.00000153     -0.00000340      0.00000121     -0.70700550
 a2aa00         0.70700709     -0.00000000      0.00000003      0.00000153      0.00000340     -0.00000121      0.70700551
 2aa00a        -0.00000000     -0.70700708     -0.00001682      0.00260677      0.70700072      0.00001482     -0.00000341
 a2a00a        -0.00000003     -0.00001682      0.70700707     -0.00000024      0.00001482     -0.70700554     -0.00000121
 2aaa00        -0.00000000      0.00000000     -0.00000000     -0.64448298      0.00237302      0.00000403      0.00000042
 
 Energy:     -261.10569260   -261.10569260   -261.10569260   -261.10092921   -261.10092921   -261.10092921   -261.10092921

 State:              8               9
 a2a0a0         0.80869768     -0.57718742
 aa200a         0.30758716      0.57718740
 aa20a0        -0.00000530     -0.00000000
 aa2a00         0.00000458     -0.00000000
 2aa0a0        -0.00000136      0.00000000
 a2aa00         0.00000136      0.00000000
 2aa00a         0.00000458      0.00000000
 a2a00a         0.00000530     -0.00000000
 2aaa00         0.50111054      0.57718742
 
 Energy:     -261.10092921   -261.09392461
 


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       94.20       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       5        2.66       700     1000      520     2100     2140   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF   

 PROGRAMS   *        TOTAL     MULTI   RHF-SCF       INT
 CPU TIMES  *        23.90     11.95      1.42     10.16
 REAL TIME  *        26.85 SEC
 DISK USED  *        96.98 MB (local),        2.92 GB (total)
 SF USED    *       162.45 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

         ENERGY     LL
    -261.3416115   2.0
    -261.3416115   2.0
    -261.3416115   2.0
    -261.0990625   6.0
    -261.0990625   6.0
    -261.0990625   6.0
    -261.0990625   6.0
    -261.0990625   6.0
    -261.0938571   0.0
    -261.0937790   2.0
    -261.0937790   2.0
    -261.0937790   2.0
    -261.1056926   2.0
    -261.1056926   2.0
    -261.1056926   2.0
    -261.1009292   6.0
    -261.1009292   6.0
    -261.1009292   6.0
    -261.1009292   6.0
    -261.1009292   6.0
    -261.0939246   0.0
                                                  


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
 Number of external orbitals:     265 ( 128 137 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Valence orbitals related to previous ones by unitary transformation. Operators transformed.


 Number of p-space configurations:  30

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -261.34161152
     2      -261.34161152
     3      -261.34161152
     4      -261.09906251
     5      -261.09906251
     6      -261.09906251
     7      -261.09906251
     8      -261.09906251
     9      -261.09385710
    10      -261.09377904
    11      -261.09377904
    12      -261.09377904

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.8622D-07

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2231D-06

 Number of blocks in overlap matrix:  1242   Smallest eigenvalue:  0.86D-07
 Number of N-2 electron functions:    2790
 Number of N-1 electron functions:   51730

 Number of internal configurations:                15498
 Number of singly external configurations:       6875330
 Number of doubly external configurations:      48990714
 Total number of contracted configurations:     55881542
 Total number of uncontracted configurations: 1291473932

 Diagonal Coupling coefficients finished.               Storage:  14711030 words, CPU-Time:     22.80 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   4382262 words, CPU-time:      9.22 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -261.34161152    -0.00000000    -1.12662459  0.47D-01  0.14D+00    42.51
    1     2     2     1.00000000     0.00000000  -261.34161152     0.00000000    -1.12645939  0.47D-01  0.13D+00    42.51
    1     3     3     1.00000000     0.00000000  -261.34161152     0.00000000    -1.12653815  0.47D-01  0.13D+00    42.51
    1     4     4     1.00000000     0.00000000  -261.09906251     0.00000000    -1.07528639  0.31D-01  0.12D+00    42.51
    1     5     5     1.00000000     0.00000000  -261.09906251     0.00000000    -1.07289772  0.31D-01  0.12D+00    42.51
    1     6     6     1.00000000     0.00000000  -261.09906251     0.00000000    -1.07294791  0.31D-01  0.12D+00    42.51
    1     7     7     1.00000000     0.00000000  -261.09906251    -0.00000000    -1.07291893  0.31D-01  0.12D+00    42.51
    1     8     8     1.00000000     0.00000000  -261.09906251     0.00000000    -1.07507972  0.31D-01  0.12D+00    42.51
    1     9     9     1.00000000     0.00000000  -261.09385710    -0.00000000    -1.07638093  0.32D-01  0.13D+00    42.51
    1    10    10     1.00000000     0.00000000  -261.09377904     0.00000000    -1.08170899  0.38D-01  0.13D+00    42.51
    1    11    11     1.00000000     0.00000000  -261.09377904     0.00000000    -1.08149618  0.38D-01  0.13D+00    42.51
    1    12    12     1.00000000     0.00000000  -261.09377904     0.00000000    -1.08170737  0.38D-01  0.13D+00    42.51
    2     1     1     1.11493706    -0.89598745  -262.23759897    -0.89598745    -0.03169808  0.61D-02  0.20D-02  2057.72
    2     2     2     1.11487287    -0.89596427  -262.23757579    -0.89596427    -0.03172277  0.61D-02  0.20D-02  2057.72
    2     3     3     1.11481901    -0.89595151  -262.23756303    -0.89595151    -0.03172586  0.61D-02  0.20D-02  2057.72
    2     4     4     1.10262695    -0.87439961  -261.97346212    -0.87439961    -0.02400825  0.23D-02  0.19D-02  2057.72
    2     5     5     1.10262344    -0.87439088  -261.97345339    -0.87439088    -0.02401602  0.23D-02  0.19D-02  2057.72
    2     6     6     1.10264665    -0.87435378  -261.97341629    -0.87435378    -0.02405764  0.23D-02  0.19D-02  2057.72
    2     7     7     1.10309516    -0.87400053  -261.97306304    -0.87400053    -0.02446802  0.23D-02  0.20D-02  2057.72
    2     8     8     1.10315820    -0.87387989  -261.97294240    -0.87387989    -0.02459292  0.23D-02  0.21D-02  2057.72
    2     9     9     1.10375483    -0.87436897  -261.96822606    -0.87436897    -0.02460991  0.23D-02  0.21D-02  2057.72
    2    10    10     1.10610311    -0.87352166  -261.96730070    -0.87352166    -0.02694377  0.38D-02  0.21D-02  2057.72
    2    11    11     1.10616384    -0.87351079  -261.96728984    -0.87351079    -0.02695898  0.38D-02  0.21D-02  2057.72
    2    12    12     1.10617196    -0.87350066  -261.96727970    -0.87350066    -0.02697009  0.38D-02  0.21D-02  2057.72
    3     1     1     1.09928012    -0.92627576  -262.26788728    -0.03028831    -0.00053956  0.79D-04  0.51D-04  4075.71
    3     2     2     1.09925914    -0.92627191  -262.26788343    -0.03030764    -0.00054265  0.80D-04  0.52D-04  4075.71
    3     3     3     1.09923606    -0.92626784  -262.26787936    -0.03031633    -0.00054519  0.80D-04  0.52D-04  4075.71
    3     4     4     1.09215560    -0.89693971  -261.99600222    -0.02254010    -0.00027782  0.30D-04  0.28D-04  4075.71
    3     5     5     1.09215085    -0.89693960  -261.99600211    -0.02254872    -0.00027777  0.31D-04  0.28D-04  4075.71
    3     6     6     1.09214940    -0.89693824  -261.99600075    -0.02258447    -0.00027900  0.31D-04  0.28D-04  4075.71
    3     7     7     1.09222763    -0.89693745  -261.99599996    -0.02293692    -0.00028058  0.30D-04  0.29D-04  4075.71
    3     8     8     1.09219239    -0.89693449  -261.99599700    -0.02305460    -0.00028267  0.30D-04  0.29D-04  4075.71
    3     9     9     1.09277777    -0.89872903  -261.99258613    -0.02436007    -0.00037303  0.50D-04  0.39D-04  4075.71
    3    10    10     1.09277902    -0.89880638  -261.99258542    -0.02528472    -0.00037347  0.50D-04  0.39D-04  4075.71
    3    11    11     1.09276391    -0.89880576  -261.99258480    -0.02529496    -0.00037389  0.50D-04  0.39D-04  4075.71
    3    12    12     1.09257209    -0.89755628  -261.99133532    -0.02405563    -0.00028894  0.33D-04  0.30D-04  4075.71
    4     1     1     1.09872349    -0.92683260  -262.26844412    -0.00055684    -0.00002071  0.21D-05  0.25D-05  6093.99
    4     2     2     1.09871529    -0.92683212  -262.26844364    -0.00056021    -0.00002108  0.21D-05  0.26D-05  6093.99
    4     3     3     1.09870566    -0.92683156  -262.26844308    -0.00056372    -0.00002147  0.21D-05  0.27D-05  6093.99
    4     4     4     1.09194527    -0.89723075  -261.99629326    -0.00029105    -0.00000996  0.13D-05  0.14D-05  6093.99
    4     5     5     1.09193219    -0.89723054  -261.99629305    -0.00029094    -0.00001015  0.13D-05  0.15D-05  6093.99
    4     6     6     1.09193124    -0.89723050  -261.99629301    -0.00029226    -0.00001016  0.13D-05  0.15D-05  6093.99
    4     7     7     1.09193014    -0.89723041  -261.99629292    -0.00029296    -0.00001023  0.13D-05  0.15D-05  6093.99
    4     8     8     1.09193672    -0.89723029  -261.99629280    -0.00029580    -0.00001023  0.13D-05  0.15D-05  6093.99
    4     9     9     1.09236354    -0.89912103  -261.99297813    -0.00039200    -0.00001516  0.23D-05  0.21D-05  6093.99
    4    10    10     1.09236244    -0.89919893  -261.99297797    -0.00039255    -0.00001524  0.23D-05  0.21D-05  6093.99
    4    11    11     1.09235956    -0.89919883  -261.99297787    -0.00039307    -0.00001532  0.23D-05  0.21D-05  6093.99
    4    12    12     1.09226519    -0.89786069  -261.99163974    -0.00030441    -0.00001069  0.15D-05  0.15D-05  6093.99
    5     1     1     1.09883945    -0.92685445  -262.26846597    -0.00002185    -0.00000087  0.34D-07  0.14D-06  8121.13
    5     2     2     1.09883753    -0.92685440  -262.26846593    -0.00002228    -0.00000090  0.34D-07  0.15D-06  8121.13
    5     3     3     1.09883536    -0.92685434  -262.26846586    -0.00002278    -0.00000095  0.34D-07  0.16D-06  8121.13
    5     4     4     1.09200401    -0.89724241  -261.99630492    -0.00001166    -0.00000066  0.21D-07  0.14D-06  8121.13
    5     5     5     1.09200328    -0.89724240  -261.99630491    -0.00001186    -0.00000067  0.20D-07  0.14D-06  8121.13
    5     6     6     1.09200317    -0.89724239  -261.99630490    -0.00001189    -0.00000068  0.21D-07  0.14D-06  8121.13
    5     7     7     1.09200296    -0.89724238  -261.99630489    -0.00001197    -0.00000069  0.21D-07  0.14D-06  8121.13
    5     8     8     1.09200265    -0.89724234  -261.99630485    -0.00001205    -0.00000071  0.22D-07  0.15D-06  8121.13
    5     9     9     1.09242634    -0.89913855  -261.99299564    -0.00001752    -0.00000102  0.39D-07  0.20D-06  8121.13
    5    10    10     1.09242597    -0.89921658  -261.99299562    -0.00001765    -0.00000103  0.40D-07  0.21D-06  8121.13
    5    11    11     1.09242557    -0.89921657  -261.99299561    -0.00001774    -0.00000104  0.40D-07  0.21D-06  8121.13
    5    12    12     1.09233117    -0.89787333  -261.99165238    -0.00001264    -0.00000071  0.28D-07  0.14D-06  8121.13
    6     1     1     1.09885552    -0.92685542  -262.26846694    -0.00000097    -0.00000004  0.23D-08  0.74D-08 10147.93
    6     2     2     1.09885523    -0.92685541  -262.26846693    -0.00000101    -0.00000005  0.25D-08  0.79D-08 10147.93
    6     3     3     1.09885484    -0.92685541  -262.26846693    -0.00000107    -0.00000005  0.28D-08  0.86D-08 10147.93
    6     4     4     1.09202817    -0.89724323  -261.99630574    -0.00000082    -0.00000005  0.32D-08  0.94D-08 10147.93
    6     5     5     1.09202831    -0.89724323  -261.99630574    -0.00000083    -0.00000005  0.32D-08  0.11D-07 10147.93
    6     6     6     1.09202838    -0.89724323  -261.99630574    -0.00000084    -0.00000006  0.33D-08  0.11D-07 10147.93
    6     7     7     1.09202837    -0.89724323  -261.99630574    -0.00000085    -0.00000006  0.33D-08  0.11D-07 10147.93
    6     8     8     1.09202824    -0.89724323  -261.99630574    -0.00000089    -0.00000006  0.35D-08  0.11D-07 10147.93
    6     9     9     1.09244774    -0.89913979  -261.99299688    -0.00000124    -0.00000008  0.54D-08  0.13D-07 10147.93
    6    10    10     1.09244767    -0.89921784  -261.99299688    -0.00000126    -0.00000008  0.55D-08  0.13D-07 10147.93
    6    11    11     1.09244781    -0.89921784  -261.99299688    -0.00000127    -0.00000007  0.54D-08  0.13D-07 10147.93
    6    12    12     1.09235543    -0.89787420  -261.99165325    -0.00000087    -0.00000005  0.30D-08  0.97D-08 10147.93
    7     1     1     1.09885832    -0.92685547  -262.26846699    -0.00000005    -0.00000000  0.24D-09  0.46D-09 12008.92
    7     2     2     1.09885827    -0.92685547  -262.26846699    -0.00000005    -0.00000000  0.26D-09  0.52D-09 12008.92
    7     3     3     1.09885551    -0.92685542  -262.26846694    -0.00000001    -0.00000004  0.23D-08  0.74D-08 12008.92
    7     4     4     1.09203306    -0.89724330  -261.99630581    -0.00000006    -0.00000000  0.23D-09  0.85D-09 12008.92
    7     5     5     1.09203302    -0.89724330  -261.99630581    -0.00000007    -0.00000000  0.21D-09  0.95D-09 12008.92
    7     6     6     1.09203302    -0.89724330  -261.99630581    -0.00000007    -0.00000000  0.21D-09  0.98D-09 12008.92
    7     7     7     1.09203295    -0.89724330  -261.99630581    -0.00000007    -0.00000001  0.20D-09  0.11D-08 12008.92
    7     8     8     1.09203294    -0.89724330  -261.99630581    -0.00000007    -0.00000001  0.20D-09  0.11D-08 12008.92
    7     9     9     1.09245278    -0.89913988  -261.99299697    -0.00000009    -0.00000001  0.37D-09  0.11D-08 12008.92
    7    10    10     1.09245279    -0.89921793  -261.99299697    -0.00000009    -0.00000001  0.36D-09  0.11D-08 12008.92
    7    11    11     1.09245281    -0.89921792  -261.99299697    -0.00000009    -0.00000001  0.35D-09  0.10D-08 12008.92
    7    12    12     1.09236082    -0.89787427  -261.99165331    -0.00000006    -0.00000000  0.14D-09  0.74D-09 12008.92


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.1%
 S   0.1%   2.4%
 P   0.3%  22.8%  51.5%

 Initialization:   0.3%
 Other:           22.6%

 Total CPU:    12008.9 seconds
 =====================================



 Wavefunction saved on  5203.2

 Reference coefficients greater than 0.0500000
 =============================================
 22222222222/2000           0.0018155   0.0079852   0.9475261  -0.0000000  -0.0000000  -0.0000000   0.0000000  -0.0000000
                           -0.0006898   0.0003635  -0.0751787   0.0000000
 222222222222/000           0.9460813  -0.0529004  -0.0013670   0.0000000  -0.0000000   0.0000000   0.0000000   0.0000000
                            0.0007331   0.0751783   0.0003568  -0.0000000
 2222222222/22000           0.0528870   0.9460487  -0.0080741   0.0000000  -0.0000000  -0.0000000  -0.0000000   0.0000000
                           -0.0751760   0.0007298   0.0006933   0.0000000
 2222222222/2/0\0          -0.0000000  -0.0000000   0.0000000   0.7208429  -0.1053886   0.2330057  -0.0323356  -0.1543199
                           -0.0000000   0.0000000  -0.0000000  -0.5522321
 22222222222//00\           0.0001235   0.0005431   0.0644489   0.0000260  -0.1555363  -0.2299574   0.5094120  -0.3476093
                            0.0060399  -0.0031829   0.6582834  -0.0000000
 2222222222//2\00          -0.0001235  -0.0005431  -0.0644489   0.0000260  -0.1555364  -0.2299575   0.5094121  -0.3476093
                           -0.0060399   0.0031829  -0.6582833  -0.0000000
 2222222222/2/\00          -0.0643508   0.0035982   0.0000930  -0.0522393   0.1152692  -0.1765672  -0.3907783  -0.5074494
                            0.0064196   0.6582803   0.0031240  -0.0000000
 22222222222//0\0          -0.0643508   0.0035982   0.0000930   0.0522394  -0.1152693   0.1765673   0.3907786   0.5074498
                            0.0064195   0.6582798   0.0031240  -0.0000000
 2222222222/2/00\           0.0035973   0.0643486  -0.0005492  -0.0759455   0.4914861   0.3742692   0.2043104  -0.1681018
                            0.6582598  -0.0063905  -0.0060706  -0.0000000
 2222222222//20\0           0.0035973   0.0643486  -0.0005492   0.0759456  -0.4914862  -0.3742693  -0.2043105   0.1681018
                            0.6582597  -0.0063905  -0.0060706  -0.0000000
 22222222222//\00          -0.0000000  -0.0000000   0.0000000   0.6037263   0.3596619  -0.3223049   0.0354993   0.1043568
                            0.0000000   0.0000000  -0.0000000   0.5522323
 2222222222//200\          -0.0000000  -0.0000000   0.0000000   0.1171165  -0.4650503   0.5553104  -0.0678349  -0.2586766
                            0.0000000   0.0000000   0.0000000   0.5522323
 22222222222020/0           0.0000722   0.0003174   0.0376607  -0.0000000   0.0000000  -0.0000000   0.0000000   0.0000000
                           -0.0011252   0.0005930  -0.1226351   0.0000000
 222222222222000/           0.0376039  -0.0021026  -0.0000543   0.0000000  -0.0000000   0.0000000   0.0000000   0.0000001
                            0.0011959   0.1226345   0.0005820  -0.0000000
 2222222222022/00           0.0021021   0.0376025  -0.0003209  -0.0000000   0.0000000   0.0000000   0.0000000  -0.0000000
                           -0.1226305   0.0011905   0.0011309   0.0000000
 22222222222/\00/          -0.0000625  -0.0002748  -0.0326072   0.0000002  -0.0011103  -0.0016416   0.0036365  -0.0024815
                            0.0010207  -0.0005379   0.1112424  -0.0000000
 2222222222/\2/00          -0.0000625  -0.0002748  -0.0326071  -0.0000002   0.0011103   0.0016416  -0.0036365   0.0024814
                            0.0010207  -0.0005379   0.1112421  -0.0000000
 22222222222/\0/0          -0.0325585   0.0018205   0.0000470  -0.0003729   0.0008229  -0.0012605  -0.0027897  -0.0036226
                           -0.0010848  -0.1112418  -0.0005279   0.0000000
 2222222222/2\/00          -0.0325584   0.0018205   0.0000470   0.0003729  -0.0008229   0.0012604   0.0027896   0.0036225
                           -0.0010848  -0.1112416  -0.0005279   0.0000000
 2222222222/\20/0          -0.0018200  -0.0325573   0.0002779   0.0005422  -0.0035087  -0.0026719  -0.0014586   0.0012001
                            0.1112385  -0.0010799  -0.0010259  -0.0000000
 2222222222/2\00/          -0.0018201  -0.0325573   0.0002779  -0.0005422   0.0035086   0.0026718   0.0014585  -0.0012000
                            0.1112383  -0.0010799  -0.0010259  -0.0000000

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.001827    0.053207    0.951809    0.000000    0.000000   -0.000000    0.000000   -0.000000   -0.000000   -0.000065
            -0.001891    0.033819
 2           0.008034    0.951776   -0.053221   -0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.000000   -0.000285
            -0.033818   -0.001891
 3           0.953262   -0.008123   -0.001375   -0.000000   -0.000000    0.000000   -0.000000    0.000000   -0.000000   -0.033871
             0.000289   -0.000049
 4           0.000000    0.000000   -0.000000    0.036775    0.000037   -0.107454    0.073912    0.947264   -0.000000    0.000000
             0.000000    0.000000
 5          -0.000000   -0.000000    0.000000   -0.586504   -0.220065    0.695393   -0.163092    0.114387    0.000000    0.000000
            -0.000000   -0.000000
 6          -0.000000   -0.000000   -0.000000    0.683215   -0.325362    0.529546    0.249821    0.014065   -0.000000    0.000000
            -0.000000    0.000000
 7           0.000000   -0.000000   -0.000000   -0.082841    0.720756    0.289075    0.552904   -0.007162    0.000000   -0.000000
            -0.000000    0.000000
 8          -0.000000    0.000000   -0.000000   -0.310943   -0.491825   -0.237844    0.717980   -0.070911    0.000000    0.000000
             0.000000    0.000000
 9           0.000325    0.035446   -0.000346   -0.000000   -0.000000    0.000000   -0.000000    0.000000    0.000000    0.008772
             0.955966    0.009323
 10         -0.000171   -0.000344   -0.035448    0.000000   -0.000000    0.000000   -0.000000    0.000000    0.000000   -0.004622
            -0.009281    0.955995
 11          0.035448   -0.000327   -0.000168    0.000000    0.000000    0.000000    0.000000   -0.000000    0.000000    0.956000
            -0.008816    0.004537
 12          0.000000   -0.000000    0.000000    0.000000   -0.000000   -0.000000    0.000000    0.000000    0.956769   -0.000000
            -0.000000   -0.000000

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.953898    0.000000   -0.000000   -0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.000034   -0.000737
            -0.000002   -0.000000
 2           0.000000    0.953898   -0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.000737    0.000034
            -0.000000    0.000000
 3          -0.000000   -0.000000    0.953899    0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.000000   -0.000002
             0.000738    0.000000
 4          -0.000000    0.000000    0.000000    0.956907    0.000000   -0.000000    0.000000    0.000000    0.000000    0.000000
             0.000000    0.000000
 5           0.000000   -0.000000   -0.000000    0.000000    0.956907    0.000000   -0.000000   -0.000000   -0.000000   -0.000000
            -0.000000    0.000000
 6          -0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.956907    0.000000    0.000000   -0.000000    0.000000
            -0.000000   -0.000000
 7          -0.000000   -0.000000    0.000000    0.000000   -0.000000    0.000000    0.956907    0.000000   -0.000000    0.000000
             0.000000    0.000000
 8          -0.000000    0.000000   -0.000000    0.000000   -0.000000    0.000000    0.000000    0.956907    0.000000    0.000000
            -0.000000    0.000000
 9           0.000034    0.000737    0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.956708    0.000000
             0.000000   -0.000000
 10         -0.000737    0.000034   -0.000002    0.000000   -0.000000    0.000000    0.000000    0.000000    0.000000    0.956708
            -0.000000    0.000000
 11         -0.000002   -0.000000    0.000738    0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.000000   -0.000000
             0.956708   -0.000000
 12         -0.000000    0.000000    0.000000    0.000000    0.000000   -0.000000    0.000000    0.000000   -0.000000    0.000000
            -0.000000    0.956769


 RESULTS FOR STATE 1.2
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.95180898 (fixed)   0.95394224 (relaxed)   0.95389803 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00012525   -0.00012417   -0.77100853
 Singles      0.01024290   -0.03639579   -0.04175389
 Pairs        0.08862780   -0.04324051   -0.11409305
 Total        1.09899596   -0.07976047   -0.92685547
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -261.34128527
 Nuclear energy                         0.00000000
 Kinetic energy                        83.55574094
 One electron energy                 -454.82430381
 Two electron energy                  192.55583683
 Virial quotient                       -3.13884437
 Correlation energy                    -0.92718172
 !MRCI STATE 1.2 Energy              -262.268466988626

 Properties without orbital relaxation:

 !MRCI STATE 1.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -262.36025423 (Davidson, fixed reference)
 Cluster corrected energies          -262.36015979 (Davidson, relaxed reference)
 Cluster corrected energies          -262.36025423 (Davidson, rotated reference)

 Cluster corrected energies          -262.36008912 (Pople, fixed reference)
 Cluster corrected energies          -262.35998656 (Pople, relaxed reference)
 Cluster corrected energies          -262.36008912 (Pople, rotated reference)



 RESULTS FOR STATE 2.2
 =====================

 Coefficient of reference function:   C(0) = 0.95177609 (fixed)   0.95394227 (relaxed)   0.95389806 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00012525   -0.00012417   -0.81255390
 Singles      0.01024297   -0.03639596   -0.04175398
 Pairs        0.08862767    0.00241781   -0.07254759
 Total        1.09899590   -0.03410232   -0.92685547
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -261.34128527
 Nuclear energy                         0.00000000
 Kinetic energy                        83.55573604
 One electron energy                 -454.82429789
 Two electron energy                  192.55583091
 Virial quotient                       -3.13884455
 Correlation energy                    -0.92718172
 !MRCI STATE 2.2 Energy              -262.268466987985

 Properties without orbital relaxation:

 !MRCI STATE 2.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -262.36025418 (Davidson, fixed reference)
 Cluster corrected energies          -262.36015973 (Davidson, relaxed reference)
 Cluster corrected energies          -262.36025418 (Davidson, rotated reference)

 Cluster corrected energies          -262.36008906 (Pople, fixed reference)
 Cluster corrected energies          -262.35998650 (Pople, relaxed reference)
 Cluster corrected energies          -262.36008906 (Pople, rotated reference)



 RESULTS FOR STATE 3.2
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.95326235 (fixed)   0.95394346 (relaxed)   0.95389924 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00012528   -0.00012417   -0.81042061
 Singles      0.01023854   -0.03638729   -0.04174820
 Pairs        0.08862936    0.00006248   -0.07468661
 Total        1.09899318   -0.03644899   -0.92685542
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -261.34128527
 Nuclear energy                         0.00000000
 Kinetic energy                        83.55600823
 One electron energy                 -454.82485873
 Two electron energy                  192.55639179
 Virial quotient                       -3.13883433
 Correlation energy                    -0.92718167
 !MRCI STATE 3.2 Energy              -262.268466938424

 Properties without orbital relaxation:

 !MRCI STATE 3.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -262.36025160 (Davidson, fixed reference)
 Cluster corrected energies          -262.36015713 (Davidson, relaxed reference)
 Cluster corrected energies          -262.36025160 (Davidson, rotated reference)

 Cluster corrected energies          -262.36008627 (Pople, fixed reference)
 Cluster corrected energies          -262.35998367 (Pople, relaxed reference)
 Cluster corrected energies          -262.36008627 (Pople, rotated reference)



 RESULTS FOR STATE 4.2
 =====================

 Maximum overlap with reference state  8

 Coefficient of reference function:   C(0) = 0.94726383 (fixed)   0.95691084 (relaxed)   0.95690675 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00005751   -0.00017494   -0.77915514
 Singles      0.01197153   -0.04638277   -0.05230486
 Pairs        0.08006682   -0.00000003   -0.06578330
 Total        1.09209586   -0.04655774   -0.89724330
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -261.09906251
 Nuclear energy                         0.00000000
 Kinetic energy                        83.12093795
 One electron energy                 -448.99446240
 Two electron energy                  186.99815659
 Virial quotient                       -3.15198929
 Correlation energy                    -0.89724330
 !MRCI STATE 4.2 Energy              -261.996305806959

 Properties without orbital relaxation:

 !MRCI STATE 4.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -262.07893820 (Davidson, fixed reference)
 Cluster corrected energies          -262.07892983 (Davidson, relaxed reference)
 Cluster corrected energies          -262.07893820 (Davidson, rotated reference)

 Cluster corrected energies          -262.07828641 (Pople, fixed reference)
 Cluster corrected energies          -262.07827743 (Pople, relaxed reference)
 Cluster corrected energies          -262.07828641 (Pople, rotated reference)



 RESULTS FOR STATE 5.2
 =====================

 Maximum overlap with reference state  6

 Coefficient of reference function:   C(0) = 0.69539338 (fixed)   0.95691086 (relaxed)   0.95690677 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00005751   -0.00017494   -0.77915538
 Singles      0.01197147   -0.04638263   -0.05230477
 Pairs        0.08006683    0.00000007   -0.06578315
 Total        1.09209581   -0.04655750   -0.89724330
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -261.09906251
 Nuclear energy                         0.00000000
 Kinetic energy                        83.12093797
 One electron energy                 -448.99446736
 Two electron energy                  186.99816155
 Virial quotient                       -3.15198928
 Correlation energy                    -0.89724330
 !MRCI STATE 5.2 Energy              -261.996305806367

 Properties without orbital relaxation:

 !MRCI STATE 5.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -262.07893816 (Davidson, fixed reference)
 Cluster corrected energies          -262.07892979 (Davidson, relaxed reference)
 Cluster corrected energies          -262.07893816 (Davidson, rotated reference)

 Cluster corrected energies          -262.07828636 (Pople, fixed reference)
 Cluster corrected energies          -262.07827739 (Pople, relaxed reference)
 Cluster corrected energies          -262.07828636 (Pople, rotated reference)



 RESULTS FOR STATE 6.2
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.68321524 (fixed)   0.95691086 (relaxed)   0.95690677 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00005751   -0.00017494   -0.77915522
 Singles      0.01197148   -0.04638263   -0.05230476
 Pairs        0.08006683   -0.00000010   -0.06578331
 Total        1.09209582   -0.04655768   -0.89724330
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -261.09906251
 Nuclear energy                         0.00000000
 Kinetic energy                        83.12093798
 One electron energy                 -448.99446779
 Two electron energy                  186.99816198
 Virial quotient                       -3.15198928
 Correlation energy                    -0.89724330
 !MRCI STATE 6.2 Energy              -261.996305806232

 Properties without orbital relaxation:

 !MRCI STATE 6.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -262.07893816 (Davidson, fixed reference)
 Cluster corrected energies          -262.07892979 (Davidson, relaxed reference)
 Cluster corrected energies          -262.07893816 (Davidson, rotated reference)

 Cluster corrected energies          -262.07828636 (Pople, fixed reference)
 Cluster corrected energies          -262.07827739 (Pople, relaxed reference)
 Cluster corrected energies          -262.07828636 (Pople, rotated reference)



 RESULTS FOR STATE 7.2
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.72075631 (fixed)   0.95691089 (relaxed)   0.95690680 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00005751   -0.00017494   -0.77915518
 Singles      0.01197145   -0.04638259   -0.05230472
 Pairs        0.08006679   -0.00000024   -0.06578339
 Total        1.09209575   -0.04655777   -0.89724330
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -261.09906251
 Nuclear energy                         0.00000000
 Kinetic energy                        83.12093877
 One electron energy                 -448.99447148
 Two electron energy                  186.99816567
 Virial quotient                       -3.15198925
 Correlation energy                    -0.89724330
 !MRCI STATE 7.2 Energy              -261.996305806077

 Properties without orbital relaxation:

 !MRCI STATE 7.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -262.07893810 (Davidson, fixed reference)
 Cluster corrected energies          -262.07892973 (Davidson, relaxed reference)
 Cluster corrected energies          -262.07893810 (Davidson, rotated reference)

 Cluster corrected energies          -262.07828630 (Pople, fixed reference)
 Cluster corrected energies          -262.07827732 (Pople, relaxed reference)
 Cluster corrected energies          -262.07828630 (Pople, rotated reference)



 RESULTS FOR STATE 8.2
 =====================

 Maximum overlap with reference state  7

 Coefficient of reference function:   C(0) = 0.71797975 (fixed)   0.95691089 (relaxed)   0.95690681 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00005751   -0.00017494   -0.77915514
 Singles      0.01197144   -0.04638257   -0.05230471
 Pairs        0.08006679   -0.00000032   -0.06578344
 Total        1.09209574   -0.04655783   -0.89724330
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -261.09906251
 Nuclear energy                         0.00000000
 Kinetic energy                        83.12093860
 One electron energy                 -448.99447228
 Two electron energy                  186.99816648
 Virial quotient                       -3.15198926
 Correlation energy                    -0.89724330
 !MRCI STATE 8.2 Energy              -261.996305805959

 Properties without orbital relaxation:

 !MRCI STATE 8.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -262.07893809 (Davidson, fixed reference)
 Cluster corrected energies          -262.07892972 (Davidson, relaxed reference)
 Cluster corrected energies          -262.07893809 (Davidson, rotated reference)

 Cluster corrected energies          -262.07828629 (Pople, fixed reference)
 Cluster corrected energies          -262.07827731 (Pople, relaxed reference)
 Cluster corrected energies          -262.07828629 (Pople, rotated reference)



 RESULTS FOR STATE 9.2
 =====================

 Maximum overlap with reference state 11

 Coefficient of reference function:   C(0) = 0.95596552 (fixed)   0.95672242 (relaxed)   0.95670793 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00008884   -0.00021775   -0.77268940
 Singles      0.01223707   -0.04671158   -0.05282287
 Pairs        0.08022392   -0.00830651   -0.07362761
 Total        1.09254983   -0.05523584   -0.89913988
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -261.09410530
 Nuclear energy                         0.00000000
 Kinetic energy                        83.14407003
 One electron energy                 -449.11690840
 Two electron energy                  187.12391142
 Virial quotient                       -3.15107255
 Correlation energy                    -0.89889167
 !MRCI STATE 9.2 Energy              -261.992996971723

 Properties without orbital relaxation:

 !MRCI STATE 9.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -262.07618924 (Davidson, fixed reference)
 Cluster corrected energies          -262.07615949 (Davidson, relaxed reference)
 Cluster corrected energies          -262.07618924 (Davidson, rotated reference)

 Cluster corrected energies          -262.07556620 (Pople, fixed reference)
 Cluster corrected energies          -262.07553425 (Pople, relaxed reference)
 Cluster corrected energies          -262.07556620 (Pople, rotated reference)



 RESULTS FOR STATE 10.2
 ======================

 Maximum overlap with reference state 12

 Coefficient of reference function:   C(0) = 0.95599499 (fixed)   0.95672242 (relaxed)   0.95670792 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00008884   -0.00021775   -0.00074280
 Singles      0.01223705   -0.04671152   -0.05282371
 Pairs        0.08022395   -0.85177475   -0.84565141
 Total        1.09254984   -0.89870401   -0.89921793
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -261.09410530
 Nuclear energy                         0.00000000
 Kinetic energy                        83.14407039
 One electron energy                 -449.11690998
 Two electron energy                  187.12391301
 Virial quotient                       -3.15107254
 Correlation energy                    -0.89889167
 !MRCI STATE 10.2 Energy             -261.992996970604

 Properties without orbital relaxation:

 !MRCI STATE 10.2 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -262.07618925 (Davidson, fixed reference)
 Cluster corrected energies          -262.07615950 (Davidson, relaxed reference)
 Cluster corrected energies          -262.07618925 (Davidson, rotated reference)

 Cluster corrected energies          -262.07556621 (Pople, fixed reference)
 Cluster corrected energies          -262.07553426 (Pople, relaxed reference)
 Cluster corrected energies          -262.07556621 (Pople, rotated reference)



 RESULTS FOR STATE 11.2
 ======================

 Maximum overlap with reference state 10

 Coefficient of reference function:   C(0) = 0.95599979 (fixed)   0.95672241 (relaxed)   0.95670791 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00008884   -0.00021775   -0.77666393
 Singles      0.01223703   -0.04671147   -0.05282368
 Pairs        0.08022399   -0.00404227   -0.06973032
 Total        1.09254986   -0.05097149   -0.89921792
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -261.09410530
 Nuclear energy                         0.00000000
 Kinetic energy                        83.14406930
 One electron energy                 -449.11690893
 Two electron energy                  187.12391196
 Virial quotient                       -3.15107258
 Correlation energy                    -0.89889167
 !MRCI STATE 11.2 Energy             -261.992996967073

 Properties without orbital relaxation:

 !MRCI STATE 11.2 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -262.07618927 (Davidson, fixed reference)
 Cluster corrected energies          -262.07615951 (Davidson, relaxed reference)
 Cluster corrected energies          -262.07618927 (Davidson, rotated reference)

 Cluster corrected energies          -262.07556622 (Pople, fixed reference)
 Cluster corrected energies          -262.07553427 (Pople, relaxed reference)
 Cluster corrected energies          -262.07556622 (Pople, rotated reference)



 RESULTS FOR STATE 12.2
 ======================

 Maximum overlap with reference state  9

 Coefficient of reference function:   C(0) = 0.95676876 (fixed)   0.95677305 (relaxed)   0.95676876 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00004585   -0.00013611   -0.77895305
 Singles      0.01227986   -0.04697864   -0.05309653
 Pairs        0.08008519    0.00000001   -0.06582468
 Total        1.09241090   -0.04711474   -0.89787427
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -261.09385710
 Nuclear energy                         0.00000000
 Kinetic energy                        83.12052951
 One electron energy                 -448.98627541
 Two electron energy                  186.99462210
 Virial quotient                       -3.15194880
 Correlation energy                    -0.89779621
 !MRCI STATE 12.2 Energy             -261.991653307834

 Properties without orbital relaxation:

 !MRCI STATE 12.2 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -262.07461946 (Davidson, fixed reference)
 Cluster corrected energies          -262.07461067 (Davidson, relaxed reference)
 Cluster corrected energies          -262.07461946 (Davidson, rotated reference)

 Cluster corrected energies          -262.07398799 (Pople, fixed reference)
 Cluster corrected energies          -262.07397854 (Pople, relaxed reference)
 Cluster corrected energies          -262.07398799 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       94.20       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       6     5140.78       700     1000      520     2100     2140     5203   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *     13287.74  13263.83     11.95      1.42     10.16
 REAL TIME  *     13731.21 SEC
 DISK USED  *         5.11 GB (local),       83.20 GB (total)
 SF USED    *        48.64 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =      -262.36025423  AU                              
 SETTING HLSDIAG(2)     =      -262.36025418  AU                              
 SETTING HLSDIAG(3)     =      -262.36025160  AU                              
 SETTING HLSDIAG(4)     =      -262.07893820  AU                              
 SETTING HLSDIAG(5)     =      -262.07893816  AU                              
 SETTING HLSDIAG(6)     =      -262.07893816  AU                              
 SETTING HLSDIAG(7)     =      -262.07893810  AU                              
 SETTING HLSDIAG(8)     =      -262.07893809  AU                              
 SETTING HLSDIAG(9)     =      -262.07618924  AU                              
 SETTING HLSDIAG(10)    =      -262.07618925  AU                              
 SETTING HLSDIAG(11)    =      -262.07618927  AU                              
 SETTING HLSDIAG(12)    =      -262.07461946  AU                              


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
 Number of external orbitals:     265 ( 128 137 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Coulomb and exchange operators available. No transformation done.


 Number of p-space configurations:  42

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -261.10569260
     2      -261.10569260
     3      -261.10569260
     4      -261.10092921
     5      -261.10092921
     6      -261.10092921
     7      -261.10092921
     8      -261.10092921
     9      -261.09392461

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.3590D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1009D-06

 Number of blocks in overlap matrix:   990   Smallest eigenvalue:  0.10D-06
 Number of N-2 electron functions:    2080
 Number of N-1 electron functions:   43460

 Number of internal configurations:                10812
 Number of singly external configurations:       5773336
 Number of doubly external configurations:      36517168
 Total number of contracted configurations:     42301316
 Total number of uncontracted configurations: 1033030024

 Diagonal Coupling coefficients finished.               Storage:   8771366 words, CPU-Time:      7.38 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   4216131 words, CPU-time:      6.93 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -261.10569260     0.00000000    -1.07362900  0.32D-01  0.12D+00    18.89
    1     2     2     1.00000000     0.00000000  -261.10569260     0.00000000    -1.07252278  0.32D-01  0.12D+00    18.89
    1     3     3     1.00000000     0.00000000  -261.10569260    -0.00000000    -1.07231562  0.32D-01  0.12D+00    18.89
    1     4     4     1.00000000     0.00000000  -261.10092921    -0.00000000    -1.07301602  0.32D-01  0.12D+00    18.89
    1     5     5     1.00000000     0.00000000  -261.10092921     0.00000000    -1.07514724  0.32D-01  0.13D+00    18.89
    1     6     6     1.00000000     0.00000000  -261.10092921    -0.00000000    -1.07347652  0.32D-01  0.12D+00    18.89
    1     7     7     1.00000000     0.00000000  -261.10092921     0.00000000    -1.07478413  0.32D-01  0.13D+00    18.89
    1     8     8     1.00000000     0.00000000  -261.10092921     0.00000000    -1.07568789  0.32D-01  0.13D+00    18.89
    1     9     9     1.00000000     0.00000000  -261.09392461     0.00000000    -1.07674754  0.32D-01  0.13D+00    18.89
    2     1     1     1.10301951    -0.87337050  -261.97906310    -0.87337050    -0.02417905  0.24D-02  0.19D-02   951.52
    2     2     2     1.10310661    -0.87332313  -261.97901573    -0.87332313    -0.02422216  0.24D-02  0.19D-02   951.52
    2     3     3     1.10357002    -0.87313773  -261.97883033    -0.87313773    -0.02442207  0.24D-02  0.20D-02   951.52
    2     4     4     1.10312368    -0.87405136  -261.97498057    -0.87405136    -0.02404202  0.23D-02  0.19D-02   951.52
    2     5     5     1.10325428    -0.87394460  -261.97487381    -0.87394460    -0.02416152  0.23D-02  0.20D-02   951.52
    2     6     6     1.10379650    -0.87370273  -261.97463193    -0.87370273    -0.02441508  0.23D-02  0.21D-02   951.52
    2     7     7     1.10352156    -0.87338185  -261.97431106    -0.87338185    -0.02478671  0.23D-02  0.21D-02   951.52
    2     8     8     1.10344577    -0.87336160  -261.97429081    -0.87336160    -0.02479390  0.23D-02  0.22D-02   951.52
    2     9     9     1.10405163    -0.87394810  -261.96787271    -0.87394810    -0.02491105  0.24D-02  0.22D-02   951.52
    3     1     1     1.09205869    -0.89607068  -262.00176328    -0.02270018    -0.00027546  0.32D-04  0.26D-04  1887.02
    3     2     2     1.09204980    -0.89607044  -262.00176304    -0.02274731    -0.00027549  0.32D-04  0.26D-04  1887.02
    3     3     3     1.09213043    -0.89606610  -262.00175870    -0.02292837    -0.00028028  0.32D-04  0.26D-04  1887.02
    3     4     4     1.09226690    -0.89662387  -261.99755308    -0.02257251    -0.00027169  0.31D-04  0.25D-04  1887.02
    3     5     5     1.09227420    -0.89662253  -261.99755173    -0.02267792    -0.00027294  0.31D-04  0.26D-04  1887.02
    3     6     6     1.09235342    -0.89661767  -261.99754687    -0.02291494    -0.00027830  0.31D-04  0.27D-04  1887.02
    3     7     7     1.09224504    -0.89661364  -261.99754285    -0.02323179    -0.00027990  0.30D-04  0.28D-04  1887.02
    3     8     8     1.09219578    -0.89660928  -261.99753848    -0.02324768    -0.00028287  0.30D-04  0.29D-04  1887.02
    3     9     9     1.09251526    -0.89733860  -261.99126321    -0.02339050    -0.00029028  0.35D-04  0.30D-04  1887.02
    4     1     1     1.09173843    -0.89635511  -262.00204771    -0.00028443    -0.00000834  0.10D-05  0.10D-05  2826.01
    4     2     2     1.09175196    -0.89635491  -262.00204751    -0.00028447    -0.00000847  0.11D-05  0.11D-05  2826.01
    4     3     3     1.09173575    -0.89635488  -262.00204748    -0.00028878    -0.00000845  0.11D-05  0.11D-05  2826.01
    4     4     4     1.09194867    -0.89690315  -261.99783235    -0.00027927    -0.00000803  0.10D-05  0.99D-06  2826.01
    4     5     5     1.09194737    -0.89690297  -261.99783218    -0.00028045    -0.00000808  0.99D-06  0.10D-05  2826.01
    4     6     6     1.09196391    -0.89690295  -261.99783216    -0.00028529    -0.00000816  0.10D-05  0.10D-05  2826.01
    4     7     7     1.09193138    -0.89690237  -261.99783158    -0.00028873    -0.00000849  0.97D-06  0.11D-05  2826.01
    4     8     8     1.09191890    -0.89690204  -261.99783124    -0.00029276    -0.00000883  0.97D-06  0.12D-05  2826.01
    4     9     9     1.09219163    -0.89763879  -261.99156340    -0.00030018    -0.00000938  0.11D-05  0.14D-05  2826.01
    5     1     1     1.09176758    -0.89636441  -262.00205701    -0.00000930    -0.00000041  0.14D-07  0.79D-07  3764.84
    5     2     2     1.09176844    -0.89636438  -262.00205698    -0.00000947    -0.00000042  0.14D-07  0.83D-07  3764.84
    5     3     3     1.09176650    -0.89636436  -262.00205696    -0.00000948    -0.00000044  0.14D-07  0.88D-07  3764.84
    5     4     4     1.09197508    -0.89691200  -261.99784120    -0.00000885    -0.00000039  0.13D-07  0.79D-07  3764.84
    5     5     5     1.09197622    -0.89691197  -261.99784118    -0.00000900    -0.00000041  0.14D-07  0.85D-07  3764.84
    5     6     6     1.09197416    -0.89691195  -261.99784115    -0.00000899    -0.00000042  0.14D-07  0.87D-07  3764.84
    5     7     7     1.09196759    -0.89691191  -261.99784111    -0.00000954    -0.00000047  0.14D-07  0.96D-07  3764.84
    5     8     8     1.09196967    -0.89691188  -261.99784109    -0.00000984    -0.00000047  0.14D-07  0.99D-07  3764.84
    5     9     9     1.09223266    -0.89764912  -261.99157373    -0.00001034    -0.00000056  0.13D-07  0.13D-06  3764.84
    6     1     1     1.09178131    -0.89636489  -262.00205749    -0.00000048    -0.00000003  0.15D-08  0.53D-08  4701.10
    6     2     2     1.09178101    -0.89636489  -262.00205749    -0.00000051    -0.00000003  0.16D-08  0.56D-08  4701.10
    6     3     3     1.09178119    -0.89636489  -262.00205749    -0.00000053    -0.00000003  0.18D-08  0.61D-08  4701.10
    6     4     4     1.09198717    -0.89691245  -261.99784165    -0.00000045    -0.00000003  0.12D-08  0.68D-08  4701.10
    6     5     5     1.09198689    -0.89691244  -261.99784165    -0.00000047    -0.00000003  0.14D-08  0.75D-08  4701.10
    6     6     6     1.09198627    -0.89691244  -261.99784165    -0.00000050    -0.00000003  0.15D-08  0.76D-08  4701.10
    6     7     7     1.09198702    -0.89691244  -261.99784164    -0.00000053    -0.00000003  0.15D-08  0.77D-08  4701.10
    6     8     8     1.09198651    -0.89691243  -261.99784164    -0.00000055    -0.00000003  0.17D-08  0.80D-08  4701.10
    6     9     9     1.09224885    -0.89764973  -261.99157434    -0.00000061    -0.00000005  0.18D-08  0.14D-07  4701.10
    7     1     1     1.09178131    -0.89636489  -262.00205749     0.00000000    -0.00000003  0.15D-08  0.53D-08  4879.26
    7     2     2     1.09178101    -0.89636489  -262.00205749     0.00000000    -0.00000003  0.16D-08  0.56D-08  4879.26
    7     3     3     1.09178119    -0.89636489  -262.00205749    -0.00000000    -0.00000003  0.18D-08  0.61D-08  4879.26
    7     4     4     1.09198717    -0.89691245  -261.99784165    -0.00000000    -0.00000003  0.12D-08  0.68D-08  4879.26
    7     5     5     1.09198689    -0.89691244  -261.99784165    -0.00000000    -0.00000003  0.14D-08  0.75D-08  4879.26
    7     6     6     1.09198627    -0.89691244  -261.99784165    -0.00000000    -0.00000003  0.15D-08  0.76D-08  4879.26
    7     7     7     1.09198702    -0.89691244  -261.99784164     0.00000000    -0.00000003  0.15D-08  0.77D-08  4879.26
    7     8     8     1.09198651    -0.89691243  -261.99784164    -0.00000000    -0.00000003  0.17D-08  0.80D-08  4879.26
    7     9     9     1.09225294    -0.89764979  -261.99157440    -0.00000005    -0.00000000  0.20D-09  0.11D-08  4879.26


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.1%
 S   0.1%   3.4%
 P   0.3%  24.6%  44.6%

 Initialization:   0.3%
 Other:           26.5%

 Total CPU:     4879.3 seconds
 =====================================



 Wavefunction saved on  5303.2

 Reference coefficients greater than 0.0500000
 =============================================
 22222222222///00          -0.0000000   0.0000000   0.0000000   0.0000000  -0.0000000   0.7783716   0.0000000   0.0663647
                            0.5522238
 2222222222/2/0/0          -0.0000000  -0.0000000  -0.0000000   0.0000000  -0.0000000   0.3317115   0.0000000   0.7072710
                           -0.5522252
 2222222222//2/00           0.6766197  -0.0000000  -0.0000000   0.6765336   0.0000000   0.0000000  -0.0000000   0.0000000
                            0.0000000
 2222222222/2//00           0.0000000   0.6766194  -0.0000000  -0.0000000  -0.6765345   0.0000000   0.0000000  -0.0000000
                           -0.0000000
 2222222222//20/0           0.0000000   0.0000000   0.6766193  -0.0000000   0.0000000  -0.0000000   0.6765337   0.0000000
                           -0.0000000
 22222222222//0/0           0.0000000   0.6766184  -0.0000000  -0.0000000   0.6765345   0.0000000   0.0000000  -0.0000000
                           -0.0000000
 2222222222/2/00/           0.0000000   0.0000000   0.6766184  -0.0000000  -0.0000000  -0.0000000  -0.6765351  -0.0000000
                           -0.0000000
 22222222222//00/          -0.6766179   0.0000000   0.0000000   0.6765351   0.0000000  -0.0000000   0.0000000  -0.0000000
                           -0.0000000
 2222222222//200/          -0.0000000   0.0000000   0.0000000   0.0000000   0.0000000  -0.4466582  -0.0000000   0.6409068
                            0.5522250

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.000000    0.957022    0.000000    0.000001   -0.000000    0.000000    0.000000   -0.000000   -0.000000
 2           0.957022   -0.000000    0.000000    0.000000    0.000000   -0.000000   -0.000001   -0.000000    0.000000
 3          -0.000000   -0.000000    0.957022    0.000000   -0.000000    0.000001   -0.000000    0.000000    0.000000
 4          -0.000000   -0.000001   -0.000000    0.956932    0.000000    0.000000   -0.000000    0.000000    0.000000
 5          -0.000000   -0.000000    0.000000    0.000000    0.000000    0.000000    0.956932   -0.000000   -0.000000
 6           0.000000    0.000000   -0.000000   -0.000000   -0.802753   -0.000000    0.000000    0.520871    0.000001
 7           0.000000   -0.000000   -0.000001   -0.000000   -0.000000    0.956932   -0.000000    0.000000   -0.000000
 8          -0.000000    0.000000    0.000000   -0.000000    0.520871    0.000000    0.000000    0.802753    0.000000
 9          -0.000000    0.000000   -0.000000   -0.000000    0.000001    0.000000    0.000000   -0.000001    0.956804

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.957022    0.000000    0.000000    0.000000    0.000000    0.000000   -0.000000    0.000000    0.000000
 2           0.000000    0.957022   -0.000000   -0.000000   -0.000000    0.000000   -0.000000   -0.000000   -0.000000
 3           0.000000   -0.000000    0.957022   -0.000000   -0.000000   -0.000000   -0.000000    0.000000   -0.000000
 4           0.000000   -0.000000   -0.000000    0.956932   -0.000000    0.000000    0.000000   -0.000000   -0.000000
 5           0.000000   -0.000000   -0.000000   -0.000000    0.956932   -0.000000    0.000000   -0.000000   -0.000000
 6           0.000000    0.000000   -0.000000    0.000000   -0.000000    0.956932    0.000000    0.000000    0.000000
 7          -0.000000   -0.000000   -0.000000    0.000000    0.000000    0.000000    0.956932   -0.000000    0.000000
 8           0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.956932    0.000000
 9           0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.000000    0.000000    0.956804


 RESULTS FOR STATE 1.2
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.95702155 (fixed)   0.95702942 (relaxed)   0.95702155 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00004815   -0.00011446   -0.77841390
 Singles      0.01203843   -0.04650939   -0.05248283
 Pairs        0.07974730    0.00000000   -0.06546817
 Total        1.09183388   -0.04662385   -0.89636489
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -261.10569260
 Nuclear energy                         0.00000000
 Kinetic energy                        83.11161675
 One electron energy                 -448.96769824
 Two electron energy                  186.96564074
 Virial quotient                       -3.15241199
 Correlation energy                    -0.89636489
 !MRCI STATE 1.2 Energy              -262.002057492038

 Properties without orbital relaxation:

 !MRCI STATE 1.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -262.08437416 (Davidson, fixed reference)
 Cluster corrected energies          -262.08435806 (Davidson, relaxed reference)
 Cluster corrected energies          -262.08437416 (Davidson, rotated reference)

 Cluster corrected energies          -262.08290454 (Pople, fixed reference)
 Cluster corrected energies          -262.08288747 (Pople, relaxed reference)
 Cluster corrected energies          -262.08290454 (Pople, rotated reference)



 RESULTS FOR STATE 2.2
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.95702168 (fixed)   0.95702955 (relaxed)   0.95702168 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00004815   -0.00011446   -0.77841431
 Singles      0.01203833   -0.04650916   -0.05248269
 Pairs        0.07974711   -0.00000000   -0.06546789
 Total        1.09183358   -0.04662362   -0.89636489
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -261.10569260
 Nuclear energy                         0.00000000
 Kinetic energy                        83.11161684
 One electron energy                 -448.96770200
 Two electron energy                  186.96564451
 Virial quotient                       -3.15241199
 Correlation energy                    -0.89636489
 !MRCI STATE 2.2 Energy              -262.002057490542

 Properties without orbital relaxation:

 !MRCI STATE 2.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -262.08437389 (Davidson, fixed reference)
 Cluster corrected energies          -262.08435779 (Davidson, relaxed reference)
 Cluster corrected energies          -262.08437389 (Davidson, rotated reference)

 Cluster corrected energies          -262.08290425 (Pople, fixed reference)
 Cluster corrected energies          -262.08288718 (Pople, relaxed reference)
 Cluster corrected energies          -262.08290425 (Pople, rotated reference)



 RESULTS FOR STATE 3.2
 =====================

 Coefficient of reference function:   C(0) = 0.95702160 (fixed)   0.95702948 (relaxed)   0.95702160 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00004815   -0.00011446   -0.77841435
 Singles      0.01203818   -0.04650899   -0.05248243
 Pairs        0.07974743   -0.00000000   -0.06546812
 Total        1.09183376   -0.04662345   -0.89636489
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -261.10569260
 Nuclear energy                         0.00000000
 Kinetic energy                        83.11161019
 One electron energy                 -448.96770584
 Two electron energy                  186.96564835
 Virial quotient                       -3.15241224
 Correlation energy                    -0.89636489
 !MRCI STATE 3.2 Energy              -262.002057490115

 Properties without orbital relaxation:

 !MRCI STATE 3.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -262.08437405 (Davidson, fixed reference)
 Cluster corrected energies          -262.08435795 (Davidson, relaxed reference)
 Cluster corrected energies          -262.08437405 (Davidson, rotated reference)

 Cluster corrected energies          -262.08290442 (Pople, fixed reference)
 Cluster corrected energies          -262.08288735 (Pople, relaxed reference)
 Cluster corrected energies          -262.08290442 (Pople, rotated reference)



 RESULTS FOR STATE 4.2
 =====================

 Coefficient of reference function:   C(0) = 0.95693185 (fixed)   0.95693815 (relaxed)   0.95693185 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00004708   -0.00012365   -0.77864734
 Singles      0.01209192   -0.04664173   -0.05264456
 Pairs        0.07989959   -0.00000000   -0.06562054
 Total        1.09203858   -0.04676538   -0.89691245
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -261.10092921
 Nuclear energy                         0.00000000
 Kinetic energy                        83.11537130
 One electron energy                 -448.97599303
 Two electron energy                  186.97815138
 Virial quotient                       -3.15221887
 Correlation energy                    -0.89691245
 !MRCI STATE 4.2 Energy              -261.997841653176

 Properties without orbital relaxation:

 !MRCI STATE 4.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -262.08039220 (Davidson, fixed reference)
 Cluster corrected energies          -262.08037930 (Davidson, relaxed reference)
 Cluster corrected energies          -262.08039220 (Davidson, rotated reference)

 Cluster corrected energies          -262.07893277 (Pople, fixed reference)
 Cluster corrected energies          -262.07891908 (Pople, relaxed reference)
 Cluster corrected energies          -262.07893277 (Pople, rotated reference)



 RESULTS FOR STATE 5.2
 =====================

 Maximum overlap with reference state  7

 Coefficient of reference function:   C(0) = 0.95693197 (fixed)   0.95693828 (relaxed)   0.95693197 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00004708   -0.00012365   -0.77864776
 Singles      0.01209179   -0.04664150   -0.05264439
 Pairs        0.07989943    0.00000000   -0.06562030
 Total        1.09203830   -0.04676514   -0.89691244
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -261.10092921
 Nuclear energy                         0.00000000
 Kinetic energy                        83.11537026
 One electron energy                 -448.97599708
 Two electron energy                  186.97815543
 Virial quotient                       -3.15221891
 Correlation energy                    -0.89691244
 !MRCI STATE 5.2 Energy              -261.997841650413

 Properties without orbital relaxation:

 !MRCI STATE 5.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -262.08039195 (Davidson, fixed reference)
 Cluster corrected energies          -262.08037904 (Davidson, relaxed reference)
 Cluster corrected energies          -262.08039195 (Davidson, rotated reference)

 Cluster corrected energies          -262.07893250 (Pople, fixed reference)
 Cluster corrected energies          -262.07891881 (Pople, relaxed reference)
 Cluster corrected energies          -262.07893250 (Pople, rotated reference)



 RESULTS FOR STATE 6.2
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.80275308 (fixed)   0.95693855 (relaxed)   0.95693224 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00004708   -0.00012364   -0.77864703
 Singles      0.01209190   -0.04664159   -0.05264443
 Pairs        0.07989870   -0.00000119   -0.06562099
 Total        1.09203768   -0.04676642   -0.89691244
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -261.10092921
 Nuclear energy                         0.00000000
 Kinetic energy                        83.11536277
 One electron energy                 -448.97602750
 Two electron energy                  186.97818585
 Virial quotient                       -3.15221919
 Correlation energy                    -0.89691244
 !MRCI STATE 6.2 Energy              -261.997841649345

 Properties without orbital relaxation:

 !MRCI STATE 6.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -262.08039139 (Davidson, fixed reference)
 Cluster corrected energies          -262.08037848 (Davidson, relaxed reference)
 Cluster corrected energies          -262.08039139 (Davidson, rotated reference)

 Cluster corrected energies          -262.07893191 (Pople, fixed reference)
 Cluster corrected energies          -262.07891822 (Pople, relaxed reference)
 Cluster corrected energies          -262.07893191 (Pople, rotated reference)



 RESULTS FOR STATE 7.2
 =====================

 Maximum overlap with reference state  6

 Coefficient of reference function:   C(0) = 0.95693191 (fixed)   0.95693822 (relaxed)   0.95693191 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00004708   -0.00012365   -0.77864775
 Singles      0.01209169   -0.04664140   -0.05264415
 Pairs        0.07989967    0.00000000   -0.06562054
 Total        1.09203844   -0.04676504   -0.89691244
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -261.10092921
 Nuclear energy                         0.00000000
 Kinetic energy                        83.11536610
 One electron energy                 -448.97600813
 Two electron energy                  186.97816648
 Virial quotient                       -3.15221907
 Correlation energy                    -0.89691244
 !MRCI STATE 7.2 Energy              -261.997841643634

 Properties without orbital relaxation:

 !MRCI STATE 7.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -262.08039206 (Davidson, fixed reference)
 Cluster corrected energies          -262.08037915 (Davidson, relaxed reference)
 Cluster corrected energies          -262.08039206 (Davidson, rotated reference)

 Cluster corrected energies          -262.07893262 (Pople, fixed reference)
 Cluster corrected energies          -262.07891893 (Pople, relaxed reference)
 Cluster corrected energies          -262.07893262 (Pople, rotated reference)



 RESULTS FOR STATE 8.2
 =====================

 Coefficient of reference function:   C(0) = 0.80275301 (fixed)   0.95693845 (relaxed)   0.95693214 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00004708   -0.00012364   -0.77864762
 Singles      0.01209187   -0.04664163   -0.05264430
 Pairs        0.07989896   -0.00000030   -0.06562052
 Total        1.09203792   -0.04676558   -0.89691243
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -261.10092921
 Nuclear energy                         0.00000000
 Kinetic energy                        83.11536447
 One electron energy                 -448.97603538
 Two electron energy                  186.97819375
 Virial quotient                       -3.15221913
 Correlation energy                    -0.89691243
 !MRCI STATE 8.2 Energy              -261.997841636352

 Properties without orbital relaxation:

 !MRCI STATE 8.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -262.08039159 (Davidson, fixed reference)
 Cluster corrected energies          -262.08037868 (Davidson, relaxed reference)
 Cluster corrected energies          -262.08039159 (Davidson, rotated reference)

 Cluster corrected energies          -262.07893212 (Pople, fixed reference)
 Cluster corrected energies          -262.07891843 (Pople, relaxed reference)
 Cluster corrected energies          -262.07893212 (Pople, rotated reference)



 RESULTS FOR STATE 9.2
 =====================

 Coefficient of reference function:   C(0) = 0.95680435 (fixed)   0.95680951 (relaxed)   0.95680435 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00007022   -0.00020542   -0.00024576
 Singles      0.01213911   -0.04667365   -0.05270345
 Pairs        0.08012031   -0.85077071   -0.84470057
 Total        1.09232964   -0.89764978   -0.89764979
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -261.09392461
 Nuclear energy                         0.00000000
 Kinetic energy                        83.11997471
 One electron energy                 -448.98338460
 Two electron energy                  186.99181021
 Virial quotient                       -3.15196889
 Correlation energy                    -0.89764979
 !MRCI STATE 9.2 Energy              -261.991574395704

 Properties without orbital relaxation:

 !MRCI STATE 9.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -262.07445408 (Davidson, fixed reference)
 Cluster corrected energies          -262.07444350 (Davidson, relaxed reference)
 Cluster corrected energies          -262.07445408 (Davidson, rotated reference)

 Cluster corrected energies          -262.07300934 (Pople, fixed reference)
 Cluster corrected energies          -262.07299812 (Pople, relaxed reference)
 Cluster corrected energies          -262.07300934 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       94.20       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       7     8055.78       700     1000      520     2100     2140     5203     5303   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *     18549.44   5261.66  13263.83     11.95      1.42     10.16
 REAL TIME  *     19192.05 SEC
 DISK USED  *         7.96 GB (local),      128.75 GB (total)
 SF USED    *        48.64 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(13)    =      -262.08437416  AU                              
 SETTING HLSDIAG(14)    =      -262.08437389  AU                              
 SETTING HLSDIAG(15)    =      -262.08437405  AU                              
 SETTING HLSDIAG(16)    =      -262.08039220  AU                              
 SETTING HLSDIAG(17)    =      -262.08039195  AU                              
 SETTING HLSDIAG(18)    =      -262.08039139  AU                              
 SETTING HLSDIAG(19)    =      -262.08039206  AU                              
 SETTING HLSDIAG(20)    =      -262.08039159  AU                              
 SETTING HLSDIAG(21)    =      -262.07445408  AU                              


         HLSDIAG
    -262.3602542
    -262.3602542
    -262.3602516
    -262.0789382
    -262.0789382
    -262.0789382
    -262.0789381
    -262.0789381
    -262.0761892
    -262.0761893
    -262.0761893
    -262.0746195
    -262.0843742
    -262.0843739
    -262.0843740
    -262.0803922
    -262.0803919
    -262.0803914
    -262.0803921
    -262.0803916
    -262.0744541
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Diagonal elements of H will be replaced by values from variable HLSDIAG


   ******************************
   *** Spin-orbit calculation ***
   ******************************


   Spin-orbit matrix elements
   ==========================

 Wavefunction restored from record  5203.2  Symmetry=2  S= 0.5  NSTATE=  12

 Original energies:   -262.268467   -262.268467   -262.268467   -261.996306   -261.996306   -261.996306   -261.996306   -261.996306
                      -261.992997   -261.992997   -261.992997   -261.991653
 Replaced energies:   -262.360254   -262.360254   -262.360252   -262.078938   -262.078938   -262.078938   -262.078938   -262.078938
                      -262.076189   -262.076189   -262.076189   -262.074619

 Wavefunction restored from record  5303.2  Symmetry=2  S= 1.5  NSTATE=   9

 Original energies:   -262.002057   -262.002057   -262.002057   -261.997842   -261.997842   -261.997842   -261.997842   -261.997842
                      -261.991574
 Replaced energies:   -262.084374   -262.084374   -262.084374   -262.080392   -262.080392   -262.080391   -262.080392   -262.080392
                      -262.074454



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=  -262.36025423

 Wigner-Eckart theorem used for 23 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00    7281.82     -61.37      69.78    -448.24    -328.57    -164.27     177.20    -323.56     -14.94

    2   2.2  0.5  0.5       0.00       0.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                        -7281.82      -0.00      13.95      37.74     -78.26     176.08     362.45     449.69      14.93    -323.56

    3   3.2  0.5  0.5       0.00       0.00       0.58       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           61.37     -13.95       0.00    -650.68      96.58    -211.03      26.43     135.07       0.49       2.76

    4   4.2  0.5  0.5       0.00       0.00       0.00   61741.73       0.00       0.00       0.00       0.00       0.00       0.00
                          -69.78     -37.74     650.68       0.00     546.47     854.49   -1224.35    1173.53    -163.20     265.33

    5   5.2  0.5  0.5       0.00       0.00       0.00       0.00   61741.74       0.00       0.00       0.00       0.00       0.00
                          448.24      78.26     -96.58    -546.47      -0.00    1157.67   -3845.39       1.09     398.19   -1789.37

    6   6.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00   61741.74       0.00       0.00       0.00       0.00
                          328.57    -176.08     211.03    -854.49   -1157.67       0.00    1847.31   -3587.87    -647.52   -1358.79

    7   7.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00   61741.75       0.00       0.00       0.00
                          164.27    -362.45     -26.43    1224.35    3845.39   -1847.31       0.00     303.74   -1429.24    -728.56

    8   8.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00   61741.76       0.00       0.00
                         -177.20    -449.69    -135.07   -1173.53      -1.09    3587.87    -303.74      -0.00   -1844.33     631.88

    9   9.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   62345.06       0.00
                          323.56     -14.93      -0.49     163.20    -398.19     647.52    1429.24    1844.33       0.00    1042.19

   10  10.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   62345.06
                           14.94     323.56      -2.76    -265.33    1789.37    1358.79     728.56    -631.88   -1042.19      -0.00

   11  11.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -2.90       1.70      -0.01   -2624.22     395.56    -846.73     108.00     541.23      -5.04      -9.56

   12  12.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            1.63       7.16     849.34       0.00       0.00       0.00      -0.00       0.00      44.97     -23.70

   13   1.2  0.5 -0.5      -0.00      62.05    7270.65     -30.51     122.16     223.02    -461.23     306.92      -2.97       0.94
                           -0.00     -10.51     406.55     105.61    -427.50     487.88     -35.80    -250.17       0.45       0.08

   14   2.2  0.5 -0.5     -62.05      -0.00    -406.45    -544.08    -330.85     277.33      -9.29    -115.34       0.14      -2.82
                           10.51       0.00    7270.89      -5.30    -120.39    -237.90     460.61    -298.74      -0.24       1.54

   15   3.2  0.5 -0.5   -7270.65     406.45      -0.00     -42.48     106.53    -162.03    -351.53    -457.35      -3.15    -323.92
                         -406.55   -7270.89       0.00      68.35    -441.50    -336.53    -188.11     154.63     323.93      -3.16

   16   4.2  0.5 -0.5      30.51     544.08      42.48       0.00   -2126.23   -2132.56   -1122.09    1123.29    2196.96     -22.32
                         -105.61       5.30     -68.35       0.00    -909.52    1510.27    2824.47    4136.61       1.52     427.20

   17   5.2  0.5 -0.5    -122.16     330.85    -106.53    2126.23      -0.00    3226.94     384.97   -2465.27    1309.44     554.90
                          427.50     120.39     441.50     909.52      -0.00    -119.20    2252.92    -434.92     565.45   -1705.16

   18   6.2  0.5 -0.5    -223.02    -277.33     162.03    2132.56   -3226.94       0.00   -2232.18    -456.45   -1157.89     844.45
                         -487.88     237.90     336.53   -1510.27     119.20       0.00    1192.82   -1210.89     868.33    2004.53

   19   7.2  0.5 -0.5     461.23       9.29     351.53    1122.09    -384.97    2232.18      -0.00    1729.30     124.05   -1860.46
                           35.80    -460.61     188.11   -2824.47   -2252.92   -1192.82      -0.00     210.87   -1847.87    -232.27

   20   8.2  0.5 -0.5    -306.92     115.34     457.35   -1123.29    2465.27     456.45   -1729.30      -0.00     408.71    1251.38
                          250.17     298.74    -154.63   -4136.61     434.92    1210.89    -210.87       0.00    1249.16    -949.92

   21   9.2  0.5 -0.5       2.97      -0.14       3.15   -2196.96   -1309.44    1157.89    -124.05    -408.71       0.00       9.61
                           -0.45       0.24    -323.93      -1.52    -565.45    -868.33    1847.87   -1249.16      -0.00      -4.95

   22  10.2  0.5 -0.5      -0.94       2.82     323.92      22.32    -554.90    -844.45    1860.46   -1251.38      -9.61      -0.00
                           -0.08      -1.54       3.16    -427.20    1705.16   -2004.53     232.27     949.92       4.95      -0.00

   23  11.2  0.5 -0.5     323.40     -18.07       1.07    -169.71     428.52    -656.82   -1410.98   -1847.71      10.12    1042.16
                           18.08     323.41       0.23     274.13   -1773.92   -1362.81    -758.83     627.38   -1042.19      10.16

   24  12.2  0.5 -0.5     -47.40    -847.98       7.24      -0.00       0.00       0.00       0.00      -0.00   -4901.55      47.59
                          848.01     -47.42      -1.23      -0.00       0.00      -0.00      -0.00      -0.00     -47.80   -4901.70

   25   1.2  1.5  1.5   -1236.10      69.12       1.79     126.51    -279.16     427.62     946.41    1228.97     -25.42   -2606.56
                           68.90    1232.40     -10.52     183.18   -1185.48    -902.75    -492.81     405.47   -2612.60      25.37

   26   2.2  1.5  1.5       2.37      10.40    1234.52       0.06    -375.13    -554.62    1228.62    -838.38     -23.97      12.63
                           -0.00       0.00       0.00     276.54   -1122.92    1339.90    -163.64    -623.74       0.00      -0.00

   27   3.2  1.5  1.5      -0.00       0.00       0.00   -1460.27    -864.99     773.87     -85.18    -249.84       0.00      -0.00
                            2.37      10.43    1237.68      -0.06     376.63     556.85   -1233.55     841.74     -23.93      12.61

   28   4.2  1.5  1.5    1252.51     -70.03      -1.81     123.83    -273.25     418.56     926.35    1202.92     -13.78   -1413.17
                           69.83    1249.09     -10.66    -180.78    1169.91     890.89     486.33    -400.14    1406.96     -13.66

   29   5.2  1.5  1.5       2.40      10.54    1251.05      -0.06     370.25     547.41   -1212.65     827.48      12.92      -6.81
                            0.00      -0.00      -0.00    3152.67     602.96    -209.95       7.22    -120.09      -0.00       0.00

   30   6.2  1.5  1.5      80.60    1441.72     -12.30     -30.52     197.54     150.43      82.12     -67.56    1622.81     -15.75
                         -827.42      46.27       1.20    -202.78     447.44    -685.38   -1516.88   -1969.76       9.10     933.07

   31   7.2  1.5  1.5       0.00      -0.00      -0.00   -1991.58    1359.29   -1877.67     238.57     983.41       0.00       0.00
                            2.40      10.57    1254.67       0.06    -368.67    -545.07    1207.47    -823.95      12.97      -6.84

   32   8.2  1.5  1.5       6.87     122.88      -1.05     358.03   -2317.02   -1764.42    -963.18     792.48     138.34      -1.34
                         1187.23     -66.38      -1.72    -141.30     311.79    -477.59   -1057.01   -1372.59     -13.06   -1338.82

   33   9.2  1.5  1.5    -125.21   -2239.84      19.12       0.00      -0.02      -0.02      -0.01       0.01   -1330.67      12.92
                        -2239.70     125.23       3.24      -0.01       0.01      -0.02      -0.04      -0.05      12.95    1328.00

   34   1.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00    2010.47    -289.34     644.56     -89.54    -428.01      -0.00      -0.00

   35   2.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           79.55    1423.04     -12.14    -211.52    1368.84    1042.38     569.03    -468.18   -3016.88      29.28

   36   3.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         1427.25     -79.81      -2.06     146.07    -322.30     493.70    1092.66    1418.88      29.36    3010.63

   37   4.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00    1333.13    2266.76   -2412.83     284.13     998.41      -0.00       0.00

   38   5.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -80.63   -1442.30      12.31    -208.74    1350.85    1028.68     561.55    -462.03   -1624.73      15.78

   39   6.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            1.36       5.99     710.67      -0.13     769.49    1137.68   -2520.24    1719.75       7.34      -3.87

   40   7.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                        -1446.44      80.88       2.09     142.98    -315.49     483.26    1069.56    1388.88      15.92    1632.57

   41   8.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            2.90      12.77    1515.15       0.06    -360.36    -532.78    1180.24    -805.36      15.64      -8.24

   42   9.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            4.96      21.83    2590.20       0.00      -0.32      -0.48       1.06      -0.72      14.08      -7.42

   43   1.2  1.5 -0.5    -713.66      39.90       1.03      73.04    -161.18     246.89     546.41     709.54     -14.68   -1504.90
                          -39.78    -711.53       6.07    -105.76     684.44     521.20     284.52    -234.10    1508.39     -14.65

   44   2.2  1.5 -0.5       1.37       6.01     712.75       0.04    -216.58    -320.21     709.34    -484.04     -13.84       7.29
                            0.00      -0.00      -0.00    -159.66     648.32    -773.59      94.48     360.12      -0.00       0.00

   45   3.2  1.5 -0.5      -0.00       0.00       0.00    -843.09    -499.40     446.79     -49.18    -144.24       0.00      -0.00
                           -1.37      -6.02    -714.57       0.04    -217.45    -321.50     712.19    -485.98      13.81      -7.28

   46   4.2  1.5 -0.5     723.14     -40.43      -1.04      71.50    -157.76     241.65     534.83     694.51      -7.96    -815.89
                          -40.32    -721.16       6.15     104.37    -675.45    -514.36    -280.78     231.02    -812.31       7.89

   47   5.2  1.5 -0.5       1.38       6.09     722.29      -0.04     213.77     316.05    -700.13     477.75       7.46      -3.93
                           -0.00       0.00       0.00   -1820.19    -348.12     121.21      -4.17      69.33       0.00      -0.00

   48   6.2  1.5 -0.5      46.53     832.38      -7.10     -17.62     114.05      86.85      47.41     -39.01     936.93      -9.10
                          477.71     -26.71      -0.69     117.07    -258.33     395.70     875.77    1137.24      -5.25    -538.71

   49   7.2  1.5 -0.5       0.00      -0.00      -0.00   -1149.84     784.79   -1084.07     137.74     567.77       0.00       0.00
                           -1.39      -6.11    -724.38      -0.04     212.85     314.70    -697.13     475.71      -7.49       3.95

   50   8.2  1.5 -0.5       3.96      70.95      -0.61     206.71   -1337.73   -1018.69    -556.09     457.54      79.87      -0.77
                         -685.44      38.33       0.99      81.58    -180.01     275.74     610.26     792.47       7.54     772.97

   51   9.2  1.5 -0.5     -72.29   -1293.17      11.04       0.00      -0.01      -0.01      -0.00       0.00    -768.26       7.46
                         1293.09     -72.30      -1.87       0.00      -0.01       0.01       0.02       0.03      -7.48    -766.72

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

    1   1.2  0.5  0.5       0.00       0.00      -0.00     -62.05   -7270.65      30.51    -122.16    -223.02     461.23    -306.92
                            2.90      -1.63       0.00     -10.51     406.55     105.61    -427.50     487.88     -35.80    -250.17

    2   2.2  0.5  0.5       0.00       0.00      62.05      -0.00     406.45     544.08     330.85    -277.33       9.29     115.34
                           -1.70      -7.16      10.51      -0.00    7270.89      -5.30    -120.39    -237.90     460.61    -298.74

    3   3.2  0.5  0.5       0.00       0.00    7270.65    -406.45      -0.00      42.48    -106.53     162.03     351.53     457.35
                            0.01    -849.34    -406.55   -7270.89      -0.00      68.35    -441.50    -336.53    -188.11     154.63

    4   4.2  0.5  0.5       0.00       0.00     -30.51    -544.08     -42.48       0.00    2126.23    2132.56    1122.09   -1123.29
                         2624.22      -0.00    -105.61       5.30     -68.35      -0.00    -909.52    1510.27    2824.47    4136.61

    5   5.2  0.5  0.5       0.00       0.00     122.16    -330.85     106.53   -2126.23      -0.00   -3226.94    -384.97    2465.27
                         -395.56      -0.00     427.50     120.39     441.50     909.52       0.00    -119.20    2252.92    -434.92

    6   6.2  0.5  0.5       0.00       0.00     223.02     277.33    -162.03   -2132.56    3226.94       0.00    2232.18     456.45
                          846.73      -0.00    -487.88     237.90     336.53   -1510.27     119.20      -0.00    1192.82   -1210.89

    7   7.2  0.5  0.5       0.00       0.00    -461.23      -9.29    -351.53   -1122.09     384.97   -2232.18      -0.00   -1729.30
                         -108.00       0.00      35.80    -460.61     188.11   -2824.47   -2252.92   -1192.82       0.00     210.87

    8   8.2  0.5  0.5       0.00       0.00     306.92    -115.34    -457.35    1123.29   -2465.27    -456.45    1729.30      -0.00
                         -541.23      -0.00     250.17     298.74    -154.63   -4136.61     434.92    1210.89    -210.87      -0.00

    9   9.2  0.5  0.5       0.00       0.00      -2.97       0.14      -3.15    2196.96    1309.44   -1157.89     124.05     408.71
                            5.04     -44.97      -0.45       0.24    -323.93      -1.52    -565.45    -868.33    1847.87   -1249.16

   10  10.2  0.5  0.5       0.00       0.00       0.94      -2.82    -323.92     -22.32     554.90     844.45   -1860.46    1251.38
                            9.56      23.70      -0.08      -1.54       3.16    -427.20    1705.16   -2004.53     232.27     949.92

   11  11.2  0.5  0.5   62345.05       0.00    -323.40      18.07      -1.07     169.71    -428.52     656.82    1410.98    1847.71
                            0.00   -4901.72      18.08     323.41       0.23     274.13   -1773.92   -1362.81    -758.83     627.38

   12  12.2  0.5  0.5       0.00   62689.58      47.40     847.98      -7.24       0.00      -0.00      -0.00      -0.00       0.00
                         4901.72      -0.00     848.01     -47.42      -1.23      -0.00       0.00      -0.00      -0.00      -0.00

   13   1.2  0.5 -0.5    -323.40      47.40       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -18.08    -848.01      -0.00   -7281.82      61.37     -69.78     448.24     328.57     164.27    -177.20

   14   2.2  0.5 -0.5      18.07     847.98       0.00       0.01       0.00       0.00       0.00       0.00       0.00       0.00
                         -323.41      47.42    7281.82       0.00     -13.95     -37.74      78.26    -176.08    -362.45    -449.69

   15   3.2  0.5 -0.5      -1.07      -7.24       0.00       0.00       0.58       0.00       0.00       0.00       0.00       0.00
                           -0.23       1.23     -61.37      13.95      -0.00     650.68     -96.58     211.03     -26.43    -135.07

   16   4.2  0.5 -0.5     169.71       0.00       0.00       0.00       0.00   61741.73       0.00       0.00       0.00       0.00
                         -274.13       0.00      69.78      37.74    -650.68      -0.00    -546.47    -854.49    1224.35   -1173.53

   17   5.2  0.5 -0.5    -428.52      -0.00       0.00       0.00       0.00       0.00   61741.74       0.00       0.00       0.00
                         1773.92      -0.00    -448.24     -78.26      96.58     546.47       0.00   -1157.67    3845.39      -1.09

   18   6.2  0.5 -0.5     656.82      -0.00       0.00       0.00       0.00       0.00       0.00   61741.74       0.00       0.00
                         1362.81       0.00    -328.57     176.08    -211.03     854.49    1157.67      -0.00   -1847.31    3587.87

   19   7.2  0.5 -0.5    1410.98      -0.00       0.00       0.00       0.00       0.00       0.00       0.00   61741.75       0.00
                          758.83       0.00    -164.27     362.45      26.43   -1224.35   -3845.39    1847.31      -0.00    -303.74

   20   8.2  0.5 -0.5    1847.71       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   61741.76
                         -627.38       0.00     177.20     449.69     135.07    1173.53       1.09   -3587.87     303.74       0.00

   21   9.2  0.5 -0.5     -10.12    4901.55       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         1042.19      47.80    -323.56      14.93       0.49    -163.20     398.19    -647.52   -1429.24   -1844.33

   22  10.2  0.5 -0.5   -1042.16     -47.59       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -10.16    4901.70     -14.94    -323.56       2.76     265.33   -1789.37   -1358.79    -728.56     631.88

   23  11.2  0.5 -0.5       0.00     -45.20       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      23.26       2.90      -1.70       0.01    2624.22    -395.56     846.73    -108.00    -541.23

   24  12.2  0.5 -0.5      45.20      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -23.26      -0.00      -1.63      -7.16    -849.34      -0.00      -0.00      -0.00       0.00      -0.00

   25   1.2  1.5  1.5     -12.37      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           24.10       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   26   2.2  1.5  1.5   -2612.29       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00   -2574.93      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   27   3.2  1.5  1.5      -0.00    2574.63       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                        -2607.14       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   28   4.2  1.5  1.5      -6.71      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -12.98       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   29   5.2  1.5  1.5    1407.69       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -5.20      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   30   6.2  1.5  1.5     -14.97       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            4.43       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   31   7.2  1.5  1.5      -0.00      -5.17       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         1413.47      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   32   8.2  1.5  1.5      -1.27       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -6.35      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   33   9.2  1.5  1.5      12.27       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            6.30      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   34   1.2  1.5  0.5       0.00       0.00    -713.66      39.90       1.03      73.04    -161.18     246.89     546.41     709.54
                            0.00    2973.19      39.78     711.53      -6.07     105.76    -684.44    -521.20    -284.52     234.10

   35   2.2  1.5  0.5       0.00       0.00       1.37       6.01     712.75       0.04    -216.58    -320.21     709.34    -484.04
                           27.82      -0.00      -0.00       0.00       0.00     159.66    -648.32     773.59     -94.48    -360.12

   36   3.2  1.5  0.5       0.00       0.00      -0.00       0.00       0.00    -843.09    -499.40     446.79     -49.18    -144.24
                           14.29       0.00       1.37       6.02     714.57      -0.04     217.45     321.50    -712.19     485.98

   37   4.2  1.5  0.5       0.00       0.00     723.14     -40.43      -1.04      71.50    -157.76     241.65     534.83     694.51
                            0.00      -5.81      40.32     721.16      -6.15    -104.37     675.45     514.36     280.78    -231.02

   38   5.2  1.5  0.5       0.00       0.00       1.38       6.09     722.29      -0.04     213.77     316.05    -700.13     477.75
                           14.98       0.00       0.00      -0.00      -0.00    1820.19     348.12    -121.21       4.17     -69.33

   39   6.2  1.5  0.5       0.00       0.00      46.53     832.38      -7.10     -17.62     114.05      86.85      47.41     -39.01
                          799.40       0.00    -477.71      26.71       0.69    -117.07     258.33    -395.70    -875.77   -1137.24

   40   7.2  1.5  0.5       0.00       0.00       0.00      -0.00      -0.00   -1149.84     784.79   -1084.07     137.74     567.77
                            7.75      -0.00       1.39       6.11     724.38       0.04    -212.85    -314.70     697.13    -475.71

   41   8.2  1.5  0.5       0.00       0.00       3.96      70.95      -0.61     206.71   -1337.73   -1018.69    -556.09     457.54
                         1704.59      -0.00     685.44     -38.33      -0.99     -81.58     180.01    -275.74    -610.26    -792.47

   42   9.2  1.5  0.5       0.00       0.00     -72.29   -1293.17      11.04       0.00      -0.01      -0.01      -0.00       0.00
                         1534.77      -0.00   -1293.09      72.30       1.87      -0.00       0.01      -0.01      -0.02      -0.03

   43   1.2  1.5 -0.5      -7.14      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -13.91      -0.00       0.00       0.00       0.00    2010.47    -289.34     644.56     -89.54    -428.01

   44   2.2  1.5 -0.5   -1508.21       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00    1486.63      79.55    1423.04     -12.14    -211.52    1368.84    1042.38     569.03    -468.18

   45   3.2  1.5 -0.5      -0.00    1486.46       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         1505.23      -0.00    1427.25     -79.81      -2.06     146.07    -322.30     493.70    1092.66    1418.88

   46   4.2  1.5 -0.5      -3.87      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            7.49      -0.00       0.00      -0.00       0.00    1333.13    2266.76   -2412.83     284.13     998.41

   47   5.2  1.5 -0.5     812.73       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       3.00     -80.63   -1442.30      12.31    -208.74    1350.85    1028.68     561.55    -462.03

   48   6.2  1.5 -0.5      -8.64       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -2.56      -0.00       1.36       5.99     710.67      -0.13     769.49    1137.68   -2520.24    1719.75

   49   7.2  1.5 -0.5      -0.00      -2.99       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -816.07       0.00   -1446.44      80.88       2.09     142.98    -315.49     483.26    1069.56    1388.88

   50   8.2  1.5 -0.5      -0.74       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            3.67       0.00       2.90      12.77    1515.15       0.06    -360.36    -532.78    1180.24    -805.36

   51   9.2  1.5 -0.5       7.08       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -3.64       0.00       4.96      21.83    2590.20       0.00      -0.32      -0.48       1.06      -0.72

   52   1.2  1.5 -1.5       0.00       0.00   -1236.10      69.12       1.79     126.51    -279.16     427.62     946.41    1228.97
                           -0.00      -0.00     -68.90   -1232.40      10.52    -183.18    1185.48     902.75     492.81    -405.47

   53   2.2  1.5 -1.5       0.00       0.00       2.37      10.40    1234.52       0.06    -375.13    -554.62    1228.62    -838.38
                           -0.00      -0.00       0.00      -0.00      -0.00    -276.54    1122.92   -1339.90     163.64     623.74

   54   3.2  1.5 -1.5       0.00       0.00      -0.00       0.00       0.00   -1460.27    -864.99     773.87     -85.18    -249.84
                           -0.00      -0.00      -2.37     -10.43   -1237.68       0.06    -376.63    -556.85    1233.55    -841.74

   55   4.2  1.5 -1.5       0.00       0.00    1252.51     -70.03      -1.81     123.83    -273.25     418.56     926.35    1202.92
                           -0.00      -0.00     -69.83   -1249.09      10.66     180.78   -1169.91    -890.89    -486.33     400.14

   56   5.2  1.5 -1.5       0.00       0.00       2.40      10.54    1251.05      -0.06     370.25     547.41   -1212.65     827.48
                           -0.00      -0.00      -0.00       0.00       0.00   -3152.67    -602.96     209.95      -7.22     120.09

   57   6.2  1.5 -1.5       0.00       0.00      80.60    1441.72     -12.30     -30.52     197.54     150.43      82.12     -67.56
                           -0.00      -0.00     827.42     -46.27      -1.20     202.78    -447.44     685.38    1516.88    1969.76

   58   7.2  1.5 -1.5       0.00       0.00       0.00      -0.00      -0.00   -1991.58    1359.29   -1877.67     238.57     983.41
                           -0.00      -0.00      -2.40     -10.57   -1254.67      -0.06     368.67     545.07   -1207.47     823.95

   59   8.2  1.5 -1.5       0.00       0.00       6.87     122.88      -1.05     358.03   -2317.02   -1764.42    -963.18     792.48
                           -0.00      -0.00   -1187.23      66.38       1.72     141.30    -311.79     477.59    1057.01    1372.59

   60   9.2  1.5 -1.5       0.00       0.00    -125.21   -2239.84      19.12       0.00      -0.02      -0.02      -0.01       0.01
                           -0.00      -0.00    2239.70    -125.23      -3.24       0.01      -0.01       0.02       0.04       0.05


   Nr   State  S   Sz       21         22         23         24         25         26         27         28         29         30

    1   1.2  0.5  0.5       2.97      -0.94     323.40     -47.40   -1236.10       2.37      -0.00    1252.51       2.40      80.60
                            0.45       0.08     -18.08    -848.01     -68.90       0.00      -2.37     -69.83      -0.00     827.42

    2   2.2  0.5  0.5      -0.14       2.82     -18.07    -847.98      69.12      10.40       0.00     -70.03      10.54    1441.72
                           -0.24       1.54    -323.41      47.42   -1232.40      -0.00     -10.43   -1249.09       0.00     -46.27

    3   3.2  0.5  0.5       3.15     323.92       1.07       7.24       1.79    1234.52       0.00      -1.81    1251.05     -12.30
                          323.93      -3.16      -0.23       1.23      10.52      -0.00   -1237.68      10.66       0.00      -1.20

    4   4.2  0.5  0.5   -2196.96      22.32    -169.71      -0.00     126.51       0.06   -1460.27     123.83      -0.06     -30.52
                            1.52     427.20    -274.13       0.00    -183.18    -276.54       0.06     180.78   -3152.67     202.78

    5   5.2  0.5  0.5   -1309.44    -554.90     428.52       0.00    -279.16    -375.13    -864.99    -273.25     370.25     197.54
                          565.45   -1705.16    1773.92      -0.00    1185.48    1122.92    -376.63   -1169.91    -602.96    -447.44

    6   6.2  0.5  0.5    1157.89    -844.45    -656.82       0.00     427.62    -554.62     773.87     418.56     547.41     150.43
                          868.33    2004.53    1362.81       0.00     902.75   -1339.90    -556.85    -890.89     209.95     685.38

    7   7.2  0.5  0.5    -124.05    1860.46   -1410.98       0.00     946.41    1228.62     -85.18     926.35   -1212.65      82.12
                        -1847.87    -232.27     758.83       0.00     492.81     163.64    1233.55    -486.33      -7.22    1516.88

    8   8.2  0.5  0.5    -408.71   -1251.38   -1847.71      -0.00    1228.97    -838.38    -249.84    1202.92     827.48     -67.56
                         1249.16    -949.92    -627.38       0.00    -405.47     623.74    -841.74     400.14     120.09    1969.76

    9   9.2  0.5  0.5       0.00      -9.61      10.12   -4901.55     -25.42     -23.97       0.00     -13.78      12.92    1622.81
                            0.00      -4.95    1042.19      47.80    2612.60      -0.00      23.93   -1406.96       0.00      -9.10

   10  10.2  0.5  0.5       9.61      -0.00    1042.16      47.59   -2606.56      12.63      -0.00   -1413.17      -6.81     -15.75
                            4.95       0.00     -10.16    4901.70     -25.37       0.00     -12.61      13.66      -0.00    -933.07

   11  11.2  0.5  0.5     -10.12   -1042.16       0.00      45.20     -12.37   -2612.29      -0.00      -6.71    1407.69     -14.97
                        -1042.19      10.16      -0.00      23.26     -24.10       0.00    2607.14      12.98      -0.00      -4.43

   12  12.2  0.5  0.5    4901.55     -47.59     -45.20      -0.00      -0.00       0.00    2574.63      -0.00       0.00       0.00
                          -47.80   -4901.70     -23.26       0.00      -0.00    2574.93      -0.00      -0.00       5.20      -0.00

   13   1.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          323.56      14.94      -2.90       1.63       0.00       0.00       0.00       0.00       0.00       0.00

   14   2.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -14.93     323.56       1.70       7.16       0.00       0.00       0.00       0.00       0.00       0.00

   15   3.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.49      -2.76      -0.01     849.34       0.00       0.00       0.00       0.00       0.00       0.00

   16   4.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          163.20    -265.33   -2624.22       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   17   5.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -398.19    1789.37     395.56       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   18   6.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          647.52    1358.79    -846.73       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   19   7.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         1429.24     728.56     108.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   20   8.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         1844.33    -631.88     541.23       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   21   9.2  0.5 -0.5   62345.06       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00   -1042.19      -5.04      44.97       0.00       0.00       0.00       0.00       0.00       0.00

   22  10.2  0.5 -0.5       0.00   62345.06       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         1042.19       0.00      -9.56     -23.70       0.00       0.00       0.00       0.00       0.00       0.00

   23  11.2  0.5 -0.5       0.00       0.00   62345.05       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            5.04       9.56      -0.00    4901.72       0.00       0.00       0.00       0.00       0.00       0.00

   24  12.2  0.5 -0.5       0.00       0.00       0.00   62689.58       0.00       0.00       0.00       0.00       0.00       0.00
                          -44.97      23.70   -4901.72       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   25   1.2  1.5  1.5       0.00       0.00       0.00       0.00   60548.68       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00       0.00       0.00      -0.00      -0.00       0.00    1986.61

   26   2.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00   60548.74       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00       0.00   -3770.28       0.00       0.00       0.00

   27   3.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00   60548.70       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00       0.00    3770.28       0.00      -0.00    4051.62       0.00

   28   4.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00   61422.61       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.00       0.00      -0.00    6832.00

   29   5.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   61422.67       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00   -4051.62       0.00      -0.00       0.00

   30   6.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   61422.79
                           -0.00      -0.00      -0.00      -0.00   -1986.61      -0.00      -0.00   -6832.00      -0.00      -0.00

   31   7.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00       0.00    4051.61      -0.00      -0.00    3773.00       0.00

   32   8.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00   -4235.74       0.00       0.00    3204.22       0.00      -0.00

   33   9.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00   -6637.51       0.00       0.00      -0.00      -0.00      -0.00

   34   1.2  1.5  0.5     -14.68   -1504.90      -7.14      -0.00       0.00   -2176.81       0.00       0.00    2339.24      -0.00
                        -1508.39      14.65      13.91       0.00       0.00       0.00    2176.78       0.00      -0.00       0.00

   35   2.2  1.5  0.5     -13.84       7.29   -1508.21       0.00    2176.81       0.00      -0.00    2339.24      -0.00      -0.00
                            0.00      -0.00      -0.00   -1486.63      -0.00      -0.00      -0.00       0.00      -0.00    1544.43

   36   3.2  1.5  0.5       0.00      -0.00      -0.00    1486.46      -0.00       0.00       0.00      -0.00       0.00   -2691.35
                          -13.81       7.28   -1505.23       0.00   -2176.78       0.00       0.00    2339.22       0.00      -0.00

   37   4.2  1.5  0.5      -7.96    -815.89      -3.87      -0.00      -0.00   -2339.24       0.00       0.00    2178.37      -0.00
                          812.31      -7.89      -7.49       0.00      -0.00      -0.00   -2339.22      -0.00       0.00       0.00

   38   5.2  1.5  0.5       7.46      -3.93     812.73       0.00   -2339.24       0.00      -0.00   -2178.37       0.00       0.00
                           -0.00       0.00       0.00      -3.00       0.00       0.00      -0.00      -0.00       0.00   -3574.36

   39   6.2  1.5  0.5     936.93      -9.10      -8.64       0.00       0.00       0.00    2691.35       0.00      -0.00       0.00
                            5.25     538.71       2.56       0.00      -0.00   -1544.43       0.00      -0.00    3574.36       0.00

   40   7.2  1.5  0.5       0.00       0.00      -0.00      -2.99       0.00      -0.00       0.00       0.00      -0.00     370.12
                            7.49      -3.95     816.07      -0.00    2339.23      -0.00      -0.00   -2178.36       0.00       0.00

   41   8.2  1.5  0.5      79.87      -0.77      -0.74       0.00       0.00      -0.00     229.46      -0.00       0.00      -0.00
                           -7.54    -772.97      -3.67      -0.00       0.00    2216.02      -0.00      -0.00    2491.01       0.00

   42   9.2  1.5  0.5    -768.26       7.46       7.08       0.00      -0.00      -0.00   -3832.18      -0.00       0.00       0.00
                            7.48     766.72       3.64      -0.00      -0.00   -3832.18       0.00      -0.00       0.01      -0.00

   43   1.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00    2973.19      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   44   2.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                        -3016.88      29.28      27.82      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   45   3.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           29.36    3010.63      14.29       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   46   4.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00      -5.81      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   47   5.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                        -1624.73      15.78      14.98       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   48   6.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            7.34      -3.87     799.40       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   49   7.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           15.92    1632.57       7.75      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   50   8.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           15.64      -8.24    1704.59      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   51   9.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           14.08      -7.42    1534.77      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   52   1.2  1.5 -1.5     -25.42   -2606.56     -12.37      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         2612.60     -25.37     -24.10      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   53   2.2  1.5 -1.5     -23.97      12.63   -2612.29       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00    2574.93      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   54   3.2  1.5 -1.5       0.00      -0.00      -0.00    2574.63       0.00       0.00       0.00       0.00       0.00       0.00
                           23.93     -12.61    2607.14      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   55   4.2  1.5 -1.5     -13.78   -1413.17      -6.71      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                        -1406.96      13.66      12.98      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   56   5.2  1.5 -1.5      12.92      -6.81    1407.69       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00       5.20      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   57   6.2  1.5 -1.5    1622.81     -15.75     -14.97       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -9.10    -933.07      -4.43      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   58   7.2  1.5 -1.5       0.00       0.00      -0.00      -5.17       0.00       0.00       0.00       0.00       0.00       0.00
                          -12.97       6.84   -1413.47       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   59   8.2  1.5 -1.5     138.34      -1.34      -1.27       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           13.06    1338.82       6.35       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   60   9.2  1.5 -1.5   -1330.67      12.92      12.27       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -12.95   -1328.00      -6.30       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00


   Nr   State  S   Sz       31         32         33         34         35         36         37         38         39         40

    1   1.2  0.5  0.5       0.00       6.87    -125.21       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -2.40   -1187.23    2239.70      -0.00     -79.55   -1427.25      -0.00      80.63      -1.36    1446.44

    2   2.2  0.5  0.5      -0.00     122.88   -2239.84       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -10.57      66.38    -125.23      -0.00   -1423.04      79.81       0.00    1442.30      -5.99     -80.88

    3   3.2  0.5  0.5      -0.00      -1.05      19.12       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                        -1254.67       1.72      -3.24      -0.00      12.14       2.06      -0.00     -12.31    -710.67      -2.09

    4   4.2  0.5  0.5   -1991.58     358.03       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.06     141.30       0.01   -2010.47     211.52    -146.07   -1333.13     208.74       0.13    -142.98

    5   5.2  0.5  0.5    1359.29   -2317.02      -0.02       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          368.67    -311.79      -0.01     289.34   -1368.84     322.30   -2266.76   -1350.85    -769.49     315.49

    6   6.2  0.5  0.5   -1877.67   -1764.42      -0.02       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          545.07     477.59       0.02    -644.56   -1042.38    -493.70    2412.83   -1028.68   -1137.68    -483.26

    7   7.2  0.5  0.5     238.57    -963.18      -0.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                        -1207.47    1057.01       0.04      89.54    -569.03   -1092.66    -284.13    -561.55    2520.24   -1069.56

    8   8.2  0.5  0.5     983.41     792.48       0.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          823.95    1372.59       0.05     428.01     468.18   -1418.88    -998.41     462.03   -1719.75   -1388.88

    9   9.2  0.5  0.5       0.00     138.34   -1330.67       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -12.97      13.06     -12.95       0.00    3016.88     -29.36       0.00    1624.73      -7.34     -15.92

   10  10.2  0.5  0.5       0.00      -1.34      12.92       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            6.84    1338.82   -1328.00       0.00     -29.28   -3010.63      -0.00     -15.78       3.87   -1632.57

   11  11.2  0.5  0.5      -0.00      -1.27      12.27       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                        -1413.47       6.35      -6.30      -0.00     -27.82     -14.29      -0.00     -14.98    -799.40      -7.75

   12  12.2  0.5  0.5      -5.17       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00   -2973.19       0.00      -0.00       5.81      -0.00      -0.00       0.00

   13   1.2  0.5 -0.5       0.00       0.00       0.00    -713.66       1.37      -0.00     723.14       1.38      46.53       0.00
                            0.00       0.00       0.00     -39.78       0.00      -1.37     -40.32      -0.00     477.71      -1.39

   14   2.2  0.5 -0.5       0.00       0.00       0.00      39.90       6.01       0.00     -40.43       6.09     832.38      -0.00
                            0.00       0.00       0.00    -711.53      -0.00      -6.02    -721.16       0.00     -26.71      -6.11

   15   3.2  0.5 -0.5       0.00       0.00       0.00       1.03     712.75       0.00      -1.04     722.29      -7.10      -0.00
                            0.00       0.00       0.00       6.07      -0.00    -714.57       6.15       0.00      -0.69    -724.38

   16   4.2  0.5 -0.5       0.00       0.00       0.00      73.04       0.04    -843.09      71.50      -0.04     -17.62   -1149.84
                            0.00       0.00       0.00    -105.76    -159.66       0.04     104.37   -1820.19     117.07      -0.04

   17   5.2  0.5 -0.5       0.00       0.00       0.00    -161.18    -216.58    -499.40    -157.76     213.77     114.05     784.79
                            0.00       0.00       0.00     684.44     648.32    -217.45    -675.45    -348.12    -258.33     212.85

   18   6.2  0.5 -0.5       0.00       0.00       0.00     246.89    -320.21     446.79     241.65     316.05      86.85   -1084.07
                            0.00       0.00       0.00     521.20    -773.59    -321.50    -514.36     121.21     395.70     314.70

   19   7.2  0.5 -0.5       0.00       0.00       0.00     546.41     709.34     -49.18     534.83    -700.13      47.41     137.74
                            0.00       0.00       0.00     284.52      94.48     712.19    -280.78      -4.17     875.77    -697.13

   20   8.2  0.5 -0.5       0.00       0.00       0.00     709.54    -484.04    -144.24     694.51     477.75     -39.01     567.77
                            0.00       0.00       0.00    -234.10     360.12    -485.98     231.02      69.33    1137.24     475.71

   21   9.2  0.5 -0.5       0.00       0.00       0.00     -14.68     -13.84       0.00      -7.96       7.46     936.93       0.00
                            0.00       0.00       0.00    1508.39      -0.00      13.81    -812.31       0.00      -5.25      -7.49

   22  10.2  0.5 -0.5       0.00       0.00       0.00   -1504.90       7.29      -0.00    -815.89      -3.93      -9.10       0.00
                            0.00       0.00       0.00     -14.65       0.00      -7.28       7.89      -0.00    -538.71       3.95

   23  11.2  0.5 -0.5       0.00       0.00       0.00      -7.14   -1508.21      -0.00      -3.87     812.73      -8.64      -0.00
                            0.00       0.00       0.00     -13.91       0.00    1505.23       7.49      -0.00      -2.56    -816.07

   24  12.2  0.5 -0.5       0.00       0.00       0.00      -0.00       0.00    1486.46      -0.00       0.00       0.00      -2.99
                            0.00       0.00       0.00      -0.00    1486.63      -0.00      -0.00       3.00      -0.00       0.00

   25   1.2  1.5  1.5       0.00       0.00       0.00       0.00    2176.81      -0.00      -0.00   -2339.24       0.00       0.00
                           -0.00    4235.74    6637.51      -0.00       0.00    2176.78       0.00      -0.00       0.00   -2339.23

   26   2.2  1.5  1.5       0.00       0.00       0.00   -2176.81       0.00       0.00   -2339.24       0.00       0.00      -0.00
                        -4051.61      -0.00      -0.00      -0.00       0.00      -0.00       0.00      -0.00    1544.43       0.00

   27   3.2  1.5  1.5       0.00       0.00       0.00       0.00      -0.00       0.00       0.00      -0.00    2691.35       0.00
                            0.00      -0.00      -0.00   -2176.78       0.00      -0.00    2339.22       0.00      -0.00       0.00

   28   4.2  1.5  1.5       0.00       0.00       0.00       0.00    2339.24      -0.00       0.00   -2178.37       0.00       0.00
                            0.00   -3204.22       0.00      -0.00      -0.00   -2339.22       0.00       0.00       0.00    2178.36

   29   5.2  1.5  1.5       0.00       0.00       0.00    2339.24      -0.00       0.00    2178.37       0.00      -0.00      -0.00
                        -3773.00      -0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00   -3574.36      -0.00

   30   6.2  1.5  1.5       0.00       0.00       0.00      -0.00      -0.00   -2691.35      -0.00       0.00       0.00     370.12
                           -0.00       0.00       0.00      -0.00   -1544.43       0.00      -0.00    3574.36      -0.00      -0.00

   31   7.2  1.5  1.5   61422.65       0.00       0.00      -0.00       0.00      -0.00      -0.00       0.00    -370.12       0.00
                            0.00      -0.00      -0.00    2339.23      -0.00      -0.00   -2178.36       0.00       0.00       0.00

   32   8.2  1.5  1.5       0.00   61422.75       0.00      -0.00       0.00    -229.46       0.00      -0.00       0.00   -4341.00
                            0.00       0.00       0.00       0.00    2216.02      -0.00      -0.00    2491.01       0.00      -0.00

   33   9.2  1.5  1.5       0.00       0.00   62725.88       0.00       0.00    3832.18       0.00      -0.00      -0.00      -0.01
                            0.00      -0.00       0.00      -0.00   -3832.18       0.00      -0.00       0.01      -0.00      -0.00

   34   1.2  1.5  0.5      -0.00      -0.00       0.00   60548.68       0.00       0.00       0.00       0.00       0.00       0.00
                        -2339.23      -0.00       0.00       0.00       0.00      -0.00      -0.00       0.00     662.20      -0.00

   35   2.2  1.5  0.5       0.00       0.00       0.00       0.00   60548.74       0.00       0.00       0.00       0.00       0.00
                            0.00   -2216.02    3832.18      -0.00       0.00   -1256.76       0.00       0.00       0.00   -1350.54

   36   3.2  1.5  0.5      -0.00    -229.46    3832.18       0.00       0.00   60548.70       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00       0.00    1256.76       0.00      -0.00    1350.54       0.00       0.00

   37   4.2  1.5  0.5      -0.00       0.00       0.00       0.00       0.00       0.00   61422.61       0.00       0.00       0.00
                         2178.36       0.00       0.00       0.00      -0.00       0.00       0.00      -0.00    2277.33       0.00

   38   5.2  1.5  0.5       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00   61422.67       0.00       0.00
                           -0.00   -2491.01      -0.01      -0.00      -0.00   -1350.54       0.00      -0.00       0.00   -1257.67

   39   6.2  1.5  0.5    -370.12       0.00      -0.00       0.00       0.00       0.00       0.00       0.00   61422.79       0.00
                           -0.00      -0.00       0.00    -662.20      -0.00      -0.00   -2277.33      -0.00      -0.00      -0.00

   40   7.2  1.5  0.5       0.00   -4341.00      -0.01       0.00       0.00       0.00       0.00       0.00       0.00   61422.65
                           -0.00       0.00       0.00       0.00    1350.54      -0.00      -0.00    1257.67       0.00       0.00

   41   8.2  1.5  0.5    4341.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00   -1411.91       0.00       0.00    1068.07       0.00      -0.00       0.00

   42   9.2  1.5  0.5       0.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00   -2212.50       0.00       0.00      -0.00      -0.00      -0.00       0.00

   43   1.2  1.5 -0.5       0.00       0.00       0.00       0.00   -2513.57       0.00       0.00    2701.13      -0.00      -0.00
                           -0.00      -0.00      -0.00       0.00       0.00    2513.53       0.00      -0.00       0.00   -2701.11

   44   2.2  1.5 -0.5       0.00       0.00       0.00    2513.57       0.00      -0.00    2701.12      -0.00      -0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00    1783.35       0.00

   45   3.2  1.5 -0.5       0.00       0.00       0.00      -0.00       0.00       0.00      -0.00       0.00   -3107.70      -0.00
                           -0.00      -0.00      -0.00   -2513.53       0.00       0.00    2701.10       0.00      -0.00       0.00

   46   4.2  1.5 -0.5       0.00       0.00       0.00      -0.00   -2701.12       0.00       0.00    2515.37      -0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00   -2701.10      -0.00       0.00       0.00    2515.36

   47   5.2  1.5 -0.5       0.00       0.00       0.00   -2701.13       0.00      -0.00   -2515.37       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00       0.00      -0.00      -0.00       0.00   -4127.31      -0.00

   48   6.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00    3107.70       0.00      -0.00       0.00    -427.38
                           -0.00      -0.00      -0.00      -0.00   -1783.35       0.00      -0.00    4127.31       0.00      -0.00

   49   7.2  1.5 -0.5       0.00       0.00       0.00       0.00      -0.00       0.00       0.00      -0.00     427.38       0.00
                           -0.00      -0.00      -0.00    2701.11      -0.00      -0.00   -2515.36       0.00       0.00      -0.00

   50   8.2  1.5 -0.5       0.00       0.00       0.00       0.00      -0.00     264.95      -0.00       0.00      -0.00    5012.55
                           -0.00      -0.00      -0.00       0.00    2558.84      -0.00      -0.00    2876.37       0.00      -0.00

   51   9.2  1.5 -0.5       0.00       0.00       0.00      -0.00      -0.00   -4425.02      -0.00       0.00       0.00       0.01
                           -0.00      -0.00      -0.00      -0.00   -4425.02       0.00      -0.00       0.01      -0.00      -0.00

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

    1   1.2  0.5  0.5       0.00       0.00    -713.66       1.37      -0.00     723.14       1.38      46.53       0.00       3.96
                           -2.90      -4.96      39.78      -0.00       1.37      40.32       0.00    -477.71       1.39     685.44

    2   2.2  0.5  0.5       0.00       0.00      39.90       6.01       0.00     -40.43       6.09     832.38      -0.00      70.95
                          -12.77     -21.83     711.53       0.00       6.02     721.16      -0.00      26.71       6.11     -38.33

    3   3.2  0.5  0.5       0.00       0.00       1.03     712.75       0.00      -1.04     722.29      -7.10      -0.00      -0.61
                        -1515.15   -2590.20      -6.07       0.00     714.57      -6.15      -0.00       0.69     724.38      -0.99

    4   4.2  0.5  0.5       0.00       0.00      73.04       0.04    -843.09      71.50      -0.04     -17.62   -1149.84     206.71
                           -0.06      -0.00     105.76     159.66      -0.04    -104.37    1820.19    -117.07       0.04     -81.58

    5   5.2  0.5  0.5       0.00       0.00    -161.18    -216.58    -499.40    -157.76     213.77     114.05     784.79   -1337.73
                          360.36       0.32    -684.44    -648.32     217.45     675.45     348.12     258.33    -212.85     180.01

    6   6.2  0.5  0.5       0.00       0.00     246.89    -320.21     446.79     241.65     316.05      86.85   -1084.07   -1018.69
                          532.78       0.48    -521.20     773.59     321.50     514.36    -121.21    -395.70    -314.70    -275.74

    7   7.2  0.5  0.5       0.00       0.00     546.41     709.34     -49.18     534.83    -700.13      47.41     137.74    -556.09
                        -1180.24      -1.06    -284.52     -94.48    -712.19     280.78       4.17    -875.77     697.13    -610.26

    8   8.2  0.5  0.5       0.00       0.00     709.54    -484.04    -144.24     694.51     477.75     -39.01     567.77     457.54
                          805.36       0.72     234.10    -360.12     485.98    -231.02     -69.33   -1137.24    -475.71    -792.47

    9   9.2  0.5  0.5       0.00       0.00     -14.68     -13.84       0.00      -7.96       7.46     936.93       0.00      79.87
                          -15.64     -14.08   -1508.39       0.00     -13.81     812.31      -0.00       5.25       7.49      -7.54

   10  10.2  0.5  0.5       0.00       0.00   -1504.90       7.29      -0.00    -815.89      -3.93      -9.10       0.00      -0.77
                            8.24       7.42      14.65      -0.00       7.28      -7.89       0.00     538.71      -3.95    -772.97

   11  11.2  0.5  0.5       0.00       0.00      -7.14   -1508.21      -0.00      -3.87     812.73      -8.64      -0.00      -0.74
                        -1704.59   -1534.77      13.91      -0.00   -1505.23      -7.49       0.00       2.56     816.07      -3.67

   12  12.2  0.5  0.5       0.00       0.00      -0.00       0.00    1486.46      -0.00       0.00       0.00      -2.99       0.00
                            0.00       0.00       0.00   -1486.63       0.00       0.00      -3.00       0.00      -0.00      -0.00

   13   1.2  0.5 -0.5       3.96     -72.29       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -685.44    1293.09      -0.00     -79.55   -1427.25      -0.00      80.63      -1.36    1446.44      -2.90

   14   2.2  0.5 -0.5      70.95   -1293.17       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           38.33     -72.30      -0.00   -1423.04      79.81       0.00    1442.30      -5.99     -80.88     -12.77

   15   3.2  0.5 -0.5      -0.61      11.04       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.99      -1.87      -0.00      12.14       2.06      -0.00     -12.31    -710.67      -2.09   -1515.15

   16   4.2  0.5 -0.5     206.71       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           81.58       0.00   -2010.47     211.52    -146.07   -1333.13     208.74       0.13    -142.98      -0.06

   17   5.2  0.5 -0.5   -1337.73      -0.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -180.01      -0.01     289.34   -1368.84     322.30   -2266.76   -1350.85    -769.49     315.49     360.36

   18   6.2  0.5 -0.5   -1018.69      -0.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          275.74       0.01    -644.56   -1042.38    -493.70    2412.83   -1028.68   -1137.68    -483.26     532.78

   19   7.2  0.5 -0.5    -556.09      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          610.26       0.02      89.54    -569.03   -1092.66    -284.13    -561.55    2520.24   -1069.56   -1180.24

   20   8.2  0.5 -0.5     457.54       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          792.47       0.03     428.01     468.18   -1418.88    -998.41     462.03   -1719.75   -1388.88     805.36

   21   9.2  0.5 -0.5      79.87    -768.26       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            7.54      -7.48       0.00    3016.88     -29.36       0.00    1624.73      -7.34     -15.92     -15.64

   22  10.2  0.5 -0.5      -0.77       7.46       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          772.97    -766.72       0.00     -29.28   -3010.63      -0.00     -15.78       3.87   -1632.57       8.24

   23  11.2  0.5 -0.5      -0.74       7.08       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            3.67      -3.64      -0.00     -27.82     -14.29      -0.00     -14.98    -799.40      -7.75   -1704.59

   24  12.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00   -2973.19       0.00      -0.00       5.81      -0.00      -0.00       0.00       0.00

   25   1.2  1.5  1.5       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   26   2.2  1.5  1.5      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                        -2216.02    3832.18       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   27   3.2  1.5  1.5     229.46   -3832.18       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   28   4.2  1.5  1.5      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   29   5.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                        -2491.01      -0.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   30   6.2  1.5  1.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   31   7.2  1.5  1.5    4341.00       0.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   32   8.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   33   9.2  1.5  1.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   34   1.2  1.5  0.5       0.00       0.00       0.00    2513.57      -0.00      -0.00   -2701.13       0.00       0.00       0.00
                         1411.91    2212.50      -0.00       0.00    2513.53       0.00      -0.00       0.00   -2701.11      -0.00

   35   2.2  1.5  0.5       0.00       0.00   -2513.57       0.00       0.00   -2701.12       0.00       0.00      -0.00      -0.00
                           -0.00      -0.00      -0.00       0.00      -0.00       0.00      -0.00    1783.35       0.00   -2558.84

   36   3.2  1.5  0.5       0.00       0.00       0.00      -0.00       0.00       0.00      -0.00    3107.70       0.00     264.95
                           -0.00      -0.00   -2513.53       0.00      -0.00    2701.10       0.00      -0.00       0.00       0.00

   37   4.2  1.5  0.5       0.00       0.00       0.00    2701.12      -0.00       0.00   -2515.37       0.00       0.00      -0.00
                        -1068.07       0.00      -0.00      -0.00   -2701.10       0.00       0.00       0.00    2515.36       0.00

   38   5.2  1.5  0.5       0.00       0.00    2701.13      -0.00       0.00    2515.37       0.00      -0.00      -0.00       0.00
                           -0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00   -4127.31      -0.00   -2876.37

   39   6.2  1.5  0.5       0.00       0.00      -0.00      -0.00   -3107.70      -0.00       0.00       0.00     427.38      -0.00
                            0.00       0.00      -0.00   -1783.35       0.00      -0.00    4127.31      -0.00      -0.00      -0.00

   40   7.2  1.5  0.5       0.00       0.00      -0.00       0.00      -0.00      -0.00       0.00    -427.38       0.00    5012.55
                           -0.00      -0.00    2701.11      -0.00      -0.00   -2515.36       0.00       0.00       0.00       0.00

   41   8.2  1.5  0.5   61422.75       0.00      -0.00       0.00    -264.95       0.00      -0.00       0.00   -5012.55       0.00
                            0.00       0.00       0.00    2558.84      -0.00      -0.00    2876.37       0.00      -0.00       0.00

   42   9.2  1.5  0.5       0.00   62725.88       0.00       0.00    4425.02       0.00      -0.00      -0.00      -0.01      -0.00
                           -0.00       0.00      -0.00   -4425.02       0.00      -0.00       0.01      -0.00      -0.00       0.00

   43   1.2  1.5 -0.5      -0.00       0.00   60548.68       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00      -0.00       0.00       0.00      -0.00    -662.20       0.00   -1411.91

   44   2.2  1.5 -0.5       0.00       0.00       0.00   60548.74       0.00       0.00       0.00       0.00       0.00       0.00
                        -2558.84    4425.02       0.00      -0.00    1256.76      -0.00      -0.00      -0.00    1350.54       0.00

   45   3.2  1.5 -0.5    -264.95    4425.02       0.00       0.00   60548.70       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00   -1256.76      -0.00       0.00   -1350.54      -0.00      -0.00       0.00

   46   4.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00   61422.61       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00       0.00      -0.00      -0.00       0.00   -2277.33      -0.00    1068.07

   47   5.2  1.5 -0.5      -0.00      -0.00       0.00       0.00       0.00       0.00   61422.67       0.00       0.00       0.00
                        -2876.37      -0.01       0.00       0.00    1350.54      -0.00       0.00      -0.00    1257.67       0.00

   48   6.2  1.5 -0.5       0.00      -0.00       0.00       0.00       0.00       0.00       0.00   61422.79       0.00       0.00
                           -0.00       0.00     662.20       0.00       0.00    2277.33       0.00       0.00       0.00      -0.00

   49   7.2  1.5 -0.5   -5012.55      -0.01       0.00       0.00       0.00       0.00       0.00       0.00   61422.65       0.00
                            0.00       0.00      -0.00   -1350.54       0.00       0.00   -1257.67      -0.00      -0.00       0.00

   50   8.2  1.5 -0.5       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   61422.75
                           -0.00      -0.00    1411.91      -0.00      -0.00   -1068.07      -0.00       0.00      -0.00      -0.00

   51   9.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00    2212.50      -0.00      -0.00       0.00       0.00       0.00      -0.00       0.00

   52   1.2  1.5 -1.5       0.00       0.00       0.00   -2176.81       0.00       0.00    2339.24      -0.00      -0.00      -0.00
                           -0.00      -0.00       0.00       0.00    2176.78       0.00      -0.00       0.00   -2339.23      -0.00

   53   2.2  1.5 -1.5       0.00       0.00    2176.81       0.00      -0.00    2339.24      -0.00      -0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00    1544.43       0.00   -2216.02

   54   3.2  1.5 -1.5       0.00       0.00      -0.00       0.00       0.00      -0.00       0.00   -2691.35      -0.00    -229.46
                           -0.00      -0.00   -2176.78       0.00       0.00    2339.22       0.00      -0.00       0.00       0.00

   55   4.2  1.5 -1.5       0.00       0.00      -0.00   -2339.24       0.00       0.00    2178.37      -0.00      -0.00       0.00
                           -0.00      -0.00      -0.00      -0.00   -2339.22      -0.00       0.00       0.00    2178.36       0.00

   56   5.2  1.5 -1.5       0.00       0.00   -2339.24       0.00      -0.00   -2178.37       0.00       0.00       0.00      -0.00
                           -0.00      -0.00       0.00       0.00      -0.00      -0.00       0.00   -3574.36      -0.00   -2491.01

   57   6.2  1.5 -1.5       0.00       0.00       0.00       0.00    2691.35       0.00      -0.00       0.00    -370.12       0.00
                           -0.00      -0.00      -0.00   -1544.43       0.00      -0.00    3574.36       0.00      -0.00      -0.00

   58   7.2  1.5 -1.5       0.00       0.00       0.00      -0.00       0.00       0.00      -0.00     370.12       0.00   -4341.00
                           -0.00      -0.00    2339.23      -0.00      -0.00   -2178.36       0.00       0.00      -0.00       0.00

   59   8.2  1.5 -1.5       0.00       0.00       0.00      -0.00     229.46      -0.00       0.00      -0.00    4341.00       0.00
                           -0.00      -0.00       0.00    2216.02      -0.00      -0.00    2491.01       0.00      -0.00      -0.00

   60   9.2  1.5 -1.5       0.00       0.00      -0.00      -0.00   -3832.18      -0.00       0.00       0.00       0.01       0.00
                           -0.00      -0.00      -0.00   -3832.18       0.00      -0.00       0.01      -0.00      -0.00       0.00


   Nr   State  S   Sz       51         52         53         54         55         56         57         58         59         60

    1   1.2  0.5  0.5     -72.29       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                        -1293.09       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    2   2.2  0.5  0.5   -1293.17       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           72.30       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    3   3.2  0.5  0.5      11.04       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            1.87       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    4   4.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    5   5.2  0.5  0.5      -0.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    6   6.2  0.5  0.5      -0.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    7   7.2  0.5  0.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.02       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    8   8.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.03       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    9   9.2  0.5  0.5    -768.26       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            7.48       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   10  10.2  0.5  0.5       7.46       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          766.72       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   11  11.2  0.5  0.5       7.08       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            3.64       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   12  12.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   13   1.2  0.5 -0.5       0.00   -1236.10       2.37      -0.00    1252.51       2.40      80.60       0.00       6.87    -125.21
                           -4.96      68.90      -0.00       2.37      69.83       0.00    -827.42       2.40    1187.23   -2239.70

   14   2.2  0.5 -0.5       0.00      69.12      10.40       0.00     -70.03      10.54    1441.72      -0.00     122.88   -2239.84
                          -21.83    1232.40       0.00      10.43    1249.09      -0.00      46.27      10.57     -66.38     125.23

   15   3.2  0.5 -0.5       0.00       1.79    1234.52       0.00      -1.81    1251.05     -12.30      -0.00      -1.05      19.12
                        -2590.20     -10.52       0.00    1237.68     -10.66      -0.00       1.20    1254.67      -1.72       3.24

   16   4.2  0.5 -0.5       0.00     126.51       0.06   -1460.27     123.83      -0.06     -30.52   -1991.58     358.03       0.00
                           -0.00     183.18     276.54      -0.06    -180.78    3152.67    -202.78       0.06    -141.30      -0.01

   17   5.2  0.5 -0.5       0.00    -279.16    -375.13    -864.99    -273.25     370.25     197.54    1359.29   -2317.02      -0.02
                            0.32   -1185.48   -1122.92     376.63    1169.91     602.96     447.44    -368.67     311.79       0.01

   18   6.2  0.5 -0.5       0.00     427.62    -554.62     773.87     418.56     547.41     150.43   -1877.67   -1764.42      -0.02
                            0.48    -902.75    1339.90     556.85     890.89    -209.95    -685.38    -545.07    -477.59      -0.02

   19   7.2  0.5 -0.5       0.00     946.41    1228.62     -85.18     926.35   -1212.65      82.12     238.57    -963.18      -0.01
                           -1.06    -492.81    -163.64   -1233.55     486.33       7.22   -1516.88    1207.47   -1057.01      -0.04

   20   8.2  0.5 -0.5       0.00    1228.97    -838.38    -249.84    1202.92     827.48     -67.56     983.41     792.48       0.01
                            0.72     405.47    -623.74     841.74    -400.14    -120.09   -1969.76    -823.95   -1372.59      -0.05

   21   9.2  0.5 -0.5       0.00     -25.42     -23.97       0.00     -13.78      12.92    1622.81       0.00     138.34   -1330.67
                          -14.08   -2612.60       0.00     -23.93    1406.96      -0.00       9.10      12.97     -13.06      12.95

   22  10.2  0.5 -0.5       0.00   -2606.56      12.63      -0.00   -1413.17      -6.81     -15.75       0.00      -1.34      12.92
                            7.42      25.37      -0.00      12.61     -13.66       0.00     933.07      -6.84   -1338.82    1328.00

   23  11.2  0.5 -0.5       0.00     -12.37   -2612.29      -0.00      -6.71    1407.69     -14.97      -0.00      -1.27      12.27
                        -1534.77      24.10      -0.00   -2607.14     -12.98       0.00       4.43    1413.47      -6.35       6.30

   24  12.2  0.5 -0.5       0.00      -0.00       0.00    2574.63      -0.00       0.00       0.00      -5.17       0.00       0.00
                            0.00       0.00   -2574.93       0.00       0.00      -5.20       0.00      -0.00      -0.00      -0.00

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

   35   2.2  1.5  0.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         4425.02       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   36   3.2  1.5  0.5   -4425.02       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   37   4.2  1.5  0.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   38   5.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   39   6.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   40   7.2  1.5  0.5       0.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   41   8.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   42   9.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   43   1.2  1.5 -0.5       0.00       0.00    2176.81      -0.00      -0.00   -2339.24       0.00       0.00       0.00      -0.00
                        -2212.50      -0.00       0.00    2176.78       0.00      -0.00       0.00   -2339.23      -0.00       0.00

   44   2.2  1.5 -0.5       0.00   -2176.81       0.00       0.00   -2339.24       0.00       0.00      -0.00      -0.00      -0.00
                            0.00      -0.00       0.00      -0.00       0.00      -0.00    1544.43       0.00   -2216.02    3832.18

   45   3.2  1.5 -0.5       0.00       0.00      -0.00       0.00       0.00      -0.00    2691.35       0.00     229.46   -3832.18
                            0.00   -2176.78       0.00      -0.00    2339.22       0.00      -0.00       0.00       0.00      -0.00

   46   4.2  1.5 -0.5       0.00       0.00    2339.24      -0.00       0.00   -2178.37       0.00       0.00      -0.00      -0.00
                           -0.00      -0.00      -0.00   -2339.22       0.00       0.00       0.00    2178.36       0.00       0.00

   47   5.2  1.5 -0.5       0.00    2339.24      -0.00       0.00    2178.37       0.00      -0.00      -0.00       0.00       0.00
                           -0.00       0.00       0.00      -0.00      -0.00      -0.00   -3574.36      -0.00   -2491.01      -0.01

   48   6.2  1.5 -0.5       0.00      -0.00      -0.00   -2691.35      -0.00       0.00       0.00     370.12      -0.00       0.00
                           -0.00      -0.00   -1544.43       0.00      -0.00    3574.36      -0.00      -0.00      -0.00       0.00

   49   7.2  1.5 -0.5       0.00      -0.00       0.00      -0.00      -0.00       0.00    -370.12       0.00    4341.00       0.01
                            0.00    2339.23      -0.00      -0.00   -2178.36       0.00       0.00       0.00       0.00       0.00

   50   8.2  1.5 -0.5       0.00      -0.00       0.00    -229.46       0.00      -0.00       0.00   -4341.00       0.00       0.00
                           -0.00       0.00    2216.02      -0.00      -0.00    2491.01       0.00      -0.00       0.00      -0.00

   51   9.2  1.5 -0.5   62725.88       0.00       0.00    3832.18       0.00      -0.00      -0.00      -0.01      -0.00       0.00
                           -0.00      -0.00   -3832.18       0.00      -0.00       0.01      -0.00      -0.00       0.00      -0.00

   52   1.2  1.5 -1.5       0.00   60548.68       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00       0.00       0.00      -0.00   -1986.61       0.00   -4235.74   -6637.51

   53   2.2  1.5 -1.5       0.00       0.00   60548.74       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         3832.18       0.00      -0.00    3770.28      -0.00      -0.00      -0.00    4051.61       0.00       0.00

   54   3.2  1.5 -1.5    3832.18       0.00       0.00   60548.70       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00   -3770.28      -0.00       0.00   -4051.62      -0.00      -0.00       0.00       0.00

   55   4.2  1.5 -1.5       0.00       0.00       0.00       0.00   61422.61       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00      -0.00      -0.00       0.00   -6832.00      -0.00    3204.22      -0.00

   56   5.2  1.5 -1.5      -0.00       0.00       0.00       0.00       0.00   61422.67       0.00       0.00       0.00       0.00
                           -0.01       0.00       0.00    4051.62      -0.00       0.00      -0.00    3773.00       0.00      -0.00

   57   6.2  1.5 -1.5      -0.00       0.00       0.00       0.00       0.00       0.00   61422.79       0.00       0.00       0.00
                            0.00    1986.61       0.00       0.00    6832.00       0.00       0.00       0.00      -0.00      -0.00

   58   7.2  1.5 -1.5      -0.01       0.00       0.00       0.00       0.00       0.00       0.00   61422.65       0.00       0.00
                            0.00      -0.00   -4051.61       0.00       0.00   -3773.00      -0.00      -0.00       0.00       0.00

   59   8.2  1.5 -1.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   61422.75       0.00
                           -0.00    4235.74      -0.00      -0.00   -3204.22      -0.00       0.00      -0.00      -0.00      -0.00

   60   9.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   62725.88
                            0.00    6637.51      -0.00      -0.00       0.00       0.00       0.00      -0.00       0.00      -0.00


 No symmetry adaption


 Spin-orbit eigenstates   (energies)
 ======================

     Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
              (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1  -262.39494300    -0.03468877    -7613.31      0.00000000        0.00      0.0000
     2  -262.39494300    -0.03468877    -7613.31      0.00000000        0.00      0.0000
     3  -262.39494101    -0.03468678    -7612.87      0.00000199        0.44      0.0001
     4  -262.39494101    -0.03468678    -7612.87      0.00000199        0.44      0.0001
     5  -262.29511943     0.06513480    14295.44      0.09982357    21908.74      2.7163
     6  -262.29511943     0.06513480    14295.44      0.09982357    21908.74      2.7163
     7  -262.12312012     0.23713411    52044.92      0.27182288    59658.23      7.3967
     8  -262.12312012     0.23713411    52044.92      0.27182288    59658.23      7.3967
     9  -262.12311414     0.23714009    52046.23      0.27182886    59659.54      7.3968
    10  -262.12311414     0.23714009    52046.23      0.27182886    59659.54      7.3968
    11  -262.12284904     0.23740519    52104.42      0.27209396    59717.72      7.4041
    12  -262.12284904     0.23740519    52104.42      0.27209396    59717.72      7.4041
    13  -262.11946153     0.24079270    52847.89      0.27548147    60461.19      7.4962
    14  -262.11946153     0.24079270    52847.89      0.27548147    60461.19      7.4962
    15  -262.11944935     0.24080488    52850.56      0.27549365    60463.87      7.4966
    16  -262.11944935     0.24080488    52850.56      0.27549365    60463.87      7.4966
    17  -262.11943312     0.24082111    52854.12      0.27550988    60467.43      7.4970
    18  -262.11943312     0.24082111    52854.12      0.27550988    60467.43      7.4970
    19  -262.11569191     0.24456232    53675.23      0.27925109    61288.53      7.5988
    20  -262.11569191     0.24456232    53675.23      0.27925109    61288.53      7.5988
    21  -262.11567450     0.24457973    53679.05      0.27926850    61292.35      7.5993
    22  -262.11567450     0.24457973    53679.05      0.27926850    61292.35      7.5993
    23  -262.11561563     0.24463860    53691.97      0.27932737    61305.27      7.6009
    24  -262.11561563     0.24463860    53691.97      0.27932737    61305.27      7.6009
    25  -262.11477437     0.24547986    53876.60      0.28016863    61489.91      7.6238
    26  -262.11477437     0.24547986    53876.60      0.28016863    61489.91      7.6238
    27  -262.11477425     0.24547998    53876.63      0.28016875    61489.93      7.6238
    28  -262.11477425     0.24547998    53876.63      0.28016875    61489.93      7.6238
    29  -262.11477359     0.24548064    53876.77      0.28016941    61490.08      7.6238
    30  -262.11477359     0.24548064    53876.77      0.28016941    61490.08      7.6238
    31  -262.11477220     0.24548203    53877.08      0.28017080    61490.38      7.6238
    32  -262.11477220     0.24548203    53877.08      0.28017080    61490.38      7.6238
    33  -262.09813028     0.26212395    57529.56      0.29681272    65142.86      8.0767
    34  -262.09813028     0.26212395    57529.56      0.29681272    65142.86      8.0767
    35  -262.09812350     0.26213073    57531.04      0.29681950    65144.35      8.0769
    36  -262.09812350     0.26213073    57531.04      0.29681950    65144.35      8.0769
    37  -262.04797102     0.31228321    68538.24      0.34697198    76151.55      9.4416
    38  -262.04797102     0.31228321    68538.24      0.34697198    76151.55      9.4416
    39  -262.04494032     0.31531391    69203.40      0.35000268    76816.71      9.5241
    40  -262.04494032     0.31531391    69203.40      0.35000268    76816.71      9.5241
    41  -262.04493807     0.31531616    69203.90      0.35000493    76817.20      9.5241
    42  -262.04493807     0.31531616    69203.90      0.35000493    76817.20      9.5241
    43  -262.04466805     0.31558618    69263.16      0.35027495    76876.47      9.5315
    44  -262.04466805     0.31558618    69263.16      0.35027495    76876.47      9.5315
    45  -262.04461966     0.31563457    69273.78      0.35032334    76887.09      9.5328
    46  -262.04461966     0.31563457    69273.78      0.35032334    76887.09      9.5328
    47  -262.04461840     0.31563582    69274.06      0.35032459    76887.36      9.5328
    48  -262.04461840     0.31563582    69274.06      0.35032459    76887.36      9.5328
    49  -262.04226282     0.31799141    69791.05      0.35268018    77404.35      9.5969
    50  -262.04226282     0.31799141    69791.05      0.35268018    77404.35      9.5969
    51  -262.04225629     0.31799794    69792.48      0.35268671    77405.78      9.5971
    52  -262.04225629     0.31799794    69792.48      0.35268671    77405.78      9.5971
    53  -262.04136315     0.31889108    69988.50      0.35357985    77601.81      9.6214
    54  -262.04136315     0.31889108    69988.50      0.35357985    77601.81      9.6214
    55  -262.01246218     0.34779205    76331.53      0.38248082    83944.84     10.4078
    56  -262.01246218     0.34779205    76331.53      0.38248082    83944.84     10.4078
    57  -262.00642489     0.35382934    77656.56      0.38851811    85269.87     10.5721
    58  -262.00642489     0.35382934    77656.56      0.38851811    85269.87     10.5721
    59  -262.00642286     0.35383137    77657.01      0.38852014    85270.31     10.5722
    60  -262.00642286     0.35383137    77657.01      0.38852014    85270.31     10.5722


 Eigenvectors of spin-orbit matrix
 =================================

  Basis states          Eigenvectors (columnwise)

   Nr   State  S   Sz        1             2             3             4             5             6             7             8

    1    1.2  0.5  0.5   0.797784284   0.147076852   0.001400592   0.072824930  -0.199646735  -0.540192847  -0.006535666   0.000436573
                         0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000

    2    2.2  0.5  0.5  -0.034555274  -0.011637416  -0.008658444   0.402205188   0.004577861  -0.001694513  -0.006268761   0.000527135
                         0.348016761   0.064146080   0.023601417   0.611899568   0.200558370   0.539856578  -0.027151122   0.002015935

    3    3.2  0.5  0.5   0.082669842  -0.450888133  -0.637429781   0.017236957   0.540003578  -0.199576804  -0.001152279  -0.015149269
                         0.001340603  -0.016818231  -0.214733125  -0.014973189  -0.016314882   0.000855268   0.001264015   0.016368866

    4    4.2  0.5  0.5   0.000136094  -0.000067096  -0.003805909  -0.001281498   0.000000062   0.000000178   0.012613241   0.069162052
                         0.000716439   0.002907260   0.011189254  -0.000348871  -0.000000250  -0.000000112   0.006823379   0.064446974

    5    5.2  0.5  0.5   0.000039231  -0.002092856   0.000627737   0.003783236   0.000000692  -0.000000775  -0.019328740   0.035338208
                        -0.006580401  -0.008538919   0.003335553   0.001993238   0.000000719   0.000001086  -0.017483998   0.011065942

    6    6.2  0.5  0.5   0.000778378  -0.003696751   0.002560767  -0.001108144   0.000001451   0.000000068   0.020890721  -0.001514716
                        -0.007565117   0.007232615  -0.000546809   0.004303494  -0.000000052   0.000001106  -0.025299983  -0.029752401

    7    7.2  0.5  0.5  -0.000954962   0.007621624  -0.005212270  -0.004825984  -0.000002326   0.000002310   0.050093420  -0.036579825
                        -0.003136153  -0.001373882  -0.001549226   0.005176643   0.000000333   0.000000531  -0.020192469   0.040791438

    8    8.2  0.5  0.5   0.001658595  -0.004822292   0.003101310  -0.008483504   0.000002551   0.000000997   0.075263807   0.020847844
                         0.003469746  -0.003728722   0.000904790   0.004004783   0.000000006  -0.000000366  -0.011225117  -0.021956197

    9    9.2  0.5  0.5  -0.000007571   0.000016777   0.000029370  -0.001321226  -0.000090461  -0.000566766  -0.081564447   0.006743290
                        -0.001134595  -0.000209092  -0.000076423  -0.001993290   0.004249157   0.011438379  -0.336640694   0.025049946

   10   10.2  0.5  0.5   0.002602330   0.000475513  -0.000001066   0.000175608   0.004199141   0.011464602   0.068796670  -0.003924002
                        -0.000052222  -0.000009814  -0.000005871  -0.000091235   0.000197360   0.000528100  -0.013452943   0.000317613

   11   11.2  0.5  0.5  -0.000260984   0.001471977   0.002077053  -0.000054694   0.011470787  -0.004195940  -0.013330292  -0.179247957
                        -0.000003774   0.000054957   0.000699743   0.000049835  -0.000348313   0.000012280   0.015261185   0.193643559

   12   12.2  0.5  0.5   0.000000016  -0.000000100   0.000000496   0.000000014  -0.000811395   0.000299877  -0.000389198  -0.005967547
                        -0.000000473   0.000002555  -0.000001463   0.000000053  -0.029941116   0.011131043  -0.000437957  -0.005528370

   13    1.2  0.5 -0.5  -0.147063078   0.797709569  -0.070372713   0.001353431   0.539969283  -0.199564109  -0.000212039  -0.003174308
                        -0.002012852   0.010918247   0.018739040  -0.000360395   0.015539826  -0.005743274   0.000381622   0.005713029

   14    2.2  0.5 -0.5   0.010758441  -0.029789180  -0.231210107  -0.014439919  -0.013836341   0.010345465   0.001506167   0.020688966
                         0.064299339  -0.348457082   0.694789163  -0.020578733   0.539681899  -0.200343674   0.001439904   0.018666748

   15    3.2  0.5 -0.5   0.451076075   0.082680447  -0.020509386  -0.560711430   0.199469603   0.539310759   0.021666383  -0.001664566
                        -0.010645931  -0.000209081  -0.010033650   0.371523529   0.006596176   0.031842511  -0.005292253   0.000393324

   16    4.2  0.5 -0.5   0.000027302   0.000145886   0.001148576  -0.006556931  -0.000000174   0.000000055   0.022743787   0.000161597
                         0.002907906  -0.000714509  -0.000666874  -0.009833159  -0.000000117   0.000000252   0.091757953  -0.014339674

   17    5.2  0.5 -0.5   0.002209521  -0.000050830  -0.003142952  -0.000251693   0.000000743   0.000000713  -0.007490330   0.005895531
                        -0.008509477   0.006580321   0.002899608  -0.003384763   0.000001108  -0.000000698   0.036264845   0.025387656

   18    6.2  0.5 -0.5   0.003597422   0.000674772   0.002178189   0.002615242  -0.000000100   0.000001449  -0.025271817   0.032261917
                         0.007282530   0.007575061   0.003873440  -0.000130531   0.000001104   0.000000094  -0.015774504  -0.005973280

   19    7.2  0.5 -0.5  -0.007602108  -0.000997793   0.005995514  -0.004638118  -0.000002324  -0.000002315   0.053423521   0.041980740
                        -0.001478061   0.003122790   0.003760527   0.002838261   0.000000465  -0.000000399  -0.012163569  -0.033980937

   20    8.2  0.5 -0.5   0.004872871   0.001705925   0.009228337   0.002764063  -0.000000986   0.000002550  -0.029318184   0.046367104
                        -0.003662376  -0.003446722   0.001686987  -0.001672340  -0.000000394   0.000000068   0.007559844  -0.060338509

   21    9.2  0.5 -0.5  -0.000013914  -0.000023098   0.000763830   0.000048046   0.000237481   0.000031813   0.018621789   0.254653069
                        -0.000209302   0.001134385  -0.002266143   0.000066293   0.011449950  -0.004250000   0.018061028   0.234801044

   22   10.2  0.5 -0.5  -0.000475334   0.002601371  -0.000193171   0.000000480  -0.011475050   0.004203080   0.002183484   0.045173491
                        -0.000016321   0.000087832  -0.000042976   0.000005948   0.000198077  -0.000076481  -0.003275830  -0.053603350

   23   11.2  0.5 -0.5  -0.001472591  -0.000261011   0.000065676   0.001827058   0.004193851   0.011456020   0.256328803  -0.019814666
                         0.000034807   0.000000202   0.000034083  -0.001210640   0.000132980   0.000678151  -0.062635474   0.004240218

   24   12.2  0.5 -0.5   0.000000065   0.000000010   0.000000000   0.000000856  -0.000619961  -0.001672381  -0.001934142   0.000193802
                         0.000002556   0.000000473   0.000000055   0.000001287   0.011117810   0.029905383  -0.007901492   0.000552922

   25    1.2  1.5  1.5   0.022829215   0.004230619   0.000560956   0.013155910  -0.000014968  -0.000040264   0.340361562  -0.023529482
                        -0.000572892  -0.000079525   0.000042252  -0.008746089  -0.000000814  -0.000002239  -0.083093122   0.008341377

   26    2.2  1.5  1.5  -0.001668817   0.008964020   0.012675962  -0.000412894  -0.009142108   0.003398709  -0.012251434  -0.152327752
                        -0.000084969   0.000323756   0.004265772   0.000195201   0.000247746  -0.000091556   0.010406568   0.164827166

   27    3.2  1.5  1.5   0.000085244  -0.000324629  -0.004277902  -0.000195731  -0.000248985   0.000092030  -0.010310050  -0.163322982
                        -0.001673420   0.008988717   0.012712053  -0.000414098  -0.009187440   0.003415552  -0.012139463  -0.150936746

   28    4.2  1.5  1.5  -0.006987506  -0.001301096   0.000348105   0.008642086   0.008634538   0.023225739  -0.105776469   0.007300581
                         0.000156707   0.000048328   0.000063901  -0.005722247   0.000481500   0.001298848   0.025759087  -0.002740961

   29    5.2  1.5  1.5  -0.001293108   0.006945845   0.009826529  -0.000320089  -0.011598810   0.004312024   0.005887114   0.073210307
                        -0.000065863   0.000250853   0.003306864   0.000151321   0.000314338  -0.000116151  -0.005002255  -0.079216350

   30    6.2  1.5  1.5   0.000032449   0.000028632   0.000066108  -0.006871094   0.000437229   0.001179435   0.033127833  -0.003465720
                         0.001966697   0.000370096  -0.000423520  -0.010366991  -0.007840828  -0.021090719   0.135934730  -0.009386666

   31    7.2  1.5  1.5   0.000066121  -0.000251878  -0.003318529  -0.000151840  -0.000315933   0.000116778   0.005044437   0.079891308
                        -0.001298318   0.006973854   0.009861171  -0.000321221  -0.011658667   0.004334280   0.005938255   0.073833458

   32    8.2  1.5  1.5  -0.000298891  -0.000052780  -0.000010014  -0.001114894  -0.000204899  -0.000552725   0.009756442  -0.000913124
                        -0.012227376  -0.002268573  -0.000079555  -0.001662308   0.003674305   0.009883332   0.039851860  -0.002760258

   33    9.2  1.5  1.5   0.001005372   0.000139481  -0.000074354   0.015369209   0.000000059   0.000000197   0.072123221  -0.007240211
                         0.040062531   0.007424213   0.000985699   0.023118530  -0.000001241  -0.000003345   0.295428358  -0.020423394

   34    1.2  1.5  0.5  -0.000967529   0.005197130   0.007320391  -0.000238423   0.010582868  -0.003934325  -0.007266961  -0.090401846
                        -0.000049224   0.000187731   0.002463473   0.000112747  -0.000286807   0.000106013   0.006181317   0.097812700

   35    2.2  1.5  0.5   0.002802831   0.000510180   0.000842636   0.020473925   0.001960792   0.005274242   0.451451664  -0.031180461
                        -0.000098064   0.000025970   0.000119587  -0.013576827   0.000109346   0.000294940  -0.110057883   0.011421900

   36    3.2  1.5  0.5  -0.000563719  -0.000117861  -0.000070884   0.003488588  -0.000109763  -0.000296134   0.013915295  -0.001770274
                        -0.023570482  -0.004377207   0.000195597   0.005299201   0.001968496   0.005295090   0.057633747  -0.003954811

   37    4.2  1.5  0.5   0.001893356  -0.010216015   0.006697452  -0.000237759  -0.000015298   0.000005690   0.005203533   0.066147598
                         0.000061520  -0.000396320   0.002267649   0.000082880   0.000000400  -0.000000143  -0.004591697  -0.071490344

   38    5.2  1.5  0.5  -0.010196461  -0.001889565  -0.000251017  -0.005887383  -0.007466152  -0.020082929   0.095349375  -0.006591952
                         0.000255885   0.000035489  -0.000018940   0.003913925  -0.000416339  -0.001123084  -0.023278219   0.002337113

   39    6.2  1.5  0.5   0.000083832  -0.000466317   0.000650515   0.000010816  -0.000268498   0.000099218  -0.002057503  -0.031468871
                        -0.002268068   0.012224430  -0.001895883   0.000079547  -0.009907689   0.003683324  -0.002239961  -0.029153165

   40    7.2  1.5  0.5   0.000256700   0.000035606  -0.000018986   0.003924671   0.000417717   0.001126806  -0.022848191   0.002293416
                         0.010229064   0.001895614   0.000251726   0.005903559  -0.007490909  -0.020149465  -0.093589766   0.006469373

   41    8.2  1.5  0.5   0.000033718  -0.000059533  -0.003971263  -0.000172839  -0.000572074   0.000211414   0.006458280   0.101764791
                        -0.000370558   0.001970933   0.011783395  -0.000392173  -0.021110300   0.007848061   0.007517522   0.094080862

   42    9.2  1.5  0.5   0.000258794  -0.000985770  -0.012990922  -0.000594438  -0.000000009  -0.000000014  -0.015727730  -0.249039370
                        -0.005081371   0.027294422   0.038603246  -0.001257463  -0.000000342   0.000000123  -0.018508563  -0.230158858

   43    1.2  1.5 -0.5   0.005199213   0.000968112  -0.000259407  -0.006440001  -0.003929647  -0.010570237  -0.129408398   0.008932772
                        -0.000116587  -0.000035978  -0.000047601   0.004264177  -0.000219148  -0.000591127   0.031516416  -0.003350073

   44    2.2  1.5 -0.5   0.000510488  -0.002801227   0.023278050  -0.000783491   0.005280544  -0.001963126  -0.025128277  -0.315470584
                        -0.000018985  -0.000136413   0.007851383   0.000332384  -0.000143093   0.000052894   0.021708309   0.341173933

   45    3.2  1.5 -0.5  -0.000177755   0.000886245   0.002007547   0.000118828  -0.000143687   0.000053090   0.002597218   0.043620932
                         0.004375184  -0.023560560  -0.006018433   0.000170771  -0.005301418   0.001970839   0.003468264   0.040155927

   46    4.2  1.5 -0.5  -0.010220482  -0.001894020  -0.000251080  -0.005888427   0.000005684   0.000015280   0.094619162  -0.006541050
                         0.000256469   0.000035602  -0.000018910   0.003914654   0.000000306   0.000000840  -0.023099528   0.002318429

   47    5.2  1.5 -0.5  -0.001888902   0.010192004  -0.006696255   0.000237691  -0.020106925   0.007475039  -0.005244588  -0.066658455
                        -0.000061346   0.000395407  -0.002267212  -0.000082893   0.000544890  -0.000201386   0.004627118   0.072041857

   48    6.2  1.5 -0.5  -0.000298973  -0.000052784  -0.000010017  -0.001116452   0.000205135   0.000553403   0.010199573  -0.000958711
                        -0.012229667  -0.002269003  -0.000079651  -0.001664655  -0.003678946  -0.009895864   0.041667321  -0.002886454

   49    7.2  1.5 -0.5   0.000061545  -0.000396668   0.002273435   0.000083120   0.000546697  -0.000202052  -0.004541191  -0.070712589
                        -0.001894949   0.010224593  -0.006714652   0.000238364   0.020173541  -0.007499826  -0.005146856  -0.065427930

   50    8.2  1.5 -0.5  -0.000032553  -0.000028643  -0.000066107   0.006869599   0.000437093   0.001179121  -0.032812867   0.003434578
                        -0.001971563  -0.000370985   0.000423442   0.010364745  -0.007838732  -0.021085106  -0.134649905   0.009296569

   51    9.2  1.5 -0.5  -0.000612134  -0.000189228  -0.000250856   0.022486726  -0.000000010   0.000000019   0.080233085  -0.008540110
                        -0.027305357  -0.005084437   0.001368080   0.033960592  -0.000000123  -0.000000341   0.329478921  -0.022737523

   52    1.2  1.5 -1.5  -0.004229135   0.022819236  -0.014963426   0.000531195   0.000040312  -0.000014986   0.018719492   0.237944495
                        -0.000137416   0.000885272  -0.005066354  -0.000185173  -0.000001079   0.000000383  -0.016516529  -0.257163134

   53    2.2  1.5 -1.5  -0.008967612  -0.001669823   0.000449219   0.011151475  -0.003394669  -0.009131197   0.218064622  -0.015047104
                         0.000201047   0.000062122   0.000082384  -0.007383863  -0.000189289  -0.000510636  -0.053099520   0.005654994

   54    3.2  1.5 -1.5   0.000201581   0.000062334   0.000082586  -0.007404871  -0.000190248  -0.000513179  -0.052614166   0.005603994
                         0.008992318   0.001674430  -0.000450519  -0.011183229   0.003411491   0.009176475  -0.216074171   0.014908352

   55    4.2  1.5 -1.5   0.001300313  -0.006984707  -0.009823511   0.000319940  -0.023253491   0.008644816  -0.005941778  -0.073891393
                         0.000066130  -0.000252322  -0.003305814  -0.000151322   0.000630171  -0.000232909   0.005050407   0.079951572

   56    5.2  1.5 -1.5  -0.006948628  -0.001293888   0.000348248   0.008644733  -0.004306898  -0.011584967  -0.104802991   0.007231939
                         0.000155771   0.000048159   0.000063862  -0.005724039  -0.000240148  -0.000647873   0.025520818  -0.002716565

   57    6.2  1.5 -1.5  -0.000033694   0.000059361   0.003972130   0.000172861  -0.000572226   0.000211490  -0.006521911  -0.102734920
                         0.000369670  -0.001966068  -0.011785950   0.000392248  -0.021115920   0.007850161  -0.007588503  -0.094980210

   58    7.2  1.5 -1.5   0.000156413   0.000048347   0.000064072  -0.005744225  -0.000241415  -0.000651189   0.025737713  -0.002740781
                         0.006976648   0.001299102  -0.000349476  -0.008675207   0.004329127   0.011644754   0.105695651  -0.007293650

   59    8.2  1.5 -1.5   0.000083822  -0.000466204   0.000649613   0.000010794   0.000268181  -0.000099114  -0.001969332  -0.030097144
                        -0.002267638   0.012222140  -0.001893214   0.000079452   0.009895142  -0.003678679  -0.002138820  -0.027884060

   60    9.2  1.5 -1.5  -0.000241073   0.001553562  -0.008902911  -0.000325486  -0.000000101   0.000000024  -0.014336226  -0.223213593
                         0.007421609  -0.040045019   0.026294813  -0.000933375  -0.000003349   0.000001242  -0.016248332  -0.206531755


   Nr   State  S   Sz        9            10            11            12            13            14            15            16

    1    1.2  0.5  0.5   0.029342178  -0.000221973   0.019946621  -0.001428635   0.000032685   0.000000324  -0.000131281   0.000033470
                        -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000

    2    2.2  0.5  0.5  -0.001483067  -0.000139535   0.000119698   0.000145407   0.000001537  -0.000000526   0.000002173  -0.000000326
                         0.008954362  -0.000098545  -0.020884908   0.001582802  -0.000044433  -0.000000434   0.000111067  -0.000028266

    3    3.2  0.5  0.5  -0.000171562  -0.018360486   0.001410380   0.019663214   0.000000777  -0.000059453   0.000006261   0.000023561
                        -0.000138553  -0.006740331   0.000573751   0.005563167   0.000000029   0.000025223  -0.000003415  -0.000009585

    4    4.2  0.5  0.5   0.001600875  -0.012503184   0.000045824  -0.000240307  -0.009755736   0.019082485   0.006473020   0.035472890
                         0.010990996   0.033973335  -0.000028726   0.000838662   0.005830755   0.045467567   0.016204569   0.085248687

    5    5.2  0.5  0.5  -0.004588418   0.003466756  -0.000167664  -0.000056289   0.023059899   0.017594089   0.003484619  -0.004118516
                        -0.069898987  -0.058322872   0.000706803   0.001546990  -0.044928386  -0.000012412   0.043751713   0.035160395

    6    6.2  0.5  0.5   0.004079167  -0.048129256   0.000242004   0.000962698  -0.027875019   0.020579039  -0.019780117  -0.035948543
                        -0.052724403   0.057985828   0.000357755  -0.001481814  -0.037542315  -0.010356867   0.019810912  -0.023758554

    7    7.2  0.5  0.5   0.011551161   0.055500867   0.000338681  -0.001236005  -0.064824501  -0.048289581  -0.004917574   0.065295368
                        -0.029041763   0.011329913   0.000266874  -0.000158794  -0.024676836   0.019535353   0.007098618  -0.024685619

    8    8.2  0.5  0.5   0.015484352  -0.024176234   0.000631992   0.000554480  -0.088664293   0.029840855  -0.034357280  -0.030882140
                         0.023274538  -0.045589269  -0.000105088   0.000899932   0.009432661  -0.016199425  -0.006216459   0.027017371

    9    9.2  0.5  0.5  -0.001342490  -0.002062473  -0.016781310  -0.001654522  -0.000011511  -0.000002790   0.000054604   0.000003023
                         0.117121378  -0.001323585   0.341932801  -0.026010202   0.000181813   0.000003992  -0.001356030   0.000337690

   10   10.2  0.5  0.5  -0.348296943   0.003343586   0.353698723  -0.024373638   0.000219031   0.000005173  -0.001363038   0.000336866
                         0.004791427   0.000254155   0.017395109  -0.001037446   0.000014601  -0.000001032  -0.000049846   0.000016595

   11   11.2  0.5  0.5  -0.003260432  -0.230805823  -0.022805452  -0.334925342   0.000006410  -0.000349017   0.000442683   0.001771302
                        -0.001855567  -0.084736335  -0.009848189  -0.094721695  -0.000003272   0.000147528  -0.000174889  -0.000738509

   12   12.2  0.5  0.5  -0.000042873  -0.003264300  -0.013069121  -0.182884397  -0.000002344   0.000233284  -0.000285058  -0.001119903
                         0.000040712   0.008883529   0.047525185   0.644846763  -0.000008552   0.000552577  -0.000684854  -0.002695509

   13    1.2  0.5 -0.5   0.000209621   0.027709457   0.001349307   0.018839040  -0.000000308   0.000030983  -0.000031478  -0.000123467
                         0.000073013   0.009651393   0.000469435   0.006554255   0.000000103  -0.000010410   0.000011375   0.000044616

   14    2.2  0.5 -0.5   0.000164185   0.001544776  -0.000657426  -0.006749515   0.000000361   0.000015609  -0.000009300  -0.000035702
                        -0.000047165  -0.008943923   0.001447134   0.019764558  -0.000000579   0.000041630  -0.000026694  -0.000105194

   15    3.2  0.5 -0.5   0.019555899  -0.000207589  -0.020399370   0.001520594   0.000064390   0.000000727  -0.000025417   0.000007048
                        -0.000326038   0.000074412  -0.001206871  -0.000078456   0.000004974  -0.000000275  -0.000001007   0.000001084

   16    4.2  0.5 -0.5   0.000632756   0.005127015  -0.000048612   0.000033840  -0.003607256  -0.011104783  -0.004389881   0.000580643
                         0.036195534  -0.009852843   0.000871056   0.000042189   0.049177521  -0.002419893   0.092230112  -0.017439923

   17    5.2  0.5 -0.5   0.015910033  -0.027324663  -0.000455162   0.000073894  -0.016681787   0.036168730   0.015822601  -0.011591754
                        -0.056217850   0.064500269   0.001479586  -0.000722649   0.005591968   0.035244032   0.031667978  -0.042331858

   18    6.2  0.5 -0.5   0.026378123  -0.013490219  -0.000422333   0.000346121  -0.022806007  -0.014466098   0.025734572  -0.025335521
                         0.070590199   0.051132340  -0.001715865  -0.000258370  -0.003263065   0.044465426  -0.034561516  -0.011909519

   19    7.2  0.5 -0.5  -0.056139266   0.001355829   0.001219551   0.000407568   0.051996811  -0.053589012  -0.069798371  -0.007037337
                        -0.007556184   0.031225231   0.000256162  -0.000140768   0.003137726   0.044038392  -0.001025780  -0.005004877

   20    8.2  0.5 -0.5   0.037826444   0.022278329  -0.000819400   0.000562369  -0.033446351  -0.087051195   0.038225859  -0.030199681
                        -0.035100312  -0.016886247   0.000667764   0.000306918  -0.005851461   0.019298226   0.014914040   0.017522736

   21    9.2  0.5 -0.5   0.002383070   0.037256428   0.010109337   0.096506123   0.000003916  -0.000068819   0.000111920   0.000512199
                        -0.000571535  -0.111045837  -0.024022268  -0.328460379   0.000002896  -0.000168678   0.000318618   0.001256762

   22   10.2  0.5 -0.5  -0.003241133  -0.327340233   0.023361131   0.339774660  -0.000005232   0.000202974  -0.000311176  -0.001264970
                        -0.000859778  -0.119088582   0.007029088   0.099792568   0.000000670  -0.000083602   0.000130091   0.000510106

   23   11.2  0.5 -0.5   0.245834776  -0.003689351   0.347452437  -0.024775142   0.000377829   0.000007119  -0.001916856   0.000475770
                        -0.004103317   0.000679876   0.020590974   0.001807709   0.000028683   0.000001060  -0.000092578   0.000014034

   24   12.2  0.5 -0.5   0.000160642  -0.000027096  -0.039160706   0.003272860  -0.000045139   0.000000502   0.000137181  -0.000035345
                         0.009462924  -0.000052549   0.669134134  -0.049180621   0.000598101   0.000008853  -0.002915670   0.000740968

   25    1.2  1.5  1.5  -0.391894787   0.002334339   0.009793940  -0.000721146   0.497210796   0.007144184  -0.031764869   0.008066097
                         0.006731787  -0.000106800   0.000572850  -0.000059151   0.038037717   0.000224643  -0.001449170   0.000399209

   26    2.2  1.5  1.5  -0.001338706  -0.194226416  -0.014182132  -0.192506713  -0.002659376   0.181328124  -0.085279972  -0.335579803
                        -0.000676417  -0.071306910  -0.003909384  -0.054595321   0.000972381  -0.076774451   0.035418310   0.139375579

   27    3.2  1.5  1.5   0.000666136   0.070493610   0.003777028   0.052750232   0.000245627  -0.021512166   0.057548130   0.226511274
                        -0.001325612  -0.192012598  -0.013702983  -0.186009457   0.000766578  -0.050863841   0.138623233   0.545390262

   28    4.2  1.5  1.5  -0.096680999   0.000698218   0.070550077  -0.005186541  -0.050490165  -0.000724007  -0.079304290   0.020160285
                         0.001613519  -0.000087006   0.004127164  -0.000349349  -0.003871087  -0.000030980  -0.003719773   0.000937752

   29    5.2  1.5  1.5   0.000633191   0.091480659   0.002330344   0.031656908   0.000408305  -0.028832482  -0.067888103  -0.267070734
                         0.000317171   0.033584985   0.000644924   0.008976205  -0.000174269   0.012224196   0.028177615   0.110918749

   30    6.2  1.5  1.5   0.000656606  -0.000065883   0.003702433  -0.000312209  -0.013372906  -0.000085996  -0.003007425   0.000749131
                         0.040711841  -0.000353142  -0.063285436   0.004652404   0.174704285   0.002508959   0.063890743  -0.016243638

   31    7.2  1.5  1.5  -0.000323241  -0.034301538  -0.000738280  -0.010278614   0.000600050  -0.046635729   0.004830662   0.018990539
                         0.000645479   0.093431461   0.002668615   0.036244639   0.001607926  -0.110126289   0.011609442   0.045718844

   32    8.2  1.5  1.5  -0.002368046   0.000063879  -0.001913932   0.000164683  -0.019441638  -0.000110723   0.002406756  -0.000626166
                        -0.139037045   0.000880424   0.032714422  -0.002405492   0.254175439   0.003653019  -0.051796023   0.013162886

   33    9.2  1.5  1.5  -0.005838272   0.000092788  -0.000495592   0.000050881  -0.000008591  -0.000000270  -0.000009971   0.000002883
                        -0.339908409   0.002025042   0.008458067  -0.000623294   0.000117797   0.000002111   0.000206025  -0.000053473

   34    1.2  1.5  0.5  -0.000749303  -0.107091363   0.016123427   0.218724506  -0.003306742   0.227909101   0.091010428   0.357961489
                        -0.000366886  -0.039314305   0.004428811   0.062033118   0.001268869  -0.096537260  -0.037754959  -0.148662081

   35    2.2  1.5  0.5   0.006515387  -0.000332581  -0.108188663   0.007953338  -0.306628353  -0.004409171   0.221520980  -0.056306579
                         0.000001068   0.000149567  -0.006326801   0.000533755  -0.023437549  -0.000118594   0.010355401  -0.002640669

   36    3.2  1.5  0.5   0.007766228  -0.000273418   0.006961980  -0.000598761  -0.042421765  -0.000269760  -0.007819114   0.001941515
                         0.458801806  -0.003027697  -0.118996661   0.008750768   0.554237660   0.007958995   0.165960860  -0.042194826

   37    4.2  1.5  0.5  -0.000607243  -0.102914366   0.000130382   0.001745435   0.002029554  -0.139604414  -0.043047385  -0.169348804
                        -0.000244091  -0.037839100   0.000032728   0.000493986  -0.000764475   0.059110584   0.017863484   0.070352960

   38    5.2  1.5  0.5  -0.109222333   0.000649828  -0.058381961   0.004290960  -0.022108983  -0.000315585  -0.117653645   0.029908071
                         0.001876591  -0.000031543  -0.003417563   0.000282425  -0.001703326  -0.000021402  -0.005514316   0.001393528

   39    6.2  1.5  0.5  -0.000351197  -0.048022599  -0.000533146  -0.007408913  -0.001253295   0.098313273  -0.015246937  -0.059957608
                         0.000809746   0.130667689   0.001922690   0.026124322  -0.003393705   0.232206979  -0.036691908  -0.144401445

   40    7.2  1.5  0.5   0.001861326  -0.000027644   0.003738443  -0.000315890   0.009431877   0.000067088   0.005219502  -0.001312009
                         0.108368718  -0.000646567  -0.063868460   0.004694706  -0.123133428  -0.001767366  -0.111184501   0.028265444

   41    8.2  1.5  0.5  -0.000188466  -0.014847747  -0.001286251  -0.017961314   0.000300979  -0.024306276   0.015665661   0.061646801
                         0.000323378   0.040506872   0.004665561   0.063333670   0.000844920  -0.057432543   0.037733982   0.148453452

   42    9.2  1.5  0.5   0.000989348   0.105101098   0.000008166  -0.000051561   0.000004177  -0.000303204   0.000101962   0.000401994
                        -0.001983748  -0.286278645   0.000020912   0.000166882   0.000010024  -0.000715587   0.000245773   0.000966374

   43    1.2  1.5 -0.5  -0.114063835   0.000828287   0.226962782  -0.016683399   0.246787382   0.003538671   0.387178283  -0.098424473
                         0.001901607  -0.000100006   0.013282041  -0.001115101   0.018920591   0.000149590   0.018160937  -0.004578000

   44    2.2  1.5 -0.5  -0.000264879  -0.006153195   0.007687097   0.104260166  -0.004141780   0.283195051  -0.052057787  -0.204816799
                        -0.000250638  -0.002142069   0.002109268   0.029574194   0.001516742  -0.119878390   0.021619221   0.085022692

   45    3.2  1.5 -0.5  -0.001254091  -0.158245727   0.002309899   0.032525682  -0.002790659   0.216737745   0.016165818   0.063755322
                         0.002769289   0.430717658  -0.008461609  -0.114676739  -0.007458593   0.511863008   0.039023572   0.153425566

   46    4.2  1.5 -0.5  -0.109634031   0.000653741   0.001810834  -0.000133896  -0.151160948  -0.002167346  -0.183178547   0.046556092
                         0.001882409  -0.000030771   0.000106975  -0.000011931  -0.011568123  -0.000078248  -0.008612567   0.002170648

   47    5.2  1.5 -0.5   0.000603294   0.102527490   0.004145497   0.056263148  -0.000292334   0.020415093   0.027654357   0.108776876
                         0.000243533   0.037698188   0.001143222   0.015955919   0.000120802  -0.008656352  -0.011474808  -0.045170557

   48    6.2  1.5 -0.5  -0.002370479   0.000065309   0.001586668  -0.000128235   0.019235236   0.000107128  -0.007314276   0.001869739
                        -0.139192657   0.000880206  -0.027108203   0.001991115  -0.251427099  -0.003616145   0.156183205  -0.039689662

   49    7.2  1.5 -0.5  -0.000238778  -0.037402996   0.001244283   0.017455664   0.000626502  -0.048158798  -0.010839896  -0.042694759
                         0.000601496   0.101726395  -0.004537820  -0.061550434   0.001653959  -0.113716892  -0.026137202  -0.102792967

   50    8.2  1.5 -0.5  -0.000697811   0.000071612   0.003846823  -0.000318227  -0.004748151  -0.000016197   0.007525858  -0.001909394
                        -0.043136706   0.000367375  -0.065718829   0.004829144   0.062183174   0.000896780  -0.160568107   0.040812015

   51    9.2  1.5 -0.5   0.005088471  -0.000281791   0.000006138  -0.000014584  -0.000059499  -0.000000767   0.000049646  -0.000012368
                         0.304919351  -0.002198786  -0.000174558   0.000017068   0.000774892   0.000010832  -0.001045472   0.000265796

   52    1.2  1.5 -1.5  -0.002169317  -0.367873878   0.000700539   0.009438342  -0.006700584   0.459202281  -0.007450332  -0.029381728
                        -0.000868680  -0.135261418   0.000181094   0.002677147   0.002488373  -0.194418900   0.003116702   0.012158168

   53    2.2  1.5 -1.5   0.206873518  -0.001486705   0.199756807  -0.014679220  -0.196337751  -0.002830587   0.362972746  -0.092240986
                        -0.003453063   0.000198444   0.011691939  -0.000967797  -0.015023062  -0.000074728   0.017033556  -0.004327918

   54    3.2  1.5 -1.5  -0.003413200   0.000193042   0.011299644  -0.000935359   0.004191688  -0.000011321  -0.027679106   0.007011928
                        -0.204515371   0.001470958  -0.193014049   0.014183186  -0.055066627  -0.000804889   0.589908266  -0.149930053

   55    4.2  1.5 -1.5  -0.000630748  -0.090770540   0.005013339   0.067988769   0.000676436  -0.046627822  -0.018641652  -0.073319944
                        -0.000311826  -0.033324589   0.001374293   0.019284038  -0.000259964   0.019750654   0.007733386   0.030449841

   56    5.2  1.5 -1.5  -0.097437255   0.000702283  -0.032848576   0.002412862   0.031224378   0.000442546   0.288870311  -0.073423538
                         0.001625849  -0.000091250  -0.001924354   0.000156614   0.002404419   0.000035148   0.013553201  -0.003428794

   57    6.2  1.5 -1.5   0.000178374   0.014011235  -0.001233860  -0.017298098   0.000880623  -0.068319953  -0.006224924  -0.024541617
                        -0.000311821  -0.038230491   0.004496658   0.060987952   0.002350909  -0.161346849  -0.015022227  -0.059065901

   58    7.2  1.5 -1.5   0.001660861  -0.000092940  -0.002201746   0.000179594   0.009131737   0.000056675  -0.002322729   0.000597686
                         0.099515199  -0.000715884   0.037609521  -0.002763026  -0.119244715  -0.001715306   0.049451575  -0.012560144

   59    8.2  1.5 -1.5  -0.000349918  -0.047969117   0.000634881   0.008941967   0.001268446  -0.099384275   0.005062288   0.019866323
                         0.000810423   0.130521536  -0.002326035  -0.031526779   0.003427514  -0.234746453   0.012166630   0.047895195

   60    9.2  1.5 -1.5  -0.000753713  -0.117317973   0.000156752   0.002311161   0.000000928  -0.000045662  -0.000020884  -0.000079395
                         0.001881840   0.319074137  -0.000605404  -0.008151260   0.000001915  -0.000108926  -0.000049310  -0.000190374


   Nr   State  S   Sz       17            18            19            20            21            22            23            24

    1    1.2  0.5  0.5  -0.000004471  -0.000123866  -0.000041350  -0.000109499  -0.000002054   0.000035061   0.000036383  -0.000006316
                         0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000

    2    2.2  0.5  0.5   0.000000033   0.000004010   0.000002850   0.000005531  -0.000000206   0.000005864  -0.000000233   0.000000143
                         0.000002831   0.000079291  -0.000010286  -0.000025925  -0.000004495   0.000069851  -0.000033897   0.000005565

    3    3.2  0.5  0.5  -0.000023980   0.000001078   0.000079056  -0.000029828   0.000030377   0.000001819   0.000001253   0.000007322
                        -0.000001700  -0.000000629  -0.000044539   0.000017061  -0.000027092  -0.000002259  -0.000005145  -0.000031398

    4    4.2  0.5  0.5  -0.002837645   0.000371999   0.140559747  -0.061900287   0.405563415  -0.006899490   0.060549084   0.076337910
                         0.043352797   0.007488423   0.234228086  -0.148593325   0.453100978   0.016067934  -0.045476840   0.028183752

    5    5.2  0.5  0.5   0.012258939   0.000355203  -0.104284051   0.062559667   0.097076177   0.082255549  -0.109217497   0.039683278
                        -0.056445260  -0.056384204  -0.185294160   0.457321035   0.245759044   0.109420825   0.307067270  -0.169537517

    6    6.2  0.5  0.5   0.008215650   0.003228955   0.273586408  -0.127299512  -0.229448851  -0.105403310   0.143114840   0.034154582
                         0.069358256  -0.046845297   0.426229039   0.133358041  -0.066091103   0.084148597   0.232482318  -0.205337601

    7    7.2  0.5  0.5  -0.027519029   0.006046667  -0.206314986   0.018733566   0.250511937  -0.201162329   0.300634891  -0.142804675
                        -0.011457161  -0.023677181   0.098267240   0.124668429  -0.188086269   0.055741789   0.217910854   0.338378523

    8    8.2  0.5  0.5   0.021757797   0.003964243  -0.021522965  -0.073967263  -0.101475388  -0.297989710   0.434100217  -0.030093756
                        -0.032590301   0.021302186  -0.289401665  -0.021610361   0.172846232   0.007939293  -0.135018958  -0.236336651

    9    9.2  0.5  0.5  -0.000012676   0.000028478   0.000006683   0.000002932  -0.000003627   0.000056699   0.000007478   0.000000583
                        -0.000038893  -0.001064619  -0.000092359  -0.000235161  -0.000032571   0.000518808  -0.000175459   0.000022852

   10   10.2  0.5  0.5  -0.000031752  -0.001079609   0.000302768   0.000805805   0.000007702  -0.000142175  -0.000173262   0.000029289
                         0.000000780  -0.000029231  -0.000002292  -0.000009012  -0.000000651   0.000011054  -0.000006554   0.000004473

   11   11.2  0.5  0.5  -0.001427121   0.000045647   0.000537259  -0.000199679   0.000085487   0.000004455   0.000031770   0.000183086
                        -0.000093206   0.000013818  -0.000301679   0.000116254  -0.000076204  -0.000009612  -0.000134468  -0.000787394

   12   12.2  0.5  0.5  -0.000144047   0.000006954   0.000034057  -0.000012984   0.000023962   0.000001520  -0.000040005  -0.000231688
                         0.002205739  -0.000078747   0.000060344  -0.000022957   0.000026944   0.000001807  -0.000009363  -0.000053488

   13    1.2  0.5 -0.5   0.000123227  -0.000004448  -0.000094622   0.000035732   0.000023405   0.000001371  -0.000001752  -0.000010091
                         0.000012565  -0.000000453   0.000055107  -0.000020810  -0.000026105  -0.000001530   0.000006068   0.000034955

   14    2.2  0.5 -0.5  -0.000012032   0.000000320   0.000017826  -0.000007640  -0.000048093  -0.000003210  -0.000005307  -0.000032502
                         0.000078475  -0.000002813   0.000019619  -0.000007454  -0.000050996  -0.000003154  -0.000001681  -0.000009626

   15    3.2  0.5 -0.5  -0.000001009  -0.000024029  -0.000034362  -0.000090730   0.000002896  -0.000040450   0.000032197  -0.000005291
                        -0.000000735  -0.000000742   0.000000268   0.000001299   0.000000153   0.000004532   0.000001674  -0.000000223

   16    4.2  0.5 -0.5  -0.001129684   0.001574570   0.021291729  -0.003583505  -0.016569298   0.066620856  -0.005905060  -0.060486414
                         0.007412063  -0.043417024   0.159556523   0.273142815  -0.005589261   0.604436797  -0.081159908   0.045560161

   17    5.2  0.5 -0.5   0.005366074   0.006470069  -0.176093683  -0.003136782  -0.026559355   0.118177088   0.173892464   0.325312341
                        -0.056129403   0.057397623  -0.426669962  -0.212601151  -0.134288842   0.236337613   0.008896257  -0.019764889

   18    6.2  0.5 -0.5   0.001539547   0.015208767  -0.177118013  -0.021908850  -0.133016387   0.103962449   0.206754558   0.183667163
                        -0.046931203  -0.068167133  -0.051173649   0.506004663   0.022304368  -0.214957248   0.024137491   0.201980838

   19    7.2  0.5 -0.5  -0.003613736  -0.028539265  -0.046552935   0.227737879  -0.175790861  -0.307272539  -0.364710826   0.125977906
                        -0.024168409   0.008606617  -0.117157962  -0.018915141   0.112565549   0.060961153   0.043349893   0.349279322

   20    8.2  0.5 -0.5  -0.006104626   0.018339707  -0.053041772  -0.127046940  -0.204837361   0.196434591   0.218717605  -0.250122967
                         0.020790188   0.034629245   0.055899321  -0.260913082   0.216569977   0.039831213   0.094462989   0.379620361

   21    9.2  0.5 -0.5   0.000079661  -0.000016556   0.000120882  -0.000052256  -0.000348431  -0.000021830  -0.000021794  -0.000170649
                        -0.001062016   0.000037407   0.000201735  -0.000076447  -0.000388552  -0.000024443  -0.000006898  -0.000041480

   22   10.2  0.5 -0.5   0.001077005  -0.000031509   0.000700858  -0.000262785  -0.000103141  -0.000005626   0.000003826   0.000041759
                         0.000080432  -0.000003997  -0.000397746   0.000150391   0.000098478   0.000005300  -0.000029381  -0.000168282

   23   11.2  0.5 -0.5  -0.000046814  -0.001429214  -0.000231055  -0.000616087   0.000010131  -0.000113806   0.000807282  -0.000138004
                         0.000009117  -0.000052037   0.000000033   0.000009693   0.000003099   0.000012779   0.000042487  -0.000006772

   24   12.2  0.5 -0.5   0.000001070   0.000080439   0.000000334   0.000000939  -0.000000331   0.000004065  -0.000012871   0.000002100
                        -0.000079046  -0.002208973   0.000026372   0.000069286  -0.000002338   0.000035828   0.000237433  -0.000041033

   25    1.2  1.5  1.5   0.008168660   0.228703328  -0.007160165  -0.018888815  -0.000543247   0.008874922  -0.042108877   0.007296067
                         0.000155762   0.008103420   0.000115686   0.000244167   0.000076050  -0.000995145  -0.002216669   0.000325879

   26    2.2  1.5  1.5   0.480908351  -0.017142848   0.043442027  -0.016493508  -0.021722051  -0.001357648   0.000926531   0.005177880
                         0.031815742  -0.001442480  -0.024541150   0.009257486   0.019371188   0.001154802  -0.003847631  -0.022247558

   27    3.2  1.5  1.5   0.013674017  -0.000620489  -0.009964726   0.003767212   0.035231321   0.002115293  -0.003155785  -0.018252073
                        -0.206960683   0.007368194  -0.017652033   0.006704653   0.039495262   0.002474090  -0.000761611  -0.004245433

   28    4.2  1.5  1.5   0.003552870   0.099391802   0.038477599   0.101583945  -0.005522357   0.089589653  -0.009282315   0.001611490
                         0.000063215   0.003528459  -0.000624777  -0.001312064   0.000719506  -0.010014856  -0.000474784   0.000079252

   29    5.2  1.5  1.5  -0.025645695   0.000921373   0.021601073  -0.008177491   0.209827521   0.013157263  -0.002664613  -0.014830351
                        -0.001709430   0.000076771  -0.012254284   0.004560962  -0.187194668  -0.011264685   0.011024266   0.063813249

   30    6.2  1.5  1.5   0.000016612   0.001067658  -0.000208748  -0.000435486   0.000798970  -0.010875148  -0.007243298   0.001068791
                        -0.001072960  -0.029960714  -0.012656724  -0.033441758   0.005984608  -0.097226439   0.137717398  -0.023864754

   31    7.2  1.5  1.5   0.018075006  -0.000819572   0.112425788  -0.042392185  -0.022810898  -0.001326418   0.019840942   0.114716359
                        -0.273119269   0.009739099   0.198978741  -0.075541567  -0.025601480  -0.001584901   0.004773116   0.026694946

   32    8.2  1.5  1.5  -0.000114959  -0.006098827   0.000674599   0.001421793   0.000246127  -0.003076571  -0.012466116   0.001828981
                         0.006145821   0.172033917   0.041796747   0.110252008   0.001657591  -0.027390396   0.236839162  -0.041028879

   33    9.2  1.5  1.5  -0.000001483  -0.000010848   0.000006210   0.000014349   0.000006922  -0.000092531   0.000000736   0.000000106
                         0.000011702   0.000331466   0.000416672   0.001098361   0.000050101  -0.000825876  -0.000015366   0.000003096

   34    1.2  1.5  0.5   0.479251867  -0.017100772   0.042589120  -0.016164874   0.030725467   0.001929429   0.000225298   0.001277746
                         0.031735197  -0.001437338  -0.024072020   0.009066038  -0.027417525  -0.001659634  -0.000947548  -0.005469456

   35    2.2  1.5  0.5  -0.015639496  -0.437660506   0.015734889   0.041523966  -0.000684746   0.011033046   0.034204580  -0.005925456
                        -0.000285882  -0.015525083  -0.000254331  -0.000536689   0.000083851  -0.001230243   0.001803345  -0.000263356

   36    3.2  1.5  0.5   0.000020280   0.001518117   0.000036965   0.000073928  -0.000234620   0.003204154   0.002033571  -0.000301341
                        -0.001521876  -0.042411805   0.002182622   0.005774605  -0.001761011   0.028639209  -0.038680193   0.006701808

   37    4.2  1.5  0.5   0.237290226  -0.008457177  -0.171783199   0.065238107   0.151331098   0.009481134   0.004630002   0.025846818
                         0.015706630  -0.000708053   0.097048792  -0.036622646  -0.134980262  -0.008077087  -0.019221247  -0.111208036

   38    5.2  1.5  0.5   0.005987113   0.167509519   0.062045945   0.163778450  -0.006671708   0.108031733   0.031475316  -0.005444000
                         0.000107482   0.005945502  -0.001006208  -0.002116661   0.000866344  -0.012069093   0.001672159  -0.000231703

   39    6.2  1.5  0.5  -0.005695311   0.000262352  -0.038241069   0.014443534   0.044240270   0.002650903  -0.042326681  -0.244875058
                         0.086268916  -0.003073897  -0.067741863   0.025715301   0.049592553   0.003097572  -0.010202945  -0.056949469

   40    7.2  1.5  0.5  -0.000075450  -0.004291652   0.000630732   0.001321345  -0.001079387   0.014932696   0.004069148  -0.000606525
                         0.004319767   0.120821160   0.038613526   0.101948738  -0.008229748   0.133524270  -0.077522064   0.013436463

   41    8.2  1.5  0.5  -0.004684943   0.000209952  -0.023069107   0.008667725  -0.079279290  -0.004776275   0.016125068   0.093317403
                         0.070625279  -0.002522280  -0.040764891   0.015470669  -0.088855554  -0.005571614   0.003891567   0.021692667

   42    9.2  1.5  0.5   0.000066900  -0.000002341   0.000601008  -0.000226819   0.000335703   0.000020630   0.000136513   0.000789441
                        -0.001006601   0.000036270   0.001064074  -0.000403942   0.000375721   0.000023924   0.000033087   0.000183801

   43    1.2  1.5 -0.5  -0.017158365  -0.479998992   0.018531207   0.048917232  -0.002523700   0.040924978  -0.005609264   0.000972860
                        -0.000304727  -0.017042369  -0.000300953  -0.000632188   0.000328661  -0.004573969  -0.000289383   0.000046352

   44    2.2  1.5 -0.5  -0.436977856   0.015587826  -0.036152298   0.013725022  -0.008281208  -0.000519541   0.001390450   0.007754327
                        -0.028949967   0.001302016   0.020433774  -0.007699038   0.007393456   0.000453856  -0.005766024  -0.033362790

   45    3.2  1.5 -0.5  -0.002791840   0.000134199   0.002842271  -0.001066494   0.019184519   0.001154548   0.006522453   0.037726664
                         0.042347037  -0.001516083   0.005027228  -0.001904677   0.021504072   0.001350269   0.001569283   0.008774482

   46    4.2  1.5 -0.5  -0.008485378  -0.237659508  -0.074805241  -0.197284644  -0.012343070   0.201522963  -0.114013792   0.019751301
                        -0.000153470  -0.008444395   0.001185221   0.002589414   0.001667289  -0.022566959  -0.006011704   0.000882819

   47    5.2  1.5 -0.5   0.167248592  -0.005967134  -0.142591494   0.054122296  -0.081103814  -0.005098809   0.001287326   0.007123384
                         0.011076829  -0.000500387   0.080594830  -0.030356034   0.072378793   0.004389122  -0.005294678  -0.030704219

   48    6.2  1.5 -0.5  -0.000050808  -0.003084926   0.000460478   0.001046741   0.000536677  -0.007391367   0.013202964  -0.001937005
                         0.003084654   0.086401653   0.029490343   0.077783313   0.004041561  -0.066045367  -0.251063175   0.043495931

   49    7.2  1.5 -0.5   0.007986221  -0.000363123   0.050165380  -0.018887787   0.089447779   0.005406950   0.013077529   0.075609219
                        -0.120633293   0.004305139   0.088762187  -0.033684621   0.100253732   0.006297517   0.003143984   0.017591881

   50    8.2  1.5 -0.5  -0.000046984  -0.002503238   0.000295780   0.000580767  -0.000959926   0.013234198  -0.005040760   0.000733533
                         0.002530567   0.070736218   0.017730864   0.046836127  -0.007275591   0.118344291   0.095672882  -0.016571784

   51    9.2  1.5 -0.5   0.000001350   0.000035551  -0.000007288  -0.000016160   0.000004040  -0.000055643  -0.000042368   0.000006074
                        -0.000036321  -0.001008195  -0.000463209  -0.001221967   0.000031331  -0.000500766   0.000809447  -0.000140334

   52    1.2  1.5 -1.5  -0.228345655   0.008142325  -0.016445316   0.006245551   0.006665487   0.000419273   0.001710530   0.009549542
                        -0.015137359   0.000673646   0.009295081  -0.003503490  -0.005943554  -0.000353710  -0.007100203  -0.041071613

   53    2.2  1.5 -1.5   0.017200745   0.481655102  -0.018911539  -0.049890354  -0.001766127   0.028923709   0.022810838  -0.003953657
                         0.000303879   0.017130268   0.000300907   0.000656036   0.000239944  -0.003241840   0.001195809  -0.000176992

   54    3.2  1.5 -1.5  -0.000130119  -0.007389986  -0.000118846  -0.000272802  -0.000430012   0.005887390  -0.000983492   0.000143553
                         0.007393129   0.207280223  -0.007689612  -0.020268587  -0.003226558   0.052597152   0.018713488  -0.003243212

   55    4.2  1.5 -1.5  -0.099237051   0.003540957   0.088442286  -0.033564166   0.067263119   0.004222219   0.000370817   0.002118369
                        -0.006571748   0.000297503  -0.049989812   0.018824526  -0.060018965  -0.003631389  -0.001570247  -0.009049824

   56    5.2  1.5 -1.5  -0.000924408  -0.025686813  -0.009361805  -0.024833333   0.017170452  -0.279449389  -0.065422956   0.011330798
                        -0.000017087  -0.000900810   0.000174167   0.000281734  -0.002276458   0.031264537  -0.003450624   0.000497599

   57    6.2  1.5 -1.5   0.001976975  -0.000092312   0.016453737  -0.006189296   0.065130680   0.003922513   0.023224896   0.134323261
                        -0.029914476   0.001069110   0.029117269  -0.011042140   0.073001669   0.004589964   0.005592227   0.031237934

   58    7.2  1.5 -1.5  -0.000172561  -0.009722627   0.001384944   0.002988210   0.000294583  -0.003834076   0.006169913  -0.000917198
                         0.009772000   0.273543984   0.086612399   0.228523889   0.002045609  -0.034074517  -0.117619707   0.020386377

   59    8.2  1.5 -1.5  -0.011383236   0.000509048  -0.054257322   0.020451882   0.018339878   0.001069864   0.039926459   0.231004731
                         0.171765207  -0.006125782  -0.095987863   0.036457422   0.020575421   0.001289797   0.009622473   0.053712261

   60    9.2  1.5 -1.5  -0.000022830  -0.000000289  -0.000540367   0.000204330   0.000553141   0.000032682  -0.000002945  -0.000014968
                         0.000330857  -0.000011792  -0.000956350   0.000363185   0.000620217   0.000038599  -0.000000961  -0.000003555


   Nr   State  S   Sz       25            26            27            28            29            30            31            32

    1    1.2  0.5  0.5  -0.000001374   0.000000922   0.000007763  -0.000000284  -0.000000226  -0.000008173   0.000055623  -0.000000033
                        -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000

    2    2.2  0.5  0.5  -0.000016000   0.000010380   0.000041429  -0.000001830   0.000000319  -0.000000009  -0.000003133   0.000000091
                         0.000011396  -0.000007769   0.000064005  -0.000002028  -0.000000304  -0.000008129  -0.000004254  -0.000000024

    3    3.2  0.5  0.5   0.000000190  -0.000000092  -0.000000714  -0.000014791   0.000034588  -0.000001303  -0.000000083   0.000008220
                        -0.000000965  -0.000001250  -0.000001304  -0.000020674   0.000002394  -0.000000053   0.000000004  -0.000003783

    4    4.2  0.5  0.5  -0.002493624  -0.003230342   0.000176184   0.001430268  -0.000284990  -0.000076661  -0.000555413   0.008029244
                        -0.000216644   0.000137733  -0.000236202  -0.001020915   0.004118288  -0.000289146   0.003806185   0.017585999

    5    5.2  0.5  0.5   0.000171912  -0.001661658  -0.000043606  -0.000625065  -0.004577467   0.000430716   0.001282712  -0.005945788
                         0.000147346  -0.000070163   0.000832098  -0.000181678   0.010717526   0.000438571  -0.024526101  -0.005361939

    6    6.2  0.5  0.5   0.000305571   0.000846422   0.000916374   0.000163693  -0.004856180  -0.000089010  -0.001756010   0.000512664
                        -0.001055886   0.000716505   0.000006370  -0.001020434  -0.012381394   0.001149715  -0.018661720   0.012427954

    7    7.2  0.5  0.5  -0.001073662   0.000644603   0.001541236   0.000798266   0.012445855  -0.001104262  -0.003991628   0.008857102
                        -0.001931583   0.001217079  -0.000601001   0.001383948   0.002308520   0.000289721  -0.010208436  -0.005678430

    8    8.2  0.5  0.5  -0.001854220   0.001128431   0.001611819  -0.001055505  -0.008958215  -0.000509776  -0.005278458  -0.009168408
                        -0.002145601   0.001421539  -0.001380092  -0.000564001   0.004545368  -0.000399754   0.008358827  -0.002982717

    9    9.2  0.5  0.5  -0.000052131   0.000033935  -0.000042513   0.000002010   0.000006351   0.000035759   0.000003173   0.000002830
                         0.000037317  -0.000026871  -0.000064332   0.000002389   0.000020845   0.000534524   0.000405363  -0.000001889

   10   10.2  0.5  0.5   0.000058789  -0.000039999  -0.000025505   0.000000551   0.000015993   0.000472289   0.000453988  -0.000002143
                         0.000082588  -0.000052919   0.000017610  -0.000000900  -0.000002260  -0.000032893  -0.000002375   0.000000896

   11   11.2  0.5  0.5   0.000001729  -0.000001376   0.000001385   0.000041865   0.000453573  -0.000015537   0.000002676   0.000331696
                        -0.000074267  -0.000112429   0.000002691   0.000058535   0.000030714  -0.000007038  -0.000003699  -0.000151159

   12   12.2  0.5  0.5  -0.000089164  -0.000134913  -0.000001962  -0.000046788   0.000074001  -0.000004608  -0.000000078  -0.000275874
                        -0.000001115   0.000001157   0.000000823   0.000033593  -0.001082920   0.000041593  -0.000000839  -0.000605583

   13    1.2  0.5 -0.5   0.000000749   0.000001116   0.000000264   0.000007237   0.000008173  -0.000000226  -0.000000030  -0.000050688
                        -0.000000538  -0.000000801   0.000000103   0.000002810   0.000000079  -0.000000002   0.000000013   0.000022905

   14    2.2  0.5 -0.5   0.000012962   0.000019643   0.000002440   0.000061787   0.000000088   0.000000316   0.000000093   0.000001103
                         0.000000255  -0.000000077  -0.000001228  -0.000044668  -0.000008129   0.000000307  -0.000000016  -0.000005166

   15    3.2  0.5 -0.5   0.000000654  -0.000000717   0.000021271  -0.000001137   0.000001304   0.000034610   0.000009048   0.000000077
                         0.000001069  -0.000000673  -0.000013918   0.000000957  -0.000000041  -0.000002059   0.000000063  -0.000000030

   16    4.2  0.5 -0.5  -0.002704167   0.001899058  -0.000963738   0.000078738   0.000079458  -0.000245081   0.000074922   0.002073521
                         0.001772445  -0.001630545  -0.001469403   0.000283959  -0.000288389  -0.004120855  -0.019332111   0.003239759

   17    5.2  0.5 -0.5  -0.001308744  -0.000053685   0.000648442   0.000260547  -0.000434945  -0.004473427  -0.003210195  -0.011268758
                         0.001026265   0.000219960   0.000056897  -0.000791457   0.000434377  -0.010761367   0.007334673  -0.021821780

   18    6.2  0.5 -0.5   0.000269550  -0.000864116   0.000216776   0.000856540   0.000077868  -0.004975897  -0.004650658  -0.006084696
                        -0.001075710  -0.000679391  -0.001010490   0.000325763   0.001150523   0.012333769  -0.011536388  -0.017729068

   19    7.2  0.5 -0.5  -0.000186370  -0.000254653  -0.001245085   0.001219178   0.001101404   0.012467635   0.010409627  -0.000566370
                        -0.001364573  -0.002195203   0.001001152   0.001118130   0.000300405  -0.002187843   0.001527249  -0.010946437

   20    8.2  0.5 -0.5   0.000087351   0.000254510   0.001188082   0.001002967   0.000513625  -0.008913762  -0.007126649   0.008252290
                        -0.001812871  -0.002824351  -0.000143693   0.001869939  -0.000394797  -0.004631937   0.006493626   0.005443512

   21    9.2  0.5 -0.5   0.000043238   0.000064111  -0.000002738  -0.000062916  -0.000040935   0.000006553   0.000003357   0.000164037
                         0.000002031  -0.000000099   0.000001500   0.000044581   0.000534152  -0.000020783   0.000000556   0.000370703

   22   10.2  0.5 -0.5  -0.000001621   0.000000424  -0.000000188  -0.000017401  -0.000471948   0.000015970  -0.000002322  -0.000414686
                         0.000066315   0.000101374  -0.000001038  -0.000025648  -0.000037467   0.000002415   0.000000066   0.000184788

   23   11.2  0.5 -0.5   0.000064464  -0.000044726  -0.000060215   0.000002265   0.000015605   0.000453849   0.000364513  -0.000003962
                         0.000092122  -0.000059314   0.000039412  -0.000002007  -0.000006887  -0.000026319   0.000001155  -0.000002269

   24   12.2  0.5 -0.5  -0.000110257   0.000071772   0.000031455  -0.000001531   0.000004205   0.000063507  -0.000002018  -0.000000274
                         0.000077758  -0.000052917   0.000048251  -0.000001478   0.000041636   0.001083586   0.000665458  -0.000000796

   25    1.2  1.5  1.5   0.000078614  -0.000054099  -0.000434244   0.000012715   0.000006464   0.000169839   0.002219213  -0.000002142
                         0.000110892  -0.000072360   0.000283947  -0.000011518  -0.000000234  -0.000010206   0.000007964   0.000001200

   26    2.2  1.5  1.5   0.000000263  -0.000000300  -0.000003540  -0.000142224  -0.001883928   0.000071823   0.000001916   0.000978143
                        -0.000015892  -0.000024008  -0.000007342  -0.000198598  -0.000129460   0.000007730  -0.000000117  -0.000447142

   27    3.2  1.5  1.5  -0.000171194  -0.000258576  -0.000001993  -0.000055194  -0.000172234   0.000010254   0.000000157   0.000656228
                        -0.000002849   0.000001653   0.000000826   0.000039289   0.002508573  -0.000096268   0.000001012   0.001439092

   28    4.2  1.5  1.5  -0.054251160   0.036975240   0.498051892  -0.014547289  -0.002260755  -0.057596769   0.374032987  -0.000351132
                        -0.076461730   0.049858909  -0.325603295   0.013329122   0.000121143   0.003334512   0.001478388   0.000188260

   29    5.2  1.5  1.5  -0.001890449   0.001082323  -0.001705900  -0.064196778  -0.481137321   0.018440092  -0.000171013  -0.204309444
                         0.110090143   0.166447282  -0.003170707  -0.089660890  -0.033103502   0.002000775   0.000076303   0.093200297

   30    6.2  1.5  1.5   0.027875756  -0.018284328   0.358549618  -0.014724480   0.000625178   0.008802737  -0.000566189  -0.000054211
                        -0.019774911   0.013436212   0.548386704  -0.016012123   0.005599095   0.148797285   0.141148829  -0.000141490

   31    7.2  1.5  1.5  -0.114059116  -0.172599164  -0.006183921  -0.170141539  -0.021396031   0.001246950   0.000021993   0.165209734
                        -0.001813925   0.001019845   0.003089985   0.121755270   0.311020823  -0.012002898   0.000348596   0.362123399

   32    8.2  1.5  1.5   0.201792764  -0.131263664  -0.067584066   0.002771941   0.000817387   0.014996526   0.001660219   0.000200205
                        -0.142940521   0.097481249  -0.103392425   0.002989505   0.009808692   0.256177390  -0.409059567   0.000393585

   33    9.2  1.5  1.5   0.000129566  -0.000083989  -0.000206244   0.000008415   0.000000778   0.000019182   0.000001853  -0.000000143
                        -0.000091531   0.000062263  -0.000315176   0.000009051   0.000012618   0.000331206  -0.000350083   0.000000276

   34    1.2  1.5  0.5  -0.000004462   0.000002976  -0.000003872  -0.000145985  -0.000683000   0.000025537   0.000003205   0.002687977
                         0.000278142   0.000420388  -0.000007347  -0.000203616  -0.000046757   0.000002835   0.000000085  -0.001227590

   35    2.2  1.5  0.5  -0.000150487   0.000102543  -0.000069191   0.000001882   0.000010150   0.000275208  -0.003829550   0.000003670
                        -0.000212654   0.000138341   0.000045323  -0.000001983  -0.000000660  -0.000015834  -0.000014760  -0.000001829

   36    3.2  1.5  0.5  -0.000276665   0.000179664  -0.000042412   0.000001739  -0.000000700  -0.000009955  -0.000003350   0.000000071
                         0.000195680  -0.000133998  -0.000065289   0.000002175  -0.000007261  -0.000181444   0.000834436  -0.000000681

   37    4.2  1.5  0.5   0.001242660  -0.000781520   0.003297977   0.128650154   0.206153106  -0.007964360   0.000378252   0.377010496
                        -0.075658181  -0.114350443   0.006521223   0.179735740   0.014238275  -0.000892819  -0.000031540  -0.172073481

   38    5.2  1.5  0.5  -0.031751133   0.021716390  -0.211199648   0.006161944  -0.016779429  -0.440883537   0.431286723  -0.000388954
                        -0.044689453   0.028978401   0.138154486  -0.005748370   0.001598378   0.025931480   0.001697582   0.000250381

   39    6.2  1.5  0.5   0.069807394   0.105557357   0.000465169   0.009650221  -0.038555235   0.002293403   0.000082300   0.005169149
                         0.001271731  -0.000666167  -0.000097072  -0.006884452   0.561130649  -0.021461223  -0.000043783   0.011511914

   40    7.2  1.5  0.5   0.431318917  -0.280605091   0.042806214  -0.001690533   0.000411918   0.008699461   0.000731290   0.000055017
                        -0.305647551   0.208459670   0.065524141  -0.001969513   0.005733383   0.149270440  -0.164020696   0.000179799

   41    8.2  1.5  0.5   0.337388710   0.510348670   0.004814941   0.129931095  -0.001175782   0.000165540   0.000050163  -0.115264925
                         0.005519796  -0.003157290  -0.002268762  -0.092934867   0.016662452  -0.000526231  -0.000256571  -0.252707134

   42    9.2  1.5  0.5  -0.000111942  -0.000169169   0.000001871   0.000053063  -0.000010017   0.000000371   0.000000350   0.000161632
                        -0.000001528   0.000001028  -0.000001031  -0.000038064   0.000143485  -0.000005518   0.000000311   0.000353847

   43    1.2  1.5 -0.5   0.000242803  -0.000165870  -0.000209789   0.000006269   0.000025563   0.000683421  -0.002955006   0.000002885
                         0.000343193  -0.000223316   0.000136966  -0.000005447  -0.000002588  -0.000040139  -0.000011761  -0.000001397

   44    2.2  1.5 -0.5  -0.000002593   0.000001813   0.000001036   0.000048094   0.000275042  -0.000010143  -0.000004098  -0.003483692
                         0.000172182   0.000260509   0.000002530   0.000067295   0.000018499  -0.000000759  -0.000000156   0.001590461

   45    3.2  1.5 -0.5  -0.000224095  -0.000338863   0.000002408   0.000063169  -0.000011712   0.000000770  -0.000000345  -0.000346674
                        -0.000004038   0.000002444  -0.000001398  -0.000045510   0.000181339  -0.000007254  -0.000000591  -0.000759021

   46    4.2  1.5 -0.5  -0.066067941   0.045142157   0.184985483  -0.005434835  -0.007972635  -0.206281365  -0.414419817   0.000357679
                        -0.093336283   0.060728002  -0.120980036   0.004885240   0.000815623   0.012240511  -0.001553067  -0.000127023

   47    5.2  1.5 -0.5  -0.000735361   0.000278531   0.003663352   0.146870055  -0.440611639   0.016763158   0.000457551   0.392321359
                         0.036205091   0.054819742   0.007589016   0.205234354  -0.030201296   0.001760853   0.000067994  -0.179150971

   48    6.2  1.5 -0.5  -0.086126868   0.055958780   0.006503857  -0.000398488   0.002085391   0.033117506   0.000030099   0.000093027
                         0.061032466  -0.041752898   0.009910716  -0.000258868   0.021482433   0.561477820   0.012619167   0.000006007

   49    7.2  1.5 -0.5   0.349518047   0.528625865  -0.002288804  -0.063621357   0.010145101  -0.000467441   0.000023906   0.068210180
                         0.005637886  -0.003336044   0.001224034   0.045586270  -0.149179160   0.005729123   0.000186502   0.149166668

   50    8.2  1.5 -0.5  -0.416369113   0.270822000   0.087480599  -0.003667210   0.000160434   0.001014311   0.000973064   0.000151368
                         0.295131318  -0.201288485   0.133664222  -0.003857786   0.000527810   0.016673060  -0.277751601   0.000213149

   51    9.2  1.5 -0.5   0.000138006  -0.000090033   0.000035687  -0.000001371   0.000000317   0.000008627  -0.000001576   0.000000191
                        -0.000097844   0.000066539   0.000054691  -0.000001638   0.000005522   0.000143575   0.000389012  -0.000000428

   52    1.2  1.5 -1.5  -0.000001732   0.000000831  -0.000007683  -0.000302017  -0.000169733   0.000006462  -0.000002446  -0.002019031
                         0.000090331   0.000135928  -0.000015340  -0.000421877  -0.000011851   0.000000296  -0.000000212   0.000921130

   53    2.2  1.5 -1.5   0.000013761  -0.000009484   0.000204467  -0.000005958  -0.000071894  -0.001885094   0.001075489  -0.000001794
                         0.000019675  -0.000012754  -0.000133650   0.000005562   0.000007033   0.000111203   0.000004669   0.000000682

   54    3.2  1.5 -1.5  -0.000210991   0.000137389   0.000037230  -0.000001559  -0.000009321  -0.000147925   0.000005385   0.000000273
                         0.000149489  -0.000102175   0.000056604  -0.000001492  -0.000096363  -0.002510123  -0.001581642   0.000000987

   55    4.2  1.5 -1.5   0.000949277  -0.000536385   0.008736064   0.346419507   0.057561764  -0.002259475  -0.000397503  -0.340237777
                        -0.062065916  -0.093751249   0.017690966   0.483804421   0.003892321  -0.000143038  -0.000026960   0.155374119

   56    5.2  1.5 -1.5  -0.096212664   0.065753119   0.092298222  -0.002737926  -0.018458609  -0.481435433  -0.224561818   0.000187261
                        -0.135827068   0.088317273  -0.060343514   0.002338212   0.001822044   0.028440960  -0.000796324  -0.000000890

   57    6.2  1.5 -1.5  -0.022688918  -0.034176973   0.019521931   0.532736391  -0.010243789   0.000679389   0.000008864   0.058641086
                        -0.000247890   0.000198399  -0.009596487  -0.381415449   0.148705026  -0.005592776   0.000151260   0.128392117

   58    7.2  1.5 -1.5  -0.140787449   0.091585684   0.114532178  -0.004646098  -0.001130614  -0.018382031   0.001428823   0.000123511
                         0.099851918  -0.068006138   0.175085321  -0.005118854  -0.012014415  -0.311213502  -0.398027098   0.000326723

   59    8.2  1.5 -1.5  -0.163480676  -0.247284714  -0.003666088  -0.100426238  -0.017477525   0.000912370   0.000020364  -0.169963773
                        -0.002609994   0.001606932   0.001783421   0.071917802   0.256020091  -0.009800313  -0.000441108  -0.372081713

   60    9.2  1.5 -1.5  -0.000104539  -0.000158631  -0.000011121  -0.000306343  -0.000022390   0.000000901  -0.000000244  -0.000145853
                        -0.000001580   0.000001233   0.000005391   0.000219149   0.000331004  -0.000012610  -0.000000193  -0.000318258


   Nr   State  S   Sz       33            34            35            36            37            38            39            40

    1    1.2  0.5  0.5   0.036332308   0.003958186  -0.009120085   0.000971088  -0.000812416  -0.007381195  -0.029498543  -0.001941033
                         0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000

    2    2.2  0.5  0.5  -0.001860194  -0.000280229  -0.007453026   0.000540695  -0.000064284  -0.000007641   0.001561640   0.000257087
                         0.010503813   0.000928570  -0.035113630   0.003574087   0.000811544   0.007511145  -0.006453800  -0.000524077

    3    3.2  0.5  0.5   0.000713916  -0.006759102  -0.000568226  -0.004497987  -0.007453767   0.000820188  -0.001347849   0.020869736
                         0.002639860  -0.025001644  -0.002522340  -0.026701792  -0.000060893  -0.000057278   0.000706564  -0.009691546

    4    4.2  0.5  0.5  -0.014060148   0.084946562   0.003549893   0.213297814   0.000002447   0.000051137   0.002317467   0.036844216
                        -0.022624782  -0.025836175  -0.008439270  -0.035133162   0.000361978  -0.000116834   0.015734324   0.080026673

    5    5.2  0.5  0.5   0.024130309  -0.109296993   0.055516367   0.063640700   0.000332729  -0.000169695  -0.007124840  -0.070322741
                         0.155785587   0.088130469   0.032312038  -0.053802236   0.000818429   0.000425119  -0.130135795  -0.090032853

    6    6.2  0.5  0.5  -0.030843617   0.166015451  -0.056962660  -0.057300831   0.000541986   0.000077408   0.013164104   0.017772980
                         0.123622968   0.028009752   0.044177357  -0.050224022  -0.000774829   0.000488559  -0.112828528   0.130822765

    7    7.2  0.5  0.5  -0.025191080  -0.055757599  -0.120482342   0.039200559  -0.001119122   0.000461043   0.028089221   0.081159354
                         0.081442004  -0.110549446   0.061163383   0.115323043   0.000113793   0.000223784  -0.053272222  -0.058603014

    8    8.2  0.5  0.5  -0.037173192  -0.056554294  -0.171256982   0.014307570   0.000835394   0.000377099   0.050719670  -0.083231610
                        -0.066760594   0.098153416   0.012916455  -0.085261407   0.000335598  -0.000187922   0.048112740  -0.029002448

    9    9.2  0.5  0.5   0.002667358   0.001488303   0.114870296  -0.008497838   0.002451062   0.007880059   0.002659011   0.002451854
                        -0.153295406  -0.013309341   0.512259375  -0.051879800  -0.018518685  -0.171408133  -0.088285052  -0.007242882

   10   10.2  0.5  0.5   0.530585369   0.057526045  -0.127852822   0.013563349  -0.019621589  -0.173690152   0.397000595   0.025276193
                        -0.006930687  -0.001831271   0.023468101  -0.003691460  -0.000890887  -0.008216231  -0.004012427   0.000112481

   11   11.2  0.5  0.5  -0.008662776   0.098810968   0.007793024   0.065700014   0.172551368  -0.019578941  -0.016937792   0.282565538
                        -0.038436971   0.364800051   0.036546948   0.389743979   0.001417922   0.001394992   0.009617254  -0.131174564

   12   12.2  0.5  0.5  -0.000012198   0.000112470  -0.000011956  -0.000111887   0.002172588  -0.000239046  -0.000008425   0.000132310
                         0.000003441  -0.000030448   0.000002751   0.000018827  -0.299576439   0.032385745  -0.000019203   0.000285257

   13    1.2  0.5 -0.5  -0.001095174   0.010052639  -0.000369262  -0.003467965  -0.007366049   0.000810749   0.001750131  -0.026597331
                        -0.003803660   0.034913909  -0.000898141  -0.008434996  -0.000472622   0.000052019  -0.000839436   0.012757195

   14    2.2  0.5 -0.5  -0.000814783   0.009579058  -0.003511209  -0.035309998   0.000473318   0.000012188  -0.000458449   0.004199117
                         0.000526211  -0.004693831   0.000858989   0.006458997  -0.007496221   0.000813994  -0.000361351   0.005143702

   15    3.2  0.5 -0.5   0.025895738   0.002734332   0.026406375  -0.002548936   0.000814838   0.007442371  -0.023008466  -0.001520853
                        -0.000422374  -0.000044367  -0.005993407   0.000433593   0.000109677   0.000416501   0.000287134  -0.000054170

   16    4.2  0.5 -0.5   0.001324020  -0.025631765  -0.048613727  -0.006455456   0.000043552  -0.000025620   0.001388476  -0.004715060
                        -0.088778789  -0.007251286  -0.210634760   0.006492312   0.000119868   0.000361079   0.088089936  -0.015189069

   17    5.2  0.5 -0.5  -0.054448948   0.156380297   0.025560939   0.050995223  -0.000142126  -0.000384451   0.024470042   0.049855546
                         0.129414545  -0.019915412  -0.079318709   0.039059212  -0.000435113   0.000795445  -0.111590410   0.120418076

   18    6.2  0.5 -0.5  -0.072850406   0.110262781   0.068240235   0.019198432   0.000108532  -0.000491261   0.040551754   0.060664201
                        -0.151784369  -0.063844233   0.033898494  -0.069482399  -0.000482600  -0.000807943   0.125642468   0.096038665

   19    7.2  0.5 -0.5   0.121660983   0.071292522  -0.121566372   0.010754762   0.000474425   0.001109539  -0.098521214   0.048365182
                         0.022993365  -0.046741489   0.007596391  -0.134689603  -0.000193804   0.000185218  -0.017740473   0.035885137

   20    8.2  0.5 -0.5  -0.078673767  -0.074439587   0.073416149  -0.053175275   0.000364292  -0.000855168   0.062503046   0.024924087
                         0.081504109  -0.017250247  -0.045653950  -0.163303946   0.000211682   0.000281419  -0.062145089  -0.065315469

   21    9.2  0.5 -0.5   0.012377958  -0.146572793   0.051214012   0.517459242  -0.003111473  -0.001260270  -0.005343032   0.040578010
                        -0.005112708   0.044977911  -0.011868103  -0.088548209   0.171560958  -0.018637626  -0.005470187   0.078452188

   22   10.2  0.5 -0.5  -0.014156869   0.140145403  -0.001743380  -0.026911570  -0.173859819   0.019638368  -0.022741609   0.359690429
                        -0.055786938   0.511789150  -0.013948187  -0.127172572  -0.002922110   0.000367323   0.011032579  -0.168072505

   23   11.2  0.5 -0.5  -0.377898008  -0.039333275  -0.385449751   0.036764934  -0.019449441  -0.172288072  -0.311503813  -0.019431103
                         0.005981623   0.002310385   0.087437694  -0.006689567  -0.002645780  -0.009633551   0.003927322  -0.001346324

   24   12.2  0.5 -0.5  -0.000001860  -0.000000068   0.000025133  -0.000002001   0.001835123   0.017013922   0.000004068   0.000000708
                        -0.000116504  -0.000012674   0.000110641  -0.000012104  -0.032334594  -0.299100801   0.000314421   0.000020957

   25    1.2  1.5  1.5  -0.121241018  -0.013245505   0.112931391  -0.012246973  -0.000070912  -0.000652779   0.000055909   0.000004898
                         0.001953789   0.000037603  -0.025593351   0.002049179  -0.000003966  -0.000036650  -0.000006998   0.000001722

   26    2.2  1.5  1.5   0.002006520  -0.017647220  -0.001682582  -0.011653286  -0.414907960   0.044854180   0.000559335  -0.008367714
                         0.007128599  -0.065305866  -0.007311812  -0.069199923  -0.003008992   0.000331887  -0.000248377   0.003891047

   27    3.2  1.5  1.5  -0.007018270   0.064289648   0.007271214   0.068811879   0.003009412  -0.000332133  -0.000078835   0.001311755
                         0.001974840  -0.017372504  -0.001673120  -0.011588186  -0.414988211   0.044862403  -0.000188397   0.002812080

   28    4.2  1.5  1.5   0.051286402   0.005615143   0.052485068  -0.005677437   0.016745374   0.154899356  -0.260893639  -0.017418898
                        -0.000842339  -0.000033857  -0.011915119   0.000938986   0.000949606   0.008811423   0.003205563   0.000157463

   29    5.2  1.5  1.5   0.001532025  -0.013474005  -0.001290842  -0.008939339   0.077272615  -0.008354093  -0.015838916   0.237535080
                         0.005443189  -0.049862903  -0.005608957  -0.053083253   0.000560593  -0.000061368   0.007417416  -0.110373840

   30    6.2  1.5  1.5  -0.000404461  -0.000023739  -0.015633882   0.001238115   0.000857176   0.007954279   0.001685311  -0.000059353
                        -0.024191969  -0.002654273  -0.068901860   0.007458991  -0.015115564  -0.139824170   0.135976998   0.009020726

   31    7.2  1.5  1.5  -0.005389996   0.049375570   0.005566726   0.052682345  -0.000563565   0.000061886  -0.007082636   0.105047280
                         0.001516727  -0.013342441  -0.001280962  -0.008871819   0.077692416  -0.008398991  -0.015073368   0.226089648

   32    8.2  1.5  1.5   0.001151955   0.000029696  -0.005318384   0.000432186  -0.000409301  -0.003796939  -0.003959160  -0.000497371
                         0.071066276   0.007769027  -0.023505817   0.002555384   0.007217545   0.066762333  -0.324764183  -0.021806840

   33    9.2  1.5  1.5  -0.006647840  -0.000127711   0.087354735  -0.006993907  -0.000002570  -0.000024030   0.001385660   0.000232449
                        -0.412591441  -0.045074977   0.385455451  -0.041800843   0.000046057   0.000423003   0.114552770   0.007713559

   34    1.2  1.5  0.5   0.001155264  -0.010161304  -0.000972083  -0.006733588   0.479123749  -0.051796003   0.000198198  -0.003020011
                         0.004104469  -0.037602639  -0.004225083  -0.039985465   0.003474522  -0.000383767  -0.000088782   0.001399056

   35    2.2  1.5  0.5   0.007283649   0.000814497   0.144147774  -0.015610649  -0.025870277  -0.239304056  -0.003307747  -0.000222208
                        -0.000141968  -0.000029130  -0.032698681   0.002595361  -0.001467666  -0.013612868   0.000048598   0.000007686

   36    3.2  1.5  0.5   0.002396398   0.000072564   0.003026051  -0.000219701   0.001465903   0.013595731   0.000017414  -0.000000217
                         0.147225897   0.016102780   0.013216203  -0.001411835  -0.025839240  -0.239016274   0.001122272   0.000078658

   37    4.2  1.5  0.5  -0.001604834   0.014005493  -0.001225010  -0.008549193   0.000451345  -0.000048793   0.013809542  -0.203260434
                        -0.005634306   0.051765457  -0.005370278  -0.050652265   0.000002814  -0.000000135  -0.006121828   0.094492519

   38    5.2  1.5  0.5   0.053620494   0.005857658  -0.050014492   0.005423706  -0.014404927  -0.133248414  -0.237219338  -0.015968051
                        -0.000863597  -0.000016562   0.011334526  -0.000907334  -0.000817564  -0.007579832   0.002873880   0.000478777

   39    6.2  1.5  0.5  -0.007474302   0.068613023  -0.002493926  -0.023440634  -0.000473397   0.000051837  -0.009045783   0.138027265
                         0.002121324  -0.018556437   0.000564215   0.003965173   0.065187397  -0.007047692  -0.020033817   0.296951602

   40    7.2  1.5  0.5  -0.000865111  -0.000016481   0.011372915  -0.000910579   0.000827863   0.007674295   0.002783515   0.000465951
                        -0.053697103  -0.005866346   0.050184090  -0.005442030  -0.014585272  -0.134916679   0.230392638   0.015518703

   41    8.2  1.5  0.5  -0.002524553   0.023058972   0.007388678   0.069849955  -0.001020208   0.000111816  -0.003940561   0.056985795
                         0.000702368  -0.006223632  -0.001695663  -0.011771064   0.140671447  -0.015207325  -0.008069193   0.122709315

   42    9.2  1.5  0.5  -0.041630061   0.381359470   0.043017739   0.407114173  -0.000000136  -0.000000478  -0.003611787   0.053691891
                         0.011715924  -0.103051579  -0.009898842  -0.068558930   0.000009010  -0.000001283  -0.007702996   0.115557430

   43    1.2  1.5 -0.5  -0.038946137  -0.004263877  -0.039542297   0.004277341   0.051714287   0.478363033  -0.003328038  -0.000217100
                         0.000639511   0.000025486   0.008976936  -0.000707551   0.002933549   0.027211179   0.000044603   0.000005664

   44    2.2  1.5 -0.5   0.000197367  -0.001878858  -0.003535639  -0.024570628   0.239684629  -0.025911165  -0.000203678   0.003003443
                         0.000790759  -0.007038579  -0.015424899  -0.145753452   0.001737844  -0.000191834   0.000089168  -0.001386679

   45    3.2  1.5 -0.5   0.015494211  -0.142141306  -0.001389322  -0.013374093   0.001736518  -0.000191607  -0.000034213   0.000469646
                        -0.004385682   0.038432494   0.000333661   0.002226800  -0.239396340   0.025880079  -0.000070828   0.001019426

   46    4.2  1.5 -0.5   0.053619678   0.005858380  -0.050098216   0.005432687   0.000048702   0.000450599  -0.224134613  -0.015098858
                        -0.000864051  -0.000016752   0.011353829  -0.000909091   0.000002989   0.000026092   0.002704680   0.000452454

   47    5.2  1.5 -0.5   0.001604816  -0.014006155   0.001223219   0.008535209   0.133460321  -0.014427716  -0.014604633   0.215131436
                         0.005633560  -0.051766117   0.005361303   0.050567490   0.000967695  -0.000106469   0.006473993  -0.099998693

   48    6.2  1.5 -0.5   0.001152258   0.000029526  -0.005246122   0.000426498   0.000399537   0.003701561  -0.003970113  -0.000507877
                         0.071068704   0.007769449  -0.023187586   0.002521132  -0.007036549  -0.065083940  -0.327438572  -0.021975488

   49    7.2  1.5 -0.5  -0.005641887   0.051840153  -0.005379485  -0.050738946   0.000980246  -0.000107739  -0.006291228   0.097127837
                         0.001607298  -0.014025897   0.001227186   0.008564195  -0.135131211   0.014608350  -0.014193932   0.208937069

   50    8.2  1.5 -0.5   0.000399430   0.000023561   0.015674013  -0.001241301   0.000862147   0.007989160  -0.001686746   0.000063330
                         0.023880750   0.002620331   0.069078937  -0.007478437  -0.015183278  -0.140448105  -0.135285297  -0.008979749

   51    9.2  1.5 -0.5   0.006488323   0.000259914   0.091398654  -0.007202491   0.000000560   0.000000441  -0.001563726  -0.000074740
                         0.394984272   0.043246472   0.402602239  -0.043550397  -0.000001250  -0.000009000  -0.127412298  -0.008507384

   52    1.2  1.5 -1.5   0.003628710  -0.031668173   0.002761736   0.019272004  -0.000653786   0.000071020  -0.000003672   0.000053437
                         0.012738810  -0.117048403   0.012106209   0.114180159  -0.000005223   0.000000583   0.000003671  -0.000017869

   53    2.2  1.5 -1.5   0.067639089   0.007405477   0.068432948  -0.007402370   0.044783388   0.414249211   0.009227496   0.000611739
                        -0.001110937  -0.000044197  -0.015535766   0.001224170   0.002540833   0.023563979  -0.000110416  -0.000017946

   54    3.2  1.5 -1.5  -0.001093754  -0.000044114  -0.015448420   0.001217484   0.002541114   0.023568698   0.000033394   0.000010394
                        -0.066586533  -0.007290690  -0.068049299   0.007361224  -0.044791609  -0.414329324   0.003102802   0.000203961

   55    4.2  1.5 -1.5  -0.001521096   0.013380773   0.001290428   0.008937681   0.155145693  -0.016771815   0.015773830  -0.236620789
                        -0.005405298   0.049517264   0.005608010   0.053073254   0.001124954  -0.000124558  -0.007391151   0.109938024

   56    5.2  1.5 -1.5   0.051644343   0.005654579   0.052494946  -0.005678470  -0.008340879  -0.077149942  -0.261906486  -0.017488942
                        -0.000848380  -0.000033839  -0.011917387   0.000938963  -0.000473675  -0.004388368   0.003208013   0.000161929

   57    6.2  1.5 -1.5   0.002557219  -0.023359432  -0.007369482  -0.069670920  -0.001015066   0.000112441   0.003954697  -0.057286228
                        -0.000711587   0.006304907   0.001691216   0.011740847   0.140046559  -0.015139431   0.008107860  -0.123332365

   58    7.2  1.5 -1.5  -0.000839969  -0.000033822  -0.011827388   0.000932042  -0.000476033  -0.004412282   0.003060910   0.000132707
                        -0.051139634  -0.005599230  -0.052098480   0.005635655   0.008385718   0.077569072   0.249283154   0.016653905

   59    8.2  1.5 -1.5  -0.007473943   0.068610607  -0.002527768  -0.023762438   0.000485683  -0.000053683  -0.008982320   0.136880551
                         0.002121044  -0.018556057   0.000571978   0.004019350  -0.066868453   0.007228942  -0.019877213   0.294535506

   60    9.2  1.5 -1.5   0.043350603  -0.398323398   0.041320294   0.389717705   0.000003105  -0.000000385   0.003126285  -0.048291101
                        -0.012348888   0.107769946  -0.009426479  -0.065778909  -0.000423673   0.000046127   0.007055450  -0.103885642


   Nr   State  S   Sz       41            42            43            44            45            46            47            48

    1    1.2  0.5  0.5   0.009723448   0.000710744  -0.000076754  -0.000001742  -0.000035106   0.000610841   0.000009946  -0.000058754
                         0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000

    2    2.2  0.5  0.5   0.004752330   0.000167361   0.000001657   0.000001061   0.000005373  -0.000033616   0.000006483  -0.000039726
                         0.029877228   0.002250701   0.000047195   0.000002839   0.000000383  -0.000093808   0.000049485  -0.000205808

    3    3.2  0.5  0.5   0.001289844  -0.016596509  -0.000001266   0.000051701   0.000258929   0.000015207  -0.000010867   0.000001850
                         0.000706558  -0.012541371  -0.000003407   0.000088925  -0.000430310  -0.000022162   0.000225610   0.000055405

    4    4.2  0.5  0.5   0.006629142   0.105792964   0.019876493   0.009701447  -0.003291087   0.004178134   0.308699270   0.050637045
                         0.013069965  -0.138467698  -0.024992510  -0.006184701  -0.000961878  -0.020714356   0.017200908  -0.011875280

    5    5.2  0.5  0.5  -0.036457125   0.012453284  -0.048717794  -0.030261213   0.141710123   0.001517094   0.021240866   0.061135350
                        -0.016625312  -0.077102047   0.167618913  -0.041356382   0.132126954   0.138634093  -0.000265754   0.096737612

    6    6.2  0.5  0.5   0.048444317  -0.067602584   0.059332904  -0.035767929  -0.228056295  -0.005206657   0.016404637  -0.033536287
                        -0.030615374   0.010572911   0.133133800  -0.068227194  -0.062655914   0.095768226   0.011116043   0.092083762

    7    7.2  0.5  0.5   0.094235957   0.097902200   0.136598457   0.095181177   0.098981919   0.023657664   0.025076633  -0.107289021
                        -0.034472807   0.058825072   0.071110625   0.157743419  -0.118423203   0.047699023  -0.081257952   0.050664267

    8    8.2  0.5  0.5   0.140185021  -0.041008038   0.188639557  -0.058603624   0.032148477   0.025558487   0.008743026  -0.163434994
                        -0.010134291  -0.055035232  -0.045694931  -0.107149770   0.142019542  -0.036032186   0.046872532   0.007359614

    9    9.2  0.5  0.5   0.070261797   0.002571495  -0.000009341   0.000013575   0.000064223  -0.000077938   0.000150384  -0.000855298
                         0.403456054   0.030292061   0.000191029   0.000027998  -0.000197320   0.001776976   0.000953025  -0.004103247

   10   10.2  0.5  0.5  -0.126456942  -0.008608117   0.000630477   0.000009187   0.000337231  -0.006189611   0.000112028  -0.000339760
                         0.018241239   0.001934444   0.000015637  -0.000002031   0.000031036  -0.000068557  -0.000025443   0.000110149

   11   11.2  0.5  0.5   0.016818933  -0.222459498  -0.000018944   0.000841134   0.004816327   0.000267487  -0.000135137   0.000031977
                         0.009232183  -0.168097522  -0.000050537   0.001445285  -0.008003463  -0.000449689   0.002730417   0.000705439

   12   12.2  0.5  0.5   0.000025631  -0.000333837   0.000006393  -0.000201555   0.002101504   0.000121381   0.000863097   0.000183298
                        -0.000035643   0.000441671  -0.000002763   0.000117020   0.001262417   0.000075338   0.000037083   0.000006649

   13    1.2  0.5 -0.5   0.000633260  -0.008663413   0.000000812  -0.000035759  -0.000319039  -0.000018336   0.000009247   0.000001565
                         0.000322706  -0.004414830   0.000001541  -0.000067916   0.000520904   0.000029937   0.000058021   0.000009822

   14    2.2  0.5 -0.5   0.001171023  -0.017799681  -0.000003006   0.000042532  -0.000062439   0.000002480   0.000209495   0.000049888
                        -0.001929344   0.024462312   0.000000384  -0.000020521  -0.000077661  -0.000004782   0.000006838  -0.000001387

   15    3.2  0.5 -0.5  -0.020481461  -0.001470032  -0.000102771  -0.000003604  -0.000026842   0.000502190  -0.000055005   0.000221087
                         0.003638658   0.000043890  -0.000004319   0.000000467   0.000001393   0.000003943   0.000006893  -0.000046240

   16    4.2  0.5 -0.5   0.031389764  -0.011840724   0.000952759  -0.012854380  -0.019846700  -0.000898660   0.003757439   0.065573106
                         0.171406352   0.008635205  -0.011465638   0.029231240  -0.007256022   0.003308909  -0.051874987   0.302144466

   17    5.2  0.5 -0.5  -0.023911733   0.040031175   0.050692236   0.125620065   0.117429977  -0.038658899  -0.105154078   0.003080686
                         0.074350783   0.001740131   0.007509237  -0.121198692   0.073701518  -0.189854630  -0.045147718   0.021017954

   18    6.2  0.5 -0.5  -0.055432133  -0.029262401   0.077034252   0.145445136   0.084387229  -0.065681706  -0.085657739   0.013559443
                        -0.040114516  -0.049273369  -0.000136847  -0.009524419   0.045579139   0.227203324   0.047611486   0.014450606

   19    7.2  0.5 -0.5   0.113937961  -0.068310479  -0.183921989   0.126560963   0.028319810   0.152684890  -0.033146443  -0.076298335
                        -0.007960581  -0.073501487  -0.010730551   0.087739283   0.045087362  -0.022556588   0.113925920   0.037553382

   20    8.2  0.5 -0.5  -0.061525577  -0.120300895   0.122113515   0.047451162  -0.044076050  -0.104318375   0.018455363   0.047664404
                         0.030416104  -0.072679012   0.001935821   0.188205463   0.002975987  -0.101591099   0.162556331   0.001256726

   21    9.2  0.5 -0.5   0.016044949  -0.245786972  -0.000031099   0.000164679   0.001556050   0.000201811   0.004186722   0.000964816
                        -0.025822106   0.327570254   0.000001032  -0.000097263   0.000861641   0.000048292   0.000198822  -0.000001488

   22   10.2  0.5 -0.5  -0.006791359   0.104388555  -0.000002483   0.000307566   0.003174335   0.000149667  -0.000055301  -0.000007493
                        -0.005631980   0.073669061  -0.000009075   0.000550590  -0.005314092  -0.000303788   0.000352862   0.000114636

   23   11.2  0.5 -0.5  -0.274530228  -0.019177135  -0.001670725  -0.000053544  -0.000523186   0.009340616  -0.000701680   0.002675116
                         0.048766374   0.000589243  -0.000070939   0.000006782  -0.000006767   0.000072966   0.000079452  -0.000563197

   24   12.2  0.5 -0.5  -0.000096906  -0.000006654  -0.000009643   0.000000533   0.000000850   0.000021058  -0.000035416   0.000172465
                        -0.000545096  -0.000043394   0.000232862   0.000006944   0.000142858  -0.002451443  -0.000179967   0.000846503

   25    1.2  1.5  1.5   0.001903921   0.000146972   0.281604573   0.008717221  -0.006856233   0.118055040   0.007669605  -0.036499170
                        -0.000332296  -0.000018213   0.012682855  -0.000552240   0.000067651   0.000980289  -0.001575431   0.007458412

   26    2.2  1.5  1.5  -0.000121709   0.001446973  -0.001834878   0.073389144   0.170276628   0.010289925   0.000696544   0.000824821
                        -0.000092534   0.001089744  -0.004107438   0.125388568  -0.283169664  -0.015798343  -0.021907679  -0.003229906

   27    3.2  1.5  1.5   0.000030387  -0.000509221  -0.003899022   0.118675748  -0.212099537  -0.013016818  -0.221745124  -0.049091568
                        -0.000054501   0.000672226   0.001753885  -0.069473325  -0.127507196  -0.007389106  -0.010069367  -0.000758243

   28    4.2  1.5  1.5  -0.232256309  -0.018570726   0.006968467   0.000194390   0.003593953  -0.077918569   0.045468090  -0.196712137
                         0.041105887   0.002738866   0.000306614  -0.000025198  -0.001017035  -0.000606981  -0.007195190   0.040880419

   29    5.2  1.5  1.5   0.014932505  -0.183756936   0.001695901  -0.066407838  -0.084279695  -0.004446125  -0.019865402  -0.000690137
                         0.010624050  -0.138670334   0.003738820  -0.113412215   0.140271894   0.010240026   0.430693243   0.097024071

   30    6.2  1.5  1.5   0.056458165   0.003744980   0.009863770  -0.000437834  -0.000863913   0.000197474  -0.007682788   0.042510025
                         0.319040738   0.025342531  -0.219237862  -0.006763144   0.001976819  -0.019632320  -0.046806162   0.205023557

   31    7.2  1.5  1.5  -0.010571344   0.138222210   0.004493817  -0.137549450   0.369197236   0.019400337  -0.180211906  -0.043238267
                         0.014879391  -0.183157375  -0.001994259   0.080491937   0.222041975   0.013740013  -0.008798044   0.000938185

   32    8.2  1.5  1.5   0.023504596   0.001530252   0.020298654  -0.000873827   0.000551418   0.001848438   0.000553128  -0.005573064
                         0.132893260   0.010269184  -0.450810658  -0.013955220   0.012665726  -0.225105563   0.007209402  -0.025815693

   33    9.2  1.5  1.5  -0.022296139  -0.001462823   0.000004345  -0.000002898  -0.000007914  -0.000021344  -0.000007551   0.000074462
                        -0.126048578  -0.009882741  -0.000001250  -0.000005587  -0.000157150   0.002829840  -0.000093171   0.000339861

   34    1.2  1.5  0.5  -0.000357205   0.004362179  -0.000149486   0.007246380   0.074142099   0.005020615  -0.016015152   0.000120586
                        -0.000248114   0.003290496  -0.000385637   0.012413889  -0.123203756  -0.004851378   0.341396304   0.078359629

   35    2.2  1.5  0.5   0.001437409   0.000112677  -0.236686237  -0.007342264   0.009515048  -0.177394457   0.031507942  -0.133217422
                        -0.000257918  -0.000020963  -0.010669157   0.000454685  -0.000927131  -0.001437756  -0.004645173   0.027803134

   36    3.2  1.5  0.5  -0.000320640  -0.000022896  -0.011290327   0.000501104   0.000799336  -0.000325069   0.007418243  -0.040896981
                        -0.001793656  -0.000146240   0.250900691   0.007747587  -0.002815392   0.034986592   0.044949939  -0.197317343

   37    4.2  1.5  0.5   0.016471881  -0.206743472  -0.002105747   0.084153043  -0.252345271  -0.015017865  -0.008396451  -0.001368298
                         0.011720494  -0.155978193  -0.004710818   0.143706467   0.419733339   0.024333909   0.190642079   0.040723538

   38    5.2  1.5  0.5   0.251957298   0.019746100  -0.071675102  -0.002239842   0.007735625  -0.156816261   0.064211936  -0.276652859
                        -0.044569871  -0.002928059  -0.003235934   0.000118615  -0.001520838  -0.001237893  -0.010026390   0.057539568

   39    6.2  1.5  0.5   0.005944460  -0.080488129  -0.012941450   0.394776734  -0.181582515  -0.010067291  -0.004153094   0.000165663
                        -0.008366548   0.106698570   0.005789542  -0.231109396  -0.109213129  -0.006603861   0.000023215  -0.000486963

   40    7.2  1.5  0.5  -0.045689022  -0.002996584  -0.004290726   0.000198423   0.001468312   0.000698339   0.010835005  -0.061271302
                        -0.258286458  -0.020257458   0.095823438   0.002929366   0.003932485  -0.090936206   0.068023811  -0.294973152

   41    8.2  1.5  0.5  -0.014783908   0.194502931   0.005865272  -0.178452519   0.009626606   0.001818451   0.222694048   0.050568385
                         0.020808126  -0.257760693  -0.002639371   0.104479309   0.005764852   0.000001903   0.010342378   0.000166511

   42    9.2  1.5  0.5  -0.005303769   0.069314648   0.000022438  -0.000704543   0.001881636   0.000125723   0.003140939   0.000705139
                         0.007464131  -0.091850971  -0.000010135   0.000410933   0.001131068   0.000064129   0.000144270   0.000010406

   43    1.2  1.5 -0.5  -0.005380636  -0.000430917   0.014360351   0.000410872   0.006759326  -0.143787884   0.077401959  -0.334620602
                         0.000951170   0.000058880   0.000628498  -0.000047389  -0.001747560  -0.001122805  -0.012214042   0.069548359

   44    2.2  1.5 -0.5  -0.000090875   0.001163600  -0.003018317   0.119708866  -0.091426040  -0.005760280   0.006489339  -0.000371799
                        -0.000069837   0.000882441  -0.006708603   0.204460248   0.152026773   0.007629868  -0.135933014  -0.031846346

   45    3.2  1.5 -0.5   0.000086798  -0.001100075   0.007088876  -0.216748456  -0.030005133  -0.002818357  -0.201294872  -0.045557264
                        -0.000119902   0.001452531  -0.003166076   0.126880792  -0.017996089  -0.000788817  -0.009331218  -0.000251054

   46    4.2  1.5 -0.5   0.255024884   0.019997710   0.166363621   0.005149382  -0.028594859   0.489732526   0.040000615  -0.186944448
                        -0.045103973  -0.002963858   0.007511942  -0.000331433   0.000097253   0.004033023  -0.007760775   0.038297208

   47    5.2  1.5 -0.5  -0.016263956   0.204252813  -0.000938550   0.036255579  -0.080848603  -0.005337191   0.013279655  -0.000204977
                        -0.011574357   0.154109513  -0.002037176   0.061913848   0.134374014   0.005802348  -0.282260973  -0.064989685

   48    6.2  1.5 -0.5   0.023268064   0.001497661  -0.020576067   0.000906361   0.000373455   0.001706338  -0.000454820   0.000630735
                         0.131611250   0.010153460   0.456986704   0.014148443   0.012034195  -0.211888663   0.000240242   0.004104985

   49    7.2  1.5 -0.5   0.011867588  -0.157980344   0.002684480  -0.082789992   0.077911981   0.002586596  -0.300940270  -0.068881319
                        -0.016688453   0.209383839  -0.001189170   0.048439228   0.046899941   0.003306040  -0.014081423   0.000006397

   50    8.2  1.5 -0.5  -0.056264966  -0.003724476   0.009309929  -0.000397100   0.000948144  -0.000111855   0.008123461  -0.045263584
                        -0.317972041  -0.025252135  -0.206578200  -0.006419502  -0.001551706   0.011220185   0.049911909  -0.218290659

   51    9.2  1.5 -0.5  -0.020054097  -0.001336549   0.000035377  -0.000001486   0.000010978  -0.000018232   0.000121260  -0.000636829
                        -0.113309110  -0.009058524  -0.000814860  -0.000024576  -0.000140706   0.002195344   0.000694712  -0.003079084

   52    1.2  1.5 -1.5   0.000122680  -0.001545483  -0.003572566   0.142417409  -0.060823515  -0.003638661  -0.001620801  -0.000348666
                         0.000082958  -0.001160526  -0.007970677   0.243267902   0.101185243   0.005811424   0.037218145   0.007821973

   53    2.2  1.5 -1.5   0.001784012   0.000150455  -0.145140375  -0.004489290  -0.018846648   0.330411777   0.003059830  -0.021524999
                        -0.000313959  -0.000027185  -0.006521565   0.000290005   0.000523507   0.002691890  -0.001322899   0.004135941

   54    3.2  1.5 -1.5  -0.000148489  -0.000002329   0.006184064  -0.000264574   0.000497436  -0.002044658   0.008475379  -0.044844623
                        -0.000830148  -0.000062356  -0.137376248  -0.004267140  -0.014959579   0.247467408   0.048360365  -0.217396532

   55    4.2  1.5 -1.5  -0.015302621   0.188272381  -0.000068267   0.003517803   0.040178809   0.002744393  -0.009410116   0.000050771
                        -0.010872123   0.142078138  -0.000183744   0.006023173  -0.066763276  -0.002533607   0.200694602   0.046033850

   56    5.2  1.5 -1.5  -0.226685853  -0.018128325   0.131290671   0.004098372   0.011054525  -0.163637809  -0.095706172   0.422198576
                         0.040119788   0.002685884   0.005923776  -0.000241245   0.001556806  -0.001392405   0.015952282  -0.087405183

   57    6.2  1.5 -1.5   0.014843220  -0.195160298   0.006188320  -0.189396342  -0.016844902  -0.002136979  -0.209158917  -0.047431989
                        -0.020879357   0.258625163  -0.002763424   0.110867306  -0.010085449  -0.000295766  -0.009711266  -0.000220149

   58    7.2  1.5 -1.5   0.039992741   0.002663040  -0.007140883   0.000328985   0.001584321   0.003479906   0.005878836  -0.037052177
                         0.225948189   0.018057071   0.159209959   0.004905429   0.023720265  -0.430809851   0.042847021  -0.176581066

   59    8.2  1.5 -1.5   0.006026041  -0.081280958   0.012755321  -0.389441127  -0.192927646  -0.010512890   0.026371086   0.007206604
                        -0.008454858   0.107733422  -0.005728310   0.227986608  -0.115995062  -0.007085467   0.001440437  -0.000588464

   60    9.2  1.5 -1.5  -0.005790503   0.077096489   0.000006294   0.000000918   0.002424337   0.000129878  -0.000347345  -0.000093198
                         0.008141160  -0.102183625  -0.000000039   0.000004427   0.001459808   0.000088828  -0.000020043   0.000007208


   Nr   State  S   Sz       49            50            51            52            53            54            55            56

    1    1.2  0.5  0.5  -0.000048786  -0.000536589   0.000010775   0.001524156  -0.016794986   0.000000000   0.029821521   0.000057120
                        -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000

    2    2.2  0.5  0.5  -0.000023176  -0.000167715   0.000008110  -0.000082488  -0.000010696  -0.000142844  -0.000009982   0.000251727
                        -0.000133474  -0.001374268   0.000005803   0.000246356   0.016888921  -0.000027919  -0.029735701  -0.000003515

    3    3.2  0.5  0.5  -0.000083212   0.000004211   0.000929582  -0.000007900  -0.000000078  -0.016833286  -0.000057117   0.029777452
                        -0.001058537   0.000108927   0.000534812  -0.000005600  -0.000142331   0.000533223   0.000251382  -0.000409443

    4    4.2  0.5  0.5  -0.373465599   0.066689097   0.093038596   0.009582889  -0.000033309  -0.000033113   0.000005039   0.000000685
                         0.029956410   0.005125970  -0.161472583   0.047176591   0.000054824  -0.000951267  -0.000005386   0.000069983

    5    5.2  0.5  0.5  -0.153738519  -0.063427218  -0.052213384  -0.023614192   0.000082661  -0.000233067  -0.000012678   0.000088872
                         0.077987266  -0.063181834   0.219846791  -0.300041315  -0.000392818  -0.001971504   0.000034310   0.000100869

    6    6.2  0.5  0.5   0.133859018   0.085727501   0.224267709   0.029467766  -0.000081392  -0.000184223   0.000014482   0.000127682
                         0.089326266  -0.074493263  -0.196001670  -0.226947075  -0.000300461   0.002146397   0.000027536  -0.000108909

    7    7.2  0.5  0.5  -0.009909674   0.227369886  -0.203408374   0.072805226  -0.000198804   0.000556007   0.000035254  -0.000285498
                        -0.238229762  -0.039269903  -0.077764208  -0.124201021  -0.000177004  -0.000270795   0.000016449   0.000016499

    8    8.2  0.5  0.5   0.012529740   0.303537544   0.058286890   0.095294411  -0.000280960  -0.000409838   0.000047392   0.000195899
                         0.157236112  -0.034840226   0.194752816   0.100317826   0.000113841  -0.000885754  -0.000009650   0.000041063

    9    9.2  0.5  0.5   0.000077145   0.000553923  -0.000018793   0.000053316   0.016109167   0.003183944   0.011206801   0.002249966
                         0.000412932   0.004037764  -0.000009535  -0.000132874  -0.347077777   0.000566509  -0.243946340  -0.000030858

   10   10.2  0.5  0.5  -0.000225159  -0.002492726   0.000041394   0.005853523  -0.348664148  -0.001012899  -0.244560068  -0.001182576
                         0.000013904   0.000325406   0.000001858  -0.000050790  -0.016223345   0.000063540  -0.011257758   0.000009971

   11   11.2  0.5  0.5   0.000396939  -0.000028097  -0.001787801   0.000039797  -0.001164859   0.348089670  -0.001285841   0.244508656
                         0.005116405  -0.000503437  -0.001028173   0.000008796   0.003106056  -0.011026701   0.002190414  -0.003361715

   12   12.2  0.5  0.5  -0.002424972   0.000219209  -0.001246831   0.000006453  -0.000000356   0.017424688  -0.000010376   0.005379193
                         0.000184836  -0.000007547   0.002166677  -0.000011441   0.001057776   0.550358683  -0.000000709   0.391223318

   13    1.2  0.5 -0.5  -0.000117685   0.000010700  -0.001327570   0.000009385  -0.000000000  -0.016789942  -0.000057070   0.029795305
                        -0.000523525   0.000047599  -0.000748737   0.000005293  -0.000000000  -0.000411598  -0.000002395   0.001250182

   14    2.2  0.5 -0.5  -0.001377592   0.000135308  -0.000049173   0.000009915   0.000143485   0.000403207  -0.000251359  -0.001256557
                         0.000137773  -0.000006662   0.000255104  -0.000001071  -0.000024410  -0.016884111  -0.000014065   0.029709142

   15    3.2  0.5 -0.5   0.000107198   0.001051015   0.000009632   0.001072410   0.016815163  -0.000003566  -0.029734110  -0.000046529
                        -0.000019781  -0.000150972  -0.000000997  -0.000009178   0.000945599   0.000142286  -0.001657417  -0.000253556

   16    4.2  0.5 -0.5   0.019627414   0.052681380  -0.031522262   0.001715526   0.000056416  -0.000031956  -0.000003618   0.000004809
                         0.063941190   0.370942869   0.036384194   0.186350832  -0.000950170  -0.000055624   0.000069892   0.000005592

   17    5.2  0.5 -0.5  -0.075554397  -0.042370592   0.167962915   0.062520226   0.000281313   0.000073009  -0.000093023  -0.000011228
                        -0.048025921   0.167099607  -0.249741627  -0.217140669  -0.001965200   0.000394726   0.000097054  -0.000034811

   18    6.2  0.5 -0.5  -0.053877827  -0.116509387   0.085820113   0.099056410   0.000131566  -0.000088731  -0.000123004   0.000015623
                         0.099978150  -0.111008924  -0.212151437   0.280892306   0.002150267   0.000298376  -0.000114165  -0.000026904

   19    7.2  0.5 -0.5   0.011552944   0.234602971  -0.002401407  -0.215374249  -0.000549204  -0.000203082   0.000284555   0.000035912
                         0.230446783  -0.042580127  -0.143946962  -0.032189617  -0.000284340   0.000172078   0.000028453  -0.000014956

   20    8.2  0.5 -0.5   0.032579855  -0.156155906  -0.132284211   0.146440846   0.000431422  -0.000278086  -0.000197448   0.000046946
                         0.303788470   0.022260331   0.040565730  -0.141000353  -0.000875444  -0.000120692   0.000032814   0.000011628

   21    9.2  0.5 -0.5   0.004060943  -0.000419797   0.000018834  -0.000021053  -0.003196871   0.007598424  -0.002246695   0.000970199
                        -0.000345125   0.000015298  -0.000141927  -0.000000927   0.000488310   0.347368324  -0.000125154   0.244201695

   22   10.2  0.5 -0.5  -0.000229222   0.000035817  -0.005073586   0.000036968   0.001011037  -0.348957016   0.001181118  -0.244817020
                        -0.002503404   0.000222726  -0.002919766   0.000018716   0.000088344   0.007673691   0.000059538   0.000995383

   23   11.2  0.5 -0.5  -0.000497342  -0.005078892  -0.000038985  -0.002062298  -0.347714889  -0.001088389  -0.244152773  -0.001192884
                         0.000083001   0.000734855  -0.000011888   0.000017307  -0.019554091  -0.003133670  -0.013609083  -0.002242394

   24   12.2  0.5 -0.5   0.000040714   0.000351509  -0.000000000  -0.000021641  -0.030907203   0.000025567  -0.021775378  -0.000010397
                         0.000215527   0.002406470  -0.000013135  -0.002499721   0.549766354  -0.001057467   0.390653879   0.000000273

   25    1.2  1.5  1.5  -0.023615096  -0.261591284   0.001388540   0.243661598   0.002917731  -0.000007132  -0.000382052   0.000000266
                         0.004705707   0.037730843  -0.000253790  -0.002271077   0.000164939   0.000000218  -0.000021376  -0.000000099

   26    2.2  1.5  1.5   0.011129743  -0.000226068  -0.130922241   0.000790375  -0.000201137  -0.104328676  -0.000000166   0.161589185
                         0.141085912  -0.012969392  -0.075316144   0.000488831   0.000001604   0.003304272   0.000004218  -0.002222102

   27    3.2  1.5  1.5  -0.136525057   0.012550794   0.076406948  -0.000498362  -0.000001567  -0.003208566  -0.000004230   0.002225387
                         0.010773698  -0.000216760  -0.132813573   0.000800973  -0.000195494  -0.101277242  -0.000000156   0.161833991

   28    4.2  1.5  1.5   0.003599017   0.039669254   0.000286644   0.046713790  -0.240384788   0.000462566   0.334187642   0.000000298
                        -0.000745838  -0.005682866  -0.000011623  -0.000398810  -0.013514847   0.000011498   0.018627776   0.000008947

   29    5.2  1.5  1.5  -0.003673269   0.000075767   0.041287513  -0.000248854  -0.000228329  -0.118752307  -0.000000150   0.167503769
                        -0.046585029   0.004280895   0.023751636  -0.000153935  -0.000000506   0.003759997   0.000004282  -0.002303325

   30    6.2  1.5  1.5  -0.001011968  -0.007848555   0.000008599  -0.000194622  -0.012233401   0.000010450   0.016859357   0.000008084
                        -0.004950016  -0.054656533  -0.000156443  -0.024422431   0.217584249  -0.000418583  -0.302462204  -0.000000344

   31    7.2  1.5  1.5   0.041802037  -0.003842008  -0.025042712   0.000165040   0.000000442  -0.003862443  -0.000004277   0.002299239
                        -0.003300031   0.000066001   0.043526656  -0.000261290  -0.000234349  -0.122019644  -0.000000145   0.167197891

   32    8.2  1.5  1.5  -0.000407427  -0.003397365   0.000045401   0.000518538   0.005734756  -0.000004671  -0.007928333  -0.000003782
                        -0.002107785  -0.023437838   0.000337527   0.057277827  -0.102020487   0.000196681   0.142234872   0.000000031

   33    9.2  1.5  1.5   0.007338527   0.058843512  -0.000396922  -0.003540127   0.000227005   0.000000224  -0.000014650  -0.000000091
                         0.036828458   0.407966270  -0.002166249  -0.379795675  -0.003999430   0.000009613   0.000262823  -0.000000241

   34    1.2  1.5  0.5   0.006220973  -0.000126774  -0.074261761   0.000449413   0.000227393   0.118686848   0.000000339  -0.186734305
                         0.078870453  -0.007250497  -0.042721728   0.000278496   0.000000108  -0.003756811  -0.000005018   0.002567472

   35    2.2  1.5  0.5  -0.028077465  -0.310324352  -0.000296997  -0.038325849  -0.058327256   0.000110750   0.093043600   0.000000366
                         0.005701221   0.044619309  -0.000099604   0.000216885  -0.003276382   0.000001766   0.005186170   0.000002589

   36    3.2  1.5  0.5  -0.000301068  -0.001317493  -0.000193621  -0.002820942   0.003400548  -0.000001608  -0.005206056  -0.000002665
                        -0.000977248  -0.010109807  -0.001892042  -0.317679342  -0.060496893   0.000116029   0.093401523   0.000000017

   37    4.2  1.5  0.5  -0.003888858   0.000111012  -0.039241290   0.000202134   0.000006487   0.003327380   0.000000137   0.000539449
                        -0.049841560   0.004555351  -0.022616456   0.000167940   0.000000045  -0.000104953   0.000000027  -0.000007402

   38    5.2  1.5  0.5  -0.004139997  -0.045851862   0.000224592   0.039197910   0.208938982  -0.000401813  -0.289011723  -0.000000296
                         0.000826388   0.006610623  -0.000043321  -0.000367349   0.011746827  -0.000009833  -0.016109810  -0.000007607

   39    6.2  1.5  0.5  -0.021961408   0.001996322  -0.028253907   0.000200001   0.000000296  -0.003221926  -0.000003658   0.001952038
                         0.001698745  -0.000060535   0.049053362  -0.000266513  -0.000195851  -0.101751769  -0.000000303   0.141964918

   40    7.2  1.5  0.5   0.000816370   0.006567658  -0.000046609  -0.000429688  -0.011648318   0.000009625   0.016157020   0.000007625
                         0.004107962   0.045510177  -0.000265085  -0.046327403   0.207208869  -0.000398549  -0.289856361   0.000000000

   41    8.2  1.5  0.5   0.057230314  -0.005249290  -0.010842960   0.000063530   0.000000373  -0.006899064  -0.000007848   0.004168518
                        -0.004496811   0.000104993   0.018876360  -0.000129430  -0.000418547  -0.217930471  -0.000000307   0.303147006

   42    9.2  1.5  0.5   0.376718715  -0.034629833  -0.206576219   0.001345554   0.000003043  -0.000000781  -0.000000149  -0.000000349
                        -0.029721457   0.000601872   0.359082401  -0.002166135   0.000001766  -0.000149941  -0.000000178  -0.000003168

   43    1.2  1.5 -0.5   0.007101773   0.078314577   0.000528258   0.085670424   0.118559132  -0.000227327  -0.186462509  -0.000000129
                        -0.001466491  -0.011228350  -0.000021802  -0.000730598   0.006664364  -0.000005465  -0.010393514  -0.000005028

   44    2.2  1.5 -0.5   0.024527346  -0.000595534  -0.033276043   0.000307621   0.000110760   0.058390033   0.000000475  -0.093179219
                         0.312554788  -0.028644254  -0.019016380   0.000059142   0.000000948  -0.001845960  -0.000002572   0.001281025

   45    3.2  1.5 -0.5   0.010152616  -0.001019485  -0.158516208   0.001098108   0.000001236  -0.001916918  -0.000002662   0.001285888
                        -0.000931866  -0.000079408   0.275319331  -0.001552891  -0.000116033  -0.060562061  -0.000000129   0.093537660

   46    4.2  1.5 -0.5  -0.004468789  -0.049480972   0.000258563   0.045290227   0.003323809  -0.000006486   0.000538664  -0.000000138
                         0.000890770   0.007137070  -0.000046981  -0.000422212   0.000186466  -0.000000114   0.000030010   0.000000021

   47    5.2  1.5 -0.5   0.003606552  -0.000101716   0.033961711  -0.000174342  -0.000401933  -0.209164110  -0.000000614   0.289433005
                         0.046185348  -0.004220444   0.019575835  -0.000148063  -0.000000017   0.006622790   0.000007588  -0.003979661

   48    6.2  1.5 -0.5  -0.000378772  -0.003159189   0.000043281   0.000512392  -0.005714609   0.000004504   0.007901793   0.000003667
                        -0.001960994  -0.021799282   0.000330388   0.056606122   0.101642248  -0.000195800  -0.141758281  -0.000000149

   49    7.2  1.5 -0.5  -0.045842558   0.004186991  -0.023132478   0.000170819  -0.000000145   0.006566710   0.000007618  -0.003991421
                         0.003573533  -0.000104464   0.040141019  -0.000207998   0.000398665   0.207432103   0.000000319  -0.290278880

   50    8.2  1.5 -0.5   0.001048837   0.008164420  -0.000008246   0.000171476  -0.012237857   0.000009884   0.016873421   0.000007854
                         0.005144513   0.056823168   0.000143945   0.021768264   0.217695940  -0.000418431  -0.302705751   0.000000022

   51    9.2  1.5 -0.5   0.007007794   0.053624085   0.000107897   0.003533800  -0.000004455  -0.000003085  -0.000000482   0.000000156
                         0.033918703   0.374065252   0.002547747   0.414248015   0.000149877   0.000001690   0.000003151  -0.000000171

   52    1.2  1.5 -1.5  -0.020559967   0.000588123  -0.211118503   0.001084773   0.000007124   0.002920897  -0.000000262  -0.000382612
                        -0.263497446   0.024072194  -0.121676249   0.000903173   0.000000392  -0.000093384  -0.000000110   0.000005340

   53    2.2  1.5 -1.5  -0.012703208  -0.140091867  -0.000928569  -0.151034762   0.104216363  -0.000201037  -0.161353974   0.000000011
                         0.002623882   0.020084182   0.000037512   0.001286686   0.005860083  -0.000006533  -0.008994312  -0.000004222

   54    3.2  1.5 -1.5   0.002541156   0.019431272   0.000040608   0.001307686   0.005689624  -0.000006358  -0.009007857  -0.000004233
                         0.012292759   0.135563968   0.000942483   0.153218005  -0.101168191   0.000195397   0.161598426  -0.000000022

   55    4.2  1.5 -1.5   0.003155752  -0.000061657  -0.040492739   0.000243963  -0.000462709  -0.240643800  -0.000000672   0.334674767
                         0.039949793  -0.003674969  -0.023295393   0.000150937   0.000000158   0.007619631   0.000008926  -0.004601542

   56    5.2  1.5 -1.5   0.004193286   0.046256445   0.000292377   0.047630183   0.118624493  -0.000228273  -0.167259953   0.000000029
                        -0.000864963  -0.006633188  -0.000011831  -0.000405775   0.006669154  -0.000005090  -0.009323415  -0.000004285

   57    6.2  1.5 -1.5  -0.055047155   0.005051443   0.012166972  -0.000069362  -0.000000188  -0.006897346  -0.000008062   0.004164676
                         0.004329799  -0.000098308  -0.021176822   0.000140489  -0.000418714  -0.217818705  -0.000000683   0.302903084

   58    7.2  1.5 -1.5  -0.000778235  -0.005948334  -0.000015395  -0.000430356   0.006851642  -0.000005302  -0.009306509  -0.000004280
                        -0.003762941  -0.041508046  -0.000308664  -0.050214759  -0.121888338   0.000234290   0.166954515  -0.000000034

   59    8.2  1.5 -1.5  -0.023612307   0.002145823  -0.028589233   0.000205354  -0.000000150   0.003232798   0.000003778  -0.001958574
                         0.001825735  -0.000064772   0.049635412  -0.000271690   0.000196736   0.102130388   0.000000189  -0.142442203

   60    9.2  1.5 -1.5   0.410939069  -0.037541281   0.189657112  -0.001409891  -0.000000460   0.000128922   0.000000101  -0.000003619
                        -0.032064276   0.000917359  -0.329070611   0.001691859   0.000009605   0.004003792  -0.000000237  -0.000263206


   Nr   State  S   Sz       57            58            59            60

    1    1.2  0.5  0.5  -0.002063229   0.002868440  -0.000085248  -0.001164513
                         0.000000000  -0.000000000  -0.000000000   0.000000000

    2    2.2  0.5  0.5   0.000092940  -0.000161179  -0.000035895  -0.000551189
                        -0.000442966   0.000625797  -0.000282166  -0.003560418

    3    3.2  0.5  0.5  -0.002251795  -0.001625281   0.002437261  -0.000192132
                         0.000173629   0.000111470   0.000182327   0.000003325

    4    4.2  0.5  0.5   0.004519380   0.013315943   0.024531591   0.022823644
                         0.101880887   0.119553629  -0.299945356   0.027784666

    5    5.2  0.5  0.5  -0.040303691  -0.054749829  -0.054134987  -0.059078624
                         0.003861960  -0.295556859  -0.131335288  -0.030501190

    6    6.2  0.5  0.5  -0.064568614  -0.014629703  -0.087524367   0.084271562
                         0.293985389  -0.016849922   0.085233949  -0.059164558

    7    7.2  0.5  0.5   0.102407762   0.147397347   0.205214395   0.165462678
                         0.026796121  -0.105881069  -0.000568556  -0.053365926

    8    8.2  0.5  0.5  -0.148909057  -0.007352825  -0.108310555   0.252065667
                        -0.131261325   0.007323504  -0.035788743  -0.021155918

    9    9.2  0.5  0.5   0.000241532   0.001932859   0.002496807   0.039644368
                         0.028792854  -0.040693773   0.018481405   0.233278460

   10   10.2  0.5  0.5  -0.134582072   0.186183778  -0.004920656  -0.074364227
                         0.001360204  -0.001847991   0.000891305   0.010710722

   11   11.2  0.5  0.5   0.145427289   0.105906300  -0.160571896   0.012381582
                        -0.011267341  -0.007195632  -0.012024090  -0.000333414

   12   12.2  0.5  0.5   0.000007544   0.000005375  -0.000012344   0.000001344
                         0.000107507   0.000077022   0.000165685  -0.000013487

   13    1.2  0.5 -0.5   0.002858082   0.002055778   0.001159170  -0.000084857
                        -0.000243549  -0.000175182  -0.000111424   0.000008157

   14    2.2  0.5 -0.5  -0.000213732  -0.000130216   0.000207990  -0.000008732
                        -0.000609852  -0.000433475  -0.003596822   0.000284306

   15    3.2  0.5 -0.5  -0.001628876   0.002258406   0.000191569   0.002408633
                         0.000026930  -0.000018190  -0.000015074  -0.000414694

   16    4.2  0.5 -0.5   0.003116977   0.004147290  -0.020060418   0.053118586
                        -0.120252522   0.101896712   0.029841012   0.296221930

   17    5.2  0.5 -0.5  -0.029457424   0.040486057   0.055889132  -0.041320110
                         0.299138197   0.000425969  -0.036014043   0.135912484

   18    6.2  0.5 -0.5  -0.013146206   0.089296723  -0.089545934  -0.095278201
                         0.018031233   0.287441489  -0.050829783  -0.076468329

   19    7.2  0.5 -0.5   0.155855075  -0.099762795  -0.169809708   0.204327251
                         0.092983731   0.035394444  -0.037289180  -0.019069497

   20    8.2  0.5 -0.5  -0.007948086   0.137226395  -0.252933417  -0.104389255
                        -0.006672755  -0.143430677   0.003059444   0.045987975

   21    9.2  0.5 -0.5   0.005381045   0.002204040  -0.017141788   0.000717003
                         0.040382712   0.028709389   0.236001430  -0.018635511

   22   10.2  0.5 -0.5   0.185668361   0.134211576   0.075047866  -0.004983362
                        -0.013966895  -0.010071601   0.003546218  -0.000416395

   23   11.2  0.5 -0.5   0.106134820  -0.145858811  -0.012356676  -0.158684679
                        -0.001822485   0.001121069   0.000852818   0.027332857

   24   12.2  0.5 -0.5  -0.000001184   0.000001612  -0.000002628  -0.000028140
                        -0.000077201   0.000107760  -0.000013297  -0.000163744

   25    1.2  1.5  1.5   0.157303545  -0.219676248   0.023427865   0.296783937
                        -0.001734255   0.003025128  -0.004870661  -0.051448477

   26    2.2  1.5  1.5  -0.141322896  -0.101602953   0.154830730  -0.012640943
                         0.010650510   0.007314324   0.011437401  -0.001693306

   27    3.2  1.5  1.5  -0.010656696  -0.007318422  -0.011457848   0.001696120
                        -0.141401062  -0.101659334   0.155104619  -0.012663001

   28    4.2  1.5  1.5  -0.093840424   0.130561896   0.011495445   0.141638460
                         0.001234105  -0.001277044  -0.002678824  -0.024250895

   29    5.2  1.5  1.5  -0.130598770  -0.093893217   0.143336773  -0.011702194
                         0.009842672   0.006759333   0.010588568  -0.001567286

   30    6.2  1.5  1.5   0.000723949  -0.000470983  -0.003523743  -0.033562866
                         0.049301370  -0.068409215  -0.015692501  -0.195188381

   31    7.2  1.5  1.5  -0.009842658  -0.006759795  -0.010558161   0.001563365
                        -0.130606443  -0.093898269   0.142932161  -0.011669695

   32    8.2  1.5  1.5  -0.001360180   0.002000492  -0.001209280  -0.014492152
                        -0.115677456   0.161337828  -0.006407008  -0.082857549

   33    9.2  1.5  1.5  -0.001440695   0.002513109  -0.004045909  -0.042737294
                        -0.130681710   0.182498518  -0.019461056  -0.246532747

   34    1.2  1.5  0.5  -0.081381366  -0.058509343   0.089902320  -0.007338724
                         0.006134282   0.004211490   0.006642095  -0.000982460

   35    2.2  1.5  0.5  -0.026547025   0.036463681   0.027906653   0.348533105
                         0.000542070   0.000149440  -0.006162973  -0.060040661

   36    3.2  1.5  0.5  -0.002545671   0.003345196   0.000539771   0.000638490
                        -0.208281964   0.290258372   0.000857317   0.005868865

   37    4.2  1.5  0.5   0.117017630   0.083773449   0.160195764  -0.012686821
                        -0.008350618  -0.006209134   0.012169222  -0.001390048

   38    5.2  1.5  0.5  -0.083964645   0.117257442  -0.012498868  -0.158339801
                         0.000925529  -0.001614586   0.002598607   0.027448943

   39    6.2  1.5  0.5  -0.011720628  -0.008477828   0.006503268  -0.000591136
                        -0.161133678  -0.115524718  -0.083933379   0.006498388

   40    7.2  1.5  0.5   0.000925581  -0.001612632   0.002588056   0.027345936
                         0.083900829  -0.117167716   0.012451994   0.157745442

   41    8.2  1.5  0.5  -0.005354079  -0.003476267  -0.014700864   0.002002029
                        -0.068413264  -0.049335764   0.197088283  -0.015925056

   42    9.2  1.5  0.5   0.015308121   0.010511816   0.016494598  -0.002441024
                         0.203110574   0.146025639  -0.223277988   0.018228009

   43    1.2  1.5 -0.5   0.058655645  -0.081608332  -0.007211049  -0.088854306
                        -0.000771542   0.000797677   0.001680141   0.015213707

   44    2.2  1.5 -0.5  -0.036319319  -0.026497187   0.352678844  -0.028368304
                         0.003244904   0.001713903   0.026416637  -0.003464516

   45    3.2  1.5 -0.5   0.021311707   0.015148015   0.000074012  -0.000455264
                         0.289494255   0.207745986  -0.005903030   0.000905030

   46    4.2  1.5 -0.5  -0.083998133   0.117304092  -0.012495609  -0.158296386
                         0.000926198  -0.001615095   0.002597578   0.027441334

   47    5.2  1.5 -0.5  -0.116971105  -0.083740026  -0.160239707   0.012690163
                         0.008347164   0.006206958  -0.012172642   0.001390760

   48    6.2  1.5 -0.5  -0.001361586   0.002002993  -0.001210207  -0.014504393
                        -0.115827372   0.161546969  -0.006412011  -0.082926035

   49    7.2  1.5 -0.5  -0.008341493  -0.006201487   0.012126978  -0.001384742
                        -0.116881537  -0.083676445  -0.159638219   0.012642495

   50    8.2  1.5 -0.5  -0.000725213   0.000473986   0.003516594   0.033491332
                        -0.049452766   0.068620815   0.015660431   0.194777405

   51    9.2  1.5 -0.5   0.001924669  -0.001992566  -0.004173928  -0.037782736
                         0.146390851  -0.203676885  -0.017910813  -0.220675319

   52    1.2  1.5 -1.5  -0.219139833  -0.156882759  -0.300344984   0.023786413
                         0.015637738   0.011628101  -0.022815370   0.002606675

   53    2.2  1.5 -1.5  -0.101857090   0.141716866   0.012420925   0.153025990
                         0.001338840  -0.001387183  -0.002895055  -0.026199531

   54    3.2  1.5 -1.5   0.001339544  -0.001387656  -0.002899967  -0.026246090
                         0.101913616  -0.141795275  -0.012442612  -0.153296667

   55    4.2  1.5 -1.5   0.130198857   0.093606342  -0.143308996   0.011699019
                        -0.009813122  -0.006738014  -0.010587295   0.001566619

   56    5.2  1.5 -1.5  -0.094128073   0.130962875   0.011498541   0.141665988
                         0.001237220  -0.001281555  -0.002679791  -0.024254820

   57    6.2  1.5 -1.5   0.005339105   0.003464673   0.014732746  -0.002006076
                         0.068202173   0.049184807  -0.197504218   0.015957663

   58    7.2  1.5 -1.5   0.001237189  -0.001282221  -0.002672778  -0.024185839
                         0.094133145  -0.130970519  -0.011466567  -0.141266141

   59    8.2  1.5 -1.5  -0.011705363  -0.008466500   0.006497635  -0.000590692
                        -0.160925079  -0.115375224  -0.083864036   0.006493319

   60    9.2  1.5 -1.5  -0.012991277  -0.009660234   0.018952319  -0.002165262
                        -0.182052882  -0.130332133  -0.249490844   0.019758890


 Composition of spin-orbit eigenvectors
 ======================================

   Nr   State  S   Sz       1        2        3        4        5        6        7        8        9       10

    1    1.2  0.5  0.5  63.646%   2.163%   0.000%   0.530%   3.986%  29.181%   0.004%   0.000%   0.086%   0.000%
    2    2.2  0.5  0.5  12.231%   0.425%   0.063%  53.619%   4.024%  29.145%   0.078%   0.000%   0.008%   0.000%
    3    3.2  0.5  0.5   0.684%  20.358%  45.243%   0.052%  29.187%   3.983%   0.000%   0.050%   0.000%   0.038%
    4    4.2  0.5  0.5   0.000%   0.001%   0.014%   0.000%   0.000%   0.000%   0.021%   0.894%   0.012%   0.131%
    5    5.2  0.5  0.5   0.004%   0.008%   0.001%   0.002%   0.000%   0.000%   0.068%   0.137%   0.491%   0.341%
    6    6.2  0.5  0.5   0.006%   0.007%   0.001%   0.002%   0.000%   0.000%   0.108%   0.089%   0.280%   0.568%
    7    7.2  0.5  0.5   0.001%   0.006%   0.003%   0.005%   0.000%   0.000%   0.292%   0.300%   0.098%   0.321%
    8    8.2  0.5  0.5   0.001%   0.004%   0.001%   0.009%   0.000%   0.000%   0.579%   0.092%   0.078%   0.266%
    9    9.2  0.5  0.5   0.000%   0.000%   0.000%   0.001%   0.002%   0.013%  11.998%   0.067%   1.372%   0.001%
   10   10.2  0.5  0.5   0.001%   0.000%   0.000%   0.000%   0.002%   0.013%   0.491%   0.002%  12.133%   0.001%
   11   11.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.013%   0.002%   0.041%   6.963%   0.001%   6.045%
   12   12.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.090%   0.012%   0.000%   0.007%   0.000%   0.009%
   13    1.2  0.5 -0.5   2.163%  63.646%   0.530%   0.000%  29.181%   3.986%   0.000%   0.004%   0.000%   0.086%
   14    2.2  0.5 -0.5   0.425%  12.231%  53.619%   0.063%  29.145%   4.024%   0.000%   0.078%   0.000%   0.008%
   15    3.2  0.5 -0.5  20.358%   0.684%   0.052%  45.243%   3.983%  29.187%   0.050%   0.000%   0.038%   0.000%
   16    4.2  0.5 -0.5   0.001%   0.000%   0.000%   0.014%   0.000%   0.000%   0.894%   0.021%   0.131%   0.012%
   17    5.2  0.5 -0.5   0.008%   0.004%   0.002%   0.001%   0.000%   0.000%   0.137%   0.068%   0.341%   0.491%
   18    6.2  0.5 -0.5   0.007%   0.006%   0.002%   0.001%   0.000%   0.000%   0.089%   0.108%   0.568%   0.280%
   19    7.2  0.5 -0.5   0.006%   0.001%   0.005%   0.003%   0.000%   0.000%   0.300%   0.292%   0.321%   0.098%
   20    8.2  0.5 -0.5   0.004%   0.001%   0.009%   0.001%   0.000%   0.000%   0.092%   0.579%   0.266%   0.078%
   21    9.2  0.5 -0.5   0.000%   0.000%   0.001%   0.000%   0.013%   0.002%   0.067%  11.998%   0.001%   1.372%
   22   10.2  0.5 -0.5   0.000%   0.001%   0.000%   0.000%   0.013%   0.002%   0.002%   0.491%   0.001%  12.133%
   23   11.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.002%   0.013%   6.963%   0.041%   6.045%   0.001%
   24   12.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.012%   0.090%   0.007%   0.000%   0.009%   0.000%
   25    1.2  1.5  1.5   0.052%   0.002%   0.000%   0.025%   0.000%   0.000%  12.275%   0.062%  15.363%   0.001%
   26    2.2  1.5  1.5   0.000%   0.008%   0.018%   0.000%   0.008%   0.001%   0.026%   5.037%   0.000%   4.281%
   27    3.2  1.5  1.5   0.000%   0.008%   0.018%   0.000%   0.008%   0.001%   0.025%   4.946%   0.000%   4.184%
   28    4.2  1.5  1.5   0.005%   0.000%   0.000%   0.011%   0.007%   0.054%   1.185%   0.006%   0.935%   0.000%
   29    5.2  1.5  1.5   0.000%   0.005%   0.011%   0.000%   0.013%   0.002%   0.006%   1.163%   0.000%   0.950%
   30    6.2  1.5  1.5   0.000%   0.000%   0.000%   0.015%   0.006%   0.045%   1.958%   0.010%   0.166%   0.000%
   31    7.2  1.5  1.5   0.000%   0.005%   0.011%   0.000%   0.014%   0.002%   0.006%   1.183%   0.000%   0.991%
   32    8.2  1.5  1.5   0.015%   0.001%   0.000%   0.000%   0.001%   0.010%   0.168%   0.001%   1.934%   0.000%
   33    9.2  1.5  1.5   0.161%   0.006%   0.000%   0.077%   0.000%   0.000%   9.248%   0.047%  11.557%   0.000%
   34    1.2  1.5  0.5   0.000%   0.003%   0.006%   0.000%   0.011%   0.002%   0.009%   1.774%   0.000%   1.301%
   35    2.2  1.5  0.5   0.001%   0.000%   0.000%   0.060%   0.000%   0.003%  21.592%   0.110%   0.004%   0.000%
   36    3.2  1.5  0.5   0.056%   0.002%   0.000%   0.004%   0.000%   0.003%   0.352%   0.002%  21.056%   0.001%
   37    4.2  1.5  0.5   0.000%   0.010%   0.005%   0.000%   0.000%   0.000%   0.005%   0.949%   0.000%   1.202%
   38    5.2  1.5  0.5   0.010%   0.000%   0.000%   0.005%   0.006%   0.040%   0.963%   0.005%   1.193%   0.000%
   39    6.2  1.5  0.5   0.001%   0.015%   0.000%   0.000%   0.010%   0.001%   0.001%   0.184%   0.000%   1.938%
   40    7.2  1.5  0.5   0.010%   0.000%   0.000%   0.005%   0.006%   0.041%   0.928%   0.005%   1.175%   0.000%
   41    8.2  1.5  0.5   0.000%   0.000%   0.015%   0.000%   0.045%   0.006%   0.010%   1.921%   0.000%   0.186%
   42    9.2  1.5  0.5   0.003%   0.075%   0.166%   0.000%   0.000%   0.000%   0.059%  11.499%   0.000%   9.300%
   43    1.2  1.5 -0.5   0.003%   0.000%   0.000%   0.006%   0.002%   0.011%   1.774%   0.009%   1.301%   0.000%
   44    2.2  1.5 -0.5   0.000%   0.001%   0.060%   0.000%   0.003%   0.000%   0.110%  21.592%   0.000%   0.004%
   45    3.2  1.5 -0.5   0.002%   0.056%   0.004%   0.000%   0.003%   0.000%   0.002%   0.352%   0.001%  21.056%
   46    4.2  1.5 -0.5   0.010%   0.000%   0.000%   0.005%   0.000%   0.000%   0.949%   0.005%   1.202%   0.000%
   47    5.2  1.5 -0.5   0.000%   0.010%   0.005%   0.000%   0.040%   0.006%   0.005%   0.963%   0.000%   1.193%
   48    6.2  1.5 -0.5   0.015%   0.001%   0.000%   0.000%   0.001%   0.010%   0.184%   0.001%   1.938%   0.000%
   49    7.2  1.5 -0.5   0.000%   0.010%   0.005%   0.000%   0.041%   0.006%   0.005%   0.928%   0.000%   1.175%
   50    8.2  1.5 -0.5   0.000%   0.000%   0.000%   0.015%   0.006%   0.045%   1.921%   0.010%   0.186%   0.000%
   51    9.2  1.5 -0.5   0.075%   0.003%   0.000%   0.166%   0.000%   0.000%  11.499%   0.059%   9.300%   0.000%
   52    1.2  1.5 -1.5   0.002%   0.052%   0.025%   0.000%   0.000%   0.000%   0.062%  12.275%   0.001%  15.363%
   53    2.2  1.5 -1.5   0.008%   0.000%   0.000%   0.018%   0.001%   0.008%   5.037%   0.026%   4.281%   0.000%
   54    3.2  1.5 -1.5   0.008%   0.000%   0.000%   0.018%   0.001%   0.008%   4.946%   0.025%   4.184%   0.000%
   55    4.2  1.5 -1.5   0.000%   0.005%   0.011%   0.000%   0.054%   0.007%   0.006%   1.185%   0.000%   0.935%
   56    5.2  1.5 -1.5   0.005%   0.000%   0.000%   0.011%   0.002%   0.013%   1.163%   0.006%   0.950%   0.000%
   57    6.2  1.5 -1.5   0.000%   0.000%   0.015%   0.000%   0.045%   0.006%   0.010%   1.958%   0.000%   0.166%
   58    7.2  1.5 -1.5   0.005%   0.000%   0.000%   0.011%   0.002%   0.014%   1.183%   0.006%   0.991%   0.000%
   59    8.2  1.5 -1.5   0.001%   0.015%   0.000%   0.000%   0.010%   0.001%   0.001%   0.168%   0.000%   1.934%
   60    9.2  1.5 -1.5   0.006%   0.161%   0.077%   0.000%   0.000%   0.000%   0.047%   9.248%   0.000%  11.557%

   Nr   State  S   Sz      11       12       13       14       15       16       17       18       19       20

    1    1.2  0.5  0.5   0.040%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    2    2.2  0.5  0.5   0.044%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    3    3.2  0.5  0.5   0.000%   0.042%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    4    4.2  0.5  0.5   0.000%   0.000%   0.013%   0.243%   0.030%   0.853%   0.189%   0.006%   7.462%   2.591%
    5    5.2  0.5  0.5   0.000%   0.000%   0.255%   0.031%   0.193%   0.125%   0.334%   0.318%   4.521%  21.306%
    6    6.2  0.5  0.5   0.000%   0.000%   0.219%   0.053%   0.078%   0.186%   0.488%   0.220%  25.652%   3.399%
    7    7.2  0.5  0.5   0.000%   0.000%   0.481%   0.271%   0.007%   0.487%   0.089%   0.060%   5.222%   1.589%
    8    8.2  0.5  0.5   0.000%   0.000%   0.795%   0.115%   0.122%   0.168%   0.154%   0.047%   8.422%   0.594%
    9    9.2  0.5  0.5  11.720%   0.068%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   10   10.2  0.5  0.5  12.541%   0.060%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   11   11.2  0.5  0.5   0.062%  12.115%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   12   12.2  0.5  0.5   0.243%  44.927%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%
   13    1.2  0.5 -0.5   0.000%   0.040%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   14    2.2  0.5 -0.5   0.000%   0.044%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   15    3.2  0.5 -0.5   0.042%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   16    4.2  0.5 -0.5   0.000%   0.000%   0.243%   0.013%   0.853%   0.030%   0.006%   0.189%   2.591%   7.462%
   17    5.2  0.5 -0.5   0.000%   0.000%   0.031%   0.255%   0.125%   0.193%   0.318%   0.334%  21.306%   4.521%
   18    6.2  0.5 -0.5   0.000%   0.000%   0.053%   0.219%   0.186%   0.078%   0.220%   0.488%   3.399%  25.652%
   19    7.2  0.5 -0.5   0.000%   0.000%   0.271%   0.481%   0.487%   0.007%   0.060%   0.089%   1.589%   5.222%
   20    8.2  0.5 -0.5   0.000%   0.000%   0.115%   0.795%   0.168%   0.122%   0.047%   0.154%   0.594%   8.422%
   21    9.2  0.5 -0.5   0.068%  11.720%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   22   10.2  0.5 -0.5   0.060%  12.541%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   23   11.2  0.5 -0.5  12.115%   0.062%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   24   12.2  0.5 -0.5  44.927%   0.243%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%
   25    1.2  1.5  1.5   0.010%   0.000%  24.867%   0.005%   0.101%   0.007%   0.007%   5.237%   0.005%   0.036%
   26    2.2  1.5  1.5   0.022%   4.004%   0.001%   3.877%   0.853%  13.204%  23.229%   0.030%   0.249%   0.036%
   27    3.2  1.5  1.5   0.020%   3.738%   0.000%   0.305%   2.253%  34.876%   4.302%   0.005%   0.041%   0.006%
   28    4.2  1.5  1.5   0.499%   0.003%   0.256%   0.000%   0.630%   0.041%   0.001%   0.989%   0.148%   1.032%
   29    5.2  1.5  1.5   0.001%   0.108%   0.000%   0.098%   0.540%   8.363%   0.066%   0.000%   0.062%   0.009%
   30    6.2  1.5  1.5   0.402%   0.002%   3.070%   0.001%   0.409%   0.026%   0.000%   0.090%   0.016%   0.112%
   31    7.2  1.5  1.5   0.001%   0.142%   0.000%   1.430%   0.016%   0.245%   7.492%   0.010%   5.223%   0.750%
   32    8.2  1.5  1.5   0.107%   0.001%   6.498%   0.001%   0.269%   0.017%   0.004%   2.963%   0.175%   1.216%
   33    9.2  1.5  1.5   0.007%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   34    1.2  1.5  0.5   0.028%   5.169%   0.001%   6.126%   0.971%  15.024%  23.069%   0.029%   0.239%   0.034%
   35    2.2  1.5  0.5   1.174%   0.006%   9.457%   0.002%   4.918%   0.318%   0.024%  19.179%   0.025%   0.172%
   36    3.2  1.5  0.5   1.421%   0.008%  30.898%   0.006%   2.760%   0.178%   0.000%   0.180%   0.000%   0.003%
   37    4.2  1.5  0.5   0.000%   0.000%   0.000%   2.298%   0.217%   3.363%   5.655%   0.007%   3.893%   0.560%
   38    5.2  1.5  0.5   0.342%   0.002%   0.049%   0.000%   1.387%   0.090%   0.004%   2.809%   0.385%   2.683%
   39    6.2  1.5  0.5   0.000%   0.074%   0.001%   6.359%   0.158%   2.445%   0.747%   0.001%   0.605%   0.087%
   40    7.2  1.5  0.5   0.409%   0.002%   1.525%   0.000%   1.239%   0.080%   0.002%   1.462%   0.149%   1.040%
   41    8.2  1.5  0.5   0.002%   0.433%   0.000%   0.389%   0.167%   2.584%   0.501%   0.001%   0.219%   0.031%
   42    9.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   43    1.2  1.5 -0.5   5.169%   0.028%   6.126%   0.001%  15.024%   0.971%   0.029%  23.069%   0.034%   0.239%
   44    2.2  1.5 -0.5   0.006%   1.174%   0.002%   9.457%   0.318%   4.918%  19.179%   0.024%   0.172%   0.025%
   45    3.2  1.5 -0.5   0.008%   1.421%   0.006%  30.898%   0.178%   2.760%   0.180%   0.000%   0.003%   0.000%
   46    4.2  1.5 -0.5   0.000%   0.000%   2.298%   0.000%   3.363%   0.217%   0.007%   5.655%   0.560%   3.893%
   47    5.2  1.5 -0.5   0.002%   0.342%   0.000%   0.049%   0.090%   1.387%   2.809%   0.004%   2.683%   0.385%
   48    6.2  1.5 -0.5   0.074%   0.000%   6.359%   0.001%   2.445%   0.158%   0.001%   0.747%   0.087%   0.605%
   49    7.2  1.5 -0.5   0.002%   0.409%   0.000%   1.525%   0.080%   1.239%   1.462%   0.002%   1.040%   0.149%
   50    8.2  1.5 -0.5   0.433%   0.002%   0.389%   0.000%   2.584%   0.167%   0.001%   0.501%   0.031%   0.219%
   51    9.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   52    1.2  1.5 -1.5   0.000%   0.010%   0.005%  24.867%   0.007%   0.101%   5.237%   0.007%   0.036%   0.005%
   53    2.2  1.5 -1.5   4.004%   0.022%   3.877%   0.001%  13.204%   0.853%   0.030%  23.229%   0.036%   0.249%
   54    3.2  1.5 -1.5   3.738%   0.020%   0.305%   0.000%  34.876%   2.253%   0.005%   4.302%   0.006%   0.041%
   55    4.2  1.5 -1.5   0.003%   0.499%   0.000%   0.256%   0.041%   0.630%   0.989%   0.001%   1.032%   0.148%
   56    5.2  1.5 -1.5   0.108%   0.001%   0.098%   0.000%   8.363%   0.540%   0.000%   0.066%   0.009%   0.062%
   57    6.2  1.5 -1.5   0.002%   0.402%   0.001%   3.070%   0.026%   0.409%   0.090%   0.000%   0.112%   0.016%
   58    7.2  1.5 -1.5   0.142%   0.001%   1.430%   0.000%   0.245%   0.016%   0.010%   7.492%   0.750%   5.223%
   59    8.2  1.5 -1.5   0.001%   0.107%   0.001%   6.498%   0.017%   0.269%   2.963%   0.004%   1.216%   0.175%
   60    9.2  1.5 -1.5   0.000%   0.007%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%

   Nr   State  S   Sz      21       22       23       24       25       26       27       28       29       30

    1    1.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    2    2.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    3    3.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    4    4.2  0.5  0.5  36.978%   0.031%   0.573%   0.662%   0.001%   0.001%   0.000%   0.000%   0.002%   0.000%
    5    5.2  0.5  0.5   6.982%   1.874%  10.622%   3.032%   0.000%   0.000%   0.000%   0.000%   0.014%   0.000%
    6    6.2  0.5  0.5   5.701%   1.819%   7.453%   4.333%   0.000%   0.000%   0.000%   0.000%   0.018%   0.000%
    7    7.2  0.5  0.5   9.813%   4.357%  13.787%  13.489%   0.000%   0.000%   0.000%   0.000%   0.016%   0.000%
    8    8.2  0.5  0.5   4.017%   8.886%  20.667%   5.676%   0.001%   0.000%   0.000%   0.000%   0.010%   0.000%
    9    9.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   10   10.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   11   11.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   12   12.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   13    1.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   14    2.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   15    3.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   16    4.2  0.5 -0.5   0.031%  36.978%   0.662%   0.573%   0.001%   0.001%   0.000%   0.000%   0.000%   0.002%
   17    5.2  0.5 -0.5   1.874%   6.982%   3.032%  10.622%   0.000%   0.000%   0.000%   0.000%   0.000%   0.014%
   18    6.2  0.5 -0.5   1.819%   5.701%   4.333%   7.453%   0.000%   0.000%   0.000%   0.000%   0.000%   0.018%
   19    7.2  0.5 -0.5   4.357%   9.813%  13.489%  13.787%   0.000%   0.000%   0.000%   0.000%   0.000%   0.016%
   20    8.2  0.5 -0.5   8.886%   4.017%   5.676%  20.667%   0.000%   0.001%   0.000%   0.000%   0.000%   0.010%
   21    9.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   22   10.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   23   11.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   24   12.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   25    1.2  1.5  1.5   0.000%   0.008%   0.178%   0.005%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   26    2.2  1.5  1.5   0.085%   0.000%   0.002%   0.052%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   27    3.2  1.5  1.5   0.280%   0.001%   0.001%   0.035%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%
   28    4.2  1.5  1.5   0.003%   0.813%   0.009%   0.000%   0.879%   0.385%  35.407%   0.039%   0.001%   0.333%
   29    5.2  1.5  1.5   7.907%   0.030%   0.013%   0.429%   1.212%   2.771%   0.001%   1.216%  23.259%   0.034%
   30    6.2  1.5  1.5   0.004%   0.957%   1.902%   0.057%   0.117%   0.051%  42.929%   0.047%   0.003%   2.222%
   31    7.2  1.5  1.5   0.118%   0.000%   0.042%   1.387%   1.301%   2.979%   0.005%   4.377%   9.719%   0.015%
   32    8.2  1.5  1.5   0.000%   0.076%   5.625%   0.169%   6.115%   2.673%   1.526%   0.002%   0.010%   6.585%
   33    9.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   34    1.2  1.5  0.5   0.170%   0.001%   0.000%   0.003%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   35    2.2  1.5  0.5   0.000%   0.012%   0.117%   0.004%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   36    3.2  1.5  0.5   0.000%   0.083%   0.150%   0.005%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   37    4.2  1.5  0.5   4.112%   0.016%   0.039%   1.304%   0.573%   1.308%   0.005%   4.886%   4.270%   0.006%
   38    5.2  1.5  0.5   0.005%   1.182%   0.099%   0.003%   0.301%   0.131%   6.369%   0.007%   0.028%  19.505%
   39    6.2  1.5  0.5   0.442%   0.002%   0.190%   6.321%   0.487%   1.114%   0.000%   0.014%  31.635%   0.047%
   40    7.2  1.5  0.5   0.007%   1.805%   0.603%   0.018%  27.946%  12.219%   0.613%   0.001%   0.003%   2.236%
   41    8.2  1.5  0.5   1.418%   0.005%   0.028%   0.918%  11.386%  26.047%   0.003%   2.552%   0.028%   0.000%
   42    9.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   43    1.2  1.5 -0.5   0.001%   0.170%   0.003%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   44    2.2  1.5 -0.5   0.012%   0.000%   0.004%   0.117%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   45    3.2  1.5 -0.5   0.083%   0.000%   0.005%   0.150%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   46    4.2  1.5 -0.5   0.016%   4.112%   1.304%   0.039%   1.308%   0.573%   4.886%   0.005%   0.006%   4.270%
   47    5.2  1.5 -0.5   1.182%   0.005%   0.003%   0.099%   0.131%   0.301%   0.007%   6.369%  19.505%   0.028%
   48    6.2  1.5 -0.5   0.002%   0.442%   6.321%   0.190%   1.114%   0.487%   0.014%   0.000%   0.047%  31.635%
   49    7.2  1.5 -0.5   1.805%   0.007%   0.018%   0.603%  12.219%  27.946%   0.001%   0.613%   2.236%   0.003%
   50    8.2  1.5 -0.5   0.005%   1.418%   0.918%   0.028%  26.047%  11.386%   2.552%   0.003%   0.000%   0.028%
   51    9.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   52    1.2  1.5 -1.5   0.008%   0.000%   0.005%   0.178%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   53    2.2  1.5 -1.5   0.000%   0.085%   0.052%   0.002%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   54    3.2  1.5 -1.5   0.001%   0.280%   0.035%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%
   55    4.2  1.5 -1.5   0.813%   0.003%   0.000%   0.009%   0.385%   0.879%   0.039%  35.407%   0.333%   0.001%
   56    5.2  1.5 -1.5   0.030%   7.907%   0.429%   0.013%   2.771%   1.212%   1.216%   0.001%   0.034%  23.259%
   57    6.2  1.5 -1.5   0.957%   0.004%   0.057%   1.902%   0.051%   0.117%   0.047%  42.929%   2.222%   0.003%
   58    7.2  1.5 -1.5   0.000%   0.118%   1.387%   0.042%   2.979%   1.301%   4.377%   0.005%   0.015%   9.719%
   59    8.2  1.5 -1.5   0.076%   0.000%   0.169%   5.625%   2.673%   6.115%   0.002%   1.526%   6.585%   0.010%
   60    9.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%

   Nr   State  S   Sz      31       32       33       34       35       36       37       38       39       40

    1    1.2  0.5  0.5   0.000%   0.000%   0.132%   0.002%   0.008%   0.000%   0.000%   0.005%   0.087%   0.000%
    2    2.2  0.5  0.5   0.000%   0.000%   0.011%   0.000%   0.129%   0.001%   0.000%   0.006%   0.004%   0.000%
    3    3.2  0.5  0.5   0.000%   0.000%   0.001%   0.067%   0.001%   0.073%   0.006%   0.000%   0.000%   0.053%
    4    4.2  0.5  0.5   0.001%   0.037%   0.071%   0.788%   0.008%   4.673%   0.000%   0.000%   0.025%   0.776%
    5    5.2  0.5  0.5   0.060%   0.006%   2.485%   1.971%   0.413%   0.694%   0.000%   0.000%   1.699%   1.305%
    6    6.2  0.5  0.5   0.035%   0.015%   1.623%   2.835%   0.520%   0.581%   0.000%   0.000%   1.290%   1.743%
    7    7.2  0.5  0.5   0.012%   0.011%   0.727%   1.533%   1.826%   1.484%   0.000%   0.000%   0.363%   1.002%
    8    8.2  0.5  0.5   0.010%   0.009%   0.584%   1.283%   2.950%   0.747%   0.000%   0.000%   0.489%   0.777%
    9    9.2  0.5  0.5   0.000%   0.000%   2.351%   0.018%  27.560%   0.276%   0.035%   2.944%   0.780%   0.006%
   10   10.2  0.5  0.5   0.000%   0.000%  28.157%   0.331%   1.690%   0.020%   0.039%   3.024%  15.763%   0.064%
   11   11.2  0.5  0.5   0.000%   0.000%   0.155%  14.284%   0.140%  15.622%   2.978%   0.039%   0.038%   9.705%
   12   12.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   8.975%   0.105%   0.000%   0.000%
   13    1.2  0.5 -0.5   0.000%   0.000%   0.002%   0.132%   0.000%   0.008%   0.005%   0.000%   0.000%   0.087%
   14    2.2  0.5 -0.5   0.000%   0.000%   0.000%   0.011%   0.001%   0.129%   0.006%   0.000%   0.000%   0.004%
   15    3.2  0.5 -0.5   0.000%   0.000%   0.067%   0.001%   0.073%   0.001%   0.000%   0.006%   0.053%   0.000%
   16    4.2  0.5 -0.5   0.037%   0.001%   0.788%   0.071%   4.673%   0.008%   0.000%   0.000%   0.776%   0.025%
   17    5.2  0.5 -0.5   0.006%   0.060%   1.971%   2.485%   0.694%   0.413%   0.000%   0.000%   1.305%   1.699%
   18    6.2  0.5 -0.5   0.015%   0.035%   2.835%   1.623%   0.581%   0.520%   0.000%   0.000%   1.743%   1.290%
   19    7.2  0.5 -0.5   0.011%   0.012%   1.533%   0.727%   1.484%   1.826%   0.000%   0.000%   1.002%   0.363%
   20    8.2  0.5 -0.5   0.009%   0.010%   1.283%   0.584%   0.747%   2.950%   0.000%   0.000%   0.777%   0.489%
   21    9.2  0.5 -0.5   0.000%   0.000%   0.018%   2.351%   0.276%  27.560%   2.944%   0.035%   0.006%   0.780%
   22   10.2  0.5 -0.5   0.000%   0.000%   0.331%  28.157%   0.020%   1.690%   3.024%   0.039%   0.064%  15.763%
   23   11.2  0.5 -0.5   0.000%   0.000%  14.284%   0.155%  15.622%   0.140%   0.039%   2.978%   9.705%   0.038%
   24   12.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.105%   8.975%   0.000%   0.000%
   25    1.2  1.5  1.5   0.000%   0.000%   1.470%   0.018%   1.341%   0.015%   0.000%   0.000%   0.000%   0.000%
   26    2.2  1.5  1.5   0.000%   0.000%   0.005%   0.458%   0.006%   0.492%  17.216%   0.201%   0.000%   0.009%
   27    3.2  1.5  1.5   0.000%   0.000%   0.005%   0.443%   0.006%   0.487%  17.222%   0.201%   0.000%   0.001%
   28    4.2  1.5  1.5  13.990%   0.000%   0.263%   0.003%   0.290%   0.003%   0.028%   2.407%   6.808%   0.030%
   29    5.2  1.5  1.5   0.000%   5.043%   0.003%   0.267%   0.003%   0.290%   0.597%   0.007%   0.031%   6.861%
   30    6.2  1.5  1.5   1.992%   0.000%   0.059%   0.001%   0.499%   0.006%   0.023%   1.961%   1.849%   0.008%
   31    7.2  1.5  1.5   0.000%  15.843%   0.003%   0.262%   0.003%   0.285%   0.604%   0.007%   0.028%   6.215%
   32    8.2  1.5  1.5  16.733%   0.000%   0.505%   0.006%   0.058%   0.001%   0.005%   0.447%  10.549%   0.048%
   33    9.2  1.5  1.5   0.000%   0.000%  17.028%   0.203%  15.621%   0.180%   0.000%   0.000%   1.312%   0.006%
   34    1.2  1.5  0.5   0.000%   0.001%   0.002%   0.152%   0.002%   0.164%  22.957%   0.268%   0.000%   0.001%
   35    2.2  1.5  0.5   0.001%   0.000%   0.005%   0.000%   2.185%   0.025%   0.067%   5.745%   0.001%   0.000%
   36    3.2  1.5  0.5   0.000%   0.000%   2.168%   0.026%   0.018%   0.000%   0.067%   5.731%   0.000%   0.000%
   37    4.2  1.5  0.5   0.000%  17.175%   0.003%   0.288%   0.003%   0.264%   0.000%   0.000%   0.023%   5.024%
   38    5.2  1.5  0.5  18.601%   0.000%   0.288%   0.003%   0.263%   0.003%   0.021%   1.781%   5.628%   0.026%
   39    6.2  1.5  0.5   0.000%   0.016%   0.006%   0.505%   0.001%   0.057%   0.425%   0.005%   0.048%  10.723%
   40    7.2  1.5  0.5   2.690%   0.000%   0.288%   0.003%   0.265%   0.003%   0.021%   1.826%   5.309%   0.024%
   41    8.2  1.5  0.5   0.000%   7.715%   0.001%   0.057%   0.006%   0.502%   1.979%   0.023%   0.008%   1.830%
   42    9.2  1.5  0.5   0.000%   0.000%   0.187%  15.605%   0.195%  17.044%   0.000%   0.000%   0.007%   1.624%
   43    1.2  1.5 -0.5   0.001%   0.000%   0.152%   0.002%   0.164%   0.002%   0.268%  22.957%   0.001%   0.000%
   44    2.2  1.5 -0.5   0.000%   0.001%   0.000%   0.005%   0.025%   2.185%   5.745%   0.067%   0.000%   0.001%
   45    3.2  1.5 -0.5   0.000%   0.000%   0.026%   2.168%   0.000%   0.018%   5.731%   0.067%   0.000%   0.000%
   46    4.2  1.5 -0.5  17.175%   0.000%   0.288%   0.003%   0.264%   0.003%   0.000%   0.000%   5.024%   0.023%
   47    5.2  1.5 -0.5   0.000%  18.601%   0.003%   0.288%   0.003%   0.263%   1.781%   0.021%   0.026%   5.628%
   48    6.2  1.5 -0.5   0.016%   0.000%   0.505%   0.006%   0.057%   0.001%   0.005%   0.425%  10.723%   0.048%
   49    7.2  1.5 -0.5   0.000%   2.690%   0.003%   0.288%   0.003%   0.265%   1.826%   0.021%   0.024%   5.309%
   50    8.2  1.5 -0.5   7.715%   0.000%   0.057%   0.001%   0.502%   0.006%   0.023%   1.979%   1.830%   0.008%
   51    9.2  1.5 -0.5   0.000%   0.000%  15.605%   0.187%  17.044%   0.195%   0.000%   0.000%   1.624%   0.007%
   52    1.2  1.5 -1.5   0.000%   0.000%   0.018%   1.470%   0.015%   1.341%   0.000%   0.000%   0.000%   0.000%
   53    2.2  1.5 -1.5   0.000%   0.000%   0.458%   0.005%   0.492%   0.006%   0.201%  17.216%   0.009%   0.000%
   54    3.2  1.5 -1.5   0.000%   0.000%   0.443%   0.005%   0.487%   0.006%   0.201%  17.222%   0.001%   0.000%
   55    4.2  1.5 -1.5   0.000%  13.990%   0.003%   0.263%   0.003%   0.290%   2.407%   0.028%   0.030%   6.808%
   56    5.2  1.5 -1.5   5.043%   0.000%   0.267%   0.003%   0.290%   0.003%   0.007%   0.597%   6.861%   0.031%
   57    6.2  1.5 -1.5   0.000%   1.992%   0.001%   0.059%   0.006%   0.499%   1.961%   0.023%   0.008%   1.849%
   58    7.2  1.5 -1.5  15.843%   0.000%   0.262%   0.003%   0.285%   0.003%   0.007%   0.604%   6.215%   0.028%
   59    8.2  1.5 -1.5   0.000%  16.733%   0.006%   0.505%   0.001%   0.058%   0.447%   0.005%   0.048%  10.549%
   60    9.2  1.5 -1.5   0.000%   0.000%   0.203%  17.028%   0.180%  15.621%   0.000%   0.000%   0.006%   1.312%

   Nr   State  S   Sz      41       42       43       44       45       46       47       48       49       50

    1    1.2  0.5  0.5   0.009%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    2    2.2  0.5  0.5   0.092%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    3    3.2  0.5  0.5   0.000%   0.043%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    4    4.2  0.5  0.5   0.021%   3.037%   0.102%   0.013%   0.001%   0.045%   9.559%   0.271%  14.037%   0.447%
    5    5.2  0.5  0.5   0.161%   0.610%   3.047%   0.263%   3.754%   1.922%   0.045%   1.310%   2.972%   0.801%
    6    6.2  0.5  0.5   0.328%   0.468%   2.125%   0.593%   5.594%   0.920%   0.039%   0.960%   2.590%   1.290%
    7    7.2  0.5  0.5   1.007%   1.305%   2.372%   3.394%   2.382%   0.283%   0.723%   1.408%   5.685%   5.324%
    8    8.2  0.5  0.5   1.975%   0.471%   3.767%   1.492%   2.120%   0.195%   0.227%   2.677%   2.488%   9.335%
    9    9.2  0.5  0.5  16.771%   0.092%   0.000%   0.000%   0.000%   0.000%   0.000%   0.002%   0.000%   0.002%
   10   10.2  0.5  0.5   1.632%   0.008%   0.000%   0.000%   0.000%   0.004%   0.000%   0.000%   0.000%   0.001%
   11   11.2  0.5  0.5   0.037%   7.775%   0.000%   0.000%   0.009%   0.000%   0.001%   0.000%   0.003%   0.000%
   12   12.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.001%   0.000%
   13    1.2  0.5 -0.5   0.000%   0.009%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   14    2.2  0.5 -0.5   0.001%   0.092%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   15    3.2  0.5 -0.5   0.043%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   16    4.2  0.5 -0.5   3.037%   0.021%   0.013%   0.102%   0.045%   0.001%   0.271%   9.559%   0.447%  14.037%
   17    5.2  0.5 -0.5   0.610%   0.161%   0.263%   3.047%   1.922%   3.754%   1.310%   0.045%   0.801%   2.972%
   18    6.2  0.5 -0.5   0.468%   0.328%   0.593%   2.125%   0.920%   5.594%   0.960%   0.039%   1.290%   2.590%
   19    7.2  0.5 -0.5   1.305%   1.007%   3.394%   2.372%   0.283%   2.382%   1.408%   0.723%   5.324%   5.685%
   20    8.2  0.5 -0.5   0.471%   1.975%   1.492%   3.767%   0.195%   2.120%   2.677%   0.227%   9.335%   2.488%
   21    9.2  0.5 -0.5   0.092%  16.771%   0.000%   0.000%   0.000%   0.000%   0.002%   0.000%   0.002%   0.000%
   22   10.2  0.5 -0.5   0.008%   1.632%   0.000%   0.000%   0.004%   0.000%   0.000%   0.000%   0.001%   0.000%
   23   11.2  0.5 -0.5   7.775%   0.037%   0.000%   0.000%   0.000%   0.009%   0.000%   0.001%   0.000%   0.003%
   24   12.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.001%
   25    1.2  1.5  1.5   0.000%   0.000%   7.946%   0.008%   0.005%   1.394%   0.006%   0.139%   0.058%   6.985%
   26    2.2  1.5  1.5   0.000%   0.000%   0.002%   2.111%  10.918%   0.036%   0.048%   0.001%   2.003%   0.017%
   27    3.2  1.5  1.5   0.000%   0.000%   0.002%   1.891%   6.124%   0.022%   4.927%   0.241%   1.876%   0.016%
   28    4.2  1.5  1.5   5.563%   0.035%   0.005%   0.000%   0.001%   0.607%   0.212%   4.037%   0.001%   0.161%
   29    5.2  1.5  1.5   0.034%   5.300%   0.002%   1.727%   2.678%   0.012%  18.589%   0.941%   0.218%   0.002%
   30    6.2  1.5  1.5  10.497%   0.066%   4.816%   0.005%   0.000%   0.039%   0.225%   4.384%   0.003%   0.305%
   31    7.2  1.5  1.5   0.033%   5.265%   0.002%   2.540%  18.561%   0.057%   3.255%   0.187%   0.176%   0.001%
   32    8.2  1.5  1.5   1.821%   0.011%  20.364%   0.020%   0.016%   5.068%   0.005%   0.070%   0.000%   0.056%
   33    9.2  1.5  1.5   1.639%   0.010%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.141%  16.990%
   34    1.2  1.5  0.5   0.000%   0.003%   0.000%   0.021%   2.068%   0.005%  11.681%   0.614%   0.626%   0.005%
   35    2.2  1.5  0.5   0.000%   0.000%   5.613%   0.005%   0.009%   3.147%   0.101%   1.852%   0.082%   9.829%
   36    3.2  1.5  0.5   0.000%   0.000%   6.308%   0.006%   0.001%   0.122%   0.208%   4.061%   0.000%   0.010%
   37    4.2  1.5  0.5   0.041%   6.707%   0.003%   2.773%  23.985%   0.082%   3.641%   0.166%   0.250%   0.002%
   38    5.2  1.5  0.5   6.547%   0.040%   0.515%   0.001%   0.006%   2.459%   0.422%   7.985%   0.002%   0.215%
   39    6.2  1.5  0.5   0.011%   1.786%   0.020%  20.926%   4.490%   0.014%   0.002%   0.000%   0.049%   0.000%
   40    7.2  1.5  0.5   6.880%   0.042%   0.920%   0.001%   0.002%   0.827%   0.474%   9.076%   0.002%   0.211%
   41    8.2  1.5  0.5   0.065%  10.427%   0.004%   4.276%   0.013%   0.000%   4.970%   0.256%   0.330%   0.003%
   42    9.2  1.5  0.5   0.008%   1.324%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%  14.280%   0.120%
   43    1.2  1.5 -0.5   0.003%   0.000%   0.021%   0.000%   0.005%   2.068%   0.614%  11.681%   0.005%   0.626%
   44    2.2  1.5 -0.5   0.000%   0.000%   0.005%   5.613%   3.147%   0.009%   1.852%   0.101%   9.829%   0.082%
   45    3.2  1.5 -0.5   0.000%   0.000%   0.006%   6.308%   0.122%   0.001%   4.061%   0.208%   0.010%   0.000%
   46    4.2  1.5 -0.5   6.707%   0.041%   2.773%   0.003%   0.082%  23.985%   0.166%   3.641%   0.002%   0.250%
   47    5.2  1.5 -0.5   0.040%   6.547%   0.001%   0.515%   2.459%   0.006%   7.985%   0.422%   0.215%   0.002%
   48    6.2  1.5 -0.5   1.786%   0.011%  20.926%   0.020%   0.014%   4.490%   0.000%   0.002%   0.000%   0.049%
   49    7.2  1.5 -0.5   0.042%   6.880%   0.001%   0.920%   0.827%   0.002%   9.076%   0.474%   0.211%   0.002%
   50    8.2  1.5 -0.5  10.427%   0.065%   4.276%   0.004%   0.000%   0.013%   0.256%   4.970%   0.003%   0.330%
   51    9.2  1.5 -0.5   1.324%   0.008%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.120%  14.280%
   52    1.2  1.5 -1.5   0.000%   0.000%   0.008%   7.946%   1.394%   0.005%   0.139%   0.006%   6.985%   0.058%
   53    2.2  1.5 -1.5   0.000%   0.000%   2.111%   0.002%   0.036%  10.918%   0.001%   0.048%   0.017%   2.003%
   54    3.2  1.5 -1.5   0.000%   0.000%   1.891%   0.002%   0.022%   6.124%   0.241%   4.927%   0.016%   1.876%
   55    4.2  1.5 -1.5   0.035%   5.563%   0.000%   0.005%   0.607%   0.001%   4.037%   0.212%   0.161%   0.001%
   56    5.2  1.5 -1.5   5.300%   0.034%   1.727%   0.002%   0.012%   2.678%   0.941%  18.589%   0.002%   0.218%
   57    6.2  1.5 -1.5   0.066%  10.497%   0.005%   4.816%   0.039%   0.000%   4.384%   0.225%   0.305%   0.003%
   58    7.2  1.5 -1.5   5.265%   0.033%   2.540%   0.002%   0.057%  18.561%   0.187%   3.255%   0.001%   0.176%
   59    8.2  1.5 -1.5   0.011%   1.821%   0.020%  20.364%   5.068%   0.016%   0.070%   0.005%   0.056%   0.000%
   60    9.2  1.5 -1.5   0.010%   1.639%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%  16.990%   0.141%

   Nr   State  S   Sz      51       52       53       54       55       56       57       58       59       60

    1    1.2  0.5  0.5   0.000%   0.000%   0.028%   0.000%   0.089%   0.000%   0.000%   0.001%   0.000%   0.000%
    2    2.2  0.5  0.5   0.000%   0.000%   0.029%   0.000%   0.088%   0.000%   0.000%   0.000%   0.000%   0.001%
    3    3.2  0.5  0.5   0.000%   0.000%   0.000%   0.028%   0.000%   0.089%   0.001%   0.000%   0.001%   0.000%
    4    4.2  0.5  0.5   3.473%   0.232%   0.000%   0.000%   0.000%   0.000%   1.040%   1.447%   9.057%   0.129%
    5    5.2  0.5  0.5   5.106%   9.058%   0.000%   0.000%   0.000%   0.000%   0.164%   9.035%   2.018%   0.442%
    6    6.2  0.5  0.5   8.871%   5.237%   0.000%   0.000%   0.000%   0.000%   9.060%   0.050%   1.493%   1.060%
    7    7.2  0.5  0.5   4.742%   2.073%   0.000%   0.000%   0.000%   0.000%   1.121%   3.294%   4.211%   3.023%
    8    8.2  0.5  0.5   4.133%   1.914%   0.000%   0.000%   0.000%   0.000%   3.940%   0.011%   1.301%   6.398%
    9    9.2  0.5  0.5   0.000%   0.000%  12.072%   0.001%   5.964%   0.001%   0.083%   0.166%   0.035%   5.599%
   10   10.2  0.5  0.5   0.000%   0.003%  12.183%   0.000%   5.994%   0.000%   1.811%   3.467%   0.003%   0.564%
   11   11.2  0.5  0.5   0.000%   0.000%   0.001%  12.129%   0.001%   5.980%   2.128%   1.127%   2.593%   0.015%
   12   12.2  0.5  0.5   0.001%   0.000%   0.000%  30.320%   0.000%  15.308%   0.000%   0.000%   0.000%   0.000%
   13    1.2  0.5 -0.5   0.000%   0.000%   0.000%   0.028%   0.000%   0.089%   0.001%   0.000%   0.000%   0.000%
   14    2.2  0.5 -0.5   0.000%   0.000%   0.000%   0.029%   0.000%   0.088%   0.000%   0.000%   0.001%   0.000%
   15    3.2  0.5 -0.5   0.000%   0.000%   0.028%   0.000%   0.089%   0.000%   0.000%   0.001%   0.000%   0.001%
   16    4.2  0.5 -0.5   0.232%   3.473%   0.000%   0.000%   0.000%   0.000%   1.447%   1.040%   0.129%   9.057%
   17    5.2  0.5 -0.5   9.058%   5.106%   0.000%   0.000%   0.000%   0.000%   9.035%   0.164%   0.442%   2.018%
   18    6.2  0.5 -0.5   5.237%   8.871%   0.000%   0.000%   0.000%   0.000%   0.050%   9.060%   1.060%   1.493%
   19    7.2  0.5 -0.5   2.073%   4.742%   0.000%   0.000%   0.000%   0.000%   3.294%   1.121%   3.023%   4.211%
   20    8.2  0.5 -0.5   1.914%   4.133%   0.000%   0.000%   0.000%   0.000%   0.011%   3.940%   6.398%   1.301%
   21    9.2  0.5 -0.5   0.000%   0.000%   0.001%  12.072%   0.001%   5.964%   0.166%   0.083%   5.599%   0.035%
   22   10.2  0.5 -0.5   0.003%   0.000%   0.000%  12.183%   0.000%   5.994%   3.467%   1.811%   0.564%   0.003%
   23   11.2  0.5 -0.5   0.000%   0.000%  12.129%   0.001%   5.980%   0.001%   1.127%   2.128%   0.015%   2.593%
   24   12.2  0.5 -0.5   0.000%   0.001%  30.320%   0.000%  15.308%   0.000%   0.000%   0.000%   0.000%   0.000%
   25    1.2  1.5  1.5   0.000%   5.938%   0.001%   0.000%   0.000%   0.000%   2.475%   4.827%   0.057%   9.073%
   26    2.2  1.5  1.5   2.281%   0.000%   0.000%   1.090%   0.000%   2.612%   2.009%   1.038%   2.410%   0.016%
   27    3.2  1.5  1.5   2.348%   0.000%   0.000%   1.027%   0.000%   2.620%   2.011%   1.039%   2.419%   0.016%
   28    4.2  1.5  1.5   0.000%   0.218%   5.797%   0.000%  11.203%   0.000%   0.881%   1.705%   0.014%   2.065%
   29    5.2  1.5  1.5   0.227%   0.000%   0.000%   1.412%   0.000%   2.806%   1.715%   0.886%   2.066%   0.014%
   30    6.2  1.5  1.5   0.000%   0.060%   4.749%   0.000%   9.177%   0.000%   0.243%   0.468%   0.026%   3.922%
   31    7.2  1.5  1.5   0.252%   0.000%   0.000%   1.490%   0.000%   2.796%   1.715%   0.886%   2.054%   0.014%
   32    8.2  1.5  1.5   0.000%   0.328%   1.044%   0.000%   2.029%   0.000%   1.338%   2.603%   0.004%   0.708%
   33    9.2  1.5  1.5   0.000%  14.426%   0.002%   0.000%   0.000%   0.000%   1.708%   3.331%   0.040%   6.260%
   34    1.2  1.5  0.5   0.734%   0.000%   0.000%   1.410%   0.000%   3.488%   0.666%   0.344%   0.813%   0.005%
   35    2.2  1.5  0.5   0.000%   0.147%   0.341%   0.000%   0.868%   0.000%   0.071%   0.133%   0.082%  12.508%
   36    3.2  1.5  0.5   0.000%  10.093%   0.367%   0.000%   0.875%   0.000%   4.339%   8.426%   0.000%   0.003%
   37    4.2  1.5  0.5   0.205%   0.000%   0.000%   0.001%   0.000%   0.000%   1.376%   0.706%   2.581%   0.016%
   38    5.2  1.5  0.5   0.000%   0.154%   4.379%   0.000%   8.379%   0.000%   0.705%   1.375%   0.016%   2.582%
   39    6.2  1.5  0.5   0.320%   0.000%   0.000%   1.036%   0.000%   2.016%   2.610%   1.342%   0.709%   0.004%
   40    7.2  1.5  0.5   0.000%   0.215%   4.307%   0.000%   8.428%   0.000%   0.704%   1.373%   0.016%   2.563%
   41    8.2  1.5  0.5   0.047%   0.000%   0.000%   4.754%   0.000%   9.192%   0.471%   0.245%   3.906%   0.026%
   42    9.2  1.5  0.5  17.161%   0.001%   0.000%   0.000%   0.000%   0.000%   4.149%   2.143%   5.013%   0.034%
   43    1.2  1.5 -0.5   0.000%   0.734%   1.410%   0.000%   3.488%   0.000%   0.344%   0.666%   0.005%   0.813%
   44    2.2  1.5 -0.5   0.147%   0.000%   0.000%   0.341%   0.000%   0.868%   0.133%   0.071%  12.508%   0.082%
   45    3.2  1.5 -0.5  10.093%   0.000%   0.000%   0.367%   0.000%   0.875%   8.426%   4.339%   0.003%   0.000%
   46    4.2  1.5 -0.5   0.000%   0.205%   0.001%   0.000%   0.000%   0.000%   0.706%   1.376%   0.016%   2.581%
   47    5.2  1.5 -0.5   0.154%   0.000%   0.000%   4.379%   0.000%   8.379%   1.375%   0.705%   2.582%   0.016%
   48    6.2  1.5 -0.5   0.000%   0.320%   1.036%   0.000%   2.016%   0.000%   1.342%   2.610%   0.004%   0.709%
   49    7.2  1.5 -0.5   0.215%   0.000%   0.000%   4.307%   0.000%   8.428%   1.373%   0.704%   2.563%   0.016%
   50    8.2  1.5 -0.5   0.000%   0.047%   4.754%   0.000%   9.192%   0.000%   0.245%   0.471%   0.026%   3.906%
   51    9.2  1.5 -0.5   0.001%  17.161%   0.000%   0.000%   0.000%   0.000%   2.143%   4.149%   0.034%   5.013%
   52    1.2  1.5 -1.5   5.938%   0.000%   0.000%   0.001%   0.000%   0.000%   4.827%   2.475%   9.073%   0.057%
   53    2.2  1.5 -1.5   0.000%   2.281%   1.090%   0.000%   2.612%   0.000%   1.038%   2.009%   0.016%   2.410%
   54    3.2  1.5 -1.5   0.000%   2.348%   1.027%   0.000%   2.620%   0.000%   1.039%   2.011%   0.016%   2.419%
   55    4.2  1.5 -1.5   0.218%   0.000%   0.000%   5.797%   0.000%  11.203%   1.705%   0.881%   2.065%   0.014%
   56    5.2  1.5 -1.5   0.000%   0.227%   1.412%   0.000%   2.806%   0.000%   0.886%   1.715%   0.014%   2.066%
   57    6.2  1.5 -1.5   0.060%   0.000%   0.000%   4.749%   0.000%   9.177%   0.468%   0.243%   3.922%   0.026%
   58    7.2  1.5 -1.5   0.000%   0.252%   1.490%   0.000%   2.796%   0.000%   0.886%   1.715%   0.014%   2.054%
   59    8.2  1.5 -1.5   0.328%   0.000%   0.000%   1.044%   0.000%   2.029%   2.603%   1.338%   0.708%   0.004%
   60    9.2  1.5 -1.5  14.426%   0.000%   0.000%   0.002%   0.000%   0.000%   3.331%   1.708%   6.260%   0.040%


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
              1      21       94.20       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       7     8055.78       700     1000      520     2100     2140     5203     5303   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *    190216.65 171667.20   5261.66  13263.83     11.95      1.42     10.16
 REAL TIME  *    193304.45 SEC
 DISK USED  *         7.96 GB (local),      128.75 GB (total)
 SF USED    *        48.64 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/USERDEF energy=   -262.006422861139

              CI              CI           MULTI         RHF-SCF
   -261.99157440   -261.99165331   -261.09392461   -261.43915862
 **********************************************************************************************************************************
 Molpro calculation terminated with 1 warning(s)
