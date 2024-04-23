
 Working directory              : /wrk/irikura/molpro.CGDDGbinCF/
 Global scratch directory       : /wrk/irikura/molpro.CGDDGbinCF/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.CGDDGbinCF/

 id        : nistki

 Nodes            nprocs
 pn112695.nist.gov   12
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1040), CPU time= 0.03 sec
 ***,Ge SO-CI
 memory,1500,M;
 
 gprint,orbitals,civector;
 
 symmetry,xyz
 geometry={Ge};
 
 basis=aug-cc-pwCVTZ-PP
 
                                                                                 ! spherical anion ROHF orbitals
 {rhf; wf,nelec=23,sym=2,spin=3}
 
 NTRIP = 3
 NSING = 6
 
 {multi
     closed,6,3
     occ,7,6
     wf,nelec=22,sym=1,spin=2;state,NTRIP;
 weight,all,99
     wf,nelec=22,sym=1,spin=0;state,NSING;
 weight,all,1
     expec2,lxx,lyy,lzz;
 }
 table, energy, ll
 title, Energies and &lt;L**2&gt; values
 
 core,0,0
 
 {ci;wf,sym=1,spin=2;state,NTRIP; save,5102.2}
 hlsdiag = energd4
 {ci;wf,sym=1,spin=0;state,NSING; save,5101.2}
 hlsdiag(NTRIP+1) = energd4
 
 table,hlsdiag
 
 {ci;hlsmat,ecp,5102.2,5101.2;print,vls=0,hls=0}                                 !compute and diagonalize SO matrix
 Commands initialized (846), CPU time= 0.02 sec, 717 directives.
 Default parameters read. Elapsed time= 0.20 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2023.2 linked Fri Sep 22 03:27:09 2023


 **********************************************************************************************************************************
 LABEL *   Ge SO-CI                                                                                                                                                      
  (32 PROC) 64 bit mpp version                                                           DATE: 16-Apr-24          TIME: 16:11:50  
 **********************************************************************************************************************************

 SHA1:             3c61bfe44d37c8635c785372c339f5cbdd4e4b59
 **********************************************************************************************************************************

 Memory per process:      1500 MW
 Total memory per node:  18000 MW

 GA preallocation disabled
 GA check disabled

 Variable memory set to 1500.0 MW


 ZSYMEL=XYZ

 SETTING BASIS          =    AUG-CC-PWCVTZ-PP


 Recomputing integrals since basis changed


 Using spherical harmonics

 Library entry Ge   ECP ECP10MDF                 selected for group  1
 Library entry GE     S aug-cc-pwCVTZ-PP     selected for orbital group  1
 Library entry GE     P aug-cc-pwCVTZ-PP     selected for orbital group  1
 Library entry GE     D aug-cc-pwCVTZ-PP     selected for orbital group  1
 Library entry GE     F aug-cc-pwCVTZ-PP     selected for orbital group  1
 Library entry GE     G aug-cc-pwCVTZ-PP     selected for orbital group  1


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

   1  GE     22.00    0.000000000    0.000000000    0.000000000

 NUCLEAR CHARGE:                   22
 NUMBER OF PRIMITIVE AOS:         182
 NUMBER OF SYMMETRY AOS:          152
 NUMBER OF CONTRACTIONS:           96   (   47Ag  +   49Au  )
 NUMBER OF INNER CORE ORBITALS:     0   (    0Ag  +    0Au  )
 NUMBER OF OUTER CORE ORBITALS:     9   (    6Ag  +    3Au  )
 NUMBER OF VALENCE ORBITALS:        4   (    1Ag  +    3Au  )


 LX: Ag           LY: Ag           LZ: Ag 


 NUCLEAR REPULSION ENERGY    0.00000000

 EXTRA SYMMETRY OF AOS IN SYMMETRY 1:   1 1 1 1 1 1 1 1 2 3   4 5 6 2 3 4 5 6 2 3   4 5 6 2 3 4 5 6 2 3   4 5 6 2 3 4 5 6 7 8
                                        9101112131415
 EXTRA SYMMETRY OF AOS IN SYMMETRY 2:   1 2 3 1 2 3 1 2 3 1   2 3 1 2 3 1 2 3 1 2   3 4 5 6 7 8 910 4 5   6 7 8 910 4 5 6 7 8
                                        910 4 5 6 7 8 910


 Eigenvalues of metric

         1 0.374E-04 0.434E-02 0.256E-01 0.577E-01 0.577E-01 0.577E-01 0.577E-01 0.577E-01
         2 0.912E-02 0.912E-02 0.912E-02 0.254E-01 0.254E-01 0.254E-01 0.185E+00 0.185E+00


 Contracted 2-electron integrals neglected if value below      1.0D-12
 AO integral compression algorithm  1   Integral accuracy      1.0D-12

     17.039 MB (compressed) written to integral file ( 18.3%)

     Node minimum: 0.786 MB, node maximum: 2.097 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:     461784.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:     461784      RECORD LENGTH: 524288

 Memory used in sort:       1.02 MW

 SORT1 READ    11031004. AND WROTE       88744. INTEGRALS IN      1 RECORDS. CPU TIME:     0.07 SEC, REAL TIME:     0.08 SEC
 SORT2 READ     1100136. AND WROTE     5533081. INTEGRALS IN     72 RECORDS. CPU TIME:     0.02 SEC, REAL TIME:     0.02 SEC

 Node minimum:      459824.  Node maximum:      464237. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      19       28.85       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         0.96      0.62
 REAL TIME  *         1.75 SEC
 DISK USED  *        29.18 MB (local),      406.43 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 Program * Restricted Hartree-Fock

 Orbital guess generated from atomic densities. Full valence occupancy:    7   6

 Initial alpha occupancy:   7   6
 Initial beta  occupancy:   7   3

 NELEC=   23   SYM=2   MS2= 3   THRE=1.0D-08   THRD=3.2D-06   THRG=3.2D-06  HFMA2=F  DIIS_START=2   DIIS_MAX=10   DIIS_INCORE=F

 Level shifts:    0.00 (CLOSED)    0.00 (OPEN)    0.30 (GAP_MIN)

 ITER           ETOT              DE          GRAD        DDIFF     DIIS  NEXP   TIME(IT)  TIME(TOT)  DIAG
   1     -293.37911328    -293.37911328     0.00D+00     0.13D+00     0     0       0.01      0.01    start
   2     -293.38195561      -0.00284233     0.14D-02     0.36D-02     1     0       0.00      0.01    diag2
   3     -293.38225014      -0.00029453     0.79D-03     0.78D-03     2     0       0.01      0.02    diag2
   4     -293.38235180      -0.00010166     0.40D-03     0.68D-03     3     0       0.00      0.02    diag2
   5     -293.38236717      -0.00001536     0.10D-03     0.38D-03     4     0       0.00      0.02    diag2
   6     -293.38236825      -0.00000109     0.16D-04     0.88D-04     5     0       0.01      0.03    diag2
   7     -293.38236837      -0.00000012     0.43D-05     0.19D-04     6     0       0.00      0.03    diag2
   8     -293.38236838      -0.00000001     0.11D-05     0.12D-04     7     0       0.01      0.04    fixocc
   9     -293.38236838      -0.00000000     0.11D-06     0.15D-05     8     0       0.00      0.04    diag2
  10     -293.38236838      -0.00000000     0.16D-07     0.10D-06     0     0       0.01      0.05    diag/orth

 Final alpha occupancy:   7   6
 Final beta  occupancy:   7   3

 !RHF STATE 1.2 Energy               -293.382368382058
  RHF One-electron energy            -528.170453970685
  RHF Two-electron energy             234.788085588627
  RHF Kinetic energy                  205.138193276502
  RHF Nuclear energy                    0.000000000000
  RHF Virial quotient                  -1.430169407735

 !RHF STATE 1.2 Dipole moment           0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 ELECTRON ORBITALS
 =================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -7.09540     1  1  s    0.99517
    2.1     2.00000    -1.35028     1  1  d1+  0.74069    1  1  d1- -0.66327
    3.1     2.00000    -1.35028     1  1  d2- -0.50832    1  1  d1+  0.58016    1  1  d2+  0.29541    1  1  d1-  0.55958
    4.1     2.00000    -1.35028     1  1  d0   0.99768
    5.1     2.00000    -1.35028     1  1  d2-  0.70238    1  1  d1+  0.33574    1  1  d2+ -0.38693    1  1  d1-  0.49422
    6.1     2.00000    -1.35028     1  1  d2-  0.49264    1  1  d2+  0.86923
    7.1     2.00000    -0.33226     1  2  s    0.92549
    1.2     2.00000    -5.01044     1  1  pz   0.99994
    2.2     2.00000    -5.01044     1  1  py   0.99994
    3.2     2.00000    -5.01044     1  1  px   1.00009
    4.2     1.00000    -0.05784     1  2  py   0.79560
    5.2     1.00000    -0.05784     1  2  px   0.79560
    6.2     1.00000    -0.05784     1  2  pz   0.79560


 HOMO      6.2    -0.057838 =      -1.5739eV
 LUMO      8.1     0.178844 =       4.8666eV
 LUMO-HOMO         0.236683 =       6.4405eV

 Orbitals saved in record  2100.2


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      19       28.85       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    

              2       4        0.53       700     1000      520     2100   
                                         GEOM     BASIS   MCVARS     RHF  

 PROGRAMS   *        TOTAL   RHF-SCF       INT
 CPU TIMES  *         1.08      0.12      0.62
 REAL TIME  *         2.26 SEC
 DISK USED  *        30.07 MB (local),      417.08 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING NTRIP          =         3.00000000                                  
 SETTING NSING          =         6.00000000                                  

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of closed-shell orbitals:   9 (    6    3)
 Number of active  orbitals:        4 (    1    3)
 Number of external orbitals:      83 (   40   43)

 State symmetry 1

 Number of active electrons:   4    Spin symmetry=Triplet   Space symmetry=1
 Number of states:             3
 Number of CSFs:               6   (6 determinants, 16 intermediate states)

 State symmetry 2

 Number of active electrons:   4    Spin symmetry=Singlet   Space symmetry=1
 Number of states:             6
 Number of CSFs:              12   (18 determinants, 36 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  
 *** IN SYMMETRY 1 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.524D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.722D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.118D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.634D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.388D+00 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 4 6 2 3 5 1 1 2 3   5 4 6 1 6 4 2 5 3 1   4 6 3 5 2 1 6 4 2 5   3 7 81213101514 911
                                        2 4 6 5 3 1 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.169D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.169D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.622D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.305D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.103D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.359D-02 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 2 1 2 1 3 2 1 3 2   1 3 5 4 610 8 9 7 2   1 3 7 9 6 4 510 8 9   7 810 4 5 6 2 1 3 6
                                        4 5 9 7 810 2 1 3

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.32673   0.32673   0.32673
 Weight factors for state symmetry  2:    0.00330   0.00330   0.00330   0.00330   0.00330   0.00330
 
 Number of orbital rotations:  553  ( 15 closed/active, 369 closed/virtual, 0 active/active, 169 active/virtual )
 Total number of variables:    679
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1   11   18    0   -293.32961711    -293.35858751   -0.02897040    0.13035845 0.00009657 0.00000000  0.43E+00      0.23
   2    8   14    0   -293.35299578    -293.35664818   -0.00365240    0.19125693 0.00001025 0.00000000  0.42E-01      0.51
   3    7   12    0   -293.35667605    -293.35667669   -0.00000064    0.00165557 0.00000000 0.00000000  0.97E-03      0.77
   4    3    6    0   -293.35667669    -293.35667669   -0.00000000    0.00000033 0.00000000 0.00000000  0.31E-06      0.95

 CONVERGENCE REACHED!  Final gradient:    0.00000000 ( 0.49E-08)
                       Final energy:   -293.35667669
 
 Results for state 1.1 Triplet
 =============================
 !MCSCF STATE 1.1 Triplet Energy              -293.357572940606
 Nuclear energy                                  0.00000000
 Kinetic energy                                205.07156081
 One electron energy                          -522.74327636
 Two electron energy                           229.38570342
 Virial ratio                                    2.43051319
 
 !MCSCF STATE 1.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Triplet
 =============================
 !MCSCF STATE 2.1 Triplet Energy              -293.357572940604
 Nuclear energy                                  0.00000000
 Kinetic energy                                205.07156081
 One electron energy                          -522.74327636
 Two electron energy                           229.38570342
 Virial ratio                                    2.43051319
 
 !MCSCF STATE 2.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Triplet
 =============================
 !MCSCF STATE 3.1 Triplet Energy              -293.357572940599
 Nuclear energy                                  0.00000000
 Kinetic energy                                205.07156081
 One electron energy                          -522.74327636
 Two electron energy                           229.38570342
 Virial ratio                                    2.43051319
 
 !MCSCF STATE 3.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.1 Singlet
 =============================
 !MCSCF STATE 1.1 Singlet Energy              -293.318032725111
 Nuclear energy                                  0.00000000
 Kinetic energy                                205.07156081
 One electron energy                          -522.74327636
 Two electron energy                           229.42524363
 Virial ratio                                    2.43032038
 
 !MCSCF STATE 1.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Singlet
 =============================
 !MCSCF STATE 2.1 Singlet Energy              -293.318032725109
 Nuclear energy                                  0.00000000
 Kinetic energy                                205.07156081
 One electron energy                          -522.74327636
 Two electron energy                           229.42524363
 Virial ratio                                    2.43032038
 
 !MCSCF STATE 2.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Singlet
 =============================
 !MCSCF STATE 3.1 Singlet Energy              -293.318032725106
 Nuclear energy                                  0.00000000
 Kinetic energy                                205.07156081
 One electron energy                          -522.74327636
 Two electron energy                           229.42524363
 Virial ratio                                    2.43032038
 
 !MCSCF STATE 3.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Singlet
 =============================
 !MCSCF STATE 4.1 Singlet Energy              -293.318032725096
 Nuclear energy                                  0.00000000
 Kinetic energy                                205.07156081
 One electron energy                          -522.74327636
 Two electron energy                           229.42524363
 Virial ratio                                    2.43032038
 
 !MCSCF STATE 4.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Singlet
 =============================
 !MCSCF STATE 5.1 Singlet Energy              -293.318032725096
 Nuclear energy                                  0.00000000
 Kinetic energy                                205.07156081
 One electron energy                          -522.74327636
 Two electron energy                           229.42524363
 Virial ratio                                    2.43032038
 
 !MCSCF STATE 5.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Singlet
 =============================
 !MCSCF STATE 6.1 Singlet Energy              -293.283711388262
 Nuclear energy                                  0.00000000
 Kinetic energy                                205.06413340
 One electron energy                          -522.58491224
 Two electron energy                           229.30120085
 Virial ratio                                    2.43020482
 
 !MCSCF STATE 6.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 ? Warning
 ? Transition properties are only calculated between states of the same symmetry
 ? The problem occurs in mu_properties_expec2

 !MCSCF expec      <1.1 Triplet|LXLX|1.1 Triplet>     1.000000000000
 !MCSCF expec      <2.1 Triplet|LXLX|2.1 Triplet>    -0.000000000000
 !MCSCF expec      <3.1 Triplet|LXLX|3.1 Triplet>     1.000000000000
 !MCSCF expec      <1.1 Singlet|LXLX|1.1 Singlet>     2.648385870781
 !MCSCF expec      <2.1 Singlet|LXLX|2.1 Singlet>     1.000000000000
 !MCSCF expec      <3.1 Singlet|LXLX|3.1 Singlet>     4.000000000000
 !MCSCF expec      <4.1 Singlet|LXLX|4.1 Singlet>     1.000000000000
 !MCSCF expec      <5.1 Singlet|LXLX|5.1 Singlet>     1.351713514003
 !MCSCF expec      <6.1 Singlet|LXLX|6.1 Singlet>    -0.000000000000
 
 !MCSCF expec      <1.1 Triplet|LYLY|1.1 Triplet>    -0.000000000000
 !MCSCF expec      <2.1 Triplet|LYLY|2.1 Triplet>     1.000000000000
 !MCSCF expec      <3.1 Triplet|LYLY|3.1 Triplet>     1.000000000000
 !MCSCF expec      <1.1 Singlet|LYLY|1.1 Singlet>     3.314311511331
 !MCSCF expec      <2.1 Singlet|LYLY|2.1 Singlet>     4.000000000000
 !MCSCF expec      <3.1 Singlet|LYLY|3.1 Singlet>     1.000000000000
 !MCSCF expec      <4.1 Singlet|LYLY|4.1 Singlet>     1.000000000000
 !MCSCF expec      <5.1 Singlet|LYLY|5.1 Singlet>     0.685609302534
 !MCSCF expec      <6.1 Singlet|LYLY|6.1 Singlet>    -0.000000000000
 
 !MCSCF expec      <1.1 Triplet|LZLZ|1.1 Triplet>     1.000000000000
 !MCSCF expec      <2.1 Triplet|LZLZ|2.1 Triplet>     1.000000000000
 !MCSCF expec      <3.1 Triplet|LZLZ|3.1 Triplet>    -0.000000000000
 !MCSCF expec      <1.1 Singlet|LZLZ|1.1 Singlet>     0.037302617887
 !MCSCF expec      <2.1 Singlet|LZLZ|2.1 Singlet>     1.000000000000
 !MCSCF expec      <3.1 Singlet|LZLZ|3.1 Singlet>     1.000000000000
 !MCSCF expec      <4.1 Singlet|LZLZ|4.1 Singlet>     4.000000000000
 !MCSCF expec      <5.1 Singlet|LZLZ|5.1 Singlet>     3.962677183463
 !MCSCF expec      <6.1 Singlet|LZLZ|6.1 Singlet>    -0.000000000000
 
 !MCSCF expec      <1.1 Triplet|L**2|1.1 Triplet>     2.000000000000
 !MCSCF expec      <2.1 Triplet|L**2|2.1 Triplet>     2.000000000000
 !MCSCF expec      <3.1 Triplet|L**2|3.1 Triplet>     2.000000000000
 !MCSCF expec      <1.1 Singlet|L**2|1.1 Singlet>     6.000000000000
 !MCSCF expec      <2.1 Singlet|L**2|2.1 Singlet>     6.000000000000
 !MCSCF expec      <3.1 Singlet|L**2|3.1 Singlet>     6.000000000000
 !MCSCF expec      <4.1 Singlet|L**2|4.1 Singlet>     6.000000000000
 !MCSCF expec      <5.1 Singlet|L**2|5.1 Singlet>     6.000000000000
 !MCSCF expec      <6.1 Singlet|L**2|6.1 Singlet>    -0.000000000000
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 4 3 5 2 6 1 1 4 3   5 2 6 1 4 3 5 2 6 1   4 3 5 2 6 1 4 3 5 2   6 913101415 812 711
                                        4 3 5 2 6 1 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 3 2 2 3 1 1 3 2 1   3 2 4 7 9 810 6 5 1   3 2 4 7 9 810 6 5 4   7 9 810 6 5 1 3 2 4
                                        9 7 810 6 5 1 3 2
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -7.34523     1  1  s    0.99567
    2.1     2.00000    -1.59978     1  1  d1+  1.00004
    3.1     2.00000    -1.59978     1  1  d2-  1.00004
    4.1     2.00000    -1.59978     1  1  d2+  1.00004
    5.1     2.00000    -1.59978     1  1  d0   1.00004
    6.1     2.00000    -1.59978     1  1  d1-  1.00004
    7.1     1.97366    -0.56053     1  2  s    0.96184
    1.2     2.00000    -5.25977     1  1  px   0.99988
    2.2     2.00000    -5.25977     1  1  pz   0.99988
    3.2     2.00000    -5.25977     1  1  py   0.99988
    4.2     0.67545    -0.06256     1  2  py   1.01815
    5.2     0.67545    -0.06256     1  2  pz   1.01815
    6.2     0.67545    -0.06256     1  2  px   1.01815
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 1 (Triplet)
 =======================================
 
 2 a0a         -0.00000000      0.00000000      0.99344972
 2 aa0         -0.00000000      0.99344972     -0.00000000
 2 0aa          0.99344972      0.00000000      0.00000000
 0 2aa         -0.11427010      0.00000000      0.00000000
 0 aa2         -0.00000000     -0.11427010     -0.00000000
 0 a2a          0.00000000     -0.00000000     -0.11427010
 
 Energy:     -293.35757294   -293.35757294   -293.35757294
 
 
 CI Coefficients of symmetry 1 (Singlet)
 =======================================
 
 2 020          0.80735720     -0.00000000     -0.00000000     -0.00000000     -0.07833213      0.56366705
 2 200         -0.33584099     -0.00000000     -0.00000000     -0.00000000      0.73835790      0.56366705
 2 b0a          0.00000000      0.00000000     -0.00000000     -0.70247503      0.00000000      0.00000000
 2 a0b         -0.00000000     -0.00000000      0.00000000      0.70247503     -0.00000000     -0.00000000
 2 ab0         -0.00000000     -0.00000000      0.70247503     -0.00000000     -0.00000000     -0.00000000
 2 ba0          0.00000000      0.00000000     -0.70247503      0.00000000      0.00000000      0.00000000
 2 0ab          0.00000000      0.70247503     -0.00000000     -0.00000000     -0.00000000      0.00000000
 2 0ba         -0.00000000     -0.70247503      0.00000000      0.00000000      0.00000000     -0.00000000
 2 002         -0.47151621     -0.00000000     -0.00000000     -0.00000000     -0.66002578      0.56366705
 0 202          0.09286508      0.00000000     -0.00000000     -0.00000000     -0.00901004     -0.12495113
 0 220         -0.05423546      0.00000000     -0.00000000     -0.00000000     -0.07591850     -0.12495113
 0 022         -0.03862962     -0.00000000     -0.00000000     -0.00000000      0.08492854     -0.12495113
 0 2ba          0.00000000      0.08080116      0.00000000      0.00000000     -0.00000000      0.00000000
 0 2ab         -0.00000000     -0.08080116     -0.00000000     -0.00000000      0.00000000     -0.00000000
 0 ba2          0.00000000      0.00000000      0.08080116      0.00000000      0.00000000      0.00000000
 0 ab2         -0.00000000     -0.00000000     -0.08080116     -0.00000000     -0.00000000     -0.00000000
 0 a2b          0.00000000      0.00000000     -0.00000000     -0.08080116      0.00000000      0.00000000
 0 b2a         -0.00000000     -0.00000000      0.00000000      0.08080116     -0.00000000     -0.00000000
 
 Energy:     -293.31803273   -293.31803273   -293.31803273   -293.31803273   -293.31803273   -293.28371139
 


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       33.90       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       5        0.79       700     1000      520     2100     2140   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF   

 PROGRAMS   *        TOTAL     MULTI   RHF-SCF       INT
 CPU TIMES  *         1.96      0.87      0.12      0.62
 REAL TIME  *         3.38 SEC
 DISK USED  *        34.77 MB (local),      473.48 MB (total)
 SF USED    *        12.54 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

         ENERGY     LL
    -293.3575729   2.0
    -293.3575729   2.0
    -293.3575729   2.0
    -293.3180327   6.0
    -293.3180327   6.0
    -293.3180327   6.0
    -293.3180327   6.0
    -293.3180327   6.0
    -293.2837114  -0.0
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 3  Roots:    1   2   3
 Number of reference states: 3  Roots:    1   2   3

 Reference symmetry:                   1   Triplet 
 Number of electrons:                 22
 Maximum number of shells:             4
 Maximum number of spin couplings:    28

 Reference space:        6 conf        6 CSFs
 N elec internal:      571 conf     1077 CSFs
 N-1 el internal:      772 conf     2940 CSFs
 N-2 el internal:      397 conf     2695 CSFs

 Number of electrons in valence space:                     22
 Maximum number of open shell orbitals in reference space:  2
 Maximum number of open shell orbitals in internal spaces:  8


 Number of closed-shell orbitals:   9 (   6   3 )
 Number of active  orbitals:        4 (   1   3 )
 Number of external orbitals:      83 (  40  43 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Valence orbitals related to previous ones by unitary transformation. Operators transformed.


 Number of p-space configurations:   3

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -293.35757294
     2      -293.35757294
     3      -293.35757294

 Number of blocks in overlap matrix:   382   Smallest eigenvalue:  0.13D-01
 Number of N-2 electron functions:     477
 Number of N-1 electron functions:    2940

 Number of internal configurations:                  537
 Number of singly external configurations:        122064
 Number of doubly external configurations:        822378
 Total number of contracted configurations:       944979
 Total number of uncontracted configurations:    4744665

 Diagonal Coupling coefficients finished.               Storage:    543671 words, CPU-Time:      0.03 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:    456247 words, CPU-time:      0.03 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -293.35757294    -0.00000000    -0.88567684  0.35D-01  0.71D-01     0.12
    1     2     2     1.00000000     0.00000000  -293.35757294     0.00000000    -0.88598885  0.36D-01  0.71D-01     0.12
    1     3     3     1.00000000     0.00000000  -293.35757294     0.00000000    -0.88587798  0.36D-01  0.71D-01     0.12
    2     1     1     1.06917470    -0.71592867  -294.07350161    -0.71592867    -0.02030446  0.28D-02  0.11D-02     2.53
    2     2     2     1.06938730    -0.71581026  -294.07338320    -0.71581026    -0.02041566  0.29D-02  0.11D-02     2.53
    2     3     3     1.06948218    -0.71575726  -294.07333020    -0.71575726    -0.02046717  0.29D-02  0.11D-02     2.53
    3     1     1     1.06177070    -0.73458751  -294.09216045    -0.01865884    -0.00063696  0.94D-04  0.44D-04     4.69
    3     2     2     1.06176764    -0.73458573  -294.09215867    -0.01877547    -0.00063884  0.94D-04  0.44D-04     4.69
    3     3     3     1.06176642    -0.73458469  -294.09215763    -0.01882743    -0.00063978  0.94D-04  0.44D-04     4.69
    4     1     1     1.06091307    -0.73518253  -294.09275547    -0.00059502    -0.00003000  0.46D-05  0.23D-05     6.86
    4     2     2     1.06090765    -0.73518243  -294.09275537    -0.00059670    -0.00003012  0.46D-05  0.23D-05     6.86
    4     3     3     1.06090523    -0.73518236  -294.09275530    -0.00059767    -0.00003020  0.46D-05  0.23D-05     6.86
    5     1     1     1.06103818    -0.73521170  -294.09278464    -0.00002917    -0.00000114  0.12D-06  0.11D-06     9.00
    5     2     2     1.06103782    -0.73521170  -294.09278464    -0.00002927    -0.00000114  0.12D-06  0.11D-06     9.00
    5     3     3     1.06103750    -0.73521170  -294.09278464    -0.00002934    -0.00000114  0.12D-06  0.12D-06     9.00
    6     1     1     1.06106537    -0.73521289  -294.09278583    -0.00000119    -0.00000005  0.34D-08  0.66D-08    11.14
    6     2     2     1.06106524    -0.73521289  -294.09278583    -0.00000119    -0.00000005  0.34D-08  0.67D-08    11.14
    6     3     3     1.06106509    -0.73521289  -294.09278583    -0.00000119    -0.00000005  0.33D-08  0.67D-08    11.14
    7     1     1     1.06106557    -0.73521294  -294.09278588    -0.00000005    -0.00000000  0.48D-09  0.35D-09    13.27
    7     2     2     1.06106555    -0.73521294  -294.09278588    -0.00000005    -0.00000000  0.47D-09  0.35D-09    13.27
    7     3     3     1.06106553    -0.73521294  -294.09278588    -0.00000005    -0.00000000  0.48D-09  0.36D-09    13.27


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.7%
 S   0.9%   4.4%
 P   0.4%  28.7%  26.3%

 Initialization:   0.7%
 Other:           38.0%

 Total CPU:       13.3 seconds
 =====================================



 Wavefunction saved on  5102.2

 Reference coefficients greater than 0.0500000
 =============================================
 2222222222//0          -0.0000000   0.0000000   0.9651959
 2222222222/0/           0.0000000   0.9651959  -0.0000000
 22222222220//           0.9651959  -0.0000000   0.0000000
 2222220222//2           0.0000000  -0.0000000  -0.1029230
 2222220222/2/          -0.0000000  -0.1029229   0.0000000
 22222202222//          -0.1029229   0.0000000  -0.0000000

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.970635   -0.000000    0.000000
 2          -0.000000    0.000000    0.970635
 3           0.000000    0.970635   -0.000000

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.970635   -0.000000   -0.000000
 2          -0.000000    0.970635   -0.000000
 3          -0.000000   -0.000000    0.970635


 RESULTS FOR STATE 1.1
 =====================

 Coefficient of reference function:   C(0) = 0.97063462 (fixed)   0.97066795 (relaxed)   0.97063462 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00033674   -0.00064797   -0.65109989
 Singles      0.01438428   -0.04436820   -0.05176621
 Pairs        0.04670186   -0.00000000   -0.03234684
 Total        1.06142288   -0.04501617   -0.73521294
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -293.35757294
 Nuclear energy                         0.00000000
 Kinetic energy                       204.90760990
 One electron energy                 -521.69779277
 Two electron energy                  227.60500689
 Virial quotient                       -1.43524580
 Correlation energy                    -0.73521294
 !MRCI STATE 1.1 Energy              -294.092785878726

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -294.13794477 (Davidson, fixed reference)
 Cluster corrected energies          -294.13789118 (Davidson, relaxed reference)
 Cluster corrected energies          -294.13794477 (Davidson, rotated reference)

 Cluster corrected energies          -294.13551318 (Pople, fixed reference)
 Cluster corrected energies          -294.13545989 (Pople, relaxed reference)
 Cluster corrected energies          -294.13551318 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.97063463 (fixed)   0.97066796 (relaxed)   0.97063463 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00033674   -0.00064797   -0.00084373
 Singles      0.01438426   -0.04436818   -0.05176619
 Pairs        0.04670186   -0.69019679   -0.68260302
 Total        1.06142286   -0.73521294   -0.73521294
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -293.35757294
 Nuclear energy                         0.00000000
 Kinetic energy                       204.90760803
 One electron energy                 -521.69779188
 Two electron energy                  227.60500600
 Virial quotient                       -1.43524581
 Correlation energy                    -0.73521294
 !MRCI STATE 2.1 Energy              -294.092785878716

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -294.13794476 (Davidson, fixed reference)
 Cluster corrected energies          -294.13789116 (Davidson, relaxed reference)
 Cluster corrected energies          -294.13794476 (Davidson, rotated reference)

 Cluster corrected energies          -294.13551316 (Pople, fixed reference)
 Cluster corrected energies          -294.13545988 (Pople, relaxed reference)
 Cluster corrected energies          -294.13551316 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.97063464 (fixed)   0.97066797 (relaxed)   0.97063464 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00033674   -0.00064797   -0.65109995
 Singles      0.01438424   -0.04436817   -0.05176618
 Pairs        0.04670185    0.00000000   -0.03234681
 Total        1.06142283   -0.04501614   -0.73521294
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -293.35757294
 Nuclear energy                         0.00000000
 Kinetic energy                       204.90760809
 One electron energy                 -521.69779197
 Two electron energy                  227.60500609
 Virial quotient                       -1.43524581
 Correlation energy                    -0.73521294
 !MRCI STATE 3.1 Energy              -294.092785878706

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -294.13794474 (Davidson, fixed reference)
 Cluster corrected energies          -294.13789114 (Davidson, relaxed reference)
 Cluster corrected energies          -294.13794474 (Davidson, rotated reference)

 Cluster corrected energies          -294.13551315 (Pople, fixed reference)
 Cluster corrected energies          -294.13545986 (Pople, relaxed reference)
 Cluster corrected energies          -294.13551315 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       33.90       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       6       22.97       700     1000      520     2100     2140     5102   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *        15.71     13.74      0.87      0.12      0.62
 REAL TIME  *        19.17 SEC
 DISK USED  *        56.95 MB (local),      739.64 MB (total)
 SF USED    *       237.56 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =      -294.13794477  AU                              
 SETTING HLSDIAG(2)     =      -294.13794476  AU                              
 SETTING HLSDIAG(3)     =      -294.13794474  AU                              


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 6  Roots:    1   2   3   4   5   6
 Number of reference states: 6  Roots:    1   2   3   4   5   6

 Reference symmetry:                   1   Singlet 
 Number of electrons:                 22
 Maximum number of shells:             5
 Maximum number of spin couplings:    14

 Reference space:       12 conf       12 CSFs
 N elec internal:      613 conf      866 CSFs
 N-1 el internal:      907 conf     2099 CSFs
 N-2 el internal:      694 conf     2086 CSFs

 Number of electrons in valence space:                     22
 Maximum number of open shell orbitals in reference space:  2
 Maximum number of open shell orbitals in internal spaces:  8


 Number of closed-shell orbitals:   9 (   6   3 )
 Number of active  orbitals:        4 (   1   3 )
 Number of external orbitals:      83 (  40  43 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Coulomb and exchange operators available. No transformation done.


 Number of p-space configurations:   6

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -293.31803273
     2      -293.31803273
     3      -293.31803273
     4      -293.31803273
     5      -293.31803273
     6      -293.28371139

 Number of blocks in overlap matrix:   679   Smallest eigenvalue:  0.26D-01
 Number of N-2 electron functions:     808
 Number of N-1 electron functions:    2099

 Number of internal configurations:                  450
 Number of singly external configurations:         87134
 Number of doubly external configurations:       1394048
 Total number of contracted configurations:      1481632
 Total number of uncontracted configurations:    3677611

 Diagonal Coupling coefficients finished.               Storage:    700677 words, CPU-Time:      0.10 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:    510950 words, CPU-time:      0.04 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -293.31803273     0.00000000    -0.89495762  0.40D-01  0.74D-01     0.22
    1     2     2     1.00000000     0.00000000  -293.31803273    -0.00000000    -0.89601027  0.42D-01  0.74D-01     0.22
    1     3     3     1.00000000     0.00000000  -293.31803273    -0.00000000    -0.89556905  0.41D-01  0.74D-01     0.22
    1     4     4     1.00000000     0.00000000  -293.31803273    -0.00000000    -0.89537640  0.41D-01  0.74D-01     0.22
    1     5     5     1.00000000     0.00000000  -293.31803273    -0.00000000    -0.89471631  0.40D-01  0.74D-01     0.22
    1     6     6     1.00000000     0.00000000  -293.28371139    -0.00000000    -0.88114283  0.16D-01  0.90D-01     0.22
    2     1     1     1.07434690    -0.72152100  -294.03955372    -0.72152100    -0.02149328  0.31D-02  0.14D-02     7.37
    2     2     2     1.07424683    -0.72150151  -294.03953424    -0.72150151    -0.02152393  0.31D-02  0.14D-02     7.37
    2     3     3     1.07472626    -0.72122052  -294.03925324    -0.72122052    -0.02185430  0.33D-02  0.14D-02     7.37
    2     4     4     1.07480423    -0.72116859  -294.03920132    -0.72116859    -0.02191452  0.33D-02  0.14D-02     7.37
    2     5     5     1.07515650    -0.72102528  -294.03905800    -0.72102528    -0.02205252  0.34D-02  0.14D-02     7.37
    2     6     6     1.06979767    -0.71591899  -293.99963037    -0.71591899    -0.02063543  0.30D-02  0.16D-02     7.37
    3     1     1     1.06568986    -0.74124662  -294.05927935    -0.01972563    -0.00062706  0.81D-04  0.52D-04    14.47
    3     2     2     1.06571432    -0.74124554  -294.05927827    -0.01974403    -0.00062868  0.81D-04  0.52D-04    14.47
    3     3     3     1.06573911    -0.74123265  -294.05926538    -0.02001214    -0.00064642  0.86D-04  0.53D-04    14.47
    3     4     4     1.06574208    -0.74123254  -294.05926526    -0.02006394    -0.00064657  0.86D-04  0.53D-04    14.47
    3     5     5     1.06576782    -0.74122796  -294.05926068    -0.02020268    -0.00065101  0.86D-04  0.54D-04    14.47
    3     6     6     1.06308770    -0.73481269  -294.01852407    -0.01889370    -0.00063497  0.74D-04  0.73D-04    14.47
    4     1     1     1.06481517    -0.74185607  -294.05988880    -0.00060945    -0.00003285  0.54D-05  0.26D-05    21.44
    4     2     2     1.06481424    -0.74185593  -294.05988866    -0.00061039    -0.00003297  0.54D-05  0.26D-05    21.44
    4     3     3     1.06481477    -0.74185457  -294.05988730    -0.00062192    -0.00003474  0.57D-05  0.28D-05    21.44
    4     4     4     1.06481472    -0.74185449  -294.05988722    -0.00062196    -0.00003486  0.57D-05  0.28D-05    21.44
    4     5     5     1.06481710    -0.74185444  -294.05988717    -0.00062648    -0.00003484  0.57D-05  0.28D-05    21.44
    4     6     6     1.06226059    -0.73543576  -294.01914715    -0.00062307    -0.00003445  0.60D-05  0.32D-05    21.44
    5     1     1     1.06488197    -0.74188822  -294.05992095    -0.00003215    -0.00000143  0.22D-06  0.12D-06    28.35
    5     2     2     1.06488278    -0.74188821  -294.05992093    -0.00003227    -0.00000144  0.22D-06  0.12D-06    28.35
    5     3     3     1.06488236    -0.74188816  -294.05992089    -0.00003359    -0.00000149  0.24D-06  0.12D-06    28.35
    5     4     4     1.06488212    -0.74188816  -294.05992088    -0.00003367    -0.00000150  0.24D-06  0.12D-06    28.35
    5     5     5     1.06488315    -0.74188815  -294.05992088    -0.00003371    -0.00000150  0.24D-06  0.12D-06    28.35
    5     6     6     1.06227701    -0.73546975  -294.01918114    -0.00003399    -0.00000177  0.29D-06  0.17D-06    28.35
    6     1     1     1.06486875    -0.74188971  -294.05992243    -0.00000149    -0.00000005  0.56D-08  0.58D-08    35.29
    6     2     2     1.06486877    -0.74188971  -294.05992243    -0.00000150    -0.00000005  0.56D-08  0.59D-08    35.29
    6     3     3     1.06486812    -0.74188971  -294.05992243    -0.00000155    -0.00000006  0.58D-08  0.62D-08    35.29
    6     4     4     1.06486840    -0.74188971  -294.05992243    -0.00000155    -0.00000006  0.57D-08  0.62D-08    35.29
    6     5     5     1.06486868    -0.74188971  -294.05992243    -0.00000155    -0.00000006  0.56D-08  0.63D-08    35.29
    6     6     6     1.06225835    -0.73547158  -294.01918296    -0.00000183    -0.00000008  0.96D-08  0.89D-08    35.29
    7     1     1     1.06486688    -0.74188976  -294.05992249    -0.00000005    -0.00000000  0.62D-09  0.21D-09    42.27
    7     2     2     1.06486692    -0.74188976  -294.05992249    -0.00000005    -0.00000000  0.63D-09  0.22D-09    42.27
    7     3     3     1.06486685    -0.74188976  -294.05992249    -0.00000006    -0.00000000  0.67D-09  0.22D-09    42.27
    7     4     4     1.06486687    -0.74188976  -294.05992249    -0.00000006    -0.00000000  0.67D-09  0.22D-09    42.27
    7     5     5     1.06486691    -0.74188976  -294.05992249    -0.00000006    -0.00000000  0.68D-09  0.22D-09    42.27
    7     6     6     1.06225244    -0.73547165  -294.01918304    -0.00000008    -0.00000000  0.87D-09  0.38D-09    42.27


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.4%
 S   0.3%   1.9%
 P   0.4%  19.6%  33.3%

 Initialization:   0.4%
 Other:           43.9%

 Total CPU:       42.3 seconds
 =====================================



 Wavefunction saved on  5101.2

 Reference coefficients greater than 0.0500000
 =============================================
 22222222220/\           0.0000000   0.0000000   0.9634077   0.0000000  -0.0000000   0.0000000
 2222222222/\0           0.0000000  -0.0000000  -0.0000000   0.9634077   0.0000000   0.0000000
 2222222222/0\           0.0000000  -0.0000000   0.0000000  -0.0000000   0.9634077   0.0000000
 2222222222200          -0.1304396   0.7757287  -0.0000000   0.0000000   0.0000000   0.5484916
 2222222222020           0.7370207  -0.2749004  -0.0000000  -0.0000000  -0.0000000   0.5484917
 2222222222002          -0.6065810  -0.5008285   0.0000000  -0.0000000  -0.0000000   0.5484917
 2222220222220          -0.0646931  -0.0534144   0.0000000  -0.0000000  -0.0000000  -0.1133776
 2222220222022          -0.0139116   0.0827330  -0.0000000   0.0000000   0.0000000  -0.1133775
 2222220222202           0.0786047  -0.0293187  -0.0000000  -0.0000000  -0.0000000  -0.1133775
 2222220222/2\          -0.0000000   0.0000000  -0.0000000   0.0000000  -0.1027494  -0.0000000
 22222202222/\          -0.0000000  -0.0000000  -0.1027494  -0.0000000   0.0000000  -0.0000000
 2222220222/\2          -0.0000000   0.0000000   0.0000000  -0.1027494  -0.0000000  -0.0000000

 Coefficients of singly external configurations greater than 0.0500000
 =====================================================================

 222222\222/0\  17.1     0.0000000  -0.0000000   0.0000000  -0.0000000   0.0514198   0.0000000
 222222\2220/\  15.1     0.0509734   0.0069456  -0.0000000  -0.0000000  -0.0000000   0.0023984

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.935332    0.000000    0.000000    0.000000    0.252589    0.000000
 2          -0.252589    0.000000   -0.000000   -0.000000    0.935332   -0.000000
 3          -0.000000    0.968838   -0.000000    0.000000   -0.000000   -0.000000
 4          -0.000000    0.000000    0.968838   -0.000000    0.000000   -0.000000
 5          -0.000000   -0.000000    0.000000    0.968838    0.000000   -0.000000
 6           0.000000    0.000000    0.000000    0.000000   -0.000000    0.970000

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.968838   -0.000000   -0.000000   -0.000000    0.000000    0.000000
 2          -0.000000    0.968838   -0.000000   -0.000000    0.000000   -0.000000
 3          -0.000000   -0.000000    0.968838    0.000000   -0.000000    0.000000
 4          -0.000000   -0.000000    0.000000    0.968838   -0.000000    0.000000
 5           0.000000    0.000000   -0.000000   -0.000000    0.968838    0.000000
 6           0.000000   -0.000000    0.000000    0.000000    0.000000    0.970000


 RESULTS FOR STATE 1.1
 =====================

 Coefficient of reference function:   C(0) = 0.93533223 (fixed)   0.96887143 (relaxed)   0.96883830 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00046541   -0.00094350   -0.65103116
 Singles      0.01683285   -0.04865087   -0.05738971
 Pairs        0.04806422   -0.00000001   -0.03346889
 Total        1.06536248   -0.04959438   -0.74188976
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -293.31803273
 Nuclear energy                         0.00000000
 Kinetic energy                       204.91232301
 One electron energy                 -521.64456732
 Two electron energy                  227.58464483
 Virial quotient                       -1.43505241
 Correlation energy                    -0.74188976
 !MRCI STATE 1.1 Energy              -294.059922487983

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -294.10841425 (Davidson, fixed reference)
 Cluster corrected energies          -294.10836019 (Davidson, relaxed reference)
 Cluster corrected energies          -294.10841425 (Davidson, rotated reference)

 Cluster corrected energies          -294.10647827 (Pople, fixed reference)
 Cluster corrected energies          -294.10642349 (Pople, relaxed reference)
 Cluster corrected energies          -294.10647827 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.93533221 (fixed)   0.96887142 (relaxed)   0.96883828 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00046541   -0.00094350   -0.65103119
 Singles      0.01683285   -0.04865088   -0.05738972
 Pairs        0.04806426    0.00000007   -0.03346886
 Total        1.06536252   -0.04959432   -0.74188976
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -293.31803273
 Nuclear energy                         0.00000000
 Kinetic energy                       204.91232777
 One electron energy                 -521.64457064
 Two electron energy                  227.58464816
 Virial quotient                       -1.43505237
 Correlation energy                    -0.74188976
 !MRCI STATE 2.1 Energy              -294.059922487923

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -294.10841428 (Davidson, fixed reference)
 Cluster corrected energies          -294.10836022 (Davidson, relaxed reference)
 Cluster corrected energies          -294.10841428 (Davidson, rotated reference)

 Cluster corrected energies          -294.10647830 (Pople, fixed reference)
 Cluster corrected energies          -294.10642352 (Pople, relaxed reference)
 Cluster corrected energies          -294.10647830 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.96883832 (fixed)   0.96887145 (relaxed)   0.96883832 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00046541   -0.00094350   -0.65103111
 Singles      0.01683283   -0.04865095   -0.05738975
 Pairs        0.04806421    0.00000000   -0.03346891
 Total        1.06536245   -0.04959445   -0.74188976
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -293.31803273
 Nuclear energy                         0.00000000
 Kinetic energy                       204.91236651
 One electron energy                 -521.64459098
 Two electron energy                  227.58466850
 Virial quotient                       -1.43505210
 Correlation energy                    -0.74188976
 !MRCI STATE 3.1 Energy              -294.059922487837

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -294.10841422 (Davidson, fixed reference)
 Cluster corrected energies          -294.10836017 (Davidson, relaxed reference)
 Cluster corrected energies          -294.10841422 (Davidson, rotated reference)

 Cluster corrected energies          -294.10647825 (Pople, fixed reference)
 Cluster corrected energies          -294.10642347 (Pople, relaxed reference)
 Cluster corrected energies          -294.10647825 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.96883831 (fixed)   0.96887144 (relaxed)   0.96883831 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00046541   -0.00094350   -0.65103111
 Singles      0.01683283   -0.04865093   -0.05738975
 Pairs        0.04806424    0.00000000   -0.03346890
 Total        1.06536247   -0.04959443   -0.74188976
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -293.31803273
 Nuclear energy                         0.00000000
 Kinetic energy                       204.91236672
 One electron energy                 -521.64459135
 Two electron energy                  227.58466886
 Virial quotient                       -1.43505210
 Correlation energy                    -0.74188976
 !MRCI STATE 4.1 Energy              -294.059922487815

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -294.10841424 (Davidson, fixed reference)
 Cluster corrected energies          -294.10836018 (Davidson, relaxed reference)
 Cluster corrected energies          -294.10841424 (Davidson, rotated reference)

 Cluster corrected energies          -294.10647826 (Pople, fixed reference)
 Cluster corrected energies          -294.10642348 (Pople, relaxed reference)
 Cluster corrected energies          -294.10647826 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.96883829 (fixed)   0.96887142 (relaxed)   0.96883829 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00046541   -0.00094350   -0.65103109
 Singles      0.01683283   -0.04865093   -0.05738977
 Pairs        0.04806426    0.00000000   -0.03346891
 Total        1.06536250   -0.04959443   -0.74188976
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -293.31803273
 Nuclear energy                         0.00000000
 Kinetic energy                       204.91236949
 One electron energy                 -521.64459464
 Two electron energy                  227.58467215
 Virial quotient                       -1.43505208
 Correlation energy                    -0.74188976
 !MRCI STATE 5.1 Energy              -294.059922487785

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -294.10841426 (Davidson, fixed reference)
 Cluster corrected energies          -294.10836021 (Davidson, relaxed reference)
 Cluster corrected energies          -294.10841426 (Davidson, rotated reference)

 Cluster corrected energies          -294.10647829 (Pople, fixed reference)
 Cluster corrected energies          -294.10642351 (Pople, relaxed reference)
 Cluster corrected energies          -294.10647829 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Coefficient of reference function:   C(0) = 0.96999999 (fixed)   0.97009933 (relaxed)   0.96999999 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00052697   -0.00076833   -0.00108759
 Singles      0.00691849   -0.02899495   -0.03206996
 Pairs        0.05536675   -0.70570838   -0.70231410
 Total        1.06281222   -0.73547165   -0.73547165
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -293.28371139
 Nuclear energy                         0.00000000
 Kinetic energy                       204.92633064
 One electron energy                 -521.47839722
 Two electron energy                  227.45921418
 Virial quotient                       -1.43475551
 Correlation energy                    -0.73547165
 !MRCI STATE 6.1 Energy              -294.019183040755

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -294.06537965 (Davidson, fixed reference)
 Cluster corrected energies          -294.06521957 (Davidson, relaxed reference)
 Cluster corrected energies          -294.06537965 (Davidson, rotated reference)

 Cluster corrected energies          -294.06343915 (Pople, fixed reference)
 Cluster corrected energies          -294.06327764 (Pople, relaxed reference)
 Cluster corrected energies          -294.06343915 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       33.90       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       7       91.62       700     1000      520     2100     2140     5102     5101   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *        60.68     44.95     13.74      0.87      0.12      0.62
 REAL TIME  *        71.11 SEC
 DISK USED  *       125.61 MB (local),        1.53 GB (total)
 SF USED    *       716.13 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(4)     =      -294.10841425  AU                              
 SETTING HLSDIAG(5)     =      -294.10841428  AU                              
 SETTING HLSDIAG(6)     =      -294.10841422  AU                              
 SETTING HLSDIAG(7)     =      -294.10841424  AU                              
 SETTING HLSDIAG(8)     =      -294.10841426  AU                              
 SETTING HLSDIAG(9)     =      -294.06537965  AU                              


         HLSDIAG
    -294.1379448
    -294.1379448
    -294.1379447
    -294.1084142
    -294.1084143
    -294.1084142
    -294.1084142
    -294.1084143
    -294.0653796
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Diagonal elements of H will be replaced by values from variable HLSDIAG


   ******************************
   *** Spin-orbit calculation ***
   ******************************


   Spin-orbit matrix elements
   ==========================

 Wavefunction restored from record  5102.2  Symmetry=1  S= 1.0  NSTATE=   3

 Original energies:   -294.092786   -294.092786   -294.092786
 Replaced energies:   -294.137945   -294.137945   -294.137945

 Wavefunction restored from record  5101.2  Symmetry=1  S= 0.0  NSTATE=   6

 Original energies:   -294.059922   -294.059922   -294.059922   -294.059922   -294.059922   -294.019183
 Replaced energies:   -294.108414   -294.108414   -294.108414   -294.108414   -294.108414   -294.065380



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=  -294.13794477

 Wigner-Eckart theorem used for 10 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      60.98
                            0.00       0.00     452.53      -0.00     319.98      -0.00       0.00       0.00       0.00      -0.00

    2   2.1  1.0  1.0       0.00       0.00       0.00      -0.00      -0.00     319.98       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00    -319.98       0.00      -0.00       0.00       0.00       0.00       0.00

    3   3.1  1.0  1.0       0.00       0.00       0.01      -0.00    -319.98       0.00       0.00       0.00       0.00      -0.00
                         -452.53       0.00       0.00       0.00       0.00      -0.00       0.00       0.00       0.00     283.59

    4   1.1  1.0  0.0       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00     319.98      -0.00       0.00       0.00       0.00      -0.00     319.98      -0.00       0.00

    5   2.1  1.0  0.0       0.00      -0.00    -319.98       0.00       0.00       0.00      -0.00      -0.00     319.98       0.00
                         -319.98      -0.00      -0.00      -0.00       0.00       0.00    -319.98       0.00      -0.00    -487.30

    6   3.1  1.0  0.0       0.00     319.98       0.00       0.00       0.00       0.01      -0.00    -319.98       0.00       0.00
                            0.00       0.00       0.00      -0.00      -0.00       0.00       0.00       0.00      -0.00       0.00

    7   1.1  1.0 -1.0       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00       0.00       0.00      60.98
                           -0.00      -0.00      -0.00       0.00     319.98      -0.00      -0.00      -0.00    -452.53       0.00

    8   2.1  1.0 -1.0       0.00       0.00       0.00       0.00      -0.00    -319.98       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00    -319.98      -0.00      -0.00       0.00      -0.00       0.00      -0.00

    9   3.1  1.0 -1.0       0.00       0.00       0.00       0.00     319.98       0.00       0.00       0.00       0.01      -0.00
                           -0.00      -0.00      -0.00       0.00       0.00       0.00     452.53      -0.00      -0.00    -283.59

   10   1.1  0.0  0.0      60.98       0.00      -0.00       0.00       0.00       0.00      60.98       0.00      -0.00    6481.20
                            0.00      -0.00    -283.59      -0.00     487.30      -0.00      -0.00       0.00     283.59       0.00

   11   2.1  0.0  0.0    -362.67      -0.00       0.00       0.00       0.00       0.00    -362.67      -0.00       0.00       0.00
                           -0.00      -0.00    -234.15       0.00    -181.76       0.00       0.00       0.00     234.15      -0.00

   12   3.1  0.0  0.0       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00
                            0.00    -318.48       0.00       0.00      -0.00    -450.41      -0.00     318.48      -0.00      -0.00

   13   4.1  0.0  0.0      -0.00     318.49      -0.00       0.00       0.00       0.00      -0.00     318.49      -0.00       0.00
                           -0.00      -0.00      -0.00    -450.41      -0.00      -0.00       0.00       0.00       0.00      -0.00

   14   5.1  0.0  0.0      -0.00      -0.00    -318.49       0.00       0.00       0.00      -0.00      -0.00    -318.49       0.00
                          318.48       0.00      -0.00      -0.00      -0.00       0.00    -318.48      -0.00       0.00      -0.00

   15   6.1  0.0  0.0     529.76      -0.00       0.00       0.00       0.00       0.00     529.76      -0.00       0.00       0.00
                            0.00      -0.00    -529.76      -0.00    -749.20       0.00      -0.00       0.00     529.76      -0.00


   Nr   State  S   Sz       11         12         13         14         15

    1   1.1  1.0  1.0    -362.67       0.00      -0.00      -0.00     529.76
                            0.00      -0.00       0.00    -318.48      -0.00

    2   2.1  1.0  1.0      -0.00      -0.00     318.49      -0.00      -0.00
                            0.00     318.48       0.00      -0.00       0.00

    3   3.1  1.0  1.0       0.00      -0.00      -0.00    -318.49       0.00
                          234.15      -0.00       0.00       0.00     529.76

    4   1.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00     450.41       0.00       0.00

    5   2.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00
                          181.76       0.00       0.00       0.00     749.20

    6   3.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00
                           -0.00     450.41       0.00      -0.00      -0.00

    7   1.1  1.0 -1.0    -362.67       0.00      -0.00      -0.00     529.76
                           -0.00       0.00      -0.00     318.48       0.00

    8   2.1  1.0 -1.0      -0.00      -0.00     318.49      -0.00      -0.00
                           -0.00    -318.48      -0.00       0.00      -0.00

    9   3.1  1.0 -1.0       0.00      -0.00      -0.00    -318.49       0.00
                         -234.15       0.00      -0.00      -0.00    -529.76

   10   1.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00

   11   2.1  0.0  0.0    6481.20       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00

   12   3.1  0.0  0.0       0.00    6481.21       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00

   13   4.1  0.0  0.0       0.00       0.00    6481.20       0.00       0.00
                           -0.00      -0.00       0.00       0.00       0.00

   14   5.1  0.0  0.0       0.00       0.00       0.00    6481.20       0.00
                           -0.00      -0.00      -0.00       0.00       0.00

   15   6.1  0.0  0.0       0.00       0.00       0.00       0.00   15926.20
                           -0.00      -0.00      -0.00      -0.00       0.00




   Spin-orbit calculation in the basis of symmetry adapted wave functions
   ======================================================================


 >>> Hamiltonian transformed to symmetry adapted basis <<<


  Results for symmetry 1
  ======================

 => Spin-Orbit Matrixblock (CM-1)  (dimension: 15)

    The diagonal matrixelements are shifted by   -294.13794477 a.u.

  State Sym Spin    / Nr.        1           2           3           4           5           6           7           8

    1    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000     452.525      -0.000       0.000       0.000

    2    1  |1 1>+              0.000       0.004       0.000       0.000      -0.000      -0.000       0.000       0.000
                                0.000       0.000       0.000    -452.525       0.000      -0.000      -0.000       0.000

    3    1  |1 1>+              0.000       0.000       0.007       0.000      -0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000    -452.525       0.000

    1    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                                0.000     452.525      -0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 0>               0.000      -0.000      -0.000       0.000       0.004       0.000       0.000       0.000
                             -452.525       0.000      -0.000      -0.000       0.000       0.000       0.000      -0.000

    3    1  |1 0>               0.000      -0.000       0.000       0.000       0.000       0.007       0.000     452.525
                                0.000       0.000       0.000      -0.000      -0.000       0.000       0.000       0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000     452.525      -0.000      -0.000      -0.000       0.000       0.000

    2    1  |1 1>-              0.000       0.000       0.000      -0.000       0.000     452.525       0.000       0.004
                               -0.000       0.000      -0.000      -0.000       0.000      -0.000       0.000       0.000

    3    1  |1 1>-              0.000       0.000       0.000      -0.000    -452.525       0.000       0.000       0.000
                             -452.525       0.000       0.000      -0.000      -0.000      -0.000       0.000       0.000

    1    1  |0 0>              86.244       0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000     487.301      -0.000       0.000      -0.000

    2    1  |0 0>            -512.894      -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000    -181.758       0.000      -0.000      -0.000

    3    1  |0 0>               0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000    -450.406       0.000    -450.405

    4    1  |0 0>              -0.000     450.406      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000    -450.406      -0.000      -0.000      -0.000      -0.000

    5    1  |0 0>              -0.000      -0.000    -450.406       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000      -0.000       0.000     450.406       0.000

    6    1  |0 0>             749.199      -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000    -749.199       0.000       0.000      -0.000

  State Sym Spin    / Nr.        9          10          11          12          13          14          15

    1    1  |1 1>+              0.000      86.244    -512.894       0.000      -0.000      -0.000     749.199
                              452.525       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>+              0.000       0.000      -0.000      -0.000     450.406      -0.000      -0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>+              0.000      -0.000       0.000      -0.000      -0.000    -450.406       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>              -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000      -0.000     450.406       0.000       0.000

    2    1  |1 0>            -452.525       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000    -487.301     181.758       0.000       0.000       0.000     749.199

    3    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000     450.406       0.000      -0.000      -0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000      -0.000       0.000    -450.406      -0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000     450.405       0.000      -0.000       0.000

    3    1  |1 1>-              0.007       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000     401.058     331.137      -0.000       0.000       0.000     749.199

    1    1  |0 0>               0.000    6481.202       0.000       0.000       0.000       0.000       0.000
                             -401.058       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |0 0>               0.000       0.000    6481.195       0.000       0.000       0.000       0.000
                             -331.137      -0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |0 0>               0.000       0.000       0.000    6481.207       0.000       0.000       0.000
                                0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

    4    1  |0 0>               0.000       0.000       0.000       0.000    6481.203       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000    6481.198       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000   15926.205
                             -749.199      -0.000      -0.000      -0.000      -0.000      -0.000       0.000

 => Eigenvalues of spin-orbit matrix in ascending order  (E0 = Emin,ges)
    (symmetry =  1)

    Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
             (au)           (au)        (cm-1)           (au)       (cm-1)        (eV)
    1  -294.14252164    -0.00457686    -1004.51      0.00000000        0.00      0.0000
    2  -294.14000662    -0.00206185     -452.52      0.00251501      551.98      0.0684
    3  -294.14000661    -0.00206184     -452.52      0.00251502      551.98      0.0684
    4  -294.14000661    -0.00206183     -452.52      0.00251503      551.99      0.0684
    5  -294.13618622     0.00175856      385.96      0.00633542     1390.46      0.1724
    6  -294.13618620     0.00175857      385.96      0.00633543     1390.47      0.1724
    7  -294.13618620     0.00175858      385.96      0.00633544     1390.47      0.1724
    8  -294.13618619     0.00175858      385.96      0.00633544     1390.47      0.1724
    9  -294.13618618     0.00175859      385.97      0.00633545     1390.47      0.1724
   10  -294.10811097     0.02983380     6547.76      0.03441067     7552.27      0.9364
   11  -294.10811097     0.02983381     6547.76      0.03441067     7552.27      0.9364
   12  -294.10811094     0.02983383     6547.77      0.03441069     7552.27      0.9364
   13  -294.10811094     0.02983383     6547.77      0.03441070     7552.27      0.9364
   14  -294.10811093     0.02983384     6547.77      0.03441071     7552.28      0.9364
   15  -294.06492648     0.07301829    16025.66      0.07759515    17030.17      2.1115

 => Eigenvectors of spin-orbit matrix columnwise and corresponding to the
    eigenvalues in ascending order (symmetry =  1)

  Basis states          Eigenvectors (columnwise)

 State Sym Spin     / Nr.      1           2           3           4           5           6           7           8

   1    1  |1 1>+          0.57566330 -0.00000000  0.00000000 -0.00000000  0.78412468  0.00000000 -0.21121395 -0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   2    1  |1 1>+         -0.00000000 -0.70710530 -0.00000002  0.00000000 -0.00000000  0.70312702  0.00000001 -0.00000002
                          -0.00000000 -0.00003013 -0.00000000 -0.00000000 -0.00000000  0.01459597  0.00000000 -0.00000000

   3    1  |1 1>+          0.00000000  0.00000002 -0.70710378 -0.00000001  0.00000000  0.00000002  0.00000000  0.70327555
                           0.00000000 -0.00000000  0.00000346  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00250699

   1    1  |1 0>          -0.00000000 -0.00003013 -0.00000000 -0.00000000  0.00000000 -0.01459591 -0.00000000  0.00000000
                           0.00000000  0.70710826  0.00000002 -0.00000000 -0.00000000  0.70312406  0.00000001 -0.00000002

   2    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.57566193 -0.00000000  0.00000000 -0.00000000 -0.57498090  0.00000001 -0.57346437  0.00000000

   3    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000035 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000001 -0.70710528 -0.00000000  0.00000000  0.00000000  0.00000001

   1    1  |1 1>-         -0.00000000 -0.00000000  0.00000346  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00250697
                          -0.00000000 -0.00000002  0.70710978  0.00000001  0.00000000  0.00000002  0.00000000  0.70326954

   2    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000035 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000001  0.70710828 -0.00000000  0.00000000  0.00000000  0.00000001

   3    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.57566048 -0.00000000  0.00000000 -0.00000000 -0.20914617 -0.00000001  0.78468080 -0.00000000

   1    1  |0 0>           0.00000006 -0.00000000  0.00000000  0.00000000 -0.04330185  0.00000000 -0.09448954  0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   2    1  |0 0>           0.00000010  0.00000000  0.00000000  0.00000000  0.09448960  0.00000000 -0.04330191 -0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   3    1  |0 0>           0.00000000  0.00000000  0.00000000 -0.00000013  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   4    1  |0 0>           0.00000000 -0.00000019 -0.00000000 -0.00000000  0.00000000 -0.10391447 -0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00215712 -0.00000000  0.00000000

   5    1  |0 0>           0.00000000 -0.00000000  0.00000036  0.00000000  0.00000000  0.00000000  0.00000000  0.10393629
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00037051

   6    1  |0 0>          -0.07642068 -0.00000000  0.00000000 -0.00000000  0.00000011 -0.00000000 -0.00000012  0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 State Sym Spin     / Nr.      9          10          11          12          13          14          15

   1    1  |1 1>+          0.00000000 -0.08369291 -0.00000000 -0.00000000  0.01406108  0.00000000  0.04412150
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   2    1  |1 1>+         -0.00000000 -0.00000000  0.00000000  0.07349437  0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00012440 -0.00000000  0.00000000  0.00000000

   3    1  |1 1>+         -0.00000001  0.00000000 -0.07349458  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000272  0.00000000  0.00000000  0.00000000 -0.00000000

   1    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00012440  0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.07349433  0.00000000 -0.00000000  0.00000000

   2    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.02966925  0.00000000  0.00000000 -0.07951071  0.00000000  0.04412150

   3    1  |1 0>          -0.00056675  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00001508  0.00000000
                           0.70327830  0.00000000 -0.00000000  0.00000000  0.00000000  0.07349451 -0.00000000

   1    1  |1 1>-          0.00000000  0.00000000 -0.00000272 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000001  0.00000000 -0.07349446  0.00000000 -0.00000000 -0.00000000 -0.00000000

   2    1  |1 1>-         -0.00056674  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00001508  0.00000000
                           0.70327529  0.00000000 -0.00000000  0.00000000  0.00000000  0.07349437  0.00000000

   3    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.05402381  0.00000000 -0.00000000  0.06544965 -0.00000000  0.04412151

   1    1  |0 0>          -0.00000000 -0.00013840 -0.00000000 -0.00000000  0.99458366 -0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   2    1  |0 0>           0.00000000  0.99458365  0.00000002  0.00000000  0.00013840 -0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   3    1  |0 0>          -0.10393680  0.00000000  0.00000000  0.00000000  0.00000000  0.99458388 -0.00000000
                          -0.00008376 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00020409 -0.00000000

   4    1  |0 0>           0.00000000 -0.00000000  0.00000000  0.99458247  0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00168343 -0.00000000  0.00000000  0.00000000

   5    1  |0 0>          -0.00000000 -0.00000002  0.99458389 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00003679 -0.00000000 -0.00000000 -0.00000000  0.00000000

   6    1  |0 0>           0.00000000 -0.00000001  0.00000000  0.00000000 -0.00000000  0.00000000  0.99707566
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000


  No SO block in symmetry 2


 Summary of SO results
 =====================

 Eigenvalues of the spin-orbit matrix
 ....................................

     Nr  Sym         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
                   (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1   1   -294.14252164     -0.00457686    -1004.51      0.00000000        0.00      0.0000
     2   1   -294.14000662     -0.00206185     -452.52      0.00251501      551.98      0.0684
     3   1   -294.14000661     -0.00206184     -452.52      0.00251502      551.98      0.0684
     4   1   -294.14000661     -0.00206183     -452.52      0.00251503      551.99      0.0684
     5   1   -294.13618622      0.00175856      385.96      0.00633542     1390.46      0.1724
     6   1   -294.13618620      0.00175857      385.96      0.00633543     1390.47      0.1724
     7   1   -294.13618620      0.00175858      385.96      0.00633544     1390.47      0.1724
     8   1   -294.13618619      0.00175858      385.96      0.00633544     1390.47      0.1724
     9   1   -294.13618618      0.00175859      385.97      0.00633545     1390.47      0.1724
    10   1   -294.10811097      0.02983380     6547.76      0.03441067     7552.27      0.9364
    11   1   -294.10811097      0.02983381     6547.76      0.03441067     7552.27      0.9364
    12   1   -294.10811094      0.02983383     6547.77      0.03441069     7552.27      0.9364
    13   1   -294.10811094      0.02983383     6547.77      0.03441070     7552.27      0.9364
    14   1   -294.10811093      0.02983384     6547.77      0.03441071     7552.28      0.9364
    15   1   -294.06492648      0.07301829    16025.66      0.07759515    17030.17      2.1115

 E0 =   -294.13794477 is the energy of the lowest zeroth-order state
 E1 =   -294.14252164 is the energy of the lowest SO-state


 Spin-orbit eigenvectors   (columnwise and corresponding to the eigenvalues in ascending order)
 .......................

        Basis states           Eigenvectors (columnwise)

   Total
 Nr Sym  State Sym Spin / Nr.        1           2           3           4           5           6           7           8

  1  1     1    1  |1 1>+       0.57566330 -0.00000000  0.00000000 -0.00000000  0.78412468  0.00000000 -0.21121395 -0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  2  1     2    1  |1 1>+      -0.00000000 -0.70710530 -0.00000002  0.00000000 -0.00000000  0.70312702  0.00000001 -0.00000002
                               -0.00000000 -0.00003013 -0.00000000 -0.00000000 -0.00000000  0.01459597  0.00000000 -0.00000000

  3  1     3    1  |1 1>+       0.00000000  0.00000002 -0.70710378 -0.00000001  0.00000000  0.00000002  0.00000000  0.70327555
                                0.00000000 -0.00000000  0.00000346  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00250699

  4  1     1    1  |1 0>       -0.00000000 -0.00003013 -0.00000000 -0.00000000  0.00000000 -0.01459591 -0.00000000  0.00000000
                                0.00000000  0.70710826  0.00000002 -0.00000000 -0.00000000  0.70312406  0.00000001 -0.00000002

  5  1     2    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.57566193 -0.00000000  0.00000000 -0.00000000 -0.57498090  0.00000001 -0.57346437  0.00000000

  6  1     3    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000035 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000001 -0.70710528 -0.00000000  0.00000000  0.00000000  0.00000001

  7  1     1    1  |1 1>-      -0.00000000 -0.00000000  0.00000346  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00250697
                               -0.00000000 -0.00000002  0.70710978  0.00000001  0.00000000  0.00000002  0.00000000  0.70326954

  8  1     2    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000035 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000001  0.70710828 -0.00000000  0.00000000  0.00000000  0.00000001

  9  1     3    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.57566048 -0.00000000  0.00000000 -0.00000000 -0.20914617 -0.00000001  0.78468080 -0.00000000

 10  1     1    1  |0 0>        0.00000006 -0.00000000  0.00000000  0.00000000 -0.04330185  0.00000000 -0.09448954  0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 11  1     2    1  |0 0>        0.00000010  0.00000000  0.00000000  0.00000000  0.09448960  0.00000000 -0.04330191 -0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 12  1     3    1  |0 0>        0.00000000  0.00000000  0.00000000 -0.00000013  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 13  1     4    1  |0 0>        0.00000000 -0.00000019 -0.00000000 -0.00000000  0.00000000 -0.10391447 -0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00215712 -0.00000000  0.00000000

 14  1     5    1  |0 0>        0.00000000 -0.00000000  0.00000036  0.00000000  0.00000000  0.00000000  0.00000000  0.10393629
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00037051

 15  1     6    1  |0 0>       -0.07642068 -0.00000000  0.00000000 -0.00000000  0.00000011 -0.00000000 -0.00000012  0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.        9          10          11          12          13          14          15

  1  1     1    1  |1 1>+       0.00000000 -0.08369291 -0.00000000 -0.00000000  0.01406108  0.00000000  0.04412150
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  2  1     2    1  |1 1>+      -0.00000000 -0.00000000  0.00000000  0.07349437  0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00012440 -0.00000000  0.00000000  0.00000000

  3  1     3    1  |1 1>+      -0.00000001  0.00000000 -0.07349458  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000272  0.00000000  0.00000000  0.00000000 -0.00000000

  4  1     1    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00012440  0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.07349433  0.00000000 -0.00000000  0.00000000

  5  1     2    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.02966925  0.00000000  0.00000000 -0.07951071  0.00000000  0.04412150

  6  1     3    1  |1 0>       -0.00056675  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00001508  0.00000000
                                0.70327830  0.00000000 -0.00000000  0.00000000  0.00000000  0.07349451 -0.00000000

  7  1     1    1  |1 1>-       0.00000000  0.00000000 -0.00000272 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000001  0.00000000 -0.07349446  0.00000000 -0.00000000 -0.00000000 -0.00000000

  8  1     2    1  |1 1>-      -0.00056674  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00001508  0.00000000
                                0.70327529  0.00000000 -0.00000000  0.00000000  0.00000000  0.07349437  0.00000000

  9  1     3    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.05402381  0.00000000 -0.00000000  0.06544965 -0.00000000  0.04412151

 10  1     1    1  |0 0>       -0.00000000 -0.00013840 -0.00000000 -0.00000000  0.99458366 -0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 11  1     2    1  |0 0>        0.00000000  0.99458365  0.00000002  0.00000000  0.00013840 -0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 12  1     3    1  |0 0>       -0.10393680  0.00000000  0.00000000  0.00000000  0.00000000  0.99458388 -0.00000000
                               -0.00008376 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00020409 -0.00000000

 13  1     4    1  |0 0>        0.00000000 -0.00000000  0.00000000  0.99458247  0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00168343 -0.00000000  0.00000000  0.00000000

 14  1     5    1  |0 0>       -0.00000000 -0.00000002  0.99458389 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00003679 -0.00000000 -0.00000000 -0.00000000  0.00000000

 15  1     6    1  |0 0>        0.00000000 -0.00000001  0.00000000  0.00000000 -0.00000000  0.00000000  0.99707566
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000



 Composition of spin-orbit eigenvectors
 ======================================
   Total
 Nr Sym  State Sym Spin / Nr.      1        2        3        4        5        6        7        8

  1  1     1    1  |1 1>+        33.14%    0.00%    0.00%    0.00%   61.49%    0.00%    4.46%    0.00%
  2  1     2    1  |1 1>+         0.00%   50.00%    0.00%    0.00%    0.00%   49.46%    0.00%    0.00%
  3  1     3    1  |1 1>+         0.00%    0.00%   50.00%    0.00%    0.00%    0.00%    0.00%   49.46%
  4  1     1    1  |1 0>          0.00%   50.00%    0.00%    0.00%    0.00%   49.46%    0.00%    0.00%
  5  1     2    1  |1 0>         33.14%    0.00%    0.00%    0.00%   33.06%    0.00%   32.89%    0.00%
  6  1     3    1  |1 0>          0.00%    0.00%    0.00%   50.00%    0.00%    0.00%    0.00%    0.00%
  7  1     1    1  |1 1>-         0.00%    0.00%   50.00%    0.00%    0.00%    0.00%    0.00%   49.46%
  8  1     2    1  |1 1>-         0.00%    0.00%    0.00%   50.00%    0.00%    0.00%    0.00%    0.00%
  9  1     3    1  |1 1>-        33.14%    0.00%    0.00%    0.00%    4.37%    0.00%   61.57%    0.00%
 10  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.19%    0.00%    0.89%    0.00%
 11  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.89%    0.00%    0.19%    0.00%
 12  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 13  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    1.08%    0.00%    0.00%
 14  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    1.08%
 15  1     6    1  |0 0>          0.58%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.      9       10       11       12       13       14       15

  1  1     1    1  |1 1>+         0.00%    0.70%    0.00%    0.00%    0.02%    0.00%    0.19%
  2  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.54%    0.00%    0.00%    0.00%
  3  1     3    1  |1 1>+         0.00%    0.00%    0.54%    0.00%    0.00%    0.00%    0.00%
  4  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.54%    0.00%    0.00%    0.00%
  5  1     2    1  |1 0>          0.00%    0.09%    0.00%    0.00%    0.63%    0.00%    0.19%
  6  1     3    1  |1 0>         49.46%    0.00%    0.00%    0.00%    0.00%    0.54%    0.00%
  7  1     1    1  |1 1>-         0.00%    0.00%    0.54%    0.00%    0.00%    0.00%    0.00%
  8  1     2    1  |1 1>-        49.46%    0.00%    0.00%    0.00%    0.00%    0.54%    0.00%
  9  1     3    1  |1 1>-         0.00%    0.29%    0.00%    0.00%    0.43%    0.00%    0.19%
 10  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%   98.92%    0.00%    0.00%
 11  1     2    1  |0 0>          0.00%   98.92%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1     3    1  |0 0>          1.08%    0.00%    0.00%    0.00%    0.00%   98.92%    0.00%
 13  1     4    1  |0 0>          0.00%    0.00%    0.00%   98.92%    0.00%    0.00%    0.00%
 14  1     5    1  |0 0>          0.00%    0.00%   98.92%    0.00%    0.00%    0.00%    0.00%
 15  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   99.42%



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       33.90       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       7       91.62       700     1000      520     2100     2140     5102     5101   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *        97.67     36.98     44.95     13.74      0.87      0.12      0.62
 REAL TIME  *       112.14 SEC
 DISK USED  *       125.61 MB (local),        1.53 GB (total)
 SF USED    *       716.13 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCVTZ-PP energy=   -294.064926480647

              CI              CI           MULTI         RHF-SCF
   -294.01918304   -294.09278588   -293.28371139   -293.38236838
 **********************************************************************************************************************************
 Molpro calculation terminated with 1 warning(s)
