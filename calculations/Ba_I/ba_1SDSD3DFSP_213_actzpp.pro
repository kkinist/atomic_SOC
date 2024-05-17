
 Working directory              : /wrk/irikura/molpro.tMuGeYLj5n/
 Global scratch directory       : /wrk/irikura/molpro.tMuGeYLj5n/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.tMuGeYLj5n/

 id        : nistki

 Nodes            nprocs
 pn125343.nist.gov   24
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1025), CPU time= 0.02 sec
 ***,Ba SO-CI
 memory,900,M;
 
 gprint,orbitals,civector;
 
 symmetry,xyz
 geometry={Ba};
 
 basis=aug-cc-pwCVTZ-PP
 
 {rhf;wf,sym=1,spin=0}
 
 NSING=12
 NTRIP=16
 
                                                                                 ! active space (2/10)
 {multi
     closed,1,3
     occ,8,9
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
 
 {ci;hlsmat,ecp,5101.2,5103.2;print,vls=0,hls=0}                                 !compute and diagonalize SO matrix
 Commands initialized (840), CPU time= 0.02 sec, 684 directives.
 Default parameters read. Elapsed time= 0.20 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2022.3 linked Wed Nov 30 06:40:34 2022


 **********************************************************************************************************************************
 LABEL *   Ba SO-                                                                        
  64 bit mpp version                                                                     DATE: 02-May-24          TIME: 11:15:27  
 **********************************************************************************************************************************

 SHA1:             e31ec9a5ea85254ab76f59d122cbdd51c71cf98b
 **********************************************************************************************************************************

 Memory per process:       900 MW
 Total memory per node:  21600 MW

 GA preallocation disabled
 GA check disabled

 Variable memory set to 900.0 MW


 ZSYMEL=XYZ

 SETTING BASIS          =    AUG-CC-PWCVTZ-PP


 Recomputing integrals since basis changed


 Using spherical harmonics

 Library entry Ba   ECP ECP46MDF                 selected for group  1
 Library entry BA     S aug-cc-pwCVTZ-PP     selected for orbital group  1
 Library entry BA     P aug-cc-pwCVTZ-PP     selected for orbital group  1
 Library entry BA     D aug-cc-pwCVTZ-PP     selected for orbital group  1
 Library entry BA     F aug-cc-pwCVTZ-PP     selected for orbital group  1


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
 NUMBER OF PRIMITIVE AOS:         157
 NUMBER OF SYMMETRY AOS:          131
 NUMBER OF CONTRACTIONS:           87   (   38Ag  +   49Au  )
 NUMBER OF INNER CORE ORBITALS:     0   (    0Ag  +    0Au  )
 NUMBER OF OUTER CORE ORBITALS:     4   (    1Ag  +    3Au  )
 NUMBER OF VALENCE ORBITALS:        1   (    1Ag  +    0Au  )


 LX: Ag           LY: Ag           LZ: Ag 


 NUCLEAR REPULSION ENERGY    0.00000000

 EXTRA SYMMETRY OF AOS IN SYMMETRY 1:   1 1 1 1 1 1 1 1 2 3   4 5 6 2 3 4 5 6 2 3   4 5 6 2 3 4 5 6 2 3   4 5 6 2 3 4 5 6
 EXTRA SYMMETRY OF AOS IN SYMMETRY 2:   1 2 3 1 2 3 1 2 3 1   2 3 1 2 3 1 2 3 1 2   3 4 5 6 7 8 910 4 5   6 7 8 910 4 5 6 7 8
                                        910 4 5 6 7 8 910


 Eigenvalues of metric

         1 0.117E-04 0.758E-03 0.758E-03 0.758E-03 0.758E-03 0.758E-03 0.143E-02 0.911E-02
         2 0.564E-02 0.564E-02 0.564E-02 0.159E-01 0.159E-01 0.159E-01 0.902E-01 0.902E-01


 Contracted 2-electron integrals neglected if value below      1.0D-12
 AO integral compression algorithm  1   Integral accuracy      1.0D-12

     15.466 MB (compressed) written to integral file ( 21.1%)

     Node minimum: 0.262 MB, node maximum: 1.311 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:     156357.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:     156357      RECORD LENGTH: 524288

 Memory used in sort:       0.71 MW

 SORT1 READ     8662933. AND WROTE       31718. INTEGRALS IN      1 RECORDS. CPU TIME:     0.08 SEC, REAL TIME:     0.11 SEC
 SORT2 READ      777925. AND WROTE     3749011. INTEGRALS IN     72 RECORDS. CPU TIME:     0.01 SEC, REAL TIME:     0.01 SEC

 Node minimum:      155297.  Node maximum:      158663. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      19       28.77       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         1.56      1.18
 REAL TIME  *         2.33 SEC
 DISK USED  *        29.04 MB (local),      799.97 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 Program * Restricted Hartree-Fock

 Orbital guess generated from atomic densities. Full valence occupancy:    2   3

 Initial occupancy:   2   3

 NELEC=   10   SYM=1   MS2= 0   THRE=1.0D-08   THRD=3.2D-06   THRG=3.2D-06  HFMA2=F  DIIS_START=2   DIIS_MAX=10   DIIS_INCORE=F

 Level shifts:    0.00 (CLOSED)    0.00 (OPEN)    0.30 (GAP_MIN)

 ITER           ETOT              DE          GRAD        DDIFF     DIIS  NEXP   TIME(IT)  TIME(TOT)  DIAG
   1      -25.09500683     -25.09500683     0.00D+00     0.10D+00     0     0       0.00      0.01    start
   2      -25.09500683      -0.00000000     0.15D-05     0.30D-04     1     0       0.00      0.01    diag
   3      -25.09500683      -0.00000000     0.61D-06     0.19D-04     2     0       0.00      0.01    diag
   4      -25.09500683      -0.00000000     0.26D-06     0.12D-04     3     0       0.01      0.02    diag
   5      -25.09500683      -0.00000000     0.45D-07     0.98D-06     4     0       0.00      0.02    diag
   6      -25.09500683      -0.00000000     0.12D-07     0.13D-06     0     0       0.00      0.02    diag

 Final occupancy:   2   3

 !RHF STATE 1.1 Energy                -25.095006829040
  RHF One-electron energy             -41.272176595183
  RHF Two-electron energy              16.177169766142
  RHF Kinetic energy                    6.695468947860
  RHF Nuclear energy                    0.000000000000
  RHF Virial quotient                  -3.748058130724

 !RHF STATE 1.1 Dipole moment           0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 ELECTRON ORBITALS
 =================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -1.60487     1  1  s    1.00121
    2.1     2.00000    -0.16318     1  2  s    1.00075
    1.2     2.00000    -0.89696     1  1  pz   0.99996
    2.2     2.00000    -0.89696     1  1  px   0.99996
    3.2     2.00000    -0.89696     1  1  py   0.99996


 HOMO      2.1    -0.163179 =      -4.4403eV
 LUMO      4.2     0.007939 =       0.2160eV
 LUMO-HOMO         0.171119 =       4.6564eV

 Orbitals saved in record  2100.2


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      19       28.77       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    

              2       4        0.41       700     1000      520     2100   
                                         GEOM     BASIS   MCVARS     RHF  

 PROGRAMS   *        TOTAL   RHF-SCF       INT
 CPU TIMES  *         1.58      0.02      1.18
 REAL TIME  *         2.36 SEC
 DISK USED  *        29.42 MB (local),      809.24 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING NSING          =        12.00000000                                  
 SETTING NTRIP          =        16.00000000                                  

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of closed-shell orbitals:   4 (    1    3)
 Number of active  orbitals:       13 (    7    6)
 Number of external orbitals:      70 (   30   40)

 State symmetry 1

 Number of active electrons:   2    Spin symmetry=Singlet   Space symmetry=1
 Number of states:            12
 Number of CSFs:              49   (85 determinants, 169 intermediate states)

 State symmetry 2

 Number of active electrons:   2    Spin symmetry=Triplet   Space symmetry=1
 Number of states:            16
 Number of CSFs:              36   (36 determinants, 78 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.398D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.398D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.200D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.200D+00 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 4 6 3 5 2 2 6   4 3 5 1 4 6 3 5 2 1   4 6 5 3 2 1 4 6 3 5   2 6 4 3 5 2 1 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.121D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.555D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.105D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.626D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.626D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.722D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.427D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  9 SYMMETRY CONTAMINATION OF 0.363D-01 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 1 2 3 2 1 3 1 2 3   1 2 4 5 6 9 7 810 3   1 2 6 4 5 9 7 810 5   4 6 9 7 810 3 1 2 4
                                        5 610 8 9 7 3 2 1

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.03571   0.03571   0.03571   0.03571   0.03571   0.03571   0.03571   0.03571
                                          0.03571   0.03571   0.03571   0.03571
 Weight factors for state symmetry  2:    0.03571   0.03571   0.03571   0.03571   0.03571   0.03571   0.03571   0.03571
                                          0.03571   0.03571   0.03571   0.03571   0.03571   0.03571   0.03571   0.03571
 
 Number of orbital rotations:  625  ( 25 closed/active, 150 closed/virtual, 0 active/active, 450 active/virtual )
 Total number of variables:    2221
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1   12   22    5    -24.94999013     -25.03986279   -0.08987266    0.04993737 0.00009166 0.00000000  0.24E+01      0.57
   2    8   14    0    -25.02125439     -25.02597356   -0.00471918    0.03632725 0.00004556 0.00000000  0.39E+00      1.08
   3    8   14    0    -25.02600509     -25.02600689   -0.00000181    0.00062436 0.00000006 0.00000000  0.72E-02      1.62
   4    5   10    0    -25.02600690     -25.02600690   -0.00000000    0.00000078 0.00000000 0.00000000  0.10E-04      1.98

 CONVERGENCE REACHED!  Final gradient:    0.00000000 ( 0.20E-08)
                       Final energy:    -25.02600690
 
 Results for state 1.1 Singlet
 =============================
 !MCSCF STATE 1.1 Singlet Energy               -25.117276388880
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.63362616
 One electron energy                           -41.20309751
 Two electron energy                            16.08582112
 Virial ratio                                    4.78635693
 
 !MCSCF STATE 1.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Singlet
 =============================
 !MCSCF STATE 2.1 Singlet Energy               -25.054463886226
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.82309502
 One electron energy                           -41.43131913
 Two electron energy                            16.37685524
 Virial ratio                                    4.67200864
 
 !MCSCF STATE 2.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Singlet
 =============================
 !MCSCF STATE 3.1 Singlet Energy               -25.054463886085
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.82309502
 One electron energy                           -41.43131912
 Two electron energy                            16.37685523
 Virial ratio                                    4.67200864
 
 !MCSCF STATE 3.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Singlet
 =============================
 !MCSCF STATE 4.1 Singlet Energy               -25.054463886030
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.82309502
 One electron energy                           -41.43131912
 Two electron energy                            16.37685523
 Virial ratio                                    4.67200864
 
 !MCSCF STATE 4.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Singlet
 =============================
 !MCSCF STATE 5.1 Singlet Energy               -25.054463886027
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.82309502
 One electron energy                           -41.43131911
 Two electron energy                            16.37685523
 Virial ratio                                    4.67200864
 
 !MCSCF STATE 5.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Singlet
 =============================
 !MCSCF STATE 6.1 Singlet Energy               -25.054463885984
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.82309502
 One electron energy                           -41.43131911
 Two electron energy                            16.37685523
 Virial ratio                                    4.67200864
 
 !MCSCF STATE 6.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.1 Singlet
 =============================
 !MCSCF STATE 7.1 Singlet Energy               -24.999946318958
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.96391325
 One electron energy                           -41.57463009
 Two electron energy                            16.57468377
 Virial ratio                                    4.58992788
 
 !MCSCF STATE 7.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.1 Singlet
 =============================
 !MCSCF STATE 8.1 Singlet Energy               -24.999946318944
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.96391326
 One electron energy                           -41.57463009
 Two electron energy                            16.57468377
 Virial ratio                                    4.58992788
 
 !MCSCF STATE 8.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 9.1 Singlet
 =============================
 !MCSCF STATE 9.1 Singlet Energy               -24.999946318909
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.96391326
 One electron energy                           -41.57463009
 Two electron energy                            16.57468377
 Virial ratio                                    4.58992788
 
 !MCSCF STATE 9.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 10.1 Singlet
 ==============================
 !MCSCF STATE 10.1 Singlet Energy              -24.999946318873
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.96391326
 One electron energy                           -41.57463009
 Two electron energy                            16.57468377
 Virial ratio                                    4.58992787
 
 !MCSCF STATE 10.1 Singlet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 11.1 Singlet
 ==============================
 !MCSCF STATE 11.1 Singlet Energy              -24.999946318867
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.96391326
 One electron energy                           -41.57463009
 Two electron energy                            16.57468377
 Virial ratio                                    4.58992787
 
 !MCSCF STATE 11.1 Singlet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 12.1 Singlet
 ==============================
 !MCSCF STATE 12.1 Singlet Energy              -24.998469148692
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.62377947
 One electron energy                           -40.46336397
 Two electron energy                            15.46489482
 Virial ratio                                    4.77404913
 
 !MCSCF STATE 12.1 Singlet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.1 Triplet
 =============================
 !MCSCF STATE 1.1 Triplet Energy               -25.061123706955
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.83301473
 One electron energy                           -41.52209873
 Two electron energy                            16.46097502
 Virial ratio                                    4.66765252
 
 !MCSCF STATE 1.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Triplet
 =============================
 !MCSCF STATE 2.1 Triplet Energy               -25.061123706811
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.83301473
 One electron energy                           -41.52209872
 Two electron energy                            16.46097502
 Virial ratio                                    4.66765252
 
 !MCSCF STATE 2.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Triplet
 =============================
 !MCSCF STATE 3.1 Triplet Energy               -25.061123706728
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.83301473
 One electron energy                           -41.52209872
 Two electron energy                            16.46097501
 Virial ratio                                    4.66765252
 
 !MCSCF STATE 3.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Triplet
 =============================
 !MCSCF STATE 4.1 Triplet Energy               -25.061123706709
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.83301472
 One electron energy                           -41.52209872
 Two electron energy                            16.46097501
 Virial ratio                                    4.66765252
 
 !MCSCF STATE 4.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Triplet
 =============================
 !MCSCF STATE 5.1 Triplet Energy               -25.061123706655
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.83301472
 One electron energy                           -41.52209871
 Two electron energy                            16.46097501
 Virial ratio                                    4.66765253
 
 !MCSCF STATE 5.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Triplet
 =============================
 !MCSCF STATE 6.1 Triplet Energy               -25.004378556565
 Nuclear energy                                  0.00000000
 Kinetic energy                                  7.06464402
 One electron energy                           -41.88930043
 Two electron energy                            16.88492187
 Virial ratio                                    4.53936851
 
 !MCSCF STATE 6.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.1 Triplet
 =============================
 !MCSCF STATE 7.1 Triplet Energy               -25.004378556558
 Nuclear energy                                  0.00000000
 Kinetic energy                                  7.06464402
 One electron energy                           -41.88930043
 Two electron energy                            16.88492187
 Virial ratio                                    4.53936851
 
 !MCSCF STATE 7.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.1 Triplet
 =============================
 !MCSCF STATE 8.1 Triplet Energy               -25.004378556542
 Nuclear energy                                  0.00000000
 Kinetic energy                                  7.06464401
 One electron energy                           -41.88930042
 Two electron energy                            16.88492186
 Virial ratio                                    4.53936851
 
 !MCSCF STATE 8.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 9.1 Triplet
 =============================
 !MCSCF STATE 9.1 Triplet Energy               -25.004378556536
 Nuclear energy                                  0.00000000
 Kinetic energy                                  7.06464401
 One electron energy                           -41.88930042
 Two electron energy                            16.88492187
 Virial ratio                                    4.53936851
 
 !MCSCF STATE 9.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 10.1 Triplet
 ==============================
 !MCSCF STATE 10.1 Triplet Energy              -25.004378556527
 Nuclear energy                                  0.00000000
 Kinetic energy                                  7.06464401
 One electron energy                           -41.88930041
 Two electron energy                            16.88492185
 Virial ratio                                    4.53936851
 
 !MCSCF STATE 10.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 11.1 Triplet
 ==============================
 !MCSCF STATE 11.1 Triplet Energy              -25.004378556522
 Nuclear energy                                  0.00000000
 Kinetic energy                                  7.06464401
 One electron energy                           -41.88930041
 Two electron energy                            16.88492185
 Virial ratio                                    4.53936851
 
 !MCSCF STATE 11.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 12.1 Triplet
 ==============================
 !MCSCF STATE 12.1 Triplet Energy              -25.004378556516
 Nuclear energy                                  0.00000000
 Kinetic energy                                  7.06464401
 One electron energy                           -41.88930041
 Two electron energy                            16.88492186
 Virial ratio                                    4.53936851
 
 !MCSCF STATE 12.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 13.1 Triplet
 ==============================
 !MCSCF STATE 13.1 Triplet Energy              -25.003610188321
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.54144693
 One electron energy                           -40.19297449
 Two electron energy                            15.18936430
 Virial ratio                                    4.82233632
 
 !MCSCF STATE 13.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 14.1 Triplet
 ==============================
 !MCSCF STATE 14.1 Triplet Energy              -25.000172641200
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.92159356
 One electron energy                           -41.45370768
 Two electron energy                            16.45353503
 Virial ratio                                    4.61190995
 
 !MCSCF STATE 14.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 15.1 Triplet
 ==============================
 !MCSCF STATE 15.1 Triplet Energy              -25.000172641099
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.92159356
 One electron energy                           -41.45370768
 Two electron energy                            16.45353504
 Virial ratio                                    4.61190995
 
 !MCSCF STATE 15.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 16.1 Triplet
 ==============================
 !MCSCF STATE 16.1 Triplet Energy              -25.000172641043
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.92159356
 One electron energy                           -41.45370769
 Two electron energy                            16.45353504
 Virial ratio                                    4.61190995
 
 !MCSCF STATE 16.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 !MCSCF expec      <1.1 Singlet|LXLX|1.1 Singlet>     0.000000000000
 !MCSCF expec      <2.1 Singlet|LXLX|2.1 Singlet>     3.066029092161
 !MCSCF expec      <3.1 Singlet|LXLX|3.1 Singlet>     1.000000000001
 !MCSCF expec      <4.1 Singlet|LXLX|4.1 Singlet>     0.933970326954
 !MCSCF expec      <5.1 Singlet|LXLX|5.1 Singlet>     1.000000000503
 !MCSCF expec      <6.1 Singlet|LXLX|6.1 Singlet>     3.999999999490
 !MCSCF expec      <7.1 Singlet|LXLX|7.1 Singlet>     3.999999999571
 !MCSCF expec      <8.1 Singlet|LXLX|8.1 Singlet>     1.000000000325
 !MCSCF expec      <9.1 Singlet|LXLX|9.1 Singlet>     1.479595235567
 !MCSCF expec    <10.1 Singlet|LXLX|10.1 Singlet>     1.000000000005
 !MCSCF expec    <11.1 Singlet|LXLX|11.1 Singlet>     2.520408388229
 !MCSCF expec    <12.1 Singlet|LXLX|12.1 Singlet>     0.000000000000
 !MCSCF expec      <1.1 Triplet|LXLX|1.1 Triplet>     2.860127462895
 !MCSCF expec      <2.1 Triplet|LXLX|2.1 Triplet>     1.000000000003
 !MCSCF expec      <3.1 Triplet|LXLX|3.1 Triplet>     1.139872537105
 !MCSCF expec      <4.1 Triplet|LXLX|4.1 Triplet>     1.000000000382
 !MCSCF expec      <5.1 Triplet|LXLX|5.1 Triplet>     3.999999999616
 !MCSCF expec      <6.1 Triplet|LXLX|6.1 Triplet>     3.372493425779
 !MCSCF expec      <7.1 Triplet|LXLX|7.1 Triplet>     4.000000000000
 !MCSCF expec      <8.1 Triplet|LXLX|8.1 Triplet>     0.188814599215
 !MCSCF expec      <9.1 Triplet|LXLX|9.1 Triplet>     4.106934228077
 !MCSCF expec    <10.1 Triplet|LXLX|10.1 Triplet>     5.893065782174
 !MCSCF expec    <11.1 Triplet|LXLX|11.1 Triplet>     3.811189887462
 !MCSCF expec    <12.1 Triplet|LXLX|12.1 Triplet>     6.627529402999
 !MCSCF expec    <13.1 Triplet|LXLX|13.1 Triplet>     0.000000000000
 !MCSCF expec    <14.1 Triplet|LXLX|14.1 Triplet>     0.999999999999
 !MCSCF expec    <15.1 Triplet|LXLX|15.1 Triplet>     0.000000000003
 !MCSCF expec    <16.1 Triplet|LXLX|16.1 Triplet>     0.999999999999
 
 !MCSCF expec      <1.1 Singlet|LYLY|1.1 Singlet>    -0.000000000000
 !MCSCF expec      <2.1 Singlet|LYLY|2.1 Singlet>     2.932484168010
 !MCSCF expec      <3.1 Singlet|LYLY|3.1 Singlet>     3.999999999996
 !MCSCF expec      <4.1 Singlet|LYLY|4.1 Singlet>     1.067516439443
 !MCSCF expec      <5.1 Singlet|LYLY|5.1 Singlet>     1.000000000005
 !MCSCF expec      <6.1 Singlet|LYLY|6.1 Singlet>     1.000000000001
 !MCSCF expec      <7.1 Singlet|LYLY|7.1 Singlet>     1.000000000420
 !MCSCF expec      <8.1 Singlet|LYLY|8.1 Singlet>     3.999999999675
 !MCSCF expec      <9.1 Singlet|LYLY|9.1 Singlet>     3.932591141107
 !MCSCF expec    <10.1 Singlet|LYLY|10.1 Singlet>     1.000000000001
 !MCSCF expec    <11.1 Singlet|LYLY|11.1 Singlet>     0.067407892723
 !MCSCF expec    <12.1 Singlet|LYLY|12.1 Singlet>    -0.000000000000
 !MCSCF expec      <1.1 Triplet|LYLY|1.1 Triplet>     3.133629192588
 !MCSCF expec      <2.1 Triplet|LYLY|2.1 Triplet>     3.999999999989
 !MCSCF expec      <3.1 Triplet|LYLY|3.1 Triplet>     0.866370807412
 !MCSCF expec      <4.1 Triplet|LYLY|4.1 Triplet>     1.000000000005
 !MCSCF expec      <5.1 Triplet|LYLY|5.1 Triplet>     1.000000000001
 !MCSCF expec      <6.1 Triplet|LYLY|6.1 Triplet>     4.655115811407
 !MCSCF expec      <7.1 Triplet|LYLY|7.1 Triplet>     4.000000000000
 !MCSCF expec      <8.1 Triplet|LYLY|8.1 Triplet>     7.548312362059
 !MCSCF expec      <9.1 Triplet|LYLY|9.1 Triplet>     3.999242915819
 !MCSCF expec    <10.1 Triplet|LYLY|10.1 Triplet>     0.000757085869
 !MCSCF expec    <11.1 Triplet|LYLY|11.1 Triplet>     2.451703930475
 !MCSCF expec    <12.1 Triplet|LYLY|12.1 Triplet>     5.344859290014
 !MCSCF expec    <13.1 Triplet|LYLY|13.1 Triplet>    -0.000000000000
 !MCSCF expec    <14.1 Triplet|LYLY|14.1 Triplet>     0.999999999999
 !MCSCF expec    <15.1 Triplet|LYLY|15.1 Triplet>     0.999999999998
 !MCSCF expec    <16.1 Triplet|LYLY|16.1 Triplet>     0.000000000001
 
 !MCSCF expec      <1.1 Singlet|LZLZ|1.1 Singlet>    -0.000000000000
 !MCSCF expec      <2.1 Singlet|LZLZ|2.1 Singlet>     0.001486739829
 !MCSCF expec      <3.1 Singlet|LZLZ|3.1 Singlet>     1.000000000003
 !MCSCF expec      <4.1 Singlet|LZLZ|4.1 Singlet>     3.998513233603
 !MCSCF expec      <5.1 Singlet|LZLZ|5.1 Singlet>     3.999999999492
 !MCSCF expec      <6.1 Singlet|LZLZ|6.1 Singlet>     1.000000000509
 !MCSCF expec      <7.1 Singlet|LZLZ|7.1 Singlet>     1.000000000009
 !MCSCF expec      <8.1 Singlet|LZLZ|8.1 Singlet>     1.000000000001
 !MCSCF expec      <9.1 Singlet|LZLZ|9.1 Singlet>     0.587813623326
 !MCSCF expec    <10.1 Singlet|LZLZ|10.1 Singlet>     3.999999999994
 !MCSCF expec    <11.1 Singlet|LZLZ|11.1 Singlet>     3.412183719048
 !MCSCF expec    <12.1 Singlet|LZLZ|12.1 Singlet>    -0.000000000000
 !MCSCF expec      <1.1 Triplet|LZLZ|1.1 Triplet>     0.006243344516
 !MCSCF expec      <2.1 Triplet|LZLZ|2.1 Triplet>     1.000000000009
 !MCSCF expec      <3.1 Triplet|LZLZ|3.1 Triplet>     3.993756655483
 !MCSCF expec      <4.1 Triplet|LZLZ|4.1 Triplet>     3.999999999613
 !MCSCF expec      <5.1 Triplet|LZLZ|5.1 Triplet>     1.000000000382
 !MCSCF expec      <6.1 Triplet|LZLZ|6.1 Triplet>     3.972390762813
 !MCSCF expec      <7.1 Triplet|LZLZ|7.1 Triplet>     4.000000000000
 !MCSCF expec      <8.1 Triplet|LZLZ|8.1 Triplet>     4.262873038726
 !MCSCF expec      <9.1 Triplet|LZLZ|9.1 Triplet>     3.893822856104
 !MCSCF expec    <10.1 Triplet|LZLZ|10.1 Triplet>     6.106177131957
 !MCSCF expec    <11.1 Triplet|LZLZ|11.1 Triplet>     5.737106182062
 !MCSCF expec    <12.1 Triplet|LZLZ|12.1 Triplet>     0.027611306987
 !MCSCF expec    <13.1 Triplet|LZLZ|13.1 Triplet>    -0.000000000000
 !MCSCF expec    <14.1 Triplet|LZLZ|14.1 Triplet>     0.000000000002
 !MCSCF expec    <15.1 Triplet|LZLZ|15.1 Triplet>     0.999999999999
 !MCSCF expec    <16.1 Triplet|LZLZ|16.1 Triplet>     1.000000000000
 
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
 !MCSCF expec    <12.1 Singlet|L**2|12.1 Singlet>     0.000000000000
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
 !MCSCF expec    <13.1 Triplet|L**2|13.1 Triplet>    -0.000000000000
 !MCSCF expec    <14.1 Triplet|L**2|14.1 Triplet>     2.000000000000
 !MCSCF expec    <15.1 Triplet|L**2|15.1 Triplet>     2.000000000000
 !MCSCF expec    <16.1 Triplet|L**2|16.1 Triplet>     2.000000000000
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 2 6 3 5 4 1 4 5   2 6 3 1 2 5 3 4 6 1   3 5 2 4 6 1 5 3 4 6   2 5 3 4 6 2 1 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 2 3 3 2 1 1 3 2 1   3 2 7 9 4 810 6 5 1   2 3 7 9 4 6 810 5 7   9 410 8 6 5 1 2 3 7
                                        910 8 4 6 5 1 2 3
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -1.55878     1  1  s    0.98826
    2.1     0.45609    -0.03443     1  2  s    1.01603
    3.1     0.25573     0.05482     1  1  d0   0.90818
    4.1     0.25573     0.05482     1  1  d1-  0.90818
    5.1     0.25573     0.05482     1  1  d2-  0.90818
    6.1     0.25573     0.05482     1  1  d2+  0.90818
    7.1     0.25573     0.05482     1  1  d1+  0.90818
    8.1     0.06701     0.04151     1  2  s   -0.74497    1  4  s   -0.33984    1  8  s    1.35609
    1.2     2.00000    -0.86046     1  1  px   0.98527
    2.2     2.00000    -0.86046     1  1  py   0.98527
    3.2     2.00000    -0.86046     1  1  pz   0.98527
    4.2     0.06502     0.04947     1  2  pz   1.01695
    5.2     0.06502     0.04947     1  2  py   1.01695
    6.2     0.06502     0.04947     1  2  px   1.01695
    7.2     0.00106     0.11169     1  2  px   0.96555    1  3  px   0.63898    1  4  px  -1.53582
    8.2     0.00106     0.11169     1  2  pz   0.96555    1  3  pz   0.63898    1  4  pz  -1.53582
    9.2     0.00106     0.11169     1  2  py   0.96555    1  3  py   0.63898    1  4  py  -1.53582
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 1 (Singlet)
 =======================================

 State:                   1               2               3               4               5               6               7
 2000000 000000      0.95596684      0.00000000      0.00000000     -0.00000000      0.00000000      0.00000000      0.00000000
 a0000b0 000000      0.00000000      0.00000007      0.64818871      0.00000055     -0.00000027      0.00000029      0.00000049
 b0000a0 000000     -0.00000000     -0.00000007     -0.64818871     -0.00000055      0.00000027     -0.00000029     -0.00000049
 a00b000 000000     -0.00000000      0.00000000      0.00000027      0.00000006      0.64818871     -0.00000840      0.00000007
 b00a000 000000      0.00000000     -0.00000000     -0.00000027     -0.00000006     -0.64818871      0.00000840     -0.00000007
 b0a0000 000000      0.00000000     -0.00000000      0.00000029     -0.00000013     -0.00000840     -0.64818871      0.04179161
 a0b0000 000000     -0.00000000      0.00000000     -0.00000029      0.00000013      0.00000840      0.64818871     -0.04179161
 ba00000 000000      0.00000000     -0.64806823      0.00000006      0.01249652      0.00000000     -0.00000000     -0.00000001
 ab00000 000000     -0.00000000      0.64806823     -0.00000006     -0.01249652     -0.00000000      0.00000000      0.00000001
 b000a00 000000     -0.00000000     -0.01249652      0.00000056     -0.64806823      0.00000006      0.00000013      0.00000001
 a000b00 000000      0.00000000      0.01249652     -0.00000056      0.64806823     -0.00000006     -0.00000013     -0.00000001
 a00000b 000000     -0.03917171     -0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00000000     -0.00000000
 b00000a 000000      0.03917171      0.00000000      0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000
 0a0b000 000000     -0.00000000      0.00000000      0.00000005      0.00000001      0.12562646     -0.00000163     -0.00000082
 0b0a000 000000      0.00000000     -0.00000000     -0.00000005     -0.00000001     -0.12562646      0.00000163      0.00000082
 0000020 000000     -0.04248907     -0.06489904      0.00000010     -0.10756450      0.00000001      0.00000002     -0.00000009
 0002000 000000     -0.04248907      0.12560311     -0.00000001     -0.00242197     -0.00000000      0.00000000     -0.00000007
 0000200 000000     -0.04248907      0.12560311     -0.00000001     -0.00242197     -0.00000000      0.00000000     -0.00000007
 0b00a00 000000     -0.00000000     -0.00242197      0.00000011     -0.12560311      0.00000001      0.00000002     -0.00000015
 0a00b00 000000      0.00000000      0.00242197     -0.00000011      0.12560311     -0.00000001     -0.00000002      0.00000015
 0200000 000000     -0.04248907     -0.12560311      0.00000001      0.00242197      0.00000000     -0.00000000      0.00000007
 00ab000 000000     -0.00000000     -0.00000001     -0.10879570     -0.00000009      0.00000005     -0.00000005      0.00000479
 00ba000 000000      0.00000000      0.00000001      0.10879570      0.00000009     -0.00000005      0.00000005     -0.00000479
 00b0a00 000000      0.00000000     -0.00000000      0.00000005     -0.00000002     -0.00000141     -0.10879570     -0.40520477
 00a0b00 000000     -0.00000000      0.00000000     -0.00000005      0.00000002      0.00000141      0.10879570      0.40520477
 00b00a0 000000     -0.00000000      0.00000000      0.00000005      0.00000001      0.10879570     -0.00000141     -0.00000071
 00a00b0 000000      0.00000000     -0.00000000     -0.00000005     -0.00000001     -0.10879570      0.00000141      0.00000071
 000b0a0 000000     -0.00000000      0.00000000     -0.00000005      0.00000002      0.00000141      0.10879570      0.40520477
 000a0b0 000000      0.00000000     -0.00000000      0.00000005     -0.00000002     -0.00000141     -0.10879570     -0.40520477
 0000ba0 000000      0.00000000      0.00000001      0.10879570      0.00000009     -0.00000005      0.00000005     -0.00000479
 0000ab0 000000     -0.00000000     -0.00000001     -0.10879570     -0.00000009      0.00000005     -0.00000005      0.00000479
 0000000 020000     -0.15156848      0.13425821     -0.00000021      0.22252128     -0.00000002     -0.00000004     -0.00000008
 0020000 000000     -0.04248907     -0.06070407     -0.00000009      0.10998647     -0.00000001     -0.00000002      0.00000016
 0000000 200000     -0.15156848     -0.25983818      0.00000002      0.00501039      0.00000000     -0.00000000     -0.00000005
 0000000 ab0000      0.00000000     -0.00000000      0.00000010     -0.00000004     -0.00000292     -0.22506830      0.32515797
 0000000 ba0000     -0.00000000      0.00000000     -0.00000010      0.00000004      0.00000292      0.22506830     -0.32515797
 0000000 b0a000      0.00000000      0.00000003      0.22506830      0.00000019     -0.00000010      0.00000010      0.00000384
 0000000 a0b000     -0.00000000     -0.00000003     -0.22506830     -0.00000019      0.00000010     -0.00000010     -0.00000384
 0000000 0ab000      0.00000000     -0.00000000     -0.00000010     -0.00000002     -0.22506830      0.00000292     -0.00000057
 0000000 0ba000     -0.00000000      0.00000000      0.00000010      0.00000002      0.22506830     -0.00000292      0.00000057
 0000000 002000     -0.15156848      0.12557997      0.00000018     -0.22753166      0.00000002      0.00000004      0.00000013
 0ab0000 000000      0.00000000     -0.00000000      0.00000003     -0.00000001     -0.00000081     -0.06281323     -0.23394508
 0ba0000 000000     -0.00000000      0.00000000     -0.00000003      0.00000001      0.00000081      0.06281323      0.23394508
 0b000a0 000000      0.00000000      0.00000001      0.06281323      0.00000005     -0.00000003      0.00000003     -0.00000277
 0a000b0 000000     -0.00000000     -0.00000001     -0.06281323     -0.00000005      0.00000003     -0.00000003      0.00000277
 0000002 000000     -0.01759002      0.00000000      0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000
 00000ab 000000      0.00000000      0.00000000      0.02860480      0.00000002     -0.00000001      0.00000001      0.00000114
 00000ba 000000     -0.00000000     -0.00000000     -0.02860480     -0.00000002      0.00000001     -0.00000001     -0.00000114
 000a00b 000000     -0.00000000      0.00000000      0.00000001      0.00000000      0.02860480     -0.00000037      0.00000017
 000b00a 000000      0.00000000     -0.00000000     -0.00000001     -0.00000000     -0.02860480      0.00000037     -0.00000017
 00a000b 000000     -0.00000000      0.00000000     -0.00000001      0.00000001      0.00000037      0.02860480     -0.09680920
 00b000a 000000      0.00000000     -0.00000000      0.00000001     -0.00000001     -0.00000037     -0.02860480      0.09680920
 0a0000b 000000     -0.00000000      0.02859948     -0.00000000     -0.00055148     -0.00000000      0.00000000      0.00000001
 0b0000a 000000      0.00000000     -0.02859948      0.00000000      0.00055148      0.00000000     -0.00000000     -0.00000001
 0000a0b 000000      0.00000000      0.00055148     -0.00000002      0.02859948     -0.00000000     -0.00000001     -0.00000003
 0000b0a 000000     -0.00000000     -0.00055148      0.00000002     -0.02859948      0.00000000      0.00000001      0.00000003
 0000000 00ab00     -0.02756098      0.01051713      0.00000002     -0.01905542      0.00000000      0.00000000     -0.00000000
 0000000 00ba00      0.02756098     -0.01051713     -0.00000002      0.01905542     -0.00000000     -0.00000000      0.00000000
 0000000 a000b0     -0.02756098     -0.02176105      0.00000000      0.00041961      0.00000000     -0.00000000      0.00000000
 0000000 b000a0      0.02756098      0.02176105     -0.00000000     -0.00041961     -0.00000000      0.00000000     -0.00000000
 0000000 0a000b     -0.02756098      0.01124392     -0.00000002      0.01863581     -0.00000000     -0.00000000      0.00000000
 0000000 0b000a      0.02756098     -0.01124392      0.00000002     -0.01863581      0.00000000      0.00000000     -0.00000000
 
 Energy:           -25.11727639    -25.05446389    -25.05446389    -25.05446389    -25.05446389    -25.05446389    -24.99994632

 State:                   8               9              10              11              12
 2000000 000000     -0.00000000      0.00000000     -0.00000000      0.00000000      0.01963822
 a0000b0 000000      0.04179161      0.00000000      0.00000002     -0.00000001      0.00000000
 b0000a0 000000     -0.04179161     -0.00000000     -0.00000002      0.00000001     -0.00000000
 a00b000 000000      0.00000002     -0.00000002     -0.04179161      0.00000004      0.00000000
 b00a000 000000     -0.00000002      0.00000002      0.04179161     -0.00000004     -0.00000000
 b0a0000 000000     -0.00000049     -0.00000001      0.00000007      0.00000001      0.00000000
 a0b0000 000000      0.00000049      0.00000001     -0.00000007     -0.00000001     -0.00000000
 ba00000 000000      0.00000000     -0.03859895      0.00000001     -0.01602061     -0.00000000
 ab00000 000000     -0.00000000      0.03859895     -0.00000001      0.01602061      0.00000000
 b000a00 000000     -0.00000001      0.01602061     -0.00000005     -0.03859895     -0.00000000
 a000b00 000000      0.00000001     -0.01602061      0.00000005      0.03859895      0.00000000
 a00000b 000000     -0.00000000     -0.00000001     -0.00000000     -0.00000001      0.61452092
 b00000a 000000      0.00000000      0.00000001      0.00000000      0.00000001     -0.61452092
 0a0b000 000000     -0.00000023      0.00000027      0.46789017     -0.00000047      0.00000000
 0b0a000 000000      0.00000023     -0.00000027     -0.46789017      0.00000047     -0.00000000
 0000020 000000      0.00000006      0.06073966      0.00000044      0.46393092      0.14679261
 0002000 000000      0.00000002     -0.43214581      0.00000006     -0.17936337      0.14679259
 0000200 000000      0.00000002     -0.43214581      0.00000006     -0.17936337      0.14679259
 0b00a00 000000      0.00000008     -0.17936337      0.00000054      0.43214580      0.00000000
 0a00b00 000000     -0.00000008      0.17936337     -0.00000054     -0.43214580     -0.00000000
 0200000 000000     -0.00000002      0.43214579     -0.00000006      0.17936336      0.14679261
 00ab000 000000      0.40520477      0.00000004      0.00000020     -0.00000005      0.00000000
 00ba000 000000     -0.40520477     -0.00000004     -0.00000020      0.00000005     -0.00000000
 00b0a00 000000      0.00000479      0.00000010     -0.00000071     -0.00000010     -0.00000000
 00a0b00 000000     -0.00000479     -0.00000010      0.00000071      0.00000010      0.00000000
 00b00a0 000000     -0.00000020      0.00000023      0.40520477     -0.00000041      0.00000000
 00a00b0 000000      0.00000020     -0.00000023     -0.40520477      0.00000041     -0.00000000
 000b0a0 000000     -0.00000479     -0.00000010      0.00000071      0.00000010      0.00000000
 000a0b0 000000      0.00000479      0.00000010     -0.00000071     -0.00000010     -0.00000000
 0000ba0 000000     -0.40520477     -0.00000004     -0.00000020      0.00000005     -0.00000000
 0000ab0 000000      0.40520477      0.00000004      0.00000020     -0.00000005      0.00000000
 0000000 020000      0.00000005      0.04874076      0.00000035      0.37228298     -0.15660830
 0020000 000000     -0.00000008      0.37140613     -0.00000050     -0.28456756      0.14679261
 0000000 200000      0.00000001     -0.34677689      0.00000005     -0.14393075     -0.15660832
 0000000 ab0000     -0.00000384     -0.00000008      0.00000057      0.00000008      0.00000000
 0000000 ba0000      0.00000384      0.00000008     -0.00000057     -0.00000008     -0.00000000
 0000000 b0a000      0.32515797      0.00000003      0.00000016     -0.00000004      0.00000000
 0000000 a0b000     -0.32515797     -0.00000003     -0.00000016      0.00000004     -0.00000000
 0000000 0ab000     -0.00000016      0.00000018      0.32515797     -0.00000033      0.00000000
 0000000 0ba000      0.00000016     -0.00000018     -0.32515797      0.00000033     -0.00000000
 0000000 002000     -0.00000006      0.29803614     -0.00000040     -0.22835222     -0.15660830
 0ab0000 000000      0.00000277      0.00000006     -0.00000041     -0.00000006     -0.00000000
 0ba0000 000000     -0.00000277     -0.00000006      0.00000041      0.00000006      0.00000000
 0b000a0 000000     -0.23394508     -0.00000002     -0.00000011      0.00000003     -0.00000000
 0a000b0 000000      0.23394508      0.00000002      0.00000011     -0.00000003      0.00000000
 0000002 000000      0.00000000      0.00000000      0.00000000      0.00000000     -0.15915743
 00000ab 000000      0.09680920      0.00000001      0.00000005     -0.00000001      0.00000000
 00000ba 000000     -0.09680920     -0.00000001     -0.00000005      0.00000001     -0.00000000
 000a00b 000000      0.00000005     -0.00000005     -0.09680920      0.00000010     -0.00000000
 000b00a 000000     -0.00000005      0.00000005      0.09680920     -0.00000010      0.00000000
 00a000b 000000      0.00000114      0.00000002     -0.00000017     -0.00000002     -0.00000000
 00b000a 000000     -0.00000114     -0.00000002      0.00000017      0.00000002      0.00000000
 0a0000b 000000     -0.00000000      0.08941348     -0.00000001      0.03711132      0.00000000
 0b0000a 000000      0.00000000     -0.08941348      0.00000001     -0.03711132     -0.00000000
 0000a0b 000000      0.00000002     -0.03711132      0.00000011      0.08941348      0.00000000
 0000b0a 000000     -0.00000002      0.03711132     -0.00000011     -0.08941348     -0.00000000
 0000000 00ab00      0.00000000     -0.00412821      0.00000001      0.00316299      0.07742749
 0000000 00ba00     -0.00000000      0.00412821     -0.00000001     -0.00316299     -0.07742749
 0000000 a000b0     -0.00000000      0.00480334     -0.00000000      0.00199364      0.07742749
 0000000 b000a0      0.00000000     -0.00480334      0.00000000     -0.00199364     -0.07742749
 0000000 0a000b     -0.00000000     -0.00067513     -0.00000000     -0.00515663      0.07742749
 0000000 0b000a      0.00000000      0.00067513      0.00000000      0.00515663     -0.07742749
 
 Energy:           -24.99994632    -24.99994632    -24.99994632    -24.99994632    -24.99846915
 
 
 CI Coefficients of symmetry 1 (Triplet)
 =======================================

 State:                   1               2               3               4               5               6               7
 0a00a00 000000     -0.00000000      0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.00000166      1.00000000
 a0000a0 000000     -0.00000002      0.99999230      0.00000000      0.00000171      0.00000095     -0.00000000     -0.00000000
 a0a0000 000000     -0.00000000     -0.00000095      0.00000000      0.00001128      0.99999230     -0.00000000      0.00000000
 a00a000 000000      0.00000000     -0.00000171     -0.00000000      0.99999230     -0.00001128      0.00000000      0.00000000
 a000a00 000000     -0.03950711     -0.00000000      0.99921158      0.00000000     -0.00000000     -0.00000000      0.00000000
 aa00000 000000      0.99921158      0.00000002      0.03950711     -0.00000000      0.00000000     -0.00000000      0.00000000
 0a0a000 000000      0.00000000      0.00000000     -0.00000000     -0.00000000      0.00000000      0.99654287      0.00000165
 a00000a 000000      0.00000000      0.00000000     -0.00000000      0.00000000      0.00000000      0.00000000      0.00000000
 00aa000 000000      0.00000000     -0.00000000     -0.00000000      0.00000000     -0.00000000     -0.00000280     -0.00000000
 00a0a00 000000      0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.00000081     -0.00000000
 00a00a0 000000     -0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000     -0.07430913     -0.00000012
 000a0a0 000000     -0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000      0.00000259      0.00000000
 0000aa0 000000     -0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000084     -0.00000000
 000aa00 000000     -0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000      0.03715457      0.00000006
 0a000a0 000000      0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00000113      0.00000000
 0aa0000 000000      0.00000000      0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00000103      0.00000000
 0000000 aa0000     -0.00000000     -0.00000000      0.00000000     -0.00000000      0.00000000      0.00000000     -0.00000000
 0000000 0aa000      0.00000000     -0.00000000     -0.00000000      0.00000000     -0.00000000     -0.00000000      0.00000000
 0000000 a0a000     -0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000      0.00000000      0.00000000
 0000000 a000a0     -0.00071894     -0.00000000     -0.00002843     -0.00000000      0.00000000      0.00000000     -0.00000000
 0000000 00aa00      0.00038409      0.00000000     -0.00060841     -0.00000000      0.00000000      0.00000000     -0.00000000
 0000000 0a000a      0.00033485      0.00000000      0.00063683      0.00000000     -0.00000000     -0.00000000      0.00000000
 
 Energy:           -25.06112371    -25.06112371    -25.06112371    -25.06112371    -25.06112371    -25.00437856    -25.00437856

 State:                   8               9              10              11              12              13              14
 0a00a00 000000     -0.00000000      0.00000000     -0.00000000     -0.00000000      0.00000000     -0.00000000      0.00000000
 a0000a0 000000      0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00000000
 a0a0000 000000      0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000000     -0.00000000      0.00000000
 a00a000 000000     -0.00000000      0.00000000      0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000
 a000a00 000000     -0.00000000      0.00000000     -0.00000000      0.00000000      0.00000000      0.00000000     -0.00000000
 aa00000 000000     -0.00000000      0.00000000     -0.00000000     -0.00000000      0.00000000     -0.00000000     -0.00000000
 0a0a000 000000     -0.00000240     -0.00000003      0.00000372      0.00000147      0.08308014     -0.00000000     -0.00000000
 a00000a 000000      0.00000000      0.00000000      0.00000000     -0.00000000     -0.00000000      0.98220630      0.00000000
 00aa000 000000     -0.00000202     -0.01230516      0.89434255      0.00002518     -0.00000644     -0.00000000      0.00000033
 00a0a00 000000     -0.03010932     -0.00000644     -0.00002532      0.89392026     -0.00000696      0.00000000      0.00000044
 00a00a0 000000      0.00000422     -0.00000154      0.00000616      0.00000701      0.89133504      0.00000000      0.36666954
 000a0a0 000000      0.87306190      0.00002165      0.00000774     -0.19432683     -0.00000239     -0.00000000      0.00000044
 0000aa0 000000     -0.00002077      0.86286716      0.23550005      0.00001219     -0.00000021      0.00000000     -0.00000033
 000aa00 000000     -0.00000211      0.00000077     -0.00000308     -0.00000351     -0.44566752     -0.00000000      0.73333906
 0a000a0 000000     -0.00001083      0.50528096     -0.38038288     -0.00000750      0.00000360     -0.00000000      0.00000057
 0aa0000 000000      0.48667889      0.00000878     -0.00001015      0.40391045     -0.00000540     -0.00000000     -0.00000077
 0000000 aa0000      0.00000000      0.00000000     -0.00000000      0.00000001     -0.00000000     -0.00000000      0.00000069
 0000000 0aa000      0.00000000     -0.00000000      0.00000000      0.00000000      0.00000000      0.00000000     -0.57239313
 0000000 a0a000     -0.00000000      0.00000001     -0.00000001     -0.00000000      0.00000000      0.00000000     -0.00000051
 0000000 a000a0      0.00000000      0.00000000      0.00000000     -0.00000000     -0.00000000      0.10842936     -0.00000000
 0000000 00aa00      0.00000000      0.00000000      0.00000000     -0.00000000     -0.00000000      0.10842936     -0.00000000
 0000000 0a000a      0.00000000      0.00000000      0.00000000     -0.00000000     -0.00000000      0.10842936      0.00000000
 
 Energy:           -25.00437856    -25.00437856    -25.00437856    -25.00437856    -25.00437856    -25.00361019    -25.00017264

 State:                  15              16
 0a00a00 000000     -0.00000000      0.00000000
 a0000a0 000000     -0.00000000      0.00000000
 a0a0000 000000      0.00000000      0.00000000
 a00a000 000000     -0.00000000     -0.00000000
 a000a00 000000     -0.00000000      0.00000000
 aa00000 000000      0.00000000     -0.00000000
 0a0a000 000000     -0.00000000     -0.00000000
 a00000a 000000     -0.00000000      0.00000000
 00aa000 000000     -0.00000049      0.36666952
 00a0a00 000000     -0.36666953     -0.00000049
 00a00a0 000000      0.00000044     -0.00000033
 000a0a0 000000     -0.36666953     -0.00000049
 0000aa0 000000      0.00000049     -0.36666953
 000aa00 000000      0.00000089     -0.00000066
 0a000a0 000000     -0.00000085      0.63509027
 0aa0000 000000      0.63509027      0.00000085
 0000000 aa0000     -0.57239313     -0.00000076
 0000000 0aa000     -0.00000069      0.00000051
 0000000 a0a000      0.00000076     -0.57239313
 0000000 a000a0      0.00000000     -0.00000000
 0000000 00aa00     -0.00000000      0.00000000
 0000000 0a000a     -0.00000000     -0.00000000
 
 Energy:           -25.00017264    -25.00017264
 


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       35.62       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       5        0.66       700     1000      520     2100     2140   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF   

 PROGRAMS   *        TOTAL     MULTI   RHF-SCF       INT
 CPU TIMES  *         3.33      1.74      0.02      1.18
 REAL TIME  *         4.77 SEC
 DISK USED  *        36.33 MB (local),      975.08 MB (total)
 SF USED    *        22.17 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

        ENERGY       LL
    -25.11727639   -0.0
    -25.05446389    6.0
    -25.05446389    6.0
    -25.05446389    6.0
    -25.05446389    6.0
    -25.05446389    6.0
    -24.99994632    6.0
    -24.99994632    6.0
    -24.99994632    6.0
    -24.99994632    6.0
    -24.99994632    6.0
    -24.99846915    0.0
    -25.06112371    6.0
    -25.06112371    6.0
    -25.06112371    6.0
    -25.06112371    6.0
    -25.06112371    6.0
    -25.00437856   12.0
    -25.00437856   12.0
    -25.00437856   12.0
    -25.00437856   12.0
    -25.00437856   12.0
    -25.00437856   12.0
    -25.00437856   12.0
    -25.00361019   -0.0
    -25.00017264    2.0
    -25.00017264    2.0
    -25.00017264    2.0
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 12  Roots:   1   2   3   4   5   6   7   8   9  10  11  12
 Number of reference states: 12  Roots:   1   2   3   4   5   6   7   8   9  10  11  12

 Reference symmetry:                   1   Singlet 
 Number of electrons:                 10
 Maximum number of shells:             5
 Maximum number of spin couplings:    14

 Reference space:       49 conf       49 CSFs
 N elec internal:    18369 conf    44681 CSFs
 N-1 el internal:     4797 conf    14053 CSFs
 N-2 el internal:      543 conf     1681 CSFs

 Number of electrons in valence space:                     10
 Maximum number of open shell orbitals in reference space:  2
 Maximum number of open shell orbitals in internal spaces:  8


 Number of closed-shell orbitals:   4 (   1   3 )
 Number of active  orbitals:       13 (   7   6 )
 Number of external orbitals:      70 (  30  40 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Valence orbitals related to previous ones by unitary transformation. Operators transformed.


 Number of p-space configurations:  49

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1       -25.11727639
     2       -25.05446389
     3       -25.05446389
     4       -25.05446389
     5       -25.05446389
     6       -25.05446389
     7       -24.99994632
     8       -24.99994632
     9       -24.99994632
    10       -24.99994632
    11       -24.99994632
    12       -24.99846915

 Number of blocks in overlap matrix:   249   Smallest eigenvalue:  0.31D+00
 Number of N-2 electron functions:     297
 Number of N-1 electron functions:   14053

 Number of internal configurations:                22428
 Number of singly external configurations:        491860
 Number of doubly external configurations:        366665
 Total number of contracted configurations:       880953
 Total number of uncontracted configurations:    2580013

 Diagonal Coupling coefficients finished.               Storage:13922065 words, CPU-Time:      2.14 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:  620078 words, CPU-time:      0.03 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000   -25.11727639     0.00000000    -0.20422055  0.37D-01  0.39D-01     4.47
    1     2     2     1.00000000     0.00000000   -25.05446389    -0.00000000    -0.21835412  0.48D-01  0.45D-01     4.47
    1     3     3     1.00000000     0.00000000   -25.05446389     0.00000000    -0.21888214  0.49D-01  0.45D-01     4.47
    1     4     4     1.00000000     0.00000000   -25.05446389     0.00000000    -0.21862275  0.49D-01  0.45D-01     4.47
    1     5     5     1.00000000     0.00000000   -25.05446389     0.00000000    -0.21873395  0.49D-01  0.45D-01     4.47
    1     6     6     1.00000000     0.00000000   -25.05446389    -0.00000000    -0.21869708  0.49D-01  0.45D-01     4.47
    1     7     7     1.00000000     0.00000000   -24.99994632     0.00000000    -0.22424612  0.44D-01  0.54D-01     4.47
    1     8     8     1.00000000     0.00000000   -24.99994632     0.00000000    -0.22421269  0.44D-01  0.54D-01     4.47
    1     9     9     1.00000000     0.00000000   -24.99994632    -0.00000000    -0.22333367  0.43D-01  0.54D-01     4.47
    1    10    10     1.00000000     0.00000000   -24.99994632     0.00000000    -0.22424733  0.44D-01  0.54D-01     4.47
    1    11    11     1.00000000     0.00000000   -24.99994632    -0.00000000    -0.22363971  0.43D-01  0.54D-01     4.47
    1    12    12     1.00000000     0.00000000   -24.99846915     0.00000000    -0.20122285  0.37D-01  0.40D-01     4.47
    2     1     1     1.06622166    -0.21393331   -25.33120970    -0.21393331    -0.00529052  0.16D-02  0.66D-03    20.96
    2     2     2     1.07765900    -0.21594050   -25.27040439    -0.21594050    -0.00578097  0.20D-02  0.88D-03    20.96
    2     3     3     1.07771030    -0.21590674   -25.27037063    -0.21590674    -0.00581596  0.20D-02  0.88D-03    20.96
    2     4     4     1.07772804    -0.21588689   -25.27035077    -0.21588689    -0.00584381  0.20D-02  0.89D-03    20.96
    2     5     5     1.07776313    -0.21588653   -25.27035042    -0.21588653    -0.00584582  0.20D-02  0.89D-03    20.96
    2     6     6     1.07776173    -0.21586357   -25.27032745    -0.21586357    -0.00586624  0.20D-02  0.89D-03    20.96
    2     7     7     1.07827893    -0.21505415   -25.21500047    -0.21505415    -0.00570575  0.21D-02  0.11D-02    20.96
    2     8     8     1.07837718    -0.21497192   -25.21491824    -0.21497192    -0.00581277  0.22D-02  0.11D-02    20.96
    2     9     9     1.07844451    -0.21486887   -25.21481519    -0.21486887    -0.00594643  0.23D-02  0.11D-02    20.96
    2    10    10     1.07844032    -0.21486678   -25.21481310    -0.21486678    -0.00594852  0.23D-02  0.11D-02    20.96
    2    11    11     1.07843700    -0.21486485   -25.21481117    -0.21486485    -0.00595148  0.23D-02  0.11D-02    20.96
    2    12    12     1.06787971    -0.21117650   -25.20964565    -0.21117650    -0.00509819  0.16D-02  0.75D-03    20.96
    3     1     1     1.06909483    -0.21946971   -25.33674610    -0.00553640    -0.00019454  0.57D-04  0.28D-04    36.13
    3     2     2     1.07995852    -0.22192858   -25.27639247    -0.00598808    -0.00023467  0.84D-04  0.43D-04    36.13
    3     3     3     1.07994421    -0.22192788   -25.27639177    -0.00602114    -0.00023491  0.84D-04  0.43D-04    36.13
    3     4     4     1.07995982    -0.22192551   -25.27638940    -0.00603862    -0.00023776  0.85D-04  0.43D-04    36.13
    3     5     5     1.07995917    -0.22192487   -25.27638875    -0.00603834    -0.00023809  0.86D-04  0.43D-04    36.13
    3     6     6     1.07995916    -0.22192445   -25.27638834    -0.00606089    -0.00023858  0.86D-04  0.44D-04    36.13
    3     7     7     1.07875923    -0.22086280   -25.22080912    -0.00580866    -0.00021482  0.55D-04  0.57D-04    36.13
    3     8     8     1.07876687    -0.22085587   -25.22080219    -0.00588395    -0.00022347  0.57D-04  0.59D-04    36.13
    3     9     9     1.07876680    -0.22085047   -25.22079679    -0.00598160    -0.00023059  0.58D-04  0.61D-04    36.13
    3    10    10     1.07876657    -0.22084994   -25.22079626    -0.00598316    -0.00023122  0.58D-04  0.62D-04    36.13
    3    11    11     1.07876273    -0.22084960   -25.22079592    -0.00598475    -0.00023138  0.58D-04  0.62D-04    36.13
    3    12    12     1.07017577    -0.21645385   -25.21492299    -0.00527735    -0.00020207  0.48D-04  0.47D-04    36.13
    4     1     1     1.06986210    -0.21967728   -25.33695367    -0.00020756    -0.00001286  0.86D-05  0.14D-05    50.46
    4     2     2     1.08171186    -0.22219946   -25.27666335    -0.00027088    -0.00002357  0.21D-04  0.27D-05    50.46
    4     3     3     1.08171207    -0.22219939   -25.27666328    -0.00027151    -0.00002365  0.21D-04  0.26D-05    50.46
    4     4     4     1.08170206    -0.22219894   -25.27666283    -0.00027343    -0.00002393  0.22D-04  0.27D-05    50.46
    4     5     5     1.08170193    -0.22219884   -25.27666273    -0.00027397    -0.00002399  0.22D-04  0.27D-05    50.46
    4     6     6     1.08170204    -0.22219877   -25.27666265    -0.00027431    -0.00002404  0.22D-04  0.27D-05    50.46
    4     7     7     1.07976209    -0.22109314   -25.22103945    -0.00023033    -0.00001572  0.13D-04  0.22D-05    50.46
    4     8     8     1.07976156    -0.22109312   -25.22103944    -0.00023725    -0.00001575  0.13D-04  0.22D-05    50.46
    4     9     9     1.07976081    -0.22109304   -25.22103936    -0.00024258    -0.00001578  0.13D-04  0.22D-05    50.46
    4    10    10     1.07977593    -0.22109293   -25.22103925    -0.00024299    -0.00001565  0.13D-04  0.22D-05    50.46
    4    11    11     1.07977778    -0.22109271   -25.22103903    -0.00024311    -0.00001565  0.13D-04  0.22D-05    50.46
    4    12    12     1.07100842    -0.21666041   -25.21512956    -0.00020656    -0.00001274  0.75D-05  0.22D-05    50.46
    5     1     1     1.07018995    -0.21969237   -25.33696876    -0.00001509    -0.00000120  0.64D-06  0.16D-06    64.80
    5     2     2     1.08269518    -0.22223262   -25.27669651    -0.00003316    -0.00000336  0.16D-05  0.51D-06    64.80
    5     3     3     1.08269407    -0.22223258   -25.27669647    -0.00003319    -0.00000338  0.16D-05  0.51D-06    64.80
    5     4     4     1.08269164    -0.22223250   -25.27669639    -0.00003356    -0.00000345  0.17D-05  0.51D-06    64.80
    5     5     5     1.08269106    -0.22223249   -25.27669638    -0.00003365    -0.00000345  0.17D-05  0.51D-06    64.80
    5     6     6     1.08269113    -0.22223248   -25.27669637    -0.00003372    -0.00000346  0.17D-05  0.51D-06    64.80
    5     7     7     1.08015563    -0.22111268   -25.22105900    -0.00001955    -0.00000159  0.93D-06  0.24D-06    64.80
    5     8     8     1.08015589    -0.22111268   -25.22105900    -0.00001956    -0.00000159  0.93D-06  0.24D-06    64.80
    5     9     9     1.08015543    -0.22111267   -25.22105899    -0.00001962    -0.00000160  0.94D-06  0.24D-06    64.80
    5    10    10     1.08016008    -0.22111260   -25.22105892    -0.00001967    -0.00000164  0.94D-06  0.24D-06    64.80
    5    11    11     1.08016350    -0.22111250   -25.22105882    -0.00001979    -0.00000170  0.95D-06  0.25D-06    64.80
    5    12    12     1.07124515    -0.21667466   -25.21514381    -0.00001425    -0.00000115  0.63D-06  0.21D-06    64.80
    6     1     1     1.07025975    -0.21969378   -25.33697017    -0.00000141    -0.00000010  0.37D-07  0.15D-07    78.24
    6     2     2     1.08286349    -0.22223680   -25.27670068    -0.00000417    -0.00000033  0.19D-06  0.44D-07    78.24
    6     3     3     1.08286264    -0.22223679   -25.27670068    -0.00000421    -0.00000034  0.19D-06  0.44D-07    78.24
    6     4     4     1.08286224    -0.22223678   -25.27670067    -0.00000428    -0.00000035  0.20D-06  0.45D-07    78.24
    6     5     5     1.08286176    -0.22223678   -25.27670067    -0.00000429    -0.00000035  0.20D-06  0.45D-07    78.24
    6     6     6     1.08286185    -0.22223678   -25.27670067    -0.00000430    -0.00000035  0.20D-06  0.45D-07    78.24
    6     7     7     1.08020613    -0.22111463   -25.22106095    -0.00000194    -0.00000015  0.49D-07  0.34D-07    78.24
    6     8     8     1.08020620    -0.22111463   -25.22106095    -0.00000195    -0.00000015  0.50D-07  0.34D-07    78.24
    6     9     9     1.08020598    -0.22111463   -25.22106095    -0.00000196    -0.00000015  0.50D-07  0.34D-07    78.24
    6    10    10     1.08020726    -0.22111462   -25.22106094    -0.00000202    -0.00000015  0.51D-07  0.35D-07    78.24
    6    11    11     1.08020846    -0.22111461   -25.22106093    -0.00000211    -0.00000016  0.52D-07  0.37D-07    78.24
    6    12    12     1.07129489    -0.21667602   -25.21514517    -0.00000136    -0.00000011  0.35D-07  0.23D-07    78.24
    7     1     1     1.07027320    -0.21969389   -25.33697027    -0.00000011    -0.00000001  0.46D-08  0.99D-09    91.61
    7     2     2     1.08291234    -0.22223718   -25.27670106    -0.00000038    -0.00000004  0.32D-07  0.49D-08    91.61
    7     3     3     1.08291207    -0.22223717   -25.27670106    -0.00000038    -0.00000004  0.32D-07  0.50D-08    91.61
    7     4     4     1.08291158    -0.22223717   -25.27670106    -0.00000039    -0.00000004  0.33D-07  0.52D-08    91.61
    7     5     5     1.08291142    -0.22223717   -25.27670106    -0.00000039    -0.00000004  0.33D-07  0.52D-08    91.61
    7     6     6     1.08291151    -0.22223717   -25.27670106    -0.00000039    -0.00000004  0.33D-07  0.53D-08    91.61
    7     7     7     1.08021562    -0.22111479   -25.22106111    -0.00000016    -0.00000001  0.13D-07  0.31D-08    91.61
    7     8     8     1.08021559    -0.22111479   -25.22106111    -0.00000016    -0.00000002  0.13D-07  0.31D-08    91.61
    7     9     9     1.08021557    -0.22111479   -25.22106111    -0.00000016    -0.00000002  0.13D-07  0.31D-08    91.61
    7    10    10     1.08021614    -0.22111479   -25.22106111    -0.00000017    -0.00000002  0.14D-07  0.34D-08    91.61
    7    11    11     1.08021676    -0.22111479   -25.22106111    -0.00000018    -0.00000002  0.14D-07  0.36D-08    91.61
    7    12    12     1.07130277    -0.21667615   -25.21514530    -0.00000013    -0.00000001  0.89D-08  0.18D-08    91.61
    8     1     1     1.07027482    -0.21969389   -25.33697028    -0.00000000    -0.00000001  0.32D-08  0.68D-09   104.48
    8     2     2     1.08293340    -0.22223722   -25.27670111    -0.00000005    -0.00000001  0.35D-08  0.98D-09   104.48
    8     3     3     1.08293331    -0.22223722   -25.27670111    -0.00000005    -0.00000001  0.35D-08  0.99D-09   104.48
    8     4     4     1.08293305    -0.22223722   -25.27670111    -0.00000005    -0.00000001  0.37D-08  0.10D-08   104.48
    8     5     5     1.08293310    -0.22223722   -25.27670111    -0.00000005    -0.00000001  0.37D-08  0.10D-08   104.48
    8     6     6     1.08293307    -0.22223722   -25.27670111    -0.00000005    -0.00000001  0.37D-08  0.10D-08   104.48
    8     7     7     1.08021727    -0.22111481   -25.22106113    -0.00000002    -0.00000000  0.13D-08  0.57D-09   104.48
    8     8     8     1.08021727    -0.22111481   -25.22106113    -0.00000002    -0.00000000  0.13D-08  0.57D-09   104.48
    8     9     9     1.08021726    -0.22111481   -25.22106113    -0.00000002    -0.00000000  0.13D-08  0.57D-09   104.48
    8    10    10     1.08021736    -0.22111481   -25.22106113    -0.00000002    -0.00000000  0.13D-08  0.60D-09   104.48
    8    11    11     1.08021745    -0.22111481   -25.22106113    -0.00000002    -0.00000000  0.13D-08  0.64D-09   104.48
    8    12    12     1.07130421    -0.21667616   -25.21514531    -0.00000001    -0.00000000  0.43D-09  0.19D-09   104.48


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I  20.0%
 S  11.4%  26.1%
 P   1.0%  14.0%  13.8%

 Initialization:   2.3%
 Other:           11.4%

 Total CPU:      104.5 seconds
 =====================================



 Wavefunction saved on  5101.2

 Reference coefficients greater than 0.0500000
 =============================================
 22000000222000000           0.9213094  -0.0000000  -0.0000000  -0.0000000  -0.0000000   0.0000000   0.0000000  -0.0000000
                            -0.0000000  -0.0000000  -0.0000000   0.0742595
 2/0000\0222000000           0.0000000  -0.0000000  -0.0000000   0.8884543   0.0000000  -0.0000000  -0.0000000   0.0000000
                             0.1161493   0.0000000   0.0000000   0.0000000
 2/00\000222000000           0.0000000  -0.0000000  -0.0000000  -0.0000000   0.8884543  -0.0000000   0.0000000  -0.1161493
                            -0.0000000  -0.0000000  -0.0000000  -0.0000000
 2/0\0000222000000          -0.0000000  -0.0000000  -0.0000000   0.0000000   0.0000000   0.8884543  -0.1161492   0.0000000
                            -0.0000000  -0.0000000  -0.0000000   0.0000000
 2/\00000222000000           0.0000000   0.8869765   0.0512254  -0.0000000  -0.0000000   0.0000000   0.0000000   0.0000000
                             0.0000000  -0.0042967  -0.1160694   0.0000000
 2/000\00222000000           0.0000000  -0.0512254   0.8869764   0.0000000  -0.0000000   0.0000000   0.0000000   0.0000000
                            -0.0000000  -0.1160696   0.0042967   0.0000000
 2/00000\222000000          -0.0986716  -0.0000000   0.0000000  -0.0000000   0.0000000  -0.0000000  -0.0000000   0.0000000
                             0.0000000   0.0000001   0.0000001   0.8200253
 20/0\000222000000           0.0000000  -0.0000000  -0.0000000  -0.0000000   0.1872748  -0.0000000   0.0000000   0.6379524
                             0.0000000  -0.0000000  -0.0000000  -0.0000000
 20/00\00222000000           0.0000001  -0.0107977   0.1869628  -0.0000000   0.0000000   0.0000000  -0.0000000  -0.0000000
                            -0.0000000   0.6375194  -0.0235998   0.0000001
 2000/0\0222000000          -0.0000000   0.0000000   0.0000000  -0.0000000  -0.0000000  -0.1621844  -0.5524855   0.0000000
                             0.0000000  -0.0000000   0.0000000  -0.0000000
 200/\000222000000           0.0000000  -0.0000000  -0.0000000  -0.1621845   0.0000000   0.0000000   0.0000000  -0.0000000
                             0.5524851   0.0000000  -0.0000000  -0.0000000
 200/00\0222000000          -0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.1621845   0.0000000   0.0000000  -0.5524848
                             0.0000000  -0.0000000  -0.0000000   0.0000000
 20000/\0222000000           0.0000000  -0.0000000   0.0000000  -0.1621848  -0.0000000   0.0000000  -0.0000000  -0.0000000
                             0.5524830  -0.0000000   0.0000000  -0.0000000
 200/0\00222000000          -0.0000000  -0.0000000   0.0000000  -0.0000000  -0.0000000   0.1621848   0.5524829  -0.0000000
                             0.0000000   0.0000000   0.0000000   0.0000000
 20002000222000000          -0.0483973   0.1322025   0.0076351   0.0000000   0.0000000  -0.0000000  -0.0000000   0.0000000
                             0.0000000   0.0166873   0.4507937   0.1516404
 20200000222000000          -0.0483989  -0.1322028  -0.0076351  -0.0000000  -0.0000000  -0.0000000  -0.0000000   0.0000000
                            -0.0000000  -0.0166878  -0.4507908   0.1516381
 20000200222000000          -0.0483989   0.1322030   0.0076350   0.0000000   0.0000000  -0.0000000   0.0000000  -0.0000000
                             0.0000000   0.0166877   0.4507903   0.1516380
 20000000222/0\000          -0.0000000   0.0000000  -0.0000000  -0.2504580  -0.0000000  -0.0000000   0.0000000  -0.0000000
                            -0.4220672  -0.0000000  -0.0000000   0.0000000
 20000000222/\0000           0.0000000   0.0000000   0.0000000  -0.0000000  -0.0000000  -0.2504580   0.4220672  -0.0000000
                             0.0000000   0.0000000   0.0000000  -0.0000000
 200000002220/\000          -0.0000000   0.0000000  -0.0000000   0.0000000  -0.2504579   0.0000000  -0.0000000   0.4220671
                            -0.0000000  -0.0000000  -0.0000000   0.0000000
 20000020222000000          -0.0483972  -0.0594891  -0.1183087   0.0000000  -0.0000000  -0.0000000   0.0000000  -0.0000000
                             0.0000000  -0.3987388  -0.2109450   0.1516407
 20020000222000000          -0.0483974  -0.0727134   0.1106736  -0.0000000   0.0000000  -0.0000000   0.0000000   0.0000000
                             0.0000000   0.3820511  -0.2398490   0.1516403
 20000000222200000          -0.1256679  -0.2041572  -0.0117907  -0.0000000  -0.0000000   0.0000000   0.0000000   0.0000000
                            -0.0000000   0.0127484   0.3443812  -0.1574371
 20/000\0222000000          -0.0000000  -0.0000000   0.0000000  -0.0936374  -0.0000000   0.0000000  -0.0000000  -0.0000000
                             0.3189756  -0.0000000   0.0000000  -0.0000000
 20/\0000222000000           0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.0936375  -0.3189749   0.0000000
                             0.0000000  -0.0000000   0.0000000  -0.0000000
 20000000222020000          -0.1256679   0.0918676   0.1827008   0.0000000   0.0000000   0.0000000  -0.0000000  -0.0000000
                            -0.0000000  -0.3046167  -0.1611500  -0.1574373
 20000000222002000          -0.1256679   0.1122897  -0.1709102  -0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.0000000
                             0.0000000   0.2918683  -0.1832311  -0.1574371
 20000002222000000          -0.0107517   0.0000000  -0.0000000  -0.0000000  -0.0000000   0.0000000   0.0000000  -0.0000000
                            -0.0000000  -0.0000000  -0.0000000  -0.1768888
 200/000\222000000           0.0000000   0.0000000  -0.0000000  -0.0000000   0.0000000   0.0136605  -0.1224086   0.0000000
                             0.0000000  -0.0000000   0.0000000   0.0000000
 2000/00\222000000          -0.0000000   0.0000000   0.0000000   0.0000000   0.0136605  -0.0000000  -0.0000000  -0.1224084
                             0.0000000   0.0000000   0.0000000   0.0000000
 200000/\222000000           0.0000000  -0.0000000  -0.0000000   0.0136604   0.0000000   0.0000000  -0.0000000  -0.0000000
                             0.1224076   0.0000000  -0.0000000  -0.0000000
 20/0000\222000000          -0.0000001   0.0136382   0.0007877   0.0000000   0.0000000   0.0000000  -0.0000000  -0.0000000
                            -0.0000000  -0.0045288  -0.1223260  -0.0000002
 20000/0\222000000          -0.0000001  -0.0007876   0.0136381  -0.0000000   0.0000000   0.0000000  -0.0000000  -0.0000000
                            -0.0000000  -0.1223257   0.0045279  -0.0000003
 20000000222/000\0          -0.0359288  -0.0296624  -0.0017131   0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.0000000
                             0.0000000   0.0001778   0.0048030   0.0858518
 200000002220/000\          -0.0359288   0.0133476   0.0265450  -0.0000000   0.0000000  -0.0000000  -0.0000000   0.0000000
                             0.0000000  -0.0042486  -0.0022475   0.0858518
 2000000022200/\00          -0.0359288   0.0163148  -0.0248318  -0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0000000
                             0.0000000   0.0040709  -0.0025554   0.0858518

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.958232   -0.000000    0.000000    0.000000    0.000000   -0.000000   -0.000000    0.000000    0.000000    0.000000
             0.000000   -0.054787
 2          -0.000000    0.951535   -0.000000   -0.073377   -0.000000   -0.000000   -0.000000   -0.000000    0.044986   -0.000000
             0.015693   -0.000000
 3          -0.000000    0.073377   -0.000000    0.951535    0.000000   -0.000000   -0.000000    0.000000   -0.015693   -0.000000
             0.044986    0.000000
 4          -0.000000    0.000000    0.954360    0.000000   -0.000000    0.000000    0.000000   -0.047644   -0.000000   -0.000000
            -0.000000   -0.000000
 5          -0.000000    0.000000    0.000000    0.000000    0.954360    0.000000   -0.000000   -0.000000    0.000000    0.047644
             0.000000    0.000000
 6           0.000000    0.000000   -0.000000    0.000000   -0.000000    0.954360    0.047644    0.000000    0.000000   -0.000000
             0.000000   -0.000000
 7           0.000000    0.000000   -0.000000    0.000000    0.000000   -0.047610    0.956390   -0.000000    0.000000    0.000000
            -0.000000   -0.000000
 8          -0.000000    0.000000    0.000000    0.000000   -0.047610    0.000000   -0.000000   -0.000000    0.000000    0.956390
             0.000000    0.000000
 9          -0.000000    0.000000    0.047610   -0.000000    0.000000   -0.000000    0.000000    0.956390    0.000000    0.000000
             0.000000    0.000000
 10          0.000000   -0.002678    0.000000   -0.047535   -0.000000   -0.000000    0.000000   -0.000000   -0.333632   -0.000000
             0.896310    0.000000
 11          0.000000   -0.047535    0.000000    0.002678   -0.000000   -0.000000   -0.000000   -0.000000    0.896310   -0.000000
             0.333632   -0.000000
 12          0.057433   -0.000000    0.000000   -0.000000   -0.000000    0.000000    0.000000   -0.000000    0.000000   -0.000000
             0.000000    0.957255

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.959796   -0.000000    0.000000   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.000000
             0.000000    0.001349
 2          -0.000000    0.955548   -0.000000   -0.000000    0.000000   -0.000000   -0.000000   -0.000000   -0.000000   -0.000001
             0.000067   -0.000000
 3           0.000000   -0.000000    0.955548    0.000000    0.000000    0.000000   -0.000000   -0.000000    0.000000    0.000068
             0.000001   -0.000000
 4          -0.000000   -0.000000    0.000000    0.955548    0.000000    0.000000   -0.000000    0.000000   -0.000068    0.000000
            -0.000000   -0.000000
 5          -0.000000    0.000000    0.000000    0.000000    0.955548    0.000000   -0.000000    0.000068    0.000000    0.000000
             0.000000    0.000000
 6          -0.000000   -0.000000    0.000000    0.000000    0.000000    0.955548    0.000068   -0.000000   -0.000000   -0.000000
            -0.000000    0.000000
 7          -0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.000068    0.957574   -0.000000    0.000000   -0.000000
             0.000000   -0.000000
 8          -0.000000   -0.000000   -0.000000    0.000000    0.000068   -0.000000   -0.000000    0.957574   -0.000000   -0.000000
             0.000000    0.000000
 9          -0.000000   -0.000000    0.000000   -0.000068    0.000000   -0.000000    0.000000   -0.000000    0.957574    0.000000
            -0.000000    0.000000
 10          0.000000   -0.000001    0.000068    0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.957574
            -0.000000    0.000000
 11          0.000000    0.000067    0.000001   -0.000000    0.000000   -0.000000    0.000000    0.000000   -0.000000   -0.000000
             0.957574    0.000000
 12          0.001349   -0.000000   -0.000000   -0.000000    0.000000    0.000000   -0.000000    0.000000    0.000000    0.000000
             0.000000    0.958975


 RESULTS FOR STATE 1.1
 =====================

 Coefficient of reference function:   C(0) = 0.95823172 (fixed)   0.96010632 (relaxed)   0.95979573 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.01425479   -0.02310220   -0.14794504
 Singles      0.03329152   -0.07224446   -0.07329047
 Pairs        0.03798505    0.01001786    0.00154162
 Total        1.08553136   -0.08532881   -0.21969389
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -25.11687000
 Nuclear energy                         0.00000000
 Kinetic energy                         6.90612069
 One electron energy                  -41.23619794
 Two electron energy                   15.89922767
 Virial quotient                       -3.66877027
 Correlation energy                    -0.22010027
 !MRCI STATE 1.1 Energy               -25.336970277597

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.35579575 (Davidson, fixed reference)
 Cluster corrected energies           -25.35564120 (Davidson, relaxed reference)
 Cluster corrected energies           -25.35579575 (Davidson, rotated reference)

 Cluster corrected energies           -25.35282475 (Pople, fixed reference)
 Cluster corrected energies           -25.35268796 (Pople, relaxed reference)
 Cluster corrected energies           -25.35282475 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Coefficient of reference function:   C(0) = 0.95153469 (fixed)   0.95656139 (relaxed)   0.95554826 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.01133026   -0.01661986   -0.13744975
 Singles      0.04164763   -0.07421980   -0.07622014
 Pairs        0.04222542    0.00000000   -0.00856733
 Total        1.09520331   -0.09083966   -0.22223722
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -25.05432873
 Nuclear energy                         0.00000000
 Kinetic energy                         7.07272847
 One electron energy                  -41.47296438
 Two electron energy                   16.19626327
 Virial quotient                       -3.57382603
 Correlation energy                    -0.22237237
 !MRCI STATE 2.1 Energy               -25.276701107780

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.29787169 (Davidson, fixed reference)
 Cluster corrected energies           -25.29735607 (Davidson, relaxed reference)
 Cluster corrected energies           -25.29787169 (Davidson, rotated reference)

 Cluster corrected energies           -25.29463443 (Pople, fixed reference)
 Cluster corrected energies           -25.29417332 (Pople, relaxed reference)
 Cluster corrected energies           -25.29463443 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.95153474 (fixed)   0.95656144 (relaxed)   0.95554831 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.01133023   -0.01661986   -0.13744974
 Singles      0.04164755   -0.07421983   -0.07622013
 Pairs        0.04222541   -0.00000000   -0.00856735
 Total        1.09520319   -0.09083968   -0.22223722
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -25.05432873
 Nuclear energy                         0.00000000
 Kinetic energy                         7.07272850
 One electron energy                  -41.47296416
 Two electron energy                   16.19626305
 Virial quotient                       -3.57382601
 Correlation energy                    -0.22237237
 !MRCI STATE 3.1 Energy               -25.276701107499

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.29787167 (Davidson, fixed reference)
 Cluster corrected energies           -25.29735605 (Davidson, relaxed reference)
 Cluster corrected energies           -25.29787167 (Davidson, rotated reference)

 Cluster corrected energies           -25.29463440 (Pople, fixed reference)
 Cluster corrected energies           -25.29417330 (Pople, relaxed reference)
 Cluster corrected energies           -25.29463440 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.95435992 (fixed)   0.95656156 (relaxed)   0.95554845 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.01133019   -0.01661985   -0.13744977
 Singles      0.04164730   -0.07421983   -0.07622011
 Pairs        0.04222539    0.00000000   -0.00856735
 Total        1.09520288   -0.09083968   -0.22223722
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -25.05432873
 Nuclear energy                         0.00000000
 Kinetic energy                         7.07272828
 One electron energy                  -41.47296262
 Two electron energy                   16.19626151
 Virial quotient                       -3.57382613
 Correlation energy                    -0.22237237
 !MRCI STATE 4.1 Energy               -25.276701107267

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.29787160 (Davidson, fixed reference)
 Cluster corrected energies           -25.29735599 (Davidson, relaxed reference)
 Cluster corrected energies           -25.29787160 (Davidson, rotated reference)

 Cluster corrected energies           -25.29463434 (Pople, fixed reference)
 Cluster corrected energies           -25.29417324 (Pople, relaxed reference)
 Cluster corrected energies           -25.29463434 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Coefficient of reference function:   C(0) = 0.95435989 (fixed)   0.95656153 (relaxed)   0.95554842 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.01133019   -0.01661985   -0.13744978
 Singles      0.04164734   -0.07421981   -0.07622011
 Pairs        0.04222541   -0.00000000   -0.00856734
 Total        1.09520295   -0.09083966   -0.22223722
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -25.05432873
 Nuclear energy                         0.00000000
 Kinetic energy                         7.07272830
 One electron energy                  -41.47296269
 Two electron energy                   16.19626158
 Virial quotient                       -3.57382612
 Correlation energy                    -0.22237237
 !MRCI STATE 5.1 Energy               -25.276701107218

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.29787161 (Davidson, fixed reference)
 Cluster corrected energies           -25.29735600 (Davidson, relaxed reference)
 Cluster corrected energies           -25.29787161 (Davidson, rotated reference)

 Cluster corrected energies           -25.29463435 (Pople, fixed reference)
 Cluster corrected energies           -25.29417325 (Pople, relaxed reference)
 Cluster corrected energies           -25.29463435 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Coefficient of reference function:   C(0) = 0.95435991 (fixed)   0.95656155 (relaxed)   0.95554844 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.01133019   -0.01661985   -0.13744980
 Singles      0.04164729   -0.07421979   -0.07622010
 Pairs        0.04222542    0.00000000   -0.00856732
 Total        1.09520290   -0.09083964   -0.22223722
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -25.05432873
 Nuclear energy                         0.00000000
 Kinetic energy                         7.07272822
 One electron energy                  -41.47296236
 Two electron energy                   16.19626125
 Virial quotient                       -3.57382615
 Correlation energy                    -0.22237237
 !MRCI STATE 6.1 Energy               -25.276701107172

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.29787160 (Davidson, fixed reference)
 Cluster corrected energies           -25.29735599 (Davidson, relaxed reference)
 Cluster corrected energies           -25.29787160 (Davidson, rotated reference)

 Cluster corrected energies           -25.29463434 (Pople, fixed reference)
 Cluster corrected energies           -25.29417325 (Pople, relaxed reference)
 Cluster corrected energies           -25.29463434 (Pople, rotated reference)



 RESULTS FOR STATE 7.1
 =====================

 Coefficient of reference function:   C(0) = 0.95638965 (fixed)   0.95858341 (relaxed)   0.95757397 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00958808   -0.01383641   -0.14107244
 Singles      0.03328919   -0.06938488   -0.07037227
 Pairs        0.04769721    0.00000000   -0.00967011
 Total        1.09057448   -0.08322128   -0.22111481
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -25.00008147
 Nuclear energy                         0.00000000
 Kinetic energy                         7.15709873
 One electron energy                  -41.48698017
 Two electron energy                   16.26591904
 Virial quotient                       -3.52392248
 Correlation energy                    -0.22097966
 !MRCI STATE 7.1 Energy               -25.221061127010

 Properties without orbital relaxation:

 !MRCI STATE 7.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.24107625 (Davidson, fixed reference)
 Cluster corrected energies           -25.24056895 (Davidson, relaxed reference)
 Cluster corrected energies           -25.24107625 (Davidson, rotated reference)

 Cluster corrected energies           -25.23796862 (Pople, fixed reference)
 Cluster corrected energies           -25.23751740 (Pople, relaxed reference)
 Cluster corrected energies           -25.23796862 (Pople, rotated reference)



 RESULTS FOR STATE 8.1
 =====================

 Maximum overlap with reference state 10

 Coefficient of reference function:   C(0) = 0.95638965 (fixed)   0.95858341 (relaxed)   0.95757397 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00958810   -0.01383641   -0.14107244
 Singles      0.03328918   -0.06938487   -0.07037226
 Pairs        0.04769721    0.00000000   -0.00967011
 Total        1.09057450   -0.08322128   -0.22111481
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -25.00008147
 Nuclear energy                         0.00000000
 Kinetic energy                         7.15709895
 One electron energy                  -41.48698093
 Two electron energy                   16.26591981
 Virial quotient                       -3.52392238
 Correlation energy                    -0.22097966
 !MRCI STATE 8.1 Energy               -25.221061127003

 Properties without orbital relaxation:

 !MRCI STATE 8.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.24107625 (Davidson, fixed reference)
 Cluster corrected energies           -25.24056895 (Davidson, relaxed reference)
 Cluster corrected energies           -25.24107625 (Davidson, rotated reference)

 Cluster corrected energies           -25.23796862 (Pople, fixed reference)
 Cluster corrected energies           -25.23751739 (Pople, relaxed reference)
 Cluster corrected energies           -25.23796862 (Pople, rotated reference)



 RESULTS FOR STATE 9.1
 =====================

 Maximum overlap with reference state  8

 Coefficient of reference function:   C(0) = 0.95638965 (fixed)   0.95858342 (relaxed)   0.95757397 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00958811   -0.01383641   -0.14107245
 Singles      0.03328916   -0.06938487   -0.07037226
 Pairs        0.04769723   -0.00000000   -0.00967010
 Total        1.09057450   -0.08322127   -0.22111481
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -25.00008147
 Nuclear energy                         0.00000000
 Kinetic energy                         7.15709879
 One electron energy                  -41.48698053
 Two electron energy                   16.26591940
 Virial quotient                       -3.52392245
 Correlation energy                    -0.22097966
 !MRCI STATE 9.1 Energy               -25.221061126972

 Properties without orbital relaxation:

 !MRCI STATE 9.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.24107625 (Davidson, fixed reference)
 Cluster corrected energies           -25.24056895 (Davidson, relaxed reference)
 Cluster corrected energies           -25.24107625 (Davidson, rotated reference)

 Cluster corrected energies           -25.23796862 (Pople, fixed reference)
 Cluster corrected energies           -25.23751739 (Pople, relaxed reference)
 Cluster corrected energies           -25.23796862 (Pople, rotated reference)



 RESULTS FOR STATE 10.1
 ======================

 Maximum overlap with reference state 11

 Coefficient of reference function:   C(0) = 0.89630953 (fixed)   0.95858337 (relaxed)   0.95757397 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00958801   -0.01383640   -0.14107239
 Singles      0.03328923   -0.06938492   -0.07037231
 Pairs        0.04769725    0.00000001   -0.00967011
 Total        1.09057450   -0.08322131   -0.22111481
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -25.00008147
 Nuclear energy                         0.00000000
 Kinetic energy                         7.15709640
 One electron energy                  -41.48697258
 Two electron energy                   16.26591146
 Virial quotient                       -3.52392363
 Correlation energy                    -0.22097966
 !MRCI STATE 10.1 Energy              -25.221061126805

 Properties without orbital relaxation:

 !MRCI STATE 10.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.24107625 (Davidson, fixed reference)
 Cluster corrected energies           -25.24056897 (Davidson, relaxed reference)
 Cluster corrected energies           -25.24107625 (Davidson, rotated reference)

 Cluster corrected energies           -25.23796862 (Pople, fixed reference)
 Cluster corrected energies           -25.23751741 (Pople, relaxed reference)
 Cluster corrected energies           -25.23796862 (Pople, rotated reference)



 RESULTS FOR STATE 11.1
 ======================

 Maximum overlap with reference state  9

 Coefficient of reference function:   C(0) = 0.89630953 (fixed)   0.95858334 (relaxed)   0.95757396 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00958794   -0.01383639   -0.14107233
 Singles      0.03328925   -0.06938497   -0.07037236
 Pairs        0.04769732    0.00000001   -0.00967011
 Total        1.09057450   -0.08322135   -0.22111481
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -25.00008147
 Nuclear energy                         0.00000000
 Kinetic energy                         7.15709330
 One electron energy                  -41.48696234
 Two electron energy                   16.26590121
 Virial quotient                       -3.52392516
 Correlation energy                    -0.22097965
 !MRCI STATE 11.1 Energy              -25.221061126629

 Properties without orbital relaxation:

 !MRCI STATE 11.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.24107625 (Davidson, fixed reference)
 Cluster corrected energies           -25.24056899 (Davidson, relaxed reference)
 Cluster corrected energies           -25.24107625 (Davidson, rotated reference)

 Cluster corrected energies           -25.23796862 (Pople, fixed reference)
 Cluster corrected energies           -25.23751743 (Pople, relaxed reference)
 Cluster corrected energies           -25.23796862 (Pople, rotated reference)



 RESULTS FOR STATE 12.1
 ======================

 Coefficient of reference function:   C(0) = 0.95725469 (fixed)   0.96022531 (relaxed)   0.95897511 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.01501513   -0.02120291   -0.02291670
 Singles      0.03275665   -0.06989231   -0.07080255
 Pairs        0.03961820   -0.12511788   -0.12295691
 Total        1.08738999   -0.21621310   -0.21667616
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -24.99887553
 Nuclear energy                         0.00000000
 Kinetic energy                         6.89307662
 One electron energy                  -40.44111556
 Two electron energy                   15.22597025
 Virial quotient                       -3.65803932
 Correlation energy                    -0.21626978
 !MRCI STATE 12.1 Energy              -25.215145311166

 Properties without orbital relaxation:

 !MRCI STATE 12.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.23404512 (Davidson, fixed reference)
 Cluster corrected energies           -25.23343315 (Davidson, relaxed reference)
 Cluster corrected energies           -25.23404512 (Davidson, rotated reference)

 Cluster corrected energies           -25.23108017 (Pople, fixed reference)
 Cluster corrected energies           -25.23053802 (Pople, relaxed reference)
 Cluster corrected energies           -25.23108017 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       35.62       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       6       86.72       700     1000      520     2100     2140     5101   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *       139.82    136.47      1.74      0.02      1.18
 REAL TIME  *       149.84 SEC
 DISK USED  *       122.40 MB (local),        2.97 GB (total)
 SF USED    *       906.37 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =       -25.35579575  AU                              
 SETTING HLSDIAG(2)     =       -25.29787169  AU                              
 SETTING HLSDIAG(3)     =       -25.29787167  AU                              
 SETTING HLSDIAG(4)     =       -25.29787160  AU                              
 SETTING HLSDIAG(5)     =       -25.29787161  AU                              
 SETTING HLSDIAG(6)     =       -25.29787160  AU                              
 SETTING HLSDIAG(7)     =       -25.24107625  AU                              
 SETTING HLSDIAG(8)     =       -25.24107625  AU                              
 SETTING HLSDIAG(9)     =       -25.24107625  AU                              
 SETTING HLSDIAG(10)    =       -25.24107625  AU                              
 SETTING HLSDIAG(11)    =       -25.24107625  AU                              
 SETTING HLSDIAG(12)    =       -25.23404512  AU                              


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 16  Roots:   1   2   3   4   5   6   7   8   9  10  11  12  13  14  15  16
 Number of reference states: 16  Roots:   1   2   3   4   5   6   7   8   9  10  11  12  13  14  15  16

 Reference symmetry:                   1   Triplet 
 Number of electrons:                 10
 Maximum number of shells:             4
 Maximum number of spin couplings:    28

 Reference space:       36 conf       36 CSFs
 N elec internal:    17792 conf    70416 CSFs
 N-1 el internal:     3957 conf    21461 CSFs
 N-2 el internal:      413 conf     2533 CSFs

 Number of electrons in valence space:                     10
 Maximum number of open shell orbitals in reference space:  2
 Maximum number of open shell orbitals in internal spaces:  8


 Number of closed-shell orbitals:   4 (   1   3 )
 Number of active  orbitals:       13 (   7   6 )
 Number of external orbitals:      70 (  30  40 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Coulomb and exchange operators available. No transformation done.


 Number of p-space configurations:  36

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1       -25.06112371
     2       -25.06112371
     3       -25.06112371
     4       -25.06112371
     5       -25.06112371
     6       -25.00437856
     7       -25.00437856
     8       -25.00437856
     9       -25.00437856
    10       -25.00437856
    11       -25.00437856
    12       -25.00437856
    13       -25.00361019
    14       -25.00017264
    15       -25.00017264
    16       -25.00017264

 Number of blocks in overlap matrix:   313   Smallest eigenvalue:  0.10D+01
 Number of N-2 electron functions:     361
 Number of N-1 electron functions:   21461

 Number of internal configurations:                35169
 Number of singly external configurations:        751200
 Number of doubly external configurations:        445955
 Total number of contracted configurations:      1232324
 Total number of uncontracted configurations:    3882679

 Diagonal Coupling coefficients finished.               Storage:21632647 words, CPU-Time:      5.86 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:  637307 words, CPU-time:      0.04 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000   -25.06112371     0.00000000    -0.22330357  0.52D-01  0.46D-01     9.48
    1     2     2     1.00000000     0.00000000   -25.06112371     0.00000000    -0.22333503  0.52D-01  0.46D-01     9.48
    1     3     3     1.00000000     0.00000000   -25.06112371     0.00000000    -0.22331351  0.52D-01  0.46D-01     9.48
    1     4     4     1.00000000     0.00000000   -25.06112371     0.00000000    -0.22332165  0.52D-01  0.46D-01     9.48
    1     5     5     1.00000000     0.00000000   -25.06112371     0.00000000    -0.22333288  0.52D-01  0.46D-01     9.48
    1     6     6     1.00000000     0.00000000   -25.00437856     0.00000000    -0.23359681  0.48D-01  0.57D-01     9.48
    1     7     7     1.00000000     0.00000000   -25.00437856     0.00000000    -0.23358990  0.48D-01  0.57D-01     9.48
    1     8     8     1.00000000     0.00000000   -25.00437856     0.00000000    -0.23346445  0.48D-01  0.57D-01     9.48
    1     9     9     1.00000000     0.00000000   -25.00437856     0.00000000    -0.23346181  0.48D-01  0.57D-01     9.48
    1    10    10     1.00000000     0.00000000   -25.00437856     0.00000000    -0.23348009  0.48D-01  0.57D-01     9.48
    1    11    11     1.00000000     0.00000000   -25.00437856    -0.00000000    -0.23346069  0.48D-01  0.57D-01     9.48
    1    12    12     1.00000000     0.00000000   -25.00437856    -0.00000000    -0.23346600  0.48D-01  0.57D-01     9.48
    1    13    13     1.00000000     0.00000000   -25.00361019     0.00000000    -0.19672790  0.37D-01  0.36D-01     9.48
    1    14    14     1.00000000     0.00000000   -25.00017264    -0.00000000    -0.22162048  0.42D-01  0.52D-01     9.48
    1    15    15     1.00000000     0.00000000   -25.00017264    -0.00000000    -0.22168022  0.42D-01  0.52D-01     9.48
    1    16    16     1.00000000     0.00000000   -25.00017264    -0.00000000    -0.22169582  0.42D-01  0.52D-01     9.48
    2     1     1     1.07839407    -0.21828168   -25.27940539    -0.21828168    -0.00628458  0.23D-02  0.88D-03    40.98
    2     2     2     1.07838038    -0.21827940   -25.27940310    -0.21827940    -0.00628473  0.23D-02  0.88D-03    40.98
    2     3     3     1.07839606    -0.21827799   -25.27940169    -0.21827799    -0.00628734  0.23D-02  0.88D-03    40.98
    2     4     4     1.07840121    -0.21826938   -25.27939309    -0.21826938    -0.00629472  0.23D-02  0.88D-03    40.98
    2     5     5     1.07839848    -0.21826803   -25.27939173    -0.21826803    -0.00629572  0.23D-02  0.88D-03    40.98
    2     6     6     1.08061277    -0.21759484   -25.22197340    -0.21759484    -0.00576851  0.20D-02  0.10D-02    40.98
    2     7     7     1.08061900    -0.21759445   -25.22197300    -0.21759445    -0.00576951  0.20D-02  0.10D-02    40.98
    2     8     8     1.08064010    -0.21759028   -25.22196883    -0.21759028    -0.00577329  0.20D-02  0.10D-02    40.98
    2     9     9     1.08063911    -0.21758498   -25.22196354    -0.21758498    -0.00578307  0.20D-02  0.10D-02    40.98
    2    10    10     1.08063898    -0.21758471   -25.22196327    -0.21758471    -0.00578338  0.20D-02  0.10D-02    40.98
    2    11    11     1.08061670    -0.21757298   -25.22195154    -0.21757298    -0.00579924  0.20D-02  0.10D-02    40.98
    2    12    12     1.08063313    -0.21756767   -25.22194623    -0.21756767    -0.00580407  0.20D-02  0.10D-02    40.98
    2    13    13     1.07622458    -0.21002781   -25.21363799    -0.21002781    -0.00590904  0.23D-02  0.11D-02    40.98
    2    14    14     1.07623083    -0.21344018   -25.21361283    -0.21344018    -0.00593605  0.24D-02  0.11D-02    40.98
    2    15    15     1.07622110    -0.21343909   -25.21361173    -0.21343909    -0.00593658  0.24D-02  0.11D-02    40.98
    2    16    16     1.06736222    -0.21340021   -25.21357285    -0.21340021    -0.00453289  0.13D-02  0.56D-03    40.98
    3     1     1     1.08035841    -0.22481368   -25.28593739    -0.00653200    -0.00022414  0.83D-04  0.36D-04    72.43
    3     2     2     1.08035694    -0.22481357   -25.28593728    -0.00653417    -0.00022441  0.83D-04  0.36D-04    72.43
    3     3     3     1.08035708    -0.22481341   -25.28593712    -0.00653542    -0.00022425  0.83D-04  0.36D-04    72.43
    3     4     4     1.08035566    -0.22481308   -25.28593679    -0.00654370    -0.00022471  0.83D-04  0.36D-04    72.43
    3     5     5     1.08035553    -0.22481304   -25.28593674    -0.00654501    -0.00022478  0.83D-04  0.36D-04    72.43
    3     6     6     1.08221489    -0.22360712   -25.22798567    -0.00601227    -0.00017057  0.42D-04  0.37D-04    72.43
    3     7     7     1.08221386    -0.22360698   -25.22798554    -0.00601254    -0.00017015  0.42D-04  0.37D-04    72.43
    3     8     8     1.08221011    -0.22360689   -25.22798545    -0.00601662    -0.00016995  0.42D-04  0.37D-04    72.43
    3     9     9     1.08220915    -0.22360687   -25.22798543    -0.00602189    -0.00016996  0.42D-04  0.37D-04    72.43
    3    10    10     1.08220154    -0.22360590   -25.22798445    -0.00602118    -0.00016954  0.42D-04  0.37D-04    72.43
    3    11    11     1.08220072    -0.22360589   -25.22798445    -0.00603292    -0.00016955  0.42D-04  0.37D-04    72.43
    3    12    12     1.08220412    -0.22360580   -25.22798436    -0.00603813    -0.00016951  0.43D-04  0.37D-04    72.43
    3    13    13     1.07610674    -0.21602133   -25.21963151    -0.00599352    -0.00021568  0.41D-04  0.57D-04    72.43
    3    14    14     1.07610316    -0.21945693   -25.21962957    -0.00601674    -0.00021774  0.41D-04  0.57D-04    72.43
    3    15    15     1.07609967    -0.21945681   -25.21962945    -0.00601772    -0.00021783  0.41D-04  0.57D-04    72.43
    3    16    16     1.07113335    -0.21826860   -25.21844124    -0.00486839    -0.00014074  0.44D-04  0.19D-04    72.43
    4     1     1     1.08204908    -0.22508034   -25.28620405    -0.00026666    -0.00002145  0.22D-04  0.18D-05   102.17
    4     2     2     1.08204904    -0.22508021   -25.28620392    -0.00026664    -0.00002146  0.22D-04  0.18D-05   102.17
    4     3     3     1.08204880    -0.22508019   -25.28620389    -0.00026678    -0.00002148  0.22D-04  0.18D-05   102.17
    4     4     4     1.08204757    -0.22508001   -25.28620371    -0.00026693    -0.00002141  0.22D-04  0.18D-05   102.17
    4     5     5     1.08204710    -0.22507986   -25.28620357    -0.00026683    -0.00002140  0.21D-04  0.18D-05   102.17
    4     6     6     1.08324211    -0.22380391   -25.22818247    -0.00019679    -0.00001257  0.13D-04  0.11D-05   102.17
    4     7     7     1.08324347    -0.22380348   -25.22818204    -0.00019650    -0.00001260  0.13D-04  0.11D-05   102.17
    4     8     8     1.08324369    -0.22380348   -25.22818204    -0.00019659    -0.00001260  0.14D-04  0.11D-05   102.17
    4     9     9     1.08324008    -0.22380322   -25.22818177    -0.00019635    -0.00001253  0.13D-04  0.11D-05   102.17
    4    10    10     1.08324101    -0.22380233   -25.22818089    -0.00019644    -0.00001261  0.13D-04  0.11D-05   102.17
    4    11    11     1.08324102    -0.22380233   -25.22818088    -0.00019643    -0.00001262  0.14D-04  0.11D-05   102.17
    4    12    12     1.08324290    -0.22380226   -25.22818082    -0.00019646    -0.00001262  0.14D-04  0.11D-05   102.17
    4    13    13     1.07680155    -0.21625798   -25.21986817    -0.00023666    -0.00001580  0.15D-04  0.18D-05   102.17
    4    14    14     1.07679922    -0.21969547   -25.21986811    -0.00023854    -0.00001592  0.15D-04  0.18D-05   102.17
    4    15    15     1.07679813    -0.21969547   -25.21986811    -0.00023866    -0.00001593  0.15D-04  0.18D-05   102.17
    4    16    16     1.07217102    -0.21842153   -25.21859417    -0.00015293    -0.00000740  0.51D-05  0.73D-06   102.17
    5     1     1     1.08306239    -0.22511070   -25.28623441    -0.00003036    -0.00000266  0.11D-05  0.38D-06   131.98
    5     2     2     1.08306187    -0.22511058   -25.28623429    -0.00003037    -0.00000266  0.11D-05  0.38D-06   131.98
    5     3     3     1.08306189    -0.22511058   -25.28623429    -0.00003039    -0.00000266  0.11D-05  0.38D-06   131.98
    5     4     4     1.08306061    -0.22511030   -25.28623401    -0.00003030    -0.00000266  0.11D-05  0.38D-06   131.98
    5     5     5     1.08306031    -0.22511014   -25.28623385    -0.00003028    -0.00000266  0.11D-05  0.38D-06   131.98
    5     6     6     1.08378184    -0.22382040   -25.22819896    -0.00001649    -0.00000118  0.48D-06  0.21D-06   131.98
    5     7     7     1.08378253    -0.22382007   -25.22819863    -0.00001659    -0.00000119  0.47D-06  0.21D-06   131.98
    5     8     8     1.08378259    -0.22382007   -25.22819863    -0.00001659    -0.00000119  0.47D-06  0.21D-06   131.98
    5     9     9     1.08378050    -0.22381966   -25.22819821    -0.00001644    -0.00000118  0.48D-06  0.21D-06   131.98
    5    10    10     1.08378177    -0.22381897   -25.22819753    -0.00001664    -0.00000119  0.47D-06  0.21D-06   131.98
    5    11    11     1.08378177    -0.22381897   -25.22819753    -0.00001665    -0.00000119  0.47D-06  0.21D-06   131.98
    5    12    12     1.08378204    -0.22381891   -25.22819747    -0.00001665    -0.00000119  0.47D-06  0.21D-06   131.98
    5    13    13     1.07707696    -0.21627881   -25.21988900    -0.00002083    -0.00000171  0.80D-06  0.29D-06   131.98
    5    14    14     1.07707715    -0.21971635   -25.21988899    -0.00002088    -0.00000171  0.80D-06  0.29D-06   131.98
    5    15    15     1.07707743    -0.21971630   -25.21988894    -0.00002083    -0.00000171  0.79D-06  0.29D-06   131.98
    5    16    16     1.07252551    -0.21842989   -25.21860254    -0.00000836    -0.00000050  0.28D-06  0.49D-07   131.98
    6     1     1     1.08320480    -0.22511397   -25.28623768    -0.00000327    -0.00000022  0.15D-06  0.22D-07   159.77
    6     2     2     1.08320446    -0.22511385   -25.28623756    -0.00000327    -0.00000023  0.15D-06  0.22D-07   159.77
    6     3     3     1.08320452    -0.22511385   -25.28623756    -0.00000327    -0.00000023  0.15D-06  0.22D-07   159.77
    6     4     4     1.08320304    -0.22511357   -25.28623728    -0.00000327    -0.00000022  0.15D-06  0.22D-07   159.77
    6     5     5     1.08320264    -0.22511341   -25.28623711    -0.00000327    -0.00000022  0.15D-06  0.22D-07   159.77
    6     6     6     1.08382519    -0.22382185   -25.22820041    -0.00000145    -0.00000008  0.30D-07  0.19D-07   159.77
    6     7     7     1.08382551    -0.22382153   -25.22820009    -0.00000146    -0.00000008  0.30D-07  0.19D-07   159.77
    6     8     8     1.08382552    -0.22382153   -25.22820009    -0.00000146    -0.00000008  0.30D-07  0.19D-07   159.77
    6     9     9     1.08382384    -0.22382110   -25.22819966    -0.00000145    -0.00000008  0.30D-07  0.19D-07   159.77
    6    10    10     1.08382450    -0.22382044   -25.22819899    -0.00000146    -0.00000008  0.30D-07  0.19D-07   159.77
    6    11    11     1.08382449    -0.22382044   -25.22819899    -0.00000147    -0.00000008  0.30D-07  0.19D-07   159.77
    6    12    12     1.08382463    -0.22382037   -25.22819893    -0.00000146    -0.00000008  0.30D-07  0.19D-07   159.77
    6    13    13     1.07708608    -0.21628093   -25.21989111    -0.00000212    -0.00000013  0.35D-07  0.29D-07   159.77
    6    14    14     1.07708609    -0.21971847   -25.21989111    -0.00000212    -0.00000013  0.35D-07  0.29D-07   159.77
    6    15    15     1.07708604    -0.21971841   -25.21989106    -0.00000212    -0.00000013  0.35D-07  0.29D-07   159.77
    6    16    16     1.07260263    -0.21843047   -25.21860311    -0.00000058    -0.00000004  0.23D-07  0.41D-08   159.77
    7     1     1     1.08325697    -0.22511423   -25.28623793    -0.00000026    -0.00000002  0.19D-07  0.25D-08   187.81
    7     2     2     1.08325676    -0.22511411   -25.28623781    -0.00000026    -0.00000002  0.19D-07  0.25D-08   187.81
    7     3     3     1.08325679    -0.22511411   -25.28623781    -0.00000026    -0.00000002  0.19D-07  0.25D-08   187.81
    7     4     4     1.08325507    -0.22511383   -25.28623753    -0.00000025    -0.00000002  0.18D-07  0.25D-08   187.81
    7     5     5     1.08325461    -0.22511366   -25.28623737    -0.00000025    -0.00000002  0.18D-07  0.25D-08   187.81
    7     6     6     1.08383569    -0.22382194   -25.22820050    -0.00000009    -0.00000001  0.65D-08  0.18D-08   187.81
    7     7     7     1.08383606    -0.22382162   -25.22820018    -0.00000009    -0.00000001  0.65D-08  0.18D-08   187.81
    7     8     8     1.08383607    -0.22382162   -25.22820018    -0.00000009    -0.00000001  0.65D-08  0.18D-08   187.81
    7     9     9     1.08383418    -0.22382120   -25.22819975    -0.00000009    -0.00000001  0.65D-08  0.18D-08   187.81
    7    10    10     1.08383495    -0.22382053   -25.22819909    -0.00000009    -0.00000001  0.65D-08  0.18D-08   187.81
    7    11    11     1.08383495    -0.22382053   -25.22819909    -0.00000009    -0.00000001  0.65D-08  0.18D-08   187.81
    7    12    12     1.08383521    -0.22382046   -25.22819902    -0.00000009    -0.00000001  0.65D-08  0.18D-08   187.81
    7    13    13     1.07708925    -0.21628107   -25.21989126    -0.00000014    -0.00000001  0.11D-07  0.18D-08   187.81
    7    14    14     1.07708924    -0.21971862   -25.21989126    -0.00000015    -0.00000001  0.11D-07  0.18D-08   187.81
    7    15    15     1.07708919    -0.21971856   -25.21989120    -0.00000014    -0.00000001  0.11D-07  0.18D-08   187.81
    7    16    16     1.07261744    -0.21843052   -25.21860316    -0.00000005    -0.00000000  0.35D-08  0.30D-09   187.81
    8     1     1     1.08327702    -0.22511426   -25.28623796    -0.00000003    -0.00000000  0.18D-08  0.38D-09   207.68
    8     2     2     1.08327683    -0.22511414   -25.28623784    -0.00000003    -0.00000000  0.18D-08  0.38D-09   207.68
    8     3     3     1.08327683    -0.22511414   -25.28623784    -0.00000003    -0.00000000  0.18D-08  0.38D-09   207.68
    8     4     4     1.08327513    -0.22511386   -25.28623756    -0.00000003    -0.00000000  0.18D-08  0.38D-09   207.68
    8     5     5     1.08327466    -0.22511369   -25.28623740    -0.00000003    -0.00000000  0.18D-08  0.38D-09   207.68
    8     6     6     1.08383568    -0.22382194   -25.22820050    -0.00000000    -0.00000001  0.65D-08  0.18D-08   207.68
    8     7     7     1.08383605    -0.22382162   -25.22820018    -0.00000000    -0.00000001  0.65D-08  0.18D-08   207.68
    8     8     8     1.08383606    -0.22382162   -25.22820018    -0.00000000    -0.00000001  0.65D-08  0.18D-08   207.68
    8     9     9     1.08383417    -0.22382120   -25.22819975    -0.00000000    -0.00000001  0.65D-08  0.18D-08   207.68
    8    10    10     1.08383494    -0.22382053   -25.22819909    -0.00000000    -0.00000001  0.65D-08  0.18D-08   207.68
    8    11    11     1.08383494    -0.22382053   -25.22819909    -0.00000000    -0.00000001  0.65D-08  0.18D-08   207.68
    8    12    12     1.08383521    -0.22382046   -25.22819902    -0.00000000    -0.00000001  0.65D-08  0.18D-08   207.68
    8    13    13     1.07708992    -0.21628108   -25.21989127    -0.00000001    -0.00000000  0.28D-09  0.22D-09   207.68
    8    14    14     1.07708992    -0.21971863   -25.21989127    -0.00000001    -0.00000000  0.28D-09  0.22D-09   207.68
    8    15    15     1.07708982    -0.21971857   -25.21989121    -0.00000001    -0.00000000  0.28D-09  0.22D-09   207.68
    8    16    16     1.07261744    -0.21843052   -25.21860316    -0.00000000    -0.00000000  0.35D-08  0.30D-09   207.68


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I  18.1%
 S  11.2%  27.9%
 P   0.9%  13.4%  16.2%

 Initialization:   2.9%
 Other:            9.4%

 Total CPU:      207.7 seconds
 =====================================



 Wavefunction saved on  5103.2

 Reference coefficients greater than 0.0500000
 =============================================
 20/00/00222000000          -0.0000000   0.0000000   0.0000000   0.0000693   0.0000000  -0.0000000   0.0000000   0.0000000
                             0.9572836  -0.0000000  -0.0000000   0.0000000   0.0000000   0.0000000  -0.0000000   0.0000000
 20/0/000222000000           0.0000729   0.0000000  -0.0000000   0.0000000   0.0000000   0.9572828  -0.0000000  -0.0000000
                             0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.0000000   0.0000000
 2//00000222000000          -0.0000000  -0.0000000   0.0000000  -0.0000107   0.9555081  -0.0000000  -0.0000000   0.0000000
                             0.0000000  -0.0000000   0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0000000   0.0000007
 2/000/00222000000           0.0000000  -0.0000000  -0.0000000   0.9555080   0.0000107   0.0000000  -0.0000000  -0.0000000
                            -0.0000755  -0.0000000   0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0000000   0.0000000
 2/0/0000222000000          -0.0000000   0.0000000   0.9555075   0.0000000  -0.0000000   0.0000000  -0.0000000   0.0000574
                            -0.0000000   0.0000535   0.0000000   0.0000000   0.0000018  -0.0000000  -0.0000000  -0.0000000
 2/0000/0222000000           0.0000000   0.9555075  -0.0000000   0.0000000   0.0000000  -0.0000000   0.0000574  -0.0000000
                            -0.0000000  -0.0000000  -0.0000535   0.0000000   0.0000000   0.0000018  -0.0000000  -0.0000000
 2/00/000222000000           0.9555074  -0.0000000   0.0000000  -0.0000000   0.0000000  -0.0000795   0.0000000  -0.0000000
                             0.0000000  -0.0000000   0.0000000   0.0000000   0.0000000   0.0000000   0.0000000  -0.0000000
 2/00000/222000000           0.0000000   0.0000000   0.0000000  -0.0000000  -0.0000008  -0.0000000  -0.0000000   0.0000000
                             0.0000000  -0.0000000  -0.0000000   0.0000000   0.0000000  -0.0000000  -0.0000000   0.9455324
 200/00/0222000000           0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.0000000   0.0000000   0.0000000  -0.0000000
                            -0.0000000  -0.0000000   0.0000000   0.8562912  -0.0000000   0.0000000   0.3657328  -0.0000000
 20000//0222000000           0.0000000  -0.0000614   0.0000000   0.0000000   0.0000000   0.0000000   0.7547284  -0.0000000
                             0.0000000  -0.0000000  -0.4043673  -0.0000000   0.0000000  -0.3658768   0.0000000  -0.0000000
 200/0/00222000000           0.0000000   0.0000000  -0.0000614   0.0000000  -0.0000000   0.0000000   0.0000000   0.7547191
                             0.0000000   0.4043847   0.0000000   0.0000000  -0.3658768   0.0000000   0.0000000  -0.0000000
 2000//00222000000           0.0000000   0.0000000   0.0000000   0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0000000
                             0.0000000   0.0000000   0.0000000  -0.4279689   0.0000000   0.0000000   0.7318744   0.0000000
 20/000/0222000000          -0.0000000  -0.0000372   0.0000000   0.0000000   0.0000000  -0.0000000   0.1008426  -0.0000000
                            -0.0000000  -0.0000000  -0.5968827  -0.0000000   0.0000000   0.6338462   0.0000000   0.0000000
 20//0000222000000           0.0000000  -0.0000000  -0.0000372   0.0000000   0.0000000   0.0000000   0.0000000   0.1008288
                            -0.0000000   0.5968850   0.0000000   0.0000000   0.6338462   0.0000000   0.0000000  -0.0000000
 200//000222000000          -0.0000000  -0.0000003   0.0000000  -0.0000000  -0.0000000   0.0000000   0.5801775  -0.0000000
                            -0.0000000  -0.0000000   0.6297699  -0.0000000   0.0000000   0.3657577   0.0000000   0.0000000
 2000/0/0222000000           0.0000000  -0.0000000   0.0000003  -0.0000000  -0.0000000  -0.0000000   0.0000000  -0.5801921
                             0.0000000   0.6297565   0.0000000  -0.0000000  -0.3657577   0.0000000  -0.0000000   0.0000000
 200000002220//000           0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.0000000   0.0000000   0.0000000
                             0.0000000  -0.0000000  -0.0000000  -0.0000881   0.0000000  -0.0000000  -0.5018487  -0.0000000
 20000000222//0000           0.0000000   0.0000000   0.0000005  -0.0000000  -0.0000000  -0.0000000   0.0000000  -0.0000280
                             0.0000000   0.0000769   0.0000000  -0.0000000  -0.5018437  -0.0000000   0.0000000   0.0000000
 20000000222/0/000           0.0000000   0.0000005  -0.0000000  -0.0000000  -0.0000000   0.0000000  -0.0000280  -0.0000000
                             0.0000000   0.0000000  -0.0000769   0.0000000   0.0000000  -0.5018437   0.0000000  -0.0000000
 2000000022200//00          -0.0000000   0.0000000   0.0000000  -0.0009214   0.0005326  -0.0000000  -0.0000000   0.0000000
                            -0.0000001  -0.0000000  -0.0000000   0.0000000   0.0000000  -0.0000000   0.0000000   0.0946178
 200000002220/000/           0.0000000   0.0000000   0.0000000   0.0009214   0.0005326  -0.0000000  -0.0000000   0.0000000
                             0.0000001  -0.0000000  -0.0000000   0.0000000   0.0000000  -0.0000000  -0.0000000   0.0946178
 20000000222/000/0           0.0000000   0.0000000   0.0000000   0.0000000  -0.0010636  -0.0000000  -0.0000000   0.0000000
                             0.0000000  -0.0000000  -0.0000000   0.0000000   0.0000000  -0.0000000  -0.0000000   0.0946172

 Coefficients of singly external configurations greater than 0.0500000
 =====================================================================

 2000000/222000000  20.1    -0.0000000  -0.0000000  -0.0000000   0.0000000  -0.0000004  -0.0000000   0.0000000  -0.0000000
                             0.0000000  -0.0000000   0.0000000  -0.0000000  -0.0000000   0.0000000   0.0000000  -0.0609117
 2/000000222000000  19.1     0.0000000  -0.0000000  -0.0552725  -0.0000000   0.0000000   0.0000000   0.0000000  -0.0000052
                            -0.0000000  -0.0000035  -0.0000000   0.0000000   0.0000011   0.0000000   0.0000000  -0.0000000
 2/000000222000000  18.1    -0.0000000  -0.0552725   0.0000000  -0.0000000  -0.0000000   0.0000000  -0.0000051   0.0000000
                             0.0000000   0.0000000   0.0000035  -0.0000000   0.0000000   0.0000011   0.0000000  -0.0000000
 2/000000222000000  17.1    -0.0552725   0.0000000  -0.0000000  -0.0000000  -0.0000000   0.0000098   0.0000000   0.0000000
                            -0.0000000   0.0000000   0.0000000   0.0000000   0.0000000   0.0000000   0.0000000   0.0000000
 2/000000222000000  16.1    -0.0000000   0.0000000   0.0000000  -0.0552696  -0.0000006   0.0000000   0.0000000   0.0000000
                             0.0000098  -0.0000000  -0.0000000  -0.0000000  -0.0000000   0.0000000  -0.0000000   0.0000000
 2/000000222000000  15.1     0.0000000   0.0000000  -0.0000000   0.0000006  -0.0552694  -0.0000000   0.0000000   0.0000000
                            -0.0000000   0.0000000  -0.0000000  -0.0000000   0.0000000  -0.0000000   0.0000000  -0.0000001

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1          -0.000000    0.000000    0.000000    0.955432   -0.000000    0.000073   -0.000000    0.000000   -0.000000   -0.000000
             0.000000    0.000006    0.000000    0.000000   -0.000000   -0.000000
 2          -0.000000    0.955432   -0.000000   -0.000000    0.000000    0.000000    0.000000   -0.000000   -0.000072   -0.000001
             0.000000   -0.000000    0.000000    0.000000   -0.000000   -0.000001
 3           0.000000   -0.000000   -0.000000    0.000000    0.955432   -0.000000    0.000000   -0.000016    0.000000    0.000000
            -0.000070   -0.000000    0.000000    0.000000   -0.000001    0.000000
 4          -0.037758    0.000000    0.954686   -0.000000    0.000000    0.000000    0.000069    0.000000    0.000000   -0.000000
             0.000000   -0.000000    0.000000    0.000000    0.000000    0.000000
 5           0.954686    0.000000    0.037758    0.000000   -0.000000    0.000000    0.000000    0.000000    0.000000   -0.000000
             0.000000   -0.000000   -0.000001    0.000000    0.000000    0.000000
 6          -0.000000   -0.000000    0.000000   -0.000080    0.000000    0.953973   -0.000000   -0.000000   -0.000000    0.000000
             0.000000    0.079536   -0.000000   -0.000000    0.000000    0.000000
 7          -0.000000    0.000057   -0.000000    0.000000   -0.000000   -0.000000    0.000000    0.000000    0.694890    0.658421
             0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.000058
 8           0.000000   -0.000000   -0.000000   -0.000000    0.000057   -0.000000    0.000000   -0.480306   -0.000000   -0.000000
             0.828068   -0.000000    0.000000   -0.000000    0.000058   -0.000000
 9           0.000003   -0.000000   -0.000075    0.000000   -0.000000    0.000000    0.957284    0.000000   -0.000000   -0.000000
            -0.000000   -0.000000    0.000000    0.000000   -0.000000   -0.000000
 10         -0.000000   -0.000000   -0.000000   -0.000000    0.000054   -0.000000   -0.000000    0.828069   -0.000000   -0.000000
             0.480306   -0.000000   -0.000000    0.000000   -0.000156   -0.000000
 11          0.000000   -0.000054    0.000000    0.000000    0.000000   -0.000000   -0.000000    0.000000   -0.658421    0.694891
             0.000000    0.000000   -0.000000    0.000000   -0.000000    0.000156
 12          0.000000    0.000000    0.000000    0.000000    0.000000   -0.079536    0.000000    0.000000   -0.000000   -0.000000
             0.000000    0.953974    0.000000    0.000180    0.000000   -0.000000
 13         -0.000000    0.000000   -0.000000    0.000000    0.000002   -0.000000    0.000000    0.000167    0.000000    0.000000
             0.000029   -0.000000    0.000000   -0.000000    0.958065   -0.000000
 14         -0.000000    0.000002   -0.000000    0.000000   -0.000000   -0.000000    0.000000    0.000000    0.000067   -0.000156
             0.000000    0.000000   -0.000000    0.000000    0.000000    0.958065
 15         -0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.000015   -0.000000   -0.000000    0.000000    0.000000
             0.000000   -0.000182   -0.000000    0.958065    0.000000   -0.000000
 16          0.000001   -0.000000    0.000000   -0.000000   -0.000000    0.000000    0.000000    0.000000   -0.000000    0.000000
            -0.000000   -0.000000    0.959486    0.000000   -0.000000    0.000000

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.955432    0.000000   -0.000000    0.000000   -0.000000   -0.000003    0.000000   -0.000000    0.000000    0.000000
            -0.000000    0.000000   -0.000000    0.000000   -0.000000    0.000000
 2           0.000000    0.955432   -0.000000   -0.000000   -0.000000    0.000000    0.000002   -0.000000    0.000000    0.000000
            -0.000002   -0.000000    0.000000    0.000000    0.000000   -0.000000
 3          -0.000000   -0.000000    0.955432   -0.000000    0.000000    0.000000    0.000000    0.000002    0.000000    0.000002
            -0.000000    0.000000    0.000000    0.000000    0.000000    0.000000
 4           0.000000   -0.000000   -0.000000    0.955432   -0.000000    0.000000   -0.000000    0.000000   -0.000003    0.000000
            -0.000000    0.000000   -0.000000    0.000000   -0.000000    0.000000
 5          -0.000000   -0.000000    0.000000   -0.000000    0.955432   -0.000000   -0.000000    0.000000    0.000000    0.000000
            -0.000000   -0.000000    0.000000    0.000000    0.000000    0.000000
 6          -0.000003    0.000000    0.000000    0.000000   -0.000000    0.957283   -0.000000   -0.000000   -0.000000   -0.000000
            -0.000000   -0.000000    0.000000   -0.000000    0.000000   -0.000000
 7           0.000000    0.000002    0.000000   -0.000000   -0.000000   -0.000000    0.957283   -0.000000    0.000000   -0.000000
            -0.000000   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000
 8          -0.000000   -0.000000    0.000002    0.000000    0.000000   -0.000000   -0.000000    0.957283    0.000000    0.000000
            -0.000000    0.000000   -0.000000    0.000000   -0.000000   -0.000000
 9           0.000000    0.000000    0.000000   -0.000003    0.000000   -0.000000    0.000000    0.000000    0.957284   -0.000000
            -0.000000    0.000000    0.000000    0.000000    0.000000    0.000000
 10          0.000000    0.000000    0.000002    0.000000    0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.957284
             0.000000   -0.000000    0.000001    0.000000   -0.000000   -0.000000
 11         -0.000000   -0.000002   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.000000
             0.957284   -0.000000   -0.000000   -0.000001    0.000000   -0.000000
 12          0.000000   -0.000000    0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.000000   -0.000000
            -0.000000    0.957284    0.000000   -0.000000   -0.000001    0.000000
 13         -0.000000    0.000000    0.000000   -0.000000    0.000000    0.000000   -0.000000   -0.000000    0.000000    0.000001
            -0.000000    0.000000    0.958065    0.000000    0.000000   -0.000000
 14          0.000000    0.000000    0.000000    0.000000    0.000000   -0.000000   -0.000000    0.000000    0.000000    0.000000
            -0.000001   -0.000000    0.000000    0.958065   -0.000000   -0.000000
 15         -0.000000    0.000000    0.000000   -0.000000    0.000000    0.000000   -0.000000   -0.000000    0.000000   -0.000000
             0.000000   -0.000001    0.000000   -0.000000    0.958065    0.000000
 16          0.000000   -0.000000    0.000000    0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.000000   -0.000000
            -0.000000    0.000000   -0.000000   -0.000000    0.000000    0.959486


 RESULTS FOR STATE 1.1
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.95543166 (fixed)   0.95568152 (relaxed)   0.95543167 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.01125622   -0.01850973   -0.13891688
 Singles      0.04242839   -0.07546883   -0.07761122
 Pairs        0.04178602    0.00000000   -0.00858616
 Total        1.09547063   -0.09397857   -0.22511426
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -25.06112371
 Nuclear energy                         0.00000000
 Kinetic energy                         7.07146729
 One electron energy                  -41.53558470
 Two electron energy                   16.24934673
 Virial quotient                       -3.57581205
 Correlation energy                    -0.22511426
 !MRCI STATE 1.1 Energy               -25.286237962014

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.30772976 (Davidson, fixed reference)
 Cluster corrected energies           -25.30760084 (Davidson, relaxed reference)
 Cluster corrected energies           -25.30772976 (Davidson, rotated reference)

 Cluster corrected energies           -25.30313304 (Pople, fixed reference)
 Cluster corrected energies           -25.30302703 (Pople, relaxed reference)
 Cluster corrected energies           -25.30313304 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Coefficient of reference function:   C(0) = 0.95543177 (fixed)   0.95568162 (relaxed)   0.95543177 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.01125617   -0.01850968   -0.13891726
 Singles      0.04242810   -0.07546877   -0.07761111
 Pairs        0.04178610    0.00000045   -0.00858577
 Total        1.09547038   -0.09397799   -0.22511414
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -25.06112371
 Nuclear energy                         0.00000000
 Kinetic energy                         7.07146750
 One electron energy                  -41.53558503
 Two electron energy                   16.24934719
 Virial quotient                       -3.57581193
 Correlation energy                    -0.22511414
 !MRCI STATE 2.1 Energy               -25.286237843798

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.30772958 (Davidson, fixed reference)
 Cluster corrected energies           -25.30760065 (Davidson, relaxed reference)
 Cluster corrected energies           -25.30772958 (Davidson, rotated reference)

 Cluster corrected energies           -25.30313287 (Pople, fixed reference)
 Cluster corrected energies           -25.30302686 (Pople, relaxed reference)
 Cluster corrected energies           -25.30313287 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.95543177 (fixed)   0.95568162 (relaxed)   0.95543178 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.01125617   -0.01850968   -0.13891685
 Singles      0.04242810   -0.07546876   -0.07761110
 Pairs        0.04178611   -0.00000000   -0.00858618
 Total        1.09547038   -0.09397844   -0.22511414
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -25.06112371
 Nuclear energy                         0.00000000
 Kinetic energy                         7.07146750
 One electron energy                  -41.53558502
 Two electron energy                   16.24934717
 Virial quotient                       -3.57581193
 Correlation energy                    -0.22511414
 !MRCI STATE 3.1 Energy               -25.286237843697

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.30772958 (Davidson, fixed reference)
 Cluster corrected energies           -25.30760065 (Davidson, relaxed reference)
 Cluster corrected energies           -25.30772958 (Davidson, rotated reference)

 Cluster corrected energies           -25.30313287 (Pople, fixed reference)
 Cluster corrected energies           -25.30302686 (Pople, relaxed reference)
 Cluster corrected energies           -25.30313287 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.95468581 (fixed)   0.95568208 (relaxed)   0.95543221 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.01125684   -0.01851017   -0.13891787
 Singles      0.04242632   -0.07546766   -0.07760979
 Pairs        0.04178622   -0.00000000   -0.00858620
 Total        1.09546938   -0.09397783   -0.22511386
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -25.06112371
 Nuclear energy                         0.00000000
 Kinetic energy                         7.07146953
 One electron energy                  -41.53558541
 Two electron energy                   16.24934784
 Virial quotient                       -3.57581086
 Correlation energy                    -0.22511386
 !MRCI STATE 4.1 Energy               -25.286237561894

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.30772904 (Davidson, fixed reference)
 Cluster corrected energies           -25.30760010 (Davidson, relaxed reference)
 Cluster corrected energies           -25.30772904 (Davidson, rotated reference)

 Cluster corrected energies           -25.30313238 (Pople, fixed reference)
 Cluster corrected energies           -25.30302636 (Pople, relaxed reference)
 Cluster corrected energies           -25.30313238 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.95468594 (fixed)   0.95568220 (relaxed)   0.95543234 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.01125700   -0.01851026   -0.13891807
 Singles      0.04242573   -0.07546735   -0.07760940
 Pairs        0.04178636   -0.00000000   -0.00858622
 Total        1.09546909   -0.09397761   -0.22511369
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -25.06112371
 Nuclear energy                         0.00000000
 Kinetic energy                         7.07146943
 One electron energy                  -41.53558495
 Two electron energy                   16.24934755
 Virial quotient                       -3.57581089
 Correlation energy                    -0.22511369
 !MRCI STATE 5.1 Energy               -25.286237397882

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.30772880 (Davidson, fixed reference)
 Cluster corrected energies           -25.30759986 (Davidson, relaxed reference)
 Cluster corrected energies           -25.30772880 (Davidson, rotated reference)

 Cluster corrected energies           -25.30313215 (Pople, fixed reference)
 Cluster corrected energies           -25.30302614 (Pople, relaxed reference)
 Cluster corrected energies           -25.30313215 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Coefficient of reference function:   C(0) = 0.95397294 (fixed)   0.95728276 (relaxed)   0.95728276 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00682985   -0.01245011   -0.14153736
 Singles      0.03587340   -0.07089965   -0.07233100
 Pairs        0.04853486    0.00000000   -0.00995358
 Total        1.09123812   -0.08334976   -0.22382194
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -25.00437856
 Nuclear energy                         0.00000000
 Kinetic energy                         7.23698915
 One electron energy                  -41.81082233
 Two electron energy                   16.58262183
 Virial quotient                       -3.48600778
 Correlation energy                    -0.22382194
 !MRCI STATE 6.1 Energy               -25.228200501372

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.24862159 (Davidson, fixed reference)
 Cluster corrected energies           -25.24862159 (Davidson, relaxed reference)
 Cluster corrected energies           -25.24862159 (Davidson, rotated reference)

 Cluster corrected energies           -25.24422101 (Pople, fixed reference)
 Cluster corrected energies           -25.24422101 (Pople, relaxed reference)
 Cluster corrected energies           -25.24422101 (Pople, rotated reference)



 RESULTS FOR STATE 7.1
 =====================

 Maximum overlap with reference state  9

 Coefficient of reference function:   C(0) = 0.69489033 (fixed)   0.95728271 (relaxed)   0.95728271 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00682961   -0.01244988   -0.14152936
 Singles      0.03587392   -0.07089975   -0.07233117
 Pairs        0.04853469   -0.00000823   -0.00996108
 Total        1.09123822   -0.08335786   -0.22382162
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -25.00437856
 Nuclear energy                         0.00000000
 Kinetic energy                         7.23700301
 One electron energy                  -41.81084277
 Two electron energy                   16.58264260
 Virial quotient                       -3.48600106
 Correlation energy                    -0.22382162
 !MRCI STATE 7.1 Energy               -25.228200176271

 Properties without orbital relaxation:

 !MRCI STATE 7.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.24862126 (Davidson, fixed reference)
 Cluster corrected energies           -25.24862126 (Davidson, relaxed reference)
 Cluster corrected energies           -25.24862126 (Davidson, rotated reference)

 Cluster corrected energies           -25.24422068 (Pople, fixed reference)
 Cluster corrected energies           -25.24422068 (Pople, relaxed reference)
 Cluster corrected energies           -25.24422068 (Pople, rotated reference)



 RESULTS FOR STATE 8.1
 =====================

 Maximum overlap with reference state 11

 Coefficient of reference function:   C(0) = 0.82806809 (fixed)   0.95728271 (relaxed)   0.95728271 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00682961   -0.01244988   -0.14153691
 Singles      0.03587392   -0.07089975   -0.07233117
 Pairs        0.04853470   -0.00000000   -0.00995354
 Total        1.09123823   -0.08334963   -0.22382162
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -25.00437856
 Nuclear energy                         0.00000000
 Kinetic energy                         7.23700300
 One electron energy                  -41.81084275
 Two electron energy                   16.58264257
 Virial quotient                       -3.48600106
 Correlation energy                    -0.22382162
 !MRCI STATE 8.1 Energy               -25.228200176261

 Properties without orbital relaxation:

 !MRCI STATE 8.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.24862126 (Davidson, fixed reference)
 Cluster corrected energies           -25.24862126 (Davidson, relaxed reference)
 Cluster corrected energies           -25.24862126 (Davidson, rotated reference)

 Cluster corrected energies           -25.24422068 (Pople, fixed reference)
 Cluster corrected energies           -25.24422068 (Pople, relaxed reference)
 Cluster corrected energies           -25.24422068 (Pople, rotated reference)



 RESULTS FOR STATE 9.1
 =====================

 Maximum overlap with reference state  7

 Coefficient of reference function:   C(0) = 0.95728361 (fixed)   0.95728361 (relaxed)   0.95728361 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00682945   -0.01244993   -0.14153755
 Singles      0.03587168   -0.07089888   -0.07233004
 Pairs        0.04853503    0.00000000   -0.00995361
 Total        1.09123616   -0.08334881   -0.22382120
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -25.00437856
 Nuclear energy                         0.00000000
 Kinetic energy                         7.23697611
 One electron energy                  -41.81080385
 Two electron energy                   16.58260410
 Virial quotient                       -3.48601396
 Correlation energy                    -0.22382119
 !MRCI STATE 9.1 Energy               -25.228199751719

 Properties without orbital relaxation:

 !MRCI STATE 9.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.24862034 (Davidson, fixed reference)
 Cluster corrected energies           -25.24862034 (Davidson, relaxed reference)
 Cluster corrected energies           -25.24862034 (Davidson, rotated reference)

 Cluster corrected energies           -25.24421984 (Pople, fixed reference)
 Cluster corrected energies           -25.24421984 (Pople, relaxed reference)
 Cluster corrected energies           -25.24421984 (Pople, rotated reference)



 RESULTS FOR STATE 10.1
 ======================

 Maximum overlap with reference state  8

 Coefficient of reference function:   C(0) = 0.82806875 (fixed)   0.95728368 (relaxed)   0.95728368 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00682860   -0.01244924   -0.14153638
 Singles      0.03587259   -0.07089932   -0.07233061
 Pairs        0.04853482    0.00000000   -0.00995354
 Total        1.09123601   -0.08334856   -0.22382053
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -25.00437856
 Nuclear energy                         0.00000000
 Kinetic energy                         7.23700590
 One electron energy                  -41.81085086
 Two electron energy                   16.58265178
 Virial quotient                       -3.48599952
 Correlation energy                    -0.22382053
 !MRCI STATE 10.1 Energy              -25.228199085285

 Properties without orbital relaxation:

 !MRCI STATE 10.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.24861958 (Davidson, fixed reference)
 Cluster corrected energies           -25.24861958 (Davidson, relaxed reference)
 Cluster corrected energies           -25.24861958 (Davidson, rotated reference)

 Cluster corrected energies           -25.24421910 (Pople, fixed reference)
 Cluster corrected energies           -25.24421910 (Pople, relaxed reference)
 Cluster corrected energies           -25.24421910 (Pople, rotated reference)



 RESULTS FOR STATE 11.1
 ======================

 Maximum overlap with reference state 10

 Coefficient of reference function:   C(0) = 0.69489078 (fixed)   0.95728368 (relaxed)   0.95728368 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00682860   -0.01244924   -0.14151593
 Singles      0.03587259   -0.07089932   -0.07233061
 Pairs        0.04853482   -0.00002232   -0.00997399
 Total        1.09123601   -0.08337087   -0.22382053
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -25.00437856
 Nuclear energy                         0.00000000
 Kinetic energy                         7.23700591
 One electron energy                  -41.81085085
 Two electron energy                   16.58265176
 Virial quotient                       -3.48599952
 Correlation energy                    -0.22382053
 !MRCI STATE 11.1 Energy              -25.228199085284

 Properties without orbital relaxation:

 !MRCI STATE 11.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.24861958 (Davidson, fixed reference)
 Cluster corrected energies           -25.24861958 (Davidson, relaxed reference)
 Cluster corrected energies           -25.24861958 (Davidson, rotated reference)

 Cluster corrected energies           -25.24421910 (Pople, fixed reference)
 Cluster corrected energies           -25.24421910 (Pople, relaxed reference)
 Cluster corrected energies           -25.24421910 (Pople, rotated reference)



 RESULTS FOR STATE 12.1
 ======================

 Coefficient of reference function:   C(0) = 0.95397378 (fixed)   0.95728361 (relaxed)   0.95728361 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00682849   -0.01244913   -0.14153614
 Singles      0.03587290   -0.07089946   -0.07233080
 Pairs        0.04853477    0.00000000   -0.00995352
 Total        1.09123616   -0.08334859   -0.22382046
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -25.00437856
 Nuclear energy                         0.00000000
 Kinetic energy                         7.23701353
 One electron energy                  -41.81086307
 Two electron energy                   16.58266405
 Virial quotient                       -3.48599583
 Correlation energy                    -0.22382046
 !MRCI STATE 12.1 Energy              -25.228199017697

 Properties without orbital relaxation:

 !MRCI STATE 12.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.24861954 (Davidson, fixed reference)
 Cluster corrected energies           -25.24861954 (Davidson, relaxed reference)
 Cluster corrected energies           -25.24861954 (Davidson, rotated reference)

 Cluster corrected energies           -25.24421906 (Pople, fixed reference)
 Cluster corrected energies           -25.24421906 (Pople, relaxed reference)
 Cluster corrected energies           -25.24421906 (Pople, rotated reference)



 RESULTS FOR STATE 13.1
 ======================

 Maximum overlap with reference state 15

 Coefficient of reference function:   C(0) = 0.95806451 (fixed)   0.95985538 (relaxed)   0.95806453 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.01148283   -0.01427419   -0.13749055
 Singles      0.03123931   -0.06897443   -0.06951325
 Pairs        0.04673582    0.00000000   -0.00927729
 Total        1.08945797   -0.08324862   -0.21628108
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -25.00017264
 Nuclear energy                         0.00000000
 Kinetic energy                         7.13975585
 One electron energy                  -41.41769216
 Two electron energy                   16.19780089
 Virial quotient                       -3.53231844
 Correlation energy                    -0.21971863
 !MRCI STATE 13.1 Energy              -25.219891273155

 Properties without orbital relaxation:

 !MRCI STATE 13.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.23954685 (Davidson, fixed reference)
 Cluster corrected energies           -25.23865446 (Davidson, relaxed reference)
 Cluster corrected energies           -25.23954685 (Davidson, rotated reference)

 Cluster corrected energies           -25.23529792 (Pople, fixed reference)
 Cluster corrected energies           -25.23456946 (Pople, relaxed reference)
 Cluster corrected energies           -25.23529792 (Pople, rotated reference)



 RESULTS FOR STATE 14.1
 ======================

 Maximum overlap with reference state 16

 Coefficient of reference function:   C(0) = 0.95806451 (fixed)   0.95985538 (relaxed)   0.95806453 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.01148283   -0.01427419   -0.01541793
 Singles      0.03123931   -0.06897443   -0.06961182
 Pairs        0.04673582   -0.13647000   -0.13468889
 Total        1.08945796   -0.21971863   -0.21971863
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -25.00017264
 Nuclear energy                         0.00000000
 Kinetic energy                         7.13975587
 One electron energy                  -41.41769222
 Two electron energy                   16.19780095
 Virial quotient                       -3.53231844
 Correlation energy                    -0.21971863
 !MRCI STATE 14.1 Energy              -25.219891273145

 Properties without orbital relaxation:

 !MRCI STATE 14.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.23954685 (Davidson, fixed reference)
 Cluster corrected energies           -25.23865446 (Davidson, relaxed reference)
 Cluster corrected energies           -25.23954685 (Davidson, rotated reference)

 Cluster corrected energies           -25.23529792 (Pople, fixed reference)
 Cluster corrected energies           -25.23456946 (Pople, relaxed reference)
 Cluster corrected energies           -25.23529792 (Pople, rotated reference)



 RESULTS FOR STATE 15.1
 ======================

 Maximum overlap with reference state 14

 Coefficient of reference function:   C(0) = 0.95806491 (fixed)   0.95985543 (relaxed)   0.95806493 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.01148208   -0.01427421   -0.14068192
 Singles      0.03123931   -0.06897449   -0.06961192
 Pairs        0.04673566    0.00000000   -0.00942473
 Total        1.08945705   -0.08324870   -0.21971857
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -25.00017264
 Nuclear energy                         0.00000000
 Kinetic energy                         7.13975400
 One electron energy                  -41.41768721
 Two electron energy                   16.19779600
 Virial quotient                       -3.53231935
 Correlation energy                    -0.21971857
 !MRCI STATE 15.1 Energy              -25.219891213798

 Properties without orbital relaxation:

 !MRCI STATE 15.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.23954659 (Davidson, fixed reference)
 Cluster corrected energies           -25.23865437 (Davidson, relaxed reference)
 Cluster corrected energies           -25.23954659 (Davidson, rotated reference)

 Cluster corrected energies           -25.23529769 (Pople, fixed reference)
 Cluster corrected energies           -25.23456938 (Pople, relaxed reference)
 Cluster corrected energies           -25.23529769 (Pople, rotated reference)



 RESULTS FOR STATE 16.1
 ======================

 Maximum overlap with reference state 13

 Coefficient of reference function:   C(0) = 0.95948584 (fixed)   0.95962959 (relaxed)   0.95948584 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.01269346   -0.02148389   -0.13822043
 Singles      0.03618113   -0.07106361   -0.07269820
 Pairs        0.03735808   -0.00000000   -0.00751189
 Total        1.08623267   -0.09254750   -0.21843052
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -25.00361019
 Nuclear energy                         0.00000000
 Kinetic energy                         6.84000284
 One electron energy                  -40.23000397
 Two electron energy                   15.01140081
 Virial quotient                       -3.68692876
 Correlation energy                    -0.21499297
 !MRCI STATE 16.1 Energy              -25.218603158061

 Properties without orbital relaxation:

 !MRCI STATE 16.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.23714258 (Davidson, fixed reference)
 Cluster corrected energies           -25.23707262 (Davidson, relaxed reference)
 Cluster corrected energies           -25.23714258 (Davidson, rotated reference)

 Cluster corrected energies           -25.23311219 (Pople, fixed reference)
 Cluster corrected energies           -25.23305515 (Pople, relaxed reference)
 Cluster corrected energies           -25.23311219 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       35.62       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       7      246.99       700     1000      520     2100     2140     5101     5103   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *       459.59    319.76    136.47      1.74      0.02      1.18
 REAL TIME  *       485.05 SEC
 DISK USED  *       282.67 MB (local),        6.73 GB (total)
 SF USED    *         1.63 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(13)    =       -25.30772976  AU                              
 SETTING HLSDIAG(14)    =       -25.30772958  AU                              
 SETTING HLSDIAG(15)    =       -25.30772958  AU                              
 SETTING HLSDIAG(16)    =       -25.30772904  AU                              
 SETTING HLSDIAG(17)    =       -25.30772880  AU                              
 SETTING HLSDIAG(18)    =       -25.24862159  AU                              
 SETTING HLSDIAG(19)    =       -25.24862126  AU                              
 SETTING HLSDIAG(20)    =       -25.24862126  AU                              
 SETTING HLSDIAG(21)    =       -25.24862034  AU                              
 SETTING HLSDIAG(22)    =       -25.24861958  AU                              
 SETTING HLSDIAG(23)    =       -25.24861958  AU                              
 SETTING HLSDIAG(24)    =       -25.24861954  AU                              
 SETTING HLSDIAG(25)    =       -25.23954685  AU                              
 SETTING HLSDIAG(26)    =       -25.23954685  AU                              
 SETTING HLSDIAG(27)    =       -25.23954659  AU                              
 SETTING HLSDIAG(28)    =       -25.23714258  AU                              


        HLSDIAG
    -25.35579575
    -25.29787169
    -25.29787167
    -25.29787160
    -25.29787161
    -25.29787160
    -25.24107625
    -25.24107625
    -25.24107625
    -25.24107625
    -25.24107625
    -25.23404512
    -25.30772976
    -25.30772958
    -25.30772958
    -25.30772904
    -25.30772880
    -25.24862159
    -25.24862126
    -25.24862126
    -25.24862034
    -25.24861958
    -25.24861958
    -25.24861954
    -25.23954685
    -25.23954685
    -25.23954659
    -25.23714258
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Diagonal elements of H will be replaced by values from variable HLSDIAG


   ******************************
   *** Spin-orbit calculation ***
   ******************************


   Spin-orbit matrix elements
   ==========================

 Wavefunction restored from record  5101.2  Symmetry=1  S= 0.0  NSTATE=  12

 Original energies:    -25.336970    -25.276701    -25.276701    -25.276701    -25.276701    -25.276701    -25.221061    -25.221061
                       -25.221061    -25.221061    -25.221061    -25.215145
 Replaced energies:    -25.355796    -25.297872    -25.297872    -25.297872    -25.297872    -25.297872    -25.241076    -25.241076
                       -25.241076    -25.241076    -25.241076    -25.234045

 Wavefunction restored from record  5103.2  Symmetry=1  S= 1.0  NSTATE=  16

 Original energies:    -25.286238    -25.286238    -25.286238    -25.286238    -25.286237    -25.228201    -25.228200    -25.228200
                       -25.228200    -25.228199    -25.228199    -25.228199    -25.219891    -25.219891    -25.219891    -25.218603
 Replaced energies:    -25.307730    -25.307730    -25.307730    -25.307729    -25.307729    -25.248622    -25.248621    -25.248621
                       -25.248620    -25.248620    -25.248620    -25.248620    -25.239547    -25.239547    -25.239547    -25.237143



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=   -25.35579575

 Wigner-Eckart theorem used for 10 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    2   2.1  0.0  0.0       0.00   12712.86       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    3   3.1  0.0  0.0       0.00       0.00   12712.87       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    4   4.1  0.0  0.0       0.00       0.00       0.00   12712.88       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    5   5.1  0.0  0.0       0.00       0.00       0.00       0.00   12712.88       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

    6   6.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00   12712.88       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00

    7   7.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00   25178.02       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00

    8   8.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00   25178.02       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00

    9   9.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   25178.02       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00

   10  10.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   25178.02
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   11  11.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   12  12.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   13   1.1  1.0  1.0      -0.00       0.00      -0.00       0.00       0.00      68.75     -10.91      -0.00      -0.00       0.00
                            0.00       0.00       0.00     -68.75       0.00      -0.00       0.00      -0.00     -10.91      -0.00

   14   2.1  1.0  1.0      -0.00     122.77     -61.75      -0.00      -0.00       0.00      -0.00       0.00       0.00      10.13
                            0.00      -0.00      -0.00       0.00      68.75      -0.00      -0.00     -10.90       0.00       0.00

   15   3.1  1.0  1.0      -0.00      -0.00       0.00      -0.00     -68.75       0.00      -0.00      10.90       0.00       0.00
                            0.00    -114.84     -75.48      -0.00       0.00      -0.00      -0.00       0.00       0.00      11.53

   16   4.1  1.0  1.0      -0.00       0.00      -0.00      68.73      -0.00      -0.00      -0.00      -0.00      10.91       0.00
                           -0.00      -0.00      -0.00       0.00       0.00      68.73     -10.91       0.00       0.00       0.00

   17   5.1  1.0  1.0       0.00       0.00      -0.00    -119.05       0.00       0.00      -0.00      -0.00     -18.82      -0.00
                           -0.00       0.00       0.00      -0.00       0.00     119.06     -18.82       0.00       0.00      -0.00

   18   6.1  1.0  1.0      -0.00      -0.00       0.00      -0.00       0.00     -20.62     -79.70      -0.00      -0.00       0.00
                           -0.00       0.00       0.00      20.62       0.00      -0.00      -0.00       0.00     -79.70      -0.00

   19   7.1  1.0  1.0       0.01      -5.14      23.60       0.00       0.00      -0.00       0.00      -0.00       0.00      91.55
                            0.00       0.00       0.00      -0.00      25.97      -0.00       0.00     100.46       0.00       0.00

   20   8.1  1.0  1.0      -0.00      -0.00      -0.00      -0.00     -25.97      -0.00       0.00    -100.46      -0.00      -0.00
                           -0.01       2.39      24.03       0.00      -0.00      -0.00       0.00      -0.00      -0.00      92.63

   21   9.1  1.0  1.0      -0.00      -0.00       0.00     -20.61       0.00       0.00       0.00       0.00      79.70      -0.00
                            0.00       0.00       0.00      -0.00      -0.00     -20.61     -79.70      -0.00      -0.00       0.00

   22  10.1  1.0  1.0      -0.00      -0.00      -0.00      -0.00      -2.23      -0.00       0.00      -8.57       0.00      -0.00
                            0.02      22.95      -9.38       0.00      -0.00      -0.00       0.00      -0.00       0.00     -37.98

   23  11.1  1.0  1.0       0.02      21.72      11.96      -0.00      -0.00       0.00       0.00       0.00       0.00      44.37
                            0.00      -0.00      -0.00      -0.00      -2.23       0.00      -0.00      -8.57       0.00       0.00

   24  12.1  1.0  1.0       0.00       0.00      -0.00      -0.00      -0.00     -15.96     -61.78      -0.00       0.00      -0.00
                           -0.00      -0.00       0.00     -15.96       0.00       0.00      -0.00      -0.00      61.78      -0.00

   25  13.1  1.0  1.0       0.00       0.00       0.00       0.00      32.29       0.00       0.00    -169.69       0.00       0.00
                          -73.83     -20.43      31.12       0.00      -0.00      -0.00      -0.00       0.00       0.00    -166.01

   26  14.1  1.0  1.0      73.83      16.71      33.26       0.00       0.00      -0.00      -0.00      -0.00       0.00    -173.26
                            0.00       0.00       0.00      -0.00     -32.29      -0.00       0.00     169.69       0.00      -0.00

   27  15.1  1.0  1.0      -0.00      -0.00       0.00       0.00       0.00      32.30    -169.68      -0.00      -0.00       0.00
                            0.00       0.00       0.00      32.30       0.00      -0.00       0.00       0.00     169.68       0.00

   28  16.1  1.0  1.0       0.00       0.00       0.00      -0.00       0.00       0.00      -0.00       0.00      -0.00      -0.00
                           -0.00       0.00       0.00       0.00      -0.00       0.00      -0.00       0.00      -0.00       0.00

   29   1.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      11.21    -194.03       0.00       0.00      -0.00      -0.00      -0.00       0.00      30.63

   30   2.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00      -0.00      -0.00      97.23     -15.42       0.00       0.00      -0.00

   31   3.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00     -97.23      -0.00       0.00       0.00       0.00     -15.42       0.00

   32   4.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00      -0.00     194.43       0.00       0.00     -30.65       0.00      -0.00

   33   5.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00

   34   6.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       1.68     -29.08      -0.00      -0.00      -0.00      -0.00       0.00      -0.00    -112.60

   35   7.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00      -0.00       6.15      23.73       0.00       0.00       0.00

   36   8.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00      -6.15      -0.00      -0.00       0.00       0.00      23.73       0.00

   37   9.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00       0.00      29.11      -0.00       0.00     112.69       0.00       0.00

   38  10.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00     -36.35      -0.00       0.00       0.00       0.00     140.65      -0.00

   39  11.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00      -0.00       0.00     -36.35    -140.65      -0.00       0.00       0.00

   40  12.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.04     -39.25      -2.27      -0.00       0.00       0.00       0.00       0.00      -0.00      -5.61

   41  13.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00     -45.67      -0.00      -0.00       0.00       0.00    -239.97       0.00

   42  14.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00       0.00      -0.00      45.67    -239.97       0.00       0.00       0.00

   43  15.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          104.41     -52.50      -3.03       0.00      -0.00      -0.00       0.00       0.00       0.00      10.26

   44  16.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00      -0.00      -0.00       0.00      -0.00       0.00       0.00       0.00

   45   1.1  1.0 -1.0      -0.00       0.00      -0.00       0.00       0.00      68.75     -10.91      -0.00      -0.00       0.00
                           -0.00      -0.00      -0.00      68.75      -0.00       0.00      -0.00       0.00      10.91       0.00

   46   2.1  1.0 -1.0      -0.00     122.77     -61.75      -0.00      -0.00       0.00      -0.00       0.00       0.00      10.13
                           -0.00       0.00       0.00      -0.00     -68.75       0.00       0.00      10.90      -0.00      -0.00

   47   3.1  1.0 -1.0      -0.00      -0.00       0.00      -0.00     -68.75       0.00      -0.00      10.90       0.00       0.00
                           -0.00     114.84      75.48       0.00      -0.00       0.00       0.00      -0.00      -0.00     -11.53

   48   4.1  1.0 -1.0      -0.00       0.00      -0.00      68.73      -0.00      -0.00      -0.00      -0.00      10.91       0.00
                            0.00       0.00       0.00      -0.00      -0.00     -68.73      10.91      -0.00      -0.00      -0.00

   49   5.1  1.0 -1.0       0.00       0.00      -0.00    -119.05       0.00       0.00      -0.00      -0.00     -18.82      -0.00
                            0.00      -0.00      -0.00       0.00      -0.00    -119.06      18.82      -0.00      -0.00       0.00

   50   6.1  1.0 -1.0      -0.00      -0.00       0.00      -0.00       0.00     -20.62     -79.70      -0.00      -0.00       0.00
                            0.00      -0.00      -0.00     -20.62      -0.00       0.00       0.00      -0.00      79.70       0.00

   51   7.1  1.0 -1.0       0.01      -5.14      23.60       0.00       0.00      -0.00       0.00      -0.00       0.00      91.55
                           -0.00      -0.00      -0.00       0.00     -25.97       0.00      -0.00    -100.46      -0.00      -0.00

   52   8.1  1.0 -1.0      -0.00      -0.00      -0.00      -0.00     -25.97      -0.00       0.00    -100.46      -0.00      -0.00
                            0.01      -2.39     -24.03      -0.00       0.00       0.00      -0.00       0.00       0.00     -92.63

   53   9.1  1.0 -1.0      -0.00      -0.00       0.00     -20.61       0.00       0.00       0.00       0.00      79.70      -0.00
                           -0.00      -0.00      -0.00       0.00       0.00      20.61      79.70       0.00       0.00      -0.00

   54  10.1  1.0 -1.0      -0.00      -0.00      -0.00      -0.00      -2.23      -0.00       0.00      -8.57       0.00      -0.00
                           -0.02     -22.95       9.38      -0.00       0.00       0.00      -0.00       0.00      -0.00      37.98

   55  11.1  1.0 -1.0       0.02      21.72      11.96      -0.00      -0.00       0.00       0.00       0.00       0.00      44.37
                           -0.00       0.00       0.00       0.00       2.23      -0.00       0.00       8.57      -0.00      -0.00

   56  12.1  1.0 -1.0       0.00       0.00      -0.00      -0.00      -0.00     -15.96     -61.78      -0.00       0.00      -0.00
                            0.00       0.00      -0.00      15.96      -0.00      -0.00       0.00       0.00     -61.78       0.00

   57  13.1  1.0 -1.0       0.00       0.00       0.00       0.00      32.29       0.00       0.00    -169.69       0.00       0.00
                           73.83      20.43     -31.12      -0.00       0.00       0.00       0.00      -0.00      -0.00     166.01

   58  14.1  1.0 -1.0      73.83      16.71      33.26       0.00       0.00      -0.00      -0.00      -0.00       0.00    -173.26
                           -0.00      -0.00      -0.00       0.00      32.29       0.00      -0.00    -169.69      -0.00       0.00

   59  15.1  1.0 -1.0      -0.00      -0.00       0.00       0.00       0.00      32.30    -169.68      -0.00      -0.00       0.00
                           -0.00      -0.00      -0.00     -32.30      -0.00       0.00      -0.00      -0.00    -169.68      -0.00

   60  16.1  1.0 -1.0       0.00       0.00       0.00      -0.00       0.00       0.00      -0.00       0.00      -0.00      -0.00
                            0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.00      -0.00       0.00      -0.00


   Nr   State  S   Sz       11         12         13         14         15         16         17         18         19         20

    1   1.1  0.0  0.0       0.00       0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.01      -0.00
                            0.00       0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00      -0.00       0.01

    2   2.1  0.0  0.0       0.00       0.00       0.00     122.77      -0.00       0.00       0.00      -0.00      -5.14      -0.00
                            0.00       0.00      -0.00       0.00     114.84       0.00      -0.00      -0.00      -0.00      -2.39

    3   3.1  0.0  0.0       0.00       0.00      -0.00     -61.75       0.00      -0.00      -0.00       0.00      23.60      -0.00
                            0.00       0.00      -0.00       0.00      75.48       0.00      -0.00      -0.00      -0.00     -24.03

    4   4.1  0.0  0.0       0.00       0.00       0.00      -0.00      -0.00      68.73    -119.05      -0.00       0.00      -0.00
                            0.00       0.00      68.75      -0.00       0.00      -0.00       0.00     -20.62       0.00      -0.00

    5   5.1  0.0  0.0       0.00       0.00       0.00      -0.00     -68.75      -0.00       0.00       0.00       0.00     -25.97
                            0.00       0.00      -0.00     -68.75      -0.00      -0.00      -0.00      -0.00     -25.97       0.00

    6   6.1  0.0  0.0       0.00       0.00      68.75       0.00       0.00      -0.00       0.00     -20.62      -0.00      -0.00
                            0.00       0.00       0.00       0.00       0.00     -68.73    -119.06       0.00       0.00       0.00

    7   7.1  0.0  0.0       0.00       0.00     -10.91      -0.00      -0.00      -0.00      -0.00     -79.70       0.00       0.00
                            0.00       0.00      -0.00       0.00       0.00      10.91      18.82       0.00      -0.00      -0.00

    8   8.1  0.0  0.0       0.00       0.00      -0.00       0.00      10.90      -0.00      -0.00      -0.00      -0.00    -100.46
                            0.00       0.00       0.00      10.90      -0.00      -0.00      -0.00      -0.00    -100.46       0.00

    9   9.1  0.0  0.0       0.00       0.00      -0.00       0.00       0.00      10.91     -18.82      -0.00       0.00      -0.00
                            0.00       0.00      10.91      -0.00      -0.00      -0.00      -0.00      79.70      -0.00       0.00

   10  10.1  0.0  0.0       0.00       0.00       0.00      10.13       0.00       0.00      -0.00       0.00      91.55      -0.00
                            0.00       0.00       0.00      -0.00     -11.53      -0.00       0.00       0.00      -0.00     -92.63

   11  11.1  0.0  0.0   25178.02       0.00       0.00     -19.22      -0.00      -0.00      -0.00       0.00     -17.98       0.00
                            0.00       0.00      -0.00       0.00     -18.42      -0.00      -0.00      -0.00      -0.00     -11.16

   12  12.1  0.0  0.0       0.00   26721.17       0.00      -0.00       0.00       0.00      -0.00      -0.00       0.01       0.00
                           -0.00       0.00       0.00      -0.00      -0.00       0.00       0.00       0.00      -0.00       0.01

   13   1.1  1.0  1.0       0.00       0.00   10549.27       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00      -0.00      -0.00     190.00       0.00       0.00      -0.00      -0.00

   14   2.1  1.0  1.0     -19.22      -0.00       0.00   10549.31       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00      -0.00     -95.02      -0.00       0.00      -0.00       0.00      -1.00

   15   3.1  1.0  1.0      -0.00       0.00       0.00       0.00   10549.31       0.00       0.00       0.00       0.00       0.00
                           18.42       0.00       0.00      95.02       0.00       0.00       0.00      -0.00       1.00       0.00

   16   4.1  1.0  1.0      -0.00       0.00       0.00       0.00       0.00   10549.42       0.00       0.00       0.00       0.00
                            0.00      -0.00    -190.00       0.00      -0.00      -0.00      -0.00      -4.46      -0.00       0.00

   17   5.1  1.0  1.0      -0.00      -0.00       0.00       0.00       0.00       0.00   10549.48       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00      -0.00       0.00       0.00

   18   6.1  1.0  1.0       0.00      -0.00       0.00       0.00       0.00       0.00       0.00   23522.01       0.00       0.00
                            0.00      -0.00      -0.00       0.00       0.00       4.46       0.00      -0.00      -0.00       0.00

   19   7.1  1.0  1.0     -17.98       0.01       0.00       0.00       0.00       0.00       0.00       0.00   23522.08       0.00
                            0.00       0.00       0.00      -0.00      -1.00       0.00      -0.00       0.00       0.00     250.23

   20   8.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   23522.08
                           11.16      -0.01       0.00       1.00      -0.00      -0.00      -0.00      -0.00    -250.23       0.00

   21   9.1  1.0  1.0       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -4.46      -0.00       0.00       0.00      -0.00    -173.27       0.00       0.00

   22  10.1  1.0  1.0      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           87.81       0.02       0.00       5.63       0.00      -0.00       0.00       0.00      56.87      -0.00

   23  11.1  1.0  1.0      84.76       0.02       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00       0.00       5.63       0.00       0.00       0.00       0.00      56.87

   24  12.1  1.0  1.0       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00       0.00      -0.00      -0.00       6.11      -0.00      -0.00      -0.00

   25  13.1  1.0  1.0       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          104.28     -96.59       0.00       7.10       0.00      -0.00       0.00      -0.00       0.03       0.00

   26  14.1  1.0  1.0     -91.72      96.59       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00      -0.00      -7.10      -0.00      -0.00      -0.00       0.00      -0.03

   27  15.1  1.0  1.0       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00      -0.00       0.00      -0.00       8.12       0.00      -0.00       0.00

   28  16.1  1.0  1.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00

   29   1.1  1.0  0.0       0.00       0.00       0.00      -0.00     -67.19      -0.00       0.00       0.00       0.00      -4.03
                           -1.13      -0.00       0.00     -67.19      -0.00       0.00       0.00       0.00      -4.03      -0.00

   30   2.1  1.0  0.0       0.00       0.00       0.00      -0.00      -0.00      67.18    -116.35      -0.00      -0.00      -0.00
                            0.00       0.00      67.19       0.00       0.00      -0.00       0.00      -3.23       0.00       0.00

   31   3.1  1.0  0.0       0.00       0.00      67.19       0.00       0.00      -0.00       0.00      -3.23      -0.00      -0.00
                            0.00       0.00       0.00      -0.00      -0.00     -67.18    -116.35       0.00       0.00       0.00

   32   4.1  1.0  0.0       0.00       0.00       0.00     -67.18       0.00       0.00      -0.00       0.00       3.67       0.00
                            0.00      -0.00      -0.00       0.00      67.18       0.00      -0.00       0.00      -0.00      -3.67

   33   5.1  1.0  0.0       0.00       0.00      -0.00     116.35      -0.00       0.00      -0.00      -0.00      -0.57      -0.00
                            0.00       0.00      -0.00      -0.00     116.35       0.00       0.00       0.00      -0.00      -0.57

   34   6.1  1.0  0.0       0.00       0.00      -0.00       0.00       3.23      -0.00       0.00       0.00      -0.00      57.84
                            4.17      -0.00      -0.00       3.23      -0.00      -0.00      -0.00       0.00      57.83      -0.00

   35   7.1  1.0  0.0       0.00       0.00      -0.00       0.00       0.00      -3.67       0.57       0.00      -0.00       0.00
                           -0.00      -0.00       4.03      -0.00      -0.00       0.00       0.00     -57.83      -0.00       0.00

   36   8.1  1.0  0.0       0.00       0.00       4.03       0.00       0.00      -0.00       0.00     -57.84      -0.00      -0.00
                           -0.00      -0.00       0.00      -0.00      -0.00       3.67       0.57       0.00      -0.00      -0.00

   37   9.1  1.0  0.0       0.00       0.00      -0.00       3.22      -0.00      -0.00       0.00      -0.00     -90.07       0.00
                           -0.00      -0.00       0.00       0.00      -3.22       0.00       0.00       0.00       0.00      90.07

   38  10.1  1.0  0.0       0.00       0.00       0.38       0.00       0.00       0.00       0.00     107.97      -0.00      -0.00
                            0.00      -0.00       0.00       0.00      -0.00      -1.68       3.44       0.00       0.00      -0.00

   39  11.1  1.0  0.0       0.00       0.00       0.00      -0.00      -0.00      -1.68      -3.44       0.00      -0.00      -0.00
                            0.00       0.00      -0.38       0.00       0.00      -0.00      -0.00    -107.97      -0.00       0.00

   40  12.1  1.0  0.0       0.00       0.00       0.00       0.00       2.45       0.00      -0.00       0.00       0.00      24.99
                         -151.56       0.03       0.00      -2.45      -0.00      -0.00      -0.00       0.00     -24.99       0.00

   41  13.1  1.0  0.0       0.00       0.00      -5.03      -0.00      -0.00      -0.00      -0.00       0.03      -0.00      -0.00
                            0.00       0.00       0.00       0.00      -0.00       5.02      -2.92      -0.00      -0.00       0.00

   42  14.1  1.0  0.0       0.00       0.00      -0.00       0.00       0.00      -5.02      -2.92       0.00      -0.00       0.00
                            0.00       0.00      -5.03       0.00       0.00       0.00       0.00       0.03      -0.00      -0.00

   43  15.1  1.0  0.0       0.00       0.00      -0.00      -0.00      -5.03       0.00       0.00       0.00      -0.00      -0.00
                          277.18     136.61      -0.00       5.03      -0.00       0.00       0.00      -0.00       0.00      -0.00

   44  16.1  1.0  0.0       0.00       0.00      -0.00       0.00       0.00      -0.00      -0.00       0.00      -0.00       0.00
                            0.00       0.00      -0.00       0.00       0.00      -0.00      -0.00      -0.00       0.00      -0.00

   45   1.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   46   2.1  1.0 -1.0     -19.22      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   47   3.1  1.0 -1.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -18.42      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   48   4.1  1.0 -1.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   49   5.1  1.0 -1.0      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   50   6.1  1.0 -1.0       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   51   7.1  1.0 -1.0     -17.98       0.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   52   8.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -11.16       0.01      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   53   9.1  1.0 -1.0       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   54  10.1  1.0 -1.0      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -87.81      -0.02      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   55  11.1  1.0 -1.0      84.76       0.02       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   56  12.1  1.0 -1.0       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   57  13.1  1.0 -1.0       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -104.28      96.59      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   58  14.1  1.0 -1.0     -91.72      96.59       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   59  15.1  1.0 -1.0       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   60  16.1  1.0 -1.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00


   Nr   State  S   Sz       21         22         23         24         25         26         27         28         29         30

    1   1.1  0.0  0.0      -0.00      -0.00       0.02       0.00       0.00      73.83      -0.00       0.00       0.00       0.00
                           -0.00      -0.02      -0.00       0.00      73.83      -0.00      -0.00       0.00      -0.00      -0.00

    2   2.1  0.0  0.0      -0.00      -0.00      21.72       0.00       0.00      16.71      -0.00       0.00       0.00       0.00
                           -0.00     -22.95       0.00       0.00      20.43      -0.00      -0.00      -0.00     -11.21       0.00

    3   3.1  0.0  0.0       0.00      -0.00      11.96      -0.00       0.00      33.26       0.00       0.00       0.00       0.00
                           -0.00       9.38       0.00      -0.00     -31.12      -0.00      -0.00      -0.00     194.03      -0.00

    4   4.1  0.0  0.0     -20.61      -0.00      -0.00      -0.00       0.00       0.00       0.00      -0.00       0.00       0.00
                            0.00      -0.00       0.00      15.96      -0.00       0.00     -32.30      -0.00      -0.00       0.00

    5   5.1  0.0  0.0       0.00      -2.23      -0.00      -0.00      32.29       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       2.23      -0.00       0.00      32.29      -0.00       0.00      -0.00       0.00

    6   6.1  0.0  0.0       0.00      -0.00       0.00     -15.96       0.00      -0.00      32.30       0.00       0.00       0.00
                           20.61       0.00      -0.00      -0.00       0.00       0.00       0.00      -0.00       0.00     -97.23

    7   7.1  0.0  0.0       0.00       0.00       0.00     -61.78       0.00      -0.00    -169.68      -0.00       0.00       0.00
                           79.70      -0.00       0.00       0.00       0.00      -0.00      -0.00       0.00       0.00      15.42

    8   8.1  0.0  0.0       0.00      -8.57       0.00      -0.00    -169.69      -0.00      -0.00       0.00       0.00       0.00
                            0.00       0.00       8.57       0.00      -0.00    -169.69      -0.00      -0.00       0.00      -0.00

    9   9.1  0.0  0.0      79.70       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00       0.00
                            0.00      -0.00      -0.00     -61.78      -0.00      -0.00    -169.68       0.00      -0.00      -0.00

   10  10.1  0.0  0.0      -0.00      -0.00      44.37      -0.00       0.00    -173.26       0.00      -0.00       0.00       0.00
                           -0.00      37.98      -0.00       0.00     166.01       0.00      -0.00      -0.00     -30.63       0.00

   11  11.1  0.0  0.0       0.00      -0.00      84.76       0.00       0.00     -91.72       0.00      -0.00       0.00       0.00
                            0.00     -87.81       0.00      -0.00    -104.28       0.00       0.00      -0.00       1.13      -0.00

   12  12.1  0.0  0.0      -0.00      -0.00       0.02      -0.00      -0.00      96.59      -0.00       0.00       0.00       0.00
                           -0.00      -0.02      -0.00       0.00      96.59      -0.00       0.00      -0.00       0.00      -0.00

   13   1.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            4.46      -0.00       0.00       0.00      -0.00      -0.00      -0.00       0.00      -0.00     -67.19

   14   2.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00
                            0.00      -5.63      -0.00      -0.00      -7.10       0.00       0.00       0.00      67.19      -0.00

   15   3.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     -67.19      -0.00
                           -0.00      -0.00      -5.63       0.00      -0.00       7.10      -0.00       0.00       0.00      -0.00

   16   4.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      67.18
                           -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00

   17   5.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    -116.35
                            0.00      -0.00      -0.00      -6.11      -0.00       0.00      -8.12       0.00      -0.00      -0.00

   18   6.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                          173.27      -0.00      -0.00       0.00       0.00       0.00      -0.00       0.00      -0.00       3.23

   19   7.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                           -0.00     -56.87      -0.00       0.00      -0.03      -0.00       0.00      -0.00       4.03      -0.00

   20   8.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -4.03      -0.00
                           -0.00       0.00     -56.87       0.00      -0.00       0.03      -0.00      -0.00       0.00      -0.00

   21   9.1  1.0  1.0   23522.28       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -3.22
                            0.00       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00       0.00       0.00

   22  10.1  1.0  1.0       0.00   23522.45       0.00       0.00       0.00       0.00       0.00       0.00      -0.38      -0.00
                           -0.00      -0.00     -77.05      -0.00       0.00       0.00       0.00      -0.00       0.00       0.00

   23  11.1  1.0  1.0       0.00       0.00   23522.45       0.00       0.00       0.00       0.00       0.00      -0.00       0.00
                           -0.00      77.05       0.00       0.00       0.00      -0.00       0.00       0.00      -0.38       0.00

   24  12.1  1.0  1.0       0.00       0.00       0.00   23522.46       0.00       0.00       0.00       0.00      -0.00      -0.00
                           -0.00       0.00      -0.00      -0.00       0.00       0.00      -0.00       0.01       0.00      -2.45

   25  13.1  1.0  1.0       0.00       0.00       0.00       0.00   25513.68       0.00       0.00       0.00       5.03       0.00
                           -0.00      -0.00      -0.00      -0.00       0.00     191.60      -0.00       0.00       0.00       0.00

   26  14.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00   25513.68       0.00       0.00       0.00      -0.00
                            0.00      -0.00       0.00      -0.00    -191.60       0.00       0.00       0.00      -5.03       0.00

   27  15.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00   25513.74       0.00       0.00       0.00
                            0.00      -0.00      -0.00       0.00       0.00      -0.00      -0.00      42.58      -0.00       5.03

   28  16.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00   26041.36       0.00      -0.00
                            0.00       0.00      -0.00      -0.01      -0.00      -0.00     -42.58      -0.00      -0.00       0.00

   29   1.1  1.0  0.0       0.00      -0.38      -0.00      -0.00       5.03       0.00       0.00       0.00   10549.27       0.00
                           -0.00      -0.00       0.38      -0.00      -0.00       5.03       0.00       0.00       0.00       0.00

   30   2.1  1.0  0.0      -3.22      -0.00       0.00      -0.00       0.00      -0.00       0.00      -0.00       0.00   10549.31
                           -0.00      -0.00      -0.00       2.45      -0.00      -0.00      -5.03      -0.00      -0.00       0.00

   31   3.1  1.0  0.0       0.00      -0.00       0.00      -2.45       0.00      -0.00       5.03      -0.00       0.00       0.00
                            3.22       0.00      -0.00       0.00       0.00      -0.00       0.00      -0.00      -0.00      -0.00

   32   4.1  1.0  0.0       0.00      -0.00       1.68      -0.00       0.00       5.02      -0.00       0.00       0.00       0.00
                           -0.00       1.68       0.00       0.00      -5.02      -0.00      -0.00       0.00      -0.00      -0.00

   33   5.1  1.0  0.0      -0.00      -0.00       3.44       0.00       0.00       2.92      -0.00       0.00       0.00       0.00
                           -0.00      -3.44       0.00       0.00       2.92      -0.00      -0.00       0.00      -0.00      -0.00

   34   6.1  1.0  0.0       0.00    -107.97      -0.00      -0.00      -0.03      -0.00      -0.00      -0.00       0.00       0.00
                           -0.00      -0.00     107.97      -0.00       0.00      -0.03       0.00       0.00      -0.00      -0.00

   35   7.1  1.0  0.0      90.07       0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00      24.99       0.00       0.00      -0.00      -0.00      -0.00      -0.00

   36   8.1  1.0  0.0      -0.00       0.00       0.00     -24.99       0.00      -0.00       0.00      -0.00       0.00       0.00
                          -90.07       0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00      -0.00      -0.00

   37   9.1  1.0  0.0      -0.00      -0.00      82.98       0.00      -0.00      -0.01       0.00       0.00       0.00       0.00
                           -0.00      82.98      -0.00      -0.00       0.01       0.00       0.00      -0.00      -0.00      -0.00

   38  10.1  1.0  0.0       0.00      -0.00      -0.00    -147.93      -0.00      -0.00       0.04       0.00       0.00       0.00
                          -82.98      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.01      -0.00      -0.00

   39  11.1  1.0  0.0     -82.98       0.00       0.00      -0.00      -0.00       0.00       0.00       0.01       0.00       0.00
                            0.00       0.00       0.00    -147.93       0.00      -0.00       0.04       0.00      -0.00      -0.00

   40  12.1  1.0  0.0      -0.00     147.93       0.00      -0.00       0.04       0.00      -0.00       0.00       0.00       0.00
                            0.00       0.00     147.93      -0.00      -0.00      -0.04      -0.00       0.00      -0.00      -0.00

   41  13.1  1.0  0.0       0.00       0.00       0.00      -0.04       0.00      -0.00    -135.49      -0.00       0.00       0.00
                           -0.01       0.00      -0.00       0.00       0.00      -0.00      -0.00      30.10      -0.00      -0.00

   42  14.1  1.0  0.0       0.01       0.00      -0.00      -0.00       0.00       0.00      -0.00      30.10       0.00       0.00
                           -0.00       0.00       0.00       0.04       0.00      -0.00     135.49       0.00      -0.00      -0.00

   43  15.1  1.0  0.0      -0.00      -0.04      -0.00       0.00     135.49       0.00       0.00      -0.00       0.00       0.00
                           -0.00       0.00      -0.04       0.00       0.00    -135.49      -0.00      -0.00      -0.00      -0.00

   44  16.1  1.0  0.0      -0.00      -0.00      -0.01      -0.00       0.00     -30.10       0.00      -0.00       0.00       0.00
                            0.00       0.01      -0.00      -0.00     -30.10      -0.00       0.00       0.00      -0.00      -0.00

   45   1.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00     -67.19

   46   2.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      67.19       0.00

   47   3.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      67.19       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00

   48   4.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     -67.18
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   49   5.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00     116.35
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   50   6.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       3.23

   51   7.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       4.03      -0.00

   52   8.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       4.03       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00

   53   9.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       3.22
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00

   54  10.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.38       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00

   55  11.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.38       0.00

   56  12.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -2.45

   57  13.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -5.03      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00

   58  14.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -5.03       0.00

   59  15.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       5.03

   60  16.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00


   Nr   State  S   Sz       31         32         33         34         35         36         37         38         39         40

    1   1.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.04

    2   2.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -1.68       0.00      -0.00      -0.00       0.00       0.00      39.25

    3   3.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00      29.08      -0.00      -0.00       0.00      -0.00      -0.00       2.27

    4   4.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           97.23       0.00      -0.00       0.00      -0.00       6.15      -0.00      36.35       0.00       0.00

    5   5.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00    -194.43      -0.00       0.00       0.00       0.00     -29.11       0.00      -0.00      -0.00

    6   6.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00      -6.15       0.00       0.00      -0.00      36.35      -0.00

    7   7.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00     -23.73      -0.00      -0.00      -0.00     140.65      -0.00

    8   8.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      30.65       0.00      -0.00      -0.00      -0.00    -112.69      -0.00       0.00      -0.00

    9   9.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           15.42      -0.00       0.00       0.00      -0.00     -23.73      -0.00    -140.65      -0.00       0.00

   10  10.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00     112.60      -0.00      -0.00      -0.00       0.00      -0.00       5.61

   11  11.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -4.17       0.00       0.00       0.00      -0.00      -0.00     151.56

   12  12.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.03

   13   1.1  1.0  1.0      67.19       0.00      -0.00      -0.00      -0.00       4.03      -0.00       0.38       0.00       0.00
                           -0.00       0.00       0.00       0.00      -4.03      -0.00      -0.00      -0.00       0.38      -0.00

   14   2.1  1.0  1.0       0.00     -67.18     116.35       0.00       0.00       0.00       3.22       0.00      -0.00       0.00
                            0.00      -0.00       0.00      -3.23       0.00       0.00      -0.00      -0.00      -0.00       2.45

   15   3.1  1.0  1.0       0.00       0.00      -0.00       3.23       0.00       0.00      -0.00       0.00      -0.00       2.45
                            0.00     -67.18    -116.35       0.00       0.00       0.00       3.22       0.00      -0.00       0.00

   16   4.1  1.0  1.0      -0.00       0.00       0.00      -0.00      -3.67      -0.00      -0.00       0.00      -1.68       0.00
                           67.18      -0.00      -0.00       0.00      -0.00      -3.67      -0.00       1.68       0.00       0.00

   17   5.1  1.0  1.0       0.00      -0.00      -0.00       0.00       0.57       0.00       0.00       0.00      -3.44      -0.00
                          116.35       0.00      -0.00       0.00      -0.00      -0.57      -0.00      -3.44       0.00       0.00

   18   6.1  1.0  1.0      -3.23       0.00      -0.00       0.00       0.00     -57.84      -0.00     107.97       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      57.83      -0.00      -0.00      -0.00     107.97      -0.00

   19   7.1  1.0  1.0      -0.00       3.67      -0.57      -0.00      -0.00      -0.00     -90.07      -0.00      -0.00       0.00
                           -0.00       0.00       0.00     -57.83       0.00       0.00      -0.00      -0.00       0.00      24.99

   20   8.1  1.0  1.0      -0.00       0.00      -0.00      57.84       0.00      -0.00       0.00      -0.00      -0.00      24.99
                           -0.00       3.67       0.57       0.00      -0.00       0.00     -90.07       0.00      -0.00      -0.00

   21   9.1  1.0  1.0       0.00       0.00      -0.00       0.00      90.07      -0.00      -0.00       0.00     -82.98      -0.00
                           -3.22       0.00       0.00       0.00       0.00      90.07       0.00      82.98      -0.00      -0.00

   22  10.1  1.0  1.0      -0.00      -0.00      -0.00    -107.97       0.00       0.00      -0.00      -0.00       0.00     147.93
                           -0.00      -1.68       3.44       0.00       0.00      -0.00     -82.98       0.00      -0.00      -0.00

   23  11.1  1.0  1.0       0.00       1.68       3.44      -0.00       0.00       0.00      82.98      -0.00       0.00       0.00
                            0.00      -0.00      -0.00    -107.97      -0.00       0.00       0.00       0.00      -0.00    -147.93

   24  12.1  1.0  1.0      -2.45      -0.00       0.00      -0.00      -0.00     -24.99       0.00    -147.93      -0.00      -0.00
                           -0.00      -0.00      -0.00       0.00     -24.99       0.00       0.00       0.00     147.93       0.00

   25  13.1  1.0  1.0       0.00       0.00       0.00      -0.03       0.00       0.00      -0.00      -0.00      -0.00       0.04
                           -0.00       5.02      -2.92      -0.00      -0.00       0.00      -0.01       0.00      -0.00       0.00

   26  14.1  1.0  1.0      -0.00       5.02       2.92      -0.00       0.00      -0.00      -0.01      -0.00       0.00       0.00
                            0.00       0.00       0.00       0.03      -0.00      -0.00      -0.00       0.00       0.00       0.04

   27  15.1  1.0  1.0       5.03      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.04       0.00      -0.00
                           -0.00       0.00       0.00      -0.00       0.00      -0.00      -0.00       0.00      -0.04       0.00

   28  16.1  1.0  1.0      -0.00       0.00       0.00      -0.00       0.00      -0.00       0.00       0.00       0.01       0.00
                            0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.00       0.01      -0.00      -0.00

   29   1.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   30   2.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   31   3.1  1.0  0.0   10549.31       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   32   4.1  1.0  0.0       0.00   10549.42       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   33   5.1  1.0  0.0       0.00       0.00   10549.48       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   34   6.1  1.0  0.0       0.00       0.00       0.00   23522.01       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   35   7.1  1.0  0.0       0.00       0.00       0.00       0.00   23522.08       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   36   8.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00   23522.08       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00

   37   9.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00   23522.28       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00

   38  10.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00   23522.45       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00

   39  11.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   23522.45       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00

   40  12.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   23522.46
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   41  13.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   42  14.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   43  15.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   44  16.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   45   1.1  1.0 -1.0     -67.19      -0.00       0.00       0.00       0.00      -4.03       0.00      -0.38      -0.00      -0.00
                           -0.00       0.00       0.00       0.00      -4.03      -0.00      -0.00      -0.00       0.38      -0.00

   46   2.1  1.0 -1.0      -0.00      67.18    -116.35      -0.00      -0.00      -0.00      -3.22      -0.00       0.00      -0.00
                            0.00      -0.00       0.00      -3.23       0.00       0.00      -0.00      -0.00      -0.00       2.45

   47   3.1  1.0 -1.0       0.00      -0.00       0.00      -3.23      -0.00      -0.00       0.00      -0.00       0.00      -2.45
                           -0.00     -67.18    -116.35       0.00       0.00       0.00       3.22       0.00      -0.00       0.00

   48   4.1  1.0 -1.0       0.00       0.00      -0.00       0.00       3.67       0.00       0.00      -0.00       1.68      -0.00
                           67.18       0.00      -0.00       0.00      -0.00      -3.67      -0.00       1.68       0.00       0.00

   49   5.1  1.0 -1.0      -0.00       0.00      -0.00      -0.00      -0.57      -0.00      -0.00      -0.00       3.44       0.00
                          116.35       0.00       0.00       0.00      -0.00      -0.57      -0.00      -3.44       0.00       0.00

   50   6.1  1.0 -1.0       3.23      -0.00       0.00       0.00      -0.00      57.84       0.00    -107.97      -0.00      -0.00
                           -0.00      -0.00      -0.00       0.00      57.83      -0.00      -0.00      -0.00     107.97      -0.00

   51   7.1  1.0 -1.0       0.00      -3.67       0.57       0.00      -0.00       0.00      90.07       0.00       0.00      -0.00
                           -0.00       0.00       0.00     -57.83      -0.00       0.00      -0.00      -0.00       0.00      24.99

   52   8.1  1.0 -1.0       0.00      -0.00       0.00     -57.84      -0.00      -0.00      -0.00       0.00       0.00     -24.99
                           -0.00       3.67       0.57       0.00      -0.00      -0.00     -90.07       0.00      -0.00      -0.00

   53   9.1  1.0 -1.0      -0.00      -0.00       0.00      -0.00     -90.07       0.00      -0.00      -0.00      82.98       0.00
                           -3.22       0.00       0.00       0.00       0.00      90.07      -0.00      82.98      -0.00      -0.00

   54  10.1  1.0 -1.0       0.00       0.00       0.00     107.97      -0.00      -0.00       0.00      -0.00      -0.00    -147.93
                           -0.00      -1.68       3.44       0.00       0.00      -0.00     -82.98      -0.00      -0.00      -0.00

   55  11.1  1.0 -1.0      -0.00      -1.68      -3.44       0.00      -0.00      -0.00     -82.98       0.00       0.00      -0.00
                            0.00      -0.00      -0.00    -107.97      -0.00       0.00       0.00       0.00       0.00    -147.93

   56  12.1  1.0 -1.0       2.45       0.00      -0.00       0.00       0.00      24.99      -0.00     147.93       0.00      -0.00
                           -0.00      -0.00      -0.00       0.00     -24.99       0.00       0.00       0.00     147.93      -0.00

   57  13.1  1.0 -1.0      -0.00      -0.00      -0.00       0.03      -0.00      -0.00       0.00       0.00       0.00      -0.04
                           -0.00       5.02      -2.92      -0.00      -0.00       0.00      -0.01       0.00      -0.00       0.00

   58  14.1  1.0 -1.0       0.00      -5.02      -2.92       0.00      -0.00       0.00       0.01       0.00      -0.00      -0.00
                            0.00       0.00       0.00       0.03      -0.00      -0.00      -0.00       0.00       0.00       0.04

   59  15.1  1.0 -1.0      -5.03       0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.04      -0.00       0.00
                           -0.00       0.00       0.00      -0.00       0.00      -0.00      -0.00       0.00      -0.04       0.00

   60  16.1  1.0 -1.0       0.00      -0.00      -0.00       0.00      -0.00       0.00      -0.00      -0.00      -0.01      -0.00
                            0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.00       0.01      -0.00      -0.00


   Nr   State  S   Sz       41         42         43         44         45         46         47         48         49         50

    1   1.1  0.0  0.0       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00
                            0.00      -0.00    -104.41      -0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00

    2   2.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00     122.77      -0.00       0.00       0.00      -0.00
                           -0.00       0.00      52.50       0.00       0.00      -0.00    -114.84      -0.00       0.00       0.00

    3   3.1  0.0  0.0       0.00       0.00       0.00       0.00      -0.00     -61.75       0.00      -0.00      -0.00       0.00
                           -0.00      -0.00       3.03      -0.00       0.00      -0.00     -75.48      -0.00       0.00       0.00

    4   4.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00      68.73    -119.05      -0.00
                           45.67      -0.00      -0.00       0.00     -68.75       0.00      -0.00       0.00      -0.00      20.62

    5   5.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00      -0.00     -68.75      -0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00      68.75       0.00       0.00       0.00       0.00

    6   6.1  0.0  0.0       0.00       0.00       0.00       0.00      68.75       0.00       0.00      -0.00       0.00     -20.62
                            0.00     -45.67       0.00      -0.00      -0.00      -0.00      -0.00      68.73     119.06      -0.00

    7   7.1  0.0  0.0       0.00       0.00       0.00       0.00     -10.91      -0.00      -0.00      -0.00      -0.00     -79.70
                           -0.00     239.97      -0.00       0.00       0.00      -0.00      -0.00     -10.91     -18.82      -0.00

    8   8.1  0.0  0.0       0.00       0.00       0.00       0.00      -0.00       0.00      10.90      -0.00      -0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00     -10.90       0.00       0.00       0.00       0.00

    9   9.1  0.0  0.0       0.00       0.00       0.00       0.00      -0.00       0.00       0.00      10.91     -18.82      -0.00
                          239.97      -0.00      -0.00      -0.00     -10.91       0.00       0.00       0.00       0.00     -79.70

   10  10.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00      10.13       0.00       0.00      -0.00       0.00
                           -0.00      -0.00     -10.26      -0.00      -0.00       0.00      11.53       0.00      -0.00      -0.00

   11  11.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00     -19.22      -0.00      -0.00      -0.00       0.00
                           -0.00      -0.00    -277.18      -0.00       0.00      -0.00      18.42       0.00       0.00       0.00

   12  12.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00      -0.00       0.00       0.00      -0.00      -0.00
                           -0.00      -0.00    -136.61      -0.00      -0.00       0.00       0.00      -0.00      -0.00      -0.00

   13   1.1  1.0  1.0      -5.03      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       5.03       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   14   2.1  1.0  1.0      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -5.03      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   15   3.1  1.0  1.0      -0.00       0.00      -5.03       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   16   4.1  1.0  1.0      -0.00      -5.02       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -5.02      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   17   5.1  1.0  1.0      -0.00      -2.92       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            2.92      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   18   6.1  1.0  1.0       0.03       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.03       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   19   7.1  1.0  1.0      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   20   8.1  1.0  1.0      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   21   9.1  1.0  1.0       0.00       0.01      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.01       0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   22  10.1  1.0  1.0       0.00       0.00      -0.04      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.01       0.00       0.00       0.00       0.00       0.00       0.00

   23  11.1  1.0  1.0       0.00      -0.00      -0.00      -0.01       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.04       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   24  12.1  1.0  1.0      -0.04      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.04      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   25  13.1  1.0  1.0       0.00       0.00     135.49       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      30.10       0.00       0.00       0.00       0.00       0.00       0.00

   26  14.1  1.0  1.0      -0.00       0.00       0.00     -30.10       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00     135.49       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   27  15.1  1.0  1.0    -135.49      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00    -135.49       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   28  16.1  1.0  1.0      -0.00      30.10      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -30.10      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   29   1.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00      67.19       0.00      -0.00      -0.00
                            0.00       0.00       0.00       0.00      -0.00     -67.19      -0.00       0.00       0.00       0.00

   30   2.1  1.0  0.0       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00     -67.18     116.35       0.00
                            0.00       0.00       0.00       0.00      67.19      -0.00       0.00      -0.00       0.00      -3.23

   31   3.1  1.0  0.0       0.00       0.00       0.00       0.00     -67.19      -0.00       0.00       0.00      -0.00       3.23
                            0.00       0.00       0.00       0.00       0.00      -0.00       0.00     -67.18    -116.35       0.00

   32   4.1  1.0  0.0       0.00       0.00       0.00       0.00      -0.00      67.18      -0.00       0.00       0.00      -0.00
                            0.00       0.00       0.00       0.00      -0.00       0.00      67.18      -0.00      -0.00       0.00

   33   5.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00    -116.35       0.00      -0.00      -0.00       0.00
                            0.00       0.00       0.00       0.00      -0.00      -0.00     116.35       0.00      -0.00       0.00

   34   6.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00      -0.00      -3.23       0.00      -0.00       0.00
                            0.00       0.00       0.00       0.00      -0.00       3.23      -0.00      -0.00      -0.00      -0.00

   35   7.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       3.67      -0.57      -0.00
                            0.00       0.00       0.00       0.00       4.03      -0.00      -0.00       0.00       0.00     -57.83

   36   8.1  1.0  0.0       0.00       0.00       0.00       0.00      -4.03      -0.00      -0.00       0.00      -0.00      57.84
                            0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       3.67       0.57       0.00

   37   9.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00      -3.22       0.00       0.00      -0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00      -3.22       0.00       0.00       0.00

   38  10.1  1.0  0.0       0.00       0.00       0.00       0.00      -0.38      -0.00      -0.00      -0.00      -0.00    -107.97
                            0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -1.68       3.44       0.00

   39  11.1  1.0  0.0       0.00       0.00       0.00       0.00      -0.00       0.00       0.00       1.68       3.44      -0.00
                            0.00       0.00       0.00       0.00      -0.38       0.00       0.00      -0.00      -0.00    -107.97

   40  12.1  1.0  0.0       0.00       0.00       0.00       0.00      -0.00      -0.00      -2.45      -0.00       0.00      -0.00
                            0.00       0.00       0.00       0.00       0.00      -2.45      -0.00      -0.00      -0.00       0.00

   41  13.1  1.0  0.0   25513.68       0.00       0.00       0.00       5.03       0.00       0.00       0.00       0.00      -0.03
                            0.00       0.00       0.00       0.00       0.00       0.00      -0.00       5.02      -2.92      -0.00

   42  14.1  1.0  0.0       0.00   25513.68       0.00       0.00       0.00      -0.00      -0.00       5.02       2.92      -0.00
                           -0.00       0.00       0.00       0.00      -5.03       0.00       0.00       0.00       0.00       0.03

   43  15.1  1.0  0.0       0.00       0.00   25513.74       0.00       0.00       0.00       5.03      -0.00      -0.00      -0.00
                           -0.00      -0.00       0.00       0.00      -0.00       5.03      -0.00       0.00       0.00      -0.00

   44  16.1  1.0  0.0       0.00       0.00       0.00   26041.36       0.00      -0.00      -0.00       0.00       0.00      -0.00
                           -0.00      -0.00      -0.00       0.00      -0.00       0.00       0.00      -0.00      -0.00      -0.00

   45   1.1  1.0 -1.0       5.03       0.00       0.00       0.00   10549.27       0.00       0.00       0.00       0.00       0.00
                           -0.00       5.03       0.00       0.00      -0.00       0.00       0.00    -190.00      -0.00      -0.00

   46   2.1  1.0 -1.0       0.00      -0.00       0.00      -0.00       0.00   10549.31       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -5.03      -0.00      -0.00       0.00      95.02       0.00      -0.00       0.00

   47   3.1  1.0 -1.0       0.00      -0.00       5.03      -0.00       0.00       0.00   10549.31       0.00       0.00       0.00
                            0.00      -0.00       0.00      -0.00      -0.00     -95.02      -0.00      -0.00      -0.00       0.00

   48   4.1  1.0 -1.0       0.00       5.02      -0.00       0.00       0.00       0.00       0.00   10549.42       0.00       0.00
                           -5.02      -0.00      -0.00       0.00     190.00      -0.00       0.00       0.00       0.00       4.46

   49   5.1  1.0 -1.0       0.00       2.92      -0.00       0.00       0.00       0.00       0.00       0.00   10549.48       0.00
                            2.92      -0.00      -0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00

   50   6.1  1.0 -1.0      -0.03      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00   23522.01
                            0.00      -0.03       0.00       0.00       0.00      -0.00      -0.00      -4.46      -0.00       0.00

   51   7.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.00      -0.00       0.00       1.00      -0.00       0.00      -0.00

   52   8.1  1.0 -1.0       0.00      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00      -0.00      -1.00       0.00       0.00       0.00       0.00

   53   9.1  1.0 -1.0      -0.00      -0.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.01       0.00       0.00      -0.00       4.46       0.00      -0.00      -0.00       0.00     173.27

   54  10.1  1.0 -1.0      -0.00      -0.00       0.04       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.01      -0.00      -5.63      -0.00       0.00      -0.00      -0.00

   55  11.1  1.0 -1.0      -0.00       0.00       0.00       0.01       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.04       0.00       0.00      -0.00      -5.63      -0.00      -0.00      -0.00

   56  12.1  1.0 -1.0       0.04       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.04      -0.00       0.00       0.00      -0.00       0.00       0.00      -6.11       0.00

   57  13.1  1.0 -1.0       0.00      -0.00    -135.49      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      30.10      -0.00      -7.10      -0.00       0.00      -0.00       0.00

   58  14.1  1.0 -1.0       0.00       0.00      -0.00      30.10       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00     135.49       0.00      -0.00       0.00       7.10       0.00       0.00       0.00

   59  15.1  1.0 -1.0     135.49       0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00    -135.49      -0.00      -0.00      -0.00       0.00      -0.00       0.00      -8.12      -0.00

   60  16.1  1.0 -1.0       0.00     -30.10       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -30.10      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00


   Nr   State  S   Sz       51         52         53         54         55         56         57         58         59         60

    1   1.1  0.0  0.0       0.01      -0.00      -0.00      -0.00       0.02       0.00       0.00      73.83      -0.00       0.00
                            0.00      -0.01       0.00       0.02       0.00      -0.00     -73.83       0.00       0.00      -0.00

    2   2.1  0.0  0.0      -5.14      -0.00      -0.00      -0.00      21.72       0.00       0.00      16.71      -0.00       0.00
                            0.00       2.39       0.00      22.95      -0.00      -0.00     -20.43       0.00       0.00       0.00

    3   3.1  0.0  0.0      23.60      -0.00       0.00      -0.00      11.96      -0.00       0.00      33.26       0.00       0.00
                            0.00      24.03       0.00      -9.38      -0.00       0.00      31.12       0.00       0.00       0.00

    4   4.1  0.0  0.0       0.00      -0.00     -20.61      -0.00      -0.00      -0.00       0.00       0.00       0.00      -0.00
                           -0.00       0.00      -0.00       0.00      -0.00     -15.96       0.00      -0.00      32.30       0.00

    5   5.1  0.0  0.0       0.00     -25.97       0.00      -2.23      -0.00      -0.00      32.29       0.00       0.00       0.00
                           25.97      -0.00      -0.00      -0.00      -2.23       0.00      -0.00     -32.29       0.00      -0.00

    6   6.1  0.0  0.0      -0.00      -0.00       0.00      -0.00       0.00     -15.96       0.00      -0.00      32.30       0.00
                           -0.00      -0.00     -20.61      -0.00       0.00       0.00      -0.00      -0.00      -0.00       0.00

    7   7.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00     -61.78       0.00      -0.00    -169.68      -0.00
                            0.00       0.00     -79.70       0.00      -0.00      -0.00      -0.00       0.00       0.00      -0.00

    8   8.1  0.0  0.0      -0.00    -100.46       0.00      -8.57       0.00      -0.00    -169.69      -0.00      -0.00       0.00
                          100.46      -0.00      -0.00      -0.00      -8.57      -0.00       0.00     169.69       0.00       0.00

    9   9.1  0.0  0.0       0.00      -0.00      79.70       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00
                            0.00      -0.00      -0.00       0.00       0.00      61.78       0.00       0.00     169.68      -0.00

   10  10.1  0.0  0.0      91.55      -0.00      -0.00      -0.00      44.37      -0.00       0.00    -173.26       0.00      -0.00
                            0.00      92.63       0.00     -37.98       0.00      -0.00    -166.01      -0.00       0.00       0.00

   11  11.1  0.0  0.0     -17.98       0.00       0.00      -0.00      84.76       0.00       0.00     -91.72       0.00      -0.00
                            0.00      11.16      -0.00      87.81      -0.00       0.00     104.28      -0.00      -0.00       0.00

   12  12.1  0.0  0.0       0.01       0.00      -0.00      -0.00       0.02      -0.00      -0.00      96.59      -0.00       0.00
                            0.00      -0.01       0.00       0.02       0.00      -0.00     -96.59       0.00      -0.00       0.00

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

   29   1.1  1.0  0.0      -0.00       4.03      -0.00       0.38       0.00       0.00      -5.03      -0.00      -0.00      -0.00
                           -4.03      -0.00      -0.00      -0.00       0.38      -0.00      -0.00       5.03       0.00       0.00

   30   2.1  1.0  0.0       0.00       0.00       3.22       0.00      -0.00       0.00      -0.00       0.00      -0.00       0.00
                            0.00       0.00      -0.00      -0.00      -0.00       2.45      -0.00      -0.00      -5.03      -0.00

   31   3.1  1.0  0.0       0.00       0.00      -0.00       0.00      -0.00       2.45      -0.00       0.00      -5.03       0.00
                            0.00       0.00       3.22       0.00      -0.00       0.00       0.00      -0.00       0.00      -0.00

   32   4.1  1.0  0.0      -3.67      -0.00      -0.00       0.00      -1.68       0.00      -0.00      -5.02       0.00      -0.00
                           -0.00      -3.67      -0.00       1.68       0.00       0.00      -5.02      -0.00      -0.00       0.00

   33   5.1  1.0  0.0       0.57       0.00       0.00       0.00      -3.44      -0.00      -0.00      -2.92       0.00      -0.00
                           -0.00      -0.57      -0.00      -3.44       0.00       0.00       2.92      -0.00      -0.00       0.00

   34   6.1  1.0  0.0       0.00     -57.84      -0.00     107.97       0.00       0.00       0.03       0.00       0.00       0.00
                           57.83      -0.00      -0.00      -0.00     107.97      -0.00       0.00      -0.03       0.00       0.00

   35   7.1  1.0  0.0      -0.00      -0.00     -90.07      -0.00      -0.00       0.00      -0.00      -0.00      -0.00      -0.00
                            0.00       0.00      -0.00      -0.00       0.00      24.99       0.00       0.00      -0.00      -0.00

   36   8.1  1.0  0.0       0.00      -0.00       0.00      -0.00      -0.00      24.99      -0.00       0.00      -0.00       0.00
                           -0.00       0.00     -90.07       0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00

   37   9.1  1.0  0.0      90.07      -0.00      -0.00       0.00     -82.98      -0.00       0.00       0.01      -0.00      -0.00
                            0.00      90.07       0.00      82.98      -0.00      -0.00       0.01       0.00       0.00      -0.00

   38  10.1  1.0  0.0       0.00       0.00      -0.00      -0.00       0.00     147.93       0.00       0.00      -0.04      -0.00
                            0.00      -0.00     -82.98       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.01

   39  11.1  1.0  0.0       0.00       0.00      82.98      -0.00       0.00       0.00       0.00      -0.00      -0.00      -0.01
                           -0.00       0.00       0.00       0.00      -0.00    -147.93       0.00      -0.00       0.04       0.00

   40  12.1  1.0  0.0      -0.00     -24.99       0.00    -147.93      -0.00      -0.00      -0.04      -0.00       0.00      -0.00
                          -24.99       0.00       0.00       0.00     147.93       0.00      -0.00      -0.04      -0.00       0.00

   41  13.1  1.0  0.0       0.00       0.00      -0.00      -0.00      -0.00       0.04       0.00       0.00     135.49       0.00
                           -0.00       0.00      -0.01       0.00      -0.00       0.00      -0.00      -0.00      -0.00      30.10

   42  14.1  1.0  0.0       0.00      -0.00      -0.01      -0.00       0.00       0.00      -0.00       0.00       0.00     -30.10
                           -0.00      -0.00      -0.00       0.00       0.00       0.04       0.00       0.00     135.49       0.00

   43  15.1  1.0  0.0       0.00       0.00       0.00       0.04       0.00      -0.00    -135.49      -0.00       0.00       0.00
                            0.00      -0.00      -0.00       0.00      -0.04       0.00       0.00    -135.49       0.00      -0.00

   44  16.1  1.0  0.0       0.00      -0.00       0.00       0.00       0.01       0.00      -0.00      30.10      -0.00      -0.00
                            0.00      -0.00       0.00       0.01      -0.00      -0.00     -30.10      -0.00       0.00      -0.00

   45   1.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -4.46       0.00      -0.00      -0.00       0.00       0.00       0.00      -0.00

   46   2.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       1.00      -0.00       5.63       0.00       0.00       7.10      -0.00      -0.00      -0.00

   47   3.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -1.00      -0.00       0.00       0.00       5.63      -0.00       0.00      -7.10       0.00      -0.00

   48   4.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00      -0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   49   5.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00       0.00       6.11       0.00      -0.00       8.12      -0.00

   50   6.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00    -173.27       0.00       0.00      -0.00      -0.00      -0.00       0.00      -0.00

   51   7.1  1.0 -1.0   23522.08       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00    -250.23       0.00      56.87       0.00      -0.00       0.03       0.00      -0.00       0.00

   52   8.1  1.0 -1.0       0.00   23522.08       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          250.23      -0.00       0.00      -0.00      56.87      -0.00       0.00      -0.03       0.00       0.00

   53   9.1  1.0 -1.0       0.00       0.00   23522.28       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00

   54  10.1  1.0 -1.0       0.00       0.00       0.00   23522.45       0.00       0.00       0.00       0.00       0.00       0.00
                          -56.87       0.00       0.00       0.00      77.05       0.00      -0.00      -0.00      -0.00       0.00

   55  11.1  1.0 -1.0       0.00       0.00       0.00       0.00   23522.45       0.00       0.00       0.00       0.00       0.00
                           -0.00     -56.87       0.00     -77.05      -0.00      -0.00      -0.00       0.00      -0.00      -0.00

   56  12.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00   23522.46       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00      -0.00       0.00       0.00      -0.00      -0.00       0.00      -0.01

   57  13.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00   25513.68       0.00       0.00       0.00
                           -0.03      -0.00       0.00       0.00       0.00       0.00      -0.00    -191.60       0.00      -0.00

   58  14.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00   25513.68       0.00       0.00
                           -0.00       0.03      -0.00       0.00      -0.00       0.00     191.60      -0.00      -0.00      -0.00

   59  15.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   25513.74       0.00
                            0.00      -0.00      -0.00       0.00       0.00      -0.00      -0.00       0.00       0.00     -42.58

   60  16.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   26041.36
                           -0.00      -0.00      -0.00      -0.00       0.00       0.01       0.00       0.00      42.58       0.00




   Spin-orbit calculation in the basis of symmetry adapted wave functions
   ======================================================================


 >>> Hamiltonian transformed to symmetry adapted basis <<<


  Results for symmetry 1
  ======================

 => Spin-Orbit Matrixblock (CM-1)  (dimension: 60)

    The diagonal matrixelements are shifted by    -25.35579575 a.u.

  State Sym Spin    / Nr.        1           2           3           4           5           6           7           8

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |0 0>               0.000   12712.861       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |0 0>               0.000       0.000   12712.867       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |0 0>               0.000       0.000       0.000   12712.882       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000   12712.879       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000   12712.882       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000

    7    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000   25178.022       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000

    8    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000   25178.021
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000

    9    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

   10    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

   11    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

   12    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

    1    1  |1 1>+             -0.000       0.000      -0.000       0.000       0.000      97.222     -15.430      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>+             -0.003     173.616     -87.334      -0.000      -0.000       0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>+             -0.000      -0.000       0.000      -0.000     -97.229       0.000      -0.000      15.415
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>+             -0.000       0.000      -0.000      97.205      -0.000      -0.000      -0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>+              0.000       0.000      -0.000    -168.369       0.000       0.000      -0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>+             -0.000      -0.000       0.000      -0.000       0.000     -29.156    -112.712      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>+              0.009      -7.267      33.372       0.000       0.000      -0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>+             -0.000      -0.000      -0.000      -0.000     -36.727      -0.000       0.000    -142.071
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>+             -0.000      -0.000       0.000     -29.150       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   10    1  |1 1>+             -0.000      -0.000      -0.000      -0.000      -3.153      -0.000       0.000     -12.117
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   11    1  |1 1>+              0.030      30.711      16.919      -0.000      -0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   12    1  |1 1>+              0.000       0.000      -0.000      -0.000      -0.000     -22.576     -87.374      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   13    1  |1 1>+              0.000       0.000       0.000       0.000      45.668       0.000       0.000    -239.980
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   14    1  |1 1>+            104.414      23.628      47.036       0.000       0.000      -0.000      -0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   15    1  |1 1>+             -0.000      -0.000       0.000       0.000       0.000      45.676    -239.969      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   16    1  |1 1>+              0.000       0.000       0.000      -0.001       0.000       0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      11.206    -194.029       0.000       0.000      -0.000      -0.000      -0.000

    2    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000      -0.000      -0.000      97.227     -15.420       0.000

    3    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000     -97.227      -0.000       0.000       0.000       0.000

    4    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000     194.430       0.000       0.000     -30.654

    5    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000       0.000       0.002       0.000       0.000      -0.000

    6    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       1.680     -29.084      -0.000      -0.000      -0.000      -0.000       0.000

    7    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000      -0.000       6.152      23.730       0.000

    8    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000      -6.151      -0.000      -0.000       0.000       0.000

    9    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000       0.000      29.106      -0.000       0.000     112.692

   10    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000     -36.353      -0.000       0.000       0.000       0.000

   11    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000      -0.000       0.000     -36.353    -140.650      -0.000

   12    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.036     -39.247      -2.267      -0.000       0.000       0.000       0.000       0.000

   13    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000     -45.673      -0.000      -0.000       0.000       0.000

   14    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000       0.000      -0.000      45.673    -239.966       0.000

   15    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              104.415     -52.499      -3.032       0.000      -0.000      -0.000       0.000       0.000

   16    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000      -0.000      -0.000       0.000      -0.000       0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000     -97.222       0.000      -0.000       0.000      -0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000       0.000      97.229      -0.000      -0.000     -15.415

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.003    -162.408    -106.740      -0.000       0.000      -0.000      -0.000       0.000

    4    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000       0.000       0.000      97.201     -15.432       0.000

    5    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000      -0.000       0.000     168.371     -26.611       0.000

    6    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000      29.156       0.000      -0.000      -0.000       0.000

    7    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000      36.727      -0.000       0.000     142.071

    8    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.009       3.376      33.987       0.000      -0.000      -0.000       0.000      -0.000

    9    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000      -0.000     -29.150    -112.711      -0.000

   10    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.030      32.455     -13.270       0.000      -0.000      -0.000       0.000      -0.000

   11    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000      -0.000      -3.152       0.000      -0.000     -12.114

   12    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000     -22.576       0.000       0.000      -0.000      -0.000

   13    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -104.414     -28.886      44.003       0.000      -0.000      -0.000      -0.000       0.000

   14    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000     -45.668      -0.000       0.000     239.980

   15    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      45.676       0.000      -0.000       0.000       0.000

   16    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000      -0.000       0.001      -0.002       0.000

  State Sym Spin    / Nr.        9          10          11          12          13          14          15          16

    1    1  |0 0>               0.000       0.000       0.000       0.000      -0.000      -0.003      -0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |0 0>               0.000       0.000       0.000       0.000       0.000     173.616      -0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |0 0>               0.000       0.000       0.000       0.000      -0.000     -87.334       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |0 0>               0.000       0.000       0.000       0.000       0.000      -0.000      -0.000      97.205
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000      -0.000     -97.229      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |0 0>               0.000       0.000       0.000       0.000      97.222       0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |0 0>               0.000       0.000       0.000       0.000     -15.430      -0.000      -0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |0 0>               0.000       0.000       0.000       0.000      -0.000       0.000      15.415      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |0 0>           25178.021       0.000       0.000       0.000      -0.000       0.000       0.000      15.432
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   10    1  |0 0>               0.000   25178.021       0.000       0.000       0.000      14.332       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   11    1  |0 0>               0.000       0.000   25178.021       0.000       0.000     -27.182      -0.000      -0.000
                               -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000

   12    1  |0 0>               0.000       0.000       0.000   26721.174       0.000      -0.002       0.000       0.000
                               -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 1>+             -0.000       0.000       0.000       0.000   10549.266       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>+              0.000      14.332     -27.182      -0.002       0.000   10549.306       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>+              0.000       0.000      -0.000       0.000       0.000       0.000   10549.307       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>+             15.432       0.000      -0.000       0.000       0.000       0.000       0.000   10549.424
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>+            -26.611      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>+             -0.000       0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>+              0.000     129.473     -25.425       0.011       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>+             -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>+            112.711      -0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   10    1  |1 1>+              0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   11    1  |1 1>+              0.000      62.754     119.870       0.031       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   12    1  |1 1>+              0.000      -0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   13    1  |1 1>+              0.000       0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   14    1  |1 1>+              0.000    -245.033    -129.712     136.597       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   15    1  |1 1>+             -0.000       0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   16    1  |1 1>+             -0.002      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                                0.000      30.631      -1.134      -0.000       0.000     -95.018      -0.000       0.000

    2    1  |1 0>               0.000       0.000       0.000       0.000       0.000      -0.000       0.000       0.000
                                0.000      -0.000       0.000       0.000      95.018       0.000       0.000      -0.000

    3    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                              -15.420       0.000       0.000       0.000       0.000      -0.000       0.000     -95.000

    4    1  |1 0>               0.000       0.000       0.000       0.000      -0.000       0.000      -0.000       0.000
                                0.000      -0.000       0.000      -0.000      -0.000       0.000      95.000       0.000

    5    1  |1 0>               0.000       0.000       0.000       0.000      -0.000      -0.000       0.000      -0.000
                               -0.000       0.000       0.000       0.000      -0.000      -0.000     164.545       0.000

    6    1  |1 0>               0.000       0.000       0.000       0.000      -0.000       0.000       0.000       0.000
                               -0.000    -112.602       4.168      -0.000      -0.000       4.566      -0.000      -0.000

    7    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                                0.000       0.000      -0.000      -0.000       5.696      -0.000      -0.000       0.000

    8    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000      -0.000       0.000
                               23.726       0.000      -0.000      -0.000       0.000      -0.000      -0.000       5.192

    9    1  |1 0>               0.000       0.000       0.000       0.000      -0.000      -0.000       0.000       0.000
                                0.000       0.000      -0.000      -0.000       0.000       0.000      -4.556       0.000

   10    1  |1 0>               0.000       0.000       0.000       0.000      -0.000       0.000      -0.000       0.000
                              140.651      -0.000       0.000      -0.000       0.000       0.000      -0.000      -2.380

   11    1  |1 0>               0.000       0.000       0.000       0.000       0.000      -0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000      -0.531       0.000       0.000      -0.000

   12    1  |1 0>               0.000       0.000       0.000       0.000      -0.000       0.000       0.000       0.000
                               -0.000      -5.610    -151.559       0.031       0.000      -3.462      -0.000      -0.000

   13    1  |1 0>               0.000       0.000       0.000       0.000      -0.000       0.000      -0.000       0.000
                             -239.966       0.000       0.000       0.000       0.000       0.000      -0.000       7.098

   14    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -7.112       0.000       0.000       0.000

   15    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000      -0.000      -0.000
                                0.000      10.261     277.183     136.608      -0.000       7.107      -0.000       0.000

   16    1  |1 0>               0.000       0.000       0.000       0.000      -0.000       0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000       0.000       0.000      -0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -15.430      -0.000       0.000      -0.000       0.000      -0.000      -0.000     189.995

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000       0.000       0.000      -0.000     -95.016      -0.000

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      16.303      26.048       0.002       0.000      95.016       0.000       0.000

    4    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000    -189.995       0.000      -0.000      -0.000

    5    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000      -0.000      -0.002      -0.000      -0.000       0.000

    6    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -112.712      -0.000       0.000      -0.000      -0.000       0.000       0.000       4.459

    7    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000      -0.000      -1.001       0.000

    8    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000     131.000      15.780      -0.011       0.000       1.001      -0.000      -0.000

    9    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000       0.000      -4.460      -0.000       0.000       0.000

   10    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000     -53.717     124.182       0.031       0.000       5.625       0.000      -0.000

   11    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000       0.000      -0.000       0.000       5.625       0.000

   12    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               87.374      -0.000       0.000      -0.000      -0.000       0.000      -0.000      -0.000

   13    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000    -234.771     147.474    -136.597       0.000       7.096       0.000      -0.000

   14    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000       0.000       0.000      -0.000      -7.096      -0.000

   15    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              239.969       0.000      -0.000      -0.000       0.000      -0.000       0.000      -0.000

   16    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000      -0.000

  State Sym Spin    / Nr.       17          18          19          20          21          22          23          24

    1    1  |0 0>               0.000      -0.000       0.009      -0.000      -0.000      -0.000       0.030       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |0 0>               0.000      -0.000      -7.267      -0.000      -0.000      -0.000      30.711       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |0 0>              -0.000       0.000      33.372      -0.000       0.000      -0.000      16.919      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |0 0>            -168.369      -0.000       0.000      -0.000     -29.150      -0.000      -0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |0 0>               0.000       0.000       0.000     -36.727       0.000      -3.153      -0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |0 0>               0.000     -29.156      -0.000      -0.000       0.000      -0.000       0.000     -22.576
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |0 0>              -0.000    -112.712       0.000       0.000       0.000       0.000       0.000     -87.374
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |0 0>              -0.000      -0.000      -0.000    -142.071       0.000     -12.117       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |0 0>             -26.611      -0.000       0.000      -0.000     112.711       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   10    1  |0 0>              -0.000       0.000     129.473      -0.000      -0.000      -0.000      62.754      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   11    1  |0 0>              -0.000       0.000     -25.425       0.000       0.000      -0.000     119.870       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   12    1  |0 0>              -0.000      -0.000       0.011       0.000      -0.000      -0.000       0.031      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>+          10549.478       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>+              0.000   23522.009       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>+              0.000       0.000   23522.082       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>+              0.000       0.000       0.000   23522.081       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>+              0.000       0.000       0.000       0.000   23522.285       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   10    1  |1 1>+              0.000       0.000       0.000       0.000       0.000   23522.451       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   11    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000   23522.451       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   12    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000   23522.460
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   13    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   14    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   15    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   16    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>              -0.000      -0.000       0.000       0.000      -0.000      -0.000       0.000      -0.000
                                0.000       0.000      -5.696      -0.000      -0.000      -0.000       0.531      -0.000

    2    1  |1 0>              -0.000       0.000       0.000       0.000      -0.000       0.000      -0.000       0.000
                                0.000      -4.566       0.000       0.000      -0.000      -0.000      -0.000       3.462

    3    1  |1 0>               0.000       0.000       0.000      -0.000       0.000      -0.000      -0.000       0.000
                             -164.545       0.000       0.000       0.000       4.556       0.000      -0.000       0.000

    4    1  |1 0>              -0.000       0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000      -5.192      -0.000       2.380       0.000       0.000

    5    1  |1 0>              -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000
                                0.000       0.000      -0.000      -0.800      -0.000      -4.866       0.000       0.000

    6    1  |1 0>              -0.000       0.000      -0.000       0.000       0.000       0.000      -0.000       0.000
                               -0.000       0.000      81.788      -0.000      -0.000      -0.000     152.690      -0.000

    7    1  |1 0>              -0.000      -0.000      -0.000       0.000       0.000      -0.000      -0.000       0.000
                                0.000     -81.788       0.000       0.000      -0.000      -0.000       0.000      35.340

    8    1  |1 0>              -0.000       0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                                0.800       0.000      -0.000       0.000    -127.376       0.000      -0.000      -0.000

    9    1  |1 0>              -0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000       0.000
                                0.000       0.000       0.000     127.376       0.000     117.357      -0.000      -0.000

   10    1  |1 0>              -0.000       0.000      -0.000       0.000      -0.000      -0.000      -0.000       0.000
                                4.866       0.000       0.000      -0.000    -117.357       0.000      -0.000      -0.000

   11    1  |1 0>               0.000      -0.000      -0.000       0.000      -0.000      -0.000       0.000      -0.000
                               -0.000    -152.690      -0.000       0.000       0.000       0.000       0.000    -209.198

   12    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000      -0.000      -0.000
                               -0.000       0.000     -35.340       0.000       0.000       0.000     209.198       0.000

   13    1  |1 0>              -0.000      -0.000      -0.000       0.000       0.000       0.000      -0.000       0.000
                               -4.134      -0.000      -0.000       0.000      -0.011       0.000      -0.000       0.000

   14    1  |1 0>              -0.000       0.000       0.000       0.000      -0.000       0.000       0.000      -0.000
                                0.000       0.039      -0.000      -0.000      -0.000       0.000       0.000       0.056

   15    1  |1 0>              -0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000      -0.000
                                0.000      -0.000       0.004      -0.000      -0.000       0.000      -0.059       0.000

   16    1  |1 0>              -0.000      -0.000       0.000       0.000      -0.000       0.000       0.000      -0.000
                               -0.000      -0.000       0.000      -0.003       0.000       0.008      -0.000      -0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.002       0.000      -0.000      -0.000       4.460      -0.000       0.000       0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000      -1.001       0.000      -5.625      -0.000      -0.000

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       1.001       0.000      -0.000      -0.000      -5.625       0.000

    4    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -4.459      -0.000       0.000      -0.000       0.000      -0.000       0.000

    5    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000       0.000       0.000      -0.000      -0.000      -6.115

    6    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000       0.000     173.269      -0.000      -0.000       0.000

    7    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000     250.234      -0.000     -56.870      -0.000       0.000

    8    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000    -250.234       0.000      -0.000       0.000     -56.874       0.000

    9    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000    -173.269       0.000       0.000       0.000       0.000       0.000       0.000

   10    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      56.870      -0.000      -0.000      -0.000     -77.047      -0.000

   11    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      56.874      -0.000      77.047       0.000       0.000

   12    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                6.115      -0.000      -0.000      -0.000      -0.000       0.000      -0.000      -0.000

   13    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.034       0.000      -0.000      -0.000      -0.001      -0.000

   14    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000      -0.035       0.000      -0.001       0.000      -0.000

   15    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                8.120       0.000      -0.000       0.000       0.000      -0.000      -0.000       0.000

   16    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000       0.000       0.000      -0.000      -0.008

  State Sym Spin    / Nr.       25          26          27          28          29          30          31          32

    1    1  |0 0>               0.000     104.414      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000      -0.000

    2    1  |0 0>               0.000      23.628      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000     -11.206       0.000      -0.000      -0.000

    3    1  |0 0>               0.000      47.036       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000     194.029      -0.000       0.000      -0.000

    4    1  |0 0>               0.000       0.000       0.000      -0.001       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000       0.000      97.227       0.000

    5    1  |0 0>              45.668       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000       0.000       0.000    -194.430

    6    1  |0 0>               0.000      -0.000      45.676       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000     -97.227      -0.000      -0.000

    7    1  |0 0>               0.000      -0.000    -239.969      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000      15.420      -0.000      -0.000

    8    1  |0 0>            -239.980      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000      -0.000      -0.000      30.654

    9    1  |0 0>               0.000       0.000      -0.000      -0.002       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000      -0.000      15.420      -0.000

   10    1  |0 0>               0.000    -245.033       0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000     -30.631       0.000      -0.000       0.000

   11    1  |0 0>               0.000    -129.712       0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       1.134      -0.000      -0.000      -0.000

   12    1  |0 0>              -0.000     136.597      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000      -0.000      -0.000       0.000

    1    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000     -95.018      -0.000       0.000

    2    1  |1 1>+              0.000       0.000       0.000       0.000       0.000      -0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      95.018       0.000       0.000      -0.000

    3    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000      -0.000       0.000     -95.000

    4    1  |1 1>+              0.000       0.000       0.000       0.000      -0.000       0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000       0.000      95.000       0.000

    5    1  |1 1>+              0.000       0.000       0.000       0.000      -0.000      -0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000      -0.000      -0.000     164.545       0.000

    6    1  |1 1>+              0.000       0.000       0.000       0.000      -0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000       4.566      -0.000      -0.000

    7    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       5.696      -0.000      -0.000       0.000

    8    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000       0.000      -0.000      -0.000       5.192

    9    1  |1 1>+              0.000       0.000       0.000       0.000      -0.000      -0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000      -4.556       0.000

   10    1  |1 1>+              0.000       0.000       0.000       0.000      -0.000       0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000      -0.000      -2.380

   11    1  |1 1>+              0.000       0.000       0.000       0.000       0.000      -0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000      -0.531       0.000       0.000      -0.000

   12    1  |1 1>+              0.000       0.000       0.000       0.000      -0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000      -3.462      -0.000      -0.000

   13    1  |1 1>+          25513.684       0.000       0.000       0.000      -0.000       0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000      -0.000       7.098

   14    1  |1 1>+              0.000   25513.684       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -7.112       0.000       0.000       0.000

   15    1  |1 1>+              0.000       0.000   25513.742       0.000       0.000       0.000      -0.000      -0.000
                                0.000       0.000       0.000       0.000      -0.000       7.107      -0.000       0.000

   16    1  |1 1>+              0.000       0.000       0.000   26041.362      -0.000       0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000       0.000       0.000      -0.000

    1    1  |1 0>              -0.000       0.000       0.000      -0.000   10549.266       0.000       0.000       0.000
                               -0.000       7.112       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 0>               0.000       0.000       0.000       0.000       0.000   10549.306       0.000       0.000
                               -0.000      -0.000      -7.107      -0.000      -0.000       0.000       0.000       0.000

    3    1  |1 0>              -0.000       0.000      -0.000      -0.000       0.000       0.000   10549.307       0.000
                                0.000      -0.000       0.000      -0.000      -0.000      -0.000       0.000       0.000

    4    1  |1 0>               0.000       0.000      -0.000       0.000       0.000       0.000       0.000   10549.424
                               -7.098      -0.000      -0.000       0.000      -0.000      -0.000      -0.000       0.000

    5    1  |1 0>              -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                                4.134      -0.000      -0.000       0.000      -0.000      -0.000      -0.000      -0.000

    6    1  |1 0>              -0.000       0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000      -0.039       0.000       0.000      -0.000      -0.000      -0.000      -0.000

    7    1  |1 0>              -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.004      -0.000      -0.000      -0.000      -0.000      -0.000

    8    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.003      -0.000      -0.000      -0.000      -0.000

    9    1  |1 0>               0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                                0.011       0.000       0.000      -0.000      -0.000      -0.000      -0.000      -0.000

   10    1  |1 0>               0.000       0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.008      -0.000      -0.000      -0.000      -0.000

   11    1  |1 0>              -0.000       0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.059       0.000      -0.000      -0.000      -0.000      -0.000

   12    1  |1 0>               0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.056      -0.000       0.000      -0.000      -0.000      -0.000      -0.000

   13    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000      42.571      -0.000      -0.000      -0.000      -0.000

   14    1  |1 0>               0.000       0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000     191.610       0.000      -0.000      -0.000      -0.000      -0.000

   15    1  |1 0>               0.000       0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000    -191.610       0.000      -0.000      -0.000      -0.000      -0.000      -0.000

   16    1  |1 0>               0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                              -42.571      -0.000       0.000       0.000      -0.000      -0.000      -0.000      -0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000      95.018       0.000
                               -0.000      -0.000      -0.000       0.000      -0.000       0.000      -0.000       0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000      -0.000       0.000       0.000     -95.004
                               -7.096       0.000       0.000       0.000       0.000      -0.000       0.000      -0.000

    3    1  |1 1>-              0.000       0.000       0.000       0.000     -95.018      -0.000       0.000       0.000
                               -0.000       7.096      -0.000       0.000      -0.000       0.000       0.000      -0.000

    4    1  |1 1>-              0.000       0.000       0.000       0.000      -0.000      95.004      -0.000       0.000
                                0.000       0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000

    5    1  |1 1>-              0.000       0.000       0.000       0.000       0.000    -164.543       0.000      -0.000
                               -0.000       0.000      -8.120       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>-              0.000       0.000       0.000       0.000       0.000      -0.000      -4.566       0.000
                                0.000       0.000      -0.000       0.000      -0.000       0.000      -0.000      -0.000

    7    1  |1 1>-              0.000       0.000       0.000       0.000       0.000      -0.000      -0.000       5.192
                               -0.034      -0.000       0.000      -0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>-              0.000       0.000       0.000       0.000      -5.696      -0.000      -0.000       0.000
                               -0.000       0.035      -0.000      -0.000      -0.000       0.000       0.000       0.000

    9    1  |1 1>-              0.000       0.000       0.000       0.000       0.000      -4.556       0.000       0.000
                                0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000

   10    1  |1 1>-              0.000       0.000       0.000       0.000      -0.531      -0.000      -0.000      -0.000
                                0.000       0.001       0.000      -0.000      -0.000       0.000      -0.000      -0.000

   11    1  |1 1>-              0.000       0.000       0.000       0.000      -0.000       0.000       0.000       2.380
                                0.001      -0.000       0.000       0.000      -0.000       0.000      -0.000      -0.000

   12    1  |1 1>-              0.000       0.000       0.000       0.000      -0.000      -0.000      -3.462      -0.000
                                0.000       0.000      -0.000       0.008      -0.000       0.000      -0.000      -0.000

   13    1  |1 1>-              0.000       0.000       0.000       0.000       7.112       0.000       0.000       0.000
                                0.000     191.601      -0.000       0.000       0.000       0.000      -0.000      -0.000

   14    1  |1 1>-              0.000       0.000       0.000       0.000       0.000      -0.000      -0.000       7.098
                             -191.601       0.000       0.000       0.000       0.000      -0.000       0.000       0.000

   15    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       7.107      -0.000
                                0.000      -0.000      -0.000      42.576       0.000      -0.000       0.000      -0.000

   16    1  |1 1>-              0.000       0.000       0.000       0.000       0.000      -0.000      -0.000       0.000
                               -0.000      -0.000     -42.576      -0.000       0.000      -0.000       0.000      -0.000

  State Sym Spin    / Nr.       33          34          35          36          37          38          39          40

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000      -0.000      -0.036

    2    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -1.680       0.000      -0.000      -0.000       0.000       0.000      39.247

    3    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      29.084      -0.000      -0.000       0.000      -0.000      -0.000       2.267

    4    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000       6.151      -0.000      36.353       0.000       0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.002       0.000       0.000       0.000     -29.106       0.000      -0.000      -0.000

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -6.152       0.000       0.000      -0.000      36.353      -0.000

    7    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000     -23.730      -0.000      -0.000      -0.000     140.650      -0.000

    8    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000      -0.000    -112.692      -0.000       0.000      -0.000

    9    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000     -23.726      -0.000    -140.651      -0.000       0.000

   10    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000     112.602      -0.000      -0.000      -0.000       0.000      -0.000       5.610

   11    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -4.168       0.000       0.000       0.000      -0.000      -0.000     151.559

   12    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000      -0.000      -0.031

    1    1  |1 1>+             -0.000      -0.000       0.000       0.000      -0.000      -0.000       0.000      -0.000
                                0.000       0.000      -5.696      -0.000      -0.000      -0.000       0.531      -0.000

    2    1  |1 1>+             -0.000       0.000       0.000       0.000      -0.000       0.000      -0.000       0.000
                                0.000      -4.566       0.000       0.000      -0.000      -0.000      -0.000       3.462

    3    1  |1 1>+              0.000       0.000       0.000      -0.000       0.000      -0.000      -0.000       0.000
                             -164.545       0.000       0.000       0.000       4.556       0.000      -0.000       0.000

    4    1  |1 1>+             -0.000       0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000      -5.192      -0.000       2.380       0.000       0.000

    5    1  |1 1>+             -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000
                                0.000       0.000      -0.000      -0.800      -0.000      -4.866       0.000       0.000

    6    1  |1 1>+             -0.000       0.000      -0.000       0.000       0.000       0.000      -0.000       0.000
                               -0.000       0.000      81.788      -0.000      -0.000      -0.000     152.690      -0.000

    7    1  |1 1>+             -0.000      -0.000      -0.000       0.000       0.000      -0.000      -0.000       0.000
                                0.000     -81.788       0.000       0.000      -0.000      -0.000       0.000      35.340

    8    1  |1 1>+             -0.000       0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                                0.800       0.000      -0.000       0.000    -127.376       0.000      -0.000      -0.000

    9    1  |1 1>+             -0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000       0.000
                                0.000       0.000       0.000     127.376       0.000     117.357      -0.000      -0.000

   10    1  |1 1>+             -0.000       0.000      -0.000       0.000      -0.000      -0.000      -0.000       0.000
                                4.866       0.000       0.000      -0.000    -117.357       0.000      -0.000      -0.000

   11    1  |1 1>+              0.000      -0.000      -0.000       0.000      -0.000      -0.000       0.000      -0.000
                               -0.000    -152.690      -0.000       0.000       0.000       0.000       0.000    -209.198

   12    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000      -0.000      -0.000
                               -0.000       0.000     -35.340       0.000       0.000       0.000     209.198       0.000

   13    1  |1 1>+             -0.000      -0.000      -0.000       0.000       0.000       0.000      -0.000       0.000
                               -4.134      -0.000      -0.000       0.000      -0.011       0.000      -0.000       0.000

   14    1  |1 1>+             -0.000       0.000       0.000       0.000      -0.000       0.000       0.000      -0.000
                                0.000       0.039      -0.000      -0.000      -0.000       0.000       0.000       0.056

   15    1  |1 1>+             -0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000      -0.000
                                0.000      -0.000       0.004      -0.000      -0.000       0.000      -0.059       0.000

   16    1  |1 1>+             -0.000      -0.000       0.000       0.000      -0.000       0.000       0.000      -0.000
                               -0.000      -0.000       0.000      -0.003       0.000       0.008      -0.000      -0.000

    1    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 0>           10549.478       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 0>               0.000   23522.009       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 0>               0.000       0.000   23522.082       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 0>               0.000       0.000       0.000   23522.081       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 0>               0.000       0.000       0.000       0.000   23522.285       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

   10    1  |1 0>               0.000       0.000       0.000       0.000       0.000   23522.451       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000

   11    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000   23522.451       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000

   12    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000   23522.460
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000

   13    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

   14    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

   15    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

   16    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

    1    1  |1 1>-             -0.000      -0.000      -0.000       5.696      -0.000       0.531       0.000       0.000
                                0.000      -0.000       0.000      -0.000      -0.000      -0.000      -0.000      -0.000

    2    1  |1 1>-            164.543       0.000       0.000       0.000       4.556       0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>-             -0.000       4.566       0.000       0.000      -0.000       0.000      -0.000       3.462
                                0.000      -0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000

    4    1  |1 1>-              0.000      -0.000      -5.192      -0.000      -0.000       0.000      -2.380       0.000
                                0.000      -0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000

    5    1  |1 1>-              0.000       0.000       0.800       0.000       0.000       0.000      -4.866      -0.000
                               -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000      -0.000

    6    1  |1 1>-             -0.000       0.000       0.000     -81.792      -0.000     152.688       0.000       0.000
                               -0.000      -0.000       0.000       0.000      -0.000      -0.000       0.000      -0.000

    7    1  |1 1>-             -0.800      -0.000       0.000      -0.000    -127.379      -0.000      -0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000      -0.000       0.000      -0.000

    8    1  |1 1>-             -0.000      81.792       0.000       0.000       0.000      -0.000      -0.000      35.335
                                0.000       0.000       0.000       0.000       0.000      -0.000       0.000       0.000

    9    1  |1 1>-             -0.000       0.000     127.379      -0.000       0.000       0.000    -117.355      -0.000
                                0.000      -0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000

   10    1  |1 1>-             -0.000    -152.688       0.000       0.000      -0.000       0.000       0.000     209.199
                                0.000      -0.000      -0.000      -0.000      -0.000       0.000      -0.000       0.000

   11    1  |1 1>-              4.866      -0.000       0.000       0.000     117.355      -0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000       0.000

   12    1  |1 1>-              0.000      -0.000      -0.000     -35.335       0.000    -209.199      -0.000       0.000
                               -0.000      -0.000      -0.000       0.000      -0.000       0.000       0.000       0.000

   13    1  |1 1>-              0.000      -0.039       0.000       0.000      -0.000      -0.000      -0.000       0.056
                                0.000       0.000       0.000      -0.000      -0.000      -0.000       0.000      -0.000

   14    1  |1 1>-              4.134      -0.000       0.000      -0.000      -0.011      -0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000       0.000      -0.000       0.000       0.000

   15    1  |1 1>-             -0.000      -0.000       0.000       0.004       0.000       0.059       0.000      -0.000
                               -0.000       0.000      -0.000      -0.000      -0.000      -0.000       0.000      -0.000

   16    1  |1 1>-              0.000      -0.000       0.003      -0.000       0.000       0.000       0.008       0.000
                               -0.000       0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000

  State Sym Spin    / Nr.       41          42          43          44          45          46          47          48

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000    -104.415      -0.000      -0.000      -0.000      -0.003       0.000

    2    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      52.499       0.000      -0.000       0.000     162.408       0.000

    3    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       3.032      -0.000      -0.000       0.000     106.740       0.000

    4    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               45.673      -0.000      -0.000       0.000      97.222      -0.000       0.000      -0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000     -97.229      -0.000      -0.000

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000     -45.673       0.000      -0.000       0.000       0.000       0.000     -97.201

    7    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000     239.966      -0.000       0.000      -0.000       0.000       0.000      15.432

    8    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000       0.000      15.415      -0.000      -0.000

    9    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              239.966      -0.000      -0.000      -0.000      15.430      -0.000      -0.000      -0.000

   10    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000     -10.261      -0.000       0.000      -0.000     -16.303      -0.000

   11    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000    -277.183      -0.000      -0.000       0.000     -26.048      -0.000

   12    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000    -136.608      -0.000       0.000      -0.000      -0.002       0.000

    1    1  |1 1>+             -0.000       0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                               -0.000       7.112       0.000       0.000       0.000      -0.000      -0.000     189.995

    2    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -7.107      -0.000       0.000      -0.000     -95.016      -0.000

    3    1  |1 1>+             -0.000       0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000      -0.000       0.000      95.016       0.000       0.000

    4    1  |1 1>+              0.000       0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                               -7.098      -0.000      -0.000       0.000    -189.995       0.000      -0.000      -0.000

    5    1  |1 1>+             -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                                4.134      -0.000      -0.000       0.000      -0.002      -0.000      -0.000       0.000

    6    1  |1 1>+             -0.000       0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000      -0.039       0.000       0.000      -0.000       0.000       0.000       4.459

    7    1  |1 1>+             -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.004      -0.000       0.000      -0.000      -1.001       0.000

    8    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.003       0.000       1.001      -0.000      -0.000

    9    1  |1 1>+              0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                                0.011       0.000       0.000      -0.000      -4.460      -0.000       0.000       0.000

   10    1  |1 1>+              0.000       0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.008       0.000       5.625       0.000      -0.000

   11    1  |1 1>+             -0.000       0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.059       0.000      -0.000       0.000       5.625       0.000

   12    1  |1 1>+              0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.056      -0.000       0.000      -0.000       0.000      -0.000      -0.000

   13    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000      42.571       0.000       7.096       0.000      -0.000

   14    1  |1 1>+              0.000       0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000     191.610       0.000       0.000      -0.000      -7.096      -0.000

   15    1  |1 1>+              0.000       0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000    -191.610       0.000      -0.000       0.000      -0.000       0.000      -0.000

   16    1  |1 1>+              0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                              -42.571      -0.000       0.000       0.000      -0.000      -0.000      -0.000      -0.000

    1    1  |1 0>               0.000       0.000       0.000       0.000       0.000      -0.000     -95.018      -0.000
                                0.000       0.000       0.000       0.000       0.000      -0.000       0.000      -0.000

    2    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000      -0.000      95.004
                                0.000       0.000       0.000       0.000      -0.000       0.000      -0.000       0.000

    3    1  |1 0>               0.000       0.000       0.000       0.000      95.018       0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000      -0.000      -0.000       0.000

    4    1  |1 0>               0.000       0.000       0.000       0.000       0.000     -95.004       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000       0.000       0.000       0.000

    5    1  |1 0>               0.000       0.000       0.000       0.000      -0.000     164.543      -0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000      -0.000

    6    1  |1 0>               0.000       0.000       0.000       0.000      -0.000       0.000       4.566      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 0>               0.000       0.000       0.000       0.000      -0.000       0.000       0.000      -5.192
                                0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000      -0.000

    8    1  |1 0>               0.000       0.000       0.000       0.000       5.696       0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000

    9    1  |1 0>               0.000       0.000       0.000       0.000      -0.000       4.556      -0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000

   10    1  |1 0>               0.000       0.000       0.000       0.000       0.531       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000      -0.000       0.000       0.000

   11    1  |1 0>               0.000       0.000       0.000       0.000       0.000      -0.000      -0.000      -2.380
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   12    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       3.462       0.000
                                0.000       0.000       0.000       0.000       0.000      -0.000       0.000       0.000

   13    1  |1 0>           25513.684       0.000       0.000       0.000      -7.112      -0.000      -0.000      -0.000
                                0.000       0.000       0.000       0.000      -0.000      -0.000       0.000       0.000

   14    1  |1 0>               0.000   25513.684       0.000       0.000      -0.000       0.000       0.000      -7.098
                               -0.000       0.000       0.000       0.000      -0.000       0.000      -0.000      -0.000

   15    1  |1 0>               0.000       0.000   25513.742       0.000      -0.000      -0.000      -7.107       0.000
                               -0.000      -0.000       0.000       0.000      -0.000       0.000      -0.000       0.000

   16    1  |1 0>               0.000       0.000       0.000   26041.362      -0.000       0.000       0.000      -0.000
                               -0.000      -0.000      -0.000       0.000      -0.000       0.000      -0.000       0.000

    1    1  |1 1>-             -7.112      -0.000      -0.000      -0.000   10549.266       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>-             -0.000       0.000      -0.000       0.000       0.000   10549.306       0.000       0.000
                                0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>-             -0.000       0.000      -7.107       0.000       0.000       0.000   10549.307       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>-             -0.000      -7.098       0.000      -0.000       0.000       0.000       0.000   10549.424
                               -0.000       0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>-             -0.000      -4.134       0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>-              0.039       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>-             -0.000      -0.000      -0.000      -0.003       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>-             -0.000       0.000      -0.004       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>-              0.000       0.011      -0.000      -0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

   10    1  |1 1>-              0.000       0.000      -0.059      -0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

   11    1  |1 1>-              0.000      -0.000      -0.000      -0.008       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   12    1  |1 1>-             -0.056      -0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000       0.000       0.000       0.000       0.000       0.000

   13    1  |1 1>-              0.000       0.000     191.610       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000

   14    1  |1 1>-             -0.000       0.000       0.000     -42.571       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000       0.000       0.000       0.000       0.000       0.000

   15    1  |1 1>-           -191.610      -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000

   16    1  |1 1>-             -0.000      42.571      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000       0.000       0.000       0.000       0.000

  State Sym Spin    / Nr.       49          50          51          52          53          54          55          56

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000       0.009      -0.000      -0.030      -0.000       0.000

    2    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -3.376      -0.000     -32.455       0.000       0.000

    3    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000     -33.987      -0.000      13.270       0.000      -0.000

    4    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000     -29.156       0.000      -0.000       0.000      -0.000       0.000      22.576

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000     -36.727       0.000       0.000       0.000       3.152      -0.000

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -168.371       0.000       0.000       0.000      29.150       0.000      -0.000      -0.000

    7    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               26.611       0.000      -0.000      -0.000     112.711      -0.000       0.000       0.000

    8    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000    -142.071       0.000       0.000       0.000      12.114       0.000

    9    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000     112.712      -0.000       0.000       0.000      -0.000      -0.000     -87.374

   10    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000    -131.000      -0.000      53.717      -0.000       0.000

   11    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000     -15.780       0.000    -124.182       0.000      -0.000

   12    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000       0.011      -0.000      -0.031      -0.000       0.000

    1    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.002       0.000      -0.000      -0.000       4.460      -0.000       0.000       0.000

    2    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000      -1.001       0.000      -5.625      -0.000      -0.000

    3    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       1.001       0.000      -0.000      -0.000      -5.625       0.000

    4    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -4.459      -0.000       0.000      -0.000       0.000      -0.000       0.000

    5    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000       0.000       0.000      -0.000      -0.000      -6.115

    6    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000       0.000     173.269      -0.000      -0.000       0.000

    7    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000     250.234      -0.000     -56.870      -0.000       0.000

    8    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000    -250.234       0.000      -0.000       0.000     -56.874       0.000

    9    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000    -173.269       0.000       0.000       0.000       0.000       0.000       0.000

   10    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      56.870      -0.000      -0.000      -0.000     -77.047      -0.000

   11    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      56.874      -0.000      77.047       0.000       0.000

   12    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                6.115      -0.000      -0.000      -0.000      -0.000       0.000      -0.000      -0.000

   13    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.034       0.000      -0.000      -0.000      -0.001      -0.000

   14    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000      -0.035       0.000      -0.001       0.000      -0.000

   15    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                8.120       0.000      -0.000       0.000       0.000      -0.000      -0.000       0.000

   16    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000       0.000       0.000      -0.000      -0.008

    1    1  |1 0>               0.000       0.000       0.000      -5.696       0.000      -0.531      -0.000      -0.000
                               -0.000       0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 0>            -164.543      -0.000      -0.000      -0.000      -4.556      -0.000       0.000      -0.000
                               -0.000       0.000      -0.000      -0.000      -0.000      -0.000       0.000      -0.000

    3    1  |1 0>               0.000      -4.566      -0.000      -0.000       0.000      -0.000       0.000      -3.462
                               -0.000       0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000

    4    1  |1 0>              -0.000       0.000       5.192       0.000       0.000      -0.000       2.380      -0.000
                               -0.000       0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000

    5    1  |1 0>               0.000      -0.000      -0.800      -0.000      -0.000      -0.000       4.866       0.000
                                0.000       0.000       0.000      -0.000      -0.000      -0.000      -0.000       0.000

    6    1  |1 0>               0.000       0.000      -0.000      81.792       0.000    -152.688      -0.000      -0.000
                                0.000       0.000      -0.000      -0.000       0.000       0.000      -0.000       0.000

    7    1  |1 0>               0.800       0.000       0.000       0.000     127.379       0.000       0.000      -0.000
                                0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

    8    1  |1 0>               0.000     -81.792      -0.000       0.000      -0.000       0.000       0.000     -35.335
                               -0.000      -0.000      -0.000      -0.000      -0.000       0.000      -0.000      -0.000

    9    1  |1 0>               0.000      -0.000    -127.379       0.000       0.000      -0.000     117.355       0.000
                               -0.000       0.000       0.000      -0.000      -0.000       0.000       0.000       0.000

   10    1  |1 0>               0.000     152.688      -0.000      -0.000       0.000       0.000      -0.000    -209.199
                               -0.000       0.000       0.000       0.000       0.000      -0.000       0.000      -0.000

   11    1  |1 0>              -4.866       0.000      -0.000      -0.000    -117.355       0.000       0.000      -0.000
                               -0.000      -0.000       0.000      -0.000       0.000       0.000       0.000      -0.000

   12    1  |1 0>              -0.000       0.000       0.000      35.335      -0.000     209.199       0.000       0.000
                                0.000       0.000       0.000      -0.000       0.000      -0.000      -0.000      -0.000

   13    1  |1 0>              -0.000       0.039      -0.000      -0.000       0.000       0.000       0.000      -0.056
                               -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000

   14    1  |1 0>              -4.134       0.000      -0.000       0.000       0.011       0.000      -0.000      -0.000
                               -0.000      -0.000      -0.000       0.000      -0.000       0.000      -0.000      -0.000

   15    1  |1 0>               0.000       0.000      -0.000      -0.004      -0.000      -0.059      -0.000       0.000
                                0.000      -0.000       0.000       0.000       0.000       0.000      -0.000       0.000

   16    1  |1 0>              -0.000       0.000      -0.003       0.000      -0.000      -0.000      -0.008      -0.000
                                0.000      -0.000       0.000       0.000       0.000       0.000      -0.000      -0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>-          10549.478       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>-              0.000   23522.009       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>-              0.000       0.000   23522.082       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>-              0.000       0.000       0.000   23522.081       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>-              0.000       0.000       0.000       0.000   23522.285       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   10    1  |1 1>-              0.000       0.000       0.000       0.000       0.000   23522.451       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   11    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000   23522.451       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   12    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000   23522.460
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
                              104.414      -0.000      -0.000       0.000

    2    1  |0 0>               0.000       0.000       0.000       0.000
                               28.886      -0.000      -0.000      -0.000

    3    1  |0 0>               0.000       0.000       0.000       0.000
                              -44.003      -0.000      -0.000      -0.000

    4    1  |0 0>               0.000       0.000       0.000       0.000
                               -0.000       0.000     -45.676      -0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000
                                0.000      45.668      -0.000       0.000

    6    1  |0 0>               0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.001

    7    1  |0 0>               0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000       0.002

    8    1  |0 0>               0.000       0.000       0.000       0.000
                               -0.000    -239.980      -0.000      -0.000

    9    1  |0 0>               0.000       0.000       0.000       0.000
                               -0.000      -0.000    -239.969       0.000

   10    1  |0 0>               0.000       0.000       0.000       0.000
                              234.771       0.000      -0.000      -0.000

   11    1  |0 0>               0.000       0.000       0.000       0.000
                             -147.474       0.000       0.000      -0.000

   12    1  |0 0>               0.000       0.000       0.000       0.000
                              136.597      -0.000       0.000      -0.000

    1    1  |1 1>+              0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000       0.000

    2    1  |1 1>+              0.000       0.000       0.000       0.000
                               -7.096       0.000       0.000       0.000

    3    1  |1 1>+              0.000       0.000       0.000       0.000
                               -0.000       7.096      -0.000       0.000

    4    1  |1 1>+              0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000

    5    1  |1 1>+              0.000       0.000       0.000       0.000
                               -0.000       0.000      -8.120       0.000

    6    1  |1 1>+              0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000       0.000

    7    1  |1 1>+              0.000       0.000       0.000       0.000
                               -0.034      -0.000       0.000      -0.000

    8    1  |1 1>+              0.000       0.000       0.000       0.000
                               -0.000       0.035      -0.000      -0.000

    9    1  |1 1>+              0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000      -0.000

   10    1  |1 1>+              0.000       0.000       0.000       0.000
                                0.000       0.001       0.000      -0.000

   11    1  |1 1>+              0.000       0.000       0.000       0.000
                                0.001      -0.000       0.000       0.000

   12    1  |1 1>+              0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000       0.008

   13    1  |1 1>+              0.000       0.000       0.000       0.000
                                0.000     191.601      -0.000       0.000

   14    1  |1 1>+              0.000       0.000       0.000       0.000
                             -191.601       0.000       0.000       0.000

   15    1  |1 1>+              0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000      42.576

   16    1  |1 1>+              0.000       0.000       0.000       0.000
                               -0.000      -0.000     -42.576      -0.000

    1    1  |1 0>               7.112       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000

    2    1  |1 0>               0.000      -0.000       0.000      -0.000
                               -0.000       0.000       0.000       0.000

    3    1  |1 0>               0.000      -0.000       7.107      -0.000
                                0.000      -0.000      -0.000      -0.000

    4    1  |1 0>               0.000       7.098      -0.000       0.000
                                0.000      -0.000       0.000       0.000

    5    1  |1 0>               0.000       4.134      -0.000       0.000
                               -0.000      -0.000       0.000       0.000

    6    1  |1 0>              -0.039      -0.000      -0.000      -0.000
                               -0.000      -0.000      -0.000      -0.000

    7    1  |1 0>               0.000       0.000       0.000       0.003
                               -0.000      -0.000       0.000       0.000

    8    1  |1 0>               0.000      -0.000       0.004      -0.000
                                0.000       0.000       0.000       0.000

    9    1  |1 0>              -0.000      -0.011       0.000       0.000
                                0.000      -0.000       0.000       0.000

   10    1  |1 0>              -0.000      -0.000       0.059       0.000
                                0.000       0.000       0.000       0.000

   11    1  |1 0>              -0.000       0.000       0.000       0.008
                                0.000      -0.000      -0.000      -0.000

   12    1  |1 0>               0.056       0.000      -0.000       0.000
                                0.000      -0.000       0.000      -0.000

   13    1  |1 0>               0.000      -0.000    -191.610      -0.000
                                0.000       0.000       0.000      -0.000

   14    1  |1 0>               0.000       0.000      -0.000      42.571
                                0.000      -0.000       0.000      -0.000

   15    1  |1 0>             191.610       0.000       0.000      -0.000
                                0.000       0.000      -0.000      -0.000

   16    1  |1 0>               0.000     -42.571       0.000       0.000
                               -0.000      -0.000      -0.000       0.000

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

   13    1  |1 1>-          25513.684       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000

   14    1  |1 1>-              0.000   25513.684       0.000       0.000
                                0.000       0.000       0.000       0.000

   15    1  |1 1>-              0.000       0.000   25513.742       0.000
                                0.000       0.000       0.000       0.000

   16    1  |1 1>-              0.000       0.000       0.000   26041.362
                                0.000       0.000       0.000       0.000

 => Eigenvalues of spin-orbit matrix in ascending order  (E0 = Emin,ges)
    (symmetry =  1)

    Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
             (au)           (au)        (cm-1)           (au)       (cm-1)        (eV)
    1   -25.35580168    -0.00000593       -1.30      0.00000000        0.00      0.0000
    2   -25.30902802     0.04676774    10264.33      0.04677367    10265.63      1.2728
    3   -25.30902802     0.04676774    10264.33      0.04677367    10265.63      1.2728
    4   -25.30902788     0.04676787    10264.36      0.04677380    10265.66      1.2728
    5   -25.30827626     0.04751949    10429.32      0.04752542    10430.62      1.2932
    6   -25.30827608     0.04751967    10429.36      0.04752560    10430.66      1.2932
    7   -25.30827578     0.04751998    10429.43      0.04752591    10430.73      1.2932
    8   -25.30827564     0.04752011    10429.46      0.04752604    10430.76      1.2932
    9   -25.30827564     0.04752011    10429.46      0.04752604    10430.76      1.2932
   10   -25.30686380     0.04893195    10739.32      0.04893788    10740.62      1.3317
   11   -25.30686376     0.04893199    10739.33      0.04893792    10740.63      1.3317
   12   -25.30686376     0.04893199    10739.33      0.04893792    10740.63      1.3317
   13   -25.30686366     0.04893209    10739.35      0.04893802    10740.65      1.3317
   14   -25.30686354     0.04893221    10739.38      0.04893814    10740.68      1.3317
   15   -25.30686354     0.04893221    10739.38      0.04893814    10740.68      1.3317
   16   -25.30686347     0.04893229    10739.40      0.04893822    10740.70      1.3317
   17   -25.29776165     0.05803410    12737.01      0.05804003    12738.31      1.5793
   18   -25.29776157     0.05803418    12737.03      0.05804011    12738.33      1.5794
   19   -25.29776143     0.05803432    12737.06      0.05804025    12738.36      1.5794
   20   -25.29776143     0.05803432    12737.06      0.05804025    12738.36      1.5794
   21   -25.29776143     0.05803433    12737.06      0.05804026    12738.36      1.5794
   22   -25.25032080     0.10547496    23149.08      0.10548089    23150.38      2.8703
   23   -25.25032044     0.10547531    23149.15      0.10548124    23150.46      2.8703
   24   -25.25031997     0.10547578    23149.26      0.10548171    23150.56      2.8703
   25   -25.25031987     0.10547588    23149.28      0.10548181    23150.58      2.8703
   26   -25.25031987     0.10547588    23149.28      0.10548181    23150.58      2.8703
   27   -25.24901576     0.10678000    23435.50      0.10678593    23436.80      2.9058
   28   -25.24901576     0.10678000    23435.50      0.10678593    23436.80      2.9058
   29   -25.24901543     0.10678032    23435.57      0.10678626    23436.87      2.9058
   30   -25.24901476     0.10678100    23435.72      0.10678693    23437.02      2.9058
   31   -25.24901476     0.10678100    23435.72      0.10678693    23437.02      2.9058
   32   -25.24901455     0.10678120    23435.76      0.10678713    23437.07      2.9058
   33   -25.24901439     0.10678136    23435.80      0.10678729    23437.10      2.9058
   34   -25.24743733     0.10835843    23781.93      0.10836436    23783.23      2.9487
   35   -25.24743732     0.10835843    23781.93      0.10836436    23783.23      2.9487
   36   -25.24743705     0.10835871    23781.99      0.10836464    23783.29      2.9488
   37   -25.24743705     0.10835871    23781.99      0.10836464    23783.29      2.9488
   38   -25.24743649     0.10835926    23782.11      0.10836519    23783.41      2.9488
   39   -25.24743624     0.10835951    23782.16      0.10836544    23783.47      2.9488
   40   -25.24743587     0.10835988    23782.25      0.10836581    23783.55      2.9488
   41   -25.24743587     0.10835988    23782.25      0.10836582    23783.55      2.9488
   42   -25.24743570     0.10836005    23782.28      0.10836598    23783.58      2.9488
   43   -25.24172791     0.11406784    25035.00      0.11407377    25036.30      3.1041
   44   -25.24172765     0.11406810    25035.05      0.11407403    25036.36      3.1041
   45   -25.24172743     0.11406832    25035.10      0.11407425    25036.40      3.1041
   46   -25.24172729     0.11406847    25035.13      0.11407440    25036.44      3.1041
   47   -25.24172728     0.11406847    25035.14      0.11407440    25036.44      3.1041
   48   -25.24144395     0.11435180    25097.32      0.11435773    25098.62      3.1118
   49   -25.24044263     0.11535312    25317.08      0.11535905    25318.39      3.1391
   50   -25.24044254     0.11535321    25317.10      0.11535914    25318.41      3.1391
   51   -25.24044254     0.11535321    25317.10      0.11535914    25318.41      3.1391
   52   -25.23789816     0.11789759    25875.53      0.11790352    25876.83      3.2083
   53   -25.23789807     0.11789769    25875.55      0.11790362    25876.85      3.2083
   54   -25.23789807     0.11789769    25875.55      0.11790362    25876.85      3.2083
   55   -25.23789771     0.11789804    25875.63      0.11790397    25876.93      3.2083
   56   -25.23789671     0.11789904    25875.85      0.11790497    25877.15      3.2084
   57   -25.23711977     0.11867598    26046.37      0.11868191    26047.67      3.2295
   58   -25.23711977     0.11867598    26046.37      0.11868191    26047.67      3.2295
   59   -25.23711977     0.11867598    26046.37      0.11868191    26047.67      3.2295
   60   -25.23388806     0.12190769    26755.65      0.12191362    26756.95      3.3174

 => Eigenvectors of spin-orbit matrix columnwise and corresponding to the
    eigenvalues in ascending order (symmetry =  1)

  Basis states          Eigenvectors (columnwise)

 State Sym Spin     / Nr.      1           2           3           4           5           6           7           8

   1    1  |0 0>           0.99997410 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000036  0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   2    1  |0 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00606913  0.10351896 -0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   3    1  |0 0>          -0.00000000 -0.00000000  0.00000000  0.00000000  0.10353841  0.00606801 -0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   4    1  |0 0>          -0.00000000 -0.00000000  0.00000898  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000010
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   5    1  |0 0>           0.00000000  0.00000000  0.00000000  0.00000001 -0.00000000 -0.00000000 -0.10375818 -0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000082 -0.00000000

   6    1  |0 0>          -0.00000000 -0.00000897 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.10375224
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   7    1  |0 0>           0.00000000  0.00000311  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00257534
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   8    1  |0 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00256882  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000002  0.00000000

   9    1  |0 0>           0.00000000 -0.00000000  0.00000311  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  10    1  |0 0>           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00256207 -0.00009736  0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  11    1  |0 0>           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00009706 -0.00257034  0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  12    1  |0 0>           0.00006372  0.00000000  0.00000000 -0.00000000  0.00000001 -0.00000020  0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   1    1  |1 1>+          0.00000000  0.54785007  0.00000016  0.00000000 -0.00000000  0.00000000 -0.00000000  0.40611453
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000001

   2    1  |1 1>+          0.00000025 -0.00000000  0.00000000 -0.00000000  0.40662254 -0.70294179  0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   3    1  |1 1>+          0.00000000  0.00000000 -0.00000000 -0.54780866 -0.00000000 -0.00000000 -0.40613731 -0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000169 -0.00000000  0.00000000 -0.00000320 -0.00000000

   4    1  |1 1>+          0.00000000  0.00000016 -0.54764618  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000037
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000001

   5    1  |1 1>+         -0.00000000  0.00000009 -0.31608816  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000065
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000001

   6    1  |1 1>+          0.00000000 -0.00000450 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00007301
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   7    1  |1 1>+         -0.00000037  0.00000000  0.00000000  0.00000000  0.00008280 -0.00001582  0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   8    1  |1 1>+          0.00000000 -0.00000000  0.00000000 -0.00000315 -0.00000000 -0.00000000  0.00009234  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   9    1  |1 1>+          0.00000000 -0.00000000  0.00000394  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  10    1  |1 1>+          0.00000000 -0.00000000  0.00000000 -0.00000038  0.00000000  0.00000000  0.00000457  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  11    1  |1 1>+         -0.00000129  0.00000000 -0.00000000 -0.00000000  0.00003415  0.00007765 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  12    1  |1 1>+         -0.00000000 -0.00000269 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00006084
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  13    1  |1 1>+         -0.00000000  0.00000000 -0.00000000 -0.00043174  0.00000000  0.00000000  0.00091647  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000001  0.00000000

  14    1  |1 1>+         -0.00415489 -0.00000000  0.00000000  0.00000000 -0.00091612 -0.00052934  0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  15    1  |1 1>+          0.00000000 -0.00042892 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00091340
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  16    1  |1 1>+         -0.00000000  0.00000000 -0.00000233  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   1    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.81211757  0.00069974 -0.00000000  0.00000000

   2    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000001
                          -0.00000000 -0.54775170 -0.00000016 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.40625573

   3    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000001
                          -0.00000000  0.00000016 -0.54775159  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000037

   4    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000640 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000718  0.00000000  0.00000000  0.81199199  0.00000000

   5    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000195  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.63230593  0.00000000  0.00000000  0.00000926  0.00000000

   6    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00007634 -0.00000007  0.00000000 -0.00000000

   7    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000185 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00001502

   8    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000184 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   9    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00007600 -0.00000000

  10    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000410  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  11    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000410  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00009365

  12    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000151 -0.00000000 -0.00000000 -0.00000000  0.00000008 -0.00009290  0.00000000 -0.00000000

  13    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00043021 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  14    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00043021  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00091872

  15    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00415492  0.00000000  0.00000000 -0.00000000 -0.00000091  0.00105808 -0.00000000 -0.00000000

  16    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000231 -0.00000000  0.00000000  0.00000000  0.00000000

   1    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000001
                          -0.00000000 -0.00000016  0.54785013 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000037

   2    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000169 -0.00000000  0.00000000 -0.00000320 -0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.54780884  0.00000000  0.00000000  0.40613722  0.00000000

   3    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000025 -0.00000000  0.00000000  0.00000000  0.40541071  0.70364127 -0.00000000  0.00000000

   4    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000001
                           0.00000000  0.54765320  0.00000016  0.00000000 -0.00000000  0.00000000 -0.00000000  0.40591465

   5    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000001
                           0.00000000 -0.31607590 -0.00000009 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.70319820

   6    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000450  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   7    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000316 -0.00000000 -0.00000000 -0.00009234 -0.00000000

   8    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000037 -0.00000000 -0.00000000 -0.00000000  0.00008277  0.00001596 -0.00000000  0.00000000

   9    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000394 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00007285

  10    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000129 -0.00000000 -0.00000000  0.00000000 -0.00003428  0.00007759  0.00000000 -0.00000000

  11    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000038  0.00000000  0.00000000  0.00000457  0.00000000

  12    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000270 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  13    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00415489  0.00000000  0.00000000 -0.00000000 -0.00091703  0.00052776  0.00000000 -0.00000000

  14    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000001  0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00043174 -0.00000000 -0.00000000 -0.00091647 -0.00000000

  15    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00042892 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  16    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000233 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 State Sym Spin     / Nr.      9          10          11          12          13          14          15          16

   1    1  |0 0>           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   2    1  |0 0>          -0.00000000 -0.00000108  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   3    1  |0 0>           0.00000000  0.00001898 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   4    1  |0 0>           0.10375219  0.00000000  0.00000000 -0.00001352 -0.00000000 -0.00000000 -0.00001416  0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   5    1  |0 0>           0.00000000 -0.00000000  0.00000000  0.00000000  0.00001150 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   6    1  |0 0>           0.00000010  0.00000000  0.00001352  0.00000000  0.00000000  0.00001416 -0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   7    1  |0 0>          -0.00000000  0.00000000  0.00000059  0.00000000  0.00000000  0.00000406 -0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   8    1  |0 0>          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000670 -0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   9    1  |0 0>           0.00257535 -0.00000000 -0.00000000  0.00000059  0.00000000  0.00000000  0.00000406 -0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  10    1  |0 0>          -0.00000000 -0.00000025  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  11    1  |0 0>           0.00000000  0.00000001  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  12    1  |0 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   1    1  |1 1>+         -0.00000037  0.00000000  0.73015451  0.00000191 -0.00000000 -0.00310059  0.00000000  0.00000000
                           0.00000001  0.00000000  0.00000001 -0.00000001 -0.00000000  0.00000000 -0.00000000  0.00000000

   2    1  |1 1>+          0.00000000  0.57736922 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   3    1  |1 1>+          0.00000000  0.00000000 -0.00000000 -0.00000000 -0.57701048  0.00000000  0.00000000  0.44746032
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000397  0.00000000 -0.00000000 -0.00000033

   4    1  |1 1>+         -0.40593034 -0.00000000 -0.00000167  0.63773142 -0.00000000 -0.00000004 -0.35610008 -0.00000000
                          -0.00000001 -0.00000000 -0.00000001  0.00000002 -0.00000000 -0.00000000  0.00000000 -0.00000000

   5    1  |1 1>+          0.70318918  0.00000000  0.00000042 -0.16064239  0.00000000 -0.00000007 -0.61189947  0.00000000
                           0.00000001  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000001 -0.00000000

   6    1  |1 1>+         -0.00000000 -0.00000000 -0.00015720 -0.00000000  0.00000000  0.00037921 -0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   7    1  |1 1>+          0.00000000 -0.00030459  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   8    1  |1 1>+         -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00019041  0.00000000 -0.00000000  0.00008415
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   9    1  |1 1>+         -0.00007285  0.00000000  0.00000000 -0.00032312  0.00000000 -0.00000000 -0.00025253  0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  10    1  |1 1>+         -0.00000000 -0.00000000  0.00000000  0.00000000  0.00036431  0.00000000  0.00000000  0.00049480
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  11    1  |1 1>+          0.00000000  0.00027994 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  12    1  |1 1>+         -0.00000000 -0.00000000 -0.00012802 -0.00000000  0.00000000 -0.00048713  0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  13    1  |1 1>+         -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000011 -0.00000000 -0.00000000 -0.00000207
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  14    1  |1 1>+         -0.00000000  0.00000056  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  15    1  |1 1>+         -0.00000000  0.00000000  0.00000085  0.00000000 -0.00000000  0.00000347 -0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  16    1  |1 1>+         -0.00000000  0.00000000 -0.00000000  0.00000001 -0.00000000  0.00000000  0.00000003 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   1    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000 -0.57731177  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   2    1  |1 0>          -0.00000001 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000037  0.00000000  0.18556797  0.00000049 -0.00000000  0.70618172 -0.00000008 -0.00000000

   3    1  |1 0>          -0.00000001  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000001 -0.00000000
                           0.40625575 -0.00000000 -0.00000049  0.18537903 -0.00000000  0.00000008  0.70623143 -0.00000000

   4    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000397 -0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.57748296 -0.00000000  0.00000000  0.00034396

   5    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000057
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00046674  0.00000000  0.00000000  0.77471837

   6    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00041525  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   7    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00057818 -0.00000000  0.00000000  0.00018562 -0.00000000 -0.00000000

   8    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00001502  0.00000000  0.00000000 -0.00057823  0.00000000  0.00000000  0.00018546  0.00000000

   9    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00041450 -0.00000000  0.00000000  0.00000025

  10    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00009364 -0.00000000 -0.00000000  0.00015051 -0.00000000  0.00000000  0.00016780 -0.00000000

  11    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00015057 -0.00000000  0.00000000 -0.00016775  0.00000000  0.00000000

  12    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  13    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00091872  0.00000000 -0.00000000  0.00000014  0.00000000 -0.00000000 -0.00000156  0.00000000

  14    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000013  0.00000000  0.00000000 -0.00000156  0.00000000 -0.00000000

  15    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  16    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000003

   1    1  |1 1>-         -0.00000001  0.00000000  0.00000001 -0.00000002  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.40611446 -0.00000000 -0.00000191  0.73015530 -0.00000000 -0.00000000 -0.00290525 -0.00000000

   2    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000397  0.00000000 -0.00000000  0.00000033
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.57755659  0.00000000  0.00000000  0.44675507

   3    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.57736937 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   4    1  |1 1>-         -0.00000001  0.00000000  0.00000001 -0.00000001  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000037 -0.00000000 -0.63763250 -0.00000167  0.00000000  0.35628445 -0.00000004 -0.00000000

   5    1  |1 1>-         -0.00000001  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000065 -0.00000000 -0.16082042 -0.00000042  0.00000000 -0.61184855  0.00000007  0.00000000

   6    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00007301  0.00000000  0.00000000 -0.00015730  0.00000000  0.00000000  0.00037917 -0.00000000

   7    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00019050  0.00000000  0.00000000  0.00008393

   8    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00030458  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   9    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00032319  0.00000000 -0.00000000  0.00025245 -0.00000000 -0.00000000

  10    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00027995  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  11    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00036371 -0.00000000 -0.00000000 -0.00049524

  12    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00006084 -0.00000000 -0.00000000  0.00012789 -0.00000000  0.00000000  0.00048716 -0.00000000

  13    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000056 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  14    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000010  0.00000000 -0.00000000 -0.00000207

  15    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00091340  0.00000000  0.00000000 -0.00000085  0.00000000 -0.00000000 -0.00000347  0.00000000

  16    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000001  0.00000000  0.00000000  0.00000003 -0.00000000 -0.00000000

 State Sym Spin     / Nr.     17          18          19          20          21          22          23          24

   1    1  |0 0>          -0.00000004 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000027
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   2    1  |0 0>           0.99386083 -0.03781679  0.00000000  0.00000000 -0.00000000 -0.00032522 -0.00000000 -0.00563099
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   3    1  |0 0>           0.03781694  0.99385887  0.00000000 -0.00000000 -0.00000000  0.00561420 -0.00000000 -0.00032618
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   4    1  |0 0>          -0.00000000  0.00000000  0.00000000  0.99457434 -0.00000004  0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   5    1  |0 0>           0.00000000  0.00000000  0.00000001  0.00000004  0.99457374  0.00000000  0.00561010 -0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000138  0.00000000 -0.00000000 -0.00000000

   6    1  |0 0>          -0.00000000 -0.00000000  0.99457434 -0.00000000 -0.00000001 -0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   7    1  |0 0>          -0.00000000 -0.00000000  0.00028949 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   8    1  |0 0>           0.00000000  0.00000000  0.00000000  0.00000000  0.00028863 -0.00000000 -0.11564795  0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   9    1  |0 0>           0.00000000 -0.00000000 -0.00000000 -0.00028949  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  10    1  |0 0>           0.00000506  0.00028837  0.00000000 -0.00000000 -0.00000000 -0.11567365  0.00000000  0.00431131
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  11    1  |0 0>           0.00028994 -0.00000497  0.00000000  0.00000000 -0.00000000  0.00430224  0.00000000  0.11591863
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  12    1  |0 0>           0.00000004 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000002 -0.00000000  0.00000241
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   1    1  |1 1>+         -0.00000000 -0.00000000  0.04236003 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   2    1  |1 1>+          0.07414435 -0.04090148  0.00000000  0.00000000 -0.00000000 -0.00042992  0.00000000 -0.00074494
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   3    1  |1 1>+         -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.04236309 -0.00000000 -0.00043471  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000006 -0.00000000  0.00000000  0.00000000

   4    1  |1 1>+         -0.00000000  0.00000000  0.00000000  0.04235428 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   5    1  |1 1>+          0.00000000 -0.00000000 -0.00000000 -0.07336313  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   6    1  |1 1>+         -0.00000000 -0.00000000  0.00281767 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   7    1  |1 1>+          0.00057952 -0.00324926 -0.00000000  0.00000000  0.00000000  0.55982449 -0.00000000  0.08834907
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   8    1  |1 1>+          0.00000000  0.00000000  0.00000000  0.00000000  0.00354943 -0.00000000 -0.61086664  0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000002  0.00000000

   9    1  |1 1>+         -0.00000000  0.00000000  0.00000000  0.00281711 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  10    1  |1 1>+          0.00000000  0.00000000  0.00000000  0.00000000  0.00030419 -0.00000000 -0.05215267  0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  11    1  |1 1>+         -0.00302773 -0.00152020 -0.00000000 -0.00000000  0.00000000  0.24964969 -0.00000000 -0.52348288
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  12    1  |1 1>+         -0.00000000 -0.00000000  0.00218226 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  13    1  |1 1>+         -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00342752 -0.00000000 -0.01094802  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  14    1  |1 1>+         -0.00190626 -0.00346005 -0.00000000  0.00000000  0.00000000 -0.01098147  0.00000000  0.00636816
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  15    1  |1 1>+          0.00000000  0.00000000 -0.00342852  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  16    1  |1 1>+         -0.00000000 -0.00000000 -0.00000000  0.00000005 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   1    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00166437 -0.08466115 -0.00000000  0.00000000  0.00000000 -0.00085941  0.00000000  0.00000015

   2    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.04236216 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   3    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.04236213  0.00000000 -0.00000000 -0.00000000 -0.00000000

   4    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000012 -0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000  0.08471681  0.00000000  0.00085744 -0.00000000

   5    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000095 -0.00000000  0.00000001  0.00000000

   6    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00005536  0.00281564  0.00000000 -0.00000000 -0.00000000 -0.48457542  0.00000000  0.00008428

   7    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00059442  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   8    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00059434 -0.00000000 -0.00000000  0.00000000 -0.00000000

   9    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000002  0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00281329  0.00000000  0.48435274 -0.00000000

  10    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00351348 -0.00000000 -0.00000000  0.00000000 -0.00000000

  11    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00351345 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  12    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00379752  0.00007465  0.00000000  0.00000000 -0.00000000  0.00011305  0.00000000  0.65011155

  13    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00342765 -0.00000000  0.00000000 -0.00000000  0.00000000

  14    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00342765  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  15    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00394560  0.00007757  0.00000000  0.00000000 -0.00000000 -0.00000223 -0.00000000 -0.01272351

  16    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   1    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.04236001  0.00000000 -0.00000000  0.00000000 -0.00000000

   2    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000006 -0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000  0.04236309  0.00000000  0.00043471 -0.00000000

   3    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.07247952 -0.04378397 -0.00000000 -0.00000000  0.00000000 -0.00042966  0.00000000  0.00074508

   4    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.04235265 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   5    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.07336412 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   6    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00281768  0.00000000  0.00000000 -0.00000000  0.00000000

   7    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000002  0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00354943  0.00000000  0.61086763 -0.00000000

   8    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00045130 -0.00326955 -0.00000000  0.00000000  0.00000000  0.55979983 -0.00000000 -0.08853179

   9    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00281711 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  10    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00308515  0.00139996 -0.00000000 -0.00000000  0.00000000 -0.24981896  0.00000000 -0.52339814

  11    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00030412 -0.00000000 -0.05213885  0.00000000

  12    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00218228 -0.00000000 -0.00000000  0.00000000 -0.00000000

  13    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00204078 -0.00338246 -0.00000000  0.00000000  0.00000000 -0.01098363  0.00000000 -0.00636434

  14    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00342752  0.00000000  0.01094799 -0.00000000

  15    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00342852  0.00000000 -0.00000000  0.00000000 -0.00000000

  16    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000005 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 State Sym Spin     / Nr.     25          26          27          28          29          30          31          32

   1    1  |0 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   2    1  |0 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000008  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   3    1  |0 0>           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000129 -0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   4    1  |0 0>          -0.00561333 -0.00000000 -0.00000188  0.00000000  0.00000000  0.00000000 -0.00000164  0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   5    1  |0 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000071
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   6    1  |0 0>           0.00000000 -0.00561331  0.00000000  0.00000188 -0.00000000 -0.00000162 -0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   7    1  |0 0>          -0.00000009  0.11568042 -0.00000000 -0.00003487 -0.00000000  0.00009755  0.00000000 -0.00000000
                          -0.00000001 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   8    1  |0 0>           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000991
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   9    1  |0 0>          -0.11568050 -0.00000009 -0.00003491  0.00000000  0.00000000  0.00000000 -0.00009762 -0.00000000
                           0.00000002  0.00000001  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  10    1  |0 0>          -0.00000000  0.00000000  0.00000000  0.00000000  0.00001890  0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  11    1  |0 0>           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000071 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  12    1  |0 0>           0.00000000  0.00000000  0.00000000  0.00000000  0.00000001  0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   1    1  |1 1>+          0.00000000 -0.00043109  0.00000000  0.00042798 -0.00000000  0.00029020  0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   2    1  |1 1>+         -0.00000000 -0.00000000  0.00000000  0.00000000  0.00041455  0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   3    1  |1 1>+         -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00041106
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   4    1  |1 1>+         -0.00043162 -0.00000000  0.00051349 -0.00000000 -0.00000000  0.00000000 -0.00005183  0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   5    1  |1 1>+          0.00074614  0.00000000  0.00015325 -0.00000000 -0.00000000 -0.00000000  0.00042641  0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   6    1  |1 1>+         -0.00000037  0.48498538  0.00000002  0.48798458 -0.00000000 -0.30834352 -0.00000018  0.00000000
                          -0.00000002 -0.00000001  0.00000000 -0.00000000  0.00000000  0.00000003 -0.00000001  0.00000000

   7    1  |1 1>+          0.00000000  0.00000000  0.00000000  0.00000000  0.42450565 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   8    1  |1 1>+          0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.27240204
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000036

   9    1  |1 1>+          0.48473357  0.00000037  0.17666540 -0.00000001 -0.00000000  0.00000032 -0.54936674 -0.00000000
                          -0.00000009 -0.00000002 -0.00000000  0.00000000 -0.00000000 -0.00000001  0.00000000  0.00000000

  10    1  |1 1>+          0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.50931170
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000068

  11    1  |1 1>+         -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.39094819  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  12    1  |1 1>+         -0.00000029  0.37510036 -0.00000001 -0.24125924  0.00000000  0.66470051  0.00000038 -0.00000000
                          -0.00000002 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000007  0.00000002 -0.00000000

  13    1  |1 1>+          0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000780
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  14    1  |1 1>+          0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000528 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  15    1  |1 1>+         -0.00000001  0.01094311 -0.00000000 -0.00000302  0.00000000  0.00000261  0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  16    1  |1 1>+          0.00000025  0.00000000 -0.00000168  0.00000000 -0.00000000  0.00000000 -0.00000098  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   1    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00041355 -0.00000000  0.00000000 -0.00000000

   2    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00043581 -0.00000000 -0.00017783  0.00000000  0.00048914  0.00000000 -0.00000000

   3    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00043582  0.00000000 -0.00017775  0.00000000  0.00000000  0.00000000 -0.00048917 -0.00000000

   4    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00041349

   5    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000044

   6    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.57784786 -0.00000000 -0.00000000  0.00000000

   7    1  |1 0>          -0.00000000 -0.00000000 -0.00000001  0.00000001 -0.00000000  0.00000002 -0.00000001  0.00000000
                           0.00000008 -0.10205060  0.00000003  0.81916760 -0.00000000  0.24627308  0.00000014  0.00000000

   8    1  |1 0>           0.00000002  0.00000000  0.00000001 -0.00000001  0.00000000  0.00000001 -0.00000000 -0.00000000
                           0.10203642  0.00000008  0.81921129 -0.00000003 -0.00000000  0.00000014 -0.24613876  0.00000000

   9    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000077
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.57778370

  10    1  |1 0>           0.00000011  0.00000003 -0.00000000  0.00000000  0.00000000 -0.00000001  0.00000000  0.00000000
                           0.60419926  0.00000047 -0.03813831  0.00000000  0.00000000 -0.00000018  0.31717734  0.00000000

  11    1  |1 0>           0.00000003  0.00000001 -0.00000000  0.00000000  0.00000000  0.00000003 -0.00000001  0.00000000
                          -0.00000047  0.60419682  0.00000000  0.03810253  0.00000000  0.31718970  0.00000018 -0.00000000

  12    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000012 -0.00000000 -0.00000000  0.00000000

  13    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.01093908 -0.00000001 -0.00000536  0.00000000 -0.00000000  0.00000000 -0.00000167  0.00000000

  14    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000001  0.01093906 -0.00000000 -0.00000538  0.00000000  0.00000167  0.00000000 -0.00000000

  15    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  16    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000001

   1    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00043109  0.00000000  0.00042803 -0.00000000 -0.00000000  0.00000000 -0.00029013 -0.00000000

   2    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00041157

   3    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00041455  0.00000000 -0.00000000  0.00000000

   4    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00043160 -0.00000000 -0.00051349  0.00000000 -0.00005191 -0.00000000 -0.00000000

   5    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00074615  0.00000000  0.00015331 -0.00000000 -0.00042638 -0.00000000  0.00000000

   6    1  |1 1>-         -0.00000009 -0.00000002  0.00000000 -0.00000000  0.00000000 -0.00000001  0.00000000  0.00000000
                          -0.48498541 -0.00000037  0.48793092 -0.00000002 -0.00000000 -0.00000018  0.30842800  0.00000000

   7    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000036
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.27257938

   8    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.42449697 -0.00000000 -0.00000000  0.00000000

   9    1  |1 1>-          0.00000002  0.00000001  0.00000000 -0.00000000  0.00000000 -0.00000005  0.00000001 -0.00000000
                          -0.00000037  0.48473372 -0.00000001 -0.17657056  0.00000000 -0.54939717 -0.00000032 -0.00000000

  10    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.39095796 -0.00000000 -0.00000000  0.00000000

  11    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000068
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.50819748

  12    1  |1 1>-          0.00000007  0.00000002  0.00000000 -0.00000000  0.00000000 -0.00000002  0.00000000  0.00000000
                           0.37510040  0.00000029  0.24114433 -0.00000001 -0.00000000 -0.00000038  0.66474212  0.00000000

  13    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000528 -0.00000000 -0.00000000  0.00000000

  14    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000781

  15    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.01094311  0.00000001  0.00000303 -0.00000000  0.00000000 -0.00000000  0.00000262 -0.00000000

  16    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000025 -0.00000000 -0.00000168  0.00000000  0.00000098  0.00000000 -0.00000000

 State Sym Spin     / Nr.     33          34          35          36          37          38          39          40

   1    1  |0 0>           0.00000000  0.00000087  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   2    1  |0 0>          -0.00000000  0.00000188  0.00000000 -0.00000000 -0.00000000 -0.00000061 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   3    1  |0 0>          -0.00000000  0.00000012  0.00000000  0.00000000 -0.00000000  0.00001056 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   4    1  |0 0>           0.00000000 -0.00000000 -0.00000000  0.00000003  0.00000000 -0.00000000 -0.00000000 -0.00000051
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   5    1  |0 0>          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000243 -0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   6    1  |0 0>           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000003 -0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   7    1  |0 0>           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00003813  0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   8    1  |0 0>           0.00000002 -0.00000000 -0.00000008 -0.00000000  0.00000000 -0.00000000 -0.00003259 -0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   9    1  |0 0>          -0.00000000 -0.00000000  0.00000000 -0.00003817 -0.00000000  0.00000000 -0.00000000 -0.00002569
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  10    1  |0 0>           0.00000000 -0.00000055 -0.00000000  0.00000000  0.00000000 -0.00016570 -0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  11    1  |0 0>           0.00000000 -0.00001370  0.00000000 -0.00000000 -0.00000000  0.00000621  0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  12    1  |0 0>          -0.00000000 -0.00000877 -0.00000000  0.00000000  0.00000000  0.00000003  0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   1    1  |1 1>+          0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000217 -0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   2    1  |1 1>+          0.00000000 -0.00000269 -0.00000000  0.00000000  0.00000000  0.00000241  0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   3    1  |1 1>+          0.00031851  0.00000000 -0.00000261  0.00000000 -0.00000000 -0.00000000 -0.00000130 -0.00000000
                          -0.00000001 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   4    1  |1 1>+          0.00000000  0.00000000  0.00000000 -0.00000235 -0.00000000 -0.00000000  0.00000000 -0.00000399
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   5    1  |1 1>+         -0.00000000  0.00000000 -0.00000000  0.00000071  0.00000000 -0.00000000  0.00000000 -0.00000342
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   6    1  |1 1>+         -0.00000000 -0.00000000 -0.00000000 -0.00000035  0.62336037  0.00000000  0.00000000 -0.00000006
                           0.00000000  0.00000000  0.00000000 -0.00000001  0.00000001 -0.00000000  0.00000000 -0.00000000

   7    1  |1 1>+          0.00000000  0.70019669  0.00000000 -0.00000000  0.00000000  0.04521483  0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   8    1  |1 1>+         -0.11804048 -0.00000000  0.69732204  0.00000000  0.00000000  0.00000000  0.21745373  0.00000000
                           0.00000313  0.00000000 -0.00003678 -0.00000000  0.00000000  0.00000000  0.00002068  0.00000000

   9    1  |1 1>+          0.00000000  0.00000000 -0.00000000  0.59994494  0.00000034  0.00000000  0.00000000 -0.26236545
                           0.00000000  0.00000000 -0.00000000  0.00000002 -0.00000001  0.00000000 -0.00000000 -0.00000000

  10    1  |1 1>+         -0.69681262 -0.00000000 -0.11759583 -0.00000000 -0.00000000 -0.00000000  0.48833105 -0.00000000
                           0.00001847 -0.00000000  0.00000620 -0.00000000  0.00000000 -0.00000000  0.00004644  0.00000000

  11    1  |1 1>+         -0.00000000  0.09529338  0.00000000 -0.00000000  0.00000000  0.53273018  0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  12    1  |1 1>+          0.00000000 -0.00000000  0.00000000 -0.00000002  0.03083067  0.00000000  0.00000000 -0.00000018
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000001

  13    1  |1 1>+         -0.00000247 -0.00000000  0.00001558 -0.00000000  0.00000000 -0.00000000 -0.00001197  0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  14    1  |1 1>+          0.00000000  0.00001486  0.00000000 -0.00000000 -0.00000000 -0.00000827 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  15    1  |1 1>+         -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000051  0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  16    1  |1 1>+         -0.00000000 -0.00000000  0.00000000  0.00000138  0.00000000 -0.00000000 -0.00000000  0.00000549
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   1    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000303 -0.00000000  0.00000000

   2    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000046  0.00000000  0.00000000  0.00000000

   3    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000046 -0.00000000 -0.00000000  0.00000000 -0.00000293

   4    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000033 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000475  0.00000000

   5    1  |1 0>           0.00000001 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00054930 -0.00000000  0.00000232 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   6    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00021018 -0.00000000 -0.00000000  0.00000000  0.65424336  0.00000000  0.00000000

   7    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000001  0.00000001 -0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000027 -0.48596293  0.00000000  0.00000000 -0.00000005

   8    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000001 -0.00000001  0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.48601244 -0.00000027 -0.00000000 -0.00000000  0.14678149

   9    1  |1 0>          -0.00000001 -0.00000000  0.00000002  0.00000000 -0.00000000  0.00000000 -0.00006224 -0.00000000
                          -0.00046430 -0.00000000  0.00030223 -0.00000000  0.00000000 -0.00000000  0.65446070 -0.00000000

  10    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000001
                          -0.00000000  0.00000000 -0.00000000  0.12008540  0.00000007 -0.00000000  0.00000000  0.71652329

  11    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000002
                           0.00000000  0.00000000 -0.00000000  0.00000007 -0.12032624 -0.00000000 -0.00000000  0.00000022

  12    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.03733853 -0.00000000 -0.00000000 -0.00000000 -0.00011797  0.00000000  0.00000000

  13    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00001638 -0.00000000  0.00000000 -0.00000000 -0.00003208

  14    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00001641 -0.00000000  0.00000000  0.00000000

  15    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000927  0.00000000 -0.00000000 -0.00000000 -0.00000003 -0.00000000  0.00000000

  16    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000370 -0.00000000  0.00000301 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   1    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000217 -0.00000000 -0.00000000 -0.00000000  0.00000347

   2    1  |1 1>-          0.00000001  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00031785  0.00000000 -0.00000261  0.00000000 -0.00000000  0.00000000  0.00000130  0.00000000

   3    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000269  0.00000000 -0.00000000 -0.00000000  0.00000241 -0.00000000  0.00000000

   4    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000235 -0.00000000 -0.00000000 -0.00000000

   5    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000071  0.00000000 -0.00000000  0.00000000

   6    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000002  0.00000001 -0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.62329665  0.00000035  0.00000000  0.00000000  0.19959625

   7    1  |1 1>-         -0.00000312 -0.00000000  0.00003677 -0.00000000 -0.00000000 -0.00000000  0.00002074 -0.00000000
                          -0.11761837 -0.00000000  0.69711849  0.00000000  0.00000000  0.00000000 -0.21810905  0.00000000

   8    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.70016920 -0.00000000  0.00000000 -0.00000000  0.04566231 -0.00000000  0.00000000

   9    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000001  0.00000001 -0.00000000  0.00000000  0.00000001
                          -0.00000000  0.00000000  0.00000000  0.00000034 -0.59986077  0.00000000  0.00000000 -0.00000008

  10    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000  0.09493497  0.00000000 -0.00000000  0.00000000 -0.53294907  0.00000000  0.00000000

  11    1  |1 1>-          0.00001849 -0.00000000  0.00000623  0.00000000 -0.00000000 -0.00000000 -0.00004643 -0.00000000
                           0.69762728 -0.00000000  0.11806312  0.00000000  0.00000000 -0.00000000  0.48821745 -0.00000000

  12    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000001
                          -0.00000000 -0.00000000  0.00000000 -0.03063929 -0.00000002  0.00000000 -0.00000000 -0.59697175

  13    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00001484 -0.00000000  0.00000000  0.00000000 -0.00000827  0.00000000 -0.00000000

  14    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000248 -0.00000000  0.00001563 -0.00000000  0.00000000  0.00000000  0.00001194  0.00000000

  15    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000051  0.00000000  0.00000000  0.00000000 -0.00002505

  16    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000138  0.00000000 -0.00000000 -0.00000000

 State Sym Spin     / Nr.     41          42          43          44          45          46          47          48

   1    1  |0 0>          -0.00000000  0.00000275  0.00000123  0.00000002  0.00000000 -0.00000000 -0.00000000  0.00713049
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   2    1  |0 0>          -0.00000000 -0.00000149  0.00283168 -0.00016202 -0.00000000  0.00000000 -0.00000000  0.00000041
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   3    1  |0 0>           0.00000000 -0.00000008  0.00016207  0.00283084  0.00000000  0.00000000  0.00000000  0.00000001
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   4    1  |0 0>           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00283735 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   5    1  |0 0>           0.00000000  0.00000000  0.00000000 -0.00000000  0.00283679  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000016  0.00000000 -0.00000000  0.00000000

   6    1  |0 0>          -0.00000050  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00283735  0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   7    1  |0 0>           0.00002579 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.88681884  0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   8    1  |0 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.88681266  0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00004989  0.00000000 -0.00000000  0.00000000

   9    1  |0 0>           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.88681889  0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  10    1  |0 0>           0.00000000 -0.00000007  0.03234100  0.88616472  0.00000000  0.00000000  0.00000000 -0.00000826
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  11    1  |0 0>          -0.00000000  0.00000130  0.88606164 -0.03234485 -0.00000000  0.00000000 -0.00000000 -0.00016084
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  12    1  |0 0>          -0.00000000 -0.00002230 -0.00002173 -0.00000039 -0.00000000  0.00000000  0.00000000 -0.14417663
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   1    1  |1 1>+         -0.00000347  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00105100 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   2    1  |1 1>+          0.00000000  0.00000194 -0.00181493  0.00104349  0.00000000 -0.00000000  0.00000000  0.00000079
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   3    1  |1 1>+          0.00000000  0.00000000  0.00000000 -0.00000000  0.00104942  0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000006  0.00000000 -0.00000000  0.00000000

   4    1  |1 1>+          0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00105079  0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   5    1  |1 1>+          0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00181187 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   6    1  |1 1>+         -0.19939657  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.05377593  0.00000000
                          -0.00000001 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   7    1  |1 1>+         -0.00000000 -0.04258128 -0.00987492  0.06220074  0.00000000  0.00000000  0.00000000 -0.00001254
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   8    1  |1 1>+          0.00000000 -0.00000000 -0.00000000  0.00000000 -0.06779918 -0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000381 -0.00000000  0.00000000 -0.00000000

   9    1  |1 1>+          0.00000008  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.05379613  0.00000000  0.00000000
                          -0.00000001  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  10    1  |1 1>+          0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00577838 -0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000033 -0.00000000  0.00000000 -0.00000000

  11    1  |1 1>+          0.00000000  0.46177131  0.05827998  0.02787235  0.00000000  0.00000000 -0.00000000 -0.00003994
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  12    1  |1 1>+         -0.59696183  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.04169992 -0.00000000
                          -0.00000003 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  13    1  |1 1>+         -0.00000000 -0.00000000  0.00000000 -0.00000000  0.31732824  0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00001785  0.00000000 -0.00000000  0.00000000

  14    1  |1 1>+          0.00000000  0.00003338  0.18323617  0.31748575  0.00000000  0.00000000 -0.00000000  0.57128028
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  15    1  |1 1>+         -0.00002503  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.31728583  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  16    1  |1 1>+         -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000068  0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   1    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000108  0.00208944  0.00000000  0.00000000  0.00000000 -0.00000000

   2    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000293 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00104994 -0.00000000

   3    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00104994 -0.00000000 -0.00000000

   4    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000012  0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00208905 -0.00000000 -0.00000000 -0.00000000

   5    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000002  0.00000000  0.00000000 -0.00000000

   6    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00011251  0.00002780 -0.05375807 -0.00000000 -0.00000000 -0.00000000  0.00000012

   7    1  |1 0>           0.00000001  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.14695383  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.01132147  0.00000000

   8    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000005 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.01131989  0.00000000  0.00000000

   9    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000303 -0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.05379923  0.00000000  0.00000000  0.00000000

  10    1  |1 0>          -0.00000002  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000022 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.06713661  0.00000000  0.00000000

  11    1  |1 0>          -0.00000004 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.71648141 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.06713635 -0.00000000

  12    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000  0.75503394 -0.07239885 -0.00003746  0.00000000 -0.00000000  0.00000000 -0.00003818

  13    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.31734407  0.00000000  0.00000000

  14    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00003209 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.31734395  0.00000000

  15    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000  0.00004063 -0.36651160 -0.00018830  0.00000000 -0.00000000  0.00000000  0.57134721

  16    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000002 -0.00000000  0.00000000  0.00000000

   1    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00105100 -0.00000000 -0.00000000

   2    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000006  0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00104942 -0.00000000 -0.00000000 -0.00000000

   3    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000194  0.00181385  0.00104537  0.00000000  0.00000000 -0.00000000 -0.00000079

   4    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000399  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00105075  0.00000000

   5    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000342 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00181189  0.00000000

   6    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000006  0.00000000  0.00000000  0.00000000  0.00000000 -0.05377594 -0.00000000  0.00000000

   7    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000  0.00000381 -0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.06779940  0.00000000  0.00000000 -0.00000000

   8    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000  0.04258623  0.00980915  0.06221165  0.00000000  0.00000000  0.00000000  0.00001227

   9    1  |1 1>-          0.00000001  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.26255768  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.05379608 -0.00000000

  10    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000  0.46158881  0.05830914 -0.02781043 -0.00000000  0.00000000 -0.00000000 -0.00003982

  11    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000032  0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00577685 -0.00000000 -0.00000000 -0.00000000

  12    1  |1 1>-          0.00000001 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000018  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.04170008  0.00000000  0.00000000

  13    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00003340 -0.18356503  0.31729266  0.00000000  0.00000000  0.00000000 -0.57128227

  14    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00001785  0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.31732771 -0.00000000 -0.00000000  0.00000000

  15    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.31728555 -0.00000000 -0.00000000

  16    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000549 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000070  0.00000000

 State Sym Spin     / Nr.     49          50          51          52          53          54          55          56

   1    1  |0 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000019
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   2    1  |0 0>           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00024385 -0.00419767
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   3    1  |0 0>           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00420372 -0.00024351
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   4    1  |0 0>           0.00000000  0.00000015  0.00000000  0.00000000  0.00421903 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   5    1  |0 0>          -0.00000000 -0.00000000 -0.00000000 -0.00421849  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000083  0.00000000 -0.00000000 -0.00000000  0.00000000

   6    1  |0 0>          -0.00000000  0.00000000 -0.00000015 -0.00000000  0.00000000  0.00421904  0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   7    1  |0 0>           0.00000000  0.00000000 -0.00005701  0.00000000 -0.00000002 -0.44739652 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000003 -0.00000000  0.00000000

   8    1  |0 0>          -0.00000038  0.00000000  0.00000000  0.44741721 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00008769 -0.00000000  0.00000000  0.00000000 -0.00000000

   9    1  |0 0>           0.00000000 -0.00005732 -0.00000000  0.00000000  0.44739641 -0.00000002 -0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  10    1  |0 0>           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.44719399  0.01667402
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  11    1  |0 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.01666888  0.44733474
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  12    1  |0 0>           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000010 -0.00001616
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   1    1  |1 1>+         -0.00000000  0.00000000 -0.00033292 -0.00000000  0.00000000  0.00017521  0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   2    1  |1 1>+         -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00017311 -0.00030176
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   3    1  |1 1>+         -0.00033213  0.00000000  0.00000000  0.00017540 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000001  0.00000000 -0.00000000  0.00000003 -0.00000000  0.00000000  0.00000000 -0.00000000

   4    1  |1 1>+          0.00000000  0.00033221  0.00000000  0.00000000  0.00017587 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   5    1  |1 1>+          0.00000000  0.00018658  0.00000000 -0.00000000 -0.00030277  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   6    1  |1 1>+         -0.00000000 -0.00000000  0.00002014 -0.00000000  0.00000000  0.01863849  0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   7    1  |1 1>+          0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.02154088 -0.00339711
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   8    1  |1 1>+         -0.00001587  0.00000000 -0.00000000 -0.02349422  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000460  0.00000000 -0.00000000 -0.00000000  0.00000000

   9    1  |1 1>+          0.00000000 -0.00000769 -0.00000000  0.00000000  0.01863337 -0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  10    1  |1 1>+          0.00000041  0.00000000 -0.00000000 -0.00200313  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000039  0.00000000 -0.00000000 -0.00000000  0.00000000

  11    1  |1 1>+          0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00963842  0.02018194
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  12    1  |1 1>+         -0.00000000 -0.00000000  0.00002822 -0.00000000  0.00000000  0.01445912  0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  13    1  |1 1>+          0.70467628 -0.00000000 -0.00000000 -0.63179934  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00001272 -0.00000000  0.00000000 -0.00012383  0.00000000 -0.00000000 -0.00000000  0.00000000

  14    1  |1 1>+          0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.63167502 -0.36486968
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  15    1  |1 1>+         -0.00000000  0.00000017 -0.70465912 -0.00000000  0.00000003  0.63183767  0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000001  0.00000004  0.00000000 -0.00000000

  16    1  |1 1>+         -0.00000000 -0.08284535 -0.00000002 -0.00000000 -0.00003141  0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   1    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00034454  0.00000009

   2    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00033282 -0.00000000  0.00000000  0.00017501  0.00000000 -0.00000000

   3    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00033282  0.00000000 -0.00000000 -0.00017501  0.00000000  0.00000000 -0.00000000

   4    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000007 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00034574  0.00000000 -0.00000000 -0.00000000 -0.00000000

   5    1  |1 0>          -0.00000001  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00038712 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   6    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.01860222 -0.00000476

   7    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000098  0.00000000 -0.00000000 -0.00392309 -0.00000000  0.00000000

   8    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000097  0.00000000  0.00000000  0.00392254 -0.00000000 -0.00000000  0.00000000

   9    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000365  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000001  0.00000000 -0.00000000  0.01862386 -0.00000000  0.00000000  0.00000000  0.00000000

  10    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00002467  0.00000000  0.00000000  0.02326781 -0.00000000 -0.00000000  0.00000000

  11    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00002468 -0.00000000  0.00000000  0.02326772  0.00000000 -0.00000000

  12    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000641 -0.02506987

  13    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000001  0.00000000 -0.00000000
                           0.00000000  0.70469269  0.00000017 -0.00000000 -0.63177451  0.00000003  0.00000000 -0.00000000

  14    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000001 -0.00000004 -0.00000000  0.00000000
                           0.00000000 -0.00000017  0.70469270 -0.00000000  0.00000003  0.63177456  0.00000000 -0.00000000

  15    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00018643  0.72945550

  16    1  |1 0>          -0.00000150  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.08283808 -0.00000000 -0.00000000  0.00000006 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   1    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00033292 -0.00000000 -0.00000000 -0.00017521  0.00000000  0.00000000 -0.00000000

   2    1  |1 1>-          0.00000001 -0.00000000  0.00000000  0.00000003 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00033213  0.00000000  0.00000000 -0.00017540  0.00000000 -0.00000000 -0.00000000 -0.00000000

   3    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00017295  0.00030185

   4    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00033221 -0.00000000  0.00000000  0.00017586  0.00000000 -0.00000000

   5    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00018657 -0.00000000  0.00000000  0.00030278  0.00000000 -0.00000000

   6    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00002014  0.00000000 -0.00000000 -0.01863847  0.00000000  0.00000000 -0.00000000

   7    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000460  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00001590  0.00000000  0.00000000  0.02349426 -0.00000000  0.00000000  0.00000000  0.00000000

   8    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.02153936  0.00340765

   9    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000768 -0.00000000  0.00000000  0.01863334  0.00000000 -0.00000000

  10    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00964820  0.02017711

  11    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000039 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000039  0.00000000 -0.00000000 -0.00200261  0.00000000 -0.00000000 -0.00000000 -0.00000000

  12    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00002824 -0.00000000  0.00000000  0.01445917 -0.00000000 -0.00000000  0.00000000

  13    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.63186109  0.36454692

  14    1  |1 1>-         -0.00001272  0.00000000 -0.00000000 -0.00012383  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.70467639 -0.00000000 -0.00000000  0.63179948 -0.00000000  0.00000000  0.00000000  0.00000000

  15    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000001 -0.00000000  0.00000000
                           0.00000000  0.70465913  0.00000017  0.00000000  0.63183779 -0.00000003 -0.00000000  0.00000000

  16    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000002 -0.08284537 -0.00000000  0.00000000  0.00003133  0.00000000  0.00000000

 State Sym Spin     / Nr.     57          58          59          60

   1    1  |0 0>           0.00000000  0.00000000 -0.00000000  0.00097452
                           0.00000000 -0.00000000  0.00000000 -0.00000000

   2    1  |0 0>          -0.00000000  0.00000000  0.00000000  0.00000005
                          -0.00000000  0.00000000  0.00000000 -0.00000000

   3    1  |0 0>           0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000

   4    1  |0 0>          -0.00000000  0.00000010 -0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000

   5    1  |0 0>           0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000

   6    1  |0 0>           0.00000000 -0.00000000 -0.00000009 -0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000

   7    1  |0 0>          -0.00000000  0.00000000  0.00000873  0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000

   8    1  |0 0>          -0.00000001  0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000

   9    1  |0 0>           0.00000000  0.00000876 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000

  10    1  |0 0>          -0.00000000 -0.00000000  0.00000000  0.00000008
                           0.00000000 -0.00000000 -0.00000000  0.00000000

  11    1  |0 0>           0.00000000 -0.00000000 -0.00000000  0.00000304
                           0.00000000  0.00000000  0.00000000 -0.00000000

  12    1  |0 0>          -0.00000000 -0.00000000 -0.00000000  0.98955197
                           0.00000000 -0.00000000 -0.00000000 -0.00000000

   1    1  |1 1>+          0.00000000 -0.00000000 -0.00002640  0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000

   2    1  |1 1>+          0.00000000 -0.00000000 -0.00000000 -0.00000008
                           0.00000000 -0.00000000 -0.00000000  0.00000000

   3    1  |1 1>+          0.00002635  0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000

   4    1  |1 1>+         -0.00000000  0.00002635 -0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000

   5    1  |1 1>+         -0.00000000  0.00001479 -0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000

   6    1  |1 1>+         -0.00000000  0.00000000  0.00000041 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000

   7    1  |1 1>+          0.00000000 -0.00000000  0.00000000  0.00000293
                           0.00000000 -0.00000000 -0.00000000 -0.00000000

   8    1  |1 1>+         -0.00000035 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000

   9    1  |1 1>+          0.00000000  0.00000016 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000

  10    1  |1 1>+          0.00000291  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000

  11    1  |1 1>+          0.00000000 -0.00000000 -0.00000000  0.00000831
                           0.00000000  0.00000000  0.00000000 -0.00000000

  12    1  |1 1>+         -0.00000000 -0.00000000 -0.00000238 -0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000

  13    1  |1 1>+         -0.05857533 -0.00000000 -0.00000000 -0.00000000
                          -0.00000065 -0.00000000 -0.00000000  0.00000000

  14    1  |1 1>+         -0.00000000  0.00000000 -0.00000000  0.08323341
                          -0.00000000 -0.00000000 -0.00000000  0.00000000

  15    1  |1 1>+          0.00000000 -0.00000009 -0.05859920 -0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000

  16    1  |1 1>+         -0.00000000  0.99656242 -0.00000158  0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000

   1    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000001

   2    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00002636  0.00000000

   3    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00002636 -0.00000000  0.00000000

   4    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000

   5    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00003069 -0.00000000 -0.00000000  0.00000000

   6    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000001

   7    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000117 -0.00000000

   8    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000117 -0.00000000 -0.00000000

   9    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000

  10    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000128  0.00000000 -0.00000000

  11    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000128 -0.00000000

  12    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000754

  13    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000  0.05856177 -0.00000009  0.00000000

  14    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000009  0.05856182 -0.00000000

  15    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.08324882

  16    1  |1 0>          -0.00001098 -0.00000000 -0.00000000 -0.00000000
                           0.99656302  0.00000000  0.00000001  0.00000000

   1    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00002640  0.00000000 -0.00000000

   2    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00002635  0.00000000  0.00000000 -0.00000000

   3    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000007

   4    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00002635 -0.00000000

   5    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00001479 -0.00000000

   6    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000041 -0.00000000 -0.00000000

   7    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000035 -0.00000000  0.00000000  0.00000000

   8    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000297

   9    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000016  0.00000000

  10    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000833

  11    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000291  0.00000000 -0.00000000  0.00000000

  12    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000238 -0.00000000 -0.00000000

  13    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.08323333

  14    1  |1 1>-          0.00000065  0.00000000  0.00000000  0.00000000
                          -0.05857540 -0.00000000 -0.00000000  0.00000000

  15    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.05859923 -0.00000009 -0.00000000

  16    1  |1 1>-         -0.00000000  0.00000000  0.00000005 -0.00000000
                          -0.00000001  0.00000158  0.99656241  0.00000000


  No SO block in symmetry 2


 Summary of SO results
 =====================

 Eigenvalues of the spin-orbit matrix
 ....................................

     Nr  Sym         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
                   (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1   1    -25.35580168     -0.00000593       -1.30      0.00000000        0.00      0.0000
     2   1    -25.30902802      0.04676774    10264.33      0.04677367    10265.63      1.2728
     3   1    -25.30902802      0.04676774    10264.33      0.04677367    10265.63      1.2728
     4   1    -25.30902788      0.04676787    10264.36      0.04677380    10265.66      1.2728
     5   1    -25.30827626      0.04751949    10429.32      0.04752542    10430.62      1.2932
     6   1    -25.30827608      0.04751967    10429.36      0.04752560    10430.66      1.2932
     7   1    -25.30827578      0.04751998    10429.43      0.04752591    10430.73      1.2932
     8   1    -25.30827564      0.04752011    10429.46      0.04752604    10430.76      1.2932
     9   1    -25.30827564      0.04752011    10429.46      0.04752604    10430.76      1.2932
    10   1    -25.30686380      0.04893195    10739.32      0.04893788    10740.62      1.3317
    11   1    -25.30686376      0.04893199    10739.33      0.04893792    10740.63      1.3317
    12   1    -25.30686376      0.04893199    10739.33      0.04893792    10740.63      1.3317
    13   1    -25.30686366      0.04893209    10739.35      0.04893802    10740.65      1.3317
    14   1    -25.30686354      0.04893221    10739.38      0.04893814    10740.68      1.3317
    15   1    -25.30686354      0.04893221    10739.38      0.04893814    10740.68      1.3317
    16   1    -25.30686347      0.04893229    10739.40      0.04893822    10740.70      1.3317
    17   1    -25.29776165      0.05803410    12737.01      0.05804003    12738.31      1.5793
    18   1    -25.29776157      0.05803418    12737.03      0.05804011    12738.33      1.5794
    19   1    -25.29776143      0.05803432    12737.06      0.05804025    12738.36      1.5794
    20   1    -25.29776143      0.05803432    12737.06      0.05804025    12738.36      1.5794
    21   1    -25.29776143      0.05803433    12737.06      0.05804026    12738.36      1.5794
    22   1    -25.25032080      0.10547496    23149.08      0.10548089    23150.38      2.8703
    23   1    -25.25032044      0.10547531    23149.15      0.10548124    23150.46      2.8703
    24   1    -25.25031997      0.10547578    23149.26      0.10548171    23150.56      2.8703
    25   1    -25.25031987      0.10547588    23149.28      0.10548181    23150.58      2.8703
    26   1    -25.25031987      0.10547588    23149.28      0.10548181    23150.58      2.8703
    27   1    -25.24901576      0.10678000    23435.50      0.10678593    23436.80      2.9058
    28   1    -25.24901576      0.10678000    23435.50      0.10678593    23436.80      2.9058
    29   1    -25.24901543      0.10678032    23435.57      0.10678626    23436.87      2.9058
    30   1    -25.24901476      0.10678100    23435.72      0.10678693    23437.02      2.9058
    31   1    -25.24901476      0.10678100    23435.72      0.10678693    23437.02      2.9058
    32   1    -25.24901455      0.10678120    23435.76      0.10678713    23437.07      2.9058
    33   1    -25.24901439      0.10678136    23435.80      0.10678729    23437.10      2.9058
    34   1    -25.24743733      0.10835843    23781.93      0.10836436    23783.23      2.9487
    35   1    -25.24743732      0.10835843    23781.93      0.10836436    23783.23      2.9487
    36   1    -25.24743705      0.10835871    23781.99      0.10836464    23783.29      2.9488
    37   1    -25.24743705      0.10835871    23781.99      0.10836464    23783.29      2.9488
    38   1    -25.24743649      0.10835926    23782.11      0.10836519    23783.41      2.9488
    39   1    -25.24743624      0.10835951    23782.16      0.10836544    23783.47      2.9488
    40   1    -25.24743587      0.10835988    23782.25      0.10836581    23783.55      2.9488
    41   1    -25.24743587      0.10835988    23782.25      0.10836582    23783.55      2.9488
    42   1    -25.24743570      0.10836005    23782.28      0.10836598    23783.58      2.9488
    43   1    -25.24172791      0.11406784    25035.00      0.11407377    25036.30      3.1041
    44   1    -25.24172765      0.11406810    25035.05      0.11407403    25036.36      3.1041
    45   1    -25.24172743      0.11406832    25035.10      0.11407425    25036.40      3.1041
    46   1    -25.24172729      0.11406847    25035.13      0.11407440    25036.44      3.1041
    47   1    -25.24172728      0.11406847    25035.14      0.11407440    25036.44      3.1041
    48   1    -25.24144395      0.11435180    25097.32      0.11435773    25098.62      3.1118
    49   1    -25.24044263      0.11535312    25317.08      0.11535905    25318.39      3.1391
    50   1    -25.24044254      0.11535321    25317.10      0.11535914    25318.41      3.1391
    51   1    -25.24044254      0.11535321    25317.10      0.11535914    25318.41      3.1391
    52   1    -25.23789816      0.11789759    25875.53      0.11790352    25876.83      3.2083
    53   1    -25.23789807      0.11789769    25875.55      0.11790362    25876.85      3.2083
    54   1    -25.23789807      0.11789769    25875.55      0.11790362    25876.85      3.2083
    55   1    -25.23789771      0.11789804    25875.63      0.11790397    25876.93      3.2083
    56   1    -25.23789671      0.11789904    25875.85      0.11790497    25877.15      3.2084
    57   1    -25.23711977      0.11867598    26046.37      0.11868191    26047.67      3.2295
    58   1    -25.23711977      0.11867598    26046.37      0.11868191    26047.67      3.2295
    59   1    -25.23711977      0.11867598    26046.37      0.11868191    26047.67      3.2295
    60   1    -25.23388806      0.12190769    26755.65      0.12191362    26756.95      3.3174

 E0 =    -25.35579575 is the energy of the lowest zeroth-order state
 E1 =    -25.35580168 is the energy of the lowest SO-state


 Spin-orbit eigenvectors   (columnwise and corresponding to the eigenvalues in ascending order)
 .......................

        Basis states           Eigenvectors (columnwise)

   Total
 Nr Sym  State Sym Spin / Nr.        1           2           3           4           5           6           7           8

  1  1     1    1  |0 0>        0.99997410 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000036  0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  2  1     2    1  |0 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00606913  0.10351896 -0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  3  1     3    1  |0 0>       -0.00000000 -0.00000000  0.00000000  0.00000000  0.10353841  0.00606801 -0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  4  1     4    1  |0 0>       -0.00000000 -0.00000000  0.00000898  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000010
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  5  1     5    1  |0 0>        0.00000000  0.00000000  0.00000000  0.00000001 -0.00000000 -0.00000000 -0.10375818 -0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000082 -0.00000000

  6  1     6    1  |0 0>       -0.00000000 -0.00000897 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.10375224
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  7  1     7    1  |0 0>        0.00000000  0.00000311  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00257534
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  8  1     8    1  |0 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00256882  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000002  0.00000000

  9  1     9    1  |0 0>        0.00000000 -0.00000000  0.00000311  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 10  1    10    1  |0 0>        0.00000000 -0.00000000  0.00000000  0.00000000 -0.00256207 -0.00009736  0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 11  1    11    1  |0 0>        0.00000000  0.00000000 -0.00000000 -0.00000000  0.00009706 -0.00257034  0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 12  1    12    1  |0 0>        0.00006372  0.00000000  0.00000000 -0.00000000  0.00000001 -0.00000020  0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 13  1     1    1  |1 1>+       0.00000000  0.54785007  0.00000016  0.00000000 -0.00000000  0.00000000 -0.00000000  0.40611453
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000001

 14  1     2    1  |1 1>+       0.00000025 -0.00000000  0.00000000 -0.00000000  0.40662254 -0.70294179  0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 15  1     3    1  |1 1>+       0.00000000  0.00000000 -0.00000000 -0.54780866 -0.00000000 -0.00000000 -0.40613731 -0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000169 -0.00000000  0.00000000 -0.00000320 -0.00000000

 16  1     4    1  |1 1>+       0.00000000  0.00000016 -0.54764618  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000037
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000001

 17  1     5    1  |1 1>+      -0.00000000  0.00000009 -0.31608816  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000065
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000001

 18  1     6    1  |1 1>+       0.00000000 -0.00000450 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00007301
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 19  1     7    1  |1 1>+      -0.00000037  0.00000000  0.00000000  0.00000000  0.00008280 -0.00001582  0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 20  1     8    1  |1 1>+       0.00000000 -0.00000000  0.00000000 -0.00000315 -0.00000000 -0.00000000  0.00009234  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 21  1     9    1  |1 1>+       0.00000000 -0.00000000  0.00000394  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 22  1    10    1  |1 1>+       0.00000000 -0.00000000  0.00000000 -0.00000038  0.00000000  0.00000000  0.00000457  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 23  1    11    1  |1 1>+      -0.00000129  0.00000000 -0.00000000 -0.00000000  0.00003415  0.00007765 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 24  1    12    1  |1 1>+      -0.00000000 -0.00000269 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00006084
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 25  1    13    1  |1 1>+      -0.00000000  0.00000000 -0.00000000 -0.00043174  0.00000000  0.00000000  0.00091647  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000001  0.00000000

 26  1    14    1  |1 1>+      -0.00415489 -0.00000000  0.00000000  0.00000000 -0.00091612 -0.00052934  0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 27  1    15    1  |1 1>+       0.00000000 -0.00042892 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00091340
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 28  1    16    1  |1 1>+      -0.00000000  0.00000000 -0.00000233  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 29  1     1    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.81211757  0.00069974 -0.00000000  0.00000000

 30  1     2    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000001
                               -0.00000000 -0.54775170 -0.00000016 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.40625573

 31  1     3    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000001
                               -0.00000000  0.00000016 -0.54775159  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000037

 32  1     4    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000640 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000718  0.00000000  0.00000000  0.81199199  0.00000000

 33  1     5    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000195  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.63230593  0.00000000  0.00000000  0.00000926  0.00000000

 34  1     6    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00007634 -0.00000007  0.00000000 -0.00000000

 35  1     7    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000185 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00001502

 36  1     8    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000184 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 37  1     9    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00007600 -0.00000000

 38  1    10    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000410  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 39  1    11    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000410  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00009365

 40  1    12    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000151 -0.00000000 -0.00000000 -0.00000000  0.00000008 -0.00009290  0.00000000 -0.00000000

 41  1    13    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00043021 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 42  1    14    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00043021  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00091872

 43  1    15    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00415492  0.00000000  0.00000000 -0.00000000 -0.00000091  0.00105808 -0.00000000 -0.00000000

 44  1    16    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000231 -0.00000000  0.00000000  0.00000000  0.00000000

 45  1     1    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000001
                               -0.00000000 -0.00000016  0.54785013 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000037

 46  1     2    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000169 -0.00000000  0.00000000 -0.00000320 -0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.54780884  0.00000000  0.00000000  0.40613722  0.00000000

 47  1     3    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000025 -0.00000000  0.00000000  0.00000000  0.40541071  0.70364127 -0.00000000  0.00000000

 48  1     4    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000001
                                0.00000000  0.54765320  0.00000016  0.00000000 -0.00000000  0.00000000 -0.00000000  0.40591465

 49  1     5    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000001
                                0.00000000 -0.31607590 -0.00000009 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.70319820

 50  1     6    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000450  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 51  1     7    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000316 -0.00000000 -0.00000000 -0.00009234 -0.00000000

 52  1     8    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000037 -0.00000000 -0.00000000 -0.00000000  0.00008277  0.00001596 -0.00000000  0.00000000

 53  1     9    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000394 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00007285

 54  1    10    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000129 -0.00000000 -0.00000000  0.00000000 -0.00003428  0.00007759  0.00000000 -0.00000000

 55  1    11    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000038  0.00000000  0.00000000  0.00000457  0.00000000

 56  1    12    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000270 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 57  1    13    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00415489  0.00000000  0.00000000 -0.00000000 -0.00091703  0.00052776  0.00000000 -0.00000000

 58  1    14    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000001  0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00043174 -0.00000000 -0.00000000 -0.00091647 -0.00000000

 59  1    15    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00042892 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 60  1    16    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000233 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.        9          10          11          12          13          14          15          16

  1  1     1    1  |0 0>        0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  2  1     2    1  |0 0>       -0.00000000 -0.00000108  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  3  1     3    1  |0 0>        0.00000000  0.00001898 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  4  1     4    1  |0 0>        0.10375219  0.00000000  0.00000000 -0.00001352 -0.00000000 -0.00000000 -0.00001416  0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  5  1     5    1  |0 0>        0.00000000 -0.00000000  0.00000000  0.00000000  0.00001150 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  6  1     6    1  |0 0>        0.00000010  0.00000000  0.00001352  0.00000000  0.00000000  0.00001416 -0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  7  1     7    1  |0 0>       -0.00000000  0.00000000  0.00000059  0.00000000  0.00000000  0.00000406 -0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  8  1     8    1  |0 0>       -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000670 -0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  9  1     9    1  |0 0>        0.00257535 -0.00000000 -0.00000000  0.00000059  0.00000000  0.00000000  0.00000406 -0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 10  1    10    1  |0 0>       -0.00000000 -0.00000025  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 11  1    11    1  |0 0>        0.00000000  0.00000001  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 12  1    12    1  |0 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 13  1     1    1  |1 1>+      -0.00000037  0.00000000  0.73015451  0.00000191 -0.00000000 -0.00310059  0.00000000  0.00000000
                                0.00000001  0.00000000  0.00000001 -0.00000001 -0.00000000  0.00000000 -0.00000000  0.00000000

 14  1     2    1  |1 1>+       0.00000000  0.57736922 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 15  1     3    1  |1 1>+       0.00000000  0.00000000 -0.00000000 -0.00000000 -0.57701048  0.00000000  0.00000000  0.44746032
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000397  0.00000000 -0.00000000 -0.00000033

 16  1     4    1  |1 1>+      -0.40593034 -0.00000000 -0.00000167  0.63773142 -0.00000000 -0.00000004 -0.35610008 -0.00000000
                               -0.00000001 -0.00000000 -0.00000001  0.00000002 -0.00000000 -0.00000000  0.00000000 -0.00000000

 17  1     5    1  |1 1>+       0.70318918  0.00000000  0.00000042 -0.16064239  0.00000000 -0.00000007 -0.61189947  0.00000000
                                0.00000001  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000001 -0.00000000

 18  1     6    1  |1 1>+      -0.00000000 -0.00000000 -0.00015720 -0.00000000  0.00000000  0.00037921 -0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 19  1     7    1  |1 1>+       0.00000000 -0.00030459  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 20  1     8    1  |1 1>+      -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00019041  0.00000000 -0.00000000  0.00008415
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 21  1     9    1  |1 1>+      -0.00007285  0.00000000  0.00000000 -0.00032312  0.00000000 -0.00000000 -0.00025253  0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 22  1    10    1  |1 1>+      -0.00000000 -0.00000000  0.00000000  0.00000000  0.00036431  0.00000000  0.00000000  0.00049480
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 23  1    11    1  |1 1>+       0.00000000  0.00027994 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 24  1    12    1  |1 1>+      -0.00000000 -0.00000000 -0.00012802 -0.00000000  0.00000000 -0.00048713  0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 25  1    13    1  |1 1>+      -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000011 -0.00000000 -0.00000000 -0.00000207
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 26  1    14    1  |1 1>+      -0.00000000  0.00000056  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 27  1    15    1  |1 1>+      -0.00000000  0.00000000  0.00000085  0.00000000 -0.00000000  0.00000347 -0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 28  1    16    1  |1 1>+      -0.00000000  0.00000000 -0.00000000  0.00000001 -0.00000000  0.00000000  0.00000003 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 29  1     1    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000 -0.57731177  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 30  1     2    1  |1 0>       -0.00000001 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000037  0.00000000  0.18556797  0.00000049 -0.00000000  0.70618172 -0.00000008 -0.00000000

 31  1     3    1  |1 0>       -0.00000001  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000001 -0.00000000
                                0.40625575 -0.00000000 -0.00000049  0.18537903 -0.00000000  0.00000008  0.70623143 -0.00000000

 32  1     4    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000397 -0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.57748296 -0.00000000  0.00000000  0.00034396

 33  1     5    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000057
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00046674  0.00000000  0.00000000  0.77471837

 34  1     6    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00041525  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 35  1     7    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00057818 -0.00000000  0.00000000  0.00018562 -0.00000000 -0.00000000

 36  1     8    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00001502  0.00000000  0.00000000 -0.00057823  0.00000000  0.00000000  0.00018546  0.00000000

 37  1     9    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00041450 -0.00000000  0.00000000  0.00000025

 38  1    10    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00009364 -0.00000000 -0.00000000  0.00015051 -0.00000000  0.00000000  0.00016780 -0.00000000

 39  1    11    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00015057 -0.00000000  0.00000000 -0.00016775  0.00000000  0.00000000

 40  1    12    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 41  1    13    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00091872  0.00000000 -0.00000000  0.00000014  0.00000000 -0.00000000 -0.00000156  0.00000000

 42  1    14    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000013  0.00000000  0.00000000 -0.00000156  0.00000000 -0.00000000

 43  1    15    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 44  1    16    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000003

 45  1     1    1  |1 1>-      -0.00000001  0.00000000  0.00000001 -0.00000002  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.40611446 -0.00000000 -0.00000191  0.73015530 -0.00000000 -0.00000000 -0.00290525 -0.00000000

 46  1     2    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000397  0.00000000 -0.00000000  0.00000033
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.57755659  0.00000000  0.00000000  0.44675507

 47  1     3    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.57736937 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 48  1     4    1  |1 1>-      -0.00000001  0.00000000  0.00000001 -0.00000001  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000037 -0.00000000 -0.63763250 -0.00000167  0.00000000  0.35628445 -0.00000004 -0.00000000

 49  1     5    1  |1 1>-      -0.00000001  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000065 -0.00000000 -0.16082042 -0.00000042  0.00000000 -0.61184855  0.00000007  0.00000000

 50  1     6    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00007301  0.00000000  0.00000000 -0.00015730  0.00000000  0.00000000  0.00037917 -0.00000000

 51  1     7    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00019050  0.00000000  0.00000000  0.00008393

 52  1     8    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00030458  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 53  1     9    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00032319  0.00000000 -0.00000000  0.00025245 -0.00000000 -0.00000000

 54  1    10    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00027995  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 55  1    11    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00036371 -0.00000000 -0.00000000 -0.00049524

 56  1    12    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00006084 -0.00000000 -0.00000000  0.00012789 -0.00000000  0.00000000  0.00048716 -0.00000000

 57  1    13    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000056 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 58  1    14    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000010  0.00000000 -0.00000000 -0.00000207

 59  1    15    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00091340  0.00000000  0.00000000 -0.00000085  0.00000000 -0.00000000 -0.00000347  0.00000000

 60  1    16    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000001  0.00000000  0.00000000  0.00000003 -0.00000000 -0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.       17          18          19          20          21          22          23          24

  1  1     1    1  |0 0>       -0.00000004 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000027
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  2  1     2    1  |0 0>        0.99386083 -0.03781679  0.00000000  0.00000000 -0.00000000 -0.00032522 -0.00000000 -0.00563099
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  3  1     3    1  |0 0>        0.03781694  0.99385887  0.00000000 -0.00000000 -0.00000000  0.00561420 -0.00000000 -0.00032618
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  4  1     4    1  |0 0>       -0.00000000  0.00000000  0.00000000  0.99457434 -0.00000004  0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  5  1     5    1  |0 0>        0.00000000  0.00000000  0.00000001  0.00000004  0.99457374  0.00000000  0.00561010 -0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000138  0.00000000 -0.00000000 -0.00000000

  6  1     6    1  |0 0>       -0.00000000 -0.00000000  0.99457434 -0.00000000 -0.00000001 -0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  7  1     7    1  |0 0>       -0.00000000 -0.00000000  0.00028949 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  8  1     8    1  |0 0>        0.00000000  0.00000000  0.00000000  0.00000000  0.00028863 -0.00000000 -0.11564795  0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  9  1     9    1  |0 0>        0.00000000 -0.00000000 -0.00000000 -0.00028949  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 10  1    10    1  |0 0>        0.00000506  0.00028837  0.00000000 -0.00000000 -0.00000000 -0.11567365  0.00000000  0.00431131
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 11  1    11    1  |0 0>        0.00028994 -0.00000497  0.00000000  0.00000000 -0.00000000  0.00430224  0.00000000  0.11591863
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 12  1    12    1  |0 0>        0.00000004 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000002 -0.00000000  0.00000241
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 13  1     1    1  |1 1>+      -0.00000000 -0.00000000  0.04236003 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 14  1     2    1  |1 1>+       0.07414435 -0.04090148  0.00000000  0.00000000 -0.00000000 -0.00042992  0.00000000 -0.00074494
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 15  1     3    1  |1 1>+      -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.04236309 -0.00000000 -0.00043471  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000006 -0.00000000  0.00000000  0.00000000

 16  1     4    1  |1 1>+      -0.00000000  0.00000000  0.00000000  0.04235428 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 17  1     5    1  |1 1>+       0.00000000 -0.00000000 -0.00000000 -0.07336313  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 18  1     6    1  |1 1>+      -0.00000000 -0.00000000  0.00281767 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 19  1     7    1  |1 1>+       0.00057952 -0.00324926 -0.00000000  0.00000000  0.00000000  0.55982449 -0.00000000  0.08834907
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 20  1     8    1  |1 1>+       0.00000000  0.00000000  0.00000000  0.00000000  0.00354943 -0.00000000 -0.61086664  0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000002  0.00000000

 21  1     9    1  |1 1>+      -0.00000000  0.00000000  0.00000000  0.00281711 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 22  1    10    1  |1 1>+       0.00000000  0.00000000  0.00000000  0.00000000  0.00030419 -0.00000000 -0.05215267  0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 23  1    11    1  |1 1>+      -0.00302773 -0.00152020 -0.00000000 -0.00000000  0.00000000  0.24964969 -0.00000000 -0.52348288
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 24  1    12    1  |1 1>+      -0.00000000 -0.00000000  0.00218226 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 25  1    13    1  |1 1>+      -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00342752 -0.00000000 -0.01094802  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 26  1    14    1  |1 1>+      -0.00190626 -0.00346005 -0.00000000  0.00000000  0.00000000 -0.01098147  0.00000000  0.00636816
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 27  1    15    1  |1 1>+       0.00000000  0.00000000 -0.00342852  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 28  1    16    1  |1 1>+      -0.00000000 -0.00000000 -0.00000000  0.00000005 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 29  1     1    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00166437 -0.08466115 -0.00000000  0.00000000  0.00000000 -0.00085941  0.00000000  0.00000015

 30  1     2    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.04236216 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 31  1     3    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.04236213  0.00000000 -0.00000000 -0.00000000 -0.00000000

 32  1     4    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000012 -0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000  0.08471681  0.00000000  0.00085744 -0.00000000

 33  1     5    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000095 -0.00000000  0.00000001  0.00000000

 34  1     6    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00005536  0.00281564  0.00000000 -0.00000000 -0.00000000 -0.48457542  0.00000000  0.00008428

 35  1     7    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00059442  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 36  1     8    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00059434 -0.00000000 -0.00000000  0.00000000 -0.00000000

 37  1     9    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000002  0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00281329  0.00000000  0.48435274 -0.00000000

 38  1    10    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00351348 -0.00000000 -0.00000000  0.00000000 -0.00000000

 39  1    11    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00351345 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 40  1    12    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00379752  0.00007465  0.00000000  0.00000000 -0.00000000  0.00011305  0.00000000  0.65011155

 41  1    13    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00342765 -0.00000000  0.00000000 -0.00000000  0.00000000

 42  1    14    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00342765  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 43  1    15    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00394560  0.00007757  0.00000000  0.00000000 -0.00000000 -0.00000223 -0.00000000 -0.01272351

 44  1    16    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 45  1     1    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.04236001  0.00000000 -0.00000000  0.00000000 -0.00000000

 46  1     2    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000006 -0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000  0.04236309  0.00000000  0.00043471 -0.00000000

 47  1     3    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.07247952 -0.04378397 -0.00000000 -0.00000000  0.00000000 -0.00042966  0.00000000  0.00074508

 48  1     4    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.04235265 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 49  1     5    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.07336412 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 50  1     6    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00281768  0.00000000  0.00000000 -0.00000000  0.00000000

 51  1     7    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000002  0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00354943  0.00000000  0.61086763 -0.00000000

 52  1     8    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00045130 -0.00326955 -0.00000000  0.00000000  0.00000000  0.55979983 -0.00000000 -0.08853179

 53  1     9    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00281711 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 54  1    10    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00308515  0.00139996 -0.00000000 -0.00000000  0.00000000 -0.24981896  0.00000000 -0.52339814

 55  1    11    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00030412 -0.00000000 -0.05213885  0.00000000

 56  1    12    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00218228 -0.00000000 -0.00000000  0.00000000 -0.00000000

 57  1    13    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00204078 -0.00338246 -0.00000000  0.00000000  0.00000000 -0.01098363  0.00000000 -0.00636434

 58  1    14    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00342752  0.00000000  0.01094799 -0.00000000

 59  1    15    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00342852  0.00000000 -0.00000000  0.00000000 -0.00000000

 60  1    16    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000005 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.       25          26          27          28          29          30          31          32

  1  1     1    1  |0 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  2  1     2    1  |0 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000008  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  3  1     3    1  |0 0>        0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000129 -0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  4  1     4    1  |0 0>       -0.00561333 -0.00000000 -0.00000188  0.00000000  0.00000000  0.00000000 -0.00000164  0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  5  1     5    1  |0 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000071
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  6  1     6    1  |0 0>        0.00000000 -0.00561331  0.00000000  0.00000188 -0.00000000 -0.00000162 -0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  7  1     7    1  |0 0>       -0.00000009  0.11568042 -0.00000000 -0.00003487 -0.00000000  0.00009755  0.00000000 -0.00000000
                               -0.00000001 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  8  1     8    1  |0 0>        0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000991
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  9  1     9    1  |0 0>       -0.11568050 -0.00000009 -0.00003491  0.00000000  0.00000000  0.00000000 -0.00009762 -0.00000000
                                0.00000002  0.00000001  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 10  1    10    1  |0 0>       -0.00000000  0.00000000  0.00000000  0.00000000  0.00001890  0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 11  1    11    1  |0 0>        0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000071 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 12  1    12    1  |0 0>        0.00000000  0.00000000  0.00000000  0.00000000  0.00000001  0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 13  1     1    1  |1 1>+       0.00000000 -0.00043109  0.00000000  0.00042798 -0.00000000  0.00029020  0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 14  1     2    1  |1 1>+      -0.00000000 -0.00000000  0.00000000  0.00000000  0.00041455  0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 15  1     3    1  |1 1>+      -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00041106
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 16  1     4    1  |1 1>+      -0.00043162 -0.00000000  0.00051349 -0.00000000 -0.00000000  0.00000000 -0.00005183  0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 17  1     5    1  |1 1>+       0.00074614  0.00000000  0.00015325 -0.00000000 -0.00000000 -0.00000000  0.00042641  0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 18  1     6    1  |1 1>+      -0.00000037  0.48498538  0.00000002  0.48798458 -0.00000000 -0.30834352 -0.00000018  0.00000000
                               -0.00000002 -0.00000001  0.00000000 -0.00000000  0.00000000  0.00000003 -0.00000001  0.00000000

 19  1     7    1  |1 1>+       0.00000000  0.00000000  0.00000000  0.00000000  0.42450565 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 20  1     8    1  |1 1>+       0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.27240204
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000036

 21  1     9    1  |1 1>+       0.48473357  0.00000037  0.17666540 -0.00000001 -0.00000000  0.00000032 -0.54936674 -0.00000000
                               -0.00000009 -0.00000002 -0.00000000  0.00000000 -0.00000000 -0.00000001  0.00000000  0.00000000

 22  1    10    1  |1 1>+       0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.50931170
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000068

 23  1    11    1  |1 1>+      -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.39094819  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 24  1    12    1  |1 1>+      -0.00000029  0.37510036 -0.00000001 -0.24125924  0.00000000  0.66470051  0.00000038 -0.00000000
                               -0.00000002 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000007  0.00000002 -0.00000000

 25  1    13    1  |1 1>+       0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000780
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 26  1    14    1  |1 1>+       0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000528 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 27  1    15    1  |1 1>+      -0.00000001  0.01094311 -0.00000000 -0.00000302  0.00000000  0.00000261  0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 28  1    16    1  |1 1>+       0.00000025  0.00000000 -0.00000168  0.00000000 -0.00000000  0.00000000 -0.00000098  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 29  1     1    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00041355 -0.00000000  0.00000000 -0.00000000

 30  1     2    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00043581 -0.00000000 -0.00017783  0.00000000  0.00048914  0.00000000 -0.00000000

 31  1     3    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00043582  0.00000000 -0.00017775  0.00000000  0.00000000  0.00000000 -0.00048917 -0.00000000

 32  1     4    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00041349

 33  1     5    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000044

 34  1     6    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.57784786 -0.00000000 -0.00000000  0.00000000

 35  1     7    1  |1 0>       -0.00000000 -0.00000000 -0.00000001  0.00000001 -0.00000000  0.00000002 -0.00000001  0.00000000
                                0.00000008 -0.10205060  0.00000003  0.81916760 -0.00000000  0.24627308  0.00000014  0.00000000

 36  1     8    1  |1 0>        0.00000002  0.00000000  0.00000001 -0.00000001  0.00000000  0.00000001 -0.00000000 -0.00000000
                                0.10203642  0.00000008  0.81921129 -0.00000003 -0.00000000  0.00000014 -0.24613876  0.00000000

 37  1     9    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000077
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.57778370

 38  1    10    1  |1 0>        0.00000011  0.00000003 -0.00000000  0.00000000  0.00000000 -0.00000001  0.00000000  0.00000000
                                0.60419926  0.00000047 -0.03813831  0.00000000  0.00000000 -0.00000018  0.31717734  0.00000000

 39  1    11    1  |1 0>        0.00000003  0.00000001 -0.00000000  0.00000000  0.00000000  0.00000003 -0.00000001  0.00000000
                               -0.00000047  0.60419682  0.00000000  0.03810253  0.00000000  0.31718970  0.00000018 -0.00000000

 40  1    12    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000012 -0.00000000 -0.00000000  0.00000000

 41  1    13    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.01093908 -0.00000001 -0.00000536  0.00000000 -0.00000000  0.00000000 -0.00000167  0.00000000

 42  1    14    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000001  0.01093906 -0.00000000 -0.00000538  0.00000000  0.00000167  0.00000000 -0.00000000

 43  1    15    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 44  1    16    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000001

 45  1     1    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00043109  0.00000000  0.00042803 -0.00000000 -0.00000000  0.00000000 -0.00029013 -0.00000000

 46  1     2    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00041157

 47  1     3    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00041455  0.00000000 -0.00000000  0.00000000

 48  1     4    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00043160 -0.00000000 -0.00051349  0.00000000 -0.00005191 -0.00000000 -0.00000000

 49  1     5    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00074615  0.00000000  0.00015331 -0.00000000 -0.00042638 -0.00000000  0.00000000

 50  1     6    1  |1 1>-      -0.00000009 -0.00000002  0.00000000 -0.00000000  0.00000000 -0.00000001  0.00000000  0.00000000
                               -0.48498541 -0.00000037  0.48793092 -0.00000002 -0.00000000 -0.00000018  0.30842800  0.00000000

 51  1     7    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000036
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.27257938

 52  1     8    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.42449697 -0.00000000 -0.00000000  0.00000000

 53  1     9    1  |1 1>-       0.00000002  0.00000001  0.00000000 -0.00000000  0.00000000 -0.00000005  0.00000001 -0.00000000
                               -0.00000037  0.48473372 -0.00000001 -0.17657056  0.00000000 -0.54939717 -0.00000032 -0.00000000

 54  1    10    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.39095796 -0.00000000 -0.00000000  0.00000000

 55  1    11    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000068
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.50819748

 56  1    12    1  |1 1>-       0.00000007  0.00000002  0.00000000 -0.00000000  0.00000000 -0.00000002  0.00000000  0.00000000
                                0.37510040  0.00000029  0.24114433 -0.00000001 -0.00000000 -0.00000038  0.66474212  0.00000000

 57  1    13    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000528 -0.00000000 -0.00000000  0.00000000

 58  1    14    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000781

 59  1    15    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.01094311  0.00000001  0.00000303 -0.00000000  0.00000000 -0.00000000  0.00000262 -0.00000000

 60  1    16    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000025 -0.00000000 -0.00000168  0.00000000  0.00000098  0.00000000 -0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.       33          34          35          36          37          38          39          40

  1  1     1    1  |0 0>        0.00000000  0.00000087  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  2  1     2    1  |0 0>       -0.00000000  0.00000188  0.00000000 -0.00000000 -0.00000000 -0.00000061 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  3  1     3    1  |0 0>       -0.00000000  0.00000012  0.00000000  0.00000000 -0.00000000  0.00001056 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  4  1     4    1  |0 0>        0.00000000 -0.00000000 -0.00000000  0.00000003  0.00000000 -0.00000000 -0.00000000 -0.00000051
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  5  1     5    1  |0 0>       -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000243 -0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  6  1     6    1  |0 0>        0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000003 -0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  7  1     7    1  |0 0>        0.00000000  0.00000000 -0.00000000  0.00000000 -0.00003813  0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  8  1     8    1  |0 0>        0.00000002 -0.00000000 -0.00000008 -0.00000000  0.00000000 -0.00000000 -0.00003259 -0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  9  1     9    1  |0 0>       -0.00000000 -0.00000000  0.00000000 -0.00003817 -0.00000000  0.00000000 -0.00000000 -0.00002569
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 10  1    10    1  |0 0>        0.00000000 -0.00000055 -0.00000000  0.00000000  0.00000000 -0.00016570 -0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 11  1    11    1  |0 0>        0.00000000 -0.00001370  0.00000000 -0.00000000 -0.00000000  0.00000621  0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 12  1    12    1  |0 0>       -0.00000000 -0.00000877 -0.00000000  0.00000000  0.00000000  0.00000003  0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 13  1     1    1  |1 1>+       0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000217 -0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 14  1     2    1  |1 1>+       0.00000000 -0.00000269 -0.00000000  0.00000000  0.00000000  0.00000241  0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 15  1     3    1  |1 1>+       0.00031851  0.00000000 -0.00000261  0.00000000 -0.00000000 -0.00000000 -0.00000130 -0.00000000
                               -0.00000001 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 16  1     4    1  |1 1>+       0.00000000  0.00000000  0.00000000 -0.00000235 -0.00000000 -0.00000000  0.00000000 -0.00000399
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 17  1     5    1  |1 1>+      -0.00000000  0.00000000 -0.00000000  0.00000071  0.00000000 -0.00000000  0.00000000 -0.00000342
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 18  1     6    1  |1 1>+      -0.00000000 -0.00000000 -0.00000000 -0.00000035  0.62336037  0.00000000  0.00000000 -0.00000006
                                0.00000000  0.00000000  0.00000000 -0.00000001  0.00000001 -0.00000000  0.00000000 -0.00000000

 19  1     7    1  |1 1>+       0.00000000  0.70019669  0.00000000 -0.00000000  0.00000000  0.04521483  0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 20  1     8    1  |1 1>+      -0.11804048 -0.00000000  0.69732204  0.00000000  0.00000000  0.00000000  0.21745373  0.00000000
                                0.00000313  0.00000000 -0.00003678 -0.00000000  0.00000000  0.00000000  0.00002068  0.00000000

 21  1     9    1  |1 1>+       0.00000000  0.00000000 -0.00000000  0.59994494  0.00000034  0.00000000  0.00000000 -0.26236545
                                0.00000000  0.00000000 -0.00000000  0.00000002 -0.00000001  0.00000000 -0.00000000 -0.00000000

 22  1    10    1  |1 1>+      -0.69681262 -0.00000000 -0.11759583 -0.00000000 -0.00000000 -0.00000000  0.48833105 -0.00000000
                                0.00001847 -0.00000000  0.00000620 -0.00000000  0.00000000 -0.00000000  0.00004644  0.00000000

 23  1    11    1  |1 1>+      -0.00000000  0.09529338  0.00000000 -0.00000000  0.00000000  0.53273018  0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 24  1    12    1  |1 1>+       0.00000000 -0.00000000  0.00000000 -0.00000002  0.03083067  0.00000000  0.00000000 -0.00000018
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000001

 25  1    13    1  |1 1>+      -0.00000247 -0.00000000  0.00001558 -0.00000000  0.00000000 -0.00000000 -0.00001197  0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 26  1    14    1  |1 1>+       0.00000000  0.00001486  0.00000000 -0.00000000 -0.00000000 -0.00000827 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 27  1    15    1  |1 1>+      -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000051  0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 28  1    16    1  |1 1>+      -0.00000000 -0.00000000  0.00000000  0.00000138  0.00000000 -0.00000000 -0.00000000  0.00000549
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 29  1     1    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000303 -0.00000000  0.00000000

 30  1     2    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000046  0.00000000  0.00000000  0.00000000

 31  1     3    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000046 -0.00000000 -0.00000000  0.00000000 -0.00000293

 32  1     4    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000033 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000475  0.00000000

 33  1     5    1  |1 0>        0.00000001 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00054930 -0.00000000  0.00000232 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 34  1     6    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00021018 -0.00000000 -0.00000000  0.00000000  0.65424336  0.00000000  0.00000000

 35  1     7    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000001  0.00000001 -0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000027 -0.48596293  0.00000000  0.00000000 -0.00000005

 36  1     8    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000001 -0.00000001  0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.48601244 -0.00000027 -0.00000000 -0.00000000  0.14678149

 37  1     9    1  |1 0>       -0.00000001 -0.00000000  0.00000002  0.00000000 -0.00000000  0.00000000 -0.00006224 -0.00000000
                               -0.00046430 -0.00000000  0.00030223 -0.00000000  0.00000000 -0.00000000  0.65446070 -0.00000000

 38  1    10    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000001
                               -0.00000000  0.00000000 -0.00000000  0.12008540  0.00000007 -0.00000000  0.00000000  0.71652329

 39  1    11    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000002
                                0.00000000  0.00000000 -0.00000000  0.00000007 -0.12032624 -0.00000000 -0.00000000  0.00000022

 40  1    12    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.03733853 -0.00000000 -0.00000000 -0.00000000 -0.00011797  0.00000000  0.00000000

 41  1    13    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00001638 -0.00000000  0.00000000 -0.00000000 -0.00003208

 42  1    14    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00001641 -0.00000000  0.00000000  0.00000000

 43  1    15    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000927  0.00000000 -0.00000000 -0.00000000 -0.00000003 -0.00000000  0.00000000

 44  1    16    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000370 -0.00000000  0.00000301 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 45  1     1    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000217 -0.00000000 -0.00000000 -0.00000000  0.00000347

 46  1     2    1  |1 1>-       0.00000001  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00031785  0.00000000 -0.00000261  0.00000000 -0.00000000  0.00000000  0.00000130  0.00000000

 47  1     3    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000269  0.00000000 -0.00000000 -0.00000000  0.00000241 -0.00000000  0.00000000

 48  1     4    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000235 -0.00000000 -0.00000000 -0.00000000

 49  1     5    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000071  0.00000000 -0.00000000  0.00000000

 50  1     6    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000002  0.00000001 -0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.62329665  0.00000035  0.00000000  0.00000000  0.19959625

 51  1     7    1  |1 1>-      -0.00000312 -0.00000000  0.00003677 -0.00000000 -0.00000000 -0.00000000  0.00002074 -0.00000000
                               -0.11761837 -0.00000000  0.69711849  0.00000000  0.00000000  0.00000000 -0.21810905  0.00000000

 52  1     8    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.70016920 -0.00000000  0.00000000 -0.00000000  0.04566231 -0.00000000  0.00000000

 53  1     9    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000001  0.00000001 -0.00000000  0.00000000  0.00000001
                               -0.00000000  0.00000000  0.00000000  0.00000034 -0.59986077  0.00000000  0.00000000 -0.00000008

 54  1    10    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000  0.09493497  0.00000000 -0.00000000  0.00000000 -0.53294907  0.00000000  0.00000000

 55  1    11    1  |1 1>-       0.00001849 -0.00000000  0.00000623  0.00000000 -0.00000000 -0.00000000 -0.00004643 -0.00000000
                                0.69762728 -0.00000000  0.11806312  0.00000000  0.00000000 -0.00000000  0.48821745 -0.00000000

 56  1    12    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000001
                               -0.00000000 -0.00000000  0.00000000 -0.03063929 -0.00000002  0.00000000 -0.00000000 -0.59697175

 57  1    13    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00001484 -0.00000000  0.00000000  0.00000000 -0.00000827  0.00000000 -0.00000000

 58  1    14    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000248 -0.00000000  0.00001563 -0.00000000  0.00000000  0.00000000  0.00001194  0.00000000

 59  1    15    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000051  0.00000000  0.00000000  0.00000000 -0.00002505

 60  1    16    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000138  0.00000000 -0.00000000 -0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.       41          42          43          44          45          46          47          48

  1  1     1    1  |0 0>       -0.00000000  0.00000275  0.00000123  0.00000002  0.00000000 -0.00000000 -0.00000000  0.00713049
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  2  1     2    1  |0 0>       -0.00000000 -0.00000149  0.00283168 -0.00016202 -0.00000000  0.00000000 -0.00000000  0.00000041
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  3  1     3    1  |0 0>        0.00000000 -0.00000008  0.00016207  0.00283084  0.00000000  0.00000000  0.00000000  0.00000001
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  4  1     4    1  |0 0>        0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00283735 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  5  1     5    1  |0 0>        0.00000000  0.00000000  0.00000000 -0.00000000  0.00283679  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000016  0.00000000 -0.00000000  0.00000000

  6  1     6    1  |0 0>       -0.00000050  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00283735  0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  7  1     7    1  |0 0>        0.00002579 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.88681884  0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  8  1     8    1  |0 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000  0.88681266  0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00004989  0.00000000 -0.00000000  0.00000000

  9  1     9    1  |0 0>        0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.88681889  0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 10  1    10    1  |0 0>        0.00000000 -0.00000007  0.03234100  0.88616472  0.00000000  0.00000000  0.00000000 -0.00000826
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 11  1    11    1  |0 0>       -0.00000000  0.00000130  0.88606164 -0.03234485 -0.00000000  0.00000000 -0.00000000 -0.00016084
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 12  1    12    1  |0 0>       -0.00000000 -0.00002230 -0.00002173 -0.00000039 -0.00000000  0.00000000  0.00000000 -0.14417663
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 13  1     1    1  |1 1>+      -0.00000347  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00105100 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 14  1     2    1  |1 1>+       0.00000000  0.00000194 -0.00181493  0.00104349  0.00000000 -0.00000000  0.00000000  0.00000079
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 15  1     3    1  |1 1>+       0.00000000  0.00000000  0.00000000 -0.00000000  0.00104942  0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000006  0.00000000 -0.00000000  0.00000000

 16  1     4    1  |1 1>+       0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00105079  0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 17  1     5    1  |1 1>+       0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00181187 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 18  1     6    1  |1 1>+      -0.19939657  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.05377593  0.00000000
                               -0.00000001 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 19  1     7    1  |1 1>+      -0.00000000 -0.04258128 -0.00987492  0.06220074  0.00000000  0.00000000  0.00000000 -0.00001254
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 20  1     8    1  |1 1>+       0.00000000 -0.00000000 -0.00000000  0.00000000 -0.06779918 -0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000381 -0.00000000  0.00000000 -0.00000000

 21  1     9    1  |1 1>+       0.00000008  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.05379613  0.00000000  0.00000000
                               -0.00000001  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 22  1    10    1  |1 1>+       0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00577838 -0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000033 -0.00000000  0.00000000 -0.00000000

 23  1    11    1  |1 1>+       0.00000000  0.46177131  0.05827998  0.02787235  0.00000000  0.00000000 -0.00000000 -0.00003994
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 24  1    12    1  |1 1>+      -0.59696183  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.04169992 -0.00000000
                               -0.00000003 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 25  1    13    1  |1 1>+      -0.00000000 -0.00000000  0.00000000 -0.00000000  0.31732824  0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00001785  0.00000000 -0.00000000  0.00000000

 26  1    14    1  |1 1>+       0.00000000  0.00003338  0.18323617  0.31748575  0.00000000  0.00000000 -0.00000000  0.57128028
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 27  1    15    1  |1 1>+      -0.00002503  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.31728583  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 28  1    16    1  |1 1>+      -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000068  0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 29  1     1    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000108  0.00208944  0.00000000  0.00000000  0.00000000 -0.00000000

 30  1     2    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000293 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00104994 -0.00000000

 31  1     3    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00104994 -0.00000000 -0.00000000

 32  1     4    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000012  0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00208905 -0.00000000 -0.00000000 -0.00000000

 33  1     5    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000002  0.00000000  0.00000000 -0.00000000

 34  1     6    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00011251  0.00002780 -0.05375807 -0.00000000 -0.00000000 -0.00000000  0.00000012

 35  1     7    1  |1 0>        0.00000001  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.14695383  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.01132147  0.00000000

 36  1     8    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000005 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.01131989  0.00000000  0.00000000

 37  1     9    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000303 -0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.05379923  0.00000000  0.00000000  0.00000000

 38  1    10    1  |1 0>       -0.00000002  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000022 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.06713661  0.00000000  0.00000000

 39  1    11    1  |1 0>       -0.00000004 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.71648141 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.06713635 -0.00000000

 40  1    12    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000  0.75503394 -0.07239885 -0.00003746  0.00000000 -0.00000000  0.00000000 -0.00003818

 41  1    13    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.31734407  0.00000000  0.00000000

 42  1    14    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00003209 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.31734395  0.00000000

 43  1    15    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000  0.00004063 -0.36651160 -0.00018830  0.00000000 -0.00000000  0.00000000  0.57134721

 44  1    16    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000002 -0.00000000  0.00000000  0.00000000

 45  1     1    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00105100 -0.00000000 -0.00000000

 46  1     2    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000006  0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00104942 -0.00000000 -0.00000000 -0.00000000

 47  1     3    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000194  0.00181385  0.00104537  0.00000000  0.00000000 -0.00000000 -0.00000079

 48  1     4    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000399  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00105075  0.00000000

 49  1     5    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000342 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00181189  0.00000000

 50  1     6    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000006  0.00000000  0.00000000  0.00000000  0.00000000 -0.05377594 -0.00000000  0.00000000

 51  1     7    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000  0.00000381 -0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.06779940  0.00000000  0.00000000 -0.00000000

 52  1     8    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000  0.04258623  0.00980915  0.06221165  0.00000000  0.00000000  0.00000000  0.00001227

 53  1     9    1  |1 1>-       0.00000001  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.26255768  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.05379608 -0.00000000

 54  1    10    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000  0.46158881  0.05830914 -0.02781043 -0.00000000  0.00000000 -0.00000000 -0.00003982

 55  1    11    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000032  0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00577685 -0.00000000 -0.00000000 -0.00000000

 56  1    12    1  |1 1>-       0.00000001 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000018  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.04170008  0.00000000  0.00000000

 57  1    13    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00003340 -0.18356503  0.31729266  0.00000000  0.00000000  0.00000000 -0.57128227

 58  1    14    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00001785  0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.31732771 -0.00000000 -0.00000000  0.00000000

 59  1    15    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.31728555 -0.00000000 -0.00000000

 60  1    16    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000549 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000070  0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.       49          50          51          52          53          54          55          56

  1  1     1    1  |0 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000019
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  2  1     2    1  |0 0>        0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00024385 -0.00419767
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  3  1     3    1  |0 0>        0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00420372 -0.00024351
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  4  1     4    1  |0 0>        0.00000000  0.00000015  0.00000000  0.00000000  0.00421903 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  5  1     5    1  |0 0>       -0.00000000 -0.00000000 -0.00000000 -0.00421849  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000083  0.00000000 -0.00000000 -0.00000000  0.00000000

  6  1     6    1  |0 0>       -0.00000000  0.00000000 -0.00000015 -0.00000000  0.00000000  0.00421904  0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  7  1     7    1  |0 0>        0.00000000  0.00000000 -0.00005701  0.00000000 -0.00000002 -0.44739652 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000003 -0.00000000  0.00000000

  8  1     8    1  |0 0>       -0.00000038  0.00000000  0.00000000  0.44741721 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00008769 -0.00000000  0.00000000  0.00000000 -0.00000000

  9  1     9    1  |0 0>        0.00000000 -0.00005732 -0.00000000  0.00000000  0.44739641 -0.00000002 -0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 10  1    10    1  |0 0>        0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.44719399  0.01667402
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 11  1    11    1  |0 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.01666888  0.44733474
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 12  1    12    1  |0 0>        0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000010 -0.00001616
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 13  1     1    1  |1 1>+      -0.00000000  0.00000000 -0.00033292 -0.00000000  0.00000000  0.00017521  0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 14  1     2    1  |1 1>+      -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00017311 -0.00030176
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 15  1     3    1  |1 1>+      -0.00033213  0.00000000  0.00000000  0.00017540 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000001  0.00000000 -0.00000000  0.00000003 -0.00000000  0.00000000  0.00000000 -0.00000000

 16  1     4    1  |1 1>+       0.00000000  0.00033221  0.00000000  0.00000000  0.00017587 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 17  1     5    1  |1 1>+       0.00000000  0.00018658  0.00000000 -0.00000000 -0.00030277  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 18  1     6    1  |1 1>+      -0.00000000 -0.00000000  0.00002014 -0.00000000  0.00000000  0.01863849  0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 19  1     7    1  |1 1>+       0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.02154088 -0.00339711
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 20  1     8    1  |1 1>+      -0.00001587  0.00000000 -0.00000000 -0.02349422  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000460  0.00000000 -0.00000000 -0.00000000  0.00000000

 21  1     9    1  |1 1>+       0.00000000 -0.00000769 -0.00000000  0.00000000  0.01863337 -0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 22  1    10    1  |1 1>+       0.00000041  0.00000000 -0.00000000 -0.00200313  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000039  0.00000000 -0.00000000 -0.00000000  0.00000000

 23  1    11    1  |1 1>+       0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00963842  0.02018194
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 24  1    12    1  |1 1>+      -0.00000000 -0.00000000  0.00002822 -0.00000000  0.00000000  0.01445912  0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 25  1    13    1  |1 1>+       0.70467628 -0.00000000 -0.00000000 -0.63179934  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00001272 -0.00000000  0.00000000 -0.00012383  0.00000000 -0.00000000 -0.00000000  0.00000000

 26  1    14    1  |1 1>+       0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.63167502 -0.36486968
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 27  1    15    1  |1 1>+      -0.00000000  0.00000017 -0.70465912 -0.00000000  0.00000003  0.63183767  0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000001  0.00000004  0.00000000 -0.00000000

 28  1    16    1  |1 1>+      -0.00000000 -0.08284535 -0.00000002 -0.00000000 -0.00003141  0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 29  1     1    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00034454  0.00000009

 30  1     2    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00033282 -0.00000000  0.00000000  0.00017501  0.00000000 -0.00000000

 31  1     3    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00033282  0.00000000 -0.00000000 -0.00017501  0.00000000  0.00000000 -0.00000000

 32  1     4    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000007 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00034574  0.00000000 -0.00000000 -0.00000000 -0.00000000

 33  1     5    1  |1 0>       -0.00000001  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00038712 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 34  1     6    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.01860222 -0.00000476

 35  1     7    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000098  0.00000000 -0.00000000 -0.00392309 -0.00000000  0.00000000

 36  1     8    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000097  0.00000000  0.00000000  0.00392254 -0.00000000 -0.00000000  0.00000000

 37  1     9    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000365  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000001  0.00000000 -0.00000000  0.01862386 -0.00000000  0.00000000  0.00000000  0.00000000

 38  1    10    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00002467  0.00000000  0.00000000  0.02326781 -0.00000000 -0.00000000  0.00000000

 39  1    11    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00002468 -0.00000000  0.00000000  0.02326772  0.00000000 -0.00000000

 40  1    12    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000641 -0.02506987

 41  1    13    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000001  0.00000000 -0.00000000
                                0.00000000  0.70469269  0.00000017 -0.00000000 -0.63177451  0.00000003  0.00000000 -0.00000000

 42  1    14    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000001 -0.00000004 -0.00000000  0.00000000
                                0.00000000 -0.00000017  0.70469270 -0.00000000  0.00000003  0.63177456  0.00000000 -0.00000000

 43  1    15    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00018643  0.72945550

 44  1    16    1  |1 0>       -0.00000150  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.08283808 -0.00000000 -0.00000000  0.00000006 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 45  1     1    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00033292 -0.00000000 -0.00000000 -0.00017521  0.00000000  0.00000000 -0.00000000

 46  1     2    1  |1 1>-       0.00000001 -0.00000000  0.00000000  0.00000003 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00033213  0.00000000  0.00000000 -0.00017540  0.00000000 -0.00000000 -0.00000000 -0.00000000

 47  1     3    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00017295  0.00030185

 48  1     4    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00033221 -0.00000000  0.00000000  0.00017586  0.00000000 -0.00000000

 49  1     5    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00018657 -0.00000000  0.00000000  0.00030278  0.00000000 -0.00000000

 50  1     6    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00002014  0.00000000 -0.00000000 -0.01863847  0.00000000  0.00000000 -0.00000000

 51  1     7    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000460  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00001590  0.00000000  0.00000000  0.02349426 -0.00000000  0.00000000  0.00000000  0.00000000

 52  1     8    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.02153936  0.00340765

 53  1     9    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000768 -0.00000000  0.00000000  0.01863334  0.00000000 -0.00000000

 54  1    10    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00964820  0.02017711

 55  1    11    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000039 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000039  0.00000000 -0.00000000 -0.00200261  0.00000000 -0.00000000 -0.00000000 -0.00000000

 56  1    12    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00002824 -0.00000000  0.00000000  0.01445917 -0.00000000 -0.00000000  0.00000000

 57  1    13    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.63186109  0.36454692

 58  1    14    1  |1 1>-      -0.00001272  0.00000000 -0.00000000 -0.00012383  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.70467639 -0.00000000 -0.00000000  0.63179948 -0.00000000  0.00000000  0.00000000  0.00000000

 59  1    15    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000001 -0.00000000  0.00000000
                                0.00000000  0.70465913  0.00000017  0.00000000  0.63183779 -0.00000003 -0.00000000  0.00000000

 60  1    16    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000002 -0.08284537 -0.00000000  0.00000000  0.00003133  0.00000000  0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.       57          58          59          60

  1  1     1    1  |0 0>        0.00000000  0.00000000 -0.00000000  0.00097452
                                0.00000000 -0.00000000  0.00000000 -0.00000000

  2  1     2    1  |0 0>       -0.00000000  0.00000000  0.00000000  0.00000005
                               -0.00000000  0.00000000  0.00000000 -0.00000000

  3  1     3    1  |0 0>        0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000

  4  1     4    1  |0 0>       -0.00000000  0.00000010 -0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000

  5  1     5    1  |0 0>        0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000

  6  1     6    1  |0 0>        0.00000000 -0.00000000 -0.00000009 -0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000

  7  1     7    1  |0 0>       -0.00000000  0.00000000  0.00000873  0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000

  8  1     8    1  |0 0>       -0.00000001  0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000

  9  1     9    1  |0 0>        0.00000000  0.00000876 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000

 10  1    10    1  |0 0>       -0.00000000 -0.00000000  0.00000000  0.00000008
                                0.00000000 -0.00000000 -0.00000000  0.00000000

 11  1    11    1  |0 0>        0.00000000 -0.00000000 -0.00000000  0.00000304
                                0.00000000  0.00000000  0.00000000 -0.00000000

 12  1    12    1  |0 0>       -0.00000000 -0.00000000 -0.00000000  0.98955197
                                0.00000000 -0.00000000 -0.00000000 -0.00000000

 13  1     1    1  |1 1>+       0.00000000 -0.00000000 -0.00002640  0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000

 14  1     2    1  |1 1>+       0.00000000 -0.00000000 -0.00000000 -0.00000008
                                0.00000000 -0.00000000 -0.00000000  0.00000000

 15  1     3    1  |1 1>+       0.00002635  0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000

 16  1     4    1  |1 1>+      -0.00000000  0.00002635 -0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000

 17  1     5    1  |1 1>+      -0.00000000  0.00001479 -0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000

 18  1     6    1  |1 1>+      -0.00000000  0.00000000  0.00000041 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000

 19  1     7    1  |1 1>+       0.00000000 -0.00000000  0.00000000  0.00000293
                                0.00000000 -0.00000000 -0.00000000 -0.00000000

 20  1     8    1  |1 1>+      -0.00000035 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000

 21  1     9    1  |1 1>+       0.00000000  0.00000016 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000

 22  1    10    1  |1 1>+       0.00000291  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000

 23  1    11    1  |1 1>+       0.00000000 -0.00000000 -0.00000000  0.00000831
                                0.00000000  0.00000000  0.00000000 -0.00000000

 24  1    12    1  |1 1>+      -0.00000000 -0.00000000 -0.00000238 -0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000

 25  1    13    1  |1 1>+      -0.05857533 -0.00000000 -0.00000000 -0.00000000
                               -0.00000065 -0.00000000 -0.00000000  0.00000000

 26  1    14    1  |1 1>+      -0.00000000  0.00000000 -0.00000000  0.08323341
                               -0.00000000 -0.00000000 -0.00000000  0.00000000

 27  1    15    1  |1 1>+       0.00000000 -0.00000009 -0.05859920 -0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000

 28  1    16    1  |1 1>+      -0.00000000  0.99656242 -0.00000158  0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000

 29  1     1    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000001

 30  1     2    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00002636  0.00000000

 31  1     3    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00002636 -0.00000000  0.00000000

 32  1     4    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000

 33  1     5    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00003069 -0.00000000 -0.00000000  0.00000000

 34  1     6    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000001

 35  1     7    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000117 -0.00000000

 36  1     8    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000117 -0.00000000 -0.00000000

 37  1     9    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000

 38  1    10    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000128  0.00000000 -0.00000000

 39  1    11    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000128 -0.00000000

 40  1    12    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000754

 41  1    13    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000  0.05856177 -0.00000009  0.00000000

 42  1    14    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000009  0.05856182 -0.00000000

 43  1    15    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.08324882

 44  1    16    1  |1 0>       -0.00001098 -0.00000000 -0.00000000 -0.00000000
                                0.99656302  0.00000000  0.00000001  0.00000000

 45  1     1    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00002640  0.00000000 -0.00000000

 46  1     2    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00002635  0.00000000  0.00000000 -0.00000000

 47  1     3    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000007

 48  1     4    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00002635 -0.00000000

 49  1     5    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00001479 -0.00000000

 50  1     6    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000041 -0.00000000 -0.00000000

 51  1     7    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000035 -0.00000000  0.00000000  0.00000000

 52  1     8    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000297

 53  1     9    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000016  0.00000000

 54  1    10    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000833

 55  1    11    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000291  0.00000000 -0.00000000  0.00000000

 56  1    12    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000238 -0.00000000 -0.00000000

 57  1    13    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.08323333

 58  1    14    1  |1 1>-       0.00000065  0.00000000  0.00000000  0.00000000
                               -0.05857540 -0.00000000 -0.00000000  0.00000000

 59  1    15    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.05859923 -0.00000009 -0.00000000

 60  1    16    1  |1 1>-      -0.00000000  0.00000000  0.00000005 -0.00000000
                               -0.00000001  0.00000158  0.99656241  0.00000000



 Composition of spin-orbit eigenvectors
 ======================================
   Total
 Nr Sym  State Sym Spin / Nr.      1        2        3        4        5        6        7        8

  1  1     1    1  |0 0>         99.99%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    1.07%    0.00%    0.00%
  3  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    1.07%    0.00%    0.00%    0.00%
  4  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  5  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    1.08%    0.00%
  6  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    1.08%
  7  1     7    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  8  1     8    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  9  1     9    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 10  1    10    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1    11    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1    12    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 13  1     1    1  |1 1>+         0.00%   30.01%    0.00%    0.00%    0.00%    0.00%    0.00%   16.49%
 14  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.00%   16.53%   49.41%    0.00%    0.00%
 15  1     3    1  |1 1>+         0.00%    0.00%    0.00%   30.01%    0.00%    0.00%   16.49%    0.00%
 16  1     4    1  |1 1>+         0.00%    0.00%   29.99%    0.00%    0.00%    0.00%    0.00%    0.00%
 17  1     5    1  |1 1>+         0.00%    0.00%    9.99%    0.00%    0.00%    0.00%    0.00%    0.00%
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
 29  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%   65.95%    0.00%    0.00%    0.00%
 30  1     2    1  |1 0>          0.00%   30.00%    0.00%    0.00%    0.00%    0.00%    0.00%   16.50%
 31  1     3    1  |1 0>          0.00%    0.00%   30.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 32  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   65.93%    0.00%
 33  1     5    1  |1 0>          0.00%    0.00%    0.00%   39.98%    0.00%    0.00%    0.00%    0.00%
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
 45  1     1    1  |1 1>-         0.00%    0.00%   30.01%    0.00%    0.00%    0.00%    0.00%    0.00%
 46  1     2    1  |1 1>-         0.00%    0.00%    0.00%   30.01%    0.00%    0.00%   16.49%    0.00%
 47  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%   16.44%   49.51%    0.00%    0.00%
 48  1     4    1  |1 1>-         0.00%   29.99%    0.00%    0.00%    0.00%    0.00%    0.00%   16.48%
 49  1     5    1  |1 1>-         0.00%    9.99%    0.00%    0.00%    0.00%    0.00%    0.00%   49.45%
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
  4  1     4    1  |0 0>          1.08%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  5  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  6  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  7  1     7    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  8  1     8    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  9  1     9    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 10  1    10    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1    11    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1    12    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 13  1     1    1  |1 1>+         0.00%    0.00%   53.31%    0.00%    0.00%    0.00%    0.00%    0.00%
 14  1     2    1  |1 1>+         0.00%   33.34%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 15  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.00%   33.29%    0.00%    0.00%   20.02%
 16  1     4    1  |1 1>+        16.48%    0.00%    0.00%   40.67%    0.00%    0.00%   12.68%    0.00%
 17  1     5    1  |1 1>+        49.45%    0.00%    0.00%    2.58%    0.00%    0.00%   37.44%    0.00%
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
 29  1     1    1  |1 0>          0.00%   33.33%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 30  1     2    1  |1 0>          0.00%    0.00%    3.44%    0.00%    0.00%   49.87%    0.00%    0.00%
 31  1     3    1  |1 0>         16.50%    0.00%    0.00%    3.44%    0.00%    0.00%   49.88%    0.00%
 32  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.00%   33.35%    0.00%    0.00%    0.00%
 33  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   60.02%
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
 45  1     1    1  |1 1>-        16.49%    0.00%    0.00%   53.31%    0.00%    0.00%    0.00%    0.00%
 46  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%   33.36%    0.00%    0.00%   19.96%
 47  1     3    1  |1 1>-         0.00%   33.34%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 48  1     4    1  |1 1>-         0.00%    0.00%   40.66%    0.00%    0.00%   12.69%    0.00%    0.00%
 49  1     5    1  |1 1>-         0.00%    0.00%    2.59%    0.00%    0.00%   37.44%    0.00%    0.00%
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
  2  1     2    1  |0 0>         98.78%    0.14%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  3  1     3    1  |0 0>          0.14%   98.78%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  4  1     4    1  |0 0>          0.00%    0.00%    0.00%   98.92%    0.00%    0.00%    0.00%    0.00%
  5  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%   98.92%    0.00%    0.00%    0.00%
  6  1     6    1  |0 0>          0.00%    0.00%   98.92%    0.00%    0.00%    0.00%    0.00%    0.00%
  7  1     7    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  8  1     8    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    1.34%    0.00%
  9  1     9    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 10  1    10    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    1.34%    0.00%    0.00%
 11  1    11    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    1.34%
 12  1    12    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 13  1     1    1  |1 1>+         0.00%    0.00%    0.18%    0.00%    0.00%    0.00%    0.00%    0.00%
 14  1     2    1  |1 1>+         0.55%    0.17%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 15  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.18%    0.00%    0.00%    0.00%
 16  1     4    1  |1 1>+         0.00%    0.00%    0.00%    0.18%    0.00%    0.00%    0.00%    0.00%
 17  1     5    1  |1 1>+         0.00%    0.00%    0.00%    0.54%    0.00%    0.00%    0.00%    0.00%
 18  1     6    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 19  1     7    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%   31.34%    0.00%    0.78%
 20  1     8    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   37.32%    0.00%
 21  1     9    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 22  1    10    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.27%    0.00%
 23  1    11    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    6.23%    0.00%   27.40%
 24  1    12    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 25  1    13    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    0.00%
 26  1    14    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    0.00%    0.00%
 27  1    15    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 28  1    16    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 29  1     1    1  |1 0>          0.00%    0.72%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 30  1     2    1  |1 0>          0.00%    0.00%    0.18%    0.00%    0.00%    0.00%    0.00%    0.00%
 31  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.18%    0.00%    0.00%    0.00%    0.00%
 32  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.72%    0.00%    0.00%    0.00%
 33  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 34  1     6    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%   23.48%    0.00%    0.00%
 35  1     7    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 36  1     8    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 37  1     9    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   23.46%    0.00%
 38  1    10    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 39  1    11    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 40  1    12    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   42.26%
 41  1    13    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 42  1    14    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 43  1    15    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.02%
 44  1    16    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 45  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.18%    0.00%    0.00%    0.00%    0.00%
 46  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.18%    0.00%    0.00%    0.00%
 47  1     3    1  |1 1>-         0.53%    0.19%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 48  1     4    1  |1 1>-         0.00%    0.00%    0.18%    0.00%    0.00%    0.00%    0.00%    0.00%
 49  1     5    1  |1 1>-         0.00%    0.00%    0.54%    0.00%    0.00%    0.00%    0.00%    0.00%
 50  1     6    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 51  1     7    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   37.32%    0.00%
 52  1     8    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%   31.34%    0.00%    0.78%
 53  1     9    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 54  1    10    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    6.24%    0.00%   27.39%
 55  1    11    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.27%    0.00%
 56  1    12    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 57  1    13    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    0.00%    0.00%
 58  1    14    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    0.00%
 59  1    15    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 60  1    16    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.     25       26       27       28       29       30       31       32

  1  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  3  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  4  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  5  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  6  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  7  1     7    1  |0 0>          0.00%    1.34%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  8  1     8    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  9  1     9    1  |0 0>          1.34%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 10  1    10    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1    11    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1    12    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 13  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 14  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 15  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 16  1     4    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 17  1     5    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 18  1     6    1  |1 1>+         0.00%   23.52%    0.00%   23.81%    0.00%    9.51%    0.00%    0.00%
 19  1     7    1  |1 1>+         0.00%    0.00%    0.00%    0.00%   18.02%    0.00%    0.00%    0.00%
 20  1     8    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    7.42%
 21  1     9    1  |1 1>+        23.50%    0.00%    3.12%    0.00%    0.00%    0.00%   30.18%    0.00%
 22  1    10    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   25.94%
 23  1    11    1  |1 1>+         0.00%    0.00%    0.00%    0.00%   15.28%    0.00%    0.00%    0.00%
 24  1    12    1  |1 1>+         0.00%   14.07%    0.00%    5.82%    0.00%   44.18%    0.00%    0.00%
 25  1    13    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 26  1    14    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 27  1    15    1  |1 1>+         0.00%    0.01%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 28  1    16    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 29  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 30  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 31  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 32  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 33  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 34  1     6    1  |1 0>          0.00%    0.00%    0.00%    0.00%   33.39%    0.00%    0.00%    0.00%
 35  1     7    1  |1 0>          0.00%    1.04%    0.00%   67.10%    0.00%    6.07%    0.00%    0.00%
 36  1     8    1  |1 0>          1.04%    0.00%   67.11%    0.00%    0.00%    0.00%    6.06%    0.00%
 37  1     9    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   33.38%
 38  1    10    1  |1 0>         36.51%    0.00%    0.15%    0.00%    0.00%    0.00%   10.06%    0.00%
 39  1    11    1  |1 0>          0.00%   36.51%    0.00%    0.15%    0.00%   10.06%    0.00%    0.00%
 40  1    12    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 41  1    13    1  |1 0>          0.01%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 42  1    14    1  |1 0>          0.00%    0.01%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 43  1    15    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 44  1    16    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 45  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 46  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 47  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 48  1     4    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 49  1     5    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 50  1     6    1  |1 1>-        23.52%    0.00%   23.81%    0.00%    0.00%    0.00%    9.51%    0.00%
 51  1     7    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    7.43%
 52  1     8    1  |1 1>-         0.00%    0.00%    0.00%    0.00%   18.02%    0.00%    0.00%    0.00%
 53  1     9    1  |1 1>-         0.00%   23.50%    0.00%    3.12%    0.00%   30.18%    0.00%    0.00%
 54  1    10    1  |1 1>-         0.00%    0.00%    0.00%    0.00%   15.28%    0.00%    0.00%    0.00%
 55  1    11    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   25.83%
 56  1    12    1  |1 1>-        14.07%    0.00%    5.82%    0.00%    0.00%    0.00%   44.19%    0.00%
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
 18  1     6    1  |1 1>+         0.00%    0.00%    0.00%    0.00%   38.86%    0.00%    0.00%    0.00%
 19  1     7    1  |1 1>+         0.00%   49.03%    0.00%    0.00%    0.00%    0.20%    0.00%    0.00%
 20  1     8    1  |1 1>+         1.39%    0.00%   48.63%    0.00%    0.00%    0.00%    4.73%    0.00%
 21  1     9    1  |1 1>+         0.00%    0.00%    0.00%   35.99%    0.00%    0.00%    0.00%    6.88%
 22  1    10    1  |1 1>+        48.55%    0.00%    1.38%    0.00%    0.00%    0.00%   23.85%    0.00%
 23  1    11    1  |1 1>+         0.00%    0.91%    0.00%    0.00%    0.00%   28.38%    0.00%    0.00%
 24  1    12    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.10%    0.00%    0.00%    0.00%
 25  1    13    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 26  1    14    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 27  1    15    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 28  1    16    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 29  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 30  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 31  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 32  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 33  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 34  1     6    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%   42.80%    0.00%    0.00%
 35  1     7    1  |1 0>          0.00%    0.00%    0.00%    0.00%   23.62%    0.00%    0.00%    0.00%
 36  1     8    1  |1 0>          0.00%    0.00%    0.00%   23.62%    0.00%    0.00%    0.00%    2.15%
 37  1     9    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   42.83%    0.00%
 38  1    10    1  |1 0>          0.00%    0.00%    0.00%    1.44%    0.00%    0.00%    0.00%   51.34%
 39  1    11    1  |1 0>          0.00%    0.00%    0.00%    0.00%    1.45%    0.00%    0.00%    0.00%
 40  1    12    1  |1 0>          0.00%    0.14%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 41  1    13    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 42  1    14    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 43  1    15    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 44  1    16    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 45  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 46  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 47  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 48  1     4    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 49  1     5    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 50  1     6    1  |1 1>-         0.00%    0.00%    0.00%   38.85%    0.00%    0.00%    0.00%    3.98%
 51  1     7    1  |1 1>-         1.38%    0.00%   48.60%    0.00%    0.00%    0.00%    4.76%    0.00%
 52  1     8    1  |1 1>-         0.00%   49.02%    0.00%    0.00%    0.00%    0.21%    0.00%    0.00%
 53  1     9    1  |1 1>-         0.00%    0.00%    0.00%    0.00%   35.98%    0.00%    0.00%    0.00%
 54  1    10    1  |1 1>-         0.00%    0.90%    0.00%    0.00%    0.00%   28.40%    0.00%    0.00%
 55  1    11    1  |1 1>-        48.67%    0.00%    1.39%    0.00%    0.00%    0.00%   23.84%    0.00%
 56  1    12    1  |1 1>-         0.00%    0.00%    0.00%    0.09%    0.00%    0.00%    0.00%   35.64%
 57  1    13    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 58  1    14    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 59  1    15    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 60  1    16    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.     41       42       43       44       45       46       47       48

  1  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.01%
  2  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  3  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  4  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  5  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  6  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  7  1     7    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   78.64%    0.00%
  8  1     8    1  |0 0>          0.00%    0.00%    0.00%    0.00%   78.64%    0.00%    0.00%    0.00%
  9  1     9    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%   78.64%    0.00%    0.00%
 10  1    10    1  |0 0>          0.00%    0.00%    0.10%   78.53%    0.00%    0.00%    0.00%    0.00%
 11  1    11    1  |0 0>          0.00%    0.00%   78.51%    0.10%    0.00%    0.00%    0.00%    0.00%
 12  1    12    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    2.08%
 13  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 14  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 15  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 16  1     4    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 17  1     5    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 18  1     6    1  |1 1>+         3.98%    0.00%    0.00%    0.00%    0.00%    0.00%    0.29%    0.00%
 19  1     7    1  |1 1>+         0.00%    0.18%    0.01%    0.39%    0.00%    0.00%    0.00%    0.00%
 20  1     8    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.46%    0.00%    0.00%    0.00%
 21  1     9    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.29%    0.00%    0.00%
 22  1    10    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 23  1    11    1  |1 1>+         0.00%   21.32%    0.34%    0.08%    0.00%    0.00%    0.00%    0.00%
 24  1    12    1  |1 1>+        35.64%    0.00%    0.00%    0.00%    0.00%    0.00%    0.17%    0.00%
 25  1    13    1  |1 1>+         0.00%    0.00%    0.00%    0.00%   10.07%    0.00%    0.00%    0.00%
 26  1    14    1  |1 1>+         0.00%    0.00%    3.36%   10.08%    0.00%    0.00%    0.00%   32.64%
 27  1    15    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   10.07%    0.00%
 28  1    16    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 29  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 30  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 31  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 32  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 33  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 34  1     6    1  |1 0>          0.00%    0.00%    0.00%    0.29%    0.00%    0.00%    0.00%    0.00%
 35  1     7    1  |1 0>          2.16%    0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    0.00%
 36  1     8    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    0.00%    0.00%
 37  1     9    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.29%    0.00%    0.00%    0.00%
 38  1    10    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.45%    0.00%    0.00%
 39  1    11    1  |1 0>         51.33%    0.00%    0.00%    0.00%    0.00%    0.00%    0.45%    0.00%
 40  1    12    1  |1 0>          0.00%   57.01%    0.52%    0.00%    0.00%    0.00%    0.00%    0.00%
 41  1    13    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%   10.07%    0.00%    0.00%
 42  1    14    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   10.07%    0.00%
 43  1    15    1  |1 0>          0.00%    0.00%   13.43%    0.00%    0.00%    0.00%    0.00%   32.64%
 44  1    16    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 45  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 46  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 47  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 48  1     4    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 49  1     5    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 50  1     6    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.29%    0.00%    0.00%
 51  1     7    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.46%    0.00%    0.00%    0.00%
 52  1     8    1  |1 1>-         0.00%    0.18%    0.01%    0.39%    0.00%    0.00%    0.00%    0.00%
 53  1     9    1  |1 1>-         6.89%    0.00%    0.00%    0.00%    0.00%    0.00%    0.29%    0.00%
 54  1    10    1  |1 1>-         0.00%   21.31%    0.34%    0.08%    0.00%    0.00%    0.00%    0.00%
 55  1    11    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 56  1    12    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.17%    0.00%    0.00%
 57  1    13    1  |1 1>-         0.00%    0.00%    3.37%   10.07%    0.00%    0.00%    0.00%   32.64%
 58  1    14    1  |1 1>-         0.00%    0.00%    0.00%    0.00%   10.07%    0.00%    0.00%    0.00%
 59  1    15    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%   10.07%    0.00%    0.00%
 60  1    16    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.     49       50       51       52       53       54       55       56

  1  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  3  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  4  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  5  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  6  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  7  1     7    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%   20.02%    0.00%    0.00%
  8  1     8    1  |0 0>          0.00%    0.00%    0.00%   20.02%    0.00%    0.00%    0.00%    0.00%
  9  1     9    1  |0 0>          0.00%    0.00%    0.00%    0.00%   20.02%    0.00%    0.00%    0.00%
 10  1    10    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   20.00%    0.03%
 11  1    11    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.03%   20.01%
 12  1    12    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 13  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 14  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 15  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 16  1     4    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 17  1     5    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 18  1     6    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.03%    0.00%    0.00%
 19  1     7    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.05%    0.00%
 20  1     8    1  |1 1>+         0.00%    0.00%    0.00%    0.06%    0.00%    0.00%    0.00%    0.00%
 21  1     9    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.03%    0.00%    0.00%    0.00%
 22  1    10    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 23  1    11    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    0.04%
 24  1    12    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.02%    0.00%    0.00%
 25  1    13    1  |1 1>+        49.66%    0.00%    0.00%   39.92%    0.00%    0.00%    0.00%    0.00%
 26  1    14    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   39.90%   13.31%
 27  1    15    1  |1 1>+         0.00%    0.00%   49.65%    0.00%    0.00%   39.92%    0.00%    0.00%
 28  1    16    1  |1 1>+         0.00%    0.69%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 29  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 30  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 31  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 32  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 33  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 34  1     6    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.03%    0.00%
 35  1     7    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 36  1     8    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 37  1     9    1  |1 0>          0.00%    0.00%    0.00%    0.03%    0.00%    0.00%    0.00%    0.00%
 38  1    10    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.05%    0.00%    0.00%    0.00%
 39  1    11    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.05%    0.00%    0.00%
 40  1    12    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.06%
 41  1    13    1  |1 0>          0.00%   49.66%    0.00%    0.00%   39.91%    0.00%    0.00%    0.00%
 42  1    14    1  |1 0>          0.00%    0.00%   49.66%    0.00%    0.00%   39.91%    0.00%    0.00%
 43  1    15    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   53.21%
 44  1    16    1  |1 0>          0.69%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 45  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 46  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 47  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 48  1     4    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 49  1     5    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 50  1     6    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.03%    0.00%    0.00%    0.00%
 51  1     7    1  |1 1>-         0.00%    0.00%    0.00%    0.06%    0.00%    0.00%    0.00%    0.00%
 52  1     8    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.05%    0.00%
 53  1     9    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.03%    0.00%    0.00%
 54  1    10    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    0.04%
 55  1    11    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 56  1    12    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.02%    0.00%    0.00%    0.00%
 57  1    13    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   39.92%   13.29%
 58  1    14    1  |1 1>-        49.66%    0.00%    0.00%   39.92%    0.00%    0.00%    0.00%    0.00%
 59  1    15    1  |1 1>-         0.00%   49.65%    0.00%    0.00%   39.92%    0.00%    0.00%    0.00%
 60  1    16    1  |1 1>-         0.00%    0.00%    0.69%    0.00%    0.00%    0.00%    0.00%    0.00%

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
 12  1    12    1  |0 0>          0.00%    0.00%    0.00%   97.92%
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
 25  1    13    1  |1 1>+         0.34%    0.00%    0.00%    0.00%
 26  1    14    1  |1 1>+         0.00%    0.00%    0.00%    0.69%
 27  1    15    1  |1 1>+         0.00%    0.00%    0.34%    0.00%
 28  1    16    1  |1 1>+         0.00%   99.31%    0.00%    0.00%
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
 41  1    13    1  |1 0>          0.00%    0.34%    0.00%    0.00%
 42  1    14    1  |1 0>          0.00%    0.00%    0.34%    0.00%
 43  1    15    1  |1 0>          0.00%    0.00%    0.00%    0.69%
 44  1    16    1  |1 0>         99.31%    0.00%    0.00%    0.00%
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
 57  1    13    1  |1 1>-         0.00%    0.00%    0.00%    0.69%
 58  1    14    1  |1 1>-         0.34%    0.00%    0.00%    0.00%
 59  1    15    1  |1 1>-         0.00%    0.34%    0.00%    0.00%
 60  1    16    1  |1 1>-         0.00%    0.00%   99.31%    0.00%



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       35.62       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       7      246.99       700     1000      520     2100     2140     5101     5103   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *      2665.55   2205.95    319.76    136.47      1.74      0.02      1.18
 REAL TIME  *      2741.01 SEC
 DISK USED  *       282.67 MB (local),        6.73 GB (total)
 SF USED    *         1.63 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCVTZ-PP energy=    -25.233888060475

              CI              CI           MULTI         RHF-SCF
    -25.21860316    -25.21514531    -25.00437856    -25.09500683
 **********************************************************************************************************************************
 Molpro calculation terminated
