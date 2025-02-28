
 Working directory              : /wrk/irikura/molpro.hQXbME40Sr/
 Global scratch directory       : /wrk/irikura/molpro.hQXbME40Sr/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.hQXbME40Sr/

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
 
 {ci;hlsmat,ecp,5302.2,5102.2;print,vls=0,hls=2}                                 !compute and diagonalize SO matrix; print elements
 Commands initialized (847), CPU time= 0.02 sec, 718 directives.
 Default parameters read. Elapsed time= 0.18 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2024.1 linked Mon Jun 17 07:53:25 2024


 **********************************************************************************************************************************
 LABEL *   Sb SO-CI                                                                                                                                                      
  (64 PROC) 64 bit mpp version                                                           DATE: 09-Dec-24          TIME: 14:34:19  
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

     140.771 MB (compressed) written to integral file ( 13.2%)

     Node minimum: 1.311 MB, node maximum: 7.078 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:    2328688.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:    2328688      RECORD LENGTH: 524288

 Memory used in sort:       2.89 MW

 SORT1 READ   134353782. AND WROTE      426577. INTEGRALS IN      2 RECORDS. CPU TIME:     1.01 SEC, REAL TIME:     1.05 SEC
 SORT2 READ    13878186. AND WROTE    74805201. INTEGRALS IN    448 RECORDS. CPU TIME:     0.05 SEC, REAL TIME:     0.06 SEC

 Node minimum:     2326267.  Node maximum:     2346671. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      19       29.52       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         4.09      3.78
 REAL TIME  *         5.88 SEC
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
 *** IN SYMMETRY 1 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.543D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.628D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.691D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.480D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.485D+00 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 2 5 3 6 4 1 1 6 4   3 5 2 1 2 4 6 3 5 1   4 6 3 5 2 4 6 5 3 2  1514 7 9111310 812 1
                                        4 6 2 5 31415 7 911   8121310 11415 7 911  1310 812 6 4 2 5 3 1   2 5 3 6 4 715141310
                                        812 911 1 5 3 2 6 4   1 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.373D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.373D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.680D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.680D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.712D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.463D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  9 SYMMETRY CONTAMINATION OF 0.463D+00 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   2 1 3 3 1 2 3 2 1 3   1 2 810 6 5 4 9 7 1   2 3 810 6 9 7 4 5 1   2 3 810 6 4 5 9 7 8
                                       10 6 4 5 7 9 1 2 3 8  10 6 4 5 9 7 2 1 319  16141112211318201517   6 810 7 9 4 5 2 1 3
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
   1   12   20    0   -239.09334040    -239.12147512   -0.02813472    0.12871318 0.00052248 0.00000000  0.10E+01      2.67
   2    7   12    0   -239.11950920    -239.12153620   -0.00202701    0.11160331 0.00020752 0.00000000  0.23E+00      4.99
   3    5   10    0   -239.12154391    -239.12154409   -0.00000018    0.00060256 0.00000007 0.00000000  0.30E-02      6.79
   4    4    8    0   -239.12154409    -239.12154409    0.00000000    0.00000008 0.00000001 0.00000000  0.26E-06      8.35

 CONVERGENCE REACHED!  Final gradient:    0.00000001 ( 0.15E-07)
                       Final energy:   -239.12154409
 
 Results for state 1.2 Quartet
 =============================
 !MCSCF STATE 1.2 Quartet Energy              -239.274130130202
 Nuclear energy                                  0.00000000
 Kinetic energy                                 92.54637788
 One electron energy                          -420.24083928
 Two electron energy                           180.96670915
 Virial ratio                                    3.58545105
 
 !MCSCF STATE 1.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.2 Doublet
 =============================
 !MCSCF STATE 1.2 Doublet Energy              -239.213825368628
 Nuclear energy                                  0.00000000
 Kinetic energy                                 92.50819707
 One electron energy                          -420.04196491
 Two electron energy                           180.82813954
 Virial ratio                                    3.58586626
 
 !MCSCF STATE 1.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.2 Doublet
 =============================
 !MCSCF STATE 2.2 Doublet Energy              -239.213825368610
 Nuclear energy                                  0.00000000
 Kinetic energy                                 92.50819707
 One electron energy                          -420.04196492
 Two electron energy                           180.82813955
 Virial ratio                                    3.58586626
 
 !MCSCF STATE 2.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.2 Doublet
 =============================
 !MCSCF STATE 3.2 Doublet Energy              -239.213825368568
 Nuclear energy                                  0.00000000
 Kinetic energy                                 92.50819707
 One electron energy                          -420.04196490
 Two electron energy                           180.82813953
 Virial ratio                                    3.58586626
 
 !MCSCF STATE 3.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.2 Doublet
 =============================
 !MCSCF STATE 4.2 Doublet Energy              -239.213825368536
 Nuclear energy                                  0.00000000
 Kinetic energy                                 92.50819707
 One electron energy                          -420.04196490
 Two electron energy                           180.82813953
 Virial ratio                                    3.58586626
 
 !MCSCF STATE 4.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.2 Doublet
 =============================
 !MCSCF STATE 5.2 Doublet Energy              -239.213825368531
 Nuclear energy                                  0.00000000
 Kinetic energy                                 92.50819707
 One electron energy                          -420.04196491
 Two electron energy                           180.82813954
 Virial ratio                                    3.58586626
 
 !MCSCF STATE 5.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.2 Doublet
 =============================
 !MCSCF STATE 6.2 Doublet Energy              -239.190650902526
 Nuclear energy                                  0.00000000
 Kinetic energy                                 92.48325408
 One electron energy                          -419.85366835
 Two electron energy                           180.66301744
 Virial ratio                                    3.58631309
 
 !MCSCF STATE 6.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.2 Doublet
 =============================
 !MCSCF STATE 7.2 Doublet Energy              -239.190650902511
 Nuclear energy                                  0.00000000
 Kinetic energy                                 92.48325409
 One electron energy                          -419.85366838
 Two electron energy                           180.66301747
 Virial ratio                                    3.58631309
 
 !MCSCF STATE 7.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.2 Doublet
 =============================
 !MCSCF STATE 8.2 Doublet Energy              -239.190650902439
 Nuclear energy                                  0.00000000
 Kinetic energy                                 92.48325409
 One electron energy                          -419.85366836
 Two electron energy                           180.66301746
 Virial ratio                                    3.58631309
 
 !MCSCF STATE 8.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 9.2 Doublet
 =============================
 !MCSCF STATE 9.2 Doublet Energy              -239.043550212955
 Nuclear energy                                  0.00000000
 Kinetic energy                                 91.89432109
 One electron energy                          -414.33120710
 Two electron energy                           175.28765688
 Virial ratio                                    3.60128752
 
 !MCSCF STATE 9.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 10.2 Doublet
 ==============================
 !MCSCF STATE 10.2 Doublet Energy             -239.030766440893
 Nuclear energy                                  0.00000000
 Kinetic energy                                 91.94441762
 One electron energy                          -414.57416358
 Two electron energy                           175.54339714
 Virial ratio                                    3.59973115
 
 !MCSCF STATE 10.2 Doublet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 11.2 Doublet
 ==============================
 !MCSCF STATE 11.2 Doublet Energy             -239.030766440812
 Nuclear energy                                  0.00000000
 Kinetic energy                                 91.94441763
 One electron energy                          -414.57416359
 Two electron energy                           175.54339715
 Virial ratio                                    3.59973115
 
 !MCSCF STATE 11.2 Doublet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 12.2 Doublet
 ==============================
 !MCSCF STATE 12.2 Doublet Energy             -239.030766440145
 Nuclear energy                                  0.00000000
 Kinetic energy                                 91.94441763
 One electron energy                          -414.57416363
 Two electron energy                           175.54339719
 Virial ratio                                    3.59973115
 
 !MCSCF STATE 12.2 Doublet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 13.2 Doublet
 ==============================
 !MCSCF STATE 13.2 Doublet Energy             -239.030766439606
 Nuclear energy                                  0.00000000
 Kinetic energy                                 91.94441764
 One electron energy                          -414.57416369
 Two electron energy                           175.54339725
 Virial ratio                                    3.59973115
 
 !MCSCF STATE 13.2 Doublet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 14.2 Doublet
 ==============================
 !MCSCF STATE 14.2 Doublet Energy             -239.030766439498
 Nuclear energy                                  0.00000000
 Kinetic energy                                 91.94441764
 One electron energy                          -414.57416370
 Two electron energy                           175.54339726
 Virial ratio                                    3.59973115
 
 !MCSCF STATE 14.2 Doublet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 15.2 Doublet
 ==============================
 !MCSCF STATE 15.2 Doublet Energy             -239.025067179803
 Nuclear energy                                  0.00000000
 Kinetic energy                                 91.95870285
 One electron energy                          -414.64668925
 Two electron energy                           175.62162207
 Virial ratio                                    3.59926532
 
 !MCSCF STATE 15.2 Doublet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 16.2 Doublet
 ==============================
 !MCSCF STATE 16.2 Doublet Energy             -239.025067178924
 Nuclear energy                                  0.00000000
 Kinetic energy                                 91.95870286
 One electron energy                          -414.64668929
 Two electron energy                           175.62162211
 Virial ratio                                    3.59926532
 
 !MCSCF STATE 16.2 Doublet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 17.2 Doublet
 ==============================
 !MCSCF STATE 17.2 Doublet Energy             -239.025067178143
 Nuclear energy                                  0.00000000
 Kinetic energy                                 91.95870286
 One electron energy                          -414.64668935
 Two electron energy                           175.62162218
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
 !MCSCF expec      <1.2 Doublet|LXLX|1.2 Doublet>     1.925695634239
 !MCSCF expec      <2.2 Doublet|LXLX|2.2 Doublet>     1.000000007151
 !MCSCF expec      <3.2 Doublet|LXLX|3.2 Doublet>     3.999999999997
 !MCSCF expec      <4.2 Doublet|LXLX|4.2 Doublet>     2.074350188948
 !MCSCF expec      <5.2 Doublet|LXLX|5.2 Doublet>     1.000013205113
 !MCSCF expec      <6.2 Doublet|LXLX|6.2 Doublet>     0.000000000004
 !MCSCF expec      <7.2 Doublet|LXLX|7.2 Doublet>     0.999999999998
 !MCSCF expec      <8.2 Doublet|LXLX|8.2 Doublet>     1.000000000000
 !MCSCF expec      <9.2 Doublet|LXLX|9.2 Doublet>    -0.000000000000
 !MCSCF expec    <10.2 Doublet|LXLX|10.2 Doublet>     0.332945746662
 !MCSCF expec    <11.2 Doublet|LXLX|11.2 Doublet>     0.999999995124
 !MCSCF expec    <12.2 Doublet|LXLX|12.2 Doublet>     0.999999999991
 !MCSCF expec    <13.2 Doublet|LXLX|13.2 Doublet>     3.999999999974
 !MCSCF expec    <14.2 Doublet|LXLX|14.2 Doublet>     3.667058472997
 !MCSCF expec    <15.2 Doublet|LXLX|15.2 Doublet>     1.000000000000
 !MCSCF expec    <16.2 Doublet|LXLX|16.2 Doublet>     1.000000000000
 !MCSCF expec    <17.2 Doublet|LXLX|17.2 Doublet>     0.000000000000
 
 !MCSCF expec      <1.2 Quartet|LYLY|1.2 Quartet>    -0.000000000000
 !MCSCF expec      <1.2 Doublet|LYLY|1.2 Doublet>     0.306297195718
 !MCSCF expec      <2.2 Doublet|LYLY|2.2 Doublet>     1.000000034309
 !MCSCF expec      <3.2 Doublet|LYLY|3.2 Doublet>     1.000000000002
 !MCSCF expec      <4.2 Doublet|LYLY|4.2 Doublet>     3.693674930605
 !MCSCF expec      <5.2 Doublet|LYLY|5.2 Doublet>     3.999996657093
 !MCSCF expec      <6.2 Doublet|LYLY|6.2 Doublet>     0.999999999996
 !MCSCF expec      <7.2 Doublet|LYLY|7.2 Doublet>     0.999999982361
 !MCSCF expec      <8.2 Doublet|LYLY|8.2 Doublet>     0.000000026739
 !MCSCF expec      <9.2 Doublet|LYLY|9.2 Doublet>    -0.000000000000
 !MCSCF expec    <10.2 Doublet|LYLY|10.2 Doublet>     1.876606239008
 !MCSCF expec    <11.2 Doublet|LYLY|11.2 Doublet>     1.000000007890
 !MCSCF expec    <12.2 Doublet|LYLY|12.2 Doublet>     3.999999999602
 !MCSCF expec    <13.2 Doublet|LYLY|13.2 Doublet>     1.000000000030
 !MCSCF expec    <14.2 Doublet|LYLY|14.2 Doublet>     2.123386137582
 !MCSCF expec    <15.2 Doublet|LYLY|15.2 Doublet>     0.999999999786
 !MCSCF expec    <16.2 Doublet|LYLY|16.2 Doublet>     0.000000000223
 !MCSCF expec    <17.2 Doublet|LYLY|17.2 Doublet>     1.000000000000
 
 !MCSCF expec      <1.2 Quartet|LZLZ|1.2 Quartet>    -0.000000000000
 !MCSCF expec      <1.2 Doublet|LZLZ|1.2 Doublet>     3.768007170043
 !MCSCF expec      <2.2 Doublet|LZLZ|2.2 Doublet>     3.999999958540
 !MCSCF expec      <3.2 Doublet|LZLZ|3.2 Doublet>     1.000000000001
 !MCSCF expec      <4.2 Doublet|LZLZ|4.2 Doublet>     0.231974880447
 !MCSCF expec      <5.2 Doublet|LZLZ|5.2 Doublet>     0.999990137794
 !MCSCF expec      <6.2 Doublet|LZLZ|6.2 Doublet>     1.000000000000
 !MCSCF expec      <7.2 Doublet|LZLZ|7.2 Doublet>     0.000000017641
 !MCSCF expec      <8.2 Doublet|LZLZ|8.2 Doublet>     0.999999973261
 !MCSCF expec      <9.2 Doublet|LZLZ|9.2 Doublet>    -0.000000000000
 !MCSCF expec    <10.2 Doublet|LZLZ|10.2 Doublet>     3.790448014331
 !MCSCF expec    <11.2 Doublet|LZLZ|11.2 Doublet>     3.999999996986
 !MCSCF expec    <12.2 Doublet|LZLZ|12.2 Doublet>     1.000000000406
 !MCSCF expec    <13.2 Doublet|LZLZ|13.2 Doublet>     0.999999999997
 !MCSCF expec    <14.2 Doublet|LZLZ|14.2 Doublet>     0.209555389421
 !MCSCF expec    <15.2 Doublet|LZLZ|15.2 Doublet>     0.000000000214
 !MCSCF expec    <16.2 Doublet|LZLZ|16.2 Doublet>     0.999999999777
 !MCSCF expec    <17.2 Doublet|LZLZ|17.2 Doublet>     1.000000000000
 
 !MCSCF expec      <1.2 Quartet|L**2|1.2 Quartet>    -0.000000000000
 !MCSCF expec      <1.2 Doublet|L**2|1.2 Doublet>     6.000000000000
 !MCSCF expec      <2.2 Doublet|L**2|2.2 Doublet>     6.000000000000
 !MCSCF expec      <3.2 Doublet|L**2|3.2 Doublet>     6.000000000000
 !MCSCF expec      <4.2 Doublet|L**2|4.2 Doublet>     6.000000000000
 !MCSCF expec      <5.2 Doublet|L**2|5.2 Doublet>     6.000000000000
 !MCSCF expec      <6.2 Doublet|L**2|6.2 Doublet>     2.000000000000
 !MCSCF expec      <7.2 Doublet|L**2|7.2 Doublet>     2.000000000000
 !MCSCF expec      <8.2 Doublet|L**2|8.2 Doublet>     2.000000000000
 !MCSCF expec      <9.2 Doublet|L**2|9.2 Doublet>    -0.000000000000
 !MCSCF expec    <10.2 Doublet|L**2|10.2 Doublet>     6.000000000000
 !MCSCF expec    <11.2 Doublet|L**2|11.2 Doublet>     6.000000000000
 !MCSCF expec    <12.2 Doublet|L**2|12.2 Doublet>     6.000000000000
 !MCSCF expec    <13.2 Doublet|L**2|13.2 Doublet>     6.000000000000
 !MCSCF expec    <14.2 Doublet|L**2|14.2 Doublet>     6.000000000000
 !MCSCF expec    <15.2 Doublet|L**2|15.2 Doublet>     2.000000000000
 !MCSCF expec    <16.2 Doublet|L**2|16.2 Doublet>     2.000000000000
 !MCSCF expec    <17.2 Doublet|L**2|17.2 Doublet>     2.000000000000
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 6 3 5 2 4 1 1 4 2   6 3 5 1 4 2 6 3 5 1   5 3 4 6 2 6 5 3 4 2  1310111415 812 7 9 1
                                        6 5 3 2 41310111415   812 7 9 11310111514   812 7 9 6 2 4 5 3 1   2 5 3 6 41310111415
                                        812 7 9 1 2 5 3 6 4   1 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   2 3 1 1 3 2 2 3 1 3   2 1 4 6 810 9 7 5 3   2 1 7 9 810 6 5 4 2   1 3 5 7 9 810 6 4 5
                                        7 9 810 6 4 2 1 3 9   7 5 810 6 4 2 1 318  20121517161421131911   9 7 5 810 6 4 2 1 3
                                        7 9 5 810 6 4 2 1 3   2 1 3
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -6.62466     1  1  s    0.99996
    2.1     2.00000    -1.71900     1  1  d1-  1.00082
    3.1     2.00000    -1.71900     1  1  d2-  1.00082
    4.1     2.00000    -1.71900     1  1  d2+  1.00082
    5.1     2.00000    -1.71900     1  1  d0   1.00082
    6.1     2.00000    -1.71900     1  1  d1+  1.00082
    7.1     1.97996    -0.69992     1  1  s   -0.35230    1  4  s    0.57804    1  5  s    0.63409    1  9  s   -0.28901
    1.2     2.00000    -4.69150     1  1  py   0.99963
    2.2     2.00000    -4.69150     1  1  pz   0.99963
    3.2     2.00000    -4.69150     1  1  px   0.99963
    4.2     0.83866    -0.19719     1  1  px  -0.30405    1  4  px   0.46920    1  5  px   0.49073
    5.2     0.83866    -0.19719     1  1  pz  -0.30405    1  4  pz   0.46920    1  5  pz   0.49073
    6.2     0.83866    -0.19719     1  1  py  -0.30405    1  4  py   0.46920    1  5  py   0.49073
    7.2     0.16802     0.02289     1 10  py   0.78719    1 11  py   0.38918
    8.2     0.16802     0.02289     1 10  pz   0.78719    1 11  pz   0.38918
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
 2 aba000      -0.19560670     -0.00005041      0.00000014      0.78831451      0.00283982     -0.00000000     -0.00000000
 2 aab000       0.78050816     -0.00002184      0.00000024     -0.22475830     -0.00072324     -0.00000000     -0.00000000
 2 a02000       0.00000027     -0.00000027     -0.70340769      0.00000019      0.00000055      0.69288321     -0.00000020
 2 0a2000      -0.00003514     -0.70340767      0.00000027     -0.00005349     -0.00005630      0.00000020      0.69288323
 2 2a0000       0.00003514      0.70340767     -0.00000027      0.00005349      0.00005630      0.00000020      0.69288322
 2 a20000      -0.00000027      0.00000027      0.70340766     -0.00000019     -0.00000055      0.69288324     -0.00000020
 2 20a000      -0.00008389     -0.00005610      0.00000055     -0.00255475      0.70340304     -0.00000132     -0.00009202
 2 02a000       0.00008389      0.00005610     -0.00000055      0.00255475     -0.70340302     -0.00000132     -0.00009202
 2 a0a0b0       0.01373969      0.00000354     -0.00000001     -0.05537232     -0.00019947      0.00000000     -0.00000000
 2 0aa00b      -0.04108433      0.00000507     -0.00000003     -0.03958501     -0.00014867      0.00000000     -0.00000000
 2 baa000      -0.58490147      0.00007225     -0.00000038     -0.56355621     -0.00211658      0.00000000      0.00000000
 2 a0a00b       0.00000589      0.00000394     -0.00000004      0.00017945     -0.04940805      0.00000013      0.00000873
 2 aa000b      -0.00000247     -0.04940838      0.00000002     -0.00000376     -0.00000395     -0.00000002     -0.06570741
 2 a0ab00       0.00000002     -0.00000002     -0.04940835      0.00000001      0.00000004      0.06570738     -0.00000002
 2 aa00b0      -0.00000002      0.00000002      0.04940834     -0.00000001     -0.00000004      0.06570738     -0.00000002
 2 0aab00      -0.00000247     -0.04940835      0.00000002     -0.00000376     -0.00000395      0.00000002      0.06570738
 2 0aa0b0      -0.00000589     -0.00000394      0.00000004     -0.00017945      0.04940802      0.00000013      0.00000873
 2 aa0b00       0.05482400     -0.00000153      0.00000002     -0.01578734     -0.00005080     -0.00000000     -0.00000000
 2 0ab0a0       0.00000145      0.00000097     -0.00000001      0.00004430     -0.01219723     -0.00000003     -0.00000200
 2 0baa00       0.00000061      0.01219731     -0.00000000      0.00000093      0.00000098     -0.00000000     -0.01504636
 2 ba00a0       0.00000000     -0.00000000     -0.01219731      0.00000000      0.00000001     -0.01504636      0.00000000
 2 b0aa00      -0.00000000      0.00000000      0.01219731     -0.00000000     -0.00000001     -0.01504636      0.00000000
 2 ab000a       0.00000061      0.01219731     -0.00000000      0.00000093      0.00000098      0.00000000      0.01504636
 2 a0b00a      -0.00000145     -0.00000097      0.00000001     -0.00004430      0.01219723     -0.00000003     -0.00000200
 2 0ba00a       0.00318644     -0.00000305      0.00000001      0.03780536      0.00013769     -0.00000000      0.00000000
 2 b0a0a0       0.01740766     -0.00000344      0.00000002      0.03371012      0.00012451     -0.00000000      0.00000000
 2 ab0a00      -0.02049018     -0.00000141      0.00000000      0.03193046      0.00011353      0.00000000      0.00000000
 2 a0b0a0      -0.03114735     -0.00000010     -0.00000001      0.02166220      0.00007496     -0.00000000      0.00000000
 2 ba0a00      -0.03433381      0.00000295     -0.00000002     -0.01614312     -0.00006273      0.00000000      0.00000000
 2 0ab00a       0.03789789     -0.00000203      0.00000001      0.00177965      0.00001098     -0.00000000      0.00000000
 2 b0a00a      -0.00000444     -0.00000297      0.00000003     -0.00013515      0.03721082     -0.00000010     -0.00000673
 2 ba000a       0.00000186      0.03721107     -0.00000001      0.00000283      0.00000298      0.00000001      0.05066105
 2 a0ba00      -0.00000001      0.00000001      0.03721104     -0.00000001     -0.00000003     -0.05066102      0.00000001
 2 0aba00       0.00000186      0.03721104     -0.00000001      0.00000283      0.00000298     -0.00000001     -0.05066102
 2 ab00a0       0.00000001     -0.00000001     -0.03721103      0.00000001      0.00000003     -0.05066102      0.00000001
 2 0ba0a0       0.00000444      0.00000297     -0.00000003      0.00013515     -0.03721078     -0.00000010     -0.00000673
 0 a22000      -0.00000000     -0.00000000      0.00000000      0.00000000     -0.00000000     -0.15389099      0.00000004
 0 22a000       0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000000      0.00000029      0.00002044
 0 2a2000       0.00000000      0.00000000     -0.00000000      0.00000000      0.00000000     -0.00000004     -0.15389099
 2 02000a      -0.00000001      0.00000001      0.02501376     -0.00000001     -0.00000002      0.02402704     -0.00000001
 2 2000a0       0.00000125      0.02501372     -0.00000001      0.00000190      0.00000200      0.00000001      0.02402700
 2 200a00      -0.00000298     -0.00000199      0.00000002     -0.00009085      0.02501356     -0.00000005     -0.00000319
 2 00200a       0.00000001     -0.00000001     -0.02501376      0.00000001      0.00000002      0.02402704     -0.00000001
 2 020a00       0.00000298      0.00000199     -0.00000002      0.00009085     -0.02501356     -0.00000005     -0.00000319
 2 0020a0      -0.00000125     -0.02501372      0.00000001     -0.00000190     -0.00000200      0.00000001      0.02402700
 0 a2a0b0      -0.00385618     -0.00000099      0.00000000      0.01554077      0.00005598     -0.00000000      0.00000000
 0 2aa00b       0.01153070     -0.00000142      0.00000001      0.01110990      0.00004173     -0.00000000     -0.00000000
 0 2aa0b0       0.00000165      0.00000111     -0.00000001      0.00005036     -0.01386684      0.00000000      0.00000034
 0 2aab00       0.00000069      0.01386693     -0.00000001      0.00000105      0.00000111      0.00000000      0.00259698
 0 aa20b0       0.00000001     -0.00000001     -0.01386693      0.00000000      0.00000001      0.00259698     -0.00000000
 0 a2ab00      -0.00000001      0.00000001      0.01386693     -0.00000000     -0.00000001      0.00259698     -0.00000000
 0 aa200b       0.00000069      0.01386692     -0.00000001      0.00000105      0.00000111     -0.00000000     -0.00259697
 0 a2a00b      -0.00000165     -0.00000111      0.00000001     -0.00005036      0.01386683      0.00000000      0.00000034
 
 Energy:     -239.21382537   -239.21382537   -239.21382537   -239.21382537   -239.21382537   -239.19065090   -239.19065090

 State:              8               9              10              11              12              13              14
 2 aba000      -0.00000000      0.00000002      0.01488723      0.00000148     -0.00000031      0.00000013      0.06331589
 2 aab000      -0.00000000      0.00000001      0.04738958      0.00000221      0.00000001     -0.00000005     -0.04455064
 2 a02000       0.00000132      0.00000000     -0.00000004      0.00000001      0.00000002      0.05632848     -0.00000010
 2 0a2000       0.00009202      0.00000000      0.00000317     -0.05632848     -0.00000047      0.00000001      0.00000057
 2 2a0000       0.00009202      0.00000000     -0.00000317      0.05632853      0.00000047     -0.00000001     -0.00000057
 2 a20000       0.00000132      0.00000000      0.00000004     -0.00000001     -0.00000002     -0.05632847      0.00000010
 2 20a000       0.69288320      0.00000000      0.00000021     -0.00000047      0.05632853     -0.00000002      0.00000023
 2 02a000       0.69288324     -0.00000000     -0.00000021      0.00000047     -0.05632847      0.00000002     -0.00000023
 2 a0a0b0       0.00000000     -0.46849043      0.14888710      0.00001479     -0.00000310      0.00000127      0.63322266
 2 0aa00b      -0.00000000      0.46849045      0.62283044      0.00003691     -0.00000305      0.00000076      0.18767131
 2 baa000       0.00000000     -0.00000002     -0.06227680     -0.00000369      0.00000030     -0.00000008     -0.01876525
 2 a0a00b      -0.06570741     -0.00000000      0.00000207     -0.00000466      0.56334163     -0.00000020      0.00000227
 2 aa000b      -0.00000873     -0.00000000     -0.00003167      0.56334161      0.00000466     -0.00000014     -0.00000571
 2 a0ab00       0.00000013      0.00000000      0.00000037     -0.00000014     -0.00000020     -0.56334159      0.00000104
 2 aa00b0       0.00000013     -0.00000000     -0.00000037      0.00000014      0.00000020      0.56334155     -0.00000104
 2 0aab00       0.00000873      0.00000000     -0.00003167      0.56334152      0.00000466     -0.00000014     -0.00000571
 2 0aa0b0      -0.06570738     -0.00000000     -0.00000207      0.00000466     -0.56334150      0.00000020     -0.00000227
 2 aa0b00      -0.00000000      0.46849044     -0.47394336     -0.00002213     -0.00000005      0.00000051      0.44555132
 2 0ab0a0       0.01504636      0.00000000      0.00000121     -0.00000273      0.32960062     -0.00000011      0.00000133
 2 0baa00      -0.00000200     -0.00000000      0.00001853     -0.32960062     -0.00000273      0.00000008      0.00000334
 2 ba00a0      -0.00000003      0.00000000      0.00000022     -0.00000008     -0.00000011     -0.32960065      0.00000061
 2 b0aa00      -0.00000003      0.00000000     -0.00000022      0.00000008      0.00000011      0.32960066     -0.00000061
 2 ab000a       0.00000200      0.00000000      0.00001853     -0.32960067     -0.00000273      0.00000008      0.00000334
 2 a0b00a       0.01504636      0.00000000     -0.00000121      0.00000273     -0.32960068      0.00000011     -0.00000133
 2 0ba00a       0.00000000     -0.23424523     -0.33907145     -0.00001908      0.00000125     -0.00000023     -0.00205209
 2 b0a0a0      -0.00000000      0.23424521      0.01887145     -0.00000237      0.00000129     -0.00000061     -0.33855212
 2 ab0a00      -0.00000000     -0.23424523      0.30263045      0.00001546     -0.00000050     -0.00000008     -0.15293288
 2 a0b0a0      -0.00000000      0.23424522     -0.16775856     -0.00001242      0.00000180     -0.00000066     -0.29467055
 2 ba0a00       0.00000000     -0.23424522      0.17131291      0.00000666      0.00000055     -0.00000043     -0.29261844
 2 0ab00a       0.00000000     -0.23424522     -0.28375900     -0.00001783      0.00000179     -0.00000053     -0.18561921
 2 b0a00a       0.05066105      0.00000000     -0.00000086      0.00000193     -0.23374095      0.00000008     -0.00000094
 2 ba000a       0.00000673      0.00000000      0.00001314     -0.23374094     -0.00000193      0.00000006      0.00000237
 2 a0ba00      -0.00000010     -0.00000000     -0.00000015      0.00000006      0.00000008      0.23374093     -0.00000043
 2 0aba00      -0.00000673     -0.00000000      0.00001314     -0.23374090     -0.00000193      0.00000006      0.00000237
 2 ab00a0      -0.00000010      0.00000000      0.00000015     -0.00000006     -0.00000008     -0.23374090      0.00000043
 2 0ba0a0       0.05066102      0.00000000      0.00000086     -0.00000193      0.23374088     -0.00000008      0.00000094
 0 a22000      -0.00000029      0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.00000000
 0 22a000      -0.15389099      0.00000000     -0.00000000      0.00000000     -0.00000001      0.00000000     -0.00000000
 0 2a2000      -0.00002044     -0.00000000      0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00000000
 2 02000a       0.00000005     -0.00000000      0.00000006     -0.00000002     -0.00000003     -0.09585973      0.00000018
 2 2000a0       0.00000319      0.00000000     -0.00000539      0.09585973      0.00000079     -0.00000002     -0.00000097
 2 200a00       0.02402700      0.00000000      0.00000035     -0.00000079      0.09585973     -0.00000003      0.00000039
 2 00200a       0.00000005     -0.00000000     -0.00000006      0.00000002      0.00000003      0.09585973     -0.00000018
 2 020a00       0.02402701     -0.00000000     -0.00000035      0.00000079     -0.09585973      0.00000003     -0.00000039
 2 0020a0       0.00000319     -0.00000000      0.00000539     -0.09585973     -0.00000079      0.00000002      0.00000097
 0 a2a0b0       0.00000000      0.04839433     -0.01545792     -0.00000154      0.00000032     -0.00000013     -0.06574315
 0 2aa00b      -0.00000000     -0.04839433     -0.06466420     -0.00000383      0.00000032     -0.00000008     -0.01948462
 0 2aa0b0      -0.00259698      0.00000000      0.00000022     -0.00000048      0.05848787     -0.00000002      0.00000024
 0 2aab00       0.00000034     -0.00000000      0.00000329     -0.05848787     -0.00000048      0.00000001      0.00000059
 0 aa20b0       0.00000000      0.00000000      0.00000004     -0.00000001     -0.00000002     -0.05848788      0.00000011
 0 a2ab00       0.00000000      0.00000000     -0.00000004      0.00000001      0.00000002      0.05848788     -0.00000011
 0 aa200b      -0.00000034      0.00000000      0.00000329     -0.05848788     -0.00000048      0.00000001      0.00000059
 0 a2a00b      -0.00259697      0.00000000     -0.00000022      0.00000048     -0.05848789      0.00000002     -0.00000024
 
 Energy:     -239.19065090   -239.04355021   -239.03076644   -239.03076644   -239.03076644   -239.03076644   -239.03076644

 State:             15              16              17
 2 aba000       0.00000000     -0.00000000      0.00000000
 2 aab000      -0.00000000      0.00000000      0.00000000
 2 a02000       0.00000001      0.00000003     -0.07203459
 2 0a2000       0.07203460      0.00000105      0.00000001
 2 2a0000       0.07203463      0.00000105      0.00000001
 2 a20000       0.00000001      0.00000003     -0.07203459
 2 20a000      -0.00000105      0.07203462      0.00000003
 2 02a000      -0.00000105      0.07203460      0.00000003
 2 a0a0b0       0.00000000     -0.00000000      0.00000000
 2 0aa00b       0.00000000      0.00000000      0.00000000
 2 baa000       0.00000000      0.00000000     -0.00000000
 2 a0a00b      -0.00000821      0.56113059      0.00000020
 2 aa000b       0.56113061      0.00000821      0.00000011
 2 a0ab00      -0.00000011     -0.00000020      0.56113063
 2 aa00b0      -0.00000011     -0.00000020      0.56113067
 2 0aab00      -0.56113069     -0.00000821     -0.00000011
 2 0aa0b0      -0.00000821      0.56113071      0.00000020
 2 aa0b00       0.00000000      0.00000000      0.00000000
 2 0ab0a0       0.00000502     -0.34271963     -0.00000012
 2 0baa00       0.34271961      0.00000502      0.00000007
 2 ba00a0       0.00000007      0.00000012     -0.34271961
 2 b0aa00       0.00000007      0.00000012     -0.34271957
 2 ab000a      -0.34271955     -0.00000502     -0.00000007
 2 a0b00a       0.00000502     -0.34271953     -0.00000012
 2 0ba00a      -0.00000000     -0.00000000     -0.00000000
 2 b0a0a0      -0.00000000      0.00000000     -0.00000000
 2 ab0a00      -0.00000000     -0.00000000      0.00000000
 2 a0b0a0      -0.00000000      0.00000000     -0.00000000
 2 ba0a00      -0.00000000     -0.00000000     -0.00000000
 2 0ab00a      -0.00000000     -0.00000000     -0.00000000
 2 b0a00a       0.00000320     -0.21841106     -0.00000008
 2 ba000a      -0.21841106     -0.00000320     -0.00000004
 2 a0ba00       0.00000004      0.00000008     -0.21841106
 2 0aba00       0.21841109      0.00000320      0.00000004
 2 ab00a0       0.00000004      0.00000008     -0.21841107
 2 0ba0a0       0.00000320     -0.21841108     -0.00000008
 0 a22000      -0.00000000     -0.00000001      0.01795216
 0 22a000       0.00000026     -0.01795217     -0.00000001
 0 2a2000      -0.01795217     -0.00000026     -0.00000000
 2 02000a       0.00000002      0.00000003     -0.07563590
 2 2000a0       0.07563587      0.00000111      0.00000002
 2 200a00      -0.00000111      0.07563586      0.00000003
 2 00200a       0.00000002      0.00000003     -0.07563588
 2 020a00      -0.00000111      0.07563591      0.00000003
 2 0020a0       0.07563590      0.00000111      0.00000002
 0 a2a0b0      -0.00000000      0.00000000     -0.00000000
 0 2aa00b      -0.00000000     -0.00000000     -0.00000000
 0 2aa0b0       0.00000089     -0.06060067     -0.00000002
 0 2aab00       0.06060067      0.00000089      0.00000001
 0 aa20b0       0.00000001      0.00000002     -0.06060067
 0 a2ab00       0.00000001      0.00000002     -0.06060066
 0 aa200b      -0.06060066     -0.00000089     -0.00000001
 0 a2a00b       0.00000089     -0.06060066     -0.00000002
 
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
 CPU TIMES  *        12.19      8.10      3.78
 REAL TIME  *        15.40 SEC
 DISK USED  *        58.03 MB (local),        2.14 GB (total)
 SF USED    *        72.38 MB
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
    -239.0435502  -0.0
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

 Diagonal Coupling coefficients finished.               Storage:  10292981 words, CPU-Time:      0.58 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   1993866 words, CPU-time:      0.60 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -239.27413013     0.00000000    -1.03604417  0.50D-01  0.12D+00     2.57
    2     1     1     1.10423454    -0.81736924  -240.09149937    -0.81736924    -0.02736231  0.48D-02  0.17D-02    17.33
    3     1     1     1.08874347    -0.84330280  -240.11743293    -0.02593356    -0.00044023  0.69D-04  0.38D-04    31.89
    4     1     1     1.08829687    -0.84374959  -240.11787972    -0.00044678    -0.00001207  0.20D-05  0.12D-05    46.39
    5     1     1     1.08836049    -0.84376189  -240.11789202    -0.00001230    -0.00000039  0.32D-07  0.64D-07    60.94
    6     1     1     1.08837793    -0.84376230  -240.11789243    -0.00000041    -0.00000002  0.15D-08  0.36D-08    75.49


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   3.1%
 S   3.4%  26.1%
 P   0.9%  52.6%   4.2%

 Initialization:   1.9%
 Other:            7.8%

 Total CPU:       75.5 seconds
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
 Singles      0.01382789   -0.05055799   -0.05716828
 Pairs        0.07456101   -0.79299422   -0.78630482
 Total        1.08851299   -0.84376230   -0.84376230
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -239.27413013
 Nuclear energy                         0.00000000
 Kinetic energy                        93.13880903
 One electron energy                 -419.51401461
 Two electron energy                  179.39612218
 Virial quotient                       -2.57806488
 Correlation energy                    -0.84376230
 !MRCI STATE 1.2 Energy              -240.117892427691

 Properties without orbital relaxation:

 !MRCI STATE 1.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -240.19257636 (Davidson, fixed reference)
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
 CPU TIMES  *        89.23     77.02      8.10      3.78
 REAL TIME  *        96.05 SEC
 DISK USED  *       139.56 MB (local),        4.69 GB (total)
 SF USED    *         1.10 GB
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

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1152D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1344D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1344D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1344D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1344D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1344D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1344D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1344D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1344D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1344D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1344D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1344D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1344D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1344D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1344D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1344D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1344D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1344D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1344D-06

 Number of blocks in overlap matrix:  1471   Smallest eigenvalue:  0.12D-06
 Number of N-2 electron functions:    3556
 Number of N-1 electron functions:  124768

 Number of internal configurations:                44086
 Number of singly external configurations:      10542724
 Number of doubly external configurations:      25402678
 Total number of contracted configurations:     35989488
 Total number of uncontracted configurations:  590453964

 Diagonal Coupling coefficients finished.               Storage:  46681860 words, CPU-Time:    230.50 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   2935596 words, CPU-time:      8.50 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -239.21382537     0.00000000    -1.03657706  0.60D-01  0.11D+00   262.04
    1     2     2     1.00000000     0.00000000  -239.21382537     0.00000000    -1.03604900  0.59D-01  0.11D+00   262.04
    1     3     3     1.00000000     0.00000000  -239.21382537     0.00000000    -1.03679770  0.60D-01  0.11D+00   262.04
    1     4     4     1.00000000     0.00000000  -239.21382537     0.00000000    -1.03783820  0.60D-01  0.11D+00   262.04
    1     5     5     1.00000000     0.00000000  -239.21382537     0.00000000    -1.03655498  0.59D-01  0.11D+00   262.04
    1     6     6     1.00000000     0.00000000  -239.19065090     0.00000000    -1.01696433  0.41D-01  0.11D+00   262.04
    1     7     7     1.00000000     0.00000000  -239.19065090     0.00000000    -1.01674424  0.41D-01  0.11D+00   262.04
    1     8     8     1.00000000     0.00000000  -239.19065090     0.00000000    -1.01713304  0.41D-01  0.11D+00   262.04
    1     9     9     1.00000000     0.00000000  -239.04355021     0.00000000    -0.98661429  0.44D-01  0.10D+00   262.04
    1    10    10     1.00000000     0.00000000  -239.03076644     0.00000000    -0.99070316  0.46D-01  0.10D+00   262.04
    1    11    11     1.00000000     0.00000000  -239.03076644    -0.00000000    -0.99096522  0.45D-01  0.10D+00   262.04
    1    12    12     1.00000000     0.00000000  -239.03076644     0.00000000    -0.99085447  0.45D-01  0.10D+00   262.04
    1    13    13     1.00000000     0.00000000  -239.03076644     0.00000000    -0.99102729  0.45D-01  0.10D+00   262.04
    1    14    14     1.00000000     0.00000000  -239.03076644     0.00000000    -0.99083530  0.46D-01  0.10D+00   262.04
    1    15    15     1.00000000     0.00000000  -239.02506718     0.00000000    -0.99167149  0.47D-01  0.10D+00   262.04
    1    16    16     1.00000000     0.00000000  -239.02506718     0.00000000    -0.99161882  0.47D-01  0.10D+00   262.04
    1    17    17     1.00000000     0.00000000  -239.02506718     0.00000000    -0.99175388  0.47D-01  0.10D+00   262.04
    2     1     1     1.10830143    -0.82607097  -240.03989634    -0.82607097    -0.02825829  0.55D-02  0.17D-02  1737.39
    2     2     2     1.10834754    -0.82605166  -240.03987702    -0.82605166    -0.02831680  0.55D-02  0.17D-02  1737.39
    2     3     3     1.10851649    -0.82592100  -240.03974636    -0.82592099    -0.02844892  0.55D-02  0.17D-02  1737.39
    2     4     4     1.10865451    -0.82570017  -240.03952554    -0.82570017    -0.02865937  0.57D-02  0.17D-02  1737.39
    2     5     5     1.10906810    -0.82530586  -240.03913123    -0.82530586    -0.02906739  0.59D-02  0.17D-02  1737.39
    2     6     6     1.10103445    -0.82356046  -240.01421136    -0.82356046    -0.02528447  0.50D-02  0.16D-02  1737.39
    2     7     7     1.10114222    -0.82352713  -240.01417803    -0.82352713    -0.02533582  0.50D-02  0.16D-02  1737.39
    2     8     8     1.10106908    -0.82345405  -240.01410495    -0.82345405    -0.02536384  0.50D-02  0.17D-02  1737.39
    2     9     9     1.09788261    -0.80854283  -239.85209304    -0.80854283    -0.02032481  0.29D-02  0.13D-02  1737.39
    2    10    10     1.09855242    -0.80971887  -239.84048531    -0.80971887    -0.02109441  0.32D-02  0.13D-02  1737.39
    2    11    11     1.09864759    -0.80967852  -239.84044496    -0.80967852    -0.02113338  0.33D-02  0.13D-02  1737.39
    2    12    12     1.09870497    -0.80962901  -239.84039545    -0.80962901    -0.02118578  0.33D-02  0.13D-02  1737.39
    2    13    13     1.09873500    -0.80961068  -239.84037712    -0.80961068    -0.02119981  0.33D-02  0.13D-02  1737.39
    2    14    14     1.09891560    -0.80944395  -239.84021039    -0.80944395    -0.02137267  0.34D-02  0.13D-02  1737.39
    2    15    15     1.09976689    -0.80943989  -239.83450707    -0.80943989    -0.02167085  0.38D-02  0.13D-02  1737.39
    2    16    16     1.09984208    -0.80936266  -239.83442984    -0.80936266    -0.02174976  0.39D-02  0.13D-02  1737.39
    2    17    17     1.09988534    -0.80936218  -239.83442936    -0.80936218    -0.02174544  0.39D-02  0.13D-02  1737.39
    3     1     1     1.09340472    -0.85285780  -240.06668316    -0.02678683    -0.00075879  0.12D-03  0.84D-04  3218.68
    3     2     2     1.09339693    -0.85285092  -240.06667628    -0.02679926    -0.00076331  0.12D-03  0.84D-04  3218.68
    3     3     3     1.09336909    -0.85284902  -240.06667439    -0.02692802    -0.00076445  0.12D-03  0.85D-04  3218.68
    3     4     4     1.09336353    -0.85282880  -240.06665416    -0.02712863    -0.00077981  0.12D-03  0.87D-04  3218.68
    3     5     5     1.09335603    -0.85281918  -240.06664455    -0.02751332    -0.00079011  0.12D-03  0.89D-04  3218.68
    3     6     6     1.09019512    -0.84797728  -240.03862819    -0.02441682    -0.00066859  0.78D-04  0.90D-04  3218.68
    3     7     7     1.09022696    -0.84797386  -240.03862476    -0.02444673    -0.00067164  0.79D-04  0.91D-04  3218.68
    3     8     8     1.09016194    -0.84795187  -240.03860277    -0.02449782    -0.00068335  0.79D-04  0.93D-04  3218.68
    3     9     9     1.08709006    -0.82803290  -239.87158311    -0.01949007    -0.00034430  0.45D-04  0.32D-04  3218.68
    3    10    10     1.08740638    -0.82990793  -239.86067437    -0.02018905    -0.00039347  0.52D-04  0.41D-04  3218.68
    3    11    11     1.08741599    -0.82990530  -239.86067174    -0.02022678    -0.00039583  0.52D-04  0.41D-04  3218.68
    3    12    12     1.08741320    -0.82990309  -239.86066953    -0.02027408    -0.00039837  0.52D-04  0.42D-04  3218.68
    3    13    13     1.08741603    -0.82990221  -239.86066865    -0.02029153    -0.00039799  0.52D-04  0.42D-04  3218.68
    3    14    14     1.08740545    -0.82989583  -239.86066227    -0.02045188    -0.00040431  0.53D-04  0.42D-04  3218.68
    3    15    15     1.08759211    -0.83027826  -239.85534544    -0.02083837    -0.00042677  0.58D-04  0.47D-04  3218.68
    3    16    16     1.08758275    -0.83027591  -239.85534309    -0.02091325    -0.00042886  0.58D-04  0.47D-04  3218.68
    3    17    17     1.08759644    -0.83027231  -239.85533949    -0.02091013    -0.00043100  0.59D-04  0.48D-04  3218.68
    4     1     1     1.09308010    -0.85366863  -240.06749399    -0.00081083    -0.00004983  0.37D-05  0.81D-05  4708.33
    4     2     2     1.09307384    -0.85366764  -240.06749301    -0.00081673    -0.00005059  0.37D-05  0.81D-05  4708.33
    4     3     3     1.09307913    -0.85366741  -240.06749278    -0.00081840    -0.00005062  0.37D-05  0.82D-05  4708.33
    4     4     4     1.09305705    -0.85366486  -240.06749022    -0.00083606    -0.00005210  0.37D-05  0.85D-05  4708.33
    4     5     5     1.09305989    -0.85366484  -240.06749021    -0.00084567    -0.00005216  0.37D-05  0.85D-05  4708.33
    4     6     6     1.09097099    -0.84872695  -240.03937786    -0.00074967    -0.00005359  0.29D-05  0.93D-05  4708.33
    4     7     7     1.09097174    -0.84872638  -240.03937728    -0.00075252    -0.00005399  0.29D-05  0.94D-05  4708.33
    4     8     8     1.09094207    -0.84872202  -240.03937293    -0.00077015    -0.00005672  0.30D-05  0.98D-05  4708.33
    4     9     9     1.08690955    -0.82839669  -239.87194690    -0.00036379    -0.00001711  0.21D-05  0.25D-05  4708.33
    4    10    10     1.08728831    -0.83033106  -239.86109750    -0.00042313    -0.00002523  0.26D-05  0.44D-05  4708.33
    4    11    11     1.08728870    -0.83033104  -239.86109748    -0.00042574    -0.00002528  0.26D-05  0.44D-05  4708.33
    4    12    12     1.08728772    -0.83033067  -239.86109711    -0.00042758    -0.00002535  0.26D-05  0.44D-05  4708.33
    4    13    13     1.08728541    -0.83033029  -239.86109673    -0.00042807    -0.00002566  0.26D-05  0.45D-05  4708.33
    4    14    14     1.08728373    -0.83033005  -239.86109649    -0.00043422    -0.00002576  0.26D-05  0.45D-05  4708.33
    4    15    15     1.08744340    -0.83074485  -239.85581203    -0.00046659    -0.00002961  0.30D-05  0.53D-05  4708.33
    4    16    16     1.08744070    -0.83074455  -239.85581173    -0.00046864    -0.00002966  0.30D-05  0.53D-05  4708.33
    4    17    17     1.08743877    -0.83074373  -239.85581091    -0.00047142    -0.00003011  0.30D-05  0.53D-05  4708.33
    5     1     1     1.09337152    -0.85372904  -240.06755441    -0.00006042    -0.00000403  0.20D-06  0.70D-06  6197.71
    5     2     2     1.09337089    -0.85372892  -240.06755429    -0.00006128    -0.00000408  0.20D-06  0.71D-06  6197.71
    5     3     3     1.09337017    -0.85372888  -240.06755425    -0.00006147    -0.00000412  0.20D-06  0.71D-06  6197.71
    5     4     4     1.09336789    -0.85372850  -240.06755387    -0.00006365    -0.00000432  0.21D-06  0.75D-06  6197.71
    5     5     5     1.09336770    -0.85372849  -240.06755386    -0.00006365    -0.00000431  0.21D-06  0.75D-06  6197.71
    5     6     6     1.09159366    -0.84879445  -240.03944535    -0.00006749    -0.00000470  0.23D-06  0.76D-06  6197.71
    5     7     7     1.09159241    -0.84879444  -240.03944534    -0.00006806    -0.00000473  0.23D-06  0.76D-06  6197.71
    5     8     8     1.09159052    -0.84879393  -240.03944484    -0.00007191    -0.00000508  0.25D-06  0.81D-06  6197.71
    5     9     9     1.08698440    -0.82841756  -239.87196777    -0.00002087    -0.00000164  0.69D-07  0.33D-06  6197.71
    5    10    10     1.08745984    -0.83036442  -239.86113086    -0.00003336    -0.00000320  0.18D-06  0.59D-06  6197.71
    5    11    11     1.08746001    -0.83036437  -239.86113081    -0.00003333    -0.00000321  0.18D-06  0.60D-06  6197.71
    5    12    12     1.08745866    -0.83036434  -239.86113078    -0.00003368    -0.00000330  0.19D-06  0.61D-06  6197.71
    5    13    13     1.08745907    -0.83036416  -239.86113060    -0.00003388    -0.00000321  0.18D-06  0.59D-06  6197.71
    5    14    14     1.08745933    -0.83036412  -239.86113056    -0.00003407    -0.00000328  0.19D-06  0.61D-06  6197.71
    5    15    15     1.08764012    -0.83078419  -239.85585137    -0.00003934    -0.00000369  0.22D-06  0.67D-06  6197.71
    5    16    16     1.08764009    -0.83078395  -239.85585112    -0.00003939    -0.00000369  0.22D-06  0.67D-06  6197.71
    5    17    17     1.08763890    -0.83078391  -239.85585109    -0.00004018    -0.00000382  0.23D-06  0.69D-06  6197.71
    6     1     1     1.09342026    -0.85373415  -240.06755952    -0.00000511    -0.00000040  0.39D-07  0.55D-07  7690.35
    6     2     2     1.09341974    -0.85373411  -240.06755948    -0.00000518    -0.00000041  0.40D-07  0.57D-07  7690.35
    6     3     3     1.09342024    -0.85373410  -240.06755947    -0.00000522    -0.00000041  0.39D-07  0.56D-07  7690.35
    6     4     4     1.09341886    -0.85373400  -240.06755937    -0.00000550    -0.00000043  0.42D-07  0.59D-07  7690.35
    6     5     5     1.09341881    -0.85373398  -240.06755935    -0.00000549    -0.00000043  0.42D-07  0.59D-07  7690.35
    6     6     6     1.09164807    -0.84880038  -240.03945128    -0.00000593    -0.00000040  0.35D-07  0.56D-07  7690.35
    6     7     7     1.09164855    -0.84880036  -240.03945126    -0.00000592    -0.00000040  0.35D-07  0.55D-07  7690.35
    6     8     8     1.09164672    -0.84880032  -240.03945122    -0.00000639    -0.00000044  0.37D-07  0.61D-07  7690.35
    6     9     9     1.08700005    -0.82841993  -239.87197014    -0.00000237    -0.00000022  0.22D-07  0.31D-07  7690.35
    6    10    10     1.08749222    -0.83036907  -239.86113551    -0.00000466    -0.00000042  0.38D-07  0.56D-07  7690.35
    6    11    11     1.08749211    -0.83036900  -239.86113544    -0.00000463    -0.00000041  0.38D-07  0.56D-07  7690.35
    6    12    12     1.08749251    -0.83036898  -239.86113542    -0.00000464    -0.00000039  0.36D-07  0.53D-07  7690.35
    6    13    13     1.08749217    -0.83036877  -239.86113521    -0.00000460    -0.00000040  0.37D-07  0.54D-07  7690.35
    6    14    14     1.08749214    -0.83036874  -239.86113518    -0.00000461    -0.00000040  0.36D-07  0.54D-07  7690.35
    6    15    15     1.08767448    -0.83078930  -239.85585648    -0.00000510    -0.00000044  0.40D-07  0.64D-07  7690.35
    6    16    16     1.08767414    -0.83078922  -239.85585640    -0.00000527    -0.00000047  0.42D-07  0.67D-07  7690.35
    6    17    17     1.08767431    -0.83078906  -239.85585624    -0.00000516    -0.00000044  0.40D-07  0.64D-07  7690.35
    7     1     1     1.09344646    -0.85373461  -240.06755998    -0.00000046    -0.00000004  0.33D-08  0.60D-08  9180.72
    7     2     2     1.09344636    -0.85373458  -240.06755995    -0.00000047    -0.00000004  0.35D-08  0.62D-08  9180.72
    7     3     3     1.09344648    -0.85373457  -240.06755994    -0.00000047    -0.00000004  0.35D-08  0.61D-08  9180.72
    7     4     4     1.09344636    -0.85373449  -240.06755986    -0.00000049    -0.00000004  0.38D-08  0.65D-08  9180.72
    7     5     5     1.09344629    -0.85373447  -240.06755984    -0.00000050    -0.00000004  0.38D-08  0.66D-08  9180.72
    7     6     6     1.09167432    -0.84880084  -240.03945174    -0.00000046    -0.00000004  0.41D-08  0.63D-08  9180.72
    7     7     7     1.09167381    -0.84880083  -240.03945173    -0.00000047    -0.00000005  0.46D-08  0.70D-08  9180.72
    7     8     8     1.09167437    -0.84880082  -240.03945172    -0.00000050    -0.00000004  0.41D-08  0.63D-08  9180.72
    7     9     9     1.08700968    -0.82842020  -239.87197042    -0.00000027    -0.00000002  0.19D-08  0.38D-08  9180.72
    7    10    10     1.08750685    -0.83036957  -239.86113601    -0.00000049    -0.00000005  0.40D-08  0.78D-08  9180.72
    7    11    11     1.08750671    -0.83036949  -239.86113593    -0.00000049    -0.00000005  0.39D-08  0.78D-08  9180.72
    7    12    12     1.08750669    -0.83036945  -239.86113589    -0.00000047    -0.00000005  0.37D-08  0.74D-08  9180.72
    7    13    13     1.08750650    -0.83036924  -239.86113568    -0.00000047    -0.00000005  0.37D-08  0.74D-08  9180.72
    7    14    14     1.08750652    -0.83036921  -239.86113565    -0.00000047    -0.00000005  0.37D-08  0.74D-08  9180.72
    7    15    15     1.08769209    -0.83078983  -239.85585701    -0.00000053    -0.00000006  0.45D-08  0.93D-08  9180.72
    7    16    16     1.08769210    -0.83078978  -239.85585696    -0.00000056    -0.00000006  0.49D-08  0.99D-08  9180.72
    7    17    17     1.08769186    -0.83078960  -239.85585678    -0.00000053    -0.00000006  0.45D-08  0.93D-08  9180.72
    8     1     1     1.09344645    -0.85373461  -240.06755998    -0.00000000    -0.00000004  0.33D-08  0.60D-08 10342.70
    8     2     2     1.09344635    -0.85373458  -240.06755995    -0.00000000    -0.00000004  0.35D-08  0.62D-08 10342.70
    8     3     3     1.09344646    -0.85373457  -240.06755994    -0.00000000    -0.00000004  0.35D-08  0.61D-08 10342.70
    8     4     4     1.09344712    -0.85373454  -240.06755991    -0.00000005    -0.00000001  0.36D-09  0.86D-09 10342.70
    8     5     5     1.09344706    -0.85373452  -240.06755989    -0.00000005    -0.00000001  0.37D-09  0.87D-09 10342.70
    8     6     6     1.09167763    -0.84880089  -240.03945179    -0.00000005    -0.00000001  0.28D-09  0.87D-09 10342.70
    8     7     7     1.09167736    -0.84880088  -240.03945178    -0.00000005    -0.00000001  0.32D-09  0.99D-09 10342.70
    8     8     8     1.09167762    -0.84880087  -240.03945177    -0.00000005    -0.00000001  0.28D-09  0.86D-09 10342.70
    8     9     9     1.08700968    -0.82842020  -239.87197042    -0.00000000    -0.00000002  0.19D-08  0.38D-08 10342.70
    8    10    10     1.08750526    -0.83036963  -239.86113607    -0.00000006    -0.00000001  0.43D-09  0.14D-08 10342.70
    8    11    11     1.08750541    -0.83036955  -239.86113599    -0.00000006    -0.00000001  0.38D-09  0.11D-08 10342.70
    8    12    12     1.08750525    -0.83036950  -239.86113595    -0.00000006    -0.00000001  0.40D-09  0.13D-08 10342.70
    8    13    13     1.08750556    -0.83036930  -239.86113574    -0.00000006    -0.00000000  0.30D-09  0.79D-09 10342.70
    8    14    14     1.08750503    -0.83036926  -239.86113570    -0.00000006    -0.00000001  0.40D-09  0.13D-08 10342.70
    8    15    15     1.08769217    -0.83078991  -239.85585709    -0.00000008    -0.00000000  0.32D-09  0.80D-09 10342.70
    8    16    16     1.08769206    -0.83078987  -239.85585704    -0.00000008    -0.00000001  0.36D-09  0.88D-09 10342.70
    8    17    17     1.08769184    -0.83078967  -239.85585685    -0.00000008    -0.00000000  0.32D-09  0.79D-09 10342.70


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.5%
 S   0.5%   4.2%
 P   0.3%  34.0%  42.1%

 Initialization:   2.3%
 Other:           16.2%

 Total CPU:    10342.7 seconds
 =====================================



 Wavefunction saved on  5102.2

 Reference coefficients greater than 0.0500000
 =============================================
 2222222222/\/000           0.8686537  -0.0045240   0.0027847  -0.3935598  -0.0027318   0.0000000  -0.0000000   0.0000000
                           -0.0000005  -0.0006674   0.0349958  -0.0000222   0.0258373   0.0002651  -0.0000000   0.0000000
                           -0.0000000
 2222222222//\000           0.3934554  -0.0011754   0.0170372   0.8684764   0.0115562   0.0000000  -0.0000000   0.0000001
                            0.0000001   0.0004665  -0.0258337  -0.0001229   0.0350022   0.0000804   0.0000000   0.0000000
                            0.0000000
 2222222222/0/0\0          -0.0236687   0.0001419   0.0002602   0.0330212   0.0003470   0.0000000  -0.0000000   0.0000000
                           -0.5507730  -0.0142900   0.7613571   0.0007434   0.0858640   0.0033369  -0.0000001   0.0000000
                           -0.0000002
 22222222220//00\          -0.0404309   0.0001920  -0.0004657  -0.0039794  -0.0001454   0.0000000  -0.0000000   0.0000000
                            0.5507667  -0.0060729   0.3063210  -0.0014215   0.7024005   0.0047525  -0.0000001   0.0000002
                           -0.0000001
 222222222202/000           0.0032004   0.6743150   0.0056721  -0.0006459  -0.0001980   0.6617836   0.0803365   0.0103145
                           -0.0000000  -0.0000837   0.0000376  -0.0307637  -0.0000790  -0.0000585   0.0462286  -0.0000992
                            0.0000691
 222222222220/000          -0.0032004  -0.6743129  -0.0056720   0.0006459   0.0001980   0.6617858   0.0803368   0.0103145
                            0.0000000   0.0000837  -0.0000376   0.0307622   0.0000790   0.0000585   0.0462294  -0.0000992
                            0.0000691
 2222222222/02000          -0.0016268   0.0001858   0.0014258  -0.0082630   0.6742913  -0.0799512   0.6615226  -0.0226937
                           -0.0000000  -0.0307574  -0.0005759   0.0000830  -0.0000149   0.0000504  -0.0000987  -0.0462283
                           -0.0003031
 2222222222/20000           0.0016268  -0.0001857  -0.0014258   0.0082630  -0.6742913  -0.0799511   0.6615227  -0.0226937
                           -0.0000000   0.0307584   0.0005759  -0.0000829   0.0000150  -0.0000504  -0.0000987  -0.0462278
                           -0.0003031
 22222222220/2000          -0.0067888  -0.0056491   0.6742108  -0.0101375  -0.0015647  -0.0129686   0.0212887   0.6662557
                            0.0000000  -0.0000525   0.0001161   0.0000584   0.0001572  -0.0307635  -0.0000697  -0.0003030
                            0.0462272
 22222222222/0000           0.0067886   0.0056491  -0.6742089   0.0101374   0.0015647  -0.0129686   0.0212888   0.6662577
                            0.0000000   0.0000525  -0.0001160  -0.0000584  -0.0001572   0.0307616  -0.0000697  -0.0003030
                            0.0462285
 22222222220//0\0          -0.0001670  -0.0351847  -0.0002960   0.0000337   0.0000103  -0.0535144  -0.0064963  -0.0008341
                            0.0000000  -0.0018062   0.0008119  -0.6636617  -0.0017042  -0.0012622   0.6617383  -0.0014202
                            0.0009890
 22222222220//\00          -0.0003542  -0.0002948   0.0351792  -0.0005290  -0.0000816  -0.0010487   0.0017215   0.0538757
                           -0.0000001   0.0011327  -0.0025040  -0.0012597  -0.0033912   0.6636570   0.0009982   0.0043369
                           -0.6617213
 2222222222/0/00\           0.0001670   0.0351846   0.0002960  -0.0000337  -0.0000103  -0.0535142  -0.0064963  -0.0008341
                           -0.0000000   0.0018063  -0.0008118   0.6636454   0.0017043   0.0012622   0.6617550  -0.0014196
                            0.0009889
 2222222222//000\          -0.0003542  -0.0002948   0.0351792  -0.0005290  -0.0000816   0.0010487  -0.0017215  -0.0538757
                           -0.0000001   0.0011326  -0.0025035  -0.0012595  -0.0033910   0.6636316  -0.0009983  -0.0043372
                            0.6617469
 2222222222//00\0           0.0000849  -0.0000097  -0.0000744   0.0004312  -0.0351840  -0.0064652   0.0534933  -0.0018351
                           -0.0000001  -0.6635462  -0.0124244   0.0017892  -0.0003224   0.0010875   0.0014135   0.6617271
                            0.0043391
 2222222222/0/\00          -0.0000849   0.0000097   0.0000744  -0.0004312   0.0351839  -0.0064651   0.0534932  -0.0018351
                           -0.0000001   0.6635341   0.0124241  -0.0017897   0.0003222  -0.0010873   0.0014133   0.6617394
                            0.0043393
 2222222222//0\00           0.0167627  -0.0000501   0.0007259   0.0370006   0.0004923   0.0000000   0.0000000   0.0000000
                            0.5507632  -0.0082174   0.4550484   0.0021650  -0.6165393  -0.0014155   0.0000001   0.0000000
                           -0.0000001
 22222202222/2000           0.0000000   0.0000000  -0.0000003   0.0000000  -0.0000000   0.0026263  -0.0043112  -0.1349249
                           -0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.0000000   0.0000003   0.0000172   0.0000746
                           -0.0113799
 222222022222/000           0.0000000  -0.0000002  -0.0000000  -0.0000000  -0.0000000  -0.1340193  -0.0162691  -0.0020888
                            0.0000000  -0.0000000   0.0000000   0.0000001   0.0000000  -0.0000000  -0.0113801   0.0000244
                           -0.0000170
 2222220222/22000          -0.0000000  -0.0000000   0.0000000  -0.0000000   0.0000000   0.0161911  -0.1339664   0.0045958
                            0.0000000  -0.0000001  -0.0000000  -0.0000000  -0.0000000   0.0000000   0.0000243   0.0113798
                            0.0000746
 2222222222/0\0/0          -0.0260248   0.0001101  -0.0005422  -0.0186474  -0.0002902  -0.0000000  -0.0000000  -0.0000000
                            0.0000009  -0.0002078   0.0144129   0.0003476  -0.1278182  -0.0005978   0.0000000  -0.0000000
                            0.0000000
 22222222220/\00/          -0.0031424   0.0000418   0.0004487   0.0318631   0.0003819  -0.0000000   0.0000000  -0.0000000
                            0.0000013   0.0021812  -0.1178839  -0.0002819   0.0514287  -0.0001862  -0.0000000  -0.0000000
                            0.0000000
 2222222222/\0/00           0.0291670  -0.0001519   0.0000935  -0.0132150  -0.0000917   0.0000000  -0.0000000  -0.0000000
                           -0.0000010  -0.0019734   0.1034682  -0.0000657   0.0763907   0.0007840  -0.0000000   0.0000000
                           -0.0000000
 2222222222020/00           0.0001075   0.0226416   0.0001904  -0.0000217  -0.0000066   0.0213037   0.0025861   0.0003320
                           -0.0000000  -0.0002475   0.0001113  -0.0909562  -0.0002336  -0.0001730   0.0710920  -0.0001526
                            0.0001062
 22222222220020/0          -0.0002279  -0.0001897   0.0226381  -0.0003404  -0.0000525  -0.0004175   0.0006853   0.0214476
                           -0.0000000  -0.0001552   0.0003432   0.0001726   0.0004648  -0.0909560  -0.0001072  -0.0004659
                            0.0710889
 2222222222200/00          -0.0001075  -0.0226415  -0.0001904   0.0000217   0.0000066   0.0213040   0.0025862   0.0003320
                           -0.0000000   0.0002476  -0.0001113   0.0909538   0.0002336   0.0001730   0.0710950  -0.0001525
                            0.0001062
 22222222222000/0           0.0002279   0.0001897  -0.0226380   0.0003404   0.0000525  -0.0004175   0.0006853   0.0214480
                           -0.0000000   0.0001552  -0.0003431  -0.0001726  -0.0004647   0.0909519  -0.0001073  -0.0004660
                            0.0710945
 222222222202000/           0.0000546  -0.0000062  -0.0000479   0.0002775  -0.0226419  -0.0025737   0.0212954  -0.0007305
                           -0.0000000   0.0909412   0.0017028  -0.0002452   0.0000442  -0.0001490  -0.0001519  -0.0710885
                           -0.0004662
 222222222200200/          -0.0000546   0.0000062   0.0000479  -0.0002775   0.0226419  -0.0025738   0.0212954  -0.0007305
                            0.0000000  -0.0909401  -0.0017028   0.0002453  -0.0000442   0.0001490  -0.0001518  -0.0710900
                           -0.0004662
 2222222222/0\/00           0.0000386  -0.0000044  -0.0000339   0.0001962  -0.0160098   0.0028795  -0.0238255   0.0008173
                           -0.0000000   0.0643028   0.0012040  -0.0001735   0.0000312  -0.0001054   0.0001781   0.0833620
                            0.0005466
 2222222222/0\00/           0.0000760   0.0160101   0.0001347  -0.0000153  -0.0000047  -0.0238350  -0.0028934  -0.0003715
                            0.0000000  -0.0001751   0.0000787  -0.0643148  -0.0001652  -0.0001223  -0.0833611   0.0001788
                           -0.0001246
 22222222220/\0/0          -0.0000760  -0.0160100  -0.0001347   0.0000153   0.0000047  -0.0238349  -0.0028934  -0.0003715
                           -0.0000000   0.0001750  -0.0000787   0.0643166   0.0001652   0.0001223  -0.0833610   0.0001789
                           -0.0001246
 2222222222/\00/0          -0.0000386   0.0000044   0.0000339  -0.0001962   0.0160098   0.0028795  -0.0238255   0.0008173
                           -0.0000000  -0.0643044  -0.0012041   0.0001734  -0.0000312   0.0001054   0.0001780   0.0833608
                            0.0005466
 2222222222/\000/          -0.0001612  -0.0001341   0.0160075  -0.0002407  -0.0000372   0.0004671  -0.0007667  -0.0239960
                           -0.0000000  -0.0001098   0.0002426   0.0001220   0.0003286  -0.0643133   0.0001258   0.0005464
                           -0.0833599
 22222222220/\/00           0.0001612   0.0001341  -0.0160075   0.0002407   0.0000371   0.0004671  -0.0007667  -0.0239960
                            0.0000000   0.0001098  -0.0002427  -0.0001221  -0.0003287   0.0643157   0.0001257   0.0005463
                           -0.0833597
 2222220222/2/0\0           0.0082966  -0.0000497  -0.0000912  -0.0115758  -0.0001216  -0.0000000  -0.0000000  -0.0000000
                            0.0511016   0.0013467  -0.0717485  -0.0000701  -0.0080922  -0.0003145   0.0000000  -0.0000000
                            0.0000000
 22222202222//00\           0.0141724  -0.0000673   0.0001632   0.0013950   0.0000510   0.0000000  -0.0000000  -0.0000000
                           -0.0511008   0.0005723  -0.0288673   0.0001340  -0.0661930  -0.0004479   0.0000000  -0.0000000
                            0.0000000
 2222220222/2/00\          -0.0000585  -0.0123335  -0.0001037   0.0000118   0.0000036  -0.0049692  -0.0006032  -0.0000775
                           -0.0000000  -0.0001702   0.0000765  -0.0625395  -0.0001606  -0.0001189  -0.0642847   0.0001379
                           -0.0000961
 2222220222/2/\00           0.0000298  -0.0000034  -0.0000261   0.0001512  -0.0123341  -0.0006003   0.0049669  -0.0001704
                            0.0000000  -0.0625298  -0.0011708   0.0001687  -0.0000304   0.0001025  -0.0001373  -0.0642845
                           -0.0004215
 2222220222//200\           0.0001242   0.0001033  -0.0123314   0.0001854   0.0000286   0.0000974  -0.0001599  -0.0050027
                            0.0000000  -0.0001067   0.0002359   0.0001187   0.0003196  -0.0625397   0.0000970   0.0004213
                           -0.0642840
 22222202222//0\0           0.0000585   0.0123335   0.0001037  -0.0000118  -0.0000036  -0.0049693  -0.0006032  -0.0000775
                           -0.0000000   0.0001702  -0.0000765   0.0625422   0.0001606   0.0001189  -0.0642838   0.0001380
                           -0.0000961
 2222220222//20\0          -0.0000298   0.0000034   0.0000261  -0.0001512   0.0123341  -0.0006003   0.0049668  -0.0001704
                            0.0000000   0.0625311   0.0011708  -0.0001686   0.0000304  -0.0001025  -0.0001373  -0.0642834
                           -0.0004215
 22222202222//\00           0.0001242   0.0001033  -0.0123316   0.0001854   0.0000286  -0.0000974   0.0001599   0.0050029
                            0.0000000  -0.0001067   0.0002360   0.0001187   0.0003196  -0.0625417  -0.0000970  -0.0004213
                            0.0642817
 2222220222//2\00          -0.0058759   0.0000176  -0.0002544  -0.0129708  -0.0001726  -0.0000000  -0.0000000  -0.0000000
                           -0.0511004   0.0007744  -0.0428822  -0.0002040   0.0581013   0.0001334  -0.0000000  -0.0000000
                            0.0000000

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.619827   -0.009620   -0.002305    0.727245    0.004535    0.000000   -0.000000   -0.000000    0.000000    0.029353
             0.000320   -0.000151    0.000077    0.012100   -0.000000    0.000000    0.000000
 2          -0.002387   -0.008005    0.000263   -0.004030    0.955565    0.000000   -0.000000    0.000002    0.000000   -0.000132
             0.000266   -0.031750   -0.000009   -0.000083    0.000000    0.000000   -0.000000
 3           0.017177    0.955417    0.002021   -0.002045    0.008038   -0.000000    0.000001    0.000000    0.000000    0.000477
            -0.031745   -0.000267   -0.000067   -0.000321    0.000000   -0.000000   -0.000000
 4           0.727046   -0.014366   -0.011709   -0.619879   -0.000915   -0.000000   -0.000000   -0.000000   -0.000000    0.012093
             0.000477    0.000030    0.000389   -0.029351   -0.000000   -0.000000    0.000000
 5           0.010369   -0.002217    0.955533   -0.005836   -0.000281   -0.000000    0.000000    0.000000    0.000000    0.000218
             0.000074    0.000009   -0.031748   -0.000330   -0.000000    0.000000   -0.000000
 6           0.000000    0.000000   -0.000000    0.000000   -0.000002   -0.114678   -0.018601    0.949231   -0.000000    0.000000
            -0.000000    0.000000    0.000000    0.000000   -0.000628    0.032049    0.003872
 7          -0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.948856    0.030536    0.115231    0.000000   -0.000000
             0.000000    0.000000   -0.000000   -0.000000    0.001031    0.003891   -0.032037
 8           0.000000   -0.000001   -0.000000    0.000000   -0.000000   -0.032551    0.955646    0.014795   -0.000000    0.000000
             0.000000    0.000000    0.000000    0.000000    0.032266    0.000500    0.001099
 9          -0.000000   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.000000    0.958921    0.000001
            -0.000000   -0.000000    0.000000   -0.000007   -0.000000   -0.000000   -0.000000
 10         -0.000199    0.000056    0.032924    0.000583    0.000090   -0.000000    0.000000   -0.000000   -0.000000   -0.002582
             0.001635    0.002608    0.957959   -0.017747   -0.000000    0.000000   -0.000009
 11          0.011456   -0.000124    0.000616   -0.030867   -0.000040    0.000000   -0.000000   -0.000000    0.000007    0.113342
            -0.003615   -0.001172    0.017937    0.951228    0.000000    0.000000   -0.000000
 12          0.000094   -0.000062   -0.000089   -0.000010    0.032930   -0.000000   -0.000000    0.000000    0.000000   -0.002308
            -0.001818    0.958123   -0.002584    0.001497    0.000000   -0.000012   -0.000000
 13         -0.030872   -0.000168    0.000016   -0.011457    0.000085    0.000000   -0.000000   -0.000000   -0.000002    0.951383
            -0.004896    0.002460    0.000465   -0.113385    0.000000    0.000000   -0.000000
 14         -0.000114    0.032930   -0.000054   -0.000176    0.000063    0.000000    0.000000    0.000000    0.000000    0.005289
             0.958110    0.001822   -0.001570    0.003042   -0.000018   -0.000000    0.000000
 15          0.000000    0.000000   -0.000000    0.000000    0.000000    0.000071    0.000050   -0.033242    0.000000   -0.000000
            -0.000000    0.000012   -0.000000   -0.000000   -0.001445    0.958034    0.002046
 16         -0.000000   -0.000000    0.000000   -0.000000    0.000000    0.033241    0.000218    0.000071    0.000000    0.000000
            -0.000000    0.000000    0.000009    0.000000   -0.006279   -0.002056    0.958014
 17         -0.000000    0.000001    0.000000    0.000000   -0.000000    0.000218   -0.033241   -0.000050    0.000000   -0.000000
             0.000019   -0.000000    0.000000   -0.000000    0.958015    0.001432    0.006282

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.956137    0.000000   -0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.000000   -0.000000    0.000004
            -0.000267    0.000004   -0.000477   -0.000009    0.000000   -0.000000   -0.000000
 2           0.000000    0.956137    0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.000002
             0.000001    0.000547    0.000004   -0.000004    0.000000    0.000000   -0.000000
 3          -0.000000    0.000000    0.956137   -0.000000   -0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.000002
             0.000002    0.000004   -0.000012    0.000547    0.000000    0.000000    0.000000
 4          -0.000000    0.000000   -0.000000    0.956137   -0.000000    0.000000   -0.000000    0.000000   -0.000000   -0.000016
             0.000477    0.000001   -0.000267   -0.000008    0.000000   -0.000000   -0.000000
 5          -0.000000   -0.000000   -0.000000   -0.000000    0.956137   -0.000000   -0.000000   -0.000000   -0.000000    0.000547
             0.000015   -0.000002   -0.000004   -0.000002   -0.000000    0.000000    0.000000
 6           0.000000   -0.000000    0.000000    0.000000   -0.000000    0.956859   -0.000000    0.000000    0.000000   -0.000000
            -0.000000   -0.000000   -0.000000    0.000000   -0.000444   -0.000053    0.000008
 7          -0.000000   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.956859   -0.000000   -0.000000    0.000000
             0.000000   -0.000000    0.000000   -0.000000   -0.000053    0.000444   -0.000011
 8           0.000000    0.000000   -0.000000    0.000000   -0.000000    0.000000   -0.000000    0.956859    0.000000    0.000000
            -0.000000   -0.000000   -0.000000   -0.000000   -0.000006   -0.000012   -0.000447
 9          -0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.000000    0.958921   -0.000000
             0.000000    0.000000   -0.000000    0.000000    0.000000    0.000000    0.000000
 10          0.000004    0.000002    0.000002   -0.000016    0.000547   -0.000000    0.000000    0.000000   -0.000000    0.958698
             0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.000000
 11         -0.000267    0.000001    0.000002    0.000477    0.000015   -0.000000    0.000000   -0.000000    0.000000    0.000000
             0.958697   -0.000000    0.000000   -0.000000   -0.000000    0.000000   -0.000000
 12          0.000004    0.000547    0.000004    0.000001   -0.000002   -0.000000   -0.000000   -0.000000    0.000000   -0.000000
            -0.000000    0.958698    0.000000   -0.000000    0.000000    0.000000   -0.000000
 13         -0.000477    0.000004   -0.000012   -0.000267   -0.000004   -0.000000    0.000000   -0.000000   -0.000000   -0.000000
             0.000000    0.000000    0.958697    0.000000   -0.000000    0.000000   -0.000000
 14         -0.000009   -0.000004    0.000547   -0.000008   -0.000002    0.000000   -0.000000   -0.000000    0.000000   -0.000000
            -0.000000   -0.000000    0.000000    0.958698    0.000000   -0.000000    0.000000
 15          0.000000    0.000000    0.000000    0.000000   -0.000000   -0.000444   -0.000053   -0.000006    0.000000   -0.000000
            -0.000000    0.000000   -0.000000    0.000000    0.958613    0.000000   -0.000000
 16         -0.000000    0.000000    0.000000   -0.000000    0.000000   -0.000053    0.000444   -0.000012    0.000000    0.000000
             0.000000    0.000000    0.000000   -0.000000    0.000000    0.958613   -0.000000
 17         -0.000000   -0.000000    0.000000   -0.000000    0.000000    0.000008   -0.000011   -0.000447    0.000000    0.000000
            -0.000000   -0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.958613


 RESULTS FOR STATE 1.2
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.72724514 (fixed)   0.95617406 (relaxed)   0.95613694 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00037374   -0.00085735   -0.72831108
 Singles      0.01743551   -0.05738688   -0.06606059
 Pairs        0.07604587   -0.00000000   -0.05936294
 Total        1.09385512   -0.05824423   -0.85373461
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -239.21361649
 Nuclear energy                         0.00000000
 Kinetic energy                        93.12076117
 One electron energy                 -419.37611881
 Two electron energy                  179.30855883
 Virial quotient                       -2.57802403
 Correlation energy                    -0.85394348
 !MRCI STATE 1.2 Energy              -240.067559976701

 Properties without orbital relaxation:

 !MRCI STATE 1.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -240.14770694 (Davidson, fixed reference)
 Cluster corrected energies          -240.14763442 (Davidson, relaxed reference)
 Cluster corrected energies          -240.14770694 (Davidson, rotated reference)

 Cluster corrected energies          -240.14641397 (Pople, fixed reference)
 Cluster corrected energies          -240.14633682 (Pople, relaxed reference)
 Cluster corrected energies          -240.14641397 (Pople, rotated reference)



 RESULTS FOR STATE 2.2
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.95556476 (fixed)   0.95617410 (relaxed)   0.95613699 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00037374   -0.00085735   -0.72831101
 Singles      0.01743561   -0.05738701   -0.06606065
 Pairs        0.07604566    0.00000001   -0.05936292
 Total        1.09385502   -0.05824436   -0.85373458
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -239.21361649
 Nuclear energy                         0.00000000
 Kinetic energy                        93.12076352
 One electron energy                 -419.37612456
 Two electron energy                  179.30856461
 Virial quotient                       -2.57802396
 Correlation energy                    -0.85394346
 !MRCI STATE 2.2 Energy              -240.067559948723

 Properties without orbital relaxation:

 !MRCI STATE 2.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -240.14770683 (Davidson, fixed reference)
 Cluster corrected energies          -240.14763431 (Davidson, relaxed reference)
 Cluster corrected energies          -240.14770683 (Davidson, rotated reference)

 Cluster corrected energies          -240.14641385 (Pople, fixed reference)
 Cluster corrected energies          -240.14633670 (Pople, relaxed reference)
 Cluster corrected energies          -240.14641385 (Pople, rotated reference)



 RESULTS FOR STATE 3.2
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.95541723 (fixed)   0.95617406 (relaxed)   0.95613694 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00037374   -0.00085735   -0.72831096
 Singles      0.01743557   -0.05738697   -0.06606060
 Pairs        0.07604582    0.00000000   -0.05936301
 Total        1.09385513   -0.05824431   -0.85373457
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -239.21361649
 Nuclear energy                         0.00000000
 Kinetic energy                        93.12076423
 One electron energy                 -419.37612460
 Two electron energy                  179.30856466
 Virial quotient                       -2.57802394
 Correlation energy                    -0.85394345
 !MRCI STATE 3.2 Energy              -240.067559938745

 Properties without orbital relaxation:

 !MRCI STATE 3.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -240.14770691 (Davidson, fixed reference)
 Cluster corrected energies          -240.14763439 (Davidson, relaxed reference)
 Cluster corrected energies          -240.14770691 (Davidson, rotated reference)

 Cluster corrected energies          -240.14641394 (Pople, fixed reference)
 Cluster corrected energies          -240.14633679 (Pople, relaxed reference)
 Cluster corrected energies          -240.14641394 (Pople, rotated reference)



 RESULTS FOR STATE 4.2
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.72704557 (fixed)   0.95617376 (relaxed)   0.95613666 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00037372   -0.00085737   -0.72832290
 Singles      0.01742762   -0.05737340   -0.06605354
 Pairs        0.07605442   -0.00000000   -0.05935810
 Total        1.09385576   -0.05823077   -0.85373454
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -239.21361650
 Nuclear energy                         0.00000000
 Kinetic energy                        93.12080474
 One electron energy                 -419.37624498
 Two electron energy                  179.30868507
 Virial quotient                       -2.57802282
 Correlation energy                    -0.85394341
 !MRCI STATE 4.2 Energy              -240.067559910383

 Properties without orbital relaxation:

 !MRCI STATE 4.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -240.14770742 (Davidson, fixed reference)
 Cluster corrected energies          -240.14763494 (Davidson, relaxed reference)
 Cluster corrected energies          -240.14770742 (Davidson, rotated reference)

 Cluster corrected energies          -240.14641448 (Pople, fixed reference)
 Cluster corrected energies          -240.14633738 (Pople, relaxed reference)
 Cluster corrected energies          -240.14641448 (Pople, rotated reference)



 RESULTS FOR STATE 5.2
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.95553283 (fixed)   0.95617379 (relaxed)   0.95613669 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00037372   -0.00085737   -0.72832296
 Singles      0.01742760   -0.05737339   -0.06605351
 Pairs        0.07605438    0.00000003   -0.05935805
 Total        1.09385570   -0.05823073   -0.85373452
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -239.21361650
 Nuclear energy                         0.00000000
 Kinetic energy                        93.12079353
 One electron energy                 -419.37623504
 Two electron energy                  179.30867515
 Virial quotient                       -2.57802313
 Correlation energy                    -0.85394339
 !MRCI STATE 5.2 Energy              -240.067559891832

 Properties without orbital relaxation:

 !MRCI STATE 5.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -240.14770735 (Davidson, fixed reference)
 Cluster corrected energies          -240.14763486 (Davidson, relaxed reference)
 Cluster corrected energies          -240.14770735 (Davidson, rotated reference)

 Cluster corrected energies          -240.14641441 (Pople, fixed reference)
 Cluster corrected energies          -240.14633730 (Pople, relaxed reference)
 Cluster corrected energies          -240.14641441 (Pople, rotated reference)



 RESULTS FOR STATE 6.2
 =====================

 Maximum overlap with reference state  8

 Coefficient of reference function:   C(0) = 0.94923145 (fixed)   0.95697634 (relaxed)   0.95685932 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00048229   -0.00071865   -0.73267708
 Singles      0.01186102   -0.04461686   -0.05006928
 Pairs        0.07986082   -0.00436046   -0.06605452
 Total        1.09220413   -0.04969597   -0.84880089
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -239.19045710
 Nuclear energy                         0.00000000
 Kinetic energy                        93.11419880
 One electron energy                 -419.22661119
 Two electron energy                  179.18715940
 Virial quotient                       -2.57790385
 Correlation energy                    -0.84899468
 !MRCI STATE 6.2 Energy              -240.039451788715

 Properties without orbital relaxation:

 !MRCI STATE 6.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -240.11773261 (Davidson, fixed reference)
 Cluster corrected energies          -240.11750584 (Davidson, relaxed reference)
 Cluster corrected energies          -240.11773261 (Davidson, rotated reference)

 Cluster corrected energies          -240.11635968 (Pople, fixed reference)
 Cluster corrected energies          -240.11611917 (Pople, relaxed reference)
 Cluster corrected energies          -240.11635968 (Pople, rotated reference)



 RESULTS FOR STATE 7.2
 =====================

 Maximum overlap with reference state  6

 Coefficient of reference function:   C(0) = 0.94885565 (fixed)   0.95697646 (relaxed)   0.95685944 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00048228   -0.00071865   -0.76970275
 Singles      0.01186095   -0.04461676   -0.05006924
 Pairs        0.07986062    0.03607884   -0.02902889
 Total        1.09220386   -0.00925657   -0.84880088
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -239.19045711
 Nuclear energy                         0.00000000
 Kinetic energy                        93.11420321
 One electron energy                 -419.22661677
 Two electron energy                  179.18716499
 Virial quotient                       -2.57790373
 Correlation energy                    -0.84899468
 !MRCI STATE 7.2 Energy              -240.039451782876

 Properties without orbital relaxation:

 !MRCI STATE 7.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -240.11773237 (Davidson, fixed reference)
 Cluster corrected energies          -240.11750561 (Davidson, relaxed reference)
 Cluster corrected energies          -240.11773237 (Davidson, rotated reference)

 Cluster corrected energies          -240.11635943 (Pople, fixed reference)
 Cluster corrected energies          -240.11611892 (Pople, relaxed reference)
 Cluster corrected energies          -240.11635943 (Pople, rotated reference)



 RESULTS FOR STATE 8.2
 =====================

 Maximum overlap with reference state  7

 Coefficient of reference function:   C(0) = 0.95564583 (fixed)   0.95697635 (relaxed)   0.95685933 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00048229   -0.00071865   -0.73553623
 Singles      0.01186100   -0.04461684   -0.05006925
 Pairs        0.07986083   -0.00123770   -0.06319540
 Total        1.09220412   -0.04657319   -0.84880087
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -239.19045710
 Nuclear energy                         0.00000000
 Kinetic energy                        93.11419878
 One electron energy                 -419.22661320
 Two electron energy                  179.18716143
 Virial quotient                       -2.57790385
 Correlation energy                    -0.84899467
 !MRCI STATE 8.2 Energy              -240.039451771540

 Properties without orbital relaxation:

 !MRCI STATE 8.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -240.11773258 (Davidson, fixed reference)
 Cluster corrected energies          -240.11750582 (Davidson, relaxed reference)
 Cluster corrected energies          -240.11773258 (Davidson, rotated reference)

 Cluster corrected energies          -240.11635966 (Pople, fixed reference)
 Cluster corrected energies          -240.11611914 (Pople, relaxed reference)
 Cluster corrected energies          -240.11635966 (Pople, rotated reference)



 RESULTS FOR STATE 9.2
 =====================

 Coefficient of reference function:   C(0) = 0.95892100 (fixed)   0.95897833 (relaxed)   0.95892100 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00046277   -0.00102498   -0.70818676
 Singles      0.01758326   -0.05864154   -0.06730878
 Pairs        0.06946669    0.00000008   -0.05292466
 Total        1.08751272   -0.05966644   -0.82842020
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -239.04355021
 Nuclear energy                         0.00000000
 Kinetic energy                        92.79799255
 One electron energy                 -414.33999455
 Two electron energy                  174.46802414
 Virial quotient                       -2.58488318
 Correlation energy                    -0.82842020
 !MRCI STATE 9.2 Energy              -239.871970415262

 Properties without orbital relaxation:

 !MRCI STATE 9.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -239.94446772 (Davidson, fixed reference)
 Cluster corrected energies          -239.94436000 (Davidson, relaxed reference)
 Cluster corrected energies          -239.94446772 (Davidson, rotated reference)

 Cluster corrected energies          -239.94290795 (Pople, fixed reference)
 Cluster corrected energies          -239.94279460 (Pople, relaxed reference)
 Cluster corrected energies          -239.94290795 (Pople, rotated reference)



 RESULTS FOR STATE 10.2
 ======================

 Maximum overlap with reference state 13

 Coefficient of reference function:   C(0) = 0.95795914 (fixed)   0.95875448 (relaxed)   0.95869750 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00047317   -0.00105495   -0.70960716
 Singles      0.01750468   -0.05870298   -0.06731531
 Pairs        0.07004198    0.00000711   -0.05344715
 Total        1.08801983   -0.05975082   -0.83036963
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -239.03097531
 Nuclear energy                         0.00000000
 Kinetic energy                        92.81729303
 One electron energy                 -414.44225661
 Two electron energy                  174.58112054
 Virial quotient                       -2.58422895
 Correlation energy                    -0.83016075
 !MRCI STATE 10.2 Energy             -239.861136066003

 Properties without orbital relaxation:

 !MRCI STATE 10.2 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -239.93420667 (Davidson, fixed reference)
 Cluster corrected energies          -239.93409931 (Davidson, relaxed reference)
 Cluster corrected energies          -239.93420667 (Davidson, rotated reference)

 Cluster corrected energies          -239.93266588 (Pople, fixed reference)
 Cluster corrected energies          -239.93255281 (Pople, relaxed reference)
 Cluster corrected energies          -239.93266588 (Pople, rotated reference)



 RESULTS FOR STATE 11.2
 ======================

 Maximum overlap with reference state 14

 Coefficient of reference function:   C(0) = 0.95122766 (fixed)   0.95875442 (relaxed)   0.95869744 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00047316   -0.00105494   -0.70960072
 Singles      0.01750476   -0.05870292   -0.06731540
 Pairs        0.07004205    0.00000022   -0.05345343
 Total        1.08801997   -0.05975763   -0.83036955
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -239.03097531
 Nuclear energy                         0.00000000
 Kinetic energy                        92.81732350
 One electron energy                 -414.44226367
 Two electron energy                  174.58112768
 Virial quotient                       -2.58422810
 Correlation energy                    -0.83016068
 !MRCI STATE 11.2 Energy             -239.861135989483

 Properties without orbital relaxation:

 !MRCI STATE 11.2 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -239.93420671 (Davidson, fixed reference)
 Cluster corrected energies          -239.93409935 (Davidson, relaxed reference)
 Cluster corrected energies          -239.93420671 (Davidson, rotated reference)

 Cluster corrected energies          -239.93266592 (Pople, fixed reference)
 Cluster corrected energies          -239.93255285 (Pople, relaxed reference)
 Cluster corrected energies          -239.93266592 (Pople, rotated reference)



 RESULTS FOR STATE 12.2
 ======================

 Coefficient of reference function:   C(0) = 0.95812277 (fixed)   0.95875449 (relaxed)   0.95869751 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00047316   -0.00105494   -0.70960086
 Singles      0.01750464   -0.05870291   -0.06731513
 Pairs        0.07004201    0.00000030   -0.05345351
 Total        1.08801981   -0.05975756   -0.83036950
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -239.03097532
 Nuclear energy                         0.00000000
 Kinetic energy                        92.81729736
 One electron energy                 -414.44226012
 Two electron energy                  174.58112417
 Virial quotient                       -2.58422883
 Correlation energy                    -0.83016063
 !MRCI STATE 12.2 Energy             -239.861135945058

 Properties without orbital relaxation:

 !MRCI STATE 12.2 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -239.93420653 (Davidson, fixed reference)
 Cluster corrected energies          -239.93409917 (Davidson, relaxed reference)
 Cluster corrected energies          -239.93420653 (Davidson, rotated reference)

 Cluster corrected energies          -239.93266574 (Pople, fixed reference)
 Cluster corrected energies          -239.93255266 (Pople, relaxed reference)
 Cluster corrected energies          -239.93266574 (Pople, rotated reference)



 RESULTS FOR STATE 13.2
 ======================

 Maximum overlap with reference state 10

 Coefficient of reference function:   C(0) = 0.95138330 (fixed)   0.95875436 (relaxed)   0.95869737 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00047316   -0.00105493   -0.70960049
 Singles      0.01750477   -0.05870273   -0.06731532
 Pairs        0.07004220    0.00000015   -0.05345349
 Total        1.08802012   -0.05975751   -0.83036930
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -239.03097531
 Nuclear energy                         0.00000000
 Kinetic energy                        92.81736676
 One electron energy                 -414.44227667
 Two electron energy                  174.58114093
 Virial quotient                       -2.58422690
 Correlation energy                    -0.83016042
 !MRCI STATE 13.2 Energy             -239.861135738669

 Properties without orbital relaxation:

 !MRCI STATE 13.2 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -239.93420656 (Davidson, fixed reference)
 Cluster corrected energies          -239.93409919 (Davidson, relaxed reference)
 Cluster corrected energies          -239.93420656 (Davidson, rotated reference)

 Cluster corrected energies          -239.93266578 (Pople, fixed reference)
 Cluster corrected energies          -239.93255270 (Pople, relaxed reference)
 Cluster corrected energies          -239.93266578 (Pople, rotated reference)



 RESULTS FOR STATE 14.2
 ======================

 Maximum overlap with reference state 11

 Coefficient of reference function:   C(0) = 0.95810958 (fixed)   0.95875459 (relaxed)   0.95869760 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00047317   -0.00105493   -0.70960060
 Singles      0.01750446   -0.05870271   -0.06731481
 Pairs        0.07004197   -0.00000009   -0.05345385
 Total        1.08801960   -0.05975774   -0.83036926
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -239.03097532
 Nuclear energy                         0.00000000
 Kinetic energy                        92.81729716
 One electron energy                 -414.44225953
 Two electron energy                  174.58112383
 Virial quotient                       -2.58422883
 Correlation energy                    -0.83016038
 !MRCI STATE 14.2 Energy             -239.861135702420

 Properties without orbital relaxation:

 !MRCI STATE 14.2 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -239.93420609 (Davidson, fixed reference)
 Cluster corrected energies          -239.93409872 (Davidson, relaxed reference)
 Cluster corrected energies          -239.93420609 (Davidson, rotated reference)

 Cluster corrected energies          -239.93266529 (Pople, fixed reference)
 Cluster corrected energies          -239.93255220 (Pople, relaxed reference)
 Cluster corrected energies          -239.93266529 (Pople, rotated reference)



 RESULTS FOR STATE 15.2
 ======================

 Maximum overlap with reference state 16

 Coefficient of reference function:   C(0) = 0.95803364 (fixed)   0.95867372 (relaxed)   0.95861334 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00047689   -0.00104368   -0.70900875
 Singles      0.01727086   -0.05798742   -0.06647498
 Pairs        0.07046314   -0.00164765   -0.05530617
 Total        1.08821088   -0.06067874   -0.83078991
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -239.02526098
 Nuclear energy                         0.00000000
 Kinetic energy                        92.82513283
 One electron energy                 -414.48415790
 Two electron energy                  174.62830081
 Virial quotient                       -2.58395383
 Correlation energy                    -0.83059611
 !MRCI STATE 15.2 Energy             -239.855857087606

 Properties without orbital relaxation:

 !MRCI STATE 15.2 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -239.92912470 (Davidson, fixed reference)
 Cluster corrected energies          -239.92901085 (Davidson, relaxed reference)
 Cluster corrected energies          -239.92912470 (Davidson, rotated reference)

 Cluster corrected energies          -239.92759159 (Pople, fixed reference)
 Cluster corrected energies          -239.92747165 (Pople, relaxed reference)
 Cluster corrected energies          -239.92759159 (Pople, rotated reference)



 RESULTS FOR STATE 16.2
 ======================

 Maximum overlap with reference state 17

 Coefficient of reference function:   C(0) = 0.95801419 (fixed)   0.95867377 (relaxed)   0.95861340 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00047688   -0.00104368   -0.00163964
 Singles      0.01727078   -0.05798728   -0.06647496
 Pairs        0.07046309   -0.77141450   -0.76267526
 Total        1.08821075   -0.83044545   -0.83078987
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -239.02526098
 Nuclear energy                         0.00000000
 Kinetic energy                        92.82513296
 One electron energy                 -414.48415151
 Two electron energy                  174.62829446
 Virial quotient                       -2.58395382
 Correlation energy                    -0.83059607
 !MRCI STATE 16.2 Energy             -239.855857044166

 Properties without orbital relaxation:

 !MRCI STATE 16.2 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -239.92912455 (Davidson, fixed reference)
 Cluster corrected energies          -239.92901071 (Davidson, relaxed reference)
 Cluster corrected energies          -239.92912455 (Davidson, rotated reference)

 Cluster corrected energies          -239.92759143 (Pople, fixed reference)
 Cluster corrected energies          -239.92747150 (Pople, relaxed reference)
 Cluster corrected energies          -239.92759143 (Pople, rotated reference)



 RESULTS FOR STATE 17.2
 ======================

 Maximum overlap with reference state 15

 Coefficient of reference function:   C(0) = 0.95801538 (fixed)   0.95867386 (relaxed)   0.95861349 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00047688   -0.00104368   -0.70587472
 Singles      0.01727058   -0.05798712   -0.06647452
 Pairs        0.07046308   -0.00505842   -0.05844043
 Total        1.08821055   -0.06408923   -0.83078967
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -239.02526098
 Nuclear energy                         0.00000000
 Kinetic energy                        92.82513359
 One electron energy                 -414.48415788
 Two electron energy                  174.62830103
 Virial quotient                       -2.58395380
 Correlation energy                    -0.83059587
 !MRCI STATE 17.2 Energy             -239.855856851587

 Properties without orbital relaxation:

 !MRCI STATE 17.2 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -239.92912417 (Davidson, fixed reference)
 Cluster corrected energies          -239.92901032 (Davidson, relaxed reference)
 Cluster corrected energies          -239.92912417 (Davidson, rotated reference)

 Cluster corrected energies          -239.92759104 (Pople, fixed reference)
 Cluster corrected energies          -239.92747110 (Pople, relaxed reference)
 Cluster corrected energies          -239.92759104 (Pople, rotated reference)



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
 CPU TIMES  *     15325.81  15236.56     77.02      8.10      3.78
 REAL TIME  *     15916.96 SEC
 DISK USED  *         4.74 GB (local),      152.14 GB (total)
 SF USED    *        46.61 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(2)     =      -240.14770694  AU                              
 SETTING HLSDIAG(3)     =      -240.14770683  AU                              
 SETTING HLSDIAG(4)     =      -240.14770691  AU                              
 SETTING HLSDIAG(5)     =      -240.14770742  AU                              
 SETTING HLSDIAG(6)     =      -240.14770735  AU                              
 SETTING HLSDIAG(7)     =      -240.11773261  AU                              
 SETTING HLSDIAG(8)     =      -240.11773237  AU                              
 SETTING HLSDIAG(9)     =      -240.11773258  AU                              
 SETTING HLSDIAG(10)    =      -239.94446772  AU                              
 SETTING HLSDIAG(11)    =      -239.93420667  AU                              
 SETTING HLSDIAG(12)    =      -239.93420671  AU                              
 SETTING HLSDIAG(13)    =      -239.93420653  AU                              
 SETTING HLSDIAG(14)    =      -239.93420656  AU                              
 SETTING HLSDIAG(15)    =      -239.93420609  AU                              
 SETTING HLSDIAG(16)    =      -239.92912470  AU                              
 SETTING HLSDIAG(17)    =      -239.92912455  AU                              
 SETTING HLSDIAG(18)    =      -239.92912417  AU                              


         HLSDIAG
    -240.1925120
    -240.1477069
    -240.1477068
    -240.1477069
    -240.1477074
    -240.1477073
    -240.1177326
    -240.1177324
    -240.1177326
    -239.9444677
    -239.9342067
    -239.9342067
    -239.9342065
    -239.9342066
    -239.9342061
    -239.9291247
    -239.9291245
    -239.9291242
                                                  


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


 Bra-wavefunction restored from record   5302.2
 Ket-wavefunction restored from record   5302.2


 Symmetry of spin-orbit operator:         1
 Symmetry of bra wavefunction:            2   S= 1.5  MS= 0.5
 Symmetry of ket wavefunction:            2   S= 1.5  MS= 1.5


 !MRCI expec       <1.2|ECPLSX|1.2>     0.000000000000i

 !MRCI overlap           <1.2||1.2>     1.000000000000
 Wavefunction restored from record  5102.2  Symmetry=2  S= 0.5  NSTATE=  17

 Original energies:   -240.067560   -240.067560   -240.067560   -240.067560   -240.067560   -240.039452   -240.039452   -240.039452
                      -239.871970   -239.861136   -239.861136   -239.861136   -239.861136   -239.861136   -239.855857   -239.855857
                      -239.855857
 Replaced energies:   -240.147707   -240.147707   -240.147707   -240.147707   -240.147707   -240.117733   -240.117732   -240.117733
                      -239.944468   -239.934207   -239.934207   -239.934207   -239.934207   -239.934206   -239.929125   -239.929125
                      -239.929124


 Bra-wavefunction restored from record   5302.2
 Ket-wavefunction restored from record   5102.2


 Symmetry of spin-orbit operator:         1
 Symmetry of bra wavefunction:            2   S= 1.5  MS= 1.5
 Symmetry of ket wavefunction:            2   S= 0.5  MS= 0.5

 !MRCI LS_I-I(ECP) <1.2|ECPLSX|1.2>    -0.000000000100i
 !MRCI LS_I-I(ECP) <1.2|ECPLSX|2.2>    -0.000000000648i
 !MRCI LS_I-I(ECP) <1.2|ECPLSX|3.2>     0.000000000068i
 !MRCI LS_I-I(ECP) <1.2|ECPLSX|4.2>     0.000000000006i
 !MRCI LS_I-I(ECP) <1.2|ECPLSX|5.2>    -0.000000000210i
 !MRCI LS_I-I(ECP) <1.2|ECPLSX|6.2>     0.001161959336i
 !MRCI LS_I-I(ECP) <1.2|ECPLSX|7.2>    -0.009614149093i
 !MRCI LS_I-I(ECP) <1.2|ECPLSX|8.2>     0.000329816332i
 !MRCI LS_I-I(ECP) <1.2|ECPLSX|9.2>    -0.000000000172i
 !MRCI LS_I-I(ECP <1.2|ECPLSX|10.2>    -0.000000024659i
 !MRCI LS_I-I(ECP <1.2|ECPLSX|11.2>    -0.000000000876i
 !MRCI LS_I-I(ECP <1.2|ECPLSX|12.2>    -0.000000000938i
 !MRCI LS_I-I(ECP <1.2|ECPLSX|13.2>    -0.000000000630i
 !MRCI LS_I-I(ECP <1.2|ECPLSX|14.2>     0.000000000337i
 !MRCI LS_I-I(ECP <1.2|ECPLSX|15.2>     0.000005493759i
 !MRCI LS_I-I(ECP <1.2|ECPLSX|16.2>     0.002572155484i
 !MRCI LS_I-I(ECP <1.2|ECPLSX|17.2>     0.000016866471i

 !MRCI expec       <1.2|ECPLSX|1.2>    -0.000000000108i
 !MRCI trans       <1.2|ECPLSX|2.2>    -0.000000000674i
 !MRCI trans       <1.2|ECPLSX|3.2>     0.000000000070i
 !MRCI trans       <1.2|ECPLSX|4.2>    -0.000000000018i
 !MRCI trans       <1.2|ECPLSX|5.2>     0.000000002310i
 !MRCI trans       <1.2|ECPLSX|6.2>     0.001165983249i
 !MRCI trans       <1.2|ECPLSX|7.2>    -0.009647444601i
 !MRCI trans       <1.2|ECPLSX|8.2>     0.000330958528i
 !MRCI trans       <1.2|ECPLSX|9.2>    -0.000000000204i
 !MRCI trans      <1.2|ECPLSX|10.2>    -0.000000024313i
 !MRCI trans      <1.2|ECPLSX|11.2>    -0.000000000869i
 !MRCI trans      <1.2|ECPLSX|12.2>    -0.000000000951i
 !MRCI trans      <1.2|ECPLSX|13.2>    -0.000000000596i
 !MRCI trans      <1.2|ECPLSX|14.2>     0.000000000321i
 !MRCI trans      <1.2|ECPLSX|15.2>     0.000005412353i
 !MRCI trans      <1.2|ECPLSX|16.2>     0.002534035819i
 !MRCI trans      <1.2|ECPLSX|17.2>     0.000016616570i

 Bra-wavefunction restored from record   5102.2
 Ket-wavefunction restored from record   5102.2


 Symmetry of spin-orbit operator:         1
 Symmetry of bra wavefunction:            2   S= 0.5  MS=-0.5
 Symmetry of ket wavefunction:            2   S= 0.5  MS= 0.5

 !MRCI LS_I-I(ECP) <2.2|ECPLSX|1.2>     0.000000201710i
 !MRCI LS_I-I(ECP) <3.2|ECPLSX|1.2>     0.000000104272i
 !MRCI LS_I-I(ECP) <4.2|ECPLSX|1.2>    -0.000000146714i
 !MRCI LS_I-I(ECP) <5.2|ECPLSX|1.2>     0.000003950297i
 !MRCI LS_I-I(ECP) <6.2|ECPLSX|1.2>     0.000875509645i
 !MRCI LS_I-I(ECP) <7.2|ECPLSX|1.2>    -0.007814155742i
 !MRCI LS_I-I(ECP) <8.2|ECPLSX|1.2>     0.000234213195i
 !MRCI LS_I-I(ECP) <9.2|ECPLSX|1.2>     0.000000000028i
 !MRCI LS_I-I(ECP <10.2|ECPLSX|1.2>     0.000094263103i
 !MRCI LS_I-I(ECP <11.2|ECPLSX|1.2>    -0.000000373609i
 !MRCI LS_I-I(ECP <12.2|ECPLSX|1.2>     0.000004569746i
 !MRCI LS_I-I(ECP <13.2|ECPLSX|1.2>     0.000000972382i
 !MRCI LS_I-I(ECP <14.2|ECPLSX|1.2>     0.000002130056i
 !MRCI LS_I-I(ECP <15.2|ECPLSX|1.2>    -0.000002674702i
 !MRCI LS_I-I(ECP <16.2|ECPLSX|1.2>     0.000404080873i
 !MRCI LS_I-I(ECP <17.2|ECPLSX|1.2>     0.000000975430i
 !MRCI LS_I-I(ECP) <1.2|ECPLSX|2.2>    -0.000000201710i
 !MRCI LS_I-I(ECP) <3.2|ECPLSX|2.2>     0.000020112477i
 !MRCI LS_I-I(ECP) <4.2|ECPLSX|2.2>    -0.000000290540i
 !MRCI LS_I-I(ECP) <5.2|ECPLSX|2.2>    -0.000000099194i
 !MRCI LS_I-I(ECP) <6.2|ECPLSX|2.2>     0.000071750339i
 !MRCI LS_I-I(ECP) <7.2|ECPLSX|2.2>    -0.000188433850i
 !MRCI LS_I-I(ECP) <8.2|ECPLSX|2.2>    -0.006842837928i
 !MRCI LS_I-I(ECP) <9.2|ECPLSX|2.2>    -0.000000000216i
 !MRCI LS_I-I(ECP <10.2|ECPLSX|2.2>    -0.000000426527i
 !MRCI LS_I-I(ECP <11.2|ECPLSX|2.2>    -0.000001597070i
 !MRCI LS_I-I(ECP <12.2|ECPLSX|2.2>     0.000003114664i
 !MRCI LS_I-I(ECP <13.2|ECPLSX|2.2>    -0.000002549158i
 !MRCI LS_I-I(ECP <14.2|ECPLSX|2.2>     0.000480091827i
 !MRCI LS_I-I(ECP <15.2|ECPLSX|2.2>    -0.000002419609i
 !MRCI LS_I-I(ECP <16.2|ECPLSX|2.2>     0.000000392449i
 !MRCI LS_I-I(ECP <17.2|ECPLSX|2.2>    -0.000351639780i
 !MRCI LS_I-I(ECP) <1.2|ECPLSX|3.2>    -0.000000104272i
 !MRCI LS_I-I(ECP) <2.2|ECPLSX|3.2>    -0.000020112477i
 !MRCI LS_I-I(ECP) <4.2|ECPLSX|3.2>     0.000000108276i
 !MRCI LS_I-I(ECP) <5.2|ECPLSX|3.2>    -0.000000557658i
 !MRCI LS_I-I(ECP) <6.2|ECPLSX|3.2>     0.006805700042i
 !MRCI LS_I-I(ECP) <7.2|ECPLSX|3.2>     0.000732984704i
 !MRCI LS_I-I(ECP) <8.2|ECPLSX|3.2>     0.000051429238i
 !MRCI LS_I-I(ECP) <9.2|ECPLSX|3.2>    -0.000000000007i
 !MRCI LS_I-I(ECP <10.2|ECPLSX|3.2>    -0.000014785716i
 !MRCI LS_I-I(ECP <11.2|ECPLSX|3.2>     0.000002180716i
 !MRCI LS_I-I(ECP <12.2|ECPLSX|3.2>    -0.000479979207i
 !MRCI LS_I-I(ECP <13.2|ECPLSX|3.2>    -0.000002071526i
 !MRCI LS_I-I(ECP <14.2|ECPLSX|3.2>     0.000003150367i
 !MRCI LS_I-I(ECP <15.2|ECPLSX|3.2>     0.000351595589i
 !MRCI LS_I-I(ECP <16.2|ECPLSX|3.2>     0.000003918567i
 !MRCI LS_I-I(ECP <17.2|ECPLSX|3.2>    -0.000002401788i
 !MRCI LS_I-I(ECP) <1.2|ECPLSX|4.2>     0.000000146714i
 !MRCI LS_I-I(ECP) <2.2|ECPLSX|4.2>     0.000000290540i
 !MRCI LS_I-I(ECP) <3.2|ECPLSX|4.2>    -0.000000108276i
 !MRCI LS_I-I(ECP) <5.2|ECPLSX|4.2>    -0.000040073127i
 !MRCI LS_I-I(ECP) <6.2|ECPLSX|4.2>    -0.000009435547i
 !MRCI LS_I-I(ECP) <7.2|ECPLSX|4.2>    -0.000780378212i
 !MRCI LS_I-I(ECP) <8.2|ECPLSX|4.2>     0.000031313510i
 !MRCI LS_I-I(ECP) <9.2|ECPLSX|4.2>     0.000000000065i
 !MRCI LS_I-I(ECP <10.2|ECPLSX|4.2>    -0.000955030175i
 !MRCI LS_I-I(ECP <11.2|ECPLSX|4.2>    -0.000028676111i
 !MRCI LS_I-I(ECP <12.2|ECPLSX|4.2>     0.000009768738i
 !MRCI LS_I-I(ECP <13.2|ECPLSX|4.2>     0.000004260975i
 !MRCI LS_I-I(ECP <14.2|ECPLSX|4.2>     0.000001102200i
 !MRCI LS_I-I(ECP <15.2|ECPLSX|4.2>    -0.000005201834i
 !MRCI LS_I-I(ECP <16.2|ECPLSX|4.2>     0.000039769646i
 !MRCI LS_I-I(ECP <17.2|ECPLSX|4.2>     0.000000589620i
 !MRCI LS_I-I(ECP) <1.2|ECPLSX|5.2>    -0.000003950297i
 !MRCI LS_I-I(ECP) <2.2|ECPLSX|5.2>     0.000000099194i
 !MRCI LS_I-I(ECP) <3.2|ECPLSX|5.2>     0.000000557658i
 !MRCI LS_I-I(ECP) <4.2|ECPLSX|5.2>     0.000040073127i
 !MRCI LS_I-I(ECP) <6.2|ECPLSX|5.2>    -0.000012414235i
 !MRCI LS_I-I(ECP) <7.2|ECPLSX|5.2>    -0.000029913444i
 !MRCI LS_I-I(ECP) <8.2|ECPLSX|5.2>     0.000002725327i
 !MRCI LS_I-I(ECP) <9.2|ECPLSX|5.2>    -0.000000006408i
 !MRCI LS_I-I(ECP <10.2|ECPLSX|5.2>    -0.000027728254i
 !MRCI LS_I-I(ECP <11.2|ECPLSX|5.2>     0.000879694979i
 !MRCI LS_I-I(ECP <12.2|ECPLSX|5.2>     0.000003248991i
 !MRCI LS_I-I(ECP <13.2|ECPLSX|5.2>    -0.000383876077i
 !MRCI LS_I-I(ECP <14.2|ECPLSX|5.2>     0.000001269764i
 !MRCI LS_I-I(ECP <15.2|ECPLSX|5.2>    -0.000000813016i
 !MRCI LS_I-I(ECP <16.2|ECPLSX|5.2>     0.000001453827i
 !MRCI LS_I-I(ECP <17.2|ECPLSX|5.2>     0.000000111367i
 !MRCI LS_I-I(ECP) <1.2|ECPLSX|6.2>    -0.000875509645i
 !MRCI LS_I-I(ECP) <2.2|ECPLSX|6.2>    -0.000071750339i
 !MRCI LS_I-I(ECP) <3.2|ECPLSX|6.2>    -0.006805700042i
 !MRCI LS_I-I(ECP) <4.2|ECPLSX|6.2>     0.000009435547i
 !MRCI LS_I-I(ECP) <5.2|ECPLSX|6.2>     0.000012414235i
 !MRCI LS_I-I(ECP) <7.2|ECPLSX|6.2>    -0.000000338595i
 !MRCI LS_I-I(ECP) <8.2|ECPLSX|6.2>    -0.000009865819i
 !MRCI LS_I-I(ECP) <9.2|ECPLSX|6.2>     0.000062520158i
 !MRCI LS_I-I(ECP <10.2|ECPLSX|6.2>     0.000000625262i
 !MRCI LS_I-I(ECP <11.2|ECPLSX|6.2>    -0.000012994716i
 !MRCI LS_I-I(ECP <12.2|ECPLSX|6.2>     0.000003918041i
 !MRCI LS_I-I(ECP <13.2|ECPLSX|6.2>    -0.000029002853i
 !MRCI LS_I-I(ECP <14.2|ECPLSX|6.2>     0.000218014697i
 !MRCI LS_I-I(ECP <15.2|ECPLSX|6.2>    -0.000009105793i
 !MRCI LS_I-I(ECP <16.2|ECPLSX|6.2>     0.000003320554i
 !MRCI LS_I-I(ECP <17.2|ECPLSX|6.2>    -0.000503421596i
 !MRCI LS_I-I(ECP) <1.2|ECPLSX|7.2>     0.007814155742i
 !MRCI LS_I-I(ECP) <2.2|ECPLSX|7.2>     0.000188433850i
 !MRCI LS_I-I(ECP) <3.2|ECPLSX|7.2>    -0.000732984704i
 !MRCI LS_I-I(ECP) <4.2|ECPLSX|7.2>     0.000780378212i
 !MRCI LS_I-I(ECP) <5.2|ECPLSX|7.2>     0.000029913444i
 !MRCI LS_I-I(ECP) <6.2|ECPLSX|7.2>     0.000000338595i
 !MRCI LS_I-I(ECP) <8.2|ECPLSX|7.2>    -0.000001191301i
 !MRCI LS_I-I(ECP) <9.2|ECPLSX|7.2>    -0.000517296991i
 !MRCI LS_I-I(ECP <10.2|ECPLSX|7.2>    -0.000001969517i
 !MRCI LS_I-I(ECP <11.2|ECPLSX|7.2>     0.000100572961i
 !MRCI LS_I-I(ECP <12.2|ECPLSX|7.2>    -0.000007536512i
 !MRCI LS_I-I(ECP <13.2|ECPLSX|7.2>     0.000230683368i
 !MRCI LS_I-I(ECP <14.2|ECPLSX|7.2>     0.000028035969i
 !MRCI LS_I-I(ECP <15.2|ECPLSX|7.2>     0.000016286450i
 !MRCI LS_I-I(ECP <16.2|ECPLSX|7.2>     0.000000365705i
 !MRCI LS_I-I(ECP <17.2|ECPLSX|7.2>    -0.000061086501i
 !MRCI LS_I-I(ECP) <1.2|ECPLSX|8.2>    -0.000234213195i
 !MRCI LS_I-I(ECP) <2.2|ECPLSX|8.2>     0.006842837928i
 !MRCI LS_I-I(ECP) <3.2|ECPLSX|8.2>    -0.000051429238i
 !MRCI LS_I-I(ECP) <4.2|ECPLSX|8.2>    -0.000031313510i
 !MRCI LS_I-I(ECP) <5.2|ECPLSX|8.2>    -0.000002725327i
 !MRCI LS_I-I(ECP) <6.2|ECPLSX|8.2>     0.000009865819i
 !MRCI LS_I-I(ECP) <7.2|ECPLSX|8.2>     0.000001191301i
 !MRCI LS_I-I(ECP) <9.2|ECPLSX|8.2>     0.000017745950i
 !MRCI LS_I-I(ECP <10.2|ECPLSX|8.2>    -0.000000523591i
 !MRCI LS_I-I(ECP <11.2|ECPLSX|8.2>    -0.000003197380i
 !MRCI LS_I-I(ECP <12.2|ECPLSX|8.2>    -0.000219659252i
 !MRCI LS_I-I(ECP <13.2|ECPLSX|8.2>    -0.000008500408i
 !MRCI LS_I-I(ECP <14.2|ECPLSX|8.2>     0.000002929426i
 !MRCI LS_I-I(ECP <15.2|ECPLSX|8.2>     0.000506832312i
 !MRCI LS_I-I(ECP <16.2|ECPLSX|8.2>    -0.000001036062i
 !MRCI LS_I-I(ECP <17.2|ECPLSX|8.2>    -0.000007088643i
 !MRCI LS_I-I(ECP) <1.2|ECPLSX|9.2>    -0.000000000028i
 !MRCI LS_I-I(ECP) <2.2|ECPLSX|9.2>     0.000000000216i
 !MRCI LS_I-I(ECP) <3.2|ECPLSX|9.2>     0.000000000007i
 !MRCI LS_I-I(ECP) <4.2|ECPLSX|9.2>    -0.000000000065i
 !MRCI LS_I-I(ECP) <5.2|ECPLSX|9.2>     0.000000006408i
 !MRCI LS_I-I(ECP) <6.2|ECPLSX|9.2>    -0.000062520158i
 !MRCI LS_I-I(ECP) <7.2|ECPLSX|9.2>     0.000517296991i
 !MRCI LS_I-I(ECP) <8.2|ECPLSX|9.2>    -0.000017745950i
 !MRCI LS_I-I(ECP <10.2|ECPLSX|9.2>     0.000000079064i
 !MRCI LS_I-I(ECP <11.2|ECPLSX|9.2>     0.000000002192i
 !MRCI LS_I-I(ECP <12.2|ECPLSX|9.2>     0.000000002152i
 !MRCI LS_I-I(ECP <13.2|ECPLSX|9.2>     0.000000001042i
 !MRCI LS_I-I(ECP <14.2|ECPLSX|9.2>    -0.000000000803i
 !MRCI LS_I-I(ECP <15.2|ECPLSX|9.2>    -0.000010325019i
 !MRCI LS_I-I(ECP <16.2|ECPLSX|9.2>    -0.004834173334i
 !MRCI LS_I-I(ECP <17.2|ECPLSX|9.2>    -0.000031699389i
 !MRCI LS_I-I(ECP <1.2|ECPLSX|10.2>    -0.000094263103i
 !MRCI LS_I-I(ECP <2.2|ECPLSX|10.2>     0.000000426527i
 !MRCI LS_I-I(ECP <3.2|ECPLSX|10.2>     0.000014785716i
 !MRCI LS_I-I(ECP <4.2|ECPLSX|10.2>     0.000955030175i
 !MRCI LS_I-I(ECP <5.2|ECPLSX|10.2>     0.000027728254i
 !MRCI LS_I-I(ECP <6.2|ECPLSX|10.2>    -0.000000625262i
 !MRCI LS_I-I(ECP <7.2|ECPLSX|10.2>     0.000001969517i
 !MRCI LS_I-I(ECP <8.2|ECPLSX|10.2>     0.000000523591i
 !MRCI LS_I-I(ECP <9.2|ECPLSX|10.2>    -0.000000079064i
 !MRCI LS_I-I(EC <11.2|ECPLSX|10.2>     0.004697055402i
 !MRCI LS_I-I(EC <12.2|ECPLSX|10.2>     0.000006606246i
 !MRCI LS_I-I(EC <13.2|ECPLSX|10.2>    -0.002048448671i
 !MRCI LS_I-I(EC <14.2|ECPLSX|10.2>     0.000014239604i
 !MRCI LS_I-I(EC <15.2|ECPLSX|10.2>    -0.000002546073i
 !MRCI LS_I-I(EC <16.2|ECPLSX|10.2>    -0.000013482068i
 !MRCI LS_I-I(EC <17.2|ECPLSX|10.2>     0.000003911363i
 !MRCI LS_I-I(ECP <1.2|ECPLSX|11.2>     0.000000373609i
 !MRCI LS_I-I(ECP <2.2|ECPLSX|11.2>     0.000001597070i
 !MRCI LS_I-I(ECP <3.2|ECPLSX|11.2>    -0.000002180716i
 !MRCI LS_I-I(ECP <4.2|ECPLSX|11.2>     0.000028676111i
 !MRCI LS_I-I(ECP <5.2|ECPLSX|11.2>    -0.000879694979i
 !MRCI LS_I-I(ECP <6.2|ECPLSX|11.2>     0.000012994716i
 !MRCI LS_I-I(ECP <7.2|ECPLSX|11.2>    -0.000100572961i
 !MRCI LS_I-I(ECP <8.2|ECPLSX|11.2>     0.000003197380i
 !MRCI LS_I-I(ECP <9.2|ECPLSX|11.2>    -0.000000002192i
 !MRCI LS_I-I(EC <10.2|ECPLSX|11.2>    -0.004697055402i
 !MRCI LS_I-I(EC <12.2|ECPLSX|11.2>     0.000022544763i
 !MRCI LS_I-I(EC <13.2|ECPLSX|11.2>    -0.000040595363i
 !MRCI LS_I-I(EC <14.2|ECPLSX|11.2>     0.000004717869i
 !MRCI LS_I-I(EC <15.2|ECPLSX|11.2>     0.000007003745i
 !MRCI LS_I-I(EC <16.2|ECPLSX|11.2>     0.000679003743i
 !MRCI LS_I-I(EC <17.2|ECPLSX|11.2>     0.000002660979i
 !MRCI LS_I-I(ECP <1.2|ECPLSX|12.2>    -0.000004569746i
 !MRCI LS_I-I(ECP <2.2|ECPLSX|12.2>    -0.000003114664i
 !MRCI LS_I-I(ECP <3.2|ECPLSX|12.2>     0.000479979207i
 !MRCI LS_I-I(ECP <4.2|ECPLSX|12.2>    -0.000009768738i
 !MRCI LS_I-I(ECP <5.2|ECPLSX|12.2>    -0.000003248991i
 !MRCI LS_I-I(ECP <6.2|ECPLSX|12.2>    -0.000003918041i
 !MRCI LS_I-I(ECP <7.2|ECPLSX|12.2>     0.000007536512i
 !MRCI LS_I-I(ECP <8.2|ECPLSX|12.2>     0.000219659252i
 !MRCI LS_I-I(ECP <9.2|ECPLSX|12.2>    -0.000000002152i
 !MRCI LS_I-I(EC <10.2|ECPLSX|12.2>    -0.000006606246i
 !MRCI LS_I-I(EC <11.2|ECPLSX|12.2>    -0.000022544763i
 !MRCI LS_I-I(EC <13.2|ECPLSX|12.2>    -0.000007559859i
 !MRCI LS_I-I(EC <14.2|ECPLSX|12.2>     0.002562128250i
 !MRCI LS_I-I(EC <15.2|ECPLSX|12.2>     0.000000565978i
 !MRCI LS_I-I(EC <16.2|ECPLSX|12.2>    -0.000012801093i
 !MRCI LS_I-I(EC <17.2|ECPLSX|12.2>     0.001471273509i
 !MRCI LS_I-I(ECP <1.2|ECPLSX|13.2>    -0.000000972382i
 !MRCI LS_I-I(ECP <2.2|ECPLSX|13.2>     0.000002549158i
 !MRCI LS_I-I(ECP <3.2|ECPLSX|13.2>     0.000002071526i
 !MRCI LS_I-I(ECP <4.2|ECPLSX|13.2>    -0.000004260975i
 !MRCI LS_I-I(ECP <5.2|ECPLSX|13.2>     0.000383876077i
 !MRCI LS_I-I(ECP <6.2|ECPLSX|13.2>     0.000029002853i
 !MRCI LS_I-I(ECP <7.2|ECPLSX|13.2>    -0.000230683368i
 !MRCI LS_I-I(ECP <8.2|ECPLSX|13.2>     0.000008500408i
 !MRCI LS_I-I(ECP <9.2|ECPLSX|13.2>    -0.000000001042i
 !MRCI LS_I-I(EC <10.2|ECPLSX|13.2>     0.002048448671i
 !MRCI LS_I-I(EC <11.2|ECPLSX|13.2>     0.000040595363i
 !MRCI LS_I-I(EC <12.2|ECPLSX|13.2>     0.000007559859i
 !MRCI LS_I-I(EC <14.2|ECPLSX|13.2>     0.000003251559i
 !MRCI LS_I-I(EC <15.2|ECPLSX|13.2>     0.000010837633i
 !MRCI LS_I-I(EC <16.2|ECPLSX|13.2>     0.001557161284i
 !MRCI LS_I-I(EC <17.2|ECPLSX|13.2>     0.000014000856i
 !MRCI LS_I-I(ECP <1.2|ECPLSX|14.2>    -0.000002130056i
 !MRCI LS_I-I(ECP <2.2|ECPLSX|14.2>    -0.000480091827i
 !MRCI LS_I-I(ECP <3.2|ECPLSX|14.2>    -0.000003150367i
 !MRCI LS_I-I(ECP <4.2|ECPLSX|14.2>    -0.000001102200i
 !MRCI LS_I-I(ECP <5.2|ECPLSX|14.2>    -0.000001269764i
 !MRCI LS_I-I(ECP <6.2|ECPLSX|14.2>    -0.000218014697i
 !MRCI LS_I-I(ECP <7.2|ECPLSX|14.2>    -0.000028035969i
 !MRCI LS_I-I(ECP <8.2|ECPLSX|14.2>    -0.000002929426i
 !MRCI LS_I-I(ECP <9.2|ECPLSX|14.2>     0.000000000803i
 !MRCI LS_I-I(EC <10.2|ECPLSX|14.2>    -0.000014239604i
 !MRCI LS_I-I(EC <11.2|ECPLSX|14.2>    -0.000004717869i
 !MRCI LS_I-I(EC <12.2|ECPLSX|14.2>    -0.002562128250i
 !MRCI LS_I-I(EC <13.2|ECPLSX|14.2>    -0.000003251559i
 !MRCI LS_I-I(EC <15.2|ECPLSX|14.2>    -0.001471239502i
 !MRCI LS_I-I(EC <16.2|ECPLSX|14.2>     0.000013672622i
 !MRCI LS_I-I(EC <17.2|ECPLSX|14.2>     0.000000668781i
 !MRCI LS_I-I(ECP <1.2|ECPLSX|15.2>     0.000002674702i
 !MRCI LS_I-I(ECP <2.2|ECPLSX|15.2>     0.000002419609i
 !MRCI LS_I-I(ECP <3.2|ECPLSX|15.2>    -0.000351595589i
 !MRCI LS_I-I(ECP <4.2|ECPLSX|15.2>     0.000005201834i
 !MRCI LS_I-I(ECP <5.2|ECPLSX|15.2>     0.000000813016i
 !MRCI LS_I-I(ECP <6.2|ECPLSX|15.2>     0.000009105793i
 !MRCI LS_I-I(ECP <7.2|ECPLSX|15.2>    -0.000016286450i
 !MRCI LS_I-I(ECP <8.2|ECPLSX|15.2>    -0.000506832312i
 !MRCI LS_I-I(ECP <9.2|ECPLSX|15.2>     0.000010325019i
 !MRCI LS_I-I(EC <10.2|ECPLSX|15.2>     0.000002546073i
 !MRCI LS_I-I(EC <11.2|ECPLSX|15.2>    -0.000007003745i
 !MRCI LS_I-I(EC <12.2|ECPLSX|15.2>    -0.000000565978i
 !MRCI LS_I-I(EC <13.2|ECPLSX|15.2>    -0.000010837633i
 !MRCI LS_I-I(EC <14.2|ECPLSX|15.2>     0.001471239502i
 !MRCI LS_I-I(EC <16.2|ECPLSX|15.2>    -0.000012368996i
 !MRCI LS_I-I(EC <17.2|ECPLSX|15.2>     0.001886194593i
 !MRCI LS_I-I(ECP <1.2|ECPLSX|16.2>    -0.000404080873i
 !MRCI LS_I-I(ECP <2.2|ECPLSX|16.2>    -0.000000392449i
 !MRCI LS_I-I(ECP <3.2|ECPLSX|16.2>    -0.000003918567i
 !MRCI LS_I-I(ECP <4.2|ECPLSX|16.2>    -0.000039769646i
 !MRCI LS_I-I(ECP <5.2|ECPLSX|16.2>    -0.000001453827i
 !MRCI LS_I-I(ECP <6.2|ECPLSX|16.2>    -0.000003320554i
 !MRCI LS_I-I(ECP <7.2|ECPLSX|16.2>    -0.000000365705i
 !MRCI LS_I-I(ECP <8.2|ECPLSX|16.2>     0.000001036062i
 !MRCI LS_I-I(ECP <9.2|ECPLSX|16.2>     0.004834173334i
 !MRCI LS_I-I(EC <10.2|ECPLSX|16.2>     0.000013482068i
 !MRCI LS_I-I(EC <11.2|ECPLSX|16.2>    -0.000679003743i
 !MRCI LS_I-I(EC <12.2|ECPLSX|16.2>     0.000012801093i
 !MRCI LS_I-I(EC <13.2|ECPLSX|16.2>    -0.001557161284i
 !MRCI LS_I-I(EC <14.2|ECPLSX|16.2>    -0.000013672622i
 !MRCI LS_I-I(EC <15.2|ECPLSX|16.2>     0.000012368996i
 !MRCI LS_I-I(EC <17.2|ECPLSX|16.2>    -0.000004027611i
 !MRCI LS_I-I(ECP <1.2|ECPLSX|17.2>    -0.000000975430i
 !MRCI LS_I-I(ECP <2.2|ECPLSX|17.2>     0.000351639780i
 !MRCI LS_I-I(ECP <3.2|ECPLSX|17.2>     0.000002401788i
 !MRCI LS_I-I(ECP <4.2|ECPLSX|17.2>    -0.000000589620i
 !MRCI LS_I-I(ECP <5.2|ECPLSX|17.2>    -0.000000111367i
 !MRCI LS_I-I(ECP <6.2|ECPLSX|17.2>     0.000503421596i
 !MRCI LS_I-I(ECP <7.2|ECPLSX|17.2>     0.000061086501i
 !MRCI LS_I-I(ECP <8.2|ECPLSX|17.2>     0.000007088643i
 !MRCI LS_I-I(ECP <9.2|ECPLSX|17.2>     0.000031699389i
 !MRCI LS_I-I(EC <10.2|ECPLSX|17.2>    -0.000003911363i
 !MRCI LS_I-I(EC <11.2|ECPLSX|17.2>    -0.000002660979i
 !MRCI LS_I-I(EC <12.2|ECPLSX|17.2>    -0.001471273509i
 !MRCI LS_I-I(EC <13.2|ECPLSX|17.2>    -0.000014000856i
 !MRCI LS_I-I(EC <14.2|ECPLSX|17.2>    -0.000000668781i
 !MRCI LS_I-I(EC <15.2|ECPLSX|17.2>    -0.001886194593i
 !MRCI LS_I-I(EC <16.2|ECPLSX|17.2>     0.000004027611i

 !MRCI expec       <1.2|ECPLSX|1.2>   -26.908337933952i
 !MRCI trans       <2.2|ECPLSX|1.2>    93.609096513067i
 !MRCI trans       <3.2|ECPLSX|1.2>    32.510943718954i
 !MRCI trans       <4.2|ECPLSX|1.2>     5.798794245555i
 !MRCI trans       <5.2|ECPLSX|1.2>    50.635762450365i
 !MRCI trans       <6.2|ECPLSX|1.2>    79.318331188835i
 !MRCI trans       <7.2|ECPLSX|1.2>    -5.843383771385i
 !MRCI trans       <8.2|ECPLSX|1.2>    44.434209634468i
 !MRCI trans       <9.2|ECPLSX|1.2>     3.399803153415i
 !MRCI trans      <10.2|ECPLSX|1.2>   -14.954558748495i
 !MRCI trans      <11.2|ECPLSX|1.2>    -5.732811667009i
 !MRCI trans      <12.2|ECPLSX|1.2>    -4.343004658505i
 !MRCI trans      <13.2|ECPLSX|1.2>    -2.133013189772i
 !MRCI trans      <14.2|ECPLSX|1.2>     2.448696063111i
 !MRCI trans      <15.2|ECPLSX|1.2>     3.167993829899i
 !MRCI trans      <16.2|ECPLSX|1.2>    16.833083655992i
 !MRCI trans      <17.2|ECPLSX|1.2>     2.358311598031i
 !MRCI expec       <2.2|ECPLSX|2.2>    65.409266712179i
 !MRCI trans       <3.2|ECPLSX|2.2>    -8.395823207845i
 !MRCI trans       <4.2|ECPLSX|2.2>   -13.980760669747i
 !MRCI trans       <5.2|ECPLSX|2.2>    18.363746354053i
 !MRCI trans       <6.2|ECPLSX|2.2>    40.021880893322i
 !MRCI trans       <7.2|ECPLSX|2.2>     0.382197544824i
 !MRCI trans       <8.2|ECPLSX|2.2>    14.295320791826i
 !MRCI trans       <9.2|ECPLSX|2.2>    -5.217525708840i
 !MRCI trans      <10.2|ECPLSX|2.2>    -0.253390891855i
 !MRCI trans      <11.2|ECPLSX|2.2>     8.168649402679i
 !MRCI trans      <12.2|ECPLSX|2.2>   -12.299962765588i
 !MRCI trans      <13.2|ECPLSX|2.2>    -1.109106006588i
 !MRCI trans      <14.2|ECPLSX|2.2>    -0.483401522725i
 !MRCI trans      <15.2|ECPLSX|2.2>     8.585680327514i
 !MRCI trans      <16.2|ECPLSX|2.2>     0.672593148433i
 !MRCI trans      <17.2|ECPLSX|2.2>     6.823883706426i
 !MRCI expec       <3.2|ECPLSX|3.2>     6.685985760211i
 !MRCI trans       <4.2|ECPLSX|3.2>     9.572373566441i
 !MRCI trans       <5.2|ECPLSX|3.2>   -14.324741418768i
 !MRCI trans       <6.2|ECPLSX|3.2>    11.811118282569i
 !MRCI trans       <7.2|ECPLSX|3.2>    -6.291018247238i
 !MRCI trans       <8.2|ECPLSX|3.2>     8.156834066136i
 !MRCI trans       <9.2|ECPLSX|3.2>    -2.708545413199i
 !MRCI trans      <10.2|ECPLSX|3.2>     4.053742936420i
 !MRCI trans      <11.2|ECPLSX|3.2>    -0.520786455901i
 !MRCI trans      <12.2|ECPLSX|3.2>     0.497592050923i
 !MRCI trans      <13.2|ECPLSX|3.2>     4.062441349639i
 !MRCI trans      <14.2|ECPLSX|3.2>    -0.371948787072i
 !MRCI trans      <15.2|ECPLSX|3.2>    -6.671868935307i
 !MRCI trans      <16.2|ECPLSX|3.2>     0.063919955323i
 !MRCI trans      <17.2|ECPLSX|3.2>     1.947514254854i
 !MRCI expec       <4.2|ECPLSX|4.2>     7.708659544097i
 !MRCI trans       <5.2|ECPLSX|4.2>    66.321555887488i
 !MRCI trans       <6.2|ECPLSX|4.2>   190.805744507077i
 !MRCI trans       <7.2|ECPLSX|4.2>    -4.213067764952i
 !MRCI trans       <8.2|ECPLSX|4.2>    38.940999880210i
 !MRCI trans       <9.2|ECPLSX|4.2>    -4.435655411075i
 !MRCI trans      <10.2|ECPLSX|4.2>   -29.478487500495i
 !MRCI trans      <11.2|ECPLSX|4.2>    -5.963330861615i
 !MRCI trans      <12.2|ECPLSX|4.2>   -17.718805623740i
 !MRCI trans      <13.2|ECPLSX|4.2>    -3.805745710659i
 !MRCI trans      <14.2|ECPLSX|4.2>     3.725060811917i
 !MRCI trans      <15.2|ECPLSX|4.2>    21.967155881907i
 !MRCI trans      <16.2|ECPLSX|4.2>    29.169585565140i
 !MRCI trans      <17.2|ECPLSX|4.2>     1.069752317242i
 !MRCI expec       <5.2|ECPLSX|5.2>     2.759537865036i
 !MRCI trans       <6.2|ECPLSX|5.2>    31.260231118983i
 !MRCI trans       <7.2|ECPLSX|5.2>     3.014187725449i
 !MRCI trans       <8.2|ECPLSX|5.2>     0.070417667573i
 !MRCI trans       <9.2|ECPLSX|5.2>     1.576902146281i
 !MRCI trans      <10.2|ECPLSX|5.2>     1.341451456515i
 !MRCI trans      <11.2|ECPLSX|5.2>     4.247398978506i
 !MRCI trans      <12.2|ECPLSX|5.2>    -6.228305949527i
 !MRCI trans      <13.2|ECPLSX|5.2>    -3.005145588801i
 !MRCI trans      <14.2|ECPLSX|5.2>     5.542788081993i
 !MRCI trans      <15.2|ECPLSX|5.2>     5.589111840475i
 !MRCI trans      <16.2|ECPLSX|5.2>     0.759271616528i
 !MRCI trans      <17.2|ECPLSX|5.2>    -3.606000742520i
 !MRCI expec       <6.2|ECPLSX|6.2>   -23.820732615427i
 !MRCI trans       <7.2|ECPLSX|6.2>     3.460500307737i
 !MRCI trans       <8.2|ECPLSX|6.2>    -2.449752599272i
 !MRCI trans       <9.2|ECPLSX|6.2>     2.550094668090i
 !MRCI trans      <10.2|ECPLSX|6.2>    -0.333638727003i
 !MRCI trans      <11.2|ECPLSX|6.2>    -5.971013193710i
 !MRCI trans      <12.2|ECPLSX|6.2>    11.243603807870i
 !MRCI trans      <13.2|ECPLSX|6.2>    -0.468557395829i
 !MRCI trans      <14.2|ECPLSX|6.2>     2.801022203455i
 !MRCI trans      <15.2|ECPLSX|6.2>    -3.380318195172i
 !MRCI trans      <16.2|ECPLSX|6.2>    -3.390355506255i
 !MRCI trans      <17.2|ECPLSX|6.2>    -4.628473509877i
 !MRCI expec       <7.2|ECPLSX|7.2>    13.151877736585i
 !MRCI trans       <8.2|ECPLSX|7.2>   -15.856170977706i
 !MRCI trans       <9.2|ECPLSX|7.2>     1.803984960103i
 !MRCI trans      <10.2|ECPLSX|7.2>    -2.185632399877i
 !MRCI trans      <11.2|ECPLSX|7.2>     3.056884005348i
 !MRCI trans      <12.2|ECPLSX|7.2>    -5.417864068074i
 !MRCI trans      <13.2|ECPLSX|7.2>    -6.261452851783i
 !MRCI trans      <14.2|ECPLSX|7.2>     8.890883919629i
 !MRCI trans      <15.2|ECPLSX|7.2>     7.303845359963i
 !MRCI trans      <16.2|ECPLSX|7.2>    -1.215402598850i
 !MRCI trans      <17.2|ECPLSX|7.2>    -2.822603569772i
 !MRCI expec       <8.2|ECPLSX|8.2>   -15.919981566407i
 !MRCI trans       <9.2|ECPLSX|8.2>     0.134342987326i
 !MRCI trans      <10.2|ECPLSX|8.2>     3.330377734297i
 !MRCI trans      <11.2|ECPLSX|8.2>     1.012680534947i
 !MRCI trans      <12.2|ECPLSX|8.2>     1.744771183082i
 !MRCI trans      <13.2|ECPLSX|8.2>    -2.089909377895i
 !MRCI trans      <14.2|ECPLSX|8.2>     0.547416322116i
 !MRCI trans      <15.2|ECPLSX|8.2>     4.606253365946i
 !MRCI trans      <16.2|ECPLSX|8.2>    -4.016265571153i
 !MRCI trans      <17.2|ECPLSX|8.2>    -2.647309869536i
 !MRCI expec       <9.2|ECPLSX|9.2>   -40.961346637601i
 !MRCI trans      <10.2|ECPLSX|9.2>    58.700397550202i
 !MRCI trans      <11.2|ECPLSX|9.2>   113.737265262985i
 !MRCI trans      <12.2|ECPLSX|9.2>   -27.079837813321i
 !MRCI trans      <13.2|ECPLSX|9.2>    41.448294788325i
 !MRCI trans      <14.2|ECPLSX|9.2>   -34.249120763909i
 !MRCI trans      <15.2|ECPLSX|9.2>    80.239179519569i
 !MRCI trans      <16.2|ECPLSX|9.2>   -68.848344865342i
 !MRCI trans      <17.2|ECPLSX|9.2>    34.850081891610i
 !MRCI expec     <10.2|ECPLSX|10.2>   -20.026532594872i
 !MRCI trans     <11.2|ECPLSX|10.2>    -9.642313342603i
 !MRCI trans     <12.2|ECPLSX|10.2>   -20.325660485137i
 !MRCI trans     <13.2|ECPLSX|10.2>    17.117900249165i
 !MRCI trans     <14.2|ECPLSX|10.2>   -21.202015494097i
 !MRCI trans     <15.2|ECPLSX|10.2>     9.999051189121i
 !MRCI trans     <16.2|ECPLSX|10.2>     0.419265818600i
 !MRCI trans     <17.2|ECPLSX|10.2>    28.070600528964i
 !MRCI expec     <11.2|ECPLSX|11.2>   -34.171017476288i
 !MRCI trans     <12.2|ECPLSX|11.2>   101.569277370243i
 !MRCI trans     <13.2|ECPLSX|11.2>   -24.123976352615i
 !MRCI trans     <14.2|ECPLSX|11.2>     9.325671771910i
 !MRCI trans     <15.2|ECPLSX|11.2>   -84.090660488703i
 !MRCI trans     <16.2|ECPLSX|11.2>   -44.527161763792i
 !MRCI trans     <17.2|ECPLSX|11.2>   -14.501195314350i
 !MRCI expec     <12.2|ECPLSX|12.2>     8.450305575066i
 !MRCI trans     <13.2|ECPLSX|12.2>   -10.999719576687i
 !MRCI trans     <14.2|ECPLSX|12.2>    -2.334859847921i
 !MRCI trans     <15.2|ECPLSX|12.2>   -24.838078142532i
 !MRCI trans     <16.2|ECPLSX|12.2>   -19.849015932784i
 !MRCI trans     <17.2|ECPLSX|12.2>    -0.060507594001i
 !MRCI expec     <13.2|ECPLSX|13.2>    24.681354873204i
 !MRCI trans     <14.2|ECPLSX|13.2>     0.763369357176i
 !MRCI trans     <15.2|ECPLSX|13.2>   -13.882886790836i
 !MRCI trans     <16.2|ECPLSX|13.2>   -51.288805151501i
 !MRCI trans     <17.2|ECPLSX|13.2>   -17.114865636448i
 !MRCI expec     <14.2|ECPLSX|14.2>     3.731353568278i
 !MRCI trans     <15.2|ECPLSX|14.2>     6.629480761511i
 !MRCI trans     <16.2|ECPLSX|14.2>    -6.126388999702i
 !MRCI trans     <17.2|ECPLSX|14.2>     0.884403571637i
 !MRCI expec     <15.2|ECPLSX|15.2>   -27.528961881430i
 !MRCI trans     <16.2|ECPLSX|15.2>    -4.835473828892i
 !MRCI trans     <17.2|ECPLSX|15.2>     1.056105698277i
 !MRCI expec     <16.2|ECPLSX|16.2>     0.176794788573i
 !MRCI trans     <17.2|ECPLSX|16.2>   -10.675463595535i
 !MRCI expec     <17.2|ECPLSX|17.2>     0.505632831600i

 !MRCI overlap           <1.2||1.2>     1.000000000001

 !MRCI overlap           <2.2||2.2>     1.000000000001

 !MRCI overlap           <3.2||3.2>     1.000000000001

 !MRCI overlap           <4.2||4.2>     1.000000000000

 !MRCI overlap           <5.2||5.2>     1.000000000002

 !MRCI overlap           <6.2||6.2>     1.000000000001

 !MRCI overlap           <7.2||7.2>     1.000000000000

 !MRCI overlap           <8.2||8.2>     1.000000000001

 !MRCI overlap           <9.2||9.2>     1.000000000001

 !MRCI overlap         <10.2||10.2>     1.000000000001

 !MRCI overlap         <11.2||11.2>     1.000000000001

 !MRCI overlap         <12.2||12.2>     1.000000000002

 !MRCI overlap         <13.2||13.2>     1.000000000001

 !MRCI overlap         <14.2||14.2>     1.000000000001

 !MRCI overlap         <15.2||15.2>     1.000000000002

 !MRCI overlap         <16.2||16.2>     1.000000000001

 !MRCI overlap         <17.2||17.2>     1.000000000001

 Bra-wavefunction restored from record   5302.2
 Ket-wavefunction restored from record   5302.2


 Symmetry of spin-orbit operator:         1
 Symmetry of bra wavefunction:            2   S= 1.5  MS= 0.5
 Symmetry of ket wavefunction:            2   S= 1.5  MS= 1.5


 !MRCI expec       <1.2|ECPLSY|1.2>     0.000000000000

 Bra-wavefunction restored from record   5302.2
 Ket-wavefunction restored from record   5102.2


 Symmetry of spin-orbit operator:         1
 Symmetry of bra wavefunction:            2   S= 1.5  MS= 1.5
 Symmetry of ket wavefunction:            2   S= 0.5  MS= 0.5

 !MRCI LS_I-I(ECP) <1.2|ECPLSY|1.2>     0.000000000046
 !MRCI LS_I-I(ECP) <1.2|ECPLSY|2.2>    -0.000000015179
 !MRCI LS_I-I(ECP) <1.2|ECPLSY|3.2>    -0.000000000218
 !MRCI LS_I-I(ECP) <1.2|ECPLSY|4.2>     0.000000000153
 !MRCI LS_I-I(ECP) <1.2|ECPLSY|5.2>    -0.000000000101
 !MRCI LS_I-I(ECP) <1.2|ECPLSY|6.2>    -0.009617958526
 !MRCI LS_I-I(ECP) <1.2|ECPLSY|7.2>    -0.001167562006
 !MRCI LS_I-I(ECP) <1.2|ECPLSY|8.2>    -0.000149904896
 !MRCI LS_I-I(ECP) <1.2|ECPLSY|9.2>     0.000000000080
 !MRCI LS_I-I(ECP <1.2|ECPLSY|10.2>    -0.000000000209
 !MRCI LS_I-I(ECP <1.2|ECPLSY|11.2>    -0.000000000249
 !MRCI LS_I-I(ECP <1.2|ECPLSY|12.2>     0.000000035288
 !MRCI LS_I-I(ECP <1.2|ECPLSY|13.2>    -0.000000000246
 !MRCI LS_I-I(ECP <1.2|ECPLSY|14.2>     0.000000000003
 !MRCI LS_I-I(ECP <1.2|ECPLSY|15.2>    -0.002572206129
 !MRCI LS_I-I(ECP <1.2|ECPLSY|16.2>     0.000005519061
 !MRCI LS_I-I(ECP <1.2|ECPLSY|17.2>    -0.000003844015

 !MRCI expec       <1.2|ECPLSY|1.2>     0.000000000100
 !MRCI trans       <1.2|ECPLSY|2.2>    -0.000000003692
 !MRCI trans       <1.2|ECPLSY|3.2>    -0.000000000118
 !MRCI trans       <1.2|ECPLSY|4.2>     0.000000000151
 !MRCI trans       <1.2|ECPLSY|5.2>    -0.000000000131
 !MRCI trans       <1.2|ECPLSY|6.2>    -0.009651258551
 !MRCI trans       <1.2|ECPLSY|7.2>    -0.001171604545
 !MRCI trans       <1.2|ECPLSY|8.2>    -0.000150423893
 !MRCI trans       <1.2|ECPLSY|9.2>     0.000000000074
 !MRCI trans      <1.2|ECPLSY|10.2>    -0.000000000225
 !MRCI trans      <1.2|ECPLSY|11.2>    -0.000000000248
 !MRCI trans      <1.2|ECPLSY|12.2>     0.000000034967
 !MRCI trans      <1.2|ECPLSY|13.2>    -0.000000000241
 !MRCI trans      <1.2|ECPLSY|14.2>     0.000000000010
 !MRCI trans      <1.2|ECPLSY|15.2>    -0.002534089412
 !MRCI trans      <1.2|ECPLSY|16.2>     0.000005437286
 !MRCI trans      <1.2|ECPLSY|17.2>    -0.000003787080

 Bra-wavefunction restored from record   5102.2
 Ket-wavefunction restored from record   5102.2


 Symmetry of spin-orbit operator:         1
 Symmetry of bra wavefunction:            2   S= 0.5  MS=-0.5
 Symmetry of ket wavefunction:            2   S= 0.5  MS= 0.5

 !MRCI LS_I-I(ECP) <2.2|ECPLSY|1.2>     0.000036676201
 !MRCI LS_I-I(ECP) <3.2|ECPLSY|1.2>     0.000000259816
 !MRCI LS_I-I(ECP) <4.2|ECPLSY|1.2>     0.000000041987
 !MRCI LS_I-I(ECP) <5.2|ECPLSY|1.2>     0.000000193149
 !MRCI LS_I-I(ECP) <6.2|ECPLSY|1.2>    -0.003245088239
 !MRCI LS_I-I(ECP) <7.2|ECPLSY|1.2>    -0.000325117525
 !MRCI LS_I-I(ECP) <8.2|ECPLSY|1.2>    -0.000069302923
 !MRCI LS_I-I(ECP) <9.2|ECPLSY|1.2>    -0.000000000054
 !MRCI LS_I-I(ECP <10.2|ECPLSY|1.2>     0.000007141102
 !MRCI LS_I-I(ECP <11.2|ECPLSY|1.2>     0.000002690660
 !MRCI LS_I-I(ECP <12.2|ECPLSY|1.2>     0.000874602147
 !MRCI LS_I-I(ECP <13.2|ECPLSY|1.2>     0.000004960591
 !MRCI LS_I-I(ECP <14.2|ECPLSY|1.2>     0.000000525109
 !MRCI LS_I-I(ECP <15.2|ECPLSY|1.2>    -0.000167529766
 !MRCI LS_I-I(ECP <16.2|ECPLSY|1.2>    -0.000003174796
 !MRCI LS_I-I(ECP <17.2|ECPLSY|1.2>    -0.000001121934
 !MRCI LS_I-I(ECP) <1.2|ECPLSY|2.2>    -0.000036676201
 !MRCI LS_I-I(ECP) <3.2|ECPLSY|2.2>    -0.000000112656
 !MRCI LS_I-I(ECP) <4.2|ECPLSY|2.2>     0.000016627266
 !MRCI LS_I-I(ECP) <5.2|ECPLSY|2.2>     0.000000284390
 !MRCI LS_I-I(ECP) <6.2|ECPLSY|2.2>     0.000002756938
 !MRCI LS_I-I(ECP) <7.2|ECPLSY|2.2>     0.000058135374
 !MRCI LS_I-I(ECP) <8.2|ECPLSY|2.2>     0.000000083427
 !MRCI LS_I-I(ECP) <9.2|ECPLSY|2.2>    -0.000000005479
 !MRCI LS_I-I(ECP <10.2|ECPLSY|2.2>    -0.000010721268
 !MRCI LS_I-I(ECP <11.2|ECPLSY|2.2>     0.000772431874
 !MRCI LS_I-I(ECP <12.2|ECPLSY|2.2>    -0.000005056668
 !MRCI LS_I-I(ECP <13.2|ECPLSY|2.2>     0.000570211245
 !MRCI LS_I-I(ECP <14.2|ECPLSY|2.2>     0.000005968822
 !MRCI LS_I-I(ECP <15.2|ECPLSY|2.2>     0.000000493830
 !MRCI LS_I-I(ECP <16.2|ECPLSY|2.2>    -0.000002947343
 !MRCI LS_I-I(ECP <17.2|ECPLSY|2.2>     0.000000077999
 !MRCI LS_I-I(ECP) <1.2|ECPLSY|3.2>    -0.000000259816
 !MRCI LS_I-I(ECP) <2.2|ECPLSY|3.2>     0.000000112656
 !MRCI LS_I-I(ECP) <4.2|ECPLSY|3.2>     0.000000385976
 !MRCI LS_I-I(ECP) <5.2|ECPLSY|3.2>    -0.000020138204
 !MRCI LS_I-I(ECP) <6.2|ECPLSY|3.2>     0.000680304087
 !MRCI LS_I-I(ECP) <7.2|ECPLSY|3.2>    -0.006807578946
 !MRCI LS_I-I(ECP) <8.2|ECPLSY|3.2>     0.000245248039
 !MRCI LS_I-I(ECP) <9.2|ECPLSY|3.2>    -0.000000000024
 !MRCI LS_I-I(ECP <10.2|ECPLSY|3.2>    -0.000480046811
 !MRCI LS_I-I(ECP <11.2|ECPLSY|3.2>    -0.000002497057
 !MRCI LS_I-I(ECP <12.2|ECPLSY|3.2>     0.000004092228
 !MRCI LS_I-I(ECP <13.2|ECPLSY|3.2>     0.000004565193
 !MRCI LS_I-I(ECP <14.2|ECPLSY|3.2>     0.000001856230
 !MRCI LS_I-I(ECP <15.2|ECPLSY|3.2>    -0.000006504555
 !MRCI LS_I-I(ECP <16.2|ECPLSY|3.2>     0.000351592484
 !MRCI LS_I-I(ECP <17.2|ECPLSY|3.2>     0.000003038129
 !MRCI LS_I-I(ECP) <1.2|ECPLSY|4.2>    -0.000000041987
 !MRCI LS_I-I(ECP) <2.2|ECPLSY|4.2>    -0.000016627266
 !MRCI LS_I-I(ECP) <3.2|ECPLSY|4.2>    -0.000000385976
 !MRCI LS_I-I(ECP) <5.2|ECPLSY|4.2>     0.000000308301
 !MRCI LS_I-I(ECP) <6.2|ECPLSY|4.2>    -0.007156086543
 !MRCI LS_I-I(ECP) <7.2|ECPLSY|4.2>    -0.000767973931
 !MRCI LS_I-I(ECP) <8.2|ECPLSY|4.2>    -0.000198696028
 !MRCI LS_I-I(ECP) <9.2|ECPLSY|4.2>     0.000000000019
 !MRCI LS_I-I(ECP <10.2|ECPLSY|4.2>     0.000006141835
 !MRCI LS_I-I(ECP <11.2|ECPLSY|4.2>    -0.000000097780
 !MRCI LS_I-I(ECP <12.2|ECPLSY|4.2>    -0.000396258740
 !MRCI LS_I-I(ECP <13.2|ECPLSY|4.2>    -0.000001530302
 !MRCI LS_I-I(ECP <14.2|ECPLSY|4.2>    -0.000006653766
 !MRCI LS_I-I(ECP <15.2|ECPLSY|4.2>    -0.000369792634
 !MRCI LS_I-I(ECP <16.2|ECPLSY|4.2>    -0.000004464813
 !MRCI LS_I-I(ECP <17.2|ECPLSY|4.2>    -0.000004896171
 !MRCI LS_I-I(ECP) <1.2|ECPLSY|5.2>    -0.000000193149
 !MRCI LS_I-I(ECP) <2.2|ECPLSY|5.2>    -0.000000284390
 !MRCI LS_I-I(ECP) <3.2|ECPLSY|5.2>     0.000020138204
 !MRCI LS_I-I(ECP) <4.2|ECPLSY|5.2>    -0.000000308301
 !MRCI LS_I-I(ECP) <6.2|ECPLSY|5.2>    -0.000230131521
 !MRCI LS_I-I(ECP) <7.2|ECPLSY|5.2>     0.000222790464
 !MRCI LS_I-I(ECP) <8.2|ECPLSY|5.2>     0.006838435840
 !MRCI LS_I-I(ECP) <9.2|ECPLSY|5.2>     0.000000000059
 !MRCI LS_I-I(ECP <10.2|ECPLSY|5.2>     0.000001930055
 !MRCI LS_I-I(ECP <11.2|ECPLSY|5.2>    -0.000002013629
 !MRCI LS_I-I(ECP <12.2|ECPLSY|5.2>    -0.000003664287
 !MRCI LS_I-I(ECP <13.2|ECPLSY|5.2>    -0.000002626916
 !MRCI LS_I-I(ECP <14.2|ECPLSY|5.2>     0.000480041715
 !MRCI LS_I-I(ECP <15.2|ECPLSY|5.2>    -0.000005452662
 !MRCI LS_I-I(ECP <16.2|ECPLSY|5.2>    -0.000003110064
 !MRCI LS_I-I(ECP <17.2|ECPLSY|5.2>     0.000351613987
 !MRCI LS_I-I(ECP) <1.2|ECPLSY|6.2>     0.003245088239
 !MRCI LS_I-I(ECP) <2.2|ECPLSY|6.2>    -0.000002756938
 !MRCI LS_I-I(ECP) <3.2|ECPLSY|6.2>    -0.000680304087
 !MRCI LS_I-I(ECP) <4.2|ECPLSY|6.2>     0.007156086543
 !MRCI LS_I-I(ECP) <5.2|ECPLSY|6.2>     0.000230131521
 !MRCI LS_I-I(ECP) <7.2|ECPLSY|6.2>    -0.000000154257
 !MRCI LS_I-I(ECP) <8.2|ECPLSY|6.2>     0.000001202260
 !MRCI LS_I-I(ECP) <9.2|ECPLSY|6.2>     0.000517499298
 !MRCI LS_I-I(ECP <10.2|ECPLSY|6.2>    -0.000001528506
 !MRCI LS_I-I(ECP <11.2|ECPLSY|6.2>    -0.000149779605
 !MRCI LS_I-I(ECP <12.2|ECPLSY|6.2>    -0.000000750234
 !MRCI LS_I-I(ECP <13.2|ECPLSY|6.2>     0.000202560546
 !MRCI LS_I-I(ECP <14.2|ECPLSY|6.2>     0.000026830022
 !MRCI LS_I-I(ECP <15.2|ECPLSY|6.2>    -0.000000070638
 !MRCI LS_I-I(ECP <16.2|ECPLSY|6.2>     0.000009466337
 !MRCI LS_I-I(ECP <17.2|ECPLSY|6.2>     0.000060883209
 !MRCI LS_I-I(ECP) <1.2|ECPLSY|7.2>     0.000325117525
 !MRCI LS_I-I(ECP) <2.2|ECPLSY|7.2>    -0.000058135374
 !MRCI LS_I-I(ECP) <3.2|ECPLSY|7.2>     0.006807578946
 !MRCI LS_I-I(ECP) <4.2|ECPLSY|7.2>     0.000767973931
 !MRCI LS_I-I(ECP) <5.2|ECPLSY|7.2>    -0.000222790464
 !MRCI LS_I-I(ECP) <6.2|ECPLSY|7.2>     0.000000154257
 !MRCI LS_I-I(ECP) <8.2|ECPLSY|7.2>    -0.000009900239
 !MRCI LS_I-I(ECP) <9.2|ECPLSY|7.2>     0.000062821243
 !MRCI LS_I-I(ECP <10.2|ECPLSY|7.2>     0.000006973495
 !MRCI LS_I-I(ECP <11.2|ECPLSY|7.2>    -0.000017206710
 !MRCI LS_I-I(ECP <12.2|ECPLSY|7.2>     0.000000308664
 !MRCI LS_I-I(ECP <13.2|ECPLSY|7.2>     0.000025724097
 !MRCI LS_I-I(ECP <14.2|ECPLSY|7.2>    -0.000218039855
 !MRCI LS_I-I(ECP <15.2|ECPLSY|7.2>     0.000000724507
 !MRCI LS_I-I(ECP <16.2|ECPLSY|7.2>    -0.000012895732
 !MRCI LS_I-I(ECP <17.2|ECPLSY|7.2>    -0.000503322740
 !MRCI LS_I-I(ECP) <1.2|ECPLSY|8.2>     0.000069302923
 !MRCI LS_I-I(ECP) <2.2|ECPLSY|8.2>    -0.000000083427
 !MRCI LS_I-I(ECP) <3.2|ECPLSY|8.2>    -0.000245248039
 !MRCI LS_I-I(ECP) <4.2|ECPLSY|8.2>     0.000198696028
 !MRCI LS_I-I(ECP) <5.2|ECPLSY|8.2>    -0.006838435840
 !MRCI LS_I-I(ECP) <6.2|ECPLSY|8.2>    -0.000001202260
 !MRCI LS_I-I(ECP) <7.2|ECPLSY|8.2>     0.000009900239
 !MRCI LS_I-I(ECP) <9.2|ECPLSY|8.2>     0.000008065766
 !MRCI LS_I-I(ECP <10.2|ECPLSY|8.2>     0.000219685452
 !MRCI LS_I-I(ECP <11.2|ECPLSY|8.2>     0.000001752549
 !MRCI LS_I-I(ECP <12.2|ECPLSY|8.2>    -0.000000617536
 !MRCI LS_I-I(ECP <13.2|ECPLSY|8.2>     0.000003227735
 !MRCI LS_I-I(ECP <14.2|ECPLSY|8.2>     0.000007128722
 !MRCI LS_I-I(ECP <15.2|ECPLSY|8.2>    -0.000001108558
 !MRCI LS_I-I(ECP <16.2|ECPLSY|8.2>    -0.000506921375
 !MRCI LS_I-I(ECP <17.2|ECPLSY|8.2>     0.000013939710
 !MRCI LS_I-I(ECP) <1.2|ECPLSY|9.2>     0.000000000054
 !MRCI LS_I-I(ECP) <2.2|ECPLSY|9.2>     0.000000005479
 !MRCI LS_I-I(ECP) <3.2|ECPLSY|9.2>     0.000000000024
 !MRCI LS_I-I(ECP) <4.2|ECPLSY|9.2>    -0.000000000019
 !MRCI LS_I-I(ECP) <5.2|ECPLSY|9.2>    -0.000000000059
 !MRCI LS_I-I(ECP) <6.2|ECPLSY|9.2>    -0.000517499298
 !MRCI LS_I-I(ECP) <7.2|ECPLSY|9.2>    -0.000062821243
 !MRCI LS_I-I(ECP) <8.2|ECPLSY|9.2>    -0.000008065766
 !MRCI LS_I-I(ECP <10.2|ECPLSY|9.2>    -0.000000000173
 !MRCI LS_I-I(ECP <11.2|ECPLSY|9.2>    -0.000000000746
 !MRCI LS_I-I(ECP <12.2|ECPLSY|9.2>     0.000000090692
 !MRCI LS_I-I(ECP <13.2|ECPLSY|9.2>    -0.000000000538
 !MRCI LS_I-I(ECP <14.2|ECPLSY|9.2>    -0.000000000101
 !MRCI LS_I-I(ECP <15.2|ECPLSY|9.2>    -0.004834297908
 !MRCI LS_I-I(ECP <16.2|ECPLSY|9.2>     0.000010372879
 !MRCI LS_I-I(ECP <17.2|ECPLSY|9.2>    -0.000007224550
 !MRCI LS_I-I(ECP <1.2|ECPLSY|10.2>    -0.000007141102
 !MRCI LS_I-I(ECP <2.2|ECPLSY|10.2>     0.000010721268
 !MRCI LS_I-I(ECP <3.2|ECPLSY|10.2>     0.000480046811
 !MRCI LS_I-I(ECP <4.2|ECPLSY|10.2>    -0.000006141835
 !MRCI LS_I-I(ECP <5.2|ECPLSY|10.2>    -0.000001930055
 !MRCI LS_I-I(ECP <6.2|ECPLSY|10.2>     0.000001528506
 !MRCI LS_I-I(ECP <7.2|ECPLSY|10.2>    -0.000006973495
 !MRCI LS_I-I(ECP <8.2|ECPLSY|10.2>    -0.000219685452
 !MRCI LS_I-I(ECP <9.2|ECPLSY|10.2>     0.000000000173
 !MRCI LS_I-I(EC <11.2|ECPLSY|10.2>     0.000001375549
 !MRCI LS_I-I(EC <12.2|ECPLSY|10.2>     0.000073758827
 !MRCI LS_I-I(EC <13.2|ECPLSY|10.2>    -0.000004607477
 !MRCI LS_I-I(EC <14.2|ECPLSY|10.2>     0.002561995895
 !MRCI LS_I-I(EC <15.2|ECPLSY|10.2>    -0.000016001907
 !MRCI LS_I-I(EC <16.2|ECPLSY|10.2>     0.000007168244
 !MRCI LS_I-I(EC <17.2|ECPLSY|10.2>    -0.001470967122
 !MRCI LS_I-I(ECP <1.2|ECPLSY|11.2>    -0.000002690660
 !MRCI LS_I-I(ECP <2.2|ECPLSY|11.2>    -0.000772431874
 !MRCI LS_I-I(ECP <3.2|ECPLSY|11.2>     0.000002497057
 !MRCI LS_I-I(ECP <4.2|ECPLSY|11.2>     0.000000097780
 !MRCI LS_I-I(ECP <5.2|ECPLSY|11.2>     0.000002013629
 !MRCI LS_I-I(ECP <6.2|ECPLSY|11.2>     0.000149779605
 !MRCI LS_I-I(ECP <7.2|ECPLSY|11.2>     0.000017206710
 !MRCI LS_I-I(ECP <8.2|ECPLSY|11.2>    -0.000001752549
 !MRCI LS_I-I(ECP <9.2|ECPLSY|11.2>     0.000000000746
 !MRCI LS_I-I(EC <10.2|ECPLSY|11.2>    -0.000001375549
 !MRCI LS_I-I(EC <12.2|ECPLSY|11.2>    -0.004122183692
 !MRCI LS_I-I(EC <13.2|ECPLSY|11.2>    -0.000014548402
 !MRCI LS_I-I(EC <14.2|ECPLSY|11.2>     0.000040072949
 !MRCI LS_I-I(EC <15.2|ECPLSY|11.2>     0.001008765182
 !MRCI LS_I-I(EC <16.2|ECPLSY|11.2>     0.000003565763
 !MRCI LS_I-I(EC <17.2|ECPLSY|11.2>    -0.000025997308
 !MRCI LS_I-I(ECP <1.2|ECPLSY|12.2>    -0.000874602147
 !MRCI LS_I-I(ECP <2.2|ECPLSY|12.2>     0.000005056668
 !MRCI LS_I-I(ECP <3.2|ECPLSY|12.2>    -0.000004092228
 !MRCI LS_I-I(ECP <4.2|ECPLSY|12.2>     0.000396258740
 !MRCI LS_I-I(ECP <5.2|ECPLSY|12.2>     0.000003664287
 !MRCI LS_I-I(ECP <6.2|ECPLSY|12.2>     0.000000750234
 !MRCI LS_I-I(ECP <7.2|ECPLSY|12.2>    -0.000000308664
 !MRCI LS_I-I(ECP <8.2|ECPLSY|12.2>     0.000000617536
 !MRCI LS_I-I(ECP <9.2|ECPLSY|12.2>    -0.000000090692
 !MRCI LS_I-I(EC <10.2|ECPLSY|12.2>    -0.000073758827
 !MRCI LS_I-I(EC <11.2|ECPLSY|12.2>     0.004122183692
 !MRCI LS_I-I(EC <13.2|ECPLSY|12.2>     0.003043326321
 !MRCI LS_I-I(EC <14.2|ECPLSY|12.2>     0.000024319028
 !MRCI LS_I-I(EC <15.2|ECPLSY|12.2>     0.000004798602
 !MRCI LS_I-I(EC <16.2|ECPLSY|12.2>     0.000002757388
 !MRCI LS_I-I(EC <17.2|ECPLSY|12.2>     0.000003991685
 !MRCI LS_I-I(ECP <1.2|ECPLSY|13.2>    -0.000004960591
 !MRCI LS_I-I(ECP <2.2|ECPLSY|13.2>    -0.000570211245
 !MRCI LS_I-I(ECP <3.2|ECPLSY|13.2>    -0.000004565193
 !MRCI LS_I-I(ECP <4.2|ECPLSY|13.2>     0.000001530302
 !MRCI LS_I-I(ECP <5.2|ECPLSY|13.2>     0.000002626916
 !MRCI LS_I-I(ECP <6.2|ECPLSY|13.2>    -0.000202560546
 !MRCI LS_I-I(ECP <7.2|ECPLSY|13.2>    -0.000025724097
 !MRCI LS_I-I(ECP <8.2|ECPLSY|13.2>    -0.000003227735
 !MRCI LS_I-I(ECP <9.2|ECPLSY|13.2>     0.000000000538
 !MRCI LS_I-I(EC <10.2|ECPLSY|13.2>     0.000004607477
 !MRCI LS_I-I(EC <11.2|ECPLSY|13.2>     0.000014548402
 !MRCI LS_I-I(EC <12.2|ECPLSY|13.2>    -0.003043326321
 !MRCI LS_I-I(EC <14.2|ECPLSY|13.2>    -0.000004485078
 !MRCI LS_I-I(EC <15.2|ECPLSY|13.2>    -0.001366831291
 !MRCI LS_I-I(EC <16.2|ECPLSY|13.2>     0.000010454435
 !MRCI LS_I-I(EC <17.2|ECPLSY|13.2>    -0.000002707314
 !MRCI LS_I-I(ECP <1.2|ECPLSY|14.2>    -0.000000525109
 !MRCI LS_I-I(ECP <2.2|ECPLSY|14.2>    -0.000005968822
 !MRCI LS_I-I(ECP <3.2|ECPLSY|14.2>    -0.000001856230
 !MRCI LS_I-I(ECP <4.2|ECPLSY|14.2>     0.000006653766
 !MRCI LS_I-I(ECP <5.2|ECPLSY|14.2>    -0.000480041715
 !MRCI LS_I-I(ECP <6.2|ECPLSY|14.2>    -0.000026830022
 !MRCI LS_I-I(ECP <7.2|ECPLSY|14.2>     0.000218039855
 !MRCI LS_I-I(ECP <8.2|ECPLSY|14.2>    -0.000007128722
 !MRCI LS_I-I(ECP <9.2|ECPLSY|14.2>     0.000000000101
 !MRCI LS_I-I(EC <10.2|ECPLSY|14.2>    -0.002561995895
 !MRCI LS_I-I(EC <11.2|ECPLSY|14.2>    -0.000040072949
 !MRCI LS_I-I(EC <12.2|ECPLSY|14.2>    -0.000024319028
 !MRCI LS_I-I(EC <13.2|ECPLSY|14.2>     0.000004485078
 !MRCI LS_I-I(EC <15.2|ECPLSY|14.2>    -0.000006284745
 !MRCI LS_I-I(EC <16.2|ECPLSY|14.2>    -0.001471303279
 !MRCI LS_I-I(EC <17.2|ECPLSY|14.2>    -0.000007242228
 !MRCI LS_I-I(ECP <1.2|ECPLSY|15.2>     0.000167529766
 !MRCI LS_I-I(ECP <2.2|ECPLSY|15.2>    -0.000000493830
 !MRCI LS_I-I(ECP <3.2|ECPLSY|15.2>     0.000006504555
 !MRCI LS_I-I(ECP <4.2|ECPLSY|15.2>     0.000369792634
 !MRCI LS_I-I(ECP <5.2|ECPLSY|15.2>     0.000005452662
 !MRCI LS_I-I(ECP <6.2|ECPLSY|15.2>     0.000000070638
 !MRCI LS_I-I(ECP <7.2|ECPLSY|15.2>    -0.000000724507
 !MRCI LS_I-I(ECP <8.2|ECPLSY|15.2>     0.000001108558
 !MRCI LS_I-I(ECP <9.2|ECPLSY|15.2>     0.004834297908
 !MRCI LS_I-I(EC <10.2|ECPLSY|15.2>     0.000016001907
 !MRCI LS_I-I(EC <11.2|ECPLSY|15.2>    -0.001008765182
 !MRCI LS_I-I(EC <12.2|ECPLSY|15.2>    -0.000004798602
 !MRCI LS_I-I(EC <13.2|ECPLSY|15.2>     0.001366831291
 !MRCI LS_I-I(EC <14.2|ECPLSY|15.2>     0.000006284745
 !MRCI LS_I-I(EC <16.2|ECPLSY|15.2>    -0.000002818225
 !MRCI LS_I-I(EC <17.2|ECPLSY|15.2>    -0.000004046437
 !MRCI LS_I-I(ECP <1.2|ECPLSY|16.2>     0.000003174796
 !MRCI LS_I-I(ECP <2.2|ECPLSY|16.2>     0.000002947343
 !MRCI LS_I-I(ECP <3.2|ECPLSY|16.2>    -0.000351592484
 !MRCI LS_I-I(ECP <4.2|ECPLSY|16.2>     0.000004464813
 !MRCI LS_I-I(ECP <5.2|ECPLSY|16.2>     0.000003110064
 !MRCI LS_I-I(ECP <6.2|ECPLSY|16.2>    -0.000009466337
 !MRCI LS_I-I(ECP <7.2|ECPLSY|16.2>     0.000012895732
 !MRCI LS_I-I(ECP <8.2|ECPLSY|16.2>     0.000506921375
 !MRCI LS_I-I(ECP <9.2|ECPLSY|16.2>    -0.000010372879
 !MRCI LS_I-I(EC <10.2|ECPLSY|16.2>    -0.000007168244
 !MRCI LS_I-I(EC <11.2|ECPLSY|16.2>    -0.000003565763
 !MRCI LS_I-I(EC <12.2|ECPLSY|16.2>    -0.000002757388
 !MRCI LS_I-I(EC <13.2|ECPLSY|16.2>    -0.000010454435
 !MRCI LS_I-I(EC <14.2|ECPLSY|16.2>     0.001471303279
 !MRCI LS_I-I(EC <15.2|ECPLSY|16.2>     0.000002818225
 !MRCI LS_I-I(EC <17.2|ECPLSY|16.2>    -0.001886157622
 !MRCI LS_I-I(ECP <1.2|ECPLSY|17.2>     0.000001121934
 !MRCI LS_I-I(ECP <2.2|ECPLSY|17.2>    -0.000000077999
 !MRCI LS_I-I(ECP <3.2|ECPLSY|17.2>    -0.000003038129
 !MRCI LS_I-I(ECP <4.2|ECPLSY|17.2>     0.000004896171
 !MRCI LS_I-I(ECP <5.2|ECPLSY|17.2>    -0.000351613987
 !MRCI LS_I-I(ECP <6.2|ECPLSY|17.2>    -0.000060883209
 !MRCI LS_I-I(ECP <7.2|ECPLSY|17.2>     0.000503322740
 !MRCI LS_I-I(ECP <8.2|ECPLSY|17.2>    -0.000013939710
 !MRCI LS_I-I(ECP <9.2|ECPLSY|17.2>     0.000007224550
 !MRCI LS_I-I(EC <10.2|ECPLSY|17.2>     0.001470967122
 !MRCI LS_I-I(EC <11.2|ECPLSY|17.2>     0.000025997308
 !MRCI LS_I-I(EC <12.2|ECPLSY|17.2>    -0.000003991685
 !MRCI LS_I-I(EC <13.2|ECPLSY|17.2>     0.000002707314
 !MRCI LS_I-I(EC <14.2|ECPLSY|17.2>     0.000007242228
 !MRCI LS_I-I(EC <15.2|ECPLSY|17.2>     0.000004046437
 !MRCI LS_I-I(EC <16.2|ECPLSY|17.2>     0.001886157622

 !MRCI expec       <1.2|ECPLSY|1.2>    21.988526105421
 !MRCI trans       <2.2|ECPLSY|1.2>     7.916097826375
 !MRCI trans       <3.2|ECPLSY|1.2>    -7.794880207897
 !MRCI trans       <4.2|ECPLSY|1.2>   -18.669646658494
 !MRCI trans       <5.2|ECPLSY|1.2>   -17.244085090819
 !MRCI trans       <6.2|ECPLSY|1.2>     2.492752222040
 !MRCI trans       <7.2|ECPLSY|1.2>    21.534473959504
 !MRCI trans       <8.2|ECPLSY|1.2>   -19.634127426980
 !MRCI trans       <9.2|ECPLSY|1.2>    -0.416652409192
 !MRCI trans      <10.2|ECPLSY|1.2>     7.088473182675
 !MRCI trans      <11.2|ECPLSY|1.2>     7.441882185228
 !MRCI trans      <12.2|ECPLSY|1.2>    -0.575897320552
 !MRCI trans      <13.2|ECPLSY|1.2>     4.559841466120
 !MRCI trans      <14.2|ECPLSY|1.2>    -1.150225420652
 !MRCI trans      <15.2|ECPLSY|1.2>     0.398839510265
 !MRCI trans      <16.2|ECPLSY|1.2>    -7.136500661964
 !MRCI trans      <17.2|ECPLSY|1.2>     3.039078901012
 !MRCI expec       <2.2|ECPLSY|2.2>   -10.260534406549
 !MRCI trans       <3.2|ECPLSY|2.2>    -6.712880907043
 !MRCI trans       <4.2|ECPLSY|2.2>    11.762606660316
 !MRCI trans       <5.2|ECPLSY|2.2>     3.945110066420
 !MRCI trans       <6.2|ECPLSY|2.2>     0.768561388741
 !MRCI trans       <7.2|ECPLSY|2.2>    14.870688295216
 !MRCI trans       <8.2|ECPLSY|2.2>    25.382331590386
 !MRCI trans       <9.2|ECPLSY|2.2>     8.799090738920
 !MRCI trans      <10.2|ECPLSY|2.2>    -2.904072085674
 !MRCI trans      <11.2|ECPLSY|2.2>    -3.382931583156
 !MRCI trans      <12.2|ECPLSY|2.2>     1.600288649438
 !MRCI trans      <13.2|ECPLSY|2.2>     2.199191274610
 !MRCI trans      <14.2|ECPLSY|2.2>     3.989445534389
 !MRCI trans      <15.2|ECPLSY|2.2>    -2.299132223572
 !MRCI trans      <16.2|ECPLSY|2.2>     1.367864396502
 !MRCI trans      <17.2|ECPLSY|2.2>     1.820566651001
 !MRCI expec       <3.2|ECPLSY|3.2>     5.148892962280
 !MRCI trans       <4.2|ECPLSY|3.2>    -1.033196060982
 !MRCI trans       <5.2|ECPLSY|3.2>    -6.285693128258
 !MRCI trans       <6.2|ECPLSY|3.2>     2.106758662421
 !MRCI trans       <7.2|ECPLSY|3.2>     9.761618545001
 !MRCI trans       <8.2|ECPLSY|3.2>    -3.184460415070
 !MRCI trans       <9.2|ECPLSY|3.2>     2.879567066303
 !MRCI trans      <10.2|ECPLSY|3.2>    11.477568973198
 !MRCI trans      <11.2|ECPLSY|3.2>     1.293452703896
 !MRCI trans      <12.2|ECPLSY|3.2>    -0.298141350008
 !MRCI trans      <13.2|ECPLSY|3.2>     0.193782415593
 !MRCI trans      <14.2|ECPLSY|3.2>    -0.492713672376
 !MRCI trans      <15.2|ECPLSY|3.2>     2.155939951514
 !MRCI trans      <16.2|ECPLSY|3.2>    -2.764968110660
 !MRCI trans      <17.2|ECPLSY|3.2>    -1.624324539819
 !MRCI expec       <4.2|ECPLSY|4.2>     3.936654963256
 !MRCI trans       <5.2|ECPLSY|4.2>     4.383703422367
 !MRCI trans       <6.2|ECPLSY|4.2>    32.556404695311
 !MRCI trans       <7.2|ECPLSY|4.2>    -3.712170879173
 !MRCI trans       <8.2|ECPLSY|4.2>    21.992217163023
 !MRCI trans       <9.2|ECPLSY|4.2>    -1.353214962253
 !MRCI trans      <10.2|ECPLSY|4.2>    -0.094825856278
 !MRCI trans      <11.2|ECPLSY|4.2>    -1.694310944096
 !MRCI trans      <12.2|ECPLSY|4.2>    -3.939230518894
 !MRCI trans      <13.2|ECPLSY|4.2>    -0.839186773662
 !MRCI trans      <14.2|ECPLSY|4.2>     1.044976964183
 !MRCI trans      <15.2|ECPLSY|4.2>     6.819955069239
 !MRCI trans      <16.2|ECPLSY|4.2>     3.685850822871
 !MRCI trans      <17.2|ECPLSY|4.2>     1.207404353017
 !MRCI expec       <5.2|ECPLSY|5.2>     0.093490796314
 !MRCI trans       <6.2|ECPLSY|5.2>    -4.634380479108
 !MRCI trans       <7.2|ECPLSY|5.2>   -14.963568328855
 !MRCI trans       <8.2|ECPLSY|5.2>     8.674825445719
 !MRCI trans       <9.2|ECPLSY|5.2>    -5.738369993682
 !MRCI trans      <10.2|ECPLSY|5.2>     1.866552882058
 !MRCI trans      <11.2|ECPLSY|5.2>     2.323821952703
 !MRCI trans      <12.2|ECPLSY|5.2>    -1.992054090168
 !MRCI trans      <13.2|ECPLSY|5.2>    -1.481084427036
 !MRCI trans      <14.2|ECPLSY|5.2>    -2.239210947461
 !MRCI trans      <15.2|ECPLSY|5.2>    -0.169172539586
 !MRCI trans      <16.2|ECPLSY|5.2>    -0.165779467085
 !MRCI trans      <17.2|ECPLSY|5.2>     2.865920357281
 !MRCI expec       <6.2|ECPLSY|6.2>    -5.359979081073
 !MRCI trans       <7.2|ECPLSY|6.2>     7.659596953970
 !MRCI trans       <8.2|ECPLSY|6.2>    18.074737448706
 !MRCI trans       <9.2|ECPLSY|6.2>     3.741353604335
 !MRCI trans      <10.2|ECPLSY|6.2>     1.709277652845
 !MRCI trans      <11.2|ECPLSY|6.2>    -2.539290997238
 !MRCI trans      <12.2|ECPLSY|6.2>     0.039960978713
 !MRCI trans      <13.2|ECPLSY|6.2>     1.024241969725
 !MRCI trans      <14.2|ECPLSY|6.2>     3.039498836067
 !MRCI trans      <15.2|ECPLSY|6.2>    -4.369768867330
 !MRCI trans      <16.2|ECPLSY|6.2>     1.430551552153
 !MRCI trans      <17.2|ECPLSY|6.2>     0.410222133960
 !MRCI expec       <7.2|ECPLSY|7.2>    13.268035496502
 !MRCI trans       <8.2|ECPLSY|7.2>    -4.573351426591
 !MRCI trans       <9.2|ECPLSY|7.2>     5.160298257181
 !MRCI trans      <10.2|ECPLSY|7.2>    -1.815554491876
 !MRCI trans      <11.2|ECPLSY|7.2>    -3.026618928539
 !MRCI trans      <12.2|ECPLSY|7.2>     0.920962833687
 !MRCI trans      <13.2|ECPLSY|7.2>     1.484722497548
 !MRCI trans      <14.2|ECPLSY|7.2>     2.800965543413
 !MRCI trans      <15.2|ECPLSY|7.2>    -0.824931414059
 !MRCI trans      <16.2|ECPLSY|7.2>     0.319304706312
 !MRCI trans      <17.2|ECPLSY|7.2>    -2.988680783085
 !MRCI expec       <8.2|ECPLSY|8.2>    -1.430770402745
 !MRCI trans       <9.2|ECPLSY|8.2>    -1.412238574348
 !MRCI trans      <10.2|ECPLSY|8.2>   -12.632203752531
 !MRCI trans      <11.2|ECPLSY|8.2>     2.313801848648
 !MRCI trans      <12.2|ECPLSY|8.2>    -3.332323080694
 !MRCI trans      <13.2|ECPLSY|8.2>     2.084823870654
 !MRCI trans      <14.2|ECPLSY|8.2>     1.355583114900
 !MRCI trans      <15.2|ECPLSY|8.2>     2.390001776930
 !MRCI trans      <16.2|ECPLSY|8.2>    -0.639208783246
 !MRCI trans      <17.2|ECPLSY|8.2>     2.834177023854
 !MRCI expec       <9.2|ECPLSY|9.2>     4.396078129732
 !MRCI trans      <10.2|ECPLSY|9.2>    10.828033310695
 !MRCI trans      <11.2|ECPLSY|9.2>   -18.979857104878
 !MRCI trans      <12.2|ECPLSY|9.2>   -27.083054294218
 !MRCI trans      <13.2|ECPLSY|9.2>     1.545150507245
 !MRCI trans      <14.2|ECPLSY|9.2>     3.308199991334
 !MRCI trans      <15.2|ECPLSY|9.2>     1.817390002147
 !MRCI trans      <16.2|ECPLSY|9.2>    36.044264446906
 !MRCI trans      <17.2|ECPLSY|9.2>     8.918950232664
 !MRCI expec     <10.2|ECPLSY|10.2>   -14.148818536264
 !MRCI trans     <11.2|ECPLSY|10.2>     5.664600137198
 !MRCI trans     <12.2|ECPLSY|10.2>     1.453844135057
 !MRCI trans     <13.2|ECPLSY|10.2>    -2.948222334753
 !MRCI trans     <14.2|ECPLSY|10.2>    -1.499948409968
 !MRCI trans     <15.2|ECPLSY|10.2>    -4.756103028824
 !MRCI trans     <16.2|ECPLSY|10.2>     5.711462486064
 !MRCI trans     <17.2|ECPLSY|10.2>     2.737953012782
 !MRCI expec     <11.2|ECPLSY|11.2>    -4.020122237614
 !MRCI trans     <12.2|ECPLSY|11.2>   -11.523169130259
 !MRCI trans     <13.2|ECPLSY|11.2>    10.133969735782
 !MRCI trans     <14.2|ECPLSY|11.2>    -8.406036413667
 !MRCI trans     <15.2|ECPLSY|11.2>     9.024219739030
 !MRCI trans     <16.2|ECPLSY|11.2>    29.207903774137
 !MRCI trans     <17.2|ECPLSY|11.2>     9.593588946484
 !MRCI expec     <12.2|ECPLSY|12.2>   -13.446888797399
 !MRCI trans     <13.2|ECPLSY|12.2>     4.088681776869
 !MRCI trans     <14.2|ECPLSY|12.2>     1.154571200304
 !MRCI trans     <15.2|ECPLSY|12.2>     7.829779197585
 !MRCI trans     <16.2|ECPLSY|12.2>    -1.244292366525
 !MRCI trans     <17.2|ECPLSY|12.2>    -7.114530568167
 !MRCI expec     <13.2|ECPLSY|13.2>   -13.982151397639
 !MRCI trans     <14.2|ECPLSY|13.2>    19.087416916319
 !MRCI trans     <15.2|ECPLSY|13.2>     8.934307230993
 !MRCI trans     <16.2|ECPLSY|13.2>   -24.452871319000
 !MRCI trans     <17.2|ECPLSY|13.2>   -25.573280101278
 !MRCI expec     <14.2|ECPLSY|14.2>    -7.466557295313
 !MRCI trans     <15.2|ECPLSY|14.2>   -10.077061005395
 !MRCI trans     <16.2|ECPLSY|14.2>    -3.689219991728
 !MRCI trans     <17.2|ECPLSY|14.2>   -10.871468551066
 !MRCI expec     <15.2|ECPLSY|15.2>    -2.868103329498
 !MRCI trans     <16.2|ECPLSY|15.2>    13.509488060634
 !MRCI trans     <17.2|ECPLSY|15.2>    21.778405795686
 !MRCI expec     <16.2|ECPLSY|16.2>     0.921419842374
 !MRCI trans     <17.2|ECPLSY|16.2>     9.491262582334
 !MRCI expec     <17.2|ECPLSY|17.2>    -2.733487268805

 Bra-wavefunction restored from record   5302.2
 Ket-wavefunction restored from record   5302.2


 Symmetry of spin-orbit operator:         1
 Symmetry of bra wavefunction:            2   S= 1.5  MS= 1.5
 Symmetry of ket wavefunction:            2   S= 1.5  MS= 1.5


 !MRCI expec       <1.2|ECPLSZ|1.2>     0.000000000000i

 Bra-wavefunction restored from record   5302.2
 Ket-wavefunction restored from record   5102.2


 Symmetry of spin-orbit operator:         1
 Symmetry of bra wavefunction:            2   S= 1.5  MS= 0.5
 Symmetry of ket wavefunction:            2   S= 0.5  MS= 0.5

 !MRCI LS_I-I(ECP) <1.2|ECPLSZ|1.2>    -0.000000000914i
 !MRCI LS_I-I(ECP) <1.2|ECPLSZ|2.2>    -0.000000000331i
 !MRCI LS_I-I(ECP) <1.2|ECPLSZ|3.2>     0.000000015534i
 !MRCI LS_I-I(ECP) <1.2|ECPLSZ|4.2>    -0.000000000635i
 !MRCI LS_I-I(ECP) <1.2|ECPLSZ|5.2>     0.000000000097i
 !MRCI LS_I-I(ECP) <1.2|ECPLSZ|6.2>    -0.000217634333i
 !MRCI LS_I-I(ECP) <1.2|ECPLSZ|7.2>     0.000357261324i
 !MRCI LS_I-I(ECP) <1.2|ECPLSZ|8.2>     0.011180910212i
 !MRCI LS_I-I(ECP) <1.2|ECPLSZ|9.2>     0.000000000009i
 !MRCI LS_I-I(ECP <1.2|ECPLSZ|10.2>    -0.000000000148i
 !MRCI LS_I-I(ECP <1.2|ECPLSZ|11.2>     0.000000000871i
 !MRCI LS_I-I(ECP <1.2|ECPLSZ|12.2>     0.000000000479i
 !MRCI LS_I-I(ECP <1.2|ECPLSZ|13.2>     0.000000000452i
 !MRCI LS_I-I(ECP <1.2|ECPLSZ|14.2>    -0.000000058936i
 !MRCI LS_I-I(ECP <1.2|ECPLSZ|15.2>    -0.000004480354i
 !MRCI LS_I-I(ECP <1.2|ECPLSZ|16.2>    -0.000019466147i
 !MRCI LS_I-I(ECP <1.2|ECPLSZ|17.2>     0.002970066525i

 !MRCI expec       <1.2|ECPLSZ|1.2>    -0.000000000736i
 !MRCI trans       <1.2|ECPLSZ|2.2>    -0.000000000176i
 !MRCI trans       <1.2|ECPLSZ|3.2>    -0.000000002646i
 !MRCI trans       <1.2|ECPLSZ|4.2>    -0.000000000469i
 !MRCI trans       <1.2|ECPLSZ|5.2>     0.000000000125i
 !MRCI trans       <1.2|ECPLSZ|6.2>    -0.000218387904i
 !MRCI trans       <1.2|ECPLSZ|7.2>     0.000358498438i
 !MRCI trans       <1.2|ECPLSZ|8.2>     0.011219624881i
 !MRCI trans       <1.2|ECPLSZ|9.2>    -0.000000000006i
 !MRCI trans      <1.2|ECPLSZ|10.2>    -0.000000000140i
 !MRCI trans      <1.2|ECPLSZ|11.2>     0.000000000857i
 !MRCI trans      <1.2|ECPLSZ|12.2>     0.000000000484i
 !MRCI trans      <1.2|ECPLSZ|13.2>     0.000000000441i
 !MRCI trans      <1.2|ECPLSZ|14.2>    -0.000000057894i
 !MRCI trans      <1.2|ECPLSZ|15.2>    -0.000004413945i
 !MRCI trans      <1.2|ECPLSZ|16.2>    -0.000019177714i
 !MRCI trans      <1.2|ECPLSZ|17.2>     0.002926056693i

 Bra-wavefunction restored from record   5102.2
 Ket-wavefunction restored from record   5102.2


 Symmetry of spin-orbit operator:         1
 Symmetry of bra wavefunction:            2   S= 0.5  MS= 0.5
 Symmetry of ket wavefunction:            2   S= 0.5  MS= 0.5

 !MRCI LS_I-I(ECP) <2.2|ECPLSZ|1.2>     0.000000324143i
 !MRCI LS_I-I(ECP) <3.2|ECPLSZ|1.2>    -0.000032723435i
 !MRCI LS_I-I(ECP) <4.2|ECPLSZ|1.2>     0.000000253939i
 !MRCI LS_I-I(ECP) <5.2|ECPLSZ|1.2>     0.000000167806i
 !MRCI LS_I-I(ECP) <6.2|ECPLSZ|1.2>    -0.000069281784i
 !MRCI LS_I-I(ECP) <7.2|ECPLSZ|1.2>     0.000116789032i
 !MRCI LS_I-I(ECP) <8.2|ECPLSZ|1.2>     0.004603010672i
 !MRCI LS_I-I(ECP) <9.2|ECPLSZ|1.2>     0.000000000135i
 !MRCI LS_I-I(ECP <10.2|ECPLSZ|1.2>     0.000000965038i
 !MRCI LS_I-I(ECP <11.2|ECPLSZ|1.2>     0.000001902188i
 !MRCI LS_I-I(ECP <12.2|ECPLSZ|1.2>     0.000002607131i
 !MRCI LS_I-I(ECP <13.2|ECPLSZ|1.2>     0.000013597212i
 !MRCI LS_I-I(ECP <14.2|ECPLSZ|1.2>    -0.000780336898i
 !MRCI LS_I-I(ECP <15.2|ECPLSZ|1.2>     0.000000495173i
 !MRCI LS_I-I(ECP <16.2|ECPLSZ|1.2>     0.000000117031i
 !MRCI LS_I-I(ECP <17.2|ECPLSZ|1.2>     0.000236542390i
 !MRCI LS_I-I(ECP) <1.2|ECPLSZ|2.2>    -0.000000324143i
 !MRCI LS_I-I(ECP) <3.2|ECPLSZ|2.2>     0.000000175322i
 !MRCI LS_I-I(ECP) <4.2|ECPLSZ|2.2>    -0.000000445541i
 !MRCI LS_I-I(ECP) <5.2|ECPLSZ|2.2>     0.000020139932i
 !MRCI LS_I-I(ECP) <6.2|ECPLSZ|2.2>     0.000819550222i
 !MRCI LS_I-I(ECP) <7.2|ECPLSZ|2.2>    -0.006793181989i
 !MRCI LS_I-I(ECP) <8.2|ECPLSZ|2.2>     0.000205390622i
 !MRCI LS_I-I(ECP) <9.2|ECPLSZ|2.2>     0.000000000027i
 !MRCI LS_I-I(ECP <10.2|ECPLSZ|2.2>     0.000480016467i
 !MRCI LS_I-I(ECP <11.2|ECPLSZ|2.2>     0.000008073818i
 !MRCI LS_I-I(ECP <12.2|ECPLSZ|2.2>    -0.000001454805i
 !MRCI LS_I-I(ECP <13.2|ECPLSZ|2.2>     0.000008208944i
 !MRCI LS_I-I(ECP <14.2|ECPLSZ|2.2>     0.000002552995i
 !MRCI LS_I-I(ECP <15.2|ECPLSZ|2.2>     0.000000656144i
 !MRCI LS_I-I(ECP <16.2|ECPLSZ|2.2>     0.000351654258i
 !MRCI LS_I-I(ECP <17.2|ECPLSZ|2.2>     0.000000887833i
 !MRCI LS_I-I(ECP) <1.2|ECPLSZ|3.2>     0.000032723435i
 !MRCI LS_I-I(ECP) <2.2|ECPLSZ|3.2>    -0.000000175322i
 !MRCI LS_I-I(ECP) <4.2|ECPLSZ|3.2>     0.000023462823i
 !MRCI LS_I-I(ECP) <5.2|ECPLSZ|3.2>     0.000000536063i
 !MRCI LS_I-I(ECP) <6.2|ECPLSZ|3.2>    -0.000006477904i
 !MRCI LS_I-I(ECP) <7.2|ECPLSZ|3.2>    -0.000060492569i
 !MRCI LS_I-I(ECP) <8.2|ECPLSZ|3.2>    -0.000048848032i
 !MRCI LS_I-I(ECP) <9.2|ECPLSZ|3.2>    -0.000000003599i
 !MRCI LS_I-I(ECP <10.2|ECPLSZ|3.2>     0.000002455866i
 !MRCI LS_I-I(ECP <11.2|ECPLSZ|3.2>     0.000107713267i
 !MRCI LS_I-I(ECP <12.2|ECPLSZ|3.2>     0.000001598922i
 !MRCI LS_I-I(ECP <13.2|ECPLSZ|3.2>    -0.000953880537i
 !MRCI LS_I-I(ECP <14.2|ECPLSZ|3.2>    -0.000020727137i
 !MRCI LS_I-I(ECP <15.2|ECPLSZ|3.2>    -0.000000733160i
 !MRCI LS_I-I(ECP <16.2|ECPLSZ|3.2>     0.000002976357i
 !MRCI LS_I-I(ECP <17.2|ECPLSZ|3.2>    -0.000002582053i
 !MRCI LS_I-I(ECP) <1.2|ECPLSZ|4.2>    -0.000000253939i
 !MRCI LS_I-I(ECP) <2.2|ECPLSZ|4.2>     0.000000445541i
 !MRCI LS_I-I(ECP) <3.2|ECPLSZ|4.2>    -0.000023462823i
 !MRCI LS_I-I(ECP) <5.2|ECPLSZ|4.2>     0.000000029430i
 !MRCI LS_I-I(ECP) <6.2|ECPLSZ|4.2>     0.000207440353i
 !MRCI LS_I-I(ECP) <7.2|ECPLSZ|4.2>    -0.000188522391i
 !MRCI LS_I-I(ECP) <8.2|ECPLSZ|4.2>    -0.006418902612i
 !MRCI LS_I-I(ECP) <9.2|ECPLSZ|4.2>     0.000000000097i
 !MRCI LS_I-I(ECP <10.2|ECPLSZ|4.2>    -0.000001374749i
 !MRCI LS_I-I(ECP <11.2|ECPLSZ|4.2>     0.000000476204i
 !MRCI LS_I-I(ECP <12.2|ECPLSZ|4.2>     0.000006906167i
 !MRCI LS_I-I(ECP <13.2|ECPLSZ|4.2>     0.000017215749i
 !MRCI LS_I-I(ECP <14.2|ECPLSZ|4.2>    -0.000559054783i
 !MRCI LS_I-I(ECP <15.2|ECPLSZ|4.2>     0.000004806113i
 !MRCI LS_I-I(ECP <16.2|ECPLSZ|4.2>     0.000001816941i
 !MRCI LS_I-I(ECP <17.2|ECPLSZ|4.2>    -0.000330007977i
 !MRCI LS_I-I(ECP) <1.2|ECPLSZ|5.2>    -0.000000167806i
 !MRCI LS_I-I(ECP) <2.2|ECPLSZ|5.2>    -0.000020139932i
 !MRCI LS_I-I(ECP) <3.2|ECPLSZ|5.2>    -0.000000536063i
 !MRCI LS_I-I(ECP) <4.2|ECPLSZ|5.2>    -0.000000029430i
 !MRCI LS_I-I(ECP) <6.2|ECPLSZ|5.2>    -0.006793472221i
 !MRCI LS_I-I(ECP) <7.2|ECPLSZ|5.2>    -0.000824977947i
 !MRCI LS_I-I(ECP) <8.2|ECPLSZ|5.2>    -0.000173424237i
 !MRCI LS_I-I(ECP) <9.2|ECPLSZ|5.2>     0.000000000040i
 !MRCI LS_I-I(ECP <10.2|ECPLSZ|5.2>    -0.000001458700i
 !MRCI LS_I-I(ECP <11.2|ECPLSZ|5.2>     0.000000367724i
 !MRCI LS_I-I(ECP <12.2|ECPLSZ|5.2>    -0.000480046903i
 !MRCI LS_I-I(ECP <13.2|ECPLSZ|5.2>     0.000001025509i
 !MRCI LS_I-I(ECP <14.2|ECPLSZ|5.2>    -0.000009603583i
 !MRCI LS_I-I(ECP <15.2|ECPLSZ|5.2>    -0.000351625980i
 !MRCI LS_I-I(ECP <16.2|ECPLSZ|5.2>     0.000000673729i
 !MRCI LS_I-I(ECP <17.2|ECPLSZ|5.2>    -0.000003993605i
 !MRCI LS_I-I(ECP) <1.2|ECPLSZ|6.2>     0.000069281784i
 !MRCI LS_I-I(ECP) <2.2|ECPLSZ|6.2>    -0.000819550222i
 !MRCI LS_I-I(ECP) <3.2|ECPLSZ|6.2>     0.000006477904i
 !MRCI LS_I-I(ECP) <4.2|ECPLSZ|6.2>    -0.000207440353i
 !MRCI LS_I-I(ECP) <5.2|ECPLSZ|6.2>     0.006793472221i
 !MRCI LS_I-I(ECP) <7.2|ECPLSZ|6.2>     0.000009967974i
 !MRCI LS_I-I(ECP) <8.2|ECPLSZ|6.2>    -0.000000318635i
 !MRCI LS_I-I(ECP) <9.2|ECPLSZ|6.2>     0.000010141073i
 !MRCI LS_I-I(ECP <10.2|ECPLSZ|6.2>    -0.000218167375i
 !MRCI LS_I-I(ECP <11.2|ECPLSZ|6.2>     0.000000788503i
 !MRCI LS_I-I(ECP <12.2|ECPLSZ|6.2>     0.000026951517i
 !MRCI LS_I-I(ECP <13.2|ECPLSZ|6.2>     0.000000515006i
 !MRCI LS_I-I(ECP <14.2|ECPLSZ|6.2>     0.000000429069i
 !MRCI LS_I-I(ECP <15.2|ECPLSZ|6.2>     0.000059744219i
 !MRCI LS_I-I(ECP <16.2|ECPLSZ|6.2>    -0.000503540966i
 !MRCI LS_I-I(ECP <17.2|ECPLSZ|6.2>    -0.000003210214i
 !MRCI LS_I-I(ECP) <1.2|ECPLSZ|7.2>    -0.000116789032i
 !MRCI LS_I-I(ECP) <2.2|ECPLSZ|7.2>     0.006793181989i
 !MRCI LS_I-I(ECP) <3.2|ECPLSZ|7.2>     0.000060492569i
 !MRCI LS_I-I(ECP) <4.2|ECPLSZ|7.2>     0.000188522391i
 !MRCI LS_I-I(ECP) <5.2|ECPLSZ|7.2>     0.000824977947i
 !MRCI LS_I-I(ECP) <6.2|ECPLSZ|7.2>    -0.000009967974i
 !MRCI LS_I-I(ECP) <8.2|ECPLSZ|7.2>    -0.000000193930i
 !MRCI LS_I-I(ECP) <9.2|ECPLSZ|7.2>    -0.000016647236i
 !MRCI LS_I-I(ECP <10.2|ECPLSZ|7.2>    -0.000026924291i
 !MRCI LS_I-I(ECP <11.2|ECPLSZ|7.2>    -0.000008281457i
 !MRCI LS_I-I(ECP <12.2|ECPLSZ|7.2>    -0.000218027631i
 !MRCI LS_I-I(ECP <13.2|ECPLSZ|7.2>    -0.000001481041i
 !MRCI LS_I-I(ECP <14.2|ECPLSZ|7.2>    -0.000000406732i
 !MRCI LS_I-I(ECP <15.2|ECPLSZ|7.2>    -0.000503356085i
 !MRCI LS_I-I(ECP <16.2|ECPLSZ|7.2>    -0.000060031329i
 !MRCI LS_I-I(ECP <17.2|ECPLSZ|7.2>    -0.000001152750i
 !MRCI LS_I-I(ECP) <1.2|ECPLSZ|8.2>    -0.004603010672i
 !MRCI LS_I-I(ECP) <2.2|ECPLSZ|8.2>    -0.000205390622i
 !MRCI LS_I-I(ECP) <3.2|ECPLSZ|8.2>     0.000048848032i
 !MRCI LS_I-I(ECP) <4.2|ECPLSZ|8.2>     0.006418902612i
 !MRCI LS_I-I(ECP) <5.2|ECPLSZ|8.2>     0.000173424237i
 !MRCI LS_I-I(ECP) <6.2|ECPLSZ|8.2>     0.000000318635i
 !MRCI LS_I-I(ECP) <7.2|ECPLSZ|8.2>     0.000000193930i
 !MRCI LS_I-I(ECP) <9.2|ECPLSZ|8.2>    -0.000520994574i
 !MRCI LS_I-I(ECP <10.2|ECPLSZ|8.2>     0.000001350307i
 !MRCI LS_I-I(ECP <11.2|ECPLSZ|8.2>    -0.000252081293i
 !MRCI LS_I-I(ECP <12.2|ECPLSZ|8.2>     0.000007244843i
 !MRCI LS_I-I(ECP <13.2|ECPLSZ|8.2>    -0.000028400054i
 !MRCI LS_I-I(ECP <14.2|ECPLSZ|8.2>    -0.000001084968i
 !MRCI LS_I-I(ECP <15.2|ECPLSZ|8.2>     0.000017246638i
 !MRCI LS_I-I(ECP <16.2|ECPLSZ|8.2>    -0.000007883226i
 !MRCI LS_I-I(ECP <17.2|ECPLSZ|8.2>    -0.000000025709i
 !MRCI LS_I-I(ECP) <1.2|ECPLSZ|9.2>    -0.000000000135i
 !MRCI LS_I-I(ECP) <2.2|ECPLSZ|9.2>    -0.000000000027i
 !MRCI LS_I-I(ECP) <3.2|ECPLSZ|9.2>     0.000000003599i
 !MRCI LS_I-I(ECP) <4.2|ECPLSZ|9.2>    -0.000000000097i
 !MRCI LS_I-I(ECP) <5.2|ECPLSZ|9.2>    -0.000000000040i
 !MRCI LS_I-I(ECP) <6.2|ECPLSZ|9.2>    -0.000010141073i
 !MRCI LS_I-I(ECP) <7.2|ECPLSZ|9.2>     0.000016647236i
 !MRCI LS_I-I(ECP) <8.2|ECPLSZ|9.2>     0.000520994574i
 !MRCI LS_I-I(ECP <10.2|ECPLSZ|9.2>    -0.000000000323i
 !MRCI LS_I-I(ECP <11.2|ECPLSZ|9.2>     0.000000001506i
 !MRCI LS_I-I(ECP <12.2|ECPLSZ|9.2>     0.000000000518i
 !MRCI LS_I-I(ECP <13.2|ECPLSZ|9.2>     0.000000001236i
 !MRCI LS_I-I(ECP <14.2|ECPLSZ|9.2>    -0.000000083843i
 !MRCI LS_I-I(ECP <15.2|ECPLSZ|9.2>    -0.000007292289i
 !MRCI LS_I-I(ECP <16.2|ECPLSZ|9.2>    -0.000031683828i
 !MRCI LS_I-I(ECP <17.2|ECPLSZ|9.2>     0.004834180939i
 !MRCI LS_I-I(ECP <1.2|ECPLSZ|10.2>    -0.000000965038i
 !MRCI LS_I-I(ECP <2.2|ECPLSZ|10.2>    -0.000480016467i
 !MRCI LS_I-I(ECP <3.2|ECPLSZ|10.2>    -0.000002455866i
 !MRCI LS_I-I(ECP <4.2|ECPLSZ|10.2>     0.000001374749i
 !MRCI LS_I-I(ECP <5.2|ECPLSZ|10.2>     0.000001458700i
 !MRCI LS_I-I(ECP <6.2|ECPLSZ|10.2>     0.000218167375i
 !MRCI LS_I-I(ECP <7.2|ECPLSZ|10.2>     0.000026924291i
 !MRCI LS_I-I(ECP <8.2|ECPLSZ|10.2>    -0.000001350307i
 !MRCI LS_I-I(ECP <9.2|ECPLSZ|10.2>     0.000000000323i
 !MRCI LS_I-I(EC <11.2|ECPLSZ|10.2>     0.000004213370i
 !MRCI LS_I-I(EC <12.2|ECPLSZ|10.2>    -0.002561817847i
 !MRCI LS_I-I(EC <13.2|ECPLSZ|10.2>    -0.000015308232i
 !MRCI LS_I-I(EC <14.2|ECPLSZ|10.2>     0.000003355841i
 !MRCI LS_I-I(EC <15.2|ECPLSZ|10.2>     0.001471046523i
 !MRCI LS_I-I(EC <16.2|ECPLSZ|10.2>    -0.000006953658i
 !MRCI LS_I-I(EC <17.2|ECPLSZ|10.2>    -0.000029507737i
 !MRCI LS_I-I(ECP <1.2|ECPLSZ|11.2>    -0.000001902188i
 !MRCI LS_I-I(ECP <2.2|ECPLSZ|11.2>    -0.000008073818i
 !MRCI LS_I-I(ECP <3.2|ECPLSZ|11.2>    -0.000107713267i
 !MRCI LS_I-I(ECP <4.2|ECPLSZ|11.2>    -0.000000476204i
 !MRCI LS_I-I(ECP <5.2|ECPLSZ|11.2>    -0.000000367724i
 !MRCI LS_I-I(ECP <6.2|ECPLSZ|11.2>    -0.000000788503i
 !MRCI LS_I-I(ECP <7.2|ECPLSZ|11.2>     0.000008281457i
 !MRCI LS_I-I(ECP <8.2|ECPLSZ|11.2>     0.000252081293i
 !MRCI LS_I-I(ECP <9.2|ECPLSZ|11.2>    -0.000000001506i
 !MRCI LS_I-I(EC <10.2|ECPLSZ|11.2>    -0.000004213370i
 !MRCI LS_I-I(EC <12.2|ECPLSZ|11.2>    -0.000046921648i
 !MRCI LS_I-I(EC <13.2|ECPLSZ|11.2>     0.000022020369i
 !MRCI LS_I-I(EC <14.2|ECPLSZ|11.2>    -0.000574221663i
 !MRCI LS_I-I(EC <15.2|ECPLSZ|11.2>     0.000025001218i
 !MRCI LS_I-I(EC <16.2|ECPLSZ|11.2>    -0.000009321590i
 !MRCI LS_I-I(EC <17.2|ECPLSZ|11.2>     0.001687931034i
 !MRCI LS_I-I(ECP <1.2|ECPLSZ|12.2>    -0.000002607131i
 !MRCI LS_I-I(ECP <2.2|ECPLSZ|12.2>     0.000001454805i
 !MRCI LS_I-I(ECP <3.2|ECPLSZ|12.2>    -0.000001598922i
 !MRCI LS_I-I(ECP <4.2|ECPLSZ|12.2>    -0.000006906167i
 !MRCI LS_I-I(ECP <5.2|ECPLSZ|12.2>     0.000480046903i
 !MRCI LS_I-I(ECP <6.2|ECPLSZ|12.2>    -0.000026951517i
 !MRCI LS_I-I(ECP <7.2|ECPLSZ|12.2>     0.000218027631i
 !MRCI LS_I-I(ECP <8.2|ECPLSZ|12.2>    -0.000007244843i
 !MRCI LS_I-I(ECP <9.2|ECPLSZ|12.2>    -0.000000000518i
 !MRCI LS_I-I(EC <10.2|ECPLSZ|12.2>     0.002561817847i
 !MRCI LS_I-I(EC <11.2|ECPLSZ|12.2>     0.000046921648i
 !MRCI LS_I-I(EC <13.2|ECPLSZ|12.2>     0.000010997848i
 !MRCI LS_I-I(EC <14.2|ECPLSZ|12.2>    -0.000017986615i
 !MRCI LS_I-I(EC <15.2|ECPLSZ|12.2>    -0.000007111664i
 !MRCI LS_I-I(EC <16.2|ECPLSZ|12.2>    -0.001471256221i
 !MRCI LS_I-I(EC <17.2|ECPLSZ|12.2>    -0.000008005333i
 !MRCI LS_I-I(ECP <1.2|ECPLSZ|13.2>    -0.000013597212i
 !MRCI LS_I-I(ECP <2.2|ECPLSZ|13.2>    -0.000008208944i
 !MRCI LS_I-I(ECP <3.2|ECPLSZ|13.2>     0.000953880537i
 !MRCI LS_I-I(ECP <4.2|ECPLSZ|13.2>    -0.000017215749i
 !MRCI LS_I-I(ECP <5.2|ECPLSZ|13.2>    -0.000001025509i
 !MRCI LS_I-I(ECP <6.2|ECPLSZ|13.2>    -0.000000515006i
 !MRCI LS_I-I(ECP <7.2|ECPLSZ|13.2>     0.000001481041i
 !MRCI LS_I-I(ECP <8.2|ECPLSZ|13.2>     0.000028400054i
 !MRCI LS_I-I(ECP <9.2|ECPLSZ|13.2>    -0.000000001236i
 !MRCI LS_I-I(EC <10.2|ECPLSZ|13.2>     0.000015308232i
 !MRCI LS_I-I(EC <11.2|ECPLSZ|13.2>    -0.000022020369i
 !MRCI LS_I-I(EC <12.2|ECPLSZ|13.2>    -0.000010997848i
 !MRCI LS_I-I(EC <14.2|ECPLSZ|13.2>     0.005092149470i
 !MRCI LS_I-I(EC <15.2|ECPLSZ|13.2>     0.000000419462i
 !MRCI LS_I-I(EC <16.2|ECPLSZ|13.2>    -0.000005028112i
 !MRCI LS_I-I(EC <17.2|ECPLSZ|13.2>     0.000190414020i
 !MRCI LS_I-I(ECP <1.2|ECPLSZ|14.2>     0.000780336898i
 !MRCI LS_I-I(ECP <2.2|ECPLSZ|14.2>    -0.000002552995i
 !MRCI LS_I-I(ECP <3.2|ECPLSZ|14.2>     0.000020727137i
 !MRCI LS_I-I(ECP <4.2|ECPLSZ|14.2>     0.000559054783i
 !MRCI LS_I-I(ECP <5.2|ECPLSZ|14.2>     0.000009603583i
 !MRCI LS_I-I(ECP <6.2|ECPLSZ|14.2>    -0.000000429069i
 !MRCI LS_I-I(ECP <7.2|ECPLSZ|14.2>     0.000000406732i
 !MRCI LS_I-I(ECP <8.2|ECPLSZ|14.2>     0.000001084968i
 !MRCI LS_I-I(ECP <9.2|ECPLSZ|14.2>     0.000000083843i
 !MRCI LS_I-I(EC <10.2|ECPLSZ|14.2>    -0.000003355841i
 !MRCI LS_I-I(EC <11.2|ECPLSZ|14.2>     0.000574221663i
 !MRCI LS_I-I(EC <12.2|ECPLSZ|14.2>     0.000017986615i
 !MRCI LS_I-I(EC <13.2|ECPLSZ|14.2>    -0.005092149470i
 !MRCI LS_I-I(EC <15.2|ECPLSZ|14.2>    -0.000002427308i
 !MRCI LS_I-I(EC <16.2|ECPLSZ|14.2>    -0.000002842193i
 !MRCI LS_I-I(EC <17.2|ECPLSZ|14.2>     0.000007376913i
 !MRCI LS_I-I(ECP <1.2|ECPLSZ|15.2>    -0.000000495173i
 !MRCI LS_I-I(ECP <2.2|ECPLSZ|15.2>    -0.000000656144i
 !MRCI LS_I-I(ECP <3.2|ECPLSZ|15.2>     0.000000733160i
 !MRCI LS_I-I(ECP <4.2|ECPLSZ|15.2>    -0.000004806113i
 !MRCI LS_I-I(ECP <5.2|ECPLSZ|15.2>     0.000351625980i
 !MRCI LS_I-I(ECP <6.2|ECPLSZ|15.2>    -0.000059744219i
 !MRCI LS_I-I(ECP <7.2|ECPLSZ|15.2>     0.000503356085i
 !MRCI LS_I-I(ECP <8.2|ECPLSZ|15.2>    -0.000017246638i
 !MRCI LS_I-I(ECP <9.2|ECPLSZ|15.2>     0.000007292289i
 !MRCI LS_I-I(EC <10.2|ECPLSZ|15.2>    -0.001471046523i
 !MRCI LS_I-I(EC <11.2|ECPLSZ|15.2>    -0.000025001218i
 !MRCI LS_I-I(EC <12.2|ECPLSZ|15.2>     0.000007111664i
 !MRCI LS_I-I(EC <13.2|ECPLSZ|15.2>    -0.000000419462i
 !MRCI LS_I-I(EC <14.2|ECPLSZ|15.2>     0.000002427308i
 !MRCI LS_I-I(EC <16.2|ECPLSZ|15.2>     0.001886102511i
 !MRCI LS_I-I(EC <17.2|ECPLSZ|15.2>     0.000012361587i
 !MRCI LS_I-I(ECP <1.2|ECPLSZ|16.2>    -0.000000117031i
 !MRCI LS_I-I(ECP <2.2|ECPLSZ|16.2>    -0.000351654258i
 !MRCI LS_I-I(ECP <3.2|ECPLSZ|16.2>    -0.000002976357i
 !MRCI LS_I-I(ECP <4.2|ECPLSZ|16.2>    -0.000001816941i
 !MRCI LS_I-I(ECP <5.2|ECPLSZ|16.2>    -0.000000673729i
 !MRCI LS_I-I(ECP <6.2|ECPLSZ|16.2>     0.000503540966i
 !MRCI LS_I-I(ECP <7.2|ECPLSZ|16.2>     0.000060031329i
 !MRCI LS_I-I(ECP <8.2|ECPLSZ|16.2>     0.000007883226i
 !MRCI LS_I-I(ECP <9.2|ECPLSZ|16.2>     0.000031683828i
 !MRCI LS_I-I(EC <10.2|ECPLSZ|16.2>     0.000006953658i
 !MRCI LS_I-I(EC <11.2|ECPLSZ|16.2>     0.000009321590i
 !MRCI LS_I-I(EC <12.2|ECPLSZ|16.2>     0.001471256221i
 !MRCI LS_I-I(EC <13.2|ECPLSZ|16.2>     0.000005028112i
 !MRCI LS_I-I(EC <14.2|ECPLSZ|16.2>     0.000002842193i
 !MRCI LS_I-I(EC <15.2|ECPLSZ|16.2>    -0.001886102511i
 !MRCI LS_I-I(EC <17.2|ECPLSZ|16.2>    -0.000002844682i
 !MRCI LS_I-I(ECP <1.2|ECPLSZ|17.2>    -0.000236542390i
 !MRCI LS_I-I(ECP <2.2|ECPLSZ|17.2>    -0.000000887833i
 !MRCI LS_I-I(ECP <3.2|ECPLSZ|17.2>     0.000002582053i
 !MRCI LS_I-I(ECP <4.2|ECPLSZ|17.2>     0.000330007977i
 !MRCI LS_I-I(ECP <5.2|ECPLSZ|17.2>     0.000003993605i
 !MRCI LS_I-I(ECP <6.2|ECPLSZ|17.2>     0.000003210214i
 !MRCI LS_I-I(ECP <7.2|ECPLSZ|17.2>     0.000001152750i
 !MRCI LS_I-I(ECP <8.2|ECPLSZ|17.2>     0.000000025709i
 !MRCI LS_I-I(ECP <9.2|ECPLSZ|17.2>    -0.004834180939i
 !MRCI LS_I-I(EC <10.2|ECPLSZ|17.2>     0.000029507737i
 !MRCI LS_I-I(EC <11.2|ECPLSZ|17.2>    -0.001687931034i
 !MRCI LS_I-I(EC <12.2|ECPLSZ|17.2>     0.000008005333i
 !MRCI LS_I-I(EC <13.2|ECPLSZ|17.2>    -0.000190414020i
 !MRCI LS_I-I(EC <14.2|ECPLSZ|17.2>    -0.000007376913i
 !MRCI LS_I-I(EC <15.2|ECPLSZ|17.2>    -0.000012361587i
 !MRCI LS_I-I(EC <16.2|ECPLSZ|17.2>     0.000002844682i

 !MRCI expec       <1.2|ECPLSZ|1.2>   -91.080285349675i
 !MRCI trans       <2.2|ECPLSZ|1.2>    -3.766151133980i
 !MRCI trans       <3.2|ECPLSZ|1.2>   119.161497811362i
 !MRCI trans       <4.2|ECPLSZ|1.2>    42.715750655909i
 !MRCI trans       <5.2|ECPLSZ|1.2>   -26.665737085048i
 !MRCI trans       <6.2|ECPLSZ|1.2>     9.053432499392i
 !MRCI trans       <7.2|ECPLSZ|1.2>   -75.592527707445i
 !MRCI trans       <8.2|ECPLSZ|1.2>   -78.577784627991i
 !MRCI trans       <9.2|ECPLSZ|1.2>   -36.051686252421i
 !MRCI trans      <10.2|ECPLSZ|1.2>     3.962660184733i
 !MRCI trans      <11.2|ECPLSZ|1.2>    -1.557912519964i
 !MRCI trans      <12.2|ECPLSZ|1.2>     5.141433244958i
 !MRCI trans      <13.2|ECPLSZ|1.2>    -3.484327752361i
 !MRCI trans      <14.2|ECPLSZ|1.2>    -1.330309585275i
 !MRCI trans      <15.2|ECPLSZ|1.2>    -7.094772552878i
 !MRCI trans      <16.2|ECPLSZ|1.2>     9.461313032709i
 !MRCI trans      <17.2|ECPLSZ|1.2>   -10.709720858738i
 !MRCI expec       <2.2|ECPLSZ|2.2>    67.881827904700i
 !MRCI trans       <3.2|ECPLSZ|2.2>    12.903247399503i
 !MRCI trans       <4.2|ECPLSZ|2.2>   -41.119492279524i
 !MRCI trans       <5.2|ECPLSZ|2.2>    33.064753150173i
 !MRCI trans       <6.2|ECPLSZ|2.2>   -11.841032326660i
 !MRCI trans       <7.2|ECPLSZ|2.2>   -36.603595927501i
 !MRCI trans       <8.2|ECPLSZ|2.2>    -3.707872169875i
 !MRCI trans       <9.2|ECPLSZ|2.2>   -22.651225094643i
 !MRCI trans      <10.2|ECPLSZ|2.2>    11.911780490033i
 !MRCI trans      <11.2|ECPLSZ|2.2>     0.315566126472i
 !MRCI trans      <12.2|ECPLSZ|2.2>   -10.731471230891i
 !MRCI trans      <13.2|ECPLSZ|2.2>   -13.717875251304i
 !MRCI trans      <14.2|ECPLSZ|2.2>    -4.117960643634i
 !MRCI trans      <15.2|ECPLSZ|2.2>    -5.535447633738i
 !MRCI trans      <16.2|ECPLSZ|2.2>    -0.207244989966i
 !MRCI trans      <17.2|ECPLSZ|2.2>    -1.767316709853i
 !MRCI expec       <3.2|ECPLSZ|3.2>   -14.406825344259i
 !MRCI trans       <4.2|ECPLSZ|3.2>     5.446601526633i
 !MRCI trans       <5.2|ECPLSZ|3.2>     4.903598781155i
 !MRCI trans       <6.2|ECPLSZ|3.2>     0.313959463395i
 !MRCI trans       <7.2|ECPLSZ|3.2>    -4.560499369623i
 !MRCI trans       <8.2|ECPLSZ|3.2>     3.191813099550i
 !MRCI trans       <9.2|ECPLSZ|3.2>    -2.269801540388i
 !MRCI trans      <10.2|ECPLSZ|3.2>     2.878393187842i
 !MRCI trans      <11.2|ECPLSZ|3.2>     1.035272046726i
 !MRCI trans      <12.2|ECPLSZ|3.2>    -0.832579264886i
 !MRCI trans      <13.2|ECPLSZ|3.2>     1.042815197399i
 !MRCI trans      <14.2|ECPLSZ|3.2>     3.782170951550i
 !MRCI trans      <15.2|ECPLSZ|3.2>    -4.072811250366i
 !MRCI trans      <16.2|ECPLSZ|3.2>     2.151877914253i
 !MRCI trans      <17.2|ECPLSZ|3.2>     3.647672240907i
 !MRCI expec       <4.2|ECPLSZ|4.2>     2.100608141044i
 !MRCI trans       <5.2|ECPLSZ|4.2>    -4.864884593973i
 !MRCI trans       <6.2|ECPLSZ|4.2>    38.949731450773i
 !MRCI trans       <7.2|ECPLSZ|4.2>   -20.023874784309i
 !MRCI trans       <8.2|ECPLSZ|4.2>  -137.975198012850i
 !MRCI trans       <9.2|ECPLSZ|4.2>   -38.048510792541i
 !MRCI trans      <10.2|ECPLSZ|4.2>    -4.057945773011i
 !MRCI trans      <11.2|ECPLSZ|4.2>     7.342324386442i
 !MRCI trans      <12.2|ECPLSZ|4.2>     3.929275834067i
 !MRCI trans      <13.2|ECPLSZ|4.2>   -19.851844853596i
 !MRCI trans      <14.2|ECPLSZ|4.2>   -13.871089036139i
 !MRCI trans      <15.2|ECPLSZ|4.2>     5.741130744979i
 !MRCI trans      <16.2|ECPLSZ|4.2>     0.016586403628i
 !MRCI trans      <17.2|ECPLSZ|4.2>   -25.091126155587i
 !MRCI expec       <5.2|ECPLSZ|5.2>     3.952679607962i
 !MRCI trans       <6.2|ECPLSZ|5.2>    -9.913871313170i
 !MRCI trans       <7.2|ECPLSZ|5.2>   -47.328804914387i
 !MRCI trans       <8.2|ECPLSZ|5.2>     1.457368053575i
 !MRCI trans       <9.2|ECPLSZ|5.2>   -15.824326330236i
 !MRCI trans      <10.2|ECPLSZ|5.2>     3.883206671916i
 !MRCI trans      <11.2|ECPLSZ|5.2>    -4.912482480820i
 !MRCI trans      <12.2|ECPLSZ|5.2>    -0.063063237557i
 !MRCI trans      <13.2|ECPLSZ|5.2>    -8.231265921326i
 !MRCI trans      <14.2|ECPLSZ|5.2>     1.300175793885i
 !MRCI trans      <15.2|ECPLSZ|5.2>    -4.164239586755i
 !MRCI trans      <16.2|ECPLSZ|5.2>     4.539483450000i
 !MRCI trans      <17.2|ECPLSZ|5.2>    -4.453018933820i
 !MRCI expec       <6.2|ECPLSZ|6.2>    11.013889351137i
 !MRCI trans       <7.2|ECPLSZ|6.2>    39.324972857623i
 !MRCI trans       <8.2|ECPLSZ|6.2>     7.416591692477i
 !MRCI trans       <9.2|ECPLSZ|6.2>    17.916731198931i
 !MRCI trans      <10.2|ECPLSZ|6.2>   -16.270070496305i
 !MRCI trans      <11.2|ECPLSZ|6.2>     2.167360879770i
 !MRCI trans      <12.2|ECPLSZ|6.2>     5.521750503561i
 !MRCI trans      <13.2|ECPLSZ|6.2>     1.237613824848i
 !MRCI trans      <14.2|ECPLSZ|6.2>     3.223138325972i
 !MRCI trans      <15.2|ECPLSZ|6.2>     7.175786182529i
 !MRCI trans      <16.2|ECPLSZ|6.2>    -1.557191234099i
 !MRCI trans      <17.2|ECPLSZ|6.2>     3.655375687993i
 !MRCI expec       <7.2|ECPLSZ|7.2>   -19.371014594146i
 !MRCI trans       <8.2|ECPLSZ|7.2>    18.832470041137i
 !MRCI trans       <9.2|ECPLSZ|7.2>   -17.527795615006i
 !MRCI trans      <10.2|ECPLSZ|7.2>    -7.952533677714i
 !MRCI trans      <11.2|ECPLSZ|7.2>    -2.859344008790i
 !MRCI trans      <12.2|ECPLSZ|7.2>     1.803829970583i
 !MRCI trans      <13.2|ECPLSZ|7.2>    -6.722861204516i
 !MRCI trans      <14.2|ECPLSZ|7.2>     0.252408921419i
 !MRCI trans      <15.2|ECPLSZ|7.2>     4.371065794301i
 !MRCI trans      <16.2|ECPLSZ|7.2>     1.122503124354i
 !MRCI trans      <17.2|ECPLSZ|7.2>     0.722574097497i
 !MRCI expec       <8.2|ECPLSZ|8.2>    -5.533622335467i
 !MRCI trans       <9.2|ECPLSZ|8.2>    -2.321419949763i
 !MRCI trans      <10.2|ECPLSZ|8.2>    -1.312032827318i
 !MRCI trans      <11.2|ECPLSZ|8.2>     0.852494563889i
 !MRCI trans      <12.2|ECPLSZ|8.2>     1.658631520512i
 !MRCI trans      <13.2|ECPLSZ|8.2>    -3.128763064924i
 !MRCI trans      <14.2|ECPLSZ|8.2>     3.060729560469i
 !MRCI trans      <15.2|ECPLSZ|8.2>    -0.589276090178i
 !MRCI trans      <16.2|ECPLSZ|8.2>    -0.567721293973i
 !MRCI trans      <17.2|ECPLSZ|8.2>    -0.008159755322i
 !MRCI expec       <9.2|ECPLSZ|9.2>   -86.893721044101i
 !MRCI trans      <10.2|ECPLSZ|9.2>   115.735165491885i
 !MRCI trans      <11.2|ECPLSZ|9.2>    -9.212423210288i
 !MRCI trans      <12.2|ECPLSZ|9.2>  -108.987408771153i
 !MRCI trans      <13.2|ECPLSZ|9.2>   -61.937830905223i
 !MRCI trans      <14.2|ECPLSZ|9.2>    11.526159552442i
 !MRCI trans      <15.2|ECPLSZ|9.2>   -92.494014798726i
 !MRCI trans      <16.2|ECPLSZ|9.2>   -19.085859690009i
 !MRCI trans      <17.2|ECPLSZ|9.2>    44.593143692517i
 !MRCI expec     <10.2|ECPLSZ|10.2>    26.322443542823i
 !MRCI trans     <11.2|ECPLSZ|10.2>     9.027856846802i
 !MRCI trans     <12.2|ECPLSZ|10.2>   -11.270649122812i
 !MRCI trans     <13.2|ECPLSZ|10.2>     3.586889999088i
 !MRCI trans     <14.2|ECPLSZ|10.2>   -26.433341695701i
 !MRCI trans     <15.2|ECPLSZ|10.2>   -24.013648818921i
 !MRCI trans     <16.2|ECPLSZ|10.2>    -0.635242620937i
 !MRCI trans     <17.2|ECPLSZ|10.2>    17.007903985708i
 !MRCI expec     <11.2|ECPLSZ|11.2>    32.808326623851i
 !MRCI trans     <12.2|ECPLSZ|11.2>    32.515778536082i
 !MRCI trans     <13.2|ECPLSZ|11.2>    92.455796729475i
 !MRCI trans     <14.2|ECPLSZ|11.2>   -49.172958003006i
 !MRCI trans     <15.2|ECPLSZ|11.2>    60.624023197255i
 !MRCI trans     <16.2|ECPLSZ|11.2>   -10.937621379842i
 !MRCI trans     <17.2|ECPLSZ|11.2>   -43.214769433188i
 !MRCI expec     <12.2|ECPLSZ|12.2>     1.387130353906i
 !MRCI trans     <13.2|ECPLSZ|12.2>    26.260072641923i
 !MRCI trans     <14.2|ECPLSZ|12.2>    21.013029098830i
 !MRCI trans     <15.2|ECPLSZ|12.2>   -27.413253565537i
 !MRCI trans     <16.2|ECPLSZ|12.2>    -4.476410706017i
 !MRCI trans     <17.2|ECPLSZ|12.2>    10.455487515505i
 !MRCI expec     <13.2|ECPLSZ|13.2>    49.214001127388i
 !MRCI trans     <14.2|ECPLSZ|13.2>   135.317496867154i
 !MRCI trans     <15.2|ECPLSZ|13.2>   -23.003681141534i
 !MRCI trans     <16.2|ECPLSZ|13.2>   -13.289670556784i
 !MRCI trans     <17.2|ECPLSZ|13.2>    91.922896085100i
 !MRCI expec     <14.2|ECPLSZ|14.2>    -7.692384216099i
 !MRCI trans     <15.2|ECPLSZ|14.2>    -8.958650602925i
 !MRCI trans     <16.2|ECPLSZ|14.2>     8.357325631036i
 !MRCI trans     <17.2|ECPLSZ|14.2>    -6.164209559322i
 !MRCI expec     <15.2|ECPLSZ|15.2>    -5.350078770017i
 !MRCI trans     <16.2|ECPLSZ|15.2>    -5.571312326728i
 !MRCI trans     <17.2|ECPLSZ|15.2>    18.693041114340i
 !MRCI expec     <16.2|ECPLSZ|16.2>     8.514466990212i
 !MRCI trans     <17.2|ECPLSZ|16.2>    -7.373074168319i
 !MRCI expec     <17.2|ECPLSZ|17.2>     9.070979407202i



   Property matrices in the basis of the zeroth-order wave-functions
   =================================================================

 The property matrix for the DMX operator/operator component
 contains only zero matrix elements

 The property matrix for the DMY operator/operator component
 contains only zero matrix elements

 The property matrix for the DMZ operator/operator component
 contains only zero matrix elements


   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=  -240.19251196

 Wigner-Eckart theorem used for 23 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00      -0.00   -2118.21
                            0.00       0.00       0.00       0.00      -0.00      -0.00       0.00      -0.00       0.00     255.90

    2   1.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00       0.00     -47.93

    3   1.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00      -0.00   -1222.95
                           -0.00      -0.00       0.00       0.00       0.00       0.00      -0.00       0.00      -0.00    -147.75

    4   1.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    5   1.2  0.5  0.5       0.00       0.00       0.00       0.00    9833.56       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.00********************** -876898.84**********************10060567.83

    6   2.2  0.5  0.5      -0.00       0.00      -0.00       0.00       0.00    9833.59       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.0017254612.6214898339.16 3608259.80 2789259.02 6021534.05***********

    7   3.2  0.5  0.5      -0.00       0.00      -0.00       0.00       0.00       0.00    9833.57       0.00       0.00       0.00
                           -0.00       0.00       0.00      -0.00  876898.84-3608259.80-3161932.6850366542.22 2720190.60***********

    8   4.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00    9833.46       0.00       0.00
                            0.00       0.00      -0.00      -0.0033600476.87-2789259.02***********  461030.20-1179831.42 -514993.08

    9   5.2  0.5  0.5      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00    9833.48       0.00
                           -0.00      -0.00       0.00      -0.0014650938.09-6021534.05-2720190.60 1179831.42  867512.90-4646801.84

   10   6.2  0.5  0.5   -2118.21       0.00   -1222.95       0.00       0.00       0.00       0.00       0.00       0.00   16412.17
                         -255.90      47.93     147.75      -0.00***********10227450.4111123063.41  514993.08 4646801.84 2417269.31

   11   7.2  0.5  0.5    -257.14       0.00    -148.46       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         2117.37     -78.68   -1222.46      -0.00 9059923.69 2493990.84-7348455.86 -386778.51 2305921.34 1654176.31

   12   8.2  0.5  0.5     -33.01       0.00     -19.06       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -72.64   -2462.42      41.94      -0.00 4772915.94 4894191.73 2530851.01  627996.45 2133482.73 2260975.99

   13   9.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.0042372868.00**********************57043112.93***********54973404.74

   14  10.2  0.5  0.5      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.01       0.00      -0.00      -0.00*********************************-9084946.97*********** 3758567.62

   15  11.2  0.5  0.5      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00***********62276950.7011876051.21*********** 3694679.39***********

   16  12.2  0.5  0.5       0.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00***********-3011308.9347765508.73-6949597.86 1219958.85 7788550.45

   17  13.2  0.5  0.5      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00***********17983797.39**********************-4590125.8523825596.67

   18  14.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.01       0.00      -0.00**********************-3467683.59 1103072.39**********************

   19  15.2  0.5  0.5    -556.17       0.00    -321.10       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -1.19       0.97       0.69      -0.0023856967.94********************** 7187581.83 2966170.56-6055658.35

   20  16.2  0.5  0.5       1.19       0.00       0.69       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -556.16       4.21     321.10      -0.00 -849592.2721379426.96********************** 9588898.78-4271882.70

   21  17.2  0.5  0.5      -0.83       0.00      -0.48       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -3.65    -642.20       2.11      -0.00********************** 2788833.80-4074880.43*********** 2767923.64

   22   1.2  0.5 -0.5       0.00       0.00       0.00       0.00-4825923.66-1737382.65 1710778.46 4097513.82 3784639.22 -547095.88
                           -0.00       0.00       0.00      -0.00 5905697.55***********-7135327.39-1272688.23**********************

   23   2.2  0.5 -0.5       0.00      -0.00       0.00      -0.00-2729582.05 2251927.01 1473307.06-2581593.76 -865851.58 -168679.73
                           -0.00       0.00       0.00      -0.00-4406396.22*********** 1842670.20 3068422.29-4030376.46-8783787.56

   24   3.2  0.5 -0.5       0.00      -0.00       0.00      -0.00 1101854.61 1317964.21-1130051.38  226760.32 1379550.18 -462380.08
                           -0.00      -0.00       0.00       0.00-3256151.98-3943702.39-1467404.26-2100893.16 3143917.34-2592240.83

   25   4.2  0.5 -0.5       0.00       0.00       0.00       0.00-1020212.67-7160979.72-3505063.74 -863995.90 -962111.69-7145304.92
                           -0.00       0.00       0.00      -0.00 3235614.37***********-5719187.82-1691855.21**********************

   26   5.2  0.5 -0.5       0.00      -0.00       0.00      -0.00 3722718.79-1145687.96-2564575.80 1930304.06  -20518.86 1017128.95
                           -0.00      -0.00      -0.00       0.00 5027517.60-9727576.43 3674080.26 3914401.31 -605648.56-6860827.70

   27   6.2  0.5 -0.5       0.00   -1222.95       0.00   -2118.21 -656270.68-1063508.63  220268.69 -898653.86-1924853.56 1176379.43
                           -0.00    -147.75      47.93     255.90 4562213.2812259615.99-2025806.88-2087912.32 6492515.18 5228046.51

   28   7.2  0.5 -0.5       0.00    -148.46       0.00    -257.14-3093961.94  241864.15 1402038.16-2777542.58  -60005.77 -633588.54
                           -0.00    1222.46     -78.68   -2117.37 8806127.92-6007489.80 9671896.47 4336412.93 -911401.28-5434696.45

   29   8.2  0.5 -0.5       0.00     -19.06       0.00     -33.01-5684841.33-2497171.76 4596396.90 1604067.71 1243753.61 -925919.05
                           -0.00     -41.94   -2462.42      72.64   93364.16 1202275.04 2681115.62 2582151.16 -185104.50 -273100.11

   30   9.2  0.5 -0.5       0.00       0.00       0.00       0.00 1790823.67-3907111.77********************************* 9421959.10
                           -0.00       0.00       0.00      -0.00**********************29307887.3144303801.3164620861.76***********

   31  10.2  0.5 -0.5       0.00      -0.00       0.00      -0.00 9279364.03 2267925.81 4536241.37 5890361.86  996127.99 2226770.79
                           -0.00       0.00       0.00      -0.01***********-5430533.77*********************************  734028.58

   32  11.2  0.5 -0.5       0.00      -0.00       0.00      -0.00-5480345.50-9273590.57-4067270.58-3499834.01***********-8933164.62
                           -0.00       0.00      -0.00      -0.0064606459.50***********11695165.05***********22887964.57***********

   33  12.2  0.5 -0.5       0.00       0.00       0.00       0.01-9467812.44*********** 2392204.36  381445.33-2551799.50***********
                           -0.00       0.00      -0.00      -0.0023551242.7419934617.58-2810076.75 -284399.45 8132563.1427719318.88

   34  13.2  0.5 -0.5       0.00      -0.00       0.00      -0.0021083754.10-9590752.15 2428406.9610243354.3223935202.09***********
                           -0.00       0.00      -0.00      -0.00-9863591.1237918366.7339419638.0310062755.8329409431.6943969162.22

   35  14.2  0.5 -0.5       0.00       0.00       0.00       0.00 4277046.59 4543637.29***********  -22413.93-5156476.75 5436605.78
                           -0.00      -0.00       0.01       0.00*********** 5840812.80 6265134.47-8493444.82-1462566.14 1326030.57

   36  15.2  0.5 -0.5       0.00    -321.10       0.00    -556.17***********12968250.10 -308377.31  781151.50-1918938.48-3195966.06
                           -0.00      -0.69       0.97       1.1914567164.80*********** 5133790.19  929967.51***********12464690.94

   37  16.2  0.5 -0.5       0.00       0.69       0.00       1.19-2117543.54 5457883.06***********-1331179.00 3622676.58  802194.14
                           -0.00    -321.10       4.21     556.1619130353.66 -570192.8925017510.55 5270257.50***********-3627621.30

   38  17.2  0.5 -0.5       0.00      -0.48       0.00      -0.83 8061130.97 3792133.52*********** 3269294.06-7991946.4815033489.21
                           -0.00      -2.11    -642.20       3.65 -864405.60  722799.52 -233470.76  909009.26-2520304.97 2017110.81


   Nr   State  S   Sz       11         12         13         14         15         16         17         18         19         20

    1   1.2  1.5  1.5    -257.14     -33.01       0.00      -0.00      -0.00       0.01      -0.00       0.00    -556.17       1.19
                        -2117.37      72.64      -0.00      -0.01      -0.00      -0.00      -0.00       0.00       1.19     556.16

    2   1.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           78.68    2462.42      -0.00      -0.00       0.00       0.00       0.00      -0.01      -0.97      -4.21

    3   1.2  1.5 -0.5    -148.46     -19.06       0.00      -0.00      -0.00       0.00      -0.00       0.00    -321.10       0.69
                         1222.46     -41.94       0.00       0.00       0.00       0.00       0.00      -0.00      -0.69    -321.10

    4   1.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    5   1.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                     -9059923.69-4772915.94***********15632188.68***********27872467.1566235789.3711142389.47***********  849592.27

    6   2.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                     -2493990.84-4894191.73***********11916361.90*********** 3011308.93***********31245427.3715204367.49***********

    7   3.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                      7348455.86-2530851.01***********40370543.18********************************* 3467683.5920611313.3956610023.05

    8   4.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                       386778.51 -627996.45*********** 9084946.9719739629.38 6949597.8641655893.87-1103072.39-7187581.8325422657.42

    9   5.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                     -2305921.34-2133482.7349698648.7211738092.29-3694679.39-1219958.85 4590125.8513335310.71-2966170.56-9588898.78

   10   6.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                     -1654176.31-2260975.99***********-3758567.6234343327.76-7788550.45***********14136420.92 6055658.35 4271882.70

   11   7.2  0.5  0.5   16412.22       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                     -4251446.29-1292744.32-1935299.50-1118001.0435067268.14 8290024.0064235685.43-4186094.22 7683128.34***********

   12   8.2  0.5  0.5       0.00   16412.18       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                      1292744.32-1214489.7245076226.25 2027159.95***********-3731357.8656454685.65-6667272.7010713321.33  150007.23

   13   9.2  0.5  0.5       0.00       0.00   54439.42       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                      1935299.50*********************************65572539.9311027681.8014941674.27 -192391.33 1666439.35***********

   14  10.2  0.5  0.5       0.00       0.00       0.00   56691.46       0.00       0.00       0.00       0.00       0.00       0.00
                      1118001.04-2027159.9510049158.99 5777108.59-7350770.88 4719814.40 2130435.01 4666179.25 4488364.15-3456553.37

   15  11.2  0.5  0.5       0.00       0.00       0.00       0.00   56691.45       0.00       0.00       0.00       0.00       0.00
                     ***********11546477.08*********** 7350770.88 7200595.39 3225672.67-3013957.18  350111.77 5501039.48-3159602.74

   16  12.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00   56691.49       0.00       0.00       0.00       0.00
                     -8290024.00 3731357.86***********-4719814.40-3225672.67  304439.92-1883576.49-1564025.60-2604240.58 4365947.86

   17  13.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00   56691.48       0.00       0.00       0.00
                     *********************************-2130435.01 3013957.18 1883576.4910801224.76 2410437.16-2075280.56-1866173.23

   18  14.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00   56691.59       0.00       0.00
                      4186094.22 6667272.70  192391.33-4666179.25 -350111.77 1564025.60-2410437.16-1688283.19-1190695.85-2826807.37

   19  15.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   57806.82       0.00
                     -7683128.34***********-1666439.35-4488364.15-5501039.48 2604240.58 2075280.56 1190695.85-1174206.57 3251855.28

   20  16.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   57806.86
                     11431150.58 -150007.2310730531.93 3456553.37 3159602.74-4365947.86 1866173.23 2826807.37-3251855.28 1868709.50

   21  17.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                     -4423750.58-5402468.83 -781680.31-4333320.63  763267.65 3685559.62-1591341.76  -73500.67 3271821.31  261383.02

   22   1.2  0.5 -0.5-4726270.73 4309192.88   91444.63-1555740.04-1633304.35  126394.85-1000769.52  252445.30  -87535.15 1566280.85
                      1282474.50-9752181.78 -746170.54 3282146.27 1258206.73  953179.35  468142.28 -537426.67 -695294.28-3694434.83

   23   2.2  0.5 -0.5-3263738.83-5570777.87-1931177.20  637370.15  742467.66 -351222.76 -482666.69 -875582.09  504601.20 -300211.53
                       -83882.67-3137460.26 1145114.53   55612.87-1792811.32 2699529.79  243420.63  106094.37-1884339.02 -147617.13

   24   3.2  0.5 -0.5-2142427.63  698908.28 -631991.92-2519035.22 -283880.06   65434.46  -42530.32  108138.15 -473174.13  606840.36
                      1380718.91-1790218.15  594457.01 -889693.74  114299.42 -109208.83 -891602.82   81633.32 1464305.98  -14028.81

   25   4.2  0.5 -0.5  814727.34-4826733.75  296996.35   20811.87  371858.27  864561.17  184180.21 -229345.93-1496807.12 -808950.75
                       924661.49-8546561.59  973513.84 6469780.18 1308799.84 3888828.33  835264.64 -817556.35-4821233.44-6401984.04

   26   5.2  0.5 -0.5 3284123.64-1903904.12 1259426.64 -409661.01 -510019.97  437205.34  325060.46  491450.00   37129.08   36384.39
                      -661537.74  -15454.89 -346090.02 -294414.56 -932196.33 1366955.15  659553.22-1216501.37-1226668.26 -166640.86

   27   6.2  0.5 -0.5-1681087.22-3966946.34 -821132.20 -375143.08  557309.96   -8770.42 -224795.13 -667092.89  959053.41 -313969.77
                      -759492.03  537658.55 -559681.09   73225.24 1310485.92-2467685.80  102836.46 -614753.32  741894.09  744097.02

   28   7.2  0.5 -0.5-2911997.20 1003734.62-1132554.56  398468.15  664266.07 -202127.98 -325858.92 -614740.88  181051.52  -70079.28
                     -2886503.52 3480027.28 -395928.93  479690.87 -670908.49 1189083.72 1374230.06-1951323.47-1603008.77  266750.04

   29   8.2  0.5 -0.5-2570432.31  314017.81  309950.54 2772448.26 -507820.81  731360.38 -457565.95 -297516.10 -524544.76  140290.11
                     -2778473.69 3494032.09  -29484.88 -730933.43 -222257.69 -382933.01  458682.09 -120144.00-1010955.76  881468.41

   30   9.2  0.5 -0.530828842.97-2636839.54 -964827.63-2376478.62 4165597.14 5944043.36 -339121.34 -726065.97 -398871.00-7910801.65
                     ***********30445209.88 8989976.45********************** 5943337.42-9096849.22 7516813.15***********15110465.11

   31  10.2  0.5 -0.5 4216043.63 1908050.53 -881790.31 3105306.73-1243236.03 -319081.91  647060.01  329200.62 1043843.96-1253521.12
                     -9750657.48*********** 3402580.20 4395315.86 2116243.17 4460966.84-3756944.85 4653304.53-2194538.07  -92018.21

   32  11.2  0.5 -0.513385989.30 6580898.85-1346319.75 -385572.26  882314.85 2529043.30-2224149.27 1844911.74-1980587.30-6410393.91
                     15651815.0710145816.30-4926941.67-5016731.50 7499671.46*********** 5294600.82-2046748.3718455766.71 9772582.41

   33  12.2  0.5 -0.5-2687159.82 7418137.40-2523099.69-2226166.76 -587767.02 2951250.96 -897361.93 -253399.09-1718437.90  273090.61
                      -274954.6911246811.12 5016298.41-4643198.52   49038.64-1854627.70 2414159.40  512442.50 5451328.04 4356355.45

   34  13.2  0.5 -0.5********************** -971230.87-4080785.64 2991985.16-2411329.50 3068727.52-4189203.79-1960853.79 5366784.92
                     ***********53345045.16-4656224.97***********-3875996.06 1371270.03-5416931.26 -167540.21 3046941.4611256591.60

   35  14.2  0.5 -0.5 -301537.83 2956620.87-1299605.76-4053418.30  584148.23-2210399.29   53150.25 1638719.91 2211659.25  809690.20
                     -1188822.63 4157498.10 -569589.89 2104209.31  546030.90  117158.95-4460254.27 -818937.45-1455002.85 1344586.97

   36  15.2  0.5 -0.5-5873274.39-5383913.48-4085931.79 6636078.07-2318952.29-3349546.83-3232334.28 2469586.52  629475.92-2964989.91
                     -1140879.4510433936.16 3022508.39-6447433.84 -994602.72 4323133.77 1524295.75-1264520.54 6041908.76 1061263.84

   37  16.2  0.5 -0.5  842062.20***********  452513.34 2485557.18  648639.25-1799686.83 -249996.29 1153392.51   75917.49 -202228.28
                     ***********16683630.43-2097395.20 4137587.82  843835.54 3855589.19 3033979.67-3522896.26-4337483.03  -38801.97

   38  17.2  0.5 -0.5 3036846.17-5191416.26 -790503.67 1710944.79  689320.15  884628.72  963206.84 2983916.64 3771625.40  672904.07
                     -3952425.44 1132507.89  311835.79-1582623.70-1244560.61   10201.74-1430239.20   -2990.56-1395636.63 1185461.12


   Nr   State  S   Sz       21         22         23         24         25         26         27         28         29         30

    1   1.2  1.5  1.5      -0.83       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            3.65       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    2   1.2  1.5  0.5       0.00       0.00      -0.00      -0.00       0.00      -0.00   -1222.95    -148.46     -19.06       0.00
                          642.20      -0.00      -0.00       0.00      -0.00       0.00     147.75   -1222.46      41.94      -0.00

    3   1.2  1.5 -0.5      -0.48       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -2.11      -0.00      -0.00      -0.00      -0.00       0.00     -47.93      78.68    2462.42      -0.00

    4   1.2  1.5 -1.5       0.00       0.00      -0.00      -0.00       0.00      -0.00   -2118.21    -257.14     -33.01       0.00
                            0.00       0.00       0.00      -0.00       0.00      -0.00    -255.90    2117.37     -72.64       0.00

    5   1.2  0.5  0.5       0.00-4825923.66-2729582.05 1101854.61-1020212.67 3722718.79 -656270.68-3093961.94-5684841.33 1790823.67
                     12879543.82-5905697.55 4406396.22 3256151.98-3235614.37-5027517.60-4562213.28-8806127.92  -93364.16***********

    6   2.2  0.5  0.5       0.00-1737382.65 2251927.01 1317964.21-7160979.72-1145687.96-1063508.63  241864.15-2497171.76-3907111.77
                     18165763.1220544821.9514355674.70 3943702.3948354547.38 9727576.43*********** 6007489.80-1202275.0475316182.24

    7   3.2  0.5  0.5       0.00 1710778.46 1473307.06-1130051.38-3505063.74-2564575.80  220268.69 1402038.16 4596396.90***********
                     -2788833.80 7135327.39-1842670.20 1467404.26 5719187.82-3674080.26 2025806.88-9671896.47-2681115.62***********

    8   4.2  0.5  0.5       0.00 4097513.82-2581593.76  226760.32 -863995.90 1930304.06 -898653.86-2777542.58 1604067.71***********
                      4074880.43 1272688.23-3068422.29 2100893.16 1691855.21-3914401.31 2087912.32-4336412.93-2582151.16***********

    9   5.2  0.5  0.5       0.00 3784639.22 -865851.58 1379550.18 -962111.69  -20518.86-1924853.56  -60005.77 1243753.61***********
                     15464186.1811113265.30 4030376.46-3143917.3414555899.03  605648.56-6492515.18  911401.28  185104.50***********

   10   6.2  0.5  0.5       0.00 -547095.88 -168679.73 -462380.08-7145304.92 1017128.95 1176379.43 -633588.54 -925919.05 9421959.10
                     -2767923.6417408361.50 8783787.56 2592240.8341877020.44 6860827.70-5228046.51 5434696.45  273100.1183599350.33

   11   7.2  0.5  0.5       0.00-4726270.73-3263738.83-2142427.63  814727.34 3284123.64-1681087.22-2911997.20-2570432.3130828842.97
                      4423750.58-1282474.50   83882.67-1380718.91 -924661.49  661537.74  759492.03 2886503.52 2778473.6918667733.60

   12   8.2  0.5  0.5       0.00 4309192.88-5570777.87  698908.28-4826733.75-1903904.12-3966946.34 1003734.62  314017.81-2636839.54
                      5402468.83 9752181.78 3137460.26 1790218.15 8546561.59   15454.89 -537658.55-3480027.28-3494032.09***********

   13   9.2  0.5  0.5       0.00   91444.63-1931177.20 -631991.92  296996.35 1259426.64 -821132.20-1132554.56  309950.54 -964827.63
                       781680.31  746170.54-1145114.53 -594457.01 -973513.84  346090.02  559681.09  395928.93   29484.88-8989976.45

   14  10.2  0.5  0.5       0.00-1555740.04  637370.15-2519035.22   20811.87 -409661.01 -375143.08  398468.15 2772448.26-2376478.62
                      4333320.63-3282146.27  -55612.87  889693.74-6469780.18  294414.56  -73225.24 -479690.87  730933.4312883248.11

   15  11.2  0.5  0.5       0.00-1633304.35  742467.66 -283880.06  371858.27 -510019.97  557309.96  664266.07 -507820.81 4165597.14
                      -763267.65-1258206.73 1792811.32 -114299.42-1308799.84  932196.33-1310485.92  670908.49  222257.6924962444.37

   16  12.2  0.5  0.5       0.00  126394.85 -351222.76   65434.46  864561.17  437205.34   -8770.42 -202127.98  731360.38 5944043.36
                     -3685559.62 -953179.35-2699529.79  109208.83-3888828.33-1366955.15 2467685.80-1189083.72  382933.01-5943337.42

   17  13.2  0.5  0.5       0.00-1000769.52 -482666.69  -42530.32  184180.21  325060.46 -224795.13 -325858.92 -457565.95 -339121.34
                      1591341.76 -468142.28 -243420.63  891602.82 -835264.64 -659553.22 -102836.46-1374230.06 -458682.09 9096849.22

   18  14.2  0.5  0.5       0.00  252445.30 -875582.09  108138.15 -229345.93  491450.00 -667092.89 -614740.88 -297516.10 -726065.97
                        73500.67  537426.67 -106094.37  -81633.32  817556.35 1216501.37  614753.32 1951323.47  120144.00-7516813.15

   19  15.2  0.5  0.5       0.00  -87535.15  504601.20 -473174.13-1496807.12   37129.08  959053.41  181051.52 -524544.76 -398871.00
                     -3271821.31  695294.28 1884339.02-1464305.98 4821233.44 1226668.26 -741894.09 1603008.77 1010955.7617610464.35

   20  16.2  0.5  0.5       0.00 1566280.85 -300211.53  606840.36 -808950.75   36384.39 -313969.77  -70079.28  140290.11-7910801.65
                      -261383.02 3694434.83  147617.13   14028.81 6401984.04  166640.86 -744097.02 -266750.04 -881468.41***********

   21  17.2  0.5  0.5   57806.94 -667000.72 -399568.19  356498.03 -264994.63 -628996.81  -90033.35  655939.61 -622029.96-1957483.31
                      1990849.86  517589.57 1497669.36  427429.97  234783.50 -791425.68-1015832.52 -619489.88 -581017.36 7648708.88

   22   1.2  0.5 -0.5 -667000.72    9833.56       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                      -517589.5719989812.0517254612.62  876898.8433600476.8714650938.09*********** 9059923.69 4772915.9442372868.00

   23   2.2  0.5 -0.5 -399568.19       0.00    9833.59       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                     -1497669.36**********************-3608259.80-2789259.02-6021534.0510227450.41 2493990.84 4894191.73***********

   24   3.2  0.5 -0.5  356498.03       0.00       0.00    9833.57       0.00       0.00       0.00       0.00       0.00       0.00
                      -427429.97 -876898.84 3608259.80 3161932.68***********-2720190.6011123063.41-7348455.86 2530851.01***********

   25   4.2  0.5 -0.5 -264994.63       0.00       0.00       0.00    9833.46       0.00       0.00       0.00       0.00       0.00
                      -234783.50*********** 2789259.0250366542.22 -461030.20 1179831.42  514993.08 -386778.51  627996.4557043112.93

   26   5.2  0.5 -0.5 -628996.81       0.00       0.00       0.00       0.00    9833.48       0.00       0.00       0.00       0.00
                       791425.68*********** 6021534.05 2720190.60-1179831.42 -867512.90 4646801.84 2305921.34 2133482.73***********

   27   6.2  0.5 -0.5  -90033.35       0.00       0.00       0.00       0.00       0.00   16412.17       0.00       0.00       0.00
                      1015832.5210060567.83********************** -514993.08-4646801.84-2417269.31 1654176.31 2260975.9954973404.74

   28   7.2  0.5 -0.5  655939.61       0.00       0.00       0.00       0.00       0.00       0.00   16412.22       0.00       0.00
                       619489.88-9059923.69-2493990.84 7348455.86  386778.51-2305921.34-1654176.31 4251446.29 1292744.32 1935299.50

   29   8.2  0.5 -0.5 -622029.96       0.00       0.00       0.00       0.00       0.00       0.00       0.00   16412.18       0.00
                       581017.36-4772915.94-4894191.73-2530851.01 -627996.45-2133482.73-2260975.99-1292744.32 1214489.72***********

   30   9.2  0.5 -0.5-1957483.31       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   54439.42
                     -7648708.88********************************************49698648.72***********-1935299.5045076226.2519070967.39

   31  10.2  0.5 -0.5 -600911.23       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                     -6160784.7015632188.6811916361.9040370543.18 9084946.9711738092.29-3758567.62-1118001.04 2027159.95***********

   32  11.2  0.5 -0.5-2105549.40       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                      3182644.50*********************************19739629.38-3694679.3934343327.7635067268.14***********65572539.93

   33  12.2  0.5 -0.5 1561458.97       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                        13279.8827872467.15 3011308.93*********** 6949597.86-1219958.85-7788550.45 8290024.00-3731357.8611027681.80

   34  13.2  0.5 -0.5 5612686.22       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                      3756278.8366235789.37**********************41655893.87 4590125.85***********64235685.4356454685.6514941674.27

   35  14.2  0.5 -0.5 2386011.55       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                      -194104.1511142389.4731245427.37 3467683.59-1103072.3913335310.7114136420.92-4186094.22-6667272.70 -192391.33

   36  15.2  0.5 -0.5-4779807.58       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                      -231788.41***********15204367.4920611313.39-7187581.83-2966170.56 6055658.35 7683128.3410713321.33 1666439.35

   37  16.2  0.5 -0.5-2083091.36       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                      2342993.44  849592.27***********56610023.0525422657.42-9588898.78 4271882.70***********  150007.23***********

   38  17.2  0.5 -0.5  599931.11       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                      -110973.5812879543.8218165763.12-2788833.80 4074880.4315464186.18-2767923.64 4423750.58 5402468.83  781680.31


   Nr   State  S   Sz       31         32         33         34         35         36         37         38

    1   1.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    2   1.2  1.5  0.5      -0.00      -0.00       0.00      -0.00       0.00    -321.10       0.69      -0.48
                           -0.00      -0.00      -0.00      -0.00       0.00       0.69     321.10       2.11

    3   1.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00      -0.01      -0.97      -4.21     642.20

    4   1.2  1.5 -1.5      -0.00      -0.00       0.01      -0.00       0.00    -556.17       1.19      -0.83
                            0.01       0.00       0.00       0.00      -0.00      -1.19    -556.16      -3.65

    5   1.2  0.5  0.5 9279364.03-5480345.50-9467812.4421083754.10 4277046.59***********-2117543.54 8061130.97
                     38777048.78********************** 9863591.1220174230.69**********************  864405.60

    6   2.2  0.5  0.5 2267925.81-9273590.57***********-9590752.15 4543637.2912968250.10 5457883.06 3792133.52
                      5430533.77*********************************-5840812.8018427952.76  570192.89 -722799.52

    7   3.2  0.5  0.5 4536241.37-4067270.58 2392204.36 2428406.96*********** -308377.31**********************
                     37246598.55*********** 2810076.75***********-6265134.47-5133790.19***********  233470.76

    8   4.2  0.5  0.5 5890361.86-3499834.01  381445.3310243354.32  -22413.93  781151.50-1331179.00 3269294.06
                     14241084.9919405393.09  284399.45*********** 8493444.82 -929967.51-5270257.50 -909009.26

    9   5.2  0.5  0.5  996127.99***********-2551799.5023935202.09-5156476.75-1918938.48 3622676.58-7991946.48
                     17754791.47***********-8132563.14*********** 1462566.1417134483.7412822568.25 2520304.97

   10   6.2  0.5  0.5 2226770.79-8933164.62********************** 5436605.78-3195966.06  802194.1415033489.21
                      -734028.58*********************************-1326030.57*********** 3627621.30-2017110.81

   11   7.2  0.5  0.5 4216043.6313385989.30-2687159.82*********** -301537.83-5873274.39  842062.20 3036846.17
                      9750657.48***********  274954.6925511718.29 1188822.63 1140879.4511246250.65 3952425.44

   12   8.2  0.5  0.5 1908050.53 6580898.85 7418137.40*********** 2956620.87-5383913.48***********-5191416.26
                     34234766.39*********************************-4157498.10**********************-1132507.89

   13   9.2  0.5  0.5 -881790.31-1346319.75-2523099.69 -971230.87-1299605.76-4085931.79  452513.34 -790503.67
                     -3402580.20 4926941.67-5016298.41 4656224.97  569589.89-3022508.39 2097395.20 -311835.79

   14  10.2  0.5  0.5 3105306.73 -385572.26-2226166.76-4080785.64-4053418.30 6636078.07 2485557.18 1710944.79
                     -4395315.86 5016731.50 4643198.5210638788.17-2104209.31 6447433.84-4137587.82 1582623.70

   15  11.2  0.5  0.5-1243236.03  882314.85 -587767.02 2991985.16  584148.23-2318952.29  648639.25  689320.15
                     -2116243.17-7499671.46  -49038.64 3875996.06 -546030.90  994602.72 -843835.54 1244560.61

   16  12.2  0.5  0.5 -319081.91 2529043.30 2951250.96-2411329.50-2210399.29-3349546.83-1799686.83  884628.72
                     -4460966.8422291879.71 1854627.70-1371270.03 -117158.95-4323133.77-3855589.19  -10201.74

   17  13.2  0.5  0.5  647060.01-2224149.27 -897361.93 3068727.52   53150.25-3232334.28 -249996.29  963206.84
                      3756944.85-5294600.82-2414159.40 5416931.26 4460254.27-1524295.75-3033979.67 1430239.20

   18  14.2  0.5  0.5  329200.62 1844911.74 -253399.09-4189203.79 1638719.91 2469586.52 1153392.51 2983916.64
                     -4653304.53 2046748.37 -512442.50  167540.21  818937.45 1264520.54 3522896.26    2990.56

   19  15.2  0.5  0.5 1043843.96-1980587.30-1718437.90-1960853.79 2211659.25  629475.92   75917.49 3771625.40
                      2194538.07***********-5451328.04-3046941.46 1455002.85-6041908.76 4337483.03 1395636.63

   20  16.2  0.5  0.5-1253521.12-6410393.91  273090.61 5366784.92  809690.20-2964989.91 -202228.28  672904.07
                        92018.21-9772582.41-4356355.45***********-1344586.97-1061263.84   38801.97-1185461.12

   21  17.2  0.5  0.5 -600911.23-2105549.40 1561458.97 5612686.22 2386011.55-4779807.58-2083091.36  599931.11
                      6160784.70-3182644.50  -13279.88-3756278.83  194104.15  231788.41-2342993.44  110973.58

   22   1.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                     *******************************************************23856967.94 -849592.27***********

   23   2.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                     ***********62276950.70-3011308.9317983797.39**********************21379426.96***********

   24   3.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                     ***********11876051.2147765508.73***********-3467683.59********************** 2788833.80

   25   4.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                     -9084946.97***********-6949597.86*********** 1103072.39 7187581.83***********-4074880.43

   26   5.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                     *********** 3694679.39 1219958.85-4590125.85*********** 2966170.56 9588898.78***********

   27   6.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                      3758567.62*********** 7788550.4523825596.67***********-6055658.35-4271882.70 2767923.64

   28   7.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                      1118001.04***********-8290024.00*********** 4186094.22-7683128.3411431150.58-4423750.58

   29   8.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                     -2027159.9511546477.08 3731357.86*********** 6667272.70*********** -150007.23-5402468.83

   30   9.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                     10049158.99*********************************  192391.33-1666439.3510730531.93 -781680.31

   31  10.2  0.5 -0.5   56691.46       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                     -5777108.59 7350770.88-4719814.40-2130435.01-4666179.25-4488364.15 3456553.37-4333320.63

   32  11.2  0.5 -0.5       0.00   56691.45       0.00       0.00       0.00       0.00       0.00       0.00
                     -7350770.88-7200595.39-3225672.67 3013957.18 -350111.77-5501039.48 3159602.74  763267.65

   33  12.2  0.5 -0.5       0.00       0.00   56691.49       0.00       0.00       0.00       0.00       0.00
                      4719814.40 3225672.67 -304439.92 1883576.49 1564025.60 2604240.58-4365947.86 3685559.62

   34  13.2  0.5 -0.5       0.00       0.00       0.00   56691.48       0.00       0.00       0.00       0.00
                      2130435.01-3013957.18-1883576.49***********-2410437.16 2075280.56 1866173.23-1591341.76

   35  14.2  0.5 -0.5       0.00       0.00       0.00       0.00   56691.59       0.00       0.00       0.00
                      4666179.25  350111.77-1564025.60 2410437.16 1688283.19 1190695.85 2826807.37  -73500.67

   36  15.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00   57806.82       0.00       0.00
                      4488364.15 5501039.48-2604240.58-2075280.56-1190695.85 1174206.57-3251855.28 3271821.31

   37  16.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00   57806.86       0.00
                     -3456553.37-3159602.74 4365947.86-1866173.23-2826807.37 3251855.28-1868709.50  261383.02

   38  17.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00   57806.94
                      4333320.63 -763267.65-3685559.62 1591341.76   73500.67-3271821.31 -261383.02-1990849.86


 No symmetry adaption


 Spin-orbit eigenstates   (energies)
 ======================

     Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
              (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1 -2179.89344476 -1939.70093280************      0.00000000        0.00      0.0000
     2 -1736.71479669 -1496.52228473************    443.17864807 97266470.41  12059.5054
     3 -1571.90707963 -1331.71456767************    607.98636513133437583.36  16544.1518
     4 -1236.41445785  -996.22194589************    943.47898691207069702.85  25673.3711
     5  -813.16611036  -572.97359840************   1366.72733440299961977.89  37190.5454
     6  -605.92344313  -365.73093117-80268661.30   1573.97000163345446485.88  42829.9057
     7  -564.26703951  -324.07452754-71126137.47   1615.62640526354589009.71  43963.4341
     8  -491.81792477  -251.62541281-55225394.72   1688.07551999370489752.46  45934.8750
     9  -424.79682616  -184.60431420-40515963.81   1755.09661860385199183.37  47758.6120
    10  -398.16858890  -157.97607694-34671741.25   1781.72485586391043405.93  48483.2032
    11  -374.00696557  -133.81445361-29368877.88   1805.88647919396346269.30  49140.6745
    12  -346.26539439  -106.07288243-23280306.77   1833.62805037402434840.41  49895.5611
    13  -316.91043558   -76.71792362-16837638.01   1862.98300918408877509.18  50694.3502
    14  -277.95684246   -37.76433050 -8288312.52   1901.93660230417426834.67  51754.3315
    15  -265.63837831   -25.44586635 -5584722.14   1914.25506645420130425.04  52089.5340
    16  -256.14287744   -15.95036548 -3500700.58   1923.75056732422214446.60  52347.9197
    17  -243.32031777    -3.12780581  -686474.03   1936.57312699425028673.15  52696.8394
    18  -240.19251420    -0.00000224       -0.49   1939.70093056425715146.69  52781.9512
    19  -240.19251224    -0.00000028       -0.06   1939.70093252425715147.12  52781.9513
    20  -240.19251096     0.00000100        0.22   1939.70093380425715147.40  52781.9513
    21  -240.19250884     0.00000312        0.68   1939.70093592425715147.87  52781.9514
    22  -233.67262006     6.51989190  1430950.87   1946.22082470427146098.05  52959.3666
    23  -225.66264022    14.52987174  3188938.24   1954.23080454428904085.43  53177.3292
    24  -207.48168913    32.71082283  7179195.78   1972.41175563432894342.96  53672.0581
    25  -202.61030797    37.58220399  8248340.37   1977.28313679433963487.55  53804.6152
    26  -177.95597252    62.23653944 13659341.55   2001.93747224439374488.73  54475.4938
    27  -155.54321860    84.64929336 18578372.46   2024.35022616444293519.64  55085.3759
    28  -136.69471568   103.49779628 22715140.69   2043.19872908448430287.87  55598.2698
    29   -69.86759606   170.32491590 37381998.13   2110.02584870463097145.31  57416.7284
    30   -39.39528009   200.79723187 44069898.44   2140.49816467469785045.62  58245.9223
    31    11.68194049   251.87445245 55280052.60   2191.57538525480995199.78  59635.8043
    32    96.11906638   336.31157834 73811859.68   2276.01251114499527006.86  61933.4555
    33   157.04188028   397.23439224 87182871.80   2336.93532504512898018.98  63591.2498
    34   339.88870457   580.08121653127313111.16   2519.78214933553028258.34  68566.7653
    35   756.56968508   996.76219705218764015.75   2936.46312985644479162.93  79905.2324
    36  1093.18954579  1333.38205775292643535.59   3273.08299055718358682.77  89065.1255
    37  1267.95159904  1508.14411100330999372.80   3447.84504380756714519.98  93820.6432
    38  1668.76332697  1908.95583893418967379.04   3848.65677173844682526.22 104727.2859


 Eigenvectors of spin-orbit matrix
 =================================

  Basis states          Eigenvectors (columnwise)

   Nr   State  S   Sz        1             2             3             4             5             6             7             8

    1    1.2  1.5  1.5  -0.000001731   0.000000599   0.000001895  -0.000001404   0.000004410  -0.000004802   0.000007357   0.000007466
                         0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000

    2    1.2  1.5  0.5  -0.000000251   0.000000350  -0.000000746   0.000000905   0.000001815   0.000014807  -0.000008849   0.000007837
                        -0.000000057   0.000000552   0.000000531   0.000001261  -0.000003732  -0.000006585   0.000001016   0.000000853

    3    1.2  1.5 -0.5  -0.000000930  -0.000000129   0.000000504   0.000000942   0.000002067  -0.000002563  -0.000002789   0.000004552
                        -0.000000294   0.000000403  -0.000000004   0.000001288  -0.000004664  -0.000000231   0.000001541   0.000005291

    4    1.2  1.5 -1.5  -0.000000739   0.000000308  -0.000000181   0.000000810   0.000002975  -0.000002314   0.000002351   0.000003789
                         0.000000359   0.000000261  -0.000000419   0.000000452  -0.000001726   0.000004477  -0.000001675   0.000006767

    5    1.2  0.5  0.5  -0.224329584   0.136638577   0.051374735  -0.190812742  -0.117568500   0.154892952   0.088135982   0.040657918
                         0.026730082  -0.309712764   0.057496640   0.397349532   0.053327729   0.015547058   0.152396934   0.147574202

    6    2.2  0.5  0.5  -0.369734028  -0.290916331  -0.098714681   0.045758848  -0.078305015   0.207872079   0.114444034  -0.105433258
                        -0.054343916   0.089356933  -0.025735799  -0.210085091  -0.021252994   0.101806982  -0.017109915   0.053332139

    7    3.2  0.5  0.5   0.042298276   0.160851779   0.501582972   0.259686740  -0.054531595   0.175851756   0.079410615  -0.008840094
                        -0.045946518   0.113483365   0.184448093  -0.059733041   0.036866502   0.161585114  -0.049524577   0.050702767

    8    4.2  0.5  0.5   0.080469330  -0.013105137   0.074728409  -0.005480834  -0.020222996  -0.045288485   0.031891950  -0.067142153
                         0.005022377   0.005630958   0.088827334   0.248700655   0.063094823   0.046403738  -0.342561902  -0.246176170

    9    5.2  0.5  0.5   0.015388202  -0.159575789  -0.004610105  -0.064844929  -0.246400712   0.187639423  -0.022741737  -0.026757275
                        -0.051959085   0.076554640  -0.056360766   0.042808186   0.108726785   0.034967896   0.017864919  -0.021453983

   10    6.2  0.5  0.5  -0.296372112  -0.005379879   0.222235556  -0.032688999   0.050014259  -0.116631091  -0.017777257   0.011289848
                        -0.004596734  -0.002137744   0.066699628   0.018603642  -0.155551261  -0.115746773   0.028443260   0.102517268

   11    7.2  0.5  0.5  -0.034314158  -0.002856076  -0.055537784  -0.070330489   0.153741003   0.065762100   0.022469428  -0.055807385
                         0.040782207  -0.089230961  -0.013250375   0.145756702  -0.185947195   0.049028866  -0.236376329  -0.149971849

   12    8.2  0.5  0.5  -0.001305461  -0.127059055  -0.021224466  -0.118328112   0.221070422   0.152095132  -0.127692781   0.004478707
                        -0.014558219   0.046267324  -0.076669864   0.078206697   0.162004226   0.340482884  -0.267360307   0.207064975

   13    9.2  0.5  0.5   0.012723796  -0.013970358   0.192215655   0.115216879  -0.112789928  -0.063933599  -0.171061314  -0.174837228
                        -0.069415487  -0.318740175  -0.456570178  -0.044545624  -0.064818074   0.103001392  -0.003950952  -0.007126564

   14   10.2  0.5  0.5  -0.004263265   0.011403856  -0.077427803   0.012396193  -0.035821527  -0.110618914   0.056798028  -0.078221196
                        -0.006000922   0.004037536   0.060390126   0.008601516  -0.060894338   0.182244103   0.050516745  -0.084174113

   15   11.2  0.5  0.5  -0.046579245   0.273050270   0.042975344  -0.383082517   0.061950714   0.050660374  -0.230007585  -0.204958281
                        -0.052986535   0.100071838   0.116224751  -0.170654207  -0.129405941   0.029713069  -0.008390174  -0.026977102

   16   12.2  0.5  0.5   0.031314307   0.065444304   0.034814183  -0.062988268   0.063138280   0.029553473  -0.046613705   0.091043382
                        -0.005559213  -0.017213227  -0.078521396  -0.084907724   0.010760151  -0.041271636   0.008738301   0.017770915

   17   13.2  0.5  0.5  -0.038378104   0.141544991   0.094864968  -0.278129551  -0.040647456  -0.056218746   0.402919919   0.158882791
                        -0.009354963  -0.059208732  -0.208791632  -0.251714437   0.148045341  -0.034093440  -0.173738281  -0.070868179

   18   14.2  0.5  0.5   0.015033997  -0.007827272  -0.004092664   0.011108112   0.019875248  -0.042438903  -0.055454050  -0.098197591
                        -0.045153569  -0.015846195  -0.000731119   0.000325599  -0.101018721   0.068371302   0.105094440  -0.056309472

   19   15.2  0.5  0.5  -0.038107593  -0.032244121   0.000349188   0.068408302   0.047477245  -0.116825414   0.088245359  -0.030468790
                        -0.007302651  -0.012997870   0.030259515   0.038227099   0.039312536   0.037016050  -0.018512253  -0.084426055

   20   16.2  0.5  0.5  -0.000846620  -0.051614285  -0.037602270  -0.056360400  -0.096003257  -0.076074751   0.074790533   0.030468115
                         0.017397658   0.070774895   0.104873581   0.079773036   0.017284546   0.023002950   0.039387081   0.109680124

   21   17.2  0.5  0.5  -0.009096296   0.005536339   0.009793017  -0.020194810  -0.029936835  -0.047508390   0.007469645   0.004846829
                        -0.021546026  -0.028760651  -0.003645988  -0.019173454  -0.004513543   0.126795851   0.034460280  -0.039866515

   22    1.2  0.5 -0.5  -0.265836820  -0.166540952   0.122258017  -0.033776107  -0.014129907  -0.252443078  -0.052430401   0.129981695
                        -0.098271757  -0.005704933   0.068342713   0.002899115  -0.149717608  -0.075040539  -0.184878565  -0.106780274

   23    2.2  0.5 -0.5   0.219422478  -0.057649874   0.014253507  -0.069918459  -0.094457286  -0.053673863   0.071854019   0.036710125
                        -0.038426735   0.046402550  -0.061228760   0.038729885  -0.225938733  -0.023581336  -0.149750740   0.384003278

   24    3.2  0.5 -0.5  -0.145144506   0.316003053  -0.265215837   0.276258768  -0.027305178  -0.061993563  -0.024057308   0.016114372
                         0.080597745  -0.178674301   0.073661812  -0.126628199   0.001122880   0.061755501  -0.216743913   0.161702352

   25    4.2  0.5 -0.5  -0.076471538  -0.054364247   0.021487444   0.033294568   0.196564415  -0.112981023  -0.124457148   0.063763102
                        -0.076616256  -0.142050928   0.115637930  -0.072283137   0.180007328   0.095891031   0.083275569   0.072442227

   26    5.2  0.5 -0.5   0.063689934  -0.055356491   0.025684745  -0.007095306  -0.030348103  -0.065914991  -0.010228890   0.101627571
                        -0.035115513   0.020017809  -0.013198450  -0.004910799  -0.085017226  -0.092355152  -0.112392222   0.153901041

   27    6.2  0.5 -0.5  -0.097734290   0.047193430  -0.036056739   0.049519610  -0.000460027   0.063701970   0.079855137  -0.064084074
                         0.035018353  -0.010274920   0.013220785  -0.002780248  -0.042049827   0.022889454  -0.125427964   0.079221068

   28    7.2  0.5 -0.5  -0.049418868  -0.083665598   0.085053951  -0.039209853   0.115286427  -0.084967229  -0.096147554  -0.029705120
                        -0.036531868  -0.006424066   0.000480733   0.019190044   0.142420808  -0.150200246  -0.003821150   0.081193072

   29    8.2  0.5 -0.5   0.046103983  -0.068335017   0.063173549  -0.072748546   0.085594919  -0.093849163  -0.029627176  -0.103984447
                        -0.021380279   0.035557901  -0.020597461   0.037540202   0.135673207  -0.078573760   0.035029618   0.212378540

   30    9.2  0.5 -0.5  -0.111475253   0.201398784  -0.084483878   0.060171008  -0.190671384  -0.014650727  -0.108672012   0.045134050
                        -0.441721056   0.274321020  -0.150105626   0.155391659   0.161714984  -0.041888932  -0.055776099   0.016367596

   31   10.2  0.5 -0.5   0.029421190  -0.018066001  -0.014208106  -0.123599060  -0.124269466  -0.291585626  -0.040437882   0.061490968
                        -0.004770266  -0.004512201   0.082142377  -0.080581206  -0.024019447   0.364100759   0.156773595  -0.006571172

   32   11.2  0.5 -0.5  -0.147888050   0.038417014   0.079715012  -0.024597922  -0.224465695  -0.074885195  -0.199631529   0.012473356
                         0.492565986   0.218096015  -0.130086524   0.042040992   0.154835527  -0.039741299  -0.030275192   0.021708510

   33   12.2  0.5 -0.5  -0.059317166   0.004935303  -0.015547340   0.061458048  -0.038915124   0.027633520   0.160112997  -0.050362635
                         0.052497826   0.066263601  -0.072643969   0.096693542   0.004398922   0.009328606   0.062160315  -0.069940087

   34   13.2  0.5 -0.5  -0.103005307   0.101177120   0.009399160   0.063898883   0.411023560  -0.040778969   0.091226369   0.074306416
                         0.062415932   0.257500769  -0.273305752   0.124627740  -0.225667674   0.181842216   0.105669306   0.042469175

   35   14.2  0.5 -0.5   0.006129705   0.034674587   0.012267428  -0.031076520  -0.132704457   0.059031821  -0.151491550   0.259343239
                        -0.012008694   0.023745500  -0.000032007  -0.031423813   0.016624214   0.070325122   0.001504829  -0.100299507

   36   15.2  0.5 -0.5   0.015175974  -0.004664949   0.012147181   0.004376946   0.030115448   0.039691316  -0.065831165   0.398600774
                        -0.011753266  -0.082096996  -0.012519708   0.037489209  -0.006434541   0.039840068   0.003978619   0.071728028

   37   16.2  0.5 -0.5   0.022187858  -0.055596492   0.075019754  -0.023390472   0.130439350   0.252081119  -0.139220874   0.176322264
                         0.035947797  -0.073952780   0.011620821  -0.078290498  -0.042588970  -0.002436454  -0.069825742   0.003392442

   38   17.2  0.5 -0.5   0.010203198   0.009445144   0.020449147   0.029564594  -0.057633931   0.044809020  -0.075706091   0.192978429
                        -0.007079200   0.035642202  -0.012430615  -0.006634578   0.039930668   0.176017682  -0.005380866  -0.043050082


   Nr   State  S   Sz        9            10            11            12            13            14            15            16

    1    1.2  1.5  1.5   0.000027972  -0.000019821   0.000012402   0.000004956   0.000037027  -0.000057748  -0.000033955  -0.000116028
                        -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000

    2    1.2  1.5  0.5  -0.000000100  -0.000021992  -0.000005661   0.000030519   0.000025429   0.000016321  -0.000034636   0.000026318
                         0.000000304  -0.000005310   0.000016055   0.000008433  -0.000027155   0.000043497  -0.000041610   0.000030605

    3    1.2  1.5 -0.5   0.000002698   0.000018121  -0.000014332  -0.000038641   0.000025823  -0.000050889  -0.000007382   0.000280179
                        -0.000000806  -0.000015170   0.000007046  -0.000040215  -0.000028402  -0.000022399   0.000027246  -0.000029578

    4    1.2  1.5 -1.5  -0.000008030   0.000001536  -0.000005089  -0.000019637  -0.000003860   0.000181528  -0.000087276  -0.000151614
                        -0.000007946   0.000005391   0.000026255  -0.000012790   0.000002889  -0.000085708  -0.000047097  -0.000074076

    5    1.2  0.5  0.5  -0.060426836  -0.043117811  -0.024025229   0.053979435  -0.112421621  -0.017311985   0.030863352   0.000562307
                         0.065807594   0.054995371   0.012186672   0.035593723   0.046693036   0.000004900   0.020565135   0.045862422

    6    2.2  0.5  0.5   0.039860682  -0.123548866   0.090589762  -0.017437874  -0.156260234   0.076633773   0.076161713   0.044309119
                         0.028475755   0.078924246  -0.106905385  -0.076472059  -0.013625064  -0.000468701   0.004339096   0.109472093

    7    3.2  0.5  0.5  -0.054071287   0.054914191   0.000103287   0.034598558  -0.028036315  -0.009651433   0.041738330  -0.014876811
                        -0.028788952   0.090964477   0.028037161  -0.024020754  -0.027309893   0.040665955   0.069285648   0.042141510

    8    4.2  0.5  0.5   0.067400328  -0.269017698   0.074584950  -0.129954839  -0.064216160   0.124530078  -0.041627176   0.036857023
                         0.217278018  -0.096664996  -0.109468166  -0.137446835  -0.056256203  -0.060632704  -0.112295951  -0.028317689

    9    5.2  0.5  0.5  -0.031039642   0.010524520   0.018051822  -0.146675515   0.328977722  -0.023169195  -0.144158321  -0.153146569
                         0.143984514   0.171031090   0.151521039  -0.187913850  -0.036746022  -0.016070115   0.032426642  -0.009342841

   10    6.2  0.5  0.5   0.240534490  -0.000953911   0.164787938  -0.125948770   0.228163073  -0.112305059  -0.020423102   0.042561319
                        -0.084038136  -0.259224604  -0.090447913  -0.053924175  -0.065138439  -0.010290126  -0.194656531  -0.115123213

   11    7.2  0.5  0.5   0.118031223   0.263883153   0.072205513   0.041592734   0.096164390   0.034227818   0.086477548   0.002192085
                        -0.212988287   0.239794598   0.001419664  -0.177395537  -0.125188424   0.092401397   0.099563362   0.155171760

   12    8.2  0.5  0.5  -0.052890662   0.072528821   0.007734695   0.037518872  -0.012041429  -0.144727966   0.038379620  -0.020573925
                        -0.089096743  -0.209150836   0.028061116   0.137803734   0.035252392   0.015300134  -0.038699483  -0.103840973

   13    9.2  0.5  0.5  -0.001424571  -0.018715952   0.003362850  -0.060389051   0.017941730   0.038553004  -0.065965809  -0.011050760
                        -0.012749812   0.012035048  -0.042065111   0.031832520  -0.049412221  -0.005530876   0.064098339  -0.031367280

   14   10.2  0.5  0.5  -0.194612241  -0.215423133   0.116091545   0.141864256   0.095453409  -0.224585346  -0.276730439   0.177712525
                        -0.047830658   0.067459419   0.033131459   0.051479542  -0.281494414   0.138161797  -0.028623303  -0.159358859

   15   11.2  0.5  0.5  -0.078664515  -0.113159656   0.036249536  -0.085267904   0.046364567   0.072823501  -0.036223132  -0.050983330
                        -0.013025950   0.165150924  -0.029741812   0.017548924   0.097298169  -0.037424923   0.098297283   0.009493915

   16   12.2  0.5  0.5  -0.100806211  -0.072682995   0.093724187   0.058252445  -0.093494398   0.217098667  -0.083708759  -0.108644585
                         0.027115164  -0.204184020  -0.030192562  -0.006280973  -0.223412573   0.106151050   0.040530462   0.466575139

   17   13.2  0.5  0.5  -0.005436980   0.023924402   0.031573985  -0.003440468   0.019944147  -0.084805563   0.045803766  -0.014422819
                         0.046655406  -0.005995592   0.049301763  -0.059197931   0.010418108   0.023448457  -0.015978388  -0.110145857

   18   14.2  0.5  0.5  -0.080696027  -0.055246264   0.102845432   0.216802305   0.113840765  -0.003181951   0.250710679  -0.260803897
                         0.114338869  -0.160150383   0.165745570  -0.201077162   0.048838580  -0.060231292  -0.113818091  -0.043773039

   19   15.2  0.5  0.5   0.295983510  -0.108398896   0.052675498   0.013058946  -0.037788651  -0.234803852  -0.129288300  -0.228029883
                        -0.014579177   0.000783936   0.146605537  -0.030477661   0.160212030  -0.156187787   0.370085171   0.173015571

   20   16.2  0.5  0.5  -0.093116219   0.109605838   0.003170442  -0.098741885   0.118774334   0.049475428   0.004513177  -0.207701811
                         0.014334963  -0.189196142  -0.016814476  -0.016055562  -0.206356850   0.150462553   0.296449213  -0.008876714

   21   17.2  0.5  0.5  -0.081876881  -0.238054661  -0.086412828   0.066008878   0.150167185  -0.050375702   0.182247021   0.007551392
                        -0.111131229  -0.095145774   0.113436916  -0.016292546   0.129743382  -0.110155295   0.002807937   0.175963354

   22    1.2  0.5 -0.5  -0.238004340   0.111215458  -0.139582750   0.121617980  -0.058836903   0.001235571  -0.086277296  -0.018820420
                         0.064967836   0.094170975   0.043976734   0.159320893   0.095360486   0.023612953   0.170900496   0.097267355

   23    2.2  0.5 -0.5   0.125975679  -0.052048904   0.236459351   0.005355396  -0.039886496   0.052986037  -0.051073144   0.168663665
                         0.150846641   0.055353436   0.130538578  -0.001972490   0.091646767   0.090708135   0.095450517   0.053589910

   24    3.2  0.5 -0.5  -0.024843151  -0.005264735  -0.002859207   0.064923726   0.101749200  -0.042604528   0.030711494  -0.030266158
                         0.117137400  -0.002402230  -0.055884385  -0.138647895   0.001139126   0.030826190   0.048178348   0.011638517

   25    4.2  0.5 -0.5  -0.133137845   0.029043093   0.292311016  -0.202405646   0.059336847   0.112396703  -0.009249709   0.045717169
                         0.187416732   0.050084962   0.084211927  -0.043798736   0.064189081  -0.000136296  -0.107627019  -0.083950962

   26    5.2  0.5 -0.5  -0.057599600  -0.064663393   0.048080444  -0.020121704   0.000491090  -0.107432057   0.332214862  -0.317639382
                         0.067421292   0.192285312  -0.022881571   0.107334503  -0.079001476  -0.156042863  -0.163647061  -0.064317705

   27    6.2  0.5 -0.5   0.067915333   0.001518381  -0.133714558   0.080960954   0.075966512   0.374194222  -0.153369606  -0.028269976
                        -0.044421957  -0.025431659   0.339739112   0.148607438  -0.159045524  -0.203369450  -0.104570772  -0.017746773

   28    7.2  0.5 -0.5   0.043840689  -0.144196217  -0.089508760   0.247472005  -0.109169516   0.177729205   0.045109040   0.086888634
                        -0.111345034   0.080605409   0.113232187  -0.229675646  -0.154845186   0.265996085  -0.038302495  -0.225309792

   29    8.2  0.5 -0.5  -0.106818518  -0.063943853  -0.106793472   0.260369639   0.167419578   0.021896450  -0.096610495  -0.000362049
                        -0.027566262   0.045278645  -0.271986106  -0.198978843   0.033167583  -0.176064119   0.038960610   0.280216505

   30    9.2  0.5 -0.5   0.042718462  -0.073060147  -0.072002517  -0.083586373   0.031450739  -0.035682361   0.026961840   0.005146261
                         0.080738945  -0.045164290   0.045719617   0.016110695  -0.024259915   0.020700605   0.024542449  -0.018050043

   31   10.2  0.5 -0.5   0.268921037   0.053388623  -0.170737215  -0.027943892  -0.003547770   0.179874906   0.140862174   0.023474574
                         0.058806179   0.006691785  -0.072874332  -0.002759004  -0.113440888  -0.006811440   0.018396641   0.006067105

   32   11.2  0.5 -0.5  -0.041306714  -0.089218585   0.012359596  -0.089480969  -0.010827634  -0.049077123   0.013207911  -0.014213461
                         0.056655737   0.000882217   0.120933613  -0.019935111   0.028983751   0.020653165   0.027588927   0.014079453

   33   12.2  0.5 -0.5   0.023191058  -0.138212484   0.218999025   0.113661683   0.261156714   0.325543601   0.075857361  -0.000285438
                        -0.049743679   0.043860238  -0.248988972   0.132177080   0.258119545   0.138304356   0.056302739  -0.072316573

   34   13.2  0.5 -0.5  -0.046386146   0.073976247  -0.005487673   0.027947017  -0.056648261  -0.021939513   0.017080570   0.023623574
                         0.080279925   0.030209239  -0.025747964  -0.078944984  -0.082596644  -0.051821789   0.001318459  -0.044593221

   35   14.2  0.5 -0.5   0.019383554   0.122938991   0.305864455   0.360124020  -0.044228881   0.017507113  -0.042983678   0.112481320
                        -0.058599301   0.044222431  -0.097523410  -0.021207106  -0.189720116  -0.235192062   0.055533883  -0.125408945

   36   15.2  0.5 -0.5  -0.098493351  -0.228248943  -0.064450343  -0.237449944   0.104373358   0.094464056  -0.048638701  -0.071269160
                        -0.335247247   0.009773684   0.036893988  -0.184688009   0.104689372  -0.008184035   0.157703889   0.015871507

   37   16.2  0.5 -0.5   0.129083330  -0.159257538  -0.245149315   0.072210408   0.185147744  -0.106293682   0.040113539   0.016897809
                         0.359369539  -0.076484073  -0.042240301   0.106699138  -0.052873152   0.026139514   0.156662861  -0.072000292

   38   17.2  0.5 -0.5   0.022195888   0.192788925  -0.108797773   0.125652812  -0.019896720   0.058484460  -0.211467950  -0.049715428
                         0.043343500   0.160944061   0.012168621  -0.049568612   0.242368392   0.195880225  -0.221365228   0.179186846


   Nr   State  S   Sz       17            18            19            20            21            22            23            24

    1    1.2  1.5  1.5   0.000518296  -0.482869959   0.682843923  -0.266807463  -0.478930212   0.000311595  -0.000125657  -0.000049469
                        -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000

    2    1.2  1.5  0.5  -0.000463049   0.218787855   0.282995057  -0.372828842   0.390596762  -0.000152649   0.000111049  -0.000038633
                         0.000168748   0.644720518   0.384966732  -0.124981629  -0.031524294  -0.000165401   0.000219305  -0.000093804

    3    1.2  1.5 -0.5  -0.000271436   0.211877989   0.518734557   0.639131948   0.169920012  -0.000124431   0.000117039  -0.000067207
                        -0.000219621  -0.122320423   0.105383163  -0.239050228   0.406751189   0.000132088  -0.000042329  -0.000104814

    4    1.2  1.5 -1.5  -0.000383492  -0.491674612   0.154217662   0.306064739   0.545092042   0.000266630  -0.000133415   0.000031390
                         0.000118490   0.041291571  -0.038265701   0.463553263  -0.354430212   0.000099060   0.000121775  -0.000009697

    5    1.2  0.5  0.5   0.019677186   0.000015540   0.000010112   0.000007786   0.000043302   0.012873417  -0.005242437  -0.041844581
                        -0.044950658  -0.000025058   0.000006599  -0.000013339  -0.000032387  -0.043995934  -0.021018856  -0.011993926

    6    2.2  0.5  0.5  -0.044092812   0.000022889  -0.000000670   0.000005648  -0.000030364   0.059081489  -0.094405470  -0.069278112
                         0.075949652  -0.000003987  -0.000001575   0.000000322   0.000059691  -0.020204030  -0.059495083  -0.002559991

    7    3.2  0.5  0.5   0.000291167   0.000013016   0.000001661  -0.000000501   0.000012984   0.014670840  -0.025943257  -0.048614058
                        -0.019036545  -0.000019596   0.000005453  -0.000002217  -0.000017534  -0.022960628  -0.000826664  -0.048179757

    8    4.2  0.5  0.5  -0.015496187  -0.000021811  -0.000019503   0.000006987  -0.000053276  -0.011410860  -0.028393509   0.087220616
                         0.145192229   0.000054112  -0.000017829   0.000010268   0.000120552   0.046152923  -0.047840998   0.023272289

    9    5.2  0.5  0.5   0.086672808   0.000014446   0.000022849  -0.000041300   0.000084884  -0.043081165   0.168911711   0.316419838
                        -0.170555346  -0.000039636  -0.000008725  -0.000065937  -0.000097336   0.071263073   0.123528558  -0.011040433

   10    6.2  0.5  0.5   0.027676781  -0.000075940  -0.000003041  -0.000005623  -0.000016311  -0.087533093   0.171117765   0.133062265
                        -0.044893033   0.000034237  -0.000017256   0.000024263  -0.000062695   0.041625673   0.016226876   0.021962656

   11    7.2  0.5  0.5   0.000762682   0.000022076  -0.000013794  -0.000018981  -0.000004715   0.048370739  -0.037506029  -0.077233160
                        -0.058931491   0.000024707  -0.000011088  -0.000018744  -0.000052353   0.119514080   0.024279830  -0.065606095

   12    8.2  0.5  0.5   0.023570750  -0.000023295   0.000017964   0.000002498   0.000035415  -0.040177031   0.084174389   0.004820159
                        -0.060017309  -0.000037497   0.000017152   0.000021480  -0.000063242  -0.113547428  -0.011432072  -0.049193480

   13    9.2  0.5  0.5  -0.091575531  -0.000003584  -0.000006520  -0.000002814  -0.000083638   0.018814775  -0.074115621  -0.021899019
                         0.146904256  -0.000036362   0.000010483   0.000031029   0.000118071  -0.069292267   0.012550719   0.051559008

   14   10.2  0.5  0.5  -0.005736717  -0.000171790  -0.000018061   0.000035377  -0.000017814  -0.238210588   0.110224282  -0.169078848
                        -0.047061523  -0.000136043   0.000013405   0.000061147  -0.000121805  -0.233285245   0.146544061   0.074650927

   15   11.2  0.5  0.5  -0.072628259   0.000050316   0.000019342  -0.000006935  -0.000038514   0.058402386  -0.088869837   0.041263933
                         0.083214887  -0.000072855   0.000012797  -0.000008518   0.000093092  -0.098367231   0.032934452   0.047201876

   16   12.2  0.5  0.5   0.020569159   0.000132294   0.000093769  -0.000061080   0.000107823   0.153880479   0.102523426   0.223062805
                        -0.376994448  -0.000228856   0.000017896  -0.000196734  -0.000278711  -0.041372002   0.168416842   0.086888434

   17   13.2  0.5  0.5   0.020219095  -0.000008303  -0.000022349   0.000029302   0.000007708  -0.027977747  -0.029877594  -0.074190275
                         0.036570680   0.000066166   0.000006663   0.000047092   0.000024272   0.000797937  -0.067972769  -0.071126216

   18   14.2  0.5  0.5   0.115177138   0.000133097   0.000009163   0.000080976   0.000136503   0.082750433  -0.213197191   0.059342688
                         0.045393617   0.000083686  -0.000001196  -0.000010822   0.000090592  -0.090200588  -0.314910138  -0.309948685

   19   15.2  0.5  0.5  -0.101384861   0.000039956   0.000045860  -0.000059223   0.000115299   0.058786443   0.084468136  -0.056651436
                        -0.080748765  -0.000239061   0.000061775  -0.000005624   0.000029017  -0.258974628   0.010650023   0.130543922

   20   16.2  0.5  0.5  -0.294705183   0.000023433  -0.000061189   0.000009691  -0.000252234   0.178200684  -0.151358078  -0.174132565
                         0.436852567  -0.000101997   0.000009605   0.000109024   0.000372872  -0.099113263   0.080012552  -0.030105932

   21   17.2  0.5  0.5  -0.185919196  -0.000102003  -0.000095460  -0.000056021  -0.000200908   0.067632300   0.306112107  -0.096650937
                         0.162585376   0.000047610  -0.000119769   0.000025433   0.000192870   0.539427050   0.350447410   0.001739556

   22    1.2  0.5 -0.5   0.181918656   0.000028495  -0.000008541   0.000004873   0.000187773   0.034020039   0.001487749  -0.032526034
                        -0.065940044   0.000015406   0.000028937  -0.000051278  -0.000035758   0.038328100   0.011283581  -0.085170557

   23    2.2  0.5 -0.5   0.091148631  -0.000035875  -0.000051065  -0.000003609   0.000050680   0.013655602  -0.014964648  -0.030261336
                         0.033620331   0.000075482  -0.000032105   0.000002475   0.000018356   0.155983715   0.030100921  -0.173025789

   24    3.2  0.5 -0.5   0.064729699   0.000011791  -0.000006821  -0.000013525   0.000070133   0.055807124   0.088383625   0.083325048
                        -0.013813639  -0.000035993  -0.000000154  -0.000006379  -0.000005907  -0.024459193   0.052156573  -0.121858785

   25    4.2  0.5 -0.5  -0.192655070  -0.000023189  -0.000005151  -0.000021966  -0.000236049  -0.106131160  -0.108743323  -0.027459318
                         0.031759237   0.000090005  -0.000054546   0.000019567   0.000042921   0.184414271   0.013517445   0.152967190

   26    5.2  0.5 -0.5  -0.333787144   0.000033739   0.000124838  -0.000014336  -0.000211848  -0.037680131   0.177036271   0.090216867
                        -0.107026396  -0.000228484   0.000021014   0.000022471  -0.000043731  -0.321623439   0.020435030   0.245170758

   27    6.2  0.5 -0.5  -0.186641495   0.000001654   0.000027052  -0.000013449  -0.000188887  -0.036282016  -0.105331031   0.061742479
                         0.020005294   0.000085769  -0.000004427  -0.000019620   0.000035590   0.067848745  -0.198609241   0.290793035

   28    7.2  0.5 -0.5  -0.043198610   0.000059517  -0.000003034   0.000024278  -0.000104958   0.087996190  -0.049538357   0.193452763
                         0.055577708  -0.000120883  -0.000031703  -0.000002234   0.000004446  -0.141894694   0.295743141  -0.217895168

   29    8.2  0.5 -0.5   0.037743962  -0.000028189  -0.000008712  -0.000004761   0.000089122  -0.007629276  -0.036167564  -0.254417027
                        -0.028320143   0.000103280   0.000023838  -0.000015715  -0.000009092   0.090489652  -0.310714686   0.183725853

   30    9.2  0.5 -0.5  -0.033068959  -0.000035875  -0.000014048   0.000006044  -0.000042009  -0.060400131  -0.015268560  -0.038606040
                         0.018479710   0.000036772  -0.000021186   0.000033550  -0.000000920   0.052103798  -0.037073637  -0.032774062

   31   10.2  0.5 -0.5   0.103424661   0.000045030   0.000030681   0.000002331   0.000067772  -0.027043892  -0.024616704   0.150788576
                        -0.107411078   0.000069970   0.000020069  -0.000050586  -0.000117727   0.001775047  -0.094782777  -0.005703451

   32   11.2  0.5 -0.5  -0.025893883  -0.000028798  -0.000010734   0.000003194  -0.000025456  -0.051027214  -0.014969243  -0.041005658
                         0.021748168   0.000027434  -0.000012232   0.000022915   0.000020425   0.048214912  -0.035757934  -0.017830885

   33   12.2  0.5 -0.5  -0.066805391   0.000115953   0.000068649   0.000063693  -0.000079348   0.022195509  -0.152190786   0.200582022
                        -0.042474185  -0.000044717  -0.000011868  -0.000056717  -0.000044535  -0.108080002   0.031047208   0.022497327

   34   13.2  0.5 -0.5   0.007262051  -0.000013167  -0.000013609  -0.000029208  -0.000002899  -0.007891925   0.029726792  -0.027429282
                        -0.013850477  -0.000000438   0.000005367   0.000002942  -0.000011300   0.003690301   0.026664126   0.000903875

   35   14.2  0.5 -0.5   0.009837422  -0.000056030  -0.000024220  -0.000036901   0.000009110  -0.056772132  -0.038336320  -0.111151355
                        -0.027657786   0.000012337   0.000016402   0.000012137   0.000013826   0.062121008   0.023341464   0.111064940

   36   15.2  0.5 -0.5   0.071186428   0.000012521  -0.000011865   0.000004238   0.000064397  -0.022075680  -0.050597647   0.116086869
                         0.057724770   0.000050995   0.000036584  -0.000020104   0.000051572  -0.032031240  -0.187862856  -0.003124804

   37   16.2  0.5 -0.5  -0.094163823  -0.000062401  -0.000033660   0.000013490  -0.000075884  -0.069711050  -0.007862141  -0.148423939
                         0.020983496  -0.000033301  -0.000049114   0.000087282  -0.000026090  -0.015389615   0.015256155  -0.156293089

   38   17.2  0.5 -0.5  -0.202339133   0.000094817   0.000017357   0.000011989  -0.000147837   0.258688458   0.009915247  -0.035079682
                         0.127087528  -0.000185419  -0.000030902  -0.000016570   0.000097211  -0.193366293   0.194597390  -0.001441574


   Nr   State  S   Sz       25            26            27            28            29            30            31            32

    1    1.2  1.5  1.5  -0.000012782   0.000045205   0.000030871   0.000033845  -0.000016513  -0.000018327  -0.000006353   0.000007566
                        -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000

    2    1.2  1.5  0.5  -0.000022894   0.000020790  -0.000014361   0.000007112  -0.000006662  -0.000000231  -0.000011593  -0.000010610
                         0.000017221   0.000021383   0.000006424  -0.000004101   0.000024548  -0.000000086   0.000000262   0.000005356

    3    1.2  1.5 -0.5   0.000022287  -0.000051567  -0.000030180  -0.000004003   0.000001052  -0.000016064   0.000001559  -0.000001359
                         0.000004129  -0.000046699  -0.000008013  -0.000012908  -0.000021792  -0.000001055  -0.000002532   0.000002598

    4    1.2  1.5 -1.5  -0.000072259   0.000045182   0.000006413  -0.000062159   0.000001025  -0.000008935  -0.000002758   0.000004049
                        -0.000027671   0.000011773   0.000013532  -0.000004122   0.000000817  -0.000010018   0.000002656   0.000001074

    5    1.2  0.5  0.5  -0.011662736   0.125190557   0.027809798   0.072243510  -0.019130945  -0.091168036  -0.052990557  -0.205309091
                        -0.024279488   0.035818909  -0.044049177  -0.001608121  -0.028530251   0.022831679   0.105745584  -0.072135602

    6    2.2  0.5  0.5  -0.129481915   0.094708141  -0.153925501  -0.032360890   0.000070948  -0.045660263  -0.081870408  -0.133192890
                        -0.041432425   0.123708624  -0.142683556   0.085051237  -0.024976652   0.133663323   0.008627053   0.117657865

    7    3.2  0.5  0.5  -0.046384462   0.017502415  -0.029102051   0.025782518   0.003487978  -0.088626983   0.015801460  -0.050711411
                        -0.002038324   0.039598250   0.082288275   0.020822432  -0.079800281   0.009594720   0.064903375   0.071394821

    8    4.2  0.5  0.5   0.004339623  -0.013855712  -0.216908582  -0.055157435  -0.087203926  -0.013873301  -0.117985025   0.386671105
                        -0.036390587   0.004464252  -0.293250903   0.109298291   0.138903046   0.060769792  -0.027214845   0.130550318

    9    5.2  0.5  0.5   0.184199257  -0.192389942   0.092988829  -0.105781788  -0.138389589  -0.104404757   0.083497450  -0.075345705
                         0.137813652  -0.082268484   0.159288045   0.096255354   0.113513278  -0.096575021   0.048930587   0.088256899

   10    6.2  0.5  0.5   0.065254962  -0.120487464  -0.021927583  -0.202342859   0.078320118   0.297084239  -0.088731022  -0.058981999
                         0.026438274   0.036717618   0.092999599  -0.092116635   0.085174309   0.116533666  -0.005519343  -0.067038648

   11    7.2  0.5  0.5  -0.132431474  -0.106475500  -0.166561190  -0.019516457   0.000169270  -0.065135719   0.067337524   0.041367266
                         0.034141758   0.152261056   0.348726875   0.111397706  -0.182570052  -0.022182025  -0.213480316   0.215314168

   12    8.2  0.5  0.5   0.030736753   0.010827956   0.126182852  -0.057864368   0.183356120   0.110276723   0.009690951   0.141545388
                        -0.023504984  -0.094533713   0.035010587  -0.120860858  -0.050090777   0.050708771   0.262628120   0.203271613

   13    9.2  0.5  0.5  -0.029890807  -0.058970531  -0.004873294  -0.069712422  -0.026631474  -0.006195204   0.119880771  -0.019682681
                         0.038409144  -0.049684805  -0.089725108  -0.016544079   0.054878207   0.020510004  -0.004617516   0.193561075

   14   10.2  0.5  0.5   0.144056802   0.126153265  -0.135641094   0.124482093  -0.088556169  -0.078527044   0.092988190   0.081361326
                         0.044861750   0.222697921   0.146425046  -0.097055861   0.021908778   0.262888474  -0.054504682   0.076509023

   15   11.2  0.5  0.5  -0.007853338  -0.011611423   0.130207456  -0.095790626   0.063695483  -0.016727834   0.113987242  -0.058641220
                         0.042438395  -0.011174296  -0.153392542   0.030601270   0.074604212   0.103249560  -0.046762333   0.291178993

   16   12.2  0.5  0.5  -0.055340980   0.191499643  -0.343183727   0.071963553  -0.008679619   0.081097987  -0.061347645   0.009537410
                         0.169132071  -0.036018291   0.000452792  -0.144779387   0.037029924   0.001421844   0.082929623  -0.026182549

   17   13.2  0.5  0.5   0.059223659  -0.016529183  -0.047669123   0.029002967  -0.036920442   0.034019993  -0.037669909   0.242675522
                        -0.004421051   0.071403836   0.110167909   0.047157078  -0.046392454  -0.012163243  -0.034016925  -0.307616718

   18   14.2  0.5  0.5   0.216358584   0.352752874  -0.092698029   0.064427254   0.040609320   0.096597576  -0.002996721   0.005471329
                        -0.002523910  -0.024109672   0.245242971   0.170861713   0.123408370  -0.002682921   0.029822680   0.118108831

   19   15.2  0.5  0.5  -0.034685358   0.161995294   0.272182751   0.008545515  -0.015262387   0.198367583  -0.059819158   0.140458956
                         0.332578906  -0.004933241  -0.077250843   0.194703315  -0.170175418   0.019901533  -0.080519001  -0.023635991

   20   16.2  0.5  0.5  -0.090432561  -0.152302736  -0.201349704  -0.085992606   0.006866937   0.056399050   0.110861247  -0.001638249
                         0.156391935  -0.190089883   0.129006588  -0.127233730   0.088054536   0.000707776   0.153325097  -0.123794784

   21   17.2  0.5  0.5  -0.098220855   0.109650557   0.054362989   0.154179789   0.086538892   0.106487868   0.034344699   0.071822775
                        -0.172647394  -0.001743266   0.079143000   0.136370705   0.064387027   0.074664019   0.010859056   0.045936608

   22    1.2  0.5 -0.5   0.074401837   0.014596663   0.104187167   0.119366908   0.018062354  -0.225762848   0.207967891   0.301027257
                        -0.036160211  -0.095338611  -0.017263346  -0.096554305   0.133836552  -0.129719644   0.119310550  -0.026849792

   23    2.2  0.5 -0.5   0.051917132   0.043327370   0.046974941   0.017745644   0.165116882  -0.084604510   0.019244325  -0.089013189
                         0.125954892   0.211502877  -0.090612738   0.021486542  -0.118938133   0.207233900   0.330832557  -0.035014863

   24    3.2  0.5 -0.5  -0.023853734  -0.147651018   0.079195390  -0.113972374  -0.117427844  -0.052914281  -0.011355511   0.111062380
                         0.009167104  -0.023577094  -0.000162526   0.028795143   0.087254282   0.071937454   0.257866650   0.070953944

   25    4.2  0.5 -0.5   0.006441739   0.087825765  -0.041315691  -0.113531068   0.029280195  -0.145987618  -0.043904827   0.114941294
                         0.233076748   0.188492293   0.077598643   0.062782962  -0.298425036  -0.282562721   0.051584548  -0.044344829

   26    5.2  0.5 -0.5  -0.184665039   0.006655068  -0.048540336   0.015792890  -0.017303074  -0.189639176   0.003933322   0.013188189
                        -0.274295361   0.066072044   0.105113047   0.120477861   0.026197348   0.034186876   0.128890458  -0.043951672

   27    6.2  0.5 -0.5   0.297568255  -0.156569802  -0.010727136   0.340822337   0.117758005   0.105489751   0.108991277   0.006435966
                        -0.002024200  -0.083316222   0.013043987   0.041758161  -0.153680726   0.121873282   0.028208038   0.011322148

   28    7.2  0.5 -0.5  -0.086230298  -0.092967572   0.147043670   0.121938263  -0.188720144   0.054916535  -0.014076270  -0.002298633
                         0.017459767  -0.093228329  -0.047986577   0.277739571  -0.162512319   0.146853036   0.012023283  -0.126163862

   29    8.2  0.5 -0.5   0.039604613  -0.193742249   0.053726198  -0.105989187  -0.328141902   0.071468766  -0.028902177   0.023395929
                        -0.040186952   0.177530067   0.070459294   0.048863694   0.046886344   0.145475279   0.149565206  -0.069026023

   30    9.2  0.5 -0.5  -0.003655782   0.035472720  -0.049677926   0.075386288  -0.102542391  -0.043686421  -0.076288083  -0.036038168
                         0.042165149   0.053057994   0.028528820  -0.041288256  -0.082013541  -0.051991137  -0.025163935  -0.002790643

   31   10.2  0.5 -0.5  -0.162714444  -0.106812483   0.052496257   0.087841532  -0.174159191   0.009562988  -0.122397671   0.113363328
                        -0.119488123  -0.030038043   0.016531054  -0.132570756  -0.254180707  -0.060801470   0.137179597   0.126718068

   32   11.2  0.5 -0.5   0.012160070   0.097327666  -0.043800986   0.022723464  -0.083705753  -0.117497875  -0.020117174  -0.027337741
                         0.034849201   0.061214797   0.028328493   0.039751668  -0.093424436  -0.043748032   0.048387887   0.044513199

   33   12.2  0.5 -0.5  -0.185368585  -0.053546634   0.222611280   0.201708007   0.145957821   0.069302955   0.073476859   0.141870001
                         0.065851785   0.306888934   0.105031545  -0.160396387   0.204480568  -0.078487184   0.010294548  -0.045373794

   34   13.2  0.5 -0.5  -0.045524908  -0.058094757   0.000713076  -0.077795463   0.045549428  -0.020590505  -0.060330699   0.098431708
                        -0.002460068  -0.090473947  -0.021897998   0.032876802  -0.086793932   0.005327150   0.011921913   0.024632491

   35   14.2  0.5 -0.5  -0.077321260  -0.138717401   0.023504314   0.077407519   0.208029873  -0.075137518  -0.286050307  -0.056047201
                         0.181111195  -0.183867218  -0.044044748   0.293450930   0.286874146  -0.106075106   0.094929617  -0.006944008

   36   15.2  0.5 -0.5  -0.004507762   0.000688976   0.029621058  -0.023446063   0.167951639  -0.319289762  -0.263364817   0.068077281
                        -0.014304749  -0.101690951   0.076997527  -0.115933968  -0.014935405   0.360399747  -0.190885174  -0.043362945

   37   16.2  0.5 -0.5  -0.045671228  -0.093892936  -0.002724636   0.315837486  -0.113044890   0.043683762  -0.292724910  -0.094729501
                         0.094263874   0.118737395   0.076245109  -0.182925745   0.024679689  -0.112255085  -0.116544323   0.154196118

   38   17.2  0.5 -0.5   0.380712046  -0.051207107  -0.016493705  -0.148945680   0.087869009   0.111089602  -0.284535289   0.042175357
                        -0.193554652   0.211804244  -0.024921023   0.004931664   0.028410211  -0.044716136  -0.026081331  -0.007436071


   Nr   State  S   Sz       33            34            35            36            37            38

    1    1.2  1.5  1.5  -0.000009115   0.000004185   0.000001422  -0.000001649   0.000000770  -0.000001546
                         0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000

    2    1.2  1.5  0.5   0.000000504  -0.000000567  -0.000001284  -0.000000011   0.000000084  -0.000000406
                        -0.000007593  -0.000004752   0.000000916  -0.000000723  -0.000000765  -0.000000198

    3    1.2  1.5 -0.5  -0.000000540   0.000001617  -0.000001441  -0.000001306   0.000000361  -0.000000744
                         0.000001770  -0.000004670  -0.000000461  -0.000000578  -0.000000000  -0.000000229

    4    1.2  1.5 -1.5   0.000000931   0.000002289  -0.000000233  -0.000000380   0.000000298  -0.000000303
                         0.000002256  -0.000002554   0.000000624   0.000000460  -0.000000523   0.000000032

    5    1.2  0.5  0.5  -0.154566878   0.117250511  -0.137550402   0.113314181   0.105684147   0.250028380
                         0.047991140   0.007129587   0.409731884   0.042068346   0.285413712   0.045160346

    6    2.2  0.5  0.5  -0.177764020   0.100529700   0.092607656  -0.121395852  -0.286605978   0.355087088
                         0.058496006   0.078035958  -0.184147004  -0.003563617  -0.151258565  -0.034663412

    7    3.2  0.5  0.5  -0.212386391  -0.033573716  -0.133263227   0.515744482   0.117974455  -0.076734719
                         0.059873821   0.054961934  -0.236114377   0.157981109  -0.123564027  -0.022321776

    8    4.2  0.5  0.5  -0.050583577   0.061948323  -0.155445265   0.118148915  -0.030395847  -0.085963993
                        -0.069001669   0.094285636   0.176074861  -0.015745533   0.005289184   0.043821382

    9    5.2  0.5  0.5  -0.203515326   0.230408655  -0.009533508  -0.062290627  -0.148468666  -0.030702961
                         0.054828280   0.000120668   0.077781160   0.067130877  -0.097992410  -0.011772702

   10    6.2  0.5  0.5   0.229031777  -0.030738652   0.004028000   0.216273123  -0.017320616   0.290683518
                        -0.030634400   0.114928288   0.026812586   0.097047417  -0.052912751  -0.017731912

   11    7.2  0.5  0.5   0.048366797  -0.154608210  -0.048943785  -0.058143190   0.024047493   0.053521378
                        -0.122784925   0.217067996   0.157371227  -0.029981843   0.067319418   0.005755783

   12    8.2  0.5  0.5  -0.296862541  -0.307018631   0.029994815  -0.071798955  -0.120229552   0.002944238
                        -0.071180936  -0.055482747   0.147628939   0.022711663  -0.061708373   0.005684769

   13    9.2  0.5  0.5   0.109299102  -0.078641942  -0.027358926  -0.112781120  -0.030289951  -0.012536744
                         0.108945577  -0.024806705  -0.083223653   0.509749382   0.282405532  -0.081007694

   14   10.2  0.5  0.5   0.027372430   0.025031847   0.008339366   0.000283787  -0.015498143   0.001415991
                         0.208501182  -0.049092678   0.002960826  -0.098942153   0.022163650  -0.002448988

   15   11.2  0.5  0.5   0.049013973   0.064989375   0.391026720   0.139189451   0.258316640   0.049259471
                        -0.071354665  -0.073541527   0.131100263  -0.089464257  -0.087022880  -0.071243277

   16   12.2  0.5  0.5   0.002896721  -0.048876010   0.102719841  -0.017863594   0.071935711  -0.028880656
                        -0.064487177  -0.073467172  -0.012247280   0.073223655   0.013098292  -0.022130717

   17   13.2  0.5  0.5  -0.238570906   0.048570107   0.382253173  -0.042992891   0.136753299   0.035495293
                         0.009953885   0.115323081   0.011123011   0.220701360   0.045178678  -0.028837422

   18   14.2  0.5  0.5   0.107827354   0.023701130  -0.001929919   0.006964600  -0.017833315  -0.012902556
                         0.082134639  -0.060141759  -0.004132423  -0.005309449   0.021555592  -0.040568660

   19   15.2  0.5  0.5   0.021922881   0.011911256  -0.075480016   0.018602943  -0.042216495   0.035433057
                         0.052338135   0.066208612  -0.020478796  -0.020524348   0.012311434  -0.003689910

   20   16.2  0.5  0.5  -0.007668565   0.066290476  -0.029095403   0.025244626  -0.046292251   0.001153859
                         0.084851169   0.018003483   0.089005434  -0.105180189  -0.065605354   0.026544854

   21   17.2  0.5  0.5  -0.025761435   0.025223095   0.019569489   0.007442052   0.004396059   0.013331553
                         0.129870910  -0.071093912   0.003531884   0.015472520   0.022763767  -0.018551407

   22    1.2  0.5 -0.5   0.204108107   0.025274529  -0.020255795   0.111600515  -0.161014726   0.262244917
                        -0.068829581  -0.000244622   0.022949312   0.074390730  -0.107377620  -0.065064513

   23    2.2  0.5 -0.5   0.198089371   0.114901737   0.021089905  -0.049796732  -0.025903467  -0.221697943
                        -0.017760467   0.209583100   0.049242441   0.039375806  -0.053982407  -0.064847981

   24    3.2  0.5 -0.5  -0.043156043   0.032918240  -0.015973764  -0.058535231   0.202363296   0.156659912
                        -0.087713038   0.029727763  -0.318715994  -0.222642603   0.312318588   0.074233872

   25    4.2  0.5 -0.5   0.057617125  -0.028809295   0.046959510   0.093364176  -0.097310355   0.062499900
                        -0.062128079  -0.284870010  -0.023775325  -0.051228270   0.122071228  -0.058517058

   26    5.2  0.5 -0.5   0.141172028   0.034284529  -0.000199233  -0.008427324  -0.038572907  -0.059982505
                        -0.093034799   0.093060705   0.034204746   0.033068961  -0.020767304  -0.041158789

   27    6.2  0.5 -0.5  -0.012342557   0.050098888  -0.025791124  -0.000424824   0.043063262   0.097787571
                        -0.076674332   0.062192109  -0.068312773  -0.029804441   0.026136063   0.040182828

   28    7.2  0.5 -0.5   0.035579843  -0.097577430   0.005521599   0.048426561  -0.075323544   0.045121988
                        -0.115474008  -0.169750642   0.040454880   0.061014507  -0.054001664  -0.025191748

   29    8.2  0.5 -0.5  -0.002163750  -0.079001392   0.002787367   0.024437705  -0.042012335  -0.064815356
                        -0.054373699  -0.160572813   0.064460988   0.054801942  -0.078231806  -0.023606223

   30    9.2  0.5 -0.5   0.046954866  -0.238183495  -0.149564578  -0.170823137   0.286790472   0.148296614
                         0.006921072   0.061141988   0.013787316  -0.034851028  -0.162811732  -0.444700152

   31   10.2  0.5 -0.5   0.062469473   0.028723809   0.115463782   0.062945971  -0.029974273  -0.007214231
                         0.435469906   0.069061081   0.083160330  -0.062330631   0.009465281  -0.003010421

   32   11.2  0.5 -0.5   0.133687283  -0.239506625   0.012154854  -0.106571351   0.175019359   0.093474701
                         0.025161400   0.043467610  -0.005556020   0.103757345  -0.196304672   0.502811560

   33   12.2  0.5 -0.5  -0.085783033  -0.052878891  -0.123904253  -0.066691082   0.068053238  -0.006021479
                         0.033051880  -0.049643676  -0.009735284   0.018386685  -0.057038421   0.056481554

   34   13.2  0.5 -0.5  -0.019004314   0.460306414  -0.189643831  -0.145647389   0.249248605   0.057889980
                         0.011202931  -0.223648037   0.021415331   0.153350799  -0.186356343   0.051114255

   35   14.2  0.5 -0.5   0.039057906  -0.078833379   0.059786976  -0.011869665   0.023314029   0.020507718
                         0.126493096   0.032975598   0.031126021  -0.010465803  -0.010032116  -0.011678576

   36   15.2  0.5 -0.5   0.045779004  -0.024144188  -0.007402577  -0.009777581  -0.057233277  -0.015330346
                         0.026767987  -0.083682825  -0.068734672  -0.000687382   0.028280033  -0.013173878

   37   16.2  0.5 -0.5   0.108063854   0.135359823   0.093506535   0.022523845  -0.087871508  -0.015784795
                        -0.237055888  -0.013484058  -0.017948877   0.051385685   0.039283650   0.034576862

   38   17.2  0.5 -0.5   0.118728392  -0.005454966  -0.006636453  -0.026257102   0.011074363   0.032485244
                         0.104125847   0.036216292   0.034482213  -0.001729861  -0.002307925  -0.003075687


 Composition of spin-orbit eigenvectors
 ======================================

   Nr   State  S   Sz       1        2        3        4        5        6        7        8        9       10

    1    1.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    2    1.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    3    1.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    4    1.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    5    1.2  0.5  0.5   5.104%  11.459%   0.595%  19.430%   1.667%   2.423%   3.099%   2.343%   0.798%   0.488%
    6    2.2  0.5  0.5  13.966%   9.262%   1.041%   4.623%   0.658%   5.358%   1.339%   1.396%   0.240%   2.149%
    7    3.2  0.5  0.5   0.390%   3.875%  28.561%   7.101%   0.433%   5.703%   0.876%   0.265%   0.375%   1.129%
    8    4.2  0.5  0.5   0.650%   0.020%   1.347%   6.188%   0.439%   0.420%  11.837%   6.511%   5.175%   8.171%
    9    5.2  0.5  0.5   0.294%   3.133%   0.320%   0.604%   7.253%   3.643%   0.084%   0.118%   2.169%   2.936%
   10    6.2  0.5  0.5   8.786%   0.003%   5.384%   0.141%   2.670%   2.700%   0.113%   1.064%   6.492%   6.720%
   11    7.2  0.5  0.5   0.284%   0.797%   0.326%   2.619%   5.821%   0.673%   5.638%   2.561%   5.930%  12.714%
   12    8.2  0.5  0.5   0.021%   1.828%   0.633%   2.012%   7.512%  13.906%   8.779%   4.290%   1.074%   4.900%
   13    9.2  0.5  0.5   0.498%  10.179%  24.540%   1.526%   1.692%   1.470%   2.928%   3.062%   0.016%   0.050%
   14   10.2  0.5  0.5   0.005%   0.015%   0.964%   0.023%   0.499%   4.545%   0.578%   1.320%   4.016%   5.096%
   15   11.2  0.5  0.5   0.498%   8.457%   1.536%  17.588%   2.058%   0.345%   5.297%   4.274%   0.636%   4.008%
   16   12.2  0.5  0.5   0.101%   0.458%   0.738%   1.118%   0.410%   0.258%   0.225%   0.860%   1.090%   4.697%
   17   13.2  0.5  0.5   0.156%   2.354%   5.259%  14.072%   2.357%   0.432%  19.253%   3.027%   0.221%   0.061%
   18   14.2  0.5  0.5   0.226%   0.031%   0.002%   0.012%   1.060%   0.648%   1.412%   1.281%   1.959%   2.870%
   19   15.2  0.5  0.5   0.151%   0.121%   0.092%   0.614%   0.380%   1.502%   0.813%   0.806%   8.782%   1.175%
   20   16.2  0.5  0.5   0.030%   0.767%   1.241%   0.954%   0.952%   0.632%   0.714%   1.296%   0.888%   4.781%
   21   17.2  0.5  0.5   0.055%   0.086%   0.011%   0.078%   0.092%   1.833%   0.124%   0.161%   1.905%   6.572%
   22    1.2  0.5 -0.5   8.033%   2.777%   1.962%   0.115%   2.262%   6.936%   3.693%   2.830%   6.087%   2.124%
   23    2.2  0.5 -0.5   4.962%   0.548%   0.395%   0.639%   5.997%   0.344%   2.759%  14.881%   3.862%   0.577%
   24    3.2  0.5 -0.5   2.756%  13.178%   7.577%   9.235%   0.075%   0.766%   4.756%   2.641%   1.434%   0.003%
   25    4.2  0.5 -0.5   1.172%   2.313%   1.383%   0.633%   7.104%   2.196%   2.242%   0.931%   5.285%   0.335%
   26    5.2  0.5 -0.5   0.529%   0.347%   0.083%   0.007%   0.815%   1.287%   1.274%   3.401%   0.786%   4.115%
   27    6.2  0.5 -0.5   1.078%   0.233%   0.147%   0.246%   0.177%   0.458%   2.211%   1.038%   0.659%   0.065%
   28    7.2  0.5 -0.5   0.378%   0.704%   0.723%   0.191%   3.357%   2.978%   0.926%   0.747%   1.432%   2.729%
   29    8.2  0.5 -0.5   0.258%   0.593%   0.442%   0.670%   2.573%   1.498%   0.210%   5.592%   1.217%   0.614%
   30    9.2  0.5 -0.5  20.754%  11.581%   2.967%   2.777%   6.251%   0.197%   1.492%   0.230%   0.834%   0.738%
   31   10.2  0.5 -0.5   0.089%   0.035%   0.695%   2.177%   1.602%  21.759%   2.621%   0.382%   7.578%   0.290%
   32   11.2  0.5 -0.5  26.449%   4.904%   2.328%   0.237%   7.436%   0.719%   4.077%   0.063%   0.492%   0.796%
   33   12.2  0.5 -0.5   0.627%   0.442%   0.552%   1.313%   0.153%   0.085%   2.950%   0.743%   0.301%   2.103%
   34   13.2  0.5 -0.5   1.451%   7.654%   7.478%   1.962%  21.987%   3.473%   1.949%   0.733%   0.860%   0.639%
   35   14.2  0.5 -0.5   0.018%   0.177%   0.015%   0.195%   1.789%   0.843%   2.295%   7.732%   0.381%   1.707%
   36   15.2  0.5 -0.5   0.037%   0.676%   0.030%   0.142%   0.095%   0.316%   0.435%  16.403%  12.209%   5.219%
   37   16.2  0.5 -0.5   0.178%   0.856%   0.576%   0.668%   1.883%   6.355%   2.426%   3.110%  14.581%   3.121%
   38   17.2  0.5 -0.5   0.015%   0.136%   0.057%   0.092%   0.492%   3.299%   0.576%   3.909%   0.237%   6.307%

   Nr   State  S   Sz      11       12       13       14       15       16       17       18       19       20

    1    1.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  23.316%  46.628%   7.119%
    2    1.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  46.353%  22.829%  15.462%
    3    1.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   5.985%  28.019%  46.563%
    4    1.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  24.345%   2.525%  30.856%
    5    1.2  0.5  0.5   0.073%   0.418%   1.482%   0.030%   0.138%   0.210%   0.241%   0.000%   0.000%   0.000%
    6    2.2  0.5  0.5   1.964%   0.615%   2.460%   0.587%   0.582%   1.395%   0.771%   0.000%   0.000%   0.000%
    7    3.2  0.5  0.5   0.079%   0.177%   0.153%   0.175%   0.654%   0.200%   0.036%   0.000%   0.000%   0.000%
    8    4.2  0.5  0.5   1.755%   3.578%   0.729%   1.918%   1.434%   0.216%   2.132%   0.000%   0.000%   0.000%
    9    5.2  0.5  0.5   2.328%   5.683%  10.958%   0.080%   2.183%   2.354%   3.660%   0.000%   0.000%   0.000%
   10    6.2  0.5  0.5   3.534%   1.877%   5.630%   1.272%   3.831%   1.506%   0.278%   0.000%   0.000%   0.000%
   11    7.2  0.5  0.5   0.522%   3.320%   2.492%   0.971%   1.739%   2.408%   0.347%   0.000%   0.000%   0.000%
   12    8.2  0.5  0.5   0.085%   2.040%   0.139%   2.118%   0.297%   1.121%   0.416%   0.000%   0.000%   0.000%
   13    9.2  0.5  0.5   0.178%   0.466%   0.276%   0.152%   0.846%   0.111%   2.997%   0.000%   0.000%   0.000%
   14   10.2  0.5  0.5   1.457%   2.278%   8.835%   6.953%   7.740%   5.698%   0.225%   0.000%   0.000%   0.000%
   15   11.2  0.5  0.5   0.220%   0.758%   1.162%   0.670%   1.097%   0.269%   1.220%   0.000%   0.000%   0.000%
   16   12.2  0.5  0.5   0.970%   0.343%   5.865%   5.840%   0.865%  22.950%  14.255%   0.000%   0.000%   0.000%
   17   13.2  0.5  0.5   0.343%   0.352%   0.051%   0.774%   0.235%   1.234%   0.175%   0.000%   0.000%   0.000%
   18   14.2  0.5  0.5   3.805%   8.744%   1.534%   0.364%   7.581%   6.993%   1.533%   0.000%   0.000%   0.000%
   19   15.2  0.5  0.5   2.427%   0.110%   2.710%   7.953%  15.368%   8.193%   1.680%   0.000%   0.000%   0.000%
   20   16.2  0.5  0.5   0.029%   1.001%   5.669%   2.509%   8.790%   4.322%  27.769%   0.000%   0.000%   0.000%
   21   17.2  0.5  0.5   2.034%   0.462%   3.938%   1.467%   3.322%   3.102%   6.100%   0.000%   0.000%   0.000%
   22    1.2  0.5 -0.5   2.142%   4.017%   1.256%   0.056%   3.665%   0.982%   3.744%   0.000%   0.000%   0.000%
   23    2.2  0.5 -0.5   7.295%   0.003%   0.999%   1.104%   1.172%   3.132%   0.944%   0.000%   0.000%   0.000%
   24    3.2  0.5 -0.5   0.313%   2.344%   1.035%   0.277%   0.326%   0.105%   0.438%   0.000%   0.000%   0.000%
   25    4.2  0.5 -0.5   9.254%   4.289%   0.764%   1.263%   1.167%   0.914%   3.812%   0.000%   0.000%   0.000%
   26    5.2  0.5 -0.5   0.284%   1.193%   0.624%   3.589%  13.715%  10.503%  12.287%   0.000%   0.000%   0.000%
   27    6.2  0.5 -0.5  13.330%   2.864%   3.107%  18.138%   3.446%   0.111%   3.524%   0.000%   0.000%   0.000%
   28    7.2  0.5 -0.5   2.083%  11.399%   3.590%  10.234%   0.350%   5.831%   0.496%   0.000%   0.000%   0.000%
   29    8.2  0.5 -0.5   8.538%  10.738%   2.913%   3.148%   1.085%   7.852%   0.223%   0.000%   0.000%   0.000%
   30    9.2  0.5 -0.5   0.727%   0.725%   0.158%   0.170%   0.133%   0.035%   0.144%   0.000%   0.000%   0.000%
   31   10.2  0.5 -0.5   3.446%   0.079%   1.288%   3.240%   2.018%   0.059%   2.223%   0.000%   0.000%   0.000%
   32   11.2  0.5 -0.5   1.478%   0.840%   0.096%   0.284%   0.094%   0.040%   0.114%   0.000%   0.000%   0.000%
   33   12.2  0.5 -0.5  10.996%   3.039%  13.483%  12.511%   0.892%   0.523%   0.627%   0.000%   0.000%   0.000%
   34   13.2  0.5 -0.5   0.069%   0.701%   1.003%   0.317%   0.029%   0.255%   0.024%   0.000%   0.000%   0.000%
   35   14.2  0.5 -0.5  10.306%  13.014%   3.795%   5.562%   0.493%   2.838%   0.086%   0.000%   0.000%   0.000%
   36   15.2  0.5 -0.5   0.552%   9.049%   2.185%   0.899%   2.724%   0.533%   0.840%   0.000%   0.000%   0.000%
   37   16.2  0.5 -0.5   6.188%   1.660%   3.708%   1.198%   2.615%   0.547%   0.931%   0.000%   0.000%   0.000%
   38   17.2  0.5 -0.5   1.199%   1.825%   5.914%   4.179%   9.372%   3.458%   5.709%   0.000%   0.000%   0.000%

   Nr   State  S   Sz      21       22       23       24       25       26       27       28       29       30

    1    1.2  1.5  1.5  22.937%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    2    1.2  1.5  0.5  15.356%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    3    1.2  1.5 -0.5  19.432%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    4    1.2  1.5 -1.5  42.275%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    5    1.2  0.5  0.5   0.000%   0.210%   0.047%   0.189%   0.073%   1.696%   0.271%   0.522%   0.118%   0.883%
    6    2.2  0.5  0.5   0.000%   0.390%   1.245%   0.481%   1.848%   2.427%   4.405%   0.828%   0.062%   1.995%
    7    3.2  0.5  0.5   0.000%   0.074%   0.067%   0.468%   0.216%   0.187%   0.762%   0.110%   0.638%   0.795%
    8    4.2  0.5  0.5   0.000%   0.226%   0.309%   0.815%   0.134%   0.021%  13.305%   1.499%   2.690%   0.389%
    9    5.2  0.5  0.5   0.000%   0.693%   4.379%  10.024%   5.292%   4.378%   3.402%   2.045%   3.204%   2.023%
   10    6.2  0.5  0.5   0.000%   0.939%   2.954%   1.819%   0.496%   1.587%   0.913%   4.943%   1.339%  10.184%
   11    7.2  0.5  0.5   0.000%   1.662%   0.200%   1.027%   1.870%   3.452%  14.935%   1.279%   3.333%   0.473%
   12    8.2  0.5  0.5   0.000%   1.451%   0.722%   0.244%   0.150%   0.905%   1.715%   1.796%   3.613%   1.473%
   13    9.2  0.5  0.5   0.000%   0.516%   0.565%   0.314%   0.237%   0.595%   0.807%   0.513%   0.372%   0.046%
   14   10.2  0.5  0.5   0.000%  11.117%   3.362%   3.416%   2.276%   6.551%   3.984%   2.492%   0.832%   7.528%
   15   11.2  0.5  0.5   0.000%   1.309%   0.898%   0.393%   0.186%   0.026%   4.048%   1.011%   0.962%   1.094%
   16   12.2  0.5  0.5   0.000%   2.539%   3.888%   5.731%   3.167%   3.797%  11.778%   2.614%   0.145%   0.658%
   17   13.2  0.5  0.5   0.000%   0.078%   0.551%   1.056%   0.353%   0.537%   1.441%   0.306%   0.352%   0.131%
   18   14.2  0.5  0.5   0.000%   1.498%  14.462%   9.959%   4.682%  12.502%   6.874%   3.334%   1.688%   0.934%
   19   15.2  0.5  0.5   0.000%   7.052%   0.725%   2.025%  11.181%   2.627%   8.005%   3.798%   2.919%   3.975%
   20   16.2  0.5  0.5   0.000%   4.158%   2.931%   3.123%   3.264%   5.933%   5.718%   2.358%   0.780%   0.318%
   21   17.2  0.5  0.5   0.000%  29.556%  21.652%   0.934%   3.945%   1.203%   0.922%   4.237%   1.163%   1.691%
   22    1.2  0.5 -0.5   0.000%   0.263%   0.013%   0.831%   0.684%   0.930%   1.115%   2.357%   1.824%   6.780%
   23    2.2  0.5 -0.5   0.000%   2.452%   0.113%   3.085%   1.856%   4.661%   1.042%   0.078%   4.141%   5.010%
   24    3.2  0.5 -0.5   0.000%   0.371%   1.053%   2.179%   0.065%   2.236%   0.627%   1.382%   2.140%   0.797%
   25    4.2  0.5 -0.5   0.000%   4.527%   1.201%   2.415%   5.437%   4.324%   0.773%   1.683%   8.991%  10.115%
   26    5.2  0.5 -0.5   0.000%  10.486%   3.176%   6.825%  10.934%   0.441%   1.340%   1.476%   0.099%   3.713%
   27    6.2  0.5 -0.5   0.000%   0.592%   5.054%   8.837%   8.855%   3.146%   0.029%  11.790%   3.748%   2.598%
   28    7.2  0.5 -0.5   0.000%   2.788%   8.992%   8.490%   0.774%   1.733%   2.392%   9.201%   6.203%   2.458%
   29    8.2  0.5 -0.5   0.000%   0.825%   9.785%   9.848%   0.318%   6.905%   0.785%   1.362%  10.988%   2.627%
   30    9.2  0.5 -0.5   0.000%   0.636%   0.161%   0.256%   0.179%   0.407%   0.328%   0.739%   1.724%   0.461%
   31   10.2  0.5 -0.5   0.000%   0.073%   0.959%   2.277%   4.075%   1.231%   0.303%   2.529%   9.494%   0.379%
   32   11.2  0.5 -0.5   0.000%   0.493%   0.150%   0.200%   0.136%   1.322%   0.272%   0.210%   1.573%   1.572%
   33   12.2  0.5 -0.5   0.000%   1.217%   2.413%   4.074%   3.870%   9.705%   6.059%   6.641%   6.312%   1.096%
   34   13.2  0.5 -0.5   0.000%   0.008%   0.159%   0.075%   0.208%   1.156%   0.048%   0.713%   0.961%   0.045%
   35   14.2  0.5 -0.5   0.000%   0.708%   0.201%   2.469%   3.878%   5.305%   0.249%   9.211%  12.557%   1.690%
   36   15.2  0.5 -0.5   0.000%   0.151%   3.785%   1.349%   0.022%   1.034%   0.681%   1.399%   2.843%  23.183%
   37   16.2  0.5 -0.5   0.000%   0.510%   0.029%   4.646%   1.097%   2.291%   0.582%  13.322%   1.339%   1.451%
   38   17.2  0.5 -0.5   0.000%  10.431%   3.797%   0.123%  18.241%   4.748%   0.089%   2.221%   0.853%   1.434%

   Nr   State  S   Sz      31       32       33       34       35       36       37       38

    1    1.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    2    1.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    3    1.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    4    1.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    5    1.2  0.5  0.5   1.399%   4.736%   2.619%   1.380%  18.680%   1.461%   9.263%   6.455%
    6    2.2  0.5  0.5   0.678%   3.158%   3.502%   1.620%   4.249%   1.475%  10.502%  12.729%
    7    3.2  0.5  0.5   0.446%   0.767%   4.869%   0.415%   7.351%  29.095%   2.919%   0.639%
    8    4.2  0.5  0.5   1.466%  16.656%   0.732%   1.273%   5.517%   1.421%   0.095%   0.931%
    9    5.2  0.5  0.5   0.937%   1.347%   4.442%   5.309%   0.614%   0.839%   3.165%   0.108%
   10    6.2  0.5  0.5   0.790%   0.797%   5.339%   1.415%   0.074%   5.619%   0.310%   8.481%
   11    7.2  0.5  0.5   5.011%   4.807%   1.742%   7.102%   2.716%   0.428%   0.511%   0.290%
   12    8.2  0.5  0.5   6.907%   6.135%   9.319%   9.734%   2.269%   0.567%   1.826%   0.004%
   13    9.2  0.5  0.5   1.439%   3.785%   2.382%   0.680%   0.767%  27.256%   8.067%   0.672%
   14   10.2  0.5  0.5   1.162%   1.247%   4.422%   0.304%   0.008%   0.979%   0.073%   0.001%
   15   11.2  0.5  0.5   1.518%   8.822%   0.749%   0.963%  17.009%   2.738%   7.430%   0.750%
   16   12.2  0.5  0.5   1.064%   0.078%   0.417%   0.779%   1.070%   0.568%   0.535%   0.132%
   17   13.2  0.5  0.5   0.258%  15.352%   5.702%   1.566%  14.624%   5.056%   2.074%   0.209%
   18   14.2  0.5  0.5   0.090%   1.398%   1.837%   0.418%   0.002%   0.008%   0.078%   0.181%
   19   15.2  0.5  0.5   1.006%   2.029%   0.322%   0.453%   0.612%   0.077%   0.193%   0.127%
   20   16.2  0.5  0.5   3.580%   1.533%   0.726%   0.472%   0.877%   1.170%   0.645%   0.071%
   21   17.2  0.5  0.5   0.130%   0.727%   1.753%   0.569%   0.040%   0.029%   0.054%   0.052%
   22    1.2  0.5 -0.5   5.749%   9.134%   4.640%   0.064%   0.094%   1.799%   3.746%   7.301%
   23    2.2  0.5 -0.5  10.982%   0.915%   3.955%   5.713%   0.287%   0.403%   0.359%   5.336%
   24    3.2  0.5 -0.5   6.662%   1.737%   0.956%   0.197%  10.184%   5.300%  13.849%   3.005%
   25    4.2  0.5 -0.5   0.459%   1.518%   0.718%   8.198%   0.277%   1.134%   2.437%   0.733%
   26    5.2  0.5 -0.5   1.663%   0.211%   2.859%   0.984%   0.117%   0.116%   0.192%   0.529%
   27    6.2  0.5 -0.5   1.267%   0.017%   0.603%   0.638%   0.533%   0.089%   0.254%   1.118%
   28    7.2  0.5 -0.5   0.034%   1.592%   1.460%   3.834%   0.167%   0.607%   0.859%   0.267%
   29    8.2  0.5 -0.5   2.321%   0.531%   0.296%   3.202%   0.416%   0.360%   0.789%   0.476%
   30    9.2  0.5 -0.5   0.645%   0.131%   0.225%   6.047%   2.256%   3.040%  10.876%  21.975%
   31   10.2  0.5 -0.5   3.380%   2.891%  19.354%   0.559%   2.025%   0.785%   0.099%   0.006%
   32   11.2  0.5 -0.5   0.275%   0.273%   1.851%   5.925%   0.018%   2.212%   6.917%  26.156%
   33   12.2  0.5 -0.5   0.550%   2.219%   0.845%   0.526%   1.545%   0.479%   0.788%   0.323%
   34   13.2  0.5 -0.5   0.378%   1.030%   0.049%  26.190%   3.642%   4.473%   9.685%   0.596%
   35   14.2  0.5 -0.5   9.084%   0.319%   1.753%   0.730%   0.454%   0.025%   0.064%   0.056%
   36   15.2  0.5 -0.5  10.580%   0.651%   0.281%   0.759%   0.478%   0.010%   0.408%   0.041%
   37   16.2  0.5 -0.5   9.927%   3.275%   6.787%   1.850%   0.907%   0.315%   0.926%   0.144%
   38   17.2  0.5 -0.5   8.164%   0.183%   2.494%   0.134%   0.123%   0.069%   0.013%   0.106%


 Property matrices transformed in SO basis (not sym. adapted)
 ============================================================

 DMX (TRANSFORMED, REAL)         
              1             2             3             4             5             6             7             8
    1    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    2    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    3    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    4    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    5    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    6    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    7    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    8    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    9    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   10    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   11    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   12    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   13    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   14    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   15    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   16    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   17    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   18    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   19    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   20    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   21    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   22    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   23    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   24    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   25    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   26    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   27    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   28    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   29    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   30    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   31    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   32    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   33    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   34    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   35    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   36    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   37    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   38    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
              9            10            11            12            13            14            15            16
    1    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    2    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    3    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    4    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    5    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    6    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    7    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    8    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    9    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   10    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   11    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   12    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   13    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   14    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   15    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   16    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   17    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   18    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   19    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   20    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   21    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   22    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   23    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   24    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   25    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   26    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   27    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   28    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   29    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   30    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   31    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   32    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   33    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   34    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   35    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   36    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   37    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   38    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
             17            18            19            20            21            22            23            24
    1    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    2    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    3    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    4    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    5    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    6    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    7    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    8    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    9    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   10    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   11    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   12    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   13    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   14    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   15    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   16    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   17    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   18    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   19    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   20    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   21    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   22    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   23    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   24    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   25    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   26    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   27    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   28    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   29    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   30    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   31    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   32    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   33    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   34    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   35    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   36    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   37    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   38    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
             25            26            27            28            29            30            31            32
    1    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    2    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    3    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    4    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    5    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    6    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    7    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    8    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    9    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   10    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   11    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   12    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   13    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   14    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   15    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   16    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   17    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   18    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   19    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   20    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   21    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   22    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   23    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   24    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   25    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   26    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   27    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   28    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   29    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   30    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   31    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   32    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   33    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   34    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   35    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   36    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   37    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   38    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
             33            34            35            36            37            38
    1    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    2    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    3    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    4    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    5    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    6    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    7    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    8    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    9    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   10    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   11    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   12    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   13    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   14    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   15    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   16    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   17    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   18    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   19    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   20    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   21    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   22    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   23    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   24    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   25    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   26    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   27    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   28    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   29    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   30    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   31    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   32    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   33    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   34    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   35    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   36    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   37    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   38    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000

 DMX (TRANSFORMED, IMAG)         
              1             2             3             4             5             6             7             8
    1    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    2    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    3    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    4    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    5    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    6    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    7    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    8    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    9    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   10    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   11    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   12    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   13    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   14    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   15    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   16    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   17    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   18    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   19    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   20    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   21    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   22    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   23    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   24    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   25    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   26    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   27    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   28    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   29    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   30    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   31    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   32    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   33    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   34    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   35    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   36    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   37    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   38    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
              9            10            11            12            13            14            15            16
    1    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    2    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    3    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    4    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    5    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    6    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    7    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    8    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    9    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   10    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   11    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   12    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   13    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   14    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   15    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   16    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   17    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   18    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   19    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   20    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   21    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   22    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   23    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   24    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   25    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   26    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   27    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   28    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   29    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   30    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   31    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   32    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   33    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   34    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   35    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   36    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   37    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   38    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
             17            18            19            20            21            22            23            24
    1    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    2    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    3    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    4    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    5    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    6    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    7    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    8    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    9    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   10    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   11    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   12    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   13    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   14    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   15    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   16    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   17    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   18    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   19    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   20    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   21    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   22    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   23    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   24    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   25    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   26    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   27    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   28    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   29    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   30    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   31    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   32    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   33    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   34    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   35    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   36    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   37    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   38    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
             25            26            27            28            29            30            31            32
    1    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    2    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    3    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    4    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    5    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    6    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    7    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    8    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    9    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   10    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   11    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   12    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   13    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   14    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   15    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   16    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   17    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   18    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   19    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   20    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   21    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   22    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   23    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   24    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   25    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   26    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   27    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   28    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   29    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   30    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   31    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   32    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   33    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   34    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   35    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   36    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   37    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   38    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
             33            34            35            36            37            38
    1    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    2    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    3    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    4    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    5    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    6    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    7    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    8    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    9    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   10    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   11    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   12    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   13    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   14    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   15    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   16    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   17    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   18    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   19    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   20    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   21    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   22    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   23    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   24    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   25    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   26    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   27    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   28    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   29    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   30    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   31    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   32    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   33    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   34    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   35    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   36    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   37    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   38    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000

 No matrix element <i|DMX|i> larger than 5E-7
 No matrix element <i|DMX|1> larger than 5E-7

 DMY (TRANSFORMED, REAL)         
              1             2             3             4             5             6             7             8
    1    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    2    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    3    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    4    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    5    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    6    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    7    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    8    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    9    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   10    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   11    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   12    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   13    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   14    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   15    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   16    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   17    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   18    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   19    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   20    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   21    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   22    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   23    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   24    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   25    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   26    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   27    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   28    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   29    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   30    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   31    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   32    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   33    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   34    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   35    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   36    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   37    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   38    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
              9            10            11            12            13            14            15            16
    1    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    2    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    3    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    4    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    5    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    6    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    7    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    8    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    9    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   10    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   11    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   12    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   13    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   14    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   15    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   16    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   17    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   18    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   19    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   20    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   21    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   22    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   23    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   24    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   25    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   26    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   27    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   28    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   29    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   30    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   31    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   32    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   33    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   34    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   35    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   36    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   37    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   38    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
             17            18            19            20            21            22            23            24
    1    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    2    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    3    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    4    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    5    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    6    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    7    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    8    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    9    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   10    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   11    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   12    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   13    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   14    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   15    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   16    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   17    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   18    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   19    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   20    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   21    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   22    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   23    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   24    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   25    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   26    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   27    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   28    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   29    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   30    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   31    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   32    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   33    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   34    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   35    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   36    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   37    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   38    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
             25            26            27            28            29            30            31            32
    1    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    2    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    3    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    4    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    5    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    6    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    7    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    8    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    9    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   10    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   11    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   12    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   13    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   14    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   15    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   16    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   17    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   18    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   19    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   20    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   21    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   22    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   23    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   24    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   25    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   26    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   27    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   28    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   29    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   30    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   31    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   32    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   33    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   34    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   35    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   36    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   37    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   38    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
             33            34            35            36            37            38
    1    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    2    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    3    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    4    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    5    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    6    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    7    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    8    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    9    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   10    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   11    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   12    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   13    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   14    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   15    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   16    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   17    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   18    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   19    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   20    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   21    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   22    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   23    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   24    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   25    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   26    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   27    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   28    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   29    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   30    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   31    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   32    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   33    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   34    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   35    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   36    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   37    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   38    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000

 DMY (TRANSFORMED, IMAG)         
              1             2             3             4             5             6             7             8
    1    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    2    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    3    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    4    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    5    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    6    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    7    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    8    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    9    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   10    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   11    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   12    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   13    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   14    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   15    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   16    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   17    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   18    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   19    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   20    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   21    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   22    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   23    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   24    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   25    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   26    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   27    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   28    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   29    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   30    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   31    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   32    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   33    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   34    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   35    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   36    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   37    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   38    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
              9            10            11            12            13            14            15            16
    1    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    2    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    3    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    4    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    5    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    6    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    7    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    8    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    9    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   10    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   11    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   12    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   13    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   14    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   15    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   16    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   17    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   18    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   19    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   20    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   21    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   22    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   23    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   24    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   25    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   26    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   27    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   28    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   29    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   30    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   31    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   32    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   33    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   34    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   35    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   36    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   37    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   38    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
             17            18            19            20            21            22            23            24
    1    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    2    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    3    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    4    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    5    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    6    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    7    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    8    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    9    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   10    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   11    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   12    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   13    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   14    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   15    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   16    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   17    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   18    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   19    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   20    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   21    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   22    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   23    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   24    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   25    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   26    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   27    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   28    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   29    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   30    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   31    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   32    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   33    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   34    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   35    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   36    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   37    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   38    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
             25            26            27            28            29            30            31            32
    1    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    2    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    3    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    4    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    5    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    6    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    7    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    8    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    9    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   10    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   11    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   12    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   13    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   14    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   15    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   16    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   17    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   18    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   19    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   20    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   21    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   22    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   23    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   24    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   25    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   26    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   27    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   28    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   29    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   30    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   31    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   32    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   33    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   34    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   35    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   36    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   37    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   38    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
             33            34            35            36            37            38
    1    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    2    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    3    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    4    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    5    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    6    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    7    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    8    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    9    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   10    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   11    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   12    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   13    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   14    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   15    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   16    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   17    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   18    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   19    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   20    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   21    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   22    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   23    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   24    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   25    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   26    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   27    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   28    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   29    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   30    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   31    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   32    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   33    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   34    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   35    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   36    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   37    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   38    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000

 No matrix element <i|DMY|i> larger than 5E-7
 No matrix element <i|DMY|1> larger than 5E-7

 DMZ (TRANSFORMED, REAL)         
              1             2             3             4             5             6             7             8
    1    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    2    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    3    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    4    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    5    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    6    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    7    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    8    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    9    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   10    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   11    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   12    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   13    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   14    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   15    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   16    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   17    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   18    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   19    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   20    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   21    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   22    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   23    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   24    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   25    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   26    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   27    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   28    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   29    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   30    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   31    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   32    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   33    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   34    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   35    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   36    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   37    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   38    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
              9            10            11            12            13            14            15            16
    1    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    2    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    3    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    4    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    5    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    6    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    7    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    8    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    9    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   10    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   11    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   12    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   13    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   14    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   15    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   16    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   17    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   18    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   19    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   20    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   21    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   22    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   23    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   24    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   25    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   26    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   27    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   28    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   29    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   30    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   31    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   32    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   33    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   34    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   35    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   36    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   37    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   38    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
             17            18            19            20            21            22            23            24
    1    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    2    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    3    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    4    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    5    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    6    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    7    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    8    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    9    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   10    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   11    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   12    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   13    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   14    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   15    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   16    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   17    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   18    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   19    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   20    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   21    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   22    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   23    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   24    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   25    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   26    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   27    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   28    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   29    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   30    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   31    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   32    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   33    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   34    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   35    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   36    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   37    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   38    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
             25            26            27            28            29            30            31            32
    1    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    2    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    3    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    4    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    5    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    6    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    7    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    8    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    9    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   10    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   11    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   12    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   13    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   14    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   15    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   16    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   17    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   18    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   19    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   20    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   21    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   22    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   23    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   24    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   25    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   26    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   27    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   28    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   29    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   30    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   31    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   32    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   33    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   34    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   35    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   36    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   37    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   38    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
             33            34            35            36            37            38
    1    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    2    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    3    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    4    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    5    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    6    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    7    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    8    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    9    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   10    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   11    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   12    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   13    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   14    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   15    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   16    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   17    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   18    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   19    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   20    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   21    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   22    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   23    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   24    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   25    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   26    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   27    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   28    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   29    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   30    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   31    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   32    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   33    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   34    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   35    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   36    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   37    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   38    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000

 DMZ (TRANSFORMED, IMAG)         
              1             2             3             4             5             6             7             8
    1    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    2    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    3    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    4    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    5    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    6    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    7    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    8    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    9    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   10    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   11    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   12    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   13    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   14    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   15    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   16    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   17    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   18    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   19    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   20    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   21    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   22    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   23    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   24    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   25    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   26    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   27    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   28    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   29    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   30    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   31    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   32    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   33    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   34    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   35    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   36    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   37    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   38    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
              9            10            11            12            13            14            15            16
    1    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    2    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    3    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    4    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    5    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    6    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    7    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    8    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    9    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   10    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   11    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   12    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   13    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   14    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   15    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   16    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   17    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   18    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   19    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   20    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   21    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   22    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   23    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   24    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   25    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   26    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   27    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   28    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   29    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   30    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   31    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   32    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   33    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   34    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   35    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   36    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   37    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   38    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
             17            18            19            20            21            22            23            24
    1    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    2    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    3    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    4    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    5    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    6    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    7    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    8    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    9    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   10    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   11    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   12    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   13    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   14    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   15    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   16    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   17    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   18    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   19    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   20    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   21    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   22    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   23    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   24    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   25    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   26    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   27    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   28    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   29    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   30    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   31    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   32    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   33    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   34    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   35    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   36    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   37    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   38    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
             25            26            27            28            29            30            31            32
    1    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    2    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    3    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    4    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    5    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    6    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    7    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    8    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    9    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   10    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   11    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   12    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   13    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   14    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   15    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   16    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   17    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   18    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   19    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   20    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   21    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   22    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   23    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   24    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   25    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   26    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   27    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   28    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   29    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   30    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   31    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   32    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   33    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   34    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   35    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   36    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   37    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   38    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
             33            34            35            36            37            38
    1    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    2    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    3    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    4    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    5    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    6    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    7    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    8    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    9    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   10    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   11    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   12    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   13    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   14    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   15    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   16    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   17    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   18    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   19    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   20    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   21    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   22    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   23    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   24    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   25    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   26    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   27    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   28    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   29    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   30    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   31    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   32    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   33    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   34    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   35    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   36    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   37    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   38    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000

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
 CPU TIMES  *   1006044.18 990718.37  15236.56     77.02      8.10      3.78
 REAL TIME  *   1017143.67 SEC
 DISK USED  *         4.74 GB (local),      152.14 GB (total)
 SF USED    *        46.61 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/USERDEF energy=   1668.763326968803

              CI              CI           MULTI
   -239.85585685   -240.11789243   -239.03076644
 **********************************************************************************************************************************
 Molpro calculation terminated with 1 warning(s)
