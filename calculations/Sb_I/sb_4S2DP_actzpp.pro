
 Working directory              : /wrk/irikura/molpro.Mq0Y16I9wp/
 Global scratch directory       : /wrk/irikura/molpro.Mq0Y16I9wp/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.Mq0Y16I9wp/

 id        : nistki

 Nodes            nprocs
 pn125343.nist.gov   14
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1042), CPU time= 0.01 sec
 ***,Sb SO-CI
 memory,1500,M;
 
 gprint,orbitals,civector;
 
 symmetry,xyz
 geometry={Sb};
 
 basis=aug-cc-pwCVTZ-PP
 
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
  (64 PROC) 64 bit mpp version                                                           DATE: 10-Nov-24          TIME: 15:58:28  
 **********************************************************************************************************************************

 SHA1:             0134236b472f03f1f5189f93707d8671e415b05c
 **********************************************************************************************************************************

 Memory per process:      1500 MW
 Total memory per node:  21000 MW

 GA preallocation disabled
 GA check disabled

 Variable memory set to 1500.0 MW


 ZSYMEL=XYZ

 SETTING BASIS          =    AUG-CC-PWCVTZ-PP
 SETTING PAR            =         2.00000000                                  
 SETTING NQ             =         1.00000000                                  
 SETTING ND             =         8.00000000                                  


 Recomputing integrals since basis changed


 Using spherical harmonics

 Library entry Sb   ECP ECP28MDF                 selected for group  1
 Library entry SB     S aug-cc-pwCVTZ-PP     selected for orbital group  1
 Library entry SB     P aug-cc-pwCVTZ-PP     selected for orbital group  1
 Library entry SB     D aug-cc-pwCVTZ-PP     selected for orbital group  1
 Library entry SB     F aug-cc-pwCVTZ-PP     selected for orbital group  1
 Library entry SB     G aug-cc-pwCVTZ-PP     selected for orbital group  1


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
 NUMBER OF PRIMITIVE AOS:         184
 NUMBER OF SYMMETRY AOS:          154
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

         1 0.178E-04 0.191E-02 0.829E-02 0.102E-01 0.102E-01 0.102E-01 0.102E-01 0.102E-01
         2 0.666E-02 0.666E-02 0.666E-02 0.182E-01 0.182E-01 0.182E-01 0.147E+00 0.147E+00


 Contracted 2-electron integrals neglected if value below      1.0D-12
 AO integral compression algorithm  1   Integral accuracy      1.0D-12

     17.826 MB (compressed) written to integral file ( 19.1%)

     Node minimum: 0.786 MB, node maximum: 2.097 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:     393360.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:     393360      RECORD LENGTH: 524288

 Memory used in sort:       0.95 MW

 SORT1 READ    11031004. AND WROTE       78334. INTEGRALS IN      1 RECORDS. CPU TIME:     0.07 SEC, REAL TIME:     0.08 SEC
 SORT2 READ     1100136. AND WROTE     5533081. INTEGRALS IN     56 RECORDS. CPU TIME:     0.01 SEC, REAL TIME:     0.02 SEC

 Node minimum:      392525.  Node maximum:      397927. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      19       28.85       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         0.75      0.58
 REAL TIME  *         1.42 SEC
 DISK USED  *        29.19 MB (local),      473.30 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of closed-shell orbitals:   9 (    6    3)
 Number of active  orbitals:        7 (    1    6)
 Number of external orbitals:      80 (   40   40)

 State symmetry 1

 Number of active electrons:   5    Spin symmetry=Quartet   Space symmetry=2
 Number of states:             1
 Number of CSFs:             104   (110 determinants, 245 intermediate states)

 State symmetry 2

 Number of active electrons:   5    Spin symmetry=Doublet   Space symmetry=2
 Number of states:             8
 Number of CSFs:             280   (390 determinants, 735 intermediate states)

 Orbital guess generated from atomic densities.
 *** IN SYMMETRY 1 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.336D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.424D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.432D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.477D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.589D-01 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 2 3 5 4 6 1 1 4 6   3 5 2 1 4 6 3 5 2 1   2 6 4 3 5 2 6 4 5 3   8121415 711 91310 1
                                        2 3 4 5 6 1 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.120D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.496D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.499D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.163D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.256D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.141D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.182D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  9 SYMMETRY CONTAMINATION OF 0.182D-03 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 2 3 1 2 3 3 1 2 2   1 3 6 9 7 4 5 810 8  10 5 6 4 7 9 3 2 1 7   9 6 5 4 810 2 1 3 4
                                        5 7 9 810 6 2 1 3

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.11111
 Weight factors for state symmetry  2:    0.11111   0.11111   0.11111   0.11111   0.11111   0.11111   0.11111   0.11111
 
 Number of orbital rotations:  664  ( 24 closed/active, 360 closed/virtual, 0 active/active, 280 active/virtual )
 Total number of variables:    3894
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1   10   18    0   -239.21255679    -239.22399916   -0.01144237    0.05760124 0.00007438 0.00000000  0.14E+01      1.32
   2    8   14    0   -239.22409765    -239.22413015   -0.00003250    0.00219361 0.00000363 0.00000000  0.85E-01      2.43
   3    7   14    0   -239.22413015    -239.22413015   -0.00000000    0.00000043 0.00000001 0.00000000  0.56E-05      3.47

 CONVERGENCE REACHED!  Final gradient:    0.00000001 ( 0.13E-07)
                       Final energy:   -239.22413015
 
 Results for state 1.2 Quartet
 =============================
 !MCSCF STATE 1.2 Quartet Energy              -239.282000057485
 Nuclear energy                                  0.00000000
 Kinetic energy                                 92.34220349
 One electron energy                          -419.52419478
 Two electron energy                           180.24219472
 Virial ratio                                    3.59125287
 
 !MCSCF STATE 1.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.2 Doublet
 =============================
 !MCSCF STATE 1.2 Doublet Energy              -239.225304644146
 Nuclear energy                                  0.00000000
 Kinetic energy                                 92.27986685
 One electron energy                          -419.28194458
 Two electron energy                           180.05663994
 Virial ratio                                    3.59238892
 
 !MCSCF STATE 1.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.2 Doublet
 =============================
 !MCSCF STATE 2.2 Doublet Energy              -239.225304644140
 Nuclear energy                                  0.00000000
 Kinetic energy                                 92.27986685
 One electron energy                          -419.28194458
 Two electron energy                           180.05663994
 Virial ratio                                    3.59238892
 
 !MCSCF STATE 2.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.2 Doublet
 =============================
 !MCSCF STATE 3.2 Doublet Energy              -239.225304644125
 Nuclear energy                                  0.00000000
 Kinetic energy                                 92.27986685
 One electron energy                          -419.28194458
 Two electron energy                           180.05663994
 Virial ratio                                    3.59238892
 
 !MCSCF STATE 3.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.2 Doublet
 =============================
 !MCSCF STATE 4.2 Doublet Energy              -239.225304644096
 Nuclear energy                                  0.00000000
 Kinetic energy                                 92.27986685
 One electron energy                          -419.28194458
 Two electron energy                           180.05663994
 Virial ratio                                    3.59238892
 
 !MCSCF STATE 4.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.2 Doublet
 =============================
 !MCSCF STATE 5.2 Doublet Energy              -239.225304644094
 Nuclear energy                                  0.00000000
 Kinetic energy                                 92.27986685
 One electron energy                          -419.28194458
 Two electron energy                           180.05663994
 Virial ratio                                    3.59238892
 
 !MCSCF STATE 5.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.2 Doublet
 =============================
 !MCSCF STATE 6.2 Doublet Energy              -239.202882678437
 Nuclear energy                                  0.00000000
 Kinetic energy                                 92.27461021
 One electron energy                          -419.19884927
 Two electron energy                           179.99596659
 Virial ratio                                    3.59229361
 
 !MCSCF STATE 6.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.2 Doublet
 =============================
 !MCSCF STATE 7.2 Doublet Energy              -239.202882678409
 Nuclear energy                                  0.00000000
 Kinetic energy                                 92.27461021
 One electron energy                          -419.19884927
 Two electron energy                           179.99596659
 Virial ratio                                    3.59229361
 
 !MCSCF STATE 7.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.2 Doublet
 =============================
 !MCSCF STATE 8.2 Doublet Energy              -239.202882678354
 Nuclear energy                                  0.00000000
 Kinetic energy                                 92.27461021
 One electron energy                          -419.19884927
 Two electron energy                           179.99596659
 Virial ratio                                    3.59229361
 
 !MCSCF STATE 8.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 ? Warning
 ? Transition properties are only calculated between states of the same symmetry
 ? The problem occurs in mu_properties_expec2

 !MCSCF expec      <1.2 Quartet|LXLX|1.2 Quartet>    -0.000000000000
 !MCSCF expec      <1.2 Doublet|LXLX|1.2 Doublet>     3.510458730759
 !MCSCF expec      <2.2 Doublet|LXLX|2.2 Doublet>     4.000000000000
 !MCSCF expec      <3.2 Doublet|LXLX|3.2 Doublet>     1.000000084296
 !MCSCF expec      <4.2 Doublet|LXLX|4.2 Doublet>     0.999971054902
 !MCSCF expec      <5.2 Doublet|LXLX|5.2 Doublet>     0.489551537592
 !MCSCF expec      <6.2 Doublet|LXLX|6.2 Doublet>    -0.000000000000
 !MCSCF expec      <7.2 Doublet|LXLX|7.2 Doublet>     0.999999999999
 !MCSCF expec      <8.2 Doublet|LXLX|8.2 Doublet>     1.000000000000
 
 !MCSCF expec      <1.2 Quartet|LYLY|1.2 Quartet>    -0.000000000000
 !MCSCF expec      <1.2 Doublet|LYLY|1.2 Doublet>     2.380061693837
 !MCSCF expec      <2.2 Doublet|LYLY|2.2 Doublet>     1.000000000000
 !MCSCF expec      <3.2 Doublet|LYLY|3.2 Doublet>     3.999999828176
 !MCSCF expec      <4.2 Doublet|LYLY|4.2 Doublet>     1.000035456275
 !MCSCF expec      <5.2 Doublet|LYLY|5.2 Doublet>     1.619928386107
 !MCSCF expec      <6.2 Doublet|LYLY|6.2 Doublet>     1.000000000000
 !MCSCF expec      <7.2 Doublet|LYLY|7.2 Doublet>     0.000000007042
 !MCSCF expec      <8.2 Doublet|LYLY|8.2 Doublet>     0.999999992959
 
 !MCSCF expec      <1.2 Quartet|LZLZ|1.2 Quartet>    -0.000000000000
 !MCSCF expec      <1.2 Doublet|LZLZ|1.2 Doublet>     0.109479575404
 !MCSCF expec      <2.2 Doublet|LZLZ|2.2 Doublet>     1.000000000000
 !MCSCF expec      <3.2 Doublet|LZLZ|3.2 Doublet>     1.000000087528
 !MCSCF expec      <4.2 Doublet|LZLZ|4.2 Doublet>     3.999993488823
 !MCSCF expec      <5.2 Doublet|LZLZ|5.2 Doublet>     3.890520076301
 !MCSCF expec      <6.2 Doublet|LZLZ|6.2 Doublet>     1.000000000000
 !MCSCF expec      <7.2 Doublet|LZLZ|7.2 Doublet>     0.999999992959
 !MCSCF expec      <8.2 Doublet|LZLZ|8.2 Doublet>     0.000000007041
 
 !MCSCF expec      <1.2 Quartet|L**2|1.2 Quartet>    -0.000000000000
 !MCSCF expec      <1.2 Doublet|L**2|1.2 Doublet>     6.000000000000
 !MCSCF expec      <2.2 Doublet|L**2|2.2 Doublet>     6.000000000000
 !MCSCF expec      <3.2 Doublet|L**2|3.2 Doublet>     6.000000000000
 !MCSCF expec      <4.2 Doublet|L**2|4.2 Doublet>     6.000000000000
 !MCSCF expec      <5.2 Doublet|L**2|5.2 Doublet>     6.000000000000
 !MCSCF expec      <6.2 Doublet|L**2|6.2 Doublet>     2.000000000000
 !MCSCF expec      <7.2 Doublet|L**2|7.2 Doublet>     2.000000000000
 !MCSCF expec      <8.2 Doublet|L**2|8.2 Doublet>     2.000000000000
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 4 2 3 5 6 1 1 4 2   6 3 5 1 3 5 6 2 4 1   6 2 5 3 4 4 2 5 3 6   9 7 8121415131011 1
                                        4 2 5 3 6 1 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 3 2 2 3 1 1 3 2 1   2 3 5 9 7 6 810 4 4   6 810 9 7 5 1 2 3 4   6 810 9 7 5 1 3 2 4
                                        6 810 7 9 5 1 3 2
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -6.53505     1  1  s    1.00201
    2.1     2.00000    -1.62975     1  1  d1+  1.00027
    3.1     2.00000    -1.62975     1  1  d0   1.00027
    4.1     2.00000    -1.62975     1  1  d2-  1.00027
    5.1     2.00000    -1.62975     1  1  d2+  1.00027
    6.1     2.00000    -1.62975     1  1  d1-  1.00027
    7.1     1.97791    -0.62716     1  2  s    1.01966
    1.2     2.00000    -4.60214     1  1  px   0.99991
    2.2     2.00000    -4.60214     1  1  pz   0.99991
    3.2     2.00000    -4.60214     1  1  py   0.99991
    4.2     1.00290    -0.15228     1  2  py   0.91747
    5.2     1.00290    -0.15228     1  2  pz   0.91747
    6.2     1.00290    -0.15228     1  2  px   0.91747
    7.2     0.00447     0.41872     1  2  px  -1.05505    1  3  px  -0.64995    1  4  px   1.46244
    8.2     0.00447     0.41872     1  2  pz  -1.05505    1  3  pz  -0.64995    1  4  pz   1.46244
    9.2     0.00447     0.41872     1  2  py  -1.05505    1  3  py  -0.64995    1  4  py   1.46244
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 2 (Quartet)
 =======================================
 
 2 aaa000       0.99674766
 
 Energy:     -239.28200006
 
 
 CI Coefficients of symmetry 2 (Doublet)
 =======================================

 State:              1               2               3               4               5               6               7
 2 aba000       0.80186781     -0.00000923     -0.00004252      0.00099012     -0.13450974     -0.00000000     -0.00000000
 2 aab000      -0.28444191      0.00000327     -0.00007300     -0.00565088      0.76167362     -0.00000000      0.00000000
 2 02a000      -0.00000810     -0.70414088     -0.00000000     -0.00000000     -0.00000000      0.69621835      0.00000000
 2 20a000       0.00000810      0.70414088     -0.00000000     -0.00000000      0.00000000      0.69621836      0.00000000
 2 a20000       0.00005191     -0.00000000      0.70414087      0.00007885      0.00008746      0.00000000      0.69621835
 2 a02000      -0.00005191      0.00000000     -0.70414087     -0.00007885     -0.00008746     -0.00000000      0.69621835
 2 2a0000       0.00000731     -0.00000000     -0.00007950      0.70412148      0.00522662      0.00000000      0.00005842
 2 0a2000      -0.00000731      0.00000000      0.00007950     -0.70412148     -0.00522662     -0.00000000      0.00005842
 2 baa000      -0.51742591      0.00000596      0.00011552      0.00466076     -0.62716388      0.00000000     -0.00000000
 0 22a000       0.00000000      0.00000000     -0.00000000     -0.00000000      0.00000000     -0.14630675      0.00000000
 0 2a2000      -0.00000000     -0.00000000     -0.00000000      0.00000000      0.00000000     -0.00000000     -0.00001228
 0 a22000      -0.00000000      0.00000000      0.00000000      0.00000000      0.00000000      0.00000000     -0.14630675
 
 Energy:     -239.22530464   -239.22530464   -239.22530464   -239.22530464   -239.22530464   -239.20288268   -239.20288268

 State:              8
 2 aba000      -0.00000000
 2 aab000       0.00000000
 2 02a000       0.00000000
 2 20a000       0.00000000
 2 a20000      -0.00005842
 2 a02000      -0.00005842
 2 2a0000       0.69621835
 2 0a2000       0.69621835
 2 baa000       0.00000000
 0 22a000       0.00000000
 0 2a2000      -0.14630675
 0 a22000       0.00001228
 
 Energy:     -239.20288268
 


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       36.28       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       4        0.51       700     1000      520     2140   
                                         GEOM     BASIS   MCVARS    MCSCF   

 PROGRAMS   *        TOTAL     MULTI       INT
 CPU TIMES  *         4.22      3.47      0.58
 REAL TIME  *         5.22 SEC
 DISK USED  *        36.88 MB (local),      581.00 MB (total)
 SF USED    *        19.51 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

         ENERGY     LL
    -239.2820001  -0.0
    -239.2253046   6.0
    -239.2253046   6.0
    -239.2253046   6.0
    -239.2253046   6.0
    -239.2253046   6.0
    -239.2028827   2.0
    -239.2028827   2.0
    -239.2028827   2.0
                                                  


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
 Number of external orbitals:      80 (  40  40 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Valence orbitals related to previous ones by unitary transformation. Operators transformed.


 Number of p-space configurations:  10

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -239.28200006

 Number of blocks in overlap matrix:   167   Smallest eigenvalue:  0.60D-06
 Number of N-2 electron functions:     251
 Number of N-1 electron functions:  101369

 Number of internal configurations:                33680
 Number of singly external configurations:       4054760
 Number of doubly external configurations:        402040
 Total number of contracted configurations:      4490480
 Total number of uncontracted configurations:  102101240

 Diagonal Coupling coefficients finished.               Storage:  10293144 words, CPU-Time:      0.68 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   1134093 words, CPU-time:      0.03 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -239.28200006    -0.00000000    -0.86685335  0.56D-01  0.94D-01     1.70
    2     1     1     1.09196949    -0.68100632  -239.96300638    -0.68100632    -0.01934516  0.30D-02  0.13D-02    17.78
    3     1     1     1.08209788    -0.69907977  -239.98107982    -0.01807344    -0.00035633  0.49D-04  0.33D-04    33.68
    4     1     1     1.08206252    -0.69944294  -239.98144299    -0.00036317    -0.00001206  0.20D-05  0.16D-05    49.59
    5     1     1     1.08217997    -0.69945634  -239.98145640    -0.00001340    -0.00000058  0.44D-07  0.11D-06    65.45
    6     1     1     1.08219981    -0.69945699  -239.98145705    -0.00000065    -0.00000003  0.32D-08  0.61D-08    81.18


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   3.2%
 S   2.2%  26.6%
 P   0.7%  62.1%   3.2%

 Initialization:   1.0%
 Other:            1.0%

 Total CPU:       81.2 seconds
 =====================================



 Wavefunction saved on  5302.2

 Reference coefficients greater than 0.0500000
 =============================================
 2222222222///000           0.9578912


 RESULTS FOR STATE 1.2
 =====================

 Coefficient of reference function:   C(0) = 0.96066627 (fixed)   0.96093905 (relaxed)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00126137   -0.00311210   -0.00368635
 Singles      0.02173237   -0.09230550   -0.09921640
 Pairs        0.06057112   -0.60403936   -0.59655424
 Total        1.08356486   -0.69945697   -0.69945699
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -239.28200006
 Nuclear energy                         0.00000000
 Kinetic energy                        92.75076507
 One electron energy                 -419.09298894
 Two electron energy                  179.11153189
 Virial quotient                       -2.58737981
 Correlation energy                    -0.69945699
 !MRCI STATE 1.2 Energy              -239.981457047129

 Properties without orbital relaxation:

 !MRCI STATE 1.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -240.03990707 (Davidson, fixed reference)
 Cluster corrected energies          -240.03947684 (Davidson, relaxed reference)

 Cluster corrected energies          -240.03779013 (Pople, fixed reference)
 Cluster corrected energies          -240.03734664 (Pople, relaxed reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       36.28       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       5       35.66       700     1000      520     2140     5302   
                                         GEOM     BASIS   MCVARS    MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI       INT
 CPU TIMES  *        86.37     82.14      3.47      0.58
 REAL TIME  *        88.82 SEC
 DISK USED  *        72.03 MB (local),        1.05 GB (total)
 SF USED    *       470.87 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =      -240.03947684  AU                              


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
 Number of external orbitals:      80 (  40  40 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Coulomb and exchange operators available. No transformation done.


 Number of p-space configurations:  32

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -239.22530464
     2      -239.22530464
     3      -239.22530464
     4      -239.22530464
     5      -239.22530464
     6      -239.20288268
     7      -239.20288268
     8      -239.20288268

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2066D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1132D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1132D-06

 Number of blocks in overlap matrix:   796   Smallest eigenvalue:  0.11D-06
 Number of N-2 electron functions:    1869
 Number of N-1 electron functions:  124768

 Number of internal configurations:                44086
 Number of singly external configurations:       4990720
 Number of doubly external configurations:       2992920
 Total number of contracted configurations:      8027726
 Total number of uncontracted configurations:  134742286

 Diagonal Coupling coefficients finished.               Storage:  27654047 words, CPU-Time:     54.21 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   1398413 words, CPU-time:      0.20 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -239.22530464     0.00000000    -0.86166328  0.62D-01  0.88D-01    64.67
    1     2     2     1.00000000     0.00000000  -239.22530464     0.00000000    -0.86214340  0.61D-01  0.88D-01    64.67
    1     3     3     1.00000000     0.00000000  -239.22530464     0.00000000    -0.86174007  0.62D-01  0.88D-01    64.67
    1     4     4     1.00000000     0.00000000  -239.22530464     0.00000000    -0.86164344  0.61D-01  0.88D-01    64.67
    1     5     5     1.00000000     0.00000000  -239.22530464     0.00000000    -0.86115145  0.62D-01  0.87D-01    64.67
    1     6     6     1.00000000     0.00000000  -239.20288268     0.00000000    -0.84499803  0.42D-01  0.91D-01    64.67
    1     7     7     1.00000000     0.00000000  -239.20288268     0.00000000    -0.84431857  0.42D-01  0.90D-01    64.67
    1     8     8     1.00000000     0.00000000  -239.20288268     0.00000000    -0.84415617  0.42D-01  0.90D-01    64.67
    2     1     1     1.09434444    -0.68818557  -239.91349021    -0.68818557    -0.01950335  0.31D-02  0.14D-02   309.88
    2     2     2     1.09427270    -0.68816254  -239.91346718    -0.68816254    -0.01947276  0.32D-02  0.13D-02   309.88
    2     3     3     1.09421229    -0.68804656  -239.91335121    -0.68804656    -0.01959803  0.32D-02  0.14D-02   309.88
    2     4     4     1.09438540    -0.68799897  -239.91330362    -0.68799897    -0.01964814  0.33D-02  0.13D-02   309.88
    2     5     5     1.09455010    -0.68772885  -239.91303350    -0.68772885    -0.01990118  0.34D-02  0.13D-02   309.88
    2     6     6     1.08617136    -0.68407891  -239.88696158    -0.68407891    -0.01771859  0.25D-02  0.14D-02   309.88
    2     7     7     1.08587292    -0.68392195  -239.88680463    -0.68392195    -0.01780955  0.25D-02  0.14D-02   309.88
    2     8     8     1.08586292    -0.68386307  -239.88674574    -0.68386307    -0.01779776  0.25D-02  0.14D-02   309.88
    3     1     1     1.08624954    -0.70636060  -239.93166525    -0.01817504    -0.00057335  0.60D-04  0.79D-04   554.32
    3     2     2     1.08620007    -0.70634889  -239.93165353    -0.01818635    -0.00058417  0.61D-04  0.81D-04   554.32
    3     3     3     1.08619288    -0.70634800  -239.93165264    -0.01830143    -0.00058113  0.60D-04  0.81D-04   554.32
    3     4     4     1.08621555    -0.70634360  -239.93164825    -0.01834463    -0.00058006  0.60D-04  0.81D-04   554.32
    3     5     5     1.08613472    -0.70632291  -239.93162755    -0.01859405    -0.00059860  0.62D-04  0.84D-04   554.32
    3     6     6     1.08208928    -0.70098593  -239.90386861    -0.01690702    -0.00060000  0.43D-04  0.10D-03   554.32
    3     7     7     1.08194283    -0.70096535  -239.90384803    -0.01704340    -0.00061216  0.43D-04  0.11D-03   554.32
    3     8     8     1.08188547    -0.70092287  -239.90380555    -0.01705980    -0.00063154  0.44D-04  0.11D-03   554.32
    4     1     1     1.08677848    -0.70699246  -239.93229711    -0.00063186    -0.00005061  0.36D-05  0.96D-05   798.39
    4     2     2     1.08678218    -0.70699107  -239.93229572    -0.00064219    -0.00005111  0.37D-05  0.98D-05   798.39
    4     3     3     1.08677970    -0.70699026  -239.93229490    -0.00064226    -0.00005180  0.37D-05  0.99D-05   798.39
    4     4     4     1.08677017    -0.70698660  -239.93229125    -0.00064300    -0.00005372  0.38D-05  0.10D-04   798.39
    4     5     5     1.08675483    -0.70698653  -239.93229117    -0.00066362    -0.00005404  0.38D-05  0.10D-04   798.39
    4     6     6     1.08382873    -0.70169598  -239.90457866    -0.00071005    -0.00006772  0.43D-05  0.12D-04   798.39
    4     7     7     1.08382018    -0.70169436  -239.90457704    -0.00072901    -0.00006919  0.42D-05  0.13D-04   798.39
    4     8     8     1.08378174    -0.70168451  -239.90456719    -0.00076164    -0.00007541  0.47D-05  0.14D-04   798.39
    5     1     1     1.08721527    -0.70706034  -239.93236499    -0.00006788    -0.00000519  0.37D-06  0.84D-06  1041.95
    5     2     2     1.08721608    -0.70706018  -239.93236483    -0.00006911    -0.00000537  0.39D-06  0.85D-06  1041.95
    5     3     3     1.08721644    -0.70706008  -239.93236473    -0.00006983    -0.00000537  0.38D-06  0.85D-06  1041.95
    5     4     4     1.08721503    -0.70705964  -239.93236428    -0.00007304    -0.00000572  0.41D-06  0.89D-06  1041.95
    5     5     5     1.08721547    -0.70705958  -239.93236422    -0.00007305    -0.00000570  0.40D-06  0.91D-06  1041.95
    5     6     6     1.08465189    -0.70178662  -239.90466930    -0.00009064    -0.00000601  0.41D-06  0.94D-06  1041.95
    5     7     7     1.08465527    -0.70178648  -239.90466916    -0.00009212    -0.00000606  0.40D-06  0.96D-06  1041.95
    5     8     8     1.08465205    -0.70178548  -239.90466816    -0.00010098    -0.00000677  0.45D-06  0.11D-05  1041.95
    6     1     1     1.08723321    -0.70706666  -239.93237131    -0.00000632    -0.00000054  0.59D-07  0.76D-07  1285.84
    6     2     2     1.08723211    -0.70706665  -239.93237130    -0.00000647    -0.00000055  0.60D-07  0.77D-07  1285.84
    6     3     3     1.08723154    -0.70706659  -239.93237124    -0.00000651    -0.00000055  0.60D-07  0.77D-07  1285.84
    6     4     4     1.08722923    -0.70706656  -239.93237120    -0.00000692    -0.00000060  0.65D-07  0.83D-07  1285.84
    6     5     5     1.08723037    -0.70706653  -239.93237118    -0.00000696    -0.00000061  0.65D-07  0.84D-07  1285.84
    6     6     6     1.08464722    -0.70179385  -239.90467653    -0.00000724    -0.00000060  0.57D-07  0.91D-07  1285.84
    6     7     7     1.08464681    -0.70179380  -239.90467648    -0.00000732    -0.00000060  0.57D-07  0.92D-07  1285.84
    6     8     8     1.08464120    -0.70179367  -239.90467635    -0.00000819    -0.00000070  0.65D-07  0.11D-06  1285.84
    7     1     1     1.08726469    -0.70706728  -239.93237192    -0.00000062    -0.00000006  0.59D-08  0.11D-07  1530.21
    7     2     2     1.08726446    -0.70706727  -239.93237192    -0.00000062    -0.00000006  0.58D-08  0.11D-07  1530.21
    7     3     3     1.08726382    -0.70706723  -239.93237188    -0.00000064    -0.00000007  0.66D-08  0.12D-07  1530.21
    7     4     4     1.08726445    -0.70706721  -239.93237186    -0.00000066    -0.00000006  0.59D-08  0.11D-07  1530.21
    7     5     5     1.08726437    -0.70706721  -239.93237185    -0.00000067    -0.00000007  0.64D-08  0.11D-07  1530.21
    7     6     6     1.08468062    -0.70179455  -239.90467723    -0.00000070    -0.00000008  0.83D-08  0.12D-07  1530.21
    7     7     7     1.08468027    -0.70179451  -239.90467719    -0.00000071    -0.00000008  0.85D-08  0.12D-07  1530.21
    7     8     8     1.08467864    -0.70179450  -239.90467718    -0.00000083    -0.00000010  0.11D-07  0.15D-07  1530.21
    8     1     1     1.08726702    -0.70706735  -239.93237200    -0.00000008    -0.00000001  0.96D-09  0.16D-08  1774.02
    8     2     2     1.08726711    -0.70706735  -239.93237199    -0.00000008    -0.00000001  0.94D-09  0.15D-08  1774.02
    8     3     3     1.08726691    -0.70706732  -239.93237196    -0.00000009    -0.00000001  0.11D-08  0.17D-08  1774.02
    8     4     4     1.08726700    -0.70706729  -239.93237194    -0.00000008    -0.00000001  0.91D-09  0.15D-08  1774.02
    8     5     5     1.08726691    -0.70706729  -239.93237193    -0.00000008    -0.00000001  0.96D-09  0.16D-08  1774.02
    8     6     6     1.08468711    -0.70179465  -239.90467733    -0.00000010    -0.00000001  0.84D-09  0.17D-08  1774.02
    8     7     7     1.08468645    -0.70179462  -239.90467730    -0.00000011    -0.00000001  0.11D-08  0.22D-08  1774.02
    8     8     8     1.08468695    -0.70179461  -239.90467729    -0.00000010    -0.00000001  0.83D-09  0.17D-08  1774.02


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   1.8%
 S   1.0%  14.0%
 P   0.5%  59.3%  16.9%

 Initialization:   3.1%
 Other:            3.4%

 Total CPU:     1774.0 seconds
 =====================================



 Wavefunction saved on  5102.2

 Reference coefficients greater than 0.0500000
 =============================================
 2222222222//\000           0.2141882   0.0183272  -0.0685966   0.0082197   0.9281512   0.0000000   0.0000001  -0.0000000
 2222222222/\/000           0.9269470   0.0765689  -0.0187913  -0.0019463  -0.2167937  -0.0000000   0.0000001  -0.0000000
 2222222222/02000           0.0032017  -0.0384536   0.0000347   0.6743151  -0.0059487   0.0319949  -0.0032246   0.6689922
 2222222222/20000          -0.0032017   0.0384537  -0.0000347  -0.6743148   0.0059487   0.0319948  -0.0032246   0.6689926
 22222222220/2000           0.0237829   0.0026482   0.6735691   0.0003936   0.0442370  -0.0004469   0.6697569   0.0032496
 22222222222/0000          -0.0237830  -0.0026482  -0.6735691  -0.0003936  -0.0442372  -0.0004469   0.6697569   0.0032496
 222222222202/000          -0.0556369   0.6720418  -0.0006464   0.0385809  -0.0008203   0.6689998   0.0006016  -0.0319924
 222222222220/000           0.0556368  -0.6720414   0.0006464  -0.0385810   0.0008203   0.6690001   0.0006016  -0.0319923
 22222202222/2000           0.0000000   0.0000000   0.0000000  -0.0000000   0.0000000   0.0000853  -0.1277985  -0.0006201
 222222022222/000          -0.0000000   0.0000000   0.0000000   0.0000000  -0.0000000  -0.1276539  -0.0001148   0.0061046
 2222220222/22000           0.0000000  -0.0000000   0.0000000   0.0000000  -0.0000000  -0.0061050   0.0006153  -0.1276525

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.795735   -0.078937    0.004543    0.033743    0.527048   -0.000000   -0.000000   -0.000000
 2           0.065507    0.953486   -0.054558    0.003757    0.044132    0.000000    0.000000   -0.000000
 3           0.006452   -0.000917    0.000049    0.955653   -0.071062   -0.000000   -0.000000    0.000000
 4          -0.004718    0.054738    0.956711    0.000558    0.007040   -0.000000    0.000000    0.000000
 5          -0.529920   -0.001164   -0.008440    0.062763    0.795951   -0.000000   -0.000000   -0.000000
 6          -0.000000   -0.000000    0.000000    0.000000   -0.000000    0.958401    0.045835   -0.000640
 7           0.000000   -0.000000   -0.000000    0.000000    0.000000    0.000862   -0.004619    0.959485
 8          -0.000000   -0.000000   -0.000000    0.000000   -0.000000   -0.045832    0.958390    0.004655

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.958313    0.000000   -0.000000    0.000000    0.000000   -0.000000    0.000000   -0.000000
 2           0.000000    0.958313   -0.000000   -0.000000    0.000000    0.000000    0.000000    0.000000
 3          -0.000000   -0.000000    0.958314   -0.000000   -0.000000    0.000000    0.000000    0.000000
 4           0.000000   -0.000000   -0.000000    0.958313    0.000000    0.000000    0.000000   -0.000000
 5           0.000000    0.000000   -0.000000    0.000000    0.958314   -0.000000    0.000000    0.000000
 6          -0.000000    0.000000    0.000000    0.000000   -0.000000    0.959496   -0.000000    0.000000
 7           0.000000    0.000000    0.000000    0.000000    0.000000   -0.000000    0.959497    0.000000
 8          -0.000000    0.000000    0.000000   -0.000000    0.000000    0.000000    0.000000    0.959496


 RESULTS FOR STATE 1.2
 =====================

 Coefficient of reference function:   C(0) = 0.79573535 (fixed)   0.95855823 (relaxed)   0.95831345 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00149460   -0.00383158   -0.55964234
 Singles      0.02566027   -0.09873410   -0.10733561
 Pairs        0.06173719    0.00000006   -0.04008940
 Total        1.08889205   -0.10256562   -0.70706735
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -239.22530464
 Nuclear energy                         0.00000000
 Kinetic energy                        92.72239736
 One electron energy                 -418.89859618
 Two electron energy                  178.96622418
 Virial quotient                       -2.58764202
 Correlation energy                    -0.70706735
 !MRCI STATE 1.2 Energy              -239.932371997878

 Properties without orbital relaxation:

 !MRCI STATE 1.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -239.99522467 (Davidson, fixed reference)
 Cluster corrected energies          -239.99483151 (Davidson, relaxed reference)
 Cluster corrected energies          -239.99522467 (Davidson, rotated reference)

 Cluster corrected energies          -239.99394570 (Pople, fixed reference)
 Cluster corrected energies          -239.99353117 (Pople, relaxed reference)
 Cluster corrected energies          -239.99394570 (Pople, rotated reference)



 RESULTS FOR STATE 2.2
 =====================

 Coefficient of reference function:   C(0) = 0.95348576 (fixed)   0.95855819 (relaxed)   0.95831342 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00149460   -0.00383158   -0.55964228
 Singles      0.02566025   -0.09873406   -0.10733561
 Pairs        0.06173728    0.00000000   -0.04008946
 Total        1.08889213   -0.10256564   -0.70706735
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -239.22530464
 Nuclear energy                         0.00000000
 Kinetic energy                        92.72242367
 One electron energy                 -418.89861728
 Two electron energy                  178.96624529
 Virial quotient                       -2.58764129
 Correlation energy                    -0.70706735
 !MRCI STATE 2.2 Energy              -239.932371993228

 Properties without orbital relaxation:

 !MRCI STATE 2.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -239.99522472 (Davidson, fixed reference)
 Cluster corrected energies          -239.99483157 (Davidson, relaxed reference)
 Cluster corrected energies          -239.99522472 (Davidson, rotated reference)

 Cluster corrected energies          -239.99394576 (Pople, fixed reference)
 Cluster corrected energies          -239.99353123 (Pople, relaxed reference)
 Cluster corrected energies          -239.99394576 (Pople, rotated reference)



 RESULTS FOR STATE 3.2
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.95565294 (fixed)   0.95855828 (relaxed)   0.95831351 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00149460   -0.00383158   -0.55964228
 Singles      0.02566029   -0.09873410   -0.10733563
 Pairs        0.06173705   -0.00000004   -0.04008941
 Total        1.08889193   -0.10256572   -0.70706732
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -239.22530464
 Nuclear energy                         0.00000000
 Kinetic energy                        92.72241329
 One electron energy                 -418.89861005
 Two electron energy                  178.96623809
 Virial quotient                       -2.58764158
 Correlation energy                    -0.70706732
 !MRCI STATE 3.2 Energy              -239.932371961967

 Properties without orbital relaxation:

 !MRCI STATE 3.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -239.99522454 (Davidson, fixed reference)
 Cluster corrected energies          -239.99483139 (Davidson, relaxed reference)
 Cluster corrected energies          -239.99522454 (Davidson, rotated reference)

 Cluster corrected energies          -239.99394558 (Pople, fixed reference)
 Cluster corrected energies          -239.99353104 (Pople, relaxed reference)
 Cluster corrected energies          -239.99394558 (Pople, rotated reference)



 RESULTS FOR STATE 4.2
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.95671119 (fixed)   0.95855823 (relaxed)   0.95831347 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00149459   -0.00383158   -0.55964239
 Singles      0.02566016   -0.09873394   -0.10733551
 Pairs        0.06173727   -0.00000000   -0.04008940
 Total        1.08889202   -0.10256552   -0.70706729
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -239.22530464
 Nuclear energy                         0.00000000
 Kinetic energy                        92.72241331
 One electron energy                 -418.89860771
 Two electron energy                  178.96623577
 Virial quotient                       -2.58764158
 Correlation energy                    -0.70706729
 !MRCI STATE 4.2 Energy              -239.932371935478

 Properties without orbital relaxation:

 !MRCI STATE 4.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -239.99522458 (Davidson, fixed reference)
 Cluster corrected energies          -239.99483143 (Davidson, relaxed reference)
 Cluster corrected energies          -239.99522458 (Davidson, rotated reference)

 Cluster corrected energies          -239.99394561 (Pople, fixed reference)
 Cluster corrected energies          -239.99353109 (Pople, relaxed reference)
 Cluster corrected energies          -239.99394561 (Pople, rotated reference)



 RESULTS FOR STATE 5.2
 =====================

 Coefficient of reference function:   C(0) = 0.79595114 (fixed)   0.95855827 (relaxed)   0.95831351 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00149459   -0.00383159   -0.55964244
 Singles      0.02566020   -0.09873399   -0.10733553
 Pairs        0.06173714    0.00000006   -0.04008932
 Total        1.08889193   -0.10256551   -0.70706729
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -239.22530464
 Nuclear energy                         0.00000000
 Kinetic energy                        92.72239606
 One electron energy                 -418.89859492
 Two electron energy                  178.96622299
 Virial quotient                       -2.58764206
 Correlation energy                    -0.70706729
 !MRCI STATE 5.2 Energy              -239.932371933694

 Properties without orbital relaxation:

 !MRCI STATE 5.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -239.99522451 (Davidson, fixed reference)
 Cluster corrected energies          -239.99483137 (Davidson, relaxed reference)
 Cluster corrected energies          -239.99522451 (Davidson, rotated reference)

 Cluster corrected energies          -239.99394555 (Pople, fixed reference)
 Cluster corrected energies          -239.99353102 (Pople, relaxed reference)
 Cluster corrected energies          -239.99394555 (Pople, rotated reference)



 RESULTS FOR STATE 6.2
 =====================

 Coefficient of reference function:   C(0) = 0.95840074 (fixed)   0.95973120 (relaxed)   0.95949636 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00140293   -0.00363095   -0.56870284
 Singles      0.01883407   -0.08545797   -0.09084380
 Pairs        0.06597184    0.00040881   -0.04224801
 Total        1.08620885   -0.08868011   -0.70179465
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -239.20288268
 Nuclear energy                         0.00000000
 Kinetic energy                        92.72230336
 One electron energy                 -418.79978949
 Two electron energy                  178.89511216
 Virial quotient                       -2.58734596
 Correlation energy                    -0.70179465
 !MRCI STATE 6.2 Energy              -239.904677328266

 Properties without orbital relaxation:

 !MRCI STATE 6.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -239.96517824 (Davidson, fixed reference)
 Cluster corrected energies          -239.96480522 (Davidson, relaxed reference)
 Cluster corrected energies          -239.96517824 (Davidson, rotated reference)

 Cluster corrected energies          -239.96381000 (Pople, fixed reference)
 Cluster corrected energies          -239.96341849 (Pople, relaxed reference)
 Cluster corrected energies          -239.96381000 (Pople, rotated reference)



 RESULTS FOR STATE 7.2
 =====================

 Maximum overlap with reference state  8

 Coefficient of reference function:   C(0) = 0.95948515 (fixed)   0.95973149 (relaxed)   0.95949666 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00140292   -0.00363095   -0.00425596
 Singles      0.01883413   -0.08545804   -0.09084383
 Pairs        0.06597113   -0.61269828   -0.60669483
 Total        1.08620818   -0.70178727   -0.70179462
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -239.20288268
 Nuclear energy                         0.00000000
 Kinetic energy                        92.72228169
 One electron energy                 -418.79978218
 Two electron energy                  178.89510488
 Virial quotient                       -2.58734657
 Correlation energy                    -0.70179462
 !MRCI STATE 7.2 Energy              -239.904677301222

 Properties without orbital relaxation:

 !MRCI STATE 7.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -239.96517774 (Davidson, fixed reference)
 Cluster corrected energies          -239.96480474 (Davidson, relaxed reference)
 Cluster corrected energies          -239.96517774 (Davidson, rotated reference)

 Cluster corrected energies          -239.96380948 (Pople, fixed reference)
 Cluster corrected energies          -239.96341798 (Pople, relaxed reference)
 Cluster corrected energies          -239.96380948 (Pople, rotated reference)



 RESULTS FOR STATE 8.2
 =====================

 Maximum overlap with reference state  7

 Coefficient of reference function:   C(0) = 0.95838990 (fixed)   0.95973127 (relaxed)   0.95949644 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00140291   -0.00363095   -0.56558975
 Singles      0.01883402   -0.08545790   -0.09084374
 Pairs        0.06597174   -0.00297278   -0.04536112
 Total        1.08620866   -0.09206163   -0.70179461
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -239.20288268
 Nuclear energy                         0.00000000
 Kinetic energy                        92.72229282
 One electron energy                 -418.79977775
 Two electron energy                  178.89510047
 Virial quotient                       -2.58734626
 Correlation energy                    -0.70179461
 !MRCI STATE 8.2 Energy              -239.904677285156

 Properties without orbital relaxation:

 !MRCI STATE 8.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -239.96517806 (Davidson, fixed reference)
 Cluster corrected energies          -239.96480507 (Davidson, relaxed reference)
 Cluster corrected energies          -239.96517806 (Davidson, rotated reference)

 Cluster corrected energies          -239.96380982 (Pople, fixed reference)
 Cluster corrected energies          -239.96341833 (Pople, relaxed reference)
 Cluster corrected energies          -239.96380982 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       36.28       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       6      536.04       700     1000      520     2140     5302     5102   
                                         GEOM     BASIS   MCVARS    MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI       INT
 CPU TIMES  *      2192.71   2106.33     82.14      3.47      0.58
 REAL TIME  *      2241.72 SEC
 DISK USED  *       572.41 MB (local),        7.89 GB (total)
 SF USED    *         5.28 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(2)     =      -239.99522467  AU                              
 SETTING HLSDIAG(3)     =      -239.99522472  AU                              
 SETTING HLSDIAG(4)     =      -239.99522454  AU                              
 SETTING HLSDIAG(5)     =      -239.99522458  AU                              
 SETTING HLSDIAG(6)     =      -239.99522451  AU                              
 SETTING HLSDIAG(7)     =      -239.96517824  AU                              
 SETTING HLSDIAG(8)     =      -239.96517774  AU                              
 SETTING HLSDIAG(9)     =      -239.96517806  AU                              


         HLSDIAG
    -240.0394768
    -239.9952247
    -239.9952247
    -239.9952245
    -239.9952246
    -239.9952245
    -239.9651782
    -239.9651777
    -239.9651781
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Diagonal elements of H will be replaced by values from variable HLSDIAG


   ******************************
   *** Spin-orbit calculation ***
   ******************************


   Spin-orbit matrix elements
   ==========================

 Wavefunction restored from record  5302.2  Symmetry=2  S= 1.5  NSTATE=   1

 Original energies:   -239.981457
 Replaced energies:   -240.039477

 Wavefunction restored from record  5102.2  Symmetry=2  S= 0.5  NSTATE=   8

 Original energies:   -239.932372   -239.932372   -239.932372   -239.932372   -239.932372   -239.904677   -239.904677   -239.904677
 Replaced energies:   -239.995225   -239.995225   -239.995225   -239.995225   -239.995225   -239.965178   -239.965178   -239.965178



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=  -240.03947684

 Wigner-Eckart theorem used for 23 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.2  1.5  1.5       0.00       0.00       0.00       0.00      -0.00       0.00      -0.00      -0.00       0.00      96.82
                            0.00       0.00       0.00       0.00      -0.00       0.00      -0.00      -0.00      -0.00    2024.50

    2   1.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00       1.56

    3   1.2  1.5 -0.5       0.00       0.00       0.00       0.00      -0.00       0.00      -0.00      -0.00       0.00      55.90
                           -0.00      -0.00       0.00       0.00       0.00      -0.00       0.00       0.00       0.00   -1168.84

    4   1.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    5   1.2  0.5  0.5      -0.00       0.00      -0.00       0.00    9712.23       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00      -0.02     -21.06      -1.28      -0.57      -1.97

    6   2.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00    9712.22       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00      -0.00       0.02      -0.00      -1.76      15.43      -0.16      13.42

    7   3.2  0.5  0.5      -0.00       0.00      -0.00       0.00       0.00       0.00    9712.26       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00      21.06       1.76       0.00       0.19      22.63      -0.03

    8   4.2  0.5  0.5      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00    9712.25       0.00       0.00
                            0.00       0.00      -0.00      -0.00       1.28     -15.43      -0.19      -0.00       0.01   -1443.90

    9   5.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    9712.26       0.00
                            0.00      -0.00      -0.00      -0.00       0.57       0.16     -22.63      -0.01      -0.00      13.55

   10   6.2  0.5  0.5      96.82       0.00      55.90       0.00       0.00       0.00       0.00       0.00       0.00   16306.66
                        -2024.50      -1.56    1168.84      -0.00       1.97     -13.42       0.03    1443.90     -13.55       0.00

   11   7.2  0.5  0.5      -9.76       0.00      -5.63       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -1.82    2340.34       1.05      -0.00   -1213.75    -106.74     -31.46      11.01    1137.80      -0.02

   12   8.2  0.5  0.5    2024.48       0.00    1168.83       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           96.81      11.36     -55.90      -0.00    -125.03    1438.54      -1.54      13.58       4.38       3.38

   13   1.2  0.5 -0.5       0.00      -0.00       0.00      -0.00       0.00       1.06       1.28      -8.97       0.02      25.16
                           -0.00       0.00      -0.00      -0.00      -0.00     -30.14       0.01      -1.17       0.61     375.89

   14   2.2  0.5 -0.5       0.00       0.00       0.00       0.00      -1.06      -0.00     -15.46      -0.72       0.68      -0.32
                           -0.00      -0.00      -0.00       0.00      30.14      -0.00       0.28      -0.14      -6.93      32.17

   15   3.2  0.5 -0.5       0.00      -0.00       0.00      -0.00      -1.28      15.46       0.00      -0.74      -0.01   -1442.59
                           -0.00       0.00      -0.00      -0.00      -0.01      -0.28       0.00      15.45      -0.13     -50.81

   16   4.2  0.5 -0.5       0.00      -0.00       0.00      -0.00       8.97       0.72       0.74       0.00     -29.59      -0.69
                           -0.00       0.00       0.00      -0.00       1.17       0.14     -15.45       0.00      -1.41      15.33

   17   5.2  0.5 -0.5       0.00       0.00       0.00       0.00      -0.02      -0.68       0.01      29.59      -0.00     -71.42
                           -0.00       0.00      -0.00      -0.00      -0.61       6.93       0.13       1.41      -0.00    1622.82

   18   6.2  0.5 -0.5       0.00      55.90       0.00      96.82     -25.16       0.32    1442.59       0.69      71.42       0.00
                           -0.00   -1168.84      -1.56    2024.50    -375.89     -32.17      50.81     -15.33   -1622.82       0.00

   19   7.2  0.5 -0.5       0.00      -5.63       0.00      -9.76     126.64   -1436.09       2.25     -82.46       4.16       3.37
                           -0.00      -1.05    2340.34       1.82       6.75     -82.21       7.11    1441.58     -13.72       0.16

   20   8.2  0.5 -0.5       0.00    1168.83       0.00    2024.48   -1588.24    -138.84      19.40      -4.67    -486.30       0.02
                           -0.00      55.90      11.36     -96.81     -32.89      -4.53   -1444.07       6.84     -17.14       0.00


   Nr   State  S   Sz       11         12         13         14         15         16         17         18         19         20

    1   1.2  1.5  1.5      -9.76    2024.48       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            1.82     -96.81       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    2   1.2  1.5  0.5       0.00       0.00      -0.00       0.00      -0.00      -0.00       0.00      55.90      -5.63    1168.83
                        -2340.34     -11.36      -0.00       0.00      -0.00      -0.00      -0.00    1168.84       1.05     -55.90

    3   1.2  1.5 -0.5      -5.63    1168.83       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -1.05      55.90       0.00       0.00       0.00      -0.00       0.00       1.56   -2340.34     -11.36

    4   1.2  1.5 -1.5       0.00       0.00      -0.00       0.00      -0.00      -0.00       0.00      96.82      -9.76    2024.48
                            0.00       0.00       0.00      -0.00       0.00       0.00       0.00   -2024.50      -1.82      96.81

    5   1.2  0.5  0.5       0.00       0.00       0.00      -1.06      -1.28       8.97      -0.02     -25.16     126.64   -1588.24
                         1213.75     125.03       0.00     -30.14       0.01      -1.17       0.61     375.89      -6.75      32.89

    6   2.2  0.5  0.5       0.00       0.00       1.06      -0.00      15.46       0.72      -0.68       0.32   -1436.09    -138.84
                          106.74   -1438.54      30.14       0.00       0.28      -0.14      -6.93      32.17      82.21       4.53

    7   3.2  0.5  0.5       0.00       0.00       1.28     -15.46       0.00       0.74       0.01    1442.59       2.25      19.40
                           31.46       1.54      -0.01      -0.28      -0.00      15.45      -0.13     -50.81      -7.11    1444.07

    8   4.2  0.5  0.5       0.00       0.00      -8.97      -0.72      -0.74       0.00      29.59       0.69     -82.46      -4.67
                          -11.01     -13.58       1.17       0.14     -15.45      -0.00      -1.41      15.33   -1441.58      -6.84

    9   5.2  0.5  0.5       0.00       0.00       0.02       0.68      -0.01     -29.59      -0.00      71.42       4.16    -486.30
                        -1137.80      -4.38      -0.61       6.93       0.13       1.41       0.00    1622.82      13.72      17.14

   10   6.2  0.5  0.5       0.00       0.00      25.16      -0.32   -1442.59      -0.69     -71.42       0.00       3.37       0.02
                            0.02      -3.38    -375.89     -32.17      50.81     -15.33   -1622.82      -0.00      -0.16      -0.00

   11   7.2  0.5  0.5   16306.77       0.00    -126.64    1436.09      -2.25      82.46      -4.16      -3.37      -0.00       0.16
                            0.00      -0.00       6.75     -82.21       7.11    1441.58     -13.72       0.16      -0.00       3.37

   12   8.2  0.5  0.5       0.00   16306.70    1588.24     138.84     -19.40       4.67     486.30      -0.02      -0.16      -0.00
                            0.00      -0.00     -32.89      -4.53   -1444.07       6.84     -17.14       0.00      -3.37       0.00

   13   1.2  0.5 -0.5    -126.64    1588.24    9712.23       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -6.75      32.89       0.00       0.02      21.06       1.28       0.57       1.97   -1213.75    -125.03

   14   2.2  0.5 -0.5    1436.09     138.84       0.00    9712.22       0.00       0.00       0.00       0.00       0.00       0.00
                           82.21       4.53      -0.02       0.00       1.76     -15.43       0.16     -13.42    -106.74    1438.54

   15   3.2  0.5 -0.5      -2.25     -19.40       0.00       0.00    9712.26       0.00       0.00       0.00       0.00       0.00
                           -7.11    1444.07     -21.06      -1.76      -0.00      -0.19     -22.63       0.03     -31.46      -1.54

   16   4.2  0.5 -0.5      82.46       4.67       0.00       0.00       0.00    9712.25       0.00       0.00       0.00       0.00
                        -1441.58      -6.84      -1.28      15.43       0.19       0.00      -0.01    1443.90      11.01      13.58

   17   5.2  0.5 -0.5      -4.16     486.30       0.00       0.00       0.00       0.00    9712.26       0.00       0.00       0.00
                           13.72      17.14      -0.57      -0.16      22.63       0.01       0.00     -13.55    1137.80       4.38

   18   6.2  0.5 -0.5      -3.37      -0.02       0.00       0.00       0.00       0.00       0.00   16306.66       0.00       0.00
                           -0.16      -0.00      -1.97      13.42      -0.03   -1443.90      13.55      -0.00      -0.02       3.38

   19   7.2  0.5 -0.5      -0.00      -0.16       0.00       0.00       0.00       0.00       0.00       0.00   16306.77       0.00
                            0.00       3.37    1213.75     106.74      31.46     -11.01   -1137.80       0.02      -0.00       0.00

   20   8.2  0.5 -0.5       0.16      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   16306.70
                           -3.37      -0.00     125.03   -1438.54       1.54     -13.58      -4.38      -3.38      -0.00       0.00


 No symmetry adaption


 Spin-orbit eigenstates   (energies)
 ======================

     Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
              (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1  -240.04184519    -0.00236834     -519.79      0.00000000        0.00      0.0000
     2  -240.04184519    -0.00236834     -519.79      0.00000000        0.00      0.0000
     3  -240.04184518    -0.00236834     -519.79      0.00000001        0.00      0.0000
     4  -240.04184518    -0.00236834     -519.79      0.00000001        0.00      0.0000
     5  -240.00083573     0.03864111     8480.74      0.04100946     9000.54      1.1159
     6  -240.00083573     0.03864111     8480.74      0.04100946     9000.54      1.1159
     7  -240.00083565     0.03864120     8480.76      0.04100954     9000.55      1.1159
     8  -240.00083565     0.03864120     8480.76      0.04100954     9000.55      1.1159
     9  -239.99508358     0.04439327     9743.20      0.04676161    10262.99      1.2724
    10  -239.99508358     0.04439327     9743.20      0.04676161    10262.99      1.2724
    11  -239.99508346     0.04439338     9743.22      0.04676172    10263.01      1.2725
    12  -239.99508346     0.04439338     9743.22      0.04676172    10263.01      1.2725
    13  -239.99508342     0.04439343     9743.23      0.04676177    10263.02      1.2725
    14  -239.99508342     0.04439343     9743.23      0.04676177    10263.02      1.2725
    15  -239.96520878     0.07426806    16299.96      0.07663641    16819.75      2.0854
    16  -239.96520878     0.07426806    16299.96      0.07663641    16819.75      2.0854
    17  -239.95739500     0.08208185    18014.88      0.08445019    18534.67      2.2980
    18  -239.95739500     0.08208185    18014.88      0.08445019    18534.67      2.2980
    19  -239.95739476     0.08208208    18014.94      0.08445043    18534.73      2.2980
    20  -239.95739476     0.08208208    18014.94      0.08445043    18534.73      2.2980


 Eigenvectors of spin-orbit matrix
 =================================

  Basis states          Eigenvectors (columnwise)

   Nr   State  S   Sz        1             2             3             4             5             6             7             8

    1    1.2  1.5  1.5   0.003553083   0.973643299   0.129137263  -0.020090551  -0.074396023   0.007698678  -0.088229089   0.000076526
                        -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000

    2    1.2  1.5  0.5  -0.074506221   0.001093267   0.127639674   0.860243407   0.005474824   0.054726303   0.000137035  -0.025148066
                        -0.107282497  -0.004260615   0.101338800   0.425927151   0.008186139   0.068500575  -0.000986540  -0.070431498

    3    1.2  1.5 -0.5   0.003602239  -0.126653590   0.929484817  -0.162838770  -0.087545318   0.009843819   0.074677907  -0.000906553
                        -0.002524273  -0.031930854   0.239772042  -0.006706245  -0.004807726  -0.000292901   0.004028809   0.000412556

    4    1.2  1.5 -1.5   0.343035647  -0.001251828   0.015207091   0.097747551   0.004468305   0.043179379   0.000021813   0.025149059
                         0.911212280  -0.003325255   0.013129151   0.084391046   0.006269281   0.060583079   0.000073351   0.084568889

    5    1.2  0.5  0.5  -0.007660388  -0.000013756  -0.004266484  -0.025306030   0.036118427   0.363448713  -0.000566339   0.009087560
                        -0.019214084   0.001318055  -0.000348277  -0.013690927   0.098878194   0.451283817  -0.012132083   0.027206387

    6    2.2  0.5  0.5  -0.000756807   0.000235032   0.005668336  -0.002023684   0.012999371   0.033031245   0.013928229  -0.000762125
                        -0.001768657  -0.013569749  -0.032130450   0.004390446  -0.570326275   0.100248593   0.105030779  -0.001225417

    7    3.2  0.5  0.5  -0.032088621   0.000116384  -0.000529613  -0.003394035   0.030751833   0.297440863   0.000366628   0.418345460
                         0.014897608  -0.000038103   0.000546871   0.003467585  -0.023681361  -0.235264746  -0.000334006  -0.165703497

    8    4.2  0.5  0.5  -0.000071770  -0.021708570   0.027329788  -0.004601094   0.197782962  -0.023822569  -0.554775836   0.005941251
                        -0.000319052  -0.001787161   0.005750933   0.000179209  -0.011781077   0.004634921  -0.011740019   0.002841916

    9    5.2  0.5  0.5  -0.013098448   0.000260405   0.002486725   0.018596697  -0.002128875  -0.009690822   0.004535368   0.209052899
                        -0.025962797   0.000004836   0.002174831   0.008561532  -0.006190029  -0.027960500   0.003726794   0.550583335

   10    6.2  0.5  0.5  -0.000210572  -0.007876982   0.013642516   0.000160963  -0.006672972   0.001801228  -0.009371235  -0.000655947
                         0.000190274   0.134185424  -0.053029077   0.009577125   0.049557477  -0.004316642   0.274710534  -0.001189360

   11    7.2  0.5  0.5  -0.015881278  -0.000077027   0.015431513   0.062993267  -0.018512021  -0.165615052   0.002833281   0.170149313
                         0.011030898  -0.000052689  -0.018860218  -0.127364306   0.013298622   0.132203304   0.000554437  -0.060755041

   12    8.2  0.5  0.5  -0.000789603  -0.115229334  -0.086048125   0.014944424  -0.261464781   0.027144970  -0.094030596  -0.000084510
                         0.000231165  -0.004051058  -0.015326271  -0.000574878  -0.008119953   0.000489465  -0.008263451   0.000262946

   13    1.2  0.5 -0.5   0.001228693   0.020680978   0.028101836  -0.003457017   0.578440233  -0.101482800   0.028668067   0.011790212
                        -0.000477254   0.000399658   0.006174421  -0.002524522   0.034043311   0.027976409   0.000955579  -0.002915317

   14    2.2  0.5 -0.5  -0.012616836   0.001921888  -0.001337369  -0.016706691   0.100806962   0.456890242  -0.001391819  -0.104643697
                         0.005000878   0.000085143   0.004645725   0.028024674  -0.031285779  -0.341602620  -0.000381212   0.016587844

   15    3.2  0.5 -0.5   0.000005345  -0.002636841   0.000302976  -0.000043499  -0.018949277   0.001436162  -0.039582933   0.000215645
                         0.000122345   0.035279816   0.004842708  -0.000760043   0.378763109  -0.038786847   0.448222895  -0.000446624

   16    4.2  0.5 -0.5  -0.009320966   0.000323880   0.003365582   0.024444897  -0.010052230  -0.105199328   0.004417529   0.169387790
                        -0.019686938  -0.000045241   0.003142457   0.013506944  -0.022089590  -0.167898766   0.004884710   0.528414452

   17    5.2  0.5 -0.5   0.000096272   0.028912903  -0.019671303   0.003303521  -0.028393680   0.006276337   0.587331289  -0.004864960
                         0.000242004   0.003111306  -0.005672459  -0.000021118   0.008336698  -0.001859075   0.043440535  -0.003284922

   18    6.2  0.5 -0.5   0.122806084  -0.000103885  -0.006380477  -0.024328042  -0.002469749  -0.036483264  -0.001326992  -0.260642915
                        -0.054648337   0.000264107   0.007144000   0.049054537   0.003972173   0.034197128  -0.000289717   0.087286703

   19    7.2  0.5 -0.5  -0.000076449  -0.004728267   0.035551082  -0.000644592   0.011534596  -0.000085137  -0.009734786  -0.001339042
                        -0.000053524   0.018749379  -0.137571576   0.024360294  -0.211596343   0.022793442   0.180408419  -0.002557703

   20    8.2  0.5 -0.5  -0.044389093   0.000061852  -0.010936165  -0.075147896   0.016153501   0.158366244   0.000227948   0.034723376
                        -0.106413434   0.000820417  -0.010201304  -0.044631470   0.021820939   0.208206384  -0.000155955   0.087774284


   Nr   State  S   Sz        9            10            11            12            13            14            15            16

    1    1.2  1.5  1.5  -0.000000090   0.000000000  -0.000000735   0.000000104  -0.000000082   0.000000007  -0.000001338  -0.000000000
                        -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000

    2    1.2  1.5  0.5   0.000000018   0.000000358   0.000000033   0.000000211  -0.000000043  -0.000000531   0.000000003  -0.000003409
                         0.000000305  -0.000000371  -0.000000080  -0.000000549  -0.000000032  -0.000000360  -0.000000054   0.000001325

    3    1.2  1.5 -0.5  -0.000000456  -0.000000079  -0.000000585   0.000000086   0.000000619  -0.000000053   0.000003638   0.000000017
                        -0.000000239  -0.000000295  -0.000000068   0.000000008   0.000000167  -0.000000012   0.000000380   0.000000051

    4    1.2  1.5 -1.5   0.000000000   0.000000085   0.000000048   0.000000341   0.000000005   0.000000054   0.000000000   0.000001291
                         0.000000000  -0.000000028  -0.000000093  -0.000000651   0.000000005   0.000000062  -0.000000000  -0.000000352

    5    1.2  0.5  0.5  -0.004766591   0.409589006  -0.019408471  -0.144436383   0.005882677   0.098746274  -0.000000020   0.000002715
                         0.355897415  -0.392097010   0.017622817   0.341230377   0.015050777   0.061731457   0.000000432  -0.000001145

    6    2.2  0.5  0.5  -0.247093994  -0.362369569  -0.014673565  -0.006172399   0.020160241   0.004764703   0.000000193   0.000000298
                         0.567864049   0.139355189   0.240825778  -0.016549182  -0.081683435   0.010549226  -0.000004399  -0.000000122

    7    3.2  0.5  0.5   0.000208902  -0.006389146  -0.078898315  -0.555584009  -0.024324293  -0.268311148  -0.000000001   0.000000917
                         0.001075807  -0.019325963  -0.034497558  -0.246787678   0.034830799   0.385746405   0.000000006   0.000002247

    8    4.2  0.5  0.5   0.081464811   0.015922374   0.636645917  -0.092771532   0.408317280  -0.037208205   0.000006819  -0.000000018
                         0.042386834   0.057124895   0.004075435   0.001623241   0.077202840  -0.006139326   0.000000332   0.000000095

    9    5.2  0.5  0.5  -0.002741276  -0.036983674   0.005909449   0.049417878   0.058004727   0.619331459  -0.000000057  -0.000005504
                        -0.042190246   0.045096835  -0.012954836  -0.099533364   0.040449959   0.440103420  -0.000000062   0.000002112

   10    6.2  0.5  0.5   0.000000350   0.000000480  -0.000000013   0.000000001  -0.000000127   0.000000005  -0.032963850  -0.004710524
                        -0.000000529  -0.000000153   0.000000845  -0.000000116   0.000000964  -0.000000077   0.576398929   0.002239566

   11    7.2  0.5  0.5  -0.000000944   0.000001162   0.000000231   0.000001489   0.000000098   0.000001128  -0.007968240   0.209495540
                         0.000000079   0.000001056   0.000000087   0.000000570  -0.000000126  -0.000001534  -0.000833699   0.537922863

   12    8.2  0.5  0.5  -0.000000726  -0.000000062  -0.000002561   0.000000372   0.000000542  -0.000000041   0.576355518   0.003614989
                        -0.000000284  -0.000000314  -0.000000120   0.000000015   0.000000132  -0.000000014   0.032963075   0.007180759

   13    1.2  0.5 -0.5   0.512160149   0.116510041  -0.369285224   0.024618556   0.111222217  -0.015242066   0.000002921   0.000000133
                         0.243300638   0.336319938  -0.030470682  -0.009009946   0.034514023   0.005367605   0.000000389   0.000000411

   14    2.2  0.5 -0.5  -0.387812250   0.413225299   0.011792771   0.220117318   0.011102023   0.048722636   0.000000320  -0.000001344
                        -0.018254635   0.461269848   0.013149315   0.098796433  -0.003276227  -0.068590988   0.000000040  -0.000004193

   15    3.2  0.5 -0.5   0.000016434   0.000140219  -0.039320064   0.006069815   0.117097988  -0.010509827   0.000000293   0.000000003
                         0.020354699   0.001086894   0.606656147  -0.085896350  -0.455059581   0.041163082  -0.000002409   0.000000005

   16    4.2  0.5 -0.5  -0.002861136  -0.063989537  -0.044503013  -0.291926259  -0.028938280  -0.325012006  -0.000000042  -0.000006491
                        -0.059233348   0.065867278   0.081416668   0.565785907  -0.024180938  -0.258941065  -0.000000087   0.000002116

   17    5.2  0.5 -0.5  -0.049295135  -0.010673417   0.111099485  -0.014217652   0.737676498  -0.068506133  -0.000005866   0.000000038
                        -0.031168996  -0.040909774   0.002433444  -0.000779581   0.181922676  -0.017540162  -0.000000588  -0.000000075

   18    6.2  0.5 -0.5   0.000000504  -0.000000499   0.000000103   0.000000755  -0.000000055  -0.000000647  -0.005134014   0.183583163
                        -0.000000006  -0.000000392   0.000000053   0.000000381   0.000000054   0.000000726  -0.000920103   0.547375158

   19    7.2  0.5 -0.5   0.000000770   0.000000921   0.000000187  -0.000000030  -0.000000426   0.000000032   0.060450742   0.007467472
                        -0.000001368  -0.000000222  -0.000001584   0.000000245   0.000001856  -0.000000157  -0.574103732  -0.002902546

   20    8.2  0.5 -0.5   0.000000040   0.000000600   0.000000160   0.000001083  -0.000000038  -0.000000453   0.001596497  -0.547333482
                         0.000000317  -0.000000498  -0.000000337  -0.000002324  -0.000000022  -0.000000325  -0.007879254   0.183570984


   Nr   State  S   Sz       17            18            19            20

    1    1.2  1.5  1.5  -0.142039451  -0.030004765   0.021703090   0.001052148
                        -0.000000000   0.000000000  -0.000000000   0.000000000

    2    1.2  1.5  0.5   0.003885696  -0.019098660  -0.007823984   0.141307208
                        -0.001495067   0.009488779   0.001767692   0.032300955

    3    1.2  1.5 -0.5   0.021248991   0.004163233   0.144487129   0.006932726
                         0.001810012  -0.000036766   0.011599504   0.004034449

    4    1.2  1.5 -1.5  -0.027907203   0.132109811  -0.001003640   0.020702505
                         0.011021521  -0.052174738  -0.000315787   0.006513863

    5    1.2  0.5  0.5   0.024652722  -0.113630407   0.009385427  -0.180578685
                        -0.017999084   0.049575912   0.015588423  -0.040993031

    6    2.2  0.5  0.5  -0.003420032  -0.011120416   0.006172340  -0.009974778
                         0.079351811   0.021905661  -0.209006835  -0.013707190

    7    3.2  0.5  0.5  -0.020094146   0.095168115   0.000594189  -0.011797203
                        -0.041595669   0.196456994  -0.001423974   0.031531240

    8    4.2  0.5  0.5   0.137676820   0.027116952   0.176202383   0.009821034
                         0.006878002   0.001674737   0.003495282   0.005044166

    9    5.2  0.5  0.5   0.032985165  -0.162884005  -0.008618369   0.124326898
                        -0.016832264   0.081625311   0.002224557   0.028643259

   10    6.2  0.5  0.5  -0.032193855  -0.005732886  -0.007404532  -0.009155767
                         0.685183012   0.143922487   0.275400699   0.013107417

   11    7.2  0.5  0.5   0.010445192  -0.048104982  -0.011347252  -0.165875939
                         0.020534691  -0.097882743  -0.040047184   0.725106679

   12    8.2  0.5  0.5  -0.575804546  -0.122763969   0.468007650   0.022127830
                        -0.028021344  -0.007449529   0.016431540   0.013231397

   13    1.2  0.5 -0.5  -0.123897282  -0.029540835   0.184556857   0.013631363
                        -0.004370812  -0.007685233   0.015094917  -0.012052847

   14    2.2  0.5 -0.5  -0.018389526   0.032328904   0.013628918  -0.056842548
                        -0.016289474   0.072548249  -0.010081460   0.201223457

   15    3.2  0.5 -0.5   0.016351441   0.003410255   0.001789675   0.000139410
                        -0.217680846  -0.046068911   0.033618300   0.001536662

   16    4.2  0.5 -0.5   0.024606097  -0.125525695  -0.010882183   0.169127921
                        -0.011518413   0.056969409   0.001863974   0.049550412

   17    5.2  0.5 -0.5  -0.181480245  -0.036862174  -0.127191864  -0.007553365
                        -0.016087603  -0.003539262  -0.009992178  -0.004708674

   18    6.2  0.5 -0.5  -0.058198539   0.281628576   0.004799658   0.075594304
                        -0.131755373   0.625457872   0.015251090  -0.264926166

   19    7.2  0.5 -0.5  -0.008787232  -0.002172074  -0.059401585  -0.022843678
                         0.108710189   0.022935947   0.741462052   0.034795164

   20    8.2  0.5 -0.5  -0.111445429   0.525258464  -0.025078872   0.451362614
                         0.052023108  -0.237570236   0.005980043   0.124791611


 Composition of spin-orbit eigenvectors
 ======================================

   Nr   State  S   Sz       1        2        3        4        5        6        7        8        9       10

    1    1.2  1.5  1.5   0.001%  94.798%   1.668%   0.040%   0.553%   0.006%   0.778%   0.000%   0.000%   0.000%
    2    1.2  1.5  0.5   1.706%   0.002%   2.656%  92.143%   0.010%   0.769%   0.000%   0.559%   0.000%   0.000%
    3    1.2  1.5 -0.5   0.002%   1.706%  92.143%   2.656%   0.769%   0.010%   0.559%   0.000%   0.000%   0.000%
    4    1.2  1.5 -1.5  94.798%   0.001%   0.040%   1.668%   0.006%   0.553%   0.000%   0.778%   0.000%   0.000%
    5    1.2  0.5  0.5   0.043%   0.000%   0.002%   0.083%   1.108%  33.575%   0.015%   0.082%  12.669%  32.150%
    6    2.2  0.5  0.5   0.000%   0.018%   0.106%   0.002%  32.544%   1.114%   1.123%   0.000%  38.353%  15.073%
    7    3.2  0.5  0.5   0.125%   0.000%   0.000%   0.002%   0.151%  14.382%   0.000%  20.247%   0.000%   0.041%
    8    4.2  0.5  0.5   0.000%   0.047%   0.078%   0.002%   3.926%   0.059%  30.791%   0.004%   0.843%   0.352%
    9    5.2  0.5  0.5   0.085%   0.000%   0.001%   0.042%   0.004%   0.088%   0.003%  34.685%   0.179%   0.340%
   10    6.2  0.5  0.5   0.000%   1.807%   0.300%   0.009%   0.250%   0.002%   7.555%   0.000%   0.000%   0.000%
   11    7.2  0.5  0.5   0.037%   0.000%   0.059%   2.019%   0.052%   4.491%   0.001%   3.264%   0.000%   0.000%
   12    8.2  0.5  0.5   0.000%   1.329%   0.764%   0.022%   6.843%   0.074%   0.891%   0.000%   0.000%   0.000%
   13    1.2  0.5 -0.5   0.000%   0.043%   0.083%   0.002%  33.575%   1.108%   0.082%   0.015%  32.150%  12.669%
   14    2.2  0.5 -0.5   0.018%   0.000%   0.002%   0.106%   1.114%  32.544%   0.000%   1.123%  15.073%  38.353%
   15    3.2  0.5 -0.5   0.000%   0.125%   0.002%   0.000%  14.382%   0.151%  20.247%   0.000%   0.041%   0.000%
   16    4.2  0.5 -0.5   0.047%   0.000%   0.002%   0.078%   0.059%   3.926%   0.004%  30.791%   0.352%   0.843%
   17    5.2  0.5 -0.5   0.000%   0.085%   0.042%   0.001%   0.088%   0.004%  34.685%   0.003%   0.340%   0.179%
   18    6.2  0.5 -0.5   1.807%   0.000%   0.009%   0.300%   0.002%   0.250%   0.000%   7.555%   0.000%   0.000%
   19    7.2  0.5 -0.5   0.000%   0.037%   2.019%   0.059%   4.491%   0.052%   3.264%   0.001%   0.000%   0.000%
   20    8.2  0.5 -0.5   1.329%   0.000%   0.022%   0.764%   0.074%   6.843%   0.000%   0.891%   0.000%   0.000%

   Nr   State  S   Sz      11       12       13       14       15       16       17       18       19       20

    1    1.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   2.018%   0.090%   0.047%   0.000%
    2    1.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.002%   0.045%   0.006%   2.101%
    3    1.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.045%   0.002%   2.101%   0.006%
    4    1.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.090%   2.018%   0.000%   0.047%
    5    1.2  0.5  0.5   0.069%  13.730%   0.026%   1.356%   0.000%   0.000%   0.093%   1.537%   0.033%   3.429%
    6    2.2  0.5  0.5   5.821%   0.031%   0.708%   0.013%   0.000%   0.000%   0.631%   0.060%   4.372%   0.029%
    7    3.2  0.5  0.5   0.742%  36.958%   0.180%  22.079%   0.000%   0.000%   0.213%   4.765%   0.000%   0.113%
    8    4.2  0.5  0.5  40.533%   0.861%  17.268%   0.142%   0.000%   0.000%   1.900%   0.074%   3.106%   0.012%
    9    5.2  0.5  0.5   0.020%   1.235%   0.500%  57.726%   0.000%   0.000%   0.137%   3.319%   0.008%   1.628%
   10    6.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%  33.332%   0.003%  47.051%   2.075%   7.590%   0.026%
   11    7.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.006%  33.325%   0.053%   1.190%   0.173%  55.329%
   12    8.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%  33.327%   0.006%  33.234%   1.513%  21.930%   0.066%
   13    1.2  0.5 -0.5  13.730%   0.069%   1.356%   0.026%   0.000%   0.000%   1.537%   0.093%   3.429%   0.033%
   14    2.2  0.5 -0.5   0.031%   5.821%   0.013%   0.708%   0.000%   0.000%   0.060%   0.631%   0.029%   4.372%
   15    3.2  0.5 -0.5  36.958%   0.742%  22.079%   0.180%   0.000%   0.000%   4.765%   0.213%   0.113%   0.000%
   16    4.2  0.5 -0.5   0.861%  40.533%   0.142%  17.268%   0.000%   0.000%   0.074%   1.900%   0.012%   3.106%
   17    5.2  0.5 -0.5   1.235%   0.020%  57.726%   0.500%   0.000%   0.000%   3.319%   0.137%   1.628%   0.008%
   18    6.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.003%  33.332%   2.075%  47.051%   0.026%   7.590%
   19    7.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%  33.325%   0.006%   1.190%   0.053%  55.329%   0.173%
   20    8.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.006%  33.327%   1.513%  33.234%   0.066%  21.930%


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
              1      21       36.28       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       6      536.04       700     1000      520     2140     5302     5102   
                                         GEOM     BASIS   MCVARS    MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI        CI     MULTI       INT
 CPU TIMES  *     22326.50  20133.78   2106.33     82.14      3.47      0.58
 REAL TIME  *     22505.52 SEC
 DISK USED  *       572.41 MB (local),        7.89 GB (total)
 SF USED    *         5.28 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCVTZ-PP energy=   -239.957394759954

              CI              CI           MULTI
   -239.90467729   -239.98145705   -239.20288268
 **********************************************************************************************************************************
 Molpro calculation terminated with 1 warning(s)
