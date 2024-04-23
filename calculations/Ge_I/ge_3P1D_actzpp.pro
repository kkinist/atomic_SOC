
 Working directory              : /wrk/irikura/molpro.F7gxEhkZNQ/
 Global scratch directory       : /wrk/irikura/molpro.F7gxEhkZNQ/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.F7gxEhkZNQ/

 id        : nistki

 Nodes            nprocs
 pn112695.nist.gov   12
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1040), CPU time= 0.01 sec
 ***,Ge SO-CI
 memory,1500,M;
 
 gprint,orbitals,civector;
 
 symmetry,xyz
 geometry={Ge};
 
 basis=aug-cc-pwCVTZ-PP
 
 NTRIP = 3
 NSING = 5
 
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
 
 {ci;wf,sym=1,spin=2;state,3; save,5102.2}
 hlsdiag = energd4
 {ci;wf,sym=1,spin=0;state,5; save,5101.2}
 hlsdiag(NTRIP+1) = energd4
 
 table,hlsdiag
 
 {ci;hlsmat,ecp,5102.2,5101.2;print,vls=0,hls=0}                                 !compute and diagonalize SO matrix
 Commands initialized (846), CPU time= 0.01 sec, 717 directives.
 Default parameters read. Elapsed time= 0.11 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2023.2 linked Fri Sep 22 03:27:09 2023


 **********************************************************************************************************************************
 LABEL *   Ge SO-CI                                                                                                                                                      
  (32 PROC) 64 bit mpp version                                                           DATE: 16-Apr-24          TIME: 12:52:48  
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
 SETTING NSING          =         5.00000000                                  


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

     16.777 MB (compressed) written to integral file ( 18.6%)

     Node minimum: 0.786 MB, node maximum: 1.835 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:     461784.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:     461784      RECORD LENGTH: 524288

 Memory used in sort:       1.02 MW

 SORT1 READ    11031004. AND WROTE       88744. INTEGRALS IN      1 RECORDS. CPU TIME:     0.05 SEC, REAL TIME:     0.06 SEC
 SORT2 READ     1100136. AND WROTE     5533081. INTEGRALS IN     84 RECORDS. CPU TIME:     0.01 SEC, REAL TIME:     0.01 SEC

 Node minimum:      459824.  Node maximum:      464237. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      19       28.85       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         0.80      0.58
 REAL TIME  *         1.61 SEC
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
 Number of states:             5
 Number of CSFs:              12   (18 determinants, 36 intermediate states)

 Orbital guess generated from atomic densities. Full valence occupancy:    7   6
 *** IN SYMMETRY 1 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.551D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.550D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.297D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.367D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.916D-01 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 4 6 3 5 2 1 1 6 4   3 5 2 1 4 6 2 3 5 1   6 4 3 5 2 1 6 4 3 5   2 71310 8121415 911
                                        2 6 4 3 5 1 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.232D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.258D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.586D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.586D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.898D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.585D-02 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 2 3 3 1 2 2 1 3 2   1 3 5 4 6 7 9 810 2   1 3 9 7 6 5 4 810 9   7 810 4 5 6 2 1 3 6
                                        4 5 9 8 710 2 1 3

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.12500   0.12500   0.12500
 Weight factors for state symmetry  2:    0.12500   0.12500   0.12500   0.12500   0.12500
 
 Number of orbital rotations:  553  ( 15 closed/active, 369 closed/virtual, 0 active/active, 169 active/virtual )
 Total number of variables:    661
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1   17   24    0   -293.31652586    -293.33154710   -0.01502124    0.07799494 0.00042996 0.00000000  0.37E+00      0.24
   2    7   12    0   -293.33122175    -293.33308466   -0.00186292    0.13669450 0.00000526 0.00000000  0.30E-01      0.49
   3    5   10    0   -293.33309484    -293.33309501   -0.00000017    0.00084797 0.00000004 0.00000000  0.50E-03      0.72
   4   12   24    0   -293.33309501    -293.33309501    0.00000000    0.00000009 0.00000001 0.00000000  0.88E-07      0.95

 CONVERGENCE REACHED!  Final gradient:    0.00000001 ( 0.11E-07)
                       Final energy:   -293.33309501
 
 Results for state 1.1 Triplet
 =============================
 !MCSCF STATE 1.1 Triplet Energy              -293.357319155768
 Nuclear energy                                  0.00000000
 Kinetic energy                                205.05998177
 One electron energy                          -522.60804167
 Two electron energy                           229.25072251
 Virial ratio                                    2.43059273
 
 !MCSCF STATE 1.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Triplet
 =============================
 !MCSCF STATE 2.1 Triplet Energy              -293.357319155524
 Nuclear energy                                  0.00000000
 Kinetic energy                                205.05998179
 One electron energy                          -522.60804176
 Two electron energy                           229.25072261
 Virial ratio                                    2.43059273
 
 !MCSCF STATE 2.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Triplet
 =============================
 !MCSCF STATE 3.1 Triplet Energy              -293.357319155240
 Nuclear energy                                  0.00000000
 Kinetic energy                                205.05998182
 One electron energy                          -522.60804188
 Two electron energy                           229.25072272
 Virial ratio                                    2.43059273
 
 !MCSCF STATE 3.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.1 Singlet
 =============================
 !MCSCF STATE 1.1 Singlet Energy              -293.318560519181
 Nuclear energy                                  0.00000000
 Kinetic energy                                205.05998177
 One electron energy                          -522.60804165
 Two electron energy                           229.28948113
 Virial ratio                                    2.43040372
 
 !MCSCF STATE 1.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Singlet
 =============================
 !MCSCF STATE 2.1 Singlet Energy              -293.318560519058
 Nuclear energy                                  0.00000000
 Kinetic energy                                205.05998177
 One electron energy                          -522.60804167
 Two electron energy                           229.28948115
 Virial ratio                                    2.43040372
 
 !MCSCF STATE 2.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Singlet
 =============================
 !MCSCF STATE 3.1 Singlet Energy              -293.318560518462
 Nuclear energy                                  0.00000000
 Kinetic energy                                205.05998179
 One electron energy                          -522.60804176
 Two electron energy                           229.28948125
 Virial ratio                                    2.43040372
 
 !MCSCF STATE 3.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Singlet
 =============================
 !MCSCF STATE 4.1 Singlet Energy              -293.318560517745
 Nuclear energy                                  0.00000000
 Kinetic energy                                205.05998182
 One electron energy                          -522.60804188
 Two electron energy                           229.28948136
 Virial ratio                                    2.43040372
 
 !MCSCF STATE 4.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Singlet
 =============================
 !MCSCF STATE 5.1 Singlet Energy              -293.318560517662
 Nuclear energy                                  0.00000000
 Kinetic energy                                205.05998182
 One electron energy                          -522.60804189
 Two electron energy                           229.28948137
 Virial ratio                                    2.43040372
 
 !MCSCF STATE 5.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
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
 !MCSCF expec      <1.1 Singlet|LXLX|1.1 Singlet>     0.217380505976
 !MCSCF expec      <2.1 Singlet|LXLX|2.1 Singlet>     1.000000000000
 !MCSCF expec      <3.1 Singlet|LXLX|3.1 Singlet>     1.000000000000
 !MCSCF expec      <4.1 Singlet|LXLX|4.1 Singlet>     3.999999999995
 !MCSCF expec      <5.1 Singlet|LXLX|5.1 Singlet>     3.782619635440
 
 !MCSCF expec      <1.1 Triplet|LYLY|1.1 Triplet>     1.000000000000
 !MCSCF expec      <2.1 Triplet|LYLY|2.1 Triplet>     0.000000000000
 !MCSCF expec      <3.1 Triplet|LYLY|3.1 Triplet>     1.000000000000
 !MCSCF expec      <1.1 Singlet|LYLY|1.1 Singlet>     2.106006745206
 !MCSCF expec      <2.1 Singlet|LYLY|2.1 Singlet>     1.000000000000
 !MCSCF expec      <3.1 Singlet|LYLY|3.1 Singlet>     4.000000000000
 !MCSCF expec      <4.1 Singlet|LYLY|4.1 Singlet>     1.000000000005
 !MCSCF expec      <5.1 Singlet|LYLY|5.1 Singlet>     1.893992943327
 
 !MCSCF expec      <1.1 Triplet|LZLZ|1.1 Triplet>    -0.000000000000
 !MCSCF expec      <2.1 Triplet|LZLZ|2.1 Triplet>     1.000000000000
 !MCSCF expec      <3.1 Triplet|LZLZ|3.1 Triplet>     1.000000000000
 !MCSCF expec      <1.1 Singlet|LZLZ|1.1 Singlet>     3.676612748818
 !MCSCF expec      <2.1 Singlet|LZLZ|2.1 Singlet>     4.000000000000
 !MCSCF expec      <3.1 Singlet|LZLZ|3.1 Singlet>     1.000000000000
 !MCSCF expec      <4.1 Singlet|LZLZ|4.1 Singlet>     1.000000000000
 !MCSCF expec      <5.1 Singlet|LZLZ|5.1 Singlet>     0.323387421233
 
 !MCSCF expec      <1.1 Triplet|L**2|1.1 Triplet>     2.000000000000
 !MCSCF expec      <2.1 Triplet|L**2|2.1 Triplet>     2.000000000000
 !MCSCF expec      <3.1 Triplet|L**2|3.1 Triplet>     2.000000000000
 !MCSCF expec      <1.1 Singlet|L**2|1.1 Singlet>     6.000000000000
 !MCSCF expec      <2.1 Singlet|L**2|2.1 Singlet>     6.000000000000
 !MCSCF expec      <3.1 Singlet|L**2|3.1 Singlet>     6.000000000000
 !MCSCF expec      <4.1 Singlet|L**2|4.1 Singlet>     6.000000000000
 !MCSCF expec      <5.1 Singlet|L**2|5.1 Singlet>     6.000000000000
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 4 3 5 2 6 1 1 4 2   3 5 6 1 2 4 6 3 5 1   4 2 6 3 5 1 4 3 5 2   6 913101415 812 711
                                        4 3 5 2 6 1 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 2 3 2 1 3 3 2 1 3   2 1 4 6 5 810 7 9 3   1 2 4 6 810 5 7 9 4   9 7 810 6 5 1 3 2 4
                                        7 9 810 6 5 1 3 2
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -7.35211     1  1  s    0.99571
    2.1     2.00000    -1.60663     1  1  d1+  1.00010
    3.1     2.00000    -1.60663     1  1  d2-  1.00010
    4.1     2.00000    -1.60663     1  1  d2+  1.00010
    5.1     2.00000    -1.60663     1  1  d0   1.00010
    6.1     2.00000    -1.60663     1  1  d1-  1.00010
    7.1     1.97479    -0.56512     1  2  s    0.96390
    1.2     2.00000    -5.26659     1  1  px   0.99986
    2.2     2.00000    -5.26659     1  1  py   0.99986
    3.2     2.00000    -5.26659     1  1  pz   0.99986
    4.2     0.67507    -0.06721     1  2  py   0.97769
    5.2     0.67507    -0.06721     1  2  px   0.97769
    6.2     0.67507    -0.06721     1  2  pz   0.97769
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 1 (Triplet)
 =======================================
 
 2 a0a         -0.00000000     -0.00000000      0.99367850
 2 0aa         -0.00000000      0.99367850     -0.00000000
 2 aa0          0.99367850      0.00000000     -0.00000000
 0 aa2         -0.11226322     -0.00000000     -0.00000000
 0 2aa          0.00000000     -0.11226322     -0.00000000
 0 a2a          0.00000000      0.00000000     -0.11226322
 
 Energy:     -293.35731916   -293.35731916   -293.35731916
 
 
 CI Coefficients of symmetry 1 (Singlet)
 =======================================
 
 2 020          0.78898111     -0.00000000     -0.00000000     -0.00000000     -0.18913879
 2 002         -0.23069155     -0.00000000      0.00000000      0.00000000      0.77784705
 2 b0a         -0.00000000      0.00000000     -0.00000000     -0.70263681      0.00000000
 2 a0b          0.00000000     -0.00000000      0.00000000      0.70263681     -0.00000000
 2 0ab         -0.00000000     -0.00000000      0.70263681     -0.00000000      0.00000000
 2 0ba          0.00000000      0.00000000     -0.70263681      0.00000000     -0.00000000
 2 ba0          0.00000000     -0.70263681      0.00000000     -0.00000000     -0.00000000
 2 ab0         -0.00000000      0.70263681     -0.00000000      0.00000000      0.00000000
 2 200         -0.55828952     -0.00000000      0.00000000     -0.00000000     -0.58870830
 0 202          0.08913703     -0.00000000     -0.00000000     -0.00000000     -0.02136840
 0 220         -0.02606294     -0.00000000     -0.00000000      0.00000000      0.08787914
 0 ba2          0.00000000      0.07938208      0.00000000     -0.00000000     -0.00000000
 0 ab2         -0.00000000     -0.07938208     -0.00000000      0.00000000      0.00000000
 0 2ba          0.00000000      0.00000000      0.07938208      0.00000000      0.00000000
 0 2ab         -0.00000000     -0.00000000     -0.07938208     -0.00000000     -0.00000000
 0 a2b         -0.00000000      0.00000000     -0.00000000     -0.07938208     -0.00000000
 0 b2a          0.00000000     -0.00000000      0.00000000      0.07938208      0.00000000
 0 022         -0.06307411     -0.00000000      0.00000000      0.00000000     -0.06651073
 
 Energy:     -293.31856052   -293.31856052   -293.31856052   -293.31856052   -293.31856052
 


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
 CPU TIMES  *         1.66      0.86      0.58
 REAL TIME  *         2.70 SEC
 DISK USED  *        34.50 MB (local),      470.15 MB (total)
 SF USED    *        12.54 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

         ENERGY     LL
    -293.3573192   2.0
    -293.3573192   2.0
    -293.3573192   2.0
    -293.3185605   6.0
    -293.3185605   6.0
    -293.3185605   6.0
    -293.3185605   6.0
    -293.3185605   6.0
                                                  


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
     1      -293.35731916
     2      -293.35731916
     3      -293.35731916

 Number of blocks in overlap matrix:   382   Smallest eigenvalue:  0.13D-01
 Number of N-2 electron functions:     477
 Number of N-1 electron functions:    2940

 Number of internal configurations:                  537
 Number of singly external configurations:        122064
 Number of doubly external configurations:        822378
 Total number of contracted configurations:       944979
 Total number of uncontracted configurations:    4744665

 Diagonal Coupling coefficients finished.               Storage:    543671 words, CPU-Time:      0.03 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:    456247 words, CPU-time:      0.02 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -293.35731916    -0.00000000    -0.88576422  0.35D-01  0.71D-01     0.11
    1     2     2     1.00000000     0.00000000  -293.35731916    -0.00000000    -0.88536226  0.35D-01  0.71D-01     0.11
    1     3     3     1.00000000     0.00000000  -293.35731916    -0.00000000    -0.88552792  0.35D-01  0.71D-01     0.11
    2     1     1     1.06913491    -0.71605177  -294.07337093    -0.71605177    -0.02017224  0.27D-02  0.11D-02     2.26
    2     2     2     1.06930347    -0.71595685  -294.07327601    -0.71595685    -0.02026232  0.27D-02  0.11D-02     2.26
    2     3     3     1.06954760    -0.71582131  -294.07314046    -0.71582131    -0.02038892  0.28D-02  0.11D-02     2.26
    3     1     1     1.06193539    -0.73455992  -294.09187908    -0.01850815    -0.00063515  0.92D-04  0.44D-04     4.37
    3     2     2     1.06193277    -0.73455838  -294.09187753    -0.01860153    -0.00063675  0.92D-04  0.44D-04     4.37
    3     3     3     1.06192928    -0.73455626  -294.09187542    -0.01873495    -0.00063903  0.92D-04  0.44D-04     4.37
    4     1     1     1.06107554    -0.73515245  -294.09247161    -0.00059253    -0.00002967  0.45D-05  0.22D-05     6.75
    4     2     2     1.06107110    -0.73515236  -294.09247151    -0.00059398    -0.00002978  0.45D-05  0.23D-05     6.75
    4     3     3     1.06106460    -0.73515224  -294.09247139    -0.00059598    -0.00002993  0.46D-05  0.23D-05     6.75
    5     1     1     1.06119530    -0.73518135  -294.09250050    -0.00002890    -0.00000113  0.12D-06  0.11D-06     9.04
    5     2     2     1.06119494    -0.73518134  -294.09250050    -0.00002899    -0.00000113  0.12D-06  0.12D-06     9.04
    5     3     3     1.06119445    -0.73518134  -294.09250050    -0.00002911    -0.00000113  0.12D-06  0.12D-06     9.04
    6     1     1     1.06122415    -0.73518252  -294.09250168    -0.00000118    -0.00000005  0.32D-08  0.69D-08    11.19
    6     2     2     1.06122402    -0.73518252  -294.09250168    -0.00000118    -0.00000005  0.32D-08  0.70D-08    11.19
    6     3     3     1.06122389    -0.73518252  -294.09250168    -0.00000118    -0.00000005  0.32D-08  0.70D-08    11.19
    7     1     1     1.06122465    -0.73518257  -294.09250173    -0.00000005    -0.00000000  0.48D-09  0.39D-09    13.34
    7     2     2     1.06122467    -0.73518257  -294.09250173    -0.00000005    -0.00000000  0.47D-09  0.38D-09    13.34
    7     3     3     1.06122463    -0.73518257  -294.09250173    -0.00000005    -0.00000000  0.47D-09  0.39D-09    13.34


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.5%
 S   0.3%   4.2%
 P   0.6%  28.7%  26.2%

 Initialization:   0.6%
 Other:           38.9%

 Total CPU:       13.3 seconds
 =====================================



 Wavefunction saved on  5102.2

 Reference coefficients greater than 0.0500000
 =============================================
 2222222222//0          -0.0000000  -0.0000000   0.9653058
 2222222222/0/           0.9653057  -0.0000000   0.0000000
 22222222220//           0.0000000   0.9653057   0.0000000
 2222220222//2           0.0000000   0.0000000  -0.1012466
 2222220222/2/          -0.1012466   0.0000000  -0.0000000
 22222202222//          -0.0000000  -0.1012465  -0.0000000

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1          -0.000000    0.000000    0.970570
 2          -0.000000    0.970570   -0.000000
 3           0.970570    0.000000    0.000000

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.970570    0.000000    0.000000
 2           0.000000    0.970570    0.000000
 3           0.000000    0.000000    0.970570


 RESULTS FOR STATE 1.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.97056984 (fixed)   0.97060087 (relaxed)   0.97056984 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00032032   -0.00061790   -0.00080390
 Singles      0.01437046   -0.04379060   -0.05120522
 Pairs        0.04687381   -0.69077408   -0.68317345
 Total        1.06156458   -0.73518257   -0.73518257
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -293.35731916
 Nuclear energy                         0.00000000
 Kinetic energy                       204.89971883
 One electron energy                 -521.60510218
 Two electron energy                  227.51260045
 Virial quotient                       -1.43529968
 Correlation energy                    -0.73518257
 !MRCI STATE 1.1 Energy              -294.092501728209

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -294.13776294 (Davidson, fixed reference)
 Cluster corrected energies          -294.13771303 (Davidson, relaxed reference)
 Cluster corrected energies          -294.13776294 (Davidson, rotated reference)

 Cluster corrected energies          -294.13533086 (Pople, fixed reference)
 Cluster corrected energies          -294.13528123 (Pople, relaxed reference)
 Cluster corrected energies          -294.13533086 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Coefficient of reference function:   C(0) = 0.97056983 (fixed)   0.97060086 (relaxed)   0.97056983 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00032032   -0.00061790   -0.65151706
 Singles      0.01437048   -0.04379061   -0.05120523
 Pairs        0.04687381    0.00000000   -0.03246028
 Total        1.06156461   -0.04440851   -0.73518257
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -293.35731916
 Nuclear energy                         0.00000000
 Kinetic energy                       204.89971983
 One electron energy                 -521.60510256
 Two electron energy                  227.51260084
 Virial quotient                       -1.43529968
 Correlation energy                    -0.73518257
 !MRCI STATE 2.1 Energy              -294.092501728089

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -294.13776295 (Davidson, fixed reference)
 Cluster corrected energies          -294.13771304 (Davidson, relaxed reference)
 Cluster corrected energies          -294.13776295 (Davidson, rotated reference)

 Cluster corrected energies          -294.13533088 (Pople, fixed reference)
 Cluster corrected energies          -294.13528124 (Pople, relaxed reference)
 Cluster corrected energies          -294.13533088 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.97056985 (fixed)   0.97060088 (relaxed)   0.97056985 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00032032   -0.00061790   -0.65151713
 Singles      0.01437043   -0.04379057   -0.05120520
 Pairs        0.04687381   -0.00000000   -0.03246024
 Total        1.06156456   -0.04440848   -0.73518257
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -293.35731916
 Nuclear energy                         0.00000000
 Kinetic energy                       204.89971676
 One electron energy                 -521.60510114
 Two electron energy                  227.51259941
 Virial quotient                       -1.43529970
 Correlation energy                    -0.73518257
 !MRCI STATE 3.1 Energy              -294.092501727960

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -294.13776292 (Davidson, fixed reference)
 Cluster corrected energies          -294.13771301 (Davidson, relaxed reference)
 Cluster corrected energies          -294.13776292 (Davidson, rotated reference)

 Cluster corrected energies          -294.13533084 (Pople, fixed reference)
 Cluster corrected energies          -294.13528121 (Pople, relaxed reference)
 Cluster corrected energies          -294.13533084 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       33.90       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       5       22.67       700     1000      520     2140     5102   
                                         GEOM     BASIS   MCVARS    MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI       INT
 CPU TIMES  *        15.54     13.86      0.86      0.58
 REAL TIME  *        18.61 SEC
 DISK USED  *        56.66 MB (local),      736.09 MB (total)
 SF USED    *       237.44 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =      -294.13776294  AU                              
 SETTING HLSDIAG(2)     =      -294.13776295  AU                              
 SETTING HLSDIAG(3)     =      -294.13776292  AU                              


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 5  Roots:    1   2   3   4   5
 Number of reference states: 5  Roots:    1   2   3   4   5

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
     1      -293.31856052
     2      -293.31856052
     3      -293.31856052
     4      -293.31856052
     5      -293.31856052

 Number of blocks in overlap matrix:   580   Smallest eigenvalue:  0.37D-01
 Number of N-2 electron functions:     654
 Number of N-1 electron functions:    2099

 Number of internal configurations:                  450
 Number of singly external configurations:         87134
 Number of doubly external configurations:       1128411
 Total number of contracted configurations:      1215995
 Total number of uncontracted configurations:    3677611

 Diagonal Coupling coefficients finished.               Storage:    643996 words, CPU-Time:      0.06 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:    482922 words, CPU-time:      0.04 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -293.31856052     0.00000000    -0.89470904  0.39D-01  0.75D-01     0.17
    1     2     2     1.00000000     0.00000000  -293.31856052    -0.00000000    -0.89521661  0.39D-01  0.75D-01     0.17
    1     3     3     1.00000000     0.00000000  -293.31856052     0.00000000    -0.89554618  0.40D-01  0.75D-01     0.17
    1     4     4     1.00000000     0.00000000  -293.31856052    -0.00000000    -0.89538386  0.40D-01  0.75D-01     0.17
    1     5     5     1.00000000     0.00000000  -293.31856052    -0.00000000    -0.89456051  0.39D-01  0.75D-01     0.17
    2     1     1     1.07383091    -0.72139254  -294.03995306    -0.72139254    -0.02117886  0.29D-02  0.14D-02     4.94
    2     2     2     1.07387811    -0.72137651  -294.03993703    -0.72137651    -0.02118884  0.29D-02  0.14D-02     4.94
    2     3     3     1.07418193    -0.72119591  -294.03975643    -0.72119591    -0.02142475  0.30D-02  0.14D-02     4.94
    2     4     4     1.07437070    -0.72104937  -294.03960989    -0.72104937    -0.02158451  0.31D-02  0.14D-02     4.94
    2     5     5     1.07448949    -0.72098905  -294.03954957    -0.72098905    -0.02164137  0.32D-02  0.14D-02     4.94
    3     1     1     1.06551444    -0.74083630  -294.05939682    -0.01944376    -0.00061003  0.77D-04  0.50D-04     9.44
    3     2     2     1.06552666    -0.74083376  -294.05939428    -0.01945725    -0.00061265  0.77D-04  0.50D-04     9.44
    3     3     3     1.06555840    -0.74082313  -294.05938365    -0.01962722    -0.00062871  0.82D-04  0.51D-04     9.44
    3     4     4     1.06557434    -0.74082264  -294.05938316    -0.01977327    -0.00062970  0.82D-04  0.51D-04     9.44
    3     5     5     1.06556525    -0.74082226  -294.05938278    -0.01983321    -0.00062927  0.81D-04  0.51D-04     9.44
    4     1     1     1.06463205    -0.74142047  -294.05998099    -0.00058416    -0.00003109  0.51D-05  0.26D-05    13.91
    4     2     2     1.06463037    -0.74142040  -294.05998092    -0.00058663    -0.00003118  0.51D-05  0.26D-05    13.91
    4     3     3     1.06463353    -0.74141915  -294.05997967    -0.00059603    -0.00003277  0.53D-05  0.27D-05    13.91
    4     4     4     1.06463179    -0.74141909  -294.05997961    -0.00059646    -0.00003282  0.53D-05  0.27D-05    13.91
    4     5     5     1.06463475    -0.74141908  -294.05997959    -0.00059681    -0.00003281  0.53D-05  0.27D-05    13.91
    5     1     1     1.06471008    -0.74145096  -294.06001148    -0.00003049    -0.00000125  0.19D-06  0.10D-06    18.44
    5     2     2     1.06471152    -0.74145096  -294.06001147    -0.00003056    -0.00000126  0.19D-06  0.10D-06    18.44
    5     3     3     1.06471005    -0.74145092  -294.06001144    -0.00003176    -0.00000130  0.20D-06  0.11D-06    18.44
    5     4     4     1.06471149    -0.74145091  -294.06001143    -0.00003182    -0.00000131  0.20D-06  0.11D-06    18.44
    5     5     5     1.06471135    -0.74145091  -294.06001142    -0.00003183    -0.00000132  0.20D-06  0.11D-06    18.44
    6     1     1     1.06470479    -0.74145227  -294.06001279    -0.00000131    -0.00000005  0.43D-08  0.50D-08    22.95
    6     2     2     1.06470510    -0.74145227  -294.06001279    -0.00000132    -0.00000005  0.43D-08  0.51D-08    22.95
    6     3     3     1.06470485    -0.74145227  -294.06001279    -0.00000135    -0.00000005  0.44D-08  0.53D-08    22.95
    6     4     4     1.06470478    -0.74145227  -294.06001279    -0.00000136    -0.00000005  0.44D-08  0.53D-08    22.95
    6     5     5     1.06470471    -0.74145227  -294.06001279    -0.00000136    -0.00000005  0.45D-08  0.54D-08    22.95
    7     1     1     1.06470253    -0.74145232  -294.06001284    -0.00000005    -0.00000000  0.54D-09  0.18D-09    27.48
    7     2     2     1.06470254    -0.74145232  -294.06001284    -0.00000005    -0.00000000  0.58D-09  0.19D-09    27.48
    7     3     3     1.06470258    -0.74145232  -294.06001284    -0.00000005    -0.00000000  0.54D-09  0.18D-09    27.48
    7     4     4     1.06470255    -0.74145232  -294.06001284    -0.00000005    -0.00000000  0.58D-09  0.19D-09    27.48
    7     5     5     1.06470260    -0.74145232  -294.06001284    -0.00000005    -0.00000000  0.58D-09  0.19D-09    27.48


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.4%
 S   0.4%   2.4%
 P   0.5%  21.7%  28.7%

 Initialization:   0.4%
 Other:           45.4%

 Total CPU:       27.5 seconds
 =====================================



 Wavefunction saved on  5101.2

 Reference coefficients greater than 0.0500000
 =============================================
 2222222222/\0           0.0000000   0.9636622   0.0000000  -0.0000000   0.0000000
 22222222220/\           0.0000000   0.0000000   0.0000000   0.9631805  -0.0304659
 2222222222/0\           0.0000000  -0.0000000  -0.0000000   0.0304659   0.9631805
 2222222222002          -0.1411694  -0.0000000   0.7740594  -0.0000000   0.0000000
 2222222222020           0.7409397  -0.0000000  -0.2647733  -0.0000000  -0.0000000
 2222222222200          -0.5997703   0.0000000  -0.5092858   0.0000000   0.0000000
 2222220222/\2          -0.0000000  -0.1011425  -0.0000000   0.0000000  -0.0000000
 2222220222/2\          -0.0000000   0.0000000   0.0000000  -0.0031976  -0.1010919
 22222202222/\          -0.0000000  -0.0000000  -0.0000000  -0.1010918   0.0031976
 2222220222220          -0.0148165  -0.0000000   0.0812423  -0.0000000   0.0000000
 2222220222202           0.0777662  -0.0000000  -0.0277896  -0.0000000  -0.0000000
 2222220222022          -0.0629497   0.0000000  -0.0534527   0.0000000   0.0000000

 Coefficients of singly external configurations greater than 0.0500000
 =====================================================================

 222222\222/\0  19.1     0.0000000   0.0506961   0.0000000  -0.0000000   0.0000000

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.963286    0.000000    0.000000    0.000000    0.104380
 2          -0.000000    0.968925    0.000000   -0.000000   -0.000000
 3          -0.104380    0.000000    0.000000   -0.000000    0.963286
 4          -0.000000   -0.000000    0.968441    0.030632   -0.000000
 5          -0.000000    0.000000   -0.030632    0.968441    0.000000

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.968925   -0.000000   -0.000000    0.000000   -0.000000
 2          -0.000000    0.968925    0.000000   -0.000000    0.000000
 3          -0.000000    0.000000    0.968925    0.000000    0.000000
 4           0.000000   -0.000000    0.000000    0.968925   -0.000000
 5          -0.000000    0.000000    0.000000   -0.000000    0.968925


 RESULTS FOR STATE 1.1
 =====================

 Coefficient of reference function:   C(0) = 0.96328628 (fixed)   0.96895547 (relaxed)   0.96892502 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00044074   -0.00089763   -0.58157715
 Singles      0.01649800   -0.04765485   -0.05622529
 Pairs        0.04823304   -0.07464468   -0.10364987
 Total        1.06517179   -0.12319716   -0.74145232
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -293.31856052
 Nuclear energy                         0.00000000
 Kinetic energy                       204.90391650
 One electron energy                 -521.55129177
 Two electron energy                  227.49127893
 Virial quotient                       -1.43511172
 Correlation energy                    -0.74145232
 !MRCI STATE 1.1 Energy              -294.060012837631

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -294.10833461 (Davidson, fixed reference)
 Cluster corrected energies          -294.10828498 (Davidson, relaxed reference)
 Cluster corrected energies          -294.10833461 (Davidson, rotated reference)

 Cluster corrected energies          -294.10639789 (Pople, fixed reference)
 Cluster corrected energies          -294.10634761 (Pople, relaxed reference)
 Cluster corrected energies          -294.10639789 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Coefficient of reference function:   C(0) = 0.96892502 (fixed)   0.96895546 (relaxed)   0.96892502 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00044074   -0.00089763   -0.65165468
 Singles      0.01649802   -0.04765492   -0.05622536
 Pairs        0.04823304    0.00000000   -0.03357228
 Total        1.06517180   -0.04855255   -0.74145232
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -293.31856052
 Nuclear energy                         0.00000000
 Kinetic energy                       204.90395588
 One electron energy                 -521.55131541
 Two electron energy                  227.49130258
 Virial quotient                       -1.43511145
 Correlation energy                    -0.74145232
 !MRCI STATE 2.1 Energy              -294.060012837465

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -294.10833462 (Davidson, fixed reference)
 Cluster corrected energies          -294.10828499 (Davidson, relaxed reference)
 Cluster corrected energies          -294.10833462 (Davidson, rotated reference)

 Cluster corrected energies          -294.10639790 (Pople, fixed reference)
 Cluster corrected energies          -294.10634762 (Pople, relaxed reference)
 Cluster corrected energies          -294.10639790 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.96328625 (fixed)   0.96895545 (relaxed)   0.96892500 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00044074   -0.00089763   -0.00493519
 Singles      0.01649801   -0.04765485   -0.05622529
 Pairs        0.04823309   -0.68886744   -0.68029184
 Total        1.06517184   -0.73741992   -0.74145232
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -293.31856052
 Nuclear energy                         0.00000000
 Kinetic energy                       204.90391885
 One electron energy                 -521.55129327
 Two electron energy                  227.49128044
 Virial quotient                       -1.43511171
 Correlation energy                    -0.74145232
 !MRCI STATE 3.1 Energy              -294.060012837315

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -294.10833465 (Davidson, fixed reference)
 Cluster corrected energies          -294.10828502 (Davidson, relaxed reference)
 Cluster corrected energies          -294.10833465 (Davidson, rotated reference)

 Cluster corrected energies          -294.10639793 (Pople, fixed reference)
 Cluster corrected energies          -294.10634765 (Pople, relaxed reference)
 Cluster corrected energies          -294.10639793 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.96844068 (fixed)   0.96895546 (relaxed)   0.96892502 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00044074   -0.00089763   -0.65165467
 Singles      0.01649800   -0.04765492   -0.05622534
 Pairs        0.04823306    0.00000000   -0.03357230
 Total        1.06517180   -0.04855255   -0.74145232
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -293.31856052
 Nuclear energy                         0.00000000
 Kinetic energy                       204.90395994
 One electron energy                 -521.55131601
 Two electron energy                  227.49130317
 Virial quotient                       -1.43511142
 Correlation energy                    -0.74145232
 !MRCI STATE 4.1 Energy              -294.060012837309

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -294.10833462 (Davidson, fixed reference)
 Cluster corrected energies          -294.10828500 (Davidson, relaxed reference)
 Cluster corrected energies          -294.10833462 (Davidson, rotated reference)

 Cluster corrected energies          -294.10639790 (Pople, fixed reference)
 Cluster corrected energies          -294.10634762 (Pople, relaxed reference)
 Cluster corrected energies          -294.10639790 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.96844066 (fixed)   0.96895544 (relaxed)   0.96892500 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00044074   -0.00089763   -0.65165461
 Singles      0.01649804   -0.04765496   -0.05622537
 Pairs        0.04823308   -0.00000000   -0.03357235
 Total        1.06517185   -0.04855259   -0.74145232
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -293.31856052
 Nuclear energy                         0.00000000
 Kinetic energy                       204.90395692
 One electron energy                 -521.55131495
 Two electron energy                  227.49130211
 Virial quotient                       -1.43511144
 Correlation energy                    -0.74145232
 !MRCI STATE 5.1 Energy              -294.060012837208

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -294.10833466 (Davidson, fixed reference)
 Cluster corrected energies          -294.10828503 (Davidson, relaxed reference)
 Cluster corrected energies          -294.10833466 (Davidson, rotated reference)

 Cluster corrected energies          -294.10639794 (Pople, fixed reference)
 Cluster corrected energies          -294.10634766 (Pople, relaxed reference)
 Cluster corrected energies          -294.10639794 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       33.90       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       6       69.65       700     1000      520     2140     5102     5101   
                                         GEOM     BASIS   MCVARS    MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI       INT
 CPU TIMES  *        44.35     28.80     13.86      0.86      0.58
 REAL TIME  *        51.88 SEC
 DISK USED  *       103.64 MB (local),        1.27 GB (total)
 SF USED    *       493.78 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(4)     =      -294.10833461  AU                              
 SETTING HLSDIAG(5)     =      -294.10833462  AU                              
 SETTING HLSDIAG(6)     =      -294.10833465  AU                              
 SETTING HLSDIAG(7)     =      -294.10833462  AU                              
 SETTING HLSDIAG(8)     =      -294.10833466  AU                              


         HLSDIAG
    -294.1377629
    -294.1377630
    -294.1377629
    -294.1083346
    -294.1083346
    -294.1083346
    -294.1083346
    -294.1083347
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Diagonal elements of H will be replaced by values from variable HLSDIAG


   ******************************
   *** Spin-orbit calculation ***
   ******************************


   Spin-orbit matrix elements
   ==========================

 Wavefunction restored from record  5102.2  Symmetry=1  S= 1.0  NSTATE=   3

 Original energies:   -294.092502   -294.092502   -294.092502
 Replaced energies:   -294.137763   -294.137763   -294.137763

 Wavefunction restored from record  5101.2  Symmetry=1  S= 0.0  NSTATE=   5

 Original energies:   -294.060013   -294.060013   -294.060013   -294.060013   -294.060013
 Replaced energies:   -294.108335   -294.108335   -294.108335   -294.108335   -294.108335



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=  -294.13776295

 Wigner-Eckart theorem used for 10 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.1  1.0  1.0       0.00       0.00       0.00      -0.00       0.00    -315.15       0.00       0.00       0.00      -0.00
                            0.00     445.69       0.00       0.00      -0.00      -0.00       0.00       0.00       0.00    -341.08

    2   2.1  1.0  1.0       0.00       0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00    -276.10
                         -445.69      -0.00      -0.00       0.00      -0.00    -315.15       0.00       0.00       0.00       0.00

    3   3.1  1.0  1.0       0.00       0.00       0.01     315.15      -0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00       0.00     315.15       0.00       0.00       0.00       0.00       0.00

    4   1.1  1.0  0.0      -0.00      -0.00     315.15       0.00       0.00       0.00      -0.00       0.00    -315.15       0.00
                           -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00

    5   2.1  1.0  0.0       0.00       0.00      -0.00       0.00       0.00       0.00      -0.00       0.00       0.00       0.00
                            0.00       0.00    -315.15      -0.00       0.00       0.00       0.00      -0.00    -315.15      -0.00

    6   3.1  1.0  0.0    -315.15       0.00       0.00       0.00       0.00       0.01     315.15      -0.00       0.00       0.00
                            0.00     315.15      -0.00      -0.00      -0.00       0.00       0.00     315.15       0.00      91.90

    7   1.1  1.0 -1.0       0.00       0.00       0.00      -0.00      -0.00     315.15       0.00       0.00       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00    -445.69      -0.00     341.08

    8   2.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00      -0.00       0.00       0.00       0.00    -276.10
                           -0.00      -0.00      -0.00       0.00       0.00    -315.15     445.69       0.00       0.00      -0.00

    9   3.1  1.0 -1.0       0.00       0.00       0.00    -315.15       0.00       0.00       0.00       0.00       0.01       0.00
                           -0.00      -0.00      -0.00       0.00     315.15      -0.00       0.00      -0.00       0.00      -0.00

   10   1.1  0.0  0.0      -0.00    -276.10       0.00       0.00       0.00       0.00      -0.00    -276.10       0.00    6458.77
                          341.08      -0.00      -0.00      -0.00       0.00     -91.90    -341.08       0.00       0.00       0.00

   11   2.1  0.0  0.0    -313.67       0.00      -0.00       0.00       0.00       0.00    -313.67       0.00      -0.00       0.00
                           -0.00    -313.67      -0.00      -0.00      -0.00      -0.00       0.00     313.67       0.00      -0.00

   12   3.1  0.0  0.0      -0.00    -234.44      -0.00       0.00       0.00       0.00      -0.00    -234.44      -0.00       0.00
                         -121.88      -0.00      -0.00      -0.00      -0.00     503.92     121.88       0.00       0.00      -0.00

   13   4.1  0.0  0.0       0.00       0.00       9.92       0.00       0.00       0.00       0.00       0.00       9.92       0.00
                           -0.00       0.00    -313.52    -443.38      14.02      -0.00       0.00      -0.00     313.52      -0.00

   14   5.1  0.0  0.0      -0.00       0.00     313.52       0.00       0.00       0.00      -0.00       0.00     313.52       0.00
                           -0.00      -0.00       9.92      14.02     443.38       0.00       0.00       0.00      -9.92      -0.00


   Nr   State  S   Sz       11         12         13         14

    1   1.1  1.0  1.0    -313.67      -0.00       0.00      -0.00
                            0.00     121.88       0.00       0.00

    2   2.1  1.0  1.0       0.00    -234.44       0.00       0.00
                          313.67       0.00      -0.00       0.00

    3   3.1  1.0  1.0      -0.00      -0.00       9.92     313.52
                            0.00       0.00     313.52      -9.92

    4   1.1  1.0  0.0       0.00       0.00       0.00       0.00
                            0.00       0.00     443.38     -14.02

    5   2.1  1.0  0.0       0.00       0.00       0.00       0.00
                            0.00       0.00     -14.02    -443.38

    6   3.1  1.0  0.0       0.00       0.00       0.00       0.00
                            0.00    -503.92       0.00      -0.00

    7   1.1  1.0 -1.0    -313.67      -0.00       0.00      -0.00
                           -0.00    -121.88      -0.00      -0.00

    8   2.1  1.0 -1.0       0.00    -234.44       0.00       0.00
                         -313.67      -0.00       0.00      -0.00

    9   3.1  1.0 -1.0      -0.00      -0.00       9.92     313.52
                           -0.00      -0.00    -313.52       9.92

   10   1.1  0.0  0.0       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00

   11   2.1  0.0  0.0    6458.77       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00

   12   3.1  0.0  0.0       0.00    6458.77       0.00       0.00
                           -0.00       0.00       0.00       0.00

   13   4.1  0.0  0.0       0.00       0.00    6458.77       0.00
                           -0.00      -0.00       0.00       0.00

   14   5.1  0.0  0.0       0.00       0.00       0.00    6458.76
                           -0.00      -0.00      -0.00       0.00




   Spin-orbit calculation in the basis of symmetry adapted wave functions
   ======================================================================


 >>> Hamiltonian transformed to symmetry adapted basis <<<


  Results for symmetry 1
  ======================

 => Spin-Orbit Matrixblock (CM-1)  (dimension: 14)

    The diagonal matrixelements are shifted by   -294.13776295 a.u.

  State Sym Spin    / Nr.        1           2           3           4           5           6           7           8

    1    1  |1 1>+              0.003       0.000       0.000      -0.000      -0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000      -0.000       0.000     445.692

    2    1  |1 1>+              0.000       0.000       0.000      -0.000       0.000      -0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000    -445.692    -445.692      -0.000

    3    1  |1 1>+              0.000       0.000       0.007       0.000      -0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000     445.692       0.000      -0.000       0.000

    1    1  |1 0>              -0.000      -0.000       0.000       0.003       0.000       0.000       0.000      -0.000
                                0.000      -0.000      -0.000       0.000       0.000       0.000      -0.000       0.000

    2    1  |1 0>              -0.000       0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000    -445.692      -0.000       0.000       0.000       0.000       0.000

    3    1  |1 0>               0.000      -0.000       0.000       0.000       0.000       0.007    -445.692       0.000
                                0.000     445.692       0.000      -0.000      -0.000       0.000       0.000       0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000    -445.692       0.003       0.000
                                0.000     445.692       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>-              0.000       0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                             -445.692      -0.000      -0.000       0.000      -0.000       0.000       0.000       0.000

    3    1  |1 1>-              0.000       0.000       0.000     445.692      -0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |0 0>              -0.000    -390.459       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000       0.000     -91.903     482.362      -0.000

    2    1  |0 0>            -443.599       0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000      -0.000      -0.000      -0.000    -443.600

    3    1  |0 0>              -0.000    -331.552      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000      -0.000     503.923    -172.371      -0.000

    4    1  |0 0>               0.000       0.000      14.024       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000    -443.377      14.024      -0.000      -0.000       0.000

    5    1  |0 0>              -0.000       0.000     443.377       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      14.024     443.378       0.000      -0.000      -0.000

  State Sym Spin    / Nr.        9          10          11          12          13          14

    1    1  |1 1>+              0.000      -0.000    -443.599      -0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>+              0.000    -390.459       0.000    -331.552       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>+              0.000       0.000      -0.000      -0.000      14.024     443.377
                               -0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>             445.692       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000     443.377     -14.024

    2    1  |1 0>              -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000       0.000     -14.024    -443.378

    3    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      91.903       0.000    -503.923       0.000      -0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000
                                0.000    -482.362       0.000     172.371       0.000       0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000     443.600       0.000      -0.000       0.000

    3    1  |1 1>-              0.007       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000     443.378     -14.024

    1    1  |0 0>               0.000    6458.775       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |0 0>               0.000       0.000    6458.773       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000       0.000       0.000

    3    1  |0 0>               0.000       0.000       0.000    6458.767       0.000       0.000
                               -0.000      -0.000      -0.000       0.000       0.000       0.000

    4    1  |0 0>               0.000       0.000       0.000       0.000    6458.772       0.000
                             -443.378      -0.000      -0.000      -0.000       0.000       0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000    6458.764
                               14.024      -0.000      -0.000      -0.000      -0.000       0.000

 => Eigenvalues of spin-orbit matrix in ascending order  (E0 = Emin,ges)
    (symmetry =  1)

    Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
             (au)           (au)        (cm-1)           (au)       (cm-1)        (eV)
    1  -294.14182438    -0.00406143     -891.38      0.00000000        0.00      0.0000
    2  -294.13979367    -0.00203071     -445.69      0.00203071      445.69      0.0553
    3  -294.13979366    -0.00203071     -445.69      0.00203072      445.69      0.0553
    4  -294.13979365    -0.00203070     -445.69      0.00203073      445.69      0.0553
    5  -294.13602728     0.00173568      380.94      0.00579711     1272.32      0.1577
    6  -294.13602726     0.00173569      380.94      0.00579712     1272.32      0.1577
    7  -294.13602726     0.00173570      380.94      0.00579713     1272.32      0.1577
    8  -294.13602725     0.00173570      380.94      0.00579713     1272.32      0.1577
    9  -294.13602724     0.00173571      380.94      0.00579714     1272.32      0.1577
   10  -294.10803962     0.02972333     6523.52      0.03378476     7414.90      0.9193
   11  -294.10803960     0.02972336     6523.52      0.03378479     7414.90      0.9193
   12  -294.10803958     0.02972337     6523.53      0.03378480     7414.91      0.9193
   13  -294.10803958     0.02972338     6523.53      0.03378480     7414.91      0.9193
   14  -294.10803956     0.02972339     6523.53      0.03378482     7414.91      0.9193

 => Eigenvectors of spin-orbit matrix columnwise and corresponding to the
    eigenvalues in ascending order (symmetry =  1)

  Basis states          Eigenvectors (columnwise)

 State Sym Spin     / Nr.      1           2           3           4           5           6           7           8

   1    1  |1 1>+          0.00000000  0.70710531 -0.00000000  0.00000001  0.00000000  0.70337132 -0.00000004  0.00000001
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   2    1  |1 1>+          0.57735188 -0.00000000 -0.00000000 -0.00000000  0.78163817  0.00000001  0.22063175 -0.00000001
                          -0.00000284  0.00000000  0.00000000  0.00000000  0.00028990  0.00000000  0.00004935  0.00000000

   3    1  |1 1>+          0.00000000  0.00000000  0.70710361 -0.00000000 -0.00000000 -0.00000001  0.00000003  0.70337241
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   1    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000001  0.00000000  0.70710847 -0.00000000  0.00000001 -0.00000000 -0.00092118

   2    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000  0.70710995 -0.00000000  0.00000000  0.00000001 -0.00000003 -0.70336604

   3    1  |1 0>          -0.00000284 -0.00000000 -0.00000000  0.00000000 -0.00007408 -0.00000000 -0.00017608 -0.00000000
                          -0.57734860  0.00000000  0.00000000  0.00000000  0.19974688  0.00000004  0.78723669 -0.00000003

   1    1  |1 1>-         -0.00000284  0.00000000  0.00000000 -0.00000000 -0.00021582  0.00000000  0.00012673  0.00000000
                          -0.57735033  0.00000000 -0.00000000  0.00000000  0.58189401 -0.00000003 -0.56660195  0.00000002

   2    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.70710825 -0.00000000  0.00000001 -0.00000000 -0.70336836  0.00000004 -0.00000001

   3    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000001 -0.00000000 -0.70710509 -0.00000000  0.00000000 -0.00000000 -0.00092118

   1    1  |0 0>           0.00000012  0.00000000  0.00000000 -0.00000000  0.09337598 -0.00000000 -0.04269767  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00003463 -0.00000000 -0.00000955 -0.00000000

   2    1  |0 0>           0.00000000 -0.00000020  0.00000000  0.00000000  0.00000000  0.10267294 -0.00000001  0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   3    1  |0 0>           0.00000023  0.00000000  0.00000000  0.00000000  0.04269770  0.00000000  0.09337614 -0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00001584  0.00000000  0.00002088  0.00000000

   4    1  |0 0>           0.00000000 -0.00000000  0.00000001 -0.00000021  0.00000000 -0.00000000 -0.00000000 -0.00311157
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   5    1  |0 0>          -0.00000000  0.00000000  0.00000043  0.00000001  0.00000000  0.00000000 -0.00000000 -0.10262593
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 State Sym Spin     / Nr.      9          10          11          12          13          14

   1    1  |1 1>+         -0.00000001  0.00000000  0.00000000  0.00000000 -0.07260074  0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   2    1  |1 1>+          0.00000000  0.00000000 -0.05427334  0.00000000 -0.00000000 -0.06389465
                          -0.00000000  0.00000000  0.00000013  0.00000000  0.00000000  0.00000010

   3    1  |1 1>+          0.00092119  0.07256459  0.00000000  0.00229450  0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   1    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.70336754 -0.00229451  0.00000000  0.07256447  0.00000000  0.00000000

   2    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00092118 -0.07256455 -0.00000000 -0.00229450 -0.00000000  0.00000000

   3    1  |1 0>           0.00000000 -0.00000000 -0.00000019 -0.00000000 -0.00000000  0.00000002
                           0.00000000  0.00000000 -0.08247113 -0.00000000 -0.00000000  0.01505475

   1    1  |1 1>-         -0.00000000  0.00000000  0.00000007 -0.00000000  0.00000000 -0.00000012
                           0.00000000 -0.00000000  0.02819780  0.00000000  0.00000000 -0.07894932

   2    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.07260072 -0.00000000

   3    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.70337093 -0.00229451  0.00000000  0.07256452  0.00000000  0.00000000

   1    1  |0 0>           0.00000000  0.00000000  0.00016379 -0.00000000  0.00000001  0.99471494
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000153

   2    1  |0 0>          -0.00000000 -0.00000000 -0.00000002 -0.00000000  0.99471517 -0.00000001
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   3    1  |0 0>           0.00000000 -0.00000000  0.99471492  0.00000000  0.00000002 -0.00016379
                          -0.00000000 -0.00000000 -0.00000232 -0.00000000 -0.00000000  0.00000000

   4    1  |0 0>          -0.10262582  0.00001027 -0.00000000  0.99471516  0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   5    1  |0 0>           0.00311158  0.99471515  0.00000000 -0.00001027  0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000


  No SO block in symmetry 2


 Summary of SO results
 =====================

 Eigenvalues of the spin-orbit matrix
 ....................................

     Nr  Sym         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
                   (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1   1   -294.14182438     -0.00406143     -891.38      0.00000000        0.00      0.0000
     2   1   -294.13979367     -0.00203071     -445.69      0.00203071      445.69      0.0553
     3   1   -294.13979366     -0.00203071     -445.69      0.00203072      445.69      0.0553
     4   1   -294.13979365     -0.00203070     -445.69      0.00203073      445.69      0.0553
     5   1   -294.13602728      0.00173568      380.94      0.00579711     1272.32      0.1577
     6   1   -294.13602726      0.00173569      380.94      0.00579712     1272.32      0.1577
     7   1   -294.13602726      0.00173570      380.94      0.00579713     1272.32      0.1577
     8   1   -294.13602725      0.00173570      380.94      0.00579713     1272.32      0.1577
     9   1   -294.13602724      0.00173571      380.94      0.00579714     1272.32      0.1577
    10   1   -294.10803962      0.02972333     6523.52      0.03378476     7414.90      0.9193
    11   1   -294.10803960      0.02972336     6523.52      0.03378479     7414.90      0.9193
    12   1   -294.10803958      0.02972337     6523.53      0.03378480     7414.91      0.9193
    13   1   -294.10803958      0.02972338     6523.53      0.03378480     7414.91      0.9193
    14   1   -294.10803956      0.02972339     6523.53      0.03378482     7414.91      0.9193

 E0 =   -294.13776295 is the energy of the lowest zeroth-order state
 E1 =   -294.14182438 is the energy of the lowest SO-state


 Spin-orbit eigenvectors   (columnwise and corresponding to the eigenvalues in ascending order)
 .......................

        Basis states           Eigenvectors (columnwise)

   Total
 Nr Sym  State Sym Spin / Nr.        1           2           3           4           5           6           7           8

  1  1     1    1  |1 1>+       0.00000000  0.70710531 -0.00000000  0.00000001  0.00000000  0.70337132 -0.00000004  0.00000001
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  2  1     2    1  |1 1>+       0.57735188 -0.00000000 -0.00000000 -0.00000000  0.78163817  0.00000001  0.22063175 -0.00000001
                               -0.00000284  0.00000000  0.00000000  0.00000000  0.00028990  0.00000000  0.00004935  0.00000000

  3  1     3    1  |1 1>+       0.00000000  0.00000000  0.70710361 -0.00000000 -0.00000000 -0.00000001  0.00000003  0.70337241
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  4  1     1    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000001  0.00000000  0.70710847 -0.00000000  0.00000001 -0.00000000 -0.00092118

  5  1     2    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000  0.70710995 -0.00000000  0.00000000  0.00000001 -0.00000003 -0.70336604

  6  1     3    1  |1 0>       -0.00000284 -0.00000000 -0.00000000  0.00000000 -0.00007408 -0.00000000 -0.00017608 -0.00000000
                               -0.57734860  0.00000000  0.00000000  0.00000000  0.19974688  0.00000004  0.78723669 -0.00000003

  7  1     1    1  |1 1>-      -0.00000284  0.00000000  0.00000000 -0.00000000 -0.00021582  0.00000000  0.00012673  0.00000000
                               -0.57735033  0.00000000 -0.00000000  0.00000000  0.58189401 -0.00000003 -0.56660195  0.00000002

  8  1     2    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.70710825 -0.00000000  0.00000001 -0.00000000 -0.70336836  0.00000004 -0.00000001

  9  1     3    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000001 -0.00000000 -0.70710509 -0.00000000  0.00000000 -0.00000000 -0.00092118

 10  1     1    1  |0 0>        0.00000012  0.00000000  0.00000000 -0.00000000  0.09337598 -0.00000000 -0.04269767  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00003463 -0.00000000 -0.00000955 -0.00000000

 11  1     2    1  |0 0>        0.00000000 -0.00000020  0.00000000  0.00000000  0.00000000  0.10267294 -0.00000001  0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 12  1     3    1  |0 0>        0.00000023  0.00000000  0.00000000  0.00000000  0.04269770  0.00000000  0.09337614 -0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00001584  0.00000000  0.00002088  0.00000000

 13  1     4    1  |0 0>        0.00000000 -0.00000000  0.00000001 -0.00000021  0.00000000 -0.00000000 -0.00000000 -0.00311157
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 14  1     5    1  |0 0>       -0.00000000  0.00000000  0.00000043  0.00000001  0.00000000  0.00000000 -0.00000000 -0.10262593
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.        9          10          11          12          13          14

  1  1     1    1  |1 1>+      -0.00000001  0.00000000  0.00000000  0.00000000 -0.07260074  0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  2  1     2    1  |1 1>+       0.00000000  0.00000000 -0.05427334  0.00000000 -0.00000000 -0.06389465
                               -0.00000000  0.00000000  0.00000013  0.00000000  0.00000000  0.00000010

  3  1     3    1  |1 1>+       0.00092119  0.07256459  0.00000000  0.00229450  0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  4  1     1    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.70336754 -0.00229451  0.00000000  0.07256447  0.00000000  0.00000000

  5  1     2    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00092118 -0.07256455 -0.00000000 -0.00229450 -0.00000000  0.00000000

  6  1     3    1  |1 0>        0.00000000 -0.00000000 -0.00000019 -0.00000000 -0.00000000  0.00000002
                                0.00000000  0.00000000 -0.08247113 -0.00000000 -0.00000000  0.01505475

  7  1     1    1  |1 1>-      -0.00000000  0.00000000  0.00000007 -0.00000000  0.00000000 -0.00000012
                                0.00000000 -0.00000000  0.02819780  0.00000000  0.00000000 -0.07894932

  8  1     2    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.07260072 -0.00000000

  9  1     3    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.70337093 -0.00229451  0.00000000  0.07256452  0.00000000  0.00000000

 10  1     1    1  |0 0>        0.00000000  0.00000000  0.00016379 -0.00000000  0.00000001  0.99471494
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000153

 11  1     2    1  |0 0>       -0.00000000 -0.00000000 -0.00000002 -0.00000000  0.99471517 -0.00000001
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 12  1     3    1  |0 0>        0.00000000 -0.00000000  0.99471492  0.00000000  0.00000002 -0.00016379
                               -0.00000000 -0.00000000 -0.00000232 -0.00000000 -0.00000000  0.00000000

 13  1     4    1  |0 0>       -0.10262582  0.00001027 -0.00000000  0.99471516  0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 14  1     5    1  |0 0>        0.00311158  0.99471515  0.00000000 -0.00001027  0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000



 Composition of spin-orbit eigenvectors
 ======================================
   Total
 Nr Sym  State Sym Spin / Nr.      1        2        3        4        5        6        7        8

  1  1     1    1  |1 1>+         0.00%   50.00%    0.00%    0.00%    0.00%   49.47%    0.00%    0.00%
  2  1     2    1  |1 1>+        33.33%    0.00%    0.00%    0.00%   61.10%    0.00%    4.87%    0.00%
  3  1     3    1  |1 1>+         0.00%    0.00%   50.00%    0.00%    0.00%    0.00%    0.00%   49.47%
  4  1     1    1  |1 0>          0.00%    0.00%    0.00%   50.00%    0.00%    0.00%    0.00%    0.00%
  5  1     2    1  |1 0>          0.00%    0.00%   50.00%    0.00%    0.00%    0.00%    0.00%   49.47%
  6  1     3    1  |1 0>         33.33%    0.00%    0.00%    0.00%    3.99%    0.00%   61.97%    0.00%
  7  1     1    1  |1 1>-        33.33%    0.00%    0.00%    0.00%   33.86%    0.00%   32.10%    0.00%
  8  1     2    1  |1 1>-         0.00%   50.00%    0.00%    0.00%    0.00%   49.47%    0.00%    0.00%
  9  1     3    1  |1 1>-         0.00%    0.00%    0.00%   50.00%    0.00%    0.00%    0.00%    0.00%
 10  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.87%    0.00%    0.18%    0.00%
 11  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    1.05%    0.00%    0.00%
 12  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.18%    0.00%    0.87%    0.00%
 13  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 14  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    1.05%

   Total
 Nr Sym  State Sym Spin / Nr.      9       10       11       12       13       14

  1  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.53%    0.00%
  2  1     2    1  |1 1>+         0.00%    0.00%    0.29%    0.00%    0.00%    0.41%
  3  1     3    1  |1 1>+         0.00%    0.53%    0.00%    0.00%    0.00%    0.00%
  4  1     1    1  |1 0>         49.47%    0.00%    0.00%    0.53%    0.00%    0.00%
  5  1     2    1  |1 0>          0.00%    0.53%    0.00%    0.00%    0.00%    0.00%
  6  1     3    1  |1 0>          0.00%    0.00%    0.68%    0.00%    0.00%    0.02%
  7  1     1    1  |1 1>-         0.00%    0.00%    0.08%    0.00%    0.00%    0.62%
  8  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.53%    0.00%
  9  1     3    1  |1 1>-        49.47%    0.00%    0.00%    0.53%    0.00%    0.00%
 10  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%   98.95%
 11  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%   98.95%    0.00%
 12  1     3    1  |0 0>          0.00%    0.00%   98.95%    0.00%    0.00%    0.00%
 13  1     4    1  |0 0>          1.05%    0.00%    0.00%   98.95%    0.00%    0.00%
 14  1     5    1  |0 0>          0.00%   98.95%    0.00%    0.00%    0.00%    0.00%



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       33.90       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       6       69.65       700     1000      520     2140     5102     5101   
                                         GEOM     BASIS   MCVARS    MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI        CI     MULTI       INT
 CPU TIMES  *        73.25     28.89     28.80     13.86      0.86      0.58
 REAL TIME  *        83.97 SEC
 DISK USED  *       103.64 MB (local),        1.27 GB (total)
 SF USED    *       493.78 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCVTZ-PP energy=   -294.108039558534

              CI              CI           MULTI
   -294.06001284   -294.09250173   -293.31856052
 **********************************************************************************************************************************
 Molpro calculation terminated with 1 warning(s)
