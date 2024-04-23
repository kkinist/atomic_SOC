
 Working directory              : /wrk/irikura/molpro.QKbxnK3EPV/
 Global scratch directory       : /wrk/irikura/molpro.QKbxnK3EPV/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.QKbxnK3EPV/

 id        : nistki

 Nodes            nprocs
 pn125343.nist.gov   12
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1009), CPU time= 0.00 sec
 ***,Ba SO-CI
 memory,1000,M;
 
 gprint,orbitals,civector;
 gthresh,twoint=1.d-12
 
 symmetry,xyz
 geometry={Ba};
 
 basis=aug-cc-pwCV5Z-PP
 
 {rhf;wf,sym=1,spin=0}
 
                                                                                 ! start with fewer terms
 {multi
     closed,1,3
     occ,8,3
     wf,sym=1,spin=0;state,1;
     wf,sym=1,spin=2;state,15;
     expec2,lxx,lyy,lzz;
 }
 table, energy, ll
 title, Prep energies and &lt;L**2&gt; values
 
 NSING=12
 NTRIP=16
 
                                                                                 ! active space (2/10)
 {multi
     closed,1,3
     occ,8,6
     wf,sym=1,spin=0;state,NSING;
     wf,sym=1,spin=2;state,NTRIP;
     expec2,lxx,lyy,lzz;
 }
 table, energy, ll
 title, Energies and &lt;L**2&gt; values
 
 core,0,0
 
 {ci;wf,sym=1,spin=0;state,NSING; save,5101.2}
 hlsdiag = energd4
 {ci;wf,sym=1,spin=2;state,NTRIP; save,5103.2}
 hlsdiag(NSING+1) = energd4
 
 table,hlsdiag
 
 lsint
 {ci;hlsmat,ecp,5101.2,5103.2;print,vls=0,hls=0}                                 !compute and diagonalize SO matrix
 Commands initialized (810), CPU time= 0.01 sec, 661 directives.
 Default parameters read. Elapsed time= 0.10 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2021.2 linked Jun  2 2021 00:13:23


 **********************************************************************************************************************************
 LABEL *   Ba SO-CI                                                                      
  64 bit mpp version                                                                     DATE: 17-Apr-24          TIME: 16:33:35  
 **********************************************************************************************************************************

 SHA1:             1987c3f1b0c3ae76932bc24993909f2d7ae6b1f1
 **********************************************************************************************************************************

 Memory per process:      1000 MW
 Total memory per node:  12000 MW

 GA preallocation disabled
 GA check disabled

 Variable memory set to 1000.0 MW



 THRESHOLDS:

 ZERO    =  1.00D-12  ONEINT  =  1.00D-12  TWOINT  =  1.00D-12  PREFAC  =  1.00D-14  XXXXXX  =  1.00D-09  EORDER  =  1.00D-04
 ENERGY  =  0.00D+00  ETEST   =  0.00D+00  EDENS   =  0.00D+00  THRDEDEF=  1.00D-06  GRADIENT=  1.00D-05  STEP    =  1.00D-03
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

 SETTING BASIS          =    AUG-CC-PWCV5Z-PP


 Recomputing integrals since basis changed


 Using spherical harmonics

 Library entry Ba   ECP ECP46MDF                 selected for group  1
 Library entry BA     S aug-cc-pwCV5Z-PP     selected for orbital group  1
 Library entry BA     P aug-cc-pwCV5Z-PP     selected for orbital group  1
 Library entry BA     D aug-cc-pwCV5Z-PP     selected for orbital group  1
 Library entry BA     F aug-cc-pwCV5Z-PP     selected for orbital group  1
 Library entry BA     G aug-cc-pwCV5Z-PP     selected for orbital group  1
 Library entry BA     H aug-cc-pwCV5Z-PP     selected for orbital group  1


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

   1  BA     10.00    0.000000000    0.000000000    0.000000000

 NUCLEAR CHARGE:                   10
 NUMBER OF PRIMITIVE AOS:         337
 NUMBER OF SYMMETRY AOS:          247
 NUMBER OF CONTRACTIONS:          213   (  101Ag  +  112Au  )
 NUMBER OF INNER CORE ORBITALS:     0   (    0Ag  +    0Au  )
 NUMBER OF OUTER CORE ORBITALS:     4   (    1Ag  +    3Au  )
 NUMBER OF VALENCE ORBITALS:        1   (    1Ag  +    0Au  )


 LX: Ag           LY: Ag           LZ: Ag 


 NUCLEAR REPULSION ENERGY    0.00000000

 EXTRA SYMMETRY OF AOS IN SYMMETRY 1:   1 1 1 1 1 1 1 1 1 1   1 2 3 4 5 6 2 3 4 5   6 2 3 4 5 6 2 3 4 5   6 2 3 4 5 6 2 3 4 5
                                        6 2 3 4 5 6 2 3 4 5   6 2 3 4 5 6 7 8 910  1112131415 7 8 91011  12131415 7 8 9101112
                                       131415 7 8 910111213  1415 7 8 91011121314  15
 EXTRA SYMMETRY OF AOS IN SYMMETRY 2:   1 2 3 1 2 3 1 2 3 1   2 3 1 2 3 1 2 3 1 2   3 1 2 3 1 2 3 1 2 3   4 5 6 7 8 910 4 5 6
                                        7 8 910 4 5 6 7 8 9  10 4 5 6 7 8 910 4 5   6 7 8 910 4 5 6 7 8   910 4 5 6 7 8 91011
                                       12131415161718192021  11121314151617181920  21111213141516171819  2021


 Eigenvalues of metric

         1 0.375E-04 0.266E-03 0.784E-03 0.784E-03 0.784E-03 0.784E-03 0.784E-03 0.135E-02
         2 0.408E-03 0.408E-03 0.408E-03 0.110E-02 0.110E-02 0.110E-02 0.398E-02 0.398E-02


 Contracted 2-electron integrals neglected if value below      1.0D-12
 AO integral compression algorithm  1   Integral accuracy      1.0D-12

     246.940 MB (compressed) written to integral file ( 13.6%)

     Node minimum: 14.418 MB, node maximum: 25.428 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:   10920087.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:   10920087      RECORD LENGTH: 524288

 Memory used in sort:      11.48 MW

 SORT1 READ   226482739. AND WROTE     1839503. INTEGRALS IN      6 RECORDS. CPU TIME:     0.96 SEC, REAL TIME:     1.01 SEC
 SORT2 READ    23241716. AND WROTE   131080516. INTEGRALS IN   1008 RECORDS. CPU TIME:     0.18 SEC, REAL TIME:     0.20 SEC

 Node minimum:    10913395.  Node maximum:    10938414. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      19       29.77       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         3.03      2.83
 REAL TIME  *         3.76 SEC
 DISK USED  *        30.09 MB (local),      843.52 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 Program * Restricted Hartree-Fock

 Orbital guess generated from atomic densities. Full valence occupancy:    2   3

 Initial occupancy:   2   3

 NELEC=   10   SYM=1   MS2= 0   THRE=1.0D-08   THRD=3.2D-06   THRG=3.2D-06  HFMA2=F  DIIS_START=2   DIIS_MAX=10   DIIS_INCORE=F

 Level shifts:    0.00 (CLOSED)    0.00 (OPEN)    0.30 (GAP_MIN)

 ITER           ETOT              DE          GRAD        DDIFF     DIIS  NEXP   TIME(IT)  TIME(TOT)  DIAG
   1      -24.68510439     -24.68510439     0.00D+00     0.26D+00     0     0       0.07      0.12    start
   2      -24.96654727      -0.28144287     0.17D-01     0.15D+00     1     0       0.06      0.18    diag
   3      -25.03741811      -0.07087085     0.39D-02     0.67D-01     2     0       0.05      0.23    diag
   4      -25.08903752      -0.05161941     0.26D-02     0.47D-01     3     0       0.06      0.29    diag
   5      -25.09491156      -0.00587404     0.86D-03     0.77D-02     4     0       0.05      0.34    diag
   6      -25.09500726      -0.00009570     0.12D-03     0.13D-02     5     0       0.06      0.40    diag
   7      -25.09501691      -0.00000965     0.39D-04     0.13D-02     6     0       0.06      0.46    diag
   8      -25.09501760      -0.00000069     0.12D-04     0.30D-03     7     0       0.05      0.51    diag
   9      -25.09501761      -0.00000001     0.17D-05     0.19D-04     8     0       0.06      0.57    diag
  10      -25.09501761      -0.00000000     0.38D-06     0.44D-05     9     0       0.05      0.62    diag/orth
  11      -25.09501761      -0.00000000     0.96D-07     0.25D-05     9     0       0.06      0.68    diag
  12      -25.09501761      -0.00000000     0.10D-07     0.84D-07     0     0       0.06      0.74    diag

 Final occupancy:   2   3

 !RHF STATE 1.1 Energy                -25.095017612110
  RHF One-electron energy             -41.272199558954
  RHF Two-electron energy              16.177181946844
  RHF Kinetic energy                    6.695439484744
  RHF Nuclear energy                    0.000000000000
  RHF Virial quotient                  -3.748076234471

 !RHF STATE 1.1 Dipole moment           0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 ELECTRON ORBITALS
 =================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -1.60487     1  1  s    0.99988
    2.1     2.00000    -0.16318     1  1  s   -0.31509    1  4  s    0.47981    1  5  s    0.61878
    1.2     2.00000    -0.89696     1  1  pz   0.99995
    2.2     2.00000    -0.89696     1  1  px   0.99995
    3.2     2.00000    -0.89696     1  1  py   0.99995


 HOMO      2.1    -0.163179 =      -4.4403eV
 LUMO      4.2     0.006813 =       0.1854eV
 LUMO-HOMO         0.169992 =       4.6257eV

 Orbitals saved in record  2100.2


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      19       29.77       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    

              2       4        3.00       700     1000      520     2100   
                                         GEOM     BASIS   MCVARS     RHF  

 PROGRAMS   *        TOTAL   RHF-SCF       INT
 CPU TIMES  *         3.79      0.75      2.83
 REAL TIME  *         4.59 SEC
 DISK USED  *        34.42 MB (local),      895.47 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of closed-shell orbitals:   4 (   1   3 )
 Number of active  orbitals:        7 (   7   0 )
 Number of external orbitals:     202 (  93 109 )

 State symmetry 1

 Number of active electrons:   2    Spin symmetry=Singlet   Space symmetry=1
 Number of states:             1
 Number of CSFs:              28   (49 determinants, 49 intermediate states)

 State symmetry 2

 Number of active electrons:   2    Spin symmetry=Triplet   Space symmetry=1
 Number of states:            15
 Number of CSFs:              21   (21 determinants, 21 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.341D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.453D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.275D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.786D-02 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 2 6 4 5 3 2 4   6 3 5 1 2 6 4 3 512   8 911 714151310 1 2   6 4 5 3 1 2 4 6 3 5
                                       11 9 81213101415 7 2   6 4 3 5 111 912 814  15 71310 2 3 4 6 5 9  1112 81415 71310 111
                                        912 81415 71310 3 6   4 5 2 6 5 4 3 2 1 1   1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.123D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.122D-02 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 1 2 1 2 3 3 1 2 3   1 2 4 5 6 810 7 9 3   1 21112151719211314  161820 3 2 1 810 5 4
                                        6 7 9 7 9 810 5 4 6   3 1 2 6 5 410 8 9 7  19211316141517111218  20 3 1 210 8 9 7 5 4
                                        6 3 2 1111219201816  1415172113 5 410 8 6   9 7 9 7 5 410 8 6 1   3 2

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.06250
 Weight factors for state symmetry  2:    0.06250   0.06250   0.06250   0.06250   0.06250   0.06250   0.06250   0.06250
                                          0.06250   0.06250   0.06250   0.06250   0.06250   0.06250   0.06250
 
 Number of orbital rotations:  1078  ( 7 closed/active, 420 closed/virtual, 0 active/active, 651 active/virtual )
 Total number of variables:    1442
 
  Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1   15   28   10    -24.87914921     -25.04923522   -0.17008601    0.05726372 0.00003969 0.00000000  0.21E+01      1.00
   2    8   14    0    -25.01327131     -25.02464986   -0.01137855    0.10076255 0.00003560 0.00000000  0.52E+00      1.79
   3    7   12    0    -25.02477246     -25.02478367   -0.00001121    0.00232475 0.00000344 0.00000000  0.15E-01      2.52
   4    5   10    0    -25.02478369     -25.02478369   -0.00000000    0.00000625 0.00000000 0.00000000  0.76E-04      3.11

 CONVERGENCE REACHED!  Final gradient:    0.00000000 ( 0.67E-10)
                       Final energy:    -25.02478369
 
 Results for state 1.1 Singlet
 =============================
 !MCSCF STATE 1.1 Singlet Energy               -25.101309012931
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.62015446
 One electron energy                           -41.25010192
 Two electron energy                            16.14879290
 Virial ratio                                    4.79165005
 
 !MCSCF STATE 1.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.1 Triplet
 =============================
 !MCSCF STATE 1.1 Triplet Energy               -25.061314490179
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.80609935
 One electron energy                           -41.50965344
 Two electron energy                            16.44833895
 Virial ratio                                    4.68218464
 
 !MCSCF STATE 1.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Triplet
 =============================
 !MCSCF STATE 2.1 Triplet Energy               -25.061314490178
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.80609935
 One electron energy                           -41.50965344
 Two electron energy                            16.44833895
 Virial ratio                                    4.68218464
 
 !MCSCF STATE 2.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Triplet
 =============================
 !MCSCF STATE 3.1 Triplet Energy               -25.061314490178
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.80609935
 One electron energy                           -41.50965344
 Two electron energy                            16.44833895
 Virial ratio                                    4.68218464
 
 !MCSCF STATE 3.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Triplet
 =============================
 !MCSCF STATE 4.1 Triplet Energy               -25.061314490178
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.80609935
 One electron energy                           -41.50965344
 Two electron energy                            16.44833895
 Virial ratio                                    4.68218464
 
 !MCSCF STATE 4.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Triplet
 =============================
 !MCSCF STATE 5.1 Triplet Energy               -25.061314490178
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.80609935
 One electron energy                           -41.50965344
 Two electron energy                            16.44833895
 Virial ratio                                    4.68218464
 
 !MCSCF STATE 5.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Triplet
 =============================
 !MCSCF STATE 6.1 Triplet Energy               -25.005052617119
 Nuclear energy                                  0.00000000
 Kinetic energy                                  7.05155842
 One electron energy                           -41.91406456
 Two electron energy                            16.90901194
 Virial ratio                                    4.54603211
 
 !MCSCF STATE 6.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.1 Triplet
 =============================
 !MCSCF STATE 7.1 Triplet Energy               -25.005052617119
 Nuclear energy                                  0.00000000
 Kinetic energy                                  7.05155842
 One electron energy                           -41.91406456
 Two electron energy                            16.90901194
 Virial ratio                                    4.54603211
 
 !MCSCF STATE 7.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.1 Triplet
 =============================
 !MCSCF STATE 8.1 Triplet Energy               -25.005052617117
 Nuclear energy                                  0.00000000
 Kinetic energy                                  7.05155842
 One electron energy                           -41.91406456
 Two electron energy                            16.90901194
 Virial ratio                                    4.54603211
 
 !MCSCF STATE 8.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 9.1 Triplet
 =============================
 !MCSCF STATE 9.1 Triplet Energy               -25.005052617117
 Nuclear energy                                  0.00000000
 Kinetic energy                                  7.05155842
 One electron energy                           -41.91406456
 Two electron energy                            16.90901194
 Virial ratio                                    4.54603211
 
 !MCSCF STATE 9.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 10.1 Triplet
 ==============================
 !MCSCF STATE 10.1 Triplet Energy              -25.005052617116
 Nuclear energy                                  0.00000000
 Kinetic energy                                  7.05155842
 One electron energy                           -41.91406456
 Two electron energy                            16.90901194
 Virial ratio                                    4.54603211
 
 !MCSCF STATE 10.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 11.1 Triplet
 ==============================
 !MCSCF STATE 11.1 Triplet Energy              -25.005052617115
 Nuclear energy                                  0.00000000
 Kinetic energy                                  7.05155842
 One electron energy                           -41.91406456
 Two electron energy                            16.90901194
 Virial ratio                                    4.54603211
 
 !MCSCF STATE 11.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 12.1 Triplet
 ==============================
 !MCSCF STATE 12.1 Triplet Energy              -25.005052617115
 Nuclear energy                                  0.00000000
 Kinetic energy                                  7.05155842
 One electron energy                           -41.91406456
 Two electron energy                            16.90901194
 Virial ratio                                    4.54603211
 
 !MCSCF STATE 12.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 13.1 Triplet
 ==============================
 !MCSCF STATE 13.1 Triplet Energy              -24.984429768756
 Nuclear energy                                  0.00000000
 Kinetic energy                                  7.05155842
 One electron energy                           -41.91406456
 Two electron energy                            16.92963479
 Virial ratio                                    4.54310753
 
 !MCSCF STATE 13.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 14.1 Triplet
 ==============================
 !MCSCF STATE 14.1 Triplet Energy              -24.984429768756
 Nuclear energy                                  0.00000000
 Kinetic energy                                  7.05155842
 One electron energy                           -41.91406456
 Two electron energy                            16.92963479
 Virial ratio                                    4.54310753
 
 !MCSCF STATE 14.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 15.1 Triplet
 ==============================
 !MCSCF STATE 15.1 Triplet Energy              -24.984429768754
 Nuclear energy                                  0.00000000
 Kinetic energy                                  7.05155842
 One electron energy                           -41.91406456
 Two electron energy                            16.92963479
 Virial ratio                                    4.54310753
 
 !MCSCF STATE 15.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 !MCSCF expec      <1.1 Singlet|LXLX|1.1 Singlet>     0.000000000000
 !MCSCF expec      <1.1 Triplet|LXLX|1.1 Triplet>     3.000100334625
 !MCSCF expec      <2.1 Triplet|LXLX|2.1 Triplet>     1.000000787434
 !MCSCF expec      <3.1 Triplet|LXLX|3.1 Triplet>     3.999418215705
 !MCSCF expec      <4.1 Triplet|LXLX|4.1 Triplet>     1.000580985045
 !MCSCF expec      <5.1 Triplet|LXLX|5.1 Triplet>     0.999899677191
 !MCSCF expec      <6.1 Triplet|LXLX|6.1 Triplet>     4.000118473430
 !MCSCF expec      <7.1 Triplet|LXLX|7.1 Triplet>     4.000000000000
 !MCSCF expec      <8.1 Triplet|LXLX|8.1 Triplet>     2.024683758966
 !MCSCF expec      <9.1 Triplet|LXLX|9.1 Triplet>     1.077674107608
 !MCSCF expec    <10.1 Triplet|LXLX|10.1 Triplet>     5.999881436196
 !MCSCF expec    <11.1 Triplet|LXLX|11.1 Triplet>     2.922326018350
 !MCSCF expec    <12.1 Triplet|LXLX|12.1 Triplet>     7.975316205450
 !MCSCF expec    <13.1 Triplet|LXLX|13.1 Triplet>     0.000000000003
 !MCSCF expec    <14.1 Triplet|LXLX|14.1 Triplet>     0.999999999997
 !MCSCF expec    <15.1 Triplet|LXLX|15.1 Triplet>     1.000000000000
 
 !MCSCF expec      <1.1 Singlet|LYLY|1.1 Singlet>     0.000000000000
 !MCSCF expec      <1.1 Triplet|LYLY|1.1 Triplet>     2.999899662019
 !MCSCF expec      <2.1 Triplet|LYLY|2.1 Triplet>     3.999999212565
 !MCSCF expec      <3.1 Triplet|LYLY|3.1 Triplet>     1.000000787273
 !MCSCF expec      <4.1 Triplet|LYLY|4.1 Triplet>     1.000000000162
 !MCSCF expec      <5.1 Triplet|LYLY|5.1 Triplet>     1.000100337981
 !MCSCF expec      <6.1 Triplet|LYLY|6.1 Triplet>     3.999881555542
 !MCSCF expec      <7.1 Triplet|LYLY|7.1 Triplet>     4.000000000000
 !MCSCF expec      <8.1 Triplet|LYLY|8.1 Triplet>     1.077621914156
 !MCSCF expec      <9.1 Triplet|LYLY|9.1 Triplet>     2.024605220158
 !MCSCF expec    <10.1 Triplet|LYLY|10.1 Triplet>     6.000118278613
 !MCSCF expec    <11.1 Triplet|LYLY|11.1 Triplet>     7.975394854405
 !MCSCF expec    <12.1 Triplet|LYLY|12.1 Triplet>     2.922378177127
 !MCSCF expec    <13.1 Triplet|LYLY|13.1 Triplet>     0.999999999997
 !MCSCF expec    <14.1 Triplet|LYLY|14.1 Triplet>     0.000000000008
 !MCSCF expec    <15.1 Triplet|LYLY|15.1 Triplet>     0.999999999995
 
 !MCSCF expec      <1.1 Singlet|LZLZ|1.1 Singlet>    -0.000000000000
 !MCSCF expec      <1.1 Triplet|LZLZ|1.1 Triplet>     0.000000003356
 !MCSCF expec      <2.1 Triplet|LZLZ|2.1 Triplet>     1.000000000000
 !MCSCF expec      <3.1 Triplet|LZLZ|3.1 Triplet>     1.000580997022
 !MCSCF expec      <4.1 Triplet|LZLZ|4.1 Triplet>     3.999419014793
 !MCSCF expec      <5.1 Triplet|LZLZ|5.1 Triplet>     3.999999984828
 !MCSCF expec      <6.1 Triplet|LZLZ|6.1 Triplet>     3.999999971028
 !MCSCF expec      <7.1 Triplet|LZLZ|7.1 Triplet>     4.000000000000
 !MCSCF expec      <8.1 Triplet|LZLZ|8.1 Triplet>     8.897694326878
 !MCSCF expec      <9.1 Triplet|LZLZ|9.1 Triplet>     8.897720672234
 !MCSCF expec    <10.1 Triplet|LZLZ|10.1 Triplet>     0.000000285191
 !MCSCF expec    <11.1 Triplet|LZLZ|11.1 Triplet>     1.102279127246
 !MCSCF expec    <12.1 Triplet|LZLZ|12.1 Triplet>     1.102305617423
 !MCSCF expec    <13.1 Triplet|LZLZ|13.1 Triplet>     1.000000000000
 !MCSCF expec    <14.1 Triplet|LZLZ|14.1 Triplet>     0.999999999995
 !MCSCF expec    <15.1 Triplet|LZLZ|15.1 Triplet>     0.000000000005
 
 !MCSCF expec      <1.1 Singlet|L**2|1.1 Singlet>    -0.000000000000
 !MCSCF expec      <1.1 Triplet|L**2|1.1 Triplet>     6.000000000000
 !MCSCF expec      <2.1 Triplet|L**2|2.1 Triplet>     6.000000000000
 !MCSCF expec      <3.1 Triplet|L**2|3.1 Triplet>     6.000000000000
 !MCSCF expec      <4.1 Triplet|L**2|4.1 Triplet>     6.000000000000
 !MCSCF expec      <5.1 Triplet|L**2|5.1 Triplet>     6.000000000000
 !MCSCF expec      <6.1 Triplet|L**2|6.1 Triplet>    12.000000000000
 !MCSCF expec      <7.1 Triplet|L**2|7.1 Triplet>    12.000000000000
 !MCSCF expec      <8.1 Triplet|L**2|8.1 Triplet>    12.000000000000
 !MCSCF expec      <9.1 Triplet|L**2|9.1 Triplet>    12.000000000000
 !MCSCF expec    <10.1 Triplet|L**2|10.1 Triplet>    12.000000000000
 !MCSCF expec    <11.1 Triplet|L**2|11.1 Triplet>    12.000000000000
 !MCSCF expec    <12.1 Triplet|L**2|12.1 Triplet>    12.000000000000
 !MCSCF expec    <13.1 Triplet|L**2|13.1 Triplet>     2.000000000000
 !MCSCF expec    <14.1 Triplet|L**2|14.1 Triplet>     2.000000000000
 !MCSCF expec    <15.1 Triplet|L**2|15.1 Triplet>     2.000000000000
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -1.52893     1  1  s    0.99199
    2.1     0.43189    -0.01817     1  1  s   -0.31956    1  4  s    0.46628    1  5  s    0.64651
    3.1     0.31353     0.06711     1  1  d2-  0.26403    1  2  d2-  0.34582    1  3  d2-  0.34989
    4.1     0.31353     0.06711     1  1  d2+  0.26403    1  2  d2+  0.34582    1  3  d2+  0.34989
    5.1     0.31353     0.06711     1  1  d0   0.26403    1  2  d0   0.34582    1  3  d0   0.34989
    6.1     0.31353     0.06711     1  1  d1-  0.26403    1  2  d1-  0.34582    1  3  d1-  0.34989
    7.1     0.31353     0.06711     1  1  d1+  0.26403    1  2  d1+  0.34582    1  3  d1+  0.34989
    8.1     0.00044     0.20720     1  1  s    0.57173    1  2  s    1.29254    1  3  s   -1.49382    1  4  s   -1.86571
                                    1  5  s    1.63554    1  6  s    0.26500
    1.2     2.00000    -0.83299     1  1  py   0.98740
    2.2     2.00000    -0.83299     1  1  px   0.98740
    3.2     2.00000    -0.83299     1  1  pz   0.98740
 *** IN SYMMETRY  1 ORBITAL  11 SYMMETRY CONTAMINATION OF 0.802D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  12 SYMMETRY CONTAMINATION OF 0.811D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  13 SYMMETRY CONTAMINATION OF 0.214D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  14 SYMMETRY CONTAMINATION OF 0.214D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  16 SYMMETRY CONTAMINATION OF 0.135D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  17 SYMMETRY CONTAMINATION OF 0.135D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  18 SYMMETRY CONTAMINATION OF 0.664D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  19 SYMMETRY CONTAMINATION OF 0.664D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  21 SYMMETRY CONTAMINATION OF 0.325D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  22 SYMMETRY CONTAMINATION OF 0.325D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  23 SYMMETRY CONTAMINATION OF 0.748D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  24 SYMMETRY CONTAMINATION OF 0.749D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  25 SYMMETRY CONTAMINATION OF 0.211D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  26 SYMMETRY CONTAMINATION OF 0.384D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  27 SYMMETRY CONTAMINATION OF 0.384D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  28 SYMMETRY CONTAMINATION OF 0.764D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  29 SYMMETRY CONTAMINATION OF 0.762D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  31 SYMMETRY CONTAMINATION OF 0.548D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  32 SYMMETRY CONTAMINATION OF 0.548D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  33 SYMMETRY CONTAMINATION OF 0.917D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  34 SYMMETRY CONTAMINATION OF 0.864D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  37 SYMMETRY CONTAMINATION OF 0.280D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  38 SYMMETRY CONTAMINATION OF 0.276D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  39 SYMMETRY CONTAMINATION OF 0.185D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  40 SYMMETRY CONTAMINATION OF 0.185D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  41 SYMMETRY CONTAMINATION OF 0.347D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  42 SYMMETRY CONTAMINATION OF 0.356D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  43 SYMMETRY CONTAMINATION OF 0.170D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  44 SYMMETRY CONTAMINATION OF 0.170D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  45 SYMMETRY CONTAMINATION OF 0.103D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  46 SYMMETRY CONTAMINATION OF 0.103D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  47 SYMMETRY CONTAMINATION OF 0.654D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  48 SYMMETRY CONTAMINATION OF 0.654D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  49 SYMMETRY CONTAMINATION OF 0.162D-03 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  51 SYMMETRY CONTAMINATION OF 0.193D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  52 SYMMETRY CONTAMINATION OF 0.193D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  53 SYMMETRY CONTAMINATION OF 0.224D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  54 SYMMETRY CONTAMINATION OF 0.224D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  56 SYMMETRY CONTAMINATION OF 0.942D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  57 SYMMETRY CONTAMINATION OF 0.943D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  58 SYMMETRY CONTAMINATION OF 0.398D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  59 SYMMETRY CONTAMINATION OF 0.398D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  60 SYMMETRY CONTAMINATION OF 0.464D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  61 SYMMETRY CONTAMINATION OF 0.464D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  62 SYMMETRY CONTAMINATION OF 0.685D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  63 SYMMETRY CONTAMINATION OF 0.153D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  64 SYMMETRY CONTAMINATION OF 0.152D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  66 SYMMETRY CONTAMINATION OF 0.701D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  67 SYMMETRY CONTAMINATION OF 0.701D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  68 SYMMETRY CONTAMINATION OF 0.189D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  69 SYMMETRY CONTAMINATION OF 0.189D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  70 SYMMETRY CONTAMINATION OF 0.206D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  71 SYMMETRY CONTAMINATION OF 0.206D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  72 SYMMETRY CONTAMINATION OF 0.833D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  73 SYMMETRY CONTAMINATION OF 0.833D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  74 SYMMETRY CONTAMINATION OF 0.506D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  75 SYMMETRY CONTAMINATION OF 0.229D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  76 SYMMETRY CONTAMINATION OF 0.229D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  77 SYMMETRY CONTAMINATION OF 0.395D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  78 SYMMETRY CONTAMINATION OF 0.395D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  80 SYMMETRY CONTAMINATION OF 0.268D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  81 SYMMETRY CONTAMINATION OF 0.268D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  82 SYMMETRY CONTAMINATION OF 0.314D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  83 SYMMETRY CONTAMINATION OF 0.314D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  84 SYMMETRY CONTAMINATION OF 0.275D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  85 SYMMETRY CONTAMINATION OF 0.300D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  86 SYMMETRY CONTAMINATION OF 0.125D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  87 SYMMETRY CONTAMINATION OF 0.300D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  88 SYMMETRY CONTAMINATION OF 0.300D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  90 SYMMETRY CONTAMINATION OF 0.344D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  91 SYMMETRY CONTAMINATION OF 0.344D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  92 SYMMETRY CONTAMINATION OF 0.651D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  93 SYMMETRY CONTAMINATION OF 0.651D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  95 SYMMETRY CONTAMINATION OF 0.785D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  96 SYMMETRY CONTAMINATION OF 0.500D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  97 SYMMETRY CONTAMINATION OF 0.694D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  98 SYMMETRY CONTAMINATION OF 0.694D-02 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 3 5 2 6 4 1 1 2   5 3 4 6 2 5 3 6 4 1   81211 9 714151310 2   3 5 6 4 1 2 3 5 6 4
                                       1310 911 8121514 7 2   3 5 4 6 1 911 81214  15 71310 2 3 5 4 611   912 8 715141310 111
                                        912 81514 71310 2 5   3 4 6 2 5 3 4 6 1 1   1
 *** IN SYMMETRY  2 ORBITAL   4 SYMMETRY CONTAMINATION OF 0.187D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL   6 SYMMETRY CONTAMINATION OF 0.187D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL   7 SYMMETRY CONTAMINATION OF 0.561D-03 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL   9 SYMMETRY CONTAMINATION OF 0.561D-03 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  11 SYMMETRY CONTAMINATION OF 0.183D-03 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  12 SYMMETRY CONTAMINATION OF 0.183D-03 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  13 SYMMETRY CONTAMINATION OF 0.570D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  14 SYMMETRY CONTAMINATION OF 0.889D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  15 SYMMETRY CONTAMINATION OF 0.215D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  16 SYMMETRY CONTAMINATION OF 0.130D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  17 SYMMETRY CONTAMINATION OF 0.138D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  18 SYMMETRY CONTAMINATION OF 0.622D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  19 SYMMETRY CONTAMINATION OF 0.623D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  20 SYMMETRY CONTAMINATION OF 0.130D-03 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  22 SYMMETRY CONTAMINATION OF 0.130D-03 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  23 SYMMETRY CONTAMINATION OF 0.875D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  24 SYMMETRY CONTAMINATION OF 0.813D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  25 SYMMETRY CONTAMINATION OF 0.144D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  26 SYMMETRY CONTAMINATION OF 0.165D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  27 SYMMETRY CONTAMINATION OF 0.263D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  28 SYMMETRY CONTAMINATION OF 0.226D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  29 SYMMETRY CONTAMINATION OF 0.144D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  30 SYMMETRY CONTAMINATION OF 0.455D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  31 SYMMETRY CONTAMINATION OF 0.455D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  32 SYMMETRY CONTAMINATION OF 0.312D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  33 SYMMETRY CONTAMINATION OF 0.312D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  37 SYMMETRY CONTAMINATION OF 0.287D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  38 SYMMETRY CONTAMINATION OF 0.287D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  39 SYMMETRY CONTAMINATION OF 0.103D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  40 SYMMETRY CONTAMINATION OF 0.300D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  41 SYMMETRY CONTAMINATION OF 0.268D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  42 SYMMETRY CONTAMINATION OF 0.457D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  43 SYMMETRY CONTAMINATION OF 0.467D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  44 SYMMETRY CONTAMINATION OF 0.452D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  45 SYMMETRY CONTAMINATION OF 0.451D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  46 SYMMETRY CONTAMINATION OF 0.501D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  47 SYMMETRY CONTAMINATION OF 0.501D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  48 SYMMETRY CONTAMINATION OF 0.190D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  49 SYMMETRY CONTAMINATION OF 0.104D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  50 SYMMETRY CONTAMINATION OF 0.498D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  54 SYMMETRY CONTAMINATION OF 0.124D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  55 SYMMETRY CONTAMINATION OF 0.363D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  56 SYMMETRY CONTAMINATION OF 0.144D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  57 SYMMETRY CONTAMINATION OF 0.645D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  58 SYMMETRY CONTAMINATION OF 0.634D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  59 SYMMETRY CONTAMINATION OF 0.313D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  60 SYMMETRY CONTAMINATION OF 0.313D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  61 SYMMETRY CONTAMINATION OF 0.686D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  62 SYMMETRY CONTAMINATION OF 0.680D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  63 SYMMETRY CONTAMINATION OF 0.126D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  64 SYMMETRY CONTAMINATION OF 0.323D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  65 SYMMETRY CONTAMINATION OF 0.619D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  66 SYMMETRY CONTAMINATION OF 0.571D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  67 SYMMETRY CONTAMINATION OF 0.719D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  68 SYMMETRY CONTAMINATION OF 0.105D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  69 SYMMETRY CONTAMINATION OF 0.102D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  70 SYMMETRY CONTAMINATION OF 0.898D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  71 SYMMETRY CONTAMINATION OF 0.935D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  75 SYMMETRY CONTAMINATION OF 0.605D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  76 SYMMETRY CONTAMINATION OF 0.605D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  77 SYMMETRY CONTAMINATION OF 0.221D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  78 SYMMETRY CONTAMINATION OF 0.221D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  79 SYMMETRY CONTAMINATION OF 0.424D-03 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  80 SYMMETRY CONTAMINATION OF 0.104D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  81 SYMMETRY CONTAMINATION OF 0.105D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  85 SYMMETRY CONTAMINATION OF 0.126D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  86 SYMMETRY CONTAMINATION OF 0.121D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  87 SYMMETRY CONTAMINATION OF 0.112D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  88 SYMMETRY CONTAMINATION OF 0.702D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  89 SYMMETRY CONTAMINATION OF 0.701D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  90 SYMMETRY CONTAMINATION OF 0.137D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  91 SYMMETRY CONTAMINATION OF 0.105D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  92 SYMMETRY CONTAMINATION OF 0.638D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  93 SYMMETRY CONTAMINATION OF 0.634D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  94 SYMMETRY CONTAMINATION OF 0.666D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  95 SYMMETRY CONTAMINATION OF 0.666D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  96 SYMMETRY CONTAMINATION OF 0.117D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  97 SYMMETRY CONTAMINATION OF 0.341D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  98 SYMMETRY CONTAMINATION OF 0.333D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  99 SYMMETRY CONTAMINATION OF 0.888D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL 100 SYMMETRY CONTAMINATION OF 0.175D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL 101 SYMMETRY CONTAMINATION OF 0.165D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL 102 SYMMETRY CONTAMINATION OF 0.165D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL 103 SYMMETRY CONTAMINATION OF 0.100D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL 104 SYMMETRY CONTAMINATION OF 0.100D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL 105 SYMMETRY CONTAMINATION OF 0.524D-03 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL 106 SYMMETRY CONTAMINATION OF 0.912D-03 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL 107 SYMMETRY CONTAMINATION OF 0.484D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL 108 SYMMETRY CONTAMINATION OF 0.484D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL 109 SYMMETRY CONTAMINATION OF 0.597D-03 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   2 1 3 2 1 3 2 1 3 1   2 3 5 4 6 7 910 8 2   1 31211151714191621  132018 1 2 3 810 4 5
                                        6 7 9 7 9 810 5 4 6   2 1 3 6 5 4 810 7 9  15171916142113182011  12 1 2 3 7 9 810 6 5
                                        4 2 1 3121119182015  1714162113 6 810 5 4   9 7 9 7 4 510 8 6 2   1 3
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Reoptimze the CI vectors with natural orbitals 
 
 CI Coefficients of symmetry 1 (Singlet)
 =======================================
 
 2000000        0.97688943
 0200000       -0.09094538
 0020000       -0.09094538
 0002000       -0.09094538
 0000200       -0.09094538
 0000020       -0.09094538
 
 Energy:      -25.10130901
 
 
 CI Coefficients of symmetry 1 (Triplet)
 =======================================

 State:              1               2               3               4               5               6               7
 00aa000       -0.00000000     -0.00000000      0.00000000      0.00000000      0.00000000     -0.00000000      1.00000000
 0a0a000       -0.00000000     -0.00000000     -0.00000000      0.00000000      0.00000000      1.00000000     -0.00000000
 aa00000       -0.00000000      0.00000000      0.00000000      0.99991759     -0.00000000     -0.00000000     -0.00000000
 a0a0000        0.00000679      0.00000000     -0.00000000      0.00000000      0.99991759     -0.00000000     -0.00000000
 a000a00        0.00000015      0.99991758      0.00013671      0.00000000     -0.00000000      0.00000000      0.00000000
 a00a000        0.99991757     -0.00000012     -0.00019436     -0.00000000     -0.00000679      0.00000000      0.00000000
 a0000a0        0.00019436     -0.00013671      0.99991756      0.00000000     -0.00000000      0.00000000     -0.00000000
 0aa0000       -0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000000      0.00000335      0.00000000
 0000aa0        0.00000000      0.00000000      0.00000000     -0.00000000     -0.00000000     -0.00000669     -0.00000000
 000a0a0       -0.00000000      0.00000000     -0.00000000      0.00000000      0.00000000      0.00000000      0.00000000
 000aa00       -0.00000000     -0.00000000     -0.00000000      0.00000000      0.00000000      0.00000000      0.00000000
 0a000a0       -0.00000000     -0.00000000      0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000
 0a00a00        0.00000000      0.00000000     -0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000
 00a00a0        0.00000000      0.00000000     -0.00000000      0.00000000      0.00000000     -0.00000000     -0.00000000
 00a0a00        0.00000000      0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000      0.00000000
 
 Energy:      -25.06131449    -25.06131449    -25.06131449    -25.06131449    -25.06131449    -25.00505262    -25.00505262

 State:              8               9              10              11              12              13              14
 00aa000       -0.00000000     -0.00000000      0.00000000     -0.00000000     -0.00000000      0.00000000     -0.00000000
 0a0a000        0.00000000      0.00000000      0.00000748      0.00000000     -0.00000000     -0.00000000     -0.00000000
 aa00000       -0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00000000      0.00000000      0.00000000
 a0a0000        0.00000000      0.00000000     -0.00000000     -0.00000000      0.00000000      0.00000000      0.00000000
 a000a00       -0.00000000      0.00000000     -0.00000000      0.00000000      0.00000000      0.00000000      0.00000000
 a00a000       -0.00000000      0.00000000     -0.00000000     -0.00000000      0.00000000      0.00000000      0.00000000
 a0000a0        0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000000
 0aa0000        0.00000000      0.00000000     -0.44721360     -0.00000000     -0.00000000     -0.00000000      0.00000000
 0000aa0       -0.00000000     -0.00000000      0.89442719      0.00000000      0.00000000      0.00000000     -0.00000000
 000a0a0        0.07135379      0.00037931     -0.00000000      0.62836585     -0.00805326      0.77459667     -0.00000770
 000aa00       -0.00036689      0.07149874      0.00000000      0.00805155      0.62834940      0.00000770      0.77459667
 0a000a0       -0.00404008      0.76448352     -0.00000000      0.00594701      0.46423406     -0.00000444     -0.44721360
 0a00a00        0.76437641      0.00404926      0.00000000      0.46441008     -0.00596530     -0.44721360      0.00000444
 00a00a0       -0.64078803     -0.00339227      0.00000000      0.62395149     -0.00798335     -0.44721360      0.00000444
 00a0a00       -0.00340461      0.64064408      0.00000000     -0.00799869     -0.62409903      0.00000444      0.44721360
 
 Energy:      -25.00505262    -25.00505262    -25.00505262    -25.00505262    -25.00505262    -24.98442977    -24.98442977

 State:             15
 00aa000        0.00000000
 0a0a000       -0.00000000
 aa00000       -0.00000000
 a0a0000        0.00000000
 a000a00       -0.00000000
 a00a000        0.00000000
 a0000a0        0.00000000
 0aa0000        0.89442719
 0000aa0        0.44721360
 000a0a0       -0.00000000
 000aa00       -0.00000000
 0a000a0        0.00000000
 0a00a00       -0.00000000
 00a00a0       -0.00000000
 00a0a00       -0.00000000
 
 Energy:      -24.98442977
 


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       48.09       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       5        6.24       700     1000      520     2100     2140   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF   

 PROGRAMS   *        TOTAL     MULTI   RHF-SCF       INT
 CPU TIMES  *         6.54      2.74      0.75      2.83
 REAL TIME  *         8.20 SEC
 DISK USED  *        54.41 MB (local),        1.11 GB (total)
 SF USED    *        53.26 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Prep energies and &lt;L**2&gt; values

        ENERGY       LL
    -25.10130901   -0.0
    -25.06131449    6.0
    -25.06131449    6.0
    -25.06131449    6.0
    -25.06131449    6.0
    -25.06131449    6.0
    -25.00505262   12.0
    -25.00505262   12.0
    -25.00505262   12.0
    -25.00505262   12.0
    -25.00505262   12.0
    -25.00505262   12.0
    -25.00505262   12.0
    -24.98442977    2.0
    -24.98442977    2.0
    -24.98442977    2.0
                                                  
 SETTING NSING          =        12.00000000                                  
 SETTING NTRIP          =        16.00000000                                  

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of closed-shell orbitals:   4 (   1   3 )
 Number of active  orbitals:       10 (   7   3 )
 Number of external orbitals:     199 (  93 106 )

 State symmetry 1

 Number of active electrons:   2    Spin symmetry=Singlet   Space symmetry=1
 Number of states:            12
 Number of CSFs:              34   (58 determinants, 100 intermediate states)

 State symmetry 2

 Number of active electrons:   2    Spin symmetry=Triplet   Space symmetry=1
 Number of states:            16
 Number of CSFs:              24   (24 determinants, 45 intermediate states)

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 3 5 2 6 4 1 1 2   5 3 4 6 2 5 3 6 4 1   81211 9 714151310 2   3 5 6 4 1 2 3 5 6 4
                                       1310 911 8121514 7 2   3 5 4 6 1 911 81214  15 71310 2 3 5 4 611   912 8 715141310 111
                                        912 81514 71310 2 5   3 4 6 2 5 3 4 6 1 1   1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   2 1 3 2 1 3 2 1 3 1   2 3 5 4 6 7 910 8 2   1 31211151714191621  132018 1 2 3 810 4 5
                                        6 7 9 7 9 810 5 4 6   2 1 3 6 5 4 810 7 9  15171916142113182011  12 1 2 3 7 9 810 6 5
                                        4 2 1 3121119182015  1714162113 6 810 5 4   9 7 9 7 4 510 8 6 2   1 3

 Wavefunction dump at record             2141.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.03571   0.03571   0.03571   0.03571   0.03571   0.03571   0.03571   0.03571
                                          0.03571   0.03571   0.03571   0.03571
 Weight factors for state symmetry  2:    0.03571   0.03571   0.03571   0.03571   0.03571   0.03571   0.03571   0.03571
                                          0.03571   0.03571   0.03571   0.03571   0.03571   0.03571   0.03571   0.03571
 
 Number of orbital rotations:  1396  ( 16 closed/active, 411 closed/virtual, 0 active/active, 969 active/virtual )
 Total number of variables:    2476
 
  Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1   12   22   10    -25.01466950     -25.02661728   -0.01194777    0.00490865 0.00001577 0.00000000  0.16E+01      1.23
   2    9   16    0    -25.02471553     -25.02557197   -0.00085645    0.00510323 0.00000132 0.00000000  0.31E+00      2.39
   3    6   12    0    -25.02557429     -25.02557436   -0.00000007    0.00002641 0.00000000 0.00000000  0.30E-02      3.27
   4    2    4    0    -25.02557436     -25.02557436    0.00000000    0.00000000 0.00000000 0.00000000  0.30E-07      3.89

 CONVERGENCE REACHED!  Final gradient:    0.00000000 ( 0.11E-10)
                       Final energy:    -25.02557436
 
 Results for state 1.1 Singlet
 =============================
 !MCSCF STATE 1.1 Singlet Energy               -25.116000384967
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.62051265
 One electron energy                           -41.16136286
 Two electron energy                            16.04536248
 Virial ratio                                    4.79366398
 
 !MCSCF STATE 1.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Singlet
 =============================
 !MCSCF STATE 2.1 Singlet Energy               -25.054218027798
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.81651737
 One electron energy                           -41.41050615
 Two electron energy                            16.35628813
 Virial ratio                                    4.67551591
 
 !MCSCF STATE 2.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Singlet
 =============================
 !MCSCF STATE 3.1 Singlet Energy               -25.054218027798
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.81651737
 One electron energy                           -41.41050615
 Two electron energy                            16.35628813
 Virial ratio                                    4.67551591
 
 !MCSCF STATE 3.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Singlet
 =============================
 !MCSCF STATE 4.1 Singlet Energy               -25.054218027798
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.81651737
 One electron energy                           -41.41050615
 Two electron energy                            16.35628813
 Virial ratio                                    4.67551591
 
 !MCSCF STATE 4.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Singlet
 =============================
 !MCSCF STATE 5.1 Singlet Energy               -25.054218027797
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.81651737
 One electron energy                           -41.41050615
 Two electron energy                            16.35628813
 Virial ratio                                    4.67551591
 
 !MCSCF STATE 5.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Singlet
 =============================
 !MCSCF STATE 6.1 Singlet Energy               -25.054218027797
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.81651737
 One electron energy                           -41.41050615
 Two electron energy                            16.35628813
 Virial ratio                                    4.67551591
 
 !MCSCF STATE 6.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.1 Singlet
 =============================
 !MCSCF STATE 7.1 Singlet Energy               -24.999969634524
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.96757863
 One electron energy                           -41.58807051
 Two electron energy                            16.58810087
 Virial ratio                                    4.58804270
 
 !MCSCF STATE 7.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.1 Singlet
 =============================
 !MCSCF STATE 8.1 Singlet Energy               -24.999969634524
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.96757863
 One electron energy                           -41.58807051
 Two electron energy                            16.58810087
 Virial ratio                                    4.58804270
 
 !MCSCF STATE 8.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 9.1 Singlet
 =============================
 !MCSCF STATE 9.1 Singlet Energy               -24.999969634523
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.96757863
 One electron energy                           -41.58807051
 Two electron energy                            16.58810087
 Virial ratio                                    4.58804270
 
 !MCSCF STATE 9.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 10.1 Singlet
 ==============================
 !MCSCF STATE 10.1 Singlet Energy              -24.999969634523
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.96757863
 One electron energy                           -41.58807051
 Two electron energy                            16.58810087
 Virial ratio                                    4.58804270
 
 !MCSCF STATE 10.1 Singlet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 11.1 Singlet
 ==============================
 !MCSCF STATE 11.1 Singlet Energy              -24.999969634523
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.96757863
 One electron energy                           -41.58807051
 Two electron energy                            16.58810087
 Virial ratio                                    4.58804270
 
 !MCSCF STATE 11.1 Singlet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 12.1 Singlet
 ==============================
 !MCSCF STATE 12.1 Singlet Energy              -24.992836812090
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.71075267
 One electron energy                           -40.75533471
 Two electron energy                            15.76249790
 Virial ratio                                    4.72429711
 
 !MCSCF STATE 12.1 Singlet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.1 Triplet
 =============================
 !MCSCF STATE 1.1 Triplet Energy               -25.061161071171
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.83247125
 One electron energy                           -41.52139944
 Two electron energy                            16.46023837
 Virial ratio                                    4.66794973
 
 !MCSCF STATE 1.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Triplet
 =============================
 !MCSCF STATE 2.1 Triplet Energy               -25.061161071171
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.83247125
 One electron energy                           -41.52139944
 Two electron energy                            16.46023837
 Virial ratio                                    4.66794973
 
 !MCSCF STATE 2.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Triplet
 =============================
 !MCSCF STATE 3.1 Triplet Energy               -25.061161071171
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.83247125
 One electron energy                           -41.52139944
 Two electron energy                            16.46023837
 Virial ratio                                    4.66794973
 
 !MCSCF STATE 3.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Triplet
 =============================
 !MCSCF STATE 4.1 Triplet Energy               -25.061161071171
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.83247125
 One electron energy                           -41.52139944
 Two electron energy                            16.46023837
 Virial ratio                                    4.66794973
 
 !MCSCF STATE 4.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Triplet
 =============================
 !MCSCF STATE 5.1 Triplet Energy               -25.061161071171
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.83247125
 One electron energy                           -41.52139944
 Two electron energy                            16.46023837
 Virial ratio                                    4.66794973
 
 !MCSCF STATE 5.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Triplet
 =============================
 !MCSCF STATE 6.1 Triplet Energy               -25.004480553521
 Nuclear energy                                  0.00000000
 Kinetic energy                                  7.06348755
 One electron energy                           -41.88765129
 Two electron energy                            16.88317074
 Virial ratio                                    4.53996243
 
 !MCSCF STATE 6.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.1 Triplet
 =============================
 !MCSCF STATE 7.1 Triplet Energy               -25.004480553521
 Nuclear energy                                  0.00000000
 Kinetic energy                                  7.06348755
 One electron energy                           -41.88765129
 Two electron energy                            16.88317074
 Virial ratio                                    4.53996243
 
 !MCSCF STATE 7.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.1 Triplet
 =============================
 !MCSCF STATE 8.1 Triplet Energy               -25.004480553519
 Nuclear energy                                  0.00000000
 Kinetic energy                                  7.06348755
 One electron energy                           -41.88765129
 Two electron energy                            16.88317074
 Virial ratio                                    4.53996243
 
 !MCSCF STATE 8.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 9.1 Triplet
 =============================
 !MCSCF STATE 9.1 Triplet Energy               -25.004480553519
 Nuclear energy                                  0.00000000
 Kinetic energy                                  7.06348755
 One electron energy                           -41.88765129
 Two electron energy                            16.88317074
 Virial ratio                                    4.53996243
 
 !MCSCF STATE 9.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 10.1 Triplet
 ==============================
 !MCSCF STATE 10.1 Triplet Energy              -25.004480553518
 Nuclear energy                                  0.00000000
 Kinetic energy                                  7.06348755
 One electron energy                           -41.88765129
 Two electron energy                            16.88317074
 Virial ratio                                    4.53996243
 
 !MCSCF STATE 10.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 11.1 Triplet
 ==============================
 !MCSCF STATE 11.1 Triplet Energy              -25.004480553517
 Nuclear energy                                  0.00000000
 Kinetic energy                                  7.06348755
 One electron energy                           -41.88765129
 Two electron energy                            16.88317074
 Virial ratio                                    4.53996243
 
 !MCSCF STATE 11.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 12.1 Triplet
 ==============================
 !MCSCF STATE 12.1 Triplet Energy              -25.004480553517
 Nuclear energy                                  0.00000000
 Kinetic energy                                  7.06348755
 One electron energy                           -41.88765129
 Two electron energy                            16.88317074
 Virial ratio                                    4.53996243
 
 !MCSCF STATE 12.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 13.1 Triplet
 ==============================
 !MCSCF STATE 13.1 Triplet Energy              -25.000200667166
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.92804654
 One electron energy                           -41.47492461
 Two electron energy                            16.47472394
 Virial ratio                                    4.60854976
 
 !MCSCF STATE 13.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 14.1 Triplet
 ==============================
 !MCSCF STATE 14.1 Triplet Energy              -25.000200667166
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.92804654
 One electron energy                           -41.47492461
 Two electron energy                            16.47472394
 Virial ratio                                    4.60854976
 
 !MCSCF STATE 14.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 15.1 Triplet
 ==============================
 !MCSCF STATE 15.1 Triplet Energy              -25.000200667165
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.92804654
 One electron energy                           -41.47492461
 Two electron energy                            16.47472394
 Virial ratio                                    4.60854976
 
 !MCSCF STATE 15.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 16.1 Triplet
 ==============================
 !MCSCF STATE 16.1 Triplet Energy              -24.998535339702
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.53151417
 One electron energy                           -40.16933616
 Two electron energy                            15.17080082
 Virial ratio                                    4.82737214
 
 !MCSCF STATE 16.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2141.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 !MCSCF expec      <1.1 Singlet|LXLX|1.1 Singlet>    -0.000000000000
 !MCSCF expec      <2.1 Singlet|LXLX|2.1 Singlet>     3.000284688494
 !MCSCF expec      <3.1 Singlet|LXLX|3.1 Singlet>     1.000000596100
 !MCSCF expec      <4.1 Singlet|LXLX|4.1 Singlet>     3.999999311149
 !MCSCF expec      <5.1 Singlet|LXLX|5.1 Singlet>     1.000000092751
 !MCSCF expec      <6.1 Singlet|LXLX|6.1 Singlet>     0.999715311506
 !MCSCF expec      <7.1 Singlet|LXLX|7.1 Singlet>     1.000000132373
 !MCSCF expec      <8.1 Singlet|LXLX|8.1 Singlet>     2.999340628796
 !MCSCF expec      <9.1 Singlet|LXLX|9.1 Singlet>     1.000659371204
 !MCSCF expec    <10.1 Singlet|LXLX|10.1 Singlet>     3.309368524275
 !MCSCF expec    <11.1 Singlet|LXLX|11.1 Singlet>     1.690631343351
 !MCSCF expec    <12.1 Singlet|LXLX|12.1 Singlet>    -0.000000000000
 !MCSCF expec      <1.1 Triplet|LXLX|1.1 Triplet>     3.000000546645
 !MCSCF expec      <2.1 Triplet|LXLX|2.1 Triplet>     1.824702355313
 !MCSCF expec      <3.1 Triplet|LXLX|3.1 Triplet>     3.175297644695
 !MCSCF expec      <4.1 Triplet|LXLX|4.1 Triplet>     1.000000000000
 !MCSCF expec      <5.1 Triplet|LXLX|5.1 Triplet>     0.999999453347
 !MCSCF expec      <6.1 Triplet|LXLX|6.1 Triplet>     3.999912534053
 !MCSCF expec      <7.1 Triplet|LXLX|7.1 Triplet>     3.999999989003
 !MCSCF expec      <8.1 Triplet|LXLX|8.1 Triplet>     1.071094391292
 !MCSCF expec      <9.1 Triplet|LXLX|9.1 Triplet>     2.034543386869
 !MCSCF expec    <10.1 Triplet|LXLX|10.1 Triplet>     6.000087465947
 !MCSCF expec    <11.1 Triplet|LXLX|11.1 Triplet>     7.965456617133
 !MCSCF expec    <12.1 Triplet|LXLX|12.1 Triplet>     2.928905615703
 !MCSCF expec    <13.1 Triplet|LXLX|13.1 Triplet>     0.995426593857
 !MCSCF expec    <14.1 Triplet|LXLX|14.1 Triplet>     0.004573406143
 !MCSCF expec    <15.1 Triplet|LXLX|15.1 Triplet>     1.000000000000
 !MCSCF expec    <16.1 Triplet|LXLX|16.1 Triplet>    -0.000000000000
 
 !MCSCF expec      <1.1 Singlet|LYLY|1.1 Singlet>    -0.000000000000
 !MCSCF expec      <2.1 Singlet|LYLY|2.1 Singlet>     2.999715284488
 !MCSCF expec      <3.1 Singlet|LYLY|3.1 Singlet>     3.999999357466
 !MCSCF expec      <4.1 Singlet|LYLY|4.1 Singlet>     1.000000596042
 !MCSCF expec      <5.1 Singlet|LYLY|5.1 Singlet>     1.000000046492
 !MCSCF expec      <6.1 Singlet|LYLY|6.1 Singlet>     1.000284715512
 !MCSCF expec      <7.1 Singlet|LYLY|7.1 Singlet>     1.000000459632
 !MCSCF expec      <8.1 Singlet|LYLY|8.1 Singlet>     3.000659226312
 !MCSCF expec      <9.1 Singlet|LYLY|9.1 Singlet>     0.999340773688
 !MCSCF expec    <10.1 Singlet|LYLY|10.1 Singlet>     1.690631475688
 !MCSCF expec    <11.1 Singlet|LYLY|11.1 Singlet>     3.309368064680
 !MCSCF expec    <12.1 Singlet|LYLY|12.1 Singlet>    -0.000000000000
 !MCSCF expec      <1.1 Triplet|LYLY|1.1 Triplet>     2.999999453351
 !MCSCF expec      <2.1 Triplet|LYLY|2.1 Triplet>     3.175297644691
 !MCSCF expec      <3.1 Triplet|LYLY|3.1 Triplet>     1.824702355305
 !MCSCF expec      <4.1 Triplet|LYLY|4.1 Triplet>     1.000000000000
 !MCSCF expec      <5.1 Triplet|LYLY|5.1 Triplet>     1.000000546653
 !MCSCF expec      <6.1 Triplet|LYLY|6.1 Triplet>     4.000087466457
 !MCSCF expec      <7.1 Triplet|LYLY|7.1 Triplet>     3.999999995797
 !MCSCF expec      <8.1 Triplet|LYLY|8.1 Triplet>     2.034546991758
 !MCSCF expec      <9.1 Triplet|LYLY|9.1 Triplet>     1.071096782517
 !MCSCF expec    <10.1 Triplet|LYLY|10.1 Triplet>     5.999912533543
 !MCSCF expec    <11.1 Triplet|LYLY|11.1 Triplet>     2.928903228703
 !MCSCF expec    <12.1 Triplet|LYLY|12.1 Triplet>     7.965453001225
 !MCSCF expec    <13.1 Triplet|LYLY|13.1 Triplet>     0.004573406143
 !MCSCF expec    <14.1 Triplet|LYLY|14.1 Triplet>     0.995426593857
 !MCSCF expec    <15.1 Triplet|LYLY|15.1 Triplet>     1.000000000000
 !MCSCF expec    <16.1 Triplet|LYLY|16.1 Triplet>    -0.000000000000
 
 !MCSCF expec      <1.1 Singlet|LZLZ|1.1 Singlet>    -0.000000000000
 !MCSCF expec      <2.1 Singlet|LZLZ|2.1 Singlet>     0.000000027018
 !MCSCF expec      <3.1 Singlet|LZLZ|3.1 Singlet>     1.000000046433
 !MCSCF expec      <4.1 Singlet|LZLZ|4.1 Singlet>     1.000000092809
 !MCSCF expec      <5.1 Singlet|LZLZ|5.1 Singlet>     3.999999860758
 !MCSCF expec      <6.1 Singlet|LZLZ|6.1 Singlet>     3.999999972982
 !MCSCF expec      <7.1 Singlet|LZLZ|7.1 Singlet>     3.999999407994
 !MCSCF expec      <8.1 Singlet|LZLZ|8.1 Singlet>     0.000000144892
 !MCSCF expec      <9.1 Singlet|LZLZ|9.1 Singlet>     3.999999855108
 !MCSCF expec    <10.1 Singlet|LZLZ|10.1 Singlet>     1.000000000037
 !MCSCF expec    <11.1 Singlet|LZLZ|11.1 Singlet>     1.000000591969
 !MCSCF expec    <12.1 Singlet|LZLZ|12.1 Singlet>    -0.000000000000
 !MCSCF expec      <1.1 Triplet|LZLZ|1.1 Triplet>     0.000000000005
 !MCSCF expec      <2.1 Triplet|LZLZ|2.1 Triplet>     0.999999999996
 !MCSCF expec      <3.1 Triplet|LZLZ|3.1 Triplet>     1.000000000000
 !MCSCF expec      <4.1 Triplet|LZLZ|4.1 Triplet>     4.000000000000
 !MCSCF expec      <5.1 Triplet|LZLZ|5.1 Triplet>     4.000000000000
 !MCSCF expec      <6.1 Triplet|LZLZ|6.1 Triplet>     3.999999999490
 !MCSCF expec      <7.1 Triplet|LZLZ|7.1 Triplet>     4.000000015201
 !MCSCF expec      <8.1 Triplet|LZLZ|8.1 Triplet>     8.894358616950
 !MCSCF expec      <9.1 Triplet|LZLZ|9.1 Triplet>     8.894359830614
 !MCSCF expec    <10.1 Triplet|LZLZ|10.1 Triplet>     0.000000000510
 !MCSCF expec    <11.1 Triplet|LZLZ|11.1 Triplet>     1.105640154164
 !MCSCF expec    <12.1 Triplet|LZLZ|12.1 Triplet>     1.105641383072
 !MCSCF expec    <13.1 Triplet|LZLZ|13.1 Triplet>     1.000000000000
 !MCSCF expec    <14.1 Triplet|LZLZ|14.1 Triplet>     1.000000000000
 !MCSCF expec    <15.1 Triplet|LZLZ|15.1 Triplet>    -0.000000000000
 !MCSCF expec    <16.1 Triplet|LZLZ|16.1 Triplet>    -0.000000000000
 
 !MCSCF expec      <1.1 Singlet|L**2|1.1 Singlet>    -0.000000000000
 !MCSCF expec      <2.1 Singlet|L**2|2.1 Singlet>     6.000000000000
 !MCSCF expec      <3.1 Singlet|L**2|3.1 Singlet>     6.000000000000
 !MCSCF expec      <4.1 Singlet|L**2|4.1 Singlet>     6.000000000000
 !MCSCF expec      <5.1 Singlet|L**2|5.1 Singlet>     6.000000000000
 !MCSCF expec      <6.1 Singlet|L**2|6.1 Singlet>     6.000000000000
 !MCSCF expec      <7.1 Singlet|L**2|7.1 Singlet>     6.000000000000
 !MCSCF expec      <8.1 Singlet|L**2|8.1 Singlet>     6.000000000000
 !MCSCF expec      <9.1 Singlet|L**2|9.1 Singlet>     6.000000000000
 !MCSCF expec    <10.1 Singlet|L**2|10.1 Singlet>     6.000000000000
 !MCSCF expec    <11.1 Singlet|L**2|11.1 Singlet>     6.000000000000
 !MCSCF expec    <12.1 Singlet|L**2|12.1 Singlet>    -0.000000000000
 !MCSCF expec      <1.1 Triplet|L**2|1.1 Triplet>     6.000000000000
 !MCSCF expec      <2.1 Triplet|L**2|2.1 Triplet>     6.000000000000
 !MCSCF expec      <3.1 Triplet|L**2|3.1 Triplet>     6.000000000000
 !MCSCF expec      <4.1 Triplet|L**2|4.1 Triplet>     6.000000000000
 !MCSCF expec      <5.1 Triplet|L**2|5.1 Triplet>     6.000000000000
 !MCSCF expec      <6.1 Triplet|L**2|6.1 Triplet>    12.000000000000
 !MCSCF expec      <7.1 Triplet|L**2|7.1 Triplet>    12.000000000000
 !MCSCF expec      <8.1 Triplet|L**2|8.1 Triplet>    12.000000000000
 !MCSCF expec      <9.1 Triplet|L**2|9.1 Triplet>    12.000000000000
 !MCSCF expec    <10.1 Triplet|L**2|10.1 Triplet>    12.000000000000
 !MCSCF expec    <11.1 Triplet|L**2|11.1 Triplet>    12.000000000000
 !MCSCF expec    <12.1 Triplet|L**2|12.1 Triplet>    12.000000000000
 !MCSCF expec    <13.1 Triplet|L**2|13.1 Triplet>     2.000000000000
 !MCSCF expec    <14.1 Triplet|L**2|14.1 Triplet>     2.000000000000
 !MCSCF expec    <15.1 Triplet|L**2|15.1 Triplet>     2.000000000000
 !MCSCF expec    <16.1 Triplet|L**2|16.1 Triplet>    -0.000000000000
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -1.55775     1  1  s    0.99303
    2.1     0.45201    -0.03371     1  1  s   -0.31291    1  4  s    0.47874    1  5  s    0.65097
    3.1     0.25839     0.05517     1  1  d2+  0.25461    1  2  d2+  0.33933    1  3  d2+  0.36493
    4.1     0.25839     0.05517     1  1  d0   0.25461    1  2  d0   0.33933    1  3  d0   0.36493
    5.1     0.25839     0.05517     1  1  d2-  0.25461    1  2  d2-  0.33933    1  3  d2-  0.36493
    6.1     0.25839     0.05517     1  1  d1+  0.25461    1  2  d1+  0.33933    1  3  d1+  0.36493
    7.1     0.25839     0.05517     1  1  d1-  0.25461    1  2  d1-  0.33933    1  3  d1-  0.36493
    8.1     0.06372     0.03906     1  4  s   -0.64889    1  5  s   -0.70110    1  6  s    0.25914    1 11  s    1.17233
    1.2     2.00000    -0.85952     1  1  px   0.99168
    2.2     2.00000    -0.85952     1  1  py   0.99168
    3.2     2.00000    -0.85952     1  1  pz   0.99168
    4.2     0.06410     0.05075     1  1  pz  -0.35177    1  2  pz   0.25909    1  3  pz   0.46830    1  4  pz   0.38558
    5.2     0.06410     0.05075     1  1  px  -0.35177    1  2  px   0.25909    1  3  px   0.46830    1  4  px   0.38558
    6.2     0.06410     0.05075     1  1  py  -0.35177    1  2  py   0.25909    1  3  py   0.46830    1  4  py   0.38558
 *** IN SYMMETRY  1 ORBITAL   9 SYMMETRY CONTAMINATION OF 0.528D-03 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  10 SYMMETRY CONTAMINATION OF 0.531D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  11 SYMMETRY CONTAMINATION OF 0.550D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  12 SYMMETRY CONTAMINATION OF 0.444D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  13 SYMMETRY CONTAMINATION OF 0.260D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  15 SYMMETRY CONTAMINATION OF 0.106D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  16 SYMMETRY CONTAMINATION OF 0.242D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  17 SYMMETRY CONTAMINATION OF 0.426D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  18 SYMMETRY CONTAMINATION OF 0.228D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  19 SYMMETRY CONTAMINATION OF 0.228D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  20 SYMMETRY CONTAMINATION OF 0.250D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  21 SYMMETRY CONTAMINATION OF 0.250D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  22 SYMMETRY CONTAMINATION OF 0.458D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  23 SYMMETRY CONTAMINATION OF 0.458D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  24 SYMMETRY CONTAMINATION OF 0.769D-03 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  25 SYMMETRY CONTAMINATION OF 0.558D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  26 SYMMETRY CONTAMINATION OF 0.558D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  27 SYMMETRY CONTAMINATION OF 0.362D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  28 SYMMETRY CONTAMINATION OF 0.357D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  30 SYMMETRY CONTAMINATION OF 0.302D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  31 SYMMETRY CONTAMINATION OF 0.370D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  32 SYMMETRY CONTAMINATION OF 0.233D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  33 SYMMETRY CONTAMINATION OF 0.515D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  34 SYMMETRY CONTAMINATION OF 0.474D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  36 SYMMETRY CONTAMINATION OF 0.935D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  37 SYMMETRY CONTAMINATION OF 0.190D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  38 SYMMETRY CONTAMINATION OF 0.189D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  39 SYMMETRY CONTAMINATION OF 0.452D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  40 SYMMETRY CONTAMINATION OF 0.452D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  41 SYMMETRY CONTAMINATION OF 0.126D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  42 SYMMETRY CONTAMINATION OF 0.128D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  43 SYMMETRY CONTAMINATION OF 0.669D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  44 SYMMETRY CONTAMINATION OF 0.669D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  45 SYMMETRY CONTAMINATION OF 0.266D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  46 SYMMETRY CONTAMINATION OF 0.267D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  47 SYMMETRY CONTAMINATION OF 0.440D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  48 SYMMETRY CONTAMINATION OF 0.440D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  49 SYMMETRY CONTAMINATION OF 0.131D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  50 SYMMETRY CONTAMINATION OF 0.689D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  51 SYMMETRY CONTAMINATION OF 0.361D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  52 SYMMETRY CONTAMINATION OF 0.361D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  53 SYMMETRY CONTAMINATION OF 0.277D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  54 SYMMETRY CONTAMINATION OF 0.277D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  56 SYMMETRY CONTAMINATION OF 0.669D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  57 SYMMETRY CONTAMINATION OF 0.669D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  58 SYMMETRY CONTAMINATION OF 0.620D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  59 SYMMETRY CONTAMINATION OF 0.620D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  60 SYMMETRY CONTAMINATION OF 0.179D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  61 SYMMETRY CONTAMINATION OF 0.179D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  62 SYMMETRY CONTAMINATION OF 0.869D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  63 SYMMETRY CONTAMINATION OF 0.465D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  64 SYMMETRY CONTAMINATION OF 0.460D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  65 SYMMETRY CONTAMINATION OF 0.671D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  66 SYMMETRY CONTAMINATION OF 0.557D-03 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  67 SYMMETRY CONTAMINATION OF 0.560D-03 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  68 SYMMETRY CONTAMINATION OF 0.547D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  69 SYMMETRY CONTAMINATION OF 0.547D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  70 SYMMETRY CONTAMINATION OF 0.285D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  71 SYMMETRY CONTAMINATION OF 0.285D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  72 SYMMETRY CONTAMINATION OF 0.957D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  73 SYMMETRY CONTAMINATION OF 0.957D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  74 SYMMETRY CONTAMINATION OF 0.113D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  75 SYMMETRY CONTAMINATION OF 0.204D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  76 SYMMETRY CONTAMINATION OF 0.171D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  77 SYMMETRY CONTAMINATION OF 0.557D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  78 SYMMETRY CONTAMINATION OF 0.557D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  80 SYMMETRY CONTAMINATION OF 0.108D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  81 SYMMETRY CONTAMINATION OF 0.112D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  82 SYMMETRY CONTAMINATION OF 0.330D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  83 SYMMETRY CONTAMINATION OF 0.329D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  84 SYMMETRY CONTAMINATION OF 0.451D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  85 SYMMETRY CONTAMINATION OF 0.451D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  86 SYMMETRY CONTAMINATION OF 0.759D-03 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  87 SYMMETRY CONTAMINATION OF 0.179D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  88 SYMMETRY CONTAMINATION OF 0.179D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  89 SYMMETRY CONTAMINATION OF 0.398D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  90 SYMMETRY CONTAMINATION OF 0.163D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  91 SYMMETRY CONTAMINATION OF 0.162D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  92 SYMMETRY CONTAMINATION OF 0.148D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  93 SYMMETRY CONTAMINATION OF 0.148D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  94 SYMMETRY CONTAMINATION OF 0.309D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  95 SYMMETRY CONTAMINATION OF 0.293D-03 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  96 SYMMETRY CONTAMINATION OF 0.105D-03 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  97 SYMMETRY CONTAMINATION OF 0.504D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  98 SYMMETRY CONTAMINATION OF 0.505D-02 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 5 2 3 4 6 1 2 4   6 3 5 1 2 5 3 6 4 8  12 911 714151310 1 2   3 5 6 4 1 2 5 3 6 4
                                       131011 9 8121514 7 2   3 5 6 4 111 9 81214  15 71310 2 3 5 6 4 9  1112 81514 71310 1 9
                                       1112 81415 71310 2 5   3 6 4 2 5 3 6 4 1 1   1
 *** IN SYMMETRY  2 ORBITAL   7 SYMMETRY CONTAMINATION OF 0.243D-03 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL   9 SYMMETRY CONTAMINATION OF 0.243D-03 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  10 SYMMETRY CONTAMINATION OF 0.273D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  12 SYMMETRY CONTAMINATION OF 0.273D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  13 SYMMETRY CONTAMINATION OF 0.546D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  14 SYMMETRY CONTAMINATION OF 0.546D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  15 SYMMETRY CONTAMINATION OF 0.396D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  16 SYMMETRY CONTAMINATION OF 0.649D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  17 SYMMETRY CONTAMINATION OF 0.650D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  18 SYMMETRY CONTAMINATION OF 0.967D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  19 SYMMETRY CONTAMINATION OF 0.897D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  20 SYMMETRY CONTAMINATION OF 0.902D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  22 SYMMETRY CONTAMINATION OF 0.902D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  23 SYMMETRY CONTAMINATION OF 0.479D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  24 SYMMETRY CONTAMINATION OF 0.497D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  25 SYMMETRY CONTAMINATION OF 0.532D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  26 SYMMETRY CONTAMINATION OF 0.515D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  27 SYMMETRY CONTAMINATION OF 0.226D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  28 SYMMETRY CONTAMINATION OF 0.135D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  29 SYMMETRY CONTAMINATION OF 0.115D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  30 SYMMETRY CONTAMINATION OF 0.621D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  31 SYMMETRY CONTAMINATION OF 0.623D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  32 SYMMETRY CONTAMINATION OF 0.801D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  33 SYMMETRY CONTAMINATION OF 0.808D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  35 SYMMETRY CONTAMINATION OF 0.324D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  36 SYMMETRY CONTAMINATION OF 0.324D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  37 SYMMETRY CONTAMINATION OF 0.315D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  38 SYMMETRY CONTAMINATION OF 0.315D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  39 SYMMETRY CONTAMINATION OF 0.190D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  40 SYMMETRY CONTAMINATION OF 0.233D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  41 SYMMETRY CONTAMINATION OF 0.718D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  42 SYMMETRY CONTAMINATION OF 0.624D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  43 SYMMETRY CONTAMINATION OF 0.624D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  44 SYMMETRY CONTAMINATION OF 0.516D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  45 SYMMETRY CONTAMINATION OF 0.516D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  46 SYMMETRY CONTAMINATION OF 0.679D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  47 SYMMETRY CONTAMINATION OF 0.679D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  48 SYMMETRY CONTAMINATION OF 0.126D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  49 SYMMETRY CONTAMINATION OF 0.877D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  50 SYMMETRY CONTAMINATION OF 0.134D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  52 SYMMETRY CONTAMINATION OF 0.740D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  53 SYMMETRY CONTAMINATION OF 0.740D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  54 SYMMETRY CONTAMINATION OF 0.266D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  55 SYMMETRY CONTAMINATION OF 0.258D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  56 SYMMETRY CONTAMINATION OF 0.836D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  57 SYMMETRY CONTAMINATION OF 0.448D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  58 SYMMETRY CONTAMINATION OF 0.448D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  59 SYMMETRY CONTAMINATION OF 0.499D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  60 SYMMETRY CONTAMINATION OF 0.499D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  61 SYMMETRY CONTAMINATION OF 0.573D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  62 SYMMETRY CONTAMINATION OF 0.574D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  63 SYMMETRY CONTAMINATION OF 0.225D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  64 SYMMETRY CONTAMINATION OF 0.687D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  65 SYMMETRY CONTAMINATION OF 0.749D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  66 SYMMETRY CONTAMINATION OF 0.231D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  67 SYMMETRY CONTAMINATION OF 0.886D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  68 SYMMETRY CONTAMINATION OF 0.961D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  69 SYMMETRY CONTAMINATION OF 0.734D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  70 SYMMETRY CONTAMINATION OF 0.174D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  71 SYMMETRY CONTAMINATION OF 0.173D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  75 SYMMETRY CONTAMINATION OF 0.538D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  76 SYMMETRY CONTAMINATION OF 0.538D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  77 SYMMETRY CONTAMINATION OF 0.701D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  78 SYMMETRY CONTAMINATION OF 0.701D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  79 SYMMETRY CONTAMINATION OF 0.102D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  80 SYMMETRY CONTAMINATION OF 0.209D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  81 SYMMETRY CONTAMINATION OF 0.266D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  83 SYMMETRY CONTAMINATION OF 0.749D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  84 SYMMETRY CONTAMINATION OF 0.749D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  85 SYMMETRY CONTAMINATION OF 0.171D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  86 SYMMETRY CONTAMINATION OF 0.172D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  87 SYMMETRY CONTAMINATION OF 0.280D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  88 SYMMETRY CONTAMINATION OF 0.151D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  89 SYMMETRY CONTAMINATION OF 0.151D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  90 SYMMETRY CONTAMINATION OF 0.227D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  91 SYMMETRY CONTAMINATION OF 0.327D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  92 SYMMETRY CONTAMINATION OF 0.361D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  93 SYMMETRY CONTAMINATION OF 0.320D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  94 SYMMETRY CONTAMINATION OF 0.919D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  95 SYMMETRY CONTAMINATION OF 0.919D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  96 SYMMETRY CONTAMINATION OF 0.645D-03 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  97 SYMMETRY CONTAMINATION OF 0.176D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  98 SYMMETRY CONTAMINATION OF 0.529D-03 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  99 SYMMETRY CONTAMINATION OF 0.501D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL 100 SYMMETRY CONTAMINATION OF 0.501D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL 101 SYMMETRY CONTAMINATION OF 0.649D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL 102 SYMMETRY CONTAMINATION OF 0.649D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL 103 SYMMETRY CONTAMINATION OF 0.133D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL 104 SYMMETRY CONTAMINATION OF 0.133D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL 105 SYMMETRY CONTAMINATION OF 0.627D-03 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL 106 SYMMETRY CONTAMINATION OF 0.214D-03 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL 107 SYMMETRY CONTAMINATION OF 0.477D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL 108 SYMMETRY CONTAMINATION OF 0.477D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL 109 SYMMETRY CONTAMINATION OF 0.233D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL 111 SYMMETRY CONTAMINATION OF 0.259D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL 112 SYMMETRY CONTAMINATION OF 0.259D-04 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 2 3 3 1 2 1 2 3 1   2 3 5 4 6 7 9 810 1   2 31112151719141621  131820 2 1 3 810 5 4
                                        6 9 7 9 7 810 4 5 6   2 1 3 6 4 510 8 9 7  15171914162113182011  12 2 1 3 9 7 810 6 5
                                        4 2 1 3121119201815  1714162113 6 4 5 810   9 7 9 7 4 510 8 6 2   1 3
 
 Natural orbital dump (state averaged) at molpro section 2141.2 (Orbital set 2)
 
 Reoptimze the CI vectors with natural orbitals 
 
 CI Coefficients of symmetry 1 (Singlet)
 =======================================

 State:                1               2               3               4               5               6               7
 2000000 000      0.95518611      0.00000000     -0.00000000      0.00000000     -0.00000000     -0.00000000      0.00000000
 b0a0000 000      0.00000000     -0.64608343      0.00000000      0.00000000      0.00000406      0.00006802     -0.00000002
 a0b0000 000     -0.00000000      0.64608343     -0.00000000     -0.00000000     -0.00000406     -0.00006802      0.00000002
 a00b000 000     -0.00000000      0.00000398      0.00003239      0.00003565      0.64608300     -0.00075290     -0.04327191
 b00a000 000      0.00000000     -0.00000398     -0.00003239     -0.00003565     -0.64608300      0.00075290      0.04327191
 ba00000 000      0.00000000     -0.00006802      0.00000143      0.00000157     -0.00075289     -0.64608299      0.00000987
 ab00000 000     -0.00000000      0.00006802     -0.00000143     -0.00000157      0.00075289      0.64608299     -0.00000987
 a00000b 000     -0.02851233     -0.00000000      0.00000000      0.00000000      0.00000000      0.00000000     -0.00000000
 b00000a 000      0.02851233      0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00000000
 b000a00 000      0.00000000      0.00000000     -0.47774349      0.43495399     -0.00000005      0.00000000     -0.00000542
 a000b00 000     -0.00000000     -0.00000000      0.47774349     -0.43495399      0.00000005     -0.00000000      0.00000542
 a0000b0 000     -0.00000000      0.00000000      0.43495398      0.47774348     -0.00004817      0.00000218     -0.00001794
 b0000a0 000      0.00000000     -0.00000000     -0.43495398     -0.47774348      0.00004817     -0.00000218      0.00001794
 0002000 000     -0.04565327      0.12781028     -0.00000000     -0.00000000     -0.00000080     -0.00001346     -0.00000019
 0200000 000     -0.04565327      0.12781028     -0.00000000     -0.00000000     -0.00000080     -0.00001346     -0.00000019
 0020000 000     -0.04565327     -0.12781028      0.00000000      0.00000000      0.00000080      0.00001346      0.00000019
 0ab0000 000      0.00000000      0.00001346     -0.00000028     -0.00000031      0.00014894      0.12781019      0.00010705
 0ba0000 000     -0.00000000     -0.00001346      0.00000028      0.00000031     -0.00014894     -0.12781019     -0.00010705
 00ba000 000      0.00000000     -0.00000079     -0.00000641     -0.00000705     -0.12781020      0.00014894     -0.46947453
 00ab000 000     -0.00000000      0.00000079      0.00000641      0.00000705      0.12781020     -0.00014894      0.46947453
 0000200 000     -0.04565327     -0.06391679      0.00000025      0.00000027     -0.00012858     -0.11068015     -0.00009262
 0000ba0 000     -0.00000000      0.00000068      0.00000555      0.00000611      0.11068688     -0.00012899      0.40657687
 0000ab0 000      0.00000000     -0.00000068     -0.00000555     -0.00000611     -0.11068688      0.00012899     -0.40657687
 0000020 000     -0.04565327     -0.06389349     -0.00000025     -0.00000027      0.00012939      0.11069360      0.00009281
 000b0a0 000      0.00000000     -0.00000000      0.08184697     -0.07451627      0.00000001     -0.00000000     -0.00005093
 000a0b0 000     -0.00000000      0.00000000     -0.08184697      0.07451627     -0.00000001      0.00000000      0.00005093
 0a00b00 000     -0.00000000      0.00000000     -0.08184697      0.07451627     -0.00000001      0.00000000      0.00005093
 0b00a00 000      0.00000000     -0.00000000      0.08184697     -0.07451627      0.00000001     -0.00000000     -0.00005093
 000ba00 000     -0.00000000      0.00000000      0.07451627      0.08184697     -0.00000825      0.00000037      0.00016860
 000ab00 000      0.00000000     -0.00000000     -0.07451627     -0.08184697      0.00000825     -0.00000037     -0.00016860
 0b000a0 000      0.00000000     -0.00000000     -0.07451627     -0.08184697      0.00000825     -0.00000037     -0.00016860
 0a000b0 000     -0.00000000      0.00000000      0.07451627      0.08184697     -0.00000825      0.00000037      0.00016860
 0000000 200     -0.15838531     -0.26601346      0.00000000      0.00000000      0.00000167      0.00002800     -0.00000015
 0000000 002     -0.15838531      0.13303099     -0.00000051     -0.00000056      0.00026762      0.23036026     -0.00007342
 0000000 0ba     -0.00000000      0.00000142      0.00001155      0.00001271      0.23037426     -0.00026846     -0.32231281
 0000000 0ab      0.00000000     -0.00000142     -0.00001155     -0.00001271     -0.23037426      0.00026846      0.32231281
 0000000 020     -0.15838531      0.13298248      0.00000051      0.00000056     -0.00026930     -0.23038826      0.00007357
 0000000 ba0      0.00000000     -0.00000000      0.17034933     -0.15509184      0.00000002     -0.00000000      0.00004038
 0000000 ab0     -0.00000000      0.00000000     -0.17034933      0.15509184     -0.00000002      0.00000000     -0.00004038
 0000000 a0b      0.00000000     -0.00000000     -0.15509184     -0.17034933      0.00001718     -0.00000078      0.00013365
 0000000 b0a     -0.00000000      0.00000000      0.15509184      0.17034933     -0.00001718      0.00000078     -0.00013365
 00b0a00 000      0.00000000     -0.00000000      0.04725437     -0.04302199      0.00000001     -0.00000000     -0.00002940
 00a0b00 000     -0.00000000      0.00000000     -0.04725437      0.04302199     -0.00000001      0.00000000      0.00002940
 00a00b0 000      0.00000000     -0.00000000     -0.04302199     -0.04725437      0.00000476     -0.00000022     -0.00009734
 00b00a0 000     -0.00000000      0.00000000      0.04302199      0.04725437     -0.00000476      0.00000022      0.00009734
 0000002 000     -0.01774181      0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00000000
 00a000b 000      0.00000000      0.03027788     -0.00000000     -0.00000000     -0.00000019     -0.00000319      0.00000004
 00b000a 000     -0.00000000     -0.03027788      0.00000000      0.00000000      0.00000019      0.00000319     -0.00000004
 0a0000b 000      0.00000000      0.00000319     -0.00000007     -0.00000007      0.00003528      0.03027786     -0.00002106
 0b0000a 000     -0.00000000     -0.00000319      0.00000007      0.00000007     -0.00003528     -0.03027786      0.00002106
 000a00b 000     -0.00000000      0.00000019      0.00000152      0.00000167      0.03027786     -0.00003528     -0.09236228
 000b00a 000      0.00000000     -0.00000019     -0.00000152     -0.00000167     -0.03027786      0.00003528      0.09236228
 0000a0b 000      0.00000000     -0.00000000      0.02238884     -0.02038357      0.00000000     -0.00000000      0.00001157
 0000b0a 000     -0.00000000      0.00000000     -0.02238884      0.02038357     -0.00000000      0.00000000     -0.00001157
 00000ab 000     -0.00000000      0.00000000      0.02038357      0.02238884     -0.00000226      0.00000010     -0.00003830
 00000ba 000      0.00000000     -0.00000000     -0.02038357     -0.02238884      0.00000226     -0.00000010      0.00003830
 
 Energy:        -25.11600038    -25.05421803    -25.05421803    -25.05421803    -25.05421803    -25.05421803    -24.99996963

 State:                8               9              10              11              12
 2000000 000      0.00000000      0.00000000     -0.00000000     -0.00000000     -0.00215840
 b0a0000 000      0.04327192      0.00001078      0.00000000     -0.00000000     -0.00000000
 a0b0000 000     -0.04327192     -0.00001078     -0.00000000      0.00000000      0.00000000
 a00b000 000     -0.00000002      0.00000987     -0.00001851      0.00000298     -0.00000000
 b00a000 000      0.00000002     -0.00000987      0.00001851     -0.00000298      0.00000000
 ba00000 000     -0.00001078      0.04327191      0.00000089     -0.00000014      0.00000000
 ab00000 000      0.00001078     -0.04327191     -0.00000089      0.00000014     -0.00000000
 a00000b 000      0.00000000      0.00000000     -0.00000000      0.00000000      0.56433102
 b00000a 000     -0.00000000     -0.00000000      0.00000000     -0.00000000     -0.56433102
 b000a00 000      0.00000000     -0.00000026      0.00576344     -0.04288638     -0.00000000
 a000b00 000     -0.00000000      0.00000026     -0.00576344      0.04288638      0.00000000
 a0000b0 000     -0.00000000     -0.00000086      0.04288638      0.00576344     -0.00000000
 b0000a0 000      0.00000000      0.00000086     -0.04288638     -0.00576344      0.00000000
 0002000 000      0.46947457      0.00011692      0.00000000     -0.00000000      0.22268125
 0200000 000      0.46947457      0.00011692      0.00000000     -0.00000000      0.22268125
 0020000 000     -0.46947457     -0.00011692     -0.00000000      0.00000000      0.22268125
 0ab0000 000     -0.00011692      0.46947456      0.00000963     -0.00000155      0.00000000
 0ba0000 000      0.00011692     -0.46947456     -0.00000963      0.00000155     -0.00000000
 00ba000 000     -0.00000022      0.00010706     -0.00020077      0.00003236     -0.00000000
 00ab000 000      0.00000022     -0.00010706      0.00020077     -0.00003236      0.00000000
 0000200 000     -0.23463603     -0.40663535     -0.00000834      0.00000134      0.22268125
 0000ba0 000      0.00000019     -0.00009271      0.00017388     -0.00002802      0.00000000
 0000ab0 000     -0.00000019      0.00009271     -0.00017388      0.00002802     -0.00000000
 0000020 000     -0.23483854      0.40651843      0.00000833     -0.00000134      0.22268125
 000b0a0 000      0.00000000     -0.00000243      0.05415251     -0.40295445      0.00000000
 000a0b0 000     -0.00000000      0.00000243     -0.05415251      0.40295445     -0.00000000
 0a00b00 000     -0.00000000      0.00000243     -0.05415251      0.40295445     -0.00000000
 0b00a00 000      0.00000000     -0.00000243      0.05415251     -0.40295445      0.00000000
 000ba00 000      0.00000000      0.00000804     -0.40295442     -0.05415252     -0.00000000
 000ab00 000     -0.00000000     -0.00000804      0.40295442      0.05415252      0.00000000
 0b000a0 000     -0.00000000     -0.00000804      0.40295442      0.05415252      0.00000000
 0a000b0 000      0.00000000      0.00000804     -0.40295442     -0.05415252     -0.00000000
 0000000 200      0.37217481      0.00009269      0.00000000     -0.00000000     -0.17311306
 0000000 002     -0.18600713     -0.32235918     -0.00000661      0.00000107     -0.17311306
 0000000 0ba     -0.00000015      0.00007350     -0.00013784      0.00002221     -0.00000000
 0000000 0ab      0.00000015     -0.00007350      0.00013784     -0.00002221      0.00000000
 0000000 020     -0.18616768      0.32226649      0.00000661     -0.00000106     -0.17311306
 0000000 ba0      0.00000000      0.00000193     -0.04292927      0.31944115      0.00000000
 0000000 ab0     -0.00000000     -0.00000193      0.04292927     -0.31944115     -0.00000000
 0000000 a0b     -0.00000000      0.00000638     -0.31944112     -0.04292928      0.00000000
 0000000 b0a      0.00000000     -0.00000638      0.31944112      0.04292928     -0.00000000
 00b0a00 000      0.00000000     -0.00000140      0.03126497     -0.23264586      0.00000000
 00a0b00 000     -0.00000000      0.00000140     -0.03126497      0.23264586     -0.00000000
 00a00b0 000     -0.00000000     -0.00000464      0.23264584      0.03126497      0.00000000
 00b00a0 000      0.00000000      0.00000464     -0.23264584     -0.03126497     -0.00000000
 0000002 000     -0.00000000      0.00000000      0.00000000     -0.00000000     -0.15879947
 00a000b 000     -0.09236229     -0.00002300     -0.00000000      0.00000000     -0.00000000
 00b000a 000      0.09236229      0.00002300      0.00000000     -0.00000000      0.00000000
 0a0000b 000      0.00002300     -0.09236229     -0.00000189      0.00000031     -0.00000000
 0b0000a 000     -0.00002300      0.09236229      0.00000189     -0.00000031      0.00000000
 000a00b 000     -0.00000004      0.00002106     -0.00003950      0.00000637     -0.00000000
 000b00a 000      0.00000004     -0.00002106      0.00003950     -0.00000637      0.00000000
 0000a0b 000      0.00000000      0.00000055     -0.01230185      0.09153938     -0.00000000
 0000b0a 000     -0.00000000     -0.00000055      0.01230185     -0.09153938      0.00000000
 00000ab 000     -0.00000000     -0.00000183      0.09153937      0.01230186     -0.00000000
 00000ba 000      0.00000000      0.00000183     -0.09153937     -0.01230186      0.00000000
 
 Energy:        -24.99996963    -24.99996963    -24.99996963    -24.99996963    -24.99283681
 
 
 CI Coefficients of symmetry 1 (Triplet)
 =======================================

 State:                1               2               3               4               5               6               7
 a00000a 000     -0.00000000     -0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000      0.00000000
 0aa0000 000      0.00000000      0.00000000      0.00000000      0.00000000      0.00000000      0.00000000      1.00000000
 aa00000 000     -0.00000000      0.00000000      0.00000000     -0.00000000      1.00000000     -0.00000000     -0.00000000
 a0a0000 000      1.00000000      0.00000863     -0.00000000     -0.00000000      0.00000000      0.00000000     -0.00000000
 00aa000 000     -0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.00000000      0.99999999     -0.00000000
 a00a000 000     -0.00000000      0.00023095      0.00700436      0.99997544      0.00000000      0.00000000     -0.00000000
 a000a00 000     -0.00000848      0.98201267     -0.18881182      0.00109573     -0.00000000      0.00000000      0.00000000
 a0000a0 000     -0.00000163      0.18881485      0.98198830     -0.00692198     -0.00000000     -0.00000000     -0.00000000
 0000aa0 000      0.00000000      0.00000000      0.00000000      0.00000000      0.00000000     -0.00001481      0.00000005
 000aa00 000      0.00000000     -0.00000000     -0.00000000      0.00000000      0.00000000     -0.00009275     -0.00000000
 000a0a0 000      0.00000000     -0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000640     -0.00000000
 0a0a000 000      0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00000740     -0.00000003
 00a00a0 000      0.00000000     -0.00000000     -0.00000000      0.00000000      0.00000000     -0.00003633      0.00000000
 00a0a00 000      0.00000000     -0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000890      0.00000000
 0a00a00 000      0.00000000     -0.00000000      0.00000000     -0.00000000     -0.00000000     -0.00000902     -0.00000000
 0a000a0 000     -0.00000000      0.00000000      0.00000000     -0.00000000     -0.00000000     -0.00002983      0.00000000
 0000000 0aa     -0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00000000      0.00000000     -0.00000000
 0000000 a0a     -0.00000000      0.00000000      0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.00000000
 0000000 aa0     -0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000000
 
 Energy:        -25.06116107    -25.06116107    -25.06116107    -25.06116107    -25.06116107    -25.00448055    -25.00448055

 State:                8               9              10              11              12              13              14
 a00000a 000      0.00000000      0.00000000     -0.00000000     -0.00000000      0.00000000      0.00000000      0.00000000
 0aa0000 000      0.00000000      0.00000000     -0.00000006     -0.00000000      0.00000000     -0.00000000     -0.00000000
 aa00000 000      0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000000     -0.00000000
 a0a0000 000     -0.00000000     -0.00000000     -0.00000000      0.00000000      0.00000000     -0.00000000     -0.00000000
 00aa000 000      0.00009208     -0.00001078      0.00001655      0.00002224      0.00004386     -0.00000000      0.00000000
 a00a000 000      0.00000000     -0.00000000     -0.00000000      0.00000000      0.00000000      0.00000000     -0.00000000
 a000a00 000      0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000000      0.00000000      0.00000000
 a0000a0 000      0.00000000     -0.00000000     -0.00000000      0.00000000      0.00000000      0.00000000     -0.00000000
 0000aa0 000     -0.00000026     -0.00000225      0.89442719      0.00000218     -0.00000039     -0.00000000      0.00000000
 000aa00 000      0.76045944     -0.08714027     -0.00000000      0.08127219      0.45552479     -0.36901236      0.00000000
 000a0a0 000      0.08710997      0.76034289      0.00000079      0.45572382     -0.08127942     -0.00000000     -0.36901236
 0a0a000 000      0.00000013      0.00000112     -0.44721360     -0.00000109      0.00000019      0.00000000     -0.00000000
 00a00a0 000      0.07230188     -0.00829510     -0.00000000      0.11032888      0.61849104      0.63914815     -0.00000000
 00a0a00 000      0.00825397      0.07214366     -0.00000137      0.61850994     -0.11032957      0.00000000      0.63914815
 0a00a00 000     -0.07281368     -0.63538640     -0.00000317      0.61556683     -0.10981700     -0.00000000     -0.36901236
 0a000a0 000      0.63522891     -0.07277273      0.00000000     -0.10982303     -0.61573311      0.36901236     -0.00000000
 0000000 0aa      0.00000000      0.00000000     -0.00000000     -0.00000000      0.00000000      0.00000000      0.00000000
 0000000 a0a      0.00000000     -0.00000000     -0.00000000      0.00000000      0.00000000     -0.56493310      0.00000000
 0000000 aa0      0.00000000      0.00000000      0.00000000      0.00000000     -0.00000000     -0.00000000     -0.56493310
 
 Energy:        -25.00448055    -25.00448055    -25.00448055    -25.00448055    -25.00448055    -25.00020067    -25.00020067

 State:               15              16
 a00000a 000     -0.00000000      1.00000000
 0aa0000 000      0.00000000     -0.00000000
 aa00000 000      0.00000000      0.00000000
 a0a0000 000     -0.00000000      0.00000000
 00aa000 000      0.00000000     -0.00000000
 a00a000 000     -0.00000000     -0.00000000
 a000a00 000      0.00000000      0.00000000
 a0000a0 000     -0.00000000     -0.00000000
 0000aa0 000      0.36901236      0.00000000
 000aa00 000     -0.00000000      0.00000000
 000a0a0 000     -0.00000000      0.00000000
 0a0a000 000      0.73802471      0.00000000
 00a00a0 000      0.00000000     -0.00000000
 00a0a00 000      0.00000000     -0.00000000
 0a00a00 000     -0.00000000      0.00000000
 0a000a0 000      0.00000000     -0.00000000
 0000000 0aa     -0.56493310     -0.00000000
 0000000 a0a     -0.00000000      0.00000000
 0000000 aa0     -0.00000000      0.00000000
 
 Energy:        -25.00020067    -24.99853534
 


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       58.40       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1700(1)
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    OPER   
                                         1380   
                                         JKOP   

              2       6       10.99       700     1000      520     2100     2140     2141   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MCSCF   

 PROGRAMS   *        TOTAL     MULTI     MULTI   RHF-SCF       INT
 CPU TIMES  *         9.95      3.40      2.74      0.75      2.83
 REAL TIME  *        12.81 SEC
 DISK USED  *        69.46 MB (local),        1.29 GB (total)
 SF USED    *        88.15 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

        ENERGY       LL
    -25.11600038   -0.0
    -25.05421803    6.0
    -25.05421803    6.0
    -25.05421803    6.0
    -25.05421803    6.0
    -25.05421803    6.0
    -24.99996963    6.0
    -24.99996963    6.0
    -24.99996963    6.0
    -24.99996963    6.0
    -24.99996963    6.0
    -24.99283681   -0.0
    -25.06116107    6.0
    -25.06116107    6.0
    -25.06116107    6.0
    -25.06116107    6.0
    -25.06116107    6.0
    -25.00448055   12.0
    -25.00448055   12.0
    -25.00448055   12.0
    -25.00448055   12.0
    -25.00448055   12.0
    -25.00448055   12.0
    -25.00448055   12.0
    -25.00020067    2.0
    -25.00020067    2.0
    -25.00020067    2.0
    -24.99853534   -0.0
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 12  Roots:   1   2   3   4   5   6   7   8   9  10  11  12
 Number of reference states: 12  Roots:   1   2   3   4   5   6   7   8   9  10  11  12

 Reference symmetry:                   1   Singlet 
 Number of electrons:                 10
 Maximum number of shells:             5
 Maximum number of spin couplings:    14

 Reference space:       34 conf       34 CSFs
 N elec internal:     7045 conf    15565 CSFs
 N-1 el internal:     2330 conf     6410 CSFs
 N-2 el internal:      381 conf     1153 CSFs

 Number of electrons in valence space:                     10
 Maximum number of open shell orbitals in reference space:  2
 Maximum number of open shell orbitals in internal spaces:  8


 Number of closed-shell orbitals:   4 (   1   3 )
 Number of active  orbitals:       10 (   7   3 )
 Number of external orbitals:     199 (  93 106 )

 Molecular orbitals read from record     2141.2  Type=MCSCF/NATURAL (state averaged)

 Valence orbitals related to previous ones by unitary transformation. Operators transformed.


 Number of p-space configurations:  34

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1       -25.11600038
     2       -25.05421803
     3       -25.05421803
     4       -25.05421803
     5       -25.05421803
     6       -25.05421803
     7       -24.99996963
     8       -24.99996963
     9       -24.99996963
    10       -24.99996963
    11       -24.99996963
    12       -24.99283681

 Number of blocks in overlap matrix:   249   Smallest eigenvalue:  0.39D+00
 Number of N-2 electron functions:     273
 Number of N-1 electron functions:    6410

 Number of internal configurations:                 7851
 Number of singly external configurations:        637457
 Number of doubly external configurations:       2709038
 Total number of contracted configurations:      3354346
 Total number of uncontracted configurations:   12066380

 Diagonal Coupling coefficients finished.               Storage: 4225901 words, CPU-Time:      0.72 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage: 1330318 words, CPU-time:      0.15 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000   -25.11600038    -0.00000000    -0.24546271  0.38D-01  0.47D-01     1.66
    1     2     2     1.00000000     0.00000000   -25.05421803     0.00000000    -0.26332364  0.48D-01  0.55D-01     1.66
    1     3     3     1.00000000     0.00000000   -25.05421803    -0.00000000    -0.26380485  0.49D-01  0.55D-01     1.66
    1     4     4     1.00000000     0.00000000   -25.05421803     0.00000000    -0.26375373  0.49D-01  0.55D-01     1.66
    1     5     5     1.00000000     0.00000000   -25.05421803     0.00000000    -0.26363928  0.49D-01  0.55D-01     1.66
    1     6     6     1.00000000     0.00000000   -25.05421803    -0.00000000    -0.26329241  0.48D-01  0.54D-01     1.66
    1     7     7     1.00000000     0.00000000   -24.99996963     0.00000000    -0.27239433  0.44D-01  0.64D-01     1.66
    1     8     8     1.00000000     0.00000000   -24.99996963    -0.00000000    -0.27148932  0.43D-01  0.64D-01     1.66
    1     9     9     1.00000000     0.00000000   -24.99996963    -0.00000000    -0.27167989  0.44D-01  0.64D-01     1.66
    1    10    10     1.00000000     0.00000000   -24.99996963    -0.00000000    -0.27243506  0.44D-01  0.64D-01     1.66
    1    11    11     1.00000000     0.00000000   -24.99996963     0.00000000    -0.27243450  0.44D-01  0.64D-01     1.66
    1    12    12     1.00000000     0.00000000   -24.99283681     0.00000000    -0.25527968  0.47D-01  0.53D-01     1.66
    2     1     1     1.07243623    -0.24709034   -25.36309072    -0.24709034    -0.00623285  0.18D-02  0.86D-03    38.65
    2     2     2     1.08334727    -0.25187814   -25.30609617    -0.25187814    -0.00745669  0.27D-02  0.12D-02    38.65
    2     3     3     1.08330355    -0.25187587   -25.30609390    -0.25187587    -0.00745884  0.27D-02  0.12D-02    38.65
    2     4     4     1.08339666    -0.25182626   -25.30604429    -0.25182626    -0.00751785  0.27D-02  0.12D-02    38.65
    2     5     5     1.08343191    -0.25180016   -25.30601819    -0.25180016    -0.00754816  0.27D-02  0.12D-02    38.65
    2     6     6     1.08342852    -0.25179780   -25.30601582    -0.25179780    -0.00754913  0.27D-02  0.12D-02    38.65
    2     7     7     1.08379707    -0.25263165   -25.25260128    -0.25263165    -0.00776775  0.31D-02  0.15D-02    38.65
    2     8     8     1.08386456    -0.25253095   -25.25250058    -0.25253095    -0.00790507  0.33D-02  0.15D-02    38.65
    2     9     9     1.08398313    -0.25239218   -25.25236181    -0.25239218    -0.00809330  0.34D-02  0.16D-02    38.65
    2    10    10     1.08398649    -0.25239012   -25.25235976    -0.25239012    -0.00809604  0.34D-02  0.16D-02    38.65
    2    11    11     1.08396186    -0.25238795   -25.25235759    -0.25238795    -0.00809792  0.34D-02  0.16D-02    38.65
    2    12    12     1.08135325    -0.24839394   -25.24123075    -0.24839394    -0.00778905  0.30D-02  0.13D-02    38.65
    3     1     1     1.07551022    -0.25354194   -25.36954233    -0.00645161    -0.00027878  0.62D-04  0.44D-04    75.73
    3     2     2     1.08539743    -0.25930549   -25.31352352    -0.00742735    -0.00040324  0.13D-03  0.72D-04    75.73
    3     3     3     1.08540984    -0.25930518   -25.31352321    -0.00742931    -0.00040397  0.13D-03  0.72D-04    75.73
    3     4     4     1.08541431    -0.25930291   -25.31352093    -0.00747664    -0.00040628  0.13D-03  0.73D-04    75.73
    3     5     5     1.08541034    -0.25930156   -25.31351958    -0.00750139    -0.00040743  0.13D-03  0.73D-04    75.73
    3     6     6     1.08541116    -0.25930108   -25.31351911    -0.00750328    -0.00040796  0.13D-03  0.73D-04    75.73
    3     7     7     1.08401165    -0.26022699   -25.26019663    -0.00759535    -0.00039415  0.85D-04  0.10D-03    75.73
    3     8     8     1.08402361    -0.26021971   -25.26018934    -0.00768876    -0.00040403  0.86D-04  0.10D-03    75.73
    3     9     9     1.08404820    -0.26021745   -25.26018708    -0.00782527    -0.00040945  0.85D-04  0.10D-03    75.73
    3    10    10     1.08404865    -0.26021725   -25.26018689    -0.00782713    -0.00040967  0.85D-04  0.10D-03    75.73
    3    11    11     1.08404323    -0.26021620   -25.26018583    -0.00782825    -0.00041078  0.86D-04  0.11D-03    75.73
    3    12    12     1.08067715    -0.25594142   -25.24877823    -0.00754748    -0.00041664  0.71D-04  0.12D-03    75.73
    4     1     1     1.07670810    -0.25383580   -25.36983619    -0.00029386    -0.00001599  0.80D-05  0.22D-05   112.85
    4     2     2     1.08795089    -0.25975391   -25.31397194    -0.00044842    -0.00003774  0.26D-04  0.47D-05   112.85
    4     3     3     1.08795242    -0.25975384   -25.31397187    -0.00044866    -0.00003784  0.27D-04  0.47D-05   112.85
    4     4     4     1.08794428    -0.25975334   -25.31397137    -0.00045044    -0.00003819  0.27D-04  0.47D-05   112.85
    4     5     5     1.08794136    -0.25975315   -25.31397118    -0.00045159    -0.00003832  0.27D-04  0.47D-05   112.85
    4     6     6     1.08794134    -0.25975312   -25.31397115    -0.00045204    -0.00003834  0.27D-04  0.48D-05   112.85
    4     7     7     1.08570957    -0.26065846   -25.26062809    -0.00043146    -0.00003004  0.20D-04  0.45D-05   112.85
    4     8     8     1.08570978    -0.26065843   -25.26062807    -0.00043872    -0.00003006  0.20D-04  0.45D-05   112.85
    4     9     9     1.08570658    -0.26065834   -25.26062798    -0.00044090    -0.00003015  0.20D-04  0.45D-05   112.85
    4    10    10     1.08571127    -0.26065720   -25.26062684    -0.00043995    -0.00003061  0.20D-04  0.46D-05   112.85
    4    11    11     1.08571775    -0.26065659   -25.26062623    -0.00044040    -0.00003063  0.20D-04  0.46D-05   112.85
    4    12    12     1.08181415    -0.25636120   -25.24919802    -0.00041978    -0.00003244  0.12D-04  0.81D-05   112.85
    5     1     1     1.07705206    -0.25385349   -25.36985388    -0.00001769    -0.00000133  0.65D-06  0.19D-06   149.94
    5     2     2     1.08913031    -0.25980297   -25.31402100    -0.00004906    -0.00000568  0.27D-05  0.87D-06   149.94
    5     3     3     1.08912895    -0.25980294   -25.31402097    -0.00004910    -0.00000570  0.27D-05  0.86D-06   149.94
    5     4     4     1.08912773    -0.25980285   -25.31402087    -0.00004950    -0.00000577  0.27D-05  0.87D-06   149.94
    5     5     5     1.08912703    -0.25980282   -25.31402085    -0.00004967    -0.00000579  0.28D-05  0.87D-06   149.94
    5     6     6     1.08912655    -0.25980281   -25.31402084    -0.00004969    -0.00000579  0.28D-05  0.87D-06   149.94
    5     7     7     1.08632496    -0.26069480   -25.26066443    -0.00003634    -0.00000340  0.17D-05  0.57D-06   149.94
    5     8     8     1.08632394    -0.26069479   -25.26066443    -0.00003636    -0.00000340  0.17D-05  0.57D-06   149.94
    5     9     9     1.08632510    -0.26069479   -25.26066442    -0.00003645    -0.00000340  0.17D-05  0.57D-06   149.94
    5    10    10     1.08632550    -0.26069456   -25.26066419    -0.00003735    -0.00000358  0.17D-05  0.60D-06   149.94
    5    11    11     1.08632792    -0.26069436   -25.26066399    -0.00003776    -0.00000372  0.17D-05  0.64D-06   149.94
    5    12    12     1.08210497    -0.25639449   -25.24923130    -0.00003329    -0.00000383  0.21D-05  0.90D-06   149.94
    6     1     1     1.07712098    -0.25385504   -25.36985542    -0.00000155    -0.00000012  0.36D-07  0.20D-07   186.91
    6     2     2     1.08938524    -0.25980991   -25.31402794    -0.00000694    -0.00000063  0.25D-06  0.97D-07   186.91
    6     3     3     1.08938485    -0.25980990   -25.31402793    -0.00000696    -0.00000064  0.25D-06  0.97D-07   186.91
    6     4     4     1.08938473    -0.25980989   -25.31402792    -0.00000704    -0.00000065  0.26D-06  0.99D-07   186.91
    6     5     5     1.08938435    -0.25980989   -25.31402792    -0.00000707    -0.00000065  0.26D-06  0.99D-07   186.91
    6     6     6     1.08938422    -0.25980989   -25.31402791    -0.00000708    -0.00000065  0.26D-06  0.99D-07   186.91
    6     7     7     1.08639239    -0.26069885   -25.26066849    -0.00000406    -0.00000034  0.80D-07  0.79D-07   186.91
    6     8     8     1.08639260    -0.26069885   -25.26066849    -0.00000406    -0.00000034  0.80D-07  0.79D-07   186.91
    6     9     9     1.08639265    -0.26069885   -25.26066849    -0.00000406    -0.00000034  0.81D-07  0.79D-07   186.91
    6    10    10     1.08639147    -0.26069883   -25.26066847    -0.00000427    -0.00000036  0.83D-07  0.83D-07   186.91
    6    11    11     1.08639103    -0.26069881   -25.26066845    -0.00000445    -0.00000038  0.86D-07  0.88D-07   186.91
    6    12    12     1.08211587    -0.25639888   -25.24923570    -0.00000440    -0.00000052  0.11D-06  0.15D-06   186.91
    7     1     1     1.07713830    -0.25385517   -25.36985556    -0.00000013    -0.00000001  0.44D-08  0.14D-08   223.89
    7     2     2     1.08945505    -0.25981058   -25.31402861    -0.00000067    -0.00000007  0.53D-07  0.91D-08   223.89
    7     3     3     1.08945490    -0.25981058   -25.31402861    -0.00000068    -0.00000007  0.53D-07  0.91D-08   223.89
    7     4     4     1.08945437    -0.25981058   -25.31402860    -0.00000069    -0.00000007  0.54D-07  0.93D-08   223.89
    7     5     5     1.08945419    -0.25981058   -25.31402860    -0.00000069    -0.00000007  0.54D-07  0.93D-08   223.89
    7     6     6     1.08945413    -0.25981058   -25.31402860    -0.00000069    -0.00000007  0.54D-07  0.93D-08   223.89
    7     7     7     1.08640610    -0.26069921   -25.26066885    -0.00000036    -0.00000004  0.25D-07  0.73D-08   223.89
    7     8     8     1.08640626    -0.26069921   -25.26066885    -0.00000036    -0.00000004  0.25D-07  0.73D-08   223.89
    7     9     9     1.08640628    -0.26069921   -25.26066885    -0.00000036    -0.00000004  0.25D-07  0.73D-08   223.89
    7    10    10     1.08640576    -0.26069921   -25.26066884    -0.00000038    -0.00000004  0.26D-07  0.78D-08   223.89
    7    11    11     1.08640564    -0.26069921   -25.26066884    -0.00000040    -0.00000004  0.27D-07  0.82D-08   223.89
    7    12    12     1.08212368    -0.25639945   -25.24923626    -0.00000056    -0.00000007  0.32D-07  0.15D-07   223.89
    8     1     1     1.07713908    -0.25385517   -25.36985556    -0.00000000    -0.00000001  0.35D-08  0.12D-08   257.94
    8     2     2     1.08948790    -0.25981066   -25.31402868    -0.00000008    -0.00000001  0.65D-08  0.19D-08   257.94
    8     3     3     1.08948781    -0.25981066   -25.31402868    -0.00000008    -0.00000001  0.66D-08  0.20D-08   257.94
    8     4     4     1.08948763    -0.25981066   -25.31402868    -0.00000008    -0.00000001  0.68D-08  0.20D-08   257.94
    8     5     5     1.08948756    -0.25981066   -25.31402868    -0.00000008    -0.00000001  0.68D-08  0.20D-08   257.94
    8     6     6     1.08948750    -0.25981066   -25.31402868    -0.00000008    -0.00000001  0.69D-08  0.20D-08   257.94
    8     7     7     1.08641252    -0.26069925   -25.26066889    -0.00000004    -0.00000001  0.24D-08  0.15D-08   257.94
    8     8     8     1.08641258    -0.26069925   -25.26066889    -0.00000004    -0.00000001  0.24D-08  0.15D-08   257.94
    8     9     9     1.08641258    -0.26069925   -25.26066889    -0.00000004    -0.00000001  0.24D-08  0.15D-08   257.94
    8    10    10     1.08641233    -0.26069925   -25.26066889    -0.00000004    -0.00000001  0.26D-08  0.16D-08   257.94
    8    11    11     1.08641222    -0.26069925   -25.26066889    -0.00000004    -0.00000001  0.27D-08  0.17D-08   257.94
    8    12    12     1.08212592    -0.25639952   -25.24923633    -0.00000007    -0.00000000  0.12D-08  0.11D-08   257.94


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   2.0%
 S   1.8%  12.8%
 P   0.8%  14.0%  15.8%

 Initialization:   0.4%
 Other:           52.4%

 Total CPU:      257.9 seconds
 =====================================



 gnormi=  0.92838522  gnorms=  0.03069478  gnormp=  0.04092000  gnorm=  1.00000000
 ecorri= -0.23567539  ecorrs= -0.00779345  ecorrp= -0.01038633  ecorr= -0.25385517

 gnormi=  0.91786242  gnorms=  0.03690073  gnormp=  0.04523685  gnorm=  1.00000000
 ecorri= -0.23847044  ecorrs= -0.00958922  ecorrp= -0.01175100  ecorr= -0.25981066

 gnormi=  0.91786249  gnorms=  0.03690066  gnormp=  0.04523685  gnorm=  1.00000000
 ecorri= -0.23847046  ecorrs= -0.00958921  ecorrp= -0.01175099  ecorr= -0.25981066

 gnormi=  0.91786265  gnorms=  0.03690049  gnormp=  0.04523686  gnorm=  1.00000000
 ecorri= -0.23847050  ecorrs= -0.00958919  ecorrp= -0.01175097  ecorr= -0.25981066

 gnormi=  0.91786271  gnorms=  0.03690042  gnormp=  0.04523687  gnorm=  1.00000000
 ecorri= -0.23847051  ecorrs= -0.00958918  ecorrp= -0.01175097  ecorr= -0.25981066

 gnormi=  0.91786275  gnorms=  0.03690039  gnormp=  0.04523686  gnorm=  1.00000000
 ecorri= -0.23847052  ecorrs= -0.00958918  ecorrp= -0.01175096  ecorr= -0.25981066

 gnormi=  0.92046067  gnorms=  0.02957704  gnormp=  0.04996228  gnorm=  1.00000000
 ecorri= -0.23996341  ecorrs= -0.00771149  ecorrp= -0.01302435  ecorr= -0.26069925

 gnormi=  0.92046062  gnorms=  0.02957711  gnormp=  0.04996226  gnorm=  1.00000000
 ecorri= -0.23996340  ecorrs= -0.00771150  ecorrp= -0.01302435  ecorr= -0.26069925

 gnormi=  0.92046062  gnorms=  0.02957711  gnormp=  0.04996227  gnorm=  1.00000000
 ecorri= -0.23996340  ecorrs= -0.00771151  ecorrp= -0.01302435  ecorr= -0.26069925

 gnormi=  0.92046083  gnorms=  0.02957686  gnormp=  0.04996230  gnorm=  1.00000000
 ecorri= -0.23996345  ecorrs= -0.00771146  ecorrp= -0.01302434  ecorr= -0.26069925

 gnormi=  0.92046093  gnorms=  0.02957672  gnormp=  0.04996235  gnorm=  1.00000000
 ecorri= -0.23996347  ecorrs= -0.00771144  ecorrp= -0.01302434  ecorr= -0.26069925

 gnormi=  0.92410687  gnorms=  0.03099707  gnormp=  0.04489606  gnorm=  1.00000000
 ecorri= -0.23694056  ecorrs= -0.00794798  ecorrp= -0.01151099  ecorr= -0.25639952

 Wavefunction saved on  5101.2

 Reference coefficients greater than 0.0500000
 =============================================
 22000000222000           0.9189460   0.0000000   0.0000000   0.0000000  -0.0000000  -0.0000000   0.0000000  -0.0000000
                         -0.0000000  -0.0000000  -0.0000000   0.0699970
 2/000\00222000          -0.0000000   0.0000000   0.0000000   0.0000000   0.0000000   0.8823725   0.0000000   0.0000000
                          0.1356041   0.0000000  -0.0000000   0.0000000
 2/00\000222000          -0.0000000  -0.0000000   0.0000000   0.8823725  -0.0000000  -0.0000000  -0.1356042  -0.0000000
                          0.0000000  -0.0000000   0.0000000   0.0000000
 2/0000\0222000           0.0000000  -0.0000000   0.0000000   0.0000000   0.8823725  -0.0000000  -0.0000000   0.1356041
                          0.0000000  -0.0000000   0.0000000   0.0000000
 2/0\0000222000           0.0000000   0.8811568   0.0463059   0.0000000   0.0000000  -0.0000000   0.0000000   0.0000000
                          0.0000000   0.0047929  -0.1355187  -0.0000001
 2/\00000222000           0.0000000  -0.0463059   0.8811567  -0.0000000  -0.0000000  -0.0000000  -0.0000000   0.0000000
                          0.0000000  -0.1355191  -0.0047929  -0.0000000
 2/00000\222000          -0.0951253  -0.0000001  -0.0000000  -0.0000000  -0.0000000   0.0000000   0.0000000  -0.0000000
                         -0.0000000   0.0000001   0.0000002   0.7363836
 200/\000222000           0.0000000   0.0000000  -0.0000000   0.2000093  -0.0000000  -0.0000000   0.6374445   0.0000000
                          0.0000000   0.0000000   0.0000000  -0.0000000
 20/\0000222000           0.0000001  -0.0104963   0.1997337  -0.0000000   0.0000000   0.0000000  -0.0000000   0.0000000
                          0.0000000   0.6370510   0.0225306   0.0000002
 2000/\00222000          -0.0000000   0.0000000   0.0000000   0.0000000  -0.1732131   0.0000000   0.0000000   0.5520460
                          0.0000000  -0.0000000  -0.0000000  -0.0000000
 2000/0\0222000          -0.0000000  -0.0000000   0.0000000  -0.0000000   0.0000000  -0.1732131  -0.0000000   0.0000000
                          0.5520459  -0.0000000  -0.0000000   0.0000000
 20000/\0222000           0.0000000   0.0000000  -0.0000000  -0.1732130   0.0000000   0.0000000  -0.5520455   0.0000000
                         -0.0000000  -0.0000000   0.0000000   0.0000000
 20/00\00222000          -0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.1732132  -0.0000000   0.0000000
                          0.5520430   0.0000000  -0.0000000   0.0000000
 20/000\0222000          -0.0000000  -0.0000000   0.0000000  -0.0000000   0.1732132   0.0000000   0.0000000  -0.5520429
                          0.0000000  -0.0000000  -0.0000000  -0.0000000
 20002000222000          -0.0543179   0.1412329   0.0074220  -0.0000000  -0.0000000  -0.0000000   0.0000000   0.0000000
                          0.0000000  -0.0159315   0.4504622   0.2219800
 20020000222000          -0.0543189  -0.1412328  -0.0074220  -0.0000000   0.0000000  -0.0000000   0.0000000   0.0000000
                          0.0000000   0.0159314  -0.4504588   0.2219764
 20200000222000          -0.0543189   0.1412330   0.0074220  -0.0000000  -0.0000000  -0.0000000  -0.0000000   0.0000000
                         -0.0000000  -0.0159314   0.4504584   0.2219767
 20000000222/\0          -0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.2490943   0.0000000  -0.0000000
                         -0.4144242   0.0000000  -0.0000000   0.0000000
 20000000222/0\           0.0000000   0.0000000  -0.0000000   0.0000000  -0.2490943   0.0000000   0.0000000  -0.4144242
                          0.0000000   0.0000000  -0.0000000   0.0000000
 200000002220/\          -0.0000000   0.0000000   0.0000000  -0.2490942   0.0000000   0.0000000   0.4144240   0.0000000
                          0.0000000   0.0000000   0.0000000  -0.0000000
 20000020222000          -0.0543179  -0.0770439   0.1186002   0.0000000  -0.0000000  -0.0000000   0.0000000   0.0000000
                         -0.0000000   0.3980727  -0.2114342   0.2219798
 20000200222000          -0.0543178  -0.0641887  -0.1260221  -0.0000000   0.0000000  -0.0000000  -0.0000000   0.0000000
                          0.0000000  -0.3821414  -0.2390282   0.2219802
 20000000222200          -0.1289351  -0.2031038  -0.0106734  -0.0000000   0.0000000  -0.0000000   0.0000000  -0.0000000
                          0.0000000  -0.0119599   0.3381653  -0.1775370
 200/0\00222000          -0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.1000046  -0.0000000  -0.0000000
                          0.3187215   0.0000000   0.0000000   0.0000000
 200/00\0222000           0.0000000   0.0000000  -0.0000000   0.0000000  -0.1000046   0.0000000  -0.0000000   0.3187214
                         -0.0000000   0.0000000   0.0000000   0.0000000
 20000000222020          -0.1289352   0.1107953  -0.1705566  -0.0000000  -0.0000000   0.0000000  -0.0000000  -0.0000000
                          0.0000000   0.2988394  -0.1587251  -0.1775368
 20000000222002          -0.1289352   0.0923085   0.1812299   0.0000000  -0.0000000   0.0000000  -0.0000000  -0.0000000
                         -0.0000000  -0.2868795  -0.1794402  -0.1775369
 20000002222000          -0.0090038   0.0000001   0.0000000  -0.0000000  -0.0000000  -0.0000000   0.0000000   0.0000000
                          0.0000000  -0.0000000  -0.0000000  -0.1654260
 200000/\222000          -0.0000000  -0.0000000   0.0000000  -0.0000000   0.0142841  -0.0000000  -0.0000000   0.1165283
                          0.0000000   0.0000000   0.0000000   0.0000000
 20000/0\222000          -0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.0000000   0.0142841  -0.0000000  -0.0000000
                          0.1165283   0.0000000  -0.0000000  -0.0000000
 2000/00\222000          -0.0000000  -0.0000000   0.0000000   0.0142841  -0.0000000   0.0000000  -0.1165273   0.0000000
                         -0.0000000  -0.0000000   0.0000000   0.0000000
 200/000\222000           0.0000001   0.0142644   0.0007496  -0.0000000  -0.0000000  -0.0000000   0.0000000  -0.0000000
                         -0.0000000   0.0041188  -0.1164575   0.0000004
 20/0000\222000           0.0000000  -0.0007496   0.0142644  -0.0000000   0.0000000   0.0000000   0.0000000   0.0000000
                         -0.0000000  -0.1164557  -0.0041187  -0.0000000

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.955423   -0.000000    0.000000    0.000000   -0.000000    0.000000   -0.000000    0.000000    0.000000   -0.000000
            -0.000000   -0.069989
 2          -0.000000    0.949585   -0.000000    0.000000   -0.000000   -0.056345   -0.000000    0.062901   -0.003235   -0.000000
             0.000000   -0.000000
 3           0.000000    0.056345    0.000000    0.000000    0.000000    0.949585    0.000000    0.003235    0.062901    0.000000
             0.000000   -0.000000
 4           0.000000    0.000000    0.000000    0.000000    0.951256   -0.000000    0.062984    0.000000   -0.000000   -0.000000
            -0.000000   -0.000000
 5          -0.000000    0.000000    0.951256    0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.000000    0.000000
            -0.062984   -0.000000
 6           0.000000   -0.000000   -0.000000    0.951256   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000   -0.062984
            -0.000000   -0.000000
 7           0.000000    0.000000   -0.000000    0.000000   -0.062277   -0.000000    0.953064    0.000000   -0.000000   -0.000000
            -0.000000    0.000000
 8           0.000000    0.000000    0.062277    0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.000000    0.000000
             0.953064    0.000000
 9           0.000000    0.000000   -0.000000    0.062277    0.000000   -0.000000    0.000000    0.000000    0.000000    0.953064
            -0.000000    0.000000
 10          0.000000    0.001780   -0.000000   -0.000000    0.000000   -0.062251    0.000000   -0.034749    0.952430    0.000000
             0.000000    0.000000
 11          0.000000   -0.062251    0.000000    0.000000   -0.000000   -0.001780   -0.000000    0.952430    0.034749   -0.000000
             0.000000    0.000000
 12          0.073790    0.000000    0.000000   -0.000000    0.000000   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000
            -0.000000    0.953169

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.957981   -0.000000    0.000000    0.000000   -0.000000    0.000000   -0.000000    0.000000    0.000000    0.000000
             0.000000    0.001980
 2          -0.000000    0.953338    0.000000    0.000000   -0.000000    0.000000   -0.000000   -0.000000   -0.000000   -0.000036
             0.000410    0.000000
 3           0.000000    0.000000    0.953338   -0.000000   -0.000000   -0.000000    0.000000    0.000000    0.000000    0.000410
             0.000036   -0.000000
 4           0.000000    0.000000   -0.000000    0.953338    0.000000    0.000000    0.000412   -0.000000    0.000000   -0.000000
            -0.000000   -0.000000
 5          -0.000000   -0.000000   -0.000000    0.000000    0.953338    0.000000    0.000000   -0.000412   -0.000000    0.000000
             0.000000   -0.000000
 6           0.000000    0.000000   -0.000000    0.000000    0.000000    0.953339    0.000000    0.000000   -0.000412   -0.000000
            -0.000000   -0.000000
 7          -0.000000   -0.000000    0.000000    0.000412    0.000000    0.000000    0.955096   -0.000000   -0.000000    0.000000
             0.000000    0.000000
 8           0.000000   -0.000000    0.000000   -0.000000   -0.000412    0.000000   -0.000000    0.955096   -0.000000    0.000000
             0.000000   -0.000000
 9           0.000000   -0.000000    0.000000    0.000000   -0.000000   -0.000412   -0.000000   -0.000000    0.955096    0.000000
             0.000000   -0.000000
 10          0.000000   -0.000036    0.000410   -0.000000    0.000000   -0.000000    0.000000    0.000000    0.000000    0.955096
             0.000000    0.000000
 11          0.000000    0.000410    0.000036   -0.000000    0.000000   -0.000000    0.000000    0.000000    0.000000    0.000000
             0.955096    0.000000
 12          0.001980    0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.000000
             0.000000    0.956019


 RESULTS FOR STATE 1.1
 =====================

 Coefficient of reference function:   C(0) = 0.95542325 (fixed)   0.95823634 (relaxed)   0.95798127 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.01161248   -0.01952970   -0.18533212
 Singles      0.03344648   -0.07151461   -0.07342442
 Pairs        0.04458837    0.01665819    0.00490136
 Total        1.08964734   -0.07438611   -0.25385517
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -25.11530538
 Nuclear energy                         0.00000000
 Kinetic energy                         6.94644409
 One electron energy                  -41.21263680
 Two electron energy                   15.84278124
 Virial quotient                       -3.65220755
 Correlation energy                    -0.25455018
 !MRCI STATE 1.1 Energy               -25.369855557777

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.39267530 (Davidson, fixed reference)
 Cluster corrected energies           -25.39252766 (Davidson, relaxed reference)
 Cluster corrected energies           -25.39267530 (Davidson, rotated reference)

 Cluster corrected energies           -25.38912149 (Pople, fixed reference)
 Cluster corrected energies           -25.38899018 (Pople, relaxed reference)
 Cluster corrected energies           -25.38912149 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Coefficient of reference function:   C(0) = 0.94958539 (fixed)   0.95437911 (relaxed)   0.95333831 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00991192   -0.01430204   -0.17280504
 Singles      0.04060139   -0.07225077   -0.07525462
 Pairs        0.04977351   -0.00000000   -0.01175100
 Total        1.10028681   -0.08655282   -0.25981066
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -25.05398433
 Nuclear energy                         0.00000000
 Kinetic energy                         7.12734133
 One electron energy                  -41.46916305
 Two electron energy                   16.15513436
 Virial quotient                       -3.55167902
 Correlation energy                    -0.26004436
 !MRCI STATE 2.1 Energy               -25.314028684606

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.34010770 (Davidson, fixed reference)
 Cluster corrected energies           -25.33948398 (Davidson, relaxed reference)
 Cluster corrected energies           -25.34010770 (Davidson, rotated reference)

 Cluster corrected energies           -25.33618736 (Pople, fixed reference)
 Cluster corrected energies           -25.33562629 (Pople, relaxed reference)
 Cluster corrected energies           -25.33618736 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  6

 Coefficient of reference function:   C(0) = 0.94958545 (fixed)   0.95437915 (relaxed)   0.95333836 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00991189   -0.01430204   -0.17280506
 Singles      0.04060130   -0.07225076   -0.07525461
 Pairs        0.04977350    0.00000000   -0.01175098
 Total        1.10028669   -0.08655280   -0.25981066
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -25.05398433
 Nuclear energy                         0.00000000
 Kinetic energy                         7.12734126
 One electron energy                  -41.46916249
 Two electron energy                   16.15513381
 Virial quotient                       -3.55167906
 Correlation energy                    -0.26004436
 !MRCI STATE 3.1 Energy               -25.314028684415

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.34010767 (Davidson, fixed reference)
 Cluster corrected energies           -25.33948396 (Davidson, relaxed reference)
 Cluster corrected energies           -25.34010767 (Davidson, rotated reference)

 Cluster corrected energies           -25.33618733 (Pople, fixed reference)
 Cluster corrected energies           -25.33562627 (Pople, relaxed reference)
 Cluster corrected energies           -25.33618733 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.95125573 (fixed)   0.95437924 (relaxed)   0.95333847 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00991184   -0.01430204   -0.17280511
 Singles      0.04060111   -0.07225073   -0.07525458
 Pairs        0.04977351    0.00000000   -0.01175097
 Total        1.10028646   -0.08655277   -0.25981066
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -25.05398433
 Nuclear energy                         0.00000000
 Kinetic energy                         7.12734115
 One electron energy                  -41.46916093
 Two electron energy                   16.15513225
 Virial quotient                       -3.55167911
 Correlation energy                    -0.26004436
 !MRCI STATE 4.1 Energy               -25.314028684125

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.34010761 (Davidson, fixed reference)
 Cluster corrected energies           -25.33948390 (Davidson, relaxed reference)
 Cluster corrected energies           -25.34010761 (Davidson, rotated reference)

 Cluster corrected energies           -25.33618728 (Pople, fixed reference)
 Cluster corrected energies           -25.33562623 (Pople, relaxed reference)
 Cluster corrected energies           -25.33618728 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.95125576 (fixed)   0.95437927 (relaxed)   0.95333850 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00991184   -0.01430203   -0.17280512
 Singles      0.04060103   -0.07225073   -0.07525457
 Pairs        0.04977351    0.00000000   -0.01175097
 Total        1.10028638   -0.08655277   -0.25981066
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -25.05398433
 Nuclear energy                         0.00000000
 Kinetic energy                         7.12734111
 One electron energy                  -41.46916058
 Two electron energy                   16.15513189
 Virial quotient                       -3.55167913
 Correlation energy                    -0.26004436
 !MRCI STATE 5.1 Energy               -25.314028684042

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.34010759 (Davidson, fixed reference)
 Cluster corrected energies           -25.33948388 (Davidson, relaxed reference)
 Cluster corrected energies           -25.34010759 (Davidson, rotated reference)

 Cluster corrected energies           -25.33618726 (Pople, fixed reference)
 Cluster corrected energies           -25.33562621 (Pople, relaxed reference)
 Cluster corrected energies           -25.33618726 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.95125579 (fixed)   0.95437929 (relaxed)   0.95333852 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00991183   -0.01430203   -0.17280514
 Singles      0.04060100   -0.07225073   -0.07525456
 Pairs        0.04977349    0.00000000   -0.01175096
 Total        1.10028632   -0.08655276   -0.25981066
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -25.05398433
 Nuclear energy                         0.00000000
 Kinetic energy                         7.12734102
 One electron energy                  -41.46916023
 Two electron energy                   16.15513155
 Virial quotient                       -3.55167918
 Correlation energy                    -0.26004436
 !MRCI STATE 6.1 Energy               -25.314028684014

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.34010758 (Davidson, fixed reference)
 Cluster corrected energies           -25.33948387 (Davidson, relaxed reference)
 Cluster corrected energies           -25.34010758 (Davidson, rotated reference)

 Cluster corrected energies           -25.33618725 (Pople, fixed reference)
 Cluster corrected energies           -25.33562620 (Pople, relaxed reference)
 Cluster corrected energies           -25.33618725 (Pople, rotated reference)



 RESULTS FOR STATE 7.1
 =====================

 Coefficient of reference function:   C(0) = 0.95306364 (fixed)   0.95645399 (relaxed)   0.95509609 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00904633   -0.01188653   -0.17821094
 Singles      0.03242356   -0.06769556   -0.06946396
 Pairs        0.05477068   -0.00000000   -0.01302435
 Total        1.09624056   -0.07958209   -0.26069925
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -25.00020334
 Nuclear energy                         0.00000000
 Kinetic energy                         7.22081290
 One electron energy                  -41.51054103
 Two electron energy                   16.24987214
 Virial quotient                       -3.49831373
 Correlation energy                    -0.26046555
 !MRCI STATE 7.1 Energy               -25.260668887368

 Properties without orbital relaxation:

 !MRCI STATE 7.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.28573624 (Davidson, fixed reference)
 Cluster corrected energies           -25.28492606 (Davidson, relaxed reference)
 Cluster corrected energies           -25.28573624 (Davidson, rotated reference)

 Cluster corrected energies           -25.28191633 (Pople, fixed reference)
 Cluster corrected energies           -25.28119126 (Pople, relaxed reference)
 Cluster corrected energies           -25.28191633 (Pople, rotated reference)



 RESULTS FOR STATE 8.1
 =====================

 Maximum overlap with reference state 11

 Coefficient of reference function:   C(0) = 0.95306364 (fixed)   0.95645396 (relaxed)   0.95509608 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00904628   -0.01188654   -0.17821092
 Singles      0.03242363   -0.06769557   -0.06946398
 Pairs        0.05477066   -0.00000000   -0.01302435
 Total        1.09624057   -0.07958211   -0.26069925
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -25.00020334
 Nuclear energy                         0.00000000
 Kinetic energy                         7.22081259
 One electron energy                  -41.51054000
 Two electron energy                   16.24987112
 Virial quotient                       -3.49831388
 Correlation energy                    -0.26046555
 !MRCI STATE 8.1 Energy               -25.260668887328

 Properties without orbital relaxation:

 !MRCI STATE 8.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.28573624 (Davidson, fixed reference)
 Cluster corrected energies           -25.28492608 (Davidson, relaxed reference)
 Cluster corrected energies           -25.28573624 (Davidson, rotated reference)

 Cluster corrected energies           -25.28191633 (Pople, fixed reference)
 Cluster corrected energies           -25.28119127 (Pople, relaxed reference)
 Cluster corrected energies           -25.28191633 (Pople, rotated reference)



 RESULTS FOR STATE 9.1
 =====================

 Maximum overlap with reference state 10

 Coefficient of reference function:   C(0) = 0.95306364 (fixed)   0.95645396 (relaxed)   0.95509608 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00904628   -0.01188654   -0.17821092
 Singles      0.03242363   -0.06769557   -0.06946399
 Pairs        0.05477067    0.00000000   -0.01302435
 Total        1.09624057   -0.07958211   -0.26069925
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -25.00020334
 Nuclear energy                         0.00000000
 Kinetic energy                         7.22081254
 One electron energy                  -41.51053983
 Two electron energy                   16.24987094
 Virial quotient                       -3.49831390
 Correlation energy                    -0.26046555
 !MRCI STATE 9.1 Energy               -25.260668887309

 Properties without orbital relaxation:

 !MRCI STATE 9.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.28573624 (Davidson, fixed reference)
 Cluster corrected energies           -25.28492608 (Davidson, relaxed reference)
 Cluster corrected energies           -25.28573624 (Davidson, rotated reference)

 Cluster corrected energies           -25.28191633 (Pople, fixed reference)
 Cluster corrected energies           -25.28119127 (Pople, relaxed reference)
 Cluster corrected energies           -25.28191633 (Pople, rotated reference)



 RESULTS FOR STATE 10.1
 ======================

 Maximum overlap with reference state  9

 Coefficient of reference function:   C(0) = 0.95243011 (fixed)   0.95645407 (relaxed)   0.95509623 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00904620   -0.01188653   -0.17821092
 Singles      0.03242335   -0.06769562   -0.06946400
 Pairs        0.05477069    0.00000001   -0.01302434
 Total        1.09624024   -0.07958214   -0.26069925
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -25.00020334
 Nuclear energy                         0.00000000
 Kinetic energy                         7.22081004
 One electron energy                  -41.51053089
 Two electron energy                   16.24986200
 Virial quotient                       -3.49831511
 Correlation energy                    -0.26046555
 !MRCI STATE 10.1 Energy              -25.260668886729

 Properties without orbital relaxation:

 !MRCI STATE 10.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.28573615 (Davidson, fixed reference)
 Cluster corrected energies           -25.28492601 (Davidson, relaxed reference)
 Cluster corrected energies           -25.28573615 (Davidson, rotated reference)

 Cluster corrected energies           -25.28191625 (Pople, fixed reference)
 Cluster corrected energies           -25.28119121 (Pople, relaxed reference)
 Cluster corrected energies           -25.28191625 (Pople, rotated reference)



 RESULTS FOR STATE 11.1
 ======================

 Maximum overlap with reference state  8

 Coefficient of reference function:   C(0) = 0.95243021 (fixed)   0.95645412 (relaxed)   0.95509634 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00904608   -0.01188652   -0.17821089
 Singles      0.03242319   -0.06769568   -0.06946405
 Pairs        0.05477073    0.00000002   -0.01302432
 Total        1.09623999   -0.07958218   -0.26069925
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -25.00020334
 Nuclear energy                         0.00000000
 Kinetic energy                         7.22080720
 One electron energy                  -41.51052092
 Two electron energy                   16.24985204
 Virial quotient                       -3.49831649
 Correlation energy                    -0.26046555
 !MRCI STATE 11.1 Energy              -25.260668886170

 Properties without orbital relaxation:

 !MRCI STATE 11.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.28573609 (Davidson, fixed reference)
 Cluster corrected energies           -25.28492598 (Davidson, relaxed reference)
 Cluster corrected energies           -25.28573609 (Davidson, rotated reference)

 Cluster corrected energies           -25.28191619 (Pople, fixed reference)
 Cluster corrected energies           -25.28119118 (Pople, relaxed reference)
 Cluster corrected energies           -25.28191619 (Pople, rotated reference)



 RESULTS FOR STATE 12.1
 ======================

 Coefficient of reference function:   C(0) = 0.95316917 (fixed)   0.95679509 (relaxed)   0.95601908 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.01108829   -0.01708908   -0.01896539
 Singles      0.03391467   -0.07019571   -0.07210492
 Pairs        0.04912189   -0.16829635   -0.16532922
 Total        1.09412485   -0.25558114   -0.25639952
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -24.99353182
 Nuclear energy                         0.00000000
 Kinetic energy                         7.00049025
 One electron energy                  -40.67485917
 Two electron energy                   15.42562283
 Virial quotient                       -3.60678116
 Correlation energy                    -0.25570452
 !MRCI STATE 12.1 Energy              -25.249236333317

 Properties without orbital relaxation:

 !MRCI STATE 12.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.27330448 (Davidson, fixed reference)
 Cluster corrected energies           -25.27285085 (Davidson, relaxed reference)
 Cluster corrected energies           -25.27330448 (Davidson, rotated reference)

 Cluster corrected energies           -25.26961095 (Pople, fixed reference)
 Cluster corrected energies           -25.26920565 (Pople, relaxed reference)
 Cluster corrected energies           -25.26961095 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       58.40       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1700(1)
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    OPER   
                                         1380   
                                         JKOP   

              2       7      324.52       700     1000      520     2100     2140     2141     5101   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI     MULTI   RHF-SCF       INT
 CPU TIMES  *       288.04    278.07      3.40      2.74      0.75      2.83
 REAL TIME  *       314.64 SEC
 DISK USED  *       382.99 MB (local),        4.96 GB (total)
 SF USED    *         3.04 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =       -25.39267530  AU                              
 SETTING HLSDIAG(2)     =       -25.34010770  AU                              
 SETTING HLSDIAG(3)     =       -25.34010767  AU                              
 SETTING HLSDIAG(4)     =       -25.34010761  AU                              
 SETTING HLSDIAG(5)     =       -25.34010759  AU                              
 SETTING HLSDIAG(6)     =       -25.34010758  AU                              
 SETTING HLSDIAG(7)     =       -25.28573624  AU                              
 SETTING HLSDIAG(8)     =       -25.28573624  AU                              
 SETTING HLSDIAG(9)     =       -25.28573624  AU                              
 SETTING HLSDIAG(10)    =       -25.28573615  AU                              
 SETTING HLSDIAG(11)    =       -25.28573609  AU                              
 SETTING HLSDIAG(12)    =       -25.27330448  AU                              


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 16  Roots:   1   2   3   4   5   6   7   8   9  10  11  12  13  14  15  16
 Number of reference states: 16  Roots:   1   2   3   4   5   6   7   8   9  10  11  12  13  14  15  16

 Reference symmetry:                   1   Triplet 
 Number of electrons:                 10
 Maximum number of shells:             4
 Maximum number of spin couplings:    28

 Reference space:       24 conf       24 CSFs
 N elec internal:     6729 conf    23769 CSFs
 N-1 el internal:     1910 conf     9566 CSFs
 N-2 el internal:      281 conf     1705 CSFs

 Number of electrons in valence space:                     10
 Maximum number of open shell orbitals in reference space:  2
 Maximum number of open shell orbitals in internal spaces:  8


 Number of closed-shell orbitals:   4 (   1   3 )
 Number of active  orbitals:       10 (   7   3 )
 Number of external orbitals:     199 (  93 106 )

 Molecular orbitals read from record     2141.2  Type=MCSCF/NATURAL (state averaged)

 Coulomb and exchange operators available. No transformation done.


 Number of p-space configurations:  24

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1       -25.06116107
     2       -25.06116107
     3       -25.06116107
     4       -25.06116107
     5       -25.06116107
     6       -25.00448055
     7       -25.00448055
     8       -25.00448055
     9       -25.00448055
    10       -25.00448055
    11       -25.00448055
    12       -25.00448055
    13       -25.00020067
    14       -25.00020067
    15       -25.00020067
    16       -24.99853534

 Number of blocks in overlap matrix:   329   Smallest eigenvalue:  0.67D+00
 Number of N-2 electron functions:     337
 Number of N-1 electron functions:    9566

 Number of internal configurations:                11838
 Number of singly external configurations:        951726
 Number of doubly external configurations:       3344723
 Total number of contracted configurations:      4308287
 Total number of uncontracted configurations:   17821951

 Diagonal Coupling coefficients finished.               Storage: 6335310 words, CPU-Time:      1.44 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage: 1354771 words, CPU-time:      0.18 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000   -25.06116107    -0.00000000    -0.26849837  0.52D-01  0.55D-01     2.77
    1     2     2     1.00000000     0.00000000   -25.06116107    -0.00000000    -0.26851168  0.52D-01  0.55D-01     2.77
    1     3     3     1.00000000     0.00000000   -25.06116107     0.00000000    -0.26851484  0.52D-01  0.55D-01     2.77
    1     4     4     1.00000000     0.00000000   -25.06116107     0.00000000    -0.26849632  0.52D-01  0.55D-01     2.77
    1     5     5     1.00000000     0.00000000   -25.06116107     0.00000000    -0.26849452  0.52D-01  0.55D-01     2.77
    1     6     6     1.00000000     0.00000000   -25.00448055    -0.00000000    -0.28278116  0.48D-01  0.66D-01     2.77
    1     7     7     1.00000000     0.00000000   -25.00448055    -0.00000000    -0.28276746  0.48D-01  0.66D-01     2.77
    1     8     8     1.00000000     0.00000000   -25.00448055    -0.00000000    -0.28269591  0.48D-01  0.66D-01     2.77
    1     9     9     1.00000000     0.00000000   -25.00448055    -0.00000000    -0.28269691  0.48D-01  0.66D-01     2.77
    1    10    10     1.00000000     0.00000000   -25.00448055    -0.00000000    -0.28263227  0.48D-01  0.66D-01     2.77
    1    11    11     1.00000000     0.00000000   -25.00448055    -0.00000000    -0.28261099  0.48D-01  0.66D-01     2.77
    1    12    12     1.00000000     0.00000000   -25.00448055    -0.00000000    -0.28260973  0.48D-01  0.66D-01     2.77
    1    13    13     1.00000000     0.00000000   -25.00020067     0.00000000    -0.26771597  0.42D-01  0.61D-01     2.77
    1    14    14     1.00000000     0.00000000   -25.00020067     0.00000000    -0.26771428  0.42D-01  0.61D-01     2.77
    1    15    15     1.00000000     0.00000000   -25.00020067    -0.00000000    -0.26762232  0.42D-01  0.61D-01     2.77
    1    16    16     1.00000000     0.00000000   -24.99853534     0.00000000    -0.23970624  0.46D-01  0.43D-01     2.77
    2     1     1     1.08424380    -0.25409219   -25.31525326    -0.25409219    -0.00781780  0.28D-02  0.11D-02    68.57
    2     2     2     1.08424781    -0.25409129   -25.31525236    -0.25409129    -0.00781734  0.28D-02  0.11D-02    68.57
    2     3     3     1.08423559    -0.25408745   -25.31524852    -0.25408745    -0.00782183  0.28D-02  0.11D-02    68.57
    2     4     4     1.08425709    -0.25408119   -25.31524226    -0.25408119    -0.00782685  0.29D-02  0.11D-02    68.57
    2     5     5     1.08425576    -0.25407768   -25.31523875    -0.25407768    -0.00783017  0.29D-02  0.11D-02    68.57
    2     6     6     1.08697018    -0.25667811   -25.26115866    -0.25667811    -0.00770153  0.30D-02  0.13D-02    68.57
    2     7     7     1.08696965    -0.25667746   -25.26115801    -0.25667746    -0.00770208  0.30D-02  0.13D-02    68.57
    2     8     8     1.08699751    -0.25667415   -25.26115471    -0.25667415    -0.00770500  0.30D-02  0.13D-02    68.57
    2     9     9     1.08699728    -0.25666295   -25.26114350    -0.25666295    -0.00772275  0.30D-02  0.13D-02    68.57
    2    10    10     1.08699643    -0.25666275   -25.26114330    -0.25666275    -0.00772285  0.30D-02  0.13D-02    68.57
    2    11    11     1.08700265    -0.25664971   -25.26113026    -0.25664971    -0.00774181  0.30D-02  0.13D-02    68.57
    2    12    12     1.08698511    -0.25664834   -25.26112890    -0.25664834    -0.00774246  0.30D-02  0.13D-02    68.57
    2    13    13     1.08142101    -0.25023785   -25.25043851    -0.25023785    -0.00770975  0.33D-02  0.14D-02    68.57
    2    14    14     1.08146084    -0.25020603   -25.25040669    -0.25020603    -0.00774795  0.33D-02  0.14D-02    68.57
    2    15    15     1.08146016    -0.25020582   -25.25040649    -0.25020582    -0.00774774  0.33D-02  0.14D-02    68.57
    2    16    16     1.07910973    -0.24438526   -25.24292060    -0.24438526    -0.00567247  0.17D-02  0.79D-03    68.57
    3     1     1     1.08594285    -0.26195020   -25.32311127    -0.00785802    -0.00037321  0.12D-03  0.58D-04   134.88
    3     2     2     1.08594314    -0.26195015   -25.32311122    -0.00785886    -0.00037319  0.12D-03  0.58D-04   134.88
    3     3     3     1.08594280    -0.26195002   -25.32311110    -0.00786258    -0.00037335  0.12D-03  0.58D-04   134.88
    3     4     4     1.08594086    -0.26194945   -25.32311052    -0.00786826    -0.00037382  0.12D-03  0.58D-04   134.88
    3     5     5     1.08594059    -0.26194942   -25.32311049    -0.00787174    -0.00037385  0.12D-03  0.58D-04   134.88
    3     6     6     1.08821791    -0.26442022   -25.26890077    -0.00774211    -0.00031846  0.83D-04  0.60D-04   134.88
    3     7     7     1.08821528    -0.26442015   -25.26890070    -0.00774269    -0.00031799  0.82D-04  0.60D-04   134.88
    3     8     8     1.08820696    -0.26441948   -25.26890004    -0.00774533    -0.00031823  0.83D-04  0.60D-04   134.88
    3     9     9     1.08820682    -0.26441948   -25.26890003    -0.00775654    -0.00031822  0.83D-04  0.60D-04   134.88
    3    10    10     1.08820058    -0.26441918   -25.26889973    -0.00775643    -0.00031713  0.83D-04  0.60D-04   134.88
    3    11    11     1.08820043    -0.26441916   -25.26889971    -0.00776945    -0.00031714  0.83D-04  0.60D-04   134.88
    3    12    12     1.08820209    -0.26441870   -25.26889925    -0.00777035    -0.00031744  0.83D-04  0.60D-04   134.88
    3    13    13     1.08125774    -0.25790350   -25.25810417    -0.00766566    -0.00035931  0.67D-04  0.87D-04   134.88
    3    14    14     1.08126203    -0.25790095   -25.25810162    -0.00769492    -0.00036207  0.67D-04  0.88D-04   134.88
    3    15    15     1.08126178    -0.25790095   -25.25810162    -0.00769513    -0.00036205  0.67D-04  0.88D-04   134.88
    3    16    16     1.08133348    -0.25037069   -25.24890603    -0.00598544    -0.00023284  0.55D-04  0.36D-04   134.88
    4     1     1     1.08839300    -0.26237540   -25.32353647    -0.00042520    -0.00003243  0.26D-04  0.28D-05   200.92
    4     2     2     1.08839245    -0.26237528   -25.32353635    -0.00042514    -0.00003248  0.26D-04  0.28D-05   200.92
    4     3     3     1.08839242    -0.26237528   -25.32353635    -0.00042526    -0.00003248  0.26D-04  0.28D-05   200.92
    4     4     4     1.08839149    -0.26237522   -25.32353630    -0.00042577    -0.00003240  0.26D-04  0.28D-05   200.92
    4     5     5     1.08839076    -0.26237522   -25.32353629    -0.00042580    -0.00003240  0.26D-04  0.28D-05   200.92
    4     6     6     1.09018166    -0.26478668   -25.26926723    -0.00036646    -0.00002338  0.18D-04  0.23D-05   200.92
    4     7     7     1.09018057    -0.26478616   -25.26926671    -0.00036601    -0.00002330  0.18D-04  0.23D-05   200.92
    4     8     8     1.09018116    -0.26478608   -25.26926663    -0.00036660    -0.00002350  0.18D-04  0.23D-05   200.92
    4     9     9     1.09018125    -0.26478608   -25.26926663    -0.00036660    -0.00002350  0.18D-04  0.23D-05   200.92
    4    10    10     1.09018068    -0.26478512   -25.26926567    -0.00036594    -0.00002348  0.18D-04  0.23D-05   200.92
    4    11    11     1.09018061    -0.26478512   -25.26926567    -0.00036596    -0.00002348  0.18D-04  0.23D-05   200.92
    4    12    12     1.09018150    -0.26478495   -25.26926551    -0.00036625    -0.00002354  0.18D-04  0.23D-05   200.92
    4    13    13     1.08278554    -0.25831080   -25.25851147    -0.00040730    -0.00002767  0.19D-04  0.38D-05   200.92
    4    14    14     1.08278332    -0.25831065   -25.25851131    -0.00040970    -0.00002787  0.19D-04  0.38D-05   200.92
    4    15    15     1.08278333    -0.25831064   -25.25851130    -0.00040969    -0.00002788  0.19D-04  0.38D-05   200.92
    4    16    16     1.08259460    -0.25061827   -25.24915361    -0.00024758    -0.00001079  0.57D-05  0.13D-05   200.92
    5     1     1     1.08958436    -0.26241814   -25.32357921    -0.00004274    -0.00000417  0.17D-05  0.57D-06   267.30
    5     2     2     1.08958412    -0.26241808   -25.32357915    -0.00004280    -0.00000417  0.17D-05  0.57D-06   267.30
    5     3     3     1.08958412    -0.26241808   -25.32357915    -0.00004280    -0.00000417  0.17D-05  0.57D-06   267.30
    5     4     4     1.08958315    -0.26241791   -25.32357899    -0.00004269    -0.00000416  0.17D-05  0.57D-06   267.30
    5     5     5     1.08958305    -0.26241791   -25.32357899    -0.00004270    -0.00000417  0.17D-05  0.57D-06   267.30
    5     6     6     1.09099932    -0.26481646   -25.26929702    -0.00002978    -0.00000220  0.80D-06  0.36D-06   267.30
    5     7     7     1.09099822    -0.26481607   -25.26929662    -0.00002991    -0.00000222  0.82D-06  0.36D-06   267.30
    5     8     8     1.09099822    -0.26481607   -25.26929662    -0.00002999    -0.00000222  0.82D-06  0.36D-06   267.30
    5     9     9     1.09099886    -0.26481586   -25.26929641    -0.00002978    -0.00000219  0.80D-06  0.36D-06   267.30
    5    10    10     1.09099858    -0.26481515   -25.26929570    -0.00003003    -0.00000222  0.81D-06  0.36D-06   267.30
    5    11    11     1.09099855    -0.26481515   -25.26929570    -0.00003003    -0.00000222  0.81D-06  0.36D-06   267.30
    5    12    12     1.09099835    -0.26481505   -25.26929560    -0.00003010    -0.00000223  0.81D-06  0.36D-06   267.30
    5    13    13     1.08332273    -0.25834565   -25.25854632    -0.00003485    -0.00000322  0.12D-05  0.64D-06   267.30
    5    14    14     1.08332225    -0.25834563   -25.25854629    -0.00003498    -0.00000324  0.13D-05  0.65D-06   267.30
    5    15    15     1.08332228    -0.25834563   -25.25854629    -0.00003499    -0.00000324  0.13D-05  0.65D-06   267.30
    5    16    16     1.08283292    -0.25063001   -25.24916535    -0.00001174    -0.00000070  0.41D-06  0.82D-07   267.30
    6     1     1     1.08978607    -0.26242328   -25.32358435    -0.00000514    -0.00000038  0.18D-06  0.44D-07   333.24
    6     2     2     1.08978591    -0.26242323   -25.32358430    -0.00000515    -0.00000038  0.18D-06  0.44D-07   333.24
    6     3     3     1.08978589    -0.26242323   -25.32358430    -0.00000515    -0.00000038  0.18D-06  0.44D-07   333.24
    6     4     4     1.08978486    -0.26242305   -25.32358412    -0.00000514    -0.00000038  0.18D-06  0.44D-07   333.24
    6     5     5     1.08978474    -0.26242305   -25.32358412    -0.00000514    -0.00000038  0.18D-06  0.44D-07   333.24
    6     6     6     1.09106612    -0.26481910   -25.26929966    -0.00000264    -0.00000015  0.44D-07  0.31D-07   333.24
    6     7     7     1.09106608    -0.26481873   -25.26929929    -0.00000267    -0.00000015  0.44D-07  0.31D-07   333.24
    6     8     8     1.09106609    -0.26481873   -25.26929929    -0.00000267    -0.00000015  0.44D-07  0.31D-07   333.24
    6     9     9     1.09106504    -0.26481849   -25.26929904    -0.00000263    -0.00000015  0.43D-07  0.31D-07   333.24
    6    10    10     1.09106510    -0.26481782   -25.26929837    -0.00000267    -0.00000015  0.44D-07  0.31D-07   333.24
    6    11    11     1.09106509    -0.26481782   -25.26929837    -0.00000267    -0.00000015  0.44D-07  0.31D-07   333.24
    6    12    12     1.09106525    -0.26481772   -25.26929828    -0.00000268    -0.00000015  0.44D-07  0.31D-07   333.24
    6    13    13     1.08335238    -0.25834944   -25.25855010    -0.00000379    -0.00000028  0.63D-07  0.56D-07   333.24
    6    14    14     1.08335246    -0.25834943   -25.25855010    -0.00000381    -0.00000028  0.64D-07  0.56D-07   333.24
    6    15    15     1.08335245    -0.25834943   -25.25855010    -0.00000381    -0.00000028  0.64D-07  0.56D-07   333.24
    6    16    16     1.08286272    -0.25063084   -25.24916618    -0.00000083    -0.00000007  0.35D-07  0.83D-08   333.24
    7     1     1     1.08985016    -0.26242369   -25.32358476    -0.00000041    -0.00000004  0.29D-07  0.36D-08   399.21
    7     2     2     1.08985015    -0.26242364   -25.32358472    -0.00000041    -0.00000004  0.29D-07  0.36D-08   399.21
    7     3     3     1.08985015    -0.26242364   -25.32358472    -0.00000041    -0.00000004  0.29D-07  0.36D-08   399.21
    7     4     4     1.08984882    -0.26242347   -25.32358454    -0.00000041    -0.00000004  0.29D-07  0.36D-08   399.21
    7     5     5     1.08984871    -0.26242347   -25.32358454    -0.00000041    -0.00000004  0.29D-07  0.35D-08   399.21
    7     6     6     1.09108637    -0.26481927   -25.26929982    -0.00000017    -0.00000001  0.10D-07  0.26D-08   399.21
    7     7     7     1.09108629    -0.26481890   -25.26929945    -0.00000017    -0.00000001  0.10D-07  0.26D-08   399.21
    7     8     8     1.09108629    -0.26481890   -25.26929945    -0.00000017    -0.00000001  0.10D-07  0.26D-08   399.21
    7     9     9     1.09108526    -0.26481865   -25.26929921    -0.00000016    -0.00000001  0.10D-07  0.26D-08   399.21
    7    10    10     1.09108545    -0.26481799   -25.26929854    -0.00000017    -0.00000001  0.10D-07  0.26D-08   399.21
    7    11    11     1.09108545    -0.26481799   -25.26929854    -0.00000017    -0.00000001  0.10D-07  0.26D-08   399.21
    7    12    12     1.09108553    -0.26481789   -25.26929845    -0.00000017    -0.00000001  0.10D-07  0.26D-08   399.21
    7    13    13     1.08336341    -0.25834973   -25.25855040    -0.00000029    -0.00000002  0.18D-07  0.30D-08   399.21
    7    14    14     1.08336340    -0.25834973   -25.25855040    -0.00000030    -0.00000002  0.18D-07  0.30D-08   399.21
    7    15    15     1.08336348    -0.25834973   -25.25855040    -0.00000029    -0.00000002  0.18D-07  0.29D-08   399.21
    7    16    16     1.08287203    -0.25063092   -25.24916626    -0.00000008    -0.00000001  0.58D-08  0.66D-09   399.21
    8     1     1     1.08987853    -0.26242373   -25.32358481    -0.00000004    -0.00000001  0.28D-08  0.70D-09   461.59
    8     2     2     1.08987853    -0.26242369   -25.32358476    -0.00000004    -0.00000001  0.28D-08  0.70D-09   461.59
    8     3     3     1.08987853    -0.26242369   -25.32358476    -0.00000004    -0.00000001  0.28D-08  0.70D-09   461.59
    8     4     4     1.08987717    -0.26242351   -25.32358458    -0.00000004    -0.00000001  0.28D-08  0.70D-09   461.59
    8     5     5     1.08987710    -0.26242351   -25.32358458    -0.00000004    -0.00000001  0.28D-08  0.70D-09   461.59
    8     6     6     1.09109657    -0.26481929   -25.26929984    -0.00000002    -0.00000000  0.61D-09  0.42D-09   461.59
    8     7     7     1.09109660    -0.26481892   -25.26929947    -0.00000002    -0.00000000  0.62D-09  0.42D-09   461.59
    8     8     8     1.09109660    -0.26481892   -25.26929947    -0.00000002    -0.00000000  0.62D-09  0.42D-09   461.59
    8     9     9     1.09109542    -0.26481867   -25.26929922    -0.00000002    -0.00000000  0.60D-09  0.42D-09   461.59
    8    10    10     1.09109576    -0.26481800   -25.26929856    -0.00000002    -0.00000000  0.61D-09  0.42D-09   461.59
    8    11    11     1.09109576    -0.26481800   -25.26929856    -0.00000002    -0.00000000  0.61D-09  0.42D-09   461.59
    8    12    12     1.09109587    -0.26481791   -25.26929846    -0.00000002    -0.00000000  0.62D-09  0.42D-09   461.59
    8    13    13     1.08337115    -0.25834976   -25.25855042    -0.00000003    -0.00000000  0.12D-08  0.82D-09   461.59
    8    14    14     1.08337115    -0.25834976   -25.25855042    -0.00000003    -0.00000000  0.12D-08  0.82D-09   461.59
    8    15    15     1.08337116    -0.25834975   -25.25855042    -0.00000003    -0.00000000  0.11D-08  0.81D-09   461.59
    8    16    16     1.08287203    -0.25063092   -25.24916626    -0.00000000    -0.00000001  0.58D-08  0.66D-09   461.59


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   2.1%
 S   1.7%  15.8%
 P   0.7%  17.9%  11.3%

 Initialization:   0.4%
 Other:           50.2%

 Total CPU:      461.6 seconds
 =====================================



 gnormi=  0.91753345  gnorms=  0.03759798  gnormp=  0.04486858  gnorm=  1.00000000
 ecorri= -0.24078255  ecorrs= -0.00986765  ecorrp= -0.01177354  ecorr= -0.26242373

 gnormi=  0.91753344  gnorms=  0.03759791  gnormp=  0.04486864  gnorm=  1.00000000
 ecorri= -0.24078251  ecorrs= -0.00986763  ecorrp= -0.01177355  ecorr= -0.26242369

 gnormi=  0.91753344  gnorms=  0.03759791  gnormp=  0.04486864  gnorm=  1.00000000
 ecorri= -0.24078251  ecorrs= -0.00986763  ecorrp= -0.01177355  ecorr= -0.26242369

 gnormi=  0.91753459  gnorms=  0.03759664  gnormp=  0.04486878  gnorm=  1.00000000
 ecorri= -0.24078265  ecorrs= -0.00986729  ecorrp= -0.01177358  ecorr= -0.26242351

 gnormi=  0.91753465  gnorms=  0.03759649  gnormp=  0.04486886  gnorm=  1.00000000
 ecorri= -0.24078266  ecorrs= -0.00986724  ecorrp= -0.01177360  ecorr= -0.26242351

 gnormi=  0.91650916  gnorms=  0.03246758  gnormp=  0.05102326  gnorm=  1.00000000
 ecorri= -0.24270930  ecorrs= -0.00859832  ecorrp= -0.01351166  ecorr= -0.26481929

 gnormi=  0.91650913  gnorms=  0.03246772  gnormp=  0.05102314  gnorm=  1.00000000
 ecorri= -0.24270896  ecorrs= -0.00859835  ecorrp= -0.01351161  ecorr= -0.26481892

 gnormi=  0.91650914  gnorms=  0.03246772  gnormp=  0.05102314  gnorm=  1.00000000
 ecorri= -0.24270896  ecorrs= -0.00859835  ecorrp= -0.01351161  ecorr= -0.26481892

 gnormi=  0.91651013  gnorms=  0.03246639  gnormp=  0.05102348  gnorm=  1.00000000
 ecorri= -0.24270899  ecorrs= -0.00859799  ecorrp= -0.01351169  ecorr= -0.26481867

 gnormi=  0.91650984  gnorms=  0.03246687  gnormp=  0.05102329  gnorm=  1.00000000
 ecorri= -0.24270831  ecorrs= -0.00859809  ecorrp= -0.01351161  ecorr= -0.26481800

 gnormi=  0.91650984  gnorms=  0.03246687  gnormp=  0.05102329  gnorm=  1.00000000
 ecorri= -0.24270831  ecorrs= -0.00859809  ecorrp= -0.01351161  ecorr= -0.26481800

 gnormi=  0.91650974  gnorms=  0.03246702  gnormp=  0.05102324  gnorm=  1.00000000
 ecorri= -0.24270819  ecorrs= -0.00859812  ecorrp= -0.01351159  ecorr= -0.26481791

 gnormi=  0.92304470  gnorms=  0.02781787  gnormp=  0.04913743  gnorm=  1.00000000
 ecorri= -0.23846837  ecorrs= -0.00718692  ecorrp= -0.01269446  ecorr= -0.25834976

 gnormi=  0.92304470  gnorms=  0.02781787  gnormp=  0.04913743  gnorm=  1.00000000
 ecorri= -0.23846837  ecorrs= -0.00718692  ecorrp= -0.01269446  ecorr= -0.25834976

 gnormi=  0.92304469  gnorms=  0.02781796  gnormp=  0.04913735  gnorm=  1.00000000
 ecorri= -0.23846837  ecorrs= -0.00718694  ecorrp= -0.01269444  ecorr= -0.25834975

 gnormi=  0.92347015  gnorms=  0.03668161  gnormp=  0.03984823  gnorm=  1.00000000
 ecorri= -0.23145018  ecorrs= -0.00919380  ecorrp= -0.00998694  ecorr= -0.25063092

 Wavefunction saved on  5103.2

 Reference coefficients greater than 0.0500000
 =============================================
 2/00000/222000          -0.0000000   0.0000000   0.0000000  -0.0000000  -0.0000043   0.0000000  -0.0000000  -0.0000000
                          0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.0000000   0.0000000   0.9561216
 20//0000222000          -0.0000000   0.0000000   0.0000000  -0.0000610   0.0000000  -0.0000000  -0.0000000   0.0000000
                          0.9547186   0.0000000   0.0000000   0.0000000  -0.0000000   0.0000000   0.0000000   0.0000000
 200//000222000           0.0000646   0.0000000  -0.0000000  -0.0000000   0.0000000   0.9547179   0.0000000   0.0000000
                          0.0000000   0.0000000  -0.0000000   0.0000002   0.0000000   0.0000000  -0.0000000  -0.0000000
 2//00000222000           0.0000000  -0.0000000  -0.0000000   0.9534934  -0.0001947   0.0000000  -0.0000000  -0.0000000
                          0.0000657   0.0000000  -0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.0000000
 2/0/0000222000          -0.0000000  -0.0000000   0.0000000   0.0001947   0.9534934  -0.0000000  -0.0000000   0.0000000
                          0.0000000  -0.0000000   0.0000000  -0.0000000  -0.0000000   0.0000000  -0.0000000   0.0000052
 2/000/00222000           0.0000000  -0.0000000   0.9534931   0.0000000  -0.0000000   0.0000000   0.0000000   0.0000525
                         -0.0000000   0.0000474   0.0000000   0.0000000   0.0000030   0.0000000  -0.0000000  -0.0000000
 2/0000/0222000           0.0000000   0.9534931   0.0000000   0.0000000   0.0000000  -0.0000000  -0.0000525   0.0000000
                         -0.0000000   0.0000000   0.0000474   0.0000000  -0.0000000   0.0000030  -0.0000000  -0.0000000
 2/00/000222000           0.9534931  -0.0000000  -0.0000000  -0.0000000   0.0000000  -0.0000696   0.0000000   0.0000000
                          0.0000000   0.0000000  -0.0000000   0.0000000   0.0000000   0.0000000  -0.0000000   0.0000000
 20000//0222000           0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.0000002  -0.0000000   0.0000000
                         -0.0000000  -0.0000000  -0.0000000   0.8539746   0.0000000   0.0000000   0.3683039   0.0000000
 20/000/0222000          -0.0000000   0.0000553  -0.0000000   0.0000000   0.0000000  -0.0000000   0.7629109  -0.0000000
                          0.0000000  -0.0000000  -0.3836226  -0.0000000   0.0000000   0.3684020   0.0000000   0.0000000
 20/00/00222000          -0.0000000  -0.0000000  -0.0000553   0.0000000  -0.0000000  -0.0000000   0.0000000   0.7629109
                         -0.0000000   0.3836228  -0.0000000  -0.0000000  -0.3684020   0.0000000   0.0000000   0.0000000
 20/0/000222000           0.0000000   0.0000000   0.0000000   0.0000000  -0.0000000   0.0000001  -0.0000000  -0.0000000
                         -0.0000000   0.0000000   0.0000000  -0.4268669  -0.0000000  -0.0000000   0.7368836  -0.0000000
 2000//00222000           0.0000000   0.0000002  -0.0000000   0.0000000   0.0000000   0.0000000   0.5621462   0.0000000
                          0.0000000   0.0000000   0.6428454   0.0000000  -0.0000000  -0.3683226   0.0000000   0.0000000
 2000/0/0222000          -0.0000000   0.0000000   0.0000002  -0.0000000  -0.0000000   0.0000000   0.0000000  -0.5621464
                         -0.0000000   0.6428453  -0.0000000   0.0000000  -0.3683226   0.0000000   0.0000000   0.0000000
 200/00/0222000           0.0000000  -0.0000348  -0.0000000   0.0000000  -0.0000000  -0.0000000  -0.1159527   0.0000000
                         -0.0000000   0.0000000   0.5925128   0.0000000   0.0000000   0.6381752  -0.0000000   0.0000000
 200/0/00222000          -0.0000000   0.0000000  -0.0000348  -0.0000000   0.0000000  -0.0000000   0.0000000   0.1159526
                         -0.0000000   0.5925128  -0.0000000   0.0000000   0.6381752  -0.0000000   0.0000000   0.0000000
 200000002220//           0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.0000000   0.0000000   0.0000000   0.0000000
                          0.0000000   0.0000000   0.0000000  -0.0000567   0.0000000  -0.0000000  -0.4883582   0.0000000
 20000000222//0          -0.0000000  -0.0000000   0.0000010  -0.0000000  -0.0000000   0.0000000  -0.0000000  -0.0000167
                         -0.0000000   0.0000488   0.0000000  -0.0000000  -0.4883541  -0.0000000  -0.0000000  -0.0000000
 20000000222/0/           0.0000000   0.0000010   0.0000000   0.0000000   0.0000000  -0.0000000   0.0000167   0.0000000
                         -0.0000000  -0.0000000   0.0000488  -0.0000000   0.0000000  -0.4883541   0.0000000   0.0000000

 Coefficients of singly external configurations greater than 0.0500000
 =====================================================================

 2000000/222000  29.1    -0.0000000   0.0000000   0.0000000   0.0000000  -0.0000000   0.0000000  -0.0000000  -0.0000000
                          0.0000000  -0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.0000000   0.0593604
 2/000000222000  33.1    -0.0000000  -0.0504300  -0.0000000   0.0000000  -0.0000000  -0.0000000   0.0000040  -0.0000000
                         -0.0000000   0.0000000  -0.0000027   0.0000000   0.0000000   0.0000008   0.0000000   0.0000000
 2/000000222000  34.1    -0.0000000   0.0000000  -0.0504300  -0.0000000   0.0000000   0.0000000  -0.0000000  -0.0000040
                          0.0000000  -0.0000027  -0.0000000  -0.0000000   0.0000008  -0.0000000   0.0000000  -0.0000000
 2/000000222000  31.1    -0.0504300   0.0000000   0.0000000   0.0000000  -0.0000000   0.0000076  -0.0000000  -0.0000000
                          0.0000000   0.0000000  -0.0000000   0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0000000
 2/000000222000  32.1    -0.0000000  -0.0000000   0.0000000  -0.0504285   0.0000103  -0.0000000   0.0000000  -0.0000000
                         -0.0000073  -0.0000000  -0.0000000  -0.0000000  -0.0000000   0.0000000   0.0000000   0.0000000
 2/000000222000  30.1     0.0000000   0.0000000   0.0000000  -0.0000103  -0.0504283  -0.0000000   0.0000000  -0.0000000
                          0.0000000   0.0000000  -0.0000000   0.0000000   0.0000000   0.0000000   0.0000000  -0.0000007

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1          -0.000000    0.000000    0.000000    0.953495    0.000000    0.000065   -0.000000   -0.000000   -0.000000    0.000000
            -0.000000    0.000000    0.000000   -0.000000   -0.000000   -0.000000
 2          -0.000000   -0.000000    0.953495   -0.000000   -0.000000    0.000000    0.000000    0.000000    0.000039   -0.000000
            -0.000000   -0.000052    0.000000   -0.000002    0.000000    0.000000
 3           0.000000    0.953495    0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.000039   -0.000000   -0.000000
            -0.000052   -0.000000   -0.000002   -0.000000    0.000000    0.000000
 4           0.000195    0.000000    0.000000   -0.000000    0.953495   -0.000000   -0.000061   -0.000000    0.000000   -0.000000
            -0.000000    0.000000    0.000000    0.000000    0.000000   -0.000000
 5           0.953495   -0.000000    0.000000    0.000000   -0.000195    0.000000    0.000000    0.000000    0.000000    0.000000
             0.000000   -0.000000    0.000000   -0.000000    0.000000   -0.000004
 6          -0.000000    0.000000   -0.000000   -0.000070    0.000000    0.954718   -0.000000    0.000000   -0.000000   -0.000000
            -0.000000    0.000000   -0.000000    0.000000   -0.000000    0.000000
 7          -0.000000    0.000000   -0.000052    0.000000   -0.000000    0.000000   -0.000000    0.000000    0.936957   -0.000000
             0.000000   -0.183298   -0.000000   -0.000036   -0.000000   -0.000000
 8           0.000000    0.000052    0.000000    0.000000   -0.000000    0.000000    0.000000   -0.936957    0.000000    0.000000
             0.183298    0.000000    0.000036   -0.000000    0.000000   -0.000000
 9           0.000000   -0.000000   -0.000000    0.000000    0.000066    0.000000    0.954719   -0.000000    0.000000   -0.000000
            -0.000000   -0.000000    0.000000    0.000000   -0.000000    0.000000
 10         -0.000000    0.000047    0.000000    0.000000    0.000000    0.000000    0.000000    0.183298   -0.000000   -0.000000
             0.936958    0.000000   -0.000104   -0.000000   -0.000000   -0.000000
 11          0.000000    0.000000    0.000047   -0.000000   -0.000000   -0.000000    0.000000    0.000000    0.183298   -0.000000
            -0.000000    0.936958   -0.000000   -0.000104   -0.000000   -0.000000
 12         -0.000000    0.000000    0.000000    0.000000    0.000000    0.000000    0.000000    0.000000    0.000000    0.954719
             0.000000    0.000000    0.000000   -0.000000    0.000121   -0.000000
 13         -0.000000    0.000003   -0.000000    0.000000   -0.000000    0.000000   -0.000000    0.000056    0.000000    0.000000
             0.000097    0.000000    0.955636   -0.000000   -0.000000   -0.000000
 14          0.000000    0.000000    0.000003    0.000000   -0.000000    0.000000    0.000000   -0.000000    0.000056    0.000000
             0.000000    0.000097    0.000000    0.955636    0.000000   -0.000000
 15         -0.000000   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.000000    0.000000   -0.000123
             0.000000   -0.000000    0.000000   -0.000000    0.955637    0.000000
 16          0.000005   -0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.000000    0.000000    0.000000    0.000000
             0.000000    0.000000    0.000000    0.000000   -0.000000    0.956122

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.953495    0.000000    0.000000    0.000000   -0.000000   -0.000002   -0.000000    0.000000    0.000000   -0.000000
            -0.000000    0.000000    0.000000    0.000000   -0.000000   -0.000000
 2           0.000000    0.953495   -0.000000   -0.000000    0.000000    0.000000   -0.000002   -0.000000   -0.000000    0.000000
             0.000002    0.000000   -0.000000    0.000000   -0.000000    0.000000
 3           0.000000   -0.000000    0.953495    0.000000    0.000000   -0.000000    0.000000    0.000002   -0.000000    0.000002
             0.000000    0.000000    0.000000   -0.000000    0.000000    0.000000
 4           0.000000   -0.000000    0.000000    0.953495   -0.000000   -0.000000   -0.000000   -0.000000    0.000002    0.000000
             0.000000   -0.000000    0.000000    0.000000    0.000000    0.000000
 5          -0.000000    0.000000    0.000000   -0.000000    0.953495   -0.000000    0.000000   -0.000000    0.000000   -0.000000
            -0.000000   -0.000000    0.000000    0.000000    0.000000    0.000000
 6          -0.000002    0.000000   -0.000000   -0.000000   -0.000000    0.954718    0.000000   -0.000000    0.000000    0.000000
             0.000000    0.000000   -0.000000    0.000000   -0.000000    0.000000
 7          -0.000000   -0.000002    0.000000   -0.000000    0.000000    0.000000    0.954718   -0.000000   -0.000000    0.000000
            -0.000000   -0.000000    0.000000    0.000000    0.000000   -0.000000
 8           0.000000   -0.000000    0.000002   -0.000000   -0.000000   -0.000000   -0.000000    0.954718   -0.000000    0.000000
            -0.000000    0.000000   -0.000000   -0.000000   -0.000000   -0.000000
 9           0.000000   -0.000000   -0.000000    0.000002    0.000000    0.000000   -0.000000   -0.000000    0.954719   -0.000000
            -0.000000    0.000000   -0.000000    0.000000   -0.000000    0.000000
 10         -0.000000    0.000000    0.000002    0.000000   -0.000000    0.000000    0.000000    0.000000   -0.000000    0.954719
            -0.000000   -0.000000    0.000001    0.000000    0.000000   -0.000000
 11         -0.000000    0.000002    0.000000    0.000000   -0.000000    0.000000   -0.000000   -0.000000   -0.000000   -0.000000
             0.954719   -0.000000    0.000000    0.000001   -0.000000   -0.000000
 12          0.000000    0.000000    0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.000000    0.000000   -0.000000
            -0.000000    0.954719    0.000000    0.000000   -0.000001    0.000000
 13          0.000000   -0.000000    0.000000    0.000000    0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.000001
             0.000000    0.000000    0.955636    0.000000    0.000000    0.000000
 14          0.000000    0.000000   -0.000000    0.000000    0.000000    0.000000    0.000000   -0.000000    0.000000    0.000000
             0.000001    0.000000    0.000000    0.955636    0.000000   -0.000000
 15         -0.000000   -0.000000    0.000000    0.000000    0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.000000
            -0.000000   -0.000001    0.000000    0.000000    0.955637    0.000000
 16         -0.000000    0.000000    0.000000    0.000000    0.000000    0.000000   -0.000000   -0.000000    0.000000   -0.000000
            -0.000000    0.000000    0.000000   -0.000000    0.000000    0.956122


 RESULTS FOR STATE 1.1
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.95349490 (fixed)   0.95368480 (relaxed)   0.95349490 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00921838   -0.01575660   -0.17398547
 Singles      0.04135497   -0.07347181   -0.07666473
 Pairs        0.04935209    0.00000000   -0.01177354
 Total        1.09992544   -0.08922841   -0.26242373
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -25.06116107
 Nuclear energy                         0.00000000
 Kinetic energy                         7.12573356
 One electron energy                  -41.53206688
 Two electron energy                   16.20848207
 Virial quotient                       -3.55382145
 Correlation energy                    -0.26242373
 !MRCI STATE 1.1 Energy               -25.323584805867

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.34980761 (Davidson, fixed reference)
 Cluster corrected energies           -25.34969267 (Davidson, relaxed reference)
 Cluster corrected energies           -25.34980761 (Davidson, rotated reference)

 Cluster corrected energies           -25.34424345 (Pople, fixed reference)
 Cluster corrected energies           -25.34414855 (Pople, relaxed reference)
 Cluster corrected energies           -25.34424345 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.95349491 (fixed)   0.95368481 (relaxed)   0.95349492 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00921835   -0.01575656   -0.17398543
 Singles      0.04135490   -0.07347180   -0.07666470
 Pairs        0.04935216   -0.00000000   -0.01177355
 Total        1.09992541   -0.08922836   -0.26242369
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -25.06116107
 Nuclear energy                         0.00000000
 Kinetic energy                         7.12573394
 One electron energy                  -41.53206706
 Two electron energy                   16.20848230
 Virial quotient                       -3.55382126
 Correlation energy                    -0.26242369
 !MRCI STATE 2.1 Energy               -25.323584758203

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.34980755 (Davidson, fixed reference)
 Cluster corrected energies           -25.34969262 (Davidson, relaxed reference)
 Cluster corrected energies           -25.34980755 (Davidson, rotated reference)

 Cluster corrected energies           -25.34424339 (Pople, fixed reference)
 Cluster corrected energies           -25.34414849 (Pople, relaxed reference)
 Cluster corrected energies           -25.34424339 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.95349491 (fixed)   0.95368481 (relaxed)   0.95349492 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00921835   -0.01575656   -0.17398544
 Singles      0.04135490   -0.07347180   -0.07666470
 Pairs        0.04935216   -0.00000000   -0.01177355
 Total        1.09992541   -0.08922835   -0.26242369
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -25.06116107
 Nuclear energy                         0.00000000
 Kinetic energy                         7.12573394
 One electron energy                  -41.53206705
 Two electron energy                   16.20848229
 Virial quotient                       -3.55382126
 Correlation energy                    -0.26242369
 !MRCI STATE 3.1 Energy               -25.323584758203

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.34980755 (Davidson, fixed reference)
 Cluster corrected energies           -25.34969261 (Davidson, relaxed reference)
 Cluster corrected energies           -25.34980755 (Davidson, rotated reference)

 Cluster corrected energies           -25.34424339 (Pople, fixed reference)
 Cluster corrected energies           -25.34414849 (Pople, relaxed reference)
 Cluster corrected energies           -25.34424339 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.95349519 (fixed)   0.95368512 (relaxed)   0.95349521 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00921898   -0.01575701   -0.17398639
 Singles      0.04135347   -0.07347086   -0.07666355
 Pairs        0.04935228    0.00000000   -0.01177358
 Total        1.09992473   -0.08922787   -0.26242351
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -25.06116107
 Nuclear energy                         0.00000000
 Kinetic energy                         7.12573668
 One electron energy                  -41.53206912
 Two electron energy                   16.20848454
 Virial quotient                       -3.55381987
 Correlation energy                    -0.26242351
 !MRCI STATE 4.1 Energy               -25.323584581095

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.34980718 (Davidson, fixed reference)
 Cluster corrected energies           -25.34969223 (Davidson, relaxed reference)
 Cluster corrected energies           -25.34980718 (Davidson, rotated reference)

 Cluster corrected energies           -25.34424305 (Pople, fixed reference)
 Cluster corrected energies           -25.34414814 (Pople, relaxed reference)
 Cluster corrected energies           -25.34424305 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.95349513 (fixed)   0.95368506 (relaxed)   0.95349515 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00921918   -0.01575711   -0.17398716
 Singles      0.04135332   -0.07347073   -0.07666338
 Pairs        0.04935237    0.00000069   -0.01177298
 Total        1.09992487   -0.08922715   -0.26242351
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -25.06116107
 Nuclear energy                         0.00000000
 Kinetic energy                         7.12573699
 One electron energy                  -41.53206872
 Two electron energy                   16.20848414
 Virial quotient                       -3.55381971
 Correlation energy                    -0.26242351
 !MRCI STATE 5.1 Energy               -25.323584580142

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.34980722 (Davidson, fixed reference)
 Cluster corrected energies           -25.34969227 (Davidson, relaxed reference)
 Cluster corrected energies           -25.34980722 (Davidson, rotated reference)

 Cluster corrected energies           -25.34424308 (Pople, fixed reference)
 Cluster corrected energies           -25.34414817 (Pople, relaxed reference)
 Cluster corrected energies           -25.34424308 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Coefficient of reference function:   C(0) = 0.95471789 (fixed)   0.95471790 (relaxed)   0.95471790 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00551067   -0.01049252   -0.17967690
 Singles      0.03562048   -0.06915343   -0.07163073
 Pairs        0.05597809   -0.00000000   -0.01351166
 Total        1.09710924   -0.07964595   -0.26481929
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -25.00448055
 Nuclear energy                         0.00000000
 Kinetic energy                         7.30140060
 One electron energy                  -41.82454322
 Two electron energy                   16.55524338
 Virial quotient                       -3.46088391
 Correlation energy                    -0.26481928
 !MRCI STATE 6.1 Energy               -25.269299838736

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.29501624 (Davidson, fixed reference)
 Cluster corrected energies           -25.29501624 (Davidson, relaxed reference)
 Cluster corrected energies           -25.29501624 (Davidson, rotated reference)

 Cluster corrected energies           -25.28953198 (Pople, fixed reference)
 Cluster corrected energies           -25.28953198 (Pople, relaxed reference)
 Cluster corrected energies           -25.28953198 (Pople, rotated reference)



 RESULTS FOR STATE 7.1
 =====================

 Maximum overlap with reference state  9

 Coefficient of reference function:   C(0) = 0.93695690 (fixed)   0.95471802 (relaxed)   0.95471802 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00551037   -0.01049223   -0.17967648
 Singles      0.03562063   -0.06915349   -0.07163083
 Pairs        0.05597795    0.00000000   -0.01351161
 Total        1.09710894   -0.07964573   -0.26481892
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -25.00448055
 Nuclear energy                         0.00000000
 Kinetic energy                         7.30140855
 One electron energy                  -41.82455682
 Two electron energy                   16.55525735
 Virial quotient                       -3.46088009
 Correlation energy                    -0.26481892
 !MRCI STATE 7.1 Energy               -25.269299470777

 Properties without orbital relaxation:

 !MRCI STATE 7.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.29501576 (Davidson, fixed reference)
 Cluster corrected energies           -25.29501576 (Davidson, relaxed reference)
 Cluster corrected energies           -25.29501576 (Davidson, rotated reference)

 Cluster corrected energies           -25.28953152 (Pople, fixed reference)
 Cluster corrected energies           -25.28953152 (Pople, relaxed reference)
 Cluster corrected energies           -25.28953152 (Pople, rotated reference)



 RESULTS FOR STATE 8.1
 =====================

 Coefficient of reference function:   C(0) = 0.93695694 (fixed)   0.95471803 (relaxed)   0.95471803 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00551037   -0.01049223   -0.17967648
 Singles      0.03562063   -0.06915349   -0.07163083
 Pairs        0.05597795    0.00000000   -0.01351161
 Total        1.09710894   -0.07964573   -0.26481892
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -25.00448055
 Nuclear energy                         0.00000000
 Kinetic energy                         7.30140855
 One electron energy                  -41.82455681
 Two electron energy                   16.55525734
 Virial quotient                       -3.46088009
 Correlation energy                    -0.26481892
 !MRCI STATE 8.1 Energy               -25.269299470777

 Properties without orbital relaxation:

 !MRCI STATE 8.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.29501576 (Davidson, fixed reference)
 Cluster corrected energies           -25.29501576 (Davidson, relaxed reference)
 Cluster corrected energies           -25.29501576 (Davidson, rotated reference)

 Cluster corrected energies           -25.28953152 (Pople, fixed reference)
 Cluster corrected energies           -25.28953152 (Pople, relaxed reference)
 Cluster corrected energies           -25.28953152 (Pople, rotated reference)



 RESULTS FOR STATE 9.1
 =====================

 Maximum overlap with reference state  7

 Coefficient of reference function:   C(0) = 0.95471859 (fixed)   0.95471860 (relaxed)   0.95471860 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00551026   -0.01049232   -0.17967705
 Singles      0.03561913   -0.06915283   -0.07162993
 Pairs        0.05597825   -0.00000000   -0.01351169
 Total        1.09710763   -0.07964515   -0.26481867
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -25.00448055
 Nuclear energy                         0.00000000
 Kinetic energy                         7.30139180
 One electron energy                  -41.82453152
 Two electron energy                   16.55523230
 Virial quotient                       -3.46088799
 Correlation energy                    -0.26481867
 !MRCI STATE 9.1 Energy               -25.269299222588

 Properties without orbital relaxation:

 !MRCI STATE 9.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.29501514 (Davidson, fixed reference)
 Cluster corrected energies           -25.29501514 (Davidson, relaxed reference)
 Cluster corrected energies           -25.29501514 (Davidson, rotated reference)

 Cluster corrected energies           -25.28953096 (Pople, fixed reference)
 Cluster corrected energies           -25.28953096 (Pople, relaxed reference)
 Cluster corrected energies           -25.28953096 (Pople, rotated reference)



 RESULTS FOR STATE 10.1
 ======================

 Maximum overlap with reference state 11

 Coefficient of reference function:   C(0) = 0.93695774 (fixed)   0.95471879 (relaxed)   0.95471879 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00550952   -0.01049166   -0.17967603
 Singles      0.03561964   -0.06915317   -0.07163037
 Pairs        0.05597801    0.00000000   -0.01351161
 Total        1.09710718   -0.07964483   -0.26481800
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -25.00448055
 Nuclear energy                         0.00000000
 Kinetic energy                         7.30141081
 One electron energy                  -41.82456494
 Two electron energy                   16.55526639
 Virial quotient                       -3.46087889
 Correlation energy                    -0.26481800
 !MRCI STATE 10.1 Energy              -25.269298556186

 Properties without orbital relaxation:

 !MRCI STATE 10.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.29501428 (Davidson, fixed reference)
 Cluster corrected energies           -25.29501428 (Davidson, relaxed reference)
 Cluster corrected energies           -25.29501428 (Davidson, rotated reference)

 Cluster corrected energies           -25.28953015 (Pople, fixed reference)
 Cluster corrected energies           -25.28953015 (Pople, relaxed reference)
 Cluster corrected energies           -25.28953015 (Pople, rotated reference)



 RESULTS FOR STATE 11.1
 ======================

 Maximum overlap with reference state 12

 Coefficient of reference function:   C(0) = 0.93695770 (fixed)   0.95471879 (relaxed)   0.95471879 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00550952   -0.01049166   -0.17967603
 Singles      0.03561964   -0.06915317   -0.07163037
 Pairs        0.05597801    0.00000000   -0.01351161
 Total        1.09710718   -0.07964483   -0.26481800
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -25.00448055
 Nuclear energy                         0.00000000
 Kinetic energy                         7.30141081
 One electron energy                  -41.82456493
 Two electron energy                   16.55526638
 Virial quotient                       -3.46087889
 Correlation energy                    -0.26481800
 !MRCI STATE 11.1 Energy              -25.269298556185

 Properties without orbital relaxation:

 !MRCI STATE 11.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.29501428 (Davidson, fixed reference)
 Cluster corrected energies           -25.29501428 (Davidson, relaxed reference)
 Cluster corrected energies           -25.29501428 (Davidson, rotated reference)

 Cluster corrected energies           -25.28953015 (Pople, fixed reference)
 Cluster corrected energies           -25.28953015 (Pople, relaxed reference)
 Cluster corrected energies           -25.28953015 (Pople, rotated reference)



 RESULTS FOR STATE 12.1
 ======================

 Maximum overlap with reference state 10

 Coefficient of reference function:   C(0) = 0.95471879 (fixed)   0.95471879 (relaxed)   0.95471879 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00550942   -0.01049155   -0.17967582
 Singles      0.03561980   -0.06915327   -0.07163050
 Pairs        0.05597796    0.00000000   -0.01351159
 Total        1.09710718   -0.07964482   -0.26481791
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -25.00448055
 Nuclear energy                         0.00000000
 Kinetic energy                         7.30141523
 One electron energy                  -41.82457264
 Two electron energy                   16.55527418
 Virial quotient                       -3.46087678
 Correlation energy                    -0.26481791
 !MRCI STATE 12.1 Energy              -25.269298461785

 Properties without orbital relaxation:

 !MRCI STATE 12.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.29501418 (Davidson, fixed reference)
 Cluster corrected energies           -25.29501418 (Davidson, relaxed reference)
 Cluster corrected energies           -25.29501418 (Davidson, rotated reference)

 Cluster corrected energies           -25.28953004 (Pople, fixed reference)
 Cluster corrected energies           -25.28953004 (Pople, relaxed reference)
 Cluster corrected energies           -25.28953004 (Pople, rotated reference)



 RESULTS FOR STATE 13.1
 ======================

 Coefficient of reference function:   C(0) = 0.95563639 (fixed)   0.95767370 (relaxed)   0.95563640 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.01073515   -0.01229311   -0.17716809
 Singles      0.03046060   -0.06712389   -0.06848720
 Pairs        0.05380555    0.00000000   -0.01269446
 Total        1.09500130   -0.07941699   -0.25834976
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -25.00020067
 Nuclear energy                         0.00000000
 Kinetic energy                         7.20560626
 One electron energy                  -41.45046739
 Two electron energy                   16.19191697
 Virial quotient                       -3.50540253
 Correlation energy                    -0.25834976
 !MRCI STATE 13.1 Energy              -25.258550422429

 Properties without orbital relaxation:

 !MRCI STATE 13.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.28309398 (Davidson, fixed reference)
 Cluster corrected energies           -25.28189164 (Davidson, relaxed reference)
 Cluster corrected energies           -25.28309398 (Davidson, rotated reference)

 Cluster corrected energies           -25.27784016 (Pople, fixed reference)
 Cluster corrected energies           -25.27685388 (Pople, relaxed reference)
 Cluster corrected energies           -25.27784016 (Pople, rotated reference)



 RESULTS FOR STATE 14.1
 ======================

 Coefficient of reference function:   C(0) = 0.95563639 (fixed)   0.95767370 (relaxed)   0.95563640 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.01073515   -0.01229311   -0.17716809
 Singles      0.03046060   -0.06712389   -0.06848720
 Pairs        0.05380555    0.00000000   -0.01269446
 Total        1.09500130   -0.07941699   -0.25834976
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -25.00020067
 Nuclear energy                         0.00000000
 Kinetic energy                         7.20560626
 One electron energy                  -41.45046740
 Two electron energy                   16.19191698
 Virial quotient                       -3.50540253
 Correlation energy                    -0.25834976
 !MRCI STATE 14.1 Energy              -25.258550422429

 Properties without orbital relaxation:

 !MRCI STATE 14.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.28309399 (Davidson, fixed reference)
 Cluster corrected energies           -25.28189164 (Davidson, relaxed reference)
 Cluster corrected energies           -25.28309399 (Davidson, rotated reference)

 Cluster corrected energies           -25.27784016 (Pople, fixed reference)
 Cluster corrected energies           -25.27685388 (Pople, relaxed reference)
 Cluster corrected energies           -25.27784016 (Pople, rotated reference)



 RESULTS FOR STATE 15.1
 ======================

 Coefficient of reference function:   C(0) = 0.95563671 (fixed)   0.95767371 (relaxed)   0.95563672 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.01073446   -0.01229313   -0.17716796
 Singles      0.03046068   -0.06712398   -0.06848735
 Pairs        0.05380542   -0.00000000   -0.01269444
 Total        1.09500057   -0.07941711   -0.25834975
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -25.00020067
 Nuclear energy                         0.00000000
 Kinetic energy                         7.20560557
 One electron energy                  -41.45046546
 Two electron energy                   16.19191504
 Virial quotient                       -3.50540286
 Correlation energy                    -0.25834975
 !MRCI STATE 15.1 Energy              -25.258550421686

 Properties without orbital relaxation:

 !MRCI STATE 15.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.28309379 (Davidson, fixed reference)
 Cluster corrected energies           -25.28189163 (Davidson, relaxed reference)
 Cluster corrected energies           -25.28309379 (Davidson, rotated reference)

 Cluster corrected energies           -25.27784001 (Pople, fixed reference)
 Cluster corrected energies           -25.27685388 (Pople, relaxed reference)
 Cluster corrected energies           -25.27784001 (Pople, rotated reference)



 RESULTS FOR STATE 16.1
 ======================

 Coefficient of reference function:   C(0) = 0.95612162 (fixed)   0.95612162 (relaxed)   0.95612162 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.01017492   -0.01828303   -0.01904503
 Singles      0.04012566   -0.07243841   -0.07541472
 Pairs        0.04358959   -0.15990949   -0.15617117
 Total        1.09389017   -0.25063092   -0.25063092
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -24.99853534
 Nuclear energy                         0.00000000
 Kinetic energy                         6.87546436
 One electron energy                  -40.20152991
 Two electron energy                   14.95236365
 Virial quotient                       -3.67235796
 Correlation energy                    -0.25063092
 !MRCI STATE 16.1 Energy              -25.249166263781

 Properties without orbital relaxation:

 !MRCI STATE 16.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.27269804 (Davidson, fixed reference)
 Cluster corrected energies           -25.27269804 (Davidson, relaxed reference)
 Cluster corrected energies           -25.27269804 (Davidson, rotated reference)

 Cluster corrected energies           -25.26765086 (Pople, fixed reference)
 Cluster corrected energies           -25.26765086 (Pople, relaxed reference)
 Cluster corrected energies           -25.26765086 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       58.40       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1700(1)
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    OPER   
                                         1380   
                                         JKOP   

              2       8      914.39       700     1000      520     2100     2140     2141     5101     5103   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI     MULTI   RHF-SCF       INT
 CPU TIMES  *       816.39    528.35    278.07      3.40      2.74      0.75      2.83
 REAL TIME  *       886.23 SEC
 DISK USED  *       972.86 MB (local),       11.87 GB (total)
 SF USED    *         5.19 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(13)    =       -25.34980761  AU                              
 SETTING HLSDIAG(14)    =       -25.34980755  AU                              
 SETTING HLSDIAG(15)    =       -25.34980755  AU                              
 SETTING HLSDIAG(16)    =       -25.34980718  AU                              
 SETTING HLSDIAG(17)    =       -25.34980722  AU                              
 SETTING HLSDIAG(18)    =       -25.29501624  AU                              
 SETTING HLSDIAG(19)    =       -25.29501576  AU                              
 SETTING HLSDIAG(20)    =       -25.29501576  AU                              
 SETTING HLSDIAG(21)    =       -25.29501514  AU                              
 SETTING HLSDIAG(22)    =       -25.29501428  AU                              
 SETTING HLSDIAG(23)    =       -25.29501428  AU                              
 SETTING HLSDIAG(24)    =       -25.29501418  AU                              
 SETTING HLSDIAG(25)    =       -25.28309398  AU                              
 SETTING HLSDIAG(26)    =       -25.28309399  AU                              
 SETTING HLSDIAG(27)    =       -25.28309379  AU                              
 SETTING HLSDIAG(28)    =       -25.27269804  AU                              


        HLSDIAG
    -25.39267530
    -25.34010770
    -25.34010767
    -25.34010761
    -25.34010759
    -25.34010758
    -25.28573624
    -25.28573624
    -25.28573624
    -25.28573615
    -25.28573609
    -25.27330448
    -25.34980761
    -25.34980755
    -25.34980755
    -25.34980718
    -25.34980722
    -25.29501624
    -25.29501576
    -25.29501576
    -25.29501514
    -25.29501428
    -25.29501428
    -25.29501418
    -25.28309398
    -25.28309399
    -25.28309379
    -25.27269804
                                                  



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      26       58.84       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1700(1)
                                         EKIN      POT     PPINT     H0       H01     AOSYM    OPER      SMH    MOLCAS    OPER   
                                         1380     1101     1401     1411     1650(1)  1700(2)
                                         JKOP      SR      EKINR    POTR    MOLCAS    OPER   

              2       8      914.39       700     1000      520     2100     2140     2141     5101     5103   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL     LSINT        CI        CI     MULTI     MULTI   RHF-SCF       INT
 CPU TIMES  *       816.74      0.32    528.35    278.07      3.40      2.74      0.75      2.83
 REAL TIME  *       886.63 SEC
 DISK USED  *       973.30 MB (local),       11.88 GB (total)
 SF USED    *         5.19 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Diagonal elements of H will be replaced by values from variable HLSDIAG


   ******************************
   *** Spin-orbit calculation ***
   ******************************


   Spin-orbit matrix elements
   ==========================

 Wavefunction restored from record  5101.2  Symmetry=1  S= 0.0  NSTATE=  12

 Original energies: -25.369856 -25.314029 -25.314029 -25.314029 -25.314029 -25.314029 -25.260669 -25.260669 -25.260669 -25.260669
                    -25.260669 -25.249236
 Replaced energies: -25.392675 -25.340108 -25.340108 -25.340108 -25.340108 -25.340108 -25.285736 -25.285736 -25.285736 -25.285736
                    -25.285736 -25.273304

 Wavefunction restored from record  5103.2  Symmetry=1  S= 1.0  NSTATE=  16

 Original energies: -25.323585 -25.323585 -25.323585 -25.323585 -25.323585 -25.269300 -25.269299 -25.269299 -25.269299 -25.269299
                    -25.269299 -25.269298 -25.258550 -25.258550 -25.258550 -25.249166
 Replaced energies: -25.349808 -25.349808 -25.349808 -25.349807 -25.349807 -25.295016 -25.295016 -25.295016 -25.295015 -25.295014
                    -25.295014 -25.295014 -25.283094 -25.283094 -25.283094 -25.272698



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=   -25.39267530

 Wigner-Eckart theorem used for 10 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    2   2.1  0.0  0.0       0.00   11537.25       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    3   3.1  0.0  0.0       0.00       0.00   11537.26       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    4   4.1  0.0  0.0       0.00       0.00       0.00   11537.27       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    5   5.1  0.0  0.0       0.00       0.00       0.00       0.00   11537.28       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

    6   6.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00   11537.28       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00

    7   7.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00   23470.41       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00

    8   8.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00   23470.41       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00

    9   9.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   23470.41       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00

   10  10.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   23470.43
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   11  11.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   12  12.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   13   1.1  1.0  1.0       0.00       0.00      -0.00      -0.00      70.73       0.00       0.00      12.83       0.00       0.00
                            0.00      -0.00      -0.00       0.00      -0.00     -70.73      -0.00       0.00     -12.83       0.00

   14   2.1  1.0  1.0       0.00      -0.00       0.00     -70.73      -0.00       0.00      12.83      -0.00       0.00      -0.00
                            0.00    -118.56     -77.04      -0.00      -0.00       0.00       0.00      -0.00      -0.00      11.99

   15   3.1  1.0  1.0      -0.00     125.99     -64.19      -0.00      -0.00      -0.00       0.00      -0.00      -0.00      13.55
                            0.00      -0.00      -0.00      70.73      -0.00       0.00     -12.83      -0.00       0.00       0.00

   16   4.1  1.0  1.0      -0.00       0.00      -0.00      -0.00      -0.00      70.69       0.00      -0.00      12.83       0.00
                           -0.00      -0.00      -0.00       0.00      70.74       0.00       0.00      12.84       0.00      -0.00

   17   5.1  1.0  1.0       0.00      -0.00       0.00      -0.00       0.00    -122.51       0.00       0.00     -22.17      -0.00
                            0.00      -0.00      -0.00      -0.00     122.48      -0.00       0.00      22.17      -0.00      -0.00

   18   6.1  1.0  1.0       0.00      -0.00      -0.00       0.00     -23.85       0.00      -0.00      84.00       0.00      -0.00
                           -0.00      -0.00       0.00      -0.00       0.00      23.85      -0.00       0.00     -84.00       0.00

   19   7.1  1.0  1.0      -0.00       0.00       0.00      30.10       0.00       0.00     106.07       0.00       0.00       0.00
                            0.00      -3.59     -27.47       0.00      -0.00      -0.00       0.00       0.00       0.00     -95.25

   20   8.1  1.0  1.0       0.00      -6.45      26.95      -0.00       0.00      -0.00       0.00       0.00      -0.00      96.50
                           -0.00      -0.00      -0.00      30.10      -0.00      -0.00     106.07       0.00      -0.00       0.00

   21   9.1  1.0  1.0       0.00      -0.00       0.00       0.00       0.00      23.84       0.00      -0.00     -84.00      -0.00
                           -0.00      -0.00       0.00      -0.00      23.84       0.00       0.00     -84.00       0.00      -0.00

   22  10.1  1.0  1.0      -0.02     -24.99     -14.38      -0.00       0.00       0.00      -0.00       0.00       0.00     -42.67
                           -0.00      -0.00       0.00       1.79       0.00      -0.00       6.30      -0.00       0.00       0.00

   23  11.1  1.0  1.0       0.00       0.00      -0.00      -1.79      -0.00      -0.00      -6.30       0.00      -0.00      -0.00
                            0.02      26.36     -11.68      -0.00       0.00       0.00      -0.00       0.00       0.00     -49.07

   24  12.1  1.0  1.0      -0.00       0.00      -0.00      -0.00      18.47       0.00       0.00     -65.10       0.00      -0.00
                            0.00      -0.00      -0.00       0.00       0.00      18.47      -0.00       0.00     -65.10      -0.00

   25  13.1  1.0  1.0      65.03      13.00      25.55      -0.00      -0.00      -0.00       0.00       0.00       0.00    -169.58
                            0.00       0.00      -0.00     -24.88      -0.00       0.00     173.20       0.00       0.00       0.00

   26  14.1  1.0  1.0       0.00       0.00       0.00      24.88       0.00       0.00    -173.20      -0.00      -0.00       0.00
                          -65.03     -15.61      24.04      -0.00       0.00       0.00      -0.00      -0.00      -0.00    -176.65

   27  15.1  1.0  1.0      -0.00      -0.00       0.00       0.00     -24.88       0.00       0.00    -173.20       0.00       0.00
                           -0.00       0.00       0.00      -0.00      -0.00     -24.88       0.00      -0.00    -173.20      -0.00

   28  16.1  1.0  1.0       0.00      -0.00      -0.00       0.00       0.00      -0.00      -0.00      -0.00       0.00      -0.00
                            0.00       0.00       0.00      -0.00       0.00      -0.00       0.00      -0.00       0.00      -0.00

   29   1.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      10.49    -199.69       0.00       0.00      -0.00      -0.00       0.00       0.00      36.12

   30   2.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00      -0.00      -0.00    -100.03       0.00       0.00     -18.14      -0.00

   31   3.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00      -0.00     100.03      -0.00      -0.00      18.14       0.00      -0.00

   32   4.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00     200.03      -0.00      -0.00     -36.15       0.00      -0.00       0.00

   33   5.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00      -0.04      -0.00      -0.00       0.01       0.00      -0.00       0.00

   34   6.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       1.77     -33.66       0.00      -0.00      -0.00       0.00      -0.00       0.00    -118.69

   35   7.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.00       0.00       8.20       0.00      -0.00     -28.85      -0.00

   36   8.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00      -0.00       8.20      -0.00      -0.00     -28.85       0.00      -0.00

   37   9.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00     -33.68      -0.00      -0.00    -118.78      -0.00      -0.00       0.00

   38  10.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00      41.86      -0.00      -0.00    -147.51       0.00       0.00

   39  11.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00      -0.00       0.00     -41.86      -0.00       0.00     147.51       0.00

   40  12.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.03      45.33       2.38       0.00       0.00      -0.00       0.00      -0.00       0.00      -5.64

   41  13.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00      -0.00      35.18       0.00      -0.00     244.94      -0.00      -0.00

   42  14.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00       0.00     -35.18       0.00      -0.00    -244.94      -0.00

   43  15.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -91.96      40.45       2.13      -0.00       0.00       0.00      -0.00      -0.00      -0.00      10.00

   44  16.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00       0.00       0.00       0.00      -0.00      -0.00       0.00       0.00

   45   1.1  1.0 -1.0       0.00       0.00      -0.00      -0.00      70.73       0.00       0.00      12.83       0.00       0.00
                           -0.00       0.00       0.00      -0.00       0.00      70.73       0.00      -0.00      12.83      -0.00

   46   2.1  1.0 -1.0       0.00      -0.00       0.00     -70.73      -0.00       0.00      12.83      -0.00       0.00      -0.00
                           -0.00     118.56      77.04       0.00       0.00      -0.00      -0.00       0.00       0.00     -11.99

   47   3.1  1.0 -1.0      -0.00     125.99     -64.19      -0.00      -0.00      -0.00       0.00      -0.00      -0.00      13.55
                           -0.00       0.00       0.00     -70.73       0.00      -0.00      12.83       0.00      -0.00      -0.00

   48   4.1  1.0 -1.0      -0.00       0.00      -0.00      -0.00      -0.00      70.69       0.00      -0.00      12.83       0.00
                            0.00       0.00       0.00      -0.00     -70.74      -0.00      -0.00     -12.84      -0.00       0.00

   49   5.1  1.0 -1.0       0.00      -0.00       0.00      -0.00       0.00    -122.51       0.00       0.00     -22.17      -0.00
                           -0.00       0.00       0.00       0.00    -122.48       0.00      -0.00     -22.17       0.00       0.00

   50   6.1  1.0 -1.0       0.00      -0.00      -0.00       0.00     -23.85       0.00      -0.00      84.00       0.00      -0.00
                            0.00       0.00      -0.00       0.00      -0.00     -23.85       0.00      -0.00      84.00      -0.00

   51   7.1  1.0 -1.0      -0.00       0.00       0.00      30.10       0.00       0.00     106.07       0.00       0.00       0.00
                           -0.00       3.59      27.47      -0.00       0.00       0.00      -0.00      -0.00      -0.00      95.25

   52   8.1  1.0 -1.0       0.00      -6.45      26.95      -0.00       0.00      -0.00       0.00       0.00      -0.00      96.50
                            0.00       0.00       0.00     -30.10       0.00       0.00    -106.07      -0.00       0.00      -0.00

   53   9.1  1.0 -1.0       0.00      -0.00       0.00       0.00       0.00      23.84       0.00      -0.00     -84.00      -0.00
                            0.00       0.00      -0.00       0.00     -23.84      -0.00      -0.00      84.00      -0.00       0.00

   54  10.1  1.0 -1.0      -0.02     -24.99     -14.38      -0.00       0.00       0.00      -0.00       0.00       0.00     -42.67
                            0.00       0.00      -0.00      -1.79      -0.00       0.00      -6.30       0.00      -0.00      -0.00

   55  11.1  1.0 -1.0       0.00       0.00      -0.00      -1.79      -0.00      -0.00      -6.30       0.00      -0.00      -0.00
                           -0.02     -26.36      11.68       0.00      -0.00      -0.00       0.00      -0.00      -0.00      49.07

   56  12.1  1.0 -1.0      -0.00       0.00      -0.00      -0.00      18.47       0.00       0.00     -65.10       0.00      -0.00
                           -0.00       0.00       0.00      -0.00      -0.00     -18.47       0.00      -0.00      65.10       0.00

   57  13.1  1.0 -1.0      65.03      13.00      25.55      -0.00      -0.00      -0.00       0.00       0.00       0.00    -169.58
                           -0.00      -0.00       0.00      24.88       0.00      -0.00    -173.20      -0.00      -0.00      -0.00

   58  14.1  1.0 -1.0       0.00       0.00       0.00      24.88       0.00       0.00    -173.20      -0.00      -0.00       0.00
                           65.03      15.61     -24.04       0.00      -0.00      -0.00       0.00       0.00       0.00     176.65

   59  15.1  1.0 -1.0      -0.00      -0.00       0.00       0.00     -24.88       0.00       0.00    -173.20       0.00       0.00
                            0.00      -0.00      -0.00       0.00       0.00      24.88      -0.00       0.00     173.20       0.00

   60  16.1  1.0 -1.0       0.00      -0.00      -0.00       0.00       0.00      -0.00      -0.00      -0.00       0.00      -0.00
                           -0.00      -0.00      -0.00       0.00      -0.00       0.00      -0.00       0.00      -0.00       0.00


   Nr   State  S   Sz       11         12         13         14         15         16         17         18         19         20

    1   1.1  0.0  0.0       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00       0.00      -0.00       0.00
                            0.00       0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.00      -0.00       0.00

    2   2.1  0.0  0.0       0.00       0.00       0.00      -0.00     125.99       0.00      -0.00      -0.00       0.00      -6.45
                            0.00       0.00       0.00     118.56       0.00       0.00       0.00       0.00       3.59       0.00

    3   3.1  0.0  0.0       0.00       0.00      -0.00       0.00     -64.19      -0.00       0.00      -0.00       0.00      26.95
                            0.00       0.00       0.00      77.04       0.00       0.00       0.00      -0.00      27.47       0.00

    4   4.1  0.0  0.0       0.00       0.00      -0.00     -70.73      -0.00      -0.00      -0.00       0.00      30.10      -0.00
                            0.00       0.00      -0.00       0.00     -70.73      -0.00       0.00       0.00      -0.00     -30.10

    5   5.1  0.0  0.0       0.00       0.00      70.73      -0.00      -0.00      -0.00       0.00     -23.85       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00     -70.74    -122.48      -0.00       0.00       0.00

    6   6.1  0.0  0.0       0.00       0.00       0.00       0.00      -0.00      70.69    -122.51       0.00       0.00      -0.00
                            0.00       0.00      70.73      -0.00      -0.00      -0.00       0.00     -23.85       0.00       0.00

    7   7.1  0.0  0.0       0.00       0.00       0.00      12.83       0.00       0.00       0.00      -0.00     106.07       0.00
                            0.00       0.00       0.00      -0.00      12.83      -0.00      -0.00       0.00      -0.00    -106.07

    8   8.1  0.0  0.0       0.00       0.00      12.83      -0.00      -0.00      -0.00       0.00      84.00       0.00       0.00
                            0.00       0.00      -0.00       0.00       0.00     -12.84     -22.17      -0.00      -0.00      -0.00

    9   9.1  0.0  0.0       0.00       0.00       0.00       0.00      -0.00      12.83     -22.17       0.00       0.00      -0.00
                            0.00       0.00      12.83       0.00      -0.00      -0.00       0.00      84.00      -0.00       0.00

   10  10.1  0.0  0.0       0.00       0.00       0.00      -0.00      13.55       0.00      -0.00      -0.00       0.00      96.50
                            0.00       0.00      -0.00     -11.99      -0.00       0.00       0.00      -0.00      95.25      -0.00

   11  11.1  0.0  0.0   23470.44       0.00      -0.00       0.00     -21.71      -0.00       0.00      -0.00      -0.00     -14.30
                            0.00       0.00      -0.00     -22.61      -0.00      -0.00      -0.00      -0.00      21.08       0.00

   12  12.1  0.0  0.0       0.00   26198.87       0.00       0.00      -0.00       0.00      -0.00       0.00      -0.00       0.01
                           -0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.01       0.00

   13   1.1  1.0  1.0      -0.00       0.00    9408.37       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00     198.74      -0.04       0.00      -0.00      -0.00

   14   2.1  1.0  1.0       0.00       0.00       0.00    9408.38       0.00       0.00       0.00       0.00       0.00       0.00
                           22.61       0.00       0.00      -0.00      99.39      -0.00      -0.00      -0.00       0.00       1.04

   15   3.1  1.0  1.0     -21.71      -0.00       0.00       0.00    9408.38       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00     -99.39       0.00      -0.00      -0.00       0.00       1.04      -0.00

   16   4.1  1.0  1.0      -0.00       0.00       0.00       0.00       0.00    9408.47       0.00       0.00       0.00       0.00
                            0.00       0.00    -198.74       0.00       0.00      -0.00      -0.00      -4.11      -0.00       0.00

   17   5.1  1.0  1.0       0.00      -0.00       0.00       0.00       0.00       0.00    9408.46       0.00       0.00       0.00
                            0.00       0.00       0.04       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   18   6.1  1.0  1.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00   21433.69       0.00       0.00
                            0.00      -0.00      -0.00       0.00      -0.00       4.11      -0.00      -0.00       0.00      -0.00

   19   7.1  1.0  1.0      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00   21433.79       0.00
                          -21.08       0.01       0.00      -0.00      -1.04       0.00      -0.00      -0.00       0.00     259.68

   20   8.1  1.0  1.0     -14.30       0.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00   21433.79
                           -0.00      -0.00       0.00      -1.04       0.00      -0.00      -0.00       0.00    -259.68      -0.00

   21   9.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       4.11       0.00       0.00      -0.00       0.00     182.11       0.00       0.00

   22  10.1  1.0  1.0     -92.06      -0.02       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00      -5.15      -0.00       0.00       0.00       0.00      68.61      -0.00

   23  11.1  1.0  1.0       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           88.81       0.02       0.00      -0.00       5.15      -0.00      -0.00       0.00       0.00      68.61

   24  12.1  1.0  1.0      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.00       0.00      -0.00      -5.61      -0.00       0.00       0.00

   25  13.1  1.0  1.0    -106.11     154.29       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00      -6.67       0.00      -0.00       0.00      -0.00       0.03       0.00

   26  14.1  1.0  1.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           93.86    -154.29       0.00      -0.00       6.67       0.00       0.00      -0.00      -0.00       0.03

   27  15.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00      -0.00      -0.00      -7.65       0.00       0.00       0.00

   28  16.1  1.0  1.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00      -0.00      -0.00       0.00       0.00      -0.00       0.00       0.00

   29   1.1  1.0  0.0       0.00       0.00      -0.00     -70.28      -0.00       0.00      -0.00       0.00       3.71      -0.00
                            1.28      -0.00       0.00       0.00     -70.28      -0.00      -0.00       0.00      -0.00      -3.71

   30   2.1  1.0  0.0       0.00       0.00      70.28      -0.00      -0.00      -0.00       0.00      -2.96       0.00       0.00
                           -0.00      -0.00      -0.00       0.00       0.00     -70.30    -121.69      -0.00       0.00      -0.00

   31   3.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00      70.25    -121.72      -0.00       0.00       0.00
                           -0.00       0.00      70.28      -0.00      -0.00      -0.00      -0.00      -2.96       0.00       0.00

   32   4.1  1.0  0.0       0.00       0.00      -0.00       0.00     -70.25       0.00      -0.00       0.00       0.00       3.34
                           -0.00      -0.00       0.00      70.30       0.00      -0.00      -0.00      -0.00       3.34      -0.00

   33   5.1  1.0  0.0       0.00       0.00       0.00      -0.00     121.72       0.00       0.00      -0.00       0.00      -0.60
                           -0.00      -0.00       0.00     121.69       0.00       0.00      -0.00       0.00       0.60       0.00

   34   6.1  1.0  0.0       0.00       0.00      -0.00       2.96       0.00      -0.00       0.00       0.00     -57.83      -0.00
                           -4.20      -0.00      -0.00       0.00       2.96       0.00      -0.00       0.00      -0.00      57.83

   35   7.1  1.0  0.0       0.00       0.00      -3.71      -0.00      -0.00      -0.00      -0.00      57.83      -0.00      -0.00
                            0.00       0.00       0.00      -0.00      -0.00      -3.34      -0.60       0.00      -0.00       0.00

   36   8.1  1.0  0.0       0.00       0.00       0.00      -0.00      -0.00      -3.34       0.60       0.00       0.00      -0.00
                            0.00      -0.00       3.71       0.00      -0.00       0.00      -0.00     -57.83      -0.00      -0.00

   37   9.1  1.0  0.0       0.00       0.00      -0.00      -0.00      -2.96      -0.00       0.00      -0.00       0.00      96.90
                            0.00       0.00      -0.00       2.96       0.00       0.00       0.00      -0.00      96.90      -0.00

   38  10.1  1.0  0.0       0.00       0.00       0.00      -0.00      -0.00       1.63       3.15       0.00       0.00       0.00
                            0.00      -0.00       0.24       0.00       0.00      -0.00       0.00     115.02       0.00      -0.00

   39  11.1  1.0  0.0       0.00       0.00       0.24      -0.00       0.00      -0.00      -0.00     115.02       0.00       0.00
                           -0.00       0.00      -0.00       0.00       0.00      -1.63       3.15      -0.00      -0.00      -0.00

   40  12.1  1.0  0.0       0.00       0.00      -0.00      -2.26      -0.00       0.00      -0.00       0.00      30.28      -0.00
                          159.60      -0.03       0.00       0.00       2.26      -0.00      -0.00       0.00       0.00      30.28

   41  13.1  1.0  0.0       0.00       0.00      -0.00       0.00      -0.00      -4.72      -2.75      -0.00      -0.00      -0.00
                           -0.00      -0.00      -4.73      -0.00       0.00      -0.00      -0.00       0.02       0.00      -0.00

   42  14.1  1.0  0.0       0.00       0.00      -4.73       0.00       0.00       0.00      -0.00       0.02      -0.00      -0.00
                           -0.00       0.00       0.00      -0.00      -0.00       4.72      -2.75      -0.00      -0.00      -0.00

   43  15.1  1.0  0.0       0.00       0.00      -0.00       4.73       0.00      -0.00       0.00      -0.00      -0.00       0.00
                         -282.81    -218.21       0.00      -0.00      -4.73       0.00       0.00      -0.00      -0.00      -0.00

   44  16.1  1.0  0.0       0.00       0.00      -0.00      -0.00       0.00      -0.00       0.00       0.00       0.00      -0.00
                            0.00       0.00      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00      -0.00

   45   1.1  1.0 -1.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   46   2.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -22.61      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   47   3.1  1.0 -1.0     -21.71      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   48   4.1  1.0 -1.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   49   5.1  1.0 -1.0       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   50   6.1  1.0 -1.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   51   7.1  1.0 -1.0      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           21.08      -0.01      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   52   8.1  1.0 -1.0     -14.30       0.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   53   9.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   54  10.1  1.0 -1.0     -92.06      -0.02       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   55  11.1  1.0 -1.0       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -88.81      -0.02      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   56  12.1  1.0 -1.0      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   57  13.1  1.0 -1.0    -106.11     154.29       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   58  14.1  1.0 -1.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -93.86     154.29      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   59  15.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   60  16.1  1.0 -1.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00


   Nr   State  S   Sz       21         22         23         24         25         26         27         28         29         30

    1   1.1  0.0  0.0       0.00      -0.02       0.00      -0.00      65.03       0.00      -0.00       0.00       0.00       0.00
                            0.00       0.00      -0.02      -0.00      -0.00      65.03       0.00      -0.00       0.00      -0.00

    2   2.1  0.0  0.0      -0.00     -24.99       0.00       0.00      13.00       0.00      -0.00      -0.00       0.00       0.00
                            0.00       0.00     -26.36       0.00      -0.00      15.61      -0.00      -0.00     -10.49       0.00

    3   3.1  0.0  0.0       0.00     -14.38      -0.00      -0.00      25.55       0.00       0.00      -0.00       0.00       0.00
                           -0.00      -0.00      11.68       0.00       0.00     -24.04      -0.00      -0.00     199.69      -0.00

    4   4.1  0.0  0.0       0.00      -0.00      -1.79      -0.00      -0.00      24.88       0.00       0.00       0.00       0.00
                            0.00      -1.79       0.00      -0.00      24.88       0.00       0.00       0.00      -0.00       0.00

    5   5.1  0.0  0.0       0.00       0.00      -0.00      18.47      -0.00       0.00     -24.88       0.00       0.00       0.00
                          -23.84      -0.00      -0.00      -0.00       0.00      -0.00       0.00      -0.00      -0.00       0.00

    6   6.1  0.0  0.0      23.84       0.00      -0.00       0.00      -0.00       0.00       0.00      -0.00       0.00       0.00
                           -0.00       0.00      -0.00     -18.47      -0.00      -0.00      24.88       0.00       0.00     100.03

    7   7.1  0.0  0.0       0.00      -0.00      -6.30       0.00       0.00    -173.20       0.00      -0.00       0.00       0.00
                           -0.00      -6.30       0.00       0.00    -173.20       0.00      -0.00      -0.00       0.00      -0.00

    8   8.1  0.0  0.0      -0.00       0.00       0.00     -65.10       0.00      -0.00    -173.20      -0.00       0.00       0.00
                           84.00       0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00      -0.00      -0.00

    9   9.1  0.0  0.0     -84.00       0.00      -0.00       0.00       0.00      -0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      65.10      -0.00       0.00     173.20      -0.00      -0.00      18.14

   10  10.1  0.0  0.0      -0.00     -42.67      -0.00      -0.00    -169.58       0.00       0.00      -0.00       0.00       0.00
                            0.00      -0.00      49.07       0.00      -0.00     176.65       0.00       0.00     -36.12       0.00

   11  11.1  0.0  0.0       0.00     -92.06       0.00      -0.00    -106.11      -0.00       0.00      -0.00       0.00       0.00
                            0.00      -0.00     -88.81      -0.00       0.00     -93.86       0.00      -0.00      -1.28       0.00

   12  12.1  0.0  0.0       0.00      -0.02      -0.00      -0.00     154.29       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.02      -0.00       0.00     154.29      -0.00       0.00       0.00       0.00

   13   1.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      70.28
                           -4.11       0.00      -0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   14   2.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     -70.28      -0.00
                           -0.00       5.15       0.00       0.00       6.67       0.00      -0.00       0.00      -0.00      -0.00

   15   3.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00
                           -0.00       0.00      -5.15      -0.00      -0.00      -6.67       0.00       0.00      70.28      -0.00

   16   4.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                            0.00      -0.00       0.00       0.00       0.00      -0.00       0.00      -0.00       0.00      70.30

   17   5.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00
                           -0.00      -0.00       0.00       5.61      -0.00      -0.00       7.65      -0.00       0.00     121.69

   18   6.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -2.96
                         -182.11      -0.00      -0.00       0.00       0.00       0.00      -0.00       0.00      -0.00       0.00

   19   7.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       3.71       0.00
                           -0.00     -68.61      -0.00      -0.00      -0.03       0.00      -0.00      -0.00       0.00      -0.00

   20   8.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00
                           -0.00       0.00     -68.61      -0.00      -0.00      -0.03      -0.00      -0.00       3.71       0.00

   21   9.1  1.0  1.0   21433.93       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00       0.00      -0.00       0.00      -0.00      -0.00       2.96

   22  10.1  1.0  1.0       0.00   21434.12       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00
                            0.00       0.00     -77.65      -0.00      -0.00      -0.00      -0.00       0.00       0.24       0.00

   23  11.1  1.0  1.0       0.00       0.00   21434.12       0.00       0.00       0.00       0.00       0.00      -0.24       0.00
                            0.00      77.65      -0.00      -0.00       0.00       0.00      -0.00       0.00      -0.00       0.00

   24  12.1  1.0  1.0       0.00       0.00       0.00   21434.14       0.00       0.00       0.00       0.00       0.00       2.26
                           -0.00       0.00       0.00       0.00      -0.00       0.00       0.00      -0.00       0.00       0.00

   25  13.1  1.0  1.0       0.00       0.00       0.00       0.00   24050.32       0.00       0.00       0.00       0.00      -0.00
                           -0.00       0.00      -0.00       0.00      -0.00    -191.46      -0.00       0.00      -4.73      -0.00

   26  14.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00   24050.32       0.00       0.00       4.73      -0.00
                            0.00       0.00      -0.00      -0.00     191.46       0.00      -0.00       0.00       0.00      -0.00

   27  15.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00   24050.36       0.00       0.00      -4.73
                           -0.00       0.00       0.00      -0.00       0.00       0.00      -0.00     -17.26       0.00      -0.00

   28  16.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00   26331.96       0.00       0.00
                            0.00      -0.00      -0.00       0.00      -0.00      -0.00      17.26       0.00      -0.00       0.00

   29   1.1  1.0  0.0       0.00      -0.00      -0.24       0.00       0.00       4.73       0.00       0.00    9408.37       0.00
                            0.00      -0.24       0.00      -0.00       4.73      -0.00      -0.00       0.00       0.00       0.00

   30   2.1  1.0  0.0       0.00       0.00       0.00       2.26      -0.00      -0.00      -4.73       0.00       0.00    9408.38
                           -2.96      -0.00      -0.00      -0.00       0.00       0.00       0.00      -0.00      -0.00       0.00

   31   3.1  1.0  0.0       2.96       0.00      -0.00       0.00       0.00      -0.00      -0.00      -0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -2.26      -0.00       0.00       4.73       0.00      -0.00      -0.00

   32   4.1  1.0  0.0       0.00      -1.63       0.00      -0.00       4.72      -0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       1.63       0.00       0.00      -4.72      -0.00      -0.00      -0.00      -0.00

   33   5.1  1.0  0.0      -0.00      -3.15       0.00       0.00       2.75       0.00      -0.00      -0.00       0.00       0.00
                           -0.00      -0.00      -3.15       0.00       0.00       2.75      -0.00      -0.00      -0.00      -0.00

   34   6.1  1.0  0.0       0.00      -0.00    -115.02      -0.00       0.00      -0.02       0.00      -0.00       0.00       0.00
                            0.00    -115.02       0.00      -0.00      -0.02       0.00       0.00      -0.00      -0.00      -0.00

   35   7.1  1.0  0.0      -0.00      -0.00      -0.00     -30.28       0.00       0.00       0.00      -0.00       0.00       0.00
                          -96.90      -0.00       0.00      -0.00      -0.00       0.00       0.00      -0.00      -0.00      -0.00

   36   8.1  1.0  0.0     -96.90      -0.00      -0.00       0.00       0.00       0.00      -0.00       0.00       0.00       0.00
                            0.00       0.00       0.00     -30.28       0.00       0.00       0.00       0.00      -0.00      -0.00

   37   9.1  1.0  0.0      -0.00      84.74      -0.00      -0.00       0.01       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00     -84.74       0.00       0.00      -0.01      -0.00       0.00      -0.00      -0.00

   38  10.1  1.0  0.0     -84.74      -0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00       0.00
                            0.00       0.00      -0.00    -154.75       0.00       0.00       0.03      -0.00      -0.00      -0.00

   39  11.1  1.0  0.0       0.00      -0.00       0.00     154.75      -0.00      -0.00      -0.03      -0.00       0.00       0.00
                           84.74       0.00       0.00       0.00      -0.00      -0.00       0.00      -0.00      -0.00      -0.00

   40  12.1  1.0  0.0       0.00      -0.00    -154.75       0.00       0.00      -0.03      -0.00      -0.00       0.00       0.00
                           -0.00     154.75      -0.00      -0.00       0.03       0.00      -0.00       0.00      -0.00      -0.00

   41  13.1  1.0  0.0      -0.01      -0.00       0.00      -0.00      -0.00      -0.00      -0.00      12.20       0.00       0.00
                           -0.00      -0.00       0.00      -0.03      -0.00       0.00    -135.39      -0.00      -0.00      -0.00

   42  14.1  1.0  0.0      -0.00      -0.00       0.00       0.03       0.00       0.00     135.39       0.00       0.00       0.00
                            0.01      -0.00       0.00      -0.00      -0.00      -0.00      -0.00      12.20      -0.00      -0.00

   43  15.1  1.0  0.0      -0.00       0.00       0.03       0.00       0.00    -135.39      -0.00      -0.00       0.00       0.00
                            0.00      -0.03      -0.00       0.00     135.39       0.00      -0.00       0.00      -0.00      -0.00

   44  16.1  1.0  0.0      -0.00       0.00       0.00       0.00     -12.20      -0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00      -0.00       0.00     -12.20      -0.00      -0.00      -0.00      -0.00

   45   1.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00     -70.28
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00

   46   2.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      70.28      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   47   3.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      70.28      -0.00

   48   4.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      70.30

   49   5.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00     121.69

   50   6.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       2.96
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   51   7.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -3.71      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00

   52   8.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       3.71       0.00

   53   9.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       2.96

   54  10.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.24       0.00

   55  11.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.24      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   56  12.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -2.26
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00

   57  13.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -4.73      -0.00

   58  14.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -4.73       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00

   59  15.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       4.73
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00

   60  16.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00


   Nr   State  S   Sz       31         32         33         34         35         36         37         38         39         40

    1   1.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.03

    2   2.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00      -1.77      -0.00      -0.00       0.00       0.00       0.00     -45.33

    3   3.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00      33.66       0.00       0.00      -0.00       0.00      -0.00      -2.38

    4   4.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00    -200.03       0.04      -0.00       0.00       0.00      33.68      -0.00       0.00      -0.00

    5   5.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -100.03       0.00       0.00       0.00      -0.00      -8.20       0.00     -41.86      -0.00      -0.00

    6   6.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00      -8.20       0.00       0.00       0.00      41.86       0.00

    7   7.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      36.15      -0.01      -0.00      -0.00       0.00     118.78       0.00       0.00      -0.00

    8   8.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -18.14      -0.00      -0.00       0.00       0.00      28.85       0.00     147.51      -0.00       0.00

    9   9.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00      -0.00      28.85      -0.00       0.00      -0.00    -147.51      -0.00

   10  10.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00     118.69       0.00       0.00      -0.00      -0.00      -0.00       5.64

   11  11.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       4.20      -0.00      -0.00      -0.00      -0.00       0.00    -159.60

   12  12.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00      -0.00       0.00      -0.00       0.00      -0.00       0.03

   13   1.1  1.0  1.0       0.00      -0.00       0.00      -0.00      -3.71       0.00      -0.00       0.00       0.24      -0.00
                          -70.28      -0.00      -0.00       0.00      -0.00      -3.71       0.00      -0.24       0.00      -0.00

   14   2.1  1.0  1.0       0.00       0.00      -0.00       2.96      -0.00      -0.00      -0.00      -0.00      -0.00      -2.26
                            0.00     -70.30    -121.69      -0.00       0.00      -0.00      -2.96      -0.00      -0.00      -0.00

   15   3.1  1.0  1.0       0.00     -70.25     121.72       0.00      -0.00      -0.00      -2.96      -0.00       0.00      -0.00
                            0.00      -0.00      -0.00      -2.96       0.00       0.00      -0.00      -0.00      -0.00      -2.26

   16   4.1  1.0  1.0      70.25       0.00       0.00      -0.00      -0.00      -3.34      -0.00       1.63      -0.00       0.00
                            0.00       0.00      -0.00      -0.00       3.34      -0.00      -0.00       0.00       1.63       0.00

   17   5.1  1.0  1.0    -121.72      -0.00       0.00       0.00      -0.00       0.60       0.00       3.15      -0.00      -0.00
                            0.00       0.00       0.00       0.00       0.60       0.00      -0.00      -0.00      -3.15       0.00

   18   6.1  1.0  1.0      -0.00       0.00      -0.00       0.00      57.83       0.00      -0.00       0.00     115.02       0.00
                            2.96       0.00      -0.00      -0.00      -0.00      57.83       0.00    -115.02       0.00      -0.00

   19   7.1  1.0  1.0       0.00       0.00       0.00     -57.83      -0.00       0.00       0.00       0.00       0.00      30.28
                           -0.00      -3.34      -0.60       0.00       0.00       0.00     -96.90      -0.00       0.00      -0.00

   20   8.1  1.0  1.0       0.00       3.34      -0.60      -0.00      -0.00      -0.00      96.90       0.00       0.00      -0.00
                           -0.00       0.00      -0.00     -57.83      -0.00       0.00       0.00       0.00       0.00     -30.28

   21   9.1  1.0  1.0       2.96       0.00      -0.00       0.00      -0.00     -96.90      -0.00     -84.74       0.00       0.00
                            0.00       0.00       0.00      -0.00      96.90      -0.00      -0.00      -0.00     -84.74       0.00

   22  10.1  1.0  1.0       0.00      -1.63      -3.15      -0.00      -0.00      -0.00      84.74      -0.00      -0.00      -0.00
                            0.00      -0.00       0.00     115.02       0.00      -0.00       0.00      -0.00      -0.00    -154.75

   23  11.1  1.0  1.0      -0.00       0.00       0.00    -115.02      -0.00      -0.00      -0.00       0.00       0.00    -154.75
                            0.00      -1.63       3.15      -0.00      -0.00      -0.00      84.74       0.00      -0.00       0.00

   24  12.1  1.0  1.0       0.00      -0.00       0.00      -0.00     -30.28       0.00      -0.00       0.00     154.75       0.00
                            2.26      -0.00      -0.00       0.00       0.00      30.28      -0.00     154.75      -0.00       0.00

   25  13.1  1.0  1.0       0.00       4.72       2.75       0.00       0.00       0.00       0.01       0.00      -0.00       0.00
                            0.00      -0.00      -0.00       0.02       0.00      -0.00      -0.00      -0.00       0.00      -0.03

   26  14.1  1.0  1.0      -0.00      -0.00       0.00      -0.02       0.00       0.00       0.00       0.00      -0.00      -0.03
                           -0.00       4.72      -2.75      -0.00      -0.00      -0.00       0.01      -0.00       0.00      -0.00

   27  15.1  1.0  1.0      -0.00       0.00      -0.00       0.00       0.00      -0.00       0.00      -0.00      -0.03      -0.00
                           -4.73       0.00       0.00      -0.00      -0.00      -0.00       0.00      -0.03      -0.00       0.00

   28  16.1  1.0  1.0      -0.00       0.00      -0.00      -0.00      -0.00       0.00       0.00      -0.00      -0.00      -0.00
                           -0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00       0.00      -0.00

   29   1.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   30   2.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   31   3.1  1.0  0.0    9408.38       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   32   4.1  1.0  0.0       0.00    9408.47       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   33   5.1  1.0  0.0       0.00       0.00    9408.46       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   34   6.1  1.0  0.0       0.00       0.00       0.00   21433.69       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   35   7.1  1.0  0.0       0.00       0.00       0.00       0.00   21433.79       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   36   8.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00   21433.79       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00

   37   9.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00   21433.93       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00

   38  10.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00   21434.12       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00

   39  11.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   21434.12       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00

   40  12.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   21434.14
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   41  13.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   42  14.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   43  15.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   44  16.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   45   1.1  1.0 -1.0      -0.00       0.00      -0.00       0.00       3.71      -0.00       0.00      -0.00      -0.24       0.00
                          -70.28      -0.00      -0.00       0.00      -0.00      -3.71       0.00      -0.24       0.00      -0.00

   46   2.1  1.0 -1.0      -0.00      -0.00       0.00      -2.96       0.00       0.00       0.00       0.00       0.00       2.26
                            0.00     -70.30    -121.69      -0.00       0.00      -0.00      -2.96      -0.00      -0.00      -0.00

   47   3.1  1.0 -1.0       0.00      70.25    -121.72      -0.00       0.00       0.00       2.96       0.00      -0.00       0.00
                           -0.00      -0.00      -0.00      -2.96       0.00       0.00      -0.00      -0.00      -0.00      -2.26

   48   4.1  1.0 -1.0     -70.25       0.00      -0.00       0.00       0.00       3.34       0.00      -1.63       0.00      -0.00
                            0.00      -0.00      -0.00      -0.00       3.34      -0.00      -0.00       0.00       1.63       0.00

   49   5.1  1.0 -1.0     121.72       0.00       0.00      -0.00       0.00      -0.60      -0.00      -3.15       0.00       0.00
                            0.00       0.00      -0.00       0.00       0.60       0.00      -0.00      -0.00      -3.15       0.00

   50   6.1  1.0 -1.0       0.00      -0.00       0.00       0.00     -57.83      -0.00       0.00      -0.00    -115.02      -0.00
                            2.96       0.00      -0.00       0.00      -0.00      57.83       0.00    -115.02       0.00      -0.00

   51   7.1  1.0 -1.0      -0.00      -0.00      -0.00      57.83      -0.00      -0.00      -0.00      -0.00      -0.00     -30.28
                           -0.00      -3.34      -0.60       0.00      -0.00       0.00     -96.90      -0.00       0.00      -0.00

   52   8.1  1.0 -1.0      -0.00      -3.34       0.60       0.00       0.00      -0.00     -96.90      -0.00      -0.00       0.00
                           -0.00       0.00      -0.00     -57.83      -0.00      -0.00       0.00       0.00       0.00     -30.28

   53   9.1  1.0 -1.0      -2.96      -0.00       0.00      -0.00       0.00      96.90      -0.00      84.74      -0.00      -0.00
                            0.00       0.00       0.00      -0.00      96.90      -0.00       0.00      -0.00     -84.74       0.00

   54  10.1  1.0 -1.0      -0.00       1.63       3.15       0.00       0.00       0.00     -84.74      -0.00       0.00       0.00
                            0.00      -0.00       0.00     115.02       0.00      -0.00       0.00       0.00      -0.00    -154.75

   55  11.1  1.0 -1.0       0.00      -0.00      -0.00     115.02       0.00       0.00       0.00      -0.00       0.00     154.75
                            0.00      -1.63       3.15      -0.00      -0.00      -0.00      84.74       0.00       0.00       0.00

   56  12.1  1.0 -1.0      -0.00       0.00      -0.00       0.00      30.28      -0.00       0.00      -0.00    -154.75       0.00
                            2.26      -0.00      -0.00       0.00       0.00      30.28      -0.00     154.75      -0.00      -0.00

   57  13.1  1.0 -1.0      -0.00      -4.72      -2.75      -0.00      -0.00      -0.00      -0.01      -0.00       0.00      -0.00
                            0.00      -0.00      -0.00       0.02       0.00      -0.00      -0.00      -0.00       0.00      -0.03

   58  14.1  1.0 -1.0       0.00       0.00      -0.00       0.02      -0.00      -0.00      -0.00      -0.00       0.00       0.03
                           -0.00       4.72      -2.75      -0.00      -0.00      -0.00       0.01      -0.00       0.00      -0.00

   59  15.1  1.0 -1.0       0.00      -0.00       0.00      -0.00      -0.00       0.00      -0.00       0.00       0.03       0.00
                           -4.73       0.00       0.00      -0.00      -0.00      -0.00       0.00      -0.03      -0.00       0.00

   60  16.1  1.0 -1.0       0.00      -0.00       0.00       0.00       0.00      -0.00      -0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00       0.00      -0.00


   Nr   State  S   Sz       41         42         43         44         45         46         47         48         49         50

    1   1.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00       0.00
                           -0.00       0.00      91.96       0.00       0.00       0.00       0.00      -0.00       0.00      -0.00

    2   2.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00      -0.00     125.99       0.00      -0.00      -0.00
                           -0.00       0.00     -40.45      -0.00      -0.00    -118.56      -0.00      -0.00      -0.00      -0.00

    3   3.1  0.0  0.0       0.00       0.00       0.00       0.00      -0.00       0.00     -64.19      -0.00       0.00      -0.00
                           -0.00       0.00      -2.13       0.00      -0.00     -77.04      -0.00      -0.00      -0.00       0.00

    4   4.1  0.0  0.0       0.00       0.00       0.00       0.00      -0.00     -70.73      -0.00      -0.00      -0.00       0.00
                            0.00       0.00       0.00      -0.00       0.00      -0.00      70.73       0.00      -0.00      -0.00

    5   5.1  0.0  0.0       0.00       0.00       0.00       0.00      70.73      -0.00      -0.00      -0.00       0.00     -23.85
                          -35.18      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      70.74     122.48       0.00

    6   6.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      70.69    -122.51       0.00
                           -0.00      35.18      -0.00      -0.00     -70.73       0.00       0.00       0.00      -0.00      23.85

    7   7.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00      12.83       0.00       0.00       0.00      -0.00
                            0.00      -0.00       0.00       0.00      -0.00       0.00     -12.83       0.00       0.00      -0.00

    8   8.1  0.0  0.0       0.00       0.00       0.00       0.00      12.83      -0.00      -0.00      -0.00       0.00      84.00
                         -244.94       0.00       0.00       0.00       0.00      -0.00      -0.00      12.84      22.17       0.00

    9   9.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      12.83     -22.17       0.00
                            0.00     244.94       0.00      -0.00     -12.83      -0.00       0.00       0.00      -0.00     -84.00

   10  10.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00      -0.00      13.55       0.00      -0.00      -0.00
                            0.00       0.00     -10.00      -0.00       0.00      11.99       0.00      -0.00      -0.00       0.00

   11  11.1  0.0  0.0       0.00       0.00       0.00       0.00      -0.00       0.00     -21.71      -0.00       0.00      -0.00
                            0.00       0.00     282.81      -0.00       0.00      22.61       0.00       0.00       0.00       0.00

   12  12.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00      -0.00       0.00
                            0.00      -0.00     218.21      -0.00      -0.00       0.00       0.00       0.00       0.00      -0.00

   13   1.1  1.0  1.0      -0.00      -4.73      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            4.73      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   14   2.1  1.0  1.0       0.00       0.00       4.73      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   15   3.1  1.0  1.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       4.73       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   16   4.1  1.0  1.0      -4.72       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -4.72      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   17   5.1  1.0  1.0      -2.75      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       2.75      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   18   6.1  1.0  1.0      -0.00       0.02      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.02       0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   19   7.1  1.0  1.0      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   20   8.1  1.0  1.0      -0.00      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   21   9.1  1.0  1.0      -0.01      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.01      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   22  10.1  1.0  1.0      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.03      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   23  11.1  1.0  1.0       0.00       0.00       0.03       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   24  12.1  1.0  1.0      -0.00       0.03       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.03       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   25  13.1  1.0  1.0      -0.00       0.00       0.00     -12.20       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00    -135.39      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   26  14.1  1.0  1.0      -0.00       0.00    -135.39      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00      12.20       0.00       0.00       0.00       0.00       0.00       0.00

   27  15.1  1.0  1.0      -0.00     135.39      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          135.39       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   28  16.1  1.0  1.0      12.20       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00     -12.20      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   29   1.1  1.0  0.0       0.00       0.00       0.00       0.00      -0.00      70.28       0.00      -0.00       0.00      -0.00
                            0.00       0.00       0.00       0.00      -0.00       0.00     -70.28      -0.00      -0.00       0.00

   30   2.1  1.0  0.0       0.00       0.00       0.00       0.00     -70.28      -0.00       0.00       0.00      -0.00       2.96
                            0.00       0.00       0.00       0.00      -0.00      -0.00       0.00     -70.30    -121.69      -0.00

   31   3.1  1.0  0.0       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00     -70.25     121.72       0.00
                            0.00       0.00       0.00       0.00      70.28      -0.00       0.00      -0.00      -0.00      -2.96

   32   4.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00      -0.00      70.25       0.00       0.00      -0.00
                            0.00       0.00       0.00       0.00       0.00      70.30       0.00       0.00      -0.00      -0.00

   33   5.1  1.0  0.0       0.00       0.00       0.00       0.00      -0.00       0.00    -121.72      -0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00     121.69       0.00       0.00       0.00       0.00

   34   6.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00      -2.96      -0.00       0.00      -0.00       0.00
                            0.00       0.00       0.00       0.00      -0.00       0.00       2.96       0.00      -0.00      -0.00

   35   7.1  1.0  0.0       0.00       0.00       0.00       0.00       3.71       0.00       0.00       0.00       0.00     -57.83
                            0.00       0.00       0.00       0.00       0.00      -0.00      -0.00      -3.34      -0.60       0.00

   36   8.1  1.0  0.0       0.00       0.00       0.00       0.00      -0.00       0.00       0.00       3.34      -0.60      -0.00
                            0.00       0.00       0.00       0.00       3.71       0.00      -0.00       0.00      -0.00     -57.83

   37   9.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       2.96       0.00      -0.00       0.00
                            0.00       0.00       0.00       0.00      -0.00       2.96       0.00       0.00       0.00      -0.00

   38  10.1  1.0  0.0       0.00       0.00       0.00       0.00      -0.00       0.00       0.00      -1.63      -3.15      -0.00
                            0.00       0.00       0.00       0.00       0.24       0.00       0.00      -0.00       0.00     115.02

   39  11.1  1.0  0.0       0.00       0.00       0.00       0.00      -0.24       0.00      -0.00       0.00       0.00    -115.02
                            0.00       0.00       0.00       0.00      -0.00       0.00       0.00      -1.63       3.15      -0.00

   40  12.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       2.26       0.00      -0.00       0.00      -0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       2.26      -0.00      -0.00       0.00

   41  13.1  1.0  0.0   24050.32       0.00       0.00       0.00       0.00      -0.00       0.00       4.72       2.75       0.00
                            0.00       0.00       0.00       0.00      -4.73      -0.00       0.00      -0.00      -0.00       0.02

   42  14.1  1.0  0.0       0.00   24050.32       0.00       0.00       4.73      -0.00      -0.00      -0.00       0.00      -0.02
                           -0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       4.72      -2.75      -0.00

   43  15.1  1.0  0.0       0.00       0.00   24050.36       0.00       0.00      -4.73      -0.00       0.00      -0.00       0.00
                           -0.00      -0.00       0.00       0.00       0.00      -0.00      -4.73       0.00       0.00      -0.00

   44  16.1  1.0  0.0       0.00       0.00       0.00   26331.96       0.00       0.00      -0.00       0.00      -0.00      -0.00
                           -0.00      -0.00      -0.00       0.00      -0.00       0.00      -0.00       0.00       0.00       0.00

   45   1.1  1.0 -1.0       0.00       4.73       0.00       0.00    9408.37       0.00       0.00       0.00       0.00       0.00
                            4.73      -0.00      -0.00       0.00       0.00       0.00       0.00    -198.74       0.04      -0.00

   46   2.1  1.0 -1.0      -0.00      -0.00      -4.73       0.00       0.00    9408.38       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00      -0.00      -0.00       0.00     -99.39       0.00       0.00       0.00

   47   3.1  1.0 -1.0       0.00      -0.00      -0.00      -0.00       0.00       0.00    9408.38       0.00       0.00       0.00
                           -0.00       0.00       4.73       0.00      -0.00      99.39      -0.00       0.00       0.00      -0.00

   48   4.1  1.0 -1.0       4.72      -0.00       0.00       0.00       0.00       0.00       0.00    9408.47       0.00       0.00
                            0.00      -4.72      -0.00      -0.00     198.74      -0.00      -0.00       0.00       0.00       4.11

   49   5.1  1.0 -1.0       2.75       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00    9408.46       0.00
                            0.00       2.75      -0.00      -0.00      -0.04      -0.00      -0.00      -0.00      -0.00      -0.00

   50   6.1  1.0 -1.0       0.00      -0.02       0.00      -0.00       0.00       0.00       0.00       0.00       0.00   21433.69
                           -0.02       0.00       0.00      -0.00       0.00      -0.00       0.00      -4.11       0.00       0.00

   51   7.1  1.0 -1.0       0.00       0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00      -0.00      -0.00       0.00       1.04      -0.00       0.00       0.00

   52   8.1  1.0 -1.0       0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00      -0.00       1.04      -0.00       0.00       0.00      -0.00

   53   9.1  1.0 -1.0       0.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.01      -0.00       0.00      -4.11      -0.00      -0.00       0.00      -0.00    -182.11

   54  10.1  1.0 -1.0       0.00       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.03      -0.00       0.00       5.15       0.00      -0.00      -0.00      -0.00

   55  11.1  1.0 -1.0      -0.00      -0.00      -0.03      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00      -0.00      -0.00       0.00      -5.15       0.00       0.00      -0.00

   56  12.1  1.0 -1.0       0.00      -0.03      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.03       0.00      -0.00       0.00       0.00       0.00      -0.00       0.00       5.61       0.00

   57  13.1  1.0 -1.0      -0.00      -0.00      -0.00      12.20       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00    -135.39      -0.00      -0.00       6.67      -0.00       0.00      -0.00       0.00

   58  14.1  1.0 -1.0       0.00       0.00     135.39       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      12.20      -0.00       0.00      -6.67      -0.00      -0.00       0.00

   59  15.1  1.0 -1.0       0.00    -135.39      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          135.39       0.00      -0.00       0.00      -0.00      -0.00       0.00       0.00       7.65      -0.00

   60  16.1  1.0 -1.0     -12.20      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00     -12.20      -0.00      -0.00      -0.00       0.00       0.00      -0.00      -0.00       0.00


   Nr   State  S   Sz       51         52         53         54         55         56         57         58         59         60

    1   1.1  0.0  0.0      -0.00       0.00       0.00      -0.02       0.00      -0.00      65.03       0.00      -0.00       0.00
                            0.00      -0.00      -0.00      -0.00       0.02       0.00       0.00     -65.03      -0.00       0.00

    2   2.1  0.0  0.0       0.00      -6.45      -0.00     -24.99       0.00       0.00      13.00       0.00      -0.00      -0.00
                           -3.59      -0.00      -0.00      -0.00      26.36      -0.00       0.00     -15.61       0.00       0.00

    3   3.1  0.0  0.0       0.00      26.95       0.00     -14.38      -0.00      -0.00      25.55       0.00       0.00      -0.00
                          -27.47      -0.00       0.00       0.00     -11.68      -0.00      -0.00      24.04       0.00       0.00

    4   4.1  0.0  0.0      30.10      -0.00       0.00      -0.00      -1.79      -0.00      -0.00      24.88       0.00       0.00
                            0.00      30.10      -0.00       1.79      -0.00       0.00     -24.88      -0.00      -0.00      -0.00

    5   5.1  0.0  0.0       0.00       0.00       0.00       0.00      -0.00      18.47      -0.00       0.00     -24.88       0.00
                           -0.00      -0.00      23.84       0.00       0.00       0.00      -0.00       0.00      -0.00       0.00

    6   6.1  0.0  0.0       0.00      -0.00      23.84       0.00      -0.00       0.00      -0.00       0.00       0.00      -0.00
                           -0.00      -0.00       0.00      -0.00       0.00      18.47       0.00       0.00     -24.88      -0.00

    7   7.1  0.0  0.0     106.07       0.00       0.00      -0.00      -6.30       0.00       0.00    -173.20       0.00      -0.00
                            0.00     106.07       0.00       6.30      -0.00      -0.00     173.20      -0.00       0.00       0.00

    8   8.1  0.0  0.0       0.00       0.00      -0.00       0.00       0.00     -65.10       0.00      -0.00    -173.20      -0.00
                            0.00       0.00     -84.00      -0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00

    9   9.1  0.0  0.0       0.00      -0.00     -84.00       0.00      -0.00       0.00       0.00      -0.00       0.00       0.00
                            0.00      -0.00       0.00       0.00       0.00     -65.10       0.00      -0.00    -173.20       0.00

   10  10.1  0.0  0.0       0.00      96.50      -0.00     -42.67      -0.00      -0.00    -169.58       0.00       0.00      -0.00
                          -95.25       0.00      -0.00       0.00     -49.07      -0.00       0.00    -176.65      -0.00      -0.00

   11  11.1  0.0  0.0      -0.00     -14.30       0.00     -92.06       0.00      -0.00    -106.11      -0.00       0.00      -0.00
                          -21.08      -0.00      -0.00       0.00      88.81       0.00      -0.00      93.86      -0.00       0.00

   12  12.1  0.0  0.0      -0.00       0.01       0.00      -0.02      -0.00      -0.00     154.29       0.00       0.00       0.00
                            0.01      -0.00      -0.00       0.00       0.02       0.00      -0.00    -154.29       0.00      -0.00

   13   1.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   14   2.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   15   3.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   16   4.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   17   5.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   18   6.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   19   7.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   20   8.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   21   9.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   22  10.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   23  11.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   24  12.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   25  13.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   26  14.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   27  15.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   28  16.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   29   1.1  1.0  0.0      -3.71       0.00      -0.00       0.00       0.24      -0.00      -0.00      -4.73      -0.00      -0.00
                           -0.00      -3.71       0.00      -0.24       0.00      -0.00       4.73      -0.00      -0.00       0.00

   30   2.1  1.0  0.0      -0.00      -0.00      -0.00      -0.00      -0.00      -2.26       0.00       0.00       4.73      -0.00
                            0.00      -0.00      -2.96      -0.00      -0.00      -0.00       0.00       0.00       0.00      -0.00

   31   3.1  1.0  0.0      -0.00      -0.00      -2.96      -0.00       0.00      -0.00      -0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.00      -0.00      -2.26      -0.00       0.00       4.73       0.00

   32   4.1  1.0  0.0      -0.00      -3.34      -0.00       1.63      -0.00       0.00      -4.72       0.00      -0.00      -0.00
                            3.34      -0.00      -0.00       0.00       1.63       0.00       0.00      -4.72      -0.00      -0.00

   33   5.1  1.0  0.0      -0.00       0.60       0.00       3.15      -0.00      -0.00      -2.75      -0.00       0.00       0.00
                            0.60       0.00      -0.00      -0.00      -3.15       0.00       0.00       2.75      -0.00      -0.00

   34   6.1  1.0  0.0      57.83       0.00      -0.00       0.00     115.02       0.00      -0.00       0.02      -0.00       0.00
                           -0.00      57.83       0.00    -115.02       0.00      -0.00      -0.02       0.00       0.00      -0.00

   35   7.1  1.0  0.0      -0.00       0.00       0.00       0.00       0.00      30.28      -0.00      -0.00      -0.00       0.00
                            0.00       0.00     -96.90      -0.00       0.00      -0.00      -0.00       0.00       0.00      -0.00

   36   8.1  1.0  0.0      -0.00      -0.00      96.90       0.00       0.00      -0.00      -0.00      -0.00       0.00      -0.00
                           -0.00       0.00       0.00       0.00       0.00     -30.28       0.00       0.00       0.00       0.00

   37   9.1  1.0  0.0      -0.00     -96.90      -0.00     -84.74       0.00       0.00      -0.01      -0.00      -0.00      -0.00
                           96.90      -0.00      -0.00      -0.00     -84.74       0.00       0.00      -0.01      -0.00       0.00

   38  10.1  1.0  0.0      -0.00      -0.00      84.74      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00
                            0.00      -0.00       0.00      -0.00      -0.00    -154.75       0.00       0.00       0.03      -0.00

   39  11.1  1.0  0.0      -0.00      -0.00      -0.00       0.00       0.00    -154.75       0.00       0.00       0.03       0.00
                           -0.00      -0.00      84.74       0.00      -0.00       0.00      -0.00      -0.00       0.00      -0.00

   40  12.1  1.0  0.0     -30.28       0.00      -0.00       0.00     154.75       0.00      -0.00       0.03       0.00       0.00
                            0.00      30.28      -0.00     154.75      -0.00       0.00       0.03       0.00      -0.00       0.00

   41  13.1  1.0  0.0       0.00       0.00       0.01       0.00      -0.00       0.00      -0.00       0.00       0.00     -12.20
                            0.00      -0.00      -0.00      -0.00       0.00      -0.03       0.00       0.00    -135.39      -0.00

   42  14.1  1.0  0.0       0.00       0.00       0.00       0.00      -0.00      -0.03      -0.00       0.00    -135.39      -0.00
                           -0.00      -0.00       0.01      -0.00       0.00      -0.00      -0.00       0.00      -0.00      12.20

   43  15.1  1.0  0.0       0.00      -0.00       0.00      -0.00      -0.03      -0.00      -0.00     135.39      -0.00       0.00
                           -0.00      -0.00       0.00      -0.03      -0.00       0.00     135.39       0.00       0.00       0.00

   44  16.1  1.0  0.0      -0.00       0.00       0.00      -0.00      -0.00      -0.00      12.20       0.00      -0.00       0.00
                            0.00      -0.00      -0.00       0.00       0.00      -0.00       0.00     -12.20      -0.00       0.00

   45   1.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       4.11      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00

   46   2.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -1.04       0.00      -5.15      -0.00      -0.00      -6.67      -0.00       0.00      -0.00

   47   3.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -1.04       0.00       0.00      -0.00       5.15       0.00       0.00       6.67      -0.00      -0.00

   48   4.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00       0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.00

   49   5.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00      -0.00      -5.61       0.00       0.00      -7.65       0.00

   50   6.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00     182.11       0.00       0.00      -0.00      -0.00      -0.00       0.00      -0.00

   51   7.1  1.0 -1.0   21433.79       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00    -259.68       0.00      68.61       0.00       0.00       0.03      -0.00       0.00       0.00

   52   8.1  1.0 -1.0       0.00   21433.79       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          259.68       0.00       0.00      -0.00      68.61       0.00       0.00       0.03       0.00       0.00

   53   9.1  1.0 -1.0       0.00       0.00   21433.93       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00       0.00      -0.00      -0.00       0.00      -0.00       0.00

   54  10.1  1.0 -1.0       0.00       0.00       0.00   21434.12       0.00       0.00       0.00       0.00       0.00       0.00
                          -68.61       0.00      -0.00      -0.00      77.65       0.00       0.00       0.00       0.00      -0.00

   55  11.1  1.0 -1.0       0.00       0.00       0.00       0.00   21434.12       0.00       0.00       0.00       0.00       0.00
                           -0.00     -68.61      -0.00     -77.65       0.00       0.00      -0.00      -0.00       0.00      -0.00

   56  12.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00   21434.14       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00      -0.00      -0.00      -0.00       0.00      -0.00      -0.00       0.00

   57  13.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00   24050.32       0.00       0.00       0.00
                           -0.03      -0.00       0.00      -0.00       0.00      -0.00       0.00     191.46       0.00      -0.00

   58  14.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00   24050.32       0.00       0.00
                            0.00      -0.03      -0.00      -0.00       0.00       0.00    -191.46      -0.00       0.00      -0.00

   59  15.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   24050.36       0.00
                           -0.00      -0.00       0.00      -0.00      -0.00       0.00      -0.00      -0.00       0.00      17.26

   60  16.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   26331.96
                           -0.00      -0.00      -0.00       0.00       0.00      -0.00       0.00       0.00     -17.26      -0.00




   Spin-orbit calculation in the basis of symmetry adapted wave functions
   ======================================================================


 >>> Hamiltonian transformed to symmetry adapted basis <<<


  Results for symmetry 1
  ======================

 => Spin-Orbit Matrixblock (CM-1)  (dimension: 60)

    The diagonal matrixelements are shifted by    -25.39267530 a.u.

  State Sym Spin    / Nr.        1           2           3           4           5           6           7           8

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |0 0>               0.000   11537.254       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |0 0>               0.000       0.000   11537.261       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |0 0>               0.000       0.000       0.000   11537.275       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000   11537.279       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000   11537.283       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000

    7    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000   23470.412       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000

    8    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000   23470.411
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000

    9    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

   10    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

   11    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

   12    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

    1    1  |1 1>+              0.000       0.000      -0.000      -0.000     100.025       0.000       0.000      18.150
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>+              0.000      -0.000       0.000    -100.031      -0.000       0.000      18.141      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>+             -0.003     178.172     -90.778      -0.000      -0.000      -0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>+             -0.000       0.000      -0.000      -0.000      -0.000      99.975       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>+              0.000      -0.000       0.000      -0.000       0.000    -173.248       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>+              0.000      -0.000      -0.000       0.000     -33.723       0.000      -0.000     118.792
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>+             -0.000       0.000       0.000      42.569       0.000       0.000     150.010       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>+              0.007      -9.117      38.107      -0.000       0.000      -0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>+              0.000      -0.000       0.000       0.000       0.000      33.718       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   10    1  |1 1>+             -0.024     -35.346     -20.341      -0.000       0.000       0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   11    1  |1 1>+              0.000       0.000      -0.000      -2.537      -0.000      -0.000      -8.903       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   12    1  |1 1>+             -0.000       0.000      -0.000      -0.000      26.119       0.000       0.000     -92.061
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   13    1  |1 1>+             91.960      18.385      36.130      -0.000      -0.000      -0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   14    1  |1 1>+              0.000       0.000       0.000      35.179       0.000       0.000    -244.948      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   15    1  |1 1>+             -0.000      -0.000       0.000       0.000     -35.184       0.000       0.000    -244.944
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   16    1  |1 1>+              0.000      -0.000      -0.000       0.000       0.000      -0.001      -0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      10.494    -199.694       0.000       0.000      -0.000      -0.000       0.000

    2    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000      -0.000      -0.000    -100.029       0.000       0.000

    3    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000      -0.000     100.029      -0.000      -0.000      18.143

    4    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000     200.034      -0.000      -0.000     -36.154       0.000

    5    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000      -0.041      -0.000      -0.000       0.007       0.000

    6    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       1.769     -33.655       0.000      -0.000      -0.000       0.000      -0.000

    7    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000      -0.000       0.000       8.196       0.000      -0.000

    8    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000      -0.000       8.196      -0.000      -0.000     -28.845

    9    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000     -33.679      -0.000      -0.000    -118.781      -0.000

   10    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000       0.000      41.856      -0.000      -0.000    -147.515

   11    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000      -0.000       0.000     -41.856      -0.000       0.000

   12    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.029      45.330       2.382       0.000       0.000      -0.000       0.000      -0.000

   13    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000      35.182       0.000      -0.000     244.940

   14    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000       0.000     -35.182       0.000      -0.000

   15    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -91.961      40.451       2.126      -0.000       0.000       0.000      -0.000      -0.000

   16    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000       0.000       0.000       0.000      -0.000      -0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000       0.000      -0.000    -100.025      -0.000       0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.003    -167.676    -108.953      -0.000      -0.000       0.000       0.000      -0.000

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000     100.031      -0.000       0.000     -18.141      -0.000

    4    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000       0.000     100.046       0.000       0.000      18.159

    5    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000      -0.000     173.208      -0.000       0.000      31.352

    6    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000      -0.000       0.000      33.723      -0.000       0.000

    7    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.007      -5.073     -38.853       0.000      -0.000      -0.000       0.000       0.000

    8    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      42.569      -0.000      -0.000     150.010       0.000

    9    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000      -0.000      33.718       0.000       0.000    -118.790

   10    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       2.537       0.000      -0.000       8.903      -0.000

   11    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.024      37.283     -16.524      -0.000       0.000       0.000      -0.000       0.000

   12    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000       0.000       0.000      26.119      -0.000       0.000

   13    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000     -35.179      -0.000       0.000     244.948       0.000

   14    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -91.960     -22.071      34.004      -0.000       0.000       0.000      -0.000      -0.000

   15    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000      -0.000      -0.000     -35.184       0.000      -0.000

   16    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000       0.001      -0.000       0.000      -0.001

  State Sym Spin    / Nr.        9          10          11          12          13          14          15          16

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000      -0.003      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |0 0>               0.000       0.000       0.000       0.000       0.000      -0.000     178.172       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |0 0>               0.000       0.000       0.000       0.000      -0.000       0.000     -90.778      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |0 0>               0.000       0.000       0.000       0.000      -0.000    -100.031      -0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000     100.025      -0.000      -0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000      -0.000      99.975
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |0 0>               0.000       0.000       0.000       0.000       0.000      18.141       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |0 0>               0.000       0.000       0.000       0.000      18.150      -0.000      -0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |0 0>           23470.411       0.000       0.000       0.000       0.000       0.000      -0.000      18.146
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   10    1  |0 0>               0.000   23470.430       0.000       0.000       0.000      -0.000      19.169       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   11    1  |0 0>               0.000       0.000   23470.445       0.000      -0.000       0.000     -30.700      -0.000
                               -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000

   12    1  |0 0>               0.000       0.000       0.000   26198.867       0.000       0.000      -0.004       0.000
                               -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 1>+              0.000       0.000      -0.000       0.000    9408.370       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>+              0.000      -0.000       0.000       0.000       0.000    9408.384       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>+             -0.000      19.169     -30.700      -0.004       0.000       0.000    9408.384       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>+             18.146       0.000      -0.000       0.000       0.000       0.000       0.000    9408.466
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>+            -31.359      -0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>+              0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>+              0.000       0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>+             -0.000     136.472     -20.223       0.010       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>+           -118.790      -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   10    1  |1 1>+              0.000     -60.349    -130.187      -0.033       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   11    1  |1 1>+             -0.000      -0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   12    1  |1 1>+              0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   13    1  |1 1>+              0.000    -239.824    -150.063     218.193       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   14    1  |1 1>+             -0.000       0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   15    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   16    1  |1 1>+              0.001      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>               0.000       0.000       0.000       0.000      -0.000       0.000      -0.000       0.000
                                0.000      36.117       1.277      -0.000       0.000       0.000     -99.391      -0.000

    2    1  |1 0>               0.000       0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000
                              -18.143      -0.000      -0.000      -0.000      -0.000       0.000       0.000     -99.413

    3    1  |1 0>               0.000       0.000       0.000       0.000      -0.000      -0.000       0.000      -0.000
                                0.000      -0.000      -0.000       0.000      99.391      -0.000       0.000      -0.000

    4    1  |1 0>               0.000       0.000       0.000       0.000       0.000      -0.000      -0.000       0.000
                               -0.000       0.000      -0.000      -0.000       0.000      99.413       0.000       0.000

    5    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000      -0.000       0.000
                               -0.000       0.000      -0.000      -0.000       0.000     172.101       0.000       0.000

    6    1  |1 0>               0.000       0.000       0.000       0.000      -0.000      -0.000       0.000      -0.000
                                0.000    -118.693      -4.198      -0.000      -0.000       0.000       4.191       0.000

    7    1  |1 0>               0.000       0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000
                              -28.845      -0.000       0.000       0.000       0.000      -0.000      -0.000      -4.722

    8    1  |1 0>               0.000       0.000       0.000       0.000       0.000      -0.000      -0.000       0.000
                                0.000      -0.000       0.000      -0.000       5.253       0.000      -0.000       0.000

    9    1  |1 0>               0.000       0.000       0.000       0.000      -0.000      -0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000      -0.000       4.184       0.000       0.000

   10    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000      -0.000      -0.000
                                0.000       0.000       0.000      -0.000       0.341       0.000       0.000      -0.000

   11    1  |1 0>               0.000       0.000       0.000       0.000       0.000      -0.000      -0.000       0.000
                              147.515       0.000      -0.000       0.000      -0.000       0.000       0.000      -2.299

   12    1  |1 0>               0.000       0.000       0.000       0.000       0.000      -0.000       0.000       0.000
                                0.000      -5.645     159.604      -0.033       0.000       0.000       3.196      -0.000

   13    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000      -0.000      -0.000
                               -0.000      -0.000      -0.000      -0.000      -6.686      -0.000       0.000      -0.000

   14    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000      -0.000       0.000
                             -244.940      -0.000      -0.000       0.000       0.000      -0.000      -0.000       6.675

   15    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000      -0.000      -0.000
                               -0.000      10.002    -282.810    -218.208       0.000      -0.000      -6.684       0.000

   16    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000      -0.000      -0.000
                                0.000       0.000       0.000       0.000      -0.000       0.002      -0.000       0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -18.150       0.000       0.000      -0.000      -0.000      -0.000      -0.000     198.744

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      16.952      31.978       0.004       0.000      -0.000      99.390      -0.000

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000     -99.390       0.000      -0.000

    4    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000       0.000    -198.744       0.000       0.000      -0.000

    5    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000       0.041       0.000       0.000       0.000

    6    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -118.792       0.000       0.000      -0.000      -0.000       0.000      -0.000       4.106

    7    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000    -134.702     -29.813       0.010       0.000      -0.000      -1.043       0.000

    8    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000      -0.000       0.000      -1.043       0.000      -0.000

    9    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000      -0.000       4.107       0.000       0.000      -0.000

   10    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000      -5.154      -0.000       0.000

   11    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000     -69.396     125.599       0.034       0.000      -0.000       5.154      -0.000

   12    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -92.061      -0.000       0.000       0.000      -0.000      -0.000       0.000      -0.001

   13    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000      -0.000       0.000      -6.673       0.000      -0.000

   14    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000    -249.826     132.745    -218.193       0.000      -0.000       6.673       0.000

   15    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -244.944      -0.000      -0.000       0.000       0.000       0.000      -0.000      -0.002

   16    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000      -0.000       0.000      -0.000      -0.000       0.000

  State Sym Spin    / Nr.       17          18          19          20          21          22          23          24

    1    1  |0 0>               0.000       0.000      -0.000       0.007       0.000      -0.024       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |0 0>              -0.000      -0.000       0.000      -9.117      -0.000     -35.346       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |0 0>               0.000      -0.000       0.000      38.107       0.000     -20.341      -0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |0 0>              -0.000       0.000      42.569      -0.000       0.000      -0.000      -2.537      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |0 0>               0.000     -33.723       0.000       0.000       0.000       0.000      -0.000      26.119
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |0 0>            -173.248       0.000       0.000      -0.000      33.718       0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |0 0>               0.000      -0.000     150.010       0.000       0.000      -0.000      -8.903       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |0 0>               0.000     118.792       0.000       0.000      -0.000       0.000       0.000     -92.061
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |0 0>             -31.359       0.000       0.000      -0.000    -118.790       0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   10    1  |0 0>              -0.000      -0.000       0.000     136.472      -0.000     -60.349      -0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   11    1  |0 0>               0.000      -0.000      -0.000     -20.223       0.000    -130.187       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   12    1  |0 0>              -0.000       0.000      -0.000       0.010       0.000      -0.033      -0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>+           9408.458       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>+              0.000   21433.687       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>+              0.000       0.000   21433.793       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>+              0.000       0.000       0.000   21433.793       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>+              0.000       0.000       0.000       0.000   21433.929       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   10    1  |1 1>+              0.000       0.000       0.000       0.000       0.000   21434.116       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   11    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000   21434.116       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   12    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000   21434.139
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   13    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   14    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   15    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   16    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>               0.000      -0.000       0.000       0.000      -0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000      -5.253       0.000      -0.341       0.000      -0.000

    2    1  |1 0>               0.000      -0.000      -0.000      -0.000      -0.000       0.000      -0.000      -0.000
                             -172.101      -0.000       0.000      -0.000      -4.184      -0.000      -0.000      -0.000

    3    1  |1 0>              -0.000       0.000      -0.000      -0.000       0.000      -0.000      -0.000       0.000
                               -0.000      -4.191       0.000       0.000      -0.000      -0.000      -0.000      -3.196

    4    1  |1 0>               0.000      -0.000      -0.000       0.000       0.000      -0.000       0.000       0.000
                               -0.000      -0.000       4.722      -0.000      -0.000       0.000       2.299       0.000

    5    1  |1 0>               0.000      -0.000      -0.000       0.000      -0.000       0.000       0.000      -0.000
                                0.000       0.000       0.852       0.000      -0.000      -0.000      -4.455       0.000

    6    1  |1 0>              -0.000       0.000       0.000      -0.000      -0.000      -0.000      -0.000      -0.000
                               -0.000       0.000      -0.000      81.782       0.000    -162.666       0.000      -0.000

    7    1  |1 0>              -0.000       0.000      -0.000      -0.000       0.000      -0.000       0.000      -0.000
                               -0.852       0.000       0.000       0.000    -137.044      -0.000       0.000      -0.000

    8    1  |1 0>               0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                               -0.000     -81.782      -0.000       0.000       0.000       0.000       0.000     -42.829

    9    1  |1 0>              -0.000      -0.000       0.000       0.000      -0.000      -0.000       0.000       0.000
                                0.000      -0.000     137.044      -0.000       0.000      -0.000    -119.843       0.000

   10    1  |1 0>               0.000      -0.000      -0.000       0.000      -0.000      -0.000       0.000       0.000
                                0.000     162.666       0.000      -0.000       0.000       0.000      -0.000    -218.850

   11    1  |1 0>               0.000      -0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                                4.455      -0.000      -0.000      -0.000     119.843       0.000       0.000       0.000

   12    1  |1 0>              -0.000      -0.000      -0.000       0.000       0.000       0.000      -0.000       0.000
                               -0.000       0.000       0.000      42.829      -0.000     218.850      -0.000       0.000

   13    1  |1 0>               0.000       0.000       0.000      -0.000      -0.000       0.000      -0.000      -0.000
                               -0.000       0.033       0.000      -0.000      -0.000      -0.000       0.000      -0.040

   14    1  |1 0>              -0.000       0.000       0.000       0.000       0.000      -0.000       0.000      -0.000
                               -3.894      -0.000      -0.000      -0.000       0.013      -0.000       0.000      -0.000

   15    1  |1 0>              -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000
                                0.000      -0.000      -0.000      -0.007       0.000      -0.045      -0.000       0.000

   16    1  |1 0>              -0.000       0.000      -0.000       0.000       0.000       0.000      -0.000      -0.000
                                0.000       0.000       0.001      -0.000      -0.000       0.000       0.004      -0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.041       0.000      -0.000      -0.000      -4.107       0.000      -0.000       0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       1.043      -0.000       5.154       0.000       0.000

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       1.043      -0.000      -0.000       0.000      -5.154      -0.000

    4    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -4.106      -0.000       0.000       0.000      -0.000       0.000       0.001

    5    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.001       0.000       0.000      -0.000      -0.000       0.000       5.608

    6    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.001      -0.000       0.000      -0.000    -182.109      -0.000      -0.000       0.000

    7    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000     259.685      -0.000     -68.615      -0.000      -0.000

    8    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000    -259.685      -0.000      -0.000       0.000     -68.615      -0.000

    9    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000     182.109       0.000       0.000      -0.000      -0.000      -0.000       0.000

   10    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      68.615      -0.000       0.000       0.000     -77.647      -0.000

   11    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000      68.615       0.000      77.647      -0.000      -0.000

   12    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -5.608      -0.000       0.000       0.000      -0.000       0.000       0.000       0.000

   13    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.028       0.000      -0.000       0.000      -0.003       0.000

   14    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000       0.028       0.000       0.003      -0.000      -0.000

   15    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -7.645       0.000       0.000       0.000      -0.000       0.000       0.000      -0.000

   16    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000       0.000       0.000      -0.000      -0.000       0.004

  State Sym Spin    / Nr.       25          26          27          28          29          30          31          32

    1    1  |0 0>              91.960       0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000      -0.000      -0.000       0.000

    2    1  |0 0>              18.385       0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000     -10.494       0.000       0.000       0.000

    3    1  |0 0>              36.130       0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000     199.694      -0.000      -0.000      -0.000

    4    1  |0 0>              -0.000      35.179       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000       0.000       0.000    -200.034

    5    1  |0 0>              -0.000       0.000     -35.184       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000       0.000    -100.029       0.000

    6    1  |0 0>              -0.000       0.000       0.000      -0.001       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000     100.029       0.000       0.000

    7    1  |0 0>               0.000    -244.948       0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000      -0.000       0.000      36.154

    8    1  |0 0>               0.000      -0.000    -244.944      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000      -0.000     -18.143      -0.000

    9    1  |0 0>               0.000      -0.000       0.000       0.001       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000      18.143      -0.000       0.000

   10    1  |0 0>            -239.824       0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000     -36.117       0.000       0.000      -0.000

   11    1  |0 0>            -150.063      -0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -1.277       0.000       0.000       0.000

   12    1  |0 0>             218.193       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000      -0.000       0.000

    1    1  |1 1>+              0.000       0.000       0.000       0.000      -0.000       0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000     -99.391      -0.000

    2    1  |1 1>+              0.000       0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000
                                0.000       0.000       0.000       0.000      -0.000       0.000       0.000     -99.413

    3    1  |1 1>+              0.000       0.000       0.000       0.000      -0.000      -0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000      99.391      -0.000       0.000      -0.000

    4    1  |1 1>+              0.000       0.000       0.000       0.000       0.000      -0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000       0.000      99.413       0.000       0.000

    5    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000       0.000     172.101       0.000       0.000

    6    1  |1 1>+              0.000       0.000       0.000       0.000      -0.000      -0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000      -0.000       0.000       4.191       0.000

    7    1  |1 1>+              0.000       0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000      -0.000      -0.000      -4.722

    8    1  |1 1>+              0.000       0.000       0.000       0.000       0.000      -0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000       5.253       0.000      -0.000       0.000

    9    1  |1 1>+              0.000       0.000       0.000       0.000      -0.000      -0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000       4.184       0.000       0.000

   10    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000      -0.000      -0.000
                                0.000       0.000       0.000       0.000       0.341       0.000       0.000      -0.000

   11    1  |1 1>+              0.000       0.000       0.000       0.000       0.000      -0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000       0.000       0.000      -2.299

   12    1  |1 1>+              0.000       0.000       0.000       0.000       0.000      -0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       3.196      -0.000

   13    1  |1 1>+          24050.319       0.000       0.000       0.000       0.000       0.000      -0.000      -0.000
                                0.000       0.000       0.000       0.000      -6.686      -0.000       0.000      -0.000

   14    1  |1 1>+              0.000   24050.319       0.000       0.000       0.000       0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000       0.000      -0.000      -0.000       6.675

   15    1  |1 1>+              0.000       0.000   24050.361       0.000       0.000       0.000      -0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000      -0.000      -6.684       0.000

   16    1  |1 1>+              0.000       0.000       0.000   26331.965       0.000       0.000      -0.000      -0.000
                                0.000       0.000       0.000       0.000      -0.000       0.002      -0.000       0.000

    1    1  |1 0>               0.000       0.000       0.000       0.000    9408.370       0.000       0.000       0.000
                                6.686      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 0>               0.000       0.000       0.000       0.000       0.000    9408.384       0.000       0.000
                                0.000       0.000       0.000      -0.002      -0.000       0.000       0.000       0.000

    3    1  |1 0>              -0.000      -0.000      -0.000      -0.000       0.000       0.000    9408.384       0.000
                               -0.000       0.000       6.684       0.000      -0.000      -0.000       0.000       0.000

    4    1  |1 0>              -0.000       0.000      -0.000      -0.000       0.000       0.000       0.000    9408.466
                                0.000      -6.675      -0.000      -0.000      -0.000      -0.000      -0.000       0.000

    5    1  |1 0>               0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000       3.894      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

    6    1  |1 0>               0.000       0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                               -0.033       0.000       0.000      -0.000      -0.000      -0.000      -0.000      -0.000

    7    1  |1 0>               0.000       0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000      -0.001      -0.000      -0.000      -0.000      -0.000

    8    1  |1 0>              -0.000       0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.007       0.000      -0.000      -0.000      -0.000      -0.000

    9    1  |1 0>              -0.000       0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.013      -0.000       0.000      -0.000      -0.000      -0.000      -0.000

   10    1  |1 0>               0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.045      -0.000      -0.000      -0.000      -0.000      -0.000

   11    1  |1 0>              -0.000       0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000      -0.004      -0.000      -0.000      -0.000      -0.000

   12    1  |1 0>              -0.000      -0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                                0.040       0.000      -0.000       0.000      -0.000      -0.000      -0.000      -0.000

   13    1  |1 0>              -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000    -191.468      -0.000      -0.000      -0.000      -0.000      -0.000

   14    1  |1 0>              -0.000       0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000      17.257      -0.000      -0.000      -0.000      -0.000

   15    1  |1 0>               0.000       0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                              191.468       0.000       0.000       0.000      -0.000      -0.000      -0.000      -0.000

   16    1  |1 0>               0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000     -17.257      -0.000       0.000      -0.000      -0.000      -0.000      -0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000      99.391       0.000      -0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000     -99.391       0.000       0.000       0.000
                                6.673       0.000      -0.000       0.000      -0.000      -0.000      -0.000       0.000

    3    1  |1 1>-              0.000       0.000       0.000       0.000      -0.000      -0.000       0.000     -99.343
                               -0.000      -6.673       0.000       0.000       0.000      -0.000       0.000      -0.000

    4    1  |1 1>-              0.000       0.000       0.000       0.000       0.000      -0.000      99.343       0.000
                                0.000      -0.000       0.002      -0.000       0.000       0.000      -0.000       0.000

    5    1  |1 1>-              0.000       0.000       0.000       0.000      -0.000       0.000    -172.141      -0.000
                               -0.000      -0.000       7.645      -0.000       0.000      -0.000       0.000      -0.000

    6    1  |1 1>-              0.000       0.000       0.000       0.000       0.000      -4.191      -0.000       0.000
                                0.000       0.000      -0.000       0.000      -0.000      -0.000      -0.000       0.000

    7    1  |1 1>-              0.000       0.000       0.000       0.000       5.253       0.000       0.000       0.000
                               -0.028       0.000      -0.000      -0.000      -0.000       0.000       0.000      -0.000

    8    1  |1 1>-              0.000       0.000       0.000       0.000      -0.000       0.000       0.000       4.722
                               -0.000      -0.028      -0.000      -0.000       0.000      -0.000      -0.000      -0.000

    9    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       4.184       0.000
                                0.000      -0.000       0.000      -0.000       0.000      -0.000       0.000       0.000

   10    1  |1 1>-              0.000       0.000       0.000       0.000      -0.000       0.000       0.000      -2.301
                               -0.000      -0.003      -0.000       0.000      -0.000       0.000       0.000       0.000

   11    1  |1 1>-              0.000       0.000       0.000       0.000      -0.341       0.000      -0.000       0.000
                                0.003       0.000      -0.000       0.000       0.000       0.000      -0.000       0.000

   12    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       3.196       0.000      -0.000
                               -0.000       0.000       0.000      -0.004      -0.000       0.000      -0.000      -0.000

   13    1  |1 1>-              0.000       0.000       0.000       0.000       0.000      -0.000       0.000       6.677
                               -0.000    -191.462      -0.000       0.000       0.000       0.000      -0.000      -0.000

   14    1  |1 1>-              0.000       0.000       0.000       0.000       6.686      -0.000      -0.000      -0.000
                              191.462       0.000      -0.000       0.000      -0.000       0.000       0.000      -0.000

   15    1  |1 1>-              0.000       0.000       0.000       0.000       0.000      -6.684      -0.000       0.000
                                0.000       0.000      -0.000     -17.264      -0.000       0.000      -0.000      -0.000

   16    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000      -0.002       0.000
                               -0.000      -0.000      17.264       0.000      -0.000      -0.000      -0.000      -0.000

  State Sym Spin    / Nr.       33          34          35          36          37          38          39          40

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000       0.000       0.000       0.000       0.000       0.029

    2    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -1.769      -0.000      -0.000       0.000       0.000       0.000     -45.330

    3    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      33.655       0.000       0.000      -0.000       0.000      -0.000      -2.382

    4    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.041      -0.000       0.000       0.000      33.679      -0.000       0.000      -0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000      -8.196       0.000     -41.856      -0.000      -0.000

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -8.196       0.000       0.000       0.000      41.856       0.000

    7    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.007      -0.000      -0.000       0.000     118.781       0.000       0.000      -0.000

    8    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000      28.845       0.000     147.515      -0.000       0.000

    9    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      28.845      -0.000       0.000      -0.000    -147.515      -0.000

   10    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000     118.693       0.000       0.000      -0.000      -0.000      -0.000       5.645

   11    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       4.198      -0.000      -0.000      -0.000      -0.000       0.000    -159.604

   12    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000       0.000      -0.000       0.000      -0.000       0.033

    1    1  |1 1>+              0.000      -0.000       0.000       0.000      -0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000      -5.253       0.000      -0.341       0.000      -0.000

    2    1  |1 1>+              0.000      -0.000      -0.000      -0.000      -0.000       0.000      -0.000      -0.000
                             -172.101      -0.000       0.000      -0.000      -4.184      -0.000      -0.000      -0.000

    3    1  |1 1>+             -0.000       0.000      -0.000      -0.000       0.000      -0.000      -0.000       0.000
                               -0.000      -4.191       0.000       0.000      -0.000      -0.000      -0.000      -3.196

    4    1  |1 1>+              0.000      -0.000      -0.000       0.000       0.000      -0.000       0.000       0.000
                               -0.000      -0.000       4.722      -0.000      -0.000       0.000       2.299       0.000

    5    1  |1 1>+              0.000      -0.000      -0.000       0.000      -0.000       0.000       0.000      -0.000
                                0.000       0.000       0.852       0.000      -0.000      -0.000      -4.455       0.000

    6    1  |1 1>+             -0.000       0.000       0.000      -0.000      -0.000      -0.000      -0.000      -0.000
                               -0.000       0.000      -0.000      81.782       0.000    -162.666       0.000      -0.000

    7    1  |1 1>+             -0.000       0.000      -0.000      -0.000       0.000      -0.000       0.000      -0.000
                               -0.852       0.000       0.000       0.000    -137.044      -0.000       0.000      -0.000

    8    1  |1 1>+              0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                               -0.000     -81.782      -0.000       0.000       0.000       0.000       0.000     -42.829

    9    1  |1 1>+             -0.000      -0.000       0.000       0.000      -0.000      -0.000       0.000       0.000
                                0.000      -0.000     137.044      -0.000       0.000      -0.000    -119.843       0.000

   10    1  |1 1>+              0.000      -0.000      -0.000       0.000      -0.000      -0.000       0.000       0.000
                                0.000     162.666       0.000      -0.000       0.000       0.000      -0.000    -218.850

   11    1  |1 1>+              0.000      -0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                                4.455      -0.000      -0.000      -0.000     119.843       0.000       0.000       0.000

   12    1  |1 1>+             -0.000      -0.000      -0.000       0.000       0.000       0.000      -0.000       0.000
                               -0.000       0.000       0.000      42.829      -0.000     218.850      -0.000       0.000

   13    1  |1 1>+              0.000       0.000       0.000      -0.000      -0.000       0.000      -0.000      -0.000
                               -0.000       0.033       0.000      -0.000      -0.000      -0.000       0.000      -0.040

   14    1  |1 1>+             -0.000       0.000       0.000       0.000       0.000      -0.000       0.000      -0.000
                               -3.894      -0.000      -0.000      -0.000       0.013      -0.000       0.000      -0.000

   15    1  |1 1>+             -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000
                                0.000      -0.000      -0.000      -0.007       0.000      -0.045      -0.000       0.000

   16    1  |1 1>+             -0.000       0.000      -0.000       0.000       0.000       0.000      -0.000      -0.000
                                0.000       0.000       0.001      -0.000      -0.000       0.000       0.004      -0.000

    1    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 0>            9408.458       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 0>               0.000   21433.687       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 0>               0.000       0.000   21433.793       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 0>               0.000       0.000       0.000   21433.793       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 0>               0.000       0.000       0.000       0.000   21433.929       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

   10    1  |1 0>               0.000       0.000       0.000       0.000       0.000   21434.116       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000

   11    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000   21434.116       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000

   12    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000   21434.139
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000

   13    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

   14    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

   15    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

   16    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

    1    1  |1 1>-              0.000      -0.000      -5.253       0.000      -0.000       0.000       0.341      -0.000
                                0.000      -0.000      -0.000       0.000       0.000      -0.000       0.000      -0.000

    2    1  |1 1>-             -0.000       4.191      -0.000      -0.000      -0.000      -0.000      -0.000      -3.196
                               -0.000      -0.000       0.000      -0.000      -0.000       0.000       0.000       0.000

    3    1  |1 1>-            172.141       0.000      -0.000      -0.000      -4.184      -0.000       0.000      -0.000
                                0.000      -0.000       0.000      -0.000       0.000       0.000      -0.000      -0.000

    4    1  |1 1>-              0.000      -0.000      -0.000      -4.722      -0.000       2.301      -0.000       0.000
                               -0.000       0.000      -0.000      -0.000       0.000       0.000       0.000      -0.000

    5    1  |1 1>-              0.000       0.000      -0.000       0.854       0.000       4.454      -0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000      -0.000      -0.000       0.000

    6    1  |1 1>-             -0.000       0.000      81.782       0.000      -0.000       0.000     162.666       0.000
                                0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>-              0.000     -81.782       0.000       0.000       0.000       0.000       0.000      42.829
                                0.000      -0.000       0.000       0.000      -0.000      -0.000       0.000       0.000

    8    1  |1 1>-             -0.854      -0.000      -0.000       0.000     137.044       0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000      -0.000      -0.000       0.000

    9    1  |1 1>-             -0.000       0.000      -0.000    -137.044       0.000    -119.843       0.000       0.000
                                0.000       0.000      -0.000       0.000      -0.000      -0.000       0.000       0.000

   10    1  |1 1>-             -4.454      -0.000      -0.000      -0.000     119.843       0.000      -0.000      -0.000
                               -0.000       0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000

   11    1  |1 1>-              0.000    -162.666      -0.000      -0.000      -0.000       0.000       0.000    -218.850
                               -0.000       0.000       0.000      -0.000       0.000       0.000      -0.000       0.000

   12    1  |1 1>-              0.000      -0.000     -42.829       0.000      -0.000       0.000     218.850       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   13    1  |1 1>-              3.891       0.000       0.000       0.000       0.013       0.000      -0.000       0.000
                                0.000      -0.000      -0.000       0.000       0.000       0.000      -0.000      -0.000

   14    1  |1 1>-              0.000      -0.032       0.000       0.000       0.000       0.000      -0.000      -0.040
                               -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000

   15    1  |1 1>-             -0.000       0.000       0.007      -0.000       0.000      -0.000      -0.045      -0.000
                                0.000       0.000       0.000      -0.000       0.000       0.000       0.000       0.000

   16    1  |1 1>-             -0.000      -0.000      -0.000       0.001       0.000      -0.004      -0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000      -0.000       0.000      -0.000

  State Sym Spin    / Nr.       41          42          43          44          45          46          47          48

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      91.961       0.000      -0.000      -0.003      -0.000       0.000

    2    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000     -40.451      -0.000       0.000     167.676       0.000       0.000

    3    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -2.126       0.000       0.000     108.953       0.000       0.000

    4    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000      -0.000       0.000    -100.031      -0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -35.182      -0.000      -0.000      -0.000       0.000       0.000       0.000    -100.046

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      35.182      -0.000      -0.000     100.025      -0.000      -0.000      -0.000

    7    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000       0.000       0.000      -0.000      18.141      -0.000

    8    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -244.940       0.000       0.000       0.000      -0.000       0.000       0.000     -18.159

    9    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000     244.940       0.000      -0.000      18.150       0.000      -0.000      -0.000

   10    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000     -10.002      -0.000      -0.000     -16.952      -0.000       0.000

   11    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000     282.810      -0.000      -0.000     -31.978      -0.000      -0.000

   12    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000     218.208      -0.000       0.000      -0.004      -0.000      -0.000

    1    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                6.686      -0.000      -0.000       0.000      -0.000      -0.000      -0.000     198.744

    2    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.002       0.000      -0.000      99.390      -0.000

    3    1  |1 1>+             -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       6.684       0.000       0.000     -99.390       0.000      -0.000

    4    1  |1 1>+             -0.000       0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000      -6.675      -0.000      -0.000    -198.744       0.000       0.000      -0.000

    5    1  |1 1>+              0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000       3.894      -0.000      -0.000       0.041       0.000       0.000       0.000

    6    1  |1 1>+              0.000       0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                               -0.033       0.000       0.000      -0.000      -0.000       0.000      -0.000       4.106

    7    1  |1 1>+              0.000       0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000      -0.001       0.000      -0.000      -1.043       0.000

    8    1  |1 1>+             -0.000       0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.007       0.000       0.000      -1.043       0.000      -0.000

    9    1  |1 1>+             -0.000       0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.013      -0.000       0.000       4.107       0.000       0.000      -0.000

   10    1  |1 1>+              0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.045      -0.000      -0.000      -5.154      -0.000       0.000

   11    1  |1 1>+             -0.000       0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000      -0.004       0.000      -0.000       5.154      -0.000

   12    1  |1 1>+             -0.000      -0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                                0.040       0.000      -0.000       0.000      -0.000      -0.000       0.000      -0.001

   13    1  |1 1>+             -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000    -191.468      -0.000       0.000      -6.673       0.000      -0.000

   14    1  |1 1>+             -0.000       0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000      17.257       0.000      -0.000       6.673       0.000

   15    1  |1 1>+              0.000       0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                              191.468       0.000       0.000       0.000       0.000       0.000      -0.000      -0.002

   16    1  |1 1>+              0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000     -17.257      -0.000       0.000       0.000      -0.000      -0.000       0.000

    1    1  |1 0>               0.000       0.000       0.000       0.000       0.000     -99.391      -0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000      -0.000      -0.000

    2    1  |1 0>               0.000       0.000       0.000       0.000      99.391       0.000      -0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000

    3    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000      99.343
                                0.000       0.000       0.000       0.000      -0.000       0.000      -0.000       0.000

    4    1  |1 0>               0.000       0.000       0.000       0.000      -0.000       0.000     -99.343       0.000
                                0.000       0.000       0.000       0.000      -0.000      -0.000       0.000      -0.000

    5    1  |1 0>               0.000       0.000       0.000       0.000       0.000      -0.000     172.141       0.000
                                0.000       0.000       0.000       0.000      -0.000       0.000      -0.000       0.000

    6    1  |1 0>               0.000       0.000       0.000       0.000      -0.000       4.191       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000

    7    1  |1 0>               0.000       0.000       0.000       0.000      -5.253      -0.000      -0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000      -0.000      -0.000       0.000

    8    1  |1 0>               0.000       0.000       0.000       0.000       0.000      -0.000      -0.000      -4.722
                                0.000       0.000       0.000       0.000      -0.000       0.000       0.000       0.000

    9    1  |1 0>               0.000       0.000       0.000       0.000      -0.000      -0.000      -4.184      -0.000
                                0.000       0.000       0.000       0.000      -0.000       0.000      -0.000       0.000

   10    1  |1 0>               0.000       0.000       0.000       0.000       0.000      -0.000      -0.000       2.301
                                0.000       0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000

   11    1  |1 0>               0.000       0.000       0.000       0.000       0.341      -0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000      -0.000      -0.000       0.000      -0.000

   12    1  |1 0>               0.000       0.000       0.000       0.000      -0.000      -3.196      -0.000       0.000
                                0.000       0.000       0.000       0.000       0.000      -0.000       0.000       0.000

   13    1  |1 0>           24050.319       0.000       0.000       0.000      -0.000       0.000      -0.000      -6.677
                                0.000       0.000       0.000       0.000      -0.000      -0.000       0.000       0.000

   14    1  |1 0>               0.000   24050.319       0.000       0.000      -6.686       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000      -0.000      -0.000       0.000

   15    1  |1 0>               0.000       0.000   24050.361       0.000      -0.000       6.684       0.000      -0.000
                               -0.000      -0.000       0.000       0.000       0.000      -0.000       0.000       0.000

   16    1  |1 0>               0.000       0.000       0.000   26331.965      -0.000      -0.000       0.002      -0.000
                               -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 1>-             -0.000      -6.686      -0.000      -0.000    9408.370       0.000       0.000       0.000
                                0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>-              0.000       0.000       6.684      -0.000       0.000    9408.384       0.000       0.000
                                0.000       0.000       0.000      -0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>-             -0.000       0.000       0.000       0.002       0.000       0.000    9408.384       0.000
                               -0.000       0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>-             -6.677       0.000      -0.000      -0.000       0.000       0.000       0.000    9408.466
                               -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>-             -3.891      -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>-             -0.000       0.032      -0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>-             -0.000      -0.000      -0.007       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>-             -0.000      -0.000       0.000      -0.001       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>-             -0.013      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   10    1  |1 1>-             -0.000      -0.000       0.000       0.004       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000       0.000       0.000       0.000       0.000

   11    1  |1 1>-              0.000       0.000       0.045       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   12    1  |1 1>-             -0.000       0.040       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000      -0.000       0.000       0.000       0.000       0.000

   13    1  |1 1>-              0.000       0.000       0.000     -17.257       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   14    1  |1 1>-             -0.000       0.000    -191.468      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   15    1  |1 1>-             -0.000     191.468       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   16    1  |1 1>-             17.257       0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

  State Sym Spin    / Nr.       49          50          51          52          53          54          55          56

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.007       0.000       0.000       0.000      -0.024      -0.000

    2    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       5.073       0.000       0.000       0.000     -37.283       0.000

    3    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      38.853       0.000      -0.000      -0.000      16.524       0.000

    4    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000     -42.569       0.000      -2.537       0.000      -0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -173.208      -0.000       0.000       0.000     -33.718      -0.000      -0.000      -0.000

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000     -33.723       0.000       0.000      -0.000       0.000      -0.000     -26.119

    7    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000    -150.010      -0.000      -8.903       0.000       0.000

    8    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -31.352      -0.000      -0.000      -0.000     118.790       0.000      -0.000      -0.000

    9    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000     118.792      -0.000       0.000      -0.000      -0.000      -0.000      92.061

   10    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000     134.702      -0.000       0.000      -0.000      69.396       0.000

   11    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      29.813       0.000       0.000      -0.000    -125.599      -0.000

   12    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.010       0.000       0.000      -0.000      -0.034      -0.000

    1    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.041       0.000      -0.000      -0.000      -4.107       0.000      -0.000       0.000

    2    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       1.043      -0.000       5.154       0.000       0.000

    3    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       1.043      -0.000      -0.000       0.000      -5.154      -0.000

    4    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -4.106      -0.000       0.000       0.000      -0.000       0.000       0.001

    5    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.001       0.000       0.000      -0.000      -0.000       0.000       5.608

    6    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.001      -0.000       0.000      -0.000    -182.109      -0.000      -0.000       0.000

    7    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000     259.685      -0.000     -68.615      -0.000      -0.000

    8    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000    -259.685      -0.000      -0.000       0.000     -68.615      -0.000

    9    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000     182.109       0.000       0.000      -0.000      -0.000      -0.000       0.000

   10    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      68.615      -0.000       0.000       0.000     -77.647      -0.000

   11    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000      68.615       0.000      77.647      -0.000      -0.000

   12    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -5.608      -0.000       0.000       0.000      -0.000       0.000       0.000       0.000

   13    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.028       0.000      -0.000       0.000      -0.003       0.000

   14    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000       0.028       0.000       0.003      -0.000      -0.000

   15    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -7.645       0.000       0.000       0.000      -0.000       0.000       0.000      -0.000

   16    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000       0.000       0.000      -0.000      -0.000       0.004

    1    1  |1 0>              -0.000       0.000       5.253      -0.000       0.000      -0.000      -0.341       0.000
                               -0.000       0.000       0.000      -0.000      -0.000       0.000      -0.000       0.000

    2    1  |1 0>               0.000      -4.191       0.000       0.000       0.000       0.000       0.000       3.196
                                0.000       0.000      -0.000       0.000       0.000      -0.000      -0.000      -0.000

    3    1  |1 0>            -172.141      -0.000       0.000       0.000       4.184       0.000      -0.000       0.000
                               -0.000       0.000      -0.000       0.000      -0.000      -0.000       0.000       0.000

    4    1  |1 0>              -0.000       0.000       0.000       4.722       0.000      -2.301       0.000      -0.000
                                0.000      -0.000       0.000       0.000       0.000      -0.000      -0.000       0.000

    5    1  |1 0>               0.000      -0.000       0.000      -0.854      -0.000      -4.454       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000      -0.000

    6    1  |1 0>               0.000       0.000     -81.782      -0.000       0.000      -0.000    -162.666      -0.000
                               -0.000       0.000       0.000      -0.000      -0.000       0.000       0.000      -0.000

    7    1  |1 0>              -0.000      81.782       0.000      -0.000      -0.000      -0.000      -0.000     -42.829
                               -0.000       0.000      -0.000      -0.000       0.000       0.000      -0.000       0.000

    8    1  |1 0>               0.854       0.000       0.000       0.000    -137.044      -0.000      -0.000       0.000
                               -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000      -0.000

    9    1  |1 0>               0.000      -0.000       0.000     137.044       0.000     119.843      -0.000      -0.000
                               -0.000      -0.000       0.000       0.000       0.000       0.000      -0.000      -0.000

   10    1  |1 0>               4.454       0.000       0.000       0.000    -119.843       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000      -0.000       0.000

   11    1  |1 0>              -0.000     162.666       0.000       0.000       0.000      -0.000       0.000     218.850
                                0.000       0.000      -0.000       0.000      -0.000      -0.000       0.000      -0.000

   12    1  |1 0>              -0.000       0.000      42.829      -0.000       0.000      -0.000    -218.850       0.000
                               -0.000      -0.000       0.000      -0.000      -0.000       0.000      -0.000      -0.000

   13    1  |1 0>              -3.891      -0.000      -0.000      -0.000      -0.013      -0.000       0.000      -0.000
                               -0.000       0.000       0.000      -0.000      -0.000      -0.000       0.000       0.000

   14    1  |1 0>              -0.000       0.032      -0.000      -0.000      -0.000      -0.000       0.000       0.040
                                0.000       0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

   15    1  |1 0>               0.000      -0.000      -0.007       0.000      -0.000       0.000       0.045       0.000
                               -0.000      -0.000      -0.000       0.000      -0.000      -0.000      -0.000      -0.000

   16    1  |1 0>               0.000       0.000       0.000      -0.001      -0.000       0.004       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000       0.000      -0.000       0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>-           9408.458       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>-              0.000   21433.687       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>-              0.000       0.000   21433.793       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>-              0.000       0.000       0.000   21433.793       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>-              0.000       0.000       0.000       0.000   21433.929       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   10    1  |1 1>-              0.000       0.000       0.000       0.000       0.000   21434.116       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   11    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000   21434.116       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   12    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000   21434.139
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   13    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   14    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   15    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   16    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

  State Sym Spin    / Nr.       57          58          59          60

    1    1  |0 0>               0.000       0.000       0.000       0.000
                               -0.000      91.960       0.000      -0.000

    2    1  |0 0>               0.000       0.000       0.000       0.000
                               -0.000      22.071      -0.000      -0.000

    3    1  |0 0>               0.000       0.000       0.000       0.000
                                0.000     -34.004      -0.000      -0.000

    4    1  |0 0>               0.000       0.000       0.000       0.000
                               35.179       0.000       0.000       0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000      -0.001

    6    1  |0 0>               0.000       0.000       0.000       0.000
                               -0.000      -0.000      35.184       0.000

    7    1  |0 0>               0.000       0.000       0.000       0.000
                             -244.948       0.000      -0.000      -0.000

    8    1  |0 0>               0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.001

    9    1  |0 0>               0.000       0.000       0.000       0.000
                               -0.000       0.000     244.944      -0.000

   10    1  |0 0>               0.000       0.000       0.000       0.000
                               -0.000     249.826       0.000       0.000

   11    1  |0 0>               0.000       0.000       0.000       0.000
                                0.000    -132.745       0.000      -0.000

   12    1  |0 0>               0.000       0.000       0.000       0.000
                                0.000     218.193      -0.000       0.000

    1    1  |1 1>+              0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000

    2    1  |1 1>+              0.000       0.000       0.000       0.000
                                6.673       0.000      -0.000       0.000

    3    1  |1 1>+              0.000       0.000       0.000       0.000
                               -0.000      -6.673       0.000       0.000

    4    1  |1 1>+              0.000       0.000       0.000       0.000
                                0.000      -0.000       0.002      -0.000

    5    1  |1 1>+              0.000       0.000       0.000       0.000
                               -0.000      -0.000       7.645      -0.000

    6    1  |1 1>+              0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000       0.000

    7    1  |1 1>+              0.000       0.000       0.000       0.000
                               -0.028       0.000      -0.000      -0.000

    8    1  |1 1>+              0.000       0.000       0.000       0.000
                               -0.000      -0.028      -0.000      -0.000

    9    1  |1 1>+              0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000      -0.000

   10    1  |1 1>+              0.000       0.000       0.000       0.000
                               -0.000      -0.003      -0.000       0.000

   11    1  |1 1>+              0.000       0.000       0.000       0.000
                                0.003       0.000      -0.000       0.000

   12    1  |1 1>+              0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000      -0.004

   13    1  |1 1>+              0.000       0.000       0.000       0.000
                               -0.000    -191.462      -0.000       0.000

   14    1  |1 1>+              0.000       0.000       0.000       0.000
                              191.462       0.000      -0.000       0.000

   15    1  |1 1>+              0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000     -17.264

   16    1  |1 1>+              0.000       0.000       0.000       0.000
                               -0.000      -0.000      17.264       0.000

    1    1  |1 0>               0.000       6.686       0.000       0.000
                               -0.000       0.000       0.000       0.000

    2    1  |1 0>              -0.000      -0.000      -6.684       0.000
                               -0.000      -0.000      -0.000       0.000

    3    1  |1 0>               0.000      -0.000      -0.000      -0.002
                                0.000      -0.000       0.000       0.000

    4    1  |1 0>               6.677      -0.000       0.000       0.000
                                0.000       0.000       0.000       0.000

    5    1  |1 0>               3.891       0.000      -0.000      -0.000
                               -0.000       0.000      -0.000      -0.000

    6    1  |1 0>               0.000      -0.032       0.000      -0.000
                                0.000       0.000      -0.000      -0.000

    7    1  |1 0>               0.000       0.000       0.007      -0.000
                                0.000      -0.000      -0.000      -0.000

    8    1  |1 0>               0.000       0.000      -0.000       0.001
                               -0.000      -0.000       0.000      -0.000

    9    1  |1 0>               0.013       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000

   10    1  |1 0>               0.000       0.000      -0.000      -0.004
                               -0.000      -0.000      -0.000       0.000

   11    1  |1 0>              -0.000      -0.000      -0.045      -0.000
                                0.000      -0.000      -0.000      -0.000

   12    1  |1 0>               0.000      -0.040      -0.000      -0.000
                                0.000      -0.000      -0.000       0.000

   13    1  |1 0>               0.000      -0.000      -0.000      17.257
                               -0.000       0.000       0.000      -0.000

   14    1  |1 0>               0.000       0.000     191.468       0.000
                                0.000      -0.000      -0.000       0.000

   15    1  |1 0>               0.000    -191.468       0.000      -0.000
                                0.000      -0.000      -0.000      -0.000

   16    1  |1 0>             -17.257      -0.000       0.000       0.000
                               -0.000       0.000      -0.000      -0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000

    3    1  |1 1>-              0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000

    4    1  |1 1>-              0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000

    5    1  |1 1>-              0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000

    6    1  |1 1>-              0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000

    7    1  |1 1>-              0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000

    8    1  |1 1>-              0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000

    9    1  |1 1>-              0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000

   10    1  |1 1>-              0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000

   11    1  |1 1>-              0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000

   12    1  |1 1>-              0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000

   13    1  |1 1>-          24050.319       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000

   14    1  |1 1>-              0.000   24050.319       0.000       0.000
                                0.000       0.000       0.000       0.000

   15    1  |1 1>-              0.000       0.000   24050.361       0.000
                                0.000       0.000       0.000       0.000

   16    1  |1 1>-              0.000       0.000       0.000   26331.965
                                0.000       0.000       0.000       0.000

 => Eigenvalues of spin-orbit matrix in ascending order  (E0 = Emin,ges)
    (symmetry =  1)

    Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
             (au)           (au)        (cm-1)           (au)       (cm-1)        (eV)
    1   -25.39268019    -0.00000489       -1.07      0.00000000        0.00      0.0000
    2   -25.35116584     0.04150946     9110.27      0.04151435     9111.35      1.1297
    3   -25.35116584     0.04150946     9110.27      0.04151435     9111.35      1.1297
    4   -25.35116583     0.04150947     9110.28      0.04151436     9111.35      1.1297
    5   -25.35038239     0.04229291     9282.22      0.04229780     9283.29      1.1510
    6   -25.35038231     0.04229299     9282.24      0.04229788     9283.31      1.1510
    7   -25.35038210     0.04229320     9282.28      0.04229809     9283.36      1.1510
    8   -25.35038208     0.04229322     9282.29      0.04229811     9283.36      1.1510
    9   -25.35038208     0.04229322     9282.29      0.04229811     9283.36      1.1510
   10   -25.34890189     0.04377341     9607.15      0.04377830     9608.23      1.1913
   11   -25.34890189     0.04377341     9607.15      0.04377830     9608.23      1.1913
   12   -25.34890189     0.04377342     9607.15      0.04377830     9608.23      1.1913
   13   -25.34890184     0.04377346     9607.16      0.04377835     9608.24      1.1913
   14   -25.34890183     0.04377347     9607.17      0.04377836     9608.24      1.1913
   15   -25.34890183     0.04377347     9607.17      0.04377836     9608.24      1.1913
   16   -25.34890182     0.04377348     9607.17      0.04377837     9608.24      1.1913
   17   -25.33998969     0.05268561    11563.16      0.05269050    11564.23      1.4338
   18   -25.33998962     0.05268569    11563.17      0.05269057    11564.24      1.4338
   19   -25.33998947     0.05268583    11563.20      0.05269072    11564.28      1.4338
   20   -25.33998946     0.05268584    11563.20      0.05269072    11564.28      1.4338
   21   -25.33998945     0.05268585    11563.21      0.05269074    11564.28      1.4338
   22   -25.29678571     0.09588959    21045.33      0.09589447    21046.40      2.6094
   23   -25.29678549     0.09588982    21045.38      0.09589470    21046.45      2.6094
   24   -25.29678500     0.09589030    21045.49      0.09589519    21046.56      2.6094
   25   -25.29678500     0.09589030    21045.49      0.09589519    21046.56      2.6094
   26   -25.29678483     0.09589047    21045.53      0.09589535    21046.60      2.6094
   27   -25.29543049     0.09724482    21342.77      0.09724970    21343.84      2.6463
   28   -25.29543049     0.09724482    21342.77      0.09724970    21343.84      2.6463
   29   -25.29543021     0.09724510    21342.83      0.09724998    21343.90      2.6463
   30   -25.29542959     0.09724572    21342.97      0.09725060    21344.04      2.6463
   31   -25.29542959     0.09724572    21342.97      0.09725060    21344.04      2.6463
   32   -25.29542942     0.09724589    21343.01      0.09725077    21344.08      2.6463
   33   -25.29542926     0.09724605    21343.04      0.09725093    21344.11      2.6463
   34   -25.29377134     0.09890396    21706.91      0.09890885    21707.98      2.6914
   35   -25.29377134     0.09890397    21706.91      0.09890885    21707.98      2.6914
   36   -25.29377123     0.09890407    21706.93      0.09890895    21708.01      2.6914
   37   -25.29377123     0.09890407    21706.93      0.09890895    21708.01      2.6914
   38   -25.29377069     0.09890461    21707.05      0.09890950    21708.13      2.6915
   39   -25.29377047     0.09890484    21707.10      0.09890972    21708.17      2.6915
   40   -25.29377006     0.09890524    21707.19      0.09891013    21708.26      2.6915
   41   -25.29377006     0.09890524    21707.19      0.09891013    21708.26      2.6915
   42   -25.29376988     0.09890543    21707.23      0.09891031    21708.30      2.6915
   43   -25.28623765     0.10643765    23360.37      0.10644254    23361.44      2.8964
   44   -25.28623759     0.10643771    23360.38      0.10644260    23361.45      2.8965
   45   -25.28623758     0.10643772    23360.38      0.10644261    23361.45      2.8965
   46   -25.28623758     0.10643772    23360.38      0.10644261    23361.45      2.8965
   47   -25.28623756     0.10643774    23360.38      0.10644262    23361.46      2.8965
   48   -25.28508549     0.10758982    23613.24      0.10759470    23614.31      2.9278
   49   -25.28396742     0.10870788    23858.62      0.10871277    23859.69      2.9582
   50   -25.28396736     0.10870795    23858.64      0.10871283    23859.71      2.9582
   51   -25.28396736     0.10870795    23858.64      0.10871283    23859.71      2.9582
   52   -25.28160554     0.11106977    24377.00      0.11107465    24378.07      3.0225
   53   -25.28160544     0.11106986    24377.02      0.11107474    24378.09      3.0225
   54   -25.28160544     0.11106986    24377.02      0.11107474    24378.09      3.0225
   55   -25.28160540     0.11106991    24377.03      0.11107479    24378.10      3.0225
   56   -25.28160481     0.11107049    24377.16      0.11107538    24378.23      3.0225
   57   -25.27305280     0.11962250    26254.10      0.11962739    26255.18      3.2552
   58   -25.27269695     0.11997836    26332.21      0.11998324    26333.28      3.2649
   59   -25.27269695     0.11997836    26332.21      0.11998324    26333.28      3.2649
   60   -25.27269695     0.11997836    26332.21      0.11998324    26333.28      3.2649

 => Eigenvectors of spin-orbit matrix columnwise and corresponding to the
    eigenvalues in ascending order (symmetry =  1)

  Basis states          Eigenvectors (columnwise)

 State Sym Spin     / Nr.      1           2           3           4           5           6           7           8

   1    1  |0 0>           0.99997734  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000042 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   2    1  |0 0>          -0.00000001 -0.00000000 -0.00000000 -0.00000000 -0.00561375 -0.10784182  0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   3    1  |0 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.10785692 -0.00561290  0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   4    1  |0 0>           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.10803800 -0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00008414  0.00000000

   5    1  |0 0>           0.00000000 -0.00000000  0.00000187 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.10803345
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   6    1  |0 0>          -0.00000000 -0.00000188 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000005
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   7    1  |0 0>           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00313587  0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000244 -0.00000000

   8    1  |0 0>           0.00000000  0.00000000 -0.00000214  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00314061
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   9    1  |0 0>           0.00000000  0.00000214  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  10    1  |0 0>          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00312907 -0.00011244 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  11    1  |0 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00011225  0.00313491 -0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  12    1  |0 0>           0.00009709 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000035 -0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   1    1  |1 1>+         -0.00000000 -0.00000006  0.54776966 -0.00000001  0.00000000  0.00000000 -0.00000000  0.40592496
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   2    1  |1 1>+         -0.00000000 -0.00000000 -0.00000001 -0.54776202  0.00000000 -0.00000000 -0.40591844 -0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000050  0.00000000  0.00000000 -0.00031612  0.00000000

   3    1  |1 1>+          0.00000030  0.00000000 -0.00000000 -0.00000000  0.40549955  0.70317140  0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   4    1  |1 1>+          0.00000000 -0.54771428 -0.00000006  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000020
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   5    1  |1 1>+         -0.00000000 -0.31608277 -0.00000004  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000034
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   6    1  |1 1>+         -0.00000000  0.00000000 -0.00000381  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000826
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   7    1  |1 1>+          0.00000000  0.00000000  0.00000000  0.00000253  0.00000000  0.00000000 -0.00001082 -0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000001  0.00000000

   8    1  |1 1>+         -0.00000031  0.00000000 -0.00000000 -0.00000000  0.00000881  0.00000364  0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   9    1  |1 1>+         -0.00000000 -0.00000340 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  10    1  |1 1>+          0.00000113 -0.00000000  0.00000000  0.00000000 -0.00000226  0.00000828 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  11    1  |1 1>+         -0.00000000 -0.00000000 -0.00000000 -0.00000054 -0.00000000  0.00000000 -0.00000162 -0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  12    1  |1 1>+          0.00000000 -0.00000000  0.00000177 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000948
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  13    1  |1 1>+         -0.00388615  0.00000000 -0.00000000 -0.00000000 -0.00084889  0.00048904 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  14    1  |1 1>+         -0.00000000 -0.00000000 -0.00000000 -0.00041474 -0.00000000  0.00000000  0.00084869  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000066 -0.00000000

  15    1  |1 1>+          0.00000000 -0.00000000  0.00041212 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00084604
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  16    1  |1 1>+         -0.00000000 -0.00000088 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   1    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.81172126  0.00040757  0.00000000 -0.00000000

   2    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.54776715 -0.00000006  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000020

   3    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000006 -0.54776709  0.00000001  0.00000000  0.00000000 -0.00000000  0.40590081

   4    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00063209  0.00000000
                           0.00000000  0.00000000  0.00000000  0.00012914 -0.00000000  0.00000000  0.81165036  0.00000001

   5    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000058  0.00000000 -0.00000000  0.00000013 -0.00000000
                           0.00000000  0.00000000  0.00000001  0.63238696  0.00000000 -0.00000000 -0.00016578 -0.00000000

   6    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00001118 -0.00000001  0.00000000  0.00000000

   7    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000175  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   8    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000175  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000176

   9    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000001  0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00001095  0.00000000

  10    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000296  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00001222

  11    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000296 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  12    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000135 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000792  0.00000000  0.00000000

  13    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00041279 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00085099

  14    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00041279  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  15    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00388619  0.00000000  0.00000000 -0.00000000 -0.00000049  0.00097990 -0.00000000 -0.00000000

  16    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000072  0.00000000 -0.00000000 -0.00000000  0.00000000

   1    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.54776962  0.00000006 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000020

   2    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000029 -0.00000000  0.00000000  0.00000000  0.40620541 -0.70276395  0.00000000  0.00000000

   3    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000050  0.00000000  0.00000000 -0.00031612  0.00000000
                          -0.00000000 -0.00000000 -0.00000001 -0.54776194 -0.00000000  0.00000000  0.40591846  0.00000000

   4    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000006  0.54758519 -0.00000001  0.00000000  0.00000000 -0.00000000  0.40596121

   5    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000004 -0.31630640  0.00000001  0.00000000  0.00000000 -0.00000000  0.70283884

   6    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000381 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   7    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000032  0.00000000  0.00000000 -0.00000000 -0.00000881  0.00000363 -0.00000000 -0.00000000

   8    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000001 -0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000253  0.00000000 -0.00000000 -0.00001082 -0.00000000

   9    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000340 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000814

  10    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000054  0.00000000  0.00000000  0.00000162  0.00000000

  11    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000113  0.00000000 -0.00000000 -0.00000000 -0.00000225 -0.00000828 -0.00000000  0.00000000

  12    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000177 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  13    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000066 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00041474  0.00000000 -0.00000000 -0.00084869 -0.00000000

  14    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00388615  0.00000000 -0.00000000 -0.00000000 -0.00084840 -0.00048989 -0.00000000  0.00000000

  15    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00041212 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  16    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000088  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000004

 State Sym Spin     / Nr.      9          10          11          12          13          14          15          16

   1    1  |0 0>           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   2    1  |0 0>           0.00000000 -0.00000000 -0.00000000 -0.00000064 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   3    1  |0 0>           0.00000000  0.00000000  0.00000000  0.00001203  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   4    1  |0 0>           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000001 -0.00000000 -0.00000000  0.00000546
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   5    1  |0 0>           0.00000005  0.00000000  0.00000438 -0.00000000  0.00000000 -0.00000000 -0.00000048  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   6    1  |0 0>           0.10803324 -0.00000439  0.00000000  0.00000000 -0.00000000  0.00000047 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   7    1  |0 0>          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000002  0.00000000 -0.00000000  0.00000505
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   8    1  |0 0>           0.00000000 -0.00000000 -0.00000117  0.00000000 -0.00000000 -0.00000000 -0.00000300 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   9    1  |0 0>           0.00314061  0.00000117 -0.00000000 -0.00000000  0.00000000  0.00000300 -0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  10    1  |0 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000019  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  11    1  |0 0>          -0.00000000 -0.00000000  0.00000000 -0.00000001  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  12    1  |0 0>           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   1    1  |1 1>+         -0.00000020  0.00000037  0.71146274 -0.00000000 -0.00000000 -0.00000001 -0.16445775  0.00000000
                           0.00000000 -0.00000003  0.00000000 -0.00000000  0.00000000 -0.00000001  0.00000000  0.00000000

   2    1  |1 1>+          0.00000000 -0.00000000  0.00000000 -0.00000000  0.44896048 -0.00000000  0.00000000 -0.57591096
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000002  0.00000000  0.00000000  0.00000494

   3    1  |1 1>+         -0.00000000  0.00000001  0.00000000  0.57735350 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   4    1  |1 1>+         -0.40567420  0.54260883 -0.00000028 -0.00000001 -0.00000000 -0.48894511  0.00000003 -0.00000000
                           0.00000000  0.00000054 -0.00000002 -0.00000000 -0.00000000  0.00000003 -0.00000002  0.00000000

   5    1  |1 1>+          0.70300453 -0.29255029  0.00000015  0.00000001 -0.00000000 -0.56075687  0.00000003  0.00000000
                          -0.00000000 -0.00000029  0.00000001  0.00000000 -0.00000000  0.00000004 -0.00000002  0.00000000

   6    1  |1 1>+         -0.00000000 -0.00000000 -0.00006961 -0.00000000  0.00000000  0.00000000  0.00040227  0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   7    1  |1 1>+          0.00000000  0.00000000 -0.00000000  0.00000000 -0.00009658  0.00000000 -0.00000000  0.00018059
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   8    1  |1 1>+          0.00000000 -0.00000000 -0.00000000 -0.00030974  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   9    1  |1 1>+          0.00000814  0.00036939 -0.00000000 -0.00000000  0.00000000  0.00017316 -0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  10    1  |1 1>+         -0.00000000 -0.00000000 -0.00000000 -0.00027034  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  11    1  |1 1>+          0.00000000  0.00000000 -0.00000000  0.00000000  0.00048929 -0.00000000 -0.00000000  0.00036822
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  12    1  |1 1>+          0.00000000  0.00000000  0.00023134 -0.00000000  0.00000000  0.00000000  0.00044445  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  13    1  |1 1>+         -0.00000000  0.00000000  0.00000000  0.00000047 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  14    1  |1 1>+         -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000218  0.00000000  0.00000000 -0.00000009
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  15    1  |1 1>+          0.00000000 -0.00000000 -0.00000144  0.00000000 -0.00000000 -0.00000000 -0.00000283 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  16    1  |1 1>+          0.00000004  0.00000004 -0.00000000 -0.00000000  0.00000000  0.00000007 -0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   1    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000001 -0.00000000 -0.57734346  0.00000000 -0.00000000 -0.00000000  0.00000000

   2    1  |1 0>           0.00000000 -0.00000033  0.00000001  0.00000000 -0.00000000  0.00000005 -0.00000003  0.00000000
                           0.40590082  0.33760500 -0.00000018 -0.00000001  0.00000000  0.64751113 -0.00000004 -0.00000000

   3    1  |1 0>          -0.00000000  0.00000001 -0.00000000  0.00000000 -0.00000000 -0.00000003  0.00000002  0.00000000
                          -0.00000020  0.00000018  0.33714382 -0.00000000  0.00000001  0.00000004  0.64775143  0.00000001

   4    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000495
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00195619 -0.00000000  0.00000000 -0.57743479

   5    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000003 -0.00000000 -0.00000000  0.00000002
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.77464822 -0.00000001 -0.00000001  0.00252995

   6    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00041229  0.00000000 -0.00000000 -0.00000000  0.00000000

   7    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000176  0.00051544 -0.00000000 -0.00000000 -0.00000000 -0.00031125  0.00000000 -0.00000000

   8    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00051566  0.00000000  0.00000000  0.00000000  0.00031089  0.00000000

   9    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000128  0.00000000 -0.00000000  0.00041176

  10    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000  0.00019655 -0.00000000  0.00000000  0.00000000  0.00012199  0.00000000

  11    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00001222  0.00019664 -0.00000000 -0.00000000  0.00000000  0.00012185 -0.00000000 -0.00000000

  12    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  13    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000034  0.00000000 -0.00000000 -0.00000000 -0.00000156 -0.00000000

  14    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00085099 -0.00000034  0.00000000  0.00000000 -0.00000000 -0.00000156  0.00000000 -0.00000000

  15    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  16    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000010  0.00000000  0.00000000 -0.00000000

   1    1  |1 1>-          0.00000000 -0.00000070  0.00000003  0.00000000 -0.00000000 -0.00000001  0.00000001  0.00000000
                           0.40592501  0.71134545 -0.00000037 -0.00000001 -0.00000000 -0.16496437  0.00000001 -0.00000000

   2    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000001  0.00000000  0.57735341 -0.00000000  0.00000000  0.00000000 -0.00000000

   3    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000002  0.00000000  0.00000000  0.00000496
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.44536535 -0.00000000 -0.00000001  0.57869571

   4    1  |1 1>-         -0.00000000 -0.00000002  0.00000000 -0.00000000  0.00000000 -0.00000002  0.00000001  0.00000000
                          -0.00000020 -0.00000028 -0.54307615  0.00000000  0.00000000  0.00000003  0.48832945  0.00000000

   5    1  |1 1>-         -0.00000000 -0.00000001  0.00000000 -0.00000000  0.00000000  0.00000002 -0.00000002 -0.00000000
                          -0.00000034 -0.00000015 -0.29192911  0.00000000 -0.00000000 -0.00000003 -0.56116449 -0.00000001

   6    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000826 -0.00006932  0.00000000 -0.00000000  0.00000000  0.00040232 -0.00000000 -0.00000000

   7    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000  0.00030974 -0.00000000  0.00000000  0.00000000 -0.00000000

   8    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00009545 -0.00000000 -0.00000000  0.00018119

   9    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00036927  0.00000000 -0.00000000 -0.00000000 -0.00017342 -0.00000000

  10    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00049157 -0.00000000 -0.00000000 -0.00036517

  11    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00027034  0.00000000 -0.00000000 -0.00000000  0.00000000

  12    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000948 -0.00023165  0.00000000  0.00000000 -0.00000000 -0.00044428  0.00000000  0.00000000

  13    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000218  0.00000000  0.00000000  0.00000008

  14    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000047  0.00000000  0.00000000  0.00000000 -0.00000000

  15    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00084604  0.00000144 -0.00000000 -0.00000000  0.00000000  0.00000282 -0.00000000 -0.00000000

  16    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000004  0.00000000  0.00000000  0.00000000  0.00000007  0.00000000

 State Sym Spin     / Nr.     17          18          19          20          21          22          23          24

   1    1  |0 0>          -0.00000004 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   2    1  |0 0>           0.99364569 -0.03063541 -0.00000000  0.00000000 -0.00000000 -0.00037839  0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   3    1  |0 0>           0.03063553  0.99364415  0.00000000 -0.00000000 -0.00000000  0.00719952  0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   4    1  |0 0>           0.00000000 -0.00000000  0.99411254 -0.00000001  0.00000000 -0.00000000  0.00719789  0.00000000
                          -0.00000000  0.00000000 -0.00000035  0.00000000  0.00000000 -0.00000000  0.00000150  0.00000000

   5    1  |0 0>          -0.00000000  0.00000000  0.00000001  0.99411301 -0.00000000 -0.00000000 -0.00000000  0.00720099
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   6    1  |0 0>           0.00000000  0.00000000 -0.00000000  0.00000000  0.99411304 -0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   7    1  |0 0>           0.00000000 -0.00000000  0.00044151 -0.00000000  0.00000000  0.00000000 -0.10143274 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00002118 -0.00000000

   8    1  |0 0>           0.00000000 -0.00000000 -0.00000000 -0.00044218  0.00000000 -0.00000000 -0.00000000  0.10145023
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   9    1  |0 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00044217 -0.00000000  0.00000000 -0.00000005
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  10    1  |0 0>          -0.00002520  0.00044056  0.00000000 -0.00000000 -0.00000000 -0.10143160 -0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  11    1  |0 0>           0.00044184  0.00002518  0.00000000  0.00000000 -0.00000000 -0.00358668 -0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  12    1  |0 0>           0.00000005  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000001  0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   1    1  |1 1>+         -0.00000000  0.00000000  0.00000000  0.04410764 -0.00000000 -0.00000000 -0.00000000  0.00046290
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   2    1  |1 1>+         -0.00000000  0.00000000 -0.04410989  0.00000000 -0.00000000  0.00000000 -0.00046609 -0.00000000
                           0.00000000 -0.00000000  0.00000002 -0.00000000 -0.00000000  0.00000000 -0.00000010 -0.00000000

   3    1  |1 1>+          0.07729696 -0.04243261 -0.00000000  0.00000000 -0.00000000 -0.00046252 -0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   4    1  |1 1>+          0.00000000  0.00000000 -0.00000000  0.00000000  0.04408613 -0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   5    1  |1 1>+         -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.07639699  0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   6    1  |1 1>+         -0.00000000  0.00000000  0.00000000  0.00357054 -0.00000000  0.00000000  0.00000000 -0.48573784
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   7    1  |1 1>+         -0.00000000  0.00000000 -0.00450710  0.00000000 -0.00000000 -0.00000000  0.61296054  0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00012800  0.00000000

   8    1  |1 1>+          0.00084085 -0.00406235 -0.00000000  0.00000000 -0.00000000  0.55400845  0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   9    1  |1 1>+         -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00356999 -0.00000000  0.00000000 -0.00000025
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000001

  10    1  |1 1>+          0.00380675  0.00203663  0.00000000  0.00000000 -0.00000000 -0.26461545 -0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  11    1  |1 1>+         -0.00000000 -0.00000000  0.00026828 -0.00000000  0.00000000  0.00000000 -0.03640237 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000760 -0.00000000

  12    1  |1 1>+          0.00000000 -0.00000000 -0.00000000 -0.00276577  0.00000000 -0.00000000 -0.00000000  0.37570105
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  13    1  |1 1>+         -0.00148477 -0.00270792 -0.00000000  0.00000000  0.00000000 -0.00786443 -0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  14    1  |1 1>+         -0.00000000  0.00000000 -0.00268013  0.00000000 -0.00000000  0.00000000 -0.00784601 -0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000164 -0.00000000

  15    1  |1 1>+         -0.00000000  0.00000000  0.00000000  0.00268088 -0.00000000 -0.00000000 -0.00000000  0.00784230
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  16    1  |1 1>+          0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000004 -0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   1    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00191167 -0.08815684 -0.00000000  0.00000000  0.00000000 -0.00092487 -0.00000000 -0.00000000

   2    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.04410900  0.00000000 -0.00000000  0.00000000

   3    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000  0.04410908 -0.00000000 -0.00000000 -0.00000000  0.00046693

   4    1  |1 0>           0.00000000 -0.00000000  0.00000003 -0.00000000 -0.00000000  0.00000000 -0.00000019 -0.00000000
                           0.00000000 -0.00000000  0.08820907 -0.00000000  0.00000000 -0.00000000  0.00092295  0.00000000

   5    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00001802  0.00000000 -0.00000000 -0.00000000 -0.00000019 -0.00000000

   6    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00007738  0.00356818  0.00000000 -0.00000000 -0.00000000 -0.48541361 -0.00000000 -0.00000000

   7    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00086771 -0.00000000  0.00000000 -0.00000006

   8    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00086771  0.00000000 -0.00000000 -0.00000000  0.11787666

   9    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00010133  0.00000000
                           0.00000000 -0.00000000  0.00356625 -0.00000000  0.00000000  0.00000000 -0.48522533 -0.00000000

  10    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000001
                           0.00000000 -0.00000000 -0.00000000 -0.00443174  0.00000000 -0.00000000 -0.00000000  0.60232936

  11    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000001
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00443174  0.00000000 -0.00000000  0.00000031

  12    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00480423 -0.00010417  0.00000000 -0.00000000  0.00000000 -0.00000407  0.00000000  0.00000000

  13    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00268014  0.00000000  0.00000000  0.00000000 -0.00783894

  14    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00268014 -0.00000000  0.00000000 -0.00000000

  15    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00308491 -0.00006690  0.00000000 -0.00000000  0.00000000  0.00000007 -0.00000000 -0.00000000

  16    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   1    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.04410755  0.00000000 -0.00000000  0.00000000

   2    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.07538486 -0.04574344 -0.00000000 -0.00000000  0.00000000 -0.00046251 -0.00000000 -0.00000000

   3    1  |1 1>-          0.00000000 -0.00000000  0.00000002 -0.00000000 -0.00000000  0.00000000 -0.00000010 -0.00000000
                           0.00000000 -0.00000000  0.04410988 -0.00000000  0.00000000 -0.00000000  0.00046609  0.00000000

   4    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000  0.04411741 -0.00000000 -0.00000000 -0.00000000  0.00046346

   5    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000  0.07637912 -0.00000000 -0.00000000 -0.00000000  0.00080159

   6    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000001
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00357054 -0.00000000  0.00000000 -0.00000025

   7    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00066396  0.00409498  0.00000000 -0.00000000 -0.00000000 -0.55400720 -0.00000000 -0.00000000

   8    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00012800 -0.00000000
                          -0.00000000  0.00000000 -0.00450710  0.00000000 -0.00000000 -0.00000000  0.61296053  0.00000000

   9    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00356999  0.00000000 -0.00000000 -0.00000000  0.48553442

  10    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000760 -0.00000000
                           0.00000000  0.00000000 -0.00026828  0.00000000 -0.00000000 -0.00000000  0.03640253  0.00000000

  11    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00389146  0.00186971  0.00000000 -0.00000000  0.00000000 -0.26462190 -0.00000000  0.00000000

  12    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000001
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00276577 -0.00000000  0.00000000 -0.00000019

  13    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000164 -0.00000000
                           0.00000000 -0.00000000  0.00268013 -0.00000000  0.00000000 -0.00000000  0.00784602  0.00000000

  14    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00160075 -0.00264101 -0.00000000  0.00000000 -0.00000000 -0.00786448 -0.00000000  0.00000000

  15    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00268088 -0.00000000  0.00000000 -0.00000000

  16    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000004  0.00000000 -0.00000000  0.00000000  0.00000011

 State Sym Spin     / Nr.     25          26          27          28          29          30          31          32

   1    1  |0 0>           0.00000000  0.00000022  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   2    1  |0 0>           0.00000000  0.00721388  0.00000000 -0.00000000  0.00000003  0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   3    1  |0 0>          -0.00000000  0.00037914 -0.00000000 -0.00000000 -0.00000055 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   4    1  |0 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000022
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   5    1  |0 0>          -0.00000000 -0.00000000  0.00000000  0.00000184  0.00000000  0.00000000  0.00000286 -0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   6    1  |0 0>          -0.00720099  0.00000000  0.00000184 -0.00000000 -0.00000000  0.00000286 -0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   7    1  |0 0>          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000702
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   8    1  |0 0>          -0.00000005 -0.00000000  0.00000000  0.00002595 -0.00000000  0.00000000  0.00007306 -0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   9    1  |0 0>          -0.10145025  0.00000000  0.00002599 -0.00000000  0.00000000  0.00007304 -0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  10    1  |0 0>           0.00000000  0.00359206 -0.00000000  0.00000000  0.00001103 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  11    1  |0 0>          -0.00000000 -0.10158174 -0.00000000  0.00000000  0.00000039  0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  12    1  |0 0>          -0.00000000 -0.00000206 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   1    1  |1 1>+         -0.00000000 -0.00000000  0.00000000  0.00042476 -0.00000000 -0.00000000 -0.00029136  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   2    1  |1 1>+         -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00040978
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000009

   3    1  |1 1>+          0.00000000  0.00080149 -0.00000000  0.00000000  0.00041177  0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   4    1  |1 1>+         -0.00046313  0.00000000 -0.00051122  0.00000000 -0.00000000  0.00005369 -0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   5    1  |1 1>+          0.00080178 -0.00000000 -0.00015426  0.00000000 -0.00000000 -0.00042262  0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   6    1  |1 1>+          0.00000025  0.00000000  0.00000003  0.48950325 -0.00000000  0.00000010  0.30597400 -0.00000000
                          -0.00000001  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   7    1  |1 1>+          0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.25943617
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00005935

   8    1  |1 1>+         -0.00000000 -0.10214304  0.00000000  0.00000000  0.43453857 -0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   9    1  |1 1>+         -0.48553437  0.00000000  0.17394996 -0.00000001 -0.00000000 -0.55027488  0.00000018 -0.00000000
                          -0.00000001  0.00000000  0.00000000  0.00000000  0.00000000  0.00000001 -0.00000000 -0.00000000

  10    1  |1 1>+         -0.00000000 -0.52182677  0.00000000  0.00000000  0.37982928 -0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  11    1  |1 1>+         -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.51486862
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00011778

  12    1  |1 1>+         -0.00000019 -0.00000000  0.00000002  0.24442169 -0.00000000  0.00000022  0.66354597 -0.00000000
                           0.00000001 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000001 -0.00000000 -0.00000000

  13    1  |1 1>+         -0.00000000 -0.00455333  0.00000000 -0.00000000  0.00000296  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  14    1  |1 1>+         -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000518
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  15    1  |1 1>+         -0.00000000 -0.00000000  0.00000000  0.00000110 -0.00000000  0.00000000  0.00000168 -0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  16    1  |1 1>+          0.00000011 -0.00000000  0.00000044 -0.00000000  0.00000000  0.00000024 -0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   1    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000001 -0.00000000 -0.00000000 -0.00041100  0.00000000 -0.00000000 -0.00000000

   2    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00046693 -0.00000000  0.00017926 -0.00000000  0.00000000  0.00048595 -0.00000000  0.00000000

   3    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00017924  0.00000000 -0.00000000 -0.00048596  0.00000000

   4    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000009
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00041068

   5    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000054

   6    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000308  0.00000000  0.00000000  0.57776415 -0.00000000  0.00000000  0.00000000

   7    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.11787669  0.00000000  0.81670716 -0.00000006 -0.00000000 -0.24188688  0.00000008 -0.00000000

   8    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000006 -0.00000000  0.00000006  0.81672164 -0.00000000 -0.00000008 -0.24183791  0.00000000

   9    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00013215
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.57770273

  10    1  |1 0>          -0.00000001  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000031 -0.00000000 -0.00000000 -0.05779078 -0.00000000  0.00000011  0.32374329 -0.00000000

  11    1  |1 0>          -0.00000001  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.60232933 -0.00000000  0.05777139 -0.00000000 -0.00000000 -0.32374679  0.00000011 -0.00000000

  12    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000  0.65116796 -0.00000000 -0.00000000  0.00000013 -0.00000000  0.00000000 -0.00000000

  13    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000372 -0.00000000 -0.00000000 -0.00000301 -0.00000000

  14    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00783894  0.00000000  0.00000372 -0.00000000  0.00000000  0.00000300 -0.00000000 -0.00000000

  15    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00910232 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  16    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   1    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00046290 -0.00000000 -0.00042475  0.00000000  0.00000000  0.00029139 -0.00000000  0.00000000

   2    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00080150  0.00000000  0.00000000  0.00041177  0.00000000  0.00000000  0.00000000

   3    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000009
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00040906

   4    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00051116  0.00000000  0.00000000  0.00005383 -0.00000000

   5    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00015444 -0.00000000  0.00000000  0.00042261 -0.00000000

   6    1  |1 1>-          0.00000001 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.48573774  0.00000000 -0.48952165  0.00000003  0.00000000 -0.30594482  0.00000010 -0.00000000

   7    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.10214988 -0.00000000 -0.00000000 -0.43453863  0.00000000 -0.00000000 -0.00000000

   8    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00005928
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.25912760

   9    1  |1 1>-         -0.00000001  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000025 -0.00000000  0.00000001  0.17398304  0.00000000 -0.00000018 -0.55026435  0.00000000

  10    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00011814
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.51644464

  11    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.52182350  0.00000000  0.00000000  0.37982919 -0.00000000  0.00000000  0.00000000

  12    1  |1 1>-          0.00000001 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000001 -0.00000001 -0.00000000
                          -0.37570125  0.00000000  0.24446136 -0.00000002  0.00000000  0.66353114 -0.00000022  0.00000000

  13    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000518

  14    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000  0.00455324 -0.00000000  0.00000000  0.00000294  0.00000000  0.00000000  0.00000000

  15    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00784231  0.00000000  0.00000112 -0.00000000 -0.00000000  0.00000166 -0.00000000 -0.00000000

  16    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000044  0.00000000 -0.00000000 -0.00000024 -0.00000000

 State Sym Spin     / Nr.     33          34          35          36          37          38          39          40

   1    1  |0 0>           0.00000000  0.00000068 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   2    1  |0 0>           0.00000000  0.00000184  0.00000000 -0.00000000 -0.00000000 -0.00000049 -0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   3    1  |0 0>          -0.00000000  0.00000010  0.00000000 -0.00000000  0.00000000  0.00000928  0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   4    1  |0 0>           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000210  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   5    1  |0 0>          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000033 -0.00000000 -0.00000000  0.00000051
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   6    1  |0 0>          -0.00000000 -0.00000000  0.00000000 -0.00000033  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   7    1  |0 0>           0.00000001 -0.00000000 -0.00000002 -0.00000000 -0.00000000  0.00000000  0.00001650  0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000001 -0.00000000

   8    1  |0 0>           0.00000000 -0.00000000  0.00000000  0.00000000  0.00002498  0.00000000  0.00000000  0.00001871
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   9    1  |0 0>           0.00000000 -0.00000000 -0.00000000 -0.00002500  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  10    1  |0 0>          -0.00000000  0.00000042 -0.00000000 -0.00000000  0.00000000 -0.00010493  0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  11    1  |0 0>           0.00000000 -0.00001279  0.00000000 -0.00000000  0.00000000 -0.00000373  0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  12    1  |0 0>          -0.00000000 -0.00000527  0.00000000  0.00000000  0.00000000  0.00000002 -0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   1    1  |1 1>+         -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000223 -0.00000000 -0.00000000  0.00000268
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   2    1  |1 1>+         -0.00031635 -0.00000000  0.00000184 -0.00000000 -0.00000000  0.00000000  0.00000090  0.00000000
                          -0.00000003  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   3    1  |1 1>+         -0.00000000 -0.00000192 -0.00000000 -0.00000000  0.00000000  0.00000166 -0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   4    1  |1 1>+         -0.00000000  0.00000000  0.00000000 -0.00000213  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   5    1  |1 1>+         -0.00000000 -0.00000000  0.00000000  0.00000072 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   6    1  |1 1>+          0.00000000 -0.00000000  0.00000000  0.00000010  0.62074717 -0.00000000  0.00000000  0.20738254
                           0.00000000  0.00000000 -0.00000000  0.00000012 -0.00000017  0.00000000  0.00000000  0.00000003

   7    1  |1 1>+         -0.13557302  0.00000000  0.69395250 -0.00000000 -0.00000000  0.00000000  0.23032184 -0.00000000
                          -0.00001090  0.00000000  0.00111681 -0.00000000 -0.00000000 -0.00000000 -0.00008261  0.00000000

   8    1  |1 1>+         -0.00000000  0.69839089 -0.00000000 -0.00000000  0.00000000  0.03159840 -0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   9    1  |1 1>+         -0.00000000 -0.00000000 -0.00000000 -0.60314758  0.00000009 -0.00000000 -0.00000000 -0.00000013
                           0.00000000  0.00000000  0.00000000  0.00000008 -0.00000012 -0.00000000 -0.00000000  0.00000004

  10    1  |1 1>+         -0.00000000 -0.10453781  0.00000000  0.00000000 -0.00000000 -0.53385959  0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  11    1  |1 1>+          0.69451582  0.00000000  0.13582006 -0.00000000  0.00000000 -0.00000000 -0.48246389 -0.00000000
                           0.00005585  0.00000000  0.00021858 -0.00000000 -0.00000000  0.00000000  0.00017304 -0.00000000

  12    1  |1 1>+          0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.02316328 -0.00000000  0.00000000 -0.59731076
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000001 -0.00000000 -0.00000000 -0.00000007

  13    1  |1 1>+          0.00000000  0.00000780 -0.00000000 -0.00000000 -0.00000000 -0.00000170 -0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  14    1  |1 1>+          0.00000219 -0.00000000 -0.00000872 -0.00000000  0.00000000  0.00000000  0.00000787 -0.00000000
                           0.00000000 -0.00000000 -0.00000001  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  15    1  |1 1>+          0.00000000  0.00000000 -0.00000000  0.00000000  0.00000092 -0.00000000  0.00000000 -0.00001354
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  16    1  |1 1>+          0.00000000  0.00000000 -0.00000000  0.00000028 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   1    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000205 -0.00000000  0.00000000

   2    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000030  0.00000000 -0.00000000  0.00000000  0.00000000

   3    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000030  0.00000000  0.00000000 -0.00000204

   4    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000035  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000352 -0.00000000

   5    1  |1 0>           0.00000004  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00054657  0.00000000 -0.00000214  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   6    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00004186  0.00000000 -0.00000000  0.00000000  0.65427302 -0.00000000 -0.00000000

   7    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000007 -0.00000010 -0.00000000 -0.00000000  0.00000003
                           0.00000000  0.00000000  0.00000000  0.48485428 -0.00000007  0.00000000  0.00000000  0.00000008

   8    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000010 -0.00000014  0.00000000 -0.00000000 -0.00000002
                          -0.00000000  0.00000000 -0.00000000 -0.00000007 -0.48483811  0.00000000 -0.00000000  0.15927985

   9    1  |1 0>          -0.00000005  0.00000000 -0.00000010 -0.00000000  0.00000000  0.00000000  0.00023473 -0.00000000
                           0.00065605 -0.00000000  0.00006413 -0.00000000 -0.00000000  0.00000000  0.65446445  0.00000000

  10    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000002  0.00000003 -0.00000000 -0.00000000 -0.00000009
                           0.00000000 -0.00000000  0.00000000  0.00000002  0.12374465 -0.00000000 -0.00000000  0.71406874

  11    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000002 -0.00000002 -0.00000000 -0.00000000 -0.00000012
                          -0.00000000  0.00000000  0.00000000  0.12367196 -0.00000002  0.00000000 -0.00000000 -0.00000035

  12    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000  0.05161391  0.00000000 -0.00000000  0.00000000 -0.00008167  0.00000000  0.00000000

  13    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000823 -0.00000000  0.00000000 -0.00001753

  14    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000822  0.00000000 -0.00000000  0.00000000  0.00000000

  15    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000344  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  16    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000095 -0.00000000 -0.00000066 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   1    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000223  0.00000000 -0.00000000 -0.00000000 -0.00000000

   2    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000192  0.00000000 -0.00000000  0.00000000  0.00000166 -0.00000000 -0.00000000

   3    1  |1 1>-          0.00000003 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00031728 -0.00000000  0.00000185 -0.00000000  0.00000000 -0.00000000 -0.00000090 -0.00000000

   4    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000213 -0.00000000 -0.00000000  0.00000311

   5    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000071  0.00000000  0.00000000 -0.00000263

   6    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000008 -0.00000012 -0.00000000 -0.00000000 -0.00000004
                          -0.00000000  0.00000000  0.00000000  0.62072606 -0.00000010  0.00000000  0.00000000 -0.00000010

   7    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.69838680 -0.00000000 -0.00000000  0.00000000 -0.03169633  0.00000000 -0.00000000

   8    1  |1 1>-         -0.00001095  0.00000000  0.00111674 -0.00000000 -0.00000000  0.00000000  0.00008266 -0.00000000
                           0.13616173 -0.00000000 -0.69390740  0.00000000  0.00000000  0.00000000  0.23045782  0.00000000

   9    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000012  0.00000017 -0.00000000  0.00000000  0.00000003
                          -0.00000000 -0.00000000  0.00000000  0.00000009  0.60312162 -0.00000000  0.00000000 -0.25484918

  10    1  |1 1>-         -0.00005576 -0.00000000 -0.00021873  0.00000000  0.00000000  0.00000000  0.00017303 -0.00000000
                           0.69334463  0.00000000  0.13591458 -0.00000000 -0.00000000  0.00000000  0.48243734  0.00000000

  11    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.10446956 -0.00000000  0.00000000 -0.00000000 -0.53377675  0.00000000 -0.00000000

  12    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000010
                           0.00000000 -0.00000000  0.00000000  0.02310254 -0.00000000  0.00000000 -0.00000000 -0.00000029

  13    1  |1 1>-         -0.00000000  0.00000000  0.00000001  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000218 -0.00000000 -0.00000872 -0.00000000  0.00000000 -0.00000000 -0.00000787 -0.00000000

  14    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000781  0.00000000  0.00000000  0.00000000 -0.00000171 -0.00000000 -0.00000000

  15    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000093  0.00000000  0.00000000 -0.00000000 -0.00000000

  16    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000028  0.00000000 -0.00000000  0.00000117

 State Sym Spin     / Nr.     41          42          43          44          45          46          47          48

   1    1  |0 0>          -0.00000000 -0.00000225 -0.00000000  0.00000011 -0.00000000 -0.00000000  0.00000001 -0.00667431
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   2    1  |0 0>          -0.00000000  0.00000110  0.00000000  0.00204098 -0.00000000  0.00000000  0.00002973 -0.00000034
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   3    1  |0 0>           0.00000000  0.00000006 -0.00000000 -0.00002962  0.00000000 -0.00000000  0.00204012 -0.00000001
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   4    1  |0 0>           0.00000000  0.00000000  0.00204151 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000022  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   5    1  |0 0>           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00204191 -0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   6    1  |0 0>          -0.00000051 -0.00000000  0.00000000 -0.00000000 -0.00204191 -0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   7    1  |0 0>           0.00000000 -0.00000000  0.92622253 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00009983  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   8    1  |0 0>           0.00000000  0.00000000  0.00000000 -0.00000001 -0.00000034  0.92622489  0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   9    1  |0 0>          -0.00001870 -0.00000000 -0.00000000  0.00000001  0.92622492  0.00000034 -0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000001 -0.00000000  0.00000000  0.00000000

  10    1  |0 0>           0.00000000  0.00000013 -0.00000000 -0.09467202  0.00000000 -0.00000000  0.92134949 -0.00000022
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  11    1  |0 0>           0.00000000 -0.00000453  0.00000000  0.92129499 -0.00000001  0.00000001  0.09467017  0.00002092
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  12    1  |0 0>          -0.00000000  0.00001488  0.00000000 -0.00000082  0.00000000  0.00000000 -0.00000013  0.14462556
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   1    1  |1 1>+          0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00128446  0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   2    1  |1 1>+          0.00000000  0.00000000  0.00128337 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000014  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   3    1  |1 1>+          0.00000000 -0.00000132 -0.00000000 -0.00229992  0.00000000 -0.00000000  0.00112747 -0.00000049
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   4    1  |1 1>+         -0.00000311 -0.00000000 -0.00000000  0.00000000  0.00128394  0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   5    1  |1 1>+         -0.00000262 -0.00000000  0.00000000 -0.00000000 -0.00221870 -0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   6    1  |1 1>+          0.00000010 -0.00000000  0.00000000 -0.00000000 -0.00000002  0.04804692  0.00000000 -0.00000000
                           0.00000004 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   7    1  |1 1>+          0.00000000 -0.00000000  0.06068339 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000654  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   8    1  |1 1>+          0.00000000  0.04133708 -0.00000000 -0.01378274  0.00000000 -0.00000000  0.05408675  0.00000680
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   9    1  |1 1>+          0.25478767  0.00000000  0.00000000 -0.00000000 -0.04805739 -0.00000002  0.00000000  0.00000000
                           0.00000006 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  10    1  |1 1>+          0.00000000  0.46242192 -0.00000000 -0.04990313  0.00000000 -0.00000000 -0.02968547 -0.00001654
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  11    1  |1 1>+         -0.00000000  0.00000000 -0.00359961  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000039 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  12    1  |1 1>+         -0.00000029  0.00000000 -0.00000000  0.00000000  0.00000001 -0.03724484 -0.00000000  0.00000000
                          -0.00000010  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  13    1  |1 1>+          0.00000000 -0.00001655 -0.00000000  0.13103885 -0.00000000  0.00000000  0.26669569 -0.57127189
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  14    1  |1 1>+          0.00000000 -0.00000000  0.25729078 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00002773  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  15    1  |1 1>+         -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000009  0.25727626  0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  16    1  |1 1>+          0.00000117 -0.00000000  0.00000000  0.00000000  0.00000015  0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   1    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00017138  0.00000000 -0.00000000  0.00255250  0.00000000

   2    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000204 -0.00000000  0.00000000 -0.00000000 -0.00128364 -0.00000000  0.00000000 -0.00000000

   3    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00128365  0.00000000 -0.00000000

   4    1  |1 0>          -0.00000000  0.00000000 -0.00000028  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00255893  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   5    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000052 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   6    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00006792  0.00000000  0.00321815 -0.00000000  0.00000000 -0.04792838 -0.00000002

   7    1  |1 0>           0.00000004 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.15923050  0.00000000  0.00000000 -0.00000000 -0.01166734 -0.00000000  0.00000000  0.00000000

   8    1  |1 0>          -0.00000003  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000008  0.00000000 -0.00000000  0.00000000  0.00000000 -0.01166731 -0.00000000  0.00000000

   9    1  |1 0>          -0.00000000 -0.00000000 -0.00000518  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.04806111  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  10    1  |1 0>          -0.00000012  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000035 -0.00000000 -0.00000000  0.00000000  0.00000002 -0.05968361 -0.00000000  0.00000000

  11    1  |1 0>          -0.00000017  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.71408134  0.00000000 -0.00000000  0.00000000  0.05968360  0.00000002 -0.00000000 -0.00000000

  12    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.75419639  0.00000000  0.06447193 -0.00000000  0.00000000  0.00432893 -0.00002457

  13    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000009 -0.25729145 -0.00000000  0.00000000

  14    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00001753  0.00000000 -0.00000000  0.00000000  0.25729140  0.00000009 -0.00000000 -0.00000000

  15    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00002133  0.00000000  0.29652881 -0.00000000  0.00000000  0.01991012  0.57125759

  16    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   1    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000268  0.00000000  0.00000000 -0.00000000 -0.00128446 -0.00000000  0.00000000  0.00000000

   2    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000132  0.00000000  0.00212856 -0.00000000  0.00000000  0.00142482  0.00000049

   3    1  |1 1>-         -0.00000000  0.00000000 -0.00000014  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00128337  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   4    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00128484  0.00000000 -0.00000000

   5    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00221818  0.00000000  0.00000000

   6    1  |1 1>-         -0.00000005  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.20744556  0.00000000  0.00000000 -0.00000000 -0.04804690 -0.00000002  0.00000000 -0.00000000

   7    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000  0.04133058  0.00000000 -0.00642832 -0.00000000  0.00000000 -0.05544376  0.00000675

   8    1  |1 1>-         -0.00000000 -0.00000000  0.00000654 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.06068336 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   9    1  |1 1>-          0.00000004 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000013 -0.00000000 -0.00000000  0.00000000  0.00000002 -0.04805735 -0.00000000  0.00000000

  10    1  |1 1>-         -0.00000000 -0.00000000  0.00000039 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00359963 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  11    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000 -0.46253302  0.00000000  0.05342372 -0.00000000  0.00000000 -0.02274769  0.00001652

  12    1  |1 1>-         -0.00000014  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.59731321  0.00000000  0.00000000 -0.00000000 -0.03724487 -0.00000001  0.00000000  0.00000000

  13    1  |1 1>-         -0.00000000  0.00000000 -0.00002773  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.25729073  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  14    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00001655 -0.00000000 -0.16551596  0.00000000 -0.00000000  0.24678279  0.57127235

  15    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00001355 -0.00000000 -0.00000000  0.00000000  0.25727620  0.00000009 -0.00000000 -0.00000000

  16    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000016  0.00000000  0.00000000

 State Sym Spin     / Nr.     49          50          51          52          53          54          55          56

   1    1  |0 0>           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000015
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   2    1  |0 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00018341  0.00345715
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   3    1  |0 0>           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00346127  0.00018320
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   4    1  |0 0>          -0.00000000  0.00000000  0.00000000  0.00347299 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000039  0.00000000  0.00000000  0.00000000  0.00000000

   5    1  |0 0>          -0.00000000 -0.00000000 -0.00000005  0.00000000 -0.00000001 -0.00347336  0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   6    1  |0 0>           0.00000000  0.00000005 -0.00000000 -0.00000000 -0.00347336  0.00000001  0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   7    1  |0 0>          -0.00000004  0.00000000  0.00000000 -0.36306084  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000  0.00004028 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   8    1  |0 0>          -0.00000000  0.00000000  0.00002392  0.00000000 -0.00000070 -0.36304991  0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000001 -0.00000002 -0.00000000 -0.00000000

   9    1  |0 0>           0.00000000 -0.00002394  0.00000000 -0.00000000 -0.36304983  0.00000070  0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000001  0.00000001  0.00000000 -0.00000000

  10    1  |0 0>           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.36287781  0.01267791
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  11    1  |0 0>           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.01267476 -0.36297480
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  12    1  |0 0>           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000001  0.00001009
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   1    1  |1 1>+         -0.00000000 -0.00000000 -0.00032054  0.00000000 -0.00000000 -0.00016313  0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   2    1  |1 1>+         -0.00031989 -0.00000000  0.00000000 -0.00016342  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000004 -0.00000000 -0.00000000  0.00000002 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   3    1  |1 1>+          0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00016194  0.00028120
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   4    1  |1 1>+         -0.00000000  0.00032007 -0.00000000 -0.00000000 -0.00016358  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   5    1  |1 1>+         -0.00000000  0.00017979 -0.00000000  0.00000000  0.00028245 -0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   6    1  |1 1>+         -0.00000000  0.00000000  0.00001114  0.00000000 -0.00000003 -0.01300958  0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   7    1  |1 1>+          0.00000898 -0.00000000  0.00000000 -0.01642799  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000182 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   8    1  |1 1>+          0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.01484989  0.00272935
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   9    1  |1 1>+         -0.00000000  0.00000488 -0.00000000  0.00000000  0.01300615 -0.00000003 -0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  10    1  |1 1>+         -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00710512  0.01400765
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  11    1  |1 1>+         -0.00000046  0.00000000  0.00000000  0.00097540 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000011  0.00000000  0.00000000  0.00000000  0.00000000

  12    1  |1 1>+         -0.00000000 -0.00000000 -0.00001386 -0.00000000  0.00000002  0.01008725 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  13    1  |1 1>+         -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.65840607  0.38048983
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  14    1  |1 1>+          0.70707223  0.00000000 -0.00000000  0.65858332 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00008718  0.00000000  0.00000000 -0.00007306  0.00000000  0.00000000  0.00000000  0.00000000

  15    1  |1 1>+          0.00000000  0.00000052  0.70704920 -0.00000000  0.00000128  0.65861374 -0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000003  0.00000004  0.00000000  0.00000000

  16    1  |1 1>+          0.00000000 -0.00986869  0.00000001  0.00000000  0.00000310 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   1    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00032237 -0.00000014

   2    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00032051 -0.00000000  0.00000000  0.00016296 -0.00000000 -0.00000000  0.00000000

   3    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000  0.00032051 -0.00000000 -0.00000000 -0.00016296  0.00000000  0.00000000

   4    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000004 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000008 -0.00000000 -0.00000000  0.00032365 -0.00000000  0.00000000 -0.00000000  0.00000000

   5    1  |1 0>           0.00000005 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00037330  0.00000000 -0.00000000 -0.00000007 -0.00000000 -0.00000000  0.00000000  0.00000000

   6    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.01298567  0.00000569

   7    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000174  0.00000000  0.00000000  0.00315890 -0.00000001 -0.00000000  0.00000000

   8    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000175 -0.00000000  0.00000001  0.00315890 -0.00000000 -0.00000000

   9    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000144 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.01299760 -0.00000000  0.00000000 -0.00000000  0.00000000

  10    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00001383 -0.00000000  0.00000003  0.01615925 -0.00000000 -0.00000000

  11    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00001383 -0.00000000 -0.00000000 -0.01615924  0.00000003  0.00000000 -0.00000000

  12    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000765 -0.01748219

  13    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000003  0.00000004  0.00000000  0.00000000
                           0.00000000  0.00000052  0.70709526  0.00000000 -0.00000128 -0.65855844  0.00000000  0.00000000

  14    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000002  0.00000003  0.00000000 -0.00000000
                          -0.00000000  0.70709526 -0.00000052  0.00000000  0.65855845 -0.00000128 -0.00000000  0.00000000

  15    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00033345  0.76043246

  16    1  |1 0>           0.00000122 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00986661  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   1    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00032054  0.00000000  0.00000000  0.00016313 -0.00000000 -0.00000000  0.00000000

   2    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00016169 -0.00028134

   3    1  |1 1>-         -0.00000004  0.00000000  0.00000000  0.00000002 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00031989 -0.00000000  0.00000000  0.00016342 -0.00000000  0.00000000 -0.00000000  0.00000000

   4    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00031999  0.00000000 -0.00000000 -0.00016369  0.00000000  0.00000000

   5    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000  0.00017992  0.00000000 -0.00000000 -0.00028238  0.00000000  0.00000000

   6    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00001113 -0.00000000  0.00000000  0.01300956 -0.00000003 -0.00000000  0.00000000

   7    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.01484748  0.00274239

   8    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000182  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000899  0.00000000 -0.00000000 -0.01642799  0.00000000 -0.00000000  0.00000000 -0.00000000

   9    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000486 -0.00000000  0.00000003  0.01300615 -0.00000000 -0.00000000

  10    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000011  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000046 -0.00000000 -0.00000000 -0.00097540  0.00000000 -0.00000000  0.00000000 -0.00000000

  11    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00711739 -0.01400140

  12    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00001386 -0.00000000  0.00000000  0.01008726 -0.00000002 -0.00000000  0.00000000

  13    1  |1 1>-          0.00008718 -0.00000000 -0.00000000 -0.00007306  0.00000000  0.00000000  0.00000000  0.00000000
                           0.70707224  0.00000000 -0.00000000 -0.65858333  0.00000000 -0.00000000  0.00000000 -0.00000000

  14    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.65873931 -0.37991255

  15    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000002  0.00000003  0.00000000 -0.00000000
                           0.00000000 -0.70704919  0.00000052  0.00000000  0.65861378 -0.00000128 -0.00000000  0.00000000

  16    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000001 -0.00986869  0.00000000 -0.00000000 -0.00000310 -0.00000000  0.00000000

 State Sym Spin     / Nr.     57          58          59          60

   1    1  |0 0>           0.00087741 -0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000

   2    1  |0 0>           0.00000001  0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000

   3    1  |0 0>           0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000

   4    1  |0 0>           0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000

   5    1  |0 0>          -0.00000000  0.00000000  0.00000003 -0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000

   6    1  |0 0>          -0.00000000  0.00000000 -0.00000000 -0.00000003
                           0.00000000  0.00000000 -0.00000000  0.00000000

   7    1  |0 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000

   8    1  |0 0>           0.00000000 -0.00000000 -0.00000075  0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000

   9    1  |0 0>           0.00000000  0.00000000  0.00000000  0.00000076
                           0.00000000 -0.00000000 -0.00000000  0.00000000

  10    1  |0 0>          -0.00000005  0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000

  11    1  |0 0>           0.00000121  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000

  12    1  |0 0>           0.98948645  0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000

   1    1  |1 1>+          0.00000000  0.00000000 -0.00000271  0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000

   2    1  |1 1>+          0.00000000  0.00000280  0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000

   3    1  |1 1>+         -0.00000019 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000

   4    1  |1 1>+          0.00000000  0.00000000  0.00000000  0.00000271
                           0.00000000  0.00000000 -0.00000000  0.00000000

   5    1  |1 1>+         -0.00000000  0.00000000  0.00000000  0.00000152
                           0.00000000  0.00000000 -0.00000000  0.00000000

   6    1  |1 1>+          0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000

   7    1  |1 1>+         -0.00000000  0.00000024  0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000

   8    1  |1 1>+          0.00000186 -0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000

   9    1  |1 1>+          0.00000000 -0.00000000 -0.00000000 -0.00000001
                           0.00000000 -0.00000000 -0.00000000  0.00000000

  10    1  |1 1>+         -0.00000636  0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000

  11    1  |1 1>+         -0.00000000  0.00000075 -0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000

  12    1  |1 1>+         -0.00000000 -0.00000000  0.00000082 -0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000

  13    1  |1 1>+          0.08349503  0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000

  14    1  |1 1>+          0.00000000 -0.00697674 -0.00000000  0.00000000
                          -0.00000000 -0.00000022 -0.00000000  0.00000000

  15    1  |1 1>+          0.00000000 -0.00000000  0.00698007 -0.00000011
                           0.00000000  0.00000000  0.00000000 -0.00000000

  16    1  |1 1>+         -0.00000000  0.00000001  0.00001620  0.99995130
                           0.00000000  0.00000000 -0.00000000  0.00000000

   1    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000

   2    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000261

   3    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000261 -0.00000000

   4    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000

   5    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000315 -0.00000000  0.00000000

   6    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000002 -0.00000000 -0.00000000 -0.00000000

   7    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000026

   8    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000027 -0.00000000

   9    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000

  10    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000071  0.00000000

  11    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000071

  12    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000589  0.00000000 -0.00000000  0.00000000

  13    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00697636 -0.00000011

  14    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000011  0.00697636

  15    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.08350419 -0.00000000  0.00000000 -0.00000000

  16    1  |1 0>          -0.00000000 -0.00003140 -0.00000000  0.00000000
                          -0.00000000  0.99995132  0.00000002 -0.00000001

   1    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000271

   2    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000018 -0.00000000 -0.00000000  0.00000000

   3    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000280  0.00000000 -0.00000000

   4    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000271  0.00000000

   5    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000152 -0.00000000

   6    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000

   7    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000185  0.00000000  0.00000000 -0.00000000

   8    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000024  0.00000000 -0.00000000

   9    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000001 -0.00000000

  10    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000075  0.00000000 -0.00000000

  11    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000638  0.00000000  0.00000000  0.00000000

  12    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000082

  13    1  |1 1>-         -0.00000000  0.00000022  0.00000000 -0.00000000
                          -0.00000000 -0.00697674 -0.00000000  0.00000000

  14    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.08349504 -0.00000000  0.00000000 -0.00000000

  15    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000011 -0.00698007

  16    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000002  0.99995130 -0.00001620


  No SO block in symmetry 2


 Summary of SO results
 =====================

 Eigenvalues of the spin-orbit matrix
 ....................................

   Nr  Sym         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
                 (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
   1   1    -25.39268019     -0.00000489       -1.07      0.00000000        0.00      0.0000
   2   1    -25.35116584      0.04150946     9110.27      0.04151435     9111.35      1.1297
   3   1    -25.35116584      0.04150946     9110.27      0.04151435     9111.35      1.1297
   4   1    -25.35116583      0.04150947     9110.28      0.04151436     9111.35      1.1297
   5   1    -25.35038239      0.04229291     9282.22      0.04229780     9283.29      1.1510
   6   1    -25.35038231      0.04229299     9282.24      0.04229788     9283.31      1.1510
   7   1    -25.35038210      0.04229320     9282.28      0.04229809     9283.36      1.1510
   8   1    -25.35038208      0.04229322     9282.29      0.04229811     9283.36      1.1510
   9   1    -25.35038208      0.04229322     9282.29      0.04229811     9283.36      1.1510
  10   1    -25.34890189      0.04377341     9607.15      0.04377830     9608.23      1.1913
  11   1    -25.34890189      0.04377341     9607.15      0.04377830     9608.23      1.1913
  12   1    -25.34890189      0.04377342     9607.15      0.04377830     9608.23      1.1913
  13   1    -25.34890184      0.04377346     9607.16      0.04377835     9608.24      1.1913
  14   1    -25.34890183      0.04377347     9607.17      0.04377836     9608.24      1.1913
  15   1    -25.34890183      0.04377347     9607.17      0.04377836     9608.24      1.1913
  16   1    -25.34890182      0.04377348     9607.17      0.04377837     9608.24      1.1913
  17   1    -25.33998969      0.05268561    11563.16      0.05269050    11564.23      1.4338
  18   1    -25.33998962      0.05268569    11563.17      0.05269057    11564.24      1.4338
  19   1    -25.33998947      0.05268583    11563.20      0.05269072    11564.28      1.4338
  20   1    -25.33998946      0.05268584    11563.20      0.05269072    11564.28      1.4338
  21   1    -25.33998945      0.05268585    11563.21      0.05269074    11564.28      1.4338
  22   1    -25.29678571      0.09588959    21045.33      0.09589447    21046.40      2.6094
  23   1    -25.29678549      0.09588982    21045.38      0.09589470    21046.45      2.6094
  24   1    -25.29678500      0.09589030    21045.49      0.09589519    21046.56      2.6094
  25   1    -25.29678500      0.09589030    21045.49      0.09589519    21046.56      2.6094
  26   1    -25.29678483      0.09589047    21045.53      0.09589535    21046.60      2.6094
  27   1    -25.29543049      0.09724482    21342.77      0.09724970    21343.84      2.6463
  28   1    -25.29543049      0.09724482    21342.77      0.09724970    21343.84      2.6463
  29   1    -25.29543021      0.09724510    21342.83      0.09724998    21343.90      2.6463
  30   1    -25.29542959      0.09724572    21342.97      0.09725060    21344.04      2.6463
  31   1    -25.29542959      0.09724572    21342.97      0.09725060    21344.04      2.6463
  32   1    -25.29542942      0.09724589    21343.01      0.09725077    21344.08      2.6463
  33   1    -25.29542926      0.09724605    21343.04      0.09725093    21344.11      2.6463
  34   1    -25.29377134      0.09890396    21706.91      0.09890885    21707.98      2.6914
  35   1    -25.29377134      0.09890397    21706.91      0.09890885    21707.98      2.6914
  36   1    -25.29377123      0.09890407    21706.93      0.09890895    21708.01      2.6914
  37   1    -25.29377123      0.09890407    21706.93      0.09890895    21708.01      2.6914
  38   1    -25.29377069      0.09890461    21707.05      0.09890950    21708.13      2.6915
  39   1    -25.29377047      0.09890484    21707.10      0.09890972    21708.17      2.6915
  40   1    -25.29377006      0.09890524    21707.19      0.09891013    21708.26      2.6915
  41   1    -25.29377006      0.09890524    21707.19      0.09891013    21708.26      2.6915
  42   1    -25.29376988      0.09890543    21707.23      0.09891031    21708.30      2.6915
  43   1    -25.28623765      0.10643765    23360.37      0.10644254    23361.44      2.8964
  44   1    -25.28623759      0.10643771    23360.38      0.10644260    23361.45      2.8965
  45   1    -25.28623758      0.10643772    23360.38      0.10644261    23361.45      2.8965
  46   1    -25.28623758      0.10643772    23360.38      0.10644261    23361.45      2.8965
  47   1    -25.28623756      0.10643774    23360.38      0.10644262    23361.46      2.8965
  48   1    -25.28508549      0.10758982    23613.24      0.10759470    23614.31      2.9278
  49   1    -25.28396742      0.10870788    23858.62      0.10871277    23859.69      2.9582
  50   1    -25.28396736      0.10870795    23858.64      0.10871283    23859.71      2.9582
  51   1    -25.28396736      0.10870795    23858.64      0.10871283    23859.71      2.9582
  52   1    -25.28160554      0.11106977    24377.00      0.11107465    24378.07      3.0225
  53   1    -25.28160544      0.11106986    24377.02      0.11107474    24378.09      3.0225
  54   1    -25.28160544      0.11106986    24377.02      0.11107474    24378.09      3.0225
  55   1    -25.28160540      0.11106991    24377.03      0.11107479    24378.10      3.0225
  56   1    -25.28160481      0.11107049    24377.16      0.11107538    24378.23      3.0225
  57   1    -25.27305280      0.11962250    26254.10      0.11962739    26255.18      3.2552
  58   1    -25.27269695      0.11997836    26332.21      0.11998324    26333.28      3.2649
  59   1    -25.27269695      0.11997836    26332.21      0.11998324    26333.28      3.2649
  60   1    -25.27269695      0.11997836    26332.21      0.11998324    26333.28      3.2649

 E0 =    -25.39267530 is the energy of the lowest zeroth-order state
 E1 =    -25.39268019 is the energy of the lowest SO-state


 Spin-orbit eigenvectors   (columnwise and corresponding to the eigenvalues in ascending order)
 .......................

        Basis states           Eigenvectors (columnwise)

   Total
 Nr Sym  State Sym Spin / Nr.        1           2           3           4           5           6           7           8

  1  1     1    1  |0 0>        0.99997734  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000042 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  2  1     2    1  |0 0>       -0.00000001 -0.00000000 -0.00000000 -0.00000000 -0.00561375 -0.10784182  0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  3  1     3    1  |0 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000  0.10785692 -0.00561290  0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  4  1     4    1  |0 0>        0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.10803800 -0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00008414  0.00000000

  5  1     5    1  |0 0>        0.00000000 -0.00000000  0.00000187 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.10803345
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  6  1     6    1  |0 0>       -0.00000000 -0.00000188 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000005
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  7  1     7    1  |0 0>        0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00313587  0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000244 -0.00000000

  8  1     8    1  |0 0>        0.00000000  0.00000000 -0.00000214  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00314061
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  9  1     9    1  |0 0>        0.00000000  0.00000214  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 10  1    10    1  |0 0>       -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00312907 -0.00011244 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 11  1    11    1  |0 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00011225  0.00313491 -0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 12  1    12    1  |0 0>        0.00009709 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000035 -0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 13  1     1    1  |1 1>+      -0.00000000 -0.00000006  0.54776966 -0.00000001  0.00000000  0.00000000 -0.00000000  0.40592496
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 14  1     2    1  |1 1>+      -0.00000000 -0.00000000 -0.00000001 -0.54776202  0.00000000 -0.00000000 -0.40591844 -0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000050  0.00000000  0.00000000 -0.00031612  0.00000000

 15  1     3    1  |1 1>+       0.00000030  0.00000000 -0.00000000 -0.00000000  0.40549955  0.70317140  0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 16  1     4    1  |1 1>+       0.00000000 -0.54771428 -0.00000006  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000020
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 17  1     5    1  |1 1>+      -0.00000000 -0.31608277 -0.00000004  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000034
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 18  1     6    1  |1 1>+      -0.00000000  0.00000000 -0.00000381  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000826
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 19  1     7    1  |1 1>+       0.00000000  0.00000000  0.00000000  0.00000253  0.00000000  0.00000000 -0.00001082 -0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000001  0.00000000

 20  1     8    1  |1 1>+      -0.00000031  0.00000000 -0.00000000 -0.00000000  0.00000881  0.00000364  0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 21  1     9    1  |1 1>+      -0.00000000 -0.00000340 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 22  1    10    1  |1 1>+       0.00000113 -0.00000000  0.00000000  0.00000000 -0.00000226  0.00000828 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 23  1    11    1  |1 1>+      -0.00000000 -0.00000000 -0.00000000 -0.00000054 -0.00000000  0.00000000 -0.00000162 -0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 24  1    12    1  |1 1>+       0.00000000 -0.00000000  0.00000177 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000948
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 25  1    13    1  |1 1>+      -0.00388615  0.00000000 -0.00000000 -0.00000000 -0.00084889  0.00048904 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 26  1    14    1  |1 1>+      -0.00000000 -0.00000000 -0.00000000 -0.00041474 -0.00000000  0.00000000  0.00084869  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000066 -0.00000000

 27  1    15    1  |1 1>+       0.00000000 -0.00000000  0.00041212 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00084604
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 28  1    16    1  |1 1>+      -0.00000000 -0.00000088 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 29  1     1    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.81172126  0.00040757  0.00000000 -0.00000000

 30  1     2    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.54776715 -0.00000006  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000020

 31  1     3    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000006 -0.54776709  0.00000001  0.00000000  0.00000000 -0.00000000  0.40590081

 32  1     4    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00063209  0.00000000
                                0.00000000  0.00000000  0.00000000  0.00012914 -0.00000000  0.00000000  0.81165036  0.00000001

 33  1     5    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000058  0.00000000 -0.00000000  0.00000013 -0.00000000
                                0.00000000  0.00000000  0.00000001  0.63238696  0.00000000 -0.00000000 -0.00016578 -0.00000000

 34  1     6    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00001118 -0.00000001  0.00000000  0.00000000

 35  1     7    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000175  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 36  1     8    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000175  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000176

 37  1     9    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000001  0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00001095  0.00000000

 38  1    10    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000296  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00001222

 39  1    11    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000296 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 40  1    12    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000135 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000792  0.00000000  0.00000000

 41  1    13    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00041279 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00085099

 42  1    14    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00041279  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 43  1    15    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00388619  0.00000000  0.00000000 -0.00000000 -0.00000049  0.00097990 -0.00000000 -0.00000000

 44  1    16    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000072  0.00000000 -0.00000000 -0.00000000  0.00000000

 45  1     1    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.54776962  0.00000006 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000020

 46  1     2    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000029 -0.00000000  0.00000000  0.00000000  0.40620541 -0.70276395  0.00000000  0.00000000

 47  1     3    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000050  0.00000000  0.00000000 -0.00031612  0.00000000
                               -0.00000000 -0.00000000 -0.00000001 -0.54776194 -0.00000000  0.00000000  0.40591846  0.00000000

 48  1     4    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000006  0.54758519 -0.00000001  0.00000000  0.00000000 -0.00000000  0.40596121

 49  1     5    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000004 -0.31630640  0.00000001  0.00000000  0.00000000 -0.00000000  0.70283884

 50  1     6    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000381 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 51  1     7    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000032  0.00000000  0.00000000 -0.00000000 -0.00000881  0.00000363 -0.00000000 -0.00000000

 52  1     8    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000001 -0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000253  0.00000000 -0.00000000 -0.00001082 -0.00000000

 53  1     9    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000340 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000814

 54  1    10    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000054  0.00000000  0.00000000  0.00000162  0.00000000

 55  1    11    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000113  0.00000000 -0.00000000 -0.00000000 -0.00000225 -0.00000828 -0.00000000  0.00000000

 56  1    12    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000177 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 57  1    13    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000066 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00041474  0.00000000 -0.00000000 -0.00084869 -0.00000000

 58  1    14    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00388615  0.00000000 -0.00000000 -0.00000000 -0.00084840 -0.00048989 -0.00000000  0.00000000

 59  1    15    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00041212 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 60  1    16    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000088  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000004


   Total
 Nr Sym  State Sym Spin / Nr.        9          10          11          12          13          14          15          16

  1  1     1    1  |0 0>        0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  2  1     2    1  |0 0>        0.00000000 -0.00000000 -0.00000000 -0.00000064 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  3  1     3    1  |0 0>        0.00000000  0.00000000  0.00000000  0.00001203  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  4  1     4    1  |0 0>        0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000001 -0.00000000 -0.00000000  0.00000546
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  5  1     5    1  |0 0>        0.00000005  0.00000000  0.00000438 -0.00000000  0.00000000 -0.00000000 -0.00000048  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  6  1     6    1  |0 0>        0.10803324 -0.00000439  0.00000000  0.00000000 -0.00000000  0.00000047 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  7  1     7    1  |0 0>       -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000002  0.00000000 -0.00000000  0.00000505
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  8  1     8    1  |0 0>        0.00000000 -0.00000000 -0.00000117  0.00000000 -0.00000000 -0.00000000 -0.00000300 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  9  1     9    1  |0 0>        0.00314061  0.00000117 -0.00000000 -0.00000000  0.00000000  0.00000300 -0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 10  1    10    1  |0 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000019  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 11  1    11    1  |0 0>       -0.00000000 -0.00000000  0.00000000 -0.00000001  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 12  1    12    1  |0 0>        0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 13  1     1    1  |1 1>+      -0.00000020  0.00000037  0.71146274 -0.00000000 -0.00000000 -0.00000001 -0.16445775  0.00000000
                                0.00000000 -0.00000003  0.00000000 -0.00000000  0.00000000 -0.00000001  0.00000000  0.00000000

 14  1     2    1  |1 1>+       0.00000000 -0.00000000  0.00000000 -0.00000000  0.44896048 -0.00000000  0.00000000 -0.57591096
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000002  0.00000000  0.00000000  0.00000494

 15  1     3    1  |1 1>+      -0.00000000  0.00000001  0.00000000  0.57735350 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 16  1     4    1  |1 1>+      -0.40567420  0.54260883 -0.00000028 -0.00000001 -0.00000000 -0.48894511  0.00000003 -0.00000000
                                0.00000000  0.00000054 -0.00000002 -0.00000000 -0.00000000  0.00000003 -0.00000002  0.00000000

 17  1     5    1  |1 1>+       0.70300453 -0.29255029  0.00000015  0.00000001 -0.00000000 -0.56075687  0.00000003  0.00000000
                               -0.00000000 -0.00000029  0.00000001  0.00000000 -0.00000000  0.00000004 -0.00000002  0.00000000

 18  1     6    1  |1 1>+      -0.00000000 -0.00000000 -0.00006961 -0.00000000  0.00000000  0.00000000  0.00040227  0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 19  1     7    1  |1 1>+       0.00000000  0.00000000 -0.00000000  0.00000000 -0.00009658  0.00000000 -0.00000000  0.00018059
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 20  1     8    1  |1 1>+       0.00000000 -0.00000000 -0.00000000 -0.00030974  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 21  1     9    1  |1 1>+       0.00000814  0.00036939 -0.00000000 -0.00000000  0.00000000  0.00017316 -0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 22  1    10    1  |1 1>+      -0.00000000 -0.00000000 -0.00000000 -0.00027034  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 23  1    11    1  |1 1>+       0.00000000  0.00000000 -0.00000000  0.00000000  0.00048929 -0.00000000 -0.00000000  0.00036822
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 24  1    12    1  |1 1>+       0.00000000  0.00000000  0.00023134 -0.00000000  0.00000000  0.00000000  0.00044445  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 25  1    13    1  |1 1>+      -0.00000000  0.00000000  0.00000000  0.00000047 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 26  1    14    1  |1 1>+      -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000218  0.00000000  0.00000000 -0.00000009
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 27  1    15    1  |1 1>+       0.00000000 -0.00000000 -0.00000144  0.00000000 -0.00000000 -0.00000000 -0.00000283 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 28  1    16    1  |1 1>+       0.00000004  0.00000004 -0.00000000 -0.00000000  0.00000000  0.00000007 -0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 29  1     1    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000001 -0.00000000 -0.57734346  0.00000000 -0.00000000 -0.00000000  0.00000000

 30  1     2    1  |1 0>        0.00000000 -0.00000033  0.00000001  0.00000000 -0.00000000  0.00000005 -0.00000003  0.00000000
                                0.40590082  0.33760500 -0.00000018 -0.00000001  0.00000000  0.64751113 -0.00000004 -0.00000000

 31  1     3    1  |1 0>       -0.00000000  0.00000001 -0.00000000  0.00000000 -0.00000000 -0.00000003  0.00000002  0.00000000
                               -0.00000020  0.00000018  0.33714382 -0.00000000  0.00000001  0.00000004  0.64775143  0.00000001

 32  1     4    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000495
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00195619 -0.00000000  0.00000000 -0.57743479

 33  1     5    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000003 -0.00000000 -0.00000000  0.00000002
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.77464822 -0.00000001 -0.00000001  0.00252995

 34  1     6    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00041229  0.00000000 -0.00000000 -0.00000000  0.00000000

 35  1     7    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000176  0.00051544 -0.00000000 -0.00000000 -0.00000000 -0.00031125  0.00000000 -0.00000000

 36  1     8    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00051566  0.00000000  0.00000000  0.00000000  0.00031089  0.00000000

 37  1     9    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000128  0.00000000 -0.00000000  0.00041176

 38  1    10    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000  0.00019655 -0.00000000  0.00000000  0.00000000  0.00012199  0.00000000

 39  1    11    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00001222  0.00019664 -0.00000000 -0.00000000  0.00000000  0.00012185 -0.00000000 -0.00000000

 40  1    12    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 41  1    13    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000034  0.00000000 -0.00000000 -0.00000000 -0.00000156 -0.00000000

 42  1    14    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00085099 -0.00000034  0.00000000  0.00000000 -0.00000000 -0.00000156  0.00000000 -0.00000000

 43  1    15    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 44  1    16    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000010  0.00000000  0.00000000 -0.00000000

 45  1     1    1  |1 1>-       0.00000000 -0.00000070  0.00000003  0.00000000 -0.00000000 -0.00000001  0.00000001  0.00000000
                                0.40592501  0.71134545 -0.00000037 -0.00000001 -0.00000000 -0.16496437  0.00000001 -0.00000000

 46  1     2    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000001  0.00000000  0.57735341 -0.00000000  0.00000000  0.00000000 -0.00000000

 47  1     3    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000002  0.00000000  0.00000000  0.00000496
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.44536535 -0.00000000 -0.00000001  0.57869571

 48  1     4    1  |1 1>-      -0.00000000 -0.00000002  0.00000000 -0.00000000  0.00000000 -0.00000002  0.00000001  0.00000000
                               -0.00000020 -0.00000028 -0.54307615  0.00000000  0.00000000  0.00000003  0.48832945  0.00000000

 49  1     5    1  |1 1>-      -0.00000000 -0.00000001  0.00000000 -0.00000000  0.00000000  0.00000002 -0.00000002 -0.00000000
                               -0.00000034 -0.00000015 -0.29192911  0.00000000 -0.00000000 -0.00000003 -0.56116449 -0.00000001

 50  1     6    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000826 -0.00006932  0.00000000 -0.00000000  0.00000000  0.00040232 -0.00000000 -0.00000000

 51  1     7    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000  0.00030974 -0.00000000  0.00000000  0.00000000 -0.00000000

 52  1     8    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00009545 -0.00000000 -0.00000000  0.00018119

 53  1     9    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00036927  0.00000000 -0.00000000 -0.00000000 -0.00017342 -0.00000000

 54  1    10    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00049157 -0.00000000 -0.00000000 -0.00036517

 55  1    11    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00027034  0.00000000 -0.00000000 -0.00000000  0.00000000

 56  1    12    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000948 -0.00023165  0.00000000  0.00000000 -0.00000000 -0.00044428  0.00000000  0.00000000

 57  1    13    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000218  0.00000000  0.00000000  0.00000008

 58  1    14    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000047  0.00000000  0.00000000  0.00000000 -0.00000000

 59  1    15    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00084604  0.00000144 -0.00000000 -0.00000000  0.00000000  0.00000282 -0.00000000 -0.00000000

 60  1    16    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000004  0.00000000  0.00000000  0.00000000  0.00000007  0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.       17          18          19          20          21          22          23          24

  1  1     1    1  |0 0>       -0.00000004 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  2  1     2    1  |0 0>        0.99364569 -0.03063541 -0.00000000  0.00000000 -0.00000000 -0.00037839  0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  3  1     3    1  |0 0>        0.03063553  0.99364415  0.00000000 -0.00000000 -0.00000000  0.00719952  0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  4  1     4    1  |0 0>        0.00000000 -0.00000000  0.99411254 -0.00000001  0.00000000 -0.00000000  0.00719789  0.00000000
                               -0.00000000  0.00000000 -0.00000035  0.00000000  0.00000000 -0.00000000  0.00000150  0.00000000

  5  1     5    1  |0 0>       -0.00000000  0.00000000  0.00000001  0.99411301 -0.00000000 -0.00000000 -0.00000000  0.00720099
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  6  1     6    1  |0 0>        0.00000000  0.00000000 -0.00000000  0.00000000  0.99411304 -0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  7  1     7    1  |0 0>        0.00000000 -0.00000000  0.00044151 -0.00000000  0.00000000  0.00000000 -0.10143274 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00002118 -0.00000000

  8  1     8    1  |0 0>        0.00000000 -0.00000000 -0.00000000 -0.00044218  0.00000000 -0.00000000 -0.00000000  0.10145023
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  9  1     9    1  |0 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00044217 -0.00000000  0.00000000 -0.00000005
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 10  1    10    1  |0 0>       -0.00002520  0.00044056  0.00000000 -0.00000000 -0.00000000 -0.10143160 -0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 11  1    11    1  |0 0>        0.00044184  0.00002518  0.00000000  0.00000000 -0.00000000 -0.00358668 -0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 12  1    12    1  |0 0>        0.00000005  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000001  0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 13  1     1    1  |1 1>+      -0.00000000  0.00000000  0.00000000  0.04410764 -0.00000000 -0.00000000 -0.00000000  0.00046290
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 14  1     2    1  |1 1>+      -0.00000000  0.00000000 -0.04410989  0.00000000 -0.00000000  0.00000000 -0.00046609 -0.00000000
                                0.00000000 -0.00000000  0.00000002 -0.00000000 -0.00000000  0.00000000 -0.00000010 -0.00000000

 15  1     3    1  |1 1>+       0.07729696 -0.04243261 -0.00000000  0.00000000 -0.00000000 -0.00046252 -0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 16  1     4    1  |1 1>+       0.00000000  0.00000000 -0.00000000  0.00000000  0.04408613 -0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 17  1     5    1  |1 1>+      -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.07639699  0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 18  1     6    1  |1 1>+      -0.00000000  0.00000000  0.00000000  0.00357054 -0.00000000  0.00000000  0.00000000 -0.48573784
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 19  1     7    1  |1 1>+      -0.00000000  0.00000000 -0.00450710  0.00000000 -0.00000000 -0.00000000  0.61296054  0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00012800  0.00000000

 20  1     8    1  |1 1>+       0.00084085 -0.00406235 -0.00000000  0.00000000 -0.00000000  0.55400845  0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 21  1     9    1  |1 1>+      -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00356999 -0.00000000  0.00000000 -0.00000025
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000001

 22  1    10    1  |1 1>+       0.00380675  0.00203663  0.00000000  0.00000000 -0.00000000 -0.26461545 -0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 23  1    11    1  |1 1>+      -0.00000000 -0.00000000  0.00026828 -0.00000000  0.00000000  0.00000000 -0.03640237 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000760 -0.00000000

 24  1    12    1  |1 1>+       0.00000000 -0.00000000 -0.00000000 -0.00276577  0.00000000 -0.00000000 -0.00000000  0.37570105
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 25  1    13    1  |1 1>+      -0.00148477 -0.00270792 -0.00000000  0.00000000  0.00000000 -0.00786443 -0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 26  1    14    1  |1 1>+      -0.00000000  0.00000000 -0.00268013  0.00000000 -0.00000000  0.00000000 -0.00784601 -0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000164 -0.00000000

 27  1    15    1  |1 1>+      -0.00000000  0.00000000  0.00000000  0.00268088 -0.00000000 -0.00000000 -0.00000000  0.00784230
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 28  1    16    1  |1 1>+       0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000004 -0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 29  1     1    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00191167 -0.08815684 -0.00000000  0.00000000  0.00000000 -0.00092487 -0.00000000 -0.00000000

 30  1     2    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.04410900  0.00000000 -0.00000000  0.00000000

 31  1     3    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000  0.04410908 -0.00000000 -0.00000000 -0.00000000  0.00046693

 32  1     4    1  |1 0>        0.00000000 -0.00000000  0.00000003 -0.00000000 -0.00000000  0.00000000 -0.00000019 -0.00000000
                                0.00000000 -0.00000000  0.08820907 -0.00000000  0.00000000 -0.00000000  0.00092295  0.00000000

 33  1     5    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00001802  0.00000000 -0.00000000 -0.00000000 -0.00000019 -0.00000000

 34  1     6    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00007738  0.00356818  0.00000000 -0.00000000 -0.00000000 -0.48541361 -0.00000000 -0.00000000

 35  1     7    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00086771 -0.00000000  0.00000000 -0.00000006

 36  1     8    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00086771  0.00000000 -0.00000000 -0.00000000  0.11787666

 37  1     9    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00010133  0.00000000
                                0.00000000 -0.00000000  0.00356625 -0.00000000  0.00000000  0.00000000 -0.48522533 -0.00000000

 38  1    10    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000001
                                0.00000000 -0.00000000 -0.00000000 -0.00443174  0.00000000 -0.00000000 -0.00000000  0.60232936

 39  1    11    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000001
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00443174  0.00000000 -0.00000000  0.00000031

 40  1    12    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00480423 -0.00010417  0.00000000 -0.00000000  0.00000000 -0.00000407  0.00000000  0.00000000

 41  1    13    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00268014  0.00000000  0.00000000  0.00000000 -0.00783894

 42  1    14    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00268014 -0.00000000  0.00000000 -0.00000000

 43  1    15    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00308491 -0.00006690  0.00000000 -0.00000000  0.00000000  0.00000007 -0.00000000 -0.00000000

 44  1    16    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 45  1     1    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.04410755  0.00000000 -0.00000000  0.00000000

 46  1     2    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.07538486 -0.04574344 -0.00000000 -0.00000000  0.00000000 -0.00046251 -0.00000000 -0.00000000

 47  1     3    1  |1 1>-       0.00000000 -0.00000000  0.00000002 -0.00000000 -0.00000000  0.00000000 -0.00000010 -0.00000000
                                0.00000000 -0.00000000  0.04410988 -0.00000000  0.00000000 -0.00000000  0.00046609  0.00000000

 48  1     4    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000  0.04411741 -0.00000000 -0.00000000 -0.00000000  0.00046346

 49  1     5    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000  0.07637912 -0.00000000 -0.00000000 -0.00000000  0.00080159

 50  1     6    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000001
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00357054 -0.00000000  0.00000000 -0.00000025

 51  1     7    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00066396  0.00409498  0.00000000 -0.00000000 -0.00000000 -0.55400720 -0.00000000 -0.00000000

 52  1     8    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00012800 -0.00000000
                               -0.00000000  0.00000000 -0.00450710  0.00000000 -0.00000000 -0.00000000  0.61296053  0.00000000

 53  1     9    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00356999  0.00000000 -0.00000000 -0.00000000  0.48553442

 54  1    10    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000760 -0.00000000
                                0.00000000  0.00000000 -0.00026828  0.00000000 -0.00000000 -0.00000000  0.03640253  0.00000000

 55  1    11    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00389146  0.00186971  0.00000000 -0.00000000  0.00000000 -0.26462190 -0.00000000  0.00000000

 56  1    12    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000001
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00276577 -0.00000000  0.00000000 -0.00000019

 57  1    13    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000164 -0.00000000
                                0.00000000 -0.00000000  0.00268013 -0.00000000  0.00000000 -0.00000000  0.00784602  0.00000000

 58  1    14    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00160075 -0.00264101 -0.00000000  0.00000000 -0.00000000 -0.00786448 -0.00000000  0.00000000

 59  1    15    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00268088 -0.00000000  0.00000000 -0.00000000

 60  1    16    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000004  0.00000000 -0.00000000  0.00000000  0.00000011


   Total
 Nr Sym  State Sym Spin / Nr.       25          26          27          28          29          30          31          32

  1  1     1    1  |0 0>        0.00000000  0.00000022  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  2  1     2    1  |0 0>        0.00000000  0.00721388  0.00000000 -0.00000000  0.00000003  0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  3  1     3    1  |0 0>       -0.00000000  0.00037914 -0.00000000 -0.00000000 -0.00000055 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  4  1     4    1  |0 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000022
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  5  1     5    1  |0 0>       -0.00000000 -0.00000000  0.00000000  0.00000184  0.00000000  0.00000000  0.00000286 -0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  6  1     6    1  |0 0>       -0.00720099  0.00000000  0.00000184 -0.00000000 -0.00000000  0.00000286 -0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  7  1     7    1  |0 0>       -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000702
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  8  1     8    1  |0 0>       -0.00000005 -0.00000000  0.00000000  0.00002595 -0.00000000  0.00000000  0.00007306 -0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  9  1     9    1  |0 0>       -0.10145025  0.00000000  0.00002599 -0.00000000  0.00000000  0.00007304 -0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 10  1    10    1  |0 0>        0.00000000  0.00359206 -0.00000000  0.00000000  0.00001103 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 11  1    11    1  |0 0>       -0.00000000 -0.10158174 -0.00000000  0.00000000  0.00000039  0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 12  1    12    1  |0 0>       -0.00000000 -0.00000206 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 13  1     1    1  |1 1>+      -0.00000000 -0.00000000  0.00000000  0.00042476 -0.00000000 -0.00000000 -0.00029136  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 14  1     2    1  |1 1>+      -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00040978
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000009

 15  1     3    1  |1 1>+       0.00000000  0.00080149 -0.00000000  0.00000000  0.00041177  0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 16  1     4    1  |1 1>+      -0.00046313  0.00000000 -0.00051122  0.00000000 -0.00000000  0.00005369 -0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 17  1     5    1  |1 1>+       0.00080178 -0.00000000 -0.00015426  0.00000000 -0.00000000 -0.00042262  0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 18  1     6    1  |1 1>+       0.00000025  0.00000000  0.00000003  0.48950325 -0.00000000  0.00000010  0.30597400 -0.00000000
                               -0.00000001  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 19  1     7    1  |1 1>+       0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.25943617
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00005935

 20  1     8    1  |1 1>+      -0.00000000 -0.10214304  0.00000000  0.00000000  0.43453857 -0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 21  1     9    1  |1 1>+      -0.48553437  0.00000000  0.17394996 -0.00000001 -0.00000000 -0.55027488  0.00000018 -0.00000000
                               -0.00000001  0.00000000  0.00000000  0.00000000  0.00000000  0.00000001 -0.00000000 -0.00000000

 22  1    10    1  |1 1>+      -0.00000000 -0.52182677  0.00000000  0.00000000  0.37982928 -0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 23  1    11    1  |1 1>+      -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.51486862
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00011778

 24  1    12    1  |1 1>+      -0.00000019 -0.00000000  0.00000002  0.24442169 -0.00000000  0.00000022  0.66354597 -0.00000000
                                0.00000001 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000001 -0.00000000 -0.00000000

 25  1    13    1  |1 1>+      -0.00000000 -0.00455333  0.00000000 -0.00000000  0.00000296  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 26  1    14    1  |1 1>+      -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000518
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 27  1    15    1  |1 1>+      -0.00000000 -0.00000000  0.00000000  0.00000110 -0.00000000  0.00000000  0.00000168 -0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 28  1    16    1  |1 1>+       0.00000011 -0.00000000  0.00000044 -0.00000000  0.00000000  0.00000024 -0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 29  1     1    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000001 -0.00000000 -0.00000000 -0.00041100  0.00000000 -0.00000000 -0.00000000

 30  1     2    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00046693 -0.00000000  0.00017926 -0.00000000  0.00000000  0.00048595 -0.00000000  0.00000000

 31  1     3    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00017924  0.00000000 -0.00000000 -0.00048596  0.00000000

 32  1     4    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000009
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00041068

 33  1     5    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000054

 34  1     6    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000308  0.00000000  0.00000000  0.57776415 -0.00000000  0.00000000  0.00000000

 35  1     7    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.11787669  0.00000000  0.81670716 -0.00000006 -0.00000000 -0.24188688  0.00000008 -0.00000000

 36  1     8    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000006 -0.00000000  0.00000006  0.81672164 -0.00000000 -0.00000008 -0.24183791  0.00000000

 37  1     9    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00013215
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.57770273

 38  1    10    1  |1 0>       -0.00000001  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000031 -0.00000000 -0.00000000 -0.05779078 -0.00000000  0.00000011  0.32374329 -0.00000000

 39  1    11    1  |1 0>       -0.00000001  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.60232933 -0.00000000  0.05777139 -0.00000000 -0.00000000 -0.32374679  0.00000011 -0.00000000

 40  1    12    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000  0.65116796 -0.00000000 -0.00000000  0.00000013 -0.00000000  0.00000000 -0.00000000

 41  1    13    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000372 -0.00000000 -0.00000000 -0.00000301 -0.00000000

 42  1    14    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00783894  0.00000000  0.00000372 -0.00000000  0.00000000  0.00000300 -0.00000000 -0.00000000

 43  1    15    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00910232 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 44  1    16    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 45  1     1    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00046290 -0.00000000 -0.00042475  0.00000000  0.00000000  0.00029139 -0.00000000  0.00000000

 46  1     2    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00080150  0.00000000  0.00000000  0.00041177  0.00000000  0.00000000  0.00000000

 47  1     3    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000009
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00040906

 48  1     4    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00051116  0.00000000  0.00000000  0.00005383 -0.00000000

 49  1     5    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00015444 -0.00000000  0.00000000  0.00042261 -0.00000000

 50  1     6    1  |1 1>-       0.00000001 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.48573774  0.00000000 -0.48952165  0.00000003  0.00000000 -0.30594482  0.00000010 -0.00000000

 51  1     7    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.10214988 -0.00000000 -0.00000000 -0.43453863  0.00000000 -0.00000000 -0.00000000

 52  1     8    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00005928
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.25912760

 53  1     9    1  |1 1>-      -0.00000001  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000025 -0.00000000  0.00000001  0.17398304  0.00000000 -0.00000018 -0.55026435  0.00000000

 54  1    10    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00011814
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.51644464

 55  1    11    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.52182350  0.00000000  0.00000000  0.37982919 -0.00000000  0.00000000  0.00000000

 56  1    12    1  |1 1>-       0.00000001 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000001 -0.00000001 -0.00000000
                               -0.37570125  0.00000000  0.24446136 -0.00000002  0.00000000  0.66353114 -0.00000022  0.00000000

 57  1    13    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000518

 58  1    14    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000  0.00455324 -0.00000000  0.00000000  0.00000294  0.00000000  0.00000000  0.00000000

 59  1    15    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00784231  0.00000000  0.00000112 -0.00000000 -0.00000000  0.00000166 -0.00000000 -0.00000000

 60  1    16    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000044  0.00000000 -0.00000000 -0.00000024 -0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.       33          34          35          36          37          38          39          40

  1  1     1    1  |0 0>        0.00000000  0.00000068 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  2  1     2    1  |0 0>        0.00000000  0.00000184  0.00000000 -0.00000000 -0.00000000 -0.00000049 -0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  3  1     3    1  |0 0>       -0.00000000  0.00000010  0.00000000 -0.00000000  0.00000000  0.00000928  0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  4  1     4    1  |0 0>        0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000210  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  5  1     5    1  |0 0>       -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000033 -0.00000000 -0.00000000  0.00000051
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  6  1     6    1  |0 0>       -0.00000000 -0.00000000  0.00000000 -0.00000033  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  7  1     7    1  |0 0>        0.00000001 -0.00000000 -0.00000002 -0.00000000 -0.00000000  0.00000000  0.00001650  0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000001 -0.00000000

  8  1     8    1  |0 0>        0.00000000 -0.00000000  0.00000000  0.00000000  0.00002498  0.00000000  0.00000000  0.00001871
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  9  1     9    1  |0 0>        0.00000000 -0.00000000 -0.00000000 -0.00002500  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 10  1    10    1  |0 0>       -0.00000000  0.00000042 -0.00000000 -0.00000000  0.00000000 -0.00010493  0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 11  1    11    1  |0 0>        0.00000000 -0.00001279  0.00000000 -0.00000000  0.00000000 -0.00000373  0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 12  1    12    1  |0 0>       -0.00000000 -0.00000527  0.00000000  0.00000000  0.00000000  0.00000002 -0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 13  1     1    1  |1 1>+      -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000223 -0.00000000 -0.00000000  0.00000268
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 14  1     2    1  |1 1>+      -0.00031635 -0.00000000  0.00000184 -0.00000000 -0.00000000  0.00000000  0.00000090  0.00000000
                               -0.00000003  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 15  1     3    1  |1 1>+      -0.00000000 -0.00000192 -0.00000000 -0.00000000  0.00000000  0.00000166 -0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 16  1     4    1  |1 1>+      -0.00000000  0.00000000  0.00000000 -0.00000213  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 17  1     5    1  |1 1>+      -0.00000000 -0.00000000  0.00000000  0.00000072 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 18  1     6    1  |1 1>+       0.00000000 -0.00000000  0.00000000  0.00000010  0.62074717 -0.00000000  0.00000000  0.20738254
                                0.00000000  0.00000000 -0.00000000  0.00000012 -0.00000017  0.00000000  0.00000000  0.00000003

 19  1     7    1  |1 1>+      -0.13557302  0.00000000  0.69395250 -0.00000000 -0.00000000  0.00000000  0.23032184 -0.00000000
                               -0.00001090  0.00000000  0.00111681 -0.00000000 -0.00000000 -0.00000000 -0.00008261  0.00000000

 20  1     8    1  |1 1>+      -0.00000000  0.69839089 -0.00000000 -0.00000000  0.00000000  0.03159840 -0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 21  1     9    1  |1 1>+      -0.00000000 -0.00000000 -0.00000000 -0.60314758  0.00000009 -0.00000000 -0.00000000 -0.00000013
                                0.00000000  0.00000000  0.00000000  0.00000008 -0.00000012 -0.00000000 -0.00000000  0.00000004

 22  1    10    1  |1 1>+      -0.00000000 -0.10453781  0.00000000  0.00000000 -0.00000000 -0.53385959  0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 23  1    11    1  |1 1>+       0.69451582  0.00000000  0.13582006 -0.00000000  0.00000000 -0.00000000 -0.48246389 -0.00000000
                                0.00005585  0.00000000  0.00021858 -0.00000000 -0.00000000  0.00000000  0.00017304 -0.00000000

 24  1    12    1  |1 1>+       0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.02316328 -0.00000000  0.00000000 -0.59731076
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000001 -0.00000000 -0.00000000 -0.00000007

 25  1    13    1  |1 1>+       0.00000000  0.00000780 -0.00000000 -0.00000000 -0.00000000 -0.00000170 -0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 26  1    14    1  |1 1>+       0.00000219 -0.00000000 -0.00000872 -0.00000000  0.00000000  0.00000000  0.00000787 -0.00000000
                                0.00000000 -0.00000000 -0.00000001  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 27  1    15    1  |1 1>+       0.00000000  0.00000000 -0.00000000  0.00000000  0.00000092 -0.00000000  0.00000000 -0.00001354
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 28  1    16    1  |1 1>+       0.00000000  0.00000000 -0.00000000  0.00000028 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 29  1     1    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000205 -0.00000000  0.00000000

 30  1     2    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000030  0.00000000 -0.00000000  0.00000000  0.00000000

 31  1     3    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000030  0.00000000  0.00000000 -0.00000204

 32  1     4    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000035  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000352 -0.00000000

 33  1     5    1  |1 0>        0.00000004  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00054657  0.00000000 -0.00000214  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 34  1     6    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00004186  0.00000000 -0.00000000  0.00000000  0.65427302 -0.00000000 -0.00000000

 35  1     7    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000007 -0.00000010 -0.00000000 -0.00000000  0.00000003
                                0.00000000  0.00000000  0.00000000  0.48485428 -0.00000007  0.00000000  0.00000000  0.00000008

 36  1     8    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000010 -0.00000014  0.00000000 -0.00000000 -0.00000002
                               -0.00000000  0.00000000 -0.00000000 -0.00000007 -0.48483811  0.00000000 -0.00000000  0.15927985

 37  1     9    1  |1 0>       -0.00000005  0.00000000 -0.00000010 -0.00000000  0.00000000  0.00000000  0.00023473 -0.00000000
                                0.00065605 -0.00000000  0.00006413 -0.00000000 -0.00000000  0.00000000  0.65446445  0.00000000

 38  1    10    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000002  0.00000003 -0.00000000 -0.00000000 -0.00000009
                                0.00000000 -0.00000000  0.00000000  0.00000002  0.12374465 -0.00000000 -0.00000000  0.71406874

 39  1    11    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000002 -0.00000002 -0.00000000 -0.00000000 -0.00000012
                               -0.00000000  0.00000000  0.00000000  0.12367196 -0.00000002  0.00000000 -0.00000000 -0.00000035

 40  1    12    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000  0.05161391  0.00000000 -0.00000000  0.00000000 -0.00008167  0.00000000  0.00000000

 41  1    13    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000823 -0.00000000  0.00000000 -0.00001753

 42  1    14    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000822  0.00000000 -0.00000000  0.00000000  0.00000000

 43  1    15    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000344  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 44  1    16    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000095 -0.00000000 -0.00000066 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 45  1     1    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000223  0.00000000 -0.00000000 -0.00000000 -0.00000000

 46  1     2    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000192  0.00000000 -0.00000000  0.00000000  0.00000166 -0.00000000 -0.00000000

 47  1     3    1  |1 1>-       0.00000003 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00031728 -0.00000000  0.00000185 -0.00000000  0.00000000 -0.00000000 -0.00000090 -0.00000000

 48  1     4    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000213 -0.00000000 -0.00000000  0.00000311

 49  1     5    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000071  0.00000000  0.00000000 -0.00000263

 50  1     6    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000008 -0.00000012 -0.00000000 -0.00000000 -0.00000004
                               -0.00000000  0.00000000  0.00000000  0.62072606 -0.00000010  0.00000000  0.00000000 -0.00000010

 51  1     7    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.69838680 -0.00000000 -0.00000000  0.00000000 -0.03169633  0.00000000 -0.00000000

 52  1     8    1  |1 1>-      -0.00001095  0.00000000  0.00111674 -0.00000000 -0.00000000  0.00000000  0.00008266 -0.00000000
                                0.13616173 -0.00000000 -0.69390740  0.00000000  0.00000000  0.00000000  0.23045782  0.00000000

 53  1     9    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000012  0.00000017 -0.00000000  0.00000000  0.00000003
                               -0.00000000 -0.00000000  0.00000000  0.00000009  0.60312162 -0.00000000  0.00000000 -0.25484918

 54  1    10    1  |1 1>-      -0.00005576 -0.00000000 -0.00021873  0.00000000  0.00000000  0.00000000  0.00017303 -0.00000000
                                0.69334463  0.00000000  0.13591458 -0.00000000 -0.00000000  0.00000000  0.48243734  0.00000000

 55  1    11    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.10446956 -0.00000000  0.00000000 -0.00000000 -0.53377675  0.00000000 -0.00000000

 56  1    12    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000010
                                0.00000000 -0.00000000  0.00000000  0.02310254 -0.00000000  0.00000000 -0.00000000 -0.00000029

 57  1    13    1  |1 1>-      -0.00000000  0.00000000  0.00000001  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000218 -0.00000000 -0.00000872 -0.00000000  0.00000000 -0.00000000 -0.00000787 -0.00000000

 58  1    14    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000781  0.00000000  0.00000000  0.00000000 -0.00000171 -0.00000000 -0.00000000

 59  1    15    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000093  0.00000000  0.00000000 -0.00000000 -0.00000000

 60  1    16    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000028  0.00000000 -0.00000000  0.00000117


   Total
 Nr Sym  State Sym Spin / Nr.       41          42          43          44          45          46          47          48

  1  1     1    1  |0 0>       -0.00000000 -0.00000225 -0.00000000  0.00000011 -0.00000000 -0.00000000  0.00000001 -0.00667431
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  2  1     2    1  |0 0>       -0.00000000  0.00000110  0.00000000  0.00204098 -0.00000000  0.00000000  0.00002973 -0.00000034
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  3  1     3    1  |0 0>        0.00000000  0.00000006 -0.00000000 -0.00002962  0.00000000 -0.00000000  0.00204012 -0.00000001
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  4  1     4    1  |0 0>        0.00000000  0.00000000  0.00204151 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000022  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  5  1     5    1  |0 0>        0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00204191 -0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  6  1     6    1  |0 0>       -0.00000051 -0.00000000  0.00000000 -0.00000000 -0.00204191 -0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  7  1     7    1  |0 0>        0.00000000 -0.00000000  0.92622253 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00009983  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  8  1     8    1  |0 0>        0.00000000  0.00000000  0.00000000 -0.00000001 -0.00000034  0.92622489  0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  9  1     9    1  |0 0>       -0.00001870 -0.00000000 -0.00000000  0.00000001  0.92622492  0.00000034 -0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000001 -0.00000000  0.00000000  0.00000000

 10  1    10    1  |0 0>        0.00000000  0.00000013 -0.00000000 -0.09467202  0.00000000 -0.00000000  0.92134949 -0.00000022
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 11  1    11    1  |0 0>        0.00000000 -0.00000453  0.00000000  0.92129499 -0.00000001  0.00000001  0.09467017  0.00002092
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 12  1    12    1  |0 0>       -0.00000000  0.00001488  0.00000000 -0.00000082  0.00000000  0.00000000 -0.00000013  0.14462556
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 13  1     1    1  |1 1>+       0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00128446  0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 14  1     2    1  |1 1>+       0.00000000  0.00000000  0.00128337 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000014  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 15  1     3    1  |1 1>+       0.00000000 -0.00000132 -0.00000000 -0.00229992  0.00000000 -0.00000000  0.00112747 -0.00000049
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 16  1     4    1  |1 1>+      -0.00000311 -0.00000000 -0.00000000  0.00000000  0.00128394  0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 17  1     5    1  |1 1>+      -0.00000262 -0.00000000  0.00000000 -0.00000000 -0.00221870 -0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 18  1     6    1  |1 1>+       0.00000010 -0.00000000  0.00000000 -0.00000000 -0.00000002  0.04804692  0.00000000 -0.00000000
                                0.00000004 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 19  1     7    1  |1 1>+       0.00000000 -0.00000000  0.06068339 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000654  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 20  1     8    1  |1 1>+       0.00000000  0.04133708 -0.00000000 -0.01378274  0.00000000 -0.00000000  0.05408675  0.00000680
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 21  1     9    1  |1 1>+       0.25478767  0.00000000  0.00000000 -0.00000000 -0.04805739 -0.00000002  0.00000000  0.00000000
                                0.00000006 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 22  1    10    1  |1 1>+       0.00000000  0.46242192 -0.00000000 -0.04990313  0.00000000 -0.00000000 -0.02968547 -0.00001654
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 23  1    11    1  |1 1>+      -0.00000000  0.00000000 -0.00359961  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000039 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 24  1    12    1  |1 1>+      -0.00000029  0.00000000 -0.00000000  0.00000000  0.00000001 -0.03724484 -0.00000000  0.00000000
                               -0.00000010  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 25  1    13    1  |1 1>+       0.00000000 -0.00001655 -0.00000000  0.13103885 -0.00000000  0.00000000  0.26669569 -0.57127189
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 26  1    14    1  |1 1>+       0.00000000 -0.00000000  0.25729078 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00002773  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 27  1    15    1  |1 1>+      -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000009  0.25727626  0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 28  1    16    1  |1 1>+       0.00000117 -0.00000000  0.00000000  0.00000000  0.00000015  0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 29  1     1    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00017138  0.00000000 -0.00000000  0.00255250  0.00000000

 30  1     2    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000204 -0.00000000  0.00000000 -0.00000000 -0.00128364 -0.00000000  0.00000000 -0.00000000

 31  1     3    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00128365  0.00000000 -0.00000000

 32  1     4    1  |1 0>       -0.00000000  0.00000000 -0.00000028  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00255893  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 33  1     5    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000052 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 34  1     6    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00006792  0.00000000  0.00321815 -0.00000000  0.00000000 -0.04792838 -0.00000002

 35  1     7    1  |1 0>        0.00000004 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.15923050  0.00000000  0.00000000 -0.00000000 -0.01166734 -0.00000000  0.00000000  0.00000000

 36  1     8    1  |1 0>       -0.00000003  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000008  0.00000000 -0.00000000  0.00000000  0.00000000 -0.01166731 -0.00000000  0.00000000

 37  1     9    1  |1 0>       -0.00000000 -0.00000000 -0.00000518  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.04806111  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 38  1    10    1  |1 0>       -0.00000012  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000035 -0.00000000 -0.00000000  0.00000000  0.00000002 -0.05968361 -0.00000000  0.00000000

 39  1    11    1  |1 0>       -0.00000017  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.71408134  0.00000000 -0.00000000  0.00000000  0.05968360  0.00000002 -0.00000000 -0.00000000

 40  1    12    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.75419639  0.00000000  0.06447193 -0.00000000  0.00000000  0.00432893 -0.00002457

 41  1    13    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000009 -0.25729145 -0.00000000  0.00000000

 42  1    14    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00001753  0.00000000 -0.00000000  0.00000000  0.25729140  0.00000009 -0.00000000 -0.00000000

 43  1    15    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00002133  0.00000000  0.29652881 -0.00000000  0.00000000  0.01991012  0.57125759

 44  1    16    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 45  1     1    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000268  0.00000000  0.00000000 -0.00000000 -0.00128446 -0.00000000  0.00000000  0.00000000

 46  1     2    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000132  0.00000000  0.00212856 -0.00000000  0.00000000  0.00142482  0.00000049

 47  1     3    1  |1 1>-      -0.00000000  0.00000000 -0.00000014  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00128337  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 48  1     4    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00128484  0.00000000 -0.00000000

 49  1     5    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00221818  0.00000000  0.00000000

 50  1     6    1  |1 1>-      -0.00000005  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.20744556  0.00000000  0.00000000 -0.00000000 -0.04804690 -0.00000002  0.00000000 -0.00000000

 51  1     7    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000  0.04133058  0.00000000 -0.00642832 -0.00000000  0.00000000 -0.05544376  0.00000675

 52  1     8    1  |1 1>-      -0.00000000 -0.00000000  0.00000654 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.06068336 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 53  1     9    1  |1 1>-       0.00000004 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000013 -0.00000000 -0.00000000  0.00000000  0.00000002 -0.04805735 -0.00000000  0.00000000

 54  1    10    1  |1 1>-      -0.00000000 -0.00000000  0.00000039 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00359963 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 55  1    11    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000 -0.46253302  0.00000000  0.05342372 -0.00000000  0.00000000 -0.02274769  0.00001652

 56  1    12    1  |1 1>-      -0.00000014  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.59731321  0.00000000  0.00000000 -0.00000000 -0.03724487 -0.00000001  0.00000000  0.00000000

 57  1    13    1  |1 1>-      -0.00000000  0.00000000 -0.00002773  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.25729073  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 58  1    14    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00001655 -0.00000000 -0.16551596  0.00000000 -0.00000000  0.24678279  0.57127235

 59  1    15    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00001355 -0.00000000 -0.00000000  0.00000000  0.25727620  0.00000009 -0.00000000 -0.00000000

 60  1    16    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000016  0.00000000  0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.       49          50          51          52          53          54          55          56

  1  1     1    1  |0 0>        0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000015
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  2  1     2    1  |0 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00018341  0.00345715
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  3  1     3    1  |0 0>        0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00346127  0.00018320
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  4  1     4    1  |0 0>       -0.00000000  0.00000000  0.00000000  0.00347299 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000039  0.00000000  0.00000000  0.00000000  0.00000000

  5  1     5    1  |0 0>       -0.00000000 -0.00000000 -0.00000005  0.00000000 -0.00000001 -0.00347336  0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  6  1     6    1  |0 0>        0.00000000  0.00000005 -0.00000000 -0.00000000 -0.00347336  0.00000001  0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  7  1     7    1  |0 0>       -0.00000004  0.00000000  0.00000000 -0.36306084  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000  0.00004028 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  8  1     8    1  |0 0>       -0.00000000  0.00000000  0.00002392  0.00000000 -0.00000070 -0.36304991  0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000001 -0.00000002 -0.00000000 -0.00000000

  9  1     9    1  |0 0>        0.00000000 -0.00002394  0.00000000 -0.00000000 -0.36304983  0.00000070  0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000001  0.00000001  0.00000000 -0.00000000

 10  1    10    1  |0 0>        0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.36287781  0.01267791
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 11  1    11    1  |0 0>        0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.01267476 -0.36297480
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 12  1    12    1  |0 0>        0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000001  0.00001009
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 13  1     1    1  |1 1>+      -0.00000000 -0.00000000 -0.00032054  0.00000000 -0.00000000 -0.00016313  0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 14  1     2    1  |1 1>+      -0.00031989 -0.00000000  0.00000000 -0.00016342  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000004 -0.00000000 -0.00000000  0.00000002 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 15  1     3    1  |1 1>+       0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00016194  0.00028120
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 16  1     4    1  |1 1>+      -0.00000000  0.00032007 -0.00000000 -0.00000000 -0.00016358  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 17  1     5    1  |1 1>+      -0.00000000  0.00017979 -0.00000000  0.00000000  0.00028245 -0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 18  1     6    1  |1 1>+      -0.00000000  0.00000000  0.00001114  0.00000000 -0.00000003 -0.01300958  0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 19  1     7    1  |1 1>+       0.00000898 -0.00000000  0.00000000 -0.01642799  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000182 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 20  1     8    1  |1 1>+       0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.01484989  0.00272935
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 21  1     9    1  |1 1>+      -0.00000000  0.00000488 -0.00000000  0.00000000  0.01300615 -0.00000003 -0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 22  1    10    1  |1 1>+      -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00710512  0.01400765
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 23  1    11    1  |1 1>+      -0.00000046  0.00000000  0.00000000  0.00097540 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000011  0.00000000  0.00000000  0.00000000  0.00000000

 24  1    12    1  |1 1>+      -0.00000000 -0.00000000 -0.00001386 -0.00000000  0.00000002  0.01008725 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 25  1    13    1  |1 1>+      -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.65840607  0.38048983
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 26  1    14    1  |1 1>+       0.70707223  0.00000000 -0.00000000  0.65858332 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00008718  0.00000000  0.00000000 -0.00007306  0.00000000  0.00000000  0.00000000  0.00000000

 27  1    15    1  |1 1>+       0.00000000  0.00000052  0.70704920 -0.00000000  0.00000128  0.65861374 -0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000003  0.00000004  0.00000000  0.00000000

 28  1    16    1  |1 1>+       0.00000000 -0.00986869  0.00000001  0.00000000  0.00000310 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 29  1     1    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00032237 -0.00000014

 30  1     2    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00032051 -0.00000000  0.00000000  0.00016296 -0.00000000 -0.00000000  0.00000000

 31  1     3    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000  0.00032051 -0.00000000 -0.00000000 -0.00016296  0.00000000  0.00000000

 32  1     4    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000004 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000008 -0.00000000 -0.00000000  0.00032365 -0.00000000  0.00000000 -0.00000000  0.00000000

 33  1     5    1  |1 0>        0.00000005 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00037330  0.00000000 -0.00000000 -0.00000007 -0.00000000 -0.00000000  0.00000000  0.00000000

 34  1     6    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.01298567  0.00000569

 35  1     7    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000174  0.00000000  0.00000000  0.00315890 -0.00000001 -0.00000000  0.00000000

 36  1     8    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000175 -0.00000000  0.00000001  0.00315890 -0.00000000 -0.00000000

 37  1     9    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000144 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.01299760 -0.00000000  0.00000000 -0.00000000  0.00000000

 38  1    10    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00001383 -0.00000000  0.00000003  0.01615925 -0.00000000 -0.00000000

 39  1    11    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00001383 -0.00000000 -0.00000000 -0.01615924  0.00000003  0.00000000 -0.00000000

 40  1    12    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000765 -0.01748219

 41  1    13    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000003  0.00000004  0.00000000  0.00000000
                                0.00000000  0.00000052  0.70709526  0.00000000 -0.00000128 -0.65855844  0.00000000  0.00000000

 42  1    14    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000002  0.00000003  0.00000000 -0.00000000
                               -0.00000000  0.70709526 -0.00000052  0.00000000  0.65855845 -0.00000128 -0.00000000  0.00000000

 43  1    15    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00033345  0.76043246

 44  1    16    1  |1 0>        0.00000122 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00986661  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 45  1     1    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00032054  0.00000000  0.00000000  0.00016313 -0.00000000 -0.00000000  0.00000000

 46  1     2    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00016169 -0.00028134

 47  1     3    1  |1 1>-      -0.00000004  0.00000000  0.00000000  0.00000002 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00031989 -0.00000000  0.00000000  0.00016342 -0.00000000  0.00000000 -0.00000000  0.00000000

 48  1     4    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00031999  0.00000000 -0.00000000 -0.00016369  0.00000000  0.00000000

 49  1     5    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000  0.00017992  0.00000000 -0.00000000 -0.00028238  0.00000000  0.00000000

 50  1     6    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00001113 -0.00000000  0.00000000  0.01300956 -0.00000003 -0.00000000  0.00000000

 51  1     7    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.01484748  0.00274239

 52  1     8    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000182  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000899  0.00000000 -0.00000000 -0.01642799  0.00000000 -0.00000000  0.00000000 -0.00000000

 53  1     9    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000486 -0.00000000  0.00000003  0.01300615 -0.00000000 -0.00000000

 54  1    10    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000011  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000046 -0.00000000 -0.00000000 -0.00097540  0.00000000 -0.00000000  0.00000000 -0.00000000

 55  1    11    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00711739 -0.01400140

 56  1    12    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00001386 -0.00000000  0.00000000  0.01008726 -0.00000002 -0.00000000  0.00000000

 57  1    13    1  |1 1>-       0.00008718 -0.00000000 -0.00000000 -0.00007306  0.00000000  0.00000000  0.00000000  0.00000000
                                0.70707224  0.00000000 -0.00000000 -0.65858333  0.00000000 -0.00000000  0.00000000 -0.00000000

 58  1    14    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.65873931 -0.37991255

 59  1    15    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000002  0.00000003  0.00000000 -0.00000000
                                0.00000000 -0.70704919  0.00000052  0.00000000  0.65861378 -0.00000128 -0.00000000  0.00000000

 60  1    16    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000001 -0.00986869  0.00000000 -0.00000000 -0.00000310 -0.00000000  0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.       57          58          59          60

  1  1     1    1  |0 0>        0.00087741 -0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000

  2  1     2    1  |0 0>        0.00000001  0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000

  3  1     3    1  |0 0>        0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000

  4  1     4    1  |0 0>        0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000

  5  1     5    1  |0 0>       -0.00000000  0.00000000  0.00000003 -0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000

  6  1     6    1  |0 0>       -0.00000000  0.00000000 -0.00000000 -0.00000003
                                0.00000000  0.00000000 -0.00000000  0.00000000

  7  1     7    1  |0 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000

  8  1     8    1  |0 0>        0.00000000 -0.00000000 -0.00000075  0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000

  9  1     9    1  |0 0>        0.00000000  0.00000000  0.00000000  0.00000076
                                0.00000000 -0.00000000 -0.00000000  0.00000000

 10  1    10    1  |0 0>       -0.00000005  0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000

 11  1    11    1  |0 0>        0.00000121  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000

 12  1    12    1  |0 0>        0.98948645  0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000

 13  1     1    1  |1 1>+       0.00000000  0.00000000 -0.00000271  0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000

 14  1     2    1  |1 1>+       0.00000000  0.00000280  0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000

 15  1     3    1  |1 1>+      -0.00000019 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000

 16  1     4    1  |1 1>+       0.00000000  0.00000000  0.00000000  0.00000271
                                0.00000000  0.00000000 -0.00000000  0.00000000

 17  1     5    1  |1 1>+      -0.00000000  0.00000000  0.00000000  0.00000152
                                0.00000000  0.00000000 -0.00000000  0.00000000

 18  1     6    1  |1 1>+       0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000

 19  1     7    1  |1 1>+      -0.00000000  0.00000024  0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000

 20  1     8    1  |1 1>+       0.00000186 -0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000

 21  1     9    1  |1 1>+       0.00000000 -0.00000000 -0.00000000 -0.00000001
                                0.00000000 -0.00000000 -0.00000000  0.00000000

 22  1    10    1  |1 1>+      -0.00000636  0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000

 23  1    11    1  |1 1>+      -0.00000000  0.00000075 -0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000

 24  1    12    1  |1 1>+      -0.00000000 -0.00000000  0.00000082 -0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000

 25  1    13    1  |1 1>+       0.08349503  0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000

 26  1    14    1  |1 1>+       0.00000000 -0.00697674 -0.00000000  0.00000000
                               -0.00000000 -0.00000022 -0.00000000  0.00000000

 27  1    15    1  |1 1>+       0.00000000 -0.00000000  0.00698007 -0.00000011
                                0.00000000  0.00000000  0.00000000 -0.00000000

 28  1    16    1  |1 1>+      -0.00000000  0.00000001  0.00001620  0.99995130
                                0.00000000  0.00000000 -0.00000000  0.00000000

 29  1     1    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000

 30  1     2    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000261

 31  1     3    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000261 -0.00000000

 32  1     4    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000

 33  1     5    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000315 -0.00000000  0.00000000

 34  1     6    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000002 -0.00000000 -0.00000000 -0.00000000

 35  1     7    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000026

 36  1     8    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000027 -0.00000000

 37  1     9    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000

 38  1    10    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000071  0.00000000

 39  1    11    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000071

 40  1    12    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000589  0.00000000 -0.00000000  0.00000000

 41  1    13    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00697636 -0.00000011

 42  1    14    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000011  0.00697636

 43  1    15    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.08350419 -0.00000000  0.00000000 -0.00000000

 44  1    16    1  |1 0>       -0.00000000 -0.00003140 -0.00000000  0.00000000
                               -0.00000000  0.99995132  0.00000002 -0.00000001

 45  1     1    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000271

 46  1     2    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000018 -0.00000000 -0.00000000  0.00000000

 47  1     3    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000280  0.00000000 -0.00000000

 48  1     4    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000271  0.00000000

 49  1     5    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000152 -0.00000000

 50  1     6    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000

 51  1     7    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000185  0.00000000  0.00000000 -0.00000000

 52  1     8    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000024  0.00000000 -0.00000000

 53  1     9    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000001 -0.00000000

 54  1    10    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000075  0.00000000 -0.00000000

 55  1    11    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000638  0.00000000  0.00000000  0.00000000

 56  1    12    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000082

 57  1    13    1  |1 1>-      -0.00000000  0.00000022  0.00000000 -0.00000000
                               -0.00000000 -0.00697674 -0.00000000  0.00000000

 58  1    14    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.08349504 -0.00000000  0.00000000 -0.00000000

 59  1    15    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000011 -0.00698007

 60  1    16    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000002  0.99995130 -0.00001620



 Composition of spin-orbit eigenvectors
 ======================================
   Total
 Nr Sym  State Sym Spin / Nr.      1        2        3        4        5        6        7        8

  1  1     1    1  |0 0>        100.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    1.16%    0.00%    0.00%
  3  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    1.16%    0.00%    0.00%    0.00%
  4  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    1.17%    0.00%
  5  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    1.17%
  6  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  7  1     7    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  8  1     8    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  9  1     9    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 10  1    10    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1    11    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1    12    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 13  1     1    1  |1 1>+         0.00%    0.00%   30.01%    0.00%    0.00%    0.00%    0.00%   16.48%
 14  1     2    1  |1 1>+         0.00%    0.00%    0.00%   30.00%    0.00%    0.00%   16.48%    0.00%
 15  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.00%   16.44%   49.45%    0.00%    0.00%
 16  1     4    1  |1 1>+         0.00%   30.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 17  1     5    1  |1 1>+         0.00%    9.99%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 18  1     6    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 19  1     7    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 20  1     8    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 21  1     9    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 22  1    10    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 23  1    11    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 24  1    12    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 25  1    13    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 26  1    14    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 27  1    15    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 28  1    16    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 29  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%   65.89%    0.00%    0.00%    0.00%
 30  1     2    1  |1 0>          0.00%   30.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 31  1     3    1  |1 0>          0.00%    0.00%   30.00%    0.00%    0.00%    0.00%    0.00%   16.48%
 32  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   65.88%    0.00%
 33  1     5    1  |1 0>          0.00%    0.00%    0.00%   39.99%    0.00%    0.00%    0.00%    0.00%
 34  1     6    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 35  1     7    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 36  1     8    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 37  1     9    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 38  1    10    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 39  1    11    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 40  1    12    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 41  1    13    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 42  1    14    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 43  1    15    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 44  1    16    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 45  1     1    1  |1 1>-         0.00%   30.01%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 46  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%   16.50%   49.39%    0.00%    0.00%
 47  1     3    1  |1 1>-         0.00%    0.00%    0.00%   30.00%    0.00%    0.00%   16.48%    0.00%
 48  1     4    1  |1 1>-         0.00%    0.00%   29.98%    0.00%    0.00%    0.00%    0.00%   16.48%
 49  1     5    1  |1 1>-         0.00%    0.00%   10.00%    0.00%    0.00%    0.00%    0.00%   49.40%
 50  1     6    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 51  1     7    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 52  1     8    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 53  1     9    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 54  1    10    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 55  1    11    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 56  1    12    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 57  1    13    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 58  1    14    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 59  1    15    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 60  1    16    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.      9       10       11       12       13       14       15       16

  1  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  3  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  4  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  5  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  6  1     6    1  |0 0>          1.17%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  7  1     7    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  8  1     8    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  9  1     9    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 10  1    10    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1    11    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1    12    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 13  1     1    1  |1 1>+         0.00%    0.00%   50.62%    0.00%    0.00%    0.00%    2.70%    0.00%
 14  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.00%   20.16%    0.00%    0.00%   33.17%
 15  1     3    1  |1 1>+         0.00%    0.00%    0.00%   33.33%    0.00%    0.00%    0.00%    0.00%
 16  1     4    1  |1 1>+        16.46%   29.44%    0.00%    0.00%    0.00%   23.91%    0.00%    0.00%
 17  1     5    1  |1 1>+        49.42%    8.56%    0.00%    0.00%    0.00%   31.44%    0.00%    0.00%
 18  1     6    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 19  1     7    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 20  1     8    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 21  1     9    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 22  1    10    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 23  1    11    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 24  1    12    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 25  1    13    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 26  1    14    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 27  1    15    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 28  1    16    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 29  1     1    1  |1 0>          0.00%    0.00%    0.00%   33.33%    0.00%    0.00%    0.00%    0.00%
 30  1     2    1  |1 0>         16.48%   11.40%    0.00%    0.00%    0.00%   41.93%    0.00%    0.00%
 31  1     3    1  |1 0>          0.00%    0.00%   11.37%    0.00%    0.00%    0.00%   41.96%    0.00%
 32  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   33.34%
 33  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.00%   60.01%    0.00%    0.00%    0.00%
 34  1     6    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 35  1     7    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 36  1     8    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 37  1     9    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 38  1    10    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 39  1    11    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 40  1    12    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 41  1    13    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 42  1    14    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 43  1    15    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 44  1    16    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 45  1     1    1  |1 1>-        16.48%   50.60%    0.00%    0.00%    0.00%    2.72%    0.00%    0.00%
 46  1     2    1  |1 1>-         0.00%    0.00%    0.00%   33.33%    0.00%    0.00%    0.00%    0.00%
 47  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%   19.84%    0.00%    0.00%   33.49%
 48  1     4    1  |1 1>-         0.00%    0.00%   29.49%    0.00%    0.00%    0.00%   23.85%    0.00%
 49  1     5    1  |1 1>-         0.00%    0.00%    8.52%    0.00%    0.00%    0.00%   31.49%    0.00%
 50  1     6    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 51  1     7    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 52  1     8    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 53  1     9    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 54  1    10    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 55  1    11    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 56  1    12    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 57  1    13    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 58  1    14    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 59  1    15    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 60  1    16    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.     17       18       19       20       21       22       23       24

  1  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |0 0>         98.73%    0.09%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  3  1     3    1  |0 0>          0.09%   98.73%    0.00%    0.00%    0.00%    0.01%    0.00%    0.00%
  4  1     4    1  |0 0>          0.00%    0.00%   98.83%    0.00%    0.00%    0.00%    0.01%    0.00%
  5  1     5    1  |0 0>          0.00%    0.00%    0.00%   98.83%    0.00%    0.00%    0.00%    0.01%
  6  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%   98.83%    0.00%    0.00%    0.00%
  7  1     7    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    1.03%    0.00%
  8  1     8    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    1.03%
  9  1     9    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 10  1    10    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    1.03%    0.00%    0.00%
 11  1    11    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1    12    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 13  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.19%    0.00%    0.00%    0.00%    0.00%
 14  1     2    1  |1 1>+         0.00%    0.00%    0.19%    0.00%    0.00%    0.00%    0.00%    0.00%
 15  1     3    1  |1 1>+         0.60%    0.18%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 16  1     4    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.19%    0.00%    0.00%    0.00%
 17  1     5    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.58%    0.00%    0.00%    0.00%
 18  1     6    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   23.59%
 19  1     7    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   37.57%    0.00%
 20  1     8    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%   30.69%    0.00%    0.00%
 21  1     9    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 22  1    10    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    7.00%    0.00%    0.00%
 23  1    11    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.13%    0.00%
 24  1    12    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   14.12%
 25  1    13    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    0.00%    0.00%
 26  1    14    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    0.00%
 27  1    15    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.01%
 28  1    16    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 29  1     1    1  |1 0>          0.00%    0.78%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 30  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.19%    0.00%    0.00%    0.00%
 31  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.19%    0.00%    0.00%    0.00%    0.00%
 32  1     4    1  |1 0>          0.00%    0.00%    0.78%    0.00%    0.00%    0.00%    0.00%    0.00%
 33  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 34  1     6    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%   23.56%    0.00%    0.00%
 35  1     7    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 36  1     8    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    1.39%
 37  1     9    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   23.54%    0.00%
 38  1    10    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   36.28%
 39  1    11    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 40  1    12    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 41  1    13    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.01%
 42  1    14    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 43  1    15    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 44  1    16    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 45  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.19%    0.00%    0.00%    0.00%
 46  1     2    1  |1 1>-         0.57%    0.21%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 47  1     3    1  |1 1>-         0.00%    0.00%    0.19%    0.00%    0.00%    0.00%    0.00%    0.00%
 48  1     4    1  |1 1>-         0.00%    0.00%    0.00%    0.19%    0.00%    0.00%    0.00%    0.00%
 49  1     5    1  |1 1>-         0.00%    0.00%    0.00%    0.58%    0.00%    0.00%    0.00%    0.00%
 50  1     6    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 51  1     7    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%   30.69%    0.00%    0.00%
 52  1     8    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   37.57%    0.00%
 53  1     9    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   23.57%
 54  1    10    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.13%    0.00%
 55  1    11    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    7.00%    0.00%    0.00%
 56  1    12    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 57  1    13    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    0.00%
 58  1    14    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    0.00%    0.00%
 59  1    15    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 60  1    16    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.     25       26       27       28       29       30       31       32

  1  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |0 0>          0.00%    0.01%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  3  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  4  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  5  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  6  1     6    1  |0 0>          0.01%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  7  1     7    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  8  1     8    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  9  1     9    1  |0 0>          1.03%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 10  1    10    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1    11    1  |0 0>          0.00%    1.03%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1    12    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 13  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 14  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 15  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 16  1     4    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 17  1     5    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 18  1     6    1  |1 1>+         0.00%    0.00%    0.00%   23.96%    0.00%    0.00%    9.36%    0.00%
 19  1     7    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    6.73%
 20  1     8    1  |1 1>+         0.00%    1.04%    0.00%    0.00%   18.88%    0.00%    0.00%    0.00%
 21  1     9    1  |1 1>+        23.57%    0.00%    3.03%    0.00%    0.00%   30.28%    0.00%    0.00%
 22  1    10    1  |1 1>+         0.00%   27.23%    0.00%    0.00%   14.43%    0.00%    0.00%    0.00%
 23  1    11    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   26.51%
 24  1    12    1  |1 1>+         0.00%    0.00%    0.00%    5.97%    0.00%    0.00%   44.03%    0.00%
 25  1    13    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 26  1    14    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 27  1    15    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 28  1    16    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 29  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 30  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 31  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 32  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 33  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 34  1     6    1  |1 0>          0.00%    0.00%    0.00%    0.00%   33.38%    0.00%    0.00%    0.00%
 35  1     7    1  |1 0>          1.39%    0.00%   66.70%    0.00%    0.00%    5.85%    0.00%    0.00%
 36  1     8    1  |1 0>          0.00%    0.00%    0.00%   66.70%    0.00%    0.00%    5.85%    0.00%
 37  1     9    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   33.37%
 38  1    10    1  |1 0>          0.00%    0.00%    0.00%    0.33%    0.00%    0.00%   10.48%    0.00%
 39  1    11    1  |1 0>         36.28%    0.00%    0.33%    0.00%    0.00%   10.48%    0.00%    0.00%
 40  1    12    1  |1 0>          0.00%   42.40%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 41  1    13    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 42  1    14    1  |1 0>          0.01%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 43  1    15    1  |1 0>          0.00%    0.01%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 44  1    16    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 45  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 46  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 47  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 48  1     4    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 49  1     5    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 50  1     6    1  |1 1>-        23.59%    0.00%   23.96%    0.00%    0.00%    9.36%    0.00%    0.00%
 51  1     7    1  |1 1>-         0.00%    1.04%    0.00%    0.00%   18.88%    0.00%    0.00%    0.00%
 52  1     8    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    6.71%
 53  1     9    1  |1 1>-         0.00%    0.00%    0.00%    3.03%    0.00%    0.00%   30.28%    0.00%
 54  1    10    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   26.67%
 55  1    11    1  |1 1>-         0.00%   27.23%    0.00%    0.00%   14.43%    0.00%    0.00%    0.00%
 56  1    12    1  |1 1>-        14.12%    0.00%    5.98%    0.00%    0.00%   44.03%    0.00%    0.00%
 57  1    13    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 58  1    14    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 59  1    15    1  |1 1>-         0.01%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 60  1    16    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.     33       34       35       36       37       38       39       40

  1  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  3  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  4  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  5  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  6  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  7  1     7    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  8  1     8    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  9  1     9    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 10  1    10    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1    11    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1    12    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 13  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 14  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 15  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 16  1     4    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 17  1     5    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 18  1     6    1  |1 1>+         0.00%    0.00%    0.00%    0.00%   38.53%    0.00%    0.00%    4.30%
 19  1     7    1  |1 1>+         1.84%    0.00%   48.16%    0.00%    0.00%    0.00%    5.30%    0.00%
 20  1     8    1  |1 1>+         0.00%   48.77%    0.00%    0.00%    0.00%    0.10%    0.00%    0.00%
 21  1     9    1  |1 1>+         0.00%    0.00%    0.00%   36.38%    0.00%    0.00%    0.00%    0.00%
 22  1    10    1  |1 1>+         0.00%    1.09%    0.00%    0.00%    0.00%   28.50%    0.00%    0.00%
 23  1    11    1  |1 1>+        48.24%    0.00%    1.84%    0.00%    0.00%    0.00%   23.28%    0.00%
 24  1    12    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.05%    0.00%    0.00%   35.68%
 25  1    13    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 26  1    14    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 27  1    15    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 28  1    16    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 29  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 30  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 31  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 32  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 33  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 34  1     6    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%   42.81%    0.00%    0.00%
 35  1     7    1  |1 0>          0.00%    0.00%    0.00%   23.51%    0.00%    0.00%    0.00%    0.00%
 36  1     8    1  |1 0>          0.00%    0.00%    0.00%    0.00%   23.51%    0.00%    0.00%    2.54%
 37  1     9    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   42.83%    0.00%
 38  1    10    1  |1 0>          0.00%    0.00%    0.00%    0.00%    1.53%    0.00%    0.00%   50.99%
 39  1    11    1  |1 0>          0.00%    0.00%    0.00%    1.53%    0.00%    0.00%    0.00%    0.00%
 40  1    12    1  |1 0>          0.00%    0.27%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 41  1    13    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 42  1    14    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 43  1    15    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 44  1    16    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 45  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 46  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 47  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 48  1     4    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 49  1     5    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 50  1     6    1  |1 1>-         0.00%    0.00%    0.00%   38.53%    0.00%    0.00%    0.00%    0.00%
 51  1     7    1  |1 1>-         0.00%   48.77%    0.00%    0.00%    0.00%    0.10%    0.00%    0.00%
 52  1     8    1  |1 1>-         1.85%    0.00%   48.15%    0.00%    0.00%    0.00%    5.31%    0.00%
 53  1     9    1  |1 1>-         0.00%    0.00%    0.00%    0.00%   36.38%    0.00%    0.00%    6.49%
 54  1    10    1  |1 1>-        48.07%    0.00%    1.85%    0.00%    0.00%    0.00%   23.27%    0.00%
 55  1    11    1  |1 1>-         0.00%    1.09%    0.00%    0.00%    0.00%   28.49%    0.00%    0.00%
 56  1    12    1  |1 1>-         0.00%    0.00%    0.00%    0.05%    0.00%    0.00%    0.00%    0.00%
 57  1    13    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 58  1    14    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 59  1    15    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 60  1    16    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.     41       42       43       44       45       46       47       48

  1  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  3  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  4  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  5  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  6  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  7  1     7    1  |0 0>          0.00%    0.00%   85.79%    0.00%    0.00%    0.00%    0.00%    0.00%
  8  1     8    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%   85.79%    0.00%    0.00%
  9  1     9    1  |0 0>          0.00%    0.00%    0.00%    0.00%   85.79%    0.00%    0.00%    0.00%
 10  1    10    1  |0 0>          0.00%    0.00%    0.00%    0.90%    0.00%    0.00%   84.89%    0.00%
 11  1    11    1  |0 0>          0.00%    0.00%    0.00%   84.88%    0.00%    0.00%    0.90%    0.00%
 12  1    12    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    2.09%
 13  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 14  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 15  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 16  1     4    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 17  1     5    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 18  1     6    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.23%    0.00%    0.00%
 19  1     7    1  |1 1>+         0.00%    0.00%    0.37%    0.00%    0.00%    0.00%    0.00%    0.00%
 20  1     8    1  |1 1>+         0.00%    0.17%    0.00%    0.02%    0.00%    0.00%    0.29%    0.00%
 21  1     9    1  |1 1>+         6.49%    0.00%    0.00%    0.00%    0.23%    0.00%    0.00%    0.00%
 22  1    10    1  |1 1>+         0.00%   21.38%    0.00%    0.25%    0.00%    0.00%    0.09%    0.00%
 23  1    11    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 24  1    12    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.14%    0.00%    0.00%
 25  1    13    1  |1 1>+         0.00%    0.00%    0.00%    1.72%    0.00%    0.00%    7.11%   32.64%
 26  1    14    1  |1 1>+         0.00%    0.00%    6.62%    0.00%    0.00%    0.00%    0.00%    0.00%
 27  1    15    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    6.62%    0.00%    0.00%
 28  1    16    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 29  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 30  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 31  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 32  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 33  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 34  1     6    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.23%    0.00%
 35  1     7    1  |1 0>          2.54%    0.00%    0.00%    0.00%    0.01%    0.00%    0.00%    0.00%
 36  1     8    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    0.00%    0.00%
 37  1     9    1  |1 0>          0.00%    0.00%    0.23%    0.00%    0.00%    0.00%    0.00%    0.00%
 38  1    10    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.36%    0.00%    0.00%
 39  1    11    1  |1 0>         50.99%    0.00%    0.00%    0.00%    0.36%    0.00%    0.00%    0.00%
 40  1    12    1  |1 0>          0.00%   56.88%    0.00%    0.42%    0.00%    0.00%    0.00%    0.00%
 41  1    13    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    6.62%    0.00%    0.00%
 42  1    14    1  |1 0>          0.00%    0.00%    0.00%    0.00%    6.62%    0.00%    0.00%    0.00%
 43  1    15    1  |1 0>          0.00%    0.00%    0.00%    8.79%    0.00%    0.00%    0.04%   32.63%
 44  1    16    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 45  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 46  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 47  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 48  1     4    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 49  1     5    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 50  1     6    1  |1 1>-         4.30%    0.00%    0.00%    0.00%    0.23%    0.00%    0.00%    0.00%
 51  1     7    1  |1 1>-         0.00%    0.17%    0.00%    0.00%    0.00%    0.00%    0.31%    0.00%
 52  1     8    1  |1 1>-         0.00%    0.00%    0.37%    0.00%    0.00%    0.00%    0.00%    0.00%
 53  1     9    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.23%    0.00%    0.00%
 54  1    10    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 55  1    11    1  |1 1>-         0.00%   21.39%    0.00%    0.29%    0.00%    0.00%    0.05%    0.00%
 56  1    12    1  |1 1>-        35.68%    0.00%    0.00%    0.00%    0.14%    0.00%    0.00%    0.00%
 57  1    13    1  |1 1>-         0.00%    0.00%    6.62%    0.00%    0.00%    0.00%    0.00%    0.00%
 58  1    14    1  |1 1>-         0.00%    0.00%    0.00%    2.74%    0.00%    0.00%    6.09%   32.64%
 59  1    15    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    6.62%    0.00%    0.00%    0.00%
 60  1    16    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.     49       50       51       52       53       54       55       56

  1  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  3  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  4  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  5  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  6  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  7  1     7    1  |0 0>          0.00%    0.00%    0.00%   13.18%    0.00%    0.00%    0.00%    0.00%
  8  1     8    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%   13.18%    0.00%    0.00%
  9  1     9    1  |0 0>          0.00%    0.00%    0.00%    0.00%   13.18%    0.00%    0.00%    0.00%
 10  1    10    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   13.17%    0.02%
 11  1    11    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.02%   13.18%
 12  1    12    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 13  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 14  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 15  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 16  1     4    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 17  1     5    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 18  1     6    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.02%    0.00%    0.00%
 19  1     7    1  |1 1>+         0.00%    0.00%    0.00%    0.03%    0.00%    0.00%    0.00%    0.00%
 20  1     8    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.02%    0.00%
 21  1     9    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.02%    0.00%    0.00%    0.00%
 22  1    10    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    0.02%
 23  1    11    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 24  1    12    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    0.00%    0.00%
 25  1    13    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   43.35%   14.48%
 26  1    14    1  |1 1>+        50.00%    0.00%    0.00%   43.37%    0.00%    0.00%    0.00%    0.00%
 27  1    15    1  |1 1>+         0.00%    0.00%   49.99%    0.00%    0.00%   43.38%    0.00%    0.00%
 28  1    16    1  |1 1>+         0.00%    0.01%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 29  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 30  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 31  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 32  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 33  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 34  1     6    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.02%    0.00%
 35  1     7    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 36  1     8    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 37  1     9    1  |1 0>          0.00%    0.00%    0.00%    0.02%    0.00%    0.00%    0.00%    0.00%
 38  1    10    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.03%    0.00%    0.00%
 39  1    11    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.03%    0.00%    0.00%    0.00%
 40  1    12    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.03%
 41  1    13    1  |1 0>          0.00%    0.00%   50.00%    0.00%    0.00%   43.37%    0.00%    0.00%
 42  1    14    1  |1 0>          0.00%   50.00%    0.00%    0.00%   43.37%    0.00%    0.00%    0.00%
 43  1    15    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   57.83%
 44  1    16    1  |1 0>          0.01%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 45  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 46  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 47  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 48  1     4    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 49  1     5    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 50  1     6    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.02%    0.00%    0.00%    0.00%
 51  1     7    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.02%    0.00%
 52  1     8    1  |1 1>-         0.00%    0.00%    0.00%    0.03%    0.00%    0.00%    0.00%    0.00%
 53  1     9    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.02%    0.00%    0.00%
 54  1    10    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 55  1    11    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    0.02%
 56  1    12    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.01%    0.00%    0.00%    0.00%
 57  1    13    1  |1 1>-        50.00%    0.00%    0.00%   43.37%    0.00%    0.00%    0.00%    0.00%
 58  1    14    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   43.39%   14.43%
 59  1    15    1  |1 1>-         0.00%   49.99%    0.00%    0.00%   43.38%    0.00%    0.00%    0.00%
 60  1    16    1  |1 1>-         0.00%    0.00%    0.01%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.     57       58       59       60

  1  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%
  3  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%
  4  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%
  5  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%
  6  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%
  7  1     7    1  |0 0>          0.00%    0.00%    0.00%    0.00%
  8  1     8    1  |0 0>          0.00%    0.00%    0.00%    0.00%
  9  1     9    1  |0 0>          0.00%    0.00%    0.00%    0.00%
 10  1    10    1  |0 0>          0.00%    0.00%    0.00%    0.00%
 11  1    11    1  |0 0>          0.00%    0.00%    0.00%    0.00%
 12  1    12    1  |0 0>         97.91%    0.00%    0.00%    0.00%
 13  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.00%
 14  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.00%
 15  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.00%
 16  1     4    1  |1 1>+         0.00%    0.00%    0.00%    0.00%
 17  1     5    1  |1 1>+         0.00%    0.00%    0.00%    0.00%
 18  1     6    1  |1 1>+         0.00%    0.00%    0.00%    0.00%
 19  1     7    1  |1 1>+         0.00%    0.00%    0.00%    0.00%
 20  1     8    1  |1 1>+         0.00%    0.00%    0.00%    0.00%
 21  1     9    1  |1 1>+         0.00%    0.00%    0.00%    0.00%
 22  1    10    1  |1 1>+         0.00%    0.00%    0.00%    0.00%
 23  1    11    1  |1 1>+         0.00%    0.00%    0.00%    0.00%
 24  1    12    1  |1 1>+         0.00%    0.00%    0.00%    0.00%
 25  1    13    1  |1 1>+         0.70%    0.00%    0.00%    0.00%
 26  1    14    1  |1 1>+         0.00%    0.00%    0.00%    0.00%
 27  1    15    1  |1 1>+         0.00%    0.00%    0.00%    0.00%
 28  1    16    1  |1 1>+         0.00%    0.00%    0.00%   99.99%
 29  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%
 30  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.00%
 31  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.00%
 32  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.00%
 33  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.00%
 34  1     6    1  |1 0>          0.00%    0.00%    0.00%    0.00%
 35  1     7    1  |1 0>          0.00%    0.00%    0.00%    0.00%
 36  1     8    1  |1 0>          0.00%    0.00%    0.00%    0.00%
 37  1     9    1  |1 0>          0.00%    0.00%    0.00%    0.00%
 38  1    10    1  |1 0>          0.00%    0.00%    0.00%    0.00%
 39  1    11    1  |1 0>          0.00%    0.00%    0.00%    0.00%
 40  1    12    1  |1 0>          0.00%    0.00%    0.00%    0.00%
 41  1    13    1  |1 0>          0.00%    0.00%    0.00%    0.00%
 42  1    14    1  |1 0>          0.00%    0.00%    0.00%    0.00%
 43  1    15    1  |1 0>          0.70%    0.00%    0.00%    0.00%
 44  1    16    1  |1 0>          0.00%   99.99%    0.00%    0.00%
 45  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.00%
 46  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%
 47  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%
 48  1     4    1  |1 1>-         0.00%    0.00%    0.00%    0.00%
 49  1     5    1  |1 1>-         0.00%    0.00%    0.00%    0.00%
 50  1     6    1  |1 1>-         0.00%    0.00%    0.00%    0.00%
 51  1     7    1  |1 1>-         0.00%    0.00%    0.00%    0.00%
 52  1     8    1  |1 1>-         0.00%    0.00%    0.00%    0.00%
 53  1     9    1  |1 1>-         0.00%    0.00%    0.00%    0.00%
 54  1    10    1  |1 1>-         0.00%    0.00%    0.00%    0.00%
 55  1    11    1  |1 1>-         0.00%    0.00%    0.00%    0.00%
 56  1    12    1  |1 1>-         0.00%    0.00%    0.00%    0.00%
 57  1    13    1  |1 1>-         0.00%    0.00%    0.00%    0.00%
 58  1    14    1  |1 1>-         0.70%    0.00%    0.00%    0.00%
 59  1    15    1  |1 1>-         0.00%    0.00%    0.00%    0.00%
 60  1    16    1  |1 1>-         0.00%    0.00%   99.99%    0.00%



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      26       58.84       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1700(1)
                                         EKIN      POT     PPINT     H0       H01     AOSYM    OPER      SMH    MOLCAS    OPER   
                                         1380     1101     1401     1411     1650(1)  1700(2)
                                         JKOP      SR      EKINR    POTR    MOLCAS    OPER   

              2       8      914.39       700     1000      520     2100     2140     2141     5101     5103   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI     LSINT        CI        CI     MULTI     MULTI   RHF-SCF       INT
 CPU TIMES  *      2486.31   1669.57      0.32    528.35    278.07      3.40      2.74      0.75      2.83
 REAL TIME  *      2685.94 SEC
 DISK USED  *       973.30 MB (local),       11.88 GB (total)
 SF USED    *         5.19 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCV5Z-PP energy=    -25.272696946448

              CI              CI           MULTI           MULTI         RHF-SCF
    -25.24916626    -25.24923633    -25.00448055    -25.00505262    -25.09501761
 **********************************************************************************************************************************
 Molpro calculation terminated
