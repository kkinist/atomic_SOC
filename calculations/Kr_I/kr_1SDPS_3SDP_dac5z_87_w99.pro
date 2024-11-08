
 Working directory              : /wrk/irikura/molpro.LqKWaSqdKG/
 Global scratch directory       : /wrk/irikura/molpro.LqKWaSqdKG/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.LqKWaSqdKG/

 id        : nistki

 Nodes            nprocs
 pn125343.nist.gov   14
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1042), CPU time= 0.01 sec
 ***,Kr SO-CI
                                                                                 ! active space (8/7)
                                                                                 ! extra diffuse spdf
 memory,4000,M;
 
 gprint,orbitals,civector;
 
 symmetry,xyz
 geometry={Kr};
 
 basis={spdfghi,kr,AWCV5Z-X2C;C; spdf,1,even,nprim=1,ratio=3.0}
 
 set,dkho=101
 
                                                                                 ! cation orbitals
 {rhf;wf,nelec=35,sym=1,spin=1}
 
 {multi,wmk
     occ,9,12
     wf,nelec=36,sym=1,spin=0;state,10; weight,99,1,1,1,1,1,1,1,1,1
     wf,nelec=36,sym=1,spin=2;state,9;
     expec2,lxx,lyy,lzz;
 }
 table, energy, ll
 title, Energies and &lt;L**2&gt; values
 
 core,2,3
 
 {ci;wf,sym=1,spin=0;state,10; save,5201.2}
 hlsdiag = energd4
 {ci;wf,sym=1,spin=2;state,9; save,5202.2}
 hlsdiag(11) = energd
 
 table,hlsdiag
 
 lsint                                                                           ! fails without this line
 {ci;hlsmat,ls,5201.2,5202.2;print,vls=0,hls=0}                                  !compute and diagonalize SO matrix
 Commands initialized (847), CPU time= 0.01 sec, 718 directives.
 Default parameters read. Elapsed time= 0.11 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2024.1 linked Mon Jun 17 07:53:25 2024


 **********************************************************************************************************************************
 LABEL *   Kr SO-CI                                                                                                                                                      
  (64 PROC) 64 bit mpp version                                                           DATE: 09-Oct-24          TIME: 10:14:47  
 **********************************************************************************************************************************

 SHA1:             0134236b472f03f1f5189f93707d8671e415b05c
 **********************************************************************************************************************************

 Memory per process:      4000 MW
 Total memory per node:  56000 MW

 GA preallocation disabled
 GA check disabled

 Variable memory set to 4000.0 MW


 ZSYMEL=XYZ

 SETTING BASIS          =    USERDEF
 SETTING DKHO           =       101.00000000                                  


 Recomputing integrals since basis changed


 Using spherical harmonics

 Library entry KR     S AWCV5Z-X2C           selected for orbital group  1
 Even tempered Kr S diffuse               selected for group 1    nprim= 1    centre=  0.015    ratio= 3.000    dratio= 1.000
 Library entry KR     P AWCV5Z-X2C           selected for orbital group  1
 Even tempered Kr P diffuse               selected for group 1    nprim= 1    centre=  0.011    ratio= 3.000    dratio= 1.000
 Library entry KR     D AWCV5Z-X2C           selected for orbital group  1
 Even tempered Kr D diffuse               selected for group 1    nprim= 1    centre=  0.034    ratio= 3.000    dratio= 1.000
 Library entry KR     F AWCV5Z-X2C           selected for orbital group  1
 Even tempered Kr F diffuse               selected for group 1    nprim= 1    centre=  0.059    ratio= 3.000    dratio= 1.000
 Library entry KR     G AWCV5Z-X2C           selected for orbital group  1
 Library entry KR     H AWCV5Z-X2C           selected for orbital group  1
 Library entry KR     I AWCV5Z-X2C           selected for orbital group  1


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

   1  KR     36.00    0.000000000    0.000000000    0.000000000

 NUCLEAR CHARGE:                   36
 NUMBER OF PRIMITIVE AOS:         495
 NUMBER OF SYMMETRY AOS:          358
 NUMBER OF CONTRACTIONS:          279   (  136Ag  +  143Au  )
 NUMBER OF INNER CORE ORBITALS:     5   (    2Ag  +    3Au  )
 NUMBER OF OUTER CORE ORBITALS:     9   (    6Ag  +    3Au  )
 NUMBER OF VALENCE ORBITALS:        4   (    1Ag  +    3Au  )


 NUCLEAR REPULSION ENERGY    0.00000000

 One-electron integrals computed with SEWARD

 eXact-2-Component (X2C) method activated

 Computing Douglas-Kroll / X2C integrals

 AO integral compression algorithm  1   Integral accuracy      1.0D-11

     601.620 MB (compressed) written to integral file ( 12.0%)

     Node minimum: 23.331 MB, node maximum: 61.080 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:   27428730.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   2  SEGMENT LENGTH:   15997998      RECORD LENGTH: 524288

 Memory used in sort:      16.56 MW

 SORT1 READ   629150724. AND WROTE     4648125. INTEGRALS IN     15 RECORDS. CPU TIME:     2.54 SEC, REAL TIME:     2.65 SEC
 SORT2 READ    65872287. AND WROTE   384160150. INTEGRALS IN   3262 RECORDS. CPU TIME:     0.33 SEC, REAL TIME:     0.39 SEC

 Node minimum:    27418930.  Node maximum:    27465090. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000

 EXTRA SYMMETRY OF AOS IN SYMMETRY 1:   1 1 1 1 1 1 1 1 1 1   1 1 1 1 2 3 4 5 6 2   3 4 5 6 2 3 4 5 6 2   3 4 5 6 2 3 4 5 6 2
                                        3 4 5 6 2 3 4 5 6 2   3 4 5 6 2 3 4 5 6 2   3 4 5 6 2 3 4 5 6 7   8 9101112131415 7 8
                                        9101112131415 7 8 9  101112131415 7 8 910  1112131415 7 8 91011  12131415 7 8 9101112
                                       13141516171819202122  232425262728
 EXTRA SYMMETRY OF AOS IN SYMMETRY 2:   1 2 3 1 2 3 1 2 3 1   2 3 1 2 3 1 2 3 1 2   3 1 2 3 1 2 3 1 2 3   1 2 3 1 2 3 4 5 6 7
                                        8 910 4 5 6 7 8 910   4 5 6 7 8 910 4 5 6   7 8 910 4 5 6 7 8 9  10 4 5 6 7 8 910 4 5
                                        6 7 8 910 4 5 6 7 8   910 4 5 6 7 8 91011  12131415161718192021  11121314151617181920
                                       21111213141516171819  20211112131415161718  192021

 Eigenvalues of metric

         1 0.129E-05 0.270E-04 0.209E-03 0.843E-03 0.843E-03 0.843E-03 0.843E-03 0.843E-03
         2 0.115E-04 0.115E-04 0.115E-04 0.230E-02 0.230E-02 0.230E-02 0.905E-02 0.905E-02


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      22       31.52       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600   
                                         AOSYM     SMH  

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         9.84      9.65
 REAL TIME  *        11.84 SEC
 DISK USED  *        31.94 MB (local),        1.72 GB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 Program * Restricted Hartree-Fock

 Orbital guess generated from atomic densities.

 Initial alpha occupancy:   9   9
 Initial beta  occupancy:   8   9

 NELEC=   35   SYM=1   MS2= 1   THRE=1.0D-08   THRD=3.2D-06   THRG=3.2D-06  HFMA2=F  DIIS_START=2   DIIS_MAX=10   DIIS_INCORE=F

 Level shifts:    0.00 (CLOSED)    0.00 (OPEN)    0.30 (GAP_MIN)

 ITER           ETOT              DE          GRAD        DDIFF     DIIS  NEXP   TIME(IT)  TIME(TOT)  DIAG
   1    -2787.11058807   -2787.11058807     0.00D+00     0.57D-01     0     0       0.15      0.29    start
   2    -2787.15652283      -0.04593477     0.14D-01     0.67D-02     1     0       0.15      0.44    diag2
   3    -2787.15758410      -0.00106126     0.25D-02     0.11D-02     2     0       0.16      0.60    diag2
   4    -2787.15768297      -0.00009887     0.50D-03     0.14D-03     3     0       0.15      0.75    diag2
   5    -2787.15769129      -0.00000832     0.13D-03     0.45D-04     4     0       0.16      0.91    diag2
   6    -2787.15769150      -0.00000021     0.86D-05     0.10D-04     5     0       0.16      1.07    diag2
   7    -2787.15769150      -0.00000000     0.87D-06     0.12D-05     6     0       0.15      1.22    diag2
   8    -2787.15769150      -0.00000000     0.74D-07     0.46D-07     0     0       0.16      1.38    fixocc

 Final alpha occupancy:   9   9
 Final beta  occupancy:   8   9

 !RHF STATE 1.1 Energy              -2787.157691504321
  RHF One-electron energy           -3858.464274745299
  RHF Two-electron energy            1071.306583240978
  RHF Kinetic energy                 2993.402415036081
  RHF Nuclear energy                    0.000000000000
  RHF Virial quotient                  -0.931100234804

 !RHF STATE 1.1 Dipole moment           0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 ELECTRON ORBITALS
 =================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000  -529.89697     1  1  s    0.99999
    2.1     2.00000   -72.56293     1  2  s    1.00092
    3.1     2.00000   -11.72368     1  3  s    0.99380
    4.1     2.00000    -4.26023     1  1  d1+  1.00129
    5.1     2.00000    -4.26023     1  1  d2-  1.00129
    6.1     2.00000    -4.26023     1  1  d2+  1.00122
    7.1     2.00000    -4.26023     1  1  d1-  1.00128
    8.1     2.00000    -4.26023     1  1  d0   1.00121
    9.1     1.00000    -1.67235     1  4  s    1.07038
    1.2     2.00000   -64.03351     1  1  pz   1.00054
    2.2     2.00000   -64.03351     1  1  py   1.00054
    3.2     2.00000   -64.03351     1  1  px   1.00054
    4.2     2.00000    -8.92480     1  2  pz   1.00020
    5.2     2.00000    -8.92480     1  2  py   1.00020
    6.2     2.00000    -8.92480     1  2  px   1.00020
    7.2     2.00000    -0.90992     1  2  px  -0.33736    1  8  px   0.51288    1  9  px   0.38841
    8.2     2.00000    -0.90992     1  2  py  -0.33736    1  8  py   0.51288    1  9  py   0.38841
    9.2     2.00000    -0.90992     1  2  pz  -0.33736    1  8  pz   0.51288    1  9  pz   0.38841


 HOMO      9.2    -0.909922 =     -24.7602eV
 LUMO     10.1    -0.137328 =      -3.7369eV
 LUMO-HOMO         0.772594 =      21.0234eV

 Orbitals saved in record  2100.2


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      22       31.52       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600   
                                         AOSYM     SMH  

              2       4        1.63       700     1000      520     2100   
                                         GEOM     BASIS   MCVARS     RHF  

 PROGRAMS   *        TOTAL   RHF-SCF       INT
 CPU TIMES  *        11.22      1.38      9.65
 REAL TIME  *        13.30 SEC
 DISK USED  *        37.77 MB (local),        1.80 GB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of closed-shell orbitals:  14 (    8    6)
 Number of active  orbitals:        7 (    1    6)
 Number of external orbitals:     258 (  127  131)

 State symmetry 1

 Number of active electrons:   8    Spin symmetry=Singlet   Space symmetry=1
 Number of states:            10
 Number of CSFs:             280   (625 determinants, 1225 intermediate states)

 State symmetry 2

 Number of active electrons:   8    Spin symmetry=Triplet   Space symmetry=1
 Number of states:             9
 Number of CSFs:             294   (345 determinants, 735 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.119D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.129D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.126D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.460D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.160D-01 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 4 3 5 6 2 1 1   4 3 5 6 2 1 4 3 5 6   2 1 4 3 5 6 2 91114  151013 7 812 4 3 5 6
                                        2 1 9151410131112 8   7 4 3 5 6 2 1 912 8  1514111013 7 4 3 5 6   2 1 9151411 71013 8
                                       12 4 2 6 5 322161820  192423262128172725 1  141511 7 9 8121310 4   3 5 6 2 111 714 815
                                        9121310 2 6 5 3 4 1   6 4 5 2 3 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.112D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.112D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.186D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.259D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.824D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.945D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  9 SYMMETRY CONTAMINATION OF 0.945D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 11 SYMMETRY CONTAMINATION OF 0.412D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 12 SYMMETRY CONTAMINATION OF 0.412D-03 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 2 1 3 2 1 1 2 3 1   2 3 1 2 3 4 5 9 7 6   810 1 2 3 4 5 7 9 6   810 3 1 2 4 5 6 7 9
                                        810 5 4 6 9 710 820  18132114161911151712   3 1 2 5 4 6 9 710 8  16141320182111191517
                                       12 3 1 2 6 4 5 7 9 8  10201817151416132111  191210 8 4 6 5 9 7 2   1 3 6 8 510 4 9 719
                                       12211113161415171820   2 1 3 6 5 8 410 9 7   2 1 3

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.84615   0.00855   0.00855   0.00855   0.00855   0.00855   0.00855   0.00855
                                          0.00855   0.00855
 Weight factors for state symmetry  2:    0.00855   0.00855   0.00855   0.00855   0.00855   0.00855   0.00855   0.00855
                                          0.00855
 
 Number of orbital rotations:  2759  ( 44 closed/active, 1802 closed/virtual, 0 active/active, 913 active/virtual )
 Total number of variables:    12114
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1    5   16    0  -2788.20328318   -2788.23237691   -0.02909373    0.34658963 0.00108296 0.00083690  0.38E+00      4.73
   2    6   17    0  -2788.23298374   -2788.23301862   -0.00003488    0.01058007 0.00005271 0.00002439  0.38E-01      8.88
   3    6   19    0  -2788.23301867   -2788.23301868   -0.00000001    0.00001277 0.00000000 0.00000006  0.12E-02     13.75
   4    2    4    0  -2788.23301868   -2788.23301868    0.00000000    0.00000002 0.00000000 0.00000001  0.11E-06     16.54

 CONVERGENCE REACHED!  Final gradient:    0.00000001 ( 0.74E-08)
                       Final energy:  -2788.23301868
 
 Results for state 1.1 Singlet
 =============================
 !MCSCF STATE 1.1 Singlet Energy             -2788.298277159628
 Nuclear energy                                  0.00000000
 Kinetic energy                               2994.97639282
 One electron energy                         -3877.16597020
 Two electron energy                          1088.86769304
 Virial ratio                                    1.93099174
 
 !MCSCF STATE 1.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Singlet
 =============================
 !MCSCF STATE 2.1 Singlet Energy             -2787.875410389097
 Nuclear energy                                  0.00000000
 Kinetic energy                               2992.86369960
 One electron energy                         -3864.53932100
 Two electron energy                          1076.66391061
 Virial ratio                                    1.93150764
 
 !MCSCF STATE 2.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Singlet
 =============================
 !MCSCF STATE 3.1 Singlet Energy             -2787.875410389072
 Nuclear energy                                  0.00000000
 Kinetic energy                               2992.86369960
 One electron energy                         -3864.53932100
 Two electron energy                          1076.66391061
 Virial ratio                                    1.93150764
 
 !MCSCF STATE 3.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Singlet
 =============================
 !MCSCF STATE 4.1 Singlet Energy             -2787.875410388835
 Nuclear energy                                  0.00000000
 Kinetic energy                               2992.86369960
 One electron energy                         -3864.53932101
 Two electron energy                          1076.66391062
 Virial ratio                                    1.93150764
 
 !MCSCF STATE 4.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Singlet
 =============================
 !MCSCF STATE 5.1 Singlet Energy             -2787.875410388793
 Nuclear energy                                  0.00000000
 Kinetic energy                               2992.86369960
 One electron energy                         -3864.53932102
 Two electron energy                          1076.66391063
 Virial ratio                                    1.93150764
 
 !MCSCF STATE 5.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Singlet
 =============================
 !MCSCF STATE 6.1 Singlet Energy             -2787.875410388691
 Nuclear energy                                  0.00000000
 Kinetic energy                               2992.86369960
 One electron energy                         -3864.53932102
 Two electron energy                          1076.66391063
 Virial ratio                                    1.93150764
 
 !MCSCF STATE 6.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.1 Singlet
 =============================
 !MCSCF STATE 7.1 Singlet Energy             -2787.871109433038
 Nuclear energy                                  0.00000000
 Kinetic energy                               2992.85018026
 One electron energy                         -3864.50761853
 Two electron energy                          1076.63650910
 Virial ratio                                    1.93151041
 
 !MCSCF STATE 7.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.1 Singlet
 =============================
 !MCSCF STATE 8.1 Singlet Energy             -2787.871109432763
 Nuclear energy                                  0.00000000
 Kinetic energy                               2992.85018026
 One electron energy                         -3864.50761854
 Two electron energy                          1076.63650911
 Virial ratio                                    1.93151041
 
 !MCSCF STATE 8.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 9.1 Singlet
 =============================
 !MCSCF STATE 9.1 Singlet Energy             -2787.871109432717
 Nuclear energy                                  0.00000000
 Kinetic energy                               2992.85018026
 One electron energy                         -3864.50761855
 Two electron energy                          1076.63650912
 Virial ratio                                    1.93151041
 
 !MCSCF STATE 9.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 10.1 Singlet
 ==============================
 !MCSCF STATE 10.1 Singlet Energy            -2787.841177557001
 Nuclear energy                                  0.00000000
 Kinetic energy                               2993.60030557
 One electron energy                         -3866.57951759
 Two electron energy                          1078.73834003
 Virial ratio                                    1.93126700
 
 !MCSCF STATE 10.1 Singlet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.1 Triplet
 =============================
 !MCSCF STATE 1.1 Triplet Energy             -2787.891646396957
 Nuclear energy                                  0.00000000
 Kinetic energy                               2992.79529392
 One electron energy                         -3864.36979915
 Two electron energy                          1076.47815275
 Virial ratio                                    1.93153436
 
 !MCSCF STATE 1.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Triplet
 =============================
 !MCSCF STATE 2.1 Triplet Energy             -2787.879269682524
 Nuclear energy                                  0.00000000
 Kinetic energy                               2992.82930857
 One electron energy                         -3864.45585314
 Two electron energy                          1076.57658346
 Virial ratio                                    1.93151964
 
 !MCSCF STATE 2.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Triplet
 =============================
 !MCSCF STATE 3.1 Triplet Energy             -2787.879269682518
 Nuclear energy                                  0.00000000
 Kinetic energy                               2992.82930857
 One electron energy                         -3864.45585314
 Two electron energy                          1076.57658346
 Virial ratio                                    1.93151964
 
 !MCSCF STATE 3.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Triplet
 =============================
 !MCSCF STATE 4.1 Triplet Energy             -2787.879269682286
 Nuclear energy                                  0.00000000
 Kinetic energy                               2992.82930857
 One electron energy                         -3864.45585315
 Two electron energy                          1076.57658347
 Virial ratio                                    1.93151964
 
 !MCSCF STATE 4.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Triplet
 =============================
 !MCSCF STATE 5.1 Triplet Energy             -2787.879269682253
 Nuclear energy                                  0.00000000
 Kinetic energy                               2992.82930857
 One electron energy                         -3864.45585316
 Two electron energy                          1076.57658348
 Virial ratio                                    1.93151964
 
 !MCSCF STATE 5.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Triplet
 =============================
 !MCSCF STATE 6.1 Triplet Energy             -2787.879269682191
 Nuclear energy                                  0.00000000
 Kinetic energy                               2992.82930857
 One electron energy                         -3864.45585316
 Two electron energy                          1076.57658348
 Virial ratio                                    1.93151964
 
 !MCSCF STATE 6.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.1 Triplet
 =============================
 !MCSCF STATE 7.1 Triplet Energy             -2787.871397897746
 Nuclear energy                                  0.00000000
 Kinetic energy                               2992.84387950
 One electron energy                         -3864.49073031
 Two electron energy                          1076.61933241
 Virial ratio                                    1.93151247
 
 !MCSCF STATE 7.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.1 Triplet
 =============================
 !MCSCF STATE 8.1 Triplet Energy             -2787.871397897473
 Nuclear energy                                  0.00000000
 Kinetic energy                               2992.84387951
 One electron energy                         -3864.49073032
 Two electron energy                          1076.61933242
 Virial ratio                                    1.93151247
 
 !MCSCF STATE 8.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 9.1 Triplet
 =============================
 !MCSCF STATE 9.1 Triplet Energy             -2787.871397897427
 Nuclear energy                                  0.00000000
 Kinetic energy                               2992.84387951
 One electron energy                         -3864.49073032
 Two electron energy                          1076.61933243
 Virial ratio                                    1.93151247
 
 !MCSCF STATE 9.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 ? Warning
 ? Transition properties are only calculated between states of the same symmetry
 ? The problem occurs in mu_properties_expec2

 !MCSCF expec      <1.1 Singlet|LXLX|1.1 Singlet>     0.000000000000
 !MCSCF expec      <2.1 Singlet|LXLX|2.1 Singlet>     3.999999992615
 !MCSCF expec      <3.1 Singlet|LXLX|3.1 Singlet>     3.983760839224
 !MCSCF expec      <4.1 Singlet|LXLX|4.1 Singlet>     1.000000002186
 !MCSCF expec      <5.1 Singlet|LXLX|5.1 Singlet>     1.000000008184
 !MCSCF expec      <6.1 Singlet|LXLX|6.1 Singlet>     0.016239157791
 !MCSCF expec      <7.1 Singlet|LXLX|7.1 Singlet>     0.000000000085
 !MCSCF expec      <8.1 Singlet|LXLX|8.1 Singlet>     0.999999999933
 !MCSCF expec      <9.1 Singlet|LXLX|9.1 Singlet>     0.999999999982
 !MCSCF expec    <10.1 Singlet|LXLX|10.1 Singlet>     0.000000000000
 !MCSCF expec      <1.1 Triplet|LXLX|1.1 Triplet>     0.000000000000
 !MCSCF expec      <2.1 Triplet|LXLX|2.1 Triplet>     3.987752526571
 !MCSCF expec      <3.1 Triplet|LXLX|3.1 Triplet>     3.999999995209
 !MCSCF expec      <4.1 Triplet|LXLX|4.1 Triplet>     1.000000000463
 !MCSCF expec      <5.1 Triplet|LXLX|5.1 Triplet>     1.000000001073
 !MCSCF expec      <6.1 Triplet|LXLX|6.1 Triplet>     0.012242375537
 !MCSCF expec      <7.1 Triplet|LXLX|7.1 Triplet>     0.000000064247
 !MCSCF expec      <8.1 Triplet|LXLX|8.1 Triplet>     0.999999945105
 !MCSCF expec      <9.1 Triplet|LXLX|9.1 Triplet>     0.999999999889
 
 !MCSCF expec      <1.1 Singlet|LYLY|1.1 Singlet>     0.000000000000
 !MCSCF expec      <2.1 Singlet|LYLY|2.1 Singlet>     1.000000001952
 !MCSCF expec      <3.1 Singlet|LYLY|3.1 Singlet>     0.787847745000
 !MCSCF expec      <4.1 Singlet|LYLY|4.1 Singlet>     1.000000065803
 !MCSCF expec      <5.1 Singlet|LYLY|5.1 Singlet>     3.999999923485
 !MCSCF expec      <6.1 Singlet|LYLY|6.1 Singlet>     3.212152263761
 !MCSCF expec      <7.1 Singlet|LYLY|7.1 Singlet>     0.999999999982
 !MCSCF expec      <8.1 Singlet|LYLY|8.1 Singlet>     0.999999835400
 !MCSCF expec      <9.1 Singlet|LYLY|9.1 Singlet>     0.000000164618
 !MCSCF expec    <10.1 Singlet|LYLY|10.1 Singlet>     0.000000000000
 !MCSCF expec      <1.1 Triplet|LYLY|1.1 Triplet>     0.000000000000
 !MCSCF expec      <2.1 Triplet|LYLY|2.1 Triplet>     0.814734293101
 !MCSCF expec      <3.1 Triplet|LYLY|3.1 Triplet>     1.000000007257
 !MCSCF expec      <4.1 Triplet|LYLY|4.1 Triplet>     1.000000130954
 !MCSCF expec      <5.1 Triplet|LYLY|5.1 Triplet>     3.999999853527
 !MCSCF expec      <6.1 Triplet|LYLY|6.1 Triplet>     3.185228516520
 !MCSCF expec      <7.1 Triplet|LYLY|7.1 Triplet>     0.999999999999
 !MCSCF expec      <8.1 Triplet|LYLY|8.1 Triplet>     0.999999985216
 !MCSCF expec      <9.1 Triplet|LYLY|9.1 Triplet>     0.000000035222
 
 !MCSCF expec      <1.1 Singlet|LZLZ|1.1 Singlet>     0.000000000000
 !MCSCF expec      <2.1 Singlet|LZLZ|2.1 Singlet>     1.000000005433
 !MCSCF expec      <3.1 Singlet|LZLZ|3.1 Singlet>     1.228391415776
 !MCSCF expec      <4.1 Singlet|LZLZ|4.1 Singlet>     3.999999932011
 !MCSCF expec      <5.1 Singlet|LZLZ|5.1 Singlet>     1.000000068331
 !MCSCF expec      <6.1 Singlet|LZLZ|6.1 Singlet>     2.771608578448
 !MCSCF expec      <7.1 Singlet|LZLZ|7.1 Singlet>     0.999999999933
 !MCSCF expec      <8.1 Singlet|LZLZ|8.1 Singlet>     0.000000164667
 !MCSCF expec      <9.1 Singlet|LZLZ|9.1 Singlet>     0.999999835400
 !MCSCF expec    <10.1 Singlet|LZLZ|10.1 Singlet>     0.000000000000
 !MCSCF expec      <1.1 Triplet|LZLZ|1.1 Triplet>     0.000000000000
 !MCSCF expec      <2.1 Triplet|LZLZ|2.1 Triplet>     1.197513180328
 !MCSCF expec      <3.1 Triplet|LZLZ|3.1 Triplet>     0.999999997534
 !MCSCF expec      <4.1 Triplet|LZLZ|4.1 Triplet>     3.999999868582
 !MCSCF expec      <5.1 Triplet|LZLZ|5.1 Triplet>     1.000000145399
 !MCSCF expec      <6.1 Triplet|LZLZ|6.1 Triplet>     2.802529107943
 !MCSCF expec      <7.1 Triplet|LZLZ|7.1 Triplet>     0.999999935754
 !MCSCF expec      <8.1 Triplet|LZLZ|8.1 Triplet>     0.000000069679
 !MCSCF expec      <9.1 Triplet|LZLZ|9.1 Triplet>     0.999999964889
 
 !MCSCF expec      <1.1 Singlet|L**2|1.1 Singlet>     0.000000000000
 !MCSCF expec      <2.1 Singlet|L**2|2.1 Singlet>     6.000000000000
 !MCSCF expec      <3.1 Singlet|L**2|3.1 Singlet>     6.000000000000
 !MCSCF expec      <4.1 Singlet|L**2|4.1 Singlet>     6.000000000000
 !MCSCF expec      <5.1 Singlet|L**2|5.1 Singlet>     6.000000000000
 !MCSCF expec      <6.1 Singlet|L**2|6.1 Singlet>     6.000000000000
 !MCSCF expec      <7.1 Singlet|L**2|7.1 Singlet>     2.000000000000
 !MCSCF expec      <8.1 Singlet|L**2|8.1 Singlet>     2.000000000000
 !MCSCF expec      <9.1 Singlet|L**2|9.1 Singlet>     2.000000000000
 !MCSCF expec    <10.1 Singlet|L**2|10.1 Singlet>     0.000000000000
 !MCSCF expec      <1.1 Triplet|L**2|1.1 Triplet>     0.000000000000
 !MCSCF expec      <2.1 Triplet|L**2|2.1 Triplet>     6.000000000000
 !MCSCF expec      <3.1 Triplet|L**2|3.1 Triplet>     6.000000000000
 !MCSCF expec      <4.1 Triplet|L**2|4.1 Triplet>     6.000000000000
 !MCSCF expec      <5.1 Triplet|L**2|5.1 Triplet>     6.000000000000
 !MCSCF expec      <6.1 Triplet|L**2|6.1 Triplet>     6.000000000000
 !MCSCF expec      <7.1 Triplet|L**2|7.1 Triplet>     2.000000000000
 !MCSCF expec      <8.1 Triplet|L**2|8.1 Triplet>     2.000000000000
 !MCSCF expec      <9.1 Triplet|L**2|9.1 Triplet>     2.000000000000
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 4 3 5 6 2 1 1   4 6 2 3 5 1 4 3 6 5   2 1 4 3 5 6 2101314  1511 812 9 7 4 3 5 6
                                        2 11310141511 812 7   9 4 3 5 6 2 1101314  15 81211 9 7 4 3 5 6   2 11013141511 812 7
                                        9 4 2 6 5 322161820  241923262717212528 1  1013141511 812 7 9 4   3 5 6 2 11310111415
                                       12 8 7 9 2 6 5 3 4 1   6 5 2 4 3 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   2 3 1 2 1 3 3 1 2 2   1 3 1 3 2 4 6 5 810   9 7 1 3 2 9 7 5 4 8  10 6 3 2 1 7 9 5 410
                                        8 6 9 7 5 410 8 620  18151716142113121911   2 3 1 7 9 5 4 610 8  20181715161421131219
                                       11 2 1 3 7 9 510 8 6   4182017151614211312  1911 7 9 810 5 6 4 2   1 3 9 7 810 5 6 420
                                       18121517161413211911   2 1 3 5 9 7 610 8 4   2 1 3
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000  -529.42006     1  1  s    1.00000
    2.1     2.00000   -72.09380     1  2  s    1.00008
    3.1     2.00000   -11.26205     1  3  s    1.00010
    4.1     2.00000    -3.79064     1  1  d1+  1.00008
    5.1     2.00000    -3.79064     1  1  d2-  1.00008
    6.1     2.00000    -3.79064     1  1  d2+  1.00008
    7.1     2.00000    -3.79064     1  1  d1-  1.00008
    8.1     2.00000    -3.79064     1  1  d0   1.00008
    9.1     1.99997    -1.22273     1  4  s    1.00497
    1.2     2.00000   -63.55926     1  1  py   1.00000
    2.2     2.00000   -63.55926     1  1  pz   1.00000
    3.2     2.00000   -63.55926     1  1  px   1.00000
    4.2     2.00000    -8.45458     1  2  py   0.99977
    5.2     2.00000    -8.45458     1  2  px   0.99977
    6.2     2.00000    -8.45458     1  2  pz   0.99977
    7.2     1.94706    -0.54590     1  2  pz  -0.31934    1  8  pz   0.46388    1  9  pz   0.40529
    8.2     1.94706    -0.54590     1  2  px  -0.31934    1  8  px   0.46388    1  9  px   0.40529
    9.2     1.94706    -0.54590     1  2  py  -0.31934    1  8  py   0.46388    1  9  py   0.40529
   10.2     0.05296     0.08613     1 11  py   0.70469    1 12  py   0.30656
   11.2     0.05296     0.08613     1 11  px   0.70469    1 12  px   0.30656
   12.2     0.05296     0.08613     1 11  pz   0.70469    1 12  pz   0.30656
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 1 (Singlet)
 =======================================

 State:              1               2               3               4               5               6               7
 2 222000       0.99909707     -0.00000000      0.00000001      0.00000000      0.00000000      0.00000000     -0.00000000
 2 2b20a0      -0.00815278     -0.00001397      0.03650270      0.00000535      0.00000734     -0.57172855      0.00000000
 2 2a20b0       0.00815278      0.00001397     -0.03650270     -0.00000535     -0.00000734      0.57172855     -0.00000000
 2 22ab00       0.00815277     -0.00002892      0.51338280      0.00001471      0.00002145     -0.25425202     -0.00000000
 2 22ba00      -0.00815277      0.00002892     -0.51338280     -0.00001471     -0.00002145      0.25425202      0.00000000
 2 22a00b       0.00000000      0.49613958      0.00002265     -0.00000647      0.00001921     -0.00001068      0.49642709
 2 22b00a      -0.00000000     -0.49613958     -0.00002265      0.00000647     -0.00001921      0.00001068     -0.49642709
 2 b22a00       0.00000000     -0.49613960     -0.00002265      0.00000647     -0.00001921      0.00001068      0.49642707
 2 a22b00      -0.00000000      0.49613960      0.00002265     -0.00000647      0.00001921     -0.00001068     -0.49642707
 2 22b0a0       0.00000000     -0.00000646      0.00001230     -0.49613957     -0.00007382     -0.00000386     -0.00000407
 2 22a0b0      -0.00000000      0.00000646     -0.00001230      0.49613957      0.00007382      0.00000386      0.00000407
 2 a220b0      -0.00000000     -0.00001921     -0.00001815     -0.00007382      0.49613958      0.00000521     -0.00000209
 2 b220a0       0.00000000      0.00001921      0.00001815      0.00007382     -0.49613958     -0.00000521      0.00000209
 2 2a200b       0.00000000     -0.00001921     -0.00001815     -0.00007382      0.49613959      0.00000521      0.00000209
 2 2b200a      -0.00000000      0.00001921      0.00001815      0.00007382     -0.49613959     -0.00000521     -0.00000209
 2 2b2a00       0.00000000     -0.00000646      0.00001230     -0.49613960     -0.00007382     -0.00000386      0.00000407
 2 2a2b00      -0.00000000      0.00000646     -0.00001230      0.49613960      0.00007382      0.00000386     -0.00000407
 2 b2200a      -0.00815278     -0.00001494      0.47688010      0.00000935      0.00001411      0.31747655     -0.00000000
 2 a2200b       0.00815278      0.00001494     -0.47688010     -0.00000935     -0.00001411     -0.31747655      0.00000000
 2 202020      -0.01184867     -0.00000191      0.00499124      0.00000073      0.00000100     -0.07817598      0.00000000
 2 220200      -0.01184867      0.00000395     -0.07019801     -0.00000201     -0.00000293      0.03476545      0.00000000
 2 022002      -0.01184867     -0.00000204      0.06520676      0.00000128      0.00000193      0.04341053     -0.00000000
 
 Energy:    -2788.29827716  -2787.87541039  -2787.87541039  -2787.87541039  -2787.87541039  -2787.87541039  -2787.87110943

 State:              8               9              10
 2 222000       0.00000000     -0.00000000     -0.02620776
 2 2b20a0      -0.00000000      0.00000000     -0.40170487
 2 2a20b0       0.00000000     -0.00000000      0.40170487
 2 22ab00      -0.00000000      0.00000000      0.40170485
 2 22ba00       0.00000000     -0.00000000     -0.40170485
 2 22a00b      -0.00000407     -0.00000208      0.00000000
 2 22b00a       0.00000407      0.00000208     -0.00000000
 2 b22a00      -0.00000407     -0.00000208     -0.00000000
 2 a22b00       0.00000407      0.00000208      0.00000000
 2 22b0a0      -0.49642706      0.00020141     -0.00000000
 2 22a0b0       0.49642706     -0.00020141      0.00000000
 2 a220b0      -0.00020141     -0.49642705     -0.00000000
 2 b220a0       0.00020141      0.49642705      0.00000000
 2 2a200b       0.00020141      0.49642703      0.00000000
 2 2b200a      -0.00020141     -0.49642703     -0.00000000
 2 2b2a00       0.49642702     -0.00020141     -0.00000000
 2 2a2b00      -0.49642702      0.00020141      0.00000000
 2 b2200a       0.00000000     -0.00000000     -0.40170486
 2 a2200b      -0.00000000      0.00000000      0.40170486
 2 202020      -0.00000000      0.00000000     -0.05367721
 2 220200       0.00000000     -0.00000000     -0.05367721
 2 022002       0.00000000     -0.00000000     -0.05367720
 
 Energy:    -2787.87110943  -2787.87110943  -2787.84117756
 
 
 CI Coefficients of symmetry 1 (Triplet)
 =======================================

 State:              1               2               3               4               5               6               7
 2 2a20a0       0.57419928     -0.04488838      0.00002135      0.00000171     -0.00000176      0.80998098      0.00000000
 2 22aa00       0.57419930      0.72390829      0.00000081      0.00000558     -0.00000003     -0.36611600      0.00000000
 2 a22a00      -0.00000000     -0.00001045      0.70254047     -0.00000169      0.00001948     -0.00001910      0.70213829
 2 2a2a00      -0.00000000     -0.00000634      0.00000168      0.70254046      0.00014673     -0.00000183     -0.00017797
 2 22a00a      -0.00000000     -0.00001045      0.70254045     -0.00000169      0.00001948     -0.00001910     -0.70213830
 2 2a200a      -0.00000000      0.00000082     -0.00001948     -0.00014673      0.70254045      0.00000157     -0.00000055
 2 a220a0      -0.00000000      0.00000082     -0.00001948     -0.00014673      0.70254044      0.00000157      0.00000055
 2 22a0a0      -0.00000000     -0.00000634      0.00000168      0.70254044      0.00014673     -0.00000183      0.00017797
 2 a2200a       0.57419930     -0.67901990     -0.00002217     -0.00000729      0.00000178     -0.44386495     -0.00000000
 
 Energy:    -2787.89164640  -2787.87926968  -2787.87926968  -2787.87926968  -2787.87926968  -2787.87926968  -2787.87139790

 State:              8               9
 2 2a20a0      -0.00000000      0.00000000
 2 22aa00       0.00000000      0.00000000
 2 a22a00       0.00017797     -0.00000057
 2 2a2a00       0.70213828     -0.00008537
 2 22a00a      -0.00017797      0.00000057
 2 2a200a      -0.00008537     -0.70213831
 2 a220a0       0.00008537      0.70213832
 2 22a0a0      -0.70213830      0.00008537
 2 a2200a      -0.00000000     -0.00000000
 
 Energy:    -2787.87139790  -2787.87139790
 


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24      136.04       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       5        3.08       700     1000      520     2100     2140   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF   

 PROGRAMS   *        TOTAL     MULTI   RHF-SCF       INT
 CPU TIMES  *        25.55     14.33      1.38      9.65
 REAL TIME  *        32.55 SEC
 DISK USED  *       139.25 MB (local),        3.19 GB (total)
 SF USED    *       263.13 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

          ENERGY    LL
    -2788.298277   0.0
    -2787.875410   6.0
    -2787.875410   6.0
    -2787.875410   6.0
    -2787.875410   6.0
    -2787.875410   6.0
    -2787.871109   2.0
    -2787.871109   2.0
    -2787.871109   2.0
    -2787.841178   0.0
    -2787.891646   0.0
    -2787.879270   6.0
    -2787.879270   6.0
    -2787.879270   6.0
    -2787.879270   6.0
    -2787.879270   6.0
    -2787.871398   2.0
    -2787.871398   2.0
    -2787.871398   2.0
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 10  Roots:   1   2   3   4   5   6   7   8   9  10
 Number of reference states: 10  Roots:   1   2   3   4   5   6   7   8   9  10

 Reference symmetry:                   1   Singlet 
 Number of electrons:                 36
 Maximum number of shells:             6
 Maximum number of spin couplings:    42

 Reference space:      231 conf      280 CSFs
 N elec internal:     9996 conf    21280 CSFs
 N-1 el internal:    15576 conf    58240 CSFs
 N-2 el internal:    14289 conf    77596 CSFs

 Number of electrons in valence space:                     26
 Maximum number of open shell orbitals in reference space:  6
 Maximum number of open shell orbitals in internal spaces: 10


 Number of core orbitals:           5 (   2   3 )
 Number of closed-shell orbitals:   9 (   6   3 )
 Number of active  orbitals:        7 (   1   6 )
 Number of external orbitals:     258 ( 127 131 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Integral transformation finished. Total CPU:   1.26 sec, npass=  1  Memory used:   6.59 MW


 Number of p-space configurations:  10

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1     -2788.29827716
     2     -2787.87541039
     3     -2787.87541039
     4     -2787.87541039
     5     -2787.87541039
     6     -2787.87541039
     7     -2787.87110943
     8     -2787.87110943
     9     -2787.87110943
    10     -2787.84117756

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.6062D-07

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1235D-06

 Number of blocks in overlap matrix:  1054   Smallest eigenvalue:  0.61D-07
 Number of N-2 electron functions:    2443
 Number of N-1 electron functions:   58240

 Number of internal configurations:                10822
 Number of singly external configurations:       7513912
 Number of doubly external configurations:      40667974
 Total number of contracted configurations:     48192708
 Total number of uncontracted configurations: 1297764822

 Diagonal Coupling coefficients finished.               Storage:  15129248 words, CPU-Time:     29.84 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   3872548 words, CPU-time:      3.52 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000 -2788.29827716     0.00000000    -1.19384647  0.71D-02  0.64D-01    42.34
    1     2     2     1.00000000     0.00000000 -2787.87541039    -0.00000000    -1.20489844  0.34D-01  0.63D-01    42.34
    1     3     3     1.00000000     0.00000000 -2787.87541039     0.00000000    -1.20903955  0.34D-01  0.66D-01    42.34
    1     4     4     1.00000000     0.00000000 -2787.87541039     0.00000000    -1.20502280  0.34D-01  0.63D-01    42.34
    1     5     5     1.00000000     0.00000000 -2787.87541039    -0.00000000    -1.20492063  0.34D-01  0.63D-01    42.34
    1     6     6     1.00000000     0.00000000 -2787.87541039     0.00000000    -1.21380685  0.34D-01  0.68D-01    42.34
    1     7     7     1.00000000     0.00000000 -2787.87110943    -0.00000000    -1.20775231  0.35D-01  0.64D-01    42.34
    1     8     8     1.00000000     0.00000000 -2787.87110943     0.00000000    -1.20680459  0.35D-01  0.64D-01    42.34
    1     9     9     1.00000000     0.00000000 -2787.87110943    -0.00000000    -1.20731874  0.35D-01  0.64D-01    42.34
    1    10    10     1.00000000     0.00000000 -2787.84117756     0.00000000    -1.23201465  0.82D-01  0.64D-01    42.34
    2     1     1     1.05721425    -1.07011008 -2789.36838724    -1.07011008    -0.01772757  0.12D-02  0.11D-02  1572.56
    2     2     2     1.07572441    -1.05571389 -2788.93112428    -1.05571389    -0.02019217  0.33D-02  0.90D-03  1572.56
    2     3     3     1.07470641    -1.05563197 -2788.93104236    -1.05563197    -0.02030081  0.35D-02  0.86D-03  1572.56
    2     4     4     1.07468786    -1.05558717 -2788.93099756    -1.05558717    -0.02032623  0.35D-02  0.87D-03  1572.56
    2     5     5     1.07467439    -1.05557578 -2788.93098617    -1.05557578    -0.02033875  0.35D-02  0.87D-03  1572.56
    2     6     6     1.07712023    -1.05470729 -2788.93011768    -1.05470729    -0.02106905  0.33D-02  0.11D-02  1572.56
    2     7     7     1.07589207    -1.05648177 -2788.92759120    -1.05648177    -0.02014858  0.35D-02  0.85D-03  1572.56
    2     8     8     1.07579658    -1.05646708 -2788.92757652    -1.05646708    -0.02015712  0.35D-02  0.85D-03  1572.56
    2     9     9     1.07564940    -1.05638325 -2788.92749269    -1.05638325    -0.02020364  0.36D-02  0.86D-03  1572.56
    2    10    10     1.10464049    -1.04251618 -2788.88369373    -1.04251618    -0.04311851  0.17D-01  0.11D-02  1572.56
    3     1     1     1.06044345    -1.08786700 -2789.38614416    -0.01775692    -0.00070778  0.84D-05  0.82D-04  3098.47
    3     2     2     1.06536244    -1.07551296 -2788.95092335    -0.01979907    -0.00066489  0.61D-04  0.67D-04  3098.47
    3     3     3     1.06556393    -1.07550522 -2788.95091561    -0.01987324    -0.00066266  0.59D-04  0.70D-04  3098.47
    3     4     4     1.06533771    -1.07550274 -2788.95091313    -0.01991557    -0.00067079  0.61D-04  0.68D-04  3098.47
    3     5     5     1.06534347    -1.07550238 -2788.95091277    -0.01992660    -0.00067051  0.61D-04  0.68D-04  3098.47
    3     6     6     1.06550708    -1.07544489 -2788.95085528    -0.02073759    -0.00070210  0.57D-04  0.79D-04  3098.47
    3     7     7     1.06593792    -1.07628424 -2788.94739367    -0.01980247    -0.00066495  0.66D-04  0.66D-04  3098.47
    3     8     8     1.06591658    -1.07627790 -2788.94738733    -0.01981081    -0.00066824  0.66D-04  0.66D-04  3098.47
    3     9     9     1.06585253    -1.07626030 -2788.94736973    -0.01987704    -0.00067977  0.66D-04  0.68D-04  3098.47
    3    10    10     1.06943632    -1.08528760 -2788.92646516    -0.04277143    -0.00138182  0.18D-03  0.11D-03  3098.47
    4     1     1     1.06362923    -1.08878352 -2789.38706068    -0.00091653    -0.00005305  0.18D-05  0.45D-05  4626.89
    4     2     2     1.06604845    -1.07632006 -2788.95173044    -0.00080710    -0.00006597  0.26D-05  0.75D-05  4626.89
    4     3     3     1.06604280    -1.07631847 -2788.95172886    -0.00081325    -0.00006694  0.27D-05  0.76D-05  4626.89
    4     4     4     1.06604256    -1.07631808 -2788.95172847    -0.00081535    -0.00006709  0.27D-05  0.76D-05  4626.89
    4     5     5     1.06600405    -1.07631578 -2788.95172617    -0.00081340    -0.00006934  0.28D-05  0.79D-05  4626.89
    4     6     6     1.06591657    -1.07630721 -2788.95171759    -0.00086232    -0.00007562  0.30D-05  0.87D-05  4626.89
    4     7     7     1.06641293    -1.07708825 -2788.94819768    -0.00080401    -0.00006679  0.26D-05  0.76D-05  4626.89
    4     8     8     1.06641202    -1.07708728 -2788.94819671    -0.00080938    -0.00006740  0.26D-05  0.77D-05  4626.89
    4     9     9     1.06639938    -1.07708634 -2788.94819577    -0.00082604    -0.00006864  0.27D-05  0.77D-05  4626.89
    4    10    10     1.06959091    -1.08683277 -2788.92801032    -0.00154517    -0.00010652  0.42D-05  0.13D-04  4626.89
    5     1     1     1.06409741    -1.08884591 -2789.38712307    -0.00006239    -0.00000345  0.11D-06  0.32D-06  6157.05
    5     2     2     1.06658919    -1.07640387 -2788.95181426    -0.00008382    -0.00000675  0.28D-06  0.68D-06  6157.05
    5     3     3     1.06660443    -1.07640362 -2788.95181401    -0.00008515    -0.00000676  0.26D-06  0.71D-06  6157.05
    5     4     4     1.06660504    -1.07640334 -2788.95181373    -0.00008526    -0.00000690  0.27D-06  0.72D-06  6157.05
    5     5     5     1.06660493    -1.07640322 -2788.95181361    -0.00008744    -0.00000696  0.27D-06  0.73D-06  6157.05
    5     6     6     1.06658895    -1.07640311 -2788.95181349    -0.00009590    -0.00000721  0.30D-06  0.73D-06  6157.05
    5     7     7     1.06696196    -1.07717311 -2788.94828254    -0.00008486    -0.00000684  0.25D-06  0.70D-06  6157.05
    5     8     8     1.06696053    -1.07717309 -2788.94828252    -0.00008581    -0.00000684  0.26D-06  0.70D-06  6157.05
    5     9     9     1.06696193    -1.07717293 -2788.94828237    -0.00008660    -0.00000693  0.26D-06  0.71D-06  6157.05
    5    10    10     1.07018479    -1.08696916 -2788.92814672    -0.00013639    -0.00001204  0.65D-06  0.13D-05  6157.05
    6     1     1     1.06408413    -1.08885007 -2789.38712723    -0.00000416    -0.00000030  0.66D-08  0.29D-07  7692.66
    6     2     2     1.06664170    -1.07641225 -2788.95182264    -0.00000838    -0.00000082  0.26D-07  0.94D-07  7692.66
    6     3     3     1.06663889    -1.07641225 -2788.95182263    -0.00000863    -0.00000075  0.23D-07  0.88D-07  7692.66
    6     4     4     1.06664159    -1.07641217 -2788.95182256    -0.00000883    -0.00000085  0.27D-07  0.97D-07  7692.66
    6     5     5     1.06664162    -1.07641214 -2788.95182252    -0.00000891    -0.00000086  0.28D-07  0.99D-07  7692.66
    6     6     6     1.06663826    -1.07641207 -2788.95182246    -0.00000896    -0.00000082  0.25D-07  0.98D-07  7692.66
    6     7     7     1.06700534    -1.07718174 -2788.94829117    -0.00000863    -0.00000079  0.24D-07  0.91D-07  7692.66
    6     8     8     1.06700485    -1.07718169 -2788.94829112    -0.00000860    -0.00000081  0.25D-07  0.92D-07  7692.66
    6     9     9     1.06700379    -1.07718167 -2788.94829111    -0.00000874    -0.00000077  0.24D-07  0.89D-07  7692.66
    6    10    10     1.07019040    -1.08698471 -2788.92816227    -0.00001555    -0.00000157  0.79D-07  0.18D-06  7692.66
    7     1     1     1.06408995    -1.08885042 -2789.38712758    -0.00000036    -0.00000003  0.11D-08  0.27D-08  9222.46
    7     2     2     1.06663633    -1.07641330 -2788.95182369    -0.00000106    -0.00000012  0.51D-08  0.13D-07  9222.46
    7     3     3     1.06663600    -1.07641328 -2788.95182367    -0.00000103    -0.00000013  0.54D-08  0.14D-07  9222.46
    7     4     4     1.06663589    -1.07641326 -2788.95182364    -0.00000108    -0.00000014  0.55D-08  0.14D-07  9222.46
    7     5     5     1.06663662    -1.07641321 -2788.95182360    -0.00000107    -0.00000012  0.47D-08  0.12D-07  9222.46
    7     6     6     1.06663600    -1.07641314 -2788.95182352    -0.00000107    -0.00000013  0.54D-08  0.14D-07  9222.46
    7     7     7     1.06699874    -1.07718276 -2788.94829219    -0.00000102    -0.00000012  0.46D-08  0.13D-07  9222.46
    7     8     8     1.06699861    -1.07718273 -2788.94829216    -0.00000104    -0.00000012  0.47D-08  0.13D-07  9222.46
    7     9     9     1.06699861    -1.07718267 -2788.94829210    -0.00000100    -0.00000012  0.45D-08  0.12D-07  9222.46
    7    10    10     1.07021617    -1.08698669 -2788.92816425    -0.00000198    -0.00000027  0.17D-07  0.27D-07  9222.46
    8     1     1     1.06409029    -1.08885043 -2789.38712759    -0.00000001    -0.00000002  0.39D-09  0.21D-08 10643.52
    8     2     2     1.06663910    -1.07641345 -2788.95182384    -0.00000015    -0.00000002  0.11D-08  0.18D-08 10643.52
    8     3     3     1.06663894    -1.07641344 -2788.95182383    -0.00000016    -0.00000002  0.12D-08  0.20D-08 10643.52
    8     4     4     1.06663885    -1.07641342 -2788.95182381    -0.00000017    -0.00000002  0.12D-08  0.20D-08 10643.52
    8     5     5     1.06663963    -1.07641335 -2788.95182374    -0.00000014    -0.00000002  0.10D-08  0.16D-08 10643.52
    8     6     6     1.06663948    -1.07641330 -2788.95182369    -0.00000016    -0.00000002  0.11D-08  0.18D-08 10643.52
    8     7     7     1.06700150    -1.07718291 -2788.94829234    -0.00000015    -0.00000002  0.11D-08  0.17D-08 10643.52
    8     8     8     1.06700143    -1.07718288 -2788.94829231    -0.00000015    -0.00000002  0.11D-08  0.17D-08 10643.52
    8     9     9     1.06700158    -1.07718282 -2788.94829225    -0.00000014    -0.00000002  0.10D-08  0.16D-08 10643.52
    8    10    10     1.07021212    -1.08698706 -2788.92816461    -0.00000036    -0.00000002  0.13D-08  0.26D-08 10643.52


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.1%
 S   0.1%   2.4%
 P   0.2%  25.1%  52.2%

 Initialization:   0.3%
 Other:           19.6%

 Total CPU:    10643.5 seconds
 =====================================



 Wavefunction saved on  5201.2

 Reference coefficients greater than 0.0500000
 =============================================
 2222222222222000           0.9689321   0.0000000   0.0000000   0.0000000  -0.0000001   0.0000001  -0.0000000   0.0000000
                           -0.0000000  -0.0004712
 2222222222/2200\          -0.0030624  -0.0030457  -0.0004689   0.0015996   0.7685614  -0.1567817  -0.0000000  -0.0000001
                            0.0000001   0.5489832
 22222222222/20\0          -0.0030624   0.0033175   0.0001359  -0.0010968  -0.2484948   0.7439876   0.0000000   0.0000000
                           -0.0000002   0.5489832
 222222222222/0\0           0.0000000   0.6792849  -0.0038886   0.0014580   0.0022205  -0.0022847   0.0006101   0.0004970
                           -0.6796280   0.0000000
 22222222222/2\00           0.0000000   0.6792909  -0.0038885   0.0014580   0.0022204  -0.0022843  -0.0006101  -0.0004970
                            0.6796222  -0.0000000
 2222222222/220\0          -0.0000000  -0.0015663  -0.0201214   0.6790021  -0.0013149   0.0005725   0.0044110  -0.6796158
                           -0.0004931  -0.0000000
 2222222222/22\00           0.0000000   0.0038424   0.6789954   0.0201310   0.0003916   0.0000192   0.6796144   0.0044108
                            0.0006132   0.0000000
 222222222222/00\           0.0000000   0.0038425   0.6790021   0.0201311   0.0003915   0.0000193  -0.6796077  -0.0044104
                           -0.0006133  -0.0000000
 22222222222/200\          -0.0000000  -0.0015664  -0.0201220   0.6790114  -0.0013149   0.0005725  -0.0044110   0.6796065
                            0.0004930   0.0000000
 222222222222/\00          -0.0030624  -0.0002718   0.0003330  -0.0005028  -0.5200658  -0.5872046  -0.0000000   0.0000000
                            0.0000001   0.5489841
 2222222222022002          -0.0097052   0.0002966   0.0000457  -0.0001558  -0.0748544   0.0152693   0.0000000   0.0000000
                           -0.0000000  -0.0529729
 2222222222202020          -0.0097053  -0.0003231  -0.0000132   0.0001068   0.0242030  -0.0724622  -0.0000000  -0.0000000
                            0.0000000  -0.0529734
 2222222222/2/\0\          -0.0110596   0.0002120   0.0000087  -0.0000701  -0.0158828   0.0475511   0.0000000   0.0000000
                           -0.0000000  -0.0687732
 22222222222//\\0          -0.0110598  -0.0001946  -0.0000300   0.0001022   0.0491212  -0.0100203   0.0000000  -0.0000000
                            0.0000000  -0.0687730
 2222222222//20\\          -0.0110596  -0.0000174   0.0000213  -0.0000321  -0.0332395  -0.0375299  -0.0000000   0.0000000
                            0.0000000  -0.0687728
 2222222222220200          -0.0097051   0.0000265  -0.0000324   0.0000490   0.0506527   0.0571920   0.0000000  -0.0000000
                           -0.0000000  -0.0529734

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.969082    0.000000    0.000000    0.000000   -0.000000    0.000000   -0.000000    0.000000   -0.000000   -0.025366
 2           0.000000    0.005477    0.001710    0.968226   -0.002233    0.004214   -0.000000    0.000004   -0.000000    0.000000
 3          -0.000000    0.967814    0.000560   -0.005543   -0.028681    0.000204   -0.000005    0.000000   -0.000000   -0.000000
 4           0.000000    0.028694   -0.001408    0.002078    0.967825   -0.001447   -0.000000    0.000000    0.000007   -0.000000
 5          -0.000000    0.000558   -0.896796    0.003165   -0.001874   -0.365046    0.000000   -0.000000    0.000000    0.000001
 6           0.000000    0.000027   -0.365058   -0.003256    0.000816    0.896793   -0.000000    0.000000    0.000000    0.000001
 7          -0.000000    0.000005   -0.000000    0.000000    0.000000    0.000000    0.968070   -0.000869   -0.006283   -0.000000
 8           0.000000    0.000000    0.000000    0.000000   -0.000007    0.000000    0.006283   -0.000708    0.968070   -0.000000
 9           0.000000   -0.000000    0.000000   -0.000004   -0.000000   -0.000000    0.000874    0.968090    0.000702    0.000000
 10          0.024964    0.000000    0.000001   -0.000000    0.000000   -0.000000    0.000000   -0.000000    0.000000    0.966311

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.969414    0.000000    0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.000000   -0.000000   -0.000165
 2           0.000000    0.968254    0.000000   -0.000000    0.000000   -0.000000    0.000000   -0.000000    0.000000   -0.000000
 3           0.000000    0.000000    0.968254   -0.000000    0.000000   -0.000000    0.000000    0.000000   -0.000000    0.000000
 4          -0.000000   -0.000000   -0.000000    0.968255   -0.000000    0.000000    0.000000    0.000000    0.000000   -0.000000
 5          -0.000000    0.000000    0.000000   -0.000000    0.968254   -0.000000   -0.000000   -0.000000    0.000000    0.000000
 6           0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.968254    0.000000   -0.000000   -0.000000    0.000000
 7          -0.000000    0.000000    0.000000    0.000000   -0.000000    0.000000    0.968091   -0.000000    0.000000    0.000000
 8           0.000000   -0.000000    0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.968091    0.000000    0.000000
 9          -0.000000    0.000000   -0.000000    0.000000    0.000000   -0.000000    0.000000    0.000000    0.968091   -0.000000
 10         -0.000165   -0.000000    0.000000   -0.000000    0.000000    0.000000    0.000000    0.000000   -0.000000    0.966633


 RESULTS FOR STATE 1.1
 =====================

 Coefficient of reference function:   C(0) = 0.96908233 (fixed)   0.96941614 (relaxed)   0.96941425 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000626   -0.00001106   -1.06391937
 Singles      0.00277996   -0.01362410   -0.01564977
 Pairs        0.06131073    0.05688021   -0.00928130
 Total        1.06409695    0.04324504   -1.08885043
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2788.29796824
 Nuclear energy                         0.00000000
 Kinetic energy                      2995.89085314
 One electron energy                -3876.32501789
 Two electron energy                 1086.93789029
 Virial quotient                       -0.93107101
 Correlation energy                    -1.08915935
 !MRCI STATE 1.1 Energy             -2789.387127594514

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2789.45693939 (Davidson, fixed reference)
 Cluster corrected energies         -2789.45693489 (Davidson, relaxed reference)
 Cluster corrected energies         -2789.45693939 (Davidson, rotated reference)

 Cluster corrected energies         -2789.45524252 (Pople, fixed reference)
 Cluster corrected energies         -2789.45523788 (Pople, relaxed reference)
 Cluster corrected energies         -2789.45524252 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.96822568 (fixed)   0.96825529 (relaxed)   0.96825442 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000812   -0.00003682   -0.96764303
 Singles      0.01300378   -0.04428790   -0.05464350
 Pairs        0.05363587   -0.00000002   -0.05412692
 Total        1.06664776   -0.04432473   -1.07641345
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2787.87541039
 Nuclear energy                         0.00000000
 Kinetic energy                      2994.89572800
 One electron energy                -3865.51180062
 Two electron energy                 1076.55997677
 Virial quotient                       -0.93123503
 Correlation energy                    -1.07641346
 !MRCI STATE 2.1 Energy             -2788.951823843960

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2789.02356439 (Davidson, fixed reference)
 Cluster corrected energies         -2789.02356232 (Davidson, relaxed reference)
 Cluster corrected energies         -2789.02356439 (Davidson, rotated reference)

 Cluster corrected energies         -2789.02197878 (Pople, fixed reference)
 Cluster corrected energies         -2789.02197664 (Pople, relaxed reference)
 Cluster corrected energies         -2789.02197878 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.96781357 (fixed)   0.96825536 (relaxed)   0.96825449 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000812   -0.00003682   -0.96764325
 Singles      0.01300373   -0.04428782   -0.05464340
 Pairs        0.05363576    0.00000000   -0.05412678
 Total        1.06664760   -0.04432464   -1.07641344
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2787.87541039
 Nuclear energy                         0.00000000
 Kinetic energy                      2994.89557316
 One electron energy                -3865.51169453
 Two electron energy                 1076.55987070
 Virial quotient                       -0.93123508
 Correlation energy                    -1.07641344
 !MRCI STATE 3.1 Energy             -2788.951823829103

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2789.02356421 (Davidson, fixed reference)
 Cluster corrected energies         -2789.02356214 (Davidson, relaxed reference)
 Cluster corrected energies         -2789.02356421 (Davidson, rotated reference)

 Cluster corrected energies         -2789.02197859 (Pople, fixed reference)
 Cluster corrected energies         -2789.02197645 (Pople, relaxed reference)
 Cluster corrected energies         -2789.02197859 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.96782493 (fixed)   0.96825540 (relaxed)   0.96825453 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000812   -0.00003682   -0.96764334
 Singles      0.01300372   -0.04428781   -0.05464338
 Pairs        0.05363567    0.00000000   -0.05412670
 Total        1.06664751   -0.04432462   -1.07641342
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2787.87541039
 Nuclear energy                         0.00000000
 Kinetic energy                      2994.89554292
 One electron energy                -3865.51167307
 Two electron energy                 1076.55984926
 Virial quotient                       -0.93123509
 Correlation energy                    -1.07641342
 !MRCI STATE 4.1 Energy             -2788.951823809695

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2789.02356408 (Davidson, fixed reference)
 Cluster corrected energies         -2789.02356202 (Davidson, relaxed reference)
 Cluster corrected energies         -2789.02356408 (Davidson, rotated reference)

 Cluster corrected energies         -2789.02197846 (Pople, fixed reference)
 Cluster corrected energies         -2789.02197632 (Pople, relaxed reference)
 Cluster corrected energies         -2789.02197846 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.89679643 (fixed)   0.96825505 (relaxed)   0.96825418 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000811   -0.00003682   -0.96764196
 Singles      0.01300377   -0.04428790   -0.05464338
 Pairs        0.05363639   -0.00000055   -0.05412801
 Total        1.06664828   -0.04432527   -1.07641335
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2787.87541039
 Nuclear energy                         0.00000000
 Kinetic energy                      2994.89581656
 One electron energy                -3865.51187492
 Two electron energy                 1076.56005118
 Virial quotient                       -0.93123501
 Correlation energy                    -1.07641335
 !MRCI STATE 5.1 Energy             -2788.951823737992

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2789.02356484 (Davidson, fixed reference)
 Cluster corrected energies         -2789.02356278 (Davidson, relaxed reference)
 Cluster corrected energies         -2789.02356484 (Davidson, rotated reference)

 Cluster corrected energies         -2789.02197925 (Pople, fixed reference)
 Cluster corrected energies         -2789.02197711 (Pople, relaxed reference)
 Cluster corrected energies         -2789.02197925 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Coefficient of reference function:   C(0) = 0.89679312 (fixed)   0.96825512 (relaxed)   0.96825425 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000811   -0.00003682   -0.96764167
 Singles      0.01300383   -0.04428796   -0.05464336
 Pairs        0.05363620   -0.00000088   -0.05412826
 Total        1.06664814   -0.04432566   -1.07641330
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2787.87541039
 Nuclear energy                         0.00000000
 Kinetic energy                      2994.89563735
 One electron energy                -3865.51176188
 Two electron energy                 1076.55993819
 Virial quotient                       -0.93123506
 Correlation energy                    -1.07641330
 !MRCI STATE 6.1 Energy             -2788.951823686866

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2789.02356463 (Davidson, fixed reference)
 Cluster corrected energies         -2789.02356257 (Davidson, relaxed reference)
 Cluster corrected energies         -2789.02356463 (Davidson, rotated reference)

 Cluster corrected energies         -2789.02197904 (Pople, fixed reference)
 Cluster corrected energies         -2789.02197690 (Pople, relaxed reference)
 Cluster corrected energies         -2789.02197904 (Pople, rotated reference)



 RESULTS FOR STATE 7.1
 =====================

 Coefficient of reference function:   C(0) = 0.96806986 (fixed)   0.96809073 (relaxed)   0.96809064 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000674   -0.00003669   -0.96696849
 Singles      0.01344655   -0.04542639   -0.05614836
 Pairs        0.05355541    0.00000000   -0.05406606
 Total        1.06700869   -0.04546307   -1.07718291
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2787.87110943
 Nuclear energy                         0.00000000
 Kinetic energy                      2994.89266325
 One electron energy                -3865.49497215
 Two electron energy                 1076.54667981
 Virial quotient                       -0.93123481
 Correlation energy                    -1.07718291
 !MRCI STATE 7.1 Energy             -2788.948292343051

 Properties without orbital relaxation:

 !MRCI STATE 7.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2789.02047296 (Davidson, fixed reference)
 Cluster corrected energies         -2789.02047276 (Davidson, relaxed reference)
 Cluster corrected energies         -2789.02047296 (Davidson, rotated reference)

 Cluster corrected energies         -2789.01890019 (Pople, fixed reference)
 Cluster corrected energies         -2789.01889998 (Pople, relaxed reference)
 Cluster corrected energies         -2789.01890019 (Pople, rotated reference)



 RESULTS FOR STATE 8.1
 =====================

 Maximum overlap with reference state  9

 Coefficient of reference function:   C(0) = 0.96807003 (fixed)   0.96809076 (relaxed)   0.96809067 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000674   -0.00003669   -0.96696854
 Singles      0.01344657   -0.04542638   -0.05614835
 Pairs        0.05355531    0.00000000   -0.05406600
 Total        1.06700862   -0.04546307   -1.07718288
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2787.87110943
 Nuclear energy                         0.00000000
 Kinetic energy                      2994.89262697
 One electron energy                -3865.49495002
 Two electron energy                 1076.54665771
 Virial quotient                       -0.93123482
 Correlation energy                    -1.07718288
 !MRCI STATE 8.1 Energy             -2788.948292313977

 Properties without orbital relaxation:

 !MRCI STATE 8.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2789.02047285 (Davidson, fixed reference)
 Cluster corrected energies         -2789.02047265 (Davidson, relaxed reference)
 Cluster corrected energies         -2789.02047285 (Davidson, rotated reference)

 Cluster corrected energies         -2789.01890008 (Pople, fixed reference)
 Cluster corrected energies         -2789.01889987 (Pople, relaxed reference)
 Cluster corrected energies         -2789.01890008 (Pople, rotated reference)



 RESULTS FOR STATE 9.1
 =====================

 Maximum overlap with reference state  8

 Coefficient of reference function:   C(0) = 0.96808996 (fixed)   0.96809069 (relaxed)   0.96809061 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000674   -0.00003669   -0.96696837
 Singles      0.01344652   -0.04542631   -0.05614821
 Pairs        0.05355551   -0.00000004   -0.05406623
 Total        1.06700877   -0.04546303   -1.07718282
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2787.87110943
 Nuclear energy                         0.00000000
 Kinetic energy                      2994.89272170
 One electron energy                -3865.49501493
 Two electron energy                 1076.54672268
 Virial quotient                       -0.93123479
 Correlation energy                    -1.07718282
 !MRCI STATE 9.1 Energy             -2788.948292248662

 Properties without orbital relaxation:

 !MRCI STATE 9.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2789.02047294 (Davidson, fixed reference)
 Cluster corrected energies         -2789.02047274 (Davidson, relaxed reference)
 Cluster corrected energies         -2789.02047294 (Davidson, rotated reference)

 Cluster corrected energies         -2789.01890018 (Pople, fixed reference)
 Cluster corrected energies         -2789.01889997 (Pople, relaxed reference)
 Cluster corrected energies         -2789.01890018 (Pople, rotated reference)



 RESULTS FOR STATE 10.1
 ======================

 Coefficient of reference function:   C(0) = 0.96631090 (fixed)   0.96663751 (relaxed)   0.96663330 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00001526   -0.00005009    0.00006263
 Singles      0.01573049   -0.04818161   -0.06099972
 Pairs        0.05448270   -1.03888906   -1.02604997
 Total        1.07022845   -1.08712076   -1.08698706
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2787.84148648
 Nuclear energy                         0.00000000
 Kinetic energy                      2995.14767804
 One electron energy                -3866.35549394
 Two electron energy                 1077.42732933
 Virial quotient                       -0.93114880
 Correlation energy                    -1.08667814
 !MRCI STATE 10.1 Energy            -2788.928164612214

 Properties without orbital relaxation:

 !MRCI STATE 10.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2789.00448034 (Davidson, fixed reference)
 Cluster corrected energies         -2789.00447021 (Davidson, relaxed reference)
 Cluster corrected energies         -2789.00448034 (Davidson, rotated reference)

 Cluster corrected energies         -2789.00303089 (Pople, fixed reference)
 Cluster corrected energies         -2789.00302033 (Pople, relaxed reference)
 Cluster corrected energies         -2789.00303089 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24      136.04       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       6     3696.43       700     1000      520     2100     2140     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *     11154.43  11128.87     14.33      1.38      9.65
 REAL TIME  *     11478.05 SEC
 DISK USED  *         3.74 GB (local),       53.69 GB (total)
 SF USED    *        35.23 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =     -2789.45693939  AU                              
 SETTING HLSDIAG(2)     =     -2789.02356439  AU                              
 SETTING HLSDIAG(3)     =     -2789.02356421  AU                              
 SETTING HLSDIAG(4)     =     -2789.02356408  AU                              
 SETTING HLSDIAG(5)     =     -2789.02356484  AU                              
 SETTING HLSDIAG(6)     =     -2789.02356463  AU                              
 SETTING HLSDIAG(7)     =     -2789.02047296  AU                              
 SETTING HLSDIAG(8)     =     -2789.02047285  AU                              
 SETTING HLSDIAG(9)     =     -2789.02047294  AU                              
 SETTING HLSDIAG(10)    =     -2789.00448034  AU                              


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 9  Roots:    1   2   3   4   5   6   7   8   9
 Number of reference states: 9  Roots:    1   2   3   4   5   6   7   8   9

 Reference symmetry:                   1   Triplet 
 Number of electrons:                 36
 Maximum number of shells:             5
 Maximum number of spin couplings:    90

 Reference space:      196 conf      294 CSFs
 N elec internal:     9772 conf    32340 CSFs
 N-1 el internal:    14901 conf    99969 CSFs
 N-2 el internal:    12534 conf   138597 CSFs

 Number of electrons in valence space:                     26
 Maximum number of open shell orbitals in reference space:  6
 Maximum number of open shell orbitals in internal spaces: 10


 Number of core orbitals:           5 (   2   3 )
 Number of closed-shell orbitals:   9 (   6   3 )
 Number of active  orbitals:        7 (   1   6 )
 Number of external orbitals:     258 ( 127 131 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Coulomb and exchange operators available. No transformation done.


 Number of p-space configurations:   9

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1     -2787.89164640
     2     -2787.87926968
     3     -2787.87926968
     4     -2787.87926968
     5     -2787.87926968
     6     -2787.87926968
     7     -2787.87139790
     8     -2787.87139790
     9     -2787.87139790

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1191D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1355D-06

 Number of blocks in overlap matrix:   973   Smallest eigenvalue:  0.12D-06
 Number of N-2 electron functions:    2227
 Number of N-1 electron functions:   99969

 Number of internal configurations:                16224
 Number of singly external configurations:      12897063
 Number of doubly external configurations:      37069792
 Total number of contracted configurations:     49983079
 Total number of uncontracted configurations: 2316083931

 Diagonal Coupling coefficients finished.               Storage:  18307147 words, CPU-Time:     46.27 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   3868609 words, CPU-time:      3.25 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000 -2787.89164640     0.00000000    -1.21396190  0.29D-01  0.69D-01    57.15
    1     2     2     1.00000000     0.00000000 -2787.87926968    -0.00000000    -1.21007440  0.32D-01  0.67D-01    57.15
    1     3     3     1.00000000     0.00000000 -2787.87926968     0.00000000    -1.21144666  0.32D-01  0.67D-01    57.15
    1     4     4     1.00000000     0.00000000 -2787.87926968     0.00000000    -1.21214563  0.32D-01  0.67D-01    57.15
    1     5     5     1.00000000     0.00000000 -2787.87926968    -0.00000000    -1.21143664  0.32D-01  0.67D-01    57.15
    1     6     6     1.00000000     0.00000000 -2787.87926968     0.00000000    -1.21370580  0.32D-01  0.69D-01    57.15
    1     7     7     1.00000000     0.00000000 -2787.87139790     0.00000000    -1.21293881  0.35D-01  0.67D-01    57.15
    1     8     8     1.00000000     0.00000000 -2787.87139790     0.00000000    -1.21300846  0.35D-01  0.67D-01    57.15
    1     9     9     1.00000000     0.00000000 -2787.87139790     0.00000000    -1.21298267  0.35D-01  0.67D-01    57.15
    2     1     1     1.07448640    -1.05433407 -2788.94598047    -1.05433407    -0.01972369  0.23D-02  0.11D-02  1555.78
    2     2     2     1.07536316    -1.05665175 -2788.93592143    -1.05665175    -0.01901972  0.27D-02  0.85D-03  1555.78
    2     3     3     1.07517705    -1.05647789 -2788.93574758    -1.05647789    -0.01912649  0.27D-02  0.87D-03  1555.78
    2     4     4     1.07516769    -1.05645890 -2788.93572859    -1.05645890    -0.01913746  0.27D-02  0.87D-03  1555.78
    2     5     5     1.07499596    -1.05568251 -2788.93495220    -1.05568251    -0.01966612  0.28D-02  0.94D-03  1555.78
    2     6     6     1.07598458    -1.05486924 -2788.93413892    -1.05486924    -0.02040243  0.28D-02  0.11D-02  1555.78
    2     7     7     1.07766343    -1.05611252 -2788.92751042    -1.05611252    -0.02016032  0.36D-02  0.87D-03  1555.78
    2     8     8     1.07766393    -1.05607488 -2788.92747278    -1.05607488    -0.02018748  0.36D-02  0.88D-03  1555.78
    2     9     9     1.07764504    -1.05604846 -2788.92744636    -1.05604846    -0.02020211  0.36D-02  0.88D-03  1555.78
    3     1     1     1.06466381    -1.07322765 -2788.96487404    -0.01889357    -0.00050823  0.27D-04  0.60D-04  3055.18
    3     2     2     1.06570606    -1.07502684 -2788.95429652    -0.01837509    -0.00052048  0.59D-04  0.51D-04  3055.18
    3     3     3     1.06559659    -1.07499443 -2788.95426412    -0.01851654    -0.00054092  0.58D-04  0.54D-04  3055.18
    3     4     4     1.06558662    -1.07499007 -2788.95425975    -0.01853117    -0.00054287  0.58D-04  0.54D-04  3055.18
    3     5     5     1.06527113    -1.07485867 -2788.95412836    -0.01917616    -0.00062078  0.57D-04  0.66D-04  3055.18
    3     6     6     1.06520989    -1.07481238 -2788.95408206    -0.01994314    -0.00065174  0.56D-04  0.73D-04  3055.18
    3     7     7     1.06618774    -1.07592643 -2788.94732433    -0.01981392    -0.00061399  0.78D-04  0.58D-04  3055.18
    3     8     8     1.06617281    -1.07592183 -2788.94731973    -0.01984695    -0.00061700  0.78D-04  0.59D-04  3055.18
    3     9     9     1.06615634    -1.07591636 -2788.94731426    -0.01986790    -0.00061971  0.78D-04  0.59D-04  3055.18
    4     1     1     1.06498130    -1.07382301 -2788.96546941    -0.00059537    -0.00004925  0.17D-05  0.59D-05  4553.77
    4     2     2     1.06581485    -1.07562588 -2788.95489557    -0.00059904    -0.00004623  0.17D-05  0.57D-05  4553.77
    4     3     3     1.06578244    -1.07562250 -2788.95489218    -0.00062806    -0.00004910  0.18D-05  0.59D-05  4553.77
    4     4     4     1.06577861    -1.07562156 -2788.95489124    -0.00063149    -0.00004969  0.18D-05  0.60D-05  4553.77
    4     5     5     1.06566921    -1.07560427 -2788.95487395    -0.00074560    -0.00006320  0.27D-05  0.72D-05  4553.77
    4     6     6     1.06560765    -1.07559824 -2788.95486792    -0.00078586    -0.00006803  0.29D-05  0.77D-05  4553.77
    4     7     7     1.06625932    -1.07663486 -2788.94803276    -0.00070843    -0.00005418  0.21D-05  0.66D-05  4553.77
    4     8     8     1.06625392    -1.07663437 -2788.94803226    -0.00071254    -0.00005456  0.21D-05  0.67D-05  4553.77
    4     9     9     1.06624774    -1.07663326 -2788.94803116    -0.00071690    -0.00005529  0.22D-05  0.68D-05  4553.77
    5     1     1     1.06549273    -1.07388463 -2788.96553103    -0.00006162    -0.00000400  0.19D-06  0.39D-06  6050.41
    5     2     2     1.06625107    -1.07568484 -2788.95495452    -0.00005896    -0.00000468  0.26D-06  0.48D-06  6050.41
    5     3     3     1.06624956    -1.07568476 -2788.95495444    -0.00006226    -0.00000479  0.27D-06  0.49D-06  6050.41
    5     4     4     1.06625009    -1.07568465 -2788.95495433    -0.00006309    -0.00000487  0.27D-06  0.50D-06  6050.41
    5     5     5     1.06624642    -1.07568394 -2788.95495362    -0.00007967    -0.00000572  0.33D-06  0.54D-06  6050.41
    5     6     6     1.06624666    -1.07568370 -2788.95495339    -0.00008546    -0.00000592  0.34D-06  0.56D-06  6050.41
    5     7     7     1.06675512    -1.07670352 -2788.94810142    -0.00006866    -0.00000530  0.29D-06  0.54D-06  6050.41
    5     8     8     1.06675472    -1.07670347 -2788.94810137    -0.00006910    -0.00000533  0.29D-06  0.54D-06  6050.41
    5     9     9     1.06675532    -1.07670338 -2788.94810128    -0.00007012    -0.00000541  0.30D-06  0.55D-06  6050.41
    6     1     1     1.06553600    -1.07388936 -2788.96553576    -0.00000473    -0.00000035  0.12D-07  0.45D-07  7549.67
    6     2     2     1.06630312    -1.07569088 -2788.95496056    -0.00000604    -0.00000057  0.20D-07  0.70D-07  7549.67
    6     3     3     1.06630357    -1.07569076 -2788.95496044    -0.00000600    -0.00000057  0.20D-07  0.70D-07  7549.67
    6     4     4     1.06631039    -1.07569074 -2788.95496043    -0.00000610    -0.00000053  0.19D-07  0.66D-07  7549.67
    6     5     5     1.06631164    -1.07569072 -2788.95496040    -0.00000678    -0.00000053  0.19D-07  0.64D-07  7549.67
    6     6     6     1.06631023    -1.07569072 -2788.95496040    -0.00000701    -0.00000054  0.19D-07  0.66D-07  7549.67
    6     7     7     1.06682356    -1.07671011 -2788.94810801    -0.00000659    -0.00000058  0.22D-07  0.72D-07  7549.67
    6     8     8     1.06682347    -1.07671010 -2788.94810800    -0.00000663    -0.00000059  0.22D-07  0.73D-07  7549.67
    6     9     9     1.06682332    -1.07671010 -2788.94810800    -0.00000672    -0.00000060  0.23D-07  0.74D-07  7549.67
    7     1     1     1.06553412    -1.07388981 -2788.96553620    -0.00000044    -0.00000005  0.20D-08  0.54D-08  9045.86
    7     2     2     1.06630362    -1.07569162 -2788.95496130    -0.00000074    -0.00000009  0.38D-08  0.10D-07  9045.86
    7     3     3     1.06630373    -1.07569150 -2788.95496118    -0.00000074    -0.00000009  0.39D-08  0.10D-07  9045.86
    7     4     4     1.06630572    -1.07569145 -2788.95496113    -0.00000070    -0.00000009  0.38D-08  0.96D-08  9045.86
    7     5     5     1.06630558    -1.07569142 -2788.95496111    -0.00000070    -0.00000009  0.38D-08  0.96D-08  9045.86
    7     6     6     1.06630598    -1.07569141 -2788.95496109    -0.00000069    -0.00000009  0.37D-08  0.92D-08  9045.86
    7     7     7     1.06681920    -1.07671089 -2788.94810879    -0.00000078    -0.00000010  0.41D-08  0.11D-07  9045.86
    7     8     8     1.06681900    -1.07671089 -2788.94810879    -0.00000079    -0.00000010  0.41D-08  0.11D-07  9045.86
    7     9     9     1.06681924    -1.07671089 -2788.94810879    -0.00000079    -0.00000010  0.39D-08  0.11D-07  9045.86
    8     1     1     1.06553411    -1.07388981 -2788.96553620    -0.00000000    -0.00000005  0.20D-08  0.54D-08 10384.40
    8     2     2     1.06630590    -1.07569174 -2788.95496142    -0.00000012    -0.00000002  0.96D-09  0.14D-08 10384.40
    8     3     3     1.06630578    -1.07569162 -2788.95496130    -0.00000012    -0.00000002  0.99D-09  0.14D-08 10384.40
    8     4     4     1.06630570    -1.07569156 -2788.95496124    -0.00000011    -0.00000002  0.94D-09  0.13D-08 10384.40
    8     5     5     1.06630565    -1.07569154 -2788.95496122    -0.00000011    -0.00000002  0.93D-09  0.13D-08 10384.40
    8     6     6     1.06630562    -1.07569152 -2788.95496120    -0.00000011    -0.00000002  0.89D-09  0.13D-08 10384.40
    8     7     7     1.06682134    -1.07671104 -2788.94810893    -0.00000014    -0.00000001  0.39D-09  0.12D-08 10384.40
    8     8     8     1.06682016    -1.07671103 -2788.94810892    -0.00000013    -0.00000002  0.12D-08  0.16D-08 10384.40
    8     9     9     1.06682017    -1.07671102 -2788.94810891    -0.00000013    -0.00000002  0.11D-08  0.16D-08 10384.40


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.1%
 S   0.2%   3.7%
 P   0.2%  36.7%  41.7%

 Initialization:   0.5%
 Other:           17.0%

 Total CPU:    10384.4 seconds
 =====================================



 Wavefunction saved on  5202.2

 Reference coefficients greater than 0.0500000
 =============================================
 2222222222/2200/           0.5562262  -0.0558275   0.7835631  -0.0001714  -0.0001814  -0.0001125   0.0000000   0.0000000
                           -0.0000000
 222222222222//00           0.5562281   0.7064989  -0.3434308  -0.0000442   0.0005959  -0.0000329  -0.0000000  -0.0000000
                            0.0000000
 2222222222/220/0          -0.0000000   0.0001190   0.0001572   0.6803060   0.0000007  -0.0004644  -0.0013929   0.6781583
                           -0.0458626
 222222222222/0/0          -0.0000000   0.0000821   0.0001036   0.0004644  -0.0000018   0.6803059   0.0003159  -0.0458620
                           -0.6781599
 2222222222/22/00          -0.0000000  -0.0005150   0.0001208  -0.0000007   0.6803050   0.0000018   0.6797080   0.0014111
                            0.0002212
 222222222222/00/          -0.0000000  -0.0005150   0.0001208  -0.0000007   0.6803037   0.0000018  -0.6797093  -0.0014111
                           -0.0002212
 22222222222/2/00           0.0000000   0.0000821   0.0001036   0.0004643  -0.0000018   0.6803030  -0.0003159   0.0458623
                            0.6781627
 22222222222/200/           0.0000000   0.0001190   0.0001572   0.6803028   0.0000007  -0.0004644   0.0013929  -0.6781615
                            0.0458628
 22222222222/20/0           0.5562300  -0.6506694  -0.4401282   0.0002156  -0.0004144   0.0001454  -0.0000000  -0.0000000
                           -0.0000000
 22222222222/\//0           0.0000001  -0.0598196  -0.0042621   0.0000115  -0.0000445   0.0000079  -0.0000000  -0.0000000
                           -0.0000000
 2222222222/\20//          -0.0000004   0.0262187   0.0539362  -0.0000171   0.0000103  -0.0000114   0.0000000   0.0000000
                            0.0000000

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.968759    0.000001   -0.000000    0.000000   -0.000000    0.000002    0.000000    0.000000   -0.000000
 2           0.000001    0.585912   -0.000733    0.000117    0.000169   -0.771050    0.000000   -0.000000    0.000000
 3           0.000002   -0.771051    0.000172    0.000147    0.000224   -0.585912   -0.000000   -0.000000   -0.000000
 4          -0.000000    0.000076   -0.000001    0.000661    0.968407    0.000270    0.000000   -0.000000    0.000002
 5           0.000000    0.000580    0.968407   -0.000003    0.000001   -0.000480    0.000001   -0.000000   -0.000000
 6          -0.000000    0.000047    0.000003    0.968407   -0.000661    0.000182    0.000000   -0.000002   -0.000000
 7          -0.000000   -0.000000   -0.000001   -0.000000    0.000000   -0.000000    0.968170   -0.000450   -0.001984
 8           0.000000   -0.000000   -0.000000    0.000000   -0.000002   -0.000000    0.002010    0.065326    0.965964
 9          -0.000000    0.000000    0.000000    0.000002    0.000000   -0.000000    0.000315    0.965966   -0.065326

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.968759    0.000000   -0.000000    0.000000    0.000000   -0.000000    0.000000   -0.000000   -0.000000
 2           0.000000    0.968407   -0.000000    0.000000    0.000000   -0.000000   -0.000000    0.000000    0.000000
 3          -0.000000   -0.000000    0.968407   -0.000000    0.000000    0.000000    0.000000    0.000000   -0.000000
 4           0.000000    0.000000   -0.000000    0.968407    0.000000   -0.000000    0.000000    0.000000   -0.000000
 5           0.000000    0.000000    0.000000    0.000000    0.968407    0.000000    0.000000   -0.000000    0.000000
 6          -0.000000   -0.000000    0.000000   -0.000000    0.000000    0.968407    0.000000   -0.000000   -0.000000
 7           0.000000   -0.000000    0.000000    0.000000    0.000000    0.000000    0.968172   -0.000000    0.000000
 8          -0.000000    0.000000    0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.968173   -0.000000
 9          -0.000000    0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.000000   -0.000000    0.968173


 RESULTS FOR STATE 1.1
 =====================

 Coefficient of reference function:   C(0) = 0.96875866 (fixed)   0.96875884 (relaxed)   0.96875866 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000332   -0.00001425   -0.96656448
 Singles      0.01251349   -0.04398252   -0.05388598
 Pairs        0.05302084    0.00000000   -0.05343935
 Total        1.06553765   -0.04399677   -1.07388981
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2787.89164640
 Nuclear energy                         0.00000000
 Kinetic energy                      2994.87155636
 One electron energy                -3865.46045172
 Two electron energy                 1076.49491552
 Virial quotient                       -0.93124713
 Correlation energy                    -1.07388981
 !MRCI STATE 1.1 Energy             -2788.965536204071

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2789.03591642 (Davidson, fixed reference)
 Cluster corrected energies         -2789.03591600 (Davidson, relaxed reference)
 Cluster corrected energies         -2789.03591642 (Davidson, rotated reference)

 Cluster corrected energies         -2789.03375340 (Pople, fixed reference)
 Cluster corrected energies         -2789.03375297 (Pople, relaxed reference)
 Cluster corrected energies         -2789.03375340 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Maximum overlap with reference state  6

 Coefficient of reference function:   C(0) = 0.77105030 (fixed)   0.96840709 (relaxed)   0.96840693 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000554   -0.00002825   -0.96699969
 Singles      0.01292134   -0.04457451   -0.05483743
 Pairs        0.05338493   -0.00000000   -0.05385463
 Total        1.06631181   -0.04460276   -1.07569174
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2787.87926968
 Nuclear energy                         0.00000000
 Kinetic energy                      2994.88312719
 One electron energy                -3865.48336006
 Two electron energy                 1076.52839864
 Virial quotient                       -0.93124000
 Correlation energy                    -1.07569174
 !MRCI STATE 2.1 Energy             -2788.954961420440

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2789.02629249 (Davidson, fixed reference)
 Cluster corrected energies         -2789.02629212 (Davidson, relaxed reference)
 Cluster corrected energies         -2789.02629249 (Davidson, rotated reference)

 Cluster corrected energies         -2789.02414681 (Pople, fixed reference)
 Cluster corrected energies         -2789.02414643 (Pople, relaxed reference)
 Cluster corrected energies         -2789.02414681 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.77105053 (fixed)   0.96840715 (relaxed)   0.96840699 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000554   -0.00002825   -0.96699987
 Singles      0.01292123   -0.04457432   -0.05483717
 Pairs        0.05338491    0.00000000   -0.05385457
 Total        1.06631168   -0.04460257   -1.07569162
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2787.87926968
 Nuclear energy                         0.00000000
 Kinetic energy                      2994.88307754
 One electron energy                -3865.48332581
 Two electron energy                 1076.52836451
 Virial quotient                       -0.93124001
 Correlation energy                    -1.07569162
 !MRCI STATE 3.1 Energy             -2788.954961299008

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2789.02629222 (Davidson, fixed reference)
 Cluster corrected energies         -2789.02629185 (Davidson, relaxed reference)
 Cluster corrected energies         -2789.02629222 (Davidson, rotated reference)

 Cluster corrected energies         -2789.02414654 (Pople, fixed reference)
 Cluster corrected energies         -2789.02414616 (Pople, relaxed reference)
 Cluster corrected energies         -2789.02414654 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.96840676 (fixed)   0.96840718 (relaxed)   0.96840703 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000554   -0.00002824   -0.96699772
 Singles      0.01292112   -0.04457414   -0.05483706
 Pairs        0.05338495   -0.00000249   -0.05385678
 Total        1.06631161   -0.04460486   -1.07569156
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2787.87926968
 Nuclear energy                         0.00000000
 Kinetic energy                      2994.88316019
 One electron energy                -3865.48338136
 Two electron energy                 1076.52842012
 Virial quotient                       -0.93123999
 Correlation energy                    -1.07569156
 !MRCI STATE 4.1 Energy             -2788.954961240438

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2789.02629208 (Davidson, fixed reference)
 Cluster corrected energies         -2789.02629171 (Davidson, relaxed reference)
 Cluster corrected energies         -2789.02629208 (Davidson, rotated reference)

 Cluster corrected energies         -2789.02414640 (Pople, fixed reference)
 Cluster corrected energies         -2789.02414602 (Pople, relaxed reference)
 Cluster corrected energies         -2789.02414640 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.96840676 (fixed)   0.96840721 (relaxed)   0.96840705 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000554   -0.00002824   -0.96700009
 Singles      0.01292113   -0.04457413   -0.05483704
 Pairs        0.05338489    0.00000000   -0.05385441
 Total        1.06631155   -0.04460237   -1.07569154
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2787.87926968
 Nuclear energy                         0.00000000
 Kinetic energy                      2994.88316610
 One electron energy                -3865.48338737
 Two electron energy                 1076.52842615
 Virial quotient                       -0.93123999
 Correlation energy                    -1.07569154
 !MRCI STATE 5.1 Energy             -2788.954961218777

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2789.02629199 (Davidson, fixed reference)
 Cluster corrected energies         -2789.02629162 (Davidson, relaxed reference)
 Cluster corrected energies         -2789.02629199 (Davidson, rotated reference)

 Cluster corrected energies         -2789.02414631 (Pople, fixed reference)
 Cluster corrected energies         -2789.02414593 (Pople, relaxed reference)
 Cluster corrected energies         -2789.02414631 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.96840682 (fixed)   0.96840722 (relaxed)   0.96840706 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000554   -0.00002824   -0.96700014
 Singles      0.01292110   -0.04457409   -0.05483703
 Pairs        0.05338489    0.00000001   -0.05385435
 Total        1.06631152   -0.04460232   -1.07569152
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2787.87926968
 Nuclear energy                         0.00000000
 Kinetic energy                      2994.88324160
 One electron energy                -3865.48343894
 Two electron energy                 1076.52847774
 Virial quotient                       -0.93123996
 Correlation energy                    -1.07569152
 !MRCI STATE 6.1 Energy             -2788.954961197467

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2789.02629194 (Davidson, fixed reference)
 Cluster corrected energies         -2789.02629157 (Davidson, relaxed reference)
 Cluster corrected energies         -2789.02629194 (Davidson, rotated reference)

 Cluster corrected energies         -2789.02414626 (Pople, fixed reference)
 Cluster corrected energies         -2789.02414588 (Pople, relaxed reference)
 Cluster corrected energies         -2789.02414626 (Pople, rotated reference)



 RESULTS FOR STATE 7.1
 =====================

 Coefficient of reference function:   C(0) = 0.96816984 (fixed)   0.96817309 (relaxed)   0.96817198 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000757   -0.00002989   -0.96921864
 Singles      0.01324105   -0.04484275   -0.05539808
 Pairs        0.05358080    0.00211453   -0.05209431
 Total        1.06682942   -0.04275812   -1.07671104
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2787.87139790
 Nuclear energy                         0.00000000
 Kinetic energy                      2994.89254104
 One electron energy                -3865.49028561
 Two electron energy                 1076.54217668
 Virial quotient                       -0.93123478
 Correlation energy                    -1.07671104
 !MRCI STATE 7.1 Energy             -2788.948108933975

 Properties without orbital relaxation:

 !MRCI STATE 7.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2789.02006491 (Davidson, fixed reference)
 Cluster corrected energies         -2789.02006227 (Davidson, relaxed reference)
 Cluster corrected energies         -2789.02006491 (Davidson, rotated reference)

 Cluster corrected energies         -2789.01793188 (Pople, fixed reference)
 Cluster corrected energies         -2789.01792917 (Pople, relaxed reference)
 Cluster corrected energies         -2789.01793188 (Pople, rotated reference)



 RESULTS FOR STATE 8.1
 =====================

 Maximum overlap with reference state  9

 Coefficient of reference function:   C(0) = 0.96596405 (fixed)   0.96817363 (relaxed)   0.96817251 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000758   -0.00002989   -0.00224192
 Singles      0.01324077   -0.04484286   -0.05539735
 Pairs        0.05357990   -1.02948458   -1.01907175
 Total        1.06682824   -1.07435734   -1.07671103
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2787.87139790
 Nuclear energy                         0.00000000
 Kinetic energy                      2994.89059611
 One electron energy                -3865.48906747
 Two electron energy                 1076.54095855
 Virial quotient                       -0.93123539
 Correlation energy                    -1.07671103
 !MRCI STATE 8.1 Energy             -2788.948108923078

 Properties without orbital relaxation:

 !MRCI STATE 8.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2789.02006363 (Davidson, fixed reference)
 Cluster corrected energies         -2789.02006098 (Davidson, relaxed reference)
 Cluster corrected energies         -2789.02006363 (Davidson, rotated reference)

 Cluster corrected energies         -2789.01793057 (Pople, fixed reference)
 Cluster corrected energies         -2789.01792785 (Pople, relaxed reference)
 Cluster corrected energies         -2789.01793057 (Pople, rotated reference)



 RESULTS FOR STATE 9.1
 =====================

 Maximum overlap with reference state  8

 Coefficient of reference function:   C(0) = 0.96596603 (fixed)   0.96817362 (relaxed)   0.96817251 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000758   -0.00002989   -1.03249840
 Singles      0.01324076   -0.04484285   -0.05539735
 Pairs        0.05357992    0.06962214    0.01118474
 Total        1.06682825    0.02474940   -1.07671102
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2787.87139790
 Nuclear energy                         0.00000000
 Kinetic energy                      2994.89066107
 One electron energy                -3865.48911019
 Two electron energy                 1076.54100127
 Virial quotient                       -0.93123537
 Correlation energy                    -1.07671102
 !MRCI STATE 9.1 Energy             -2788.948108913563

 Properties without orbital relaxation:

 !MRCI STATE 9.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2789.02006363 (Davidson, fixed reference)
 Cluster corrected energies         -2789.02006099 (Davidson, relaxed reference)
 Cluster corrected energies         -2789.02006363 (Davidson, rotated reference)

 Cluster corrected energies         -2789.01793057 (Pople, fixed reference)
 Cluster corrected energies         -2789.01792786 (Pople, relaxed reference)
 Cluster corrected energies         -2789.01793057 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24      136.04       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7     7140.53       700     1000      520     2100     2140     5201     5202   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *     22090.14  10935.70  11128.87     14.33      1.38      9.65
 REAL TIME  *     22690.56 SEC
 DISK USED  *         7.11 GB (local),      100.77 GB (total)
 SF USED    *        35.23 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(11)    =     -2789.03591600  AU                              
 SETTING HLSDIAG(12)    =     -2789.02629212  AU                              
 SETTING HLSDIAG(13)    =     -2789.02629185  AU                              
 SETTING HLSDIAG(14)    =     -2789.02629171  AU                              
 SETTING HLSDIAG(15)    =     -2789.02629162  AU                              
 SETTING HLSDIAG(16)    =     -2789.02629157  AU                              
 SETTING HLSDIAG(17)    =     -2789.02006227  AU                              
 SETTING HLSDIAG(18)    =     -2789.02006098  AU                              
 SETTING HLSDIAG(19)    =     -2789.02006099  AU                              


         HLSDIAG
    -2789.456939
    -2789.023564
    -2789.023564
    -2789.023564
    -2789.023565
    -2789.023565
    -2789.020473
    -2789.020473
    -2789.020473
    -2789.004480
    -2789.035916
    -2789.026292
    -2789.026292
    -2789.026292
    -2789.026292
    -2789.026292
    -2789.020062
    -2789.020061
    -2789.020061
                                                  

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

 Time for Seward_LS:      54.71 sec

      107072658. SPIN-ORBIT INTEGRALS WRITTEN OUT IN   110234 RECORDS ON RECORD     11290 OF FILE 1


 CPU time:     54.72 sec, REAL time:     56.64 sec


 SORTLS1 read   451318387. and wrote   451318387. SO integrals in  1744 records. CPU time:      3.19 sec, REAL time:      5.46 sec
 SORTLS2 read   451318387. and wrote  2288546132. SO integrals in    42 records. CPU time:      1.42 sec, REAL time:      4.08 sec

 FILE SIZES: FILE 1:  7367.4 MBYTE, FILE 4:     0.0 MBYTE, TOTAL:  7367.4 MBYTE


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24     7026.11       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7     7140.53       700     1000      520     2100     2140     5201     5202   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL     LSINT        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *     22150.88     60.66  10935.70  11128.87     14.33      1.38      9.65
 REAL TIME  *     22758.22 SEC
 DISK USED  *         7.11 GB (local),      123.68 GB (total)
 SF USED    *        35.23 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Diagonal elements of H will be replaced by values from variable HLSDIAG


   ******************************
   *** Spin-orbit calculation ***
   ******************************


   Spin-orbit matrix elements
   ==========================

 eXact-2-Component (X2C) method activated

 Computing Douglas-Kroll / X2C integrals


 Preparing effective Fock matrices
 eXact-2-Component (X2C) method activated

 Computing Douglas-Kroll / X2C integrals

 Total X Y Z Fock matrices evaluated:     3    3    3
  
 Wavefunction restored from record  5201.2  Symmetry=1  S= 0.0  NSTATE=  10

 Original energies:  -2789.387128  -2788.951824  -2788.951824  -2788.951824  -2788.951824  -2788.951824  -2788.948292  -2788.948292
                     -2788.948292  -2788.928165
 Replaced energies:  -2789.456939  -2789.023564  -2789.023564  -2789.023564  -2789.023565  -2789.023565  -2789.020473  -2789.020473
                     -2789.020473  -2789.004480

 Wavefunction restored from record  5202.2  Symmetry=1  S= 1.0  NSTATE=   9

 Original energies:  -2788.965536  -2788.954961  -2788.954961  -2788.954961  -2788.954961  -2788.954961  -2788.948109  -2788.948109
                     -2788.948109
 Replaced energies:  -2789.035916  -2789.026292  -2789.026292  -2789.026292  -2789.026292  -2789.026292  -2789.020062  -2789.020061
                     -2789.020061



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0= -2789.45693939

 Wigner-Eckart theorem used for 10 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    2   2.1  0.0  0.0       0.00   95114.82       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    3   3.1  0.0  0.0       0.00       0.00   95114.86       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    4   4.1  0.0  0.0       0.00       0.00       0.00   95114.89       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    5   5.1  0.0  0.0       0.00       0.00       0.00       0.00   95114.72       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

    6   6.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00   95114.77       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00

    7   7.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00   95793.31       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00

    8   8.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00   95793.33       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00

    9   9.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   95793.31       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00

   10  10.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   99303.28
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   11   1.1  1.0  1.0       0.00       0.00       0.00      -0.00      -0.00       0.00       6.37    -980.79      -0.71       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00    -980.79      -6.37      -0.89       0.00

   12   2.1  1.0  1.0      -0.00       1.91      17.92    -602.00       1.35      -0.67      -3.96     620.58       0.90       0.00
                            0.00      -4.25    -771.50     -22.95       0.54       0.31    -571.55      -3.64      -0.62      -0.00

   13   3.1  1.0  1.0       0.00       2.73      36.81   -1238.44       2.64      -1.25       2.05    -301.66      -0.32      -0.00
                           -0.00       6.61    1140.57      33.71       0.43      -0.05    -386.60      -2.42      -0.49      -0.00

   14   4.1  1.0  1.0      -0.00      -6.45      -0.16       3.14    1031.28    -913.37       0.41      -0.04       0.00      -0.00
                           -0.00     688.79      -4.06       1.00       2.25      -2.32       0.72       0.85    -597.59       0.00

   15   5.1  1.0  1.0      -0.00    -688.79       3.95      -1.71      -2.25       2.32       0.53       0.96    -597.58       0.00
                            0.00       2.81       0.03      -2.15   -1306.65    -436.44      -0.36      -0.00      -0.00       0.00

   16   6.1  1.0  1.0       0.00       3.90     688.48      20.67      -0.31       0.64     597.57       3.85       0.54       0.00
                           -0.00       1.12      20.33    -688.50       1.33      -0.58      -3.75     597.58       0.84      -0.00

   17   7.1  1.0  1.0       1.58    -595.75       3.13      -1.29      -1.01       3.06       0.30       0.50    -686.47       1.86
                          769.63      -4.13      -0.10       0.68     217.93    -652.49      -0.00       0.32       1.41     907.85

   18   8.1  1.0  1.0    -767.89      -1.25      40.48       0.75    -455.05    -513.81      46.32       0.30      -1.38    -905.77
                            1.60     594.28      -4.59      41.46       2.32      -3.32       0.92     -45.82    -684.94       1.88

   19   9.1  1.0  1.0      51.93       3.18     594.12      17.64      31.12      34.77     684.90       4.45       0.39      61.26
                            0.25     -41.57     -17.38     594.05      -1.21       0.42       4.40    -684.93      45.82       0.30

   20   1.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00       0.00      -0.00       1.25       1.01   -1387.08       0.00

   21   2.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00   -1943.27      11.27      -3.43      -6.40       6.31      -0.09       0.69     -69.35       0.00

   22   3.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00    -138.45       1.02      -0.46      -0.51       0.18      -1.07      -0.86     973.38      -0.00

   23   4.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       5.88     973.68      28.87       0.30      -1.28    -845.09      -5.48      -0.98      -0.00

   24   5.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.80      28.86    -973.70       1.88      -0.81       5.48    -845.09      -0.84      -0.00

   25   6.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -4.90      -0.38       0.83    -389.43   -1908.93       0.58       0.00      -0.14      -0.00

   26   7.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.51      -1.93     -23.23     842.22      -1.19       0.62      -8.29     970.78       0.70      -0.60

   27   8.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           73.44      -4.50    -840.25     -23.30     -64.81      13.10     968.57       8.30       0.88      86.63

   28   9.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         1085.97       4.09      57.40      -0.02    -951.04     194.01     -65.51      -0.11      -0.06    1280.96

   29   1.1  1.0 -1.0       0.00       0.00       0.00      -0.00      -0.00       0.00       6.37    -980.79      -0.71       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00      -0.00     980.79       6.37       0.89      -0.00

   30   2.1  1.0 -1.0      -0.00       1.91      17.92    -602.00       1.35      -0.67      -3.96     620.58       0.90       0.00
                           -0.00       4.25     771.50      22.95      -0.54      -0.31     571.55       3.64       0.62       0.00

   31   3.1  1.0 -1.0       0.00       2.73      36.81   -1238.44       2.64      -1.25       2.05    -301.66      -0.32      -0.00
                            0.00      -6.61   -1140.57     -33.71      -0.43       0.05     386.60       2.42       0.49       0.00

   32   4.1  1.0 -1.0      -0.00      -6.45      -0.16       3.14    1031.28    -913.37       0.41      -0.04       0.00      -0.00
                            0.00    -688.79       4.06      -1.00      -2.25       2.32      -0.72      -0.85     597.59      -0.00

   33   5.1  1.0 -1.0      -0.00    -688.79       3.95      -1.71      -2.25       2.32       0.53       0.96    -597.58       0.00
                           -0.00      -2.81      -0.03       2.15    1306.65     436.44       0.36       0.00       0.00      -0.00

   34   6.1  1.0 -1.0       0.00       3.90     688.48      20.67      -0.31       0.64     597.57       3.85       0.54       0.00
                            0.00      -1.12     -20.33     688.50      -1.33       0.58       3.75    -597.58      -0.84       0.00

   35   7.1  1.0 -1.0       1.58    -595.75       3.13      -1.29      -1.01       3.06       0.30       0.50    -686.47       1.86
                         -769.63       4.13       0.10      -0.68    -217.93     652.49       0.00      -0.32      -1.41    -907.85

   36   8.1  1.0 -1.0    -767.89      -1.25      40.48       0.75    -455.05    -513.81      46.32       0.30      -1.38    -905.77
                           -1.60    -594.28       4.59     -41.46      -2.32       3.32      -0.92      45.82     684.94      -1.88

   37   9.1  1.0 -1.0      51.93       3.18     594.12      17.64      31.12      34.77     684.90       4.45       0.39      61.26
                           -0.25      41.57      17.38    -594.05       1.21      -0.42      -4.40     684.93     -45.82      -0.30


   Nr   State  S   Sz       11         12         13         14         15         16         17         18         19         20

    1   1.1  0.0  0.0       0.00      -0.00       0.00      -0.00      -0.00       0.00       1.58    -767.89      51.93       0.00
                            0.00      -0.00       0.00       0.00      -0.00       0.00    -769.63      -1.60      -0.25      -0.00

    2   2.1  0.0  0.0       0.00       1.91       2.73      -6.45    -688.79       3.90    -595.75      -1.25       3.18       0.00
                           -0.00       4.25      -6.61    -688.79      -2.81      -1.12       4.13    -594.28      41.57       0.00

    3   3.1  0.0  0.0       0.00      17.92      36.81      -0.16       3.95     688.48       3.13      40.48     594.12       0.00
                           -0.00     771.50   -1140.57       4.06      -0.03     -20.33       0.10       4.59      17.38       0.00

    4   4.1  0.0  0.0      -0.00    -602.00   -1238.44       3.14      -1.71      20.67      -1.29       0.75      17.64       0.00
                           -0.00      22.95     -33.71      -1.00       2.15     688.50      -0.68     -41.46    -594.05       0.00

    5   5.1  0.0  0.0      -0.00       1.35       2.64    1031.28      -2.25      -0.31      -1.01    -455.05      31.12       0.00
                           -0.00      -0.54      -0.43      -2.25    1306.65      -1.33    -217.93      -2.32       1.21      -0.00

    6   6.1  0.0  0.0       0.00      -0.67      -1.25    -913.37       2.32       0.64       3.06    -513.81      34.77       0.00
                           -0.00      -0.31       0.05       2.32     436.44       0.58     652.49       3.32      -0.42       0.00

    7   7.1  0.0  0.0       6.37      -3.96       2.05       0.41       0.53     597.57       0.30      46.32     684.90       0.00
                          980.79     571.55     386.60      -0.72       0.36       3.75       0.00      -0.92      -4.40      -1.25

    8   8.1  0.0  0.0    -980.79     620.58    -301.66      -0.04       0.96       3.85       0.50       0.30       4.45       0.00
                            6.37       3.64       2.42      -0.85       0.00    -597.58      -0.32      45.82     684.93      -1.01

    9   9.1  0.0  0.0      -0.71       0.90      -0.32       0.00    -597.58       0.54    -686.47      -1.38       0.39       0.00
                            0.89       0.62       0.49     597.59       0.00      -0.84      -1.41     684.94     -45.82    1387.08

   10  10.1  0.0  0.0       0.00       0.00      -0.00      -0.00       0.00       0.00       1.86    -905.77      61.26       0.00
                           -0.00       0.00       0.00      -0.00      -0.00       0.00    -907.85      -1.88      -0.30      -0.00

   11   1.1  1.0  1.0   92403.95       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00       0.00       0.00       0.01       0.74    -107.06   -1583.16      -0.00

   12   2.1  1.0  1.0       0.00   94516.15       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.24      -0.51       0.15   -1692.96      -0.13      -6.11     -79.47      -0.00

   13   3.1  1.0  1.0       0.00       0.00   94516.21       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                            0.00       0.24       0.00      -0.23       0.20    -120.63      -0.74      75.64    1116.00       0.00

   14   4.1  1.0  1.0       0.00       0.00       0.00   94516.24       0.00       0.00       0.00       0.00       0.00       0.01
                           -0.00       0.51       0.23       0.00     848.63       0.33    -971.16      -2.03      -0.56       0.00

   15   5.1  1.0  1.0       0.00       0.00       0.00       0.00   94516.26       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.15      -0.20    -848.63      -0.00      -0.68      -1.99     968.93     -65.79      -0.00

   16   6.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00   94516.27       0.00       0.00       0.00      -0.00
                           -0.01    1692.96     120.63      -0.33       0.68       0.00       0.66      -0.01      -0.16      -0.00

   17   7.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00   95883.45       0.00       0.00      -2.30
                           -0.74       0.13       0.74     971.16       1.99      -0.66       0.00    -842.39      56.97   -1122.01

   18   8.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00   95883.73       0.00    1119.45
                          107.06       6.11     -75.64       2.03    -968.93       0.01     842.39       0.00       0.39      -2.33

   19   9.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   95883.73     -75.71
                         1583.16      79.47   -1116.00       0.56      65.79       0.16     -56.97      -0.39      -0.00      -0.37

   20   1.1  1.0  0.0       0.00       0.00      -0.00       0.01       0.00      -0.00      -2.30    1119.45     -75.71   92403.95
                            0.00       0.00      -0.00      -0.00       0.00       0.00    1122.01       2.33       0.37       0.00

   21   2.1  1.0  0.0      -0.00      -0.00       0.07    -524.69       0.07       0.81       1.54    -711.49      48.64       0.00
                           -0.00       0.00      -0.63       0.07     672.42      -0.10     656.80       1.45       0.33      -0.00

   22   3.1  1.0  0.0       0.00      -0.07      -0.00   -1079.37       0.09       0.63      -0.61     345.87     -23.51       0.00
                            0.00       0.63       0.00       0.09    -994.08      -0.14     444.28       1.04       0.30      -0.00

   23   4.1  1.0  0.0      -0.01     524.69    1079.37      -0.00       0.62      -0.23       0.47       0.05      -0.00       0.00
                            0.00      -0.07      -0.09       0.00       0.11    -600.08      -0.54      46.80     685.12      -0.00

   24   5.1  1.0  0.0      -0.00      -0.07      -0.09      -0.62      -0.00    -600.07       0.32     -46.94    -685.11       0.00
                           -0.00    -672.42     994.08      -0.11      -0.00      -0.07       0.42      -0.00       0.00      -0.00

   25   6.1  1.0  0.0       0.00      -0.81      -0.63       0.23     600.07      -0.00     686.71       1.46       0.22       0.00
                           -0.00       0.10       0.14     600.08       0.07       0.00      -1.55     685.12     -46.80      -0.00

   26   7.1  1.0  0.0       2.30      -1.54       0.61      -0.47      -0.32    -686.71       0.00     -40.28    -595.66       0.00
                        -1122.01    -656.80    -444.28       0.54      -0.42       1.55      -0.00       0.19      -1.24      -0.00

   27   8.1  1.0  0.0   -1119.45     711.49    -345.87      -0.05      46.94      -1.46      40.28      -0.00      -1.22       0.00
                           -2.33      -1.45      -1.04     -46.80       0.00    -685.12      -0.19       0.00     597.01      -0.00

   28   9.1  1.0  0.0      75.71     -48.64      23.51       0.00     685.11      -0.22     595.66       1.22      -0.00       0.00
                           -0.37      -0.33      -0.30    -685.12      -0.00      46.80       1.24    -597.01      -0.00      -0.00

   29   1.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   30   2.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   31   3.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   32   4.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.01
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   33   5.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   34   6.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   35   7.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       2.30
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00   -1122.01

   36   8.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   -1119.45
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -2.33

   37   9.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      75.71
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.37


   Nr   State  S   Sz       21         22         23         24         25         26         27         28         29         30

    1   1.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                           -0.00       0.00       0.00       0.00       0.00       0.51     -73.44   -1085.97      -0.00       0.00

    2   2.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       1.91
                         1943.27     138.45      -5.88      -0.80       4.90       1.93       4.50      -4.09       0.00      -4.25

    3   3.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      17.92
                          -11.27      -1.02    -973.68     -28.86       0.38      23.23     840.25     -57.40       0.00    -771.50

    4   4.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00    -602.00
                            3.43       0.46     -28.87     973.70      -0.83    -842.22      23.30       0.02       0.00     -22.95

    5   5.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       1.35
                            6.40       0.51      -0.30      -1.88     389.43       1.19      64.81     951.04       0.00       0.54

    6   6.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.67
                           -6.31      -0.18       1.28       0.81    1908.93      -0.62     -13.10    -194.01       0.00       0.31

    7   7.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       6.37      -3.96
                            0.09       1.07     845.09      -5.48      -0.58       8.29    -968.57      65.51    -980.79    -571.55

    8   8.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    -980.79     620.58
                           -0.69       0.86       5.48     845.09      -0.00    -970.78      -8.30       0.11      -6.37      -3.64

    9   9.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.71       0.90
                           69.35    -973.38       0.98       0.84       0.14      -0.70      -0.88       0.06      -0.89      -0.62

   10  10.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.60     -86.63   -1280.96       0.00      -0.00

   11   1.1  1.0  1.0      -0.00       0.00      -0.01      -0.00       0.00       2.30   -1119.45      75.71       0.00       0.00
                            0.00      -0.00      -0.00       0.00       0.00    1122.01       2.33       0.37       0.00       0.00

   12   2.1  1.0  1.0      -0.00      -0.07     524.69      -0.07      -0.81      -1.54     711.49     -48.64       0.00       0.00
                           -0.00      -0.63       0.07     672.42      -0.10     656.80       1.45       0.33       0.00       0.00

   13   3.1  1.0  1.0       0.07      -0.00    1079.37      -0.09      -0.63       0.61    -345.87      23.51       0.00       0.00
                            0.63      -0.00       0.09    -994.08      -0.14     444.28       1.04       0.30       0.00       0.00

   14   4.1  1.0  1.0    -524.69   -1079.37      -0.00      -0.62       0.23      -0.47      -0.05       0.00       0.00       0.00
                           -0.07      -0.09      -0.00       0.11    -600.08      -0.54      46.80     685.12       0.00       0.00

   15   5.1  1.0  1.0       0.07       0.09       0.62      -0.00     600.07      -0.32      46.94     685.11       0.00       0.00
                         -672.42     994.08      -0.11       0.00      -0.07       0.42      -0.00       0.00       0.00       0.00

   16   6.1  1.0  1.0       0.81       0.63      -0.23    -600.07      -0.00    -686.71      -1.46      -0.22       0.00       0.00
                            0.10       0.14     600.08       0.07      -0.00      -1.55     685.12     -46.80       0.00       0.00

   17   7.1  1.0  1.0       1.54      -0.61       0.47       0.32     686.71       0.00      40.28     595.66       0.00       0.00
                         -656.80    -444.28       0.54      -0.42       1.55       0.00       0.19      -1.24       0.00       0.00

   18   8.1  1.0  1.0    -711.49     345.87       0.05     -46.94       1.46     -40.28      -0.00       1.22       0.00       0.00
                           -1.45      -1.04     -46.80       0.00    -685.12      -0.19      -0.00     597.01       0.00       0.00

   19   9.1  1.0  1.0      48.64     -23.51      -0.00    -685.11       0.22    -595.66      -1.22      -0.00       0.00       0.00
                           -0.33      -0.30    -685.12      -0.00      46.80       1.24    -597.01       0.00       0.00       0.00

   20   1.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00

   21   2.1  1.0  0.0   94516.15       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00

   22   3.1  1.0  0.0       0.00   94516.21       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.07
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.63

   23   4.1  1.0  0.0       0.00       0.00   94516.24       0.00       0.00       0.00       0.00       0.00       0.01    -524.69
                           -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.07

   24   5.1  1.0  0.0       0.00       0.00       0.00   94516.26       0.00       0.00       0.00       0.00       0.00       0.07
                           -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00      -0.00    -672.42

   25   6.1  1.0  0.0       0.00       0.00       0.00       0.00   94516.27       0.00       0.00       0.00      -0.00       0.81
                           -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00      -0.00       0.10

   26   7.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00   95883.45       0.00       0.00      -2.30       1.54
                           -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00   -1122.01    -656.80

   27   8.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00   95883.73       0.00    1119.45    -711.49
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00      -2.33      -1.45

   28   9.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00   95883.73     -75.71      48.64
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.37      -0.33

   29   1.1  1.0 -1.0       0.00      -0.00       0.01       0.00      -0.00      -2.30    1119.45     -75.71   92403.95       0.00
                            0.00      -0.00      -0.00       0.00       0.00    1122.01       2.33       0.37      -0.00      -0.00

   30   2.1  1.0 -1.0      -0.00       0.07    -524.69       0.07       0.81       1.54    -711.49      48.64       0.00   94516.15
                            0.00      -0.63       0.07     672.42      -0.10     656.80       1.45       0.33       0.00       0.00

   31   3.1  1.0 -1.0      -0.07      -0.00   -1079.37       0.09       0.63      -0.61     345.87     -23.51       0.00       0.00
                            0.63       0.00       0.09    -994.08      -0.14     444.28       1.04       0.30      -0.00      -0.24

   32   4.1  1.0 -1.0     524.69    1079.37      -0.00       0.62      -0.23       0.47       0.05      -0.00       0.00       0.00
                           -0.07      -0.09       0.00       0.11    -600.08      -0.54      46.80     685.12       0.00      -0.51

   33   5.1  1.0 -1.0      -0.07      -0.09      -0.62      -0.00    -600.07       0.32     -46.94    -685.11       0.00       0.00
                         -672.42     994.08      -0.11      -0.00      -0.07       0.42      -0.00       0.00       0.00       0.15

   34   6.1  1.0 -1.0      -0.81      -0.63       0.23     600.07      -0.00     686.71       1.46       0.22       0.00       0.00
                            0.10       0.14     600.08       0.07       0.00      -1.55     685.12     -46.80       0.01   -1692.96

   35   7.1  1.0 -1.0      -1.54       0.61      -0.47      -0.32    -686.71       0.00     -40.28    -595.66       0.00       0.00
                         -656.80    -444.28       0.54      -0.42       1.55      -0.00       0.19      -1.24       0.74      -0.13

   36   8.1  1.0 -1.0     711.49    -345.87      -0.05      46.94      -1.46      40.28      -0.00      -1.22       0.00       0.00
                           -1.45      -1.04     -46.80       0.00    -685.12      -0.19       0.00     597.01    -107.06      -6.11

   37   9.1  1.0 -1.0     -48.64      23.51       0.00     685.11      -0.22     595.66       1.22      -0.00       0.00       0.00
                           -0.33      -0.30    -685.12      -0.00      46.80       1.24    -597.01      -0.00   -1583.16     -79.47


   Nr   State  S   Sz       31         32         33         34         35         36         37

    1   1.1  0.0  0.0       0.00      -0.00      -0.00       0.00       1.58    -767.89      51.93
                           -0.00      -0.00       0.00      -0.00     769.63       1.60       0.25

    2   2.1  0.0  0.0       2.73      -6.45    -688.79       3.90    -595.75      -1.25       3.18
                            6.61     688.79       2.81       1.12      -4.13     594.28     -41.57

    3   3.1  0.0  0.0      36.81      -0.16       3.95     688.48       3.13      40.48     594.12
                         1140.57      -4.06       0.03      20.33      -0.10      -4.59     -17.38

    4   4.1  0.0  0.0   -1238.44       3.14      -1.71      20.67      -1.29       0.75      17.64
                           33.71       1.00      -2.15    -688.50       0.68      41.46     594.05

    5   5.1  0.0  0.0       2.64    1031.28      -2.25      -0.31      -1.01    -455.05      31.12
                            0.43       2.25   -1306.65       1.33     217.93       2.32      -1.21

    6   6.1  0.0  0.0      -1.25    -913.37       2.32       0.64       3.06    -513.81      34.77
                           -0.05      -2.32    -436.44      -0.58    -652.49      -3.32       0.42

    7   7.1  0.0  0.0       2.05       0.41       0.53     597.57       0.30      46.32     684.90
                         -386.60       0.72      -0.36      -3.75      -0.00       0.92       4.40

    8   8.1  0.0  0.0    -301.66      -0.04       0.96       3.85       0.50       0.30       4.45
                           -2.42       0.85      -0.00     597.58       0.32     -45.82    -684.93

    9   9.1  0.0  0.0      -0.32       0.00    -597.58       0.54    -686.47      -1.38       0.39
                           -0.49    -597.59      -0.00       0.84       1.41    -684.94      45.82

   10  10.1  0.0  0.0      -0.00      -0.00       0.00       0.00       1.86    -905.77      61.26
                           -0.00       0.00       0.00      -0.00     907.85       1.88       0.30

   11   1.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00

   12   2.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00

   13   3.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00

   14   4.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00

   15   5.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00

   16   6.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00

   17   7.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00

   18   8.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00

   19   9.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00

   20   1.1  1.0  0.0       0.00      -0.01      -0.00       0.00       2.30   -1119.45      75.71
                           -0.00      -0.00       0.00       0.00    1122.01       2.33       0.37

   21   2.1  1.0  0.0      -0.07     524.69      -0.07      -0.81      -1.54     711.49     -48.64
                           -0.63       0.07     672.42      -0.10     656.80       1.45       0.33

   22   3.1  1.0  0.0      -0.00    1079.37      -0.09      -0.63       0.61    -345.87      23.51
                           -0.00       0.09    -994.08      -0.14     444.28       1.04       0.30

   23   4.1  1.0  0.0   -1079.37      -0.00      -0.62       0.23      -0.47      -0.05       0.00
                           -0.09      -0.00       0.11    -600.08      -0.54      46.80     685.12

   24   5.1  1.0  0.0       0.09       0.62      -0.00     600.07      -0.32      46.94     685.11
                          994.08      -0.11       0.00      -0.07       0.42      -0.00       0.00

   25   6.1  1.0  0.0       0.63      -0.23    -600.07      -0.00    -686.71      -1.46      -0.22
                            0.14     600.08       0.07      -0.00      -1.55     685.12     -46.80

   26   7.1  1.0  0.0      -0.61       0.47       0.32     686.71       0.00      40.28     595.66
                         -444.28       0.54      -0.42       1.55       0.00       0.19      -1.24

   27   8.1  1.0  0.0     345.87       0.05     -46.94       1.46     -40.28      -0.00       1.22
                           -1.04     -46.80       0.00    -685.12      -0.19      -0.00     597.01

   28   9.1  1.0  0.0     -23.51      -0.00    -685.11       0.22    -595.66      -1.22      -0.00
                           -0.30    -685.12      -0.00      46.80       1.24    -597.01       0.00

   29   1.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.01      -0.74     107.06    1583.16

   30   2.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.24       0.51      -0.15    1692.96       0.13       6.11      79.47

   31   3.1  1.0 -1.0   94516.21       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.23      -0.20     120.63       0.74     -75.64   -1116.00

   32   4.1  1.0 -1.0       0.00   94516.24       0.00       0.00       0.00       0.00       0.00
                           -0.23      -0.00    -848.63      -0.33     971.16       2.03       0.56

   33   5.1  1.0 -1.0       0.00       0.00   94516.26       0.00       0.00       0.00       0.00
                            0.20     848.63       0.00       0.68       1.99    -968.93      65.79

   34   6.1  1.0 -1.0       0.00       0.00       0.00   94516.27       0.00       0.00       0.00
                         -120.63       0.33      -0.68      -0.00      -0.66       0.01       0.16

   35   7.1  1.0 -1.0       0.00       0.00       0.00       0.00   95883.45       0.00       0.00
                           -0.74    -971.16      -1.99       0.66      -0.00     842.39     -56.97

   36   8.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00   95883.73       0.00
                           75.64      -2.03     968.93      -0.01    -842.39      -0.00      -0.39

   37   9.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00   95883.73
                         1116.00      -0.56     -65.79      -0.16      56.97       0.39       0.00




   Spin-orbit calculation in the basis of symmetry adapted wave functions
   ======================================================================


 >>> Hamiltonian transformed to symmetry adapted basis <<<


  Results for symmetry 1
  ======================

 => Spin-Orbit Matrixblock (CM-1)  (dimension: 37)

    The diagonal matrixelements are shifted by  -2789.45693939 a.u.

  State Sym Spin    / Nr.        1           2           3           4           5           6           7           8

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |0 0>               0.000   95114.818       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |0 0>               0.000       0.000   95114.859       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |0 0>               0.000       0.000       0.000   95114.886       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000   95114.721       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000   95114.766       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000

    7    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000   95793.308       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000

    8    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000   95793.333
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000

    9    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

   10    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

    1    1  |1 1>+              0.000       0.000       0.000      -0.004      -0.000       0.000       9.003   -1387.053
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>+             -0.000       2.700      25.342    -851.361       1.906      -0.946      -5.595     877.638
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>+              0.000       3.866      52.051   -1751.419       3.728      -1.775       2.898    -426.612
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>+             -0.002      -9.121      -0.219       4.440    1458.454   -1291.701       0.577      -0.051
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>+             -0.000    -974.098       5.583      -2.424      -3.182       3.274       0.752       1.358
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>+              0.000       5.513     973.664      29.234      -0.435       0.910     845.097       5.444
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>+              2.231    -842.519       4.431      -1.819      -1.432       4.326       0.420       0.707
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>+          -1085.965      -1.764      57.245       1.059    -643.541    -726.636      65.505       0.427
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>+             73.442       4.503     840.206      24.953      44.007      49.166     968.593       6.286
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.003      -0.000      -0.000       0.000      -0.000       1.245       1.014

    2    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000   -1943.267      11.273      -3.429      -6.400       6.306      -0.090       0.690

    3    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000    -138.451       1.023      -0.463      -0.511       0.175      -1.068      -0.863

    4    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       5.879     973.680      28.870       0.297      -1.277    -845.087      -5.483

    5    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.800      28.864    -973.700       1.882      -0.811       5.484    -845.088

    6    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.002      -4.896      -0.383       0.830    -389.429   -1908.925       0.577       0.002

    7    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.506      -1.935     -23.232     842.224      -1.187       0.620      -8.290     970.780

    8    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               73.441      -4.504    -840.252     -23.297     -64.806      13.098     968.568       8.301

    9    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             1085.967       4.090      57.396      -0.021    -951.036     194.012     -65.505      -0.109

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.003       0.000       0.000       0.000   -1387.051      -9.002

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -6.007   -1091.069     -32.463       0.771       0.436    -808.289      -5.144

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       9.354    1613.009      47.674       0.603      -0.065    -546.738      -3.419

    4    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000     974.093      -5.739       1.421       3.187      -3.276       1.023       1.197

    5    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       3.972       0.037      -3.045   -1847.889    -617.225      -0.515      -0.005

    6    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       1.581      28.744    -973.692       1.878      -0.820      -5.305     845.104

    7    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             1088.420      -5.840      -0.147       0.965     308.205    -922.757      -0.005       0.450

    8    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                2.260     840.445      -6.496      58.630       3.278      -4.695       1.295     -64.795

    9    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.354     -58.787     -24.574     840.114      -1.713       0.599       6.228    -968.638

  State Sym Spin    / Nr.        9          10          11          12          13          14          15          16

    1    1  |0 0>               0.000       0.000       0.000      -0.000       0.000      -0.002      -0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |0 0>               0.000       0.000       0.000       2.700       3.866      -9.121    -974.098       5.513
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |0 0>               0.000       0.000       0.000      25.342      52.051      -0.219       5.583     973.664
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |0 0>               0.000       0.000      -0.004    -851.361   -1751.419       4.440      -2.424      29.234
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |0 0>               0.000       0.000      -0.000       1.906       3.728    1458.454      -3.182      -0.435
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |0 0>               0.000       0.000       0.000      -0.946      -1.775   -1291.701       3.274       0.910
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |0 0>               0.000       0.000       9.003      -5.595       2.898       0.577       0.752     845.097
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |0 0>               0.000       0.000   -1387.053     877.638    -426.612      -0.051       1.358       5.444
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |0 0>           95793.312       0.000      -1.006       1.277      -0.459       0.002    -845.109       0.760
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   10    1  |0 0>               0.000   99303.284       0.000       0.000      -0.000      -0.004       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 1>+             -1.006       0.000   92403.952       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>+              1.277       0.000       0.000   94516.152       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>+             -0.459      -0.000       0.000       0.000   94516.211       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>+              0.002      -0.004       0.000       0.000       0.000   94516.242       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>+           -845.109       0.000       0.000       0.000       0.000       0.000   94516.260       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>+              0.760       0.000       0.000       0.000       0.000       0.000       0.000   94516.272
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>+           -970.815       2.631       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>+             -1.956   -1280.959       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>+              0.558      86.629       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>               0.000       0.000       0.000       0.000       0.000      -0.000      -0.000       0.000
                            -1387.084       0.000       0.000       0.000      -0.000      -0.000       0.004       0.000

    2    1  |1 0>               0.000       0.000       0.000      -0.000      -0.000       0.000       0.000       0.000
                              -69.345       0.000      -0.000       0.000      -0.895       0.102     950.945      -0.146

    3    1  |1 0>               0.000       0.000       0.000      -0.000      -0.000       0.000       0.000       0.000
                              973.379      -0.000       0.000       0.895       0.000       0.130   -1405.837      -0.200

    4    1  |1 0>               0.000       0.000      -0.000       0.000       0.000      -0.000       0.000      -0.000
                               -0.976      -0.000       0.000      -0.102      -0.130       0.000       0.161    -848.635

    5    1  |1 0>               0.000       0.000      -0.000       0.000       0.000       0.000      -0.000       0.000
                               -0.838      -0.000      -0.004    -950.945    1405.837      -0.161       0.000      -0.100

    6    1  |1 0>               0.000       0.000       0.000       0.000       0.000      -0.000       0.000      -0.000
                               -0.139      -0.001      -0.000       0.146       0.200     848.635       0.100       0.000

    7    1  |1 0>               0.000       0.000       0.000       0.000      -0.000      -0.000       0.000       0.000
                                0.703      -0.597   -1586.762    -928.857    -628.306       0.760      -0.592       2.197

    8    1  |1 0>               0.000       0.000       0.000      -0.000      -0.000       0.000      -0.000      -0.000
                                0.876      86.628      -3.294      -2.057      -1.467     -66.188       0.001    -968.903

    9    1  |1 0>               0.000       0.000       0.000      -0.000       0.000       0.000       0.000      -0.000
                               -0.059    1280.962      -0.516      -0.464      -0.418    -968.905      -0.001      66.190

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -1.252       0.000       0.000       0.000      -0.000       0.000       0.000       0.006

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.877      -0.000      -0.000      -0.000      -0.243      -0.513       0.153   -1692.963

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.689      -0.000       0.000       0.243       0.000      -0.233       0.197    -120.625

    4    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -845.118       0.000      -0.000       0.513       0.233       0.000     848.626       0.326

    5    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.001       0.003      -0.000      -0.153      -0.197    -848.626      -0.000      -0.681

    6    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                1.190      -0.000      -0.006    1692.963     120.625      -0.326       0.681       0.000

    7    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                1.990    1283.901      -0.737       0.131       0.745     971.160       1.991      -0.663

    8    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -968.653       2.665     107.064       6.112     -75.644       2.034    -968.932       0.007

    9    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               64.802       0.418    1583.155      79.471   -1116.001       0.560      65.787       0.160

  State Sym Spin    / Nr.       17          18          19          20          21          22          23          24

    1    1  |0 0>               2.231   -1085.965      73.442       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000      -0.000       0.000       0.000       0.000

    2    1  |0 0>            -842.519      -1.764       4.503       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.003    1943.267     138.451      -5.879      -0.800

    3    1  |0 0>               4.431      57.245     840.206       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000     -11.273      -1.023    -973.680     -28.864

    4    1  |0 0>              -1.819       1.059      24.953       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       3.429       0.463     -28.870     973.700

    5    1  |0 0>              -1.432    -643.541      44.007       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000       6.400       0.511      -0.297      -1.882

    6    1  |0 0>               4.326    -726.636      49.166       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -6.306      -0.175       1.277       0.811

    7    1  |0 0>               0.420      65.505     968.593       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -1.245       0.090       1.068     845.087      -5.484

    8    1  |0 0>               0.707       0.427       6.286       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -1.014      -0.690       0.863       5.483     845.088

    9    1  |0 0>            -970.815      -1.956       0.558       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000    1387.084      69.345    -973.379       0.976       0.838

   10    1  |0 0>               2.631   -1280.959      86.629       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000      -0.000       0.000       0.000       0.000

    1    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000      -0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000      -0.000      -0.000       0.004

    2    1  |1 1>+              0.000       0.000       0.000       0.000      -0.000      -0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000       0.000      -0.895       0.102     950.945

    3    1  |1 1>+              0.000       0.000       0.000       0.000      -0.000      -0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.895       0.000       0.130   -1405.837

    4    1  |1 1>+              0.000       0.000       0.000      -0.000       0.000       0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000      -0.102      -0.130       0.000       0.161

    5    1  |1 1>+              0.000       0.000       0.000      -0.000       0.000       0.000       0.000      -0.000
                                0.000       0.000       0.000      -0.004    -950.945    1405.837      -0.161       0.000

    6    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000      -0.000       0.000
                                0.000       0.000       0.000      -0.000       0.146       0.200     848.635       0.100

    7    1  |1 1>+          95883.446       0.000       0.000       0.000       0.000      -0.000      -0.000       0.000
                                0.000       0.000       0.000   -1586.762    -928.857    -628.306       0.760      -0.592

    8    1  |1 1>+              0.000   95883.728       0.000       0.000      -0.000      -0.000       0.000      -0.000
                                0.000       0.000       0.000      -3.294      -2.057      -1.467     -66.188       0.001

    9    1  |1 1>+              0.000       0.000   95883.727       0.000      -0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.516      -0.464      -0.418    -968.905      -0.001

    1    1  |1 0>               0.000       0.000       0.000   92403.952       0.000       0.000       0.000       0.000
                             1586.762       3.294       0.516       0.000       0.000       0.000       0.000       0.000

    2    1  |1 0>               0.000      -0.000      -0.000       0.000   94516.152       0.000       0.000       0.000
                              928.857       2.057       0.464      -0.000       0.000       0.000       0.000       0.000

    3    1  |1 0>              -0.000      -0.000       0.000       0.000       0.000   94516.211       0.000       0.000
                              628.306       1.467       0.418      -0.000      -0.000       0.000       0.000       0.000

    4    1  |1 0>              -0.000       0.000       0.000       0.000       0.000       0.000   94516.242       0.000
                               -0.760      66.188     968.905      -0.000      -0.000      -0.000       0.000       0.000

    5    1  |1 0>               0.000      -0.000       0.000       0.000       0.000       0.000       0.000   94516.260
                                0.592      -0.001       0.001      -0.000      -0.000      -0.000      -0.000       0.000

    6    1  |1 0>               0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                               -2.197     968.903     -66.190      -0.000      -0.000      -0.000      -0.000      -0.000

    7    1  |1 0>               0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.275      -1.753      -0.000      -0.000      -0.000      -0.000      -0.000

    8    1  |1 0>              -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.275       0.000     844.299      -0.000      -0.000      -0.000      -0.000      -0.000

    9    1  |1 0>               0.000       0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                                1.753    -844.299       0.000      -0.000      -0.000      -0.000      -0.000      -0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000      -0.000       0.000      -0.008      -0.000
                                0.737    -107.064   -1583.155      -0.000       0.000      -0.000      -0.000      -0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000      -0.096     742.021      -0.102
                               -0.131      -6.112     -79.471       0.000      -0.000      -0.000       0.000      -0.000

    3    1  |1 1>-              0.000       0.000       0.000      -0.000       0.096       0.000    1526.459      -0.128
                               -0.745      75.644    1116.001      -0.000      -0.000      -0.000       0.000       0.000

    4    1  |1 1>-              0.000       0.000       0.000       0.008    -742.021   -1526.459       0.000      -0.870
                             -971.160      -2.034      -0.560      -0.000       0.000       0.000      -0.000       0.000

    5    1  |1 1>-              0.000       0.000       0.000       0.000       0.102       0.128       0.870       0.000
                               -1.991     968.932     -65.787      -0.000      -0.000       0.000       0.000       0.000

    6    1  |1 1>-              0.000       0.000       0.000      -0.000       1.149       0.891      -0.321    -848.629
                                0.663      -0.007      -0.160       0.000       0.000      -0.000      -0.000       0.000

    7    1  |1 1>-              0.000       0.000       0.000      -3.252       2.184      -0.857       0.663       0.450
                                0.000    -842.388      56.968       0.000      -0.000      -0.000      -0.000       0.000

    8    1  |1 1>-              0.000       0.000       0.000    1583.148   -1006.200     489.141       0.064     -66.376
                              842.388       0.000       0.392       0.000      -0.000       0.000      -0.000       0.000

    9    1  |1 1>-              0.000       0.000       0.000    -107.065      68.784     -33.253      -0.003    -968.895
                              -56.968      -0.392      -0.000       0.000      -0.000       0.000      -0.000       0.000

  State Sym Spin    / Nr.       25          26          27          28          29          30          31          32

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.002       0.506     -73.441   -1085.967       0.000      -0.000       0.000       0.000

    2    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                4.896       1.935       4.504      -4.090      -0.000       6.007      -9.354    -974.093

    3    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.383      23.232     840.252     -57.396      -0.003    1091.069   -1613.009       5.739

    4    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.830    -842.224      23.297       0.021      -0.000      32.463     -47.674      -1.421

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              389.429       1.187      64.806     951.036      -0.000      -0.771      -0.603      -3.187

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             1908.925      -0.620     -13.098    -194.012      -0.000      -0.436       0.065       3.276

    7    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.577       8.290    -968.568      65.505    1387.051     808.289     546.738      -1.023

    8    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.002    -970.780      -8.301       0.109       9.002       5.144       3.419      -1.197

    9    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.139      -0.703      -0.876       0.059       1.252       0.877       0.689     845.118

   10    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.001       0.597     -86.628   -1280.962      -0.000       0.000       0.000      -0.000

    1    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000    1586.762       3.294       0.516       0.000       0.000      -0.000       0.000

    2    1  |1 1>+              0.000       0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                               -0.146     928.857       2.057       0.464      -0.000      -0.000      -0.243      -0.513

    3    1  |1 1>+              0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                               -0.200     628.306       1.467       0.418       0.000       0.243       0.000      -0.233

    4    1  |1 1>+             -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -848.635      -0.760      66.188     968.905      -0.000       0.513       0.233       0.000

    5    1  |1 1>+              0.000       0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                               -0.100       0.592      -0.001       0.001      -0.000      -0.153      -0.197    -848.626

    6    1  |1 1>+             -0.000       0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000      -2.197     968.903     -66.190      -0.006    1692.963     120.625      -0.326

    7    1  |1 1>+              0.000       0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                                2.197       0.000       0.275      -1.753      -0.737       0.131       0.745     971.160

    8    1  |1 1>+             -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                             -968.903      -0.275       0.000     844.299     107.064       6.112     -75.644       2.034

    9    1  |1 1>+             -0.000       0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                               66.190       1.753    -844.299       0.000    1583.155      79.471   -1116.001       0.560

    1    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000      -0.000       0.008
                                0.000       0.000       0.000       0.000       0.000      -0.000       0.000       0.000

    2    1  |1 0>               0.000       0.000       0.000       0.000      -0.000       0.000       0.096    -742.021
                                0.000       0.000       0.000       0.000      -0.000       0.000       0.000      -0.000

    3    1  |1 0>               0.000       0.000       0.000       0.000       0.000      -0.096       0.000   -1526.459
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000

    4    1  |1 0>               0.000       0.000       0.000       0.000      -0.008     742.021    1526.459       0.000
                                0.000       0.000       0.000       0.000       0.000      -0.000      -0.000       0.000

    5    1  |1 0>               0.000       0.000       0.000       0.000      -0.000      -0.102      -0.128      -0.870
                                0.000       0.000       0.000       0.000       0.000       0.000      -0.000      -0.000

    6    1  |1 0>           94516.272       0.000       0.000       0.000       0.000      -1.149      -0.891       0.321
                                0.000       0.000       0.000       0.000      -0.000      -0.000       0.000       0.000

    7    1  |1 0>               0.000   95883.446       0.000       0.000       3.252      -2.184       0.857      -0.663
                               -0.000       0.000       0.000       0.000      -0.000       0.000       0.000       0.000

    8    1  |1 0>               0.000       0.000   95883.728       0.000   -1583.148    1006.200    -489.141      -0.064
                               -0.000      -0.000       0.000       0.000      -0.000       0.000      -0.000       0.000

    9    1  |1 0>               0.000       0.000       0.000   95883.727     107.065     -68.784      33.253       0.003
                               -0.000      -0.000      -0.000       0.000      -0.000       0.000      -0.000       0.000

    1    1  |1 1>-              0.000       3.252   -1583.148     107.065   92403.952       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>-             -1.149      -2.184    1006.200     -68.784       0.000   94516.152       0.000       0.000
                                0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>-             -0.891       0.857    -489.141      33.253       0.000       0.000   94516.211       0.000
                               -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>-              0.321      -0.663      -0.064       0.003       0.000       0.000       0.000   94516.242
                               -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>-            848.629      -0.450      66.376     968.895       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>-              0.000    -971.159      -2.063      -0.310       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>-            971.159       0.000      56.969     842.384       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>-              2.063     -56.969       0.000       1.730       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>-              0.310    -842.384      -1.730       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

  State Sym Spin    / Nr.       33          34          35          36          37

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000   -1088.420      -2.260      -0.354

    2    1  |0 0>               0.000       0.000       0.000       0.000       0.000
                               -3.972      -1.581       5.840    -840.445      58.787

    3    1  |0 0>               0.000       0.000       0.000       0.000       0.000
                               -0.037     -28.744       0.147       6.496      24.574

    4    1  |0 0>               0.000       0.000       0.000       0.000       0.000
                                3.045     973.692      -0.965     -58.630    -840.114

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000
                             1847.889      -1.878    -308.205      -3.278       1.713

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000
                              617.225       0.820     922.757       4.695      -0.599

    7    1  |0 0>               0.000       0.000       0.000       0.000       0.000
                                0.515       5.305       0.005      -1.295      -6.228

    8    1  |0 0>               0.000       0.000       0.000       0.000       0.000
                                0.005    -845.104      -0.450      64.795     968.638

    9    1  |0 0>               0.000       0.000       0.000       0.000       0.000
                                0.001      -1.190      -1.990     968.653     -64.802

   10    1  |0 0>               0.000       0.000       0.000       0.000       0.000
                               -0.003       0.000   -1283.901      -2.665      -0.418

    1    1  |1 1>+              0.000       0.000       0.000       0.000       0.000
                                0.000       0.006       0.737    -107.064   -1583.155

    2    1  |1 1>+              0.000       0.000       0.000       0.000       0.000
                                0.153   -1692.963      -0.131      -6.112     -79.471

    3    1  |1 1>+              0.000       0.000       0.000       0.000       0.000
                                0.197    -120.625      -0.745      75.644    1116.001

    4    1  |1 1>+              0.000       0.000       0.000       0.000       0.000
                              848.626       0.326    -971.160      -2.034      -0.560

    5    1  |1 1>+              0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.681      -1.991     968.932     -65.787

    6    1  |1 1>+              0.000       0.000       0.000       0.000       0.000
                                0.681       0.000       0.663      -0.007      -0.160

    7    1  |1 1>+              0.000       0.000       0.000       0.000       0.000
                                1.991      -0.663       0.000    -842.388      56.968

    8    1  |1 1>+              0.000       0.000       0.000       0.000       0.000
                             -968.932       0.007     842.388       0.000       0.392

    9    1  |1 1>+              0.000       0.000       0.000       0.000       0.000
                               65.787       0.160     -56.968      -0.392      -0.000

    1    1  |1 0>               0.000      -0.000      -3.252    1583.148    -107.065
                                0.000      -0.000      -0.000      -0.000      -0.000

    2    1  |1 0>               0.102       1.149       2.184   -1006.200      68.784
                                0.000      -0.000       0.000       0.000       0.000

    3    1  |1 0>               0.128       0.891      -0.857     489.141     -33.253
                               -0.000       0.000       0.000      -0.000      -0.000

    4    1  |1 0>               0.870      -0.321       0.663       0.064      -0.003
                               -0.000       0.000       0.000       0.000       0.000

    5    1  |1 0>               0.000    -848.629       0.450     -66.376    -968.895
                               -0.000      -0.000      -0.000      -0.000      -0.000

    6    1  |1 0>             848.629       0.000     971.159       2.063       0.310
                               -0.000       0.000      -0.000      -0.000      -0.000

    7    1  |1 0>              -0.450    -971.159       0.000     -56.969    -842.384
                               -0.000      -0.000      -0.000       0.000      -0.000

    8    1  |1 0>              66.376      -2.063      56.969       0.000      -1.730
                               -0.000      -0.000       0.000       0.000      -0.000

    9    1  |1 0>             968.895      -0.310     842.384       1.730       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>-              0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>-          94516.260       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>-              0.000   94516.272       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>-              0.000       0.000   95883.446       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>-              0.000       0.000       0.000   95883.728       0.000
                                0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>-              0.000       0.000       0.000       0.000   95883.727
                                0.000       0.000       0.000       0.000       0.000

 => Eigenvalues of spin-orbit matrix in ascending order  (E0 = Emin,ges)
    (symmetry =  1)

    Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
             (au)           (au)        (cm-1)           (au)       (cm-1)        (eV)
    1 -2789.45710538    -0.00016599      -36.43      0.00000000        0.00      0.0000
    2 -2789.04090974     0.41602965    91307.95      0.41619564    91344.39     11.3253
    3 -2789.04090974     0.41602965    91307.96      0.41619564    91344.39     11.3253
    4 -2789.04090967     0.41602973    91307.97      0.41619571    91344.40     11.3253
    5 -2789.03416409     0.42277530    92788.45      0.42294129    92824.88     11.5088
    6 -2789.03416407     0.42277532    92788.46      0.42294131    92824.89     11.5088
    7 -2789.03416397     0.42277542    92788.48      0.42294141    92824.91     11.5088
    8 -2789.03416391     0.42277548    92788.49      0.42294147    92824.92     11.5088
    9 -2789.03416386     0.42277553    92788.50      0.42294152    92824.93     11.5088
   10 -2789.03402514     0.42291425    92818.95      0.42308024    92855.38     11.5126
   11 -2789.03402513     0.42291426    92818.95      0.42308025    92855.38     11.5126
   12 -2789.03402508     0.42291431    92818.96      0.42308030    92855.39     11.5126
   13 -2789.03402503     0.42291436    92818.97      0.42308035    92855.40     11.5126
   14 -2789.03402501     0.42291439    92818.98      0.42308037    92855.41     11.5126
   15 -2789.03402496     0.42291443    92818.99      0.42308042    92855.42     11.5126
   16 -2789.03402492     0.42291447    92819.00      0.42308046    92855.43     11.5126
   17 -2789.03016407     0.42677533    93666.36      0.42694131    93702.79     11.6177
   18 -2789.03016403     0.42677536    93666.37      0.42694135    93702.80     11.6177
   19 -2789.03016393     0.42677546    93666.39      0.42694145    93702.82     11.6177
   20 -2789.02875244     0.42818695    93976.17      0.42835294    94012.60     11.6561
   21 -2789.02875221     0.42818718    93976.22      0.42835317    94012.65     11.6561
   22 -2789.02875213     0.42818726    93976.24      0.42835325    94012.67     11.6561
   23 -2789.02875183     0.42818756    93976.31      0.42835355    94012.74     11.6561
   24 -2789.02875168     0.42818771    93976.34      0.42835370    94012.77     11.6561
   25 -2789.01918200     0.43775739    96076.64      0.43792338    96113.07     11.9165
   26 -2789.00955426     0.44738513    98189.69      0.44755112    98226.12     12.1785
   27 -2789.00955423     0.44738516    98189.69      0.44755115    98226.12     12.1785
   28 -2789.00955423     0.44738516    98189.69      0.44755115    98226.12     12.1785
   29 -2789.00698202     0.44995737    98754.23      0.45012336    98790.66     12.2485
   30 -2789.00698200     0.44995739    98754.23      0.45012338    98790.66     12.2485
   31 -2789.00698184     0.44995755    98754.27      0.45012354    98790.70     12.2485
   32 -2789.00698183     0.44995756    98754.27      0.45012355    98790.70     12.2485
   33 -2789.00698175     0.44995764    98754.29      0.45012363    98790.72     12.2485
   34 -2789.00666743     0.45027196    98823.27      0.45043795    98859.70     12.2570
   35 -2789.00666741     0.45027198    98823.28      0.45043797    98859.71     12.2570
   36 -2789.00666705     0.45027234    98823.36      0.45043833    98859.79     12.2571
   37 -2788.99749986     0.45943953   100835.32      0.45960551   100871.75     12.5065

 => Eigenvectors of spin-orbit matrix columnwise and corresponding to the
    eigenvalues in ascending order (symmetry =  1)

  Basis states          Eigenvectors (columnwise)

 State Sym Spin     / Nr.      1           2           3           4           5           6           7           8

   1    1  |0 0>           0.99981325  0.00000000 -0.00000000 -0.00000000  0.00000005 -0.00000000 -0.00000008  0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   2    1  |0 0>           0.00000000  0.00000001 -0.00000123 -0.00000001  0.02264411  0.64694348  0.00288326  0.00193186
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   3    1  |0 0>          -0.00000000 -0.00000002  0.00000003 -0.00000011 -0.00013617 -0.00192348 -0.00105778  0.64734966
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   4    1  |0 0>           0.00000000 -0.00000098 -0.00000000 -0.00000000 -0.00042445  0.00040340  0.00017490  0.00001496
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   5    1  |0 0>           0.00000000  0.00000002 -0.00000001 -0.00000000  0.62322310 -0.02258899  0.17373614  0.00034787
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   6    1  |0 0>           0.00000000 -0.00000000  0.00000006 -0.00000001 -0.17371693  0.00329799  0.62361253  0.00099225
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   7    1  |0 0>           0.00000000 -0.00157267 -0.00006805  0.16896326 -0.00000002  0.00000003  0.00000001  0.00000320
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   8    1  |0 0>           0.00000000  0.16895292  0.00117156  0.00157312  0.00000001  0.00000005 -0.00000001  0.00000053
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   9    1  |0 0>           0.00000000 -0.00117215  0.16896160  0.00005715 -0.00000048 -0.00001324 -0.00000007  0.00000001
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  10    1  |0 0>           0.00043250 -0.00000000 -0.00000000  0.00000000 -0.00000168  0.00000007  0.00000217  0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   1    1  |1 1>+         -0.00000000  0.92235207  0.00706704  0.00260122  0.00000002  0.00000002 -0.00000000  0.00000025
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   2    1  |1 1>+          0.00000000  0.01712010  0.00014365  0.00005025 -0.00084317 -0.00062216  0.00020311 -0.00780459
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   3    1  |1 1>+         -0.00000000 -0.00831710 -0.00006663 -0.00002095 -0.00164238 -0.00076190  0.00038476 -0.01600773
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   4    1  |1 1>+          0.00000002 -0.00000111  0.00000001  0.00001122 -0.53845702  0.02048199  0.26244806  0.00044383
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   5    1  |1 1>+          0.00000000  0.00014068 -0.01648102  0.00000933  0.01166310  0.29865658  0.00062831 -0.00082212
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   6    1  |1 1>+         -0.00000000 -0.00004734  0.00000892  0.01647935  0.00021309 -0.00081444  0.00024460 -0.29883066
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   7    1  |1 1>+         -0.00002286  0.00187483 -0.24470216  0.00002485 -0.00552816 -0.14540036  0.00000388  0.00033202
                           0.00000000  0.00000000  0.00000001 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   8    1  |1 1>+          0.01112929 -0.00004274 -0.00049896  0.01651042 -0.07330420  0.00290395 -0.15069972  0.00963212
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   9    1  |1 1>+         -0.00075265 -0.00068890  0.00005335  0.24413441  0.00502992  0.00012688  0.00998462  0.14510688
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   1    1  |1 0>           0.00000000  0.00000000  0.00000002 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00706559  0.92235561 -0.00052229 -0.00000033 -0.00000850  0.00000001  0.00000001

   2    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00002282 -0.00134787 -0.00000208  0.02334912  0.59790989  0.00132950 -0.00168722

   3    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00014836  0.01898495 -0.00001457  0.00165288  0.04249970  0.00018035 -0.00018714

   4    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00004659 -0.00001313 -0.01647964 -0.00018738 -0.00091673  0.00083265 -0.29931375

   5    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.01647912 -0.00013065 -0.00004649 -0.00082670 -0.00001141  0.00017903 -0.00886344

   6    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000001 -0.00000006 -0.00000274  0.00001124 -0.04207903  0.00031256  0.59761212  0.00108684

   7    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000518  0.24470286  0.00187463  0.00018863 -0.00033226 -0.00022364  0.00009247 -0.00400971

   8    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00075264 -0.00018156  0.00013685  0.24413459 -0.01137280  0.00005333 -0.00059121 -0.14510023

   9    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.01112931  0.00012624 -0.00000838 -0.01651006 -0.16704538  0.00657662 -0.01180290  0.00987640

   1    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00260514  0.00050235  0.92238143 -0.00000001 -0.00000000  0.00000001 -0.00000029

   2    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00004655 -0.00001145 -0.01576429 -0.00020511  0.00086463 -0.00073130  0.33615620

   3    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00003265 -0.00000960 -0.01066340 -0.00017083 -0.00140412  0.00076312 -0.49621492

   4    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00013756 -0.01648678  0.00001459 -0.01167061 -0.29878479 -0.00062860  0.00087029

   5    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000001 -0.00000003 -0.00001004  0.49602892 -0.02008067  0.33549512  0.00058139

   6    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.01648647  0.00013758  0.00005001 -0.00083361 -0.00025135  0.00018077 -0.00881750

   7    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.01115447  0.00010987  0.00050234  0.00000004  0.09396003 -0.00367665 -0.13922291 -0.00024407

   8    1  |1 1>-         -0.00000000  0.00000000 -0.00000001 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00002316 -0.01463925 -0.24424844  0.00009168  0.00583266  0.14502865  0.00002197 -0.00068941

   9    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000363 -0.24424878  0.01463906 -0.00069784 -0.00076180 -0.01003149  0.00002127 -0.00427073

 State Sym Spin     / Nr.      9          10          11          12          13          14          15          16

   1    1  |0 0>           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000001
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   2    1  |0 0>          -0.00038914  0.00000074 -0.00000252 -0.00069865  0.00027530 -0.00000229 -0.00000107  0.00000006
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   3    1  |0 0>          -0.00001315  0.00001061 -0.00042164  0.00000404 -0.00000168 -0.00039164 -0.00001302 -0.00000007
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   4    1  |0 0>           0.64734113 -0.00035923 -0.00001304 -0.00000148  0.00000074 -0.00001163  0.00042754 -0.00000031
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   5    1  |0 0>           0.00037579  0.00000086  0.00000048 -0.00000279  0.00000148 -0.00000014 -0.00000076 -0.00009525
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   6    1  |0 0>          -0.00028447 -0.00000035  0.00000019  0.00000247 -0.00000096 -0.00000011  0.00000049  0.00015555
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   7    1  |0 0>           0.00000022  0.00000006  0.00001726 -0.00000000  0.00000001  0.00000411  0.00000002 -0.00000001
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   8    1  |0 0>          -0.00001568 -0.00001841  0.00000012 -0.00000004 -0.00000000  0.00000004 -0.00000001 -0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   9    1  |0 0>          -0.00000006 -0.00000001  0.00000001  0.00000152 -0.00000506  0.00000001  0.00000000 -0.00000001
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  10    1  |0 0>          -0.00000000 -0.00000000 -0.00000000  0.00000001 -0.00000000  0.00000000  0.00000000 -0.00000004
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   1    1  |1 1>+         -0.00000898 -0.00000247 -0.00000001 -0.00000001  0.00000000 -0.00000000 -0.00000096  0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   2    1  |1 1>+          0.26233726  0.73197863  0.00096764  0.00041880  0.00047581 -0.00000289 -0.11404975  0.00001171
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   3    1  |1 1>+          0.53892930 -0.23315370 -0.00025751  0.00037620 -0.00107041  0.00033647 -0.57417428 -0.00003548
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   4    1  |1 1>+         -0.00180276 -0.00000533  0.00018798 -0.00008641 -0.00004644 -0.00010796  0.00002618 -0.57719150
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   5    1  |1 1>+          0.00056602 -0.00026375 -0.00010874 -0.44469000  0.57965981  0.00015612 -0.00117176  0.00002053
                           0.00000000  0.00000000 -0.00000000 -0.00000001  0.00000000 -0.00000000 -0.00000000  0.00000000

   6    1  |1 1>+         -0.00896517 -0.00064628  0.53502782 -0.00004175 -0.00006541  0.49744090  0.00025252 -0.00015507
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   7    1  |1 1>+         -0.00022711  0.00000002  0.00000007  0.00015338 -0.00006434  0.00000006  0.00000001  0.00000021
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   8    1  |1 1>+          0.00017346 -0.00000002 -0.00000681  0.00000039 -0.00000024 -0.00000603 -0.00000005 -0.00001388
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   9    1  |1 1>+          0.00430622  0.00000001 -0.00009844  0.00000005 -0.00000004 -0.00008927 -0.00000009  0.00000090
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   1    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000003  0.00000001  0.00000000  0.00000043 -0.00000044 -0.00000000  0.00000000  0.00000000

   2    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000001  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00069829  0.00005200  0.00013911  0.54222928 -0.19969271 -0.00008562  0.00022245  0.00000276

   3    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00011671 -0.00102573  0.00011797  0.23646350  0.73671481  0.00005286 -0.00076211 -0.00000591

   4    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00886787  0.00052791 -0.34755846  0.00023290 -0.00008012  0.64236195  0.00028221  0.00000312

   5    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.29922774  0.32809888  0.00046348 -0.00014903  0.00114464 -0.00030499  0.65255082 -0.00010517

   6    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00044442 -0.00006876  0.00041426 -0.00001444 -0.00004244  0.00000878  0.00012842  0.57747257

   7    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.14545863 -0.00006968 -0.00000029  0.00000001  0.00000004 -0.00000018  0.00009282 -0.00000001

   8    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00402710 -0.00000010  0.00008644 -0.00000000  0.00000001  0.00008420  0.00000027  0.00000213

   9    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00011425 -0.00000007 -0.00000602  0.00000015 -0.00000016 -0.00000572  0.00000001  0.00003124

   1    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000001  0.00000000  0.00000339 -0.00000000 -0.00000000  0.00000049  0.00000000 -0.00000001

   2    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00999357 -0.00088939  0.68532618 -0.00008991 -0.00004121  0.21505536  0.00008529  0.00006031

   3    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.01465414 -0.00060088  0.35110399 -0.00019148  0.00001156 -0.54191732 -0.00016978  0.00021024

   4    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000001 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00025784 -0.00078893  0.00011836  0.67254854  0.28524681 -0.00016378  0.00044571 -0.00012313

   5    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00118357  0.00007044  0.00028041 -0.00008693 -0.00004476 -0.00018820 -0.00012778 -0.57738656

   6    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.29886733 -0.54972176 -0.00078138 -0.00083202 -0.00031023 -0.00005208  0.48113549 -0.00017271

   7    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00026824  0.00000007  0.00000001  0.00000023 -0.00000006  0.00000004 -0.00000007 -0.00004495

   8    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.01003861 -0.00000596 -0.00000004 -0.00015396  0.00005670 -0.00000002  0.00000646 -0.00000029

   9    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.14509049 -0.00008757 -0.00000011  0.00001042 -0.00000381  0.00000001  0.00009594 -0.00000000

 State Sym Spin     / Nr.     17          18          19          20          21          22          23          24

   1    1  |0 0>          -0.00000000 -0.00000000 -0.00000000  0.00000068  0.00000000  0.00000000  0.00000001 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   2    1  |0 0>           0.00010503 -0.00000025 -0.00000008  0.00265009  0.48831558  0.00019973 -0.00021652 -0.00234279
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   3    1  |0 0>          -0.00000050 -0.00000320 -0.00000682  0.00006539 -0.00234815  0.01432505 -0.00010554 -0.48811071
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   4    1  |0 0>           0.00000025  0.00010877  0.00000041 -0.00015017  0.00013216 -0.48812389  0.00091559 -0.01432603
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   5    1  |0 0>           0.00000022 -0.00000009  0.00000003 -0.16518815  0.00109939  0.00091599  0.45951169 -0.00009989
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   6    1  |0 0>          -0.00000053  0.00000003 -0.00000002  0.45951849 -0.00242044  0.00016658  0.16519003  0.00004239
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   7    1  |0 0>          -0.00031035 -0.00975144  0.71640433  0.00000001  0.00000011 -0.00000118 -0.00000002 -0.00000540
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   8    1  |0 0>          -0.00058338  0.71640059  0.00975117 -0.00000003  0.00000038  0.00014779 -0.00000017 -0.00000007
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   9    1  |0 0>           0.71646825  0.00057911  0.00031826  0.00000008 -0.00014601  0.00000040  0.00000005 -0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  10    1  |0 0>          -0.00000001 -0.00000000  0.00000000 -0.00002011 -0.00000004 -0.00000001 -0.00000027 -0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   1    1  |1 1>+         -0.00000560  0.06502943  0.00046303  0.00000000 -0.00000002 -0.00000871  0.00000000 -0.00000004
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   2    1  |1 1>+         -0.00018383 -0.28584445 -0.00206843 -0.00010105  0.00018966  0.06849203 -0.00001030 -0.00002975
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   3    1  |1 1>+          0.00003691  0.13893576  0.00094736 -0.00019037  0.00025431  0.14105962 -0.00003125 -0.00005378
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   4    1  |1 1>+         -0.00000040  0.00001927 -0.00018775 -0.13756901  0.00004577 -0.00017327  0.07532499 -0.00002238
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   5    1  |1 1>+          0.27526479 -0.00021656 -0.00012854 -0.00009063 -0.07847288  0.00017584 -0.00011757 -0.00006726
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   6    1  |1 1>+         -0.00012697  0.00197337 -0.27528014  0.00009291  0.00006711 -0.00005274 -0.00002089 -0.07841987
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   7    1  |1 1>+          0.33913741  0.00002916  0.00000043  0.00001132  0.60187301 -0.00114441 -0.00034627  0.00023762
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   8    1  |1 1>+          0.00069304  0.00016295 -0.02287414  0.33296424 -0.00008167  0.00059642  0.60827596  0.04084633
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   9    1  |1 1>+         -0.00004664  0.00240832 -0.33823417 -0.02250968 -0.00023247  0.00013843 -0.04137086  0.60054453
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   1    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.06502960  0.00000580 -0.00003013 -0.00000004  0.00000883 -0.00000002 -0.00000001  0.00000001

   2    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.02256837 -0.00020669  0.00003622 -0.00019665 -0.15642620  0.00023764 -0.00024457 -0.00014824

   3    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.31704171  0.00002013  0.00021086 -0.00003337 -0.01107858  0.00003494 -0.00002916 -0.00002770

   4    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00019709 -0.00196029  0.27526647 -0.00009244  0.00009750 -0.00002354 -0.00002509 -0.07841884

   5    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00004974  0.27526168  0.00196027 -0.00008795  0.00003271  0.07846491 -0.00002704 -0.00002341

   6    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00004542  0.00000209 -0.00018792 -0.13400133  0.00029721 -0.00017910 -0.08149812  0.00002385

   7    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00002946 -0.33913380 -0.00171984 -0.00050874  0.00114354  0.60187077 -0.00048411  0.00105550

   8    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00015681  0.00170446 -0.33824245 -0.02437381  0.00048635  0.00105767  0.04030384 -0.60054042

   9    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00001055 -0.00027308  0.02287362 -0.36027883 -0.00050783  0.00000837  0.59250638  0.04084924

   1    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00003017 -0.00046294  0.06501427 -0.00000000  0.00000001  0.00000003  0.00000001 -0.00000037

   2    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00017028 -0.00190766  0.26325149 -0.00000155 -0.00006198  0.00003536  0.00008454  0.08786826

   3    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00014629 -0.00130996  0.17807752 -0.00000103  0.00012981 -0.00002660  0.00002270 -0.12990790

   4    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.27527861 -0.00016270 -0.00021615  0.00009054  0.07835620 -0.00009533  0.00011783  0.00008208

   5    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000038 -0.00000050  0.00016769  0.00357057  0.00023102 -0.00005081 -0.15682482  0.00002879

   6    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00016428 -0.27528752 -0.00201895 -0.00008819  0.00009551  0.07835078 -0.00002748 -0.00001417

   7    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00069483 -0.00015766 -0.00000079  0.69490028  0.00040845  0.00050598  0.01580792 -0.00000260

   8    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.33812805  0.02289642  0.00000613  0.00070344 -0.60054004  0.04176045 -0.00088213 -0.00052867

   9    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.02289616  0.33812024  0.00241836 -0.00040205  0.04176026  0.60054042 -0.00014123 -0.00014255

 State Sym Spin     / Nr.     25          26          27          28          29          30          31          32

   1    1  |0 0>          -0.01615462 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000025 -0.00000000 -0.00000008
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   2    1  |0 0>           0.00000023 -0.00000003 -0.00000927  0.00000046  0.58517753 -0.00591926  0.00013303  0.00046989
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   3    1  |0 0>           0.00000000  0.00000139  0.00000012  0.00000022 -0.00238125 -0.00028834 -0.02360222 -0.00021174
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   4    1  |0 0>          -0.00000002  0.00000014 -0.00000061 -0.00001213 -0.00022722 -0.00058646  0.58465854 -0.00973715
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   5    1  |0 0>          -0.00000912 -0.00000003 -0.00000004  0.00000007  0.00344727  0.30062498 -0.00804379 -0.50200192
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   6    1  |0 0>           0.00002857 -0.00000002  0.00000024 -0.00000002 -0.00483335 -0.50205184 -0.00548759 -0.30059459
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   7    1  |0 0>          -0.00000001  0.51527780 -0.00041759  0.00010675 -0.00000017 -0.00000012 -0.00000300 -0.00000005
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   8    1  |0 0>           0.00000000 -0.00008611  0.02512172  0.51465412 -0.00000106 -0.00000061  0.00035252 -0.00000555
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   9    1  |0 0>           0.00000002  0.00042228  0.51465755 -0.02512186  0.00034386 -0.00000093  0.00000116  0.00000081
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  10    1  |0 0>           0.56739914  0.00000002 -0.00000001 -0.00000000  0.00000003  0.00002224  0.00000012  0.00000556
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   1    1  |1 1>+         -0.00000000  0.00049862 -0.00370631 -0.07480678  0.00000070  0.00000048 -0.00029363  0.00000466
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   2    1  |1 1>+         -0.00000001 -0.00314199  0.02411957  0.47974046  0.00080478  0.00071126 -0.23260406  0.00355341
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   3    1  |1 1>+         -0.00000002  0.00162480 -0.01163602 -0.23319552  0.00119338  0.00140022 -0.47832865  0.00732792
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   4    1  |1 1>+         -0.00001813  0.00031589 -0.00000097 -0.00002795  0.00276833  0.50720009 -0.00095339 -0.16047505
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   5    1  |1 1>+         -0.00000005  0.00003218 -0.46195793  0.02329377 -0.26591996  0.00147665 -0.00077965  0.00008309
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   6    1  |1 1>+         -0.00000000  0.46254141  0.00018608  0.00305136  0.00041754 -0.00042827 -0.00274789 -0.00025357
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   7    1  |1 1>+         -0.00097405  0.00003429  0.08854683 -0.00438685 -0.34175012  0.00165201 -0.00089568 -0.00066575
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   8    1  |1 1>+          0.47425158 -0.00598081  0.00018133 -0.00004886  0.00008556  0.11861187  0.00583712  0.37484831
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   9    1  |1 1>+         -0.03207275 -0.08843813 -0.00000721 -0.00058915  0.00037590 -0.00812597 -0.00406123 -0.02581534
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   1    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000001  0.00000585 -0.07481438  0.00370676 -0.00028739  0.00000093 -0.00000076 -0.00000061

   2    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000009 -0.00008026 -0.03788405  0.00222707 -0.53062014  0.00299154 -0.00117225  0.00020321

   3    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000001 -0.00014792  0.53209427 -0.02644607 -0.03788752  0.00027001 -0.00014498  0.00006678

   4    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000001 -0.46253538 -0.00030480 -0.00306744  0.00052361  0.00018554 -0.00284478 -0.00011658

   5    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000001  0.00307871 -0.02301158 -0.46196133  0.00029418  0.00071423 -0.26587662  0.00409297

   6    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00001881  0.00031576 -0.00007640  0.00000464  0.00234237  0.39257228  0.00657991  0.35895999

   7    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00022087  0.00077190 -0.00438739 -0.08855301 -0.00088388 -0.00079246  0.34169052 -0.00539765

   8    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.03207247 -0.08844103 -0.00004516 -0.00077154 -0.00063419 -0.01784431  0.00461051  0.02007538

   9    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.47425386  0.00598136  0.00000104  0.00001092 -0.00135665 -0.26538904  0.00361338  0.29013822

   1    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.07490831 -0.00003051 -0.00049777 -0.00000008  0.00000010  0.00000059  0.00000005

   2    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000001 -0.44238318 -0.00025827 -0.00287995 -0.00042409  0.00017827  0.00315518  0.00001238

   3    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000002 -0.29923880 -0.00022518 -0.00191289  0.00075799 -0.00015616 -0.00475976 -0.00050609

   4    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000003  0.00018059 -0.46197054  0.02320584  0.26606056 -0.00147579  0.00050782 -0.00007924

   5    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000096 -0.00028175 -0.00000070 -0.00000307 -0.00049545 -0.11463002  0.00768523  0.51943382

   6    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000001 -0.00298047  0.02320449  0.46196679  0.00050788  0.00071398 -0.26601573  0.00409753

   7    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.47529639  0.00000028 -0.00018352 -0.00003215  0.00145809  0.38486532  0.00218192  0.08490004

   8    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00098679 -0.00004672  0.08863512  0.00159752  0.34006677 -0.00115120  0.02388242 -0.00028338

   9    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00015466 -0.00058836 -0.00159723  0.08863861 -0.02388266 -0.00065943  0.33999644 -0.00520103

 State Sym Spin     / Nr.     33          34          35          36          37

   1    1  |0 0>          -0.00000000 -0.00000000  0.00000000  0.00000000  0.01060633
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   2    1  |0 0>           0.00238564  0.00043658  0.00000018  0.00000012  0.00000005
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   3    1  |0 0>           0.58472864 -0.00000217  0.00001235  0.00001313  0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   4    1  |0 0>           0.02359442  0.00000020 -0.00044543  0.00000029  0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   5    1  |0 0>          -0.00034419  0.00000105  0.00000046 -0.00000000 -0.00000151
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   6    1  |0 0>          -0.00059760 -0.00000296 -0.00000008 -0.00000019  0.00000518
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   7    1  |0 0>          -0.00001079  0.00017882 -0.00399264  0.43885217 -0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   8    1  |0 0>           0.00000443  0.00106808  0.43887201  0.00399211 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   9    1  |0 0>          -0.00000034 -0.43888315  0.00106644  0.00018854  0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  10    1  |0 0>           0.00000002  0.00000000  0.00000000  0.00000000  0.82344279
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   1    1  |1 1>+         -0.00000362 -0.00063668 -0.37332217 -0.00097295  0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   2    1  |1 1>+         -0.00245630 -0.00010098 -0.10369632 -0.00028270 -0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   3    1  |1 1>+         -0.00507562  0.00006892  0.05086083  0.00011644 -0.00000001
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   4    1  |1 1>+          0.00010485  0.00000072  0.00000609 -0.00006818 -0.00000528
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   5    1  |1 1>+          0.00041192 -0.10023006  0.00008354 -0.00004749 -0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   6    1  |1 1>+          0.26597812  0.00004782  0.00026505 -0.10002865  0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   7    1  |1 1>+          0.00037123  0.56304455 -0.00096020  0.00000560  0.00067119
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   8    1  |1 1>+          0.02363998  0.00115163 -0.00010102  0.03801038 -0.32678945
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   9    1  |1 1>+          0.34048459 -0.00008596 -0.00146513  0.56204790  0.02210017
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   1    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000022  0.37332242 -0.00063715  0.00017722  0.00000001

   2    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00087390 -0.00860691 -0.00006115  0.00001335 -0.00000002

   3    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00011990  0.11518507 -0.00017883  0.00007786 -0.00000001

   4    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.26597548 -0.00007290 -0.00026104  0.10004171 -0.00000002

   5    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00284284  0.00014397  0.10022987  0.00026082 -0.00000001

   6    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00049392 -0.00001513  0.00000029 -0.00006813 -0.00000499

   7    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00435485  0.00096080  0.56303816  0.00031366 -0.00015220

   8    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.34052198 -0.00026751 -0.00029497  0.56203223  0.02209990

   9    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.02338738  0.00001859  0.00028253 -0.03800853  0.32679015

   1    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000951  0.00017888  0.00097265 -0.37331743  0.00000000

   2    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.29804072 -0.00006350 -0.00026089  0.09566656  0.00000000

   3    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.44061395 -0.00005385 -0.00018436  0.06472756 -0.00000001

   4    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00046533 -0.09982934  0.00010229 -0.00007935  0.00000001

   5    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00045001  0.00000061  0.00000039  0.00006100  0.00000038

   6    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00287624 -0.00010211 -0.09982000 -0.00028197 -0.00000001

   7    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00025489 -0.00115365  0.00026358  0.00000026  0.32751880

   8    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00028279  0.56223987 -0.03898710  0.00016778  0.00067997

   9    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00367240 -0.03898662 -0.56224364 -0.00148290  0.00010657


  No SO block in symmetry 2


 Summary of SO results
 =====================

 Eigenvalues of the spin-orbit matrix
 ....................................

     Nr  Sym         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
                   (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1   1  -2789.45710538     -0.00016599      -36.43      0.00000000        0.00      0.0000
     2   1  -2789.04090974      0.41602965    91307.95      0.41619564    91344.39     11.3253
     3   1  -2789.04090974      0.41602965    91307.96      0.41619564    91344.39     11.3253
     4   1  -2789.04090967      0.41602973    91307.97      0.41619571    91344.40     11.3253
     5   1  -2789.03416409      0.42277530    92788.45      0.42294129    92824.88     11.5088
     6   1  -2789.03416407      0.42277532    92788.46      0.42294131    92824.89     11.5088
     7   1  -2789.03416397      0.42277542    92788.48      0.42294141    92824.91     11.5088
     8   1  -2789.03416391      0.42277548    92788.49      0.42294147    92824.92     11.5088
     9   1  -2789.03416386      0.42277553    92788.50      0.42294152    92824.93     11.5088
    10   1  -2789.03402514      0.42291425    92818.95      0.42308024    92855.38     11.5126
    11   1  -2789.03402513      0.42291426    92818.95      0.42308025    92855.38     11.5126
    12   1  -2789.03402508      0.42291431    92818.96      0.42308030    92855.39     11.5126
    13   1  -2789.03402503      0.42291436    92818.97      0.42308035    92855.40     11.5126
    14   1  -2789.03402501      0.42291439    92818.98      0.42308037    92855.41     11.5126
    15   1  -2789.03402496      0.42291443    92818.99      0.42308042    92855.42     11.5126
    16   1  -2789.03402492      0.42291447    92819.00      0.42308046    92855.43     11.5126
    17   1  -2789.03016407      0.42677533    93666.36      0.42694131    93702.79     11.6177
    18   1  -2789.03016403      0.42677536    93666.37      0.42694135    93702.80     11.6177
    19   1  -2789.03016393      0.42677546    93666.39      0.42694145    93702.82     11.6177
    20   1  -2789.02875244      0.42818695    93976.17      0.42835294    94012.60     11.6561
    21   1  -2789.02875221      0.42818718    93976.22      0.42835317    94012.65     11.6561
    22   1  -2789.02875213      0.42818726    93976.24      0.42835325    94012.67     11.6561
    23   1  -2789.02875183      0.42818756    93976.31      0.42835355    94012.74     11.6561
    24   1  -2789.02875168      0.42818771    93976.34      0.42835370    94012.77     11.6561
    25   1  -2789.01918200      0.43775739    96076.64      0.43792338    96113.07     11.9165
    26   1  -2789.00955426      0.44738513    98189.69      0.44755112    98226.12     12.1785
    27   1  -2789.00955423      0.44738516    98189.69      0.44755115    98226.12     12.1785
    28   1  -2789.00955423      0.44738516    98189.69      0.44755115    98226.12     12.1785
    29   1  -2789.00698202      0.44995737    98754.23      0.45012336    98790.66     12.2485
    30   1  -2789.00698200      0.44995739    98754.23      0.45012338    98790.66     12.2485
    31   1  -2789.00698184      0.44995755    98754.27      0.45012354    98790.70     12.2485
    32   1  -2789.00698183      0.44995756    98754.27      0.45012355    98790.70     12.2485
    33   1  -2789.00698175      0.44995764    98754.29      0.45012363    98790.72     12.2485
    34   1  -2789.00666743      0.45027196    98823.27      0.45043795    98859.70     12.2570
    35   1  -2789.00666741      0.45027198    98823.28      0.45043797    98859.71     12.2570
    36   1  -2789.00666705      0.45027234    98823.36      0.45043833    98859.79     12.2571
    37   1  -2788.99749986      0.45943953   100835.32      0.45960551   100871.75     12.5065

 E0 =  -2789.45693939 is the energy of the lowest zeroth-order state
 E1 =  -2789.45710538 is the energy of the lowest SO-state


 Spin-orbit eigenvectors   (columnwise and corresponding to the eigenvalues in ascending order)
 .......................

        Basis states           Eigenvectors (columnwise)

   Total
 Nr Sym  State Sym Spin / Nr.        1           2           3           4           5           6           7           8

  1  1     1    1  |0 0>        0.99981325  0.00000000 -0.00000000 -0.00000000  0.00000005 -0.00000000 -0.00000008  0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  2  1     2    1  |0 0>        0.00000000  0.00000001 -0.00000123 -0.00000001  0.02264411  0.64694348  0.00288326  0.00193186
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  3  1     3    1  |0 0>       -0.00000000 -0.00000002  0.00000003 -0.00000011 -0.00013617 -0.00192348 -0.00105778  0.64734966
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  4  1     4    1  |0 0>        0.00000000 -0.00000098 -0.00000000 -0.00000000 -0.00042445  0.00040340  0.00017490  0.00001496
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  5  1     5    1  |0 0>        0.00000000  0.00000002 -0.00000001 -0.00000000  0.62322310 -0.02258899  0.17373614  0.00034787
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  6  1     6    1  |0 0>        0.00000000 -0.00000000  0.00000006 -0.00000001 -0.17371693  0.00329799  0.62361253  0.00099225
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  7  1     7    1  |0 0>        0.00000000 -0.00157267 -0.00006805  0.16896326 -0.00000002  0.00000003  0.00000001  0.00000320
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  8  1     8    1  |0 0>        0.00000000  0.16895292  0.00117156  0.00157312  0.00000001  0.00000005 -0.00000001  0.00000053
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  9  1     9    1  |0 0>        0.00000000 -0.00117215  0.16896160  0.00005715 -0.00000048 -0.00001324 -0.00000007  0.00000001
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 10  1    10    1  |0 0>        0.00043250 -0.00000000 -0.00000000  0.00000000 -0.00000168  0.00000007  0.00000217  0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 11  1     1    1  |1 1>+      -0.00000000  0.92235207  0.00706704  0.00260122  0.00000002  0.00000002 -0.00000000  0.00000025
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 12  1     2    1  |1 1>+       0.00000000  0.01712010  0.00014365  0.00005025 -0.00084317 -0.00062216  0.00020311 -0.00780459
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 13  1     3    1  |1 1>+      -0.00000000 -0.00831710 -0.00006663 -0.00002095 -0.00164238 -0.00076190  0.00038476 -0.01600773
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 14  1     4    1  |1 1>+       0.00000002 -0.00000111  0.00000001  0.00001122 -0.53845702  0.02048199  0.26244806  0.00044383
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 15  1     5    1  |1 1>+       0.00000000  0.00014068 -0.01648102  0.00000933  0.01166310  0.29865658  0.00062831 -0.00082212
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 16  1     6    1  |1 1>+      -0.00000000 -0.00004734  0.00000892  0.01647935  0.00021309 -0.00081444  0.00024460 -0.29883066
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 17  1     7    1  |1 1>+      -0.00002286  0.00187483 -0.24470216  0.00002485 -0.00552816 -0.14540036  0.00000388  0.00033202
                                0.00000000  0.00000000  0.00000001 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 18  1     8    1  |1 1>+       0.01112929 -0.00004274 -0.00049896  0.01651042 -0.07330420  0.00290395 -0.15069972  0.00963212
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 19  1     9    1  |1 1>+      -0.00075265 -0.00068890  0.00005335  0.24413441  0.00502992  0.00012688  0.00998462  0.14510688
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 20  1     1    1  |1 0>        0.00000000  0.00000000  0.00000002 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00706559  0.92235561 -0.00052229 -0.00000033 -0.00000850  0.00000001  0.00000001

 21  1     2    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00002282 -0.00134787 -0.00000208  0.02334912  0.59790989  0.00132950 -0.00168722

 22  1     3    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00014836  0.01898495 -0.00001457  0.00165288  0.04249970  0.00018035 -0.00018714

 23  1     4    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00004659 -0.00001313 -0.01647964 -0.00018738 -0.00091673  0.00083265 -0.29931375

 24  1     5    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.01647912 -0.00013065 -0.00004649 -0.00082670 -0.00001141  0.00017903 -0.00886344

 25  1     6    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000001 -0.00000006 -0.00000274  0.00001124 -0.04207903  0.00031256  0.59761212  0.00108684

 26  1     7    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000518  0.24470286  0.00187463  0.00018863 -0.00033226 -0.00022364  0.00009247 -0.00400971

 27  1     8    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00075264 -0.00018156  0.00013685  0.24413459 -0.01137280  0.00005333 -0.00059121 -0.14510023

 28  1     9    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.01112931  0.00012624 -0.00000838 -0.01651006 -0.16704538  0.00657662 -0.01180290  0.00987640

 29  1     1    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00260514  0.00050235  0.92238143 -0.00000001 -0.00000000  0.00000001 -0.00000029

 30  1     2    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00004655 -0.00001145 -0.01576429 -0.00020511  0.00086463 -0.00073130  0.33615620

 31  1     3    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00003265 -0.00000960 -0.01066340 -0.00017083 -0.00140412  0.00076312 -0.49621492

 32  1     4    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00013756 -0.01648678  0.00001459 -0.01167061 -0.29878479 -0.00062860  0.00087029

 33  1     5    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000001 -0.00000003 -0.00001004  0.49602892 -0.02008067  0.33549512  0.00058139

 34  1     6    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.01648647  0.00013758  0.00005001 -0.00083361 -0.00025135  0.00018077 -0.00881750

 35  1     7    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.01115447  0.00010987  0.00050234  0.00000004  0.09396003 -0.00367665 -0.13922291 -0.00024407

 36  1     8    1  |1 1>-      -0.00000000  0.00000000 -0.00000001 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00002316 -0.01463925 -0.24424844  0.00009168  0.00583266  0.14502865  0.00002197 -0.00068941

 37  1     9    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000363 -0.24424878  0.01463906 -0.00069784 -0.00076180 -0.01003149  0.00002127 -0.00427073


   Total
 Nr Sym  State Sym Spin / Nr.        9          10          11          12          13          14          15          16

  1  1     1    1  |0 0>        0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000001
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  2  1     2    1  |0 0>       -0.00038914  0.00000074 -0.00000252 -0.00069865  0.00027530 -0.00000229 -0.00000107  0.00000006
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  3  1     3    1  |0 0>       -0.00001315  0.00001061 -0.00042164  0.00000404 -0.00000168 -0.00039164 -0.00001302 -0.00000007
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  4  1     4    1  |0 0>        0.64734113 -0.00035923 -0.00001304 -0.00000148  0.00000074 -0.00001163  0.00042754 -0.00000031
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  5  1     5    1  |0 0>        0.00037579  0.00000086  0.00000048 -0.00000279  0.00000148 -0.00000014 -0.00000076 -0.00009525
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  6  1     6    1  |0 0>       -0.00028447 -0.00000035  0.00000019  0.00000247 -0.00000096 -0.00000011  0.00000049  0.00015555
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  7  1     7    1  |0 0>        0.00000022  0.00000006  0.00001726 -0.00000000  0.00000001  0.00000411  0.00000002 -0.00000001
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  8  1     8    1  |0 0>       -0.00001568 -0.00001841  0.00000012 -0.00000004 -0.00000000  0.00000004 -0.00000001 -0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  9  1     9    1  |0 0>       -0.00000006 -0.00000001  0.00000001  0.00000152 -0.00000506  0.00000001  0.00000000 -0.00000001
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 10  1    10    1  |0 0>       -0.00000000 -0.00000000 -0.00000000  0.00000001 -0.00000000  0.00000000  0.00000000 -0.00000004
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 11  1     1    1  |1 1>+      -0.00000898 -0.00000247 -0.00000001 -0.00000001  0.00000000 -0.00000000 -0.00000096  0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 12  1     2    1  |1 1>+       0.26233726  0.73197863  0.00096764  0.00041880  0.00047581 -0.00000289 -0.11404975  0.00001171
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 13  1     3    1  |1 1>+       0.53892930 -0.23315370 -0.00025751  0.00037620 -0.00107041  0.00033647 -0.57417428 -0.00003548
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 14  1     4    1  |1 1>+      -0.00180276 -0.00000533  0.00018798 -0.00008641 -0.00004644 -0.00010796  0.00002618 -0.57719150
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 15  1     5    1  |1 1>+       0.00056602 -0.00026375 -0.00010874 -0.44469000  0.57965981  0.00015612 -0.00117176  0.00002053
                                0.00000000  0.00000000 -0.00000000 -0.00000001  0.00000000 -0.00000000 -0.00000000  0.00000000

 16  1     6    1  |1 1>+      -0.00896517 -0.00064628  0.53502782 -0.00004175 -0.00006541  0.49744090  0.00025252 -0.00015507
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 17  1     7    1  |1 1>+      -0.00022711  0.00000002  0.00000007  0.00015338 -0.00006434  0.00000006  0.00000001  0.00000021
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 18  1     8    1  |1 1>+       0.00017346 -0.00000002 -0.00000681  0.00000039 -0.00000024 -0.00000603 -0.00000005 -0.00001388
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 19  1     9    1  |1 1>+       0.00430622  0.00000001 -0.00009844  0.00000005 -0.00000004 -0.00008927 -0.00000009  0.00000090
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 20  1     1    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000003  0.00000001  0.00000000  0.00000043 -0.00000044 -0.00000000  0.00000000  0.00000000

 21  1     2    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000001  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00069829  0.00005200  0.00013911  0.54222928 -0.19969271 -0.00008562  0.00022245  0.00000276

 22  1     3    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00011671 -0.00102573  0.00011797  0.23646350  0.73671481  0.00005286 -0.00076211 -0.00000591

 23  1     4    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00886787  0.00052791 -0.34755846  0.00023290 -0.00008012  0.64236195  0.00028221  0.00000312

 24  1     5    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.29922774  0.32809888  0.00046348 -0.00014903  0.00114464 -0.00030499  0.65255082 -0.00010517

 25  1     6    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00044442 -0.00006876  0.00041426 -0.00001444 -0.00004244  0.00000878  0.00012842  0.57747257

 26  1     7    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.14545863 -0.00006968 -0.00000029  0.00000001  0.00000004 -0.00000018  0.00009282 -0.00000001

 27  1     8    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00402710 -0.00000010  0.00008644 -0.00000000  0.00000001  0.00008420  0.00000027  0.00000213

 28  1     9    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00011425 -0.00000007 -0.00000602  0.00000015 -0.00000016 -0.00000572  0.00000001  0.00003124

 29  1     1    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000001  0.00000000  0.00000339 -0.00000000 -0.00000000  0.00000049  0.00000000 -0.00000001

 30  1     2    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00999357 -0.00088939  0.68532618 -0.00008991 -0.00004121  0.21505536  0.00008529  0.00006031

 31  1     3    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.01465414 -0.00060088  0.35110399 -0.00019148  0.00001156 -0.54191732 -0.00016978  0.00021024

 32  1     4    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000001 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00025784 -0.00078893  0.00011836  0.67254854  0.28524681 -0.00016378  0.00044571 -0.00012313

 33  1     5    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00118357  0.00007044  0.00028041 -0.00008693 -0.00004476 -0.00018820 -0.00012778 -0.57738656

 34  1     6    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.29886733 -0.54972176 -0.00078138 -0.00083202 -0.00031023 -0.00005208  0.48113549 -0.00017271

 35  1     7    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00026824  0.00000007  0.00000001  0.00000023 -0.00000006  0.00000004 -0.00000007 -0.00004495

 36  1     8    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.01003861 -0.00000596 -0.00000004 -0.00015396  0.00005670 -0.00000002  0.00000646 -0.00000029

 37  1     9    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.14509049 -0.00008757 -0.00000011  0.00001042 -0.00000381  0.00000001  0.00009594 -0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.       17          18          19          20          21          22          23          24

  1  1     1    1  |0 0>       -0.00000000 -0.00000000 -0.00000000  0.00000068  0.00000000  0.00000000  0.00000001 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  2  1     2    1  |0 0>        0.00010503 -0.00000025 -0.00000008  0.00265009  0.48831558  0.00019973 -0.00021652 -0.00234279
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  3  1     3    1  |0 0>       -0.00000050 -0.00000320 -0.00000682  0.00006539 -0.00234815  0.01432505 -0.00010554 -0.48811071
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  4  1     4    1  |0 0>        0.00000025  0.00010877  0.00000041 -0.00015017  0.00013216 -0.48812389  0.00091559 -0.01432603
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  5  1     5    1  |0 0>        0.00000022 -0.00000009  0.00000003 -0.16518815  0.00109939  0.00091599  0.45951169 -0.00009989
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  6  1     6    1  |0 0>       -0.00000053  0.00000003 -0.00000002  0.45951849 -0.00242044  0.00016658  0.16519003  0.00004239
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  7  1     7    1  |0 0>       -0.00031035 -0.00975144  0.71640433  0.00000001  0.00000011 -0.00000118 -0.00000002 -0.00000540
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  8  1     8    1  |0 0>       -0.00058338  0.71640059  0.00975117 -0.00000003  0.00000038  0.00014779 -0.00000017 -0.00000007
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  9  1     9    1  |0 0>        0.71646825  0.00057911  0.00031826  0.00000008 -0.00014601  0.00000040  0.00000005 -0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 10  1    10    1  |0 0>       -0.00000001 -0.00000000  0.00000000 -0.00002011 -0.00000004 -0.00000001 -0.00000027 -0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 11  1     1    1  |1 1>+      -0.00000560  0.06502943  0.00046303  0.00000000 -0.00000002 -0.00000871  0.00000000 -0.00000004
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 12  1     2    1  |1 1>+      -0.00018383 -0.28584445 -0.00206843 -0.00010105  0.00018966  0.06849203 -0.00001030 -0.00002975
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 13  1     3    1  |1 1>+       0.00003691  0.13893576  0.00094736 -0.00019037  0.00025431  0.14105962 -0.00003125 -0.00005378
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 14  1     4    1  |1 1>+      -0.00000040  0.00001927 -0.00018775 -0.13756901  0.00004577 -0.00017327  0.07532499 -0.00002238
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 15  1     5    1  |1 1>+       0.27526479 -0.00021656 -0.00012854 -0.00009063 -0.07847288  0.00017584 -0.00011757 -0.00006726
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 16  1     6    1  |1 1>+      -0.00012697  0.00197337 -0.27528014  0.00009291  0.00006711 -0.00005274 -0.00002089 -0.07841987
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 17  1     7    1  |1 1>+       0.33913741  0.00002916  0.00000043  0.00001132  0.60187301 -0.00114441 -0.00034627  0.00023762
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 18  1     8    1  |1 1>+       0.00069304  0.00016295 -0.02287414  0.33296424 -0.00008167  0.00059642  0.60827596  0.04084633
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 19  1     9    1  |1 1>+      -0.00004664  0.00240832 -0.33823417 -0.02250968 -0.00023247  0.00013843 -0.04137086  0.60054453
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 20  1     1    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.06502960  0.00000580 -0.00003013 -0.00000004  0.00000883 -0.00000002 -0.00000001  0.00000001

 21  1     2    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.02256837 -0.00020669  0.00003622 -0.00019665 -0.15642620  0.00023764 -0.00024457 -0.00014824

 22  1     3    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.31704171  0.00002013  0.00021086 -0.00003337 -0.01107858  0.00003494 -0.00002916 -0.00002770

 23  1     4    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00019709 -0.00196029  0.27526647 -0.00009244  0.00009750 -0.00002354 -0.00002509 -0.07841884

 24  1     5    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00004974  0.27526168  0.00196027 -0.00008795  0.00003271  0.07846491 -0.00002704 -0.00002341

 25  1     6    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00004542  0.00000209 -0.00018792 -0.13400133  0.00029721 -0.00017910 -0.08149812  0.00002385

 26  1     7    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00002946 -0.33913380 -0.00171984 -0.00050874  0.00114354  0.60187077 -0.00048411  0.00105550

 27  1     8    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00015681  0.00170446 -0.33824245 -0.02437381  0.00048635  0.00105767  0.04030384 -0.60054042

 28  1     9    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00001055 -0.00027308  0.02287362 -0.36027883 -0.00050783  0.00000837  0.59250638  0.04084924

 29  1     1    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00003017 -0.00046294  0.06501427 -0.00000000  0.00000001  0.00000003  0.00000001 -0.00000037

 30  1     2    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00017028 -0.00190766  0.26325149 -0.00000155 -0.00006198  0.00003536  0.00008454  0.08786826

 31  1     3    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00014629 -0.00130996  0.17807752 -0.00000103  0.00012981 -0.00002660  0.00002270 -0.12990790

 32  1     4    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.27527861 -0.00016270 -0.00021615  0.00009054  0.07835620 -0.00009533  0.00011783  0.00008208

 33  1     5    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000038 -0.00000050  0.00016769  0.00357057  0.00023102 -0.00005081 -0.15682482  0.00002879

 34  1     6    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00016428 -0.27528752 -0.00201895 -0.00008819  0.00009551  0.07835078 -0.00002748 -0.00001417

 35  1     7    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00069483 -0.00015766 -0.00000079  0.69490028  0.00040845  0.00050598  0.01580792 -0.00000260

 36  1     8    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.33812805  0.02289642  0.00000613  0.00070344 -0.60054004  0.04176045 -0.00088213 -0.00052867

 37  1     9    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.02289616  0.33812024  0.00241836 -0.00040205  0.04176026  0.60054042 -0.00014123 -0.00014255


   Total
 Nr Sym  State Sym Spin / Nr.       25          26          27          28          29          30          31          32

  1  1     1    1  |0 0>       -0.01615462 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000025 -0.00000000 -0.00000008
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  2  1     2    1  |0 0>        0.00000023 -0.00000003 -0.00000927  0.00000046  0.58517753 -0.00591926  0.00013303  0.00046989
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  3  1     3    1  |0 0>        0.00000000  0.00000139  0.00000012  0.00000022 -0.00238125 -0.00028834 -0.02360222 -0.00021174
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  4  1     4    1  |0 0>       -0.00000002  0.00000014 -0.00000061 -0.00001213 -0.00022722 -0.00058646  0.58465854 -0.00973715
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  5  1     5    1  |0 0>       -0.00000912 -0.00000003 -0.00000004  0.00000007  0.00344727  0.30062498 -0.00804379 -0.50200192
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  6  1     6    1  |0 0>        0.00002857 -0.00000002  0.00000024 -0.00000002 -0.00483335 -0.50205184 -0.00548759 -0.30059459
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  7  1     7    1  |0 0>       -0.00000001  0.51527780 -0.00041759  0.00010675 -0.00000017 -0.00000012 -0.00000300 -0.00000005
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  8  1     8    1  |0 0>        0.00000000 -0.00008611  0.02512172  0.51465412 -0.00000106 -0.00000061  0.00035252 -0.00000555
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  9  1     9    1  |0 0>        0.00000002  0.00042228  0.51465755 -0.02512186  0.00034386 -0.00000093  0.00000116  0.00000081
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 10  1    10    1  |0 0>        0.56739914  0.00000002 -0.00000001 -0.00000000  0.00000003  0.00002224  0.00000012  0.00000556
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 11  1     1    1  |1 1>+      -0.00000000  0.00049862 -0.00370631 -0.07480678  0.00000070  0.00000048 -0.00029363  0.00000466
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 12  1     2    1  |1 1>+      -0.00000001 -0.00314199  0.02411957  0.47974046  0.00080478  0.00071126 -0.23260406  0.00355341
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 13  1     3    1  |1 1>+      -0.00000002  0.00162480 -0.01163602 -0.23319552  0.00119338  0.00140022 -0.47832865  0.00732792
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 14  1     4    1  |1 1>+      -0.00001813  0.00031589 -0.00000097 -0.00002795  0.00276833  0.50720009 -0.00095339 -0.16047505
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 15  1     5    1  |1 1>+      -0.00000005  0.00003218 -0.46195793  0.02329377 -0.26591996  0.00147665 -0.00077965  0.00008309
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 16  1     6    1  |1 1>+      -0.00000000  0.46254141  0.00018608  0.00305136  0.00041754 -0.00042827 -0.00274789 -0.00025357
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 17  1     7    1  |1 1>+      -0.00097405  0.00003429  0.08854683 -0.00438685 -0.34175012  0.00165201 -0.00089568 -0.00066575
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 18  1     8    1  |1 1>+       0.47425158 -0.00598081  0.00018133 -0.00004886  0.00008556  0.11861187  0.00583712  0.37484831
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 19  1     9    1  |1 1>+      -0.03207275 -0.08843813 -0.00000721 -0.00058915  0.00037590 -0.00812597 -0.00406123 -0.02581534
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 20  1     1    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000001  0.00000585 -0.07481438  0.00370676 -0.00028739  0.00000093 -0.00000076 -0.00000061

 21  1     2    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000009 -0.00008026 -0.03788405  0.00222707 -0.53062014  0.00299154 -0.00117225  0.00020321

 22  1     3    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000001 -0.00014792  0.53209427 -0.02644607 -0.03788752  0.00027001 -0.00014498  0.00006678

 23  1     4    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000001 -0.46253538 -0.00030480 -0.00306744  0.00052361  0.00018554 -0.00284478 -0.00011658

 24  1     5    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000001  0.00307871 -0.02301158 -0.46196133  0.00029418  0.00071423 -0.26587662  0.00409297

 25  1     6    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00001881  0.00031576 -0.00007640  0.00000464  0.00234237  0.39257228  0.00657991  0.35895999

 26  1     7    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00022087  0.00077190 -0.00438739 -0.08855301 -0.00088388 -0.00079246  0.34169052 -0.00539765

 27  1     8    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.03207247 -0.08844103 -0.00004516 -0.00077154 -0.00063419 -0.01784431  0.00461051  0.02007538

 28  1     9    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.47425386  0.00598136  0.00000104  0.00001092 -0.00135665 -0.26538904  0.00361338  0.29013822

 29  1     1    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.07490831 -0.00003051 -0.00049777 -0.00000008  0.00000010  0.00000059  0.00000005

 30  1     2    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000001 -0.44238318 -0.00025827 -0.00287995 -0.00042409  0.00017827  0.00315518  0.00001238

 31  1     3    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000002 -0.29923880 -0.00022518 -0.00191289  0.00075799 -0.00015616 -0.00475976 -0.00050609

 32  1     4    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000003  0.00018059 -0.46197054  0.02320584  0.26606056 -0.00147579  0.00050782 -0.00007924

 33  1     5    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000096 -0.00028175 -0.00000070 -0.00000307 -0.00049545 -0.11463002  0.00768523  0.51943382

 34  1     6    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000001 -0.00298047  0.02320449  0.46196679  0.00050788  0.00071398 -0.26601573  0.00409753

 35  1     7    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.47529639  0.00000028 -0.00018352 -0.00003215  0.00145809  0.38486532  0.00218192  0.08490004

 36  1     8    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00098679 -0.00004672  0.08863512  0.00159752  0.34006677 -0.00115120  0.02388242 -0.00028338

 37  1     9    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00015466 -0.00058836 -0.00159723  0.08863861 -0.02388266 -0.00065943  0.33999644 -0.00520103


   Total
 Nr Sym  State Sym Spin / Nr.       33          34          35          36          37

  1  1     1    1  |0 0>       -0.00000000 -0.00000000  0.00000000  0.00000000  0.01060633
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  2  1     2    1  |0 0>        0.00238564  0.00043658  0.00000018  0.00000012  0.00000005
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  3  1     3    1  |0 0>        0.58472864 -0.00000217  0.00001235  0.00001313  0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  4  1     4    1  |0 0>        0.02359442  0.00000020 -0.00044543  0.00000029  0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  5  1     5    1  |0 0>       -0.00034419  0.00000105  0.00000046 -0.00000000 -0.00000151
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  6  1     6    1  |0 0>       -0.00059760 -0.00000296 -0.00000008 -0.00000019  0.00000518
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  7  1     7    1  |0 0>       -0.00001079  0.00017882 -0.00399264  0.43885217 -0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  8  1     8    1  |0 0>        0.00000443  0.00106808  0.43887201  0.00399211 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  9  1     9    1  |0 0>       -0.00000034 -0.43888315  0.00106644  0.00018854  0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 10  1    10    1  |0 0>        0.00000002  0.00000000  0.00000000  0.00000000  0.82344279
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 11  1     1    1  |1 1>+      -0.00000362 -0.00063668 -0.37332217 -0.00097295  0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 12  1     2    1  |1 1>+      -0.00245630 -0.00010098 -0.10369632 -0.00028270 -0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 13  1     3    1  |1 1>+      -0.00507562  0.00006892  0.05086083  0.00011644 -0.00000001
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 14  1     4    1  |1 1>+       0.00010485  0.00000072  0.00000609 -0.00006818 -0.00000528
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 15  1     5    1  |1 1>+       0.00041192 -0.10023006  0.00008354 -0.00004749 -0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 16  1     6    1  |1 1>+       0.26597812  0.00004782  0.00026505 -0.10002865  0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 17  1     7    1  |1 1>+       0.00037123  0.56304455 -0.00096020  0.00000560  0.00067119
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 18  1     8    1  |1 1>+       0.02363998  0.00115163 -0.00010102  0.03801038 -0.32678945
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 19  1     9    1  |1 1>+       0.34048459 -0.00008596 -0.00146513  0.56204790  0.02210017
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 20  1     1    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000022  0.37332242 -0.00063715  0.00017722  0.00000001

 21  1     2    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00087390 -0.00860691 -0.00006115  0.00001335 -0.00000002

 22  1     3    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00011990  0.11518507 -0.00017883  0.00007786 -0.00000001

 23  1     4    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.26597548 -0.00007290 -0.00026104  0.10004171 -0.00000002

 24  1     5    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00284284  0.00014397  0.10022987  0.00026082 -0.00000001

 25  1     6    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00049392 -0.00001513  0.00000029 -0.00006813 -0.00000499

 26  1     7    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00435485  0.00096080  0.56303816  0.00031366 -0.00015220

 27  1     8    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.34052198 -0.00026751 -0.00029497  0.56203223  0.02209990

 28  1     9    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.02338738  0.00001859  0.00028253 -0.03800853  0.32679015

 29  1     1    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000951  0.00017888  0.00097265 -0.37331743  0.00000000

 30  1     2    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.29804072 -0.00006350 -0.00026089  0.09566656  0.00000000

 31  1     3    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.44061395 -0.00005385 -0.00018436  0.06472756 -0.00000001

 32  1     4    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00046533 -0.09982934  0.00010229 -0.00007935  0.00000001

 33  1     5    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00045001  0.00000061  0.00000039  0.00006100  0.00000038

 34  1     6    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00287624 -0.00010211 -0.09982000 -0.00028197 -0.00000001

 35  1     7    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00025489 -0.00115365  0.00026358  0.00000026  0.32751880

 36  1     8    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00028279  0.56223987 -0.03898710  0.00016778  0.00067997

 37  1     9    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00367240 -0.03898662 -0.56224364 -0.00148290  0.00010657



 Composition of spin-orbit eigenvectors
 ======================================
   Total
 Nr Sym  State Sym Spin / Nr.      1        2        3        4        5        6        7        8

  1  1     1    1  |0 0>         99.96%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.05%   41.85%    0.00%    0.00%
  3  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   41.91%
  4  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  5  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%   38.84%    0.05%    3.02%    0.00%
  6  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    3.02%    0.00%   38.89%    0.00%
  7  1     7    1  |0 0>          0.00%    0.00%    0.00%    2.85%    0.00%    0.00%    0.00%    0.00%
  8  1     8    1  |0 0>          0.00%    2.85%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  9  1     9    1  |0 0>          0.00%    0.00%    2.85%    0.00%    0.00%    0.00%    0.00%    0.00%
 10  1    10    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1     1    1  |1 1>+         0.00%   85.07%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1     2    1  |1 1>+         0.00%    0.03%    0.00%    0.00%    0.00%    0.00%    0.00%    0.01%
 13  1     3    1  |1 1>+         0.00%    0.01%    0.00%    0.00%    0.00%    0.00%    0.00%    0.03%
 14  1     4    1  |1 1>+         0.00%    0.00%    0.00%    0.00%   28.99%    0.04%    6.89%    0.00%
 15  1     5    1  |1 1>+         0.00%    0.00%    0.03%    0.00%    0.01%    8.92%    0.00%    0.00%
 16  1     6    1  |1 1>+         0.00%    0.00%    0.00%    0.03%    0.00%    0.00%    0.00%    8.93%
 17  1     7    1  |1 1>+         0.00%    0.00%    5.99%    0.00%    0.00%    2.11%    0.00%    0.00%
 18  1     8    1  |1 1>+         0.01%    0.00%    0.00%    0.03%    0.54%    0.00%    2.27%    0.01%
 19  1     9    1  |1 1>+         0.00%    0.00%    0.00%    5.96%    0.00%    0.00%    0.01%    2.11%
 20  1     1    1  |1 0>          0.00%    0.00%   85.07%    0.00%    0.00%    0.00%    0.00%    0.00%
 21  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.05%   35.75%    0.00%    0.00%
 22  1     3    1  |1 0>          0.00%    0.00%    0.04%    0.00%    0.00%    0.18%    0.00%    0.00%
 23  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.03%    0.00%    0.00%    0.00%    8.96%
 24  1     5    1  |1 0>          0.00%    0.03%    0.00%    0.00%    0.00%    0.00%    0.00%    0.01%
 25  1     6    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.18%    0.00%   35.71%    0.00%
 26  1     7    1  |1 0>          0.00%    5.99%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 27  1     8    1  |1 0>          0.00%    0.00%    0.00%    5.96%    0.01%    0.00%    0.00%    2.11%
 28  1     9    1  |1 0>          0.01%    0.00%    0.00%    0.03%    2.79%    0.00%    0.01%    0.01%
 29  1     1    1  |1 1>-         0.00%    0.00%    0.00%   85.08%    0.00%    0.00%    0.00%    0.00%
 30  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.02%    0.00%    0.00%    0.00%   11.30%
 31  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.01%    0.00%    0.00%    0.00%   24.62%
 32  1     4    1  |1 1>-         0.00%    0.00%    0.03%    0.00%    0.01%    8.93%    0.00%    0.00%
 33  1     5    1  |1 1>-         0.00%    0.00%    0.00%    0.00%   24.60%    0.04%   11.26%    0.00%
 34  1     6    1  |1 1>-         0.00%    0.03%    0.00%    0.00%    0.00%    0.00%    0.00%    0.01%
 35  1     7    1  |1 1>-         0.01%    0.00%    0.00%    0.00%    0.88%    0.00%    1.94%    0.00%
 36  1     8    1  |1 1>-         0.00%    0.02%    5.97%    0.00%    0.00%    2.10%    0.00%    0.00%
 37  1     9    1  |1 1>-         0.00%    5.97%    0.02%    0.00%    0.00%    0.01%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.      9       10       11       12       13       14       15       16

  1  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  3  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  4  1     4    1  |0 0>         41.91%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  5  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  6  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  7  1     7    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  8  1     8    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  9  1     9    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 10  1    10    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1     2    1  |1 1>+         6.88%   53.58%    0.00%    0.00%    0.00%    0.00%    1.30%    0.00%
 13  1     3    1  |1 1>+        29.04%    5.44%    0.00%    0.00%    0.00%    0.00%   32.97%    0.00%
 14  1     4    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   33.32%
 15  1     5    1  |1 1>+         0.00%    0.00%    0.00%   19.77%   33.60%    0.00%    0.00%    0.00%
 16  1     6    1  |1 1>+         0.01%    0.00%   28.63%    0.00%    0.00%   24.74%    0.00%    0.00%
 17  1     7    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 18  1     8    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 19  1     9    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 20  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 21  1     2    1  |1 0>          0.00%    0.00%    0.00%   29.40%    3.99%    0.00%    0.00%    0.00%
 22  1     3    1  |1 0>          0.00%    0.00%    0.00%    5.59%   54.27%    0.00%    0.00%    0.00%
 23  1     4    1  |1 0>          0.01%    0.00%   12.08%    0.00%    0.00%   41.26%    0.00%    0.00%
 24  1     5    1  |1 0>          8.95%   10.76%    0.00%    0.00%    0.00%    0.00%   42.58%    0.00%
 25  1     6    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   33.35%
 26  1     7    1  |1 0>          2.12%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 27  1     8    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 28  1     9    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 29  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 30  1     2    1  |1 1>-         0.01%    0.00%   46.97%    0.00%    0.00%    4.62%    0.00%    0.00%
 31  1     3    1  |1 1>-         0.02%    0.00%   12.33%    0.00%    0.00%   29.37%    0.00%    0.00%
 32  1     4    1  |1 1>-         0.00%    0.00%    0.00%   45.23%    8.14%    0.00%    0.00%    0.00%
 33  1     5    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   33.34%
 34  1     6    1  |1 1>-         8.93%   30.22%    0.00%    0.00%    0.00%    0.00%   23.15%    0.00%
 35  1     7    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 36  1     8    1  |1 1>-         0.01%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 37  1     9    1  |1 1>-         2.11%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.     17       18       19       20       21       22       23       24

  1  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%   23.85%    0.00%    0.00%    0.00%
  3  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.02%    0.00%   23.83%
  4  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%   23.83%    0.00%    0.02%
  5  1     5    1  |0 0>          0.00%    0.00%    0.00%    2.73%    0.00%    0.00%   21.12%    0.00%
  6  1     6    1  |0 0>          0.00%    0.00%    0.00%   21.12%    0.00%    0.00%    2.73%    0.00%
  7  1     7    1  |0 0>          0.00%    0.01%   51.32%    0.00%    0.00%    0.00%    0.00%    0.00%
  8  1     8    1  |0 0>          0.00%   51.32%    0.01%    0.00%    0.00%    0.00%    0.00%    0.00%
  9  1     9    1  |0 0>         51.33%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 10  1    10    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1     1    1  |1 1>+         0.00%    0.42%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1     2    1  |1 1>+         0.00%    8.17%    0.00%    0.00%    0.00%    0.47%    0.00%    0.00%
 13  1     3    1  |1 1>+         0.00%    1.93%    0.00%    0.00%    0.00%    1.99%    0.00%    0.00%
 14  1     4    1  |1 1>+         0.00%    0.00%    0.00%    1.89%    0.00%    0.00%    0.57%    0.00%
 15  1     5    1  |1 1>+         7.58%    0.00%    0.00%    0.00%    0.62%    0.00%    0.00%    0.00%
 16  1     6    1  |1 1>+         0.00%    0.00%    7.58%    0.00%    0.00%    0.00%    0.00%    0.61%
 17  1     7    1  |1 1>+        11.50%    0.00%    0.00%    0.00%   36.23%    0.00%    0.00%    0.00%
 18  1     8    1  |1 1>+         0.00%    0.00%    0.05%   11.09%    0.00%    0.00%   37.00%    0.17%
 19  1     9    1  |1 1>+         0.00%    0.00%   11.44%    0.05%    0.00%    0.00%    0.17%   36.07%
 20  1     1    1  |1 0>          0.42%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 21  1     2    1  |1 0>          0.05%    0.00%    0.00%    0.00%    2.45%    0.00%    0.00%    0.00%
 22  1     3    1  |1 0>         10.05%    0.00%    0.00%    0.00%    0.01%    0.00%    0.00%    0.00%
 23  1     4    1  |1 0>          0.00%    0.00%    7.58%    0.00%    0.00%    0.00%    0.00%    0.61%
 24  1     5    1  |1 0>          0.00%    7.58%    0.00%    0.00%    0.00%    0.62%    0.00%    0.00%
 25  1     6    1  |1 0>          0.00%    0.00%    0.00%    1.80%    0.00%    0.00%    0.66%    0.00%
 26  1     7    1  |1 0>          0.00%   11.50%    0.00%    0.00%    0.00%   36.22%    0.00%    0.00%
 27  1     8    1  |1 0>          0.00%    0.00%   11.44%    0.06%    0.00%    0.00%    0.16%   36.06%
 28  1     9    1  |1 0>          0.00%    0.00%    0.05%   12.98%    0.00%    0.00%   35.11%    0.17%
 29  1     1    1  |1 1>-         0.00%    0.00%    0.42%    0.00%    0.00%    0.00%    0.00%    0.00%
 30  1     2    1  |1 1>-         0.00%    0.00%    6.93%    0.00%    0.00%    0.00%    0.00%    0.77%
 31  1     3    1  |1 1>-         0.00%    0.00%    3.17%    0.00%    0.00%    0.00%    0.00%    1.69%
 32  1     4    1  |1 1>-         7.58%    0.00%    0.00%    0.00%    0.61%    0.00%    0.00%    0.00%
 33  1     5    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    2.46%    0.00%
 34  1     6    1  |1 1>-         0.00%    7.58%    0.00%    0.00%    0.00%    0.61%    0.00%    0.00%
 35  1     7    1  |1 1>-         0.00%    0.00%    0.00%   48.29%    0.00%    0.00%    0.02%    0.00%
 36  1     8    1  |1 1>-        11.43%    0.05%    0.00%    0.00%   36.06%    0.17%    0.00%    0.00%
 37  1     9    1  |1 1>-         0.05%   11.43%    0.00%    0.00%    0.17%   36.06%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.     25       26       27       28       29       30       31       32

  1  1     1    1  |0 0>          0.03%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%   34.24%    0.00%    0.00%    0.00%
  3  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.06%    0.00%
  4  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   34.18%    0.01%
  5  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    9.04%    0.01%   25.20%
  6  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%   25.21%    0.00%    9.04%
  7  1     7    1  |0 0>          0.00%   26.55%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  8  1     8    1  |0 0>          0.00%    0.00%    0.06%   26.49%    0.00%    0.00%    0.00%    0.00%
  9  1     9    1  |0 0>          0.00%    0.00%   26.49%    0.06%    0.00%    0.00%    0.00%    0.00%
 10  1    10    1  |0 0>         32.19%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.56%    0.00%    0.00%    0.00%    0.00%
 12  1     2    1  |1 1>+         0.00%    0.00%    0.06%   23.02%    0.00%    0.00%    5.41%    0.00%
 13  1     3    1  |1 1>+         0.00%    0.00%    0.01%    5.44%    0.00%    0.00%   22.88%    0.01%
 14  1     4    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%   25.73%    0.00%    2.58%
 15  1     5    1  |1 1>+         0.00%    0.00%   21.34%    0.05%    7.07%    0.00%    0.00%    0.00%
 16  1     6    1  |1 1>+         0.00%   21.39%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 17  1     7    1  |1 1>+         0.00%    0.00%    0.78%    0.00%   11.68%    0.00%    0.00%    0.00%
 18  1     8    1  |1 1>+        22.49%    0.00%    0.00%    0.00%    0.00%    1.41%    0.00%   14.05%
 19  1     9    1  |1 1>+         0.10%    0.78%    0.00%    0.00%    0.00%    0.01%    0.00%    0.07%
 20  1     1    1  |1 0>          0.00%    0.00%    0.56%    0.00%    0.00%    0.00%    0.00%    0.00%
 21  1     2    1  |1 0>          0.00%    0.00%    0.14%    0.00%   28.16%    0.00%    0.00%    0.00%
 22  1     3    1  |1 0>          0.00%    0.00%   28.31%    0.07%    0.14%    0.00%    0.00%    0.00%
 23  1     4    1  |1 0>          0.00%   21.39%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 24  1     5    1  |1 0>          0.00%    0.00%    0.05%   21.34%    0.00%    0.00%    7.07%    0.00%
 25  1     6    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%   15.41%    0.00%   12.89%
 26  1     7    1  |1 0>          0.00%    0.00%    0.00%    0.78%    0.00%    0.00%   11.68%    0.00%
 27  1     8    1  |1 0>          0.10%    0.78%    0.00%    0.00%    0.00%    0.03%    0.00%    0.04%
 28  1     9    1  |1 0>         22.49%    0.00%    0.00%    0.00%    0.00%    7.04%    0.00%    8.42%
 29  1     1    1  |1 1>-         0.00%    0.56%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 30  1     2    1  |1 1>-         0.00%   19.57%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 31  1     3    1  |1 1>-         0.00%    8.95%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 32  1     4    1  |1 1>-         0.00%    0.00%   21.34%    0.05%    7.08%    0.00%    0.00%    0.00%
 33  1     5    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    1.31%    0.01%   26.98%
 34  1     6    1  |1 1>-         0.00%    0.00%    0.05%   21.34%    0.00%    0.00%    7.08%    0.00%
 35  1     7    1  |1 1>-        22.59%    0.00%    0.00%    0.00%    0.00%   14.81%    0.00%    0.72%
 36  1     8    1  |1 1>-         0.00%    0.00%    0.79%    0.00%   11.56%    0.00%    0.06%    0.00%
 37  1     9    1  |1 1>-         0.00%    0.00%    0.00%    0.79%    0.06%    0.00%   11.56%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.     33       34       35       36       37

  1  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.01%
  2  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%
  3  1     3    1  |0 0>         34.19%    0.00%    0.00%    0.00%    0.00%
  4  1     4    1  |0 0>          0.06%    0.00%    0.00%    0.00%    0.00%
  5  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%
  6  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%
  7  1     7    1  |0 0>          0.00%    0.00%    0.00%   19.26%    0.00%
  8  1     8    1  |0 0>          0.00%    0.00%   19.26%    0.00%    0.00%
  9  1     9    1  |0 0>          0.00%   19.26%    0.00%    0.00%    0.00%
 10  1    10    1  |0 0>          0.00%    0.00%    0.00%    0.00%   67.81%
 11  1     1    1  |1 1>+         0.00%    0.00%   13.94%    0.00%    0.00%
 12  1     2    1  |1 1>+         0.00%    0.00%    1.08%    0.00%    0.00%
 13  1     3    1  |1 1>+         0.00%    0.00%    0.26%    0.00%    0.00%
 14  1     4    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%
 15  1     5    1  |1 1>+         0.00%    1.00%    0.00%    0.00%    0.00%
 16  1     6    1  |1 1>+         7.07%    0.00%    0.00%    1.00%    0.00%
 17  1     7    1  |1 1>+         0.00%   31.70%    0.00%    0.00%    0.00%
 18  1     8    1  |1 1>+         0.06%    0.00%    0.00%    0.14%   10.68%
 19  1     9    1  |1 1>+        11.59%    0.00%    0.00%   31.59%    0.05%
 20  1     1    1  |1 0>          0.00%   13.94%    0.00%    0.00%    0.00%
 21  1     2    1  |1 0>          0.00%    0.01%    0.00%    0.00%    0.00%
 22  1     3    1  |1 0>          0.00%    1.33%    0.00%    0.00%    0.00%
 23  1     4    1  |1 0>          7.07%    0.00%    0.00%    1.00%    0.00%
 24  1     5    1  |1 0>          0.00%    0.00%    1.00%    0.00%    0.00%
 25  1     6    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%
 26  1     7    1  |1 0>          0.00%    0.00%   31.70%    0.00%    0.00%
 27  1     8    1  |1 0>         11.60%    0.00%    0.00%   31.59%    0.05%
 28  1     9    1  |1 0>          0.05%    0.00%    0.00%    0.14%   10.68%
 29  1     1    1  |1 1>-         0.00%    0.00%    0.00%   13.94%    0.00%
 30  1     2    1  |1 1>-         8.88%    0.00%    0.00%    0.92%    0.00%
 31  1     3    1  |1 1>-        19.41%    0.00%    0.00%    0.42%    0.00%
 32  1     4    1  |1 1>-         0.00%    1.00%    0.00%    0.00%    0.00%
 33  1     5    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%
 34  1     6    1  |1 1>-         0.00%    0.00%    1.00%    0.00%    0.00%
 35  1     7    1  |1 1>-         0.00%    0.00%    0.00%    0.00%   10.73%
 36  1     8    1  |1 1>-         0.00%   31.61%    0.15%    0.00%    0.00%
 37  1     9    1  |1 1>-         0.00%    0.15%   31.61%    0.00%    0.00%


 No matrix element <i|DMX|i> larger than 5E-7
 No matrix element <i|DMX|1> larger than 5E-7

 No matrix element <i|DMY|i> larger than 5E-7
 No matrix element <i|DMY|1> larger than 5E-7

 No matrix element <i|DMZ|i> larger than 5E-7
 No matrix element <i|DMZ|1> larger than 5E-7


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24     7026.11       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7     7140.53       700     1000      520     2100     2140     5201     5202   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI     LSINT        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *    120107.97  97957.08     60.66  10935.70  11128.87     14.33      1.38      9.65
 REAL TIME  *    121704.60 SEC
 DISK USED  *         7.11 GB (local),      123.68 GB (total)
 SF USED    *        35.23 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/USERDEF energy=  -2788.997499864783

              CI              CI           MULTI         RHF-SCF
  -2788.94810891  -2788.92816461  -2787.87139790  -2787.15769150
 **********************************************************************************************************************************
 Molpro calculation terminated with 1 warning(s)
