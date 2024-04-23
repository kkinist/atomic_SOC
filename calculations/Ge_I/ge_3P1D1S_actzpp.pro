
 Working directory              : /wrk/irikura/molpro.BJX69Bqs22/
 Global scratch directory       : /wrk/irikura/molpro.BJX69Bqs22/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.BJX69Bqs22/

 id        : nistki

 Nodes            nprocs
 pn112695.nist.gov   12
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1040), CPU time= 0.02 sec
 ***,Ge SO-CI
 memory,1500,M;
 
 gprint,orbitals,civector;
 
 symmetry,xyz
 geometry={Ge};
 
 basis=aug-cc-pwCVTZ-PP
 
 NTRIP = 3
 NSING = 6
 
 {multi
     closed,6,3
     occ,7,6
     wf,nelec=22,sym=1,spin=2;state,NTRIP;
     wf,nelec=22,sym=1,spin=0;state,NSING;
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
 Default parameters read. Elapsed time= 0.21 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2023.2 linked Fri Sep 22 03:27:09 2023


 **********************************************************************************************************************************
 LABEL *   Ge SO-CI                                                                                                                                                      
  (32 PROC) 64 bit mpp version                                                           DATE: 16-Apr-24          TIME: 15:18:17  
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
 SETTING NTRIP          =         3.00000000                                  
 SETTING NSING          =         6.00000000                                  


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

     16.515 MB (compressed) written to integral file ( 18.9%)

     Node minimum: 0.786 MB, node maximum: 2.359 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:     461784.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:     461784      RECORD LENGTH: 524288

 Memory used in sort:       1.02 MW

 SORT1 READ    11031004. AND WROTE       88744. INTEGRALS IN      1 RECORDS. CPU TIME:     0.06 SEC, REAL TIME:     0.05 SEC
 SORT2 READ     1100136. AND WROTE     5533081. INTEGRALS IN     36 RECORDS. CPU TIME:     0.02 SEC, REAL TIME:     0.02 SEC

 Node minimum:      459824.  Node maximum:      464237. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      19       28.85       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         0.99      0.65
 REAL TIME  *         1.85 SEC
 DISK USED  *        29.18 MB (local),      406.43 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

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

 Orbital guess generated from atomic densities. Full valence occupancy:    7   6
 *** IN SYMMETRY 1 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.569D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.539D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.468D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.509D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.311D+00 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 4 3 6 5 2 1 1 6 4   3 5 2 1 6 4 2 5 3 1   4 6 3 5 2 1 6 4 3 5   2 71310 8121415 911
                                        2 6 4 3 5 1 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.148D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.781D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.198D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.148D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.170D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.747D-03 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 3 2 3 1 2 2 1 3 2   1 3 5 4 6 9 7 810 2   1 3 9 7 6 4 510 8 9   7 810 4 5 6 2 1 3 6
                                        4 5 9 8 710 2 1 3

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.11111   0.11111   0.11111
 Weight factors for state symmetry  2:    0.11111   0.11111   0.11111   0.11111   0.11111   0.11111
 
 Number of orbital rotations:  553  ( 15 closed/active, 369 closed/virtual, 0 active/active, 169 active/virtual )
 Total number of variables:    679
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1   11   16    0   -293.31159241    -293.32898228   -0.01738987    0.07786404 0.00042472 0.00000000  0.33E+00      0.20
   2    6   10    0   -293.32715642    -293.32771538   -0.00055896    0.07055444 0.00000143 0.00000000  0.20E-01      0.45
   3    5   10    0   -293.32771735    -293.32771737   -0.00000002    0.00026438 0.00000003 0.00000000  0.19E-03      0.63
   4    5   10    0   -293.32771737    -293.32771737    0.00000000    0.00000011 0.00000001 0.00000000  0.18E-07      0.74

 CONVERGENCE REACHED!  Final gradient:    0.00000001 ( 0.58E-08)
                       Final energy:   -293.32771737
 
 Results for state 1.1 Triplet
 =============================
 !MCSCF STATE 1.1 Triplet Energy              -293.357232968835
 Nuclear energy                                  0.00000000
 Kinetic energy                                205.06199075
 One electron energy                          -522.59283570
 Two electron energy                           229.23560273
 Virial ratio                                    2.43057829
 
 !MCSCF STATE 1.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Triplet
 =============================
 !MCSCF STATE 2.1 Triplet Energy              -293.357232968774
 Nuclear energy                                  0.00000000
 Kinetic energy                                205.06199076
 One electron energy                          -522.59283572
 Two electron energy                           229.23560275
 Virial ratio                                    2.43057829
 
 !MCSCF STATE 2.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Triplet
 =============================
 !MCSCF STATE 3.1 Triplet Energy              -293.357232968598
 Nuclear energy                                  0.00000000
 Kinetic energy                                205.06199077
 One electron energy                          -522.59283580
 Two electron energy                           229.23560283
 Virial ratio                                    2.43057829
 
 !MCSCF STATE 3.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.1 Singlet
 =============================
 !MCSCF STATE 1.1 Singlet Energy              -293.318599055888
 Nuclear energy                                  0.00000000
 Kinetic energy                                205.06199075
 One electron energy                          -522.59283568
 Two electron energy                           229.27423662
 Virial ratio                                    2.43038989
 
 !MCSCF STATE 1.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Singlet
 =============================
 !MCSCF STATE 2.1 Singlet Energy              -293.318599055774
 Nuclear energy                                  0.00000000
 Kinetic energy                                205.06199075
 One electron energy                          -522.59283570
 Two electron energy                           229.27423664
 Virial ratio                                    2.43038989
 
 !MCSCF STATE 2.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Singlet
 =============================
 !MCSCF STATE 3.1 Singlet Energy              -293.318599055622
 Nuclear energy                                  0.00000000
 Kinetic energy                                205.06199076
 One electron energy                          -522.59283572
 Two electron energy                           229.27423667
 Virial ratio                                    2.43038989
 
 !MCSCF STATE 3.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Singlet
 =============================
 !MCSCF STATE 4.1 Singlet Energy              -293.318599055162
 Nuclear energy                                  0.00000000
 Kinetic energy                                205.06199077
 One electron energy                          -522.59283580
 Two electron energy                           229.27423675
 Virial ratio                                    2.43038989
 
 !MCSCF STATE 4.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Singlet
 =============================
 !MCSCF STATE 5.1 Singlet Energy              -293.318599055151
 Nuclear energy                                  0.00000000
 Kinetic energy                                205.06199077
 One electron energy                          -522.59283580
 Two electron energy                           229.27423675
 Virial ratio                                    2.43038989
 
 !MCSCF STATE 5.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Singlet
 =============================
 !MCSCF STATE 6.1 Singlet Energy              -293.284762103468
 Nuclear energy                                  0.00000000
 Kinetic energy                                205.05366463
 One electron energy                          -522.43314577
 Two electron energy                           229.14838367
 Virial ratio                                    2.43028296
 
 !MCSCF STATE 6.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 ? Warning
 ? Transition properties are only calculated between states of the same symmetry
 ? The problem occurs in mu_properties_expec2

 !MCSCF expec      <1.1 Triplet|LXLX|1.1 Triplet>     1.000000000000
 !MCSCF expec      <2.1 Triplet|LXLX|2.1 Triplet>     1.000000000000
 !MCSCF expec      <3.1 Triplet|LXLX|3.1 Triplet>    -0.000000000000
 !MCSCF expec      <1.1 Singlet|LXLX|1.1 Singlet>     0.057670603242
 !MCSCF expec      <2.1 Singlet|LXLX|2.1 Singlet>     1.000000000000
 !MCSCF expec      <3.1 Singlet|LXLX|3.1 Singlet>     1.000000000000
 !MCSCF expec      <4.1 Singlet|LXLX|4.1 Singlet>     4.000000000000
 !MCSCF expec      <5.1 Singlet|LXLX|5.1 Singlet>     3.942329378717
 !MCSCF expec      <6.1 Singlet|LXLX|6.1 Singlet>    -0.000000000000
 
 !MCSCF expec      <1.1 Triplet|LYLY|1.1 Triplet>     1.000000000000
 !MCSCF expec      <2.1 Triplet|LYLY|2.1 Triplet>     0.000000000000
 !MCSCF expec      <3.1 Triplet|LYLY|3.1 Triplet>     1.000000000000
 !MCSCF expec      <1.1 Singlet|LYLY|1.1 Singlet>     2.558227189950
 !MCSCF expec      <2.1 Singlet|LYLY|2.1 Singlet>     1.000000000000
 !MCSCF expec      <3.1 Singlet|LYLY|3.1 Singlet>     4.000000000000
 !MCSCF expec      <4.1 Singlet|LYLY|4.1 Singlet>     1.000000000000
 !MCSCF expec      <5.1 Singlet|LYLY|5.1 Singlet>     1.441772882714
 !MCSCF expec      <6.1 Singlet|LYLY|6.1 Singlet>     0.000000000000
 
 !MCSCF expec      <1.1 Triplet|LZLZ|1.1 Triplet>    -0.000000000000
 !MCSCF expec      <2.1 Triplet|LZLZ|2.1 Triplet>     1.000000000000
 !MCSCF expec      <3.1 Triplet|LZLZ|3.1 Triplet>     1.000000000000
 !MCSCF expec      <1.1 Singlet|LZLZ|1.1 Singlet>     3.384102206808
 !MCSCF expec      <2.1 Singlet|LZLZ|2.1 Singlet>     4.000000000000
 !MCSCF expec      <3.1 Singlet|LZLZ|3.1 Singlet>     1.000000000000
 !MCSCF expec      <4.1 Singlet|LZLZ|4.1 Singlet>     1.000000000000
 !MCSCF expec      <5.1 Singlet|LZLZ|5.1 Singlet>     0.615897738569
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
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 3 5 4 2 6 1 1 3 5   4 6 2 1 6 3 5 2 4 1   3 5 4 6 2 1 3 5 4 2   613101415 9 812 711
                                        3 5 4 2 6 1 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 2 3 3 1 2 3 2 1 3   2 1 9 7 5 810 6 4 2   3 1 9 7 810 4 5 6 7   9 810 4 6 5 1 2 3 9
                                        7 810 4 6 5 1 2 3
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -7.35365     1  1  s    0.99569
    2.1     2.00000    -1.60821     1  1  d2-  1.00011
    3.1     2.00000    -1.60821     1  1  d2+  1.00011
    4.1     2.00000    -1.60821     1  1  d1+  1.00011
    5.1     2.00000    -1.60821     1  1  d0   1.00011
    6.1     2.00000    -1.60821     1  1  d1-  1.00011
    7.1     1.96763    -0.56491     1  2  s    0.96185
    1.2     2.00000    -5.26817     1  1  px   0.99986
    2.2     2.00000    -5.26817     1  1  py   0.99986
    3.2     2.00000    -5.26817     1  1  pz   0.99986
    4.2     0.67746    -0.06832     1  2  pz   0.96883
    5.2     0.67746    -0.06832     1  2  px   0.96883
    6.2     0.67746    -0.06832     1  2  py   0.96883
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 1 (Triplet)
 =======================================
 
 2 a0a         -0.00000000     -0.00000000      0.99370280
 2 aa0         -0.00000000      0.99370280      0.00000000
 2 0aa          0.99370280     -0.00000000      0.00000000
 0 2aa         -0.11204794     -0.00000000      0.00000000
 0 aa2         -0.00000000     -0.11204794      0.00000000
 0 a2a          0.00000000      0.00000000     -0.11204794
 
 Energy:     -293.35723297   -293.35723297   -293.35723297
 
 
 CI Coefficients of symmetry 1 (Singlet)
 =======================================
 
 2 020          0.80548480     -0.00000000     -0.00000000     -0.00000000     -0.09742226      0.56414809
 2 200         -0.31837225     -0.00000000     -0.00000000     -0.00000000      0.74628142      0.56414811
 2 b0a         -0.00000000      0.00000000      0.00000000     -0.70265399     -0.00000000     -0.00000000
 2 a0b          0.00000000     -0.00000000     -0.00000000      0.70265399      0.00000000      0.00000000
 2 ab0          0.00000000     -0.00000000      0.70265399     -0.00000000      0.00000000      0.00000000
 2 ba0         -0.00000000      0.00000000     -0.70265399      0.00000000     -0.00000000     -0.00000000
 2 0ab          0.00000000      0.70265399     -0.00000000     -0.00000000      0.00000000      0.00000000
 2 0ba         -0.00000000     -0.70265399      0.00000000      0.00000000     -0.00000000     -0.00000000
 2 002         -0.48711253     -0.00000000     -0.00000000     -0.00000000     -0.64885916      0.56414810
 0 202          0.09082485     -0.00000000     -0.00000000     -0.00000000     -0.01098514     -0.12276098
 0 220         -0.05492584     -0.00000000     -0.00000000     -0.00000000     -0.07316406     -0.12276097
 0 022         -0.03589902     -0.00000000     -0.00000000     -0.00000000      0.08414920     -0.12276097
 0 2ba         -0.00000000      0.07922986      0.00000000      0.00000000     -0.00000000     -0.00000000
 0 2ab          0.00000000     -0.07922986     -0.00000000     -0.00000000      0.00000000      0.00000000
 0 ba2         -0.00000000      0.00000000      0.07922986      0.00000000     -0.00000000     -0.00000000
 0 ab2          0.00000000     -0.00000000     -0.07922986     -0.00000000      0.00000000      0.00000000
 0 a2b         -0.00000000      0.00000000      0.00000000     -0.07922986     -0.00000000     -0.00000000
 0 b2a          0.00000000     -0.00000000     -0.00000000      0.07922986      0.00000000      0.00000000
 
 Energy:     -293.31859906   -293.31859906   -293.31859906   -293.31859906   -293.31859906   -293.28476210
 


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
 CPU TIMES  *         1.70      0.71      0.65
 REAL TIME  *         2.74 SEC
 DISK USED  *        34.50 MB (local),      470.15 MB (total)
 SF USED    *        12.40 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

         ENERGY     LL
    -293.3572330   2.0
    -293.3572330   2.0
    -293.3572330   2.0
    -293.3185991   6.0
    -293.3185991   6.0
    -293.3185991   6.0
    -293.3185991   6.0
    -293.3185991   6.0
    -293.2847621  -0.0
                                                  


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
     1      -293.35723297
     2      -293.35723297
     3      -293.35723297

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
    1     1     1     1.00000000     0.00000000  -293.35723297    -0.00000000    -0.88543874  0.35D-01  0.71D-01     0.13
    1     2     2     1.00000000     0.00000000  -293.35723297     0.00000000    -0.88575058  0.35D-01  0.71D-01     0.13
    1     3     3     1.00000000     0.00000000  -293.35723297     0.00000000    -0.88558557  0.35D-01  0.71D-01     0.13
    2     1     1     1.06925390    -0.71604314  -294.07327611    -0.71604314    -0.02019167  0.27D-02  0.11D-02     2.65
    2     2     2     1.06938899    -0.71596554  -294.07319850    -0.71596554    -0.02026683  0.28D-02  0.11D-02     2.65
    2     3     3     1.06955406    -0.71587325  -294.07310622    -0.71587325    -0.02035390  0.28D-02  0.11D-02     2.65
    3     1     1     1.06198213    -0.73457523  -294.09180820    -0.01853209    -0.00063525  0.92D-04  0.44D-04     4.83
    3     2     2     1.06197912    -0.73457400  -294.09180697    -0.01860846    -0.00063647  0.92D-04  0.44D-04     4.83
    3     3     3     1.06197675    -0.73457243  -294.09180540    -0.01869917    -0.00063808  0.92D-04  0.45D-04     4.83
    4     1     1     1.06111547    -0.73516772  -294.09240069    -0.00059249    -0.00002965  0.45D-05  0.22D-05     7.00
    4     2     2     1.06111180    -0.73516764  -294.09240061    -0.00059364    -0.00002975  0.45D-05  0.23D-05     7.00
    4     3     3     1.06110740    -0.73516754  -294.09240051    -0.00059512    -0.00002986  0.46D-05  0.23D-05     7.00
    5     1     1     1.06123569    -0.73519659  -294.09242956    -0.00002887    -0.00000113  0.12D-06  0.12D-06     9.18
    5     2     2     1.06123536    -0.73519659  -294.09242956    -0.00002895    -0.00000113  0.12D-06  0.12D-06     9.18
    5     3     3     1.06123496    -0.73519659  -294.09242956    -0.00002905    -0.00000113  0.12D-06  0.12D-06     9.18
    6     1     1     1.06126464    -0.73519777  -294.09243074    -0.00000118    -0.00000005  0.32D-08  0.71D-08    11.36
    6     2     2     1.06126478    -0.73519777  -294.09243074    -0.00000118    -0.00000005  0.32D-08  0.70D-08    11.36
    6     3     3     1.06126451    -0.73519777  -294.09243074    -0.00000118    -0.00000005  0.32D-08  0.71D-08    11.36
    7     1     1     1.06126530    -0.73519782  -294.09243079    -0.00000005    -0.00000000  0.47D-09  0.39D-09    13.48
    7     2     2     1.06126527    -0.73519782  -294.09243079    -0.00000005    -0.00000000  0.47D-09  0.40D-09    13.48
    7     3     3     1.06126532    -0.73519782  -294.09243079    -0.00000005    -0.00000000  0.47D-09  0.39D-09    13.48


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.6%
 S   0.6%   4.4%
 P   0.6%  28.6%  25.9%

 Initialization:   0.6%
 Other:           38.8%

 Total CPU:       13.5 seconds
 =====================================



 Wavefunction saved on  5102.2

 Reference coefficients greater than 0.0500000
 =============================================
 2222222222//0           0.0000000   0.9653079   0.0000000
 2222222222/0/           0.9653079  -0.0000000   0.0000000
 22222222220//          -0.0000000  -0.0000000   0.9653079
 2222220222//2          -0.0000000  -0.1010529  -0.0000000
 2222220222/2/          -0.1010529   0.0000000  -0.0000000
 22222202222//           0.0000000   0.0000000  -0.1010528

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1          -0.000000    0.000000    0.970552
 2          -0.000000    0.970552   -0.000000
 3           0.970552    0.000000    0.000000

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.970552   -0.000000   -0.000000
 2          -0.000000    0.970552    0.000000
 3          -0.000000    0.000000    0.970552


 RESULTS FOR STATE 1.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.97055193 (fixed)   0.97058282 (relaxed)   0.97055193 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00031892   -0.00061559   -0.00080073
 Singles      0.01439130   -0.04378486   -0.05121257
 Pairs        0.04689354   -0.69079737   -0.68318452
 Total        1.06160376   -0.73519782   -0.73519782
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -293.35723297
 Nuclear energy                         0.00000000
 Kinetic energy                       204.89947669
 One electron energy                 -521.59259639
 Two electron energy                  227.50016560
 Virial quotient                       -1.43530103
 Correlation energy                    -0.73519782
 !MRCI STATE 1.1 Energy              -294.092430787390

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -294.13772174 (Davidson, fixed reference)
 Cluster corrected energies          -294.13767205 (Davidson, relaxed reference)
 Cluster corrected energies          -294.13772174 (Davidson, rotated reference)

 Cluster corrected energies          -294.13528945 (Pople, fixed reference)
 Cluster corrected energies          -294.13524004 (Pople, relaxed reference)
 Cluster corrected energies          -294.13528945 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Coefficient of reference function:   C(0) = 0.97055194 (fixed)   0.97058283 (relaxed)   0.97055194 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00031892   -0.00061559   -0.65151188
 Singles      0.01439128   -0.04378485   -0.05121256
 Pairs        0.04689354    0.00000000   -0.03247338
 Total        1.06160374   -0.04440043   -0.73519782
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -293.35723297
 Nuclear energy                         0.00000000
 Kinetic energy                       204.89947573
 One electron energy                 -521.59259596
 Two electron energy                  227.50016517
 Virial quotient                       -1.43530104
 Correlation energy                    -0.73519782
 !MRCI STATE 2.1 Energy              -294.092430787275

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -294.13772172 (Davidson, fixed reference)
 Cluster corrected energies          -294.13767203 (Davidson, relaxed reference)
 Cluster corrected energies          -294.13772172 (Davidson, rotated reference)

 Cluster corrected energies          -294.13528944 (Pople, fixed reference)
 Cluster corrected energies          -294.13524002 (Pople, relaxed reference)
 Cluster corrected energies          -294.13528944 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.97055192 (fixed)   0.97058281 (relaxed)   0.97055192 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00031892   -0.00061559   -0.65151183
 Singles      0.01439132   -0.04378487   -0.05121258
 Pairs        0.04689354   -0.00000000   -0.03247341
 Total        1.06160378   -0.04440046   -0.73519782
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -293.35723297
 Nuclear energy                         0.00000000
 Kinetic energy                       204.89947704
 One electron energy                 -521.59259652
 Two electron energy                  227.50016573
 Virial quotient                       -1.43530103
 Correlation energy                    -0.73519782
 !MRCI STATE 3.1 Energy              -294.092430787267

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -294.13772175 (Davidson, fixed reference)
 Cluster corrected energies          -294.13767206 (Davidson, relaxed reference)
 Cluster corrected energies          -294.13772175 (Davidson, rotated reference)

 Cluster corrected energies          -294.13528947 (Pople, fixed reference)
 Cluster corrected energies          -294.13524005 (Pople, relaxed reference)
 Cluster corrected energies          -294.13528947 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       33.90       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       5       22.69       700     1000      520     2140     5102   
                                         GEOM     BASIS   MCVARS    MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI       INT
 CPU TIMES  *        15.66     13.93      0.71      0.65
 REAL TIME  *        18.72 SEC
 DISK USED  *        56.68 MB (local),      736.32 MB (total)
 SF USED    *       237.44 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =      -294.13772174  AU                              
 SETTING HLSDIAG(2)     =      -294.13772172  AU                              
 SETTING HLSDIAG(3)     =      -294.13772175  AU                              


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
     1      -293.31859906
     2      -293.31859906
     3      -293.31859906
     4      -293.31859906
     5      -293.31859906
     6      -293.28476210

 Number of blocks in overlap matrix:   643   Smallest eigenvalue:  0.25D-01
 Number of N-2 electron functions:     808
 Number of N-1 electron functions:    2099

 Number of internal configurations:                  450
 Number of singly external configurations:         87134
 Number of doubly external configurations:       1394048
 Total number of contracted configurations:      1481632
 Total number of uncontracted configurations:    3677611

 Diagonal Coupling coefficients finished.               Storage:    700785 words, CPU-Time:      0.10 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:    510950 words, CPU-time:      0.04 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -293.31859906    -0.00000000    -0.89403739  0.39D-01  0.75D-01     0.22
    1     2     2     1.00000000     0.00000000  -293.31859906    -0.00000000    -0.89472932  0.40D-01  0.75D-01     0.22
    1     3     3     1.00000000     0.00000000  -293.31859906     0.00000000    -0.89475924  0.40D-01  0.75D-01     0.22
    1     4     4     1.00000000     0.00000000  -293.31859906    -0.00000000    -0.89476431  0.40D-01  0.75D-01     0.22
    1     5     5     1.00000000     0.00000000  -293.31859906     0.00000000    -0.89379983  0.39D-01  0.75D-01     0.22
    1     6     6     1.00000000     0.00000000  -293.28476210     0.00000000    -0.88038879  0.14D-01  0.90D-01     0.22
    2     1     1     1.07374683    -0.72142611  -294.04002516    -0.72142611    -0.02122701  0.29D-02  0.14D-02     7.30
    2     2     2     1.07367136    -0.72140892  -294.04000798    -0.72140892    -0.02125634  0.29D-02  0.14D-02     7.30
    2     3     3     1.07422126    -0.72114537  -294.03974442    -0.72114537    -0.02156584  0.31D-02  0.14D-02     7.30
    2     4     4     1.07427701    -0.72106562  -294.03966467    -0.72106562    -0.02165759  0.31D-02  0.14D-02     7.30
    2     5     5     1.07433967    -0.72102436  -294.03962342    -0.72102436    -0.02170034  0.31D-02  0.14D-02     7.30
    2     6     6     1.06855208    -0.71611291  -294.00087501    -0.71611291    -0.02020920  0.26D-02  0.16D-02     7.30
    3     1     1     1.06554886    -0.74087904  -294.05947810    -0.01945293    -0.00061662  0.74D-04  0.51D-04    14.24
    3     2     2     1.06558307    -0.74087739  -294.05947645    -0.01946847    -0.00061915  0.75D-04  0.52D-04    14.24
    3     3     3     1.06561033    -0.74086500  -294.05946406    -0.01971964    -0.00063635  0.79D-04  0.53D-04    14.24
    3     4     4     1.06562994    -0.74086500  -294.05946406    -0.01979938    -0.00063710  0.79D-04  0.53D-04    14.24
    3     5     5     1.06560938    -0.74086392  -294.05946297    -0.01983956    -0.00063722  0.79D-04  0.53D-04    14.24
    3     6     6     1.06274791    -0.73454790  -294.01931000    -0.01843499    -0.00061389  0.61D-04  0.73D-04    14.24
    4     1     1     1.06472897    -0.74147525  -294.06007431    -0.00059621    -0.00003178  0.51D-05  0.25D-05    21.19
    4     2     2     1.06472938    -0.74147520  -294.06007425    -0.00059781    -0.00003182  0.51D-05  0.25D-05    21.19
    4     3     3     1.06473217    -0.74147384  -294.06007289    -0.00060883    -0.00003354  0.53D-05  0.27D-05    21.19
    4     4     4     1.06472955    -0.74147381  -294.06007287    -0.00060881    -0.00003359  0.53D-05  0.27D-05    21.19
    4     5     5     1.06473053    -0.74147379  -294.06007284    -0.00060987    -0.00003362  0.53D-05  0.27D-05    21.19
    4     6     6     1.06205154    -0.73514640  -294.01990851    -0.00059851    -0.00003236  0.55D-05  0.30D-05    21.19
    5     1     1     1.06480723    -0.74150634  -294.06010540    -0.00003109    -0.00000134  0.20D-06  0.11D-06    28.21
    5     2     2     1.06480822    -0.74150633  -294.06010538    -0.00003113    -0.00000135  0.20D-06  0.11D-06    28.21
    5     3     3     1.06480765    -0.74150629  -294.06010534    -0.00003245    -0.00000140  0.21D-06  0.11D-06    28.21
    5     4     4     1.06480780    -0.74150628  -294.06010534    -0.00003247    -0.00000140  0.22D-06  0.11D-06    28.21
    5     5     5     1.06480846    -0.74150628  -294.06010533    -0.00003249    -0.00000141  0.22D-06  0.12D-06    28.21
    5     6     6     1.06209208    -0.73517824  -294.01994034    -0.00003183    -0.00000163  0.26D-06  0.16D-06    28.21
    6     1     1     1.06480120    -0.74150774  -294.06010680    -0.00000140    -0.00000005  0.47D-08  0.55D-08    35.36
    6     2     2     1.06480114    -0.74150774  -294.06010680    -0.00000141    -0.00000005  0.47D-08  0.56D-08    35.36
    6     3     3     1.06480107    -0.74150774  -294.06010680    -0.00000145    -0.00000005  0.47D-08  0.59D-08    35.36
    6     4     4     1.06480078    -0.74150774  -294.06010680    -0.00000146    -0.00000005  0.48D-08  0.59D-08    35.36
    6     5     5     1.06480079    -0.74150774  -294.06010680    -0.00000146    -0.00000005  0.48D-08  0.59D-08    35.36
    6     6     6     1.06208506    -0.73517992  -294.01994202    -0.00000168    -0.00000007  0.84D-08  0.83D-08    35.36
    7     1     1     1.06480018    -0.74150779  -294.06010685    -0.00000005    -0.00000000  0.57D-09  0.20D-09    44.13
    7     2     2     1.06480023    -0.74150779  -294.06010685    -0.00000005    -0.00000000  0.58D-09  0.21D-09    44.13
    7     3     3     1.06480018    -0.74150779  -294.06010685    -0.00000005    -0.00000000  0.61D-09  0.21D-09    44.13
    7     4     4     1.06480018    -0.74150779  -294.06010685    -0.00000005    -0.00000000  0.62D-09  0.21D-09    44.13
    7     5     5     1.06480022    -0.74150779  -294.06010685    -0.00000005    -0.00000000  0.62D-09  0.21D-09    44.13
    7     6     6     1.06208131    -0.73517999  -294.01994209    -0.00000007    -0.00000000  0.81D-09  0.35D-09    44.13


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.3%
 S   0.3%   1.8%
 P   0.4%  18.6%  33.3%

 Initialization:   0.3%
 Other:           44.9%

 Total CPU:       44.1 seconds
 =====================================



 Wavefunction saved on  5101.2

 Reference coefficients greater than 0.0500000
 =============================================
 2222222222/\0          -0.0000000  -0.0000000   0.0000000   0.9636445  -0.0000000   0.0000000
 22222222220/\          -0.0000000  -0.0000000   0.9636445  -0.0000000   0.0000000   0.0000000
 2222222222/0\          -0.0000000   0.0000000  -0.0000000   0.0000000   0.9636445  -0.0000000
 2222222222020           0.7634808  -0.1901868  -0.0000000   0.0000000   0.0000000   0.5489290
 2222222222200          -0.2170337   0.7562871   0.0000000  -0.0000000  -0.0000000   0.5489289
 2222222222002          -0.5464470  -0.5661003  -0.0000000  -0.0000000   0.0000000   0.5489290
 2222220222220          -0.0572059  -0.0592633  -0.0000000  -0.0000000   0.0000000  -0.1114901
 2222220222022          -0.0227206   0.0791734   0.0000000  -0.0000000  -0.0000000  -0.1114901
 2222220222202           0.0799265  -0.0199101  -0.0000000   0.0000000   0.0000000  -0.1114901
 2222220222/2\           0.0000000  -0.0000000   0.0000000  -0.0000000  -0.1008811  -0.0000000
 22222202222/\           0.0000000   0.0000000  -0.1008811   0.0000000  -0.0000000  -0.0000000
 2222220222/\2           0.0000000   0.0000000  -0.0000000  -0.1008811   0.0000000  -0.0000000

 Coefficients of singly external configurations greater than 0.0500000
 =====================================================================

 222222\2220/\  17.1     0.0000000   0.0000000  -0.0507241   0.0000000  -0.0000000  -0.0000000

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.961475   -0.000000   -0.000000   -0.000000    0.119560    0.000000
 2          -0.119560   -0.000000   -0.000000    0.000000    0.961475   -0.000000
 3          -0.000000    0.968880    0.000000   -0.000000    0.000000   -0.000000
 4           0.000000   -0.000000    0.968880    0.000000    0.000000   -0.000000
 5           0.000000    0.000000   -0.000000    0.968880   -0.000000    0.000000
 6           0.000000    0.000000    0.000000   -0.000000   -0.000000    0.970092

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.968880   -0.000000   -0.000000    0.000000    0.000000    0.000000
 2          -0.000000    0.968880    0.000000   -0.000000    0.000000   -0.000000
 3          -0.000000    0.000000    0.968880   -0.000000    0.000000    0.000000
 4           0.000000   -0.000000   -0.000000    0.968880   -0.000000   -0.000000
 5           0.000000    0.000000    0.000000   -0.000000    0.968880    0.000000
 6           0.000000   -0.000000    0.000000   -0.000000    0.000000    0.970092


 RESULTS FOR STATE 1.1
 =====================

 Coefficient of reference function:   C(0) = 0.96147465 (fixed)   0.96891061 (relaxed)   0.96887979 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00044240   -0.00089687   -0.65163055
 Singles      0.01655088   -0.04767254   -0.05627408
 Pairs        0.04827797   -0.00000001   -0.03360316
 Total        1.06527125   -0.04856941   -0.74150779
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -293.31859906
 Nuclear energy                         0.00000000
 Kinetic energy                       204.90403098
 One electron energy                 -521.53898471
 Two electron energy                  227.47887786
 Virial quotient                       -1.43511138
 Correlation energy                    -0.74150779
 !MRCI STATE 1.1 Energy              -294.060106848288

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -294.10850599 (Davidson, fixed reference)
 Cluster corrected energies          -294.10845573 (Davidson, relaxed reference)
 Cluster corrected energies          -294.10850599 (Davidson, rotated reference)

 Cluster corrected energies          -294.10657010 (Pople, fixed reference)
 Cluster corrected energies          -294.10651918 (Pople, relaxed reference)
 Cluster corrected energies          -294.10657010 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.96147463 (fixed)   0.96891059 (relaxed)   0.96887977 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00044240   -0.00089687   -0.65163057
 Singles      0.01655088   -0.04767255   -0.05627408
 Pairs        0.04827802    0.00000006   -0.03360314
 Total        1.06527130   -0.04856936   -0.74150779
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -293.31859906
 Nuclear energy                         0.00000000
 Kinetic energy                       204.90403608
 One electron energy                 -521.53898799
 Two electron energy                  227.47888115
 Virial quotient                       -1.43511135
 Correlation energy                    -0.74150779
 !MRCI STATE 2.1 Energy              -294.060106848121

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -294.10850602 (Davidson, fixed reference)
 Cluster corrected energies          -294.10845577 (Davidson, relaxed reference)
 Cluster corrected energies          -294.10850602 (Davidson, rotated reference)

 Cluster corrected energies          -294.10657014 (Pople, fixed reference)
 Cluster corrected energies          -294.10651921 (Pople, relaxed reference)
 Cluster corrected energies          -294.10657014 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.96887979 (fixed)   0.96891061 (relaxed)   0.96887979 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00044240   -0.00089687   -0.65163050
 Singles      0.01655088   -0.04767260   -0.05627414
 Pairs        0.04827797    0.00000000   -0.03360315
 Total        1.06527125   -0.04856947   -0.74150779
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -293.31859906
 Nuclear energy                         0.00000000
 Kinetic energy                       204.90407371
 One electron energy                 -521.53901005
 Two electron energy                  227.47890320
 Virial quotient                       -1.43511108
 Correlation energy                    -0.74150779
 !MRCI STATE 3.1 Energy              -294.060106848119

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -294.10850599 (Davidson, fixed reference)
 Cluster corrected energies          -294.10845573 (Davidson, relaxed reference)
 Cluster corrected energies          -294.10850599 (Davidson, rotated reference)

 Cluster corrected energies          -294.10657010 (Pople, fixed reference)
 Cluster corrected energies          -294.10651918 (Pople, relaxed reference)
 Cluster corrected energies          -294.10657010 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.96887979 (fixed)   0.96891062 (relaxed)   0.96887979 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00044240   -0.00089687   -0.65163050
 Singles      0.01655086   -0.04767260   -0.05627412
 Pairs        0.04827799    0.00000000   -0.03360317
 Total        1.06527124   -0.04856946   -0.74150779
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -293.31859906
 Nuclear energy                         0.00000000
 Kinetic energy                       204.90407618
 One electron energy                 -521.53901023
 Two electron energy                  227.47890338
 Virial quotient                       -1.43511106
 Correlation energy                    -0.74150779
 !MRCI STATE 4.1 Energy              -294.060106848065

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -294.10850598 (Davidson, fixed reference)
 Cluster corrected energies          -294.10845573 (Davidson, relaxed reference)
 Cluster corrected energies          -294.10850598 (Davidson, rotated reference)

 Cluster corrected energies          -294.10657010 (Pople, fixed reference)
 Cluster corrected energies          -294.10651917 (Pople, relaxed reference)
 Cluster corrected energies          -294.10657010 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.96887977 (fixed)   0.96891060 (relaxed)   0.96887977 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00044240   -0.00089687   -0.65163044
 Singles      0.01655089   -0.04767263   -0.05627414
 Pairs        0.04827800   -0.00000000   -0.03360321
 Total        1.06527129   -0.04856950   -0.74150779
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -293.31859906
 Nuclear energy                         0.00000000
 Kinetic energy                       204.90407772
 One electron energy                 -521.53901156
 Two electron energy                  227.47890471
 Virial quotient                       -1.43511105
 Correlation energy                    -0.74150779
 !MRCI STATE 5.1 Energy              -294.060106847984

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -294.10850602 (Davidson, fixed reference)
 Cluster corrected energies          -294.10845576 (Davidson, relaxed reference)
 Cluster corrected energies          -294.10850602 (Davidson, rotated reference)

 Cluster corrected energies          -294.10657013 (Pople, fixed reference)
 Cluster corrected energies          -294.10651920 (Pople, relaxed reference)
 Cluster corrected energies          -294.10657013 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Coefficient of reference function:   C(0) = 0.97009159 (fixed)   0.97018510 (relaxed)   0.97009159 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00049923   -0.00072775   -0.00103027
 Singles      0.00664256   -0.02841143   -0.03133427
 Pairs        0.05546974   -0.70604082   -0.70281546
 Total        1.06261153   -0.73517999   -0.73517999
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -293.28476210
 Nuclear energy                         0.00000000
 Kinetic energy                       204.91725384
 One electron energy                 -521.37097778
 Two electron energy                  227.35103568
 Virial quotient                       -1.43482277
 Correlation energy                    -0.73517999
 !MRCI STATE 6.1 Energy              -294.019942094464

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -294.06597284 (Davidson, fixed reference)
 Cluster corrected energies          -294.06582224 (Davidson, relaxed reference)
 Cluster corrected energies          -294.06597284 (Davidson, rotated reference)

 Cluster corrected energies          -294.06403179 (Pople, fixed reference)
 Cluster corrected energies          -294.06387989 (Pople, relaxed reference)
 Cluster corrected energies          -294.06403179 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       33.90       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       6       91.35       700     1000      520     2140     5102     5101   
                                         GEOM     BASIS   MCVARS    MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI       INT
 CPU TIMES  *        62.18     46.52     13.93      0.71      0.65
 REAL TIME  *        72.04 SEC
 DISK USED  *       125.33 MB (local),        1.52 GB (total)
 SF USED    *       716.13 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(4)     =      -294.10850599  AU                              
 SETTING HLSDIAG(5)     =      -294.10850602  AU                              
 SETTING HLSDIAG(6)     =      -294.10850599  AU                              
 SETTING HLSDIAG(7)     =      -294.10850598  AU                              
 SETTING HLSDIAG(8)     =      -294.10850602  AU                              
 SETTING HLSDIAG(9)     =      -294.06597284  AU                              


         HLSDIAG
    -294.1377217
    -294.1377217
    -294.1377218
    -294.1085060
    -294.1085060
    -294.1085060
    -294.1085060
    -294.1085060
    -294.0659728
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Diagonal elements of H will be replaced by values from variable HLSDIAG


   ******************************
   *** Spin-orbit calculation ***
   ******************************


   Spin-orbit matrix elements
   ==========================

 Wavefunction restored from record  5102.2  Symmetry=1  S= 1.0  NSTATE=   3

 Original energies:   -294.092431   -294.092431   -294.092431
 Replaced energies:   -294.137722   -294.137722   -294.137722

 Wavefunction restored from record  5101.2  Symmetry=1  S= 0.0  NSTATE=   6

 Original energies:   -294.060107   -294.060107   -294.060107   -294.060107   -294.060107   -294.019942
 Replaced energies:   -294.108506   -294.108506   -294.108506   -294.108506   -294.108506   -294.065973



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=  -294.13772175

 Wigner-Eckart theorem used for 10 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.1  1.0  1.0       0.00       0.00       0.00      -0.00       0.00    -314.86       0.00       0.00       0.00       0.00
                            0.00     445.27       0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00     351.16

    2   2.1  1.0  1.0       0.00       0.01       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00     251.34
                         -445.27       0.00      -0.00       0.00       0.00    -314.86       0.00       0.00       0.00      -0.00

    3   3.1  1.0  1.0       0.00       0.00       0.00     314.86      -0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00       0.00     314.86      -0.00       0.00       0.00       0.00       0.00

    4   1.1  1.0  0.0      -0.00      -0.00     314.86       0.00       0.00       0.00      -0.00       0.00    -314.86       0.00
                            0.00      -0.00      -0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00       0.00

    5   2.1  1.0  0.0       0.00      -0.00      -0.00       0.00       0.01       0.00      -0.00      -0.00       0.00       0.00
                            0.00      -0.00    -314.86      -0.00       0.00       0.00       0.00       0.00    -314.86      -0.00

    6   3.1  1.0  0.0    -314.86       0.00       0.00       0.00       0.00       0.00     314.86      -0.00       0.00       0.00
                            0.00     314.86       0.00      -0.00      -0.00       0.00       0.00     314.86      -0.00    -141.17

    7   1.1  1.0 -1.0       0.00       0.00       0.00      -0.00      -0.00     314.86       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00      -0.00      -0.00      -0.00    -445.27      -0.00    -351.16

    8   2.1  1.0 -1.0       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00       0.01       0.00     251.34
                           -0.00      -0.00      -0.00       0.00      -0.00    -314.86     445.27      -0.00       0.00       0.00

    9   3.1  1.0 -1.0       0.00       0.00       0.00    -314.86       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00     314.86       0.00       0.00      -0.00       0.00      -0.00

   10   1.1  0.0  0.0       0.00     251.34       0.00       0.00       0.00       0.00       0.00     251.34       0.00    6412.12
                         -351.16       0.00      -0.00      -0.00       0.00     141.17     351.16      -0.00       0.00       0.00

   11   2.1  0.0  0.0      -0.00     260.38      -0.00       0.00       0.00       0.00      -0.00     260.38      -0.00       0.00
                           87.48      -0.00      -0.00       0.00      -0.00    -491.94     -87.48       0.00       0.00      -0.00

   12   3.1  0.0  0.0     313.40       0.00       0.00       0.00       0.00       0.00     313.40       0.00       0.00       0.00
                            0.00     313.40       0.00       0.00       0.00      -0.00      -0.00    -313.40      -0.00      -0.00

   13   4.1  0.0  0.0      -0.00       0.00      -0.00       0.00       0.00       0.00      -0.00       0.00      -0.00       0.00
                           -0.00      -0.00     313.40     443.22      -0.00       0.00       0.00       0.00    -313.40      -0.00

   14   5.1  0.0  0.0       0.00      -0.00    -313.40       0.00       0.00       0.00       0.00      -0.00    -313.40       0.00
                           -0.00       0.00      -0.00      -0.00    -443.22       0.00       0.00      -0.00       0.00      -0.00

   15   6.1  0.0  0.0       0.00     521.04       0.00       0.00       0.00       0.00       0.00     521.04       0.00       0.00
                          521.04      -0.00       0.00      -0.00      -0.00     736.87    -521.04       0.00      -0.00      -0.00


   Nr   State  S   Sz       11         12         13         14         15

    1   1.1  1.0  1.0      -0.00     313.40      -0.00       0.00       0.00
                          -87.48      -0.00       0.00       0.00    -521.04

    2   2.1  1.0  1.0     260.38       0.00       0.00      -0.00     521.04
                            0.00    -313.40       0.00      -0.00       0.00

    3   3.1  1.0  1.0      -0.00       0.00      -0.00    -313.40       0.00
                            0.00      -0.00    -313.40       0.00      -0.00

    4   1.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00    -443.22       0.00       0.00

    5   2.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00     443.22       0.00

    6   3.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00
                          491.94       0.00      -0.00      -0.00    -736.87

    7   1.1  1.0 -1.0      -0.00     313.40      -0.00       0.00       0.00
                           87.48       0.00      -0.00      -0.00     521.04

    8   2.1  1.0 -1.0     260.38       0.00       0.00      -0.00     521.04
                           -0.00     313.40      -0.00       0.00      -0.00

    9   3.1  1.0 -1.0      -0.00       0.00      -0.00    -313.40       0.00
                           -0.00       0.00     313.40      -0.00       0.00

   10   1.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00

   11   2.1  0.0  0.0    6412.11       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00

   12   3.1  0.0  0.0       0.00    6412.12       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00

   13   4.1  0.0  0.0       0.00       0.00    6412.12       0.00       0.00
                           -0.00      -0.00       0.00       0.00       0.00

   14   5.1  0.0  0.0       0.00       0.00       0.00    6412.11       0.00
                           -0.00      -0.00      -0.00       0.00       0.00

   15   6.1  0.0  0.0       0.00       0.00       0.00       0.00   15747.07
                           -0.00      -0.00      -0.00      -0.00       0.00




   Spin-orbit calculation in the basis of symmetry adapted wave functions
   ======================================================================


 >>> Hamiltonian transformed to symmetry adapted basis <<<


  Results for symmetry 1
  ======================

 => Spin-Orbit Matrixblock (CM-1)  (dimension: 15)

    The diagonal matrixelements are shifted by   -294.13772175 a.u.

  State Sym Spin    / Nr.        1           2           3           4           5           6           7           8

    1    1  |1 1>+              0.004       0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000      -0.000       0.000     445.273

    2    1  |1 1>+              0.000       0.007       0.000       0.000      -0.000      -0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000    -445.272    -445.273       0.000

    3    1  |1 1>+              0.000       0.000       0.000       0.000      -0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000     445.272       0.000      -0.000       0.000

    1    1  |1 0>              -0.000       0.000       0.000       0.004       0.000       0.000       0.000      -0.000
                                0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 0>               0.000      -0.000      -0.000       0.000       0.007       0.000       0.000       0.000
                                0.000       0.000    -445.272      -0.000       0.000       0.000       0.000      -0.000

    3    1  |1 0>               0.000      -0.000       0.000       0.000       0.000       0.000    -445.272       0.000
                                0.000     445.272       0.000      -0.000      -0.000       0.000       0.000       0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000    -445.272       0.004       0.000
                                0.000     445.273       0.000      -0.000      -0.000       0.000       0.000       0.000

    2    1  |1 1>-              0.000       0.000       0.000      -0.000       0.000       0.000       0.000       0.007
                             -445.273       0.000      -0.000      -0.000       0.000      -0.000       0.000       0.000

    3    1  |1 1>-              0.000       0.000       0.000     445.272      -0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000       0.000      -0.000      -0.000       0.000       0.000

    1    1  |0 0>               0.000     355.447       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000       0.000     141.174    -496.621       0.000

    2    1  |0 0>              -0.000     368.231      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000    -491.941     123.711      -0.000

    3    1  |0 0>             443.219       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000      -0.000       0.000     443.220

    4    1  |0 0>              -0.000       0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000     443.220      -0.000       0.000      -0.000      -0.000

    5    1  |0 0>               0.000      -0.000    -443.220       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000    -443.220       0.000      -0.000       0.000

    6    1  |0 0>               0.000     736.866       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000      -0.000     736.866     736.866      -0.000

  State Sym Spin    / Nr.        9          10          11          12          13          14          15

    1    1  |1 1>+              0.000       0.000      -0.000     443.219      -0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>+              0.000     355.447     368.231       0.000       0.000      -0.000     736.866
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>+              0.000       0.000      -0.000       0.000      -0.000    -443.220       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>             445.272       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000      -0.000    -443.220       0.000       0.000

    2    1  |1 0>              -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000      -0.000       0.000     443.220       0.000

    3    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000    -141.174     491.941       0.000      -0.000      -0.000    -736.866

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000     496.621    -123.711      -0.000       0.000       0.000    -736.866

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000    -443.220       0.000      -0.000       0.000

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000    -443.220       0.000      -0.000

    1    1  |0 0>               0.000    6412.119       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |0 0>               0.000       0.000    6412.111       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |0 0>               0.000       0.000       0.000    6412.119       0.000       0.000       0.000
                                0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

    4    1  |0 0>               0.000       0.000       0.000       0.000    6412.120       0.000       0.000
                              443.220      -0.000      -0.000      -0.000       0.000       0.000       0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000    6412.113       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000   15747.066
                                0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000

 => Eigenvalues of spin-orbit matrix in ascending order  (E0 = Emin,ges)
    (symmetry =  1)

    Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
             (au)           (au)        (cm-1)           (au)       (cm-1)        (eV)
    1  -294.14222285    -0.00450110     -987.88      0.00000000        0.00      0.0000
    2  -294.13975055    -0.00202880     -445.27      0.00247230      542.61      0.0673
    3  -294.13975055    -0.00202879     -445.27      0.00247231      542.61      0.0673
    4  -294.13975054    -0.00202879     -445.27      0.00247231      542.61      0.0673
    5  -294.13598972     0.00173203      380.14      0.00623313     1368.01      0.1696
    6  -294.13598971     0.00173205      380.14      0.00623315     1368.02      0.1696
    7  -294.13598970     0.00173205      380.14      0.00623315     1368.02      0.1696
    8  -294.13598970     0.00173205      380.14      0.00623315     1368.02      0.1696
    9  -294.13598969     0.00173206      380.14      0.00623316     1368.02      0.1696
   10  -294.10820924     0.02951251     6477.25      0.03401361     7465.12      0.9256
   11  -294.10820924     0.02951252     6477.25      0.03401361     7465.13      0.9256
   12  -294.10820921     0.02951254     6477.25      0.03401364     7465.13      0.9256
   13  -294.10820921     0.02951254     6477.25      0.03401364     7465.13      0.9256
   14  -294.10820920     0.02951255     6477.26      0.03401365     7465.13      0.9256
   15  -294.06552934     0.07219241    15844.40      0.07669351    16832.28      2.0869

 => Eigenvectors of spin-orbit matrix columnwise and corresponding to the
    eigenvalues in ascending order (symmetry =  1)

  Basis states          Eigenvectors (columnwise)

 State Sym Spin     / Nr.      1           2           3           4           5           6           7           8

   1    1  |1 1>+         -0.00000000  0.00000000  0.00000000  0.70710823 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   2    1  |1 1>+         -0.57567709  0.00000000 -0.00000000 -0.00000000  0.22390373 -0.00000000  0.78032881 -0.00000007
                          -0.00000121  0.00000000 -0.00000000 -0.00000000 -0.02148122 -0.00000000 -0.00622693  0.00000000

   3    1  |1 1>+         -0.00000000  0.00000000  0.70710986 -0.00000000  0.00000000 -0.00000000 -0.00000006 -0.70331661
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   1    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.70710517  0.00000000  0.00000000 -0.00000000  0.70332132  0.00000000 -0.00000000

   2    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000  0.70710370 -0.00000000 -0.00000000  0.00000000  0.00000006  0.70332279

   3    1  |1 0>          -0.00000121  0.00000000  0.00000000  0.00000000  0.07528058  0.00000000  0.00155906  0.00000000
                           0.57568001 -0.00000000  0.00000000  0.00000000  0.78466707 -0.00000000  0.19537348 -0.00000002

   1    1  |1 1>-         -0.00000121  0.00000000  0.00000000 -0.00000000 -0.05379962 -0.00000000  0.00466786 -0.00000000
                           0.57567848 -0.00000000  0.00000000  0.00000000 -0.56076596 -0.00000000  0.58495292 -0.00000006

   2    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000  0.70710533  0.00000000 -0.00000000  0.00000000 -0.00000000

   3    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000  0.70710839 -0.00000000 -0.00000000 -0.00000000  0.70331809  0.00000000 -0.00000000

   1    1  |0 0>          -0.00000005 -0.00000000 -0.00000000  0.00000000  0.05133910  0.00000000 -0.08956985  0.00000001
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00492545 -0.00000000  0.00071476 -0.00000000

   2    1  |0 0>          -0.00000012  0.00000000 -0.00000000  0.00000000 -0.08916337  0.00000000 -0.05157328  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00855429  0.00000000  0.00041155  0.00000000

   3    1  |0 0>          -0.00000000  0.00000000 -0.00000000 -0.00000013  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   4    1  |0 0>          -0.00000000  0.00000019 -0.00000000  0.00000000 -0.00000000  0.10335752  0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   5    1  |0 0>           0.00000000  0.00000000  0.00000036 -0.00000000  0.00000000 -0.00000000 -0.00000001 -0.10335765
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   6    1  |0 0>           0.07604406  0.00000000 -0.00000000 -0.00000000 -0.00000012 -0.00000000 -0.00000011  0.00000000
                           0.00000016  0.00000000 -0.00000000  0.00000000  0.00000001 -0.00000000  0.00000000  0.00000000

 State Sym Spin     / Nr.      9          10          11          12          13          14          15

   1    1  |1 1>+         -0.70331825  0.00000000  0.00000000  0.07308479  0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   2    1  |1 1>+         -0.00000000 -0.00000000  0.06069659 -0.00000000  0.00000000  0.05863527  0.04390407
                           0.00000000  0.00000000  0.00001166 -0.00000000  0.00000000 -0.00001975  0.00000000

   3    1  |1 1>+         -0.00000000 -0.07308483 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   1    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.07308484  0.00000000  0.00000000

   2    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.07308496  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   3    1  |1 0>          -0.00000000 -0.00000000 -0.00001558  0.00000000  0.00000000 -0.00000783  0.00000000
                          -0.00000000 -0.00000000  0.08112789 -0.00000000 -0.00000000 -0.02324704 -0.04390405

   1    1  |1 1>-          0.00000000  0.00000000  0.00000392  0.00000000 -0.00000000  0.00002759  0.00000000
                          -0.00000000 -0.00000000 -0.02043144  0.00000000  0.00000000  0.08188231 -0.04390406

   2    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.70332116 -0.00000000 -0.00000000 -0.07308490 -0.00000000  0.00000000  0.00000000

   3    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.07308477  0.00000000 -0.00000000

   1    1  |0 0>           0.00000000 -0.00000000 -0.00039009  0.00000000 -0.00000000  0.99464391 -0.00000000
                          -0.00000000  0.00000000 -0.00000007 -0.00000000  0.00000000 -0.00033510 -0.00000000

   2    1  |0 0>           0.00000000 -0.00000001  0.99464393 -0.00000000 -0.00000000  0.00039009  0.00000000
                          -0.00000000  0.00000000  0.00019101 -0.00000000 -0.00000000 -0.00000013  0.00000000

   3    1  |0 0>           0.10335758 -0.00000000  0.00000000  0.99464426  0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   4    1  |0 0>           0.00000000 -0.00000000  0.00000000 -0.00000000  0.99464427  0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   5    1  |0 0>          -0.00000000  0.99464426  0.00000001  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   6    1  |0 0>           0.00000000 -0.00000000 -0.00000001  0.00000000  0.00000000 -0.00000000  0.99710446
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000001


  No SO block in symmetry 2


 Summary of SO results
 =====================

 Eigenvalues of the spin-orbit matrix
 ....................................

     Nr  Sym         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
                   (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1   1   -294.14222285     -0.00450110     -987.88      0.00000000        0.00      0.0000
     2   1   -294.13975055     -0.00202880     -445.27      0.00247230      542.61      0.0673
     3   1   -294.13975055     -0.00202879     -445.27      0.00247231      542.61      0.0673
     4   1   -294.13975054     -0.00202879     -445.27      0.00247231      542.61      0.0673
     5   1   -294.13598972      0.00173203      380.14      0.00623313     1368.01      0.1696
     6   1   -294.13598971      0.00173205      380.14      0.00623315     1368.02      0.1696
     7   1   -294.13598970      0.00173205      380.14      0.00623315     1368.02      0.1696
     8   1   -294.13598970      0.00173205      380.14      0.00623315     1368.02      0.1696
     9   1   -294.13598969      0.00173206      380.14      0.00623316     1368.02      0.1696
    10   1   -294.10820924      0.02951251     6477.25      0.03401361     7465.12      0.9256
    11   1   -294.10820924      0.02951252     6477.25      0.03401361     7465.13      0.9256
    12   1   -294.10820921      0.02951254     6477.25      0.03401364     7465.13      0.9256
    13   1   -294.10820921      0.02951254     6477.25      0.03401364     7465.13      0.9256
    14   1   -294.10820920      0.02951255     6477.26      0.03401365     7465.13      0.9256
    15   1   -294.06552934      0.07219241    15844.40      0.07669351    16832.28      2.0869

 E0 =   -294.13772175 is the energy of the lowest zeroth-order state
 E1 =   -294.14222285 is the energy of the lowest SO-state


 Spin-orbit eigenvectors   (columnwise and corresponding to the eigenvalues in ascending order)
 .......................

        Basis states           Eigenvectors (columnwise)

   Total
 Nr Sym  State Sym Spin / Nr.        1           2           3           4           5           6           7           8

  1  1     1    1  |1 1>+      -0.00000000  0.00000000  0.00000000  0.70710823 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  2  1     2    1  |1 1>+      -0.57567709  0.00000000 -0.00000000 -0.00000000  0.22390373 -0.00000000  0.78032881 -0.00000007
                               -0.00000121  0.00000000 -0.00000000 -0.00000000 -0.02148122 -0.00000000 -0.00622693  0.00000000

  3  1     3    1  |1 1>+      -0.00000000  0.00000000  0.70710986 -0.00000000  0.00000000 -0.00000000 -0.00000006 -0.70331661
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  4  1     1    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.70710517  0.00000000  0.00000000 -0.00000000  0.70332132  0.00000000 -0.00000000

  5  1     2    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000  0.70710370 -0.00000000 -0.00000000  0.00000000  0.00000006  0.70332279

  6  1     3    1  |1 0>       -0.00000121  0.00000000  0.00000000  0.00000000  0.07528058  0.00000000  0.00155906  0.00000000
                                0.57568001 -0.00000000  0.00000000  0.00000000  0.78466707 -0.00000000  0.19537348 -0.00000002

  7  1     1    1  |1 1>-      -0.00000121  0.00000000  0.00000000 -0.00000000 -0.05379962 -0.00000000  0.00466786 -0.00000000
                                0.57567848 -0.00000000  0.00000000  0.00000000 -0.56076596 -0.00000000  0.58495292 -0.00000006

  8  1     2    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000  0.70710533  0.00000000 -0.00000000  0.00000000 -0.00000000

  9  1     3    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000  0.70710839 -0.00000000 -0.00000000 -0.00000000  0.70331809  0.00000000 -0.00000000

 10  1     1    1  |0 0>       -0.00000005 -0.00000000 -0.00000000  0.00000000  0.05133910  0.00000000 -0.08956985  0.00000001
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00492545 -0.00000000  0.00071476 -0.00000000

 11  1     2    1  |0 0>       -0.00000012  0.00000000 -0.00000000  0.00000000 -0.08916337  0.00000000 -0.05157328  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00855429  0.00000000  0.00041155  0.00000000

 12  1     3    1  |0 0>       -0.00000000  0.00000000 -0.00000000 -0.00000013  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 13  1     4    1  |0 0>       -0.00000000  0.00000019 -0.00000000  0.00000000 -0.00000000  0.10335752  0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 14  1     5    1  |0 0>        0.00000000  0.00000000  0.00000036 -0.00000000  0.00000000 -0.00000000 -0.00000001 -0.10335765
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 15  1     6    1  |0 0>        0.07604406  0.00000000 -0.00000000 -0.00000000 -0.00000012 -0.00000000 -0.00000011  0.00000000
                                0.00000016  0.00000000 -0.00000000  0.00000000  0.00000001 -0.00000000  0.00000000  0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.        9          10          11          12          13          14          15

  1  1     1    1  |1 1>+      -0.70331825  0.00000000  0.00000000  0.07308479  0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  2  1     2    1  |1 1>+      -0.00000000 -0.00000000  0.06069659 -0.00000000  0.00000000  0.05863527  0.04390407
                                0.00000000  0.00000000  0.00001166 -0.00000000  0.00000000 -0.00001975  0.00000000

  3  1     3    1  |1 1>+      -0.00000000 -0.07308483 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  4  1     1    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.07308484  0.00000000  0.00000000

  5  1     2    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.07308496  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  6  1     3    1  |1 0>       -0.00000000 -0.00000000 -0.00001558  0.00000000  0.00000000 -0.00000783  0.00000000
                               -0.00000000 -0.00000000  0.08112789 -0.00000000 -0.00000000 -0.02324704 -0.04390405

  7  1     1    1  |1 1>-       0.00000000  0.00000000  0.00000392  0.00000000 -0.00000000  0.00002759  0.00000000
                               -0.00000000 -0.00000000 -0.02043144  0.00000000  0.00000000  0.08188231 -0.04390406

  8  1     2    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.70332116 -0.00000000 -0.00000000 -0.07308490 -0.00000000  0.00000000  0.00000000

  9  1     3    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.07308477  0.00000000 -0.00000000

 10  1     1    1  |0 0>        0.00000000 -0.00000000 -0.00039009  0.00000000 -0.00000000  0.99464391 -0.00000000
                               -0.00000000  0.00000000 -0.00000007 -0.00000000  0.00000000 -0.00033510 -0.00000000

 11  1     2    1  |0 0>        0.00000000 -0.00000001  0.99464393 -0.00000000 -0.00000000  0.00039009  0.00000000
                               -0.00000000  0.00000000  0.00019101 -0.00000000 -0.00000000 -0.00000013  0.00000000

 12  1     3    1  |0 0>        0.10335758 -0.00000000  0.00000000  0.99464426  0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 13  1     4    1  |0 0>        0.00000000 -0.00000000  0.00000000 -0.00000000  0.99464427  0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 14  1     5    1  |0 0>       -0.00000000  0.99464426  0.00000001  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 15  1     6    1  |0 0>        0.00000000 -0.00000000 -0.00000001  0.00000000  0.00000000 -0.00000000  0.99710446
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000001



 Composition of spin-orbit eigenvectors
 ======================================
   Total
 Nr Sym  State Sym Spin / Nr.      1        2        3        4        5        6        7        8

  1  1     1    1  |1 1>+         0.00%    0.00%    0.00%   50.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |1 1>+        33.14%    0.00%    0.00%    0.00%    5.06%    0.00%   60.90%    0.00%
  3  1     3    1  |1 1>+         0.00%    0.00%   50.00%    0.00%    0.00%    0.00%    0.00%   49.47%
  4  1     1    1  |1 0>          0.00%   50.00%    0.00%    0.00%    0.00%   49.47%    0.00%    0.00%
  5  1     2    1  |1 0>          0.00%    0.00%   50.00%    0.00%    0.00%    0.00%    0.00%   49.47%
  6  1     3    1  |1 0>         33.14%    0.00%    0.00%    0.00%   62.14%    0.00%    3.82%    0.00%
  7  1     1    1  |1 1>-        33.14%    0.00%    0.00%    0.00%   31.74%    0.00%   34.22%    0.00%
  8  1     2    1  |1 1>-         0.00%    0.00%    0.00%   50.00%    0.00%    0.00%    0.00%    0.00%
  9  1     3    1  |1 1>-         0.00%   50.00%    0.00%    0.00%    0.00%   49.47%    0.00%    0.00%
 10  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.27%    0.00%    0.80%    0.00%
 11  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.80%    0.00%    0.27%    0.00%
 12  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 13  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    1.07%    0.00%    0.00%
 14  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    1.07%
 15  1     6    1  |0 0>          0.58%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.      9       10       11       12       13       14       15

  1  1     1    1  |1 1>+        49.47%    0.00%    0.00%    0.53%    0.00%    0.00%    0.00%
  2  1     2    1  |1 1>+         0.00%    0.00%    0.37%    0.00%    0.00%    0.34%    0.19%
  3  1     3    1  |1 1>+         0.00%    0.53%    0.00%    0.00%    0.00%    0.00%    0.00%
  4  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.53%    0.00%    0.00%
  5  1     2    1  |1 0>          0.00%    0.53%    0.00%    0.00%    0.00%    0.00%    0.00%
  6  1     3    1  |1 0>          0.00%    0.00%    0.66%    0.00%    0.00%    0.05%    0.19%
  7  1     1    1  |1 1>-         0.00%    0.00%    0.04%    0.00%    0.00%    0.67%    0.19%
  8  1     2    1  |1 1>-        49.47%    0.00%    0.00%    0.53%    0.00%    0.00%    0.00%
  9  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.53%    0.00%    0.00%
 10  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%   98.93%    0.00%
 11  1     2    1  |0 0>          0.00%    0.00%   98.93%    0.00%    0.00%    0.00%    0.00%
 12  1     3    1  |0 0>          1.07%    0.00%    0.00%   98.93%    0.00%    0.00%    0.00%
 13  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%   98.93%    0.00%    0.00%
 14  1     5    1  |0 0>          0.00%   98.93%    0.00%    0.00%    0.00%    0.00%    0.00%
 15  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   99.42%



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       33.90       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       6       91.35       700     1000      520     2140     5102     5101   
                                         GEOM     BASIS   MCVARS    MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI        CI     MULTI       INT
 CPU TIMES  *        99.07     36.87     46.52     13.93      0.71      0.65
 REAL TIME  *       112.95 SEC
 DISK USED  *       125.33 MB (local),        1.52 GB (total)
 SF USED    *       716.13 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCVTZ-PP energy=   -294.065529344714

              CI              CI           MULTI
   -294.01994209   -294.09243079   -293.28476210
 **********************************************************************************************************************************
 Molpro calculation terminated with 1 warning(s)
