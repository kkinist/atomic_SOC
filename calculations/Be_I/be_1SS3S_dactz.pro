
 Working directory              : /wrk/irikura/molpro.LTT3Zbmeb5/
 Global scratch directory       : /wrk/irikura/molpro.LTT3Zbmeb5/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.LTT3Zbmeb5/

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
 
                                                                                 ! first find the states of interest
 {multi
     closed,1,0
     occ,3,3
     wf,sym=1,spin=0;state,7;
     wf,sym=1,spin=2;state,4;
     expec2,lxx,lyy,lzz;
 }
 
                                                                                 ! only the states of interest
 {multi
     closed,1,0
     occ,3,3
     wf,sym=1,spin=0;state,2;
     wf,sym=1,spin=2;state,1;
     expec2,lxx,lyy,lzz;
 }
 table, energy, ll
 title, Energies and &lt;L**2&gt; values
 
 core,0,0
 {ci;wf,sym=1,spin=0;state,2; option,nstati=7; save,5201.2}
 hlsdiag = energd4
 {ci;wf,sym=1,spin=2;state,1; option,nstati=4; save,5202.2}
 hlsdiag(3) = energd
 
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
  (24 PROC) 64 bit mpp version                                                           DATE: 30-Oct-24          TIME: 13:51:46  
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

 SORT1 READ     3091078. AND WROTE       64229. INTEGRALS IN      1 RECORDS. CPU TIME:     0.01 SEC, REAL TIME:     0.02 SEC
 SORT2 READ      305427. AND WROTE     1416696. INTEGRALS IN     20 RECORDS. CPU TIME:     0.02 SEC, REAL TIME:     0.02 SEC

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
 CPU TIMES  *         0.69      0.48
 REAL TIME  *         1.70 SEC
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
   6      -14.57538898       0.00000000     0.53D-08     0.50D-07     0     0       0.01      0.02    diag

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
 CPU TIMES  *         0.72      0.03      0.48
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

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 1 2 4 3 5 6 4   3 2 5 6 1 2 5 6 4 3   1 3 5 6 4 2 1 5 3 6   4 2 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.155D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.155D-01 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   2 3 1 2 1 3 2 3 1 2   3 1 6 4 9 8 510 7 2   1 3 8 5 410 7 6 9 2   1 3 2 1 3

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.09091   0.09091   0.09091   0.09091   0.09091   0.09091   0.09091
 Weight factors for state symmetry  2:    0.09091   0.09091   0.09091   0.09091
 
 Number of orbital rotations:  188  ( 2 closed/active, 30 closed/virtual, 0 active/active, 156 active/virtual )
 Total number of variables:    295
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1   16   30   10    -13.95651538     -14.46703628   -0.51052090    0.04431090 0.00001365 0.00000000  0.19E+01      0.20
   2    7   12    0    -14.32574983     -14.35212066   -0.02637082    0.07723360 0.00000847 0.00000000  0.45E+00      0.37
   3    7   12    0    -14.35315204     -14.35334301   -0.00019097    0.00680648 0.00000007 0.00000000  0.34E-01      0.55
   4   11   22    0    -14.35334443     -14.35334445   -0.00000002    0.00007842 0.00000000 0.00000000  0.39E-03      0.70
   5    3    6    0    -14.35334445     -14.35334445    0.00000000    0.00000004 0.00000000 0.00000000  0.51E-07      0.77

 CONVERGENCE REACHED!  Final gradient:    0.00000000 ( 0.12E-08)
                       Final energy:    -14.35334445
 
 Results for state 1.1 Singlet
 =============================
 !MCSCF STATE 1.1 Singlet Energy               -14.610611711831
 Nuclear energy                                  0.00000000
 Kinetic energy                                 14.69035073
 One electron energy                           -19.11017561
 Two electron energy                             4.49956389
 Virial ratio                                    1.99457201
 
 !MCSCF STATE 1.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Singlet
 =============================
 !MCSCF STATE 2.1 Singlet Energy               -14.362724667872
 Nuclear energy                                  0.00000000
 Kinetic energy                                 14.33231448
 One electron energy                           -18.14610649
 Two electron energy                             3.78338182
 Virial ratio                                    2.00212179
 
 !MCSCF STATE 2.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Singlet
 =============================
 !MCSCF STATE 3.1 Singlet Energy               -14.304495158466
 Nuclear energy                                  0.00000000
 Kinetic energy                                 14.34979847
 One electron energy                           -18.61263557
 Two electron energy                             4.30814041
 Virial ratio                                    1.99684293
 
 !MCSCF STATE 3.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Singlet
 =============================
 !MCSCF STATE 4.1 Singlet Energy               -14.304495158434
 Nuclear energy                                  0.00000000
 Kinetic energy                                 14.34979847
 One electron energy                           -18.61263557
 Two electron energy                             4.30814041
 Virial ratio                                    1.99684293
 
 !MCSCF STATE 4.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Singlet
 =============================
 !MCSCF STATE 5.1 Singlet Energy               -14.304495158328
 Nuclear energy                                  0.00000000
 Kinetic energy                                 14.34979848
 One electron energy                           -18.61263557
 Two electron energy                             4.30814042
 Virial ratio                                    1.99684293
 
 !MCSCF STATE 5.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Singlet
 =============================
 !MCSCF STATE 6.1 Singlet Energy               -14.304495158313
 Nuclear energy                                  0.00000000
 Kinetic energy                                 14.34979848
 One electron energy                           -18.61263558
 Two electron energy                             4.30814042
 Virial ratio                                    1.99684293
 
 !MCSCF STATE 6.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.1 Singlet
 =============================
 !MCSCF STATE 7.1 Singlet Energy               -14.304495158239
 Nuclear energy                                  0.00000000
 Kinetic energy                                 14.34979848
 One electron energy                           -18.61263558
 Two electron energy                             4.30814042
 Virial ratio                                    1.99684293
 
 !MCSCF STATE 7.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.1 Triplet
 =============================
 !MCSCF STATE 1.1 Triplet Energy               -14.376538087267
 Nuclear energy                                  0.00000000
 Kinetic energy                                 14.26741297
 One electron energy                           -18.08745990
 Two electron energy                             3.71092181
 Virial ratio                                    2.00764856
 
 !MCSCF STATE 1.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Triplet
 =============================
 !MCSCF STATE 2.1 Triplet Energy               -14.338146235107
 Nuclear energy                                  0.00000000
 Kinetic energy                                 14.34979848
 One electron energy                           -18.61263558
 Two electron energy                             4.27448934
 Virial ratio                                    1.99918799
 
 !MCSCF STATE 2.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Triplet
 =============================
 !MCSCF STATE 3.1 Triplet Energy               -14.338146235097
 Nuclear energy                                  0.00000000
 Kinetic energy                                 14.34979848
 One electron energy                           -18.61263557
 Two electron energy                             4.27448934
 Virial ratio                                    1.99918799
 
 !MCSCF STATE 3.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Triplet
 =============================
 !MCSCF STATE 4.1 Triplet Energy               -14.338146234998
 Nuclear energy                                  0.00000000
 Kinetic energy                                 14.34979847
 One electron energy                           -18.61263557
 Two electron energy                             4.27448933
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
 !MCSCF expec      <3.1 Singlet|LXLX|3.1 Singlet>     3.999999999939
 !MCSCF expec      <4.1 Singlet|LXLX|4.1 Singlet>     3.992353533053
 !MCSCF expec      <5.1 Singlet|LXLX|5.1 Singlet>     0.999999999995
 !MCSCF expec      <6.1 Singlet|LXLX|6.1 Singlet>     1.000000000011
 !MCSCF expec      <7.1 Singlet|LXLX|7.1 Singlet>     0.007646665796
 !MCSCF expec      <1.1 Triplet|LXLX|1.1 Triplet>     0.000000000000
 !MCSCF expec      <2.1 Triplet|LXLX|2.1 Triplet>     1.000000000000
 !MCSCF expec      <3.1 Triplet|LXLX|3.1 Triplet>     0.999999999999
 !MCSCF expec      <4.1 Triplet|LXLX|4.1 Triplet>    -0.000000000000
 
 !MCSCF expec      <1.1 Singlet|LYLY|1.1 Singlet>    -0.000000000000
 !MCSCF expec      <2.1 Singlet|LYLY|2.1 Singlet>    -0.000000000000
 !MCSCF expec      <3.1 Singlet|LYLY|3.1 Singlet>     1.000000000001
 !MCSCF expec      <4.1 Singlet|LYLY|4.1 Singlet>     0.852510479564
 !MCSCF expec      <5.1 Singlet|LYLY|5.1 Singlet>     1.000000007966
 !MCSCF expec      <6.1 Singlet|LYLY|6.1 Singlet>     3.999999987590
 !MCSCF expec      <7.1 Singlet|LYLY|7.1 Singlet>     3.147491384174
 !MCSCF expec      <1.1 Triplet|LYLY|1.1 Triplet>    -0.000000000000
 !MCSCF expec      <2.1 Triplet|LYLY|2.1 Triplet>     0.000000005924
 !MCSCF expec      <3.1 Triplet|LYLY|3.1 Triplet>     0.999999994277
 !MCSCF expec      <4.1 Triplet|LYLY|4.1 Triplet>     1.000000000000
 
 !MCSCF expec      <1.1 Singlet|LZLZ|1.1 Singlet>    -0.000000000000
 !MCSCF expec      <2.1 Singlet|LZLZ|2.1 Singlet>     0.000000000000
 !MCSCF expec      <3.1 Singlet|LZLZ|3.1 Singlet>     1.000000000060
 !MCSCF expec      <4.1 Singlet|LZLZ|4.1 Singlet>     1.155135987383
 !MCSCF expec      <5.1 Singlet|LZLZ|5.1 Singlet>     3.999999992040
 !MCSCF expec      <6.1 Singlet|LZLZ|6.1 Singlet>     1.000000012399
 !MCSCF expec      <7.1 Singlet|LZLZ|7.1 Singlet>     2.844861950030
 !MCSCF expec      <1.1 Triplet|LZLZ|1.1 Triplet>     0.000000000000
 !MCSCF expec      <2.1 Triplet|LZLZ|2.1 Triplet>     0.999999994076
 !MCSCF expec      <3.1 Triplet|LZLZ|3.1 Triplet>     0.000000005725
 !MCSCF expec      <4.1 Triplet|LZLZ|4.1 Triplet>     1.000000000000
 
 !MCSCF expec      <1.1 Singlet|L**2|1.1 Singlet>     0.000000000000
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
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 1 3 5 6 4 2 5   3 6 4 2 1 5 3 6 4 2   1 5 3 6 4 2 1 5 3 6   4 2 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 1 2 1 2 3 1 2 3 1   3 2 7 9 810 5 6 4 2   1 3 9 710 8 5 6 4 2   1 3 2 1 3
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -4.83429     1  1  s    0.99941
    2.1     0.34347    -0.13028     1  2  s    1.16696
    3.1     0.18121     0.02332     1  2  s   -0.65192    1  7  s    1.12877
    1.2     0.49177    -0.01142     1  1  pz   0.99623
    2.2     0.49177    -0.01142     1  1  px   0.99623
    3.2     0.49177    -0.01142     1  1  py   0.99623
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 1 (Singlet)
 =======================================
 
 20 000         0.94113944     -0.08645743      0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00000000
 00 020        -0.18224872      0.06973950     -0.00000296     -0.03569890     -0.00000206     -0.00000045      0.81571579
 00 002        -0.18224872      0.06973949      0.00000307      0.72428005      0.00000119     -0.00000003     -0.37694175
 00 a0b        -0.00000000      0.00000000      0.70710678     -0.00000170      0.00000094     -0.00000072      0.00000249
 00 b0a         0.00000000     -0.00000000     -0.70710678      0.00000170     -0.00000094      0.00000072     -0.00000249
 00 ba0        -0.00000000      0.00000000     -0.00000072     -0.00000024     -0.00003641     -0.70710678     -0.00000040
 00 ab0         0.00000000     -0.00000000      0.00000072      0.00000024      0.00003641      0.70710678      0.00000040
 00 0ba        -0.00000000      0.00000000      0.00000094      0.00000024     -0.70710678      0.00003641     -0.00000178
 00 0ab         0.00000000     -0.00000000     -0.00000094     -0.00000024      0.70710678     -0.00003641      0.00000178
 ab 000         0.08534789      0.69898858      0.00000000      0.00000000      0.00000000      0.00000000     -0.00000000
 ba 000        -0.08534789     -0.69898858     -0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00000000
 00 200        -0.18224872      0.06973949     -0.00000011     -0.68858115      0.00000087      0.00000048     -0.43877405
 
 Energy:      -14.61061171    -14.36272467    -14.30449516    -14.30449516    -14.30449516    -14.30449516    -14.30449516
 
 
 CI Coefficients of symmetry 1 (Triplet)
 =======================================
 
 aa 000         1.00000000      0.00000000     -0.00000000     -0.00000000
 00 a0a         0.00000000      0.00000012     -0.00000108      1.00000000
 00 aa0         0.00000000      1.00000000      0.00007697     -0.00000012
 00 0aa         0.00000000     -0.00007697      1.00000000      0.00000108
 
 Energy:      -14.37653809    -14.33814624    -14.33814624    -14.33814623
 


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
 CPU TIMES  *         1.47      0.75      0.03      0.48
 REAL TIME  *         2.62 SEC
 DISK USED  *        30.08 MB (local),      172.18 MB (total)
 SF USED    *         2.19 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of closed-shell orbitals:   1 (    1    0)
 Number of active  orbitals:        5 (    2    3)
 Number of external orbitals:      62 (   30   32)

 State symmetry 1

 Number of active electrons:   2    Spin symmetry=Singlet   Space symmetry=1
 Number of states:             2
 Number of CSFs:               9   (13 determinants, 25 intermediate states)

 State symmetry 2

 Number of active electrons:   2    Spin symmetry=Triplet   Space symmetry=1
 Number of states:             1
 Number of CSFs:               4   (4 determinants, 10 intermediate states)

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 1 3 5 6 4 2 5   3 6 4 2 1 5 3 6 4 2   1 5 3 6 4 2 1 5 3 6   4 2 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 1 2 1 2 3 1 2 3 1   3 2 7 9 810 5 6 4 2   1 3 9 710 8 5 6 4 2   1 3 2 1 3

 Wavefunction dump at record             2141.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.33333   0.33333
 Weight factors for state symmetry  2:    0.33333
 
 Number of orbital rotations:  188  ( 2 closed/active, 30 closed/virtual, 0 active/active, 156 active/virtual )
 Total number of variables:    218
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1    6   10    0    -14.44995816     -14.45349019   -0.00353203    0.01951645 0.00001812 0.00000000  0.50E+00      0.12
   2    5   10    0    -14.45346920     -14.45347379   -0.00000459    0.00050320 0.00000099 0.00000000  0.15E-01      0.26
   3    3    6    0    -14.45347380     -14.45347380   -0.00000000    0.00000028 0.00000000 0.00000000  0.81E-05      0.31

 CONVERGENCE REACHED!  Final gradient:    0.00000000 ( 0.18E-10)
                       Final energy:    -14.45347380
 
 Results for state 1.1 Singlet
 =============================
 !MCSCF STATE 1.1 Singlet Energy               -14.615691116816
 Nuclear energy                                  0.00000000
 Kinetic energy                                 14.75901681
 One electron energy                           -19.16864814
 Two electron energy                             4.55295702
 Virial ratio                                    1.99028894
 
 !MCSCF STATE 1.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Singlet
 =============================
 !MCSCF STATE 2.1 Singlet Energy               -14.367337108567
 Nuclear energy                                  0.00000000
 Kinetic energy                                 14.35537606
 One electron energy                           -18.16119387
 Two electron energy                             3.79385676
 Virial ratio                                    2.00083321
 
 !MCSCF STATE 2.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.1 Triplet
 =============================
 !MCSCF STATE 1.1 Triplet Energy               -14.377393160283
 Nuclear energy                                  0.00000000
 Kinetic energy                                 14.30174589
 One electron energy                           -18.10515319
 Two electron energy                             3.72776003
 Virial ratio                                    2.00528937
 
 !MCSCF STATE 1.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2141.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 ? Warning
 ? Transition properties are only calculated between states of the same symmetry
 ? The problem occurs in mu_properties_expec2

 !MCSCF expec      <1.1 Singlet|LXLX|1.1 Singlet>     0.000000000000
 !MCSCF expec      <2.1 Singlet|LXLX|2.1 Singlet>     0.000000000000
 !MCSCF expec      <1.1 Triplet|LXLX|1.1 Triplet>     0.000000000000
 
 !MCSCF expec      <1.1 Singlet|LYLY|1.1 Singlet>     0.000000000000
 !MCSCF expec      <2.1 Singlet|LYLY|2.1 Singlet>    -0.000000000000
 !MCSCF expec      <1.1 Triplet|LYLY|1.1 Triplet>    -0.000000000000
 
 !MCSCF expec      <1.1 Singlet|LZLZ|1.1 Singlet>     0.000000000000
 !MCSCF expec      <2.1 Singlet|LZLZ|2.1 Singlet>     0.000000000000
 !MCSCF expec      <1.1 Triplet|LZLZ|1.1 Triplet>     0.000000000000
 
 !MCSCF expec      <1.1 Singlet|L**2|1.1 Singlet>     0.000000000000
 !MCSCF expec      <2.1 Singlet|L**2|2.1 Singlet>     0.000000000000
 !MCSCF expec      <1.1 Triplet|L**2|1.1 Triplet>     0.000000000000
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 1 4 5 3 6 2 1   2 4 5 3 6 2 5 6 4 3   1 2 5 6 4 3 1 5 4 6   3 2 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   2 3 1 2 1 3 3 2 1 1   2 3 7 9 4 5 6 810 3   2 1 6 4 5 9 710 8 1   2 3 2 1 3
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -4.89103     1  1  s    0.99978
    2.1     1.25779    -0.30785     1  2  s    1.16780
    3.1     0.66024    -0.01169     1  2  s   -0.72446    1  7  s    1.12578
    1.2     0.02732     0.02917     1  1  py   1.31681    1  3  py  -0.41717
    2.2     0.02732     0.02917     1  1  pz   1.31681    1  3  pz  -0.41717
    3.2     0.02732     0.02917     1  1  px   1.31681    1  3  px  -0.41717
 
 Natural orbital dump (state averaged) at molpro section 2141.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 1 (Singlet)
 =======================================
 
 20 000         0.94741493     -0.03131229
 ab 000         0.05764451      0.69627047
 ba 000        -0.05764451     -0.69627047
 00 200        -0.17855671      0.09538585
 00 020        -0.17855671      0.09538585
 00 002        -0.17855671      0.09538585
 
 Energy:      -14.61569112    -14.36733711
 
 
 CI Coefficients of symmetry 1 (Triplet)
 =======================================
 
 aa 000         1.00000000
 
 Energy:      -14.37739316
 


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       29.45       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1700(1)  1380   
                                         AOSYM     SMH     OPER     JKOP   

              2       6        0.92       700     1000      520     2100     2140     2141   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MCSCF   

 PROGRAMS   *        TOTAL     MULTI     MULTI   RHF-SCF       INT
 CPU TIMES  *         1.82      0.34      0.75      0.03      0.48
 REAL TIME  *         3.00 SEC
 DISK USED  *        30.44 MB (local),      173.98 MB (total)
 SF USED    *         2.19 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

        ENERGY      LL
    -14.61569112   0.0
    -14.36733711   0.0
    -14.37739316   0.0
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 2  Roots:    1   2
 Number of reference states: 2  Roots:    1   2

 Program parameters:       NSTATE=  2    NSTATI=  7    NSTATR=  2    NCEPA = -1    NOKOP =  0    ITRDM =  0    ITRANS=  0
                           IDIP  =200    MAXIT = 30    MAXITI= 50    MAXDAV=  6    MAXVI = 21    NOSING=  0    NOPAIR=  0
                           MXSHRF=  4    IKCPS =  0    IOPTGM=  2    IOPTOR=  0    REFOPT=  1    IAVDEN=  0    IDELCG=  1
                           IREST =  0    NATORB=  0    IPUNRF=  0    ISEP  =  0    OLDDEN=  0    NSTPRI=  1    GPSFLI= -1
                           CLUSTE=  0    CLOSED=  1    ILSTYP=  0    ITRLS =  0    ICCSD =  0    LOCAL =  0    IBASO =  0
                           MP    =  0    ITEDIS=  2    INCDIS=  1    MAXDIS=  6    ITYDIS=  1    BRUECK=  0    IBRSTR=  3
                           INCBRK=  1    TRIPLE=  0    ICCTYP=  1    IHPPD =  0    ICCNEW=  0    I3EXT = -1    IDEB  =  0
                           IDLEIG=  1    IDFTYP=  1    IMP3  =  0    IPROCS=  0    NOINT =  0    NOREF =  1    IMP2G =  0
                           IHINT =  0    IFDIA =  0    ISPARO=  1    JKSYM =  0    CPHF  =  0    MP2D  = -1    DKINT =  0
                           NPKEX =  1    DRVK  =  1    HLSTRA=  1    WIGNER=  1    DIIS_C=  1    MAXIT_= 50    MATEL =  0
                           SPDEG =  1    MEMCPH=  0    DISM  =  1    KDCPMA=  5    IKDCP_=  0    IREDTH=  0    USECS =  0
                           IPROCC=  0    I3SAVE=  1    IKDCP =  1    USECI =  0    OLDPAI=  0    IPROCI=  0    KEEPCL=  1
                           DISCON=  0    SHIFTE=  0    DIISIN=  0    MOLCAS=  0    MEM_PT=  0    RECORD=  0    RS2C  =  0
                           KEXT  = -1    CIPT2 =  0    DECP0S=  0    I4EXT = -1    NATCOR=  0    RIMP2 =  0    DDCI  = -1
                           IPOLAR=  0    OVBK  =  0

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

 Molecular orbitals read from record     2141.2  Type=MCSCF/NATURAL (state averaged)

 Valence orbitals related to previous ones by unitary transformation. Operators transformed.


 Number of p-space configurations:   8

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1       -14.61569112
     2       -14.36733711
     3       -14.25157865
     4       -14.25157865
     5       -14.25157865
     6       -14.25157865
     7       -14.25157865

 Number of blocks in overlap matrix:    11   Smallest eigenvalue:  0.98D+00
 Number of N-2 electron functions:      13
 Number of N-1 electron functions:      70

 Number of internal configurations:                   57
 Number of singly external configurations:          2170
 Number of doubly external configurations:         12587
 Total number of contracted configurations:        14814
 Total number of uncontracted configurations:      25489

 Diagonal Coupling coefficients finished.               Storage:    181582 words, CPU-Time:      0.00 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:    201014 words, CPU-time:      0.00 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000   -14.61569112     0.00000000    -0.04388208  0.45D-02  0.23D-02     0.00
    1     2     2     1.00000000     0.00000000   -14.36733711     0.00000000    -0.04251665  0.68D-02  0.26D-02     0.00
    2     1     1     1.00737369    -0.04588052   -14.66157163    -0.04588052    -0.00029499  0.13D-03  0.27D-04     0.02
    2     2     2     1.01028312    -0.04472482   -14.41206193    -0.04472482    -0.00039257  0.25D-03  0.10D-03     0.02
    3     1     1     1.00927399    -0.04622876   -14.66191988    -0.00034824    -0.00001204  0.85D-05  0.15D-05     0.05
    3     2     2     1.01314006    -0.04520555   -14.41254266    -0.00048073    -0.00003481  0.42D-04  0.65D-05     0.05
    4     1     1     1.00988321    -0.04624300   -14.66193412    -0.00001425    -0.00000034  0.13D-06  0.43D-07     0.07
    4     2     2     1.01533292    -0.04525578   -14.41259289    -0.00005023    -0.00000334  0.19D-05  0.97D-06     0.07
    5     1     1     1.00991993    -0.04624338   -14.66193450    -0.00000038    -0.00000001  0.37D-08  0.15D-08     0.09
    5     2     2     1.01551703    -0.04526024   -14.41259735    -0.00000446    -0.00000020  0.16D-06  0.34D-07     0.09
    6     1     1     1.00992151    -0.04624338   -14.66193450    -0.00000000    -0.00000001  0.12D-08  0.13D-08     0.11
    6     2     2     1.01557414    -0.04526051   -14.41259762    -0.00000027    -0.00000002  0.33D-07  0.14D-08     0.11
    7     1     1     1.00992233    -0.04624338   -14.66193450    -0.00000000    -0.00000001  0.87D-09  0.13D-08     0.12
    7     2     2     1.01558224    -0.04526054   -14.41259765    -0.00000003    -0.00000000  0.25D-08  0.37D-09     0.12


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   8.3%
 S   0.0%   0.0%
 P   8.3%  25.0%  16.7%

 Initialization:   0.0%
 Other:           41.7%

 Total CPU:        0.1 seconds
 =====================================



 Wavefunction saved on  5201.2

 Reference coefficients greater than 0.0500000
 =============================================
 2/\000           0.0779174   0.9818802
 220000           0.9470161  -0.0419131
 200020          -0.1704088   0.0735622
 200200          -0.1704087   0.0735622
 200002          -0.1704083   0.0735626
 202000          -0.0105679  -0.0503230

 Coefficients of singly external configurations greater than 0.0500000
 =====================================================================

 2\0000  10.1     0.0630216  -0.0357065

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.994964   -0.001205
 2           0.001462    0.991523

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.994964    0.000131
 2           0.000131    0.991524


 RESULTS FOR STATE 1.1
 =====================

 Coefficient of reference function:   C(0) = 0.99496366 (fixed)   0.99505761 (relaxed)   0.99496439 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00022327   -0.00017261   -0.04035201
 Singles      0.00716047   -0.00654981   -0.00681185
 Pairs        0.00276407    0.00105759    0.00092048
 Total        1.01014782   -0.00566482   -0.04624338
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -14.61569067
 Nuclear energy                         0.00000000
 Kinetic energy                        14.67837508
 One electron energy                  -19.05481013
 Two electron energy                    4.39287563
 Virial quotient                       -0.99887995
 Correlation energy                    -0.04624383
 !MRCI STATE 1.1 Energy               -14.661934500067

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -14.66240377 (Davidson, fixed reference)
 Cluster corrected energies           -14.66239502 (Davidson, relaxed reference)
 Cluster corrected energies           -14.66240377 (Davidson, rotated reference)

 Cluster corrected energies           -14.66216913 (Pople, fixed reference)
 Cluster corrected energies           -14.66216475 (Pople, relaxed reference)
 Cluster corrected energies           -14.66216913 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Coefficient of reference function:   C(0) = 0.99152325 (fixed)   0.99227621 (relaxed)   0.99152432 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00156275   -0.00021431   -0.00027908
 Singles      0.01271759   -0.00732154   -0.00776317
 Pairs        0.00288900   -0.03772587   -0.03721830
 Total        1.01716934   -0.04526172   -0.04526054
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -14.36733756
 Nuclear energy                         0.00000000
 Kinetic energy                        14.42504389
 One electron energy                  -18.13017969
 Two electron energy                    3.71758204
 Virial quotient                       -0.99913718
 Correlation energy                    -0.04526009
 !MRCI STATE 2.1 Energy               -14.412597648792

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -14.41337473 (Davidson, fixed reference)
 Cluster corrected energies           -14.41330499 (Davidson, relaxed reference)
 Cluster corrected energies           -14.41337473 (Davidson, rotated reference)

 Cluster corrected energies           -14.41298616 (Pople, fixed reference)
 Cluster corrected energies           -14.41295130 (Pople, relaxed reference)
 Cluster corrected energies           -14.41298616 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       29.45       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1700(1)  1380   
                                         AOSYM     SMH     OPER     JKOP   

              2       7        1.25       700     1000      520     2100     2140     2141     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI     MULTI   RHF-SCF       INT
 CPU TIMES  *         2.01      0.18      0.34      0.75      0.03      0.48
 REAL TIME  *         3.22 SEC
 DISK USED  *        30.77 MB (local),      175.62 MB (total)
 SF USED    *         4.10 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =       -14.66240377  AU                              
 SETTING HLSDIAG(2)     =       -14.41337473  AU                              


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 1  Roots:    1
 Number of reference states: 1  Roots:    1

 Program parameters:       NSTATE=  1    NSTATI=  4    NSTATR=  1    NCEPA = -1    NOKOP =  0    ITRDM =  0    ITRANS=  0
                           IDIP  =200    MAXIT = 30    MAXITI= 50    MAXDAV=  4    MAXVI = 12    NOSING=  0    NOPAIR=  0
                           MXSHRF=  3    IKCPS =  0    IOPTGM=  2    IOPTOR=  0    REFOPT=  1    IAVDEN=  0    IDELCG=  1
                           IREST =  0    NATORB=  0    IPUNRF=  0    ISEP  =  0    OLDDEN=  0    NSTPRI=  1    GPSFLI= -1
                           CLUSTE=  0    CLOSED=  1    ILSTYP=  0    ITRLS =  0    ICCSD =  0    LOCAL =  0    IBASO =  0
                           MP    =  0    ITEDIS=  2    INCDIS=  1    MAXDIS=  6    ITYDIS=  1    BRUECK=  0    IBRSTR=  3
                           INCBRK=  1    TRIPLE=  0    ICCTYP=  2    IHPPD =  0    ICCNEW=  0    I3EXT = -1    IDEB  =  0
                           IDLEIG=  1    IDFTYP=  1    IMP3  =  0    IPROCS=  0    NOINT =  0    NOREF =  1    IMP2G =  0
                           IHINT =  0    IFDIA =  0    ISPARO=  1    JKSYM =  0    CPHF  =  0    MP2D  = -1    DKINT =  0
                           NPKEX =  1    DRVK  =  1    HLSTRA=  1    WIGNER=  1    DIIS_C=  1    MAXIT_= 50    MATEL =  0
                           SPDEG =  1    MEMCPH=  0    DISM  =  1    KDCPMA=  5    IKDCP_=  0    IREDTH=  0    USECS =  0
                           IPROCC=  0    I3SAVE=  1    IKDCP =  1    USECI =  0    OLDPAI=  0    IPROCI=  0    KEEPCL=  1
                           DISCON=  0    SHIFTE=  0    DIISIN=  0    MOLCAS=  0    MEM_PT=  0    RECORD=  0    RS2C  =  0
                           KEXT  = -1    CIPT2 =  0    DECP0S=  0    I4EXT = -1    NATCOR=  0    RIMP2 =  0    DDCI  = -1
                           IPOLAR=  0    OVBK  =  0

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

 Molecular orbitals read from record     2141.2  Type=MCSCF/NATURAL (state averaged)

 Coulomb and exchange operators available. No transformation done.


 Number of p-space configurations:   4

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1       -14.37739316
     2       -14.29710544
     3       -14.29710544
     4       -14.29710544

 Number of blocks in overlap matrix:     6   Smallest eigenvalue:  0.10D+01
 Number of N-2 electron functions:       6
 Number of N-1 electron functions:      78

 Number of internal configurations:                   51
 Number of singly external configurations:          2418
 Number of doubly external configurations:          5772
 Total number of contracted configurations:         8241
 Total number of uncontracted configurations:      29170

 Diagonal Coupling coefficients finished.               Storage:    178176 words, CPU-Time:      0.00 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:    200352 words, CPU-time:      0.00 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000   -14.37739316     0.00000000    -0.04266508  0.88D-02  0.17D-02     0.00
    2     1     1     1.01202152    -0.04575849   -14.42315165    -0.04575849    -0.00048816  0.74D-03  0.25D-04     0.01
    3     1     1     1.02151205    -0.04652046   -14.42391363    -0.00076198    -0.00005458  0.68D-04  0.31D-05     0.02
    4     1     1     1.02514703    -0.04660706   -14.42400022    -0.00008659    -0.00000458  0.79D-05  0.20D-06     0.03
    5     1     1     1.02543203    -0.04661453   -14.42400769    -0.00000747    -0.00000046  0.65D-06  0.55D-07     0.04
    6     1     1     1.02542612    -0.04661525   -14.42400841    -0.00000071    -0.00000003  0.26D-07  0.23D-08     0.04
    7     1     1     1.02544249    -0.04661529   -14.42400845    -0.00000004    -0.00000000  0.71D-09  0.11D-09     0.05


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.0%
 S   0.0%  20.0%
 P   0.0%  20.0%   0.0%

 Initialization:   0.0%
 Other:           60.0%

 Total CPU:        0.1 seconds
 =====================================



 Wavefunction saved on  5202.2

 Reference coefficients greater than 0.0500000
 =============================================
 2//000           0.9874909

 Coefficients of singly external configurations greater than 0.0500000
 =====================================================================

 2/0000  10.1     0.0623444


 RESULTS FOR STATE 1.1
 =====================

 Coefficient of reference function:   C(0) = 0.98749092 (fixed)   0.98749092 (relaxed)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00005174   -0.00023474   -0.00023125
 Singles      0.02366810   -0.00972346   -0.01055806
 Pairs        0.00177571   -0.03665709   -0.03582597
 Total        1.02549556   -0.04661529   -0.04661529
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -14.37739316
 Nuclear energy                         0.00000000
 Kinetic energy                        14.42272616
 One electron energy                  -18.13764441
 Two electron energy                    3.71363596
 Virial quotient                       -1.00008891
 Correlation energy                    -0.04661529
 !MRCI STATE 1.1 Energy               -14.424008445512

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -14.42519693 (Davidson, fixed reference)
 Cluster corrected energies           -14.42519693 (Davidson, relaxed reference)

 Cluster corrected energies           -14.42400845 (Pople, fixed reference)
 Cluster corrected energies           -14.42400845 (Pople, relaxed reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       29.45       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1700(1)  1380   
                                         AOSYM     SMH     OPER     JKOP   

              2       8        1.33       700     1000      520     2100     2140     2141     5201     5202   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI     MULTI   RHF-SCF       INT
 CPU TIMES  *         2.11      0.10      0.18      0.34      0.75      0.03      0.48
 REAL TIME  *         3.33 SEC
 DISK USED  *        30.86 MB (local),      176.06 MB (total)
 SF USED    *         4.10 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(3)     =       -14.42519693  AU                              


        HLSDIAG
    -14.66240377
    -14.41337473
    -14.42519693
                                                  


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

 Time for Seward_LS:       0.33 sec

        1645862. SPIN-ORBIT INTEGRALS WRITTEN OUT IN      415 RECORDS ON RECORD     11290 OF FILE 1


 CPU time:      0.33 sec, REAL time:      0.36 sec


 SORTLS1 read     1691397. and wrote     1691397. SO integrals in    15 records. CPU time:      0.03 sec, REAL time:      0.05 sec
 SORTLS2 read     1691397. and wrote     8257518. SO integrals in    15 records. CPU time:      0.02 sec, REAL time:      0.04 sec

 FILE SIZES: FILE 1:    58.1 MBYTE, FILE 4:     0.0 MBYTE, TOTAL:    58.1 MBYTE

 Preparing effective Fock matrices
 eXact-2-Component (X2C) method activated

 Computing Douglas-Kroll / X2C integrals

 Total X Y Z Fock matrices evaluated:     3    3    3
  
 Wavefunction restored from record  5201.2  Symmetry=1  S= 0.0  NSTATE=   2

 Original energies:    -14.661935    -14.412598
 Replaced energies:    -14.662404    -14.413375

 Wavefunction restored from record  5202.2  Symmetry=1  S= 1.0  NSTATE=   1

 Original energies:    -14.424008
 Replaced energies:    -14.425197



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=   -14.66240377

 Wigner-Eckart theorem used for 10 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5

    1   1.1  0.0  0.0       0.00       0.00      -0.00       0.00      -0.00
                            0.00       0.00      -0.00      -0.00       0.00

    2   2.1  0.0  0.0       0.00   54655.56       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00      -0.00

    3   1.1  1.0  1.0      -0.00       0.00   52060.89       0.00       0.00
                            0.00      -0.00      -0.00       0.00       0.00

    4   1.1  1.0  0.0       0.00       0.00       0.00   52060.89       0.00
                            0.00      -0.00      -0.00       0.00       0.00

    5   1.1  1.0 -1.0      -0.00       0.00       0.00       0.00   52060.89
                           -0.00       0.00      -0.00      -0.00       0.00




   Spin-orbit calculation in the basis of symmetry adapted wave functions
   ======================================================================


 >>> Hamiltonian transformed to symmetry adapted basis <<<


  Results for symmetry 1
  ======================

 => Spin-Orbit Matrixblock (CM-1)  (dimension:  5)

    The diagonal matrixelements are shifted by    -14.66240377 a.u.

  State Sym Spin    / Nr.        1           2           3           4           5

    1    1  |0 0>               0.000       0.000      -0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000      -0.000

    2    1  |0 0>               0.000   54655.557       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000

    1    1  |1 1>+             -0.000       0.000   52060.885       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000

    1    1  |1 0>               0.000       0.000       0.000   52060.885       0.000
                                0.000      -0.000       0.000       0.000      -0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000   52060.885
                                0.000      -0.000      -0.000       0.000       0.000

 => Eigenvalues of spin-orbit matrix in ascending order  (E0 = Emin,ges)
    (symmetry =  1)

    Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
             (au)           (au)        (cm-1)           (au)       (cm-1)        (eV)
    1   -14.66240377     0.00000000        0.00      0.00000000        0.00      0.0000
    2   -14.42519693     0.23720685    52060.89      0.23720685    52060.89      6.4547
    3   -14.42519693     0.23720685    52060.89      0.23720685    52060.89      6.4547
    4   -14.42519693     0.23720685    52060.89      0.23720685    52060.89      6.4547
    5   -14.41337473     0.24902904    54655.56      0.24902904    54655.56      6.7764

 => Eigenvectors of spin-orbit matrix columnwise and corresponding to the
    eigenvalues in ascending order (symmetry =  1)

  Basis states          Eigenvectors (columnwise)

 State Sym Spin     / Nr.      1           2           3           4           5

   1    1  |0 0>           1.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   2    1  |0 0>           0.00000000 -0.00000000  0.00000000 -0.00000000  1.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   1    1  |1 1>+          0.00000000  0.75327112 -0.60851473  0.24662184  0.00000000
                           0.00000000 -0.02901924  0.02308316 -0.00975462  0.00000000

   1    1  |1 0>          -0.00000000  0.00010554 -0.00008395  0.00003548 -0.00000000
                          -0.00000000 -0.45907834 -0.21937378  0.86088455  0.00000000

   1    1  |1 1>-         -0.00000000  0.00029260 -0.00023275  0.00009836 -0.00000000
                          -0.00000000  0.47009306  0.76226771  0.44492730 -0.00000000


  No SO block in symmetry 2


 Summary of SO results
 =====================

 Eigenvalues of the spin-orbit matrix
 ....................................

     Nr  Sym         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
                   (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1   1    -14.66240377      0.00000000        0.00      0.00000000        0.00      0.0000
     2   1    -14.42519693      0.23720685    52060.89      0.23720685    52060.89      6.4547
     3   1    -14.42519693      0.23720685    52060.89      0.23720685    52060.89      6.4547
     4   1    -14.42519693      0.23720685    52060.89      0.23720685    52060.89      6.4547
     5   1    -14.41337473      0.24902904    54655.56      0.24902904    54655.56      6.7764

 E0 =    -14.66240377 is the energy of the lowest zeroth-order state
 E1 =    -14.66240377 is the energy of the lowest SO-state


 Spin-orbit eigenvectors   (columnwise and corresponding to the eigenvalues in ascending order)
 .......................

        Basis states           Eigenvectors (columnwise)

   Total
 Nr Sym  State Sym Spin / Nr.        1           2           3           4           5

  1  1     1    1  |0 0>        1.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  2  1     2    1  |0 0>        0.00000000 -0.00000000  0.00000000 -0.00000000  1.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  3  1     1    1  |1 1>+       0.00000000  0.75327112 -0.60851473  0.24662184  0.00000000
                                0.00000000 -0.02901924  0.02308316 -0.00975462  0.00000000

  4  1     1    1  |1 0>       -0.00000000  0.00010554 -0.00008395  0.00003548 -0.00000000
                               -0.00000000 -0.45907834 -0.21937378  0.86088455  0.00000000

  5  1     1    1  |1 1>-      -0.00000000  0.00029260 -0.00023275  0.00009836 -0.00000000
                               -0.00000000  0.47009306  0.76226771  0.44492730 -0.00000000



 Composition of spin-orbit eigenvectors
 ======================================
   Total
 Nr Sym  State Sym Spin / Nr.      1        2        3        4        5

  1  1     1    1  |0 0>        100.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%  100.00%
  3  1     1    1  |1 1>+         0.00%   56.83%   37.08%    6.09%    0.00%
  4  1     1    1  |1 0>          0.00%   21.08%    4.81%   74.11%    0.00%
  5  1     1    1  |1 1>-         0.00%   22.10%   58.11%   19.80%    0.00%


 No matrix element <i|DMY|i> larger than 5E-7
 No matrix element <i|DMY|1> larger than 5E-7


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       55.39       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1700(1)  1380   
                                         AOSYM     SMH     OPER     JKOP   

              2       8        1.33       700     1000      520     2100     2140     2141     5201     5202   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI        CI     MULTI     MULTI   RHF-SCF       INT
 CPU TIMES  *         5.84      3.71      0.10      0.18      0.34      0.75      0.03      0.48
 REAL TIME  *         7.38 SEC
 DISK USED  *        30.86 MB (local),      279.12 MB (total)
 SF USED    *        29.54 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/USERDEF energy=    -14.413374734667

              CI              CI           MULTI           MULTI         RHF-SCF
    -14.42400845    -14.41259765    -14.37739316    -14.33814623    -14.57538898
 **********************************************************************************************************************************
 Molpro calculation terminated with 2 warning(s)
