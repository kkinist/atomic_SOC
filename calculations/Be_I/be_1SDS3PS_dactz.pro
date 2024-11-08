
 Working directory              : /wrk/irikura/molpro.mHRCDz29to/
 Global scratch directory       : /wrk/irikura/molpro.mHRCDz29to/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.mHRCDz29to/

 id        : nistki

 Nodes         nprocs
 gamba.nist.gov    5
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1042), CPU time= 0.01 sec
 ***,Be SO-CI
 memory,1000,M;
 
 gprint,orbitals,civector,basis;
 
 symmetry,xyz
 geometry={Be};
 
 basis={
 spdf,be,aug-cc-pwCVTZ-DK;C; spd,1,even,nprim=1,ratio=3.0;
 }
 
 set,dkho=101
 
 {rhf;wf,nelec=4,sym=1,spin=0}
 
 {multi
     closed,1,0
     occ,3,3
     wf,sym=1,spin=0;state,7;
     wf,sym=1,spin=2;state,4;
     expec2,lxx,lyy,lzz;
 }
 table, energy, ll
 title, Energies and &lt;L**2&gt; values
 
 core,0,0
 {ci;wf,sym=1,spin=0;state,7; save,5201.2}
 hlsdiag = energd4
 {ci;wf,sym=1,spin=2;state,4; save,5202.2}
 hlsdiag(8) = energd4
 
 table,hlsdiag
 
 {ci;hlsmat,ls,5201.2,5202.2;print,vls=0,hls=0}                                  !compute and diagonalize SO matrix
 Commands initialized (847), CPU time= 0.01 sec, 718 directives.
 Default parameters read. Elapsed time= 0.11 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2024.1 linked Wed Jan 31 05:42:09 2024


 **********************************************************************************************************************************
 LABEL *   Be SO-CI                                                                                                                                                      
  (24 PROC) 64 bit mpp version                                                           DATE: 30-Oct-24          TIME: 11:00:54  
 **********************************************************************************************************************************

 SHA1:             675817fde4514a4a933b69e420913a90cee4ef91
 **********************************************************************************************************************************

 Memory per process:      1000 MW
 Total memory per node:   5000 MW

 GA preallocation disabled
 GA check disabled

 Variable memory set to 1000.0 MW


 ZSYMEL=XYZ

 SETTING BASIS          =    USERDEF
 SETTING DKHO           =       101.00000000                                  


 Recomputing integrals since basis changed


 Using spherical harmonics

 Library entry BE     S AUG-CC-PWCVTZ-DK     selected for orbital group  1
 Even tempered Be S diffuse               selected for group 1    nprim= 1    centre=  0.005    ratio= 3.000    dratio= 1.000
 Library entry BE     P AUG-CC-PWCVTZ-DK     selected for orbital group  1
 Even tempered Be P diffuse               selected for group 1    nprim= 1    centre=  0.003    ratio= 3.000    dratio= 1.000
 Library entry BE     D AUG-CC-PWCVTZ-DK     selected for orbital group  1
 Even tempered Be D diffuse               selected for group 1    nprim= 1    centre=  0.020    ratio= 3.000    dratio= 1.000
 Library entry BE     F AUG-CC-PWCVTZ-DK     selected for orbital group  1


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

   1  BE      4.00    0.000000000    0.000000000    0.000000000


 BASIS DATA

   Nr Sym  Nuc  Type         Exponents   Contraction coefficients

    1.1 Ag    1  1s        6863.000000     0.000290   -0.000053    0.000000    0.000000
    2.1 Ag                 1030.000000     0.001885   -0.000343    0.000000    0.000000
    3.1 Ag                  234.700000     0.009543   -0.001754    0.000000    0.000000
    4.1 Ag                   66.560000     0.038076   -0.007036    0.000000    0.000000
                             21.690000     0.120094   -0.023161    0.000000    0.000000
                              7.734000     0.282212   -0.058161    0.000000    0.000000
                              2.916000     0.427315   -0.114586    0.000000    0.000000
                              1.130000     0.266128   -0.135784    0.000000    0.000000
                              0.257700     0.018205    0.228213    1.000000    0.000000
                              0.110100    -0.007287    0.577373    0.000000    0.000000
                              0.044090     0.001907    0.317746    0.000000    1.000000
    5.1 Ag    1  1s           3.956400     1.000000
    6.1 Ag    1  1s           1.416400     1.000000
    7.1 Ag    1  1s           0.014700     1.000000
    8.1 Ag    1  1s           0.004900     1.000000
    9.1 Ag    1  3d0          0.349300     1.000000
   10.1 Ag    1  3d2-         0.349300     1.000000
   11.1 Ag    1  3d1+         0.349300     1.000000
   12.1 Ag    1  3d2+         0.349300     1.000000
   13.1 Ag    1  3d1-         0.349300     1.000000
   14.1 Ag    1  3d0          0.172400     1.000000
   15.1 Ag    1  3d2-         0.172400     1.000000
   16.1 Ag    1  3d1+         0.172400     1.000000
   17.1 Ag    1  3d2+         0.172400     1.000000
   18.1 Ag    1  3d1-         0.172400     1.000000
   19.1 Ag    1  3d0          1.619300     1.000000
   20.1 Ag    1  3d2-         1.619300     1.000000
   21.1 Ag    1  3d1+         1.619300     1.000000
   22.1 Ag    1  3d2+         1.619300     1.000000
   23.1 Ag    1  3d1-         1.619300     1.000000
   24.1 Ag    1  3d0          0.058800     1.000000
   25.1 Ag    1  3d2-         0.058800     1.000000
   26.1 Ag    1  3d1+         0.058800     1.000000
   27.1 Ag    1  3d2+         0.058800     1.000000
   28.1 Ag    1  3d1-         0.058800     1.000000
   29.1 Ag    1  3d0          0.019600     1.000000
   30.1 Ag    1  3d2-         0.019600     1.000000
   31.1 Ag    1  3d1+         0.019600     1.000000
   32.1 Ag    1  3d2+         0.019600     1.000000
   33.1 Ag    1  3d1-         0.019600     1.000000
    1.2 Au    1  2px          7.436000     0.010748
                              1.577000     0.062856
                              0.435200     0.248198
                              0.143800     0.523640
                              0.049940     0.353475
    2.2 Au    1  2py          7.436000     0.010748
                              1.577000     0.062856
                              0.435200     0.248198
                              0.143800     0.523640
                              0.049940     0.353475
    3.2 Au    1  2pz          7.436000     0.010748
                              1.577000     0.062856
                              0.435200     0.248198
                              0.143800     0.523640
                              0.049940     0.353475
    4.2 Au    1  2px          7.436000     0.000000
                              1.577000     0.000000
                              0.435200     0.000000
                              0.143800     1.000000
                              0.049940     0.000000
    5.2 Au    1  2py          7.436000     0.000000
                              1.577000     0.000000
                              0.435200     0.000000
                              0.143800     1.000000
                              0.049940     0.000000
    6.2 Au    1  2pz          7.436000     0.000000
                              1.577000     0.000000
                              0.435200     0.000000
                              0.143800     1.000000
                              0.049940     0.000000
    7.2 Au    1  2px          7.436000     0.000000
                              1.577000     0.000000
                              0.435200     0.000000
                              0.143800     0.000000
                              0.049940     1.000000
    8.2 Au    1  2py          7.436000     0.000000
                              1.577000     0.000000
                              0.435200     0.000000
                              0.143800     0.000000
                              0.049940     1.000000
    9.2 Au    1  2pz          7.436000     0.000000
                              1.577000     0.000000
                              0.435200     0.000000
                              0.143800     0.000000
                              0.049940     1.000000
   10.2 Au    1  2px          8.773300     1.000000
   11.2 Au    1  2py          8.773300     1.000000
   12.2 Au    1  2pz          8.773300     1.000000
   13.2 Au    1  2px          2.035400     1.000000
   14.2 Au    1  2py          2.035400     1.000000
   15.2 Au    1  2pz          2.035400     1.000000
   16.2 Au    1  2px          0.009300     1.000000
   17.2 Au    1  2py          0.009300     1.000000
   18.2 Au    1  2pz          0.009300     1.000000
   19.2 Au    1  2px          0.003100     1.000000
   20.2 Au    1  2py          0.003100     1.000000
   21.2 Au    1  2pz          0.003100     1.000000
   22.2 Au    1  4f1+         0.342300     1.000000
   23.2 Au    1  4f1-         0.342300     1.000000
   24.2 Au    1  4f0          0.342300     1.000000
   25.2 Au    1  4f3+         0.342300     1.000000
   26.2 Au    1  4f2-         0.342300     1.000000
   27.2 Au    1  4f3-         0.342300     1.000000
   28.2 Au    1  4f2+         0.342300     1.000000
   29.2 Au    1  4f1+         0.118800     1.000000
   30.2 Au    1  4f1-         0.118800     1.000000
   31.2 Au    1  4f0          0.118800     1.000000
   32.2 Au    1  4f3+         0.118800     1.000000
   33.2 Au    1  4f2-         0.118800     1.000000
   34.2 Au    1  4f3-         0.118800     1.000000
   35.2 Au    1  4f2+         0.118800     1.000000

 NUCLEAR CHARGE:                    4
 NUMBER OF PRIMITIVE AOS:          92
 NUMBER OF SYMMETRY AOS:           81
 NUMBER OF CONTRACTIONS:           68   (   33Ag  +   35Au  )
 NUMBER OF INNER CORE ORBITALS:     0   (    0Ag  +    0Au  )
 NUMBER OF OUTER CORE ORBITALS:     1   (    1Ag  +    0Au  )
 NUMBER OF VALENCE ORBITALS:        4   (    1Ag  +    3Au  )


 NUCLEAR REPULSION ENERGY    0.00000000

 One-electron integrals computed with SEWARD

 eXact-2-Component (X2C) method activated

 Computing Douglas-Kroll / X2C integrals

 AO integral compression algorithm  1   Integral accuracy      1.0D-11

     3.932 MB (compressed) written to integral file ( 18.7%)

     Node minimum: 0.786 MB, node maximum: 0.786 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:     283703.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:     283703      RECORD LENGTH: 524288

 Memory used in sort:       0.84 MW

 SORT1 READ     3091078. AND WROTE       64229. INTEGRALS IN      1 RECORDS. CPU TIME:     0.02 SEC, REAL TIME:     0.02 SEC
 SORT2 READ      305427. AND WROTE     1416696. INTEGRALS IN     15 RECORDS. CPU TIME:     0.01 SEC, REAL TIME:     0.02 SEC

 Node minimum:      282989.  Node maximum:      283703. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000

 EXTRA SYMMETRY OF AOS IN SYMMETRY 1:   1 1 1 1 1 1 1 1 2 3   4 5 6 2 3 4 5 6 2 3   4 5 6 2 3 4 5 6 2 3   4 5 6
 EXTRA SYMMETRY OF AOS IN SYMMETRY 2:   1 2 3 1 2 3 1 2 3 1   2 3 1 2 3 1 2 3 1 2   3 4 5 6 7 8 910 4 5   6 7 8 910

 Eigenvalues of metric

         1 0.361E-02 0.186E-01 0.538E-01 0.765E-01 0.765E-01 0.765E-01 0.765E-01 0.765E-01
         2 0.112E-01 0.112E-01 0.112E-01 0.163E+00 0.163E+00 0.163E+00 0.355E+00 0.355E+00


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      22       28.75       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600   
                                         AOSYM     SMH  

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         0.72      0.50
 REAL TIME  *         1.69 SEC
 DISK USED  *        29.07 MB (local),      167.13 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 Program * Restricted Hartree-Fock


   Atom=BE basis=MINAO             lmin=0  lmax=0

 Orbital guess generated from atomic densities.

 Initial occupancy:   2   0

 NELEC=    4   SYM=1   MS2= 0   THRE=1.0D-08   THRD=3.2D-06   THRG=3.2D-06  HFMA2=F  DIIS_START=2   DIIS_MAX=10   DIIS_INCORE=F

 Level shifts:    0.00 (CLOSED)    0.00 (OPEN)    0.30 (GAP_MIN)

 ITER           ETOT              DE          GRAD        DDIFF     DIIS  NEXP   TIME(IT)  TIME(TOT)  DIAG
   1      -14.57538888     -14.57538888     0.00D+00     0.82D-01     0     0       0.00      0.00    start
   2      -14.57538897      -0.00000009     0.32D-04     0.75D-04     1     0       0.01      0.01    diag
   3      -14.57538898      -0.00000001     0.40D-05     0.20D-04     2     0       0.00      0.01    diag
   4      -14.57538898      -0.00000000     0.91D-06     0.50D-05     3     0       0.00      0.01    diag
   5      -14.57538898      -0.00000000     0.71D-07     0.59D-06     4     0       0.00      0.01    diag
   6      -14.57538898      -0.00000000     0.53D-08     0.50D-07     0     0       0.00      0.01    diag

 Final occupancy:   2   0

 !RHF STATE 1.1 Energy                -14.575388980176
  RHF One-electron energy             -19.065775782346
  RHF Two-electron energy               4.490386802170
  RHF Kinetic energy                   14.593840458421
  RHF Nuclear energy                    0.000000000000
  RHF Virial quotient                  -0.998735666715

 !RHF STATE 1.1 Dipole moment           0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 ELECTRON ORBITALS
 =================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -4.73318     1  1  s    0.99945
    2.1     2.00000    -0.30932     1  2  s    1.00271


 HOMO      2.1    -0.309317 =      -8.4170eV
 LUMO      1.2     0.006874 =       0.1871eV
 LUMO-HOMO         0.316192 =       8.6040eV

 Orbitals saved in record  2100.2


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      22       28.75       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600   
                                         AOSYM     SMH  

              2       4        0.41       700     1000      520     2100   
                                         GEOM     BASIS   MCVARS     RHF  

 PROGRAMS   *        TOTAL   RHF-SCF       INT
 CPU TIMES  *         0.74      0.03      0.50
 REAL TIME  *         1.72 SEC
 DISK USED  *        29.36 MB (local),      168.56 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of closed-shell orbitals:   1 (    1    0)
 Number of active  orbitals:        5 (    2    3)
 Number of external orbitals:      62 (   30   32)

 State symmetry 1

 Number of active electrons:   2    Spin symmetry=Singlet   Space symmetry=1
 Number of states:             7
 Number of CSFs:               9   (13 determinants, 25 intermediate states)

 State symmetry 2

 Number of active electrons:   2    Spin symmetry=Triplet   Space symmetry=1
 Number of states:             4
 Number of CSFs:               4   (4 determinants, 10 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 1 6 3 4 5 2 2   3 5 6 4 1 5 2 6 3 4   1 4 5 3 2 6 1 2 4 6   5 3 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.496D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.496D+00 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   2 3 1 2 3 1 3 2 1 3   1 2 5 6 710 4 8 9 2   1 3 6 4 5 810 9 7 2   3 1 1 2 3

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.09091   0.09091   0.09091   0.09091   0.09091   0.09091   0.09091
 Weight factors for state symmetry  2:    0.09091   0.09091   0.09091   0.09091
 
 Number of orbital rotations:  188  ( 2 closed/active, 30 closed/virtual, 0 active/active, 156 active/virtual )
 Total number of variables:    295
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1   16   30   10    -13.95651538     -14.46703484   -0.51051945    0.04431108 0.00001077 0.00000000  0.19E+01      0.22
   2    7   12    0    -14.32574990     -14.35212066   -0.02637076    0.07723358 0.00000847 0.00000000  0.45E+00      0.47
   3    7   12    0    -14.35315204     -14.35334301   -0.00019097    0.00680648 0.00000007 0.00000000  0.34E-01      0.71
   4    5   10    0    -14.35334443     -14.35334445   -0.00000002    0.00007842 0.00000000 0.00000000  0.39E-03      0.86
   5    5   10    0    -14.35334445     -14.35334445   -0.00000000    0.00000001 0.00000000 0.00000000  0.50E-07      0.94

 CONVERGENCE REACHED!  Final gradient:    0.00000000 ( 0.28E-08)
                       Final energy:    -14.35334445
 
 Results for state 1.1 Singlet
 =============================
 !MCSCF STATE 1.1 Singlet Energy               -14.610611711829
 Nuclear energy                                  0.00000000
 Kinetic energy                                 14.69035073
 One electron energy                           -19.11017561
 Two electron energy                             4.49956389
 Virial ratio                                    1.99457201
 
 !MCSCF STATE 1.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Singlet
 =============================
 !MCSCF STATE 2.1 Singlet Energy               -14.362724667869
 Nuclear energy                                  0.00000000
 Kinetic energy                                 14.33231448
 One electron energy                           -18.14610649
 Two electron energy                             3.78338182
 Virial ratio                                    2.00212179
 
 !MCSCF STATE 2.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Singlet
 =============================
 !MCSCF STATE 3.1 Singlet Energy               -14.304495158368
 Nuclear energy                                  0.00000000
 Kinetic energy                                 14.34979847
 One electron energy                           -18.61263557
 Two electron energy                             4.30814041
 Virial ratio                                    1.99684293
 
 !MCSCF STATE 3.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Singlet
 =============================
 !MCSCF STATE 4.1 Singlet Energy               -14.304495158367
 Nuclear energy                                  0.00000000
 Kinetic energy                                 14.34979847
 One electron energy                           -18.61263557
 Two electron energy                             4.30814041
 Virial ratio                                    1.99684293
 
 !MCSCF STATE 4.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Singlet
 =============================
 !MCSCF STATE 5.1 Singlet Energy               -14.304495158365
 Nuclear energy                                  0.00000000
 Kinetic energy                                 14.34979847
 One electron energy                           -18.61263557
 Two electron energy                             4.30814041
 Virial ratio                                    1.99684293
 
 !MCSCF STATE 5.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Singlet
 =============================
 !MCSCF STATE 6.1 Singlet Energy               -14.304495158336
 Nuclear energy                                  0.00000000
 Kinetic energy                                 14.34979847
 One electron energy                           -18.61263557
 Two electron energy                             4.30814041
 Virial ratio                                    1.99684293
 
 !MCSCF STATE 6.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.1 Singlet
 =============================
 !MCSCF STATE 7.1 Singlet Energy               -14.304495158332
 Nuclear energy                                  0.00000000
 Kinetic energy                                 14.34979847
 One electron energy                           -18.61263557
 Two electron energy                             4.30814041
 Virial ratio                                    1.99684293
 
 !MCSCF STATE 7.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.1 Triplet
 =============================
 !MCSCF STATE 1.1 Triplet Energy               -14.376538087265
 Nuclear energy                                  0.00000000
 Kinetic energy                                 14.26741297
 One electron energy                           -18.08745990
 Two electron energy                             3.71092181
 Virial ratio                                    2.00764856
 
 !MCSCF STATE 1.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Triplet
 =============================
 !MCSCF STATE 2.1 Triplet Energy               -14.338146235066
 Nuclear energy                                  0.00000000
 Kinetic energy                                 14.34979847
 One electron energy                           -18.61263557
 Two electron energy                             4.27448934
 Virial ratio                                    1.99918799
 
 !MCSCF STATE 2.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Triplet
 =============================
 !MCSCF STATE 3.1 Triplet Energy               -14.338146235065
 Nuclear energy                                  0.00000000
 Kinetic energy                                 14.34979847
 One electron energy                           -18.61263557
 Two electron energy                             4.27448934
 Virial ratio                                    1.99918799
 
 !MCSCF STATE 3.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Triplet
 =============================
 !MCSCF STATE 4.1 Triplet Energy               -14.338146235064
 Nuclear energy                                  0.00000000
 Kinetic energy                                 14.34979847
 One electron energy                           -18.61263557
 Two electron energy                             4.27448934
 Virial ratio                                    1.99918799
 
 !MCSCF STATE 4.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 ? Warning
 ? Transition properties are only calculated between states of the same symmetry
 ? The problem occurs in mu_properties_expec2

 !MCSCF expec      <1.1 Singlet|LXLX|1.1 Singlet>     0.000000000000
 !MCSCF expec      <2.1 Singlet|LXLX|2.1 Singlet>     0.000000000000
 !MCSCF expec      <3.1 Singlet|LXLX|3.1 Singlet>     1.000000965324
 !MCSCF expec      <4.1 Singlet|LXLX|4.1 Singlet>     3.999998461477
 !MCSCF expec      <5.1 Singlet|LXLX|5.1 Singlet>     1.000000087725
 !MCSCF expec      <6.1 Singlet|LXLX|6.1 Singlet>     2.877943508271
 !MCSCF expec      <7.1 Singlet|LXLX|7.1 Singlet>     1.122067110325
 !MCSCF expec      <1.1 Triplet|LXLX|1.1 Triplet>     0.000000000000
 !MCSCF expec      <2.1 Triplet|LXLX|2.1 Triplet>     0.999999994058
 !MCSCF expec      <3.1 Triplet|LXLX|3.1 Triplet>     0.000000528566
 !MCSCF expec      <4.1 Triplet|LXLX|4.1 Triplet>     0.999999719537
 
 !MCSCF expec      <1.1 Singlet|LYLY|1.1 Singlet>    -0.000000000000
 !MCSCF expec      <2.1 Singlet|LYLY|2.1 Singlet>    -0.000000000000
 !MCSCF expec      <3.1 Singlet|LYLY|3.1 Singlet>     1.000000769030
 !MCSCF expec      <4.1 Singlet|LYLY|4.1 Singlet>     1.000000067618
 !MCSCF expec      <5.1 Singlet|LYLY|5.1 Singlet>     3.999999074152
 !MCSCF expec      <6.1 Singlet|LYLY|6.1 Singlet>     0.004779103402
 !MCSCF expec      <7.1 Singlet|LYLY|7.1 Singlet>     3.995220077606
 !MCSCF expec      <1.1 Triplet|LYLY|1.1 Triplet>    -0.000000000000
 !MCSCF expec      <2.1 Triplet|LYLY|2.1 Triplet>     0.000000525818
 !MCSCF expec      <3.1 Triplet|LYLY|3.1 Triplet>     0.999999993961
 !MCSCF expec      <4.1 Triplet|LYLY|4.1 Triplet>     0.999999470990
 
 !MCSCF expec      <1.1 Singlet|LZLZ|1.1 Singlet>    -0.000000000000
 !MCSCF expec      <2.1 Singlet|LZLZ|2.1 Singlet>     0.000000000000
 !MCSCF expec      <3.1 Singlet|LZLZ|3.1 Singlet>     3.999998265646
 !MCSCF expec      <4.1 Singlet|LZLZ|4.1 Singlet>     1.000001470905
 !MCSCF expec      <5.1 Singlet|LZLZ|5.1 Singlet>     1.000000838123
 !MCSCF expec      <6.1 Singlet|LZLZ|6.1 Singlet>     3.117277388327
 !MCSCF expec      <7.1 Singlet|LZLZ|7.1 Singlet>     0.882712812069
 !MCSCF expec      <1.1 Triplet|LZLZ|1.1 Triplet>     0.000000000000
 !MCSCF expec      <2.1 Triplet|LZLZ|2.1 Triplet>     0.999999480125
 !MCSCF expec      <3.1 Triplet|LZLZ|3.1 Triplet>     0.999999477473
 !MCSCF expec      <4.1 Triplet|LZLZ|4.1 Triplet>     0.000000809473
 
 !MCSCF expec      <1.1 Singlet|L**2|1.1 Singlet>    -0.000000000000
 !MCSCF expec      <2.1 Singlet|L**2|2.1 Singlet>     0.000000000000
 !MCSCF expec      <3.1 Singlet|L**2|3.1 Singlet>     6.000000000000
 !MCSCF expec      <4.1 Singlet|L**2|4.1 Singlet>     6.000000000000
 !MCSCF expec      <5.1 Singlet|L**2|5.1 Singlet>     6.000000000000
 !MCSCF expec      <6.1 Singlet|L**2|6.1 Singlet>     6.000000000000
 !MCSCF expec      <7.1 Singlet|L**2|7.1 Singlet>     6.000000000000
 !MCSCF expec      <1.1 Triplet|L**2|1.1 Triplet>     0.000000000000
 !MCSCF expec      <2.1 Triplet|L**2|2.1 Triplet>     2.000000000000
 !MCSCF expec      <3.1 Triplet|L**2|3.1 Triplet>     2.000000000000
 !MCSCF expec      <4.1 Triplet|L**2|4.1 Triplet>     2.000000000000
 
 ? Warning
 ? Extra symmerty contamination removed!
 ? The problem occurs in mu_orbitals_clean_extra
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 1 3 5 4 2 6 5   3 4 2 6 1 5 3 4 2 6   1 5 3 4 2 6 1 3 5 4   2 6 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 2 1 1 2 3 1 2 3 1   2 3 7 910 8 4 6 5 1   2 3 9 710 8 4 6 5 1   2 3 1 2 3
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -4.83429     1  1  s    0.99941
    2.1     0.34347    -0.13028     1  2  s    1.16696
    3.1     0.18121     0.02332     1  2  s   -0.65192    1  7  s    1.12877
    1.2     0.49177    -0.01142     1  1  pz   0.99623
    2.2     0.49177    -0.01142     1  1  py   0.99623
    3.2     0.49177    -0.01142     1  1  px   0.99623
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 1 (Singlet)
 =======================================
 
 20 000         0.94113944     -0.08645743      0.00000000      0.00000000     -0.00000000     -0.00000000      0.00000000
 00 020        -0.18224872      0.06973949      0.00000055      0.00002252      0.00001064      0.81600867     -0.02822263
 00 200        -0.18224872      0.06973949     -0.00000457      0.00001857     -0.00000558     -0.38356282      0.72079555
 00 a0b         0.00000000     -0.00000000      0.00035798      0.00010246      0.70710668     -0.00000921      0.00000058
 00 b0a        -0.00000000      0.00000000     -0.00035798     -0.00010246     -0.70710668      0.00000921     -0.00000058
 00 ba0         0.00000000     -0.00000000      0.00040110     -0.70710666      0.00010225      0.00002052      0.00002914
 00 ab0        -0.00000000      0.00000000     -0.00040110      0.70710666     -0.00010225     -0.00002052     -0.00002914
 00 0ba         0.00000000     -0.00000000     -0.70710658     -0.00040105      0.00035804      0.00000033     -0.00000430
 00 0ab        -0.00000000      0.00000000      0.70710658      0.00040105     -0.00035804     -0.00000033      0.00000430
 ab 000         0.08534789      0.69898858     -0.00000000     -0.00000000      0.00000000      0.00000000     -0.00000000
 ba 000        -0.08534789     -0.69898858      0.00000000      0.00000000     -0.00000000     -0.00000000      0.00000000
 00 002        -0.18224872      0.06973949      0.00000403     -0.00004109     -0.00000506     -0.43244585     -0.69257292
 
 Energy:      -14.61061171    -14.36272467    -14.30449516    -14.30449516    -14.30449516    -14.30449516    -14.30449516
 
 
 CI Coefficients of symmetry 1 (Triplet)
 =======================================
 
 aa 000         1.00000000      0.00000000     -0.00000000      0.00000000
 00 a0a         0.00000000      0.99999974     -0.00007761     -0.00072097
 00 aa0         0.00000000      0.00007709      0.99999974     -0.00072292
 00 0aa         0.00000000      0.00072102      0.00072286      0.99999948
 
 Energy:      -14.37653809    -14.33814624    -14.33814624    -14.33814624
 


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       29.40       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       5        0.60       700     1000      520     2100     2140   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF   

 PROGRAMS   *        TOTAL     MULTI   RHF-SCF       INT
 CPU TIMES  *         1.68      0.93      0.03      0.50
 REAL TIME  *         2.78 SEC
 DISK USED  *        30.08 MB (local),      172.18 MB (total)
 SF USED    *         2.17 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

        ENERGY      LL
    -14.61061171  -0.0
    -14.36272467   0.0
    -14.30449516   6.0
    -14.30449516   6.0
    -14.30449516   6.0
    -14.30449516   6.0
    -14.30449516   6.0
    -14.37653809   0.0
    -14.33814624   2.0
    -14.33814624   2.0
    -14.33814624   2.0
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 7  Roots:    1   2   3   4   5   6   7
 Number of reference states: 7  Roots:    1   2   3   4   5   6   7

 Reference symmetry:                   1   Singlet 
 Number of electrons:                  4
 Maximum number of shells:             3
 Maximum number of spin couplings:     2

 Reference space:        9 conf        9 CSFs
 N elec internal:       90 conf      105 CSFs
 N-1 el internal:       50 conf       70 CSFs
 N-2 el internal:       15 conf       24 CSFs

 Number of electrons in valence space:                      4
 Maximum number of open shell orbitals in reference space:  2
 Maximum number of open shell orbitals in internal spaces:  4


 Number of closed-shell orbitals:   1 (   1   0 )
 Number of active  orbitals:        5 (   2   3 )
 Number of external orbitals:      62 (  30  32 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Valence orbitals related to previous ones by unitary transformation. Operators transformed.


 Number of p-space configurations:   8

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1       -14.61061171
     2       -14.36272467
     3       -14.30449516
     4       -14.30449516
     5       -14.30449516
     6       -14.30449516
     7       -14.30449516

 Number of blocks in overlap matrix:    16   Smallest eigenvalue:  0.97D+00
 Number of N-2 electron functions:      18
 Number of N-1 electron functions:      70

 Number of internal configurations:                   57
 Number of singly external configurations:          2170
 Number of doubly external configurations:         17552
 Total number of contracted configurations:        19779
 Total number of uncontracted configurations:      25489

 Diagonal Coupling coefficients finished.               Storage:    193327 words, CPU-Time:      0.00 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:    201449 words, CPU-time:      0.00 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000   -14.61061171     0.00000000    -0.04953102  0.11D-01  0.27D-02     0.01
    1     2     2     1.00000000     0.00000000   -14.36272467    -0.00000000    -0.04718164  0.16D-01  0.26D-02     0.01
    1     3     3     1.00000000     0.00000000   -14.30449516    -0.00000000    -0.07096339  0.34D-01  0.11D-01     0.01
    1     4     4     1.00000000     0.00000000   -14.30449516    -0.00000000    -0.07102893  0.34D-01  0.11D-01     0.01
    1     5     5     1.00000000     0.00000000   -14.30449516    -0.00000000    -0.07096966  0.34D-01  0.11D-01     0.01
    1     6     6     1.00000000     0.00000000   -14.30449516    -0.00000000    -0.07419227  0.48D-01  0.11D-01     0.01
    1     7     7     1.00000000     0.00000000   -14.30449516    -0.00000000    -0.07416571  0.48D-01  0.11D-01     0.01
    2     1     1     1.01409843    -0.05050896   -14.66112067    -0.05050896    -0.00052676  0.86D-04  0.14D-03     0.08
    2     2     2     1.01812502    -0.04862085   -14.41134552    -0.04862085    -0.00073696  0.39D-03  0.29D-03     0.08
    2     3     3     1.06487665    -0.07772116   -14.38221632    -0.07772116    -0.00468611  0.96D-02  0.49D-03     0.08
    2     4     4     1.06483232    -0.07770696   -14.38220212    -0.07770696    -0.00469350  0.96D-02  0.49D-03     0.08
    2     5     5     1.05116500    -0.07557166   -14.38006681    -0.07557166    -0.00560925  0.13D-01  0.47D-03     0.08
    2     6     6     1.05116441    -0.07556099   -14.38005614    -0.07556099    -0.00561566  0.13D-01  0.47D-03     0.08
    2     7     7     1.05120664    -0.07555601   -14.38005116    -0.07555601    -0.00562213  0.13D-01  0.47D-03     0.08
    3     1     1     1.01430078    -0.05103986   -14.66165157    -0.00053090    -0.00001640  0.58D-05  0.52D-05     0.16
    3     2     2     1.02037044    -0.04945252   -14.41217719    -0.00083167    -0.00006319  0.47D-04  0.24D-04     0.16
    3     3     3     1.15417802    -0.08566312   -14.39015827    -0.00794195    -0.00099941  0.13D-02  0.16D-03     0.16
    3     4     4     1.15404531    -0.08565540   -14.39015056    -0.00794844    -0.00100462  0.13D-02  0.17D-03     0.16
    3     5     5     1.15623159    -0.08552060   -14.39001575    -0.00994894    -0.00113397  0.14D-02  0.20D-03     0.16
    3     6     6     1.15626669    -0.08551880   -14.39001396    -0.00995782    -0.00113493  0.14D-02  0.20D-03     0.16
    3     7     7     1.15585337    -0.08550732   -14.39000248    -0.00995131    -0.00114396  0.14D-02  0.21D-03     0.16
    4     1     1     1.01492613    -0.05105915   -14.66167086    -0.00001929    -0.00000059  0.98D-07  0.18D-06     0.24
    4     2     2     1.02337036    -0.04954644   -14.41227111    -0.00009392    -0.00000629  0.31D-05  0.19D-05     0.24
    4     3     3     1.21837605    -0.08713438   -14.39162954    -0.00147126    -0.00014534  0.32D-03  0.32D-04     0.24
    4     4     4     1.21835613    -0.08713402   -14.39162918    -0.00147862    -0.00014542  0.32D-03  0.32D-04     0.24
    4     5     5     1.21382616    -0.08708192   -14.39157707    -0.00156132    -0.00016985  0.37D-03  0.36D-04     0.24
    4     6     6     1.21378626    -0.08708150   -14.39157666    -0.00156270    -0.00016999  0.37D-03  0.36D-04     0.24
    4     7     7     1.21377566    -0.08708078   -14.39157594    -0.00157347    -0.00017028  0.37D-03  0.36D-04     0.24
    5     1     1     1.01498002    -0.05105980   -14.66167151    -0.00000065    -0.00000002  0.58D-08  0.59D-08     0.32
    5     2     2     1.02349155    -0.04955497   -14.41227964    -0.00000853    -0.00000042  0.24D-06  0.89D-07     0.32
    5     3     3     1.23617679    -0.08740776   -14.39190291    -0.00027338    -0.00002989  0.33D-04  0.74D-05     0.32
    5     4     4     1.23611892    -0.08740739   -14.39190255    -0.00027338    -0.00003009  0.33D-04  0.75D-05     0.32
    5     5     5     1.23364771    -0.08739447   -14.39188963    -0.00031256    -0.00003619  0.42D-04  0.94D-05     0.32
    5     6     6     1.23361948    -0.08739441   -14.39188957    -0.00031291    -0.00003620  0.42D-04  0.94D-05     0.32
    5     7     7     1.23358568    -0.08739392   -14.39188908    -0.00031314    -0.00003651  0.42D-04  0.96D-05     0.32
    6     1     1     1.01497439    -0.05105982   -14.66167154    -0.00000002    -0.00000000  0.19D-09  0.15D-09     0.40
    6     2     2     1.02346727    -0.04955549   -14.41228015    -0.00000051    -0.00000003  0.35D-07  0.65D-08     0.40
    6     3     3     1.24367924    -0.08745169   -14.39194685    -0.00004393    -0.00000444  0.42D-05  0.90D-06     0.40
    6     4     4     1.24365559    -0.08745162   -14.39194678    -0.00004423    -0.00000449  0.42D-05  0.93D-06     0.40
    6     5     5     1.24360642    -0.08745018   -14.39194534    -0.00005571    -0.00000560  0.51D-05  0.11D-05     0.40
    6     6     6     1.24360015    -0.08745018   -14.39194534    -0.00005576    -0.00000560  0.51D-05  0.11D-05     0.40
    6     7     7     1.24356154    -0.08745008   -14.39194524    -0.00005616    -0.00000568  0.51D-05  0.11D-05     0.40
    7     1     1     1.01497451    -0.05105982   -14.66167154    -0.00000000    -0.00000000  0.23D-09  0.11D-09     0.46
    7     2     2     1.02349618    -0.04955553   -14.41228020    -0.00000004    -0.00000001  0.63D-08  0.10D-08     0.46
    7     3     3     1.24844610    -0.08745837   -14.39195353    -0.00000669    -0.00000027  0.20D-06  0.79D-07     0.46
    7     4     4     1.24684782    -0.08745750   -14.39195266    -0.00000588    -0.00000067  0.10D-05  0.11D-06     0.46
    7     5     5     1.24682936    -0.08745749   -14.39195265    -0.00000731    -0.00000068  0.10D-05  0.12D-06     0.46
    7     6     6     1.24650781    -0.08745720   -14.39195236    -0.00000702    -0.00000084  0.13D-05  0.15D-06     0.46
    7     7     7     1.24650915    -0.08745720   -14.39195236    -0.00000712    -0.00000084  0.13D-05  0.15D-06     0.46
    8     1     1     1.01497451    -0.05105982   -14.66167154    -0.00000000    -0.00000000  0.23D-09  0.11D-09     0.52
    8     2     2     1.02349618    -0.04955553   -14.41228020    -0.00000000    -0.00000001  0.63D-08  0.10D-08     0.52
    8     3     3     1.24911835    -0.08745875   -14.39195391    -0.00000038    -0.00000003  0.25D-07  0.65D-08     0.52
    8     4     4     1.24890669    -0.08745859   -14.39195375    -0.00000109    -0.00000013  0.11D-06  0.49D-07     0.52
    8     5     5     1.24890531    -0.08745859   -14.39195375    -0.00000110    -0.00000013  0.11D-06  0.49D-07     0.52
    8     6     6     1.24828714    -0.08745849   -14.39195365    -0.00000129    -0.00000017  0.21D-06  0.30D-07     0.52
    8     7     7     1.24827987    -0.08745849   -14.39195365    -0.00000129    -0.00000017  0.22D-06  0.31D-07     0.52
    9     1     1     1.01497451    -0.05105982   -14.66167154     0.00000000    -0.00000000  0.23D-09  0.11D-09     0.57
    9     2     2     1.02349618    -0.04955553   -14.41228020    -0.00000000    -0.00000001  0.63D-08  0.10D-08     0.57
    9     3     3     1.24943012    -0.08745879   -14.39195395    -0.00000004    -0.00000000  0.21D-08  0.65D-09     0.57
    9     4     4     1.24924976    -0.08745878   -14.39195394    -0.00000019    -0.00000001  0.47D-08  0.15D-08     0.57
    9     5     5     1.24924890    -0.08745878   -14.39195394    -0.00000019    -0.00000001  0.47D-08  0.15D-08     0.57
    9     6     6     1.24898291    -0.08745874   -14.39195390    -0.00000025    -0.00000003  0.34D-07  0.49D-08     0.57
    9     7     7     1.24897943    -0.08745874   -14.39195390    -0.00000025    -0.00000003  0.34D-07  0.51D-08     0.57
   10     1     1     1.01497451    -0.05105982   -14.66167154    -0.00000000    -0.00000000  0.23D-09  0.11D-09     0.60
   10     2     2     1.02349618    -0.04955553   -14.41228020    -0.00000000    -0.00000001  0.63D-08  0.10D-08     0.60
   10     3     3     1.24942930    -0.08745879   -14.39195395    -0.00000000    -0.00000000  0.85D-09  0.54D-09     0.60
   10     4     4     1.24942925    -0.08745879   -14.39195395    -0.00000001    -0.00000000  0.87D-09  0.56D-09     0.60
   10     5     5     1.24943012    -0.08745879   -14.39195395    -0.00000001    -0.00000000  0.21D-08  0.65D-09     0.60
   10     6     6     1.24924976    -0.08745878   -14.39195394    -0.00000004    -0.00000001  0.47D-08  0.15D-08     0.60
   10     7     7     1.24924890    -0.08745878   -14.39195394    -0.00000004    -0.00000001  0.47D-08  0.15D-08     0.60


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   3.3%
 S   6.7%   5.0%
 P   0.0%   3.3%  23.3%

 Initialization:   1.7%
 Other:           56.7%

 Total CPU:        0.6 seconds
 =====================================



 Wavefunction saved on  5201.2

 Reference coefficients greater than 0.0500000
 =============================================
 2/\000           0.0938842   0.9832992  -0.0000001   0.0000000   0.0000000   0.0000000   0.0000000
 220000           0.9456304  -0.0637166   0.0000002  -0.0000000   0.0000000   0.0000000  -0.0000000
 200/0\           0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.0000000   0.0000000   0.8946886
 2000/\          -0.0000000  -0.0000000  -0.0000000   0.0000000   0.0000000   0.8946883   0.0000000
 200/\0          -0.0000000  -0.0000000  -0.0000000  -0.0000000   0.8946238  -0.0000000   0.0000000
 200002          -0.1654459   0.0409602   0.7214496  -0.1143639   0.0000000   0.0000000   0.0000000
 200200          -0.1654459   0.0409597  -0.2616823   0.6819753   0.0000000   0.0000000   0.0000000
 200020          -0.1654459   0.0409596  -0.4597663  -0.5676115   0.0000000   0.0000000   0.0000000

 Coefficients of singly external configurations greater than 0.0500000
 =====================================================================

 2\0000  14.1     0.0000000   0.0000000   0.0000000   0.0000000  -0.3179445  -0.0000000   0.0000000
 2\0000  11.1     0.0000000   0.0000000  -0.0000000  -0.0000000   0.0000000  -0.3178910   0.0000000
 2\0000  12.1     0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.3178906
 2\0000  13.1     0.0000000  -0.0000003   0.1139163  -0.2968655   0.0000000   0.0000000  -0.0000000
 2\0000  10.1    -0.0000000   0.0000006  -0.2968649  -0.1139166  -0.0000000  -0.0000000   0.0000000
 2\0000   9.1     0.0000000   0.0000000   0.0000000  -0.0000000  -0.2632145   0.0000000  -0.0000000
 2\0000   5.1     0.0000000   0.0000000   0.0000000  -0.0000000   0.0000000  -0.2630684   0.0000000
 2\0000   7.1     0.0000000   0.0000000   0.0000000   0.0000000  -0.0000000   0.0000000  -0.2630679
 2\0000   6.1    -0.0000001   0.0000010  -0.2457405  -0.0942887   0.0000000   0.0000000   0.0000000
 2\0000   8.1     0.0000001  -0.0000003   0.0942892  -0.2457397  -0.0000000  -0.0000000   0.0000000
 2\0000  20.1     0.0000000   0.0000000   0.0000000  -0.0000000  -0.1364235   0.0000000  -0.0000000
 2\0000  17.1     0.0000000  -0.0000000  -0.0000000   0.0000000   0.0000000  -0.1363960   0.0000000
 2\0000  18.1    -0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.1363959
 2\0000  19.1     0.0000001  -0.0000002   0.0488582  -0.1273368   0.0000000   0.0000000   0.0000000
 2\0000  16.1    -0.0000002   0.0000003  -0.1273364  -0.0488583  -0.0000000  -0.0000000   0.0000000
 200\00  12.2     0.0414284  -0.0575847   0.0011108  -0.0028979  -0.0000000   0.0000000  -0.0000000
 2000\0  11.2     0.0414284  -0.0575845   0.0019544   0.0024106  -0.0000000   0.0000000  -0.0000000
 20000\  10.2     0.0414283  -0.0575832  -0.0030641   0.0004871  -0.0000000   0.0000000  -0.0000000
 2\0000  15.1     0.0573825  -0.0242184   0.0000003  -0.0000000   0.0000000  -0.0000000  -0.0000000

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.991814   -0.023336   -0.000000   -0.000000    0.000000    0.000000    0.000000
 2           0.036539    0.986983   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000
 3           0.000000   -0.000000   -0.000000   -0.000000   -0.000000   -0.586976   -0.675138
 4           0.000000   -0.000000    0.000000   -0.000000   -0.000000   -0.675138    0.586976
 5           0.000000    0.000000    0.000000    0.894624   -0.000000    0.000000    0.000000
 6           0.000000    0.000000    0.894688   -0.000000    0.000000    0.000000   -0.000000
 7           0.000000    0.000000    0.000000    0.000000    0.894689   -0.000000   -0.000000

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.992066    0.006671   -0.000000    0.000000    0.000000    0.000000    0.000000
 2           0.006671    0.987636    0.000000   -0.000000    0.000000    0.000000    0.000000
 3          -0.000000    0.000000    0.894624    0.000000   -0.000000   -0.000000    0.000000
 4           0.000000   -0.000000    0.000000    0.894624   -0.000000    0.000000   -0.000000
 5           0.000000    0.000000   -0.000000   -0.000000    0.894624    0.000000   -0.000000
 6           0.000000    0.000000   -0.000000    0.000000    0.000000    0.894688    0.000000
 7           0.000000    0.000000    0.000000   -0.000000   -0.000000    0.000000    0.894689


 RESULTS FOR STATE 1.1
 =====================

 Coefficient of reference function:   C(0) = 0.99181375 (fixed)   0.99258066 (relaxed)   0.99206582 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00106872   -0.00020115   -0.04001509
 Singles      0.01188430   -0.01045666   -0.01088880
 Pairs        0.00310621   -0.00000003   -0.00015593
 Total        1.01605923   -0.01065784   -0.05105982
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -14.61038496
 Nuclear energy                         0.00000000
 Kinetic energy                        14.67403531
 One electron energy                  -19.05090829
 Two electron energy                    4.38923676
 Virial quotient                       -0.99915744
 Correlation energy                    -0.05128657
 !MRCI STATE 1.1 Energy               -14.661671535592

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -14.66249516 (Davidson, fixed reference)
 Cluster corrected energies           -14.66244111 (Davidson, relaxed reference)
 Cluster corrected energies           -14.66249516 (Davidson, rotated reference)

 Cluster corrected energies           -14.66208332 (Pople, fixed reference)
 Cluster corrected energies           -14.66205630 (Pople, relaxed reference)
 Cluster corrected energies           -14.66208332 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Coefficient of reference function:   C(0) = 0.98698285 (fixed)   0.98844173 (relaxed)   0.98763643 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00165825   -0.00019266   -0.03778147
 Singles      0.02028917   -0.01090446   -0.01161630
 Pairs        0.00324597    0.00000006   -0.00015776
 Total        1.02519339   -0.01109705   -0.04955553
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -14.36295142
 Nuclear energy                         0.00000000
 Kinetic energy                        14.42264795
 One electron energy                  -18.12544879
 Two electron energy                    3.71316859
 Virial quotient                       -0.99928115
 Correlation energy                    -0.04932878
 !MRCI STATE 2.1 Energy               -14.412280196507

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -14.41352296 (Davidson, fixed reference)
 Cluster corrected energies           -14.41344059 (Davidson, relaxed reference)
 Cluster corrected energies           -14.41352296 (Davidson, rotated reference)

 Cluster corrected energies           -14.41290148 (Pople, fixed reference)
 Cluster corrected energies           -14.41286031 (Pople, relaxed reference)
 Cluster corrected energies           -14.41290148 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  7

 Coefficient of reference function:   C(0) = 0.67513772 (fixed)   0.89462405 (relaxed)   0.89462405 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00001651   -0.00014013   -0.06648105
 Singles      0.23791413   -0.04005988   -0.04871574
 Pairs        0.01151928    0.03566438    0.02773799
 Total        1.24944993   -0.00453562   -0.08745879
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -14.30449516
 Nuclear energy                         0.00000000
 Kinetic energy                        14.40240525
 One electron energy                  -18.51360145
 Two electron energy                    4.12164750
 Virial quotient                       -0.99927434
 Correlation energy                    -0.08745879
 !MRCI STATE 3.1 Energy               -14.391953949027

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -14.41377054 (Davidson, fixed reference)
 Cluster corrected energies           -14.41377054 (Davidson, relaxed reference)
 Cluster corrected energies           -14.41377054 (Davidson, rotated reference)

 Cluster corrected energies           -14.40269763 (Pople, fixed reference)
 Cluster corrected energies           -14.40269763 (Pople, relaxed reference)
 Cluster corrected energies           -14.40269763 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Maximum overlap with reference state  6

 Coefficient of reference function:   C(0) = 0.67513776 (fixed)   0.89462407 (relaxed)   0.89462407 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00001651   -0.00014013   -0.01312029
 Singles      0.23791419   -0.04005991   -0.04871574
 Pairs        0.01151918   -0.03100717   -0.02562276
 Total        1.24944988   -0.07120721   -0.08745879
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -14.30449516
 Nuclear energy                         0.00000000
 Kinetic energy                        14.40240695
 One electron energy                  -18.51360146
 Two electron energy                    4.12164751
 Virial quotient                       -0.99927422
 Correlation energy                    -0.08745879
 !MRCI STATE 4.1 Energy               -14.391953948974

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -14.41377053 (Davidson, fixed reference)
 Cluster corrected energies           -14.41377053 (Davidson, relaxed reference)
 Cluster corrected energies           -14.41377053 (Davidson, rotated reference)

 Cluster corrected energies           -14.40269763 (Pople, fixed reference)
 Cluster corrected energies           -14.40269763 (Pople, relaxed reference)
 Cluster corrected energies           -14.40269763 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.89462376 (fixed)   0.89462376 (relaxed)   0.89462376 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00001651   -0.00014012   -0.03793704
 Singles      0.23791049   -0.04005977   -0.04871498
 Pairs        0.01152375    0.00000000   -0.00080677
 Total        1.24945075   -0.04019989   -0.08745879
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -14.30449516
 Nuclear energy                         0.00000000
 Kinetic energy                        14.40247571
 One electron energy                  -18.51367088
 Two electron energy                    4.12171693
 Virial quotient                       -0.99926945
 Correlation energy                    -0.08745879
 !MRCI STATE 5.1 Energy               -14.391953947823

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -14.41377061 (Davidson, fixed reference)
 Cluster corrected energies           -14.41377061 (Davidson, relaxed reference)
 Cluster corrected energies           -14.41377061 (Davidson, rotated reference)

 Cluster corrected energies           -14.40269767 (Pople, fixed reference)
 Cluster corrected energies           -14.40269767 (Pople, relaxed reference)
 Cluster corrected energies           -14.40269767 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.89468834 (fixed)   0.89468834 (relaxed)   0.89468834 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00001651   -0.00014013   -0.03794923
 Singles      0.23772819   -0.04005137   -0.04870881
 Pairs        0.01152568    0.00000000   -0.00080074
 Total        1.24927038   -0.04019150   -0.08745878
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -14.30449516
 Nuclear energy                         0.00000000
 Kinetic energy                        14.40254535
 One electron energy                  -18.51367437
 Two electron energy                    4.12172042
 Virial quotient                       -0.99926462
 Correlation energy                    -0.08745878
 !MRCI STATE 6.1 Energy               -14.391953940536

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -14.41375482 (Davidson, fixed reference)
 Cluster corrected energies           -14.41375482 (Davidson, relaxed reference)
 Cluster corrected energies           -14.41375482 (Davidson, rotated reference)

 Cluster corrected energies           -14.40269012 (Pople, fixed reference)
 Cluster corrected energies           -14.40269012 (Pople, relaxed reference)
 Cluster corrected energies           -14.40269012 (Pople, rotated reference)



 RESULTS FOR STATE 7.1
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.89468865 (fixed)   0.89468865 (relaxed)   0.89468865 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00001651   -0.00014013   -0.03794930
 Singles      0.23772736   -0.04005133   -0.04870879
 Pairs        0.01152565    0.00000000   -0.00080070
 Total        1.24926953   -0.04019146   -0.08745878
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -14.30449516
 Nuclear energy                         0.00000000
 Kinetic energy                        14.40254550
 One electron energy                  -18.51367406
 Two electron energy                    4.12172012
 Virial quotient                       -0.99926460
 Correlation energy                    -0.08745878
 !MRCI STATE 7.1 Energy               -14.391953940508

 Properties without orbital relaxation:

 !MRCI STATE 7.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -14.41375475 (Davidson, fixed reference)
 Cluster corrected energies           -14.41375475 (Davidson, relaxed reference)
 Cluster corrected energies           -14.41375475 (Davidson, rotated reference)

 Cluster corrected energies           -14.40269008 (Pople, fixed reference)
 Cluster corrected energies           -14.40269008 (Pople, relaxed reference)
 Cluster corrected energies           -14.40269008 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       29.40       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       6        1.85       700     1000      520     2100     2140     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *         2.36      0.67      0.93      0.03      0.50
 REAL TIME  *         3.56 SEC
 DISK USED  *        31.33 MB (local),      178.43 MB (total)
 SF USED    *        12.40 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =       -14.66249516  AU                              
 SETTING HLSDIAG(2)     =       -14.41352296  AU                              
 SETTING HLSDIAG(3)     =       -14.41377054  AU                              
 SETTING HLSDIAG(4)     =       -14.41377053  AU                              
 SETTING HLSDIAG(5)     =       -14.41377061  AU                              
 SETTING HLSDIAG(6)     =       -14.41375482  AU                              
 SETTING HLSDIAG(7)     =       -14.41375475  AU                              


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 4  Roots:    1   2   3   4
 Number of reference states: 4  Roots:    1   2   3   4

 Reference symmetry:                   1   Triplet 
 Number of electrons:                  4
 Maximum number of shells:             2
 Maximum number of spin couplings:     3

 Reference space:        4 conf        4 CSFs
 N elec internal:       75 conf      105 CSFs
 N-1 el internal:       38 conf       78 CSFs
 N-2 el internal:       10 conf       28 CSFs

 Number of electrons in valence space:                      4
 Maximum number of open shell orbitals in reference space:  2
 Maximum number of open shell orbitals in internal spaces:  4


 Number of closed-shell orbitals:   1 (   1   0 )
 Number of active  orbitals:        5 (   2   3 )
 Number of external orbitals:      62 (  30  32 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Coulomb and exchange operators available. No transformation done.


 Number of p-space configurations:   4

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1       -14.37653809
     2       -14.33814624
     3       -14.33814624
     4       -14.33814624

 Number of blocks in overlap matrix:    15   Smallest eigenvalue:  0.10D+01
 Number of N-2 electron functions:      15
 Number of N-1 electron functions:      78

 Number of internal configurations:                   51
 Number of singly external configurations:          2418
 Number of doubly external configurations:         14511
 Total number of contracted configurations:        16980
 Total number of uncontracted configurations:      29170

 Diagonal Coupling coefficients finished.               Storage:    184731 words, CPU-Time:      0.00 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:    201135 words, CPU-time:      0.00 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000   -14.37653809    -0.00000000    -0.04300331  0.91D-02  0.17D-02     0.01
    1     2     2     1.00000000     0.00000000   -14.33814624    -0.00000000    -0.04737762  0.62D-03  0.75D-02     0.01
    1     3     3     1.00000000     0.00000000   -14.33814624    -0.00000000    -0.04737818  0.62D-03  0.75D-02     0.01
    1     4     4     1.00000000     0.00000000   -14.33814624     0.00000000    -0.04734314  0.62D-03  0.75D-02     0.01
    2     1     1     1.01243634    -0.04621820   -14.42275629    -0.04621820    -0.00057868  0.89D-03  0.23D-04     0.05
    2     2     2     1.00920371    -0.05059420   -14.38874044    -0.05059420    -0.00055574  0.16D-03  0.28D-03     0.05
    2     3     3     1.00920363    -0.05059416   -14.38874040    -0.05059416    -0.00055578  0.16D-03  0.28D-03     0.05
    2     4     4     1.00914542    -0.05058315   -14.38872938    -0.05058315    -0.00056147  0.16D-03  0.29D-03     0.05
    3     1     1     1.02409131    -0.04717589   -14.42371398    -0.00095769    -0.00007537  0.89D-04  0.53D-05     0.09
    3     2     2     1.01350821    -0.05131837   -14.38946460    -0.00072416    -0.00002451  0.12D-05  0.10D-04     0.09
    3     3     3     1.01350801    -0.05131836   -14.38946459    -0.00072419    -0.00002452  0.12D-05  0.10D-04     0.09
    3     4     4     1.01350428    -0.05131765   -14.38946389    -0.00073450    -0.00002502  0.12D-05  0.11D-04     0.09
    4     1     1     1.02875285    -0.04729648   -14.42383457    -0.00012058    -0.00000659  0.11D-04  0.29D-06     0.13
    4     2     2     1.01422528    -0.05134776   -14.38949399    -0.00002939    -0.00000085  0.36D-06  0.35D-06     0.13
    4     3     3     1.01422528    -0.05134776   -14.38949399    -0.00002940    -0.00000085  0.36D-06  0.35D-06     0.13
    4     4     4     1.01422596    -0.05134772   -14.38949395    -0.00003006    -0.00000087  0.38D-06  0.36D-06     0.13
    5     1     1     1.02900171    -0.04730702   -14.42384510    -0.00001054    -0.00000067  0.95D-06  0.86D-07     0.16
    5     2     2     1.01423361    -0.05134897   -14.38949521    -0.00000122    -0.00000010  0.89D-07  0.23D-07     0.16
    5     3     3     1.01423361    -0.05134897   -14.38949521    -0.00000122    -0.00000010  0.89D-07  0.23D-07     0.16
    5     4     4     1.01423332    -0.05134897   -14.38949520    -0.00000125    -0.00000011  0.90D-07  0.24D-07     0.16
    6     1     1     1.02917113    -0.04730810   -14.42384619    -0.00000108    -0.00000007  0.63D-07  0.37D-08     0.20
    6     2     2     1.01422551    -0.05134913   -14.38949537    -0.00000016    -0.00000001  0.45D-08  0.87D-09     0.20
    6     3     3     1.01422551    -0.05134913   -14.38949537    -0.00000016    -0.00000001  0.45D-08  0.87D-09     0.20
    6     4     4     1.01422541    -0.05134913   -14.38949536    -0.00000016    -0.00000001  0.46D-08  0.91D-09     0.20
    7     1     1     1.02923457    -0.04730819   -14.42384628    -0.00000009    -0.00000001  0.73D-08  0.26D-09     0.22
    7     2     2     1.01422551    -0.05134913   -14.38949537    -0.00000000    -0.00000001  0.45D-08  0.87D-09     0.22
    7     3     3     1.01422551    -0.05134913   -14.38949537    -0.00000000    -0.00000001  0.45D-08  0.87D-09     0.22
    7     4     4     1.01422541    -0.05134913   -14.38949536    -0.00000000    -0.00000001  0.46D-08  0.91D-09     0.22


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   4.5%
 S   9.1%   4.5%
 P  13.6%   4.5%   4.5%

 Initialization:   4.5%
 Other:           54.5%

 Total CPU:        0.2 seconds
 =====================================



 Wavefunction saved on  5202.2

 Reference coefficients greater than 0.0500000
 =============================================
 2000//           0.0000000   0.0000000   0.0000000   0.9929363
 200//0           0.0000000   0.0000000   0.9929362  -0.0000000
 200/0/           0.0000000   0.9929362  -0.0000000  -0.0000000
 2//000           0.9856830  -0.0000000  -0.0000000  -0.0000000

 Coefficients of singly external configurations greater than 0.0500000
 =====================================================================

 2/0000  15.1     0.0760943  -0.0000000   0.0000000  -0.0000000
 200/00  12.2    -0.0543307   0.0000000   0.0000000   0.0000000
 20000/  10.2    -0.0543305   0.0000000   0.0000000   0.0000000
 2000/0  11.2    -0.0543305   0.0000000   0.0000000   0.0000000

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.985683    0.000000    0.000000    0.000000
 2          -0.000000    0.992936    0.000000    0.000000
 3          -0.000000   -0.000000    0.992936    0.000000
 4          -0.000000   -0.000000   -0.000000    0.992936

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.985683    0.000000    0.000000    0.000000
 2           0.000000    0.992936   -0.000000   -0.000000
 3           0.000000   -0.000000    0.992936   -0.000000
 4           0.000000   -0.000000   -0.000000    0.992936


 RESULTS FOR STATE 1.1
 =====================

 Coefficient of reference function:   C(0) = 0.98568297 (fixed)   0.98568297 (relaxed)   0.98568297 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00002562   -0.00012871   -0.03634916
 Singles      0.02739331   -0.00989663   -0.01087549
 Pairs        0.00184201   -0.00000000   -0.00008355
 Total        1.02926094   -0.01002534   -0.04730819
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -14.37653809
 Nuclear energy                         0.00000000
 Kinetic energy                        14.42034863
 One electron energy                  -18.13477700
 Two electron energy                    3.71093072
 Virial quotient                       -1.00024255
 Correlation energy                    -0.04730819
 !MRCI STATE 1.1 Energy               -14.423846278697

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -14.42523056 (Davidson, fixed reference)
 Cluster corrected energies           -14.42523056 (Davidson, relaxed reference)
 Cluster corrected energies           -14.42523056 (Davidson, rotated reference)

 Cluster corrected energies           -14.42384628 (Pople, fixed reference)
 Cluster corrected energies           -14.42384628 (Pople, relaxed reference)
 Cluster corrected energies           -14.42384628 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Coefficient of reference function:   C(0) = 0.99293622 (fixed)   0.99293622 (relaxed)   0.99293622 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00005242   -0.00027990   -0.04649945
 Singles      0.00132633   -0.00418842   -0.00419642
 Pairs        0.01289993   -0.00000000   -0.00065326
 Total        1.01427868   -0.00446832   -0.05134913
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -14.33814624
 Nuclear energy                         0.00000000
 Kinetic energy                        14.39620750
 One electron energy                  -18.59523667
 Two electron energy                    4.20574130
 Virial quotient                       -0.99953376
 Correlation energy                    -0.05134913
 !MRCI STATE 2.1 Energy               -14.389495365324

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -14.39022856 (Davidson, fixed reference)
 Cluster corrected energies           -14.39022856 (Davidson, relaxed reference)
 Cluster corrected energies           -14.39022856 (Davidson, rotated reference)

 Cluster corrected energies           -14.38949537 (Pople, fixed reference)
 Cluster corrected energies           -14.38949537 (Pople, relaxed reference)
 Cluster corrected energies           -14.38949537 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Coefficient of reference function:   C(0) = 0.99293622 (fixed)   0.99293622 (relaxed)   0.99293622 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00005242   -0.00027990   -0.04649945
 Singles      0.00132633   -0.00418842   -0.00419642
 Pairs        0.01289992   -0.00000000   -0.00065326
 Total        1.01427868   -0.00446833   -0.05134913
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -14.33814624
 Nuclear energy                         0.00000000
 Kinetic energy                        14.39620756
 One electron energy                  -18.59523669
 Two electron energy                    4.20574132
 Virial quotient                       -0.99953375
 Correlation energy                    -0.05134913
 !MRCI STATE 3.1 Energy               -14.389495365320

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -14.39022856 (Davidson, fixed reference)
 Cluster corrected energies           -14.39022856 (Davidson, relaxed reference)
 Cluster corrected energies           -14.39022856 (Davidson, rotated reference)

 Cluster corrected energies           -14.38949537 (Pople, fixed reference)
 Cluster corrected energies           -14.38949537 (Pople, relaxed reference)
 Cluster corrected energies           -14.38949537 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Coefficient of reference function:   C(0) = 0.99293626 (fixed)   0.99293626 (relaxed)   0.99293626 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00005242   -0.00027990   -0.00027862
 Singles      0.00132632   -0.00418844   -0.00419643
 Pairs        0.01289984   -0.04688078   -0.04687409
 Total        1.01427858   -0.05134913   -0.05134913
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -14.33814624
 Nuclear energy                         0.00000000
 Kinetic energy                        14.39620594
 One electron energy                  -18.59523541
 Two electron energy                    4.20574004
 Virial quotient                       -0.99953387
 Correlation energy                    -0.05134913
 !MRCI STATE 4.1 Energy               -14.389495364982

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -14.39022856 (Davidson, fixed reference)
 Cluster corrected energies           -14.39022856 (Davidson, relaxed reference)
 Cluster corrected energies           -14.39022856 (Davidson, rotated reference)

 Cluster corrected energies           -14.38949536 (Pople, fixed reference)
 Cluster corrected energies           -14.38949536 (Pople, relaxed reference)
 Cluster corrected energies           -14.38949536 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       29.40       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7        2.41       700     1000      520     2100     2140     5201     5202   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *         2.64      0.28      0.67      0.93      0.03      0.50
 REAL TIME  *         3.85 SEC
 DISK USED  *        31.89 MB (local),      181.21 MB (total)
 SF USED    *        12.40 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(8)     =       -14.42523056  AU                              
 SETTING HLSDIAG(9)     =       -14.39022856  AU                              
 SETTING HLSDIAG(10)    =       -14.39022856  AU                              
 SETTING HLSDIAG(11)    =       -14.39022856  AU                              


        HLSDIAG
    -14.66249516
    -14.41352296
    -14.41377054
    -14.41377053
    -14.41377061
    -14.41375482
    -14.41375475
    -14.42523056
    -14.39022856
    -14.39022856
    -14.39022856
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Diagonal elements of H will be replaced by values from variable HLSDIAG


   ******************************
   *** Spin-orbit calculation ***
   ******************************


   Spin-orbit matrix elements
   ==========================

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

 Time for Seward_LS:       0.32 sec

 CPU time:      0.32 sec, REAL time:      0.33 sec


 SORTLS1 read     1691397. and wrote     1691397. SO integrals in    15 records. CPU time:      0.02 sec, REAL time:      0.04 sec
 SORTLS2 read     1691397. and wrote     8257518. SO integrals in    15 records. CPU time:      0.02 sec, REAL time:      0.04 sec

 FILE SIZES: FILE 1:    30.9 MBYTE, FILE 4:     0.0 MBYTE, TOTAL:    30.9 MBYTE

 Preparing effective Fock matrices
 eXact-2-Component (X2C) method activated

 Computing Douglas-Kroll / X2C integrals

 Total X Y Z Fock matrices evaluated:     3    3    3
  
 Wavefunction restored from record  5201.2  Symmetry=1  S= 0.0  NSTATE=   7

 Original energies:    -14.661672    -14.412280    -14.391954    -14.391954    -14.391954    -14.391954    -14.391954
 Replaced energies:    -14.662495    -14.413523    -14.413771    -14.413771    -14.413771    -14.413755    -14.413755

 Wavefunction restored from record  5202.2  Symmetry=1  S= 1.0  NSTATE=   4

 Original energies:    -14.423846    -14.389495    -14.389495    -14.389495
 Replaced energies:    -14.425231    -14.390229    -14.390229    -14.390229



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=   -14.66249516

 Wigner-Eckart theorem used for 10 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.44       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.44

    2   2.1  0.0  0.0       0.00   54643.08       0.00       0.00       0.00       0.00       0.00       0.00       0.19      -0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.19

    3   3.1  0.0  0.0       0.00       0.00   54588.74       0.00       0.00       0.00       0.00       0.00       0.60      -0.00
                           -0.00      -0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.95

    4   4.1  0.0  0.0       0.00       0.00       0.00   54588.75       0.00       0.00       0.00       0.00       0.75      -0.00
                           -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.15

    5   5.1  0.0  0.0       0.00       0.00       0.00       0.00   54588.73       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00      -0.00      -0.00       0.00

    6   6.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00   54592.19       0.00       0.00       0.00       0.83
                           -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.83      -0.00

    7   7.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00   54592.21       0.00       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00      -0.00       0.00

    8   1.1  1.0  1.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00   52073.56       0.00       0.00
                            0.00      -0.00       0.00      -0.00       0.00      -0.00       0.00       0.00       0.00      -0.00

    9   2.1  1.0  1.0      -0.44       0.19       0.60       0.75       0.00       0.00       0.00       0.00   59755.61       0.00
                            0.00      -0.00       0.00      -0.00       0.00      -0.83       0.00      -0.00      -0.00      -0.81

   10   3.1  1.0  1.0       0.00      -0.00      -0.00      -0.00       0.00       0.83      -0.00       0.00       0.00   59755.61
                            0.44      -0.19       0.95      -0.15      -0.00       0.00      -0.00       0.00       0.81       0.00

   11   4.1  1.0  1.0       0.00      -0.00      -0.00      -0.00       0.83      -0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00       0.00       0.00       0.83      -0.05      -0.00       0.00

   12   1.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.04      -0.00
                           -0.00       0.00       0.00      -0.00       0.00       0.00      -0.00      -0.00       0.00       0.04

   13   2.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.04      -0.00       0.00
                           -0.00       0.00       0.00      -0.00       1.17      -0.00      -0.00      -0.00      -0.00       0.00

   14   3.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00
                           -0.00       0.00       0.00      -0.00      -0.00       0.00      -1.17      -0.04      -0.00      -0.00

   15   4.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.57
                           -0.62       0.27       0.49      -1.27      -0.00       0.00       0.00      -0.00      -0.57       0.00

   16   1.1  1.0 -1.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00       0.00      -0.00       0.00      -0.00      -0.00      -0.00      -0.00

   17   2.1  1.0 -1.0      -0.44       0.19       0.60       0.75       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00       0.00      -0.00       0.83      -0.00      -0.00      -0.00      -0.00

   18   3.1  1.0 -1.0       0.00      -0.00      -0.00      -0.00       0.00       0.83      -0.00       0.00       0.00       0.00
                           -0.44       0.19      -0.95       0.15       0.00      -0.00       0.00      -0.00      -0.00      -0.00

   19   4.1  1.0 -1.0       0.00      -0.00      -0.00      -0.00       0.83      -0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00      -0.00      -0.00      -0.83      -0.00      -0.00      -0.00


   Nr   State  S   Sz       11         12         13         14         15         16         17         18         19

    1   1.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00      -0.00      -0.44       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.62       0.00       0.00       0.44       0.00

    2   2.1  0.0  0.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.19      -0.00      -0.00
                            0.00      -0.00      -0.00      -0.00      -0.27      -0.00      -0.00      -0.19      -0.00

    3   3.1  0.0  0.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.60      -0.00      -0.00
                            0.00      -0.00      -0.00      -0.00      -0.49       0.00       0.00       0.95      -0.00

    4   4.1  0.0  0.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.75      -0.00      -0.00
                            0.00       0.00       0.00       0.00       1.27      -0.00      -0.00      -0.15      -0.00

    5   5.1  0.0  0.0       0.83       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.83
                           -0.00      -0.00      -1.17       0.00       0.00       0.00       0.00      -0.00       0.00

    6   6.1  0.0  0.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.83      -0.00
                           -0.00      -0.00       0.00      -0.00      -0.00      -0.00      -0.83       0.00       0.00

    7   7.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00
                           -0.83       0.00       0.00       1.17      -0.00       0.00       0.00      -0.00       0.83

    8   1.1  1.0  1.0       0.00      -0.00      -0.04       0.00       0.00       0.00       0.00       0.00       0.00
                            0.05       0.00       0.00       0.04       0.00       0.00       0.00       0.00       0.00

    9   2.1  1.0  1.0       0.00       0.04      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00       0.00       0.57       0.00       0.00       0.00       0.00

   10   3.1  1.0  1.0       0.00      -0.00       0.00      -0.00       0.57       0.00       0.00       0.00       0.00
                           -0.00      -0.04      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00

   11   4.1  1.0  1.0   59755.61      -0.00      -0.00      -0.57       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.57       0.00       0.00       0.00       0.00       0.00       0.00

   12   1.1  1.0  0.0      -0.00   52073.56       0.00       0.00       0.00      -0.00      -0.04       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.04       0.00

   13   2.1  1.0  0.0      -0.00       0.00   59755.61       0.00       0.00       0.04      -0.00      -0.00       0.00
                            0.57      -0.00       0.00       0.00       0.00      -0.00       0.00       0.00       0.57

   14   3.1  1.0  0.0      -0.57       0.00       0.00   59755.61       0.00      -0.00       0.00      -0.00       0.57
                           -0.00      -0.00      -0.00       0.00       0.00      -0.04      -0.00       0.00      -0.00

   15   4.1  1.0  0.0       0.00       0.00       0.00       0.00   59755.61      -0.00      -0.00      -0.57       0.00
                           -0.00      -0.00      -0.00      -0.00       0.00      -0.00      -0.57       0.00       0.00

   16   1.1  1.0 -1.0       0.00      -0.00       0.04      -0.00      -0.00   52073.56       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.04       0.00      -0.00      -0.00       0.00      -0.05

   17   2.1  1.0 -1.0       0.00      -0.04      -0.00       0.00      -0.00       0.00   59755.61       0.00       0.00
                           -0.00      -0.00      -0.00       0.00       0.57       0.00       0.00       0.81      -0.00

   18   3.1  1.0 -1.0       0.00       0.00      -0.00      -0.00      -0.57       0.00       0.00   59755.61       0.00
                           -0.00      -0.04      -0.00      -0.00      -0.00      -0.00      -0.81      -0.00       0.00

   19   4.1  1.0 -1.0       0.00       0.00       0.00       0.57       0.00       0.00       0.00       0.00   59755.61
                           -0.00      -0.00      -0.57       0.00      -0.00       0.05       0.00      -0.00       0.00




   Spin-orbit calculation in the basis of symmetry adapted wave functions
   ======================================================================


 >>> Hamiltonian transformed to symmetry adapted basis <<<


  Results for symmetry 1
  ======================

 => Spin-Orbit Matrixblock (CM-1)  (dimension: 19)

    The diagonal matrixelements are shifted by    -14.66249516 a.u.

  State Sym Spin    / Nr.        1           2           3           4           5           6           7           8

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |0 0>               0.000   54643.082       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |0 0>               0.000       0.000   54588.744       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |0 0>               0.000       0.000       0.000   54588.745       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000   54588.729       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000   54592.193       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000

    7    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000   54592.209       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000

    1    1  |1 1>+             -0.000       0.000       0.000       0.000       0.000       0.000       0.000   52073.560
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>+             -0.627       0.273       0.854       1.054       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>+              0.000      -0.000      -0.000      -0.000       0.000       1.175      -0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>+              0.000      -0.000      -0.000      -0.000       1.175      -0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                               -0.000       0.000       0.000      -0.000       0.000       0.003      -0.000       0.000

    2    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000      -0.000       1.174      -0.000      -0.000      -0.000

    3    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                               -0.000       0.000       0.000      -0.000      -0.000       0.000      -1.174      -0.051

    4    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                               -0.625       0.270       0.485      -1.265      -0.000       0.000       0.000      -0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000      -0.000       0.003      -0.000       0.000       0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000      -0.000       0.000      -1.174       0.000      -0.000

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.625      -0.270       1.339      -0.212      -0.000       0.000      -0.000       0.000

    4    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000      -0.000       0.000       0.000       1.174      -0.051

  State Sym Spin    / Nr.        9          10          11          12          13          14          15          16

    1    1  |0 0>              -0.627       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.625      -0.000

    2    1  |0 0>               0.273      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000      -0.000      -0.000      -0.270       0.000

    3    1  |0 0>               0.854      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000      -0.000      -0.000      -0.485      -0.000

    4    1  |0 0>               1.054      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       1.265       0.000

    5    1  |0 0>               0.000       0.000       1.175       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000      -1.174       0.000       0.000      -0.003

    6    1  |0 0>               0.000       1.175      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.003       0.000      -0.000      -0.000       0.000

    7    1  |0 0>               0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       1.174      -0.000      -0.000

    1    1  |1 1>+              0.000       0.000       0.000      -0.000       0.000      -0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.051       0.000       0.000

    2    1  |1 1>+          59755.611       0.000       0.000       0.000      -0.000      -0.000      -0.000       0.000
                                0.000       0.000       0.000      -0.000       0.000       0.000       0.808      -0.000

    3    1  |1 1>+              0.000   59755.611       0.000      -0.000      -0.000      -0.000      -0.000       0.000
                                0.000       0.000       0.000      -0.051      -0.000       0.000      -0.000       0.000

    4    1  |1 1>+              0.000       0.000   59755.612      -0.000      -0.000      -0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000      -0.808       0.000       0.000      -0.051

    1    1  |1 0>               0.000      -0.000      -0.000   52073.560       0.000       0.000       0.000       0.000
                                0.000       0.051       0.000       0.000       0.000       0.000       0.000      -0.000

    2    1  |1 0>              -0.000      -0.000      -0.000       0.000   59755.611       0.000       0.000      -0.051
                                0.000       0.000       0.808      -0.000       0.000       0.000       0.000       0.000

    3    1  |1 0>              -0.000      -0.000      -0.000       0.000       0.000   59755.611       0.000       0.000
                               -0.000       0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000

    4    1  |1 0>              -0.000      -0.000       0.000       0.000       0.000       0.000   59755.612       0.000
                               -0.808       0.000       0.000      -0.000      -0.000      -0.000       0.000       0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000      -0.051       0.000       0.000   52073.560
                                0.000      -0.000       0.051       0.000      -0.000      -0.000      -0.000       0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.051       0.000      -0.000       0.000       0.000
                               -0.000      -0.808       0.000      -0.000       0.000       0.000      -0.000       0.000

    3    1  |1 1>-              0.000       0.000       0.000      -0.000       0.000       0.000       0.808       0.000
                                0.808       0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>-              0.000       0.000       0.000      -0.000      -0.000      -0.808       0.000       0.000
                               -0.000       0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000

  State Sym Spin    / Nr.       17          18          19

    1    1  |0 0>               0.000       0.000       0.000
                               -0.000      -0.625      -0.000

    2    1  |0 0>               0.000       0.000       0.000
                                0.000       0.270       0.000

    3    1  |0 0>               0.000       0.000       0.000
                               -0.000      -1.339       0.000

    4    1  |0 0>               0.000       0.000       0.000
                                0.000       0.212       0.000

    5    1  |0 0>               0.000       0.000       0.000
                               -0.000       0.000      -0.000

    6    1  |0 0>               0.000       0.000       0.000
                                1.174      -0.000      -0.000

    7    1  |0 0>               0.000       0.000       0.000
                               -0.000       0.000      -1.174

    1    1  |1 1>+              0.000       0.000       0.000
                                0.000      -0.000       0.051

    2    1  |1 1>+              0.000       0.000       0.000
                               -0.000      -0.808       0.000

    3    1  |1 1>+              0.000       0.000       0.000
                                0.808       0.000      -0.000

    4    1  |1 1>+              0.000       0.000       0.000
                               -0.000       0.000      -0.000

    1    1  |1 0>               0.051      -0.000      -0.000
                                0.000       0.000       0.000

    2    1  |1 0>               0.000       0.000      -0.000
                               -0.000      -0.000       0.000

    3    1  |1 0>              -0.000       0.000      -0.808
                               -0.000      -0.000      -0.000

    4    1  |1 0>               0.000       0.808       0.000
                                0.000      -0.000      -0.000

    1    1  |1 1>-              0.000       0.000       0.000
                                0.000       0.000       0.000

    2    1  |1 1>-          59755.611       0.000       0.000
                                0.000       0.000       0.000

    3    1  |1 1>-              0.000   59755.611       0.000
                                0.000       0.000       0.000

    4    1  |1 1>-              0.000       0.000   59755.612
                                0.000       0.000       0.000

 => Eigenvalues of spin-orbit matrix in ascending order  (E0 = Emin,ges)
    (symmetry =  1)

    Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
             (au)           (au)        (cm-1)           (au)       (cm-1)        (eV)
    1   -14.66249516    -0.00000000       -0.00      0.00000000        0.00      0.0000
    2   -14.42523056     0.23726460    52073.56      0.23726460    52073.56      6.4563
    3   -14.42523056     0.23726460    52073.56      0.23726460    52073.56      6.4563
    4   -14.42523056     0.23726460    52073.56      0.23726460    52073.56      6.4563
    5   -14.41377061     0.24872455    54588.73      0.24872455    54588.73      6.7681
    6   -14.41377054     0.24872462    54588.74      0.24872462    54588.74      6.7681
    7   -14.41377054     0.24872462    54588.74      0.24872462    54588.74      6.7681
    8   -14.41375483     0.24874033    54592.19      0.24874033    54592.19      6.7686
    9   -14.41375475     0.24874041    54592.21      0.24874041    54592.21      6.7686
   10   -14.41352296     0.24897220    54643.08      0.24897220    54643.08      6.7749
   11   -14.39023592     0.27225924    59754.00      0.27225924    59754.00      7.4086
   12   -14.39023224     0.27226292    59754.80      0.27226292    59754.80      7.4087
   13   -14.39023224     0.27226292    59754.80      0.27226292    59754.80      7.4087
   14   -14.39023224     0.27226292    59754.80      0.27226292    59754.80      7.4087
   15   -14.39022488     0.27227028    59756.42      0.27227028    59756.42      7.4089
   16   -14.39022488     0.27227028    59756.42      0.27227028    59756.42      7.4089
   17   -14.39022488     0.27227028    59756.42      0.27227028    59756.42      7.4089
   18   -14.39022488     0.27227028    59756.42      0.27227028    59756.42      7.4089
   19   -14.39022488     0.27227028    59756.42      0.27227028    59756.42      7.4089

 => Eigenvectors of spin-orbit matrix columnwise and corresponding to the
    eigenvalues in ascending order (symmetry =  1)

  Basis states          Eigenvectors (columnwise)

 State Sym Spin     / Nr.      1           2           3           4           5           6           7           8

   1    1  |0 0>           1.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   2    1  |0 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000001  0.00000001 -0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   3    1  |0 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.99999987 -0.00039528  0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   4    1  |0 0>          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00039528  0.99999987 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   5    1  |0 0>          -0.00000000 -0.00000106  0.00000038  0.00000000  0.99999995  0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   6    1  |0 0>          -0.00000000 -0.00000038 -0.00000106 -0.00000000  0.00000000 -0.00000000  0.00000000  0.99999995
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000033

   7    1  |0 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   1    1  |1 1>+          0.00000000  0.00195923 -0.00332396  0.99999256 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000892  0.00000208 -0.00000005 -0.00000000 -0.00000000  0.00000000  0.00000000

   2    1  |1 1>+          0.00001049 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00016530 -0.00020391  0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   3    1  |1 1>+         -0.00000000 -0.00000224 -0.00000632 -0.00000002 -0.00000000  0.00000000 -0.00000000 -0.00022747
                           0.00000000  0.00000001  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   4    1  |1 1>+         -0.00000000 -0.00000632  0.00000224  0.00000002 -0.00022731 -0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000001  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   1    1  |1 0>          -0.00000000  0.00121437  0.00028217 -0.00000638  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.33400347  0.94256776  0.00247870  0.00000000 -0.00000000  0.00000000  0.00000112

   2    1  |1 0>          -0.00000000  0.00000001  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000632 -0.00000224 -0.00000002 -0.00022718 -0.00000000 -0.00000000 -0.00000000

   3    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000001 -0.00000002  0.00000670 -0.00000000  0.00000000 -0.00000000 -0.00000000

   4    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00001045 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00009382  0.00024491 -0.00000000

   1    1  |1 1>-         -0.00000000  0.00189765  0.00044198 -0.00000996  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.94256712 -0.33399804 -0.00295691  0.00000113  0.00000000 -0.00000000 -0.00000000

   2    1  |1 1>-         -0.00000000 -0.00000001 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000224 -0.00000632 -0.00000002  0.00000000 -0.00000000  0.00000000  0.00022735

   3    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00001045  0.00000000  0.00000000  0.00000000  0.00000000 -0.00025902  0.00004112 -0.00000000

   4    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000001 -0.00000002  0.00000670  0.00000000 -0.00000000  0.00000000  0.00000000

 State Sym Spin     / Nr.      9          10          11          12          13          14          15          16

   1    1  |0 0>           0.00000000  0.00000000 -0.00001812  0.00000000  0.00000000  0.00000000 -0.00000002 -0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   2    1  |0 0>          -0.00000000  1.00000000  0.00009192 -0.00000000 -0.00000000 -0.00000000  0.00000045  0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   3    1  |0 0>          -0.00000000 -0.00000001  0.00000003 -0.00000000 -0.00000000  0.00000000  0.00029957  0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   4    1  |0 0>           0.00000000 -0.00000001  0.00000014  0.00000000 -0.00000000  0.00000000  0.00011631  0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   5    1  |0 0>           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000003  0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   6    1  |0 0>           0.00000000  0.00000000  0.00000000  0.00000008  0.00000000  0.00000000 -0.00000000  0.00032160
                           0.00000000  0.00000000  0.00000000  0.00000004  0.00000000 -0.00000000 -0.00000000  0.00000019

   7    1  |0 0>           0.99999995  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000012 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   1    1  |1 1>+          0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000948 -0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   2    1  |1 1>+         -0.00000000 -0.00005349  0.57744410  0.00000000 -0.00000000  0.00000000  0.70858703  0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   3    1  |1 1>+         -0.00000000  0.00000000 -0.00000000  0.62321935  0.00000002 -0.00000000 -0.00000000  0.70710911
                          -0.00000000  0.00000000  0.00000000  0.33405708  0.00000000  0.00000000 -0.00000000  0.00041389

   4    1  |1 1>+          0.00000000 -0.00000000 -0.00000000  0.00000002 -0.70684985 -0.00000058  0.00000000 -0.00000003
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000002  0.00000010  0.00000000 -0.00000003

   1    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000448 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000835  0.00000000 -0.00000000 -0.00000000  0.00000000

   2    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000002  0.00000010 -0.00000000  0.00000003
                          -0.00000000  0.00000000  0.00000000 -0.00000002  0.70736362  0.00000058  0.00000000 -0.00000003

   3    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000010 -0.00000047 -0.00000000  0.00000000
                           0.00022728 -0.00000000  0.00000000  0.00000000 -0.00000058  0.70736114  0.00000000  0.00000000

   4    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00005286  0.57716497 -0.00000000 -0.00000000 -0.00000000 -0.00297434 -0.00000000

   1    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000948 -0.00000000  0.00000000  0.00000000

   2    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.33405943 -0.00000000 -0.00000000 -0.00000000  0.00041389
                           0.00000000  0.00000000 -0.00000000  0.62322372  0.00000002 -0.00000000  0.00000000 -0.70710414

   3    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00005286 -0.57744168 -0.00000000 -0.00000000  0.00000000  0.70561708  0.00000000

   4    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000010 -0.00000047  0.00000000 -0.00000000
                          -0.00022728  0.00000000  0.00000000  0.00000000 -0.00000058  0.70685233 -0.00000000 -0.00000000

 State Sym Spin     / Nr.     17          18          19

   1    1  |0 0>          -0.00000000  0.00000000  0.00000001
                          -0.00000000 -0.00000000 -0.00000000

   2    1  |0 0>           0.00000000 -0.00000000 -0.00000024
                          -0.00000000 -0.00000000  0.00000000

   3    1  |0 0>           0.00000000  0.00000000  0.00011607
                           0.00000000  0.00000000  0.00000000

   4    1  |0 0>          -0.00000000 -0.00000000 -0.00029953
                          -0.00000000 -0.00000000 -0.00000000

   5    1  |0 0>           0.00032137  0.00000000 -0.00000000
                           0.00000002  0.00000000  0.00000000

   6    1  |0 0>           0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000

   7    1  |0 0>          -0.00000000  0.00032142 -0.00000000
                           0.00000000  0.00000000 -0.00000000

   1    1  |1 1>+          0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000

   2    1  |1 1>+         -0.00000000  0.00000000 -0.40553995
                          -0.00000000 -0.00000000  0.00000000

   3    1  |1 1>+          0.00000003  0.00000000  0.00000000
                          -0.00000003  0.00000000 -0.00000000

   4    1  |1 1>+          0.70736358  0.00000178 -0.00000000
                           0.00003635  0.00000283  0.00000000

   1    1  |1 0>           0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000

   2    1  |1 0>          -0.00003633 -0.00000283 -0.00000000
                           0.70684981  0.00000178 -0.00000000

   3    1  |1 0>           0.00000283  0.00000028 -0.00000000
                           0.00000178 -0.70685230  0.00000000

   4    1  |1 0>          -0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000  0.81662212

   1    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000

   2    1  |1 1>-         -0.00000003  0.00000000 -0.00000000
                          -0.00000003 -0.00000000 -0.00000000

   3    1  |1 1>-         -0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000  0.41068913

   4    1  |1 1>-         -0.00000283 -0.00000028  0.00000000
                          -0.00000178  0.70736110 -0.00000000


  No SO block in symmetry 2


 Summary of SO results
 =====================

 Eigenvalues of the spin-orbit matrix
 ....................................

     Nr  Sym         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
                   (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1   1    -14.66249516     -0.00000000       -0.00      0.00000000        0.00      0.0000
     2   1    -14.42523056      0.23726460    52073.56      0.23726460    52073.56      6.4563
     3   1    -14.42523056      0.23726460    52073.56      0.23726460    52073.56      6.4563
     4   1    -14.42523056      0.23726460    52073.56      0.23726460    52073.56      6.4563
     5   1    -14.41377061      0.24872455    54588.73      0.24872455    54588.73      6.7681
     6   1    -14.41377054      0.24872462    54588.74      0.24872462    54588.74      6.7681
     7   1    -14.41377054      0.24872462    54588.74      0.24872462    54588.74      6.7681
     8   1    -14.41375483      0.24874033    54592.19      0.24874033    54592.19      6.7686
     9   1    -14.41375475      0.24874041    54592.21      0.24874041    54592.21      6.7686
    10   1    -14.41352296      0.24897220    54643.08      0.24897220    54643.08      6.7749
    11   1    -14.39023592      0.27225924    59754.00      0.27225924    59754.00      7.4086
    12   1    -14.39023224      0.27226292    59754.80      0.27226292    59754.80      7.4087
    13   1    -14.39023224      0.27226292    59754.80      0.27226292    59754.80      7.4087
    14   1    -14.39023224      0.27226292    59754.80      0.27226292    59754.80      7.4087
    15   1    -14.39022488      0.27227028    59756.42      0.27227028    59756.42      7.4089
    16   1    -14.39022488      0.27227028    59756.42      0.27227028    59756.42      7.4089
    17   1    -14.39022488      0.27227028    59756.42      0.27227028    59756.42      7.4089
    18   1    -14.39022488      0.27227028    59756.42      0.27227028    59756.42      7.4089
    19   1    -14.39022488      0.27227028    59756.42      0.27227028    59756.42      7.4089

 E0 =    -14.66249516 is the energy of the lowest zeroth-order state
 E1 =    -14.66249516 is the energy of the lowest SO-state


 Spin-orbit eigenvectors   (columnwise and corresponding to the eigenvalues in ascending order)
 .......................

        Basis states           Eigenvectors (columnwise)

   Total
 Nr Sym  State Sym Spin / Nr.        1           2           3           4           5           6           7           8

  1  1     1    1  |0 0>        1.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  2  1     2    1  |0 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000001  0.00000001 -0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  3  1     3    1  |0 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.99999987 -0.00039528  0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  4  1     4    1  |0 0>       -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00039528  0.99999987 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  5  1     5    1  |0 0>       -0.00000000 -0.00000106  0.00000038  0.00000000  0.99999995  0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  6  1     6    1  |0 0>       -0.00000000 -0.00000038 -0.00000106 -0.00000000  0.00000000 -0.00000000  0.00000000  0.99999995
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000033

  7  1     7    1  |0 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  8  1     1    1  |1 1>+       0.00000000  0.00195923 -0.00332396  0.99999256 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000892  0.00000208 -0.00000005 -0.00000000 -0.00000000  0.00000000  0.00000000

  9  1     2    1  |1 1>+       0.00001049 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00016530 -0.00020391  0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 10  1     3    1  |1 1>+      -0.00000000 -0.00000224 -0.00000632 -0.00000002 -0.00000000  0.00000000 -0.00000000 -0.00022747
                                0.00000000  0.00000001  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 11  1     4    1  |1 1>+      -0.00000000 -0.00000632  0.00000224  0.00000002 -0.00022731 -0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000001  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 12  1     1    1  |1 0>       -0.00000000  0.00121437  0.00028217 -0.00000638  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.33400347  0.94256776  0.00247870  0.00000000 -0.00000000  0.00000000  0.00000112

 13  1     2    1  |1 0>       -0.00000000  0.00000001  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000632 -0.00000224 -0.00000002 -0.00022718 -0.00000000 -0.00000000 -0.00000000

 14  1     3    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000001 -0.00000002  0.00000670 -0.00000000  0.00000000 -0.00000000 -0.00000000

 15  1     4    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00001045 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00009382  0.00024491 -0.00000000

 16  1     1    1  |1 1>-      -0.00000000  0.00189765  0.00044198 -0.00000996  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.94256712 -0.33399804 -0.00295691  0.00000113  0.00000000 -0.00000000 -0.00000000

 17  1     2    1  |1 1>-      -0.00000000 -0.00000001 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000224 -0.00000632 -0.00000002  0.00000000 -0.00000000  0.00000000  0.00022735

 18  1     3    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00001045  0.00000000  0.00000000  0.00000000  0.00000000 -0.00025902  0.00004112 -0.00000000

 19  1     4    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000001 -0.00000002  0.00000670  0.00000000 -0.00000000  0.00000000  0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.        9          10          11          12          13          14          15          16

  1  1     1    1  |0 0>        0.00000000  0.00000000 -0.00001812  0.00000000  0.00000000  0.00000000 -0.00000002 -0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  2  1     2    1  |0 0>       -0.00000000  1.00000000  0.00009192 -0.00000000 -0.00000000 -0.00000000  0.00000045  0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  3  1     3    1  |0 0>       -0.00000000 -0.00000001  0.00000003 -0.00000000 -0.00000000  0.00000000  0.00029957  0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  4  1     4    1  |0 0>        0.00000000 -0.00000001  0.00000014  0.00000000 -0.00000000  0.00000000  0.00011631  0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  5  1     5    1  |0 0>        0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000003  0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  6  1     6    1  |0 0>        0.00000000  0.00000000  0.00000000  0.00000008  0.00000000  0.00000000 -0.00000000  0.00032160
                                0.00000000  0.00000000  0.00000000  0.00000004  0.00000000 -0.00000000 -0.00000000  0.00000019

  7  1     7    1  |0 0>        0.99999995  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000012 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  8  1     1    1  |1 1>+       0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000948 -0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  9  1     2    1  |1 1>+      -0.00000000 -0.00005349  0.57744410  0.00000000 -0.00000000  0.00000000  0.70858703  0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 10  1     3    1  |1 1>+      -0.00000000  0.00000000 -0.00000000  0.62321935  0.00000002 -0.00000000 -0.00000000  0.70710911
                               -0.00000000  0.00000000  0.00000000  0.33405708  0.00000000  0.00000000 -0.00000000  0.00041389

 11  1     4    1  |1 1>+       0.00000000 -0.00000000 -0.00000000  0.00000002 -0.70684985 -0.00000058  0.00000000 -0.00000003
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000002  0.00000010  0.00000000 -0.00000003

 12  1     1    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000448 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000835  0.00000000 -0.00000000 -0.00000000  0.00000000

 13  1     2    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000 -0.00000002  0.00000010 -0.00000000  0.00000003
                               -0.00000000  0.00000000  0.00000000 -0.00000002  0.70736362  0.00000058  0.00000000 -0.00000003

 14  1     3    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000  0.00000010 -0.00000047 -0.00000000  0.00000000
                                0.00022728 -0.00000000  0.00000000  0.00000000 -0.00000058  0.70736114  0.00000000  0.00000000

 15  1     4    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00005286  0.57716497 -0.00000000 -0.00000000 -0.00000000 -0.00297434 -0.00000000

 16  1     1    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000948 -0.00000000  0.00000000  0.00000000

 17  1     2    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.33405943 -0.00000000 -0.00000000 -0.00000000  0.00041389
                                0.00000000  0.00000000 -0.00000000  0.62322372  0.00000002 -0.00000000  0.00000000 -0.70710414

 18  1     3    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00005286 -0.57744168 -0.00000000 -0.00000000  0.00000000  0.70561708  0.00000000

 19  1     4    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000010 -0.00000047  0.00000000 -0.00000000
                               -0.00022728  0.00000000  0.00000000  0.00000000 -0.00000058  0.70685233 -0.00000000 -0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.       17          18          19

  1  1     1    1  |0 0>       -0.00000000  0.00000000  0.00000001
                               -0.00000000 -0.00000000 -0.00000000

  2  1     2    1  |0 0>        0.00000000 -0.00000000 -0.00000024
                               -0.00000000 -0.00000000  0.00000000

  3  1     3    1  |0 0>        0.00000000  0.00000000  0.00011607
                                0.00000000  0.00000000  0.00000000

  4  1     4    1  |0 0>       -0.00000000 -0.00000000 -0.00029953
                               -0.00000000 -0.00000000 -0.00000000

  5  1     5    1  |0 0>        0.00032137  0.00000000 -0.00000000
                                0.00000002  0.00000000  0.00000000

  6  1     6    1  |0 0>        0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000

  7  1     7    1  |0 0>       -0.00000000  0.00032142 -0.00000000
                                0.00000000  0.00000000 -0.00000000

  8  1     1    1  |1 1>+       0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000

  9  1     2    1  |1 1>+      -0.00000000  0.00000000 -0.40553995
                               -0.00000000 -0.00000000  0.00000000

 10  1     3    1  |1 1>+       0.00000003  0.00000000  0.00000000
                               -0.00000003  0.00000000 -0.00000000

 11  1     4    1  |1 1>+       0.70736358  0.00000178 -0.00000000
                                0.00003635  0.00000283  0.00000000

 12  1     1    1  |1 0>        0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000

 13  1     2    1  |1 0>       -0.00003633 -0.00000283 -0.00000000
                                0.70684981  0.00000178 -0.00000000

 14  1     3    1  |1 0>        0.00000283  0.00000028 -0.00000000
                                0.00000178 -0.70685230  0.00000000

 15  1     4    1  |1 0>       -0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000  0.81662212

 16  1     1    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000

 17  1     2    1  |1 1>-      -0.00000003  0.00000000 -0.00000000
                               -0.00000003 -0.00000000 -0.00000000

 18  1     3    1  |1 1>-      -0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000  0.41068913

 19  1     4    1  |1 1>-      -0.00000283 -0.00000028  0.00000000
                               -0.00000178  0.70736110 -0.00000000



 Composition of spin-orbit eigenvectors
 ======================================
   Total
 Nr Sym  State Sym Spin / Nr.      1        2        3        4        5        6        7        8

  1  1     1    1  |0 0>        100.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  3  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%  100.00%    0.00%    0.00%
  4  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%  100.00%    0.00%
  5  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%  100.00%    0.00%    0.00%    0.00%
  6  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%  100.00%
  7  1     7    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  8  1     1    1  |1 1>+         0.00%    0.00%    0.00%  100.00%    0.00%    0.00%    0.00%    0.00%
  9  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 10  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1     4    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1     1    1  |1 0>          0.00%   11.16%   88.84%    0.00%    0.00%    0.00%    0.00%    0.00%
 13  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 14  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 15  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 16  1     1    1  |1 1>-         0.00%   88.84%   11.16%    0.00%    0.00%    0.00%    0.00%    0.00%
 17  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 18  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 19  1     4    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.      9       10       11       12       13       14       15       16

  1  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |0 0>          0.00%  100.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  3  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  4  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  5  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  6  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  7  1     7    1  |0 0>        100.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  8  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  9  1     2    1  |1 1>+         0.00%    0.00%   33.34%    0.00%    0.00%    0.00%   50.21%    0.00%
 10  1     3    1  |1 1>+         0.00%    0.00%    0.00%   50.00%    0.00%    0.00%    0.00%   50.00%
 11  1     4    1  |1 1>+         0.00%    0.00%    0.00%    0.00%   49.96%    0.00%    0.00%    0.00%
 12  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 13  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.00%   50.04%    0.00%    0.00%    0.00%
 14  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%   50.04%    0.00%    0.00%
 15  1     4    1  |1 0>          0.00%    0.00%   33.31%    0.00%    0.00%    0.00%    0.00%    0.00%
 16  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 17  1     2    1  |1 1>-         0.00%    0.00%    0.00%   50.00%    0.00%    0.00%    0.00%   50.00%
 18  1     3    1  |1 1>-         0.00%    0.00%   33.34%    0.00%    0.00%    0.00%   49.79%    0.00%
 19  1     4    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%   49.96%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.     17       18       19

  1  1     1    1  |0 0>          0.00%    0.00%    0.00%
  2  1     2    1  |0 0>          0.00%    0.00%    0.00%
  3  1     3    1  |0 0>          0.00%    0.00%    0.00%
  4  1     4    1  |0 0>          0.00%    0.00%    0.00%
  5  1     5    1  |0 0>          0.00%    0.00%    0.00%
  6  1     6    1  |0 0>          0.00%    0.00%    0.00%
  7  1     7    1  |0 0>          0.00%    0.00%    0.00%
  8  1     1    1  |1 1>+         0.00%    0.00%    0.00%
  9  1     2    1  |1 1>+         0.00%    0.00%   16.45%
 10  1     3    1  |1 1>+         0.00%    0.00%    0.00%
 11  1     4    1  |1 1>+        50.04%    0.00%    0.00%
 12  1     1    1  |1 0>          0.00%    0.00%    0.00%
 13  1     2    1  |1 0>         49.96%    0.00%    0.00%
 14  1     3    1  |1 0>          0.00%   49.96%    0.00%
 15  1     4    1  |1 0>          0.00%    0.00%   66.69%
 16  1     1    1  |1 1>-         0.00%    0.00%    0.00%
 17  1     2    1  |1 1>-         0.00%    0.00%    0.00%
 18  1     3    1  |1 1>-         0.00%    0.00%   16.87%
 19  1     4    1  |1 1>-         0.00%   50.04%    0.00%



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       29.43       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7        2.41       700     1000      520     2100     2140     5201     5202   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *         4.75      2.10      0.28      0.67      0.93      0.03      0.50
 REAL TIME  *         6.62 SEC
 DISK USED  *        31.92 MB (local),      284.41 MB (total)
 SF USED    *        12.40 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/USERDEF energy=    -14.390224877390

              CI              CI           MULTI         RHF-SCF
    -14.38949536    -14.39195394    -14.33814624    -14.57538898
 **********************************************************************************************************************************
 Molpro calculation terminated with 2 warning(s)
