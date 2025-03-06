
 Working directory              : /wrk/irikura/molpro.611I46Pl24/
 Global scratch directory       : /wrk/irikura/molpro.611I46Pl24/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.611I46Pl24/

 id        : nistki

 Nodes            nprocs
 pn125343.nist.gov   28
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1042), CPU time= 0.01 sec
 ***,Bi SO-CI
                                                                                 ! valence s2 inactive
 memory,1500,M;
 
 gprint,orbitals,civector;
 
 symmetry,xyz
 geometry={Bi};
 
 basis=aug-cc-pwCVTZ-PP
 
 PAR=2                                                                           ! parity even (1) or odd (2)
 NQ=1
 ND=8
 
 {multi
     closed,7,3
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
 Commands initialized (847), CPU time= 0.02 sec, 718 directives.
 Default parameters read. Elapsed time= 0.17 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2024.1 linked Mon Jun 17 07:53:25 2024


 **********************************************************************************************************************************
 LABEL *   Bi SO-CI                                                                                                                                                      
  (64 PROC) 64 bit mpp version                                                           DATE: 22-Jan-25          TIME: 15:29:12  
 **********************************************************************************************************************************

 SHA1:             0134236b472f03f1f5189f93707d8671e415b05c
 **********************************************************************************************************************************

 Memory per process:      1500 MW
 Total memory per node:  42000 MW

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

 Library entry Bi   ECP ECP60MDF                 selected for group  1
 Library entry BI     S aug-cc-pwCVTZ-PP     selected for orbital group  1
 Library entry BI     P aug-cc-pwCVTZ-PP     selected for orbital group  1
 Library entry BI     D aug-cc-pwCVTZ-PP     selected for orbital group  1
 Library entry BI     F aug-cc-pwCVTZ-PP     selected for orbital group  1
 Library entry BI     G aug-cc-pwCVTZ-PP     selected for orbital group  1


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

   1  BI     23.00    0.000000000    0.000000000    0.000000000

 NUCLEAR CHARGE:                   23
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

         1 0.321E-04 0.177E-02 0.876E-02 0.879E-02 0.879E-02 0.879E-02 0.879E-02 0.879E-02
         2 0.588E-02 0.588E-02 0.588E-02 0.101E-01 0.101E-01 0.101E-01 0.679E-01 0.679E-01


 Contracted 2-electron integrals neglected if value below      1.0D-12
 AO integral compression algorithm  1   Integral accuracy      1.0D-12

     19.137 MB (compressed) written to integral file ( 22.3%)

     Node minimum: 0.262 MB, node maximum: 2.359 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:     194960.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:     194960      RECORD LENGTH: 524288

 Memory used in sort:       0.75 MW

 SORT1 READ    11031004. AND WROTE       38494. INTEGRALS IN      1 RECORDS. CPU TIME:     0.09 SEC, REAL TIME:     0.11 SEC
 SORT2 READ     1100136. AND WROTE     5533081. INTEGRALS IN     28 RECORDS. CPU TIME:     0.00 SEC, REAL TIME:     0.01 SEC

 Node minimum:      194462.  Node maximum:      199024. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      19       28.85       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         1.87      1.55
 REAL TIME  *         3.00 SEC
 DISK USED  *        29.19 MB (local),      939.49 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of closed-shell orbitals:  10 (    7    3)
 Number of active  orbitals:        6 (    0    6)
 Number of external orbitals:      80 (   40   40)

 State symmetry 1

 Number of active electrons:   3    Spin symmetry=Quartet   Space symmetry=2
 Number of states:             1
 Number of CSFs:              20   (20 determinants, 20 intermediate states)

 State symmetry 2

 Number of active electrons:   3    Spin symmetry=Doublet   Space symmetry=2
 Number of states:             8
 Number of CSFs:              70   (90 determinants, 90 intermediate states)

 Orbital guess generated from atomic densities.
 *** IN SYMMETRY 1 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.933D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.124D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.521D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.490D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.578D+00 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 2 6 4 3 5 1 1 2 5   3 6 4 1 6 4 3 5 2 1   4 6 3 5 2 8141512 7  11 91310 2 4 6 5 3 1
                                        2 4 5 6 3 1 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.140D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.308D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.242D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.614D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.762D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.418D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.116D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.119D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  9 SYMMETRY CONTAMINATION OF 0.305D-03 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 2 1 2 1 3 3 2 1 3   2 1 9 7 810 6 5 4 9   7 4 5 6 810 3 2 1 5   4 9 7 610 8 3 2 1 5
                                        4 7 9 6 810 2 3 1

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.11111
 Weight factors for state symmetry  2:    0.11111   0.11111   0.11111   0.11111   0.11111   0.11111   0.11111   0.11111
 
 Number of orbital rotations:  658  ( 18 closed/active, 400 closed/virtual, 0 active/active, 240 active/virtual )
 Total number of variables:    1398
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1    9   16    0   -213.52483907    -213.53082699   -0.00598792    0.05177856 0.00008018 0.00000000  0.13E+01      0.41
   2   10   18    0   -213.53092575    -213.53094554   -0.00001979    0.00178581 0.00000040 0.00000000  0.95E-01      0.89
   3    6   12    0   -213.53094553    -213.53094553   -0.00000000    0.00000109 0.00000001 0.00000000  0.14E-03      1.23

 CONVERGENCE REACHED!  Final gradient:    0.00000000 ( 0.30E-08)
                       Final energy:   -213.53094553
 
 Results for state 1.2 Quartet
 =============================
 !MCSCF STATE 1.2 Quartet Energy              -213.591843068352
 Nuclear energy                                  0.00000000
 Kinetic energy                                 68.98902055
 One electron energy                          -372.88083704
 Two electron energy                           159.28899398
 Virial ratio                                    4.09602661
 
 !MCSCF STATE 1.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.2 Doublet
 =============================
 !MCSCF STATE 1.2 Doublet Energy              -213.536655557072
 Nuclear energy                                  0.00000000
 Kinetic energy                                 68.92135377
 One electron energy                          -372.62645253
 Two electron energy                           159.08979697
 Virial ratio                                    4.09826554
 
 !MCSCF STATE 1.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.2 Doublet
 =============================
 !MCSCF STATE 2.2 Doublet Energy              -213.536655557072
 Nuclear energy                                  0.00000000
 Kinetic energy                                 68.92135377
 One electron energy                          -372.62645253
 Two electron energy                           159.08979697
 Virial ratio                                    4.09826554
 
 !MCSCF STATE 2.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.2 Doublet
 =============================
 !MCSCF STATE 3.2 Doublet Energy              -213.536655557036
 Nuclear energy                                  0.00000000
 Kinetic energy                                 68.92135377
 One electron energy                          -372.62645253
 Two electron energy                           159.08979697
 Virial ratio                                    4.09826554
 
 !MCSCF STATE 3.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.2 Doublet
 =============================
 !MCSCF STATE 4.2 Doublet Energy              -213.536655557027
 Nuclear energy                                  0.00000000
 Kinetic energy                                 68.92135377
 One electron energy                          -372.62645253
 Two electron energy                           159.08979697
 Virial ratio                                    4.09826554
 
 !MCSCF STATE 4.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.2 Doublet
 =============================
 !MCSCF STATE 5.2 Doublet Energy              -213.536655557017
 Nuclear energy                                  0.00000000
 Kinetic energy                                 68.92135377
 One electron energy                          -372.62645253
 Two electron energy                           159.08979697
 Virial ratio                                    4.09826554
 
 !MCSCF STATE 5.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.2 Doublet
 =============================
 !MCSCF STATE 6.2 Doublet Energy              -213.501129636115
 Nuclear energy                                  0.00000000
 Kinetic energy                                 68.88043942
 One electron energy                          -372.46361407
 Two electron energy                           158.96248444
 Virial ratio                                    4.09959012
 
 !MCSCF STATE 6.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.2 Doublet
 =============================
 !MCSCF STATE 7.2 Doublet Energy              -213.501129636030
 Nuclear energy                                  0.00000000
 Kinetic energy                                 68.88043942
 One electron energy                          -372.46361407
 Two electron energy                           158.96248444
 Virial ratio                                    4.09959012
 
 !MCSCF STATE 7.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.2 Doublet
 =============================
 !MCSCF STATE 8.2 Doublet Energy              -213.501129636010
 Nuclear energy                                  0.00000000
 Kinetic energy                                 68.88043942
 One electron energy                          -372.46361407
 Two electron energy                           158.96248444
 Virial ratio                                    4.09959012
 
 !MCSCF STATE 8.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 ? Warning
 ? Transition properties are only calculated between states of the same symmetry
 ? The problem occurs in mu_properties_expec2

 !MCSCF expec      <1.2 Quartet|LXLX|1.2 Quartet>    -0.000000000000
 !MCSCF expec      <1.2 Doublet|LXLX|1.2 Doublet>     1.313120829830
 !MCSCF expec      <2.2 Doublet|LXLX|2.2 Doublet>     1.000000017631
 !MCSCF expec      <3.2 Doublet|LXLX|3.2 Doublet>     3.999999063519
 !MCSCF expec      <4.2 Doublet|LXLX|4.2 Doublet>     1.000000971871
 !MCSCF expec      <5.2 Doublet|LXLX|5.2 Doublet>     2.686874046841
 !MCSCF expec      <6.2 Doublet|LXLX|6.2 Doublet>     1.000000000000
 !MCSCF expec      <7.2 Doublet|LXLX|7.2 Doublet>     0.000000000076
 !MCSCF expec      <8.2 Doublet|LXLX|8.2 Doublet>     0.999999999985
 
 !MCSCF expec      <1.2 Quartet|LYLY|1.2 Quartet>    -0.000000000000
 !MCSCF expec      <1.2 Doublet|LYLY|1.2 Doublet>     3.970138006486
 !MCSCF expec      <2.2 Doublet|LYLY|2.2 Doublet>     3.999999974114
 !MCSCF expec      <3.2 Doublet|LYLY|3.2 Doublet>     1.000000009749
 !MCSCF expec      <4.2 Doublet|LYLY|4.2 Doublet>     1.000000004921
 !MCSCF expec      <5.2 Doublet|LYLY|5.2 Doublet>     0.029862932677
 !MCSCF expec      <6.2 Doublet|LYLY|6.2 Doublet>     0.000000000353
 !MCSCF expec      <7.2 Doublet|LYLY|7.2 Doublet>     1.000000000000
 !MCSCF expec      <8.2 Doublet|LYLY|8.2 Doublet>     0.999999999722
 
 !MCSCF expec      <1.2 Quartet|LZLZ|1.2 Quartet>    -0.000000000000
 !MCSCF expec      <1.2 Doublet|LZLZ|1.2 Doublet>     0.716741163683
 !MCSCF expec      <2.2 Doublet|LZLZ|2.2 Doublet>     1.000000008255
 !MCSCF expec      <3.2 Doublet|LZLZ|3.2 Doublet>     1.000000926732
 !MCSCF expec      <4.2 Doublet|LZLZ|4.2 Doublet>     3.999999023207
 !MCSCF expec      <5.2 Doublet|LZLZ|5.2 Doublet>     3.283263020482
 !MCSCF expec      <6.2 Doublet|LZLZ|6.2 Doublet>     0.999999999647
 !MCSCF expec      <7.2 Doublet|LZLZ|7.2 Doublet>     0.999999999924
 !MCSCF expec      <8.2 Doublet|LZLZ|8.2 Doublet>     0.000000000293
 
 !MCSCF expec      <1.2 Quartet|L**2|1.2 Quartet>    -0.000000000000
 !MCSCF expec      <1.2 Doublet|L**2|1.2 Doublet>     6.000000000000
 !MCSCF expec      <2.2 Doublet|L**2|2.2 Doublet>     6.000000000000
 !MCSCF expec      <3.2 Doublet|L**2|3.2 Doublet>     6.000000000000
 !MCSCF expec      <4.2 Doublet|L**2|4.2 Doublet>     6.000000000000
 !MCSCF expec      <5.2 Doublet|L**2|5.2 Doublet>     6.000000000000
 !MCSCF expec      <6.2 Doublet|L**2|6.2 Doublet>     2.000000000000
 !MCSCF expec      <7.2 Doublet|L**2|7.2 Doublet>     2.000000000000
 !MCSCF expec      <8.2 Doublet|L**2|8.2 Doublet>     2.000000000000
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 3 5 4 2 6 1 1 4 2   3 5 6 1 6 3 5 4 2 1   4 6 2 3 513101415 9   812 711 5 3 4 2 6 1
                                        5 3 4 2 6 1 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 2 3 3 2 1 1 2 3 2   1 3 4 6 810 5 9 7 9   7 4 810 6 5 1 3 2 9   7 4 810 6 5 1 2 3 9
                                        7 4 810 6 5 1 2 3
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -6.69412     1  1  s    0.99974
    2.1     2.00000    -1.32240     1  1  d2-  1.00005
    3.1     2.00000    -1.32240     1  1  d2+  1.00005
    4.1     2.00000    -1.32240     1  1  d1+  1.00005
    5.1     2.00000    -1.32240     1  1  d0   1.00005
    6.1     2.00000    -1.32240     1  1  d1-  1.00005
    7.1     2.00000    -0.68796     1  2  s    1.00443
    1.2     2.00000    -4.27034     1  1  px   0.99990
    2.2     2.00000    -4.27034     1  1  py   0.99990
    3.2     2.00000    -4.27034     1  1  pz   0.99990
    4.2     0.99667    -0.14241     1  2  pz   0.93015
    5.2     0.99667    -0.14241     1  2  py   0.93015
    6.2     0.99667    -0.14241     1  2  px   0.93015
    7.2     0.00333     0.34575     1  2  px  -1.78335    1  4  px   1.85365    1  7  px   0.31283
    8.2     0.00333     0.34575     1  2  py  -1.78335    1  4  py   1.85365    1  7  py   0.31283
    9.2     0.00333     0.34575     1  2  pz  -1.78335    1  4  pz   1.85365    1  7  pz   0.31283
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 2 (Quartet)
 =======================================
 
 aaa000         0.99825879
 
 Energy:     -213.59184307
 
 
 CI Coefficients of symmetry 2 (Doublet)
 =======================================

 State:              1               2               3               4               5               6               7
 aba000        -0.07038713     -0.00000013      0.00000080      0.00000281      0.81158998     -0.00000000     -0.00000000
 baa000         0.73805111      0.00000005     -0.00000034     -0.00000119     -0.34483795      0.00000000      0.00000000
 2a0000        -0.00000000      0.70549591      0.00005305      0.00003834      0.00000011      0.70436462     -0.00000002
 0a2000        -0.00000000     -0.70549591     -0.00005305     -0.00003834     -0.00000011      0.70436462     -0.00000002
 a02000         0.00000000      0.00003837     -0.00039211     -0.70549580      0.00000244     -0.00001324     -0.00000612
 20a000         0.00000000     -0.00005303      0.70549580     -0.00039211     -0.00000069      0.00000002      0.70436462
 a20000        -0.00000000     -0.00003837      0.00039211      0.70549580     -0.00000244     -0.00001324     -0.00000612
 02a000        -0.00000000      0.00005303     -0.70549580      0.00039211      0.00000069      0.00000002      0.70436462
 aab000        -0.66766397      0.00000007     -0.00000046     -0.00000161     -0.46675204     -0.00000000     -0.00000000
 
 Energy:     -213.53665556   -213.53665556   -213.53665556   -213.53665556   -213.53665556   -213.50112964   -213.50112964

 State:              8
 aba000         0.00000000
 baa000        -0.00000000
 2a0000         0.00001324
 0a2000         0.00001324
 a02000         0.70436462
 20a000         0.00000612
 a20000         0.70436462
 02a000         0.00000612
 aab000         0.00000000
 
 Energy:     -213.50112964
 


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
 CPU TIMES  *         3.03      1.16      1.55
 REAL TIME  *         4.53 SEC
 DISK USED  *        36.88 MB (local),        1.13 GB (total)
 SF USED    *        19.02 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

         ENERGY     LL
    -213.5918431  -0.0
    -213.5366556   6.0
    -213.5366556   6.0
    -213.5366556   6.0
    -213.5366556   6.0
    -213.5366556   6.0
    -213.5011296   2.0
    -213.5011296   2.0
    -213.5011296   2.0
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 1  Roots:    1
 Number of reference states: 1  Roots:    1

 Reference symmetry:                   2   Quartet 
 Number of electrons:                 23
 Maximum number of shells:             4
 Maximum number of spin couplings:    48

 Reference space:       20 conf       20 CSFs
 N elec internal:     7100 conf    19340 CSFs
 N-1 el internal:     4640 conf    22565 CSFs
 N-2 el internal:     1256 conf    14006 CSFs

 Number of electrons in valence space:                     23
 Maximum number of open shell orbitals in reference space:  3
 Maximum number of open shell orbitals in internal spaces:  9


 Number of closed-shell orbitals:  10 (   7   3 )
 Number of active  orbitals:        6 (   0   6 )
 Number of external orbitals:      80 (  40  40 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Valence orbitals related to previous ones by unitary transformation. Operators transformed.


 Number of p-space configurations:  10

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -213.59184307

 Number of blocks in overlap matrix:   163   Smallest eigenvalue:  0.53D+00
 Number of N-2 electron functions:     226
 Number of N-1 electron functions:   22565

 Number of internal configurations:                10436
 Number of singly external configurations:        902600
 Number of doubly external configurations:        361760
 Total number of contracted configurations:      1274796
 Total number of uncontracted configurations:   23187596

 Diagonal Coupling coefficients finished.               Storage:   3418324 words, CPU-Time:      0.08 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:    597031 words, CPU-time:      0.03 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -213.59184307    -0.00000000    -0.81089336  0.58D-01  0.10D+00     0.44
    2     1     1     1.09309777    -0.62066855  -214.21251162    -0.62066855    -0.02024765  0.28D-02  0.17D-02     3.22
    3     1     1     1.08404689    -0.63916131  -214.23100438    -0.01849276    -0.00026839  0.31D-04  0.27D-04     6.03
    4     1     1     1.08390070    -0.63943020  -214.23127327    -0.00026889    -0.00000675  0.18D-05  0.46D-06     8.62
    5     1     1     1.08392805    -0.63943731  -214.23128038    -0.00000711    -0.00000022  0.40D-07  0.19D-07    11.18
    6     1     1     1.08393125    -0.63943754  -214.23128061    -0.00000023    -0.00000001  0.93D-09  0.59D-09    13.86


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   6.3%
 S   4.7%  21.3%
 P   1.6%  57.7%   3.2%

 Initialization:   1.4%
 Other:            3.8%

 Total CPU:       13.9 seconds
 =====================================



 Wavefunction saved on  5302.2

 Reference coefficients greater than 0.0500000
 =============================================
 2222222222///000           0.9575506


 RESULTS FOR STATE 1.2
 =====================

 Coefficient of reference function:   C(0) = 0.95953403 (fixed)   0.95966967 (relaxed)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00202256   -0.00581346   -0.00654323
 Singles      0.02265621   -0.09331935   -0.09926002
 Pairs        0.06144479   -0.54030474   -0.53363429
 Total        1.08612357   -0.63943755   -0.63943754
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.59184307
 Nuclear energy                         0.00000000
 Kinetic energy                        69.21168516
 One electron energy                 -372.41752571
 Two electron energy                  158.18624509
 Virial quotient                       -3.09530508
 Correlation energy                    -0.63943754
 !MRCI STATE 1.2 Energy              -214.231280611072

 Properties without orbital relaxation:

 !MRCI STATE 1.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.28635125 (Davidson, fixed reference)
 Cluster corrected energies          -214.28615494 (Davidson, relaxed reference)

 Cluster corrected energies          -214.28447083 (Pople, fixed reference)
 Cluster corrected energies          -214.28426755 (Pople, relaxed reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       36.28       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       5       10.77       700     1000      520     2140     5302   
                                         GEOM     BASIS   MCVARS    MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI       INT
 CPU TIMES  *        17.26     14.22      1.16      1.55
 REAL TIME  *        19.49 SEC
 DISK USED  *        47.13 MB (local),        1.41 GB (total)
 SF USED    *       150.02 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =      -214.28615494  AU                              


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 8  Roots:    1   2   3   4   5   6   7   8
 Number of reference states: 8  Roots:    1   2   3   4   5   6   7   8

 Reference symmetry:                   2   Doublet 
 Number of electrons:                 23
 Maximum number of shells:             5
 Maximum number of spin couplings:    42

 Reference space:       50 conf       70 CSFs
 N elec internal:     7880 conf    26950 CSFs
 N-1 el internal:     5471 conf    28036 CSFs
 N-2 el internal:     2966 conf    21832 CSFs

 Number of electrons in valence space:                     23
 Maximum number of open shell orbitals in reference space:  3
 Maximum number of open shell orbitals in internal spaces:  9


 Number of closed-shell orbitals:  10 (   7   3 )
 Number of active  orbitals:        6 (   0   6 )
 Number of external orbitals:      80 (  40  40 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Coulomb and exchange operators available. No transformation done.


 Number of p-space configurations:  35

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -213.53665556
     2      -213.53665556
     3      -213.53665556
     4      -213.53665556
     5      -213.53665556
     6      -213.50112964
     7      -213.50112964
     8      -213.50112964

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1563D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1409D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1710D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1281D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1563D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1409D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1710D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1281D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1563D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1409D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1710D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1281D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1563D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1409D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1710D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1281D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1563D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1409D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1710D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1281D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1563D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1409D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1710D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1281D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1563D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1409D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1710D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1281D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1563D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1409D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1710D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1281D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1563D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1409D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1710D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1281D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1563D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1409D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1710D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1281D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1563D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1409D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1710D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1281D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1563D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1409D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1710D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1281D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1563D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1409D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1710D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1281D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1563D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1409D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1710D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1281D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1563D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1409D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1710D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1281D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1563D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1409D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1710D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1281D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1563D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1409D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1710D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1281D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1563D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1409D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1710D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1281D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1563D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1409D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1710D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1281D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1563D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1409D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1710D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1281D-06

 Number of blocks in overlap matrix:   886   Smallest eigenvalue:  0.13D-06
 Number of N-2 electron functions:    1432
 Number of N-1 electron functions:   28036

 Number of internal configurations:                14896
 Number of singly external configurations:       1121440
 Number of doubly external configurations:       2294400
 Total number of contracted configurations:      3430736
 Total number of uncontracted configurations:   35952136

 Diagonal Coupling coefficients finished.               Storage:   7770309 words, CPU-Time:      2.12 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:    875089 words, CPU-time:      0.18 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -213.53665556     0.00000000    -0.81435797  0.64D-01  0.10D+00     4.84
    1     2     2     1.00000000     0.00000000  -213.53665556     0.00000000    -0.81318283  0.64D-01  0.10D+00     4.84
    1     3     3     1.00000000     0.00000000  -213.53665556     0.00000000    -0.81142400  0.64D-01  0.10D+00     4.84
    1     4     4     1.00000000     0.00000000  -213.53665556     0.00000000    -0.81186001  0.64D-01  0.10D+00     4.84
    1     5     5     1.00000000     0.00000000  -213.53665556     0.00000000    -0.81225842  0.64D-01  0.10D+00     4.84
    1     6     6     1.00000000     0.00000000  -213.50112964     0.00000000    -0.80982775  0.51D-01  0.11D+00     4.84
    1     7     7     1.00000000     0.00000000  -213.50112964     0.00000000    -0.80806254  0.51D-01  0.11D+00     4.84
    1     8     8     1.00000000     0.00000000  -213.50112964     0.00000000    -0.80806172  0.51D-01  0.11D+00     4.84
    2     1     1     1.09673620    -0.62857384  -214.16522939    -0.62857384    -0.01969609  0.30D-02  0.15D-02    43.94
    2     2     2     1.09695466    -0.62842629  -214.16508185    -0.62842629    -0.01985805  0.31D-02  0.15D-02    43.94
    2     3     3     1.09686270    -0.62836081  -214.16501636    -0.62836081    -0.02000011  0.30D-02  0.15D-02    43.94
    2     4     4     1.09701337    -0.62832781  -214.16498336    -0.62832781    -0.01997807  0.31D-02  0.15D-02    43.94
    2     5     5     1.09718179    -0.62808004  -214.16473560    -0.62808004    -0.02033422  0.31D-02  0.16D-02    43.94
    2     6     6     1.09325278    -0.63128727  -214.13241691    -0.63128727    -0.02014570  0.31D-02  0.15D-02    43.94
    2     7     7     1.09325143    -0.63125526  -214.13238490    -0.63125526    -0.02017988  0.31D-02  0.15D-02    43.94
    2     8     8     1.09340358    -0.63112121  -214.13225084    -0.63112121    -0.02040661  0.31D-02  0.16D-02    43.94
    3     1     1     1.08857080    -0.64665654  -214.18331210    -0.01808271    -0.00030682  0.39D-04  0.32D-04    82.12
    3     2     2     1.08858621    -0.64665595  -214.18331151    -0.01822966    -0.00030845  0.39D-04  0.33D-04    82.12
    3     3     3     1.08857234    -0.64665257  -214.18330813    -0.01829177    -0.00031045  0.40D-04  0.33D-04    82.12
    3     4     4     1.08859232    -0.64665257  -214.18330813    -0.01832476    -0.00031134  0.40D-04  0.33D-04    82.12
    3     5     5     1.08858936    -0.64665030  -214.18330586    -0.01857026    -0.00031343  0.40D-04  0.33D-04    82.12
    3     6     6     1.08658369    -0.64973793  -214.15086757    -0.01845066    -0.00031178  0.31D-04  0.37D-04    82.12
    3     7     7     1.08663009    -0.64973709  -214.15086673    -0.01848183    -0.00031370  0.31D-04  0.38D-04    82.12
    3     8     8     1.08657309    -0.64973605  -214.15086569    -0.01861484    -0.00031351  0.31D-04  0.38D-04    82.12
    4     1     1     1.08851937    -0.64696449  -214.18362005    -0.00030795    -0.00001022  0.23D-05  0.10D-05   120.20
    4     2     2     1.08852141    -0.64696447  -214.18362002    -0.00030852    -0.00001022  0.23D-05  0.10D-05   120.20
    4     3     3     1.08851490    -0.64696431  -214.18361986    -0.00031173    -0.00001030  0.22D-05  0.11D-05   120.20
    4     4     4     1.08851445    -0.64696416  -214.18361971    -0.00031159    -0.00001035  0.22D-05  0.11D-05   120.20
    4     5     5     1.08851400    -0.64696414  -214.18361970    -0.00031384    -0.00001043  0.22D-05  0.11D-05   120.20
    4     6     6     1.08684835    -0.65005032  -214.15117995    -0.00031238    -0.00000963  0.20D-05  0.11D-05   120.20
    4     7     7     1.08683732    -0.65005026  -214.15117990    -0.00031317    -0.00000956  0.19D-05  0.11D-05   120.20
    4     8     8     1.08683394    -0.65005013  -214.15117977    -0.00031408    -0.00000967  0.19D-05  0.12D-05   120.20
    5     1     1     1.08856180    -0.64697559  -214.18363115    -0.00001110    -0.00000043  0.62D-07  0.64D-07   158.04
    5     2     2     1.08856100    -0.64697559  -214.18363115    -0.00001112    -0.00000043  0.63D-07  0.65D-07   158.04
    5     3     3     1.08856272    -0.64697546  -214.18363102    -0.00001116    -0.00000042  0.62D-07  0.61D-07   158.04
    5     4     4     1.08856236    -0.64697546  -214.18363101    -0.00001130    -0.00000043  0.61D-07  0.63D-07   158.04
    5     5     5     1.08856199    -0.64697540  -214.18363096    -0.00001126    -0.00000042  0.61D-07  0.62D-07   158.04
    5     6     6     1.08698185    -0.65006082  -214.15119045    -0.00001050    -0.00000037  0.42D-07  0.66D-07   158.04
    5     7     7     1.08698152    -0.65006068  -214.15119031    -0.00001041    -0.00000035  0.39D-07  0.62D-07   158.04
    5     8     8     1.08698130    -0.65006067  -214.15119030    -0.00001054    -0.00000036  0.39D-07  0.65D-07   158.04
    6     1     1     1.08855494    -0.64697606  -214.18363161    -0.00000046    -0.00000002  0.21D-08  0.30D-08   195.67
    6     2     2     1.08855514    -0.64697606  -214.18363161    -0.00000046    -0.00000002  0.21D-08  0.31D-08   195.67
    6     3     3     1.08855530    -0.64697592  -214.18363147    -0.00000045    -0.00000002  0.21D-08  0.31D-08   195.67
    6     4     4     1.08855505    -0.64697591  -214.18363147    -0.00000046    -0.00000002  0.21D-08  0.31D-08   195.67
    6     5     5     1.08855503    -0.64697585  -214.18363141    -0.00000045    -0.00000002  0.21D-08  0.30D-08   195.67
    6     6     6     1.08699185    -0.65006122  -214.15119085    -0.00000040    -0.00000001  0.17D-08  0.27D-08   195.67
    6     7     7     1.08699167    -0.65006106  -214.15119069    -0.00000038    -0.00000001  0.15D-08  0.27D-08   195.67
    6     8     8     1.08699158    -0.65006106  -214.15119069    -0.00000039    -0.00000001  0.16D-08  0.28D-08   195.67


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   3.8%
 S   2.1%  12.0%
 P   0.6%  51.1%  10.9%

 Initialization:   1.3%
 Other:           18.2%

 Total CPU:      195.7 seconds
 =====================================



 Wavefunction saved on  5102.2

 Reference coefficients greater than 0.0500000
 =============================================
 2222222222//\000           0.8370213  -0.0000106   0.0000000   0.0000000  -0.4604561  -0.0000000  -0.0000000   0.0000000
 2222222222/\/000           0.4604564   0.0000193  -0.0000001  -0.0000000   0.8370207  -0.0000000   0.0000000  -0.0000000
 22222222222/0000           0.0000000  -0.6755093  -0.0000000   0.0000000   0.0000156   0.6742406   0.0000009   0.0000277
 22222222220/2000          -0.0000000   0.6755086  -0.0000000  -0.0000000  -0.0000156   0.6742409   0.0000009   0.0000277
 2222222222/02000          -0.0000000   0.0000000  -0.0012766   0.6755082   0.0000000  -0.0000278   0.0223322   0.6738701
 222222222220/000          -0.0000000   0.0000000  -0.6755076  -0.0012766  -0.0000001   0.0000000   0.6738705  -0.0223322
 222222222202/000           0.0000000   0.0000000   0.6755071   0.0012766   0.0000001   0.0000000   0.6738706  -0.0223322
 2222222222/20000          -0.0000000  -0.0000000   0.0012766  -0.6755067   0.0000000  -0.0000278   0.0223322   0.6738711

  Internal coefficients greater than 0.0500000
 =============================================
 22222202222/2000          -0.0000000   0.0000001   0.0000000   0.0000000  -0.0000000  -0.0511928  -0.0000001  -0.0000021
 2222220222/22000           0.0000000   0.0000000   0.0000000  -0.0000000   0.0000000   0.0000021  -0.0016956  -0.0511647
 222222022222/000          -0.0000000  -0.0000000   0.0000000   0.0000000   0.0000000  -0.0000000  -0.0511646   0.0016956

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.951532   -0.000000    0.000000   -0.000000   -0.104204    0.000000    0.000000   -0.000000
 2           0.000002    0.957220    0.000000    0.000000    0.000022   -0.000000    0.000000    0.000000
 3          -0.000000    0.000000    0.957219   -0.001809   -0.000000   -0.000000   -0.000000   -0.000000
 4          -0.000000   -0.000000    0.001809    0.957219   -0.000000    0.000000   -0.000000    0.000001
 5           0.104204   -0.000022    0.000000    0.000000    0.951532    0.000000   -0.000000    0.000000
 6          -0.000000    0.000000    0.000000    0.000000    0.000000    0.956595    0.000000   -0.000039
 7          -0.000000   -0.000000    0.000000   -0.000000    0.000000    0.000001    0.956071    0.031684
 8           0.000000   -0.000000   -0.000000   -0.000001   -0.000000    0.000039   -0.031684    0.956071

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.957221    0.000000   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.000000
 2           0.000000    0.957220   -0.000000    0.000000    0.000000   -0.000000   -0.000000   -0.000000
 3          -0.000000   -0.000000    0.957220   -0.000000    0.000000   -0.000000   -0.000000    0.000000
 4          -0.000000    0.000000   -0.000000    0.957221   -0.000000   -0.000000   -0.000000   -0.000000
 5          -0.000000    0.000000    0.000000   -0.000000    0.957221    0.000000   -0.000000   -0.000000
 6          -0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.956595    0.000000    0.000000
 7          -0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.956596    0.000000
 8           0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.000000    0.000000    0.956596


 RESULTS FOR STATE 1.2
 =====================

 Coefficient of reference function:   C(0) = 0.95153176 (fixed)   0.95735187 (relaxed)   0.95722059 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00259512   -0.00713790   -0.50381600
 Singles      0.02603783   -0.09880039   -0.10596688
 Pairs        0.06274693    0.00000000   -0.03719317
 Total        1.09137987   -0.10593829   -0.64697606
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.53665556
 Nuclear energy                         0.00000000
 Kinetic energy                        69.17982897
 One electron energy                 -372.22004479
 Two electron energy                  158.03641317
 Virial quotient                       -3.09604165
 Correlation energy                    -0.64697606
 !MRCI STATE 1.2 Energy              -214.183631613093

 Properties without orbital relaxation:

 !MRCI STATE 1.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.24275220 (Davidson, fixed reference)
 Cluster corrected energies          -214.24255855 (Davidson, relaxed reference)
 Cluster corrected energies          -214.24275220 (Davidson, rotated reference)

 Cluster corrected energies          -214.24167390 (Pople, fixed reference)
 Cluster corrected energies          -214.24146880 (Pople, relaxed reference)
 Cluster corrected energies          -214.24167390 (Pople, rotated reference)



 RESULTS FOR STATE 2.2
 =====================

 Coefficient of reference function:   C(0) = 0.95722048 (fixed)   0.95735179 (relaxed)   0.95722048 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00259516   -0.00713790   -0.50381574
 Singles      0.02603812   -0.09880058   -0.10596702
 Pairs        0.06274683   -0.00000000   -0.03719330
 Total        1.09138011   -0.10593848   -0.64697606
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.53665556
 Nuclear energy                         0.00000000
 Kinetic energy                        69.17981840
 One electron energy                 -372.22004417
 Two electron energy                  158.03641256
 Virial quotient                       -3.09604212
 Correlation energy                    -0.64697606
 !MRCI STATE 2.2 Energy              -214.183631612937

 Properties without orbital relaxation:

 !MRCI STATE 2.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.24275236 (Davidson, fixed reference)
 Cluster corrected energies          -214.24255868 (Davidson, relaxed reference)
 Cluster corrected energies          -214.24275236 (Davidson, rotated reference)

 Cluster corrected energies          -214.24167406 (Pople, fixed reference)
 Cluster corrected energies          -214.24146893 (Pople, relaxed reference)
 Cluster corrected energies          -214.24167406 (Pople, rotated reference)



 RESULTS FOR STATE 3.2
 =====================

 Coefficient of reference function:   C(0) = 0.95721870 (fixed)   0.95735171 (relaxed)   0.95722041 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00259516   -0.00713790   -0.50381601
 Singles      0.02603809   -0.09880007   -0.10596675
 Pairs        0.06274702    0.00000000   -0.03719316
 Total        1.09138027   -0.10593797   -0.64697592
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.53665556
 Nuclear energy                         0.00000000
 Kinetic energy                        69.17982692
 One electron energy                 -372.22005850
 Two electron energy                  158.03642703
 Virial quotient                       -3.09604174
 Correlation energy                    -0.64697592
 !MRCI STATE 3.2 Energy              -214.183631472254

 Properties without orbital relaxation:

 !MRCI STATE 3.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.24275231 (Davidson, fixed reference)
 Cluster corrected energies          -214.24255863 (Davidson, relaxed reference)
 Cluster corrected energies          -214.24275231 (Davidson, rotated reference)

 Cluster corrected energies          -214.24167402 (Pople, fixed reference)
 Cluster corrected energies          -214.24146889 (Pople, relaxed reference)
 Cluster corrected energies          -214.24167402 (Pople, rotated reference)



 RESULTS FOR STATE 4.2
 =====================

 Coefficient of reference function:   C(0) = 0.95721881 (fixed)   0.95735182 (relaxed)   0.95722052 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00259516   -0.00713791   -0.50381584
 Singles      0.02603789   -0.09879996   -0.10596665
 Pairs        0.06274698   -0.00000041   -0.03719342
 Total        1.09138002   -0.10593828   -0.64697591
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.53665556
 Nuclear energy                         0.00000000
 Kinetic energy                        69.17982578
 One electron energy                 -372.22005610
 Two electron energy                  158.03642463
 Virial quotient                       -3.09604179
 Correlation energy                    -0.64697591
 !MRCI STATE 4.2 Energy              -214.183631470128

 Properties without orbital relaxation:

 !MRCI STATE 4.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.24275214 (Davidson, fixed reference)
 Cluster corrected energies          -214.24255847 (Davidson, relaxed reference)
 Cluster corrected energies          -214.24275214 (Davidson, rotated reference)

 Cluster corrected energies          -214.24167384 (Pople, fixed reference)
 Cluster corrected energies          -214.24146872 (Pople, relaxed reference)
 Cluster corrected energies          -214.24167384 (Pople, rotated reference)



 RESULTS FOR STATE 5.2
 =====================

 Coefficient of reference function:   C(0) = 0.95153173 (fixed)   0.95735183 (relaxed)   0.95722055 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00259511   -0.00713790   -0.50381637
 Singles      0.02603775   -0.09879974   -0.10596653
 Pairs        0.06274709   -0.00000000   -0.03719295
 Total        1.09137995   -0.10593764   -0.64697585
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.53665556
 Nuclear energy                         0.00000000
 Kinetic energy                        69.17984109
 One electron energy                 -372.22006567
 Two electron energy                  158.03643426
 Virial quotient                       -3.09604110
 Correlation energy                    -0.64697585
 !MRCI STATE 5.2 Energy              -214.183631409392

 Properties without orbital relaxation:

 !MRCI STATE 5.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.24275203 (Davidson, fixed reference)
 Cluster corrected energies          -214.24255839 (Davidson, relaxed reference)
 Cluster corrected energies          -214.24275203 (Davidson, rotated reference)

 Cluster corrected energies          -214.24167373 (Pople, fixed reference)
 Cluster corrected energies          -214.24146864 (Pople, relaxed reference)
 Cluster corrected energies          -214.24167373 (Pople, rotated reference)



 RESULTS FOR STATE 6.2
 =====================

 Coefficient of reference function:   C(0) = 0.95659549 (fixed)   0.95671150 (relaxed)   0.95659550 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00534946   -0.01188280   -0.51514992
 Singles      0.02084939   -0.09060197   -0.09531338
 Pairs        0.06660782    0.00002255   -0.03959792
 Total        1.09280667   -0.10246223   -0.65006122
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.50112964
 Nuclear energy                         0.00000000
 Kinetic energy                        69.16046275
 One electron energy                 -372.08624299
 Two electron energy                  157.93505213
 Virial quotient                       -3.09643953
 Correlation energy                    -0.65006122
 !MRCI STATE 6.2 Energy              -214.151190854804

 Properties without orbital relaxation:

 !MRCI STATE 6.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.21152087 (Davidson, fixed reference)
 Cluster corrected energies          -214.21134861 (Davidson, relaxed reference)
 Cluster corrected energies          -214.21152087 (Davidson, rotated reference)

 Cluster corrected energies          -214.21049371 (Pople, fixed reference)
 Cluster corrected energies          -214.21031081 (Pople, relaxed reference)
 Cluster corrected energies          -214.21049371 (Pople, rotated reference)



 RESULTS FOR STATE 7.2
 =====================

 Coefficient of reference function:   C(0) = 0.95607071 (fixed)   0.95671158 (relaxed)   0.95659558 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00534944   -0.01188278   -0.49853302
 Singles      0.02084923   -0.09060158   -0.09531317
 Pairs        0.06660780   -0.01813683   -0.05621487
 Total        1.09280647   -0.12062119   -0.65006106
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.50112964
 Nuclear energy                         0.00000000
 Kinetic energy                        69.16047816
 One electron energy                 -372.08626689
 Two electron energy                  157.93507620
 Virial quotient                       -3.09643884
 Correlation energy                    -0.65006106
 !MRCI STATE 7.2 Energy              -214.151190694532

 Properties without orbital relaxation:

 !MRCI STATE 7.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.21152057 (Davidson, fixed reference)
 Cluster corrected energies          -214.21134831 (Davidson, relaxed reference)
 Cluster corrected energies          -214.21152057 (Davidson, rotated reference)

 Cluster corrected energies          -214.21049340 (Pople, fixed reference)
 Cluster corrected energies          -214.21031050 (Pople, relaxed reference)
 Cluster corrected energies          -214.21049340 (Pople, rotated reference)



 RESULTS FOR STATE 8.2
 =====================

 Coefficient of reference function:   C(0) = 0.95607075 (fixed)   0.95671162 (relaxed)   0.95659562 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00534946   -0.01188280   -0.01433074
 Singles      0.02084922   -0.09060150   -0.09531314
 Pairs        0.06660772   -0.54727631   -0.54041718
 Total        1.09280640   -0.64976061   -0.65006106
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.50112964
 Nuclear energy                         0.00000000
 Kinetic energy                        69.16047365
 One electron energy                 -372.08626191
 Two electron energy                  157.93507122
 Virial quotient                       -3.09643904
 Correlation energy                    -0.65006106
 !MRCI STATE 8.2 Energy              -214.151190694442

 Properties without orbital relaxation:

 !MRCI STATE 8.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.21152052 (Davidson, fixed reference)
 Cluster corrected energies          -214.21134826 (Davidson, relaxed reference)
 Cluster corrected energies          -214.21152052 (Davidson, rotated reference)

 Cluster corrected energies          -214.21049334 (Pople, fixed reference)
 Cluster corrected energies          -214.21031045 (Pople, relaxed reference)
 Cluster corrected energies          -214.21049334 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       36.28       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       6      225.47       700     1000      520     2140     5302     5102   
                                         GEOM     BASIS   MCVARS    MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI       INT
 CPU TIMES  *       269.59    252.31     14.22      1.16      1.55
 REAL TIME  *       294.58 SEC
 DISK USED  *       261.83 MB (local),        7.28 GB (total)
 SF USED    *         2.25 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(2)     =      -214.24275220  AU                              
 SETTING HLSDIAG(3)     =      -214.24275236  AU                              
 SETTING HLSDIAG(4)     =      -214.24275231  AU                              
 SETTING HLSDIAG(5)     =      -214.24275214  AU                              
 SETTING HLSDIAG(6)     =      -214.24275203  AU                              
 SETTING HLSDIAG(7)     =      -214.21152087  AU                              
 SETTING HLSDIAG(8)     =      -214.21152057  AU                              
 SETTING HLSDIAG(9)     =      -214.21152052  AU                              


         HLSDIAG
    -214.2861549
    -214.2427522
    -214.2427524
    -214.2427523
    -214.2427521
    -214.2427520
    -214.2115209
    -214.2115206
    -214.2115205
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Diagonal elements of H will be replaced by values from variable HLSDIAG


   ******************************
   *** Spin-orbit calculation ***
   ******************************


   Spin-orbit matrix elements
   ==========================

 Wavefunction restored from record  5302.2  Symmetry=2  S= 1.5  NSTATE=   1

 Original energies:   -214.231281
 Replaced energies:   -214.286155

 Wavefunction restored from record  5102.2  Symmetry=2  S= 0.5  NSTATE=   8

 Original energies:   -214.183632   -214.183632   -214.183631   -214.183631   -214.183631   -214.151191   -214.151191   -214.151191
 Replaced energies:   -214.242752   -214.242752   -214.242752   -214.242752   -214.242752   -214.211521   -214.211521   -214.211521



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=  -214.28615494

 Wigner-Eckart theorem used for 23 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.2  1.5  1.5       0.00       0.00       0.00       0.00      -0.00       0.01       0.00       0.00      -0.00   -6140.56
                            0.00       0.00       0.00       0.00      -0.00      -0.00       0.00       0.00      -0.00      -0.00

    2   1.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00      -0.00       0.00      -0.00       0.01       0.00      -0.29

    3   1.2  1.5 -0.5       0.00       0.00       0.00       0.00      -0.00       0.00       0.00       0.00      -0.00   -3545.26
                           -0.00      -0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00       0.00

    4   1.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    5   1.2  0.5  0.5      -0.00       0.00      -0.00       0.00    9525.80       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.00       0.00      -0.00      -0.10      53.12       0.00      -0.18

    6   2.2  0.5  0.5       0.01       0.00       0.00       0.00       0.00    9525.77       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00       0.00      -0.00      51.30       0.09       0.00      -0.00

    7   3.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00    9525.78       0.00       0.00       0.00
                           -0.00       0.00       0.00      -0.00       0.10     -51.30      -0.00       0.00      -0.16    4390.48

    8   4.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00    9525.81       0.00       0.00
                           -0.00      -0.01       0.00      -0.00     -53.12      -0.09      -0.00       0.00      87.77       8.30

    9   5.2  0.5  0.5      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00    9525.84       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.16     -87.77      -0.00      -0.11

   10   6.2  0.5  0.5   -6140.56       0.00   -3545.26       0.00       0.00       0.00       0.00       0.00       0.00   16380.28
                            0.00       0.29      -0.00      -0.00       0.18       0.00   -4390.48      -8.30       0.11       0.00

   11   7.2  0.5  0.5      -0.01       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         6137.19    -234.85   -3543.31      -0.00    -143.66    4388.08      -0.01      -0.00     -87.05    -208.66

   12   8.2  0.5  0.5      -0.25       0.00      -0.15       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -203.39   -7086.62     117.43      -0.00   -4334.79    -145.48      -0.18      -0.00   -2623.61       6.92

   13   1.2  0.5 -0.5       0.00      -0.00       0.00      -0.00       0.00    -102.57      -0.00       0.00       0.00    -104.77
                           -0.00       0.00       0.00      -0.00       0.00      -0.00      49.45       0.09       0.00      -0.00

   14   2.2  0.5 -0.5       0.00       0.00       0.00       0.01     102.57       0.00      -0.00       0.00       2.12       0.12
                           -0.00       0.00      -0.00      -0.00       0.00      -0.00       0.10     -51.30      -0.00       0.18

   15   3.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      51.30       0.00       0.18
                           -0.00      -0.00       0.00       0.00     -49.45      -0.10       0.00       0.00     -89.89      -8.30

   16   4.2  0.5 -0.5       0.00       0.00       0.00       0.00      -0.00      -0.00     -51.30      -0.00      -0.00       0.00
                           -0.00      -0.00      -0.01       0.00      -0.09      51.30      -0.00       0.00      -0.17    4390.48

   17   5.2  0.5 -0.5       0.00      -0.00       0.00      -0.00      -0.00      -2.12      -0.00       0.00       0.00    5068.63
                           -0.00       0.00      -0.00      -0.00      -0.00       0.00      89.89       0.17      -0.00       0.00

   18   6.2  0.5 -0.5       0.00   -3545.26       0.00   -6140.56     104.77      -0.12      -0.18      -0.00   -5068.63       0.00
                           -0.00       0.00       0.29      -0.00       0.00      -0.18       8.30   -4390.48      -0.00       0.00

   19   7.2  0.5 -0.5       0.00      -0.00       0.00      -0.01       0.00       0.00     137.13    4388.36      -0.01       0.01
                           -0.00    3543.31    -234.85   -6137.19    4439.50     145.37       0.00      -0.01   -2442.24       6.92

   20   8.2  0.5 -0.5       0.00      -0.15       0.00      -0.25       0.00      -0.00    4388.36    -137.13      -0.21      -0.00
                           -0.00    -117.43   -7086.62     203.39    -147.13    4388.08       0.00      -0.18      80.84     208.66


   Nr   State  S   Sz       11         12         13         14         15         16         17         18         19         20

    1   1.2  1.5  1.5      -0.01      -0.25       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                        -6137.19     203.39       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    2   1.2  1.5  0.5       0.00       0.00      -0.00       0.00       0.00       0.00      -0.00   -3545.26      -0.00      -0.15
                          234.85    7086.62      -0.00      -0.00       0.00       0.00      -0.00      -0.00   -3543.31     117.43

    3   1.2  1.5 -0.5      -0.00      -0.15       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         3543.31    -117.43      -0.00       0.00      -0.00       0.01       0.00      -0.29     234.85    7086.62

    4   1.2  1.5 -1.5       0.00       0.00      -0.00       0.01       0.00       0.00      -0.00   -6140.56      -0.01      -0.25
                            0.00       0.00       0.00       0.00      -0.00      -0.00       0.00       0.00    6137.19    -203.39

    5   1.2  0.5  0.5       0.00       0.00       0.00     102.57       0.00      -0.00      -0.00     104.77       0.00       0.00
                          143.66    4334.79      -0.00      -0.00      49.45       0.09       0.00      -0.00   -4439.50     147.13

    6   2.2  0.5  0.5       0.00       0.00    -102.57       0.00       0.00      -0.00      -2.12      -0.12       0.00      -0.00
                        -4388.08     145.48       0.00       0.00       0.10     -51.30      -0.00       0.18    -145.37   -4388.08

    7   3.2  0.5  0.5       0.00       0.00      -0.00      -0.00      -0.00     -51.30      -0.00      -0.18     137.13    4388.36
                            0.01       0.18     -49.45      -0.10      -0.00       0.00     -89.89      -8.30      -0.00      -0.00

    8   4.2  0.5  0.5       0.00       0.00       0.00       0.00      51.30      -0.00       0.00      -0.00    4388.36    -137.13
                            0.00       0.00      -0.09      51.30      -0.00      -0.00      -0.17    4390.48       0.01       0.18

    9   5.2  0.5  0.5       0.00       0.00       0.00       2.12       0.00      -0.00       0.00   -5068.63      -0.01      -0.21
                           87.05    2623.61      -0.00       0.00      89.89       0.17       0.00       0.00    2442.24     -80.84

   10   6.2  0.5  0.5       0.00       0.00    -104.77       0.12       0.18       0.00    5068.63       0.00       0.01      -0.00
                          208.66      -6.92       0.00      -0.18       8.30   -4390.48      -0.00      -0.00      -6.92    -208.66

   11   7.2  0.5  0.5   16380.35       0.00      -0.00      -0.00    -137.13   -4388.36       0.01      -0.01      -0.00     208.79
                            0.00      -0.01    4439.50     145.37       0.00      -0.01   -2442.24       6.92      -0.00       0.00

   12   8.2  0.5  0.5       0.00   16380.36      -0.00       0.00   -4388.36     137.13       0.21       0.00    -208.79       0.00
                            0.01       0.00    -147.13    4388.08       0.00      -0.18      80.84     208.66      -0.00      -0.00

   13   1.2  0.5 -0.5      -0.00      -0.00    9525.80       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                        -4439.50     147.13      -0.00       0.00       0.10     -53.12      -0.00       0.18    -143.66   -4334.79

   14   2.2  0.5 -0.5      -0.00       0.00       0.00    9525.77       0.00       0.00       0.00       0.00       0.00       0.00
                         -145.37   -4388.08      -0.00       0.00     -51.30      -0.09      -0.00       0.00    4388.08    -145.48

   15   3.2  0.5 -0.5    -137.13   -4388.36       0.00       0.00    9525.78       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.10      51.30       0.00      -0.00       0.16   -4390.48      -0.01      -0.18

   16   4.2  0.5 -0.5   -4388.36     137.13       0.00       0.00       0.00    9525.81       0.00       0.00       0.00       0.00
                            0.01       0.18      53.12       0.09       0.00      -0.00     -87.77      -8.30      -0.00      -0.00

   17   5.2  0.5 -0.5       0.01       0.21       0.00       0.00       0.00       0.00    9525.84       0.00       0.00       0.00
                         2442.24     -80.84       0.00       0.00      -0.16      87.77       0.00       0.11     -87.05   -2623.61

   18   6.2  0.5 -0.5      -0.01       0.00       0.00       0.00       0.00       0.00       0.00   16380.28       0.00       0.00
                           -6.92    -208.66      -0.18      -0.00    4390.48       8.30      -0.11      -0.00    -208.66       6.92

   19   7.2  0.5 -0.5      -0.00    -208.79       0.00       0.00       0.00       0.00       0.00       0.00   16380.35       0.00
                            0.00       0.00     143.66   -4388.08       0.01       0.00      87.05     208.66      -0.00       0.01

   20   8.2  0.5 -0.5     208.79       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   16380.36
                           -0.00       0.00    4334.79     145.48       0.18       0.00    2623.61      -6.92      -0.01      -0.00


 No symmetry adaption


 Spin-orbit eigenstates   (energies)
 ======================

     Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
              (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1  -214.30914097    -0.02298604    -5044.85      0.00000000        0.00      0.0000
     2  -214.30914097    -0.02298604    -5044.85      0.00000000        0.00      0.0000
     3  -214.30914091    -0.02298598    -5044.84      0.00000006        0.01      0.0000
     4  -214.30914091    -0.02298598    -5044.84      0.00000006        0.01      0.0000
     5  -214.26113747     0.02501746     5490.70      0.04800350    10535.55      1.3062
     6  -214.26113747     0.02501746     5490.70      0.04800350    10535.55      1.3062
     7  -214.26113744     0.02501750     5490.71      0.04800354    10535.56      1.3062
     8  -214.26113744     0.02501750     5490.71      0.04800354    10535.56      1.3062
     9  -214.24228484     0.04387010     9628.37      0.06685614    14673.23      1.8192
    10  -214.24228484     0.04387010     9628.37      0.06685614    14673.23      1.8192
    11  -214.24228476     0.04387018     9628.39      0.06685622    14673.24      1.8193
    12  -214.24228476     0.04387018     9628.39      0.06685622    14673.24      1.8193
    13  -214.24228462     0.04387032     9628.42      0.06685636    14673.27      1.8193
    14  -214.24228462     0.04387032     9628.42      0.06685636    14673.27      1.8193
    15  -214.21342323     0.07273171    15962.76      0.09571774    21007.62      2.6046
    16  -214.21342323     0.07273171    15962.76      0.09571774    21007.62      2.6046
    17  -214.16989940     0.11625554    25515.14      0.13924158    30559.99      3.7890
    18  -214.16989940     0.11625554    25515.14      0.13924158    30559.99      3.7890
    19  -214.16989923     0.11625570    25515.18      0.13924174    30560.03      3.7890
    20  -214.16989923     0.11625570    25515.18      0.13924174    30560.03      3.7890


 Eigenvectors of spin-orbit matrix
 =================================

  Basis states          Eigenvectors (columnwise)

   Nr   State  S   Sz        1             2             3             4             5             6             7             8

    1    1.2  1.5  1.5   0.621472212  -0.001971673  -0.060390916  -0.528653311  -0.002318500   0.139702153   0.482701309   0.012441983
                         0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000

    2    1.2  1.5  0.5  -0.001951418   0.498355641   0.616558334  -0.074585501   0.296788838   0.003797838   0.002300414  -0.076585593
                        -0.000419759  -0.186436558   0.022785056  -0.002400981   0.380813540   0.006213964  -0.002979928   0.116800299

    3    1.2  1.5 -0.5   0.532087337   0.001680622   0.074623314   0.616979203  -0.007235868   0.482806967  -0.139669835  -0.003753402
                        -0.000003994  -0.001076912   0.000350180  -0.000040682   0.000824094   0.000012273  -0.000007057   0.000289561

    4    1.2  1.5 -1.5   0.001846673   0.582072323  -0.528293979   0.060349867   0.085874253   0.001425171  -0.006822877   0.264701499
                        -0.000690863  -0.217760237  -0.019488344   0.002226259   0.110192124   0.001828751   0.010404388  -0.403650430

    5    1.2  0.5  0.5  -0.000656932   0.031263687   0.200413176  -0.023783144  -0.211848657  -0.002540031  -0.005564103   0.204909762
                        -0.000000348  -0.011695207   0.007401796  -0.000802336  -0.271822687  -0.004419423   0.008027941  -0.312483538

    6    2.2  0.5  0.5  -0.037546645  -0.000606455  -0.023724911  -0.199820426  -0.005171261   0.352279319  -0.366478652  -0.009584900
                         0.000000861   0.000231715  -0.000075904   0.000008819   0.000715098   0.000010639  -0.000006353   0.000260273

    7    3.2  0.5  0.5  -0.000000539  -0.000130397   0.000085094  -0.000009868  -0.000511223  -0.000007255   0.000026071  -0.001025269
                        -0.193037058   0.000157739  -0.008864236  -0.067523654  -0.007675253   0.493585307   0.121792882   0.002498626

    8    4.2  0.5  0.5  -0.000172854  -0.054483665  -0.004875820   0.000556991  -0.111460908  -0.001849805  -0.010524027   0.408291916
                        -0.000826856  -0.145633682   0.132162310  -0.015227141   0.086847776   0.002374380  -0.006671190   0.267751235

    9    5.2  0.5  0.5   0.000143332   0.189153281  -0.033203452   0.003259684  -0.229751296  -0.003230459   0.004707739  -0.188946223
                        -0.000202277  -0.070763959  -0.001219594   0.000165467  -0.294801984  -0.004836959  -0.007442636   0.288122764

   10    6.2  0.5  0.5   0.381481450  -0.000414984  -0.007108997  -0.070835250   0.002896219  -0.187082858  -0.179756653  -0.004596270
                        -0.000000910  -0.000265139   0.000071008  -0.000008188  -0.000206412  -0.000003088   0.000001873  -0.000076374

   11    7.2  0.5  0.5   0.000008058   0.003184314  -0.000440983   0.000047268   0.006724200   0.000109167  -0.000053018   0.002071881
                        -0.129056312   0.009037362   0.052168547   0.362114031  -0.004244111  -0.062196337   0.251683200   0.007837434

   12    8.2  0.5  0.5   0.000214663   0.088375160  -0.010799191   0.001134992   0.196479454   0.003198382  -0.001544872   0.060262036
                         0.003350827   0.236214504   0.290882263  -0.047397893  -0.153160132   0.000099491  -0.009529054   0.039299039

   13    1.2  0.5 -0.5  -0.033379574  -0.000615162  -0.023796556  -0.200549813  -0.005047230   0.344626503  -0.373676294  -0.009764440
                         0.000000855   0.000230511  -0.000074954   0.000008708   0.000713111   0.000010620  -0.000006107   0.000250557

   14    2.2  0.5 -0.5   0.000649198  -0.035166577  -0.199684280   0.023711583   0.216552822   0.002614705   0.005473771  -0.200962547
                         0.000004527   0.013155319  -0.007375019   0.000798745   0.277858946   0.004518476  -0.007872476   0.306464773

   15    3.2  0.5 -0.5   0.000177401   0.067638554  -0.002499062   0.000241737   0.389318199   0.006368215   0.002651664  -0.101832847
                         0.000102048   0.180799148   0.067477393  -0.008861348  -0.303410275  -0.004314707   0.000512822  -0.066810016

   16    4.2  0.5 -0.5   0.000000335   0.000127830  -0.000004723   0.000000457   0.000735760   0.000012035   0.000005011  -0.000192452
                        -0.155491605   0.000835003   0.015237324   0.132252221  -0.002918581   0.141301345   0.488255070   0.012458847

   17    5.2  0.5 -0.5  -0.201956683   0.000205122   0.003263568   0.033225842  -0.005800970   0.373756429   0.344551015   0.008805381
                         0.000000517   0.000139231  -0.000045189   0.000005251   0.000425184   0.000006323  -0.000003515   0.000144595

   18    6.2  0.5 -0.5   0.000295771   0.357296734  -0.070787404   0.007101547  -0.115001384  -0.001617482   0.002456615  -0.098575684
                        -0.000393738  -0.133668022  -0.002603098   0.000333027  -0.147562453  -0.002411316  -0.003885431   0.150317294

   19    7.2  0.5 -0.5   0.000184203   0.045228126   0.013396255  -0.001482465  -0.048991170  -0.000785729   0.005417747  -0.210494697
                         0.009580179   0.120871620  -0.361866155   0.052149343   0.038317901  -0.007912647   0.006030429  -0.137972528

   20    8.2  0.5 -0.5  -0.000004197  -0.000973057  -0.000613062   0.000068729   0.002044506   0.000032312  -0.000183089   0.007121333
                         0.252205196  -0.003213609   0.047407517   0.291082650   0.002461614  -0.249122863   0.071943686   0.006517370


   Nr   State  S   Sz        9            10            11            12            13            14            15            16

    1    1.2  1.5  1.5   0.000001803   0.000000207  -0.000000154  -0.000001308   0.000000997   0.000000310  -0.000000000  -0.000000888
                        -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000

    2    1.2  1.5  0.5   0.000000090  -0.000000806   0.000000601  -0.000000069   0.000000445  -0.000001418   0.000000266  -0.000000010
                         0.000000017  -0.000000146  -0.000000120   0.000000014   0.000000100  -0.000000323  -0.000000633  -0.000000000

    3    1.2  1.5 -0.5  -0.000000819  -0.000000091  -0.000000071  -0.000000613   0.000001454   0.000000456  -0.000000004  -0.000000686
                        -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000001   0.000000009  -0.000000000

    4    1.2  1.5 -1.5  -0.000000203   0.000001774   0.000001283  -0.000000151   0.000000302  -0.000000972   0.000000344   0.000000000
                        -0.000000037   0.000000322  -0.000000257   0.000000030   0.000000069  -0.000000221  -0.000000818  -0.000000000

    5    1.2  0.5  0.5  -0.052515753   0.462424773  -0.584251602   0.070918451   0.037148575  -0.117430423  -0.000000062  -0.000000013
                        -0.009612848   0.083988584   0.117193732  -0.013831133   0.008327042  -0.026757723   0.000000148  -0.000000000

    6    2.2  0.5  0.5   0.760702403   0.086340704   0.009660643   0.080372612  -0.081622173  -0.025689471   0.000000006   0.000000370
                         0.000017784  -0.000155262  -0.000052701   0.000006148   0.000021425  -0.000068724  -0.000000014   0.000000000

    7    3.2  0.5  0.5  -0.000001831   0.000016663   0.000150325  -0.000017798  -0.000036488   0.000117267   0.000000011  -0.000000000
                        -0.353070673  -0.040665043   0.076983065   0.644713539  -0.217812912  -0.068268993   0.000000005   0.000000905

    8    4.2  0.5  0.5   0.004774889  -0.041528521   0.077811337  -0.009193348   0.040950230  -0.131699783  -0.000000530  -0.000000000
                        -0.026386105   0.228613730   0.387998288  -0.046439200  -0.181530511   0.578341613  -0.000000223  -0.000000003

    9    5.2  0.5  0.5   0.010898813  -0.093304226  -0.223596495   0.026238486  -0.212830862   0.682919492   0.000000457  -0.000000005
                         0.001946367  -0.016951950   0.044827838  -0.005304610  -0.048320399   0.155417261  -0.000001087  -0.000000000

   10    6.2  0.5  0.5  -0.000000693  -0.000000081   0.000000142   0.000001205  -0.000001425  -0.000000446   0.001062715   0.577345788
                         0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000001  -0.002426596  -0.000000536

   11    7.2  0.5  0.5   0.000000001  -0.000000005  -0.000000007   0.000000001   0.000000002  -0.000000006   0.020044597  -0.000000658
                         0.000001136   0.000000161  -0.000000092  -0.000000481   0.000000060   0.000000048   0.008494446   0.576939188

   12    8.2  0.5  0.5   0.000000019  -0.000000167  -0.000000214   0.000000025   0.000000061  -0.000000195   0.531858623  -0.000039329
                        -0.000000141   0.000000916  -0.000001064   0.000000143  -0.000000271   0.000000855   0.223572183  -0.021770102

   13    1.2  0.5 -0.5  -0.469990163  -0.053388256  -0.072253593  -0.595889506  -0.120440352  -0.038070215   0.000000005  -0.000000161
                        -0.000008231   0.000072461   0.000381077  -0.000045071   0.000037784  -0.000122258  -0.000000012   0.000000000

   14    2.2  0.5 -0.5  -0.084922867   0.748458242  -0.078802897   0.009482472  -0.025064500   0.079583278  -0.000000143   0.000000015
                        -0.015583580   0.135935301   0.015806969  -0.001847572  -0.005632452   0.018129576   0.000000341  -0.000000000

   15    3.2  0.5 -0.5   0.007251266  -0.063102622   0.126765605  -0.014987177  -0.015031805   0.048359523   0.000000834  -0.000000000
                        -0.040013312   0.347385894   0.632128175  -0.075510261   0.066593649  -0.212376606   0.000000351  -0.000000012

   16    4.2  0.5 -0.5   0.000002045  -0.000017714  -0.000115829   0.000013873  -0.000106840   0.000344644  -0.000000002  -0.000000000
                         0.232355021   0.026814656  -0.047340295  -0.395723737  -0.593147404  -0.186091722  -0.000000001   0.000000575

   17    5.2  0.5 -0.5   0.094831678   0.011071197  -0.026769296  -0.228045889   0.700381008   0.218247168   0.000000002   0.000001179
                        -0.000003684   0.000032806  -0.000042705   0.000005191  -0.000031608   0.000102443  -0.000000005   0.000000000

   18    6.2  0.5 -0.5   0.000000080  -0.000000682  -0.000001181   0.000000139  -0.000000435   0.000001390  -0.223731907   0.002648809
                         0.000000014  -0.000000124   0.000000237  -0.000000028  -0.000000098   0.000000316   0.532233212  -0.000039329

   19    7.2  0.5 -0.5  -0.000000023   0.000000204  -0.000000095   0.000000011   0.000000005  -0.000000015   0.531858846  -0.000063086
                         0.000000159  -0.000001117  -0.000000472   0.000000092  -0.000000048   0.000000058   0.223573243  -0.021770105

   20    8.2  0.5 -0.5   0.000000001  -0.000000007   0.000000004  -0.000000000  -0.000000000   0.000000001  -0.020053800   0.000001548
                         0.000000932   0.000000142   0.000000145   0.000001085  -0.000000877  -0.000000277  -0.008472544  -0.576938572


   Nr   State  S   Sz       17            18            19            20

    1    1.2  1.5  1.5  -0.244788854  -0.047559139   0.125567033  -0.004365516
                        -0.000000000   0.000000000   0.000000000   0.000000000

    2    1.2  1.5  0.5   0.025012686  -0.122540951  -0.006282518  -0.248255022
                        -0.002285047   0.011790987   0.000798490   0.022643123

    3    1.2  1.5 -0.5  -0.123106912  -0.025116575  -0.249285512   0.006329083
                        -0.000022616   0.000116519   0.000007842   0.000224336

    4    1.2  1.5 -1.5   0.047341331  -0.243667784   0.004347457   0.125047607
                        -0.004546443   0.023400728  -0.000396666  -0.011409449

    5    1.2  0.5  0.5  -0.003519526   0.024109667  -0.008617853  -0.313184026
                         0.000451170  -0.002293415   0.001004089   0.028567562

    6    2.2  0.5  0.5  -0.017832400  -0.002298909   0.314921840  -0.008661435
                         0.000022002  -0.000113356  -0.000007673  -0.000219501

    7    3.2  0.5  0.5  -0.000012430   0.000064089   0.000008522   0.000243926
                         0.258899463   0.050933609   0.173029917  -0.003460394

    8    4.2  0.5  0.5  -0.005137916   0.026445068  -0.000448252  -0.012893260
                        -0.053010709   0.275462983  -0.004586014  -0.141321773

    9    5.2  0.5  0.5   0.060406303  -0.307283405   0.000519647  -0.024370577
                        -0.005732581   0.029523385   0.000083759   0.002219007

   10    6.2  0.5  0.5   0.656235723   0.128934141   0.038140160   0.001475786
                         0.000029595  -0.000151870  -0.000010022  -0.000293612

   11    7.2  0.5  0.5  -0.000207794   0.001076771   0.000072901   0.002068157
                        -0.362695439  -0.058906659   0.560086487   0.003073893

   12    8.2  0.5  0.5  -0.005450925   0.028271788   0.001915784   0.054282191
                        -0.048018693   0.296089872  -0.003481346   0.595788829

   13    1.2  0.5 -0.5  -0.024218492  -0.003546538   0.314484244  -0.008673439
                         0.000021866  -0.000112653  -0.000007582  -0.000216887

   14    2.2  0.5 -0.5   0.002277544  -0.017752836   0.008605661   0.313619821
                        -0.000332602   0.001682797  -0.001005600  -0.028607232

   15    3.2  0.5 -0.5   0.004805231  -0.024762012  -0.000557340  -0.015713602
                         0.050706473  -0.257712582  -0.003423915  -0.172314930

   16    4.2  0.5 -0.5   0.000009081  -0.000046798  -0.000001053  -0.000029697
                         0.276729465   0.053259096  -0.141908702   0.004607773

   17    5.2  0.5 -0.5   0.308698431   0.060677667   0.024471391   0.000509887
                         0.000013247  -0.000068247  -0.000004566  -0.000130630

   18    6.2  0.5 -0.5  -0.128358174   0.653227503  -0.001496360   0.037983299
                         0.012174357  -0.062762681  -0.000158303  -0.003455565

   19    7.2  0.5 -0.5  -0.006703055   0.034465231  -0.001780297  -0.050818771
                        -0.058533948   0.361054252   0.003249097  -0.557776237

   20    8.2  0.5 -0.5   0.000162566  -0.000835588   0.000077762   0.002224186
                         0.297436515   0.048319865   0.598256532   0.003292870


 Composition of spin-orbit eigenvectors
 ======================================

   Nr   State  S   Sz       1        2        3        4        5        6        7        8        9       10

    1    1.2  1.5  1.5  38.623%   0.000%   0.365%  27.947%   0.001%   1.952%  23.300%   0.015%   0.000%   0.000%
    2    1.2  1.5  0.5   0.000%  28.312%  38.066%   0.557%  23.310%   0.005%   0.001%   1.951%   0.000%   0.000%
    3    1.2  1.5 -0.5  28.312%   0.000%   0.557%  38.066%   0.005%  23.310%   1.951%   0.001%   0.000%   0.000%
    4    1.2  1.5 -1.5   0.000%  38.623%  27.947%   0.365%   1.952%   0.001%   0.015%  23.300%   0.000%   0.000%
    5    1.2  0.5  0.5   0.000%   0.111%   4.022%   0.057%  11.877%   0.003%   0.010%  13.963%   0.285%  22.089%
    6    2.2  0.5  0.5   0.141%   0.000%   0.056%   3.993%   0.003%  12.410%  13.431%   0.009%  57.867%   0.745%
    7    3.2  0.5  0.5   3.726%   0.000%   0.008%   0.456%   0.006%  24.363%   1.483%   0.001%  12.466%   0.165%
    8    4.2  0.5  0.5   0.000%   2.418%   1.749%   0.023%   1.997%   0.001%   0.016%  23.839%   0.072%   5.399%
    9    5.2  0.5  0.5   0.000%   4.079%   0.110%   0.001%  13.969%   0.003%   0.008%  11.872%   0.012%   0.899%
   10    6.2  0.5  0.5  14.553%   0.000%   0.005%   0.502%   0.001%   3.500%   3.231%   0.002%   0.000%   0.000%
   11    7.2  0.5  0.5   1.666%   0.009%   0.272%  13.113%   0.006%   0.387%   6.334%   0.007%   0.000%   0.000%
   12    8.2  0.5  0.5   0.001%   6.361%   8.473%   0.225%   6.206%   0.001%   0.009%   0.518%   0.000%   0.000%
   13    1.2  0.5 -0.5   0.111%   0.000%   0.057%   4.022%   0.003%  11.877%  13.963%   0.010%  22.089%   0.285%
   14    2.2  0.5 -0.5   0.000%   0.141%   3.993%   0.056%  12.410%   0.003%   0.009%  13.431%   0.745%  57.867%
   15    3.2  0.5 -0.5   0.000%   3.726%   0.456%   0.008%  24.363%   0.006%   0.001%   1.483%   0.165%  12.466%
   16    4.2  0.5 -0.5   2.418%   0.000%   0.023%   1.749%   0.001%   1.997%  23.839%   0.016%   5.399%   0.072%
   17    5.2  0.5 -0.5   4.079%   0.000%   0.001%   0.110%   0.003%  13.969%  11.872%   0.008%   0.899%   0.012%
   18    6.2  0.5 -0.5   0.000%  14.553%   0.502%   0.005%   3.500%   0.001%   0.002%   3.231%   0.000%   0.000%
   19    7.2  0.5 -0.5   0.009%   1.666%  13.113%   0.272%   0.387%   0.006%   0.007%   6.334%   0.000%   0.000%
   20    8.2  0.5 -0.5   6.361%   0.001%   0.225%   8.473%   0.001%   6.206%   0.518%   0.009%   0.000%   0.000%

   Nr   State  S   Sz      11       12       13       14       15       16       17       18       19       20

    1    1.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   5.992%   0.226%   1.577%   0.002%
    2    1.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.063%   1.516%   0.004%   6.214%
    3    1.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   1.516%   0.063%   6.214%   0.004%
    4    1.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.226%   5.992%   0.002%   1.577%
    5    1.2  0.5  0.5  35.508%   0.522%   0.145%   1.451%   0.000%   0.000%   0.001%   0.059%   0.008%   9.890%
    6    2.2  0.5  0.5   0.009%   0.646%   0.666%   0.066%   0.000%   0.000%   0.032%   0.001%   9.918%   0.008%
    7    3.2  0.5  0.5   0.593%  41.566%   4.744%   0.466%   0.000%   0.000%   6.703%   0.259%   2.994%   0.001%
    8    4.2  0.5  0.5  15.660%   0.224%   3.463%  35.182%   0.000%   0.000%   0.284%   7.658%   0.002%   2.014%
    9    5.2  0.5  0.5   5.200%   0.072%   4.763%  49.053%   0.000%   0.000%   0.368%   9.529%   0.000%   0.060%
   10    6.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.001%  33.333%  43.065%   1.662%   0.145%   0.000%
   11    7.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.047%  33.286%  13.155%   0.347%  31.370%   0.001%
   12    8.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%  33.286%   0.047%   0.234%   8.847%   0.002%  35.791%
   13    1.2  0.5 -0.5   0.522%  35.508%   1.451%   0.145%   0.000%   0.000%   0.059%   0.001%   9.890%   0.008%
   14    2.2  0.5 -0.5   0.646%   0.009%   0.066%   0.666%   0.000%   0.000%   0.001%   0.032%   0.008%   9.918%
   15    3.2  0.5 -0.5  41.566%   0.593%   0.466%   4.744%   0.000%   0.000%   0.259%   6.703%   0.001%   2.994%
   16    4.2  0.5 -0.5   0.224%  15.660%  35.182%   3.463%   0.000%   0.000%   7.658%   0.284%   2.014%   0.002%
   17    5.2  0.5 -0.5   0.072%   5.200%  49.053%   4.763%   0.000%   0.000%   9.529%   0.368%   0.060%   0.000%
   18    6.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%  33.333%   0.001%   1.662%  43.065%   0.000%   0.145%
   19    7.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%  33.286%   0.047%   0.347%  13.155%   0.001%  31.370%
   20    8.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.047%  33.286%   8.847%   0.234%  35.791%   0.002%


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

              2       6      225.47       700     1000      520     2140     5302     5102   
                                         GEOM     BASIS   MCVARS    MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI        CI     MULTI       INT
 CPU TIMES  *      3773.70   3504.10    252.31     14.22      1.16      1.55
 REAL TIME  *      3843.02 SEC
 DISK USED  *       261.83 MB (local),        7.28 GB (total)
 SF USED    *         2.25 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCVTZ-PP energy=   -214.169899234002

              CI              CI           MULTI
   -214.15119069   -214.23128061   -213.50112964
 **********************************************************************************************************************************
 Molpro calculation terminated with 1 warning(s)
