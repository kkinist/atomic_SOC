
 Working directory              : /wrk/irikura/molpro.SeJXHXX5Bz/
 Global scratch directory       : /wrk/irikura/molpro.SeJXHXX5Bz/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.SeJXHXX5Bz/

 id        : nistki

 Nodes            nprocs
 pn125343.nist.gov    6
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1042), CPU time= 0.01 sec
 ***,Ra SO-CI
 memory,8,G
 
 gprint,orbitals,civector;
 
 symmetry,xyz
 geometry={Ra};
 
 basis=aug-cc-pwCVTZ-PP
 
 {rhf,so-sci;wf,sym=1,spin=0}
 
 NSING=7
 NTRIP=16
 
                                                                                 ! active space (2/10) as orbitals [7 3]
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
 
 {ci;hlsmat,ecp,5101.2,5103.2;print,vls=0,hls=0}                                 !compute and diagonalize SO matrix
 Commands initialized (847), CPU time= 0.01 sec, 718 directives.
 Default parameters read. Elapsed time= 0.10 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2024.1 linked Wed Jan 31 05:42:09 2024


 **********************************************************************************************************************************
 LABEL *   Ra SO-CI                                                                                                                                                      
  (64 PROC) 64 bit mpp version                                                           DATE: 08-May-24          TIME: 11:04:01  
 **********************************************************************************************************************************

 SHA1:             675817fde4514a4a933b69e420913a90cee4ef91
 **********************************************************************************************************************************

 Memory per process:      8000 MW
 Total memory per node:  48000 MW

 GA preallocation disabled
 GA check disabled

 Variable memory set to 8000.0 MW


 ZSYMEL=XYZ

 SETTING BASIS          =    AUG-CC-PWCVTZ-PP


 Recomputing integrals since basis changed


 Using spherical harmonics

 Library entry Ra   ECP ECP78MDF                 selected for group  1
 Library entry RA     S aug-cc-pwCVTZ-PP     selected for orbital group  1
 Library entry RA     P aug-cc-pwCVTZ-PP     selected for orbital group  1
 Library entry RA     D aug-cc-pwCVTZ-PP     selected for orbital group  1
 Library entry RA     F aug-cc-pwCVTZ-PP     selected for orbital group  1


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

   1  RA     10.00    0.000000000    0.000000000    0.000000000

 NUCLEAR CHARGE:                   10
 NUMBER OF PRIMITIVE AOS:         147
 NUMBER OF SYMMETRY AOS:          124
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

         1 0.182E-04 0.135E-02 0.135E-02 0.135E-02 0.135E-02 0.135E-02 0.174E-02 0.866E-02
         2 0.436E-02 0.436E-02 0.436E-02 0.234E-01 0.234E-01 0.234E-01 0.101E+00 0.101E+00


 Contracted 2-electron integrals neglected if value below      1.0D-12
 AO integral compression algorithm  1   Integral accuracy      1.0D-12

     12.583 MB (compressed) written to integral file ( 18.0%)

     Node minimum: 1.573 MB, node maximum: 2.884 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:     624708.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:     624708      RECORD LENGTH: 524288

 Memory used in sort:       1.18 MW

 SORT1 READ     8662933. AND WROTE      128226. INTEGRALS IN      1 RECORDS. CPU TIME:     0.04 SEC, REAL TIME:     0.04 SEC
 SORT2 READ      777925. AND WROTE     3749011. INTEGRALS IN     66 RECORDS. CPU TIME:     0.02 SEC, REAL TIME:     0.03 SEC

 Node minimum:      624054.  Node maximum:      627260. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      19       28.80       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         1.10      0.93
 REAL TIME  *         3.86 SEC
 DISK USED  *        29.13 MB (local),      204.12 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 Program * Restricted Hartree-Fock

 Orbital guess generated from atomic densities.

 Initial occupancy:   2   3
 
 SO-SCI SOLVER WITH NELEC=10 SYM=1 MS2=0 THRE=1.0D-08 THRG=3.2D-06
 
 Authors: D.A. Kreplin, H.-J. Werner (2022)
 
 Number of closed-shell orbitals:                 4   (    1    3)
 Number of doubly occupied active orbitals:       1   (    1    0)
 Number of non-occupied active orbitals:          3   (    0    3)
 Number of virtual orbitals:                     79   (   36   43)
 
 ITER.  MIC  NCI          ENERGY    ENERGY CHANGE          GRAD      ORB GRAD        CI RES  NQN        STEP      TIME
    1    1    0     -23.68006921     -23.68006921    0.00086685    0.00086685    0.00000000    0    0.69E-03      0.03
    2    1    0     -23.68006960      -0.00000039    0.00017362    0.00017362    0.00000000    0    0.12E-03      0.07
    3    1    0     -23.68006961      -0.00000001    0.00002835    0.00002835    0.00000000    1    0.15E-04      0.10

 CONVERGENCE REACHED!  Final gradient:     0.00000299 ( 0.30E-05)
                       Final energy:     -23.68006961
 

 Final occupancy:   2   3

 !RHF STATE 1.1 Energy                -23.680069609315
  RHF One-electron energy             -39.023974110299
  RHF Two-electron energy              15.343904500984
  RHF Kinetic energy                    6.017192448461
  RHF Nuclear energy                    0.000000000000
  RHF Virial quotient                  -3.935401736298

 !RHF STATE 1.1 Dipole moment           0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 ELECTRON ORBITALS
 =================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -1.58866     1  1  s    0.99992
    2.1     2.00000    -0.16545     1  2  s    0.99971
    1.2     2.00000    -0.80466     1  1  pz   0.99687
    2.2     2.00000    -0.80466     1  1  px   0.95943    1  1  py  -0.28110
    3.2     2.00000    -0.80466     1  1  px   0.28127    1  1  py   0.95645


 HOMO      2.1    -0.165446 =      -4.5020eV
 LUMO      4.2     0.008657 =       0.2356eV
 LUMO-HOMO         0.174103 =       4.7376eV

 Orbitals saved in record  2100.2


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      19       28.80       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    

              2       4        0.47       700     1000      520     2100   
                                         GEOM     BASIS   MCVARS     RHF  

 PROGRAMS   *        TOTAL   RHF-SCF       INT
 CPU TIMES  *         1.21      0.11      0.93
 REAL TIME  *         4.00 SEC
 DISK USED  *        29.85 MB (local),      208.44 MB (total)
 SF USED    *         2.01 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING NSING          =         7.00000000                                  
 SETTING NTRIP          =        16.00000000                                  

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of closed-shell orbitals:   4 (    1    3)
 Number of active  orbitals:       10 (    7    3)
 Number of external orbitals:      73 (   30   43)

 State symmetry 1

 Number of active electrons:   2    Spin symmetry=Singlet   Space symmetry=1
 Number of states:             7
 Number of CSFs:              34   (58 determinants, 100 intermediate states)

 State symmetry 2

 Number of active electrons:   2    Spin symmetry=Triplet   Space symmetry=1
 Number of states:            16
 Number of CSFs:              24   (24 determinants, 45 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL (state 1.1)
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.225D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.127D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.255D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.257D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.173D-03 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 4 6 5 3 2 3 5   4 6 2 1 5 3 4 6 2 1   3 5 4 6 2 2 3 5 4 6   1 2 3 6 4 5 1 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.789D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.235D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.272D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.448D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.444D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.133D-01 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 1 2 3 2 1 1 2 3 2   1 3 9 7 810 4 5 6 3   2 1 5 4 7 9 6 810 4   5 7 9 6 810 2 1 3 5
                                        4 6 9 710 8 3 1 2

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.04348   0.04348   0.04348   0.04348   0.04348   0.04348   0.04348
 Weight factors for state symmetry  2:    0.04348   0.04348   0.04348   0.04348   0.04348   0.04348   0.04348   0.04348
                                          0.04348   0.04348   0.04348   0.04348   0.04348   0.04348   0.04348   0.04348
 
 Number of orbital rotations:  514  ( 16 closed/active, 159 closed/virtual, 0 active/active, 339 active/virtual )
 Total number of variables:    1304
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1   16   30    6    -23.49033252     -23.60036657   -0.11003405    0.06347595 0.00011772 0.00000000  0.24E+01      0.39
   2    8   14    0    -23.58714309     -23.59251974   -0.00537665    0.04208331 0.00001317 0.00000000  0.46E+00      0.71
   3    8   14    0    -23.59254601     -23.59254750   -0.00000149    0.00056755 0.00000009 0.00000000  0.66E-02      1.02
   4    4    8    0    -23.59254750     -23.59254750   -0.00000000    0.00000059 0.00000000 0.00000000  0.80E-05      1.20

 CONVERGENCE REACHED!  Final gradient:    0.00000001 ( 0.61E-08)
                       Final energy:    -23.59254750
 
 Results for state 1.1 Singlet
 =============================
 !MCSCF STATE 1.1 Singlet Energy               -23.698519066268
 Nuclear energy                                  0.00000000
 Kinetic energy                                  5.99868467
 One electron energy                           -38.96637150
 Two electron energy                            15.26785243
 Virial ratio                                    4.95061924
 
 !MCSCF STATE 1.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Singlet
 =============================
 !MCSCF STATE 2.1 Singlet Energy               -23.617130089528
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.09400239
 One electron energy                           -38.96285333
 Two electron energy                            15.34572324
 Virial ratio                                    4.87547109
 
 !MCSCF STATE 2.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Singlet
 =============================
 !MCSCF STATE 3.1 Singlet Energy               -23.617130089525
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.09400239
 One electron energy                           -38.96285333
 Two electron energy                            15.34572324
 Virial ratio                                    4.87547109
 
 !MCSCF STATE 3.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Singlet
 =============================
 !MCSCF STATE 4.1 Singlet Energy               -23.617130089525
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.09400239
 One electron energy                           -38.96285333
 Two electron energy                            15.34572324
 Virial ratio                                    4.87547109
 
 !MCSCF STATE 4.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Singlet
 =============================
 !MCSCF STATE 5.1 Singlet Energy               -23.617130089523
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.09400239
 One electron energy                           -38.96285333
 Two electron energy                            15.34572324
 Virial ratio                                    4.87547109
 
 !MCSCF STATE 5.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Singlet
 =============================
 !MCSCF STATE 6.1 Singlet Energy               -23.617130089522
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.09400239
 One electron energy                           -38.96285333
 Two electron energy                            15.34572324
 Virial ratio                                    4.87547109
 
 !MCSCF STATE 6.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.1 Singlet
 =============================
 !MCSCF STATE 7.1 Singlet Energy               -23.576002351934
 Nuclear energy                                  0.00000000
 Kinetic energy                                  5.94126846
 One electron energy                           -38.07891145
 Two electron energy                            14.50290910
 Virial ratio                                    4.96817658
 
 !MCSCF STATE 7.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.1 Triplet
 =============================
 !MCSCF STATE 1.1 Triplet Energy               -23.626545830391
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.11290129
 One electron energy                           -39.08684686
 Two electron energy                            15.46030103
 Virial ratio                                    4.86502983
 
 !MCSCF STATE 1.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Triplet
 =============================
 !MCSCF STATE 2.1 Triplet Energy               -23.626545830390
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.11290129
 One electron energy                           -39.08684686
 Two electron energy                            15.46030103
 Virial ratio                                    4.86502983
 
 !MCSCF STATE 2.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Triplet
 =============================
 !MCSCF STATE 3.1 Triplet Energy               -23.626545830389
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.11290129
 One electron energy                           -39.08684686
 Two electron energy                            15.46030103
 Virial ratio                                    4.86502983
 
 !MCSCF STATE 3.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Triplet
 =============================
 !MCSCF STATE 4.1 Triplet Energy               -23.626545830380
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.11290129
 One electron energy                           -39.08684686
 Two electron energy                            15.46030103
 Virial ratio                                    4.86502983
 
 !MCSCF STATE 4.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Triplet
 =============================
 !MCSCF STATE 5.1 Triplet Energy               -23.626545830375
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.11290129
 One electron energy                           -39.08684686
 Two electron energy                            15.46030103
 Virial ratio                                    4.86502983
 
 !MCSCF STATE 5.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Triplet
 =============================
 !MCSCF STATE 6.1 Triplet Energy               -23.583387705683
 Nuclear energy                                  0.00000000
 Kinetic energy                                  5.88487892
 One electron energy                           -37.89556132
 Two electron energy                            14.31217361
 Virial ratio                                    5.00745504
 
 !MCSCF STATE 6.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.1 Triplet
 =============================
 !MCSCF STATE 7.1 Triplet Energy               -23.558866970217
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.10453951
 One electron energy                           -38.71438591
 Two electron energy                            15.15551894
 Virial ratio                                    4.85923737
 
 !MCSCF STATE 7.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.1 Triplet
 =============================
 !MCSCF STATE 8.1 Triplet Energy               -23.558866970196
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.10453951
 One electron energy                           -38.71438592
 Two electron energy                            15.15551895
 Virial ratio                                    4.85923737
 
 !MCSCF STATE 8.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 9.1 Triplet
 =============================
 !MCSCF STATE 9.1 Triplet Energy               -23.558866970194
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.10453951
 One electron energy                           -38.71438592
 Two electron energy                            15.15551895
 Virial ratio                                    4.85923737
 
 !MCSCF STATE 9.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 10.1 Triplet
 ==============================
 !MCSCF STATE 10.1 Triplet Energy              -23.553671852499
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.22578996
 One electron energy                           -39.15652839
 Two electron energy                            15.60285654
 Virial ratio                                    4.78324229
 
 !MCSCF STATE 10.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 11.1 Triplet
 ==============================
 !MCSCF STATE 11.1 Triplet Energy              -23.553671852497
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.22578996
 One electron energy                           -39.15652839
 Two electron energy                            15.60285653
 Virial ratio                                    4.78324229
 
 !MCSCF STATE 11.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 12.1 Triplet
 ==============================
 !MCSCF STATE 12.1 Triplet Energy              -23.553671852497
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.22578996
 One electron energy                           -39.15652839
 Two electron energy                            15.60285653
 Virial ratio                                    4.78324229
 
 !MCSCF STATE 12.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 13.1 Triplet
 ==============================
 !MCSCF STATE 13.1 Triplet Energy              -23.553671852496
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.22578996
 One electron energy                           -39.15652839
 Two electron energy                            15.60285653
 Virial ratio                                    4.78324229
 
 !MCSCF STATE 13.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 14.1 Triplet
 ==============================
 !MCSCF STATE 14.1 Triplet Energy              -23.553671852494
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.22578996
 One electron energy                           -39.15652839
 Two electron energy                            15.60285653
 Virial ratio                                    4.78324229
 
 !MCSCF STATE 14.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 15.1 Triplet
 ==============================
 !MCSCF STATE 15.1 Triplet Energy              -23.553671852494
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.22578996
 One electron energy                           -39.15652839
 Two electron energy                            15.60285653
 Virial ratio                                    4.78324229
 
 !MCSCF STATE 15.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 16.1 Triplet
 ==============================
 !MCSCF STATE 16.1 Triplet Energy              -23.553671852491
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.22578996
 One electron energy                           -39.15652838
 Two electron energy                            15.60285653
 Virial ratio                                    4.78324229
 
 !MCSCF STATE 16.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 ? Warning
 ? Transition properties are only calculated between states of the same symmetry
 ? The problem occurs in mu_properties_expec2

 !MCSCF expec      <1.1 Singlet|LXLX|1.1 Singlet>     0.000000000000
 !MCSCF expec      <2.1 Singlet|LXLX|2.1 Singlet>     3.851158796734
 !MCSCF expec      <3.1 Singlet|LXLX|3.1 Singlet>     3.999999999633
 !MCSCF expec      <4.1 Singlet|LXLX|4.1 Singlet>     1.000000000000
 !MCSCF expec      <5.1 Singlet|LXLX|5.1 Singlet>     0.999999976122
 !MCSCF expec      <6.1 Singlet|LXLX|6.1 Singlet>     0.148855670978
 !MCSCF expec      <7.1 Singlet|LXLX|7.1 Singlet>    -0.000000000000
 !MCSCF expec      <1.1 Triplet|LXLX|1.1 Triplet>     1.000000000000
 !MCSCF expec      <2.1 Triplet|LXLX|2.1 Triplet>     2.045440501080
 !MCSCF expec      <3.1 Triplet|LXLX|3.1 Triplet>     1.000000000227
 !MCSCF expec      <4.1 Triplet|LXLX|4.1 Triplet>     1.954606490795
 !MCSCF expec      <5.1 Triplet|LXLX|5.1 Triplet>     4.000000000000
 !MCSCF expec      <6.1 Triplet|LXLX|6.1 Triplet>    -0.000000000000
 !MCSCF expec      <7.1 Triplet|LXLX|7.1 Triplet>     0.000000000006
 !MCSCF expec      <8.1 Triplet|LXLX|8.1 Triplet>     1.000000000000
 !MCSCF expec      <9.1 Triplet|LXLX|9.1 Triplet>     0.999999999993
 !MCSCF expec    <10.1 Triplet|LXLX|10.1 Triplet>     3.618129514788
 !MCSCF expec    <11.1 Triplet|LXLX|11.1 Triplet>     0.234690518304
 !MCSCF expec    <12.1 Triplet|LXLX|12.1 Triplet>     7.393701634353
 !MCSCF expec    <13.1 Triplet|LXLX|13.1 Triplet>     3.999999764022
 !MCSCF expec    <14.1 Triplet|LXLX|14.1 Triplet>     6.381788132990
 !MCSCF expec    <15.1 Triplet|LXLX|15.1 Triplet>     2.606335453643
 !MCSCF expec    <16.1 Triplet|LXLX|16.1 Triplet>     3.765305396936
 
 !MCSCF expec      <1.1 Singlet|LYLY|1.1 Singlet>    -0.000000000000
 !MCSCF expec      <2.1 Singlet|LYLY|2.1 Singlet>     1.730094553900
 !MCSCF expec      <3.1 Singlet|LYLY|3.1 Singlet>     1.000000000344
 !MCSCF expec      <4.1 Singlet|LYLY|4.1 Singlet>     4.000000000000
 !MCSCF expec      <5.1 Singlet|LYLY|5.1 Singlet>     1.000000043683
 !MCSCF expec      <6.1 Singlet|LYLY|6.1 Singlet>     2.269867590224
 !MCSCF expec      <7.1 Singlet|LYLY|7.1 Singlet>    -0.000000000000
 !MCSCF expec      <1.1 Triplet|LYLY|1.1 Triplet>     4.000000000000
 !MCSCF expec      <2.1 Triplet|LYLY|2.1 Triplet>     0.245676051367
 !MCSCF expec      <3.1 Triplet|LYLY|3.1 Triplet>     0.999999999822
 !MCSCF expec      <4.1 Triplet|LYLY|4.1 Triplet>     3.754301378047
 !MCSCF expec      <5.1 Triplet|LYLY|5.1 Triplet>     1.000000000000
 !MCSCF expec      <6.1 Triplet|LYLY|6.1 Triplet>    -0.000000000000
 !MCSCF expec      <7.1 Triplet|LYLY|7.1 Triplet>     1.000000000000
 !MCSCF expec      <8.1 Triplet|LYLY|8.1 Triplet>    -0.000000000000
 !MCSCF expec      <9.1 Triplet|LYLY|9.1 Triplet>     1.000000000000
 !MCSCF expec    <10.1 Triplet|LYLY|10.1 Triplet>     3.989996989134
 !MCSCF expec    <11.1 Triplet|LYLY|11.1 Triplet>     4.062268702991
 !MCSCF expec    <12.1 Triplet|LYLY|12.1 Triplet>     1.354035590230
 !MCSCF expec    <13.1 Triplet|LYLY|13.1 Triplet>     3.999999981795
 !MCSCF expec    <14.1 Triplet|LYLY|14.1 Triplet>     0.009998628430
 !MCSCF expec    <15.1 Triplet|LYLY|15.1 Triplet>     8.645945401197
 !MCSCF expec    <16.1 Triplet|LYLY|16.1 Triplet>     5.937749247186
 
 !MCSCF expec      <1.1 Singlet|LZLZ|1.1 Singlet>    -0.000000000000
 !MCSCF expec      <2.1 Singlet|LZLZ|2.1 Singlet>     0.418746649366
 !MCSCF expec      <3.1 Singlet|LZLZ|3.1 Singlet>     1.000000000023
 !MCSCF expec      <4.1 Singlet|LZLZ|4.1 Singlet>     1.000000000000
 !MCSCF expec      <5.1 Singlet|LZLZ|5.1 Singlet>     3.999999980194
 !MCSCF expec      <6.1 Singlet|LZLZ|6.1 Singlet>     3.581276738798
 !MCSCF expec      <7.1 Singlet|LZLZ|7.1 Singlet>     0.000000000000
 !MCSCF expec      <1.1 Triplet|LZLZ|1.1 Triplet>     1.000000000000
 !MCSCF expec      <2.1 Triplet|LZLZ|2.1 Triplet>     3.708883447553
 !MCSCF expec      <3.1 Triplet|LZLZ|3.1 Triplet>     3.999999999952
 !MCSCF expec      <4.1 Triplet|LZLZ|4.1 Triplet>     0.291092131159
 !MCSCF expec      <5.1 Triplet|LZLZ|5.1 Triplet>     1.000000000000
 !MCSCF expec      <6.1 Triplet|LZLZ|6.1 Triplet>     0.000000000000
 !MCSCF expec      <7.1 Triplet|LZLZ|7.1 Triplet>     0.999999999994
 !MCSCF expec      <8.1 Triplet|LZLZ|8.1 Triplet>     1.000000000000
 !MCSCF expec      <9.1 Triplet|LZLZ|9.1 Triplet>     0.000000000007
 !MCSCF expec    <10.1 Triplet|LZLZ|10.1 Triplet>     4.391873496079
 !MCSCF expec    <11.1 Triplet|LZLZ|11.1 Triplet>     7.703040778704
 !MCSCF expec    <12.1 Triplet|LZLZ|12.1 Triplet>     3.252262775417
 !MCSCF expec    <13.1 Triplet|LZLZ|13.1 Triplet>     4.000000254182
 !MCSCF expec    <14.1 Triplet|LZLZ|14.1 Triplet>     5.608213238580
 !MCSCF expec    <15.1 Triplet|LZLZ|15.1 Triplet>     0.747719145160
 !MCSCF expec    <16.1 Triplet|LZLZ|16.1 Triplet>     2.296945355878
 
 !MCSCF expec      <1.1 Singlet|L**2|1.1 Singlet>    -0.000000000000
 !MCSCF expec      <2.1 Singlet|L**2|2.1 Singlet>     6.000000000000
 !MCSCF expec      <3.1 Singlet|L**2|3.1 Singlet>     6.000000000000
 !MCSCF expec      <4.1 Singlet|L**2|4.1 Singlet>     6.000000000000
 !MCSCF expec      <5.1 Singlet|L**2|5.1 Singlet>     6.000000000000
 !MCSCF expec      <6.1 Singlet|L**2|6.1 Singlet>     6.000000000000
 !MCSCF expec      <7.1 Singlet|L**2|7.1 Singlet>    -0.000000000000
 !MCSCF expec      <1.1 Triplet|L**2|1.1 Triplet>     6.000000000000
 !MCSCF expec      <2.1 Triplet|L**2|2.1 Triplet>     6.000000000000
 !MCSCF expec      <3.1 Triplet|L**2|3.1 Triplet>     6.000000000000
 !MCSCF expec      <4.1 Triplet|L**2|4.1 Triplet>     6.000000000000
 !MCSCF expec      <5.1 Triplet|L**2|5.1 Triplet>     6.000000000000
 !MCSCF expec      <6.1 Triplet|L**2|6.1 Triplet>    -0.000000000000
 !MCSCF expec      <7.1 Triplet|L**2|7.1 Triplet>     2.000000000000
 !MCSCF expec      <8.1 Triplet|L**2|8.1 Triplet>     2.000000000000
 !MCSCF expec      <9.1 Triplet|L**2|9.1 Triplet>     2.000000000000
 !MCSCF expec    <10.1 Triplet|L**2|10.1 Triplet>    12.000000000000
 !MCSCF expec    <11.1 Triplet|L**2|11.1 Triplet>    12.000000000000
 !MCSCF expec    <12.1 Triplet|L**2|12.1 Triplet>    12.000000000000
 !MCSCF expec    <13.1 Triplet|L**2|13.1 Triplet>    12.000000000000
 !MCSCF expec    <14.1 Triplet|L**2|14.1 Triplet>    12.000000000000
 !MCSCF expec    <15.1 Triplet|L**2|15.1 Triplet>    12.000000000000
 !MCSCF expec    <16.1 Triplet|L**2|16.1 Triplet>    12.000000000000
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 4 6 5 3 2 1 4 5   3 2 6 1 4 5 3 2 6 1   4 5 3 2 6 4 2 3 5 6   1 4 2 3 5 6 1 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 3 2 2 1 3 1 3 2 1   3 2 410 8 7 9 6 5 1   3 2 410 8 7 9 6 5 4   6 7 9 810 5 1 3 2 4
                                        6 9 7 810 5 1 3 2
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -1.58160     1  1  s    0.99544
    2.1     0.56384    -0.05611     1  2  s    1.02325
    3.1     0.23348     0.04991     1  1  d1+ -0.95694
    4.1     0.23348     0.04991     1  1  d1-  0.95694
    5.1     0.23348     0.04991     1  1  d2+  0.95694
    6.1     0.23348     0.04991     1  1  d2-  0.95694
    7.1     0.23348     0.04991     1  1  d0   0.95694
    8.1     0.08573     0.02645     1  2  s   -0.56984    1  5  s   -0.37215    1  8  s    1.64431
    1.2     2.00000    -0.80379     1  1  px   0.99509
    2.2     2.00000    -0.80379     1  1  pz   0.99509
    3.2     2.00000    -0.80379     1  1  py   0.99509
    4.2     0.06101     0.04319     1  2  py   1.00209
    5.2     0.06101     0.04319     1  2  px   1.00209
    6.2     0.06101     0.04319     1  2  pz   1.00209
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 1 (Singlet)
 =======================================
 
 2000000 000      0.96554483      0.00000000     -0.00000000      0.00000000      0.00000000      0.00000000     -0.02297497
 b00000a 000     -0.00848336      0.00000000     -0.00000000      0.00000000     -0.00000000     -0.00000000     -0.67925750
 a00000b 000      0.00848336     -0.00000000      0.00000000     -0.00000000      0.00000000      0.00000000      0.67925750
 ab00000 000      0.00000000     -0.00000134      0.00000035      0.64651303     -0.00000000      0.00000000     -0.00000000
 ba00000 000     -0.00000000      0.00000134     -0.00000035     -0.64651303      0.00000000     -0.00000000      0.00000000
 b0a0000 000     -0.00000000     -0.00001499     -0.64651303      0.00000035     -0.00000187      0.00000519     -0.00000000
 a0b0000 000      0.00000000      0.00001499      0.64651303     -0.00000035      0.00000187     -0.00000519      0.00000000
 a000b00 000     -0.00000000      0.00000046     -0.00000187      0.00000000      0.64651302     -0.00012115      0.00000000
 b000a00 000      0.00000000     -0.00000046      0.00000187     -0.00000000     -0.64651302      0.00012115     -0.00000000
 b0000a0 000      0.00000000     -0.61173708      0.00001586     -0.00000126      0.00003963      0.20918134     -0.00000000
 a0000b0 000     -0.00000000      0.61173708     -0.00001586      0.00000126     -0.00003963     -0.20918134      0.00000000
 b00a000 000      0.00000000     -0.20918135     -0.00000006     -0.00000043     -0.00011448     -0.61173707      0.00000000
 a00b000 000     -0.00000000      0.20918135      0.00000006      0.00000043      0.00011448      0.61173707     -0.00000000
 0000000 020     -0.13614327      0.05405127     -0.00000346      0.00000011     -0.00005156     -0.27494135     -0.07390663
 0000000 002     -0.13614327     -0.26513183      0.00000687     -0.00000055      0.00001718      0.09066090     -0.07390663
 0000000 b0a     -0.00000000      0.00000563      0.24266379     -0.00000013      0.00000070     -0.00000195      0.00000000
 0000000 a0b      0.00000000     -0.00000563     -0.24266379      0.00000013     -0.00000070      0.00000195     -0.00000000
 0000000 0ba     -0.00000000      0.00000050     -0.00000013     -0.24266379     -0.00000000     -0.00000000     -0.00000000
 0000000 0ab      0.00000000     -0.00000050      0.00000013      0.24266379      0.00000000      0.00000000      0.00000000
 0000000 ab0     -0.00000000     -0.00000017      0.00000070     -0.00000000     -0.24266379      0.00004547     -0.00000000
 0000000 ba0      0.00000000      0.00000017     -0.00000070      0.00000000      0.24266379     -0.00004547      0.00000000
 0000000 200     -0.13614327      0.21108056     -0.00000341      0.00000044      0.00003438      0.18428045     -0.07390663
 0000002 000     -0.01638251      0.00000000     -0.00000000      0.00000000     -0.00000000     -0.00000000     -0.14008444
 0000ba0 000     -0.00000000     -0.00000008      0.00000033     -0.00000000     -0.11267849      0.00002111      0.00000000
 0000ab0 000      0.00000000      0.00000008     -0.00000033      0.00000000      0.11267849     -0.00002111     -0.00000000
 0020000 000     -0.04838572     -0.02173565      0.00000139     -0.00000004      0.00002073      0.11056222      0.09020026
 0000020 000     -0.04838572     -0.10661752      0.00000276     -0.00000022      0.00000691      0.03645749      0.09020026
 0000200 000     -0.04838572      0.10661752     -0.00000276      0.00000022     -0.00000691     -0.03645749      0.09020026
 0002000 000     -0.04838572      0.10661752     -0.00000276      0.00000022     -0.00000691     -0.03645749      0.09020026
 000a0b0 000     -0.00000000      0.03645749      0.00000001      0.00000008      0.00001995      0.10661752     -0.00000000
 000b0a0 000      0.00000000     -0.03645749     -0.00000001     -0.00000008     -0.00001995     -0.10661752      0.00000000
 0a0b000 000      0.00000000      0.00000020     -0.00000005     -0.09758244      0.00000000     -0.00000000     -0.00000000
 0b0a000 000     -0.00000000     -0.00000020      0.00000005      0.09758244     -0.00000000      0.00000000      0.00000000
 00a0b00 000     -0.00000000     -0.00000020      0.00000005      0.09758244      0.00000000     -0.00000000      0.00000000
 00b0a00 000      0.00000000      0.00000020     -0.00000005     -0.09758244     -0.00000000      0.00000000     -0.00000000
 0a00b00 000      0.00000000      0.00000226      0.09758244     -0.00000005      0.00000028     -0.00000078      0.00000000
 0b00a00 000     -0.00000000     -0.00000226     -0.09758244      0.00000005     -0.00000028      0.00000078     -0.00000000
 00ba000 000     -0.00000000     -0.00000226     -0.09758244      0.00000005     -0.00000028      0.00000078     -0.00000000
 00ab000 000      0.00000000      0.00000226      0.09758244     -0.00000005      0.00000028     -0.00000078      0.00000000
 0ab0000 000     -0.00000000      0.00000007     -0.00000028      0.00000000      0.09758244     -0.00001829      0.00000000
 0ba0000 000      0.00000000     -0.00000007      0.00000028     -0.00000000     -0.09758244      0.00001829     -0.00000000
 0200000 000     -0.04838572     -0.08488187      0.00000137     -0.00000018     -0.00001383     -0.07410473      0.09020026
 0b000a0 000     -0.00000000     -0.00000012      0.00000003      0.05633925     -0.00000000      0.00000000      0.00000000
 0a000b0 000      0.00000000      0.00000012     -0.00000003     -0.05633925      0.00000000     -0.00000000     -0.00000000
 00a00b0 000     -0.00000000     -0.00000131     -0.05633925      0.00000003     -0.00000016      0.00000045     -0.00000000
 00b00a0 000      0.00000000      0.00000131      0.05633925     -0.00000003      0.00000016     -0.00000045      0.00000000
 
 Energy:        -23.69851907    -23.61713009    -23.61713009    -23.61713009    -23.61713009    -23.61713009    -23.57600235
 
 
 CI Coefficients of symmetry 1 (Triplet)
 =======================================

 State:                1               2               3               4               5               6               7
 a00000a 000      0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00000000      1.00000000      0.00000000
 000a0a0 000      0.00000000      0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00000000     -0.00000000
 a0a0000 000     -0.00000000     -0.00000000     -0.00000000      0.00000000      0.99999812     -0.00000000      0.00000000
 aa00000 000      0.99999812     -0.00000000     -0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000
 a000a00 000      0.00000000     -0.00006236      0.99999812     -0.00000118      0.00000000      0.00000000      0.00000000
 a0000a0 000     -0.00000000      0.26977558      0.00001796      0.96292127     -0.00000000      0.00000000     -0.00000000
 a00a000 000      0.00000000      0.96292127      0.00005973     -0.26977558      0.00000000     -0.00000000      0.00000000
 0000aa0 000      0.00000000     -0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000000     -0.00000000
 00a0a00 000      0.00000000     -0.00000000     -0.00000000      0.00000000     -0.00000000      0.00000000      0.00000000
 0a0a000 000      0.00000000      0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00000000     -0.00000000
 0a00a00 000      0.00000000      0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000     -0.32208519
 0aa0000 000      0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000000     -0.00000000     -0.00000082
 00aa000 000     -0.00000000     -0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000000     -0.32208519
 0000000 0aa     -0.00000000     -0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000000      0.00000000
 0000000 aa0     -0.00000000      0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00000000      0.00000176
 0000000 a0a      0.00000000      0.00000000      0.00000000      0.00000000     -0.00000000     -0.00000000      0.69376195
 000aa00 000     -0.00000000      0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00000163
 00a00a0 000     -0.00000000     -0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000000     -0.55786792
 0a000a0 000      0.00000000      0.00000000      0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.00000000
 
 Energy:        -23.62654583    -23.62654583    -23.62654583    -23.62654583    -23.62654583    -23.58338771    -23.55886697

 State:                8               9              10              11              12              13              14
 a00000a 000      0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.00000000
 000a0a0 000      0.00000000     -0.00000000      0.00000000      0.00017034      0.00026630      0.99999995      0.00000484
 a0a0000 000     -0.00000000     -0.00000000      0.00000000      0.00000000     -0.00000000     -0.00000000      0.00000000
 aa00000 000     -0.00000000      0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00000000     -0.00000000
 a000a00 000     -0.00000000      0.00000000      0.00000000     -0.00000000     -0.00000000      0.00000000      0.00000000
 a0000a0 000     -0.00000000      0.00000000      0.00000000      0.00000000      0.00000000      0.00000000      0.00000000
 a00a000 000      0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00000000
 0000aa0 000     -0.00000000     -0.00000000     -0.00000000      0.00013774      0.90170150     -0.00026798     -0.00000912
 00a0a00 000      0.32208519     -0.00000000      0.04472809      0.00000000      0.00000903     -0.00000433      0.89330812
 0a0a000 000     -0.32208519      0.00000000      0.87612389      0.00000000      0.00000182     -0.00000087      0.18001924
 0a00a00 000      0.00000000      0.00000082     -0.00000000      0.86779140     -0.00012619     -0.00014619      0.00000000
 0aa0000 000      0.00000000     -0.32208519     -0.00000000     -0.00005446     -0.38671364      0.00005107      0.00000391
 00aa000 000      0.00000000      0.00000082     -0.00000000     -0.42672015      0.00008047      0.00007846     -0.00000000
 0000000 0aa      0.69376195      0.00000000     -0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000000
 0000000 aa0     -0.00000000      0.69376195     -0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000
 0000000 a0a     -0.00000000     -0.00000176      0.00000000     -0.00000000      0.00000000      0.00000000     -0.00000000
 000aa00 000     -0.00000000      0.64417039     -0.00000000     -0.00002723     -0.19335682      0.00002553      0.00000196
 00a00a0 000     -0.00000000      0.00000142     -0.00000000     -0.25465260      0.00002640      0.00003910      0.00000000
 0a000a0 000      0.55786792      0.00000000      0.48000659     -0.00000000     -0.00000416      0.00000199     -0.41181753
 
 Energy:        -23.55886697    -23.55886697    -23.55367185    -23.55367185    -23.55367185    -23.55367185    -23.55367185

 State:               15              16
 a00000a 000      0.00000000     -0.00000000
 000a0a0 000      0.00006438     -0.00000737
 a0a0000 000     -0.00000000     -0.00000000
 aa00000 000      0.00000000      0.00000000
 a000a00 000      0.00000000      0.00000000
 a0000a0 000      0.00000000     -0.00000000
 a00a000 000     -0.00000000      0.00000000
 0000aa0 000      0.43235900     -0.00001942
 00a0a00 000     -0.00000000      0.00000000
 0a0a000 000     -0.00000000     -0.00000000
 0a00a00 000     -0.00000363      0.21665191
 0aa0000 000      0.80650639      0.00000645
 00aa000 000      0.00000348      0.78607245
 0000000 0aa     -0.00000000      0.00000000
 0000000 aa0      0.00000000     -0.00000000
 0000000 a0a      0.00000000     -0.00000000
 000aa00 000      0.40325319      0.00000322
 00a00a0 000      0.00000009     -0.57892318
 0a000a0 000      0.00000000     -0.00000000
 
 Energy:        -23.55367185    -23.55367185
 


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       33.57       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       5        0.69       700     1000      520     2100     2140   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF   

 PROGRAMS   *        TOTAL     MULTI   RHF-SCF       INT
 CPU TIMES  *         2.30      1.09      0.11      0.93
 REAL TIME  *         5.43 SEC
 DISK USED  *        34.34 MB (local),      235.37 MB (total)
 SF USED    *        14.89 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

        ENERGY       LL
    -23.69851907   -0.0
    -23.61713009    6.0
    -23.61713009    6.0
    -23.61713009    6.0
    -23.61713009    6.0
    -23.61713009    6.0
    -23.57600235   -0.0
    -23.62654583    6.0
    -23.62654583    6.0
    -23.62654583    6.0
    -23.62654583    6.0
    -23.62654583    6.0
    -23.58338771   -0.0
    -23.55886697    2.0
    -23.55886697    2.0
    -23.55886697    2.0
    -23.55367185   12.0
    -23.55367185   12.0
    -23.55367185   12.0
    -23.55367185   12.0
    -23.55367185   12.0
    -23.55367185   12.0
    -23.55367185   12.0
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 7  Roots:    1   2   3   4   5   6   7
 Number of reference states: 7  Roots:    1   2   3   4   5   6   7

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
 Number of external orbitals:      73 (  30  43 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Valence orbitals related to previous ones by unitary transformation. Operators transformed.


 Number of p-space configurations:  34

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1       -23.69851907
     2       -23.61713009
     3       -23.61713009
     4       -23.61713009
     5       -23.61713009
     6       -23.61713009
     7       -23.57600235

 Number of blocks in overlap matrix:   169   Smallest eigenvalue:  0.53D+00
 Number of N-2 electron functions:     193
 Number of N-1 electron functions:    6410

 Number of internal configurations:                 7851
 Number of singly external configurations:        233627
 Number of doubly external configurations:        258732
 Total number of contracted configurations:       500210
 Total number of uncontracted configurations:    1785599

 Diagonal Coupling coefficients finished.               Storage:   3217856 words, CPU-Time:      0.54 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:    434052 words, CPU-time:      0.01 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000   -23.69851907     0.00000000    -0.20434391  0.38D-01  0.47D-01     1.00
    1     2     2     1.00000000     0.00000000   -23.61713009    -0.00000000    -0.20890919  0.43D-01  0.51D-01     1.00
    1     3     3     1.00000000     0.00000000   -23.61713009    -0.00000000    -0.20904917  0.44D-01  0.52D-01     1.00
    1     4     4     1.00000000     0.00000000   -23.61713009    -0.00000000    -0.20907484  0.44D-01  0.52D-01     1.00
    1     5     5     1.00000000     0.00000000   -23.61713009     0.00000000    -0.20916190  0.44D-01  0.52D-01     1.00
    1     6     6     1.00000000     0.00000000   -23.61713009    -0.00000000    -0.20891311  0.43D-01  0.51D-01     1.00
    1     7     7     1.00000000     0.00000000   -23.57600235     0.00000000    -0.20012848  0.45D-01  0.45D-01     1.00
    2     1     1     1.07020254    -0.20095194   -23.89947101    -0.20095194    -0.00554747  0.20D-02  0.83D-03     6.48
    2     2     2     1.07795040    -0.20000428   -23.81713437    -0.20000428    -0.00531961  0.20D-02  0.94D-03     6.48
    2     3     3     1.07788186    -0.19999892   -23.81712901    -0.19999892    -0.00532196  0.20D-02  0.94D-03     6.48
    2     4     4     1.07804759    -0.19997372   -23.81710381    -0.19997372    -0.00536110  0.21D-02  0.96D-03     6.48
    2     5     5     1.07805577    -0.19996970   -23.81709979    -0.19996970    -0.00536762  0.21D-02  0.96D-03     6.48
    2     6     6     1.07802174    -0.19996326   -23.81709335    -0.19996326    -0.00537243  0.21D-02  0.96D-03     6.48
    2     7     7     1.07620356    -0.19787022   -23.77387257    -0.19787022    -0.00532734  0.23D-02  0.88D-03     6.48
    3     1     1     1.07255782    -0.20665954   -23.90517860    -0.00570760    -0.00020509  0.67D-04  0.35D-04    11.82
    3     2     2     1.07912594    -0.20549158   -23.82262167    -0.00548729    -0.00019635  0.69D-04  0.42D-04    11.82
    3     3     3     1.07913468    -0.20549071   -23.82262079    -0.00549178    -0.00019717  0.69D-04  0.43D-04    11.82
    3     4     4     1.07915960    -0.20548948   -23.82261957    -0.00551575    -0.00019928  0.69D-04  0.44D-04    11.82
    3     5     5     1.07916491    -0.20548941   -23.82261950    -0.00551971    -0.00019946  0.69D-04  0.44D-04    11.82
    3     6     6     1.07916117    -0.20548885   -23.82261894    -0.00552559    -0.00019959  0.69D-04  0.44D-04    11.82
    3     7     7     1.07663582    -0.20327351   -23.77927587    -0.00540330    -0.00020827  0.74D-04  0.42D-04    11.82
    4     1     1     1.07343292    -0.20688419   -23.90540325    -0.00022465    -0.00001340  0.94D-05  0.16D-05    16.94
    4     2     2     1.08038813    -0.20571518   -23.82284527    -0.00022360    -0.00001735  0.18D-04  0.18D-05    16.94
    4     3     3     1.08039366    -0.20571510   -23.82284519    -0.00022440    -0.00001743  0.18D-04  0.18D-05    16.94
    4     4     4     1.08038507    -0.20571498   -23.82284507    -0.00022551    -0.00001747  0.18D-04  0.18D-05    16.94
    4     5     5     1.08039169    -0.20571496   -23.82284505    -0.00022555    -0.00001752  0.18D-04  0.18D-05    16.94
    4     6     6     1.08039259    -0.20571491   -23.82284500    -0.00022606    -0.00001755  0.18D-04  0.18D-05    16.94
    4     7     7     1.07769684    -0.20349416   -23.77949651    -0.00022065    -0.00001337  0.10D-04  0.18D-05    16.94
    5     1     1     1.07379340    -0.20690072   -23.90541979    -0.00001653    -0.00000106  0.57D-06  0.17D-06    21.88
    5     2     2     1.08094759    -0.20573872   -23.82286881    -0.00002354    -0.00000231  0.14D-05  0.34D-06    21.88
    5     3     3     1.08094702    -0.20573869   -23.82286878    -0.00002359    -0.00000233  0.14D-05  0.34D-06    21.88
    5     4     4     1.08094570    -0.20573866   -23.82286875    -0.00002368    -0.00000235  0.15D-05  0.34D-06    21.88
    5     5     5     1.08094573    -0.20573864   -23.82286873    -0.00002368    -0.00000236  0.15D-05  0.34D-06    21.88
    5     6     6     1.08094556    -0.20573864   -23.82286873    -0.00002372    -0.00000237  0.15D-05  0.34D-06    21.88
    5     7     7     1.07794633    -0.20351072   -23.77951307    -0.00001656    -0.00000130  0.10D-05  0.20D-06    21.88
    6     1     1     1.07385069    -0.20690195   -23.90542102    -0.00000124    -0.00000008  0.28D-07  0.15D-07    26.81
    6     2     2     1.08103439    -0.20574168   -23.82287177    -0.00000296    -0.00000025  0.14D-06  0.39D-07    26.81
    6     3     3     1.08103402    -0.20574168   -23.82287177    -0.00000298    -0.00000025  0.14D-06  0.40D-07    26.81
    6     4     4     1.08103412    -0.20574167   -23.82287176    -0.00000301    -0.00000026  0.15D-06  0.42D-07    26.81
    6     5     5     1.08103433    -0.20574167   -23.82287176    -0.00000303    -0.00000026  0.15D-06  0.42D-07    26.81
    6     6     6     1.08103394    -0.20574167   -23.82287176    -0.00000303    -0.00000026  0.15D-06  0.42D-07    26.81
    6     7     7     1.07799976    -0.20351237   -23.77951472    -0.00000165    -0.00000015  0.71D-07  0.32D-07    26.81
    7     1     1     1.07386433    -0.20690204   -23.90542110    -0.00000008    -0.00000001  0.34D-08  0.84D-09    31.75
    7     2     2     1.08105781    -0.20574197   -23.82287206    -0.00000029    -0.00000003  0.28D-07  0.40D-08    31.75
    7     3     3     1.08105770    -0.20574197   -23.82287206    -0.00000029    -0.00000003  0.28D-07  0.41D-08    31.75
    7     4     4     1.08105748    -0.20574197   -23.82287206    -0.00000030    -0.00000003  0.29D-07  0.43D-08    31.75
    7     5     5     1.08105746    -0.20574197   -23.82287206    -0.00000030    -0.00000003  0.29D-07  0.43D-08    31.75
    7     6     6     1.08105739    -0.20574197   -23.82287205    -0.00000030    -0.00000003  0.29D-07  0.43D-08    31.75
    7     7     7     1.07801274    -0.20351253   -23.77951489    -0.00000017    -0.00000002  0.17D-07  0.39D-08    31.75
    8     1     1     1.07386749    -0.20690204   -23.90542111    -0.00000000    -0.00000000  0.71D-09  0.23D-09    36.22
    8     2     2     1.08106485    -0.20574200   -23.82287209    -0.00000003    -0.00000000  0.29D-08  0.63D-09    36.22
    8     3     3     1.08106479    -0.20574200   -23.82287209    -0.00000003    -0.00000000  0.30D-08  0.63D-09    36.22
    8     4     4     1.08106476    -0.20574200   -23.82287209    -0.00000004    -0.00000000  0.32D-08  0.64D-09    36.22
    8     5     5     1.08106472    -0.20574200   -23.82287209    -0.00000004    -0.00000000  0.32D-08  0.64D-09    36.22
    8     6     6     1.08106472    -0.20574200   -23.82287209    -0.00000004    -0.00000000  0.32D-08  0.64D-09    36.22
    8     7     7     1.07801302    -0.20351256   -23.77951491    -0.00000002    -0.00000000  0.81D-09  0.33D-09    36.22


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I  10.4%
 S   6.1%  31.4%
 P   1.0%  21.9%  13.0%

 Initialization:   1.7%
 Other:           14.5%

 Total CPU:       36.2 seconds
 =====================================



 Wavefunction saved on  5101.2

 Reference coefficients greater than 0.0500000
 =============================================
 22000000222000           0.9335739  -0.0000000   0.0000000   0.0000000  -0.0000000  -0.0000000   0.0427257
 2/00000\222000          -0.0486920   0.0000000  -0.0000000  -0.0000000   0.0000000   0.0000000   0.9172496
 2/000\00222000          -0.0000000   0.0000000   0.0000000   0.0000000   0.8933675  -0.0000000  -0.0000000
 2/\00000222000          -0.0000000   0.0000000   0.0000000   0.8933675  -0.0000000  -0.0000000   0.0000000
 2/0\0000222000           0.0000000  -0.0000000  -0.0000000   0.0000000   0.0000000   0.8933675  -0.0000000
 2/0000\0222000           0.0000000   0.8457351   0.2878157  -0.0000000  -0.0000000   0.0000000   0.0000000
 2/00\000222000          -0.0000000  -0.2878157   0.8457350   0.0000000  -0.0000000  -0.0000000   0.0000000
 20000000222/0\           0.0000000  -0.0000000   0.0000000  -0.0000000   0.0000000  -0.2862192   0.0000000
 20000000222/\0          -0.0000000   0.0000000  -0.0000000   0.0000000  -0.2862191  -0.0000000  -0.0000000
 200000002220/\          -0.0000000  -0.0000000  -0.0000000   0.2862191   0.0000000   0.0000000  -0.0000000
 20000000222200          -0.1100183   0.0454153   0.2292415   0.0000000   0.0000000   0.0000000  -0.0839571
 20000000222002          -0.1100183  -0.2212365  -0.0752900   0.0000000  -0.0000000   0.0000000  -0.0839572
 20000000222020          -0.1100184   0.1758212  -0.1539515  -0.0000000  -0.0000000  -0.0000000  -0.0839572
 20000002222000          -0.0105589  -0.0000000  -0.0000000   0.0000000   0.0000000  -0.0000000  -0.1567537
 20000/\0222000           0.0000000   0.0000000   0.0000000   0.0000000   0.1489692  -0.0000000   0.0000000
 2000/0\0222000          -0.0000000  -0.0479933   0.1410264  -0.0000000  -0.0000000   0.0000000  -0.0000000
 20/\0000222000           0.0000000   0.0000000  -0.0000000   0.0000000   0.1290112  -0.0000000   0.0000000
 200/0\00222000           0.0000000   0.0000000  -0.0000000   0.1290111  -0.0000000   0.0000000   0.0000000
 20/00\00222000           0.0000000   0.0000000   0.0000000  -0.0000000   0.0000000   0.1290111   0.0000000
 200/\000222000           0.0000000   0.0000000   0.0000000  -0.0000000   0.0000000   0.1290111   0.0000000
 20/0\000222000          -0.0000000  -0.0000000   0.0000000  -0.1290111   0.0000000  -0.0000000  -0.0000000
 20200000222000          -0.0492794  -0.0204706  -0.1033289   0.0000000   0.0000000  -0.0000000   0.0791401
 20000200222000          -0.0492794   0.0997207   0.0339364  -0.0000000   0.0000000   0.0000000   0.0791400
 20002000222000          -0.0492796   0.0997206   0.0339363  -0.0000000   0.0000000   0.0000000   0.0791401
 20000020222000          -0.0492796  -0.0997206  -0.0339363   0.0000000   0.0000000  -0.0000000   0.0791402
 20020000222000          -0.0492795  -0.0792502   0.0693925  -0.0000000  -0.0000000  -0.0000000   0.0791401
 20/000\0222000           0.0000000  -0.0000000  -0.0000000  -0.0744846   0.0000000  -0.0000000  -0.0000000
 200/00\0222000          -0.0000000  -0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0744846   0.0000000

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.957853    0.000000    0.000000   -0.000000    0.000000   -0.000000   -0.064576
 2          -0.000000    0.756980   -0.000000    0.000000    0.000000   -0.586085   -0.000000
 3           0.000000    0.586085   -0.000000    0.000000    0.000000    0.756980   -0.000000
 4           0.000000   -0.000000    0.000000    0.957348   -0.000000    0.000000   -0.000000
 5          -0.000000   -0.000000    0.000000   -0.000000    0.957348    0.000000    0.000000
 6          -0.000000    0.000000    0.957348    0.000000   -0.000000    0.000000    0.000000
 7           0.069971    0.000000   -0.000000    0.000000   -0.000000    0.000000    0.956408

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.960024   -0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.002741
 2          -0.000000    0.957348    0.000000   -0.000000   -0.000000   -0.000000    0.000000
 3           0.000000    0.000000    0.957348    0.000000    0.000000    0.000000    0.000000
 4          -0.000000   -0.000000    0.000000    0.957348   -0.000000    0.000000   -0.000000
 5          -0.000000   -0.000000    0.000000   -0.000000    0.957348    0.000000    0.000000
 6          -0.000000   -0.000000    0.000000    0.000000    0.000000    0.957348   -0.000000
 7           0.002741    0.000000    0.000000   -0.000000    0.000000   -0.000000    0.958960


 RESULTS FOR STATE 1.1
 =====================

 Coefficient of reference function:   C(0) = 0.95785316 (fixed)   0.96046713 (relaxed)   0.96002355 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.01038185   -0.01465868   -0.14954843
 Singles      0.03114651   -0.05979497   -0.06104965
 Pairs        0.04348786    0.01300737    0.00369604
 Total        1.08501622   -0.06144628   -0.20690204
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -23.69791679
 Nuclear energy                         0.00000000
 Kinetic energy                         6.18736915
 One electron energy                  -38.97082727
 Two electron energy                   15.06540617
 Virial quotient                       -3.86358410
 Correlation energy                    -0.20750432
 !MRCI STATE 1.1 Energy               -23.905421105875

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -23.92306234 (Davidson, fixed reference)
 Cluster corrected energies           -23.92285442 (Davidson, relaxed reference)
 Cluster corrected energies           -23.92306234 (Davidson, rotated reference)

 Cluster corrected energies           -23.92027364 (Pople, fixed reference)
 Cluster corrected energies           -23.92008976 (Pople, relaxed reference)
 Cluster corrected energies           -23.92027364 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Coefficient of reference function:   C(0) = 0.75698021 (fixed)   0.95874131 (relaxed)   0.95734777 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00927333   -0.01043088   -0.13674772
 Singles      0.03462357   -0.05844585   -0.06009569
 Pairs        0.04719301   -0.00000000   -0.00889859
 Total        1.09108992   -0.06887673   -0.20574200
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -23.61713009
 Nuclear energy                         0.00000000
 Kinetic energy                         6.26724728
 One electron energy                  -38.94341064
 Two electron energy                   15.12053855
 Virial quotient                       -3.80116996
 Correlation energy                    -0.20574200
 !MRCI STATE 2.1 Energy               -23.822872091071

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -23.84161311 (Davidson, fixed reference)
 Cluster corrected energies           -23.84096101 (Davidson, relaxed reference)
 Cluster corrected energies           -23.84161311 (Davidson, rotated reference)

 Cluster corrected energies           -23.83870821 (Pople, fixed reference)
 Cluster corrected energies           -23.83812813 (Pople, relaxed reference)
 Cluster corrected energies           -23.83870821 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  6

 Coefficient of reference function:   C(0) = 0.75698023 (fixed)   0.95874133 (relaxed)   0.95734779 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00927333   -0.01043088   -0.13674773
 Singles      0.03462354   -0.05844585   -0.06009569
 Pairs        0.04719299   -0.00000000   -0.00889858
 Total        1.09108986   -0.06887673   -0.20574200
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -23.61713009
 Nuclear energy                         0.00000000
 Kinetic energy                         6.26724702
 One electron energy                  -38.94340956
 Two electron energy                   15.12053747
 Virial quotient                       -3.80117012
 Correlation energy                    -0.20574200
 !MRCI STATE 3.1 Energy               -23.822872090977

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -23.84161310 (Davidson, fixed reference)
 Cluster corrected energies           -23.84096100 (Davidson, relaxed reference)
 Cluster corrected energies           -23.84161310 (Davidson, rotated reference)

 Cluster corrected energies           -23.83870820 (Pople, fixed reference)
 Cluster corrected energies           -23.83812811 (Pople, relaxed reference)
 Cluster corrected energies           -23.83870820 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Coefficient of reference function:   C(0) = 0.95734781 (fixed)   0.95874134 (relaxed)   0.95734781 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00927332   -0.01043088   -0.13674777
 Singles      0.03462344   -0.05844581   -0.06009567
 Pairs        0.04719306    0.00000000   -0.00889856
 Total        1.09108982   -0.06887669   -0.20574200
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -23.61713009
 Nuclear energy                         0.00000000
 Kinetic energy                         6.26724676
 One electron energy                  -38.94340769
 Two electron energy                   15.12053560
 Virial quotient                       -3.80117027
 Correlation energy                    -0.20574200
 !MRCI STATE 4.1 Energy               -23.822872090812

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -23.84161309 (Davidson, fixed reference)
 Cluster corrected energies           -23.84096099 (Davidson, relaxed reference)
 Cluster corrected energies           -23.84161309 (Davidson, rotated reference)

 Cluster corrected energies           -23.83870819 (Pople, fixed reference)
 Cluster corrected energies           -23.83812811 (Pople, relaxed reference)
 Cluster corrected energies           -23.83870819 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Coefficient of reference function:   C(0) = 0.95734783 (fixed)   0.95874136 (relaxed)   0.95734783 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00927331   -0.01043087   -0.13674775
 Singles      0.03462344   -0.05844584   -0.06009568
 Pairs        0.04719302   -0.00000000   -0.00889858
 Total        1.09108977   -0.06887672   -0.20574200
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -23.61713009
 Nuclear energy                         0.00000000
 Kinetic energy                         6.26724673
 One electron energy                  -38.94340741
 Two electron energy                   15.12053532
 Virial quotient                       -3.80117029
 Correlation energy                    -0.20574200
 !MRCI STATE 5.1 Energy               -23.822872090777

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -23.84161308 (Davidson, fixed reference)
 Cluster corrected energies           -23.84096098 (Davidson, relaxed reference)
 Cluster corrected energies           -23.84161308 (Davidson, rotated reference)

 Cluster corrected energies           -23.83870818 (Pople, fixed reference)
 Cluster corrected energies           -23.83812810 (Pople, relaxed reference)
 Cluster corrected energies           -23.83870818 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.95734783 (fixed)   0.95874136 (relaxed)   0.95734783 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00927331   -0.01043087   -0.13674777
 Singles      0.03462342   -0.05844582   -0.06009567
 Pairs        0.04719304   -0.00000000   -0.00889856
 Total        1.09108976   -0.06887669   -0.20574200
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -23.61713009
 Nuclear energy                         0.00000000
 Kinetic energy                         6.26724665
 One electron energy                  -38.94340712
 Two electron energy                   15.12053503
 Virial quotient                       -3.80117034
 Correlation energy                    -0.20574200
 !MRCI STATE 6.1 Energy               -23.822872090742

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -23.84161308 (Davidson, fixed reference)
 Cluster corrected energies           -23.84096098 (Davidson, relaxed reference)
 Cluster corrected energies           -23.84161308 (Davidson, rotated reference)

 Cluster corrected energies           -23.83870818 (Pople, fixed reference)
 Cluster corrected energies           -23.83812810 (Pople, relaxed reference)
 Cluster corrected energies           -23.83870818 (Pople, rotated reference)



 RESULTS FOR STATE 7.1
 =====================

 Coefficient of reference function:   C(0) = 0.95640828 (fixed)   0.95927382 (relaxed)   0.95896045 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00872921   -0.01307213   -0.01425493
 Singles      0.03537468   -0.05923860   -0.06109693
 Pairs        0.04331933   -0.13054931   -0.12816070
 Total        1.08742322   -0.20286005   -0.20351256
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -23.57660463
 Nuclear energy                         0.00000000
 Kinetic energy                         6.13286952
 One electron energy                  -38.00685541
 Two electron energy                   14.22734050
 Virial quotient                       -3.87738804
 Correlation energy                    -0.20291028
 !MRCI STATE 7.1 Energy               -23.779514908788

 Properties without orbital relaxation:

 !MRCI STATE 7.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -23.79725398 (Davidson, fixed reference)
 Cluster corrected energies           -23.79710985 (Davidson, relaxed reference)
 Cluster corrected energies           -23.79725398 (Davidson, rotated reference)

 Cluster corrected energies           -23.79447142 (Pople, fixed reference)
 Cluster corrected energies           -23.79434357 (Pople, relaxed reference)
 Cluster corrected energies           -23.79447142 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       33.57       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       6       28.86       700     1000      520     2100     2140     5101   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *        41.22     38.91      1.09      0.11      0.93
 REAL TIME  *        46.39 SEC
 DISK USED  *        62.51 MB (local),      404.41 MB (total)
 SF USED    *       300.74 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =       -23.92306234  AU                              
 SETTING HLSDIAG(2)     =       -23.84161311  AU                              
 SETTING HLSDIAG(3)     =       -23.84161310  AU                              
 SETTING HLSDIAG(4)     =       -23.84161309  AU                              
 SETTING HLSDIAG(5)     =       -23.84161308  AU                              
 SETTING HLSDIAG(6)     =       -23.84161308  AU                              
 SETTING HLSDIAG(7)     =       -23.79725398  AU                              


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
 Number of external orbitals:      73 (  30  43 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Coulomb and exchange operators available. No transformation done.


 Number of p-space configurations:  24

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1       -23.62654583
     2       -23.62654583
     3       -23.62654583
     4       -23.62654583
     5       -23.62654583
     6       -23.58338771
     7       -23.55886697
     8       -23.55886697
     9       -23.55886697
    10       -23.55367185
    11       -23.55367185
    12       -23.55367185
    13       -23.55367185
    14       -23.55367185
    15       -23.55367185
    16       -23.55367185

 Number of blocks in overlap matrix:   329   Smallest eigenvalue:  0.79D+00
 Number of N-2 electron functions:     337
 Number of N-1 electron functions:    9566

 Number of internal configurations:                11838
 Number of singly external configurations:        349068
 Number of doubly external configurations:        453338
 Total number of contracted configurations:       814244
 Total number of uncontracted configurations:    2631580

 Diagonal Coupling coefficients finished.               Storage:   6506940 words, CPU-Time:      2.64 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:    465481 words, CPU-time:      0.02 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000   -23.62654583     0.00000000    -0.21435589  0.46D-01  0.53D-01     3.97
    1     2     2     1.00000000     0.00000000   -23.62654583     0.00000000    -0.21417571  0.46D-01  0.52D-01     3.97
    1     3     3     1.00000000     0.00000000   -23.62654583    -0.00000000    -0.21434141  0.46D-01  0.53D-01     3.97
    1     4     4     1.00000000     0.00000000   -23.62654583     0.00000000    -0.21415627  0.46D-01  0.52D-01     3.97
    1     5     5     1.00000000     0.00000000   -23.62654583    -0.00000000    -0.21435966  0.46D-01  0.53D-01     3.97
    1     6     6     1.00000000     0.00000000   -23.58338771     0.00000000    -0.19439415  0.41D-01  0.43D-01     3.97
    1     7     7     1.00000000     0.00000000   -23.55886697    -0.00000000    -0.20158226  0.35D-01  0.52D-01     3.97
    1     8     8     1.00000000     0.00000000   -23.55886697    -0.00000000    -0.20157372  0.35D-01  0.52D-01     3.97
    1     9     9     1.00000000     0.00000000   -23.55886697     0.00000000    -0.20153550  0.35D-01  0.52D-01     3.97
    1    10    10     1.00000000     0.00000000   -23.55367185    -0.00000000    -0.21584768  0.41D-01  0.60D-01     3.97
    1    11    11     1.00000000     0.00000000   -23.55367185    -0.00000000    -0.21613823  0.41D-01  0.60D-01     3.97
    1    12    12     1.00000000     0.00000000   -23.55367185    -0.00000000    -0.21599250  0.41D-01  0.60D-01     3.97
    1    13    13     1.00000000     0.00000000   -23.55367185     0.00000000    -0.21560316  0.41D-01  0.60D-01     3.97
    1    14    14     1.00000000     0.00000000   -23.55367185    -0.00000000    -0.21613715  0.41D-01  0.60D-01     3.97
    1    15    15     1.00000000     0.00000000   -23.55367185    -0.00000000    -0.21608983  0.41D-01  0.60D-01     3.97
    1    16    16     1.00000000     0.00000000   -23.55367185     0.00000000    -0.21585150  0.41D-01  0.60D-01     3.97
    2     1     1     1.07791965    -0.20263360   -23.82917943    -0.20263360    -0.00578501  0.22D-02  0.98D-03    25.29
    2     2     2     1.07793264    -0.20262825   -23.82917408    -0.20262825    -0.00579130  0.22D-02  0.98D-03    25.29
    2     3     3     1.07792277    -0.20260023   -23.82914606    -0.20260023    -0.00582648  0.22D-02  0.99D-03    25.29
    2     4     4     1.07792791    -0.20259770   -23.82914353    -0.20259770    -0.00582791  0.22D-02  0.99D-03    25.29
    2     5     5     1.07792907    -0.20259362   -23.82913945    -0.20259362    -0.00583206  0.22D-02  0.99D-03    25.29
    2     6     6     1.07479334    -0.19650549   -23.77989319    -0.19650549    -0.00444353  0.15D-02  0.66D-03    25.29
    2     7     7     1.08060894    -0.19535108   -23.75421805    -0.19535108    -0.00510932  0.19D-02  0.10D-02    25.29
    2     8     8     1.08064207    -0.19530423   -23.75417120    -0.19530423    -0.00516662  0.19D-02  0.10D-02    25.29
    2     9     9     1.08065293    -0.19530303   -23.75417000    -0.19530303    -0.00516818  0.19D-02  0.10D-02    25.29
    2    10    10     1.08066124    -0.20048432   -23.75415617    -0.20048432    -0.00518757  0.19D-02  0.10D-02    25.29
    2    11    11     1.08069059    -0.20045456   -23.75412641    -0.20045456    -0.00522141  0.19D-02  0.11D-02    25.29
    2    12    12     1.08067903    -0.20045272   -23.75412457    -0.20045272    -0.00522592  0.19D-02  0.11D-02    25.29
    2    13    13     1.08067693    -0.20045218   -23.75412404    -0.20045218    -0.00522646  0.19D-02  0.11D-02    25.29
    2    14    14     1.07272181    -0.19931285   -23.75298470    -0.19931285    -0.00490124  0.18D-02  0.99D-03    25.29
    2    15    15     1.07272217    -0.19930004   -23.75297189    -0.19930004    -0.00491416  0.18D-02  0.99D-03    25.29
    2    16    16     1.07272817    -0.19929802   -23.75296987    -0.19929802    -0.00491668  0.18D-02  0.99D-03    25.29
    3     1     1     1.07924900    -0.20865510   -23.83520093    -0.00602151    -0.00018436  0.65D-04  0.36D-04    46.75
    3     2     2     1.07924987    -0.20865481   -23.83520064    -0.00602655    -0.00018454  0.65D-04  0.36D-04    46.75
    3     3     3     1.07925815    -0.20865370   -23.83519953    -0.00605347    -0.00018587  0.65D-04  0.36D-04    46.75
    3     4     4     1.07925679    -0.20865347   -23.83519930    -0.00605577    -0.00018598  0.65D-04  0.36D-04    46.75
    3     5     5     1.07925751    -0.20865335   -23.83519918    -0.00605973    -0.00018610  0.65D-04  0.36D-04    46.75
    3     6     6     1.07813080    -0.20126283   -23.78465054    -0.00475734    -0.00013759  0.51D-04  0.23D-04    46.75
    3     7     7     1.08212924    -0.20075081   -23.75961778    -0.00539973    -0.00015107  0.48D-04  0.36D-04    46.75
    3     8     8     1.08214598    -0.20075028   -23.75961725    -0.00544605    -0.00015309  0.47D-04  0.37D-04    46.75
    3     9     9     1.08214880    -0.20074996   -23.75961693    -0.00544693    -0.00015331  0.47D-04  0.37D-04    46.75
    3    10    10     1.08214966    -0.20594506   -23.75961691    -0.00546074    -0.00015342  0.47D-04  0.37D-04    46.75
    3    11    11     1.08213470    -0.20594435   -23.75961620    -0.00548979    -0.00015276  0.47D-04  0.37D-04    46.75
    3    12    12     1.08213790    -0.20594431   -23.75961616    -0.00549159    -0.00015290  0.47D-04  0.37D-04    46.75
    3    13    13     1.08214916    -0.20594406   -23.75961592    -0.00549188    -0.00015351  0.47D-04  0.37D-04    46.75
    3    14    14     1.07245518    -0.20437404   -23.75804589    -0.00506118    -0.00015895  0.33D-04  0.45D-04    46.75
    3    15    15     1.07244931    -0.20437246   -23.75804431    -0.00507242    -0.00016006  0.34D-04  0.45D-04    46.75
    3    16    16     1.07245157    -0.20437241   -23.75804426    -0.00507440    -0.00016016  0.34D-04  0.45D-04    46.75
    4     1     1     1.08054303    -0.20887451   -23.83542034    -0.00021941    -0.00001538  0.16D-04  0.13D-05    67.78
    4     2     2     1.08054649    -0.20887450   -23.83542033    -0.00021969    -0.00001531  0.16D-04  0.13D-05    67.78
    4     3     3     1.08054315    -0.20887446   -23.83542029    -0.00022076    -0.00001538  0.16D-04  0.13D-05    67.78
    4     4     4     1.08054319    -0.20887445   -23.83542028    -0.00022098    -0.00001539  0.16D-04  0.13D-05    67.78
    4     5     5     1.08054708    -0.20887439   -23.83542022    -0.00022104    -0.00001532  0.16D-04  0.13D-05    67.78
    4     6     6     1.07946742    -0.20141812   -23.78480582    -0.00015528    -0.00000875  0.85D-05  0.86D-06    67.78
    4     7     7     1.08341234    -0.20093409   -23.75980106    -0.00018328    -0.00001151  0.12D-04  0.13D-05    67.78
    4     8     8     1.08341263    -0.20093401   -23.75980098    -0.00018373    -0.00001152  0.12D-04  0.13D-05    67.78
    4     9     9     1.08341272    -0.20093401   -23.75980098    -0.00018405    -0.00001152  0.12D-04  0.13D-05    67.78
    4    10    10     1.08341553    -0.20612850   -23.75980035    -0.00018344    -0.00001151  0.12D-04  0.13D-05    67.78
    4    11    11     1.08341083    -0.20612825   -23.75980010    -0.00018390    -0.00001152  0.12D-04  0.13D-05    67.78
    4    12    12     1.08340991    -0.20612817   -23.75980002    -0.00018386    -0.00001156  0.12D-04  0.13D-05    67.78
    4    13    13     1.08341040    -0.20612817   -23.75980002    -0.00018411    -0.00001156  0.12D-04  0.13D-05    67.78
    4    14    14     1.07307178    -0.20455202   -23.75822388    -0.00017799    -0.00001066  0.99D-05  0.14D-05    67.78
    4    15    15     1.07306970    -0.20455152   -23.75822337    -0.00017906    -0.00001075  0.10D-04  0.14D-05    67.78
    4    16    16     1.07306883    -0.20455151   -23.75822336    -0.00017910    -0.00001075  0.10D-04  0.14D-05    67.78
    5     1     1     1.08119610    -0.20889568   -23.83544151    -0.00002117    -0.00000170  0.80D-06  0.29D-06    88.19
    5     2     2     1.08119619    -0.20889565   -23.83544148    -0.00002115    -0.00000170  0.80D-06  0.29D-06    88.19
    5     3     3     1.08119597    -0.20889565   -23.83544148    -0.00002119    -0.00000170  0.80D-06  0.29D-06    88.19
    5     4     4     1.08119448    -0.20889552   -23.83544135    -0.00002107    -0.00000169  0.79D-06  0.29D-06    88.19
    5     5     5     1.08119419    -0.20889543   -23.83544126    -0.00002104    -0.00000169  0.79D-06  0.29D-06    88.19
    5     6     6     1.07992931    -0.20142868   -23.78481639    -0.00001057    -0.00000082  0.52D-06  0.11D-06    88.19
    5     7     7     1.08394272    -0.20094939   -23.75981636    -0.00001530    -0.00000094  0.41D-06  0.17D-06    88.19
    5     8     8     1.08394292    -0.20094936   -23.75981633    -0.00001534    -0.00000095  0.41D-06  0.18D-06    88.19
    5     9     9     1.08394292    -0.20094936   -23.75981633    -0.00001534    -0.00000095  0.41D-06  0.18D-06    88.19
    5    10    10     1.08394319    -0.20614383   -23.75981568    -0.00001533    -0.00000093  0.40D-06  0.17D-06    88.19
    5    11    11     1.08394207    -0.20614362   -23.75981547    -0.00001537    -0.00000095  0.41D-06  0.18D-06    88.19
    5    12    12     1.08394250    -0.20614360   -23.75981545    -0.00001543    -0.00000095  0.41D-06  0.18D-06    88.19
    5    13    13     1.08394246    -0.20614360   -23.75981545    -0.00001543    -0.00000095  0.41D-06  0.18D-06    88.19
    5    14    14     1.07324853    -0.20456597   -23.75823782    -0.00001394    -0.00000108  0.51D-06  0.21D-06    88.19
    5    15    15     1.07324796    -0.20456554   -23.75823739    -0.00001402    -0.00000108  0.52D-06  0.21D-06    88.19
    5    16    16     1.07324811    -0.20456554   -23.75823739    -0.00001403    -0.00000108  0.52D-06  0.21D-06    88.19
    6     1     1     1.08128673    -0.20889783   -23.83544366    -0.00000215    -0.00000014  0.98D-07  0.18D-07   108.66
    6     2     2     1.08128675    -0.20889780   -23.83544363    -0.00000215    -0.00000014  0.98D-07  0.18D-07   108.66
    6     3     3     1.08128668    -0.20889780   -23.83544363    -0.00000215    -0.00000014  0.98D-07  0.18D-07   108.66
    6     4     4     1.08128506    -0.20889765   -23.83544348    -0.00000213    -0.00000014  0.99D-07  0.17D-07   108.66
    6     5     5     1.08128501    -0.20889756   -23.83544339    -0.00000213    -0.00000014  0.99D-07  0.17D-07   108.66
    6     6     6     1.08003390    -0.20142973   -23.78481744    -0.00000105    -0.00000009  0.78D-07  0.86D-08   108.66
    6     7     7     1.08399283    -0.20095054   -23.75981751    -0.00000115    -0.00000005  0.20D-07  0.14D-07   108.66
    6     8     8     1.08399346    -0.20095052   -23.75981749    -0.00000116    -0.00000005  0.20D-07  0.14D-07   108.66
    6     9     9     1.08399347    -0.20095052   -23.75981749    -0.00000116    -0.00000005  0.20D-07  0.14D-07   108.66
    6    10    10     1.08399215    -0.20614496   -23.75981682    -0.00000113    -0.00000005  0.19D-07  0.14D-07   108.66
    6    11    11     1.08399254    -0.20614478   -23.75981664    -0.00000117    -0.00000005  0.20D-07  0.15D-07   108.66
    6    12    12     1.08399250    -0.20614476   -23.75981662    -0.00000116    -0.00000005  0.20D-07  0.14D-07   108.66
    6    13    13     1.08399249    -0.20614476   -23.75981662    -0.00000117    -0.00000005  0.20D-07  0.14D-07   108.66
    6    14    14     1.07326398    -0.20456732   -23.75823917    -0.00000135    -0.00000008  0.24D-07  0.16D-07   108.66
    6    15    15     1.07326376    -0.20456689   -23.75823875    -0.00000135    -0.00000008  0.24D-07  0.16D-07   108.66
    6    16    16     1.07326378    -0.20456689   -23.75823875    -0.00000135    -0.00000008  0.24D-07  0.16D-07   108.66
    7     1     1     1.08131636    -0.20889800   -23.83544383    -0.00000017    -0.00000001  0.12D-07  0.18D-08   129.08
    7     2     2     1.08131640    -0.20889796   -23.83544379    -0.00000017    -0.00000001  0.12D-07  0.18D-08   129.08
    7     3     3     1.08131637    -0.20889796   -23.83544379    -0.00000017    -0.00000001  0.12D-07  0.18D-08   129.08
    7     4     4     1.08131470    -0.20889782   -23.83544365    -0.00000017    -0.00000001  0.12D-07  0.18D-08   129.08
    7     5     5     1.08131476    -0.20889773   -23.83544356    -0.00000017    -0.00000001  0.12D-07  0.18D-08   129.08
    7     6     6     1.08005219    -0.20142985   -23.78481756    -0.00000012    -0.00000001  0.10D-07  0.11D-08   129.08
    7     7     7     1.08400294    -0.20095060   -23.75981757    -0.00000006    -0.00000000  0.43D-08  0.13D-08   129.08
    7     8     8     1.08400382    -0.20095058   -23.75981755    -0.00000006    -0.00000000  0.43D-08  0.13D-08   129.08
    7     9     9     1.08400382    -0.20095058   -23.75981755    -0.00000006    -0.00000000  0.43D-08  0.13D-08   129.08
    7    10    10     1.08400165    -0.20614502   -23.75981688    -0.00000006    -0.00000000  0.42D-08  0.13D-08   129.08
    7    11    11     1.08400305    -0.20614485   -23.75981670    -0.00000006    -0.00000000  0.43D-08  0.14D-08   129.08
    7    12    12     1.08400267    -0.20614483   -23.75981668    -0.00000006    -0.00000000  0.43D-08  0.13D-08   129.08
    7    13    13     1.08400267    -0.20614483   -23.75981668    -0.00000006    -0.00000000  0.43D-08  0.14D-08   129.08
    7    14    14     1.07326991    -0.20456740   -23.75823925    -0.00000009    -0.00000001  0.54D-08  0.77D-09   129.08
    7    15    15     1.07326973    -0.20456698   -23.75823883    -0.00000009    -0.00000001  0.55D-08  0.76D-09   129.08
    7    16    16     1.07326974    -0.20456698   -23.75823883    -0.00000009    -0.00000001  0.55D-08  0.77D-09   129.08
    8     1     1     1.08132627    -0.20889802   -23.83544385    -0.00000002    -0.00000000  0.10D-08  0.24D-09   140.47
    8     2     2     1.08132627    -0.20889798   -23.83544381    -0.00000002    -0.00000000  0.10D-08  0.24D-09   140.47
    8     3     3     1.08132627    -0.20889798   -23.83544381    -0.00000002    -0.00000000  0.10D-08  0.24D-09   140.47
    8     4     4     1.08132463    -0.20889784   -23.83544367    -0.00000002    -0.00000000  0.10D-08  0.24D-09   140.47
    8     5     5     1.08132468    -0.20889775   -23.83544358    -0.00000002    -0.00000000  0.10D-08  0.24D-09   140.47
    8     6     6     1.08005578    -0.20142986   -23.78481757    -0.00000001    -0.00000000  0.88D-09  0.20D-09   140.47
    8     7     7     1.08400293    -0.20095060   -23.75981757    -0.00000000    -0.00000000  0.43D-08  0.13D-08   140.47
    8     8     8     1.08400381    -0.20095058   -23.75981755    -0.00000000    -0.00000000  0.43D-08  0.13D-08   140.47
    8     9     9     1.08400381    -0.20095058   -23.75981755    -0.00000000    -0.00000000  0.43D-08  0.13D-08   140.47
    8    10    10     1.08400164    -0.20614502   -23.75981688    -0.00000000    -0.00000000  0.42D-08  0.13D-08   140.47
    8    11    11     1.08400305    -0.20614485   -23.75981670    -0.00000000    -0.00000000  0.43D-08  0.14D-08   140.47
    8    12    12     1.08400267    -0.20614483   -23.75981668    -0.00000000    -0.00000000  0.43D-08  0.13D-08   140.47
    8    13    13     1.08400266    -0.20614483   -23.75981668    -0.00000000    -0.00000000  0.43D-08  0.14D-08   140.47
    8    14    14     1.07326990    -0.20456740   -23.75823925    -0.00000000    -0.00000001  0.54D-08  0.77D-09   140.47
    8    15    15     1.07326973    -0.20456698   -23.75823883    -0.00000000    -0.00000001  0.55D-08  0.76D-09   140.47
    8    16    16     1.07326974    -0.20456698   -23.75823883    -0.00000000    -0.00000001  0.55D-08  0.77D-09   140.47


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   9.6%
 S   4.6%  29.5%
 P   1.0%  22.5%  15.2%

 Initialization:   1.9%
 Other:           15.7%

 Total CPU:      140.5 seconds
 =====================================



 Wavefunction saved on  5103.2

 Reference coefficients greater than 0.0500000
 =============================================
 2/00000/222000          -0.0000000   0.0000000   0.0000000  -0.0000060  -0.0000000   0.9584090   0.0000000  -0.0000000
                          0.0000000  -0.0000000  -0.0000000   0.0000000  -0.0000000   0.0000000   0.0000000  -0.0000000
 2000/0/0222000          -0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0000468   0.0000000  -0.0000000  -0.0000000
                          0.0000000   0.9580869   0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.0000000
 20000//0222000          -0.0000495  -0.0000000  -0.0000000   0.0000000  -0.0000000  -0.0000000   0.9580860   0.0000000
                         -0.0000000   0.0000000   0.0000015  -0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.0000000
 2/00/000222000           0.0000000   0.0000000  -0.0000000  -0.0000047   0.9577034  -0.0000000   0.0000000  -0.0000000
                         -0.0000000   0.0000532  -0.0000000  -0.0000000   0.0000000   0.0000000   0.0000000   0.0000000
 2/0000/0222000          -0.0000000   0.0000000   0.0000000   0.9577033   0.0000047   0.0000071  -0.0000000   0.0000000
                         -0.0000000  -0.0000000  -0.0000000   0.0000000   0.0000000   0.0000000  -0.0000000  -0.0000000
 2/000/00222000           0.9577029   0.0000000   0.0000000   0.0000000  -0.0000000   0.0000000   0.0000563  -0.0000000
                         -0.0000000   0.0000000  -0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0000000   0.0000000
 2/0/0000222000          -0.0000000   0.0000000   0.9577029  -0.0000000   0.0000000  -0.0000000   0.0000000   0.0000325
                         -0.0000000   0.0000000   0.0000000   0.0000000  -0.0000397  -0.0000000   0.0000000   0.0000004
 2//00000222000          -0.0000000   0.9577029  -0.0000000  -0.0000000  -0.0000000  -0.0000000   0.0000000  -0.0000000
                         -0.0000325   0.0000000   0.0000000  -0.0000397   0.0000000   0.0000000  -0.0000004   0.0000000
 20//0000222000           0.0000000  -0.0000000  -0.0000000   0.0000000   0.0000000   0.0000000  -0.0000013  -0.0000000
                          0.0000000  -0.0000000   0.8571740   0.0000000   0.0000000  -0.3216215   0.0000000  -0.0000000
 20/0/000222000          -0.0000000   0.0000393  -0.0000000   0.0000000   0.0000000  -0.0000000   0.0000000   0.0000000
                          0.6836856  -0.0000000  -0.0000000   0.5166828  -0.0000000   0.0000000  -0.3221770  -0.0000000
 200//000222000           0.0000000   0.0000000  -0.0000393  -0.0000000   0.0000000   0.0000000  -0.0000000   0.6836756
                         -0.0000000   0.0000000   0.0000000  -0.0000000  -0.5166961  -0.0000000  -0.0000000  -0.3221770
 20/00/00222000          -0.0000000  -0.0000000   0.0000006   0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.6711625
                          0.0000000  -0.0000000   0.0000000  -0.0000000  -0.5331163  -0.0000000   0.0000000  -0.3217379
 200/0/00222000           0.0000000   0.0000006   0.0000000   0.0000000  -0.0000000   0.0000000   0.0000000   0.0000000
                          0.6711521   0.0000000   0.0000000  -0.5331294  -0.0000000  -0.0000000   0.3217379   0.0000000
 2000//00222000          -0.0000000  -0.0000000  -0.0000000   0.0000000   0.0000000  -0.0000000  -0.0000007   0.0000000
                          0.0000000  -0.0000000   0.4279977   0.0000000  -0.0000000   0.6447959   0.0000000   0.0000000
 20000000222//0           0.0000000  -0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.0000000   0.0000000
                         -0.0000000  -0.0000000  -0.0004539  -0.0000000  -0.0000000   0.6379804   0.0000000   0.0000000
 200000002220//           0.0000000   0.0000003  -0.0000000   0.0000000  -0.0000000  -0.0000000   0.0000000   0.0000000
                          0.0001985   0.0000000  -0.0000000  -0.0003460  -0.0000000  -0.0000000   0.6379752   0.0000000
 20000000222/0/          -0.0000000  -0.0000000  -0.0000003   0.0000000  -0.0000000   0.0000000   0.0000000   0.0001985
                         -0.0000000   0.0000000   0.0000000   0.0000000   0.0003461  -0.0000000   0.0000000   0.6379752
 200/00/0222000           0.0000000  -0.0000000   0.0000225  -0.0000000  -0.0000000   0.0000000   0.0000000  -0.0075225
                          0.0000000   0.0000000  -0.0000000  -0.0000000   0.6055922   0.0000000   0.0000000  -0.5584767
 20/000/0222000          -0.0000000   0.0000225  -0.0000000  -0.0000000   0.0000000  -0.0000000   0.0000000   0.0000000
                          0.0075343   0.0000000  -0.0000000   0.6055921  -0.0000000   0.0000000   0.5584767  -0.0000000

 Coefficients of singly external configurations greater than 0.0500000
 =====================================================================

 2000000/222000  20.1     0.0000000  -0.0000000  -0.0000000   0.0000001  -0.0000000  -0.0624992  -0.0000000   0.0000000
                          0.0000000  -0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.0000000   0.0000000

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1          -0.000000    0.000000    0.957666   -0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.000000   -0.000000
            -0.000000   -0.000045   -0.000000    0.000000   -0.000021   -0.000000
 2           0.957666    0.000000    0.000000    0.000000    0.000000    0.000000   -0.000000    0.000000   -0.000000    0.000045
            -0.000000   -0.000000    0.000000   -0.000002   -0.000000    0.000000
 3          -0.000000   -0.000000    0.000000    0.000000    0.957666    0.000000   -0.000000   -0.000000    0.000000   -0.000000
             0.000012   -0.000000   -0.000000    0.000000   -0.000000   -0.000044
 4          -0.000000    0.258317    0.000000    0.922170   -0.000000   -0.000006    0.000000    0.000000   -0.000000    0.000000
             0.000000   -0.000000   -0.000000    0.000000    0.000000    0.000000
 5          -0.000000    0.922170   -0.000000   -0.258317    0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.000000
            -0.000000   -0.000000   -0.000047   -0.000000    0.000000    0.000000
 6          -0.000000    0.000002    0.000000    0.000007   -0.000000    0.958409    0.000000   -0.000000   -0.000000   -0.000000
            -0.000000   -0.000000    0.000000    0.000000   -0.000000    0.000000
 7           0.000000    0.000000    0.000056   -0.000000    0.000000    0.000000    0.000000    0.000000    0.000000    0.000000
            -0.000000    0.863812   -0.000000   -0.000000    0.414437   -0.000000
 8          -0.000000   -0.000000   -0.000000    0.000000    0.000032   -0.000000    0.000304    0.000000    0.000000    0.000000
            -0.872234    0.000000   -0.000000    0.000000   -0.000000    0.396403
 9          -0.000032   -0.000000   -0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.000304   -0.000000    0.632707
             0.000000   -0.000000    0.000000    0.719451    0.000000   -0.000000
 10          0.000000    0.000051    0.000000   -0.000014    0.000000   -0.000000    0.000000    0.000000    0.000000   -0.000000
            -0.000000    0.000000    0.958087   -0.000000   -0.000000   -0.000000
 11          0.000000   -0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.000000   -0.000000   -0.000694   -0.000000
            -0.000000   -0.414437    0.000000    0.000000    0.863812    0.000000
 12         -0.000040   -0.000000    0.000000    0.000000    0.000000    0.000000    0.000000   -0.000529   -0.000000    0.719452
            -0.000000   -0.000000   -0.000000   -0.632707    0.000000   -0.000000
 13          0.000000    0.000000   -0.000000    0.000000   -0.000040   -0.000000    0.000529   -0.000000   -0.000000   -0.000000
            -0.396403   -0.000000   -0.000000   -0.000000    0.000000   -0.872235
 14          0.000000    0.000000   -0.000000    0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.961555    0.000000
             0.000000   -0.000300   -0.000000   -0.000000    0.000626   -0.000000
 15         -0.000000    0.000000   -0.000000   -0.000000    0.000000    0.000000   -0.000000    0.961555    0.000000    0.000196
             0.000000   -0.000000   -0.000000   -0.000578   -0.000000   -0.000000
 16          0.000000   -0.000000    0.000000   -0.000000    0.000000   -0.000000    0.961555    0.000000    0.000000   -0.000000
             0.000496   -0.000000   -0.000000    0.000000   -0.000000    0.000356

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.957666   -0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.000003   -0.000000   -0.000000   -0.000000
            -0.000000   -0.000000   -0.000000   -0.000000    0.000000   -0.000000
 2          -0.000000    0.957666   -0.000000    0.000000   -0.000000   -0.000000   -0.000000   -0.000000   -0.000002    0.000000
            -0.000000   -0.000002   -0.000000   -0.000000   -0.000000    0.000000
 3          -0.000000   -0.000000    0.957666    0.000000    0.000000    0.000000    0.000000    0.000002    0.000000   -0.000000
             0.000000   -0.000000   -0.000002    0.000000   -0.000000    0.000000
 4           0.000000    0.000000    0.000000    0.957666    0.000000    0.000001   -0.000000   -0.000000    0.000000   -0.000000
             0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.000000
 5          -0.000000   -0.000000    0.000000    0.000000    0.957666   -0.000000   -0.000000    0.000000    0.000000    0.000003
            -0.000000    0.000000   -0.000000   -0.000000   -0.000000   -0.000000
 6          -0.000000   -0.000000    0.000000    0.000001   -0.000000    0.958409   -0.000000    0.000000   -0.000000   -0.000000
             0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.000000
 7           0.000003   -0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.958086    0.000000   -0.000000   -0.000000
             0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.000000
 8          -0.000000   -0.000000    0.000002   -0.000000    0.000000    0.000000    0.000000    0.958086   -0.000000   -0.000000
             0.000000   -0.000000   -0.000000    0.000000    0.000000    0.000001
 9          -0.000000   -0.000002    0.000000    0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.958086   -0.000000
            -0.000000    0.000000    0.000000   -0.000000    0.000001   -0.000000
 10         -0.000000    0.000000   -0.000000   -0.000000    0.000003   -0.000000   -0.000000   -0.000000   -0.000000    0.958087
            -0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.000000
 11         -0.000000   -0.000000    0.000000    0.000000   -0.000000    0.000000    0.000000    0.000000   -0.000000   -0.000000
             0.958086    0.000000    0.000000   -0.000001    0.000000   -0.000000
 12         -0.000000   -0.000002   -0.000000   -0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.000000   -0.000000
             0.000000    0.958087   -0.000000   -0.000000   -0.000001    0.000000
 13         -0.000000   -0.000000   -0.000002   -0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.000000   -0.000000
             0.000000   -0.000000    0.958087   -0.000000   -0.000000    0.000001
 14         -0.000000   -0.000000    0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.000000   -0.000000   -0.000000
            -0.000001   -0.000000   -0.000000    0.961555   -0.000000   -0.000000
 15          0.000000   -0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.000000    0.000000    0.000001    0.000000
             0.000000   -0.000001   -0.000000   -0.000000    0.961555    0.000000
 16         -0.000000    0.000000    0.000000    0.000000   -0.000000    0.000000    0.000000    0.000001   -0.000000    0.000000
            -0.000000    0.000000    0.000001   -0.000000    0.000000    0.961555


 RESULTS FOR STATE 1.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.95766596 (fixed)   0.95787457 (relaxed)   0.95766596 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00835892   -0.01215365   -0.13852232
 Singles      0.03515359   -0.05960429   -0.06139974
 Pairs        0.04685247    0.00000000   -0.00897596
 Total        1.09036498   -0.07175794   -0.20889802
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -23.62654583
 Nuclear energy                         0.00000000
 Kinetic energy                         6.27544501
 One electron energy                  -39.04684265
 Two electron energy                   15.21139880
 Virial quotient                       -3.79820774
 Correlation energy                    -0.20889802
 !MRCI STATE 1.1 Energy               -23.835443846340

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -23.85432091 (Davidson, fixed reference)
 Cluster corrected energies           -23.85422171 (Davidson, relaxed reference)
 Cluster corrected energies           -23.85432091 (Davidson, rotated reference)

 Cluster corrected energies           -23.85024678 (Pople, fixed reference)
 Cluster corrected energies           -23.85016560 (Pople, relaxed reference)
 Cluster corrected energies           -23.85024678 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.95766596 (fixed)   0.95787457 (relaxed)   0.95766596 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00835892   -0.01215362   -0.13852230
 Singles      0.03515353   -0.05960428   -0.06139971
 Pairs        0.04685254   -0.00000000   -0.00897597
 Total        1.09036499   -0.07175790   -0.20889798
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -23.62654583
 Nuclear energy                         0.00000000
 Kinetic energy                         6.27544519
 One electron energy                  -39.04684273
 Two electron energy                   15.21139892
 Virial quotient                       -3.79820763
 Correlation energy                    -0.20889798
 !MRCI STATE 2.1 Energy               -23.835443811675

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -23.85432088 (Davidson, fixed reference)
 Cluster corrected energies           -23.85422168 (Davidson, relaxed reference)
 Cluster corrected energies           -23.85432088 (Davidson, rotated reference)

 Cluster corrected energies           -23.85024675 (Pople, fixed reference)
 Cluster corrected energies           -23.85016556 (Pople, relaxed reference)
 Cluster corrected energies           -23.85024675 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.95766596 (fixed)   0.95787457 (relaxed)   0.95766596 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00835892   -0.01215362   -0.13852874
 Singles      0.03515353   -0.05960428   -0.06139971
 Pairs        0.04685254    0.00000703   -0.00896953
 Total        1.09036498   -0.07175087   -0.20889798
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -23.62654583
 Nuclear energy                         0.00000000
 Kinetic energy                         6.27544519
 One electron energy                  -39.04684273
 Two electron energy                   15.21139892
 Virial quotient                       -3.79820763
 Correlation energy                    -0.20889798
 !MRCI STATE 3.1 Energy               -23.835443811649

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -23.85432087 (Davidson, fixed reference)
 Cluster corrected energies           -23.85422167 (Davidson, relaxed reference)
 Cluster corrected energies           -23.85432087 (Davidson, rotated reference)

 Cluster corrected energies           -23.85024674 (Pople, fixed reference)
 Cluster corrected energies           -23.85016556 (Pople, relaxed reference)
 Cluster corrected energies           -23.85024674 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Coefficient of reference function:   C(0) = 0.92216970 (fixed)   0.95787493 (relaxed)   0.95766630 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00835973   -0.01215416   -0.13852335
 Singles      0.03515171   -0.05960326   -0.06139849
 Pairs        0.04685277   -0.00000000   -0.00897599
 Total        1.09036422   -0.07175742   -0.20889784
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -23.62654583
 Nuclear energy                         0.00000000
 Kinetic energy                         6.27544454
 One electron energy                  -39.04683986
 Two electron energy                   15.21139619
 Virial quotient                       -3.79820800
 Correlation energy                    -0.20889784
 !MRCI STATE 4.1 Energy               -23.835443669137

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -23.85432056 (Davidson, fixed reference)
 Cluster corrected energies           -23.85422135 (Davidson, relaxed reference)
 Cluster corrected energies           -23.85432056 (Davidson, rotated reference)

 Cluster corrected energies           -23.85024646 (Pople, fixed reference)
 Cluster corrected energies           -23.85016527 (Pople, relaxed reference)
 Cluster corrected energies           -23.85024646 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.92216982 (fixed)   0.95787505 (relaxed)   0.95766642 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00835943   -0.01215400   -0.13852317
 Singles      0.03515182   -0.05960335   -0.06139860
 Pairs        0.04685269   -0.00000000   -0.00897598
 Total        1.09036393   -0.07175734   -0.20889775
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -23.62654583
 Nuclear energy                         0.00000000
 Kinetic energy                         6.27544448
 One electron energy                  -39.04684010
 Two electron energy                   15.21139652
 Virial quotient                       -3.79820802
 Correlation energy                    -0.20889775
 !MRCI STATE 5.1 Energy               -23.835443579379

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -23.85432040 (Davidson, fixed reference)
 Cluster corrected energies           -23.85422119 (Davidson, relaxed reference)
 Cluster corrected energies           -23.85432040 (Davidson, rotated reference)

 Cluster corrected energies           -23.85024632 (Pople, fixed reference)
 Cluster corrected energies           -23.85016513 (Pople, relaxed reference)
 Cluster corrected energies           -23.85024632 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Coefficient of reference function:   C(0) = 0.95840900 (fixed)   0.95840900 (relaxed)   0.95840900 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00798030   -0.01303622   -0.13213846
 Singles      0.03844187   -0.05918150   -0.06147382
 Pairs        0.04225278   -0.00000000   -0.00781759
 Total        1.08867495   -0.07221773   -0.20142986
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -23.58338771
 Nuclear energy                         0.00000000
 Kinetic energy                         6.11052872
 One electron energy                  -37.92526010
 Two electron energy                   14.14044253
 Virial quotient                       -3.89243201
 Correlation energy                    -0.20142986
 !MRCI STATE 6.1 Energy               -23.784817569272

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -23.80267935 (Davidson, fixed reference)
 Cluster corrected energies           -23.80267935 (Davidson, relaxed reference)
 Cluster corrected energies           -23.80267935 (Davidson, rotated reference)

 Cluster corrected energies           -23.79881287 (Pople, fixed reference)
 Cluster corrected energies           -23.79881287 (Pople, relaxed reference)
 Cluster corrected energies           -23.79881287 (Pople, rotated reference)



 RESULTS FOR STATE 7.1
 =====================

 Maximum overlap with reference state 12

 Coefficient of reference function:   C(0) = 0.86381180 (fixed)   0.95808602 (relaxed)   0.95808602 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00498722   -0.00803766   -0.13497824
 Singles      0.03149249   -0.05490627   -0.05620982
 Pairs        0.05292938    0.00000000   -0.00976255
 Total        1.08940909   -0.06294393   -0.20095060
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -23.55367185
 Nuclear energy                         0.00000000
 Kinetic energy                         6.36714466
 One electron energy                  -39.09354541
 Two electron energy                   15.33372783
 Virial quotient                       -3.73162836
 Correlation energy                    -0.20614572
 !MRCI STATE 7.1 Energy               -23.759817573362

 Properties without orbital relaxation:

 !MRCI STATE 7.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -23.77824887 (Davidson, fixed reference)
 Cluster corrected energies           -23.77824887 (Davidson, relaxed reference)
 Cluster corrected energies           -23.77824887 (Davidson, rotated reference)

 Cluster corrected energies           -23.77426425 (Pople, fixed reference)
 Cluster corrected energies           -23.77426425 (Pople, relaxed reference)
 Cluster corrected energies           -23.77426425 (Pople, rotated reference)



 RESULTS FOR STATE 8.1
 =====================

 Maximum overlap with reference state 11

 Coefficient of reference function:   C(0) = 0.87223425 (fixed)   0.95808559 (relaxed)   0.95808559 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00498730   -0.00803751   -0.08059148
 Singles      0.03149353   -0.05490657   -0.05621026
 Pairs        0.05292924   -0.05924903   -0.06414883
 Total        1.08941007   -0.12219312   -0.20095058
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -23.55367185
 Nuclear energy                         0.00000000
 Kinetic energy                         6.36715491
 One electron energy                  -39.09356020
 Two electron energy                   15.33374265
 Virial quotient                       -3.73162235
 Correlation energy                    -0.20614570
 !MRCI STATE 8.1 Energy               -23.759817550307

 Properties without orbital relaxation:

 !MRCI STATE 8.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -23.77824905 (Davidson, fixed reference)
 Cluster corrected energies           -23.77824905 (Davidson, relaxed reference)
 Cluster corrected energies           -23.77824905 (Davidson, rotated reference)

 Cluster corrected energies           -23.77426439 (Pople, fixed reference)
 Cluster corrected energies           -23.77426439 (Pople, relaxed reference)
 Cluster corrected energies           -23.77426439 (Pople, rotated reference)



 RESULTS FOR STATE 9.1
 =====================

 Maximum overlap with reference state 14

 Coefficient of reference function:   C(0) = 0.71945115 (fixed)   0.95808559 (relaxed)   0.95808559 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00498730   -0.00803751   -0.13497783
 Singles      0.03149353   -0.05490657   -0.05621026
 Pairs        0.05292924    0.00000000   -0.00976249
 Total        1.08941007   -0.06294408   -0.20095058
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -23.55367185
 Nuclear energy                         0.00000000
 Kinetic energy                         6.36715490
 One electron energy                  -39.09356019
 Two electron energy                   15.33374264
 Virial quotient                       -3.73162235
 Correlation energy                    -0.20614570
 !MRCI STATE 9.1 Energy               -23.759817550306

 Properties without orbital relaxation:

 !MRCI STATE 9.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -23.77824905 (Davidson, fixed reference)
 Cluster corrected energies           -23.77824905 (Davidson, relaxed reference)
 Cluster corrected energies           -23.77824905 (Davidson, rotated reference)

 Cluster corrected energies           -23.77426439 (Pople, fixed reference)
 Cluster corrected energies           -23.77426439 (Pople, relaxed reference)
 Cluster corrected energies           -23.77426439 (Pople, rotated reference)



 RESULTS FOR STATE 10.1
 ======================

 Maximum overlap with reference state 13

 Coefficient of reference function:   C(0) = 0.95808690 (fixed)   0.95808690 (relaxed)   0.95808690 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00498657   -0.00803737   -0.13977078
 Singles      0.03149107   -0.05490570   -0.05635927
 Pairs        0.05292945    0.00000000   -0.01001498
 Total        1.08940709   -0.06294307   -0.20614502
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -23.55367185
 Nuclear energy                         0.00000000
 Kinetic energy                         6.36713256
 One electron energy                  -39.09352942
 Two electron energy                   15.33371255
 Virial quotient                       -3.73163534
 Correlation energy                    -0.20614502
 !MRCI STATE 10.1 Energy              -23.759816876579

 Properties without orbital relaxation:

 !MRCI STATE 10.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -23.77824770 (Davidson, fixed reference)
 Cluster corrected energies           -23.77824770 (Davidson, relaxed reference)
 Cluster corrected energies           -23.77824770 (Davidson, rotated reference)

 Cluster corrected energies           -23.77426317 (Pople, fixed reference)
 Cluster corrected energies           -23.77426317 (Pople, relaxed reference)
 Cluster corrected energies           -23.77426317 (Pople, rotated reference)



 RESULTS FOR STATE 11.1
 ======================

 Maximum overlap with reference state 15

 Coefficient of reference function:   C(0) = 0.86381192 (fixed)   0.95808640 (relaxed)   0.95808640 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00498632   -0.00803689   -0.13976977
 Singles      0.03149257   -0.05490641   -0.05636019
 Pairs        0.05292934   -0.00000000   -0.01001488
 Total        1.08940823   -0.06294330   -0.20614485
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -23.55367186
 Nuclear energy                         0.00000000
 Kinetic energy                         6.36715928
 One electron energy                  -39.09357119
 Two electron energy                   15.33375449
 Virial quotient                       -3.73161965
 Correlation energy                    -0.20614484
 !MRCI STATE 11.1 Energy              -23.759816699380

 Properties without orbital relaxation:

 !MRCI STATE 11.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -23.77824774 (Davidson, fixed reference)
 Cluster corrected energies           -23.77824774 (Davidson, relaxed reference)
 Cluster corrected energies           -23.77824774 (Davidson, rotated reference)

 Cluster corrected energies           -23.77426317 (Pople, fixed reference)
 Cluster corrected energies           -23.77426317 (Pople, relaxed reference)
 Cluster corrected energies           -23.77426317 (Pople, rotated reference)



 RESULTS FOR STATE 12.1
 ======================

 Maximum overlap with reference state 10

 Coefficient of reference function:   C(0) = 0.71945219 (fixed)   0.95808660 (relaxed)   0.95808660 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00498625   -0.00803695   -0.13976996
 Singles      0.03149215   -0.05490624   -0.05635995
 Pairs        0.05292937    0.00000000   -0.01001491
 Total        1.08940778   -0.06294318   -0.20614483
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -23.55367185
 Nuclear energy                         0.00000000
 Kinetic energy                         6.36715159
 One electron energy                  -39.09355929
 Two electron energy                   15.33374261
 Virial quotient                       -3.73162416
 Correlation energy                    -0.20614482
 !MRCI STATE 12.1 Energy              -23.759816678258

 Properties without orbital relaxation:

 !MRCI STATE 12.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -23.77824763 (Davidson, fixed reference)
 Cluster corrected energies           -23.77824763 (Davidson, relaxed reference)
 Cluster corrected energies           -23.77824763 (Davidson, rotated reference)

 Cluster corrected energies           -23.77426307 (Pople, fixed reference)
 Cluster corrected energies           -23.77426307 (Pople, relaxed reference)
 Cluster corrected energies           -23.77426307 (Pople, rotated reference)



 RESULTS FOR STATE 13.1
 ======================

 Maximum overlap with reference state 16

 Coefficient of reference function:   C(0) = 0.87223530 (fixed)   0.95808660 (relaxed)   0.95808660 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00498625   -0.00803695   -0.25944030
 Singles      0.03149215   -0.05490624   -0.05635995
 Pairs        0.05292937    0.13036980    0.10965542
 Total        1.08940777    0.06742661   -0.20614483
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -23.55367185
 Nuclear energy                         0.00000000
 Kinetic energy                         6.36715161
 One electron energy                  -39.09355931
 Two electron energy                   15.33374263
 Virial quotient                       -3.73162415
 Correlation energy                    -0.20614482
 !MRCI STATE 13.1 Energy              -23.759816678247

 Properties without orbital relaxation:

 !MRCI STATE 13.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -23.77824763 (Davidson, fixed reference)
 Cluster corrected energies           -23.77824763 (Davidson, relaxed reference)
 Cluster corrected energies           -23.77824763 (Davidson, rotated reference)

 Cluster corrected energies           -23.77426307 (Pople, fixed reference)
 Cluster corrected energies           -23.77426307 (Pople, relaxed reference)
 Cluster corrected energies           -23.77426307 (Pople, rotated reference)



 RESULTS FOR STATE 14.1
 ======================

 Maximum overlap with reference state  9

 Coefficient of reference function:   C(0) = 0.96155451 (fixed)   0.96240386 (relaxed)   0.96155476 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00772726   -0.00967256   -0.14166013
 Singles      0.02548036   -0.05293375   -0.05376145
 Pairs        0.04835572    0.00000000   -0.00914582
 Total        1.08156334   -0.06260630   -0.20456740
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -23.55886697
 Nuclear energy                         0.00000000
 Kinetic energy                         6.27994900
 One electron energy                  -38.65149627
 Two electron energy                   14.89325701
 Virial quotient                       -3.78318984
 Correlation energy                    -0.19937229
 !MRCI STATE 14.1 Energy              -23.758239254779

 Properties without orbital relaxation:

 !MRCI STATE 14.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -23.77450072 (Davidson, fixed reference)
 Cluster corrected energies           -23.77412039 (Davidson, relaxed reference)
 Cluster corrected energies           -23.77450072 (Davidson, rotated reference)

 Cluster corrected energies           -23.77093669 (Pople, fixed reference)
 Cluster corrected energies           -23.77062820 (Pople, relaxed reference)
 Cluster corrected energies           -23.77093669 (Pople, rotated reference)



 RESULTS FOR STATE 15.1
 ======================

 Maximum overlap with reference state  8

 Coefficient of reference function:   C(0) = 0.96155463 (fixed)   0.96240424 (relaxed)   0.96155483 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00772728   -0.00967219   -0.14165986
 Singles      0.02548008   -0.05293364   -0.05376130
 Pairs        0.04835582    0.00000000   -0.00914582
 Total        1.08156319   -0.06260582   -0.20456698
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -23.55886697
 Nuclear energy                         0.00000000
 Kinetic energy                         6.27994706
 One electron energy                  -38.65149838
 Two electron energy                   14.89325955
 Virial quotient                       -3.78319094
 Correlation energy                    -0.19937186
 !MRCI STATE 15.1 Energy              -23.758238833066

 Properties without orbital relaxation:

 !MRCI STATE 15.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -23.77450024 (Davidson, fixed reference)
 Cluster corrected energies           -23.77411977 (Davidson, relaxed reference)
 Cluster corrected energies           -23.77450024 (Davidson, rotated reference)

 Cluster corrected energies           -23.77093622 (Pople, fixed reference)
 Cluster corrected energies           -23.77062762 (Pople, relaxed reference)
 Cluster corrected energies           -23.77093622 (Pople, rotated reference)



 RESULTS FOR STATE 16.1
 ======================

 Maximum overlap with reference state  7

 Coefficient of reference function:   C(0) = 0.96155463 (fixed)   0.96240424 (relaxed)   0.96155482 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00772729   -0.00967219   -0.14161089
 Singles      0.02548008   -0.05293364   -0.05376130
 Pairs        0.04835583   -0.00005297   -0.00919479
 Total        1.08156320   -0.06265879   -0.20456698
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -23.55886697
 Nuclear energy                         0.00000000
 Kinetic energy                         6.27994708
 One electron energy                  -38.65149843
 Two electron energy                   14.89325960
 Virial quotient                       -3.78319093
 Correlation energy                    -0.19937186
 !MRCI STATE 16.1 Energy              -23.758238833057

 Properties without orbital relaxation:

 !MRCI STATE 16.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -23.77450024 (Davidson, fixed reference)
 Cluster corrected energies           -23.77411977 (Davidson, relaxed reference)
 Cluster corrected energies           -23.77450024 (Davidson, rotated reference)

 Cluster corrected energies           -23.77093622 (Pople, fixed reference)
 Cluster corrected energies           -23.77062762 (Pople, relaxed reference)
 Cluster corrected energies           -23.77093622 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       33.57       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       7      131.79       700     1000      520     2100     2140     5101     5103   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *       214.02    172.79     38.91      1.09      0.11      0.93
 REAL TIME  *       227.66 SEC
 DISK USED  *       165.44 MB (local),     1021.99 MB (total)
 SF USED    *         1.06 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(8)     =       -23.85432091  AU                              
 SETTING HLSDIAG(9)     =       -23.85432088  AU                              
 SETTING HLSDIAG(10)    =       -23.85432087  AU                              
 SETTING HLSDIAG(11)    =       -23.85432056  AU                              
 SETTING HLSDIAG(12)    =       -23.85432040  AU                              
 SETTING HLSDIAG(13)    =       -23.80267935  AU                              
 SETTING HLSDIAG(14)    =       -23.77824887  AU                              
 SETTING HLSDIAG(15)    =       -23.77824905  AU                              
 SETTING HLSDIAG(16)    =       -23.77824905  AU                              
 SETTING HLSDIAG(17)    =       -23.77824770  AU                              
 SETTING HLSDIAG(18)    =       -23.77824774  AU                              
 SETTING HLSDIAG(19)    =       -23.77824763  AU                              
 SETTING HLSDIAG(20)    =       -23.77824763  AU                              
 SETTING HLSDIAG(21)    =       -23.77450072  AU                              
 SETTING HLSDIAG(22)    =       -23.77450024  AU                              
 SETTING HLSDIAG(23)    =       -23.77450024  AU                              


        HLSDIAG
    -23.92306234
    -23.84161311
    -23.84161310
    -23.84161309
    -23.84161308
    -23.84161308
    -23.79725398
    -23.85432091
    -23.85432088
    -23.85432087
    -23.85432056
    -23.85432040
    -23.80267935
    -23.77824887
    -23.77824905
    -23.77824905
    -23.77824770
    -23.77824774
    -23.77824763
    -23.77824763
    -23.77450072
    -23.77450024
    -23.77450024
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Diagonal elements of H will be replaced by values from variable HLSDIAG


   ******************************
   *** Spin-orbit calculation ***
   ******************************


   Spin-orbit matrix elements
   ==========================

 Wavefunction restored from record  5101.2  Symmetry=1  S= 0.0  NSTATE=   7

 Original energies:    -23.905421    -23.822872    -23.822872    -23.822872    -23.822872    -23.822872    -23.779515
 Replaced energies:    -23.923062    -23.841613    -23.841613    -23.841613    -23.841613    -23.841613    -23.797254

 Wavefunction restored from record  5103.2  Symmetry=1  S= 1.0  NSTATE=  16

 Original energies:    -23.835444    -23.835444    -23.835444    -23.835444    -23.835444    -23.784818    -23.759818    -23.759818
                       -23.759818    -23.759817    -23.759817    -23.759817    -23.759817    -23.758239    -23.758239    -23.758239
 Replaced energies:    -23.854321    -23.854321    -23.854321    -23.854321    -23.854320    -23.802679    -23.778249    -23.778249
                       -23.778249    -23.778248    -23.778248    -23.778248    -23.778248    -23.774501    -23.774500    -23.774500



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=   -23.92306234

 Wigner-Eckart theorem used for 10 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.01      -0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.01

    2   2.1  0.0  0.0       0.00   17876.04       0.00       0.00       0.00       0.00       0.00       0.00    -238.95       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00     160.45

    3   3.1  0.0  0.0       0.00       0.00   17876.04       0.00       0.00       0.00       0.00      -0.00      47.38       0.00
                           -0.00      -0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00     183.30

    4   4.1  0.0  0.0       0.00       0.00       0.00   17876.04       0.00       0.00       0.00      -0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00    -121.90      -0.00      -0.00

    5   5.1  0.0  0.0       0.00       0.00       0.00       0.00   17876.05       0.00       0.00       0.00      -0.00    -121.91
                           -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00      -0.00     121.91       0.00

    6   6.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00   17876.05       0.00     121.90       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00      -0.00      -0.00

    7   7.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00   27611.74       0.00       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00      -0.00      -0.00

    8   1.1  1.0  1.0       0.00       0.00      -0.00      -0.00       0.00     121.90       0.00   15087.00       0.00       0.00
                            0.00       0.00       0.00     121.90       0.00      -0.00       0.00      -0.00       0.00      -0.00

    9   2.1  1.0  1.0       0.01    -238.95      47.38       0.00      -0.00       0.00       0.00       0.00   15087.01       0.00
                            0.00      -0.00      -0.00       0.00    -121.91       0.00       0.00      -0.00      -0.00     160.52

   10   3.1  1.0  1.0      -0.00       0.00       0.00       0.00    -121.91       0.00      -0.00       0.00       0.00   15087.01
                            0.01    -160.45    -183.30       0.00      -0.00       0.00       0.00       0.00    -160.52      -0.00

   11   4.1  1.0  1.0       0.00       0.00      -0.00     211.09       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00     211.09      -0.00       0.00       0.00      -0.00

   12   5.1  1.0  1.0      -0.00       0.00      -0.00    -121.87      -0.00      -0.00      -0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00       0.00     121.87      -0.00    -320.97      -0.00      -0.00

   13   6.1  1.0  1.0      -0.00       0.00       0.00      -0.00       0.00       0.00      -0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00       0.00       0.00

   14   7.1  1.0  1.0       0.00      -0.00       0.00      -0.00       0.00      26.59       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00      26.59      -0.00       0.00      -0.00      -0.00      -0.00      -0.00

   15   8.1  1.0  1.0       0.00       0.00       0.00       0.00     -32.56       0.00       0.00       0.00       0.00       0.00
                           -0.09     -10.21      30.99       0.00      -0.00       0.00      -0.05       0.00      -0.27      -0.00

   16   9.1  1.0  1.0       0.09     -10.81      30.79      -0.00      -0.00       0.00       0.05       0.00       0.00       0.00
                            0.00       0.00       0.00      -0.00      32.56      -0.00       0.00       0.00       0.00      -0.27

   17  10.1  1.0  1.0       0.00      -0.00       0.00     -26.58       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00      -0.00      26.58      -0.00      13.34       0.00       0.00

   18  11.1  1.0  1.0      -0.00      -0.00       0.00      -0.00      -0.00     -20.44       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00      20.44      -0.00      -0.00      -0.00       0.00       0.00       0.00

   19  12.1  1.0  1.0      -0.17     -24.93     -17.99       0.00       0.00       0.00      -0.08       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00       8.11      -0.00      -0.00       0.00      -0.00     -17.05

   20  13.1  1.0  1.0      -0.00      -0.00      -0.00       0.00       8.12       0.00      -0.00       0.00       0.00       0.00
                           -0.17     -30.73      -0.95      -0.00      -0.00       0.00      -0.08      -0.00      17.05       0.00

   21  14.1  1.0  1.0       0.00      -0.00      -0.00       0.00       0.00    -191.12       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00     191.12       0.00       0.00      -0.00      -0.00       0.00      -0.00

   22  15.1  1.0  1.0     263.64      42.84     216.37       0.00       0.00      -0.00     130.75       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00    -191.11      -0.00      -0.00       0.00       0.00     -16.05

   23  16.1  1.0  1.0       0.00      -0.00       0.00      -0.00     191.11       0.00       0.00       0.00       0.00       0.00
                         -263.64    -165.93     145.32       0.00       0.00       0.00    -130.75       0.00     -16.05       0.00

   24   1.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    -113.51
                           -0.00     110.98    -326.12      -0.00       0.00       0.00       0.00      -0.00     113.51      -0.00

   25   2.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00
                            0.00       0.00      -0.00       0.00       0.00    -172.40       0.00    -113.51      -0.00       0.00

   26   3.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00     113.51      -0.00       0.00
                           -0.00       0.00      -0.00     172.40      -0.00      -0.00       0.00       0.00      -0.00       0.00

   27   4.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    -196.55      -0.00
                            0.00       0.00      -0.00      -0.00      -0.00       0.00       0.00      -0.00       0.00     196.55

   28   5.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     113.48       0.00
                            0.00      -0.00       0.00       0.00     344.71       0.00      -0.00      -0.00      -0.00     113.48

   29   6.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00
                            0.00       0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00

   30   7.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00      -9.58
                            0.00     -12.11      35.58       0.00       0.00       0.00      -0.00      -0.00       9.58      -0.00

   31   8.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00      11.71      -0.00      -0.00
                           -0.00       0.00       0.00       0.70      -0.00       0.00      -0.00      -0.00       0.00       0.00

   32   9.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00       0.70       0.00      11.71      -0.00      -0.00

   33  10.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       9.55      -0.00
                            0.00       0.00      -0.00       0.00     -37.50       0.00      -0.00      -0.00      -0.00       9.55

   34  11.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00       7.35
                            0.31     -48.34     -16.45       0.00      -0.00      -0.00       0.14       0.00       7.35       0.00

   35  12.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00
                            0.00      -0.00      -0.00       0.00      -0.00      47.38       0.00       2.91       0.00      -0.00

   36  13.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -2.91      -0.00      -0.00
                            0.00      -0.00      -0.00     -47.38       0.00      -0.00       0.00       0.00      -0.00       0.00

   37  14.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      11.37
                         -372.85     295.29     100.49      -0.00      -0.00      -0.00    -184.93       0.00      11.37       0.00

   38  15.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00       0.00      -0.00     270.29      -0.00     -11.37       0.00      -0.00

   39  16.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00     -11.37      -0.00       0.00
                           -0.00      -0.00      -0.00     270.29       0.00       0.00      -0.00      -0.00       0.00       0.00

   40   1.1  1.0 -1.0       0.00       0.00      -0.00      -0.00       0.00     121.90       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00    -121.90      -0.00       0.00      -0.00      -0.00      -0.00      -0.00

   41   2.1  1.0 -1.0       0.01    -238.95      47.38       0.00      -0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00      -0.00     121.91      -0.00      -0.00      -0.00      -0.00      -0.00

   42   3.1  1.0 -1.0      -0.00       0.00       0.00       0.00    -121.91       0.00      -0.00       0.00       0.00       0.00
                           -0.01     160.45     183.30      -0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   43   4.1  1.0 -1.0       0.00       0.00      -0.00     211.09       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00    -211.09       0.00      -0.00      -0.00      -0.00

   44   5.1  1.0 -1.0      -0.00       0.00      -0.00    -121.87      -0.00      -0.00      -0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00      -0.00    -121.87       0.00      -0.00      -0.00      -0.00

   45   6.1  1.0 -1.0      -0.00       0.00       0.00      -0.00       0.00       0.00      -0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00      -0.00      -0.00      -0.00

   46   7.1  1.0 -1.0       0.00      -0.00       0.00      -0.00       0.00      26.59       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00     -26.59       0.00      -0.00       0.00      -0.00      -0.00      -0.00

   47   8.1  1.0 -1.0       0.00       0.00       0.00       0.00     -32.56       0.00       0.00       0.00       0.00       0.00
                            0.09      10.21     -30.99      -0.00       0.00      -0.00       0.05      -0.00      -0.00      -0.00

   48   9.1  1.0 -1.0       0.09     -10.81      30.79      -0.00      -0.00       0.00       0.05       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00     -32.56       0.00      -0.00      -0.00      -0.00      -0.00

   49  10.1  1.0 -1.0       0.00      -0.00       0.00     -26.58       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.00       0.00     -26.58       0.00      -0.00      -0.00      -0.00

   50  11.1  1.0 -1.0      -0.00      -0.00       0.00      -0.00      -0.00     -20.44       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00     -20.44       0.00       0.00       0.00      -0.00      -0.00      -0.00

   51  12.1  1.0 -1.0      -0.17     -24.93     -17.99       0.00       0.00       0.00      -0.08       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00      -8.11       0.00       0.00      -0.00      -0.00      -0.00

   52  13.1  1.0 -1.0      -0.00      -0.00      -0.00       0.00       8.12       0.00      -0.00       0.00       0.00       0.00
                            0.17      30.73       0.95       0.00       0.00      -0.00       0.08      -0.00      -0.00      -0.00

   53  14.1  1.0 -1.0       0.00      -0.00      -0.00       0.00       0.00    -191.12       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00    -191.12      -0.00      -0.00       0.00      -0.00      -0.00      -0.00

   54  15.1  1.0 -1.0     263.64      42.84     216.37       0.00       0.00      -0.00     130.75       0.00       0.00       0.00
                            0.00       0.00       0.00      -0.00     191.11       0.00       0.00      -0.00      -0.00      -0.00

   55  16.1  1.0 -1.0       0.00      -0.00       0.00      -0.00     191.11       0.00       0.00       0.00       0.00       0.00
                          263.64     165.93    -145.32      -0.00      -0.00      -0.00     130.75      -0.00      -0.00      -0.00


   Nr   State  S   Sz       11         12         13         14         15         16         17         18         19         20

    1   1.1  0.0  0.0       0.00      -0.00      -0.00       0.00       0.00       0.09       0.00      -0.00      -0.17      -0.00
                            0.00      -0.00       0.00       0.00       0.09      -0.00       0.00       0.00       0.00       0.17

    2   2.1  0.0  0.0       0.00       0.00       0.00      -0.00       0.00     -10.81      -0.00      -0.00     -24.93      -0.00
                           -0.00       0.00      -0.00       0.00      10.21      -0.00       0.00      -0.00       0.00      30.73

    3   3.1  0.0  0.0      -0.00      -0.00       0.00       0.00       0.00      30.79       0.00       0.00     -17.99      -0.00
                           -0.00       0.00      -0.00      -0.00     -30.99      -0.00      -0.00      -0.00       0.00       0.95

    4   4.1  0.0  0.0     211.09    -121.87      -0.00      -0.00       0.00      -0.00     -26.58      -0.00       0.00       0.00
                           -0.00       0.00      -0.00     -26.59      -0.00       0.00      -0.00     -20.44       0.00       0.00

    5   5.1  0.0  0.0       0.00      -0.00       0.00       0.00     -32.56      -0.00       0.00      -0.00       0.00       8.12
                           -0.00      -0.00      -0.00       0.00       0.00     -32.56       0.00       0.00      -8.11       0.00

    6   6.1  0.0  0.0       0.00      -0.00       0.00      26.59       0.00       0.00       0.00     -20.44       0.00       0.00
                         -211.09    -121.87       0.00      -0.00      -0.00       0.00     -26.58       0.00       0.00      -0.00

    7   7.1  0.0  0.0       0.00      -0.00      -0.00       0.00       0.00       0.05       0.00       0.00      -0.08      -0.00
                            0.00       0.00       0.00       0.00       0.05      -0.00       0.00       0.00       0.00       0.08

    8   1.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00     320.97       0.00       0.00      -0.00      -0.00     -13.34      -0.00      -0.00       0.00

    9   2.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00       0.00       0.27      -0.00      -0.00      -0.00       0.00     -17.05

   10   3.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00       0.00       0.00       0.27      -0.00      -0.00      17.05      -0.00

   11   4.1  1.0  1.0   15087.08       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00      -0.00       0.00       0.00       0.00     -18.19       0.00      -0.00

   12   5.1  1.0  1.0       0.00   15087.11       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00      13.33       0.00      -0.00      -0.00      -0.00      -0.00       0.00

   13   6.1  1.0  1.0       0.00       0.00   26421.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.06      -0.00      -0.00

   14   7.1  1.0  1.0       0.00       0.00       0.00   31782.88       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00     -13.33      -0.00      -0.00       0.00       0.00     324.14       0.00      -0.00      -0.00

   15   8.1  1.0  1.0       0.00       0.00       0.00       0.00   31782.84       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00      -0.00      -0.00    -485.97       0.00       0.00       7.85       0.00

   16   9.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00   31782.84       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00      -0.00     485.97       0.00       0.00       0.00      -0.00       7.85

   17  10.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00   31783.14       0.00       0.00       0.00
                           -0.00       0.00       0.00    -324.14      -0.00      -0.00      -0.00      -0.00       0.00       0.00

   18  11.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00   31783.13       0.00       0.00
                           18.19       0.00       0.06      -0.00      -0.00      -0.00       0.00       0.00       0.00      -0.00

   19  12.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   31783.15       0.00
                           -0.00       0.00       0.00       0.00      -7.85       0.00      -0.00      -0.00      -0.00     162.01

   20  13.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   31783.16
                            0.00      -0.00       0.00       0.00      -0.00      -7.85      -0.00       0.00    -162.01      -0.00

   21  14.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -18.34       0.00     -72.37       0.00       0.00       0.00      -0.00       0.00      -0.00       0.00

   22  15.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00      -0.00      -0.37       0.00      -0.00      -0.00      -0.00      -0.22

   23  16.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00       0.00       0.00       0.37       0.00      -0.00      -0.22      -0.00

   24   1.1  1.0  0.0      -0.00      -0.00       0.00       0.00     -11.71      -0.00       0.00       0.00      -0.00       2.91
                            0.00       0.00      -0.00       0.00       0.00     -11.71       0.00      -0.00      -2.91      -0.00

   25   2.1  1.0  0.0     196.55    -113.48       0.00      -0.00       0.00      -0.00      -9.55      -0.00       0.00       0.00
                           -0.00       0.00      -0.00      -9.58      -0.00       0.00       0.00      -7.35      -0.00       0.00

   26   3.1  1.0  0.0       0.00      -0.00       0.00       9.58       0.00      -0.00       0.00      -7.35      -0.00       0.00
                         -196.55    -113.48      -0.00       0.00      -0.00       0.00      -9.55      -0.00       0.00      -0.00

   27   4.1  1.0  0.0      -0.00       0.00       0.00      -0.00       0.00      -0.10       0.00      -0.00     -10.41      -0.00
                            0.00       0.00      -0.00       0.00      -0.10      -0.00       0.00      -0.00       0.00      10.41

   28   5.1  1.0  0.0      -0.00      -0.00      -0.00       0.00       0.00      11.63      -0.00      -0.00      -3.21       0.00
                           -0.00      -0.00      -0.00      -0.00     -11.63       0.00       0.00       0.00      -0.00      -3.21

   29   6.1  1.0  0.0      -0.00       0.00       0.00       0.00       0.00      -0.02       0.00       0.00       0.03       0.00
                            0.00       0.00      -0.00       0.00      -0.02       0.00       0.00      -0.00      -0.00      -0.03

   30   7.1  1.0  0.0       0.00      -0.00      -0.00       0.00    -138.09      -0.00      -0.00       0.00      -0.00    -182.83
                           -0.00       0.00      -0.00      -0.00      -0.00    -138.09      -0.00       0.00     182.83      -0.00

   31   8.1  1.0  0.0      -0.00      -0.00      -0.00     138.09      -0.00      -0.00      -0.00      -3.42      -0.00      -0.00
                            0.10      11.63       0.02       0.00       0.00       0.00     142.47       0.00       0.00      -0.00

   32   9.1  1.0  0.0       0.10     -11.63       0.02       0.00       0.00      -0.00    -142.48       0.00       0.00       0.00
                            0.00      -0.00      -0.00     138.09      -0.00       0.00      -0.00       3.43      -0.00      -0.00

   33  10.1  1.0  0.0      -0.00       0.00      -0.00       0.00       0.00     142.48       0.00      -0.00     179.39       0.00
                           -0.00      -0.00      -0.00       0.00    -142.47       0.00       0.00      -0.00       0.00     179.40

   34  11.1  1.0  0.0       0.00       0.00      -0.00      -0.00       3.42      -0.00       0.00      -0.00       0.00    -280.62
                            0.00      -0.00       0.00      -0.00      -0.00      -3.43       0.00      -0.00    -280.62       0.00

   35  12.1  1.0  0.0      10.41       3.21      -0.03       0.00       0.00      -0.00    -179.39      -0.00      -0.00      -0.00
                           -0.00       0.00       0.00    -182.83      -0.00       0.00      -0.00     280.62       0.00       0.00

   36  13.1  1.0  0.0       0.00      -0.00      -0.00     182.83       0.00      -0.00      -0.00     280.62       0.00      -0.00
                          -10.41       3.21       0.03       0.00       0.00       0.00    -179.40      -0.00      -0.00      -0.00

   37  14.1  1.0  0.0      -0.00      -0.00      -0.00      -0.00      -0.12       0.00      -0.00       0.00      -0.00      -0.45
                            0.00      -0.00      -0.00       0.00       0.00       0.12       0.00       0.00      -0.45      -0.00

   38  15.1  1.0  0.0      -6.64     -11.34      51.15       0.00       0.00      -0.00      -0.09       0.00       0.00       0.00
                           -0.00      -0.00       0.00      -0.19      -0.00       0.00      -0.00       0.47       0.00       0.00

   39  16.1  1.0  0.0      -0.00      -0.00      -0.00      -0.19       0.00      -0.00       0.00      -0.47      -0.00      -0.00
                           -6.64      11.34      51.15       0.00      -0.00       0.00       0.09      -0.00       0.00      -0.00

   40   1.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   41   2.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   42   3.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   43   4.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   44   5.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   45   6.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   46   7.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   47   8.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   48   9.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   49  10.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   50  11.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   51  12.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   52  13.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   53  14.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   54  15.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   55  16.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00


   Nr   State  S   Sz       21         22         23         24         25         26         27         28         29         30

    1   1.1  0.0  0.0       0.00     263.64       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00     263.64       0.00      -0.00       0.00      -0.00      -0.00      -0.00      -0.00

    2   2.1  0.0  0.0      -0.00      42.84      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00     165.93    -110.98      -0.00      -0.00      -0.00       0.00      -0.00      12.11

    3   3.1  0.0  0.0      -0.00     216.37       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00    -145.32     326.12       0.00       0.00       0.00      -0.00       0.00     -35.58

    4   4.1  0.0  0.0       0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -191.12      -0.00      -0.00       0.00      -0.00    -172.40       0.00      -0.00       0.00      -0.00

    5   5.1  0.0  0.0       0.00       0.00     191.11       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00     191.11      -0.00      -0.00      -0.00       0.00       0.00    -344.71       0.00      -0.00

    6   6.1  0.0  0.0    -191.12      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00      -0.00     172.40       0.00      -0.00      -0.00       0.00      -0.00

    7   7.1  0.0  0.0       0.00     130.75       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00     130.75      -0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.00

    8   1.1  1.0  1.0       0.00       0.00       0.00       0.00      -0.00     113.51       0.00       0.00      -0.00      -0.00
                            0.00      -0.00      -0.00       0.00     113.51      -0.00       0.00       0.00      -0.00       0.00

    9   2.1  1.0  1.0       0.00       0.00       0.00       0.00      -0.00      -0.00    -196.55     113.48      -0.00       0.00
                           -0.00      -0.00      16.05    -113.51       0.00       0.00      -0.00       0.00      -0.00      -9.58

   10   3.1  1.0  1.0       0.00       0.00       0.00    -113.51       0.00       0.00      -0.00       0.00      -0.00      -9.58
                            0.00      16.05      -0.00       0.00      -0.00      -0.00    -196.55    -113.48      -0.00       0.00

   11   4.1  1.0  1.0       0.00       0.00       0.00      -0.00     196.55       0.00      -0.00      -0.00      -0.00       0.00
                           18.34       0.00      -0.00      -0.00       0.00     196.55      -0.00       0.00      -0.00       0.00

   12   5.1  1.0  1.0       0.00       0.00       0.00      -0.00    -113.48      -0.00       0.00      -0.00       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00     113.48      -0.00       0.00      -0.00      -0.00

   13   6.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00      -0.00
                           72.37       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   14   7.1  1.0  1.0       0.00       0.00       0.00       0.00      -0.00       9.58      -0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00      -0.00       9.58      -0.00      -0.00       0.00      -0.00       0.00

   15   8.1  1.0  1.0       0.00       0.00       0.00     -11.71       0.00       0.00       0.00       0.00       0.00    -138.09
                           -0.00       0.37      -0.00      -0.00       0.00       0.00       0.10      11.63       0.02       0.00

   16   9.1  1.0  1.0       0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.10      11.63      -0.02      -0.00
                           -0.00      -0.00      -0.37      11.71      -0.00      -0.00       0.00      -0.00      -0.00     138.09

   17  10.1  1.0  1.0       0.00       0.00       0.00       0.00      -9.55       0.00       0.00      -0.00       0.00      -0.00
                            0.00       0.00      -0.00      -0.00      -0.00       9.55      -0.00      -0.00      -0.00       0.00

   18  11.1  1.0  1.0       0.00       0.00       0.00       0.00      -0.00      -7.35      -0.00      -0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       7.35       0.00       0.00      -0.00       0.00      -0.00

   19  12.1  1.0  1.0       0.00       0.00       0.00      -0.00       0.00      -0.00     -10.41      -3.21       0.03      -0.00
                            0.00       0.00       0.22       2.91       0.00      -0.00      -0.00       0.00       0.00    -182.83

   20  13.1  1.0  1.0       0.00       0.00       0.00       2.91       0.00       0.00      -0.00       0.00       0.00    -182.83
                           -0.00       0.22       0.00       0.00      -0.00       0.00     -10.41       3.21       0.03       0.00

   21  14.1  1.0  1.0   32605.51       0.00       0.00      -0.00      -0.00     -11.37       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00      11.37       0.00       0.00      -0.00      -0.00       0.00

   22  15.1  1.0  1.0       0.00   32605.61       0.00      -0.00      -0.00      -0.00       6.64      11.34     -51.15      -0.00
                            0.00       0.00    -661.96     -11.37       0.00      -0.00      -0.00      -0.00       0.00      -0.19

   23  16.1  1.0  1.0       0.00       0.00   32605.61      11.37       0.00      -0.00       0.00       0.00       0.00       0.19
                           -0.00     661.96      -0.00      -0.00       0.00       0.00      -6.64      11.34      51.15       0.00

   24   1.1  1.0  0.0      -0.00      -0.00      11.37   15087.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      11.37       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   25   2.1  1.0  0.0      -0.00      -0.00       0.00       0.00   15087.01       0.00       0.00       0.00       0.00       0.00
                          -11.37      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   26   3.1  1.0  0.0     -11.37      -0.00      -0.00       0.00       0.00   15087.01       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00

   27   4.1  1.0  0.0       0.00       6.64       0.00       0.00       0.00       0.00   15087.08       0.00       0.00       0.00
                           -0.00       0.00       6.64      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00

   28   5.1  1.0  0.0       0.00      11.34       0.00       0.00       0.00       0.00       0.00   15087.11       0.00       0.00
                            0.00       0.00     -11.34      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00

   29   6.1  1.0  0.0       0.00     -51.15       0.00       0.00       0.00       0.00       0.00       0.00   26421.01       0.00
                            0.00      -0.00     -51.15      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00

   30   7.1  1.0  0.0       0.00      -0.00       0.19       0.00       0.00       0.00       0.00       0.00       0.00   31782.88
                           -0.00       0.19      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   31   8.1  1.0  0.0       0.12      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   32   9.1  1.0  0.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.12      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   33  10.1  1.0  0.0       0.00       0.09      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.09      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   34  11.1  1.0  0.0      -0.00      -0.00       0.47       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.47       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   35  12.1  1.0  0.0       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.45      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   36  13.1  1.0  0.0       0.45      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   37  14.1  1.0  0.0      -0.00      -0.00    -468.08       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00     468.08       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   38  15.1  1.0  0.0       0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -468.08       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   39  16.1  1.0  0.0     468.08       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   40   1.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00    -113.51      -0.00      -0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00     113.51      -0.00       0.00       0.00      -0.00       0.00

   41   2.1  1.0 -1.0       0.00       0.00       0.00      -0.00      -0.00       0.00     196.55    -113.48       0.00      -0.00
                           -0.00      -0.00      -0.00    -113.51      -0.00       0.00      -0.00       0.00      -0.00      -9.58

   42   3.1  1.0 -1.0       0.00       0.00       0.00     113.51      -0.00       0.00       0.00      -0.00       0.00       9.58
                           -0.00      -0.00      -0.00       0.00      -0.00       0.00    -196.55    -113.48      -0.00       0.00

   43   4.1  1.0 -1.0       0.00       0.00       0.00       0.00    -196.55      -0.00      -0.00       0.00       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00       0.00     196.55       0.00       0.00      -0.00       0.00

   44   5.1  1.0 -1.0       0.00       0.00       0.00       0.00     113.48       0.00      -0.00      -0.00      -0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00     113.48      -0.00      -0.00      -0.00      -0.00

   45   6.1  1.0 -1.0       0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00

   46   7.1  1.0 -1.0       0.00       0.00       0.00      -0.00       0.00      -9.58       0.00      -0.00      -0.00       0.00
                           -0.00      -0.00      -0.00      -0.00       9.58      -0.00      -0.00       0.00      -0.00      -0.00

   47   8.1  1.0 -1.0       0.00       0.00       0.00      11.71      -0.00      -0.00      -0.00      -0.00      -0.00     138.09
                           -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.10      11.63       0.02       0.00

   48   9.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.10     -11.63       0.02       0.00
                           -0.00      -0.00      -0.00      11.71      -0.00      -0.00       0.00      -0.00      -0.00     138.09

   49  10.1  1.0 -1.0       0.00       0.00       0.00      -0.00       9.55      -0.00      -0.00       0.00      -0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00       9.55      -0.00      -0.00      -0.00       0.00

   50  11.1  1.0 -1.0       0.00       0.00       0.00      -0.00       0.00       7.35       0.00       0.00      -0.00      -0.00
                           -0.00      -0.00      -0.00       0.00       7.35       0.00       0.00      -0.00       0.00      -0.00

   51  12.1  1.0 -1.0       0.00       0.00       0.00       0.00      -0.00       0.00      10.41       3.21      -0.03       0.00
                           -0.00      -0.00      -0.00       2.91       0.00      -0.00      -0.00       0.00       0.00    -182.83

   52  13.1  1.0 -1.0       0.00       0.00       0.00      -2.91      -0.00      -0.00       0.00      -0.00      -0.00     182.83
                           -0.00      -0.00      -0.00       0.00      -0.00       0.00     -10.41       3.21       0.03       0.00

   53  14.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00      11.37      -0.00      -0.00      -0.00      -0.00
                           -0.00      -0.00      -0.00       0.00      11.37       0.00       0.00      -0.00      -0.00       0.00

   54  15.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00      -6.64     -11.34      51.15       0.00
                           -0.00      -0.00      -0.00     -11.37       0.00      -0.00      -0.00      -0.00       0.00      -0.19

   55  16.1  1.0 -1.0       0.00       0.00       0.00     -11.37      -0.00       0.00      -0.00      -0.00      -0.00      -0.19
                           -0.00      -0.00      -0.00      -0.00       0.00       0.00      -6.64      11.34      51.15       0.00


   Nr   State  S   Sz       31         32         33         34         35         36         37         38         39         40

    1   1.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.31      -0.00      -0.00     372.85       0.00       0.00       0.00

    2   2.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00      48.34       0.00       0.00    -295.29      -0.00       0.00       0.00

    3   3.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                           -0.00       0.00       0.00      16.45       0.00       0.00    -100.49       0.00       0.00       0.00

    4   4.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                           -0.70       0.00      -0.00      -0.00      -0.00      47.38       0.00      -0.00    -270.29     121.90

    5   5.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      37.50       0.00       0.00      -0.00       0.00       0.00      -0.00       0.00

    6   6.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     121.90
                           -0.00      -0.70      -0.00       0.00     -47.38       0.00       0.00    -270.29      -0.00      -0.00

    7   7.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00      -0.14      -0.00      -0.00     184.93       0.00       0.00       0.00

    8   1.1  1.0  1.0      11.71       0.00      -0.00      -0.00       0.00      -2.91       0.00       0.00     -11.37       0.00
                            0.00     -11.71       0.00      -0.00      -2.91      -0.00      -0.00      11.37       0.00       0.00

    9   2.1  1.0  1.0      -0.00       0.00       9.55       0.00      -0.00      -0.00       0.00       0.00      -0.00       0.00
                           -0.00       0.00       0.00      -7.35      -0.00       0.00     -11.37      -0.00      -0.00       0.00

   10   3.1  1.0  1.0      -0.00       0.00      -0.00       7.35       0.00      -0.00      11.37       0.00       0.00       0.00
                           -0.00       0.00      -9.55      -0.00       0.00      -0.00      -0.00       0.00      -0.00       0.00

   11   4.1  1.0  1.0      -0.00       0.10      -0.00       0.00      10.41       0.00      -0.00      -6.64      -0.00       0.00
                           -0.10      -0.00       0.00      -0.00       0.00      10.41      -0.00       0.00       6.64       0.00

   12   5.1  1.0  1.0      -0.00     -11.63       0.00       0.00       3.21      -0.00      -0.00     -11.34      -0.00       0.00
                          -11.63       0.00       0.00       0.00      -0.00      -3.21       0.00       0.00     -11.34       0.00

   13   6.1  1.0  1.0      -0.00       0.02      -0.00      -0.00      -0.03      -0.00      -0.00      51.15      -0.00       0.00
                           -0.02       0.00       0.00      -0.00      -0.00      -0.03       0.00      -0.00     -51.15       0.00

   14   7.1  1.0  1.0     138.09       0.00       0.00      -0.00       0.00     182.83      -0.00       0.00      -0.19       0.00
                           -0.00    -138.09      -0.00       0.00     182.83      -0.00      -0.00       0.19      -0.00       0.00

   15   8.1  1.0  1.0      -0.00       0.00       0.00       3.42       0.00       0.00      -0.12       0.00       0.00       0.00
                           -0.00       0.00     142.47       0.00       0.00      -0.00      -0.00       0.00       0.00       0.00

   16   9.1  1.0  1.0      -0.00      -0.00     142.48      -0.00      -0.00      -0.00       0.00      -0.00      -0.00       0.00
                           -0.00      -0.00      -0.00       3.43      -0.00      -0.00      -0.12      -0.00      -0.00       0.00

   17  10.1  1.0  1.0      -0.00    -142.48       0.00       0.00    -179.39      -0.00      -0.00      -0.09       0.00       0.00
                         -142.47       0.00      -0.00      -0.00       0.00     179.40      -0.00       0.00      -0.09       0.00

   18  11.1  1.0  1.0      -3.42       0.00      -0.00      -0.00      -0.00     280.62       0.00       0.00      -0.47       0.00
                           -0.00      -3.43       0.00       0.00    -280.62       0.00      -0.00      -0.47       0.00       0.00

   19  12.1  1.0  1.0      -0.00       0.00     179.39       0.00      -0.00       0.00      -0.00       0.00      -0.00       0.00
                           -0.00       0.00      -0.00     280.62      -0.00       0.00       0.45      -0.00      -0.00       0.00

   20  13.1  1.0  1.0      -0.00       0.00       0.00    -280.62      -0.00      -0.00      -0.45       0.00      -0.00       0.00
                            0.00       0.00    -179.40      -0.00      -0.00       0.00       0.00      -0.00       0.00       0.00

   21  14.1  1.0  1.0       0.12      -0.00       0.00      -0.00       0.00       0.45      -0.00       0.00     468.08       0.00
                            0.00       0.12       0.00       0.00      -0.45      -0.00      -0.00     468.08       0.00       0.00

   22  15.1  1.0  1.0      -0.00       0.00       0.09      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00       0.47       0.00       0.00    -468.08      -0.00      -0.00       0.00

   23  16.1  1.0  1.0      -0.00       0.00      -0.00       0.47       0.00       0.00    -468.08      -0.00       0.00       0.00
                           -0.00       0.00       0.09      -0.00       0.00      -0.00      -0.00       0.00      -0.00       0.00

   24   1.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   25   2.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    -113.51

   26   3.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    -113.51
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   27   4.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00

   28   5.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00

   29   6.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   30   7.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00

   31   8.1  1.0  0.0   31782.84       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     -11.71
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00

   32   9.1  1.0  0.0       0.00   31782.84       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      11.71

   33  10.1  1.0  0.0       0.00       0.00   31783.14       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00

   34  11.1  1.0  0.0       0.00       0.00       0.00   31783.13       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   35  12.1  1.0  0.0       0.00       0.00       0.00       0.00   31783.15       0.00       0.00       0.00       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       2.91

   36  13.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00   31783.16       0.00       0.00       0.00       2.91
                           -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00

   37  14.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00   32605.51       0.00       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00

   38  15.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00   32605.61       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00     -11.37

   39  16.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   32605.61      11.37
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00

   40   1.1  1.0 -1.0     -11.71      -0.00       0.00       0.00      -0.00       2.91      -0.00      -0.00      11.37   15087.00
                            0.00     -11.71       0.00      -0.00      -2.91      -0.00      -0.00      11.37       0.00       0.00

   41   2.1  1.0 -1.0       0.00      -0.00      -9.55      -0.00       0.00       0.00      -0.00      -0.00       0.00       0.00
                           -0.00       0.00       0.00      -7.35      -0.00       0.00     -11.37      -0.00      -0.00       0.00

   42   3.1  1.0 -1.0       0.00      -0.00       0.00      -7.35      -0.00       0.00     -11.37      -0.00      -0.00       0.00
                           -0.00       0.00      -9.55      -0.00       0.00      -0.00      -0.00       0.00      -0.00      -0.00

   43   4.1  1.0 -1.0       0.00      -0.10       0.00      -0.00     -10.41      -0.00       0.00       6.64       0.00       0.00
                           -0.10      -0.00       0.00      -0.00       0.00      10.41      -0.00       0.00       6.64      -0.00

   44   5.1  1.0 -1.0       0.00      11.63      -0.00      -0.00      -3.21       0.00       0.00      11.34       0.00       0.00
                          -11.63       0.00       0.00       0.00      -0.00      -3.21       0.00       0.00     -11.34     320.97

   45   6.1  1.0 -1.0       0.00      -0.02       0.00       0.00       0.03       0.00       0.00     -51.15       0.00       0.00
                           -0.02       0.00       0.00      -0.00      -0.00      -0.03       0.00      -0.00     -51.15       0.00

   46   7.1  1.0 -1.0    -138.09      -0.00      -0.00       0.00      -0.00    -182.83       0.00      -0.00       0.19       0.00
                           -0.00    -138.09      -0.00       0.00     182.83      -0.00      -0.00       0.19      -0.00       0.00

   47   8.1  1.0 -1.0      -0.00      -0.00      -0.00      -3.42      -0.00      -0.00       0.12      -0.00      -0.00       0.00
                            0.00       0.00     142.47       0.00       0.00      -0.00      -0.00       0.00       0.00      -0.00

   48   9.1  1.0 -1.0       0.00      -0.00    -142.48       0.00       0.00       0.00      -0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00       3.43      -0.00      -0.00      -0.12      -0.00      -0.00      -0.00

   49  10.1  1.0 -1.0       0.00     142.48       0.00      -0.00     179.39       0.00       0.00       0.09      -0.00       0.00
                         -142.47       0.00       0.00      -0.00       0.00     179.40      -0.00       0.00      -0.09     -13.34

   50  11.1  1.0 -1.0       3.42      -0.00       0.00      -0.00       0.00    -280.62      -0.00      -0.00       0.47       0.00
                           -0.00      -3.43       0.00      -0.00    -280.62       0.00      -0.00      -0.47       0.00      -0.00

   51  12.1  1.0 -1.0       0.00      -0.00    -179.39      -0.00      -0.00      -0.00       0.00      -0.00       0.00       0.00
                           -0.00       0.00      -0.00     280.62       0.00       0.00       0.45      -0.00      -0.00      -0.00

   52  13.1  1.0 -1.0       0.00      -0.00      -0.00     280.62       0.00      -0.00       0.45      -0.00       0.00       0.00
                            0.00       0.00    -179.40      -0.00      -0.00      -0.00       0.00      -0.00       0.00       0.00

   53  14.1  1.0 -1.0      -0.12       0.00      -0.00       0.00      -0.00      -0.45      -0.00      -0.00    -468.08       0.00
                            0.00       0.12       0.00       0.00      -0.45      -0.00       0.00     468.08       0.00       0.00

   54  15.1  1.0 -1.0       0.00      -0.00      -0.09       0.00       0.00       0.00       0.00       0.00      -0.00       0.00
                           -0.00       0.00      -0.00       0.47       0.00       0.00    -468.08       0.00      -0.00      -0.00

   55  16.1  1.0 -1.0       0.00      -0.00       0.00      -0.47      -0.00      -0.00     468.08       0.00       0.00       0.00
                           -0.00       0.00       0.09      -0.00       0.00      -0.00      -0.00       0.00       0.00      -0.00


   Nr   State  S   Sz       41         42         43         44         45         46         47         48         49         50

    1   1.1  0.0  0.0       0.01      -0.00       0.00      -0.00      -0.00       0.00       0.00       0.09       0.00      -0.00
                            0.00       0.01      -0.00       0.00      -0.00      -0.00      -0.09       0.00      -0.00      -0.00

    2   2.1  0.0  0.0    -238.95       0.00       0.00       0.00       0.00      -0.00       0.00     -10.81      -0.00      -0.00
                           -0.00    -160.45       0.00      -0.00       0.00      -0.00     -10.21       0.00      -0.00       0.00

    3   3.1  0.0  0.0      47.38       0.00      -0.00      -0.00       0.00       0.00       0.00      30.79       0.00       0.00
                           -0.00    -183.30       0.00      -0.00       0.00       0.00      30.99       0.00       0.00       0.00

    4   4.1  0.0  0.0       0.00       0.00     211.09    -121.87      -0.00      -0.00       0.00      -0.00     -26.58      -0.00
                            0.00       0.00       0.00      -0.00       0.00      26.59       0.00      -0.00       0.00      20.44

    5   5.1  0.0  0.0      -0.00    -121.91       0.00      -0.00       0.00       0.00     -32.56      -0.00       0.00      -0.00
                         -121.91      -0.00       0.00       0.00       0.00      -0.00      -0.00      32.56      -0.00      -0.00

    6   6.1  0.0  0.0       0.00       0.00       0.00      -0.00       0.00      26.59       0.00       0.00       0.00     -20.44
                            0.00       0.00     211.09     121.87      -0.00       0.00       0.00      -0.00      26.58      -0.00

    7   7.1  0.0  0.0       0.00      -0.00       0.00      -0.00      -0.00       0.00       0.00       0.05       0.00       0.00
                            0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.05       0.00      -0.00      -0.00

    8   1.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    9   2.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   10   3.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   11   4.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   12   5.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   13   6.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   14   7.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   15   8.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   16   9.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   17  10.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   18  11.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   19  12.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   20  13.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   21  14.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   22  15.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   23  16.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   24   1.1  1.0  0.0      -0.00     113.51       0.00       0.00      -0.00      -0.00      11.71       0.00      -0.00      -0.00
                          113.51      -0.00       0.00       0.00      -0.00       0.00       0.00     -11.71       0.00      -0.00

   25   2.1  1.0  0.0      -0.00      -0.00    -196.55     113.48      -0.00       0.00      -0.00       0.00       9.55       0.00
                            0.00       0.00      -0.00       0.00      -0.00      -9.58      -0.00       0.00       0.00      -7.35

   26   3.1  1.0  0.0       0.00       0.00      -0.00       0.00      -0.00      -9.58      -0.00       0.00      -0.00       7.35
                           -0.00      -0.00    -196.55    -113.48      -0.00       0.00      -0.00       0.00      -9.55      -0.00

   27   4.1  1.0  0.0     196.55       0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.10      -0.00       0.00
                            0.00     196.55      -0.00       0.00      -0.00       0.00      -0.10      -0.00       0.00      -0.00

   28   5.1  1.0  0.0    -113.48      -0.00       0.00      -0.00       0.00      -0.00      -0.00     -11.63       0.00       0.00
                           -0.00     113.48      -0.00       0.00      -0.00      -0.00     -11.63       0.00       0.00       0.00

   29   6.1  1.0  0.0       0.00       0.00       0.00      -0.00       0.00      -0.00      -0.00       0.02      -0.00      -0.00
                            0.00       0.00       0.00       0.00       0.00       0.00      -0.02       0.00       0.00      -0.00

   30   7.1  1.0  0.0      -0.00       9.58      -0.00       0.00       0.00       0.00     138.09       0.00       0.00      -0.00
                            9.58      -0.00      -0.00       0.00      -0.00       0.00      -0.00    -138.09      -0.00       0.00

   31   8.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00    -138.09      -0.00       0.00       0.00       3.42
                            0.00       0.00       0.10      11.63       0.02       0.00      -0.00       0.00     142.47       0.00

   32   9.1  1.0  0.0      -0.00      -0.00      -0.10      11.63      -0.02      -0.00      -0.00      -0.00     142.48      -0.00
                           -0.00      -0.00       0.00      -0.00      -0.00     138.09      -0.00      -0.00      -0.00       3.43

   33  10.1  1.0  0.0      -9.55       0.00       0.00      -0.00       0.00      -0.00      -0.00    -142.48       0.00       0.00
                           -0.00       9.55      -0.00      -0.00      -0.00       0.00    -142.47       0.00      -0.00      -0.00

   34  11.1  1.0  0.0      -0.00      -7.35      -0.00      -0.00       0.00       0.00      -3.42       0.00      -0.00      -0.00
                            7.35       0.00       0.00      -0.00       0.00      -0.00      -0.00      -3.43       0.00       0.00

   35  12.1  1.0  0.0       0.00      -0.00     -10.41      -3.21       0.03      -0.00      -0.00       0.00     179.39       0.00
                            0.00      -0.00      -0.00       0.00       0.00    -182.83      -0.00       0.00      -0.00     280.62

   36  13.1  1.0  0.0       0.00       0.00      -0.00       0.00       0.00    -182.83      -0.00       0.00       0.00    -280.62
                           -0.00       0.00     -10.41       3.21       0.03       0.00       0.00       0.00    -179.40      -0.00

   37  14.1  1.0  0.0      -0.00     -11.37       0.00       0.00       0.00       0.00       0.12      -0.00       0.00      -0.00
                           11.37       0.00       0.00      -0.00      -0.00       0.00       0.00       0.12       0.00       0.00

   38  15.1  1.0  0.0      -0.00      -0.00       6.64      11.34     -51.15      -0.00      -0.00       0.00       0.09      -0.00
                            0.00      -0.00      -0.00      -0.00       0.00      -0.19      -0.00       0.00      -0.00       0.47

   39  16.1  1.0  0.0       0.00      -0.00       0.00       0.00       0.00       0.19      -0.00       0.00      -0.00       0.47
                            0.00       0.00      -6.64      11.34      51.15       0.00      -0.00       0.00       0.09      -0.00

   40   1.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00    -320.97      -0.00      -0.00       0.00       0.00      13.34       0.00

   41   2.1  1.0 -1.0   15087.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00    -160.52       0.00      -0.00       0.00      -0.00      -0.27       0.00       0.00       0.00

   42   3.1  1.0 -1.0       0.00   15087.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          160.52       0.00      -0.00      -0.00       0.00      -0.00      -0.00      -0.27       0.00       0.00

   43   4.1  1.0 -1.0       0.00       0.00   15087.08       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00      -0.00      -0.00       0.00      -0.00      -0.00      -0.00      18.19

   44   5.1  1.0 -1.0       0.00       0.00       0.00   15087.11       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00      -0.00       0.00     -13.33      -0.00       0.00       0.00       0.00

   45   6.1  1.0 -1.0       0.00       0.00       0.00       0.00   26421.01       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.06

   46   7.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00   31782.88       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00      13.33       0.00       0.00      -0.00      -0.00    -324.14      -0.00

   47   8.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00   31782.84       0.00       0.00       0.00
                            0.27       0.00       0.00       0.00      -0.00       0.00       0.00     485.97      -0.00      -0.00

   48   9.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00   31782.84       0.00       0.00
                           -0.00       0.27       0.00      -0.00      -0.00       0.00    -485.97      -0.00      -0.00      -0.00

   49  10.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   31783.14       0.00
                           -0.00      -0.00       0.00      -0.00      -0.00     324.14       0.00       0.00       0.00       0.00

   50  11.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   31783.13
                           -0.00      -0.00     -18.19      -0.00      -0.06       0.00       0.00       0.00      -0.00      -0.00

   51  12.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      17.05       0.00      -0.00      -0.00      -0.00       7.85      -0.00       0.00       0.00

   52  13.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -17.05      -0.00      -0.00       0.00      -0.00      -0.00       0.00       7.85       0.00      -0.00

   53  14.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      18.34      -0.00      72.37      -0.00      -0.00      -0.00       0.00      -0.00

   54  15.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      16.05       0.00      -0.00       0.00       0.00       0.37      -0.00       0.00       0.00

   55  16.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           16.05      -0.00      -0.00      -0.00       0.00      -0.00      -0.00      -0.37      -0.00       0.00


   Nr   State  S   Sz       51         52         53         54         55

    1   1.1  0.0  0.0      -0.17      -0.00       0.00     263.64       0.00
                           -0.00      -0.17       0.00      -0.00    -263.64

    2   2.1  0.0  0.0     -24.93      -0.00      -0.00      42.84      -0.00
                           -0.00     -30.73      -0.00      -0.00    -165.93

    3   3.1  0.0  0.0     -17.99      -0.00      -0.00     216.37       0.00
                           -0.00      -0.95       0.00      -0.00     145.32

    4   4.1  0.0  0.0       0.00       0.00       0.00       0.00      -0.00
                           -0.00      -0.00     191.12       0.00       0.00

    5   5.1  0.0  0.0       0.00       8.12       0.00       0.00     191.11
                            8.11      -0.00       0.00    -191.11       0.00

    6   6.1  0.0  0.0       0.00       0.00    -191.12      -0.00       0.00
                           -0.00       0.00       0.00      -0.00       0.00

    7   7.1  0.0  0.0      -0.08      -0.00       0.00     130.75       0.00
                           -0.00      -0.08      -0.00      -0.00    -130.75

    8   1.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00

    9   2.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00

   10   3.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00

   11   4.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00

   12   5.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00

   13   6.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00

   14   7.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00

   15   8.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00

   16   9.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00

   17  10.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00

   18  11.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00

   19  12.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00

   20  13.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00

   21  14.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00

   22  15.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00

   23  16.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00

   24   1.1  1.0  0.0       0.00      -2.91       0.00       0.00     -11.37
                           -2.91      -0.00      -0.00      11.37       0.00

   25   2.1  1.0  0.0      -0.00      -0.00       0.00       0.00      -0.00
                           -0.00       0.00     -11.37      -0.00      -0.00

   26   3.1  1.0  0.0       0.00      -0.00      11.37       0.00       0.00
                            0.00      -0.00      -0.00       0.00      -0.00

   27   4.1  1.0  0.0      10.41       0.00      -0.00      -6.64      -0.00
                            0.00      10.41      -0.00       0.00       6.64

   28   5.1  1.0  0.0       3.21      -0.00      -0.00     -11.34      -0.00
                           -0.00      -3.21       0.00       0.00     -11.34

   29   6.1  1.0  0.0      -0.03      -0.00      -0.00      51.15      -0.00
                           -0.00      -0.03       0.00      -0.00     -51.15

   30   7.1  1.0  0.0       0.00     182.83      -0.00       0.00      -0.19
                          182.83      -0.00      -0.00       0.19      -0.00

   31   8.1  1.0  0.0       0.00       0.00      -0.12       0.00       0.00
                            0.00      -0.00      -0.00       0.00       0.00

   32   9.1  1.0  0.0      -0.00      -0.00       0.00      -0.00      -0.00
                           -0.00      -0.00      -0.12      -0.00      -0.00

   33  10.1  1.0  0.0    -179.39      -0.00      -0.00      -0.09       0.00
                            0.00     179.40      -0.00       0.00      -0.09

   34  11.1  1.0  0.0      -0.00     280.62       0.00       0.00      -0.47
                         -280.62       0.00      -0.00      -0.47       0.00

   35  12.1  1.0  0.0      -0.00       0.00      -0.00       0.00      -0.00
                           -0.00       0.00       0.45      -0.00      -0.00

   36  13.1  1.0  0.0      -0.00      -0.00      -0.45       0.00      -0.00
                           -0.00       0.00       0.00      -0.00       0.00

   37  14.1  1.0  0.0       0.00       0.45      -0.00       0.00     468.08
                           -0.45      -0.00      -0.00     468.08       0.00

   38  15.1  1.0  0.0      -0.00      -0.00      -0.00       0.00       0.00
                            0.00       0.00    -468.08      -0.00      -0.00

   39  16.1  1.0  0.0       0.00       0.00    -468.08      -0.00       0.00
                            0.00      -0.00      -0.00       0.00      -0.00

   40   1.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00       0.00       0.00

   41   2.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00
                           -0.00      17.05       0.00       0.00     -16.05

   42   3.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00
                          -17.05       0.00      -0.00     -16.05       0.00

   43   4.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00     -18.34      -0.00       0.00

   44   5.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00       0.00       0.00

   45   6.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00     -72.37      -0.00      -0.00

   46   7.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00      -0.00       0.00

   47   8.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00
                           -7.85      -0.00       0.00      -0.37       0.00

   48   9.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00
                            0.00      -7.85       0.00       0.00       0.37

   49  10.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00       0.00

   50  11.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00      -0.00      -0.00

   51  12.1  1.0 -1.0   31783.15       0.00       0.00       0.00       0.00
                            0.00    -162.01      -0.00      -0.00      -0.22

   52  13.1  1.0 -1.0       0.00   31783.16       0.00       0.00       0.00
                          162.01       0.00       0.00      -0.22      -0.00

   53  14.1  1.0 -1.0       0.00       0.00   32605.51       0.00       0.00
                            0.00      -0.00       0.00       0.00      -0.00

   54  15.1  1.0 -1.0       0.00       0.00       0.00   32605.61       0.00
                            0.00       0.22      -0.00      -0.00     661.96

   55  16.1  1.0 -1.0       0.00       0.00       0.00       0.00   32605.61
                            0.22       0.00       0.00    -661.96       0.00




   Spin-orbit calculation in the basis of symmetry adapted wave functions
   ======================================================================


 >>> Hamiltonian transformed to symmetry adapted basis <<<


  Results for symmetry 1
  ======================

 => Spin-Orbit Matrixblock (CM-1)  (dimension: 55)

    The diagonal matrixelements are shifted by    -23.92306234 a.u.

  State Sym Spin    / Nr.        1           2           3           4           5           6           7           8

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |0 0>               0.000   17876.039       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |0 0>               0.000       0.000   17876.041       0.000       0.000       0.000       0.000      -0.000
                               -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |0 0>               0.000       0.000       0.000   17876.043       0.000       0.000       0.000      -0.000
                               -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000   17876.046       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000   17876.046       0.000     172.397
                               -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000

    7    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000   27611.743       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000

    1    1  |1 1>+              0.000       0.000      -0.000      -0.000       0.000     172.397       0.000   15086.999
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>+              0.008    -337.924      67.002       0.000      -0.000       0.000       0.001       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>+             -0.000       0.000       0.000       0.000    -172.407       0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>+              0.000       0.000      -0.000     298.522       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>+             -0.000       0.000      -0.000    -172.354      -0.000      -0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>+             -0.000       0.000       0.000      -0.000       0.000       0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>+              0.000      -0.000       0.000      -0.000       0.000      37.600       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>+              0.000       0.000       0.000       0.000     -46.053       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>+              0.129     -15.287      43.540      -0.000      -0.000       0.000       0.064       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   10    1  |1 1>+              0.000      -0.000       0.000     -37.585       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   11    1  |1 1>+             -0.000      -0.000       0.000      -0.000      -0.000     -28.912       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   12    1  |1 1>+             -0.242     -35.252     -25.447       0.000       0.000       0.000      -0.111       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   13    1  |1 1>+             -0.000      -0.000      -0.000       0.000      11.477       0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   14    1  |1 1>+              0.000      -0.000      -0.000       0.000       0.000    -270.289       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   15    1  |1 1>+            372.837      60.589     305.993       0.000       0.000      -0.000     184.907       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   16    1  |1 1>+              0.000      -0.000       0.000      -0.000     270.267       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000     110.984    -326.123      -0.000       0.000       0.000       0.000       0.000

    2    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000       0.000       0.000    -172.402       0.000    -160.524

    3    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000     172.402      -0.000      -0.000       0.000       0.000

    4    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                                0.000       0.000      -0.000      -0.000      -0.002       0.000       0.000      -0.000

    5    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                                0.000      -0.000       0.000       0.000     344.710       0.000      -0.000      -0.000

    6    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                                0.000       0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000

    7    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                                0.000     -12.107      35.576       0.000       0.000       0.000      -0.000      -0.000

    8    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                               -0.000       0.000       0.000       0.695      -0.000       0.000      -0.000      -0.000

    9    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000      -0.000      -0.000       0.696       0.000      16.566

   10    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000       0.000     -37.498       0.000      -0.000      -0.000

   11    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                                0.312     -48.342     -16.451       0.000      -0.000      -0.000       0.142       0.000

   12    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000       0.000      -0.000      47.379       0.000       4.122

   13    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                                0.000      -0.000      -0.000     -47.380       0.000      -0.000       0.000       0.000

   14    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                             -372.849     295.294     100.493      -0.000      -0.000      -0.000    -184.930       0.000

   15    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000       0.000      -0.000     270.292      -0.000     -16.077

   16    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                               -0.000      -0.000      -0.000     270.292       0.000       0.000      -0.000      -0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000     172.397       0.000      -0.000       0.000      -0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000       0.000    -172.407       0.000       0.000      -0.000

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.008    -226.905    -259.222       0.000      -0.000       0.000       0.001       0.000

    4    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000     298.520      -0.000       0.002

    5    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000      -0.000       0.000     172.356      -0.000    -320.966

    6    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000

    7    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000      37.600      -0.000       0.000      -0.000      -0.000

    8    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.129     -14.446      43.826       0.000      -0.000       0.000      -0.064       0.000

    9    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000      46.052      -0.000       0.000       0.000

   10    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000      -0.000      37.584      -0.000      13.337

   11    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000      28.912      -0.000      -0.000      -0.000       0.000

   12    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      11.476      -0.000      -0.000       0.000

   13    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.242     -43.456      -1.339      -0.000      -0.000       0.000      -0.111      -0.000

   14    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000     270.289       0.000       0.000      -0.000      -0.000

   15    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000       0.000    -270.267      -0.000      -0.000       0.000

   16    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -372.837    -234.663     205.515       0.000       0.000       0.000    -184.907       0.000

  State Sym Spin    / Nr.        9          10          11          12          13          14          15          16

    1    1  |0 0>               0.008      -0.000       0.000      -0.000      -0.000       0.000       0.000       0.129
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |0 0>            -337.924       0.000       0.000       0.000       0.000      -0.000       0.000     -15.287
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |0 0>              67.002       0.000      -0.000      -0.000       0.000       0.000       0.000      43.540
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |0 0>               0.000       0.000     298.522    -172.354      -0.000      -0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |0 0>              -0.000    -172.407       0.000      -0.000       0.000       0.000     -46.053      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |0 0>               0.000       0.000       0.000      -0.000       0.000      37.600       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |0 0>               0.001      -0.000       0.000      -0.000      -0.000       0.000       0.000       0.064
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>+          15087.007       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>+              0.000   15087.007       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>+              0.000       0.000   15087.077       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>+              0.000       0.000       0.000   15087.111       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>+              0.000       0.000       0.000       0.000   26421.011       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>+              0.000       0.000       0.000       0.000       0.000   31782.882       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000   31782.843       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000   31782.843
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   10    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   11    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   12    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   13    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   14    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   15    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   16    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>               0.000       0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000
                              160.524      -0.000       0.000       0.000      -0.000       0.000       0.000     -16.566

    2    1  |1 0>              -0.000      -0.000      -0.000      -0.000      -0.000       0.000      -0.000      -0.000
                                0.000       0.000      -0.000       0.000      -0.000     -13.551      -0.000       0.000

    3    1  |1 0>              -0.000       0.000      -0.000       0.000      -0.000       0.000      -0.000       0.000
                               -0.000       0.000    -277.968    -160.489      -0.004       0.000      -0.000       0.000

    4    1  |1 0>              -0.000      -0.000      -0.000       0.000      -0.000      -0.000      -0.000       0.000
                                0.000     277.968       0.000       0.000      -0.000       0.000      -0.135      -0.000

    5    1  |1 0>              -0.000       0.000       0.000      -0.000      -0.000       0.000      -0.000       0.000
                               -0.000     160.489      -0.000       0.000      -0.000      -0.000     -16.443       0.000

    6    1  |1 0>              -0.000      -0.000      -0.000      -0.000       0.000      -0.000       0.000       0.000
                                0.000       0.004       0.000       0.000       0.000       0.000      -0.027       0.000

    7    1  |1 0>               0.000       0.000      -0.000       0.000      -0.000       0.000       0.000      -0.000
                               13.551      -0.000      -0.000       0.000      -0.000       0.000      -0.000    -195.290

    8    1  |1 0>              -0.000      -0.000      -0.000      -0.000       0.000       0.000      -0.000      -0.000
                                0.000       0.000       0.135      16.443       0.027       0.000       0.000       0.000

    9    1  |1 0>              -0.000       0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000
                               -0.000      -0.000       0.000      -0.000      -0.000     195.290      -0.000       0.000

   10    1  |1 0>              -0.000      -0.000       0.000      -0.000      -0.000       0.000      -0.000       0.000
                               -0.000      13.505      -0.000      -0.000      -0.000       0.000    -201.486       0.000

   11    1  |1 0>               0.000       0.000      -0.000      -0.000      -0.000      -0.000       0.000      -0.000
                               10.395       0.000       0.000      -0.000       0.000      -0.000      -0.000      -4.846

   12    1  |1 0>               0.000       0.000       0.000       0.000      -0.000      -0.000       0.000      -0.000
                                0.000      -0.000      -0.000       0.000       0.000    -258.562      -0.000       0.000

   13    1  |1 0>               0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000      -0.000
                               -0.000       0.000     -14.724       4.542       0.046       0.000       0.000       0.000

   14    1  |1 0>              -0.000      -0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                               16.074       0.000       0.000      -0.000      -0.000       0.000       0.000       0.170

   15    1  |1 0>              -0.000       0.000       0.000      -0.000      -0.000      -0.000       0.000       0.000
                                0.000      -0.000      -0.000      -0.000       0.000      -0.264      -0.000       0.000

   16    1  |1 0>               0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000
                                0.000       0.000      -9.390      16.038      72.340       0.000      -0.000       0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.002     320.966       0.000       0.000      -0.000      -0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000     160.520      -0.000       0.000      -0.000       0.000       0.271      -0.000

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -160.520      -0.000       0.000       0.000      -0.000       0.000       0.000       0.272

    4    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000       0.000       0.000      -0.000       0.000       0.000

    5    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000       0.000      -0.000      13.334       0.000      -0.000

    6    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000       0.000       0.000       0.000      -0.000      -0.000

    7    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000     -13.334      -0.000      -0.000       0.000       0.000

    8    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.271      -0.000      -0.000      -0.000       0.000      -0.000      -0.000    -485.973

    9    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.272      -0.000       0.000       0.000      -0.000     485.973       0.000

   10    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000       0.000       0.000    -324.136      -0.000      -0.000

   11    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      18.192       0.000       0.060      -0.000      -0.000      -0.000

   12    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000     -17.055      -0.000       0.000       0.000       0.000      -7.852       0.000

   13    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               17.055       0.000       0.000      -0.000       0.000       0.000      -0.000      -7.845

   14    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000     -18.340       0.000     -72.365       0.000       0.000       0.000

   15    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000     -16.052      -0.000       0.000      -0.000      -0.000      -0.372       0.000

   16    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -16.052       0.000       0.000       0.000      -0.000       0.000       0.000       0.372

  State Sym Spin    / Nr.       17          18          19          20          21          22          23          24

    1    1  |0 0>               0.000      -0.000      -0.242      -0.000       0.000     372.837       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |0 0>              -0.000      -0.000     -35.252      -0.000      -0.000      60.589      -0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000    -110.984

    3    1  |0 0>               0.000       0.000     -25.447      -0.000      -0.000     305.993       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000     326.123

    4    1  |0 0>             -37.585      -0.000       0.000       0.000       0.000       0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |0 0>               0.000      -0.000       0.000      11.477       0.000       0.000     270.267       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000

    6    1  |0 0>               0.000     -28.912       0.000       0.000    -270.289      -0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000

    7    1  |0 0>               0.000       0.000      -0.111      -0.000       0.000     184.907       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000

    1    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000    -160.524

    3    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000

    5    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000

    6    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000

    8    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000

    9    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000      16.566

   10    1  |1 1>+          31783.139       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000

   11    1  |1 1>+              0.000   31783.130       0.000       0.000       0.000       0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   12    1  |1 1>+              0.000       0.000   31783.155       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       4.122

   13    1  |1 1>+              0.000       0.000       0.000   31783.155       0.000       0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   14    1  |1 1>+              0.000       0.000       0.000       0.000   32605.505       0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   15    1  |1 1>+              0.000       0.000       0.000       0.000       0.000   32605.612       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000     -16.077

   16    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000   32605.612      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000

    1    1  |1 0>               0.000      -0.000       0.000      -0.000      -0.000       0.000      -0.000   15086.999
                                0.000      -0.000      -4.122      -0.000      -0.000      16.077       0.000       0.000

    2    1  |1 0>              -0.000       0.000       0.000       0.000      -0.000      -0.000       0.000       0.000
                                0.000     -10.395      -0.000       0.000     -16.074      -0.000      -0.000      -0.000

    3    1  |1 0>              -0.000       0.000       0.000       0.000      -0.000       0.000      -0.000       0.000
                              -13.505      -0.000       0.000      -0.000      -0.000       0.000      -0.000      -0.000

    4    1  |1 0>               0.000      -0.000       0.000       0.000       0.000       0.000      -0.000       0.000
                                0.000      -0.000       0.000      14.724      -0.000       0.000       9.390      -0.000

    5    1  |1 0>              -0.000      -0.000       0.000       0.000       0.000      -0.000      -0.000       0.000
                                0.000       0.000      -0.000      -4.542       0.000       0.000     -16.038      -0.000

    6    1  |1 0>              -0.000      -0.000      -0.000      -0.000       0.000      -0.000      -0.000       0.000
                                0.000      -0.000      -0.000      -0.046       0.000      -0.000     -72.340      -0.000

    7    1  |1 0>               0.000      -0.000      -0.000      -0.000       0.000      -0.000       0.000       0.000
                               -0.000       0.000     258.562      -0.000      -0.000       0.264      -0.000      -0.000

    8    1  |1 0>              -0.000       0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                              201.486       0.000       0.000      -0.000      -0.000       0.000       0.000      -0.000

    9    1  |1 0>               0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000
                               -0.000       4.846      -0.000      -0.000      -0.170      -0.000      -0.000      -0.000

   10    1  |1 0>               0.000       0.000       0.000      -0.000       0.000       0.000      -0.000       0.000
                                0.000      -0.000       0.000     253.706      -0.000       0.000      -0.133      -0.000

   11    1  |1 0>               0.000      -0.000       0.000      -0.000      -0.000       0.000       0.000       0.000
                                0.000       0.000    -396.859       0.000      -0.000      -0.658       0.000      -0.000

   12    1  |1 0>               0.000       0.000      -0.000       0.000       0.000       0.000      -0.000       0.000
                               -0.000     396.859       0.000       0.000       0.633      -0.000      -0.000      -0.000

   13    1  |1 0>              -0.000      -0.000       0.000      -0.000      -0.000       0.000       0.000       0.000
                             -253.706      -0.000      -0.000       0.000       0.000      -0.000       0.000      -0.000

   14    1  |1 0>               0.000      -0.000       0.000      -0.000      -0.000       0.000       0.000       0.000
                                0.000       0.000      -0.633      -0.000       0.000     661.970       0.000      -0.000

   15    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.658       0.000       0.000    -661.970       0.000      -0.000      -0.000

   16    1  |1 0>              -0.000       0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.133      -0.000       0.000      -0.000      -0.000       0.000       0.000      -0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -13.337      -0.000      -0.000       0.000       0.000      -0.000      -0.000       0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000     -17.055      -0.000      -0.000      16.052       0.000

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000    -160.524
                               -0.000      -0.000      17.055      -0.000       0.000      16.052      -0.000       0.000

    4    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                                0.000     -18.192       0.000      -0.000      18.340       0.000      -0.000      -0.000

    5    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                               -0.000      -0.000      -0.000       0.000      -0.000      -0.000      -0.000       0.000

    6    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.060      -0.000      -0.000      72.365       0.000       0.000       0.000

    7    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              324.136       0.000      -0.000      -0.000      -0.000       0.000      -0.000      -0.000

    8    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000     -16.566
                                0.000       0.000       7.852       0.000      -0.000       0.372      -0.000      -0.000

    9    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                                0.000       0.000      -0.000       7.845      -0.000      -0.000      -0.372       0.000

   10    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000       0.000       0.000      -0.000       0.000

   11    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000      -0.000       0.000       0.000       0.000

   12    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                               -0.000      -0.000      -0.000     162.006       0.000       0.000       0.216      -0.000

   13    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       4.122
                               -0.000       0.000    -162.006      -0.000      -0.000       0.216       0.000       0.000

   14    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                               -0.000       0.000      -0.000       0.000      -0.000      -0.000       0.000       0.000

   15    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                               -0.000      -0.000      -0.000      -0.216       0.000       0.000    -661.965       0.000

   16    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000      16.077
                                0.000      -0.000      -0.216      -0.000      -0.000     661.965      -0.000       0.000

  State Sym Spin    / Nr.       25          26          27          28          29          30          31          32

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000      -0.000      -0.000      -0.000       0.000      -0.000

    2    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000       0.000      -0.000      12.107      -0.000       0.000

    3    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000       0.000     -35.576      -0.000       0.000

    4    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000    -172.402       0.000      -0.000       0.000      -0.000      -0.695       0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.002    -344.710       0.000      -0.000       0.000       0.000

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              172.402       0.000      -0.000      -0.000       0.000      -0.000      -0.000      -0.696

    7    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000       0.000      -0.000       0.000       0.000      -0.000

    1    1  |1 1>+              0.000       0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000
                              160.524      -0.000       0.000       0.000      -0.000       0.000       0.000     -16.566

    2    1  |1 1>+             -0.000      -0.000      -0.000      -0.000      -0.000       0.000      -0.000      -0.000
                                0.000       0.000      -0.000       0.000      -0.000     -13.551      -0.000       0.000

    3    1  |1 1>+             -0.000       0.000      -0.000       0.000      -0.000       0.000      -0.000       0.000
                               -0.000       0.000    -277.968    -160.489      -0.004       0.000      -0.000       0.000

    4    1  |1 1>+             -0.000      -0.000      -0.000       0.000      -0.000      -0.000      -0.000       0.000
                                0.000     277.968       0.000       0.000      -0.000       0.000      -0.135      -0.000

    5    1  |1 1>+             -0.000       0.000       0.000      -0.000      -0.000       0.000      -0.000       0.000
                               -0.000     160.489      -0.000       0.000      -0.000      -0.000     -16.443       0.000

    6    1  |1 1>+             -0.000      -0.000      -0.000      -0.000       0.000      -0.000       0.000       0.000
                                0.000       0.004       0.000       0.000       0.000       0.000      -0.027       0.000

    7    1  |1 1>+              0.000       0.000      -0.000       0.000      -0.000       0.000       0.000      -0.000
                               13.551      -0.000      -0.000       0.000      -0.000       0.000      -0.000    -195.290

    8    1  |1 1>+             -0.000      -0.000      -0.000      -0.000       0.000       0.000      -0.000      -0.000
                                0.000       0.000       0.135      16.443       0.027       0.000       0.000       0.000

    9    1  |1 1>+             -0.000       0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000
                               -0.000      -0.000       0.000      -0.000      -0.000     195.290      -0.000       0.000

   10    1  |1 1>+             -0.000      -0.000       0.000      -0.000      -0.000       0.000      -0.000       0.000
                               -0.000      13.505      -0.000      -0.000      -0.000       0.000    -201.486       0.000

   11    1  |1 1>+              0.000       0.000      -0.000      -0.000      -0.000      -0.000       0.000      -0.000
                               10.395       0.000       0.000      -0.000       0.000      -0.000      -0.000      -4.846

   12    1  |1 1>+              0.000       0.000       0.000       0.000      -0.000      -0.000       0.000      -0.000
                                0.000      -0.000      -0.000       0.000       0.000    -258.562      -0.000       0.000

   13    1  |1 1>+              0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000      -0.000
                               -0.000       0.000     -14.724       4.542       0.046       0.000       0.000       0.000

   14    1  |1 1>+             -0.000      -0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                               16.074       0.000       0.000      -0.000      -0.000       0.000       0.000       0.170

   15    1  |1 1>+             -0.000       0.000       0.000      -0.000      -0.000      -0.000       0.000       0.000
                                0.000      -0.000      -0.000      -0.000       0.000      -0.264      -0.000       0.000

   16    1  |1 1>+              0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000
                                0.000       0.000      -9.390      16.038      72.340       0.000      -0.000       0.000

    1    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 0>           15087.007       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 0>               0.000   15087.007       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 0>               0.000       0.000   15087.077       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 0>               0.000       0.000       0.000   15087.111       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 0>               0.000       0.000       0.000       0.000   26421.011       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

    7    1  |1 0>               0.000       0.000       0.000       0.000       0.000   31782.882       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000

    8    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000   31782.843       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000

    9    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000   31782.843
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000

   10    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

   11    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

   12    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

   13    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

   14    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

   15    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

   16    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

    1    1  |1 1>-             -0.000     160.524       0.000       0.000      -0.000      -0.000      16.566       0.000
                                0.000       0.000      -0.000       0.000       0.000      -0.000      -0.000       0.000

    2    1  |1 1>-              0.000      -0.000    -277.970     160.486      -0.004       0.000      -0.000       0.000
                                0.000      -0.000       0.000      -0.000       0.000       0.000       0.000      -0.000

    3    1  |1 1>-              0.000       0.000      -0.000       0.000      -0.000     -13.551      -0.000       0.000
                               -0.000      -0.000       0.000      -0.000      -0.000      -0.000      -0.000      -0.000

    4    1  |1 1>-            277.970       0.000       0.000      -0.000      -0.000       0.000      -0.000       0.135
                                0.000       0.000      -0.000      -0.000      -0.000       0.000       0.000      -0.000

    5    1  |1 1>-           -160.486      -0.000       0.000       0.000       0.000      -0.000      -0.000     -16.443
                               -0.000      -0.000      -0.000       0.000       0.000       0.000      -0.000      -0.000

    6    1  |1 1>-              0.004       0.000       0.000      -0.000       0.000      -0.000      -0.000       0.027
                                0.000      -0.000      -0.000       0.000       0.000       0.000       0.000      -0.000

    7    1  |1 1>-             -0.000      13.551      -0.000       0.000       0.000       0.000     195.295       0.000
                                0.000      -0.000       0.000       0.000       0.000       0.000       0.000      -0.000

    8    1  |1 1>-              0.000       0.000       0.000       0.000       0.000    -195.295       0.000       0.000
                                0.000      -0.000       0.000      -0.000       0.000       0.000      -0.000       0.000

    9    1  |1 1>-             -0.000      -0.000      -0.135      16.443      -0.027      -0.000      -0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000      -0.000

   10    1  |1 1>-            -13.504       0.000       0.000      -0.000       0.000      -0.000      -0.000    -201.491
                                0.000       0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000

   11    1  |1 1>-             -0.000     -10.395      -0.000      -0.000       0.000       0.000      -4.838       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000      -0.000

   12    1  |1 1>-              0.000      -0.000     -14.724      -4.543       0.046      -0.000      -0.000       0.000
                               -0.000      -0.000      -0.000       0.000      -0.000       0.000      -0.000      -0.000

   13    1  |1 1>-              0.000       0.000      -0.000       0.000       0.000    -258.557      -0.000       0.000
                               -0.000      -0.000       0.000      -0.000       0.000       0.000       0.000      -0.000

   14    1  |1 1>-             -0.000     -16.074       0.000       0.000       0.000       0.000       0.170      -0.000
                                0.000       0.000       0.000       0.000       0.000      -0.000       0.000      -0.000

   15    1  |1 1>-             -0.000      -0.000       9.389      16.038     -72.340      -0.000      -0.000       0.000
                               -0.000      -0.000       0.000      -0.000      -0.000       0.000      -0.000      -0.000

   16    1  |1 1>-              0.000      -0.000       0.000       0.000       0.000       0.264      -0.000       0.000
                                0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000

  State Sym Spin    / Nr.       33          34          35          36          37          38          39          40

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.312      -0.000      -0.000     372.849       0.000       0.000      -0.000

    2    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      48.342       0.000       0.000    -295.294      -0.000       0.000      -0.000

    3    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      16.451       0.000       0.000    -100.493       0.000       0.000      -0.000

    4    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      47.380       0.000      -0.000    -270.292    -172.397

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               37.498       0.000       0.000      -0.000       0.000       0.000      -0.000      -0.000

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000     -47.379       0.000       0.000    -270.292      -0.000       0.000

    7    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.142      -0.000      -0.000     184.930       0.000       0.000      -0.000

    1    1  |1 1>+              0.000      -0.000       0.000      -0.000      -0.000       0.000      -0.000       0.000
                                0.000      -0.000      -4.122      -0.000      -0.000      16.077       0.000      -0.000

    2    1  |1 1>+             -0.000       0.000       0.000       0.000      -0.000      -0.000       0.000       0.000
                                0.000     -10.395      -0.000       0.000     -16.074      -0.000      -0.000      -0.000

    3    1  |1 1>+             -0.000       0.000       0.000       0.000      -0.000       0.000      -0.000       0.000
                              -13.505      -0.000       0.000      -0.000      -0.000       0.000      -0.000       0.000

    4    1  |1 1>+              0.000      -0.000       0.000       0.000       0.000       0.000      -0.000       0.000
                                0.000      -0.000       0.000      14.724      -0.000       0.000       9.390       0.002

    5    1  |1 1>+             -0.000      -0.000       0.000       0.000       0.000      -0.000      -0.000       0.000
                                0.000       0.000      -0.000      -4.542       0.000       0.000     -16.038    -320.966

    6    1  |1 1>+             -0.000      -0.000      -0.000      -0.000       0.000      -0.000      -0.000       0.000
                                0.000      -0.000      -0.000      -0.046       0.000      -0.000     -72.340      -0.000

    7    1  |1 1>+              0.000      -0.000      -0.000      -0.000       0.000      -0.000       0.000       0.000
                               -0.000       0.000     258.562      -0.000      -0.000       0.264      -0.000      -0.000

    8    1  |1 1>+             -0.000       0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                              201.486       0.000       0.000      -0.000      -0.000       0.000       0.000       0.000

    9    1  |1 1>+              0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000
                               -0.000       4.846      -0.000      -0.000      -0.170      -0.000      -0.000       0.000

   10    1  |1 1>+              0.000       0.000       0.000      -0.000       0.000       0.000      -0.000       0.000
                                0.000      -0.000       0.000     253.706      -0.000       0.000      -0.133      13.337

   11    1  |1 1>+              0.000      -0.000       0.000      -0.000      -0.000       0.000       0.000       0.000
                                0.000       0.000    -396.859       0.000      -0.000      -0.658       0.000       0.000

   12    1  |1 1>+              0.000       0.000      -0.000       0.000       0.000       0.000      -0.000       0.000
                               -0.000     396.859       0.000       0.000       0.633      -0.000      -0.000       0.000

   13    1  |1 1>+             -0.000      -0.000       0.000      -0.000      -0.000       0.000       0.000       0.000
                             -253.706      -0.000      -0.000       0.000       0.000      -0.000       0.000      -0.000

   14    1  |1 1>+              0.000      -0.000       0.000      -0.000      -0.000       0.000       0.000       0.000
                                0.000       0.000      -0.633      -0.000       0.000     661.970       0.000      -0.000

   15    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.658       0.000       0.000    -661.970       0.000      -0.000       0.000

   16    1  |1 1>+             -0.000       0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.133      -0.000       0.000      -0.000      -0.000       0.000       0.000       0.000

    1    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000

    2    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000

    3    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000     160.524
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000

    4    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000

    6    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000

    7    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000      16.566
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000

   10    1  |1 0>           31783.139       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   11    1  |1 0>               0.000   31783.130       0.000       0.000       0.000       0.000       0.000      -0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000

   12    1  |1 0>               0.000       0.000   31783.155       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000

   13    1  |1 0>               0.000       0.000       0.000   31783.155       0.000       0.000       0.000      -4.122
                               -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000      -0.000

   14    1  |1 0>               0.000       0.000       0.000       0.000   32605.505       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000      -0.000

   15    1  |1 0>               0.000       0.000       0.000       0.000       0.000   32605.612       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000      -0.000

   16    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000   32605.612     -16.077
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000      -0.000

    1    1  |1 1>-             -0.000      -0.000       0.000      -4.122       0.000       0.000     -16.077   15086.999
                                0.000       0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>-             13.504       0.000      -0.000      -0.000       0.000       0.000      -0.000       0.000
                                0.000      -0.000      -0.000      -0.000       0.000      -0.000       0.000       0.000

    3    1  |1 1>-             -0.000      10.395       0.000      -0.000      16.074       0.000       0.000       0.000
                                0.000      -0.000      -0.000      -0.000       0.000      -0.000      -0.000       0.000

    4    1  |1 1>-             -0.000       0.000      14.724       0.000      -0.000      -9.389      -0.000       0.000
                               -0.000      -0.000      -0.000       0.000       0.000       0.000      -0.000       0.000

    5    1  |1 1>-              0.000       0.000       4.543      -0.000      -0.000     -16.038      -0.000       0.000
                               -0.000      -0.000       0.000      -0.000       0.000      -0.000      -0.000       0.000

    6    1  |1 1>-             -0.000      -0.000      -0.046      -0.000      -0.000      72.340      -0.000       0.000
                               -0.000      -0.000      -0.000       0.000       0.000      -0.000      -0.000       0.000

    7    1  |1 1>-              0.000      -0.000       0.000     258.557      -0.000       0.000      -0.264       0.000
                               -0.000       0.000       0.000       0.000      -0.000       0.000      -0.000       0.000

    8    1  |1 1>-              0.000       4.838       0.000       0.000      -0.170       0.000       0.000       0.000
                                0.000       0.000      -0.000       0.000       0.000      -0.000      -0.000       0.000

    9    1  |1 1>-            201.491      -0.000      -0.000      -0.000       0.000      -0.000      -0.000       0.000
                                0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000

   10    1  |1 1>-              0.000       0.000    -253.702      -0.000      -0.000      -0.133       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

   11    1  |1 1>-             -0.000       0.000      -0.000     396.860       0.000       0.000      -0.658       0.000
                               -0.000       0.000       0.000       0.000      -0.000       0.000       0.000       0.000

   12    1  |1 1>-            253.702       0.000       0.000       0.000      -0.000       0.000      -0.000       0.000
                               -0.000       0.000      -0.000       0.000       0.000      -0.000      -0.000       0.000

   13    1  |1 1>-              0.000    -396.860      -0.000       0.000      -0.633       0.000      -0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000      -0.000       0.000

   14    1  |1 1>-              0.000      -0.000       0.000       0.633       0.000       0.000     661.970       0.000
                                0.000      -0.000       0.000       0.000      -0.000      -0.000       0.000       0.000

   15    1  |1 1>-              0.133      -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000       0.000      -0.000      -0.000       0.000       0.000

   16    1  |1 1>-             -0.000       0.658       0.000       0.000    -661.970      -0.000       0.000       0.000
                                0.000       0.000      -0.000      -0.000       0.000       0.000      -0.000       0.000

  State Sym Spin    / Nr.       41          42          43          44          45          46          47          48

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.008       0.000      -0.000       0.000       0.000       0.129      -0.000

    2    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000     226.905      -0.000       0.000      -0.000       0.000      14.446      -0.000

    3    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000     259.222      -0.000       0.000      -0.000      -0.000     -43.826      -0.000

    4    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000       0.000      -0.000     -37.600      -0.000       0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              172.407       0.000      -0.000      -0.000      -0.000       0.000       0.000     -46.052

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000    -298.520    -172.356       0.000      -0.000      -0.000       0.000

    7    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.001       0.000       0.000       0.000       0.000       0.064      -0.000

    1    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.002     320.966       0.000       0.000      -0.000      -0.000

    2    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000     160.520      -0.000       0.000      -0.000       0.000       0.271      -0.000

    3    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -160.520      -0.000       0.000       0.000      -0.000       0.000       0.000       0.272

    4    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000       0.000       0.000      -0.000       0.000       0.000

    5    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000       0.000      -0.000      13.334       0.000      -0.000

    6    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000       0.000       0.000       0.000      -0.000      -0.000

    7    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000     -13.334      -0.000      -0.000       0.000       0.000

    8    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.271      -0.000      -0.000      -0.000       0.000      -0.000      -0.000    -485.973

    9    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.272      -0.000       0.000       0.000      -0.000     485.973       0.000

   10    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000       0.000       0.000    -324.136      -0.000      -0.000

   11    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      18.192       0.000       0.060      -0.000      -0.000      -0.000

   12    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000     -17.055      -0.000       0.000       0.000       0.000      -7.852       0.000

   13    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               17.055       0.000       0.000      -0.000       0.000       0.000      -0.000      -7.845

   14    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000     -18.340       0.000     -72.365       0.000       0.000       0.000

   15    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000     -16.052      -0.000       0.000      -0.000      -0.000      -0.372       0.000

   16    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -16.052       0.000       0.000       0.000      -0.000       0.000       0.000       0.372

    1    1  |1 0>               0.000    -160.524      -0.000      -0.000       0.000       0.000     -16.566      -0.000
                               -0.000      -0.000       0.000      -0.000      -0.000       0.000       0.000      -0.000

    2    1  |1 0>               0.000       0.000     277.970    -160.486       0.004      -0.000       0.000      -0.000
                               -0.000       0.000      -0.000       0.000      -0.000      -0.000      -0.000       0.000

    3    1  |1 0>              -0.000       0.000       0.000      -0.000       0.000      13.551       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 0>            -277.970      -0.000       0.000       0.000       0.000      -0.000       0.000      -0.135
                               -0.000       0.000       0.000       0.000       0.000      -0.000      -0.000       0.000

    5    1  |1 0>             160.486       0.000      -0.000       0.000      -0.000       0.000       0.000      16.443
                                0.000       0.000       0.000      -0.000      -0.000      -0.000       0.000       0.000

    6    1  |1 0>              -0.004      -0.000      -0.000       0.000       0.000       0.000       0.000      -0.027
                               -0.000       0.000       0.000      -0.000      -0.000      -0.000      -0.000       0.000

    7    1  |1 0>               0.000     -13.551       0.000      -0.000      -0.000       0.000    -195.295      -0.000
                               -0.000       0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000

    8    1  |1 0>              -0.000      -0.000      -0.000      -0.000      -0.000     195.295       0.000      -0.000
                               -0.000       0.000      -0.000       0.000      -0.000      -0.000       0.000      -0.000

    9    1  |1 0>               0.000       0.000       0.135     -16.443       0.027       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000      -0.000       0.000

   10    1  |1 0>              13.504      -0.000      -0.000       0.000      -0.000       0.000       0.000     201.491
                               -0.000      -0.000       0.000       0.000       0.000       0.000       0.000      -0.000

   11    1  |1 0>               0.000      10.395       0.000       0.000      -0.000      -0.000       4.838      -0.000
                                0.000       0.000       0.000       0.000       0.000      -0.000      -0.000       0.000

   12    1  |1 0>              -0.000       0.000      14.724       4.543      -0.046       0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000      -0.000       0.000       0.000

   13    1  |1 0>              -0.000      -0.000       0.000      -0.000      -0.000     258.557       0.000      -0.000
                                0.000       0.000      -0.000       0.000      -0.000      -0.000      -0.000       0.000

   14    1  |1 0>               0.000      16.074      -0.000      -0.000      -0.000      -0.000      -0.170       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000

   15    1  |1 0>               0.000       0.000      -9.389     -16.038      72.340       0.000       0.000      -0.000
                                0.000       0.000      -0.000       0.000       0.000      -0.000       0.000       0.000

   16    1  |1 0>              -0.000       0.000      -0.000      -0.000      -0.000      -0.264       0.000      -0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>-          15087.007       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>-              0.000   15087.007       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>-              0.000       0.000   15087.077       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>-              0.000       0.000       0.000   15087.111       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>-              0.000       0.000       0.000       0.000   26421.011       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>-              0.000       0.000       0.000       0.000       0.000   31782.882       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000   31782.843       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000   31782.843
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   10    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   11    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   12    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   13    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   14    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   15    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   16    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

  State Sym Spin    / Nr.       49          50          51          52          53          54          55

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.242      -0.000       0.000     372.837

    2    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000      43.456       0.000       0.000     234.663

    3    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       1.339      -0.000       0.000    -205.515

    4    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000     -28.912       0.000       0.000    -270.289      -0.000      -0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000     -11.476       0.000      -0.000     270.267      -0.000

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -37.584       0.000       0.000      -0.000      -0.000       0.000      -0.000

    7    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.111       0.000       0.000     184.907

    1    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -13.337      -0.000      -0.000       0.000       0.000      -0.000      -0.000

    2    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000     -17.055      -0.000      -0.000      16.052

    3    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      17.055      -0.000       0.000      16.052      -0.000

    4    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000     -18.192       0.000      -0.000      18.340       0.000      -0.000

    5    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000       0.000      -0.000      -0.000      -0.000

    6    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.060      -0.000      -0.000      72.365       0.000       0.000

    7    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              324.136       0.000      -0.000      -0.000      -0.000       0.000      -0.000

    8    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       7.852       0.000      -0.000       0.372      -0.000

    9    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000       7.845      -0.000      -0.000      -0.372

   10    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000       0.000       0.000      -0.000

   11    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000      -0.000       0.000       0.000

   12    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000     162.006       0.000       0.000       0.216

   13    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000    -162.006      -0.000      -0.000       0.216       0.000

   14    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000       0.000      -0.000      -0.000       0.000

   15    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.216       0.000       0.000    -661.965

   16    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.216      -0.000      -0.000     661.965      -0.000

    1    1  |1 0>               0.000       0.000      -0.000       4.122      -0.000      -0.000      16.077
                                0.000      -0.000       0.000      -0.000      -0.000      -0.000      -0.000

    2    1  |1 0>             -13.504      -0.000       0.000       0.000      -0.000      -0.000       0.000
                               -0.000       0.000       0.000       0.000      -0.000       0.000      -0.000

    3    1  |1 0>               0.000     -10.395      -0.000       0.000     -16.074      -0.000      -0.000
                               -0.000       0.000       0.000       0.000      -0.000       0.000       0.000

    4    1  |1 0>               0.000      -0.000     -14.724      -0.000       0.000       9.389       0.000
                                0.000       0.000       0.000      -0.000      -0.000      -0.000       0.000

    5    1  |1 0>              -0.000      -0.000      -4.543       0.000       0.000      16.038       0.000
                                0.000       0.000       0.000       0.000      -0.000       0.000       0.000

    6    1  |1 0>               0.000       0.000       0.046       0.000       0.000     -72.340       0.000
                                0.000       0.000       0.000      -0.000      -0.000       0.000       0.000

    7    1  |1 0>              -0.000       0.000      -0.000    -258.557       0.000      -0.000       0.264
                                0.000      -0.000      -0.000      -0.000       0.000      -0.000       0.000

    8    1  |1 0>              -0.000      -4.838      -0.000      -0.000       0.170      -0.000      -0.000
                                0.000      -0.000       0.000      -0.000       0.000       0.000       0.000

    9    1  |1 0>            -201.491       0.000       0.000       0.000      -0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000      -0.000

   10    1  |1 0>               0.000      -0.000     253.702       0.000       0.000       0.133      -0.000
                                0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000

   11    1  |1 0>               0.000       0.000       0.000    -396.860      -0.000      -0.000       0.658
                                0.000      -0.000       0.000       0.000       0.000      -0.000       0.000

   12    1  |1 0>            -253.702      -0.000       0.000      -0.000       0.000      -0.000       0.000
                                0.000       0.000       0.000      -0.000      -0.000       0.000       0.000

   13    1  |1 0>              -0.000     396.860       0.000       0.000       0.633      -0.000       0.000
                                0.000       0.000      -0.000      -0.000      -0.000      -0.000       0.000

   14    1  |1 0>              -0.000       0.000      -0.000      -0.633       0.000      -0.000    -661.970
                               -0.000       0.000      -0.000      -0.000       0.000       0.000      -0.000

   15    1  |1 0>              -0.133       0.000       0.000       0.000       0.000       0.000      -0.000
                               -0.000      -0.000       0.000      -0.000       0.000       0.000      -0.000

   16    1  |1 0>               0.000      -0.658      -0.000      -0.000     661.970       0.000       0.000
                               -0.000       0.000       0.000       0.000      -0.000      -0.000       0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000

   10    1  |1 1>-          31783.139       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000

   11    1  |1 1>-              0.000   31783.130       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000

   12    1  |1 1>-              0.000       0.000   31783.155       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000

   13    1  |1 1>-              0.000       0.000       0.000   31783.155       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000

   14    1  |1 1>-              0.000       0.000       0.000       0.000   32605.505       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000

   15    1  |1 1>-              0.000       0.000       0.000       0.000       0.000   32605.612       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000

   16    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000   32605.612
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000

 => Eigenvalues of spin-orbit matrix in ascending order  (E0 = Emin,ges)
    (symmetry =  1)

    Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
             (au)           (au)        (cm-1)           (au)       (cm-1)        (eV)
    1   -23.92312306    -0.00006072      -13.33      0.00000000        0.00      0.0000
    2   -23.85651463     0.06654771    14605.53      0.06660843    14618.86      1.8125
    3   -23.85651460     0.06654774    14605.54      0.06660846    14618.87      1.8125
    4   -23.85651460     0.06654774    14605.54      0.06660846    14618.87      1.8125
    5   -23.85532359     0.06773875    14866.94      0.06779947    14880.26      1.8449
    6   -23.85532345     0.06773889    14866.97      0.06779961    14880.29      1.8449
    7   -23.85532341     0.06773893    14866.98      0.06779965    14880.30      1.8449
    8   -23.85532341     0.06773893    14866.98      0.06779965    14880.30      1.8449
    9   -23.85532337     0.06773897    14866.98      0.06779969    14880.31      1.8449
   10   -23.85285850     0.07020384    15407.96      0.07026456    15421.29      1.9120
   11   -23.85285846     0.07020388    15407.97      0.07026461    15421.30      1.9120
   12   -23.85285845     0.07020388    15407.97      0.07026461    15421.30      1.9120
   13   -23.85285841     0.07020393    15407.98      0.07026465    15421.31      1.9120
   14   -23.85285841     0.07020393    15407.98      0.07026465    15421.31      1.9120
   15   -23.85285836     0.07020398    15407.99      0.07026471    15421.32      1.9120
   16   -23.85285830     0.07020404    15408.00      0.07026476    15421.33      1.9120
   17   -23.84138742     0.08167492    17925.57      0.08173564    17938.90      2.2241
   18   -23.84138731     0.08167502    17925.60      0.08173575    17938.92      2.2241
   19   -23.84138699     0.08167535    17925.67      0.08173608    17939.00      2.2242
   20   -23.84138697     0.08167536    17925.67      0.08173609    17939.00      2.2242
   21   -23.84138695     0.08167538    17925.67      0.08173611    17939.00      2.2242
   22   -23.80268799     0.12037435    26419.12      0.12043507    26432.44      3.2772
   23   -23.80268799     0.12037435    26419.12      0.12043507    26432.44      3.2772
   24   -23.80268798     0.12037435    26419.12      0.12043508    26432.44      3.2772
   25   -23.79737987     0.12568247    27584.11      0.12574319    27597.44      3.4216
   26   -23.78119946     0.14186288    31135.30      0.14192360    31148.63      3.8619
   27   -23.78119911     0.14186323    31135.38      0.14192395    31148.71      3.8619
   28   -23.78119874     0.14186359    31135.46      0.14192432    31148.79      3.8620
   29   -23.78119874     0.14186360    31135.46      0.14192432    31148.79      3.8620
   30   -23.78119866     0.14186368    31135.48      0.14192440    31148.81      3.8620
   31   -23.78034609     0.14271625    31322.60      0.14277697    31335.92      3.8852
   32   -23.77898677     0.14407557    31620.93      0.14413629    31634.26      3.9221
   33   -23.77898677     0.14407557    31620.93      0.14413630    31634.26      3.9221
   34   -23.77898637     0.14407597    31621.02      0.14413670    31634.35      3.9222
   35   -23.77898610     0.14407624    31621.08      0.14413696    31634.41      3.9222
   36   -23.77898610     0.14407624    31621.08      0.14413696    31634.41      3.9222
   37   -23.77898601     0.14407633    31621.10      0.14413705    31634.43      3.9222
   38   -23.77898574     0.14407660    31621.16      0.14413732    31634.49      3.9222
   39   -23.77750790     0.14555444    31945.51      0.14561516    31958.83      3.9624
   40   -23.77750790     0.14555444    31945.51      0.14561516    31958.83      3.9624
   41   -23.77750763     0.14555471    31945.57      0.14561543    31958.89      3.9624
   42   -23.77603438     0.14702796    32268.91      0.14708868    32282.23      4.0025
   43   -23.77603436     0.14702798    32268.91      0.14708870    32282.24      4.0025
   44   -23.77603367     0.14702866    32269.06      0.14708939    32282.39      4.0025
   45   -23.77603367     0.14702866    32269.06      0.14708939    32282.39      4.0025
   46   -23.77603340     0.14702894    32269.12      0.14708966    32282.45      4.0025
   47   -23.77603323     0.14702910    32269.16      0.14708983    32282.49      4.0025
   48   -23.77603310     0.14702924    32269.19      0.14708996    32282.51      4.0025
   49   -23.77603310     0.14702924    32269.19      0.14708996    32282.52      4.0025
   50   -23.77603303     0.14702930    32269.20      0.14709003    32282.53      4.0025
   51   -23.77144113     0.15162120    33277.01      0.15168193    33290.34      4.1275
   52   -23.77144102     0.15162132    33277.03      0.15168204    33290.36      4.1275
   53   -23.77144102     0.15162132    33277.03      0.15168204    33290.36      4.1275
   54   -23.77144083     0.15162151    33277.07      0.15168223    33290.40      4.1275
   55   -23.77144080     0.15162153    33277.08      0.15168226    33290.41      4.1275

 => Eigenvectors of spin-orbit matrix columnwise and corresponding to the
    eigenvalues in ascending order (symmetry =  1)

  Basis states          Eigenvectors (columnwise)

 State Sym Spin     / Nr.      1           2           3           4           5           6           7           8

   1    1  |0 0>           0.99978708  0.00000000  0.00000000 -0.00000000 -0.00000001  0.00000084  0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   2    1  |0 0>          -0.00000005  0.00000000 -0.00000000  0.00000000 -0.04551909  0.13173465  0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   3    1  |0 0>          -0.00000002  0.00000000 -0.00000000 -0.00000000  0.13175417  0.04551239  0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   4    1  |0 0>           0.00000000 -0.00000000 -0.00000000 -0.00000388 -0.00000000  0.00000000 -0.13948045 -0.00000011
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   5    1  |0 0>           0.00000000  0.00000007  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   6    1  |0 0>           0.00000000 -0.00000000  0.00000394 -0.00000000 -0.00000000 -0.00000000  0.00000011 -0.13948031
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   7    1  |0 0>           0.00023922 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000012 -0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   1    1  |1 1>+         -0.00000000  0.00000000  0.54775254 -0.00000040  0.00000000  0.00000000 -0.00000030  0.40430828
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000001

   2    1  |1 1>+         -0.00000058 -0.00000000  0.00000000  0.00000000 -0.40750081  0.69832033  0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   3    1  |1 1>+          0.00000000 -0.54775027  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000630  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   4    1  |1 1>+         -0.00000000 -0.00000000  0.00000023  0.31621660  0.00000000 -0.00000000  0.70016346  0.00000053
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000001 -0.00000001

   5    1  |1 1>+          0.00000000 -0.00000000  0.00000040  0.54765245 -0.00000000  0.00000000 -0.40423768 -0.00000030
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   6    1  |1 1>+          0.00000000  0.00000000  0.00000000  0.00001049  0.00000000 -0.00000000  0.00000005  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   7    1  |1 1>+         -0.00000000  0.00000000  0.00000707 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00034574
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   8    1  |1 1>+         -0.00000000 -0.00000361 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   9    1  |1 1>+         -0.00000420  0.00000000  0.00000000 -0.00000000  0.00042136 -0.00000572 -0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  10    1  |1 1>+         -0.00000000 -0.00000000  0.00000000  0.00000540  0.00000000 -0.00000000  0.00034486  0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  11    1  |1 1>+          0.00000000 -0.00000000 -0.00000330  0.00000000  0.00000000  0.00000000 -0.00000000  0.00027641
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  12    1  |1 1>+          0.00000783 -0.00000000  0.00000000 -0.00000000 -0.00010845 -0.00037841 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  13    1  |1 1>+          0.00000000  0.00000175 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  14    1  |1 1>+         -0.00000000  0.00000000  0.00084245 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00309936
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  15    1  |1 1>+         -0.01191252 -0.00000000  0.00000000 -0.00000000 -0.00309739 -0.00180628 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  16    1  |1 1>+         -0.00000000 -0.00084964  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000001  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   1    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.80850098  0.00374086 -0.00000000 -0.00000000

   2    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000001
                          -0.00000000  0.00000000  0.54776789 -0.00000040 -0.00000000 -0.00000000  0.00000030 -0.40425660

   3    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000040  0.54776768  0.00000000 -0.00000000  0.40425666  0.00000030

   4    1  |1 0>           0.00000000 -0.00000727  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.63240609 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   5    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000285 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000001

   6    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00001007  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   7    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00035123  0.00000163 -0.00000000 -0.00000000

   8    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000155 -0.00000000  0.00000000 -0.00000308 -0.00000000

   9    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000156  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000309

  10    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  11    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00001010 -0.00000000 -0.00000000  0.00000000  0.00000211 -0.00045772 -0.00000000  0.00000000

  12    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000498  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00044268

  13    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000498  0.00000000 -0.00000000  0.00044267  0.00000000

  14    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.01191290  0.00000000  0.00000000 -0.00000000  0.00001659 -0.00358604 -0.00000000  0.00000000

  15    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000  0.00084321 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00311219

  16    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00084321  0.00000000 -0.00000000  0.00311219  0.00000000

   1    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000040 -0.54775268  0.00000000 -0.00000000  0.40430804  0.00000030

   2    1  |1 1>-          0.00000000 -0.00000630  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.54775062 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   3    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000057  0.00000000 -0.00000000 -0.00000000  0.40102160  0.70206093  0.00000000 -0.00000000

   4    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000001  0.00000001
                           0.00000000 -0.00000000 -0.31622203  0.00000023  0.00000000  0.00000000 -0.00000053  0.70015938

   5    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000001
                          -0.00000000  0.00000000  0.54764925 -0.00000040  0.00000000  0.00000000 -0.00000030  0.40424461

   6    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00001049  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000005

   7    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000708 -0.00000000  0.00000000 -0.00034575 -0.00000000

   8    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000420 -0.00000000 -0.00000000  0.00000000  0.00042129  0.00000962 -0.00000000 -0.00000000

   9    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000361 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  10    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000540 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00034487

  11    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000330 -0.00000000  0.00000000 -0.00027640 -0.00000000

  12    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000175 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  13    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000783  0.00000000 -0.00000000  0.00000000  0.00011193 -0.00037739 -0.00000000  0.00000000

  14    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00084244  0.00000000 -0.00000000  0.00309937  0.00000000

  15    1  |1 1>-         -0.00000000  0.00000001 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00084963  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  16    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.01191252 -0.00000000 -0.00000000  0.00000000 -0.00311398  0.00177755  0.00000000 -0.00000000

 State Sym Spin     / Nr.      9          10          11          12          13          14          15          16

   1    1  |0 0>           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   2    1  |0 0>           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000716
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   3    1  |0 0>           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00002084
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   4    1  |0 0>           0.00000000 -0.00000000 -0.00000000  0.00000824 -0.00000000 -0.00001208  0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   5    1  |0 0>          -0.13948431 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00001076  0.00000000
                          -0.00003689  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   6    1  |0 0>          -0.00000000 -0.00000000 -0.00000826 -0.00000000 -0.00001217  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   7    1  |0 0>           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   1    1  |1 1>+          0.00000000 -0.00000000 -0.31699891 -0.00000050  0.65784857 -0.00000053  0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000002 -0.00000000  0.00000001 -0.00000002  0.00000000  0.00000000

   2    1  |1 1>+          0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.57734295
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   3    1  |1 1>+         -0.40429791  0.44643839 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.57788953  0.00000000
                          -0.00010693 -0.00002847 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000186  0.00000000

   4    1  |1 1>+         -0.00000000  0.00000000 -0.00000076  0.48088636 -0.00000033 -0.41084082  0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000001 -0.00000000  0.00000001 -0.00000002  0.00000000 -0.00000000

   5    1  |1 1>+          0.00000000  0.00000000 -0.00000095  0.59816291  0.00000034  0.41907359  0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000001 -0.00000000 -0.00000001  0.00000002  0.00000000 -0.00000000

   6    1  |1 1>+          0.00000000  0.00000000  0.00000000 -0.00000025  0.00000000  0.00000020  0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   7    1  |1 1>+         -0.00000000 -0.00000000 -0.00095637 -0.00000000 -0.00004666  0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   8    1  |1 1>+          0.00042897  0.00001320  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00057591  0.00000000
                           0.00000011 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   9    1  |1 1>+         -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00059967
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  10    1  |1 1>+         -0.00000000 -0.00000000  0.00000000 -0.00019884  0.00000000  0.00093504  0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  11    1  |1 1>+          0.00000000 -0.00000000 -0.00089948 -0.00000000 -0.00076040  0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  12    1  |1 1>+         -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00075410
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  13    1  |1 1>+         -0.00010001 -0.00117488  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00076750 -0.00000000
                          -0.00000003  0.00000007  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  14    1  |1 1>+         -0.00000000 -0.00000000 -0.00000644 -0.00000000 -0.00000548  0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  15    1  |1 1>+         -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000050
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  16    1  |1 1>+          0.00310607 -0.00000579  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000057 -0.00000000
                           0.00000082  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   1    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.57736219

   2    1  |1 0>           0.00000000  0.00000000 -0.00000004  0.00000001  0.00000001 -0.00000001 -0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.55769172 -0.00000088 -0.47144218  0.00000038  0.00000000 -0.00000000

   3    1  |1 0>           0.00000000 -0.00000000  0.00000001 -0.00000000  0.00000001 -0.00000002  0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000088 -0.55522023  0.00000038  0.47435057 -0.00000000  0.00000000

   4    1  |1 0>           0.00000000  0.00004941  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000364  0.77463496 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00098957  0.00000000

   5    1  |1 0>          -0.00021383 -0.00000005  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000186 -0.00000000
                           0.80846203 -0.00073608  0.00000000 -0.00000000  0.00000000 -0.00000000  0.57741380  0.00000000

   6    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000038 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   7    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00096504

   8    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00093799 -0.00000000 -0.00109193 -0.00000000  0.00000000

   9    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00093227  0.00000000 -0.00109681  0.00000000 -0.00000000 -0.00000000

  10    1  |1 0>          -0.00000009  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00034959  0.00000123 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00096185 -0.00000000

  11    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  12    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00035236  0.00000000  0.00032195 -0.00000000 -0.00000000  0.00000000

  13    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00035070 -0.00000000 -0.00032377  0.00000000 -0.00000000

  14    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  15    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000440 -0.00000000 -0.00000166  0.00000000  0.00000000  0.00000000

  16    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000440 -0.00000000 -0.00000168  0.00000000 -0.00000000

   1    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000  0.00000002 -0.00000003 -0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000051  0.32043280  0.00000053  0.65618285  0.00000000 -0.00000000

   2    1  |1 1>-          0.00010693 -0.00002857 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000185 -0.00000000
                          -0.40429765 -0.44791756  0.00000000  0.00000000 -0.00000000 -0.00000000  0.57674365 -0.00000000

   3    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.57734325

   4    1  |1 1>-         -0.00000000  0.00000000 -0.00000004  0.00000001  0.00000001 -0.00000001 -0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.48303285 -0.00000076 -0.40831794  0.00000033  0.00000000 -0.00000000

   5    1  |1 1>-         -0.00000000  0.00000000  0.00000005 -0.00000001  0.00000001 -0.00000001  0.00000000  0.00000000
                           0.00000000  0.00000000  0.59595985  0.00000095 -0.42219808  0.00000034 -0.00000000 -0.00000000

   6    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000025  0.00000000  0.00000020 -0.00000000 -0.00000000 -0.00000000

   7    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00095612 -0.00000000 -0.00005166  0.00000000 -0.00000000

   8    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00059965

   9    1  |1 1>-          0.00000011  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00042897  0.00001470 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00057586 -0.00000000

  10    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00020372 -0.00000000 -0.00093399  0.00000000  0.00000000 -0.00000000

  11    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00089550  0.00000000  0.00076509 -0.00000000  0.00000000

  12    1  |1 1>-          0.00000003  0.00000007  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00010000  0.00117291 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00077053  0.00000000

  13    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00075411

  14    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000642  0.00000000  0.00000550 -0.00000000  0.00000000

  15    1  |1 1>-          0.00000082 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00310608 -0.00000579  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000055 -0.00000000

  16    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000050

 State Sym Spin     / Nr.     17          18          19          20          21          22          23          24

   1    1  |0 0>          -0.00000003 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   2    1  |0 0>           0.94763236 -0.28621396  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   3    1  |0 0>           0.28621497  0.94762975 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   4    1  |0 0>          -0.00000000  0.00000000  0.98989736 -0.00000003  0.00000001 -0.00000000  0.00000011 -0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   5    1  |0 0>          -0.00000000  0.00000000 -0.00000001 -0.00000000  0.98989686  0.00000000  0.00000000 -0.00000001
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00001076  0.00000000 -0.00000000  0.00000000

   6    1  |0 0>           0.00000000  0.00000000  0.00000003  0.98989737  0.00000000  0.00000010  0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   7    1  |0 0>          -0.00000008 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   1    1  |1 1>+          0.00000000  0.00000000  0.00000000  0.05697780  0.00000000  0.00001781  0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   2    1  |1 1>+         -0.10051127  0.05349118 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   3    1  |1 1>+          0.00000000 -0.00000000  0.00000000  0.00000000 -0.05698093 -0.00000000  0.00000000 -0.00001745
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000062 -0.00000000  0.00000000  0.00000000

   4    1  |1 1>+         -0.00000000  0.00000000  0.09865824 -0.00000000  0.00000000  0.00000000 -0.00000991 -0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   5    1  |1 1>+          0.00000000 -0.00000000 -0.05696234  0.00000000 -0.00000000  0.00000000 -0.00001778 -0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   6    1  |1 1>+         -0.00000000  0.00000000 -0.00000002 -0.00000000 -0.00000000 -0.00005113  0.99982852  0.00000001
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000002 -0.00000007 -0.00000000

   7    1  |1 1>+          0.00000000 -0.00000000 -0.00000000 -0.00293370 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   8    1  |1 1>+         -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00359467  0.00000000  0.00000000  0.00000540
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000004  0.00000000 -0.00000000 -0.00000000

   9    1  |1 1>+          0.00016050 -0.00359557  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  10    1  |1 1>+         -0.00000000  0.00000000  0.00293248 -0.00000000  0.00000000 -0.00000000  0.00000009 -0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  11    1  |1 1>+          0.00000000  0.00000000  0.00000000  0.00225884  0.00000000  0.00001203  0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  12    1  |1 1>+          0.00320576  0.00110262  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  13    1  |1 1>+          0.00000000 -0.00000000  0.00000000  0.00000000 -0.00089343  0.00000000 -0.00000000  0.00000946
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000001  0.00000000 -0.00000000 -0.00000000

  14    1  |1 1>+          0.00000000  0.00000000  0.00000000  0.01726246  0.00000000 -0.01309634 -0.00000067  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  15    1  |1 1>+         -0.00935377 -0.01758746  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  16    1  |1 1>+          0.00000000 -0.00000000  0.00000000  0.00000000 -0.01725963  0.00000000 -0.00000000  0.01309209
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000019  0.00000000 -0.00000000 -0.00000002

   1    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00394992 -0.11378206  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   2    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.05697984 -0.00000000  0.00001813  0.00000000 -0.00000000

   3    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.05697983 -0.00000000  0.00000000  0.00000000 -0.00001814 -0.00000000

   4    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000056  0.00000000 -0.00000000  0.00002086

   5    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000124  0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.11392431 -0.00000000 -0.00000000 -0.00000000

   6    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000141
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000001  0.00000001 -0.00000001  0.99982858

   7    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00010178 -0.00293189  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   8    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00005302  0.00000000 -0.00000000  0.00000000 -0.00000543 -0.00000000

   9    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00005310  0.00000000 -0.00000543 -0.00000000  0.00000000

  10    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000003 -0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00292663  0.00000000  0.00000000 -0.00000000

  11    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00397810  0.00013807  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  12    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00369884 -0.00000000  0.00000930  0.00000000 -0.00000000

  13    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00369888 -0.00000000  0.00000000  0.00000000 -0.00000930 -0.00000000

  14    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.01990777 -0.00069110 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  15    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.01726032 -0.00000000 -0.01309255 -0.00000067  0.00000000

  16    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.01726031  0.00000000 -0.00000000  0.00000067 -0.01309255 -0.00000000

   1    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000  0.05697776 -0.00000000  0.00000000 -0.00000000  0.00001781  0.00000000

   2    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000062  0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.05698095  0.00000000 -0.00000000  0.00001746

   3    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.09655975 -0.06033234 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   4    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000  0.09865755  0.00000000 -0.00000991 -0.00000000  0.00000000

   5    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000  0.05696315  0.00000000  0.00001778  0.00000000 -0.00000000

   6    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000002 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000001 -0.00000000  0.99982852  0.00005113 -0.00000001

   7    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00293369  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   8    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00008931 -0.00359803  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   9    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000004  0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00359464  0.00000000 -0.00000000  0.00000540

  10    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00293243 -0.00000000 -0.00000009 -0.00000000 -0.00000000

  11    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00225884  0.00000000 -0.00000000  0.00000000 -0.00001203 -0.00000000

  12    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000001 -0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00089337 -0.00000000 -0.00000000 -0.00000946

  13    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00327448 -0.00087762  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  14    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.01726245  0.00000000 -0.00000000 -0.00000067  0.01309634  0.00000000

  15    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000019 -0.00000000  0.00000000  0.00000002
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.01725962  0.00000000 -0.00000000  0.01309208

  16    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.01055085 -0.01689648  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 State Sym Spin     / Nr.     25          26          27          28          29          30          31          32

   1    1  |0 0>          -0.00201216  0.00000002 -0.00000000  0.00000000  0.00000000 -0.00000379 -0.02053636  0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   2    1  |0 0>           0.00000030 -0.00188546  0.00000000  0.00000000  0.00000000 -0.00556765  0.00000303  0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   3    1  |0 0>           0.00000011  0.00553937  0.00000000  0.00000000 -0.00000000 -0.00189503  0.00000105 -0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   4    1  |0 0>           0.00000000 -0.00000000  0.00000000 -0.00000001 -0.00582420 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   5    1  |0 0>          -0.00000000 -0.00000000  0.00582047 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000019  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   6    1  |0 0>          -0.00000000  0.00000000  0.00000000  0.00582416 -0.00000001  0.00000000  0.00000000  0.00000105
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   7    1  |0 0>           0.99629755  0.00000007 -0.00000000  0.00000000  0.00000000 -0.00001643 -0.08597165  0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   1    1  |1 1>+          0.00000000  0.00000000  0.00000000  0.00062849 -0.00000000  0.00000000  0.00000000  0.00087759
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   2    1  |1 1>+          0.00000015  0.00063091  0.00000000 -0.00000000 -0.00000000  0.00109224  0.00000063  0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   3    1  |1 1>+          0.00000000  0.00000000 -0.00063359  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000002 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   4    1  |1 1>+          0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00109284 -0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   5    1  |1 1>+         -0.00000000  0.00000000 -0.00000000  0.00000000  0.00062941  0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   6    1  |1 1>+         -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000024  0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   7    1  |1 1>+         -0.00000000  0.00000000  0.00000000  0.48811984 -0.00000049  0.00000000 -0.00000000 -0.53126608
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   8    1  |1 1>+         -0.00000000  0.00000000 -0.59956305  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00002001 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   9    1  |1 1>+         -0.00001934  0.59574419  0.00000000 -0.00000000 -0.00000000  0.00647141 -0.00032125 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  10    1  |1 1>+         -0.00000000  0.00000000 -0.00000000  0.00000049  0.48794364  0.00000000  0.00000000 -0.00000001
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  11    1  |1 1>+          0.00000000 -0.00000000 -0.00000000 -0.37787848  0.00000038 -0.00000000 -0.00000000 -0.34534379
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  12    1  |1 1>+          0.00003355 -0.16141339 -0.00000000 -0.00000000  0.00000000  0.53449023  0.00043452 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  13    1  |1 1>+          0.00000000 -0.00000000  0.14690194 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000490  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  14    1  |1 1>+          0.00000000  0.00000000  0.00000000  0.00056219 -0.00000000  0.00000000  0.00000000  0.00020487
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  15    1  |1 1>+         -0.04962065 -0.00090733 -0.00000000 -0.00000000  0.00000000  0.00051848 -0.57507970  0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  16    1  |1 1>+         -0.00000000  0.00000000 -0.00066417  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000002 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   1    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00126180 -0.00000000  0.00000000  0.00000000  0.00000006 -0.00000000  0.00000000

   2    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00063477  0.00000000 -0.00000000  0.00000000  0.00059387

   3    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00063477 -0.00000000 -0.00000000 -0.00000000

   4    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000001  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   5    1  |1 0>           0.00000000  0.00000000 -0.00000004 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00125911 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   6    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   7    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000001  0.48786744  0.00000000 -0.00000000 -0.00000000 -0.00002523  0.00000030  0.00000000

   8    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000001 -0.00743119 -0.00000000  0.00000000  0.00000005

   9    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00744305 -0.00000001  0.00000000 -0.00000000  0.75746628

  10    1  |1 0>          -0.00000000 -0.00000000  0.00001627  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.48769950  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  11    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00004274  0.00003324 -0.00000000 -0.00000000 -0.00000000  0.65462521 -0.00086003 -0.00000000

  12    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000  0.61706214 -0.00000062  0.00000000  0.00000000  0.13193145

  13    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000062  0.61706221  0.00000000  0.00000000 -0.00000001

  14    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.04962570 -0.00000038  0.00000000 -0.00000000 -0.00000000  0.00121260  0.57511073  0.00000000

  15    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00049619  0.00000000 -0.00000000  0.00000000  0.00023683

  16    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00049616 -0.00000000  0.00000000  0.00000000

   1    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00062849 -0.00000000  0.00000000  0.00000000

   2    1  |1 1>-         -0.00000000 -0.00000000  0.00000002  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00063358  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   3    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000015 -0.00063080 -0.00000000 -0.00000000  0.00000000  0.00109231  0.00000062 -0.00000000

   4    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00109283 -0.00000000  0.00000000 -0.00000000  0.00051375

   5    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00062943 -0.00000000  0.00000000  0.00000000 -0.00116849

   6    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000024  0.00000000 -0.00000000 -0.00000000  0.00001283

   7    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000049 -0.48811873 -0.00000000 -0.00000000 -0.00000004

   8    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00001933  0.59574661  0.00000000 -0.00000000 -0.00000000 -0.00651999  0.00032220 -0.00000000

   9    1  |1 1>-         -0.00000000  0.00000000 -0.00002001 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.59956589 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  10    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000  0.48794357 -0.00000049  0.00000000  0.00000000  0.08561597

  11    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000038 -0.37787992 -0.00000000 -0.00000000  0.00000002

  12    1  |1 1>-          0.00000000  0.00000000 -0.00000490 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000  0.14689031 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  13    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00003356  0.16145474 -0.00000000 -0.00000000 -0.00000000  0.53447419  0.00043468  0.00000000

  14    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00056225  0.00000000 -0.00000000 -0.00000000

  15    1  |1 1>-         -0.00000000  0.00000000 -0.00000002 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00066417 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  16    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.04962067 -0.00090819  0.00000000 -0.00000000 -0.00000000 -0.00051833  0.57507982 -0.00000000

 State Sym Spin     / Nr.     33          34          35          36          37          38          39          40

   1    1  |0 0>           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   2    1  |0 0>           0.00000000 -0.00000113  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   3    1  |0 0>          -0.00000000  0.00000335  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   4    1  |0 0>           0.00000106 -0.00000000 -0.00000908  0.00000000 -0.00000000 -0.00000000  0.00000149  0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   5    1  |0 0>          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000001 -0.00000713 -0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   6    1  |0 0>          -0.00000000 -0.00000000  0.00000000  0.00000907 -0.00000000 -0.00000000  0.00000000 -0.00000150
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   7    1  |0 0>           0.00000000 -0.00000002 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   1    1  |1 1>+         -0.00000000 -0.00000000  0.00000000  0.00083371 -0.00000000 -0.00000000  0.00000000 -0.00065576
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   2    1  |1 1>+         -0.00000000  0.00096436  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   3    1  |1 1>+          0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00074451  0.00095931 -0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000006 -0.00000000  0.00000000  0.00000000

   4    1  |1 1>+          0.00051344  0.00000000  0.00092208 -0.00000000  0.00000000 -0.00000000 -0.00036428 -0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   5    1  |1 1>+          0.00116860  0.00000000 -0.00031142  0.00000000 -0.00000000 -0.00000000 -0.00065354 -0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   6    1  |1 1>+          0.00001282 -0.00000000  0.00000418 -0.00000000  0.00000000  0.00000000 -0.01851835 -0.00000002
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   7    1  |1 1>+          0.00000004  0.00000000  0.00000000  0.22573065 -0.00000000  0.00000000 -0.00000000  0.00086405
                          -0.00000000  0.00000000  0.00000000  0.00000021 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   8    1  |1 1>+         -0.00000000  0.00000000 -0.00000000  0.00000000  0.00896265 -0.34778785 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000069  0.00000083  0.00000000  0.00000000

   9    1  |1 1>+          0.00000000 -0.35899707 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  10    1  |1 1>+         -0.08579988 -0.00000000  0.57080877 -0.00000001  0.00000000  0.00000000  0.00024749  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000001 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  11    1  |1 1>+          0.00000002  0.00000000  0.00000001  0.61703850 -0.00000000  0.00000000  0.00000000 -0.00105809
                          -0.00000000 -0.00000000  0.00000001  0.00000058 -0.00000000 -0.00000000  0.00000000  0.00000000

  12    1  |1 1>+          0.00000000 -0.45199412 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  13    1  |1 1>+         -0.00000000  0.00000000  0.00000000 -0.00000000 -0.70651987 -0.46147747 -0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00005449  0.00000110 -0.00000000  0.00000000

  14    1  |1 1>+         -0.00000000  0.00000000  0.00000000  0.00009854 -0.00000000  0.00000000 -0.00000074  0.70701166
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  15    1  |1 1>+          0.00000000 -0.00007124 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  16    1  |1 1>+         -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00045781  0.00018642  0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000004 -0.00000000 -0.00000000 -0.00000000

   1    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00096325  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   2    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00105995  0.00000000 -0.00000000  0.00000000 -0.00065585

   3    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00059354 -0.00000000 -0.00106015  0.00000000 -0.00000000  0.00000000 -0.00065584 -0.00000000

   4    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000010 -0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00128499 -0.00000149  0.00000000  0.00000000

   5    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000112  0.00096299  0.00000000 -0.00000000

   6    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00002527  0.00000003 -0.00000000 -0.00000000

   7    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000  0.57761743  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   8    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000001  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.75759895  0.00000000 -0.41967060  0.00000001 -0.00000000 -0.00000000  0.00003748  0.00000000

   9    1  |1 0>          -0.00000000  0.00000000 -0.00000001 -0.00000039  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000005 -0.00000000  0.00000001  0.41990965 -0.00000000 -0.00000000  0.00000000 -0.00003783

  10    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000005  0.00000138 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00066877  0.57762987 -0.00000000 -0.00000000

  11    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000100  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  12    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000024 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000001 -0.00000000 -0.00000000 -0.25715346  0.00000000 -0.00000000  0.00000000 -0.00160234

  13    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.13186328 -0.00000000 -0.25718781  0.00000000 -0.00000000  0.00000000 -0.00160215 -0.00000000

  14    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000010  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  15    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00021105 -0.00000000  0.00000000 -0.00000074  0.70695520

  16    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00023630  0.00000000  0.00021092 -0.00000000  0.00000000 -0.00000000 -0.70695537 -0.00000074

   1    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00087785  0.00000000 -0.00083343  0.00000000 -0.00000000 -0.00000000  0.00065576  0.00000000

   2    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000  0.00000006  0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00074229  0.00096103  0.00000000  0.00000000

   3    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00096436 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   4    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00092191  0.00000000 -0.00000000 -0.00000000  0.00036429

   5    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00031180  0.00000000  0.00000000  0.00000000 -0.00065355

   6    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000418  0.00000000 -0.00000000 -0.00000002  0.01851835

   7    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.53119442 -0.00000000 -0.22590363  0.00000000 -0.00000000  0.00000000 -0.00086347 -0.00000000

   8    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000 -0.35898838 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   9    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000  0.00000063  0.00000083 -0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00817095  0.34779882 -0.00000000  0.00000000

  10    1  |1 1>-         -0.00000000  0.00000000 -0.00000001 -0.00000054  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000001  0.00000000  0.00000001  0.57083651 -0.00000000 -0.00000000 -0.00000000  0.00024749

  11    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000001  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.34514333  0.00000000  0.61714917 -0.00000001  0.00000000 -0.00000000 -0.00105836 -0.00000000

  12    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000  0.00005457 -0.00000110 -0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.70758671 -0.45984675 -0.00000000  0.00000000

  13    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.45200119  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  14    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00020443 -0.00000000  0.00009857 -0.00000000 -0.00000000  0.00000000  0.70701150  0.00000074

  15    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000004 -0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00045735 -0.00018736  0.00000000  0.00000000

  16    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00007118  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 State Sym Spin     / Nr.     41          42          43          44          45          46          47          48

   1    1  |0 0>          -0.00000000  0.00000427 -0.00000000 -0.00000000 -0.00000000  0.00000001  0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   2    1  |0 0>          -0.00000000 -0.00000490  0.00000000 -0.00000000 -0.00000000  0.00000840 -0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   3    1  |0 0>           0.00000000 -0.00000168  0.00000000  0.00000000  0.00000000 -0.00002470 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   4    1  |0 0>          -0.00000000  0.00000000  0.00000000  0.00000413 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   5    1  |0 0>           0.00000001 -0.00000000 -0.00000003 -0.00000000  0.00000000  0.00000000  0.00001289 -0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000001  0.00000000

   6    1  |0 0>          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000416  0.00000000  0.00000000  0.00000073
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   7    1  |0 0>           0.00000000  0.00001514 -0.00000000 -0.00000000 -0.00000000  0.00000003  0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   1    1  |1 1>+          0.00000000  0.00000000  0.00000000  0.00000000  0.00000472 -0.00000000  0.00000000  0.00000399
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   2    1  |1 1>+          0.00000000 -0.00000227  0.00000000 -0.00000000 -0.00000000  0.00000251 -0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   3    1  |1 1>+         -0.00065477 -0.00000000 -0.00000185  0.00000000 -0.00000000 -0.00000000 -0.00000001 -0.00000000
                           0.00000026  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   4    1  |1 1>+         -0.00000000 -0.00000000 -0.00000000 -0.00000049  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   5    1  |1 1>+          0.00000000 -0.00000000  0.00000000  0.00000511 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   6    1  |1 1>+          0.00000000 -0.00000000  0.00000000 -0.00000832  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   7    1  |1 1>+         -0.00000000  0.00000000  0.00000000  0.00000125  0.64362344  0.00000000  0.00000000 -0.11949642
                          -0.00000000 -0.00000000 -0.00000000  0.00000003 -0.00000002 -0.00000000 -0.00000000 -0.00000002

   8    1  |1 1>+          0.00082314  0.00000000  0.70702012  0.00000000 -0.00000000  0.00000000 -0.13998466 -0.00000000
                          -0.00000033 -0.00000000 -0.00005673 -0.00000000 -0.00000000  0.00000000  0.00006369 -0.00000000

   9    1  |1 1>+         -0.00000000 -0.70117512  0.00000000  0.00000000  0.00000000 -0.12737387 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  10    1  |1 1>+          0.00000000  0.00000000 -0.00000000  0.56192071 -0.00000109  0.00000000 -0.00000000  0.00000012
                          -0.00000000  0.00000000 -0.00000000 -0.00000004  0.00000002  0.00000000 -0.00000000  0.00000000

  11    1  |1 1>+          0.00000000  0.00000000  0.00000000 -0.00000020 -0.10565720  0.00000000 -0.00000000  0.58824984
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000009

  12    1  |1 1>+          0.00000000  0.06421832 -0.00000000 -0.00000000 -0.00000000  0.51977164  0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  13    1  |1 1>+         -0.00044791 -0.00000000  0.00868727 -0.00000000 -0.00000000 -0.00000000  0.51595492  0.00000000
                           0.00000018 -0.00000000 -0.00000070 -0.00000000  0.00000000 -0.00000000 -0.00023475  0.00000000

  14    1  |1 1>+         -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00051073 -0.00000000 -0.00000000  0.00140212
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  15    1  |1 1>+          0.00000000  0.00033446 -0.00000000 -0.00000000 -0.00000000 -0.00000513  0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  16    1  |1 1>+          0.70698454 -0.00000000 -0.00081756 -0.00000000  0.00000000 -0.00000000  0.00002433 -0.00000000
                          -0.00028544  0.00000000  0.00000007  0.00000000  0.00000000  0.00000000 -0.00000001 -0.00000000

   1    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000317 -0.00000000 -0.00000000

   2    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000156 -0.00000000  0.00000000  0.00000096

   3    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000156 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   4    1  |1 0>           0.00000031  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00076514  0.00000000  0.00000263 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   5    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000001  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000500  0.00000000

   6    1  |1 0>          -0.00000748  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.01851501  0.00000000  0.00001361  0.00000000  0.00000000  0.00000000 -0.00000001 -0.00000000

   7    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00019139 -0.00000000  0.00000000 -0.00000000  0.65447147  0.00000000 -0.00000000

   8    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000004 -0.00000002 -0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000  0.49033044 -0.00000095 -0.00000000  0.00000000  0.00000003

   9    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000002  0.00000002  0.00000000 -0.00000000 -0.00000001
                          -0.00000000  0.00000000  0.00000000  0.00000095  0.49034559  0.00000000  0.00000000  0.09707959

  10    1  |1 0>          -0.00000000  0.00000000  0.00000001  0.00000000 -0.00000000  0.00000000  0.00029783 -0.00000000
                          -0.00000010 -0.00000000  0.00016080 -0.00000000 -0.00000000 -0.00000000  0.65458571  0.00000000

  11    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.09118587 -0.00000000  0.00000000 -0.00000000 -0.00082364  0.00000000  0.00000000

  12    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000001 -0.00000001 -0.00000000 -0.00000000 -0.00000011
                           0.00000000  0.00000000  0.00000000 -0.00000026 -0.13535914  0.00000000 -0.00000000  0.71927855

  13    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000001 -0.00000001 -0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000  0.13548136 -0.00000026 -0.00000000  0.00000000 -0.00000025

  14    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00034690  0.00000000  0.00000000  0.00000000 -0.00000066 -0.00000000  0.00000000

  15    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00051761 -0.00000000 -0.00000000  0.00137673

  16    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00051758  0.00000000  0.00000000 -0.00000000  0.00000000

   1    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000471 -0.00000000 -0.00000000  0.00000000  0.00000000

   2    1  |1 1>-          0.00000026  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00065477  0.00000000  0.00000185 -0.00000000  0.00000000  0.00000000 -0.00000001 -0.00000000

   3    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000227  0.00000000 -0.00000000  0.00000000 -0.00000250 -0.00000000 -0.00000000

   4    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000049  0.00000000  0.00000000 -0.00000489

   5    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000511 -0.00000000  0.00000000  0.00000317

   6    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000832 -0.00000000 -0.00000000  0.00002312

   7    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000005 -0.00000003 -0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000  0.64364494 -0.00000125 -0.00000000  0.00000000 -0.00000004

   8    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000  0.70125090 -0.00000000 -0.00000000 -0.00000000 -0.12716665  0.00000000  0.00000000

   9    1  |1 1>-          0.00000033  0.00000000  0.00005674  0.00000000  0.00000000  0.00000000  0.00006354 -0.00000000
                           0.00082307  0.00000000  0.70708864  0.00000000 -0.00000000  0.00000000  0.13964721 -0.00000000

  10    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000002 -0.00000002  0.00000000  0.00000000  0.00000005
                          -0.00000000 -0.00000000 -0.00000000 -0.00000109 -0.56198221 -0.00000000  0.00000000 -0.33599521

  11    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000001 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000  0.10576689 -0.00000020 -0.00000000  0.00000000 -0.00000020

  12    1  |1 1>-          0.00000018  0.00000000 -0.00000068  0.00000000 -0.00000000  0.00000000  0.00023475 -0.00000000
                           0.00044789 -0.00000000 -0.00844740 -0.00000000 -0.00000000 -0.00000000  0.51595621  0.00000000

  13    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.06450880  0.00000000 -0.00000000  0.00000000 -0.51875659 -0.00000000 -0.00000000

  14    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00051098 -0.00000000 -0.00000000  0.00000000 -0.00000000

  15    1  |1 1>-          0.00028544 -0.00000000 -0.00000007 -0.00000000 -0.00000000 -0.00000000 -0.00000001  0.00000000
                           0.70698422 -0.00000000 -0.00081761 -0.00000000  0.00000000 -0.00000000 -0.00002381  0.00000000

  16    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00033444  0.00000000  0.00000000  0.00000000 -0.00000656 -0.00000000  0.00000000

 State Sym Spin     / Nr.     49          50          51          52          53          54          55

   1    1  |0 0>          -0.00000000 -0.00000636  0.00000023 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   2    1  |0 0>          -0.00000000 -0.00000775  0.02348744  0.00000000 -0.00000000 -0.00789068 -0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   3    1  |0 0>          -0.00000000 -0.00000266  0.00788987 -0.00000000 -0.00000000  0.02348982 -0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   4    1  |0 0>          -0.00000075 -0.00000000 -0.00000000  0.02478929  0.00000001  0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   5    1  |0 0>           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.02478800
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000112

   6    1  |0 0>           0.00000000 -0.00000000  0.00000000 -0.00000001  0.02478930  0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   7    1  |0 0>          -0.00000000 -0.00002561 -0.00000190 -0.00000000 -0.00000000 -0.00000002 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   1    1  |1 1>+          0.00000000  0.00000000 -0.00000000  0.00000000 -0.00038604 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   2    1  |1 1>+          0.00000000 -0.00000229  0.00066958  0.00000000 -0.00000000 -0.00038236 -0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   3    1  |1 1>+          0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00038483
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000002

   4    1  |1 1>+          0.00000488  0.00000000  0.00000000 -0.00066452 -0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   5    1  |1 1>+          0.00000317 -0.00000000 -0.00000000  0.00038472  0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   6    1  |1 1>+         -0.00002312  0.00000000 -0.00000000 -0.00000194 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   7    1  |1 1>+         -0.00000004  0.00000000  0.00000000 -0.00000000  0.00035776  0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   8    1  |1 1>+          0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00038075
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000002

   9    1  |1 1>+         -0.00000000 -0.09101335 -0.00001693 -0.00000000  0.00000000  0.00064179 -0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  10    1  |1 1>+         -0.33609818 -0.00000000  0.00000000 -0.00040961 -0.00000000 -0.00000000 -0.00000000
                          -0.00000002  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  11    1  |1 1>+          0.00000020 -0.00000000  0.00000000  0.00000000 -0.00007601 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  12    1  |1 1>+          0.00000000 -0.45789493 -0.00067147 -0.00000000  0.00000000 -0.00022751  0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  13    1  |1 1>+         -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00022086
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000001

  14    1  |1 1>+          0.00000000 -0.00000000 -0.00000000  0.00000030 -0.70686073 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  15    1  |1 1>+         -0.00000000 -0.00056514  0.40534577 -0.00000000 -0.00000000  0.70849336 -0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  16    1  |1 1>+          0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.70688879
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00003205

   1    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000305 -0.00000000 -0.00000000  0.00077242 -0.00000000

   2    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00038579  0.00000000  0.00000000

   3    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000096 -0.00000000  0.00000000 -0.00038579 -0.00000000 -0.00000000 -0.00000000

   4    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000001

   5    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000003
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00076939

   6    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   7    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00069470 -0.00000250 -0.00000000  0.00000000  0.00062004 -0.00000000

   8    1  |1 0>           0.00000001 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.09715537 -0.00000000  0.00000000  0.00008310  0.00000000 -0.00000000 -0.00000000

   9    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000003 -0.00000000 -0.00000000 -0.00000000  0.00008325 -0.00000000  0.00000000

  10    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000003
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00056331

  11    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000  0.75042174 -0.00083979 -0.00000000  0.00000000 -0.00000339  0.00000000

  12    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000025 -0.00000000 -0.00000000 -0.00000000  0.00032647  0.00000000  0.00000000

  13    1  |1 0>          -0.00000005  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.71925569 -0.00000000 -0.00000000 -0.00032646 -0.00000000 -0.00000000 -0.00000000

  14    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00057906  0.81622367  0.00000000 -0.00000000  0.00321963 -0.00000000

  15    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000030  0.70691732  0.00000000  0.00000000

  16    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00137664  0.00000000 -0.00000000  0.70691716  0.00000030  0.00000000  0.00000000

   1    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000399  0.00000000  0.00000000 -0.00038604 -0.00000000 -0.00000000 -0.00000000

   2    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000002
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00038483

   3    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000229  0.00066654 -0.00000000 -0.00000000  0.00038763 -0.00000000

   4    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00066452 -0.00000000 -0.00000000

   5    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00038472 -0.00000000 -0.00000000

   6    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000194  0.00000000 -0.00000000

   7    1  |1 1>-         -0.00000001  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.11937677 -0.00000000 -0.00000000  0.00035764  0.00000000  0.00000000  0.00000000

   8    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.09073375  0.00001195 -0.00000000  0.00000000  0.00064188 -0.00000000

   9    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000002
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00038072

  10    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000012  0.00000000 -0.00000000 -0.00000000  0.00040950  0.00000000  0.00000000

  11    1  |1 1>-         -0.00000004  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.58823076  0.00000000  0.00000000  0.00007609  0.00000000  0.00000000 -0.00000000

  12    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000001
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00022088

  13    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.45900102 -0.00067323 -0.00000000  0.00000000  0.00022220  0.00000000

  14    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00140191 -0.00000000 -0.00000000  0.70686089  0.00000030  0.00000000  0.00000000

  15    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00003205
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.70688910

  16    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00056522 -0.41092252 -0.00000000  0.00000000  0.70527339 -0.00000000


  No SO block in symmetry 2


 Summary of SO results
 =====================

 Eigenvalues of the spin-orbit matrix
 ....................................

     Nr  Sym         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
                   (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1   1    -23.92312306     -0.00006072      -13.33      0.00000000        0.00      0.0000
     2   1    -23.85651463      0.06654771    14605.53      0.06660843    14618.86      1.8125
     3   1    -23.85651460      0.06654774    14605.54      0.06660846    14618.87      1.8125
     4   1    -23.85651460      0.06654774    14605.54      0.06660846    14618.87      1.8125
     5   1    -23.85532359      0.06773875    14866.94      0.06779947    14880.26      1.8449
     6   1    -23.85532345      0.06773889    14866.97      0.06779961    14880.29      1.8449
     7   1    -23.85532341      0.06773893    14866.98      0.06779965    14880.30      1.8449
     8   1    -23.85532341      0.06773893    14866.98      0.06779965    14880.30      1.8449
     9   1    -23.85532337      0.06773897    14866.98      0.06779969    14880.31      1.8449
    10   1    -23.85285850      0.07020384    15407.96      0.07026456    15421.29      1.9120
    11   1    -23.85285846      0.07020388    15407.97      0.07026461    15421.30      1.9120
    12   1    -23.85285845      0.07020388    15407.97      0.07026461    15421.30      1.9120
    13   1    -23.85285841      0.07020393    15407.98      0.07026465    15421.31      1.9120
    14   1    -23.85285841      0.07020393    15407.98      0.07026465    15421.31      1.9120
    15   1    -23.85285836      0.07020398    15407.99      0.07026471    15421.32      1.9120
    16   1    -23.85285830      0.07020404    15408.00      0.07026476    15421.33      1.9120
    17   1    -23.84138742      0.08167492    17925.57      0.08173564    17938.90      2.2241
    18   1    -23.84138731      0.08167502    17925.60      0.08173575    17938.92      2.2241
    19   1    -23.84138699      0.08167535    17925.67      0.08173608    17939.00      2.2242
    20   1    -23.84138697      0.08167536    17925.67      0.08173609    17939.00      2.2242
    21   1    -23.84138695      0.08167538    17925.67      0.08173611    17939.00      2.2242
    22   1    -23.80268799      0.12037435    26419.12      0.12043507    26432.44      3.2772
    23   1    -23.80268799      0.12037435    26419.12      0.12043507    26432.44      3.2772
    24   1    -23.80268798      0.12037435    26419.12      0.12043508    26432.44      3.2772
    25   1    -23.79737987      0.12568247    27584.11      0.12574319    27597.44      3.4216
    26   1    -23.78119946      0.14186288    31135.30      0.14192360    31148.63      3.8619
    27   1    -23.78119911      0.14186323    31135.38      0.14192395    31148.71      3.8619
    28   1    -23.78119874      0.14186359    31135.46      0.14192432    31148.79      3.8620
    29   1    -23.78119874      0.14186360    31135.46      0.14192432    31148.79      3.8620
    30   1    -23.78119866      0.14186368    31135.48      0.14192440    31148.81      3.8620
    31   1    -23.78034609      0.14271625    31322.60      0.14277697    31335.92      3.8852
    32   1    -23.77898677      0.14407557    31620.93      0.14413629    31634.26      3.9221
    33   1    -23.77898677      0.14407557    31620.93      0.14413630    31634.26      3.9221
    34   1    -23.77898637      0.14407597    31621.02      0.14413670    31634.35      3.9222
    35   1    -23.77898610      0.14407624    31621.08      0.14413696    31634.41      3.9222
    36   1    -23.77898610      0.14407624    31621.08      0.14413696    31634.41      3.9222
    37   1    -23.77898601      0.14407633    31621.10      0.14413705    31634.43      3.9222
    38   1    -23.77898574      0.14407660    31621.16      0.14413732    31634.49      3.9222
    39   1    -23.77750790      0.14555444    31945.51      0.14561516    31958.83      3.9624
    40   1    -23.77750790      0.14555444    31945.51      0.14561516    31958.83      3.9624
    41   1    -23.77750763      0.14555471    31945.57      0.14561543    31958.89      3.9624
    42   1    -23.77603438      0.14702796    32268.91      0.14708868    32282.23      4.0025
    43   1    -23.77603436      0.14702798    32268.91      0.14708870    32282.24      4.0025
    44   1    -23.77603367      0.14702866    32269.06      0.14708939    32282.39      4.0025
    45   1    -23.77603367      0.14702866    32269.06      0.14708939    32282.39      4.0025
    46   1    -23.77603340      0.14702894    32269.12      0.14708966    32282.45      4.0025
    47   1    -23.77603323      0.14702910    32269.16      0.14708983    32282.49      4.0025
    48   1    -23.77603310      0.14702924    32269.19      0.14708996    32282.51      4.0025
    49   1    -23.77603310      0.14702924    32269.19      0.14708996    32282.52      4.0025
    50   1    -23.77603303      0.14702930    32269.20      0.14709003    32282.53      4.0025
    51   1    -23.77144113      0.15162120    33277.01      0.15168193    33290.34      4.1275
    52   1    -23.77144102      0.15162132    33277.03      0.15168204    33290.36      4.1275
    53   1    -23.77144102      0.15162132    33277.03      0.15168204    33290.36      4.1275
    54   1    -23.77144083      0.15162151    33277.07      0.15168223    33290.40      4.1275
    55   1    -23.77144080      0.15162153    33277.08      0.15168226    33290.41      4.1275

 E0 =    -23.92306234 is the energy of the lowest zeroth-order state
 E1 =    -23.92312306 is the energy of the lowest SO-state


 Spin-orbit eigenvectors   (columnwise and corresponding to the eigenvalues in ascending order)
 .......................

        Basis states           Eigenvectors (columnwise)

   Total
 Nr Sym  State Sym Spin / Nr.        1           2           3           4           5           6           7           8

  1  1     1    1  |0 0>        0.99978708  0.00000000  0.00000000 -0.00000000 -0.00000001  0.00000084  0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  2  1     2    1  |0 0>       -0.00000005  0.00000000 -0.00000000  0.00000000 -0.04551909  0.13173465  0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  3  1     3    1  |0 0>       -0.00000002  0.00000000 -0.00000000 -0.00000000  0.13175417  0.04551239  0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  4  1     4    1  |0 0>        0.00000000 -0.00000000 -0.00000000 -0.00000388 -0.00000000  0.00000000 -0.13948045 -0.00000011
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  5  1     5    1  |0 0>        0.00000000  0.00000007  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  6  1     6    1  |0 0>        0.00000000 -0.00000000  0.00000394 -0.00000000 -0.00000000 -0.00000000  0.00000011 -0.13948031
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  7  1     7    1  |0 0>        0.00023922 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000012 -0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  8  1     1    1  |1 1>+      -0.00000000  0.00000000  0.54775254 -0.00000040  0.00000000  0.00000000 -0.00000030  0.40430828
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000001

  9  1     2    1  |1 1>+      -0.00000058 -0.00000000  0.00000000  0.00000000 -0.40750081  0.69832033  0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 10  1     3    1  |1 1>+       0.00000000 -0.54775027  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000630  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 11  1     4    1  |1 1>+      -0.00000000 -0.00000000  0.00000023  0.31621660  0.00000000 -0.00000000  0.70016346  0.00000053
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000001 -0.00000001

 12  1     5    1  |1 1>+       0.00000000 -0.00000000  0.00000040  0.54765245 -0.00000000  0.00000000 -0.40423768 -0.00000030
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 13  1     6    1  |1 1>+       0.00000000  0.00000000  0.00000000  0.00001049  0.00000000 -0.00000000  0.00000005  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 14  1     7    1  |1 1>+      -0.00000000  0.00000000  0.00000707 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00034574
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 15  1     8    1  |1 1>+      -0.00000000 -0.00000361 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 16  1     9    1  |1 1>+      -0.00000420  0.00000000  0.00000000 -0.00000000  0.00042136 -0.00000572 -0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 17  1    10    1  |1 1>+      -0.00000000 -0.00000000  0.00000000  0.00000540  0.00000000 -0.00000000  0.00034486  0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 18  1    11    1  |1 1>+       0.00000000 -0.00000000 -0.00000330  0.00000000  0.00000000  0.00000000 -0.00000000  0.00027641
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 19  1    12    1  |1 1>+       0.00000783 -0.00000000  0.00000000 -0.00000000 -0.00010845 -0.00037841 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 20  1    13    1  |1 1>+       0.00000000  0.00000175 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 21  1    14    1  |1 1>+      -0.00000000  0.00000000  0.00084245 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00309936
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 22  1    15    1  |1 1>+      -0.01191252 -0.00000000  0.00000000 -0.00000000 -0.00309739 -0.00180628 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 23  1    16    1  |1 1>+      -0.00000000 -0.00084964  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000001  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 24  1     1    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.80850098  0.00374086 -0.00000000 -0.00000000

 25  1     2    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000001
                               -0.00000000  0.00000000  0.54776789 -0.00000040 -0.00000000 -0.00000000  0.00000030 -0.40425660

 26  1     3    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000040  0.54776768  0.00000000 -0.00000000  0.40425666  0.00000030

 27  1     4    1  |1 0>        0.00000000 -0.00000727  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.63240609 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 28  1     5    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000285 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000001

 29  1     6    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00001007  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 30  1     7    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00035123  0.00000163 -0.00000000 -0.00000000

 31  1     8    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000155 -0.00000000  0.00000000 -0.00000308 -0.00000000

 32  1     9    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000156  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000309

 33  1    10    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 34  1    11    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00001010 -0.00000000 -0.00000000  0.00000000  0.00000211 -0.00045772 -0.00000000  0.00000000

 35  1    12    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000498  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00044268

 36  1    13    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000498  0.00000000 -0.00000000  0.00044267  0.00000000

 37  1    14    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.01191290  0.00000000  0.00000000 -0.00000000  0.00001659 -0.00358604 -0.00000000  0.00000000

 38  1    15    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000  0.00084321 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00311219

 39  1    16    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00084321  0.00000000 -0.00000000  0.00311219  0.00000000

 40  1     1    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000040 -0.54775268  0.00000000 -0.00000000  0.40430804  0.00000030

 41  1     2    1  |1 1>-       0.00000000 -0.00000630  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.54775062 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 42  1     3    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000057  0.00000000 -0.00000000 -0.00000000  0.40102160  0.70206093  0.00000000 -0.00000000

 43  1     4    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000001  0.00000001
                                0.00000000 -0.00000000 -0.31622203  0.00000023  0.00000000  0.00000000 -0.00000053  0.70015938

 44  1     5    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000001
                               -0.00000000  0.00000000  0.54764925 -0.00000040  0.00000000  0.00000000 -0.00000030  0.40424461

 45  1     6    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00001049  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000005

 46  1     7    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000708 -0.00000000  0.00000000 -0.00034575 -0.00000000

 47  1     8    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000420 -0.00000000 -0.00000000  0.00000000  0.00042129  0.00000962 -0.00000000 -0.00000000

 48  1     9    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000361 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 49  1    10    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000540 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00034487

 50  1    11    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000330 -0.00000000  0.00000000 -0.00027640 -0.00000000

 51  1    12    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000175 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 52  1    13    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000783  0.00000000 -0.00000000  0.00000000  0.00011193 -0.00037739 -0.00000000  0.00000000

 53  1    14    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00084244  0.00000000 -0.00000000  0.00309937  0.00000000

 54  1    15    1  |1 1>-      -0.00000000  0.00000001 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00084963  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 55  1    16    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.01191252 -0.00000000 -0.00000000  0.00000000 -0.00311398  0.00177755  0.00000000 -0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.        9          10          11          12          13          14          15          16

  1  1     1    1  |0 0>        0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  2  1     2    1  |0 0>        0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000716
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  3  1     3    1  |0 0>        0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00002084
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  4  1     4    1  |0 0>        0.00000000 -0.00000000 -0.00000000  0.00000824 -0.00000000 -0.00001208  0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  5  1     5    1  |0 0>       -0.13948431 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00001076  0.00000000
                               -0.00003689  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  6  1     6    1  |0 0>       -0.00000000 -0.00000000 -0.00000826 -0.00000000 -0.00001217  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  7  1     7    1  |0 0>        0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  8  1     1    1  |1 1>+       0.00000000 -0.00000000 -0.31699891 -0.00000050  0.65784857 -0.00000053  0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000002 -0.00000000  0.00000001 -0.00000002  0.00000000  0.00000000

  9  1     2    1  |1 1>+       0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.57734295
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 10  1     3    1  |1 1>+      -0.40429791  0.44643839 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.57788953  0.00000000
                               -0.00010693 -0.00002847 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000186  0.00000000

 11  1     4    1  |1 1>+      -0.00000000  0.00000000 -0.00000076  0.48088636 -0.00000033 -0.41084082  0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000001 -0.00000000  0.00000001 -0.00000002  0.00000000 -0.00000000

 12  1     5    1  |1 1>+       0.00000000  0.00000000 -0.00000095  0.59816291  0.00000034  0.41907359  0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000001 -0.00000000 -0.00000001  0.00000002  0.00000000 -0.00000000

 13  1     6    1  |1 1>+       0.00000000  0.00000000  0.00000000 -0.00000025  0.00000000  0.00000020  0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 14  1     7    1  |1 1>+      -0.00000000 -0.00000000 -0.00095637 -0.00000000 -0.00004666  0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 15  1     8    1  |1 1>+       0.00042897  0.00001320  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00057591  0.00000000
                                0.00000011 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 16  1     9    1  |1 1>+      -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00059967
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 17  1    10    1  |1 1>+      -0.00000000 -0.00000000  0.00000000 -0.00019884  0.00000000  0.00093504  0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 18  1    11    1  |1 1>+       0.00000000 -0.00000000 -0.00089948 -0.00000000 -0.00076040  0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 19  1    12    1  |1 1>+      -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00075410
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 20  1    13    1  |1 1>+      -0.00010001 -0.00117488  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00076750 -0.00000000
                               -0.00000003  0.00000007  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 21  1    14    1  |1 1>+      -0.00000000 -0.00000000 -0.00000644 -0.00000000 -0.00000548  0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 22  1    15    1  |1 1>+      -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000050
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 23  1    16    1  |1 1>+       0.00310607 -0.00000579  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000057 -0.00000000
                                0.00000082  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 24  1     1    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.57736219

 25  1     2    1  |1 0>        0.00000000  0.00000000 -0.00000004  0.00000001  0.00000001 -0.00000001 -0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.55769172 -0.00000088 -0.47144218  0.00000038  0.00000000 -0.00000000

 26  1     3    1  |1 0>        0.00000000 -0.00000000  0.00000001 -0.00000000  0.00000001 -0.00000002  0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000088 -0.55522023  0.00000038  0.47435057 -0.00000000  0.00000000

 27  1     4    1  |1 0>        0.00000000  0.00004941  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000364  0.77463496 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00098957  0.00000000

 28  1     5    1  |1 0>       -0.00021383 -0.00000005  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000186 -0.00000000
                                0.80846203 -0.00073608  0.00000000 -0.00000000  0.00000000 -0.00000000  0.57741380  0.00000000

 29  1     6    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000038 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 30  1     7    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00096504

 31  1     8    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00093799 -0.00000000 -0.00109193 -0.00000000  0.00000000

 32  1     9    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00093227  0.00000000 -0.00109681  0.00000000 -0.00000000 -0.00000000

 33  1    10    1  |1 0>       -0.00000009  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00034959  0.00000123 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00096185 -0.00000000

 34  1    11    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 35  1    12    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00035236  0.00000000  0.00032195 -0.00000000 -0.00000000  0.00000000

 36  1    13    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00035070 -0.00000000 -0.00032377  0.00000000 -0.00000000

 37  1    14    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 38  1    15    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000440 -0.00000000 -0.00000166  0.00000000  0.00000000  0.00000000

 39  1    16    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000440 -0.00000000 -0.00000168  0.00000000 -0.00000000

 40  1     1    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000  0.00000002 -0.00000003 -0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000051  0.32043280  0.00000053  0.65618285  0.00000000 -0.00000000

 41  1     2    1  |1 1>-       0.00010693 -0.00002857 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000185 -0.00000000
                               -0.40429765 -0.44791756  0.00000000  0.00000000 -0.00000000 -0.00000000  0.57674365 -0.00000000

 42  1     3    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.57734325

 43  1     4    1  |1 1>-      -0.00000000  0.00000000 -0.00000004  0.00000001  0.00000001 -0.00000001 -0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.48303285 -0.00000076 -0.40831794  0.00000033  0.00000000 -0.00000000

 44  1     5    1  |1 1>-      -0.00000000  0.00000000  0.00000005 -0.00000001  0.00000001 -0.00000001  0.00000000  0.00000000
                                0.00000000  0.00000000  0.59595985  0.00000095 -0.42219808  0.00000034 -0.00000000 -0.00000000

 45  1     6    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000025  0.00000000  0.00000020 -0.00000000 -0.00000000 -0.00000000

 46  1     7    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00095612 -0.00000000 -0.00005166  0.00000000 -0.00000000

 47  1     8    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00059965

 48  1     9    1  |1 1>-       0.00000011  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00042897  0.00001470 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00057586 -0.00000000

 49  1    10    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00020372 -0.00000000 -0.00093399  0.00000000  0.00000000 -0.00000000

 50  1    11    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00089550  0.00000000  0.00076509 -0.00000000  0.00000000

 51  1    12    1  |1 1>-       0.00000003  0.00000007  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00010000  0.00117291 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00077053  0.00000000

 52  1    13    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00075411

 53  1    14    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000642  0.00000000  0.00000550 -0.00000000  0.00000000

 54  1    15    1  |1 1>-       0.00000082 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00310608 -0.00000579  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000055 -0.00000000

 55  1    16    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000050


   Total
 Nr Sym  State Sym Spin / Nr.       17          18          19          20          21          22          23          24

  1  1     1    1  |0 0>       -0.00000003 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  2  1     2    1  |0 0>        0.94763236 -0.28621396  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  3  1     3    1  |0 0>        0.28621497  0.94762975 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  4  1     4    1  |0 0>       -0.00000000  0.00000000  0.98989736 -0.00000003  0.00000001 -0.00000000  0.00000011 -0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  5  1     5    1  |0 0>       -0.00000000  0.00000000 -0.00000001 -0.00000000  0.98989686  0.00000000  0.00000000 -0.00000001
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00001076  0.00000000 -0.00000000  0.00000000

  6  1     6    1  |0 0>        0.00000000  0.00000000  0.00000003  0.98989737  0.00000000  0.00000010  0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  7  1     7    1  |0 0>       -0.00000008 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  8  1     1    1  |1 1>+       0.00000000  0.00000000  0.00000000  0.05697780  0.00000000  0.00001781  0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  9  1     2    1  |1 1>+      -0.10051127  0.05349118 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 10  1     3    1  |1 1>+       0.00000000 -0.00000000  0.00000000  0.00000000 -0.05698093 -0.00000000  0.00000000 -0.00001745
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000062 -0.00000000  0.00000000  0.00000000

 11  1     4    1  |1 1>+      -0.00000000  0.00000000  0.09865824 -0.00000000  0.00000000  0.00000000 -0.00000991 -0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 12  1     5    1  |1 1>+       0.00000000 -0.00000000 -0.05696234  0.00000000 -0.00000000  0.00000000 -0.00001778 -0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 13  1     6    1  |1 1>+      -0.00000000  0.00000000 -0.00000002 -0.00000000 -0.00000000 -0.00005113  0.99982852  0.00000001
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000002 -0.00000007 -0.00000000

 14  1     7    1  |1 1>+       0.00000000 -0.00000000 -0.00000000 -0.00293370 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 15  1     8    1  |1 1>+      -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00359467  0.00000000  0.00000000  0.00000540
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000004  0.00000000 -0.00000000 -0.00000000

 16  1     9    1  |1 1>+       0.00016050 -0.00359557  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 17  1    10    1  |1 1>+      -0.00000000  0.00000000  0.00293248 -0.00000000  0.00000000 -0.00000000  0.00000009 -0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 18  1    11    1  |1 1>+       0.00000000  0.00000000  0.00000000  0.00225884  0.00000000  0.00001203  0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 19  1    12    1  |1 1>+       0.00320576  0.00110262  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 20  1    13    1  |1 1>+       0.00000000 -0.00000000  0.00000000  0.00000000 -0.00089343  0.00000000 -0.00000000  0.00000946
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000001  0.00000000 -0.00000000 -0.00000000

 21  1    14    1  |1 1>+       0.00000000  0.00000000  0.00000000  0.01726246  0.00000000 -0.01309634 -0.00000067  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 22  1    15    1  |1 1>+      -0.00935377 -0.01758746  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 23  1    16    1  |1 1>+       0.00000000 -0.00000000  0.00000000  0.00000000 -0.01725963  0.00000000 -0.00000000  0.01309209
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000019  0.00000000 -0.00000000 -0.00000002

 24  1     1    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00394992 -0.11378206  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 25  1     2    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.05697984 -0.00000000  0.00001813  0.00000000 -0.00000000

 26  1     3    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.05697983 -0.00000000  0.00000000  0.00000000 -0.00001814 -0.00000000

 27  1     4    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000056  0.00000000 -0.00000000  0.00002086

 28  1     5    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000124  0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.11392431 -0.00000000 -0.00000000 -0.00000000

 29  1     6    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000141
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000001  0.00000001 -0.00000001  0.99982858

 30  1     7    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00010178 -0.00293189  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 31  1     8    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00005302  0.00000000 -0.00000000  0.00000000 -0.00000543 -0.00000000

 32  1     9    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00005310  0.00000000 -0.00000543 -0.00000000  0.00000000

 33  1    10    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000003 -0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00292663  0.00000000  0.00000000 -0.00000000

 34  1    11    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00397810  0.00013807  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 35  1    12    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00369884 -0.00000000  0.00000930  0.00000000 -0.00000000

 36  1    13    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00369888 -0.00000000  0.00000000  0.00000000 -0.00000930 -0.00000000

 37  1    14    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.01990777 -0.00069110 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 38  1    15    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.01726032 -0.00000000 -0.01309255 -0.00000067  0.00000000

 39  1    16    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.01726031  0.00000000 -0.00000000  0.00000067 -0.01309255 -0.00000000

 40  1     1    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000  0.05697776 -0.00000000  0.00000000 -0.00000000  0.00001781  0.00000000

 41  1     2    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000062  0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.05698095  0.00000000 -0.00000000  0.00001746

 42  1     3    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.09655975 -0.06033234 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 43  1     4    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000  0.09865755  0.00000000 -0.00000991 -0.00000000  0.00000000

 44  1     5    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000  0.05696315  0.00000000  0.00001778  0.00000000 -0.00000000

 45  1     6    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000002 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000001 -0.00000000  0.99982852  0.00005113 -0.00000001

 46  1     7    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00293369  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 47  1     8    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00008931 -0.00359803  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 48  1     9    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000004  0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00359464  0.00000000 -0.00000000  0.00000540

 49  1    10    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00293243 -0.00000000 -0.00000009 -0.00000000 -0.00000000

 50  1    11    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00225884  0.00000000 -0.00000000  0.00000000 -0.00001203 -0.00000000

 51  1    12    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000001 -0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00089337 -0.00000000 -0.00000000 -0.00000946

 52  1    13    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00327448 -0.00087762  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 53  1    14    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.01726245  0.00000000 -0.00000000 -0.00000067  0.01309634  0.00000000

 54  1    15    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000019 -0.00000000  0.00000000  0.00000002
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.01725962  0.00000000 -0.00000000  0.01309208

 55  1    16    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.01055085 -0.01689648  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.       25          26          27          28          29          30          31          32

  1  1     1    1  |0 0>       -0.00201216  0.00000002 -0.00000000  0.00000000  0.00000000 -0.00000379 -0.02053636  0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  2  1     2    1  |0 0>        0.00000030 -0.00188546  0.00000000  0.00000000  0.00000000 -0.00556765  0.00000303  0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  3  1     3    1  |0 0>        0.00000011  0.00553937  0.00000000  0.00000000 -0.00000000 -0.00189503  0.00000105 -0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  4  1     4    1  |0 0>        0.00000000 -0.00000000  0.00000000 -0.00000001 -0.00582420 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  5  1     5    1  |0 0>       -0.00000000 -0.00000000  0.00582047 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000019  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  6  1     6    1  |0 0>       -0.00000000  0.00000000  0.00000000  0.00582416 -0.00000001  0.00000000  0.00000000  0.00000105
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  7  1     7    1  |0 0>        0.99629755  0.00000007 -0.00000000  0.00000000  0.00000000 -0.00001643 -0.08597165  0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  8  1     1    1  |1 1>+       0.00000000  0.00000000  0.00000000  0.00062849 -0.00000000  0.00000000  0.00000000  0.00087759
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  9  1     2    1  |1 1>+       0.00000015  0.00063091  0.00000000 -0.00000000 -0.00000000  0.00109224  0.00000063  0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 10  1     3    1  |1 1>+       0.00000000  0.00000000 -0.00063359  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000002 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 11  1     4    1  |1 1>+       0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00109284 -0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 12  1     5    1  |1 1>+      -0.00000000  0.00000000 -0.00000000  0.00000000  0.00062941  0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 13  1     6    1  |1 1>+      -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000024  0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 14  1     7    1  |1 1>+      -0.00000000  0.00000000  0.00000000  0.48811984 -0.00000049  0.00000000 -0.00000000 -0.53126608
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 15  1     8    1  |1 1>+      -0.00000000  0.00000000 -0.59956305  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00002001 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 16  1     9    1  |1 1>+      -0.00001934  0.59574419  0.00000000 -0.00000000 -0.00000000  0.00647141 -0.00032125 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 17  1    10    1  |1 1>+      -0.00000000  0.00000000 -0.00000000  0.00000049  0.48794364  0.00000000  0.00000000 -0.00000001
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 18  1    11    1  |1 1>+       0.00000000 -0.00000000 -0.00000000 -0.37787848  0.00000038 -0.00000000 -0.00000000 -0.34534379
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 19  1    12    1  |1 1>+       0.00003355 -0.16141339 -0.00000000 -0.00000000  0.00000000  0.53449023  0.00043452 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 20  1    13    1  |1 1>+       0.00000000 -0.00000000  0.14690194 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000490  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 21  1    14    1  |1 1>+       0.00000000  0.00000000  0.00000000  0.00056219 -0.00000000  0.00000000  0.00000000  0.00020487
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 22  1    15    1  |1 1>+      -0.04962065 -0.00090733 -0.00000000 -0.00000000  0.00000000  0.00051848 -0.57507970  0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 23  1    16    1  |1 1>+      -0.00000000  0.00000000 -0.00066417  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000002 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 24  1     1    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00126180 -0.00000000  0.00000000  0.00000000  0.00000006 -0.00000000  0.00000000

 25  1     2    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00063477  0.00000000 -0.00000000  0.00000000  0.00059387

 26  1     3    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00063477 -0.00000000 -0.00000000 -0.00000000

 27  1     4    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000001  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 28  1     5    1  |1 0>        0.00000000  0.00000000 -0.00000004 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00125911 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 29  1     6    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 30  1     7    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000001  0.48786744  0.00000000 -0.00000000 -0.00000000 -0.00002523  0.00000030  0.00000000

 31  1     8    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000001 -0.00743119 -0.00000000  0.00000000  0.00000005

 32  1     9    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00744305 -0.00000001  0.00000000 -0.00000000  0.75746628

 33  1    10    1  |1 0>       -0.00000000 -0.00000000  0.00001627  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.48769950  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 34  1    11    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00004274  0.00003324 -0.00000000 -0.00000000 -0.00000000  0.65462521 -0.00086003 -0.00000000

 35  1    12    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000  0.61706214 -0.00000062  0.00000000  0.00000000  0.13193145

 36  1    13    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000062  0.61706221  0.00000000  0.00000000 -0.00000001

 37  1    14    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.04962570 -0.00000038  0.00000000 -0.00000000 -0.00000000  0.00121260  0.57511073  0.00000000

 38  1    15    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00049619  0.00000000 -0.00000000  0.00000000  0.00023683

 39  1    16    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00049616 -0.00000000  0.00000000  0.00000000

 40  1     1    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00062849 -0.00000000  0.00000000  0.00000000

 41  1     2    1  |1 1>-      -0.00000000 -0.00000000  0.00000002  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00063358  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 42  1     3    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000015 -0.00063080 -0.00000000 -0.00000000  0.00000000  0.00109231  0.00000062 -0.00000000

 43  1     4    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00109283 -0.00000000  0.00000000 -0.00000000  0.00051375

 44  1     5    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00062943 -0.00000000  0.00000000  0.00000000 -0.00116849

 45  1     6    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000024  0.00000000 -0.00000000 -0.00000000  0.00001283

 46  1     7    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000049 -0.48811873 -0.00000000 -0.00000000 -0.00000004

 47  1     8    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00001933  0.59574661  0.00000000 -0.00000000 -0.00000000 -0.00651999  0.00032220 -0.00000000

 48  1     9    1  |1 1>-      -0.00000000  0.00000000 -0.00002001 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.59956589 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 49  1    10    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000  0.48794357 -0.00000049  0.00000000  0.00000000  0.08561597

 50  1    11    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000038 -0.37787992 -0.00000000 -0.00000000  0.00000002

 51  1    12    1  |1 1>-       0.00000000  0.00000000 -0.00000490 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000  0.14689031 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 52  1    13    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00003356  0.16145474 -0.00000000 -0.00000000 -0.00000000  0.53447419  0.00043468  0.00000000

 53  1    14    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00056225  0.00000000 -0.00000000 -0.00000000

 54  1    15    1  |1 1>-      -0.00000000  0.00000000 -0.00000002 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00066417 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 55  1    16    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.04962067 -0.00090819  0.00000000 -0.00000000 -0.00000000 -0.00051833  0.57507982 -0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.       33          34          35          36          37          38          39          40

  1  1     1    1  |0 0>        0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  2  1     2    1  |0 0>        0.00000000 -0.00000113  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  3  1     3    1  |0 0>       -0.00000000  0.00000335  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  4  1     4    1  |0 0>        0.00000106 -0.00000000 -0.00000908  0.00000000 -0.00000000 -0.00000000  0.00000149  0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  5  1     5    1  |0 0>       -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000001 -0.00000713 -0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  6  1     6    1  |0 0>       -0.00000000 -0.00000000  0.00000000  0.00000907 -0.00000000 -0.00000000  0.00000000 -0.00000150
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  7  1     7    1  |0 0>        0.00000000 -0.00000002 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  8  1     1    1  |1 1>+      -0.00000000 -0.00000000  0.00000000  0.00083371 -0.00000000 -0.00000000  0.00000000 -0.00065576
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  9  1     2    1  |1 1>+      -0.00000000  0.00096436  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 10  1     3    1  |1 1>+       0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00074451  0.00095931 -0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000006 -0.00000000  0.00000000  0.00000000

 11  1     4    1  |1 1>+       0.00051344  0.00000000  0.00092208 -0.00000000  0.00000000 -0.00000000 -0.00036428 -0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 12  1     5    1  |1 1>+       0.00116860  0.00000000 -0.00031142  0.00000000 -0.00000000 -0.00000000 -0.00065354 -0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 13  1     6    1  |1 1>+       0.00001282 -0.00000000  0.00000418 -0.00000000  0.00000000  0.00000000 -0.01851835 -0.00000002
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 14  1     7    1  |1 1>+       0.00000004  0.00000000  0.00000000  0.22573065 -0.00000000  0.00000000 -0.00000000  0.00086405
                               -0.00000000  0.00000000  0.00000000  0.00000021 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 15  1     8    1  |1 1>+      -0.00000000  0.00000000 -0.00000000  0.00000000  0.00896265 -0.34778785 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000069  0.00000083  0.00000000  0.00000000

 16  1     9    1  |1 1>+       0.00000000 -0.35899707 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 17  1    10    1  |1 1>+      -0.08579988 -0.00000000  0.57080877 -0.00000001  0.00000000  0.00000000  0.00024749  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000001 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 18  1    11    1  |1 1>+       0.00000002  0.00000000  0.00000001  0.61703850 -0.00000000  0.00000000  0.00000000 -0.00105809
                               -0.00000000 -0.00000000  0.00000001  0.00000058 -0.00000000 -0.00000000  0.00000000  0.00000000

 19  1    12    1  |1 1>+       0.00000000 -0.45199412 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 20  1    13    1  |1 1>+      -0.00000000  0.00000000  0.00000000 -0.00000000 -0.70651987 -0.46147747 -0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00005449  0.00000110 -0.00000000  0.00000000

 21  1    14    1  |1 1>+      -0.00000000  0.00000000  0.00000000  0.00009854 -0.00000000  0.00000000 -0.00000074  0.70701166
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 22  1    15    1  |1 1>+       0.00000000 -0.00007124 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 23  1    16    1  |1 1>+      -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00045781  0.00018642  0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000004 -0.00000000 -0.00000000 -0.00000000

 24  1     1    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00096325  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 25  1     2    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00105995  0.00000000 -0.00000000  0.00000000 -0.00065585

 26  1     3    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00059354 -0.00000000 -0.00106015  0.00000000 -0.00000000  0.00000000 -0.00065584 -0.00000000

 27  1     4    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000010 -0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00128499 -0.00000149  0.00000000  0.00000000

 28  1     5    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000112  0.00096299  0.00000000 -0.00000000

 29  1     6    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00002527  0.00000003 -0.00000000 -0.00000000

 30  1     7    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000  0.57761743  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 31  1     8    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000001  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.75759895  0.00000000 -0.41967060  0.00000001 -0.00000000 -0.00000000  0.00003748  0.00000000

 32  1     9    1  |1 0>       -0.00000000  0.00000000 -0.00000001 -0.00000039  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000005 -0.00000000  0.00000001  0.41990965 -0.00000000 -0.00000000  0.00000000 -0.00003783

 33  1    10    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000005  0.00000138 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00066877  0.57762987 -0.00000000 -0.00000000

 34  1    11    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000100  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 35  1    12    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000024 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000001 -0.00000000 -0.00000000 -0.25715346  0.00000000 -0.00000000  0.00000000 -0.00160234

 36  1    13    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.13186328 -0.00000000 -0.25718781  0.00000000 -0.00000000  0.00000000 -0.00160215 -0.00000000

 37  1    14    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000010  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 38  1    15    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00021105 -0.00000000  0.00000000 -0.00000074  0.70695520

 39  1    16    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00023630  0.00000000  0.00021092 -0.00000000  0.00000000 -0.00000000 -0.70695537 -0.00000074

 40  1     1    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00087785  0.00000000 -0.00083343  0.00000000 -0.00000000 -0.00000000  0.00065576  0.00000000

 41  1     2    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000  0.00000006  0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00074229  0.00096103  0.00000000  0.00000000

 42  1     3    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00096436 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 43  1     4    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00092191  0.00000000 -0.00000000 -0.00000000  0.00036429

 44  1     5    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00031180  0.00000000  0.00000000  0.00000000 -0.00065355

 45  1     6    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000418  0.00000000 -0.00000000 -0.00000002  0.01851835

 46  1     7    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.53119442 -0.00000000 -0.22590363  0.00000000 -0.00000000  0.00000000 -0.00086347 -0.00000000

 47  1     8    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000 -0.35898838 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 48  1     9    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000  0.00000063  0.00000083 -0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00817095  0.34779882 -0.00000000  0.00000000

 49  1    10    1  |1 1>-      -0.00000000  0.00000000 -0.00000001 -0.00000054  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000001  0.00000000  0.00000001  0.57083651 -0.00000000 -0.00000000 -0.00000000  0.00024749

 50  1    11    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000001  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.34514333  0.00000000  0.61714917 -0.00000001  0.00000000 -0.00000000 -0.00105836 -0.00000000

 51  1    12    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000  0.00005457 -0.00000110 -0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.70758671 -0.45984675 -0.00000000  0.00000000

 52  1    13    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.45200119  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 53  1    14    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00020443 -0.00000000  0.00009857 -0.00000000 -0.00000000  0.00000000  0.70701150  0.00000074

 54  1    15    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000004 -0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00045735 -0.00018736  0.00000000  0.00000000

 55  1    16    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00007118  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.       41          42          43          44          45          46          47          48

  1  1     1    1  |0 0>       -0.00000000  0.00000427 -0.00000000 -0.00000000 -0.00000000  0.00000001  0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  2  1     2    1  |0 0>       -0.00000000 -0.00000490  0.00000000 -0.00000000 -0.00000000  0.00000840 -0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  3  1     3    1  |0 0>        0.00000000 -0.00000168  0.00000000  0.00000000  0.00000000 -0.00002470 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  4  1     4    1  |0 0>       -0.00000000  0.00000000  0.00000000  0.00000413 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  5  1     5    1  |0 0>        0.00000001 -0.00000000 -0.00000003 -0.00000000  0.00000000  0.00000000  0.00001289 -0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000001  0.00000000

  6  1     6    1  |0 0>       -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000416  0.00000000  0.00000000  0.00000073
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  7  1     7    1  |0 0>        0.00000000  0.00001514 -0.00000000 -0.00000000 -0.00000000  0.00000003  0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  8  1     1    1  |1 1>+       0.00000000  0.00000000  0.00000000  0.00000000  0.00000472 -0.00000000  0.00000000  0.00000399
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  9  1     2    1  |1 1>+       0.00000000 -0.00000227  0.00000000 -0.00000000 -0.00000000  0.00000251 -0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 10  1     3    1  |1 1>+      -0.00065477 -0.00000000 -0.00000185  0.00000000 -0.00000000 -0.00000000 -0.00000001 -0.00000000
                                0.00000026  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 11  1     4    1  |1 1>+      -0.00000000 -0.00000000 -0.00000000 -0.00000049  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 12  1     5    1  |1 1>+       0.00000000 -0.00000000  0.00000000  0.00000511 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 13  1     6    1  |1 1>+       0.00000000 -0.00000000  0.00000000 -0.00000832  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 14  1     7    1  |1 1>+      -0.00000000  0.00000000  0.00000000  0.00000125  0.64362344  0.00000000  0.00000000 -0.11949642
                               -0.00000000 -0.00000000 -0.00000000  0.00000003 -0.00000002 -0.00000000 -0.00000000 -0.00000002

 15  1     8    1  |1 1>+       0.00082314  0.00000000  0.70702012  0.00000000 -0.00000000  0.00000000 -0.13998466 -0.00000000
                               -0.00000033 -0.00000000 -0.00005673 -0.00000000 -0.00000000  0.00000000  0.00006369 -0.00000000

 16  1     9    1  |1 1>+      -0.00000000 -0.70117512  0.00000000  0.00000000  0.00000000 -0.12737387 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 17  1    10    1  |1 1>+       0.00000000  0.00000000 -0.00000000  0.56192071 -0.00000109  0.00000000 -0.00000000  0.00000012
                               -0.00000000  0.00000000 -0.00000000 -0.00000004  0.00000002  0.00000000 -0.00000000  0.00000000

 18  1    11    1  |1 1>+       0.00000000  0.00000000  0.00000000 -0.00000020 -0.10565720  0.00000000 -0.00000000  0.58824984
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000009

 19  1    12    1  |1 1>+       0.00000000  0.06421832 -0.00000000 -0.00000000 -0.00000000  0.51977164  0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 20  1    13    1  |1 1>+      -0.00044791 -0.00000000  0.00868727 -0.00000000 -0.00000000 -0.00000000  0.51595492  0.00000000
                                0.00000018 -0.00000000 -0.00000070 -0.00000000  0.00000000 -0.00000000 -0.00023475  0.00000000

 21  1    14    1  |1 1>+      -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00051073 -0.00000000 -0.00000000  0.00140212
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 22  1    15    1  |1 1>+       0.00000000  0.00033446 -0.00000000 -0.00000000 -0.00000000 -0.00000513  0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 23  1    16    1  |1 1>+       0.70698454 -0.00000000 -0.00081756 -0.00000000  0.00000000 -0.00000000  0.00002433 -0.00000000
                               -0.00028544  0.00000000  0.00000007  0.00000000  0.00000000  0.00000000 -0.00000001 -0.00000000

 24  1     1    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000317 -0.00000000 -0.00000000

 25  1     2    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000156 -0.00000000  0.00000000  0.00000096

 26  1     3    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000156 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 27  1     4    1  |1 0>        0.00000031  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00076514  0.00000000  0.00000263 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 28  1     5    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000001  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000500  0.00000000

 29  1     6    1  |1 0>       -0.00000748  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.01851501  0.00000000  0.00001361  0.00000000  0.00000000  0.00000000 -0.00000001 -0.00000000

 30  1     7    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00019139 -0.00000000  0.00000000 -0.00000000  0.65447147  0.00000000 -0.00000000

 31  1     8    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000004 -0.00000002 -0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000  0.49033044 -0.00000095 -0.00000000  0.00000000  0.00000003

 32  1     9    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000002  0.00000002  0.00000000 -0.00000000 -0.00000001
                               -0.00000000  0.00000000  0.00000000  0.00000095  0.49034559  0.00000000  0.00000000  0.09707959

 33  1    10    1  |1 0>       -0.00000000  0.00000000  0.00000001  0.00000000 -0.00000000  0.00000000  0.00029783 -0.00000000
                               -0.00000010 -0.00000000  0.00016080 -0.00000000 -0.00000000 -0.00000000  0.65458571  0.00000000

 34  1    11    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.09118587 -0.00000000  0.00000000 -0.00000000 -0.00082364  0.00000000  0.00000000

 35  1    12    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000001 -0.00000001 -0.00000000 -0.00000000 -0.00000011
                                0.00000000  0.00000000  0.00000000 -0.00000026 -0.13535914  0.00000000 -0.00000000  0.71927855

 36  1    13    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000001 -0.00000001 -0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000  0.13548136 -0.00000026 -0.00000000  0.00000000 -0.00000025

 37  1    14    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00034690  0.00000000  0.00000000  0.00000000 -0.00000066 -0.00000000  0.00000000

 38  1    15    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00051761 -0.00000000 -0.00000000  0.00137673

 39  1    16    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00051758  0.00000000  0.00000000 -0.00000000  0.00000000

 40  1     1    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000471 -0.00000000 -0.00000000  0.00000000  0.00000000

 41  1     2    1  |1 1>-       0.00000026  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00065477  0.00000000  0.00000185 -0.00000000  0.00000000  0.00000000 -0.00000001 -0.00000000

 42  1     3    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000227  0.00000000 -0.00000000  0.00000000 -0.00000250 -0.00000000 -0.00000000

 43  1     4    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000049  0.00000000  0.00000000 -0.00000489

 44  1     5    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000511 -0.00000000  0.00000000  0.00000317

 45  1     6    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000832 -0.00000000 -0.00000000  0.00002312

 46  1     7    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000005 -0.00000003 -0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000  0.64364494 -0.00000125 -0.00000000  0.00000000 -0.00000004

 47  1     8    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000  0.70125090 -0.00000000 -0.00000000 -0.00000000 -0.12716665  0.00000000  0.00000000

 48  1     9    1  |1 1>-       0.00000033  0.00000000  0.00005674  0.00000000  0.00000000  0.00000000  0.00006354 -0.00000000
                                0.00082307  0.00000000  0.70708864  0.00000000 -0.00000000  0.00000000  0.13964721 -0.00000000

 49  1    10    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000002 -0.00000002  0.00000000  0.00000000  0.00000005
                               -0.00000000 -0.00000000 -0.00000000 -0.00000109 -0.56198221 -0.00000000  0.00000000 -0.33599521

 50  1    11    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000001 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000  0.10576689 -0.00000020 -0.00000000  0.00000000 -0.00000020

 51  1    12    1  |1 1>-       0.00000018  0.00000000 -0.00000068  0.00000000 -0.00000000  0.00000000  0.00023475 -0.00000000
                                0.00044789 -0.00000000 -0.00844740 -0.00000000 -0.00000000 -0.00000000  0.51595621  0.00000000

 52  1    13    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.06450880  0.00000000 -0.00000000  0.00000000 -0.51875659 -0.00000000 -0.00000000

 53  1    14    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00051098 -0.00000000 -0.00000000  0.00000000 -0.00000000

 54  1    15    1  |1 1>-       0.00028544 -0.00000000 -0.00000007 -0.00000000 -0.00000000 -0.00000000 -0.00000001  0.00000000
                                0.70698422 -0.00000000 -0.00081761 -0.00000000  0.00000000 -0.00000000 -0.00002381  0.00000000

 55  1    16    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00033444  0.00000000  0.00000000  0.00000000 -0.00000656 -0.00000000  0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.       49          50          51          52          53          54          55

  1  1     1    1  |0 0>       -0.00000000 -0.00000636  0.00000023 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  2  1     2    1  |0 0>       -0.00000000 -0.00000775  0.02348744  0.00000000 -0.00000000 -0.00789068 -0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  3  1     3    1  |0 0>       -0.00000000 -0.00000266  0.00788987 -0.00000000 -0.00000000  0.02348982 -0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  4  1     4    1  |0 0>       -0.00000075 -0.00000000 -0.00000000  0.02478929  0.00000001  0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  5  1     5    1  |0 0>        0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.02478800
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000112

  6  1     6    1  |0 0>        0.00000000 -0.00000000  0.00000000 -0.00000001  0.02478930  0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  7  1     7    1  |0 0>       -0.00000000 -0.00002561 -0.00000190 -0.00000000 -0.00000000 -0.00000002 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  8  1     1    1  |1 1>+       0.00000000  0.00000000 -0.00000000  0.00000000 -0.00038604 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  9  1     2    1  |1 1>+       0.00000000 -0.00000229  0.00066958  0.00000000 -0.00000000 -0.00038236 -0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 10  1     3    1  |1 1>+       0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00038483
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000002

 11  1     4    1  |1 1>+       0.00000488  0.00000000  0.00000000 -0.00066452 -0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 12  1     5    1  |1 1>+       0.00000317 -0.00000000 -0.00000000  0.00038472  0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 13  1     6    1  |1 1>+      -0.00002312  0.00000000 -0.00000000 -0.00000194 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 14  1     7    1  |1 1>+      -0.00000004  0.00000000  0.00000000 -0.00000000  0.00035776  0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 15  1     8    1  |1 1>+       0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00038075
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000002

 16  1     9    1  |1 1>+      -0.00000000 -0.09101335 -0.00001693 -0.00000000  0.00000000  0.00064179 -0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 17  1    10    1  |1 1>+      -0.33609818 -0.00000000  0.00000000 -0.00040961 -0.00000000 -0.00000000 -0.00000000
                               -0.00000002  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 18  1    11    1  |1 1>+       0.00000020 -0.00000000  0.00000000  0.00000000 -0.00007601 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 19  1    12    1  |1 1>+       0.00000000 -0.45789493 -0.00067147 -0.00000000  0.00000000 -0.00022751  0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 20  1    13    1  |1 1>+      -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00022086
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000001

 21  1    14    1  |1 1>+       0.00000000 -0.00000000 -0.00000000  0.00000030 -0.70686073 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 22  1    15    1  |1 1>+      -0.00000000 -0.00056514  0.40534577 -0.00000000 -0.00000000  0.70849336 -0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 23  1    16    1  |1 1>+       0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.70688879
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00003205

 24  1     1    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000305 -0.00000000 -0.00000000  0.00077242 -0.00000000

 25  1     2    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00038579  0.00000000  0.00000000

 26  1     3    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000096 -0.00000000  0.00000000 -0.00038579 -0.00000000 -0.00000000 -0.00000000

 27  1     4    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000001

 28  1     5    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000003
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00076939

 29  1     6    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 30  1     7    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00069470 -0.00000250 -0.00000000  0.00000000  0.00062004 -0.00000000

 31  1     8    1  |1 0>        0.00000001 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.09715537 -0.00000000  0.00000000  0.00008310  0.00000000 -0.00000000 -0.00000000

 32  1     9    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000003 -0.00000000 -0.00000000 -0.00000000  0.00008325 -0.00000000  0.00000000

 33  1    10    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000003
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00056331

 34  1    11    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000  0.75042174 -0.00083979 -0.00000000  0.00000000 -0.00000339  0.00000000

 35  1    12    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000025 -0.00000000 -0.00000000 -0.00000000  0.00032647  0.00000000  0.00000000

 36  1    13    1  |1 0>       -0.00000005  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.71925569 -0.00000000 -0.00000000 -0.00032646 -0.00000000 -0.00000000 -0.00000000

 37  1    14    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00057906  0.81622367  0.00000000 -0.00000000  0.00321963 -0.00000000

 38  1    15    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000030  0.70691732  0.00000000  0.00000000

 39  1    16    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00137664  0.00000000 -0.00000000  0.70691716  0.00000030  0.00000000  0.00000000

 40  1     1    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000399  0.00000000  0.00000000 -0.00038604 -0.00000000 -0.00000000 -0.00000000

 41  1     2    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000002
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00038483

 42  1     3    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000229  0.00066654 -0.00000000 -0.00000000  0.00038763 -0.00000000

 43  1     4    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00066452 -0.00000000 -0.00000000

 44  1     5    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00038472 -0.00000000 -0.00000000

 45  1     6    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000194  0.00000000 -0.00000000

 46  1     7    1  |1 1>-      -0.00000001  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.11937677 -0.00000000 -0.00000000  0.00035764  0.00000000  0.00000000  0.00000000

 47  1     8    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.09073375  0.00001195 -0.00000000  0.00000000  0.00064188 -0.00000000

 48  1     9    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000002
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00038072

 49  1    10    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000012  0.00000000 -0.00000000 -0.00000000  0.00040950  0.00000000  0.00000000

 50  1    11    1  |1 1>-      -0.00000004  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.58823076  0.00000000  0.00000000  0.00007609  0.00000000  0.00000000 -0.00000000

 51  1    12    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000001
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00022088

 52  1    13    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.45900102 -0.00067323 -0.00000000  0.00000000  0.00022220  0.00000000

 53  1    14    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00140191 -0.00000000 -0.00000000  0.70686089  0.00000030  0.00000000  0.00000000

 54  1    15    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00003205
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.70688910

 55  1    16    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00056522 -0.41092252 -0.00000000  0.00000000  0.70527339 -0.00000000



 Composition of spin-orbit eigenvectors
 ======================================
   Total
 Nr Sym  State Sym Spin / Nr.      1        2        3        4        5        6        7        8

  1  1     1    1  |0 0>         99.96%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.21%    1.74%    0.00%    0.00%
  3  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    1.74%    0.21%    0.00%    0.00%
  4  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    1.95%    0.00%
  5  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  6  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    1.95%
  7  1     7    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  8  1     1    1  |1 1>+         0.00%    0.00%   30.00%    0.00%    0.00%    0.00%    0.00%   16.35%
  9  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.00%   16.61%   48.77%    0.00%    0.00%
 10  1     3    1  |1 1>+         0.00%   30.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1     4    1  |1 1>+         0.00%    0.00%    0.00%   10.00%    0.00%    0.00%   49.02%    0.00%
 12  1     5    1  |1 1>+         0.00%    0.00%    0.00%   29.99%    0.00%    0.00%   16.34%    0.00%
 13  1     6    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 14  1     7    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 15  1     8    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 16  1     9    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 17  1    10    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 18  1    11    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 19  1    12    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 20  1    13    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 21  1    14    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 22  1    15    1  |1 1>+         0.01%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 23  1    16    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 24  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%   65.37%    0.00%    0.00%    0.00%
 25  1     2    1  |1 0>          0.00%    0.00%   30.00%    0.00%    0.00%    0.00%    0.00%   16.34%
 26  1     3    1  |1 0>          0.00%    0.00%    0.00%   30.00%    0.00%    0.00%   16.34%    0.00%
 27  1     4    1  |1 0>          0.00%   39.99%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 28  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 29  1     6    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 30  1     7    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 31  1     8    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 32  1     9    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 33  1    10    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 34  1    11    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 35  1    12    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 36  1    13    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 37  1    14    1  |1 0>          0.01%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 38  1    15    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 39  1    16    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 40  1     1    1  |1 1>-         0.00%    0.00%    0.00%   30.00%    0.00%    0.00%   16.35%    0.00%
 41  1     2    1  |1 1>-         0.00%   30.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 42  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%   16.08%   49.29%    0.00%    0.00%
 43  1     4    1  |1 1>-         0.00%    0.00%   10.00%    0.00%    0.00%    0.00%    0.00%   49.02%
 44  1     5    1  |1 1>-         0.00%    0.00%   29.99%    0.00%    0.00%    0.00%    0.00%   16.34%
 45  1     6    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 46  1     7    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 47  1     8    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 48  1     9    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 49  1    10    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 50  1    11    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 51  1    12    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 52  1    13    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 53  1    14    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 54  1    15    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 55  1    16    1  |1 1>-         0.01%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.      9       10       11       12       13       14       15       16

  1  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  3  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  4  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  5  1     5    1  |0 0>          1.95%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  6  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  7  1     7    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  8  1     1    1  |1 1>+         0.00%    0.00%   10.05%    0.00%   43.28%    0.00%    0.00%    0.00%
  9  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   33.33%
 10  1     3    1  |1 1>+        16.35%   19.93%    0.00%    0.00%    0.00%    0.00%   33.40%    0.00%
 11  1     4    1  |1 1>+         0.00%    0.00%    0.00%   23.13%    0.00%   16.88%    0.00%    0.00%
 12  1     5    1  |1 1>+         0.00%    0.00%    0.00%   35.78%    0.00%   17.56%    0.00%    0.00%
 13  1     6    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 14  1     7    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 15  1     8    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 16  1     9    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 17  1    10    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 18  1    11    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 19  1    12    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 20  1    13    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 21  1    14    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 22  1    15    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 23  1    16    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 24  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   33.33%
 25  1     2    1  |1 0>          0.00%    0.00%   31.10%    0.00%   22.23%    0.00%    0.00%    0.00%
 26  1     3    1  |1 0>          0.00%    0.00%    0.00%   30.83%    0.00%   22.50%    0.00%    0.00%
 27  1     4    1  |1 0>          0.00%   60.01%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 28  1     5    1  |1 0>         65.36%    0.00%    0.00%    0.00%    0.00%    0.00%   33.34%    0.00%
 29  1     6    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 30  1     7    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 31  1     8    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 32  1     9    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 33  1    10    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 34  1    11    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 35  1    12    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 36  1    13    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 37  1    14    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 38  1    15    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 39  1    16    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 40  1     1    1  |1 1>-         0.00%    0.00%    0.00%   10.27%    0.00%   43.06%    0.00%    0.00%
 41  1     2    1  |1 1>-        16.35%   20.06%    0.00%    0.00%    0.00%    0.00%   33.26%    0.00%
 42  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   33.33%
 43  1     4    1  |1 1>-         0.00%    0.00%   23.33%    0.00%   16.67%    0.00%    0.00%    0.00%
 44  1     5    1  |1 1>-         0.00%    0.00%   35.52%    0.00%   17.83%    0.00%    0.00%    0.00%
 45  1     6    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 46  1     7    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 47  1     8    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 48  1     9    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 49  1    10    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 50  1    11    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 51  1    12    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 52  1    13    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 53  1    14    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 54  1    15    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 55  1    16    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.     17       18       19       20       21       22       23       24

  1  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |0 0>         89.80%    8.19%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  3  1     3    1  |0 0>          8.19%   89.80%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  4  1     4    1  |0 0>          0.00%    0.00%   97.99%    0.00%    0.00%    0.00%    0.00%    0.00%
  5  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%   97.99%    0.00%    0.00%    0.00%
  6  1     6    1  |0 0>          0.00%    0.00%    0.00%   97.99%    0.00%    0.00%    0.00%    0.00%
  7  1     7    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  8  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.32%    0.00%    0.00%    0.00%    0.00%
  9  1     2    1  |1 1>+         1.01%    0.29%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 10  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.32%    0.00%    0.00%    0.00%
 11  1     4    1  |1 1>+         0.00%    0.00%    0.97%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1     5    1  |1 1>+         0.00%    0.00%    0.32%    0.00%    0.00%    0.00%    0.00%    0.00%
 13  1     6    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   99.97%    0.00%
 14  1     7    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 15  1     8    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 16  1     9    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 17  1    10    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 18  1    11    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 19  1    12    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 20  1    13    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 21  1    14    1  |1 1>+         0.00%    0.00%    0.00%    0.03%    0.00%    0.02%    0.00%    0.00%
 22  1    15    1  |1 1>+         0.01%    0.03%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 23  1    16    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.03%    0.00%    0.00%    0.02%
 24  1     1    1  |1 0>          0.00%    1.29%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 25  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.32%    0.00%    0.00%    0.00%    0.00%
 26  1     3    1  |1 0>          0.00%    0.00%    0.32%    0.00%    0.00%    0.00%    0.00%    0.00%
 27  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 28  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.00%    1.30%    0.00%    0.00%    0.00%
 29  1     6    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   99.97%
 30  1     7    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 31  1     8    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 32  1     9    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 33  1    10    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 34  1    11    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 35  1    12    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 36  1    13    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 37  1    14    1  |1 0>          0.04%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 38  1    15    1  |1 0>          0.00%    0.00%    0.00%    0.03%    0.00%    0.02%    0.00%    0.00%
 39  1    16    1  |1 0>          0.00%    0.00%    0.03%    0.00%    0.00%    0.00%    0.02%    0.00%
 40  1     1    1  |1 1>-         0.00%    0.00%    0.32%    0.00%    0.00%    0.00%    0.00%    0.00%
 41  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.32%    0.00%    0.00%    0.00%
 42  1     3    1  |1 1>-         0.93%    0.36%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 43  1     4    1  |1 1>-         0.00%    0.00%    0.00%    0.97%    0.00%    0.00%    0.00%    0.00%
 44  1     5    1  |1 1>-         0.00%    0.00%    0.00%    0.32%    0.00%    0.00%    0.00%    0.00%
 45  1     6    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%   99.97%    0.00%    0.00%
 46  1     7    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 47  1     8    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 48  1     9    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 49  1    10    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 50  1    11    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 51  1    12    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 52  1    13    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 53  1    14    1  |1 1>-         0.00%    0.00%    0.03%    0.00%    0.00%    0.00%    0.02%    0.00%
 54  1    15    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.03%    0.00%    0.00%    0.02%
 55  1    16    1  |1 1>-         0.01%    0.03%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.     25       26       27       28       29       30       31       32

  1  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.04%    0.00%
  2  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  3  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  4  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  5  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  6  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  7  1     7    1  |0 0>         99.26%    0.00%    0.00%    0.00%    0.00%    0.00%    0.74%    0.00%
  8  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  9  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 10  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1     4    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1     5    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 13  1     6    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 14  1     7    1  |1 1>+         0.00%    0.00%    0.00%   23.83%    0.00%    0.00%    0.00%   28.22%
 15  1     8    1  |1 1>+         0.00%    0.00%   35.95%    0.00%    0.00%    0.00%    0.00%    0.00%
 16  1     9    1  |1 1>+         0.00%   35.49%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 17  1    10    1  |1 1>+         0.00%    0.00%    0.00%    0.00%   23.81%    0.00%    0.00%    0.00%
 18  1    11    1  |1 1>+         0.00%    0.00%    0.00%   14.28%    0.00%    0.00%    0.00%   11.93%
 19  1    12    1  |1 1>+         0.00%    2.61%    0.00%    0.00%    0.00%   28.57%    0.00%    0.00%
 20  1    13    1  |1 1>+         0.00%    0.00%    2.16%    0.00%    0.00%    0.00%    0.00%    0.00%
 21  1    14    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 22  1    15    1  |1 1>+         0.25%    0.00%    0.00%    0.00%    0.00%    0.00%   33.07%    0.00%
 23  1    16    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 24  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 25  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 26  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 27  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 28  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 29  1     6    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 30  1     7    1  |1 0>          0.00%   23.80%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 31  1     8    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.01%    0.00%    0.00%    0.00%
 32  1     9    1  |1 0>          0.00%    0.00%    0.00%    0.01%    0.00%    0.00%    0.00%   57.38%
 33  1    10    1  |1 0>          0.00%    0.00%   23.79%    0.00%    0.00%    0.00%    0.00%    0.00%
 34  1    11    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%   42.85%    0.00%    0.00%
 35  1    12    1  |1 0>          0.00%    0.00%    0.00%   38.08%    0.00%    0.00%    0.00%    1.74%
 36  1    13    1  |1 0>          0.00%    0.00%    0.00%    0.00%   38.08%    0.00%    0.00%    0.00%
 37  1    14    1  |1 0>          0.25%    0.00%    0.00%    0.00%    0.00%    0.00%   33.08%    0.00%
 38  1    15    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 39  1    16    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 40  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 41  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 42  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 43  1     4    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 44  1     5    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 45  1     6    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 46  1     7    1  |1 1>-         0.00%    0.00%    0.00%    0.00%   23.83%    0.00%    0.00%    0.00%
 47  1     8    1  |1 1>-         0.00%   35.49%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 48  1     9    1  |1 1>-         0.00%    0.00%   35.95%    0.00%    0.00%    0.00%    0.00%    0.00%
 49  1    10    1  |1 1>-         0.00%    0.00%    0.00%   23.81%    0.00%    0.00%    0.00%    0.73%
 50  1    11    1  |1 1>-         0.00%    0.00%    0.00%    0.00%   14.28%    0.00%    0.00%    0.00%
 51  1    12    1  |1 1>-         0.00%    0.00%    2.16%    0.00%    0.00%    0.00%    0.00%    0.00%
 52  1    13    1  |1 1>-         0.00%    2.61%    0.00%    0.00%    0.00%   28.57%    0.00%    0.00%
 53  1    14    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 54  1    15    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 55  1    16    1  |1 1>-         0.25%    0.00%    0.00%    0.00%    0.00%    0.00%   33.07%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.     33       34       35       36       37       38       39       40

  1  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  3  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  4  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  5  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  6  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  7  1     7    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  8  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  9  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 10  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1     4    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1     5    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 13  1     6    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.03%    0.00%
 14  1     7    1  |1 1>+         0.00%    0.00%    0.00%    5.10%    0.00%    0.00%    0.00%    0.00%
 15  1     8    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.01%   12.10%    0.00%    0.00%
 16  1     9    1  |1 1>+         0.00%   12.89%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 17  1    10    1  |1 1>+         0.74%    0.00%   32.58%    0.00%    0.00%    0.00%    0.00%    0.00%
 18  1    11    1  |1 1>+         0.00%    0.00%    0.00%   38.07%    0.00%    0.00%    0.00%    0.00%
 19  1    12    1  |1 1>+         0.00%   20.43%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 20  1    13    1  |1 1>+         0.00%    0.00%    0.00%    0.00%   49.92%   21.30%    0.00%    0.00%
 21  1    14    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   49.99%
 22  1    15    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 23  1    16    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 24  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 25  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 26  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 27  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 28  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 29  1     6    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 30  1     7    1  |1 0>          0.00%   33.36%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 31  1     8    1  |1 0>         57.40%    0.00%   17.61%    0.00%    0.00%    0.00%    0.00%    0.00%
 32  1     9    1  |1 0>          0.00%    0.00%    0.00%   17.63%    0.00%    0.00%    0.00%    0.00%
 33  1    10    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%   33.37%    0.00%    0.00%
 34  1    11    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 35  1    12    1  |1 0>          0.00%    0.00%    0.00%    6.61%    0.00%    0.00%    0.00%    0.00%
 36  1    13    1  |1 0>          1.74%    0.00%    6.61%    0.00%    0.00%    0.00%    0.00%    0.00%
 37  1    14    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 38  1    15    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   49.98%
 39  1    16    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   49.98%    0.00%
 40  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 41  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 42  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 43  1     4    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 44  1     5    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 45  1     6    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.03%
 46  1     7    1  |1 1>-        28.22%    0.00%    5.10%    0.00%    0.00%    0.00%    0.00%    0.00%
 47  1     8    1  |1 1>-         0.00%   12.89%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 48  1     9    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.01%   12.10%    0.00%    0.00%
 49  1    10    1  |1 1>-         0.00%    0.00%    0.00%   32.59%    0.00%    0.00%    0.00%    0.00%
 50  1    11    1  |1 1>-        11.91%    0.00%   38.09%    0.00%    0.00%    0.00%    0.00%    0.00%
 51  1    12    1  |1 1>-         0.00%    0.00%    0.00%    0.00%   50.07%   21.15%    0.00%    0.00%
 52  1    13    1  |1 1>-         0.00%   20.43%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 53  1    14    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   49.99%    0.00%
 54  1    15    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 55  1    16    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.     41       42       43       44       45       46       47       48

  1  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  3  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  4  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  5  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  6  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  7  1     7    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  8  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  9  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 10  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1     4    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1     5    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 13  1     6    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 14  1     7    1  |1 1>+         0.00%    0.00%    0.00%    0.00%   41.43%    0.00%    0.00%    1.43%
 15  1     8    1  |1 1>+         0.00%    0.00%   49.99%    0.00%    0.00%    0.00%    1.96%    0.00%
 16  1     9    1  |1 1>+         0.00%   49.16%    0.00%    0.00%    0.00%    1.62%    0.00%    0.00%
 17  1    10    1  |1 1>+         0.00%    0.00%    0.00%   31.58%    0.00%    0.00%    0.00%    0.00%
 18  1    11    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    1.12%    0.00%    0.00%   34.60%
 19  1    12    1  |1 1>+         0.00%    0.41%    0.00%    0.00%    0.00%   27.02%    0.00%    0.00%
 20  1    13    1  |1 1>+         0.00%    0.00%    0.01%    0.00%    0.00%    0.00%   26.62%    0.00%
 21  1    14    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 22  1    15    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 23  1    16    1  |1 1>+        49.98%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 24  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 25  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 26  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 27  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 28  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 29  1     6    1  |1 0>          0.03%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 30  1     7    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%   42.83%    0.00%    0.00%
 31  1     8    1  |1 0>          0.00%    0.00%    0.00%   24.04%    0.00%    0.00%    0.00%    0.00%
 32  1     9    1  |1 0>          0.00%    0.00%    0.00%    0.00%   24.04%    0.00%    0.00%    0.94%
 33  1    10    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   42.85%    0.00%
 34  1    11    1  |1 0>          0.00%    0.83%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 35  1    12    1  |1 0>          0.00%    0.00%    0.00%    0.00%    1.83%    0.00%    0.00%   51.74%
 36  1    13    1  |1 0>          0.00%    0.00%    0.00%    1.84%    0.00%    0.00%    0.00%    0.00%
 37  1    14    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 38  1    15    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 39  1    16    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 40  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 41  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 42  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 43  1     4    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 44  1     5    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 45  1     6    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 46  1     7    1  |1 1>-         0.00%    0.00%    0.00%   41.43%    0.00%    0.00%    0.00%    0.00%
 47  1     8    1  |1 1>-         0.00%   49.18%    0.00%    0.00%    0.00%    1.62%    0.00%    0.00%
 48  1     9    1  |1 1>-         0.00%    0.00%   50.00%    0.00%    0.00%    0.00%    1.95%    0.00%
 49  1    10    1  |1 1>-         0.00%    0.00%    0.00%    0.00%   31.58%    0.00%    0.00%   11.29%
 50  1    11    1  |1 1>-         0.00%    0.00%    0.00%    1.12%    0.00%    0.00%    0.00%    0.00%
 51  1    12    1  |1 1>-         0.00%    0.00%    0.01%    0.00%    0.00%    0.00%   26.62%    0.00%
 52  1    13    1  |1 1>-         0.00%    0.42%    0.00%    0.00%    0.00%   26.91%    0.00%    0.00%
 53  1    14    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 54  1    15    1  |1 1>-        49.98%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 55  1    16    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.     49       50       51       52       53       54       55

  1  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |0 0>          0.00%    0.00%    0.06%    0.00%    0.00%    0.01%    0.00%
  3  1     3    1  |0 0>          0.00%    0.00%    0.01%    0.00%    0.00%    0.06%    0.00%
  4  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.06%    0.00%    0.00%    0.00%
  5  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.06%
  6  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.06%    0.00%    0.00%
  7  1     7    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  8  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  9  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 10  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1     4    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1     5    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 13  1     6    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 14  1     7    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 15  1     8    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 16  1     9    1  |1 1>+         0.00%    0.83%    0.00%    0.00%    0.00%    0.00%    0.00%
 17  1    10    1  |1 1>+        11.30%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 18  1    11    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 19  1    12    1  |1 1>+         0.00%   20.97%    0.00%    0.00%    0.00%    0.00%    0.00%
 20  1    13    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 21  1    14    1  |1 1>+         0.00%    0.00%    0.00%    0.00%   49.97%    0.00%    0.00%
 22  1    15    1  |1 1>+         0.00%    0.00%   16.43%    0.00%    0.00%   50.20%    0.00%
 23  1    16    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   49.97%
 24  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 25  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 26  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 27  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 28  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 29  1     6    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 30  1     7    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 31  1     8    1  |1 0>          0.94%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 32  1     9    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 33  1    10    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 34  1    11    1  |1 0>          0.00%   56.31%    0.00%    0.00%    0.00%    0.00%    0.00%
 35  1    12    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 36  1    13    1  |1 0>         51.73%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 37  1    14    1  |1 0>          0.00%    0.00%   66.62%    0.00%    0.00%    0.00%    0.00%
 38  1    15    1  |1 0>          0.00%    0.00%    0.00%    0.00%   49.97%    0.00%    0.00%
 39  1    16    1  |1 0>          0.00%    0.00%    0.00%   49.97%    0.00%    0.00%    0.00%
 40  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 41  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 42  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 43  1     4    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 44  1     5    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 45  1     6    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 46  1     7    1  |1 1>-         1.43%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 47  1     8    1  |1 1>-         0.00%    0.82%    0.00%    0.00%    0.00%    0.00%    0.00%
 48  1     9    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 49  1    10    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 50  1    11    1  |1 1>-        34.60%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 51  1    12    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 52  1    13    1  |1 1>-         0.00%   21.07%    0.00%    0.00%    0.00%    0.00%    0.00%
 53  1    14    1  |1 1>-         0.00%    0.00%    0.00%   49.97%    0.00%    0.00%    0.00%
 54  1    15    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   49.97%
 55  1    16    1  |1 1>-         0.00%    0.00%   16.89%    0.00%    0.00%   49.74%    0.00%



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       33.57       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       7      131.79       700     1000      520     2100     2140     5101     5103   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *       775.60    561.57    172.79     38.91      1.09      0.11      0.93
 REAL TIME  *       808.39 SEC
 DISK USED  *       165.44 MB (local),     1021.99 MB (total)
 SF USED    *         1.06 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCVTZ-PP energy=    -23.771440804161

              CI              CI           MULTI         RHF-SCF
    -23.75823883    -23.77951491    -23.55367185    -23.68006961
 **********************************************************************************************************************************
 Molpro calculation terminated with 1 warning(s)
