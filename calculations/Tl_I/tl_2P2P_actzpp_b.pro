
 Working directory              : /wrk/irikura/molpro.oD2U2dqCPP/
 Global scratch directory       : /wrk/irikura/molpro.oD2U2dqCPP/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.oD2U2dqCPP/

 id        : nistki

 Nodes            nprocs
 pn112695.nist.gov   16
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1040), CPU time= 0.01 sec
 ***,Tl SO-CI
 memory,1500,M;
 
 gprint,orbitals,civector;
 
 symmetry,xyz
 geometry={Tl};
 
 basis=aug-cc-pwCVTZ-PP
 
                                                                                 ! 10x tighter integration and convergence
 gthresh,twoint=1.d-13,energy=1.d-7,orbital=1.d-6,civec=1.d-6,step=1.d-4
 
                                                                                 ! cation orbitals
 {rhf;wf,nelec=20,sym=1,spin=0}
 
 {multi
     closed,6,3
     occ,8,9
     wf,nelec=21,sym=2,spin=1;state,6;
     expec2,lxx,lyy,lzz;
 }
 table, energy, ll
 title, Energies and &lt;L**2&gt; values
 
 core,0,0
 
 {ci;wf,sym=2,spin=1;state,6; save,5201.2}
 hlsdiag = energd4
 
 table,hlsdiag
 
 {ci;hlsmat,ecp,5201.2;print,vls=0,hls=0}                                        !compute and diagonalize SO matrix
 Commands initialized (846), CPU time= 0.02 sec, 717 directives.
 Default parameters read. Elapsed time= 0.21 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2023.2 linked Fri Sep 22 03:27:09 2023


 **********************************************************************************************************************************
 LABEL *   Tl SO-CI                                                                                                                                                      
  (32 PROC) 64 bit mpp version                                                           DATE: 21-Mar-24          TIME: 10:23:25  
 **********************************************************************************************************************************

 SHA1:             3c61bfe44d37c8635c785372c339f5cbdd4e4b59
 **********************************************************************************************************************************

 Memory per process:      1500 MW
 Total memory per node:  24000 MW

 GA preallocation disabled
 GA check disabled

 Variable memory set to 1500.0 MW


 ZSYMEL=XYZ

 SETTING BASIS          =    AUG-CC-PWCVTZ-PP

 THRESHOLDS:

 ZERO    =  1.00D-12  ONEINT  =  1.00D-12  TWOINT  =  1.00D-13  PREFAC  =  1.00D-14  XXXXXX  =  1.00D-09  EORDER  =  1.00D-04
 ENERGY  =  1.00D-07  ETEST   =  0.00D+00  EDENS   =  0.00D+00  THRDEDEF=  1.00D-06  GRADIENT=  1.00D-05  STEP    =  1.00D-04
 ORBITAL =  1.00D-06  CIVEC   =  1.00D-06  COEFF   =  1.00D-04  PRINTCI =  5.00D-02  PUNCHCI =  9.90D+01  OPTGRAD =  3.00D-04
 OPTENERG=  1.00D-06  OPTSTEP =  3.00D-04  THRGRAD =  1.00D-10  COMPRESS=  1.00D-11  VARMIN  =  1.00D-07  VARMAX  =  1.00D-03
 THRDOUB =  0.00D+00  THRDIV  =  1.00D-05  THRRED  =  1.00D-07  THRPSP  =  1.00D+00  THRDC   =  1.00D-10  THRCS   =  1.00D-10
 THRNRM  =  1.00D-08  THREQ   =  0.00D+00  THRDE   =  1.00D+00  THRREF  =  1.00D-05  SPARFAC =  1.00D+00  THRDLP  =  1.00D-07
 THRDIA  =  1.00D-10  THRDLS  =  1.00D-07  THRGPS  =  0.00D+00  THRKEX  =  0.00D+00  THRDIS  =  2.00D-01  THRVAR  =  1.00D-10
 THRLOC  =  1.00D-06  THRGAP  =  1.00D-06  THRLOCT = -1.00D+00  THRGAPT = -1.00D+00  THRORB  =  1.00D-06  THRMLTP =  0.00D+00
 THRCPQCI=  1.00D-10  KEXTA   =  0.00D+00  THRCOARS=  0.00D+00  SYMTOL  =  1.00D-06  GRADTOL =  1.00D-06  THROVL  =  1.00D-08
 THRORTH =  1.00D-08  THRDLOVL= -1.00D+00  GRID    =  1.00D-06  GRIDMAX =  1.00D-03  DTMAX   =  0.00D+00  THROCCDE=  1.00D-01
 THROCCDE=  1.00D-01  THRPRINT=  2.50D-01



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


 Contracted 2-electron integrals neglected if value below      1.0D-13
 AO integral compression algorithm  1   Integral accuracy      1.0D-13

     20.709 MB (compressed) written to integral file ( 23.5%)

     Node minimum: 0.524 MB, node maximum: 1.835 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:     343760.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:     343760      RECORD LENGTH: 524288

 Memory used in sort:       0.90 MW

 SORT1 READ    11031004. AND WROTE       67649. INTEGRALS IN      1 RECORDS. CPU TIME:     0.08 SEC, REAL TIME:     0.08 SEC
 SORT2 READ     1100136. AND WROTE     5533081. INTEGRALS IN     96 RECORDS. CPU TIME:     0.01 SEC, REAL TIME:     0.01 SEC

 Node minimum:      342884.  Node maximum:      348328. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      19       28.85       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         1.17      0.78
 REAL TIME  *         2.17 SEC
 DISK USED  *        29.19 MB (local),      541.19 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 Program * Restricted Hartree-Fock

 Orbital guess generated from atomic densities. Full valence occupancy:    7   6

 Initial occupancy:   7   3

 NELEC=   20   SYM=1   MS2= 0   THRE=1.0D-09   THRD=1.0D-06   THRG=1.0D-06  HFMA2=F  DIIS_START=2   DIIS_MAX=10   DIIS_INCORE=F

 Level shifts:    0.00 (CLOSED)    0.00 (OPEN)    0.30 (GAP_MIN)

 ITER           ETOT              DE          GRAD        DDIFF     DIIS  NEXP   TIME(IT)  TIME(TOT)  DIAG
   1     -171.32585509    -171.32585509     0.00D+00     0.13D+00     0     0       0.00      0.01    start
   2     -171.33066991      -0.00481481     0.25D-02     0.68D-02     1     0       0.00      0.01    diag
   3     -171.33113511      -0.00046520     0.14D-02     0.14D-02     2     0       0.00      0.01    diag
   4     -171.33119635      -0.00006124     0.22D-03     0.98D-03     3     0       0.01      0.02    diag
   5     -171.33119885      -0.00000250     0.50D-04     0.20D-03     4     0       0.00      0.02    diag
   6     -171.33119886      -0.00000001     0.41D-05     0.15D-04     5     0       0.00      0.02    diag
   7     -171.33119886      -0.00000000     0.22D-06     0.13D-05     6     0       0.00      0.02    diag
   8     -171.33119886      -0.00000000     0.13D-07     0.59D-07     7     0       0.01      0.03    fixocc
   9     -171.33119886       0.00000000     0.56D-09     0.16D-08     0     0       0.00      0.03    diag

 Final occupancy:   7   3

 !RHF STATE 1.1 Energy               -171.331198862995
  RHF One-electron energy            -295.976713645404
  RHF Two-electron energy             124.645514782410
  RHF Kinetic energy                   56.457737338406
  RHF Nuclear energy                    0.000000000000
  RHF Virial quotient                  -3.034680575951

 !RHF STATE 1.1 Dipole moment           0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 ELECTRON ORBITALS
 =================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -5.91018     1  1  s    0.99814
    2.1     2.00000    -1.10792     1  1  d2- -0.28458    1  1  d1+  0.95945
    3.1     2.00000    -1.10792     1  1  d0   0.35219    1  1  d2-  0.81816    1  1  d2+  0.34293
    4.1     2.00000    -1.10792     1  1  d0   0.81676    1  1  d2- -0.46586    1  1  d2+  0.26739
    5.1     2.00000    -1.10792     1  1  d2+ -0.27443    1  1  d1-  0.95236
    6.1     2.00000    -1.10792     1  1  d0  -0.43828    1  1  d2+  0.85914
    7.1     2.00000    -0.68793     1  2  s    1.05909
    1.2     2.00000    -3.73505     1  1  pz   0.98191
    2.2     2.00000    -3.73505     1  1  px   0.93165    1  1  py  -0.35378
    3.2     2.00000    -3.73505     1  1  px   0.35984    1  1  py   0.91596


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
 CPU TIMES  *         1.34      0.17      0.78
 REAL TIME  *         3.38 SEC
 DISK USED  *        29.68 MB (local),      549.03 MB (total)
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
 *** IN SYMMETRY 1 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.263D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.578D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.559D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.329D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.507D+00 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 4 3 2 6 5 1 1 2 6   4 5 3 1 6 4 5 3 2 1   4 6 3 5 21311 91415   812 710 6 4 3 5 2 1
                                        6 3 4 2 5 1 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.157D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.310D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.367D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.133D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.480D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.439D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.492D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.490D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  9 SYMMETRY CONTAMINATION OF 0.882D-02 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 1 2 1 3 2 3 2 1 1   2 3 6 4 5 810 9 7 1   2 3 4 6 5 9 7 810 6   4 7 5 9 810 2 1 3 8
                                        7 6 4 9 510 1 2 3

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-06 (energy)

 Weight factors for state symmetry  1:    0.16667   0.16667   0.16667   0.16667   0.16667   0.16667
 
 Number of orbital rotations:  702  ( 30 closed/active, 354 closed/virtual, 0 active/active, 318 active/virtual )
 Total number of variables:    1422
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1    7    6    0   -171.46218118    -171.46694677   -0.00476559    0.04763654 0.00014194 0.00000000  0.82E+00      0.43
   2    8    7    0   -171.46689769    -171.46690012   -0.00000243    0.00140920 0.00000122 0.00000000  0.24E-01      0.89
   3    5    5    0   -171.46690012    -171.46690012   -0.00000000    0.00000025 0.00000001 0.00000000  0.84E-05      1.24

 CONVERGENCE REACHED!  Final gradient:    0.00000000 ( 0.18E-08)
                       Final energy:   -171.46690012
 
 Results for state 1.2
 =====================
 !MCSCF STATE 1.2 Energy                      -171.524772968092
 Nuclear energy                                  0.00000000
 Kinetic energy                                 56.67087231
 One electron energy                          -301.60198935
 Two electron energy                           130.07721638
 Virial ratio                                    4.02668313
 
 !MCSCF STATE 1.2 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.2
 =====================
 !MCSCF STATE 2.2 Energy                      -171.524772966938
 Nuclear energy                                  0.00000000
 Kinetic energy                                 56.67087232
 One electron energy                          -301.60198939
 Two electron energy                           130.07721643
 Virial ratio                                    4.02668313
 
 !MCSCF STATE 2.2 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.2
 =====================
 !MCSCF STATE 3.2 Energy                      -171.524772965735
 Nuclear energy                                  0.00000000
 Kinetic energy                                 56.67087233
 One electron energy                          -301.60198944
 Two electron energy                           130.07721647
 Virial ratio                                    4.02668312
 
 !MCSCF STATE 3.2 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.2
 =====================
 !MCSCF STATE 4.2 Energy                      -171.409027265140
 Nuclear energy                                  0.00000000
 Kinetic energy                                 56.47557327
 One electron energy                          -298.25647806
 Two electron energy                           126.84745079
 Virial ratio                                    4.03510026
 
 !MCSCF STATE 4.2 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.2
 =====================
 !MCSCF STATE 5.2 Energy                      -171.409027265100
 Nuclear energy                                  0.00000000
 Kinetic energy                                 56.47557327
 One electron energy                          -298.25647806
 Two electron energy                           126.84745079
 Virial ratio                                    4.03510026
 
 !MCSCF STATE 5.2 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.2
 =====================
 !MCSCF STATE 6.2 Energy                      -171.409027265085
 Nuclear energy                                  0.00000000
 Kinetic energy                                 56.47557327
 One electron energy                          -298.25647807
 Two electron energy                           126.84745080
 Virial ratio                                    4.03510026
 
 !MCSCF STATE 6.2 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 !MCSCF expec                      <1.2|LXLX|1.2>     1.000000000000
 !MCSCF expec                      <2.2|LXLX|2.2>     0.999999999999
 !MCSCF expec                      <3.2|LXLX|3.2>     0.000000000001
 !MCSCF expec                      <4.2|LXLX|4.2>     0.999999993840
 !MCSCF expec                      <5.2|LXLX|5.2>     0.999999999974
 !MCSCF expec                      <6.2|LXLX|6.2>     0.000000008116
 
 !MCSCF expec                      <1.2|LYLY|1.2>     0.000000000000
 !MCSCF expec                      <2.2|LYLY|2.2>     1.000000000000
 !MCSCF expec                      <3.2|LYLY|3.2>     1.000000000000
 !MCSCF expec                      <4.2|LYLY|4.2>     0.999999999954
 !MCSCF expec                      <5.2|LYLY|5.2>     0.000000000049
 !MCSCF expec                      <6.2|LYLY|6.2>     0.999999999615
 
 !MCSCF expec                      <1.2|LZLZ|1.2>     1.000000000000
 !MCSCF expec                      <2.2|LZLZ|2.2>     0.000000000001
 !MCSCF expec                      <3.2|LZLZ|3.2>     0.999999999999
 !MCSCF expec                      <4.2|LZLZ|4.2>     0.000000006206
 !MCSCF expec                      <5.2|LZLZ|5.2>     0.999999999977
 !MCSCF expec                      <6.2|LZLZ|6.2>     0.999999992269
 
 !MCSCF expec                      <1.2|L**2|1.2>     2.000000000000
 !MCSCF expec                      <2.2|L**2|2.2>     2.000000000000
 !MCSCF expec                      <3.2|L**2|3.2>     2.000000000000
 !MCSCF expec                      <4.2|L**2|4.2>     2.000000000000
 !MCSCF expec                      <5.2|L**2|5.2>     2.000000000000
 !MCSCF expec                      <6.2|L**2|6.2>     2.000000000000
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 6 2 3 5 4 1 1 4 3   5 2 6 1 6 2 3 5 4 1   6 2 5 3 411 7 81214  151310 9 6 2 3 5 4 1
                                        6 2 3 5 4 1 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   2 3 1 1 3 2 3 2 1 1   3 2 5 6 810 9 7 4 1   3 2 5 6 810 9 7 4 5   6 810 9 7 4 2 3 1 5
                                        6 810 9 7 4 2 3 1
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -5.71615     1  1  s    0.99945
    2.1     2.00000    -0.91395     1  1  d1-  1.00068
    3.1     2.00000    -0.91395     1  1  d0   1.00068
    4.1     2.00000    -0.91395     1  1  d2-  1.00068
    5.1     2.00000    -0.91395     1  1  d2+  1.00068
    6.1     2.00000    -0.91395     1  1  d1+  1.00068
    7.1     1.95093    -0.50177     1  2  s    1.01218
    8.1     0.00373     0.30002     1  2  s   -1.55102    1  3  s   -1.30349    1  4  s    0.93512    1  5  s    1.73531
    1.2     2.00000    -3.54119     1  1  py   0.99961
    2.2     2.00000    -3.54119     1  1  pz   0.99961
    3.2     2.00000    -3.54119     1  1  px   0.99961
    4.2     0.18183    -0.01461     1  2  px   1.27820
    5.2     0.18183    -0.01461     1  2  pz   1.27820
    6.2     0.18183    -0.01461     1  2  py   1.27820
    7.2     0.16662     0.01739     1  2  pz  -0.27270    1  7  pz   1.11005
    8.2     0.16662     0.01739     1  2  py  -0.27270    1  7  py   1.11005
    9.2     0.16662     0.01739     1  2  px  -0.27270    1  7  px   1.11005
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 2
 =============================
 
 20 a00000     -0.00000012      0.00000105      0.94800009     -0.00002179     -0.00000142     -0.27762716
 20 00a000      0.94800009      0.00000026      0.00000012      0.00000188     -0.27762717      0.00000142
 20 0a0000     -0.00000026      0.94800009     -0.00000105     -0.27762717     -0.00000188      0.00002179
 20 0000a0      0.27739419      0.00000008      0.00000003     -0.00000640      0.94647698     -0.00000485
 20 00000a     -0.00000003      0.00000031      0.27739418      0.00007429      0.00000485      0.94647698
 20 000a00     -0.00000008      0.27739419     -0.00000031      0.94647698      0.00000639     -0.00007429
 00 2a0000      0.00000003     -0.09784570      0.00000011      0.03016145      0.00000020     -0.00000237
 00 20a000     -0.09784570     -0.00000003     -0.00000001     -0.00000020      0.03016145     -0.00000015
 00 a20000      0.00000001     -0.00000011     -0.09784570      0.00000237      0.00000015      0.03016145
 00 02a000     -0.09784570     -0.00000003     -0.00000001     -0.00000020      0.03016145     -0.00000015
 00 a02000      0.00000001     -0.00000011     -0.09784570      0.00000237      0.00000015      0.03016145
 00 0a2000      0.00000003     -0.09784570      0.00000011      0.03016145      0.00000020     -0.00000237
 00 2000a0     -0.02554851     -0.00000001     -0.00000000      0.00000059     -0.08682901      0.00000045
 00 200a00      0.00000001     -0.02554851      0.00000003     -0.08682901     -0.00000059      0.00000682
 00 0200a0     -0.02554851     -0.00000001     -0.00000000      0.00000059     -0.08682901      0.00000045
 00 02000a      0.00000000     -0.00000003     -0.02554851     -0.00000682     -0.00000045     -0.08682901
 00 00200a      0.00000000     -0.00000003     -0.02554851     -0.00000682     -0.00000045     -0.08682901
 00 002a00      0.00000001     -0.02554851      0.00000003     -0.08682901     -0.00000059      0.00000682
 00 20000a      0.00000000     -0.00000003     -0.02478043     -0.00000674     -0.00000044     -0.08583196
 00 020a00      0.00000001     -0.02478043      0.00000003     -0.08583196     -0.00000058      0.00000674
 00 0020a0     -0.02478043     -0.00000001     -0.00000000      0.00000058     -0.08583196      0.00000044
 
 Energy:     -171.52477297   -171.52477297   -171.52477297   -171.40902727   -171.40902727   -171.40902727
 


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
 CPU TIMES  *         2.53      1.19      0.17      0.78
 REAL TIME  *         4.90 SEC
 DISK USED  *        38.00 MB (local),      682.25 MB (total)
 SF USED    *        22.30 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

         ENERGY     LL
    -171.5247730   2.0
    -171.5247730   2.0
    -171.5247730   2.0
    -171.4090273   2.0
    -171.4090273   2.0
    -171.4090273   2.0
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-07

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
     1      -171.52477297
     2      -171.52477297
     3      -171.52477297
     4      -171.40902727
     5      -171.40902727
     6      -171.40902727

 Number of blocks in overlap matrix:   564   Smallest eigenvalue:  0.11D-05
 Number of N-2 electron functions:    1330
 Number of N-1 electron functions:   77473

 Number of internal configurations:                53272
 Number of singly external configurations:       3060250
 Number of doubly external configurations:       2077248
 Total number of contracted configurations:      5190770
 Total number of uncontracted configurations:   40457792

 Diagonal Coupling coefficients finished.               Storage:  22137748 words, CPU-Time:     25.09 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   1112961 words, CPU-time:      0.10 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -171.52477297    -0.00000000    -0.74293758  0.54D-01  0.11D+00    35.85
    1     2     2     1.00000000     0.00000000  -171.52477297     0.00000000    -0.74293567  0.54D-01  0.11D+00    35.85
    1     3     3     1.00000000     0.00000000  -171.52477297     0.00000000    -0.74286988  0.54D-01  0.11D+00    35.85
    1     4     4     1.00000000     0.00000000  -171.40902727     0.00000000    -0.72280915  0.44D-01  0.10D+00    35.85
    1     5     5     1.00000000     0.00000000  -171.40902727     0.00000000    -0.72281226  0.44D-01  0.10D+00    35.85
    1     6     6     1.00000000     0.00000000  -171.40902727    -0.00000000    -0.72289710  0.44D-01  0.10D+00    35.85
    2     1     1     1.09427465    -0.57471346  -172.09948643    -0.57471346    -0.01719148  0.27D-02  0.14D-02   149.29
    2     2     2     1.09429513    -0.57470811  -172.09948108    -0.57470811    -0.01719459  0.27D-02  0.14D-02   149.29
    2     3     3     1.09427019    -0.57468861  -172.09946158    -0.57468861    -0.01721992  0.27D-02  0.14D-02   149.29
    2     4     4     1.08601874    -0.56531405  -171.97434132    -0.56531405    -0.01607214  0.23D-02  0.12D-02   149.29
    2     5     5     1.08602325    -0.56531185  -171.97433911    -0.56531185    -0.01607447  0.23D-02  0.12D-02   149.29
    2     6     6     1.08604993    -0.56530965  -171.97433691    -0.56530965    -0.01607760  0.23D-02  0.12D-02   149.29
    3     1     1     1.08689441    -0.59064297  -172.11541593    -0.01592950    -0.00030315  0.38D-04  0.34D-04   260.27
    3     2     2     1.08690434    -0.59064296  -172.11541593    -0.01593485    -0.00030316  0.38D-04  0.34D-04   260.27
    3     3     3     1.08690493    -0.59064291  -172.11541588    -0.01595430    -0.00030336  0.38D-04  0.34D-04   260.27
    3     4     4     1.08054943    -0.58017607  -171.98920334    -0.01486202    -0.00025611  0.25D-04  0.26D-04   260.27
    3     5     5     1.08054937    -0.58017600  -171.98920326    -0.01486415    -0.00025618  0.25D-04  0.26D-04   260.27
    3     6     6     1.08055518    -0.58017577  -171.98920304    -0.01486613    -0.00025646  0.25D-04  0.26D-04   260.27
    4     1     1     1.08715434    -0.59094887  -172.11572183    -0.00030590    -0.00001252  0.33D-05  0.12D-05   370.29
    4     2     2     1.08715471    -0.59094885  -172.11572182    -0.00030589    -0.00001254  0.33D-05  0.12D-05   370.29
    4     3     3     1.08715423    -0.59094881  -172.11572178    -0.00030590    -0.00001258  0.33D-05  0.12D-05   370.29
    4     4     4     1.08107912    -0.58042905  -171.98945631    -0.00025297    -0.00000903  0.25D-05  0.70D-06   370.29
    4     5     5     1.08107970    -0.58042905  -171.98945631    -0.00025305    -0.00000903  0.25D-05  0.70D-06   370.29
    4     6     6     1.08107907    -0.58042905  -171.98945631    -0.00025327    -0.00000903  0.25D-05  0.70D-06   370.29
    5     1     1     1.08719311    -0.59096299  -172.11573595    -0.00001412    -0.00000053  0.89D-07  0.63D-07   480.32
    5     2     2     1.08719330    -0.59096299  -172.11573595    -0.00001414    -0.00000053  0.89D-07  0.63D-07   480.32
    5     3     3     1.08719336    -0.59096298  -172.11573595    -0.00001417    -0.00000054  0.90D-07  0.63D-07   480.32
    5     4     4     1.08118809    -0.58043893  -171.98946619    -0.00000988    -0.00000037  0.71D-07  0.39D-07   480.32
    5     5     5     1.08118805    -0.58043893  -171.98946619    -0.00000988    -0.00000037  0.71D-07  0.39D-07   480.32
    5     6     6     1.08118808    -0.58043893  -171.98946619    -0.00000988    -0.00000038  0.71D-07  0.39D-07   480.32
    6     1     1     1.08717620    -0.59096356  -172.11573653    -0.00000058    -0.00000002  0.38D-08  0.32D-08   589.48
    6     2     2     1.08717620    -0.59096356  -172.11573653    -0.00000058    -0.00000002  0.38D-08  0.32D-08   589.48
    6     3     3     1.08717623    -0.59096356  -172.11573653    -0.00000058    -0.00000002  0.38D-08  0.32D-08   589.48
    6     4     4     1.08118801    -0.58043933  -171.98946660    -0.00000040    -0.00000002  0.38D-08  0.20D-08   589.48
    6     5     5     1.08118801    -0.58043933  -171.98946659    -0.00000040    -0.00000002  0.38D-08  0.20D-08   589.48
    6     6     6     1.08118801    -0.58043933  -171.98946659    -0.00000040    -0.00000002  0.38D-08  0.20D-08   589.48
    7     1     1     1.08717723    -0.59096359  -172.11573656    -0.00000003    -0.00000000  0.17D-09  0.20D-09   698.10
    7     2     2     1.08717723    -0.59096359  -172.11573656    -0.00000003    -0.00000000  0.17D-09  0.20D-09   698.10
    7     3     3     1.08717724    -0.59096359  -172.11573655    -0.00000003    -0.00000000  0.17D-09  0.20D-09   698.10
    7     4     4     1.08118941    -0.58043935  -171.98946661    -0.00000002    -0.00000000  0.18D-09  0.13D-09   698.10
    7     5     5     1.08118942    -0.58043935  -171.98946661    -0.00000002    -0.00000000  0.18D-09  0.13D-09   698.10
    7     6     6     1.08118942    -0.58043935  -171.98946661    -0.00000002    -0.00000000  0.18D-09  0.13D-09   698.10


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   5.2%
 S   2.3%  21.3%
 P   0.7%  45.3%  16.8%

 Initialization:   3.7%
 Other:            4.7%

 Total CPU:      698.1 seconds
 =====================================



 Wavefunction saved on  5201.2

 Reference coefficients greater than 0.0500000
 =============================================
 22222220222/00000           0.0000003  -0.0000000   0.9204576  -0.2333806  -0.0000000  -0.0008369
 222222202220/0000          -0.0000000   0.9204576   0.0000000   0.0000000  -0.2333821  -0.0000000
 2222222022200/000           0.9204576   0.0000000  -0.0000003   0.0008369  -0.0000000  -0.2333806
 22222220222000/00           0.0000000   0.2333353   0.0000000  -0.0000000   0.9194437   0.0000000
 2222222022200000/           0.0000001   0.0000000   0.2333353   0.9194378   0.0000000   0.0032969
 222222202220000/0           0.2333353  -0.0000000  -0.0000001  -0.0032969  -0.0000000   0.9194378
 2222220022202/000          -0.0809417   0.0000000   0.0000000  -0.0000784   0.0000000   0.0218764
 2222220022220/000          -0.0809417  -0.0000000   0.0000000  -0.0000784   0.0000000   0.0218764
 22222200222/02000          -0.0000000   0.0000000  -0.0809416   0.0218764   0.0000000   0.0000784
 222222002220/2000          -0.0000000  -0.0809416  -0.0000000  -0.0000000   0.0218766   0.0000000
 22222200222/20000          -0.0000000  -0.0000000  -0.0809416   0.0218764   0.0000000   0.0000784
 222222002222/0000           0.0000000  -0.0809416   0.0000000  -0.0000000   0.0218766   0.0000000
 22222200222200/00          -0.0000000  -0.0183333   0.0000000  -0.0000000  -0.0720423  -0.0000000
 22222200222002/00          -0.0000000  -0.0183333   0.0000000  -0.0000000  -0.0720423  -0.0000000
 2222220022202000/          -0.0000000   0.0000000  -0.0183333  -0.0720419  -0.0000000  -0.0002583
 2222220022200200/          -0.0000000  -0.0000000  -0.0183333  -0.0720419  -0.0000000  -0.0002583
 222222002220200/0          -0.0183333   0.0000000   0.0000000   0.0002583   0.0000000  -0.0720419
 222222002222000/0          -0.0183333  -0.0000000   0.0000000   0.0002583   0.0000000  -0.0720418
 22222200222020/00          -0.0000000  -0.0175541  -0.0000000  -0.0000000  -0.0710502  -0.0000000
 222222002220020/0          -0.0175541   0.0000000   0.0000000   0.0002548   0.0000000  -0.0710497
 2222220022220000/          -0.0000000  -0.0000000  -0.0175542  -0.0710497   0.0000000  -0.0002548
 222222/\222000/00          -0.0000000  -0.0185407  -0.0000000  -0.0000000  -0.0705963  -0.0000000
 222222/\22200000/          -0.0000000   0.0000000  -0.0185407  -0.0705958   0.0000000  -0.0002531
 222222/\2220000/0          -0.0185407  -0.0000000   0.0000000   0.0002531   0.0000000  -0.0705958

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.956459    0.000000    0.000000    0.000000   -0.034195   -0.000000
 2           0.000000    0.956459   -0.000000   -0.034195   -0.000000    0.000000
 3          -0.000000    0.000000    0.956458    0.000000    0.000000   -0.034196
 4          -0.000128   -0.000000    0.035789   -0.000000   -0.003438    0.958643
 5          -0.000000    0.035789   -0.000000    0.958649   -0.000000    0.000000
 6           0.035789    0.000000    0.000128    0.000000    0.958643    0.003438

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.957069    0.000000   -0.000000   -0.000003    0.000000    0.000756
 2           0.000000    0.957069    0.000000    0.000000    0.000756   -0.000000
 3          -0.000000    0.000000    0.957069    0.000756   -0.000000    0.000003
 4          -0.000003    0.000000    0.000756    0.959317    0.000000    0.000000
 5           0.000000    0.000756   -0.000000    0.000000    0.959317   -0.000000
 6           0.000756   -0.000000    0.000003    0.000000   -0.000000    0.959317


 RESULTS FOR STATE 1.2
 =====================

 Coefficient of reference function:   C(0) = 0.95645850 (fixed)   0.95774036 (relaxed)   0.95706929 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00418306   -0.00531137   -0.47619907
 Singles      0.02232587   -0.07355722   -0.07946078
 Pairs        0.06521602    0.00000001   -0.03530374
 Total        1.09172495   -0.07886858   -0.59096359
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -171.52461861
 Nuclear energy                         0.00000000
 Kinetic energy                        56.80930665
 One electron energy                 -301.07699935
 Two electron energy                  128.96126279
 Virial quotient                       -3.02971021
 Correlation energy                    -0.59111795
 !MRCI STATE 1.2 Energy              -172.115736557221

 Properties without orbital relaxation:

 !MRCI STATE 1.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -172.16995682 (Davidson, fixed reference)
 Cluster corrected energies          -172.16905280 (Davidson, relaxed reference)
 Cluster corrected energies          -172.16995682 (Davidson, rotated reference)

 Cluster corrected energies          -172.16835282 (Pople, fixed reference)
 Cluster corrected energies          -172.16740893 (Pople, relaxed reference)
 Cluster corrected energies          -172.16835282 (Pople, rotated reference)



 RESULTS FOR STATE 2.2
 =====================

 Coefficient of reference function:   C(0) = 0.95645850 (fixed)   0.95774035 (relaxed)   0.95706929 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00418306   -0.00531137   -0.47619905
 Singles      0.02232588   -0.07355723   -0.07946078
 Pairs        0.06521602   -0.00000000   -0.03530376
 Total        1.09172496   -0.07886860   -0.59096359
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -171.52461860
 Nuclear energy                         0.00000000
 Kinetic energy                        56.80930779
 One electron energy                 -301.07700061
 Two electron energy                  128.96126405
 Virial quotient                       -3.02971015
 Correlation energy                    -0.59111795
 !MRCI STATE 2.2 Energy              -172.115736556682

 Properties without orbital relaxation:

 !MRCI STATE 2.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -172.16995683 (Davidson, fixed reference)
 Cluster corrected energies          -172.16905280 (Davidson, relaxed reference)
 Cluster corrected energies          -172.16995683 (Davidson, rotated reference)

 Cluster corrected energies          -172.16835282 (Pople, fixed reference)
 Cluster corrected energies          -172.16740893 (Pople, relaxed reference)
 Cluster corrected energies          -172.16835282 (Pople, rotated reference)



 RESULTS FOR STATE 3.2
 =====================

 Coefficient of reference function:   C(0) = 0.95645850 (fixed)   0.95774035 (relaxed)   0.95706929 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00418306   -0.00531137   -0.49694454
 Singles      0.02232588   -0.07355723   -0.07946078
 Pairs        0.06521603    0.02264836   -0.01455827
 Total        1.09172496   -0.05622023   -0.59096359
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -171.52461860
 Nuclear energy                         0.00000000
 Kinetic energy                        56.80930673
 One electron energy                 -301.07699968
 Two electron energy                  128.96126313
 Virial quotient                       -3.02971021
 Correlation energy                    -0.59111795
 !MRCI STATE 3.2 Energy              -172.115736554869

 Properties without orbital relaxation:

 !MRCI STATE 3.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -172.16995683 (Davidson, fixed reference)
 Cluster corrected energies          -172.16905280 (Davidson, relaxed reference)
 Cluster corrected energies          -172.16995683 (Davidson, rotated reference)

 Cluster corrected energies          -172.16835282 (Pople, fixed reference)
 Cluster corrected energies          -172.16740893 (Pople, relaxed reference)
 Cluster corrected energies          -172.16835282 (Pople, rotated reference)



 RESULTS FOR STATE 4.2
 =====================

 Maximum overlap with reference state  6

 Coefficient of reference function:   C(0) = 0.95864323 (fixed)   0.96005054 (relaxed)   0.95931692 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00501839   -0.00661702   -0.00908451
 Singles      0.01925822   -0.07165478   -0.07622913
 Pairs        0.06233864   -0.50182608   -0.49512571
 Total        1.08661525   -0.58009788   -0.58043935
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -171.40918163
 Nuclear energy                         0.00000000
 Kinetic energy                        56.68225144
 One electron energy                 -297.76762757
 Two electron energy                  125.77816095
 Virial quotient                       -3.03427373
 Correlation energy                    -0.58028499
 !MRCI STATE 4.2 Energy              -171.989466614451

 Properties without orbital relaxation:

 !MRCI STATE 4.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -172.03972814 (Davidson, fixed reference)
 Cluster corrected energies          -172.03876485 (Davidson, relaxed reference)
 Cluster corrected energies          -172.03972814 (Davidson, rotated reference)

 Cluster corrected energies          -172.03803199 (Pople, fixed reference)
 Cluster corrected energies          -172.03703483 (Pople, relaxed reference)
 Cluster corrected energies          -172.03803199 (Pople, rotated reference)



 RESULTS FOR STATE 5.2
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.95864940 (fixed)   0.96005053 (relaxed)   0.95931691 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00501839   -0.00661702   -0.47090950
 Singles      0.01925822   -0.07165478   -0.07622914
 Pairs        0.06233864   -0.00000000   -0.03330071
 Total        1.08661525   -0.07827180   -0.58043935
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -171.40918163
 Nuclear energy                         0.00000000
 Kinetic energy                        56.68225187
 One electron energy                 -297.76762801
 Two electron energy                  125.77816139
 Virial quotient                       -3.03427371
 Correlation energy                    -0.58028499
 !MRCI STATE 5.2 Energy              -171.989466614130

 Properties without orbital relaxation:

 !MRCI STATE 5.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -172.03972814 (Davidson, fixed reference)
 Cluster corrected energies          -172.03876485 (Davidson, relaxed reference)
 Cluster corrected energies          -172.03972814 (Davidson, rotated reference)

 Cluster corrected energies          -172.03803199 (Pople, fixed reference)
 Cluster corrected energies          -172.03703484 (Pople, relaxed reference)
 Cluster corrected energies          -172.03803199 (Pople, rotated reference)



 RESULTS FOR STATE 6.2
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.95864323 (fixed)   0.96005053 (relaxed)   0.95931691 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00501839   -0.00661702   -0.46925348
 Singles      0.01925821   -0.07165478   -0.07622914
 Pairs        0.06233864   -0.00179946   -0.03495674
 Total        1.08661525   -0.08007126   -0.58043935
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -171.40918163
 Nuclear energy                         0.00000000
 Kinetic energy                        56.68225181
 One electron energy                 -297.76762805
 Two electron energy                  125.77816143
 Virial quotient                       -3.03427371
 Correlation energy                    -0.58028499
 !MRCI STATE 6.2 Energy              -171.989466613761

 Properties without orbital relaxation:

 !MRCI STATE 6.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -172.03972814 (Davidson, fixed reference)
 Cluster corrected energies          -172.03876485 (Davidson, relaxed reference)
 Cluster corrected energies          -172.03972814 (Davidson, rotated reference)

 Cluster corrected energies          -172.03803199 (Pople, fixed reference)
 Cluster corrected energies          -172.03703483 (Pople, relaxed reference)
 Cluster corrected energies          -172.03803199 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       37.18       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       6      246.01       700     1000      520     2100     2140     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *       850.22    847.67      1.19      0.17      0.78
 REAL TIME  *       876.11 SEC
 DISK USED  *       283.27 MB (local),        4.50 GB (total)
 SF USED    *         2.58 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =      -172.16995682  AU                              
 SETTING HLSDIAG(2)     =      -172.16995683  AU                              
 SETTING HLSDIAG(3)     =      -172.16995683  AU                              
 SETTING HLSDIAG(4)     =      -172.03972814  AU                              
 SETTING HLSDIAG(5)     =      -172.03972814  AU                              
 SETTING HLSDIAG(6)     =      -172.03972814  AU                              


         HLSDIAG
    -172.1699568
    -172.1699568
    -172.1699568
    -172.0397281
    -172.0397281
    -172.0397281
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Diagonal elements of H will be replaced by values from variable HLSDIAG


   ******************************
   *** Spin-orbit calculation ***
   ******************************


   Spin-orbit matrix elements
   ==========================

 Wavefunction restored from record  5201.2  Symmetry=2  S= 0.5  NSTATE=   6

 Original energies:   -172.115737   -172.115737   -172.115737   -171.989467   -171.989467   -171.989467
 Replaced energies:   -172.169957   -172.169957   -172.169957   -172.039728   -172.039728   -172.039728



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=  -172.16995683

 Wigner-Eckart theorem used for  3 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00
                           -0.00       0.00    2484.03    -986.88      -0.00      -3.54       0.00   -2484.03       0.00      -0.00

    2   2.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00   -2484.03     986.88
                           -0.00      -0.00      -0.00      -0.00      -0.00       0.00    2484.03      -0.00      -0.00       3.54

    3   3.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00    2484.03      -0.00      -0.00
                        -2484.03       0.00       0.00      -3.54      -0.00     986.88      -0.00       0.00      -0.00       0.00

    4   4.2  0.5  0.5       0.00       0.00       0.00   28581.89       0.00       0.00      -0.00    -986.88       0.00      -0.00
                          986.88       0.00       3.54       0.00       0.00    -391.38       0.00      -3.54      -0.00      -0.00

    5   5.2  0.5  0.5       0.00       0.00       0.00       0.00   28581.89       0.00       0.00       0.00     986.89    -391.38
                            0.00       0.00       0.00      -0.00      -0.00      -0.00    -986.89      -0.00       0.00      -1.40

    6   6.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00   28581.89      -0.00      -3.54       0.00      -0.00
                            3.54      -0.00    -986.88     391.38       0.00      -0.00      -0.00     986.88      -0.00       0.00

    7   1.2  0.5 -0.5       0.00      -0.00       0.00      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00
                           -0.00   -2484.03       0.00      -0.00     986.89       0.00       0.00      -0.00   -2484.03     986.88

    8   2.2  0.5 -0.5       0.00      -0.00    2484.03    -986.88       0.00      -3.54       0.00       0.00       0.00       0.00
                         2484.03       0.00      -0.00       3.54       0.00    -986.88       0.00       0.00       0.00       0.00

    9   3.2  0.5 -0.5      -0.00   -2484.03      -0.00       0.00     986.89       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00      -0.00       0.00    2484.03      -0.00      -0.00       3.54

   10   4.2  0.5 -0.5       0.00     986.88      -0.00      -0.00    -391.38      -0.00       0.00       0.00       0.00   28581.89
                            0.00      -3.54      -0.00       0.00       1.40      -0.00    -986.88      -0.00      -3.54      -0.00

   11   5.2  0.5 -0.5      -0.00      -0.00    -986.89     391.38      -0.00       1.40       0.00       0.00       0.00       0.00
                         -986.89      -0.00       0.00      -1.40       0.00     391.38      -0.00      -0.00      -0.00       0.00

   12   6.2  0.5 -0.5       0.00       3.54      -0.00       0.00      -1.40      -0.00       0.00       0.00       0.00       0.00
                           -0.00     986.88      -0.00       0.00    -391.38       0.00      -3.54       0.00     986.88    -391.38


   Nr   State  S   Sz       11         12

    1   1.2  0.5  0.5      -0.00       0.00
                          986.89       0.00

    2   2.2  0.5  0.5      -0.00       3.54
                            0.00    -986.88

    3   3.2  0.5  0.5    -986.89      -0.00
                           -0.00       0.00

    4   4.2  0.5  0.5     391.38       0.00
                            1.40      -0.00

    5   5.2  0.5  0.5      -0.00      -1.40
                           -0.00     391.38

    6   6.2  0.5  0.5       1.40      -0.00
                         -391.38      -0.00

    7   1.2  0.5 -0.5       0.00       0.00
                            0.00       3.54

    8   2.2  0.5 -0.5       0.00       0.00
                            0.00      -0.00

    9   3.2  0.5 -0.5       0.00       0.00
                            0.00    -986.88

   10   4.2  0.5 -0.5       0.00       0.00
                           -0.00     391.38

   11   5.2  0.5 -0.5   28581.89       0.00
                            0.00       0.00

   12   6.2  0.5 -0.5       0.00   28581.89
                           -0.00       0.00


 No symmetry adaption


 Spin-orbit eigenstates   (energies)
 ======================

     Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
              (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1  -172.19313272    -0.02317589    -5086.52      0.00000000        0.00      0.0000
     2  -172.19313272    -0.02317589    -5086.52      0.00000000        0.00      0.0000
     3  -172.15880606     0.01115077     2447.31      0.03432666     7533.83      0.9341
     4  -172.15880606     0.01115077     2447.31      0.03432666     7533.83      0.9341
     5  -172.15880606     0.01115077     2447.31      0.03432666     7533.83      0.9341
     6  -172.15880606     0.01115077     2447.31      0.03432666     7533.83      0.9341
     7  -172.04275493     0.12720189    27917.59      0.15037778    33004.11      4.0920
     8  -172.04275493     0.12720189    27917.59      0.15037778    33004.11      4.0920
     9  -172.03777757     0.13217926    29009.99      0.15535515    34096.51      4.2274
    10  -172.03777757     0.13217926    29009.99      0.15535515    34096.51      4.2274
    11  -172.03777757     0.13217926    29009.99      0.15535515    34096.51      4.2274
    12  -172.03777757     0.13217926    29009.99      0.15535515    34096.51      4.2274


 Eigenvectors of spin-orbit matrix
 =================================

  Basis states          Eigenvectors (columnwise)

   Nr   State  S   Sz        1             2             3             4             5             6             7             8

    1    1.2  0.5  0.5   0.558920685   0.140515083  -0.102086218   0.014118131   0.053987606   0.807594956  -0.034156236   0.005460965
                        -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000

    2    2.2  0.5  0.5  -0.097878000   0.389325029  -0.075462663  -0.545696647   0.305477764  -0.020420502  -0.002344500  -0.014663944
                        -0.100818592   0.401021692  -0.046020533  -0.340825333   0.386769957  -0.025714660   0.004932086   0.030848296

    3    3.2  0.5  0.5   0.000000000  -0.000000000   0.000456056   0.000879764  -0.000083612   0.000047859   0.000000000  -0.000000000
                         0.558920753   0.140515100   0.745472939  -0.102502111  -0.021151134  -0.314738248  -0.034156233   0.005460965

    4    4.2  0.5  0.5   0.000120278   0.000030239   0.000030585   0.000030848  -0.000010312  -0.000105949   0.002040441  -0.000326230
                        -0.033545941  -0.008433595   0.027734913  -0.003813535  -0.000786917  -0.011709667  -0.569081810   0.090985907

    5    5.2  0.5  0.5   0.005874589  -0.023367094  -0.002807564  -0.020302465   0.011365202  -0.000759738  -0.039062295  -0.244319616
                         0.006051082  -0.024069122  -0.001712179  -0.012680295   0.014389652  -0.000956706   0.082174698   0.513971091

    6    6.2  0.5  0.5  -0.033545935  -0.008433594  -0.003797999   0.000525374   0.002008568   0.030046125  -0.569081865   0.090985916
                        -0.000120279  -0.000030239   0.000099443  -0.000013673  -0.000002821  -0.000041985  -0.002040441   0.000326230

    7    1.2  0.5 -0.5   0.100818550  -0.401021527   0.007470392   0.054017344   0.633712525  -0.042363591  -0.004932086  -0.030848299
                        -0.097878029   0.389325142  -0.011979770  -0.086624028  -0.500617668   0.033466219  -0.002344498  -0.014663933

    8    2.2  0.5 -0.5  -0.000000196  -0.000000049   0.000456282   0.000879733  -0.000083600   0.000048031   0.000000012  -0.000000002
                        -0.558920724  -0.140515093   0.643386765  -0.088383987   0.032836468   0.492856635   0.034156239  -0.005460966

    9    3.2  0.5 -0.5  -0.097878041   0.389325190   0.087442444   0.632320756   0.195139724  -0.013045705  -0.002344498  -0.014663931
                        -0.100818563   0.401021576   0.053490895   0.394842463   0.246942618  -0.016648934   0.004932086   0.030848296

   10    4.2  0.5 -0.5   0.005896251  -0.023453260   0.003252252   0.023517942   0.007175534  -0.000479707  -0.038767375  -0.242474999
                         0.006029980  -0.023985187   0.001991698   0.014701453   0.009254148  -0.000623879   0.082314229   0.514843806

   11    5.2  0.5 -0.5   0.000000012   0.000000003   0.000016976   0.000032730  -0.000003110   0.000001787   0.000000203  -0.000000033
                         0.033546143   0.008433646   0.023936994  -0.003288297   0.001221670   0.018336573   0.569085544  -0.090986504

   12    6.2  0.5 -0.5  -0.006029979   0.023985183   0.000289596   0.002094034   0.023602951  -0.001577854  -0.082314237  -0.514843856
                         0.005896250  -0.023453257  -0.000438565  -0.003170127  -0.018592259   0.001242871  -0.038767378  -0.242475023


   Nr   State  S   Sz        9            10            11            12

    1    1.2  0.5  0.5  -0.021768588   0.000000000   0.021157630  -0.000000000
                         0.000000000  -0.000000000   0.000000000  -0.000000000

    2    2.2  0.5  0.5   0.000000955   0.010071047   0.000000983  -0.004397105
                        -0.000001611  -0.027416068  -0.000001657   0.007008252

    3    3.2  0.5  0.5  -0.000054258   0.000000345  -0.000055825   0.000000035
                        -0.007438653   0.000001841  -0.029430883  -0.000001926

    4    4.2  0.5  0.5  -0.000639527  -0.000009262   0.003539449  -0.000000949
                         0.199937509  -0.000049475   0.791048197   0.000051779

    5    5.2  0.5  0.5  -0.000025674  -0.270692984  -0.000026415   0.118186751
                         0.000043295   0.736898272   0.000044545  -0.188369968

    6    6.2  0.5  0.5   0.585105154  -0.000000033  -0.568672610  -0.000000003
                         0.000716883  -0.000000177   0.002836295   0.000000186

    7    1.2  0.5 -0.5  -0.000000000  -0.020447466  -0.000000000  -0.017997599
                        -0.000000000  -0.007468104  -0.000000000  -0.011123478

    8    2.2  0.5 -0.5  -0.000054267   0.000000345  -0.000055827   0.000000035
                        -0.029207256   0.000001841  -0.008273271  -0.000001926

    9    3.2  0.5 -0.5  -0.000000955  -0.002602929  -0.000000983   0.015520570
                         0.000001611   0.006968591   0.000001657  -0.025005837

   10    4.2  0.5 -0.5   0.000025673   0.067991456   0.000026415  -0.418898936
                        -0.000043294  -0.188022829  -0.000044544   0.671039085

   11    5.2  0.5 -0.5   0.001458629  -0.000009263   0.001500550  -0.000000949
                         0.785042432  -0.000049475   0.222371553   0.000051779

   12    6.2  0.5 -0.5   0.000000092   0.549841409   0.000000095   0.482246460
                        -0.000000155   0.200057412  -0.000000160   0.301388363


 Composition of spin-orbit eigenvectors
 ======================================

   Nr   State  S   Sz       1        2        3        4        5        6        7        8        9       10

    1    1.2  0.5  0.5  31.239%   1.974%   1.042%   0.020%   0.291%  65.221%   0.117%   0.003%   0.047%   0.000%
    2    2.2  0.5  0.5   1.974%  31.239%   0.781%  41.395%  24.291%   0.108%   0.003%   0.117%   0.000%   0.085%
    3    3.2  0.5  0.5  31.239%   1.974%  55.573%   1.051%   0.045%   9.906%   0.117%   0.003%   0.006%   0.000%
    4    4.2  0.5  0.5   0.113%   0.007%   0.077%   0.001%   0.000%   0.014%  32.386%   0.828%   3.998%   0.000%
    5    5.2  0.5  0.5   0.007%   0.113%   0.001%   0.057%   0.034%   0.000%   0.828%  32.386%   0.000%  61.629%
    6    6.2  0.5  0.5   0.113%   0.007%   0.001%   0.000%   0.000%   0.090%  32.386%   0.828%  34.235%   0.000%
    7    1.2  0.5 -0.5   1.974%  31.239%   0.020%   1.042%  65.221%   0.291%   0.003%   0.117%   0.000%   0.047%
    8    2.2  0.5 -0.5  31.239%   1.974%  41.395%   0.781%   0.108%  24.291%   0.117%   0.003%   0.085%   0.000%
    9    3.2  0.5 -0.5   1.974%  31.239%   1.051%  55.573%   9.906%   0.045%   0.003%   0.117%   0.000%   0.006%
   10    4.2  0.5 -0.5   0.007%   0.113%   0.001%   0.077%   0.014%   0.000%   0.828%  32.386%   0.000%   3.998%
   11    5.2  0.5 -0.5   0.113%   0.007%   0.057%   0.001%   0.000%   0.034%  32.386%   0.828%  61.629%   0.000%
   12    6.2  0.5 -0.5   0.007%   0.113%   0.000%   0.001%   0.090%   0.000%   0.828%  32.386%   0.000%  34.235%

   Nr   State  S   Sz      11       12

    1    1.2  0.5  0.5   0.045%   0.000%
    2    2.2  0.5  0.5   0.000%   0.007%
    3    3.2  0.5  0.5   0.087%   0.000%
    4    4.2  0.5  0.5  62.577%   0.000%
    5    5.2  0.5  0.5   0.000%   4.945%
    6    6.2  0.5  0.5  32.340%   0.000%
    7    1.2  0.5 -0.5   0.000%   0.045%
    8    2.2  0.5 -0.5   0.007%   0.000%
    9    3.2  0.5 -0.5   0.000%   0.087%
   10    4.2  0.5 -0.5   0.000%  62.577%
   11    5.2  0.5 -0.5   4.945%   0.000%
   12    6.2  0.5 -0.5   0.000%  32.340%


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

              2       6      246.01       700     1000      520     2100     2140     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *      6721.05   5870.81    847.67      1.19      0.17      0.78
 REAL TIME  *      6806.99 SEC
 DISK USED  *       283.27 MB (local),        4.50 GB (total)
 SF USED    *         2.58 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCVTZ-PP energy=   -172.037777568646

              CI           MULTI         RHF-SCF
   -171.98946661   -171.40902727   -171.33119886
 **********************************************************************************************************************************
 Molpro calculation terminated
