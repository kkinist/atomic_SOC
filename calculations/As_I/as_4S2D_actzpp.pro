
 Working directory              : /wrk/irikura/molpro.fqHEPy185L/
 Global scratch directory       : /wrk/irikura/molpro.fqHEPy185L/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.fqHEPy185L/

 id        : nistki

 Nodes            nprocs
 pn112695.nist.gov   12
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1040), CPU time= 0.02 sec
 ***,As SO-CI
 memory,1500,M;
 
 gprint,orbitals,civector;
 
 symmetry,xyz
 geometry={As};
 
 basis=aug-cc-pwCVTZ-PP
 
 NQ=1
 ND=5
 PAR=2                                                                           ! parity even (1) or odd (2)
 
 {multi
     closed,6,3
     occ,7,6
     wf,charge=0,sym=PAR,spin=3;state,NQ;
     wf,charge=0,sym=PAR,spin=1;state,ND;
     expec2,lxx,lyy,lzz;
 }
 table, energy, ll
 title, Energies and &lt;L**2&gt; values
 
 core,0,0
 
 {ci;wf,sym=PAR,spin=3;state,NQ; save,5302.2}
                                                                                 !hlsdiag = energd4
 hlsdiag(1) = energd
 {ci;wf,sym=PAR,spin=1;state,ND; save,5102.2}
 hlsdiag(NQ+1) = energd4
 
 table,hlsdiag
 
 {ci;hlsmat,ecp,5302.2,5102.2;print,vls=0,hls=0}                                 !compute and diagonalize SO matrix
 Commands initialized (846), CPU time= 0.02 sec, 717 directives.
 Default parameters read. Elapsed time= 0.11 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2023.2 linked Fri Sep 22 03:27:09 2023


 **********************************************************************************************************************************
 LABEL *   As SO-CI                                                                                                                                                      
  (32 PROC) 64 bit mpp version                                                           DATE: 01-Aug-24          TIME: 18:08:37  
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
 SETTING NQ             =         1.00000000                                  
 SETTING ND             =         5.00000000                                  
 SETTING PAR            =         2.00000000                                  


 Recomputing integrals since basis changed


 Using spherical harmonics

 Library entry As   ECP ECP10MDF                 selected for group  1
 Library entry AS     S aug-cc-pwCVTZ-PP     selected for orbital group  1
 Library entry AS     P aug-cc-pwCVTZ-PP     selected for orbital group  1
 Library entry AS     D aug-cc-pwCVTZ-PP     selected for orbital group  1
 Library entry AS     F aug-cc-pwCVTZ-PP     selected for orbital group  1
 Library entry AS     G aug-cc-pwCVTZ-PP     selected for orbital group  1


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

   1  AS     23.00    0.000000000    0.000000000    0.000000000

 NUCLEAR CHARGE:                   23
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

         1 0.288E-04 0.392E-02 0.215E-01 0.528E-01 0.528E-01 0.528E-01 0.528E-01 0.528E-01
         2 0.878E-02 0.878E-02 0.878E-02 0.215E-01 0.215E-01 0.215E-01 0.180E+00 0.180E+00


 Contracted 2-electron integrals neglected if value below      1.0D-12
 AO integral compression algorithm  1   Integral accuracy      1.0D-12

     17.302 MB (compressed) written to integral file ( 18.5%)

     Node minimum: 0.786 MB, node maximum: 2.359 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:     461784.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:     461784      RECORD LENGTH: 524288

 Memory used in sort:       1.02 MW

 SORT1 READ    11031004. AND WROTE       88744. INTEGRALS IN      1 RECORDS. CPU TIME:     0.06 SEC, REAL TIME:     0.06 SEC
 SORT2 READ     1100136. AND WROTE     5533081. INTEGRALS IN     60 RECORDS. CPU TIME:     0.02 SEC, REAL TIME:     0.02 SEC

 Node minimum:      459824.  Node maximum:      464237. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      19       28.85       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         0.80      0.61
 REAL TIME  *         1.57 SEC
 DISK USED  *        29.18 MB (local),      406.54 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of closed-shell orbitals:   9 (    6    3)
 Number of active  orbitals:        4 (    1    3)
 Number of external orbitals:      83 (   40   43)

 State symmetry 1

 Number of active electrons:   5    Spin symmetry=Quartet   Space symmetry=2
 Number of states:             1
 Number of CSFs:               1   (1 determinants, 4 intermediate states)

 State symmetry 2

 Number of active electrons:   5    Spin symmetry=Doublet   Space symmetry=2
 Number of states:             5
 Number of CSFs:              11   (12 determinants, 24 intermediate states)

 Orbital guess generated from atomic densities. Full valence occupancy:    7   6
 *** IN SYMMETRY 1 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.467D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.561D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.367D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.307D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.232D-02 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 6 3 4 5 2 1 1 6 4   3 5 2 1 4 6 2 3 5 1   4 6 3 5 2 1 4 6 3 5   2 71415 812 9111310
                                        3 5 4 6 2 1 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.324D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.498D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.337D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.483D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.228D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.474D-02 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 3 2 3 1 2 3 2 1 3   1 2 810 5 4 6 7 9 3   1 2 4 5 810 7 9 6 8  10 5 4 7 9 6 3 1 2 5
                                        4 6 810 9 7 3 1 2

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.16667
 Weight factors for state symmetry  2:    0.16667   0.16667   0.16667   0.16667   0.16667
 
 Number of orbital rotations:  553  ( 15 closed/active, 369 closed/virtual, 0 active/active, 169 active/virtual )
 Total number of variables:    614
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1    5    8    0   -331.14315859    -331.15355745   -0.01039886    0.09094323 0.00000209 0.00000000  0.15E+00      0.18
   2    5    8    0   -331.15333355    -331.15334323   -0.00000968    0.00331621 0.00000001 0.00000000  0.39E-02      0.41
   3    3    6    0   -331.15334323    -331.15334323   -0.00000000    0.00000382 0.00000001 0.00000000  0.43E-05      0.55

 CONVERGENCE REACHED!  Final gradient:    0.00000001 ( 0.62E-08)
                       Final energy:   -331.15334323
 
 Results for state 1.2 Quartet
 =============================
 !MCSCF STATE 1.2 Quartet Energy              -331.208406146252
 Nuclear energy                                  0.00000000
 Kinetic energy                                233.74171441
 One electron energy                          -586.75934396
 Two electron energy                           255.55093782
 Virial ratio                                    2.41698458
 
 !MCSCF STATE 1.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.2 Doublet
 =============================
 !MCSCF STATE 1.2 Doublet Energy              -331.142330652274
 Nuclear energy                                  0.00000000
 Kinetic energy                                233.74171441
 One electron energy                          -586.75934396
 Two electron energy                           255.61701331
 Virial ratio                                    2.41670190
 
 !MCSCF STATE 1.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.2 Doublet
 =============================
 !MCSCF STATE 2.2 Doublet Energy              -331.142330652258
 Nuclear energy                                  0.00000000
 Kinetic energy                                233.74171441
 One electron energy                          -586.75934396
 Two electron energy                           255.61701331
 Virial ratio                                    2.41670190
 
 !MCSCF STATE 2.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.2 Doublet
 =============================
 !MCSCF STATE 3.2 Doublet Energy              -331.142330652037
 Nuclear energy                                  0.00000000
 Kinetic energy                                233.74171441
 One electron energy                          -586.75934396
 Two electron energy                           255.61701331
 Virial ratio                                    2.41670190
 
 !MCSCF STATE 3.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.2 Doublet
 =============================
 !MCSCF STATE 4.2 Doublet Energy              -331.142330651898
 Nuclear energy                                  0.00000000
 Kinetic energy                                233.74171441
 One electron energy                          -586.75934396
 Two electron energy                           255.61701331
 Virial ratio                                    2.41670190
 
 !MCSCF STATE 4.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.2 Doublet
 =============================
 !MCSCF STATE 5.2 Doublet Energy              -331.142330651854
 Nuclear energy                                  0.00000000
 Kinetic energy                                233.74171441
 One electron energy                          -586.75934396
 Two electron energy                           255.61701331
 Virial ratio                                    2.41670190
 
 !MCSCF STATE 5.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 ? Warning
 ? Transition properties are only calculated between states of the same symmetry
 ? The problem occurs in mu_properties_expec2

 !MCSCF expec      <1.2 Quartet|LXLX|1.2 Quartet>    -0.000000000000
 !MCSCF expec      <1.2 Doublet|LXLX|1.2 Doublet>     0.413983291976
 !MCSCF expec      <2.2 Doublet|LXLX|2.2 Doublet>     1.000000000000
 !MCSCF expec      <3.2 Doublet|LXLX|3.2 Doublet>     1.000000000000
 !MCSCF expec      <4.2 Doublet|LXLX|4.2 Doublet>     3.999999999994
 !MCSCF expec      <5.2 Doublet|LXLX|5.2 Doublet>     3.586017621661
 
 !MCSCF expec      <1.2 Quartet|LYLY|1.2 Quartet>    -0.000000000000
 !MCSCF expec      <1.2 Doublet|LYLY|1.2 Doublet>     3.848192343372
 !MCSCF expec      <2.2 Doublet|LYLY|2.2 Doublet>     4.000000000000
 !MCSCF expec      <3.2 Doublet|LYLY|3.2 Doublet>     1.000000000003
 !MCSCF expec      <4.2 Doublet|LYLY|4.2 Doublet>     1.000000000000
 !MCSCF expec      <5.2 Doublet|LYLY|5.2 Doublet>     0.151808229756
 
 !MCSCF expec      <1.2 Quartet|LZLZ|1.2 Quartet>    -0.000000000000
 !MCSCF expec      <1.2 Doublet|LZLZ|1.2 Doublet>     1.737824364652
 !MCSCF expec      <2.2 Doublet|LZLZ|2.2 Doublet>     1.000000000000
 !MCSCF expec      <3.2 Doublet|LZLZ|3.2 Doublet>     3.999999999997
 !MCSCF expec      <4.2 Doublet|LZLZ|4.2 Doublet>     1.000000000006
 !MCSCF expec      <5.2 Doublet|LZLZ|5.2 Doublet>     2.262174148583
 
 !MCSCF expec      <1.2 Quartet|L**2|1.2 Quartet>    -0.000000000000
 !MCSCF expec      <1.2 Doublet|L**2|1.2 Doublet>     6.000000000000
 !MCSCF expec      <2.2 Doublet|L**2|2.2 Doublet>     6.000000000000
 !MCSCF expec      <3.2 Doublet|L**2|3.2 Doublet>     6.000000000000
 !MCSCF expec      <4.2 Doublet|L**2|4.2 Doublet>     6.000000000000
 !MCSCF expec      <5.2 Doublet|L**2|5.2 Doublet>     6.000000000000
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 6 2 3 5 4 1 1 6 3   5 2 4 1 6 3 5 2 4 1   6 5 3 2 4 1 6 5 3 2   41113101415 812 7 9
                                        6 3 5 4 2 1 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   2 3 1 1 3 2 2 3 1 2   3 1 5 7 9 810 6 4 2   3 1 5 7 9 810 6 4 5   7 9 810 6 4 2 3 1 5
                                        4 6 810 9 7 2 3 1
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -8.09923     1  1  s    0.99593
    2.1     2.00000    -2.08450     1  1  d1-  1.00015
    3.1     2.00000    -2.08450     1  1  d0   1.00015
    4.1     2.00000    -2.08450     1  1  d2-  1.00015
    5.1     2.00000    -2.08450     1  1  d2+  1.00015
    6.1     2.00000    -2.08450     1  1  d1+  1.00015
    7.1     2.00000    -0.71091     1  2  s    0.97874
    1.2     2.00000    -6.01264     1  1  py   0.99982
    2.2     2.00000    -6.01264     1  1  pz   0.99982
    3.2     2.00000    -6.01264     1  1  px   0.99982
    4.2     1.00000    -0.15728     1  2  px   0.95598
    5.2     1.00000    -0.15728     1  2  pz   0.95598
    6.2     1.00000    -0.15728     1  2  py   0.95598
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 2 (Quartet)
 =======================================
 
 2 aaa          1.00000000
 
 Energy:     -331.20840615
 
 
 CI Coefficients of symmetry 2 (Doublet)
 =======================================
 
 2 aab         -0.15906375      0.00000000      0.00000000      0.00000000      0.80085291
 2 baa          0.77309084     -0.00000000     -0.00000000     -0.00000000     -0.26267321
 2 2a0          0.00000000      0.00000000      0.70710680     -0.00000000     -0.00000000
 2 a20         -0.00000000      0.00000000     -0.00000000      0.70710679     -0.00000000
 2 20a          0.00000000      0.70710679     -0.00000000      0.00000000      0.00000000
 2 02a          0.00000000     -0.70710678     -0.00000000     -0.00000000      0.00000000
 2 a02         -0.00000000      0.00000000      0.00000000     -0.70710677      0.00000000
 2 0a2         -0.00000000      0.00000000     -0.70710677     -0.00000000      0.00000000
 2 aba         -0.61402709      0.00000000     -0.00000000     -0.00000000     -0.53817970
 
 Energy:     -331.14233065   -331.14233065   -331.14233065   -331.14233065   -331.14233065
 


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       33.90       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       4        0.51       700     1000      520     2140   
                                         GEOM     BASIS   MCVARS    MCSCF   

 PROGRAMS   *        TOTAL     MULTI       INT
 CPU TIMES  *         1.31      0.51      0.61
 REAL TIME  *         2.25 SEC
 DISK USED  *        34.50 MB (local),      470.27 MB (total)
 SF USED    *        12.51 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

         ENERGY     LL
    -331.2084061  -0.0
    -331.1423307   6.0
    -331.1423307   6.0
    -331.1423307   6.0
    -331.1423307   6.0
    -331.1423307   6.0
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 1  Roots:    1
 Number of reference states: 1  Roots:    1

 Reference symmetry:                   2   Quartet 
 Number of electrons:                 23
 Maximum number of shells:             3
 Maximum number of spin couplings:    14

 Reference space:        1 conf        1 CSFs
 N elec internal:      166 conf      166 CSFs
 N-1 el internal:      238 conf      673 CSFs
 N-2 el internal:       88 conf      793 CSFs

 Number of electrons in valence space:                     23
 Maximum number of open shell orbitals in reference space:  3
 Maximum number of open shell orbitals in internal spaces:  7


 Number of closed-shell orbitals:   9 (   6   3 )
 Number of active  orbitals:        4 (   1   3 )
 Number of external orbitals:      83 (  40  43 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Valence orbitals related to previous ones by unitary transformation. Operators transformed.


 Number of p-space configurations:   1

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -331.20840615

 Number of blocks in overlap matrix:   163   Smallest eigenvalue:  0.10D+01
 Number of N-2 electron functions:     163
 Number of N-1 electron functions:     673

 Number of internal configurations:                   82
 Number of singly external configurations:         27973
 Number of doubly external configurations:        281006
 Total number of contracted configurations:       309061
 Total number of uncontracted configurations:    1386205

 Diagonal Coupling coefficients finished.               Storage:    276275 words, CPU-Time:      0.00 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:    386242 words, CPU-time:      0.02 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -331.20840615     0.00000000    -0.91936884  0.37D-01  0.75D-01     0.05
    2     1     1     1.07376394    -0.74761095  -331.95601709    -0.74761095    -0.01896709  0.26D-02  0.12D-02     0.45
    3     1     1     1.06202852    -0.76558739  -331.97399354    -0.01797645    -0.00048753  0.58D-04  0.33D-04     0.85
    4     1     1     1.06096570    -0.76603229  -331.97443844    -0.00044490    -0.00001727  0.23D-05  0.10D-05     1.24
    5     1     1     1.06106416    -0.76604904  -331.97445519    -0.00001675    -0.00000048  0.53D-07  0.36D-07     1.63
    6     1     1     1.06109618    -0.76604953  -331.97445568    -0.00000049    -0.00000001  0.12D-08  0.13D-08     2.03


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.0%
 S   1.0%  49.8%
 P   0.5%  23.6%  11.3%

 Initialization:   2.5%
 Other:           11.3%

 Total CPU:        2.0 seconds
 =====================================



 Wavefunction saved on  5302.2

 Reference coefficients greater than 0.0500000
 =============================================
 2222222222///           0.9707780


 RESULTS FOR STATE 1.2
 =====================

 Coefficient of reference function:   C(0) = 0.97077803 (fixed)   0.97077803 (relaxed)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00001236   -0.00005235   -0.00005826
 Singles      0.01412970   -0.04512492   -0.05272431
 Pairs        0.04696724   -0.72087226   -0.71326696
 Total        1.06110929   -0.76604953   -0.76604953
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -331.20840615
 Nuclear energy                         0.00000000
 Kinetic energy                       233.66543724
 One electron energy                 -585.89359223
 Two electron energy                  253.91913656
 Virial quotient                       -1.42072555
 Correlation energy                    -0.76604953
 !CI(SD) STATE 1.2 Energy            -331.974455677433

 Properties without orbital relaxation:

 !CI(SD) STATE 1.2 Dipole moment        0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -332.02126842 (Davidson, fixed reference)
 Cluster corrected energies          -332.02126842 (Davidson, relaxed reference)

 Cluster corrected energies          -332.01873627 (Pople, fixed reference)
 Cluster corrected energies          -332.01873627 (Pople, relaxed reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       33.90       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       5        3.13       700     1000      520     2140     5302   
                                         GEOM     BASIS   MCVARS    MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI       INT
 CPU TIMES  *         3.42      2.09      0.51      0.61
 REAL TIME  *         4.51 SEC
 DISK USED  *        37.12 MB (local),      501.72 MB (total)
 SF USED    *        40.83 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =      -332.02126842  AU                              


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 5  Roots:    1   2   3   4   5
 Number of reference states: 5  Roots:    1   2   3   4   5

 Reference symmetry:                   2   Doublet 
 Number of electrons:                 23
 Maximum number of shells:             4
 Maximum number of spin couplings:    14

 Reference space:       10 conf       11 CSFs
 N elec internal:      286 conf      488 CSFs
 N-1 el internal:      613 conf     1943 CSFs
 N-2 el internal:      637 conf     3149 CSFs

 Number of electrons in valence space:                     23
 Maximum number of open shell orbitals in reference space:  3
 Maximum number of open shell orbitals in internal spaces:  7


 Number of closed-shell orbitals:   9 (   6   3 )
 Number of active  orbitals:        4 (   1   3 )
 Number of external orbitals:      83 (  40  43 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Coulomb and exchange operators available. No transformation done.


 Number of p-space configurations:   8

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -331.14233065
     2      -331.14233065
     3      -331.14233065
     4      -331.14233065
     5      -331.14233065

 Number of blocks in overlap matrix:   606   Smallest eigenvalue:  0.50D+00
 Number of N-2 electron functions:     666
 Number of N-1 electron functions:    1943

 Number of internal configurations:                  248
 Number of singly external configurations:         80681
 Number of doubly external configurations:       1149143
 Total number of contracted configurations:      1230072
 Total number of uncontracted configurations:    5491415

 Diagonal Coupling coefficients finished.               Storage:    547885 words, CPU-Time:      0.05 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:    480980 words, CPU-time:      0.04 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -331.14233065     0.00000000    -0.93104828  0.41D-01  0.77D-01     0.14
    1     2     2     1.00000000     0.00000000  -331.14233065     0.00000000    -0.93054873  0.41D-01  0.77D-01     0.14
    1     3     3     1.00000000     0.00000000  -331.14233065    -0.00000000    -0.93086176  0.41D-01  0.77D-01     0.14
    1     4     4     1.00000000     0.00000000  -331.14233065    -0.00000000    -0.93097845  0.42D-01  0.77D-01     0.14
    1     5     5     1.00000000     0.00000000  -331.14233065     0.00000000    -0.93171696  0.42D-01  0.77D-01     0.14
    2     1     1     1.07783384    -0.75669309  -331.89902374    -0.75669309    -0.01961488  0.27D-02  0.13D-02     4.62
    2     2     2     1.07799236    -0.75661695  -331.89894760    -0.75661695    -0.01969236  0.27D-02  0.13D-02     4.62
    2     3     3     1.07800366    -0.75656478  -331.89889543    -0.75656478    -0.01977411  0.27D-02  0.13D-02     4.62
    2     4     4     1.07821634    -0.75644113  -331.89877179    -0.75644113    -0.01987404  0.28D-02  0.13D-02     4.62
    2     5     5     1.07869938    -0.75609868  -331.89842933    -0.75609868    -0.02025138  0.29D-02  0.13D-02     4.62
    3     1     1     1.06671457    -0.77506326  -331.91739391    -0.01837016    -0.00047204  0.52D-04  0.38D-04     8.96
    3     2     2     1.06671831    -0.77506192  -331.91739257    -0.01844497    -0.00047328  0.52D-04  0.38D-04     8.96
    3     3     3     1.06670447    -0.77506060  -331.91739125    -0.01849582    -0.00047395  0.53D-04  0.38D-04     8.96
    3     4     4     1.06673445    -0.77505663  -331.91738728    -0.01861549    -0.00048262  0.54D-04  0.39D-04     8.96
    3     5     5     1.06671249    -0.77505525  -331.91738590    -0.01895657    -0.00048182  0.54D-04  0.39D-04     8.96
    4     1     1     1.06560721    -0.77551345  -331.91784410    -0.00045019    -0.00001951  0.28D-05  0.15D-05    13.38
    4     2     2     1.06560517    -0.77551344  -331.91784409    -0.00045152    -0.00001954  0.28D-05  0.15D-05    13.38
    4     3     3     1.06560412    -0.77551332  -331.91784397    -0.00045272    -0.00001968  0.29D-05  0.15D-05    13.38
    4     4     4     1.06560408    -0.77551303  -331.91784368    -0.00045640    -0.00002012  0.29D-05  0.15D-05    13.38
    4     5     5     1.06560659    -0.77551276  -331.91784341    -0.00045751    -0.00002033  0.29D-05  0.15D-05    13.38
    5     1     1     1.06563360    -0.77553228  -331.91786294    -0.00001884    -0.00000066  0.10D-06  0.50D-07    17.80
    5     2     2     1.06563325    -0.77553228  -331.91786294    -0.00001884    -0.00000066  0.10D-06  0.50D-07    17.80
    5     3     3     1.06563417    -0.77553228  -331.91786293    -0.00001896    -0.00000067  0.10D-06  0.50D-07    17.80
    5     4     4     1.06563493    -0.77553227  -331.91786292    -0.00001924    -0.00000067  0.11D-06  0.52D-07    17.80
    5     5     5     1.06563349    -0.77553226  -331.91786292    -0.00001950    -0.00000068  0.11D-06  0.52D-07    17.80
    6     1     1     1.06562542    -0.77553296  -331.91786362    -0.00000068    -0.00000002  0.20D-08  0.25D-08    22.19
    6     2     2     1.06562530    -0.77553296  -331.91786362    -0.00000068    -0.00000002  0.20D-08  0.24D-08    22.19
    6     3     3     1.06562529    -0.77553296  -331.91786362    -0.00000069    -0.00000002  0.20D-08  0.25D-08    22.19
    6     4     4     1.06562515    -0.77553296  -331.91786362    -0.00000069    -0.00000002  0.20D-08  0.25D-08    22.19
    6     5     5     1.06562568    -0.77553296  -331.91786362    -0.00000070    -0.00000002  0.21D-08  0.26D-08    22.19


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.2%
 S   0.1%   1.8%
 P   0.4%  23.0%  27.6%

 Initialization:   0.5%
 Other:           46.3%

 Total CPU:       22.2 seconds
 =====================================



 Wavefunction saved on  5102.2

 Reference coefficients greater than 0.0500000
 =============================================
 2222222222//\           0.0000000   0.0000000   0.8850849   0.0000000   0.3935741
 2222222222/\/           0.0000000   0.0000000  -0.3935741  -0.0000000   0.8850847
 22222222220/2           0.0000000  -0.6849366  -0.0000000   0.0000000   0.0000000
 2222222222/02          -0.0000000   0.0000000  -0.0000000   0.6849366  -0.0000000
 222222222202/          -0.6849365   0.0000000  -0.0000000   0.0000000  -0.0000000
 2222222222/20           0.0000000   0.0000000   0.0000000  -0.6849364  -0.0000000
 222222222220/           0.6849363   0.0000000  -0.0000000   0.0000000  -0.0000000
 22222222222/0           0.0000000   0.6849362   0.0000000   0.0000000  -0.0000000

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.000000    0.968646    0.000000   -0.000000    0.000000
 2           0.000000   -0.000000    0.968646   -0.000000    0.000000
 3          -0.213643   -0.000000    0.000000   -0.000000    0.944792
 4          -0.000000    0.000000    0.000000    0.968646    0.000000
 5           0.944792   -0.000000   -0.000000    0.000000    0.213643

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.968646   -0.000000    0.000000    0.000000    0.000000
 2          -0.000000    0.968646   -0.000000   -0.000000    0.000000
 3           0.000000   -0.000000    0.968646    0.000000    0.000000
 4           0.000000   -0.000000    0.000000    0.968646    0.000000
 5           0.000000    0.000000    0.000000    0.000000    0.968646


 RESULTS FOR STATE 1.2
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.96864635 (fixed)   0.96864635 (relaxed)   0.96864635 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00014954   -0.00045432   -0.67987182
 Singles      0.01704595   -0.05105190   -0.06030298
 Pairs        0.04858928    0.00000000   -0.03535817
 Total        1.06578477   -0.05150622   -0.77553296
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -331.14233065
 Nuclear energy                         0.00000000
 Kinetic energy                       233.66813109
 One electron energy                 -585.80134298
 Two electron energy                  253.88347936
 Virial quotient                       -1.42046698
 Correlation energy                    -0.77553296
 !MRCI STATE 1.2 Energy              -331.917863616756

 Properties without orbital relaxation:

 !MRCI STATE 1.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -331.96888187 (Davidson, fixed reference)
 Cluster corrected energies          -331.96888187 (Davidson, relaxed reference)
 Cluster corrected energies          -331.96888187 (Davidson, rotated reference)

 Cluster corrected energies          -331.96686265 (Pople, fixed reference)
 Cluster corrected energies          -331.96686265 (Pople, relaxed reference)
 Cluster corrected energies          -331.96686265 (Pople, rotated reference)



 RESULTS FOR STATE 2.2
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.96864640 (fixed)   0.96864640 (relaxed)   0.96864640 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00014954   -0.00045432   -0.67987195
 Singles      0.01704590   -0.05105184   -0.06030296
 Pairs        0.04858921   -0.00000000   -0.03535805
 Total        1.06578465   -0.05150616   -0.77553296
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -331.14233065
 Nuclear energy                         0.00000000
 Kinetic energy                       233.66813122
 One electron energy                 -585.80134663
 Two electron energy                  253.88348301
 Virial quotient                       -1.42046698
 Correlation energy                    -0.77553296
 !MRCI STATE 2.2 Energy              -331.917863616656

 Properties without orbital relaxation:

 !MRCI STATE 2.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -331.96888178 (Davidson, fixed reference)
 Cluster corrected energies          -331.96888178 (Davidson, relaxed reference)
 Cluster corrected energies          -331.96888178 (Davidson, rotated reference)

 Cluster corrected energies          -331.96686256 (Pople, fixed reference)
 Cluster corrected energies          -331.96686256 (Pople, relaxed reference)
 Cluster corrected energies          -331.96686256 (Pople, rotated reference)



 RESULTS FOR STATE 3.2
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.94479230 (fixed)   0.96864640 (relaxed)   0.96864640 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00014954   -0.00045432   -0.01726460
 Singles      0.01704585   -0.05105164   -0.06030291
 Pairs        0.04858926   -0.70619695   -0.69796545
 Total        1.06578464   -0.75770291   -0.77553296
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -331.14233065
 Nuclear energy                         0.00000000
 Kinetic energy                       233.66810389
 One electron energy                 -585.80136122
 Two electron energy                  253.88349760
 Virial quotient                       -1.42046714
 Correlation energy                    -0.77553296
 !MRCI STATE 3.2 Energy              -331.917863616603

 Properties without orbital relaxation:

 !MRCI STATE 3.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -331.96888178 (Davidson, fixed reference)
 Cluster corrected energies          -331.96888178 (Davidson, relaxed reference)
 Cluster corrected energies          -331.96888178 (Davidson, rotated reference)

 Cluster corrected energies          -331.96686256 (Pople, fixed reference)
 Cluster corrected energies          -331.96686256 (Pople, relaxed reference)
 Cluster corrected energies          -331.96686256 (Pople, rotated reference)



 RESULTS FOR STATE 4.2
 =====================

 Coefficient of reference function:   C(0) = 0.96864647 (fixed)   0.96864647 (relaxed)   0.96864647 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00014954   -0.00045432   -0.67987229
 Singles      0.01704570   -0.05105158   -0.06030280
 Pairs        0.04858927   -0.00000000   -0.03535788
 Total        1.06578450   -0.05150590   -0.77553296
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -331.14233065
 Nuclear energy                         0.00000000
 Kinetic energy                       233.66812348
 One electron energy                 -585.80134293
 Two electron energy                  253.88347931
 Virial quotient                       -1.42046702
 Correlation energy                    -0.77553296
 !MRCI STATE 4.2 Energy              -331.917863616556

 Properties without orbital relaxation:

 !MRCI STATE 4.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -331.96888167 (Davidson, fixed reference)
 Cluster corrected energies          -331.96888167 (Davidson, relaxed reference)
 Cluster corrected energies          -331.96888167 (Davidson, rotated reference)

 Cluster corrected energies          -331.96686245 (Pople, fixed reference)
 Cluster corrected energies          -331.96686245 (Pople, relaxed reference)
 Cluster corrected energies          -331.96686245 (Pople, rotated reference)



 RESULTS FOR STATE 5.2
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.94479213 (fixed)   0.96864623 (relaxed)   0.96864623 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00014954   -0.00045432   -0.53003798
 Singles      0.01704631   -0.05105230   -0.06030323
 Pairs        0.04858919   -0.15969009   -0.18519176
 Total        1.06578503   -0.21119671   -0.77553296
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -331.14233065
 Nuclear energy                         0.00000000
 Kinetic energy                       233.66812607
 One electron energy                 -585.80133521
 Two electron energy                  253.88347160
 Virial quotient                       -1.42046701
 Correlation energy                    -0.77553296
 !MRCI STATE 5.2 Energy              -331.917863615972

 Properties without orbital relaxation:

 !MRCI STATE 5.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -331.96888208 (Davidson, fixed reference)
 Cluster corrected energies          -331.96888208 (Davidson, relaxed reference)
 Cluster corrected energies          -331.96888208 (Davidson, rotated reference)

 Cluster corrected energies          -331.96686286 (Pople, fixed reference)
 Cluster corrected energies          -331.96686286 (Pople, relaxed reference)
 Cluster corrected energies          -331.96686286 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       33.90       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       6       50.63       700     1000      520     2140     5302     5102   
                                         GEOM     BASIS   MCVARS    MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI       INT
 CPU TIMES  *        27.07     23.65      2.09      0.51      0.61
 REAL TIME  *        32.00 SEC
 DISK USED  *        84.62 MB (local),        1.05 GB (total)
 SF USED    *       499.11 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(2)     =      -331.96888187  AU                              
 SETTING HLSDIAG(3)     =      -331.96888178  AU                              
 SETTING HLSDIAG(4)     =      -331.96888178  AU                              
 SETTING HLSDIAG(5)     =      -331.96888167  AU                              
 SETTING HLSDIAG(6)     =      -331.96888208  AU                              


         HLSDIAG
    -332.0212684
    -331.9688819
    -331.9688818
    -331.9688818
    -331.9688817
    -331.9688821
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Diagonal elements of H will be replaced by values from variable HLSDIAG


   ******************************
   *** Spin-orbit calculation ***
   ******************************


   Spin-orbit matrix elements
   ==========================

 Wavefunction restored from record  5302.2  Symmetry=2  S= 1.5  NSTATE=   1

 Original energies:   -331.974456
 Replaced energies:   -332.021268

 Wavefunction restored from record  5102.2  Symmetry=2  S= 0.5  NSTATE=   5

 Original energies:   -331.917864   -331.917864   -331.917864   -331.917864   -331.917864
 Replaced energies:   -331.968882   -331.968882   -331.968882   -331.968882   -331.968882



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=  -332.02126842

 Wigner-Eckart theorem used for 23 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.2  1.5  1.5       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00      -0.00       0.00       0.00
                            0.00       0.00       0.00       0.00      -0.00      -0.00       0.00      -0.00       0.00       0.00

    2   1.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                           -0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00       0.00      -0.00

    3   1.2  1.5 -0.5       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00      -0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00       0.00       0.00      -0.00       0.00      -0.00       0.00

    4   1.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                           -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    5   1.2  0.5  0.5      -0.00       0.00      -0.00       0.00   11497.52       0.00       0.00       0.00       0.00      -0.00
                            0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       1.98       0.00       0.00

    6   2.2  0.5  0.5      -0.00       0.00      -0.00       0.00       0.00   11497.54       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.00       0.00      -0.00       2.32      -0.00       3.19       1.97

    7   3.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00   11497.54       0.00       0.00       1.61
                           -0.00       0.00       0.00      -0.00       0.00      -2.32       0.00       0.00       0.00       0.00

    8   4.2  0.5  0.5      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00   11497.56       0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -1.98       0.00      -0.00       0.00      -0.00       0.00

    9   5.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   11497.47      -3.61
                           -0.00      -0.00       0.00      -0.00      -0.00      -3.19      -0.00       0.00       0.00      -0.00

   10   1.2  0.5 -0.5       0.00      -0.00       0.00      -0.00      -0.00       0.00       1.61       0.00      -3.61   11497.52
                           -0.00       0.00      -0.00      -0.00      -0.00      -1.97      -0.00      -0.00       0.00       0.00

   11   2.2  0.5 -0.5       0.00      -0.00       0.00      -0.00      -0.00      -0.00      -0.00      -1.98       0.00       0.00
                           -0.00       0.00       0.00      -0.00       1.97      -0.00      -0.00      -0.00      -0.00      -0.00

   12   3.2  0.5 -0.5       0.00       0.00       0.00       0.00      -1.61       0.00      -0.00       0.00      -0.00       0.00
                           -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       3.93      -0.00      -0.00

   13   4.2  0.5 -0.5       0.00      -0.00       0.00      -0.00      -0.00       1.98      -0.00      -0.00      -0.00       0.00
                           -0.00       0.00      -0.00      -0.00       0.00       0.00      -3.93       0.00       0.41       1.98

   14   5.2  0.5 -0.5       0.00       0.00       0.00       0.00       3.61      -0.00       0.00       0.00      -0.00       0.00
                           -0.00      -0.00      -0.00       0.00      -0.00       0.00       0.00      -0.41      -0.00       0.00


   Nr   State  S   Sz       11         12         13         14

    1   1.2  1.5  1.5       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00

    2   1.2  1.5  0.5      -0.00       0.00      -0.00       0.00
                           -0.00       0.00      -0.00       0.00

    3   1.2  1.5 -0.5       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00

    4   1.2  1.5 -1.5      -0.00       0.00      -0.00       0.00
                            0.00      -0.00       0.00      -0.00

    5   1.2  0.5  0.5      -0.00      -1.61      -0.00       3.61
                           -1.97      -0.00      -0.00       0.00

    6   2.2  0.5  0.5      -0.00       0.00       1.98      -0.00
                            0.00      -0.00      -0.00      -0.00

    7   3.2  0.5  0.5      -0.00      -0.00      -0.00       0.00
                            0.00      -0.00       3.93      -0.00

    8   4.2  0.5  0.5      -1.98       0.00      -0.00       0.00
                            0.00      -3.93      -0.00       0.41

    9   5.2  0.5  0.5       0.00      -0.00      -0.00      -0.00
                            0.00       0.00      -0.41       0.00

   10   1.2  0.5 -0.5       0.00       0.00       0.00       0.00
                            0.00       0.00      -1.98      -0.00

   11   2.2  0.5 -0.5   11497.54       0.00       0.00       0.00
                            0.00      -2.32       0.00      -3.19

   12   3.2  0.5 -0.5       0.00   11497.54       0.00       0.00
                            2.32      -0.00      -0.00      -0.00

   13   4.2  0.5 -0.5       0.00       0.00   11497.56       0.00
                           -0.00       0.00      -0.00       0.00

   14   5.2  0.5 -0.5       0.00       0.00       0.00   11497.47
                            3.19       0.00      -0.00      -0.00


 No symmetry adaption


 Spin-orbit eigenstates   (energies)
 ======================

     Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
              (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1  -332.02126842     0.00000000        0.00      0.00000000        0.00      0.0000
     2  -332.02126842     0.00000000        0.00      0.00000000        0.00      0.0000
     3  -332.02126842     0.00000000        0.00      0.00000000        0.00      0.0000
     4  -332.02126842     0.00000000        0.00      0.00000000        0.00      0.0000
     5  -331.96890892     0.05235950    11491.58      0.05235950    11491.58      1.4248
     6  -331.96890892     0.05235950    11491.58      0.05235950    11491.58      1.4248
     7  -331.96890874     0.05235968    11491.62      0.05235968    11491.62      1.4248
     8  -331.96890874     0.05235968    11491.62      0.05235968    11491.62      1.4248
     9  -331.96886399     0.05240444    11501.44      0.05240444    11501.44      1.4260
    10  -331.96886399     0.05240444    11501.44      0.05240444    11501.44      1.4260
    11  -331.96886380     0.05240462    11501.48      0.05240462    11501.48      1.4260
    12  -331.96886380     0.05240462    11501.48      0.05240462    11501.48      1.4260
    13  -331.96886372     0.05240471    11501.50      0.05240471    11501.50      1.4260
    14  -331.96886372     0.05240471    11501.50      0.05240471    11501.50      1.4260


 Eigenvectors of spin-orbit matrix
 =================================

  Basis states          Eigenvectors (columnwise)

   Nr   State  S   Sz        1             2             3             4             5             6             7             8

    1    1.2  1.5  1.5   0.744280316  -0.004423484   0.667472843   0.022522161   0.000000001   0.000000003   0.000000022   0.000000000
                        -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000

    2    1.2  1.5  0.5   0.003474629  -0.637115250  -0.034078671   0.770006939   0.000000000  -0.000000000  -0.000000000   0.000000000
                         0.000001894   0.000155370  -0.000005784   0.000139341  -0.000000022   0.000000004  -0.000000000   0.000000003

    3    1.2  1.5 -0.5  -0.667804245   0.001563944   0.743404702   0.037208793   0.000000004   0.000000022  -0.000000003  -0.000000000
                        -0.000000015   0.000000087   0.000000021  -0.000000105  -0.000000000   0.000000000  -0.000000000   0.000000000

    4    1.2  1.5 -1.5   0.008498675   0.770746938  -0.025847279   0.636544018   0.000000000  -0.000000000   0.000000000  -0.000000001
                         0.000039222   0.003358369  -0.000124191   0.003044015  -0.000000003   0.000000001   0.000000000  -0.000000022

    5    1.2  0.5  0.5   0.000000004  -0.000000000   0.000000013   0.000000001  -0.119310623  -0.578292588   0.225336345   0.003812072
                        -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000866  -0.000000133   0.000000004  -0.000000078

    6    2.2  0.5  0.5   0.000000000   0.000000000  -0.000000000   0.000000000   0.478416823  -0.098704719  -0.006763905   0.399822856
                        -0.000000000   0.000000021   0.000000001  -0.000000025   0.000700432  -0.000145248   0.000219743  -0.012997212

    7    3.2  0.5  0.5   0.000000000   0.000000000  -0.000000000   0.000000000   0.000049974  -0.000010365  -0.000347091   0.020529582
                         0.000000000   0.000000000  -0.000000000   0.000000000  -0.034133720   0.007042311  -0.010683843   0.631535165

    8    4.2  0.5  0.5   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000149   0.000000023  -0.000000011   0.000000210
                        -0.000000045   0.000000000  -0.000000010  -0.000000000  -0.020316704  -0.098474036   0.623225567   0.010543261

    9    5.2  0.5  0.5   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000908431   0.000188381  -0.000019360   0.001144996
                         0.000000000   0.000000000   0.000000000   0.000000000   0.620486373  -0.128015845  -0.000595868   0.035222588

   10    1.2  0.5 -0.5   0.000000000   0.000000005  -0.000000001   0.000000013  -0.000846655   0.000175572   0.000123778  -0.007321237
                         0.000000000   0.000000000  -0.000000000   0.000000000   0.578291968  -0.119310494   0.003810062  -0.225217379

   11    2.2  0.5 -0.5  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000715  -0.000000110  -0.000000007   0.000000134
                         0.000000021  -0.000000000  -0.000000024  -0.000000001   0.098704826   0.478417336   0.400034053   0.006767474

   12    3.2  0.5 -0.5  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.007042319  -0.034133757   0.631868759   0.010689480
                        -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000053  -0.000000008   0.000000011  -0.000000213

   13    4.2  0.5 -0.5  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.098473930  -0.020316682   0.010537702  -0.622896536
                         0.000000000   0.000000046  -0.000000000   0.000000008   0.000144172  -0.000029899  -0.000342343   0.020248762

   14    5.2  0.5 -0.5   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.128015984   0.620487038   0.035241194   0.000596182
                        -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000929   0.000000142   0.000000001  -0.000000010


   Nr   State  S   Sz        9            10            11            12            13            14

    1    1.2  1.5  1.5  -0.000000000  -0.000000007  -0.000000007   0.000000006   0.000000033   0.000000000
                         0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000

    2    1.2  1.5  0.5   0.000000009  -0.000000000   0.000000013   0.000000016  -0.000000000   0.000000022
                         0.000000010  -0.000000000   0.000000000   0.000000001   0.000000000  -0.000000001

    3    1.2  1.5 -0.5  -0.000000001  -0.000000014   0.000000016  -0.000000013  -0.000000022  -0.000000000
                        -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000

    4    1.2  1.5 -1.5   0.000000005  -0.000000000  -0.000000006  -0.000000007   0.000000000  -0.000000033
                         0.000000005  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000001

    5    1.2  0.5  0.5   0.021803397   0.565862795   0.379499684  -0.307667816  -0.202963753  -0.001336831
                         0.000001150  -0.000000060  -0.000000038  -0.000000035  -0.000000001  -0.000000000

    6    2.2  0.5  0.5  -0.230519863   0.008881800  -0.014940895  -0.018429291  -0.000045860   0.006962796
                         0.204695911  -0.007887658   0.432762047   0.533799929  -0.001201610   0.182433805

    7    3.2  0.5  0.5  -0.031697829   0.001221429   0.325333755   0.401290127   0.003780482  -0.573970720
                        -0.035696752   0.001375376   0.011231986   0.013854429  -0.000144287   0.021906252

    8    4.2  0.5  0.5   0.000000003  -0.000000000  -0.000000006  -0.000000006  -0.000000004  -0.000000000
                        -0.000054529  -0.001415208  -0.067809152   0.054974209   0.770532816   0.005075149

    9    5.2  0.5  0.5   0.506107684  -0.019502119   0.073716224   0.090926908  -0.000278360   0.042261881
                         0.569957031  -0.021960122   0.002545016   0.003139226   0.000010623  -0.001612973

   10    1.2  0.5 -0.5  -0.375722755   0.014477926   0.307484619   0.379273712  -0.001335858   0.202816091
                        -0.423123048   0.016302692   0.010615754   0.013094318   0.000050985  -0.007740709

   11    2.2  0.5 -0.5   0.000000627  -0.000000033   0.000000053   0.000000049   0.000000001  -0.000000001
                        -0.011878616  -0.308285295   0.534117967  -0.433019884  -0.182566629  -0.001202485

   12    3.2  0.5 -0.5  -0.001839442  -0.047738983  -0.401529216   0.325527587  -0.574388606  -0.003783235
                        -0.000000096   0.000000005   0.000000041   0.000000037  -0.000000003  -0.000000001

   13    4.2  0.5 -0.5   0.001058220  -0.000040772  -0.001896828  -0.002339697  -0.000193558   0.029386875
                        -0.000939673   0.000036209   0.054941475   0.067768776  -0.005071457   0.769972228

   14    5.2  0.5 -0.5   0.029369706   0.762230940  -0.090981083   0.073760144   0.042292650   0.000278563
                         0.000001550  -0.000000081   0.000000009   0.000000008   0.000000000  -0.000000001


 Composition of spin-orbit eigenvectors
 ======================================

   Nr   State  S   Sz       1        2        3        4        5        6        7        8        9       10

    1    1.2  1.5  1.5  55.395%   0.002%  44.552%   0.051%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    2    1.2  1.5  0.5   0.001%  40.592%   0.116%  59.291%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    3    1.2  1.5 -0.5  44.596%   0.000%  55.265%   0.138%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    4    1.2  1.5 -1.5   0.007%  59.406%   0.067%  40.520%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    5    1.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   1.424%  33.442%   5.078%   0.001%   0.048%  32.020%
    6    2.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%  22.888%   0.974%   0.005%  16.003%   9.504%   0.014%
    7    3.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.117%   0.005%   0.011%  39.926%   0.228%   0.000%
    8    4.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.041%   0.970%  38.841%   0.011%   0.000%   0.000%
    9    5.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%  38.500%   1.639%   0.000%   0.124%  58.100%   0.086%
   10    1.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%  33.442%   1.424%   0.001%   5.078%  32.020%   0.048%
   11    2.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.974%  22.888%  16.003%   0.005%   0.014%   9.504%
   12    3.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.005%   0.117%  39.926%   0.011%   0.000%   0.228%
   13    4.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.970%   0.041%   0.011%  38.841%   0.000%   0.000%
   14    5.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   1.639%  38.500%   0.124%   0.000%   0.086%  58.100%

   Nr   State  S   Sz      11       12       13       14

    1    1.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%
    2    1.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%
    3    1.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%
    4    1.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%
    5    1.2  0.5  0.5  14.402%   9.466%   4.119%   0.000%
    6    2.2  0.5  0.5  18.751%  28.528%   0.000%   3.333%
    7    3.2  0.5  0.5  10.597%  16.123%   0.001%  32.992%
    8    4.2  0.5  0.5   0.460%   0.302%  59.372%   0.003%
    9    5.2  0.5  0.5   0.544%   0.828%   0.000%   0.179%
   10    1.2  0.5 -0.5   9.466%  14.402%   0.000%   4.119%
   11    2.2  0.5 -0.5  28.528%  18.751%   3.333%   0.000%
   12    3.2  0.5 -0.5  16.123%  10.597%  32.992%   0.001%
   13    4.2  0.5 -0.5   0.302%   0.460%   0.003%  59.372%
   14    5.2  0.5 -0.5   0.828%   0.544%   0.179%   0.000%


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
              1      21       33.90       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       6       50.63       700     1000      520     2140     5302     5102   
                                         GEOM     BASIS   MCVARS    MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI        CI     MULTI       INT
 CPU TIMES  *        67.14     40.06     23.65      2.09      0.51      0.61
 REAL TIME  *        75.86 SEC
 DISK USED  *        84.62 MB (local),        1.05 GB (total)
 SF USED    *       499.11 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCVTZ-PP energy=   -331.968863716347

              CI              CI           MULTI
   -331.91786362   -331.97445568   -331.14233065
 **********************************************************************************************************************************
 Molpro calculation terminated with 1 warning(s)
