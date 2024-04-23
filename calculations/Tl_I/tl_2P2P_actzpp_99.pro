
 Working directory              : /wrk/irikura/molpro.3W3mxrY74G/
 Global scratch directory       : /wrk/irikura/molpro.3W3mxrY74G/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.3W3mxrY74G/

 id        : nistki

 Nodes            nprocs
 pn112695.nist.gov    6
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1042), CPU time= 0.01 sec
 ***,Tl SO-CI
 memory,1500,M;
 
 gprint,orbitals,civector;
 
 symmetry,xyz
 geometry={Tl};
 
 basis=aug-cc-pwCVTZ-PP
 
                                                                                 ! cation orbitals
 {rhf;wf,nelec=20,sym=1,spin=0}
 
 {multi
     closed,6,3
     occ,8,9
     wf,nelec=21,sym=2,spin=1;state,6;
     weight,3[99],3[1]
     expec2,lxx,lyy,lzz;
 }
 table, energy, ll
 title, Energies and &lt;L**2&gt; values
 
 core,0,0
 
 {ci;wf,sym=2,spin=1;state,6; save,5201.2}
 hlsdiag = energd4
 
 table,hlsdiag
 
 {ci;hlsmat,ecp,5201.2;print,vls=0,hls=0}                                        !compute and diagonalize SO matrix
 Commands initialized (847), CPU time= 0.01 sec, 718 directives.
 Default parameters read. Elapsed time= 0.10 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2024.1 linked Wed Jan 31 05:42:09 2024


 **********************************************************************************************************************************
 LABEL *   Tl SO-CI                                                                                                                                                      
  (32 PROC) 64 bit mpp version                                                           DATE: 16-Apr-24          TIME: 10:15:45  
 **********************************************************************************************************************************

 SHA1:             675817fde4514a4a933b69e420913a90cee4ef91
 **********************************************************************************************************************************

 Memory per process:      1500 MW
 Total memory per node:   9000 MW

 GA preallocation disabled
 GA check disabled

 Variable memory set to 1500.0 MW


 ZSYMEL=XYZ

 SETTING BASIS          =    AUG-CC-PWCVTZ-PP


 Recomputing integrals since basis changed


 Using spherical harmonics

 Library entry Tl   ECP ECP60MDF                 selected for group  1
 Library entry TL     S aug-cc-pwCVTZ-PP     selected for orbital group  1
 Library entry TL     P aug-cc-pwCVTZ-PP     selected for orbital group  1
 Library entry TL     D aug-cc-pwCVTZ-PP     selected for orbital group  1
 Library entry TL     F aug-cc-pwCVTZ-PP     selected for orbital group  1
 Library entry TL     G aug-cc-pwCVTZ-PP     selected for orbital group  1


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

   1  TL     21.00    0.000000000    0.000000000    0.000000000

 NUCLEAR CHARGE:                   21
 NUMBER OF PRIMITIVE AOS:         178
 NUMBER OF SYMMETRY AOS:          149
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

         1 0.290E-04 0.259E-02 0.126E-01 0.126E-01 0.126E-01 0.126E-01 0.126E-01 0.126E-01
         2 0.944E-02 0.944E-02 0.944E-02 0.148E-01 0.148E-01 0.148E-01 0.795E-01 0.795E-01


 Contracted 2-electron integrals neglected if value below      1.0D-12
 AO integral compression algorithm  1   Integral accuracy      1.0D-12

     15.991 MB (compressed) written to integral file ( 18.2%)

     Node minimum: 2.621 MB, node maximum: 2.884 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:     922392.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:     922392      RECORD LENGTH: 524288

 Memory used in sort:       1.48 MW

 SORT1 READ    11031004. AND WROTE      179214. INTEGRALS IN      1 RECORDS. CPU TIME:     0.05 SEC, REAL TIME:     0.05 SEC
 SORT2 READ     1100136. AND WROTE     5533081. INTEGRALS IN     60 RECORDS. CPU TIME:     0.03 SEC, REAL TIME:     0.04 SEC

 Node minimum:      920824.  Node maximum:      925041. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      19       28.85       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         0.74      0.56
 REAL TIME  *         1.48 SEC
 DISK USED  *        29.19 MB (local),      206.79 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 Program * Restricted Hartree-Fock

 Orbital guess generated from atomic densities.

 Initial occupancy:   7   3

 NELEC=   20   SYM=1   MS2= 0   THRE=1.0D-08   THRD=3.2D-06   THRG=3.2D-06  HFMA2=F  DIIS_START=2   DIIS_MAX=10   DIIS_INCORE=F

 Level shifts:    0.00 (CLOSED)    0.00 (OPEN)    0.30 (GAP_MIN)

 ITER           ETOT              DE          GRAD        DDIFF     DIIS  NEXP   TIME(IT)  TIME(TOT)  DIAG
   1     -171.32585512    -171.32585512     0.00D+00     0.13D+00     0     0       0.00      0.01    start
   2     -171.33066991      -0.00481479     0.25D-02     0.68D-02     1     0       0.01      0.02    diag
   3     -171.33113511      -0.00046520     0.14D-02     0.14D-02     2     0       0.00      0.02    diag
   4     -171.33119635      -0.00006124     0.22D-03     0.98D-03     3     0       0.01      0.03    diag
   5     -171.33119885      -0.00000250     0.50D-04     0.20D-03     4     0       0.00      0.03    diag
   6     -171.33119886      -0.00000001     0.41D-05     0.15D-04     5     0       0.01      0.04    diag
   7     -171.33119886      -0.00000000     0.22D-06     0.13D-05     6     0       0.00      0.04    diag
   8     -171.33119886       0.00000000     0.13D-07     0.47D-07     0     0       0.01      0.05    fixocc

 Final occupancy:   7   3

 !RHF STATE 1.1 Energy               -171.331198862995
  RHF One-electron energy            -295.976713623751
  RHF Two-electron energy             124.645514760756
  RHF Kinetic energy                   56.457737189084
  RHF Nuclear energy                    0.000000000000
  RHF Virial quotient                  -3.034680583977

 !RHF STATE 1.1 Dipole moment           0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 ELECTRON ORBITALS
 =================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -5.91018     1  1  s    0.99814
    2.1     2.00000    -1.10792     1  1  d2-  0.70827    1  1  d1+  0.59737    1  1  d1- -0.34331
    3.1     2.00000    -1.10792     1  1  d2+  0.98902
    4.1     2.00000    -1.10792     1  1  d2-  0.68149    1  1  d1+ -0.51368    1  1  d1-  0.52328
    5.1     2.00000    -1.10792     1  1  d0   1.00013
    6.1     2.00000    -1.10792     1  1  d1+  0.61239    1  1  d1-  0.78027
    7.1     2.00000    -0.68793     1  2  s    1.05909
    1.2     2.00000    -3.73505     1  1  px   0.98437
    2.2     2.00000    -3.73505     1  1  py   0.97462
    3.2     2.00000    -3.73505     1  1  pz   0.98884


 HOMO      7.1    -0.687926 =     -18.7194eV
 LUMO      4.2    -0.176439 =      -4.8012eV
 LUMO-HOMO         0.511487 =      13.9183eV

 Orbitals saved in record  2100.2


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      19       28.85       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    

              2       4        0.46       700     1000      520     2100   
                                         GEOM     BASIS   MCVARS     RHF  

 PROGRAMS   *        TOTAL   RHF-SCF       INT
 CPU TIMES  *         0.79      0.05      0.56
 REAL TIME  *         1.75 SEC
 DISK USED  *        29.66 MB (local),      209.63 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of closed-shell orbitals:   9 (    6    3)
 Number of active  orbitals:        8 (    2    6)
 Number of external orbitals:      79 (   39   40)

 State symmetry 1

 Number of active electrons:   3    Spin symmetry=Doublet   Space symmetry=2
 Number of states:             6
 Number of CSFs:              94   (120 determinants, 224 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  
 *** IN SYMMETRY 1 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.618D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.203D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.700D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.813D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.601D+00 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 3 5 6 2 4 1 1 2 6   4 3 5 1 2 6 4 3 5 1   2 3 5 4 6 812 71415  131011 9 2 3 5 4 6 1
                                        2 6 3 4 5 1 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.162D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.239D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.124D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.162D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.162D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.241D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  9 SYMMETRY CONTAMINATION OF 0.241D-03 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 2 3 3 1 2 3 1 2 3   1 2 6 810 4 5 7 9 3   1 2 810 6 7 9 5 4 8  10 7 9 5 4 6 3 1 2 4
                                        5 7 9 810 6 1 2 3

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.33000   0.33000   0.33000   0.00333   0.00333   0.00333
 
 Number of orbital rotations:  702  ( 30 closed/active, 354 closed/virtual, 0 active/active, 318 active/virtual )
 Total number of variables:    1422
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1   10    9    0   -171.51845509    -171.53224012   -0.01378503    0.07805210 0.00016740 0.00000000  0.16E+01      0.36
   2    8    7    0   -171.53185690    -171.53188480   -0.00002789    0.00318874 0.00000460 0.00000000  0.72E-01      0.72
   3   17   17    0   -171.53188480    -171.53188480   -0.00000000    0.00000261 0.00000000 0.00000000  0.25E-04      1.13
   4    2    2    0   -171.53188480    -171.53188480    0.00000000    0.00000001 0.00000000 0.00000000  0.35E-07      1.30

 CONVERGENCE REACHED!  Final gradient:    0.00000000 ( 0.24E-08)
                       Final energy:   -171.53188480
 
 Results for state 1.2
 =====================
 !MCSCF STATE 1.2 Energy                      -171.534631242275
 Nuclear energy                                  0.00000000
 Kinetic energy                                 56.60250664
 One electron energy                          -301.32692189
 Two electron energy                           129.79229064
 Virial ratio                                    4.03051298
 
 !MCSCF STATE 1.2 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.2
 =====================
 !MCSCF STATE 2.2 Energy                      -171.534631242247
 Nuclear energy                                  0.00000000
 Kinetic energy                                 56.60250664
 One electron energy                          -301.32692188
 Two electron energy                           129.79229064
 Virial ratio                                    4.03051298
 
 !MCSCF STATE 2.2 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.2
 =====================
 !MCSCF STATE 3.2 Energy                      -171.534631242227
 Nuclear energy                                  0.00000000
 Kinetic energy                                 56.60250664
 One electron energy                          -301.32692188
 Two electron energy                           129.79229064
 Virial ratio                                    4.03051298
 
 !MCSCF STATE 3.2 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.2
 =====================
 !MCSCF STATE 4.2 Energy                      -171.259986961496
 Nuclear energy                                  0.00000000
 Kinetic energy                                 57.13325789
 One electron energy                          -301.31341342
 Two electron energy                           130.05342646
 Virial ratio                                    3.99755332
 
 !MCSCF STATE 4.2 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.2
 =====================
 !MCSCF STATE 5.2 Energy                      -171.259986958935
 Nuclear energy                                  0.00000000
 Kinetic energy                                 57.13325790
 One electron energy                          -301.31341344
 Two electron energy                           130.05342648
 Virial ratio                                    3.99755332
 
 !MCSCF STATE 5.2 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.2
 =====================
 !MCSCF STATE 6.2 Energy                      -171.259986956332
 Nuclear energy                                  0.00000000
 Kinetic energy                                 57.13325791
 One electron energy                          -301.31341346
 Two electron energy                           130.05342650
 Virial ratio                                    3.99755332
 
 !MCSCF STATE 6.2 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 !MCSCF expec                      <1.2|LXLX|1.2>     1.000000000000
 !MCSCF expec                      <2.2|LXLX|2.2>     0.000000000000
 !MCSCF expec                      <3.2|LXLX|3.2>     0.999999999960
 !MCSCF expec                      <4.2|LXLX|4.2>     1.000000000000
 !MCSCF expec                      <5.2|LXLX|5.2>     0.000000000000
 !MCSCF expec                      <6.2|LXLX|6.2>     1.000000000000
 
 !MCSCF expec                      <1.2|LYLY|1.2>     0.999999999995
 !MCSCF expec                      <2.2|LYLY|2.2>     1.000000000000
 !MCSCF expec                      <3.2|LYLY|3.2>     0.000000000045
 !MCSCF expec                      <4.2|LYLY|4.2>     0.000000000000
 !MCSCF expec                      <5.2|LYLY|5.2>     1.000000000000
 !MCSCF expec                      <6.2|LYLY|6.2>     1.000000000000
 
 !MCSCF expec                      <1.2|LZLZ|1.2>     0.000000000005
 !MCSCF expec                      <2.2|LZLZ|2.2>     1.000000000000
 !MCSCF expec                      <3.2|LZLZ|3.2>     0.999999999995
 !MCSCF expec                      <4.2|LZLZ|4.2>     1.000000000000
 !MCSCF expec                      <5.2|LZLZ|5.2>     1.000000000000
 !MCSCF expec                      <6.2|LZLZ|6.2>     0.000000000000
 
 !MCSCF expec                      <1.2|L**2|1.2>     2.000000000000
 !MCSCF expec                      <2.2|L**2|2.2>     2.000000000000
 !MCSCF expec                      <3.2|L**2|3.2>     2.000000000000
 !MCSCF expec                      <4.2|L**2|4.2>     2.000000000000
 !MCSCF expec                      <5.2|L**2|5.2>     2.000000000000
 !MCSCF expec                      <6.2|L**2|6.2>     2.000000000000
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 3 5 6 2 4 1 1 1 3   5 2 6 4 2 4 6 3 5 1   2 4 5 3 6 7 812 911  14151310 2 4 6 3 5 1
                                        3 5 6 4 2 1 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 1 2 1 3 2 2 1 3 3   1 2 6 810 5 4 9 7 3   1 2 810 7 9 6 5 4 7   9 810 5 4 6 3 1 2 5
                                        4 6 7 9 810 2 1 3
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -5.64769     1  1  s    0.99988
    2.1     2.00000    -0.84560     1  1  d2-  0.99999
    3.1     2.00000    -0.84560     1  1  d2+  0.99999
    4.1     2.00000    -0.84560     1  1  d1-  0.99999
    5.1     2.00000    -0.84560     1  1  d0   0.99999
    6.1     2.00000    -0.84560     1  1  d1+  0.99999
    7.1     1.94597    -0.44412     1  2  s    0.99872
    8.1     0.00431     0.37016     1  2  s   -1.66797    1  3  s   -1.39559    1  4  s    1.17376    1  5  s    1.68692
    1.2     2.00000    -3.47276     1  1  pz   1.00002
    2.2     2.00000    -3.47276     1  1  px   1.00002
    3.2     2.00000    -3.47276     1  1  py   1.00002
    4.2     0.34155    -0.00113     1  2  px   0.96372
    5.2     0.34155    -0.00113     1  2  pz   0.96372
    6.2     0.34155    -0.00113     1  2  py   0.96372
    7.2     0.00835     0.29918     1  2  py  -1.18660    1  3  py  -0.58090    1  4  py   1.54958
    8.2     0.00835     0.29918     1  2  px  -1.18660    1  3  px  -0.58090    1  4  px   1.54958
    9.2     0.00835     0.29918     1  2  pz  -1.18660    1  3  pz  -0.58090    1  4  pz   1.54958
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 2
 =============================
 
 20 0a0000      0.98560116      0.00000020      0.00000223     -0.00000000     -0.00000000     -0.02476479
 20 a00000     -0.00000020      0.98560116     -0.00000020     -0.00000000     -0.02476479      0.00000000
 20 00a000     -0.00000223      0.00000020      0.98560116     -0.02476479      0.00000000      0.00000000
 20 000a00     -0.00000005      0.00000000      0.02010642      0.97617294     -0.00000013     -0.00000011
 20 0000a0     -0.00000000      0.02010642     -0.00000000      0.00000013      0.97617294     -0.00000003
 20 00000a      0.02010642      0.00000000      0.00000005      0.00000011      0.00000003      0.97617294
 ab 0a0000     -0.00983349     -0.00000000     -0.00000002     -0.00000001     -0.00000000     -0.09227897
 ab a00000      0.00000000     -0.00983349      0.00000000     -0.00000001     -0.09227897      0.00000000
 ab 00a000      0.00000002     -0.00000000     -0.00983349     -0.09227897      0.00000001      0.00000001
 00 a20000      0.00000002     -0.08393615      0.00000002      0.00000000      0.01254302     -0.00000000
 00 02a000      0.00000019     -0.00000002     -0.08393615      0.01254302     -0.00000000     -0.00000000
 00 2a0000     -0.08393615     -0.00000002     -0.00000019      0.00000000      0.00000000      0.01254302
 00 20a000      0.00000019     -0.00000002     -0.08393615      0.01254302     -0.00000000     -0.00000000
 00 0a2000     -0.08393615     -0.00000002     -0.00000019      0.00000000      0.00000000      0.01254302
 00 a02000      0.00000002     -0.08393615      0.00000002      0.00000000      0.01254302     -0.00000000
 00 0200a0     -0.00000000      0.00163296     -0.00000000     -0.00000001     -0.08322255      0.00000000
 00 020a00     -0.00000000      0.00000000      0.00163296     -0.08322255      0.00000001      0.00000001
 00 20000a      0.00163296      0.00000000      0.00000000     -0.00000001     -0.00000000     -0.08322255
 00 200a00     -0.00000000      0.00000000      0.00163296     -0.08322255      0.00000001      0.00000001
 00 00200a      0.00163296      0.00000000      0.00000000     -0.00000001     -0.00000000     -0.08322255
 00 0020a0     -0.00000000      0.00163296     -0.00000000     -0.00000001     -0.08322255      0.00000000
 00 02000a     -0.03855643     -0.00000001     -0.00000009     -0.00000001     -0.00000000     -0.07585787
 00 2000a0      0.00000001     -0.03855643      0.00000001     -0.00000001     -0.07585787      0.00000000
 00 002a00      0.00000009     -0.00000001     -0.03855643     -0.07585787      0.00000001      0.00000001
 aa 0b0000      0.02106248      0.00000000      0.00000005      0.00000001      0.00000000      0.07356625
 aa b00000     -0.00000000      0.02106248     -0.00000000      0.00000001      0.07356625     -0.00000000
 aa 00b000     -0.00000005      0.00000000      0.02106248      0.07356625     -0.00000001     -0.00000001
 
 Energy:     -171.53463124   -171.53463124   -171.53463124   -171.25998696   -171.25998696   -171.25998696
 


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       37.18       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       5        0.74       700     1000      520     2100     2140   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF   

 PROGRAMS   *        TOTAL     MULTI   RHF-SCF       INT
 CPU TIMES  *         2.00      1.21      0.05      0.56
 REAL TIME  *         3.24 SEC
 DISK USED  *        38.00 MB (local),      259.69 MB (total)
 SF USED    *        22.37 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

         ENERGY     LL
    -171.5346312   2.0
    -171.5346312   2.0
    -171.5346312   2.0
    -171.2599870   2.0
    -171.2599870   2.0
    -171.2599870   2.0
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 6  Roots:    1   2   3   4   5   6
 Number of reference states: 6  Roots:    1   2   3   4   5   6

 Reference symmetry:                   2   Doublet 
 Number of electrons:                 21
 Maximum number of shells:             5
 Maximum number of spin couplings:    42

 Reference space:       68 conf       94 CSFs
 N elec internal:    25186 conf   106386 CSFs
 N-1 el internal:    12969 conf    77473 CSFs
 N-2 el internal:     3392 conf    24010 CSFs

 Number of electrons in valence space:                     21
 Maximum number of open shell orbitals in reference space:  3
 Maximum number of open shell orbitals in internal spaces:  9


 Number of closed-shell orbitals:   9 (   6   3 )
 Number of active  orbitals:        8 (   2   6 )
 Number of external orbitals:      79 (  39  40 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Valence orbitals related to previous ones by unitary transformation. Operators transformed.


 Number of p-space configurations:   6

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -171.53463124
     2      -171.53463124
     3      -171.53463124
     4      -171.25998696
     5      -171.25998696
     6      -171.25998696

 Number of blocks in overlap matrix:   526   Smallest eigenvalue:  0.17D-04
 Number of N-2 electron functions:    1366
 Number of N-1 electron functions:   77473

 Number of internal configurations:                53272
 Number of singly external configurations:       3060250
 Number of doubly external configurations:       2133414
 Total number of contracted configurations:      5246936
 Total number of uncontracted configurations:   40457792

 Diagonal Coupling coefficients finished.               Storage:  22147932 words, CPU-Time:     44.40 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   1121673 words, CPU-time:      0.09 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -171.53463124     0.00000000    -0.72767990  0.56D-01  0.93D-01    63.62
    1     2     2     1.00000000     0.00000000  -171.53463124    -0.00000000    -0.72779550  0.56D-01  0.93D-01    63.62
    1     3     3     1.00000000     0.00000000  -171.53463124    -0.00000000    -0.72779083  0.56D-01  0.93D-01    63.62
    1     4     4     1.00000000     0.00000000  -171.25998696     0.00000000    -0.76776141  0.80D-01  0.96D-01    63.62
    1     5     5     1.00000000     0.00000000  -171.25998696    -0.00000000    -0.76776349  0.80D-01  0.96D-01    63.62
    1     6     6     1.00000000     0.00000000  -171.25998696     0.00000000    -0.76782940  0.80D-01  0.96D-01    63.62
    2     1     1     1.08741273    -0.56925778  -172.10388903    -0.56925778    -0.01730494  0.25D-02  0.12D-02   517.86
    2     2     2     1.08741605    -0.56925424  -172.10388548    -0.56925424    -0.01730934  0.25D-02  0.12D-02   517.86
    2     3     3     1.08735709    -0.56923882  -172.10387006    -0.56923882    -0.01732556  0.25D-02  0.13D-02   517.86
    2     4     4     1.10340966    -0.60341780  -171.86340476    -0.60341780    -0.02757967  0.91D-02  0.17D-02   517.86
    2     5     5     1.10340503    -0.60337984  -171.86336680    -0.60337984    -0.02762573  0.91D-02  0.17D-02   517.86
    2     6     6     1.10340451    -0.60337943  -171.86336639    -0.60337943    -0.02762611  0.91D-02  0.17D-02   517.86
    3     1     1     1.08160921    -0.58502137  -172.11965262    -0.01576359    -0.00029061  0.26D-04  0.31D-04   968.74
    3     2     2     1.08162822    -0.58502046  -172.11965170    -0.01576622    -0.00029152  0.26D-04  0.31D-04   968.74
    3     3     3     1.08162804    -0.58502037  -172.11965161    -0.01578155    -0.00029160  0.26D-04  0.31D-04   968.74
    3     4     4     1.11888511    -0.63098685  -171.89097381    -0.02756905    -0.00144779  0.49D-03  0.12D-03   968.74
    3     5     5     1.11886902    -0.63098522  -171.89097218    -0.02760539    -0.00144892  0.49D-03  0.12D-03   968.74
    3     6     6     1.11886893    -0.63098520  -171.89097216    -0.02760577    -0.00144894  0.49D-03  0.12D-03   968.74
    4     1     1     1.08200419    -0.58530059  -172.11993183    -0.00027921    -0.00001022  0.22D-05  0.10D-05  1417.99
    4     2     2     1.08200684    -0.58530053  -172.11993177    -0.00028007    -0.00001026  0.22D-05  0.10D-05  1417.99
    4     3     3     1.08200679    -0.58530052  -172.11993177    -0.00028015    -0.00001026  0.22D-05  0.10D-05  1417.99
    4     4     4     1.13057832    -0.63268838  -171.89267534    -0.00170153    -0.00010926  0.33D-04  0.95D-05  1417.99
    4     5     5     1.13058340    -0.63268830  -171.89267525    -0.00170307    -0.00010937  0.33D-04  0.94D-05  1417.99
    4     6     6     1.13058342    -0.63268829  -171.89267525    -0.00170309    -0.00010937  0.33D-04  0.94D-05  1417.99
    5     1     1     1.08209070    -0.58531169  -172.11994293    -0.00001110    -0.00000050  0.56D-07  0.72D-07  1867.44
    5     2     2     1.08209058    -0.58531168  -172.11994293    -0.00001116    -0.00000050  0.56D-07  0.72D-07  1867.44
    5     3     3     1.08209056    -0.58531168  -172.11994293    -0.00001116    -0.00000050  0.56D-07  0.72D-07  1867.44
    5     4     4     1.13313740    -0.63280749  -171.89279445    -0.00011911    -0.00000803  0.40D-05  0.55D-06  1867.44
    5     5     5     1.13313608    -0.63280748  -171.89279444    -0.00011919    -0.00000804  0.40D-05  0.55D-06  1867.44
    5     6     6     1.13313608    -0.63280748  -171.89279444    -0.00011919    -0.00000804  0.40D-05  0.55D-06  1867.44
    6     1     1     1.08208677    -0.58531225  -172.11994349    -0.00000056    -0.00000003  0.30D-08  0.39D-08  2314.48
    6     2     2     1.08208675    -0.58531224  -172.11994349    -0.00000056    -0.00000003  0.31D-08  0.39D-08  2314.48
    6     3     3     1.08208674    -0.58531224  -172.11994349    -0.00000056    -0.00000003  0.31D-08  0.39D-08  2314.48
    6     4     4     1.13361370    -0.63281712  -171.89280408    -0.00000963    -0.00000084  0.27D-06  0.64D-07  2314.48
    6     5     5     1.13361416    -0.63281712  -171.89280408    -0.00000964    -0.00000084  0.27D-06  0.65D-07  2314.48
    6     6     6     1.13361369    -0.63281712  -171.89280408    -0.00000964    -0.00000084  0.27D-06  0.64D-07  2314.48
    7     1     1     1.08208678    -0.58531225  -172.11994349    -0.00000000    -0.00000003  0.30D-08  0.39D-08  2593.79
    7     2     2     1.08208676    -0.58531224  -172.11994349    -0.00000000    -0.00000003  0.31D-08  0.39D-08  2593.79
    7     3     3     1.08208675    -0.58531224  -172.11994349    -0.00000000    -0.00000003  0.31D-08  0.39D-08  2593.79
    7     4     4     1.13380692    -0.63281807  -171.89280503    -0.00000095    -0.00000003  0.53D-08  0.34D-08  2593.79
    7     5     5     1.13380693    -0.63281807  -171.89280503    -0.00000095    -0.00000003  0.53D-08  0.34D-08  2593.79
    7     6     6     1.13380692    -0.63281807  -171.89280503    -0.00000095    -0.00000003  0.53D-08  0.34D-08  2593.79


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   2.5%
 S   0.6%  58.1%
 P   0.4%  25.4%   9.8%

 Initialization:   1.7%
 Other:            1.4%

 Total CPU:     2593.8 seconds
 =====================================



 Wavefunction saved on  5201.2

 Reference coefficients greater than 0.0500000
 =============================================
 2222222022200/000           0.0000061   0.9482264  -0.0000001   0.0000000   0.0003880   0.0129869
 222222202220/0000           0.9481897  -0.0000061  -0.0083463   0.0000019   0.0129868  -0.0003880
 22222220222/00000           0.0083463  -0.0000000   0.9481897   0.0129927  -0.0000019   0.0000000
 222222202220000/0          -0.0001409   0.0000000  -0.0160100   0.9186902  -0.0001325   0.0000032
 22222220222000/00          -0.0000001  -0.0160106   0.0000000   0.0000008   0.0274352   0.9182805
 2222222022200000/          -0.0160100   0.0000001   0.0001409   0.0001326   0.9182805  -0.0274352
 222222//222\00000           0.0001916  -0.0000000   0.0217680   0.0748782  -0.0000108   0.0000003
 222222//2220\0000           0.0217681  -0.0000001  -0.0001916   0.0000108   0.0748451  -0.0022361
 222222//22200\000           0.0000001   0.0217689  -0.0000000   0.0000001   0.0022361   0.0748451
 2222220022202/000          -0.0000004  -0.0699069   0.0000000   0.0000000   0.0002263   0.0075747
 2222220022220/000          -0.0000004  -0.0699069   0.0000000   0.0000000   0.0002263   0.0075747
 22222200222/20000          -0.0006153   0.0000000  -0.0699042   0.0075780  -0.0000011   0.0000000
 22222200222/02000          -0.0006153   0.0000000  -0.0699042   0.0075781  -0.0000011   0.0000000
 222222002220/2000          -0.0699042   0.0000004   0.0006153   0.0000011   0.0075746  -0.0002263
 222222002222/0000          -0.0699042   0.0000004   0.0006153   0.0000011   0.0075746  -0.0002263
 222222/\222/00000          -0.0002040   0.0000000  -0.0231747  -0.0689499   0.0000099  -0.0000002
 222222/\22200/000          -0.0000001  -0.0231756   0.0000000  -0.0000001  -0.0020591  -0.0689192
 222222/\2220/0000          -0.0231746   0.0000001   0.0002040  -0.0000099  -0.0689190   0.0020591
 222222002220200/0           0.0000380  -0.0000000   0.0043143  -0.0664460   0.0000096  -0.0000002
 222222002220020/0           0.0000380   0.0000000   0.0043143  -0.0664460   0.0000096  -0.0000002
 22222200222020/00           0.0000000   0.0043144  -0.0000000  -0.0000001  -0.0019843  -0.0664163
 22222200222200/00           0.0000000   0.0043144  -0.0000000  -0.0000001  -0.0019843  -0.0664163
 2222220022220000/           0.0043143  -0.0000000  -0.0000380  -0.0000096  -0.0664163   0.0019843
 2222220022200200/           0.0043143  -0.0000000  -0.0000380  -0.0000096  -0.0664163   0.0019843
 222222002222000/0          -0.0002530   0.0000000  -0.0287409  -0.0614712   0.0000089  -0.0000002
 22222200222002/00          -0.0000002  -0.0287420   0.0000000  -0.0000001  -0.0018357  -0.0614438
 2222220022202000/          -0.0287409   0.0000002   0.0002530  -0.0000089  -0.0614438   0.0018357

 Coefficients of singly external configurations greater than 0.0500000
 =====================================================================

 22222220222000000  21.2    -0.0000334  -0.0000000  -0.0037938   0.1633776  -0.0000236   0.0000006
 22222220222000000  20.2    -0.0037940   0.0000000   0.0000334   0.0000236   0.1633048  -0.0048790
 22222220222000000  22.2    -0.0000000  -0.0037940   0.0000000   0.0000001   0.0048790   0.1633047
 22222220222000000  11.2     0.0000249   0.0000000   0.0028310  -0.1309215   0.0000189  -0.0000005
 22222220222000000  10.2     0.0028309  -0.0000000  -0.0000249  -0.0000189  -0.1308632   0.0039098
 22222220222000000  12.2     0.0000000   0.0028311  -0.0000000  -0.0000001  -0.0039098  -0.1308631

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.957387    0.008427    0.000006   -0.000000   -0.000303   -0.034424
 2          -0.000006   -0.000000    0.957425   -0.034425    0.000000    0.000000
 3          -0.008427    0.957388   -0.000000    0.000000   -0.034424    0.000303
 4           0.000005    0.037301    0.000000    0.000001    0.934463    0.000135
 5           0.037284   -0.000005    0.001114    0.027906   -0.000135    0.934047
 6          -0.001114    0.000000    0.037284    0.934047    0.000003   -0.027906

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.958041    0.000000    0.000000    0.000017    0.001871   -0.000056
 2           0.000000    0.958041   -0.000000    0.000000    0.000056    0.001871
 3           0.000000   -0.000000    0.958041    0.001871   -0.000017    0.000000
 4           0.000017    0.000000    0.001871    0.935206   -0.000000   -0.000000
 5           0.001871    0.000056   -0.000017   -0.000000    0.935206    0.000000
 6          -0.000056    0.001871    0.000000   -0.000000    0.000000    0.935206

 Energy contributions of internal configurations for state 4
 ===========================================================

   NUMBER        NORM          ECORR1        OCCUPATION

 13609       0.00003261    -1.02091557       22222220222000010               

 Energy contributions of internal configurations for state 5
 ===========================================================

   NUMBER        NORM          ECORR1        OCCUPATION

 13608       0.00003258    -1.02000631       22222220222000001               

 Energy contributions of internal configurations for state 6
 ===========================================================

   NUMBER        NORM          ECORR1        OCCUPATION

 13610       0.00003258    -1.02000700       22222220222000100               


 RESULTS FOR STATE 1.2
 =====================

 Coefficient of reference function:   C(0) = 0.95738749 (fixed)   0.95868578 (relaxed)   0.95804146 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00686049   -0.01240978   -0.47364462
 Singles      0.02509146   -0.10002352   -0.10529082
 Pairs        0.05755848    0.02673650   -0.00637680
 Total        1.08951043   -0.08569681   -0.58531225
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -171.53423705
 Nuclear energy                         0.00000000
 Kinetic energy                        56.78881747
 One electron energy                 -300.93546226
 Two electron energy                  128.81551877
 Virial quotient                       -3.03087740
 Correlation energy                    -0.58570644
 !MRCI STATE 1.2 Energy              -172.119943487619

 Properties without orbital relaxation:

 !MRCI STATE 1.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -172.17237032 (Davidson, fixed reference)
 Cluster corrected energies          -172.17151285 (Davidson, relaxed reference)
 Cluster corrected energies          -172.17237032 (Davidson, rotated reference)

 Cluster corrected energies          -172.17072458 (Pople, fixed reference)
 Cluster corrected energies          -172.16983254 (Pople, relaxed reference)
 Cluster corrected energies          -172.17072458 (Pople, rotated reference)



 RESULTS FOR STATE 2.2
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.95742459 (fixed)   0.95868579 (relaxed)   0.95804147 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00686050   -0.01240979   -0.44910459
 Singles      0.02509145   -0.10002348   -0.10529079
 Pairs        0.05755847   -0.00000017   -0.03091686
 Total        1.08951041   -0.11243344   -0.58531224
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -171.53423705
 Nuclear energy                         0.00000000
 Kinetic energy                        56.78881499
 One electron energy                 -300.93545999
 Two electron energy                  128.81551651
 Virial quotient                       -3.03087753
 Correlation energy                    -0.58570644
 !MRCI STATE 2.2 Energy              -172.119943487242

 Properties without orbital relaxation:

 !MRCI STATE 2.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -172.17237031 (Davidson, fixed reference)
 Cluster corrected energies          -172.17151283 (Davidson, relaxed reference)
 Cluster corrected energies          -172.17237031 (Davidson, rotated reference)

 Cluster corrected energies          -172.17072457 (Pople, fixed reference)
 Cluster corrected energies          -172.16983252 (Pople, relaxed reference)
 Cluster corrected energies          -172.17072457 (Pople, rotated reference)



 RESULTS FOR STATE 3.2
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.95738750 (fixed)   0.95868580 (relaxed)   0.95804147 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00686049   -0.01240979   -0.44888875
 Singles      0.02509143   -0.10002347   -0.10529079
 Pairs        0.05755847   -0.00023535   -0.03113271
 Total        1.08951040   -0.11266860   -0.58531224
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -171.53423705
 Nuclear energy                         0.00000000
 Kinetic energy                        56.78881527
 One electron energy                 -300.93546035
 Two electron energy                  128.81551686
 Virial quotient                       -3.03087752
 Correlation energy                    -0.58570644
 !MRCI STATE 3.2 Energy              -172.119943487197

 Properties without orbital relaxation:

 !MRCI STATE 3.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -172.17237031 (Davidson, fixed reference)
 Cluster corrected energies          -172.17151283 (Davidson, relaxed reference)
 Cluster corrected energies          -172.17237031 (Davidson, rotated reference)

 Cluster corrected energies          -172.17072456 (Pople, fixed reference)
 Cluster corrected energies          -172.16983252 (Pople, relaxed reference)
 Cluster corrected energies          -172.17072456 (Pople, rotated reference)



 RESULTS FOR STATE 4.2
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.93446342 (fixed)   0.93626773 (relaxed)   0.93520571 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00843194   -0.01288664   -0.43063812
 Singles      0.07720071   -0.14570812   -0.17016370
 Pairs        0.05773447   -0.00006838   -0.03201625
 Total        1.14336711   -0.15866313   -0.63281807
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -171.26038115
 Nuclear energy                         0.00000000
 Kinetic energy                        56.96476965
 One electron energy                 -299.81306189
 Two electron energy                  127.92025685
 Virial quotient                       -3.01752831
 Correlation energy                    -0.63242388
 !MRCI STATE 4.2 Energy              -171.892805034157

 Properties without orbital relaxation:

 !MRCI STATE 4.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -171.98347382 (Davidson, fixed reference)
 Cluster corrected energies          -171.98183434 (Davidson, relaxed reference)
 Cluster corrected energies          -171.98347382 (Davidson, rotated reference)

 Cluster corrected energies          -171.98476215 (Pople, fixed reference)
 Cluster corrected energies          -171.98289686 (Pople, relaxed reference)
 Cluster corrected energies          -171.98476215 (Pople, rotated reference)



 RESULTS FOR STATE 5.2
 =====================

 Maximum overlap with reference state  6

 Coefficient of reference function:   C(0) = 0.93404663 (fixed)   0.93626772 (relaxed)   0.93520570 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00843196   -0.01288666   -0.01646711
 Singles      0.07720077   -0.14570818   -0.17016372
 Pairs        0.05773441   -0.47361783   -0.44618724
 Total        1.14336715   -0.63221267   -0.63281807
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -171.26038115
 Nuclear energy                         0.00000000
 Kinetic energy                        56.96476778
 One electron energy                 -299.81306015
 Two electron energy                  127.92025512
 Virial quotient                       -3.01752841
 Correlation energy                    -0.63242388
 !MRCI STATE 5.2 Energy              -171.892805031196

 Properties without orbital relaxation:

 !MRCI STATE 5.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -171.98347384 (Davidson, fixed reference)
 Cluster corrected energies          -171.98183435 (Davidson, relaxed reference)
 Cluster corrected energies          -171.98347384 (Davidson, rotated reference)

 Cluster corrected energies          -171.98476217 (Pople, fixed reference)
 Cluster corrected energies          -171.98289687 (Pople, relaxed reference)
 Cluster corrected energies          -171.98476217 (Pople, rotated reference)



 RESULTS FOR STATE 6.2
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.93404665 (fixed)   0.93626773 (relaxed)   0.93520571 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00843194   -0.01288664   -0.44307376
 Singles      0.07720070   -0.14570811   -0.17016370
 Pairs        0.05773447    0.01415012   -0.01958062
 Total        1.14336712   -0.14444464   -0.63281807
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -171.26038115
 Nuclear energy                         0.00000000
 Kinetic energy                        56.96476963
 One electron energy                 -299.81306171
 Two electron energy                  127.92025668
 Virial quotient                       -3.01752831
 Correlation energy                    -0.63242388
 !MRCI STATE 6.2 Energy              -171.892805031042

 Properties without orbital relaxation:

 !MRCI STATE 6.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -171.98347382 (Davidson, fixed reference)
 Cluster corrected energies          -171.98183433 (Davidson, relaxed reference)
 Cluster corrected energies          -171.98347382 (Davidson, rotated reference)

 Cluster corrected energies          -171.98476214 (Pople, fixed reference)
 Cluster corrected energies          -171.98289685 (Pople, relaxed reference)
 Cluster corrected energies          -171.98476214 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       37.18       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       6      248.68       700     1000      520     2100     2140     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *      2806.66   2804.65      1.21      0.05      0.56
 REAL TIME  *      2836.59 SEC
 DISK USED  *       285.94 MB (local),        1.71 GB (total)
 SF USED    *         2.61 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =      -172.17237032  AU                              
 SETTING HLSDIAG(2)     =      -172.17237031  AU                              
 SETTING HLSDIAG(3)     =      -172.17237031  AU                              
 SETTING HLSDIAG(4)     =      -171.98347382  AU                              
 SETTING HLSDIAG(5)     =      -171.98347384  AU                              
 SETTING HLSDIAG(6)     =      -171.98347382  AU                              


         HLSDIAG
    -172.1723703
    -172.1723703
    -172.1723703
    -171.9834738
    -171.9834738
    -171.9834738
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Diagonal elements of H will be replaced by values from variable HLSDIAG


   ******************************
   *** Spin-orbit calculation ***
   ******************************


   Spin-orbit matrix elements
   ==========================

 Wavefunction restored from record  5201.2  Symmetry=2  S= 0.5  NSTATE=   6

 Original energies:   -172.119943   -172.119943   -172.119943   -171.892805   -171.892805   -171.892805
 Replaced energies:   -172.172370   -172.172370   -172.172370   -171.983474   -171.983474   -171.983474



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=  -172.17237032

 Wigner-Eckart theorem used for  3 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00   -2215.19    2538.08
                           -0.00     -19.50       0.01      -0.02       0.67      22.33       0.00    2215.10       0.00      -0.00

    2   2.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.01      -0.02
                           19.50       0.00    2215.10   -2538.18       0.37      -0.01   -2215.10      -0.00      19.50       0.37

    3   3.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00    2215.19      -0.01       0.00     -22.71
                           -0.01   -2215.10      -0.00       0.00      75.80    2536.95      -0.00     -19.50      -0.00       0.00

    4   4.2  0.5  0.5       0.00       0.00       0.00   41457.99       0.00       0.00   -2538.08       0.02      22.71      -0.00
                            0.02    2538.18      -0.00      -0.00     -86.48   -2894.65       0.00      -0.37      -0.00      -0.00

    5   5.2  0.5  0.5       0.00       0.00       0.00       0.00   41457.99       0.00      22.70      -0.00    2536.95   -2894.65
                           -0.67      -0.37     -75.80      86.48       0.00       0.42      75.78   -2537.05      -0.67      -0.01

    6   6.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00   41457.99      -0.68       0.00     -75.80      86.48
                          -22.33       0.01   -2536.95    2894.65      -0.42      -0.00    2536.95      75.78     -22.33      -0.42

    7   1.2  0.5 -0.5      -0.00       0.00    2215.19   -2538.08      22.70      -0.68       0.00       0.00       0.00       0.00
                           -0.00    2215.10       0.00      -0.00     -75.78   -2536.95       0.00      19.50      -0.01       0.02

    8   2.2  0.5 -0.5      -0.00       0.00      -0.01       0.02      -0.00       0.00       0.00       0.00       0.00       0.00
                        -2215.10       0.00      19.50       0.37    2537.05     -75.78     -19.50      -0.00   -2215.10    2538.18

    9   3.2  0.5 -0.5   -2215.19       0.01       0.00      22.71    2536.95     -75.80       0.00       0.00       0.00       0.00
                           -0.00     -19.50       0.00       0.00       0.67      22.33       0.01    2215.10       0.00      -0.00

   10   4.2  0.5 -0.5    2538.08      -0.02     -22.71      -0.00   -2894.65      86.48       0.00       0.00       0.00   41457.99
                            0.00      -0.37      -0.00       0.00       0.01       0.42      -0.02   -2538.18       0.00       0.00

   11   5.2  0.5 -0.5     -22.70       0.00   -2536.95    2894.65       0.00      -0.00       0.00       0.00       0.00       0.00
                           75.78   -2537.05      -0.67      -0.01       0.00    2895.95       0.67       0.37      75.80     -86.48

   12   6.2  0.5 -0.5       0.68      -0.00      75.80     -86.48       0.00       0.00       0.00       0.00       0.00       0.00
                         2536.95      75.78     -22.33      -0.42   -2895.95      -0.00      22.33      -0.01    2536.95   -2894.65


   Nr   State  S   Sz       11         12

    1   1.2  0.5  0.5     -22.70       0.68
                          -75.78   -2536.95

    2   2.2  0.5  0.5       0.00      -0.00
                         2537.05     -75.78

    3   3.2  0.5  0.5   -2536.95      75.80
                            0.67      22.33

    4   4.2  0.5  0.5    2894.65     -86.48
                            0.01       0.42

    5   5.2  0.5  0.5       0.00       0.00
                           -0.00    2895.95

    6   6.2  0.5  0.5      -0.00       0.00
                        -2895.95       0.00

    7   1.2  0.5 -0.5       0.00       0.00
                           -0.67     -22.33

    8   2.2  0.5 -0.5       0.00       0.00
                           -0.37       0.01

    9   3.2  0.5 -0.5       0.00       0.00
                          -75.80   -2536.95

   10   4.2  0.5 -0.5       0.00       0.00
                           86.48    2894.65

   11   5.2  0.5 -0.5   41457.99       0.00
                           -0.00      -0.42

   12   6.2  0.5 -0.5       0.00   41457.99
                            0.42       0.00


 No symmetry adaption


 Spin-orbit eigenstates   (energies)
 ======================

     Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
              (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1  -172.19543939    -0.02306907    -5063.08      0.00000000        0.00      0.0000
     2  -172.19543939    -0.02306907    -5063.08      0.00000000        0.00      0.0000
     3  -172.16297127     0.00939906     2062.85      0.03246813     7125.93      0.8835
     4  -172.16297127     0.00939906     2062.85      0.03246813     7125.93      0.8835
     5  -172.16297125     0.00939907     2062.86      0.03246814     7125.93      0.8835
     6  -172.16297125     0.00939907     2062.86      0.03246814     7125.93      0.8835
     7  -172.00698082     0.16538950    36298.80      0.18845857    41361.88      5.1282
     8  -172.00698082     0.16538950    36298.80      0.18845857    41361.88      5.1282
     9  -171.96958485     0.20278547    44506.27      0.22585454    49569.34      6.1458
    10  -171.96958485     0.20278547    44506.27      0.22585454    49569.34      6.1458
    11  -171.96958484     0.20278549    44506.27      0.22585455    49569.35      6.1458
    12  -171.96958484     0.20278549    44506.27      0.22585455    49569.35      6.1458


 Eigenvectors of spin-orbit matrix
 =================================

  Basis states          Eigenvectors (columnwise)

   Nr   State  S   Sz        1             2             3             4             5             6             7             8

    1    1.2  0.5  0.5   0.561993024   0.111348040   0.812266248  -0.009715021  -0.064759947  -0.014461039   0.070361329  -0.012173414
                         0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000

    2    2.2  0.5  0.5  -0.093402125   0.471416852  -0.003746891  -0.318127472   0.008440048  -0.034536641   0.001818425   0.010510354
                         0.055662424  -0.306884816  -0.002114906  -0.337184828  -0.165901372   0.648513270   0.011417041   0.069676346

    3    3.2  0.5  0.5  -0.060611444   0.305916565   0.000870594   0.253630279  -0.186052291   0.711696319  -0.012036830  -0.069571890
                        -0.093402113   0.471435750  -0.002922710  -0.239343336  -0.009192921   0.037941661   0.001818949   0.010510687

    4    4.2  0.5  0.5   0.006927488  -0.038251191   0.000488379   0.015216240  -0.011200607   0.042704333  -0.091520753  -0.559047566
                         0.011640884  -0.058755934  -0.000175405  -0.014364067  -0.000551717   0.002277083   0.014593468   0.084327495

    5    5.2  0.5  0.5  -0.069731031  -0.015284647   0.048718869  -0.001288962  -0.003769836  -0.001311337   0.565555743  -0.090114259
                        -0.000311236   0.001667441  -0.000002221  -0.000475754  -0.000292348   0.001141721   0.002604461   0.015936937

    6    6.2  0.5  0.5   0.013729423  -0.058325569  -0.001680221  -0.019063032   0.000619387  -0.002034574  -0.002296912   0.087057538
                        -0.006931401   0.038216485  -0.000126920  -0.020231570  -0.009952599   0.038905030   0.091565395   0.558807457

    7    1.2  0.5 -0.5   0.060611467  -0.305916671   0.007065788   0.590765708  -0.014441003   0.064670221   0.012036822   0.069571838
                         0.093405760  -0.471435201  -0.006667553  -0.557469583  -0.000760980   0.003407848  -0.001818496  -0.010510757

    8    2.2  0.5 -0.5  -0.000822130   0.004149591  -0.000038760  -0.001273646  -0.000362213   0.000301839   0.000016010   0.000092514
                         0.562504633   0.108651016  -0.463571671   0.004109726  -0.649432144  -0.166115648   0.070464604  -0.011560577

    9    3.2  0.5 -0.5   0.561993426   0.111344968  -0.348731346   0.002639084   0.712706832   0.186278266   0.070361371  -0.012173490
                        -0.000000388   0.000001966  -0.000005748   0.001528202  -0.000437648   0.000610406  -0.000000077  -0.000000447

   10    4.2  0.5 -0.5  -0.070109932  -0.013536033  -0.020925114   0.000475583   0.042764991   0.011214121   0.565371816  -0.092673852
                        -0.000104162   0.000525414  -0.000003948  -0.000207608  -0.000026707   0.000038455  -0.000130674  -0.000758115

   11    5.2  0.5 -0.5  -0.006921328   0.038218647   0.000610953   0.035435026  -0.001249439   0.003779997   0.091483831   0.558820848
                        -0.013729385   0.058325369  -0.001230651  -0.033434819  -0.001209145  -0.000093564   0.002296616  -0.087059416

   12    6.2  0.5 -0.5   0.000309314  -0.001659011  -0.000020559  -0.001134927   0.000015537  -0.000094795  -0.002604604  -0.015949415
                        -0.069730023  -0.015290162  -0.027797755   0.001245469  -0.038958190  -0.009971403   0.565542222  -0.090194864


   Nr   State  S   Sz        9            10            11            12

    1    1.2  0.5  0.5  -0.046932997  -0.013613940  -0.000000000   0.002165433
                        -0.000000000   0.000000000  -0.000000000   0.000000000

    2    2.2  0.5  0.5  -0.001605335   0.001530434  -0.023073882  -0.025171809
                        -0.006270113   0.022005257  -0.025392524   0.007311946

    3    3.2  0.5  0.5   0.007492626  -0.024715270  -0.023720802   0.007009775
                         0.000489953   0.002316454   0.021779577   0.025178976

    4    4.2  0.5  0.5  -0.117840999   0.413818266   0.395219740  -0.117114401
                        -0.008163179  -0.038595487  -0.362875729  -0.419514601

    5    5.2  0.5  0.5   0.783531113   0.222280954   0.007944326  -0.022496038
                         0.003192224  -0.010601914   0.015877220   0.000114093

    6    6.2  0.5  0.5   0.003355806  -0.032151386   0.384390187   0.420271069
                         0.104423790  -0.366498121   0.422804236  -0.121888818

    7    1.2  0.5 -0.5   0.013568362  -0.046775869   0.001563813  -0.000000000
                        -0.001113068   0.003837215  -0.001497862  -0.000000000

    8    2.2  0.5 -0.5   0.000273827  -0.001087320  -0.023236129  -0.000901094
                         0.022056713   0.006380373   0.012131234  -0.034298284

    9    3.2  0.5 -0.5   0.024821917   0.007427483  -0.012354411   0.032195726
                         0.000287993  -0.001100906  -0.023032289  -0.000679449

   10    4.2  0.5 -0.5  -0.415588386  -0.116779060   0.205607777  -0.536422663
                        -0.004632732   0.017770461   0.383970996   0.011320979

   11    5.2  0.5 -0.5  -0.222403584   0.780646931  -0.016324905   0.005245345
                         0.007607142  -0.067242587   0.015478443   0.016961273

   12    6.2  0.5 -0.5   0.002079072  -0.005193058   0.387819829   0.014864462
                        -0.367899799  -0.104348559  -0.202683092   0.571225250


 Composition of spin-orbit eigenvectors
 ======================================

   Nr   State  S   Sz       1        2        3        4        5        6        7        8        9       10

    1    1.2  0.5  0.5  31.584%   1.240%  65.978%   0.009%   0.419%   0.021%   0.495%   0.015%   0.220%   0.019%
    2    2.2  0.5  0.5   1.182%  31.641%   0.002%  21.490%   2.759%  42.176%   0.013%   0.497%   0.004%   0.049%
    3    3.2  0.5  0.5   1.240%  31.584%   0.001%  12.161%   3.470%  50.795%   0.015%   0.495%   0.006%   0.062%
    4    4.2  0.5  0.5   0.018%   0.492%   0.000%   0.044%   0.013%   0.183%   0.859%  31.965%   1.395%  17.274%
    5    5.2  0.5  0.5   0.486%   0.024%   0.237%   0.000%   0.001%   0.000%  31.986%   0.837%  61.393%   4.952%
    6    6.2  0.5  0.5   0.024%   0.486%   0.000%   0.077%   0.010%   0.152%   0.839%  31.984%   1.092%  13.535%
    7    1.2  0.5 -0.5   1.240%  31.584%   0.009%  65.978%   0.021%   0.419%   0.015%   0.495%   0.019%   0.220%
    8    2.2  0.5 -0.5  31.641%   1.182%  21.490%   0.002%  42.176%   2.759%   0.497%   0.013%   0.049%   0.004%
    9    3.2  0.5 -0.5  31.584%   1.240%  12.161%   0.001%  50.795%   3.470%   0.495%   0.015%   0.062%   0.006%
   10    4.2  0.5 -0.5   0.492%   0.018%   0.044%   0.000%   0.183%   0.013%  31.965%   0.859%  17.274%   1.395%
   11    5.2  0.5 -0.5   0.024%   0.486%   0.000%   0.237%   0.000%   0.001%   0.837%  31.986%   4.952%  61.393%
   12    6.2  0.5 -0.5   0.486%   0.024%   0.077%   0.000%   0.152%   0.010%  31.984%   0.839%  13.535%   1.092%

   Nr   State  S   Sz      11       12

    1    1.2  0.5  0.5   0.000%   0.000%
    2    2.2  0.5  0.5   0.118%   0.069%
    3    3.2  0.5  0.5   0.104%   0.068%
    4    4.2  0.5  0.5  28.788%  18.971%
    5    5.2  0.5  0.5   0.032%   0.051%
    6    6.2  0.5  0.5  32.652%  19.148%
    7    1.2  0.5 -0.5   0.000%   0.000%
    8    2.2  0.5 -0.5   0.069%   0.118%
    9    3.2  0.5 -0.5   0.068%   0.104%
   10    4.2  0.5 -0.5  18.971%  28.788%
   11    5.2  0.5 -0.5   0.051%   0.032%
   12    6.2  0.5 -0.5  19.148%  32.652%


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
              1      21       37.18       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       6      248.68       700     1000      520     2100     2140     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *      6248.40   3441.72   2804.65      1.21      0.05      0.56
 REAL TIME  *      6315.01 SEC
 DISK USED  *       285.94 MB (local),        1.71 GB (total)
 SF USED    *         2.61 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCVTZ-PP energy=   -171.969584838083

              CI           MULTI         RHF-SCF
   -171.89280503   -171.25998696   -171.33119886
 **********************************************************************************************************************************
 Molpro calculation terminated
