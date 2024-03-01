
 Working directory              : /wrk/irikura/molpro.q6tFahEOye/
 Global scratch directory       : /wrk/irikura/molpro.q6tFahEOye/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.q6tFahEOye/

 id        : nistki

 Nodes            nprocs
 pn112695.nist.gov   12
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1040), CPU time= 0.01 sec
 ***,Cl SO-CI
                                                                                 ! active space (7/8)
 memory,1500,M;
 
 gprint,orbitals,civector;
                                                                                 !gthresh,energy=1.d-10,coeff=1.d-8;
 
 symmetry,xyz
 geometry={Cl};
 
 basis=aug-cc-pwCVTZ-DK
 
 set,dkho=101
 
 {rhf;wf,nelec=17,sym=2,spin=1}
 
 {multi
     closed,2,3
     occ,4,9
     wf,sym=2,spin=1;state,3;
 weight,all,99
     wf,sym=2,spin=3;state,8;
 weight,all,1
     expec2,lxx,lyy,lzz;
 }
 table, energy, ll
 title, Energies and &lt;L**2&gt; values
 
                                                                                 ! only K-shell uncorrelated
 core,1,0
 
 {ci;wf,sym=2,spin=1;state,3; save,5201.2}
 hlsdiag = energd4
 {ci;wf,sym=2,spin=3;state,8; save,5203.2}
 hlsdiag(4) = energd4
 
 table,hlsdiag
 
 lsint
 {ci;hlsmat,ls,5201.2,5203.2;print,vls=0,hls=0}                                  !compute and diagonalize SO matrix
 Commands initialized (846), CPU time= 0.01 sec, 717 directives.
 Default parameters read. Elapsed time= 0.15 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2023.2 linked Fri Sep 22 03:27:09 2023


 **********************************************************************************************************************************
 LABEL *   Cl SO-CI                                                                                                                                                      
  (32 PROC) 64 bit mpp version                                                           DATE: 28-Feb-24          TIME: 09:50:03  
 **********************************************************************************************************************************

 SHA1:             3c61bfe44d37c8635c785372c339f5cbdd4e4b59
 **********************************************************************************************************************************

 Memory per process:      1500 MW
 Total memory per node:  18000 MW

 GA preallocation disabled
 GA check disabled

 Variable memory set to 1500.0 MW


 ZSYMEL=XYZ

 SETTING BASIS          =    AUG-CC-PWCVTZ-DK
 SETTING DKHO           =       101.00000000                                  


 Recomputing integrals since basis changed


 Using spherical harmonics

 Library entry CL     S aug-cc-pwCVTZ-DK     selected for orbital group  1
 Library entry CL     P aug-cc-pwCVTZ-DK     selected for orbital group  1
 Library entry CL     D aug-cc-pwCVTZ-DK     selected for orbital group  1
 Library entry CL     F aug-cc-pwCVTZ-DK     selected for orbital group  1


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

   1  CL     17.00    0.000000000    0.000000000    0.000000000

 NUCLEAR CHARGE:                   17
 NUMBER OF PRIMITIVE AOS:         114
 NUMBER OF SYMMETRY AOS:          100
 NUMBER OF CONTRACTIONS:           75   (   33Ag  +   42Au  )
 NUMBER OF INNER CORE ORBITALS:     1   (    1Ag  +    0Au  )
 NUMBER OF OUTER CORE ORBITALS:     4   (    1Ag  +    3Au  )
 NUMBER OF VALENCE ORBITALS:        4   (    1Ag  +    3Au  )


 NUCLEAR REPULSION ENERGY    0.00000000

 One-electron integrals computed with SEWARD

 eXact-2-Component (X2C) method activated

 Computing Douglas-Kroll / X2C integrals

 AO integral compression algorithm  1   Integral accuracy      1.0D-11

     7.078 MB (compressed) written to integral file ( 19.3%)

     Node minimum: 0.262 MB, node maximum: 0.786 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:     173397.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:     173397      RECORD LENGTH: 524288

 Memory used in sort:       0.73 MW

 SORT1 READ     4558334. AND WROTE       36502. INTEGRALS IN      1 RECORDS. CPU TIME:     0.03 SEC, REAL TIME:     0.04 SEC
 SORT2 READ      438096. AND WROTE     2085546. INTEGRALS IN     24 RECORDS. CPU TIME:     0.01 SEC, REAL TIME:     0.02 SEC

 Node minimum:      172985.  Node maximum:      175449. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000

 EXTRA SYMMETRY OF AOS IN SYMMETRY 1:   1 1 1 1 1 1 1 1 2 3   4 5 6 2 3 4 5 6 2 3   4 5 6 2 3 4 5 6 2 3   4 5 6
 EXTRA SYMMETRY OF AOS IN SYMMETRY 2:   1 2 3 1 2 3 1 2 3 1   2 3 1 2 3 1 2 3 1 2   3 4 5 6 7 8 910 4 5   6 7 8 910 4 5 6 7 8
                                        910

 Eigenvalues of metric

         1 0.210E-02 0.526E-02 0.592E-01 0.138E+00 0.138E+00 0.138E+00 0.138E+00 0.138E+00
         2 0.130E-01 0.130E-01 0.130E-01 0.300E-01 0.300E-01 0.300E-01 0.114E+00 0.114E+00


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      22       28.81       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600   
                                         AOSYM     SMH  

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         0.72      0.48
 REAL TIME  *         1.50 SEC
 DISK USED  *        29.14 MB (local),      400.76 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 Program * Restricted Hartree-Fock

 Orbital guess generated from atomic densities. Full valence occupancy:    3   6

 Initial alpha occupancy:   3   6
 Initial beta  occupancy:   3   5

 NELEC=   17   SYM=2   MS2= 1   THRE=1.0D-08   THRD=3.2D-06   THRG=3.2D-06  HFMA2=F  DIIS_START=2   DIIS_MAX=10   DIIS_INCORE=F

 Level shifts:    0.00 (CLOSED)    0.00 (OPEN)    0.30 (GAP_MIN)

 ITER           ETOT              DE          GRAD        DDIFF     DIIS  NEXP   TIME(IT)  TIME(TOT)  DIAG
   1     -460.88652677    -460.88652677     0.00D+00     0.15D+00     0     0       0.01      0.01    start
   2     -460.88950976      -0.00298299     0.31D-02     0.36D-02     1     0       0.00      0.01    diag2
   3     -460.88964245      -0.00013269     0.71D-03     0.70D-03     2     0       0.00      0.01    diag2
   4     -460.88965588      -0.00001343     0.18D-03     0.23D-03     3     0       0.00      0.01    diag2
   5     -460.88965795      -0.00000208     0.40D-04     0.11D-03     4     0       0.00      0.01    diag2
   6     -460.88965809      -0.00000014     0.11D-04     0.33D-04     5     0       0.01      0.02    diag2
   7     -460.88965810      -0.00000000     0.14D-05     0.36D-05     6     0       0.00      0.02    diag2
   8     -460.88965810      -0.00000000     0.13D-06     0.38D-06     7     0       0.00      0.02    fixocc
   9     -460.88965810      -0.00000000     0.73D-08     0.20D-07     0     0       0.00      0.02    diag

 Final alpha occupancy:   3   6
 Final beta  occupancy:   3   5

 !RHF STATE 1.2 Energy               -460.889658095874
  RHF One-electron energy            -636.773116793439
  RHF Two-electron energy             175.883458697565
  RHF Kinetic energy                  469.524509141986
  RHF Nuclear energy                    0.000000000000
  RHF Virial quotient                  -0.981609371017

 !RHF STATE 1.2 Dipole moment           0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 ELECTRON ORBITALS
 =================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000  -105.26037     1  1  s    0.99881
    2.1     2.00000   -10.67436     1  2  s    1.00085
    3.1     2.00000    -1.07991     1  3  s    1.00781
    1.2     2.00000    -8.07497     1  1  px   0.99745
    2.2     2.00000    -8.07286     1  1  pz   1.00077
    3.2     2.00000    -8.07286     1  1  py   1.00077
    4.2     2.00000    -0.49163     1  2  pz   0.99673
    5.2     2.00000    -0.49163     1  2  py   0.99672
    6.2     1.00000    -0.56900     1  2  px   1.04790


 HOMO      6.2    -0.569003 =     -15.4834eV
 LUMO      7.2     0.106433 =       2.8962eV
 LUMO-HOMO         0.675436 =      18.3796eV

 Orbitals saved in record  2100.2


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      22       28.81       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600   
                                         AOSYM     SMH  

              2       4        0.47       700     1000      520     2100   
                                         GEOM     BASIS   MCVARS     RHF  

 PROGRAMS   *        TOTAL   RHF-SCF       INT
 CPU TIMES  *         0.81      0.10      0.48
 REAL TIME  *         2.47 SEC
 DISK USED  *        29.72 MB (local),      407.72 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of closed-shell orbitals:   5 (    2    3)
 Number of active  orbitals:        8 (    2    6)
 Number of external orbitals:      62 (   29   33)

 State symmetry 1

 Number of active electrons:   7    Spin symmetry=Doublet   Space symmetry=2
 Number of states:             3
 Number of CSFs:            1204   (1980 determinants, 3920 intermediate states)

 State symmetry 2

 Number of active electrons:   7    Spin symmetry=Quartet   Space symmetry=2
 Number of states:             8
 Number of CSFs:             656   (776 determinants, 1568 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  
 *** IN SYMMETRY 1 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.345D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.201D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.954D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.156D-01 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 1 5 4 3 2 6 1   5 4 3 2 6 5 4 3 2 6   1 5 4 3 2 6 1 5 4 3   2 6 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.120D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.144D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.150D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.191D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.185D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.378D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.149D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.962D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  9 SYMMETRY CONTAMINATION OF 0.100D-01 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 3 2 3 2 1 1 3 2 1   3 2 710 9 4 8 6 5 1   3 2 7 910 4 8 5 6 7  10 9 4 8 6 5 1 3 2 1
                                        3 2

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.32459   0.32459   0.32459
 Weight factors for state symmetry  2:    0.00328   0.00328   0.00328   0.00328   0.00328   0.00328   0.00328   0.00328
 
 Number of orbital rotations:  435  ( 22 closed/active, 157 closed/virtual, 0 active/active, 256 active/virtual )
 Total number of variables:    12583
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1   11   56    0   -460.87844811    -460.90585350   -0.02740538    0.05342473 0.00009362 0.00012776  0.16E+01      2.04
   2   10   50    0   -460.90501882    -460.90514704   -0.00012822    0.01045691 0.00007137 0.00025210  0.87E-01      4.45
   3   13   66    0   -460.90514732    -460.90514738   -0.00000006    0.00008453 0.00000001 0.00000058  0.29E-02      7.30
   4    2    5    0   -460.90514738    -460.90514738   -0.00000000    0.00000004 0.00000000 0.00000005  0.15E-06      7.73

 CONVERGENCE REACHED!  Final gradient:    0.00000001 ( 0.13E-07)
                       Final energy:   -460.90514738
 
 Results for state 1.2 Doublet
 =============================
 !MCSCF STATE 1.2 Doublet Energy              -460.923052256427
 Nuclear energy                                  0.00000000
 Kinetic energy                                469.50575812
 One electron energy                          -636.53464322
 Two electron energy                           175.61159096
 Virial ratio                                    1.98171970
 
 !MCSCF STATE 1.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.2 Doublet
 =============================
 !MCSCF STATE 2.2 Doublet Energy              -460.923052256427
 Nuclear energy                                  0.00000000
 Kinetic energy                                469.50575812
 One electron energy                          -636.53464322
 Two electron energy                           175.61159096
 Virial ratio                                    1.98171970
 
 !MCSCF STATE 2.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.2 Doublet
 =============================
 !MCSCF STATE 3.2 Doublet Energy              -460.923052256328
 Nuclear energy                                  0.00000000
 Kinetic energy                                469.50575812
 One electron energy                          -636.53464322
 Two electron energy                           175.61159096
 Virial ratio                                    1.98171970
 
 !MCSCF STATE 3.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.2 Quartet
 =============================
 !MCSCF STATE 1.2 Quartet Energy              -460.272658109968
 Nuclear energy                                  0.00000000
 Kinetic energy                                470.84320223
 One electron energy                          -634.94737038
 Two electron energy                           174.67471227
 Virial ratio                                    1.97754976
 
 !MCSCF STATE 1.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.2 Quartet
 =============================
 !MCSCF STATE 2.2 Quartet Energy              -460.272658101439
 Nuclear energy                                  0.00000000
 Kinetic energy                                470.84320227
 One electron energy                          -634.94737043
 Two electron energy                           174.67471232
 Virial ratio                                    1.97754976
 
 !MCSCF STATE 2.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.2 Quartet
 =============================
 !MCSCF STATE 3.2 Quartet Energy              -460.272658101438
 Nuclear energy                                  0.00000000
 Kinetic energy                                470.84320227
 One electron energy                          -634.94737043
 Two electron energy                           174.67471232
 Virial ratio                                    1.97754976
 
 !MCSCF STATE 3.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.2 Quartet
 =============================
 !MCSCF STATE 4.2 Quartet Energy              -460.221091455308
 Nuclear energy                                  0.00000000
 Kinetic energy                                470.90833351
 One electron energy                          -635.05265689
 Two electron energy                           174.83156544
 Virial ratio                                    1.97730505
 
 !MCSCF STATE 4.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.2 Quartet
 =============================
 !MCSCF STATE 5.2 Quartet Energy              -460.221091455276
 Nuclear energy                                  0.00000000
 Kinetic energy                                470.90833351
 One electron energy                          -635.05265689
 Two electron energy                           174.83156544
 Virial ratio                                    1.97730505
 
 !MCSCF STATE 5.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.2 Quartet
 =============================
 !MCSCF STATE 6.2 Quartet Energy              -460.221091445934
 Nuclear energy                                  0.00000000
 Kinetic energy                                470.90833355
 One electron energy                          -635.05265693
 Two electron energy                           174.83156549
 Virial ratio                                    1.97730505
 
 !MCSCF STATE 6.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.2 Quartet
 =============================
 !MCSCF STATE 7.2 Quartet Energy              -460.221091445933
 Nuclear energy                                  0.00000000
 Kinetic energy                                470.90833355
 One electron energy                          -635.05265693
 Two electron energy                           174.83156549
 Virial ratio                                    1.97730505
 
 !MCSCF STATE 7.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.2 Quartet
 =============================
 !MCSCF STATE 8.2 Quartet Energy              -460.221091442851
 Nuclear energy                                  0.00000000
 Kinetic energy                                470.90833357
 One electron energy                          -635.05265695
 Two electron energy                           174.83156551
 Virial ratio                                    1.97730505
 
 !MCSCF STATE 8.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 ? Warning
 ? Transition properties are only calculated between states of the same symmetry
 ? The problem occurs in mu_properties_expec2

 !MCSCF expec      <1.2 Doublet|LXLX|1.2 Doublet>     0.999999999797
 !MCSCF expec      <2.2 Doublet|LXLX|2.2 Doublet>     0.999999999631
 !MCSCF expec      <3.2 Doublet|LXLX|3.2 Doublet>     0.000000000572
 !MCSCF expec      <1.2 Quartet|LXLX|1.2 Quartet>     0.000000000001
 !MCSCF expec      <2.2 Quartet|LXLX|2.2 Quartet>     1.000000000000
 !MCSCF expec      <3.2 Quartet|LXLX|3.2 Quartet>     0.999999999999
 !MCSCF expec      <4.2 Quartet|LXLX|4.2 Quartet>     3.999999991732
 !MCSCF expec      <5.2 Quartet|LXLX|5.2 Quartet>     3.999999999997
 !MCSCF expec      <6.2 Quartet|LXLX|6.2 Quartet>     1.000000000000
 !MCSCF expec      <7.2 Quartet|LXLX|7.2 Quartet>     1.000000000000
 !MCSCF expec      <8.2 Quartet|LXLX|8.2 Quartet>     0.000000008271
 
 !MCSCF expec      <1.2 Doublet|LYLY|1.2 Doublet>     0.000063192626
 !MCSCF expec      <2.2 Doublet|LYLY|2.2 Doublet>     0.999936807582
 !MCSCF expec      <3.2 Doublet|LYLY|3.2 Doublet>     0.999999999792
 !MCSCF expec      <1.2 Quartet|LYLY|1.2 Quartet>     1.000000000000
 !MCSCF expec      <2.2 Quartet|LYLY|2.2 Quartet>     0.000110562387
 !MCSCF expec      <3.2 Quartet|LYLY|3.2 Quartet>     0.999889437613
 !MCSCF expec      <4.2 Quartet|LYLY|4.2 Quartet>     1.000157496173
 !MCSCF expec      <5.2 Quartet|LYLY|5.2 Quartet>     0.999999999998
 !MCSCF expec      <6.2 Quartet|LYLY|6.2 Quartet>     3.998582886973
 !MCSCF expec      <7.2 Quartet|LYLY|7.2 Quartet>     1.001417113027
 !MCSCF expec      <8.2 Quartet|LYLY|8.2 Quartet>     2.999842503829
 
 !MCSCF expec      <1.2 Doublet|LZLZ|1.2 Doublet>     0.999936807578
 !MCSCF expec      <2.2 Doublet|LZLZ|2.2 Doublet>     0.000063192787
 !MCSCF expec      <3.2 Doublet|LZLZ|3.2 Doublet>     0.999999999636
 !MCSCF expec      <1.2 Quartet|LZLZ|1.2 Quartet>     0.999999999999
 !MCSCF expec      <2.2 Quartet|LZLZ|2.2 Quartet>     0.999889437613
 !MCSCF expec      <3.2 Quartet|LZLZ|3.2 Quartet>     0.000110562387
 !MCSCF expec      <4.2 Quartet|LZLZ|4.2 Quartet>     0.999842512095
 !MCSCF expec      <5.2 Quartet|LZLZ|5.2 Quartet>     1.000000000005
 !MCSCF expec      <6.2 Quartet|LZLZ|6.2 Quartet>     1.001417113027
 !MCSCF expec      <7.2 Quartet|LZLZ|7.2 Quartet>     3.998582886973
 !MCSCF expec      <8.2 Quartet|LZLZ|8.2 Quartet>     3.000157487900
 
 !MCSCF expec      <1.2 Doublet|L**2|1.2 Doublet>     2.000000000000
 !MCSCF expec      <2.2 Doublet|L**2|2.2 Doublet>     2.000000000000
 !MCSCF expec      <3.2 Doublet|L**2|3.2 Doublet>     2.000000000000
 !MCSCF expec      <1.2 Quartet|L**2|1.2 Quartet>     2.000000000000
 !MCSCF expec      <2.2 Quartet|L**2|2.2 Quartet>     2.000000000000
 !MCSCF expec      <3.2 Quartet|L**2|3.2 Quartet>     2.000000000000
 !MCSCF expec      <4.2 Quartet|L**2|4.2 Quartet>     6.000000000000
 !MCSCF expec      <5.2 Quartet|L**2|5.2 Quartet>     6.000000000000
 !MCSCF expec      <6.2 Quartet|L**2|6.2 Quartet>     6.000000000000
 !MCSCF expec      <7.2 Quartet|L**2|7.2 Quartet>     6.000000000000
 !MCSCF expec      <8.2 Quartet|L**2|8.2 Quartet>     6.000000000000
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 1 1 2 3 5 4 6   2 4 3 5 6 2 5 3 4 6   1 2 5 4 3 6 1 2 5 3   4 6 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 2 1 3 2 1 3 2 1 1   2 3 6 9 7 4 810 5 1   3 2 4 6 5 9 7 810 6   7 9 410 8 5 1 2 3 1
                                        2 3
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000  -105.27609     1  1  s    0.99881
    2.1     2.00000   -10.68578     1  2  s    1.00052
    3.1     1.99226    -1.09358     1  3  s    0.99180
    4.1     0.00691     0.80504     1  3  s   -1.29030    1  4  s   -0.99259    1  5  s    1.98663    1  6  s    0.25138
    1.2     2.00000    -8.08949     1  1  pz   0.99965
    2.2     2.00000    -8.08949     1  1  py   0.99965
    3.2     2.00000    -8.08949     1  1  px   0.99965
    4.2     1.64944    -0.43417     1  2  pz   0.98612
    5.2     1.64944    -0.43417     1  2  py   0.98612
    6.2     1.64944    -0.43417     1  2  px   0.98612
    7.2     0.01750     0.60077     1  2  pz  -0.77906    1  3  pz  -0.42280    1  4  pz   1.21846
    8.2     0.01750     0.60077     1  2  py  -0.77906    1  3  py  -0.42280    1  4  py   1.21846
    9.2     0.01750     0.60077     1  2  px  -0.77906    1  3  px  -0.42280    1  4  px   1.21846
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 2 (Doublet)
 =======================================
 
 20 22a000      0.00001414     -0.00001904      0.99130641
 20 2a2000      0.99127508     -0.00788026     -0.00001429
 20 a22000      0.00788026      0.99127508      0.00001892
 
 Energy:     -460.92305226   -460.92305226   -460.92305226
 
 
 CI Coefficients of symmetry 2 (Quartet)
 =======================================

 State:              1               2               3               4               5               6               7
 20 aa200a      0.00000000      0.00000000     -0.00000000     -0.00003688     -0.00000060      0.00000061     -0.00000075
 20 2aaa00     -0.00000000     -0.00000000      0.00000000      0.70246888     -0.00000071     -0.00000042      0.00000014
 20 2aa0a0      0.69522394      0.00000010     -0.00000051     -0.00000101     -0.70245044      0.00000027     -0.00000004
 20 a2aa00      0.69522394      0.00000010     -0.00000051      0.00000101      0.70245044     -0.00000027      0.00000004
 20 a2a0a0      0.00000000      0.00000000      0.00000000      0.70243200     -0.00000130      0.00000020     -0.00000061
 20 2aa00a      0.00000010     -0.69518538     -0.00731018      0.00000012      0.00000027      0.70228463      0.01526713
 20 a2a00a      0.00000051     -0.00731018      0.69518538     -0.00000024      0.00000005      0.01526713     -0.70228463
 20 aa20a0      0.00000051     -0.00731019      0.69518563      0.00000024     -0.00000005     -0.01526712      0.70228439
 20 aa2a00     -0.00000010      0.69518563      0.00731019      0.00000012      0.00000027      0.70228439      0.01526712
 aa 22a000     -0.14096344     -0.00000002      0.00000010      0.00000000      0.00000000     -0.00000000      0.00000000
 aa a22000      0.00000010     -0.00148221      0.14095565     -0.00000000      0.00000000      0.00000000     -0.00000003
 aa 2a2000      0.00000002     -0.14095565     -0.00148221     -0.00000000      0.00000000      0.00000003      0.00000000
 
 Energy:     -460.27265811   -460.27265810   -460.27265810   -460.22109146   -460.22109146   -460.22109145   -460.22109145

 State:              8
 20 aa200a      0.81111979
 20 2aaa00     -0.40552812
 20 2aa0a0     -0.00000052
 20 a2aa00      0.00000052
 20 a2a0a0      0.40559199
 20 2aa00a     -0.00000052
 20 a2a00a     -0.00000066
 20 aa20a0      0.00000066
 20 aa2a00     -0.00000052
 aa 22a000      0.00000000
 aa a22000     -0.00000000
 aa 2a2000     -0.00000000
 
 Energy:     -460.22109144
 


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       31.88       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       5        0.67       700     1000      520     2100     2140   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF   

 PROGRAMS   *        TOTAL     MULTI   RHF-SCF       INT
 CPU TIMES  *         4.27      3.46      0.10      0.48
 REAL TIME  *        10.54 SEC
 DISK USED  *        32.63 MB (local),      442.59 MB (total)
 SF USED    *         9.13 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

         ENERGY     LL
    -460.9230523   2.0
    -460.9230523   2.0
    -460.9230523   2.0
    -460.2726581   2.0
    -460.2726581   2.0
    -460.2726581   2.0
    -460.2210915   6.0
    -460.2210915   6.0
    -460.2210914   6.0
    -460.2210914   6.0
    -460.2210914   6.0
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 3  Roots:    1   2   3
 Number of reference states: 3  Roots:    1   2   3

 Reference symmetry:                   2   Doublet 
 Number of electrons:                 17
 Maximum number of shells:             7
 Maximum number of spin couplings:   429

 Reference space:      554 conf     1204 CSFs
 N elec internal:    15604 conf    64512 CSFs
 N-1 el internal:    15918 conf   111168 CSFs
 N-2 el internal:     9180 conf    96556 CSFs

 Number of electrons in valence space:                     15
 Maximum number of open shell orbitals in reference space:  7
 Maximum number of open shell orbitals in internal spaces: 13


 Number of core orbitals:           1 (   1   0 )
 Number of closed-shell orbitals:   4 (   1   3 )
 Number of active  orbitals:        8 (   2   6 )
 Number of external orbitals:      62 (  29  33 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Integral transformation finished. Total CPU:   0.02 sec, npass=  1  Memory used:   0.31 MW


 Number of p-space configurations:   3

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -460.92305226
     2      -460.92305226
     3      -460.92305226

 Number of blocks in overlap matrix:   120   Smallest eigenvalue:  0.28D-05
 Number of N-2 electron functions:     432
 Number of N-1 electron functions:  111168

 Number of internal configurations:                32480
 Number of singly external configurations:       3447264
 Number of doubly external configurations:        416700
 Total number of contracted configurations:      3896444
 Total number of uncontracted configurations:   95867684

 Diagonal Coupling coefficients finished.               Storage:  15011940 words, CPU-Time:      5.52 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   3894631 words, CPU-time:      0.02 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -460.92305226     0.00000000    -0.41360467  0.24D-01  0.27D-01     7.79
    1     2     2     1.00000000     0.00000000  -460.92305226    -0.00000000    -0.41364940  0.24D-01  0.27D-01     7.79
    1     3     3     1.00000000     0.00000000  -460.92305226     0.00000000    -0.41353977  0.24D-01  0.27D-01     7.79
    2     1     1     1.04767007    -0.40300519  -461.32605744    -0.40300519    -0.00872145  0.10D-02  0.12D-02    36.76
    2     2     2     1.04769734    -0.40299613  -461.32604838    -0.40299613    -0.00873144  0.10D-02  0.12D-02    36.76
    2     3     3     1.04771296    -0.40298820  -461.32604046    -0.40298820    -0.00873676  0.10D-02  0.12D-02    36.76
    3     1     1     1.05229741    -0.41302755  -461.33607981    -0.01002237    -0.00094309  0.89D-04  0.13D-03    65.42
    3     2     2     1.05230530    -0.41302636  -461.33607862    -0.01003024    -0.00094454  0.90D-04  0.13D-03    65.42
    3     3     3     1.05229944    -0.41302594  -461.33607819    -0.01003774    -0.00094433  0.90D-04  0.13D-03    65.42
    4     1     1     1.05751426    -0.41415891  -461.33721117    -0.00113136    -0.00009393  0.68D-05  0.14D-04    94.12
    4     2     2     1.05751581    -0.41415850  -461.33721076    -0.00113214    -0.00009422  0.68D-05  0.14D-04    94.12
    4     3     3     1.05751638    -0.41415847  -461.33721073    -0.00113253    -0.00009422  0.68D-05  0.14D-04    94.12
    5     1     1     1.05786317    -0.41427113  -461.33732338    -0.00011222    -0.00001450  0.13D-05  0.19D-05   122.91
    5     2     2     1.05786264    -0.41427110  -461.33732336    -0.00011260    -0.00001453  0.13D-05  0.19D-05   122.91
    5     3     3     1.05786330    -0.41427110  -461.33732335    -0.00011263    -0.00001453  0.13D-05  0.19D-05   122.91
    6     1     1     1.05768521    -0.41428851  -461.33734077    -0.00001738    -0.00000186  0.18D-06  0.23D-06   151.49
    6     2     2     1.05768512    -0.41428851  -461.33734076    -0.00001741    -0.00000186  0.18D-06  0.23D-06   151.49
    6     3     3     1.05768522    -0.41428850  -461.33734076    -0.00001741    -0.00000186  0.18D-06  0.23D-06   151.49
    7     1     1     1.05778092    -0.41429056  -461.33734282    -0.00000205    -0.00000027  0.22D-07  0.38D-07   179.99
    7     2     2     1.05778077    -0.41429056  -461.33734281    -0.00000205    -0.00000027  0.22D-07  0.38D-07   179.99
    7     3     3     1.05778076    -0.41429056  -461.33734281    -0.00000205    -0.00000027  0.22D-07  0.38D-07   179.99
    8     1     1     1.05781274    -0.41429086  -461.33734312    -0.00000030    -0.00000005  0.39D-08  0.61D-08   208.70
    8     2     2     1.05781266    -0.41429086  -461.33734312    -0.00000030    -0.00000005  0.39D-08  0.61D-08   208.70
    8     3     3     1.05781268    -0.41429086  -461.33734312    -0.00000030    -0.00000005  0.39D-08  0.61D-08   208.70
    9     1     1     1.05782232    -0.41429092  -461.33734318    -0.00000006    -0.00000000  0.30D-09  0.32D-09   231.82
    9     2     2     1.05781274    -0.41429086  -461.33734312    -0.00000000    -0.00000005  0.39D-08  0.61D-08   231.82
    9     3     3     1.05781268    -0.41429086  -461.33734312    -0.00000000    -0.00000005  0.39D-08  0.61D-08   231.82


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   2.3%
 S   2.0%  11.5%
 P   1.0%  66.7%  11.5%

 Initialization:   2.5%
 Other:            2.5%

 Total CPU:      231.8 seconds
 =====================================



 Wavefunction saved on  5201.2

 Reference coefficients greater than 0.0500000
 =============================================
 2202222/2000          -0.0000000   0.0000000   0.9647440
 220222/22000           0.0000000   0.9647440  -0.0000000
 22022222/000           0.9647398  -0.0000000   0.0000000

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1          -0.000000    0.000000    0.971848
 2           0.000000    0.971853   -0.000000
 3           0.971853   -0.000000    0.000000

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.971848   -0.000000    0.000000
 2          -0.000000    0.971853    0.000000
 3           0.000000    0.000000    0.971853


 RESULTS FOR STATE 1.2
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.97184820 (fixed)   0.97218257 (relaxed)   0.97184820 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00089934   -0.00344045   -0.00360137
 Singles      0.01730218   -0.07665098   -0.07916370
 Pairs        0.04057215   -0.33419950   -0.33152586
 Total        1.05877366   -0.41429092   -0.41429092
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -460.92305226
 Nuclear energy                         0.00000000
 Kinetic energy                       469.84984388
 One electron energy                 -636.44614645
 Two electron energy                  175.10880328
 Virial quotient                       -0.98188251
 Correlation energy                    -0.41429092
 !MRCI STATE 1.2 Energy              -461.337343176069

 Properties without orbital relaxation:

 !MRCI STATE 1.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -461.36169257 (Davidson, fixed reference)
 Cluster corrected energies          -461.36139089 (Davidson, relaxed reference)
 Cluster corrected energies          -461.36169257 (Davidson, rotated reference)

 Cluster corrected energies          -461.35911864 (Pople, fixed reference)
 Cluster corrected energies          -461.35883743 (Pople, relaxed reference)
 Cluster corrected energies          -461.35911864 (Pople, rotated reference)



 RESULTS FOR STATE 2.2
 =====================

 Coefficient of reference function:   C(0) = 0.97185262 (fixed)   0.97218698 (relaxed)   0.97185262 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00089931   -0.00344044   -0.31924871
 Singles      0.01730344   -0.07665438   -0.07916438
 Pairs        0.04056130    0.00000000   -0.01587777
 Total        1.05876404   -0.08009482   -0.41429086
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -460.92305226
 Nuclear energy                         0.00000000
 Kinetic energy                       469.84991711
 One electron energy                 -636.44617961
 Two electron energy                  175.10883649
 Virial quotient                       -0.98188236
 Correlation energy                    -0.41429086
 !MRCI STATE 2.2 Energy              -461.337343118750

 Properties without orbital relaxation:

 !MRCI STATE 2.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -461.36168852 (Davidson, fixed reference)
 Cluster corrected energies          -461.36138686 (Davidson, relaxed reference)
 Cluster corrected energies          -461.36168852 (Davidson, rotated reference)

 Cluster corrected energies          -461.35911486 (Pople, fixed reference)
 Cluster corrected energies          -461.35883367 (Pople, relaxed reference)
 Cluster corrected energies          -461.35911486 (Pople, rotated reference)



 RESULTS FOR STATE 3.2
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.97185264 (fixed)   0.97218701 (relaxed)   0.97185264 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00089931   -0.00344044   -0.31924875
 Singles      0.01730340   -0.07665436   -0.07916438
 Pairs        0.04056127   -0.00000000   -0.01587774
 Total        1.05876398   -0.08009480   -0.41429086
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -460.92305226
 Nuclear energy                         0.00000000
 Kinetic energy                       469.84991736
 One electron energy                 -636.44618028
 Two electron energy                  175.10883716
 Virial quotient                       -0.98188235
 Correlation energy                    -0.41429086
 !MRCI STATE 3.2 Energy              -461.337343118695

 Properties without orbital relaxation:

 !MRCI STATE 3.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -461.36168850 (Davidson, fixed reference)
 Cluster corrected energies          -461.36138683 (Davidson, relaxed reference)
 Cluster corrected energies          -461.36168850 (Davidson, rotated reference)

 Cluster corrected energies          -461.35911484 (Pople, fixed reference)
 Cluster corrected energies          -461.35883365 (Pople, relaxed reference)
 Cluster corrected energies          -461.35911484 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       31.88       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       6       91.79       700     1000      520     2100     2140     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *       246.57    242.29      3.46      0.10      0.48
 REAL TIME  *       259.20 SEC
 DISK USED  *       123.75 MB (local),        1.50 GB (total)
 SF USED    *      1009.80 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =      -461.36169257  AU                              
 SETTING HLSDIAG(2)     =      -461.36168852  AU                              
 SETTING HLSDIAG(3)     =      -461.36168850  AU                              


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 8  Roots:    1   2   3   4   5   6   7   8
 Number of reference states: 8  Roots:    1   2   3   4   5   6   7   8

 Reference symmetry:                   2   Quartet 
 Number of electrons:                 17
 Maximum number of shells:             6
 Maximum number of spin couplings:   572

 Reference space:      344 conf      656 CSFs
 N elec internal:    13744 conf    50364 CSFs
 N-1 el internal:    13962 conf    97722 CSFs
 N-2 el internal:     6604 conf    88800 CSFs

 Number of electrons in valence space:                     15
 Maximum number of open shell orbitals in reference space:  7
 Maximum number of open shell orbitals in internal spaces: 13


 Number of core orbitals:           1 (   1   0 )
 Number of closed-shell orbitals:   4 (   1   3 )
 Number of active  orbitals:        8 (   2   6 )
 Number of external orbitals:      62 (  29  33 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Coulomb and exchange operators available. No transformation done.


 Number of p-space configurations:   9

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -460.27265811
     2      -460.27265810
     3      -460.27265810
     4      -460.22109146
     5      -460.22109146
     6      -460.22109145
     7      -460.22109145
     8      -460.22109144

 Number of blocks in overlap matrix:   172   Smallest eigenvalue:  0.59D-06
 Number of N-2 electron functions:    1104
 Number of N-1 electron functions:   97722

 Number of internal configurations:                25102
 Number of singly external configurations:       3030270
 Number of doubly external configurations:       1063392
 Total number of contracted configurations:      4118764
 Total number of uncontracted configurations:   87762772

 Diagonal Coupling coefficients finished.               Storage:  22387122 words, CPU-Time:     19.62 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   6481714 words, CPU-time:      0.03 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -460.27265811    -0.00000000    -0.50877816  0.82D-01  0.25D-01    24.08
    1     2     2     1.00000000     0.00000000  -460.27265810     0.00000000    -0.50901805  0.82D-01  0.25D-01    24.08
    1     3     3     1.00000000     0.00000000  -460.27265810    -0.00000000    -0.50904964  0.82D-01  0.25D-01    24.08
    1     4     4     1.00000000     0.00000000  -460.22109146    -0.00000000    -0.53727891  0.97D-01  0.26D-01    24.08
    1     5     5     1.00000000     0.00000000  -460.22109146     0.00000000    -0.53793524  0.98D-01  0.26D-01    24.08
    1     6     6     1.00000000     0.00000000  -460.22109145    -0.00000000    -0.53822936  0.98D-01  0.26D-01    24.08
    1     7     7     1.00000000     0.00000000  -460.22109145     0.00000000    -0.53814825  0.98D-01  0.26D-01    24.08
    1     8     8     1.00000000     0.00000000  -460.22109144     0.00000000    -0.54855220  0.11D+00  0.26D-01    24.08
    2     1     1     1.10495274    -0.50768950  -460.78034761    -0.50768950    -0.03582660  0.24D-01  0.22D-02   115.68
    2     2     2     1.10490878    -0.50768604  -460.78034414    -0.50768604    -0.03579152  0.24D-01  0.22D-02   115.68
    2     3     3     1.10496246    -0.50767799  -460.78033609    -0.50767799    -0.03584656  0.24D-01  0.22D-02   115.68
    2     4     4     1.12645482    -0.52590206  -460.74699352    -0.52590206    -0.04497601  0.26D-01  0.30D-02   115.68
    2     5     5     1.11459553    -0.52288288  -460.74397433    -0.52288288    -0.04590668  0.27D-01  0.28D-02   115.68
    2     6     6     1.11491602    -0.52225893  -460.74335037    -0.52225893    -0.04655349  0.28D-01  0.28D-02   115.68
    2     7     7     1.11495937    -0.52215419  -460.74324564    -0.52215419    -0.04663438  0.28D-01  0.28D-02   115.68
    2     8     8     1.11502425    -0.52212730  -460.74321874    -0.52212730    -0.04669208  0.28D-01  0.28D-02   115.68
    3     1     1     1.22524443    -0.55604110  -460.82869921    -0.04835160    -0.00694073  0.25D-02  0.55D-03   206.13
    3     2     2     1.22497387    -0.55602757  -460.82868567    -0.04834153    -0.00695172  0.25D-02  0.55D-03   206.13
    3     3     3     1.22482764    -0.55600690  -460.82866500    -0.04832891    -0.00696846  0.25D-02  0.55D-03   206.13
    3     4     4     1.22678966    -0.58339894  -460.80449040    -0.05749688    -0.01047623  0.55D-02  0.65D-03   206.13
    3     5     5     1.22516104    -0.58312787  -460.80421933    -0.06024500    -0.01068609  0.58D-02  0.65D-03   206.13
    3     6     6     1.22508554    -0.58310844  -460.80419989    -0.06084951    -0.01070247  0.58D-02  0.65D-03   206.13
    3     7     7     1.23689192    -0.58309094  -460.80418238    -0.06093674    -0.01019634  0.62D-02  0.62D-03   206.13
    3     8     8     1.22482365    -0.58307783  -460.80416928    -0.06095054    -0.01072792  0.58D-02  0.65D-03   206.13
    4     1     1     1.30411716    -0.56468439  -460.83734250    -0.00864328    -0.00089855  0.19D-03  0.82D-04   298.08
    4     2     2     1.30414193    -0.56468370  -460.83734180    -0.00865613    -0.00089919  0.19D-03  0.81D-04   298.08
    4     3     3     1.30405787    -0.56467814  -460.83733624    -0.00867124    -0.00090458  0.20D-03  0.82D-04   298.08
    4     4     4     1.35033593    -0.59691740  -460.81800886    -0.01351846    -0.00129017  0.21D-03  0.15D-03   298.08
    4     5     5     1.35051535    -0.59689681  -460.81798827    -0.01376894    -0.00131623  0.21D-03  0.15D-03   298.08
    4     6     6     1.35043476    -0.59688921  -460.81798065    -0.01378077    -0.00132404  0.21D-03  0.15D-03   298.08
    4     7     7     1.35036953    -0.59688607  -460.81797751    -0.01379513    -0.00132715  0.21D-03  0.15D-03   298.08
    4     8     8     1.35242964    -0.59647384  -460.81756529    -0.01339601    -0.00143876  0.26D-03  0.17D-03   298.08
    5     1     1     1.31380917    -0.56564991  -460.83830802    -0.00096553    -0.00012127  0.20D-04  0.12D-04   390.37
    5     2     2     1.31383127    -0.56564941  -460.83830751    -0.00096571    -0.00012145  0.20D-04  0.12D-04   390.37
    5     3     3     1.31376816    -0.56564889  -460.83830699    -0.00097075    -0.00012212  0.20D-04  0.12D-04   390.37
    5     4     4     1.36197759    -0.59841356  -460.81950501    -0.00149615    -0.00016456  0.26D-04  0.17D-04   390.37
    5     5     5     1.36190305    -0.59841094  -460.81950239    -0.00151413    -0.00016726  0.27D-04  0.17D-04   390.37
    5     6     6     1.36185343    -0.59840781  -460.81949926    -0.00151861    -0.00017015  0.28D-04  0.17D-04   390.37
    5     7     7     1.36188957    -0.59840762  -460.81949907    -0.00152155    -0.00017013  0.28D-04  0.17D-04   390.37
    5     8     8     1.36547802    -0.59819973  -460.81929117    -0.00172589    -0.00025897  0.10D-03  0.21D-04   390.37
    6     1     1     1.31498649    -0.56578441  -460.83844252    -0.00013450    -0.00002042  0.26D-05  0.26D-05   482.22
    6     2     2     1.31499421    -0.56578426  -460.83844237    -0.00013486    -0.00002045  0.26D-05  0.26D-05   482.22
    6     3     3     1.31497366    -0.56578422  -460.83844232    -0.00013533    -0.00002054  0.26D-05  0.26D-05   482.22
    6     4     4     1.36445683    -0.59859398  -460.81968544    -0.00018043    -0.00003072  0.48D-05  0.35D-05   482.22
    6     5     5     1.36445178    -0.59859382  -460.81968527    -0.00018288    -0.00003000  0.46D-05  0.34D-05   482.22
    6     6     6     1.36442261    -0.59859328  -460.81968473    -0.00018547    -0.00003115  0.49D-05  0.36D-05   482.22
    6     7     7     1.36442256    -0.59859318  -460.81968463    -0.00018556    -0.00003116  0.48D-05  0.36D-05   482.22
    6     8     8     1.36632490    -0.59850652  -460.81959796    -0.00030678    -0.00007079  0.23D-04  0.54D-05   482.22
    7     1     1     1.31706341    -0.56581225  -460.83847036    -0.00002783    -0.00000497  0.73D-06  0.57D-06   574.33
    7     2     2     1.31705324    -0.56581220  -460.83847030    -0.00002793    -0.00000501  0.74D-06  0.58D-06   574.33
    7     3     3     1.31706538    -0.56581219  -460.83847029    -0.00002797    -0.00000500  0.74D-06  0.57D-06   574.33
    7     4     4     1.36713994    -0.59863221  -460.81972366    -0.00003822    -0.00000685  0.84D-06  0.78D-06   574.33
    7     5     5     1.36711663    -0.59863204  -460.81972350    -0.00003823    -0.00000696  0.85D-06  0.79D-06   574.33
    7     6     6     1.36712344    -0.59863204  -460.81972348    -0.00003875    -0.00000697  0.85D-06  0.79D-06   574.33
    7     7     7     1.36716639    -0.59863149  -460.81972293    -0.00003830    -0.00000672  0.81D-06  0.76D-06   574.33
    7     8     8     1.36814187    -0.59860179  -460.81969323    -0.00009528    -0.00002285  0.56D-05  0.17D-05   574.33
    8     1     1     1.31770416    -0.56581788  -460.83847599    -0.00000563    -0.00000134  0.30D-06  0.13D-06   666.14
    8     2     2     1.31770260    -0.56581787  -460.83847597    -0.00000567    -0.00000135  0.30D-06  0.13D-06   666.14
    8     3     3     1.31770814    -0.56581786  -460.83847596    -0.00000567    -0.00000136  0.30D-06  0.13D-06   666.14
    8     4     4     1.36776011    -0.59864040  -460.81973185    -0.00000819    -0.00000159  0.24D-06  0.16D-06   666.14
    8     5     5     1.36775692    -0.59864035  -460.81973180    -0.00000830    -0.00000163  0.26D-06  0.17D-06   666.14
    8     6     6     1.36775933    -0.59864035  -460.81973180    -0.00000831    -0.00000164  0.26D-06  0.17D-06   666.14
    8     7     7     1.36777550    -0.59863956  -460.81973101    -0.00000807    -0.00000156  0.24D-06  0.16D-06   666.14
    8     8     8     1.36818133    -0.59862937  -460.81972081    -0.00002758    -0.00000717  0.32D-05  0.39D-06   666.14
    9     1     1     1.31769577    -0.56581930  -460.83847741    -0.00000142    -0.00000039  0.67D-07  0.44D-07   757.03
    9     2     2     1.31769603    -0.56581930  -460.83847740    -0.00000143    -0.00000039  0.67D-07  0.45D-07   757.03
    9     3     3     1.31769643    -0.56581930  -460.83847740    -0.00000144    -0.00000039  0.67D-07  0.45D-07   757.03
    9     4     4     1.36794095    -0.59864219  -460.81973364    -0.00000179    -0.00000050  0.95D-07  0.49D-07   757.03
    9     5     5     1.36793569    -0.59864217  -460.81973362    -0.00000182    -0.00000051  0.98D-07  0.50D-07   757.03
    9     6     6     1.36793707    -0.59864218  -460.81973362    -0.00000182    -0.00000051  0.98D-07  0.50D-07   757.03
    9     7     7     1.36793921    -0.59864132  -460.81973277    -0.00000176    -0.00000049  0.94D-07  0.48D-07   757.03
    9     8     8     1.36803800    -0.59863729  -460.81972874    -0.00000792    -0.00000261  0.88D-06  0.15D-06   757.03
   10     1     1     1.31783183    -0.56581979  -460.83847790    -0.00000049    -0.00000012  0.16D-07  0.15D-07   848.90
   10     2     2     1.31783178    -0.56581980  -460.83847790    -0.00000050    -0.00000013  0.16D-07  0.15D-07   848.90
   10     3     3     1.31783051    -0.56581980  -460.83847790    -0.00000050    -0.00000012  0.16D-07  0.15D-07   848.90
   10     4     4     1.36813382    -0.59864276  -460.81973421    -0.00000057    -0.00000016  0.24D-07  0.17D-07   848.90
   10     5     5     1.36813053    -0.59864275  -460.81973421    -0.00000059    -0.00000016  0.24D-07  0.17D-07   848.90
   10     6     6     1.36813019    -0.59864276  -460.81973421    -0.00000058    -0.00000016  0.24D-07  0.17D-07   848.90
   10     7     7     1.36813616    -0.59864189  -460.81973333    -0.00000056    -0.00000015  0.23D-07  0.16D-07   848.90
   10     8     8     1.36819270    -0.59864043  -460.81973187    -0.00000313    -0.00000094  0.29D-06  0.63D-07   848.90
   11     1     1     1.31787839    -0.56581994  -460.83847805    -0.00000014    -0.00000004  0.11D-07  0.37D-08   940.43
   11     2     2     1.31787795    -0.56581994  -460.83847804    -0.00000014    -0.00000004  0.10D-07  0.37D-08   940.43
   11     3     3     1.31787803    -0.56581994  -460.83847804    -0.00000014    -0.00000004  0.11D-07  0.37D-08   940.43
   11     4     4     1.36815773    -0.59864294  -460.81973440    -0.00000019    -0.00000005  0.80D-08  0.51D-08   940.43
   11     5     5     1.36815707    -0.59864294  -460.81973440    -0.00000019    -0.00000005  0.74D-08  0.50D-08   940.43
   11     6     6     1.36815781    -0.59864295  -460.81973440    -0.00000019    -0.00000005  0.80D-08  0.51D-08   940.43
   11     7     7     1.36815780    -0.59864207  -460.81973351    -0.00000018    -0.00000005  0.72D-08  0.48D-08   940.43
   11     8     8     1.36819707    -0.59864155  -460.81973300    -0.00000113    -0.00000033  0.14D-06  0.17D-07   940.43
   12     1     1     1.31785738    -0.56581998  -460.83847809    -0.00000004    -0.00000001  0.26D-08  0.15D-08  1031.49
   12     2     2     1.31785763    -0.56581998  -460.83847809    -0.00000004    -0.00000001  0.26D-08  0.14D-08  1031.49
   12     3     3     1.31785772    -0.56581998  -460.83847809    -0.00000004    -0.00000001  0.26D-08  0.14D-08  1031.49
   12     4     4     1.36814967    -0.59864300  -460.81973446    -0.00000006    -0.00000002  0.40D-08  0.18D-08  1031.49
   12     5     5     1.36815055    -0.59864300  -460.81973445    -0.00000005    -0.00000002  0.38D-08  0.17D-08  1031.49
   12     6     6     1.36815012    -0.59864301  -460.81973445    -0.00000006    -0.00000002  0.40D-08  0.18D-08  1031.49
   12     7     7     1.36815054    -0.59864212  -460.81973357    -0.00000005    -0.00000002  0.37D-08  0.16D-08  1031.49
   12     8     8     1.36814780    -0.59864191  -460.81973336    -0.00000036    -0.00000013  0.45D-07  0.68D-08  1031.49
   13     1     1     1.31785738    -0.56581998  -460.83847809    -0.00000000    -0.00000001  0.26D-08  0.15D-08  1090.23
   13     2     2     1.31785763    -0.56581998  -460.83847809    -0.00000000    -0.00000001  0.26D-08  0.14D-08  1090.23
   13     3     3     1.31785772    -0.56581998  -460.83847809    -0.00000000    -0.00000001  0.26D-08  0.14D-08  1090.23
   13     4     4     1.36814967    -0.59864300  -460.81973446    -0.00000000    -0.00000002  0.40D-08  0.18D-08  1090.23
   13     5     5     1.36815055    -0.59864300  -460.81973445     0.00000000    -0.00000002  0.38D-08  0.17D-08  1090.23
   13     6     6     1.36815012    -0.59864301  -460.81973445    -0.00000000    -0.00000002  0.40D-08  0.18D-08  1090.23
   13     7     7     1.36817372    -0.59864214  -460.81973358    -0.00000001    -0.00000001  0.22D-08  0.73D-09  1090.23
   13     8     8     1.36815053    -0.59864212  -460.81973357    -0.00000021    -0.00000002  0.37D-08  0.16D-08  1090.23


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   1.5%
 S   1.2%   9.1%
 P   0.8%  62.3%  18.4%

 Initialization:   1.9%
 Other:            4.9%

 Total CPU:     1090.2 seconds
 =====================================



 Wavefunction saved on  5203.2

 Reference coefficients greater than 0.0500000
 =============================================
 220222//200/          -0.0000000  -0.0000000  -0.0000000  -0.0000053  -0.0000000  -0.0000035   0.6905654   0.0074651
 2202222//0/0           0.6065311  -0.0007717   0.0049717  -0.5980969   0.0025175   0.0003530  -0.0000046  -0.0000055
 220222/2//00           0.6065311  -0.0007717   0.0049717   0.5980969  -0.0025175  -0.0003530   0.0000046   0.0000055
 220222//2/00           0.0008922   0.6063726  -0.0147247   0.0003687   0.0037111   0.5980904   0.0000029   0.0000097
 2202222//00/          -0.0008922  -0.6063725   0.0147247   0.0003687   0.0037111   0.5980907   0.0000029   0.0000097
 220222//20/0          -0.0049514   0.0147315   0.6063528   0.0025153   0.5980851  -0.0037127   0.0000000  -0.0000000
 220222/2/00/          -0.0049514   0.0147315   0.6063527  -0.0025153  -0.5980854   0.0037127  -0.0000000   0.0000000
 220222/2/0/0          -0.0000000   0.0000000  -0.0000000  -0.0000081  -0.0000000  -0.0000114   0.3388432   0.6017997
 2202222///00           0.0000000   0.0000000  -0.0000000  -0.0000028  -0.0000000  -0.0000079  -0.3517729   0.5943347
 2//22222/000          -0.0894373   0.0001138  -0.0007331   0.0000000  -0.0000000   0.0000000   0.0000000   0.0000000
 2//2222/2000          -0.0001316  -0.0894135   0.0021713   0.0000000   0.0000000   0.0000006  -0.0000000   0.0000000
 2//222/22000          -0.0007301   0.0021723   0.0894108  -0.0000000  -0.0000005   0.0000000  -0.0000000  -0.0000000
 220222/\///0           0.0000000   0.0000000  -0.0000000   0.0637001  -0.0002681  -0.0000376   0.0000005   0.0000006
 220222//\/0/          -0.0000277  -0.0188436   0.0004576  -0.0000340  -0.0003423  -0.0551654  -0.0000003  -0.0000009
 220222//\0//           0.0001539  -0.0004578  -0.0188430  -0.0002320  -0.0551649   0.0003424  -0.0000000   0.0000000
 220222/020//           0.0000000  -0.0000000   0.0000000   0.0000004   0.0000000   0.0000002  -0.0546389   0.0038848
 2202220/2/0/          -0.0000000  -0.0000000   0.0000000  -0.0000005  -0.0000000  -0.0000003   0.0545421   0.0050650
 220222/20/0/           0.0504445  -0.0000642   0.0004135   0.0495168  -0.0002084  -0.0000292   0.0000004   0.0000005
 2202222/00//           0.0504445  -0.0000642   0.0004135  -0.0495167   0.0002084   0.0000292  -0.0000004  -0.0000005
 220222/02//0           0.0000742   0.0504314  -0.0012246   0.0000305   0.0003072   0.0495163   0.0000002   0.0000008
 22022220/0//          -0.0000742  -0.0504313   0.0012246   0.0000305   0.0003072   0.0495163   0.0000002   0.0000008
 2202220/2//0          -0.0004118   0.0012252   0.0504297   0.0002082   0.0495159  -0.0003074   0.0000000  -0.0000000
 22022202//0/          -0.0004118   0.0012252   0.0504297  -0.0002082  -0.0495159   0.0003074  -0.0000000   0.0000000

 Coefficients of singly external configurations greater than 0.0500000
 =====================================================================

 220222//2000  10.2     0.0000000   0.0000000   0.0000000   0.0000027   0.0000000   0.0000017  -0.3445825  -0.0037251
 220222/2/000  11.2     0.0000000  -0.0000000  -0.0000000   0.0000041   0.0000000   0.0000057  -0.1691028  -0.3002942
 2202222//000  11.2    -0.2782045   0.0003540  -0.0022804   0.2984459  -0.0012562  -0.0001762   0.0000023   0.0000027
 220222/2/000  12.2    -0.2782045   0.0003540  -0.0022804  -0.2984458   0.0012562   0.0001762  -0.0000023  -0.0000027
 220222//2000  12.2    -0.0004092  -0.2781320   0.0067540  -0.0001840  -0.0018518  -0.2984430  -0.0000014  -0.0000048
 2202222//000  10.2     0.0004092   0.2781319  -0.0067540  -0.0001840  -0.0018518  -0.2984430  -0.0000014  -0.0000048
 220222//2000  11.2     0.0022711  -0.0067571  -0.2781231  -0.0012551  -0.2984406   0.0018526  -0.0000000   0.0000000
 220222/2/000  10.2     0.0022711  -0.0067571  -0.2781229   0.0012551   0.2984404  -0.0018526   0.0000000  -0.0000000
 2202222//000  12.2    -0.0000000  -0.0000000   0.0000000   0.0000014   0.0000000   0.0000039   0.1755548  -0.2965692
 220222//2000  20.2    -0.0000000  -0.0000000  -0.0000000  -0.0000011  -0.0000000  -0.0000007   0.1373679   0.0014850
 220222/2/000  22.2    -0.0000000   0.0000000  -0.0000000  -0.0000016  -0.0000000  -0.0000023   0.0674078   0.1197132
 2202222//000  22.2     0.1176915  -0.0001497   0.0009647  -0.1189764   0.0005008   0.0000702  -0.0000009  -0.0000011
 220222/2/000  21.2     0.1176915  -0.0001497   0.0009647   0.1189764  -0.0005008  -0.0000702   0.0000009   0.0000011
 2202222//000  20.2    -0.0001731  -0.1176607   0.0028572   0.0000733   0.0007382   0.1189752   0.0000006   0.0000019
 220222//2000  21.2     0.0001731   0.1176607  -0.0028572   0.0000733   0.0007382   0.1189750   0.0000006   0.0000019
 220222/2/000  20.2    -0.0009608   0.0028585   0.1176569  -0.0005004  -0.1189741   0.0007385  -0.0000000   0.0000000
 220222//2000  22.2    -0.0009608   0.0028585   0.1176569   0.0005004   0.1189740  -0.0007385   0.0000000  -0.0000000
 2202222//000  21.2     0.0000000   0.0000000  -0.0000000  -0.0000006  -0.0000000  -0.0000016  -0.0699798   0.1182282

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.868647    0.001278   -0.007091    0.000000   -0.000000    0.000000    0.000000   -0.000000
 2          -0.001105    0.868420    0.021098    0.000000   -0.000000   -0.000000   -0.000000   -0.000000
 3           0.007120   -0.021088    0.868392   -0.000000   -0.000000    0.000000   -0.000000   -0.000000
 4           0.000000   -0.000000    0.000000   -0.000008    0.852881    0.000526    0.003587   -0.000007
 5          -0.000000    0.000000   -0.000000   -0.000000   -0.003590    0.005292    0.852865   -0.000000
 6          -0.000000   -0.000000    0.000000   -0.000014   -0.000503    0.852872   -0.005294   -0.000004
 7           0.000000    0.000000    0.000000   -0.009257    0.000006    0.000004    0.000000    0.852831
 8          -0.000000   -0.000000    0.000000    0.852838    0.000008    0.000014   -0.000000    0.009257

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.868677   -0.000000    0.000000   -0.000000    0.000000   -0.000000    0.000000   -0.000000
 2          -0.000000    0.868677   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000
 3           0.000000   -0.000000    0.868677   -0.000000   -0.000000    0.000000    0.000000    0.000000
 4          -0.000000   -0.000000   -0.000000    0.852889   -0.000000   -0.000000   -0.000000    0.000000
 5           0.000000   -0.000000   -0.000000   -0.000000    0.852889    0.000000    0.000000    0.000000
 6          -0.000000   -0.000000    0.000000   -0.000000    0.000000    0.852889    0.000000    0.000000
 7           0.000000   -0.000000    0.000000   -0.000000    0.000000    0.000000    0.852881   -0.000000
 8          -0.000000   -0.000000    0.000000    0.000000    0.000000    0.000000   -0.000000    0.852889


 RESULTS FOR STATE 1.2
 =====================

 Coefficient of reference function:   C(0) = 0.86864718 (fixed)   0.87101136 (relaxed)   0.86867706 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00557595   -0.00313813   -0.23879938
 Singles      0.28111836   -0.25251667   -0.31057879
 Pairs        0.03851138    0.00000000   -0.01644181
 Total        1.32520569   -0.25565480   -0.56581998
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -460.27265811
 Nuclear energy                         0.00000000
 Kinetic energy                       469.79682639
 One electron energy                 -633.12373100
 Two electron energy                  172.28525291
 Virial quotient                       -0.98093144
 Correlation energy                    -0.56581998
 !MRCI STATE 1.2 Energy              -460.838478088845

 Properties without orbital relaxation:

 !MRCI STATE 1.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -461.02248597 (Davidson, fixed reference)
 Cluster corrected energies          -461.01847230 (Davidson, relaxed reference)
 Cluster corrected energies          -461.02248597 (Davidson, rotated reference)

 Cluster corrected energies          -461.02978894 (Pople, fixed reference)
 Cluster corrected energies          -461.02472038 (Pople, relaxed reference)
 Cluster corrected energies          -461.02978894 (Pople, rotated reference)



 RESULTS FOR STATE 2.2
 =====================

 Coefficient of reference function:   C(0) = 0.86842002 (fixed)   0.87101127 (relaxed)   0.86867696 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00557599   -0.00313813   -0.23879931
 Singles      0.28111855   -0.25251671   -0.31057880
 Pairs        0.03851146    0.00000000   -0.01644187
 Total        1.32520600   -0.25565484   -0.56581998
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -460.27265810
 Nuclear energy                         0.00000000
 Kinetic energy                       469.79682806
 One electron energy                 -633.12373078
 Two electron energy                  172.28525270
 Virial quotient                       -0.98093144
 Correlation energy                    -0.56581998
 !MRCI STATE 2.2 Energy              -460.838478086403

 Properties without orbital relaxation:

 !MRCI STATE 2.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -461.02248614 (Davidson, fixed reference)
 Cluster corrected energies          -461.01847244 (Davidson, relaxed reference)
 Cluster corrected energies          -461.02248614 (Davidson, rotated reference)

 Cluster corrected energies          -461.02978916 (Pople, fixed reference)
 Cluster corrected energies          -461.02472055 (Pople, relaxed reference)
 Cluster corrected energies          -461.02978916 (Pople, rotated reference)



 RESULTS FOR STATE 3.2
 =====================

 Coefficient of reference function:   C(0) = 0.86839175 (fixed)   0.87101124 (relaxed)   0.86867694 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00557597   -0.00313813   -0.23879927
 Singles      0.28111868   -0.25251674   -0.31057881
 Pairs        0.03851141    0.00000000   -0.01644191
 Total        1.32520606   -0.25565487   -0.56581998
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -460.27265810
 Nuclear energy                         0.00000000
 Kinetic energy                       469.79682778
 One electron energy                 -633.12372975
 Two electron energy                  172.28525166
 Virial quotient                       -0.98093144
 Correlation energy                    -0.56581998
 !MRCI STATE 3.2 Energy              -460.838478085995

 Properties without orbital relaxation:

 !MRCI STATE 3.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -461.02248617 (Davidson, fixed reference)
 Cluster corrected energies          -461.01847249 (Davidson, relaxed reference)
 Cluster corrected energies          -461.02248617 (Davidson, rotated reference)

 Cluster corrected energies          -461.02978920 (Pople, fixed reference)
 Cluster corrected energies          -461.02472062 (Pople, relaxed reference)
 Cluster corrected energies          -461.02978920 (Pople, rotated reference)



 RESULTS FOR STATE 4.2
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.85288129 (fixed)   0.85485250 (relaxed)   0.85288900 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00480403   -0.00314271   -0.22923563
 Singles      0.32941890   -0.28638596   -0.35177515
 Pairs        0.04049937    0.00000239   -0.01763223
 Total        1.37472230   -0.28952628   -0.59864300
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -460.22109146
 Nuclear energy                         0.00000000
 Kinetic energy                       469.78840978
 One electron energy                 -633.10543313
 Two electron energy                  172.28569868
 Virial quotient                       -0.98090912
 Correlation energy                    -0.59864300
 !MRCI STATE 4.2 Energy              -460.819734455457

 Properties without orbital relaxation:

 !MRCI STATE 4.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -461.04405934 (Davidson, fixed reference)
 Cluster corrected energies          -461.04028313 (Davidson, relaxed reference)
 Cluster corrected energies          -461.04405934 (Davidson, rotated reference)

 Cluster corrected energies          -461.06083871 (Pople, fixed reference)
 Cluster corrected energies          -461.05578643 (Pople, relaxed reference)
 Cluster corrected energies          -461.06083871 (Pople, rotated reference)



 RESULTS FOR STATE 5.2
 =====================

 Maximum overlap with reference state  7

 Coefficient of reference function:   C(0) = 0.85286474 (fixed)   0.85485223 (relaxed)   0.85288871 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00480406   -0.00314271   -0.22923369
 Singles      0.32941966   -0.28638604   -0.35177530
 Pairs        0.04049950    0.00000001   -0.01763400
 Total        1.37472322   -0.28952874   -0.59864300
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -460.22109145
 Nuclear energy                         0.00000000
 Kinetic energy                       469.78840403
 One electron energy                 -633.10542939
 Two electron energy                  172.28569494
 Virial quotient                       -0.98090913
 Correlation energy                    -0.59864301
 !MRCI STATE 5.2 Energy              -460.819734453073

 Properties without orbital relaxation:

 !MRCI STATE 5.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -461.04405989 (Davidson, fixed reference)
 Cluster corrected energies          -461.04028366 (Davidson, relaxed reference)
 Cluster corrected energies          -461.04405989 (Davidson, rotated reference)

 Cluster corrected energies          -461.06083946 (Pople, fixed reference)
 Cluster corrected energies          -461.05578713 (Pople, relaxed reference)
 Cluster corrected energies          -461.06083946 (Pople, rotated reference)



 RESULTS FOR STATE 6.2
 =====================

 Coefficient of reference function:   C(0) = 0.85287227 (fixed)   0.85485236 (relaxed)   0.85288885 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00480405   -0.00314271   -0.22923491
 Singles      0.32941933   -0.28638601   -0.35177521
 Pairs        0.04049940    0.00000155   -0.01763288
 Total        1.37472278   -0.28952716   -0.59864301
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -460.22109145
 Nuclear energy                         0.00000000
 Kinetic energy                       469.78840853
 One electron energy                 -633.10543144
 Two electron energy                  172.28569699
 Virial quotient                       -0.98090912
 Correlation energy                    -0.59864301
 !MRCI STATE 6.2 Energy              -460.819734452007

 Properties without orbital relaxation:

 !MRCI STATE 6.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -461.04405962 (Davidson, fixed reference)
 Cluster corrected energies          -461.04028340 (Davidson, relaxed reference)
 Cluster corrected energies          -461.04405962 (Davidson, rotated reference)

 Cluster corrected energies          -461.06083909 (Pople, fixed reference)
 Cluster corrected energies          -461.05578679 (Pople, relaxed reference)
 Cluster corrected energies          -461.06083909 (Pople, rotated reference)



 RESULTS FOR STATE 7.2
 =====================

 Maximum overlap with reference state  8

 Coefficient of reference function:   C(0) = 0.85283090 (fixed)   0.85484500 (relaxed)   0.85288113 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00480490   -0.00314252   -0.00439147
 Singles      0.32943644   -0.28638994   -0.35177871
 Pairs        0.04050632   -0.30909144   -0.24247195
 Total        1.37474766   -0.59862390   -0.59864214
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -460.22109144
 Nuclear energy                         0.00000000
 Kinetic energy                       469.78811334
 One electron energy                 -633.10525551
 Two electron energy                  172.28552193
 Virial quotient                       -0.98090973
 Correlation energy                    -0.59864214
 !MRCI STATE 7.2 Energy              -460.819733581202

 Properties without orbital relaxation:

 !MRCI STATE 7.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -461.04407332 (Davidson, fixed reference)
 Cluster corrected energies          -461.04029633 (Davidson, relaxed reference)
 Cluster corrected energies          -461.04407332 (Davidson, rotated reference)

 Cluster corrected energies          -461.06085788 (Pople, fixed reference)
 Cluster corrected energies          -461.05580439 (Pople, relaxed reference)
 Cluster corrected energies          -461.06085788 (Pople, rotated reference)



 RESULTS FOR STATE 8.2
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.85283847 (fixed)   0.85485224 (relaxed)   0.85288870 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00480409   -0.00314254   -0.22679316
 Singles      0.32941952   -0.28638532   -0.35177444
 Pairs        0.04049964   -0.00335491   -0.02007452
 Total        1.37472325   -0.29288277   -0.59864212
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -460.22109146
 Nuclear energy                         0.00000000
 Kinetic energy                       469.78841009
 One electron energy                 -633.10544030
 Two electron energy                  172.28570673
 Virial quotient                       -0.98090911
 Correlation energy                    -0.59864211
 !MRCI STATE 8.2 Energy              -460.819733567777

 Properties without orbital relaxation:

 !MRCI STATE 8.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -461.04405868 (Davidson, fixed reference)
 Cluster corrected energies          -461.04028242 (Davidson, relaxed reference)
 Cluster corrected energies          -461.04405868 (Davidson, rotated reference)

 Cluster corrected energies          -461.06083823 (Pople, fixed reference)
 Cluster corrected energies          -461.05578586 (Pople, relaxed reference)
 Cluster corrected energies          -461.06083823 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       31.88       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7      348.14       700     1000      520     2100     2140     5201     5203   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *      1487.44   1240.87    242.29      3.46      0.10      0.48
 REAL TIME  *      1534.64 SEC
 DISK USED  *       380.09 MB (local),        4.50 GB (total)
 SF USED    *         2.71 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(4)     =      -461.02248597  AU                              
 SETTING HLSDIAG(5)     =      -461.02248614  AU                              
 SETTING HLSDIAG(6)     =      -461.02248617  AU                              
 SETTING HLSDIAG(7)     =      -461.04405934  AU                              
 SETTING HLSDIAG(8)     =      -461.04405989  AU                              
 SETTING HLSDIAG(9)     =      -461.04405962  AU                              
 SETTING HLSDIAG(10)    =      -461.04407332  AU                              
 SETTING HLSDIAG(11)    =      -461.04405868  AU                              


         HLSDIAG
    -461.3616926
    -461.3616885
    -461.3616885
    -461.0224860
    -461.0224861
    -461.0224862
    -461.0440593
    -461.0440599
    -461.0440596
    -461.0440733
    -461.0440587
                                                  

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

 Time for Seward_LS:       0.63 sec

 CPU time:      0.63 sec, REAL time:      0.69 sec


 SORTLS1 read     2508015. and wrote     2508015. SO integrals in    36 records. CPU time:      0.03 sec, REAL time:      0.04 sec
 SORTLS2 read     2508015. and wrote    12192876. SO integrals in    36 records. CPU time:      0.01 sec, REAL time:      0.02 sec

 FILE SIZES: FILE 1:    33.5 MBYTE, FILE 4:     0.0 MBYTE, TOTAL:    33.5 MBYTE


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       31.91       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7      348.14       700     1000      520     2100     2140     5201     5203   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL     LSINT        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *      1489.10      1.62   1240.87    242.29      3.46      0.10      0.48
 REAL TIME  *      1536.43 SEC
 DISK USED  *       380.13 MB (local),        4.69 GB (total)
 SF USED    *         2.71 GB
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
  
 Wavefunction restored from record  5201.2  Symmetry=2  S= 0.5  NSTATE=   3

 Original energies:   -461.337343   -461.337343   -461.337343
 Replaced energies:   -461.361693   -461.361689   -461.361689

 Wavefunction restored from record  5203.2  Symmetry=2  S= 1.5  NSTATE=   8

 Original energies:   -460.838478   -460.838478   -460.838478   -460.819734   -460.819734   -460.819734   -460.819734   -460.819734
 Replaced energies:   -461.022486   -461.022486   -461.022486   -461.044059   -461.044060   -461.044060   -461.044073   -461.044059

 >>> Fock matrix approximation error in all internal so: 
  -4.7798839476990020E-002  (exact)   -4.6604978286179301E-002  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  0.26526891497811272       (exact)   0.26560503771102001       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -32.485819135412591       (exact)   -31.674427865590495       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
 -0.78922751756603182       (exact)  -0.79022754930044925       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  0.78886282013635622       (exact)   0.76915956431015486       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -32.484765397058652       (exact)   -32.525926900129633       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   2.9183985042338634E-004  (exact)    2.9317980694447009E-004  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -2.0196227447774277E-002  (exact)   -1.9703329435501075E-002  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
 -0.13779228123596166       (exact)  -0.13796174938081798       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
 -0.20330352575878666       (exact)  -0.19834181506103185       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -32.764277929226594       (exact)   -32.804574151220955       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -32.764564402162399       (exact)   -31.964931142648815       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  0.20338665006712733       (exact)   0.20363679116931832       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -37.833311734257279       (exact)   -38.007018942654440       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -1.5898666729936031E-004  (exact)   -1.5510662978425482E-004  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
 -0.40894690750762669       (exact)  -0.41082403420351810       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -5.2906863220383306E-004  (exact)   -5.1615653258233710E-004  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  0.26526806961391475       (exact)   0.26561856201203760       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -32.494311883623290       (exact)   -31.682707915064228       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
 -0.78922507561167998       (exact)  -0.79026785925072451       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   4.1343424712857700E-002  (exact)    4.0310797988600322E-002  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -32.484659591507828       (exact)   -32.527580778862465       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
 -0.26635130477824881       (exact)  -0.25969870074853368       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  0.13779177542983412       (exact)   0.13795343220379233       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -32.764918776201540       (exact)   -31.965276828373280       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   4.4488713499276684E-004  (exact)    4.4722266268744945E-004  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   32.764176152685941       (exact)    32.802614893378035       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  0.13791500382702754       (exact)   0.13454912855416165       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
 -0.20338599396720730       (exact)  -0.20362460533497723       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   1.9340713651605609E-002  (exact)    1.8868694604268540E-002  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   6.2218410025803811E-004  (exact)    6.2588843645168947E-004  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -2.4945727398902170E-004  (exact)   -2.4336785826165828E-004  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -18.559586509179219       (exact)   -18.605287636962974       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -3.0134821458062633E-004  (exact)   -2.9399314209631241E-004  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -32.967781148855082       (exact)   -33.183460493269628       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -5.5193103996827704E-002  (exact)   -5.5266029933151876E-002  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   37.521204417826183       (exact)    36.586083795067701       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -37.511276783217497       (exact)   -37.560840111698113       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -4.7739268921176747E-002  (exact)   -4.6549488780434585E-002  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  0.91089758600139081       (exact)   0.91210114676704657       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  0.30755610434037717       (exact)   0.29989105003868050       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   2.3320519632402583E-002  (exact)    2.3347880306335597E-002  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -1.7667911511945594E-004  (exact)   -1.7783431853565101E-004  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -37.833669438063851       (exact)   -36.908168385350415       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  0.23475387230233921       (exact)   0.23502928776527487       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  0.15925052782248836       (exact)   0.15535488265084840       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   37.833144542295436       (exact)    37.877530699385538       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -4.9898966257688000E-004  (exact)   -5.0224853116284998E-004  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   2.2332687960977610E-002  (exact)    2.1786377589802473E-002  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -22.248654067059654       (exact)   -22.393911321187549       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -2.8792027367605989E-004  (exact)   -2.8087802201280974E-004  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   37.595692599531787       (exact)    37.841147471820463       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -3.4797520896697744E-004  (exact)   -3.3946244190855544E-004  (Fock matrix)


   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=  -461.36169257

 Wigner-Eckart theorem used for 23 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.2  0.5  0.5       0.00       0.00       0.00       0.00    -296.59       0.00      -1.08       3.22     132.42      -0.57
                           -0.00       0.00     296.59      -0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00

    2   2.2  0.5  0.5       0.00       0.89       0.00     296.59      -0.00       0.00     132.09      -0.17       1.08     133.56
                           -0.00      -0.00      -0.00      -0.00       0.00    -296.59       0.19     131.76      -3.20       0.08

    3   3.2  0.5  0.5       0.00       0.00       0.89      -0.00      -0.00      -0.00      -0.00       0.00      -0.00      -0.00
                         -296.59       0.00      -0.00       0.00     296.59      -0.00      -1.08       3.22     132.41       0.57

    4   1.2  0.5 -0.5       0.00     296.59      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00       0.00      -0.00    -296.59       0.00       0.00       0.00       0.00

    5   2.2  0.5 -0.5    -296.59      -0.00      -0.00       0.00       0.89       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00    -296.59       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    6   3.2  0.5 -0.5       0.00       0.00      -0.00       0.00       0.00       0.89       0.00       0.00       0.00       0.00
                            0.00     296.59       0.00     296.59      -0.00       0.00       0.00       0.00       0.00       0.00

    7   1.2  1.5  1.5      -1.08     132.09      -0.00       0.00       0.00       0.00   74447.24       0.00       0.00       0.00
                            0.00      -0.19       1.08      -0.00      -0.00      -0.00       0.00     110.49      -2.68      -0.18

    8   2.2  1.5  1.5       3.22      -0.17       0.00       0.00       0.00       0.00       0.00   74447.21       0.00       0.00
                            0.00    -131.76      -3.22      -0.00      -0.00      -0.00    -110.49      -0.00      -0.90    -211.34

    9   3.2  1.5  1.5     132.42       1.08      -0.00       0.00       0.00       0.00       0.00       0.00   74447.20       0.00
                            0.00       3.20    -132.41      -0.00      -0.00      -0.00       2.68       0.90       0.00       5.13

   10   4.2  1.5  1.5      -0.57     133.56      -0.00       0.00       0.00       0.00       0.00       0.00       0.00   69712.44
                            0.00      -0.08      -0.57      -0.00      -0.00      -0.00       0.18     211.34      -5.13       0.00

   11   5.2  1.5  1.5    -134.54      -0.56      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.83    -134.54      -0.00      -0.00      -0.00      -1.31      -0.89       0.01      -0.67

   12   6.2  1.5  1.5       0.84      -0.08      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00    -133.88       0.84      -0.00      -0.00      -0.00    -211.39       0.14      -1.73    -108.38

   13   7.2  1.5  1.5      -0.00       0.00      76.37       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -154.95      -0.00      -0.00      -0.00      -0.00      -0.00       1.01      -3.02    -124.27       0.78

   14   8.2  1.5  1.5       0.00       0.00     134.39       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -1.67      -0.00       0.00      -0.00      -0.00      -0.00      -1.72       5.10     210.00       0.46

   15   1.2  1.5  0.5       0.00       0.00       0.00      -0.62      76.26      -0.00      -0.00      -1.55     -63.77       0.48
                           -0.23       0.00     152.51       0.00      -0.11       0.62       0.00      -0.52      -0.08       0.00

   16   2.2  1.5  0.5       0.00       0.00       0.00       1.86      -0.10       0.00       1.55       0.00       0.09      -2.97
                         -153.23       0.00      -0.19       0.00     -76.07      -1.86       0.52      -0.00     -63.79       0.51

   17   3.2  1.5  0.5       0.00       0.00       0.00      76.45       0.63      -0.00      63.77      -0.09      -0.00    -122.02
                            3.72       0.00       1.25       0.00       1.85     -76.45       0.08      63.79       0.00      -0.09

   18   4.2  1.5  0.5       0.00       0.00       0.00      -0.33      77.11      -0.00      -0.48       2.97     122.02      -0.00
                            0.10      -0.00    -154.20       0.00      -0.05      -0.33      -0.00      -0.51       0.09      -0.00

   19   5.2  1.5  0.5       0.00       0.00       0.00     -77.68      -0.32      -0.00     122.05      -0.17       0.49     -62.54
                            0.96      -0.00       0.65       0.00      -0.48     -77.68      -0.19    -122.00       3.72       0.04

   20   6.2  1.5  0.5       0.00       0.00       0.00       0.48      -0.05      -0.00      -0.76       0.00      -0.08       0.39
                          154.98      -0.00       0.09       0.00     -77.30       0.48      -0.99       3.72     122.00      -0.27

   21   7.2  1.5  0.5       0.00       0.00       0.00      -0.00       0.00      44.09      -0.10     -69.12       1.68       0.07
                            0.00     -90.67      -0.00     -89.46      -0.00      -0.00    -140.93       0.18      -1.15      -1.35

   22   8.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00      77.59      -0.18    -122.77       2.98      -0.04
                            0.00     153.21      -0.00      -0.96      -0.00       0.00      -1.52       0.00      -0.01     125.08

   23   1.2  1.5 -0.5      -0.62      76.26      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.11      -0.62      -0.23       0.00     152.51      -0.00      -0.00      -0.00      -0.00

   24   2.2  1.5 -0.5       1.86      -0.10       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      76.07       1.86    -153.23       0.00      -0.19      -0.00      -0.00      -0.00      -0.00

   25   3.2  1.5 -0.5      76.45       0.63      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -1.85      76.45       3.72       0.00       1.25      -0.00      -0.00      -0.00      -0.00

   26   4.2  1.5 -0.5      -0.33      77.11      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.05       0.33       0.10      -0.00    -154.20      -0.00      -0.00      -0.00      -0.00

   27   5.2  1.5 -0.5     -77.68      -0.32      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.48      77.68       0.96      -0.00       0.65      -0.00      -0.00      -0.00      -0.00

   28   6.2  1.5 -0.5       0.48      -0.05      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      77.30      -0.48     154.98      -0.00       0.09      -0.00      -0.00      -0.00      -0.00

   29   7.2  1.5 -0.5      -0.00       0.00      44.09       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           89.46       0.00       0.00       0.00     -90.67      -0.00      -0.00      -0.00      -0.00      -0.00

   30   8.2  1.5 -0.5       0.00       0.00      77.59       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.96       0.00      -0.00       0.00     153.21      -0.00      -0.00      -0.00      -0.00      -0.00

   31   1.2  1.5 -1.5       0.00       0.00       0.00      -1.08     132.09      -0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00       0.19      -1.08      -0.00      -0.00      -0.00      -0.00

   32   2.2  1.5 -1.5       0.00       0.00       0.00       3.22      -0.17       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00     131.76       3.22      -0.00      -0.00      -0.00      -0.00

   33   3.2  1.5 -1.5       0.00       0.00       0.00     132.42       1.08      -0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -3.20     132.41      -0.00      -0.00      -0.00      -0.00

   34   4.2  1.5 -1.5       0.00       0.00       0.00      -0.57     133.56      -0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00       0.08       0.57      -0.00      -0.00      -0.00      -0.00

   35   5.2  1.5 -1.5       0.00       0.00       0.00    -134.54      -0.56      -0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00       0.83     134.54      -0.00      -0.00      -0.00      -0.00

   36   6.2  1.5 -1.5       0.00       0.00       0.00       0.84      -0.08      -0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00     133.88      -0.84      -0.00      -0.00      -0.00      -0.00

   37   7.2  1.5 -1.5       0.00       0.00       0.00      -0.00       0.00      76.37       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00     154.95       0.00       0.00      -0.00      -0.00      -0.00      -0.00

   38   8.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00     134.39       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       1.67       0.00      -0.00      -0.00      -0.00      -0.00      -0.00


   Nr   State  S   Sz       11         12         13         14         15         16         17         18         19         20

    1   1.2  0.5  0.5    -134.54       0.84      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00     154.95       1.67       0.23     153.23      -3.72      -0.10      -0.96    -154.98

    2   2.2  0.5  0.5      -0.56      -0.08       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.83     133.88       0.00       0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00

    3   3.2  0.5  0.5      -0.00      -0.00      76.37     134.39       0.00       0.00       0.00       0.00       0.00       0.00
                          134.54      -0.84       0.00      -0.00    -152.51       0.19      -1.25     154.20      -0.65      -0.09

    4   1.2  0.5 -0.5       0.00       0.00       0.00       0.00      -0.62       1.86      76.45      -0.33     -77.68       0.48
                            0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

    5   2.2  0.5 -0.5       0.00       0.00       0.00       0.00      76.26      -0.10       0.63      77.11      -0.32      -0.05
                            0.00       0.00       0.00       0.00       0.11      76.07      -1.85       0.05       0.48      77.30

    6   3.2  0.5 -0.5       0.00       0.00       0.00       0.00      -0.00       0.00      -0.00      -0.00      -0.00      -0.00
                            0.00       0.00       0.00       0.00      -0.62       1.86      76.45       0.33      77.68      -0.48

    7   1.2  1.5  1.5       0.00       0.00       0.00       0.00      -0.00       1.55      63.77      -0.48     122.05      -0.76
                            1.31     211.39      -1.01       1.72      -0.00      -0.52      -0.08       0.00       0.19       0.99

    8   2.2  1.5  1.5       0.00       0.00       0.00       0.00      -1.55       0.00      -0.09       2.97      -0.17       0.00
                            0.89      -0.14       3.02      -5.10       0.52       0.00     -63.79       0.51     122.00      -3.72

    9   3.2  1.5  1.5       0.00       0.00       0.00       0.00     -63.77       0.09      -0.00     122.02       0.49      -0.08
                           -0.01       1.73     124.27    -210.00       0.08      63.79      -0.00      -0.09      -3.72    -122.00

   10   4.2  1.5  1.5       0.00       0.00       0.00       0.00       0.48      -2.97    -122.02      -0.00     -62.54       0.39
                            0.67     108.38      -0.78      -0.46      -0.00      -0.51       0.09       0.00      -0.04       0.27

   11   5.2  1.5  1.5   69712.32       0.00       0.00       0.00    -122.05       0.17      -0.49      62.54       0.00      -0.04
                            0.00      -0.45    -186.53    -110.40      -0.19    -122.00       3.72       0.04      -0.00      62.54

   12   6.2  1.5  1.5       0.00   69712.37       0.00       0.00       0.76      -0.00       0.08      -0.39       0.04       0.00
                            0.45       0.00       1.16       0.68      -0.99       3.72     122.00      -0.27     -62.54       0.00

   13   7.2  1.5  1.5       0.00       0.00   69709.37       0.00       0.10      69.12      -1.68      -0.07      -0.68    -109.00
                          186.53      -1.16       0.00      -0.00    -140.93       0.18      -1.15      -1.35       0.01       0.00

   14   8.2  1.5  1.5       0.00       0.00       0.00   69712.58       0.18     122.77      -2.98       0.04       0.38      61.37
                          110.40      -0.68       0.00      -0.00      -1.52       0.00      -0.01     125.08      -0.53      -0.07

   15   1.2  1.5  0.5    -122.05       0.76       0.10       0.18   74447.24       0.00       0.00       0.00       0.00       0.00
                            0.19       0.99     140.93       1.52       0.00      36.83      -0.89      -0.06       0.44      70.46

   16   2.2  1.5  0.5       0.17      -0.00      69.12     122.77       0.00   74447.21       0.00       0.00       0.00       0.00
                          122.00      -3.72      -0.18      -0.00     -36.83      -0.00      -0.30     -70.45       0.30      -0.05

   17   3.2  1.5  0.5      -0.49       0.08      -1.68      -2.98       0.00       0.00   74447.20       0.00       0.00       0.00
                           -3.72    -122.00       1.15       0.01       0.89       0.30       0.00       1.71      -0.00       0.58

   18   4.2  1.5  0.5      62.54      -0.39      -0.07       0.04       0.00       0.00       0.00   69712.44       0.00       0.00
                           -0.04       0.27       1.35    -125.08       0.06      70.45      -1.71       0.00       0.22      36.13

   19   5.2  1.5  0.5       0.00       0.04      -0.68       0.38       0.00       0.00       0.00       0.00   69712.32       0.00
                            0.00      62.54      -0.01       0.53      -0.44      -0.30       0.00      -0.22       0.00      -0.15

   20   6.2  1.5  0.5      -0.04       0.00    -109.00      61.37       0.00       0.00       0.00       0.00       0.00   69712.37
                          -62.54      -0.00      -0.00       0.07     -70.46       0.05      -0.58     -36.13       0.15       0.00

   21   7.2  1.5  0.5       0.68     109.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.01       0.00       0.00      -0.00       0.34      -1.01     -41.42       0.26      62.18      -0.39

   22   8.2  1.5  0.5      -0.38     -61.37      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.53      -0.07       0.00      -0.00      -0.57       1.70      70.00       0.15      36.80      -0.23

   23   1.2  1.5 -0.5       0.00       0.00       0.00       0.00      -0.00      -1.79     -73.63       0.56    -140.93       0.87
                           -0.00      -0.00      -0.00      -0.00       0.00      -0.60      -0.09       0.00       0.21       1.15

   24   2.2  1.5 -0.5       0.00       0.00       0.00       0.00       1.79       0.00       0.11      -3.42       0.19      -0.00
                           -0.00      -0.00      -0.00      -0.00       0.60      -0.00     -73.65       0.59     140.87      -4.30

   25   3.2  1.5 -0.5       0.00       0.00       0.00       0.00      73.63      -0.11      -0.00    -140.90      -0.56       0.09
                           -0.00      -0.00      -0.00      -0.00       0.09      73.65       0.00      -0.10      -4.30    -140.87

   26   4.2  1.5 -0.5       0.00       0.00       0.00       0.00      -0.56       3.42     140.90      -0.00      72.22      -0.45
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.59       0.10      -0.00      -0.04       0.31

   27   5.2  1.5 -0.5       0.00       0.00       0.00       0.00     140.93      -0.19       0.56     -72.22       0.00       0.04
                           -0.00      -0.00      -0.00      -0.00      -0.21    -140.87       4.30       0.04       0.00      72.22

   28   6.2  1.5 -0.5       0.00       0.00       0.00       0.00      -0.87       0.00      -0.09       0.45      -0.04       0.00
                           -0.00      -0.00      -0.00      -0.00      -1.15       4.30     140.87      -0.31     -72.22      -0.00

   29   7.2  1.5 -0.5       0.00       0.00       0.00       0.00      -0.12     -79.81       1.94       0.08       0.78     125.86
                           -0.00      -0.00      -0.00      -0.00    -162.73       0.21      -1.33      -1.56       0.01       0.00

   30   8.2  1.5 -0.5       0.00       0.00       0.00       0.00      -0.21    -141.77       3.44      -0.04      -0.44     -70.86
                           -0.00      -0.00      -0.00      -0.00      -1.76       0.00      -0.01     144.43      -0.61      -0.09

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

    1   1.2  0.5  0.5       0.00       0.00      -0.62       1.86      76.45      -0.33     -77.68       0.48      -0.00       0.00
                           -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00     -89.46      -0.96

    2   2.2  0.5  0.5       0.00       0.00      76.26      -0.10       0.63      77.11      -0.32      -0.05       0.00       0.00
                           90.67    -153.21      -0.11     -76.07       1.85      -0.05      -0.48     -77.30      -0.00      -0.00

    3   3.2  0.5  0.5       0.00       0.00      -0.00       0.00      -0.00      -0.00      -0.00      -0.00      44.09      77.59
                            0.00       0.00       0.62      -1.86     -76.45      -0.33     -77.68       0.48      -0.00       0.00

    4   1.2  0.5 -0.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           89.46       0.96       0.23     153.23      -3.72      -0.10      -0.96    -154.98      -0.00      -0.00

    5   2.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00      90.67    -153.21

    6   3.2  0.5 -0.5      44.09      77.59       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00    -152.51       0.19      -1.25     154.20      -0.65      -0.09       0.00       0.00

    7   1.2  1.5  1.5      -0.10      -0.18       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          140.93       1.52       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    8   2.2  1.5  1.5     -69.12    -122.77       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.18      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    9   3.2  1.5  1.5       1.68       2.98       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            1.15       0.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   10   4.2  1.5  1.5       0.07      -0.04       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            1.35    -125.08       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   11   5.2  1.5  1.5       0.68      -0.38       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.01       0.53       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   12   6.2  1.5  1.5     109.00     -61.37       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.07       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   13   7.2  1.5  1.5       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   14   8.2  1.5  1.5       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   15   1.2  1.5  0.5       0.00       0.00      -0.00       1.79      73.63      -0.56     140.93      -0.87      -0.12      -0.21
                           -0.34       0.57      -0.00      -0.60      -0.09       0.00       0.21       1.15     162.73       1.76

   16   2.2  1.5  0.5       0.00       0.00      -1.79       0.00      -0.11       3.42      -0.19       0.00     -79.81    -141.77
                            1.01      -1.70       0.60       0.00     -73.65       0.59     140.87      -4.30      -0.21      -0.00

   17   3.2  1.5  0.5       0.00       0.00     -73.63       0.11      -0.00     140.90       0.56      -0.09       1.94       3.44
                           41.42     -70.00       0.09      73.65      -0.00      -0.10      -4.30    -140.87       1.33       0.01

   18   4.2  1.5  0.5       0.00       0.00       0.56      -3.42    -140.90      -0.00     -72.22       0.45       0.08      -0.04
                           -0.26      -0.15      -0.00      -0.59       0.10       0.00      -0.04       0.31       1.56    -144.43

   19   5.2  1.5  0.5       0.00       0.00    -140.93       0.19      -0.56      72.22       0.00      -0.04       0.78      -0.44
                          -62.18     -36.80      -0.21    -140.87       4.30       0.04      -0.00      72.22      -0.01       0.61

   20   6.2  1.5  0.5       0.00       0.00       0.87      -0.00       0.09      -0.45       0.04       0.00     125.86     -70.86
                            0.39       0.23      -1.15       4.30     140.87      -0.31     -72.22       0.00      -0.00       0.09

   21   7.2  1.5  0.5   69709.37       0.00       0.12      79.81      -1.94      -0.08      -0.78    -125.86       0.00      -0.00
                            0.00      -0.00    -162.73       0.21      -1.33      -1.56       0.01       0.00      -0.00      -0.00

   22   8.2  1.5  0.5       0.00   69712.58       0.21     141.77      -3.44       0.04       0.44      70.86       0.00      -0.00
                            0.00      -0.00      -1.76       0.00      -0.01     144.43      -0.61      -0.09       0.00       0.00

   23   1.2  1.5 -0.5       0.12       0.21   74447.24       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          162.73       1.76      -0.00     -36.83       0.89       0.06      -0.44     -70.46       0.34      -0.57

   24   2.2  1.5 -0.5      79.81     141.77       0.00   74447.21       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.21      -0.00      36.83       0.00       0.30      70.45      -0.30       0.05      -1.01       1.70

   25   3.2  1.5 -0.5      -1.94      -3.44       0.00       0.00   74447.20       0.00       0.00       0.00       0.00       0.00
                            1.33       0.01      -0.89      -0.30      -0.00      -1.71       0.00      -0.58     -41.42      70.00

   26   4.2  1.5 -0.5      -0.08       0.04       0.00       0.00       0.00   69712.44       0.00       0.00       0.00       0.00
                            1.56    -144.43      -0.06     -70.45       1.71      -0.00      -0.22     -36.13       0.26       0.15

   27   5.2  1.5 -0.5      -0.78       0.44       0.00       0.00       0.00       0.00   69712.32       0.00       0.00       0.00
                           -0.01       0.61       0.44       0.30      -0.00       0.22      -0.00       0.15      62.18      36.80

   28   6.2  1.5 -0.5    -125.86      70.86       0.00       0.00       0.00       0.00       0.00   69712.37       0.00       0.00
                           -0.00       0.09      70.46      -0.05       0.58      36.13      -0.15      -0.00      -0.39      -0.23

   29   7.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   69709.37       0.00
                            0.00      -0.00      -0.34       1.01      41.42      -0.26     -62.18       0.39      -0.00       0.00

   30   8.2  1.5 -0.5      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   69712.58
                            0.00      -0.00       0.57      -1.70     -70.00      -0.15     -36.80       0.23      -0.00       0.00

   31   1.2  1.5 -1.5       0.00       0.00      -0.00      -1.55     -63.77       0.48    -122.05       0.76       0.10       0.18
                           -0.00      -0.00       0.00      -0.52      -0.08       0.00       0.19       0.99     140.93       1.52

   32   2.2  1.5 -1.5       0.00       0.00       1.55       0.00       0.09      -2.97       0.17      -0.00      69.12     122.77
                           -0.00      -0.00       0.52      -0.00     -63.79       0.51     122.00      -3.72      -0.18      -0.00

   33   3.2  1.5 -1.5       0.00       0.00      63.77      -0.09      -0.00    -122.02      -0.49       0.08      -1.68      -2.98
                           -0.00      -0.00       0.08      63.79       0.00      -0.09      -3.72    -122.00       1.15       0.01

   34   4.2  1.5 -1.5       0.00       0.00      -0.48       2.97     122.02      -0.00      62.54      -0.39      -0.07       0.04
                           -0.00      -0.00      -0.00      -0.51       0.09      -0.00      -0.04       0.27       1.35    -125.08

   35   5.2  1.5 -1.5       0.00       0.00     122.05      -0.17       0.49     -62.54       0.00       0.04      -0.68       0.38
                           -0.00      -0.00      -0.19    -122.00       3.72       0.04       0.00      62.54      -0.01       0.53

   36   6.2  1.5 -1.5       0.00       0.00      -0.76       0.00      -0.08       0.39      -0.04       0.00    -109.00      61.37
                           -0.00      -0.00      -0.99       3.72     122.00      -0.27     -62.54      -0.00      -0.00       0.07

   37   7.2  1.5 -1.5       0.00       0.00      -0.10     -69.12       1.68       0.07       0.68     109.00       0.00       0.00
                           -0.00      -0.00    -140.93       0.18      -1.15      -1.35       0.01       0.00       0.00      -0.00

   38   8.2  1.5 -1.5       0.00       0.00      -0.18    -122.77       2.98      -0.04      -0.38     -61.37      -0.00      -0.00
                           -0.00      -0.00      -1.52       0.00      -0.01     125.08      -0.53      -0.07       0.00      -0.00


   Nr   State  S   Sz       31         32         33         34         35         36         37         38

    1   1.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    2   2.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    3   3.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    4   1.2  0.5 -0.5      -1.08       3.22     132.42      -0.57    -134.54       0.84      -0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00    -154.95      -1.67

    5   2.2  0.5 -0.5     132.09      -0.17       1.08     133.56      -0.56      -0.08       0.00       0.00
                           -0.19    -131.76       3.20      -0.08      -0.83    -133.88      -0.00      -0.00

    6   3.2  0.5 -0.5      -0.00       0.00      -0.00      -0.00      -0.00      -0.00      76.37     134.39
                            1.08      -3.22    -132.41      -0.57    -134.54       0.84      -0.00       0.00

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

   23   1.2  1.5 -0.5      -0.00       1.55      63.77      -0.48     122.05      -0.76      -0.10      -0.18
                           -0.00      -0.52      -0.08       0.00       0.19       0.99     140.93       1.52

   24   2.2  1.5 -0.5      -1.55       0.00      -0.09       2.97      -0.17       0.00     -69.12    -122.77
                            0.52       0.00     -63.79       0.51     122.00      -3.72      -0.18      -0.00

   25   3.2  1.5 -0.5     -63.77       0.09      -0.00     122.02       0.49      -0.08       1.68       2.98
                            0.08      63.79      -0.00      -0.09      -3.72    -122.00       1.15       0.01

   26   4.2  1.5 -0.5       0.48      -2.97    -122.02      -0.00     -62.54       0.39       0.07      -0.04
                           -0.00      -0.51       0.09       0.00      -0.04       0.27       1.35    -125.08

   27   5.2  1.5 -0.5    -122.05       0.17      -0.49      62.54       0.00      -0.04       0.68      -0.38
                           -0.19    -122.00       3.72       0.04      -0.00      62.54      -0.01       0.53

   28   6.2  1.5 -0.5       0.76      -0.00       0.08      -0.39       0.04       0.00     109.00     -61.37
                           -0.99       3.72     122.00      -0.27     -62.54       0.00      -0.00       0.07

   29   7.2  1.5 -0.5       0.10      69.12      -1.68      -0.07      -0.68    -109.00       0.00      -0.00
                         -140.93       0.18      -1.15      -1.35       0.01       0.00      -0.00      -0.00

   30   8.2  1.5 -0.5       0.18     122.77      -2.98       0.04       0.38      61.37       0.00      -0.00
                           -1.52       0.00      -0.01     125.08      -0.53      -0.07       0.00       0.00

   31   1.2  1.5 -1.5   74447.24       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00    -110.49       2.68       0.18      -1.31    -211.39       1.01      -1.72

   32   2.2  1.5 -1.5       0.00   74447.21       0.00       0.00       0.00       0.00       0.00       0.00
                          110.49       0.00       0.90     211.34      -0.89       0.14      -3.02       5.10

   33   3.2  1.5 -1.5       0.00       0.00   74447.20       0.00       0.00       0.00       0.00       0.00
                           -2.68      -0.90      -0.00      -5.13       0.01      -1.73    -124.27     210.00

   34   4.2  1.5 -1.5       0.00       0.00       0.00   69712.44       0.00       0.00       0.00       0.00
                           -0.18    -211.34       5.13      -0.00      -0.67    -108.38       0.78       0.46

   35   5.2  1.5 -1.5       0.00       0.00       0.00       0.00   69712.32       0.00       0.00       0.00
                            1.31       0.89      -0.01       0.67      -0.00       0.45     186.53     110.40

   36   6.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00   69712.37       0.00       0.00
                          211.39      -0.14       1.73     108.38      -0.45      -0.00      -1.16      -0.68

   37   7.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00   69709.37       0.00
                           -1.01       3.02     124.27      -0.78    -186.53       1.16      -0.00       0.00

   38   8.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00   69712.58
                            1.72      -5.10    -210.00      -0.46    -110.40       0.68      -0.00       0.00


 No symmetry adaption


 Spin-orbit eigenstates   (energies)
 ======================

     Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
              (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1  -461.36305000    -0.00135743     -297.92      0.00000000        0.00      0.0000
     2  -461.36305000    -0.00135743     -297.92      0.00000000        0.00      0.0000
     3  -461.36304728    -0.00135471     -297.33      0.00000271        0.60      0.0001
     4  -461.36304728    -0.00135471     -297.33      0.00000271        0.60      0.0001
     5  -461.35899640     0.00269618      591.74      0.00405360      889.66      0.1103
     6  -461.35899640     0.00269618      591.74      0.00405360      889.66      0.1103
     7  -461.04505419     0.31663838    69494.09      0.31799580    69792.01      8.6531
     8  -461.04505419     0.31663838    69494.09      0.31799580    69792.01      8.6531
     9  -461.04505095     0.31664162    69494.80      0.31799905    69792.72      8.6532
    10  -461.04505095     0.31664162    69494.80      0.31799905    69792.72      8.6532
    11  -461.04504675     0.31664582    69495.73      0.31800325    69793.65      8.6533
    12  -461.04504675     0.31664582    69495.73      0.31800325    69793.65      8.6533
    13  -461.04504620     0.31664638    69495.85      0.31800380    69793.77      8.6533
    14  -461.04504620     0.31664638    69495.85      0.31800380    69793.77      8.6533
    15  -461.04400487     0.31768770    69724.39      0.31904512    70022.31      8.6817
    16  -461.04400487     0.31768770    69724.39      0.31904512    70022.31      8.6817
    17  -461.04399938     0.31769319    69725.60      0.31905062    70023.52      8.6818
    18  -461.04399938     0.31769319    69725.60      0.31905062    70023.52      8.6818
    19  -461.04399770     0.31769487    69725.96      0.31905230    70023.89      8.6819
    20  -461.04399770     0.31769487    69725.96      0.31905230    70023.89      8.6819
    21  -461.04315007     0.31854250    69912.00      0.31989993    70209.92      8.7049
    22  -461.04315007     0.31854250    69912.00      0.31989993    70209.92      8.7049
    23  -461.04314981     0.31854276    69912.05      0.31990018    70209.97      8.7049
    24  -461.04314981     0.31854276    69912.05      0.31990018    70209.97      8.7049
    25  -461.04259813     0.31909444    70033.14      0.32045187    70331.06      8.7199
    26  -461.04259813     0.31909444    70033.14      0.32045187    70331.06      8.7199
    27  -461.02288663     0.33880594    74359.31      0.34016336    74657.23      9.2563
    28  -461.02288663     0.33880594    74359.31      0.34016336    74657.23      9.2563
    29  -461.02288652     0.33880605    74359.33      0.34016348    74657.25      9.2563
    30  -461.02288652     0.33880605    74359.33      0.34016348    74657.25      9.2563
    31  -461.02288642     0.33880615    74359.35      0.34016358    74657.28      9.2563
    32  -461.02288642     0.33880615    74359.35      0.34016358    74657.28      9.2563
    33  -461.02206803     0.33962454    74538.97      0.34098197    74836.89      9.2786
    34  -461.02206803     0.33962454    74538.97      0.34098197    74836.89      9.2786
    35  -461.02206781     0.33962476    74539.02      0.34098218    74836.94      9.2786
    36  -461.02206781     0.33962476    74539.02      0.34098218    74836.94      9.2786
    37  -461.02162072     0.34007185    74637.14      0.34142928    74935.07      9.2908
    38  -461.02162072     0.34007185    74637.14      0.34142928    74935.07      9.2908


 Eigenvectors of spin-orbit matrix
 =================================

  Basis states          Eigenvectors (columnwise)

   Nr   State  S   Sz        1             2             3             4             5             6             7             8

    1    1.2  0.5  0.5   0.809784118  -0.106563459   0.000014013   0.000201156  -0.576182652  -0.029710667   0.000000200  -0.000008550
                        -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000

    2    2.2  0.5  0.5  -0.049897788  -0.379177255  -0.206862268   0.014393837  -0.028303769   0.548898500  -0.000000435  -0.000000009
                         0.018595514   0.141308784   0.674268769  -0.046967787   0.009134194  -0.177140547   0.000000257   0.000000005

    3    3.2  0.5  0.5   0.000000009  -0.000000002  -0.000017478  -0.000036217  -0.000000000  -0.000000000  -0.000000000   0.000000000
                         0.404303915  -0.053204337   0.049138155   0.705492403   0.576770709   0.029740990   0.000000020  -0.000000851

    4    1.2  0.5 -0.5   0.099854691   0.758803662  -0.000059009   0.000004111  -0.028274746   0.548335658   0.000007365   0.000000172
                        -0.037213055  -0.282784936   0.000192306  -0.000013397   0.009124827  -0.176958907  -0.000004344  -0.000000101

    5    2.2  0.5 -0.5   0.404652398  -0.053250187  -0.049123877  -0.705287438   0.576774077   0.029741164   0.000000011  -0.000000505
                         0.000000009  -0.000000002  -0.000017478  -0.000036216   0.000000000   0.000000000   0.000000000   0.000000000

    6    3.2  0.5 -0.5  -0.018579500  -0.141187074   0.674464717  -0.046981437  -0.009134140   0.177139513  -0.000000432  -0.000000011
                        -0.049854826  -0.378850717   0.206922395  -0.014398026  -0.028303604   0.548895294  -0.000000733  -0.000000017

    7    1.2  1.5  1.5   0.000105162   0.000664032   0.000362691  -0.000015030   0.000050219  -0.000973746  -0.000097260  -0.000003387
                        -0.000032825  -0.000249438  -0.001186094   0.000082621  -0.000016285   0.000315826   0.000057255   0.000001318

    8    2.2  1.5  1.5  -0.000084721  -0.000241860  -0.001185213   0.000052192  -0.000016260   0.000314862  -0.000038218   0.000002476
                        -0.000087479  -0.000664756  -0.000361322   0.000025140  -0.000050091   0.000971413  -0.000064949  -0.000001479

    9    3.2  1.5  1.5  -0.002138549   0.000293105  -0.000054936  -0.001246074  -0.000000179  -0.000015652  -0.000003072   0.000137180
                         0.000001857   0.000014114  -0.000000938   0.000000000   0.000001084  -0.000021022   0.000002015   0.000000046

   10    4.2  1.5  1.5   0.000097781   0.000717882   0.000390783  -0.000032880   0.000044989  -0.001054970   0.047326047  -0.000969392
                        -0.000035297  -0.000268200  -0.001277858   0.000089030  -0.000017560   0.000341025  -0.027734083  -0.000573690

   11    5.2  1.5  1.5   0.000773349  -0.000106540  -0.000103364  -0.001345581  -0.002231984  -0.000108518   0.012327687  -0.506399085
                        -0.000000440  -0.000003342   0.000002906  -0.000000274  -0.000000264   0.000005127   0.001373238   0.000033589

   12    6.2  1.5  1.5  -0.000040180  -0.000268191  -0.001280349   0.000097583  -0.000003772   0.000342528   0.109101673   0.005570887
                        -0.000094748  -0.000720045  -0.000392156   0.000027313  -0.000054478   0.001057036   0.185149746   0.004369095

   13    7.2  1.5  1.5   0.000000001   0.000000004   0.000000016   0.000000039   0.000000000  -0.000000006   0.000084027   0.000002973
                         0.001342134  -0.000176624  -0.000053220  -0.000763935  -0.001918137  -0.000098900  -0.014879465   0.636641848

   14    8.2  1.5  1.5   0.000000000   0.000000002   0.000000016   0.000000070   0.000000000  -0.000000004   0.000040643  -0.000000074
                        -0.000751705   0.000098906  -0.000093703  -0.001345061  -0.001128904  -0.000058191  -0.001944228   0.083479792

   15    1.2  1.5  0.5   0.000410412  -0.000050796   0.000151342   0.002148070   0.000590420   0.000039674  -0.000002116   0.000082866
                         0.000002878  -0.000001576  -0.000005623  -0.000000550  -0.000000725  -0.000003016   0.000000059  -0.000000126

   16    2.2  1.5  0.5  -0.000001758  -0.000009326  -0.000005287  -0.000002341   0.000000660  -0.000027423   0.000000536  -0.000000091
                         0.002062000  -0.000267787  -0.000033046  -0.000714959  -0.000597242  -0.000021936   0.000001728  -0.000086604

   17    3.2  1.5  0.5  -0.000047527  -0.000387144  -0.000209286   0.000032255   0.000062965  -0.001126904   0.000021494   0.000001203
                        -0.000031096   0.000150701   0.000687374  -0.000030462  -0.000004265   0.000364502  -0.000012740   0.000001775

   18    4.2  1.5  0.5  -0.001326419   0.000179907  -0.000054709  -0.000771680  -0.001919318  -0.000098969  -0.002628065   0.110159640
                        -0.000001085  -0.000001873   0.000003075  -0.000000735   0.000001187   0.000000071  -0.000026577   0.000236147

   19    5.2  1.5  0.5   0.000170569   0.001252986  -0.000227877   0.000019121   0.000008111  -0.000000216  -0.005942189  -0.000558929
                        -0.000069779  -0.000466136   0.000743171  -0.000056592   0.000011940   0.000000820   0.003449025   0.002589280

   20    6.2  1.5  0.5  -0.000000242  -0.000007894   0.000001461   0.000000397   0.000001132   0.000000070   0.000018674  -0.000065592
                        -0.001336268   0.000178773  -0.000058518  -0.000773557   0.001925992   0.000099336  -0.009092112   0.389016069

   21    7.2  1.5  0.5   0.000034924   0.000265472  -0.001289458   0.000089814  -0.000017879   0.000346447  -0.169281235  -0.003849299
                         0.000093734   0.000712345  -0.000395599   0.000027523  -0.000055347   0.001073524  -0.286994779  -0.006736547

   22    8.2  1.5  0.5   0.000061363   0.000466399   0.000723083  -0.000050375   0.000030184  -0.000585712   0.042375370   0.000977894
                         0.000164669   0.001251499   0.000221837  -0.000015448   0.000093617  -0.001814918   0.071840227   0.001652341

   23    1.2  1.5 -0.5  -0.000047047  -0.000383569   0.000630664  -0.000049772  -0.000038682   0.000562108   0.000071440   0.000001852
                         0.000019215   0.000146017  -0.002053404   0.000143034   0.000009315  -0.000180642  -0.000041990  -0.000001025

   24    2.2  1.5 -0.5   0.000084775   0.000721719   0.000682817  -0.000030041   0.000019361   0.000184055   0.000043919   0.000000416
                         0.000254185   0.001931572   0.000211972  -0.000014749  -0.000029298   0.000568175   0.000074641   0.000001761

   25    3.2  1.5 -0.5  -0.000415397   0.000033676   0.000038584   0.000718527   0.001184388   0.000061232   0.000000135  -0.000024986
                        -0.000006019  -0.000045736  -0.000021900   0.000001563   0.000000788  -0.000015279  -0.000002140  -0.000000054

   26    4.2  1.5 -0.5   0.000169235   0.001242535  -0.000225671   0.000018989   0.000094207  -0.001826921   0.094764687   0.002250150
                        -0.000061070  -0.000464216   0.000737945  -0.000051400  -0.000030328   0.000588337  -0.056168106  -0.001358035

   27    5.2  1.5 -0.5   0.001336883  -0.000184199   0.000059712   0.000777323   0.000000457   0.000004052  -0.001796866   0.006870449
                        -0.000000766  -0.000005821  -0.000001678   0.000000158   0.000000714  -0.000013854  -0.001946291  -0.000048051

   28    6.2  1.5 -0.5  -0.000069827  -0.000466412   0.000739641  -0.000056373   0.000030442  -0.000590439  -0.197689395  -0.004635176
                        -0.000164761  -0.001252227   0.000226544  -0.000015769   0.000094557  -0.001833257  -0.335040907  -0.007821892

   29    7.2  1.5 -0.5   0.000000001   0.000000007   0.000000035   0.000000069   0.000000001  -0.000000017   0.000106840   0.000005577
                        -0.000760204   0.000100029  -0.000093937  -0.001348777   0.001128042   0.000058163   0.007758012  -0.333199849

   30    8.2  1.5 -0.5   0.000000000   0.000000004  -0.000000009  -0.000000040   0.000000001  -0.000000026   0.000002854  -0.000002319
                        -0.001335582   0.000175731   0.000052691   0.000756347  -0.001907088  -0.000098363  -0.001920026   0.083406776

   31    1.2  1.5 -1.5  -0.000709334   0.000110004   0.000083395   0.001240307  -0.001023682  -0.000052793   0.000003587  -0.000112861
                        -0.000001847  -0.000005965   0.000009868   0.000001207  -0.000001503  -0.000000075  -0.000000585   0.000000096

   32    2.2  1.5 -1.5  -0.000005506  -0.000048839   0.000008723  -0.000002258   0.000001301   0.000000090  -0.000002884   0.000000078
                        -0.000707366   0.000111557   0.000057271   0.001239064  -0.001021166  -0.000052663  -0.000000016   0.000075359

   33    3.2  1.5 -1.5  -0.000269723  -0.002004564   0.000365537  -0.000015219  -0.000008439   0.000000503  -0.000118135  -0.000003670
                         0.000115580   0.000745063  -0.001191253   0.000052795   0.000024813   0.000000977   0.000069732  -0.000000175

   34    4.2  1.5 -1.5  -0.000766346   0.000103951   0.000094759   0.001336275  -0.001108720  -0.000048208   0.000543521   0.054853534
                        -0.000000623  -0.000001071  -0.000005317   0.000001271  -0.000000537  -0.000002894  -0.000986623  -0.000154769

   35    5.2  1.5 -1.5   0.000098665   0.000724816   0.000394466  -0.000033100  -0.000104848   0.002124031   0.436197718   0.009920653
                        -0.000040336  -0.000269649  -0.001286462   0.000097964   0.000028449  -0.000685745  -0.257238381  -0.007445690

   36    6.2  1.5 -1.5  -0.000000140  -0.000004564  -0.000002515  -0.000000689   0.000001334  -0.000013141  -0.002578773  -0.000088741
                        -0.000768369   0.000102815   0.000101302   0.001339059  -0.001111147  -0.000053004   0.006593459  -0.214903690

   37    7.2  1.5 -1.5  -0.000061683  -0.000468687  -0.000730337   0.000050884   0.000030368  -0.000589104   0.323432339   0.007631631
                        -0.000165503  -0.001257640  -0.000224063   0.000015597   0.000094122  -0.001825433   0.548365175   0.012773556

   38    8.2  1.5 -1.5   0.000034537   0.000262503  -0.001285905   0.000089585   0.000017868  -0.000346712   0.042410531   0.001022738
                         0.000092680   0.000704381  -0.000394508   0.000027472   0.000055380  -0.001074343   0.071904260   0.001653989


   Nr   State  S   Sz        9            10            11            12            13            14            15            16

    1    1.2  0.5  0.5   0.000000469   0.000001950  -0.000000424  -0.000002908   0.000000000  -0.000000134  -0.000000761  -0.000000026
                        -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000

    2    2.2  0.5  0.5   0.000000068  -0.000000015   0.000000260  -0.000000040  -0.000000637   0.000000013  -0.000000156   0.000005371
                         0.000000772  -0.000000185  -0.000000028   0.000000004  -0.000000154   0.000000000  -0.000000399   0.000011883

    3    3.2  0.5  0.5   0.000000001  -0.000000000   0.000000000   0.000000000   0.000000002  -0.000000001   0.000000002   0.000000036
                         0.000000092   0.000000388   0.000000017   0.000000133  -0.000000008  -0.000000392   0.000021475   0.000000707

    4    1.2  0.5 -0.5   0.000000169  -0.000000041  -0.000002892   0.000000422   0.000000131  -0.000000000   0.000000011  -0.000000313
                         0.000001942  -0.000000467   0.000000303  -0.000000044   0.000000031  -0.000000000   0.000000024  -0.000000693

    5    2.2  0.5 -0.5  -0.000000186  -0.000000775  -0.000000040  -0.000000262  -0.000000012  -0.000000655  -0.000013041  -0.000000428
                         0.000000001  -0.000000000   0.000000000  -0.000000000  -0.000000003   0.000000002   0.000000001   0.000000022

    6    3.2  0.5 -0.5   0.000000387  -0.000000092  -0.000000014   0.000000002   0.000000092  -0.000000000  -0.000000659   0.000019569
                        -0.000000034   0.000000007  -0.000000132   0.000000017  -0.000000381   0.000000008   0.000000259  -0.000008846

    7    1.2  1.5  1.5  -0.000013009   0.000002036   0.000005468  -0.000000710  -0.000008557   0.000000101   0.000002749  -0.009343581
                        -0.000148706   0.000035622  -0.000000573   0.000000050  -0.000002085   0.000000003   0.000697519  -0.020771598

    8    2.2  1.5  1.5   0.000124460  -0.000026795   0.000000050  -0.000000326   0.000002220   0.000000106  -0.000257642   0.030956966
                        -0.000010592   0.000002508   0.000000971  -0.000000176  -0.000009121   0.000000152   0.000399763  -0.013951864

    9    3.2  1.5  1.5   0.000024785   0.000117626  -0.000001926  -0.000013471  -0.000000023   0.000004482   0.032222433   0.000230771
                        -0.000001023   0.000000242  -0.000000007   0.000000004   0.000000227  -0.000000020  -0.000006275   0.000113453

   10    4.2  1.5  1.5   0.019959370  -0.006432559   0.387834365  -0.056039295  -0.342435691   0.006305989   0.005493209  -0.174700129
                         0.236816924  -0.056645441  -0.040581918   0.005638738  -0.082780444   0.000115915   0.013006981  -0.386661740

   11    5.2  1.5  1.5  -0.102405170  -0.415744850   0.037311037   0.265293425   0.001030176   0.001322660   0.111216696   0.005015085
                        -0.000507161   0.000135887   0.001499794  -0.000216549   0.000284762   0.000023345  -0.000053649   0.001153713

   12    6.2  1.5  1.5  -0.464358182   0.113823680   0.025763450  -0.005242067  -0.000952563  -0.000013194  -0.004032692   0.099810652
                         0.040411532  -0.009370040   0.249945500  -0.036439157   0.004700340  -0.000512601   0.001256480  -0.044849842

   13    7.2  1.5  1.5   0.000170981  -0.000033574  -0.000031708   0.000003777   0.000002401  -0.000009760   0.000024247   0.000621038
                         0.053544970   0.224640064   0.001402920   0.010001250  -0.000019170  -0.001727735   0.358361732   0.011781620

   14    8.2  1.5  1.5   0.000067037  -0.000007486  -0.000233641  -0.000005938  -0.001627604   0.001324022  -0.000028254  -0.000685696
                         0.051945963   0.217369674  -0.057998958  -0.400826578   0.007349683   0.350701235  -0.395299544  -0.012999031

   15    1.2  1.5  0.5   0.000056765   0.000237420  -0.000000941  -0.000006427  -0.000000148  -0.000006149   0.038091728   0.001319002
                         0.000000416   0.000000017  -0.000000019  -0.000000027  -0.000000032   0.000000013   0.000019005   0.000081319

   16    2.2  1.5  0.5  -0.000000166  -0.000000280  -0.000000188   0.000000036   0.000000094  -0.000000011  -0.000041376  -0.000167566
                         0.000017043   0.000078220  -0.000003051  -0.000020877  -0.000000101  -0.000005265   0.018038271   0.000156224

   17    3.2  1.5  0.5  -0.000005231   0.000003299  -0.000007982   0.000001110   0.000002771  -0.000000100   0.000547977  -0.008106150
                        -0.000065881   0.000013736   0.000000916   0.000000415   0.000000676   0.000000127   0.000167143  -0.017967526

   18    4.2  1.5  0.5   0.029365285   0.122512816   0.034515506   0.229895909  -0.012090714  -0.612057194  -0.240957683  -0.008010679
                         0.000969507  -0.000409369  -0.000217228   0.000254227  -0.002671225   0.002255952   0.000063966   0.000250321

   19    5.2  1.5  0.5   0.023187016  -0.005863268   0.450225420  -0.066715341   0.000981893   0.001840027   0.001612800  -0.018620577
                         0.266693466  -0.065561711  -0.046836187   0.009490886   0.000292009   0.000030735   0.001835442  -0.041250453

   20    6.2  1.5  0.5  -0.000230403  -0.000030131  -0.002502912   0.000222587   0.000138892   0.000328357   0.000142040   0.000236290
                        -0.066886324  -0.272036800   0.069009551   0.470363551  -0.000587543   0.006514960   0.069462000   0.002546610

   21    7.2  1.5  0.5   0.472577636  -0.113082382   0.001863850  -0.000282357   0.003121744  -0.000005175  -0.018942226   0.563040298
                        -0.041205416   0.009597939   0.017825681  -0.002675491  -0.012920003   0.000254017   0.007344407  -0.254520226

   22    8.2  1.5  0.5  -0.119061709   0.028493657  -0.024192937   0.003369181  -0.144454609   0.000200169  -0.007393666   0.219893354
                         0.010371842  -0.002447437  -0.229696811   0.034544958   0.597298591  -0.011713643   0.002858847  -0.099400417

   23    1.2  1.5 -0.5  -0.000020613   0.000005339   0.000006389  -0.000000934  -0.000005979   0.000000151   0.000617500  -0.015710348
                        -0.000236524   0.000056514  -0.000000697   0.000000117  -0.000001436   0.000000003   0.001168363  -0.034701082

   24    2.2  1.5 -0.5  -0.000077901   0.000016964  -0.000002212   0.000000132  -0.000001230  -0.000000068   0.000073316  -0.016419298
                         0.000007065  -0.000001644  -0.000020759   0.000003054   0.000005120  -0.000000120  -0.000217046   0.007469108

   25    3.2  1.5 -0.5  -0.000013970  -0.000066087  -0.000001061  -0.000008034  -0.000000068  -0.000002853  -0.019711453  -0.000378055
                        -0.000002095   0.000000504   0.000000528  -0.000000079  -0.000000147   0.000000016   0.000015995  -0.000430453

   26    4.2  1.5 -0.5  -0.010220286   0.003513321  -0.228616799   0.034350091  -0.594895608   0.012380640  -0.003072148   0.099211460
                        -0.122086459   0.029170473   0.024218847  -0.003382100  -0.143938573   0.000201436  -0.007402401   0.219585280

   27    5.2  1.5 -0.5   0.065823189   0.267699535   0.067341235   0.452654871   0.001797123  -0.001022825  -0.045258424  -0.002336883
                         0.000153618  -0.000036329   0.002484287  -0.000353744   0.000396226   0.000056678   0.000027424  -0.000713407

   28    6.2  1.5 -0.5   0.271013841  -0.066654152   0.048812710  -0.009683328   0.001828205   0.000000951   0.002417800  -0.063351798
                        -0.023569452   0.005572922   0.467823940  -0.068372625  -0.006261804  -0.000603735  -0.000833846   0.028487529

   29    7.2  1.5 -0.5   0.000248257  -0.000053481   0.000001906  -0.000004583   0.000053793  -0.000044784   0.000044321   0.001111647
                         0.113488695   0.474370642  -0.002690348  -0.017922857  -0.000248310  -0.013291718   0.617895558   0.020285771

   30    8.2  1.5 -0.5  -0.000033644   0.000004016   0.000250391  -0.000115870  -0.002517990   0.002201462   0.000018710   0.000441081
                        -0.028598554  -0.119512617   0.034707964   0.230967335   0.011441557   0.614514357   0.241316244   0.007914844

   31    1.2  1.5 -1.5   0.000035664   0.000149274  -0.000000712  -0.000005498  -0.000000099  -0.000008807   0.022776301   0.000636706
                        -0.000001062   0.000000059   0.000000024   0.000000000  -0.000000020   0.000000047  -0.000043678  -0.000284859

   32    2.2  1.5 -1.5   0.000000174  -0.000000245  -0.000000306   0.000000052  -0.000000138   0.000000047  -0.000040812   0.000258118
                        -0.000026912  -0.000124909   0.000000209   0.000000970   0.000000124   0.000009387  -0.033955656  -0.000399456

   33    3.2  1.5 -1.5   0.000010445  -0.000001131  -0.000013398   0.000001915  -0.000004355   0.000000030  -0.000198451   0.013269281
                         0.000117161  -0.000024780   0.000001401  -0.000000208  -0.000001057  -0.000000227  -0.000163537   0.029363437

   34    4.2  1.5 -1.5  -0.056989920  -0.237655626  -0.056321783  -0.389951769  -0.006161402  -0.352297175   0.424296387   0.014114961
                        -0.001494259   0.000659986   0.000233925   0.000069843  -0.001347616   0.001226656  -0.000111387  -0.000353242

   35    5.2  1.5 -1.5  -0.035930914   0.009389002   0.263870526  -0.036951395  -0.001292109   0.001068117  -0.003117370   0.045770169
                        -0.414189290   0.101975109  -0.027440729   0.005381194  -0.000283600  -0.000038446  -0.004094403   0.101361965

   36    6.2  1.5 -1.5   0.000539605   0.000024364  -0.001414825   0.000433043   0.000131546   0.000161867  -0.000253135  -0.000516492
                         0.114207428   0.466113304   0.036787086   0.251269419  -0.000495610  -0.004793159  -0.109423994  -0.004192205

   37    7.2  1.5 -1.5   0.223790263  -0.053357940  -0.001038846   0.000177786   0.000409614  -0.000002104  -0.010991183   0.326546651
                        -0.019521201   0.004474745  -0.009947151   0.001391970  -0.001678506   0.000019205   0.004287906  -0.147615772

   38    8.2  1.5 -1.5   0.216549546  -0.051755943   0.041779144  -0.005813861  -0.082505566   0.000118728   0.012127118  -0.360205774
                        -0.018864498   0.004439581   0.398643260  -0.057707302   0.340860589  -0.007526808  -0.004730539   0.162829761


   Nr   State  S   Sz       17            18            19            20            21            22            23            24

    1    1.2  0.5  0.5   0.000007684   0.000000190  -0.000002380  -0.000000055   0.002370540  -0.000001333   0.000011265  -0.001269199
                        -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000

    2    2.2  0.5  0.5  -0.000000080   0.000003239  -0.000000022   0.000000832   0.000000034  -0.000021579  -0.000306962  -0.000002653
                         0.000000006  -0.000000307   0.000000018  -0.000000697  -0.000000016   0.000067614   0.002635035   0.000023292

    3    3.2  0.5  0.5   0.000000000  -0.000000000   0.000000000   0.000000006  -0.000000001  -0.000000020   0.000000069  -0.000000003
                        -0.000010529  -0.000000269   0.000000060   0.000000002   0.002248002  -0.000001332  -0.000012495   0.001420521

    4    1.2  0.5 -0.5  -0.000000189   0.000007650  -0.000000042   0.000001824   0.000000405   0.000720657   0.000146861   0.000001303
                         0.000000018  -0.000000726   0.000000036  -0.000001529  -0.000001270  -0.002258343  -0.001260673  -0.000011189

    5    2.2  0.5 -0.5  -0.000003253  -0.000000081   0.000001086   0.000000028   0.000070974   0.000000026   0.000023443  -0.002652854
                         0.000000000   0.000000001  -0.000000000  -0.000000000  -0.000000002  -0.000000028   0.000000060  -0.000000003

    6    3.2  0.5 -0.5  -0.000000025   0.000000995   0.000000003   0.000000038  -0.000001263  -0.002141605   0.001410980   0.000012419
                        -0.000000268   0.000010482  -0.000000006   0.000000046  -0.000000424  -0.000683404   0.000164368   0.000001377

    7    1.2  1.5  1.5   0.001302545  -0.046040342   0.000306501  -0.004160036   0.000386991   0.000283242   0.003113514   0.000040876
                        -0.000106110   0.004322991  -0.000077722   0.003530340   0.000000076  -0.000891443  -0.027077076  -0.000239305

    8    2.2  1.5  1.5  -0.000387588  -0.003089570  -0.000945094   0.013167363  -0.001152235  -0.000632369  -0.027266372  -0.000282579
                         0.000835383  -0.033024706  -0.000327874   0.015706976   0.000000328  -0.000200787  -0.003141439  -0.000027090

    9    3.2  1.5  1.5  -0.018683976  -0.000783207  -0.023594283  -0.000919781  -0.047433634   0.000045101   0.000701900  -0.001704628
                        -0.000022564   0.000851092   0.000006683  -0.000426395  -0.000000020  -0.000002632  -0.000144072  -0.000001326

   10    4.2  1.5  1.5   0.004351791  -0.187290499  -0.006178068   0.332865172  -0.000066527  -0.003741687  -0.051476145   0.001439014
                        -0.000259477   0.017459021   0.007667754  -0.279309527  -0.000003968   0.011751918   0.444116683   0.003920398

   11    5.2  1.5  1.5  -0.124712115  -0.002561350   0.242570383   0.003285243  -0.017113081   0.000094891  -0.000988526   0.447681637
                         0.000097274  -0.003591779   0.000000363   0.000334210   0.000000213  -0.000020074  -0.001559549  -0.000013278

   12    6.2  1.5  1.5   0.002144226  -0.052337145   0.003415761  -0.188974576   0.000104394   0.013023697   0.443097792   0.001136850
                         0.013700518  -0.552658137   0.005191016  -0.224968578  -0.000010445   0.004148704   0.051349301   0.000437789

   13    7.2  1.5  1.5   0.000001994  -0.000035904   0.000004946   0.000127707  -0.000000141  -0.000001940   0.000007755  -0.000000247
                        -0.258407804  -0.006502666   0.013963602   0.000370927  -0.240775146   0.000129329  -0.003309976   0.374474842

   14    8.2  1.5  1.5  -0.000025175   0.000230283  -0.000009217  -0.001309516  -0.000000227  -0.000003506   0.000018127  -0.000000450
                         0.197591525   0.005184009   0.452771544   0.010865483   0.376329383  -0.000223128  -0.002123214   0.241888765

   15    1.2  1.5  0.5  -0.027460146  -0.000874534   0.002016297  -0.000228596   0.026249157  -0.000014434  -0.000269510   0.032277714
                        -0.000007678   0.000020650  -0.000070040   0.000222309   0.000041760  -0.000004327  -0.000130099  -0.000046454

   16    2.2  1.5  0.5   0.000023980   0.000527936  -0.000020556   0.000952175  -0.000033382  -0.000004239  -0.000044801  -0.000041435
                        -0.004716796  -0.000191391  -0.042914051  -0.001734630   0.028364144  -0.000001628   0.000657940  -0.030826908

   17    3.2  1.5  0.5  -0.000768927   0.022504285  -0.000749126   0.034445076   0.000215334  -0.000182679  -0.001847831   0.000248720
                         0.000182675  -0.002132098   0.001819403  -0.028856674  -0.000688771   0.000572377   0.015835593   0.000888630

   18    4.2  1.5  0.5   0.227080847   0.008215981  -0.286644288  -0.008019035   0.444465637  -0.000823641  -0.000123932   0.016221089
                        -0.000083414  -0.000157519   0.000230264   0.000310128   0.000278020   0.001794993  -0.000065314   0.000007837

   19    5.2  1.5  0.5  -0.016830793   0.626177157   0.006531919  -0.257627269  -0.001950201  -0.135929060   0.001605389  -0.000062062
                         0.000522227  -0.059502087  -0.003555556   0.216108897   0.003031569   0.425966503  -0.013779008  -0.000031521

   20    6.2  1.5  0.5  -0.000055427  -0.003726551   0.000133661   0.000601997  -0.000261981   0.000847173   0.000000950  -0.000009854
                        -0.123936892  -0.002549140   0.413586850   0.008639192   0.449162980  -0.002901998  -0.000019469   0.013038534

   21    7.2  1.5  0.5   0.000329588  -0.012593629   0.000396204  -0.016658166  -0.000206880  -0.357154248   0.234339152   0.002063454
                         0.003259904  -0.132676244   0.000494146  -0.019874717  -0.000069100  -0.113970825   0.027298600   0.000229904

   22    8.2  1.5  0.5   0.000626469  -0.020944731   0.005107448  -0.191093734  -0.000117990  -0.225880791  -0.374140514  -0.003312097
                         0.005363180  -0.220727348   0.005101597  -0.227923094  -0.000028542  -0.072080890  -0.043584767  -0.000380517

   23    1.2  1.5 -0.5  -0.000872570   0.027336430   0.000318003   0.001590087  -0.000000266  -0.007940109   0.003781040  -0.000098039
                         0.000062120  -0.002603698   0.000023486  -0.001241766   0.000015066   0.025019486  -0.032055526  -0.000282753

   24    2.2  1.5 -0.5   0.000543666  -0.000469794  -0.001844122   0.027555823   0.000000263   0.027031823   0.030615046   0.000658705
                         0.000140623  -0.004693403  -0.000717489   0.032898220   0.000004533   0.008591058   0.003608180   0.000031631

   25    3.2  1.5 -0.5   0.022605058   0.000782753  -0.044935182  -0.001742991  -0.000600822  -0.000721634  -0.000853881   0.015943038
                        -0.000004984   0.000109164   0.000017545  -0.000912907   0.000000026  -0.000004248  -0.000349873  -0.000003060

   26    4.2  1.5 -0.5   0.008194075  -0.226071673   0.006344234  -0.219803294  -0.001960428  -0.134855213   0.001869180  -0.000050535
                        -0.000619917   0.021384956  -0.004914448   0.183987806   0.000238970   0.423513697  -0.016113037  -0.000130657

   27    5.2  1.5 -0.5   0.628997877   0.016804781   0.336266053   0.007289792  -0.447128808   0.003480958   0.000024128  -0.013872214
                         0.000037423  -0.001071279   0.000082824  -0.001472030  -0.000000664  -0.000936285   0.000065292   0.000000218

   28    6.2  1.5 -0.5  -0.003468867  -0.011661691   0.005089229  -0.265620350   0.003022193   0.427983839  -0.012952093  -0.000019448
                         0.002890027  -0.123387038   0.007006981  -0.317017239   0.000075147   0.136298512  -0.001498919  -0.000001309

   29    7.2  1.5 -0.5   0.000005855  -0.000019924  -0.000004037  -0.000013870  -0.000000306  -0.000002937   0.000010405  -0.000000472
                         0.133272597   0.003276462  -0.025932582  -0.000633219   0.374897994  -0.000218095  -0.002076196   0.235923826

   30    8.2  1.5 -0.5   0.000016420  -0.000116634  -0.000001835   0.000636142   0.000000276   0.000008678  -0.000005286   0.000000308
                         0.221718839   0.005398385  -0.297431928  -0.007190803   0.237102902  -0.000121082   0.003333879  -0.376670620

   31    1.2  1.5 -1.5   0.046242825   0.001306742  -0.005456018  -0.000284806  -0.000935359   0.000117575  -0.000242428   0.027255465
                        -0.000048979  -0.000017507  -0.000032542   0.000137364  -0.000001167  -0.000368698   0.000012911   0.000040525

   32    2.2  1.5 -1.5  -0.000046390  -0.000464828  -0.000001332   0.000513572   0.000000960  -0.000350598   0.000005790  -0.000034691
                        -0.033168878  -0.000794999  -0.020496062  -0.000858457  -0.000663479   0.001097600  -0.000283816   0.027446721

   33    3.2  1.5 -1.5   0.000860160  -0.018598161  -0.000430876   0.018084579  -0.000016219  -0.014420074   0.000195928   0.000224322
                         0.000773237   0.001788828   0.000917691  -0.015153819   0.000042166   0.045188617  -0.001693331  -0.000680514

   34    4.2  1.5 -1.5   0.188102213   0.004356831   0.434526184   0.009660656   0.012333196  -0.000016445   0.003727554  -0.447089874
                        -0.000325432  -0.000153099   0.000174311   0.001906488   0.000008056   0.000064584   0.001882982  -0.000258975

   35    5.2  1.5 -1.5   0.002210315  -0.124162745   0.002302755  -0.185881311  -0.000047971  -0.005202676  -0.051815044   0.001434689
                        -0.003817840   0.011693321  -0.002366820   0.155847774   0.000084297   0.016303058   0.444672970   0.001162344

   36    6.2  1.5 -1.5  -0.000145014   0.000839389  -0.000272484   0.000717647  -0.000006932   0.000041687   0.000303302   0.000267070
                        -0.555130770  -0.013841869   0.293806361   0.006172443   0.013668518  -0.000096278   0.001179871  -0.446063149

   37    7.2  1.5 -1.5  -0.000579013   0.024431600  -0.000140453   0.008967595   0.000123798   0.229379269   0.371959478   0.003288640
                        -0.006476935   0.257250248  -0.000366291   0.010703478   0.000037468   0.073197144   0.043330751   0.000375299

   38    8.2  1.5 -1.5   0.000260839  -0.018705168  -0.007984376   0.290905361  -0.000211501  -0.358517866   0.240264022   0.002111050
                         0.005182561  -0.196704164  -0.007484871   0.346952652  -0.000071172  -0.114406050   0.027988833   0.000227674


   Nr   State  S   Sz       25            26            27            28            29            30            31            32

    1    1.2  0.5  0.5  -0.002823610   0.000001272  -0.000000125  -0.000000019  -0.000002864  -0.000000012  -0.000000880  -0.000000079
                         0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000

    2    2.2  0.5  0.5  -0.000000971  -0.002169728  -0.000000035   0.000002436  -0.000000014  -0.000000287   0.000000009  -0.000000085
                         0.000000816   0.001817014  -0.000000038   0.000001049  -0.000000012   0.000000939   0.000000006  -0.000000012

    3    3.2  0.5  0.5   0.000000001   0.000000004   0.000000007  -0.000000004   0.000000003   0.000000002  -0.000000013   0.000000032
                         0.002838163  -0.000001278  -0.000000602   0.000000007   0.000001993   0.000000021  -0.000002549  -0.000000264

    4    1.2  0.5 -0.5  -0.000000976  -0.002164780   0.000000018  -0.000000114   0.000000003  -0.000000837   0.000000077  -0.000000866
                         0.000000817   0.001812871   0.000000008  -0.000000051  -0.000000011   0.000002739   0.000000014  -0.000000154

    5    2.2  0.5 -0.5   0.002830064  -0.000001268  -0.000002652  -0.000000047   0.000000982   0.000000008   0.000000086   0.000000010
                        -0.000000000  -0.000000002  -0.000000031   0.000000020   0.000000000   0.000000017   0.000000003  -0.000000005

    6    3.2  0.5 -0.5  -0.000000824  -0.001822214   0.000000001  -0.000000238   0.000000019  -0.000001905   0.000000015  -0.000000458
                        -0.000000977  -0.002175937   0.000000008   0.000000552   0.000000008  -0.000000585  -0.000000266   0.000002508

    7    1.2  1.5  1.5   0.000007935   0.013172788  -0.009900270   0.608270807  -0.010506203  -0.013181008   0.034049166  -0.317620211
                        -0.000004956  -0.011064634  -0.010179652   0.263392186  -0.001039620   0.045258275   0.003079655  -0.057083270

    8    2.2  1.5  1.5  -0.000011115  -0.011134008   0.010230217  -0.289210230   0.016581048   0.079261495  -0.003685088  -0.017512497
                        -0.000005915  -0.013261218  -0.011769992   0.668431610  -0.004697806   0.024267865  -0.008570975   0.095039668

    9    3.2  1.5  1.5  -0.000252085   0.000378181  -0.045163252   0.015660150   0.603006316   0.001706067  -0.177654158  -0.021714922
                         0.000000109   0.000231858  -0.000485175  -0.013690727  -0.000310954  -0.000601737   0.001779815  -0.006617502

   10    4.2  1.5  1.5   0.001801322  -0.172147978   0.000620123  -0.033420878   0.000199028  -0.002836394   0.002365558  -0.023290957
                         0.000059649   0.144342967   0.000571085  -0.014447364   0.000128766   0.009337201   0.000202140  -0.004204925

   11    5.2  1.5  1.5   0.446484586   0.001416571   0.002999467   0.000291350   0.005961221   0.000009386   0.019230364   0.001951052
                         0.000000144   0.000459102   0.000025053  -0.000115356   0.000018354   0.000002612  -0.000088698   0.000384793

   12    6.2  1.5  1.5  -0.002707341   0.144044879  -0.000432962   0.010851317  -0.000043968   0.007780282   0.000195127  -0.006049308
                         0.000071111   0.171798456   0.000402860  -0.025143963   0.000296317   0.002327388  -0.003384062   0.033505534

   13    7.2  1.5  1.5   0.000000029  -0.000000434  -0.000049261   0.000033122  -0.000031499  -0.000039001   0.000119987  -0.000292301
                         0.381250233  -0.000169997   0.004395929  -0.000076612  -0.019258659  -0.000194744   0.023738649   0.002415872

   14    8.2  1.5  1.5   0.000000041   0.000001076   0.000034297  -0.000017141   0.000019777   0.000012208  -0.000071573   0.000181120
                         0.229042536  -0.000099123  -0.001532818   0.000292430   0.044268143   0.000229709  -0.002361973  -0.000371787

   15    1.2  1.5  0.5   0.009950107  -0.000128813  -0.095552346   0.000746693   0.409826806   0.003665366  -0.516869073  -0.058464852
                        -0.000014264   0.000104056  -0.001024559   0.000360582   0.000263919   0.000914105   0.002962301  -0.007359668

   16    2.2  1.5  0.5  -0.000012491   0.000369872   0.000183466   0.002560601  -0.000445240   0.001389674  -0.001151357   0.017759187
                        -0.009723903  -0.000305285   0.017882042   0.005846537   0.634828043  -0.002957188   0.209096978   0.021941032

   17    3.2  1.5  0.5   0.000088430   0.015222320  -0.003358398   0.104117189   0.004910291   0.065177744  -0.075605466   0.714624824
                         0.000230356  -0.012747901  -0.002416831   0.045175235  -0.016957172  -0.215518706  -0.011613673   0.128879341

   18    4.2  1.5  0.5   0.389217453  -0.000177927  -0.004935024   0.000060990  -0.000619179   0.000163090  -0.030122566  -0.003051986
                        -0.000237960   0.000004346  -0.000045473   0.000092116  -0.000019458  -0.000176978   0.000132817  -0.000290774

   19    5.2  1.5  0.5  -0.001638055  -0.000972187  -0.000748939   0.031638842  -0.000346633   0.009643537   0.001815998  -0.015142261
                        -0.002393554   0.000815789  -0.000604660   0.013655614   0.000208118  -0.031437204   0.000201874  -0.002762588

   20    6.2  1.5  0.5  -0.000229713   0.000009441  -0.000019231  -0.000172877  -0.000016563  -0.000094916   0.000083320  -0.000082982
                        -0.385888609   0.000172535   0.003748805   0.000084616   0.016587980   0.000171097   0.025416207   0.002487868

   21    7.2  1.5  0.5   0.000067826   0.144795028  -0.000464318   0.013955389  -0.000245734   0.022586661  -0.000016493   0.002321484
                         0.000075843   0.172902180   0.000376933  -0.032367023   0.000146714   0.006912094   0.001322088  -0.012531928

   22    8.2  1.5  0.5  -0.000108179  -0.248340548  -0.000214363   0.006872985  -0.000098325   0.020008812   0.000191736  -0.002606508
                        -0.000138879  -0.296547714   0.000144189  -0.015969091   0.000134907   0.006098693  -0.001412617   0.014581274

   23    1.2  1.5 -0.5  -0.000165566  -0.007637617   0.000828793   0.087718454   0.000196531  -0.119470116  -0.058851695   0.508409221
                         0.000002926   0.006377433  -0.000025927   0.037904793  -0.003772515   0.392026749  -0.002963390   0.093179815

   24    2.2  1.5 -0.5   0.000479575  -0.006233559   0.004716056  -0.007436461   0.003234156   0.607266121   0.021317944  -0.035381827
                        -0.000003420  -0.007463054  -0.004300871   0.016263460  -0.000465173   0.185026216  -0.018502511   0.206084931

   25    3.2  1.5 -0.5   0.019855176   0.000080101   0.113490498   0.004050834   0.225157858  -0.017651920   0.726150197   0.076471810
                         0.000000105   0.000233382   0.001047765  -0.000843004   0.000624775  -0.000257593  -0.002100941   0.001768093

   26    4.2  1.5 -0.5  -0.000139202  -0.298554514   0.000093168   0.004527399   0.000216901   0.000162271  -0.003055866   0.029636489
                         0.000110904   0.249710802  -0.000059371   0.001964481  -0.000104276  -0.000597854  -0.000246675   0.005391207

   27    5.2  1.5 -0.5  -0.001269117  -0.000280908   0.034457865   0.000930060   0.032883036   0.000300302  -0.015392018  -0.001823346
                        -0.000001259  -0.002886766   0.000384277  -0.000248016  -0.000039137  -0.000270715   0.000075780  -0.000118364

   28    6.2  1.5 -0.5  -0.000103536  -0.247579873  -0.000123555  -0.001506274  -0.000191361   0.015869230   0.000352761  -0.004520580
                        -0.000138339  -0.295997091  -0.000147582   0.003432936   0.000040793   0.004829999  -0.002464130   0.025011095

   29    7.2  1.5 -0.5   0.000000004  -0.000003306  -0.000406382   0.000271008  -0.000012348   0.000212100   0.000097307  -0.000214643
                        -0.225523311   0.000101694   0.035245027   0.000533127  -0.023620630  -0.000192155   0.012744765   0.001304652

   30    8.2  1.5 -0.5   0.000000048  -0.000006228  -0.000211700   0.000137243   0.000012505   0.000157746  -0.000020065   0.000057902
                         0.386799139  -0.000175929   0.017384043   0.000218876  -0.020917611  -0.000054626  -0.014812395  -0.001424394

   31    1.2  1.5 -1.5  -0.017203133   0.000009266  -0.662816108  -0.013183349   0.047134616  -0.002074902   0.322708154   0.034063758
                        -0.000025475  -0.000001295  -0.006604947   0.005276360   0.000615244   0.010351613  -0.000738730   0.002913819

   32    2.2  1.5 -1.5   0.000021886  -0.000004724  -0.007470782   0.004562539   0.000054645   0.009336696   0.000646210  -0.005125247
                        -0.017315472   0.000011672   0.728277118   0.014912186   0.082893371  -0.014485394   0.096637510   0.007795726

   33    3.2  1.5 -1.5  -0.000141079  -0.000193336  -0.008742875  -0.041460898  -0.001073881   0.176453357   0.022536880  -0.174613396
                         0.000420567   0.000161765  -0.018874280  -0.017915040   0.001455861  -0.576611592  -0.002723645  -0.032776962

   34    4.2  1.5 -1.5   0.224654845   0.001342724   0.036407869   0.000798719   0.009758495  -0.000065007   0.023667377   0.002364508
                         0.000137650  -0.001202252   0.000385266  -0.000269703   0.000015006  -0.000227962  -0.000072911   0.000214074

   35    5.2  1.5 -1.5  -0.000791282   0.342306692  -0.000219303   0.002750665  -0.000000244   0.001723896  -0.001988269   0.018919368
                         0.001261476  -0.286661150  -0.000223826   0.001196358   0.000009739  -0.005706547   0.000038160   0.003445615

   36    6.2  1.5 -1.5  -0.000133522  -0.002121296   0.000306349  -0.000231820  -0.000046986  -0.000296236   0.000105138  -0.000398845
                         0.224195492   0.001683703  -0.027383865  -0.000544070   0.008120796  -0.000044513   0.034047083   0.003366136

   37    7.2  1.5 -1.5  -0.000108812  -0.244777942   0.000000880   0.001741885  -0.000174855   0.018409371  -0.000134085   0.004263724
                        -0.000130610  -0.292293516  -0.000083461  -0.004036391  -0.000094191   0.005656148   0.002429794  -0.023352912

   38    8.2  1.5 -1.5  -0.000064466  -0.147054477  -0.000103209  -0.000591737   0.000216122  -0.042331334  -0.000113410  -0.000482955
                        -0.000075303  -0.175600296   0.000274148   0.001414410   0.000078780  -0.012950947  -0.000397703   0.002313178


   Nr   State  S   Sz       33            34            35            36            37            38

    1    1.2  0.5  0.5   0.002635127  -0.000100010   0.000941631   0.000042647   0.001285772   0.000004687
                         0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000

    2    2.2  0.5  0.5   0.000021154   0.000313579   0.000058576  -0.001864937  -0.000002232   0.000610993
                        -0.000019399  -0.000388252  -0.000077811   0.002006236  -0.000004103   0.001125257

    3    3.2  0.5  0.5   0.000001587   0.000004188  -0.000004446   0.000009948  -0.000000001   0.000000003
                         0.002127650  -0.000071271  -0.001807504  -0.000054619  -0.001282840  -0.000004676

    4    1.2  0.5 -0.5  -0.000063085  -0.001662210  -0.000028985   0.000639987  -0.000002236   0.000613540
                         0.000077603   0.002044738   0.000031283  -0.000690714  -0.000004119   0.001129947

    5    2.2  0.5 -0.5   0.000499068  -0.000028396   0.002739152   0.000096889  -0.001280435  -0.000004670
                         0.000001582   0.000004178  -0.000004434   0.000009918   0.000000000  -0.000000004

    6    3.2  0.5 -0.5   0.000057945   0.001649957  -0.000046826   0.001322836   0.000004108  -0.001127370
                         0.000041707   0.001343330  -0.000029825   0.001231745  -0.000002234   0.000612140

    7    1.2  1.5  1.5  -0.002817334   0.050469701   0.010500046  -0.298234586  -0.000872634   0.239148796
                        -0.003115465  -0.062392915  -0.012483338   0.321808795  -0.001599892   0.438896116

    8    2.2  1.5  1.5   0.015345053  -0.063009882  -0.015845425   0.321542198  -0.001600163   0.438771375
                        -0.003393408  -0.050240954  -0.009346120   0.298139015   0.000872220  -0.238967981

    9    3.2  1.5  1.5   0.759887209  -0.025395762  -0.138550565  -0.012186079   0.000001832  -0.008707351
                        -0.000196857   0.000041280   0.000836138  -0.006206710  -0.000034176   0.009388776

   10    4.2  1.5  1.5   0.000187283   0.003086470   0.000461812  -0.018311574  -0.000078117   0.003677573
                        -0.000191101  -0.003824939  -0.000764222   0.019718627  -0.000024482   0.006763429

   11    5.2  1.5  1.5  -0.004916853   0.000242700  -0.026920930  -0.000752604  -0.015382139  -0.000029518
                        -0.000016033  -0.000044116   0.000043207  -0.000066747   0.000000192  -0.000051283

   12    6.2  1.5  1.5  -0.000160557  -0.003827725  -0.000597727   0.019726790   0.000070822   0.006766163
                        -0.000208089  -0.003086193  -0.000574987   0.018310857   0.000013620  -0.003678883

   13    7.2  1.5  1.5   0.000008799   0.000023240  -0.000024662   0.000055137  -0.000000004   0.000000033
                        -0.017920794   0.000732691  -0.020644398  -0.000783665  -0.013229493  -0.000048172

   14    8.2  1.5  1.5   0.000015650   0.000041274  -0.000043846   0.000098270  -0.000000003   0.000000196
                         0.020654940  -0.000690503  -0.017942744  -0.000543466  -0.007835564  -0.000028550

   15    1.2  1.5  0.5  -0.346248568   0.010755694   0.587063143   0.017638193   0.288469485  -0.001196064
                        -0.000357091   0.000896089  -0.001916849   0.004244471  -0.000409325  -0.004140296

   16    2.2  1.5  0.5   0.000539109  -0.000334649  -0.001287998   0.005083475  -0.000391402   0.006684668
                        -0.531168152   0.021908671  -0.426176919  -0.021311883  -0.288363224   0.011262368

   17    3.2  1.5  0.5  -0.004801156  -0.029032441  -0.000597474   0.172635591   0.001360107   0.275192927
                         0.014701631   0.035539192   0.017540818  -0.185141092   0.005153901   0.506828557

   18    4.2  1.5  0.5   0.026911139  -0.000896433  -0.004923770  -0.000054535  -0.013323140  -0.000048529
                         0.000004369  -0.000112301   0.000022511  -0.000071421   0.000008218  -0.000000041

   19    5.2  1.5  0.5   0.000478780   0.016987003   0.000015236   0.003363557   0.000056086   0.000001942
                        -0.000598856  -0.020882725   0.000058001  -0.003592611   0.000082632   0.000003503

   20    6.2  1.5  0.5  -0.000010591  -0.000081433  -0.000022234   0.000035681   0.000007864   0.000000162
                         0.026917009  -0.000838335  -0.004919298  -0.000046039   0.013320284   0.000048475

   21    7.2  1.5  0.5   0.000561648   0.016008377  -0.000465564   0.013127025  -0.000025194   0.006883457
                         0.000403366   0.013033702  -0.000297691   0.012222688   0.000013732  -0.003737596

   22    8.2  1.5  0.5   0.000554566   0.013922161   0.000612605  -0.015129650   0.000042319  -0.011638702
                         0.000481035   0.011306274   0.000492373  -0.014052102  -0.000022867   0.006319586

   23    1.2  1.5 -0.5  -0.006089254  -0.218132835   0.008874482  -0.400407862  -0.004209257  -0.137291009
                         0.008911168   0.268898243  -0.015822925   0.429325462   0.000924540  -0.253704533

   24    2.2  1.5 -0.5   0.017211216   0.412502166   0.019087921  -0.311738039   0.013087220   0.253602598
                         0.013560085   0.334636907   0.010755899  -0.290599072   0.000500406  -0.137256056

   25    3.2  1.5 -0.5   0.045890137  -0.014436309   0.253139546   0.013272789   0.576720325  -0.005178298
                        -0.000110096  -0.005548156  -0.000800828   0.011483481  -0.000004774   0.001264045

   26    4.2  1.5 -0.5   0.000478320   0.016971870   0.000015325   0.003362990  -0.000023193   0.006350261
                        -0.000766430  -0.020884565   0.000088545  -0.003596432  -0.000042628   0.011712400

   27    5.2  1.5 -0.5  -0.026919257   0.000766694   0.004921354   0.000032190   0.000004005  -0.000099381
                         0.000008533   0.000006240  -0.000025525   0.000050597   0.000000035  -0.000009858

   28    6.2  1.5 -0.5  -0.000599142  -0.020893044   0.000058022  -0.003593339   0.000042678  -0.011709721
                        -0.000592001  -0.016970746   0.000005118  -0.003359747  -0.000022989   0.006349210

   29    7.2  1.5 -0.5   0.000015640   0.000041288  -0.000043826   0.000098059  -0.000000007  -0.000000045
                         0.020643287  -0.000690252  -0.017936303  -0.000543833   0.007832727   0.000028693

   30    8.2  1.5 -0.5  -0.000008802  -0.000023447   0.000024656  -0.000055191  -0.000000009  -0.000000097
                         0.017934836  -0.000733750   0.020648662   0.000784009  -0.013243736  -0.000048102

   31    1.2  1.5 -1.5   0.080249790  -0.000640313   0.438753652   0.016293333  -0.499821375  -0.001822398
                         0.000194617  -0.004151324  -0.000044210   0.000782297  -0.000735098  -0.000003447

   32    2.2  1.5 -1.5  -0.000761291  -0.012312625   0.000155300  -0.003913803   0.000635720   0.000002954
                         0.080584237   0.009766531   0.438493139   0.017975250  -0.499625471  -0.001822439

   33    3.2  1.5 -1.5  -0.016051409  -0.479481535   0.003729552  -0.094780245  -0.004095990  -0.000029160
                         0.019679906   0.589513415  -0.013157287   0.101062669   0.012132186   0.000017918

   34    4.2  1.5 -1.5   0.004914890  -0.000266421   0.026909795   0.000874454  -0.007698604  -0.000058791
                         0.000017771   0.000024779  -0.000030174   0.000180656  -0.000004533  -0.000056968

   35    5.2  1.5 -1.5   0.000187325   0.003089057   0.000462552  -0.018328703   0.000059153  -0.007339819
                        -0.000160496  -0.003825366  -0.000597423   0.019717937   0.000001469  -0.013518035

   36    6.2  1.5 -1.5  -0.000019744  -0.000060190   0.000024099   0.000015521   0.000004380   0.000045764
                         0.004916877  -0.000255845   0.026915296   0.000829245  -0.007701631   0.000055740

   37    7.2  1.5 -1.5  -0.000553875  -0.013911263  -0.000612316   0.015126518   0.000042318  -0.011626182
                        -0.000480208  -0.011297419  -0.000492179   0.014049208  -0.000023015   0.006312793

   38    8.2  1.5 -1.5   0.000561834   0.016017413  -0.000465438   0.013131736   0.000024997  -0.006885956
                         0.000403535   0.013041061  -0.000297286   0.012227081  -0.000013796   0.003738941


 Composition of spin-orbit eigenvectors
 ======================================

   Nr   State  S   Sz       1        2        3        4        5        6        7        8        9       10

    1    1.2  0.5  0.5  65.575%   1.136%   0.000%   0.000%  33.199%   0.088%   0.000%   0.000%   0.000%   0.000%
    2    2.2  0.5  0.5   0.284%  16.374%  49.743%   0.241%   0.088%  33.267%   0.000%   0.000%   0.000%   0.000%
    3    3.2  0.5  0.5  16.346%   0.283%   0.241%  49.772%  33.266%   0.088%   0.000%   0.000%   0.000%   0.000%
    4    1.2  0.5 -0.5   1.136%  65.575%   0.000%   0.000%   0.088%  33.199%   0.000%   0.000%   0.000%   0.000%
    5    2.2  0.5 -0.5  16.374%   0.284%   0.241%  49.743%  33.267%   0.088%   0.000%   0.000%   0.000%   0.000%
    6    3.2  0.5 -0.5   0.283%  16.346%  49.772%   0.241%   0.088%  33.266%   0.000%   0.000%   0.000%   0.000%
    7    1.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    8    2.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    9    3.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   10    4.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.301%   0.000%   5.648%   0.325%
   11    5.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.015%  25.644%   1.049%  17.284%
   12    6.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   4.618%   0.005%  21.726%   1.304%
   13    7.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.022%  40.531%   0.287%   5.046%
   14    8.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.697%   0.270%   4.725%
   15    1.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   16    2.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   17    3.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   18    4.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   1.214%   0.086%   1.501%
   19    5.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.005%   0.001%   7.166%   0.433%
   20    6.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.008%  15.133%   0.447%   7.400%
   21    7.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  11.102%   0.006%  22.503%   1.288%
   22    8.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.696%   0.000%   1.428%   0.082%
   23    1.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   24    2.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   25    3.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   26    4.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   1.214%   0.001%   1.501%   0.086%
   27    5.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.005%   0.433%   7.166%
   28    6.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  15.133%   0.008%   7.400%   0.447%
   29    7.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.006%  11.102%   1.288%  22.503%
   30    8.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.696%   0.082%   1.428%
   31    1.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   32    2.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   33    3.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   34    4.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.301%   0.325%   5.648%
   35    5.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  25.644%   0.015%  17.284%   1.049%
   36    6.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.005%   4.618%   1.304%  21.726%
   37    7.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  40.531%   0.022%   5.046%   0.287%
   38    8.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.697%   0.000%   4.725%   0.270%

   Nr   State  S   Sz      11       12       13       14       15       16       17       18       19       20

    1    1.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    2    2.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    3    3.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    4    1.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    5    2.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    6    3.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    7    1.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.052%   0.000%   0.214%   0.000%   0.003%
    8    2.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.115%   0.000%   0.110%   0.000%   0.042%
    9    3.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.104%   0.000%   0.035%   0.000%   0.056%   0.000%
   10    4.2  1.5  1.5  15.206%   0.317%  12.411%   0.004%   0.020%  18.003%   0.002%   3.538%   0.010%  18.881%
   11    5.2  1.5  1.5   0.139%   7.038%   0.000%   0.000%   1.237%   0.003%   1.555%   0.002%   5.884%   0.001%
   12    6.2  1.5  1.5   6.314%   0.136%   0.002%   0.000%   0.002%   1.197%   0.019%  30.817%   0.004%   8.632%
   13    7.2  1.5  1.5   0.000%   0.010%   0.000%   0.000%  12.842%   0.014%   6.677%   0.004%   0.019%   0.000%
   14    8.2  1.5  1.5   0.336%  16.066%   0.006%  12.299%  15.626%   0.017%   3.904%   0.003%  20.500%   0.012%
   15    1.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.145%   0.000%   0.075%   0.000%   0.000%   0.000%
   16    2.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.033%   0.000%   0.002%   0.000%   0.184%   0.000%
   17    3.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.039%   0.000%   0.051%   0.000%   0.202%
   18    4.2  1.5  0.5   0.119%   5.285%   0.015%  37.462%   5.806%   0.006%   5.157%   0.007%   8.217%   0.006%
   19    5.2  1.5  0.5  20.490%   0.454%   0.000%   0.000%   0.001%   0.205%   0.028%  39.564%   0.006%  11.307%
   20    6.2  1.5  0.5   0.477%  22.124%   0.000%   0.004%   0.482%   0.001%   1.536%   0.002%  17.105%   0.007%
   21    7.2  1.5  0.5   0.032%   0.001%   0.018%   0.000%   0.041%  38.179%   0.001%   1.776%   0.000%   0.067%
   22    8.2  1.5  0.5   5.335%   0.120%  37.763%   0.014%   0.006%   5.823%   0.003%   4.916%   0.005%   8.847%
   23    1.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.145%   0.000%   0.075%   0.000%   0.000%
   24    2.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.033%   0.000%   0.002%   0.000%   0.184%
   25    3.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.039%   0.000%   0.051%   0.000%   0.202%   0.000%
   26    4.2  1.5 -0.5   5.285%   0.119%  37.462%   0.015%   0.006%   5.806%   0.007%   5.157%   0.006%   8.217%
   27    5.2  1.5 -0.5   0.454%  20.490%   0.000%   0.000%   0.205%   0.001%  39.564%   0.028%  11.307%   0.006%
   28    6.2  1.5 -0.5  22.124%   0.477%   0.004%   0.000%   0.001%   0.482%   0.002%   1.536%   0.007%  17.105%
   29    7.2  1.5 -0.5   0.001%   0.032%   0.000%   0.018%  38.179%   0.041%   1.776%   0.001%   0.067%   0.000%
   30    8.2  1.5 -0.5   0.120%   5.335%   0.014%  37.763%   5.823%   0.006%   4.916%   0.003%   8.847%   0.005%
   31    1.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.052%   0.000%   0.214%   0.000%   0.003%   0.000%
   32    2.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.115%   0.000%   0.110%   0.000%   0.042%   0.000%
   33    3.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.104%   0.000%   0.035%   0.000%   0.056%
   34    4.2  1.5 -1.5   0.317%  15.206%   0.004%  12.411%  18.003%   0.020%   3.538%   0.002%  18.881%   0.010%
   35    5.2  1.5 -1.5   7.038%   0.139%   0.000%   0.000%   0.003%   1.237%   0.002%   1.555%   0.001%   5.884%
   36    6.2  1.5 -1.5   0.136%   6.314%   0.000%   0.002%   1.197%   0.002%  30.817%   0.019%   8.632%   0.004%
   37    7.2  1.5 -1.5   0.010%   0.000%   0.000%   0.000%   0.014%  12.842%   0.004%   6.677%   0.000%   0.019%
   38    8.2  1.5 -1.5  16.066%   0.336%  12.299%   0.006%   0.017%  15.626%   0.003%   3.904%   0.012%  20.500%

   Nr   State  S   Sz      21       22       23       24       25       26       27       28       29       30

    1    1.2  0.5  0.5   0.001%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%
    2    2.2  0.5  0.5   0.000%   0.000%   0.001%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%
    3    3.2  0.5  0.5   0.001%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%
    4    1.2  0.5 -0.5   0.000%   0.001%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%
    5    2.2  0.5 -0.5   0.000%   0.000%   0.000%   0.001%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%
    6    3.2  0.5 -0.5   0.000%   0.001%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%
    7    1.2  1.5  1.5   0.000%   0.000%   0.074%   0.000%   0.000%   0.030%   0.020%  43.937%   0.011%   0.222%
    8    2.2  1.5  1.5   0.000%   0.000%   0.075%   0.000%   0.000%   0.030%   0.024%  53.044%   0.030%   0.687%
    9    3.2  1.5  1.5   0.225%   0.000%   0.000%   0.000%   0.000%   0.000%   0.204%   0.043%  36.362%   0.000%
   10    4.2  1.5  1.5   0.000%   0.015%  19.989%   0.002%   0.000%   5.047%   0.000%   0.133%   0.000%   0.010%
   11    5.2  1.5  1.5   0.029%   0.000%   0.000%  20.042%  19.935%   0.000%   0.001%   0.000%   0.004%   0.000%
   12    6.2  1.5  1.5   0.000%   0.019%  19.897%   0.000%   0.001%   5.026%   0.000%   0.075%   0.000%   0.007%
   13    7.2  1.5  1.5   5.797%   0.000%   0.001%  14.023%  14.535%   0.000%   0.002%   0.000%   0.037%   0.000%
   14    8.2  1.5  1.5  14.162%   0.000%   0.000%   5.851%   5.246%   0.000%   0.000%   0.000%   0.196%   0.000%
   15    1.2  1.5  0.5   0.069%   0.000%   0.000%   0.104%   0.010%   0.000%   0.913%   0.000%  16.796%   0.001%
   16    2.2  1.5  0.5   0.080%   0.000%   0.000%   0.095%   0.009%   0.000%   0.032%   0.004%  40.301%   0.001%
   17    3.2  1.5  0.5   0.000%   0.000%   0.025%   0.000%   0.000%   0.039%   0.002%   1.288%   0.031%   5.070%
   18    4.2  1.5  0.5  19.755%   0.000%   0.000%   0.026%  15.149%   0.000%   0.002%   0.000%   0.000%   0.000%
   19    5.2  1.5  0.5   0.001%  19.992%   0.019%   0.000%   0.001%   0.000%   0.000%   0.119%   0.000%   0.108%
   20    6.2  1.5  0.5  20.175%   0.001%   0.000%   0.017%  14.891%   0.000%   0.001%   0.000%   0.028%   0.000%
   21    7.2  1.5  0.5   0.000%  14.055%   5.566%   0.000%   0.000%   5.086%   0.000%   0.124%   0.000%   0.056%
   22    8.2  1.5  0.5   0.000%   5.622%  14.188%   0.001%   0.000%  14.961%   0.000%   0.030%   0.000%   0.044%
   23    1.2  1.5 -0.5   0.000%   0.069%   0.104%   0.000%   0.000%   0.010%   0.000%   0.913%   0.001%  16.796%
   24    2.2  1.5 -0.5   0.000%   0.080%   0.095%   0.000%   0.000%   0.009%   0.004%   0.032%   0.001%  40.301%
   25    3.2  1.5 -0.5   0.000%   0.000%   0.000%   0.025%   0.039%   0.000%   1.288%   0.002%   5.070%   0.031%
   26    4.2  1.5 -0.5   0.000%  19.755%   0.026%   0.000%   0.000%  15.149%   0.000%   0.002%   0.000%   0.000%
   27    5.2  1.5 -0.5  19.992%   0.001%   0.000%   0.019%   0.000%   0.001%   0.119%   0.000%   0.108%   0.000%
   28    6.2  1.5 -0.5   0.001%  20.175%   0.017%   0.000%   0.000%  14.891%   0.000%   0.001%   0.000%   0.028%
   29    7.2  1.5 -0.5  14.055%   0.000%   0.000%   5.566%   5.086%   0.000%   0.124%   0.000%   0.056%   0.000%
   30    8.2  1.5 -0.5   5.622%   0.000%   0.001%  14.188%  14.961%   0.000%   0.030%   0.000%   0.044%   0.000%
   31    1.2  1.5 -1.5   0.000%   0.000%   0.000%   0.074%   0.030%   0.000%  43.937%   0.020%   0.222%   0.011%
   32    2.2  1.5 -1.5   0.000%   0.000%   0.000%   0.075%   0.030%   0.000%  53.044%   0.024%   0.687%   0.030%
   33    3.2  1.5 -1.5   0.000%   0.225%   0.000%   0.000%   0.000%   0.000%   0.043%   0.204%   0.000%  36.362%
   34    4.2  1.5 -1.5   0.015%   0.000%   0.002%  19.989%   5.047%   0.000%   0.133%   0.000%   0.010%   0.000%
   35    5.2  1.5 -1.5   0.000%   0.029%  20.042%   0.000%   0.000%  19.935%   0.000%   0.001%   0.000%   0.004%
   36    6.2  1.5 -1.5   0.019%   0.000%   0.000%  19.897%   5.026%   0.001%   0.075%   0.000%   0.007%   0.000%
   37    7.2  1.5 -1.5   0.000%   5.797%  14.023%   0.001%   0.000%  14.535%   0.000%   0.002%   0.000%   0.037%
   38    8.2  1.5 -1.5   0.000%  14.162%   5.851%   0.000%   0.000%   5.246%   0.000%   0.000%   0.000%   0.196%

   Nr   State  S   Sz      31       32       33       34       35       36       37       38

    1    1.2  0.5  0.5   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%
    2    2.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%
    3    3.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    4    1.2  0.5 -0.5   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%
    5    2.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%
    6    3.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    7    1.2  1.5  1.5   0.117%  10.414%   0.002%   0.644%   0.027%  19.250%   0.000%  24.982%
    8    2.2  1.5  1.5   0.009%   0.934%   0.025%   0.649%   0.034%  19.228%   0.000%  24.963%
    9    3.2  1.5  1.5   3.156%   0.052%  57.743%   0.064%   1.920%   0.019%   0.000%   0.016%
   10    4.2  1.5  1.5   0.001%   0.056%   0.000%   0.002%   0.000%   0.072%   0.000%   0.006%
   11    5.2  1.5  1.5   0.037%   0.000%   0.002%   0.000%   0.072%   0.000%   0.024%   0.000%
   12    6.2  1.5  1.5   0.001%   0.116%   0.000%   0.002%   0.000%   0.072%   0.000%   0.006%
   13    7.2  1.5  1.5   0.056%   0.001%   0.032%   0.000%   0.043%   0.000%   0.018%   0.000%
   14    8.2  1.5  1.5   0.001%   0.000%   0.043%   0.000%   0.032%   0.000%   0.006%   0.000%
   15    1.2  1.5  0.5  26.716%   0.347%  11.989%   0.012%  34.465%   0.033%   8.321%   0.002%
   16    2.2  1.5  0.5   4.372%   0.080%  28.214%   0.048%  18.163%   0.048%   8.315%   0.017%
   17    3.2  1.5  0.5   0.585%  52.730%   0.024%   0.211%   0.031%   6.408%   0.003%  33.261%
   18    4.2  1.5  0.5   0.091%   0.001%   0.072%   0.000%   0.002%   0.000%   0.018%   0.000%
   19    5.2  1.5  0.5   0.000%   0.024%   0.000%   0.072%   0.000%   0.002%   0.000%   0.000%
   20    6.2  1.5  0.5   0.065%   0.001%   0.072%   0.000%   0.002%   0.000%   0.018%   0.000%
   21    7.2  1.5  0.5   0.000%   0.016%   0.000%   0.043%   0.000%   0.032%   0.000%   0.006%
   22    8.2  1.5  0.5   0.000%   0.022%   0.000%   0.032%   0.000%   0.043%   0.000%   0.018%
   23    1.2  1.5 -0.5   0.347%  26.716%   0.012%  11.989%   0.033%  34.465%   0.002%   8.321%
   24    2.2  1.5 -0.5   0.080%   4.372%   0.048%  28.214%   0.048%  18.163%   0.017%   8.315%
   25    3.2  1.5 -0.5  52.730%   0.585%   0.211%   0.024%   6.408%   0.031%  33.261%   0.003%
   26    4.2  1.5 -0.5   0.001%   0.091%   0.000%   0.072%   0.000%   0.002%   0.000%   0.018%
   27    5.2  1.5 -0.5   0.024%   0.000%   0.072%   0.000%   0.002%   0.000%   0.000%   0.000%
   28    6.2  1.5 -0.5   0.001%   0.065%   0.000%   0.072%   0.000%   0.002%   0.000%   0.018%
   29    7.2  1.5 -0.5   0.016%   0.000%   0.043%   0.000%   0.032%   0.000%   0.006%   0.000%
   30    8.2  1.5 -0.5   0.022%   0.000%   0.032%   0.000%   0.043%   0.000%   0.018%   0.000%
   31    1.2  1.5 -1.5  10.414%   0.117%   0.644%   0.002%  19.250%   0.027%  24.982%   0.000%
   32    2.2  1.5 -1.5   0.934%   0.009%   0.649%   0.025%  19.228%   0.034%  24.963%   0.000%
   33    3.2  1.5 -1.5   0.052%   3.156%   0.064%  57.743%   0.019%   1.920%   0.016%   0.000%
   34    4.2  1.5 -1.5   0.056%   0.001%   0.002%   0.000%   0.072%   0.000%   0.006%   0.000%
   35    5.2  1.5 -1.5   0.000%   0.037%   0.000%   0.002%   0.000%   0.072%   0.000%   0.024%
   36    6.2  1.5 -1.5   0.116%   0.001%   0.002%   0.000%   0.072%   0.000%   0.006%   0.000%
   37    7.2  1.5 -1.5   0.001%   0.056%   0.000%   0.032%   0.000%   0.043%   0.000%   0.018%
   38    8.2  1.5 -1.5   0.000%   0.001%   0.000%   0.043%   0.000%   0.032%   0.000%   0.006%


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
              1      24       31.91       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7      348.14       700     1000      520     2100     2140     5201     5203   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI     LSINT        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *     12003.55  10514.45      1.62   1240.87    242.29      3.46      0.10      0.48
 REAL TIME  *     12150.65 SEC
 DISK USED  *       380.13 MB (local),        4.69 GB (total)
 SF USED    *         2.71 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCVTZ-DK energy=   -461.021620716645

              CI              CI           MULTI         RHF-SCF
   -460.81973357   -461.33734312   -460.22109144   -460.88965810
 **********************************************************************************************************************************
 Molpro calculation terminated with 1 warning(s)
