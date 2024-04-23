
 Working directory              : /wrk/irikura/molpro.RvoDGSEoTL/
 Global scratch directory       : /wrk/irikura/molpro.RvoDGSEoTL/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.RvoDGSEoTL/

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
 
 basis=aug-cc-pwCVQZ-PP
 
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
 Default parameters read. Elapsed time= 0.08 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2021.2 linked Jun  2 2021 00:13:23


 **********************************************************************************************************************************
 LABEL *   Ba SO-CI                                                                      
  64 bit mpp version                                                                     DATE: 17-Apr-24          TIME: 16:01:59  
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

 SETTING BASIS          =    AUG-CC-PWCVQZ-PP


 Recomputing integrals since basis changed


 Using spherical harmonics

 Library entry Ba   ECP ECP46MDF                 selected for group  1
 Library entry BA     S aug-cc-pwCVQZ-PP     selected for orbital group  1
 Library entry BA     P aug-cc-pwCVQZ-PP     selected for orbital group  1
 Library entry BA     D aug-cc-pwCVQZ-PP     selected for orbital group  1
 Library entry BA     F aug-cc-pwCVQZ-PP     selected for orbital group  1
 Library entry BA     G aug-cc-pwCVQZ-PP     selected for orbital group  1


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
 NUMBER OF PRIMITIVE AOS:         268
 NUMBER OF SYMMETRY AOS:          210
 NUMBER OF CONTRACTIONS:          146   (   77Ag  +   69Au  )
 NUMBER OF INNER CORE ORBITALS:     0   (    0Ag  +    0Au  )
 NUMBER OF OUTER CORE ORBITALS:     4   (    1Ag  +    3Au  )
 NUMBER OF VALENCE ORBITALS:        1   (    1Ag  +    0Au  )


 LX: Ag           LY: Ag           LZ: Ag 


 NUCLEAR REPULSION ENERGY    0.00000000

 EXTRA SYMMETRY OF AOS IN SYMMETRY 1:   1 1 1 1 1 1 1 1 1 1   2 3 4 5 6 2 3 4 5 6   2 3 4 5 6 2 3 4 5 6   2 3 4 5 6 2 3 4 5 6
                                        2 3 4 5 6 2 3 4 5 6   7 8 9101112131415 7   8 9101112131415 7 8   9101112131415
 EXTRA SYMMETRY OF AOS IN SYMMETRY 2:   1 2 3 1 2 3 1 2 3 1   2 3 1 2 3 1 2 3 1 2   3 1 2 3 1 2 3 4 5 6   7 8 910 4 5 6 7 8 9
                                       10 4 5 6 7 8 910 4 5   6 7 8 910 4 5 6 7 8   910 4 5 6 7 8 910


 Eigenvalues of metric

         1 0.825E-05 0.527E-04 0.527E-04 0.527E-04 0.527E-04 0.527E-04 0.169E-03 0.185E-02
         2 0.515E-04 0.515E-04 0.515E-04 0.328E-02 0.328E-02 0.328E-02 0.741E-02 0.741E-02


 Contracted 2-electron integrals neglected if value below      1.0D-12
 AO integral compression algorithm  1   Integral accuracy      1.0D-12

     72.090 MB (compressed) written to integral file ( 15.8%)

     Node minimum: 3.408 MB, node maximum: 8.389 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:    2430921.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:    2430921      RECORD LENGTH: 524288

 Memory used in sort:       2.99 MW

 SORT1 READ    56868420. AND WROTE      454064. INTEGRALS IN      2 RECORDS. CPU TIME:     0.28 SEC, REAL TIME:     0.29 SEC
 SORT2 READ     5623101. AND WROTE    29184561. INTEGRALS IN    312 RECORDS. CPU TIME:     0.04 SEC, REAL TIME:     0.06 SEC

 Node minimum:     2427313.  Node maximum:     2441289. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      19       29.14       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         1.42      1.23
 REAL TIME  *         2.01 SEC
 DISK USED  *        29.44 MB (local),      486.51 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 Program * Restricted Hartree-Fock

 Orbital guess generated from atomic densities. Full valence occupancy:    2   3

 Initial occupancy:   2   3

 NELEC=   10   SYM=1   MS2= 0   THRE=1.0D-08   THRD=3.2D-06   THRG=3.2D-06  HFMA2=F  DIIS_START=2   DIIS_MAX=10   DIIS_INCORE=F

 Level shifts:    0.00 (CLOSED)    0.00 (OPEN)    0.30 (GAP_MIN)

 ITER           ETOT              DE          GRAD        DDIFF     DIIS  NEXP   TIME(IT)  TIME(TOT)  DIAG
   1      -25.09501583     -25.09501583     0.00D+00     0.61D-01     0     0       0.03      0.04    start
   2      -25.09501583      -0.00000000     0.33D-06     0.12D-04     1     0       0.01      0.05    diag
   3      -25.09501583      -0.00000000     0.73D-07     0.28D-05     2     0       0.02      0.07    diag
   4      -25.09501583      -0.00000000     0.37D-07     0.82D-06     0     0       0.01      0.08    diag

 Final occupancy:   2   3

 !RHF STATE 1.1 Energy                -25.095015830786
  RHF One-electron energy             -41.272197745096
  RHF Two-electron energy              16.177181914310
  RHF Kinetic energy                    6.695431520635
  RHF Nuclear energy                    0.000000000000
  RHF Virial quotient                  -3.748080426697

 !RHF STATE 1.1 Dipole moment           0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 ELECTRON ORBITALS
 =================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -1.60487     1  1  s    0.99978
    2.1     2.00000    -0.16318     1  2  s    1.00202
    1.2     2.00000    -0.89696     1  1  pz   1.00050
    2.2     2.00000    -0.89696     1  1  px   1.00050
    3.2     2.00000    -0.89696     1  1  py   1.00050


 HOMO      2.1    -0.163179 =      -4.4403eV
 LUMO      4.2     0.006937 =       0.1888eV
 LUMO-HOMO         0.170116 =       4.6291eV

 Orbitals saved in record  2100.2


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      19       29.14       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    

              2       4        2.80       700     1000      520     2100   
                                         GEOM     BASIS   MCVARS     RHF  

 PROGRAMS   *        TOTAL   RHF-SCF       INT
 CPU TIMES  *         1.52      0.10      1.23
 REAL TIME  *         2.14 SEC
 DISK USED  *        32.46 MB (local),      522.79 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of closed-shell orbitals:   4 (   1   3 )
 Number of active  orbitals:        7 (   7   0 )
 Number of external orbitals:     135 (  69  66 )

 State symmetry 1

 Number of active electrons:   2    Spin symmetry=Singlet   Space symmetry=1
 Number of states:             1
 Number of CSFs:              28   (49 determinants, 49 intermediate states)

 State symmetry 2

 Number of active electrons:   2    Spin symmetry=Triplet   Space symmetry=1
 Number of states:            15
 Number of CSFs:              21   (21 determinants, 21 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.591D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.634D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.571D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.606D+00 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 4 6 3 5 2 3 5   4 6 2 1 5 3 6 4 2 1  13101514 812 711 9 2   6 4 5 3 1 2 6 4 5 3
                                        812 7 91114151310 1   4 6 3 5 213101415 9  11 7 812 4 6 3 5 2 1   4 6 3 5 2 1 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.188D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.188D-02 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 1 2 3 1 2 1 2 3 3   1 2 6 9 7 4 5 810 1   2 3 4 5 7 910 8 6 1   2 3 9 7 810 4 5 6 1
                                        2 3 5 410 8 6 9 7 8  10 6 5 4 9 7 1 2 3 4   5 610 8 9 7 1 2 3

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.06250
 Weight factors for state symmetry  2:    0.06250   0.06250   0.06250   0.06250   0.06250   0.06250   0.06250   0.06250
                                          0.06250   0.06250   0.06250   0.06250   0.06250   0.06250   0.06250
 
 Number of orbital rotations:  757  ( 7 closed/active, 267 closed/virtual, 0 active/active, 483 active/virtual )
 Total number of variables:    1121
 
  Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1   12   22    5    -24.90420515     -25.04352267   -0.13931751    0.05839273 0.00029714 0.00000000  0.21E+01      0.53
   2    7   12    0    -25.01776700     -25.02476407   -0.00699707    0.07790947 0.00000875 0.00000000  0.44E+00      0.97
   3    8   14    0    -25.02481472     -25.02481826   -0.00000354    0.00134515 0.00000045 0.00000000  0.83E-02      1.44
   4    5   10    0    -25.02481826     -25.02481826   -0.00000000    0.00000197 0.00000000 0.00000000  0.17E-04      1.79

 CONVERGENCE REACHED!  Final gradient:    0.00000000 ( 0.69E-11)
                       Final energy:    -25.02481826
 
 Results for state 1.1 Singlet
 =============================
 !MCSCF STATE 1.1 Singlet Energy               -25.101298492080
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.62020344
 One electron energy                           -41.24996156
 Two electron energy                            16.14866307
 Virial ratio                                    4.79162041
 
 !MCSCF STATE 1.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.1 Triplet
 =============================
 !MCSCF STATE 1.1 Triplet Energy               -25.061337069362
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.80640263
 One electron energy                           -41.50980667
 Two electron energy                            16.44846961
 Virial ratio                                    4.68202389
 
 !MCSCF STATE 1.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Triplet
 =============================
 !MCSCF STATE 2.1 Triplet Energy               -25.061337069362
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.80640263
 One electron energy                           -41.50980667
 Two electron energy                            16.44846961
 Virial ratio                                    4.68202389
 
 !MCSCF STATE 2.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Triplet
 =============================
 !MCSCF STATE 3.1 Triplet Energy               -25.061337069362
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.80640263
 One electron energy                           -41.50980667
 Two electron energy                            16.44846961
 Virial ratio                                    4.68202389
 
 !MCSCF STATE 3.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Triplet
 =============================
 !MCSCF STATE 4.1 Triplet Energy               -25.061337069362
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.80640263
 One electron energy                           -41.50980667
 Two electron energy                            16.44846961
 Virial ratio                                    4.68202389
 
 !MCSCF STATE 4.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Triplet
 =============================
 !MCSCF STATE 5.1 Triplet Energy               -25.061337069362
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.80640263
 One electron energy                           -41.50980667
 Two electron energy                            16.44846961
 Virial ratio                                    4.68202389
 
 !MCSCF STATE 5.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Triplet
 =============================
 !MCSCF STATE 6.1 Triplet Energy               -25.005097128294
 Nuclear energy                                  0.00000000
 Kinetic energy                                  7.05209748
 One electron energy                           -41.91454139
 Two electron energy                            16.90944426
 Virial ratio                                    4.54576737
 
 !MCSCF STATE 6.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.1 Triplet
 =============================
 !MCSCF STATE 7.1 Triplet Energy               -25.005097128294
 Nuclear energy                                  0.00000000
 Kinetic energy                                  7.05209748
 One electron energy                           -41.91454139
 Two electron energy                            16.90944426
 Virial ratio                                    4.54576737
 
 !MCSCF STATE 7.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.1 Triplet
 =============================
 !MCSCF STATE 8.1 Triplet Energy               -25.005097128293
 Nuclear energy                                  0.00000000
 Kinetic energy                                  7.05209748
 One electron energy                           -41.91454139
 Two electron energy                            16.90944426
 Virial ratio                                    4.54576737
 
 !MCSCF STATE 8.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 9.1 Triplet
 =============================
 !MCSCF STATE 9.1 Triplet Energy               -25.005097128293
 Nuclear energy                                  0.00000000
 Kinetic energy                                  7.05209748
 One electron energy                           -41.91454139
 Two electron energy                            16.90944426
 Virial ratio                                    4.54576737
 
 !MCSCF STATE 9.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 10.1 Triplet
 ==============================
 !MCSCF STATE 10.1 Triplet Energy              -25.005097128293
 Nuclear energy                                  0.00000000
 Kinetic energy                                  7.05209748
 One electron energy                           -41.91454139
 Two electron energy                            16.90944426
 Virial ratio                                    4.54576737
 
 !MCSCF STATE 10.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 11.1 Triplet
 ==============================
 !MCSCF STATE 11.1 Triplet Energy              -25.005097128293
 Nuclear energy                                  0.00000000
 Kinetic energy                                  7.05209748
 One electron energy                           -41.91454139
 Two electron energy                            16.90944426
 Virial ratio                                    4.54576737
 
 !MCSCF STATE 11.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 12.1 Triplet
 ==============================
 !MCSCF STATE 12.1 Triplet Energy              -25.005097128293
 Nuclear energy                                  0.00000000
 Kinetic energy                                  7.05209748
 One electron energy                           -41.91454139
 Two electron energy                            16.90944426
 Virial ratio                                    4.54576737
 
 !MCSCF STATE 12.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 13.1 Triplet
 ==============================
 !MCSCF STATE 13.1 Triplet Energy              -24.984476160247
 Nuclear energy                                  0.00000000
 Kinetic energy                                  7.05209748
 One electron energy                           -41.91454139
 Two electron energy                            16.93006523
 Virial ratio                                    4.54284328
 
 !MCSCF STATE 13.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 14.1 Triplet
 ==============================
 !MCSCF STATE 14.1 Triplet Energy              -24.984476160247
 Nuclear energy                                  0.00000000
 Kinetic energy                                  7.05209748
 One electron energy                           -41.91454139
 Two electron energy                            16.93006523
 Virial ratio                                    4.54284328
 
 !MCSCF STATE 14.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 15.1 Triplet
 ==============================
 !MCSCF STATE 15.1 Triplet Energy              -24.984476160246
 Nuclear energy                                  0.00000000
 Kinetic energy                                  7.05209748
 One electron energy                           -41.91454139
 Two electron energy                            16.93006523
 Virial ratio                                    4.54284328
 
 !MCSCF STATE 15.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 !MCSCF expec      <1.1 Singlet|LXLX|1.1 Singlet>    -0.000000000000
 !MCSCF expec      <1.1 Triplet|LXLX|1.1 Triplet>     0.999922572686
 !MCSCF expec      <2.1 Triplet|LXLX|2.1 Triplet>     1.006180374210
 !MCSCF expec      <3.1 Triplet|LXLX|3.1 Triplet>     2.993897053122
 !MCSCF expec      <4.1 Triplet|LXLX|4.1 Triplet>     1.000000000000
 !MCSCF expec      <5.1 Triplet|LXLX|5.1 Triplet>     3.999999999981
 !MCSCF expec      <6.1 Triplet|LXLX|6.1 Triplet>     3.999401219044
 !MCSCF expec      <7.1 Triplet|LXLX|7.1 Triplet>     3.999998900207
 !MCSCF expec      <8.1 Triplet|LXLX|8.1 Triplet>     2.548311713152
 !MCSCF expec      <9.1 Triplet|LXLX|9.1 Triplet>     0.774187688155
 !MCSCF expec    <10.1 Triplet|LXLX|10.1 Triplet>     6.000598487026
 !MCSCF expec    <11.1 Triplet|LXLX|11.1 Triplet>     7.451689386642
 !MCSCF expec    <12.1 Triplet|LXLX|12.1 Triplet>     3.225812605775
 !MCSCF expec    <13.1 Triplet|LXLX|13.1 Triplet>     0.000000001783
 !MCSCF expec    <14.1 Triplet|LXLX|14.1 Triplet>     1.000000000000
 !MCSCF expec    <15.1 Triplet|LXLX|15.1 Triplet>     0.999999998217
 
 !MCSCF expec      <1.1 Singlet|LYLY|1.1 Singlet>    -0.000000000000
 !MCSCF expec      <1.1 Triplet|LYLY|1.1 Triplet>     1.000085899094
 !MCSCF expec      <2.1 Triplet|LYLY|2.1 Triplet>     0.993832335338
 !MCSCF expec      <3.1 Triplet|LYLY|3.1 Triplet>     3.006081765568
 !MCSCF expec      <4.1 Triplet|LYLY|4.1 Triplet>     4.000000000000
 !MCSCF expec      <5.1 Triplet|LYLY|5.1 Triplet>     1.000000000000
 !MCSCF expec      <6.1 Triplet|LYLY|6.1 Triplet>     4.000597972406
 !MCSCF expec      <7.1 Triplet|LYLY|7.1 Triplet>     3.999998238217
 !MCSCF expec      <8.1 Triplet|LYLY|8.1 Triplet>     0.776357307949
 !MCSCF expec      <9.1 Triplet|LYLY|9.1 Triplet>     2.552649060449
 !MCSCF expec    <10.1 Triplet|LYLY|10.1 Triplet>     5.999399817157
 !MCSCF expec    <11.1 Triplet|LYLY|11.1 Triplet>     3.223644453834
 !MCSCF expec    <12.1 Triplet|LYLY|12.1 Triplet>     7.447353149989
 !MCSCF expec    <13.1 Triplet|LYLY|13.1 Triplet>     1.000000000000
 !MCSCF expec    <14.1 Triplet|LYLY|14.1 Triplet>    -0.000000000000
 !MCSCF expec    <15.1 Triplet|LYLY|15.1 Triplet>     1.000000000000
 
 !MCSCF expec      <1.1 Singlet|LZLZ|1.1 Singlet>    -0.000000000000
 !MCSCF expec      <1.1 Triplet|LZLZ|1.1 Triplet>     3.999991528220
 !MCSCF expec      <2.1 Triplet|LZLZ|2.1 Triplet>     3.999987290452
 !MCSCF expec      <3.1 Triplet|LZLZ|3.1 Triplet>     0.000021181310
 !MCSCF expec      <4.1 Triplet|LZLZ|4.1 Triplet>     1.000000000000
 !MCSCF expec      <5.1 Triplet|LZLZ|5.1 Triplet>     1.000000000019
 !MCSCF expec      <6.1 Triplet|LZLZ|6.1 Triplet>     4.000000808550
 !MCSCF expec      <7.1 Triplet|LZLZ|7.1 Triplet>     4.000002861577
 !MCSCF expec      <8.1 Triplet|LZLZ|8.1 Triplet>     8.675330978899
 !MCSCF expec      <9.1 Triplet|LZLZ|9.1 Triplet>     8.673163251397
 !MCSCF expec    <10.1 Triplet|LZLZ|10.1 Triplet>     0.000001695818
 !MCSCF expec    <11.1 Triplet|LZLZ|11.1 Triplet>     1.324666159524
 !MCSCF expec    <12.1 Triplet|LZLZ|12.1 Triplet>     1.326834244236
 !MCSCF expec    <13.1 Triplet|LZLZ|13.1 Triplet>     0.999999998217
 !MCSCF expec    <14.1 Triplet|LZLZ|14.1 Triplet>     1.000000000000
 !MCSCF expec    <15.1 Triplet|LZLZ|15.1 Triplet>     0.000000001783
 
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
    1.1     2.00000    -1.52888     1  1  s    1.04699
    2.1     0.43189    -0.01817     1  2  s    0.79212
    3.1     0.31353     0.06709     1  1  d2-  0.84866
    4.1     0.31353     0.06709     1  1  d2+  0.84866
    5.1     0.31353     0.06709     1  1  d1+  0.84866
    6.1     0.31353     0.06709     1  1  d1-  0.84866
    7.1     0.31353     0.06709     1  1  d0   0.84866
    8.1     0.00045     0.20604     1  1  s    2.01230    1  2  s    7.70271    1  3  s    1.90965    1  5  s   -7.00980
                                    1  6  s   -1.97429    1  9  s    0.38220
    1.2     2.00000    -0.83296     1  1  pz   1.02715
    2.2     2.00000    -0.83296     1  1  py   1.02715
    3.2     2.00000    -0.83296     1  1  px   1.02715
 *** IN SYMMETRY  1 ORBITAL  11 SYMMETRY CONTAMINATION OF 0.632D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  12 SYMMETRY CONTAMINATION OF 0.584D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  13 SYMMETRY CONTAMINATION OF 0.584D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  14 SYMMETRY CONTAMINATION OF 0.460D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  16 SYMMETRY CONTAMINATION OF 0.500D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  17 SYMMETRY CONTAMINATION OF 0.562D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  18 SYMMETRY CONTAMINATION OF 0.562D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  19 SYMMETRY CONTAMINATION OF 0.794D-03 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  21 SYMMETRY CONTAMINATION OF 0.593D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  22 SYMMETRY CONTAMINATION OF 0.593D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  23 SYMMETRY CONTAMINATION OF 0.868D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  24 SYMMETRY CONTAMINATION OF 0.113D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  25 SYMMETRY CONTAMINATION OF 0.757D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  26 SYMMETRY CONTAMINATION OF 0.219D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  27 SYMMETRY CONTAMINATION OF 0.402D-03 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  28 SYMMETRY CONTAMINATION OF 0.314D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  29 SYMMETRY CONTAMINATION OF 0.314D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  30 SYMMETRY CONTAMINATION OF 0.287D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  32 SYMMETRY CONTAMINATION OF 0.410D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  33 SYMMETRY CONTAMINATION OF 0.410D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  34 SYMMETRY CONTAMINATION OF 0.140D-03 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  36 SYMMETRY CONTAMINATION OF 0.865D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  37 SYMMETRY CONTAMINATION OF 0.878D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  38 SYMMETRY CONTAMINATION OF 0.163D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  41 SYMMETRY CONTAMINATION OF 0.234D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  42 SYMMETRY CONTAMINATION OF 0.234D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  43 SYMMETRY CONTAMINATION OF 0.148D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  44 SYMMETRY CONTAMINATION OF 0.202D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  45 SYMMETRY CONTAMINATION OF 0.185D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  46 SYMMETRY CONTAMINATION OF 0.485D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  47 SYMMETRY CONTAMINATION OF 0.485D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  48 SYMMETRY CONTAMINATION OF 0.421D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  49 SYMMETRY CONTAMINATION OF 0.421D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  51 SYMMETRY CONTAMINATION OF 0.122D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  52 SYMMETRY CONTAMINATION OF 0.122D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  53 SYMMETRY CONTAMINATION OF 0.344D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  56 SYMMETRY CONTAMINATION OF 0.807D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  57 SYMMETRY CONTAMINATION OF 0.807D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  58 SYMMETRY CONTAMINATION OF 0.578D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  59 SYMMETRY CONTAMINATION OF 0.577D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  60 SYMMETRY CONTAMINATION OF 0.873D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  61 SYMMETRY CONTAMINATION OF 0.571D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  62 SYMMETRY CONTAMINATION OF 0.292D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  63 SYMMETRY CONTAMINATION OF 0.287D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  64 SYMMETRY CONTAMINATION OF 0.129D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  65 SYMMETRY CONTAMINATION OF 0.267D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  67 SYMMETRY CONTAMINATION OF 0.165D-03 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  68 SYMMETRY CONTAMINATION OF 0.165D-03 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  71 SYMMETRY CONTAMINATION OF 0.363D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  73 SYMMETRY CONTAMINATION OF 0.136D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  74 SYMMETRY CONTAMINATION OF 0.136D-01 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 3 5 4 6 2 1 1 3   5 6 4 2 3 5 6 4 2 1  15141310 812 7 911 5   3 4 6 2 1 4 6 5 3 2
                                        911 7 81214151310 1   4 6 5 3 211 91310 8  121514 7 5 3 4 6 2 1   5 3 4 6 2 1 1
 *** IN SYMMETRY  2 ORBITAL   5 SYMMETRY CONTAMINATION OF 0.320D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL   6 SYMMETRY CONTAMINATION OF 0.320D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL   8 SYMMETRY CONTAMINATION OF 0.138D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL   9 SYMMETRY CONTAMINATION OF 0.138D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  10 SYMMETRY CONTAMINATION OF 0.989D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  11 SYMMETRY CONTAMINATION OF 0.989D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  13 SYMMETRY CONTAMINATION OF 0.736D-03 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  14 SYMMETRY CONTAMINATION OF 0.528D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  15 SYMMETRY CONTAMINATION OF 0.528D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  16 SYMMETRY CONTAMINATION OF 0.475D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  17 SYMMETRY CONTAMINATION OF 0.475D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  18 SYMMETRY CONTAMINATION OF 0.183D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  19 SYMMETRY CONTAMINATION OF 0.183D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  20 SYMMETRY CONTAMINATION OF 0.885D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  21 SYMMETRY CONTAMINATION OF 0.885D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  23 SYMMETRY CONTAMINATION OF 0.112D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  24 SYMMETRY CONTAMINATION OF 0.113D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  25 SYMMETRY CONTAMINATION OF 0.514D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  26 SYMMETRY CONTAMINATION OF 0.514D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  27 SYMMETRY CONTAMINATION OF 0.172D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  28 SYMMETRY CONTAMINATION OF 0.172D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  29 SYMMETRY CONTAMINATION OF 0.190D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  30 SYMMETRY CONTAMINATION OF 0.364D-03 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  31 SYMMETRY CONTAMINATION OF 0.364D-03 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  33 SYMMETRY CONTAMINATION OF 0.534D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  34 SYMMETRY CONTAMINATION OF 0.534D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  35 SYMMETRY CONTAMINATION OF 0.138D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  36 SYMMETRY CONTAMINATION OF 0.137D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  37 SYMMETRY CONTAMINATION OF 0.250D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  38 SYMMETRY CONTAMINATION OF 0.178D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  39 SYMMETRY CONTAMINATION OF 0.178D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  40 SYMMETRY CONTAMINATION OF 0.178D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  41 SYMMETRY CONTAMINATION OF 0.178D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  43 SYMMETRY CONTAMINATION OF 0.131D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  44 SYMMETRY CONTAMINATION OF 0.129D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  45 SYMMETRY CONTAMINATION OF 0.241D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  46 SYMMETRY CONTAMINATION OF 0.241D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  47 SYMMETRY CONTAMINATION OF 0.345D-03 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  48 SYMMETRY CONTAMINATION OF 0.142D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  49 SYMMETRY CONTAMINATION OF 0.142D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  50 SYMMETRY CONTAMINATION OF 0.572D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  51 SYMMETRY CONTAMINATION OF 0.571D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  52 SYMMETRY CONTAMINATION OF 0.175D-03 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  53 SYMMETRY CONTAMINATION OF 0.112D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  54 SYMMETRY CONTAMINATION OF 0.112D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  55 SYMMETRY CONTAMINATION OF 0.159D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  56 SYMMETRY CONTAMINATION OF 0.159D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  57 SYMMETRY CONTAMINATION OF 0.284D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  58 SYMMETRY CONTAMINATION OF 0.284D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  60 SYMMETRY CONTAMINATION OF 0.370D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  61 SYMMETRY CONTAMINATION OF 0.371D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  62 SYMMETRY CONTAMINATION OF 0.531D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  63 SYMMETRY CONTAMINATION OF 0.299D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  64 SYMMETRY CONTAMINATION OF 0.438D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  65 SYMMETRY CONTAMINATION OF 0.294D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  66 SYMMETRY CONTAMINATION OF 0.294D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  67 SYMMETRY CONTAMINATION OF 0.349D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  68 SYMMETRY CONTAMINATION OF 0.349D+00 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 2 1 3 1 2 3 1 2 1   2 3 6 5 4 7 9 810 1   2 3 4 5 7 9 810 6 1   2 3 7 9 4 5 6 810 1
                                        2 3 4 5 810 6 9 7 4   5 6 9 7 810 1 2 310   8 4 5 6 9 7 1 2 3
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Reoptimze the CI vectors with natural orbitals 
 
 CI Coefficients of symmetry 1 (Singlet)
 =======================================
 
 2000000        0.97688596
 0200000       -0.09094390
 0020000       -0.09094390
 0002000       -0.09094390
 0000200       -0.09094390
 0000020       -0.09094390
 
 Energy:      -25.10129849
 
 
 CI Coefficients of symmetry 1 (Triplet)
 =======================================

 State:              1               2               3               4               5               6               7
 00a00a0        0.00000000      0.00000000      0.00000000      0.00000000     -0.00000000     -0.00000000      1.00000000
 0a000a0        0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000000      1.00000000     -0.00000000
 aa00000        0.99991742     -0.00000000     -0.00000000     -0.00000000      0.00000000     -0.00000000     -0.00000000
 a0a0000        0.00000000      0.99991742     -0.00000000     -0.00000125      0.00000000     -0.00000000     -0.00000000
 a0000a0       -0.00000000     -0.00000000      0.99991737     -0.00030799      0.00000106      0.00000000     -0.00000000
 a000a00        0.00000000     -0.00000000     -0.00000094      0.00039422      0.99991734      0.00000000      0.00000000
 a00a000        0.00000000      0.00000125      0.00030799      0.99991729     -0.00039422     -0.00000000     -0.00000000
 0aa0000       -0.00000000      0.00000000      0.00000000     -0.00000000     -0.00000000     -0.00000326     -0.00000000
 000aa00       -0.00000000     -0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000653     -0.00000000
 0a0a000        0.00000000      0.00000000      0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.00000001
 0a00a00        0.00000000      0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00000000
 0000aa0        0.00000000      0.00000000      0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000
 000a0a0        0.00000000      0.00000000      0.00000000      0.00000000     -0.00000000     -0.00000000      0.00000014
 00a0a00        0.00000000     -0.00000000     -0.00000000      0.00000000      0.00000000      0.00000000      0.00000000
 00aa000        0.00000000      0.00000000     -0.00000000     -0.00000000      0.00000000     -0.00000000     -0.00000025
 
 Energy:      -25.06133707    -25.06133707    -25.06133707    -25.06133707    -25.06133707    -25.00509713    -25.00509713

 State:              8               9              10              11              12              13              14
 00a00a0        0.00000000     -0.00000013      0.00000000      0.00000026     -0.00000000      0.00000000     -0.00000000
 0a000a0       -0.00000000      0.00000000      0.00000730      0.00000000     -0.00000000      0.00000000      0.00000000
 aa00000        0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000000     -0.00000000
 a0a0000        0.00000000      0.00000000      0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.00000000
 a0000a0       -0.00000000      0.00000000     -0.00000000      0.00000000      0.00000000      0.00000000     -0.00000000
 a000a00        0.00000000     -0.00000000      0.00000000      0.00000000     -0.00000000     -0.00000000     -0.00000000
 a00a000        0.00000000      0.00000000      0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000
 0aa0000        0.00000000      0.00000000      0.44721360      0.00000000      0.00000000      0.00000000      0.00000000
 000aa00        0.00000000      0.00000000      0.89442719      0.00000000      0.00000000      0.00000000      0.00000000
 0a0a000        0.80311369     -0.00956226     -0.00000000      0.00140533     -0.39359242      0.00002415      0.44721359
 0a00a00        0.00956637      0.80306255     -0.00000000      0.39369661      0.00141534      0.44721359     -0.00002415
 0000aa0       -0.12774792      0.00150808     -0.00000000     -0.00219886      0.61941372      0.00004182      0.77459667
 000a0a0       -0.00151456     -0.12766746      0.00000000     -0.61943029     -0.00220045      0.77459667     -0.00004182
 00a0a00        0.58184780     -0.00695018      0.00000000     -0.00240320      0.67926362     -0.00002415     -0.44721359
 00aa000       -0.00694308     -0.58193603     -0.00000000      0.67918813      0.00239595      0.44721359     -0.00002415
 
 Energy:      -25.00509713    -25.00509713    -25.00509713    -25.00509713    -25.00509713    -24.98447616    -24.98447616

 State:             15
 00a00a0        0.00000000
 0a000a0       -0.00000000
 aa00000        0.00000000
 a0a0000       -0.00000000
 a0000a0       -0.00000000
 a000a00        0.00000000
 a00a000       -0.00000000
 0aa0000        0.89442719
 000aa00       -0.44721360
 0a0a000       -0.00000000
 0a00a00       -0.00000000
 0000aa0       -0.00000000
 000a0a0       -0.00000000
 00a0a00        0.00000000
 00aa000       -0.00000000
 
 Energy:      -24.98447616
 


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       37.76       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       5        5.59       700     1000      520     2100     2140   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF   

 PROGRAMS   *        TOTAL     MULTI   RHF-SCF       INT
 CPU TIMES  *         3.10      1.58      0.10      1.23
 REAL TIME  *         4.22 SEC
 DISK USED  *        43.41 MB (local),      654.16 MB (total)
 SF USED    *        25.32 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Prep energies and &lt;L**2&gt; values

        ENERGY       LL
    -25.10129849   -0.0
    -25.06133707    6.0
    -25.06133707    6.0
    -25.06133707    6.0
    -25.06133707    6.0
    -25.06133707    6.0
    -25.00509713   12.0
    -25.00509713   12.0
    -25.00509713   12.0
    -25.00509713   12.0
    -25.00509713   12.0
    -25.00509713   12.0
    -25.00509713   12.0
    -24.98447616    2.0
    -24.98447616    2.0
    -24.98447616    2.0
                                                  
 SETTING NSING          =        12.00000000                                  
 SETTING NTRIP          =        16.00000000                                  

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of closed-shell orbitals:   4 (   1   3 )
 Number of active  orbitals:       10 (   7   3 )
 Number of external orbitals:     132 (  69  63 )

 State symmetry 1

 Number of active electrons:   2    Spin symmetry=Singlet   Space symmetry=1
 Number of states:            12
 Number of CSFs:              34   (58 determinants, 100 intermediate states)

 State symmetry 2

 Number of active electrons:   2    Spin symmetry=Triplet   Space symmetry=1
 Number of states:            16
 Number of CSFs:              24   (24 determinants, 45 intermediate states)

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 3 5 4 6 2 1 1 3   5 6 4 2 3 5 6 4 2 1  15141310 812 7 911 5   3 4 6 2 1 4 6 5 3 2
                                        911 7 81214151310 1   4 6 5 3 211 91310 8  121514 7 5 3 4 6 2 1   5 3 4 6 2 1 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 2 1 3 1 2 3 1 2 1   2 3 6 5 4 7 9 810 1   2 3 4 5 7 9 810 6 1   2 3 7 9 4 5 6 810 1
                                        2 3 4 5 810 6 9 7 4   5 6 9 7 810 1 2 310   8 4 5 6 9 7 1 2 3

 Wavefunction dump at record             2141.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.03571   0.03571   0.03571   0.03571   0.03571   0.03571   0.03571   0.03571
                                          0.03571   0.03571   0.03571   0.03571
 Weight factors for state symmetry  2:    0.03571   0.03571   0.03571   0.03571   0.03571   0.03571   0.03571   0.03571
                                          0.03571   0.03571   0.03571   0.03571   0.03571   0.03571   0.03571   0.03571
 
 Number of orbital rotations:  946  ( 16 closed/active, 258 closed/virtual, 0 active/active, 672 active/virtual )
 Total number of variables:    2026
 
  Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1   12   22   10    -25.01473171     -25.02658342   -0.01185171    0.00498715 0.00001582 0.00000000  0.16E+01      0.73
   2    9   16    0    -25.02475644     -25.02559567   -0.00083923    0.00501211 0.00000122 0.00000000  0.31E+00      1.41
   3    5   10    0    -25.02559794     -25.02559801   -0.00000007    0.00002569 0.00000001 0.00000000  0.29E-02      1.88
   4    2    4    0    -25.02559801     -25.02559801    0.00000000    0.00000000 0.00000000 0.00000000  0.17E-06      2.17

 CONVERGENCE REACHED!  Final gradient:    0.00000000 ( 0.86E-10)
                       Final energy:    -25.02559801
 
 Results for state 1.1 Singlet
 =============================
 !MCSCF STATE 1.1 Singlet Energy               -25.115993391416
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.62050619
 One electron energy                           -41.16125136
 Two electron energy                            16.04525797
 Virial ratio                                    4.79366663
 
 !MCSCF STATE 1.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Singlet
 =============================
 !MCSCF STATE 2.1 Singlet Energy               -25.054238491341
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.81671796
 One electron energy                           -41.41069466
 Two electron energy                            16.35645617
 Virial ratio                                    4.67541075
 
 !MCSCF STATE 2.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Singlet
 =============================
 !MCSCF STATE 3.1 Singlet Energy               -25.054238491340
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.81671796
 One electron energy                           -41.41069466
 Two electron energy                            16.35645617
 Virial ratio                                    4.67541075
 
 !MCSCF STATE 3.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Singlet
 =============================
 !MCSCF STATE 4.1 Singlet Energy               -25.054238491340
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.81671796
 One electron energy                           -41.41069466
 Two electron energy                            16.35645617
 Virial ratio                                    4.67541075
 
 !MCSCF STATE 4.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Singlet
 =============================
 !MCSCF STATE 5.1 Singlet Energy               -25.054238491339
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.81671796
 One electron energy                           -41.41069466
 Two electron energy                            16.35645617
 Virial ratio                                    4.67541075
 
 !MCSCF STATE 5.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Singlet
 =============================
 !MCSCF STATE 6.1 Singlet Energy               -25.054238491338
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.81671796
 One electron energy                           -41.41069466
 Two electron energy                            16.35645617
 Virial ratio                                    4.67541075
 
 !MCSCF STATE 6.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.1 Singlet
 =============================
 !MCSCF STATE 7.1 Singlet Energy               -24.999992947135
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.96795732
 One electron energy                           -41.58861092
 Two electron energy                            16.58861797
 Virial ratio                                    4.58785104
 
 !MCSCF STATE 7.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.1 Singlet
 =============================
 !MCSCF STATE 8.1 Singlet Energy               -24.999992947134
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.96795732
 One electron energy                           -41.58861092
 Two electron energy                            16.58861797
 Virial ratio                                    4.58785104
 
 !MCSCF STATE 8.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 9.1 Singlet
 =============================
 !MCSCF STATE 9.1 Singlet Energy               -24.999992947133
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.96795732
 One electron energy                           -41.58861092
 Two electron energy                            16.58861797
 Virial ratio                                    4.58785104
 
 !MCSCF STATE 9.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 10.1 Singlet
 ==============================
 !MCSCF STATE 10.1 Singlet Energy              -24.999992947132
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.96795732
 One electron energy                           -41.58861092
 Two electron energy                            16.58861797
 Virial ratio                                    4.58785104
 
 !MCSCF STATE 10.1 Singlet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 11.1 Singlet
 ==============================
 !MCSCF STATE 11.1 Singlet Energy              -24.999992947132
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.96795732
 One electron energy                           -41.58861092
 Two electron energy                            16.58861797
 Virial ratio                                    4.58785104
 
 !MCSCF STATE 11.1 Singlet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 12.1 Singlet
 ==============================
 !MCSCF STATE 12.1 Singlet Energy              -24.992819881602
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.71145626
 One electron energy                           -40.75757862
 Two electron energy                            15.76475874
 Virial ratio                                    4.72390416
 
 !MCSCF STATE 12.1 Singlet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.1 Triplet
 =============================
 !MCSCF STATE 1.1 Triplet Energy               -25.061184032748
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.83268623
 One electron energy                           -41.52150947
 Two electron energy                            16.46032544
 Virial ratio                                    4.66783769
 
 !MCSCF STATE 1.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Triplet
 =============================
 !MCSCF STATE 2.1 Triplet Energy               -25.061184032748
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.83268623
 One electron energy                           -41.52150947
 Two electron energy                            16.46032544
 Virial ratio                                    4.66783769
 
 !MCSCF STATE 2.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Triplet
 =============================
 !MCSCF STATE 3.1 Triplet Energy               -25.061184032748
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.83268623
 One electron energy                           -41.52150947
 Two electron energy                            16.46032544
 Virial ratio                                    4.66783769
 
 !MCSCF STATE 3.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Triplet
 =============================
 !MCSCF STATE 4.1 Triplet Energy               -25.061184032748
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.83268623
 One electron energy                           -41.52150947
 Two electron energy                            16.46032544
 Virial ratio                                    4.66783769
 
 !MCSCF STATE 4.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Triplet
 =============================
 !MCSCF STATE 5.1 Triplet Energy               -25.061184032748
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.83268623
 One electron energy                           -41.52150947
 Two electron energy                            16.46032544
 Virial ratio                                    4.66783769
 
 !MCSCF STATE 5.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Triplet
 =============================
 !MCSCF STATE 6.1 Triplet Energy               -25.004525960492
 Nuclear energy                                  0.00000000
 Kinetic energy                                  7.06394140
 One electron energy                           -41.88809453
 Two electron energy                            16.88356857
 Virial ratio                                    4.53974142
 
 !MCSCF STATE 6.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.1 Triplet
 =============================
 !MCSCF STATE 7.1 Triplet Energy               -25.004525960492
 Nuclear energy                                  0.00000000
 Kinetic energy                                  7.06394140
 One electron energy                           -41.88809453
 Two electron energy                            16.88356857
 Virial ratio                                    4.53974142
 
 !MCSCF STATE 7.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.1 Triplet
 =============================
 !MCSCF STATE 8.1 Triplet Energy               -25.004525960492
 Nuclear energy                                  0.00000000
 Kinetic energy                                  7.06394140
 One electron energy                           -41.88809453
 Two electron energy                            16.88356857
 Virial ratio                                    4.53974142
 
 !MCSCF STATE 8.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 9.1 Triplet
 =============================
 !MCSCF STATE 9.1 Triplet Energy               -25.004525960492
 Nuclear energy                                  0.00000000
 Kinetic energy                                  7.06394140
 One electron energy                           -41.88809453
 Two electron energy                            16.88356857
 Virial ratio                                    4.53974142
 
 !MCSCF STATE 9.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 10.1 Triplet
 ==============================
 !MCSCF STATE 10.1 Triplet Energy              -25.004525960492
 Nuclear energy                                  0.00000000
 Kinetic energy                                  7.06394140
 One electron energy                           -41.88809453
 Two electron energy                            16.88356857
 Virial ratio                                    4.53974142
 
 !MCSCF STATE 10.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 11.1 Triplet
 ==============================
 !MCSCF STATE 11.1 Triplet Energy              -25.004525960492
 Nuclear energy                                  0.00000000
 Kinetic energy                                  7.06394140
 One electron energy                           -41.88809453
 Two electron energy                            16.88356857
 Virial ratio                                    4.53974142
 
 !MCSCF STATE 11.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 12.1 Triplet
 ==============================
 !MCSCF STATE 12.1 Triplet Energy              -25.004525960492
 Nuclear energy                                  0.00000000
 Kinetic energy                                  7.06394140
 One electron energy                           -41.88809453
 Two electron energy                            16.88356857
 Virial ratio                                    4.53974142
 
 !MCSCF STATE 12.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 13.1 Triplet
 ==============================
 !MCSCF STATE 13.1 Triplet Energy              -25.000217005305
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.92850176
 One electron energy                           -41.47585358
 Two electron energy                            16.47563658
 Virial ratio                                    4.60831502
 
 !MCSCF STATE 13.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 14.1 Triplet
 ==============================
 !MCSCF STATE 14.1 Triplet Energy              -25.000217005305
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.92850176
 One electron energy                           -41.47585358
 Two electron energy                            16.47563658
 Virial ratio                                    4.60831502
 
 !MCSCF STATE 14.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 15.1 Triplet
 ==============================
 !MCSCF STATE 15.1 Triplet Energy              -25.000217005305
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.92850176
 One electron energy                           -41.47585358
 Two electron energy                            16.47563658
 Virial ratio                                    4.60831502
 
 !MCSCF STATE 15.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 16.1 Triplet
 ==============================
 !MCSCF STATE 16.1 Triplet Energy              -24.998520815234
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.53170061
 One electron energy                           -40.17016447
 Two electron energy                            15.17164365
 Virial ratio                                    4.82726067
 
 !MCSCF STATE 16.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2141.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 !MCSCF expec      <1.1 Singlet|LXLX|1.1 Singlet>    -0.000000000000
 !MCSCF expec      <2.1 Singlet|LXLX|2.1 Singlet>     2.999986646652
 !MCSCF expec      <3.1 Singlet|LXLX|3.1 Singlet>     1.000000704657
 !MCSCF expec      <4.1 Singlet|LXLX|4.1 Singlet>     3.999999292515
 !MCSCF expec      <5.1 Singlet|LXLX|5.1 Singlet>     1.000013353348
 !MCSCF expec      <6.1 Singlet|LXLX|6.1 Singlet>     1.000000002828
 !MCSCF expec      <7.1 Singlet|LXLX|7.1 Singlet>     0.999574265395
 !MCSCF expec      <8.1 Singlet|LXLX|8.1 Singlet>     3.000425734605
 !MCSCF expec      <9.1 Singlet|LXLX|9.1 Singlet>     1.000000001620
 !MCSCF expec    <10.1 Singlet|LXLX|10.1 Singlet>     3.999999906369
 !MCSCF expec    <11.1 Singlet|LXLX|11.1 Singlet>     1.000000092011
 !MCSCF expec    <12.1 Singlet|LXLX|12.1 Singlet>    -0.000000000000
 !MCSCF expec      <1.1 Triplet|LXLX|1.1 Triplet>     3.000000006203
 !MCSCF expec      <2.1 Triplet|LXLX|2.1 Triplet>     3.999896718556
 !MCSCF expec      <3.1 Triplet|LXLX|3.1 Triplet>     1.000103275227
 !MCSCF expec      <4.1 Triplet|LXLX|4.1 Triplet>     1.000000000014
 !MCSCF expec      <5.1 Triplet|LXLX|5.1 Triplet>     1.000000000000
 !MCSCF expec      <6.1 Triplet|LXLX|6.1 Triplet>     4.000034544762
 !MCSCF expec      <7.1 Triplet|LXLX|7.1 Triplet>     3.999999981700
 !MCSCF expec      <8.1 Triplet|LXLX|8.1 Triplet>     2.672564072446
 !MCSCF expec      <9.1 Triplet|LXLX|9.1 Triplet>     0.718305738897
 !MCSCF expec    <10.1 Triplet|LXLX|10.1 Triplet>     5.999965455238
 !MCSCF expec    <11.1 Triplet|LXLX|11.1 Triplet>     7.327435943389
 !MCSCF expec    <12.1 Triplet|LXLX|12.1 Triplet>     3.281694263568
 !MCSCF expec    <13.1 Triplet|LXLX|13.1 Triplet>     0.999960984743
 !MCSCF expec    <14.1 Triplet|LXLX|14.1 Triplet>     0.000039015257
 !MCSCF expec    <15.1 Triplet|LXLX|15.1 Triplet>     1.000000000000
 !MCSCF expec    <16.1 Triplet|LXLX|16.1 Triplet>    -0.000000000000
 
 !MCSCF expec      <1.1 Singlet|LYLY|1.1 Singlet>    -0.000000000000
 !MCSCF expec      <2.1 Singlet|LYLY|2.1 Singlet>     3.000013353289
 !MCSCF expec      <3.1 Singlet|LYLY|3.1 Singlet>     3.999999293129
 !MCSCF expec      <4.1 Singlet|LYLY|4.1 Singlet>     1.000000704654
 !MCSCF expec      <5.1 Singlet|LYLY|5.1 Singlet>     0.999986646711
 !MCSCF expec      <6.1 Singlet|LYLY|6.1 Singlet>     1.000000002217
 !MCSCF expec      <7.1 Singlet|LYLY|7.1 Singlet>     1.000425795031
 !MCSCF expec      <8.1 Singlet|LYLY|8.1 Singlet>     2.999574204969
 !MCSCF expec      <9.1 Singlet|LYLY|9.1 Singlet>     1.000000002265
 !MCSCF expec    <10.1 Singlet|LYLY|10.1 Singlet>     1.000000092012
 !MCSCF expec    <11.1 Singlet|LYLY|11.1 Singlet>     3.999999905723
 !MCSCF expec    <12.1 Singlet|LYLY|12.1 Singlet>    -0.000000000000
 !MCSCF expec      <1.1 Triplet|LYLY|1.1 Triplet>     2.999999953083
 !MCSCF expec      <2.1 Triplet|LYLY|2.1 Triplet>     1.000103310830
 !MCSCF expec      <3.1 Triplet|LYLY|3.1 Triplet>     3.999896736100
 !MCSCF expec      <4.1 Triplet|LYLY|4.1 Triplet>     0.999999999987
 !MCSCF expec      <5.1 Triplet|LYLY|5.1 Triplet>     1.000000000000
 !MCSCF expec      <6.1 Triplet|LYLY|6.1 Triplet>     3.999965455317
 !MCSCF expec      <7.1 Triplet|LYLY|7.1 Triplet>     3.999999986454
 !MCSCF expec      <8.1 Triplet|LYLY|8.1 Triplet>     0.716000786048
 !MCSCF expec      <9.1 Triplet|LYLY|9.1 Triplet>     2.667679758308
 !MCSCF expec    <10.1 Triplet|LYLY|10.1 Triplet>     6.000034544683
 !MCSCF expec    <11.1 Triplet|LYLY|11.1 Triplet>     3.283999218005
 !MCSCF expec    <12.1 Triplet|LYLY|12.1 Triplet>     7.332320251185
 !MCSCF expec    <13.1 Triplet|LYLY|13.1 Triplet>     0.000039015257
 !MCSCF expec    <14.1 Triplet|LYLY|14.1 Triplet>     0.999960984743
 !MCSCF expec    <15.1 Triplet|LYLY|15.1 Triplet>     1.000000000000
 !MCSCF expec    <16.1 Triplet|LYLY|16.1 Triplet>    -0.000000000000
 
 !MCSCF expec      <1.1 Singlet|LZLZ|1.1 Singlet>    -0.000000000000
 !MCSCF expec      <2.1 Singlet|LZLZ|2.1 Singlet>     0.000000000059
 !MCSCF expec      <3.1 Singlet|LZLZ|3.1 Singlet>     1.000000002214
 !MCSCF expec      <4.1 Singlet|LZLZ|4.1 Singlet>     1.000000002831
 !MCSCF expec      <5.1 Singlet|LZLZ|5.1 Singlet>     3.999999999941
 !MCSCF expec      <6.1 Singlet|LZLZ|6.1 Singlet>     3.999999994955
 !MCSCF expec      <7.1 Singlet|LZLZ|7.1 Singlet>     3.999999939575
 !MCSCF expec      <8.1 Singlet|LZLZ|8.1 Singlet>     0.000000060425
 !MCSCF expec      <9.1 Singlet|LZLZ|9.1 Singlet>     3.999999996115
 !MCSCF expec    <10.1 Singlet|LZLZ|10.1 Singlet>     1.000000001620
 !MCSCF expec    <11.1 Singlet|LZLZ|11.1 Singlet>     1.000000002266
 !MCSCF expec    <12.1 Singlet|LZLZ|12.1 Singlet>    -0.000000000000
 !MCSCF expec      <1.1 Triplet|LZLZ|1.1 Triplet>     0.000000040714
 !MCSCF expec      <2.1 Triplet|LZLZ|2.1 Triplet>     0.999999970614
 !MCSCF expec      <3.1 Triplet|LZLZ|3.1 Triplet>     0.999999988672
 !MCSCF expec      <4.1 Triplet|LZLZ|4.1 Triplet>     4.000000000000
 !MCSCF expec      <5.1 Triplet|LZLZ|5.1 Triplet>     4.000000000000
 !MCSCF expec      <6.1 Triplet|LZLZ|6.1 Triplet>     3.999999999920
 !MCSCF expec      <7.1 Triplet|LZLZ|7.1 Triplet>     4.000000031846
 !MCSCF expec      <8.1 Triplet|LZLZ|8.1 Triplet>     8.611435141506
 !MCSCF expec      <9.1 Triplet|LZLZ|9.1 Triplet>     8.614014502795
 !MCSCF expec    <10.1 Triplet|LZLZ|10.1 Triplet>     0.000000000080
 !MCSCF expec    <11.1 Triplet|LZLZ|11.1 Triplet>     1.388564838606
 !MCSCF expec    <12.1 Triplet|LZLZ|12.1 Triplet>     1.385985485247
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
    1.1     2.00000    -1.55769     1  1  s    1.03258
    2.1     0.45199    -0.03371     1  2  s    0.65644    1  5  s    0.29301
    3.1     0.25845     0.05515     1  1  d2-  0.81166
    4.1     0.25845     0.05515     1  1  d2+  0.81166
    5.1     0.25845     0.05515     1  1  d1-  0.81166
    6.1     0.25845     0.05515     1  1  d1+  0.81166
    7.1     0.25845     0.05515     1  1  d0   0.81166
    8.1     0.06368     0.03917     1  2  s    0.90474    1  6  s   -0.32803    1 10  s   -1.24583
    1.2     2.00000    -0.85947     1  1  pz   1.01498
    2.2     2.00000    -0.85947     1  1  py   1.01498
    3.2     2.00000    -0.85947     1  1  px   1.01498
    4.2     0.06403     0.05074     1  2  pz   1.74429    1  3  pz  -0.31246    1  4  pz  -0.40596
    5.2     0.06403     0.05074     1  2  px   1.74429    1  3  px  -0.31246    1  4  px  -0.40596
    6.2     0.06403     0.05074     1  2  py   1.74429    1  3  py  -0.31246    1  4  py  -0.40596
 *** IN SYMMETRY  1 ORBITAL   9 SYMMETRY CONTAMINATION OF 0.384D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  10 SYMMETRY CONTAMINATION OF 0.369D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  11 SYMMETRY CONTAMINATION OF 0.272D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  12 SYMMETRY CONTAMINATION OF 0.137D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  13 SYMMETRY CONTAMINATION OF 0.769D-03 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  15 SYMMETRY CONTAMINATION OF 0.137D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  16 SYMMETRY CONTAMINATION OF 0.137D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  17 SYMMETRY CONTAMINATION OF 0.360D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  18 SYMMETRY CONTAMINATION OF 0.360D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  19 SYMMETRY CONTAMINATION OF 0.268D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  20 SYMMETRY CONTAMINATION OF 0.483D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  21 SYMMETRY CONTAMINATION OF 0.483D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  22 SYMMETRY CONTAMINATION OF 0.189D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  23 SYMMETRY CONTAMINATION OF 0.189D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  24 SYMMETRY CONTAMINATION OF 0.274D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  25 SYMMETRY CONTAMINATION OF 0.274D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  26 SYMMETRY CONTAMINATION OF 0.353D-03 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  27 SYMMETRY CONTAMINATION OF 0.369D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  28 SYMMETRY CONTAMINATION OF 0.369D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  30 SYMMETRY CONTAMINATION OF 0.688D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  31 SYMMETRY CONTAMINATION OF 0.688D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  32 SYMMETRY CONTAMINATION OF 0.419D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  33 SYMMETRY CONTAMINATION OF 0.420D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  34 SYMMETRY CONTAMINATION OF 0.627D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  36 SYMMETRY CONTAMINATION OF 0.847D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  37 SYMMETRY CONTAMINATION OF 0.570D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  38 SYMMETRY CONTAMINATION OF 0.831D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  39 SYMMETRY CONTAMINATION OF 0.537D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  41 SYMMETRY CONTAMINATION OF 0.956D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  42 SYMMETRY CONTAMINATION OF 0.955D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  43 SYMMETRY CONTAMINATION OF 0.463D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  44 SYMMETRY CONTAMINATION OF 0.463D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  45 SYMMETRY CONTAMINATION OF 0.662D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  46 SYMMETRY CONTAMINATION OF 0.662D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  47 SYMMETRY CONTAMINATION OF 0.339D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  48 SYMMETRY CONTAMINATION OF 0.865D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  49 SYMMETRY CONTAMINATION OF 0.865D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  51 SYMMETRY CONTAMINATION OF 0.110D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  52 SYMMETRY CONTAMINATION OF 0.114D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  53 SYMMETRY CONTAMINATION OF 0.301D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  54 SYMMETRY CONTAMINATION OF 0.611D-03 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  56 SYMMETRY CONTAMINATION OF 0.953D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  57 SYMMETRY CONTAMINATION OF 0.364D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  58 SYMMETRY CONTAMINATION OF 0.403D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  59 SYMMETRY CONTAMINATION OF 0.400D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  60 SYMMETRY CONTAMINATION OF 0.368D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  61 SYMMETRY CONTAMINATION OF 0.180D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  62 SYMMETRY CONTAMINATION OF 0.666D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  63 SYMMETRY CONTAMINATION OF 0.666D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  64 SYMMETRY CONTAMINATION OF 0.684D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  65 SYMMETRY CONTAMINATION OF 0.601D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  66 SYMMETRY CONTAMINATION OF 0.601D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  67 SYMMETRY CONTAMINATION OF 0.187D-03 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  68 SYMMETRY CONTAMINATION OF 0.187D-03 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  71 SYMMETRY CONTAMINATION OF 0.568D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  72 SYMMETRY CONTAMINATION OF 0.572D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  73 SYMMETRY CONTAMINATION OF 0.436D-03 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  74 SYMMETRY CONTAMINATION OF 0.435D-03 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  75 SYMMETRY CONTAMINATION OF 0.109D-04 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 3 5 6 4 2 1 6 4   5 3 2 1 5 3 4 6 215  141310 812 7 911 1 5   3 6 4 2 1 6 4 5 3 2
                                        911 8121415 71310 1   3 6 5 4 2131011 9 8  121415 7 3 5 6 4 2 1   3 5 6 4 2 1 1
 *** IN SYMMETRY  2 ORBITAL   8 SYMMETRY CONTAMINATION OF 0.810D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL   9 SYMMETRY CONTAMINATION OF 0.810D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  10 SYMMETRY CONTAMINATION OF 0.346D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  11 SYMMETRY CONTAMINATION OF 0.346D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  14 SYMMETRY CONTAMINATION OF 0.151D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  15 SYMMETRY CONTAMINATION OF 0.183D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  16 SYMMETRY CONTAMINATION OF 0.549D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  17 SYMMETRY CONTAMINATION OF 0.549D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  18 SYMMETRY CONTAMINATION OF 0.591D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  19 SYMMETRY CONTAMINATION OF 0.591D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  20 SYMMETRY CONTAMINATION OF 0.527D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  21 SYMMETRY CONTAMINATION OF 0.527D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  23 SYMMETRY CONTAMINATION OF 0.112D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  24 SYMMETRY CONTAMINATION OF 0.545D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  25 SYMMETRY CONTAMINATION OF 0.538D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  26 SYMMETRY CONTAMINATION OF 0.989D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  27 SYMMETRY CONTAMINATION OF 0.264D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  28 SYMMETRY CONTAMINATION OF 0.615D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  30 SYMMETRY CONTAMINATION OF 0.577D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  31 SYMMETRY CONTAMINATION OF 0.577D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  33 SYMMETRY CONTAMINATION OF 0.135D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  34 SYMMETRY CONTAMINATION OF 0.135D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  35 SYMMETRY CONTAMINATION OF 0.101D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  36 SYMMETRY CONTAMINATION OF 0.700D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  37 SYMMETRY CONTAMINATION OF 0.631D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  38 SYMMETRY CONTAMINATION OF 0.630D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  40 SYMMETRY CONTAMINATION OF 0.417D-03 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  41 SYMMETRY CONTAMINATION OF 0.417D-03 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  43 SYMMETRY CONTAMINATION OF 0.130D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  44 SYMMETRY CONTAMINATION OF 0.130D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  45 SYMMETRY CONTAMINATION OF 0.937D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  46 SYMMETRY CONTAMINATION OF 0.937D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  47 SYMMETRY CONTAMINATION OF 0.403D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  48 SYMMETRY CONTAMINATION OF 0.403D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  50 SYMMETRY CONTAMINATION OF 0.102D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  51 SYMMETRY CONTAMINATION OF 0.102D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  53 SYMMETRY CONTAMINATION OF 0.142D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  54 SYMMETRY CONTAMINATION OF 0.142D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  55 SYMMETRY CONTAMINATION OF 0.856D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  56 SYMMETRY CONTAMINATION OF 0.856D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  57 SYMMETRY CONTAMINATION OF 0.361D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  58 SYMMETRY CONTAMINATION OF 0.361D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  60 SYMMETRY CONTAMINATION OF 0.399D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  61 SYMMETRY CONTAMINATION OF 0.399D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  62 SYMMETRY CONTAMINATION OF 0.681D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  63 SYMMETRY CONTAMINATION OF 0.681D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  65 SYMMETRY CONTAMINATION OF 0.495D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  66 SYMMETRY CONTAMINATION OF 0.495D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  67 SYMMETRY CONTAMINATION OF 0.914D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  68 SYMMETRY CONTAMINATION OF 0.914D-02 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 2 1 3 1 2 3 1 2 2   1 3 6 4 5 7 910 8 2   1 3 7 9 4 5 810 6 2   1 3 7 9 810 4 5 6 2
                                        1 3 4 5 810 9 7 6 5   4 6 810 9 7 2 1 310   8 4 5 6 7 9 2 1 3
 
 Natural orbital dump (state averaged) at molpro section 2141.2 (Orbital set 2)
 
 Reoptimze the CI vectors with natural orbitals 
 
 CI Coefficients of symmetry 1 (Singlet)
 =======================================

 State:                1               2               3               4               5               6               7
 2000000 000      0.95518069      0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000      0.00000000
 a0000b0 000     -0.00000000      0.64612025      0.00000000      0.00000000      0.00000385      0.00000028      0.00000541
 b0000a0 000      0.00000000     -0.64612025     -0.00000000     -0.00000000     -0.00000385     -0.00000028     -0.00000541
 b0a0000 000      0.00000000      0.00000385     -0.00000077     -0.00000005     -0.64612022     -0.00020261      0.04346529
 a0b0000 000     -0.00000000     -0.00000385      0.00000077      0.00000005      0.64612022      0.00020261     -0.04346529
 ab00000 000      0.00000000     -0.00000028      0.00002878      0.00000357     -0.00020261      0.64612022     -0.00000111
 ba00000 000     -0.00000000      0.00000028     -0.00002878     -0.00000357      0.00020261     -0.64612022      0.00000111
 b000a00 000      0.00000000     -0.00000000     -0.00474458     -0.64610283      0.00000006      0.00000378     -0.00000008
 a000b00 000     -0.00000000      0.00000000      0.00474458      0.64610283     -0.00000006     -0.00000378      0.00000008
 a00b000 000      0.00000000     -0.00000000      0.64610283     -0.00474458     -0.00000076     -0.00002875      0.00000001
 b00a000 000     -0.00000000      0.00000000     -0.64610283      0.00474458      0.00000076      0.00002875     -0.00000001
 b00000a 000     -0.02858519     -0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000000
 a00000b 000      0.02858519      0.00000000     -0.00000000     -0.00000000      0.00000000     -0.00000000      0.00000000
 0b000a0 000     -0.00000000      0.00000006     -0.00000569     -0.00000071      0.00004009     -0.12784681     -0.00001198
 0a000b0 000      0.00000000     -0.00000006      0.00000569      0.00000071     -0.00004009      0.12784681      0.00001198
 0200000 000     -0.04565141      0.12784682      0.00000000      0.00000000      0.00000076      0.00000006     -0.00005844
 0020000 000     -0.04565141      0.12784682      0.00000000      0.00000000      0.00000076      0.00000006     -0.00005844
 0000020 000     -0.04565141     -0.12784682     -0.00000000     -0.00000000     -0.00000076     -0.00000006      0.00005844
 00b00a0 000     -0.00000000      0.00000076     -0.00000015     -0.00000001     -0.12784681     -0.00004009     -0.46952852
 00a00b0 000      0.00000000     -0.00000076      0.00000015      0.00000001      0.12784681      0.00004009      0.46952852
 0002000 000     -0.04565141     -0.06392407      0.00000013      0.00000001      0.11071821      0.00003469      0.40665285
 000ab00 000     -0.00000000      0.00000005     -0.00000493     -0.00000061      0.00003472     -0.11071859     -0.00001037
 000ba00 000      0.00000000     -0.00000005      0.00000493      0.00000061     -0.00003472      0.11071859      0.00001037
 0000200 000     -0.04565141     -0.06392275     -0.00000013     -0.00000001     -0.11071897     -0.00003475     -0.40659441
 0b0a000 000     -0.00000000      0.00000000      0.00081303      0.11071561     -0.00000001     -0.00000065     -0.00000079
 0a0b000 000      0.00000000     -0.00000000     -0.00081303     -0.11071561      0.00000001      0.00000065      0.00000079
 00b0a00 000     -0.00000000      0.00000000      0.00081303      0.11071561     -0.00000001     -0.00000065     -0.00000079
 00a0b00 000      0.00000000     -0.00000000     -0.00081303     -0.11071561      0.00000001      0.00000065      0.00000079
 0a00b00 000     -0.00000000      0.00000000     -0.11071561      0.00081303      0.00000013      0.00000493      0.00000006
 0b00a00 000      0.00000000     -0.00000000      0.11071561     -0.00081303     -0.00000013     -0.00000493     -0.00000006
 00ba000 000     -0.00000000      0.00000000     -0.11071561      0.00081303      0.00000013      0.00000493      0.00000006
 00ab000 000      0.00000000     -0.00000000      0.11071561     -0.00081303     -0.00000013     -0.00000493     -0.00000006
 0000000 200     -0.15838734     -0.26585461     -0.00000000     -0.00000000     -0.00000158     -0.00000012     -0.00004629
 0000000 020     -0.15838734      0.13292868     -0.00000027     -0.00000002     -0.23023604     -0.00007214      0.32215948
 0000000 0ba      0.00000000     -0.00000010      0.00001025      0.00000127     -0.00007220      0.23023684     -0.00000822
 0000000 0ab     -0.00000000      0.00000010     -0.00001025     -0.00000127      0.00007220     -0.23023684      0.00000822
 0000000 002     -0.15838734      0.13292593      0.00000027      0.00000002      0.23023763      0.00007225     -0.32211318
 0000000 ba0     -0.00000000      0.00000000      0.00169067      0.23023064     -0.00000002     -0.00000135      0.00000063
 0000000 ab0      0.00000000     -0.00000000     -0.00169067     -0.23023064      0.00000002      0.00000135     -0.00000063
 0000000 b0a      0.00000000     -0.00000000      0.23023064     -0.00169067     -0.00000027     -0.00001024      0.00000004
 0000000 a0b     -0.00000000      0.00000000     -0.23023064      0.00169067      0.00000027      0.00001024     -0.00000004
 0000ba0 000     -0.00000000      0.00000000      0.00046940      0.06392169     -0.00000001     -0.00000037     -0.00000046
 0000ab0 000      0.00000000     -0.00000000     -0.00046940     -0.06392169      0.00000001      0.00000037      0.00000046
 000a0b0 000     -0.00000000      0.00000000     -0.06392169      0.00046940      0.00000008      0.00000284      0.00000003
 000b0a0 000      0.00000000     -0.00000000      0.06392169     -0.00046940     -0.00000008     -0.00000284     -0.00000003
 0000002 000     -0.01776831      0.00000000     -0.00000000      0.00000000      0.00000000      0.00000000      0.00000000
 0b0000a 000      0.00000000     -0.00000001      0.00000135      0.00000017     -0.00000949      0.03026885     -0.00000236
 0a0000b 000     -0.00000000      0.00000001     -0.00000135     -0.00000017      0.00000949     -0.03026885      0.00000236
 00b000a 000      0.00000000     -0.00000018      0.00000004      0.00000000      0.03026885      0.00000949     -0.09240743
 00a000b 000     -0.00000000      0.00000018     -0.00000004     -0.00000000     -0.03026885     -0.00000949      0.09240743
 00000ab 000     -0.00000000     -0.03026885     -0.00000000     -0.00000000     -0.00000018     -0.00000001     -0.00001150
 00000ba 000      0.00000000      0.03026885      0.00000000      0.00000000      0.00000018      0.00000001      0.00001150
 0000a0b 000      0.00000000     -0.00000000     -0.00022227     -0.03026803      0.00000000      0.00000018     -0.00000018
 0000b0a 000     -0.00000000      0.00000000      0.00022227      0.03026803     -0.00000000     -0.00000018      0.00000018
 000b00a 000     -0.00000000     -0.00000000      0.03026803     -0.00022227     -0.00000004     -0.00000135      0.00000001
 000a00b 000      0.00000000      0.00000000     -0.03026803      0.00022227      0.00000004      0.00000135     -0.00000001
 
 Energy:        -25.11599339    -25.05423849    -25.05423849    -25.05423849    -25.05423849    -25.05423849    -24.99999295

 State:                8               9              10              11              12
 2000000 000      0.00000000     -0.00000000      0.00000000     -0.00000000      0.00214285
 a0000b0 000     -0.04346529      0.00000006     -0.00000000      0.00000000     -0.00000000
 b0000a0 000      0.04346529     -0.00000006      0.00000000     -0.00000000      0.00000000
 b0a0000 000      0.00000541     -0.00000111     -0.00000008      0.00000002     -0.00000000
 a0b0000 000     -0.00000541      0.00000111      0.00000008     -0.00000002      0.00000000
 ab00000 000     -0.00000006     -0.04346529      0.00000060      0.00000305      0.00000000
 ba00000 000      0.00000006      0.04346529     -0.00000060     -0.00000305     -0.00000000
 b000a00 000      0.00000000      0.00000007     -0.04246043      0.00929210      0.00000000
 a000b00 000     -0.00000000     -0.00000007      0.04246043     -0.00929210     -0.00000000
 a00b000 000     -0.00000000     -0.00000311     -0.00929210     -0.04246043      0.00000000
 b00a000 000      0.00000000      0.00000311      0.00929210      0.04246043     -0.00000000
 b00000a 000      0.00000000     -0.00000000      0.00000000     -0.00000000     -0.56383934
 a00000b 000     -0.00000000      0.00000000     -0.00000000      0.00000000      0.56383934
 0b000a0 000     -0.00000069     -0.46952853      0.00000645      0.00003299     -0.00000000
 0a000b0 000      0.00000069      0.46952853     -0.00000645     -0.00003299      0.00000000
 0200000 000      0.46952852     -0.00000069      0.00000000     -0.00000000     -0.22305623
 0020000 000      0.46952852     -0.00000069      0.00000000     -0.00000000     -0.22305623
 0000020 000     -0.46952852      0.00000069     -0.00000000      0.00000000     -0.22305623
 00b00a0 000     -0.00005844      0.00001198      0.00000088     -0.00000026      0.00000000
 00a00b0 000      0.00005844     -0.00001198     -0.00000088      0.00000026     -0.00000000
 0002000 000     -0.23471365     -0.00001003     -0.00000076      0.00000022     -0.22305623
 000ab00 000     -0.00000060     -0.40662363      0.00000558      0.00002857     -0.00000000
 000ba00 000      0.00000060      0.40662363     -0.00000558     -0.00002857      0.00000000
 0000200 000     -0.23481487      0.00001072      0.00000076     -0.00000022     -0.22305623
 0b0a000 000      0.00000000      0.00000065     -0.39722305      0.08692887     -0.00000000
 0a0b000 000     -0.00000000     -0.00000065      0.39722305     -0.08692887      0.00000000
 00b0a00 000      0.00000000      0.00000065     -0.39722305      0.08692887     -0.00000000
 00a0b00 000     -0.00000000     -0.00000065      0.39722305     -0.08692887      0.00000000
 0a00b00 000     -0.00000000     -0.00002910     -0.08692887     -0.39722305     -0.00000000
 0b00a00 000      0.00000000      0.00002910      0.08692887      0.39722305      0.00000000
 00ba000 000     -0.00000000     -0.00002910     -0.08692887     -0.39722305     -0.00000000
 00ab000 000      0.00000000      0.00002910      0.08692887      0.39722305      0.00000000
 0000000 200      0.37197100     -0.00000055      0.00000000     -0.00000000      0.17335818
 0000000 020     -0.18594541     -0.00000794     -0.00000060      0.00000018      0.17335818
 0000000 0ba     -0.00000047     -0.32213633      0.00000442      0.00002263     -0.00000000
 0000000 0ab      0.00000047      0.32213633     -0.00000442     -0.00002263      0.00000000
 0000000 002     -0.18602559      0.00000849      0.00000060     -0.00000018      0.17335818
 0000000 ba0     -0.00000000     -0.00000052      0.31468898     -0.06886699     -0.00000000
 0000000 ab0      0.00000000      0.00000052     -0.31468898      0.06886699      0.00000000
 0000000 b0a     -0.00000000     -0.00002306     -0.06886699     -0.31468898      0.00000000
 0000000 a0b      0.00000000      0.00002306      0.06886699      0.31468898     -0.00000000
 0000ba0 000      0.00000000      0.00000038     -0.22933683      0.05018841     -0.00000000
 0000ab0 000     -0.00000000     -0.00000038      0.22933683     -0.05018841      0.00000000
 000a0b0 000     -0.00000000     -0.00001680     -0.05018841     -0.22933683     -0.00000000
 000b0a0 000      0.00000000      0.00001680      0.05018841      0.22933683      0.00000000
 0000002 000     -0.00000000     -0.00000000     -0.00000000      0.00000000      0.15885916
 0b0000a 000     -0.00000014     -0.09240743      0.00000127      0.00000649     -0.00000000
 0a0000b 000      0.00000014      0.09240743     -0.00000127     -0.00000649      0.00000000
 00b000a 000     -0.00001150      0.00000236      0.00000017     -0.00000005      0.00000000
 00a000b 000      0.00001150     -0.00000236     -0.00000017      0.00000005     -0.00000000
 00000ab 000      0.09240743     -0.00000014      0.00000000     -0.00000000     -0.00000000
 00000ba 000     -0.09240743      0.00000014     -0.00000000      0.00000000      0.00000000
 0000a0b 000      0.00000000      0.00000015     -0.09027110      0.01975506      0.00000000
 0000b0a 000     -0.00000000     -0.00000015      0.09027110     -0.01975506     -0.00000000
 000b00a 000     -0.00000000     -0.00000661     -0.01975506     -0.09027110      0.00000000
 000a00b 000      0.00000000      0.00000661      0.01975506      0.09027110     -0.00000000
 
 Energy:        -24.99999295    -24.99999295    -24.99999295    -24.99999295    -24.99281988
 
 
 CI Coefficients of symmetry 1 (Triplet)
 =======================================

 State:                1               2               3               4               5               6               7
 a00000a 000      0.00000000      0.00000000     -0.00000000      0.00000000      0.00000000      0.00000000     -0.00000000
 0a000a0 000      0.00000000      0.00000000      0.00000000      0.00000000      0.00000000      1.00000000      0.00000000
 aa00000 000     -0.00000000     -0.00000000     -0.00000000      0.00000000      0.99999999     -0.00000000      0.00000000
 a0a0000 000      0.00000103      0.00000158     -0.00000013      0.99999999     -0.00000000     -0.00000000     -0.00000000
 00a00a0 000     -0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000000      0.00000000      0.99999998
 a0000a0 000      0.99997760      0.00666716     -0.00057849     -0.00000104      0.00000000     -0.00000000      0.00000000
 a000a00 000      0.00000892      0.08511384      0.99637123      0.00000000      0.00000000     -0.00000000      0.00000000
 a00a000 000     -0.00669221      0.99634892     -0.08511188     -0.00000157      0.00000000     -0.00000000      0.00000000
 000aa00 000      0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000000     -0.00000402      0.00000168
 0a0a000 000     -0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00008436
 0a00a00 000      0.00000000     -0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000      0.00001075
 0aa0000 000      0.00000000     -0.00000000      0.00000000      0.00000000     -0.00000000      0.00000201     -0.00000084
 00a0a00 000     -0.00000000     -0.00000000     -0.00000000      0.00000000     -0.00000000     -0.00000000     -0.00012526
 00aa000 000     -0.00000000      0.00000000     -0.00000000     -0.00000000      0.00000000     -0.00000000     -0.00009314
 0000aa0 000     -0.00000000      0.00000000      0.00000000      0.00000000     -0.00000000     -0.00000000      0.00002362
 000a0a0 000     -0.00000000      0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00000000     -0.00005998
 0000000 0aa      0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000000     -0.00000000     -0.00000000
 0000000 aa0     -0.00000000      0.00000000      0.00000000      0.00000000      0.00000000     -0.00000000     -0.00000000
 0000000 a0a     -0.00000000      0.00000000     -0.00000000     -0.00000000      0.00000000      0.00000000      0.00000000
 
 Energy:        -25.06118403    -25.06118403    -25.06118403    -25.06118403    -25.06118403    -25.00452596    -25.00452596

 State:                8               9              10              11              12              13              14
 a00000a 000     -0.00000000      0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00000000     -0.00000000
 0a000a0 000      0.00000000     -0.00000000      0.00000450      0.00000000      0.00000000     -0.00000000      0.00000000
 aa00000 000     -0.00000000      0.00000000     -0.00000000      0.00000000      0.00000000      0.00000000     -0.00000000
 a0a0000 000     -0.00000000      0.00000000      0.00000000     -0.00000000     -0.00000000      0.00000000     -0.00000000
 00a00a0 000      0.00003600     -0.00013636     -0.00000187      0.00010535      0.00006903     -0.00000000      0.00000000
 a0000a0 000      0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00000000      0.00000000      0.00000000
 a000a00 000     -0.00000000      0.00000000      0.00000000      0.00000000      0.00000000      0.00000000     -0.00000000
 a00a000 000      0.00000000      0.00000000     -0.00000000     -0.00000000      0.00000000     -0.00000000     -0.00000000
 000aa00 000     -0.00000000     -0.00000000      0.89442719      0.00000000      0.00000000     -0.00000000     -0.00000000
 0a0a000 000     -0.00005047      0.81038314     -0.00000000      0.00017999      0.37852228     -0.00646143      0.36910110
 0a00a00 000      0.81019778      0.00005826      0.00000000     -0.37891889      0.00016348      0.36910110      0.00646143
 0aa0000 000      0.00000000      0.00000000     -0.44721360     -0.00000000     -0.00000000      0.00000000      0.00000000
 00a0a00 000      0.00002549     -0.56909844      0.00000000      0.00026471      0.69001948     -0.00646143      0.36910110
 00aa000 000      0.56943612      0.00001134     -0.00000000      0.68974084     -0.00027631     -0.36910110     -0.00646143
 0000aa0 000      0.00001442     -0.13930579      0.00000000     -0.00025675     -0.61692287     -0.01119153      0.63930185
 000a0a0 000     -0.13900381     -0.00002709     -0.00000000      0.61699098     -0.00025391      0.63930185      0.01119153
 0000000 0aa     -0.00000000      0.00000000      0.00000000     -0.00000000     -0.00000000      0.00000000     -0.00000000
 0000000 aa0      0.00000000     -0.00000000      0.00000000      0.00000000      0.00000000     -0.00987981      0.56437182
 0000000 a0a     -0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000      0.56437182      0.00987981
 
 Energy:        -25.00452596    -25.00452596    -25.00452596    -25.00452596    -25.00452596    -25.00021701    -25.00021701

 State:               15              16
 a00000a 000     -0.00000000      1.00000000
 0a000a0 000      0.00000000     -0.00000000
 aa00000 000      0.00000000     -0.00000000
 a0a0000 000     -0.00000000     -0.00000000
 00a00a0 000      0.00000000      0.00000000
 a0000a0 000     -0.00000000     -0.00000000
 a000a00 000      0.00000000     -0.00000000
 a00a000 000     -0.00000000     -0.00000000
 000aa00 000      0.36915765      0.00000000
 0a0a000 000      0.00000000      0.00000000
 0a00a00 000     -0.00000000      0.00000000
 0aa0000 000      0.73831529      0.00000000
 00a0a00 000      0.00000000      0.00000000
 00aa000 000      0.00000000     -0.00000000
 0000aa0 000      0.00000000      0.00000000
 000a0a0 000     -0.00000000      0.00000000
 0000000 0aa      0.56445829      0.00000000
 0000000 aa0     -0.00000000     -0.00000000
 0000000 a0a     -0.00000000     -0.00000000
 
 Energy:        -25.00021701    -24.99852082
 


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       42.61       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1700(1)
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    OPER   
                                         1380   
                                         JKOP   

              2       6        9.09       700     1000      520     2100     2140     2141   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MCSCF   

 PROGRAMS   *        TOTAL     MULTI     MULTI   RHF-SCF       INT
 CPU TIMES  *         5.02      1.91      1.58      0.10      1.23
 REAL TIME  *         6.78 SEC
 DISK USED  *        51.76 MB (local),      754.40 MB (total)
 SF USED    *        41.55 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

        ENERGY       LL
    -25.11599339   -0.0
    -25.05423849    6.0
    -25.05423849    6.0
    -25.05423849    6.0
    -25.05423849    6.0
    -25.05423849    6.0
    -24.99999295    6.0
    -24.99999295    6.0
    -24.99999295    6.0
    -24.99999295    6.0
    -24.99999295    6.0
    -24.99281988   -0.0
    -25.06118403    6.0
    -25.06118403    6.0
    -25.06118403    6.0
    -25.06118403    6.0
    -25.06118403    6.0
    -25.00452596   12.0
    -25.00452596   12.0
    -25.00452596   12.0
    -25.00452596   12.0
    -25.00452596   12.0
    -25.00452596   12.0
    -25.00452596   12.0
    -25.00021701    2.0
    -25.00021701    2.0
    -25.00021701    2.0
    -24.99852082   -0.0
                                                  


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
 Number of external orbitals:     132 (  69  63 )

 Molecular orbitals read from record     2141.2  Type=MCSCF/NATURAL (state averaged)

 Valence orbitals related to previous ones by unitary transformation. Operators transformed.


 Number of p-space configurations:  34

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1       -25.11599339
     2       -25.05423849
     3       -25.05423849
     4       -25.05423849
     5       -25.05423849
     6       -25.05423849
     7       -24.99999295
     8       -24.99999295
     9       -24.99999295
    10       -24.99999295
    11       -24.99999295
    12       -24.99281988

 Number of blocks in overlap matrix:   249   Smallest eigenvalue:  0.65D+00
 Number of N-2 electron functions:     273
 Number of N-1 electron functions:    6410

 Number of internal configurations:                 7851
 Number of singly external configurations:        423216
 Number of doubly external configurations:       1192719
 Total number of contracted configurations:      1623786
 Total number of uncontracted configurations:    5453442

 Diagonal Coupling coefficients finished.               Storage: 4225901 words, CPU-Time:      0.71 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:  649929 words, CPU-time:      0.07 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000   -25.11599339     0.00000000    -0.23528441  0.38D-01  0.45D-01     1.44
    1     2     2     1.00000000     0.00000000   -25.05423849     0.00000000    -0.25160494  0.48D-01  0.53D-01     1.44
    1     3     3     1.00000000     0.00000000   -25.05423849    -0.00000000    -0.25173101  0.49D-01  0.53D-01     1.44
    1     4     4     1.00000000     0.00000000   -25.05423849     0.00000000    -0.25180059  0.49D-01  0.53D-01     1.44
    1     5     5     1.00000000     0.00000000   -25.05423849     0.00000000    -0.25155067  0.48D-01  0.53D-01     1.44
    1     6     6     1.00000000     0.00000000   -25.05423849    -0.00000000    -0.25157539  0.48D-01  0.53D-01     1.44
    1     7     7     1.00000000     0.00000000   -24.99999295     0.00000000    -0.25913639  0.44D-01  0.62D-01     1.44
    1     8     8     1.00000000     0.00000000   -24.99999295     0.00000000    -0.25864358  0.43D-01  0.62D-01     1.44
    1     9     9     1.00000000     0.00000000   -24.99999295    -0.00000000    -0.25952861  0.44D-01  0.62D-01     1.44
    1    10    10     1.00000000     0.00000000   -24.99999295     0.00000000    -0.25961743  0.44D-01  0.62D-01     1.44
    1    11    11     1.00000000     0.00000000   -24.99999295     0.00000000    -0.25961154  0.44D-01  0.62D-01     1.44
    1    12    12     1.00000000     0.00000000   -24.99281988     0.00000000    -0.24463997  0.47D-01  0.52D-01     1.44
    2     1     1     1.07281243    -0.23934351   -25.35533690    -0.23934351    -0.00628797  0.18D-02  0.87D-03    17.59
    2     2     2     1.08346822    -0.24296222   -25.29720071    -0.24296222    -0.00724501  0.25D-02  0.12D-02    17.59
    2     3     3     1.08351444    -0.24295979   -25.29719828    -0.24295979    -0.00725650  0.25D-02  0.12D-02    17.59
    2     4     4     1.08356384    -0.24295507   -25.29719356    -0.24295507    -0.00726575  0.25D-02  0.12D-02    17.59
    2     5     5     1.08359414    -0.24292382   -25.29716231    -0.24292382    -0.00729885  0.25D-02  0.12D-02    17.59
    2     6     6     1.08360287    -0.24291559   -25.29715408    -0.24291559    -0.00730787  0.25D-02  0.12D-02    17.59
    2     7     7     1.08383404    -0.24318278   -25.24317573    -0.24318278    -0.00745756  0.28D-02  0.14D-02    17.59
    2     8     8     1.08393607    -0.24303773   -25.24303068    -0.24303773    -0.00764712  0.30D-02  0.15D-02    17.59
    2     9     9     1.08401262    -0.24295161   -25.24294456    -0.24295161    -0.00776323  0.32D-02  0.15D-02    17.59
    2    10    10     1.08402111    -0.24292917   -25.24292211    -0.24292917    -0.00779547  0.32D-02  0.15D-02    17.59
    2    11    11     1.08402660    -0.24292827   -25.24292121    -0.24292827    -0.00779711  0.32D-02  0.15D-02    17.59
    2    12    12     1.08185221    -0.24030437   -25.23312425    -0.24030437    -0.00774797  0.30D-02  0.13D-02    17.59
    3     1     1     1.07571766    -0.24586975   -25.36186314    -0.00652624    -0.00026154  0.62D-04  0.42D-04    33.67
    3     2     2     1.08549055    -0.25027718   -25.30451567    -0.00731496    -0.00034896  0.11D-03  0.64D-04    33.67
    3     3     3     1.08550915    -0.25027509   -25.30451358    -0.00731530    -0.00035130  0.11D-03  0.65D-04    33.67
    3     4     4     1.08551706    -0.25027386   -25.30451236    -0.00731879    -0.00035284  0.11D-03  0.65D-04    33.67
    3     5     5     1.08551432    -0.25027283   -25.30451132    -0.00734901    -0.00035379  0.11D-03  0.66D-04    33.67
    3     6     6     1.08551433    -0.25027269   -25.30451118    -0.00735710    -0.00035390  0.11D-03  0.66D-04    33.67
    3     7     7     1.08410291    -0.25056040   -25.25055335    -0.00737763    -0.00034318  0.75D-04  0.89D-04    33.67
    3     8     8     1.08412324    -0.25055173   -25.25054468    -0.00751400    -0.00035495  0.77D-04  0.92D-04    33.67
    3     9     9     1.08413544    -0.25054781   -25.25054076    -0.00759620    -0.00036128  0.77D-04  0.94D-04    33.67
    3    10    10     1.08413730    -0.25054777   -25.25054071    -0.00761860    -0.00036139  0.77D-04  0.94D-04    33.67
    3    11    11     1.08413441    -0.25054763   -25.25054058    -0.00761937    -0.00036120  0.77D-04  0.94D-04    33.67
    3    12    12     1.08105589    -0.24785160   -25.24067148    -0.00754723    -0.00038368  0.71D-04  0.11D-03    33.67
    4     1     1     1.07678243    -0.24614598   -25.36213937    -0.00027623    -0.00001548  0.85D-05  0.20D-05    49.57
    4     2     2     1.08771323    -0.25066744   -25.30490593    -0.00039026    -0.00003190  0.24D-04  0.38D-05    49.57
    4     3     3     1.08771263    -0.25066732   -25.30490582    -0.00039223    -0.00003198  0.24D-04  0.39D-05    49.57
    4     4     4     1.08771138    -0.25066714   -25.30490563    -0.00039327    -0.00003213  0.24D-04  0.39D-05    49.57
    4     5     5     1.08770917    -0.25066697   -25.30490547    -0.00039414    -0.00003225  0.25D-04  0.38D-05    49.57
    4     6     6     1.08770839    -0.25066690   -25.30490539    -0.00039421    -0.00003230  0.25D-04  0.39D-05    49.57
    4     7     7     1.08550659    -0.25093246   -25.25092541    -0.00037205    -0.00002530  0.18D-04  0.36D-05    49.57
    4     8     8     1.08550727    -0.25093246   -25.25092540    -0.00038073    -0.00002530  0.18D-04  0.36D-05    49.57
    4     9     9     1.08550518    -0.25093220   -25.25092514    -0.00038439    -0.00002548  0.18D-04  0.37D-05    49.57
    4    10    10     1.08551007    -0.25093160   -25.25092455    -0.00038383    -0.00002560  0.18D-04  0.37D-05    49.57
    4    11    11     1.08551831    -0.25093106   -25.25092401    -0.00038342    -0.00002557  0.18D-04  0.37D-05    49.57
    4    12    12     1.08203609    -0.24823849   -25.24105837    -0.00038688    -0.00002797  0.12D-04  0.66D-05    49.57
    5     1     1     1.07713570    -0.24616323   -25.36215663    -0.00001726    -0.00000126  0.64D-06  0.18D-06    65.51
    5     2     2     1.08880152    -0.25070935   -25.30494785    -0.00004191    -0.00000468  0.21D-05  0.75D-06    65.51
    5     3     3     1.08879968    -0.25070931   -25.30494780    -0.00004199    -0.00000471  0.22D-05  0.75D-06    65.51
    5     4     4     1.08879846    -0.25070927   -25.30494776    -0.00004213    -0.00000474  0.22D-05  0.74D-06    65.51
    5     5     5     1.08879798    -0.25070925   -25.30494774    -0.00004227    -0.00000475  0.22D-05  0.74D-06    65.51
    5     6     6     1.08879778    -0.25070924   -25.30494773    -0.00004234    -0.00000476  0.22D-05  0.74D-06    65.51
    5     7     7     1.08603796    -0.25096298   -25.25095593    -0.00003052    -0.00000274  0.15D-05  0.46D-06    65.51
    5     8     8     1.08603813    -0.25096298   -25.25095593    -0.00003052    -0.00000274  0.15D-05  0.46D-06    65.51
    5     9     9     1.08603828    -0.25096296   -25.25095591    -0.00003076    -0.00000276  0.15D-05  0.46D-06    65.51
    5    10    10     1.08603941    -0.25096277   -25.25095572    -0.00003117    -0.00000288  0.15D-05  0.48D-06    65.51
    5    11    11     1.08604203    -0.25096258   -25.25095553    -0.00003152    -0.00000302  0.15D-05  0.51D-06    65.51
    5    12    12     1.08228512    -0.24826783   -25.24108771    -0.00002934    -0.00000316  0.19D-05  0.72D-06    65.51
    6     1     1     1.07720817    -0.24616473   -25.36215812    -0.00000149    -0.00000011  0.36D-07  0.18D-07    81.18
    6     2     2     1.08902664    -0.25071515   -25.30495364    -0.00000579    -0.00000051  0.23D-06  0.76D-07    81.18
    6     3     3     1.08902675    -0.25071514   -25.30495363    -0.00000583    -0.00000052  0.23D-06  0.77D-07    81.18
    6     4     4     1.08902668    -0.25071513   -25.30495363    -0.00000586    -0.00000052  0.24D-06  0.77D-07    81.18
    6     5     5     1.08902625    -0.25071513   -25.30495362    -0.00000588    -0.00000052  0.24D-06  0.77D-07    81.18
    6     6     6     1.08902607    -0.25071513   -25.30495362    -0.00000589    -0.00000052  0.24D-06  0.77D-07    81.18
    6     7     7     1.08610138    -0.25096631   -25.25095926    -0.00000333    -0.00000027  0.71D-07  0.64D-07    81.18
    6     8     8     1.08610144    -0.25096631   -25.25095926    -0.00000333    -0.00000028  0.71D-07  0.64D-07    81.18
    6     9     9     1.08610143    -0.25096631   -25.25095926    -0.00000335    -0.00000028  0.72D-07  0.65D-07    81.18
    6    10    10     1.08610094    -0.25096629   -25.25095923    -0.00000352    -0.00000029  0.75D-07  0.68D-07    81.18
    6    11    11     1.08610086    -0.25096627   -25.25095922    -0.00000369    -0.00000031  0.77D-07  0.72D-07    81.18
    6    12    12     1.08229272    -0.24827148   -25.24109137    -0.00000366    -0.00000043  0.11D-06  0.12D-06    81.18
    7     1     1     1.07722459    -0.24616485   -25.36215824    -0.00000012    -0.00000001  0.43D-08  0.12D-08    96.90
    7     2     2     1.08909113    -0.25071569   -25.30495419    -0.00000055    -0.00000005  0.43D-07  0.68D-08    96.90
    7     3     3     1.08909096    -0.25071569   -25.30495419    -0.00000055    -0.00000005  0.43D-07  0.70D-08    96.90
    7     4     4     1.08909074    -0.25071569   -25.30495418    -0.00000056    -0.00000005  0.44D-07  0.70D-08    96.90
    7     5     5     1.08909064    -0.25071569   -25.30495418    -0.00000056    -0.00000005  0.44D-07  0.71D-08    96.90
    7     6     6     1.08909053    -0.25071569   -25.30495418    -0.00000056    -0.00000005  0.44D-07  0.71D-08    96.90
    7     7     7     1.08611249    -0.25096660   -25.25095955    -0.00000029    -0.00000003  0.20D-07  0.56D-08    96.90
    7     8     8     1.08611251    -0.25096660   -25.25095955    -0.00000029    -0.00000003  0.20D-07  0.56D-08    96.90
    7     9     9     1.08611239    -0.25096660   -25.25095955    -0.00000029    -0.00000003  0.20D-07  0.57D-08    96.90
    7    10    10     1.08611226    -0.25096660   -25.25095955    -0.00000031    -0.00000003  0.21D-07  0.61D-08    96.90
    7    11    11     1.08611228    -0.25096660   -25.25095954    -0.00000033    -0.00000003  0.22D-07  0.64D-08    96.90
    7    12    12     1.08229820    -0.24827195   -25.24109184    -0.00000047    -0.00000005  0.28D-07  0.11D-07    96.90
    8     1     1     1.07722546    -0.24616485   -25.36215824    -0.00000000    -0.00000001  0.33D-08  0.10D-08   111.45
    8     2     2     1.08911906    -0.25071576   -25.30495425    -0.00000006    -0.00000001  0.48D-08  0.15D-08   111.45
    8     3     3     1.08911897    -0.25071576   -25.30495425    -0.00000006    -0.00000001  0.49D-08  0.15D-08   111.45
    8     4     4     1.08911881    -0.25071576   -25.30495425    -0.00000006    -0.00000001  0.51D-08  0.15D-08   111.45
    8     5     5     1.08911885    -0.25071576   -25.30495425    -0.00000006    -0.00000001  0.51D-08  0.15D-08   111.45
    8     6     6     1.08911877    -0.25071576   -25.30495425    -0.00000006    -0.00000001  0.51D-08  0.15D-08   111.45
    8     7     7     1.08611648    -0.25096663   -25.25095958    -0.00000003    -0.00000000  0.19D-08  0.12D-08   111.45
    8     8     8     1.08611648    -0.25096663   -25.25095958    -0.00000003    -0.00000000  0.19D-08  0.12D-08   111.45
    8     9     9     1.08611646    -0.25096663   -25.25095958    -0.00000003    -0.00000000  0.19D-08  0.12D-08   111.45
    8    10    10     1.08611634    -0.25096663   -25.25095958    -0.00000003    -0.00000000  0.21D-08  0.13D-08   111.45
    8    11    11     1.08611622    -0.25096663   -25.25095958    -0.00000003    -0.00000000  0.22D-08  0.13D-08   111.45
    8    12    12     1.08229834    -0.24827201   -25.24109189    -0.00000006    -0.00000000  0.11D-08  0.87D-09   111.45


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   4.6%
 S   3.5%  19.5%
 P   0.7%  17.0%  14.8%

 Initialization:   0.8%
 Other:           39.1%

 Total CPU:      111.4 seconds
 =====================================



 gnormi=  0.92831077  gnorms=  0.03118830  gnormp=  0.04050093  gnorm=  1.00000000
 ecorri= -0.22851749  ecorrs= -0.00767886  ecorrp= -0.00996851  ecorr= -0.24616485

 gnormi=  0.91817326  gnorms=  0.03717063  gnormp=  0.04465611  gnorm=  1.00000000
 ecorri= -0.23020050  ecorrs= -0.00932074  ecorrp= -0.01119452  ecorr= -0.25071576

 gnormi=  0.91817334  gnorms=  0.03717054  gnormp=  0.04465612  gnorm=  1.00000000
 ecorri= -0.23020052  ecorrs= -0.00932074  ecorrp= -0.01119449  ecorr= -0.25071576

 gnormi=  0.91817347  gnorms=  0.03717041  gnormp=  0.04465612  gnorm=  1.00000000
 ecorri= -0.23020056  ecorrs= -0.00932072  ecorrp= -0.01119448  ecorr= -0.25071576

 gnormi=  0.91817344  gnorms=  0.03717045  gnormp=  0.04465612  gnorm=  1.00000000
 ecorri= -0.23020055  ecorrs= -0.00932073  ecorrp= -0.01119447  ecorr= -0.25071576

 gnormi=  0.91817350  gnorms=  0.03717039  gnormp=  0.04465610  gnorm=  1.00000000
 ecorri= -0.23020056  ecorrs= -0.00932071  ecorrp= -0.01119449  ecorr= -0.25071576

 gnormi=  0.92071156  gnorms=  0.02984853  gnormp=  0.04943991  gnorm=  1.00000000
 ecorri= -0.23106788  ecorrs= -0.00749165  ecorrp= -0.01240710  ecorr= -0.25096663

 gnormi=  0.92071156  gnorms=  0.02984853  gnormp=  0.04943991  gnorm=  1.00000000
 ecorri= -0.23106788  ecorrs= -0.00749166  ecorrp= -0.01240710  ecorr= -0.25096663

 gnormi=  0.92071158  gnorms=  0.02984849  gnormp=  0.04943992  gnorm=  1.00000000
 ecorri= -0.23106789  ecorrs= -0.00749165  ecorrp= -0.01240710  ecorr= -0.25096663

 gnormi=  0.92071168  gnorms=  0.02984837  gnormp=  0.04943994  gnorm=  1.00000000
 ecorri= -0.23106791  ecorrs= -0.00749162  ecorrp= -0.01240710  ecorr= -0.25096663

 gnormi=  0.92071178  gnorms=  0.02984824  gnormp=  0.04943998  gnorm=  1.00000000
 ecorri= -0.23106793  ecorrs= -0.00749161  ecorrp= -0.01240709  ecorr= -0.25096663

 gnormi=  0.92395966  gnorms=  0.03163751  gnormp=  0.04440284  gnorm=  1.00000000
 ecorri= -0.22939332  ecorrs= -0.00785516  ecorrp= -0.01102353  ecorr= -0.24827201

 Wavefunction saved on  5101.2

 Reference coefficients greater than 0.0500000
 =============================================
 22000000222000           0.9190917   0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.0000000
                         -0.0000000  -0.0000000   0.0000000  -0.0687160
 2/000\00222000          -0.0000000  -0.0000000   0.0000000  -0.0000000  -0.0000000   0.8832971   0.0000000   0.1290384
                          0.0000000   0.0000000  -0.0000000  -0.0000000
 2/00\000222000           0.0000000   0.0000000   0.0000000   0.8832971   0.0000000   0.0000000   0.1290384   0.0000000
                         -0.0000000  -0.0000000   0.0000000   0.0000000
 2/\00000222000           0.0000000   0.0000000  -0.0000000  -0.0000000   0.8832970  -0.0000000  -0.0000000   0.0000000
                         -0.1290384   0.0000000   0.0000000   0.0000000
 2/0000\0222000           0.0000000   0.8800857   0.0752536  -0.0000000  -0.0000000   0.0000000  -0.0000000   0.0000000
                          0.0000000   0.0038857   0.1289793   0.0000000
 2/0\0000222000           0.0000000  -0.0752536   0.8800856  -0.0000000   0.0000000   0.0000000  -0.0000000   0.0000000
                         -0.0000000  -0.1289797   0.0038857   0.0000000
 2/00000\222000           0.0944580   0.0000001   0.0000000  -0.0000000  -0.0000000   0.0000000  -0.0000000   0.0000000
                         -0.0000000  -0.0000001  -0.0000002   0.7382243
 20/000\0222000          -0.0000000  -0.0000000   0.0000000  -0.0000000   0.1960663  -0.0000000  -0.0000000  -0.0000000
                          0.6378458  -0.0000000  -0.0000000  -0.0000000
 200/00\0222000           0.0000001  -0.0167041   0.1953534   0.0000000  -0.0000000  -0.0000000   0.0000000   0.0000000
                         -0.0000000   0.6375631  -0.0192076  -0.0000002
 200/0\00222000           0.0000000  -0.0000000  -0.0000000   0.0000000   0.0000000  -0.1697984   0.0000000   0.5523923
                          0.0000000  -0.0000000  -0.0000000   0.0000000
 2000/\00222000          -0.0000000  -0.0000000   0.0000000  -0.0000000  -0.1697983  -0.0000000  -0.0000000   0.0000000
                         -0.5523920  -0.0000000   0.0000000   0.0000000
 20/00\00222000           0.0000000  -0.0000000  -0.0000000  -0.1697984  -0.0000000   0.0000000   0.5523919   0.0000000
                         -0.0000000  -0.0000000   0.0000000   0.0000000
 200/\000222000           0.0000000   0.0000000   0.0000000   0.1697984   0.0000000  -0.0000000  -0.5523919  -0.0000000
                          0.0000000   0.0000000  -0.0000000  -0.0000000
 20/0\000222000          -0.0000000  -0.0000000   0.0000000  -0.0000000   0.0000000  -0.1697984   0.0000000   0.5523914
                          0.0000000  -0.0000000  -0.0000000   0.0000000
 20020000222000          -0.0538484   0.1381356   0.0118116   0.0000000  -0.0000000   0.0000000   0.0000000  -0.0000000
                         -0.0000000  -0.0135818  -0.4508213  -0.2205066
 20200000222000          -0.0538484   0.1381357   0.0118116   0.0000000   0.0000000  -0.0000000   0.0000000  -0.0000000
                         -0.0000000  -0.0135818  -0.4508212  -0.2205065
 20000020222000          -0.0538489  -0.1381355  -0.0118116   0.0000000   0.0000000   0.0000000  -0.0000000  -0.0000000
                         -0.0000000   0.0135817   0.4508182  -0.2205049
 20000000222/\0          -0.0000000   0.0000000   0.0000000   0.0000000  -0.0000000  -0.2516489   0.0000000  -0.4154832
                          0.0000000  -0.0000000  -0.0000000   0.0000000
 20000000222/0\          -0.0000000  -0.0000000  -0.0000000  -0.2516489  -0.0000000  -0.0000000  -0.4154832  -0.0000000
                          0.0000000   0.0000000  -0.0000000  -0.0000000
 200000002220/\           0.0000000  -0.0000000  -0.0000000   0.0000000  -0.2516489  -0.0000000  -0.0000000   0.0000000
                          0.4154832   0.0000000  -0.0000000   0.0000000
 20002000222000          -0.0538479  -0.0792968   0.1137232   0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0000000
                         -0.0000000   0.3972082   0.2136499  -0.2205079
 20000200222000          -0.0538478  -0.0588386  -0.1255347   0.0000000  -0.0000000  -0.0000000   0.0000000   0.0000000
                         -0.0000000  -0.3836267   0.2371739  -0.2205082
 20000000222200          -0.1287813  -0.2047228  -0.0175053   0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0000000
                         -0.0000000  -0.0102156  -0.3390873   0.1776780
 20000/\0222000          -0.0000000   0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0980331   0.0000000   0.3189208
                         -0.0000000   0.0000000   0.0000000  -0.0000000
 2000/0\0222000          -0.0000000  -0.0000000   0.0000000  -0.0980331   0.0000000  -0.0000000   0.3189206  -0.0000000
                          0.0000000   0.0000000  -0.0000000   0.0000000
 20000000222020          -0.1287815   0.1175215  -0.1685429  -0.0000000  -0.0000000   0.0000000  -0.0000000   0.0000000
                         -0.0000000   0.2987657   0.1606969   0.1776779
 20000000222002          -0.1287815   0.0872014   0.1860481  -0.0000000   0.0000000   0.0000000   0.0000000  -0.0000000
                         -0.0000000  -0.2885501   0.1783907   0.1776779
 20000002222000          -0.0092672   0.0000000   0.0000000  -0.0000000   0.0000000   0.0000000  -0.0000000  -0.0000000
                         -0.0000000  -0.0000000  -0.0000001   0.1662793
 2000/00\222000          -0.0000000  -0.0000000  -0.0000000  -0.0146931  -0.0000000  -0.0000000  -0.1168836   0.0000000
                         -0.0000000   0.0000000  -0.0000000  -0.0000000
 20000/0\222000          -0.0000000  -0.0000000   0.0000000   0.0000000  -0.0000000  -0.0146931   0.0000000  -0.1168836
                         -0.0000000   0.0000000   0.0000000   0.0000000
 20/0000\222000          -0.0000000  -0.0000000   0.0000000  -0.0000000  -0.0146931   0.0000000   0.0000000  -0.0000000
                          0.1168830   0.0000000  -0.0000000  -0.0000000
 200000/\222000          -0.0000001  -0.0146397  -0.0012518   0.0000000   0.0000000  -0.0000000   0.0000000   0.0000000
                         -0.0000000  -0.0035198  -0.1168324   0.0000002
 200/000\222000          -0.0000000   0.0012518  -0.0146397   0.0000000   0.0000000   0.0000000   0.0000000  -0.0000000
                         -0.0000000   0.1168310  -0.0035197  -0.0000000

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.955365   -0.000000    0.000000    0.000000    0.000000    0.000000    0.000000   -0.000000    0.000000   -0.000000
             0.000000    0.068897
 2          -0.000000    0.947646    0.000000   -0.000000   -0.087940    0.000000   -0.005443   -0.056714   -0.000000    0.000000
            -0.000000    0.000000
 3           0.000000    0.087940    0.000000   -0.000000    0.947646    0.000000    0.056714   -0.005443    0.000000   -0.000000
             0.000000    0.000000
 4          -0.000000   -0.000000    0.951718   -0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.000000   -0.000000
            -0.056974   -0.000000
 5          -0.000000   -0.000000    0.000000   -0.000000    0.000000    0.951718   -0.000000   -0.000000    0.056974    0.000000
            -0.000000    0.000000
 6          -0.000000    0.000000    0.000000    0.951718    0.000000    0.000000   -0.000000    0.000000    0.000000   -0.056974
             0.000000    0.000000
 7          -0.000000   -0.000000    0.056378   -0.000000    0.000000    0.000000    0.000000   -0.000000    0.000000   -0.000000
             0.953681   -0.000000
 8           0.000000    0.000000    0.000000    0.056378    0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.953681
             0.000000   -0.000000
 9          -0.000000    0.000000   -0.000000   -0.000000   -0.000000   -0.056378   -0.000000    0.000000    0.953681    0.000000
            -0.000000   -0.000000
 10          0.000000    0.001290   -0.000000    0.000000   -0.056363    0.000000    0.953495    0.018829    0.000000   -0.000000
            -0.000000   -0.000000
 11         -0.000000    0.056363    0.000000   -0.000000    0.001290    0.000000   -0.018829    0.953495   -0.000000    0.000000
             0.000000   -0.000000
 12         -0.072841   -0.000000    0.000000   -0.000000    0.000000   -0.000000    0.000000   -0.000000    0.000000    0.000000
             0.000000    0.953253

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.957844   -0.000000    0.000000    0.000000   -0.000000    0.000000   -0.000000    0.000000    0.000000    0.000000
            -0.000000   -0.002045
 2          -0.000000    0.953421   -0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.000000   -0.000000   -0.000041
            -0.000354    0.000000
 3           0.000000   -0.000000    0.953421   -0.000000    0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.000354
            -0.000041    0.000000
 4           0.000000    0.000000   -0.000000    0.953421   -0.000000    0.000000   -0.000356    0.000000    0.000000   -0.000000
            -0.000000   -0.000000
 5          -0.000000   -0.000000    0.000000   -0.000000    0.953421    0.000000    0.000000    0.000000    0.000356    0.000000
            -0.000000   -0.000000
 6           0.000000   -0.000000   -0.000000    0.000000    0.000000    0.953421   -0.000000   -0.000356   -0.000000    0.000000
             0.000000   -0.000000
 7          -0.000000   -0.000000    0.000000   -0.000356    0.000000   -0.000000    0.955346   -0.000000   -0.000000    0.000000
             0.000000    0.000000
 8           0.000000    0.000000   -0.000000    0.000000    0.000000   -0.000356   -0.000000    0.955346   -0.000000    0.000000
             0.000000   -0.000000
 9           0.000000   -0.000000   -0.000000    0.000000    0.000356   -0.000000   -0.000000   -0.000000    0.955346    0.000000
             0.000000    0.000000
 10          0.000000   -0.000041    0.000354   -0.000000    0.000000    0.000000    0.000000    0.000000    0.000000    0.955346
            -0.000000   -0.000000
 11         -0.000000   -0.000354   -0.000041   -0.000000   -0.000000    0.000000    0.000000    0.000000    0.000000   -0.000000
             0.955346   -0.000000
 12         -0.002045    0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.000000   -0.000000
            -0.000000    0.956030


 RESULTS FOR STATE 1.1
 =====================

 Coefficient of reference function:   C(0) = 0.95536510 (fixed)   0.95811787 (relaxed)   0.95784398 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.01182135   -0.01969702   -0.14811664
 Singles      0.03399399   -0.07198930   -0.07372653
 Pairs        0.04414438   -0.01564438   -0.02432168
 Total        1.08995972   -0.10733070   -0.24616485
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -25.11531783
 Nuclear energy                         0.00000000
 Kinetic energy                         6.93983980
 One electron energy                  -41.21409868
 Two electron energy                   15.85194044
 Virial quotient                       -3.65457402
 Correlation energy                    -0.24684041
 !MRCI STATE 1.1 Energy               -25.362158244774

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.38436394 (Davidson, fixed reference)
 Cluster corrected energies           -25.38421014 (Davidson, relaxed reference)
 Cluster corrected energies           -25.38436394 (Davidson, rotated reference)

 Cluster corrected energies           -25.38090928 (Pople, fixed reference)
 Cluster corrected energies           -25.38077244 (Pople, relaxed reference)
 Cluster corrected energies           -25.38090928 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Coefficient of reference function:   C(0) = 0.94764587 (fixed)   0.95447890 (relaxed)   0.95342126 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.01007815   -0.01443476   -0.16430533
 Singles      0.04089124   -0.07249097   -0.07521591
 Pairs        0.04912598   -0.00000000   -0.01119452
 Total        1.10009537   -0.08692573   -0.25071576
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -25.05404719
 Nuclear energy                         0.00000000
 Kinetic energy                         7.11827336
 One electron energy                  -41.46549143
 Two electron energy                   16.16053718
 Virial quotient                       -3.55492870
 Correlation energy                    -0.25090706
 !MRCI STATE 2.1 Energy               -25.304954247146

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.33006888 (Davidson, fixed reference)
 Cluster corrected energies           -25.32945751 (Davidson, relaxed reference)
 Cluster corrected energies           -25.33006888 (Davidson, rotated reference)

 Cluster corrected energies           -25.32629106 (Pople, fixed reference)
 Cluster corrected energies           -25.32574124 (Pople, relaxed reference)
 Cluster corrected energies           -25.32629106 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.94764594 (fixed)   0.95447894 (relaxed)   0.95342132 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.01007811   -0.01443476   -0.16430537
 Singles      0.04089114   -0.07249094   -0.07521589
 Pairs        0.04912598   -0.00000000   -0.01119450
 Total        1.10009523   -0.08692571   -0.25071576
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -25.05404719
 Nuclear energy                         0.00000000
 Kinetic energy                         7.11827340
 One electron energy                  -41.46549064
 Two electron energy                   16.16053639
 Virial quotient                       -3.55492868
 Correlation energy                    -0.25090706
 !MRCI STATE 3.1 Energy               -25.304954247017

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.33006885 (Davidson, fixed reference)
 Cluster corrected energies           -25.32945749 (Davidson, relaxed reference)
 Cluster corrected energies           -25.33006885 (Davidson, rotated reference)

 Cluster corrected energies           -25.32629103 (Pople, fixed reference)
 Cluster corrected energies           -25.32574122 (Pople, relaxed reference)
 Cluster corrected energies           -25.32629103 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.95171761 (fixed)   0.95447901 (relaxed)   0.95342140 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.01007809   -0.01443476   -0.16430540
 Singles      0.04089099   -0.07249093   -0.07521587
 Pairs        0.04912597    0.00000000   -0.01119448
 Total        1.10009504   -0.08692569   -0.25071576
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -25.05404719
 Nuclear energy                         0.00000000
 Kinetic energy                         7.11827322
 One electron energy                  -41.46548949
 Two electron energy                   16.16053525
 Virial quotient                       -3.55492877
 Correlation energy                    -0.25090706
 !MRCI STATE 4.1 Energy               -25.304954246852

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.33006880 (Davidson, fixed reference)
 Cluster corrected energies           -25.32945745 (Davidson, relaxed reference)
 Cluster corrected energies           -25.33006880 (Davidson, rotated reference)

 Cluster corrected energies           -25.32629099 (Pople, fixed reference)
 Cluster corrected energies           -25.32574118 (Pople, relaxed reference)
 Cluster corrected energies           -25.32629099 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Maximum overlap with reference state  6

 Coefficient of reference function:   C(0) = 0.95171759 (fixed)   0.95447899 (relaxed)   0.95342138 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.01007809   -0.01443476   -0.16430540
 Singles      0.04089102   -0.07249092   -0.07521588
 Pairs        0.04912598   -0.00000000   -0.01119447
 Total        1.10009509   -0.08692568   -0.25071576
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -25.05404719
 Nuclear energy                         0.00000000
 Kinetic energy                         7.11827325
 One electron energy                  -41.46548970
 Two electron energy                   16.16053545
 Virial quotient                       -3.55492875
 Correlation energy                    -0.25090706
 !MRCI STATE 5.1 Energy               -25.304954246840

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.33006881 (Davidson, fixed reference)
 Cluster corrected energies           -25.32945746 (Davidson, relaxed reference)
 Cluster corrected energies           -25.33006881 (Davidson, rotated reference)

 Cluster corrected energies           -25.32629100 (Pople, fixed reference)
 Cluster corrected energies           -25.32574119 (Pople, relaxed reference)
 Cluster corrected energies           -25.32629100 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.95171763 (fixed)   0.95447903 (relaxed)   0.95342142 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.01007808   -0.01443476   -0.16430540
 Singles      0.04089097   -0.07249094   -0.07521587
 Pairs        0.04912595   -0.00000000   -0.01119449
 Total        1.10009500   -0.08692570   -0.25071576
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -25.05404719
 Nuclear energy                         0.00000000
 Kinetic energy                         7.11827318
 One electron energy                  -41.46548931
 Two electron energy                   16.16053506
 Virial quotient                       -3.55492879
 Correlation energy                    -0.25090706
 !MRCI STATE 6.1 Energy               -25.304954246825

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.33006879 (Davidson, fixed reference)
 Cluster corrected energies           -25.32945744 (Davidson, relaxed reference)
 Cluster corrected energies           -25.33006879 (Davidson, rotated reference)

 Cluster corrected energies           -25.32629098 (Pople, fixed reference)
 Cluster corrected energies           -25.32574117 (Pople, relaxed reference)
 Cluster corrected energies           -25.32629098 (Pople, rotated reference)



 RESULTS FOR STATE 7.1
 =====================

 Maximum overlap with reference state 11

 Coefficient of reference function:   C(0) = 0.95368090 (fixed)   0.95651608 (relaxed)   0.95534580 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00879379   -0.01202079   -0.16908793
 Singles      0.03270407   -0.06790942   -0.06947160
 Pairs        0.05416970    0.00000000   -0.01240710
 Total        1.09566756   -0.07993021   -0.25096663
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -25.00018425
 Nuclear energy                         0.00000000
 Kinetic energy                         7.21122452
 One electron energy                  -41.50621527
 Two electron energy                   16.25525569
 Virial quotient                       -3.50161883
 Correlation energy                    -0.25077533
 !MRCI STATE 7.1 Energy               -25.250959579461

 Properties without orbital relaxation:

 !MRCI STATE 7.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.27495064 (Davidson, fixed reference)
 Cluster corrected energies           -25.27427871 (Davidson, relaxed reference)
 Cluster corrected energies           -25.27495064 (Davidson, rotated reference)

 Cluster corrected energies           -25.27128775 (Pople, fixed reference)
 Cluster corrected energies           -25.27068665 (Pople, relaxed reference)
 Cluster corrected energies           -25.27128775 (Pople, rotated reference)



 RESULTS FOR STATE 8.1
 =====================

 Maximum overlap with reference state 10

 Coefficient of reference function:   C(0) = 0.95368090 (fixed)   0.95651608 (relaxed)   0.95534580 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00879379   -0.01202079   -0.16908793
 Singles      0.03270407   -0.06790942   -0.06947160
 Pairs        0.05416971    0.00000000   -0.01240710
 Total        1.09566756   -0.07993021   -0.25096663
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -25.00018425
 Nuclear energy                         0.00000000
 Kinetic energy                         7.21122449
 One electron energy                  -41.50621517
 Two electron energy                   16.25525559
 Virial quotient                       -3.50161885
 Correlation energy                    -0.25077533
 !MRCI STATE 8.1 Energy               -25.250959579452

 Properties without orbital relaxation:

 !MRCI STATE 8.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.27495064 (Davidson, fixed reference)
 Cluster corrected energies           -25.27427871 (Davidson, relaxed reference)
 Cluster corrected energies           -25.27495064 (Davidson, rotated reference)

 Cluster corrected energies           -25.27128775 (Pople, fixed reference)
 Cluster corrected energies           -25.27068665 (Pople, relaxed reference)
 Cluster corrected energies           -25.27128775 (Pople, rotated reference)



 RESULTS FOR STATE 9.1
 =====================

 Coefficient of reference function:   C(0) = 0.95368090 (fixed)   0.95651610 (relaxed)   0.95534580 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00879382   -0.01202079   -0.16908794
 Singles      0.03270403   -0.06790941   -0.06947159
 Pairs        0.05416972   -0.00000000   -0.01240710
 Total        1.09566756   -0.07993020   -0.25096663
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -25.00018425
 Nuclear energy                         0.00000000
 Kinetic energy                         7.21122464
 One electron energy                  -41.50621562
 Two electron energy                   16.25525604
 Virial quotient                       -3.50161877
 Correlation energy                    -0.25077533
 !MRCI STATE 9.1 Energy               -25.250959579398

 Properties without orbital relaxation:

 !MRCI STATE 9.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.27495064 (Davidson, fixed reference)
 Cluster corrected energies           -25.27427870 (Davidson, relaxed reference)
 Cluster corrected energies           -25.27495064 (Davidson, rotated reference)

 Cluster corrected energies           -25.27128775 (Pople, fixed reference)
 Cluster corrected energies           -25.27068665 (Pople, relaxed reference)
 Cluster corrected energies           -25.27128775 (Pople, rotated reference)



 RESULTS FOR STATE 10.1
 ======================

 Maximum overlap with reference state  7

 Coefficient of reference function:   C(0) = 0.95349510 (fixed)   0.95651615 (relaxed)   0.95534588 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00879374   -0.01202078   -0.16908791
 Singles      0.03270389   -0.06790946   -0.06947162
 Pairs        0.05416973   -0.00000001   -0.01240711
 Total        1.09566737   -0.07993025   -0.25096663
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -25.00018425
 Nuclear energy                         0.00000000
 Kinetic energy                         7.21122246
 One electron energy                  -41.50620767
 Two electron energy                   16.25524809
 Virial quotient                       -3.50161983
 Correlation energy                    -0.25077533
 !MRCI STATE 10.1 Energy              -25.250959578888

 Properties without orbital relaxation:

 !MRCI STATE 10.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.27495059 (Davidson, fixed reference)
 Cluster corrected energies           -25.27427867 (Davidson, relaxed reference)
 Cluster corrected energies           -25.27495059 (Davidson, rotated reference)

 Cluster corrected energies           -25.27128771 (Pople, fixed reference)
 Cluster corrected energies           -25.27068662 (Pople, relaxed reference)
 Cluster corrected energies           -25.27128771 (Pople, rotated reference)



 RESULTS FOR STATE 11.1
 ======================

 Maximum overlap with reference state  8

 Coefficient of reference function:   C(0) = 0.95349520 (fixed)   0.95651620 (relaxed)   0.95534598 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00879364   -0.01202077   -0.16908789
 Singles      0.03270373   -0.06790951   -0.06947166
 Pairs        0.05416976    0.00000001   -0.01240708
 Total        1.09566713   -0.07993027   -0.25096663
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -25.00018425
 Nuclear energy                         0.00000000
 Kinetic energy                         7.21121927
 One electron energy                  -41.50619682
 Two electron energy                   16.25523724
 Virial quotient                       -3.50162138
 Correlation energy                    -0.25077533
 !MRCI STATE 11.1 Energy              -25.250959578439

 Properties without orbital relaxation:

 !MRCI STATE 11.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.27495054 (Davidson, fixed reference)
 Cluster corrected energies           -25.27427864 (Davidson, relaxed reference)
 Cluster corrected energies           -25.27495054 (Davidson, rotated reference)

 Cluster corrected energies           -25.27128765 (Pople, fixed reference)
 Cluster corrected energies           -25.27068659 (Pople, relaxed reference)
 Cluster corrected energies           -25.27128765 (Pople, rotated reference)



 RESULTS FOR STATE 12.1
 ======================

 Coefficient of reference function:   C(0) = 0.95325274 (fixed)   0.95664543 (relaxed)   0.95602951 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.01090515   -0.01724854   -0.01895607
 Singles      0.03461463   -0.07074099   -0.07251189
 Pairs        0.04858119   -0.15949861   -0.15680405
 Total        1.09410096   -0.24748814   -0.24827201
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -24.99349544
 Nuclear energy                         0.00000000
 Kinetic energy                         6.99231048
 One electron energy                  -40.67170135
 Two electron energy                   15.43060945
 Virial quotient                       -3.60983568
 Correlation energy                    -0.24759645
 !MRCI STATE 12.1 Energy              -25.241091893623

 Properties without orbital relaxation:

 !MRCI STATE 12.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.26439096 (Davidson, fixed reference)
 Cluster corrected energies           -25.26404225 (Davidson, relaxed reference)
 Cluster corrected energies           -25.26439096 (Davidson, rotated reference)

 Cluster corrected energies           -25.26081516 (Pople, fixed reference)
 Cluster corrected energies           -25.26050355 (Pople, relaxed reference)
 Cluster corrected energies           -25.26081516 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       42.61       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1700(1)
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    OPER   
                                         1380   
                                         JKOP   

              2       7      161.28       700     1000      520     2100     2140     2141     5101   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI     MULTI   RHF-SCF       INT
 CPU TIMES  *       131.15    126.11      1.91      1.58      0.10      1.23
 REAL TIME  *       144.34 SEC
 DISK USED  *       203.95 MB (local),        2.52 GB (total)
 SF USED    *         1.51 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =       -25.38436394  AU                              
 SETTING HLSDIAG(2)     =       -25.33006888  AU                              
 SETTING HLSDIAG(3)     =       -25.33006885  AU                              
 SETTING HLSDIAG(4)     =       -25.33006880  AU                              
 SETTING HLSDIAG(5)     =       -25.33006881  AU                              
 SETTING HLSDIAG(6)     =       -25.33006879  AU                              
 SETTING HLSDIAG(7)     =       -25.27495064  AU                              
 SETTING HLSDIAG(8)     =       -25.27495064  AU                              
 SETTING HLSDIAG(9)     =       -25.27495064  AU                              
 SETTING HLSDIAG(10)    =       -25.27495059  AU                              
 SETTING HLSDIAG(11)    =       -25.27495054  AU                              
 SETTING HLSDIAG(12)    =       -25.26439096  AU                              


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
 Number of external orbitals:     132 (  69  63 )

 Molecular orbitals read from record     2141.2  Type=MCSCF/NATURAL (state averaged)

 Coulomb and exchange operators available. No transformation done.


 Number of p-space configurations:  24

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1       -25.06118403
     2       -25.06118403
     3       -25.06118403
     4       -25.06118403
     5       -25.06118403
     6       -25.00452596
     7       -25.00452596
     8       -25.00452596
     9       -25.00452596
    10       -25.00452596
    11       -25.00452596
    12       -25.00452596
    13       -25.00021701
    14       -25.00021701
    15       -25.00021701
    16       -24.99852082

 Number of blocks in overlap matrix:   329   Smallest eigenvalue:  0.67D+00
 Number of N-2 electron functions:     337
 Number of N-1 electron functions:    9566

 Number of internal configurations:                11838
 Number of singly external configurations:        631398
 Number of doubly external configurations:       1472571
 Total number of contracted configurations:      2115807
 Total number of uncontracted configurations:    8050887

 Diagonal Coupling coefficients finished.               Storage: 6335310 words, CPU-Time:      1.43 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:  670094 words, CPU-time:      0.08 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000   -25.06118403     0.00000000    -0.25663912  0.52D-01  0.54D-01     2.51
    1     2     2     1.00000000     0.00000000   -25.06118403    -0.00000000    -0.25665170  0.52D-01  0.54D-01     2.51
    1     3     3     1.00000000     0.00000000   -25.06118403     0.00000000    -0.25664714  0.52D-01  0.54D-01     2.51
    1     4     4     1.00000000     0.00000000   -25.06118403    -0.00000000    -0.25663311  0.52D-01  0.54D-01     2.51
    1     5     5     1.00000000     0.00000000   -25.06118403     0.00000000    -0.25664367  0.52D-01  0.54D-01     2.51
    1     6     6     1.00000000     0.00000000   -25.00452596     0.00000000    -0.26920808  0.48D-01  0.65D-01     2.51
    1     7     7     1.00000000     0.00000000   -25.00452596    -0.00000000    -0.26921298  0.48D-01  0.65D-01     2.51
    1     8     8     1.00000000     0.00000000   -25.00452596     0.00000000    -0.26911549  0.48D-01  0.65D-01     2.51
    1     9     9     1.00000000     0.00000000   -25.00452596    -0.00000000    -0.26912248  0.48D-01  0.65D-01     2.51
    1    10    10     1.00000000     0.00000000   -25.00452596     0.00000000    -0.26906648  0.48D-01  0.65D-01     2.51
    1    11    11     1.00000000     0.00000000   -25.00452596    -0.00000000    -0.26903420  0.48D-01  0.65D-01     2.51
    1    12    12     1.00000000     0.00000000   -25.00452596     0.00000000    -0.26904297  0.48D-01  0.65D-01     2.51
    1    13    13     1.00000000     0.00000000   -25.00021701     0.00000000    -0.25531934  0.42D-01  0.60D-01     2.51
    1    14    14     1.00000000     0.00000000   -25.00021701     0.00000000    -0.25532537  0.42D-01  0.60D-01     2.51
    1    15    15     1.00000000     0.00000000   -25.00021701    -0.00000000    -0.25522765  0.42D-01  0.60D-01     2.51
    1    16    16     1.00000000     0.00000000   -24.99852082    -0.00000000    -0.23003741  0.46D-01  0.42D-01     2.51
    2     1     1     1.08438030    -0.24522208   -25.30640611    -0.24522208    -0.00763947  0.27D-02  0.11D-02    32.06
    2     2     2     1.08438283    -0.24521649   -25.30640052    -0.24521649    -0.00764494  0.27D-02  0.11D-02    32.06
    2     3     3     1.08438744    -0.24521607   -25.30640011    -0.24521607    -0.00764423  0.27D-02  0.11D-02    32.06
    2     4     4     1.08440125    -0.24521532   -25.30639935    -0.24521532    -0.00764464  0.27D-02  0.11D-02    32.06
    2     5     5     1.08439969    -0.24521154   -25.30639557    -0.24521154    -0.00764836  0.27D-02  0.11D-02    32.06
    2     6     6     1.08676467    -0.24667335   -25.25119931    -0.24667335    -0.00735383  0.27D-02  0.13D-02    32.06
    2     7     7     1.08676548    -0.24667281   -25.25119877    -0.24667281    -0.00735483  0.27D-02  0.13D-02    32.06
    2     8     8     1.08679493    -0.24666996   -25.25119592    -0.24666996    -0.00735745  0.27D-02  0.13D-02    32.06
    2     9     9     1.08678868    -0.24665491   -25.25118087    -0.24665491    -0.00737776  0.27D-02  0.13D-02    32.06
    2    10    10     1.08679019    -0.24665417   -25.25118013    -0.24665417    -0.00737886  0.27D-02  0.13D-02    32.06
    2    11    11     1.08679238    -0.24664479   -25.25117075    -0.24664479    -0.00739244  0.27D-02  0.13D-02    32.06
    2    12    12     1.08677536    -0.24664265   -25.25116861    -0.24664265    -0.00739517  0.27D-02  0.13D-02    32.06
    2    13    13     1.08146819    -0.24106870   -25.24128571    -0.24106870    -0.00746660  0.31D-02  0.14D-02    32.06
    2    14    14     1.08151647    -0.24104727   -25.24126428    -0.24104727    -0.00749335  0.31D-02  0.14D-02    32.06
    2    15    15     1.08151721    -0.24104652   -25.24126353    -0.24104652    -0.00749444  0.31D-02  0.14D-02    32.06
    2    16    16     1.07990120    -0.23683539   -25.23535621    -0.23683539    -0.00574636  0.18D-02  0.80D-03    32.06
    3     1     1     1.08601217    -0.25298755   -25.31417158    -0.00776547    -0.00032430  0.10D-03  0.52D-04    61.83
    3     2     2     1.08601034    -0.25298736   -25.31417139    -0.00777087    -0.00032452  0.10D-03  0.52D-04    61.83
    3     3     3     1.08601127    -0.25298734   -25.31417137    -0.00777126    -0.00032450  0.10D-03  0.52D-04    61.83
    3     4     4     1.08600913    -0.25298687   -25.31417091    -0.00777156    -0.00032485  0.10D-03  0.52D-04    61.83
    3     5     5     1.08600904    -0.25298682   -25.31417085    -0.00777528    -0.00032491  0.10D-03  0.52D-04    61.83
    3     6     6     1.08802896    -0.25415214   -25.25867810    -0.00747878    -0.00027145  0.68D-04  0.54D-04    61.83
    3     7     7     1.08802691    -0.25415201   -25.25867797    -0.00747920    -0.00027108  0.67D-04  0.54D-04    61.83
    3     8     8     1.08801970    -0.25415159   -25.25867756    -0.00748163    -0.00027113  0.68D-04  0.54D-04    61.83
    3     9     9     1.08801986    -0.25415159   -25.25867755    -0.00749668    -0.00027117  0.68D-04  0.54D-04    61.83
    3    10    10     1.08801274    -0.25415115   -25.25867711    -0.00749698    -0.00027027  0.68D-04  0.54D-04    61.83
    3    11    11     1.08801205    -0.25415111   -25.25867707    -0.00750631    -0.00027028  0.68D-04  0.54D-04    61.83
    3    12    12     1.08801581    -0.25415093   -25.25867689    -0.00750828    -0.00027035  0.68D-04  0.54D-04    61.83
    3    13    13     1.08132233    -0.24855623   -25.24877324    -0.00748753    -0.00032295  0.60D-04  0.81D-04    61.83
    3    14    14     1.08132975    -0.24855390   -25.24877090    -0.00750662    -0.00032546  0.61D-04  0.82D-04    61.83
    3    15    15     1.08132954    -0.24855386   -25.24877087    -0.00750734    -0.00032546  0.61D-04  0.82D-04    61.83
    3    16    16     1.08181128    -0.24288683   -25.24140765    -0.00605144    -0.00021800  0.55D-04  0.34D-04    61.83
    4     1     1     1.08813088    -0.25335912   -25.31454315    -0.00037157    -0.00002733  0.24D-04  0.23D-05    91.47
    4     2     2     1.08813019    -0.25335899   -25.31454302    -0.00037163    -0.00002736  0.24D-04  0.23D-05    91.47
    4     3     3     1.08813018    -0.25335899   -25.31454302    -0.00037165    -0.00002737  0.24D-04  0.23D-05    91.47
    4     4     4     1.08812935    -0.25335893   -25.31454296    -0.00037206    -0.00002730  0.24D-04  0.23D-05    91.47
    4     5     5     1.08812817    -0.25335890   -25.31454293    -0.00037208    -0.00002730  0.24D-04  0.23D-05    91.47
    4     6     6     1.08960559    -0.25446285   -25.25898881    -0.00031071    -0.00001919  0.16D-04  0.18D-05    91.47
    4     7     7     1.08960566    -0.25446238   -25.25898834    -0.00031037    -0.00001924  0.16D-04  0.18D-05    91.47
    4     8     8     1.08960574    -0.25446238   -25.25898834    -0.00031079    -0.00001925  0.16D-04  0.18D-05    91.47
    4     9     9     1.08960396    -0.25446231   -25.25898827    -0.00031073    -0.00001913  0.16D-04  0.18D-05    91.47
    4    10    10     1.08960425    -0.25446139   -25.25898735    -0.00031024    -0.00001925  0.16D-04  0.18D-05    91.47
    4    11    11     1.08960420    -0.25446138   -25.25898734    -0.00031028    -0.00001926  0.16D-04  0.18D-05    91.47
    4    12    12     1.08960579    -0.25446128   -25.25898724    -0.00031035    -0.00001928  0.16D-04  0.18D-05    91.47
    4    13    13     1.08256697    -0.24891836   -25.24913537    -0.00036213    -0.00002437  0.18D-04  0.32D-05    91.47
    4    14    14     1.08256541    -0.24891819   -25.24913519    -0.00036429    -0.00002457  0.18D-04  0.32D-05    91.47
    4    15    15     1.08256539    -0.24891817   -25.24913518    -0.00036431    -0.00002458  0.18D-04  0.32D-05    91.47
    4    16    16     1.08295850    -0.24311888   -25.24163970    -0.00023205    -0.00001026  0.61D-05  0.12D-05    91.47
    5     1     1     1.08921012    -0.25339527   -25.31457930    -0.00003615    -0.00000345  0.14D-05  0.50D-06   121.23
    5     2     2     1.08921012    -0.25339519   -25.31457923    -0.00003620    -0.00000345  0.14D-05  0.50D-06   121.23
    5     3     3     1.08921002    -0.25339519   -25.31457923    -0.00003621    -0.00000345  0.14D-05  0.50D-06   121.23
    5     4     4     1.08920875    -0.25339504   -25.31457907    -0.00003611    -0.00000345  0.14D-05  0.50D-06   121.23
    5     5     5     1.08920914    -0.25339502   -25.31457905    -0.00003612    -0.00000344  0.14D-05  0.50D-06   121.23
    5     6     6     1.09031476    -0.25448728   -25.25901324    -0.00002443    -0.00000179  0.67D-06  0.31D-06   121.23
    5     7     7     1.09031418    -0.25448694   -25.25901290    -0.00002455    -0.00000181  0.67D-06  0.31D-06   121.23
    5     8     8     1.09031415    -0.25448694   -25.25901290    -0.00002456    -0.00000181  0.67D-06  0.31D-06   121.23
    5     9     9     1.09031401    -0.25448667   -25.25901263    -0.00002436    -0.00000179  0.66D-06  0.31D-06   121.23
    5    10    10     1.09031416    -0.25448601   -25.25901197    -0.00002462    -0.00000181  0.67D-06  0.31D-06   121.23
    5    11    11     1.09031417    -0.25448601   -25.25901197    -0.00002463    -0.00000181  0.67D-06  0.31D-06   121.23
    5    12    12     1.09031416    -0.25448592   -25.25901188    -0.00002465    -0.00000181  0.67D-06  0.31D-06   121.23
    5    13    13     1.08303620    -0.24894915   -25.24916615    -0.00003078    -0.00000276  0.11D-05  0.54D-06   121.23
    5    14    14     1.08303588    -0.24894913   -25.24916613    -0.00003094    -0.00000278  0.12D-05  0.54D-06   121.23
    5    15    15     1.08303591    -0.24894913   -25.24916613    -0.00003096    -0.00000278  0.12D-05  0.54D-06   121.23
    5    16    16     1.08319548    -0.24313005   -25.24165086    -0.00001117    -0.00000065  0.40D-06  0.73D-07   121.23
    6     1     1     1.08939478    -0.25339956   -25.31458360    -0.00000430    -0.00000031  0.17D-06  0.33D-07   150.51
    6     2     2     1.08939463    -0.25339950   -25.31458353    -0.00000430    -0.00000031  0.17D-06  0.33D-07   150.51
    6     3     3     1.08939460    -0.25339950   -25.31458353    -0.00000430    -0.00000031  0.17D-06  0.33D-07   150.51
    6     4     4     1.08939353    -0.25339934   -25.31458337    -0.00000430    -0.00000031  0.17D-06  0.33D-07   150.51
    6     5     5     1.08939342    -0.25339931   -25.31458335    -0.00000429    -0.00000031  0.17D-06  0.33D-07   150.51
    6     6     6     1.09037766    -0.25448948   -25.25901544    -0.00000219    -0.00000012  0.40D-07  0.25D-07   150.51
    6     7     7     1.09037777    -0.25448915   -25.25901511    -0.00000221    -0.00000012  0.40D-07  0.25D-07   150.51
    6     8     8     1.09037777    -0.25448915   -25.25901511    -0.00000221    -0.00000012  0.40D-07  0.25D-07   150.51
    6     9     9     1.09037659    -0.25448886   -25.25901482    -0.00000219    -0.00000012  0.40D-07  0.25D-07   150.51
    6    10    10     1.09037683    -0.25448823   -25.25901419    -0.00000222    -0.00000012  0.40D-07  0.25D-07   150.51
    6    11    11     1.09037683    -0.25448823   -25.25901419    -0.00000222    -0.00000012  0.40D-07  0.25D-07   150.51
    6    12    12     1.09037698    -0.25448815   -25.25901411    -0.00000222    -0.00000012  0.40D-07  0.25D-07   150.51
    6    13    13     1.08306562    -0.24895247   -25.24916947    -0.00000332    -0.00000024  0.57D-07  0.48D-07   150.51
    6    14    14     1.08306566    -0.24895247   -25.24916947    -0.00000334    -0.00000024  0.58D-07  0.49D-07   150.51
    6    15    15     1.08306566    -0.24895247   -25.24916947    -0.00000334    -0.00000024  0.58D-07  0.49D-07   150.51
    6    16    16     1.08322734    -0.24313084   -25.24165166    -0.00000079    -0.00000006  0.36D-07  0.74D-08   150.51
    7     1     1     1.08945482    -0.25339990   -25.31458394    -0.00000034    -0.00000003  0.23D-07  0.28D-08   179.83
    7     2     2     1.08945477    -0.25339984   -25.31458387    -0.00000034    -0.00000003  0.23D-07  0.28D-08   179.83
    7     3     3     1.08945476    -0.25339984   -25.31458387    -0.00000034    -0.00000003  0.23D-07  0.28D-08   179.83
    7     4     4     1.08945345    -0.25339968   -25.31458371    -0.00000034    -0.00000003  0.23D-07  0.28D-08   179.83
    7     5     5     1.08945328    -0.25339965   -25.31458369    -0.00000034    -0.00000003  0.23D-07  0.28D-08   179.83
    7     6     6     1.09039519    -0.25448961   -25.25901557    -0.00000013    -0.00000001  0.83D-08  0.20D-08   179.83
    7     7     7     1.09039530    -0.25448929   -25.25901525    -0.00000014    -0.00000001  0.84D-08  0.20D-08   179.83
    7     8     8     1.09039530    -0.25448929   -25.25901525    -0.00000014    -0.00000001  0.84D-08  0.20D-08   179.83
    7     9     9     1.09039405    -0.25448899   -25.25901495    -0.00000013    -0.00000001  0.83D-08  0.20D-08   179.83
    7    10    10     1.09039439    -0.25448837   -25.25901433    -0.00000014    -0.00000001  0.84D-08  0.20D-08   179.83
    7    11    11     1.09039439    -0.25448837   -25.25901433    -0.00000014    -0.00000001  0.84D-08  0.20D-08   179.83
    7    12    12     1.09039454    -0.25448828   -25.25901424    -0.00000014    -0.00000001  0.84D-08  0.20D-08   179.83
    7    13    13     1.08307305    -0.24895272   -25.24916973    -0.00000025    -0.00000002  0.16D-07  0.25D-08   179.83
    7    14    14     1.08307296    -0.24895272   -25.24916972    -0.00000025    -0.00000002  0.16D-07  0.25D-08   179.83
    7    15    15     1.08307296    -0.24895272   -25.24916972    -0.00000025    -0.00000002  0.16D-07  0.25D-08   179.83
    7    16    16     1.08323530    -0.24313092   -25.24165174    -0.00000008    -0.00000001  0.60D-08  0.59D-09   179.83
    8     1     1     1.08947914    -0.25339994   -25.31458397    -0.00000003    -0.00000000  0.22D-08  0.55D-09   207.43
    8     2     2     1.08947910    -0.25339987   -25.31458390    -0.00000003    -0.00000000  0.22D-08  0.55D-09   207.43
    8     3     3     1.08947910    -0.25339987   -25.31458390    -0.00000003    -0.00000000  0.22D-08  0.55D-09   207.43
    8     4     4     1.08947777    -0.25339971   -25.31458375    -0.00000003    -0.00000000  0.22D-08  0.55D-09   207.43
    8     5     5     1.08947765    -0.25339969   -25.31458372    -0.00000003    -0.00000000  0.22D-08  0.55D-09   207.43
    8     6     6     1.09040310    -0.25448962   -25.25901558    -0.00000001    -0.00000000  0.49D-09  0.33D-09   207.43
    8     7     7     1.09040325    -0.25448930   -25.25901526    -0.00000001    -0.00000000  0.49D-09  0.33D-09   207.43
    8     8     8     1.09040325    -0.25448930   -25.25901526    -0.00000001    -0.00000000  0.49D-09  0.33D-09   207.43
    8     9     9     1.09040194    -0.25448901   -25.25901497    -0.00000001    -0.00000000  0.49D-09  0.33D-09   207.43
    8    10    10     1.09040237    -0.25448838   -25.25901434    -0.00000001    -0.00000000  0.49D-09  0.33D-09   207.43
    8    11    11     1.09040237    -0.25448838   -25.25901434    -0.00000001    -0.00000000  0.49D-09  0.33D-09   207.43
    8    12    12     1.09040251    -0.25448829   -25.25901426    -0.00000001    -0.00000000  0.49D-09  0.33D-09   207.43
    8    13    13     1.08307879    -0.24895274   -25.24916975    -0.00000002    -0.00000000  0.10D-08  0.67D-09   207.43
    8    14    14     1.08307878    -0.24895274   -25.24916975    -0.00000002    -0.00000000  0.10D-08  0.68D-09   207.43
    8    15    15     1.08307878    -0.24895274   -25.24916975    -0.00000002    -0.00000000  0.10D-08  0.68D-09   207.43
    8    16    16     1.08323531    -0.24313092   -25.24165174    -0.00000000    -0.00000001  0.60D-08  0.59D-09   207.43


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   4.6%
 S   3.2%  23.3%
 P   0.7%  20.4%  10.8%

 Initialization:   0.8%
 Other:           36.3%

 Total CPU:      207.4 seconds
 =====================================



 gnormi=  0.91786980  gnorms=  0.03782855  gnormp=  0.04430165  gnorm=  1.00000000
 ecorri= -0.23258815  ecorrs= -0.00958653  ecorrp= -0.01122526  ecorr= -0.25339994

 gnormi=  0.91786983  gnorms=  0.03782844  gnormp=  0.04430173  gnorm=  1.00000000
 ecorri= -0.23258810  ecorrs= -0.00958651  ecorrp= -0.01122527  ecorr= -0.25339987

 gnormi=  0.91786983  gnorms=  0.03782844  gnormp=  0.04430173  gnorm=  1.00000000
 ecorri= -0.23258810  ecorrs= -0.00958650  ecorrp= -0.01122527  ecorr= -0.25339987

 gnormi=  0.91787095  gnorms=  0.03782719  gnormp=  0.04430186  gnorm=  1.00000000
 ecorri= -0.23258824  ecorrs= -0.00958618  ecorrp= -0.01122530  ecorr= -0.25339971

 gnormi=  0.91787106  gnorms=  0.03782699  gnormp=  0.04430195  gnorm=  1.00000000
 ecorri= -0.23258824  ecorrs= -0.00958612  ecorrp= -0.01122532  ecorr= -0.25339969

 gnormi=  0.91709204  gnorms=  0.03244385  gnormp=  0.05046411  gnorm=  1.00000000
 ecorri= -0.23339041  ecorrs= -0.00825688  ecorrp= -0.01284234  ecorr= -0.25448962

 gnormi=  0.91709191  gnorms=  0.03244411  gnormp=  0.05046398  gnorm=  1.00000000
 ecorri= -0.23339008  ecorrs= -0.00825694  ecorrp= -0.01284228  ecorr= -0.25448930

 gnormi=  0.91709191  gnorms=  0.03244411  gnormp=  0.05046398  gnorm=  1.00000000
 ecorri= -0.23339008  ecorrs= -0.00825694  ecorrp= -0.01284228  ecorr= -0.25448930

 gnormi=  0.91709301  gnorms=  0.03244266  gnormp=  0.05046433  gnorm=  1.00000000
 ecorri= -0.23339009  ecorrs= -0.00825655  ecorrp= -0.01284237  ecorr= -0.25448901

 gnormi=  0.91709265  gnorms=  0.03244321  gnormp=  0.05046414  gnorm=  1.00000000
 ecorri= -0.23338942  ecorrs= -0.00825668  ecorrp= -0.01284228  ecorr= -0.25448838

 gnormi=  0.91709265  gnorms=  0.03244321  gnormp=  0.05046414  gnorm=  1.00000000
 ecorri= -0.23338942  ecorrs= -0.00825668  ecorrp= -0.01284228  ecorr= -0.25448838

 gnormi=  0.91709253  gnorms=  0.03244339  gnormp=  0.05046408  gnorm=  1.00000000
 ecorri= -0.23338932  ecorrs= -0.00825672  ecorrp= -0.01284226  ecorr= -0.25448829

 gnormi=  0.92329386  gnorms=  0.02810734  gnormp=  0.04859880  gnorm=  1.00000000
 ecorri= -0.22985654  ecorrs= -0.00699754  ecorrp= -0.01209867  ecorr= -0.24895274

 gnormi=  0.92329388  gnorms=  0.02810724  gnormp=  0.04859888  gnorm=  1.00000000
 ecorri= -0.22985654  ecorrs= -0.00699752  ecorrp= -0.01209868  ecorr= -0.24895274

 gnormi=  0.92329388  gnorms=  0.02810725  gnormp=  0.04859888  gnorm=  1.00000000
 ecorri= -0.22985654  ecorrs= -0.00699751  ecorrp= -0.01209869  ecorr= -0.24895274

 gnormi=  0.92316046  gnorms=  0.03739116  gnormp=  0.03944839  gnorm=  1.00000000
 ecorri= -0.22444885  ecorrs= -0.00909124  ecorrp= -0.00959083  ecorr= -0.24313092

 Wavefunction saved on  5103.2

 Reference coefficients greater than 0.0500000
 =============================================
 2/00000/222000           0.0000000   0.0000000  -0.0000000  -0.0000000   0.0000045  -0.0000000   0.0000000   0.0000000
                          0.0000000  -0.0000000  -0.0000000   0.0000000  -0.0000000   0.0000000   0.0000000   0.9559049
 200/00/0222000           0.0000000  -0.0000000   0.0000000  -0.0000593   0.0000000   0.0000000  -0.0000000   0.0000000
                          0.9549573  -0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.0000000   0.0000000
 20/000/0222000          -0.0000628  -0.0000000   0.0000000  -0.0000000  -0.0000000   0.9549566   0.0000000   0.0000000
                         -0.0000000   0.0000000   0.0000000   0.0000000  -0.0000000   0.0000000   0.0000000   0.0000000
 2/0/0000222000          -0.0000000  -0.0000000   0.0000000   0.9535794  -0.0000137   0.0000000  -0.0000000  -0.0000000
                          0.0000641  -0.0000000   0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0000000   0.0000000
 2/0000/0222000          -0.0000000   0.0000000  -0.0000000   0.0000137   0.9535794   0.0000000   0.0000000  -0.0000000
                         -0.0000000   0.0000000   0.0000000  -0.0000000   0.0000000   0.0000000  -0.0000000  -0.0000055
 2/000/00222000           0.0000000  -0.0000000   0.9535792  -0.0000000   0.0000000  -0.0000000   0.0000503  -0.0000000
                         -0.0000000  -0.0000000   0.0000467   0.0000000   0.0000000  -0.0000000  -0.0000028   0.0000000
 2/00/000222000          -0.0000000   0.9535792   0.0000000   0.0000000  -0.0000000   0.0000000   0.0000000  -0.0000503
                          0.0000000   0.0000467   0.0000000  -0.0000000  -0.0000000  -0.0000028   0.0000000  -0.0000000
 2//00000222000           0.9535791   0.0000000  -0.0000000   0.0000000   0.0000000   0.0000679   0.0000000  -0.0000000
                         -0.0000000   0.0000000  -0.0000000   0.0000000  -0.0000000  -0.0000000   0.0000000  -0.0000000
 2000//00222000           0.0000000   0.0000000  -0.0000000  -0.0000000   0.0000000  -0.0000000   0.0000000   0.0000000
                          0.0000000  -0.0000000  -0.0000000   0.8541918   0.3677076   0.0000000  -0.0000000   0.0000000
 200/0/00222000          -0.0000000  -0.0000000  -0.0000535  -0.0000000  -0.0000000  -0.0000000   0.7569184   0.0000000
                          0.0000000   0.0000000   0.3957771   0.0000000   0.0000000   0.0000000   0.3678134  -0.0000000
 200//000222000           0.0000000   0.0000535  -0.0000000   0.0000000   0.0000000   0.0000000   0.0000000   0.7569183
                         -0.0000000  -0.3957773   0.0000000  -0.0000000  -0.0000000  -0.3678134   0.0000000  -0.0000000
 20//0000222000          -0.0000000  -0.0000000   0.0000000   0.0000000  -0.0000000   0.0000000  -0.0000000  -0.0000000
                         -0.0000000   0.0000000  -0.0000000  -0.4269661   0.7357132  -0.0000000   0.0000000   0.0000000
 20000//0222000          -0.0000000   0.0000000   0.0000336   0.0000000   0.0000000   0.0000000  -0.1065691   0.0000000
                         -0.0000000  -0.0000000  -0.5944201  -0.0000000  -0.0000000  -0.0000000   0.6371631  -0.0000000
 2000/0/0222000           0.0000000   0.0000336  -0.0000000  -0.0000000   0.0000000   0.0000000  -0.0000000   0.1065690
                         -0.0000000  -0.5944201   0.0000000  -0.0000000   0.0000000   0.6371631   0.0000000  -0.0000000
 20/0/000222000           0.0000000   0.0000000   0.0000003  -0.0000000   0.0000000   0.0000000  -0.5724158  -0.0000000
                         -0.0000000   0.0000000   0.6340103   0.0000000   0.0000000  -0.0000000   0.3677274   0.0000000
 20/00/00222000          -0.0000000   0.0000003   0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0000000   0.5724159
                         -0.0000000   0.6340102  -0.0000000  -0.0000000   0.0000000   0.3677274  -0.0000000  -0.0000000
 200000002220//           0.0000000   0.0000000  -0.0000000   0.0000000  -0.0000000  -0.0000000   0.0000000   0.0000000
                          0.0000000  -0.0000000  -0.0000000   0.0000620   0.4906960  -0.0000000  -0.0000000   0.0000000
 20000000222/0/           0.0000000   0.0000009   0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0000000   0.0000191
                          0.0000000   0.0000533  -0.0000000  -0.0000000   0.0000000   0.4906918   0.0000000  -0.0000000
 20000000222//0          -0.0000000  -0.0000000   0.0000009   0.0000000  -0.0000000  -0.0000000  -0.0000191   0.0000000
                          0.0000000   0.0000000   0.0000533   0.0000000   0.0000000  -0.0000000   0.4906918  -0.0000000

 Coefficients of singly external configurations greater than 0.0500000
 =====================================================================

 2000000/222000  29.1    -0.0000000  -0.0000000   0.0000000  -0.0000000   0.0000000   0.0000000  -0.0000000  -0.0000000
                         -0.0000000   0.0000000   0.0000000  -0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0617995
 2/000000222000  18.1     0.0000000  -0.0561185  -0.0000000  -0.0000000   0.0000000  -0.0000000  -0.0000000   0.0000045
                          0.0000000  -0.0000031  -0.0000000   0.0000000  -0.0000000  -0.0000009  -0.0000000   0.0000000
 2/000000222000  17.1    -0.0000000   0.0000000  -0.0561185   0.0000000   0.0000000   0.0000000  -0.0000045   0.0000000
                          0.0000000   0.0000000  -0.0000031  -0.0000000  -0.0000000   0.0000000  -0.0000009   0.0000000
 2/000000222000  16.1    -0.0561184  -0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0000086  -0.0000000   0.0000000
                          0.0000000   0.0000000  -0.0000000   0.0000000  -0.0000000   0.0000000  -0.0000000   0.0000000
 2/000000222000  15.1    -0.0000000   0.0000000  -0.0000000  -0.0561167   0.0000008   0.0000000  -0.0000000  -0.0000000
                         -0.0000084  -0.0000000  -0.0000000  -0.0000000   0.0000000  -0.0000000  -0.0000000   0.0000000
 2/000000222000  19.1     0.0000000  -0.0000000  -0.0000000  -0.0000008  -0.0561167  -0.0000000  -0.0000000   0.0000000
                         -0.0000000  -0.0000000  -0.0000000   0.0000000  -0.0000000  -0.0000000   0.0000000   0.0000010

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1          -0.000000    0.000000   -0.000000   -0.000000    0.953581   -0.000063    0.000000    0.000000    0.000000    0.000000
            -0.000000    0.000000   -0.000000    0.000000    0.000000    0.000000
 2           0.000000   -0.000000    0.953581   -0.000000    0.000000   -0.000000   -0.000000    0.000000    0.000038    0.000000
             0.000000    0.000050   -0.000000    0.000002    0.000000    0.000000
 3          -0.000000    0.953581    0.000000    0.000000   -0.000000    0.000000    0.000000    0.000038    0.000000   -0.000000
             0.000050   -0.000000    0.000002    0.000000   -0.000000   -0.000000
 4           0.000014   -0.000000    0.000000    0.953582    0.000000   -0.000000   -0.000059   -0.000000    0.000000   -0.000000
             0.000000   -0.000000    0.000000   -0.000000    0.000000   -0.000000
 5           0.953582    0.000000   -0.000000   -0.000014    0.000000   -0.000000    0.000000    0.000000   -0.000000    0.000000
             0.000000    0.000000    0.000000   -0.000000   -0.000000    0.000004
 6           0.000000   -0.000000    0.000000    0.000000    0.000068    0.954957    0.000000    0.000000   -0.000000   -0.000000
             0.000000    0.000000   -0.000000   -0.000000   -0.000000   -0.000000
 7           0.000000    0.000050    0.000000   -0.000000    0.000000    0.000000   -0.000000   -0.939981   -0.000000    0.000000
            -0.168456   -0.000000   -0.000041   -0.000000   -0.000000    0.000000
 8          -0.000000   -0.000000   -0.000050   -0.000000   -0.000000    0.000000    0.000000   -0.000000    0.939981    0.000000
             0.000000    0.168456   -0.000000    0.000041    0.000000    0.000000
 9          -0.000000   -0.000000    0.000000    0.000064   -0.000000   -0.000000    0.954957   -0.000000   -0.000000    0.000000
            -0.000000   -0.000000    0.000000    0.000000   -0.000000    0.000000
 10          0.000000   -0.000000    0.000047   -0.000000    0.000000    0.000000   -0.000000    0.000000    0.168456   -0.000000
            -0.000000   -0.939982    0.000000    0.000112   -0.000000   -0.000000
 11          0.000000    0.000047    0.000000    0.000000   -0.000000    0.000000   -0.000000    0.168456    0.000000   -0.000000
            -0.939982    0.000000    0.000112   -0.000000   -0.000000   -0.000000
 12         -0.000000    0.000000   -0.000000    0.000000    0.000000    0.000000   -0.000000    0.000000   -0.000000    0.954957
            -0.000000   -0.000000    0.000000   -0.000000    0.000131    0.000000
 13          0.000000    0.000000   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.000000   -0.000000   -0.000133
            -0.000000   -0.000000    0.000000    0.000000    0.955908   -0.000000
 14          0.000000   -0.000000   -0.000003   -0.000000   -0.000000    0.000000   -0.000000   -0.000000   -0.000061    0.000000
            -0.000000    0.000105    0.000000    0.955908   -0.000000    0.000000
 15         -0.000000   -0.000003    0.000000   -0.000000    0.000000    0.000000   -0.000000   -0.000061    0.000000   -0.000000
             0.000105    0.000000    0.955908   -0.000000   -0.000000    0.000000
 16         -0.000005    0.000000   -0.000000    0.000000   -0.000000    0.000000    0.000000    0.000000   -0.000000   -0.000000
            -0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.955905

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.953581   -0.000000    0.000000   -0.000000   -0.000000    0.000002    0.000000    0.000000    0.000000    0.000000
            -0.000000    0.000000   -0.000000    0.000000   -0.000000    0.000000
 2          -0.000000    0.953581    0.000000   -0.000000   -0.000000   -0.000000   -0.000000   -0.000002    0.000000    0.000002
            -0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.000000
 3           0.000000    0.000000    0.953581    0.000000    0.000000    0.000000    0.000002    0.000000    0.000000   -0.000000
             0.000002   -0.000000    0.000000   -0.000000   -0.000000    0.000000
 4          -0.000000   -0.000000    0.000000    0.953582   -0.000000    0.000000   -0.000000    0.000000    0.000002   -0.000000
            -0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.000000
 5          -0.000000   -0.000000    0.000000   -0.000000    0.953582   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000
            -0.000000    0.000000   -0.000000   -0.000000   -0.000000   -0.000001
 6           0.000002   -0.000000    0.000000    0.000000   -0.000000    0.954957    0.000000   -0.000000   -0.000000   -0.000000
             0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.000000
 7           0.000000   -0.000000    0.000002   -0.000000   -0.000000    0.000000    0.954957   -0.000000    0.000000   -0.000000
             0.000000    0.000000    0.000000    0.000000    0.000000   -0.000000
 8           0.000000   -0.000002    0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.954957    0.000000   -0.000000
            -0.000000    0.000000   -0.000000   -0.000000    0.000000    0.000000
 9           0.000000    0.000000    0.000000    0.000002   -0.000000   -0.000000    0.000000    0.000000    0.954957   -0.000000
            -0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.000000
 10          0.000000    0.000002   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.954957
            -0.000000    0.000000   -0.000000   -0.000001    0.000000   -0.000000
 11         -0.000000   -0.000000    0.000002   -0.000000   -0.000000    0.000000    0.000000   -0.000000   -0.000000   -0.000000
             0.954957   -0.000000   -0.000000   -0.000000   -0.000001   -0.000000
 12          0.000000    0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.000000    0.000000   -0.000000    0.000000
            -0.000000    0.954957   -0.000001   -0.000000   -0.000000    0.000000
 13         -0.000000   -0.000000    0.000000    0.000000   -0.000000   -0.000000    0.000000   -0.000000   -0.000000   -0.000000
            -0.000000   -0.000001    0.955908   -0.000000   -0.000000    0.000000
 14          0.000000   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.000000   -0.000000   -0.000000   -0.000001
            -0.000000   -0.000000   -0.000000    0.955908   -0.000000   -0.000000
 15         -0.000000   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.000000   -0.000000    0.000000
            -0.000001   -0.000000   -0.000000   -0.000000    0.955908   -0.000000
 16          0.000000    0.000000    0.000000    0.000000   -0.000001    0.000000   -0.000000    0.000000    0.000000   -0.000000
            -0.000000    0.000000    0.000000   -0.000000   -0.000000    0.955905


 RESULTS FOR STATE 1.1
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.95358141 (fixed)   0.95377966 (relaxed)   0.95358141 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00940518   -0.01591049   -0.16555927
 Singles      0.04160103   -0.07371339   -0.07661541
 Pairs        0.04871967   -0.00000000   -0.01122526
 Total        1.09972588   -0.08962389   -0.25339994
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -25.06118403
 Nuclear energy                         0.00000000
 Kinetic energy                         7.11752609
 One electron energy                  -41.53159567
 Two electron energy                   16.21701170
 Virial quotient                       -3.55665489
 Correlation energy                    -0.25339994
 !MRCI STATE 1.1 Energy               -25.314583971166

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.33985450 (Davidson, fixed reference)
 Cluster corrected energies           -25.33973867 (Davidson, relaxed reference)
 Cluster corrected energies           -25.33985450 (Davidson, rotated reference)

 Cluster corrected energies           -25.33449048 (Pople, fixed reference)
 Cluster corrected energies           -25.33439486 (Pople, relaxed reference)
 Cluster corrected energies           -25.33449048 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.95358144 (fixed)   0.95377969 (relaxed)   0.95358144 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00940514   -0.01591044   -0.16555924
 Singles      0.04160091   -0.07371336   -0.07661536
 Pairs        0.04871975   -0.00000000   -0.01122527
 Total        1.09972581   -0.08962380   -0.25339987
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -25.06118403
 Nuclear energy                         0.00000000
 Kinetic energy                         7.11752646
 One electron energy                  -41.53159595
 Two electron energy                   16.21701205
 Virial quotient                       -3.55665470
 Correlation energy                    -0.25339987
 !MRCI STATE 2.1 Energy               -25.314583903171

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.33985441 (Davidson, fixed reference)
 Cluster corrected energies           -25.33973858 (Davidson, relaxed reference)
 Cluster corrected energies           -25.33985441 (Davidson, rotated reference)

 Cluster corrected energies           -25.33449039 (Pople, fixed reference)
 Cluster corrected energies           -25.33439477 (Pople, relaxed reference)
 Cluster corrected energies           -25.33449039 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.95358144 (fixed)   0.95377970 (relaxed)   0.95358145 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00940514   -0.01591044   -0.16555924
 Singles      0.04160091   -0.07371336   -0.07661536
 Pairs        0.04871975    0.00000000   -0.01122527
 Total        1.09972580   -0.08962380   -0.25339987
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -25.06118403
 Nuclear energy                         0.00000000
 Kinetic energy                         7.11752646
 One electron energy                  -41.53159594
 Two electron energy                   16.21701204
 Virial quotient                       -3.55665470
 Correlation energy                    -0.25339987
 !MRCI STATE 3.1 Energy               -25.314583903169

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.33985441 (Davidson, fixed reference)
 Cluster corrected energies           -25.33973857 (Davidson, relaxed reference)
 Cluster corrected energies           -25.33985441 (Davidson, rotated reference)

 Cluster corrected energies           -25.33449039 (Pople, fixed reference)
 Cluster corrected energies           -25.33439477 (Pople, relaxed reference)
 Cluster corrected energies           -25.33449039 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Coefficient of reference function:   C(0) = 0.95358172 (fixed)   0.95377999 (relaxed)   0.95358172 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00940579   -0.01591091   -0.16556019
 Singles      0.04159951   -0.07371243   -0.07661422
 Pairs        0.04871987   -0.00000000   -0.01122530
 Total        1.09972516   -0.08962334   -0.25339971
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -25.06118403
 Nuclear energy                         0.00000000
 Kinetic energy                         7.11752919
 One electron energy                  -41.53159785
 Two electron energy                   16.21701410
 Virial quotient                       -3.55665331
 Correlation energy                    -0.25339971
 !MRCI STATE 4.1 Energy               -25.314583745131

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.33985407 (Davidson, fixed reference)
 Cluster corrected energies           -25.33973823 (Davidson, relaxed reference)
 Cluster corrected energies           -25.33985407 (Davidson, rotated reference)

 Cluster corrected energies           -25.33449009 (Pople, fixed reference)
 Cluster corrected energies           -25.33439446 (Pople, relaxed reference)
 Cluster corrected energies           -25.33449009 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.95358169 (fixed)   0.95377995 (relaxed)   0.95358169 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00940598   -0.01591100   -0.16555971
 Singles      0.04159930   -0.07371228   -0.07661403
 Pairs        0.04871998   -0.00000069   -0.01122595
 Total        1.09972525   -0.08962397   -0.25339969
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -25.06118403
 Nuclear energy                         0.00000000
 Kinetic energy                         7.11752949
 One electron energy                  -41.53159756
 Two electron energy                   16.21701384
 Virial quotient                       -3.55665315
 Correlation energy                    -0.25339969
 !MRCI STATE 5.1 Energy               -25.314583719663

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.33985407 (Davidson, fixed reference)
 Cluster corrected energies           -25.33973822 (Davidson, relaxed reference)
 Cluster corrected energies           -25.33985407 (Davidson, rotated reference)

 Cluster corrected energies           -25.33449008 (Pople, fixed reference)
 Cluster corrected energies           -25.33439445 (Pople, relaxed reference)
 Cluster corrected energies           -25.33449008 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Coefficient of reference function:   C(0) = 0.95495661 (fixed)   0.95495661 (relaxed)   0.95495661 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00564719   -0.01061155   -0.17033382
 Singles      0.03557666   -0.06914538   -0.07131347
 Pairs        0.05533696    0.00000000   -0.01284234
 Total        1.09656081   -0.07975693   -0.25448962
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -25.00452596
 Nuclear energy                         0.00000000
 Kinetic energy                         7.29090035
 One electron energy                  -41.81979203
 Two electron energy                   16.56077645
 Virial quotient                       -3.46445766
 Correlation energy                    -0.25448962
 !MRCI STATE 6.1 Energy               -25.259015583170

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.28358931 (Davidson, fixed reference)
 Cluster corrected energies           -25.28358931 (Davidson, relaxed reference)
 Cluster corrected energies           -25.28358931 (Davidson, rotated reference)

 Cluster corrected energies           -25.27834360 (Pople, fixed reference)
 Cluster corrected energies           -25.27834360 (Pople, relaxed reference)
 Cluster corrected energies           -25.27834360 (Pople, rotated reference)



 RESULTS FOR STATE 7.1
 =====================

 Maximum overlap with reference state  8

 Coefficient of reference function:   C(0) = 0.93998122 (fixed)   0.95495668 (relaxed)   0.95495668 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00564691   -0.01061127   -0.17033339
 Singles      0.03557694   -0.06914549   -0.07131363
 Pairs        0.05533681   -0.00000000   -0.01284228
 Total        1.09656066   -0.07975676   -0.25448930
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -25.00452596
 Nuclear energy                         0.00000000
 Kinetic energy                         7.29090829
 One electron energy                  -41.81980580
 Two electron energy                   16.56079055
 Virial quotient                       -3.46445384
 Correlation energy                    -0.25448930
 !MRCI STATE 7.1 Energy               -25.259015258074

 Properties without orbital relaxation:

 !MRCI STATE 7.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.28358891 (Davidson, fixed reference)
 Cluster corrected energies           -25.28358891 (Davidson, relaxed reference)
 Cluster corrected energies           -25.28358891 (Davidson, rotated reference)

 Cluster corrected energies           -25.27834322 (Pople, fixed reference)
 Cluster corrected energies           -25.27834322 (Pople, relaxed reference)
 Cluster corrected energies           -25.27834322 (Pople, rotated reference)



 RESULTS FOR STATE 8.1
 =====================

 Maximum overlap with reference state  9

 Coefficient of reference function:   C(0) = 0.93998125 (fixed)   0.95495668 (relaxed)   0.95495668 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00564691   -0.01061127   -0.17033339
 Singles      0.03557694   -0.06914548   -0.07131363
 Pairs        0.05533681   -0.00000000   -0.01284228
 Total        1.09656066   -0.07975676   -0.25448930
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -25.00452596
 Nuclear energy                         0.00000000
 Kinetic energy                         7.29090829
 One electron energy                  -41.81980579
 Two electron energy                   16.56079053
 Virial quotient                       -3.46445385
 Correlation energy                    -0.25448930
 !MRCI STATE 8.1 Energy               -25.259015258074

 Properties without orbital relaxation:

 !MRCI STATE 8.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.28358891 (Davidson, fixed reference)
 Cluster corrected energies           -25.28358891 (Davidson, relaxed reference)
 Cluster corrected energies           -25.28358891 (Davidson, rotated reference)

 Cluster corrected energies           -25.27834322 (Pople, fixed reference)
 Cluster corrected energies           -25.27834322 (Pople, relaxed reference)
 Cluster corrected energies           -25.27834322 (Pople, rotated reference)



 RESULTS FOR STATE 9.1
 =====================

 Maximum overlap with reference state  7

 Coefficient of reference function:   C(0) = 0.95495731 (fixed)   0.95495731 (relaxed)   0.95495731 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00564678   -0.01061135   -0.17033397
 Singles      0.03557530   -0.06914477   -0.07131267
 Pairs        0.05533713   -0.00000000   -0.01284237
 Total        1.09655920   -0.07975613   -0.25448901
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -25.00452596
 Nuclear energy                         0.00000000
 Kinetic energy                         7.29089122
 One electron energy                  -41.81977972
 Two electron energy                   16.56076475
 Virial quotient                       -3.46446192
 Correlation energy                    -0.25448900
 !MRCI STATE 9.1 Energy               -25.259014965523

 Properties without orbital relaxation:

 !MRCI STATE 9.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.28358822 (Davidson, fixed reference)
 Cluster corrected energies           -25.28358822 (Davidson, relaxed reference)
 Cluster corrected energies           -25.28358822 (Davidson, rotated reference)

 Cluster corrected energies           -25.27834260 (Pople, fixed reference)
 Cluster corrected energies           -25.27834260 (Pople, relaxed reference)
 Cluster corrected energies           -25.27834260 (Pople, rotated reference)



 RESULTS FOR STATE 10.1
 ======================

 Maximum overlap with reference state 12

 Coefficient of reference function:   C(0) = 0.93998207 (fixed)   0.95495748 (relaxed)   0.95495747 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00564604   -0.01061070   -0.17033293
 Singles      0.03557589   -0.06914515   -0.07131317
 Pairs        0.05533689    0.00000000   -0.01284228
 Total        1.09655883   -0.07975585   -0.25448838
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -25.00452596
 Nuclear energy                         0.00000000
 Kinetic energy                         7.29090992
 One electron energy                  -41.81981307
 Two electron energy                   16.56079873
 Virial quotient                       -3.46445294
 Correlation energy                    -0.25448838
 !MRCI STATE 10.1 Energy              -25.259014340769

 Properties without orbital relaxation:

 !MRCI STATE 10.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.28358744 (Davidson, fixed reference)
 Cluster corrected energies           -25.28358744 (Davidson, relaxed reference)
 Cluster corrected energies           -25.28358744 (Davidson, rotated reference)

 Cluster corrected energies           -25.27834185 (Pople, fixed reference)
 Cluster corrected energies           -25.27834185 (Pople, relaxed reference)
 Cluster corrected energies           -25.27834185 (Pople, rotated reference)



 RESULTS FOR STATE 11.1
 ======================

 Coefficient of reference function:   C(0) = 0.93998204 (fixed)   0.95495748 (relaxed)   0.95495747 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00564604   -0.01061070   -0.17033293
 Singles      0.03557589   -0.06914515   -0.07131317
 Pairs        0.05533689    0.00000000   -0.01284228
 Total        1.09655883   -0.07975585   -0.25448838
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -25.00452596
 Nuclear energy                         0.00000000
 Kinetic energy                         7.29090992
 One electron energy                  -41.81981308
 Two electron energy                   16.56079873
 Virial quotient                       -3.46445294
 Correlation energy                    -0.25448838
 !MRCI STATE 11.1 Energy              -25.259014340769

 Properties without orbital relaxation:

 !MRCI STATE 11.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.28358744 (Davidson, fixed reference)
 Cluster corrected energies           -25.28358744 (Davidson, relaxed reference)
 Cluster corrected energies           -25.28358744 (Davidson, rotated reference)

 Cluster corrected energies           -25.27834185 (Pople, fixed reference)
 Cluster corrected energies           -25.27834185 (Pople, relaxed reference)
 Cluster corrected energies           -25.27834185 (Pople, rotated reference)



 RESULTS FOR STATE 12.1
 ======================

 Maximum overlap with reference state 10

 Coefficient of reference function:   C(0) = 0.95495745 (fixed)   0.95495746 (relaxed)   0.95495746 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00564594   -0.01061059   -0.17033272
 Singles      0.03557608   -0.06914526   -0.07131331
 Pairs        0.05533683   -0.00000000   -0.01284226
 Total        1.09655885   -0.07975585   -0.25448829
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -25.00452596
 Nuclear energy                         0.00000000
 Kinetic energy                         7.29091457
 One electron energy                  -41.81982125
 Two electron energy                   16.56080699
 Virial quotient                       -3.46445072
 Correlation energy                    -0.25448829
 !MRCI STATE 12.1 Energy              -25.259014255144

 Properties without orbital relaxation:

 !MRCI STATE 12.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.28358735 (Davidson, fixed reference)
 Cluster corrected energies           -25.28358735 (Davidson, relaxed reference)
 Cluster corrected energies           -25.28358735 (Davidson, rotated reference)

 Cluster corrected energies           -25.27834177 (Pople, fixed reference)
 Cluster corrected energies           -25.27834177 (Pople, relaxed reference)
 Cluster corrected energies           -25.27834177 (Pople, rotated reference)



 RESULTS FOR STATE 13.1
 ======================

 Maximum overlap with reference state 15

 Coefficient of reference function:   C(0) = 0.95590784 (fixed)   0.95773975 (relaxed)   0.95590785 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.01043387   -0.01242213   -0.16826062
 Singles      0.03076010   -0.06740930   -0.06859345
 Pairs        0.05318553    0.00000000   -0.01209867
 Total        1.09437949   -0.07983143   -0.24895274
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -25.00021701
 Nuclear energy                         0.00000000
 Kinetic energy                         7.19559652
 One electron energy                  -41.44389788
 Two electron energy                   16.19472813
 Virial quotient                       -3.50897520
 Correlation energy                    -0.24895274
 !MRCI STATE 13.1 Energy              -25.249169746646

 Properties without orbital relaxation:

 !MRCI STATE 13.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.27266578 (Davidson, fixed reference)
 Cluster corrected energies           -25.27162453 (Davidson, relaxed reference)
 Cluster corrected energies           -25.27266578 (Davidson, rotated reference)

 Cluster corrected energies           -25.26763064 (Pople, fixed reference)
 Cluster corrected energies           -25.26677681 (Pople, relaxed reference)
 Cluster corrected energies           -25.26763064 (Pople, rotated reference)



 RESULTS FOR STATE 14.1
 ======================

 Coefficient of reference function:   C(0) = 0.95590754 (fixed)   0.95773974 (relaxed)   0.95590754 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.01043453   -0.01242210   -0.16826075
 Singles      0.03076001   -0.06740922   -0.06859331
 Pairs        0.05318565   -0.00000000   -0.01209868
 Total        1.09438019   -0.07983132   -0.24895274
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -25.00021701
 Nuclear energy                         0.00000000
 Kinetic energy                         7.19559741
 One electron energy                  -41.44390015
 Two electron energy                   16.19473041
 Virial quotient                       -3.50897477
 Correlation energy                    -0.24895274
 !MRCI STATE 14.1 Energy              -25.249169745562

 Properties without orbital relaxation:

 !MRCI STATE 14.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.27266595 (Davidson, fixed reference)
 Cluster corrected energies           -25.27162453 (Davidson, relaxed reference)
 Cluster corrected energies           -25.27266595 (Davidson, rotated reference)

 Cluster corrected energies           -25.26763078 (Pople, fixed reference)
 Cluster corrected energies           -25.26677681 (Pople, relaxed reference)
 Cluster corrected energies           -25.26763078 (Pople, rotated reference)



 RESULTS FOR STATE 15.1
 ======================

 Maximum overlap with reference state 13

 Coefficient of reference function:   C(0) = 0.95590754 (fixed)   0.95773975 (relaxed)   0.95590754 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.01043453   -0.01242210   -0.16826075
 Singles      0.03076001   -0.06740922   -0.06859331
 Pairs        0.05318565   -0.00000000   -0.01209869
 Total        1.09438019   -0.07983132   -0.24895274
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -25.00021701
 Nuclear energy                         0.00000000
 Kinetic energy                         7.19559741
 One electron energy                  -41.44390015
 Two electron energy                   16.19473040
 Virial quotient                       -3.50897477
 Correlation energy                    -0.24895274
 !MRCI STATE 15.1 Energy              -25.249169745561

 Properties without orbital relaxation:

 !MRCI STATE 15.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.27266595 (Davidson, fixed reference)
 Cluster corrected energies           -25.27162453 (Davidson, relaxed reference)
 Cluster corrected energies           -25.27266595 (Davidson, rotated reference)

 Cluster corrected energies           -25.26763078 (Pople, fixed reference)
 Cluster corrected energies           -25.26677681 (Pople, relaxed reference)
 Cluster corrected energies           -25.26763078 (Pople, rotated reference)



 RESULTS FOR STATE 16.1
 ======================

 Coefficient of reference function:   C(0) = 0.95590487 (fixed)   0.95590487 (relaxed)   0.95590487 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.01029417   -0.01842326   -0.01912130
 Singles      0.04092037   -0.07294226   -0.07574253
 Pairs        0.04317177   -0.15176540   -0.14826708
 Total        1.09438631   -0.24313092   -0.24313092
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -24.99852082
 Nuclear energy                         0.00000000
 Kinetic energy                         6.86951310
 One electron energy                  -40.20512147
 Two electron energy                   14.96346973
 Virial quotient                       -3.67444553
 Correlation energy                    -0.24313092
 !MRCI STATE 16.1 Energy              -25.241651736435

 Properties without orbital relaxation:

 !MRCI STATE 16.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.26459997 (Davidson, fixed reference)
 Cluster corrected energies           -25.26459997 (Davidson, relaxed reference)
 Cluster corrected energies           -25.26459997 (Davidson, rotated reference)

 Cluster corrected energies           -25.25968228 (Pople, fixed reference)
 Cluster corrected energies           -25.25968228 (Pople, relaxed reference)
 Cluster corrected energies           -25.25968228 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       42.61       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1700(1)
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    OPER   
                                         1380   
                                         JKOP   

              2       8      461.64       700     1000      520     2100     2140     2141     5101     5103   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI     MULTI   RHF-SCF       INT
 CPU TIMES  *       392.24    261.08    126.11      1.91      1.58      0.10      1.23
 REAL TIME  *       426.72 SEC
 DISK USED  *       504.31 MB (local),        6.04 GB (total)
 SF USED    *         2.62 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(13)    =       -25.33985450  AU                              
 SETTING HLSDIAG(14)    =       -25.33985441  AU                              
 SETTING HLSDIAG(15)    =       -25.33985441  AU                              
 SETTING HLSDIAG(16)    =       -25.33985407  AU                              
 SETTING HLSDIAG(17)    =       -25.33985407  AU                              
 SETTING HLSDIAG(18)    =       -25.28358931  AU                              
 SETTING HLSDIAG(19)    =       -25.28358891  AU                              
 SETTING HLSDIAG(20)    =       -25.28358891  AU                              
 SETTING HLSDIAG(21)    =       -25.28358822  AU                              
 SETTING HLSDIAG(22)    =       -25.28358744  AU                              
 SETTING HLSDIAG(23)    =       -25.28358744  AU                              
 SETTING HLSDIAG(24)    =       -25.28358735  AU                              
 SETTING HLSDIAG(25)    =       -25.27266578  AU                              
 SETTING HLSDIAG(26)    =       -25.27266595  AU                              
 SETTING HLSDIAG(27)    =       -25.27266595  AU                              
 SETTING HLSDIAG(28)    =       -25.26459997  AU                              


        HLSDIAG
    -25.38436394
    -25.33006888
    -25.33006885
    -25.33006880
    -25.33006881
    -25.33006879
    -25.27495064
    -25.27495064
    -25.27495064
    -25.27495059
    -25.27495054
    -25.26439096
    -25.33985450
    -25.33985441
    -25.33985441
    -25.33985407
    -25.33985407
    -25.28358931
    -25.28358891
    -25.28358891
    -25.28358822
    -25.28358744
    -25.28358744
    -25.28358735
    -25.27266578
    -25.27266595
    -25.27266595
    -25.26459997
                                                  



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      26       42.91       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1700(1)
                                         EKIN      POT     PPINT     H0       H01     AOSYM    OPER      SMH    MOLCAS    OPER   
                                         1380     1101     1401     1411     1650(1)  1700(2)
                                         JKOP      SR      EKINR    POTR    MOLCAS    OPER   

              2       8      461.64       700     1000      520     2100     2140     2141     5101     5103   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL     LSINT        CI        CI     MULTI     MULTI   RHF-SCF       INT
 CPU TIMES  *       392.72      0.45    261.08    126.11      1.91      1.58      0.10      1.23
 REAL TIME  *       427.25 SEC
 DISK USED  *       504.61 MB (local),        6.04 GB (total)
 SF USED    *         2.62 GB
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

 Original energies: -25.362158 -25.304954 -25.304954 -25.304954 -25.304954 -25.304954 -25.250960 -25.250960 -25.250960 -25.250960
                    -25.250960 -25.241092
 Replaced energies: -25.384364 -25.330069 -25.330069 -25.330069 -25.330069 -25.330069 -25.274951 -25.274951 -25.274951 -25.274951
                    -25.274951 -25.264391

 Wavefunction restored from record  5103.2  Symmetry=1  S= 1.0  NSTATE=  16

 Original energies: -25.314584 -25.314584 -25.314584 -25.314584 -25.314584 -25.259016 -25.259015 -25.259015 -25.259015 -25.259014
                    -25.259014 -25.259014 -25.249170 -25.249170 -25.249170 -25.241652
 Replaced energies: -25.339855 -25.339854 -25.339854 -25.339854 -25.339854 -25.283589 -25.283589 -25.283589 -25.283588 -25.283587
                    -25.283587 -25.283587 -25.272666 -25.272666 -25.272666 -25.264600



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=   -25.38436394

 Wigner-Eckart theorem used for 10 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    2   2.1  0.0  0.0       0.00   11916.39       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    3   3.1  0.0  0.0       0.00       0.00   11916.40       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    4   4.1  0.0  0.0       0.00       0.00       0.00   11916.41       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    5   5.1  0.0  0.0       0.00       0.00       0.00       0.00   11916.40       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

    6   6.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00   11916.41       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00

    7   7.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00   24013.44       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00

    8   8.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00   24013.44       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00

    9   9.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   24013.44       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00

   10  10.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   24013.45
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   11  11.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   12  12.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   13   1.1  1.0  1.0       0.00       0.00      -0.00      70.07       0.00       0.00      12.16      -0.00       0.00      -0.00
                            0.00       0.00       0.00      -0.00       0.00     -70.07      -0.00     -12.16      -0.00       0.00

   14   2.1  1.0  1.0      -0.00      -0.00       0.00       0.00     -70.07      -0.00       0.00      -0.00      12.16      -0.00
                            0.00    -114.89     -80.13       0.00      -0.00      -0.00       0.00       0.00      -0.00      11.47

   15   3.1  1.0  1.0      -0.00     126.82     -59.46      -0.00      -0.00       0.00      -0.00      -0.00       0.00      12.74
                            0.00      -0.00      -0.00       0.00      70.07       0.00      -0.00      -0.00     -12.16      -0.00

   16   4.1  1.0  1.0      -0.00      -0.00       0.00       0.00      -0.00      70.05      -0.00      12.17       0.00       0.00
                            0.00       0.00      -0.00      70.06      -0.00      -0.00      12.17      -0.00      -0.00      -0.00

   17   5.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00    -121.34       0.00     -21.01      -0.00      -0.00
                           -0.00       0.00       0.00     121.34      -0.00      -0.00      21.01      -0.00      -0.00      -0.00

   18   6.1  1.0  1.0      -0.00      -0.00       0.00      22.87      -0.00      -0.00     -82.89      -0.00      -0.00      -0.00
                           -0.00      -0.00      -0.00       0.00      -0.00     -22.87       0.00      82.89       0.00       0.00

   19   7.1  1.0  1.0       0.01      -6.66      25.86       0.00      -0.00      -0.00       0.00       0.00      -0.00      95.82
                           -0.00      -0.00      -0.00       0.00      28.84       0.00       0.00      -0.00     104.56      -0.00

   20   8.1  1.0  1.0       0.00      -0.00      -0.00      -0.00      28.84       0.00       0.00      -0.00     104.56      -0.00
                            0.01      -2.17     -26.61      -0.00      -0.00       0.00      -0.00       0.00       0.00     -94.85

   21   9.1  1.0  1.0      -0.00      -0.00       0.00      -0.00      -0.00      22.87      -0.00     -82.89      -0.00       0.00
                            0.00       0.00      -0.00      22.87      -0.00       0.00     -82.89       0.00       0.00       0.00

   22  10.1  1.0  1.0      -0.00      -0.00       0.00       0.00      -2.18      -0.00      -0.00      -0.00      -7.87      -0.00
                            0.02      25.68      -9.95       0.00      -0.00      -0.00       0.00       0.00      -0.00     -46.47

   23  11.1  1.0  1.0      -0.02     -23.62     -14.17       0.00      -0.00       0.00      -0.00       0.00       0.00     -41.07
                            0.00       0.00      -0.00       0.00       2.18       0.00       0.00      -0.00       7.87       0.00

   24  12.1  1.0  1.0      -0.00       0.00      -0.00     -17.71       0.00       0.00      64.24       0.00      -0.00       0.00
                            0.00       0.00       0.00      -0.00       0.00     -17.71       0.00      64.24      -0.00       0.00

   25  13.1  1.0  1.0      -0.00       0.00      -0.00      26.97       0.00      -0.00     172.65       0.00       0.00      -0.00
                            0.00      -0.00      -0.00       0.00       0.00      26.97      -0.00     172.65      -0.00       0.00

   26  14.1  1.0  1.0       0.00      -0.00      -0.00      -0.00     -26.97      -0.00      -0.00       0.00     172.65       0.00
                           66.27      17.77     -25.50       0.00      -0.00      -0.00       0.00      -0.00       0.00     175.60

   27  15.1  1.0  1.0     -66.27     -13.18     -28.15      -0.00      -0.00       0.00      -0.00       0.00       0.00     169.60
                           -0.00      -0.00       0.00      -0.00      26.97      -0.00       0.00      -0.00    -172.65       0.00

   28  16.1  1.0  1.0       0.00       0.00      -0.00       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00
                           -0.00       0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   29   1.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      16.88    -197.37       0.00      -0.00       0.00       0.00       0.00      -0.00      34.23

   30   2.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.00      -0.00     -99.09       0.00     -17.19       0.00       0.00

   31   3.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00      99.09       0.00      -0.00      17.19       0.00      -0.00       0.00

   32   4.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.00     198.16      -0.00      -0.00       0.00     -34.26      -0.00

   33   5.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00      -0.00       0.00       0.00      -0.00       0.00       0.00

   34   6.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -2.75      32.21      -0.00      -0.00      -0.00       0.00       0.00       0.00     117.14

   35   7.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00       7.22       0.00      -0.00     -26.15      -0.00       0.00       0.00

   36   8.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00      -0.00      -0.00       7.22       0.00     -26.15      -0.00      -0.00

   37   9.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00      -0.00     -32.30      -0.00      -0.00       0.00    -117.21      -0.00

   38  10.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00       0.00       0.00     -40.26      -0.00     146.00       0.00       0.00

   39  11.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00      40.26       0.00      -0.00    -146.00      -0.00       0.00       0.00

   40  12.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.03     -43.39      -3.71       0.00       0.00       0.00      -0.00       0.00      -0.00       4.75

   41  13.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           93.73     -43.76      -3.74       0.00       0.00      -0.00       0.00      -0.00      -0.00      -8.49

   42  14.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00      -0.00       0.00      38.14      -0.00     244.16      -0.00      -0.00

   43  15.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00     -38.14      -0.00      -0.00    -244.16      -0.00       0.00       0.00

   44  16.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00       0.00      -0.00       0.00       0.00       0.00      -0.00       0.00

   45   1.1  1.0 -1.0       0.00       0.00      -0.00      70.07       0.00       0.00      12.16      -0.00       0.00      -0.00
                           -0.00      -0.00      -0.00       0.00      -0.00      70.07       0.00      12.16       0.00      -0.00

   46   2.1  1.0 -1.0      -0.00      -0.00       0.00       0.00     -70.07      -0.00       0.00      -0.00      12.16      -0.00
                           -0.00     114.89      80.13      -0.00       0.00       0.00      -0.00      -0.00       0.00     -11.47

   47   3.1  1.0 -1.0      -0.00     126.82     -59.46      -0.00      -0.00       0.00      -0.00      -0.00       0.00      12.74
                           -0.00       0.00       0.00      -0.00     -70.07      -0.00       0.00       0.00      12.16       0.00

   48   4.1  1.0 -1.0      -0.00      -0.00       0.00       0.00      -0.00      70.05      -0.00      12.17       0.00       0.00
                           -0.00      -0.00       0.00     -70.06       0.00       0.00     -12.17       0.00       0.00       0.00

   49   5.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00    -121.34       0.00     -21.01      -0.00      -0.00
                            0.00      -0.00      -0.00    -121.34       0.00       0.00     -21.01       0.00       0.00       0.00

   50   6.1  1.0 -1.0      -0.00      -0.00       0.00      22.87      -0.00      -0.00     -82.89      -0.00      -0.00      -0.00
                            0.00       0.00       0.00      -0.00       0.00      22.87      -0.00     -82.89      -0.00      -0.00

   51   7.1  1.0 -1.0       0.01      -6.66      25.86       0.00      -0.00      -0.00       0.00       0.00      -0.00      95.82
                            0.00       0.00       0.00      -0.00     -28.84      -0.00      -0.00       0.00    -104.56       0.00

   52   8.1  1.0 -1.0       0.00      -0.00      -0.00      -0.00      28.84       0.00       0.00      -0.00     104.56      -0.00
                           -0.01       2.17      26.61       0.00       0.00      -0.00       0.00      -0.00      -0.00      94.85

   53   9.1  1.0 -1.0      -0.00      -0.00       0.00      -0.00      -0.00      22.87      -0.00     -82.89      -0.00       0.00
                           -0.00      -0.00       0.00     -22.87       0.00      -0.00      82.89      -0.00      -0.00      -0.00

   54  10.1  1.0 -1.0      -0.00      -0.00       0.00       0.00      -2.18      -0.00      -0.00      -0.00      -7.87      -0.00
                           -0.02     -25.68       9.95      -0.00       0.00       0.00      -0.00      -0.00       0.00      46.47

   55  11.1  1.0 -1.0      -0.02     -23.62     -14.17       0.00      -0.00       0.00      -0.00       0.00       0.00     -41.07
                           -0.00      -0.00       0.00      -0.00      -2.18      -0.00      -0.00       0.00      -7.87      -0.00

   56  12.1  1.0 -1.0      -0.00       0.00      -0.00     -17.71       0.00       0.00      64.24       0.00      -0.00       0.00
                           -0.00      -0.00      -0.00       0.00      -0.00      17.71      -0.00     -64.24       0.00      -0.00

   57  13.1  1.0 -1.0      -0.00       0.00      -0.00      26.97       0.00      -0.00     172.65       0.00       0.00      -0.00
                           -0.00       0.00       0.00      -0.00      -0.00     -26.97       0.00    -172.65       0.00      -0.00

   58  14.1  1.0 -1.0       0.00      -0.00      -0.00      -0.00     -26.97      -0.00      -0.00       0.00     172.65       0.00
                          -66.27     -17.77      25.50      -0.00       0.00       0.00      -0.00       0.00      -0.00    -175.60

   59  15.1  1.0 -1.0     -66.27     -13.18     -28.15      -0.00      -0.00       0.00      -0.00       0.00       0.00     169.60
                            0.00       0.00      -0.00       0.00     -26.97       0.00      -0.00       0.00     172.65      -0.00

   60  16.1  1.0 -1.0       0.00       0.00      -0.00       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00
                            0.00      -0.00      -0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00


   Nr   State  S   Sz       11         12         13         14         15         16         17         18         19         20

    1   1.1  0.0  0.0       0.00       0.00       0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.01       0.00
                            0.00       0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00      -0.01

    2   2.1  0.0  0.0       0.00       0.00       0.00      -0.00     126.82      -0.00       0.00      -0.00      -6.66      -0.00
                            0.00       0.00      -0.00     114.89       0.00      -0.00      -0.00       0.00       0.00       2.17

    3   3.1  0.0  0.0       0.00       0.00      -0.00       0.00     -59.46       0.00       0.00       0.00      25.86      -0.00
                            0.00       0.00      -0.00      80.13       0.00       0.00      -0.00       0.00       0.00      26.61

    4   4.1  0.0  0.0       0.00       0.00      70.07       0.00      -0.00       0.00       0.00      22.87       0.00      -0.00
                            0.00       0.00       0.00      -0.00      -0.00     -70.06    -121.34      -0.00      -0.00       0.00

    5   5.1  0.0  0.0       0.00       0.00       0.00     -70.07      -0.00      -0.00       0.00      -0.00      -0.00      28.84
                            0.00       0.00      -0.00       0.00     -70.07       0.00       0.00       0.00     -28.84       0.00

    6   6.1  0.0  0.0       0.00       0.00       0.00      -0.00       0.00      70.05    -121.34      -0.00      -0.00       0.00
                            0.00       0.00      70.07       0.00      -0.00       0.00       0.00      22.87      -0.00      -0.00

    7   7.1  0.0  0.0       0.00       0.00      12.16       0.00      -0.00      -0.00       0.00     -82.89       0.00       0.00
                            0.00       0.00       0.00      -0.00       0.00     -12.17     -21.01      -0.00      -0.00       0.00

    8   8.1  0.0  0.0       0.00       0.00      -0.00      -0.00      -0.00      12.17     -21.01      -0.00       0.00      -0.00
                            0.00       0.00      12.16      -0.00       0.00       0.00       0.00     -82.89       0.00      -0.00

    9   9.1  0.0  0.0       0.00       0.00       0.00      12.16       0.00       0.00      -0.00      -0.00      -0.00     104.56
                            0.00       0.00       0.00       0.00      12.16       0.00       0.00      -0.00    -104.56      -0.00

   10  10.1  0.0  0.0       0.00       0.00      -0.00      -0.00      12.74       0.00      -0.00      -0.00      95.82      -0.00
                            0.00       0.00      -0.00     -11.47       0.00       0.00       0.00      -0.00       0.00      94.85

   11  11.1  0.0  0.0   24013.47       0.00       0.00      -0.00      20.64      -0.00       0.00      -0.00      13.17      -0.00
                            0.00       0.00      -0.00      21.37       0.00       0.00      -0.00       0.00       0.00     -18.92

   12  12.1  0.0  0.0       0.00   26331.03       0.00      -0.00       0.00       0.00      -0.00       0.00      -0.01      -0.00
                           -0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.01

   13   1.1  1.0  1.0       0.00       0.00    9768.69       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00      -0.00      -0.00     196.11      -0.00      -0.00       0.00       0.00

   14   2.1  1.0  1.0      -0.00      -0.00       0.00    9768.71       0.00       0.00       0.00       0.00       0.00       0.00
                          -21.37      -0.00       0.00       0.00      98.07       0.00       0.00      -0.00       0.99       0.00

   15   3.1  1.0  1.0      20.64       0.00       0.00       0.00    9768.71       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00     -98.07      -0.00      -0.00       0.00      -0.00      -0.00       0.99

   16   4.1  1.0  1.0      -0.00       0.00       0.00       0.00       0.00    9768.79       0.00       0.00       0.00       0.00
                           -0.00       0.00    -196.11      -0.00       0.00       0.00      -0.00       4.24       0.00       0.00

   17   5.1  1.0  1.0       0.00      -0.00       0.00       0.00       0.00       0.00    9768.79       0.00       0.00       0.00
                            0.00       0.00       0.00      -0.00      -0.00       0.00      -0.00      -0.00      -0.00       0.00

   18   6.1  1.0  1.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00   22117.48       0.00       0.00
                           -0.00      -0.00       0.00       0.00       0.00      -4.24       0.00      -0.00      -0.00       0.00

   19   7.1  1.0  1.0      13.17      -0.01       0.00       0.00       0.00       0.00       0.00       0.00   22117.56       0.00
                           -0.00       0.00      -0.00      -0.99       0.00      -0.00       0.00       0.00      -0.00    -258.12

   20   8.1  1.0  1.0      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   22117.56
                           18.92      -0.01      -0.00      -0.00      -0.99      -0.00      -0.00      -0.00     258.12      -0.00

   21   9.1  1.0  1.0       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       4.24       0.00      -0.00      -0.00       0.00    -179.57      -0.00      -0.00

   22  10.1  1.0  1.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -88.21      -0.02      -0.00      -0.00       5.34       0.00      -0.00      -0.00      62.35       0.00

   23  11.1  1.0  1.0      90.85       0.02       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00      -5.34      -0.00       0.00       0.00      -0.00       0.00      62.35

   24  12.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00       0.00       5.79       0.00      -0.00       0.00

   25  13.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00      -0.00       0.00       0.00       7.70       0.00      -0.00      -0.00

   26  14.1  1.0  1.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           94.49    -153.10      -0.00       0.00      -6.73      -0.00      -0.00       0.00      -0.03      -0.00

   27  15.1  1.0  1.0    -104.89     153.10       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       6.73       0.00       0.00       0.00       0.00       0.00      -0.03

   28  16.1  1.0  1.0       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00      -0.00      -0.00      -0.00       0.00      -0.00      -0.00       0.00

   29   1.1  1.0  0.0       0.00       0.00      -0.00     -69.35      -0.00       0.00      -0.00      -0.00       0.00       3.83
                           -1.03       0.00      -0.00       0.00     -69.35       0.00       0.00       0.00      -3.83       0.00

   30   2.1  1.0  0.0       0.00       0.00      69.35       0.00       0.00      -0.00       0.00       3.06       0.00      -0.00
                            0.00      -0.00      -0.00      -0.00      -0.00     -69.34    -120.10      -0.00      -0.00       0.00

   31   3.1  1.0  0.0       0.00       0.00       0.00      -0.00       0.00      69.34    -120.10      -0.00      -0.00       0.00
                           -0.00       0.00      69.35       0.00       0.00      -0.00      -0.00       3.06      -0.00       0.00

   32   4.1  1.0  0.0       0.00       0.00      -0.00       0.00     -69.34      -0.00       0.00       0.00       3.47       0.00
                           -0.00       0.00      -0.00      69.34       0.00      -0.00      -0.00       0.00       0.00       3.47

   33   5.1  1.0  0.0       0.00       0.00       0.00      -0.00     120.10      -0.00      -0.00      -0.00      -0.57      -0.00
                            0.00       0.00      -0.00     120.10       0.00       0.00      -0.00      -0.00       0.00       0.57

   34   6.1  1.0  0.0       0.00       0.00       0.00      -3.06       0.00      -0.00       0.00      -0.00       0.00      58.81
                           -3.53      -0.00      -0.00       0.00      -3.06      -0.00       0.00       0.00     -58.81      -0.00

   35   7.1  1.0  0.0       0.00       0.00      -0.00      -0.00       0.00      -3.47       0.57      -0.00      -0.00      -0.00
                            0.00       0.00       3.83       0.00       0.00      -0.00      -0.00      58.81      -0.00      -0.00

   36   8.1  1.0  0.0       0.00       0.00      -3.83       0.00      -0.00      -0.00       0.00     -58.81       0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00      -3.47      -0.57       0.00       0.00       0.00

   37   9.1  1.0  0.0       0.00       0.00      -0.00      -0.00      -3.05      -0.00      -0.00       0.00      94.21      -0.00
                            0.00       0.00      -0.00       3.05       0.00      -0.00       0.00       0.00       0.00      94.21

   38  10.1  1.0  0.0       0.00       0.00       0.31      -0.00       0.00       0.00      -0.00    -112.50      -0.00      -0.00
                           -0.00       0.00       0.00       0.00       0.00      -1.62       3.26      -0.00      -0.00       0.00

   39  11.1  1.0  0.0       0.00       0.00      -0.00       0.00      -0.00       1.62       3.26       0.00       0.00      -0.00
                            0.00       0.00       0.31       0.00      -0.00      -0.00       0.00    -112.50       0.00       0.00

   40  12.1  1.0  0.0       0.00       0.00      -0.00       2.33      -0.00       0.00      -0.00      -0.00       0.00     -27.44
                          157.53      -0.04       0.00      -0.00      -2.33       0.00       0.00      -0.00     -27.44       0.00

   41  13.1  1.0  0.0       0.00       0.00      -0.00      -4.76       0.00      -0.00       0.00       0.00       0.00       0.00
                         -281.96    -216.54       0.00       0.00       4.76       0.00      -0.00      -0.00       0.00      -0.00

   42  14.1  1.0  0.0       0.00       0.00       4.77       0.00      -0.00      -0.00      -0.00       0.02      -0.00       0.00
                            0.00       0.00      -0.00       0.00       0.00      -4.76       2.77       0.00       0.00       0.00

   43  15.1  1.0  0.0       0.00       0.00       0.00      -0.00      -0.00       4.76       2.77       0.00       0.00       0.00
                           -0.00      -0.00       4.77      -0.00       0.00      -0.00      -0.00       0.02       0.00      -0.00

   44  16.1  1.0  0.0       0.00       0.00      -0.00       0.00      -0.00       0.00      -0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00      -0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00

   45   1.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   46   2.1  1.0 -1.0      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           21.37       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   47   3.1  1.0 -1.0      20.64       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   48   4.1  1.0 -1.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   49   5.1  1.0 -1.0       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   50   6.1  1.0 -1.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   51   7.1  1.0 -1.0      13.17      -0.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   52   8.1  1.0 -1.0      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -18.92       0.01      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   53   9.1  1.0 -1.0       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   54  10.1  1.0 -1.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           88.21       0.02      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   55  11.1  1.0 -1.0      90.85       0.02       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   56  12.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   57  13.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   58  14.1  1.0 -1.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -94.49     153.10      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   59  15.1  1.0 -1.0    -104.89     153.10       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   60  16.1  1.0 -1.0       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00


   Nr   State  S   Sz       21         22         23         24         25         26         27         28         29         30

    1   1.1  0.0  0.0      -0.00      -0.00      -0.02      -0.00      -0.00       0.00     -66.27       0.00       0.00       0.00
                           -0.00      -0.02      -0.00      -0.00      -0.00     -66.27       0.00       0.00      -0.00      -0.00

    2   2.1  0.0  0.0      -0.00      -0.00     -23.62       0.00       0.00      -0.00     -13.18       0.00       0.00       0.00
                           -0.00     -25.68      -0.00      -0.00       0.00     -17.77       0.00      -0.00     -16.88      -0.00

    3   3.1  0.0  0.0       0.00       0.00     -14.17      -0.00      -0.00      -0.00     -28.15      -0.00       0.00       0.00
                            0.00       9.95       0.00      -0.00       0.00      25.50      -0.00      -0.00     197.37       0.00

    4   4.1  0.0  0.0      -0.00       0.00       0.00     -17.71      26.97      -0.00      -0.00       0.00       0.00       0.00
                          -22.87      -0.00      -0.00       0.00      -0.00      -0.00       0.00       0.00      -0.00       0.00

    5   5.1  0.0  0.0      -0.00      -2.18      -0.00       0.00       0.00     -26.97      -0.00       0.00       0.00       0.00
                            0.00       0.00      -2.18      -0.00      -0.00       0.00     -26.97      -0.00       0.00       0.00

    6   6.1  0.0  0.0      22.87      -0.00       0.00       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00      17.71     -26.97       0.00       0.00      -0.00      -0.00      99.09

    7   7.1  0.0  0.0      -0.00      -0.00      -0.00      64.24     172.65      -0.00      -0.00       0.00       0.00       0.00
                           82.89      -0.00      -0.00      -0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00

    8   8.1  0.0  0.0     -82.89      -0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00       0.00
                           -0.00      -0.00       0.00     -64.24    -172.65       0.00       0.00      -0.00      -0.00      17.19

    9   9.1  0.0  0.0      -0.00      -7.87       0.00      -0.00       0.00     172.65       0.00      -0.00       0.00       0.00
                           -0.00       0.00      -7.87       0.00       0.00      -0.00     172.65      -0.00       0.00      -0.00

   10  10.1  0.0  0.0       0.00      -0.00     -41.07       0.00      -0.00       0.00     169.60      -0.00       0.00       0.00
                           -0.00      46.47      -0.00      -0.00      -0.00    -175.60      -0.00      -0.00     -34.23      -0.00

   11  11.1  0.0  0.0       0.00      -0.00      90.85       0.00       0.00      -0.00    -104.89       0.00       0.00       0.00
                           -0.00      88.21       0.00       0.00      -0.00     -94.49       0.00       0.00       1.03      -0.00

   12  12.1  0.0  0.0      -0.00       0.00       0.02       0.00       0.00       0.00     153.10      -0.00       0.00       0.00
                            0.00       0.02      -0.00       0.00       0.00     153.10       0.00      -0.00      -0.00       0.00

   13   1.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      69.35
                           -4.24       0.00       0.00       0.00      -0.00       0.00       0.00      -0.00       0.00       0.00

   14   2.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     -69.35       0.00
                           -0.00       0.00       5.34       0.00       0.00      -0.00      -6.73       0.00      -0.00       0.00

   15   3.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00
                            0.00      -5.34       0.00       0.00      -0.00       6.73      -0.00       0.00      69.35       0.00

   16   4.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                            0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.00      -0.00      69.34

   17   5.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00
                           -0.00       0.00      -0.00      -5.79      -7.70       0.00      -0.00      -0.00      -0.00     120.10

   18   6.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       3.06
                          179.57       0.00       0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.00

   19   7.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00     -62.35      -0.00       0.00       0.00       0.03      -0.00       0.00       3.83       0.00

   20   8.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       3.83      -0.00
                            0.00      -0.00     -62.35      -0.00       0.00       0.00       0.03      -0.00      -0.00      -0.00

   21   9.1  1.0  1.0   22117.71       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00      -0.00       0.00      -0.00       0.00      -0.00      -0.00       3.05

   22  10.1  1.0  1.0       0.00   22117.89       0.00       0.00       0.00       0.00       0.00       0.00      -0.31       0.00
                            0.00      -0.00      78.63       0.00       0.00       0.00      -0.00       0.00       0.00       0.00

   23  11.1  1.0  1.0       0.00       0.00   22117.89       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                           -0.00     -78.63      -0.00      -0.00      -0.00       0.00      -0.00      -0.00       0.31       0.00

   24  12.1  1.0  1.0       0.00       0.00       0.00   22117.90       0.00       0.00       0.00       0.00       0.00      -2.33
                            0.00      -0.00       0.00      -0.00       0.00      -0.00      -0.00      -0.00       0.00      -0.00

   25  13.1  1.0  1.0       0.00       0.00       0.00       0.00   24514.91       0.00       0.00       0.00       0.00       4.76
                           -0.00      -0.00       0.00      -0.00      -0.00      -0.00       0.00     -17.73       0.00       0.00

   26  14.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00   24514.87       0.00       0.00      -4.77      -0.00
                            0.00      -0.00      -0.00       0.00       0.00       0.00     191.90      -0.00      -0.00       0.00

   27  15.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00   24514.87       0.00      -0.00       0.00
                           -0.00       0.00       0.00       0.00      -0.00    -191.90      -0.00       0.00       4.77      -0.00

   28  16.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00   26285.15       0.00      -0.00
                            0.00      -0.00       0.00       0.00      17.73       0.00      -0.00      -0.00       0.00      -0.00

   29   1.1  1.0  0.0       0.00      -0.31       0.00       0.00       0.00      -4.77      -0.00       0.00    9768.69       0.00
                            0.00      -0.00      -0.31      -0.00      -0.00       0.00      -4.77      -0.00       0.00       0.00

   30   2.1  1.0  0.0       0.00       0.00      -0.00      -2.33       4.76      -0.00       0.00      -0.00       0.00    9768.71
                           -3.05      -0.00      -0.00       0.00      -0.00      -0.00       0.00       0.00      -0.00       0.00

   31   3.1  1.0  0.0       3.05      -0.00       0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       2.33      -4.76      -0.00      -0.00      -0.00      -0.00      -0.00

   32   4.1  1.0  0.0       0.00      -0.00      -1.62      -0.00       0.00       0.00      -4.76      -0.00       0.00       0.00
                            0.00       1.62       0.00      -0.00      -0.00       4.76       0.00      -0.00      -0.00      -0.00

   33   5.1  1.0  0.0       0.00       0.00      -3.26       0.00      -0.00       0.00      -2.77       0.00       0.00       0.00
                           -0.00      -3.26      -0.00      -0.00       0.00      -2.77       0.00      -0.00      -0.00      -0.00

   34   6.1  1.0  0.0      -0.00     112.50      -0.00       0.00      -0.00      -0.02      -0.00      -0.00       0.00       0.00
                           -0.00       0.00     112.50       0.00       0.00      -0.00      -0.02       0.00      -0.00      -0.00

   35   7.1  1.0  0.0     -94.21       0.00      -0.00      -0.00      -0.00       0.00      -0.00      -0.00       0.00       0.00
                           -0.00       0.00      -0.00      27.44      -0.00      -0.00      -0.00       0.00      -0.00      -0.00

   36   8.1  1.0  0.0       0.00       0.00       0.00      27.44      -0.00      -0.00      -0.00      -0.00       0.00       0.00
                          -94.21      -0.00      -0.00      -0.00       0.00      -0.00       0.00       0.00      -0.00      -0.00

   37   9.1  1.0  0.0       0.00       0.00      85.06      -0.00       0.00       0.00      -0.01       0.00       0.00       0.00
                           -0.00     -85.06      -0.00      -0.00      -0.00       0.01      -0.00      -0.00      -0.00      -0.00

   38  10.1  1.0  0.0      -0.00       0.00       0.00    -153.04       0.03       0.00       0.00       0.00       0.00       0.00
                           85.06       0.00       0.00       0.00      -0.00       0.00      -0.00       0.00      -0.00      -0.00

   39  11.1  1.0  0.0     -85.06      -0.00       0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00     153.04      -0.03      -0.00      -0.00      -0.00      -0.00      -0.00

   40  12.1  1.0  0.0       0.00     153.04      -0.00      -0.00       0.00      -0.03      -0.00       0.00       0.00       0.00
                            0.00      -0.00    -153.04      -0.00      -0.00      -0.00       0.03      -0.00      -0.00      -0.00

   41  13.1  1.0  0.0      -0.00      -0.03       0.00      -0.00       0.00    -135.70       0.00       0.00       0.00       0.00
                            0.00       0.00       0.03       0.00      -0.00       0.00     135.70      -0.00      -0.00      -0.00

   42  14.1  1.0  0.0      -0.00      -0.00      -0.00       0.03     135.70      -0.00      -0.00       0.00       0.00       0.00
                           -0.01      -0.00       0.00       0.00      -0.00       0.00       0.00      12.53      -0.00      -0.00

   43  15.1  1.0  0.0       0.01      -0.00      -0.00       0.00      -0.00       0.00       0.00      12.53       0.00       0.00
                            0.00       0.00       0.00      -0.03    -135.70      -0.00       0.00      -0.00      -0.00      -0.00

   44  16.1  1.0  0.0      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00     -12.53      -0.00       0.00       0.00
                            0.00      -0.00       0.00       0.00       0.00     -12.53       0.00      -0.00      -0.00      -0.00

   45   1.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00     -69.35
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   46   2.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      69.35       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   47   3.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      69.35       0.00

   48   4.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      69.34

   49   5.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00     120.10

   50   6.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -3.06
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   51   7.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       3.83       0.00

   52   8.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -3.83       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   53   9.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       3.05

   54  10.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.31      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00

   55  11.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.31       0.00

   56  12.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       2.33
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00

   57  13.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -4.76
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00

   58  14.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       4.77       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   59  15.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       4.77      -0.00

   60  16.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00


   Nr   State  S   Sz       31         32         33         34         35         36         37         38         39         40

    1   1.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00      -0.00       0.00      -0.00       0.00      -0.00       0.00      -0.03

    2   2.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       2.75      -0.00       0.00      -0.00       0.00      -0.00      43.39

    3   3.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00     -32.21       0.00      -0.00      -0.00       0.00      -0.00       3.71

    4   4.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -99.09       0.00      -0.00       0.00      -7.22       0.00       0.00      -0.00     -40.26      -0.00

    5   5.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00    -198.16       0.00       0.00      -0.00       0.00      32.30      -0.00      -0.00      -0.00

    6   6.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00       0.00       0.00      -7.22       0.00      40.26       0.00      -0.00

    7   7.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -17.19       0.00      -0.00      -0.00      26.15      -0.00       0.00       0.00     146.00       0.00

    8   8.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00      -0.00       0.00      26.15      -0.00    -146.00       0.00      -0.00

    9   9.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      34.26      -0.00      -0.00      -0.00       0.00     117.21      -0.00      -0.00       0.00

   10  10.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00    -117.14      -0.00       0.00       0.00      -0.00      -0.00      -4.75

   11  11.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00       3.53      -0.00      -0.00      -0.00       0.00      -0.00    -157.53

   12  12.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00      -0.00       0.00      -0.00      -0.00      -0.00       0.04

   13   1.1  1.0  1.0       0.00      -0.00       0.00       0.00      -0.00      -3.83      -0.00       0.31      -0.00      -0.00
                          -69.35       0.00       0.00       0.00      -3.83       0.00       0.00      -0.00      -0.31      -0.00

   14   2.1  1.0  1.0      -0.00       0.00      -0.00      -3.06      -0.00       0.00      -0.00      -0.00       0.00       2.33
                           -0.00     -69.34    -120.10      -0.00      -0.00       0.00      -3.05      -0.00      -0.00       0.00

   15   3.1  1.0  1.0       0.00     -69.34     120.10       0.00       0.00      -0.00      -3.05       0.00      -0.00      -0.00
                           -0.00      -0.00      -0.00       3.06      -0.00       0.00      -0.00      -0.00       0.00       2.33

   16   4.1  1.0  1.0      69.34      -0.00      -0.00      -0.00      -3.47      -0.00      -0.00       0.00       1.62       0.00
                            0.00       0.00      -0.00       0.00       0.00       3.47       0.00       1.62       0.00      -0.00

   17   5.1  1.0  1.0    -120.10       0.00      -0.00       0.00       0.57       0.00      -0.00      -0.00       3.26      -0.00
                            0.00       0.00       0.00      -0.00       0.00       0.57      -0.00      -3.26      -0.00      -0.00

   18   6.1  1.0  1.0      -0.00       0.00      -0.00      -0.00      -0.00     -58.81       0.00    -112.50       0.00      -0.00
                           -3.06      -0.00       0.00      -0.00     -58.81      -0.00      -0.00       0.00     112.50       0.00

   19   7.1  1.0  1.0      -0.00       3.47      -0.57       0.00      -0.00       0.00      94.21      -0.00       0.00       0.00
                            0.00      -0.00      -0.00      58.81       0.00      -0.00      -0.00       0.00      -0.00      27.44

   20   8.1  1.0  1.0       0.00       0.00      -0.00      58.81      -0.00       0.00      -0.00      -0.00      -0.00     -27.44
                           -0.00      -3.47      -0.57       0.00       0.00      -0.00     -94.21      -0.00      -0.00      -0.00

   21   9.1  1.0  1.0       3.05       0.00       0.00      -0.00     -94.21       0.00       0.00      -0.00     -85.06       0.00
                            0.00      -0.00       0.00       0.00       0.00      94.21       0.00     -85.06      -0.00      -0.00

   22  10.1  1.0  1.0      -0.00      -0.00       0.00     112.50       0.00       0.00       0.00       0.00      -0.00     153.04
                            0.00      -1.62       3.26      -0.00      -0.00       0.00      85.06      -0.00       0.00       0.00

   23  11.1  1.0  1.0       0.00      -1.62      -3.26      -0.00      -0.00       0.00      85.06       0.00       0.00      -0.00
                           -0.00      -0.00       0.00    -112.50       0.00       0.00       0.00      -0.00       0.00     153.04

   24  12.1  1.0  1.0       0.00      -0.00       0.00       0.00      -0.00      27.44      -0.00    -153.04       0.00      -0.00
                           -2.33       0.00       0.00      -0.00     -27.44       0.00       0.00      -0.00    -153.04       0.00

   25  13.1  1.0  1.0      -0.00       0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.03      -0.00       0.00
                            4.76       0.00      -0.00      -0.00       0.00      -0.00       0.00       0.00       0.03       0.00

   26  14.1  1.0  1.0       0.00       0.00       0.00      -0.02       0.00      -0.00       0.00       0.00       0.00      -0.03
                            0.00      -4.76       2.77       0.00       0.00       0.00      -0.01      -0.00       0.00       0.00

   27  15.1  1.0  1.0       0.00      -4.76      -2.77      -0.00      -0.00      -0.00      -0.01       0.00       0.00      -0.00
                            0.00      -0.00      -0.00       0.02       0.00      -0.00       0.00       0.00       0.00      -0.03

   28  16.1  1.0  1.0       0.00      -0.00       0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.00       0.00

   29   1.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   30   2.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   31   3.1  1.0  0.0    9768.71       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   32   4.1  1.0  0.0       0.00    9768.79       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   33   5.1  1.0  0.0       0.00       0.00    9768.79       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   34   6.1  1.0  0.0       0.00       0.00       0.00   22117.48       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   35   7.1  1.0  0.0       0.00       0.00       0.00       0.00   22117.56       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   36   8.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00   22117.56       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00

   37   9.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00   22117.71       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00

   38  10.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00   22117.89       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00

   39  11.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   22117.89       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00

   40  12.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   22117.90
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   41  13.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   42  14.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   43  15.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   44  16.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   45   1.1  1.0 -1.0      -0.00       0.00      -0.00      -0.00       0.00       3.83       0.00      -0.31       0.00       0.00
                          -69.35       0.00       0.00       0.00      -3.83       0.00       0.00      -0.00      -0.31      -0.00

   46   2.1  1.0 -1.0       0.00      -0.00       0.00       3.06       0.00      -0.00       0.00       0.00      -0.00      -2.33
                           -0.00     -69.34    -120.10      -0.00      -0.00       0.00      -3.05      -0.00      -0.00       0.00

   47   3.1  1.0 -1.0       0.00      69.34    -120.10      -0.00      -0.00       0.00       3.05      -0.00       0.00       0.00
                            0.00      -0.00      -0.00       3.06      -0.00       0.00      -0.00      -0.00       0.00       2.33

   48   4.1  1.0 -1.0     -69.34      -0.00       0.00       0.00       3.47       0.00       0.00      -0.00      -1.62      -0.00
                            0.00      -0.00      -0.00       0.00       0.00       3.47       0.00       1.62       0.00      -0.00

   49   5.1  1.0 -1.0     120.10      -0.00      -0.00      -0.00      -0.57      -0.00       0.00       0.00      -3.26       0.00
                            0.00       0.00      -0.00      -0.00       0.00       0.57      -0.00      -3.26      -0.00      -0.00

   50   6.1  1.0 -1.0       0.00      -0.00       0.00      -0.00       0.00      58.81      -0.00     112.50      -0.00       0.00
                           -3.06      -0.00       0.00       0.00     -58.81      -0.00      -0.00       0.00     112.50       0.00

   51   7.1  1.0 -1.0       0.00      -3.47       0.57      -0.00      -0.00      -0.00     -94.21       0.00      -0.00      -0.00
                            0.00      -0.00      -0.00      58.81      -0.00      -0.00      -0.00       0.00      -0.00      27.44

   52   8.1  1.0 -1.0      -0.00      -0.00       0.00     -58.81       0.00       0.00       0.00       0.00       0.00      27.44
                           -0.00      -3.47      -0.57       0.00       0.00       0.00     -94.21      -0.00      -0.00      -0.00

   53   9.1  1.0 -1.0      -3.05      -0.00      -0.00       0.00      94.21      -0.00       0.00       0.00      85.06      -0.00
                            0.00      -0.00       0.00       0.00       0.00      94.21      -0.00     -85.06      -0.00      -0.00

   54  10.1  1.0 -1.0       0.00       0.00      -0.00    -112.50      -0.00      -0.00      -0.00       0.00       0.00    -153.04
                            0.00      -1.62       3.26      -0.00      -0.00       0.00      85.06       0.00       0.00       0.00

   55  11.1  1.0 -1.0      -0.00       1.62       3.26       0.00       0.00      -0.00     -85.06      -0.00       0.00       0.00
                           -0.00      -0.00       0.00    -112.50       0.00       0.00       0.00      -0.00      -0.00     153.04

   56  12.1  1.0 -1.0      -0.00       0.00      -0.00      -0.00       0.00     -27.44       0.00     153.04      -0.00      -0.00
                           -2.33       0.00       0.00      -0.00     -27.44       0.00       0.00      -0.00    -153.04      -0.00

   57  13.1  1.0 -1.0       0.00      -0.00       0.00       0.00       0.00       0.00      -0.00      -0.03       0.00      -0.00
                            4.76       0.00      -0.00      -0.00       0.00      -0.00       0.00       0.00       0.03       0.00

   58  14.1  1.0 -1.0      -0.00      -0.00      -0.00       0.02      -0.00       0.00      -0.00      -0.00      -0.00       0.03
                            0.00      -4.76       2.77       0.00       0.00       0.00      -0.01      -0.00       0.00       0.00

   59  15.1  1.0 -1.0      -0.00       4.76       2.77       0.00       0.00       0.00       0.01      -0.00      -0.00       0.00
                            0.00      -0.00      -0.00       0.02       0.00      -0.00       0.00       0.00       0.00      -0.03

   60  16.1  1.0 -1.0      -0.00       0.00      -0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00
                            0.00       0.00       0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.00       0.00


   Nr   State  S   Sz       41         42         43         44         45         46         47         48         49         50

    1   1.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00       0.00      -0.00
                          -93.73      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00      -0.00      -0.00

    2   2.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00      -0.00     126.82      -0.00       0.00      -0.00
                           43.76       0.00      -0.00       0.00       0.00    -114.89      -0.00       0.00       0.00      -0.00

    3   3.1  0.0  0.0       0.00       0.00       0.00       0.00      -0.00       0.00     -59.46       0.00       0.00       0.00
                            3.74      -0.00       0.00      -0.00       0.00     -80.13      -0.00      -0.00       0.00      -0.00

    4   4.1  0.0  0.0       0.00       0.00       0.00       0.00      70.07       0.00      -0.00       0.00       0.00      22.87
                           -0.00       0.00      38.14      -0.00      -0.00       0.00       0.00      70.06     121.34       0.00

    5   5.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00     -70.07      -0.00      -0.00       0.00      -0.00
                           -0.00      -0.00       0.00       0.00       0.00      -0.00      70.07      -0.00      -0.00      -0.00

    6   6.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00      -0.00       0.00      70.05    -121.34      -0.00
                            0.00     -38.14       0.00      -0.00     -70.07      -0.00       0.00      -0.00      -0.00     -22.87

    7   7.1  0.0  0.0       0.00       0.00       0.00       0.00      12.16       0.00      -0.00      -0.00       0.00     -82.89
                           -0.00       0.00     244.16      -0.00      -0.00       0.00      -0.00      12.17      21.01       0.00

    8   8.1  0.0  0.0       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00      12.17     -21.01      -0.00
                            0.00    -244.16       0.00      -0.00     -12.16       0.00      -0.00      -0.00      -0.00      82.89

    9   9.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00      12.16       0.00       0.00      -0.00      -0.00
                            0.00       0.00      -0.00       0.00      -0.00      -0.00     -12.16      -0.00      -0.00       0.00

   10  10.1  0.0  0.0       0.00       0.00       0.00       0.00      -0.00      -0.00      12.74       0.00      -0.00      -0.00
                            8.49       0.00      -0.00      -0.00       0.00      11.47      -0.00      -0.00      -0.00       0.00

   11  11.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00      -0.00      20.64      -0.00       0.00      -0.00
                          281.96      -0.00       0.00       0.00       0.00     -21.37      -0.00      -0.00       0.00      -0.00

   12  12.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00      -0.00       0.00       0.00      -0.00       0.00
                          216.54      -0.00       0.00       0.00      -0.00      -0.00       0.00       0.00       0.00      -0.00

   13   1.1  1.0  1.0      -0.00       4.77       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -4.77      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   14   2.1  1.0  1.0      -4.76       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   15   3.1  1.0  1.0       0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -4.76      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   16   4.1  1.0  1.0      -0.00      -0.00       4.76       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       4.76       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   17   5.1  1.0  1.0       0.00      -0.00       2.77      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -2.77       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   18   6.1  1.0  1.0       0.00       0.02       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.02       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   19   7.1  1.0  1.0       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   20   8.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   21   9.1  1.0  1.0      -0.00      -0.00       0.01      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.01      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   22  10.1  1.0  1.0      -0.03      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   23  11.1  1.0  1.0       0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.03      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   24  12.1  1.0  1.0      -0.00       0.03       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.03      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   25  13.1  1.0  1.0       0.00     135.70      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00     135.70      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   26  14.1  1.0  1.0    -135.70      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00      12.53       0.00       0.00       0.00       0.00       0.00       0.00

   27  15.1  1.0  1.0       0.00      -0.00       0.00     -12.53       0.00       0.00       0.00       0.00       0.00       0.00
                         -135.70      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   28  16.1  1.0  1.0       0.00       0.00      12.53      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00     -12.53       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   29   1.1  1.0  0.0       0.00       0.00       0.00       0.00      -0.00      69.35       0.00      -0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00     -69.35       0.00       0.00       0.00

   30   2.1  1.0  0.0       0.00       0.00       0.00       0.00     -69.35       0.00      -0.00       0.00      -0.00      -3.06
                            0.00       0.00       0.00       0.00      -0.00       0.00      -0.00     -69.34    -120.10      -0.00

   31   3.1  1.0  0.0       0.00       0.00       0.00       0.00      -0.00       0.00       0.00     -69.34     120.10       0.00
                            0.00       0.00       0.00       0.00      69.35       0.00      -0.00      -0.00      -0.00       3.06

   32   4.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00      -0.00      69.34      -0.00      -0.00      -0.00
                            0.00       0.00       0.00       0.00      -0.00      69.34       0.00       0.00      -0.00       0.00

   33   5.1  1.0  0.0       0.00       0.00       0.00       0.00      -0.00       0.00    -120.10       0.00      -0.00       0.00
                            0.00       0.00       0.00       0.00      -0.00     120.10       0.00       0.00       0.00      -0.00

   34   6.1  1.0  0.0       0.00       0.00       0.00       0.00      -0.00       3.06      -0.00       0.00      -0.00      -0.00
                            0.00       0.00       0.00       0.00      -0.00       0.00      -3.06      -0.00       0.00      -0.00

   35   7.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       3.47      -0.57       0.00
                            0.00       0.00       0.00       0.00       3.83       0.00       0.00      -0.00      -0.00      58.81

   36   8.1  1.0  0.0       0.00       0.00       0.00       0.00       3.83      -0.00       0.00       0.00      -0.00      58.81
                            0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00      -3.47      -0.57       0.00

   37   9.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       3.05       0.00       0.00      -0.00
                            0.00       0.00       0.00       0.00      -0.00       3.05       0.00      -0.00       0.00       0.00

   38  10.1  1.0  0.0       0.00       0.00       0.00       0.00      -0.31       0.00      -0.00      -0.00       0.00     112.50
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00      -1.62       3.26      -0.00

   39  11.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00      -0.00       0.00      -1.62      -3.26      -0.00
                            0.00       0.00       0.00       0.00       0.31       0.00      -0.00      -0.00       0.00    -112.50

   40  12.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00      -2.33       0.00      -0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00      -0.00      -2.33       0.00       0.00      -0.00

   41  13.1  1.0  0.0   24514.91       0.00       0.00       0.00       0.00       4.76      -0.00       0.00      -0.00      -0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       4.76       0.00      -0.00      -0.00

   42  14.1  1.0  0.0       0.00   24514.87       0.00       0.00      -4.77      -0.00       0.00       0.00       0.00      -0.02
                           -0.00       0.00       0.00       0.00      -0.00       0.00       0.00      -4.76       2.77       0.00

   43  15.1  1.0  0.0       0.00       0.00   24514.87       0.00      -0.00       0.00       0.00      -4.76      -2.77      -0.00
                           -0.00      -0.00       0.00       0.00       4.77      -0.00       0.00      -0.00      -0.00       0.02

   44  16.1  1.0  0.0       0.00       0.00       0.00   26285.15       0.00      -0.00       0.00      -0.00       0.00      -0.00
                           -0.00      -0.00      -0.00       0.00       0.00      -0.00       0.00       0.00       0.00      -0.00

   45   1.1  1.0 -1.0       0.00      -4.77      -0.00       0.00    9768.69       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -4.77      -0.00      -0.00       0.00       0.00    -196.11       0.00       0.00

   46   2.1  1.0 -1.0       4.76      -0.00       0.00      -0.00       0.00    9768.71       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00      -0.00      -0.00     -98.07      -0.00      -0.00       0.00

   47   3.1  1.0 -1.0      -0.00       0.00       0.00       0.00       0.00       0.00    9768.71       0.00       0.00       0.00
                           -4.76      -0.00      -0.00      -0.00      -0.00      98.07       0.00       0.00      -0.00       0.00

   48   4.1  1.0 -1.0       0.00       0.00      -4.76      -0.00       0.00       0.00       0.00    9768.79       0.00       0.00
                           -0.00       4.76       0.00      -0.00     196.11       0.00      -0.00      -0.00       0.00      -4.24

   49   5.1  1.0 -1.0      -0.00       0.00      -2.77       0.00       0.00       0.00       0.00       0.00    9768.79       0.00
                            0.00      -2.77       0.00      -0.00      -0.00       0.00       0.00      -0.00       0.00       0.00

   50   6.1  1.0 -1.0      -0.00      -0.02      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00   22117.48
                            0.00      -0.00      -0.02       0.00      -0.00      -0.00      -0.00       4.24      -0.00       0.00

   51   7.1  1.0 -1.0      -0.00       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00       0.00       0.99      -0.00       0.00      -0.00      -0.00

   52   8.1  1.0 -1.0      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00       0.00       0.00       0.00       0.99       0.00       0.00       0.00

   53   9.1  1.0 -1.0       0.00       0.00      -0.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.01      -0.00      -0.00      -4.24      -0.00       0.00       0.00      -0.00     179.57

   54  10.1  1.0 -1.0       0.03       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00       0.00       0.00       0.00      -5.34      -0.00       0.00       0.00

   55  11.1  1.0 -1.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.03      -0.00      -0.00      -0.00       0.00       5.34       0.00      -0.00      -0.00       0.00

   56  12.1  1.0 -1.0       0.00      -0.03      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.03      -0.00       0.00       0.00       0.00      -0.00      -5.79      -0.00

   57  13.1  1.0 -1.0       0.00    -135.70       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00     135.70      -0.00      -0.00       0.00      -0.00      -0.00      -7.70      -0.00

   58  14.1  1.0 -1.0     135.70      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00      12.53       0.00      -0.00       6.73       0.00       0.00      -0.00

   59  15.1  1.0 -1.0      -0.00       0.00       0.00      12.53       0.00       0.00       0.00       0.00       0.00       0.00
                         -135.70      -0.00       0.00      -0.00       0.00      -6.73      -0.00      -0.00      -0.00      -0.00

   60  16.1  1.0 -1.0      -0.00      -0.00     -12.53      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00     -12.53       0.00      -0.00      -0.00       0.00       0.00       0.00      -0.00       0.00


   Nr   State  S   Sz       51         52         53         54         55         56         57         58         59         60

    1   1.1  0.0  0.0       0.01       0.00      -0.00      -0.00      -0.02      -0.00      -0.00       0.00     -66.27       0.00
                           -0.00       0.01       0.00       0.02       0.00       0.00       0.00      66.27      -0.00      -0.00

    2   2.1  0.0  0.0      -6.66      -0.00      -0.00      -0.00     -23.62       0.00       0.00      -0.00     -13.18       0.00
                           -0.00      -2.17       0.00      25.68       0.00       0.00      -0.00      17.77      -0.00       0.00

    3   3.1  0.0  0.0      25.86      -0.00       0.00       0.00     -14.17      -0.00      -0.00      -0.00     -28.15      -0.00
                           -0.00     -26.61      -0.00      -9.95      -0.00       0.00      -0.00     -25.50       0.00       0.00

    4   4.1  0.0  0.0       0.00      -0.00      -0.00       0.00       0.00     -17.71      26.97      -0.00      -0.00       0.00
                            0.00      -0.00      22.87       0.00       0.00      -0.00       0.00       0.00      -0.00      -0.00

    5   5.1  0.0  0.0      -0.00      28.84      -0.00      -2.18      -0.00       0.00       0.00     -26.97      -0.00       0.00
                           28.84      -0.00      -0.00      -0.00       2.18       0.00       0.00      -0.00      26.97       0.00

    6   6.1  0.0  0.0      -0.00       0.00      22.87      -0.00       0.00       0.00      -0.00      -0.00       0.00       0.00
                            0.00       0.00       0.00      -0.00       0.00     -17.71      26.97      -0.00      -0.00       0.00

    7   7.1  0.0  0.0       0.00       0.00      -0.00      -0.00      -0.00      64.24     172.65      -0.00      -0.00       0.00
                            0.00      -0.00     -82.89       0.00       0.00       0.00      -0.00       0.00       0.00       0.00

    8   8.1  0.0  0.0       0.00      -0.00     -82.89      -0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                           -0.00       0.00       0.00       0.00      -0.00      64.24     172.65      -0.00      -0.00       0.00

    9   9.1  0.0  0.0      -0.00     104.56      -0.00      -7.87       0.00      -0.00       0.00     172.65       0.00      -0.00
                          104.56       0.00       0.00      -0.00       7.87      -0.00      -0.00       0.00    -172.65       0.00

   10  10.1  0.0  0.0      95.82      -0.00       0.00      -0.00     -41.07       0.00      -0.00       0.00     169.60      -0.00
                           -0.00     -94.85       0.00     -46.47       0.00       0.00       0.00     175.60       0.00       0.00

   11  11.1  0.0  0.0      13.17      -0.00       0.00      -0.00      90.85       0.00       0.00      -0.00    -104.89       0.00
                           -0.00      18.92       0.00     -88.21      -0.00      -0.00       0.00      94.49      -0.00      -0.00

   12  12.1  0.0  0.0      -0.01      -0.00      -0.00       0.00       0.02       0.00       0.00       0.00     153.10      -0.00
                            0.00      -0.01      -0.00      -0.02       0.00      -0.00      -0.00    -153.10      -0.00       0.00

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

   29   1.1  1.0  0.0      -0.00      -3.83      -0.00       0.31      -0.00      -0.00      -0.00       4.77       0.00      -0.00
                           -3.83       0.00       0.00      -0.00      -0.31      -0.00      -0.00       0.00      -4.77      -0.00

   30   2.1  1.0  0.0      -0.00       0.00      -0.00      -0.00       0.00       2.33      -4.76       0.00      -0.00       0.00
                           -0.00       0.00      -3.05      -0.00      -0.00       0.00      -0.00      -0.00       0.00       0.00

   31   3.1  1.0  0.0       0.00      -0.00      -3.05       0.00      -0.00      -0.00       0.00      -0.00      -0.00      -0.00
                           -0.00       0.00      -0.00      -0.00       0.00       2.33      -4.76      -0.00      -0.00      -0.00

   32   4.1  1.0  0.0      -3.47      -0.00      -0.00       0.00       1.62       0.00      -0.00      -0.00       4.76       0.00
                            0.00       3.47       0.00       1.62       0.00      -0.00      -0.00       4.76       0.00      -0.00

   33   5.1  1.0  0.0       0.57       0.00      -0.00      -0.00       3.26      -0.00       0.00      -0.00       2.77      -0.00
                            0.00       0.57      -0.00      -3.26      -0.00      -0.00       0.00      -2.77       0.00      -0.00

   34   6.1  1.0  0.0      -0.00     -58.81       0.00    -112.50       0.00      -0.00       0.00       0.02       0.00       0.00
                          -58.81      -0.00      -0.00       0.00     112.50       0.00       0.00      -0.00      -0.02       0.00

   35   7.1  1.0  0.0      -0.00       0.00      94.21      -0.00       0.00       0.00       0.00      -0.00       0.00       0.00
                            0.00      -0.00      -0.00       0.00      -0.00      27.44      -0.00      -0.00      -0.00       0.00

   36   8.1  1.0  0.0      -0.00       0.00      -0.00      -0.00      -0.00     -27.44       0.00       0.00       0.00       0.00
                            0.00      -0.00     -94.21      -0.00      -0.00      -0.00       0.00      -0.00       0.00       0.00

   37   9.1  1.0  0.0     -94.21       0.00       0.00      -0.00     -85.06       0.00      -0.00      -0.00       0.01      -0.00
                            0.00      94.21       0.00     -85.06      -0.00      -0.00      -0.00       0.01      -0.00      -0.00

   38  10.1  1.0  0.0       0.00       0.00       0.00       0.00      -0.00     153.04      -0.03      -0.00      -0.00      -0.00
                           -0.00       0.00      85.06      -0.00       0.00       0.00      -0.00       0.00      -0.00       0.00

   39  11.1  1.0  0.0      -0.00       0.00      85.06       0.00       0.00      -0.00       0.00      -0.00      -0.00      -0.00
                            0.00       0.00       0.00      -0.00       0.00     153.04      -0.03      -0.00      -0.00      -0.00

   40  12.1  1.0  0.0      -0.00      27.44      -0.00    -153.04       0.00      -0.00      -0.00       0.03       0.00      -0.00
                          -27.44       0.00       0.00      -0.00    -153.04       0.00      -0.00      -0.00       0.03      -0.00

   41  13.1  1.0  0.0      -0.00      -0.00       0.00       0.03      -0.00       0.00       0.00     135.70      -0.00      -0.00
                            0.00      -0.00       0.00       0.00       0.03       0.00       0.00       0.00     135.70      -0.00

   42  14.1  1.0  0.0       0.00      -0.00       0.00       0.00       0.00      -0.03    -135.70      -0.00       0.00      -0.00
                            0.00       0.00      -0.01      -0.00       0.00       0.00      -0.00      -0.00       0.00      12.53

   43  15.1  1.0  0.0      -0.00      -0.00      -0.01       0.00       0.00      -0.00       0.00      -0.00       0.00     -12.53
                            0.00      -0.00       0.00       0.00       0.00      -0.03    -135.70      -0.00      -0.00      -0.00

   44  16.1  1.0  0.0      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00      12.53      -0.00
                           -0.00      -0.00       0.00      -0.00       0.00       0.00       0.00     -12.53       0.00       0.00

   45   1.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       4.24      -0.00      -0.00      -0.00       0.00      -0.00      -0.00       0.00

   46   2.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.99      -0.00       0.00      -0.00      -5.34      -0.00      -0.00       0.00       6.73      -0.00

   47   3.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.99      -0.00       5.34      -0.00      -0.00       0.00      -6.73       0.00      -0.00

   48   4.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00      -0.00       0.00      -0.00

   49   5.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00      -0.00       0.00       5.79       7.70      -0.00       0.00       0.00

   50   6.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00    -179.57      -0.00      -0.00       0.00       0.00       0.00       0.00      -0.00

   51   7.1  1.0 -1.0   22117.56       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00     258.12      -0.00      62.35       0.00      -0.00      -0.00      -0.03       0.00      -0.00

   52   8.1  1.0 -1.0       0.00   22117.56       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -258.12       0.00      -0.00       0.00      62.35       0.00      -0.00      -0.00      -0.03       0.00

   53   9.1  1.0 -1.0       0.00       0.00   22117.71       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00       0.00      -0.00       0.00      -0.00       0.00      -0.00       0.00

   54  10.1  1.0 -1.0       0.00       0.00       0.00   22117.89       0.00       0.00       0.00       0.00       0.00       0.00
                          -62.35      -0.00      -0.00       0.00     -78.63      -0.00      -0.00      -0.00       0.00      -0.00

   55  11.1  1.0 -1.0       0.00       0.00       0.00       0.00   22117.89       0.00       0.00       0.00       0.00       0.00
                           -0.00     -62.35       0.00      78.63       0.00       0.00       0.00      -0.00       0.00       0.00

   56  12.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00   22117.90       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00       0.00      -0.00       0.00      -0.00       0.00       0.00       0.00

   57  13.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00   24514.91       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00      -0.00       0.00       0.00       0.00      -0.00      17.73

   58  14.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00   24514.87       0.00       0.00
                            0.03       0.00      -0.00       0.00       0.00      -0.00      -0.00      -0.00    -191.90       0.00

   59  15.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   24514.87       0.00
                           -0.00       0.03       0.00      -0.00      -0.00      -0.00       0.00     191.90       0.00      -0.00

   60  16.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   26285.15
                            0.00      -0.00      -0.00       0.00      -0.00      -0.00     -17.73      -0.00       0.00       0.00




   Spin-orbit calculation in the basis of symmetry adapted wave functions
   ======================================================================


 >>> Hamiltonian transformed to symmetry adapted basis <<<


  Results for symmetry 1
  ======================

 => Spin-Orbit Matrixblock (CM-1)  (dimension: 60)

    The diagonal matrixelements are shifted by    -25.38436394 a.u.

  State Sym Spin    / Nr.        1           2           3           4           5           6           7           8

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |0 0>               0.000   11916.388       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |0 0>               0.000       0.000   11916.396       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |0 0>               0.000       0.000       0.000   11916.406       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000   11916.404       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000   11916.409       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000

    7    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000   24013.443       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000

    8    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000   24013.443
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000

    9    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

   10    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

   11    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

   12    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

    1    1  |1 1>+              0.000       0.000      -0.000      99.088       0.000       0.000      17.202      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>+             -0.000      -0.000       0.000       0.000     -99.094      -0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>+             -0.003     179.352     -84.090      -0.000      -0.000       0.000      -0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>+             -0.000      -0.000       0.000       0.000      -0.000      99.070      -0.000      17.204
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>+              0.000       0.000       0.000       0.000       0.000    -171.605       0.000     -29.713
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>+             -0.000      -0.000       0.000      32.344      -0.000      -0.000    -117.220      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>+              0.007      -9.412      36.569       0.000      -0.000      -0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>+              0.000      -0.000      -0.000      -0.000      40.784       0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>+             -0.000      -0.000       0.000      -0.000      -0.000      32.340      -0.000    -117.221
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   10    1  |1 1>+             -0.000      -0.000       0.000       0.000      -3.082      -0.000      -0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   11    1  |1 1>+             -0.026     -33.405     -20.038       0.000      -0.000       0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   12    1  |1 1>+             -0.000       0.000      -0.000     -25.051       0.000       0.000      90.846       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   13    1  |1 1>+             -0.000       0.000      -0.000      38.141       0.000      -0.000     244.164       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   14    1  |1 1>+              0.000      -0.000      -0.000      -0.000     -38.135      -0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   15    1  |1 1>+            -93.726     -18.639     -39.804      -0.000      -0.000       0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   16    1  |1 1>+              0.000       0.000      -0.000       0.000       0.000       0.001       0.000      -0.001
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      16.877    -197.371       0.000      -0.000       0.000       0.000       0.000

    2    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000      -0.000      -0.000     -99.091       0.000     -17.194

    3    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000      99.091       0.000      -0.000      17.194       0.000

    4    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000      -0.000     198.158      -0.000      -0.000       0.000

    5    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000       0.000      -0.003       0.000       0.000      -0.000

    6    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -2.754      32.206      -0.000      -0.000      -0.000       0.000       0.000

    7    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000       7.224       0.000      -0.000     -26.152      -0.000

    8    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000      -0.000      -0.000       7.224       0.000     -26.152

    9    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000      -0.000     -32.300      -0.000      -0.000       0.000

   10    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000       0.000       0.000     -40.263      -0.000     146.001

   11    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000      40.263       0.000      -0.000    -146.001      -0.000

   12    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.031     -43.389      -3.710       0.000       0.000       0.000      -0.000       0.000

   13    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               93.727     -43.759      -3.742       0.000       0.000      -0.000       0.000      -0.000

   14    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000      -0.000       0.000      38.139      -0.000     244.159

   15    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000     -38.139      -0.000      -0.000    -244.159      -0.000

   16    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000       0.000      -0.000       0.000       0.000       0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000       0.000     -99.088      -0.000     -17.202

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.003    -162.472    -113.318       0.000      -0.000      -0.000       0.000       0.000

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000       0.000      99.094       0.000      -0.000      -0.000

    4    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000      99.075      -0.000      -0.000      17.205      -0.000

    5    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000     171.602      -0.000      -0.000      29.713      -0.000

    6    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000       0.000      -0.000     -32.344       0.000     117.220

    7    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000       0.000      40.784       0.000       0.000      -0.000

    8    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.007      -3.067     -37.636      -0.000      -0.000       0.000      -0.000       0.000

    9    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000      32.340      -0.000       0.000    -117.221       0.000

   10    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.026      36.322     -14.076       0.000      -0.000      -0.000       0.000       0.000

   11    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000       0.000       3.082       0.000       0.000      -0.000

   12    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000       0.000     -25.051       0.000      90.846

   13    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000       0.000       0.000      38.141      -0.000     244.164

   14    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               93.726      25.126     -36.062       0.000      -0.000      -0.000       0.000      -0.000

   15    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000      -0.000      38.135      -0.000       0.000      -0.000

   16    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000      -0.001       0.000       0.000       0.001       0.000

  State Sym Spin    / Nr.        9          10          11          12          13          14          15          16

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000      -0.000      -0.003      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |0 0>               0.000       0.000       0.000       0.000       0.000      -0.000     179.352      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |0 0>               0.000       0.000       0.000       0.000      -0.000       0.000     -84.090       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |0 0>               0.000       0.000       0.000       0.000      99.088       0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000     -99.094      -0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000      -0.000       0.000      99.070
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |0 0>               0.000       0.000       0.000       0.000      17.202       0.000      -0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |0 0>               0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000      17.204
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |0 0>           24013.443       0.000       0.000       0.000       0.000      17.192       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   10    1  |0 0>               0.000   24013.454       0.000       0.000      -0.000      -0.000      18.011       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   11    1  |0 0>               0.000       0.000   24013.467       0.000       0.000      -0.000      29.189      -0.000
                               -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000

   12    1  |0 0>               0.000       0.000       0.000   26331.026       0.000      -0.000       0.004       0.000
                               -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 1>+              0.000      -0.000       0.000       0.000    9768.692       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>+             17.192      -0.000      -0.000      -0.000       0.000    9768.713       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>+              0.000      18.011      29.189       0.004       0.000       0.000    9768.713       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>+              0.000       0.000      -0.000       0.000       0.000       0.000       0.000    9768.787
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>+             -0.000      -0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>+             -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>+             -0.000     135.505      18.628      -0.011       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>+            147.869      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>+             -0.000       0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   10    1  |1 1>+            -11.130      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   11    1  |1 1>+              0.000     -58.083     128.475       0.035       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   12    1  |1 1>+             -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   13    1  |1 1>+              0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   14    1  |1 1>+            244.168       0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   15    1  |1 1>+              0.000     239.844    -148.334     216.520       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   16    1  |1 1>+             -0.000      -0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>               0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000      -0.000
                               -0.000      34.228      -1.031       0.000       0.000       0.000     -98.076       0.000

    2    1  |1 0>               0.000       0.000       0.000       0.000      -0.000       0.000      -0.000      -0.000
                                0.000       0.000       0.000      -0.000      -0.000       0.000      -0.000     -98.065

    3    1  |1 0>               0.000       0.000       0.000       0.000      -0.000      -0.000       0.000       0.000
                               -0.000       0.000      -0.000       0.000      98.076       0.000       0.000      -0.000

    4    1  |1 0>               0.000       0.000       0.000       0.000      -0.000      -0.000       0.000      -0.000
                              -34.257      -0.000      -0.000       0.000      -0.000      98.065       0.000       0.000

    5    1  |1 0>               0.000       0.000       0.000       0.000      -0.000      -0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000      -0.000     169.842       0.000       0.000

    6    1  |1 0>               0.000       0.000       0.000       0.000       0.000      -0.000       0.000      -0.000
                                0.000     117.143      -3.529      -0.000      -0.000       0.000      -4.325      -0.000

    7    1  |1 0>               0.000       0.000       0.000       0.000      -0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       5.417       0.000       0.000      -0.000

    8    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000      -0.000      -0.000
                               -0.000      -0.000       0.000      -0.000      -0.000      -0.000      -0.000      -4.913

    9    1  |1 0>               0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000       0.000
                             -117.210      -0.000       0.000       0.000      -0.000       4.317       0.000      -0.000

   10    1  |1 0>               0.000       0.000       0.000       0.000       0.000      -0.000       0.000      -0.000
                                0.000       0.000      -0.000       0.000       0.000       0.000       0.000      -2.295

   11    1  |1 0>               0.000       0.000       0.000       0.000      -0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.436       0.000      -0.000      -0.000

   12    1  |1 0>               0.000       0.000       0.000       0.000      -0.000       0.000       0.000       0.000
                               -0.000       4.746     157.535      -0.035       0.000      -0.000      -3.300       0.000

   13    1  |1 0>               0.000       0.000       0.000       0.000      -0.000       0.000       0.000       0.000
                               -0.000      -8.495    -281.964    -216.535       0.000       0.000       6.737       0.000

   14    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000      -0.000       0.000       0.000      -6.728

   15    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000      -0.000       0.000
                                0.000       0.000      -0.000      -0.000       6.739      -0.000       0.000      -0.000

   16    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000      -0.000       0.000
                               -0.000       0.000      -0.000      -0.000       0.000      -0.002       0.000       0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000      -0.000       0.000      -0.000      -0.000     196.114

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      16.221     -30.220      -0.004       0.000       0.000      98.074       0.000

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -17.192      -0.000      -0.000       0.000       0.000     -98.074      -0.000      -0.000

    4    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000       0.000    -196.114      -0.000       0.000       0.000

    5    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000       0.003      -0.000      -0.000       0.000

    6    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000      -0.000       0.000       0.000       0.000      -4.239

    7    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              147.869      -0.000      -0.000       0.000      -0.000      -0.990       0.000      -0.000

    8    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000    -134.138      26.751      -0.011      -0.000      -0.000      -0.990      -0.000

    9    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000       4.240       0.000      -0.000      -0.000

   10    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000     -65.712    -124.746      -0.035      -0.000      -0.000       5.338       0.000

   11    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               11.130       0.000      -0.000       0.000      -0.000      -5.338      -0.000       0.000

   12    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000

   13    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000      -0.000       0.000      -0.000       0.000       0.000

   14    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000     248.338     133.627    -216.520      -0.000       0.000      -6.726      -0.000

   15    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -244.168       0.000      -0.000      -0.000      -0.000       6.726       0.000       0.000

   16    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000       0.000       0.000      -0.000      -0.000      -0.000

  State Sym Spin    / Nr.       17          18          19          20          21          22          23          24

    1    1  |0 0>               0.000      -0.000       0.007       0.000      -0.000      -0.000      -0.026      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |0 0>               0.000      -0.000      -9.412      -0.000      -0.000      -0.000     -33.405       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |0 0>               0.000       0.000      36.569      -0.000       0.000       0.000     -20.038      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |0 0>               0.000      32.344       0.000      -0.000      -0.000       0.000       0.000     -25.051
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |0 0>               0.000      -0.000      -0.000      40.784      -0.000      -3.082      -0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |0 0>            -171.605      -0.000      -0.000       0.000      32.340      -0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |0 0>               0.000    -117.220       0.000       0.000      -0.000      -0.000      -0.000      90.846
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |0 0>             -29.713      -0.000       0.000      -0.000    -117.221      -0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |0 0>              -0.000      -0.000      -0.000     147.869      -0.000     -11.130       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   10    1  |0 0>              -0.000      -0.000     135.505      -0.000       0.000      -0.000     -58.083       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   11    1  |0 0>               0.000      -0.000      18.628      -0.000       0.000      -0.000     128.475       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   12    1  |0 0>              -0.000       0.000      -0.011      -0.000      -0.000       0.000       0.035       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>+           9768.788       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>+              0.000   22117.475       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>+              0.000       0.000   22117.562       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>+              0.000       0.000       0.000   22117.562       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>+              0.000       0.000       0.000       0.000   22117.714       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   10    1  |1 1>+              0.000       0.000       0.000       0.000       0.000   22117.885       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   11    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000   22117.885       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   12    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000   22117.904
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   13    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   14    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   15    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   16    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>              -0.000       0.000      -0.000       0.000      -0.000       0.000      -0.000      -0.000
                                0.000       0.000      -5.417       0.000       0.000      -0.000      -0.436      -0.000

    2    1  |1 0>              -0.000      -0.000       0.000       0.000      -0.000      -0.000       0.000       0.000
                             -169.842      -0.000      -0.000       0.000      -4.317      -0.000      -0.000       0.000

    3    1  |1 0>               0.000       0.000       0.000      -0.000      -0.000       0.000       0.000       0.000
                               -0.000       4.325      -0.000       0.000      -0.000      -0.000       0.000       3.300

    4    1  |1 0>              -0.000      -0.000       0.000      -0.000       0.000      -0.000       0.000       0.000
                               -0.000       0.000       0.000       4.913       0.000       2.295       0.000      -0.000

    5    1  |1 0>              -0.000       0.000       0.000       0.000       0.000      -0.000       0.000       0.000
                                0.000      -0.000       0.000       0.808      -0.000      -4.613      -0.000      -0.000

    6    1  |1 0>               0.000      -0.000      -0.000       0.000      -0.000      -0.000      -0.000       0.000
                                0.000       0.000     -83.174      -0.000      -0.000       0.000     159.095       0.000

    7    1  |1 0>               0.000      -0.000      -0.000       0.000      -0.000       0.000       0.000       0.000
                               -0.000      83.174       0.000      -0.000      -0.000       0.000      -0.000      38.804

    8    1  |1 0>               0.000       0.000       0.000       0.000      -0.000      -0.000       0.000      -0.000
                               -0.808       0.000       0.000       0.000    -133.240      -0.000      -0.000      -0.000

    9    1  |1 0>               0.000      -0.000      -0.000      -0.000       0.000      -0.000      -0.000      -0.000
                                0.000       0.000       0.000     133.240       0.000    -120.298      -0.000      -0.000

   10    1  |1 0>              -0.000      -0.000       0.000      -0.000      -0.000       0.000       0.000      -0.000
                                4.613      -0.000      -0.000       0.000     120.298       0.000       0.000       0.000

   11    1  |1 0>               0.000      -0.000       0.000       0.000      -0.000       0.000       0.000      -0.000
                                0.000    -159.095       0.000       0.000       0.000      -0.000       0.000     216.437

   12    1  |1 0>               0.000       0.000       0.000      -0.000      -0.000      -0.000      -0.000      -0.000
                                0.000      -0.000     -38.804       0.000       0.000      -0.000    -216.437       0.000

   13    1  |1 0>               0.000       0.000       0.000      -0.000      -0.000       0.000       0.000      -0.000
                               -0.000      -0.000       0.005      -0.000       0.000       0.000       0.047       0.000

   14    1  |1 0>               0.000      -0.000      -0.000       0.000      -0.000      -0.000      -0.000       0.000
                                3.924       0.000       0.000       0.000      -0.013      -0.000       0.000       0.000

   15    1  |1 0>              -0.000      -0.000      -0.000       0.000       0.000      -0.000      -0.000       0.000
                               -0.000       0.034       0.000      -0.000       0.000       0.000       0.000      -0.043

   16    1  |1 0>               0.000      -0.000      -0.000       0.000      -0.000       0.000      -0.000       0.000
                                0.000      -0.000      -0.000      -0.001       0.000      -0.004       0.000       0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.003      -0.000       0.000       0.000      -4.240       0.000       0.000       0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.990       0.000      -0.000       0.000       5.338       0.000

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000       0.990       0.000      -5.338       0.000       0.000

    4    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       4.239       0.000       0.000       0.000      -0.000      -0.000      -0.000

    5    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000       0.000      -0.000       0.000      -0.000      -5.790

    6    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000       0.000     179.571       0.000       0.000      -0.000

    7    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000    -258.122       0.000     -62.347      -0.000       0.000

    8    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000     258.122      -0.000       0.000      -0.000     -62.347      -0.000

    9    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000    -179.571      -0.000      -0.000       0.000      -0.000       0.000      -0.000

   10    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      62.347       0.000       0.000      -0.000      78.628       0.000

   11    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000      62.347      -0.000     -78.628      -0.000      -0.000

   12    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                5.790       0.000      -0.000       0.000       0.000      -0.000       0.000      -0.000

   13    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                7.704       0.000      -0.000      -0.000      -0.000      -0.000       0.000      -0.000

   14    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.029      -0.000       0.000      -0.000      -0.002       0.000

   15    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.029      -0.000       0.002       0.000       0.000

   16    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000       0.000       0.000      -0.000       0.000       0.005

  State Sym Spin    / Nr.       25          26          27          28          29          30          31          32

    1    1  |0 0>              -0.000       0.000     -93.726       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000      -0.000       0.000      -0.000

    2    1  |0 0>               0.000      -0.000     -18.639       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000     -16.877      -0.000      -0.000      -0.000

    3    1  |0 0>              -0.000      -0.000     -39.804      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000     197.371       0.000      -0.000       0.000

    4    1  |0 0>              38.141      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000       0.000     -99.091       0.000

    5    1  |0 0>               0.000     -38.135      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000      -0.000    -198.158

    6    1  |0 0>              -0.000      -0.000       0.000       0.001       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000      99.091       0.000       0.000

    7    1  |0 0>             244.164      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000      -0.000     -17.194       0.000

    8    1  |0 0>               0.000       0.000       0.000      -0.001       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000      17.194      -0.000      -0.000

    9    1  |0 0>               0.000     244.168       0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000      -0.000       0.000      34.257

   10    1  |0 0>              -0.000       0.000     239.844      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000     -34.228      -0.000      -0.000       0.000

   11    1  |0 0>               0.000      -0.000    -148.334       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       1.031      -0.000       0.000       0.000

   12    1  |0 0>               0.000       0.000     216.520      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000       0.000      -0.000      -0.000

    1    1  |1 1>+              0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000     -98.076       0.000

    2    1  |1 1>+              0.000       0.000       0.000       0.000      -0.000       0.000      -0.000      -0.000
                                0.000       0.000       0.000       0.000      -0.000       0.000      -0.000     -98.065

    3    1  |1 1>+              0.000       0.000       0.000       0.000      -0.000      -0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      98.076       0.000       0.000      -0.000

    4    1  |1 1>+              0.000       0.000       0.000       0.000      -0.000      -0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000      -0.000      98.065       0.000       0.000

    5    1  |1 1>+              0.000       0.000       0.000       0.000      -0.000      -0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000      -0.000     169.842       0.000       0.000

    6    1  |1 1>+              0.000       0.000       0.000       0.000       0.000      -0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000      -0.000       0.000      -4.325      -0.000

    7    1  |1 1>+              0.000       0.000       0.000       0.000      -0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       5.417       0.000       0.000      -0.000

    8    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000      -0.000      -0.000
                                0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000      -4.913

    9    1  |1 1>+              0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000       4.317       0.000      -0.000

   10    1  |1 1>+              0.000       0.000       0.000       0.000       0.000      -0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000      -2.295

   11    1  |1 1>+              0.000       0.000       0.000       0.000      -0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.436       0.000      -0.000      -0.000

   12    1  |1 1>+              0.000       0.000       0.000       0.000      -0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000      -0.000      -3.300       0.000

   13    1  |1 1>+          24514.913       0.000       0.000       0.000      -0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       6.737       0.000

   14    1  |1 1>+              0.000   24514.875       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000       0.000       0.000      -6.728

   15    1  |1 1>+              0.000       0.000   24514.875       0.000       0.000       0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000       6.739      -0.000       0.000      -0.000

   16    1  |1 1>+              0.000       0.000       0.000   26285.154       0.000       0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000       0.000      -0.002       0.000       0.000

    1    1  |1 0>              -0.000       0.000       0.000       0.000    9768.692       0.000       0.000       0.000
                               -0.000       0.000      -6.739      -0.000       0.000       0.000       0.000       0.000

    2    1  |1 0>               0.000       0.000       0.000       0.000       0.000    9768.713       0.000       0.000
                               -0.000      -0.000       0.000       0.002      -0.000       0.000       0.000       0.000

    3    1  |1 0>               0.000       0.000      -0.000      -0.000       0.000       0.000    9768.713       0.000
                               -6.737      -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000

    4    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000    9768.787
                               -0.000       6.728       0.000      -0.000      -0.000      -0.000      -0.000       0.000

    5    1  |1 0>               0.000       0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -3.924       0.000      -0.000      -0.000      -0.000      -0.000      -0.000

    6    1  |1 0>               0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.034       0.000      -0.000      -0.000      -0.000      -0.000

    7    1  |1 0>               0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                               -0.005      -0.000      -0.000       0.000      -0.000      -0.000      -0.000      -0.000

    8    1  |1 0>              -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000       0.001      -0.000      -0.000      -0.000      -0.000

    9    1  |1 0>              -0.000      -0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                               -0.000       0.013      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

   10    1  |1 0>               0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000       0.004      -0.000      -0.000      -0.000      -0.000

   11    1  |1 0>               0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                               -0.047      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

   12    1  |1 0>              -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.043      -0.000      -0.000      -0.000      -0.000      -0.000

   13    1  |1 0>               0.000       0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000     191.907      -0.000      -0.000      -0.000      -0.000      -0.000

   14    1  |1 0>               0.000      -0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000      17.718      -0.000      -0.000      -0.000      -0.000

   15    1  |1 0>              -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -191.907      -0.000       0.000      -0.000      -0.000      -0.000      -0.000      -0.000

   16    1  |1 0>               0.000      -0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000     -17.718       0.000       0.000      -0.000      -0.000      -0.000      -0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000      98.076       0.000      -0.000
                               -0.000       0.000       0.000      -0.000       0.000       0.000      -0.000      -0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000     -98.076       0.000      -0.000       0.000
                                0.000      -0.000      -6.726       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>-              0.000       0.000       0.000       0.000      -0.000       0.000       0.000     -98.060
                               -0.000       6.726      -0.000       0.000      -0.000       0.000      -0.000      -0.000

    4    1  |1 1>-              0.000       0.000       0.000       0.000       0.000      -0.000      98.060       0.000
                               -0.000       0.000      -0.000       0.000      -0.000       0.000      -0.000       0.000

    5    1  |1 1>-              0.000       0.000       0.000       0.000      -0.000       0.000    -169.844       0.000
                               -7.704       0.000      -0.000      -0.000       0.000      -0.000      -0.000      -0.000

    6    1  |1 1>-              0.000       0.000       0.000       0.000      -0.000       4.325      -0.000       0.000
                               -0.000      -0.000      -0.000       0.000      -0.000      -0.000       0.000       0.000

    7    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000      -0.000       4.913
                                0.000       0.029      -0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>-              0.000       0.000       0.000       0.000       5.417      -0.000       0.000       0.000
                                0.000       0.000       0.029      -0.000       0.000       0.000      -0.000      -0.000

    9    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       4.317       0.000
                                0.000      -0.000       0.000      -0.000       0.000       0.000      -0.000       0.000

   10    1  |1 1>-              0.000       0.000       0.000       0.000      -0.436       0.000      -0.000      -0.000
                                0.000       0.000      -0.002       0.000       0.000      -0.000       0.000       0.000

   11    1  |1 1>-              0.000       0.000       0.000       0.000       0.000      -0.000       0.000      -2.296
                               -0.000       0.002      -0.000      -0.000      -0.000       0.000      -0.000       0.000

   12    1  |1 1>-              0.000       0.000       0.000       0.000       0.000      -3.300       0.000      -0.000
                                0.000      -0.000      -0.000      -0.005      -0.000       0.000       0.000       0.000

   13    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       6.737      -0.000       0.000
                               -0.000      -0.000       0.000     -17.726      -0.000      -0.000       0.000       0.000

   14    1  |1 1>-              0.000       0.000       0.000       0.000      -6.739      -0.000       0.000       0.000
                                0.000       0.000     191.901      -0.000       0.000      -0.000       0.000       0.000

   15    1  |1 1>-              0.000       0.000       0.000       0.000      -0.000       0.000       0.000      -6.729
                               -0.000    -191.901      -0.000       0.000      -0.000       0.000      -0.000       0.000

   16    1  |1 1>-              0.000       0.000       0.000       0.000       0.000      -0.000       0.002      -0.000
                               17.726       0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

  State Sym Spin    / Nr.       33          34          35          36          37          38          39          40

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000      -0.000       0.000      -0.000       0.000      -0.031

    2    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       2.754      -0.000       0.000      -0.000       0.000      -0.000      43.389

    3    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000     -32.206       0.000      -0.000      -0.000       0.000      -0.000       3.710

    4    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -7.224       0.000       0.000      -0.000     -40.263      -0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.003       0.000      -0.000       0.000      32.300      -0.000      -0.000      -0.000

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000      -7.224       0.000      40.263       0.000      -0.000

    7    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      26.152      -0.000       0.000       0.000     146.001       0.000

    8    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000      26.152      -0.000    -146.001       0.000      -0.000

    9    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000       0.000     117.210      -0.000      -0.000       0.000

   10    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000    -117.143      -0.000       0.000       0.000      -0.000      -0.000      -4.746

   11    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       3.529      -0.000      -0.000      -0.000       0.000      -0.000    -157.535

   12    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000       0.000      -0.000      -0.000      -0.000       0.035

    1    1  |1 1>+             -0.000       0.000      -0.000       0.000      -0.000       0.000      -0.000      -0.000
                                0.000       0.000      -5.417       0.000       0.000      -0.000      -0.436      -0.000

    2    1  |1 1>+             -0.000      -0.000       0.000       0.000      -0.000      -0.000       0.000       0.000
                             -169.842      -0.000      -0.000       0.000      -4.317      -0.000      -0.000       0.000

    3    1  |1 1>+              0.000       0.000       0.000      -0.000      -0.000       0.000       0.000       0.000
                               -0.000       4.325      -0.000       0.000      -0.000      -0.000       0.000       3.300

    4    1  |1 1>+             -0.000      -0.000       0.000      -0.000       0.000      -0.000       0.000       0.000
                               -0.000       0.000       0.000       4.913       0.000       2.295       0.000      -0.000

    5    1  |1 1>+             -0.000       0.000       0.000       0.000       0.000      -0.000       0.000       0.000
                                0.000      -0.000       0.000       0.808      -0.000      -4.613      -0.000      -0.000

    6    1  |1 1>+              0.000      -0.000      -0.000       0.000      -0.000      -0.000      -0.000       0.000
                                0.000       0.000     -83.174      -0.000      -0.000       0.000     159.095       0.000

    7    1  |1 1>+              0.000      -0.000      -0.000       0.000      -0.000       0.000       0.000       0.000
                               -0.000      83.174       0.000      -0.000      -0.000       0.000      -0.000      38.804

    8    1  |1 1>+              0.000       0.000       0.000       0.000      -0.000      -0.000       0.000      -0.000
                               -0.808       0.000       0.000       0.000    -133.240      -0.000      -0.000      -0.000

    9    1  |1 1>+              0.000      -0.000      -0.000      -0.000       0.000      -0.000      -0.000      -0.000
                                0.000       0.000       0.000     133.240       0.000    -120.298      -0.000      -0.000

   10    1  |1 1>+             -0.000      -0.000       0.000      -0.000      -0.000       0.000       0.000      -0.000
                                4.613      -0.000      -0.000       0.000     120.298       0.000       0.000       0.000

   11    1  |1 1>+              0.000      -0.000       0.000       0.000      -0.000       0.000       0.000      -0.000
                                0.000    -159.095       0.000       0.000       0.000      -0.000       0.000     216.437

   12    1  |1 1>+              0.000       0.000       0.000      -0.000      -0.000      -0.000      -0.000      -0.000
                                0.000      -0.000     -38.804       0.000       0.000      -0.000    -216.437       0.000

   13    1  |1 1>+              0.000       0.000       0.000      -0.000      -0.000       0.000       0.000      -0.000
                               -0.000      -0.000       0.005      -0.000       0.000       0.000       0.047       0.000

   14    1  |1 1>+              0.000      -0.000      -0.000       0.000      -0.000      -0.000      -0.000       0.000
                                3.924       0.000       0.000       0.000      -0.013      -0.000       0.000       0.000

   15    1  |1 1>+             -0.000      -0.000      -0.000       0.000       0.000      -0.000      -0.000       0.000
                               -0.000       0.034       0.000      -0.000       0.000       0.000       0.000      -0.043

   16    1  |1 1>+              0.000      -0.000      -0.000       0.000      -0.000       0.000      -0.000       0.000
                                0.000      -0.000      -0.000      -0.001       0.000      -0.004       0.000       0.000

    1    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 0>            9768.788       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 0>               0.000   22117.475       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 0>               0.000       0.000   22117.562       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 0>               0.000       0.000       0.000   22117.562       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 0>               0.000       0.000       0.000       0.000   22117.714       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

   10    1  |1 0>               0.000       0.000       0.000       0.000       0.000   22117.885       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000

   11    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000   22117.885       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000

   12    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000   22117.904
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000

   13    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

   14    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

   15    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

   16    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

    1    1  |1 1>-              0.000       0.000      -0.000      -5.417      -0.000       0.436      -0.000      -0.000
                                0.000      -0.000       0.000       0.000       0.000       0.000      -0.000      -0.000

    2    1  |1 1>-             -0.000      -4.325      -0.000       0.000      -0.000      -0.000       0.000       3.300
                               -0.000      -0.000       0.000       0.000       0.000      -0.000       0.000       0.000

    3    1  |1 1>-            169.844       0.000       0.000      -0.000      -4.317       0.000      -0.000      -0.000
                               -0.000       0.000       0.000      -0.000      -0.000       0.000      -0.000       0.000

    4    1  |1 1>-             -0.000      -0.000      -4.913      -0.000      -0.000       0.000       2.296       0.000
                               -0.000       0.000       0.000      -0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>-              0.000       0.000       0.808       0.000      -0.000      -0.000       4.613      -0.000
                                0.000      -0.000      -0.000       0.000      -0.000      -0.000       0.000       0.000

    6    1  |1 1>-             -0.000       0.000      -0.000     -83.174       0.000    -159.095       0.000      -0.000
                               -0.000      -0.000       0.000       0.000      -0.000      -0.000       0.000      -0.000

    7    1  |1 1>-             -0.808       0.000       0.000       0.000     133.240      -0.000       0.000       0.000
                               -0.000       0.000       0.000      -0.000      -0.000       0.000      -0.000       0.000

    8    1  |1 1>-             -0.000      83.174      -0.000       0.000      -0.000      -0.000      -0.000     -38.804
                                0.000       0.000      -0.000      -0.000      -0.000       0.000      -0.000      -0.000

    9    1  |1 1>-              0.000      -0.000    -133.240       0.000       0.000      -0.000    -120.298       0.000
                               -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

   10    1  |1 1>-              0.000     159.095       0.000       0.000       0.000       0.000      -0.000     216.437
                               -0.000      -0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000

   11    1  |1 1>-             -4.613      -0.000      -0.000       0.000     120.298       0.000       0.000      -0.000
                                0.000       0.000      -0.000      -0.000       0.000      -0.000       0.000       0.000

   12    1  |1 1>-              0.000       0.000      -0.000      38.804      -0.000    -216.437       0.000       0.000
                                0.000      -0.000       0.000      -0.000       0.000      -0.000       0.000       0.000

   13    1  |1 1>-             -0.000      -0.000      -0.000      -0.005       0.000       0.047      -0.000       0.000
                                0.000       0.000      -0.000       0.000      -0.000       0.000      -0.000      -0.000

   14    1  |1 1>-              0.000      -0.034       0.000      -0.000       0.000       0.000       0.000      -0.043
                                0.000       0.000       0.000      -0.000       0.000       0.000       0.000      -0.000

   15    1  |1 1>-             -3.924      -0.000      -0.000      -0.000      -0.013       0.000       0.000      -0.000
                               -0.000      -0.000      -0.000       0.000      -0.000      -0.000      -0.000       0.000

   16    1  |1 1>-              0.000      -0.000      -0.001      -0.000       0.000       0.000       0.004       0.000
                                0.000       0.000      -0.000      -0.000       0.000       0.000      -0.000       0.000

  State Sym Spin    / Nr.       41          42          43          44          45          46          47          48

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -93.727      -0.000       0.000      -0.000      -0.000      -0.003      -0.000      -0.000

    2    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               43.759       0.000      -0.000       0.000      -0.000     162.472       0.000      -0.000

    3    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                3.742      -0.000       0.000      -0.000      -0.000     113.318       0.000       0.000

    4    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      38.139      -0.000       0.000      -0.000      -0.000     -99.075

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000      -0.000       0.000     -99.094       0.000

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000     -38.139       0.000      -0.000      99.088       0.000      -0.000       0.000

    7    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000     244.159      -0.000       0.000      -0.000       0.000     -17.205

    8    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000    -244.159       0.000      -0.000      17.202      -0.000       0.000       0.000

    9    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000       0.000       0.000       0.000      17.192       0.000

   10    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                8.495       0.000      -0.000      -0.000      -0.000     -16.221       0.000       0.000

   11    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              281.964      -0.000       0.000       0.000      -0.000      30.220       0.000       0.000

   12    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              216.535      -0.000       0.000       0.000       0.000       0.004      -0.000      -0.000

    1    1  |1 1>+             -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -6.739      -0.000       0.000      -0.000      -0.000     196.114

    2    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.002       0.000       0.000      98.074       0.000

    3    1  |1 1>+              0.000       0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                               -6.737      -0.000      -0.000      -0.000       0.000     -98.074      -0.000      -0.000

    4    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       6.728       0.000      -0.000    -196.114      -0.000       0.000       0.000

    5    1  |1 1>+              0.000       0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -3.924       0.000      -0.000       0.003      -0.000      -0.000       0.000

    6    1  |1 1>+              0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.034       0.000       0.000       0.000       0.000      -4.239

    7    1  |1 1>+              0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                               -0.005      -0.000      -0.000       0.000      -0.000      -0.990       0.000      -0.000

    8    1  |1 1>+             -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000       0.001      -0.000      -0.000      -0.990      -0.000

    9    1  |1 1>+             -0.000      -0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                               -0.000       0.013      -0.000      -0.000       4.240       0.000      -0.000      -0.000

   10    1  |1 1>+              0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000       0.004      -0.000      -0.000       5.338       0.000

   11    1  |1 1>+              0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                               -0.047      -0.000      -0.000      -0.000      -0.000      -5.338      -0.000       0.000

   12    1  |1 1>+             -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.043      -0.000      -0.000      -0.000      -0.000       0.000

   13    1  |1 1>+              0.000       0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000     191.907      -0.000       0.000      -0.000       0.000       0.000

   14    1  |1 1>+              0.000      -0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000      17.718      -0.000       0.000      -6.726      -0.000

   15    1  |1 1>+             -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -191.907      -0.000       0.000      -0.000      -0.000       6.726       0.000       0.000

   16    1  |1 1>+              0.000      -0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000     -17.718       0.000       0.000       0.000      -0.000      -0.000      -0.000

    1    1  |1 0>               0.000       0.000       0.000       0.000       0.000     -98.076      -0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000      -0.000       0.000       0.000

    2    1  |1 0>               0.000       0.000       0.000       0.000      98.076       0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000      -0.000      -0.000       0.000      -0.000

    3    1  |1 0>               0.000       0.000       0.000       0.000       0.000      -0.000       0.000      98.060
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 0>               0.000       0.000       0.000       0.000      -0.000       0.000     -98.060       0.000
                                0.000       0.000       0.000       0.000       0.000      -0.000       0.000      -0.000

    5    1  |1 0>               0.000       0.000       0.000       0.000       0.000      -0.000     169.844      -0.000
                                0.000       0.000       0.000       0.000      -0.000       0.000       0.000       0.000

    6    1  |1 0>               0.000       0.000       0.000       0.000       0.000      -4.325       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 0>               0.000       0.000       0.000       0.000      -0.000      -0.000       0.000      -4.913
                                0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000       0.000

    8    1  |1 0>               0.000       0.000       0.000       0.000      -5.417       0.000      -0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000      -0.000       0.000       0.000

    9    1  |1 0>               0.000       0.000       0.000       0.000      -0.000      -0.000      -4.317      -0.000
                                0.000       0.000       0.000       0.000      -0.000       0.000       0.000      -0.000

   10    1  |1 0>               0.000       0.000       0.000       0.000       0.436      -0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000       0.000      -0.000      -0.000

   11    1  |1 0>               0.000       0.000       0.000       0.000      -0.000       0.000      -0.000       2.296
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000

   12    1  |1 0>               0.000       0.000       0.000       0.000      -0.000       3.300      -0.000       0.000
                                0.000       0.000       0.000       0.000       0.000      -0.000      -0.000       0.000

   13    1  |1 0>           24514.913       0.000       0.000       0.000      -0.000      -6.737       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000      -0.000      -0.000

   14    1  |1 0>               0.000   24514.875       0.000       0.000       6.739       0.000      -0.000      -0.000
                               -0.000       0.000       0.000       0.000      -0.000       0.000      -0.000      -0.000

   15    1  |1 0>               0.000       0.000   24514.875       0.000       0.000      -0.000      -0.000       6.729
                               -0.000      -0.000       0.000       0.000       0.000      -0.000       0.000      -0.000

   16    1  |1 0>               0.000       0.000       0.000   26285.154      -0.000       0.000      -0.002       0.000
                               -0.000      -0.000      -0.000       0.000      -0.000      -0.000      -0.000      -0.000

    1    1  |1 1>-             -0.000       6.739       0.000      -0.000    9768.692       0.000       0.000       0.000
                               -0.000       0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>-             -6.737       0.000      -0.000       0.000       0.000    9768.713       0.000       0.000
                               -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>-              0.000      -0.000      -0.000      -0.002       0.000       0.000    9768.713       0.000
                                0.000       0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>-             -0.000      -0.000       6.729       0.000       0.000       0.000       0.000    9768.787
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>-              0.000      -0.000       3.924      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>-              0.000       0.034       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>-              0.000      -0.000       0.000       0.001       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>-              0.005       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000      -0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>-             -0.000      -0.000       0.013      -0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000       0.000       0.000       0.000       0.000       0.000

   10    1  |1 1>-             -0.047      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000       0.000       0.000       0.000       0.000       0.000

   11    1  |1 1>-              0.000      -0.000      -0.000      -0.004       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

   12    1  |1 1>-             -0.000       0.043       0.000      -0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000

   13    1  |1 1>-              0.000     191.907      -0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   14    1  |1 1>-           -191.907       0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

   15    1  |1 1>-              0.000      -0.000       0.000     -17.718       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

   16    1  |1 1>-              0.000       0.000      17.718       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000

  State Sym Spin    / Nr.       49          50          51          52          53          54          55          56

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.007      -0.000      -0.026      -0.000      -0.000

    2    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       3.067      -0.000     -36.322      -0.000      -0.000

    3    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000      37.636       0.000      14.076       0.000      -0.000

    4    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -171.602      -0.000      -0.000       0.000     -32.340      -0.000      -0.000       0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000     -40.784       0.000       0.000       0.000      -3.082      -0.000

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      32.344      -0.000      -0.000      -0.000       0.000      -0.000      25.051

    7    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -29.713      -0.000      -0.000       0.000     117.221      -0.000      -0.000      -0.000

    8    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000    -117.220       0.000      -0.000      -0.000      -0.000       0.000     -90.846

    9    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000    -147.869      -0.000      -0.000       0.000     -11.130       0.000

   10    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000     134.138      -0.000      65.712      -0.000      -0.000

   11    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000     -26.751      -0.000     124.746       0.000       0.000

   12    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000       0.011       0.000       0.035      -0.000       0.000

    1    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.003      -0.000       0.000       0.000      -4.240       0.000       0.000       0.000

    2    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.990       0.000      -0.000       0.000       5.338       0.000

    3    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000       0.990       0.000      -5.338       0.000       0.000

    4    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       4.239       0.000       0.000       0.000      -0.000      -0.000      -0.000

    5    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000       0.000      -0.000       0.000      -0.000      -5.790

    6    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000       0.000     179.571       0.000       0.000      -0.000

    7    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000    -258.122       0.000     -62.347      -0.000       0.000

    8    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000     258.122      -0.000       0.000      -0.000     -62.347      -0.000

    9    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000    -179.571      -0.000      -0.000       0.000      -0.000       0.000      -0.000

   10    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      62.347       0.000       0.000      -0.000      78.628       0.000

   11    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000      62.347      -0.000     -78.628      -0.000      -0.000

   12    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                5.790       0.000      -0.000       0.000       0.000      -0.000       0.000      -0.000

   13    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                7.704       0.000      -0.000      -0.000      -0.000      -0.000       0.000      -0.000

   14    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.029      -0.000       0.000      -0.000      -0.002       0.000

   15    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.029      -0.000       0.002       0.000       0.000

   16    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000       0.000       0.000      -0.000       0.000       0.005

    1    1  |1 0>              -0.000      -0.000       0.000       5.417       0.000      -0.436       0.000       0.000
                               -0.000       0.000      -0.000       0.000      -0.000      -0.000       0.000       0.000

    2    1  |1 0>               0.000       4.325       0.000      -0.000       0.000       0.000      -0.000      -3.300
                                0.000       0.000      -0.000      -0.000       0.000       0.000       0.000      -0.000

    3    1  |1 0>            -169.844      -0.000      -0.000       0.000       4.317      -0.000       0.000       0.000
                                0.000       0.000      -0.000       0.000       0.000      -0.000       0.000      -0.000

    4    1  |1 0>               0.000       0.000       4.913       0.000       0.000      -0.000      -2.296      -0.000
                                0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000       0.000

    5    1  |1 0>               0.000      -0.000      -0.808      -0.000       0.000       0.000      -4.613       0.000
                               -0.000       0.000       0.000      -0.000       0.000       0.000      -0.000      -0.000

    6    1  |1 0>               0.000       0.000       0.000      83.174      -0.000     159.095      -0.000       0.000
                                0.000       0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

    7    1  |1 0>               0.808      -0.000       0.000      -0.000    -133.240       0.000      -0.000      -0.000
                                0.000      -0.000      -0.000       0.000       0.000      -0.000       0.000      -0.000

    8    1  |1 0>               0.000     -83.174       0.000       0.000       0.000       0.000       0.000      38.804
                               -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 0>              -0.000       0.000     133.240      -0.000       0.000       0.000     120.298      -0.000
                                0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000      -0.000

   10    1  |1 0>              -0.000    -159.095      -0.000      -0.000      -0.000       0.000       0.000    -216.437
                                0.000       0.000      -0.000       0.000      -0.000       0.000       0.000       0.000

   11    1  |1 0>               4.613       0.000       0.000      -0.000    -120.298      -0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000      -0.000       0.000      -0.000      -0.000

   12    1  |1 0>              -0.000      -0.000       0.000     -38.804       0.000     216.437      -0.000       0.000
                               -0.000       0.000      -0.000       0.000      -0.000       0.000      -0.000      -0.000

   13    1  |1 0>               0.000       0.000       0.000       0.005      -0.000      -0.047       0.000      -0.000
                               -0.000      -0.000       0.000      -0.000       0.000      -0.000       0.000       0.000

   14    1  |1 0>              -0.000       0.034      -0.000       0.000      -0.000      -0.000      -0.000       0.043
                               -0.000      -0.000      -0.000       0.000      -0.000      -0.000      -0.000       0.000

   15    1  |1 0>               3.924       0.000       0.000       0.000       0.013      -0.000      -0.000       0.000
                                0.000       0.000       0.000      -0.000       0.000       0.000       0.000      -0.000

   16    1  |1 0>              -0.000       0.000       0.001       0.000      -0.000      -0.000      -0.004      -0.000
                               -0.000       0.000       0.000       0.000       0.000      -0.000       0.000      -0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>-           9768.788       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>-              0.000   22117.475       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>-              0.000       0.000   22117.562       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>-              0.000       0.000       0.000   22117.562       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>-              0.000       0.000       0.000       0.000   22117.714       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   10    1  |1 1>-              0.000       0.000       0.000       0.000       0.000   22117.885       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   11    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000   22117.885       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   12    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000   22117.904
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
                               -0.000     -93.726       0.000       0.000

    2    1  |0 0>               0.000       0.000       0.000       0.000
                                0.000     -25.126       0.000      -0.000

    3    1  |0 0>               0.000       0.000       0.000       0.000
                                0.000      36.062      -0.000      -0.000

    4    1  |0 0>               0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.001

    5    1  |0 0>               0.000       0.000       0.000       0.000
                               -0.000       0.000     -38.135      -0.000

    6    1  |0 0>               0.000       0.000       0.000       0.000
                              -38.141       0.000       0.000      -0.000

    7    1  |0 0>               0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000      -0.001

    8    1  |0 0>               0.000       0.000       0.000       0.000
                             -244.164       0.000       0.000      -0.000

    9    1  |0 0>               0.000       0.000       0.000       0.000
                                0.000      -0.000     244.168      -0.000

   10    1  |0 0>               0.000       0.000       0.000       0.000
                               -0.000    -248.338      -0.000      -0.000

   11    1  |0 0>               0.000       0.000       0.000       0.000
                               -0.000    -133.627       0.000       0.000

   12    1  |0 0>               0.000       0.000       0.000       0.000
                                0.000     216.520       0.000      -0.000

    1    1  |1 1>+              0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000      -0.000

    2    1  |1 1>+              0.000       0.000       0.000       0.000
                                0.000      -0.000      -6.726       0.000

    3    1  |1 1>+              0.000       0.000       0.000       0.000
                               -0.000       6.726      -0.000       0.000

    4    1  |1 1>+              0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000       0.000

    5    1  |1 1>+              0.000       0.000       0.000       0.000
                               -7.704       0.000      -0.000      -0.000

    6    1  |1 1>+              0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000       0.000

    7    1  |1 1>+              0.000       0.000       0.000       0.000
                                0.000       0.029      -0.000       0.000

    8    1  |1 1>+              0.000       0.000       0.000       0.000
                                0.000       0.000       0.029      -0.000

    9    1  |1 1>+              0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000      -0.000

   10    1  |1 1>+              0.000       0.000       0.000       0.000
                                0.000       0.000      -0.002       0.000

   11    1  |1 1>+              0.000       0.000       0.000       0.000
                               -0.000       0.002      -0.000      -0.000

   12    1  |1 1>+              0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000      -0.005

   13    1  |1 1>+              0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000     -17.726

   14    1  |1 1>+              0.000       0.000       0.000       0.000
                                0.000       0.000     191.901      -0.000

   15    1  |1 1>+              0.000       0.000       0.000       0.000
                               -0.000    -191.901      -0.000       0.000

   16    1  |1 1>+              0.000       0.000       0.000       0.000
                               17.726       0.000      -0.000      -0.000

    1    1  |1 0>               0.000      -6.739      -0.000       0.000
                                0.000      -0.000       0.000      -0.000

    2    1  |1 0>               6.737      -0.000       0.000      -0.000
                                0.000       0.000      -0.000      -0.000

    3    1  |1 0>              -0.000       0.000       0.000       0.002
                               -0.000      -0.000       0.000      -0.000

    4    1  |1 0>               0.000       0.000      -6.729      -0.000
                               -0.000      -0.000      -0.000      -0.000

    5    1  |1 0>              -0.000       0.000      -3.924       0.000
                               -0.000      -0.000       0.000      -0.000

    6    1  |1 0>              -0.000      -0.034      -0.000      -0.000
                               -0.000      -0.000       0.000       0.000

    7    1  |1 0>              -0.000       0.000      -0.000      -0.001
                                0.000      -0.000       0.000       0.000

    8    1  |1 0>              -0.005      -0.000      -0.000      -0.000
                               -0.000       0.000      -0.000       0.000

    9    1  |1 0>               0.000       0.000      -0.013       0.000
                                0.000      -0.000       0.000       0.000

   10    1  |1 0>               0.047       0.000       0.000       0.000
                               -0.000      -0.000       0.000      -0.000

   11    1  |1 0>              -0.000       0.000       0.000       0.004
                                0.000      -0.000       0.000       0.000

   12    1  |1 0>               0.000      -0.043      -0.000       0.000
                                0.000       0.000      -0.000      -0.000

   13    1  |1 0>               0.000    -191.907       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000

   14    1  |1 0>             191.907       0.000      -0.000       0.000
                               -0.000       0.000       0.000       0.000

   15    1  |1 0>              -0.000       0.000       0.000      17.718
                               -0.000       0.000       0.000       0.000

   16    1  |1 0>              -0.000      -0.000     -17.718       0.000
                               -0.000       0.000       0.000      -0.000

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

   13    1  |1 1>-          24514.913       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000

   14    1  |1 1>-              0.000   24514.875       0.000       0.000
                                0.000       0.000       0.000       0.000

   15    1  |1 1>-              0.000       0.000   24514.875       0.000
                                0.000       0.000       0.000       0.000

   16    1  |1 1>-              0.000       0.000       0.000   26285.154
                                0.000       0.000       0.000       0.000

 => Eigenvalues of spin-orbit matrix in ascending order  (E0 = Emin,ges)
    (symmetry =  1)

    Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
             (au)           (au)        (cm-1)           (au)       (cm-1)        (eV)
    1   -25.38436892    -0.00000498       -1.09      0.00000000        0.00      0.0000
    2   -25.34119474     0.04316920     9474.54      0.04317418     9475.64      1.1748
    3   -25.34119474     0.04316920     9474.54      0.04317418     9475.64      1.1748
    4   -25.34119470     0.04316924     9474.55      0.04317421     9475.64      1.1748
    5   -25.34042007     0.04394387     9644.57      0.04394885     9645.66      1.1959
    6   -25.34041996     0.04394398     9644.59      0.04394896     9645.68      1.1959
    7   -25.34041978     0.04394416     9644.63      0.04394914     9645.72      1.1959
    8   -25.34041975     0.04394419     9644.64      0.04394917     9645.73      1.1959
    9   -25.34041975     0.04394419     9644.64      0.04394917     9645.73      1.1959
   10   -25.33896076     0.04540318     9964.85      0.04540815     9965.94      1.2356
   11   -25.33896076     0.04540318     9964.85      0.04540815     9965.94      1.2356
   12   -25.33896074     0.04540320     9964.85      0.04540818     9965.94      1.2356
   13   -25.33896068     0.04540326     9964.86      0.04540824     9965.96      1.2356
   14   -25.33896068     0.04540326     9964.86      0.04540824     9965.96      1.2356
   15   -25.33896068     0.04540326     9964.86      0.04540824     9965.96      1.2356
   16   -25.33896068     0.04540326     9964.86      0.04540824     9965.96      1.2356
   17   -25.32995391     0.05441003    11941.62      0.05441501    11942.71      1.4807
   18   -25.32995383     0.05441011    11941.64      0.05441509    11942.73      1.4807
   19   -25.32995371     0.05441023    11941.67      0.05441521    11942.76      1.4807
   20   -25.32995371     0.05441023    11941.67      0.05441521    11942.76      1.4807
   21   -25.32995370     0.05441024    11941.67      0.05441522    11942.76      1.4807
   22   -25.28534024     0.09902370    21733.19      0.09902868    21734.28      2.6947
   23   -25.28533999     0.09902395    21733.24      0.09902893    21734.34      2.6947
   24   -25.28533950     0.09902444    21733.35      0.09902942    21734.45      2.6947
   25   -25.28533950     0.09902444    21733.35      0.09902942    21734.45      2.6947
   26   -25.28533940     0.09902454    21733.37      0.09902951    21734.47      2.6947
   27   -25.28399783     0.10036611    22027.82      0.10037109    22028.91      2.7312
   28   -25.28399783     0.10036611    22027.82      0.10037109    22028.91      2.7312
   29   -25.28399752     0.10036642    22027.88      0.10037139    22028.97      2.7312
   30   -25.28399694     0.10036700    22028.01      0.10037198    22029.10      2.7313
   31   -25.28399694     0.10036700    22028.01      0.10037198    22029.10      2.7313
   32   -25.28399676     0.10036718    22028.05      0.10037215    22029.14      2.7313
   33   -25.28399662     0.10036732    22028.08      0.10037230    22029.17      2.7313
   34   -25.28236188     0.10200206    22386.87      0.10200704    22387.96      2.7758
   35   -25.28236187     0.10200207    22386.87      0.10200705    22387.96      2.7758
   36   -25.28236169     0.10200225    22386.91      0.10200723    22388.00      2.7758
   37   -25.28236169     0.10200225    22386.91      0.10200723    22388.00      2.7758
   38   -25.28236118     0.10200276    22387.02      0.10200774    22388.11      2.7758
   39   -25.28236095     0.10200299    22387.07      0.10200797    22388.16      2.7758
   40   -25.28236059     0.10200335    22387.15      0.10200833    22388.24      2.7758
   41   -25.28236059     0.10200335    22387.15      0.10200833    22388.24      2.7758
   42   -25.28236042     0.10200352    22387.19      0.10200850    22388.28      2.7758
   43   -25.27549491     0.10886903    23893.99      0.10887401    23895.08      2.9626
   44   -25.27549491     0.10886903    23893.99      0.10887401    23895.08      2.9626
   45   -25.27549486     0.10886908    23894.00      0.10887405    23895.09      2.9626
   46   -25.27549483     0.10886911    23894.01      0.10887409    23895.10      2.9626
   47   -25.27549483     0.10886911    23894.01      0.10887409    23895.10      2.9626
   48   -25.27469310     0.10967084    24069.97      0.10967582    24071.06      2.9844
   49   -25.27354175     0.11082219    24322.66      0.11082717    24323.75      3.0158
   50   -25.27354169     0.11082225    24322.67      0.11082722    24323.76      3.0158
   51   -25.27354169     0.11082225    24322.67      0.11082722    24323.76      3.0158
   52   -25.27112829     0.11323565    24852.35      0.11324062    24853.44      3.0814
   53   -25.27112821     0.11323573    24852.37      0.11324070    24853.46      3.0814
   54   -25.27112821     0.11323573    24852.37      0.11324071    24853.46      3.0814
   55   -25.27112814     0.11323580    24852.39      0.11324078    24853.48      3.0814
   56   -25.27112752     0.11323642    24852.52      0.11324140    24853.61      3.0815
   57   -25.26459851     0.11976543    26285.47      0.11977041    26286.57      3.2591
   58   -25.26459851     0.11976543    26285.47      0.11977041    26286.57      3.2591
   59   -25.26459851     0.11976543    26285.47      0.11977041    26286.57      3.2591
   60   -25.26410754     0.12025640    26393.23      0.12026137    26394.32      3.2725

 => Eigenvectors of spin-orbit matrix columnwise and corresponding to the
    eigenvalues in ascending order (symmetry =  1)

  Basis states          Eigenvectors (columnwise)

 State Sym Spin     / Nr.      1           2           3           4           5           6           7           8

   1    1  |0 0>           0.99997736 -0.00000000  0.00000000 -0.00000000  0.00000001 -0.00000040  0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   2    1  |0 0>          -0.00000001  0.00000000 -0.00000000  0.00000000 -0.00885971 -0.10583482  0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   3    1  |0 0>          -0.00000000  0.00000000  0.00000000  0.00000000  0.10584988 -0.00885831 -0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   4    1  |0 0>           0.00000000  0.00000000 -0.00000042 -0.00000000  0.00000000  0.00000000  0.00000000 -0.10625215
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000001

   5    1  |0 0>           0.00000000 -0.00000000 -0.00000000 -0.00000002 -0.00000000 -0.00000000 -0.10625635 -0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000176  0.00000000

   6    1  |0 0>          -0.00000000  0.00000040  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000023
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   7    1  |0 0>           0.00000000  0.00000000 -0.00000221  0.00000000  0.00000000  0.00000000  0.00000000 -0.00294210
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   8    1  |0 0>           0.00000000  0.00000221  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000001
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   9    1  |0 0>           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00293736  0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000005 -0.00000000

  10    1  |0 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00293118 -0.00009375  0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  11    1  |0 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00009359 -0.00293714  0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  12    1  |0 0>          -0.00009583  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000035 -0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   1    1  |1 1>+         -0.00000000 -0.00000033  0.54777953 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.40599290
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000003

   2    1  |1 1>+          0.00000000 -0.00000000 -0.00000000 -0.54776296 -0.00000000 -0.00000000 -0.40599120 -0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000288 -0.00000000 -0.00000000 -0.00000674  0.00000000

   3    1  |1 1>+          0.00000028 -0.00000000 -0.00000000 -0.00000000  0.40466256  0.70383104 -0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   4    1  |1 1>+          0.00000000 -0.54766331 -0.00000033  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000086
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   5    1  |1 1>+         -0.00000000 -0.31617270 -0.00000019  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000149
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   6    1  |1 1>+          0.00000000 -0.00000000  0.00000380 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00003178
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   7    1  |1 1>+         -0.00000033 -0.00000000 -0.00000000 -0.00000000  0.00003598  0.00000805 -0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   8    1  |1 1>+         -0.00000000 -0.00000000  0.00000000  0.00000245 -0.00000000  0.00000000 -0.00004060 -0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   9    1  |1 1>+          0.00000000 -0.00000335 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  10    1  |1 1>+          0.00000000 -0.00000000  0.00000000 -0.00000057  0.00000000  0.00000000  0.00000084 -0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  11    1  |1 1>+          0.00000116 -0.00000000  0.00000000  0.00000000 -0.00001468  0.00003374 -0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  12    1  |1 1>+          0.00000000  0.00000000 -0.00000175  0.00000000  0.00000000  0.00000000 -0.00000000  0.00002772
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  13    1  |1 1>+          0.00000000  0.00000000 -0.00041254  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00085788
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  14    1  |1 1>+         -0.00000000  0.00000000  0.00000000  0.00041524 -0.00000000 -0.00000000 -0.00086059 -0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000001  0.00000000

  15    1  |1 1>+          0.00388463  0.00000000 -0.00000000 -0.00000000  0.00086146 -0.00049480 -0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  16    1  |1 1>+         -0.00000000  0.00000093  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   1    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.81188377  0.00145687 -0.00000000  0.00000000

   2    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.54775644 -0.00000033  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000086

   3    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000003
                           0.00000000  0.00000033 -0.54775623  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.40599650

   4    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00001348  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000920  0.00000000  0.00000000  0.81181378  0.00000000

   5    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000333 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000  0.63238557  0.00000000  0.00000000 -0.00001187  0.00000000

   6    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00003467  0.00000006 -0.00000000  0.00000000

   7    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000165  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000682

   8    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000165  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   9    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00003438  0.00000000

  10    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000290 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  11    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000290  0.00000000  0.00000000  0.00000000  0.00000000 -0.00004155

  12    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000139  0.00000000 -0.00000000 -0.00000000 -0.00000007  0.00003965  0.00000000  0.00000000

  13    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00388467  0.00000000  0.00000000  0.00000000  0.00000178 -0.00099366  0.00000000 -0.00000000

  14    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00041327 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  15    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00041327  0.00000000  0.00000000  0.00000000  0.00000000 -0.00086291

  16    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000076 -0.00000000 -0.00000000 -0.00000000  0.00000000

   1    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.54777940  0.00000033 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000086

   2    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000029  0.00000000 -0.00000000  0.00000000  0.40718568 -0.70237465 -0.00000000 -0.00000000

   3    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000288 -0.00000000 -0.00000000 -0.00000674  0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.54776261  0.00000000  0.00000000  0.40599139  0.00000000

   4    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000003
                          -0.00000000 -0.00000033  0.54765437 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.40589504

   5    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000005
                           0.00000000  0.00000019 -0.31618831  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.70305488

   6    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000380  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   7    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000245 -0.00000000 -0.00000000 -0.00004060 -0.00000000

   8    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000033 -0.00000000  0.00000000 -0.00000000 -0.00003601  0.00000792 -0.00000000 -0.00000000

   9    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000335  0.00000000  0.00000000  0.00000000  0.00000000 -0.00003162

  10    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000116  0.00000000 -0.00000000 -0.00000000 -0.00001456 -0.00003379  0.00000000  0.00000000

  11    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000057 -0.00000000  0.00000000 -0.00000084 -0.00000000

  12    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000175  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  13    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00041254  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  14    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00388463 -0.00000000  0.00000000 -0.00000000  0.00085968  0.00049789 -0.00000000  0.00000000

  15    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000001  0.00000000
                           0.00000000  0.00000000  0.00000000  0.00041524  0.00000000  0.00000000  0.00086059  0.00000000

  16    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000093 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000004

 State Sym Spin     / Nr.      9          10          11          12          13          14          15          16

   1    1  |0 0>           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   2    1  |0 0>          -0.00000000  0.00000000 -0.00000000 -0.00000116  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   3    1  |0 0>           0.00000000 -0.00000000  0.00000000  0.00001340 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   4    1  |0 0>           0.00000023  0.00000000  0.00000443 -0.00000000  0.00000000  0.00000000  0.00000075  0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   5    1  |0 0>           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000045 -0.00000000 -0.00000000  0.00000356
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   6    1  |0 0>           0.10625201 -0.00000443  0.00000000 -0.00000000  0.00000000 -0.00000075  0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   7    1  |0 0>           0.00000001 -0.00000000 -0.00000061  0.00000000 -0.00000000 -0.00000000 -0.00000311 -0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   8    1  |0 0>           0.00294210  0.00000062 -0.00000000  0.00000000 -0.00000000  0.00000311 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   9    1  |0 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000060 -0.00000000 -0.00000000  0.00000500
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  10    1  |0 0>          -0.00000000 -0.00000000  0.00000000 -0.00000021  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  11    1  |0 0>          -0.00000000 -0.00000000  0.00000000  0.00000001 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  12    1  |0 0>           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   1    1  |1 1>+         -0.00000086  0.00000113  0.72913849 -0.00000000 -0.00000000 -0.00000001 -0.03975522 -0.00000000
                          -0.00000000  0.00000003 -0.00000002 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   2    1  |1 1>+          0.00000000  0.00000000 -0.00000000  0.00000000  0.51305258  0.00000007 -0.00000003 -0.51963429
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000538 -0.00000000 -0.00000000  0.00000015

   3    1  |1 1>+          0.00000000 -0.00000000  0.00000000  0.57735813 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   4    1  |1 1>+         -0.40587506  0.61829257 -0.00000096  0.00000000  0.00000003 -0.38879470  0.00000004 -0.00000002
                          -0.00000000 -0.00000005  0.00000003  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   5    1  |1 1>+          0.70306633 -0.19219254  0.00000030 -0.00000000  0.00000005 -0.60261507  0.00000006 -0.00000004
                           0.00000000  0.00000001 -0.00000001 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   6    1  |1 1>+          0.00000000  0.00000000  0.00013831 -0.00000000 -0.00000000 -0.00000000 -0.00038593 -0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   7    1  |1 1>+          0.00000000  0.00000000 -0.00000000 -0.00030668  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   8    1  |1 1>+          0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00011042 -0.00000000  0.00000000  0.00017569
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   9    1  |1 1>+          0.00003162  0.00033572 -0.00000000  0.00000000 -0.00000000  0.00023470 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  10    1  |1 1>+          0.00000000  0.00000000 -0.00000000  0.00000000  0.00044681  0.00000000 -0.00000000  0.00042186
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  11    1  |1 1>+          0.00000000  0.00000000 -0.00000000 -0.00027637  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  12    1  |1 1>+         -0.00000000 -0.00000000 -0.00015221 -0.00000000 -0.00000000 -0.00000000 -0.00047977 -0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  13    1  |1 1>+         -0.00000000  0.00000000  0.00000095 -0.00000000  0.00000000  0.00000000  0.00000310  0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  14    1  |1 1>+          0.00000000 -0.00000000  0.00000000  0.00000000  0.00000218  0.00000000 -0.00000000  0.00000033
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  15    1  |1 1>+          0.00000000 -0.00000000 -0.00000000 -0.00000047 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  16    1  |1 1>+         -0.00000004 -0.00000003  0.00000000 -0.00000000  0.00000000 -0.00000008  0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   1    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.57733444  0.00000000  0.00000000  0.00000000 -0.00000000

   2    1  |1 0>          -0.00000000  0.00000002 -0.00000001 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.40599650  0.22185757 -0.00000034  0.00000000 -0.00000005  0.69571896 -0.00000007  0.00000004

   3    1  |1 0>           0.00000000 -0.00000001  0.00000001  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000001
                          -0.00000086  0.00000034  0.22081675  0.00000000  0.00000005  0.00000007  0.69605018  0.00000002

   4    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000072  0.00000000  0.00000001 -0.00000016
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.06912897  0.00000004  0.00000001 -0.57327691

   5    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000807 -0.00000000 -0.00000000  0.00000003
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.76908292  0.00000005 -0.00000006  0.09273351

   6    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00041399 -0.00000000 -0.00000000 -0.00000000  0.00000000

   7    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00056661  0.00000000  0.00000000  0.00000000  0.00021619  0.00000000

   8    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000682  0.00056629 -0.00000000  0.00000000  0.00000000 -0.00021704  0.00000000 -0.00000000

   9    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00004948 -0.00000000 -0.00000000  0.00041038

  10    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00004155  0.00016474 -0.00000000  0.00000000 -0.00000000  0.00015789 -0.00000000  0.00000000

  11    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00016450 -0.00000000  0.00000000  0.00000000  0.00015813  0.00000000

  12    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  13    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  14    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00086291  0.00000006 -0.00000000 -0.00000000 -0.00000000  0.00000163 -0.00000000  0.00000000

  15    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000006  0.00000000  0.00000000  0.00000000  0.00000163  0.00000000

  16    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000010  0.00000000 -0.00000000  0.00000001

   1    1  |1 1>-         -0.00000000  0.00000006 -0.00000003 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.40599308  0.72907821 -0.00000113  0.00000000  0.00000000 -0.04084578  0.00000000 -0.00000000

   2    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.57735779 -0.00000000 -0.00000000 -0.00000000  0.00000000

   3    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000394 -0.00000000 -0.00000001  0.00000018
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.37484556 -0.00000001 -0.00000005  0.62668475

   4    1  |1 1>-          0.00000000  0.00000003 -0.00000002 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000086 -0.00000096 -0.61887890  0.00000000  0.00000003  0.00000004  0.38785216  0.00000001

   5    1  |1 1>-          0.00000000  0.00000001 -0.00000001 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000001
                          -0.00000149 -0.00000030 -0.19127317 -0.00000000 -0.00000005 -0.00000006 -0.60291281 -0.00000002

   6    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00003178  0.00013774 -0.00000000  0.00000000  0.00000000 -0.00038614  0.00000000 -0.00000000

   7    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00006550 -0.00000000 -0.00000000  0.00019690

   8    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00030668 -0.00000000 -0.00000000 -0.00000000  0.00000000

   9    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00033537  0.00000000 -0.00000000 -0.00000000 -0.00023520 -0.00000000

  10    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00027637  0.00000000  0.00000000  0.00000000 -0.00000000

  11    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000001  0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00053427  0.00000000 -0.00000000 -0.00030357

  12    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00002772  0.00015293 -0.00000000  0.00000000 -0.00000000  0.00047954 -0.00000000  0.00000000

  13    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00085788 -0.00000096  0.00000000 -0.00000000  0.00000000 -0.00000310  0.00000000 -0.00000000

  14    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000047 -0.00000000 -0.00000000 -0.00000000  0.00000000

  15    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000220  0.00000000 -0.00000000  0.00000020

  16    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000003  0.00000000 -0.00000000 -0.00000000 -0.00000008 -0.00000000

 State Sym Spin     / Nr.     17          18          19          20          21          22          23          24

   1    1  |0 0>          -0.00000004 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   2    1  |0 0>           0.99321455 -0.04671046  0.00000000  0.00000000  0.00000000 -0.00056963  0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   3    1  |0 0>           0.04671066  0.99321303 -0.00000000  0.00000000  0.00000000  0.00665544 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   4    1  |0 0>          -0.00000000  0.00000000  0.99430740 -0.00000005 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   5    1  |0 0>          -0.00000000 -0.00000000  0.00000005  0.99430698 -0.00000000  0.00000000  0.00666814  0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000208 -0.00000000 -0.00000000  0.00000098  0.00000000

   6    1  |0 0>          -0.00000000 -0.00000000  0.00000000  0.00000000  0.99430742 -0.00000000  0.00000000 -0.00667113
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   7    1  |0 0>           0.00000000 -0.00000000 -0.00038860  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000003
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   8    1  |0 0>           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00038860 -0.00000000  0.00000000 -0.10664028
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   9    1  |0 0>          -0.00000000 -0.00000000  0.00000000  0.00038795 -0.00000000 -0.00000000 -0.10662065 -0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00001572 -0.00000000

  10    1  |0 0>          -0.00002655  0.00038682 -0.00000000  0.00000000  0.00000000 -0.10664090  0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  11    1  |0 0>          -0.00038808 -0.00002656 -0.00000000 -0.00000000 -0.00000000  0.00320411  0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  12    1  |0 0>          -0.00000005 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000001  0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   1    1  |1 1>+         -0.00000000  0.00000000  0.04338067 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   2    1  |1 1>+          0.00000000  0.00000000 -0.00000000 -0.04338310  0.00000000  0.00000000 -0.00045594 -0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000009  0.00000000  0.00000000 -0.00000007 -0.00000000

   3    1  |1 1>+          0.07670441 -0.04046321  0.00000000  0.00000000  0.00000000 -0.00045260  0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   4    1  |1 1>+         -0.00000000 -0.00000000  0.00000000  0.00000000  0.04337368 -0.00000000  0.00000000 -0.00045323
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   5    1  |1 1>+          0.00000000  0.00000000 -0.00000000 -0.00000000 -0.07512945  0.00000000 -0.00000000  0.00078444
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   6    1  |1 1>+          0.00000000 -0.00000000 -0.00331852  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000012
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000001

   7    1  |1 1>+          0.00078859 -0.00379301  0.00000000 -0.00000000 -0.00000000  0.55783907 -0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   8    1  |1 1>+          0.00000000  0.00000000 -0.00000000 -0.00418442  0.00000000  0.00000000  0.61197242  0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000001  0.00000000 -0.00000000  0.00009024  0.00000000

   9    1  |1 1>+          0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00331800 -0.00000000  0.00000000 -0.48525380
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  10    1  |1 1>+         -0.00000000 -0.00000000  0.00000000  0.00031581 -0.00000000 -0.00000000 -0.04608098 -0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000679 -0.00000000

  11    1  |1 1>+          0.00351990  0.00189201  0.00000000  0.00000000  0.00000000 -0.25561237 -0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  12    1  |1 1>+         -0.00000000  0.00000000  0.00257053 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000010
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000001

  13    1  |1 1>+          0.00000000 -0.00000000 -0.00289522  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  14    1  |1 1>+         -0.00000000 -0.00000000  0.00000000  0.00289445 -0.00000000  0.00000000  0.00883370  0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000001 -0.00000000 -0.00000000  0.00000130  0.00000000

  15    1  |1 1>+          0.00155497  0.00295110  0.00000000  0.00000000  0.00000000  0.00885441  0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  16    1  |1 1>+         -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000004 -0.00000000 -0.00000000 -0.00000014
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   1    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00332109 -0.08665858  0.00000000 -0.00000000 -0.00000000 -0.00090494  0.00000000  0.00000000

   2    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.04338222  0.00000000 -0.00000000  0.00045678

   3    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.04338228 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   4    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000018  0.00000000  0.00000000 -0.00000013 -0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.08675449 -0.00000000  0.00000000  0.00090310  0.00000000

   5    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000124  0.00000000  0.00000000 -0.00000001  0.00000000

   6    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00012703 -0.00331471  0.00000000 -0.00000000 -0.00000000  0.48512312 -0.00000000 -0.00000000

   7    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00074109  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000003

   8    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00074109 -0.00000000  0.00000000 -0.10824339

   9    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000001  0.00000000 -0.00000000  0.00007151  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00331437 -0.00000000 -0.00000000 -0.48493592 -0.00000000

  10    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00413113  0.00000000 -0.00000000  0.60379265

  11    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000001
                           0.00000000 -0.00000000 -0.00413113  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000015

  12    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00446402  0.00017107  0.00000000  0.00000000  0.00000000  0.00005235 -0.00000000 -0.00000000

  13    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00333063  0.00012765  0.00000000  0.00000000  0.00000000 -0.00000083  0.00000000  0.00000000

  14    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00289448  0.00000000 -0.00000000  0.00882582

  15    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00289448 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  16    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   1    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.04338062  0.00000000 -0.00000000  0.00045283

   2    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.07338259 -0.04621499 -0.00000000 -0.00000000 -0.00000000 -0.00045247 -0.00000000 -0.00000000

   3    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000009  0.00000000  0.00000000 -0.00000007 -0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.04338312 -0.00000000  0.00000000  0.00045594  0.00000000

   4    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.04337589 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   5    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.07512831 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   6    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00331852  0.00000000 -0.00000000  0.48545847

   7    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000001 -0.00000000  0.00000000 -0.00009024 -0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00418442  0.00000000  0.00000000  0.61197243  0.00000000

   8    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00049598  0.00384224 -0.00000000  0.00000000  0.00000000 -0.55782397 -0.00000000 -0.00000000

   9    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000001
                           0.00000000 -0.00000000 -0.00331800  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000012

  10    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00365438  0.00161707 -0.00000000 -0.00000000 -0.00000000 -0.25569641  0.00000000  0.00000000

  11    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000679 -0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00031581  0.00000000  0.00000000  0.04608082  0.00000000

  12    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00257053  0.00000000 -0.00000000  0.37550350

  13    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00289522  0.00000000 -0.00000000  0.00882969

  14    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00177626  0.00282344 -0.00000000  0.00000000  0.00000000  0.00885523 -0.00000000 -0.00000000

  15    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000001 -0.00000000 -0.00000000  0.00000130  0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00289445  0.00000000 -0.00000000 -0.00883371 -0.00000000

  16    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000004 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 State Sym Spin     / Nr.     25          26          27          28          29          30          31          32

   1    1  |0 0>           0.00000000 -0.00000023  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   2    1  |0 0>           0.00000000 -0.00666963  0.00000000 -0.00000000 -0.00000005  0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   3    1  |0 0>           0.00000000 -0.00057084 -0.00000000  0.00000000  0.00000064 -0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   4    1  |0 0>           0.00667114  0.00000000  0.00000172  0.00000000 -0.00000000 -0.00000245 -0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   5    1  |0 0>           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000001
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   6    1  |0 0>          -0.00000000 -0.00000000 -0.00000000  0.00000172  0.00000000  0.00000000 -0.00000245 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   7    1  |0 0>           0.10664027  0.00000000  0.00002755  0.00000000 -0.00000000 -0.00007616 -0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   8    1  |0 0>          -0.00000003 -0.00000000 -0.00000000  0.00002756 -0.00000000  0.00000000 -0.00007618 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   9    1  |0 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000967
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  10    1  |0 0>          -0.00000000 -0.00320913 -0.00000000  0.00000000 -0.00001249 -0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  11    1  |0 0>           0.00000000 -0.10680557 -0.00000000  0.00000000  0.00000036 -0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  12    1  |0 0>          -0.00000000 -0.00000242  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   1    1  |1 1>+          0.00045283  0.00000000  0.00042809  0.00000000  0.00000000  0.00029052  0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   2    1  |1 1>+         -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00041098
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   3    1  |1 1>+          0.00000000 -0.00078423  0.00000000  0.00000000 -0.00041348  0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   4    1  |1 1>+         -0.00000000 -0.00000000  0.00000000 -0.00051377 -0.00000000  0.00000000 -0.00005134  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   5    1  |1 1>+          0.00000000  0.00000000  0.00000000 -0.00015287 -0.00000000 -0.00000000  0.00042526 -0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   6    1  |1 1>+          0.48545854  0.00000000 -0.48794179 -0.00000031 -0.00000000  0.30844336  0.00000009 -0.00000000
                          -0.00000002  0.00000000 -0.00000001  0.00000001  0.00000000  0.00000001 -0.00000001 -0.00000000

   7    1  |1 1>+          0.00000000  0.09375700  0.00000000  0.00000000 -0.42844883  0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   8    1  |1 1>+          0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.26733232
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000149

   9    1  |1 1>+         -0.00000012 -0.00000000 -0.00000011  0.17678189 -0.00000000 -0.00000016  0.54936911 -0.00000000
                          -0.00000001 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000001  0.00000001 -0.00000000

  10    1  |1 1>+         -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.51191010
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000285

  11    1  |1 1>+         -0.00000000  0.52310549  0.00000000  0.00000000 -0.38668093  0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  12    1  |1 1>+         -0.37550348 -0.00000000 -0.24109198 -0.00000015 -0.00000000  0.66476170  0.00000019 -0.00000000
                           0.00000002 -0.00000000 -0.00000001  0.00000001  0.00000000  0.00000001 -0.00000001 -0.00000000

  13    1  |1 1>+         -0.00882970 -0.00000000 -0.00000155 -0.00000000 -0.00000000  0.00000176  0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  14    1  |1 1>+          0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000624
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  15    1  |1 1>+          0.00000000 -0.00512774 -0.00000000 -0.00000000  0.00000351 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  16    1  |1 1>+          0.00000000  0.00000000  0.00000000 -0.00000057 -0.00000000 -0.00000000  0.00000031 -0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   1    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000007 -0.00000000 -0.00000000  0.00041271 -0.00000000  0.00000000 -0.00000000

   2    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00017753  0.00000000  0.00000000 -0.00048896  0.00000000

   3    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00045678  0.00000000 -0.00017758 -0.00000000 -0.00000000  0.00048894  0.00000000 -0.00000000

   4    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00041243

   5    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000034

   6    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00003904 -0.00000000 -0.00000000  0.57777019 -0.00000000  0.00000000 -0.00000000

   7    1  |1 0>           0.00000000 -0.00000000 -0.00000002  0.00000002  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.10824346  0.00000000  0.81877703  0.00000053  0.00000000  0.24284033  0.00000007  0.00000000

   8    1  |1 0>           0.00000000  0.00000000  0.00000002 -0.00000002  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000003 -0.00000000 -0.00000053  0.81879957  0.00000000 -0.00000007  0.24276420 -0.00000000

   9    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000321
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.57771072

  10    1  |1 0>          -0.00000001 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000001 -0.00000001  0.00000000
                           0.00000015  0.00000000 -0.00000003  0.04647749 -0.00000000 -0.00000009  0.31961737 -0.00000000

  11    1  |1 0>           0.00000003 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000001 -0.00000001 -0.00000000
                           0.60379265  0.00000000 -0.04644783 -0.00000003 -0.00000000 -0.31962173 -0.00000009  0.00000000

  12    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000  0.65080364 -0.00000000 -0.00000000  0.00000001 -0.00000000 -0.00000000 -0.00000000

  13    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.01024936  0.00000000  0.00000000 -0.00000001  0.00000000 -0.00000000 -0.00000000

  14    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000411 -0.00000000 -0.00000000  0.00000306 -0.00000000

  15    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00882582  0.00000000  0.00000410  0.00000000 -0.00000000 -0.00000306 -0.00000000 -0.00000000

  16    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   1    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00042812 -0.00000000  0.00000000 -0.00029048  0.00000000

   2    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00078430  0.00000000  0.00000000 -0.00041348  0.00000000 -0.00000000  0.00000000

   3    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00041136

   4    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00045325  0.00000000 -0.00051376 -0.00000000 -0.00000000 -0.00005140 -0.00000000 -0.00000000

   5    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00078443  0.00000000  0.00015292  0.00000000  0.00000000 -0.00042524 -0.00000000  0.00000000

   6    1  |1 1>-         -0.00000001 -0.00000000  0.00000001 -0.00000001  0.00000000 -0.00000001  0.00000001  0.00000000
                           0.00000012  0.00000000 -0.00000031  0.48791319  0.00000000  0.00000009 -0.30848882  0.00000000

   7    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000149
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.26748466

   8    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000  0.09384663 -0.00000000 -0.00000000  0.42844873 -0.00000000  0.00000000 -0.00000000

   9    1  |1 1>-          0.00000002 -0.00000000 -0.00000001  0.00000000  0.00000000 -0.00000001  0.00000001  0.00000000
                           0.48525372  0.00000000  0.17673070  0.00000011  0.00000000  0.54938564  0.00000016 -0.00000000

  10    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.52306434  0.00000000  0.00000000 -0.38668106  0.00000000 -0.00000000  0.00000000

  11    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000284
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.51106091

  12    1  |1 1>-         -0.00000001 -0.00000000 -0.00000001  0.00000000  0.00000000  0.00000001 -0.00000001  0.00000000
                           0.00000010  0.00000000  0.00000016 -0.24103007 -0.00000000 -0.00000019  0.66478417 -0.00000000

  13    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000154  0.00000000 -0.00000000  0.00000177 -0.00000000

  14    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00512631  0.00000000  0.00000000  0.00000351  0.00000000 -0.00000000 -0.00000000

  15    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000624

  16    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000014 -0.00000000  0.00000057  0.00000000 -0.00000000 -0.00000031 -0.00000000 -0.00000000

 State Sym Spin     / Nr.     33          34          35          36          37          38          39          40

   1    1  |0 0>          -0.00000000  0.00000074 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   2    1  |0 0>          -0.00000000  0.00000170 -0.00000000 -0.00000000 -0.00000000  0.00000077 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   3    1  |0 0>          -0.00000000  0.00000014 -0.00000000  0.00000000 -0.00000000 -0.00000901  0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   4    1  |0 0>           0.00000000 -0.00000000  0.00000000 -0.00000024  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   5    1  |0 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000208  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   6    1  |0 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000024 -0.00000000  0.00000000 -0.00000043
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   7    1  |0 0>           0.00000000 -0.00000000 -0.00000000 -0.00002779  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   8    1  |0 0>           0.00000000  0.00000000  0.00000000  0.00000000  0.00002792 -0.00000000  0.00000000 -0.00002027
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   9    1  |0 0>           0.00000000  0.00000000  0.00000002  0.00000000 -0.00000000  0.00000000  0.00001955 -0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000001 -0.00000000

  10    1  |0 0>           0.00000000  0.00000036  0.00000000  0.00000000 -0.00000000  0.00011274  0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  11    1  |0 0>           0.00000000  0.00001211  0.00000000  0.00000000 -0.00000000 -0.00000342 -0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  12    1  |0 0>          -0.00000000  0.00000658 -0.00000000 -0.00000000  0.00000000  0.00000002 -0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   1    1  |1 1>+         -0.00000000 -0.00000000 -0.00000000  0.00000224 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   2    1  |1 1>+         -0.00031846 -0.00000000 -0.00000178  0.00000000  0.00000000  0.00000000  0.00000082  0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   3    1  |1 1>+         -0.00000000 -0.00000184  0.00000000  0.00000000  0.00000000 -0.00000161  0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   4    1  |1 1>+         -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000221 -0.00000000 -0.00000000 -0.00000305
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   5    1  |1 1>+         -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000068 -0.00000000  0.00000000 -0.00000262
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   6    1  |1 1>+         -0.00000000  0.00000000  0.00000000  0.62262237 -0.00000011 -0.00000000 -0.00000000  0.00000028
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000001

   7    1  |1 1>+         -0.00000000  0.69938509 -0.00000000 -0.00000000 -0.00000000 -0.04009784 -0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   8    1  |1 1>+         -0.12499814 -0.00000000 -0.69597462  0.00000000  0.00000000 -0.00000000  0.22278944 -0.00000000
                          -0.00000075 -0.00000000 -0.00027657  0.00000000  0.00000000 -0.00000000 -0.00009812 -0.00000000

   9    1  |1 1>+         -0.00000000  0.00000000  0.00000000  0.00000011  0.60077317  0.00000000 -0.00000000  0.26036006
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000003

  10    1  |1 1>+          0.69568775 -0.00000000 -0.12489075 -0.00000000 -0.00000000  0.00000000 -0.48602491 -0.00000000
                           0.00000420 -0.00000000 -0.00004963  0.00000000 -0.00000000  0.00000000  0.00021404  0.00000000

  11    1  |1 1>+         -0.00000000 -0.10020260  0.00000000  0.00000000 -0.00000000  0.53323021  0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  12    1  |1 1>+         -0.00000000 -0.00000000 -0.00000000 -0.02860532  0.00000001  0.00000000 -0.00000000 -0.00000083
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000003

  13    1  |1 1>+          0.00000000 -0.00000000 -0.00000000  0.00000082 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  14    1  |1 1>+         -0.00000215 -0.00000000 -0.00001020  0.00000000 -0.00000000 -0.00000000 -0.00000893 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  15    1  |1 1>+          0.00000000 -0.00000966  0.00000000  0.00000000  0.00000000 -0.00000262  0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  16    1  |1 1>+          0.00000000  0.00000000 -0.00000000  0.00000000  0.00000039 -0.00000000  0.00000000 -0.00000155
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   1    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000197  0.00000000 -0.00000000

   2    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000036 -0.00000000  0.00000000 -0.00000195

   3    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000036 -0.00000000  0.00000000  0.00000000  0.00000000

   4    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000026  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000343  0.00000000

   5    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00054904  0.00000000  0.00000210 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   6    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000739 -0.00000000  0.00000000 -0.00000000  0.65428244  0.00000000  0.00000000

   7    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000001
                          -0.00000000  0.00000000 -0.00000000  0.48534745 -0.00000009 -0.00000000 -0.00000000 -0.00000021

   8    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000002
                          -0.00000000 -0.00000000 -0.00000000 -0.00000009 -0.48534155 -0.00000000  0.00000000 -0.15238881

   9    1  |1 0>           0.00000000  0.00000000 -0.00000003  0.00000000 -0.00000000  0.00000000  0.00028823  0.00000000
                          -0.00035244  0.00000000  0.00007488  0.00000000  0.00000000 -0.00000000  0.65447108  0.00000000

  10    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000007
                          -0.00000000 -0.00000000 -0.00000000 -0.00000002 -0.12258498 -0.00000000 -0.00000000  0.71541434

  11    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000003
                           0.00000000 -0.00000000 -0.00000000 -0.12255691  0.00000002  0.00000000 -0.00000000 -0.00000099

  12    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.04053953 -0.00000000  0.00000000 -0.00000000  0.00001977 -0.00000000  0.00000000

  13    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000495 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  14    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000978  0.00000000  0.00000000  0.00002052

  15    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000975  0.00000000 -0.00000000  0.00000000 -0.00000000

  16    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000124 -0.00000000 -0.00000088  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   1    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000224  0.00000000 -0.00000000  0.00000265

   2    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000184 -0.00000000 -0.00000000 -0.00000000 -0.00000161  0.00000000 -0.00000000

   3    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00031796 -0.00000000 -0.00000178  0.00000000  0.00000000  0.00000000 -0.00000082  0.00000000

   4    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000221  0.00000000 -0.00000000 -0.00000000 -0.00000000

   5    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000068  0.00000000  0.00000000 -0.00000000  0.00000000

   6    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000002
                           0.00000000  0.00000000  0.00000000  0.00000011  0.62263029  0.00000000 -0.00000000 -0.20170153

   7    1  |1 1>-         -0.00000075 -0.00000000 -0.00027659  0.00000000  0.00000000 -0.00000000  0.00009805  0.00000000
                           0.12467204  0.00000000  0.69602553  0.00000000 -0.00000000 -0.00000000  0.22263017  0.00000000

   8    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000  0.69938427 -0.00000000 -0.00000000 -0.00000000  0.04011135 -0.00000000  0.00000000

   9    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000001
                          -0.00000000 -0.00000000  0.00000000 -0.60078346  0.00000011  0.00000000  0.00000000  0.00000036

  10    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.10019044 -0.00000000  0.00000000 -0.00000000  0.53325722 -0.00000000  0.00000000

  11    1  |1 1>-         -0.00000420  0.00000000  0.00004959  0.00000000 -0.00000000  0.00000000  0.00021406  0.00000000
                           0.69631191 -0.00000000 -0.12477953  0.00000000  0.00000000 -0.00000000  0.48605337  0.00000000

  12    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000006
                          -0.00000000  0.00000000  0.00000000  0.00000001  0.02862899  0.00000000  0.00000000 -0.59706708

  13    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000082  0.00000000 -0.00000000 -0.00001573

  14    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000966 -0.00000000 -0.00000000 -0.00000000 -0.00000260 -0.00000000 -0.00000000

  15    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000216 -0.00000000 -0.00001019  0.00000000 -0.00000000 -0.00000000  0.00000893 -0.00000000

  16    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000038 -0.00000000 -0.00000000 -0.00000000  0.00000000

 State Sym Spin     / Nr.     41          42          43          44          45          46          47          48

   1    1  |0 0>          -0.00000000  0.00000235 -0.00000012  0.00000000  0.00000001  0.00000000 -0.00000000  0.00665340
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   2    1  |0 0>           0.00000000 -0.00000108 -0.00225753  0.00000000 -0.00012131  0.00000000  0.00000000  0.00000032
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   3    1  |0 0>          -0.00000000 -0.00000009 -0.00012142  0.00000000  0.00225661 -0.00000000  0.00000000  0.00000002
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   4    1  |0 0>           0.00000043  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00226157  0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   5    1  |0 0>           0.00000000  0.00000000  0.00000000  0.00226114 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000016 -0.00000000 -0.00000000  0.00000000 -0.00000000

   6    1  |0 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00226157 -0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   7    1  |0 0>           0.00002032 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000018  0.91554640  0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   8    1  |0 0>          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.91554643  0.00000018 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000001 -0.00000000 -0.00000000

   9    1  |0 0>           0.00000000  0.00000000  0.00000002  0.91554408 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00006569 -0.00000000 -0.00000000  0.00000000  0.00000000

  10    1  |0 0>          -0.00000000 -0.00000013  0.05645006  0.00000000  0.91377703 -0.00000000  0.00000000 -0.00000027
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  11    1  |0 0>          -0.00000000 -0.00000487  0.91371482 -0.00000002 -0.05644987 -0.00000000 -0.00000000  0.00002141
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  12    1  |0 0>          -0.00000000  0.00001840 -0.00000104  0.00000000  0.00000019  0.00000000 -0.00000000  0.16362659
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   1    1  |1 1>+          0.00000265  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00120061 -0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   2    1  |1 1>+          0.00000000 -0.00000000  0.00000000  0.00119949 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000009 -0.00000000 -0.00000000  0.00000000  0.00000000

   3    1  |1 1>+         -0.00000000  0.00000130  0.00211089 -0.00000000  0.00112915 -0.00000000 -0.00000000  0.00000050
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   4    1  |1 1>+         -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00120051  0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   5    1  |1 1>+         -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00207324 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   6    1  |1 1>+         -0.20172609  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000001 -0.05027293 -0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   7    1  |1 1>+          0.00000000 -0.04425960  0.01156131 -0.00000000  0.05752857 -0.00000000  0.00000000 -0.00000869
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   8    1  |1 1>+         -0.00000000  0.00000000  0.00000000  0.06342877 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000455 -0.00000000 -0.00000000  0.00000000 -0.00000000

   9    1  |1 1>+          0.00000036 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.05028636 -0.00000001  0.00000000
                           0.00000001  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  10    1  |1 1>+         -0.00000000 -0.00000000 -0.00000000 -0.00477190  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000034  0.00000000  0.00000000 -0.00000000  0.00000000

  11    1  |1 1>+         -0.00000000 -0.46166970  0.05348080 -0.00000000 -0.02828482 -0.00000000 -0.00000000  0.00002023
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  12    1  |1 1>+          0.59706825 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000001  0.03897205  0.00000000
                           0.00000001 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  13    1  |1 1>+          0.00001572  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000005 -0.27488965 -0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  14    1  |1 1>+          0.00000000  0.00000000 -0.00000001 -0.27490378  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00001972  0.00000000  0.00000000 -0.00000000 -0.00000000

  15    1  |1 1>+          0.00000000 -0.00002034  0.15002304 -0.00000000 -0.27980927  0.00000000 -0.00000000 -0.56955891
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  16    1  |1 1>+         -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000027 -0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   1    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00007549  0.00000000  0.00238957 -0.00000000  0.00000000 -0.00000000

   2    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00119978 -0.00000000 -0.00000000

   3    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000195 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00119978  0.00000000

   4    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000017 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00239136  0.00000000 -0.00000000 -0.00000000 -0.00000000

   5    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000003  0.00000000 -0.00000000  0.00000000  0.00000000

   6    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00001753  0.00158720  0.00000000  0.05023755 -0.00000000  0.00000000 -0.00000006

   7    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.15236977 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.01121609  0.00000000

   8    1  |1 0>           0.00000001  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000021 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.01121601 -0.00000000 -0.00000000

   9    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000361 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.05029083  0.00000000 -0.00000000 -0.00000000  0.00000000

  10    1  |1 0>          -0.00000003 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000099 -0.00000000  0.00000000 -0.00000000  0.00000000  0.06263824  0.00000001 -0.00000000

  11    1  |1 0>          -0.00000002  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.71541912 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000001 -0.06263826  0.00000000

  12    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.75487122  0.06758627 -0.00000000 -0.00213526 -0.00000000 -0.00000000 -0.00003014

  13    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00002541  0.31738068 -0.00000001 -0.01002658 -0.00000000 -0.00000000  0.56954941

  14    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.27490446 -0.00000005  0.00000000

  15    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00002053  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000005  0.27490449  0.00000000

  16    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   1    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00120061 -0.00000000 -0.00000000

   2    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000130 -0.00203540  0.00000000  0.00126015  0.00000000  0.00000000 -0.00000050

   3    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000009 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00119949  0.00000000 -0.00000000 -0.00000000  0.00000000

   4    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000305  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00120057  0.00000000

   5    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000262 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00207321  0.00000000

   6    1  |1 1>-          0.00000001  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000028  0.00000000  0.00000000 -0.00000000  0.00000000  0.05027284  0.00000001 -0.00000000

   7    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000455  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000  0.06342875 -0.00000000  0.00000000  0.00000000  0.00000000

   8    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.04426165  0.00790683 -0.00000000 -0.05814362  0.00000000 -0.00000000 -0.00000858

   9    1  |1 1>-          0.00000001 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.26033636  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000001 -0.05028626 -0.00000000

  10    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.46164111 -0.05515958  0.00000000 -0.02485256  0.00000000  0.00000000 -0.00002020

  11    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000034  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000  0.00477188 -0.00000000  0.00000000  0.00000000  0.00000000

  12    1  |1 1>-          0.00000003  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000083  0.00000000  0.00000000 -0.00000000  0.00000000  0.03897209  0.00000001 -0.00000000

  13    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.27488960 -0.00000005  0.00000000

  14    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00002033 -0.16738614  0.00000000 -0.26978000  0.00000000  0.00000000  0.56955964

  15    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00001972  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000001  0.27490384 -0.00000000  0.00000000  0.00000000 -0.00000000

  16    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000156 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000026 -0.00000000

 State Sym Spin     / Nr.     49          50          51          52          53          54          55          56

   1    1  |0 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000013
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   2    1  |0 0>          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00031584 -0.00366999
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   3    1  |0 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00367418 -0.00031549
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   4    1  |0 0>          -0.00000000  0.00000000  0.00000005 -0.00000000  0.00000000  0.00369499 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   5    1  |0 0>          -0.00000000  0.00000000 -0.00000000  0.00369462  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000021 -0.00000000 -0.00000000 -0.00000000  0.00000000

   6    1  |0 0>          -0.00000000 -0.00000005  0.00000000 -0.00000000  0.00369500 -0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   7    1  |0 0>          -0.00000000 -0.00000000 -0.00002300 -0.00000000  0.00000036  0.38780642 -0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000001  0.00000001 -0.00000000 -0.00000000

   8    1  |0 0>           0.00000000  0.00002302 -0.00000000 -0.00000000  0.38780636 -0.00000036  0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000001 -0.00000001 -0.00000000 -0.00000000

   9    1  |0 0>          -0.00000003 -0.00000000  0.00000000 -0.38781735 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00002181  0.00000000  0.00000000  0.00000000 -0.00000000

  10    1  |0 0>           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.38768696 -0.01150689
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  11    1  |0 0>           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.01150405 -0.38778837
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  12    1  |0 0>           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000002  0.00001166
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   1    1  |1 1>+          0.00000000  0.00000000  0.00032091 -0.00000000  0.00000000  0.00016858 -0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   2    1  |1 1>+          0.00032025 -0.00000000 -0.00000000 -0.00016885 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000010 -0.00000000  0.00000000  0.00000001  0.00000000  0.00000000  0.00000000 -0.00000000

   3    1  |1 1>+          0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00016728 -0.00029056
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   4    1  |1 1>+         -0.00000000 -0.00032038  0.00000000 -0.00000000  0.00016911 -0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   5    1  |1 1>+         -0.00000000 -0.00017996  0.00000000  0.00000000 -0.00029178  0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   6    1  |1 1>+          0.00000000  0.00000000  0.00001264  0.00000000 -0.00000001 -0.01466010  0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   7    1  |1 1>+          0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.01686001 -0.00282538
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   8    1  |1 1>+         -0.00001042  0.00000000  0.00000000 -0.01849293 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000104  0.00000000  0.00000000  0.00000000 -0.00000000

   9    1  |1 1>+         -0.00000000 -0.00000543  0.00000000  0.00000000 -0.01465683  0.00000001 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  10    1  |1 1>+          0.00000031  0.00000000  0.00000000  0.00139206  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000008 -0.00000000 -0.00000000 -0.00000000  0.00000000

  11    1  |1 1>+          0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00774036 -0.01583369
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  12    1  |1 1>+         -0.00000000 -0.00000000 -0.00001629 -0.00000000  0.00000001  0.01136778 -0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  13    1  |1 1>+          0.00000000  0.00000047  0.70702890 -0.00000000  0.00000061  0.65144223 -0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000002  0.00000003 -0.00000000 -0.00000000

  14    1  |1 1>+          0.70704903 -0.00000000 -0.00000000 -0.65141439 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00021563 -0.00000000 -0.00000000  0.00003664  0.00000000  0.00000000  0.00000000 -0.00000000

  15    1  |1 1>+         -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.65123203  0.37635613
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  16    1  |1 1>+         -0.00000000 -0.01276983  0.00000001 -0.00000000  0.00000429 -0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   1    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00033302  0.00000015

   2    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00032087  0.00000000  0.00000000 -0.00016839  0.00000000 -0.00000000  0.00000000

   3    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00032087 -0.00000000  0.00000000  0.00016839 -0.00000000 -0.00000000

   4    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000002  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000001 -0.00000000 -0.00000000  0.00033434  0.00000000  0.00000000 -0.00000000  0.00000000

   5    1  |1 0>           0.00000011 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00037375  0.00000000  0.00000000 -0.00000001 -0.00000000  0.00000000  0.00000000 -0.00000000

   6    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.01463357  0.00000663

   7    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000156  0.00000000 -0.00000000 -0.00327030  0.00000000  0.00000000

   8    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000156 -0.00000000  0.00000000 -0.00327029  0.00000000 -0.00000000  0.00000000

   9    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000082  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.01464731  0.00000000  0.00000000 -0.00000000  0.00000000

  10    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00001638  0.00000000 -0.00000000  0.01826456 -0.00000002  0.00000000 -0.00000000

  11    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00001638  0.00000000 -0.00000002 -0.01826456  0.00000000  0.00000000

  12    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000892 -0.01970225

  13    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00034075  0.75214657

  14    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000001  0.00000002  0.00000000  0.00000000
                           0.00000000  0.70706912 -0.00000047 -0.00000000  0.65139245 -0.00000061  0.00000000 -0.00000000

  15    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000002  0.00000003 -0.00000000 -0.00000000
                           0.00000000  0.00000047  0.70706911  0.00000000 -0.00000061 -0.65139244  0.00000000  0.00000000

  16    1  |1 0>          -0.00000389  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.01276710 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   1    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00032091 -0.00000000  0.00000000 -0.00016858  0.00000000 -0.00000000  0.00000000

   2    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00016702  0.00029071

   3    1  |1 1>-         -0.00000010  0.00000000  0.00000000  0.00000001  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00032025 -0.00000000 -0.00000000  0.00016885  0.00000000  0.00000000 -0.00000000  0.00000000

   4    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000  0.00032037 -0.00000000  0.00000000  0.00016911 -0.00000000 -0.00000000

   5    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00017996 -0.00000000  0.00000000  0.00029177 -0.00000000 -0.00000000

   6    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000  0.00001265 -0.00000000 -0.00000000  0.01466008 -0.00000001  0.00000000 -0.00000000

   7    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000104 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00001042 -0.00000000  0.00000000 -0.01849292 -0.00000000 -0.00000000  0.00000000 -0.00000000

   8    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.01685745 -0.00284065

   9    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000544  0.00000000 -0.00000001 -0.01465680  0.00000000  0.00000000

  10    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00775469  0.01582666

  11    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000008 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000031 -0.00000000 -0.00000000 -0.00139206 -0.00000000 -0.00000000  0.00000000 -0.00000000

  12    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000  0.00001629 -0.00000000 -0.00000000  0.01136779 -0.00000001  0.00000000 -0.00000000

  13    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000001  0.00000002  0.00000000  0.00000000
                          -0.00000000 -0.70702889  0.00000047 -0.00000000  0.65144226 -0.00000061  0.00000000 -0.00000000

  14    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.65157257 -0.37576619

  15    1  |1 1>-         -0.00021563  0.00000000  0.00000000  0.00003664  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.70704896 -0.00000000 -0.00000000  0.65141444  0.00000000  0.00000000 -0.00000000  0.00000000

  16    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000001 -0.01276983  0.00000000 -0.00000000 -0.00000430  0.00000000 -0.00000000

 State Sym Spin     / Nr.     57          58          59          60

   1    1  |0 0>           0.00000000  0.00000000 -0.00000000 -0.00100641
                          -0.00000000  0.00000000 -0.00000000 -0.00000000

   2    1  |0 0>          -0.00000000  0.00000000  0.00000000 -0.00000001
                          -0.00000000  0.00000000  0.00000000  0.00000000

   3    1  |0 0>           0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000

   4    1  |0 0>           0.00000000 -0.00000000 -0.00000003 -0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000

   5    1  |0 0>          -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000

   6    1  |0 0>           0.00000000  0.00000003 -0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000

   7    1  |0 0>           0.00000000  0.00000000  0.00000115 -0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000

   8    1  |0 0>           0.00000000 -0.00000114  0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000

   9    1  |0 0>          -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000

  10    1  |0 0>           0.00000000 -0.00000000  0.00000000  0.00000006
                           0.00000000  0.00000000  0.00000000 -0.00000000

  11    1  |0 0>          -0.00000000  0.00000000 -0.00000000  0.00000174
                          -0.00000000  0.00000000  0.00000000  0.00000000

  12    1  |0 0>           0.00000000  0.00000000 -0.00000000  0.98652234
                           0.00000000  0.00000000  0.00000000  0.00000000

   1    1  |1 1>+         -0.00000000  0.00000000  0.00000362  0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000

   2    1  |1 1>+         -0.00000372 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000

   3    1  |1 1>+          0.00000000  0.00000000 -0.00000000  0.00000018
                          -0.00000000 -0.00000000 -0.00000000  0.00000000

   4    1  |1 1>+          0.00000000 -0.00000361  0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000

   5    1  |1 1>+          0.00000000 -0.00000203  0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000

   6    1  |1 1>+         -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000

   7    1  |1 1>+         -0.00000000 -0.00000000 -0.00000000 -0.00000214
                          -0.00000000  0.00000000  0.00000000 -0.00000000

   8    1  |1 1>+         -0.00000032 -0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000

   9    1  |1 1>+          0.00000000  0.00000002  0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000

  10    1  |1 1>+         -0.00000097 -0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000

  11    1  |1 1>+          0.00000000  0.00000000  0.00000000  0.00000745
                           0.00000000 -0.00000000 -0.00000000 -0.00000000

  12    1  |1 1>+          0.00000000  0.00000000  0.00000106  0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000

  13    1  |1 1>+         -0.00000000  0.00000002  0.00903225  0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000

  14    1  |1 1>+         -0.00902770 -0.00000000 -0.00000000  0.00000000
                          -0.00000006 -0.00000000 -0.00000000  0.00000000

  15    1  |1 1>+          0.00000000  0.00000000 -0.00000000  0.09446433
                           0.00000000  0.00000000  0.00000000 -0.00000000

  16    1  |1 1>+         -0.00000004  0.99991846 -0.00000171 -0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000

   1    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000

   2    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000351  0.00000000 -0.00000000

   3    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000351  0.00000000

   4    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000

   5    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000421  0.00000000  0.00000000  0.00000000

   6    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000002

   7    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000036  0.00000000

   8    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000036 -0.00000000 -0.00000000

   9    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000

  10    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000090 -0.00000000  0.00000000

  11    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000090  0.00000000

  12    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000690

  13    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.09447557

  14    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00902702 -0.00000002 -0.00000000

  15    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000002  0.00902702  0.00000000

  16    1  |1 0>          -0.00000625 -0.00000000 -0.00000000  0.00000000
                           0.99991850  0.00000004  0.00000003 -0.00000000

   1    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000362 -0.00000000 -0.00000000

   2    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000017

   3    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000372 -0.00000000 -0.00000000 -0.00000000

   4    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000361  0.00000000

   5    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000203  0.00000000

   6    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000

   7    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000032  0.00000000  0.00000000  0.00000000

   8    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000213

   9    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000002 -0.00000000

  10    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000746

  11    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000097 -0.00000000 -0.00000000  0.00000000

  12    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000106  0.00000000 -0.00000000

  13    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00903225  0.00000002 -0.00000000

  14    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.09446435

  15    1  |1 1>-          0.00000006  0.00000000  0.00000000  0.00000000
                          -0.00902771 -0.00000000 -0.00000000 -0.00000000

  16    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000003  0.00000171  0.99991846  0.00000000


  No SO block in symmetry 2


 Summary of SO results
 =====================

 Eigenvalues of the spin-orbit matrix
 ....................................

   Nr  Sym         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
                 (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
   1   1    -25.38436892     -0.00000498       -1.09      0.00000000        0.00      0.0000
   2   1    -25.34119474      0.04316920     9474.54      0.04317418     9475.64      1.1748
   3   1    -25.34119474      0.04316920     9474.54      0.04317418     9475.64      1.1748
   4   1    -25.34119470      0.04316924     9474.55      0.04317421     9475.64      1.1748
   5   1    -25.34042007      0.04394387     9644.57      0.04394885     9645.66      1.1959
   6   1    -25.34041996      0.04394398     9644.59      0.04394896     9645.68      1.1959
   7   1    -25.34041978      0.04394416     9644.63      0.04394914     9645.72      1.1959
   8   1    -25.34041975      0.04394419     9644.64      0.04394917     9645.73      1.1959
   9   1    -25.34041975      0.04394419     9644.64      0.04394917     9645.73      1.1959
  10   1    -25.33896076      0.04540318     9964.85      0.04540815     9965.94      1.2356
  11   1    -25.33896076      0.04540318     9964.85      0.04540815     9965.94      1.2356
  12   1    -25.33896074      0.04540320     9964.85      0.04540818     9965.94      1.2356
  13   1    -25.33896068      0.04540326     9964.86      0.04540824     9965.96      1.2356
  14   1    -25.33896068      0.04540326     9964.86      0.04540824     9965.96      1.2356
  15   1    -25.33896068      0.04540326     9964.86      0.04540824     9965.96      1.2356
  16   1    -25.33896068      0.04540326     9964.86      0.04540824     9965.96      1.2356
  17   1    -25.32995391      0.05441003    11941.62      0.05441501    11942.71      1.4807
  18   1    -25.32995383      0.05441011    11941.64      0.05441509    11942.73      1.4807
  19   1    -25.32995371      0.05441023    11941.67      0.05441521    11942.76      1.4807
  20   1    -25.32995371      0.05441023    11941.67      0.05441521    11942.76      1.4807
  21   1    -25.32995370      0.05441024    11941.67      0.05441522    11942.76      1.4807
  22   1    -25.28534024      0.09902370    21733.19      0.09902868    21734.28      2.6947
  23   1    -25.28533999      0.09902395    21733.24      0.09902893    21734.34      2.6947
  24   1    -25.28533950      0.09902444    21733.35      0.09902942    21734.45      2.6947
  25   1    -25.28533950      0.09902444    21733.35      0.09902942    21734.45      2.6947
  26   1    -25.28533940      0.09902454    21733.37      0.09902951    21734.47      2.6947
  27   1    -25.28399783      0.10036611    22027.82      0.10037109    22028.91      2.7312
  28   1    -25.28399783      0.10036611    22027.82      0.10037109    22028.91      2.7312
  29   1    -25.28399752      0.10036642    22027.88      0.10037139    22028.97      2.7312
  30   1    -25.28399694      0.10036700    22028.01      0.10037198    22029.10      2.7313
  31   1    -25.28399694      0.10036700    22028.01      0.10037198    22029.10      2.7313
  32   1    -25.28399676      0.10036718    22028.05      0.10037215    22029.14      2.7313
  33   1    -25.28399662      0.10036732    22028.08      0.10037230    22029.17      2.7313
  34   1    -25.28236188      0.10200206    22386.87      0.10200704    22387.96      2.7758
  35   1    -25.28236187      0.10200207    22386.87      0.10200705    22387.96      2.7758
  36   1    -25.28236169      0.10200225    22386.91      0.10200723    22388.00      2.7758
  37   1    -25.28236169      0.10200225    22386.91      0.10200723    22388.00      2.7758
  38   1    -25.28236118      0.10200276    22387.02      0.10200774    22388.11      2.7758
  39   1    -25.28236095      0.10200299    22387.07      0.10200797    22388.16      2.7758
  40   1    -25.28236059      0.10200335    22387.15      0.10200833    22388.24      2.7758
  41   1    -25.28236059      0.10200335    22387.15      0.10200833    22388.24      2.7758
  42   1    -25.28236042      0.10200352    22387.19      0.10200850    22388.28      2.7758
  43   1    -25.27549491      0.10886903    23893.99      0.10887401    23895.08      2.9626
  44   1    -25.27549491      0.10886903    23893.99      0.10887401    23895.08      2.9626
  45   1    -25.27549486      0.10886908    23894.00      0.10887405    23895.09      2.9626
  46   1    -25.27549483      0.10886911    23894.01      0.10887409    23895.10      2.9626
  47   1    -25.27549483      0.10886911    23894.01      0.10887409    23895.10      2.9626
  48   1    -25.27469310      0.10967084    24069.97      0.10967582    24071.06      2.9844
  49   1    -25.27354175      0.11082219    24322.66      0.11082717    24323.75      3.0158
  50   1    -25.27354169      0.11082225    24322.67      0.11082722    24323.76      3.0158
  51   1    -25.27354169      0.11082225    24322.67      0.11082722    24323.76      3.0158
  52   1    -25.27112829      0.11323565    24852.35      0.11324062    24853.44      3.0814
  53   1    -25.27112821      0.11323573    24852.37      0.11324070    24853.46      3.0814
  54   1    -25.27112821      0.11323573    24852.37      0.11324071    24853.46      3.0814
  55   1    -25.27112814      0.11323580    24852.39      0.11324078    24853.48      3.0814
  56   1    -25.27112752      0.11323642    24852.52      0.11324140    24853.61      3.0815
  57   1    -25.26459851      0.11976543    26285.47      0.11977041    26286.57      3.2591
  58   1    -25.26459851      0.11976543    26285.47      0.11977041    26286.57      3.2591
  59   1    -25.26459851      0.11976543    26285.47      0.11977041    26286.57      3.2591
  60   1    -25.26410754      0.12025640    26393.23      0.12026137    26394.32      3.2725

 E0 =    -25.38436394 is the energy of the lowest zeroth-order state
 E1 =    -25.38436892 is the energy of the lowest SO-state


 Spin-orbit eigenvectors   (columnwise and corresponding to the eigenvalues in ascending order)
 .......................

        Basis states           Eigenvectors (columnwise)

   Total
 Nr Sym  State Sym Spin / Nr.        1           2           3           4           5           6           7           8

  1  1     1    1  |0 0>        0.99997736 -0.00000000  0.00000000 -0.00000000  0.00000001 -0.00000040  0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  2  1     2    1  |0 0>       -0.00000001  0.00000000 -0.00000000  0.00000000 -0.00885971 -0.10583482  0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  3  1     3    1  |0 0>       -0.00000000  0.00000000  0.00000000  0.00000000  0.10584988 -0.00885831 -0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  4  1     4    1  |0 0>        0.00000000  0.00000000 -0.00000042 -0.00000000  0.00000000  0.00000000  0.00000000 -0.10625215
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000001

  5  1     5    1  |0 0>        0.00000000 -0.00000000 -0.00000000 -0.00000002 -0.00000000 -0.00000000 -0.10625635 -0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000176  0.00000000

  6  1     6    1  |0 0>       -0.00000000  0.00000040  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000023
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  7  1     7    1  |0 0>        0.00000000  0.00000000 -0.00000221  0.00000000  0.00000000  0.00000000  0.00000000 -0.00294210
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  8  1     8    1  |0 0>        0.00000000  0.00000221  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000001
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  9  1     9    1  |0 0>        0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00293736  0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000005 -0.00000000

 10  1    10    1  |0 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00293118 -0.00009375  0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 11  1    11    1  |0 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00009359 -0.00293714  0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 12  1    12    1  |0 0>       -0.00009583  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000035 -0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 13  1     1    1  |1 1>+      -0.00000000 -0.00000033  0.54777953 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.40599290
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000003

 14  1     2    1  |1 1>+       0.00000000 -0.00000000 -0.00000000 -0.54776296 -0.00000000 -0.00000000 -0.40599120 -0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000288 -0.00000000 -0.00000000 -0.00000674  0.00000000

 15  1     3    1  |1 1>+       0.00000028 -0.00000000 -0.00000000 -0.00000000  0.40466256  0.70383104 -0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 16  1     4    1  |1 1>+       0.00000000 -0.54766331 -0.00000033  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000086
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 17  1     5    1  |1 1>+      -0.00000000 -0.31617270 -0.00000019  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000149
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 18  1     6    1  |1 1>+       0.00000000 -0.00000000  0.00000380 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00003178
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 19  1     7    1  |1 1>+      -0.00000033 -0.00000000 -0.00000000 -0.00000000  0.00003598  0.00000805 -0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 20  1     8    1  |1 1>+      -0.00000000 -0.00000000  0.00000000  0.00000245 -0.00000000  0.00000000 -0.00004060 -0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 21  1     9    1  |1 1>+       0.00000000 -0.00000335 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 22  1    10    1  |1 1>+       0.00000000 -0.00000000  0.00000000 -0.00000057  0.00000000  0.00000000  0.00000084 -0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 23  1    11    1  |1 1>+       0.00000116 -0.00000000  0.00000000  0.00000000 -0.00001468  0.00003374 -0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 24  1    12    1  |1 1>+       0.00000000  0.00000000 -0.00000175  0.00000000  0.00000000  0.00000000 -0.00000000  0.00002772
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 25  1    13    1  |1 1>+       0.00000000  0.00000000 -0.00041254  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00085788
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 26  1    14    1  |1 1>+      -0.00000000  0.00000000  0.00000000  0.00041524 -0.00000000 -0.00000000 -0.00086059 -0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000001  0.00000000

 27  1    15    1  |1 1>+       0.00388463  0.00000000 -0.00000000 -0.00000000  0.00086146 -0.00049480 -0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 28  1    16    1  |1 1>+      -0.00000000  0.00000093  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 29  1     1    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.81188377  0.00145687 -0.00000000  0.00000000

 30  1     2    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.54775644 -0.00000033  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000086

 31  1     3    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000003
                                0.00000000  0.00000033 -0.54775623  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.40599650

 32  1     4    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00001348  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000920  0.00000000  0.00000000  0.81181378  0.00000000

 33  1     5    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000333 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000  0.63238557  0.00000000  0.00000000 -0.00001187  0.00000000

 34  1     6    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00003467  0.00000006 -0.00000000  0.00000000

 35  1     7    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000165  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000682

 36  1     8    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000165  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 37  1     9    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00003438  0.00000000

 38  1    10    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000290 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 39  1    11    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000290  0.00000000  0.00000000  0.00000000  0.00000000 -0.00004155

 40  1    12    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000139  0.00000000 -0.00000000 -0.00000000 -0.00000007  0.00003965  0.00000000  0.00000000

 41  1    13    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00388467  0.00000000  0.00000000  0.00000000  0.00000178 -0.00099366  0.00000000 -0.00000000

 42  1    14    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00041327 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 43  1    15    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00041327  0.00000000  0.00000000  0.00000000  0.00000000 -0.00086291

 44  1    16    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000076 -0.00000000 -0.00000000 -0.00000000  0.00000000

 45  1     1    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.54777940  0.00000033 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000086

 46  1     2    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000029  0.00000000 -0.00000000  0.00000000  0.40718568 -0.70237465 -0.00000000 -0.00000000

 47  1     3    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000288 -0.00000000 -0.00000000 -0.00000674  0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.54776261  0.00000000  0.00000000  0.40599139  0.00000000

 48  1     4    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000003
                               -0.00000000 -0.00000033  0.54765437 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.40589504

 49  1     5    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000005
                                0.00000000  0.00000019 -0.31618831  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.70305488

 50  1     6    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000380  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 51  1     7    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000245 -0.00000000 -0.00000000 -0.00004060 -0.00000000

 52  1     8    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000033 -0.00000000  0.00000000 -0.00000000 -0.00003601  0.00000792 -0.00000000 -0.00000000

 53  1     9    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000335  0.00000000  0.00000000  0.00000000  0.00000000 -0.00003162

 54  1    10    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000116  0.00000000 -0.00000000 -0.00000000 -0.00001456 -0.00003379  0.00000000  0.00000000

 55  1    11    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000057 -0.00000000  0.00000000 -0.00000084 -0.00000000

 56  1    12    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000175  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 57  1    13    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00041254  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 58  1    14    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00388463 -0.00000000  0.00000000 -0.00000000  0.00085968  0.00049789 -0.00000000  0.00000000

 59  1    15    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000001  0.00000000
                                0.00000000  0.00000000  0.00000000  0.00041524  0.00000000  0.00000000  0.00086059  0.00000000

 60  1    16    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000093 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000004


   Total
 Nr Sym  State Sym Spin / Nr.        9          10          11          12          13          14          15          16

  1  1     1    1  |0 0>        0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  2  1     2    1  |0 0>       -0.00000000  0.00000000 -0.00000000 -0.00000116  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  3  1     3    1  |0 0>        0.00000000 -0.00000000  0.00000000  0.00001340 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  4  1     4    1  |0 0>        0.00000023  0.00000000  0.00000443 -0.00000000  0.00000000  0.00000000  0.00000075  0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  5  1     5    1  |0 0>        0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000045 -0.00000000 -0.00000000  0.00000356
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  6  1     6    1  |0 0>        0.10625201 -0.00000443  0.00000000 -0.00000000  0.00000000 -0.00000075  0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  7  1     7    1  |0 0>        0.00000001 -0.00000000 -0.00000061  0.00000000 -0.00000000 -0.00000000 -0.00000311 -0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  8  1     8    1  |0 0>        0.00294210  0.00000062 -0.00000000  0.00000000 -0.00000000  0.00000311 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  9  1     9    1  |0 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000060 -0.00000000 -0.00000000  0.00000500
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 10  1    10    1  |0 0>       -0.00000000 -0.00000000  0.00000000 -0.00000021  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 11  1    11    1  |0 0>       -0.00000000 -0.00000000  0.00000000  0.00000001 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 12  1    12    1  |0 0>        0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 13  1     1    1  |1 1>+      -0.00000086  0.00000113  0.72913849 -0.00000000 -0.00000000 -0.00000001 -0.03975522 -0.00000000
                               -0.00000000  0.00000003 -0.00000002 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 14  1     2    1  |1 1>+       0.00000000  0.00000000 -0.00000000  0.00000000  0.51305258  0.00000007 -0.00000003 -0.51963429
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000538 -0.00000000 -0.00000000  0.00000015

 15  1     3    1  |1 1>+       0.00000000 -0.00000000  0.00000000  0.57735813 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 16  1     4    1  |1 1>+      -0.40587506  0.61829257 -0.00000096  0.00000000  0.00000003 -0.38879470  0.00000004 -0.00000002
                               -0.00000000 -0.00000005  0.00000003  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 17  1     5    1  |1 1>+       0.70306633 -0.19219254  0.00000030 -0.00000000  0.00000005 -0.60261507  0.00000006 -0.00000004
                                0.00000000  0.00000001 -0.00000001 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 18  1     6    1  |1 1>+       0.00000000  0.00000000  0.00013831 -0.00000000 -0.00000000 -0.00000000 -0.00038593 -0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 19  1     7    1  |1 1>+       0.00000000  0.00000000 -0.00000000 -0.00030668  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 20  1     8    1  |1 1>+       0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00011042 -0.00000000  0.00000000  0.00017569
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 21  1     9    1  |1 1>+       0.00003162  0.00033572 -0.00000000  0.00000000 -0.00000000  0.00023470 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 22  1    10    1  |1 1>+       0.00000000  0.00000000 -0.00000000  0.00000000  0.00044681  0.00000000 -0.00000000  0.00042186
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 23  1    11    1  |1 1>+       0.00000000  0.00000000 -0.00000000 -0.00027637  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 24  1    12    1  |1 1>+      -0.00000000 -0.00000000 -0.00015221 -0.00000000 -0.00000000 -0.00000000 -0.00047977 -0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 25  1    13    1  |1 1>+      -0.00000000  0.00000000  0.00000095 -0.00000000  0.00000000  0.00000000  0.00000310  0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 26  1    14    1  |1 1>+       0.00000000 -0.00000000  0.00000000  0.00000000  0.00000218  0.00000000 -0.00000000  0.00000033
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 27  1    15    1  |1 1>+       0.00000000 -0.00000000 -0.00000000 -0.00000047 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 28  1    16    1  |1 1>+      -0.00000004 -0.00000003  0.00000000 -0.00000000  0.00000000 -0.00000008  0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 29  1     1    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.57733444  0.00000000  0.00000000  0.00000000 -0.00000000

 30  1     2    1  |1 0>       -0.00000000  0.00000002 -0.00000001 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.40599650  0.22185757 -0.00000034  0.00000000 -0.00000005  0.69571896 -0.00000007  0.00000004

 31  1     3    1  |1 0>        0.00000000 -0.00000001  0.00000001  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000001
                               -0.00000086  0.00000034  0.22081675  0.00000000  0.00000005  0.00000007  0.69605018  0.00000002

 32  1     4    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000072  0.00000000  0.00000001 -0.00000016
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.06912897  0.00000004  0.00000001 -0.57327691

 33  1     5    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000807 -0.00000000 -0.00000000  0.00000003
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.76908292  0.00000005 -0.00000006  0.09273351

 34  1     6    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00041399 -0.00000000 -0.00000000 -0.00000000  0.00000000

 35  1     7    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00056661  0.00000000  0.00000000  0.00000000  0.00021619  0.00000000

 36  1     8    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000682  0.00056629 -0.00000000  0.00000000  0.00000000 -0.00021704  0.00000000 -0.00000000

 37  1     9    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00004948 -0.00000000 -0.00000000  0.00041038

 38  1    10    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00004155  0.00016474 -0.00000000  0.00000000 -0.00000000  0.00015789 -0.00000000  0.00000000

 39  1    11    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00016450 -0.00000000  0.00000000  0.00000000  0.00015813  0.00000000

 40  1    12    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 41  1    13    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 42  1    14    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00086291  0.00000006 -0.00000000 -0.00000000 -0.00000000  0.00000163 -0.00000000  0.00000000

 43  1    15    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000006  0.00000000  0.00000000  0.00000000  0.00000163  0.00000000

 44  1    16    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000010  0.00000000 -0.00000000  0.00000001

 45  1     1    1  |1 1>-      -0.00000000  0.00000006 -0.00000003 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.40599308  0.72907821 -0.00000113  0.00000000  0.00000000 -0.04084578  0.00000000 -0.00000000

 46  1     2    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.57735779 -0.00000000 -0.00000000 -0.00000000  0.00000000

 47  1     3    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000394 -0.00000000 -0.00000001  0.00000018
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.37484556 -0.00000001 -0.00000005  0.62668475

 48  1     4    1  |1 1>-       0.00000000  0.00000003 -0.00000002 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000086 -0.00000096 -0.61887890  0.00000000  0.00000003  0.00000004  0.38785216  0.00000001

 49  1     5    1  |1 1>-       0.00000000  0.00000001 -0.00000001 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000001
                               -0.00000149 -0.00000030 -0.19127317 -0.00000000 -0.00000005 -0.00000006 -0.60291281 -0.00000002

 50  1     6    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00003178  0.00013774 -0.00000000  0.00000000  0.00000000 -0.00038614  0.00000000 -0.00000000

 51  1     7    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00006550 -0.00000000 -0.00000000  0.00019690

 52  1     8    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00030668 -0.00000000 -0.00000000 -0.00000000  0.00000000

 53  1     9    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00033537  0.00000000 -0.00000000 -0.00000000 -0.00023520 -0.00000000

 54  1    10    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00027637  0.00000000  0.00000000  0.00000000 -0.00000000

 55  1    11    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000001  0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00053427  0.00000000 -0.00000000 -0.00030357

 56  1    12    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00002772  0.00015293 -0.00000000  0.00000000 -0.00000000  0.00047954 -0.00000000  0.00000000

 57  1    13    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00085788 -0.00000096  0.00000000 -0.00000000  0.00000000 -0.00000310  0.00000000 -0.00000000

 58  1    14    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000047 -0.00000000 -0.00000000 -0.00000000  0.00000000

 59  1    15    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000220  0.00000000 -0.00000000  0.00000020

 60  1    16    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000003  0.00000000 -0.00000000 -0.00000000 -0.00000008 -0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.       17          18          19          20          21          22          23          24

  1  1     1    1  |0 0>       -0.00000004 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  2  1     2    1  |0 0>        0.99321455 -0.04671046  0.00000000  0.00000000  0.00000000 -0.00056963  0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  3  1     3    1  |0 0>        0.04671066  0.99321303 -0.00000000  0.00000000  0.00000000  0.00665544 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  4  1     4    1  |0 0>       -0.00000000  0.00000000  0.99430740 -0.00000005 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  5  1     5    1  |0 0>       -0.00000000 -0.00000000  0.00000005  0.99430698 -0.00000000  0.00000000  0.00666814  0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000208 -0.00000000 -0.00000000  0.00000098  0.00000000

  6  1     6    1  |0 0>       -0.00000000 -0.00000000  0.00000000  0.00000000  0.99430742 -0.00000000  0.00000000 -0.00667113
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  7  1     7    1  |0 0>        0.00000000 -0.00000000 -0.00038860  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000003
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  8  1     8    1  |0 0>        0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00038860 -0.00000000  0.00000000 -0.10664028
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  9  1     9    1  |0 0>       -0.00000000 -0.00000000  0.00000000  0.00038795 -0.00000000 -0.00000000 -0.10662065 -0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00001572 -0.00000000

 10  1    10    1  |0 0>       -0.00002655  0.00038682 -0.00000000  0.00000000  0.00000000 -0.10664090  0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 11  1    11    1  |0 0>       -0.00038808 -0.00002656 -0.00000000 -0.00000000 -0.00000000  0.00320411  0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 12  1    12    1  |0 0>       -0.00000005 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000001  0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 13  1     1    1  |1 1>+      -0.00000000  0.00000000  0.04338067 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 14  1     2    1  |1 1>+       0.00000000  0.00000000 -0.00000000 -0.04338310  0.00000000  0.00000000 -0.00045594 -0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000009  0.00000000  0.00000000 -0.00000007 -0.00000000

 15  1     3    1  |1 1>+       0.07670441 -0.04046321  0.00000000  0.00000000  0.00000000 -0.00045260  0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 16  1     4    1  |1 1>+      -0.00000000 -0.00000000  0.00000000  0.00000000  0.04337368 -0.00000000  0.00000000 -0.00045323
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 17  1     5    1  |1 1>+       0.00000000  0.00000000 -0.00000000 -0.00000000 -0.07512945  0.00000000 -0.00000000  0.00078444
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 18  1     6    1  |1 1>+       0.00000000 -0.00000000 -0.00331852  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000012
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000001

 19  1     7    1  |1 1>+       0.00078859 -0.00379301  0.00000000 -0.00000000 -0.00000000  0.55783907 -0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 20  1     8    1  |1 1>+       0.00000000  0.00000000 -0.00000000 -0.00418442  0.00000000  0.00000000  0.61197242  0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000001  0.00000000 -0.00000000  0.00009024  0.00000000

 21  1     9    1  |1 1>+       0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00331800 -0.00000000  0.00000000 -0.48525380
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 22  1    10    1  |1 1>+      -0.00000000 -0.00000000  0.00000000  0.00031581 -0.00000000 -0.00000000 -0.04608098 -0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000679 -0.00000000

 23  1    11    1  |1 1>+       0.00351990  0.00189201  0.00000000  0.00000000  0.00000000 -0.25561237 -0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 24  1    12    1  |1 1>+      -0.00000000  0.00000000  0.00257053 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000010
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000001

 25  1    13    1  |1 1>+       0.00000000 -0.00000000 -0.00289522  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 26  1    14    1  |1 1>+      -0.00000000 -0.00000000  0.00000000  0.00289445 -0.00000000  0.00000000  0.00883370  0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000001 -0.00000000 -0.00000000  0.00000130  0.00000000

 27  1    15    1  |1 1>+       0.00155497  0.00295110  0.00000000  0.00000000  0.00000000  0.00885441  0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 28  1    16    1  |1 1>+      -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000004 -0.00000000 -0.00000000 -0.00000014
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 29  1     1    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00332109 -0.08665858  0.00000000 -0.00000000 -0.00000000 -0.00090494  0.00000000  0.00000000

 30  1     2    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.04338222  0.00000000 -0.00000000  0.00045678

 31  1     3    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.04338228 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 32  1     4    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000018  0.00000000  0.00000000 -0.00000013 -0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.08675449 -0.00000000  0.00000000  0.00090310  0.00000000

 33  1     5    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000124  0.00000000  0.00000000 -0.00000001  0.00000000

 34  1     6    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00012703 -0.00331471  0.00000000 -0.00000000 -0.00000000  0.48512312 -0.00000000 -0.00000000

 35  1     7    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00074109  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000003

 36  1     8    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00074109 -0.00000000  0.00000000 -0.10824339

 37  1     9    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000001  0.00000000 -0.00000000  0.00007151  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00331437 -0.00000000 -0.00000000 -0.48493592 -0.00000000

 38  1    10    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00413113  0.00000000 -0.00000000  0.60379265

 39  1    11    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000001
                                0.00000000 -0.00000000 -0.00413113  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000015

 40  1    12    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00446402  0.00017107  0.00000000  0.00000000  0.00000000  0.00005235 -0.00000000 -0.00000000

 41  1    13    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00333063  0.00012765  0.00000000  0.00000000  0.00000000 -0.00000083  0.00000000  0.00000000

 42  1    14    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00289448  0.00000000 -0.00000000  0.00882582

 43  1    15    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00289448 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 44  1    16    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 45  1     1    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.04338062  0.00000000 -0.00000000  0.00045283

 46  1     2    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.07338259 -0.04621499 -0.00000000 -0.00000000 -0.00000000 -0.00045247 -0.00000000 -0.00000000

 47  1     3    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000009  0.00000000  0.00000000 -0.00000007 -0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.04338312 -0.00000000  0.00000000  0.00045594  0.00000000

 48  1     4    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.04337589 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 49  1     5    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.07512831 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 50  1     6    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00331852  0.00000000 -0.00000000  0.48545847

 51  1     7    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000001 -0.00000000  0.00000000 -0.00009024 -0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00418442  0.00000000  0.00000000  0.61197243  0.00000000

 52  1     8    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00049598  0.00384224 -0.00000000  0.00000000  0.00000000 -0.55782397 -0.00000000 -0.00000000

 53  1     9    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000001
                                0.00000000 -0.00000000 -0.00331800  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000012

 54  1    10    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00365438  0.00161707 -0.00000000 -0.00000000 -0.00000000 -0.25569641  0.00000000  0.00000000

 55  1    11    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000679 -0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00031581  0.00000000  0.00000000  0.04608082  0.00000000

 56  1    12    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00257053  0.00000000 -0.00000000  0.37550350

 57  1    13    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00289522  0.00000000 -0.00000000  0.00882969

 58  1    14    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00177626  0.00282344 -0.00000000  0.00000000  0.00000000  0.00885523 -0.00000000 -0.00000000

 59  1    15    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000001 -0.00000000 -0.00000000  0.00000130  0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00289445  0.00000000 -0.00000000 -0.00883371 -0.00000000

 60  1    16    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000004 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.       25          26          27          28          29          30          31          32

  1  1     1    1  |0 0>        0.00000000 -0.00000023  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  2  1     2    1  |0 0>        0.00000000 -0.00666963  0.00000000 -0.00000000 -0.00000005  0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  3  1     3    1  |0 0>        0.00000000 -0.00057084 -0.00000000  0.00000000  0.00000064 -0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  4  1     4    1  |0 0>        0.00667114  0.00000000  0.00000172  0.00000000 -0.00000000 -0.00000245 -0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  5  1     5    1  |0 0>        0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000001
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  6  1     6    1  |0 0>       -0.00000000 -0.00000000 -0.00000000  0.00000172  0.00000000  0.00000000 -0.00000245 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  7  1     7    1  |0 0>        0.10664027  0.00000000  0.00002755  0.00000000 -0.00000000 -0.00007616 -0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  8  1     8    1  |0 0>       -0.00000003 -0.00000000 -0.00000000  0.00002756 -0.00000000  0.00000000 -0.00007618 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  9  1     9    1  |0 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000967
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 10  1    10    1  |0 0>       -0.00000000 -0.00320913 -0.00000000  0.00000000 -0.00001249 -0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 11  1    11    1  |0 0>        0.00000000 -0.10680557 -0.00000000  0.00000000  0.00000036 -0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 12  1    12    1  |0 0>       -0.00000000 -0.00000242  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 13  1     1    1  |1 1>+       0.00045283  0.00000000  0.00042809  0.00000000  0.00000000  0.00029052  0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 14  1     2    1  |1 1>+      -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00041098
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 15  1     3    1  |1 1>+       0.00000000 -0.00078423  0.00000000  0.00000000 -0.00041348  0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 16  1     4    1  |1 1>+      -0.00000000 -0.00000000  0.00000000 -0.00051377 -0.00000000  0.00000000 -0.00005134  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 17  1     5    1  |1 1>+       0.00000000  0.00000000  0.00000000 -0.00015287 -0.00000000 -0.00000000  0.00042526 -0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 18  1     6    1  |1 1>+       0.48545854  0.00000000 -0.48794179 -0.00000031 -0.00000000  0.30844336  0.00000009 -0.00000000
                               -0.00000002  0.00000000 -0.00000001  0.00000001  0.00000000  0.00000001 -0.00000001 -0.00000000

 19  1     7    1  |1 1>+       0.00000000  0.09375700  0.00000000  0.00000000 -0.42844883  0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 20  1     8    1  |1 1>+       0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.26733232
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000149

 21  1     9    1  |1 1>+      -0.00000012 -0.00000000 -0.00000011  0.17678189 -0.00000000 -0.00000016  0.54936911 -0.00000000
                               -0.00000001 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000001  0.00000001 -0.00000000

 22  1    10    1  |1 1>+      -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.51191010
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000285

 23  1    11    1  |1 1>+      -0.00000000  0.52310549  0.00000000  0.00000000 -0.38668093  0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 24  1    12    1  |1 1>+      -0.37550348 -0.00000000 -0.24109198 -0.00000015 -0.00000000  0.66476170  0.00000019 -0.00000000
                                0.00000002 -0.00000000 -0.00000001  0.00000001  0.00000000  0.00000001 -0.00000001 -0.00000000

 25  1    13    1  |1 1>+      -0.00882970 -0.00000000 -0.00000155 -0.00000000 -0.00000000  0.00000176  0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 26  1    14    1  |1 1>+       0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000624
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 27  1    15    1  |1 1>+       0.00000000 -0.00512774 -0.00000000 -0.00000000  0.00000351 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 28  1    16    1  |1 1>+       0.00000000  0.00000000  0.00000000 -0.00000057 -0.00000000 -0.00000000  0.00000031 -0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 29  1     1    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000007 -0.00000000 -0.00000000  0.00041271 -0.00000000  0.00000000 -0.00000000

 30  1     2    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00017753  0.00000000  0.00000000 -0.00048896  0.00000000

 31  1     3    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00045678  0.00000000 -0.00017758 -0.00000000 -0.00000000  0.00048894  0.00000000 -0.00000000

 32  1     4    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00041243

 33  1     5    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000034

 34  1     6    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00003904 -0.00000000 -0.00000000  0.57777019 -0.00000000  0.00000000 -0.00000000

 35  1     7    1  |1 0>        0.00000000 -0.00000000 -0.00000002  0.00000002  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.10824346  0.00000000  0.81877703  0.00000053  0.00000000  0.24284033  0.00000007  0.00000000

 36  1     8    1  |1 0>        0.00000000  0.00000000  0.00000002 -0.00000002  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000003 -0.00000000 -0.00000053  0.81879957  0.00000000 -0.00000007  0.24276420 -0.00000000

 37  1     9    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000321
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.57771072

 38  1    10    1  |1 0>       -0.00000001 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000001 -0.00000001  0.00000000
                                0.00000015  0.00000000 -0.00000003  0.04647749 -0.00000000 -0.00000009  0.31961737 -0.00000000

 39  1    11    1  |1 0>        0.00000003 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000001 -0.00000001 -0.00000000
                                0.60379265  0.00000000 -0.04644783 -0.00000003 -0.00000000 -0.31962173 -0.00000009  0.00000000

 40  1    12    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000  0.65080364 -0.00000000 -0.00000000  0.00000001 -0.00000000 -0.00000000 -0.00000000

 41  1    13    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.01024936  0.00000000  0.00000000 -0.00000001  0.00000000 -0.00000000 -0.00000000

 42  1    14    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000411 -0.00000000 -0.00000000  0.00000306 -0.00000000

 43  1    15    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00882582  0.00000000  0.00000410  0.00000000 -0.00000000 -0.00000306 -0.00000000 -0.00000000

 44  1    16    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 45  1     1    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00042812 -0.00000000  0.00000000 -0.00029048  0.00000000

 46  1     2    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00078430  0.00000000  0.00000000 -0.00041348  0.00000000 -0.00000000  0.00000000

 47  1     3    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00041136

 48  1     4    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00045325  0.00000000 -0.00051376 -0.00000000 -0.00000000 -0.00005140 -0.00000000 -0.00000000

 49  1     5    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00078443  0.00000000  0.00015292  0.00000000  0.00000000 -0.00042524 -0.00000000  0.00000000

 50  1     6    1  |1 1>-      -0.00000001 -0.00000000  0.00000001 -0.00000001  0.00000000 -0.00000001  0.00000001  0.00000000
                                0.00000012  0.00000000 -0.00000031  0.48791319  0.00000000  0.00000009 -0.30848882  0.00000000

 51  1     7    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000149
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.26748466

 52  1     8    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000  0.09384663 -0.00000000 -0.00000000  0.42844873 -0.00000000  0.00000000 -0.00000000

 53  1     9    1  |1 1>-       0.00000002 -0.00000000 -0.00000001  0.00000000  0.00000000 -0.00000001  0.00000001  0.00000000
                                0.48525372  0.00000000  0.17673070  0.00000011  0.00000000  0.54938564  0.00000016 -0.00000000

 54  1    10    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.52306434  0.00000000  0.00000000 -0.38668106  0.00000000 -0.00000000  0.00000000

 55  1    11    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000284
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.51106091

 56  1    12    1  |1 1>-      -0.00000001 -0.00000000 -0.00000001  0.00000000  0.00000000  0.00000001 -0.00000001  0.00000000
                                0.00000010  0.00000000  0.00000016 -0.24103007 -0.00000000 -0.00000019  0.66478417 -0.00000000

 57  1    13    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000154  0.00000000 -0.00000000  0.00000177 -0.00000000

 58  1    14    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00512631  0.00000000  0.00000000  0.00000351  0.00000000 -0.00000000 -0.00000000

 59  1    15    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000624

 60  1    16    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000014 -0.00000000  0.00000057  0.00000000 -0.00000000 -0.00000031 -0.00000000 -0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.       33          34          35          36          37          38          39          40

  1  1     1    1  |0 0>       -0.00000000  0.00000074 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  2  1     2    1  |0 0>       -0.00000000  0.00000170 -0.00000000 -0.00000000 -0.00000000  0.00000077 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  3  1     3    1  |0 0>       -0.00000000  0.00000014 -0.00000000  0.00000000 -0.00000000 -0.00000901  0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  4  1     4    1  |0 0>        0.00000000 -0.00000000  0.00000000 -0.00000024  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  5  1     5    1  |0 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000208  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  6  1     6    1  |0 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000024 -0.00000000  0.00000000 -0.00000043
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  7  1     7    1  |0 0>        0.00000000 -0.00000000 -0.00000000 -0.00002779  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  8  1     8    1  |0 0>        0.00000000  0.00000000  0.00000000  0.00000000  0.00002792 -0.00000000  0.00000000 -0.00002027
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  9  1     9    1  |0 0>        0.00000000  0.00000000  0.00000002  0.00000000 -0.00000000  0.00000000  0.00001955 -0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000001 -0.00000000

 10  1    10    1  |0 0>        0.00000000  0.00000036  0.00000000  0.00000000 -0.00000000  0.00011274  0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 11  1    11    1  |0 0>        0.00000000  0.00001211  0.00000000  0.00000000 -0.00000000 -0.00000342 -0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 12  1    12    1  |0 0>       -0.00000000  0.00000658 -0.00000000 -0.00000000  0.00000000  0.00000002 -0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 13  1     1    1  |1 1>+      -0.00000000 -0.00000000 -0.00000000  0.00000224 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 14  1     2    1  |1 1>+      -0.00031846 -0.00000000 -0.00000178  0.00000000  0.00000000  0.00000000  0.00000082  0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 15  1     3    1  |1 1>+      -0.00000000 -0.00000184  0.00000000  0.00000000  0.00000000 -0.00000161  0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 16  1     4    1  |1 1>+      -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000221 -0.00000000 -0.00000000 -0.00000305
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 17  1     5    1  |1 1>+      -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000068 -0.00000000  0.00000000 -0.00000262
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 18  1     6    1  |1 1>+      -0.00000000  0.00000000  0.00000000  0.62262237 -0.00000011 -0.00000000 -0.00000000  0.00000028
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000001

 19  1     7    1  |1 1>+      -0.00000000  0.69938509 -0.00000000 -0.00000000 -0.00000000 -0.04009784 -0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 20  1     8    1  |1 1>+      -0.12499814 -0.00000000 -0.69597462  0.00000000  0.00000000 -0.00000000  0.22278944 -0.00000000
                               -0.00000075 -0.00000000 -0.00027657  0.00000000  0.00000000 -0.00000000 -0.00009812 -0.00000000

 21  1     9    1  |1 1>+      -0.00000000  0.00000000  0.00000000  0.00000011  0.60077317  0.00000000 -0.00000000  0.26036006
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000003

 22  1    10    1  |1 1>+       0.69568775 -0.00000000 -0.12489075 -0.00000000 -0.00000000  0.00000000 -0.48602491 -0.00000000
                                0.00000420 -0.00000000 -0.00004963  0.00000000 -0.00000000  0.00000000  0.00021404  0.00000000

 23  1    11    1  |1 1>+      -0.00000000 -0.10020260  0.00000000  0.00000000 -0.00000000  0.53323021  0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 24  1    12    1  |1 1>+      -0.00000000 -0.00000000 -0.00000000 -0.02860532  0.00000001  0.00000000 -0.00000000 -0.00000083
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000003

 25  1    13    1  |1 1>+       0.00000000 -0.00000000 -0.00000000  0.00000082 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 26  1    14    1  |1 1>+      -0.00000215 -0.00000000 -0.00001020  0.00000000 -0.00000000 -0.00000000 -0.00000893 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 27  1    15    1  |1 1>+       0.00000000 -0.00000966  0.00000000  0.00000000  0.00000000 -0.00000262  0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 28  1    16    1  |1 1>+       0.00000000  0.00000000 -0.00000000  0.00000000  0.00000039 -0.00000000  0.00000000 -0.00000155
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 29  1     1    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000197  0.00000000 -0.00000000

 30  1     2    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000036 -0.00000000  0.00000000 -0.00000195

 31  1     3    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000036 -0.00000000  0.00000000  0.00000000  0.00000000

 32  1     4    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000026  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000343  0.00000000

 33  1     5    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00054904  0.00000000  0.00000210 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 34  1     6    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000739 -0.00000000  0.00000000 -0.00000000  0.65428244  0.00000000  0.00000000

 35  1     7    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000001
                               -0.00000000  0.00000000 -0.00000000  0.48534745 -0.00000009 -0.00000000 -0.00000000 -0.00000021

 36  1     8    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000002
                               -0.00000000 -0.00000000 -0.00000000 -0.00000009 -0.48534155 -0.00000000  0.00000000 -0.15238881

 37  1     9    1  |1 0>        0.00000000  0.00000000 -0.00000003  0.00000000 -0.00000000  0.00000000  0.00028823  0.00000000
                               -0.00035244  0.00000000  0.00007488  0.00000000  0.00000000 -0.00000000  0.65447108  0.00000000

 38  1    10    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000007
                               -0.00000000 -0.00000000 -0.00000000 -0.00000002 -0.12258498 -0.00000000 -0.00000000  0.71541434

 39  1    11    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000003
                                0.00000000 -0.00000000 -0.00000000 -0.12255691  0.00000002  0.00000000 -0.00000000 -0.00000099

 40  1    12    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.04053953 -0.00000000  0.00000000 -0.00000000  0.00001977 -0.00000000  0.00000000

 41  1    13    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000495 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 42  1    14    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000978  0.00000000  0.00000000  0.00002052

 43  1    15    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000975  0.00000000 -0.00000000  0.00000000 -0.00000000

 44  1    16    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000124 -0.00000000 -0.00000088  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 45  1     1    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000224  0.00000000 -0.00000000  0.00000265

 46  1     2    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000184 -0.00000000 -0.00000000 -0.00000000 -0.00000161  0.00000000 -0.00000000

 47  1     3    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00031796 -0.00000000 -0.00000178  0.00000000  0.00000000  0.00000000 -0.00000082  0.00000000

 48  1     4    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000221  0.00000000 -0.00000000 -0.00000000 -0.00000000

 49  1     5    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000068  0.00000000  0.00000000 -0.00000000  0.00000000

 50  1     6    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000002
                                0.00000000  0.00000000  0.00000000  0.00000011  0.62263029  0.00000000 -0.00000000 -0.20170153

 51  1     7    1  |1 1>-      -0.00000075 -0.00000000 -0.00027659  0.00000000  0.00000000 -0.00000000  0.00009805  0.00000000
                                0.12467204  0.00000000  0.69602553  0.00000000 -0.00000000 -0.00000000  0.22263017  0.00000000

 52  1     8    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000  0.69938427 -0.00000000 -0.00000000 -0.00000000  0.04011135 -0.00000000  0.00000000

 53  1     9    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000001
                               -0.00000000 -0.00000000  0.00000000 -0.60078346  0.00000011  0.00000000  0.00000000  0.00000036

 54  1    10    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.10019044 -0.00000000  0.00000000 -0.00000000  0.53325722 -0.00000000  0.00000000

 55  1    11    1  |1 1>-      -0.00000420  0.00000000  0.00004959  0.00000000 -0.00000000  0.00000000  0.00021406  0.00000000
                                0.69631191 -0.00000000 -0.12477953  0.00000000  0.00000000 -0.00000000  0.48605337  0.00000000

 56  1    12    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000006
                               -0.00000000  0.00000000  0.00000000  0.00000001  0.02862899  0.00000000  0.00000000 -0.59706708

 57  1    13    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000082  0.00000000 -0.00000000 -0.00001573

 58  1    14    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000966 -0.00000000 -0.00000000 -0.00000000 -0.00000260 -0.00000000 -0.00000000

 59  1    15    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000216 -0.00000000 -0.00001019  0.00000000 -0.00000000 -0.00000000  0.00000893 -0.00000000

 60  1    16    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000038 -0.00000000 -0.00000000 -0.00000000  0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.       41          42          43          44          45          46          47          48

  1  1     1    1  |0 0>       -0.00000000  0.00000235 -0.00000012  0.00000000  0.00000001  0.00000000 -0.00000000  0.00665340
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  2  1     2    1  |0 0>        0.00000000 -0.00000108 -0.00225753  0.00000000 -0.00012131  0.00000000  0.00000000  0.00000032
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  3  1     3    1  |0 0>       -0.00000000 -0.00000009 -0.00012142  0.00000000  0.00225661 -0.00000000  0.00000000  0.00000002
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  4  1     4    1  |0 0>        0.00000043  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00226157  0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  5  1     5    1  |0 0>        0.00000000  0.00000000  0.00000000  0.00226114 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000016 -0.00000000 -0.00000000  0.00000000 -0.00000000

  6  1     6    1  |0 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00226157 -0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  7  1     7    1  |0 0>        0.00002032 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000018  0.91554640  0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  8  1     8    1  |0 0>       -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.91554643  0.00000018 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000001 -0.00000000 -0.00000000

  9  1     9    1  |0 0>        0.00000000  0.00000000  0.00000002  0.91554408 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00006569 -0.00000000 -0.00000000  0.00000000  0.00000000

 10  1    10    1  |0 0>       -0.00000000 -0.00000013  0.05645006  0.00000000  0.91377703 -0.00000000  0.00000000 -0.00000027
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 11  1    11    1  |0 0>       -0.00000000 -0.00000487  0.91371482 -0.00000002 -0.05644987 -0.00000000 -0.00000000  0.00002141
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 12  1    12    1  |0 0>       -0.00000000  0.00001840 -0.00000104  0.00000000  0.00000019  0.00000000 -0.00000000  0.16362659
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 13  1     1    1  |1 1>+       0.00000265  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00120061 -0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 14  1     2    1  |1 1>+       0.00000000 -0.00000000  0.00000000  0.00119949 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000009 -0.00000000 -0.00000000  0.00000000  0.00000000

 15  1     3    1  |1 1>+      -0.00000000  0.00000130  0.00211089 -0.00000000  0.00112915 -0.00000000 -0.00000000  0.00000050
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 16  1     4    1  |1 1>+      -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00120051  0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 17  1     5    1  |1 1>+      -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00207324 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 18  1     6    1  |1 1>+      -0.20172609  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000001 -0.05027293 -0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 19  1     7    1  |1 1>+       0.00000000 -0.04425960  0.01156131 -0.00000000  0.05752857 -0.00000000  0.00000000 -0.00000869
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 20  1     8    1  |1 1>+      -0.00000000  0.00000000  0.00000000  0.06342877 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000455 -0.00000000 -0.00000000  0.00000000 -0.00000000

 21  1     9    1  |1 1>+       0.00000036 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.05028636 -0.00000001  0.00000000
                                0.00000001  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 22  1    10    1  |1 1>+      -0.00000000 -0.00000000 -0.00000000 -0.00477190  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000034  0.00000000  0.00000000 -0.00000000  0.00000000

 23  1    11    1  |1 1>+      -0.00000000 -0.46166970  0.05348080 -0.00000000 -0.02828482 -0.00000000 -0.00000000  0.00002023
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 24  1    12    1  |1 1>+       0.59706825 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000001  0.03897205  0.00000000
                                0.00000001 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 25  1    13    1  |1 1>+       0.00001572  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000005 -0.27488965 -0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 26  1    14    1  |1 1>+       0.00000000  0.00000000 -0.00000001 -0.27490378  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00001972  0.00000000  0.00000000 -0.00000000 -0.00000000

 27  1    15    1  |1 1>+       0.00000000 -0.00002034  0.15002304 -0.00000000 -0.27980927  0.00000000 -0.00000000 -0.56955891
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 28  1    16    1  |1 1>+      -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000027 -0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 29  1     1    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00007549  0.00000000  0.00238957 -0.00000000  0.00000000 -0.00000000

 30  1     2    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00119978 -0.00000000 -0.00000000

 31  1     3    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000195 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00119978  0.00000000

 32  1     4    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000017 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00239136  0.00000000 -0.00000000 -0.00000000 -0.00000000

 33  1     5    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000003  0.00000000 -0.00000000  0.00000000  0.00000000

 34  1     6    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00001753  0.00158720  0.00000000  0.05023755 -0.00000000  0.00000000 -0.00000006

 35  1     7    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.15236977 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.01121609  0.00000000

 36  1     8    1  |1 0>        0.00000001  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000021 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.01121601 -0.00000000 -0.00000000

 37  1     9    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000361 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.05029083  0.00000000 -0.00000000 -0.00000000  0.00000000

 38  1    10    1  |1 0>       -0.00000003 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000099 -0.00000000  0.00000000 -0.00000000  0.00000000  0.06263824  0.00000001 -0.00000000

 39  1    11    1  |1 0>       -0.00000002  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.71541912 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000001 -0.06263826  0.00000000

 40  1    12    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.75487122  0.06758627 -0.00000000 -0.00213526 -0.00000000 -0.00000000 -0.00003014

 41  1    13    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00002541  0.31738068 -0.00000001 -0.01002658 -0.00000000 -0.00000000  0.56954941

 42  1    14    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.27490446 -0.00000005  0.00000000

 43  1    15    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00002053  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000005  0.27490449  0.00000000

 44  1    16    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 45  1     1    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00120061 -0.00000000 -0.00000000

 46  1     2    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000130 -0.00203540  0.00000000  0.00126015  0.00000000  0.00000000 -0.00000050

 47  1     3    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000009 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00119949  0.00000000 -0.00000000 -0.00000000  0.00000000

 48  1     4    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000305  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00120057  0.00000000

 49  1     5    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000262 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00207321  0.00000000

 50  1     6    1  |1 1>-       0.00000001  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000028  0.00000000  0.00000000 -0.00000000  0.00000000  0.05027284  0.00000001 -0.00000000

 51  1     7    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000455  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000  0.06342875 -0.00000000  0.00000000  0.00000000  0.00000000

 52  1     8    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.04426165  0.00790683 -0.00000000 -0.05814362  0.00000000 -0.00000000 -0.00000858

 53  1     9    1  |1 1>-       0.00000001 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.26033636  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000001 -0.05028626 -0.00000000

 54  1    10    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.46164111 -0.05515958  0.00000000 -0.02485256  0.00000000  0.00000000 -0.00002020

 55  1    11    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000034  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000  0.00477188 -0.00000000  0.00000000  0.00000000  0.00000000

 56  1    12    1  |1 1>-       0.00000003  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000083  0.00000000  0.00000000 -0.00000000  0.00000000  0.03897209  0.00000001 -0.00000000

 57  1    13    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.27488960 -0.00000005  0.00000000

 58  1    14    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00002033 -0.16738614  0.00000000 -0.26978000  0.00000000  0.00000000  0.56955964

 59  1    15    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00001972  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000001  0.27490384 -0.00000000  0.00000000  0.00000000 -0.00000000

 60  1    16    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000156 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000026 -0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.       49          50          51          52          53          54          55          56

  1  1     1    1  |0 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000013
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  2  1     2    1  |0 0>       -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00031584 -0.00366999
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  3  1     3    1  |0 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00367418 -0.00031549
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  4  1     4    1  |0 0>       -0.00000000  0.00000000  0.00000005 -0.00000000  0.00000000  0.00369499 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  5  1     5    1  |0 0>       -0.00000000  0.00000000 -0.00000000  0.00369462  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000021 -0.00000000 -0.00000000 -0.00000000  0.00000000

  6  1     6    1  |0 0>       -0.00000000 -0.00000005  0.00000000 -0.00000000  0.00369500 -0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  7  1     7    1  |0 0>       -0.00000000 -0.00000000 -0.00002300 -0.00000000  0.00000036  0.38780642 -0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000001  0.00000001 -0.00000000 -0.00000000

  8  1     8    1  |0 0>        0.00000000  0.00002302 -0.00000000 -0.00000000  0.38780636 -0.00000036  0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000001 -0.00000001 -0.00000000 -0.00000000

  9  1     9    1  |0 0>       -0.00000003 -0.00000000  0.00000000 -0.38781735 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00002181  0.00000000  0.00000000  0.00000000 -0.00000000

 10  1    10    1  |0 0>        0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.38768696 -0.01150689
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 11  1    11    1  |0 0>        0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.01150405 -0.38778837
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 12  1    12    1  |0 0>        0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000002  0.00001166
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 13  1     1    1  |1 1>+       0.00000000  0.00000000  0.00032091 -0.00000000  0.00000000  0.00016858 -0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 14  1     2    1  |1 1>+       0.00032025 -0.00000000 -0.00000000 -0.00016885 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000010 -0.00000000  0.00000000  0.00000001  0.00000000  0.00000000  0.00000000 -0.00000000

 15  1     3    1  |1 1>+       0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00016728 -0.00029056
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 16  1     4    1  |1 1>+      -0.00000000 -0.00032038  0.00000000 -0.00000000  0.00016911 -0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 17  1     5    1  |1 1>+      -0.00000000 -0.00017996  0.00000000  0.00000000 -0.00029178  0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 18  1     6    1  |1 1>+       0.00000000  0.00000000  0.00001264  0.00000000 -0.00000001 -0.01466010  0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 19  1     7    1  |1 1>+       0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.01686001 -0.00282538
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 20  1     8    1  |1 1>+      -0.00001042  0.00000000  0.00000000 -0.01849293 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000104  0.00000000  0.00000000  0.00000000 -0.00000000

 21  1     9    1  |1 1>+      -0.00000000 -0.00000543  0.00000000  0.00000000 -0.01465683  0.00000001 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 22  1    10    1  |1 1>+       0.00000031  0.00000000  0.00000000  0.00139206  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000008 -0.00000000 -0.00000000 -0.00000000  0.00000000

 23  1    11    1  |1 1>+       0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00774036 -0.01583369
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 24  1    12    1  |1 1>+      -0.00000000 -0.00000000 -0.00001629 -0.00000000  0.00000001  0.01136778 -0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 25  1    13    1  |1 1>+       0.00000000  0.00000047  0.70702890 -0.00000000  0.00000061  0.65144223 -0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000002  0.00000003 -0.00000000 -0.00000000

 26  1    14    1  |1 1>+       0.70704903 -0.00000000 -0.00000000 -0.65141439 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00021563 -0.00000000 -0.00000000  0.00003664  0.00000000  0.00000000  0.00000000 -0.00000000

 27  1    15    1  |1 1>+      -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.65123203  0.37635613
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 28  1    16    1  |1 1>+      -0.00000000 -0.01276983  0.00000001 -0.00000000  0.00000429 -0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 29  1     1    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00033302  0.00000015

 30  1     2    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00032087  0.00000000  0.00000000 -0.00016839  0.00000000 -0.00000000  0.00000000

 31  1     3    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00032087 -0.00000000  0.00000000  0.00016839 -0.00000000 -0.00000000

 32  1     4    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000002  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000001 -0.00000000 -0.00000000  0.00033434  0.00000000  0.00000000 -0.00000000  0.00000000

 33  1     5    1  |1 0>        0.00000011 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00037375  0.00000000  0.00000000 -0.00000001 -0.00000000  0.00000000  0.00000000 -0.00000000

 34  1     6    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.01463357  0.00000663

 35  1     7    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000156  0.00000000 -0.00000000 -0.00327030  0.00000000  0.00000000

 36  1     8    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000156 -0.00000000  0.00000000 -0.00327029  0.00000000 -0.00000000  0.00000000

 37  1     9    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000082  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.01464731  0.00000000  0.00000000 -0.00000000  0.00000000

 38  1    10    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00001638  0.00000000 -0.00000000  0.01826456 -0.00000002  0.00000000 -0.00000000

 39  1    11    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00001638  0.00000000 -0.00000002 -0.01826456  0.00000000  0.00000000

 40  1    12    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000892 -0.01970225

 41  1    13    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00034075  0.75214657

 42  1    14    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000001  0.00000002  0.00000000  0.00000000
                                0.00000000  0.70706912 -0.00000047 -0.00000000  0.65139245 -0.00000061  0.00000000 -0.00000000

 43  1    15    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000002  0.00000003 -0.00000000 -0.00000000
                                0.00000000  0.00000047  0.70706911  0.00000000 -0.00000061 -0.65139244  0.00000000  0.00000000

 44  1    16    1  |1 0>       -0.00000389  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.01276710 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 45  1     1    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00032091 -0.00000000  0.00000000 -0.00016858  0.00000000 -0.00000000  0.00000000

 46  1     2    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00016702  0.00029071

 47  1     3    1  |1 1>-      -0.00000010  0.00000000  0.00000000  0.00000001  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00032025 -0.00000000 -0.00000000  0.00016885  0.00000000  0.00000000 -0.00000000  0.00000000

 48  1     4    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000  0.00032037 -0.00000000  0.00000000  0.00016911 -0.00000000 -0.00000000

 49  1     5    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00017996 -0.00000000  0.00000000  0.00029177 -0.00000000 -0.00000000

 50  1     6    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000  0.00001265 -0.00000000 -0.00000000  0.01466008 -0.00000001  0.00000000 -0.00000000

 51  1     7    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000104 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00001042 -0.00000000  0.00000000 -0.01849292 -0.00000000 -0.00000000  0.00000000 -0.00000000

 52  1     8    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.01685745 -0.00284065

 53  1     9    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000544  0.00000000 -0.00000001 -0.01465680  0.00000000  0.00000000

 54  1    10    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00775469  0.01582666

 55  1    11    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000008 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000031 -0.00000000 -0.00000000 -0.00139206 -0.00000000 -0.00000000  0.00000000 -0.00000000

 56  1    12    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000  0.00001629 -0.00000000 -0.00000000  0.01136779 -0.00000001  0.00000000 -0.00000000

 57  1    13    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000001  0.00000002  0.00000000  0.00000000
                               -0.00000000 -0.70702889  0.00000047 -0.00000000  0.65144226 -0.00000061  0.00000000 -0.00000000

 58  1    14    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.65157257 -0.37576619

 59  1    15    1  |1 1>-      -0.00021563  0.00000000  0.00000000  0.00003664  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.70704896 -0.00000000 -0.00000000  0.65141444  0.00000000  0.00000000 -0.00000000  0.00000000

 60  1    16    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000001 -0.01276983  0.00000000 -0.00000000 -0.00000430  0.00000000 -0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.       57          58          59          60

  1  1     1    1  |0 0>        0.00000000  0.00000000 -0.00000000 -0.00100641
                               -0.00000000  0.00000000 -0.00000000 -0.00000000

  2  1     2    1  |0 0>       -0.00000000  0.00000000  0.00000000 -0.00000001
                               -0.00000000  0.00000000  0.00000000  0.00000000

  3  1     3    1  |0 0>        0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000

  4  1     4    1  |0 0>        0.00000000 -0.00000000 -0.00000003 -0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000

  5  1     5    1  |0 0>       -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000

  6  1     6    1  |0 0>        0.00000000  0.00000003 -0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000

  7  1     7    1  |0 0>        0.00000000  0.00000000  0.00000115 -0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000

  8  1     8    1  |0 0>        0.00000000 -0.00000114  0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000

  9  1     9    1  |0 0>       -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000

 10  1    10    1  |0 0>        0.00000000 -0.00000000  0.00000000  0.00000006
                                0.00000000  0.00000000  0.00000000 -0.00000000

 11  1    11    1  |0 0>       -0.00000000  0.00000000 -0.00000000  0.00000174
                               -0.00000000  0.00000000  0.00000000  0.00000000

 12  1    12    1  |0 0>        0.00000000  0.00000000 -0.00000000  0.98652234
                                0.00000000  0.00000000  0.00000000  0.00000000

 13  1     1    1  |1 1>+      -0.00000000  0.00000000  0.00000362  0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000

 14  1     2    1  |1 1>+      -0.00000372 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000

 15  1     3    1  |1 1>+       0.00000000  0.00000000 -0.00000000  0.00000018
                               -0.00000000 -0.00000000 -0.00000000  0.00000000

 16  1     4    1  |1 1>+       0.00000000 -0.00000361  0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000

 17  1     5    1  |1 1>+       0.00000000 -0.00000203  0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000

 18  1     6    1  |1 1>+      -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000

 19  1     7    1  |1 1>+      -0.00000000 -0.00000000 -0.00000000 -0.00000214
                               -0.00000000  0.00000000  0.00000000 -0.00000000

 20  1     8    1  |1 1>+      -0.00000032 -0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000

 21  1     9    1  |1 1>+       0.00000000  0.00000002  0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000

 22  1    10    1  |1 1>+      -0.00000097 -0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000

 23  1    11    1  |1 1>+       0.00000000  0.00000000  0.00000000  0.00000745
                                0.00000000 -0.00000000 -0.00000000 -0.00000000

 24  1    12    1  |1 1>+       0.00000000  0.00000000  0.00000106  0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000

 25  1    13    1  |1 1>+      -0.00000000  0.00000002  0.00903225  0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000

 26  1    14    1  |1 1>+      -0.00902770 -0.00000000 -0.00000000  0.00000000
                               -0.00000006 -0.00000000 -0.00000000  0.00000000

 27  1    15    1  |1 1>+       0.00000000  0.00000000 -0.00000000  0.09446433
                                0.00000000  0.00000000  0.00000000 -0.00000000

 28  1    16    1  |1 1>+      -0.00000004  0.99991846 -0.00000171 -0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000

 29  1     1    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000

 30  1     2    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000351  0.00000000 -0.00000000

 31  1     3    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000351  0.00000000

 32  1     4    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000

 33  1     5    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000421  0.00000000  0.00000000  0.00000000

 34  1     6    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000002

 35  1     7    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000036  0.00000000

 36  1     8    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000036 -0.00000000 -0.00000000

 37  1     9    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000

 38  1    10    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000090 -0.00000000  0.00000000

 39  1    11    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000090  0.00000000

 40  1    12    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000690

 41  1    13    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.09447557

 42  1    14    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00902702 -0.00000002 -0.00000000

 43  1    15    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000002  0.00902702  0.00000000

 44  1    16    1  |1 0>       -0.00000625 -0.00000000 -0.00000000  0.00000000
                                0.99991850  0.00000004  0.00000003 -0.00000000

 45  1     1    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000362 -0.00000000 -0.00000000

 46  1     2    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000017

 47  1     3    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000372 -0.00000000 -0.00000000 -0.00000000

 48  1     4    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000361  0.00000000

 49  1     5    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000203  0.00000000

 50  1     6    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000

 51  1     7    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000032  0.00000000  0.00000000  0.00000000

 52  1     8    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000213

 53  1     9    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000002 -0.00000000

 54  1    10    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000746

 55  1    11    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000097 -0.00000000 -0.00000000  0.00000000

 56  1    12    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000106  0.00000000 -0.00000000

 57  1    13    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00903225  0.00000002 -0.00000000

 58  1    14    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.09446435

 59  1    15    1  |1 1>-       0.00000006  0.00000000  0.00000000  0.00000000
                               -0.00902771 -0.00000000 -0.00000000 -0.00000000

 60  1    16    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000003  0.00000171  0.99991846  0.00000000



 Composition of spin-orbit eigenvectors
 ======================================
   Total
 Nr Sym  State Sym Spin / Nr.      1        2        3        4        5        6        7        8

  1  1     1    1  |0 0>        100.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.01%    1.12%    0.00%    0.00%
  3  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    1.12%    0.01%    0.00%    0.00%
  4  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    1.13%
  5  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    1.13%    0.00%
  6  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  7  1     7    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  8  1     8    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  9  1     9    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 10  1    10    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1    11    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1    12    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 13  1     1    1  |1 1>+         0.00%    0.00%   30.01%    0.00%    0.00%    0.00%    0.00%   16.48%
 14  1     2    1  |1 1>+         0.00%    0.00%    0.00%   30.00%    0.00%    0.00%   16.48%    0.00%
 15  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.00%   16.38%   49.54%    0.00%    0.00%
 16  1     4    1  |1 1>+         0.00%   29.99%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 17  1     5    1  |1 1>+         0.00%   10.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
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
 29  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%   65.92%    0.00%    0.00%    0.00%
 30  1     2    1  |1 0>          0.00%   30.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 31  1     3    1  |1 0>          0.00%    0.00%   30.00%    0.00%    0.00%    0.00%    0.00%   16.48%
 32  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   65.90%    0.00%
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
 46  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%   16.58%   49.33%    0.00%    0.00%
 47  1     3    1  |1 1>-         0.00%    0.00%    0.00%   30.00%    0.00%    0.00%   16.48%    0.00%
 48  1     4    1  |1 1>-         0.00%    0.00%   29.99%    0.00%    0.00%    0.00%    0.00%   16.48%
 49  1     5    1  |1 1>-         0.00%    0.00%   10.00%    0.00%    0.00%    0.00%    0.00%   49.43%
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
  6  1     6    1  |0 0>          1.13%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  7  1     7    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  8  1     8    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  9  1     9    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 10  1    10    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1    11    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1    12    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 13  1     1    1  |1 1>+         0.00%    0.00%   53.16%    0.00%    0.00%    0.00%    0.16%    0.00%
 14  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.00%   26.32%    0.00%    0.00%   27.00%
 15  1     3    1  |1 1>+         0.00%    0.00%    0.00%   33.33%    0.00%    0.00%    0.00%    0.00%
 16  1     4    1  |1 1>+        16.47%   38.23%    0.00%    0.00%    0.00%   15.12%    0.00%    0.00%
 17  1     5    1  |1 1>+        49.43%    3.69%    0.00%    0.00%    0.00%   36.31%    0.00%    0.00%
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
 30  1     2    1  |1 0>         16.48%    4.92%    0.00%    0.00%    0.00%   48.40%    0.00%    0.00%
 31  1     3    1  |1 0>          0.00%    0.00%    4.88%    0.00%    0.00%    0.00%   48.45%    0.00%
 32  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.48%    0.00%    0.00%   32.86%
 33  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.00%   59.15%    0.00%    0.00%    0.86%
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
 45  1     1    1  |1 1>-        16.48%   53.16%    0.00%    0.00%    0.00%    0.17%    0.00%    0.00%
 46  1     2    1  |1 1>-         0.00%    0.00%    0.00%   33.33%    0.00%    0.00%    0.00%    0.00%
 47  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%   14.05%    0.00%    0.00%   39.27%
 48  1     4    1  |1 1>-         0.00%    0.00%   38.30%    0.00%    0.00%    0.00%   15.04%    0.00%
 49  1     5    1  |1 1>-         0.00%    0.00%    3.66%    0.00%    0.00%    0.00%   36.35%    0.00%
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
  2  1     2    1  |0 0>         98.65%    0.22%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  3  1     3    1  |0 0>          0.22%   98.65%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  4  1     4    1  |0 0>          0.00%    0.00%   98.86%    0.00%    0.00%    0.00%    0.00%    0.00%
  5  1     5    1  |0 0>          0.00%    0.00%    0.00%   98.86%    0.00%    0.00%    0.00%    0.00%
  6  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%   98.86%    0.00%    0.00%    0.00%
  7  1     7    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  8  1     8    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    1.14%
  9  1     9    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    1.14%    0.00%
 10  1    10    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    1.14%    0.00%    0.00%
 11  1    11    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1    12    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 13  1     1    1  |1 1>+         0.00%    0.00%    0.19%    0.00%    0.00%    0.00%    0.00%    0.00%
 14  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.19%    0.00%    0.00%    0.00%    0.00%
 15  1     3    1  |1 1>+         0.59%    0.16%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 16  1     4    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.19%    0.00%    0.00%    0.00%
 17  1     5    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.56%    0.00%    0.00%    0.00%
 18  1     6    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 19  1     7    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%   31.12%    0.00%    0.00%
 20  1     8    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   37.45%    0.00%
 21  1     9    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   23.55%
 22  1    10    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.21%    0.00%
 23  1    11    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    6.53%    0.00%    0.00%
 24  1    12    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 25  1    13    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 26  1    14    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    0.00%
 27  1    15    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    0.00%    0.00%
 28  1    16    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 29  1     1    1  |1 0>          0.00%    0.75%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 30  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.19%    0.00%    0.00%    0.00%
 31  1     3    1  |1 0>          0.00%    0.00%    0.19%    0.00%    0.00%    0.00%    0.00%    0.00%
 32  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.75%    0.00%    0.00%    0.00%    0.00%
 33  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 34  1     6    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%   23.53%    0.00%    0.00%
 35  1     7    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 36  1     8    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    1.17%
 37  1     9    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   23.52%    0.00%
 38  1    10    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   36.46%
 39  1    11    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 40  1    12    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 41  1    13    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 42  1    14    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.01%
 43  1    15    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 44  1    16    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 45  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.19%    0.00%    0.00%    0.00%
 46  1     2    1  |1 1>-         0.54%    0.21%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 47  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.19%    0.00%    0.00%    0.00%    0.00%
 48  1     4    1  |1 1>-         0.00%    0.00%    0.19%    0.00%    0.00%    0.00%    0.00%    0.00%
 49  1     5    1  |1 1>-         0.00%    0.00%    0.56%    0.00%    0.00%    0.00%    0.00%    0.00%
 50  1     6    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   23.57%
 51  1     7    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   37.45%    0.00%
 52  1     8    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%   31.12%    0.00%    0.00%
 53  1     9    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 54  1    10    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    6.54%    0.00%    0.00%
 55  1    11    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.21%    0.00%
 56  1    12    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   14.10%
 57  1    13    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.01%
 58  1    14    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    0.00%    0.00%
 59  1    15    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    0.00%
 60  1    16    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.     25       26       27       28       29       30       31       32

  1  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  3  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  4  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  5  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  6  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  7  1     7    1  |0 0>          1.14%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  8  1     8    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  9  1     9    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 10  1    10    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1    11    1  |0 0>          0.00%    1.14%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1    12    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 13  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 14  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 15  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 16  1     4    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 17  1     5    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 18  1     6    1  |1 1>+        23.57%    0.00%   23.81%    0.00%    0.00%    9.51%    0.00%    0.00%
 19  1     7    1  |1 1>+         0.00%    0.88%    0.00%    0.00%   18.36%    0.00%    0.00%    0.00%
 20  1     8    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    7.15%
 21  1     9    1  |1 1>+         0.00%    0.00%    0.00%    3.13%    0.00%    0.00%   30.18%    0.00%
 22  1    10    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   26.21%
 23  1    11    1  |1 1>+         0.00%   27.36%    0.00%    0.00%   14.95%    0.00%    0.00%    0.00%
 24  1    12    1  |1 1>+        14.10%    0.00%    5.81%    0.00%    0.00%   44.19%    0.00%    0.00%
 25  1    13    1  |1 1>+         0.01%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 26  1    14    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 27  1    15    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 28  1    16    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 29  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 30  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 31  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 32  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 33  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 34  1     6    1  |1 0>          0.00%    0.00%    0.00%    0.00%   33.38%    0.00%    0.00%    0.00%
 35  1     7    1  |1 0>          1.17%    0.00%   67.04%    0.00%    0.00%    5.90%    0.00%    0.00%
 36  1     8    1  |1 0>          0.00%    0.00%    0.00%   67.04%    0.00%    0.00%    5.89%    0.00%
 37  1     9    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   33.37%
 38  1    10    1  |1 0>          0.00%    0.00%    0.00%    0.22%    0.00%    0.00%   10.22%    0.00%
 39  1    11    1  |1 0>         36.46%    0.00%    0.22%    0.00%    0.00%   10.22%    0.00%    0.00%
 40  1    12    1  |1 0>          0.00%   42.35%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 41  1    13    1  |1 0>          0.00%    0.01%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 42  1    14    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 43  1    15    1  |1 0>          0.01%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 44  1    16    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 45  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 46  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 47  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 48  1     4    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 49  1     5    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 50  1     6    1  |1 1>-         0.00%    0.00%    0.00%   23.81%    0.00%    0.00%    9.52%    0.00%
 51  1     7    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    7.15%
 52  1     8    1  |1 1>-         0.00%    0.88%    0.00%    0.00%   18.36%    0.00%    0.00%    0.00%
 53  1     9    1  |1 1>-        23.55%    0.00%    3.12%    0.00%    0.00%   30.18%    0.00%    0.00%
 54  1    10    1  |1 1>-         0.00%   27.36%    0.00%    0.00%   14.95%    0.00%    0.00%    0.00%
 55  1    11    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   26.12%
 56  1    12    1  |1 1>-         0.00%    0.00%    0.00%    5.81%    0.00%    0.00%   44.19%    0.00%
 57  1    13    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 58  1    14    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 59  1    15    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
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
 18  1     6    1  |1 1>+         0.00%    0.00%    0.00%   38.77%    0.00%    0.00%    0.00%    0.00%
 19  1     7    1  |1 1>+         0.00%   48.91%    0.00%    0.00%    0.00%    0.16%    0.00%    0.00%
 20  1     8    1  |1 1>+         1.56%    0.00%   48.44%    0.00%    0.00%    0.00%    4.96%    0.00%
 21  1     9    1  |1 1>+         0.00%    0.00%    0.00%    0.00%   36.09%    0.00%    0.00%    6.78%
 22  1    10    1  |1 1>+        48.40%    0.00%    1.56%    0.00%    0.00%    0.00%   23.62%    0.00%
 23  1    11    1  |1 1>+         0.00%    1.00%    0.00%    0.00%    0.00%   28.43%    0.00%    0.00%
 24  1    12    1  |1 1>+         0.00%    0.00%    0.00%    0.08%    0.00%    0.00%    0.00%    0.00%
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
 35  1     7    1  |1 0>          0.00%    0.00%    0.00%   23.56%    0.00%    0.00%    0.00%    0.00%
 36  1     8    1  |1 0>          0.00%    0.00%    0.00%    0.00%   23.56%    0.00%    0.00%    2.32%
 37  1     9    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   42.83%    0.00%
 38  1    10    1  |1 0>          0.00%    0.00%    0.00%    0.00%    1.50%    0.00%    0.00%   51.18%
 39  1    11    1  |1 0>          0.00%    0.00%    0.00%    1.50%    0.00%    0.00%    0.00%    0.00%
 40  1    12    1  |1 0>          0.00%    0.16%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 41  1    13    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 42  1    14    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 43  1    15    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 44  1    16    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 45  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 46  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 47  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 48  1     4    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 49  1     5    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 50  1     6    1  |1 1>-         0.00%    0.00%    0.00%    0.00%   38.77%    0.00%    0.00%    4.07%
 51  1     7    1  |1 1>-         1.55%    0.00%   48.45%    0.00%    0.00%    0.00%    4.96%    0.00%
 52  1     8    1  |1 1>-         0.00%   48.91%    0.00%    0.00%    0.00%    0.16%    0.00%    0.00%
 53  1     9    1  |1 1>-         0.00%    0.00%    0.00%   36.09%    0.00%    0.00%    0.00%    0.00%
 54  1    10    1  |1 1>-         0.00%    1.00%    0.00%    0.00%    0.00%   28.44%    0.00%    0.00%
 55  1    11    1  |1 1>-        48.49%    0.00%    1.56%    0.00%    0.00%    0.00%   23.62%    0.00%
 56  1    12    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.08%    0.00%    0.00%   35.65%
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
  7  1     7    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   83.82%    0.00%
  8  1     8    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%   83.82%    0.00%    0.00%
  9  1     9    1  |0 0>          0.00%    0.00%    0.00%   83.82%    0.00%    0.00%    0.00%    0.00%
 10  1    10    1  |0 0>          0.00%    0.00%    0.32%    0.00%   83.50%    0.00%    0.00%    0.00%
 11  1    11    1  |0 0>          0.00%    0.00%   83.49%    0.00%    0.32%    0.00%    0.00%    0.00%
 12  1    12    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    2.68%
 13  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 14  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 15  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 16  1     4    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 17  1     5    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 18  1     6    1  |1 1>+         4.07%    0.00%    0.00%    0.00%    0.00%    0.00%    0.25%    0.00%
 19  1     7    1  |1 1>+         0.00%    0.20%    0.01%    0.00%    0.33%    0.00%    0.00%    0.00%
 20  1     8    1  |1 1>+         0.00%    0.00%    0.00%    0.40%    0.00%    0.00%    0.00%    0.00%
 21  1     9    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.25%    0.00%    0.00%
 22  1    10    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 23  1    11    1  |1 1>+         0.00%   21.31%    0.29%    0.00%    0.08%    0.00%    0.00%    0.00%
 24  1    12    1  |1 1>+        35.65%    0.00%    0.00%    0.00%    0.00%    0.00%    0.15%    0.00%
 25  1    13    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    7.56%    0.00%
 26  1    14    1  |1 1>+         0.00%    0.00%    0.00%    7.56%    0.00%    0.00%    0.00%    0.00%
 27  1    15    1  |1 1>+         0.00%    0.00%    2.25%    0.00%    7.83%    0.00%    0.00%   32.44%
 28  1    16    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 29  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 30  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 31  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 32  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 33  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 34  1     6    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.25%    0.00%    0.00%    0.00%
 35  1     7    1  |1 0>          2.32%    0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    0.00%
 36  1     8    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    0.00%    0.00%
 37  1     9    1  |1 0>          0.00%    0.00%    0.00%    0.25%    0.00%    0.00%    0.00%    0.00%
 38  1    10    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.39%    0.00%    0.00%
 39  1    11    1  |1 0>         51.18%    0.00%    0.00%    0.00%    0.00%    0.00%    0.39%    0.00%
 40  1    12    1  |1 0>          0.00%   56.98%    0.46%    0.00%    0.00%    0.00%    0.00%    0.00%
 41  1    13    1  |1 0>          0.00%    0.00%   10.07%    0.00%    0.01%    0.00%    0.00%   32.44%
 42  1    14    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    7.56%    0.00%    0.00%
 43  1    15    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    7.56%    0.00%
 44  1    16    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 45  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 46  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 47  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 48  1     4    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 49  1     5    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 50  1     6    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.25%    0.00%    0.00%
 51  1     7    1  |1 1>-         0.00%    0.00%    0.00%    0.40%    0.00%    0.00%    0.00%    0.00%
 52  1     8    1  |1 1>-         0.00%    0.20%    0.01%    0.00%    0.34%    0.00%    0.00%    0.00%
 53  1     9    1  |1 1>-         6.78%    0.00%    0.00%    0.00%    0.00%    0.00%    0.25%    0.00%
 54  1    10    1  |1 1>-         0.00%   21.31%    0.30%    0.00%    0.06%    0.00%    0.00%    0.00%
 55  1    11    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 56  1    12    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.15%    0.00%    0.00%
 57  1    13    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    7.56%    0.00%    0.00%
 58  1    14    1  |1 1>-         0.00%    0.00%    2.80%    0.00%    7.28%    0.00%    0.00%   32.44%
 59  1    15    1  |1 1>-         0.00%    0.00%    0.00%    7.56%    0.00%    0.00%    0.00%    0.00%
 60  1    16    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.     49       50       51       52       53       54       55       56

  1  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  3  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  4  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  5  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  6  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  7  1     7    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%   15.04%    0.00%    0.00%
  8  1     8    1  |0 0>          0.00%    0.00%    0.00%    0.00%   15.04%    0.00%    0.00%    0.00%
  9  1     9    1  |0 0>          0.00%    0.00%    0.00%   15.04%    0.00%    0.00%    0.00%    0.00%
 10  1    10    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   15.03%    0.01%
 11  1    11    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.01%   15.04%
 12  1    12    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 13  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 14  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 15  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 16  1     4    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 17  1     5    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 18  1     6    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.02%    0.00%    0.00%
 19  1     7    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.03%    0.00%
 20  1     8    1  |1 1>+         0.00%    0.00%    0.00%    0.03%    0.00%    0.00%    0.00%    0.00%
 21  1     9    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.02%    0.00%    0.00%    0.00%
 22  1    10    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 23  1    11    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    0.03%
 24  1    12    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    0.00%    0.00%
 25  1    13    1  |1 1>+         0.00%    0.00%   49.99%    0.00%    0.00%   42.44%    0.00%    0.00%
 26  1    14    1  |1 1>+        49.99%    0.00%    0.00%   42.43%    0.00%    0.00%    0.00%    0.00%
 27  1    15    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   42.41%   14.16%
 28  1    16    1  |1 1>+         0.00%    0.02%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 29  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 30  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 31  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 32  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 33  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 34  1     6    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.02%    0.00%
 35  1     7    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 36  1     8    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 37  1     9    1  |1 0>          0.00%    0.00%    0.00%    0.02%    0.00%    0.00%    0.00%    0.00%
 38  1    10    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.03%    0.00%    0.00%    0.00%
 39  1    11    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.03%    0.00%    0.00%
 40  1    12    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.04%
 41  1    13    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   56.57%
 42  1    14    1  |1 0>          0.00%   49.99%    0.00%    0.00%   42.43%    0.00%    0.00%    0.00%
 43  1    15    1  |1 0>          0.00%    0.00%   49.99%    0.00%    0.00%   42.43%    0.00%    0.00%
 44  1    16    1  |1 0>          0.02%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 45  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 46  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 47  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 48  1     4    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 49  1     5    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 50  1     6    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.02%    0.00%    0.00%    0.00%
 51  1     7    1  |1 1>-         0.00%    0.00%    0.00%    0.03%    0.00%    0.00%    0.00%    0.00%
 52  1     8    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.03%    0.00%
 53  1     9    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.02%    0.00%    0.00%
 54  1    10    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    0.03%
 55  1    11    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 56  1    12    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.01%    0.00%    0.00%    0.00%
 57  1    13    1  |1 1>-         0.00%   49.99%    0.00%    0.00%   42.44%    0.00%    0.00%    0.00%
 58  1    14    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   42.45%   14.12%
 59  1    15    1  |1 1>-        49.99%    0.00%    0.00%   42.43%    0.00%    0.00%    0.00%    0.00%
 60  1    16    1  |1 1>-         0.00%    0.00%    0.02%    0.00%    0.00%    0.00%    0.00%    0.00%

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
 12  1    12    1  |0 0>          0.00%    0.00%    0.00%   97.32%
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
 25  1    13    1  |1 1>+         0.00%    0.00%    0.01%    0.00%
 26  1    14    1  |1 1>+         0.01%    0.00%    0.00%    0.00%
 27  1    15    1  |1 1>+         0.00%    0.00%    0.00%    0.89%
 28  1    16    1  |1 1>+         0.00%   99.98%    0.00%    0.00%
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
 41  1    13    1  |1 0>          0.00%    0.00%    0.00%    0.89%
 42  1    14    1  |1 0>          0.00%    0.01%    0.00%    0.00%
 43  1    15    1  |1 0>          0.00%    0.00%    0.01%    0.00%
 44  1    16    1  |1 0>         99.98%    0.00%    0.00%    0.00%
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
 57  1    13    1  |1 1>-         0.00%    0.01%    0.00%    0.00%
 58  1    14    1  |1 1>-         0.00%    0.00%    0.00%    0.89%
 59  1    15    1  |1 1>-         0.01%    0.00%    0.00%    0.00%
 60  1    16    1  |1 1>-         0.00%    0.00%   99.98%    0.00%



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      26       42.91       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1700(1)
                                         EKIN      POT     PPINT     H0       H01     AOSYM    OPER      SMH    MOLCAS    OPER   
                                         1380     1101     1401     1411     1650(1)  1700(2)
                                         JKOP      SR      EKINR    POTR    MOLCAS    OPER   

              2       8      461.64       700     1000      520     2100     2140     2141     5101     5103   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI     LSINT        CI        CI     MULTI     MULTI   RHF-SCF       INT
 CPU TIMES  *      1495.72   1103.00      0.45    261.08    126.11      1.91      1.58      0.10      1.23
 REAL TIME  *      1593.60 SEC
 DISK USED  *       504.61 MB (local),        6.04 GB (total)
 SF USED    *         2.62 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCVQZ-PP energy=    -25.264107542629

              CI              CI           MULTI           MULTI         RHF-SCF
    -25.24165174    -25.24109189    -25.00452596    -25.00509713    -25.09501583
 **********************************************************************************************************************************
 Molpro calculation terminated
