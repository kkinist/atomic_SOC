
 Working directory              : /wrk/irikura/molpro.dYM0mGgLcS/
 Global scratch directory       : /wrk/irikura/molpro.dYM0mGgLcS/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.dYM0mGgLcS/

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
 
 basis=aug-cc-pwCV5Z-PP
 
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
 Commands initialized (846), CPU time= 0.01 sec, 717 directives.
 Default parameters read. Elapsed time= 0.20 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2023.2 linked Fri Sep 22 03:27:09 2023


 **********************************************************************************************************************************
 LABEL *   Tl SO-CI                                                                                                                                                      
  (32 PROC) 64 bit mpp version                                                           DATE: 20-Mar-24          TIME: 18:02:48  
 **********************************************************************************************************************************

 SHA1:             3c61bfe44d37c8635c785372c339f5cbdd4e4b59
 **********************************************************************************************************************************

 Memory per process:      1500 MW
 Total memory per node:  24000 MW

 GA preallocation disabled
 GA check disabled

 Variable memory set to 1500.0 MW


 ZSYMEL=XYZ

 SETTING BASIS          =    AUG-CC-PWCV5Z-PP

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
 Library entry TL     S aug-cc-pwCV5Z-PP     selected for orbital group  1
 Library entry TL     P aug-cc-pwCV5Z-PP     selected for orbital group  1
 Library entry TL     D aug-cc-pwCV5Z-PP     selected for orbital group  1
 Library entry TL     F aug-cc-pwCV5Z-PP     selected for orbital group  1
 Library entry TL     G aug-cc-pwCV5Z-PP     selected for orbital group  1
 Library entry TL     H aug-cc-pwCV5Z-PP     selected for orbital group  1
 Library entry TL     I aug-cc-pwCV5Z-PP     selected for orbital group  1


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
 NUMBER OF PRIMITIVE AOS:         459
 NUMBER OF SYMMETRY AOS:          327
 NUMBER OF CONTRACTIONS:          265   (  129Ag  +  136Au  )
 NUMBER OF INNER CORE ORBITALS:     0   (    0Ag  +    0Au  )
 NUMBER OF OUTER CORE ORBITALS:     9   (    6Ag  +    3Au  )
 NUMBER OF VALENCE ORBITALS:        4   (    1Ag  +    3Au  )


 LX: Ag           LY: Ag           LZ: Ag 


 NUCLEAR REPULSION ENERGY    0.00000000

 EXTRA SYMMETRY OF AOS IN SYMMETRY 1:   1 1 1 1 1 1 1 1 1 1   1 1 2 3 4 5 6 2 3 4   5 6 2 3 4 5 6 2 3 4   5 6 2 3 4 5 6 2 3 4
                                        5 6 2 3 4 5 6 2 3 4   5 6 2 3 4 5 6 2 3 4   5 6 7 8 91011121314  15 7 8 9101112131415
                                        7 8 9101112131415 7   8 9101112131415 7 8   9101112131415 7 8 9  10111213141516171819
                                       202122232425262728
 EXTRA SYMMETRY OF AOS IN SYMMETRY 2:   1 2 3 1 2 3 1 2 3 1   2 3 1 2 3 1 2 3 1 2   3 1 2 3 1 2 3 1 2 3   1 2 3 1 2 3 4 5 6 7
                                        8 910 4 5 6 7 8 910   4 5 6 7 8 910 4 5 6   7 8 910 4 5 6 7 8 9  10 4 5 6 7 8 910 4 5
                                        6 7 8 910 4 5 6 7 8   9101112131415161718  19202111121314151617  18192021111213141516
                                       17181920211112131415  161718192021


 Eigenvalues of metric

         1 0.229E-04 0.247E-04 0.247E-04 0.247E-04 0.247E-04 0.247E-04 0.409E-04 0.361E-03
         2 0.222E-04 0.222E-04 0.222E-04 0.591E-03 0.591E-03 0.591E-03 0.347E-02 0.347E-02


 Contracted 2-electron integrals neglected if value below      1.0D-13
 AO integral compression algorithm  1   Integral accuracy      1.0D-13

     660.341 MB (compressed) written to integral file ( 16.1%)

     Node minimum: 27.525 MB, node maximum: 54.002 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:   19555458.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   2  SEGMENT LENGTH:   15983448      RECORD LENGTH: 524288

 Memory used in sort:      16.54 MW

 SORT1 READ   511790813. AND WROTE     3352296. INTEGRALS IN     10 RECORDS. CPU TIME:     2.44 SEC, REAL TIME:     2.50 SEC
 SORT2 READ    53582267. AND WROTE   312900871. INTEGRALS IN   3040 RECORDS. CPU TIME:     0.52 SEC, REAL TIME:     0.58 SEC

 Node minimum:    19543292.  Node maximum:    19581721. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      19       30.46       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         8.47      8.10
 REAL TIME  *         9.73 SEC
 DISK USED  *        30.87 MB (local),        1.63 GB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 Program * Restricted Hartree-Fock

 Orbital guess generated from atomic densities. Full valence occupancy:    7   6

 Initial occupancy:   4   6

 NELEC=   20   SYM=1   MS2= 0   THRE=1.0D-09   THRD=1.0D-06   THRG=1.0D-06  HFMA2=F  DIIS_START=2   DIIS_MAX=10   DIIS_INCORE=F

 Level shifts:    0.00 (CLOSED)    0.00 (OPEN)    0.30 (GAP_MIN)

 ITER           ETOT              DE          GRAD        DDIFF     DIIS  NEXP   TIME(IT)  TIME(TOT)  DIAG
   1     -128.23830661    -128.23830661     0.00D+00     0.92D-01     0     0       0.15      0.30    start
   2     -164.29839505     -36.06008845     0.11D+00     0.14D+00     1     0       0.11      0.41    diag
   3     -169.77620697      -5.47781191     0.11D+00     0.71D-01     2     0       0.10      0.51    diag
   4     -171.27854896      -1.50234199     0.45D-01     0.37D-01     3     0       0.10      0.61    diag
   5     -171.32857530      -0.05002635     0.58D-02     0.81D-02     4     0       0.11      0.72    diag
   6     -171.33107585      -0.00250054     0.21D-02     0.14D-02     5     0       0.10      0.82    diag
   7     -171.33128887      -0.00021302     0.54D-03     0.27D-03     6     0       0.11      0.93    diag
   8     -171.33129115      -0.00000228     0.60D-04     0.44D-04     7     0       0.16      1.09    fixocc
   9     -171.33129124      -0.00000009     0.10D-04     0.98D-05     8     0       0.16      1.25    diag
  10     -171.33129124      -0.00000000     0.44D-06     0.94D-06     9     0       0.10      1.35    diag/orth
  11     -171.33129124       0.00000000     0.18D-07     0.65D-07     0     0       0.10      1.45    diag

 Final occupancy:   7   3

 !RHF STATE 1.1 Energy               -171.331291236284
  RHF One-electron energy            -295.976710362018
  RHF Two-electron energy             124.645419125734
  RHF Kinetic energy                   56.458774825834
  RHF Nuclear energy                    0.000000000000
  RHF Virial quotient                  -3.034626446727

 !RHF STATE 1.1 Dipole moment           0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 ELECTRON ORBITALS
 =================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -5.91019     1  1  s    1.00007
    2.1     2.00000    -1.10793     1  1  d0  -0.39105    1  1  d2+  0.82283    1  1  d1-  0.41184
    3.1     2.00000    -1.10793     1  1  d0   0.82230    1  1  d1+ -0.30726    1  1  d2+  0.43194
    4.1     2.00000    -1.10793     1  1  d0  -0.35617    1  1  d2-  0.71045    1  1  d1+ -0.58464
    5.1     2.00000    -1.10793     1  1  d1+ -0.38585    1  1  d2+ -0.36434    1  1  d1-  0.82660
    6.1     2.00000    -1.10793     1  1  d2-  0.67151    1  1  d1+  0.64562    1  1  d1-  0.34414
    7.1     2.00000    -0.68792     1  1  s   -0.38277    1  5  s    0.64945    1  6  s    0.40725    1 11  s   -0.25974
    1.2     2.00000    -3.73506     1  1  px  -0.29836    1  1  py  -0.67089    1  1  pz   0.67656
    2.2     2.00000    -3.73506     1  1  px   0.92565    1  1  py  -0.37213
    3.2     2.00000    -3.73506     1  1  py   0.63896    1  1  pz   0.73320


 HOMO      7.1    -0.687919 =     -18.7192eV
 LUMO      4.2    -0.176433 =      -4.8010eV
 LUMO-HOMO         0.511485 =      13.9182eV

 Orbitals saved in record  2100.2


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      19       30.46       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    

              2       4        0.96       700     1000      520     2100   
                                         GEOM     BASIS   MCVARS     RHF  

 PROGRAMS   *        TOTAL   RHF-SCF       INT
 CPU TIMES  *         9.94      1.46      8.10
 REAL TIME  *        11.29 SEC
 DISK USED  *        33.98 MB (local),        1.68 GB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of closed-shell orbitals:   9 (    6    3)
 Number of active  orbitals:        8 (    2    6)
 Number of external orbitals:     248 (  121  127)

 State symmetry 1

 Number of active electrons:   3    Spin symmetry=Doublet   Space symmetry=2
 Number of states:             6
 Number of CSFs:              94   (120 determinants, 224 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  
 *** IN SYMMETRY 1 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.525D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.558D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.626D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.554D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.645D+00 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 5 2 3 6 4 1 1 6 4   2 5 3 1 5 2 3 6 4 1  1415 911 7101312 8 2   5 3 6 4141011 7 912
                                        81315 1 5 2 3 6 414  15 910 7 8111213 5 4   2 6 3 1141511 9 710  13 81218202326272825
                                       191621172422 6 4 2 5   3 114151110 7 913 8  12 6 4 2 3 51415 910   7 8111213 1 2 3 5 4
                                        6 1 3 2 5 6 4 1 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.589D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.308D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.600D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.585D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.308D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.597D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.544D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.307D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  9 SYMMETRY CONTAMINATION OF 0.594D+00 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 1 2 3 1 2 3 1 2 2   1 3 810 4 6 5 9 7 3   1 2 710 6 9 4 5 8 2   1 3 810 6 4 5 9 714
                                       16211319111218201517   810 4 9 6 7 5 3 1 3  16141318191112172115  20 7 9 6 4 510 8 2 1
                                        3141621131911121820  171510 9 6 4 5 8 7 2   1 3 810 6 4 5 9 714  16211311181917121520
                                        810 6 4 5 9 7 2 1 3   2 3 1 2 1 2

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-06 (energy)

 Weight factors for state symmetry  1:    0.16667   0.16667   0.16667   0.16667   0.16667   0.16667
 
 Number of orbital rotations:  2141  ( 30 closed/active, 1107 closed/virtual, 0 active/active, 1004 active/virtual )
 Total number of variables:    2861
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1    7    5    0   -171.46231986    -171.98601217   -0.52369230    5.95935544 0.04297477 0.00000000  0.58E+00      2.20
   2    6    5    0   -171.00321536    -171.46729056   -0.46407520   11.97237020 0.00042910 0.00000000  0.48E+00      4.35
   3    8    7    0   -171.46731689    -171.46732387   -0.00000698    0.00523940 0.00000047 0.00000000  0.37E-01      6.55
   4    6    6    0   -171.46732387    -171.46732387   -0.00000000    0.00000229 0.00000000 0.00000000  0.36E-04      8.47

 CONVERGENCE REACHED!  Final gradient:    0.00000000 ( 0.33E-09)
                       Final energy:   -171.46732387
 
 Results for state 1.2
 =====================
 !MCSCF STATE 1.2 Energy                      -171.524563811804
 Nuclear energy                                  0.00000000
 Kinetic energy                                 56.67548716
 One electron energy                          -301.62804542
 Two electron energy                           130.10348161
 Virial ratio                                    4.02643299
 
 !MCSCF STATE 1.2 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.2
 =====================
 !MCSCF STATE 2.2 Energy                      -171.524563811803
 Nuclear energy                                  0.00000000
 Kinetic energy                                 56.67548716
 One electron energy                          -301.62804542
 Two electron energy                           130.10348161
 Virial ratio                                    4.02643299
 
 !MCSCF STATE 2.2 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.2
 =====================
 !MCSCF STATE 3.2 Energy                      -171.524563811792
 Nuclear energy                                  0.00000000
 Kinetic energy                                 56.67548716
 One electron energy                          -301.62804542
 Two electron energy                           130.10348161
 Virial ratio                                    4.02643299
 
 !MCSCF STATE 3.2 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.2
 =====================
 !MCSCF STATE 4.2 Energy                      -171.410083920879
 Nuclear energy                                  0.00000000
 Kinetic energy                                 56.46361114
 One electron energy                          -298.10792111
 Two electron energy                           126.69783719
 Virial ratio                                    4.03576198
 
 !MCSCF STATE 4.2 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.2
 =====================
 !MCSCF STATE 5.2 Energy                      -171.410083920869
 Nuclear energy                                  0.00000000
 Kinetic energy                                 56.46361114
 One electron energy                          -298.10792112
 Two electron energy                           126.69783720
 Virial ratio                                    4.03576198
 
 !MCSCF STATE 5.2 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.2
 =====================
 !MCSCF STATE 6.2 Energy                      -171.410083920860
 Nuclear energy                                  0.00000000
 Kinetic energy                                 56.46361114
 One electron energy                          -298.10792112
 Two electron energy                           126.69783720
 Virial ratio                                    4.03576198
 
 !MCSCF STATE 6.2 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 !MCSCF expec                      <1.2|LXLX|1.2>     0.000000024210
 !MCSCF expec                      <2.2|LXLX|2.2>     0.999999965205
 !MCSCF expec                      <3.2|LXLX|3.2>     0.999999997281
 !MCSCF expec                      <4.2|LXLX|4.2>     0.000000043934
 !MCSCF expec                      <5.2|LXLX|5.2>     0.999999999123
 !MCSCF expec                      <6.2|LXLX|6.2>     0.999999963670
 
 !MCSCF expec                      <1.2|LYLY|1.2>     0.999999994931
 !MCSCF expec                      <2.2|LYLY|2.2>     0.999999999997
 !MCSCF expec                      <3.2|LYLY|3.2>     0.000000002777
 !MCSCF expec                      <4.2|LYLY|4.2>     0.999999957511
 !MCSCF expec                      <5.2|LYLY|5.2>     0.999999999984
 !MCSCF expec                      <6.2|LYLY|6.2>     0.000000037117
 
 !MCSCF expec                      <1.2|LZLZ|1.2>     0.999999980860
 !MCSCF expec                      <2.2|LZLZ|2.2>     0.000000034798
 !MCSCF expec                      <3.2|LZLZ|3.2>     0.999999999942
 !MCSCF expec                      <4.2|LZLZ|4.2>     0.999999998555
 !MCSCF expec                      <5.2|LZLZ|5.2>     0.000000000894
 !MCSCF expec                      <6.2|LZLZ|6.2>     0.999999999213
 
 !MCSCF expec                      <1.2|L**2|1.2>     2.000000000000
 !MCSCF expec                      <2.2|L**2|2.2>     2.000000000000
 !MCSCF expec                      <3.2|L**2|3.2>     2.000000000000
 !MCSCF expec                      <4.2|L**2|4.2>     2.000000000000
 !MCSCF expec                      <5.2|L**2|5.2>     2.000000000000
 !MCSCF expec                      <6.2|L**2|6.2>     2.000000000000
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 2 6 4 3 5 1 1 1 2   6 4 3 5 2 4 6 3 5 1  11 7 9 81214151310 2   6 4 3 511 7 9 81214
                                       151310 1 2 6 4 3 511   7 9 81214151310 2 6   4 5 3 111 7 9 81215  14131027251721282326
                                       241920182216 2 6 4 5   3 111 7 9 812141513  10 2 6 4 5 311 7 9 8  1214151310 1 5 2 4 6
                                        3 1 5 2 4 6 3 1 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 2 1 1 2 3 2 3 1 2   3 1 6 4 5 810 7 9 3   2 1 6 5 4 810 7 9 3   2 1 5 6 4 810 9 712
                                       19112113141615172018   5 6 4 810 7 9 3 2 1  12191121131416151720  18 5 6 4 810 7 9 3 2
                                        1121911211314161517  2018 5 6 410 8 7 9 3   2 1 5 6 410 8 9 712  19112113141615171820
                                        5 6 410 8 7 9 3 2 1   3 2 1 3 1 2
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -5.71927     1  1  s    0.99859
    2.1     2.00000    -0.91706     1  1  d0   1.00129
    3.1     2.00000    -0.91706     1  1  d1-  1.00129
    4.1     2.00000    -0.91706     1  1  d1+  1.00129
    5.1     2.00000    -0.91706     1  1  d2-  1.00129
    6.1     2.00000    -0.91706     1  1  d2+  1.00129
    7.1     1.95120    -0.50476     1  1  s   -0.37342    1  5  s    0.57646    1  6  s    0.44635
    8.1     0.00369     0.30019     1  1  s    0.42297    1  3  s    0.43578    1  4  s   -1.38147    1  5  s   -1.11460
                                    1  6  s    1.27486    1  7  s    0.49945    1 11  s    0.38731
    1.2     2.00000    -3.54432     1  1  pz   0.99920
    2.2     2.00000    -3.54432     1  1  py   0.99920
    3.2     2.00000    -3.54432     1  1  px   0.99920
    4.2     0.18174    -0.01852     1  1  px  -0.32838    1  5  px   0.52280    1  6  px   0.42093
    5.2     0.18174    -0.01852     1  1  py  -0.32838    1  5  py   0.52280    1  6  py   0.42093
    6.2     0.18174    -0.01852     1  1  pz  -0.32838    1  5  pz   0.52280    1  6  pz   0.42093
    7.2     0.16663     0.01222     1  6  py   0.27110    1  7  py  -0.40588    1 12  py  -0.80599
    8.2     0.16663     0.01222     1  6  pz  -0.27110    1  7  pz   0.40588    1 12  pz   0.80599
    9.2     0.16663     0.01222     1  6  px  -0.27110    1  7  px   0.40588    1 12  px   0.80599
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 2
 =============================
 
 20 a00000      0.95256409      0.00013179     -0.00006782     -0.26170888     -0.00000995     -0.00005395
 20 0a0000      0.00006782     -0.00000160      0.95256408     -0.00005395     -0.00000106      0.26170895
 20 00a000     -0.00013179      0.95256407      0.00000161      0.00000995     -0.26170899     -0.00000105
 20 00000a      0.26149915      0.00003618     -0.00001862      0.95110579      0.00003616      0.00019605
 20 0000a0     -0.00003618      0.26149925      0.00000044     -0.00003616      0.95110579      0.00000383
 20 000a00     -0.00001862      0.00000044     -0.26149922     -0.00019605     -0.00000384      0.95110578
 00 a20000     -0.09817564     -0.00001358      0.00000699      0.02838165      0.00000108      0.00000585
 00 a02000     -0.09817564     -0.00001358      0.00000699      0.02838165      0.00000108      0.00000585
 00 2a0000     -0.00000699      0.00000016     -0.09817563      0.00000585      0.00000011     -0.02838165
 00 0a2000     -0.00000699      0.00000016     -0.09817563      0.00000585      0.00000011     -0.02838165
 00 02a000      0.00001358     -0.09817563     -0.00000017     -0.00000108      0.02838166      0.00000011
 00 20a000      0.00001358     -0.09817563     -0.00000017     -0.00000108      0.02838166      0.00000011
 00 00200a     -0.02400743     -0.00000332      0.00000171     -0.08694359     -0.00000331     -0.00001792
 00 02000a     -0.02400743     -0.00000332      0.00000171     -0.08694359     -0.00000331     -0.00001792
 00 0200a0      0.00000332     -0.02400744     -0.00000004      0.00000331     -0.08694359     -0.00000035
 00 2000a0      0.00000332     -0.02400744     -0.00000004      0.00000331     -0.08694359     -0.00000035
 00 002a00      0.00000171     -0.00000004      0.02400744      0.00001792      0.00000035     -0.08694359
 00 200a00      0.00000171     -0.00000004      0.02400744      0.00001792      0.00000035     -0.08694359
 00 0020a0      0.00000323     -0.02332365     -0.00000004      0.00000327     -0.08604119     -0.00000035
 00 020a00      0.00000166     -0.00000004      0.02332365      0.00001774      0.00000035     -0.08604119
 00 20000a     -0.02332365     -0.00000323      0.00000166     -0.08604119     -0.00000327     -0.00001774
 
 Energy:     -171.52456381   -171.52456381   -171.52456381   -171.41008392   -171.41008392   -171.41008392
 


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       93.78       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       5        2.42       700     1000      520     2100     2140   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF   

 PROGRAMS   *        TOTAL     MULTI   RHF-SCF       INT
 CPU TIMES  *        18.51      8.56      1.46      8.10
 REAL TIME  *        21.44 SEC
 DISK USED  *        96.32 MB (local),        2.65 GB (total)
 SF USED    *       169.33 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

         ENERGY     LL
    -171.5245638   2.0
    -171.5245638   2.0
    -171.5245638   2.0
    -171.4100839   2.0
    -171.4100839   2.0
    -171.4100839   2.0
                                                  


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
 Number of external orbitals:     248 ( 121 127 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Valence orbitals related to previous ones by unitary transformation. Operators transformed.


 Number of p-space configurations:   6

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -171.52456381
     2      -171.52456381
     3      -171.52456381
     4      -171.41008392
     5      -171.41008392
     6      -171.41008392

 Number of blocks in overlap matrix:   563   Smallest eigenvalue:  0.90D-06
 Number of N-2 electron functions:    1330
 Number of N-1 electron functions:   77473

 Number of internal configurations:                53272
 Number of singly external configurations:       9607051
 Number of doubly external configurations:      20456146
 Total number of contracted configurations:     30116469
 Total number of uncontracted configurations:  378484749

 Diagonal Coupling coefficients finished.               Storage:  22137764 words, CPU-Time:     24.95 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   3646625 words, CPU-time:      4.29 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -171.52456381     0.00000000    -0.92275819  0.53D-01  0.11D+00    41.16
    1     2     2     1.00000000     0.00000000  -171.52456381     0.00000000    -0.92270962  0.53D-01  0.11D+00    41.16
    1     3     3     1.00000000     0.00000000  -171.52456381     0.00000000    -0.92274336  0.53D-01  0.11D+00    41.16
    1     4     4     1.00000000     0.00000000  -171.41008392    -0.00000000    -0.89718414  0.41D-01  0.11D+00    41.16
    1     5     5     1.00000000     0.00000000  -171.41008392     0.00000000    -0.89717627  0.41D-01  0.11D+00    41.16
    1     6     6     1.00000000     0.00000000  -171.41008392     0.00000000    -0.89718186  0.41D-01  0.11D+00    41.16
    2     1     1     1.10438162    -0.73527487  -172.25983868    -0.73527487    -0.02486447  0.37D-02  0.18D-02   975.71
    2     2     2     1.10440998    -0.73524421  -172.25980802    -0.73524421    -0.02489884  0.37D-02  0.18D-02   975.71
    2     3     3     1.10441322    -0.73523399  -172.25979781    -0.73523399    -0.02491180  0.37D-02  0.18D-02   975.71
    2     4     4     1.09539659    -0.72656267  -172.13664659    -0.72656267    -0.02197091  0.26D-02  0.16D-02   975.71
    2     5     5     1.09540161    -0.72655819  -172.13664212    -0.72655819    -0.02197631  0.26D-02  0.16D-02   975.71
    2     6     6     1.09540221    -0.72655714  -172.13664107    -0.72655714    -0.02197774  0.26D-02  0.16D-02   975.71
    3     1     1     1.09086239    -0.75833807  -172.28290188    -0.02306320    -0.00035349  0.56D-04  0.32D-04  1909.37
    3     2     2     1.09086158    -0.75833736  -172.28290117    -0.02309315    -0.00035415  0.56D-04  0.32D-04  1909.37
    3     3     3     1.09086187    -0.75833706  -172.28290087    -0.02310307    -0.00035445  0.56D-04  0.32D-04  1909.37
    3     4     4     1.08517356    -0.74685188  -172.15693580    -0.02028921    -0.00025547  0.29D-04  0.20D-04  1909.37
    3     5     5     1.08517358    -0.74685173  -172.15693565    -0.02029354    -0.00025562  0.29D-04  0.20D-04  1909.37
    3     6     6     1.08517365    -0.74685170  -172.15693562    -0.02029455    -0.00025566  0.29D-04  0.20D-04  1909.37
    4     1     1     1.09052168    -0.75869277  -172.28325658    -0.00035470    -0.00001401  0.36D-05  0.12D-05  2840.94
    4     2     2     1.09052170    -0.75869276  -172.28325657    -0.00035540    -0.00001402  0.36D-05  0.12D-05  2840.94
    4     3     3     1.09052168    -0.75869276  -172.28325657    -0.00035570    -0.00001401  0.36D-05  0.12D-05  2840.94
    4     4     4     1.08528203    -0.74709949  -172.15718341    -0.00024761    -0.00000757  0.17D-05  0.59D-06  2840.94
    4     5     5     1.08528203    -0.74709949  -172.15718341    -0.00024776    -0.00000757  0.17D-05  0.59D-06  2840.94
    4     6     6     1.08528203    -0.74709949  -172.15718341    -0.00024779    -0.00000757  0.17D-05  0.59D-06  2840.94
    5     1     1     1.09047671    -0.75870835  -172.28327217    -0.00001559    -0.00000057  0.79D-07  0.62D-07  3773.16
    5     2     2     1.09047671    -0.75870835  -172.28327217    -0.00001559    -0.00000057  0.79D-07  0.62D-07  3773.16
    5     3     3     1.09047684    -0.75870835  -172.28327217    -0.00001559    -0.00000057  0.79D-07  0.62D-07  3773.16
    5     4     4     1.08530742    -0.74710762  -172.15719154    -0.00000813    -0.00000029  0.46D-07  0.30D-07  3773.16
    5     5     5     1.08530742    -0.74710762  -172.15719154    -0.00000813    -0.00000029  0.46D-07  0.30D-07  3773.16
    5     6     6     1.08530743    -0.74710762  -172.15719154    -0.00000813    -0.00000029  0.46D-07  0.30D-07  3773.16
    6     1     1     1.09047151    -0.75870897  -172.28327278    -0.00000061    -0.00000002  0.33D-08  0.25D-08  4705.22
    6     2     2     1.09047151    -0.75870897  -172.28327278    -0.00000061    -0.00000002  0.33D-08  0.25D-08  4705.22
    6     3     3     1.09047151    -0.75870897  -172.28327278    -0.00000061    -0.00000002  0.33D-08  0.25D-08  4705.22
    6     4     4     1.08531338    -0.74710794  -172.15719186    -0.00000032    -0.00000001  0.20D-08  0.13D-08  4705.22
    6     5     5     1.08531338    -0.74710794  -172.15719186    -0.00000032    -0.00000001  0.19D-08  0.13D-08  4705.22
    6     6     6     1.08531339    -0.74710794  -172.15719186    -0.00000032    -0.00000001  0.19D-08  0.13D-08  4705.22
    7     1     1     1.09047389    -0.75870899  -172.28327280    -0.00000002    -0.00000000  0.11D-09  0.16D-09  5636.17
    7     2     2     1.09047389    -0.75870899  -172.28327280    -0.00000002    -0.00000000  0.11D-09  0.16D-09  5636.17
    7     3     3     1.09047389    -0.75870899  -172.28327280    -0.00000002    -0.00000000  0.11D-09  0.16D-09  5636.17
    7     4     4     1.08531502    -0.74710795  -172.15719187    -0.00000001    -0.00000000  0.67D-10  0.78D-10  5636.17
    7     5     5     1.08531502    -0.74710795  -172.15719187    -0.00000001    -0.00000000  0.67D-10  0.78D-10  5636.17
    7     6     6     1.08531502    -0.74710795  -172.15719187    -0.00000001    -0.00000000  0.67D-10  0.78D-10  5636.17


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.6%
 S   0.4%  59.9%
 P   0.2%  16.3%  12.1%

 Initialization:   0.5%
 Other:            9.9%

 Total CPU:     5636.2 seconds
 =====================================



 Wavefunction saved on  5201.2

 Reference coefficients greater than 0.0500000
 =============================================
 22222220222/00000          -0.0100880   0.0066141   0.9228781  -0.2169182   0.0000005   0.0014184
 22222220222000/00          -0.2153459  -0.0251365  -0.0021738   0.0000021   0.9217616  -0.0000040
 2222222022200000/          -0.0023699   0.0015538   0.2168002   0.9217419  -0.0000021  -0.0060271
 222222202220000/0          -0.0251188   0.2153513  -0.0018180   0.0060271   0.0000040   0.9217419
 2222222022200/000          -0.1069260   0.9167095  -0.0077387  -0.0014184  -0.0000009  -0.2169183
 222222202220/0000           0.9166867   0.1070015   0.0092535   0.0000005   0.2169229  -0.0000009
 22222200222/02000           0.0009072  -0.0005948  -0.0829903   0.0207826  -0.0000000  -0.0001359
 22222200222/20000           0.0009072  -0.0005948  -0.0829903   0.0207826  -0.0000000  -0.0001359
 2222220022202/000           0.0096154  -0.0824356   0.0006959   0.0001359   0.0000001   0.0207826
 2222220022220/000           0.0096154  -0.0824356   0.0006959   0.0001359   0.0000001   0.0207826
 222222002220/2000          -0.0824335  -0.0096222  -0.0008321  -0.0000000  -0.0207830   0.0000001
 222222002222/0000          -0.0824335  -0.0096222  -0.0008321  -0.0000000  -0.0207830   0.0000001
 22222200222002/00           0.0172527   0.0020138   0.0001742  -0.0000002  -0.0735753   0.0000003
 22222200222200/00           0.0172527   0.0020138   0.0001742  -0.0000002  -0.0735753   0.0000003
 2222220022200200/           0.0001899  -0.0001245  -0.0173692  -0.0735737   0.0000002   0.0004811
 222222002220200/0           0.0020124  -0.0172531   0.0001456  -0.0004811  -0.0000003  -0.0735737
 2222220022202000/           0.0001899  -0.0001245  -0.0173692  -0.0735737   0.0000002   0.0004811
 222222002222000/0           0.0020124  -0.0172531   0.0001456  -0.0004811  -0.0000003  -0.0735737
 22222200222020/00           0.0165426   0.0019310   0.0001670  -0.0000002  -0.0727043   0.0000003
 222222002220020/0           0.0019296  -0.0165430   0.0001397  -0.0004754  -0.0000003  -0.0727028
 2222220022220000/           0.0001821  -0.0001194  -0.0166544  -0.0727028   0.0000002   0.0004754
 222222/\222000/00           0.0167103   0.0019505   0.0001687  -0.0000002  -0.0685344   0.0000003
 222222/\2220000/0           0.0019492  -0.0167107   0.0001411  -0.0004481  -0.0000003  -0.0685329
 222222/\22200000/           0.0001839  -0.0001206  -0.0168231  -0.0685329   0.0000002   0.0004481

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1          -0.010442   -0.110682    0.948884    0.000383    0.004055    0.034763
 2           0.006846    0.948907    0.110760   -0.000251   -0.034764    0.004058
 3           0.955293   -0.008010    0.009579   -0.034998    0.000293    0.000351
 4           0.036272    0.000237   -0.000000    0.957253    0.006259    0.000002
 5          -0.000000    0.000000   -0.036273   -0.000002    0.000004    0.957273
 6          -0.000237    0.036272    0.000000   -0.006259    0.957253   -0.000004

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.956015    0.000000   -0.000000   -0.000007   -0.000596   -0.000069
 2           0.000000    0.956015    0.000000    0.000008   -0.000070    0.000596
 3          -0.000000    0.000000    0.956015    0.000600   -0.000006   -0.000009
 4          -0.000007    0.000008    0.000600    0.957960   -0.000000    0.000000
 5          -0.000596   -0.000070   -0.000006   -0.000000    0.957960   -0.000000
 6          -0.000069    0.000596   -0.000009    0.000000   -0.000000    0.957960


 RESULTS FOR STATE 1.2
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.94888385 (fixed)   0.95656983 (relaxed)   0.95601502 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00335658   -0.00473269   -0.60444760
 Singles      0.01885469   -0.07050620   -0.07751329
 Pairs        0.07192289   -0.02940269   -0.07674810
 Total        1.09413415   -0.10464158   -0.75870899
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -171.52440506
 Nuclear energy                         0.00000000
 Kinetic energy                        57.10460179
 One electron energy                 -301.14948624
 Two electron energy                  128.86621343
 Virial quotient                       -3.01697705
 Correlation energy                    -0.75886774
 !MRCI STATE 1.2 Energy              -172.283272803310

 Properties without orbital relaxation:

 !MRCI STATE 1.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -172.35470817 (Davidson, fixed reference)
 Cluster corrected energies          -172.35374530 (Davidson, relaxed reference)
 Cluster corrected energies          -172.35470817 (Davidson, rotated reference)

 Cluster corrected energies          -172.35273586 (Pople, fixed reference)
 Cluster corrected energies          -172.35172627 (Pople, relaxed reference)
 Cluster corrected energies          -172.35273586 (Pople, rotated reference)



 RESULTS FOR STATE 2.2
 =====================

 Coefficient of reference function:   C(0) = 0.94890749 (fixed)   0.95656983 (relaxed)   0.95601502 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00335658   -0.00473269   -0.62818383
 Singles      0.01885469   -0.07050620   -0.07751329
 Pairs        0.07192289   -0.00343207   -0.05301187
 Total        1.09413415   -0.07867096   -0.75870899
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -171.52440506
 Nuclear energy                         0.00000000
 Kinetic energy                        57.10460210
 One electron energy                 -301.14948656
 Two electron energy                  128.86621375
 Virial quotient                       -3.01697703
 Correlation energy                    -0.75886774
 !MRCI STATE 2.2 Energy              -172.283272803288

 Properties without orbital relaxation:

 !MRCI STATE 2.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -172.35470817 (Davidson, fixed reference)
 Cluster corrected energies          -172.35374530 (Davidson, relaxed reference)
 Cluster corrected energies          -172.35470817 (Davidson, rotated reference)

 Cluster corrected energies          -172.35273586 (Pople, fixed reference)
 Cluster corrected energies          -172.35172627 (Pople, relaxed reference)
 Cluster corrected energies          -172.35273586 (Pople, rotated reference)



 RESULTS FOR STATE 3.2
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.95529268 (fixed)   0.95656983 (relaxed)   0.95601502 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00335658   -0.00473269   -0.63104935
 Singles      0.01885469   -0.07050620   -0.07751329
 Pairs        0.07192288   -0.00029680   -0.05014634
 Total        1.09413415   -0.07553569   -0.75870899
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -171.52440506
 Nuclear energy                         0.00000000
 Kinetic energy                        57.10460171
 One electron energy                 -301.14948621
 Two electron energy                  128.86621341
 Virial quotient                       -3.01697705
 Correlation energy                    -0.75886774
 !MRCI STATE 3.2 Energy              -172.283272802387

 Properties without orbital relaxation:

 !MRCI STATE 3.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -172.35470817 (Davidson, fixed reference)
 Cluster corrected energies          -172.35374530 (Davidson, relaxed reference)
 Cluster corrected energies          -172.35470817 (Davidson, rotated reference)

 Cluster corrected energies          -172.35273586 (Pople, fixed reference)
 Cluster corrected energies          -172.35172627 (Pople, relaxed reference)
 Cluster corrected energies          -172.35273586 (Pople, rotated reference)



 RESULTS FOR STATE 4.2
 =====================

 Coefficient of reference function:   C(0) = 0.95725286 (fixed)   0.95856398 (relaxed)   0.95796011 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00403613   -0.00593203   -0.62482587
 Singles      0.01671574   -0.06925190   -0.07501128
 Pairs        0.06894362   -0.00000154   -0.04727081
 Total        1.08969549   -0.07518547   -0.74710795
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -171.41024267
 Nuclear energy                         0.00000000
 Kinetic energy                        56.96233017
 One electron energy                 -297.65819189
 Two electron energy                  125.50100002
 Virial quotient                       -3.02229897
 Correlation energy                    -0.74694920
 !MRCI STATE 4.2 Energy              -172.157191871012

 Properties without orbital relaxation:

 !MRCI STATE 4.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -172.22418985 (Davidson, fixed reference)
 Cluster corrected energies          -172.22316463 (Davidson, relaxed reference)
 Cluster corrected energies          -172.22418985 (Davidson, rotated reference)

 Cluster corrected energies          -172.22209681 (Pople, fixed reference)
 Cluster corrected energies          -172.22102986 (Pople, relaxed reference)
 Cluster corrected energies          -172.22209681 (Pople, rotated reference)



 RESULTS FOR STATE 5.2
 =====================

 Maximum overlap with reference state  6

 Coefficient of reference function:   C(0) = 0.95727333 (fixed)   0.95856398 (relaxed)   0.95796011 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00403613   -0.00593203   -0.00863652
 Singles      0.01671574   -0.06925190   -0.07501128
 Pairs        0.06894362   -0.67146030   -0.66346016
 Total        1.08969549   -0.74664423   -0.74710795
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -171.41024267
 Nuclear energy                         0.00000000
 Kinetic energy                        56.96233021
 One electron energy                 -297.65819201
 Two electron energy                  125.50100014
 Virial quotient                       -3.02229897
 Correlation energy                    -0.74694920
 !MRCI STATE 5.2 Energy              -172.157191870930

 Properties without orbital relaxation:

 !MRCI STATE 5.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -172.22418984 (Davidson, fixed reference)
 Cluster corrected energies          -172.22316463 (Davidson, relaxed reference)
 Cluster corrected energies          -172.22418984 (Davidson, rotated reference)

 Cluster corrected energies          -172.22209680 (Pople, fixed reference)
 Cluster corrected energies          -172.22102986 (Pople, relaxed reference)
 Cluster corrected energies          -172.22209680 (Pople, rotated reference)



 RESULTS FOR STATE 6.2
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.95725287 (fixed)   0.95856398 (relaxed)   0.95796011 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00403613   -0.00593203   -0.62482995
 Singles      0.01671574   -0.06925190   -0.07501128
 Pairs        0.06894362    0.00000290   -0.04726672
 Total        1.08969549   -0.07518102   -0.74710795
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -171.41024267
 Nuclear energy                         0.00000000
 Kinetic energy                        56.96233013
 One electron energy                 -297.65819186
 Two electron energy                  125.50099999
 Virial quotient                       -3.02229897
 Correlation energy                    -0.74694920
 !MRCI STATE 6.2 Energy              -172.157191870626

 Properties without orbital relaxation:

 !MRCI STATE 6.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -172.22418985 (Davidson, fixed reference)
 Cluster corrected energies          -172.22316463 (Davidson, relaxed reference)
 Cluster corrected energies          -172.22418985 (Davidson, rotated reference)

 Cluster corrected energies          -172.22209681 (Pople, fixed reference)
 Cluster corrected energies          -172.22102986 (Pople, relaxed reference)
 Cluster corrected energies          -172.22209681 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       93.78       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       6     1391.09       700     1000      520     2100     2140     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *      5861.49   5842.97      8.56      1.46      8.10
 REAL TIME  *      5983.03 SEC
 DISK USED  *         1.45 GB (local),       24.35 GB (total)
 SF USED    *        13.73 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =      -172.35470817  AU                              
 SETTING HLSDIAG(2)     =      -172.35470817  AU                              
 SETTING HLSDIAG(3)     =      -172.35470817  AU                              
 SETTING HLSDIAG(4)     =      -172.22418985  AU                              
 SETTING HLSDIAG(5)     =      -172.22418984  AU                              
 SETTING HLSDIAG(6)     =      -172.22418985  AU                              


         HLSDIAG
    -172.3547082
    -172.3547082
    -172.3547082
    -172.2241898
    -172.2241898
    -172.2241898
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Diagonal elements of H will be replaced by values from variable HLSDIAG


   ******************************
   *** Spin-orbit calculation ***
   ******************************


   Spin-orbit matrix elements
   ==========================

 Wavefunction restored from record  5201.2  Symmetry=2  S= 0.5  NSTATE=   6

 Original energies:   -172.283273   -172.283273   -172.283273   -172.157192   -172.157192   -172.157192
 Replaced energies:   -172.354708   -172.354708   -172.354708   -172.224190   -172.224190   -172.224190



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=  -172.35470817

 Wigner-Eckart theorem used for  3 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00      -0.00     -25.61     296.10    -108.36
                            0.00      21.41    2536.74    -929.57      10.23       6.08       0.00   -2553.81      18.30       6.08

    2   2.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00      25.61       0.00   -2536.67     929.55
                          -21.41       0.00     295.89    -108.51      -6.71       0.71    2553.81       0.00      27.92       0.71

    3   3.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00    -296.10    2536.67       0.00     -13.97
                        -2536.74    -295.89       0.00      -9.39    -935.87       0.07     -18.30     -27.92      -0.00       0.06

    4   4.2  0.5  0.5       0.00       0.00       0.00   28645.46       0.00       0.00     108.36    -929.55      13.97      -0.00
                          929.57     108.51       9.39      -0.00     342.43      -0.00      -6.08      -0.71      -0.06      -0.00

    5   5.2  0.5  0.5       0.00       0.00       0.00       0.00   28645.46       0.00      -0.00       0.00       0.00      -0.00
                          -10.23       6.71     935.87    -342.43       0.00       2.24     108.43    -929.62       7.85       2.24

    6   6.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00   28645.46     -10.94      12.79     935.80    -342.44
                           -6.08      -0.71      -0.07       0.00      -2.24      -0.00    -929.57    -108.50      -9.38      -0.00

    7   1.2  0.5 -0.5      -0.00      25.61    -296.10     108.36      -0.00     -10.94       0.00       0.00       0.00       0.00
                           -0.00   -2553.81      18.30       6.08    -108.43     929.57      -0.00     -21.41   -2536.74     929.57

    8   2.2  0.5 -0.5     -25.61       0.00    2536.67    -929.55       0.00      12.79       0.00       0.00       0.00       0.00
                         2553.81      -0.00      27.92       0.71     929.62     108.50      21.41      -0.00    -295.89     108.51

    9   3.2  0.5 -0.5     296.10   -2536.67       0.00      13.97       0.00     935.80       0.00       0.00       0.00       0.00
                          -18.30     -27.92       0.00       0.06      -7.85       9.38    2536.74     295.89      -0.00       9.39

   10   4.2  0.5 -0.5    -108.36     929.55     -13.97      -0.00      -0.00    -342.44       0.00       0.00       0.00   28645.46
                           -6.08      -0.71      -0.06       0.00      -2.24       0.00    -929.57    -108.51      -9.39       0.00

   11   5.2  0.5 -0.5       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          108.43    -929.62       7.85       2.24       0.00     342.43      10.23      -6.71    -935.87     342.43

   12   6.2  0.5 -0.5      10.94     -12.79    -935.80     342.44      -0.00       0.00       0.00       0.00       0.00       0.00
                         -929.57    -108.50      -9.38      -0.00    -342.43      -0.00       6.08       0.71       0.07      -0.00


   Nr   State  S   Sz       11         12

    1   1.2  0.5  0.5       0.00      10.94
                         -108.43     929.57

    2   2.2  0.5  0.5      -0.00     -12.79
                          929.62     108.50

    3   3.2  0.5  0.5      -0.00    -935.80
                           -7.85       9.38

    4   4.2  0.5  0.5       0.00     342.44
                           -2.24       0.00

    5   5.2  0.5  0.5       0.00      -0.00
                           -0.00     342.43

    6   6.2  0.5  0.5       0.00       0.00
                         -342.43       0.00

    7   1.2  0.5 -0.5       0.00       0.00
                          -10.23      -6.08

    8   2.2  0.5 -0.5       0.00       0.00
                            6.71      -0.71

    9   3.2  0.5 -0.5       0.00       0.00
                          935.87      -0.07

   10   4.2  0.5 -0.5       0.00       0.00
                         -342.43       0.00

   11   5.2  0.5 -0.5   28645.46       0.00
                           -0.00      -2.24

   12   6.2  0.5 -0.5       0.00   28645.46
                            2.24       0.00


 No symmetry adaption


 Spin-orbit eigenstates   (energies)
 ======================

     Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
              (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1  -172.37846343    -0.02375526    -5213.68      0.00000000        0.00      0.0000
     2  -172.37846343    -0.02375526    -5213.68      0.00000000        0.00      0.0000
     3  -172.34322198     0.01148619     2520.93      0.03524145     7734.60      0.9590
     4  -172.34322198     0.01148619     2520.93      0.03524145     7734.60      0.9590
     5  -172.34322198     0.01148619     2520.93      0.03524145     7734.60      0.9590
     6  -172.34322198     0.01148619     2520.93      0.03524145     7734.60      0.9590
     7  -172.22682914     0.12787903    28066.20      0.15163429    33279.88      4.1262
     8  -172.22682914     0.12787903    28066.20      0.15163429    33279.88      4.1262
     9  -172.22247876     0.13222941    29021.00      0.15598467    34234.68      4.2446
    10  -172.22247876     0.13222941    29021.00      0.15598467    34234.68      4.2446
    11  -172.22247876     0.13222941    29021.00      0.15598467    34234.68      4.2446
    12  -172.22247876     0.13222941    29021.00      0.15598467    34234.68      4.2446


 Eigenvectors of spin-orbit matrix
 =================================

  Basis states          Eigenvectors (columnwise)

   Nr   State  S   Sz        1             2             3             4             5             6             7             8

    1    1.2  0.5  0.5  -0.576358259   0.009303000  -0.212430382   0.474144353  -0.006110646  -0.629171785  -0.032522528   0.000481597
                        -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000

    2    2.2  0.5  0.5  -0.003821798  -0.236775747   0.732058297   0.329116525  -0.112110951   0.001942853  -0.000460016  -0.031065180
                         0.003648806   0.525532814   0.055665316   0.013482702  -0.075775428  -0.003461421  -0.000130198   0.009626677

    3    3.2  0.5  0.5  -0.000950819  -0.058907084   0.008060294   0.002513550  -0.058052666  -0.000263404  -0.000012678  -0.000856150
                        -0.572970375  -0.022568990  -0.146340597   0.244575505   0.076034018   0.758537179  -0.032356863  -0.003201009

    4    4.2  0.5  0.5  -0.000323582   0.003512024   0.000726438   0.000051854  -0.002104219   0.000251715   0.006401587  -0.022790694
                         0.032322658   0.000868204  -0.005147322   0.008654049   0.002651756   0.026818180  -0.573373275  -0.054389203

    5    5.2  0.5  0.5  -0.032326467  -0.001060825   0.004457144  -0.018003424   0.000694821   0.022090417   0.573402096   0.055499118
                        -0.000300353   0.003424986  -0.000176309  -0.000142008   0.000283685  -0.000254810   0.006018062  -0.019209256

    6    6.2  0.5  0.5  -0.003551789   0.013280248   0.026576285   0.009616475  -0.003881829   0.002644266   0.058634912  -0.547540631
                        -0.000686938  -0.029470225   0.002032262   0.000344465  -0.002701455  -0.000521855   0.006265506   0.170285896

    7    1.2  0.5 -0.5  -0.008442919  -0.523072787   0.038262944   0.017142907   0.359205090  -0.003488673  -0.000137878  -0.009311014
                        -0.003906780  -0.242040703  -0.472597942  -0.211737548  -0.516554776   0.005016884  -0.000461438  -0.031161192

    8    2.2  0.5 -0.5  -0.005811285  -0.001936155   0.013120624  -0.003592561  -0.003951060  -0.001793891  -0.000329938  -0.000256448
                         0.576379842  -0.004916425  -0.329131159   0.734162837  -0.000381092   0.135305441   0.032520908  -0.000403486

    9    3.2  0.5 -0.5   0.062938817  -0.241480881  -0.243574986  -0.146513764   0.622915123  -0.095567778   0.003312131  -0.031006091
                         0.004255491   0.519598825  -0.022242336  -0.003775524   0.432845783   0.004252536  -0.000096117   0.009251437

   10    4.2  0.5 -0.5  -0.003551931   0.013280181  -0.008621640  -0.005189157   0.021874220  -0.003378446   0.058637411  -0.547540128
                        -0.000686931  -0.029470251  -0.000750057   0.000308685   0.015517624   0.000213646   0.006265398   0.170287114

   11    5.2  0.5 -0.5  -0.000475568  -0.029463954  -0.001311312  -0.000535421  -0.012821004   0.000163778   0.002516110   0.169927894
                         0.003553830  -0.013302862   0.017956166   0.004428379   0.017990923  -0.000732414  -0.058675522   0.547677543

   12    6.2  0.5 -0.5   0.000323510  -0.003511898   0.000432697  -0.000119044  -0.001938104   0.000001711  -0.006400276   0.022790082
                        -0.032322663  -0.000868138  -0.009612909   0.026653608   0.001873026   0.004729318   0.573373408   0.054386778


   Nr   State  S   Sz        9            10            11            12

    1    1.2  0.5  0.5  -0.008518042  -0.001638335   0.027511456   0.000730702
                        -0.000000000   0.000000000  -0.000000000   0.000000000

    2    2.2  0.5  0.5   0.014182565  -0.023806240   0.003081683  -0.004073493
                        -0.000048418   0.002966825  -0.000110349   0.005465018

    3    3.2  0.5  0.5   0.000646682  -0.000993716   0.000125022   0.000603363
                        -0.016812494  -0.010629653  -0.020857569  -0.000427269

    4    4.2  0.5  0.5  -0.026578230   0.036750262   0.004369034  -0.015244131
                         0.475367342   0.299391833   0.589759680   0.009969345

    5    5.2  0.5  0.5  -0.192560406  -0.124339069   0.782825093   0.007339680
                        -0.004926439   0.006711644  -0.006276569   0.017794573

    6    6.2  0.5  0.5  -0.425928251   0.662810213   0.003572776   0.117049979
                        -0.005734765  -0.087808164  -0.005702414  -0.153664132

    7    1.2  0.5 -0.5  -0.000140389   0.000729910  -0.000585765   0.022054442
                        -0.001632308   0.008486711  -0.000436813   0.016446331

    8    2.2  0.5 -0.5   0.000915963  -0.001167060  -0.000001484   0.002404452
                        -0.023972904  -0.014134549   0.006816139   0.001930689

    9    3.2  0.5 -0.5  -0.010675707   0.016695242  -0.000228262  -0.012368418
                        -0.000079210  -0.002084960  -0.000703209   0.016795118

   10    4.2  0.5 -0.5   0.301439762  -0.471341416   0.006260720   0.356060393
                         0.010960309   0.067214528   0.017104819  -0.470166510

   11    5.2  0.5 -0.5  -0.003967636   0.021408795  -0.016521407   0.623796297
                        -0.124456837   0.191429980   0.009877289   0.473003923

   12    6.2  0.5 -0.5  -0.030689183   0.042211338  -0.001972339  -0.000544800
                         0.667896572   0.423870227  -0.193156580   0.006707112


 Composition of spin-orbit eigenvectors
 ======================================

   Nr   State  S   Sz       1        2        3        4        5        6        7        8        9       10

    1    1.2  0.5  0.5  33.219%   0.009%   4.513%  22.481%   0.004%  39.586%   0.106%   0.000%   0.007%   0.000%
    2    2.2  0.5  0.5   0.003%  33.225%  53.901%  10.850%   1.831%   0.002%   0.000%   0.106%   0.020%   0.058%
    3    3.2  0.5  0.5  32.830%   0.398%   2.148%   5.982%   0.915%  57.538%   0.105%   0.001%   0.028%   0.011%
    4    4.2  0.5  0.5   0.104%   0.001%   0.003%   0.007%   0.001%   0.072%  32.880%   0.348%  22.668%   9.099%
    5    5.2  0.5  0.5   0.105%   0.001%   0.002%   0.032%   0.000%   0.049%  32.883%   0.345%   3.710%   1.551%
    6    6.2  0.5  0.5   0.001%   0.104%   0.071%   0.009%   0.002%   0.001%   0.348%  32.880%  18.145%  44.703%
    7    1.2  0.5 -0.5   0.009%  33.219%  22.481%   4.513%  39.586%   0.004%   0.000%   0.106%   0.000%   0.007%
    8    2.2  0.5 -0.5  33.225%   0.003%  10.850%  53.901%   0.002%   1.831%   0.106%   0.000%   0.058%   0.020%
    9    3.2  0.5 -0.5   0.398%  32.830%   5.982%   2.148%  57.538%   0.915%   0.001%   0.105%   0.011%   0.028%
   10    4.2  0.5 -0.5   0.001%   0.104%   0.007%   0.003%   0.072%   0.001%   0.348%  32.880%   9.099%  22.668%
   11    5.2  0.5 -0.5   0.001%   0.105%   0.032%   0.002%   0.049%   0.000%   0.345%  32.883%   1.551%   3.710%
   12    6.2  0.5 -0.5   0.104%   0.001%   0.009%   0.071%   0.001%   0.002%  32.880%   0.348%  44.703%  18.145%

   Nr   State  S   Sz      11       12

    1    1.2  0.5  0.5   0.076%   0.000%
    2    2.2  0.5  0.5   0.001%   0.005%
    3    3.2  0.5  0.5   0.044%   0.000%
    4    4.2  0.5  0.5  34.784%   0.033%
    5    5.2  0.5  0.5  61.285%   0.037%
    6    6.2  0.5  0.5   0.005%   3.731%
    7    1.2  0.5 -0.5   0.000%   0.076%
    8    2.2  0.5 -0.5   0.005%   0.001%
    9    3.2  0.5 -0.5   0.000%   0.044%
   10    4.2  0.5 -0.5   0.033%  34.784%
   11    5.2  0.5 -0.5   0.037%  61.285%
   12    6.2  0.5 -0.5   3.731%   0.005%


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
              1      21       93.78       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       6     1391.09       700     1000      520     2100     2140     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *     15294.47   9432.96   5842.97      8.56      1.46      8.10
 REAL TIME  *     15571.35 SEC
 DISK USED  *         1.45 GB (local),       24.35 GB (total)
 SF USED    *        13.73 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCV5Z-PP energy=   -172.222478759471

              CI           MULTI         RHF-SCF
   -172.15719187   -171.41008392   -171.33129124
 **********************************************************************************************************************************
 Molpro calculation terminated
