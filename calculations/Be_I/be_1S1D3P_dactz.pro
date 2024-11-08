
 Working directory              : /wrk/irikura/molpro.wHleq8z7Ne/
 Global scratch directory       : /wrk/irikura/molpro.wHleq8z7Ne/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.wHleq8z7Ne/

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
     wf,sym=1,spin=0;state,6;
     wf,sym=1,spin=2;state,3;
     expec2,lxx,lyy,lzz;
 }
 table, energy, ll
 title, Energies and &lt;L**2&gt; values
 
 core,0,0
 {ci;wf,sym=1,spin=0;state,6; save,5201.2}
 hlsdiag = energd4
 {ci;wf,sym=1,spin=2;state,3; save,5202.2}
 hlsdiag(7) = energd4
 
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
  (24 PROC) 64 bit mpp version                                                           DATE: 30-Oct-24          TIME: 10:45:46  
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

     4.719 MB (compressed) written to integral file ( 15.5%)

     Node minimum: 0.786 MB, node maximum: 1.049 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:     283703.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:     283703      RECORD LENGTH: 524288

 Memory used in sort:       0.84 MW

 SORT1 READ     3091078. AND WROTE       64229. INTEGRALS IN      1 RECORDS. CPU TIME:     0.02 SEC, REAL TIME:     0.02 SEC
 SORT2 READ      305427. AND WROTE     1416696. INTEGRALS IN     20 RECORDS. CPU TIME:     0.01 SEC, REAL TIME:     0.02 SEC

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
 CPU TIMES  *         0.64      0.44
 REAL TIME  *         1.67 SEC
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
   1      -14.57538888     -14.57538888     0.00D+00     0.82D-01     0     0       0.01      0.01    start
   2      -14.57538897      -0.00000009     0.32D-04     0.75D-04     1     0       0.00      0.01    diag
   3      -14.57538898      -0.00000001     0.40D-05     0.20D-04     2     0       0.00      0.01    diag
   4      -14.57538898      -0.00000000     0.91D-06     0.50D-05     3     0       0.00      0.01    diag
   5      -14.57538898      -0.00000000     0.71D-07     0.59D-06     4     0       0.00      0.01    diag
   6      -14.57538898      -0.00000000     0.53D-08     0.50D-07     0     0       0.00      0.01    diag

 Final occupancy:   2   0

 !RHF STATE 1.1 Energy                -14.575388980178
  RHF One-electron energy             -19.065775782348
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
 CPU TIMES  *         0.66      0.01      0.44
 REAL TIME  *         1.70 SEC
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
 Number of states:             6
 Number of CSFs:               9   (13 determinants, 25 intermediate states)

 State symmetry 2

 Number of active electrons:   2    Spin symmetry=Triplet   Space symmetry=1
 Number of states:             3
 Number of CSFs:               4   (4 determinants, 10 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 1 4 3 5 2 6 4   5 2 6 3 1 5 2 4 3 6   1 6 5 4 3 2 1 5 3 4   6 2 1
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.318D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.318D+00 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 2 3 1 2 3 2 3 1 2   3 1 6 4 9 8 510 7 2   1 3 8 610 7 5 9 4 2   1 3 2 1 3

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.11111   0.11111   0.11111   0.11111   0.11111   0.11111
 Weight factors for state symmetry  2:    0.11111   0.11111   0.11111
 
 Number of orbital rotations:  188  ( 2 closed/active, 30 closed/virtual, 0 active/active, 156 active/virtual )
 Total number of variables:    278
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1   16   30   10    -13.99604074     -14.48667892   -0.49063819    0.04255545 0.00017885 0.00000000  0.19E+01      0.25
   2    7   12    0    -14.31630815     -14.34854126   -0.03223311    0.09659769 0.00000599 0.00000000  0.42E+00      0.46
   3   12   22    0    -14.34985327     -14.35029225   -0.00043897    0.00857853 0.00001202 0.00000000  0.99E+00      0.74
   4    6   12    0    -14.35028818     -14.35029243   -0.00000425    0.00013911 0.00000011 0.00000000  0.11E+00      0.89
   5    5   10    0    -14.35029243     -14.35029243   -0.00000000    0.00000052 0.00000001 0.00000000  0.36E-03      1.03

 CONVERGENCE REACHED!  Final gradient:    0.00000000 ( 0.16E-08)
                       Final energy:    -14.35029243
 
 Results for state 1.1 Singlet
 =============================
 !MCSCF STATE 1.1 Singlet Energy               -14.615546907479
 Nuclear energy                                  0.00000000
 Kinetic energy                                 14.58140766
 One electron energy                           -19.03570770
 Two electron energy                             4.42016079
 Virial ratio                                    2.00234129
 
 !MCSCF STATE 1.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Singlet
 =============================
 !MCSCF STATE 2.1 Singlet Energy               -14.304554356654
 Nuclear energy                                  0.00000000
 Kinetic energy                                 14.34193945
 One electron energy                           -18.60751685
 Two electron energy                             4.30296249
 Virial ratio                                    1.99739330
 
 !MCSCF STATE 2.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Singlet
 =============================
 !MCSCF STATE 3.1 Singlet Energy               -14.304554356622
 Nuclear energy                                  0.00000000
 Kinetic energy                                 14.34193945
 One electron energy                           -18.60751685
 Two electron energy                             4.30296249
 Virial ratio                                    1.99739330
 
 !MCSCF STATE 3.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Singlet
 =============================
 !MCSCF STATE 4.1 Singlet Energy               -14.304554356527
 Nuclear energy                                  0.00000000
 Kinetic energy                                 14.34193946
 One electron energy                           -18.60751686
 Two electron energy                             4.30296250
 Virial ratio                                    1.99739330
 
 !MCSCF STATE 4.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Singlet
 =============================
 !MCSCF STATE 5.1 Singlet Energy               -14.304554356514
 Nuclear energy                                  0.00000000
 Kinetic energy                                 14.34193946
 One electron energy                           -18.60751686
 Two electron energy                             4.30296250
 Virial ratio                                    1.99739330
 
 !MCSCF STATE 5.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Singlet
 =============================
 !MCSCF STATE 6.1 Singlet Energy               -14.304554356443
 Nuclear energy                                  0.00000000
 Kinetic energy                                 14.34193946
 One electron energy                           -18.60751686
 Two electron energy                             4.30296250
 Virial ratio                                    1.99739330
 
 !MCSCF STATE 6.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.1 Triplet
 =============================
 !MCSCF STATE 1.1 Triplet Energy               -14.338104399694
 Nuclear energy                                  0.00000000
 Kinetic energy                                 14.34193946
 One electron energy                           -18.60751686
 Two electron energy                             4.26941246
 Virial ratio                                    1.99973260
 
 !MCSCF STATE 1.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Triplet
 =============================
 !MCSCF STATE 2.1 Triplet Energy               -14.338104399681
 Nuclear energy                                  0.00000000
 Kinetic energy                                 14.34193946
 One electron energy                           -18.60751686
 Two electron energy                             4.26941246
 Virial ratio                                    1.99973260
 
 !MCSCF STATE 2.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Triplet
 =============================
 !MCSCF STATE 3.1 Triplet Energy               -14.338104399560
 Nuclear energy                                  0.00000000
 Kinetic energy                                 14.34193945
 One electron energy                           -18.60751685
 Two electron energy                             4.26941245
 Virial ratio                                    1.99973260
 
 !MCSCF STATE 3.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 ? Warning
 ? Transition properties are only calculated between states of the same symmetry
 ? The problem occurs in mu_properties_expec2

 !MCSCF expec      <1.1 Singlet|LXLX|1.1 Singlet>     0.000000000000
 !MCSCF expec      <2.1 Singlet|LXLX|2.1 Singlet>     3.999999999914
 !MCSCF expec      <3.1 Singlet|LXLX|3.1 Singlet>     3.992771181678
 !MCSCF expec      <4.1 Singlet|LXLX|4.1 Singlet>     0.999999999995
 !MCSCF expec      <5.1 Singlet|LXLX|5.1 Singlet>     0.999999999996
 !MCSCF expec      <6.1 Singlet|LXLX|6.1 Singlet>     0.007228695656
 !MCSCF expec      <1.1 Triplet|LXLX|1.1 Triplet>     0.999999999999
 !MCSCF expec      <2.1 Triplet|LXLX|2.1 Triplet>     1.000000000000
 !MCSCF expec      <3.1 Triplet|LXLX|3.1 Triplet>     0.000000000001
 
 !MCSCF expec      <1.1 Singlet|LYLY|1.1 Singlet>     0.000000000000
 !MCSCF expec      <2.1 Singlet|LYLY|2.1 Singlet>     1.000000000110
 !MCSCF expec      <3.1 Singlet|LYLY|3.1 Singlet>     1.150744498174
 !MCSCF expec      <4.1 Singlet|LYLY|4.1 Singlet>     3.999999988841
 !MCSCF expec      <5.1 Singlet|LYLY|5.1 Singlet>     1.000000010211
 !MCSCF expec      <6.1 Singlet|LYLY|6.1 Singlet>     2.849256810184
 !MCSCF expec      <1.1 Triplet|LYLY|1.1 Triplet>     0.999999995912
 !MCSCF expec      <2.1 Triplet|LYLY|2.1 Triplet>     0.000000004088
 !MCSCF expec      <3.1 Triplet|LYLY|3.1 Triplet>     1.000000000000
 
 !MCSCF expec      <1.1 Singlet|LZLZ|1.1 Singlet>     0.000000000000
 !MCSCF expec      <2.1 Singlet|LZLZ|2.1 Singlet>     0.999999999976
 !MCSCF expec      <3.1 Singlet|LZLZ|3.1 Singlet>     0.856484320148
 !MCSCF expec      <4.1 Singlet|LZLZ|4.1 Singlet>     1.000000011165
 !MCSCF expec      <5.1 Singlet|LZLZ|5.1 Singlet>     3.999999989793
 !MCSCF expec      <6.1 Singlet|LZLZ|6.1 Singlet>     3.143514494160
 !MCSCF expec      <1.1 Triplet|LZLZ|1.1 Triplet>     0.000000004089
 !MCSCF expec      <2.1 Triplet|LZLZ|2.1 Triplet>     0.999999995912
 !MCSCF expec      <3.1 Triplet|LZLZ|3.1 Triplet>     0.999999999999
 
 !MCSCF expec      <1.1 Singlet|L**2|1.1 Singlet>     0.000000000000
 !MCSCF expec      <2.1 Singlet|L**2|2.1 Singlet>     6.000000000000
 !MCSCF expec      <3.1 Singlet|L**2|3.1 Singlet>     6.000000000000
 !MCSCF expec      <4.1 Singlet|L**2|4.1 Singlet>     6.000000000000
 !MCSCF expec      <5.1 Singlet|L**2|5.1 Singlet>     6.000000000000
 !MCSCF expec      <6.1 Singlet|L**2|6.1 Singlet>     6.000000000000
 !MCSCF expec      <1.1 Triplet|L**2|1.1 Triplet>     2.000000000000
 !MCSCF expec      <2.1 Triplet|L**2|2.1 Triplet>     2.000000000000
 !MCSCF expec      <3.1 Triplet|L**2|3.1 Triplet>     2.000000000000
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 1 3 5 6 4 2 1   5 3 6 2 4 5 3 6 2 4   1 5 3 6 2 4 1 5 3 6   2 4 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 1 2 2 1 3 1 2 3 1   2 3 7 9 810 5 6 4 2   1 3 9 710 8 5 6 4 2   1 3 2 1 3
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -4.80185     1  1  s    0.99925
    2.1     0.20108    -0.09808     1  2  s    1.02462
    3.1     0.00040     0.39958     1  1  s    0.52152    1  2  s    1.09116    1  3  s   -1.93469    1  4  s    0.41880
    1.2     0.59950    -0.00257     1  1  pz   0.99237
    2.2     0.59950    -0.00257     1  1  px   0.99237
    3.2     0.59950    -0.00257     1  1  py   0.99237
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 1 (Singlet)
 =======================================
 
 20 000         0.95125038      0.00000000      0.00000000      0.00000000     -0.00000000     -0.00000000
 00 020        -0.17636384     -0.00000373     -0.03471027     -0.00000223      0.00000186      0.81575846
 00 200        -0.17636384      0.00000488      0.72382269      0.00000187     -0.00000078     -0.37781925
 00 a0b        -0.00000000      0.70710678     -0.00000314      0.00000027      0.00000053      0.00000310
 00 b0a         0.00000000     -0.70710678      0.00000314     -0.00000027     -0.00000053     -0.00000310
 00 0ab        -0.00000000     -0.00000053     -0.00000009      0.00004312      0.70710678     -0.00000162
 00 0ba         0.00000000      0.00000053      0.00000009     -0.00004312     -0.70710678      0.00000162
 00 ab0        -0.00000000     -0.00000027     -0.00000084      0.70710678     -0.00004312      0.00000190
 00 ba0         0.00000000      0.00000027      0.00000084     -0.70710678      0.00004312     -0.00000190
 00 002        -0.17636384     -0.00000114     -0.68911241      0.00000035     -0.00000109     -0.43793921
 
 Energy:      -14.61554691    -14.30455436    -14.30455436    -14.30455436    -14.30455436    -14.30455436
 
 
 CI Coefficients of symmetry 1 (Triplet)
 =======================================
 
 00 a0a        -0.00000079     -0.00000017      1.00000000
 00 aa0        -0.00006394      1.00000000      0.00000017
 00 0aa         1.00000000      0.00006394      0.00000079
 
 Energy:      -14.33810440    -14.33810440    -14.33810440
 


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
 CPU TIMES  *         1.67      1.01      0.01      0.44
 REAL TIME  *         2.84 SEC
 DISK USED  *        30.08 MB (local),      172.18 MB (total)
 SF USED    *         2.17 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

        ENERGY      LL
    -14.61554691   0.0
    -14.30455436   6.0
    -14.30455436   6.0
    -14.30455436   6.0
    -14.30455436   6.0
    -14.30455436   6.0
    -14.33810440   2.0
    -14.33810440   2.0
    -14.33810440   2.0
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 6  Roots:    1   2   3   4   5   6
 Number of reference states: 6  Roots:    1   2   3   4   5   6

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


 Number of p-space configurations:   7

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1       -14.61554691
     2       -14.30455436
     3       -14.30455436
     4       -14.30455436
     5       -14.30455436
     6       -14.30455436

 Number of blocks in overlap matrix:    17   Smallest eigenvalue:  0.10D+01
 Number of N-2 electron functions:      17
 Number of N-1 electron functions:      70

 Number of internal configurations:                   57
 Number of singly external configurations:          2170
 Number of doubly external configurations:         16559
 Total number of contracted configurations:        18786
 Total number of uncontracted configurations:      25489

 Diagonal Coupling coefficients finished.               Storage:    190936 words, CPU-Time:      0.00 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:    201362 words, CPU-time:      0.00 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000   -14.61554691    -0.00000000    -0.04413711  0.53D-02  0.20D-02     0.01
    1     2     2     1.00000000     0.00000000   -14.30455436     0.00000000    -0.07050538  0.34D-01  0.10D-01     0.01
    1     3     3     1.00000000     0.00000000   -14.30455436     0.00000000    -0.07363113  0.48D-01  0.10D-01     0.01
    1     4     4     1.00000000     0.00000000   -14.30455436     0.00000000    -0.07056159  0.34D-01  0.10D-01     0.01
    1     5     5     1.00000000     0.00000000   -14.30455436     0.00000000    -0.07049915  0.34D-01  0.10D-01     0.01
    1     6     6     1.00000000     0.00000000   -14.30455436     0.00000000    -0.07365833  0.48D-01  0.10D-01     0.01
    2     1     1     1.00775023    -0.04604562   -14.66159252    -0.04604562    -0.00026314  0.72D-04  0.64D-04     0.07
    2     2     2     1.06338962    -0.07736550   -14.38191986    -0.07736550    -0.00462250  0.88D-02  0.42D-03     0.07
    2     3     3     1.06334214    -0.07734937   -14.38190373    -0.07734937    -0.00463140  0.88D-02  0.42D-03     0.07
    2     4     4     1.04991973    -0.07526029   -14.37981465    -0.07526029    -0.00548347  0.12D-01  0.40D-03     0.07
    2     5     5     1.04991950    -0.07524983   -14.37980419    -0.07524983    -0.00548976  0.12D-01  0.40D-03     0.07
    2     6     6     1.04996733    -0.07524887   -14.37980323    -0.07524887    -0.00549326  0.12D-01  0.40D-03     0.07
    3     1     1     1.00885622    -0.04635715   -14.66190406    -0.00031153    -0.00001320  0.86D-05  0.22D-05     0.12
    3     2     2     1.14686181    -0.08530615   -14.38986051    -0.00794065    -0.00112648  0.14D-02  0.16D-03     0.12
    3     3     3     1.14674252    -0.08529839   -14.38985275    -0.00794902    -0.00113207  0.14D-02  0.17D-03     0.12
    3     4     4     1.14868128    -0.08512619   -14.38968055    -0.00986590    -0.00128271  0.15D-02  0.19D-03     0.12
    3     5     5     1.14872115    -0.08512466   -14.38967902    -0.00987483    -0.00128365  0.15D-02  0.19D-03     0.12
    3     6     6     1.14834667    -0.08511324   -14.38966759    -0.00986436    -0.00129211  0.15D-02  0.19D-03     0.12
    4     1     1     1.00950580    -0.04637410   -14.66192100    -0.00001695    -0.00000050  0.24D-06  0.77D-07     0.18
    4     2     2     1.21461619    -0.08701926   -14.39157361    -0.00171311    -0.00019079  0.34D-03  0.47D-04     0.18
    4     3     3     1.21462170    -0.08701887   -14.39157323    -0.00172048    -0.00019081  0.34D-03  0.47D-04     0.18
    4     4     4     1.20923643    -0.08694264   -14.39149699    -0.00181645    -0.00022812  0.40D-03  0.57D-04     0.18
    4     5     5     1.20920325    -0.08694216   -14.39149652    -0.00181750    -0.00022826  0.40D-03  0.57D-04     0.18
    4     6     6     1.20920833    -0.08694149   -14.39149584    -0.00182825    -0.00022855  0.40D-03  0.58D-04     0.18
    5     1     1     1.00949557    -0.04637472   -14.66192163    -0.00000062    -0.00000003  0.12D-07  0.36D-08     0.23
    5     2     2     1.23295779    -0.08737571   -14.39193006    -0.00035645    -0.00004612  0.50D-04  0.10D-04     0.23
    5     3     3     1.23288692    -0.08737502   -14.39192937    -0.00035615    -0.00004647  0.50D-04  0.11D-04     0.23
    5     4     4     1.22984403    -0.08735390   -14.39190826    -0.00041126    -0.00005538  0.63D-04  0.12D-04     0.23
    5     5     5     1.22981494    -0.08735380   -14.39190816    -0.00041164    -0.00005539  0.63D-04  0.12D-04     0.23
    5     6     6     1.22978224    -0.08735322   -14.39190757    -0.00041173    -0.00005571  0.63D-04  0.12D-04     0.23
    6     1     1     1.00949304    -0.04637476   -14.66192166    -0.00000004    -0.00000000  0.43D-09  0.18D-09     0.29
    6     2     2     1.24173981    -0.08744530   -14.39199966    -0.00006960    -0.00000993  0.99D-05  0.16D-05     0.29
    6     3     3     1.24170584    -0.08744518   -14.39199954    -0.00007016    -0.00001001  0.99D-05  0.16D-05     0.29
    6     4     4     1.24132551    -0.08744125   -14.39199560    -0.00008735    -0.00001257  0.12D-04  0.22D-05     0.29
    6     5     5     1.24131439    -0.08744123   -14.39199558    -0.00008743    -0.00001257  0.12D-04  0.21D-05     0.29
    6     6     6     1.24127694    -0.08744107   -14.39199543    -0.00008786    -0.00001269  0.12D-04  0.22D-05     0.29
    7     1     1     1.00949303    -0.04637476   -14.66192166    -0.00000000    -0.00000000  0.43D-09  0.18D-09     0.34
    7     2     2     1.24928919    -0.08746101   -14.39201537    -0.00001571    -0.00000077  0.48D-06  0.23D-06     0.34
    7     3     3     1.24668816    -0.08745874   -14.39201309    -0.00001356    -0.00000172  0.23D-05  0.30D-06     0.34
    7     4     4     1.24665537    -0.08745870   -14.39201306    -0.00001746    -0.00000174  0.23D-05  0.31D-06     0.34
    7     5     5     1.24607697    -0.08745773   -14.39201209    -0.00001650    -0.00000232  0.31D-05  0.38D-06     0.34
    7     6     6     1.24608016    -0.08745773   -14.39201208    -0.00001665    -0.00000232  0.31D-05  0.38D-06     0.34
    8     1     1     1.00949304    -0.04637476   -14.66192166    -0.00000000    -0.00000000  0.43D-09  0.18D-09     0.39
    8     2     2     1.25008244    -0.08746200   -14.39201635    -0.00000099    -0.00000008  0.67D-07  0.17D-07     0.39
    8     3     3     1.24977174    -0.08746155   -14.39201591    -0.00000281    -0.00000036  0.32D-06  0.11D-06     0.39
    8     4     4     1.24858370    -0.08746121   -14.39201556    -0.00000250    -0.00000047  0.61D-06  0.52D-07     0.39
    8     5     5     1.24856967    -0.08746119   -14.39201555    -0.00000346    -0.00000048  0.62D-06  0.54D-07     0.39
    8     6     6     1.24818994    -0.08746089   -14.39201525    -0.00000316    -0.00000062  0.85D-06  0.75D-07     0.39
    9     1     1     1.00949304    -0.04637476   -14.66192166     0.00000000    -0.00000000  0.43D-09  0.18D-09     0.44
    9     2     2     1.25049388    -0.08746210   -14.39201646    -0.00000010    -0.00000001  0.10D-07  0.13D-08     0.44
    9     3     3     1.25019954    -0.08746208   -14.39201643    -0.00000053    -0.00000002  0.20D-07  0.39D-08     0.44
    9     4     4     1.24963087    -0.08746192   -14.39201627    -0.00000071    -0.00000012  0.13D-06  0.17D-07     0.44
    9     5     5     1.24962391    -0.08746191   -14.39201627    -0.00000072    -0.00000012  0.13D-06  0.17D-07     0.44
    9     6     6     1.24947621    -0.08746184   -14.39201620    -0.00000095    -0.00000017  0.18D-06  0.23D-07     0.44
   10     1     1     1.00949304    -0.04637476   -14.66192166    -0.00000000    -0.00000000  0.43D-09  0.18D-09     0.50
   10     2     2     1.25059310    -0.08746211   -14.39201647    -0.00000001    -0.00000000  0.15D-08  0.18D-09     0.50
   10     3     3     1.25047865    -0.08746211   -14.39201647    -0.00000003    -0.00000000  0.36D-08  0.54D-09     0.50
   10     4     4     1.25017684    -0.08746207   -14.39201643    -0.00000015    -0.00000002  0.34D-07  0.27D-08     0.50
   10     5     5     1.25017277    -0.08746207   -14.39201643    -0.00000016    -0.00000002  0.34D-07  0.28D-08     0.50
   10     6     6     1.25008263    -0.08746205   -14.39201641    -0.00000021    -0.00000003  0.50D-07  0.36D-08     0.50
   11     1     1     1.00949304    -0.04637476   -14.66192166    -0.00000000    -0.00000000  0.43D-09  0.18D-09     0.53
   11     2     2     1.25065657    -0.08746212   -14.39201647    -0.00000000    -0.00000000  0.60D-09  0.30D-09     0.53
   11     3     3     1.25066135    -0.08746211   -14.39201647    -0.00000000    -0.00000000  0.83D-09  0.38D-09     0.53
   11     4     4     1.25059310    -0.08746211   -14.39201647    -0.00000004    -0.00000000  0.15D-08  0.18D-09     0.53
   11     5     5     1.25047865    -0.08746211   -14.39201647    -0.00000004    -0.00000000  0.36D-08  0.54D-09     0.53
   11     6     6     1.25043269    -0.08746210   -14.39201646    -0.00000005    -0.00000001  0.86D-08  0.63D-09     0.53


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   3.8%
 S   0.0%   0.0%
 P   0.0%  11.3%  18.9%

 Initialization:   1.9%
 Other:           64.2%

 Total CPU:        0.5 seconds
 =====================================



 Wavefunction saved on  5201.2

 Reference coefficients greater than 0.0500000
 =============================================
 220000           0.9525639   0.0000005   0.0000000  -0.0000000   0.0000000  -0.0000006
 2000/\           0.0000000  -0.0000000  -0.0000000   0.0000000   0.8942239  -0.0000000
 200/\0          -0.0000000   0.0000000  -0.0000000   0.8941830   0.0000000  -0.0000000
 200/0\          -0.0000000   0.0000000   0.8941586   0.0000000  -0.0000000   0.0000000
 200002          -0.1642955  -0.1887862   0.0000000  -0.0000000   0.0000000   0.7053116
 200200          -0.1642955   0.7051562   0.0000000  -0.0000000  -0.0000000  -0.1891504
 200020          -0.1642955  -0.5163692   0.0000000  -0.0000000  -0.0000000  -0.5161623

 Coefficients of singly external configurations greater than 0.0500000
 =====================================================================

 2\0000  13.1     0.0000000  -0.0000000  -0.3199828  -0.0000000   0.0000000  -0.0000000
 2\0000  15.1     0.0000000  -0.0000000   0.0000000  -0.3199625  -0.0000000  -0.0000000
 2\0000  12.1     0.0000000   0.0000000  -0.0000000  -0.0000000  -0.3199074  -0.0000000
 2\0000  14.1     0.0000000  -0.3090551   0.0000000  -0.0000000  -0.0000000   0.0828918
 2\0000  11.1     0.0000001   0.0828966  -0.0000000  -0.0000000  -0.0000000   0.3090457
 2\0000   7.1     0.0000000   0.0000000  -0.2566881   0.0000000  -0.0000000   0.0000000
 2\0000   8.1    -0.0000000   0.0000000   0.0000000  -0.2566154   0.0000000  -0.0000000
 2\0000   5.1     0.0000000   0.0000000   0.0000000   0.0000000  -0.2565371  -0.0000000
 2\0000   9.1    -0.0000001  -0.2479241   0.0000000  -0.0000000  -0.0000000   0.0664129
 2\0000   6.1    -0.0000001   0.0664941   0.0000000   0.0000000  -0.0000000   0.2476580
 2\0000  17.1    -0.0000000   0.0000000  -0.0000000  -0.0000000  -0.1396228  -0.0000000
 2\0000  20.1     0.0000000   0.0000000   0.0000000  -0.1396176  -0.0000000  -0.0000000
 2\0000  18.1     0.0000000  -0.0000000  -0.1395940  -0.0000000  -0.0000000  -0.0000000
 2\0000  16.1     0.0000001   0.0361627  -0.0000000  -0.0000000  -0.0000000   0.1348592
 2\0000  19.1     0.0000000  -0.1348280   0.0000000  -0.0000000   0.0000000   0.0361720

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.994798   -0.000000   -0.000000   -0.000000    0.000000    0.000000
 2           0.000000    0.000000    0.658423    0.000000   -0.000000   -0.604981
 3           0.000000    0.894159    0.000000   -0.000000   -0.000000   -0.000000
 4           0.000000    0.000000   -0.000000    0.894183    0.000000   -0.000000
 5          -0.000000   -0.000000   -0.000000    0.000000    0.894224   -0.000000
 6          -0.000000    0.000000   -0.605038   -0.000000   -0.000000   -0.658480

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.994798    0.000000    0.000000    0.000000    0.000000   -0.000000
 2           0.000000    0.894160    0.000000   -0.000000   -0.000000   -0.000002
 3           0.000000    0.000000    0.894159   -0.000000   -0.000000    0.000000
 4           0.000000   -0.000000   -0.000000    0.894183    0.000000    0.000000
 5           0.000000   -0.000000   -0.000000    0.000000    0.894224    0.000000
 6          -0.000000   -0.000002    0.000000    0.000000    0.000000    0.894240


 RESULTS FOR STATE 1.1
 =====================

 Coefficient of reference function:   C(0) = 0.99479758 (fixed)   0.99525402 (relaxed)   0.99479758 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00098422   -0.00048235   -0.03673353
 Singles      0.00727962   -0.00930163   -0.00953984
 Pairs        0.00222276   -0.00000002   -0.00010138
 Total        1.01048660   -0.00978401   -0.04637476
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -14.61554691
 Nuclear energy                         0.00000000
 Kinetic energy                        14.66665841
 One electron energy                  -19.04389868
 Two electron energy                    4.38197702
 Virial quotient                       -0.99967704
 Correlation energy                    -0.04637476
 !MRCI STATE 1.1 Energy               -14.661921663145

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -14.66240798 (Davidson, fixed reference)
 Cluster corrected energies           -14.66236500 (Davidson, relaxed reference)
 Cluster corrected energies           -14.66240798 (Davidson, rotated reference)

 Cluster corrected energies           -14.66216481 (Pople, fixed reference)
 Cluster corrected energies           -14.66214333 (Pople, relaxed reference)
 Cluster corrected energies           -14.66216481 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.65842323 (fixed)   0.89416031 (relaxed)   0.89416031 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00007175   -0.00068097   -0.05999546
 Singles      0.23927084   -0.04243392   -0.05065829
 Pairs        0.01140372    0.03000462    0.02319163
 Total        1.25074630   -0.01311026   -0.08746212
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -14.30455436
 Nuclear energy                         0.00000000
 Kinetic energy                        14.40137884
 One electron energy                  -18.51259847
 Two electron energy                    4.12058200
 Virial quotient                       -0.99934990
 Correlation energy                    -0.08746212
 !MRCI STATE 2.1 Energy               -14.392016471710

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -14.41394727 (Davidson, fixed reference)
 Cluster corrected energies           -14.41394727 (Davidson, relaxed reference)
 Cluster corrected energies           -14.41394727 (Davidson, rotated reference)

 Cluster corrected energies           -14.40281473 (Pople, fixed reference)
 Cluster corrected energies           -14.40281473 (Pople, relaxed reference)
 Cluster corrected energies           -14.40281473 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.89415860 (fixed)   0.89415860 (relaxed)   0.89415860 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00007175   -0.00068097   -0.03600569
 Singles      0.23927543   -0.04243423   -0.05065841
 Pairs        0.01140390   -0.00000000   -0.00079801
 Total        1.25075108   -0.04311520   -0.08746211
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -14.30455436
 Nuclear energy                         0.00000000
 Kinetic energy                        14.40138316
 One electron energy                  -18.51260364
 Two electron energy                    4.12058717
 Virial quotient                       -0.99934960
 Correlation energy                    -0.08746211
 !MRCI STATE 3.1 Energy               -14.392016471372

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -14.41394769 (Davidson, fixed reference)
 Cluster corrected energies           -14.41394769 (Davidson, relaxed reference)
 Cluster corrected energies           -14.41394769 (Davidson, rotated reference)

 Cluster corrected energies           -14.40281493 (Pople, fixed reference)
 Cluster corrected energies           -14.40281493 (Pople, relaxed reference)
 Cluster corrected energies           -14.40281493 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Coefficient of reference function:   C(0) = 0.89418300 (fixed)   0.89418300 (relaxed)   0.89418300 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00007175   -0.00068097   -0.03600803
 Singles      0.23920813   -0.04243376   -0.05065596
 Pairs        0.01140296   -0.00000000   -0.00079812
 Total        1.25068283   -0.04311473   -0.08746211
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -14.30455436
 Nuclear energy                         0.00000000
 Kinetic energy                        14.40144314
 One electron energy                  -18.51265019
 Two electron energy                    4.12063372
 Virial quotient                       -0.99934544
 Correlation energy                    -0.08746211
 !MRCI STATE 4.1 Energy               -14.392016471340

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -14.41394172 (Davidson, fixed reference)
 Cluster corrected energies           -14.41394172 (Davidson, relaxed reference)
 Cluster corrected energies           -14.41394172 (Davidson, rotated reference)

 Cluster corrected energies           -14.40281208 (Pople, fixed reference)
 Cluster corrected energies           -14.40281208 (Pople, relaxed reference)
 Cluster corrected energies           -14.40281208 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Coefficient of reference function:   C(0) = 0.89422392 (fixed)   0.89422392 (relaxed)   0.89422392 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00007175   -0.00068098   -0.03601352
 Singles      0.23909092   -0.04243102   -0.05065207
 Pairs        0.01140569    0.00000000   -0.00079652
 Total        1.25056837   -0.04311200   -0.08746211
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -14.30455436
 Nuclear energy                         0.00000000
 Kinetic energy                        14.40141249
 One electron energy                  -18.51265289
 Two electron energy                    4.12063642
 Virial quotient                       -0.99934756
 Correlation energy                    -0.08746211
 !MRCI STATE 5.1 Energy               -14.392016467263

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -14.41393171 (Davidson, fixed reference)
 Cluster corrected energies           -14.41393171 (Davidson, relaxed reference)
 Cluster corrected energies           -14.41393171 (Davidson, rotated reference)

 Cluster corrected energies           -14.40280729 (Pople, fixed reference)
 Cluster corrected energies           -14.40280729 (Pople, relaxed reference)
 Cluster corrected energies           -14.40280729 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Coefficient of reference function:   C(0) = 0.65847962 (fixed)   0.89424035 (relaxed)   0.89424035 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00007174   -0.00068096   -0.06213228
 Singles      0.23904531   -0.04242922   -0.05065096
 Pairs        0.01140535    0.03265864    0.02532113
 Total        1.25052240   -0.01045153   -0.08746210
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -14.30455436
 Nuclear energy                         0.00000000
 Kinetic energy                        14.40139604
 One electron energy                  -18.51269501
 Two electron energy                    4.12067855
 Virial quotient                       -0.99934870
 Correlation energy                    -0.08746210
 !MRCI STATE 6.1 Energy               -14.392016461046

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -14.41392768 (Davidson, fixed reference)
 Cluster corrected energies           -14.41392768 (Davidson, relaxed reference)
 Cluster corrected energies           -14.41392768 (Davidson, rotated reference)

 Cluster corrected energies           -14.40280536 (Pople, fixed reference)
 Cluster corrected energies           -14.40280536 (Pople, relaxed reference)
 Cluster corrected energies           -14.40280536 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       29.40       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       6        1.63       700     1000      520     2100     2140     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *         2.29      0.60      1.01      0.01      0.44
 REAL TIME  *         3.62 SEC
 DISK USED  *        31.11 MB (local),      177.34 MB (total)
 SF USED    *         8.61 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =       -14.66240798  AU                              
 SETTING HLSDIAG(2)     =       -14.41394727  AU                              
 SETTING HLSDIAG(3)     =       -14.41394769  AU                              
 SETTING HLSDIAG(4)     =       -14.41394172  AU                              
 SETTING HLSDIAG(5)     =       -14.41393171  AU                              
 SETTING HLSDIAG(6)     =       -14.41392768  AU                              


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 3  Roots:    1   2   3
 Number of reference states: 3  Roots:    1   2   3

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
     1       -14.33810440
     2       -14.33810440
     3       -14.33810440

 Number of blocks in overlap matrix:    10   Smallest eigenvalue:  0.10D+01
 Number of N-2 electron functions:      10
 Number of N-1 electron functions:      78

 Number of internal configurations:                   51
 Number of singly external configurations:          2418
 Number of doubly external configurations:          9670
 Total number of contracted configurations:        12139
 Total number of uncontracted configurations:      29170

 Diagonal Coupling coefficients finished.               Storage:    182494 words, CPU-Time:      0.00 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:    200700 words, CPU-time:      0.00 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000   -14.33810440    -0.00000000    -0.04705767  0.87D-03  0.72D-02     0.00
    1     2     2     1.00000000     0.00000000   -14.33810440     0.00000000    -0.04709229  0.87D-03  0.73D-02     0.00
    1     3     3     1.00000000     0.00000000   -14.33810440     0.00000000    -0.04709191  0.87D-03  0.73D-02     0.00
    2     1     1     1.00913315    -0.05062837   -14.38873277    -0.05062837    -0.00055002  0.17D-03  0.29D-03     0.02
    2     2     2     1.00913308    -0.05062832   -14.38873272    -0.05062832    -0.00055007  0.17D-03  0.29D-03     0.02
    2     3     3     1.00907541    -0.05061675   -14.38872115    -0.05061675    -0.00055610  0.17D-03  0.29D-03     0.02
    3     1     1     1.01367675    -0.05135273   -14.38945713    -0.00072437    -0.00002500  0.14D-05  0.98D-05     0.04
    3     2     2     1.01367656    -0.05135272   -14.38945712    -0.00072440    -0.00002500  0.14D-05  0.98D-05     0.04
    3     3     3     1.01367381    -0.05135201   -14.38945641    -0.00073527    -0.00002552  0.14D-05  0.99D-05     0.04
    4     1     1     1.01438309    -0.05138227   -14.38948667    -0.00002954    -0.00000074  0.32D-06  0.32D-06     0.06
    4     2     2     1.01438308    -0.05138227   -14.38948667    -0.00002955    -0.00000074  0.32D-06  0.32D-06     0.06
    4     3     3     1.01438396    -0.05138223   -14.38948663    -0.00003021    -0.00000076  0.34D-06  0.32D-06     0.06
    5     1     1     1.01437910    -0.05138332   -14.38948772    -0.00000105    -0.00000009  0.79D-07  0.21D-07     0.08
    5     2     2     1.01437910    -0.05138332   -14.38948772    -0.00000105    -0.00000009  0.79D-07  0.21D-07     0.08
    5     3     3     1.01437884    -0.05138332   -14.38948772    -0.00000109    -0.00000010  0.81D-07  0.22D-07     0.08
    6     1     1     1.01437055    -0.05138346   -14.38948786    -0.00000014    -0.00000001  0.44D-08  0.75D-09     0.10
    6     2     2     1.01437055    -0.05138346   -14.38948786    -0.00000014    -0.00000001  0.44D-08  0.75D-09     0.10
    6     3     3     1.01437045    -0.05138346   -14.38948786    -0.00000015    -0.00000001  0.46D-08  0.80D-09     0.10


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I  10.0%
 S   0.0%   0.0%
 P   0.0%  30.0%   0.0%

 Initialization:   0.0%
 Other:           60.0%

 Total CPU:        0.1 seconds
 =====================================



 Wavefunction saved on  5202.2

 Reference coefficients greater than 0.0500000
 =============================================
 2000//          -0.0000000   0.0000000   0.9928347
 200//0           0.9928346  -0.0000000   0.0000000
 200/0/          -0.0000000   0.9928346  -0.0000000

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1          -0.000000    0.992835   -0.000000
 2           0.000000   -0.000000    0.992835
 3           0.992835    0.000000   -0.000000

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.992835   -0.000000   -0.000000
 2          -0.000000    0.992835   -0.000000
 3          -0.000000   -0.000000    0.992835


 RESULTS FOR STATE 1.1
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.99283461 (fixed)   0.99283461 (relaxed)   0.99283461 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00011409   -0.00085064   -0.04415011
 Singles      0.00172375   -0.00659965   -0.00659228
 Pairs        0.01264845   -0.00000000   -0.00064107
 Total        1.01448628   -0.00745028   -0.05138346
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -14.33810440
 Nuclear energy                         0.00000000
 Kinetic energy                        14.39594061
 One electron energy                  -18.59487782
 Two electron energy                    4.20538996
 Virial quotient                       -0.99955177
 Correlation energy                    -0.05138346
 !MRCI STATE 1.1 Energy               -14.389487863336

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -14.39023222 (Davidson, fixed reference)
 Cluster corrected energies           -14.39023222 (Davidson, relaxed reference)
 Cluster corrected energies           -14.39023222 (Davidson, rotated reference)

 Cluster corrected energies           -14.38948786 (Pople, fixed reference)
 Cluster corrected energies           -14.38948786 (Pople, relaxed reference)
 Cluster corrected energies           -14.38948786 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.99283461 (fixed)   0.99283461 (relaxed)   0.99283461 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00011409   -0.00085064   -0.00084427
 Singles      0.00172375   -0.00659965   -0.00659228
 Pairs        0.01264845   -0.04393318   -0.04394691
 Total        1.01448628   -0.05138346   -0.05138346
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -14.33810440
 Nuclear energy                         0.00000000
 Kinetic energy                        14.39594055
 One electron energy                  -18.59487780
 Two electron energy                    4.20538994
 Virial quotient                       -0.99955177
 Correlation energy                    -0.05138346
 !MRCI STATE 2.1 Energy               -14.389487863321

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -14.39023222 (Davidson, fixed reference)
 Cluster corrected energies           -14.39023222 (Davidson, relaxed reference)
 Cluster corrected energies           -14.39023222 (Davidson, rotated reference)

 Cluster corrected energies           -14.38948786 (Pople, fixed reference)
 Cluster corrected energies           -14.38948786 (Pople, relaxed reference)
 Cluster corrected energies           -14.38948786 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.99283466 (fixed)   0.99283466 (relaxed)   0.99283466 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00011409   -0.00085064   -0.04415009
 Singles      0.00172374   -0.00659967   -0.00659229
 Pairs        0.01264836   -0.00000000   -0.00064109
 Total        1.01448619   -0.00745031   -0.05138346
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -14.33810440
 Nuclear energy                         0.00000000
 Kinetic energy                        14.39593924
 One electron energy                  -18.59487664
 Two electron energy                    4.20538878
 Virial quotient                       -0.99955186
 Correlation energy                    -0.05138346
 !MRCI STATE 3.1 Energy               -14.389487862989

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -14.39023221 (Davidson, fixed reference)
 Cluster corrected energies           -14.39023221 (Davidson, relaxed reference)
 Cluster corrected energies           -14.39023221 (Davidson, rotated reference)

 Cluster corrected energies           -14.38948786 (Pople, fixed reference)
 Cluster corrected energies           -14.38948786 (Pople, relaxed reference)
 Cluster corrected energies           -14.38948786 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       29.40       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7        1.94       700     1000      520     2100     2140     5201     5202   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *         2.44      0.15      0.60      1.01      0.01      0.44
 REAL TIME  *         3.80 SEC
 DISK USED  *        31.42 MB (local),      178.88 MB (total)
 SF USED    *         8.61 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(7)     =       -14.39023222  AU                              
 SETTING HLSDIAG(8)     =       -14.39023222  AU                              
 SETTING HLSDIAG(9)     =       -14.39023221  AU                              


        HLSDIAG
    -14.66240798
    -14.41394727
    -14.41394769
    -14.41394172
    -14.41393171
    -14.41392768
    -14.39023222
    -14.39023222
    -14.39023221
                                                  


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

        1658147. SPIN-ORBIT INTEGRALS WRITTEN OUT IN      415 RECORDS ON RECORD     11290 OF FILE 1


 CPU time:      0.32 sec, REAL time:      0.34 sec


 SORTLS1 read     1691397. and wrote     1691397. SO integrals in    15 records. CPU time:      0.02 sec, REAL time:      0.04 sec
 SORTLS2 read     1691397. and wrote     8257518. SO integrals in    15 records. CPU time:      0.01 sec, REAL time:      0.04 sec

 FILE SIZES: FILE 1:    58.1 MBYTE, FILE 4:     0.0 MBYTE, TOTAL:    58.1 MBYTE

 Preparing effective Fock matrices
 eXact-2-Component (X2C) method activated

 Computing Douglas-Kroll / X2C integrals

 Total X Y Z Fock matrices evaluated:     3    3    3
  
 Wavefunction restored from record  5201.2  Symmetry=1  S= 0.0  NSTATE=   6

 Original energies:    -14.661922    -14.392016    -14.392016    -14.392016    -14.392016    -14.392016
 Replaced energies:    -14.662408    -14.413947    -14.413948    -14.413942    -14.413932    -14.413928

 Wavefunction restored from record  5202.2  Symmetry=1  S= 1.0  NSTATE=   3

 Original energies:    -14.389488    -14.389488    -14.389488
 Replaced energies:    -14.390232    -14.390232    -14.390232



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=   -14.66240798

 Wigner-Eckart theorem used for 10 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00      -0.44       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.44      -0.00       0.00

    2   2.1  0.0  0.0       0.00   54530.82       0.00       0.00       0.00       0.00       0.25      -0.00      -0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.68      -0.00       0.00

    3   3.1  0.0  0.0       0.00       0.00   54530.73       0.00       0.00       0.00       0.00      -0.00      -0.83       0.00
                           -0.00      -0.00       0.00       0.00       0.00       0.00      -0.00       0.00      -0.00      -1.17

    4   4.1  0.0  0.0       0.00       0.00       0.00   54532.04       0.00       0.00      -0.00       0.00      -0.00       0.00
                           -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00      -0.00       0.83      -0.00

    5   5.1  0.0  0.0       0.00       0.00       0.00       0.00   54534.24       0.00      -0.00       0.83      -0.00       0.00
                           -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.83       0.00       0.00       0.00

    6   6.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00   54535.12      -0.92      -0.00      -0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.68      -0.00      -0.00

    7   1.1  1.0  1.0      -0.44       0.25       0.00      -0.00      -0.00      -0.92   59735.67       0.00       0.00       0.00
                           -0.00       0.00       0.00      -0.00      -0.83       0.00      -0.00      -0.81       0.00       0.00

    8   2.1  1.0  1.0       0.00      -0.00      -0.00       0.00       0.83      -0.00       0.00   59735.67       0.00       0.00
                            0.44      -0.68      -0.00       0.00      -0.00      -0.68       0.81      -0.00       0.00       0.00

    9   3.1  1.0  1.0       0.00      -0.00      -0.83      -0.00      -0.00      -0.00       0.00       0.00   59735.68      -0.00
                            0.00       0.00       0.00      -0.83      -0.00       0.00      -0.00      -0.00       0.00       0.57

   10   1.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00   59735.67
                           -0.00      -0.00       1.17       0.00      -0.00       0.00      -0.00      -0.00      -0.57       0.00

   11   2.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       0.57       0.00
                            0.00       0.00       0.00      -1.17      -0.00      -0.00       0.00       0.00       0.00      -0.00

   12   3.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.57      -0.00       0.00
                            0.62       1.31      -0.00       0.00      -0.00      -0.35       0.57      -0.00      -0.00      -0.00

   13   1.1  1.0 -1.0      -0.44       0.25       0.00      -0.00      -0.00      -0.92       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00       0.00       0.83      -0.00      -0.00      -0.00      -0.00      -0.00

   14   2.1  1.0 -1.0       0.00      -0.00      -0.00       0.00       0.83      -0.00       0.00       0.00       0.00      -0.00
                           -0.44       0.68       0.00      -0.00       0.00       0.68      -0.00      -0.00      -0.00       0.00

   15   3.1  1.0 -1.0       0.00      -0.00      -0.83      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.83       0.00      -0.00      -0.00      -0.00      -0.00       0.57


   Nr   State  S   Sz       11         12         13         14         15

    1   1.1  0.0  0.0       0.00       0.00      -0.44       0.00       0.00
                           -0.00      -0.62      -0.00       0.44       0.00

    2   2.1  0.0  0.0       0.00       0.00       0.25      -0.00      -0.00
                           -0.00      -1.31       0.00      -0.68       0.00

    3   3.1  0.0  0.0       0.00       0.00       0.00      -0.00      -0.83
                           -0.00       0.00       0.00      -0.00       0.00

    4   4.1  0.0  0.0       0.00       0.00      -0.00       0.00      -0.00
                            1.17      -0.00      -0.00       0.00      -0.83

    5   5.1  0.0  0.0       0.00       0.00      -0.00       0.83      -0.00
                            0.00       0.00      -0.83      -0.00      -0.00

    6   6.1  0.0  0.0       0.00       0.00      -0.92      -0.00      -0.00
                            0.00       0.35       0.00      -0.68       0.00

    7   1.1  1.0  1.0      -0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.57       0.00       0.00       0.00

    8   2.1  1.0  1.0      -0.00      -0.57       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00

    9   3.1  1.0  1.0       0.57      -0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00

   10   1.1  1.0  0.0       0.00       0.00       0.00      -0.00       0.00
                            0.00       0.00       0.00      -0.00      -0.57

   11   2.1  1.0  0.0   59735.67       0.00       0.00      -0.00      -0.57
                            0.00       0.00       0.00      -0.00       0.00

   12   3.1  1.0  0.0       0.00   59735.68      -0.00       0.57      -0.00
                           -0.00       0.00       0.57      -0.00       0.00

   13   1.1  1.0 -1.0       0.00      -0.00   59735.67       0.00       0.00
                           -0.00      -0.57       0.00       0.81      -0.00

   14   2.1  1.0 -1.0      -0.00       0.57       0.00   59735.67       0.00
                            0.00       0.00      -0.81       0.00      -0.00

   15   3.1  1.0 -1.0      -0.57      -0.00       0.00       0.00   59735.68
                           -0.00      -0.00       0.00       0.00      -0.00




   Spin-orbit calculation in the basis of symmetry adapted wave functions
   ======================================================================


 >>> Hamiltonian transformed to symmetry adapted basis <<<


  Results for symmetry 1
  ======================

 => Spin-Orbit Matrixblock (CM-1)  (dimension: 15)

    The diagonal matrixelements are shifted by    -14.66240798 a.u.

  State Sym Spin    / Nr.        1           2           3           4           5           6           7           8

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000      -0.619       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |0 0>               0.000   54530.821       0.000       0.000       0.000       0.000       0.350      -0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |0 0>               0.000       0.000   54530.730       0.000       0.000       0.000       0.000      -0.000
                               -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |0 0>               0.000       0.000       0.000   54532.040       0.000       0.000      -0.000       0.000
                               -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000   54534.238       0.000      -0.000       1.172
                               -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000   54535.122      -1.307      -0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000

    1    1  |1 1>+             -0.619       0.350       0.000      -0.000      -0.000      -1.307   59735.674       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>+              0.000      -0.000      -0.000       0.000       1.172      -0.000       0.000   59735.674
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>+              0.000      -0.000      -1.172      -0.000      -0.000      -0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       1.172       0.000      -0.000       0.000       0.000      -0.000

    2    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                                0.000       0.000       0.000      -1.172      -0.000      -0.000       0.000       0.000

    3    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                                0.619       1.307      -0.000       0.000      -0.000      -0.350       0.810      -0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000      -0.000      -1.173       0.000      -0.000      -0.810

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.622      -0.958      -0.000       0.000      -0.000      -0.958       0.810      -0.000

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -1.173      -0.000       0.000      -0.000      -0.000

  State Sym Spin    / Nr.        9          10          11          12          13          14          15

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000      -0.619       0.000      -0.622      -0.000

    2    1  |0 0>              -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000      -1.307      -0.000       0.958      -0.000

    3    1  |0 0>              -1.172       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -1.172      -0.000       0.000      -0.000       0.000      -0.000

    4    1  |0 0>              -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       1.172      -0.000       0.000      -0.000       1.173

    5    1  |0 0>              -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       1.173       0.000       0.000

    6    1  |0 0>              -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000       0.350      -0.000       0.958      -0.000

    1    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000      -0.810      -0.000      -0.810       0.000

    2    1  |1 1>+              0.000       0.000      -0.000      -0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.810      -0.000       0.000

    3    1  |1 1>+          59735.675       0.000      -0.000      -0.000       0.000       0.000       0.000
                                0.000       0.810      -0.000       0.000      -0.000      -0.000       0.000

    1    1  |1 0>               0.000   59735.674       0.000       0.000       0.000       0.000      -0.000
                               -0.810       0.000       0.000       0.000      -0.000       0.000      -0.000

    2    1  |1 0>              -0.000       0.000   59735.674       0.000      -0.000       0.000       0.810
                                0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 0>              -0.000       0.000       0.000   59735.675       0.000      -0.810       0.000
                                0.000      -0.000      -0.000       0.000      -0.000       0.000      -0.000

    1    1  |1 1>-              0.000       0.000      -0.000       0.000   59735.674       0.000       0.000
                                0.000       0.000      -0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>-              0.000       0.000       0.000      -0.810       0.000   59735.674       0.000
                                0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000

    3    1  |1 1>-              0.000      -0.000       0.810       0.000       0.000       0.000   59735.675
                                0.000       0.000      -0.000       0.000       0.000       0.000       0.000

 => Eigenvalues of spin-orbit matrix in ascending order  (E0 = Emin,ges)
    (symmetry =  1)

    Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
             (au)           (au)        (cm-1)           (au)       (cm-1)        (eV)
    1   -14.66240798    -0.00000000       -0.00      0.00000000        0.00      0.0000
    2   -14.41394769     0.24846028    54530.73      0.24846028    54530.73      6.7609
    3   -14.41394728     0.24846070    54530.82      0.24846070    54530.82      6.7610
    4   -14.41394172     0.24846625    54532.04      0.24846625    54532.04      6.7611
    5   -14.41393171     0.24847627    54534.24      0.24847627    54534.24      6.7614
    6   -14.41392768     0.24848030    54535.12      0.24848030    54535.12      6.7615
    7   -14.39023960     0.27216838    59734.05      0.27216838    59734.05      7.4061
    8   -14.39023591     0.27217207    59734.86      0.27217207    59734.86      7.4062
    9   -14.39023591     0.27217207    59734.86      0.27217207    59734.86      7.4062
   10   -14.39023591     0.27217207    59734.86      0.27217207    59734.86      7.4062
   11   -14.39022852     0.27217945    59736.48      0.27217945    59736.49      7.4064
   12   -14.39022852     0.27217945    59736.48      0.27217945    59736.49      7.4064
   13   -14.39022852     0.27217946    59736.49      0.27217946    59736.49      7.4064
   14   -14.39022852     0.27217946    59736.49      0.27217946    59736.49      7.4064
   15   -14.39022852     0.27217946    59736.49      0.27217946    59736.49      7.4064

 => Eigenvectors of spin-orbit matrix columnwise and corresponding to the
    eigenvalues in ascending order (symmetry =  1)

  Basis states          Eigenvectors (columnwise)

 State Sym Spin     / Nr.      1           2           3           4           5           6           7           8

   1    1  |0 0>           1.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00001798  0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   2    1  |0 0>          -0.00000000  0.00000000  0.99999995 -0.00000000  0.00000000 -0.00000012 -0.00000016 -0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   3    1  |0 0>          -0.00000000  0.99999995 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   4    1  |0 0>           0.00000000  0.00000000  0.00000000  0.99999995 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   5    1  |0 0>           0.00000000  0.00000000 -0.00000000  0.00000000  0.99999995 -0.00000000 -0.00000000 -0.00000012
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000417  0.00000000  0.00000000 -0.00000001

   6    1  |0 0>          -0.00000000 -0.00000000  0.00000012  0.00000000  0.00000000  0.99999995 -0.00000007 -0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   1    1  |1 1>+          0.00001036 -0.00000000 -0.00006717  0.00000000  0.00000000  0.00025135 -0.57744378 -0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   2    1  |1 1>+         -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00022534  0.00000000 -0.00000000  0.70441386
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.06166511

   3    1  |1 1>+         -0.00000000  0.00022509 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000003
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   1    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00022509  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000003

   2    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000002
                          -0.00000000  0.00000000  0.00000000  0.00022523 -0.00000000 -0.00000000  0.00000000 -0.00000001

   3    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00001036 -0.00000000 -0.00025108  0.00000000 -0.00000000  0.00006735  0.57716229 -0.00000000

   1    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.06166493
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00022551 -0.00000000 -0.00000000  0.70441179

   2    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00001041  0.00000000  0.00018406  0.00000000  0.00000000  0.00018415  0.57744469  0.00000000

   3    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000002
                          -0.00000000 -0.00000000  0.00000000  0.00022541 -0.00000000 -0.00000000 -0.00000000  0.00000001

 State Sym Spin     / Nr.      9          10          11          12          13          14          15

   1    1  |0 0>          -0.00000000 -0.00000000  0.00000000  0.00000003  0.00000000  0.00000000 -0.00000001
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   2    1  |0 0>           0.00000000 -0.00000000 -0.00000000 -0.00008302  0.00000000 -0.00000000  0.00030747
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   3    1  |0 0>           0.00000000  0.00000012  0.00000000 -0.00000000 -0.00000000 -0.00031832 -0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   4    1  |0 0>           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00031865  0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   5    1  |0 0>          -0.00000000 -0.00000000 -0.00031880  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000023  0.00000000 -0.00000000 -0.00000000 -0.00000000

   6    1  |0 0>           0.00000000 -0.00000000 -0.00000000 -0.00030784 -0.00000000  0.00000000 -0.00008280
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   1    1  |1 1>+         -0.00000000 -0.00000000  0.00000001  0.70662113  0.00000000 -0.00000000  0.40895622
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   2    1  |1 1>+          0.00000002  0.00000003 -0.70710552  0.00000001 -0.00000000 -0.00000000 -0.00000000
                          -0.00000002  0.00000001 -0.00051087  0.00000000 -0.00000000 -0.00000000 -0.00000000

   3    1  |1 1>+          0.00000123  0.70684793 -0.00000000  0.00000000  0.00000192  0.70736551  0.00000000
                           0.00000418 -0.00000104  0.00000000 -0.00000000 -0.00000154  0.00000093  0.00000000

   1    1  |1 0>          -0.00000418  0.00000104  0.00000000 -0.00000000 -0.00000154  0.00000093  0.00000000
                           0.00000123  0.70736554  0.00000000 -0.00000000 -0.00000192 -0.70684789 -0.00000000

   2    1  |1 0>           0.00001686 -0.00000418 -0.00000000  0.00000000 -0.00000254  0.00000154  0.00000000
                           0.70736658 -0.00000123 -0.00000000 -0.00000000  0.70684685 -0.00000192 -0.00000000

   3    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00097183  0.00000000 -0.00000000  0.81662885

   1    1  |1 1>-          0.00000002 -0.00000001 -0.00051087  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000002  0.00000003  0.70710760 -0.00000001  0.00000000  0.00000000  0.00000000

   2    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000001  0.70759136 -0.00000000  0.00000000 -0.40727389

   3    1  |1 1>-         -0.00001685  0.00000418 -0.00000000  0.00000000 -0.00000254  0.00000154  0.00000000
                          -0.70684689  0.00000123 -0.00000000 -0.00000000  0.70736654 -0.00000192 -0.00000000


  No SO block in symmetry 2


 Summary of SO results
 =====================

 Eigenvalues of the spin-orbit matrix
 ....................................

     Nr  Sym         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
                   (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1   1    -14.66240798     -0.00000000       -0.00      0.00000000        0.00      0.0000
     2   1    -14.41394769      0.24846028    54530.73      0.24846028    54530.73      6.7609
     3   1    -14.41394728      0.24846070    54530.82      0.24846070    54530.82      6.7610
     4   1    -14.41394172      0.24846625    54532.04      0.24846625    54532.04      6.7611
     5   1    -14.41393171      0.24847627    54534.24      0.24847627    54534.24      6.7614
     6   1    -14.41392768      0.24848030    54535.12      0.24848030    54535.12      6.7615
     7   1    -14.39023960      0.27216838    59734.05      0.27216838    59734.05      7.4061
     8   1    -14.39023591      0.27217207    59734.86      0.27217207    59734.86      7.4062
     9   1    -14.39023591      0.27217207    59734.86      0.27217207    59734.86      7.4062
    10   1    -14.39023591      0.27217207    59734.86      0.27217207    59734.86      7.4062
    11   1    -14.39022852      0.27217945    59736.48      0.27217945    59736.49      7.4064
    12   1    -14.39022852      0.27217945    59736.48      0.27217945    59736.49      7.4064
    13   1    -14.39022852      0.27217946    59736.49      0.27217946    59736.49      7.4064
    14   1    -14.39022852      0.27217946    59736.49      0.27217946    59736.49      7.4064
    15   1    -14.39022852      0.27217946    59736.49      0.27217946    59736.49      7.4064

 E0 =    -14.66240798 is the energy of the lowest zeroth-order state
 E1 =    -14.66240798 is the energy of the lowest SO-state


 Spin-orbit eigenvectors   (columnwise and corresponding to the eigenvalues in ascending order)
 .......................

        Basis states           Eigenvectors (columnwise)

   Total
 Nr Sym  State Sym Spin / Nr.        1           2           3           4           5           6           7           8

  1  1     1    1  |0 0>        1.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00001798  0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  2  1     2    1  |0 0>       -0.00000000  0.00000000  0.99999995 -0.00000000  0.00000000 -0.00000012 -0.00000016 -0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  3  1     3    1  |0 0>       -0.00000000  0.99999995 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  4  1     4    1  |0 0>        0.00000000  0.00000000  0.00000000  0.99999995 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  5  1     5    1  |0 0>        0.00000000  0.00000000 -0.00000000  0.00000000  0.99999995 -0.00000000 -0.00000000 -0.00000012
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000417  0.00000000  0.00000000 -0.00000001

  6  1     6    1  |0 0>       -0.00000000 -0.00000000  0.00000012  0.00000000  0.00000000  0.99999995 -0.00000007 -0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  7  1     1    1  |1 1>+       0.00001036 -0.00000000 -0.00006717  0.00000000  0.00000000  0.00025135 -0.57744378 -0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  8  1     2    1  |1 1>+      -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00022534  0.00000000 -0.00000000  0.70441386
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.06166511

  9  1     3    1  |1 1>+      -0.00000000  0.00022509 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000003
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 10  1     1    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00022509  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000003

 11  1     2    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000002
                               -0.00000000  0.00000000  0.00000000  0.00022523 -0.00000000 -0.00000000  0.00000000 -0.00000001

 12  1     3    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00001036 -0.00000000 -0.00025108  0.00000000 -0.00000000  0.00006735  0.57716229 -0.00000000

 13  1     1    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.06166493
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00022551 -0.00000000 -0.00000000  0.70441179

 14  1     2    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00001041  0.00000000  0.00018406  0.00000000  0.00000000  0.00018415  0.57744469  0.00000000

 15  1     3    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000002
                               -0.00000000 -0.00000000  0.00000000  0.00022541 -0.00000000 -0.00000000 -0.00000000  0.00000001


   Total
 Nr Sym  State Sym Spin / Nr.        9          10          11          12          13          14          15

  1  1     1    1  |0 0>       -0.00000000 -0.00000000  0.00000000  0.00000003  0.00000000  0.00000000 -0.00000001
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  2  1     2    1  |0 0>        0.00000000 -0.00000000 -0.00000000 -0.00008302  0.00000000 -0.00000000  0.00030747
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  3  1     3    1  |0 0>        0.00000000  0.00000012  0.00000000 -0.00000000 -0.00000000 -0.00031832 -0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  4  1     4    1  |0 0>        0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00031865  0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  5  1     5    1  |0 0>       -0.00000000 -0.00000000 -0.00031880  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000023  0.00000000 -0.00000000 -0.00000000 -0.00000000

  6  1     6    1  |0 0>        0.00000000 -0.00000000 -0.00000000 -0.00030784 -0.00000000  0.00000000 -0.00008280
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  7  1     1    1  |1 1>+      -0.00000000 -0.00000000  0.00000001  0.70662113  0.00000000 -0.00000000  0.40895622
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  8  1     2    1  |1 1>+       0.00000002  0.00000003 -0.70710552  0.00000001 -0.00000000 -0.00000000 -0.00000000
                               -0.00000002  0.00000001 -0.00051087  0.00000000 -0.00000000 -0.00000000 -0.00000000

  9  1     3    1  |1 1>+       0.00000123  0.70684793 -0.00000000  0.00000000  0.00000192  0.70736551  0.00000000
                                0.00000418 -0.00000104  0.00000000 -0.00000000 -0.00000154  0.00000093  0.00000000

 10  1     1    1  |1 0>       -0.00000418  0.00000104  0.00000000 -0.00000000 -0.00000154  0.00000093  0.00000000
                                0.00000123  0.70736554  0.00000000 -0.00000000 -0.00000192 -0.70684789 -0.00000000

 11  1     2    1  |1 0>        0.00001686 -0.00000418 -0.00000000  0.00000000 -0.00000254  0.00000154  0.00000000
                                0.70736658 -0.00000123 -0.00000000 -0.00000000  0.70684685 -0.00000192 -0.00000000

 12  1     3    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00097183  0.00000000 -0.00000000  0.81662885

 13  1     1    1  |1 1>-       0.00000002 -0.00000001 -0.00051087  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000002  0.00000003  0.70710760 -0.00000001  0.00000000  0.00000000  0.00000000

 14  1     2    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000001  0.70759136 -0.00000000  0.00000000 -0.40727389

 15  1     3    1  |1 1>-      -0.00001685  0.00000418 -0.00000000  0.00000000 -0.00000254  0.00000154  0.00000000
                               -0.70684689  0.00000123 -0.00000000 -0.00000000  0.70736654 -0.00000192 -0.00000000



 Composition of spin-orbit eigenvectors
 ======================================
   Total
 Nr Sym  State Sym Spin / Nr.      1        2        3        4        5        6        7        8

  1  1     1    1  |0 0>        100.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |0 0>          0.00%    0.00%  100.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  3  1     3    1  |0 0>          0.00%  100.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  4  1     4    1  |0 0>          0.00%    0.00%    0.00%  100.00%    0.00%    0.00%    0.00%    0.00%
  5  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%  100.00%    0.00%    0.00%    0.00%
  6  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%  100.00%    0.00%    0.00%
  7  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   33.34%    0.00%
  8  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   50.00%
  9  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 10  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   33.31%    0.00%
 13  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   50.00%
 14  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   33.34%    0.00%
 15  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.      9       10       11       12       13       14       15

  1  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  3  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  4  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  5  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  6  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  7  1     1    1  |1 1>+         0.00%    0.00%    0.00%   49.93%    0.00%    0.00%   16.72%
  8  1     2    1  |1 1>+         0.00%    0.00%   50.00%    0.00%    0.00%    0.00%    0.00%
  9  1     3    1  |1 1>+         0.00%   49.96%    0.00%    0.00%    0.00%   50.04%    0.00%
 10  1     1    1  |1 0>          0.00%   50.04%    0.00%    0.00%    0.00%   49.96%    0.00%
 11  1     2    1  |1 0>         50.04%    0.00%    0.00%    0.00%   49.96%    0.00%    0.00%
 12  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   66.69%
 13  1     1    1  |1 1>-         0.00%    0.00%   50.00%    0.00%    0.00%    0.00%    0.00%
 14  1     2    1  |1 1>-         0.00%    0.00%    0.00%   50.07%    0.00%    0.00%   16.59%
 15  1     3    1  |1 1>-        49.96%    0.00%    0.00%    0.00%   50.04%    0.00%    0.00%


 No matrix element <i|DMX|i> larger than 5E-7
 No matrix element <i|DMX|1> larger than 5E-7

 No matrix element <i|DMY|i> larger than 5E-7
 No matrix element <i|DMY|1> larger than 5E-7

 No matrix element <i|DMZ|i> larger than 5E-7
 No matrix element <i|DMZ|1> larger than 5E-7


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       55.37       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7        1.94       700     1000      520     2100     2140     5201     5202   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *         3.98      1.54      0.15      0.60      1.01      0.01      0.44
 REAL TIME  *         7.30 SEC
 DISK USED  *        31.45 MB (local),      282.07 MB (total)
 SF USED    *        30.52 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/USERDEF energy=    -14.390228520568

              CI              CI           MULTI         RHF-SCF
    -14.38948786    -14.39201646    -14.33810440    -14.57538898
 **********************************************************************************************************************************
 Molpro calculation terminated with 1 warning(s)
