
 Working directory              : /wrk/irikura/molpro.RAY33cuGzO/
 Global scratch directory       : /wrk/irikura/molpro.RAY33cuGzO/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.RAY33cuGzO/

 id        : nistki

 Nodes            nprocs
 pn125343.nist.gov   14
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1042), CPU time= 0.00 sec
 ***,Sb SO-CI
 memory,1500,M;
 
 gprint,orbitals,civector;
 
 symmetry,xyz
 geometry={Sb};
 
 basis=aug-cc-pwCVQZ-PP
 
 PAR=2                                                                           ! parity even (1) or odd (2)
 NQ=1
 ND=8
 
 {multi
     closed,6,3
     occ,7,9
     wf,charge=0,sym=PAR,spin=3;state,NQ;
     wf,charge=0,sym=PAR,spin=1;state,ND;
     expec2,lxx,lyy,lzz;
 }
 table, energy, ll
 title, Energies and &lt;L**2&gt; values
 
 core,0,0
 
 {ci;wf,sym=PAR,spin=3;state,NQ; save,5302.2}
 if NQ.LT.2 then
 hlsdiag(1) = energd
 else
 hlsdiag = energd4
 endif
 
 {ci;wf,sym=PAR,spin=1;state,ND; save,5102.2}
 hlsdiag(NQ+1) = energd4
 
 table,hlsdiag
 
 {ci;hlsmat,ecp,5302.2,5102.2;print,vls=0,hls=0}                                 !compute and diagonalize SO matrix
 Commands initialized (847), CPU time= 0.01 sec, 718 directives.
 Default parameters read. Elapsed time= 0.08 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2024.1 linked Mon Jun 17 07:53:25 2024


 **********************************************************************************************************************************
 LABEL *   Sb SO-CI                                                                                                                                                      
  (64 PROC) 64 bit mpp version                                                           DATE: 11-Nov-24          TIME: 10:34:14  
 **********************************************************************************************************************************

 SHA1:             0134236b472f03f1f5189f93707d8671e415b05c
 **********************************************************************************************************************************

 Memory per process:      1500 MW
 Total memory per node:  21000 MW

 GA preallocation disabled
 GA check disabled

 Variable memory set to 1500.0 MW


 ZSYMEL=XYZ

 SETTING BASIS          =    AUG-CC-PWCVQZ-PP
 SETTING PAR            =         2.00000000                                  
 SETTING NQ             =         1.00000000                                  
 SETTING ND             =         8.00000000                                  


 Recomputing integrals since basis changed


 Using spherical harmonics

 Library entry Sb   ECP ECP28MDF                 selected for group  1
 Library entry SB     S aug-cc-pwCVQZ-PP     selected for orbital group  1
 Library entry SB     P aug-cc-pwCVQZ-PP     selected for orbital group  1
 Library entry SB     D aug-cc-pwCVQZ-PP     selected for orbital group  1
 Library entry SB     F aug-cc-pwCVQZ-PP     selected for orbital group  1
 Library entry SB     G aug-cc-pwCVQZ-PP     selected for orbital group  1
 Library entry SB     H aug-cc-pwCVQZ-PP     selected for orbital group  1


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

   1  SB     23.00    0.000000000    0.000000000    0.000000000

 NUCLEAR CHARGE:                   23
 NUMBER OF PRIMITIVE AOS:         300
 NUMBER OF SYMMETRY AOS:          232
 NUMBER OF CONTRACTIONS:          169   (   86Ag  +   83Au  )
 NUMBER OF INNER CORE ORBITALS:     0   (    0Ag  +    0Au  )
 NUMBER OF OUTER CORE ORBITALS:     9   (    6Ag  +    3Au  )
 NUMBER OF VALENCE ORBITALS:        4   (    1Ag  +    3Au  )


 LX: Ag           LY: Ag           LZ: Ag 


 NUCLEAR REPULSION ENERGY    0.00000000

 EXTRA SYMMETRY OF AOS IN SYMMETRY 1:   1 1 1 1 1 1 1 1 1 1   2 3 4 5 6 2 3 4 5 6   2 3 4 5 6 2 3 4 5 6   2 3 4 5 6 2 3 4 5 6
                                        2 3 4 5 6 2 3 4 5 6   7 8 9101112131415 7   8 9101112131415 7 8   9101112131415 7 8 9
                                       101112131415
 EXTRA SYMMETRY OF AOS IN SYMMETRY 2:   1 2 3 1 2 3 1 2 3 1   2 3 1 2 3 1 2 3 1 2   3 1 2 3 1 2 3 1 2 3   4 5 6 7 8 910 4 5 6
                                        7 8 910 4 5 6 7 8 9  10 4 5 6 7 8 910 4 5   6 7 8 910 4 5 6 7 8   9101112131415161718
                                       192021


 Eigenvalues of metric

         1 0.513E-04 0.513E-04 0.513E-04 0.513E-04 0.513E-04 0.561E-04 0.928E-03 0.507E-02
         2 0.152E-03 0.152E-03 0.152E-03 0.216E-02 0.216E-02 0.216E-02 0.113E-01 0.113E-01


 Contracted 2-electron integrals neglected if value below      1.0D-11
 AO integral compression algorithm  1   Integral accuracy      1.0D-11

     98.304 MB (compressed) written to integral file ( 13.3%)

     Node minimum: 3.408 MB, node maximum: 10.224 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:    3731169.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:    3731169      RECORD LENGTH: 524288

 Memory used in sort:       4.29 MW

 SORT1 READ    92659037. AND WROTE      698656. INTEGRALS IN      2 RECORDS. CPU TIME:     0.34 SEC, REAL TIME:     0.37 SEC
 SORT2 READ     9613363. AND WROTE    52200630. INTEGRALS IN    406 RECORDS. CPU TIME:     0.06 SEC, REAL TIME:     0.07 SEC

 Node minimum:     3726009.  Node maximum:     3731169. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      19       29.37       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         1.75      1.60
 REAL TIME  *         2.51 SEC
 DISK USED  *        29.74 MB (local),      607.25 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of closed-shell orbitals:   9 (    6    3)
 Number of active  orbitals:        7 (    1    6)
 Number of external orbitals:     153 (   79   74)

 State symmetry 1

 Number of active electrons:   5    Spin symmetry=Quartet   Space symmetry=2
 Number of states:             1
 Number of CSFs:             104   (110 determinants, 245 intermediate states)

 State symmetry 2

 Number of active electrons:   5    Spin symmetry=Doublet   Space symmetry=2
 Number of states:             8
 Number of CSFs:             280   (390 determinants, 735 intermediate states)

 Orbital guess generated from atomic densities.
 *** IN SYMMETRY 1 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.274D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.382D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.107D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.726D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.666D-02 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 2 3 5 4 6 1 1 2 6   4 3 5 1 3 5 4 6 2 4   6 3 5 21514 711 913  1012 8 1 6 4 2 3 515
                                       14 711 912 81310 114  15 7 911131012 8 6 4   2 5 3 1 2 5 3 4 6 7  1514131012 811 9 1 5
                                        3 2 4 6 1 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.888D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.888D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.239D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.227D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.290D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.901D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  9 SYMMETRY CONTAMINATION OF 0.907D-04 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   2 1 3 3 2 1 2 1 3 2   1 310 8 6 9 7 4 5 1   2 3 810 6 5 4 9 7 8  10 5 4 6 7 9 2 1 3 8
                                       10 9 7 4 5 6 2 1 319  16141112132118201517  10 8 6 9 7 5 4 2 1 3  10 8 7 9 6 5 4 2 1 3
                                        2 1 3

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.11111
 Weight factors for state symmetry  2:    0.11111   0.11111   0.11111   0.11111   0.11111   0.11111   0.11111   0.11111
 
 Number of orbital rotations:  1243  ( 24 closed/active, 696 closed/virtual, 0 active/active, 523 active/virtual )
 Total number of variables:    4473
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1   23   34    0   -239.21041056    -239.22402662   -0.01361606    0.06477389 0.00001779 0.00000000  0.16E+01      2.91
   2    7   12    0   -239.22421606    -239.22427897   -0.00006292    0.00310255 0.00000559 0.00000000  0.12E+00      4.29
   3    8   16    0   -239.22427898    -239.22427898   -0.00000000    0.00000173 0.00000001 0.00000000  0.37E-04      5.81

 CONVERGENCE REACHED!  Final gradient:    0.00000002 ( 0.17E-07)
                       Final energy:   -239.22427898
 
 Results for state 1.2 Quartet
 =============================
 !MCSCF STATE 1.2 Quartet Energy              -239.282139895354
 Nuclear energy                                  0.00000000
 Kinetic energy                                 92.34250293
 One electron energy                          -419.52507214
 Two electron energy                           180.24293225
 Virial ratio                                    3.59124598
 
 !MCSCF STATE 1.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.2 Doublet
 =============================
 !MCSCF STATE 1.2 Doublet Energy              -239.225450350825
 Nuclear energy                                  0.00000000
 Kinetic energy                                 92.28000202
 One electron energy                          -419.28203601
 Two electron energy                           180.05658566
 Virial ratio                                    3.59238670
 
 !MCSCF STATE 1.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.2 Doublet
 =============================
 !MCSCF STATE 2.2 Doublet Energy              -239.225450350777
 Nuclear energy                                  0.00000000
 Kinetic energy                                 92.28000202
 One electron energy                          -419.28203602
 Two electron energy                           180.05658567
 Virial ratio                                    3.59238670
 
 !MCSCF STATE 2.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.2 Doublet
 =============================
 !MCSCF STATE 3.2 Doublet Energy              -239.225450350490
 Nuclear energy                                  0.00000000
 Kinetic energy                                 92.28000202
 One electron energy                          -419.28203602
 Two electron energy                           180.05658567
 Virial ratio                                    3.59238670
 
 !MCSCF STATE 3.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.2 Doublet
 =============================
 !MCSCF STATE 4.2 Doublet Energy              -239.225450350228
 Nuclear energy                                  0.00000000
 Kinetic energy                                 92.28000202
 One electron energy                          -419.28203603
 Two electron energy                           180.05658568
 Virial ratio                                    3.59238670
 
 !MCSCF STATE 4.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.2 Doublet
 =============================
 !MCSCF STATE 5.2 Doublet Energy              -239.225450350191
 Nuclear energy                                  0.00000000
 Kinetic energy                                 92.28000202
 One electron energy                          -419.28203603
 Two electron energy                           180.05658568
 Virial ratio                                    3.59238670
 
 !MCSCF STATE 5.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.2 Doublet
 =============================
 !MCSCF STATE 6.2 Doublet Energy              -239.203039716055
 Nuclear energy                                  0.00000000
 Kinetic energy                                 92.27461315
 One electron energy                          -419.19845491
 Two electron energy                           179.99541519
 Virial ratio                                    3.59229523
 
 !MCSCF STATE 6.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.2 Doublet
 =============================
 !MCSCF STATE 7.2 Doublet Energy              -239.203039715516
 Nuclear energy                                  0.00000000
 Kinetic energy                                 92.27461315
 One electron energy                          -419.19845491
 Two electron energy                           179.99541520
 Virial ratio                                    3.59229523
 
 !MCSCF STATE 7.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.2 Doublet
 =============================
 !MCSCF STATE 8.2 Doublet Energy              -239.203039715022
 Nuclear energy                                  0.00000000
 Kinetic energy                                 92.27461316
 One electron energy                          -419.19845493
 Two electron energy                           179.99541521
 Virial ratio                                    3.59229523
 
 !MCSCF STATE 8.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 ? Warning
 ? Transition properties are only calculated between states of the same symmetry
 ? The problem occurs in mu_properties_expec2

 !MCSCF expec      <1.2 Quartet|LXLX|1.2 Quartet>    -0.000000000000
 !MCSCF expec      <1.2 Doublet|LXLX|1.2 Doublet>     3.757048296363
 !MCSCF expec      <2.2 Doublet|LXLX|2.2 Doublet>     3.999999999275
 !MCSCF expec      <3.2 Doublet|LXLX|3.2 Doublet>     1.000000000000
 !MCSCF expec      <4.2 Doublet|LXLX|4.2 Doublet>     1.000000000938
 !MCSCF expec      <5.2 Doublet|LXLX|5.2 Doublet>     0.242953847760
 !MCSCF expec      <6.2 Doublet|LXLX|6.2 Doublet>     0.000000000003
 !MCSCF expec      <7.2 Doublet|LXLX|7.2 Doublet>     1.000000000000
 !MCSCF expec      <8.2 Doublet|LXLX|8.2 Doublet>     0.999999999998
 
 !MCSCF expec      <1.2 Quartet|LYLY|1.2 Quartet>    -0.000000000000
 !MCSCF expec      <1.2 Doublet|LYLY|1.2 Doublet>     1.948872951809
 !MCSCF expec      <2.2 Doublet|LYLY|2.2 Doublet>     1.000000000375
 !MCSCF expec      <3.2 Doublet|LYLY|3.2 Doublet>     4.000000000000
 !MCSCF expec      <4.2 Doublet|LYLY|4.2 Doublet>     0.999999999567
 !MCSCF expec      <5.2 Doublet|LYLY|5.2 Doublet>     2.051122560356
 !MCSCF expec      <6.2 Doublet|LYLY|6.2 Doublet>     1.000000000000
 !MCSCF expec      <7.2 Doublet|LYLY|7.2 Doublet>     0.000000000000
 !MCSCF expec      <8.2 Doublet|LYLY|8.2 Doublet>     1.000000000000
 
 !MCSCF expec      <1.2 Quartet|LZLZ|1.2 Quartet>    -0.000000000000
 !MCSCF expec      <1.2 Doublet|LZLZ|1.2 Doublet>     0.294078751828
 !MCSCF expec      <2.2 Doublet|LZLZ|2.2 Doublet>     1.000000000350
 !MCSCF expec      <3.2 Doublet|LZLZ|3.2 Doublet>     1.000000000000
 !MCSCF expec      <4.2 Doublet|LZLZ|4.2 Doublet>     3.999999999496
 !MCSCF expec      <5.2 Doublet|LZLZ|5.2 Doublet>     3.705923591885
 !MCSCF expec      <6.2 Doublet|LZLZ|6.2 Doublet>     0.999999999997
 !MCSCF expec      <7.2 Doublet|LZLZ|7.2 Doublet>     1.000000000000
 !MCSCF expec      <8.2 Doublet|LZLZ|8.2 Doublet>     0.000000000002
 
 !MCSCF expec      <1.2 Quartet|L**2|1.2 Quartet>    -0.000000000000
 !MCSCF expec      <1.2 Doublet|L**2|1.2 Doublet>     6.000000000000
 !MCSCF expec      <2.2 Doublet|L**2|2.2 Doublet>     6.000000000000
 !MCSCF expec      <3.2 Doublet|L**2|3.2 Doublet>     6.000000000000
 !MCSCF expec      <4.2 Doublet|L**2|4.2 Doublet>     6.000000000000
 !MCSCF expec      <5.2 Doublet|L**2|5.2 Doublet>     6.000000000000
 !MCSCF expec      <6.2 Doublet|L**2|6.2 Doublet>     2.000000000000
 !MCSCF expec      <7.2 Doublet|L**2|7.2 Doublet>     2.000000000000
 !MCSCF expec      <8.2 Doublet|L**2|8.2 Doublet>     2.000000000000
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 6 2 3 5 4 1 1 2 6   4 3 5 1 5 3 4 6 2 4   6 5 3 2 7111415 9 8  121310 1 6 4 2 5 311
                                        71514 812 91310 111   71415 9 8121310 6 4   2 5 3 1 2 5 3 6 411   71514 8121310 9 1 5
                                        3 2 6 4 1 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   2 1 3 1 2 3 3 2 1 1   2 3 810 6 4 5 7 9 1   2 3 5 810 6 4 7 9 8  10 5 6 4 9 7 1 2 3 8
                                       10 5 6 4 9 7 2 1 312  19211316141115171820   6 810 5 9 7 4 2 1 3  10 8 9 7 6 5 4 2 1 3
                                        2 1 3
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -6.53507     1  1  s    0.99939
    2.1     2.00000    -1.62976     1  1  d1-  1.00023
    3.1     2.00000    -1.62976     1  1  d0   1.00023
    4.1     2.00000    -1.62976     1  1  d2-  1.00023
    5.1     2.00000    -1.62976     1  1  d2+  1.00023
    6.1     2.00000    -1.62976     1  1  d1+  1.00023
    7.1     1.97790    -0.62717     1  1  s   -0.34827    1  4  s    0.56081    1  5  s    0.61281    1  9  s   -0.28540
    1.2     2.00000    -4.60215     1  1  py   0.99956
    2.2     2.00000    -4.60215     1  1  px   0.99956
    3.2     2.00000    -4.60215     1  1  pz   0.99956
    4.2     1.00289    -0.15228     1  1  px  -0.29129    1  4  px   0.42524    1  5  px   0.46408
    5.2     1.00289    -0.15228     1  1  py  -0.29129    1  4  py   0.42524    1  5  py   0.46408
    6.2     1.00289    -0.15228     1  1  pz  -0.29129    1  4  pz   0.42524    1  5  pz   0.46408
    7.2     0.00448     0.41992     1  1  pz   0.42362    1  3  pz  -0.36407    1  4  pz  -1.18631    1  5  pz   0.67315
                                    1  6  pz   0.57624
    8.2     0.00448     0.41992     1  1  py   0.42362    1  3  py  -0.36407    1  4  py  -1.18631    1  5  py   0.67315
                                    1  6  py   0.57624
    9.2     0.00448     0.41992     1  1  px   0.42362    1  3  px  -0.36407    1  4  px  -1.18631    1  5  px   0.67315
                                    1  6  px   0.57624
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 2 (Quartet)
 =======================================
 
 2 aaa000       0.99674360
 
 Energy:     -239.28213990
 
 
 CI Coefficients of symmetry 2 (Doublet)
 =======================================

 State:              1               2               3               4               5               6               7
 2 baa000      -0.20038010      0.00000611      0.00000002      0.00001077      0.78798509      0.00000000      0.00000000
 2 aab000       0.78260516     -0.00000950     -0.00000006      0.00000680     -0.22045829     -0.00000000     -0.00000000
 2 0a2000      -0.00000006      0.00000001     -0.70413389     -0.00000000      0.00000000      0.00000001      0.69620711
 2 02a000       0.00000951      0.00000900     -0.00000000     -0.70413388      0.00001205      0.00000126     -0.00000000
 2 a02000      -0.00000756     -0.70413388     -0.00000001     -0.00000900      0.00000354      0.69620711     -0.00000001
 2 a20000       0.00000756      0.70413387      0.00000001      0.00000900     -0.00000354      0.69620713     -0.00000001
 2 20a000      -0.00000951     -0.00000900      0.00000000      0.70413387     -0.00001205      0.00000126     -0.00000000
 2 2a0000       0.00000006     -0.00000001      0.70413387      0.00000000     -0.00000000      0.00000001      0.69620713
 2 aba000      -0.58222506      0.00000340      0.00000005     -0.00001757     -0.56752680     -0.00000000      0.00000000
 0 22a000      -0.00000000     -0.00000000      0.00000000      0.00000000     -0.00000000     -0.00000027      0.00000000
 0 2a2000      -0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000000     -0.14629632
 0 a22000       0.00000000      0.00000000     -0.00000000      0.00000000      0.00000000     -0.14629632      0.00000000
 
 Energy:     -239.22545035   -239.22545035   -239.22545035   -239.22545035   -239.22545035   -239.20303972   -239.20303972

 State:              8
 2 baa000      -0.00000000
 2 aab000       0.00000000
 2 0a2000      -0.00000000
 2 02a000       0.69620711
 2 a02000      -0.00000126
 2 a20000      -0.00000126
 2 20a000       0.69620713
 2 2a0000       0.00000000
 2 aba000      -0.00000000
 0 22a000      -0.14629633
 0 2a2000       0.00000000
 0 a22000       0.00000027
 
 Energy:     -239.20303972
 


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       52.36       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       4        0.79       700     1000      520     2140   
                                         GEOM     BASIS   MCVARS    MCSCF   

 PROGRAMS   *        TOTAL     MULTI       INT
 CPU TIMES  *         7.42      5.68      1.60
 REAL TIME  *         8.93 SEC
 DISK USED  *        53.25 MB (local),      936.43 MB (total)
 SF USED    *        60.51 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

         ENERGY     LL
    -239.2821399  -0.0
    -239.2254504   6.0
    -239.2254504   6.0
    -239.2254504   6.0
    -239.2254504   6.0
    -239.2254504   6.0
    -239.2030397   2.0
    -239.2030397   2.0
    -239.2030397   2.0
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 1  Roots:    1
 Number of reference states: 1  Roots:    1

 Reference symmetry:                   2   Quartet 
 Number of electrons:                 23
 Maximum number of shells:             5
 Maximum number of spin couplings:   165

 Reference space:       86 conf      104 CSFs
 N elec internal:    18764 conf    67760 CSFs
 N-1 el internal:    14189 conf   101369 CSFs
 N-2 el internal:     4931 conf    61610 CSFs

 Number of electrons in valence space:                     23
 Maximum number of open shell orbitals in reference space:  5
 Maximum number of open shell orbitals in internal spaces: 11


 Number of closed-shell orbitals:   9 (   6   3 )
 Number of active  orbitals:        7 (   1   6 )
 Number of external orbitals:     153 (  79  74 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Valence orbitals related to previous ones by unitary transformation. Operators transformed.


 Number of p-space configurations:  10

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -239.28213990

 Number of blocks in overlap matrix:   167   Smallest eigenvalue:  0.60D-06
 Number of N-2 electron functions:     251
 Number of N-1 electron functions:  101369

 Number of internal configurations:                33680
 Number of singly external configurations:       7754546
 Number of doubly external configurations:       1469750
 Total number of contracted configurations:      9257976
 Total number of uncontracted configurations:  367286991

 Diagonal Coupling coefficients finished.               Storage:  10293144 words, CPU-Time:      0.67 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   1796666 words, CPU-time:      0.11 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -239.28213990     0.00000000    -1.02450207  0.56D-01  0.11D+00     1.88
    2     1     1     1.10070848    -0.81282927  -240.09496917    -0.81282927    -0.02611454  0.38D-02  0.16D-02    34.10
    3     1     1     1.08709799    -0.83722386  -240.11936375    -0.02439459    -0.00038978  0.60D-04  0.29D-04    68.82
    4     1     1     1.08669778    -0.83761613  -240.11975602    -0.00039227    -0.00001186  0.22D-05  0.12D-05   106.59
    5     1     1     1.08677172    -0.83762885  -240.11976874    -0.00001272    -0.00000047  0.30D-07  0.83D-07   153.66
    6     1     1     1.08679094    -0.83762937  -240.11976926    -0.00000052    -0.00000002  0.20D-08  0.45D-08   198.81


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   1.4%
 S   1.4%  57.5%
 P   0.3%  34.3%   2.4%

 Initialization:   0.5%
 Other:            2.2%

 Total CPU:      198.8 seconds
 =====================================



 Wavefunction saved on  5302.2

 Reference coefficients greater than 0.0500000
 =============================================
 2222222222///000           0.9558626


 RESULTS FOR STATE 1.2
 =====================

 Coefficient of reference function:   C(0) = 0.95868582 (fixed)   0.95893500 (relaxed)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00115514   -0.00298039   -0.00362851
 Singles      0.01962403   -0.09086613   -0.09862214
 Pairs        0.06726717   -0.74378284   -0.73537873
 Total        1.08804634   -0.83762936   -0.83762937
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -239.28213990
 Nuclear energy                         0.00000000
 Kinetic energy                        93.05894790
 One electron energy                 -419.11971807
 Two electron energy                  178.99994880
 Virial quotient                       -2.58029749
 Correlation energy                    -0.83762937
 !MRCI STATE 1.2 Energy              -240.119769264126

 Properties without orbital relaxation:

 !MRCI STATE 1.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -240.19351947 (Davidson, fixed reference)
 Cluster corrected energies          -240.19304588 (Davidson, relaxed reference)

 Cluster corrected energies          -240.19111642 (Pople, fixed reference)
 Cluster corrected energies          -240.19062458 (Pople, relaxed reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       52.36       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       5       72.94       700     1000      520     2140     5302   
                                         GEOM     BASIS   MCVARS    MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI       INT
 CPU TIMES  *       207.67    200.24      5.68      1.60
 REAL TIME  *       212.57 SEC
 DISK USED  *       125.41 MB (local),        1.90 GB (total)
 SF USED    *       995.61 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =      -240.19304588  AU                              


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 8  Roots:    1   2   3   4   5   6   7   8
 Number of reference states: 8  Roots:    1   2   3   4   5   6   7   8

 Reference symmetry:                   2   Doublet 
 Number of electrons:                 23
 Maximum number of shells:             6
 Maximum number of spin couplings:   132

 Reference space:      176 conf      280 CSFs
 N elec internal:    21164 conf    87808 CSFs
 N-1 el internal:    18620 conf   124768 CSFs
 N-2 el internal:     9446 conf    81340 CSFs

 Number of electrons in valence space:                     23
 Maximum number of open shell orbitals in reference space:  5
 Maximum number of open shell orbitals in internal spaces: 11


 Number of closed-shell orbitals:   9 (   6   3 )
 Number of active  orbitals:        7 (   1   6 )
 Number of external orbitals:     153 (  79  74 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Coulomb and exchange operators available. No transformation done.


 Number of p-space configurations:  32

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -239.22545035
     2      -239.22545035
     3      -239.22545035
     4      -239.22545035
     5      -239.22545035
     6      -239.20303972
     7      -239.20303972
     8      -239.20303972

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2101D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1196D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1196D-06

 Number of blocks in overlap matrix:   760   Smallest eigenvalue:  0.12D-06
 Number of N-2 electron functions:    1869
 Number of N-1 electron functions:  124768

 Number of internal configurations:                44086
 Number of singly external configurations:       9543892
 Number of doubly external configurations:      10942231
 Total number of contracted configurations:     20530209
 Total number of uncontracted configurations:  484809336

 Diagonal Coupling coefficients finished.               Storage:  27654119 words, CPU-Time:     85.96 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   2179100 words, CPU-time:      1.39 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -239.22545035     0.00000000    -1.01889460  0.63D-01  0.98D-01    99.41
    1     2     2     1.00000000     0.00000000  -239.22545035    -0.00000000    -1.01935835  0.62D-01  0.99D-01    99.41
    1     3     3     1.00000000     0.00000000  -239.22545035     0.00000000    -1.01991121  0.61D-01  0.99D-01    99.41
    1     4     4     1.00000000     0.00000000  -239.22545035     0.00000000    -1.02017622  0.61D-01  0.10D+00    99.41
    1     5     5     1.00000000     0.00000000  -239.22545035     0.00000000    -1.01957653  0.61D-01  0.99D-01    99.41
    1     6     6     1.00000000     0.00000000  -239.20303972    -0.00000000    -1.00174845  0.42D-01  0.10D+00    99.41
    1     7     7     1.00000000     0.00000000  -239.20303972     0.00000000    -1.00284401  0.42D-01  0.10D+00    99.41
    1     8     8     1.00000000     0.00000000  -239.20303972     0.00000000    -1.00277815  0.42D-01  0.10D+00    99.41
    2     1     1     1.10306903    -0.82102844  -240.04647880    -0.82102844    -0.02580702  0.41D-02  0.15D-02   808.53
    2     2     2     1.10318609    -0.82099808  -240.04644843    -0.82099808    -0.02583151  0.41D-02  0.15D-02   808.53
    2     3     3     1.10306486    -0.82093011  -240.04638046    -0.82093011    -0.02589828  0.41D-02  0.15D-02   808.53
    2     4     4     1.10316011    -0.82087145  -240.04632180    -0.82087145    -0.02590575  0.42D-02  0.15D-02   808.53
    2     5     5     1.10324386    -0.82058639  -240.04603674    -0.82058639    -0.02618244  0.43D-02  0.15D-02   808.53
    2     6     6     1.09503661    -0.81868368  -240.02172339    -0.81868368    -0.02303258  0.31D-02  0.15D-02   808.53
    2     7     7     1.09504890    -0.81860200  -240.02164172    -0.81860200    -0.02305182  0.31D-02  0.15D-02   808.53
    2     8     8     1.09471713    -0.81850566  -240.02154537    -0.81850566    -0.02310755  0.31D-02  0.15D-02   808.53
    3     1     1     1.09102237    -0.84502957  -240.07047992    -0.02400112    -0.00059918  0.74D-04  0.69D-04  1499.20
    3     2     2     1.09099620    -0.84502198  -240.07047233    -0.02402390    -0.00060640  0.75D-04  0.70D-04  1499.20
    3     3     3     1.09103084    -0.84501895  -240.07046930    -0.02408884    -0.00060508  0.75D-04  0.70D-04  1499.20
    3     4     4     1.09098296    -0.84500685  -240.07045720    -0.02413540    -0.00061108  0.75D-04  0.70D-04  1499.20
    3     5     5     1.09093049    -0.84499089  -240.07044124    -0.02440449    -0.00062483  0.77D-04  0.72D-04  1499.20
    3     6     6     1.08755557    -0.84034131  -240.04338103    -0.02165764    -0.00054872  0.47D-04  0.79D-04  1499.20
    3     7     7     1.08749357    -0.84030807  -240.04334779    -0.02170607    -0.00056536  0.47D-04  0.83D-04  1499.20
    3     8     8     1.08737490    -0.84029115  -240.04333086    -0.02178549    -0.00057441  0.47D-04  0.84D-04  1499.20
    4     1     1     1.09087270    -0.84567044  -240.07112080    -0.00064088    -0.00004538  0.39D-05  0.76D-05  2281.06
    4     2     2     1.09087897    -0.84567004  -240.07112039    -0.00064806    -0.00004545  0.39D-05  0.76D-05  2281.06
    4     3     3     1.09086563    -0.84566702  -240.07111737    -0.00064807    -0.00004713  0.40D-05  0.79D-05  2281.06
    4     4     4     1.09085756    -0.84566610  -240.07111645    -0.00065925    -0.00004790  0.40D-05  0.80D-05  2281.06
    4     5     5     1.09084193    -0.84566533  -240.07111568    -0.00067444    -0.00004850  0.40D-05  0.81D-05  2281.06
    4     6     6     1.08846358    -0.84095914  -240.04399886    -0.00061783    -0.00005275  0.35D-05  0.94D-05  2281.06
    4     7     7     1.08842109    -0.84095145  -240.04399117    -0.00064338    -0.00005753  0.38D-05  0.10D-04  2281.06
    4     8     8     1.08841012    -0.84094961  -240.04398932    -0.00065846    -0.00005899  0.37D-05  0.10D-04  2281.06
    5     1     1     1.09117199    -0.84572881  -240.07117916    -0.00005837    -0.00000417  0.26D-06  0.67D-06  2967.57
    5     2     2     1.09117152    -0.84572876  -240.07117911    -0.00005871    -0.00000423  0.26D-06  0.67D-06  2967.57
    5     3     3     1.09116864    -0.84572839  -240.07117874    -0.00006137    -0.00000451  0.28D-06  0.71D-06  2967.57
    5     4     4     1.09116828    -0.84572831  -240.07117866    -0.00006221    -0.00000453  0.28D-06  0.71D-06  2967.57
    5     5     5     1.09116807    -0.84572821  -240.07117856    -0.00006288    -0.00000459  0.29D-06  0.72D-06  2967.57
    5     6     6     1.08914096    -0.84102893  -240.04406864    -0.00006978    -0.00000459  0.30D-06  0.68D-06  2967.57
    5     7     7     1.08913993    -0.84102817  -240.04406789    -0.00007672    -0.00000515  0.34D-06  0.75D-06  2967.57
    5     8     8     1.08914234    -0.84102803  -240.04406775    -0.00007842    -0.00000522  0.34D-06  0.76D-06  2967.57
    6     1     1     1.09121281    -0.84573399  -240.07118434    -0.00000518    -0.00000042  0.46D-07  0.55D-07  3754.64
    6     2     2     1.09121209    -0.84573398  -240.07118433    -0.00000522    -0.00000042  0.45D-07  0.54D-07  3754.64
    6     3     3     1.09121024    -0.84573396  -240.07118431    -0.00000557    -0.00000045  0.49D-07  0.58D-07  3754.64
    6     4     4     1.09121041    -0.84573391  -240.07118426    -0.00000560    -0.00000045  0.49D-07  0.58D-07  3754.64
    6     5     5     1.09121125    -0.84573391  -240.07118426    -0.00000570    -0.00000046  0.49D-07  0.59D-07  3754.64
    6     6     6     1.08916887    -0.84103448  -240.04407420    -0.00000556    -0.00000039  0.39D-07  0.52D-07  3754.64
    6     7     7     1.08916557    -0.84103442  -240.04407413    -0.00000625    -0.00000045  0.44D-07  0.60D-07  3754.64
    6     8     8     1.08916544    -0.84103437  -240.04407408    -0.00000634    -0.00000046  0.43D-07  0.61D-07  3754.64
    7     1     1     1.09124142    -0.84573447  -240.07118482    -0.00000048    -0.00000004  0.38D-08  0.69D-08  4447.98
    7     2     2     1.09124105    -0.84573446  -240.07118481    -0.00000048    -0.00000005  0.40D-08  0.73D-08  4447.98
    7     3     3     1.09124136    -0.84573445  -240.07118480    -0.00000049    -0.00000004  0.36D-08  0.66D-08  4447.98
    7     4     4     1.09124146    -0.84573442  -240.07118477    -0.00000051    -0.00000005  0.41D-08  0.70D-08  4447.98
    7     5     5     1.09124110    -0.84573442  -240.07118477    -0.00000051    -0.00000005  0.41D-08  0.72D-08  4447.98
    7     6     6     1.08919207    -0.84103493  -240.04407465    -0.00000045    -0.00000005  0.52D-08  0.78D-08  4447.98
    7     7     7     1.08919303    -0.84103493  -240.04407464    -0.00000051    -0.00000004  0.42D-08  0.65D-08  4447.98
    7     8     8     1.08919181    -0.84103489  -240.04407461    -0.00000052    -0.00000005  0.54D-08  0.79D-08  4447.98
    8     1     1     1.09124299    -0.84573452  -240.07118487    -0.00000005    -0.00000001  0.47D-09  0.93D-09  5160.67
    8     2     2     1.09124297    -0.84573452  -240.07118487    -0.00000005    -0.00000001  0.51D-09  0.98D-09  5160.67
    8     3     3     1.09124307    -0.84573449  -240.07118485    -0.00000005    -0.00000001  0.44D-09  0.87D-09  5160.67
    8     4     4     1.09124284    -0.84573447  -240.07118482    -0.00000005    -0.00000001  0.49D-09  0.96D-09  5160.67
    8     5     5     1.09124287    -0.84573447  -240.07118482    -0.00000005    -0.00000001  0.47D-09  0.94D-09  5160.67
    8     6     6     1.08919593    -0.84103500  -240.04407471    -0.00000006    -0.00000001  0.48D-09  0.11D-08  5160.67
    8     7     7     1.08919629    -0.84103498  -240.04407469    -0.00000005    -0.00000001  0.38D-09  0.89D-09  5160.67
    8     8     8     1.08919574    -0.84103496  -240.04407467    -0.00000006    -0.00000001  0.49D-09  0.11D-08  5160.67


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.7%
 S   0.6%  25.7%
 P   0.2%  40.9%  23.5%

 Initialization:   1.7%
 Other:            6.7%

 Total CPU:     5160.7 seconds
 =====================================



 Wavefunction saved on  5102.2

 Reference coefficients greater than 0.0500000
 =============================================
 2222222222/\/000           0.9113494  -0.0218454   0.0092845  -0.1545918  -0.2326035  -0.0000000  -0.0000000   0.0000000
 2222222222//\000           0.2778853   0.0013279   0.0064301   0.4210593   0.8090549   0.0000000  -0.0000000  -0.0000000
 222222222202/000           0.0145608   0.6739859  -0.0079215  -0.0036110  -0.0041652   0.6674727  -0.0332818   0.0043031
 222222222220/000          -0.0145608  -0.6739858   0.0079215   0.0036110   0.0041651   0.6674730  -0.0332819   0.0043031
 22222222222/0000           0.0079981  -0.0080382  -0.6738476   0.0178448  -0.0066654   0.0333192   0.6674585  -0.0059160
 22222222220/2000          -0.0079981   0.0080382   0.6738475  -0.0178448   0.0066654   0.0333193   0.6674586  -0.0059160
 2222222222/20000          -0.0199275  -0.0010242  -0.0191029  -0.5946728   0.3164856  -0.0040030   0.0061231   0.6682760
 2222222222/02000           0.0199275   0.0010242   0.0191029   0.5946730  -0.3164857  -0.0040030   0.0061231   0.6682758
 2222220222/22000           0.0000000  -0.0000000  -0.0000000  -0.0000000   0.0000000   0.0007693  -0.0011767  -0.1284256
 222222022222/000          -0.0000000   0.0000000   0.0000000  -0.0000000   0.0000000  -0.1282713   0.0063959  -0.0008269
 22222202222/2000          -0.0000000   0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0064031  -0.1282684   0.0011369

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.020442    0.028274   -0.011348    0.020660    0.955691   -0.000000    0.000000    0.000000
 2           0.007225    0.001453    0.011405    0.956297   -0.020735    0.000000   -0.000000    0.000000
 3           0.003684    0.027105    0.956100   -0.011240    0.010715    0.000000   -0.000000   -0.000000
 4           0.448674    0.843762   -0.025319   -0.005124   -0.034750    0.000000    0.000000    0.000000
 5           0.844586   -0.449051    0.009457   -0.005910   -0.004540   -0.000000    0.000000   -0.000000
 6           0.000000   -0.000000    0.000000   -0.000000   -0.000000   -0.005735    0.047739    0.956347
 7          -0.000000    0.000000    0.000000    0.000000   -0.000000    0.008773    0.956326   -0.047686
 8          -0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.957497   -0.008476    0.006165

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.956618   -0.000000    0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.000000
 2          -0.000000    0.956618   -0.000000    0.000000    0.000000   -0.000000    0.000000   -0.000000
 3           0.000000   -0.000000    0.956618    0.000000   -0.000000    0.000000    0.000000    0.000000
 4          -0.000000    0.000000    0.000000    0.956618   -0.000000   -0.000000   -0.000000    0.000000
 5          -0.000000    0.000000   -0.000000   -0.000000    0.956618    0.000000   -0.000000   -0.000000
 6          -0.000000   -0.000000    0.000000   -0.000000    0.000000    0.957554   -0.000000   -0.000000
 7          -0.000000    0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.957554    0.000000
 8           0.000000   -0.000000    0.000000    0.000000   -0.000000   -0.000000    0.000000    0.957555


 RESULTS FOR STATE 1.2
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.95569056 (fixed)   0.95685577 (relaxed)   0.95661767 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00138651   -0.00365283   -0.68631529
 Singles      0.02281698   -0.09693198   -0.10636321
 Pairs        0.06855252   -0.00000000   -0.05305602
 Total        1.09275601   -0.10058482   -0.84573452
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -239.22545035
 Nuclear energy                         0.00000000
 Kinetic energy                        93.02784055
 One electron energy                 -418.92472997
 Two electron energy                  178.85354509
 Virial quotient                       -2.58063805
 Correlation energy                    -0.84573452
 !MRCI STATE 1.2 Energy              -240.071184872400

 Properties without orbital relaxation:

 !MRCI STATE 1.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -240.14963183 (Davidson, fixed reference)
 Cluster corrected energies          -240.14917195 (Davidson, relaxed reference)
 Cluster corrected energies          -240.14963183 (Davidson, rotated reference)

 Cluster corrected energies          -240.14829283 (Pople, fixed reference)
 Cluster corrected energies          -240.14780471 (Pople, relaxed reference)
 Cluster corrected energies          -240.14829283 (Pople, rotated reference)



 RESULTS FOR STATE 2.2
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.95629653 (fixed)   0.95685578 (relaxed)   0.95661768 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00138651   -0.00365283   -0.68631525
 Singles      0.02281703   -0.09693198   -0.10636324
 Pairs        0.06855245   -0.00000005   -0.05305602
 Total        1.09275599   -0.10058487   -0.84573452
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -239.22545035
 Nuclear energy                         0.00000000
 Kinetic energy                        93.02785298
 One electron energy                 -418.92474038
 Two electron energy                  178.85355551
 Virial quotient                       -2.58063770
 Correlation energy                    -0.84573452
 !MRCI STATE 2.2 Energy              -240.071184867387

 Properties without orbital relaxation:

 !MRCI STATE 2.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -240.14963181 (Davidson, fixed reference)
 Cluster corrected energies          -240.14917192 (Davidson, relaxed reference)
 Cluster corrected energies          -240.14963181 (Davidson, rotated reference)

 Cluster corrected energies          -240.14829281 (Pople, fixed reference)
 Cluster corrected energies          -240.14780469 (Pople, relaxed reference)
 Cluster corrected energies          -240.14829281 (Pople, rotated reference)



 RESULTS FOR STATE 3.2
 =====================

 Coefficient of reference function:   C(0) = 0.95610038 (fixed)   0.95685574 (relaxed)   0.95661764 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00138650   -0.00365283   -0.68631528
 Singles      0.02281697   -0.09693193   -0.10636317
 Pairs        0.06855260    0.00000002   -0.05305605
 Total        1.09275608   -0.10058475   -0.84573449
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -239.22545035
 Nuclear energy                         0.00000000
 Kinetic energy                        93.02785147
 One electron energy                 -418.92473784
 Two electron energy                  178.85355300
 Virial quotient                       -2.58063775
 Correlation energy                    -0.84573449
 !MRCI STATE 3.2 Energy              -240.071184845424

 Properties without orbital relaxation:

 !MRCI STATE 3.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -240.14963186 (Davidson, fixed reference)
 Cluster corrected energies          -240.14917199 (Davidson, relaxed reference)
 Cluster corrected energies          -240.14963186 (Davidson, rotated reference)

 Cluster corrected energies          -240.14829287 (Pople, fixed reference)
 Cluster corrected energies          -240.14780476 (Pople, relaxed reference)
 Cluster corrected energies          -240.14829287 (Pople, rotated reference)



 RESULTS FOR STATE 4.2
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.84376199 (fixed)   0.95685583 (relaxed)   0.95661773 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00138651   -0.00365283   -0.68631547
 Singles      0.02281690   -0.09693183   -0.10636310
 Pairs        0.06855246   -0.00000001   -0.05305589
 Total        1.09275586   -0.10058466   -0.84573447
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -239.22545035
 Nuclear energy                         0.00000000
 Kinetic energy                        93.02784473
 One electron energy                 -418.92473288
 Two electron energy                  178.85354806
 Virial quotient                       -2.58063793
 Correlation energy                    -0.84573447
 !MRCI STATE 4.2 Energy              -240.071184821226

 Properties without orbital relaxation:

 !MRCI STATE 4.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -240.14963165 (Davidson, fixed reference)
 Cluster corrected energies          -240.14917177 (Davidson, relaxed reference)
 Cluster corrected energies          -240.14963165 (Davidson, rotated reference)

 Cluster corrected energies          -240.14829264 (Pople, fixed reference)
 Cluster corrected energies          -240.14780453 (Pople, relaxed reference)
 Cluster corrected energies          -240.14829264 (Pople, rotated reference)



 RESULTS FOR STATE 5.2
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.84458600 (fixed)   0.95685582 (relaxed)   0.95661772 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00138651   -0.00365283   -0.68631549
 Singles      0.02281687   -0.09693180   -0.10636307
 Pairs        0.06855251    0.00000001   -0.05305591
 Total        1.09275588   -0.10058463   -0.84573447
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -239.22545035
 Nuclear energy                         0.00000000
 Kinetic energy                        93.02784012
 One electron energy                 -418.92472951
 Two electron energy                  178.85354469
 Virial quotient                       -2.58063806
 Correlation energy                    -0.84573447
 !MRCI STATE 5.2 Energy              -240.071184820257

 Properties without orbital relaxation:

 !MRCI STATE 5.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -240.14963167 (Davidson, fixed reference)
 Cluster corrected energies          -240.14917179 (Davidson, relaxed reference)
 Cluster corrected energies          -240.14963167 (Davidson, rotated reference)

 Cluster corrected energies          -240.14829266 (Pople, fixed reference)
 Cluster corrected energies          -240.14780455 (Pople, relaxed reference)
 Cluster corrected energies          -240.14829266 (Pople, rotated reference)



 RESULTS FOR STATE 6.2
 =====================

 Maximum overlap with reference state  8

 Coefficient of reference function:   C(0) = 0.95634652 (fixed)   0.95778497 (relaxed)   0.95755449 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00130640   -0.00346242   -0.00505308
 Singles      0.01718401   -0.08465430   -0.09087238
 Pairs        0.07212845   -0.75196845   -0.74510954
 Total        1.09061886   -0.84008517   -0.84103500
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -239.20303972
 Nuclear energy                         0.00000000
 Kinetic energy                        93.02897366
 One electron energy                 -418.82973253
 Two electron energy                  178.78565782
 Virial quotient                       -2.58031520
 Correlation energy                    -0.84103500
 !MRCI STATE 6.2 Energy              -240.044074712729

 Properties without orbital relaxation:

 !MRCI STATE 6.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -240.12028835 (Davidson, fixed reference)
 Cluster corrected energies          -240.11984695 (Davidson, relaxed reference)
 Cluster corrected energies          -240.12028835 (Davidson, rotated reference)

 Cluster corrected energies          -240.11884904 (Pople, fixed reference)
 Cluster corrected energies          -240.11838225 (Pople, relaxed reference)
 Cluster corrected energies          -240.11884904 (Pople, rotated reference)



 RESULTS FOR STATE 7.2
 =====================

 Coefficient of reference function:   C(0) = 0.95632600 (fixed)   0.95778482 (relaxed)   0.95755434 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00130640   -0.00346242   -0.72892026
 Singles      0.01718396   -0.08465427   -0.09087232
 Pairs        0.07212885    0.03749500   -0.02124240
 Total        1.09061921   -0.05062169   -0.84103498
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -239.20303972
 Nuclear energy                         0.00000000
 Kinetic energy                        93.02897407
 One electron energy                 -418.82972495
 Two electron energy                  178.78565026
 Virial quotient                       -2.58031519
 Correlation energy                    -0.84103498
 !MRCI STATE 7.2 Energy              -240.044074692829

 Properties without orbital relaxation:

 !MRCI STATE 7.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -240.12028862 (Davidson, fixed reference)
 Cluster corrected energies          -240.11984723 (Davidson, relaxed reference)
 Cluster corrected energies          -240.12028862 (Davidson, rotated reference)

 Cluster corrected energies          -240.11884932 (Pople, fixed reference)
 Cluster corrected energies          -240.11838254 (Pople, relaxed reference)
 Cluster corrected energies          -240.11884932 (Pople, rotated reference)



 RESULTS FOR STATE 8.2
 =====================

 Maximum overlap with reference state  6

 Coefficient of reference function:   C(0) = 0.95749721 (fixed)   0.95778505 (relaxed)   0.95755458 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00130639   -0.00346242   -0.69009606
 Singles      0.01718392   -0.08465421   -0.09087229
 Pairs        0.07212835   -0.00484783   -0.06006660
 Total        1.09061866   -0.09296446   -0.84103496
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -239.20303972
 Nuclear energy                         0.00000000
 Kinetic energy                        93.02896836
 One electron energy                 -418.82972617
 Two electron energy                  178.78565150
 Virial quotient                       -2.58031535
 Correlation energy                    -0.84103496
 !MRCI STATE 8.2 Energy              -240.044074673667

 Properties without orbital relaxation:

 !MRCI STATE 8.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -240.12028813 (Davidson, fixed reference)
 Cluster corrected energies          -240.11984675 (Davidson, relaxed reference)
 Cluster corrected energies          -240.12028813 (Davidson, rotated reference)

 Cluster corrected energies          -240.11884882 (Pople, fixed reference)
 Cluster corrected energies          -240.11838204 (Pople, relaxed reference)
 Cluster corrected energies          -240.11884882 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       52.36       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       6     1340.65       700     1000      520     2140     5302     5102   
                                         GEOM     BASIS   MCVARS    MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI       INT
 CPU TIMES  *      5956.10   5748.42    200.24      5.68      1.60
 REAL TIME  *      6084.81 SEC
 DISK USED  *         1.36 GB (local),       19.23 GB (total)
 SF USED    *        12.90 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(2)     =      -240.14963183  AU                              
 SETTING HLSDIAG(3)     =      -240.14963181  AU                              
 SETTING HLSDIAG(4)     =      -240.14963186  AU                              
 SETTING HLSDIAG(5)     =      -240.14963165  AU                              
 SETTING HLSDIAG(6)     =      -240.14963167  AU                              
 SETTING HLSDIAG(7)     =      -240.12028835  AU                              
 SETTING HLSDIAG(8)     =      -240.12028862  AU                              
 SETTING HLSDIAG(9)     =      -240.12028813  AU                              


         HLSDIAG
    -240.1930459
    -240.1496318
    -240.1496318
    -240.1496319
    -240.1496316
    -240.1496317
    -240.1202883
    -240.1202886
    -240.1202881
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Diagonal elements of H will be replaced by values from variable HLSDIAG


   ******************************
   *** Spin-orbit calculation ***
   ******************************


   Spin-orbit matrix elements
   ==========================

 Wavefunction restored from record  5302.2  Symmetry=2  S= 1.5  NSTATE=   1

 Original energies:   -240.119769
 Replaced energies:   -240.193046

 Wavefunction restored from record  5102.2  Symmetry=2  S= 0.5  NSTATE=   8

 Original energies:   -240.071185   -240.071185   -240.071185   -240.071185   -240.071185   -240.044075   -240.044075   -240.044075
 Replaced energies:   -240.149632   -240.149632   -240.149632   -240.149632   -240.149632   -240.120288   -240.120289   -240.120288



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=  -240.19304588

 Wigner-Eckart theorem used for 23 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00       0.00     101.30
                            0.00       0.00       0.00       0.00      -0.00       0.00       0.00       0.00      -0.00     -12.17

    2   1.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00      -0.00      -0.00       0.00      -0.00       0.00   -2343.13

    3   1.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00       0.00      58.48
                           -0.00      -0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00       0.00       7.03

    4   1.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    5   1.2  0.5  0.5       0.00       0.00       0.00       0.00    9528.28       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.00       0.00     -30.28      -0.11      -0.10       0.10     484.63

    6   2.2  0.5  0.5      -0.00       0.00      -0.00       0.00       0.00    9528.29       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00      -0.00      30.28      -0.00       0.28      -4.97      -7.82       2.11

    7   3.2  0.5  0.5      -0.00       0.00      -0.00       0.00       0.00       0.00    9528.28       0.00       0.00       0.00
                           -0.00      -0.00       0.00      -0.00       0.11      -0.28      -0.00      14.03      -7.34       0.55

    8   4.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00    9528.32       0.00       0.00
                           -0.00       0.00       0.00      -0.00       0.10       4.97     -14.03       0.00       0.07     673.96

    9   5.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    9528.32       0.00
                            0.00      -0.00      -0.00      -0.00      -0.10       7.82       7.34      -0.07      -0.00    1450.70

   10   6.2  0.5  0.5     101.30       0.00      58.48       0.00       0.00       0.00       0.00       0.00       0.00   15968.43
                           12.17    2343.13      -7.03      -0.00    -484.63      -2.11      -0.55    -673.96   -1450.70      -0.00

   11   7.2  0.5  0.5    2029.16       0.00    1171.54       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -18.61    -116.83      10.75      -0.00      67.17       2.15      28.28    1312.61    -608.30      -0.01

   12   8.2  0.5  0.5     -17.99       0.00     -10.38       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                        -2031.65      15.11    1172.97      -0.00      13.66     -17.30   -1447.51      22.26     -17.43      -0.04

   13   1.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.74      23.10      -0.80       0.62     -14.30
                           -0.00       0.00       0.00      -0.00      -0.00       0.21       0.54       6.72      -2.55      -8.97

   14   2.2  0.5 -0.5       0.00      -0.00       0.00      -0.00      -0.74      -0.00      -0.78     -14.07       7.20      -4.76
                           -0.00      -0.00       0.00       0.00      -0.21       0.00      15.81      -0.75       0.39     -55.11

   15   3.2  0.5 -0.5       0.00      -0.00       0.00      -0.00     -23.10       0.78       0.00      -9.39     -19.48      40.65
                           -0.00      -0.00      -0.00       0.00      -0.54     -15.81       0.00       0.48       0.88    1446.30

   16   4.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.80      14.07       9.39       0.00       0.48    1305.67
                           -0.00      -0.00       0.00       0.00      -6.72       0.75      -0.48      -0.00      30.82     -37.08

   17   5.2  0.5 -0.5       0.00       0.00       0.00       0.00      -0.62      -7.20      19.48      -0.48       0.00    -625.80
                           -0.00       0.00      -0.00      -0.00       2.55      -0.39      -0.88     -30.82      -0.00      16.88

   18   6.2  0.5 -0.5       0.00      58.48       0.00     101.30      14.30       4.76     -40.65   -1305.67     625.80      -0.00
                           -0.00       7.03    2343.13     -12.17       8.97      55.11   -1446.30      37.08     -16.88       0.00

   19   7.2  0.5 -0.5       0.00    1171.54       0.00    2029.16    1140.71     -47.45      10.65    -539.48   -1094.98      -0.01
                           -0.00     -10.75    -116.83      18.61      45.29    1446.17      55.26      -8.42      -4.96      -0.84

   20   8.2  0.5 -0.5       0.00     -10.38       0.00     -17.99     -41.64   -1447.08      16.67       4.88      22.73      -0.83
                           -0.00   -1172.97      15.11    2031.65    1627.34     -44.93      10.57     134.71     356.08       0.01


   Nr   State  S   Sz       11         12         13         14         15         16         17         18         19         20

    1   1.2  1.5  1.5    2029.16     -17.99       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           18.61    2031.65       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    2   1.2  1.5  0.5       0.00       0.00       0.00      -0.00      -0.00       0.00       0.00      58.48    1171.54     -10.38
                          116.83     -15.11      -0.00       0.00       0.00       0.00      -0.00      -7.03      10.75    1172.97

    3   1.2  1.5 -0.5    1171.54     -10.38       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -10.75   -1172.97      -0.00      -0.00       0.00      -0.00       0.00   -2343.13     116.83     -15.11

    4   1.2  1.5 -1.5       0.00       0.00       0.00      -0.00      -0.00       0.00       0.00     101.30    2029.16     -17.99
                            0.00       0.00       0.00      -0.00      -0.00      -0.00       0.00      12.17     -18.61   -2031.65

    5   1.2  0.5  0.5       0.00       0.00       0.00      -0.74     -23.10       0.80      -0.62      14.30    1140.71     -41.64
                          -67.17     -13.66       0.00       0.21       0.54       6.72      -2.55      -8.97     -45.29   -1627.34

    6   2.2  0.5  0.5       0.00       0.00       0.74      -0.00       0.78      14.07      -7.20       4.76     -47.45   -1447.08
                           -2.15      17.30      -0.21      -0.00      15.81      -0.75       0.39     -55.11   -1446.17      44.93

    7   3.2  0.5  0.5       0.00       0.00      23.10      -0.78       0.00       9.39      19.48     -40.65      10.65      16.67
                          -28.28    1447.51      -0.54     -15.81      -0.00       0.48       0.88    1446.30     -55.26     -10.57

    8   4.2  0.5  0.5       0.00       0.00      -0.80     -14.07      -9.39       0.00      -0.48   -1305.67    -539.48       4.88
                        -1312.61     -22.26      -6.72       0.75      -0.48       0.00      30.82     -37.08       8.42    -134.71

    9   5.2  0.5  0.5       0.00       0.00       0.62       7.20     -19.48       0.48       0.00     625.80   -1094.98      22.73
                          608.30      17.43       2.55      -0.39      -0.88     -30.82       0.00      16.88       4.96    -356.08

   10   6.2  0.5  0.5       0.00       0.00     -14.30      -4.76      40.65    1305.67    -625.80      -0.00      -0.01      -0.83
                            0.01       0.04       8.97      55.11   -1446.30      37.08     -16.88      -0.00       0.84      -0.01

   11   7.2  0.5  0.5   15968.37       0.00   -1140.71      47.45     -10.65     539.48    1094.98       0.01       0.00       0.04
                            0.00       0.83      45.29    1446.17      55.26      -8.42      -4.96      -0.84      -0.00      -0.01

   12   8.2  0.5  0.5       0.00   15968.48      41.64    1447.08     -16.67      -4.88     -22.73       0.83      -0.04      -0.00
                           -0.83       0.00    1627.34     -44.93      10.57     134.71     356.08       0.01       0.01       0.00

   13   1.2  0.5 -0.5   -1140.71      41.64    9528.28       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -45.29   -1627.34      -0.00      30.28       0.11       0.10      -0.10    -484.63      67.17      13.66

   14   2.2  0.5 -0.5      47.45    1447.08       0.00    9528.29       0.00       0.00       0.00       0.00       0.00       0.00
                        -1446.17      44.93     -30.28       0.00      -0.28       4.97       7.82      -2.11       2.15     -17.30

   15   3.2  0.5 -0.5     -10.65     -16.67       0.00       0.00    9528.28       0.00       0.00       0.00       0.00       0.00
                          -55.26     -10.57      -0.11       0.28       0.00     -14.03       7.34      -0.55      28.28   -1447.51

   16   4.2  0.5 -0.5     539.48      -4.88       0.00       0.00       0.00    9528.32       0.00       0.00       0.00       0.00
                            8.42    -134.71      -0.10      -4.97      14.03      -0.00      -0.07    -673.96    1312.61      22.26

   17   5.2  0.5 -0.5    1094.98     -22.73       0.00       0.00       0.00       0.00    9528.32       0.00       0.00       0.00
                            4.96    -356.08       0.10      -7.82      -7.34       0.07       0.00   -1450.70    -608.30     -17.43

   18   6.2  0.5 -0.5       0.01       0.83       0.00       0.00       0.00       0.00       0.00   15968.43       0.00       0.00
                            0.84      -0.01     484.63       2.11       0.55     673.96    1450.70       0.00      -0.01      -0.04

   19   7.2  0.5 -0.5       0.00      -0.04       0.00       0.00       0.00       0.00       0.00       0.00   15968.37       0.00
                            0.00      -0.01     -67.17      -2.15     -28.28   -1312.61     608.30       0.01      -0.00      -0.83

   20   8.2  0.5 -0.5       0.04      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   15968.48
                            0.01      -0.00     -13.66      17.30    1447.51     -22.26      17.43       0.04       0.83      -0.00


 No symmetry adaption


 Spin-orbit eigenstates   (energies)
 ======================

     Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
              (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1  -240.19547965    -0.00243377     -534.15      0.00000000        0.00      0.0000
     2  -240.19547965    -0.00243377     -534.15      0.00000000        0.00      0.0000
     3  -240.19547964    -0.00243376     -534.15      0.00000001        0.00      0.0000
     4  -240.19547964    -0.00243376     -534.15      0.00000001        0.00      0.0000
     5  -240.15534314     0.03770274     8274.79      0.04013651     8808.94      1.0922
     6  -240.15534314     0.03770274     8274.79      0.04013651     8808.94      1.0922
     7  -240.15534305     0.03770283     8274.81      0.04013660     8808.97      1.0922
     8  -240.15534305     0.03770283     8274.81      0.04013660     8808.97      1.0922
     9  -240.14948754     0.04355834     9559.95      0.04599211    10094.10      1.2515
    10  -240.14948754     0.04355834     9559.95      0.04599211    10094.10      1.2515
    11  -240.14948751     0.04355837     9559.96      0.04599214    10094.11      1.2515
    12  -240.14948751     0.04355837     9559.96      0.04599214    10094.11      1.2515
    13  -240.14948737     0.04355851     9559.99      0.04599228    10094.14      1.2515
    14  -240.14948737     0.04355851     9559.99      0.04599228    10094.14      1.2515
    15  -240.12029598     0.07274991    15966.76      0.07518367    16500.91      2.0459
    16  -240.12029598     0.07274991    15966.76      0.07518367    16500.91      2.0459
    17  -240.11235601     0.08068987    17709.38      0.08312364    18243.53      2.2619
    18  -240.11235601     0.08068987    17709.38      0.08312364    18243.53      2.2619
    19  -240.11235579     0.08069010    17709.43      0.08312386    18243.58      2.2619
    20  -240.11235579     0.08069010    17709.43      0.08312386    18243.58      2.2619


 Eigenvectors of spin-orbit matrix
 =================================

  Basis states          Eigenvectors (columnwise)

   Nr   State  S   Sz        1             2             3             4             5             6             7             8

    1    1.2  1.5  1.5   0.006078988   0.703271463  -0.680891676   0.070658268   0.111372934   0.000807910   0.001326736  -0.045518930
                         0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000

    2    1.2  1.5  0.5  -0.470334768   0.010115267   0.076288887   0.674936560  -0.000464624   0.037046130   0.110730170   0.002748138
                         0.495580820   0.041091505   0.064568829   0.170585257   0.002027968   0.026399571   0.010154795   0.005726363

    3    1.2  1.5 -0.5  -0.023613750   0.683076138   0.696072981  -0.089079631  -0.045467009   0.000736855   0.003093741  -0.111144265
                        -0.035117249  -0.014904054  -0.011004405   0.045320496   0.001450593  -0.001945655  -0.005547275   0.003353039

    4    1.2  1.5 -1.5  -0.472882430   0.004087535  -0.068769280  -0.662688624   0.000672560  -0.092714485   0.045433455   0.001324244
                         0.520550629  -0.004499573  -0.016228893  -0.156388180   0.000447640  -0.061708626   0.002788226   0.000081268

    5    1.2  0.5  0.5  -0.011587095   0.000126435  -0.002942194  -0.031687120   0.001479914   0.492865525  -0.054260937   0.001562130
                         0.013815799  -0.001687464  -0.001547464  -0.006962588   0.003153424   0.316490136   0.006999998  -0.009448522

    6    2.2  0.5  0.5   0.020224835  -0.000284528  -0.000988798  -0.005347621  -0.007667238   0.291532632  -0.007632173  -0.004536358
                         0.017503239  -0.000202182   0.002612885   0.025291734   0.003545926  -0.460026406   0.222215852   0.005806540

    7    3.2  0.5  0.5   0.000572662  -0.009127489  -0.035881554   0.003966607  -0.464782377   0.003468896   0.012166224  -0.359557094
                         0.001028537  -0.000535816   0.000026207  -0.001843530   0.008406277   0.001044935  -0.025423977  -0.002188617

    8    4.2  0.5  0.5   0.009659604  -0.000385411  -0.000223968  -0.006010416   0.006426412   0.012111549   0.295653485   0.003973903
                        -0.011069471  -0.032295073  -0.009803466  -0.000593037   0.074899005   0.015223215   0.037986278  -0.501271520

    9    5.2  0.5  0.5   0.019983279  -0.000222947  -0.002003406  -0.016244591  -0.002823804   0.037390990   0.502781757   0.016096835
                        -0.021220557   0.015550954   0.002736731  -0.004968058  -0.028449627   0.036250947   0.036182143   0.297131357

   10    6.2  0.5  0.5   0.075192010  -0.000957431   0.011621689   0.025712912   0.003889680  -0.061886011  -0.023570645  -0.024560149
                         0.071416768  -0.001720216  -0.010670722  -0.102583231   0.000672478   0.086890855   0.259708945   0.006877772

   11    7.2  0.5  0.5  -0.002778674  -0.144420939   0.036133484  -0.003782198   0.173339768   0.005620589   0.007579725  -0.222443548
                        -0.000869721   0.001578128   0.000106721   0.001813691  -0.000809966  -0.006629740  -0.019471233   0.003267327

   12    8.2  0.5  0.5  -0.002189422   0.000186343  -0.001096653   0.003628343  -0.003270447   0.001865420   0.006311673  -0.002051357
                         0.003027080   0.040581849  -0.142402204   0.015418251  -0.280253548  -0.000197703   0.002669703  -0.037969843

   13    1.2  0.5 -0.5  -0.001334050  -0.018017447   0.032439170  -0.003218961   0.585653469  -0.002979206  -0.000980435  -0.053730267
                        -0.001041072  -0.000713208   0.000501494   0.000830326   0.009614852   0.001805148  -0.009526466  -0.010310563

   14    2.2  0.5 -0.5   0.000041666   0.000643630  -0.000604385  -0.000362233  -0.012195958   0.004418038   0.004172165   0.005993812
                        -0.000346551  -0.026739354   0.025843830  -0.002770141   0.544487675   0.007200075   0.006073508  -0.222266077

   15    3.2  0.5 -0.5   0.005740756  -0.000376247  -0.003437139  -0.034916272   0.003466717   0.382259115   0.359015979   0.010586053
                        -0.007116311  -0.001115467  -0.002705301  -0.008266834   0.001052142   0.264520873   0.019839874   0.026121468

   16    4.2  0.5 -0.5  -0.023645160   0.014688606   0.005985942  -0.002469654   0.018517243  -0.046849230   0.026738545   0.297425126
                        -0.022000606   0.000293266   0.000803298   0.009489938  -0.005962180   0.058790385  -0.500573650  -0.019804930

   17    5.2  0.5 -0.5   0.011660485   0.029143961   0.016951377  -0.001321271   0.051212466   0.018113871  -0.034267152   0.504053941
                         0.010291499  -0.000522529  -0.001104160  -0.003123712  -0.009460479  -0.022118834   0.295587405  -0.005316706

   18    6.2  0.5 -0.5  -0.000629497  -0.002302188  -0.001464035   0.008860126  -0.003374378  -0.003610638   0.024092737  -0.007618121
                        -0.001865355  -0.103676868  -0.105746536   0.013054736  -0.106623227  -0.001595346   0.008369269  -0.260665064

   19    7.2  0.5 -0.5   0.098277299  -0.001224637   0.003264513   0.035191998   0.001005611  -0.143851159   0.221825705   0.006372797
                        -0.105836999   0.002641535   0.002633905   0.008195323   0.008633263  -0.096716986   0.016886793   0.019898960

   20    8.2  0.5 -0.5   0.029912757  -0.003712773  -0.007072629  -0.033774478   0.001443362   0.158003194   0.004373317   0.006463352
                         0.027425318  -0.000414844   0.014172694   0.138343323   0.001198159  -0.231490254  -0.037772889  -0.002278073


   Nr   State  S   Sz        9            10            11            12            13            14            15            16

    1    1.2  1.5  1.5   0.000000016  -0.000000219  -0.000000166   0.000000026  -0.000000095   0.000000345  -0.000003185  -0.000001836
                         0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000

    2    1.2  1.5  0.5   0.000000749   0.000000032   0.000000065   0.000000588  -0.000000013   0.000000017   0.000000142  -0.000000208
                        -0.000000093   0.000000068   0.000000312   0.000001060  -0.000000012   0.000000149  -0.000000137  -0.000000093

    3    1.2  1.5 -0.5   0.000000026  -0.000000754  -0.000001212   0.000000305  -0.000000147  -0.000000015  -0.000000211  -0.000000138
                        -0.000000071  -0.000000028  -0.000000007  -0.000000093   0.000000031  -0.000000008   0.000000087  -0.000000141

    4    1.2  1.5 -1.5   0.000000218   0.000000016   0.000000012   0.000000080   0.000000109   0.000000030   0.000001836  -0.000003183
                        -0.000000019  -0.000000001   0.000000022   0.000000146   0.000000327   0.000000090   0.000000053  -0.000000092

    5    1.2  0.5  0.5   0.723911685   0.040298862  -0.019875035  -0.099134516   0.022808635   0.004929366   0.000002991  -0.000005138
                        -0.123517054   0.067211014  -0.041439882  -0.193717485   0.067065311   0.006683533   0.000000178   0.000000072

    6    2.2  0.5  0.5   0.038964285  -0.010080625   0.146639350   0.586473094   0.077995745   0.019645375  -0.000000005  -0.000000054
                         0.312829657   0.020875667  -0.047975639  -0.353634208  -0.027268473  -0.007469644  -0.000003272   0.000005686

    7    3.2  0.5  0.5  -0.017972801   0.551645394   0.517745192  -0.136165986   0.012579416   0.018595679  -0.000002468  -0.000001473
                         0.067094528   0.046358429   0.020077259   0.034454696  -0.002157333   0.002337032  -0.000000001   0.000000200

    8    4.2  0.5  0.5   0.076689787   0.008500726   0.013960754   0.076573526  -0.021330819   0.065790680  -0.000000442   0.000000907
                        -0.004100748  -0.107605272  -0.183122489   0.165324450  -0.312524327   0.642710666   0.000002913   0.000001698

    9    5.2  0.5  0.5   0.137827555   0.003759073   0.012518999   0.128091236  -0.124995877  -0.070306177  -0.000001076   0.000001745
                        -0.021047444   0.079666613   0.202229268   0.212471933  -0.598843114  -0.304003892  -0.000001290  -0.000000727

   10    6.2  0.5  0.5   0.000000236  -0.000000243  -0.000000940  -0.000002854   0.000000120  -0.000000356   0.001920570  -0.029944285
                         0.000001924   0.000000082   0.000000186   0.000001585  -0.000000057   0.000000036  -0.286036090   0.500614561

   11    7.2  0.5  0.5   0.000000065  -0.000001588  -0.000001949   0.000000619  -0.000000431   0.000000922  -0.499548891  -0.289131402
                        -0.000000187  -0.000000054  -0.000000031  -0.000000207   0.000000046  -0.000000037   0.011097693  -0.009036956

   12    8.2  0.5  0.5   0.000000103   0.000000055   0.000000015   0.000000089  -0.000000041  -0.000000012   0.003333670  -0.016005207
                         0.000000016  -0.000000572  -0.000001180   0.000000336   0.000000042  -0.000000949  -0.500661489  -0.287033052

   13    1.2  0.5 -0.5  -0.034333062   0.731883440  -0.217528201   0.045894487   0.007898554  -0.070836326   0.000005134   0.000002995
                         0.070445436   0.060425337   0.005966384  -0.002444763   0.002565365  -0.000452462   0.000000220  -0.000000092

   14    2.2  0.5 -0.5   0.011848870   0.011754001  -0.028883668  -0.028264214  -0.000880496   0.001230622  -0.000000110  -0.000000100
                         0.019925280  -0.315027703   0.684232108  -0.151676944   0.020999073  -0.082615927   0.000005685   0.000003271

   15    3.2  0.5 -0.5  -0.545566407  -0.023710040  -0.035102130  -0.266027781   0.008092275  -0.001927380   0.000001466  -0.000002467
                         0.093909746  -0.065288063  -0.136000523  -0.444626135   0.016904913  -0.012616695   0.000000242  -0.000000070

   16    4.2  0.5 -0.5  -0.017778232   0.076757020   0.181792042   0.153969637   0.630577828   0.303256628  -0.000000955  -0.000000358
                        -0.106466387  -0.002549379  -0.012138056  -0.100110437  -0.140630783  -0.078497623   0.000001671  -0.000002924

   17    5.2  0.5 -0.5   0.003147310   0.139131689   0.247876311  -0.183438433  -0.310645392   0.607661787  -0.000001724  -0.000001112
                         0.079693126   0.009044495   0.010441336   0.086045007   0.029338802  -0.070598844  -0.000000777   0.000001258

   18    6.2  0.5 -0.5   0.000000250   0.000000069   0.000000022   0.000000288  -0.000000078   0.000000017   0.015523250  -0.006312883
                         0.000000061  -0.000001937  -0.000003264   0.000000914  -0.000000349  -0.000000132   0.501269017   0.285972867

   19    7.2  0.5 -0.5   0.000001577   0.000000081   0.000000115   0.000000962   0.000000256   0.000000092   0.289271720  -0.499022524
                        -0.000000191   0.000000181   0.000000643   0.000001696   0.000000887   0.000000423  -0.000711466  -0.025471053

   20    8.2  0.5 -0.5  -0.000000105   0.000000101   0.000000337   0.000001028  -0.000000905  -0.000000027   0.024259928  -0.011077691
                        -0.000000565  -0.000000025  -0.000000082  -0.000000579   0.000000288   0.000000053  -0.286453479   0.500550023


   Nr   State  S   Sz       17            18            19            20

    1    1.2  1.5  1.5  -0.001620890   0.111871667  -0.098727882   0.004777183
                         0.000000000  -0.000000000   0.000000000   0.000000000

    2    1.2  1.5  0.5  -0.056103212  -0.000241124   0.001435280   0.016273232
                         0.081035950   0.007455390   0.012439263   0.109982921

    3    1.2  1.5 -0.5  -0.006338991   0.098545565   0.111163692  -0.012506573
                        -0.003931688  -0.001779645  -0.001922152   0.000617200

    4    1.2  1.5 -1.5  -0.062008370  -0.000898429  -0.000780823  -0.016136921
                         0.093114081   0.001349114  -0.004712939  -0.097400177

    5    1.2  0.5  0.5  -0.062979977  -0.000699424   0.000631941  -0.034373034
                         0.102557789  -0.007757612  -0.014600221  -0.191021686

    6    2.2  0.5  0.5   0.145142352   0.001559265  -0.009868589  -0.148561686
                         0.091705302   0.001013179   0.001257374   0.027939240

    7    3.2  0.5  0.5   0.005001262  -0.045181017  -0.223259266   0.021633614
                         0.004928338  -0.003850119   0.000300214  -0.003335523

    8    4.2  0.5  0.5   0.047858165  -0.000515547   0.002920836  -0.006022643
                        -0.070166337  -0.196579072  -0.070782945  -0.038961476

    9    5.2  0.5  0.5   0.097856155   0.001300914  -0.002540879  -0.014402187
                        -0.145374866   0.091523738   0.019363579  -0.112931194

   10    6.2  0.5  0.5  -0.408499552  -0.000828333  -0.070053864  -0.553285629
                        -0.282419045  -0.000000052   0.002720049   0.082178367

   11    7.2  0.5  0.5  -0.002585526   0.736460900  -0.147199422   0.016911999
                         0.004098352  -0.006606735   0.001314731  -0.003006103

   12    8.2  0.5  0.5   0.007470465  -0.002274817   0.005765962  -0.005022311
                        -0.010616034  -0.239557736   0.710029512  -0.051772061

   13    1.2  0.5 -0.5  -0.006069211  -0.120270487   0.194071021  -0.014300585
                        -0.004882050  -0.004425774   0.002688580   0.003009827

   14    2.2  0.5 -0.5  -0.000020972   0.004120666  -0.003281330  -0.000372541
                         0.001859409  -0.171636782   0.151130435  -0.009941391

   15    3.2  0.5 -0.5   0.021838424  -0.001329895  -0.000245314  -0.036195207
                        -0.039739539  -0.006894383  -0.021887868  -0.220305917

   16    4.2  0.5 -0.5  -0.163332788   0.084928392   0.039421909  -0.069353641
                        -0.109389203  -0.000941873  -0.000426544   0.014450920

   17    5.2  0.5 -0.5   0.075456828   0.175239613   0.113766496   0.018687873
                         0.051812683  -0.000869992  -0.004249926  -0.005671656

   18    6.2  0.5 -0.5   0.000459086   0.008642032   0.009360465  -0.008766727
                        -0.000689475   0.496545784   0.559276902  -0.069556358

   19    7.2  0.5 -0.5  -0.413705461  -0.004844288   0.000201437  -0.022762470
                         0.609316089  -0.000119630  -0.017175907  -0.145434757

   20    8.2  0.5 -0.5  -0.198130065   0.012976776   0.051896713   0.701423384
                        -0.134675763  -0.000333619  -0.003507293  -0.110364813


 Composition of spin-orbit eigenvectors
 ======================================

   Nr   State  S   Sz       1        2        3        4        5        6        7        8        9       10

    1    1.2  1.5  1.5   0.004%  49.459%  46.361%   0.499%   1.240%   0.000%   0.000%   0.207%   0.000%   0.000%
    2    1.2  1.5  0.5  46.682%   0.179%   0.999%  48.464%   0.000%   0.207%   1.236%   0.004%   0.000%   0.000%
    3    1.2  1.5 -0.5   0.179%  46.682%  48.464%   0.999%   0.207%   0.000%   0.004%   1.236%   0.000%   0.000%
    4    1.2  1.5 -1.5  49.459%   0.004%   0.499%  46.361%   0.000%   1.240%   0.207%   0.000%   0.000%   0.000%
    5    1.2  0.5  0.5   0.033%   0.000%   0.001%   0.105%   0.001%  34.308%   0.299%   0.009%  53.930%   0.614%
    6    2.2  0.5  0.5   0.072%   0.000%   0.001%   0.067%   0.007%  29.662%   4.944%   0.005%   9.938%   0.054%
    7    3.2  0.5  0.5   0.000%   0.008%   0.129%   0.002%  21.609%   0.001%   0.079%  12.929%   0.482%  30.646%
    8    4.2  0.5  0.5   0.022%   0.104%   0.010%   0.004%   0.565%   0.038%   8.885%  25.129%   0.590%   1.165%
    9    5.2  0.5  0.5   0.085%   0.024%   0.001%   0.029%   0.082%   0.271%  25.410%   8.855%   1.944%   0.636%
   10    6.2  0.5  0.5   1.075%   0.000%   0.025%   1.118%   0.002%   1.138%   6.800%   0.065%   0.000%   0.000%
   11    7.2  0.5  0.5   0.001%   2.086%   0.131%   0.002%   3.005%   0.008%   0.044%   4.949%   0.000%   0.000%
   12    8.2  0.5  0.5   0.001%   0.165%   2.028%   0.025%   7.855%   0.000%   0.005%   0.145%   0.000%   0.000%
   13    1.2  0.5 -0.5   0.000%   0.033%   0.105%   0.001%  34.308%   0.001%   0.009%   0.299%   0.614%  53.930%
   14    2.2  0.5 -0.5   0.000%   0.072%   0.067%   0.001%  29.662%   0.007%   0.005%   4.944%   0.054%   9.938%
   15    3.2  0.5 -0.5   0.008%   0.000%   0.002%   0.129%   0.001%  21.609%  12.929%   0.079%  30.646%   0.482%
   16    4.2  0.5 -0.5   0.104%   0.022%   0.004%   0.010%   0.038%   0.565%  25.129%   8.885%   1.165%   0.590%
   17    5.2  0.5 -0.5   0.024%   0.085%   0.029%   0.001%   0.271%   0.082%   8.855%  25.410%   0.636%   1.944%
   18    6.2  0.5 -0.5   0.000%   1.075%   1.118%   0.025%   1.138%   0.002%   0.065%   6.800%   0.000%   0.000%
   19    7.2  0.5 -0.5   2.086%   0.001%   0.002%   0.131%   0.008%   3.005%   4.949%   0.044%   0.000%   0.000%
   20    8.2  0.5 -0.5   0.165%   0.001%   0.025%   2.028%   0.000%   7.855%   0.145%   0.005%   0.000%   0.000%

   Nr   State  S   Sz      11       12       13       14       15       16       17       18       19       20

    1    1.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   1.252%   0.975%   0.002%
    2    1.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.971%   0.006%   0.016%   1.236%
    3    1.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.006%   0.971%   1.236%   0.016%
    4    1.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   1.252%   0.000%   0.002%   0.975%
    5    1.2  0.5  0.5   0.211%   4.735%   0.502%   0.007%   0.000%   0.000%   1.448%   0.006%   0.021%   3.767%
    6    2.2  0.5  0.5   2.380%  46.901%   0.683%   0.044%   0.000%   0.000%   2.948%   0.000%   0.010%   2.285%
    7    3.2  0.5  0.5  26.846%   1.973%   0.016%   0.035%   0.000%   0.000%   0.005%   0.206%   4.984%   0.048%
    8    4.2  0.5  0.5   3.373%   3.320%   9.813%  41.741%   0.000%   0.000%   0.721%   3.864%   0.502%   0.155%
    9    5.2  0.5  0.5   4.105%   6.155%  37.424%   9.736%   0.000%   0.000%   3.071%   0.838%   0.038%   1.296%
   10    6.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   8.182%  25.151%  24.663%   0.000%   0.491%  31.288%
   11    7.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%  24.967%   8.368%   0.002%  54.242%   2.167%   0.030%
   12    8.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%  25.067%   8.264%   0.017%   5.739%  50.418%   0.271%
   13    1.2  0.5 -0.5   4.735%   0.211%   0.007%   0.502%   0.000%   0.000%   0.006%   1.448%   3.767%   0.021%
   14    2.2  0.5 -0.5  46.901%   2.380%   0.044%   0.683%   0.000%   0.000%   0.000%   2.948%   2.285%   0.010%
   15    3.2  0.5 -0.5   1.973%  26.846%   0.035%   0.016%   0.000%   0.000%   0.206%   0.005%   0.048%   4.984%
   16    4.2  0.5 -0.5   3.320%   3.373%  41.741%   9.813%   0.000%   0.000%   3.864%   0.721%   0.155%   0.502%
   17    5.2  0.5 -0.5   6.155%   4.105%   9.736%  37.424%   0.000%   0.000%   0.838%   3.071%   1.296%   0.038%
   18    6.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%  25.151%   8.182%   0.000%  24.663%  31.288%   0.491%
   19    7.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   8.368%  24.967%  54.242%   0.002%   0.030%   2.167%
   20    8.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   8.264%  25.067%   5.739%   0.017%   0.271%  50.418%


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
              1      21       52.36       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       6     1340.65       700     1000      520     2140     5302     5102   
                                         GEOM     BASIS   MCVARS    MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI        CI     MULTI       INT
 CPU TIMES  *     38441.27  32485.15   5748.42    200.24      5.68      1.60
 REAL TIME  *     38864.93 SEC
 DISK USED  *         1.36 GB (local),       19.23 GB (total)
 SF USED    *        12.90 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCVQZ-PP energy=   -240.112355786247

              CI              CI           MULTI
   -240.04407467   -240.11976926   -239.20303972
 **********************************************************************************************************************************
 Molpro calculation terminated with 1 warning(s)
