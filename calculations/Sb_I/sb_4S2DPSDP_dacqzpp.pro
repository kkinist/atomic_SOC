
 Working directory              : /wrk/irikura/molpro.SrvizJNrCY/
 Global scratch directory       : /wrk/irikura/molpro.SrvizJNrCY/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.SrvizJNrCY/

 id        : nistki

 Nodes            nprocs
 pn125343.nist.gov   32
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1042), CPU time= 0.02 sec
 ***,Sb SO-CI
 memory,1500,M;
 
 gprint,orbitals,civector;
 
 symmetry,xyz
 geometry={Sb};
 
 basis={
 ecp,sb,ECP28MDF;
 spdfgh,sb,aug-cc-pwCVQZ-PP;C; spdf,1,even,nprim=1,ratio=3.0;
 }
 
 PAR=2                                                                           ! parity even (1) or odd (2)
 NQ=1
 ND=17
 
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
 Commands initialized (847), CPU time= 0.02 sec, 718 directives.
 Default parameters read. Elapsed time= 0.17 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2024.1 linked Mon Jun 17 07:53:25 2024


 **********************************************************************************************************************************
 LABEL *   Sb SO-CI                                                                                                                                                      
  (64 PROC) 64 bit mpp version                                                           DATE: 27-Nov-24          TIME: 12:43:28  
 **********************************************************************************************************************************

 SHA1:             0134236b472f03f1f5189f93707d8671e415b05c
 **********************************************************************************************************************************

 Memory per process:      1500 MW
 Total memory per node:  48000 MW

 GA preallocation disabled
 GA check disabled

 Variable memory set to 1500.0 MW


 ZSYMEL=XYZ

 SETTING BASIS          =    USERDEF
 SETTING PAR            =         2.00000000                                  
 SETTING NQ             =         1.00000000                                  
 SETTING ND             =        17.00000000                                  


 Recomputing integrals since basis changed


 Using spherical harmonics

 Library entry Sb   ECP ECP28MDF                 selected for group  1
 Library entry SB     S AUG-CC-PWCVQZ-PP     selected for orbital group  1
 Even tempered Sb S diffuse               selected for group 1    nprim= 1    centre=  0.009    ratio= 3.000    dratio= 1.000
 Library entry SB     P AUG-CC-PWCVQZ-PP     selected for orbital group  1
 Even tempered Sb P diffuse               selected for group 1    nprim= 1    centre=  0.006    ratio= 3.000    dratio= 1.000
 Library entry SB     D AUG-CC-PWCVQZ-PP     selected for orbital group  1
 Even tempered Sb D diffuse               selected for group 1    nprim= 1    centre=  0.013    ratio= 3.000    dratio= 1.000
 Library entry SB     F AUG-CC-PWCVQZ-PP     selected for orbital group  1
 Even tempered Sb F diffuse               selected for group 1    nprim= 1    centre=  0.028    ratio= 3.000    dratio= 1.000
 Library entry SB     G AUG-CC-PWCVQZ-PP     selected for orbital group  1
 Library entry SB     H AUG-CC-PWCVQZ-PP     selected for orbital group  1


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
 NUMBER OF PRIMITIVE AOS:         320
 NUMBER OF SYMMETRY AOS:          248
 NUMBER OF CONTRACTIONS:          185   (   92Ag  +   93Au  )
 NUMBER OF INNER CORE ORBITALS:     0   (    0Ag  +    0Au  )
 NUMBER OF OUTER CORE ORBITALS:     9   (    6Ag  +    3Au  )
 NUMBER OF VALENCE ORBITALS:        4   (    1Ag  +    3Au  )


 LX: Ag           LY: Ag           LZ: Ag 


 NUCLEAR REPULSION ENERGY    0.00000000

 EXTRA SYMMETRY OF AOS IN SYMMETRY 1:   1 1 1 1 1 1 1 1 1 1   1 2 3 4 5 6 2 3 4 5   6 2 3 4 5 6 2 3 4 5   6 2 3 4 5 6 2 3 4 5
                                        6 2 3 4 5 6 2 3 4 5   6 2 3 4 5 6 7 8 910  1112131415 7 8 91011  12131415 7 8 9101112
                                       131415 7 8 910111213  1415
 EXTRA SYMMETRY OF AOS IN SYMMETRY 2:   1 2 3 1 2 3 1 2 3 1   2 3 1 2 3 1 2 3 1 2   3 1 2 3 1 2 3 1 2 3   1 2 3 4 5 6 7 8 910
                                        4 5 6 7 8 910 4 5 6   7 8 910 4 5 6 7 8 9  10 4 5 6 7 8 910 4 5   6 7 8 910 4 5 6 7 8
                                        9101112131415161718  192021


 Eigenvalues of metric

         1 0.512E-04 0.512E-04 0.512E-04 0.512E-04 0.512E-04 0.558E-04 0.833E-03 0.438E-02
         2 0.152E-03 0.152E-03 0.152E-03 0.213E-02 0.213E-02 0.213E-02 0.103E-01 0.103E-01


 Contracted 2-electron integrals neglected if value below      1.0D-11
 AO integral compression algorithm  1   Integral accuracy      1.0D-11

     141.033 MB (compressed) written to integral file ( 13.1%)

     Node minimum: 1.311 MB, node maximum: 8.389 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:    2328688.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:    2328688      RECORD LENGTH: 524288

 Memory used in sort:       2.89 MW

 SORT1 READ   134353782. AND WROTE      426577. INTEGRALS IN      2 RECORDS. CPU TIME:     1.04 SEC, REAL TIME:     1.08 SEC
 SORT2 READ    13878186. AND WROTE    74805201. INTEGRALS IN    608 RECORDS. CPU TIME:     0.07 SEC, REAL TIME:     0.08 SEC

 Node minimum:     2326267.  Node maximum:     2346671. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      19       29.52       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         4.77      4.47
 REAL TIME  *         6.36 SEC
 DISK USED  *        29.89 MB (local),        1.26 GB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of closed-shell orbitals:   9 (    6    3)
 Number of active  orbitals:        7 (    1    6)
 Number of external orbitals:     169 (   85   84)

 State symmetry 1

 Number of active electrons:   5    Spin symmetry=Quartet   Space symmetry=2
 Number of states:             1
 Number of CSFs:             104   (110 determinants, 245 intermediate states)

 State symmetry 2

 Number of active electrons:   5    Spin symmetry=Doublet   Space symmetry=2
 Number of states:            17
 Number of CSFs:             280   (390 determinants, 735 intermediate states)

 Orbital guess generated from atomic densities.
 *** IN SYMMETRY 1 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.552D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.609D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.379D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.465D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.719D-02 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 2 5 3 6 4 1 1 6 4   3 5 2 1 2 4 6 3 5 1   4 6 5 3 2 4 6 5 3 2  1415 7 9111310 812 1
                                        4 6 2 5 31415 7 911   8121310 11415 7 911  1310 812 4 6 2 5 3 1   2 5 3 6 4 715141310
                                        812 911 1 5 3 2 6 4   1 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.981D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.981D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.186D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.159D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.208D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.359D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.269D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  9 SYMMETRY CONTAMINATION OF 0.300D-02 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   2 1 3 3 1 2 3 2 1 3   2 110 8 6 4 5 9 7 1   2 3 810 6 9 7 5 4 1   2 310 8 6 4 5 9 7 8
                                       10 6 4 5 7 9 1 2 3 8  10 6 4 5 9 7 2 1 319  16141112211318201517   6 810 9 7 4 5 2 1 3
                                       10 8 7 9 6 4 5 1 2 3   1 2 3

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.05556
 Weight factors for state symmetry  2:    0.05556   0.05556   0.05556   0.05556   0.05556   0.05556   0.05556   0.05556
                                          0.05556   0.05556   0.05556   0.05556   0.05556   0.05556   0.05556   0.05556
                                          0.05556
 
 Number of orbital rotations:  1375  ( 24 closed/active, 762 closed/virtual, 0 active/active, 589 active/virtual )
 Total number of variables:    8115
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1   12   20    0   -239.09334040    -239.12147512   -0.02813472    0.12871318 0.00052248 0.00000000  0.10E+01      2.79
   2    7   12    0   -239.11950920    -239.12153620   -0.00202701    0.11160331 0.00020752 0.00000000  0.23E+00      4.91
   3    5   10    0   -239.12154391    -239.12154409   -0.00000018    0.00060256 0.00000001 0.00000000  0.30E-02      6.69
   4    3    6    0   -239.12154409    -239.12154409   -0.00000000    0.00000008 0.00000001 0.00000000  0.27E-06      8.14

 CONVERGENCE REACHED!  Final gradient:    0.00000001 ( 0.60E-08)
                       Final energy:   -239.12154409
 
 Results for state 1.2 Quartet
 =============================
 !MCSCF STATE 1.2 Quartet Energy              -239.274130130179
 Nuclear energy                                  0.00000000
 Kinetic energy                                 92.54637788
 One electron energy                          -420.24083929
 Two electron energy                           180.96670916
 Virial ratio                                    3.58545105
 
 !MCSCF STATE 1.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.2 Doublet
 =============================
 !MCSCF STATE 1.2 Doublet Energy              -239.213825368542
 Nuclear energy                                  0.00000000
 Kinetic energy                                 92.50819707
 One electron energy                          -420.04196490
 Two electron energy                           180.82813954
 Virial ratio                                    3.58586626
 
 !MCSCF STATE 1.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.2 Doublet
 =============================
 !MCSCF STATE 2.2 Doublet Energy              -239.213825368529
 Nuclear energy                                  0.00000000
 Kinetic energy                                 92.50819707
 One electron energy                          -420.04196491
 Two electron energy                           180.82813954
 Virial ratio                                    3.58586626
 
 !MCSCF STATE 2.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.2 Doublet
 =============================
 !MCSCF STATE 3.2 Doublet Energy              -239.213825368499
 Nuclear energy                                  0.00000000
 Kinetic energy                                 92.50819707
 One electron energy                          -420.04196491
 Two electron energy                           180.82813954
 Virial ratio                                    3.58586626
 
 !MCSCF STATE 3.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.2 Doublet
 =============================
 !MCSCF STATE 4.2 Doublet Energy              -239.213825368497
 Nuclear energy                                  0.00000000
 Kinetic energy                                 92.50819707
 One electron energy                          -420.04196493
 Two electron energy                           180.82813956
 Virial ratio                                    3.58586626
 
 !MCSCF STATE 4.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.2 Doublet
 =============================
 !MCSCF STATE 5.2 Doublet Energy              -239.213825368492
 Nuclear energy                                  0.00000000
 Kinetic energy                                 92.50819707
 One electron energy                          -420.04196494
 Two electron energy                           180.82813957
 Virial ratio                                    3.58586626
 
 !MCSCF STATE 5.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.2 Doublet
 =============================
 !MCSCF STATE 6.2 Doublet Energy              -239.190650902476
 Nuclear energy                                  0.00000000
 Kinetic energy                                 92.48325409
 One electron energy                          -419.85366836
 Two electron energy                           180.66301745
 Virial ratio                                    3.58631309
 
 !MCSCF STATE 6.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.2 Doublet
 =============================
 !MCSCF STATE 7.2 Doublet Energy              -239.190650902439
 Nuclear energy                                  0.00000000
 Kinetic energy                                 92.48325409
 One electron energy                          -419.85366836
 Two electron energy                           180.66301745
 Virial ratio                                    3.58631309
 
 !MCSCF STATE 7.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.2 Doublet
 =============================
 !MCSCF STATE 8.2 Doublet Energy              -239.190650902310
 Nuclear energy                                  0.00000000
 Kinetic energy                                 92.48325409
 One electron energy                          -419.85366840
 Two electron energy                           180.66301750
 Virial ratio                                    3.58631309
 
 !MCSCF STATE 8.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 9.2 Doublet
 =============================
 !MCSCF STATE 9.2 Doublet Energy              -239.043550212749
 Nuclear energy                                  0.00000000
 Kinetic energy                                 91.89432109
 One electron energy                          -414.33120707
 Two electron energy                           175.28765686
 Virial ratio                                    3.60128752
 
 !MCSCF STATE 9.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 10.2 Doublet
 ==============================
 !MCSCF STATE 10.2 Doublet Energy             -239.030766441484
 Nuclear energy                                  0.00000000
 Kinetic energy                                 91.94441761
 One electron energy                          -414.57416350
 Two electron energy                           175.54339706
 Virial ratio                                    3.59973115
 
 !MCSCF STATE 10.2 Doublet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 11.2 Doublet
 ==============================
 !MCSCF STATE 11.2 Doublet Energy             -239.030766441475
 Nuclear energy                                  0.00000000
 Kinetic energy                                 91.94441761
 One electron energy                          -414.57416350
 Two electron energy                           175.54339706
 Virial ratio                                    3.59973115
 
 !MCSCF STATE 11.2 Doublet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 12.2 Doublet
 ==============================
 !MCSCF STATE 12.2 Doublet Energy             -239.030766439680
 Nuclear energy                                  0.00000000
 Kinetic energy                                 91.94441763
 One electron energy                          -414.57416367
 Two electron energy                           175.54339723
 Virial ratio                                    3.59973115
 
 !MCSCF STATE 12.2 Doublet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 13.2 Doublet
 ==============================
 !MCSCF STATE 13.2 Doublet Energy             -239.030766439591
 Nuclear energy                                  0.00000000
 Kinetic energy                                 91.94441763
 One electron energy                          -414.57416367
 Two electron energy                           175.54339723
 Virial ratio                                    3.59973115
 
 !MCSCF STATE 13.2 Doublet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 14.2 Doublet
 ==============================
 !MCSCF STATE 14.2 Doublet Energy             -239.030766439029
 Nuclear energy                                  0.00000000
 Kinetic energy                                 91.94441764
 One electron energy                          -414.57416373
 Two electron energy                           175.54339729
 Virial ratio                                    3.59973115
 
 !MCSCF STATE 14.2 Doublet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 15.2 Doublet
 ==============================
 !MCSCF STATE 15.2 Doublet Energy             -239.025067180848
 Nuclear energy                                  0.00000000
 Kinetic energy                                 91.95870284
 One electron energy                          -414.64668915
 Two electron energy                           175.62162197
 Virial ratio                                    3.59926532
 
 !MCSCF STATE 15.2 Doublet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 16.2 Doublet
 ==============================
 !MCSCF STATE 16.2 Doublet Energy             -239.025067178306
 Nuclear energy                                  0.00000000
 Kinetic energy                                 91.95870286
 One electron energy                          -414.64668933
 Two electron energy                           175.62162215
 Virial ratio                                    3.59926532
 
 !MCSCF STATE 16.2 Doublet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 17.2 Doublet
 ==============================
 !MCSCF STATE 17.2 Doublet Energy             -239.025067178203
 Nuclear energy                                  0.00000000
 Kinetic energy                                 91.95870286
 One electron energy                          -414.64668933
 Two electron energy                           175.62162215
 Virial ratio                                    3.59926532
 
 !MCSCF STATE 17.2 Doublet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 ? Warning
 ? Transition properties are only calculated between states of the same symmetry
 ? The problem occurs in mu_properties_expec2

 !MCSCF expec      <1.2 Quartet|LXLX|1.2 Quartet>    -0.000000000000
 !MCSCF expec      <1.2 Doublet|LXLX|1.2 Doublet>     3.968015839034
 !MCSCF expec      <2.2 Doublet|LXLX|2.2 Doublet>     4.000000000000
 !MCSCF expec      <3.2 Doublet|LXLX|3.2 Doublet>     0.999998008472
 !MCSCF expec      <4.2 Doublet|LXLX|4.2 Doublet>     0.031991286128
 !MCSCF expec      <5.2 Doublet|LXLX|5.2 Doublet>     0.999994301026
 !MCSCF expec      <6.2 Doublet|LXLX|6.2 Doublet>    -0.000000000000
 !MCSCF expec      <7.2 Doublet|LXLX|7.2 Doublet>     0.999999999998
 !MCSCF expec      <8.2 Doublet|LXLX|8.2 Doublet>     1.000000000000
 !MCSCF expec      <9.2 Doublet|LXLX|9.2 Doublet>     0.000000000000
 !MCSCF expec    <10.2 Doublet|LXLX|10.2 Doublet>     1.073078723466
 !MCSCF expec    <11.2 Doublet|LXLX|11.2 Doublet>     1.000000049916
 !MCSCF expec    <12.2 Doublet|LXLX|12.2 Doublet>     3.999999999999
 !MCSCF expec    <13.2 Doublet|LXLX|13.2 Doublet>     1.000000000811
 !MCSCF expec    <14.2 Doublet|LXLX|14.2 Doublet>     2.926921468766
 !MCSCF expec    <15.2 Doublet|LXLX|15.2 Doublet>     1.000000000000
 !MCSCF expec    <16.2 Doublet|LXLX|16.2 Doublet>     0.000000000000
 !MCSCF expec    <17.2 Doublet|LXLX|17.2 Doublet>     1.000000000000
 
 !MCSCF expec      <1.2 Quartet|LYLY|1.2 Quartet>    -0.000000000000
 !MCSCF expec      <1.2 Doublet|LYLY|1.2 Doublet>     0.707471184969
 !MCSCF expec      <2.2 Doublet|LYLY|2.2 Doublet>     1.000000000000
 !MCSCF expec      <3.2 Doublet|LYLY|3.2 Doublet>     1.000004870529
 !MCSCF expec      <4.2 Doublet|LYLY|4.2 Doublet>     3.292539052530
 !MCSCF expec      <5.2 Doublet|LYLY|5.2 Doublet>     3.999995739904
 !MCSCF expec      <6.2 Doublet|LYLY|6.2 Doublet>     1.000000000000
 !MCSCF expec      <7.2 Doublet|LYLY|7.2 Doublet>     0.999999999633
 !MCSCF expec      <8.2 Doublet|LYLY|8.2 Doublet>     0.000000000258
 !MCSCF expec      <9.2 Doublet|LYLY|9.2 Doublet>    -0.000000000000
 !MCSCF expec    <10.2 Doublet|LYLY|10.2 Doublet>     3.998261180845
 !MCSCF expec    <11.2 Doublet|LYLY|11.2 Doublet>     3.999999998891
 !MCSCF expec    <12.2 Doublet|LYLY|12.2 Doublet>     1.000000000000
 !MCSCF expec    <13.2 Doublet|LYLY|13.2 Doublet>     0.999999999550
 !MCSCF expec    <14.2 Doublet|LYLY|14.2 Doublet>     0.001738808893
 !MCSCF expec    <15.2 Doublet|LYLY|15.2 Doublet>    -0.000000000000
 !MCSCF expec    <16.2 Doublet|LYLY|16.2 Doublet>     1.000000000000
 !MCSCF expec    <17.2 Doublet|LYLY|17.2 Doublet>     1.000000000000
 
 !MCSCF expec      <1.2 Quartet|LZLZ|1.2 Quartet>    -0.000000000000
 !MCSCF expec      <1.2 Doublet|LZLZ|1.2 Doublet>     1.324512975997
 !MCSCF expec      <2.2 Doublet|LZLZ|2.2 Doublet>     1.000000000000
 !MCSCF expec      <3.2 Doublet|LZLZ|3.2 Doublet>     3.999997120999
 !MCSCF expec      <4.2 Doublet|LZLZ|4.2 Doublet>     2.675469661342
 !MCSCF expec      <5.2 Doublet|LZLZ|5.2 Doublet>     1.000009959069
 !MCSCF expec      <6.2 Doublet|LZLZ|6.2 Doublet>     1.000000000000
 !MCSCF expec      <7.2 Doublet|LZLZ|7.2 Doublet>     0.000000000369
 !MCSCF expec      <8.2 Doublet|LZLZ|8.2 Doublet>     0.999999999742
 !MCSCF expec      <9.2 Doublet|LZLZ|9.2 Doublet>     0.000000000000
 !MCSCF expec    <10.2 Doublet|LZLZ|10.2 Doublet>     0.928660095689
 !MCSCF expec    <11.2 Doublet|LZLZ|11.2 Doublet>     0.999999951193
 !MCSCF expec    <12.2 Doublet|LZLZ|12.2 Doublet>     1.000000000001
 !MCSCF expec    <13.2 Doublet|LZLZ|13.2 Doublet>     3.999999999639
 !MCSCF expec    <14.2 Doublet|LZLZ|14.2 Doublet>     3.071339722342
 !MCSCF expec    <15.2 Doublet|LZLZ|15.2 Doublet>     1.000000000000
 !MCSCF expec    <16.2 Doublet|LZLZ|16.2 Doublet>     1.000000000000
 !MCSCF expec    <17.2 Doublet|LZLZ|17.2 Doublet>     0.000000000000
 
 !MCSCF expec      <1.2 Quartet|L**2|1.2 Quartet>    -0.000000000000
 !MCSCF expec      <1.2 Doublet|L**2|1.2 Doublet>     6.000000000000
 !MCSCF expec      <2.2 Doublet|L**2|2.2 Doublet>     6.000000000000
 !MCSCF expec      <3.2 Doublet|L**2|3.2 Doublet>     6.000000000000
 !MCSCF expec      <4.2 Doublet|L**2|4.2 Doublet>     6.000000000000
 !MCSCF expec      <5.2 Doublet|L**2|5.2 Doublet>     6.000000000000
 !MCSCF expec      <6.2 Doublet|L**2|6.2 Doublet>     2.000000000000
 !MCSCF expec      <7.2 Doublet|L**2|7.2 Doublet>     2.000000000000
 !MCSCF expec      <8.2 Doublet|L**2|8.2 Doublet>     2.000000000000
 !MCSCF expec      <9.2 Doublet|L**2|9.2 Doublet>     0.000000000000
 !MCSCF expec    <10.2 Doublet|L**2|10.2 Doublet>     6.000000000000
 !MCSCF expec    <11.2 Doublet|L**2|11.2 Doublet>     6.000000000000
 !MCSCF expec    <12.2 Doublet|L**2|12.2 Doublet>     6.000000000000
 !MCSCF expec    <13.2 Doublet|L**2|13.2 Doublet>     6.000000000000
 !MCSCF expec    <14.2 Doublet|L**2|14.2 Doublet>     6.000000000000
 !MCSCF expec    <15.2 Doublet|L**2|15.2 Doublet>     2.000000000000
 !MCSCF expec    <16.2 Doublet|L**2|16.2 Doublet>     2.000000000000
 !MCSCF expec    <17.2 Doublet|L**2|17.2 Doublet>     2.000000000000
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 4 2 6 3 5 1 1 4 3   5 6 2 1 4 2 6 3 5 1   4 2 6 5 3 6 4 5 3 2   9 71415 812111310 1
                                        4 6 2 5 3 9 71415 8  12111310 1 9 7111415   8121310 4 2 6 5 3 1   2 5 3 4 6 9 7 81211
                                       14151310 1 2 5 3 4 6   1 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 1 2 1 2 3 3 2 1 2   1 3 810 7 9 6 5 4 2   1 3 6 810 4 7 9 5 2   1 3 810 6 4 5 9 7 8
                                       10 4 6 5 7 9 1 2 3 4   810 6 5 9 7 1 2 311  19211312161415171820   6 810 4 5 9 7 1 2 3
                                        6 410 8 5 9 7 1 2 3   1 2 3
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -6.62466     1  1  s    0.99996
    2.1     2.00000    -1.71900     1  1  d1+  1.00082
    3.1     2.00000    -1.71900     1  1  d0   1.00082
    4.1     2.00000    -1.71900     1  1  d1-  1.00082
    5.1     2.00000    -1.71900     1  1  d2-  1.00082
    6.1     2.00000    -1.71900     1  1  d2+  1.00082
    7.1     1.97996    -0.69992     1  1  s   -0.35230    1  4  s    0.57804    1  5  s    0.63409    1  9  s   -0.28901
    1.2     2.00000    -4.69150     1  1  pz   0.99963
    2.2     2.00000    -4.69150     1  1  px   0.99963
    3.2     2.00000    -4.69150     1  1  py   0.99963
    4.2     0.83866    -0.19719     1  1  px  -0.30405    1  4  px   0.46920    1  5  px   0.49073
    5.2     0.83866    -0.19719     1  1  py  -0.30405    1  4  py   0.46920    1  5  py   0.49073
    6.2     0.83866    -0.19719     1  1  pz  -0.30405    1  4  pz   0.46920    1  5  pz   0.49073
    7.2     0.16802     0.02289     1 10  pz   0.78719    1 11  pz   0.38918
    8.2     0.16802     0.02289     1 10  py   0.78719    1 11  py   0.38918
    9.2     0.16802     0.02289     1 10  px   0.78719    1 11  px   0.38918
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 2 (Quartet)
 =======================================
 
 2 aaa000       0.99873691
 
 Energy:     -239.27413013
 
 
 CI Coefficients of symmetry 2 (Doublet)
 =======================================

 State:              1               2               3               4               5               6               7
 2 baa000      -0.07262962     -0.00000001      0.00116083      0.80896969     -0.00120250      0.00000000     -0.00000000
 2 aba000       0.73690460      0.00000011     -0.00046884     -0.34158602      0.00043934     -0.00000000      0.00000000
 2 a02000       0.00000011     -0.70340769      0.00000000      0.00000000      0.00000000      0.69288321      0.00000000
 2 a20000      -0.00000011      0.70340766     -0.00000000     -0.00000000     -0.00000000      0.69288324      0.00000000
 2 20a000      -0.00002122     -0.00000000      0.70340695     -0.00101107      0.00012581     -0.00000000      0.69288322
 2 02a000       0.00002122      0.00000000     -0.70340692      0.00101107     -0.00012581     -0.00000000      0.69288324
 2 0a2000      -0.00006815     -0.00000000      0.00012430     -0.00105188     -0.70340688      0.00000000      0.00001328
 2 2a0000       0.00006815      0.00000000     -0.00012430      0.00105188      0.70340687     -0.00000000      0.00001328
 2 aab000      -0.66427499     -0.00000010     -0.00069199     -0.46738367      0.00076316     -0.00000000      0.00000000
 2 a0a0b0      -0.05176124     -0.00000001      0.00003293      0.02399349     -0.00003086      0.00000000     -0.00000000
 2 aa0b00      -0.04665961     -0.00000001     -0.00004861     -0.03282969      0.00005361      0.00000000      0.00000000
 2 a0a00b       0.00000149      0.00000000     -0.04940830      0.00007102     -0.00000884      0.00000000     -0.06570738
 2 a0ab00       0.00000001     -0.04940835     -0.00000000     -0.00000000      0.00000000      0.06570738     -0.00000000
 2 aa00b0      -0.00000001      0.04940837      0.00000000     -0.00000000      0.00000000      0.06570741      0.00000000
 2 0aa0b0      -0.00000149     -0.00000000      0.04940832     -0.00007102      0.00000884      0.00000000     -0.06570740
 2 aa000b      -0.00000479     -0.00000000      0.00000873     -0.00007389     -0.04940830      0.00000000     -0.00000126
 2 0aab00      -0.00000479     -0.00000000      0.00000873     -0.00007389     -0.04940829      0.00000000      0.00000126
 2 0aa00b      -0.00510161     -0.00000000      0.00008154      0.05682318     -0.00008447     -0.00000000     -0.00000000
 2 0ab0a0       0.00000037      0.00000000     -0.01219730      0.00001753     -0.00000218     -0.00000000      0.01504636
 2 ba00a0       0.00000000     -0.01219731     -0.00000000     -0.00000000     -0.00000000     -0.01504636      0.00000000
 2 0baa00       0.00000118      0.00000000     -0.00000216      0.00001824      0.01219730     -0.00000000     -0.00000029
 2 ab000a       0.00000118      0.00000000     -0.00000216      0.00001824      0.01219730     -0.00000000      0.00000029
 2 a0b00a      -0.00000037     -0.00000000      0.01219730     -0.00001753      0.00000218     -0.00000000      0.01504636
 2 b0aa00      -0.00000000      0.01219731      0.00000000      0.00000000     -0.00000000     -0.01504636      0.00000000
 2 ab0a00       0.03772364      0.00000001     -0.00000467     -0.00404249      0.00000239     -0.00000000      0.00000000
 2 0ba00a       0.02746433      0.00000000     -0.00003680     -0.02617486      0.00003647      0.00000000      0.00000000
 2 a0b0a0       0.03640031      0.00000001      0.00001648      0.01069733     -0.00001952     -0.00000000      0.00000000
 2 b0a0a0       0.01536093      0.00000000     -0.00004941     -0.03469082      0.00005038     -0.00000000      0.00000000
 2 0ab00a      -0.02236272     -0.00000000     -0.00004474     -0.03064832      0.00004799      0.00000000      0.00000000
 2 ba0a00       0.00893597      0.00000000      0.00005328      0.03687217     -0.00005600     -0.00000000     -0.00000000
 2 a0ba00      -0.00000001      0.03721104      0.00000000     -0.00000000      0.00000000     -0.05066102      0.00000000
 2 b0a00a      -0.00000112     -0.00000000      0.03721100     -0.00005349      0.00000666     -0.00000000      0.05066102
 2 ab00a0       0.00000001     -0.03721106     -0.00000000      0.00000000     -0.00000000     -0.05066104     -0.00000000
 2 0ba0a0       0.00000112      0.00000000     -0.03721102      0.00005349     -0.00000666     -0.00000000      0.05066104
 2 0aba00       0.00000361      0.00000000     -0.00000658      0.00005565      0.03721099     -0.00000000     -0.00000097
 2 ba000a       0.00000361      0.00000000     -0.00000658      0.00005565      0.03721100     -0.00000000      0.00000097
 0 22a000       0.00000000     -0.00000000     -0.00000000      0.00000000     -0.00000000      0.00000000     -0.15389099
 0 a22000       0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000000     -0.15389099      0.00000000
 0 2a2000       0.00000000     -0.00000000     -0.00000000      0.00000000      0.00000000      0.00000000     -0.00000295
 2 200a00      -0.00000075     -0.00000000      0.02501370     -0.00003595      0.00000447     -0.00000000      0.02402701
 2 00200a       0.00000000     -0.02501373      0.00000000     -0.00000000      0.00000000      0.02402701     -0.00000000
 2 02000a      -0.00000000      0.02501373     -0.00000000      0.00000000     -0.00000000      0.02402701     -0.00000000
 2 020a00       0.00000075      0.00000000     -0.02501370      0.00003595     -0.00000447     -0.00000000      0.02402701
 2 2000a0       0.00000242      0.00000000     -0.00000442      0.00003741      0.02501371      0.00000000      0.00000046
 2 0020a0      -0.00000242     -0.00000000      0.00000442     -0.00003741     -0.02501371     -0.00000000      0.00000046
 0 a2a0b0       0.01452728      0.00000000     -0.00000924     -0.00673400      0.00000866     -0.00000000      0.00000000
 0 2aa0b0       0.00000042      0.00000000     -0.01386691      0.00001993     -0.00000248     -0.00000000     -0.00259697
 0 aa20b0       0.00000000     -0.01386693     -0.00000000      0.00000000     -0.00000000      0.00259697      0.00000000
 0 2aab00       0.00000134      0.00000000     -0.00000245      0.00002074      0.01386691     -0.00000000      0.00000005
 0 aa200b       0.00000134      0.00000000     -0.00000245      0.00002074      0.01386691     -0.00000000     -0.00000005
 0 a2ab00      -0.00000000      0.01386692     -0.00000000      0.00000000     -0.00000000      0.00259698      0.00000000
 0 a2a00b      -0.00000042     -0.00000000      0.01386691     -0.00001993      0.00000248     -0.00000000     -0.00259698
 0 aa2b00       0.01309547      0.00000000      0.00001364      0.00921397     -0.00001504     -0.00000000     -0.00000000
 0 2aa00b       0.00143181      0.00000000     -0.00002288     -0.01594797      0.00002371      0.00000000      0.00000000
 
 Energy:     -239.21382537   -239.21382537   -239.21382537   -239.21382537   -239.21382537   -239.19065090   -239.19065090

 State:              8               9              10              11              12              13              14
 2 baa000      -0.00000000      0.00000000      0.05563816      0.00005339     -0.00000001     -0.00000085     -0.03368863
 2 aba000      -0.00000000     -0.00000001      0.00135611      0.00000121     -0.00000001      0.00000141      0.06502841
 2 a02000       0.00000000      0.00000000      0.00000001     -0.00000001      0.05632850     -0.00000002      0.00000001
 2 a20000       0.00000000     -0.00000000     -0.00000001      0.00000001     -0.05632850      0.00000002     -0.00000001
 2 20a000      -0.00001328     -0.00000000      0.00000011     -0.00000009      0.00000002      0.05632850     -0.00000123
 2 02a000      -0.00001328      0.00000000     -0.00000011      0.00000009     -0.00000002     -0.05632850      0.00000123
 2 0a2000       0.69288323     -0.00000000      0.00005401     -0.05632846     -0.00000001     -0.00000009     -0.00000007
 2 2a0000       0.69288323      0.00000000     -0.00005401      0.05632846      0.00000001      0.00000009      0.00000007
 2 aab000       0.00000000      0.00000001     -0.05699427     -0.00005461      0.00000002     -0.00000057     -0.03133978
 2 a0a0b0       0.00000000     -0.46849042      0.01356246      0.00001214     -0.00000009      0.00001413      0.65034942
 2 aa0b00      -0.00000000      0.46849045      0.57000008      0.00054612     -0.00000017      0.00000567      0.31342925
 2 a0a00b       0.00000126     -0.00000000      0.00000114     -0.00000090      0.00000024      0.56334169     -0.00001226
 2 a0ab00       0.00000000     -0.00000000     -0.00000012      0.00000009     -0.56334169      0.00000024     -0.00000008
 2 aa00b0      -0.00000000      0.00000000      0.00000012     -0.00000009      0.56334145     -0.00000024      0.00000008
 2 0aa0b0       0.00000126      0.00000000     -0.00000114      0.00000090     -0.00000024     -0.56334144      0.00001226
 2 aa000b      -0.06570738     -0.00000000     -0.00054015      0.56334131      0.00000009      0.00000090      0.00000074
 2 0aab00       0.06570738     -0.00000000     -0.00054015      0.56334131      0.00000009      0.00000090      0.00000074
 2 0aa00b      -0.00000000      0.46849045     -0.55643763     -0.00053398      0.00000008      0.00000846      0.33692013
 2 0ab0a0      -0.00000029     -0.00000000      0.00000067     -0.00000053      0.00000014      0.32960059     -0.00000718
 2 ba00a0       0.00000000     -0.00000000     -0.00000007      0.00000005     -0.32960059      0.00000014     -0.00000005
 2 0baa00      -0.01504636      0.00000000      0.00031603     -0.32960049     -0.00000005     -0.00000053     -0.00000044
 2 ab000a       0.01504636      0.00000000      0.00031603     -0.32960049     -0.00000005     -0.00000053     -0.00000044
 2 a0b00a      -0.00000029      0.00000000     -0.00000067      0.00000053     -0.00000014     -0.32960071      0.00000718
 2 b0aa00       0.00000000      0.00000000      0.00000007     -0.00000005      0.32960071     -0.00000014      0.00000005
 2 ab0a00       0.00000000     -0.23424523     -0.33118859     -0.00031746      0.00000008     -0.00000091     -0.07271639
 2 0ba00a       0.00000000     -0.23424523      0.32786910      0.00031449     -0.00000006     -0.00000255     -0.08646046
 2 a0b0a0      -0.00000000      0.23424521      0.08905762      0.00008582      0.00000003     -0.00000730     -0.32717335
 2 b0a0a0      -0.00000000      0.23424521     -0.10262008     -0.00009797      0.00000007     -0.00000683     -0.32317608
 2 0ab00a       0.00000000     -0.23424522      0.22856853      0.00021949     -0.00000002     -0.00000591     -0.25045966
 2 ba0a00       0.00000000     -0.23424522     -0.23881149     -0.00022866      0.00000009     -0.00000476     -0.24071286
 2 a0ba00      -0.00000000      0.00000000      0.00000005     -0.00000004      0.23374098     -0.00000010      0.00000003
 2 b0a00a      -0.00000097      0.00000000     -0.00000047      0.00000037     -0.00000010     -0.23374098      0.00000509
 2 ab00a0       0.00000000     -0.00000000     -0.00000005      0.00000004     -0.23374085      0.00000010     -0.00000003
 2 0ba0a0      -0.00000097     -0.00000000      0.00000047     -0.00000037      0.00000010      0.23374085     -0.00000509
 2 0aba00      -0.05066102     -0.00000000      0.00022412     -0.23374082     -0.00000004     -0.00000037     -0.00000031
 2 ba000a       0.05066102      0.00000000      0.00022412     -0.23374082     -0.00000004     -0.00000037     -0.00000031
 0 22a000       0.00000295     -0.00000000     -0.00000000     -0.00000000      0.00000000     -0.00000000      0.00000000
 0 a22000       0.00000000     -0.00000000     -0.00000000      0.00000000     -0.00000000     -0.00000000      0.00000000
 0 2a2000      -0.15389099     -0.00000000      0.00000000     -0.00000000      0.00000000      0.00000000      0.00000000
 2 200a00      -0.00000046     -0.00000000      0.00000019     -0.00000015      0.00000004      0.09585973     -0.00000209
 2 00200a      -0.00000000     -0.00000000      0.00000002     -0.00000001      0.09585973     -0.00000004      0.00000001
 2 02000a      -0.00000000     -0.00000000     -0.00000002      0.00000001     -0.09585972      0.00000004     -0.00000001
 2 020a00      -0.00000046      0.00000000     -0.00000019      0.00000015     -0.00000004     -0.09585972      0.00000209
 2 2000a0       0.02402702     -0.00000000     -0.00009191      0.09585969      0.00000001      0.00000015      0.00000013
 2 0020a0       0.02402702     -0.00000000      0.00009191     -0.09585969     -0.00000001     -0.00000015     -0.00000013
 0 a2a0b0      -0.00000000      0.04839433     -0.00140810     -0.00000126      0.00000001     -0.00000147     -0.06752131
 0 2aa0b0       0.00000005     -0.00000000      0.00000012     -0.00000009      0.00000002      0.05848787     -0.00000127
 0 aa20b0       0.00000000     -0.00000000     -0.00000001      0.00000001     -0.05848787      0.00000002     -0.00000001
 0 2aab00       0.00259698      0.00000000      0.00005608     -0.05848785     -0.00000001     -0.00000009     -0.00000008
 0 aa200b      -0.00259698      0.00000000      0.00005608     -0.05848785     -0.00000001     -0.00000009     -0.00000008
 0 a2ab00      -0.00000000      0.00000000      0.00000001     -0.00000001      0.05848789     -0.00000002      0.00000001
 0 a2a00b       0.00000005      0.00000000     -0.00000012      0.00000009     -0.00000002     -0.05848789      0.00000127
 0 aa2b00       0.00000000     -0.04839433     -0.05917919     -0.00005670      0.00000002     -0.00000059     -0.03254120
 0 2aa00b       0.00000000     -0.04839433      0.05777109      0.00005544     -0.00000001     -0.00000088     -0.03498010
 
 Energy:     -239.19065090   -239.04355021   -239.03076644   -239.03076644   -239.03076644   -239.03076644   -239.03076644

 State:             15              16              17
 2 baa000      -0.00000000     -0.00000000      0.00000000
 2 aba000       0.00000000      0.00000000     -0.00000000
 2 a02000       0.00000000     -0.07203458      0.00000000
 2 a20000       0.00000000     -0.07203463      0.00000000
 2 20a000      -0.00000000      0.00000000      0.07203459
 2 02a000      -0.00000000      0.00000000      0.07203463
 2 0a2000       0.07203459      0.00000000      0.00000000
 2 2a0000       0.07203460      0.00000000      0.00000000
 2 aab000      -0.00000000      0.00000000     -0.00000000
 2 a0a0b0      -0.00000000     -0.00000000     -0.00000000
 2 aa0b00       0.00000000      0.00000000      0.00000000
 2 a0a00b      -0.00000001      0.00000000      0.56113054
 2 a0ab00      -0.00000002      0.56113054     -0.00000000
 2 aa00b0      -0.00000002      0.56113077     -0.00000000
 2 0aa0b0      -0.00000001      0.00000000      0.56113077
 2 aa000b       0.56113065      0.00000002      0.00000001
 2 0aab00      -0.56113066     -0.00000002     -0.00000001
 2 0aa00b      -0.00000000      0.00000000     -0.00000000
 2 0ab0a0       0.00000000     -0.00000000     -0.34271967
 2 ba00a0       0.00000001     -0.34271967      0.00000000
 2 0baa00       0.34271957      0.00000001      0.00000000
 2 ab000a      -0.34271957     -0.00000001     -0.00000000
 2 a0b00a       0.00000000     -0.00000000     -0.34271950
 2 b0aa00       0.00000001     -0.34271950      0.00000000
 2 ab0a00      -0.00000000     -0.00000000     -0.00000000
 2 0ba00a       0.00000000     -0.00000000      0.00000000
 2 a0b0a0       0.00000000      0.00000000      0.00000000
 2 b0a0a0       0.00000000      0.00000000      0.00000000
 2 0ab00a       0.00000000     -0.00000000      0.00000000
 2 ba0a00      -0.00000000     -0.00000000     -0.00000000
 2 a0ba00       0.00000001     -0.21841104      0.00000000
 2 b0a00a       0.00000000     -0.00000000     -0.21841104
 2 ab00a0       0.00000001     -0.21841109      0.00000000
 2 0ba0a0       0.00000000     -0.00000000     -0.21841109
 2 0aba00       0.21841109      0.00000001      0.00000000
 2 ba000a      -0.21841109     -0.00000001     -0.00000000
 0 22a000       0.00000000     -0.00000000     -0.01795217
 0 a22000      -0.00000000      0.01795217     -0.00000000
 0 2a2000      -0.01795216     -0.00000000     -0.00000000
 2 200a00      -0.00000000      0.00000000      0.07563584
 2 00200a       0.00000000     -0.07563584      0.00000000
 2 02000a       0.00000000     -0.07563592      0.00000000
 2 020a00      -0.00000000      0.00000000      0.07563592
 2 2000a0       0.07563589      0.00000000      0.00000000
 2 0020a0       0.07563589      0.00000000      0.00000000
 0 a2a0b0       0.00000000      0.00000000      0.00000000
 0 2aa0b0       0.00000000     -0.00000000     -0.06060068
 0 aa20b0       0.00000000     -0.06060068      0.00000000
 0 2aab00       0.06060066      0.00000000      0.00000000
 0 aa200b      -0.06060066     -0.00000000     -0.00000000
 0 a2ab00       0.00000000     -0.06060065      0.00000000
 0 a2a00b       0.00000000     -0.00000000     -0.06060065
 0 aa2b00      -0.00000000     -0.00000000     -0.00000000
 0 2aa00b       0.00000000     -0.00000000      0.00000000
 
 Energy:     -239.02506718   -239.02506718   -239.02506718
 


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       57.06       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       4        0.87       700     1000      520     2140   
                                         GEOM     BASIS   MCVARS    MCSCF   

 PROGRAMS   *        TOTAL     MULTI       INT
 CPU TIMES  *        12.78      8.01      4.47
 REAL TIME  *        15.71 SEC
 DISK USED  *        58.03 MB (local),        2.14 GB (total)
 SF USED    *        72.64 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

         ENERGY     LL
    -239.2741301  -0.0
    -239.2138254   6.0
    -239.2138254   6.0
    -239.2138254   6.0
    -239.2138254   6.0
    -239.2138254   6.0
    -239.1906509   2.0
    -239.1906509   2.0
    -239.1906509   2.0
    -239.0435502   0.0
    -239.0307664   6.0
    -239.0307664   6.0
    -239.0307664   6.0
    -239.0307664   6.0
    -239.0307664   6.0
    -239.0250672   2.0
    -239.0250672   2.0
    -239.0250672   2.0
                                                  


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
 Number of external orbitals:     169 (  85  84 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Valence orbitals related to previous ones by unitary transformation. Operators transformed.


 Number of p-space configurations:  10

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -239.27413013

 Number of blocks in overlap matrix:   167   Smallest eigenvalue:  0.13D-04
 Number of N-2 electron functions:     250
 Number of N-1 electron functions:  101369

 Number of internal configurations:                33680
 Number of singly external configurations:       8565644
 Number of doubly external configurations:       1785907
 Total number of contracted configurations:     10385231
 Total number of uncontracted configurations:  447321117

 Diagonal Coupling coefficients finished.               Storage:  10292981 words, CPU-Time:      0.70 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   1993866 words, CPU-time:      0.45 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -239.27413013     0.00000000    -1.03601396  0.50D-01  0.12D+00     2.65
    2     1     1     1.10420848    -0.81739419  -240.09152432    -0.81739419    -0.02733643  0.48D-02  0.17D-02    20.11
    3     1     1     1.08874509    -0.84330323  -240.11743336    -0.02590904    -0.00043977  0.69D-04  0.38D-04    37.23
    4     1     1     1.08829723    -0.84374959  -240.11787972    -0.00044636    -0.00001207  0.20D-05  0.12D-05    54.13
    5     1     1     1.08836052    -0.84376189  -240.11789202    -0.00001229    -0.00000039  0.32D-07  0.64D-07    71.23
    6     1     1     1.08837793    -0.84376230  -240.11789243    -0.00000041    -0.00000002  0.15D-08  0.36D-08    88.42


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   2.9%
 S   3.1%  27.3%
 P   0.8%  52.6%   3.9%

 Initialization:   1.6%
 Other:            7.9%

 Total CPU:       88.4 seconds
 =====================================



 Wavefunction saved on  5302.2

 Reference coefficients greater than 0.0500000
 =============================================
 2222222222///000           0.9576637


 RESULTS FOR STATE 1.2
 =====================

 Coefficient of reference function:   C(0) = 0.95848030 (fixed)   0.95851390 (relaxed)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00012409   -0.00021009   -0.00028920
 Singles      0.01382789   -0.05055800   -0.05716828
 Pairs        0.07456100   -0.79299422   -0.78630482
 Total        1.08851299   -0.84376230   -0.84376230
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -239.27413013
 Nuclear energy                         0.00000000
 Kinetic energy                        93.13880901
 One electron energy                 -419.51401434
 Two electron energy                  179.39612191
 Virial quotient                       -2.57806488
 Correlation energy                    -0.84376230
 !MRCI STATE 1.2 Energy              -240.117892427716

 Properties without orbital relaxation:

 !MRCI STATE 1.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -240.19257635 (Davidson, fixed reference)
 Cluster corrected energies          -240.19251196 (Davidson, relaxed reference)

 Cluster corrected energies          -240.19017125 (Pople, fixed reference)
 Cluster corrected energies          -240.19010429 (Pople, relaxed reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       57.06       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       5       82.39       700     1000      520     2140     5302   
                                         GEOM     BASIS   MCVARS    MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI       INT
 CPU TIMES  *       102.99     90.17      8.01      4.47
 REAL TIME  *       109.61 SEC
 DISK USED  *       139.56 MB (local),        4.69 GB (total)
 SF USED    *         1.09 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =      -240.19251196  AU                              


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 17  Roots:   1   2   3   4   5   6   7   8   9  10  11  12  13  14  15  16  17
 Number of reference states: 17  Roots:   1   2   3   4   5   6   7   8   9  10  11  12  13  14  15  16  17

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
 Number of external orbitals:     169 (  85  84 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Coulomb and exchange operators available. No transformation done.


 Number of p-space configurations:  35

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -239.21382537
     2      -239.21382537
     3      -239.21382537
     4      -239.21382537
     5      -239.21382537
     6      -239.19065090
     7      -239.19065090
     8      -239.19065090
     9      -239.04355021
    10      -239.03076644
    11      -239.03076644
    12      -239.03076644
    13      -239.03076644
    14      -239.03076644
    15      -239.02506718
    16      -239.02506718
    17      -239.02506718

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1347D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1435D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1435D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1435D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1435D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1435D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1435D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1435D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1435D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1435D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1435D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1435D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1435D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1435D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1435D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1435D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1435D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1435D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1435D-06

 Number of blocks in overlap matrix:  1471   Smallest eigenvalue:  0.13D-06
 Number of N-2 electron functions:    3556
 Number of N-1 electron functions:  124768

 Number of internal configurations:                44086
 Number of singly external configurations:      10542724
 Number of doubly external configurations:      25402678
 Total number of contracted configurations:     35989488
 Total number of uncontracted configurations:  590453964

 Diagonal Coupling coefficients finished.               Storage:  46681860 words, CPU-Time:    391.69 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   2935596 words, CPU-time:      6.76 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -239.21382537     0.00000000    -1.03855172  0.61D-01  0.11D+00   426.80
    1     2     2     1.00000000     0.00000000  -239.21382537     0.00000000    -1.03661059  0.60D-01  0.11D+00   426.80
    1     3     3     1.00000000     0.00000000  -239.21382537     0.00000000    -1.03659991  0.59D-01  0.11D+00   426.80
    1     4     4     1.00000000     0.00000000  -239.21382537     0.00000000    -1.03641483  0.60D-01  0.11D+00   426.80
    1     5     5     1.00000000     0.00000000  -239.21382537     0.00000000    -1.03606533  0.59D-01  0.11D+00   426.80
    1     6     6     1.00000000     0.00000000  -239.19065090     0.00000000    -1.01687378  0.41D-01  0.11D+00   426.80
    1     7     7     1.00000000     0.00000000  -239.19065090     0.00000000    -1.01716184  0.41D-01  0.11D+00   426.80
    1     8     8     1.00000000     0.00000000  -239.19065090     0.00000000    -1.01678272  0.41D-01  0.11D+00   426.80
    1     9     9     1.00000000     0.00000000  -239.04355021     0.00000000    -0.98647034  0.44D-01  0.10D+00   426.80
    1    10    10     1.00000000     0.00000000  -239.03076644     0.00000000    -0.99054478  0.46D-01  0.10D+00   426.80
    1    11    11     1.00000000     0.00000000  -239.03076644     0.00000000    -0.99081363  0.45D-01  0.10D+00   426.80
    1    12    12     1.00000000     0.00000000  -239.03076644     0.00000000    -0.99103844  0.45D-01  0.10D+00   426.80
    1    13    13     1.00000000     0.00000000  -239.03076644     0.00000000    -0.99090903  0.45D-01  0.10D+00   426.80
    1    14    14     1.00000000     0.00000000  -239.03076644     0.00000000    -0.99075021  0.46D-01  0.10D+00   426.80
    1    15    15     1.00000000     0.00000000  -239.02506718     0.00000000    -0.99164092  0.47D-01  0.10D+00   426.80
    1    16    16     1.00000000     0.00000000  -239.02506718     0.00000000    -0.99164838  0.47D-01  0.10D+00   426.80
    1    17    17     1.00000000     0.00000000  -239.02506718    -0.00000000    -0.99162790  0.47D-01  0.10D+00   426.80
    2     1     1     1.10833604    -0.82602956  -240.03985493    -0.82602956    -0.02832439  0.55D-02  0.17D-02  2016.41
    2     2     2     1.10827470    -0.82600956  -240.03983493    -0.82600956    -0.02831792  0.55D-02  0.17D-02  2016.41
    2     3     3     1.10852701    -0.82592045  -240.03974582    -0.82592045    -0.02841975  0.55D-02  0.17D-02  2016.41
    2     4     4     1.10864850    -0.82575155  -240.03957692    -0.82575155    -0.02860955  0.57D-02  0.17D-02  2016.41
    2     5     5     1.10918991    -0.82538758  -240.03921295    -0.82538758    -0.02899318  0.59D-02  0.17D-02  2016.41
    2     6     6     1.10110129    -0.82353578  -240.01418668    -0.82353578    -0.02531389  0.50D-02  0.16D-02  2016.41
    2     7     7     1.10107786    -0.82350942  -240.01416032    -0.82350942    -0.02530844  0.50D-02  0.17D-02  2016.41
    2     8     8     1.10103444    -0.82344637  -240.01409728    -0.82344637    -0.02536517  0.50D-02  0.17D-02  2016.41
    2     9     9     1.09783928    -0.80857968  -239.85212989    -0.80857968    -0.02028513  0.29D-02  0.13D-02  2016.41
    2    10    10     1.09858431    -0.80973751  -239.84050395    -0.80973751    -0.02107232  0.32D-02  0.13D-02  2016.41
    2    11    11     1.09859379    -0.80971791  -239.84048435    -0.80971791    -0.02108532  0.33D-02  0.13D-02  2016.41
    2    12    12     1.09869506    -0.80963570  -239.84040213    -0.80963570    -0.02118311  0.33D-02  0.13D-02  2016.41
    2    13    13     1.09869535    -0.80962122  -239.84038766    -0.80962122    -0.02118210  0.33D-02  0.13D-02  2016.41
    2    14    14     1.09887764    -0.80948293  -239.84024937    -0.80948293    -0.02133133  0.34D-02  0.13D-02  2016.41
    2    15    15     1.09978062    -0.80944583  -239.83451301    -0.80944583    -0.02165806  0.38D-02  0.13D-02  2016.41
    2    16    16     1.09982747    -0.80940936  -239.83447654    -0.80940936    -0.02169413  0.39D-02  0.13D-02  2016.41
    2    17    17     1.09984490    -0.80935879  -239.83442597    -0.80935879    -0.02175218  0.39D-02  0.13D-02  2016.41
    3     1     1     1.09338070    -0.85284134  -240.06666671    -0.02681177    -0.00076872  0.12D-03  0.86D-04  3566.62
    3     2     2     1.09334993    -0.85283668  -240.06666205    -0.02682712    -0.00077160  0.12D-03  0.86D-04  3566.62
    3     3     3     1.09346081    -0.85283644  -240.06666181    -0.02691599    -0.00077354  0.12D-03  0.88D-04  3566.62
    3     4     4     1.09337796    -0.85283413  -240.06665950    -0.02708259    -0.00077658  0.12D-03  0.86D-04  3566.62
    3     5     5     1.09337043    -0.85282375  -240.06664912    -0.02743617    -0.00078548  0.12D-03  0.88D-04  3566.62
    3     6     6     1.09021249    -0.84797002  -240.03862092    -0.02443424    -0.00067376  0.79D-04  0.91D-04  3566.62
    3     7     7     1.09017778    -0.84795666  -240.03860757    -0.02444724    -0.00067861  0.78D-04  0.93D-04  3566.62
    3     8     8     1.09014642    -0.84794960  -240.03860050    -0.02450322    -0.00068446  0.79D-04  0.93D-04  3566.62
    3     9     9     1.08709415    -0.82803283  -239.87158304    -0.01945315    -0.00034429  0.45D-04  0.32D-04  3566.62
    3    10    10     1.08742008    -0.82990544  -239.86067188    -0.02016794    -0.00039471  0.52D-04  0.41D-04  3566.62
    3    11    11     1.08741460    -0.82990381  -239.86067026    -0.02018590    -0.00039585  0.52D-04  0.41D-04  3566.62
    3    12    12     1.08741839    -0.82990374  -239.86067018    -0.02026805    -0.00039720  0.52D-04  0.41D-04  3566.62
    3    13    13     1.08740929    -0.82989992  -239.86066636    -0.02027871    -0.00039982  0.53D-04  0.42D-04  3566.62
    3    14    14     1.08740781    -0.82989682  -239.86066326    -0.02041390    -0.00040359  0.53D-04  0.42D-04  3566.62
    3    15    15     1.08759451    -0.83027500  -239.85534218    -0.02082916    -0.00042813  0.58D-04  0.47D-04  3566.62
    3    16    16     1.08758650    -0.83027490  -239.85534208    -0.02086554    -0.00042947  0.59D-04  0.47D-04  3566.62
    3    17    17     1.08759358    -0.83027306  -239.85534023    -0.02091426    -0.00042974  0.59D-04  0.47D-04  3566.62
    4     1     1     1.09306886    -0.85366595  -240.06749132    -0.00082461    -0.00005150  0.37D-05  0.83D-05  5118.17
    4     2     2     1.09306569    -0.85366549  -240.06749086    -0.00082881    -0.00005175  0.37D-05  0.84D-05  5118.17
    4     3     3     1.09306081    -0.85366507  -240.06749044    -0.00082863    -0.00005210  0.38D-05  0.84D-05  5118.17
    4     4     4     1.09306608    -0.85366502  -240.06749039    -0.00083088    -0.00005208  0.38D-05  0.84D-05  5118.17
    4     5     5     1.09306219    -0.85366463  -240.06749000    -0.00084088    -0.00005241  0.38D-05  0.85D-05  5118.17
    4     6     6     1.09096755    -0.84872559  -240.03937650    -0.00075558    -0.00005445  0.30D-05  0.94D-05  5118.17
    4     7     7     1.09094579    -0.84872218  -240.03937308    -0.00076552    -0.00005658  0.30D-05  0.98D-05  5118.17
    4     8     8     1.09093967    -0.84872162  -240.03937252    -0.00077202    -0.00005693  0.30D-05  0.99D-05  5118.17
    4     9     9     1.08691021    -0.82839663  -239.87194685    -0.00036380    -0.00001714  0.21D-05  0.25D-05  5118.17
    4    10    10     1.08728752    -0.83033054  -239.86109698    -0.00042510    -0.00002547  0.26D-05  0.45D-05  5118.17
    4    11    11     1.08728576    -0.83033024  -239.86109668    -0.00042642    -0.00002563  0.26D-05  0.45D-05  5118.17
    4    12    12     1.08728654    -0.83033012  -239.86109656    -0.00042638    -0.00002565  0.26D-05  0.45D-05  5118.17
    4    13    13     1.08728480    -0.83033002  -239.86109646    -0.00043010    -0.00002571  0.26D-05  0.45D-05  5118.17
    4    14    14     1.08728354    -0.83032973  -239.86109617    -0.00043291    -0.00002579  0.26D-05  0.45D-05  5118.17
    4    15    15     1.08744074    -0.83074423  -239.85581141    -0.00046923    -0.00002978  0.30D-05  0.53D-05  5118.17
    4    16    16     1.08743889    -0.83074352  -239.85581069    -0.00046861    -0.00003012  0.30D-05  0.54D-05  5118.17
    4    17    17     1.08743742    -0.83074351  -239.85581068    -0.00047045    -0.00003021  0.30D-05  0.54D-05  5118.17
    5     1     1     1.09336562    -0.85372866  -240.06755403    -0.00006271    -0.00000423  0.20D-06  0.73D-06  6668.11
    5     2     2     1.09336919    -0.85372863  -240.06755400    -0.00006314    -0.00000420  0.20D-06  0.73D-06  6668.11
    5     3     3     1.09336783    -0.85372856  -240.06755393    -0.00006350    -0.00000431  0.21D-06  0.74D-06  6668.11
    5     4     4     1.09336521    -0.85372852  -240.06755389    -0.00006350    -0.00000435  0.22D-06  0.75D-06  6668.11
    5     5     5     1.09336663    -0.85372851  -240.06755388    -0.00006389    -0.00000434  0.22D-06  0.75D-06  6668.11
    5     6     6     1.09159232    -0.84879431  -240.03944521    -0.00006872    -0.00000480  0.23D-06  0.77D-06  6668.11
    5     7     7     1.09159032    -0.84879392  -240.03944482    -0.00007174    -0.00000509  0.26D-06  0.81D-06  6668.11
    5     8     8     1.09159110    -0.84879389  -240.03944479    -0.00007227    -0.00000511  0.25D-06  0.82D-06  6668.11
    5     9     9     1.08698424    -0.82841757  -239.87196778    -0.00002093    -0.00000166  0.70D-07  0.34D-06  6668.11
    5    10    10     1.08745877    -0.83036429  -239.86113073    -0.00003374    -0.00000326  0.19D-06  0.60D-06  6668.11
    5    11    11     1.08745862    -0.83036424  -239.86113068    -0.00003401    -0.00000334  0.19D-06  0.61D-06  6668.11
    5    12    12     1.08745867    -0.83036422  -239.86113066    -0.00003410    -0.00000333  0.19D-06  0.61D-06  6668.11
    5    13    13     1.08745893    -0.83036421  -239.86113065    -0.00003419    -0.00000333  0.19D-06  0.61D-06  6668.11
    5    14    14     1.08745897    -0.83036387  -239.86113031    -0.00003413    -0.00000331  0.19D-06  0.61D-06  6668.11
    5    15    15     1.08763885    -0.83078392  -239.85585110    -0.00003969    -0.00000387  0.23D-06  0.69D-06  6668.11
    5    16    16     1.08763994    -0.83078386  -239.85585104    -0.00004034    -0.00000374  0.22D-06  0.68D-06  6668.11
    5    17    17     1.08763864    -0.83078376  -239.85585094    -0.00004025    -0.00000385  0.23D-06  0.69D-06  6668.11
    6     1     1     1.09341780    -0.85373407  -240.06755944    -0.00000541    -0.00000044  0.43D-07  0.60D-07  8220.03
    6     2     2     1.09341904    -0.85373404  -240.06755941    -0.00000541    -0.00000044  0.42D-07  0.60D-07  8220.03
    6     3     3     1.09341860    -0.85373403  -240.06755940    -0.00000547    -0.00000044  0.42D-07  0.60D-07  8220.03
    6     4     4     1.09341865    -0.85373400  -240.06755937    -0.00000548    -0.00000042  0.41D-07  0.58D-07  8220.03
    6     5     5     1.09341900    -0.85373398  -240.06755935    -0.00000547    -0.00000042  0.41D-07  0.58D-07  8220.03
    6     6     6     1.09164790    -0.84880034  -240.03945124    -0.00000603    -0.00000041  0.35D-07  0.57D-07  8220.03
    6     7     7     1.09164652    -0.84880031  -240.03945122    -0.00000640    -0.00000044  0.37D-07  0.61D-07  8220.03
    6     8     8     1.09164646    -0.84880030  -240.03945120    -0.00000642    -0.00000044  0.38D-07  0.61D-07  8220.03
    6     9     9     1.08700006    -0.82841997  -239.87197018    -0.00000240    -0.00000023  0.22D-07  0.31D-07  8220.03
    6    10    10     1.08749218    -0.83036904  -239.86113548    -0.00000475    -0.00000042  0.38D-07  0.57D-07  8220.03
    6    11    11     1.08749233    -0.83036901  -239.86113545    -0.00000477    -0.00000043  0.39D-07  0.57D-07  8220.03
    6    12    12     1.08749200    -0.83036898  -239.86113542    -0.00000477    -0.00000042  0.38D-07  0.57D-07  8220.03
    6    13    13     1.08749226    -0.83036894  -239.86113538    -0.00000473    -0.00000041  0.37D-07  0.55D-07  8220.03
    6    14    14     1.08749166    -0.83036859  -239.86113503    -0.00000472    -0.00000042  0.38D-07  0.56D-07  8220.03
    6    15    15     1.08767415    -0.83078930  -239.85585648    -0.00000538    -0.00000048  0.43D-07  0.68D-07  8220.03
    6    16    16     1.08767385    -0.83078912  -239.85585629    -0.00000526    -0.00000047  0.43D-07  0.67D-07  8220.03
    6    17    17     1.08767429    -0.83078905  -239.85585623    -0.00000529    -0.00000045  0.41D-07  0.64D-07  8220.03
    7     1     1     1.09344620    -0.85373457  -240.06755994    -0.00000050    -0.00000004  0.38D-08  0.68D-08  9772.59
    7     2     2     1.09344622    -0.85373454  -240.06755991    -0.00000050    -0.00000004  0.38D-08  0.66D-08  9772.59
    7     3     3     1.09344614    -0.85373453  -240.06755990    -0.00000050    -0.00000004  0.38D-08  0.67D-08  9772.59
    7     4     4     1.09344638    -0.85373448  -240.06755985    -0.00000048    -0.00000004  0.37D-08  0.64D-08  9772.59
    7     5     5     1.09344629    -0.85373446  -240.06755983    -0.00000048    -0.00000004  0.37D-08  0.63D-08  9772.59
    7     6     6     1.09167375    -0.84880082  -240.03945173    -0.00000049    -0.00000005  0.47D-08  0.71D-08  9772.59
    7     7     7     1.09167418    -0.84880081  -240.03945171    -0.00000049    -0.00000004  0.42D-08  0.64D-08  9772.59
    7     8     8     1.09167373    -0.84880081  -240.03945171    -0.00000051    -0.00000005  0.46D-08  0.71D-08  9772.59
    7     9     9     1.08700966    -0.82842024  -239.87197046    -0.00000028    -0.00000003  0.20D-08  0.39D-08  9772.59
    7    10    10     1.08750669    -0.83036954  -239.86113598    -0.00000050    -0.00000005  0.40D-08  0.80D-08  9772.59
    7    11    11     1.08750663    -0.83036951  -239.86113596    -0.00000050    -0.00000005  0.40D-08  0.80D-08  9772.59
    7    12    12     1.08750666    -0.83036948  -239.86113592    -0.00000050    -0.00000005  0.40D-08  0.79D-08  9772.59
    7    13    13     1.08750669    -0.83036942  -239.86113586    -0.00000048    -0.00000005  0.38D-08  0.76D-08  9772.59
    7    14    14     1.08750623    -0.83036908  -239.86113552    -0.00000049    -0.00000005  0.39D-08  0.77D-08  9772.59
    7    15    15     1.08769208    -0.83078987  -239.85585705    -0.00000057    -0.00000006  0.50D-08  0.10D-07  9772.59
    7    16    16     1.08769183    -0.83078969  -239.85585686    -0.00000057    -0.00000006  0.49D-08  0.10D-07  9772.59
    7    17    17     1.08769183    -0.83078959  -239.85585677    -0.00000054    -0.00000006  0.46D-08  0.94D-08  9772.59
    8     1     1     1.09344721    -0.85373462  -240.06755999    -0.00000005    -0.00000001  0.39D-09  0.89D-09 11242.18
    8     2     2     1.09344713    -0.85373459  -240.06755996    -0.00000005    -0.00000001  0.37D-09  0.88D-09 11242.18
    8     3     3     1.09344711    -0.85373458  -240.06755995    -0.00000005    -0.00000001  0.38D-09  0.89D-09 11242.18
    8     4     4     1.09344723    -0.85373453  -240.06755990    -0.00000005    -0.00000001  0.35D-09  0.83D-09 11242.18
    8     5     5     1.09344712    -0.85373451  -240.06755988    -0.00000005    -0.00000001  0.35D-09  0.83D-09 11242.18
    8     6     6     1.09167737    -0.84880088  -240.03945178    -0.00000006    -0.00000001  0.33D-09  0.10D-08 11242.18
    8     7     7     1.09167736    -0.84880086  -240.03945176    -0.00000005    -0.00000001  0.33D-09  0.99D-09 11242.18
    8     8     8     1.09167757    -0.84880086  -240.03945176    -0.00000005    -0.00000001  0.29D-09  0.90D-09 11242.18
    8     9     9     1.08700966    -0.82842024  -239.87197046    -0.00000000    -0.00000003  0.20D-08  0.39D-08 11242.18
    8    10    10     1.08750517    -0.83036960  -239.86113604    -0.00000006    -0.00000001  0.44D-09  0.14D-08 11242.18
    8    11    11     1.08750510    -0.83036958  -239.86113602    -0.00000006    -0.00000001  0.45D-09  0.14D-08 11242.18
    8    12    12     1.08750515    -0.83036954  -239.86113598    -0.00000006    -0.00000001  0.44D-09  0.14D-08 11242.18
    8    13    13     1.08750514    -0.83036948  -239.86113592    -0.00000006    -0.00000001  0.41D-09  0.13D-08 11242.18
    8    14    14     1.08750480    -0.83036914  -239.86113558    -0.00000006    -0.00000001  0.43D-09  0.14D-08 11242.18
    8    15    15     1.08769112    -0.83078995  -239.85585713    -0.00000008    -0.00000001  0.58D-09  0.18D-08 11242.18
    8    16    16     1.08769188    -0.83078977  -239.85585695    -0.00000008    -0.00000001  0.36D-09  0.88D-09 11242.18
    8    17    17     1.08769093    -0.83078966  -239.85585684    -0.00000007    -0.00000001  0.53D-09  0.17D-08 11242.18


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.5%
 S   0.5%   4.6%
 P   0.3%  32.1%  37.2%

 Initialization:   3.6%
 Other:           21.3%

 Total CPU:    11242.2 seconds
 =====================================



 Wavefunction saved on  5102.2

 Reference coefficients greater than 0.0500000
 =============================================
 2222222222//\000           0.1806335  -0.0090740   0.0033882   0.9363300   0.0068742   0.0000000  -0.0000000  -0.0000000
                           -0.0000005  -0.0045839  -0.0381633  -0.0041947  -0.0008700  -0.0199245  -0.0000000  -0.0000000
                            0.0000000
 2222222222/\/000           0.9360358  -0.0212475   0.0112331  -0.1808641   0.0055574  -0.0000000   0.0000000   0.0000000
                            0.0000005  -0.0020149  -0.0197332  -0.0018928  -0.0003301   0.0386734  -0.0000000  -0.0000000
                           -0.0000000
 2222222222/0/0\0          -0.0306884   0.0005907  -0.0003423   0.0266188  -0.0000586  -0.0000000   0.0000000  -0.0000000
                           -0.5507578   0.0096352   0.0350896   0.0080697   0.0026265   0.7654242  -0.0000002  -0.0000001
                           -0.0000003
 2222222222/20000           0.0047980  -0.0052856  -0.0116152   0.0040149  -0.6741957   0.0274231   0.0646154   0.6630174
                           -0.0000000   0.0004869  -0.0005934  -0.0011643   0.0307306  -0.0000721   0.0000282  -0.0000940
                           -0.0462299
 2222222222/02000          -0.0047980   0.0052856   0.0116153  -0.0040149   0.6741956   0.0274231   0.0646153   0.6630175
                            0.0000000  -0.0004869   0.0005934   0.0011643  -0.0307330   0.0000721   0.0000282  -0.0000940
                           -0.0462283
 222222222220/000          -0.0076977   0.0198147   0.6739064  -0.0006747  -0.0118244  -0.0382848   0.6626349  -0.0629946
                            0.0000000  -0.0016326  -0.0031014   0.0305423   0.0011227  -0.0001631  -0.0003169   0.0462280
                           -0.0000942
 222222222202/000           0.0076977  -0.0198147  -0.6739060   0.0006747   0.0118244  -0.0382848   0.6626354  -0.0629946
                           -0.0000000   0.0016326   0.0031013  -0.0305414  -0.0011227   0.0001631  -0.0003168   0.0462279
                           -0.0000941
 22222222220/2000           0.0162378   0.6738358  -0.0197079   0.0035042  -0.0048068   0.6650573   0.0354810  -0.0309653
                           -0.0000000  -0.0305115   0.0036748  -0.0012752   0.0005066   0.0002273   0.0462280   0.0003169
                            0.0000276
 22222222222/0000          -0.0162378  -0.6738352   0.0197080  -0.0035042   0.0048068   0.6650579   0.0354810  -0.0309653
                            0.0000000   0.0305115  -0.0036748   0.0012753  -0.0005065  -0.0002273   0.0462286   0.0003169
                            0.0000276
 2222222222//0\00           0.0076958  -0.0003866   0.0001443   0.0398917   0.0002929  -0.0000000   0.0000000   0.0000000
                            0.5507717   0.0807427   0.6722178   0.0738860   0.0153237   0.3509482   0.0000001  -0.0000001
                           -0.0000002
 2222222222/0/\00          -0.0002504   0.0002758   0.0006061  -0.0002095   0.0351789   0.0022175   0.0052250   0.0536140
                           -0.0000003   0.0105034  -0.0128017  -0.0251182   0.6629918  -0.0015554  -0.0004039   0.0013451
                            0.6617316
 2222222222//00\0           0.0002504  -0.0002758  -0.0006061   0.0002095  -0.0351790   0.0022175   0.0052250   0.0536139
                            0.0000002  -0.0105032   0.0128013   0.0251176  -0.6629598   0.0015558  -0.0004039   0.0013448
                            0.6617638
 22222222220//0\0          -0.0004017   0.0010339   0.0351635  -0.0000352  -0.0006170   0.0030958  -0.0535830   0.0050940
                           -0.0000001   0.0352203   0.0669047  -0.6588806  -0.0242208   0.0035191  -0.0045351   0.6617359
                           -0.0013474
 2222222222//000\           0.0008473   0.0351603  -0.0010284   0.0001828  -0.0002508  -0.0537793  -0.0028691   0.0025040
                            0.0000001   0.6582221  -0.0792763   0.0275108  -0.0109280  -0.0049037   0.6617357   0.0045361
                            0.0003948
 22222222220//\00           0.0008473   0.0351601  -0.0010283   0.0001828  -0.0002508   0.0537790   0.0028691  -0.0025040
                            0.0000001   0.6582268  -0.0792765   0.0275106  -0.0109280  -0.0049041  -0.6617311  -0.0045362
                           -0.0003945
 2222222222/0/00\           0.0004017  -0.0010339  -0.0351638   0.0000352   0.0006170   0.0030959  -0.0535832   0.0050940
                            0.0000002  -0.0352206  -0.0669056   0.6588882   0.0242207  -0.0035188  -0.0045355   0.6617282
                           -0.0013480
 22222222220//00\          -0.0383842   0.0009772  -0.0004866  -0.0132725  -0.0003515  -0.0000000   0.0000000  -0.0000000
                            0.5507733  -0.0711077  -0.6371273  -0.0658168  -0.0126968   0.4144545  -0.0000003  -0.0000003
                            0.0000000
 22222202222/2000          -0.0000000  -0.0000001  -0.0000000   0.0000000  -0.0000000  -0.1346822  -0.0071853   0.0062709
                           -0.0000000   0.0000001  -0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.0113797  -0.0000780
                           -0.0000068
 2222220222/22000           0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.0055535  -0.0130854  -0.1342690
                            0.0000000  -0.0000000  -0.0000000  -0.0000000   0.0000003   0.0000000  -0.0000070   0.0000231
                            0.0113799
 222222022222/000           0.0000000   0.0000000  -0.0000001  -0.0000000  -0.0000000   0.0077531  -0.1341917   0.0127572
                            0.0000000  -0.0000000   0.0000000  -0.0000001   0.0000000   0.0000000   0.0000780  -0.0113799
                            0.0000232
 2222222222/0\0/0          -0.0209684   0.0006206  -0.0002871  -0.0241916  -0.0002932  -0.0000000  -0.0000000  -0.0000000
                            0.0000013   0.0147159   0.1268894   0.0135387   0.0027155  -0.0061552   0.0000000   0.0000000
                           -0.0000000
 2222222222/\0/00           0.0314310  -0.0007135   0.0003772  -0.0060732   0.0001866  -0.0000000   0.0000000  -0.0000000
                            0.0000021  -0.0059573  -0.0583436  -0.0055963  -0.0009759   0.1143425  -0.0000000  -0.0000000
                           -0.0000000
 22222222220/\00/          -0.0104625   0.0000929  -0.0000901   0.0302650   0.0001066   0.0000000   0.0000000  -0.0000000
                           -0.0000013  -0.0087586  -0.0685462  -0.0079424  -0.0017396  -0.1081880  -0.0000000   0.0000000
                            0.0000000
 222222222200200/          -0.0001611   0.0001775   0.0003900  -0.0001348   0.0226386   0.0008828   0.0020801   0.0213435
                            0.0000000  -0.0014395   0.0017545   0.0034426  -0.0908655   0.0002132   0.0000434  -0.0001445
                           -0.0710888
 222222222202000/           0.0001611  -0.0001775  -0.0003900   0.0001348  -0.0226384   0.0008828   0.0020801   0.0213434
                           -0.0000000   0.0014395  -0.0017545  -0.0034425   0.0908613  -0.0002132   0.0000434  -0.0001445
                           -0.0710934
 2222222222200/00          -0.0002585   0.0006653   0.0226289  -0.0000227  -0.0003970  -0.0012325   0.0213313  -0.0020279
                            0.0000000  -0.0048270  -0.0091694   0.0903008   0.0033195  -0.0004823  -0.0004873   0.0710921
                           -0.0001448
 2222222222020/00           0.0002585  -0.0006654  -0.0226289   0.0000227   0.0003971  -0.0012325   0.0213314  -0.0020279
                           -0.0000000   0.0048270   0.0091694  -0.0903007  -0.0033195   0.0004823  -0.0004872   0.0710928
                           -0.0001447
 22222222220020/0           0.0005452   0.0226267  -0.0006618   0.0001177  -0.0001614   0.0214089   0.0011422  -0.0009968
                            0.0000000  -0.0902122   0.0108651  -0.0037704   0.0014977   0.0006721   0.0710894   0.0004873
                            0.0000424
 22222222222000/0          -0.0005452  -0.0226265   0.0006618  -0.0001177   0.0001614   0.0214095   0.0011422  -0.0009968
                            0.0000000   0.0902101  -0.0108649   0.0037704  -0.0014977  -0.0006721   0.0710930   0.0004873
                            0.0000424
 2222222222/\00/0          -0.0001139   0.0001255   0.0002758  -0.0000953   0.0160076  -0.0009877  -0.0023272  -0.0238795
                            0.0000000  -0.0010179   0.0012406   0.0024341  -0.0642470   0.0001508  -0.0000509   0.0001694
                            0.0833646
 2222222222/0\/00           0.0001139  -0.0001255  -0.0002758   0.0000953  -0.0160075  -0.0009877  -0.0023272  -0.0238793
                           -0.0000001   0.0010179  -0.0012406  -0.0024342   0.0642503  -0.0001507  -0.0000509   0.0001694
                            0.0833619
 22222222220/\/00          -0.0003855  -0.0159992   0.0004679  -0.0000832   0.0001141  -0.0239528  -0.0012779   0.0011153
                            0.0000000   0.0637889  -0.0076827   0.0026661  -0.0010590  -0.0004753  -0.0833616  -0.0005714
                           -0.0000497
 22222222220/\0/0          -0.0001828   0.0004705   0.0160009  -0.0000160  -0.0002807   0.0013789  -0.0238655   0.0022688
                            0.0000000  -0.0034133  -0.0064839   0.0638537   0.0023473  -0.0003410   0.0005713  -0.0833593
                            0.0001698
 2222222222/\000/           0.0003855   0.0159991  -0.0004679   0.0000832  -0.0001141  -0.0239527  -0.0012779   0.0011152
                           -0.0000000  -0.0637892   0.0076828  -0.0026661   0.0010591   0.0004752  -0.0833590  -0.0005714
                           -0.0000497
 2222222222/0\00/           0.0001828  -0.0004705  -0.0160008   0.0000160   0.0002807   0.0013789  -0.0238653   0.0022688
                           -0.0000001   0.0034134   0.0064841  -0.0638549  -0.0023473   0.0003410   0.0005713  -0.0833581
                            0.0001698
 2222220222/2/0\0           0.0107581  -0.0002071   0.0001200  -0.0093315   0.0000206  -0.0000000  -0.0000000   0.0000000
                            0.0510999  -0.0009080  -0.0033066  -0.0007605  -0.0002475  -0.0721325   0.0000000   0.0000000
                            0.0000000
 2222220222//20\0          -0.0000878   0.0000967   0.0002125  -0.0000734   0.0123323   0.0002059   0.0004851   0.0049780
                           -0.0000000   0.0009898  -0.0012064  -0.0023670   0.0624757  -0.0001466   0.0000392  -0.0001306
                           -0.0642874
 2222220222/2/\00           0.0000878  -0.0000967  -0.0002125   0.0000734  -0.0123324   0.0002059   0.0004851   0.0049780
                            0.0000000  -0.0009898   0.0012064   0.0023671  -0.0624787   0.0001466   0.0000392  -0.0001307
                           -0.0642845
 2222220222//200\          -0.0002970  -0.0123255   0.0003605  -0.0000641   0.0000879  -0.0049934  -0.0002664   0.0002325
                           -0.0000000  -0.0620295   0.0074708  -0.0025926   0.0010298   0.0004621  -0.0642845  -0.0004407
                           -0.0000384
 22222202222//\00          -0.0002970  -0.0123260   0.0003605  -0.0000641   0.0000879   0.0049937   0.0002664  -0.0002325
                           -0.0000000  -0.0620296   0.0074708  -0.0025925   0.0010298   0.0004622   0.0642841   0.0004407
                            0.0000383
 22222202222//0\0           0.0001408  -0.0003624  -0.0123271   0.0000123   0.0002163   0.0002875  -0.0049758   0.0004730
                            0.0000000  -0.0033191  -0.0063049   0.0620915   0.0022825  -0.0003316   0.0004406  -0.0642835
                            0.0001309
 2222220222/2/00\          -0.0001408   0.0003625   0.0123272  -0.0000123  -0.0002163   0.0002875  -0.0049757   0.0004730
                           -0.0000000   0.0033191   0.0063050  -0.0620922  -0.0022825   0.0003316   0.0004406  -0.0642828
                            0.0001310
 2222220222//2\00          -0.0026981   0.0001355  -0.0000506  -0.0139844  -0.0001027  -0.0000000  -0.0000000   0.0000000
                           -0.0511009  -0.0076090  -0.0633481  -0.0069628  -0.0014441  -0.0330732  -0.0000000   0.0000000
                            0.0000000
 22222202222//00\           0.0134560  -0.0003426   0.0001706   0.0046527   0.0001232  -0.0000000  -0.0000000  -0.0000000
                           -0.0511017   0.0067010   0.0600415   0.0062024   0.0011965  -0.0390577   0.0000000   0.0000000
                           -0.0000000

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1          -0.387236   -0.006799   -0.010908    0.873237    0.023010   -0.000000   -0.000000    0.000000    0.000000   -0.020285
            -0.000765    0.000226   -0.000362    0.024410    0.000000    0.000000    0.000000
 2           0.004699    0.007490    0.028079   -0.022669    0.954887    0.000000   -0.000000    0.000000   -0.000000    0.000606
            -0.031727   -0.000249    0.000933   -0.000474    0.000000   -0.000000   -0.000000
 3          -0.003643    0.016460    0.954987    0.011178   -0.027928    0.000000    0.000000    0.000000   -0.000000   -0.000279
             0.000928   -0.000547    0.031730    0.000273   -0.000000   -0.000000   -0.000000
 4           0.873611   -0.005689   -0.000956    0.387215    0.004966    0.000000    0.000000   -0.000000    0.000000   -0.024415
            -0.000165    0.000189   -0.000032   -0.020297    0.000000   -0.000000    0.000000
 5           0.002473    0.955397   -0.016756    0.008506   -0.006812   -0.000000    0.000000   -0.000000   -0.000000   -0.000290
             0.000226   -0.031744   -0.000557    0.000052   -0.000000   -0.000000   -0.000000
 6           0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.039334   -0.054914    0.953926    0.000000    0.000000
            -0.000000   -0.000000    0.000000   -0.000000    0.032208   -0.001328   -0.001854
 7          -0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.092681    0.950451    0.050892    0.000000   -0.000000
            -0.000000    0.000000   -0.000000    0.000000    0.001718   -0.003129    0.032091
 8          -0.000000    0.000000   -0.000000    0.000000    0.000000    0.951000   -0.090356   -0.044415    0.000000    0.000000
            -0.000000    0.000000    0.000000    0.000000   -0.001500   -0.032109   -0.003051
 9           0.000000   -0.000000   -0.000000   -0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.958921   -0.000001
             0.000000   -0.000000    0.000000    0.000012    0.000000   -0.000000    0.000000
 10          0.001977    0.000521    0.001748    0.003234    0.032660    0.000000    0.000000    0.000000   -0.000000    0.109841
             0.950285    0.015164   -0.050848    0.009759   -0.000003    0.000000   -0.000000
 11          0.015177   -0.000635    0.003320    0.028760   -0.003934   -0.000000   -0.000000   -0.000000    0.000001    0.945866
            -0.114452   -0.018482   -0.096592    0.024157    0.000000   -0.000000   -0.000001
 12          0.001788   -0.001246   -0.032694    0.002990    0.001365   -0.000000    0.000000    0.000000   -0.000000    0.101034
             0.039717   -0.036263    0.951238    0.007984    0.000000   -0.000000    0.000005
 13          0.000398    0.032896   -0.001202    0.000581   -0.000542    0.000001    0.000000    0.000000    0.000000    0.020291
            -0.015777    0.957144    0.034968    0.002862    0.000000    0.000023   -0.000000
 14          0.029100   -0.000077    0.000175   -0.015411   -0.000243    0.000000   -0.000000    0.000000   -0.000012   -0.025879
            -0.007080   -0.002246   -0.005080    0.957740    0.000000    0.000000    0.000000
 15         -0.000000    0.000000    0.000000    0.000000   -0.000000   -0.000020    0.000228   -0.033241   -0.000000    0.000000
             0.000003    0.000000   -0.000000   -0.000000    0.958015   -0.000585   -0.006566
 16         -0.000000    0.000000    0.000001    0.000000   -0.000000    0.000068   -0.033241   -0.000228   -0.000000    0.000000
            -0.000000    0.000000   -0.000005   -0.000000    0.006567    0.001947    0.958013
 17         -0.000000   -0.000001    0.000000   -0.000000    0.000000    0.033242    0.000068   -0.000020    0.000000   -0.000000
             0.000000   -0.000023   -0.000000   -0.000000    0.000571    0.958035   -0.001951

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.956137    0.000000   -0.000000    0.000000    0.000000   -0.000000    0.000000    0.000000   -0.000000    0.000048
             0.000332    0.000040    0.000002   -0.000430   -0.000000   -0.000000    0.000000
 2           0.000000    0.956137   -0.000000    0.000000   -0.000000    0.000000    0.000000   -0.000000    0.000000    0.000542
            -0.000074    0.000006   -0.000005    0.000004   -0.000000    0.000000    0.000000
 3          -0.000000   -0.000000    0.956137    0.000000   -0.000000    0.000000   -0.000000    0.000000    0.000000    0.000014
             0.000061   -0.000543   -0.000010   -0.000002    0.000000    0.000000    0.000000
 4           0.000000    0.000000    0.000000    0.956137   -0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.000055
             0.000424    0.000048    0.000007    0.000338   -0.000000   -0.000000    0.000000
 5           0.000000   -0.000000   -0.000000   -0.000000    0.956137   -0.000000   -0.000000   -0.000000    0.000000    0.000005
            -0.000006   -0.000011    0.000547   -0.000002    0.000000    0.000000   -0.000000
 6          -0.000000    0.000000    0.000000    0.000000   -0.000000    0.956859   -0.000000   -0.000000   -0.000000    0.000000
            -0.000000    0.000000    0.000000    0.000000   -0.000446    0.000023    0.000018
 7           0.000000    0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.956859   -0.000000   -0.000000    0.000000
            -0.000000    0.000000   -0.000000   -0.000000   -0.000021   -0.000444    0.000044
 8           0.000000   -0.000000    0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.956859   -0.000000    0.000000
            -0.000000   -0.000000   -0.000000    0.000000    0.000020    0.000043    0.000444
 9          -0.000000    0.000000    0.000000   -0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.958921   -0.000000
            -0.000000   -0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.000000
 10          0.000048    0.000542    0.000014    0.000055    0.000005    0.000000    0.000000    0.000000   -0.000000    0.958698
             0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.000000   -0.000000
 11          0.000332   -0.000074    0.000061    0.000424   -0.000006   -0.000000   -0.000000   -0.000000   -0.000000    0.000000
             0.958698    0.000000    0.000000   -0.000000    0.000000    0.000000    0.000000
 12          0.000040    0.000006   -0.000543    0.000048   -0.000011    0.000000    0.000000   -0.000000   -0.000000    0.000000
             0.000000    0.958698    0.000000   -0.000000   -0.000000   -0.000000    0.000000
 13          0.000002   -0.000005   -0.000010    0.000007    0.000547    0.000000   -0.000000   -0.000000    0.000000   -0.000000
             0.000000    0.000000    0.958698   -0.000000    0.000000   -0.000000   -0.000000
 14         -0.000430    0.000004   -0.000002    0.000338   -0.000002    0.000000   -0.000000    0.000000   -0.000000   -0.000000
            -0.000000   -0.000000   -0.000000    0.958698   -0.000000   -0.000000   -0.000000
 15         -0.000000   -0.000000    0.000000   -0.000000    0.000000   -0.000446   -0.000021    0.000020   -0.000000   -0.000000
             0.000000   -0.000000    0.000000   -0.000000    0.958614   -0.000000    0.000000
 16         -0.000000    0.000000    0.000000   -0.000000    0.000000    0.000023   -0.000444    0.000043   -0.000000    0.000000
             0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.958613    0.000000
 17          0.000000    0.000000    0.000000    0.000000   -0.000000    0.000018    0.000044    0.000444    0.000000   -0.000000
             0.000000    0.000000   -0.000000   -0.000000    0.000000    0.000000    0.958614


 RESULTS FOR STATE 1.2
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.87323702 (fixed)   0.95617372 (relaxed)   0.95613662 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00037371   -0.00085737   -0.72832273
 Singles      0.01742774   -0.05737359   -0.06605379
 Pairs        0.07605439   -0.00000000   -0.05935811
 Total        1.09385585   -0.05823097   -0.85373462
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -239.21361650
 Nuclear energy                         0.00000000
 Kinetic energy                        93.12079707
 One electron energy                 -419.37623463
 Two electron energy                  179.30867464
 Virial quotient                       -2.57802304
 Correlation energy                    -0.85394349
 !MRCI STATE 1.2 Energy              -240.067559991975

 Properties without orbital relaxation:

 !MRCI STATE 1.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -240.14770758 (Davidson, fixed reference)
 Cluster corrected energies          -240.14763511 (Davidson, relaxed reference)
 Cluster corrected energies          -240.14770758 (Davidson, rotated reference)

 Cluster corrected energies          -240.14641465 (Pople, fixed reference)
 Cluster corrected energies          -240.14633755 (Pople, relaxed reference)
 Cluster corrected energies          -240.14641465 (Pople, rotated reference)



 RESULTS FOR STATE 2.2
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.95488690 (fixed)   0.95617375 (relaxed)   0.95613666 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00037372   -0.00085737   -0.72832283
 Singles      0.01742769   -0.05737352   -0.06605366
 Pairs        0.07605437    0.00000000   -0.05935810
 Total        1.09385577   -0.05823089   -0.85373459
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -239.21361650
 Nuclear energy                         0.00000000
 Kinetic energy                        93.12079435
 One electron energy                 -419.37623518
 Two electron energy                  179.30867521
 Virial quotient                       -2.57802311
 Correlation energy                    -0.85394346
 !MRCI STATE 2.2 Energy              -240.067559962306

 Properties without orbital relaxation:

 !MRCI STATE 2.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -240.14770749 (Davidson, fixed reference)
 Cluster corrected energies          -240.14763501 (Davidson, relaxed reference)
 Cluster corrected energies          -240.14770749 (Davidson, rotated reference)

 Cluster corrected energies          -240.14641455 (Pople, fixed reference)
 Cluster corrected energies          -240.14633744 (Pople, relaxed reference)
 Cluster corrected energies          -240.14641455 (Pople, rotated reference)



 RESULTS FOR STATE 3.2
 =====================

 Coefficient of reference function:   C(0) = 0.95498711 (fixed)   0.95617376 (relaxed)   0.95613667 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00037372   -0.00085737   -0.72832297
 Singles      0.01742770   -0.05737354   -0.06605369
 Pairs        0.07605433    0.00000017   -0.05935793
 Total        1.09385575   -0.05823074   -0.85373458
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -239.21361649
 Nuclear energy                         0.00000000
 Kinetic energy                        93.12079597
 One electron energy                 -419.37623684
 Two electron energy                  179.30867689
 Virial quotient                       -2.57802307
 Correlation energy                    -0.85394345
 !MRCI STATE 3.2 Energy              -240.067559947618

 Properties without orbital relaxation:

 !MRCI STATE 3.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -240.14770745 (Davidson, fixed reference)
 Cluster corrected energies          -240.14763497 (Davidson, relaxed reference)
 Cluster corrected energies          -240.14770745 (Davidson, rotated reference)

 Cluster corrected energies          -240.14641451 (Pople, fixed reference)
 Cluster corrected energies          -240.14633741 (Pople, relaxed reference)
 Cluster corrected energies          -240.14641451 (Pople, rotated reference)



 RESULTS FOR STATE 4.2
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.87361095 (fixed)   0.95617371 (relaxed)   0.95613661 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00037372   -0.00085737   -0.72832280
 Singles      0.01742765   -0.05737342   -0.06605355
 Pairs        0.07605450   -0.00000000   -0.05935819
 Total        1.09385588   -0.05823079   -0.85373453
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -239.21361650
 Nuclear energy                         0.00000000
 Kinetic energy                        93.12079673
 One electron energy                 -419.37623816
 Two electron energy                  179.30867826
 Virial quotient                       -2.57802304
 Correlation energy                    -0.85394340
 !MRCI STATE 4.2 Energy              -240.067559900003

 Properties without orbital relaxation:

 !MRCI STATE 4.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -240.14770751 (Davidson, fixed reference)
 Cluster corrected energies          -240.14763502 (Davidson, relaxed reference)
 Cluster corrected energies          -240.14770751 (Davidson, rotated reference)

 Cluster corrected energies          -240.14641457 (Pople, fixed reference)
 Cluster corrected energies          -240.14633746 (Pople, relaxed reference)
 Cluster corrected energies          -240.14641457 (Pople, rotated reference)



 RESULTS FOR STATE 5.2
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.95539723 (fixed)   0.95617376 (relaxed)   0.95613666 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00037373   -0.00085737   -0.72832284
 Singles      0.01742763   -0.05737343   -0.06605352
 Pairs        0.07605441    0.00000000   -0.05935815
 Total        1.09385577   -0.05823080   -0.85373451
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -239.21361650
 Nuclear energy                         0.00000000
 Kinetic energy                        93.12079334
 One electron energy                 -419.37623630
 Two electron energy                  179.30867642
 Virial quotient                       -2.57802314
 Correlation energy                    -0.85394338
 !MRCI STATE 5.2 Energy              -240.067559878991

 Properties without orbital relaxation:

 !MRCI STATE 5.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -240.14770739 (Davidson, fixed reference)
 Cluster corrected energies          -240.14763490 (Davidson, relaxed reference)
 Cluster corrected energies          -240.14770739 (Davidson, rotated reference)

 Cluster corrected energies          -240.14641445 (Pople, fixed reference)
 Cluster corrected energies          -240.14633734 (Pople, relaxed reference)
 Cluster corrected energies          -240.14641445 (Pople, rotated reference)



 RESULTS FOR STATE 6.2
 =====================

 Maximum overlap with reference state  8

 Coefficient of reference function:   C(0) = 0.95392606 (fixed)   0.95697645 (relaxed)   0.95685944 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00048229   -0.00071865   -0.73858146
 Singles      0.01186094   -0.04461674   -0.05006922
 Pairs        0.07986065    0.00208802   -0.06015020
 Total        1.09220387   -0.04324736   -0.84880088
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -239.19045711
 Nuclear energy                         0.00000000
 Kinetic energy                        93.11418966
 One electron energy                 -419.22660409
 Two electron energy                  179.18715231
 Virial quotient                       -2.57790411
 Correlation energy                    -0.84899467
 !MRCI STATE 6.2 Energy              -240.039451781928

 Properties without orbital relaxation:

 !MRCI STATE 6.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -240.11773238 (Davidson, fixed reference)
 Cluster corrected energies          -240.11750562 (Davidson, relaxed reference)
 Cluster corrected energies          -240.11773238 (Davidson, rotated reference)

 Cluster corrected energies          -240.11635944 (Pople, fixed reference)
 Cluster corrected energies          -240.11611893 (Pople, relaxed reference)
 Cluster corrected energies          -240.11635944 (Pople, rotated reference)



 RESULTS FOR STATE 7.2
 =====================

 Coefficient of reference function:   C(0) = 0.95045138 (fixed)   0.95697646 (relaxed)   0.95685944 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00048228   -0.00071865   -0.70358099
 Singles      0.01186094   -0.04461676   -0.05006920
 Pairs        0.07986063   -0.03613960   -0.09515067
 Total        1.09220386   -0.08147500   -0.84880086
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -239.19045710
 Nuclear energy                         0.00000000
 Kinetic energy                        93.11420352
 One electron energy                 -419.22661754
 Two electron energy                  179.18716578
 Virial quotient                       -2.57790372
 Correlation energy                    -0.84899466
 !MRCI STATE 7.2 Energy              -240.039451764775

 Properties without orbital relaxation:

 !MRCI STATE 7.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -240.11773235 (Davidson, fixed reference)
 Cluster corrected energies          -240.11750559 (Davidson, relaxed reference)
 Cluster corrected energies          -240.11773235 (Davidson, rotated reference)

 Cluster corrected energies          -240.11635941 (Pople, fixed reference)
 Cluster corrected energies          -240.11611890 (Pople, relaxed reference)
 Cluster corrected energies          -240.11635941 (Pople, rotated reference)



 RESULTS FOR STATE 8.2
 =====================

 Maximum overlap with reference state  6

 Coefficient of reference function:   C(0) = 0.95099973 (fixed)   0.95697637 (relaxed)   0.95685935 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00048229   -0.00071865   -0.73981512
 Singles      0.01186099   -0.04461681   -0.05006924
 Pairs        0.07986079    0.00343567   -0.05891650
 Total        1.09220407   -0.04189979   -0.84880086
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -239.19045710
 Nuclear energy                         0.00000000
 Kinetic energy                        93.11418861
 One electron energy                 -419.22660184
 Two electron energy                  179.18715008
 Virial quotient                       -2.57790413
 Correlation energy                    -0.84899466
 !MRCI STATE 8.2 Energy              -240.039451761987

 Properties without orbital relaxation:

 !MRCI STATE 8.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -240.11773252 (Davidson, fixed reference)
 Cluster corrected energies          -240.11750576 (Davidson, relaxed reference)
 Cluster corrected energies          -240.11773252 (Davidson, rotated reference)

 Cluster corrected energies          -240.11635960 (Pople, fixed reference)
 Cluster corrected energies          -240.11611908 (Pople, relaxed reference)
 Cluster corrected energies          -240.11635960 (Pople, rotated reference)



 RESULTS FOR STATE 9.2
 =====================

 Coefficient of reference function:   C(0) = 0.95892100 (fixed)   0.95897834 (relaxed)   0.95892100 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00046278   -0.00102498   -0.70818653
 Singles      0.01758331   -0.05864167   -0.06730888
 Pairs        0.06946662   -0.00000010   -0.05292484
 Total        1.08751270   -0.05966675   -0.82842024
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -239.04355021
 Nuclear energy                         0.00000000
 Kinetic energy                        92.79799610
 One electron energy                 -414.33999514
 Two electron energy                  174.46802469
 Virial quotient                       -2.58488309
 Correlation energy                    -0.82842024
 !MRCI STATE 9.2 Energy              -239.871970457517

 Properties without orbital relaxation:

 !MRCI STATE 9.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -239.94446775 (Davidson, fixed reference)
 Cluster corrected energies          -239.94436003 (Davidson, relaxed reference)
 Cluster corrected energies          -239.94446775 (Davidson, rotated reference)

 Cluster corrected energies          -239.94290798 (Pople, fixed reference)
 Cluster corrected energies          -239.94279463 (Pople, relaxed reference)
 Cluster corrected energies          -239.94290798 (Pople, rotated reference)



 RESULTS FOR STATE 10.2
 ======================

 Maximum overlap with reference state 11

 Coefficient of reference function:   C(0) = 0.95028474 (fixed)   0.95875452 (relaxed)   0.95869754 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00047316   -0.00105495   -0.70960086
 Singles      0.01750465   -0.05870292   -0.06731526
 Pairs        0.07004193    0.00000017   -0.05345348
 Total        1.08801974   -0.05975770   -0.83036960
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -239.03097531
 Nuclear energy                         0.00000000
 Kinetic energy                        92.81729173
 One electron energy                 -414.44225535
 Two electron energy                  174.58111931
 Virial quotient                       -2.58422899
 Correlation energy                    -0.83016072
 !MRCI STATE 10.2 Energy             -239.861136036957

 Properties without orbital relaxation:

 !MRCI STATE 10.2 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -239.93420656 (Davidson, fixed reference)
 Cluster corrected energies          -239.93409921 (Davidson, relaxed reference)
 Cluster corrected energies          -239.93420656 (Davidson, rotated reference)

 Cluster corrected energies          -239.93266577 (Pople, fixed reference)
 Cluster corrected energies          -239.93255270 (Pople, relaxed reference)
 Cluster corrected energies          -239.93266577 (Pople, rotated reference)



 RESULTS FOR STATE 11.2
 ======================

 Maximum overlap with reference state 10

 Coefficient of reference function:   C(0) = 0.94586606 (fixed)   0.95875455 (relaxed)   0.95869757 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00047316   -0.00105495   -0.70960123
 Singles      0.01750464   -0.05870293   -0.06731523
 Pairs        0.07004187    0.00000054   -0.05345312
 Total        1.08801966   -0.05975733   -0.83036958
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -239.03097531
 Nuclear energy                         0.00000000
 Kinetic energy                        92.81728956
 One electron energy                 -414.44225442
 Two electron energy                  174.58111840
 Virial quotient                       -2.58422905
 Correlation energy                    -0.83016071
 !MRCI STATE 11.2 Energy             -239.861136016563

 Properties without orbital relaxation:

 !MRCI STATE 11.2 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -239.93420648 (Davidson, fixed reference)
 Cluster corrected energies          -239.93409913 (Davidson, relaxed reference)
 Cluster corrected energies          -239.93420648 (Davidson, rotated reference)

 Cluster corrected energies          -239.93266568 (Pople, fixed reference)
 Cluster corrected energies          -239.93255261 (Pople, relaxed reference)
 Cluster corrected energies          -239.93266568 (Pople, rotated reference)



 RESULTS FOR STATE 12.2
 ======================

 Maximum overlap with reference state 13

 Coefficient of reference function:   C(0) = 0.95123754 (fixed)   0.95875453 (relaxed)   0.95869755 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00047316   -0.00105494   -0.70959684
 Singles      0.01750463   -0.05870290   -0.06731520
 Pairs        0.07004192   -0.00000419   -0.05345750
 Total        1.08801971   -0.05976203   -0.83036954
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -239.03097531
 Nuclear energy                         0.00000000
 Kinetic energy                        92.81729204
 One electron energy                 -414.44225599
 Two electron energy                  174.58112001
 Virial quotient                       -2.58422898
 Correlation energy                    -0.83016066
 !MRCI STATE 12.2 Energy             -239.861135978575

 Properties without orbital relaxation:

 !MRCI STATE 12.2 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -239.93420648 (Davidson, fixed reference)
 Cluster corrected energies          -239.93409912 (Davidson, relaxed reference)
 Cluster corrected energies          -239.93420648 (Davidson, rotated reference)

 Cluster corrected energies          -239.93266568 (Pople, fixed reference)
 Cluster corrected energies          -239.93255261 (Pople, relaxed reference)
 Cluster corrected energies          -239.93266568 (Pople, rotated reference)



 RESULTS FOR STATE 13.2
 ======================

 Maximum overlap with reference state 12

 Coefficient of reference function:   C(0) = 0.95714436 (fixed)   0.95875454 (relaxed)   0.95869754 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00047318   -0.00105494   -0.70960073
 Singles      0.01750458   -0.05870287   -0.06731509
 Pairs        0.07004197    0.00000006   -0.05345366
 Total        1.08801973   -0.05975775   -0.83036948
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -239.03097531
 Nuclear energy                         0.00000000
 Kinetic energy                        92.81729497
 One electron energy                 -414.44226000
 Two electron energy                  174.58112408
 Virial quotient                       -2.58422890
 Correlation energy                    -0.83016061
 !MRCI STATE 13.2 Energy             -239.861135920491

 Properties without orbital relaxation:

 !MRCI STATE 13.2 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -239.93420643 (Davidson, fixed reference)
 Cluster corrected energies          -239.93409905 (Davidson, relaxed reference)
 Cluster corrected energies          -239.93420643 (Davidson, rotated reference)

 Cluster corrected energies          -239.93266563 (Pople, fixed reference)
 Cluster corrected energies          -239.93255254 (Pople, relaxed reference)
 Cluster corrected energies          -239.93266563 (Pople, rotated reference)



 RESULTS FOR STATE 14.2
 ======================

 Coefficient of reference function:   C(0) = 0.95774030 (fixed)   0.95875469 (relaxed)   0.95869770 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00047316   -0.00105493   -0.70960069
 Singles      0.01750435   -0.05870258   -0.06731461
 Pairs        0.07004186   -0.00000016   -0.05345384
 Total        1.08801937   -0.05975768   -0.83036914
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -239.03097531
 Nuclear energy                         0.00000000
 Kinetic energy                        92.81728994
 One electron energy                 -414.44225346
 Two electron energy                  174.58111788
 Virial quotient                       -2.58422903
 Correlation energy                    -0.83016026
 !MRCI STATE 14.2 Energy             -239.861135575083

 Properties without orbital relaxation:

 !MRCI STATE 14.2 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -239.93420576 (Davidson, fixed reference)
 Cluster corrected energies          -239.93409839 (Davidson, relaxed reference)
 Cluster corrected energies          -239.93420576 (Davidson, rotated reference)

 Cluster corrected energies          -239.93266494 (Pople, fixed reference)
 Cluster corrected energies          -239.93255187 (Pople, relaxed reference)
 Cluster corrected energies          -239.93266494 (Pople, rotated reference)



 RESULTS FOR STATE 15.2
 ======================

 Coefficient of reference function:   C(0) = 0.95801471 (fixed)   0.95867418 (relaxed)   0.95861381 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00047688   -0.00104369   -0.71538201
 Singles      0.01727047   -0.05798747   -0.06647433
 Pairs        0.07046247    0.00528706   -0.04893361
 Total        1.08820982   -0.05374410   -0.83078995
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -239.02526098
 Nuclear energy                         0.00000000
 Kinetic energy                        92.82501976
 One electron energy                 -414.48413480
 Two electron energy                  174.62827767
 Virial quotient                       -2.58395697
 Correlation energy                    -0.83059615
 !MRCI STATE 15.2 Energy             -239.855857130195

 Properties without orbital relaxation:

 !MRCI STATE 15.2 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -239.92912386 (Davidson, fixed reference)
 Cluster corrected energies          -239.92901003 (Davidson, relaxed reference)
 Cluster corrected energies          -239.92912386 (Davidson, rotated reference)

 Cluster corrected energies          -239.92759070 (Pople, fixed reference)
 Cluster corrected energies          -239.92747078 (Pople, relaxed reference)
 Cluster corrected energies          -239.92759070 (Pople, rotated reference)



 RESULTS FOR STATE 16.2
 ======================

 Maximum overlap with reference state 17

 Coefficient of reference function:   C(0) = 0.95801256 (fixed)   0.95867385 (relaxed)   0.95861347 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00047688   -0.00104368   -0.00164091
 Singles      0.01727067   -0.05798714   -0.06647476
 Pairs        0.07046303   -0.77141316   -0.76267410
 Total        1.08821057   -0.83044398   -0.83078977
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -239.02526098
 Nuclear energy                         0.00000000
 Kinetic energy                        92.82513385
 One electron energy                 -414.48415380
 Two electron energy                  174.62829685
 Virial quotient                       -2.58395380
 Correlation energy                    -0.83059597
 !MRCI STATE 16.2 Energy             -239.855856946767

 Properties without orbital relaxation:

 !MRCI STATE 16.2 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -239.92912429 (Davidson, fixed reference)
 Cluster corrected energies          -239.92901045 (Davidson, relaxed reference)
 Cluster corrected energies          -239.92912429 (Davidson, rotated reference)

 Cluster corrected energies          -239.92759117 (Pople, fixed reference)
 Cluster corrected energies          -239.92747123 (Pople, relaxed reference)
 Cluster corrected energies          -239.92759117 (Pople, rotated reference)



 RESULTS FOR STATE 17.2
 ======================

 Maximum overlap with reference state 16

 Coefficient of reference function:   C(0) = 0.95803531 (fixed)   0.95867426 (relaxed)   0.95861390 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00047687   -0.00104369   -0.71196734
 Singles      0.01727026   -0.05798724   -0.06647388
 Pairs        0.07046249    0.00157110   -0.05234845
 Total        1.08820961   -0.05745983   -0.83078966
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -239.02526098
 Nuclear energy                         0.00000000
 Kinetic energy                        92.82502409
 One electron energy                 -414.48413640
 Two electron energy                  174.62827955
 Virial quotient                       -2.58395685
 Correlation energy                    -0.83059587
 !MRCI STATE 17.2 Energy             -239.855856842694

 Properties without orbital relaxation:

 !MRCI STATE 17.2 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -239.92912338 (Davidson, fixed reference)
 Cluster corrected energies          -239.92900956 (Davidson, relaxed reference)
 Cluster corrected energies          -239.92912338 (Davidson, rotated reference)

 Cluster corrected energies          -239.92759022 (Pople, fixed reference)
 Cluster corrected energies          -239.92747030 (Pople, relaxed reference)
 Cluster corrected energies          -239.92759022 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       57.06       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       6     4800.88       700     1000      520     2140     5302     5102   
                                         GEOM     BASIS   MCVARS    MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI       INT
 CPU TIMES  *     19721.67  19618.68     90.17      8.01      4.47
 REAL TIME  *     20353.28 SEC
 DISK USED  *         4.74 GB (local),      152.14 GB (total)
 SF USED    *        46.60 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(2)     =      -240.14770758  AU                              
 SETTING HLSDIAG(3)     =      -240.14770749  AU                              
 SETTING HLSDIAG(4)     =      -240.14770745  AU                              
 SETTING HLSDIAG(5)     =      -240.14770751  AU                              
 SETTING HLSDIAG(6)     =      -240.14770739  AU                              
 SETTING HLSDIAG(7)     =      -240.11773238  AU                              
 SETTING HLSDIAG(8)     =      -240.11773235  AU                              
 SETTING HLSDIAG(9)     =      -240.11773252  AU                              
 SETTING HLSDIAG(10)    =      -239.94446775  AU                              
 SETTING HLSDIAG(11)    =      -239.93420656  AU                              
 SETTING HLSDIAG(12)    =      -239.93420648  AU                              
 SETTING HLSDIAG(13)    =      -239.93420648  AU                              
 SETTING HLSDIAG(14)    =      -239.93420643  AU                              
 SETTING HLSDIAG(15)    =      -239.93420576  AU                              
 SETTING HLSDIAG(16)    =      -239.92912386  AU                              
 SETTING HLSDIAG(17)    =      -239.92912429  AU                              
 SETTING HLSDIAG(18)    =      -239.92912338  AU                              


         HLSDIAG
    -240.1925120
    -240.1477076
    -240.1477075
    -240.1477075
    -240.1477075
    -240.1477074
    -240.1177324
    -240.1177323
    -240.1177325
    -239.9444678
    -239.9342066
    -239.9342065
    -239.9342065
    -239.9342064
    -239.9342058
    -239.9291239
    -239.9291243
    -239.9291234
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Diagonal elements of H will be replaced by values from variable HLSDIAG


   ******************************
   *** Spin-orbit calculation ***
   ******************************


   Spin-orbit matrix elements
   ==========================

 Wavefunction restored from record  5302.2  Symmetry=2  S= 1.5  NSTATE=   1

 Original energies:   -240.117892
 Replaced energies:   -240.192512

 Wavefunction restored from record  5102.2  Symmetry=2  S= 0.5  NSTATE=  17

 Original energies:   -240.067560   -240.067560   -240.067560   -240.067560   -240.067560   -240.039452   -240.039452   -240.039452
                      -239.871970   -239.861136   -239.861136   -239.861136   -239.861136   -239.861136   -239.855857   -239.855857
                      -239.855857
 Replaced energies:   -240.147708   -240.147707   -240.147707   -240.147708   -240.147707   -240.117732   -240.117732   -240.117733
                      -239.944468   -239.934207   -239.934206   -239.934206   -239.934206   -239.934206   -239.929124   -239.929124
                      -239.929123



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=  -240.19251196

 Wigner-Eckart theorem used for 23 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00      -0.00       0.00      -0.00      -0.00    2128.68
                            0.00       0.00       0.00       0.00      -0.00       0.00       0.00       0.00      -0.00      87.77

    2   1.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00     141.50

    3   1.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00      -0.00       0.00      -0.00      -0.00    1228.99
                           -0.00      -0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00       0.00     -50.68

    4   1.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    5   1.2  0.5  0.5       0.00       0.00       0.00       0.00    9833.42       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00  -18096.05   81721.95   39960.08 -163476.52   88079.84  -91818.90

    6   2.2  0.5  0.5      -0.00       0.00      -0.00       0.00       0.00    9833.44       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00      -0.00  -81721.95   38065.64  -84363.20   18459.85 -264473.73   79353.34

    7   3.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00    9833.45       0.00       0.00       0.00
                           -0.00       0.00       0.00      -0.00  -39960.08   84363.20  148291.62   -5633.30   20218.64   40807.08

    8   4.2  0.5  0.5      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00    9833.44       0.00       0.00
                           -0.00       0.00       0.00      -0.00  163476.52  -18459.85    5633.30  -72167.45     820.88  -43403.32

    9   5.2  0.5  0.5      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00    9833.47       0.00
                            0.00       0.00      -0.00      -0.00  -88079.84  264473.73  -20218.64    -820.88 -259854.81 -133221.48

   10   6.2  0.5  0.5    2128.68       0.00    1228.99       0.00       0.00       0.00       0.00       0.00       0.00   16412.22
                          -87.77    -141.50      50.68      -0.00   91818.90  -79353.34  -40807.08   43403.32  133221.48    7572.21

   11   7.2  0.5  0.5     113.57       0.00      65.57       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -206.82    2449.04     119.41      -0.00    8438.99 -172188.00   99872.61  144081.40  -19199.90  194815.37

   12   8.2  0.5  0.5     -99.11       0.00     -57.22       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                        -2122.15    -232.82    1225.23      -0.00   95047.38 -263253.10   39339.02  -10859.90 -208502.85  411231.99

   13   9.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00      -0.00 -153087.62  125008.44 -174744.32  667014.90 -171517.69   94087.99

   14  10.2  0.5  0.5      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00 -892842.02 -290284.10  -95921.76 -112796.11   16662.73  182861.43

   15  11.2  0.5  0.5      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00      -0.00   18202.98  125086.68  -18754.03  363394.94  -72952.33   81370.17

   16  12.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00      -0.00  -49118.77   19289.36 -461306.19  -11248.20 -106594.10 -111423.68

   17  13.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.01      -0.00      -0.01      -0.00 -317267.33  317555.35   16647.78  -71486.15  703501.71-1119031.86

   18  14.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.00  673373.86 -282977.71  492468.58 -298160.86  226501.87 -614513.46

   19  15.2  0.5  0.5     556.17       0.00     321.10       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.34      -4.40       0.20      -0.00 -919851.91  240118.83 -167279.73 -146089.70  169064.54 -108595.35

   20  16.2  0.5  0.5       3.81       0.00       2.20       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            1.13     642.19      -0.65      -0.00  159116.97  341236.86  367633.50 -235394.08   37197.38 -334012.12

   21  17.2  0.5  0.5       0.33       0.00       0.19       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          556.18      -1.31    -321.11      -0.00  280475.49  -33299.98 -179444.61   96942.40  112074.53  589986.30

   22   1.2  0.5 -0.5       0.00       0.00       0.00       0.00  -84882.90-2689248.47  109066.27    3346.72  -47367.47 3773380.95
                           -0.00       0.00      -0.00      -0.00   97225.44  146851.28   -6108.49   21474.78 -718783.74  277503.52

   23   2.2  0.5 -0.5       0.00      -0.00       0.00      -0.00 -157408.24   76518.05-1210634.01 -670303.45  101961.20 -189469.39
                           -0.00      -0.00      -0.00       0.00 -559917.95  289812.69 -237979.25  -87952.66  111988.93  614340.42

   24   3.2  0.5 -0.5       0.00       0.00       0.00       0.00  390842.13  131673.86  217715.79  145562.16 1212812.22 -429194.29
                           -0.00      -0.00       0.00       0.00  252415.61-2713286.22       2.96  155335.48 -233292.84 3400044.96

   25   4.2  0.5 -0.5       0.00      -0.00       0.00      -0.00   32419.15  907045.15 -176107.71   -5689.13    5982.70-1403391.47
                           -0.00      -0.00       0.00       0.00  -39348.20  127709.10   21206.16   37129.47  211645.46  148840.95

   26   5.2  0.5 -0.5       0.00      -0.00       0.00      -0.00  367566.82 -137445.41  244334.07  -29645.31  -12764.76  147992.06
                           -0.00       0.00       0.00      -0.00  -82978.03   39633.49  231942.84 -256774.18   13455.86  -87795.07

   27   6.2  0.5 -0.5       0.00    1228.99       0.00    2128.68   -9280.40  205158.56   55484.98-1569614.21  -73941.32 -135878.61
                           -0.00     -50.68    -141.50      87.77-1034287.77 -335071.80  -34664.75  327320.21 -231994.16 -693507.67

   28   7.2  0.5 -0.5       0.00      65.57       0.00     113.57  310448.25  117449.36  243245.07   56063.72 1019371.11 -425615.35
                           -0.00    -119.41    2449.04     206.82  463682.12-1075374.14  -48990.28  427939.15 -286133.62 2368178.96

   29   8.2  0.5 -0.5       0.00     -57.22       0.00     -99.11 -107910.89 -164813.99  282437.83 -124667.93  -28609.72  108007.76
                           -0.00   -1225.23    -232.82    2122.15  712742.63  142187.97   29395.28  503885.63   54888.58 -135207.20

   30   9.2  0.5 -0.5       0.00       0.00       0.00       0.00 1303189.6929164438.40   48810.70  645490.91-5029904.91***********
                           -0.00      -0.00       0.00       0.00 1127562.25 -700824.07  -30304.26  175755.30 3949143.20 -470654.74

   31  10.2  0.5 -0.5       0.00      -0.00       0.00      -0.00-1313417.79 4927760.56 1476645.03-8306060.28 -250489.54-4838733.06
                           -0.00       0.00      -0.00      -0.00 5174092.57 1920253.37 -868569.76 -816563.06  432546.65 2149603.60

   32  11.2  0.5 -0.5       0.00      -0.00       0.00      -0.00 1733183.2535793259.37 -707598.98 2580913.08-4439187.48***********
                           -0.00      -0.00      -0.00       0.00 1046939.63 -208436.98  812794.21  624691.25 4706297.66-1414831.53

   33  12.2  0.5 -0.5       0.00       0.00       0.00       0.00 1792462.26 3397802.95-1373859.49-1049594.17-3040018.62-2535335.25
                           -0.00      -0.00       0.00       0.00-2239859.49-8048299.85-4418519.49 -943168.81 2192367.70 4590690.59

   34  13.2  0.5 -0.5       0.00       0.00       0.00       0.00 2208503.13  307591.18 1304410.31-2733881.63  290885.05 -318321.13
                           -0.00       0.01      -0.00      -0.01 -679222.34 -161305.55 3558010.24  986789.70  -35556.01  577056.73

   35  14.2  0.5 -0.5       0.00       0.00       0.00       0.00  394995.7411535377.15   68550.03   99937.96 -636936.91-8446976.11
                           -0.00       0.00       0.00      -0.00  654946.01 -403776.59 -134831.74  455820.85 1703026.87  259716.54

   36  15.2  0.5 -0.5       0.00     321.10       0.00     556.17 1224135.16-1199304.86-1664491.31 7848608.26  174268.57 1233801.93
                           -0.00      -0.20      -4.40       0.34-3766988.70 2186407.28  533680.60  834743.67  358245.29 2788001.44

   37  16.2  0.5 -0.5       0.00       2.20       0.00       3.81 2023955.65-1140112.63-1404878.17 -827996.81-3304848.74  505576.69
                           -0.00       0.65     642.19      -1.13-2787356.09-3583397.39-4126053.34-1200652.34 2596018.36-2814607.34

   38  17.2  0.5 -0.5       0.00       0.19       0.00       0.33-2318892.45 1308512.57 -749277.00-1171921.20  511931.16-1911960.72
                           -0.00     321.11      -1.31    -556.18  353237.47   39522.47  283883.98 2792068.44 -514786.73  476621.45


   Nr   State  S   Sz       11         12         13         14         15         16         17         18         19         20

    1   1.2  1.5  1.5     113.57     -99.11       0.00      -0.00      -0.00       0.00       0.00       0.00     556.17       3.81
                          206.82    2122.15       0.00      -0.00       0.00       0.00      -0.01      -0.00       0.34      -1.13

    2   1.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                        -2449.04     232.82      -0.00       0.00       0.00      -0.00       0.00      -0.00       4.40    -642.19

    3   1.2  1.5 -0.5      65.57     -57.22       0.00      -0.00      -0.00       0.00       0.00       0.00     321.10       2.20
                         -119.41   -1225.23      -0.00       0.00      -0.00      -0.00       0.01       0.00      -0.20       0.65

    4   1.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    5   1.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                        -8438.99  -95047.38  153087.62  892842.02  -18202.98   49118.77  317267.33 -673373.86  919851.91 -159116.97

    6   2.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                       172188.00  263253.10 -125008.44  290284.10 -125086.68  -19289.36 -317555.35  282977.71 -240118.83 -341236.86

    7   3.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                       -99872.61  -39339.02  174744.32   95921.76   18754.03  461306.19  -16647.78 -492468.58  167279.73 -367633.50

    8   4.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                      -144081.40   10859.90 -667014.90  112796.11 -363394.94   11248.20   71486.15  298160.86  146089.70  235394.08

    9   5.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                        19199.90  208502.85  171517.69  -16662.73   72952.33  106594.10 -703501.71 -226501.87 -169064.54  -37197.38

   10   6.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                      -194815.37 -411231.99  -94087.99 -182861.43  -81370.17  111423.68 1119031.86  614513.46  108595.35  334012.12

   11   7.2  0.5  0.5   16412.23       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                      -117319.09   33625.64  365353.46  -71568.13  139188.58  232512.89   71401.64 -561539.73  -64261.21 -124122.63

   12   8.2  0.5  0.5       0.00   16412.19       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                       -33625.64     204.87 -190569.98   52582.69 -122661.77  329261.81   12357.61  290337.42  -84734.62  387493.21

   13   9.2  0.5  0.5       0.00       0.00   54439.41       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                      -365353.46  190569.98   33535.05 -218952.93  110171.39  110898.62  -89983.92 -197641.37 -229012.23   60950.24

   14  10.2  0.5  0.5       0.00       0.00       0.00   56691.48       0.00       0.00       0.00       0.00       0.00       0.00
                        71568.13  -52582.69  218952.93  -18638.51  -47856.29   26291.17 -101118.68  138122.94  -38759.99  -15234.86

   15  11.2  0.5  0.5       0.00       0.00       0.00       0.00   56691.50       0.00       0.00       0.00       0.00       0.00
                      -139188.58  122661.77 -110171.39   47856.29 -135703.87  198335.86   39206.97  343402.52   47376.92 -188745.56

   16  12.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00   56691.50       0.00       0.00       0.00       0.00
                      -232512.89 -329261.81 -110898.62  -26291.17 -198335.86   39859.51  -66782.90   95055.38    2975.08 -132925.20

   17  13.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00   56691.51       0.00       0.00       0.00
                       -71401.64  -12357.61   89983.92  101118.68  -39206.97   66782.90 -241210.05  -10465.70   28444.67   88744.10

   18  14.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00   56691.66       0.00       0.00
                       561539.73 -290337.42  197641.37 -138122.94 -343402.52  -95055.38   10465.70 -265055.33  115038.40  -61745.35

   19  15.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   57807.00       0.00
                        64261.21   84734.62  229012.23   38759.99  -47376.92   -2975.08  -28444.67 -115038.40   62622.82   59703.22

   20  16.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   57806.91
                       124122.63 -387493.21  -60950.24   15234.86  188745.56  132925.20  -88744.10   61745.35  -59703.22 -114447.48

   21  17.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                        16073.11 -301386.30 -116690.53 -171681.31   27896.78 -116191.90   66031.33  -28068.81  104936.48  -36396.21

   22   1.2  0.5 -0.5  256136.62 -280630.15  -43840.45  105499.45    6783.88   50969.44  -47408.28   92654.12  209523.30   12391.77
                       -31927.71  668374.90  -22508.20  111539.92  -20067.47   30154.19  449493.07   18886.76  -13038.37  -54244.34

   23   2.2  0.5 -0.5 -722670.11  844515.47  145601.50    2876.13   47651.52   27716.96 -218838.40  -76361.45  -64184.76  -14627.26
                       281213.72 -129949.31  -55523.23  -61763.08   91730.92   27997.58   -7787.77 -113837.58  195308.17  -56322.70

   24   3.2  0.5 -0.5  128662.14 -614330.04   44298.84 -127718.64  -68594.57 -227440.76  522478.43  -37907.67  -96341.37     634.68
                       335523.69 -177911.92 -173488.21  561080.87   74242.66    8498.88   40926.08  -38859.57 -145209.94   33473.99

   25   4.2  0.5 -0.5  -69486.09  146097.40    9725.62  -41579.23   25968.84  -51847.37  -29846.91  -30168.25 -147185.23    8537.37
                       -14656.51 -275870.95   15596.33  -11327.71  -13529.26    8285.42 -166206.88  -13106.39  -10541.58    4873.26

   26   5.2  0.5 -0.5  267011.60   21050.57   18138.32   28331.53  -42241.32   40057.73    -727.37   37418.25   11446.15    6615.02
                       398545.42  -56118.91    3164.62    5024.38   35219.88  125079.33  -10336.66   69685.91  -31030.56   84362.58

   27   6.2  0.5 -0.5 -118618.40 -879948.42 -493354.66  -30766.19  130207.21 -268468.89 -183074.20  -57861.93   18498.04 -273692.71
                      -425571.56  293742.37   -8536.30  247426.49   99240.63   79475.47   58487.94 -230451.01 -173117.18  -69583.24

   28   7.2  0.5 -0.5  200616.35 -279895.42   42974.69 -119143.78  -61974.37 -253291.93  760036.77  -56193.97  -86225.40  -20120.10
                       118296.76  -70107.94 -279839.90  300031.42   68668.95  -31939.35   -4370.82 -135407.60  -83974.79   21209.95

   29   8.2  0.5 -0.5  417260.52  -52404.49    8195.17  -35542.47   81303.42  -33416.22  -95753.66  -49618.62  -65372.49  115744.57
                      -249221.17    5220.68  -74452.81  -74093.63  -69681.75 -114873.45   -8243.03   29407.91   64962.59    1671.77

   30   9.2  0.5 -0.5 -967058.97 2682415.71   65492.79-1297677.68  -50105.42  881638.60-1830741.74 -609216.23-2049890.90 -108447.02
                       179739.38-4773641.56 -315259.58 -660630.68  377277.87 -240281.02-3151531.19  174537.17  151957.80  504282.76

   31  10.2  0.5 -0.5 1311685.64 4437242.40 -517654.45  -33372.39  331628.85 -503787.66-1015020.34-1079943.00 -439999.09 -401866.44
                      -405569.09 -390726.07-1642164.55  278371.46 1781558.16  920839.23 -444541.88 -779921.86  864610.99 -885933.44

   32  11.2  0.5 -0.5 -863496.15 3220132.82 -146536.81-2092598.68  170873.95  860763.68-1258063.26 -698668.72-2147660.73   36910.22
                     -1022374.37-6243179.92 -247698.22 -660950.52  150606.25 -276527.19-4185036.56  264246.77 -103372.41  502126.36

   33  12.2  0.5 -0.5-2154951.93-1747865.23  446359.05  265165.69 -611840.82 -287946.99-4780125.20  569233.21  105614.25  544560.94
                      4860970.59-1746511.23  693939.87 -751378.45 -102108.61-1054334.76-1364297.15  487889.29 1434517.95 1283789.81

   34  13.2  0.5 -0.5 1088079.09 -568431.68 -156259.01 -435623.72 -182093.60 -578700.67 -744670.88  358968.90 -493834.75  473101.33
                       702275.46   -9240.78  460289.11   98010.09 -146731.02  592027.13  128447.05  259369.78  231784.69 1097810.87

   35  14.2  0.5 -0.5   -6279.39  808157.78   19084.60 -788144.83    1945.75  395623.42 -145780.81 -228120.06 -612606.91  -93034.98
                       165655.81-1943065.33 -237305.46 -184907.45  107295.99  -94342.51-1323655.31  -34673.77   42429.35  213636.56

   36  15.2  0.5 -0.5  398528.09 4583706.59 1574621.84  365925.64 -765268.13-1069849.94  718028.89 -107384.44   59432.99 -920887.96
                      1434662.71 -477202.05-1715847.11 -481429.22 3035768.71  269750.40 -138336.20-2094016.72  447758.85   68892.02

   37  16.2  0.5 -0.5-2061012.12-1148168.90  379969.84  402445.36 -703678.74 -270387.46-3728590.06  730281.50  449896.56  453064.97
                      5048084.15 -703961.79 1036341.34 -951697.81  -69639.89-1228030.58 -139280.01  430659.55  957138.83 1410485.57

   38  17.2  0.5 -0.5-1062315.22 -510733.96 -502600.22 -410273.45  875156.49 -798250.20 -181061.44 -599696.47 -709577.36  493712.28
                     -3298054.49  931665.69  609693.06  156443.14 -125401.88 -944459.42  399093.54 -183526.57  118199.94 -472462.34


   Nr   State  S   Sz       21         22         23         24         25         26         27         28         29         30

    1   1.2  1.5  1.5       0.33       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -556.18       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    2   1.2  1.5  0.5       0.00       0.00      -0.00       0.00      -0.00      -0.00    1228.99      65.57     -57.22       0.00
                            1.31      -0.00       0.00       0.00       0.00      -0.00      50.68     119.41    1225.23       0.00

    3   1.2  1.5 -0.5       0.19       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          321.11       0.00       0.00      -0.00      -0.00      -0.00     141.50   -2449.04     232.82      -0.00

    4   1.2  1.5 -1.5       0.00       0.00      -0.00       0.00      -0.00      -0.00    2128.68     113.57     -99.11       0.00
                            0.00       0.00      -0.00      -0.00      -0.00       0.00     -87.77    -206.82   -2122.15      -0.00

    5   1.2  0.5  0.5       0.00  -84882.90 -157408.24  390842.13   32419.15  367566.82   -9280.40  310448.25 -107910.89 1303189.69
                      -280475.49  -97225.44  559917.95 -252415.61   39348.20   82978.03 1034287.77 -463682.12 -712742.63-1127562.25

    6   2.2  0.5  0.5       0.00-2689248.47   76518.05  131673.86  907045.15 -137445.41  205158.56  117449.36 -164813.9929164438.40
                        33299.98 -146851.28 -289812.69 2713286.22 -127709.10  -39633.49  335071.80 1075374.14 -142187.97  700824.07

    7   3.2  0.5  0.5       0.00  109066.27-1210634.01  217715.79 -176107.71  244334.07   55484.98  243245.07  282437.83   48810.70
                       179444.61    6108.49  237979.25      -2.96  -21206.16 -231942.84   34664.75   48990.28  -29395.28   30304.26

    8   4.2  0.5  0.5       0.00    3346.72 -670303.45  145562.16   -5689.13  -29645.31-1569614.21   56063.72 -124667.93  645490.91
                       -96942.40  -21474.78   87952.66 -155335.48  -37129.47  256774.18 -327320.21 -427939.15 -503885.63 -175755.30

    9   5.2  0.5  0.5       0.00  -47367.47  101961.20 1212812.22    5982.70  -12764.76  -73941.32 1019371.11  -28609.72-5029904.91
                      -112074.53  718783.74 -111988.93  233292.84 -211645.46  -13455.86  231994.16  286133.62  -54888.58-3949143.20

   10   6.2  0.5  0.5       0.00 3773380.95 -189469.39 -429194.29-1403391.47  147992.06 -135878.61 -425615.35  108007.76***********
                      -589986.30 -277503.52 -614340.42-3400044.96 -148840.95   87795.07  693507.67-2368178.96  135207.20  470654.74

   11   7.2  0.5  0.5       0.00  256136.62 -722670.11  128662.14  -69486.09  267011.60 -118618.40  200616.35  417260.52 -967058.97
                       -16073.11   31927.71 -281213.72 -335523.69   14656.51 -398545.42  425571.56 -118296.76  249221.17 -179739.38

   12   8.2  0.5  0.5       0.00 -280630.15  844515.47 -614330.04  146097.40   21050.57 -879948.42 -279895.42  -52404.49 2682415.71
                       301386.30 -668374.90  129949.31  177911.92  275870.95   56118.91 -293742.37   70107.94   -5220.68 4773641.56

   13   9.2  0.5  0.5       0.00  -43840.45  145601.50   44298.84    9725.62   18138.32 -493354.66   42974.69    8195.17   65492.79
                       116690.53   22508.20   55523.23  173488.21  -15596.33   -3164.62    8536.30  279839.90   74452.81  315259.58

   14  10.2  0.5  0.5       0.00  105499.45    2876.13 -127718.64  -41579.23   28331.53  -30766.19 -119143.78  -35542.47-1297677.68
                       171681.31 -111539.92   61763.08 -561080.87   11327.71   -5024.38 -247426.49 -300031.42   74093.63  660630.68

   15  11.2  0.5  0.5       0.00    6783.88   47651.52  -68594.57   25968.84  -42241.32  130207.21  -61974.37   81303.42  -50105.42
                       -27896.78   20067.47  -91730.92  -74242.66   13529.26  -35219.88  -99240.63  -68668.95   69681.75 -377277.87

   16  12.2  0.5  0.5       0.00   50969.44   27716.96 -227440.76  -51847.37   40057.73 -268468.89 -253291.93  -33416.22  881638.60
                       116191.90  -30154.19  -27997.58   -8498.88   -8285.42 -125079.33  -79475.47   31939.35  114873.45  240281.02

   17  13.2  0.5  0.5       0.00  -47408.28 -218838.40  522478.43  -29846.91    -727.37 -183074.20  760036.77  -95753.66-1830741.74
                       -66031.33 -449493.07    7787.77  -40926.08  166206.88   10336.66  -58487.94    4370.82    8243.03 3151531.19

   18  14.2  0.5  0.5       0.00   92654.12  -76361.45  -37907.67  -30168.25   37418.25  -57861.93  -56193.97  -49618.62 -609216.23
                        28068.81  -18886.76  113837.58   38859.57   13106.39  -69685.91  230451.01  135407.60  -29407.91 -174537.17

   19  15.2  0.5  0.5       0.00  209523.30  -64184.76  -96341.37 -147185.23   11446.15   18498.04  -86225.40  -65372.49-2049890.90
                      -104936.48   13038.37 -195308.17  145209.94   10541.58   31030.56  173117.18   83974.79  -64962.59 -151957.80

   20  16.2  0.5  0.5       0.00   12391.77  -14627.26     634.68    8537.37    6615.02 -273692.71  -20120.10  115744.57 -108447.02
                        36396.21   54244.34   56322.70  -33473.99   -4873.26  -84362.58   69583.24  -21209.95   -1671.77 -504282.76

   21  17.2  0.5  0.5   57807.11    4221.52  -45429.53  291244.18  -10756.63  -48311.70  276810.17   80415.86     656.66   41583.24
                       -10877.45  503079.67    2942.66  -30551.15 -166651.51  -19830.60   47094.84   22653.36     120.89-3645739.47

   22   1.2  0.5 -0.5    4221.52    9833.42       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                      -503079.67   18096.05  -81721.95  -39960.08  163476.52  -88079.84   91818.90    8438.99   95047.38 -153087.62

   23   2.2  0.5 -0.5  -45429.53       0.00    9833.44       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                        -2942.66   81721.95  -38065.64   84363.20  -18459.85  264473.73  -79353.34 -172188.00 -263253.10  125008.44

   24   3.2  0.5 -0.5  291244.18       0.00       0.00    9833.45       0.00       0.00       0.00       0.00       0.00       0.00
                        30551.15   39960.08  -84363.20 -148291.62    5633.30  -20218.64  -40807.08   99872.61   39339.02 -174744.32

   25   4.2  0.5 -0.5  -10756.63       0.00       0.00       0.00    9833.44       0.00       0.00       0.00       0.00       0.00
                       166651.51 -163476.52   18459.85   -5633.30   72167.45    -820.88   43403.32  144081.40  -10859.90  667014.90

   26   5.2  0.5 -0.5  -48311.70       0.00       0.00       0.00       0.00    9833.47       0.00       0.00       0.00       0.00
                        19830.60   88079.84 -264473.73   20218.64     820.88  259854.81  133221.48  -19199.90 -208502.85 -171517.69

   27   6.2  0.5 -0.5  276810.17       0.00       0.00       0.00       0.00       0.00   16412.22       0.00       0.00       0.00
                       -47094.84  -91818.90   79353.34   40807.08  -43403.32 -133221.48   -7572.21  194815.37  411231.99   94087.99

   28   7.2  0.5 -0.5   80415.86       0.00       0.00       0.00       0.00       0.00       0.00   16412.23       0.00       0.00
                       -22653.36   -8438.99  172188.00  -99872.61 -144081.40   19199.90 -194815.37  117319.09  -33625.64 -365353.46

   29   8.2  0.5 -0.5     656.66       0.00       0.00       0.00       0.00       0.00       0.00       0.00   16412.19       0.00
                         -120.89  -95047.38  263253.10  -39339.02   10859.90  208502.85 -411231.99   33625.64    -204.87  190569.98

   30   9.2  0.5 -0.5   41583.24       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   54439.41
                      3645739.47  153087.62 -125008.44  174744.32 -667014.90  171517.69  -94087.99  365353.46 -190569.98  -33535.05

   31  10.2  0.5 -0.5   40039.55       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                       505016.43  892842.02  290284.10   95921.76  112796.11  -16662.73 -182861.43  -71568.13   52582.69 -218952.93

   32  11.2  0.5 -0.5 -345425.37       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                      4668437.25  -18202.98 -125086.68   18754.03 -363394.94   72952.33  -81370.17  139188.58 -122661.77  110171.39

   33  12.2  0.5 -0.5 2385988.19       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                       738591.27   49118.77  -19289.36  461306.19   11248.20  106594.10  111423.68  232512.89  329261.81  110898.62

   34  13.2  0.5 -0.5  293494.68       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         1876.67  317267.33 -317555.35  -16647.78   71486.15 -703501.71 1119031.86   71401.64   12357.61  -89983.92

   35  14.2  0.5 -0.5   -2676.17       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                      1458457.75 -673373.86  282977.71 -492468.58  298160.86 -226501.87  614513.46 -561539.73  290337.42 -197641.37

   36  15.2  0.5 -0.5-1435594.09       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                       128483.91  919851.91 -240118.83  167279.73  146089.70 -169064.54  108595.35  -64261.21  -84734.62 -229012.23

   37  16.2  0.5 -0.5  939013.32       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                       305304.60 -159116.97 -341236.86 -367633.50  235394.08  -37197.38  334012.12 -124122.63  387493.21   60950.24

   38  17.2  0.5 -0.5  378137.09       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                      -518845.96 -280475.49   33299.98  179444.61  -96942.40 -112074.53 -589986.30  -16073.11  301386.30  116690.53


   Nr   State  S   Sz       31         32         33         34         35         36         37         38

    1   1.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    2   1.2  1.5  0.5      -0.00      -0.00       0.00       0.00       0.00     321.10       2.20       0.19
                           -0.00       0.00       0.00      -0.01      -0.00       0.20      -0.65    -321.11

    3   1.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00       0.00      -0.00       4.40    -642.19       1.31

    4   1.2  1.5 -1.5      -0.00      -0.00       0.00       0.00       0.00     556.17       3.81       0.33
                            0.00      -0.00      -0.00       0.01       0.00      -0.34       1.13     556.18

    5   1.2  0.5  0.5-1313417.79 1733183.25 1792462.26 2208503.13  394995.74 1224135.16 2023955.65-2318892.45
                     -5174092.57-1046939.63 2239859.49  679222.34 -654946.01 3766988.70 2787356.09 -353237.47

    6   2.2  0.5  0.5 4927760.5635793259.37 3397802.95  307591.1811535377.15-1199304.86-1140112.63 1308512.57
                     -1920253.37  208436.98 8048299.85  161305.55  403776.59-2186407.28 3583397.39  -39522.47

    7   3.2  0.5  0.5 1476645.03 -707598.98-1373859.49 1304410.31   68550.03-1664491.31-1404878.17 -749277.00
                       868569.76 -812794.21 4418519.49-3558010.24  134831.74 -533680.60 4126053.34 -283883.98

    8   4.2  0.5  0.5-8306060.28 2580913.08-1049594.17-2733881.63   99937.96 7848608.26 -827996.81-1171921.20
                       816563.06 -624691.25  943168.81 -986789.70 -455820.85 -834743.67 1200652.34-2792068.44

    9   5.2  0.5  0.5 -250489.54-4439187.48-3040018.62  290885.05 -636936.91  174268.57-3304848.74  511931.16
                      -432546.65-4706297.66-2192367.70   35556.01-1703026.87 -358245.29-2596018.36  514786.73

   10   6.2  0.5  0.5-4838733.06***********-2535335.25 -318321.13-8446976.11 1233801.93  505576.69-1911960.72
                     -2149603.60 1414831.53-4590690.59 -577056.73 -259716.54-2788001.44 2814607.34 -476621.45

   11   7.2  0.5  0.5 1311685.64 -863496.15-2154951.93 1088079.09   -6279.39  398528.09-2061012.12-1062315.22
                       405569.09 1022374.37-4860970.59 -702275.46 -165655.81-1434662.71-5048084.15 3298054.49

   12   8.2  0.5  0.5 4437242.40 3220132.82-1747865.23 -568431.68  808157.78 4583706.59-1148168.90 -510733.96
                       390726.07 6243179.92 1746511.23    9240.78 1943065.33  477202.05  703961.79 -931665.69

   13   9.2  0.5  0.5 -517654.45 -146536.81  446359.05 -156259.01   19084.60 1574621.84  379969.84 -502600.22
                      1642164.55  247698.22 -693939.87 -460289.11  237305.46 1715847.11-1036341.34 -609693.06

   14  10.2  0.5  0.5  -33372.39-2092598.68  265165.69 -435623.72 -788144.83  365925.64  402445.36 -410273.45
                      -278371.46  660950.52  751378.45  -98010.09  184907.45  481429.22  951697.81 -156443.14

   15  11.2  0.5  0.5  331628.85  170873.95 -611840.82 -182093.60    1945.75 -765268.13 -703678.74  875156.49
                     -1781558.16 -150606.25  102108.61  146731.02 -107295.99-3035768.71   69639.89  125401.88

   16  12.2  0.5  0.5 -503787.66  860763.68 -287946.99 -578700.67  395623.42-1069849.94 -270387.46 -798250.20
                      -920839.23  276527.19 1054334.76 -592027.13   94342.51 -269750.40 1228030.58  944459.42

   17  13.2  0.5  0.5-1015020.34-1258063.26-4780125.20 -744670.88 -145780.81  718028.89-3728590.06 -181061.44
                       444541.88 4185036.56 1364297.15 -128447.05 1323655.31  138336.20  139280.01 -399093.54

   18  14.2  0.5  0.5-1079943.00 -698668.72  569233.21  358968.90 -228120.06 -107384.44  730281.50 -599696.47
                       779921.86 -264246.77 -487889.29 -259369.78   34673.77 2094016.72 -430659.55  183526.57

   19  15.2  0.5  0.5 -439999.09-2147660.73  105614.25 -493834.75 -612606.91   59432.99  449896.56 -709577.36
                      -864610.99  103372.41-1434517.95 -231784.69  -42429.35 -447758.85 -957138.83 -118199.94

   20  16.2  0.5  0.5 -401866.44   36910.22  544560.94  473101.33  -93034.98 -920887.96  453064.97  493712.28
                       885933.44 -502126.36-1283789.81-1097810.87 -213636.56  -68892.02-1410485.57  472462.34

   21  17.2  0.5  0.5   40039.55 -345425.37 2385988.19  293494.68   -2676.17-1435594.09  939013.32  378137.09
                      -505016.43-4668437.25 -738591.27   -1876.67-1458457.75 -128483.91 -305304.60  518845.96

   22   1.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                      -892842.02   18202.98  -49118.77 -317267.33  673373.86 -919851.91  159116.97  280475.49

   23   2.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                      -290284.10  125086.68   19289.36  317555.35 -282977.71  240118.83  341236.86  -33299.98

   24   3.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                       -95921.76  -18754.03 -461306.19   16647.78  492468.58 -167279.73  367633.50 -179444.61

   25   4.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                      -112796.11  363394.94  -11248.20  -71486.15 -298160.86 -146089.70 -235394.08   96942.40

   26   5.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                        16662.73  -72952.33 -106594.10  703501.71  226501.87  169064.54   37197.38  112074.53

   27   6.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                       182861.43   81370.17 -111423.68-1119031.86 -614513.46 -108595.35 -334012.12  589986.30

   28   7.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                        71568.13 -139188.58 -232512.89  -71401.64  561539.73   64261.21  124122.63   16073.11

   29   8.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                       -52582.69  122661.77 -329261.81  -12357.61 -290337.42   84734.62 -387493.21 -301386.30

   30   9.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                       218952.93 -110171.39 -110898.62   89983.92  197641.37  229012.23  -60950.24 -116690.53

   31  10.2  0.5 -0.5   56691.48       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                        18638.51   47856.29  -26291.17  101118.68 -138122.94   38759.99   15234.86 -171681.31

   32  11.2  0.5 -0.5       0.00   56691.50       0.00       0.00       0.00       0.00       0.00       0.00
                       -47856.29  135703.87 -198335.86  -39206.97 -343402.52  -47376.92  188745.56   27896.78

   33  12.2  0.5 -0.5       0.00       0.00   56691.50       0.00       0.00       0.00       0.00       0.00
                        26291.17  198335.86  -39859.51   66782.90  -95055.38   -2975.08  132925.20 -116191.90

   34  13.2  0.5 -0.5       0.00       0.00       0.00   56691.51       0.00       0.00       0.00       0.00
                      -101118.68   39206.97  -66782.90  241210.05   10465.70  -28444.67  -88744.10   66031.33

   35  14.2  0.5 -0.5       0.00       0.00       0.00       0.00   56691.66       0.00       0.00       0.00
                       138122.94  343402.52   95055.38  -10465.70  265055.33 -115038.40   61745.35  -28068.81

   36  15.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00   57807.00       0.00       0.00
                       -38759.99   47376.92    2975.08   28444.67  115038.40  -62622.82  -59703.22  104936.48

   37  16.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00   57806.91       0.00
                       -15234.86 -188745.56 -132925.20   88744.10  -61745.35   59703.22  114447.48  -36396.21

   38  17.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00   57807.11
                       171681.31  -27896.78  116191.90  -66031.33   28068.81 -104936.48   36396.21   10877.45


 No symmetry adaption


 Spin-orbit eigenstates   (energies)
 ======================

     Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
              (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1  -549.51868597  -309.32617401-67889248.01      0.00000000        0.00      0.0000
     2  -312.19712727   -72.00461531-15803186.40    237.32155870 52086061.61   6457.8486
     3  -305.63639230   -65.44388035-14363271.51    243.88229367 53525976.50   6636.3753
     4  -282.95157334   -42.75906139 -9384529.24    266.56711263 58504718.78   7253.6607
     5  -267.98704160   -27.79452964 -6100194.15    281.53164437 61789053.86   7660.8663
     6  -260.14940481   -19.95689285 -4380031.70    289.36928116 63509216.31   7874.1393
     7  -254.45460098   -14.26208902 -3130166.73    295.06408499 64759081.28   8029.1028
     8  -250.34536003   -10.15284807 -2228292.59    299.17332594 65660955.43   8140.9209
     9  -247.27082467    -7.07831272 -1553510.07    302.24786129 66335737.94   8224.5833
    10  -246.01039159    -5.81787963 -1276876.99    303.50829438 66612371.03   8258.8814
    11  -244.63322086    -4.44070890  -974622.95    304.88546511 66914625.06   8296.3562
    12  -242.43066373    -2.23815178  -491217.54    307.08802223 67398030.48   8356.2908
    13  -242.16756724    -1.97505528  -433474.53    307.35111873 67455773.48   8363.4500
    14  -241.33743354    -1.14492158  -251281.24    308.18125243 67637966.77   8386.0391
    15  -241.07855702    -0.88604506  -194464.41    308.44012895 67694783.60   8393.0835
    16  -240.98209730    -0.78958534  -173293.95    308.53658867 67715954.06   8395.7083
    17  -240.24974831    -0.05723636   -12561.93    309.26893766 67876686.08   8415.6365
    18  -240.19262765    -0.00011570      -25.39    309.32605832 67889222.62   8417.1908
    19  -240.19251404    -0.00000208       -0.46    309.32617193 67889247.56   8417.1939
    20  -240.19250705     0.00000490        1.08    309.32617892 67889249.09   8417.1941
    21  -240.19217931     0.00033265       73.01    309.32650666 67889321.02   8417.2030
    22  -239.80450494     0.38800701    85157.70    309.71418103 67974405.71   8427.7522
    23  -239.51457832     0.67793363   148789.23    310.00410765 68038037.25   8435.6415
    24  -239.21128505     0.98122691   215354.41    310.30740092 68104602.43   8443.8945
    25  -238.76258801     1.42992395   313832.03    310.75609796 68203080.04   8456.1042
    26  -238.17999011     2.01252184   441697.49    311.33869586 68330945.50   8471.9575
    27  -236.94558092     3.24693103   712618.99    312.57310504 68601867.00   8505.5475
    28  -236.08813125     4.10438070   900807.44    313.43055472 68790055.45   8528.8799
    29  -233.81079329     6.38171867  1400625.35    315.70789268 69289873.37   8590.8494
    30  -231.80740905     8.38510291  1840317.37    317.71127692 69729565.38   8645.3643
    31  -229.71644336    10.47606859  2299231.29    319.80224260 70188479.30   8702.2623
    32  -227.02853636    13.16397560  2889158.69    322.49014961 70778406.70   8775.4040
    33  -220.48709661    19.70541534  4324838.77    329.03158936 72214086.78   8953.4057
    34  -210.29729184    29.89522012  6561242.42    339.22139413 74450490.43   9230.6844
    35  -195.83690155    44.35561041  9734931.24    353.68178442 77624179.26   9624.1716
    36  -175.06348114    65.12903081 14294170.03    374.45520483 82183418.04  10189.4452
    37  -168.50835039    71.68416157 15732854.93    381.01033558 83622102.95  10367.8194
    38    69.47422162   309.66673358 67963992.20    618.99290759135853240.21  16843.6551


 Eigenvectors of spin-orbit matrix
 =================================

  Basis states          Eigenvectors (columnwise)

   Nr   State  S   Sz        1             2             3             4             5             6             7             8

    1    1.2  1.5  1.5  -0.000018142  -0.000012313   0.000004545  -0.000039486   0.000014696   0.000075559   0.000352511   0.000293553
                         0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000

    2    1.2  1.5  0.5  -0.000000048  -0.000001297  -0.000003718  -0.000000989   0.000039453  -0.000088913   0.000049526   0.000004012
                         0.000000142  -0.000056147   0.000000287  -0.000060923  -0.000132702   0.000092598  -0.000264578   0.000097906

    3    1.2  1.5 -0.5  -0.000005442  -0.000030889  -0.000003661   0.000081018  -0.000023008   0.000027804  -0.000135828   0.000364397
                        -0.000000659  -0.000006090   0.000025297   0.000019779  -0.000015374  -0.000102455  -0.000050772  -0.000014852

    4    1.2  1.5 -1.5   0.000000095   0.000002365   0.000004415  -0.000011546  -0.000023713   0.000000291   0.000074453  -0.000189728
                        -0.000000200  -0.000006441   0.000006137  -0.000009018   0.000004996  -0.000184078   0.000062308   0.000055852

    5    1.2  0.5  0.5  -0.027905920   0.291175204  -0.050809882  -0.091220446  -0.090241493   0.251992655   0.049191298   0.032779717
                         0.023845114  -0.052731843   0.179673813  -0.085696195  -0.387358454  -0.113356269   0.167447847  -0.032420261

    6    2.2  0.5  0.5  -0.508587369   0.096291221   0.027844839  -0.137430297  -0.025641180  -0.096330108  -0.235534948  -0.214779605
                        -0.038285686   0.060169648  -0.077735108  -0.011725661   0.043737400   0.008396982  -0.091223143   0.032628031

    7    3.2  0.5  0.5  -0.003194241   0.182883594  -0.018835376   0.137615837  -0.413054084  -0.064573425   0.124257243   0.000790265
                        -0.000211066   0.166908973  -0.164251984   0.068516070  -0.019747034   0.346704193   0.059151026   0.007428733

    8    4.2  0.5  0.5  -0.013683230   0.134820721   0.569316271   0.012835666   0.107640308   0.039207302  -0.092612560   0.059923641
                         0.003689314  -0.156272916   0.112856165   0.107544973   0.065825287   0.157061747   0.034493810   0.014049761

    9    5.2  0.5  0.5   0.068639494  -0.170601981   0.078362383  -0.072254158   0.009846310   0.147602678   0.248380530  -0.178529343
                         0.070326269   0.177833772   0.046514836   0.062611939  -0.032769355   0.042643932  -0.069847379   0.216863253

   10    6.2  0.5  0.5   0.454494369   0.210004198   0.032684748  -0.222243264  -0.013130536  -0.121459526  -0.238970181  -0.233502387
                         0.015584658   0.017084686  -0.129867632  -0.100917808   0.038353292   0.003146570  -0.021391387   0.003793440

   11    7.2  0.5  0.5   0.022898221  -0.327974469   0.005255005  -0.204759502  -0.266413293   0.234621951  -0.317873180   0.076012132
                        -0.009413126   0.035623237   0.055594782  -0.050446281  -0.068053482   0.055063175   0.015072396   0.014452319

   12    8.2  0.5  0.5  -0.042886710   0.006899065   0.097841178   0.117955907  -0.016818263  -0.078117422   0.062215978   0.020719545
                        -0.095812731   0.075574066   0.046036170  -0.411410218   0.051980690   0.040176653   0.230964360   0.103820863

   13    9.2  0.5  0.5   0.002913384  -0.050381642   0.052093810   0.157454251   0.003082291   0.010668661  -0.017474778  -0.036037735
                        -0.003089671  -0.079859766   0.041313059  -0.038650574  -0.067862145   0.121756920  -0.048712215  -0.015615956

   14   10.2  0.5  0.5   0.025876164   0.073312883  -0.017875173   0.040127596   0.041078525   0.035894184  -0.059681658   0.090545816
                        -0.011655237   0.011165289  -0.003732830  -0.058457398   0.011371330   0.041451723   0.025207627  -0.029667790

   15   11.2  0.5  0.5  -0.002475739  -0.008549377   0.004199210  -0.222408700   0.062062152  -0.083881098   0.105136564   0.125278949
                         0.004236956   0.052754543  -0.083778770   0.006812407   0.098789935  -0.006920070   0.010920703   0.051948243

   16   12.2  0.5  0.5  -0.013421255   0.054573222  -0.007702392  -0.053034439  -0.075287004   0.096740391  -0.103629727  -0.150100036
                        -0.004572259   0.023374863  -0.023279726   0.059797683  -0.000146117   0.103720381   0.039085458  -0.201182169

   17   13.2  0.5  0.5   0.028100179   0.007012700   0.160073879   0.037068243   0.044621737   0.211267244   0.061606969  -0.034012418
                        -0.053716581   0.214576440   0.029813920   0.070325909  -0.050853661   0.058261141  -0.129930037  -0.001756021

   18   14.2  0.5  0.5   0.012261294   0.003678089  -0.006751804   0.116843606  -0.125482125   0.099064867  -0.015799163  -0.109239673
                         0.006407437  -0.052649242   0.079038370   0.044265611  -0.009695182  -0.089199695  -0.046798344  -0.154060949

   19   15.2  0.5  0.5   0.032987131  -0.023001213  -0.017647065  -0.088193374   0.095316444   0.063864317  -0.044614982   0.037409927
                         0.006381168  -0.010196592   0.026353798  -0.032473163   0.002457103   0.175267905  -0.011266036  -0.034555941

   20   16.2  0.5  0.5   0.002848493  -0.073468549  -0.038572739   0.026275484  -0.117477220  -0.043024704  -0.060828078   0.100577704
                         0.013248945  -0.044755128   0.025514918   0.084613477   0.092406099   0.043396052  -0.081106086   0.016325940

   21   17.2  0.5  0.5  -0.002073835  -0.013699792  -0.086891158  -0.016337936  -0.038277871  -0.038226447  -0.050243202   0.034858338
                         0.063045708  -0.057802339  -0.032358228   0.063050656   0.024880190  -0.081260819  -0.064596721   0.069700563

   22    1.2  0.5 -0.5  -0.048493066  -0.016581171   0.000276843  -0.070943452  -0.015950096   0.019219133   0.247677436   0.090063973
                        -0.002494518  -0.003206847  -0.000405700   0.000185160   0.030897886   0.021774667   0.017089658  -0.136096390

   23    2.2  0.5 -0.5   0.002359313   0.032630817   0.002510541  -0.016475383  -0.034275454   0.069003890  -0.170543047   0.015356693
                        -0.002150969   0.020636097   0.001329138   0.077894671  -0.056424438   0.118533892   0.099150336   0.138132078

   24    3.2  0.5 -0.5   0.005003878   0.001747907  -0.022847906  -0.037768252   0.025495481  -0.162273989  -0.068655453  -0.064262084
                        -0.044365977  -0.049219405  -0.016148798   0.002104497   0.054813086   0.011264264   0.220862816  -0.254318463

   25    4.2  0.5 -0.5   0.017677440   0.007437163  -0.004423380  -0.025051670  -0.017513400   0.002106892  -0.082703052  -0.000550717
                        -0.005641372  -0.003341525  -0.005835698   0.002189071   0.008384405   0.032841303  -0.007011111   0.145272865

   26    5.2  0.5 -0.5  -0.001965152  -0.003853911  -0.005966858   0.008315145   0.085984460   0.008402116  -0.000900777  -0.110278152
                         0.001753663   0.007631711   0.008976178   0.006162803   0.035871494  -0.094287817   0.015159965  -0.049080123

   27    6.2  0.5 -0.5   0.001053897  -0.010139929   0.068469233   0.023640889  -0.034527108   0.085789550  -0.074003450   0.081829879
                         0.000896683  -0.001575960   0.007041704  -0.050886127   0.028612445   0.226573587  -0.027722874   0.034803905

   28    7.2  0.5 -0.5   0.003616792  -0.000145393  -0.021435932  -0.016310944  -0.000850551  -0.137851124  -0.048252317  -0.033457602
                        -0.022086752  -0.061705328  -0.022846105   0.022956429   0.041646076  -0.003471486   0.226034556  -0.211797168

   29    8.2  0.5 -0.5  -0.001049290  -0.011361043   0.018181668   0.010822855   0.020387591  -0.037082079   0.042859143   0.050244369
                         0.001107330  -0.029109373   0.005315659  -0.001676250  -0.019469098  -0.026383700  -0.045437502   0.082126802

   30    9.2  0.5 -0.5   0.419144664   0.010000703   0.013116653   0.001362166   0.036744289   0.058818268   0.194317897  -0.090102994
                         0.022800761   0.039735018   0.001441170   0.024340194  -0.007007416  -0.016369244  -0.033178388   0.034975384

   31   10.2  0.5 -0.5   0.073375391   0.139763608   0.322424205  -0.128259686   0.035374067   0.028288159  -0.017434266  -0.036513134
                         0.014299837  -0.262596607   0.131524794   0.489257814  -0.058954242  -0.032336265  -0.060558349  -0.063589397

   32   11.2  0.5 -0.5   0.522645518   0.056965093  -0.084821607   0.013708279  -0.035474193  -0.051984960  -0.054679882  -0.088105945
                         0.037910661   0.016099981  -0.059595797  -0.084681657   0.023494003   0.030274013  -0.061452477   0.009421315

   33   12.2  0.5 -0.5   0.058143766  -0.123820926   0.186953441  -0.025179698   0.015580278   0.050540911   0.103700854  -0.106788915
                        -0.103204106   0.360479580   0.041856961   0.140354356  -0.079030121   0.123084548   0.312179055   0.053461396

   34   13.2  0.5 -0.5   0.004402500   0.023665978   0.090679368   0.053460464   0.291273528   0.346205455  -0.075860224  -0.047221360
                        -0.007221822  -0.047089582  -0.036135629  -0.033686922   0.468924370   0.119069546  -0.015261452  -0.094980250

   35   14.2  0.5 -0.5   0.152978859   0.009518926   0.001607668   0.052287078   0.002257824   0.027166872   0.047588013   0.547377098
                         0.001015324  -0.020617666  -0.014810598   0.015253847   0.009468545  -0.093938432   0.210257269  -0.096521766

   36   15.2  0.5 -0.5  -0.014189407  -0.024288711  -0.479026830  -0.037096443   0.085885423   0.061034812  -0.046340447   0.035162533
                         0.003973129   0.110840532  -0.168008105   0.408114530  -0.013073241   0.128986925  -0.075188449  -0.091628731

   37   16.2  0.5 -0.5  -0.002344296  -0.107102863   0.198647895   0.004964366  -0.015867598   0.024988886  -0.196545269   0.077083184
                        -0.017391328   0.447890628   0.021668702   0.053812060  -0.015275699  -0.092559864  -0.179381780  -0.164550825

   38   17.2  0.5 -0.5   0.019301416   0.037834666   0.059585644  -0.027522021  -0.090781490   0.270721496  -0.088098890  -0.014174616
                        -0.001476679  -0.129720104  -0.096410522  -0.152419076  -0.364586667   0.304527135  -0.022817251  -0.186666402


   Nr   State  S   Sz        9            10            11            12            13            14            15            16

    1    1.2  1.5  1.5   0.000252160  -0.000349352   0.000603421   0.001076654  -0.000552551   0.000501780   0.000522973  -0.002690452
                         0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000

    2    1.2  1.5  0.5  -0.000064659  -0.000724978  -0.000522873  -0.000094299   0.000025384  -0.000612639  -0.003093790   0.002002308
                         0.000369347   0.000082585  -0.000205043   0.000187167  -0.000540551  -0.000626517  -0.001235297  -0.001022824

    3    1.2  1.5 -0.5  -0.000092737   0.000061146  -0.000599667  -0.000209810  -0.000518079  -0.001440748   0.002363018  -0.001086927
                         0.000156287   0.000287052   0.000331678   0.000093803  -0.000135371  -0.003155995  -0.000903357  -0.002030503

    4    1.2  1.5 -1.5  -0.000887228  -0.000469063  -0.000068403  -0.000378918   0.000675024  -0.002722726   0.001462426  -0.002091558
                        -0.000224476   0.000643085   0.000343159   0.000801847   0.000381919   0.001838733   0.001769253  -0.001147487

    5    1.2  0.5  0.5  -0.087897417   0.151944530  -0.067582710  -0.076249798   0.069751975  -0.068706148  -0.013218179  -0.010914781
                        -0.141318647  -0.104209393  -0.042450507   0.091234459   0.003014604  -0.033944967  -0.002408495  -0.036595230

    6    2.2  0.5  0.5  -0.131558305   0.057463849  -0.134537723  -0.032901432   0.103391065  -0.020406843   0.009107440   0.019846678
                        -0.046366046  -0.109818573  -0.017900089  -0.036224928   0.073146215   0.019647318  -0.049991571  -0.028119163

    7    3.2  0.5  0.5  -0.009163331  -0.114450454  -0.021338565  -0.002410916  -0.027484385  -0.071661563  -0.017723301   0.032847841
                        -0.143002622   0.134162507  -0.082145848   0.113562156  -0.002330388   0.056213311   0.034904331  -0.017570868

    8    4.2  0.5  0.5   0.048077206   0.062800783   0.073168442  -0.038721039  -0.001259511  -0.035893390   0.041608460   0.021951295
                        -0.077716820   0.138624248  -0.002333823   0.025272174   0.048807591  -0.028046996   0.039119836  -0.029711935

    9    5.2  0.5  0.5  -0.026875815   0.106701191   0.056766665  -0.041045964   0.309543022  -0.054202591   0.098482200   0.034637190
                        -0.072727353  -0.103111114   0.132795038   0.015967264   0.110133157  -0.164177780   0.053805669  -0.102671464

   10    6.2  0.5  0.5  -0.051830901   0.061437391  -0.147971682  -0.021160266  -0.009367031   0.040294440   0.009537957   0.035259926
                        -0.047766194  -0.121409459   0.053209902  -0.031086575   0.129021411   0.000671993  -0.013190903   0.017377057

   11    7.2  0.5  0.5   0.092701947   0.010984348  -0.027942799   0.139059910  -0.044189932  -0.026964464  -0.057769027  -0.011646588
                        -0.054459350   0.141843723   0.143162532   0.084378403   0.029650208   0.092537391   0.016657497   0.006383180

   12    8.2  0.5  0.5   0.074520425   0.096600338   0.004492782   0.006594111  -0.008321266  -0.067049531   0.095801863   0.077025426
                         0.112842289  -0.174127166   0.173677761   0.227335743  -0.092095243   0.089210365   0.029968733  -0.137359844

   13    9.2  0.5  0.5   0.109538271  -0.049911157   0.027726333   0.175277498   0.171612592   0.023914764  -0.103369642   0.085075765
                        -0.149659477  -0.231327809  -0.034610553   0.012787346   0.256973331   0.088478088  -0.175312161  -0.030303312

   14   10.2  0.5  0.5   0.098734468  -0.052289517   0.127602310  -0.108523925   0.411826953  -0.038056128  -0.158408600  -0.252313665
                         0.093834140   0.169272360  -0.154694285  -0.187338126   0.200939899  -0.105720227  -0.018505790  -0.123010734

   15   11.2  0.5  0.5   0.058422045   0.152526558  -0.181623861  -0.108139245  -0.083975074  -0.204932058  -0.177038460   0.273109713
                         0.076830728   0.099991179  -0.147033334   0.071277209   0.024582333   0.169141520  -0.098007135  -0.205123186

   16   12.2  0.5  0.5   0.141446572   0.037373477   0.170904782  -0.152859428   0.052827662  -0.214426670   0.145886827  -0.011203775
                         0.396109616  -0.140070730  -0.123788969  -0.012960577  -0.042242986  -0.101656481  -0.099801570  -0.000223969

   17   13.2  0.5  0.5  -0.057201430  -0.093616349  -0.357633947  -0.049680034   0.015313301   0.054523170  -0.017598752   0.034024714
                         0.228397128  -0.001969079   0.024528789   0.021962796  -0.098987975   0.237780519  -0.142410822   0.156910258

   18   14.2  0.5  0.5  -0.141049223  -0.011052611   0.113720883   0.068085726  -0.068764530   0.104716740   0.035037104   0.309903387
                        -0.041390043  -0.063111036  -0.087368745  -0.364007578  -0.039816381   0.132443529  -0.106041205  -0.107126771

   19   15.2  0.5  0.5  -0.100008345  -0.044598527   0.208568310  -0.303826559  -0.044763840   0.000105085  -0.029535492   0.230575231
                        -0.108881609   0.015826153   0.020704526  -0.164633962  -0.303062903   0.083381958  -0.114679894   0.005926661

   20   16.2  0.5  0.5   0.073298832   0.243915612  -0.221537087  -0.336991135  -0.016970865   0.085852582   0.055672122  -0.189763474
                        -0.145491239  -0.110740242   0.027993249  -0.062301116  -0.151510895  -0.030618318  -0.059525898  -0.137204396

   21   17.2  0.5  0.5  -0.013504983  -0.007771143   0.206835990  -0.233105902   0.162642076  -0.170944841   0.177897470   0.392915123
                        -0.009098273  -0.005775711   0.032538943   0.303052476   0.198935868  -0.012943724  -0.042929220  -0.028776932

   22    1.2  0.5 -0.5   0.063296146  -0.124562594   0.002610290  -0.170161841   0.309735228   0.410983617  -0.011275602  -0.023415885
                         0.054996880   0.088133088   0.066288637   0.230240156   0.037614439  -0.163683072  -0.064265005   0.072955812

   23    2.2  0.5 -0.5  -0.033332935  -0.084475523   0.093040986   0.001862981  -0.114436673   0.099763472   0.033004892  -0.021646058
                        -0.216808857   0.465154840  -0.064407679   0.120275044   0.049378613   0.041198829  -0.158796068   0.089232582

   24    3.2  0.5 -0.5   0.065114322   0.029054951   0.122655937   0.059133635   0.054500188   0.166654129  -0.005621237   0.164177773
                        -0.055325202  -0.024554812   0.022592444   0.011854690  -0.236124692   0.054242363   0.226329304   0.070230042

   25    4.2  0.5 -0.5  -0.069176837   0.028401691   0.139138279  -0.168431950  -0.054665736   0.083938332  -0.209369529  -0.055726363
                        -0.005205185  -0.129297009  -0.123163575  -0.033611639   0.070887070   0.277279908   0.259364471   0.273390382

   26    5.2  0.5 -0.5   0.062866740  -0.101895860   0.007207204  -0.024357942   0.027638327   0.034558962   0.540818601  -0.185938819
                        -0.037025996   0.083974923   0.021329730  -0.065329034  -0.008060474   0.268476511   0.034376748  -0.075517754

   27    6.2  0.5 -0.5   0.455320344   0.373877704   0.093389379   0.022604865  -0.056372051   0.170605479   0.184528976  -0.034236654
                        -0.047994186  -0.162090087  -0.096058735  -0.074134850  -0.001450806  -0.039933251  -0.031708724   0.053126186

   28    7.2  0.5 -0.5   0.009728800   0.080803986   0.184327090  -0.034065475   0.000924817  -0.278964454  -0.101266339  -0.157948754
                         0.069037208   0.012121021   0.184146317  -0.006436111   0.136730106   0.057498964  -0.240153286   0.115207528

   29    8.2  0.5 -0.5  -0.263682414   0.178359928   0.072838587   0.103538550   0.092670198   0.192630720   0.142300917  -0.030306008
                         0.227306134  -0.101546050  -0.044447340   0.068762135  -0.086080327   0.185907637  -0.275287063   0.169701338

   30    9.2  0.5 -0.5   0.035909424   0.103593927   0.173163891  -0.134911466   0.008608010   0.050482589  -0.108655932   0.060642168
                        -0.094495157   0.056790858   0.349185371  -0.040123131  -0.153865899   0.111594873  -0.075326805  -0.191470430

   31   10.2  0.5 -0.5   0.039448176  -0.016368013  -0.043572387   0.023399746   0.046434440   0.007902520  -0.011606853   0.014352447
                         0.020150500  -0.033456627  -0.048422977  -0.015756184   0.028267975   0.000878182   0.013716002   0.008395894

   32   11.2  0.5 -0.5  -0.015350129  -0.044638649  -0.109379425   0.100823552   0.033247576   0.000699502   0.078526896  -0.030944326
                         0.062903794  -0.004717445  -0.250882069   0.078464537   0.147553166  -0.087184226   0.064594303   0.175497224

   33   12.2  0.5 -0.5  -0.068893361  -0.030508820  -0.101410321   0.105641115  -0.120525988  -0.027085511  -0.036783027  -0.130499507
                         0.132858151  -0.035602725   0.002596038  -0.055424906  -0.061444264  -0.134711802  -0.002525587   0.014939730

   34   13.2  0.5 -0.5  -0.048041163  -0.101519358   0.038640499   0.004493506  -0.018598717  -0.049961411  -0.053195408  -0.009875652
                         0.086261226  -0.002385117   0.006369091   0.070628942  -0.009710223  -0.011804166   0.003128354   0.018331879

   35   14.2  0.5 -0.5   0.074145380  -0.160863308  -0.015963205  -0.068188113  -0.078420292  -0.071772591   0.112439671   0.005064007
                         0.004295067  -0.065593437  -0.101539169  -0.127075820  -0.015769224  -0.014863124  -0.029757517  -0.039267754

   36   15.2  0.5 -0.5  -0.013422223   0.044125827  -0.028194190  -0.005621721  -0.017255734   0.003694128   0.023717068   0.009395698
                         0.042156338  -0.064906198   0.033544515  -0.002324066  -0.002798023   0.001875013  -0.015724631  -0.014018649

   37   16.2  0.5 -0.5   0.021385605   0.020220157   0.070178408  -0.063058024   0.138486645   0.025134795   0.037611243   0.133206884
                        -0.026371573  -0.017035156   0.007986730   0.078126134   0.100236131   0.128587377   0.023469659  -0.002321571

   38   17.2  0.5 -0.5  -0.135662655  -0.041968117   0.048164619  -0.022992484   0.011493278  -0.001160650   0.052631781  -0.005023933
                         0.185573586  -0.025505281   0.118266906  -0.031504962  -0.000316895   0.059582010   0.050804317  -0.100535181


   Nr   State  S   Sz       17            18            19            20            21            22            23            24

    1    1.2  1.5  1.5  -0.018450314  -0.304882984   0.359167480   0.844336929   0.254490330  -0.003549652  -0.002827006  -0.001392279
                        -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000

    2    1.2  1.5  0.5   0.001713172  -0.008787868   0.783560006  -0.328828366  -0.025247287  -0.001313780   0.001917157  -0.000370669
                         0.035104012  -0.079521857   0.244231058   0.006240993  -0.458154771  -0.000271297  -0.000879937  -0.002333230

    3    1.2  1.5 -0.5   0.027050905   0.735653679  -0.040218913   0.397695893  -0.379229636   0.010924010   0.003087843   0.001703192
                         0.023333509   0.188858207   0.167140901   0.084458839  -0.288095348   0.005415061   0.002109243  -0.003648658

    4    1.2  1.5 -1.5   0.010936788   0.077343752   0.364197088  -0.081057859  -0.151617199   0.000028333   0.002316940  -0.000622564
                        -0.051237910   0.563457885   0.187512916  -0.083847642   0.685009668   0.010924183   0.000506532   0.002559076

    5    1.2  0.5  0.5   0.012826250   0.000085988   0.000009581   0.000114793   0.001681055   0.011583964   0.033329802  -0.037583180
                        -0.054090591   0.000835920  -0.000505875   0.000051149  -0.004356258  -0.054644272   0.004565192  -0.007998466

    6    2.2  0.5  0.5   0.011595549   0.000699289   0.000180552  -0.000094258   0.000943438  -0.034802328  -0.069063920  -0.025491708
                         0.075252534  -0.000641550  -0.000327070   0.000396429   0.005517504   0.014133280   0.090061945   0.050982280

    7    3.2  0.5  0.5  -0.069322908   0.000831630  -0.000302712   0.000049364  -0.004713995  -0.015903407  -0.050047333  -0.043392708
                         0.012533421  -0.001023800   0.000334678  -0.000262202   0.000106742   0.043614350  -0.030125431   0.088606659

    8    4.2  0.5  0.5  -0.022926207  -0.000655046   0.000221256  -0.000324153  -0.001533085   0.046103947  -0.051348439  -0.015908138
                         0.030351110  -0.000343116   0.000200248  -0.000115045   0.001952430   0.012948479  -0.000589690   0.023362050

    9    5.2  0.5  0.5  -0.057532178   0.001007841   0.001089679  -0.000725334  -0.004100522   0.013690093  -0.233152450  -0.035570332
                         0.102468803  -0.001616691   0.000204433  -0.000219548   0.007226013   0.001457132   0.117277836   0.205928566

   10    6.2  0.5  0.5  -0.010709123   0.000487573   0.000320075  -0.000031957  -0.000641750  -0.019953912  -0.037654299  -0.033355625
                         0.032784058  -0.000619519  -0.000118794   0.000257957   0.002597681   0.027173001   0.055294603   0.019517175

   11    7.2  0.5  0.5   0.028030694   0.000334339   0.000266929  -0.000053008   0.001843826  -0.025444327   0.037305390   0.080885369
                         0.003080681   0.001093510   0.000113478   0.000310452  -0.000033421  -0.093648228   0.089211782   0.055490091

   12    8.2  0.5  0.5  -0.017459462   0.000146169   0.000231607   0.000261363  -0.001655105  -0.038720256   0.024644484   0.032331752
                        -0.057334182  -0.001932847  -0.000103863  -0.000323708  -0.004843784   0.056133969   0.080086602   0.108735746

   13    9.2  0.5  0.5   0.228446256   0.003570445  -0.000081360   0.001554513   0.017518110  -0.213537202   0.286756499   0.094509316
                        -0.171110623   0.003299473  -0.001399293   0.001046327  -0.012068180  -0.146961587  -0.006571290  -0.090295363

   14   10.2  0.5  0.5  -0.245238689   0.002974327  -0.000162720   0.000064255  -0.017721230  -0.156833724   0.037270375  -0.174989262
                        -0.080512083   0.000191570  -0.000702243   0.001104190  -0.006197044  -0.072667672   0.092050246   0.169318321

   15   11.2  0.5  0.5   0.072810752   0.001953225  -0.000701606   0.002124276   0.006322480  -0.000809894   0.125382888  -0.133297480
                        -0.236574741   0.002364238  -0.000129513   0.000358256  -0.018185664  -0.151578202   0.086390048   0.263108183

   16   12.2  0.5  0.5   0.063248215  -0.001398647   0.000662000  -0.000574217   0.004440874   0.137778686  -0.186944708   0.003738873
                        -0.096059467   0.005966186   0.000607099   0.000110544  -0.007403442  -0.278756222  -0.202217599  -0.076365325

   17   13.2  0.5  0.5   0.126955888  -0.001413793  -0.000829473   0.001434431   0.008384649  -0.018435109   0.219335522   0.052741683
                         0.081254482   0.002235972  -0.000563702   0.000687424   0.006306039  -0.058712141  -0.051637677  -0.141050837

   18   14.2  0.5  0.5  -0.001366096  -0.001127132   0.000395648   0.001553950  -0.001087611   0.128333836   0.088323738  -0.108039306
                        -0.026108051  -0.002978965  -0.000012326   0.000840683  -0.000859625   0.129529873   0.260636073   0.310657210

   19   15.2  0.5  0.5   0.056509947   0.005736143   0.000119735   0.000953192   0.004245448  -0.375008275  -0.020789041   0.068300599
                        -0.187608385  -0.000796076  -0.001337201  -0.000194215  -0.012339183   0.039870787  -0.018953191  -0.220696709

   20   16.2  0.5  0.5   0.050277324  -0.001307575   0.000825844  -0.000641739   0.004559387   0.037019044   0.015213792  -0.150264705
                        -0.153768130  -0.000212859  -0.000472990   0.000022873  -0.011112531   0.018031388   0.078849245  -0.145695788

   21   17.2  0.5  0.5  -0.110185229  -0.001836181  -0.000722701   0.001888530  -0.007346618  -0.045733060   0.298928980  -0.006544929
                         0.179836759  -0.000781087  -0.002030684  -0.000215618   0.012849014   0.089582963  -0.247578659  -0.050681748

   22    1.2  0.5 -0.5   0.369462874   0.001370570   0.000040673  -0.000175235   0.027205378  -0.039852514   0.065513559  -0.216735168
                         0.086838517  -0.000370211   0.000165004   0.000212018   0.007544152   0.033794020   0.153851200  -0.003079694

   23    2.2  0.5 -0.5  -0.021303731  -0.000828432   0.000217749   0.000085750  -0.001752509   0.037093777   0.135325188   0.021631466
                         0.122880214   0.001006897   0.000571449   0.000408615   0.008965297  -0.121661943   0.072740788   0.135562620

   24    3.2  0.5 -0.5  -0.231608930   0.001241411   0.001393172   0.001477027  -0.018902697   0.011237658   0.162980389  -0.054843271
                         0.038854308   0.005928210   0.000509479   0.000370418   0.003146172  -0.414802748  -0.023628122   0.117980187

   25    4.2  0.5 -0.5   0.384286976   0.004207322  -0.000153377   0.001266228   0.026736923  -0.034351643  -0.227353207  -0.076837764
                        -0.015215216   0.001466422   0.003036172   0.000411188  -0.003893944  -0.012093541  -0.296055343   0.370110711

   26    5.2  0.5 -0.5   0.166514095  -0.002115820  -0.000127459  -0.001451418   0.012123123   0.029212454   0.244313203  -0.157106180
                        -0.181527325  -0.003704926   0.001180879   0.000210689  -0.018980389   0.177202097  -0.155513133   0.269608171

   27    6.2  0.5 -0.5  -0.022913787  -0.001425255  -0.000149318  -0.000499001  -0.001916081   0.041235420   0.104454836  -0.085981553
                         0.019811706  -0.002155403   0.000373108  -0.000279090   0.001736722   0.172103936  -0.002360597  -0.046565374

   28    7.2  0.5 -0.5   0.099841688   0.001354654  -0.000523534  -0.000006715   0.007747573  -0.162786811  -0.043487803   0.217415089
                        -0.120024773  -0.007363648  -0.000411798   0.000340295  -0.009856090   0.411189354   0.139182263   0.090412684

   29    8.2  0.5 -0.5  -0.300066223   0.003907233   0.000500855  -0.000171785  -0.023160070  -0.218304794  -0.024662290  -0.297061103
                        -0.048667350   0.001474821   0.000174675   0.000339434  -0.003903085  -0.104612823   0.055390704   0.024256721

   30    9.2  0.5 -0.5   0.030502957  -0.000805492  -0.000032101  -0.000019152   0.002371904   0.104116636  -0.126533406   0.012268013
                         0.092372847   0.001857347   0.000274719  -0.000648993   0.006590307  -0.081281228   0.053727816   0.029178353

   31   10.2  0.5 -0.5  -0.009814921   0.000579143   0.000007384   0.000192151  -0.000894003  -0.036828673  -0.007697501   0.012058439
                        -0.015715176  -0.000516636  -0.000054094   0.000034515  -0.000924951   0.025694210  -0.023638419  -0.014424165

   32   11.2  0.5 -0.5  -0.015088576   0.001251615   0.000010905   0.000400202  -0.001447244  -0.124483663   0.119747299   0.001397287
                        -0.063189535  -0.001890882  -0.000321874   0.000520672  -0.004257797   0.081643593  -0.024053122  -0.042988751

   33   12.2  0.5 -0.5   0.079645337  -0.000529579  -0.000299094  -0.000502137   0.006338548   0.029090999   0.130989666  -0.091425351
                        -0.125694090   0.001081363  -0.000187396   0.000463454  -0.009761405  -0.039212104   0.012524205   0.022492074

   34   13.2  0.5 -0.5  -0.042659251   0.000620606  -0.000143665   0.000017308  -0.003119733  -0.011494428  -0.039538565  -0.008571674
                         0.015809679   0.000430783   0.000039441   0.000046010   0.001110675  -0.021389059  -0.013905550   0.005360656

   35   14.2  0.5 -0.5  -0.047155618  -0.000962886   0.000214020  -0.001029265  -0.003013850   0.053112256  -0.049733512  -0.000816903
                         0.068722066   0.000725052  -0.000000480  -0.000211475   0.005151453  -0.037857513  -0.087752911   0.037779234

   36   15.2  0.5 -0.5  -0.015020641  -0.000350061   0.000020834  -0.000022237  -0.001149267   0.030703378  -0.018926126  -0.037694360
                        -0.002977085   0.000080329   0.000124877   0.000050372  -0.000187737  -0.000257705   0.010817992   0.030398573

   37   16.2  0.5 -0.5  -0.090519115   0.000798822   0.000509667   0.000626140  -0.007231389  -0.052138061  -0.111835941   0.112568092
                         0.098992830  -0.001620647   0.000234976  -0.000523437   0.007654112   0.058113288  -0.012439886   0.005372232

   38   17.2  0.5 -0.5  -0.011664966  -0.000592544   0.000098551   0.000112373  -0.001052084   0.024336934   0.021679227   0.058037555
                        -0.009871083  -0.000136116   0.000127478  -0.000362905  -0.001220766  -0.029707935   0.018553765   0.091254974


   Nr   State  S   Sz       25            26            27            28            29            30            31            32

    1    1.2  1.5  1.5  -0.000839064   0.000235746   0.000682470  -0.000610864  -0.000147432   0.000350119   0.000163201   0.000434008
                         0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000

    2    1.2  1.5  0.5   0.002495466  -0.000763707   0.000180504  -0.000006449   0.000118567   0.000170564   0.000034300   0.000063557
                        -0.000632991  -0.000445264  -0.000370219  -0.000681635   0.000181869   0.000159521   0.000154031  -0.000239927

    3    1.2  1.5 -0.5  -0.000800992  -0.000060102   0.000068623   0.000685053  -0.000476538  -0.000112563   0.000065002   0.000145440
                        -0.000036575   0.001260112   0.000490867  -0.000244637   0.000076112  -0.000048835  -0.000198398   0.000031073

    4    1.2  1.5 -1.5  -0.001616792   0.000599313  -0.000179217  -0.000488851   0.000301967   0.000391584  -0.000041742   0.000012551
                         0.000134730  -0.000133726   0.000683854  -0.000052489   0.000007914   0.000168747   0.000053556  -0.000095762

    5    1.2  0.5  0.5  -0.002751384   0.022544627  -0.031010214  -0.018315113  -0.044545243   0.139616841  -0.032468544  -0.004028708
                        -0.017477281  -0.012203206   0.005507121  -0.025080286  -0.102746049   0.259388367   0.124414457  -0.062790608

    6    2.2  0.5  0.5  -0.011575930   0.039415807   0.037527743  -0.054278481   0.027675860   0.125532538   0.134480203   0.313331485
                         0.056230030   0.064563920  -0.005628255  -0.012242574   0.096021269  -0.016666100  -0.019012188   0.052909389

    7    3.2  0.5  0.5  -0.065449790   0.066151043   0.064649779  -0.034942535   0.053276100  -0.130259246   0.024896621  -0.160607956
                        -0.045259590   0.078125792  -0.010805988   0.004376665  -0.030027394   0.022591279   0.029409626   0.008803006

    8    4.2  0.5  0.5  -0.046762823  -0.025711542   0.045708995  -0.004665422  -0.003479927  -0.117946704  -0.129670467   0.034913226
                         0.035665113  -0.029663521   0.011222551  -0.003661796  -0.058435208   0.137770374  -0.027497246   0.009309753

    9    5.2  0.5  0.5  -0.053063885   0.121670802   0.081575886  -0.013432381   0.028798967  -0.021471124   0.249644730  -0.116273961
                        -0.081507950  -0.008624317  -0.018536795   0.165049977   0.147880697   0.091554845  -0.288494531   0.152853323

   10    6.2  0.5  0.5  -0.000409175   0.031963428  -0.023453226  -0.054748027   0.010787899   0.002383115   0.116168141   0.276484325
                         0.031266808   0.075503070  -0.001124532  -0.012618758   0.115881343  -0.051780145   0.022178989  -0.016474968

   11    7.2  0.5  0.5  -0.043521403  -0.040097736   0.108278520  -0.023987411  -0.073073633  -0.130519568  -0.266142888   0.235814506
                         0.097012049   0.050896039  -0.016831500  -0.055418832  -0.154924279  -0.041248036  -0.087225166   0.034493075

   12    8.2  0.5  0.5  -0.033514550  -0.177662845  -0.022228303  -0.025349418  -0.131083828   0.007788233  -0.001205603  -0.053309785
                         0.174985896  -0.020692252  -0.110964531   0.182862946   0.126529209  -0.197853530  -0.050214189  -0.291268389

   13    9.2  0.5  0.5   0.116227836   0.397997763  -0.191909155   0.003022361  -0.066710607  -0.084679628   0.003343089   0.064439649
                        -0.136915277  -0.062861277  -0.246413809  -0.048758830   0.209562071  -0.028578294  -0.010573312   0.091767654

   14   10.2  0.5  0.5   0.213366441   0.013838720   0.020135636   0.054361279  -0.144396816   0.134352495  -0.044480037  -0.046530224
                         0.291254090   0.166036197   0.091055829  -0.165102259  -0.085562451  -0.267544713  -0.039675416   0.010552640

   15   11.2  0.5  0.5   0.051337664   0.092149368   0.072891595  -0.024230058  -0.130413020   0.066299366   0.020304764  -0.143493419
                        -0.186018267  -0.317562962   0.075306695  -0.101376545  -0.191538875   0.090116985  -0.070724637  -0.030354550

   16   12.2  0.5  0.5  -0.099951150  -0.039225513  -0.073728875   0.024828072  -0.062910434  -0.026347995  -0.202363271   0.000299042
                        -0.195019227  -0.152414148   0.060739838   0.132361152   0.207760382  -0.241312243   0.091761707   0.091570299

   17   13.2  0.5  0.5   0.164479803  -0.097432248  -0.151395059  -0.085990326   0.074218901   0.081240887   0.294494761  -0.104464443
                         0.191650920   0.045748902   0.151890629  -0.041628713  -0.099103187  -0.194580052   0.019236784   0.025258292

   18   14.2  0.5  0.5   0.275644641  -0.297453398   0.079309813   0.064169549   0.035809859  -0.178066348  -0.041464726   0.035229665
                        -0.010991566  -0.115717667   0.053966206   0.037301600   0.227408922  -0.075806582   0.006956823   0.010294646

   19   15.2  0.5  0.5  -0.058680905   0.002567062   0.387963893  -0.032570467  -0.050135623   0.251516921   0.041975805  -0.117516938
                         0.041460019   0.216126543  -0.093789116   0.055899821   0.146206419   0.041471471  -0.041082379   0.068005219

   20   16.2  0.5  0.5   0.097639639   0.039117205  -0.312333315   0.243196346  -0.197902368  -0.131031016  -0.032179982  -0.018878492
                         0.175915016   0.072919589   0.169360378   0.372094310   0.031140380   0.165328466  -0.047510769   0.036496693

   21   17.2  0.5  0.5   0.006771498  -0.168159963  -0.127896496  -0.148588281   0.010532769  -0.146675038  -0.050519245  -0.007877735
                         0.297379454  -0.009449993   0.122150555  -0.074055364   0.073970225   0.148141028   0.021998375   0.155153804

   22    1.2  0.5 -0.5  -0.062369672  -0.248880532   0.133126121   0.102058506  -0.006911960   0.001283074  -0.030157686   0.161895824
                        -0.104891485  -0.131732753  -0.172776829   0.048569074  -0.061977359  -0.021771018   0.191407669   0.077291841

   23    2.2  0.5 -0.5  -0.058032772  -0.092502642  -0.262678849  -0.031428798  -0.130724711   0.287542072   0.071235127  -0.020797199
                        -0.252842162   0.047999973   0.126373514   0.254383064   0.279409135  -0.100723781  -0.011541932  -0.013032889

   24    3.2  0.5 -0.5   0.039921611   0.097998424  -0.087500902   0.110331345   0.288787067   0.105933247   0.127817936   0.037006393
                         0.137797485  -0.059140942  -0.145403053   0.255013059  -0.224164766   0.021445021  -0.074971124   0.226003816

   25    4.2  0.5 -0.5  -0.006350803  -0.131604411  -0.212742660   0.089376791  -0.000428230   0.021666672  -0.049638012  -0.103569919
                         0.132486341   0.091592358  -0.158391354  -0.108613304   0.045928512   0.075272910  -0.104870082   0.012116286

   26    5.2  0.5 -0.5  -0.283174846   0.301194379   0.161150719   0.013394789   0.030317351  -0.006135465  -0.017147784   0.020997453
                         0.038828042   0.067721013   0.140869871   0.024080226  -0.069996972  -0.090623288   0.070967867   0.027082833

   27    6.2  0.5 -0.5   0.060171965  -0.135288783  -0.021746781  -0.136171065   0.305028848   0.283862743   0.078418784   0.009212332
                        -0.090553514  -0.098123817   0.033792406  -0.216337039   0.003387329   0.026494964  -0.120827935  -0.116079994

   28    7.2  0.5 -0.5   0.044645863  -0.122462312  -0.175096370  -0.012467690   0.109807587   0.009959879   0.150795226   0.010138696
                        -0.142257969   0.002345452   0.061510149   0.144249731  -0.286682958   0.028722488   0.006752658   0.260562919

   29    8.2  0.5 -0.5  -0.116327614  -0.059606682  -0.165303347  -0.156718170  -0.036955211  -0.171866333  -0.136044043   0.009711662
                        -0.286510085   0.280207313  -0.048050302  -0.072059688  -0.125150820   0.097924668  -0.116350013  -0.042677244

   30    9.2  0.5 -0.5  -0.036213466   0.132856993  -0.218078284  -0.074101595   0.063160346   0.073774278  -0.099801076   0.079670864
                        -0.000749701   0.048308520   0.077464487  -0.229981423  -0.040071083  -0.143808995   0.221845289   0.032369686

   31   10.2  0.5 -0.5   0.012309801  -0.007782262   0.058880915   0.054943244   0.018935965   0.004590141   0.007710368  -0.032748484
                         0.026048099   0.002529923   0.008645711   0.029005416  -0.008258855   0.024213104  -0.039621834  -0.118249818

   32   11.2  0.5 -0.5   0.088362492  -0.107148799   0.185127179   0.082700022  -0.021997019   0.012410756  -0.071797127  -0.059257449
                        -0.019948135  -0.061066149  -0.041694294   0.259209373  -0.044748174   0.090123951  -0.098101320  -0.072953590

   33   12.2  0.5 -0.5   0.026824849  -0.070772018   0.048522849  -0.226555600   0.003131543  -0.059582459  -0.071787443   0.058428142
                         0.149001017   0.018413849   0.017809072  -0.017136182   0.093651077   0.148898822  -0.104826935   0.292435964

   34   13.2  0.5 -0.5  -0.000920027   0.008031913  -0.047870110  -0.120396003  -0.088423501  -0.071273492   0.059547464  -0.010617179
                        -0.006713866  -0.058273380  -0.058532266   0.067881938  -0.022278798   0.032039261  -0.005177139  -0.051396675

   35   14.2  0.5 -0.5  -0.129151474  -0.032928622  -0.044029573   0.053550335  -0.166300896  -0.124160380   0.436831181   0.318431116
                        -0.065585342   0.052588431  -0.087890844  -0.150080310   0.128774970   0.011234006  -0.181785560   0.063989429

   36   15.2  0.5 -0.5   0.028739287  -0.011982866   0.029095768  -0.008057865   0.074523260  -0.072788534   0.046870685   0.007176034
                        -0.001460382   0.009717568  -0.011383850  -0.040001058   0.000031027   0.013166026   0.029690528  -0.103220449

   37   16.2  0.5 -0.5  -0.029992074   0.068539297  -0.021925341   0.270267064   0.005366530  -0.027265467   0.138532889  -0.108551136
                        -0.146926847  -0.025111185  -0.053272149   0.083038965  -0.174713131  -0.042738714   0.043730720  -0.252259960

   38   17.2  0.5 -0.5  -0.014646909   0.014769778   0.038279668   0.115445804  -0.007587550  -0.151672449   0.180784765   0.033533582
                         0.040868724   0.034966573   0.014034797   0.034187772  -0.072675262   0.138934251   0.115083926  -0.106964400


   Nr   State  S   Sz       33            34            35            36            37            38

    1    1.2  1.5  1.5   0.000096645   0.000009661  -0.000031786  -0.000004683  -0.000009270  -0.000017932
                         0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000

    2    1.2  1.5  0.5  -0.000086184   0.000110753  -0.000007277   0.000006468  -0.000004888  -0.000000192
                         0.000068775  -0.000037252  -0.000049837   0.000012404  -0.000055766  -0.000000080

    3    1.2  1.5 -0.5  -0.000019381   0.000004580   0.000100514   0.000016536  -0.000014132  -0.000007731
                        -0.000000737  -0.000005077   0.000019795  -0.000004731   0.000002403  -0.000000884

    4    1.2  1.5 -1.5  -0.000113336   0.000091878   0.000013868   0.000004440   0.000005252  -0.000000075
                         0.000027791   0.000046593   0.000001013   0.000012188   0.000002513   0.000000222

    5    1.2  0.5  0.5  -0.234787795  -0.187466444   0.086154185  -0.145611968  -0.259348060   0.026521811
                        -0.094209754   0.365193749   0.096316948   0.149631899   0.077441610  -0.023604592

    6    2.2  0.5  0.5   0.117885225   0.019171451   0.166666898   0.052890942  -0.106958930   0.507248055
                         0.008650573  -0.015955159  -0.011760047  -0.033751062  -0.055313877   0.036925183

    7    3.2  0.5  0.5   0.301437571   0.266512038  -0.116350152   0.065856869  -0.195541741   0.003379731
                        -0.169231850   0.317824379  -0.052398973  -0.129069233  -0.177055294   0.000893901

    8    4.2  0.5  0.5   0.098904228  -0.063997753  -0.052245752   0.416744882  -0.107323952   0.013751443
                        -0.123129610  -0.116508500  -0.088732776   0.428247641   0.114908050  -0.003335758

    9    5.2  0.5  0.5  -0.211680352  -0.029421276   0.023276783   0.038736526   0.155474784  -0.068778977
                        -0.058501003   0.039328823  -0.068735898   0.062140786  -0.190140284  -0.063222049

   10    6.2  0.5  0.5   0.127287698  -0.011462894   0.241470849   0.082651105  -0.217898946  -0.455821942
                        -0.000821992  -0.035076344   0.064909906  -0.059398374  -0.018407135  -0.017473123

   11    7.2  0.5  0.5  -0.049664097   0.113116161   0.220278805  -0.030549284   0.339424700  -0.023277772
                        -0.210021143   0.177189475   0.036526805   0.040086071  -0.063008868   0.004634074

   12    8.2  0.5  0.5   0.030161331   0.027439134  -0.073777622   0.041531374  -0.019605720   0.043968883
                        -0.032300702  -0.048852375   0.414326851   0.088668513  -0.102798369   0.086258771

   13    9.2  0.5  0.5   0.058668229   0.052951495  -0.150043496  -0.008236175   0.045353165  -0.003188283
                        -0.007105688   0.032543507   0.048217661   0.103045757   0.052917610   0.005238252

   14   10.2  0.5  0.5  -0.059839575   0.076060861  -0.031022036   0.007091916  -0.075725934  -0.025425574
                         0.020716242   0.014517009   0.036338975  -0.000212361   0.031093395   0.004039401

   15   11.2  0.5  0.5   0.053454402   0.019936237   0.210296954   0.027018497  -0.009597306   0.001532515
                         0.075782412  -0.145482838  -0.031813114  -0.041772682  -0.078271523  -0.002997020

   16   12.2  0.5  0.5  -0.103266119   0.074438452   0.073863286   0.005060811  -0.081230496   0.014279042
                        -0.199137699  -0.001205678  -0.072342934  -0.026684049  -0.016612258   0.006320759

   17   13.2  0.5  0.5  -0.107055825  -0.064127732  -0.021931697   0.092170454   0.006093335  -0.027848331
                        -0.239046813   0.028937542  -0.111227942   0.105465692  -0.174302809   0.071818559

   18   14.2  0.5  0.5   0.035863477  -0.109726500  -0.096957496  -0.046457716   0.013217515  -0.010576492
                        -0.102839762   0.124228891  -0.056856743   0.018995922   0.079274270  -0.003149978

   19   15.2  0.5  0.5   0.020078050   0.044657861   0.086716924  -0.007884919   0.035337628  -0.034171531
                        -0.082347255  -0.015282565   0.009451545   0.022855746   0.056478245  -0.002381488

   20   16.2  0.5  0.5   0.132008620   0.047929077   0.016042792  -0.014934016   0.086074631  -0.002010517
                         0.029197036   0.045296663  -0.071292641  -0.026678134   0.040934631  -0.003971579

   21   17.2  0.5  0.5  -0.005935059   0.040528362   0.029541806  -0.052148942   0.008654364   0.003406790
                         0.057296315  -0.031519372  -0.020628966  -0.071105891   0.044388857  -0.071804794

   22    1.2  0.5 -0.5   0.109688525   0.033861697   0.111785584   0.012180361  -0.038589641  -0.048270351
                         0.003661035  -0.017394623   0.024475557  -0.011646244  -0.017087630  -0.002585354

   23    2.2  0.5 -0.5  -0.129644158  -0.032781238  -0.004274675  -0.021596637  -0.003945503   0.002611862
                         0.144962147  -0.081061889   0.082964523   0.005194591   0.012656940  -0.000936222

   24    3.2  0.5 -0.5  -0.003500318  -0.039144532  -0.011453454   0.007989466   0.002137933   0.004142704
                        -0.041561559   0.023367817   0.015803251   0.023666837  -0.048022149  -0.045378050

   25    4.2  0.5 -0.5  -0.048030089   0.006206563   0.008128224  -0.005352825   0.017369837   0.016839342
                         0.028138080  -0.005486126   0.001128801   0.007252255   0.002340381   0.006946625

   26    5.2  0.5 -0.5  -0.040194293  -0.078598710   0.007996538   0.003534014   0.005902124  -0.001933149
                        -0.005651821   0.060490147   0.021780719  -0.006986617   0.010378205  -0.000678235

   27    6.2  0.5 -0.5  -0.046855421   0.211237219   0.034765059  -0.053054328   0.025940903   0.000322940
                         0.093411324   0.082215129  -0.087796847  -0.041081864   0.010238386   0.001178507

   28    7.2  0.5 -0.5  -0.034007591  -0.008446995  -0.030177227  -0.004314596   0.008471771   0.003272670
                        -0.056039341   0.021812045   0.025804673   0.032479581  -0.058709755  -0.026252673

   29    8.2  0.5 -0.5   0.073114310  -0.013541484   0.002840488  -0.036002810   0.015487412  -0.002525361
                        -0.047983084  -0.042719433  -0.007133549   0.011099927  -0.019161015   0.003277476

   30    9.2  0.5 -0.5   0.130834584   0.005484392  -0.008490908  -0.016030215   0.026569490   0.419576004
                         0.010818676   0.005373012   0.025418993  -0.001272682   0.041489026   0.020426073

   31   10.2  0.5 -0.5   0.030583853   0.086293686  -0.064928786  -0.225931419   0.103597399   0.073951165
                        -0.056131988  -0.044256256   0.474298009  -0.305803617  -0.260871364   0.008974931

   32   11.2  0.5 -0.5  -0.066104626  -0.033772577   0.041955061   0.039167465   0.060099903   0.522615639
                        -0.012261906  -0.004414705  -0.083506998   0.092998957   0.008711829   0.036331499

   33   12.2  0.5 -0.5   0.040238928   0.093042563  -0.012286314  -0.104714319  -0.116009556   0.058703347
                         0.165122208  -0.072050015   0.144029244  -0.126142084   0.376228976  -0.100684552

   34   13.2  0.5 -0.5   0.135290516  -0.138442881   0.100212991  -0.100671497   0.039140788   0.003977654
                         0.344228341   0.510507229  -0.004410458  -0.027042169  -0.044045795  -0.008412800

   35   14.2  0.5 -0.5  -0.000532741   0.011012751   0.071743481   0.003685241  -0.001327905   0.151967561
                        -0.113483806   0.021144510   0.007746754  -0.003909849  -0.014992218   0.005170497

   36   15.2  0.5 -0.5  -0.062558699   0.117441839  -0.018870319   0.292263694   0.015368726  -0.013704585
                         0.120024757   0.039137985   0.411564329   0.421506690   0.070952297   0.000614159

   37   16.2  0.5 -0.5   0.028014152   0.022494155   0.014466714  -0.113521308  -0.087885142  -0.003604236
                        -0.028815659   0.003545917   0.058434984  -0.112745988   0.467353345  -0.020849136

   38   17.2  0.5 -0.5   0.000233030   0.162498638  -0.059579473  -0.101872940   0.032927542   0.019683493
                         0.430573875  -0.298938479  -0.166498202   0.028215773  -0.129755020   0.000737006


 Composition of spin-orbit eigenvectors
 ======================================

   Nr   State  S   Sz       1        2        3        4        5        6        7        8        9       10

    1    1.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    2    1.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    3    1.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    4    1.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    5    1.2  0.5  0.5   0.135%   8.756%   3.486%   1.567%  15.819%   7.635%   3.046%   0.213%   2.770%   3.395%
    6    2.2  0.5  0.5  26.013%   1.289%   0.682%   1.902%   0.257%   0.935%   6.380%   4.719%   1.946%   1.536%
    7    3.2  0.5  0.5   0.001%   6.131%   2.733%   2.363%  17.100%  12.437%   1.894%   0.006%   2.053%   3.110%
    8    4.2  0.5  0.5   0.020%   4.260%  33.686%   1.173%   1.592%   2.621%   0.977%   0.379%   0.835%   2.316%
    9    5.2  0.5  0.5   0.966%   6.073%   0.830%   0.914%   0.117%   2.361%   6.657%   7.890%   0.601%   2.202%
   10    6.2  0.5  0.5  20.681%   4.439%   1.793%   5.958%   0.164%   1.476%   5.756%   5.454%   0.497%   1.851%
   11    7.2  0.5  0.5   0.061%  10.884%   0.312%   4.447%   7.561%   5.808%  10.127%   0.599%   1.156%   2.024%
   12    8.2  0.5  0.5   1.102%   0.576%   1.169%  18.317%   0.298%   0.772%   5.722%   1.121%   1.829%   3.965%
   13    9.2  0.5  0.5   0.002%   0.892%   0.442%   2.629%   0.461%   1.494%   0.268%   0.154%   3.440%   5.600%
   14   10.2  0.5  0.5   0.081%   0.550%   0.033%   0.503%   0.182%   0.301%   0.420%   0.908%   1.855%   3.139%
   15   11.2  0.5  0.5   0.002%   0.286%   0.704%   4.951%   1.361%   0.708%   1.117%   1.839%   0.932%   3.326%
   16   12.2  0.5  0.5   0.020%   0.352%   0.060%   0.639%   0.567%   2.012%   1.227%   6.300%  17.691%   2.102%
   17   13.2  0.5  0.5   0.368%   4.609%   2.651%   0.632%   0.458%   4.803%   2.068%   0.116%   5.544%   0.877%
   18   14.2  0.5  0.5   0.019%   0.279%   0.629%   1.561%   1.584%   1.777%   0.244%   3.567%   2.161%   0.411%
   19   15.2  0.5  0.5   0.113%   0.063%   0.101%   0.883%   0.909%   3.480%   0.212%   0.259%   2.186%   0.224%
   20   16.2  0.5  0.5   0.018%   0.740%   0.214%   0.785%   2.234%   0.373%   1.028%   1.038%   2.654%   7.176%
   21   17.2  0.5  0.5   0.398%   0.353%   0.860%   0.424%   0.208%   0.806%   0.670%   0.607%   0.027%   0.009%
   22    1.2  0.5 -0.5   0.236%   0.029%   0.000%   0.503%   0.121%   0.084%   6.164%   2.663%   0.703%   2.328%
   23    2.2  0.5 -0.5   0.001%   0.149%   0.001%   0.634%   0.436%   1.881%   3.892%   1.932%   4.812%  22.351%
   24    3.2  0.5 -0.5   0.199%   0.243%   0.078%   0.143%   0.365%   2.646%   5.349%   6.881%   0.730%   0.145%
   25    4.2  0.5 -0.5   0.034%   0.007%   0.005%   0.063%   0.038%   0.108%   0.689%   2.110%   0.481%   1.752%
   26    5.2  0.5 -0.5   0.001%   0.007%   0.012%   0.011%   0.868%   0.896%   0.023%   1.457%   0.532%   1.743%
   27    6.2  0.5 -0.5   0.000%   0.011%   0.474%   0.315%   0.201%   5.870%   0.625%   0.791%  20.962%  16.606%
   28    7.2  0.5 -0.5   0.050%   0.381%   0.098%   0.079%   0.174%   1.901%   5.342%   4.598%   0.486%   0.668%
   29    8.2  0.5 -0.5   0.000%   0.098%   0.036%   0.012%   0.079%   0.207%   0.390%   0.927%  12.120%   4.212%
   30    9.2  0.5 -0.5  17.620%   0.168%   0.017%   0.059%   0.140%   0.373%   3.886%   0.934%   1.022%   1.396%
   31   10.2  0.5 -0.5   0.559%   8.849%  12.126%  25.582%   0.473%   0.185%   0.397%   0.538%   0.196%   0.139%
   32   11.2  0.5 -0.5  27.460%   0.350%   1.075%   0.736%   0.181%   0.362%   0.677%   0.785%   0.419%   0.201%
   33   12.2  0.5 -0.5   1.403%  14.528%   3.670%   2.033%   0.649%   1.770%  10.821%   1.426%   2.240%   0.220%
   34   13.2  0.5 -0.5   0.007%   0.278%   0.953%   0.399%  30.473%  13.404%   0.599%   1.125%   0.975%   1.031%
   35   14.2  0.5 -0.5   2.340%   0.052%   0.022%   0.297%   0.009%   0.956%   4.647%  30.894%   0.552%   3.018%
   36   15.2  0.5 -0.5   0.022%   1.288%  25.769%  16.793%   0.755%   2.036%   0.780%   0.963%   0.196%   0.616%
   37   16.2  0.5 -0.5   0.031%  21.208%   3.993%   0.292%   0.049%   0.919%   7.081%   3.302%   0.115%   0.070%
   38   17.2  0.5 -0.5   0.037%   1.826%   1.285%   2.399%  14.116%  16.603%   0.828%   3.505%   5.284%   0.241%

   Nr   State  S   Sz      11       12       13       14       15       16       17       18       19       20

    1    1.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.034%   9.295%  12.900%  71.290%
    2    1.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.001%   0.001%   0.124%   0.640%  67.362%  10.817%
    3    1.2  1.5 -0.5   0.000%   0.000%   0.000%   0.001%   0.001%   0.001%   0.128%  57.685%   2.955%  16.530%
    4    1.2  1.5 -1.5   0.000%   0.000%   0.000%   0.001%   0.001%   0.001%   0.274%  32.347%  16.780%   1.360%
    5    1.2  0.5  0.5   0.637%   1.414%   0.487%   0.587%   0.018%   0.146%   0.309%   0.000%   0.000%   0.000%
    6    2.2  0.5  0.5   1.842%   0.239%   1.604%   0.080%   0.258%   0.118%   0.580%   0.000%   0.000%   0.000%
    7    3.2  0.5  0.5   0.720%   1.290%   0.076%   0.830%   0.153%   0.139%   0.496%   0.000%   0.000%   0.000%
    8    4.2  0.5  0.5   0.536%   0.214%   0.238%   0.207%   0.326%   0.136%   0.145%   0.000%   0.000%   0.000%
    9    5.2  0.5  0.5   2.086%   0.194%  10.795%   2.989%   1.259%   1.174%   1.381%   0.000%   0.000%   0.000%
   10    6.2  0.5  0.5   2.473%   0.141%   1.673%   0.162%   0.026%   0.155%   0.119%   0.000%   0.000%   0.000%
   11    7.2  0.5  0.5   2.128%   2.646%   0.283%   0.929%   0.361%   0.018%   0.080%   0.000%   0.000%   0.000%
   12    8.2  0.5  0.5   3.018%   5.173%   0.855%   1.245%   1.008%   2.480%   0.359%   0.000%   0.000%   0.000%
   13    9.2  0.5  0.5   0.197%   3.089%   9.549%   0.840%   4.142%   0.816%   8.147%   0.002%   0.000%   0.000%
   14   10.2  0.5  0.5   4.021%   4.687%  20.998%   1.263%   2.544%   7.879%   6.662%   0.001%   0.000%   0.000%
   15   11.2  0.5  0.5   5.461%   1.677%   0.766%   7.061%   4.095%  11.666%   6.127%   0.001%   0.000%   0.000%
   16   12.2  0.5  0.5   4.453%   2.353%   0.458%   5.631%   3.124%   0.013%   1.323%   0.004%   0.000%   0.000%
   17   13.2  0.5  0.5  12.850%   0.295%   1.003%   5.951%   2.059%   2.578%   2.272%   0.001%   0.000%   0.000%
   18   14.2  0.5  0.5   2.057%  13.714%   0.631%   2.851%   1.247%  10.752%   0.068%   0.001%   0.000%   0.000%
   19   15.2  0.5  0.5   4.393%  11.941%   9.385%   0.695%   1.402%   5.320%   3.839%   0.003%   0.000%   0.000%
   20   16.2  0.5  0.5   4.986%  11.744%   2.324%   0.831%   0.664%   5.484%   2.617%   0.000%   0.000%   0.000%
   21   17.2  0.5  0.5   4.384%  14.618%   6.603%   2.939%   3.349%  15.521%   4.448%   0.000%   0.000%   0.000%
   22    1.2  0.5 -0.5   0.440%   8.197%   9.735%  19.570%   0.426%   0.587%  14.404%   0.000%   0.000%   0.000%
   23    2.2  0.5 -0.5   1.280%   1.447%   1.553%   1.165%   2.631%   0.843%   1.555%   0.000%   0.000%   0.000%
   24    3.2  0.5 -0.5   1.555%   0.364%   5.873%   3.072%   5.126%   3.189%   5.515%   0.004%   0.000%   0.000%
   25    4.2  0.5 -0.5   3.453%   2.950%   0.801%   8.393%  11.111%   7.785%  14.791%   0.002%   0.001%   0.000%
   26    5.2  0.5 -0.5   0.051%   0.486%   0.083%   7.327%  29.367%   4.028%   6.068%   0.002%   0.000%   0.000%
   27    6.2  0.5 -0.5   1.795%   0.601%   0.318%   3.070%   3.506%   0.399%   0.092%   0.001%   0.000%   0.000%
   28    7.2  0.5 -0.5   6.789%   0.120%   1.870%   8.113%   6.793%   3.822%   2.437%   0.006%   0.000%   0.000%
   29    8.2  0.5 -0.5   0.728%   1.545%   1.600%   7.167%   9.603%   2.972%   9.241%   0.002%   0.000%   0.000%
   30    9.2  0.5 -0.5  15.192%   1.981%   2.375%   1.500%   1.748%   4.034%   0.946%   0.000%   0.000%   0.000%
   31   10.2  0.5 -0.5   0.424%   0.080%   0.296%   0.006%   0.032%   0.028%   0.034%   0.000%   0.000%   0.000%
   32   11.2  0.5 -0.5   7.491%   1.632%   2.288%   0.760%   1.034%   3.176%   0.422%   0.001%   0.000%   0.000%
   33   12.2  0.5 -0.5   1.029%   1.423%   1.830%   1.888%   0.136%   1.725%   2.214%   0.000%   0.000%   0.000%
   34   13.2  0.5 -0.5   0.153%   0.501%   0.044%   0.264%   0.284%   0.043%   0.207%   0.000%   0.000%   0.000%
   35   14.2  0.5 -0.5   1.057%   2.080%   0.640%   0.537%   1.353%   0.157%   0.695%   0.000%   0.000%   0.000%
   36   15.2  0.5 -0.5   0.192%   0.004%   0.031%   0.002%   0.081%   0.028%   0.023%   0.000%   0.000%   0.000%
   37   16.2  0.5 -0.5   0.499%   1.008%   2.923%   1.717%   0.197%   1.775%   1.799%   0.000%   0.000%   0.000%
   38   17.2  0.5 -0.5   1.631%   0.152%   0.013%   0.355%   0.535%   1.013%   0.023%   0.000%   0.000%   0.000%

   Nr   State  S   Sz      21       22       23       24       25       26       27       28       29       30

    1    1.2  1.5  1.5   6.477%   0.001%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    2    1.2  1.5  0.5  21.054%   0.000%   0.000%   0.001%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%
    3    1.2  1.5 -0.5  22.681%   0.015%   0.001%   0.002%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    4    1.2  1.5 -1.5  49.223%   0.012%   0.001%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    5    1.2  0.5  0.5   0.002%   0.312%   0.113%   0.148%   0.031%   0.066%   0.099%   0.096%   1.254%   8.678%
    6    2.2  0.5  0.5   0.003%   0.141%   1.288%   0.325%   0.330%   0.572%   0.144%   0.310%   0.999%   1.604%
    7    3.2  0.5  0.5   0.002%   0.216%   0.341%   0.973%   0.633%   1.048%   0.430%   0.124%   0.374%   1.748%
    8    4.2  0.5  0.5   0.001%   0.229%   0.264%   0.080%   0.346%   0.154%   0.222%   0.004%   0.343%   3.289%
    9    5.2  0.5  0.5   0.007%   0.019%   6.811%   4.367%   0.946%   1.488%   0.700%   2.742%   2.270%   0.884%
   10    6.2  0.5  0.5   0.001%   0.114%   0.448%   0.149%   0.098%   0.672%   0.055%   0.316%   1.354%   0.269%
   11    7.2  0.5  0.5   0.000%   0.942%   0.935%   0.962%   1.131%   0.420%   1.201%   0.365%   2.934%   1.874%
   12    8.2  0.5  0.5   0.003%   0.465%   0.702%   1.287%   3.174%   3.199%   1.281%   3.408%   3.319%   3.921%
   13    9.2  0.5  0.5   0.045%   6.720%   8.227%   1.709%   3.225%  16.235%   9.755%   0.239%   4.837%   0.799%
   14   10.2  0.5  0.5   0.035%   2.988%   0.986%   5.929%  13.035%   2.776%   0.870%   3.021%   2.817%   8.963%
   15   11.2  0.5  0.5   0.037%   2.298%   2.318%   8.699%   3.724%  10.934%   1.098%   1.086%   5.369%   1.252%
   16   12.2  0.5  0.5   0.007%   9.669%   7.584%   0.585%   4.802%   2.477%   0.913%   1.814%   4.712%   5.893%
   17   13.2  0.5  0.5   0.011%   0.379%   5.077%   2.268%   6.378%   1.159%   4.599%   0.913%   1.533%   4.446%
   18   14.2  0.5  0.5   0.000%   3.325%   7.573%  10.818%   7.610%  10.187%   0.920%   0.551%   5.300%   3.745%
   19   15.2  0.5  0.5   0.017%  14.222%   0.079%   5.337%   0.516%   4.672%  15.931%   0.419%   2.389%   6.498%
   20   16.2  0.5  0.5   0.014%   0.170%   0.645%   4.381%   4.048%   0.685%  12.624%  19.760%   4.014%   4.450%
   21   17.2  0.5  0.5   0.022%   1.012%  15.065%   0.261%   8.848%   2.837%   3.128%   2.756%   0.558%   4.346%
   22    1.2  0.5 -0.5   0.080%   0.273%   2.796%   4.698%   1.489%   7.930%   4.757%   1.277%   0.389%   0.048%
   23    2.2  0.5 -0.5   0.008%   1.618%   2.360%   1.885%   6.730%   1.086%   8.497%   6.570%   9.516%   9.283%
   24    3.2  0.5 -0.5   0.037%  17.219%   2.712%   1.693%   2.058%   1.310%   2.880%   7.720%  13.365%   1.168%
   25    4.2  0.5 -0.5   0.073%   0.133%  13.934%  14.289%   1.759%   2.571%   7.035%   1.979%   0.211%   0.614%
   26    5.2  0.5 -0.5   0.051%   3.225%   8.387%   9.737%   8.170%   9.530%   4.581%   0.076%   0.582%   0.825%
   27    6.2  0.5 -0.5   0.001%   3.132%   1.092%   0.956%   1.182%   2.793%   0.161%   6.534%   9.305%   8.128%
   28    7.2  0.5 -0.5   0.016%  19.558%   2.126%   5.544%   2.223%   1.500%   3.444%   2.096%   9.424%   0.092%
   29    8.2  0.5 -0.5   0.055%   5.860%   0.368%   8.883%   9.562%   8.207%   2.963%   2.975%   1.703%   3.913%
   30    9.2  0.5 -0.5   0.005%   1.745%   1.890%   0.100%   0.131%   1.998%   5.356%   5.838%   0.559%   2.612%
   31   10.2  0.5 -0.5   0.000%   0.202%   0.062%   0.035%   0.083%   0.007%   0.354%   0.386%   0.043%   0.061%
   32   11.2  0.5 -0.5   0.002%   2.216%   1.492%   0.185%   0.821%   1.521%   3.601%   7.403%   0.249%   0.828%
   33   12.2  0.5 -0.5   0.014%   0.238%   1.732%   0.886%   2.292%   0.535%   0.267%   5.162%   0.878%   2.572%
   34   13.2  0.5 -0.5   0.001%   0.059%   0.176%   0.010%   0.005%   0.346%   0.572%   1.910%   0.832%   0.611%
   35   14.2  0.5 -0.5   0.004%   0.425%   1.017%   0.143%   2.098%   0.385%   0.966%   2.539%   4.424%   1.554%
   36   15.2  0.5 -0.5   0.000%   0.094%   0.048%   0.234%   0.083%   0.024%   0.098%   0.167%   0.555%   0.547%
   37   16.2  0.5 -0.5   0.011%   0.610%   1.266%   1.270%   2.249%   0.533%   0.332%   7.994%   3.055%   0.257%
   38   17.2  0.5 -0.5   0.000%   0.147%   0.081%   1.170%   0.188%   0.144%   0.166%   1.450%   0.534%   4.231%

   Nr   State  S   Sz      31       32       33       34       35       36       37       38

    1    1.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    2    1.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    3    1.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    4    1.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    5    1.2  0.5  0.5   1.653%   0.396%   6.400%  16.851%   1.670%   4.359%   7.326%   0.126%
    6    2.2  0.5  0.5   1.845%  10.098%   1.397%   0.062%   2.792%   0.394%   1.450%  25.866%
    7    3.2  0.5  0.5   0.148%   2.587%  11.950%  17.204%   1.628%   2.100%   6.959%   0.001%
    8    4.2  0.5  0.5   1.757%   0.131%   2.494%   1.767%   1.060%  35.707%   2.472%   0.020%
    9    5.2  0.5  0.5  14.555%   3.688%   4.823%   0.241%   0.527%   0.536%   6.033%   0.873%
   10    6.2  0.5  0.5   1.399%   7.672%   1.620%   0.136%   6.252%   1.036%   4.782%  20.808%
   11    7.2  0.5  0.5   7.844%   5.680%   4.658%   4.419%   4.986%   0.254%  11.918%   0.056%
   12    8.2  0.5  0.5   0.252%   8.768%   0.195%   0.314%  17.711%   0.959%   1.095%   0.937%
   13    9.2  0.5  0.5   0.012%   1.257%   0.349%   0.386%   2.484%   1.069%   0.486%   0.004%
   14   10.2  0.5  0.5   0.355%   0.228%   0.401%   0.600%   0.228%   0.005%   0.670%   0.066%
   15   11.2  0.5  0.5   0.541%   2.151%   0.860%   2.156%   4.524%   0.247%   0.622%   0.001%
   16   12.2  0.5  0.5   4.937%   0.839%   5.032%   0.554%   1.069%   0.074%   0.687%   0.024%
   17   13.2  0.5  0.5   8.710%   1.155%   6.860%   0.495%   1.285%   1.962%   3.042%   0.593%
   18   14.2  0.5  0.5   0.177%   0.135%   1.186%   2.747%   1.263%   0.252%   0.646%   0.012%
   19   15.2  0.5  0.5   0.345%   1.843%   0.718%   0.223%   0.761%   0.058%   0.444%   0.117%
   20   16.2  0.5  0.5   0.329%   0.169%   1.828%   0.435%   0.534%   0.093%   0.908%   0.002%
   21   17.2  0.5  0.5   0.304%   2.413%   0.332%   0.264%   0.130%   0.778%   0.205%   0.517%
   22    1.2  0.5 -0.5   3.755%   3.218%   1.204%   0.145%   1.310%   0.028%   0.178%   0.234%
   23    2.2  0.5 -0.5   0.521%   0.060%   3.782%   0.765%   0.690%   0.049%   0.018%   0.001%
   24    3.2  0.5 -0.5   2.196%   5.245%   0.174%   0.208%   0.038%   0.062%   0.231%   0.208%
   25    4.2  0.5 -0.5   1.346%   1.087%   0.310%   0.007%   0.007%   0.008%   0.031%   0.033%
   26    5.2  0.5 -0.5   0.533%   0.117%   0.165%   0.984%   0.054%   0.006%   0.014%   0.000%
   27    6.2  0.5 -0.5   2.075%   1.356%   1.092%   5.138%   0.892%   0.450%   0.078%   0.000%
   28    7.2  0.5 -0.5   2.278%   6.800%   0.430%   0.055%   0.158%   0.107%   0.352%   0.070%
   29    8.2  0.5 -0.5   3.205%   0.192%   0.765%   0.201%   0.006%   0.142%   0.061%   0.002%
   30    9.2  0.5 -0.5   5.918%   0.740%   1.723%   0.006%   0.072%   0.026%   0.243%  17.646%
   31   10.2  0.5 -0.5   0.163%   1.506%   0.409%   0.941%  22.917%  14.456%   7.879%   0.555%
   32   11.2  0.5 -0.5   1.478%   0.883%   0.452%   0.116%   0.873%   1.018%   0.369%  27.445%
   33   12.2  0.5 -0.5   1.614%   8.893%   2.888%   1.385%   2.090%   2.688%  15.501%   1.358%
   34   13.2  0.5 -0.5   0.357%   0.275%  13.680%  27.978%   1.006%   1.087%   0.347%   0.009%
   35   14.2  0.5 -0.5  22.387%  10.549%   1.288%   0.057%   0.521%   0.003%   0.023%   2.312%
   36   15.2  0.5 -0.5   0.308%   1.071%   1.832%   1.532%  16.974%  26.309%   0.527%   0.019%
   37   16.2  0.5 -0.5   2.110%   7.542%   0.162%   0.052%   0.362%   2.560%  22.614%   0.045%
   38   17.2  0.5 -0.5   4.593%   1.257%  18.539%  11.577%   3.127%   1.117%   1.792%   0.039%


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
              1      21       57.06       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       6     4800.88       700     1000      520     2140     5302     5102   
                                         GEOM     BASIS   MCVARS    MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI        CI     MULTI       INT
 CPU TIMES  *    937739.83 918018.14  19618.68     90.17      8.01      4.47
 REAL TIME  *    945981.03 SEC
 DISK USED  *         4.74 GB (local),      152.14 GB (total)
 SF USED    *        46.60 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/USERDEF energy=     69.474221619319

              CI              CI           MULTI
   -239.85585684   -240.11789243   -239.03076644
 **********************************************************************************************************************************
 Molpro calculation terminated with 1 warning(s)
