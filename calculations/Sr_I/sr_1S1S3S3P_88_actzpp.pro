
 Working directory              : /wrk/irikura/molpro.ZENJOpWSbv/
 Global scratch directory       : /wrk/irikura/molpro.ZENJOpWSbv/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.ZENJOpWSbv/

 id        : nistki

 Nodes            nprocs
 pn125343.nist.gov   30
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1025), CPU time= 0.02 sec
 ***,Sr SO-CI
 memory,1000,M;
 
 gprint,orbitals,civector;
 
 symmetry,xyz
 geometry={Sr};
 
 basis=aug-cc-pwCVTZ-PP
 
 {rhf;wf,sym=1,spin=0}
 
                                                                                 ! Active space (8/8)
 {multi
     closed,1,0
     occ,3,6
     wf,sym=1,spin=0;state,2;
     wf,sym=1,spin=2;state,4;
     expec2,lxx,lyy,lzz;
 }
 table, energy, ll
 title, Energies and &lt;L**2&gt; values
 
 core,0,0
 {ci;wf,sym=1,spin=0;state,2; save,5201.2}
 hlsdiag = energd4
 {ci;wf,sym=1,spin=2;state,4; save,5203.2}
 hlsdiag(3) = energd4
 
 table,hlsdiag
 
 {ci;hlsmat,ecp,5201.2,5203.2;print,vls=0,hls=0}                                 !compute and diagonalize SO matrix
 Commands initialized (840), CPU time= 0.02 sec, 684 directives.
 Default parameters read. Elapsed time= 0.18 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2022.3 linked Wed Nov 30 06:40:34 2022


 **********************************************************************************************************************************
 LABEL *   Sr SO-                                                                        
  64 bit mpp version                                                                     DATE: 04-Mar-24          TIME: 16:01:55  
 **********************************************************************************************************************************

 SHA1:             e31ec9a5ea85254ab76f59d122cbdd51c71cf98b
 **********************************************************************************************************************************

 Memory per process:      1000 MW
 Total memory per node:  30000 MW

 GA preallocation disabled
 GA check disabled

 Variable memory set to 1000.0 MW


 ZSYMEL=XYZ

 SETTING BASIS          =    AUG-CC-PWCVTZ-PP


 Recomputing integrals since basis changed


 Using spherical harmonics

 Library entry Sr   ECP ECP28MDF                 selected for group  1
 Library entry SR     S aug-cc-pwCVTZ-PP     selected for orbital group  1
 Library entry SR     P aug-cc-pwCVTZ-PP     selected for orbital group  1
 Library entry SR     D aug-cc-pwCVTZ-PP     selected for orbital group  1
 Library entry SR     F aug-cc-pwCVTZ-PP     selected for orbital group  1


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

   1  SR     10.00    0.000000000    0.000000000    0.000000000

 NUCLEAR CHARGE:                   10
 NUMBER OF PRIMITIVE AOS:         127
 NUMBER OF SYMMETRY AOS:          110
 NUMBER OF CONTRACTIONS:           80   (   38Ag  +   42Au  )
 NUMBER OF INNER CORE ORBITALS:     0   (    0Ag  +    0Au  )
 NUMBER OF OUTER CORE ORBITALS:     4   (    1Ag  +    3Au  )
 NUMBER OF VALENCE ORBITALS:        1   (    1Ag  +    0Au  )


 LX: Ag           LY: Ag           LZ: Ag 


 NUCLEAR REPULSION ENERGY    0.00000000

 EXTRA SYMMETRY OF AOS IN SYMMETRY 1:   1 1 1 1 1 1 1 1 2 3   4 5 6 2 3 4 5 6 2 3   4 5 6 2 3 4 5 6 2 3   4 5 6 2 3 4 5 6
 EXTRA SYMMETRY OF AOS IN SYMMETRY 2:   1 2 3 1 2 3 1 2 3 1   2 3 1 2 3 1 2 3 1 2   3 4 5 6 7 8 910 4 5   6 7 8 910 4 5 6 7 8
                                        910


 Eigenvalues of metric

         1 0.706E-05 0.181E-02 0.976E-02 0.976E-02 0.976E-02 0.976E-02 0.976E-02 0.121E-01
         2 0.508E-02 0.508E-02 0.508E-02 0.242E-01 0.242E-01 0.242E-01 0.110E+00 0.110E+00


 Contracted 2-electron integrals neglected if value below      1.0D-12
 AO integral compression algorithm  1   Integral accuracy      1.0D-12

     13.107 MB (compressed) written to integral file ( 23.3%)

     Node minimum: 0.262 MB, node maximum: 1.311 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:      89640.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:      89640      RECORD LENGTH: 524288

 Memory used in sort:       0.65 MW

 SORT1 READ     6063679. AND WROTE       19650. INTEGRALS IN      1 RECORDS. CPU TIME:     0.08 SEC, REAL TIME:     0.10 SEC
 SORT2 READ      567219. AND WROTE     2690436. INTEGRALS IN     30 RECORDS. CPU TIME:     0.01 SEC, REAL TIME:     0.01 SEC

 Node minimum:       88960.  Node maximum:       92031. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      19       28.73       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         1.29      0.93
 REAL TIME  *         2.39 SEC
 DISK USED  *        29.00 MB (local),      995.63 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 Program * Restricted Hartree-Fock

 Orbital guess generated from atomic densities. Full valence occupancy:    2   3

 Initial occupancy:   2   3

 NELEC=   10   SYM=1   MS2= 0   THRE=1.0D-08   THRD=3.2D-06   THRG=3.2D-06  HFMA2=F  DIIS_START=2   DIIS_MAX=10   DIIS_INCORE=F

 Level shifts:    0.00 (CLOSED)    0.00 (OPEN)    0.30 (GAP_MIN)

 ITER           ETOT              DE          GRAD        DDIFF     DIIS  NEXP   TIME(IT)  TIME(TOT)  DIAG
   1      -30.34122429     -30.34122429     0.00D+00     0.11D+00     0     0       0.01      0.01    start
   2      -30.34122430      -0.00000001     0.32D-05     0.84D-04     1     0       0.00      0.01    diag
   3      -30.34122430      -0.00000000     0.87D-06     0.22D-04     2     0       0.00      0.01    diag
   4      -30.34122430      -0.00000000     0.38D-06     0.15D-04     3     0       0.01      0.02    diag
   5      -30.34122430      -0.00000000     0.57D-07     0.56D-06     4     0       0.00      0.02    diag
   6      -30.34122430      -0.00000000     0.22D-07     0.30D-06     0     0       0.00      0.02    diag

 Final occupancy:   2   3

 !RHF STATE 1.1 Energy                -30.341224300615
  RHF One-electron energy             -49.818329586658
  RHF Two-electron energy              19.477105286043
  RHF Kinetic energy                    9.485913008601
  RHF Nuclear energy                    0.000000000000
  RHF Virial quotient                  -3.198556034944

 !RHF STATE 1.1 Dipole moment           0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 ELECTRON ORBITALS
 =================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -1.97188     1  1  s    1.00522
    2.1     2.00000    -0.18127     1  2  s    1.01723
    1.2     2.00000    -1.09297     1  1  pz   0.99986
    2.2     2.00000    -1.09297     1  1  px   0.99986
    3.2     2.00000    -1.09297     1  1  py   0.99986


 HOMO      2.1    -0.181273 =      -4.9327eV
 LUMO      4.2     0.009585 =       0.2608eV
 LUMO-HOMO         0.190858 =       5.1935eV

 Orbitals saved in record  2100.2


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      19       28.73       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    

              2       4        0.40       700     1000      520     2100   
                                         GEOM     BASIS   MCVARS     RHF  

 PROGRAMS   *        TOTAL   RHF-SCF       INT
 CPU TIMES  *         1.31      0.02      0.93
 REAL TIME  *         2.43 SEC
 DISK USED  *        29.34 MB (local),     1005.93 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of closed-shell orbitals:   1 (    1    0)
 Number of active  orbitals:        8 (    2    6)
 Number of external orbitals:      71 (   35   36)

 State symmetry 1

 Number of active electrons:   8    Spin symmetry=Singlet   Space symmetry=1
 Number of states:             2
 Number of CSFs:             924   (2500 determinants, 4900 intermediate states)

 State symmetry 2

 Number of active electrons:   8    Spin symmetry=Triplet   Space symmetry=1
 Number of states:             4
 Number of CSFs:            1176   (1576 determinants, 3136 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 2 6 4 3 5 2 4   6 3 5 1 6 4 2 3 5 1   6 4 3 5 2 6 4 3 5 2   1 6 4 3 5 2 1 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.472D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.472D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.232D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.101D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.974D-03 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 1 2 3 2 1 2 1 3 3   2 1 6 4 510 8 9 7 3   2 1 5 4 6 810 7 9 3   2 1 4 5 6 810 7 9 2
                                        3 1

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.16667   0.16667
 Weight factors for state symmetry  2:    0.16667   0.16667   0.16667   0.16667
 
 Number of orbital rotations:  323  ( 2 closed/active, 35 closed/virtual, 0 active/active, 286 active/virtual )
 Total number of variables:    11627
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1    8   36    0    -30.17113072     -30.24007457   -0.06894385    0.05819486 0.00000326 0.00000630  0.12E+01      3.60
   2    8   33    0    -30.23517932     -30.23639998   -0.00122066    0.00966990 0.00000017 0.00000038  0.17E+00      8.33
   3    6   21    0    -30.23640126     -30.23640129   -0.00000003    0.00006343 0.00000000 0.00000008  0.78E-03     10.95
   4    2    4    0    -30.23640129     -30.23640129    0.00000000    0.00000001 0.00000000 0.00000001  0.14E-06     12.15

 CONVERGENCE REACHED!  Final gradient:    0.00000000 ( 0.23E-08)
                       Final energy:    -30.23640129
 
 Results for state 1.1 Singlet
 =============================
 !MCSCF STATE 1.1 Singlet Energy               -30.360033024937
 Nuclear energy                                  0.00000000
 Kinetic energy                                  9.53508528
 One electron energy                           -49.83521008
 Two electron energy                            19.47517706
 Virial ratio                                    4.18403372
 
 !MCSCF STATE 1.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Singlet
 =============================
 !MCSCF STATE 2.1 Singlet Energy               -30.226246884725
 Nuclear energy                                  0.00000000
 Kinetic energy                                  9.45981324
 One electron energy                           -48.73452031
 Two electron energy                            18.50827343
 Virial ratio                                    4.19522660
 
 !MCSCF STATE 2.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.1 Triplet
 =============================
 !MCSCF STATE 1.1 Triplet Energy               -30.236201845910
 Nuclear energy                                  0.00000000
 Kinetic energy                                  9.41908751
 One electron energy                           -48.58263200
 Two electron energy                            18.34643015
 Virial ratio                                    4.21009884
 
 !MCSCF STATE 1.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Triplet
 =============================
 !MCSCF STATE 2.1 Triplet Energy               -30.198642004140
 Nuclear energy                                  0.00000000
 Kinetic energy                                  9.50363240
 One electron energy                           -48.95685957
 Two electron energy                            18.75821756
 Virial ratio                                    4.17758944
 
 !MCSCF STATE 2.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Triplet
 =============================
 !MCSCF STATE 3.1 Triplet Energy               -30.198642004140
 Nuclear energy                                  0.00000000
 Kinetic energy                                  9.50363240
 One electron energy                           -48.95685957
 Two electron energy                            18.75821756
 Virial ratio                                    4.17758944
 
 !MCSCF STATE 3.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Triplet
 =============================
 !MCSCF STATE 4.1 Triplet Energy               -30.198642004140
 Nuclear energy                                  0.00000000
 Kinetic energy                                  9.50363240
 One electron energy                           -48.95685957
 Two electron energy                            18.75821756
 Virial ratio                                    4.17758944
 
 !MCSCF STATE 4.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 !MCSCF expec      <1.1 Singlet|LXLX|1.1 Singlet>    -0.000000000000
 !MCSCF expec      <2.1 Singlet|LXLX|2.1 Singlet>    -0.000000000000
 !MCSCF expec      <1.1 Triplet|LXLX|1.1 Triplet>    -0.000000000000
 !MCSCF expec      <2.1 Triplet|LXLX|2.1 Triplet>     0.522986453780
 !MCSCF expec      <3.1 Triplet|LXLX|3.1 Triplet>     0.991119980797
 !MCSCF expec      <4.1 Triplet|LXLX|4.1 Triplet>     0.485893565423
 
 !MCSCF expec      <1.1 Singlet|LYLY|1.1 Singlet>    -0.000000000000
 !MCSCF expec      <2.1 Singlet|LYLY|2.1 Singlet>     0.000000000000
 !MCSCF expec      <1.1 Triplet|LYLY|1.1 Triplet>     0.000000000000
 !MCSCF expec      <2.1 Triplet|LYLY|2.1 Triplet>     0.491134874942
 !MCSCF expec      <3.1 Triplet|LYLY|3.1 Triplet>     0.994502322641
 !MCSCF expec      <4.1 Triplet|LYLY|4.1 Triplet>     0.514362802417
 
 !MCSCF expec      <1.1 Singlet|LZLZ|1.1 Singlet>    -0.000000000000
 !MCSCF expec      <2.1 Singlet|LZLZ|2.1 Singlet>    -0.000000000000
 !MCSCF expec      <1.1 Triplet|LZLZ|1.1 Triplet>    -0.000000000000
 !MCSCF expec      <2.1 Triplet|LZLZ|2.1 Triplet>     0.985878671278
 !MCSCF expec      <3.1 Triplet|LZLZ|3.1 Triplet>     0.014377696562
 !MCSCF expec      <4.1 Triplet|LZLZ|4.1 Triplet>     0.999743632160
 
 !MCSCF expec      <1.1 Singlet|L**2|1.1 Singlet>    -0.000000000000
 !MCSCF expec      <2.1 Singlet|L**2|2.1 Singlet>    -0.000000000000
 !MCSCF expec      <1.1 Triplet|L**2|1.1 Triplet>    -0.000000000000
 !MCSCF expec      <2.1 Triplet|L**2|2.1 Triplet>     2.000000000000
 !MCSCF expec      <3.1 Triplet|L**2|3.1 Triplet>     2.000000000000
 !MCSCF expec      <4.1 Triplet|L**2|4.1 Triplet>     2.000000000000
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 2 6 3 4 5 2 6   3 4 5 1 2 3 6 5 4 1   3 6 4 5 2 3 4 6 5 2   1 3 4 5 6 2 1 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 2 1 1 2 3 1 2 3 1   2 3 6 4 5 810 7 9 2   3 1 5 4 810 6 7 9 1   3 2 5 4 9 7 810 6 1
                                        3 2
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -2.05159     1  1  s    1.01652
    2.1     0.63910    -0.11663     1  2  s    1.17405
    3.1     0.33320     0.00545     1  2  s   -0.48683    1  5  s   -0.86510    1  8  s    1.89393
    1.2     1.99985    -1.17403     1  1  pz   1.00580
    2.2     1.99985    -1.17403     1  1  py   1.00580
    3.2     1.99985    -1.17403     1  1  px   1.00580
    4.2     0.34272    -0.01330     1  2  px   1.00051
    5.2     0.34272    -0.01330     1  2  py   1.00051
    6.2     0.34272    -0.01330     1  2  pz   1.00051
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 1 (Singlet)
 =======================================
 
 20 222000      0.94040846     -0.17988913
 ab 222000      0.12620150      0.69520738
 ba 222000     -0.12620150     -0.69520738
 00 222200     -0.16669958      0.01245876
 00 222020     -0.16669958      0.01245876
 00 222002     -0.16669958      0.01245876
 
 Energy:      -30.36003302    -30.22624688
 
 
 CI Coefficients of symmetry 1 (Triplet)
 =======================================
 
 aa 222000      0.99981450     -0.00000000     -0.00000000     -0.00000000
 00 222aa0      0.00000000     -0.11881293      0.99261582      0.01600876
 00 2220aa     -0.00000000     -0.69054389     -0.09421778      0.71688988
 00 222a0a      0.00000000      0.71322618      0.07413368      0.69675790
 
 Energy:      -30.23620185    -30.19864200    -30.19864200    -30.19864200
 


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       30.55       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       5        0.62       700     1000      520     2100     2140   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF   

 PROGRAMS   *        TOTAL     MULTI   RHF-SCF       INT
 CPU TIMES  *         3.81      2.49      0.02      0.93
 REAL TIME  *        14.85 SEC
 DISK USED  *        31.22 MB (local),        1.04 GB (total)
 SF USED    *         6.33 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

        ENERGY      LL
    -30.36003302  -0.0
    -30.22624688  -0.0
    -30.23620185  -0.0
    -30.19864200   2.0
    -30.19864200   2.0
    -30.19864200   2.0
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 2  Roots:    1   2
 Number of reference states: 2  Roots:    1   2

 Reference symmetry:                   1   Singlet 
 Number of electrons:                 10
 Maximum number of shells:             6
 Maximum number of spin couplings:    42

 Reference space:      603 conf      924 CSFs
 N elec internal:     2907 conf     5292 CSFs
 N-1 el internal:     3139 conf     8820 CSFs
 N-2 el internal:     2403 conf    10836 CSFs

 Number of electrons in valence space:                     10
 Maximum number of open shell orbitals in reference space:  8
 Maximum number of open shell orbitals in internal spaces: 10


 Number of closed-shell orbitals:   1 (   1   0 )
 Number of active  orbitals:        8 (   2   6 )
 Number of external orbitals:      71 (  35  36 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Valence orbitals related to previous ones by unitary transformation. Operators transformed.


 Number of p-space configurations:   9

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1       -30.36003302
     2       -30.22624688

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.4506D-06

 Number of blocks in overlap matrix:    24   Smallest eigenvalue:  0.45D-06
 Number of N-2 electron functions:     160
 Number of N-1 electron functions:    8820

 Number of internal configurations:                 2688
 Number of singly external configurations:        313124
 Number of doubly external configurations:        202212
 Total number of contracted configurations:       518024
 Total number of uncontracted configurations:   13934480

 Diagonal Coupling coefficients finished.               Storage: 1141456 words, CPU-Time:      0.05 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:  314631 words, CPU-time:      0.00 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000   -30.36003302    -0.00000000    -0.21175201  0.17D-01  0.51D-01     0.21
    1     2     2     1.00000000     0.00000000   -30.22624688     0.00000000    -0.19425327  0.21D-01  0.43D-01     0.21
    2     1     1     1.06610720    -0.20759256   -30.56762558    -0.20759256    -0.00431501  0.14D-02  0.69D-03     0.83
    2     2     2     1.06848793    -0.20295917   -30.42920606    -0.20295917    -0.00440569  0.18D-02  0.66D-03     0.83
    3     1     1     1.06541765    -0.21274564   -30.57277866    -0.00515308    -0.00040613  0.61D-04  0.83D-04     1.38
    3     2     2     1.06713835    -0.20805119   -30.43429807    -0.00509201    -0.00032630  0.49D-04  0.68D-04     1.38
    4     1     1     1.06707566    -0.21344656   -30.57347959    -0.00070092    -0.00010154  0.77D-05  0.22D-04     1.95
    4     2     2     1.06788054    -0.20858001   -30.43482689    -0.00052882    -0.00007798  0.57D-05  0.17D-04     1.95
    5     1     1     1.06767787    -0.21366432   -30.57369735    -0.00021776    -0.00005015  0.43D-05  0.10D-04     2.49
    5     2     2     1.06839983    -0.20875271   -30.43499960    -0.00017270    -0.00004516  0.57D-05  0.93D-05     2.49
    6     1     1     1.06766125    -0.21375908   -30.57379211    -0.00009476    -0.00002277  0.36D-05  0.39D-05     3.02
    6     2     2     1.06837404    -0.20883339   -30.43508027    -0.00008068    -0.00002238  0.40D-05  0.41D-05     3.02
    7     1     1     1.06796647    -0.21379174   -30.57382477    -0.00003266    -0.00000843  0.11D-05  0.16D-05     3.53
    7     2     2     1.06852129    -0.20886487   -30.43511176    -0.00003149    -0.00000842  0.11D-05  0.17D-05     3.53
    8     1     1     1.06813504    -0.21380678   -30.57383980    -0.00001504    -0.00000476  0.41D-06  0.93D-06     4.05
    8     2     2     1.06867070    -0.20887990   -30.43512678    -0.00001502    -0.00000530  0.58D-06  0.11D-05     4.05
    9     1     1     1.06820791    -0.21381509   -30.57384812    -0.00000832    -0.00000266  0.38D-06  0.46D-06     4.56
    9     2     2     1.06874752    -0.20888901   -30.43513590    -0.00000912    -0.00000321  0.45D-06  0.60D-06     4.56
   10     1     1     1.06829043    -0.21381889   -30.57385192    -0.00000380    -0.00000110  0.14D-06  0.21D-06     5.06
   10     2     2     1.06880859    -0.20889338   -30.43514026    -0.00000437    -0.00000140  0.17D-06  0.28D-06     5.06
   11     1     1     1.06833050    -0.21382068   -30.57385371    -0.00000179    -0.00000064  0.48D-07  0.13D-06     5.56
   11     2     2     1.06885083    -0.20889567   -30.43514256    -0.00000229    -0.00000092  0.72D-07  0.19D-06     5.56
   12     1     1     1.06837006    -0.21382176   -30.57385479    -0.00000108    -0.00000039  0.39D-07  0.71D-07     6.06
   12     2     2     1.06888305    -0.20889716   -30.43514405    -0.00000149    -0.00000059  0.59D-07  0.12D-06     6.06
   13     1     1     1.06840191    -0.21382231   -30.57385533    -0.00000055    -0.00000017  0.19D-07  0.32D-07     6.57
   13     2     2     1.06891007    -0.20889795   -30.43514484    -0.00000079    -0.00000027  0.30D-07  0.56D-07     6.57
   14     1     1     1.06841446    -0.21382257   -30.57385559    -0.00000026    -0.00000010  0.58D-08  0.20D-07     7.07
   14     2     2     1.06892849    -0.20889838   -30.43514526    -0.00000043    -0.00000019  0.91D-08  0.41D-07     7.07
   15     1     1     1.06843040    -0.21382273   -30.57385575    -0.00000016    -0.00000006  0.50D-08  0.12D-07     7.58
   15     2     2     1.06894392    -0.20889866   -30.43514555    -0.00000028    -0.00000012  0.99D-08  0.26D-07     7.58
   16     1     1     1.06844259    -0.21382282   -30.57385584    -0.00000009    -0.00000003  0.26D-08  0.58D-08     8.09
   16     2     2     1.06895479    -0.20889883   -30.43514571    -0.00000016    -0.00000006  0.53D-08  0.13D-07     8.09
   17     1     1     1.06845322    -0.21382284   -30.57385587    -0.00000003    -0.00000003  0.17D-08  0.53D-08     8.46
   17     2     2     1.06898652    -0.20889904   -30.43514592    -0.00000021    -0.00000004  0.26D-08  0.88D-08     8.46
   18     1     1     1.06845366    -0.21382285   -30.57385587    -0.00000001    -0.00000002  0.72D-09  0.45D-08     8.85
   18     2     2     1.06898819    -0.20889907   -30.43514596    -0.00000003    -0.00000000  0.12D-09  0.64D-09     8.85


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   4.5%
 S   3.8%  11.4%
 P   3.1%  42.0%  16.3%

 Initialization:   1.4%
 Other:           17.5%

 Total CPU:        8.9 seconds
 =====================================



 Wavefunction saved on  5201.2

 Reference coefficients greater than 0.0500000
 =============================================
 2/\222000           0.1129996   0.9596486
 220222000           0.9298456  -0.1157610
 200222200          -0.1391008  -0.0137110
 200222020          -0.1391008  -0.0137110
 200222002          -0.1391007  -0.0137111

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.964609   -0.061514
 2           0.069243    0.964154

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.966561    0.003871
 2           0.003871    0.966629


 RESULTS FOR STATE 1.1
 =====================

 Coefficient of reference function:   C(0) = 0.96460927 (fixed)   0.96743055 (relaxed)   0.96656091 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00181114   -0.00006804   -0.20120565
 Singles      0.01073485   -0.01726914   -0.01827615
 Pairs        0.05784279    0.01842729    0.00565895
 Total        1.07038878    0.00109012   -0.21382285
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -30.35942097
 Nuclear energy                         0.00000000
 Kinetic energy                         9.64859680
 One electron energy                  -49.76028680
 Two electron energy                   19.18643092
 Virial quotient                       -3.16873598
 Correlation energy                    -0.21443490
 !MRCI STATE 1.1 Energy               -30.573855874537

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -30.58894969 (Davidson, fixed reference)
 Cluster corrected energies           -30.58853721 (Davidson, relaxed reference)
 Cluster corrected energies           -30.58894969 (Davidson, rotated reference)

 Cluster corrected energies           -30.58645250 (Pople, fixed reference)
 Cluster corrected energies           -30.58609412 (Pople, relaxed reference)
 Cluster corrected energies           -30.58645250 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Coefficient of reference function:   C(0) = 0.96415375 (fixed)   0.96717790 (relaxed)   0.96662923 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00116867   -0.00013117   -0.00097061
 Singles      0.01322126   -0.01616951   -0.01768919
 Pairs        0.05584755   -0.19193491   -0.19023926
 Total        1.07023748   -0.20823559   -0.20889907
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -30.22685894
 Nuclear energy                         0.00000000
 Kinetic energy                         9.57910915
 One electron energy                  -48.58507888
 Two electron energy                   18.14993292
 Virial quotient                       -3.17724180
 Correlation energy                    -0.20828702
 !MRCI STATE 2.1 Energy               -30.435145955275

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -30.44977551 (Davidson, fixed reference)
 Cluster corrected energies           -30.44952266 (Davidson, relaxed reference)
 Cluster corrected energies           -30.44977551 (Davidson, rotated reference)

 Cluster corrected energies           -30.44735403 (Pople, fixed reference)
 Cluster corrected energies           -30.44713428 (Pople, relaxed reference)
 Cluster corrected energies           -30.44735403 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       30.55       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       6        8.89       700     1000      520     2100     2140     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *        12.97      9.14      2.49      0.02      0.93
 REAL TIME  *        25.85 SEC
 DISK USED  *        39.49 MB (local),        1.28 GB (total)
 SF USED    *        90.90 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =       -30.58894969  AU                              
 SETTING HLSDIAG(2)     =       -30.44977551  AU                              


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 4  Roots:    1   2   3   4
 Number of reference states: 4  Roots:    1   2   3   4

 Reference symmetry:                   1   Triplet 
 Number of electrons:                 10
 Maximum number of shells:             5
 Maximum number of spin couplings:    90

 Reference space:      533 conf     1176 CSFs
 N elec internal:     2781 conf     7560 CSFs
 N-1 el internal:     3109 conf    14550 CSFs
 N-2 el internal:     2303 conf    19400 CSFs

 Number of electrons in valence space:                     10
 Maximum number of open shell orbitals in reference space:  8
 Maximum number of open shell orbitals in internal spaces: 10


 Number of closed-shell orbitals:   1 (   1   0 )
 Number of active  orbitals:        8 (   2   6 )
 Number of external orbitals:      71 (  35  36 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Coulomb and exchange operators available. No transformation done.


 Number of p-space configurations:   4

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1       -30.23620185
     2       -30.19864200
     3       -30.19864200
     4       -30.19864200

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1328D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1329D-06

 Number of blocks in overlap matrix:    31   Smallest eigenvalue:  0.13D-06
 Number of N-2 electron functions:     311
 Number of N-1 electron functions:   14550

 Number of internal configurations:                 3756
 Number of singly external configurations:        516522
 Number of doubly external configurations:        392976
 Total number of contracted configurations:       913254
 Total number of uncontracted configurations:   24830174

 Diagonal Coupling coefficients finished.               Storage: 2304440 words, CPU-Time:      0.23 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:  422304 words, CPU-time:      0.01 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000   -30.23620185     0.00000000    -0.17688794  0.15D-01  0.36D-01     0.54
    1     2     2     1.00000000     0.00000000   -30.19864200     0.00000000    -0.19015714  0.70D-02  0.46D-01     0.54
    1     3     3     1.00000000     0.00000000   -30.19864200     0.00000000    -0.19010957  0.70D-02  0.46D-01     0.54
    1     4     4     1.00000000     0.00000000   -30.19864200     0.00000000    -0.19015659  0.70D-02  0.46D-01     0.54
    2     1     1     1.06508871    -0.19870165   -30.43490350    -0.19870165    -0.00504183  0.10D-02  0.81D-03     2.87
    2     2     2     1.05597947    -0.19631427   -30.39495628    -0.19631427    -0.00443891  0.85D-03  0.92D-03     2.87
    2     3     3     1.05599315    -0.19631251   -30.39495452    -0.19631251    -0.00444868  0.85D-03  0.92D-03     2.87
    2     4     4     1.05599309    -0.19631234   -30.39495435    -0.19631234    -0.00444893  0.85D-03  0.92D-03     2.87
    3     1     1     1.06871383    -0.20543764   -30.44163948    -0.00673599    -0.00048794  0.57D-04  0.90D-04     5.19
    3     2     2     1.05947764    -0.20195750   -30.40059950    -0.00564323    -0.00058209  0.74D-04  0.16D-03     5.19
    3     3     3     1.05947737    -0.20195738   -30.40059939    -0.00564487    -0.00058219  0.74D-04  0.16D-03     5.19
    3     4     4     1.05947961    -0.20195624   -30.40059824    -0.00564389    -0.00058272  0.74D-04  0.16D-03     5.19
    4     1     1     1.06958490    -0.20612573   -30.44232758    -0.00068810    -0.00004241  0.25D-05  0.93D-05     7.51
    4     2     2     1.06371757    -0.20302703   -30.40166903    -0.00106953    -0.00021806  0.15D-04  0.65D-04     7.51
    4     3     3     1.06371035    -0.20302557   -30.40166757    -0.00106819    -0.00021811  0.15D-04  0.65D-04     7.51
    4     4     4     1.06370978    -0.20302549   -30.40166749    -0.00106925    -0.00021813  0.15D-04  0.65D-04     7.51
    5     1     1     1.06955253    -0.20618531   -30.44238715    -0.00005958    -0.00000505  0.34D-06  0.14D-05     9.81
    5     2     2     1.06623345    -0.20355515   -30.40219715    -0.00052812    -0.00013015  0.35D-05  0.33D-04     9.81
    5     3     3     1.06623959    -0.20355502   -30.40219702    -0.00052945    -0.00013065  0.35D-05  0.33D-04     9.81
    5     4     4     1.06623901    -0.20355492   -30.40219692    -0.00052943    -0.00013069  0.35D-05  0.33D-04     9.81
    6     1     1     1.06956667    -0.20619451   -30.44239636    -0.00000920    -0.00000223  0.22D-06  0.59D-06    12.14
    6     2     2     1.06739153    -0.20376776   -30.40240977    -0.00021262    -0.00004863  0.65D-05  0.12D-04    12.14
    6     3     3     1.06739186    -0.20376771   -30.40240971    -0.00021269    -0.00004864  0.65D-05  0.12D-04    12.14
    6     4     4     1.06739058    -0.20376769   -30.40240969    -0.00021277    -0.00004866  0.65D-05  0.12D-04    12.14
    7     1     1     1.06959895    -0.20619951   -30.44240135    -0.00000499    -0.00000134  0.13D-06  0.28D-06    14.44
    7     2     2     1.06835543    -0.20384439   -30.40248639    -0.00007662    -0.00002640  0.41D-05  0.66D-05    14.44
    7     3     3     1.06835254    -0.20384427   -30.40248628    -0.00007657    -0.00002637  0.41D-05  0.66D-05    14.44
    7     4     4     1.06835168    -0.20384422   -30.40248623    -0.00007653    -0.00002638  0.41D-05  0.66D-05    14.44
    8     1     1     1.06961387    -0.20620134   -30.44240318    -0.00000183    -0.00000036  0.24D-07  0.91D-07    16.74
    8     2     2     1.06922499    -0.20389718   -30.40253918    -0.00005279    -0.00001802  0.82D-06  0.43D-05    16.74
    8     3     3     1.06922631    -0.20389718   -30.40253918    -0.00005290    -0.00001809  0.82D-06  0.43D-05    16.74
    8     4     4     1.06922574    -0.20389715   -30.40253915    -0.00005292    -0.00001810  0.82D-06  0.43D-05    16.74
    9     1     1     1.06962538    -0.20620188   -30.44240373    -0.00000054    -0.00000016  0.12D-07  0.42D-07    19.04
    9     2     2     1.06978041    -0.20392507   -30.40256708    -0.00002790    -0.00000774  0.93D-06  0.19D-05    19.04
    9     3     3     1.06977974    -0.20392505   -30.40256706    -0.00002788    -0.00000775  0.93D-06  0.19D-05    19.04
    9     4     4     1.06978038    -0.20392504   -30.40256704    -0.00002789    -0.00000774  0.93D-06  0.19D-05    19.04
   10     1     1     1.06963431    -0.20620220   -30.44240405    -0.00000032    -0.00000011  0.95D-08  0.24D-07    21.35
   10     2     2     1.07017944    -0.20393686   -30.40257886    -0.00001178    -0.00000429  0.67D-06  0.11D-05    21.35
   10     3     3     1.07018064    -0.20393685   -30.40257886    -0.00001180    -0.00000430  0.67D-06  0.11D-05    21.35
   10     4     4     1.07017878    -0.20393684   -30.40257885    -0.00001180    -0.00000430  0.67D-06  0.11D-05    21.35
   11     1     1     1.06963923    -0.20620235   -30.44240420    -0.00000015    -0.00000004  0.25D-08  0.90D-08    23.66
   11     2     2     1.07054156    -0.20394478   -30.40258678    -0.00000792    -0.00000302  0.22D-06  0.69D-06    23.66
   11     3     3     1.07054107    -0.20394477   -30.40258677    -0.00000791    -0.00000302  0.22D-06  0.69D-06    23.66
   11     4     4     1.07054132    -0.20394476   -30.40258676    -0.00000792    -0.00000301  0.22D-06  0.69D-06    23.66
   12     1     1     1.06964200    -0.20620240   -30.44240425    -0.00000005    -0.00000002  0.94D-09  0.44D-08    25.95
   12     2     2     1.07080463    -0.20394932   -30.40259133    -0.00000455    -0.00000138  0.14D-06  0.34D-06    25.95
   12     3     3     1.07080414    -0.20394932   -30.40259132    -0.00000455    -0.00000138  0.14D-06  0.34D-06    25.95
   12     4     4     1.07080486    -0.20394930   -30.40259130    -0.00000454    -0.00000138  0.14D-06  0.34D-06    25.95
   13     1     1     1.06964200    -0.20620240   -30.44240425    -0.00000000    -0.00000002  0.94D-09  0.44D-08    27.92
   13     2     2     1.07148599    -0.20395398   -30.40259598    -0.00000465    -0.00000048  0.20D-07  0.11D-06    27.92
   13     3     3     1.07097466    -0.20395136   -30.40259336    -0.00000204    -0.00000076  0.10D-06  0.19D-06    27.92
   13     4     4     1.07097528    -0.20395134   -30.40259334    -0.00000204    -0.00000076  0.10D-06  0.19D-06    27.92
   14     1     1     1.06964200    -0.20620240   -30.44240425     0.00000000    -0.00000002  0.94D-09  0.44D-08    29.90
   14     2     2     1.07150239    -0.20395440   -30.40259640    -0.00000042    -0.00000003  0.16D-08  0.80D-08    29.90
   14     3     3     1.07150928    -0.20395418   -30.40259618    -0.00000282    -0.00000026  0.81D-08  0.56D-07    29.90
   14     4     4     1.07112324    -0.20395271   -30.40259472    -0.00000137    -0.00000055  0.47D-07  0.12D-06    29.90
   15     1     1     1.06964200    -0.20620240   -30.44240425     0.00000000    -0.00000002  0.94D-09  0.44D-08    31.56
   15     2     2     1.07152310    -0.20395442   -30.40259642    -0.00000002    -0.00000002  0.16D-08  0.36D-08    31.56
   15     3     3     1.07150239    -0.20395440   -30.40259640    -0.00000022    -0.00000003  0.16D-08  0.80D-08    31.56
   15     4     4     1.07153017    -0.20395435   -30.40259636    -0.00000164    -0.00000012  0.27D-08  0.28D-07    31.56
   16     1     1     1.06964200    -0.20620240   -30.44240425     0.00000000    -0.00000002  0.94D-09  0.44D-08    32.94
   16     2     2     1.07153868    -0.20395446   -30.40259646    -0.00000004    -0.00000001  0.24D-09  0.14D-08    32.94
   16     3     3     1.07152310    -0.20395442   -30.40259642    -0.00000002    -0.00000002  0.16D-08  0.36D-08    32.94
   16     4     4     1.07150239    -0.20395440   -30.40259640    -0.00000004    -0.00000003  0.16D-08  0.80D-08    32.94


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   2.3%
 S   2.1%   7.7%
 P   2.1%  44.1%  21.3%

 Initialization:   1.2%
 Other:           19.2%

 Total CPU:       32.9 seconds
 =====================================



 Wavefunction saved on  5203.2

 Reference coefficients greater than 0.0500000
 =============================================
 2//222000           0.9666962   0.0000000  -0.0000000  -0.0000000
 200222/0/          -0.0000000  -0.0003335   0.0009242   0.9658725
 200222//0          -0.0000000  -0.0006407   0.9658630  -0.0009244
 2002220//           0.0000000   0.9658564   0.0006411   0.0003329

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.966878    0.000000   -0.000000   -0.000000
 2           0.000000    0.966015   -0.000641   -0.000334
 3          -0.000000    0.000641    0.966022    0.000924
 4          -0.000000    0.000333   -0.000925    0.966031

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.966878    0.000000   -0.000000   -0.000000
 2           0.000000    0.966016    0.000000   -0.000000
 3          -0.000000    0.000000    0.966023    0.000000
 4          -0.000000   -0.000000    0.000000    0.966032


 RESULTS FOR STATE 1.1
 =====================

 Coefficient of reference function:   C(0) = 0.96687845 (fixed)   0.96688107 (relaxed)   0.96687845 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00004097   -0.00010207   -0.17777412
 Singles      0.01574865   -0.01604840   -0.01803848
 Pairs        0.05389621   -0.00000000   -0.01038980
 Total        1.06968582   -0.01615047   -0.20620240
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -30.23620185
 Nuclear energy                         0.00000000
 Kinetic energy                         9.56167888
 One electron energy                  -48.52933271
 Two electron energy                   18.08692846
 Virial quotient                       -3.18379279
 Correlation energy                    -0.20620240
 !MRCI STATE 1.1 Energy               -30.442404248886

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -30.45677363 (Davidson, fixed reference)
 Cluster corrected energies           -30.45677244 (Davidson, relaxed reference)
 Cluster corrected energies           -30.45677363 (Davidson, rotated reference)

 Cluster corrected energies           -30.45355945 (Pople, fixed reference)
 Cluster corrected energies           -30.45355849 (Pople, relaxed reference)
 Cluster corrected energies           -30.45355945 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Coefficient of reference function:   C(0) = 0.96601531 (fixed)   0.96601836 (relaxed)   0.96601558 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00005500   -0.00014278   -0.18022789
 Singles      0.00570894   -0.01090051   -0.01125854
 Pairs        0.06583367    0.00006661   -0.01246803
 Total        1.07159761   -0.01097668   -0.20395446
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -30.19864200
 Nuclear energy                         0.00000000
 Kinetic energy                         9.64159739
 One electron energy                  -48.85376018
 Two electron energy                   18.45116371
 Virial quotient                       -3.15327380
 Correlation energy                    -0.20395446
 !MRCI STATE 2.1 Energy               -30.402596464827

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -30.41719912 (Davidson, fixed reference)
 Cluster corrected energies           -30.41719786 (Davidson, relaxed reference)
 Cluster corrected energies           -30.41719912 (Davidson, rotated reference)

 Cluster corrected energies           -30.41394336 (Pople, fixed reference)
 Cluster corrected energies           -30.41394235 (Pople, relaxed reference)
 Cluster corrected energies           -30.41394336 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Coefficient of reference function:   C(0) = 0.96602195 (fixed)   0.96602538 (relaxed)   0.96602260 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00005500   -0.00014278   -0.17999804
 Singles      0.00570687   -0.01089837   -0.01125814
 Pairs        0.06582017   -0.00018460   -0.01269824
 Total        1.07158203   -0.01122575   -0.20395442
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -30.19864200
 Nuclear energy                         0.00000000
 Kinetic energy                         9.64152519
 One electron energy                  -48.85369583
 Two electron energy                   18.45109941
 Virial quotient                       -3.15329741
 Correlation energy                    -0.20395442
 !MRCI STATE 3.1 Energy               -30.402596422558

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -30.41719589 (Davidson, fixed reference)
 Cluster corrected energies           -30.41719464 (Davidson, relaxed reference)
 Cluster corrected energies           -30.41719589 (Davidson, rotated reference)

 Cluster corrected energies           -30.41394076 (Pople, fixed reference)
 Cluster corrected energies           -30.41393975 (Pople, relaxed reference)
 Cluster corrected energies           -30.41394076 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Coefficient of reference function:   C(0) = 0.96603145 (fixed)   0.96603471 (relaxed)   0.96603195 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00005497   -0.00014278   -0.00014380
 Singles      0.00571196   -0.01090269   -0.01125951
 Pairs        0.06579436   -0.19290882   -0.19255109
 Total        1.07156130   -0.20395430   -0.20395440
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -30.19864200
 Nuclear energy                         0.00000000
 Kinetic energy                         9.64155179
 One electron energy                  -48.85369037
 Two electron energy                   18.45109397
 Virial quotient                       -3.15328871
 Correlation energy                    -0.20395440
 !MRCI STATE 4.1 Energy               -30.402596401800

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -30.41719164 (Davidson, fixed reference)
 Cluster corrected energies           -30.41719039 (Davidson, relaxed reference)
 Cluster corrected energies           -30.41719164 (Davidson, rotated reference)

 Cluster corrected energies           -30.41393734 (Pople, fixed reference)
 Cluster corrected energies           -30.41393633 (Pople, relaxed reference)
 Cluster corrected energies           -30.41393734 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       30.55       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       7       37.44       700     1000      520     2100     2140     5201     5203   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *        47.93     34.95      9.14      2.49      0.02      0.93
 REAL TIME  *        66.42 SEC
 DISK USED  *        68.04 MB (local),        2.12 GB (total)
 SF USED    *       306.14 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(3)     =       -30.45677363  AU                              
 SETTING HLSDIAG(4)     =       -30.41719912  AU                              
 SETTING HLSDIAG(5)     =       -30.41719589  AU                              
 SETTING HLSDIAG(6)     =       -30.41719164  AU                              


        HLSDIAG
    -30.58894969
    -30.44977551
    -30.45677363
    -30.41719912
    -30.41719589
    -30.41719164
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Diagonal elements of H will be replaced by values from variable HLSDIAG


   ******************************
   *** Spin-orbit calculation ***
   ******************************


   Spin-orbit matrix elements
   ==========================

 Wavefunction restored from record  5201.2  Symmetry=1  S= 0.0  NSTATE=   2

 Original energies:    -30.573856    -30.435146
 Replaced energies:    -30.588950    -30.449776

 Wavefunction restored from record  5203.2  Symmetry=1  S= 1.0  NSTATE=   4

 Original energies:    -30.442404    -30.402596    -30.402596    -30.402596
 Replaced energies:    -30.456774    -30.417199    -30.417196    -30.417192



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=   -30.58894969

 Wigner-Eckart theorem used for 10 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.1  0.0  0.0       0.00       0.00      -0.00      -0.02       0.07      69.24       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00      69.24       0.05       0.02       0.00       0.06     -97.92       0.09

    2   2.1  0.0  0.0       0.00   30545.20       0.00       0.00      -0.01     -10.01       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00     -10.01      -0.01      -0.00      -0.00      -0.01      14.15      -0.01

    3   1.1  1.0  1.0      -0.00       0.00   29009.29       0.00       0.00       0.00       0.00      -0.00       0.01      11.16
                            0.00      -0.00       0.00       0.01     -15.78       0.02      -0.00     -11.16      -0.01      -0.00

    4   2.1  1.0  1.0      -0.02       0.00       0.00   37694.89       0.00       0.00       0.00      -0.00     118.75      -0.11
                          -69.24      10.01      -0.01       0.00       0.16     167.93      11.16      -0.00      -0.04       0.08

    5   3.1  1.0  1.0       0.07      -0.01       0.00       0.00   37695.60       0.00      -0.01    -118.75      -0.00      -0.04
                           -0.05       0.01      15.78      -0.16      -0.00       0.11       0.01       0.04      -0.00    -118.74

    6   4.1  1.0  1.0      69.24     -10.01       0.00       0.00       0.00   37696.53     -11.16       0.11       0.04       0.00
                           -0.02       0.00      -0.02    -167.93      -0.11      -0.00       0.00      -0.08     118.74       0.00

    7   1.1  1.0  0.0       0.00       0.00       0.00       0.00      -0.01     -11.16   29009.29       0.00       0.00       0.00
                           -0.00       0.00       0.00     -11.16      -0.01      -0.00       0.00       0.00       0.00       0.00

    8   2.1  1.0  0.0       0.00       0.00      -0.00      -0.00    -118.75       0.11       0.00   37694.89       0.00       0.00
                           -0.06       0.01      11.16       0.00      -0.04       0.08      -0.00       0.00       0.00       0.00

    9   3.1  1.0  0.0       0.00       0.00       0.01     118.75      -0.00       0.04       0.00       0.00   37695.60       0.00
                           97.92     -14.15       0.01       0.04       0.00    -118.74      -0.00      -0.00       0.00       0.00

   10   4.1  1.0  0.0       0.00       0.00      11.16      -0.11      -0.04       0.00       0.00       0.00       0.00   37696.53
                           -0.09       0.01       0.00      -0.08     118.74      -0.00      -0.00      -0.00      -0.00       0.00

   11   1.1  1.0 -1.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.01     -11.16
                           -0.00       0.00      -0.00      -0.00      -0.00      -0.00       0.00     -11.16      -0.01      -0.00

   12   2.1  1.0 -1.0      -0.02       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00    -118.75       0.11
                           69.24     -10.01      -0.00      -0.00      -0.00      -0.00      11.16       0.00      -0.04       0.08

   13   3.1  1.0 -1.0       0.07      -0.01       0.00       0.00       0.00       0.00       0.01     118.75      -0.00       0.04
                            0.05      -0.01      -0.00      -0.00      -0.00      -0.00       0.01       0.04       0.00    -118.74

   14   4.1  1.0 -1.0      69.24     -10.01       0.00       0.00       0.00       0.00      11.16      -0.11      -0.04       0.00
                            0.02      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.08     118.74      -0.00


   Nr   State  S   Sz       11         12         13         14

    1   1.1  0.0  0.0      -0.00      -0.02       0.07      69.24
                            0.00     -69.24      -0.05      -0.02

    2   2.1  0.0  0.0       0.00       0.00      -0.01     -10.01
                           -0.00      10.01       0.01       0.00

    3   1.1  1.0  1.0       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00

    4   2.1  1.0  1.0       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00

    5   3.1  1.0  1.0       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00

    6   4.1  1.0  1.0       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00

    7   1.1  1.0  0.0       0.00      -0.00       0.01      11.16
                           -0.00     -11.16      -0.01      -0.00

    8   2.1  1.0  0.0       0.00      -0.00     118.75      -0.11
                           11.16      -0.00      -0.04       0.08

    9   3.1  1.0  0.0      -0.01    -118.75      -0.00      -0.04
                            0.01       0.04      -0.00    -118.74

   10   4.1  1.0  0.0     -11.16       0.11       0.04       0.00
                            0.00      -0.08     118.74       0.00

   11   1.1  1.0 -1.0   29009.29       0.00       0.00       0.00
                           -0.00      -0.01      15.78      -0.02

   12   2.1  1.0 -1.0       0.00   37694.89       0.00       0.00
                            0.01      -0.00      -0.16    -167.93

   13   3.1  1.0 -1.0       0.00       0.00   37695.60       0.00
                          -15.78       0.16       0.00      -0.11

   14   4.1  1.0 -1.0       0.00       0.00       0.00   37696.53
                            0.02     167.93       0.11       0.00




   Spin-orbit calculation in the basis of symmetry adapted wave functions
   ======================================================================


 >>> Hamiltonian transformed to symmetry adapted basis <<<


  Results for symmetry 1
  ======================

 => Spin-Orbit Matrixblock (CM-1)  (dimension: 14)

    The diagonal matrixelements are shifted by    -30.58894969 a.u.

  State Sym Spin    / Nr.        1           2           3           4           5           6           7           8

    1    1  |0 0>               0.000       0.000      -0.000      -0.034       0.094      97.917       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.065

    2    1  |0 0>               0.000   30545.201       0.000       0.005      -0.014     -14.153       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000      -0.000      -0.009

    1    1  |1 1>+             -0.000       0.000   29009.290       0.000       0.000       0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000     -15.778

    2    1  |1 1>+             -0.034       0.005       0.000   37694.893       0.000       0.000      -0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000      15.778       0.000

    3    1  |1 1>+              0.094      -0.014       0.000       0.000   37695.600       0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.010       0.058

    4    1  |1 1>+             97.917     -14.153       0.000       0.000       0.000   37696.533       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.005      -0.111

    1    1  |1 0>               0.000       0.000       0.000      -0.000       0.000       0.000   29009.290       0.000
                               -0.000       0.000       0.000     -15.778      -0.010      -0.005       0.000       0.000

    2    1  |1 0>               0.000       0.000      -0.000      -0.000      -0.000       0.000       0.000   37694.893
                               -0.065       0.009      15.778       0.000      -0.058       0.111      -0.000       0.000

    3    1  |1 0>               0.000       0.000       0.000      -0.000      -0.000      -0.000       0.000       0.000
                               97.919     -14.152       0.010       0.058       0.000    -167.929      -0.000      -0.000

    4    1  |1 0>               0.000       0.000       0.000       0.000      -0.000       0.000       0.000       0.000
                               -0.094       0.014       0.005      -0.111     167.929       0.000      -0.000      -0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.005
                                0.000      -0.000       0.000       0.010     -15.778       0.015      -0.000      -0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.005       0.000
                              -97.915      14.151      -0.010       0.000       0.161     167.928      -0.000      -0.000

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000      -0.015    -167.934
                               -0.065       0.009      15.778      -0.161      -0.000       0.111       0.000       0.000

    4    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000     -15.781       0.161
                               -0.034       0.005      -0.015    -167.928      -0.111      -0.000       0.000       0.000

  State Sym Spin    / Nr.        9          10          11          12          13          14

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000
                              -97.919       0.094      -0.000      97.915       0.065       0.034

    2    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000
                               14.152      -0.014       0.000     -14.151      -0.009      -0.005

    1    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000
                               -0.010      -0.005       0.000       0.010     -15.778       0.015

    2    1  |1 1>+             -0.000       0.000       0.000       0.000       0.000       0.000
                               -0.058       0.111      -0.010       0.000       0.161     167.928

    3    1  |1 1>+             -0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000    -167.929      15.778      -0.161      -0.000       0.111

    4    1  |1 1>+             -0.000       0.000       0.000       0.000       0.000       0.000
                              167.929       0.000      -0.015    -167.928      -0.111      -0.000

    1    1  |1 0>               0.000       0.000       0.000       0.005      -0.015     -15.781
                                0.000       0.000       0.000       0.000      -0.000      -0.000

    2    1  |1 0>               0.000       0.000      -0.005       0.000    -167.934       0.161
                                0.000       0.000       0.000       0.000      -0.000      -0.000

    3    1  |1 0>           37695.600       0.000       0.015     167.934       0.000       0.058
                                0.000       0.000      -0.000      -0.000       0.000       0.000

    4    1  |1 0>               0.000   37696.533      15.781      -0.161      -0.058       0.000
                               -0.000       0.000      -0.000      -0.000       0.000      -0.000

    1    1  |1 1>-              0.015      15.781   29009.290       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>-            167.934      -0.161       0.000   37694.893       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>-              0.000      -0.058       0.000       0.000   37695.600       0.000
                               -0.000      -0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>-              0.058       0.000       0.000       0.000       0.000   37696.533
                               -0.000       0.000       0.000       0.000       0.000       0.000

 => Eigenvalues of spin-orbit matrix in ascending order  (E0 = Emin,ges)
    (symmetry =  1)

    Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
             (au)           (au)        (cm-1)           (au)       (cm-1)        (eV)
    1   -30.58895319    -0.00000351       -0.77      0.00000000        0.00      0.0000
    2   -30.45677390     0.13217579    29009.23      0.13217929    29010.00      3.5968
    3   -30.45677390     0.13217579    29009.23      0.13217929    29010.00      3.5968
    4   -30.45677390     0.13217579    29009.23      0.13217929    29010.00      3.5968
    5   -30.44977591     0.13917377    30545.11      0.13917728    30545.88      3.7872
    6   -30.41872194     0.17022774    37360.67      0.17023125    37361.44      4.6322
    7   -30.41796241     0.17098728    37527.37      0.17099079    37528.14      4.6529
    8   -30.41796026     0.17098942    37527.84      0.17099293    37528.61      4.6530
    9   -30.41795865     0.17099104    37528.20      0.17099455    37528.97      4.6530
   10   -30.41643255     0.17251714    37863.13      0.17252064    37863.90      4.6945
   11   -30.41643234     0.17251735    37863.18      0.17252086    37863.95      4.6945
   12   -30.41643023     0.17251945    37863.64      0.17252296    37864.41      4.6946
   13   -30.41642862     0.17252106    37864.00      0.17252457    37864.77      4.6946
   14   -30.41642825     0.17252143    37864.08      0.17252494    37864.85      4.6946

 => Eigenvectors of spin-orbit matrix columnwise and corresponding to the
    eigenvalues in ascending order (symmetry =  1)

  Basis states          Eigenvectors (columnwise)

 State Sym Spin     / Nr.      1           2           3           4           5           6           7           8

   1    1  |0 0>           0.99998970 -0.00000000  0.00000000 -0.00000000  0.00001997 -0.00453938  0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   2    1  |0 0>          -0.00000364 -0.00000000  0.00000000 -0.00000000  0.99999353  0.00359643 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   1    1  |1 1>+          0.00000000  0.00025197 -0.00025916  0.99999650  0.00000000 -0.00000000  0.00261961 -0.00000249
                          -0.00000000 -0.00000000 -0.00000003 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   2    1  |1 1>+          0.00000090  0.00185242 -0.00000180 -0.00000047 -0.00000072  0.00019966  0.00067293  0.70882888
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000009

   3    1  |1 1>+         -0.00000251  0.00000180  0.00185227  0.00000048  0.00000199 -0.00055253  0.00024421  0.00000350
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   4    1  |1 1>+         -0.00262078  0.00000064 -0.00000177 -0.00000000  0.00207623 -0.57635144 -0.00000000  0.00024355
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   1    1  |1 0>           0.00000000  0.00000013  0.00000012  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000  0.99999649 -0.00030650 -0.00025205  0.00000000 -0.00000000 -0.00000249 -0.00261966

   2    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000174 -0.00000047  0.00000112 -0.00185242 -0.00000138  0.00038360  0.70784817 -0.00067403

   3    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00262090 -0.00000000 -0.00000177 -0.00000123  0.00207644 -0.57742741  0.00046859 -0.00000000

   4    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000251 -0.00000057 -0.00185236 -0.00000112 -0.00000199  0.00055164 -0.00000032  0.00046444

   1    1  |1 1>-         -0.00000000  0.00000012  0.00000046  0.00000003 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00030657  0.99999649  0.00025908 -0.00000000 -0.00000000 -0.00000090  0.00000173

   2    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00262083 -0.00000064 -0.00000000  0.00000123 -0.00207644  0.57824051 -0.00046981 -0.00024430

   3    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000174  0.00000131  0.00000048 -0.00185227 -0.00000138  0.00038325  0.70635908  0.00000439

   4    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000009
                           0.00000090  0.00185236 -0.00000057  0.00000131 -0.00000072  0.00019864 -0.00000438  0.70537505

 State Sym Spin     / Nr.      9          10          11          12          13          14

   1    1  |0 0>           0.00000000  0.00000379 -0.00000000  0.00000000  0.00000000  0.00000470
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   2    1  |0 0>          -0.00000000 -0.00000294  0.00000000 -0.00000000  0.00000000 -0.00000362
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   1    1  |1 1>+         -0.00000091  0.00000000  0.00000266 -0.00000001  0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   2    1  |1 1>+         -0.00000351  0.00026875 -0.00068037 -0.70537731  0.00000351  0.00008262
                          -0.00000000 -0.00000000 -0.00000000  0.00000001 -0.00000000 -0.00000000

   3    1  |1 1>+          0.70808560  0.00057621  0.00024410  0.00000351  0.70612343 -0.00053898
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   4    1  |1 1>+         -0.00067568  0.18158514  0.00000000  0.00024411  0.00068654  0.79676447
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   1    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000172 -0.00000000 -0.00000000 -0.00000636  0.00000000  0.00000000

   2    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000031  0.00052399 -0.70636122  0.00067959 -0.00000032  0.00015807

   3    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00067772  0.59941739  0.00047660 -0.00000001 -0.00068480 -0.55431384

   4    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.70612090 -0.00017115 -0.00000032  0.00047376  0.70808790 -0.00077118

   1    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00261956  0.00000000 -0.00000000  0.00000000  0.00000370 -0.00000000

   2    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000  0.77956703  0.00047583  0.00024247 -0.00000000  0.24062712

   3    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00024435 -0.00040469  0.70785087 -0.00000448 -0.00024304  0.00036947

   4    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000001 -0.00000000 -0.00000000
                           0.00046518 -0.00006215  0.00000448  0.70883146 -0.00047350 -0.00027413


  No SO block in symmetry 2


 Summary of SO results
 =====================

 Eigenvalues of the spin-orbit matrix
 ....................................

     Nr  Sym         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
                   (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1   1    -30.58895319     -0.00000351       -0.77      0.00000000        0.00      0.0000
     2   1    -30.45677390      0.13217579    29009.23      0.13217929    29010.00      3.5968
     3   1    -30.45677390      0.13217579    29009.23      0.13217929    29010.00      3.5968
     4   1    -30.45677390      0.13217579    29009.23      0.13217929    29010.00      3.5968
     5   1    -30.44977591      0.13917377    30545.11      0.13917728    30545.88      3.7872
     6   1    -30.41872194      0.17022774    37360.67      0.17023125    37361.44      4.6322
     7   1    -30.41796241      0.17098728    37527.37      0.17099079    37528.14      4.6529
     8   1    -30.41796026      0.17098942    37527.84      0.17099293    37528.61      4.6530
     9   1    -30.41795865      0.17099104    37528.20      0.17099455    37528.97      4.6530
    10   1    -30.41643255      0.17251714    37863.13      0.17252064    37863.90      4.6945
    11   1    -30.41643234      0.17251735    37863.18      0.17252086    37863.95      4.6945
    12   1    -30.41643023      0.17251945    37863.64      0.17252296    37864.41      4.6946
    13   1    -30.41642862      0.17252106    37864.00      0.17252457    37864.77      4.6946
    14   1    -30.41642825      0.17252143    37864.08      0.17252494    37864.85      4.6946

 E0 =    -30.58894969 is the energy of the lowest zeroth-order state
 E1 =    -30.58895319 is the energy of the lowest SO-state


 Spin-orbit eigenvectors   (columnwise and corresponding to the eigenvalues in ascending order)
 .......................

        Basis states           Eigenvectors (columnwise)

   Total
 Nr Sym  State Sym Spin / Nr.        1           2           3           4           5           6           7           8

  1  1     1    1  |0 0>        0.99998970 -0.00000000  0.00000000 -0.00000000  0.00001997 -0.00453938  0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  2  1     2    1  |0 0>       -0.00000364 -0.00000000  0.00000000 -0.00000000  0.99999353  0.00359643 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  3  1     1    1  |1 1>+       0.00000000  0.00025197 -0.00025916  0.99999650  0.00000000 -0.00000000  0.00261961 -0.00000249
                               -0.00000000 -0.00000000 -0.00000003 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  4  1     2    1  |1 1>+       0.00000090  0.00185242 -0.00000180 -0.00000047 -0.00000072  0.00019966  0.00067293  0.70882888
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000009

  5  1     3    1  |1 1>+      -0.00000251  0.00000180  0.00185227  0.00000048  0.00000199 -0.00055253  0.00024421  0.00000350
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  6  1     4    1  |1 1>+      -0.00262078  0.00000064 -0.00000177 -0.00000000  0.00207623 -0.57635144 -0.00000000  0.00024355
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  7  1     1    1  |1 0>        0.00000000  0.00000013  0.00000012  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000  0.99999649 -0.00030650 -0.00025205  0.00000000 -0.00000000 -0.00000249 -0.00261966

  8  1     2    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000174 -0.00000047  0.00000112 -0.00185242 -0.00000138  0.00038360  0.70784817 -0.00067403

  9  1     3    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00262090 -0.00000000 -0.00000177 -0.00000123  0.00207644 -0.57742741  0.00046859 -0.00000000

 10  1     4    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000251 -0.00000057 -0.00185236 -0.00000112 -0.00000199  0.00055164 -0.00000032  0.00046444

 11  1     1    1  |1 1>-      -0.00000000  0.00000012  0.00000046  0.00000003 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00030657  0.99999649  0.00025908 -0.00000000 -0.00000000 -0.00000090  0.00000173

 12  1     2    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00262083 -0.00000064 -0.00000000  0.00000123 -0.00207644  0.57824051 -0.00046981 -0.00024430

 13  1     3    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000174  0.00000131  0.00000048 -0.00185227 -0.00000138  0.00038325  0.70635908  0.00000439

 14  1     4    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000009
                                0.00000090  0.00185236 -0.00000057  0.00000131 -0.00000072  0.00019864 -0.00000438  0.70537505


   Total
 Nr Sym  State Sym Spin / Nr.        9          10          11          12          13          14

  1  1     1    1  |0 0>        0.00000000  0.00000379 -0.00000000  0.00000000  0.00000000  0.00000470
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  2  1     2    1  |0 0>       -0.00000000 -0.00000294  0.00000000 -0.00000000  0.00000000 -0.00000362
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  3  1     1    1  |1 1>+      -0.00000091  0.00000000  0.00000266 -0.00000001  0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  4  1     2    1  |1 1>+      -0.00000351  0.00026875 -0.00068037 -0.70537731  0.00000351  0.00008262
                               -0.00000000 -0.00000000 -0.00000000  0.00000001 -0.00000000 -0.00000000

  5  1     3    1  |1 1>+       0.70808560  0.00057621  0.00024410  0.00000351  0.70612343 -0.00053898
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  6  1     4    1  |1 1>+      -0.00067568  0.18158514  0.00000000  0.00024411  0.00068654  0.79676447
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  7  1     1    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000172 -0.00000000 -0.00000000 -0.00000636  0.00000000  0.00000000

  8  1     2    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000031  0.00052399 -0.70636122  0.00067959 -0.00000032  0.00015807

  9  1     3    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00067772  0.59941739  0.00047660 -0.00000001 -0.00068480 -0.55431384

 10  1     4    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.70612090 -0.00017115 -0.00000032  0.00047376  0.70808790 -0.00077118

 11  1     1    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00261956  0.00000000 -0.00000000  0.00000000  0.00000370 -0.00000000

 12  1     2    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000  0.77956703  0.00047583  0.00024247 -0.00000000  0.24062712

 13  1     3    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00024435 -0.00040469  0.70785087 -0.00000448 -0.00024304  0.00036947

 14  1     4    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000001 -0.00000000 -0.00000000
                                0.00046518 -0.00006215  0.00000448  0.70883146 -0.00047350 -0.00027413



 Composition of spin-orbit eigenvectors
 ======================================
   Total
 Nr Sym  State Sym Spin / Nr.      1        2        3        4        5        6        7        8

  1  1     1    1  |0 0>        100.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%  100.00%    0.00%    0.00%    0.00%
  3  1     1    1  |1 1>+         0.00%    0.00%    0.00%  100.00%    0.00%    0.00%    0.00%    0.00%
  4  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   50.24%
  5  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  6  1     4    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%   33.22%    0.00%    0.00%
  7  1     1    1  |1 0>          0.00%  100.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  8  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   50.10%    0.00%
  9  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%   33.34%    0.00%    0.00%
 10  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1     1    1  |1 1>-         0.00%    0.00%  100.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%   33.44%    0.00%    0.00%
 13  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   49.89%    0.00%
 14  1     4    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   49.76%

   Total
 Nr Sym  State Sym Spin / Nr.      9       10       11       12       13       14

  1  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  3  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  4  1     2    1  |1 1>+         0.00%    0.00%    0.00%   49.76%    0.00%    0.00%
  5  1     3    1  |1 1>+        50.14%    0.00%    0.00%    0.00%   49.86%    0.00%
  6  1     4    1  |1 1>+         0.00%    3.30%    0.00%    0.00%    0.00%   63.48%
  7  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  8  1     2    1  |1 0>          0.00%    0.00%   49.89%    0.00%    0.00%    0.00%
  9  1     3    1  |1 0>          0.00%   35.93%    0.00%    0.00%    0.00%   30.73%
 10  1     4    1  |1 0>         49.86%    0.00%    0.00%    0.00%   50.14%    0.00%
 11  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1     2    1  |1 1>-         0.00%   60.77%    0.00%    0.00%    0.00%    5.79%
 13  1     3    1  |1 1>-         0.00%    0.00%   50.11%    0.00%    0.00%    0.00%
 14  1     4    1  |1 1>-         0.00%    0.00%    0.00%   50.24%    0.00%    0.00%



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       30.55       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       7       37.44       700     1000      520     2100     2140     5201     5203   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *       154.41    106.46     34.95      9.14      2.49      0.02      0.93
 REAL TIME  *       176.45 SEC
 DISK USED  *        68.04 MB (local),        2.12 GB (total)
 SF USED    *       306.14 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCVTZ-PP energy=    -30.416428251116

              CI              CI           MULTI         RHF-SCF
    -30.40259640    -30.43514596    -30.19864200    -30.34122430
 **********************************************************************************************************************************
 Molpro calculation terminated
