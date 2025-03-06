
 Working directory              : /wrk/irikura/molpro.SRzICpbPzi/
 Global scratch directory       : /wrk/irikura/molpro.SRzICpbPzi/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.SRzICpbPzi/

 id        : nistki

 Nodes            nprocs
 pn112695.nist.gov   16
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1040), CPU time= 0.00 sec
 ***,Bi SO-CI
                                                                                 ! valence s2 inactive
 memory,1500,M;
 
 gprint,orbitals,civector;
 
 symmetry,xyz
 geometry={Bi};
 
 basis={
 ecp,bi,ECP60MDF;
 spdfghi,bi,aug-cc-pwCV5Z-PP;C; spdf,1,even,nprim=1,ratio=3.0;
 }
 
 PAR=2                                                                           ! parity even (1) or odd (2)
 NQ=10
 ND=8
 
 {multi
     closed,7,3
     occ,7,9
     wf,charge=0,sym=PAR,spin=3;state,NQ; weight,99, 1,1,1, 1,1,1, 1,1,1
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
 Commands initialized (846), CPU time= 0.01 sec, 717 directives.
 Default parameters read. Elapsed time= 0.12 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2023.2 linked Fri Sep 22 03:27:09 2023


 **********************************************************************************************************************************
 LABEL *   Bi SO-CI                                                                                                                                                      
  (32 PROC) 64 bit mpp version                                                           DATE: 04-Mar-25          TIME: 13:48:35  
 **********************************************************************************************************************************

 SHA1:             3c61bfe44d37c8635c785372c339f5cbdd4e4b59
 **********************************************************************************************************************************

 Memory per process:      1500 MW
 Total memory per node:  24000 MW

 GA preallocation disabled
 GA check disabled

 Variable memory set to 1500.0 MW


 ZSYMEL=XYZ

 SETTING BASIS          =    USERDEF
 SETTING PAR            =         2.00000000                                  
 SETTING NQ             =        10.00000000                                  
 SETTING ND             =         8.00000000                                  


 Recomputing integrals since basis changed


 Using spherical harmonics

 Library entry Bi   ECP ECP60MDF                 selected for group  1
 Library entry BI     S AUG-CC-PWCV5Z-PP     selected for orbital group  1
 Even tempered Bi S diffuse               selected for group 1    nprim= 1    centre=  0.008    ratio= 3.000    dratio= 1.000
 Library entry BI     P AUG-CC-PWCV5Z-PP     selected for orbital group  1
 Even tempered Bi P diffuse               selected for group 1    nprim= 1    centre=  0.005    ratio= 3.000    dratio= 1.000
 Library entry BI     D AUG-CC-PWCV5Z-PP     selected for orbital group  1
 Even tempered Bi D diffuse               selected for group 1    nprim= 1    centre=  0.012    ratio= 3.000    dratio= 1.000
 Library entry BI     F AUG-CC-PWCV5Z-PP     selected for orbital group  1
 Even tempered Bi F diffuse               selected for group 1    nprim= 1    centre=  0.021    ratio= 3.000    dratio= 1.000
 Library entry BI     G AUG-CC-PWCV5Z-PP     selected for orbital group  1
 Library entry BI     H AUG-CC-PWCV5Z-PP     selected for orbital group  1
 Library entry BI     I AUG-CC-PWCV5Z-PP     selected for orbital group  1


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
 NUMBER OF PRIMITIVE AOS:         479
 NUMBER OF SYMMETRY AOS:          343
 NUMBER OF CONTRACTIONS:          281   (  135Ag  +  146Au  )
 NUMBER OF INNER CORE ORBITALS:     0   (    0Ag  +    0Au  )
 NUMBER OF OUTER CORE ORBITALS:     9   (    6Ag  +    3Au  )
 NUMBER OF VALENCE ORBITALS:        4   (    1Ag  +    3Au  )


 LX: Ag           LY: Ag           LZ: Ag 


 NUCLEAR REPULSION ENERGY    0.00000000

 EXTRA SYMMETRY OF AOS IN SYMMETRY 1:   1 1 1 1 1 1 1 1 1 1   1 1 1 2 3 4 5 6 2 3   4 5 6 2 3 4 5 6 2 3   4 5 6 2 3 4 5 6 2 3
                                        4 5 6 2 3 4 5 6 2 3   4 5 6 2 3 4 5 6 2 3   4 5 6 2 3 4 5 6 7 8   9101112131415 7 8 9
                                       101112131415 7 8 910  1112131415 7 8 91011  12131415 7 8 9101112  131415 7 8 910111213
                                       14151617181920212223  2425262728
 EXTRA SYMMETRY OF AOS IN SYMMETRY 2:   1 2 3 1 2 3 1 2 3 1   2 3 1 2 3 1 2 3 1 2   3 1 2 3 1 2 3 1 2 3   1 2 3 1 2 3 1 2 3 4
                                        5 6 7 8 910 4 5 6 7   8 910 4 5 6 7 8 910   4 5 6 7 8 910 4 5 6   7 8 910 4 5 6 7 8 9
                                       10 4 5 6 7 8 910 4 5   6 7 8 910 4 5 6 7 8   9101112131415161718  19202111121314151617
                                       18192021111213141516  17181920211112131415  161718192021


 Eigenvalues of metric

         1 0.100E-04 0.244E-04 0.244E-04 0.244E-04 0.244E-04 0.244E-04 0.357E-04 0.220E-03
         2 0.186E-05 0.186E-05 0.186E-05 0.295E-03 0.295E-03 0.295E-03 0.205E-02 0.205E-02


 Contracted 2-electron integrals neglected if value below      1.0D-12
 AO integral compression algorithm  1   Integral accuracy      1.0D-12

     696.254 MB (compressed) written to integral file ( 13.5%)

     Node minimum: 33.030 MB, node maximum: 62.128 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:   24679576.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   2  SEGMENT LENGTH:   15976936      RECORD LENGTH: 524288

 Memory used in sort:      16.53 MW

 SORT1 READ   646821870. AND WROTE     4259373. INTEGRALS IN     14 RECORDS. CPU TIME:     3.02 SEC, REAL TIME:     3.11 SEC
 SORT2 READ    68065344. AND WROTE   395255076. INTEGRALS IN   2288 RECORDS. CPU TIME:     0.62 SEC, REAL TIME:     0.66 SEC

 Node minimum:    24675847.  Node maximum:    24720811. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      19       30.69       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         9.93      9.70
 REAL TIME  *        11.27 SEC
 DISK USED  *        31.11 MB (local),        1.88 GB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of closed-shell orbitals:  10 (    7    3)
 Number of active  orbitals:        6 (    0    6)
 Number of external orbitals:     265 (  128  137)

 State symmetry 1

 Number of active electrons:   3    Spin symmetry=Quartet   Space symmetry=2
 Number of states:            10
 Number of CSFs:              20   (20 determinants, 20 intermediate states)

 State symmetry 2

 Number of active electrons:   3    Spin symmetry=Doublet   Space symmetry=2
 Number of states:             8
 Number of CSFs:              70   (90 determinants, 90 intermediate states)

 Orbital guess generated from atomic densities.
 *** IN SYMMETRY 1 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.720D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.480D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.718D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.613D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.404D-03 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 5 6 2 4 3 1 1 3 4   5 2 6 1 5 4 3 6 2 1   5 3 6 4 2 910141215   713 811 5 2 6 3 4 1
                                        6 3 4 2 513111410 7   9 81512 11013 7 814  121511 9 3 4 6 5 2 1   910 815121113 714 3
                                        6 5 2 4222019182427  23211726162528 8 912  1510 7111314 1 5 3 6   2 4 8 910131512 714
                                       11 1 5 3 6 2 4 1 5 3   6 2 4 1 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.408D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.518D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.821D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.386D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.387D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.123D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  9 SYMMETRY CONTAMINATION OF 0.123D-04 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 3 2 2 1 3 1 2 3 1   2 3 5 910 6 4 7 8 2   3 1 510 9 7 8 4 6 3   2 1 5 710 8 9 4 6 7
                                        510 8 9 6 4 2 1 321  17162014111315121819   7 910 6 5 8 4172115  1214181620111319 2 1
                                        3 7 9 610 4 5 81416  111312151720192118 9   7 6 410 5 8 2 1 3 6   9 710 4 8 516111413
                                       19211820151217 2 3 1   6 5 810 7 4 9 2 3 1   2 3 1 2 3 1

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.85345   0.00862   0.00862   0.00862   0.00862   0.00862   0.00862   0.00862
                                          0.00862   0.00862
 Weight factors for state symmetry  2:    0.00862   0.00862   0.00862   0.00862   0.00862   0.00862   0.00862   0.00862
 
 Number of orbital rotations:  2147  ( 18 closed/active, 1307 closed/virtual, 0 active/active, 822 active/virtual )
 Total number of variables:    3067
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1    6   10    0   -213.55391893    -213.56747806   -0.01355914    0.08527731 0.00060649 0.00000000  0.14E+01      2.44
   2    6   10    0   -213.56721170    -213.56721955   -0.00000785    0.00262657 0.00000100 0.00000000  0.41E-01      4.90
   3    5   10    0   -213.56721955    -213.56721955   -0.00000000    0.00000189 0.00000000 0.00000000  0.36E-04      7.02

 CONVERGENCE REACHED!  Final gradient:    0.00000000 ( 0.34E-08)
                       Final energy:   -213.56721955
 
 Results for state 1.2 Quartet
 =============================
 !MCSCF STATE 1.2 Quartet Energy              -213.590741786467
 Nuclear energy                                  0.00000000
 Kinetic energy                                 68.98404274
 One electron energy                          -372.97137632
 Two electron energy                           159.38063453
 Virial ratio                                    4.09623405
 
 !MCSCF STATE 1.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.2 Quartet
 =============================
 !MCSCF STATE 2.2 Quartet Energy              -213.353004160009
 Nuclear energy                                  0.00000000
 Kinetic energy                                 68.44063996
 One electron energy                          -367.92857260
 Two electron energy                           154.57556844
 Virial ratio                                    4.11734379
 
 !MCSCF STATE 2.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.2 Quartet
 =============================
 !MCSCF STATE 3.2 Quartet Energy              -213.353004160009
 Nuclear energy                                  0.00000000
 Kinetic energy                                 68.44063996
 One electron energy                          -367.92857260
 Two electron energy                           154.57556844
 Virial ratio                                    4.11734379
 
 !MCSCF STATE 3.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.2 Quartet
 =============================
 !MCSCF STATE 4.2 Quartet Energy              -213.353004159843
 Nuclear energy                                  0.00000000
 Kinetic energy                                 68.44063996
 One electron energy                          -367.92857261
 Two electron energy                           154.57556845
 Virial ratio                                    4.11734379
 
 !MCSCF STATE 4.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.2 Quartet
 =============================
 !MCSCF STATE 5.2 Quartet Energy              -213.353004159801
 Nuclear energy                                  0.00000000
 Kinetic energy                                 68.44063996
 One electron energy                          -367.92857262
 Two electron energy                           154.57556846
 Virial ratio                                    4.11734379
 
 !MCSCF STATE 5.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.2 Quartet
 =============================
 !MCSCF STATE 6.2 Quartet Energy              -213.353004159756
 Nuclear energy                                  0.00000000
 Kinetic energy                                 68.44063996
 One electron energy                          -367.92857262
 Two electron energy                           154.57556846
 Virial ratio                                    4.11734379
 
 !MCSCF STATE 6.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.2 Quartet
 =============================
 !MCSCF STATE 7.2 Quartet Energy              -213.348856306816
 Nuclear energy                                  0.00000000
 Kinetic energy                                 68.53226921
 One electron energy                          -368.30325313
 Two electron energy                           154.95439682
 Virial ratio                                    4.11311531
 
 !MCSCF STATE 7.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.2 Quartet
 =============================
 !MCSCF STATE 8.2 Quartet Energy              -213.348052232803
 Nuclear energy                                  0.00000000
 Kinetic energy                                 68.44063996
 One electron energy                          -367.92857260
 Two electron energy                           154.58052036
 Virial ratio                                    4.11727144
 
 !MCSCF STATE 8.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 9.2 Quartet
 =============================
 !MCSCF STATE 9.2 Quartet Energy              -213.348052232576
 Nuclear energy                                  0.00000000
 Kinetic energy                                 68.44063996
 One electron energy                          -367.92857261
 Two electron energy                           154.58052038
 Virial ratio                                    4.11727144
 
 !MCSCF STATE 9.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 10.2 Quartet
 ==============================
 !MCSCF STATE 10.2 Quartet Energy             -213.348052232515
 Nuclear energy                                  0.00000000
 Kinetic energy                                 68.44063996
 One electron energy                          -367.92857262
 Two electron energy                           154.58052039
 Virial ratio                                    4.11727144
 
 !MCSCF STATE 10.2 Quartet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.2 Doublet
 =============================
 !MCSCF STATE 1.2 Doublet Energy              -213.533383949036
 Nuclear energy                                  0.00000000
 Kinetic energy                                 68.93990421
 One electron energy                          -372.76467011
 Two electron energy                           159.23128616
 Virial ratio                                    4.09738440
 
 !MCSCF STATE 1.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.2 Doublet
 =============================
 !MCSCF STATE 2.2 Doublet Energy              -213.533383949035
 Nuclear energy                                  0.00000000
 Kinetic energy                                 68.93990421
 One electron energy                          -372.76467011
 Two electron energy                           159.23128616
 Virial ratio                                    4.09738440
 
 !MCSCF STATE 2.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.2 Doublet
 =============================
 !MCSCF STATE 3.2 Doublet Energy              -213.533383949031
 Nuclear energy                                  0.00000000
 Kinetic energy                                 68.93990421
 One electron energy                          -372.76467011
 Two electron energy                           159.23128616
 Virial ratio                                    4.09738440
 
 !MCSCF STATE 3.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.2 Doublet
 =============================
 !MCSCF STATE 4.2 Doublet Energy              -213.533383949022
 Nuclear energy                                  0.00000000
 Kinetic energy                                 68.93990421
 One electron energy                          -372.76467011
 Two electron energy                           159.23128616
 Virial ratio                                    4.09738440
 
 !MCSCF STATE 4.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.2 Doublet
 =============================
 !MCSCF STATE 5.2 Doublet Energy              -213.533383949021
 Nuclear energy                                  0.00000000
 Kinetic energy                                 68.93990421
 One electron energy                          -372.76467011
 Two electron energy                           159.23128616
 Virial ratio                                    4.09738440
 
 !MCSCF STATE 5.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.2 Doublet
 =============================
 !MCSCF STATE 6.2 Doublet Energy              -213.496359231112
 Nuclear energy                                  0.00000000
 Kinetic energy                                 68.89637386
 One electron energy                          -372.54290533
 Two electron energy                           159.04654610
 Virial ratio                                    4.09880400
 
 !MCSCF STATE 6.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.2 Doublet
 =============================
 !MCSCF STATE 7.2 Doublet Energy              -213.496359231100
 Nuclear energy                                  0.00000000
 Kinetic energy                                 68.89637386
 One electron energy                          -372.54290533
 Two electron energy                           159.04654610
 Virial ratio                                    4.09880400
 
 !MCSCF STATE 7.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.2 Doublet
 =============================
 !MCSCF STATE 8.2 Doublet Energy              -213.496359231071
 Nuclear energy                                  0.00000000
 Kinetic energy                                 68.89637386
 One electron energy                          -372.54290534
 Two electron energy                           159.04654611
 Virial ratio                                    4.09880400
 
 !MCSCF STATE 8.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 ? Warning
 ? Transition properties are only calculated between states of the same symmetry
 ? The problem occurs in mu_properties_expec2

 !MCSCF expec      <1.2 Quartet|LXLX|1.2 Quartet>     0.000000000000
 !MCSCF expec      <2.2 Quartet|LXLX|2.2 Quartet>     3.963220384800
 !MCSCF expec      <3.2 Quartet|LXLX|3.2 Quartet>     3.999999995782
 !MCSCF expec      <4.2 Quartet|LXLX|4.2 Quartet>     0.999999999996
 !MCSCF expec      <5.2 Quartet|LXLX|5.2 Quartet>     0.999999999995
 !MCSCF expec      <6.2 Quartet|LXLX|6.2 Quartet>     0.036782038166
 !MCSCF expec      <7.2 Quartet|LXLX|7.2 Quartet>     0.000000000005
 !MCSCF expec      <8.2 Quartet|LXLX|8.2 Quartet>     0.000000000008
 !MCSCF expec      <9.2 Quartet|LXLX|9.2 Quartet>     0.999999999991
 !MCSCF expec    <10.2 Quartet|LXLX|10.2 Quartet>     0.999999999996
 !MCSCF expec      <1.2 Doublet|LXLX|1.2 Doublet>     0.119442772461
 !MCSCF expec      <2.2 Doublet|LXLX|2.2 Doublet>     1.000000002948
 !MCSCF expec      <3.2 Doublet|LXLX|3.2 Doublet>     1.000000001072
 !MCSCF expec      <4.2 Doublet|LXLX|4.2 Doublet>     3.999999990073
 !MCSCF expec      <5.2 Doublet|LXLX|5.2 Doublet>     3.880596580189
 !MCSCF expec      <6.2 Doublet|LXLX|6.2 Doublet>     1.000000000000
 !MCSCF expec      <7.2 Doublet|LXLX|7.2 Doublet>     0.999999999998
 !MCSCF expec      <8.2 Doublet|LXLX|8.2 Doublet>     0.000000000002
 
 !MCSCF expec      <1.2 Quartet|LYLY|1.2 Quartet>     0.000000000000
 !MCSCF expec      <2.2 Quartet|LYLY|2.2 Quartet>     0.687747568212
 !MCSCF expec      <3.2 Quartet|LYLY|3.2 Quartet>     0.999999965057
 !MCSCF expec      <4.2 Quartet|LYLY|4.2 Quartet>     1.000000000151
 !MCSCF expec      <5.2 Quartet|LYLY|5.2 Quartet>     3.999999999917
 !MCSCF expec      <6.2 Quartet|LYLY|6.2 Quartet>     3.312262010133
 !MCSCF expec      <7.2 Quartet|LYLY|7.2 Quartet>     0.000000000005
 !MCSCF expec      <8.2 Quartet|LYLY|8.2 Quartet>     0.999999999996
 !MCSCF expec      <9.2 Quartet|LYLY|9.2 Quartet>     0.999999999992
 !MCSCF expec    <10.2 Quartet|LYLY|10.2 Quartet>     0.000000000009
 !MCSCF expec      <1.2 Doublet|LYLY|1.2 Doublet>     3.529878804968
 !MCSCF expec      <2.2 Doublet|LYLY|2.2 Doublet>     3.999999599546
 !MCSCF expec      <3.2 Doublet|LYLY|3.2 Doublet>     1.000000522154
 !MCSCF expec      <4.2 Doublet|LYLY|4.2 Doublet>     1.000000003270
 !MCSCF expec      <5.2 Doublet|LYLY|5.2 Doublet>     0.470195665040
 !MCSCF expec      <6.2 Doublet|LYLY|6.2 Doublet>     0.000000000063
 !MCSCF expec      <7.2 Doublet|LYLY|7.2 Doublet>     0.999999999973
 !MCSCF expec      <8.2 Doublet|LYLY|8.2 Doublet>     1.000000000000
 
 !MCSCF expec      <1.2 Quartet|LZLZ|1.2 Quartet>     0.000000000000
 !MCSCF expec      <2.2 Quartet|LZLZ|2.2 Quartet>     1.349032046958
 !MCSCF expec      <3.2 Quartet|LZLZ|3.2 Quartet>     1.000000039130
 !MCSCF expec      <4.2 Quartet|LZLZ|4.2 Quartet>     3.999999999822
 !MCSCF expec      <5.2 Quartet|LZLZ|5.2 Quartet>     1.000000000056
 !MCSCF expec      <6.2 Quartet|LZLZ|6.2 Quartet>     2.650955951670
 !MCSCF expec      <7.2 Quartet|LZLZ|7.2 Quartet>     0.000000000005
 !MCSCF expec      <8.2 Quartet|LZLZ|8.2 Quartet>     0.999999999996
 !MCSCF expec      <9.2 Quartet|LZLZ|9.2 Quartet>     0.000000000017
 !MCSCF expec    <10.2 Quartet|LZLZ|10.2 Quartet>     0.999999999994
 !MCSCF expec      <1.2 Doublet|LZLZ|1.2 Doublet>     2.350678422570
 !MCSCF expec      <2.2 Doublet|LZLZ|2.2 Doublet>     1.000000397505
 !MCSCF expec      <3.2 Doublet|LZLZ|3.2 Doublet>     3.999999476773
 !MCSCF expec      <4.2 Doublet|LZLZ|4.2 Doublet>     1.000000006655
 !MCSCF expec      <5.2 Doublet|LZLZ|5.2 Doublet>     1.649207754770
 !MCSCF expec      <6.2 Doublet|LZLZ|6.2 Doublet>     0.999999999937
 !MCSCF expec      <7.2 Doublet|LZLZ|7.2 Doublet>     0.000000000029
 !MCSCF expec      <8.2 Doublet|LZLZ|8.2 Doublet>     0.999999999998
 
 !MCSCF expec      <1.2 Quartet|L**2|1.2 Quartet>     0.000000000000
 !MCSCF expec      <2.2 Quartet|L**2|2.2 Quartet>     5.999999999969
 !MCSCF expec      <3.2 Quartet|L**2|3.2 Quartet>     5.999999999969
 !MCSCF expec      <4.2 Quartet|L**2|4.2 Quartet>     5.999999999969
 !MCSCF expec      <5.2 Quartet|L**2|5.2 Quartet>     5.999999999969
 !MCSCF expec      <6.2 Quartet|L**2|6.2 Quartet>     5.999999999969
 !MCSCF expec      <7.2 Quartet|L**2|7.2 Quartet>     0.000000000014
 !MCSCF expec      <8.2 Quartet|L**2|8.2 Quartet>     2.000000000000
 !MCSCF expec      <9.2 Quartet|L**2|9.2 Quartet>     2.000000000000
 !MCSCF expec    <10.2 Quartet|L**2|10.2 Quartet>     2.000000000000
 !MCSCF expec      <1.2 Doublet|L**2|1.2 Doublet>     5.999999999999
 !MCSCF expec      <2.2 Doublet|L**2|2.2 Doublet>     5.999999999999
 !MCSCF expec      <3.2 Doublet|L**2|3.2 Doublet>     5.999999999999
 !MCSCF expec      <4.2 Doublet|L**2|4.2 Doublet>     5.999999999999
 !MCSCF expec      <5.2 Doublet|L**2|5.2 Doublet>     5.999999999999
 !MCSCF expec      <6.2 Doublet|L**2|6.2 Doublet>     2.000000000000
 !MCSCF expec      <7.2 Doublet|L**2|7.2 Doublet>     2.000000000000
 !MCSCF expec      <8.2 Doublet|L**2|8.2 Doublet>     2.000000000000
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 2 4 6 3 5 1 1 3 5   6 4 2 1 6 4 3 5 2 1   3 5 6 4 2 9 711 812  14151310 4 6 2 5 3 1
                                        4 2 6 5 3 9 71112 8  14151013 1 9 711 812  15141310 2 4 6 5 3 1   9 711 81215141310 2
                                        4 6 5 3282517212723  26241918202216 9 711   81215141310 1 2 4 6   5 3 9 711 812151413
                                       10 1 2 5 4 3 6 1 5 3   4 2 6 1 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 1 2 2 1 3 3 1 2 1   3 2 7 9 810 5 6 4 1   3 2 7 9 810 5 4 6 1   3 2 6 4 510 8 9 7 6
                                        4 510 8 9 7 3 1 211  19122113141615171820   6 4 510 8 9 7111912  2113141615172018 3 1
                                        2 6 4 510 8 7 91119  122113161415172018 4   6 5 810 7 9 3 1 2 4   6 5 810 7 911191221
                                       13161415172018 3 1 2   6 4 5 810 7 9 3 1 2   1 2 3 1 2 3
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -6.69489     1  1  s    1.00014
    2.1     2.00000    -1.32324     1  1  d0   1.00025
    3.1     2.00000    -1.32324     1  1  d1+  1.00025
    4.1     2.00000    -1.32324     1  1  d1-  1.00025
    5.1     2.00000    -1.32324     1  1  d2-  1.00025
    6.1     2.00000    -1.32324     1  1  d2+  1.00025
    7.1     2.00000    -0.69016     1  1  s   -0.41770    1  5  s    0.59786    1  6  s    0.46980
    1.2     2.00000    -4.27113     1  1  pz   1.00000
    2.2     2.00000    -4.27113     1  1  px   1.00000
    3.2     2.00000    -4.27113     1  1  py   1.00000
    4.2     0.97365    -0.14151     1  1  py  -0.27386    1  5  py   0.47671    1  6  py   0.38097
    5.2     0.97365    -0.14151     1  1  px  -0.27386    1  5  px   0.47671    1  6  px   0.38097
    6.2     0.97365    -0.14151     1  1  pz  -0.27386    1  5  pz   0.47671    1  6  pz   0.38097
    7.2     0.02635     0.05516     1 12  pz   0.81702
    8.2     0.02635     0.05516     1 12  px   0.81702
    9.2     0.02635     0.05516     1 12  py   0.81702
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 2 (Quartet)
 =======================================

 State:              1               2               3               4               5               6               7
 aaa000         0.99987583     -0.00000001     -0.00000000     -0.00000000     -0.00000000      0.00000001     -0.00155526
 a0a0a0         0.00028033      0.07812366      0.00000053     -0.00000003     -0.00000316      0.81096697     -0.57248211
 0aa00a        -0.00028033      0.74137988      0.00000175      0.00000007     -0.00000171      0.33782646      0.57248202
 0aa0a0         0.00000000      0.00000009     -0.00000081     -0.70556932      0.00000507     -0.00000004     -0.00000000
 a0a00a         0.00000000     -0.00000009      0.00000081      0.70556937     -0.00000507      0.00000004     -0.00000000
 aa00a0         0.00000000      0.00000039      0.00000151      0.00000507      0.70556933      0.00000271     -0.00000000
 a0aa00         0.00000000     -0.00000039     -0.00000151     -0.00000507     -0.70556936     -0.00000271     -0.00000000
 0aaa00        -0.00000000     -0.00000152      0.70556934     -0.00000081     -0.00000151     -0.00000031     -0.00000000
 aa000a         0.00000000     -0.00000152      0.70556935     -0.00000081     -0.00000151     -0.00000031      0.00000000
 aa0a00        -0.00028035     -0.66325618     -0.00000122     -0.00000010     -0.00000145      0.47314063      0.57248204
 a00aa0         0.00906759     -0.04896896     -0.00000012     -0.00000000      0.00000011     -0.02231381      0.07480821
 0a0a0a        -0.00906758     -0.00516017     -0.00000003      0.00000000      0.00000021     -0.05356527     -0.07480820
 00a0aa         0.00906759      0.04380880      0.00000008      0.00000001      0.00000010     -0.03125145      0.07480820
 
 Energy:     -213.59074179   -213.35300416   -213.35300416   -213.35300416   -213.35300416   -213.35300416   -213.34885631

 State:              8               9              10
 aaa000         0.00000000     -0.00000000     -0.00000000
 a0a0a0         0.00000000      0.00000000     -0.00000000
 0aa00a        -0.00000000      0.00000000     -0.00000000
 0aa0a0        -0.00000008      0.70556937     -0.00000143
 a0a00a        -0.00000008      0.70556932     -0.00000143
 aa00a0         0.00000014      0.00000143      0.70556936
 a0aa00         0.00000014      0.00000143      0.70556933
 0aaa00        -0.70556935     -0.00000008      0.00000014
 aa000a         0.70556934      0.00000008     -0.00000014
 aa0a00        -0.00000000      0.00000000      0.00000000
 a00aa0        -0.00000000     -0.00000000      0.00000000
 0a0a0a         0.00000000     -0.00000000     -0.00000000
 00a0aa        -0.00000000     -0.00000000      0.00000000
 
 Energy:     -213.34805223   -213.34805223   -213.34805223
 
 
 CI Coefficients of symmetry 2 (Doublet)
 =======================================

 State:              1               2               3               4               5               6               7
 aba000         0.80264900     -0.00000000      0.00000009      0.00000785     -0.14081813     -0.00000000     -0.00000000
 baa000        -0.27937243      0.00000005     -0.00000050     -0.00004268      0.76552349      0.00000000     -0.00000000
 0a2000         0.00000000      0.00002212      0.00001333     -0.70573109     -0.00003934     -0.00000006      0.00000090
 2a0000        -0.00000000     -0.00002212     -0.00001333      0.70573109      0.00003934     -0.00000006      0.00000090
 02a000         0.00000000     -0.00025689     -0.70573104     -0.00001334     -0.00000046     -0.00000556      0.70208536
 a20000        -0.00000001      0.70573104     -0.00025689      0.00002212     -0.00000005      0.70208536      0.00000556
 a02000         0.00000001     -0.70573104      0.00025689     -0.00002212      0.00000005      0.70208537      0.00000556
 20a000        -0.00000000      0.00025689      0.70573104      0.00001334      0.00000046     -0.00000556      0.70208537
 aab000        -0.52327658     -0.00000005      0.00000041      0.00003483     -0.62470536     -0.00000000      0.00000000
 aa000b         0.00000000      0.00000101      0.00000061     -0.03206345     -0.00000179      0.00000001     -0.00000008
 a0a00b         0.00000000     -0.00001167     -0.03206345     -0.00000061     -0.00000002      0.00000050     -0.06253689
 aa00b0        -0.00000000      0.03206345     -0.00001167      0.00000100     -0.00000000      0.06253689      0.00000050
 0aa0b0        -0.00000000      0.00001167      0.03206345      0.00000061      0.00000002      0.00000050     -0.06253689
 0aab00         0.00000000      0.00000101      0.00000061     -0.03206344     -0.00000179     -0.00000001      0.00000008
 a0ab00         0.00000000     -0.03206344      0.00001167     -0.00000100      0.00000000      0.06253688      0.00000050
 
 Energy:     -213.53338395   -213.53338395   -213.53338395   -213.53338395   -213.53338395   -213.49635923   -213.49635923

 State:              8
 aba000        -0.00000000
 baa000         0.00000000
 0a2000         0.70208537
 2a0000         0.70208537
 02a000        -0.00000090
 a20000         0.00000006
 a02000         0.00000006
 20a000        -0.00000090
 aab000        -0.00000000
 aa000b        -0.06253689
 a0a00b         0.00000008
 aa00b0         0.00000001
 0aa0b0         0.00000008
 0aab00         0.06253688
 a0ab00         0.00000001
 
 Energy:     -213.49635923
 


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       94.20       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       4        1.49       700     1000      520     2140   
                                         GEOM     BASIS   MCVARS    MCSCF   

 PROGRAMS   *        TOTAL     MULTI       INT
 CPU TIMES  *        17.96      8.03      9.70
 REAL TIME  *        20.41 SEC
 DISK USED  *        95.81 MB (local),        2.89 GB (total)
 SF USED    *       161.82 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

         ENERGY     LL
    -213.5907418   0.0
    -213.3530042   6.0
    -213.3530042   6.0
    -213.3530042   6.0
    -213.3530042   6.0
    -213.3530042   6.0
    -213.3488563   0.0
    -213.3480522   2.0
    -213.3480522   2.0
    -213.3480522   2.0
    -213.5333839   6.0
    -213.5333839   6.0
    -213.5333839   6.0
    -213.5333839   6.0
    -213.5333839   6.0
    -213.4963592   2.0
    -213.4963592   2.0
    -213.4963592   2.0
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 10  Roots:   1   2   3   4   5   6   7   8   9  10
 Number of reference states: 10  Roots:   1   2   3   4   5   6   7   8   9  10

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
 Number of external orbitals:     265 ( 128 137 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Valence orbitals related to previous ones by unitary transformation. Operators transformed.


 Number of p-space configurations:  10

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -213.59074179
     2      -213.35300416
     3      -213.35300416
     4      -213.35300416
     5      -213.35300416
     6      -213.35300416
     7      -213.34885631
     8      -213.34805223
     9      -213.34805223
    10      -213.34805223

 Number of blocks in overlap matrix:  1083   Smallest eigenvalue:  0.53D-04
 Number of N-2 electron functions:    1306
 Number of N-1 electron functions:   22565

 Number of internal configurations:                10436
 Number of singly external configurations:       2999425
 Number of doubly external configurations:      22941849
 Total number of contracted configurations:     25951710
 Total number of uncontracted configurations:  248483850

 Diagonal Coupling coefficients finished.               Storage:   6094492 words, CPU-Time:      3.17 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   3494151 words, CPU-time:      4.38 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -213.59074179     0.00000000    -0.99566651  0.42D-01  0.12D+00    10.91
    1     2     2     1.00000000     0.00000000  -213.35300416    -0.00000000    -0.96825920  0.47D-01  0.11D+00    10.91
    1     3     3     1.00000000     0.00000000  -213.35300416    -0.00000000    -0.96882713  0.47D-01  0.11D+00    10.91
    1     4     4     1.00000000     0.00000000  -213.35300416     0.00000000    -0.96875833  0.47D-01  0.11D+00    10.91
    1     5     5     1.00000000     0.00000000  -213.35300416     0.00000000    -0.96891952  0.47D-01  0.11D+00    10.91
    1     6     6     1.00000000     0.00000000  -213.35300416    -0.00000000    -0.96828808  0.47D-01  0.11D+00    10.91
    1     7     7     1.00000000     0.00000000  -213.34885631    -0.00000000    -0.97343763  0.51D-01  0.11D+00    10.91
    1     8     8     1.00000000     0.00000000  -213.34805223    -0.00000000    -0.96974543  0.48D-01  0.11D+00    10.91
    1     9     9     1.00000000     0.00000000  -213.34805223    -0.00000000    -0.96969479  0.48D-01  0.11D+00    10.91
    1    10    10     1.00000000     0.00000000  -213.34805223    -0.00000000    -0.96980312  0.48D-01  0.11D+00    10.91
    2     1     1     1.10382411    -0.79746567  -214.38820745    -0.79746567    -0.02548544  0.34D-02  0.21D-02   402.25
    2     2     2     1.10376839    -0.79270386  -214.14570802    -0.79270386    -0.02286420  0.30D-02  0.18D-02   402.25
    2     3     3     1.10385700    -0.79254635  -214.14555051    -0.79254635    -0.02304743  0.30D-02  0.18D-02   402.25
    2     4     4     1.10392558    -0.79253106  -214.14553521    -0.79253106    -0.02305018  0.31D-02  0.18D-02   402.25
    2     5     5     1.10389074    -0.79250239  -214.14550655    -0.79250239    -0.02309404  0.30D-02  0.18D-02   402.25
    2     6     6     1.10394972    -0.79243254  -214.14543670    -0.79243254    -0.02317279  0.31D-02  0.18D-02   402.25
    2     7     7     1.10443130    -0.79195677  -214.14081308    -0.79195677    -0.02326053  0.31D-02  0.19D-02   402.25
    2     8     8     1.10446759    -0.79271734  -214.14076957    -0.79271734    -0.02330941  0.31D-02  0.19D-02   402.25
    2     9     9     1.10449395    -0.79267737  -214.14072960    -0.79267737    -0.02335288  0.31D-02  0.19D-02   402.25
    2    10    10     1.10576961    -0.79249707  -214.14054930    -0.79249707    -0.02493517  0.43D-02  0.18D-02   402.25
    3     1     1     1.08980856    -0.82162397  -214.41236576    -0.02415831    -0.00027630  0.39D-04  0.25D-04   794.10
    3     2     2     1.09025862    -0.81445954  -214.16746370    -0.02175568    -0.00026073  0.36D-04  0.24D-04   794.10
    3     3     3     1.09026198    -0.81445752  -214.16746168    -0.02191117    -0.00026278  0.36D-04  0.24D-04   794.10
    3     4     4     1.09025131    -0.81445684  -214.16746100    -0.02192578    -0.00026352  0.36D-04  0.24D-04   794.10
    3     5     5     1.09026132    -0.81445677  -214.16746093    -0.02195439    -0.00026354  0.36D-04  0.24D-04   794.10
    3     6     6     1.09025978    -0.81445559  -214.16745975    -0.02202305    -0.00026477  0.36D-04  0.24D-04   794.10
    3     7     7     1.09030932    -0.81535500  -214.16421131    -0.02339823    -0.00031936  0.49D-04  0.31D-04   794.10
    3     8     8     1.09050936    -0.81488505  -214.16293728    -0.02216772    -0.00026506  0.35D-04  0.25D-04   794.10
    3     9     9     1.09050857    -0.81488440  -214.16293663    -0.02220703    -0.00026571  0.35D-04  0.25D-04   794.10
    3    10    10     1.09050828    -0.81488361  -214.16293584    -0.02238654    -0.00026652  0.35D-04  0.26D-04   794.10
    4     1     1     1.08956438    -0.82191074  -214.41265253    -0.00028677    -0.00000609  0.89D-06  0.57D-06  1187.22
    4     2     2     1.09003968    -0.81472868  -214.16773284    -0.00026914    -0.00000704  0.13D-05  0.56D-06  1187.22
    4     3     3     1.09003800    -0.81472865  -214.16773281    -0.00027113    -0.00000707  0.13D-05  0.57D-06  1187.22
    4     4     4     1.09003953    -0.81472864  -214.16773280    -0.00027180    -0.00000704  0.13D-05  0.56D-06  1187.22
    4     5     5     1.09003929    -0.81472863  -214.16773279    -0.00027186    -0.00000704  0.13D-05  0.56D-06  1187.22
    4     6     6     1.09003878    -0.81472861  -214.16773277    -0.00027303    -0.00000706  0.13D-05  0.57D-06  1187.22
    4     7     7     1.09000408    -0.81568606  -214.16454237    -0.00033106    -0.00000964  0.21D-05  0.82D-06  1187.22
    4     8     8     1.09028201    -0.81515885  -214.16321108    -0.00027380    -0.00000708  0.14D-05  0.57D-06  1187.22
    4     9     9     1.09028181    -0.81515884  -214.16321107    -0.00027444    -0.00000709  0.14D-05  0.57D-06  1187.22
    4    10    10     1.09028160    -0.81515882  -214.16321105    -0.00027521    -0.00000710  0.14D-05  0.57D-06  1187.22
    5     1     1     1.08963367    -0.82191723  -214.41265901    -0.00000649    -0.00000015  0.14D-07  0.16D-07  1582.60
    5     2     2     1.09006217    -0.81473613  -214.16774029    -0.00000745    -0.00000023  0.32D-07  0.23D-07  1582.60
    5     3     3     1.09006206    -0.81473613  -214.16774029    -0.00000748    -0.00000023  0.32D-07  0.23D-07  1582.60
    5     4     4     1.09006207    -0.81473610  -214.16774026    -0.00000746    -0.00000023  0.32D-07  0.23D-07  1582.60
    5     5     5     1.09006210    -0.81473610  -214.16774026    -0.00000746    -0.00000023  0.32D-07  0.23D-07  1582.60
    5     6     6     1.09006205    -0.81473610  -214.16774026    -0.00000748    -0.00000023  0.32D-07  0.23D-07  1582.60
    5     7     7     1.09001164    -0.81569621  -214.16455252    -0.00001015    -0.00000033  0.52D-07  0.34D-07  1582.60
    5     8     8     1.09030291    -0.81516639  -214.16321863    -0.00000754    -0.00000024  0.36D-07  0.24D-07  1582.60
    5     9     9     1.09030292    -0.81516639  -214.16321863    -0.00000755    -0.00000024  0.36D-07  0.24D-07  1582.60
    5    10    10     1.09030292    -0.81516639  -214.16321863    -0.00000757    -0.00000024  0.36D-07  0.24D-07  1582.60
    6     1     1     1.08964116    -0.82191738  -214.41265917    -0.00000016    -0.00000000  0.46D-09  0.39D-09  1976.92
    6     2     2     1.09007608    -0.81473638  -214.16774054    -0.00000025    -0.00000001  0.78D-09  0.84D-09  1976.92
    6     3     3     1.09007607    -0.81473638  -214.16774054    -0.00000025    -0.00000001  0.78D-09  0.84D-09  1976.92
    6     4     4     1.09007602    -0.81473634  -214.16774050    -0.00000025    -0.00000001  0.79D-09  0.85D-09  1976.92
    6     5     5     1.09007602    -0.81473634  -214.16774050    -0.00000025    -0.00000001  0.78D-09  0.86D-09  1976.92
    6     6     6     1.09007600    -0.81473634  -214.16774050    -0.00000025    -0.00000001  0.79D-09  0.86D-09  1976.92
    6     7     7     1.09001914    -0.81569656  -214.16455286    -0.00000035    -0.00000001  0.11D-08  0.15D-08  1976.92
    6     8     8     1.09031672    -0.81516665  -214.16321888    -0.00000026    -0.00000001  0.87D-09  0.90D-09  1976.92
    6     9     9     1.09031671    -0.81516665  -214.16321888    -0.00000026    -0.00000001  0.87D-09  0.90D-09  1976.92
    6    10    10     1.09031671    -0.81516665  -214.16321888    -0.00000026    -0.00000001  0.88D-09  0.90D-09  1976.92


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.3%
 S   0.3%   6.7%
 P   0.5%  21.0%  22.6%

 Initialization:   0.4%
 Other:           48.2%

 Total CPU:     1976.9 seconds
 =====================================



 Wavefunction saved on  5302.2

 Reference coefficients greater than 0.0500000
 =============================================
 2222222222///000           0.9575656  -0.0000000   0.0000000  -0.0000000   0.0000000   0.0000000   0.0178879   0.0000000
                           -0.0000000   0.0000000
 2222222222/0/0/0           0.0116616   0.1332039   0.7680489   0.0000000  -0.0000000  -0.0000000  -0.5473917  -0.0000000
                            0.0000000   0.0000000
 22222222220//00/          -0.0116616   0.7317519   0.2686665  -0.0000000  -0.0000000  -0.0000000   0.5473916   0.0000000
                           -0.0000000  -0.0000000
 2222222222/0//00          -0.0000000   0.0000000   0.0000000  -0.0000000   0.0000000   0.6750792   0.0000000   0.0000000
                            0.0000000   0.6749920
 2222222222/0/00/          -0.0000000   0.0000000   0.0000000   0.0000000   0.6750792  -0.0000000   0.0000000   0.0000000
                            0.6749920  -0.0000000
 2222222222//000/           0.0000000   0.0000000  -0.0000000   0.6750792  -0.0000000   0.0000000  -0.0000000   0.6749920
                            0.0000000  -0.0000000
 2222222222//00/0          -0.0000000   0.0000000   0.0000000   0.0000000   0.0000000  -0.6750792   0.0000000   0.0000000
                            0.0000000   0.6749920
 22222222220///00           0.0000000  -0.0000000   0.0000000   0.6750792  -0.0000000   0.0000000   0.0000000  -0.6749920
                           -0.0000000   0.0000000
 22222222220//0/0           0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.6750791  -0.0000000   0.0000000  -0.0000000
                            0.6749920   0.0000000
 2222222222//0/00          -0.0116616  -0.5985479   0.4993825  -0.0000000  -0.0000000  -0.0000000   0.5473917   0.0000000
                           -0.0000000  -0.0000000
 2222222222/00//0           0.0072389  -0.0500738  -0.0183849  -0.0000000  -0.0000000  -0.0000000   0.0745580   0.0000000
                           -0.0000000  -0.0000000
 22222222220/0/0/          -0.0072389  -0.0091152  -0.0525576  -0.0000000   0.0000000  -0.0000000  -0.0745580  -0.0000000
                            0.0000000   0.0000000
 222222222200/0//           0.0072389   0.0409587  -0.0341727   0.0000000   0.0000000  -0.0000000   0.0745580   0.0000000
                            0.0000000  -0.0000000

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.957655   -0.000000    0.000000   -0.000000   -0.000000   -0.000000   -0.019892   -0.000000    0.000000   -0.000000
 2          -0.000000    0.954172   -0.000000    0.000000    0.000000    0.072680   -0.000000    0.000000    0.000000    0.000000
 3          -0.000000   -0.072680    0.000000    0.000000    0.000000    0.954172   -0.000000   -0.000000   -0.000000    0.000000
 4          -0.000000    0.000000    0.956936    0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.000000   -0.000000
 5           0.000000    0.000000   -0.000000    0.956936    0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.000000
 6           0.000000    0.000000    0.000000   -0.000000    0.956936   -0.000000    0.000000   -0.000000   -0.000000   -0.000000
 7           0.019455   -0.000000    0.000000    0.000000   -0.000000    0.000000    0.956823   -0.000000    0.000000    0.000000
 8           0.000000   -0.000000    0.000000    0.000000   -0.000000    0.000000    0.000000    0.956813   -0.000000    0.000000
 9          -0.000000    0.000000   -0.000000    0.000000    0.000000    0.000000   -0.000000    0.000000    0.956813    0.000000
 10          0.000000   -0.000000    0.000000   -0.000000    0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.956813

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.957861   -0.000000   -0.000000    0.000000   -0.000000   -0.000000   -0.000210    0.000000    0.000000    0.000000
 2          -0.000000    0.956936   -0.000000    0.000000    0.000000    0.000000   -0.000000   -0.000000    0.000000    0.000000
 3          -0.000000   -0.000000    0.956936   -0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.000000   -0.000000
 4           0.000000    0.000000   -0.000000    0.956936    0.000000    0.000000    0.000000    0.000000    0.000000    0.000000
 5          -0.000000    0.000000   -0.000000    0.000000    0.956936   -0.000000   -0.000000   -0.000000    0.000000   -0.000000
 6          -0.000000    0.000000    0.000000    0.000000   -0.000000    0.956936   -0.000000   -0.000000    0.000000   -0.000000
 7          -0.000210   -0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.957020    0.000000    0.000000   -0.000000
 8           0.000000   -0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.000000    0.956813    0.000000   -0.000000
 9           0.000000    0.000000    0.000000    0.000000    0.000000    0.000000    0.000000    0.000000    0.956813    0.000000
 10          0.000000    0.000000   -0.000000    0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.956813


 RESULTS FOR STATE 1.2
 =====================

 Coefficient of reference function:   C(0) = 0.95765465 (fixed)   0.95786122 (relaxed)   0.95786119 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00025642   -0.00072907   -0.70569901
 Singles      0.01401512   -0.05297227   -0.05917410
 Pairs        0.07564903    0.00000000   -0.05704427
 Total        1.08992056   -0.05370135   -0.82191738
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.59063966
 Nuclear energy                         0.00000000
 Kinetic energy                        69.52430714
 One electron energy                 -372.55630161
 Two electron energy                  158.14364244
 Virial quotient                       -3.08399563
 Correlation energy                    -0.82201951
 !MRCI STATE 1.2 Energy              -214.412659170924

 Properties without orbital relaxation:

 !MRCI STATE 1.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.48657563 (Davidson, fixed reference)
 Cluster corrected energies          -214.48657558 (Davidson, relaxed reference)
 Cluster corrected energies          -214.48657563 (Davidson, rotated reference)

 Cluster corrected energies          -214.48428002 (Pople, fixed reference)
 Cluster corrected energies          -214.48427997 (Pople, relaxed reference)
 Cluster corrected energies          -214.48428002 (Pople, rotated reference)



 RESULTS FOR STATE 2.2
 =====================

 Coefficient of reference function:   C(0) = 0.95417201 (fixed)   0.95693875 (relaxed)   0.95693607 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00179149   -0.00419116   -0.68719881
 Singles      0.01939765   -0.06575498   -0.07468873
 Pairs        0.07083980   -0.00000000   -0.05284884
 Total        1.09202895   -0.06994614   -0.81473638
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.35300416
 Nuclear energy                         0.00000000
 Kinetic energy                        69.22607309
 One electron energy                 -368.01953505
 Two electron energy                  153.85179451
 Virial quotient                       -3.09374389
 Correlation energy                    -0.81473638
 !MRCI STATE 2.2 Energy              -214.167740540326

 Properties without orbital relaxation:

 !MRCI STATE 2.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.24271987 (Davidson, fixed reference)
 Cluster corrected energies          -214.24271488 (Davidson, relaxed reference)
 Cluster corrected energies          -214.24271987 (Davidson, rotated reference)

 Cluster corrected energies          -214.24052039 (Pople, fixed reference)
 Cluster corrected energies          -214.24051517 (Pople, relaxed reference)
 Cluster corrected energies          -214.24052039 (Pople, rotated reference)



 RESULTS FOR STATE 3.2
 =====================

 Maximum overlap with reference state  6

 Coefficient of reference function:   C(0) = 0.95417202 (fixed)   0.95693876 (relaxed)   0.95693608 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00179150   -0.00419116   -0.68719886
 Singles      0.01939762   -0.06575494   -0.07468870
 Pairs        0.07083982   -0.00000000   -0.05284882
 Total        1.09202893   -0.06994610   -0.81473638
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.35300416
 Nuclear energy                         0.00000000
 Kinetic energy                        69.22607254
 One electron energy                 -368.01953409
 Two electron energy                  153.85179355
 Virial quotient                       -3.09374391
 Correlation energy                    -0.81473638
 !MRCI STATE 3.2 Energy              -214.167740540154

 Properties without orbital relaxation:

 !MRCI STATE 3.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.24271986 (Davidson, fixed reference)
 Cluster corrected energies          -214.24271487 (Davidson, relaxed reference)
 Cluster corrected energies          -214.24271986 (Davidson, rotated reference)

 Cluster corrected energies          -214.24052038 (Pople, fixed reference)
 Cluster corrected energies          -214.24051516 (Pople, relaxed reference)
 Cluster corrected energies          -214.24052038 (Pople, rotated reference)



 RESULTS FOR STATE 4.2
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.95693610 (fixed)   0.95693878 (relaxed)   0.95693610 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00179150   -0.00419117   -0.68719876
 Singles      0.01939763   -0.06575504   -0.07468869
 Pairs        0.07083975    0.00000000   -0.05284889
 Total        1.09202889   -0.06994621   -0.81473634
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.35300416
 Nuclear energy                         0.00000000
 Kinetic energy                        69.22607118
 One electron energy                 -368.01953431
 Two electron energy                  153.85179380
 Virial quotient                       -3.09374397
 Correlation energy                    -0.81473634
 !MRCI STATE 4.2 Energy              -214.167740504479

 Properties without orbital relaxation:

 !MRCI STATE 4.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.24271978 (Davidson, fixed reference)
 Cluster corrected energies          -214.24271480 (Davidson, relaxed reference)
 Cluster corrected energies          -214.24271978 (Davidson, rotated reference)

 Cluster corrected energies          -214.24052030 (Pople, fixed reference)
 Cluster corrected energies          -214.24051508 (Pople, relaxed reference)
 Cluster corrected energies          -214.24052030 (Pople, rotated reference)



 RESULTS FOR STATE 5.2
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.95693609 (fixed)   0.95693878 (relaxed)   0.95693609 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00179150   -0.00419117   -0.68719875
 Singles      0.01939764   -0.06575506   -0.07468870
 Pairs        0.07083974   -0.00000000   -0.05284889
 Total        1.09202889   -0.06994622   -0.81473634
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.35300416
 Nuclear energy                         0.00000000
 Kinetic energy                        69.22607057
 One electron energy                 -368.01953377
 Two electron energy                  153.85179326
 Virial quotient                       -3.09374400
 Correlation energy                    -0.81473634
 !MRCI STATE 5.2 Energy              -214.167740504383

 Properties without orbital relaxation:

 !MRCI STATE 5.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.24271979 (Davidson, fixed reference)
 Cluster corrected energies          -214.24271480 (Davidson, relaxed reference)
 Cluster corrected energies          -214.24271979 (Davidson, rotated reference)

 Cluster corrected energies          -214.24052030 (Pople, fixed reference)
 Cluster corrected energies          -214.24051508 (Pople, relaxed reference)
 Cluster corrected energies          -214.24052030 (Pople, rotated reference)



 RESULTS FOR STATE 6.2
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.95693610 (fixed)   0.95693878 (relaxed)   0.95693610 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00179150   -0.00419117   -0.68719882
 Singles      0.01939761   -0.06575502   -0.07468868
 Pairs        0.07083976    0.00000002   -0.05284885
 Total        1.09202888   -0.06994616   -0.81473634
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.35300416
 Nuclear energy                         0.00000000
 Kinetic energy                        69.22607089
 One electron energy                 -368.01953383
 Two electron energy                  153.85179333
 Virial quotient                       -3.09374399
 Correlation energy                    -0.81473634
 !MRCI STATE 6.2 Energy              -214.167740504338

 Properties without orbital relaxation:

 !MRCI STATE 6.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.24271978 (Davidson, fixed reference)
 Cluster corrected energies          -214.24271479 (Davidson, relaxed reference)
 Cluster corrected energies          -214.24271978 (Davidson, rotated reference)

 Cluster corrected energies          -214.24052029 (Pople, fixed reference)
 Cluster corrected energies          -214.24051507 (Pople, relaxed reference)
 Cluster corrected energies          -214.24052029 (Pople, rotated reference)



 RESULTS FOR STATE 7.2
 =====================

 Coefficient of reference function:   C(0) = 0.95682256 (fixed)   0.95703291 (relaxed)   0.95702031 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00166746   -0.00389624   -0.68885594
 Singles      0.01904663   -0.06493850   -0.07370935
 Pairs        0.07112262   -0.00000000   -0.05313127
 Total        1.09183671   -0.06883474   -0.81569656
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.34895844
 Nuclear energy                         0.00000000
 Kinetic energy                        69.26409978
 One electron energy                 -368.20840708
 Two electron energy                  154.04385422
 Virial quotient                       -3.09199937
 Correlation energy                    -0.81559443
 !MRCI STATE 7.2 Energy              -214.164552862703

 Properties without orbital relaxation:

 !MRCI STATE 7.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.23945437 (Davidson, fixed reference)
 Cluster corrected energies          -214.23943092 (Davidson, relaxed reference)
 Cluster corrected energies          -214.23945437 (Davidson, rotated reference)

 Cluster corrected energies          -214.23724539 (Pople, fixed reference)
 Cluster corrected energies          -214.23722087 (Pople, relaxed reference)
 Cluster corrected energies          -214.23724539 (Pople, rotated reference)



 RESULTS FOR STATE 8.2
 =====================

 Coefficient of reference function:   C(0) = 0.95681260 (fixed)   0.95681529 (relaxed)   0.95681260 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00182890   -0.00423175   -0.68735220
 Singles      0.01946394   -0.06585527   -0.07481795
 Pairs        0.07101795   -0.00000000   -0.05299650
 Total        1.09231079   -0.07008702   -0.81516665
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.34805223
 Nuclear energy                         0.00000000
 Kinetic energy                        69.22649593
 One electron energy                 -368.01678796
 Two electron energy                  153.85356907
 Virial quotient                       -3.09365967
 Correlation energy                    -0.81516665
 !MRCI STATE 8.2 Energy              -214.163218882687

 Properties without orbital relaxation:

 !MRCI STATE 8.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.23846756 (Davidson, fixed reference)
 Cluster corrected energies          -214.23846256 (Davidson, relaxed reference)
 Cluster corrected energies          -214.23846756 (Davidson, rotated reference)

 Cluster corrected energies          -214.23627753 (Pople, fixed reference)
 Cluster corrected energies          -214.23627230 (Pople, relaxed reference)
 Cluster corrected energies          -214.23627753 (Pople, rotated reference)



 RESULTS FOR STATE 9.2
 =====================

 Coefficient of reference function:   C(0) = 0.95681260 (fixed)   0.95681529 (relaxed)   0.95681260 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00182890   -0.00423175   -0.68735219
 Singles      0.01946395   -0.06585529   -0.07481796
 Pairs        0.07101794   -0.00000000   -0.05299650
 Total        1.09231079   -0.07008704   -0.81516665
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.34805223
 Nuclear energy                         0.00000000
 Kinetic energy                        69.22649551
 One electron energy                 -368.01678767
 Two electron energy                  153.85356879
 Virial quotient                       -3.09365969
 Correlation energy                    -0.81516665
 !MRCI STATE 9.2 Energy              -214.163218882549

 Properties without orbital relaxation:

 !MRCI STATE 9.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.23846756 (Davidson, fixed reference)
 Cluster corrected energies          -214.23846256 (Davidson, relaxed reference)
 Cluster corrected energies          -214.23846756 (Davidson, rotated reference)

 Cluster corrected energies          -214.23627753 (Pople, fixed reference)
 Cluster corrected energies          -214.23627230 (Pople, relaxed reference)
 Cluster corrected energies          -214.23627753 (Pople, rotated reference)



 RESULTS FOR STATE 10.2
 ======================

 Coefficient of reference function:   C(0) = 0.95681261 (fixed)   0.95681529 (relaxed)   0.95681261 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00182890   -0.00423175   -0.00523901
 Singles      0.01946393   -0.06585525   -0.07481794
 Pairs        0.07101796   -0.74507963   -0.73510971
 Total        1.09231079   -0.81516663   -0.81516665
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.34805223
 Nuclear energy                         0.00000000
 Kinetic energy                        69.22649565
 One electron energy                 -368.01678746
 Two electron energy                  153.85356858
 Virial quotient                       -3.09365969
 Correlation energy                    -0.81516665
 !MRCI STATE 10.2 Energy             -214.163218882475

 Properties without orbital relaxation:

 !MRCI STATE 10.2 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.23846756 (Davidson, fixed reference)
 Cluster corrected energies          -214.23846256 (Davidson, relaxed reference)
 Cluster corrected energies          -214.23846756 (Davidson, rotated reference)

 Cluster corrected energies          -214.23627753 (Pople, fixed reference)
 Cluster corrected energies          -214.23627230 (Pople, relaxed reference)
 Cluster corrected energies          -214.23627753 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       94.20       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       5     1992.70       700     1000      520     2140     5302   
                                         GEOM     BASIS   MCVARS    MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI       INT
 CPU TIMES  *      2161.60   2143.63      8.03      9.70
 REAL TIME  *      2283.11 SEC
 DISK USED  *         2.04 GB (local),       34.00 GB (total)
 SF USED    *        18.90 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =      -214.48657563  AU                              
 SETTING HLSDIAG(2)     =      -214.24271987  AU                              
 SETTING HLSDIAG(3)     =      -214.24271986  AU                              
 SETTING HLSDIAG(4)     =      -214.24271978  AU                              
 SETTING HLSDIAG(5)     =      -214.24271979  AU                              
 SETTING HLSDIAG(6)     =      -214.24271978  AU                              
 SETTING HLSDIAG(7)     =      -214.23945437  AU                              
 SETTING HLSDIAG(8)     =      -214.23846756  AU                              
 SETTING HLSDIAG(9)     =      -214.23846756  AU                              
 SETTING HLSDIAG(10)    =      -214.23846756  AU                              


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
 Number of external orbitals:     265 ( 128 137 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Coulomb and exchange operators available. No transformation done.


 Number of p-space configurations:  35

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -213.53338395
     2      -213.53338395
     3      -213.53338395
     4      -213.53338395
     5      -213.53338395
     6      -213.49635923
     7      -213.49635923
     8      -213.49635923

 Number of blocks in overlap matrix:   886   Smallest eigenvalue:  0.66D-03
 Number of N-2 electron functions:    1332
 Number of N-1 electron functions:   28036

 Number of internal configurations:                14896
 Number of singly external configurations:       3728792
 Number of doubly external configurations:      23394148
 Total number of contracted configurations:     27137836
 Total number of uncontracted configurations:  386701194

 Diagonal Coupling coefficients finished.               Storage:   7754009 words, CPU-Time:      4.61 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   3509159 words, CPU-time:      4.43 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -213.53338395     0.00000000    -1.01338802  0.51D-01  0.13D+00    13.15
    1     2     2     1.00000000     0.00000000  -213.53338395     0.00000000    -1.01292171  0.50D-01  0.13D+00    13.15
    1     3     3     1.00000000     0.00000000  -213.53338395     0.00000000    -1.01263071  0.50D-01  0.13D+00    13.15
    1     4     4     1.00000000     0.00000000  -213.53338395    -0.00000000    -1.01266749  0.50D-01  0.13D+00    13.15
    1     5     5     1.00000000     0.00000000  -213.53338395     0.00000000    -1.01318293  0.50D-01  0.13D+00    13.15
    1     6     6     1.00000000     0.00000000  -213.49635923     0.00000000    -1.01201219  0.38D-01  0.14D+00    13.15
    1     7     7     1.00000000     0.00000000  -213.49635923     0.00000000    -1.01195238  0.38D-01  0.14D+00    13.15
    1     8     8     1.00000000     0.00000000  -213.49635923    -0.00000000    -1.01207257  0.38D-01  0.14D+00    13.15
    2     1     1     1.11040018    -0.80498141  -214.33836536    -0.80498141    -0.02762063  0.38D-02  0.23D-02   380.80
    2     2     2     1.11042655    -0.80493907  -214.33832301    -0.80493907    -0.02766863  0.38D-02  0.23D-02   380.80
    2     3     3     1.11049131    -0.80485139  -214.33823534    -0.80485139    -0.02776357  0.38D-02  0.23D-02   380.80
    2     4     4     1.11060142    -0.80477055  -214.33815450    -0.80477055    -0.02784994  0.39D-02  0.23D-02   380.80
    2     5     5     1.11087694    -0.80449476  -214.33787871    -0.80449476    -0.02815232  0.40D-02  0.24D-02   380.80
    2     6     6     1.10868566    -0.80836573  -214.30472497    -0.80836573    -0.02811905  0.36D-02  0.27D-02   380.80
    2     7     7     1.10872735    -0.80831486  -214.30467409    -0.80831486    -0.02817574  0.36D-02  0.28D-02   380.80
    2     8     8     1.10872978    -0.80831420  -214.30467343    -0.80831420    -0.02817547  0.36D-02  0.28D-02   380.80
    3     1     1     1.09470102    -0.83083313  -214.36421708    -0.02585172    -0.00037484  0.56D-04  0.37D-04   749.45
    3     2     2     1.09470076    -0.83083207  -214.36421602    -0.02589301    -0.00037582  0.56D-04  0.37D-04   749.45
    3     3     3     1.09469844    -0.83083132  -214.36421526    -0.02597992    -0.00037684  0.56D-04  0.37D-04   749.45
    3     4     4     1.09470145    -0.83082791  -214.36421186    -0.02605736    -0.00037987  0.57D-04  0.38D-04   749.45
    3     5     5     1.09471271    -0.83082418  -214.36420813    -0.02632942    -0.00038418  0.57D-04  0.39D-04   749.45
    3     6     6     1.09376914    -0.83459566  -214.33095490    -0.02622993    -0.00037937  0.43D-04  0.48D-04   749.45
    3     7     7     1.09377262    -0.83459421  -214.33095344    -0.02627935    -0.00038077  0.43D-04  0.48D-04   749.45
    3     8     8     1.09377233    -0.83459384  -214.33095307    -0.02627964    -0.00038121  0.43D-04  0.48D-04   749.45
    4     1     1     1.09397696    -0.83121819  -214.36460214    -0.00038506    -0.00001211  0.23D-05  0.12D-05  1118.69
    4     2     2     1.09397698    -0.83121813  -214.36460208    -0.00038606    -0.00001216  0.23D-05  0.12D-05  1118.69
    4     3     3     1.09397742    -0.83121812  -214.36460207    -0.00038680    -0.00001219  0.23D-05  0.12D-05  1118.69
    4     4     4     1.09397631    -0.83121812  -214.36460207    -0.00039021    -0.00001217  0.23D-05  0.12D-05  1118.69
    4     5     5     1.09397563    -0.83121800  -214.36460195    -0.00039382    -0.00001227  0.23D-05  0.12D-05  1118.69
    4     6     6     1.09311714    -0.83498127  -214.33134050    -0.00038561    -0.00001142  0.20D-05  0.13D-05  1118.69
    4     7     7     1.09311656    -0.83498125  -214.33134048    -0.00038704    -0.00001143  0.20D-05  0.13D-05  1118.69
    4     8     8     1.09311620    -0.83498124  -214.33134047    -0.00038740    -0.00001145  0.20D-05  0.13D-05  1118.69
    5     1     1     1.09393211    -0.83123120  -214.36461515    -0.00001301    -0.00000041  0.49D-07  0.48D-07  1488.36
    5     2     2     1.09393196    -0.83123120  -214.36461515    -0.00001307    -0.00000040  0.47D-07  0.47D-07  1488.36
    5     3     3     1.09393204    -0.83123120  -214.36461515    -0.00001308    -0.00000041  0.49D-07  0.48D-07  1488.36
    5     4     4     1.09393170    -0.83123119  -214.36461514    -0.00001308    -0.00000041  0.49D-07  0.48D-07  1488.36
    5     5     5     1.09393185    -0.83123119  -214.36461514    -0.00001319    -0.00000042  0.49D-07  0.48D-07  1488.36
    5     6     6     1.09310931    -0.83499361  -214.33135284    -0.00001233    -0.00000037  0.43D-07  0.46D-07  1488.36
    5     7     7     1.09310946    -0.83499361  -214.33135284    -0.00001236    -0.00000037  0.43D-07  0.46D-07  1488.36
    5     8     8     1.09310933    -0.83499361  -214.33135284    -0.00001237    -0.00000037  0.43D-07  0.46D-07  1488.36
    6     1     1     1.09392734    -0.83123163  -214.36461558    -0.00000043    -0.00000001  0.12D-08  0.15D-08  1859.01
    6     2     2     1.09392733    -0.83123162  -214.36461557    -0.00000042    -0.00000001  0.12D-08  0.15D-08  1859.01
    6     3     3     1.09392742    -0.83123162  -214.36461557    -0.00000042    -0.00000001  0.12D-08  0.15D-08  1859.01
    6     4     4     1.09392725    -0.83123162  -214.36461557    -0.00000043    -0.00000001  0.12D-08  0.15D-08  1859.01
    6     5     5     1.09392741    -0.83123162  -214.36461557    -0.00000043    -0.00000001  0.12D-08  0.16D-08  1859.01
    6     6     6     1.09310732    -0.83499400  -214.33135323    -0.00000039    -0.00000001  0.12D-08  0.14D-08  1859.01
    6     7     7     1.09310734    -0.83499400  -214.33135323    -0.00000039    -0.00000001  0.13D-08  0.14D-08  1859.01
    6     8     8     1.09310733    -0.83499400  -214.33135323    -0.00000039    -0.00000001  0.13D-08  0.14D-08  1859.01


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.4%
 S   0.3%   6.4%
 P   0.4%  23.2%  29.3%

 Initialization:   0.5%
 Other:           39.4%

 Total CPU:     1859.0 seconds
 =====================================



 Wavefunction saved on  5102.2

 Reference coefficients greater than 0.0500000
 =============================================
 2222222222/\/000           0.0000000   0.0000000  -0.1326823  -0.0000000   0.9451591  -0.0000000  -0.0000000  -0.0000000
 2222222222//\000           0.0000000  -0.0000000   0.9451591  -0.0000000   0.1326823  -0.0000000  -0.0000000   0.0000000
 2222222222/20000          -0.0000000  -0.0000000  -0.0000000  -0.6748817   0.0000000  -0.0000000   0.0000000   0.6715150
 22222222222/0000          -0.0000000  -0.6748817   0.0000000  -0.0000000   0.0000000   0.6715150  -0.0000000  -0.0000000
 222222222202/000           0.6748817  -0.0000000  -0.0000000  -0.0000000   0.0000000   0.0000000   0.6715150   0.0000000
 222222222220/000          -0.6748817  -0.0000000   0.0000000  -0.0000000   0.0000000  -0.0000000   0.6715150  -0.0000000
 22222222220/2000          -0.0000000   0.6748816   0.0000000  -0.0000000   0.0000000   0.6715151   0.0000000   0.0000000
 2222222222/02000          -0.0000000  -0.0000000   0.0000000   0.6748816   0.0000000   0.0000000   0.0000000   0.6715151
 2222222222//00\0           0.0000000  -0.0000000  -0.0000000  -0.0319393  -0.0000000  -0.0000000  -0.0000000   0.0654910
 2222222222/0/00\           0.0319398   0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.0654905  -0.0000000
 22222222220//0\0          -0.0319398  -0.0000000   0.0000000  -0.0000000   0.0000000   0.0000000  -0.0654905  -0.0000000
 22222222220//\00           0.0000000   0.0319393   0.0000000   0.0000000  -0.0000000   0.0654905   0.0000000   0.0000000
 2222222222//000\           0.0000000   0.0319398  -0.0000000   0.0000000  -0.0000000  -0.0654905  -0.0000000   0.0000000
 2222222222/0/\00          -0.0000000  -0.0000000   0.0000000   0.0319393   0.0000000  -0.0000000  -0.0000000   0.0654905

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1          -0.000000   -0.000000    0.955745    0.000000    0.000000   -0.000000    0.000000   -0.000000
 2           0.000000    0.000000   -0.000000    0.955745   -0.000000   -0.000000   -0.000000   -0.000000
 3          -0.714144    0.000000   -0.000000    0.000000    0.635175   -0.000000   -0.000000    0.000000
 4           0.000000    0.955745    0.000000   -0.000000   -0.000000   -0.000000    0.000000   -0.000000
 5           0.635175    0.000000   -0.000000   -0.000000    0.714144    0.000000    0.000000    0.000000
 6           0.000000    0.000000    0.000000    0.000000   -0.000000    0.000000    0.000000    0.955026
 7          -0.000000   -0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.955026   -0.000000
 8          -0.000000    0.000000    0.000000    0.000000   -0.000000    0.955026    0.000000   -0.000000

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.955745   -0.000000    0.000000    0.000000   -0.000000    0.000000   -0.000000    0.000000
 2          -0.000000    0.955745    0.000000    0.000000   -0.000000    0.000000    0.000000    0.000000
 3           0.000000    0.000000    0.955745    0.000000   -0.000000   -0.000000    0.000000    0.000000
 4           0.000000    0.000000    0.000000    0.955745   -0.000000    0.000000    0.000000    0.000000
 5          -0.000000   -0.000000   -0.000000   -0.000000    0.955745   -0.000000   -0.000000    0.000000
 6           0.000000    0.000000   -0.000000    0.000000   -0.000000    0.955026   -0.000000   -0.000000
 7          -0.000000    0.000000    0.000000    0.000000   -0.000000   -0.000000    0.955026   -0.000000
 8           0.000000    0.000000    0.000000    0.000000    0.000000   -0.000000   -0.000000    0.955026


 RESULTS FOR STATE 1.2
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.95574503 (fixed)   0.95579337 (relaxed)   0.95574503 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00075421   -0.00178306   -0.70599727
 Singles      0.01693719   -0.05896636   -0.06672592
 Pairs        0.07706099    0.00000000   -0.05850844
 Total        1.09475239   -0.06074942   -0.83123163
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.53338395
 Nuclear energy                         0.00000000
 Kinetic energy                        69.48801701
 One electron energy                 -372.32376199
 Two electron energy                  157.95914640
 Virial quotient                       -3.08491485
 Correlation energy                    -0.83123163
 !MRCI STATE 1.2 Energy              -214.364615580322

 Properties without orbital relaxation:

 !MRCI STATE 1.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.44337676 (Davidson, fixed reference)
 Cluster corrected energies          -214.44328472 (Davidson, relaxed reference)
 Cluster corrected energies          -214.44337676 (Davidson, rotated reference)

 Cluster corrected energies          -214.44216644 (Pople, fixed reference)
 Cluster corrected energies          -214.44206838 (Pople, relaxed reference)
 Cluster corrected energies          -214.44216644 (Pople, rotated reference)



 RESULTS FOR STATE 2.2
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.95574504 (fixed)   0.95579337 (relaxed)   0.95574504 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00075420   -0.00178306   -0.70599729
 Singles      0.01693721   -0.05896636   -0.06672593
 Pairs        0.07706096    0.00000002   -0.05850840
 Total        1.09475237   -0.06074940   -0.83123162
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.53338395
 Nuclear energy                         0.00000000
 Kinetic energy                        69.48801821
 One electron energy                 -372.32376389
 Two electron energy                  157.95914832
 Virial quotient                       -3.08491480
 Correlation energy                    -0.83123162
 !MRCI STATE 2.2 Energy              -214.364615572796

 Properties without orbital relaxation:

 !MRCI STATE 2.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.44337674 (Davidson, fixed reference)
 Cluster corrected energies          -214.44328471 (Davidson, relaxed reference)
 Cluster corrected energies          -214.44337674 (Davidson, rotated reference)

 Cluster corrected energies          -214.44216642 (Pople, fixed reference)
 Cluster corrected energies          -214.44206836 (Pople, relaxed reference)
 Cluster corrected energies          -214.44216642 (Pople, rotated reference)



 RESULTS FOR STATE 3.2
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.71414411 (fixed)   0.95579333 (relaxed)   0.95574500 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00075420   -0.00178306   -0.70599713
 Singles      0.01693731   -0.05896644   -0.06672598
 Pairs        0.07706095   -0.00000000   -0.05850851
 Total        1.09475246   -0.06074950   -0.83123162
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.53338395
 Nuclear energy                         0.00000000
 Kinetic energy                        69.48803269
 One electron energy                 -372.32378938
 Two electron energy                  157.95917381
 Virial quotient                       -3.08491415
 Correlation energy                    -0.83123162
 !MRCI STATE 3.2 Energy              -214.364615570097

 Properties without orbital relaxation:

 !MRCI STATE 3.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.44337681 (Davidson, fixed reference)
 Cluster corrected energies          -214.44328478 (Davidson, relaxed reference)
 Cluster corrected energies          -214.44337681 (Davidson, rotated reference)

 Cluster corrected energies          -214.44216649 (Pople, fixed reference)
 Cluster corrected energies          -214.44206844 (Pople, relaxed reference)
 Cluster corrected energies          -214.44216649 (Pople, rotated reference)



 RESULTS FOR STATE 4.2
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.95574507 (fixed)   0.95579341 (relaxed)   0.95574507 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00075420   -0.00178306   -0.70599741
 Singles      0.01693710   -0.05896626   -0.06672585
 Pairs        0.07706099    0.00000000   -0.05850836
 Total        1.09475229   -0.06074932   -0.83123162
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.53338395
 Nuclear energy                         0.00000000
 Kinetic energy                        69.48801996
 One electron energy                 -372.32376565
 Two electron energy                  157.95915008
 Virial quotient                       -3.08491472
 Correlation energy                    -0.83123162
 !MRCI STATE 4.2 Energy              -214.364615569631

 Properties without orbital relaxation:

 !MRCI STATE 4.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.44337667 (Davidson, fixed reference)
 Cluster corrected energies          -214.44328463 (Davidson, relaxed reference)
 Cluster corrected energies          -214.44337667 (Davidson, rotated reference)

 Cluster corrected energies          -214.44216634 (Pople, fixed reference)
 Cluster corrected energies          -214.44206828 (Pople, relaxed reference)
 Cluster corrected energies          -214.44216634 (Pople, rotated reference)



 RESULTS FOR STATE 5.2
 =====================

 Coefficient of reference function:   C(0) = 0.71414411 (fixed)   0.95579334 (relaxed)   0.95574500 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00075420   -0.00178306   -0.70599716
 Singles      0.01693724   -0.05896641   -0.06672596
 Pairs        0.07706102   -0.00000000   -0.05850850
 Total        1.09475246   -0.06074947   -0.83123162
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.53338395
 Nuclear energy                         0.00000000
 Kinetic energy                        69.48803060
 One electron energy                 -372.32378344
 Two electron energy                  157.95916788
 Virial quotient                       -3.08491425
 Correlation energy                    -0.83123162
 !MRCI STATE 5.2 Energy              -214.364615569599

 Properties without orbital relaxation:

 !MRCI STATE 5.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.44337681 (Davidson, fixed reference)
 Cluster corrected energies          -214.44328477 (Davidson, relaxed reference)
 Cluster corrected energies          -214.44337681 (Davidson, rotated reference)

 Cluster corrected energies          -214.44216649 (Pople, fixed reference)
 Cluster corrected energies          -214.44206843 (Pople, relaxed reference)
 Cluster corrected energies          -214.44216649 (Pople, rotated reference)



 RESULTS FOR STATE 6.2
 =====================

 Maximum overlap with reference state  8

 Coefficient of reference function:   C(0) = 0.95502630 (fixed)   0.95510956 (relaxed)   0.95502630 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00301294   -0.00610141   -0.00785954
 Singles      0.01323444   -0.05223538   -0.05772474
 Pairs        0.08015341   -0.77665720   -0.76940972
 Total        1.09640079   -0.83499399   -0.83499400
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.49635923
 Nuclear energy                         0.00000000
 Kinetic energy                        69.46256107
 One electron energy                 -372.13753662
 Two electron energy                  157.80618339
 Virial quotient                       -3.08556653
 Correlation energy                    -0.83499400
 !MRCI STATE 6.2 Energy              -214.331353227195

 Properties without orbital relaxation:

 !MRCI STATE 6.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.41184731 (Davidson, fixed reference)
 Cluster corrected energies          -214.41168770 (Davidson, relaxed reference)
 Cluster corrected energies          -214.41184731 (Davidson, rotated reference)

 Cluster corrected energies          -214.41072377 (Pople, fixed reference)
 Cluster corrected energies          -214.41055325 (Pople, relaxed reference)
 Cluster corrected energies          -214.41072377 (Pople, rotated reference)



 RESULTS FOR STATE 7.2
 =====================

 Coefficient of reference function:   C(0) = 0.95502629 (fixed)   0.95510955 (relaxed)   0.95502629 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00301294   -0.00610140   -0.71622933
 Singles      0.01323442   -0.05223536   -0.05772472
 Pairs        0.08015345    0.00000000   -0.06103994
 Total        1.09640081   -0.05833677   -0.83499400
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.49635923
 Nuclear energy                         0.00000000
 Kinetic energy                        69.46255989
 One electron energy                 -372.13753503
 Two electron energy                  157.80618180
 Virial quotient                       -3.08556658
 Correlation energy                    -0.83499400
 !MRCI STATE 7.2 Energy              -214.331353226801

 Properties without orbital relaxation:

 !MRCI STATE 7.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.41184732 (Davidson, fixed reference)
 Cluster corrected energies          -214.41168772 (Davidson, relaxed reference)
 Cluster corrected energies          -214.41184732 (Davidson, rotated reference)

 Cluster corrected energies          -214.41072378 (Pople, fixed reference)
 Cluster corrected energies          -214.41055327 (Pople, relaxed reference)
 Cluster corrected energies          -214.41072378 (Pople, rotated reference)



 RESULTS FOR STATE 8.2
 =====================

 Maximum overlap with reference state  6

 Coefficient of reference function:   C(0) = 0.95502629 (fixed)   0.95510955 (relaxed)   0.95502629 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00301295   -0.00610141   -0.71622933
 Singles      0.01323444   -0.05223537   -0.05772474
 Pairs        0.08015342    0.00000000   -0.06103992
 Total        1.09640081   -0.05833678   -0.83499400
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.49635923
 Nuclear energy                         0.00000000
 Kinetic energy                        69.46256020
 One electron energy                 -372.13753440
 Two electron energy                  157.80618118
 Virial quotient                       -3.08556656
 Correlation energy                    -0.83499400
 !MRCI STATE 8.2 Energy              -214.331353226743

 Properties without orbital relaxation:

 !MRCI STATE 8.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.41184732 (Davidson, fixed reference)
 Cluster corrected energies          -214.41168771 (Davidson, relaxed reference)
 Cluster corrected energies          -214.41184732 (Davidson, rotated reference)

 Cluster corrected energies          -214.41072378 (Pople, fixed reference)
 Cluster corrected energies          -214.41055326 (Pople, relaxed reference)
 Cluster corrected energies          -214.41072378 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       94.20       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       6     3655.78       700     1000      520     2140     5302     5102   
                                         GEOM     BASIS   MCVARS    MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI       INT
 CPU TIMES  *      4153.46   1991.85   2143.63      8.03      9.70
 REAL TIME  *      4369.99 SEC
 DISK USED  *         3.66 GB (local),       59.98 GB (total)
 SF USED    *        18.90 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(11)    =      -214.44337676  AU                              
 SETTING HLSDIAG(12)    =      -214.44337674  AU                              
 SETTING HLSDIAG(13)    =      -214.44337681  AU                              
 SETTING HLSDIAG(14)    =      -214.44337667  AU                              
 SETTING HLSDIAG(15)    =      -214.44337681  AU                              
 SETTING HLSDIAG(16)    =      -214.41184731  AU                              
 SETTING HLSDIAG(17)    =      -214.41184732  AU                              
 SETTING HLSDIAG(18)    =      -214.41184732  AU                              


         HLSDIAG
    -214.4865756
    -214.2427199
    -214.2427199
    -214.2427198
    -214.2427198
    -214.2427198
    -214.2394544
    -214.2384676
    -214.2384676
    -214.2384676
    -214.4433768
    -214.4433767
    -214.4433768
    -214.4433767
    -214.4433768
    -214.4118473
    -214.4118473
    -214.4118473
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Diagonal elements of H will be replaced by values from variable HLSDIAG


   ******************************
   *** Spin-orbit calculation ***
   ******************************


   Spin-orbit matrix elements
   ==========================

 Wavefunction restored from record  5302.2  Symmetry=2  S= 1.5  NSTATE=  10

 Original energies:   -214.412659   -214.167741   -214.167741   -214.167741   -214.167741   -214.167741   -214.164553   -214.163219
                      -214.163219   -214.163219
 Replaced energies:   -214.486576   -214.242720   -214.242720   -214.242720   -214.242720   -214.242720   -214.239454   -214.238468
                      -214.238468   -214.238468

 Wavefunction restored from record  5102.2  Symmetry=2  S= 0.5  NSTATE=   8

 Original energies:   -214.364616   -214.364616   -214.364616   -214.364616   -214.364616   -214.331353   -214.331353   -214.331353
 Replaced energies:   -214.443377   -214.443377   -214.443377   -214.443377   -214.443377   -214.411847   -214.411847   -214.411847



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=  -214.48657563

 Wigner-Eckart theorem used for 23 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00   -2259.10      -0.00

    2   2.2  1.5  1.5       0.00   53520.15       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.00   -3474.43       0.00      -0.00      -0.00   -2049.47       0.00

    3   3.2  1.5  1.5       0.00       0.00   53520.15       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00   -4164.37      -0.00      -0.00      -0.00    1709.92      -0.00

    4   4.2  1.5  1.5       0.00       0.00       0.00   53520.17       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00       0.00       0.00   -2711.73      -0.00       0.00       0.00   -2311.54

    5   5.2  1.5  1.5       0.00       0.00       0.00       0.00   53520.17       0.00       0.00       0.00       0.00       0.00
                            0.00    3474.43    4164.37      -0.00       0.00       0.00      -0.00       0.00      -0.00      -0.00

    6   6.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00   53520.17       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00    2711.73      -0.00      -0.00       0.00   -2311.54       0.00      -0.00

    7   7.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00   54236.85       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00   -3637.16      -0.00

    8   8.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00   54453.43       0.00       0.00
                           -0.00       0.00       0.00      -0.00      -0.00    2311.54       0.00       0.00      -0.00    2698.91

    9   9.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   54453.43       0.00
                         2259.10    2049.47   -1709.92      -0.00       0.00      -0.00    3637.16       0.00      -0.00      -0.00

   10  10.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   54453.43
                            0.00      -0.00       0.00    2311.54       0.00       0.00       0.00   -2698.91       0.00      -0.00

   11   1.2  1.5  0.5       0.00       0.00      -0.00      -0.00       0.00      -0.00      -0.00       0.00      -0.00   -1304.29
                           -0.00      -0.00       0.00      -0.00       0.00       0.00       0.00   -1304.29      -0.00       0.00

   12   2.2  1.5  0.5      -0.00       0.00       0.00      -0.00      -0.00    1079.20       0.00       0.00       0.00    1446.59
                            0.00      -0.00       0.00   -3085.17       0.00      -0.00      -0.00    -263.33       0.00      -0.00

   13   3.2  1.5  0.5       0.00      -0.00       0.00       0.00       0.00   -2939.37       0.00       0.00       0.00     531.12
                           -0.00      -0.00       0.00     535.07      -0.00      -0.00       0.00   -1518.35       0.00       0.00

   14   4.2  1.5  0.5       0.00       0.00      -0.00       0.00   -1565.62       0.00      -0.00       0.00   -1334.57       0.00
                            0.00    3085.17    -535.07       0.00      -0.00      -0.00       0.00      -0.00       0.00      -0.00

   15   5.2  1.5  0.5      -0.00       0.00      -0.00    1565.62      -0.00       0.00      -0.00    1334.57       0.00      -0.00
                           -0.00      -0.00       0.00       0.00       0.00   -1565.62       0.00       0.00       0.00    1334.57

   16   6.2  1.5  0.5       0.00   -1079.20    2939.37      -0.00      -0.00      -0.00      -0.00       0.00      -0.00      -0.00
                           -0.00       0.00       0.00       0.00    1565.62       0.00      -0.00      -0.00   -1334.57      -0.00

   17   7.2  1.5  0.5       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00   -2099.92
                           -0.00       0.00      -0.00      -0.00      -0.00       0.00      -0.00   -2099.92       0.00       0.00

   18   8.2  1.5  0.5      -0.00      -0.00      -0.00      -0.00   -1334.57      -0.00      -0.00       0.00   -1558.22      -0.00
                         1304.29     263.33    1518.35       0.00      -0.00       0.00    2099.92       0.00      -0.00      -0.00

   19   9.2  1.5  0.5       0.00      -0.00      -0.00    1334.57      -0.00       0.00      -0.00    1558.22       0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00    1334.57      -0.00       0.00       0.00   -1558.22

   20  10.2  1.5  0.5    1304.29   -1446.59    -531.12      -0.00       0.00       0.00    2099.92       0.00      -0.00      -0.00
                           -0.00       0.00      -0.00       0.00   -1334.57       0.00      -0.00       0.00    1558.22       0.00

   21   1.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   22   2.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   23   3.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   24   4.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   25   5.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   26   6.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   27   7.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   28   8.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   29   9.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   30  10.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   31   1.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   32   2.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   33   3.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   34   4.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   35   5.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   36   6.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   37   7.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   38   8.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   39   9.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   40  10.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   41   1.2  0.5  0.5       0.00      -0.00       0.00    -880.87       0.00       0.00      -0.00     786.93       0.00       0.00
                           -0.00       0.00       0.00      -0.00       0.00     880.87       0.00       0.00       0.00     786.93

   42   2.2  0.5  0.5       0.00       0.00      -0.00       0.00     880.88      -0.00      -0.00      -0.00    -786.94      -0.00
                           -0.00   -1735.80     301.05       0.00       0.00       0.00       0.00      -0.00       0.00       0.00

   43   3.2  0.5  0.5       0.00      -0.00      -0.00      -0.00       0.00    1633.32      -0.00       0.00      -0.00    -340.52
                            0.00      -0.00      -0.00   -1388.41       0.00      -0.00      -0.00    -559.31       0.00       0.00

   44   4.2  0.5  0.5       0.00     607.19   -1653.78      -0.00       0.00      -0.00       0.00       0.00       0.00      -0.00
                           -0.00       0.00       0.00       0.00    -880.87      -0.00       0.00      -0.00    -786.93      -0.00

   45   5.2  0.5  0.5      -0.00       0.00      -0.00      -0.00       0.00    -660.20      -0.00       0.00      -0.00    -842.43
                            0.00      -0.00       0.00   -1084.40      -0.00      -0.00      -0.00     716.11      -0.00      -0.00

   46   6.2  0.5  0.5      -0.00      -0.00      -0.00      -0.00     686.86      -0.00       0.00       0.00    -807.37       0.00
                         6233.83    -135.53    -781.43       0.00      -0.00      -0.00    -685.80      -0.00      -0.00       0.00

   47   7.2  0.5  0.5      -0.00       0.00      -0.00    -686.86       0.00       0.00       0.00     807.37      -0.00       0.00
                           -0.00      -0.00       0.00       0.00       0.00    -686.85      -0.00       0.00       0.00    -807.37

   48   8.2  0.5  0.5   -6233.84    -744.50    -273.36       0.00      -0.00       0.00     685.81       0.00       0.00      -0.00
                           -0.00      -0.00       0.00      -0.00    -686.85       0.00      -0.00       0.00    -807.36      -0.00

   49   1.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   50   2.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   51   3.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   52   4.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   53   5.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   54   6.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   55   7.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   56   8.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00


   Nr   State  S   Sz       11         12         13         14         15         16         17         18         19         20

    1   1.2  1.5  1.5       0.00      -0.00       0.00       0.00      -0.00       0.00       0.00      -0.00       0.00    1304.29
                            0.00      -0.00       0.00      -0.00       0.00       0.00       0.00   -1304.29      -0.00       0.00

    2   2.2  1.5  1.5       0.00       0.00      -0.00       0.00       0.00   -1079.20      -0.00      -0.00      -0.00   -1446.59
                            0.00       0.00       0.00   -3085.17       0.00      -0.00      -0.00    -263.33       0.00      -0.00

    3   3.2  1.5  1.5      -0.00       0.00       0.00      -0.00      -0.00    2939.37      -0.00      -0.00      -0.00    -531.12
                           -0.00      -0.00      -0.00     535.07      -0.00      -0.00       0.00   -1518.35       0.00       0.00

    4   4.2  1.5  1.5      -0.00      -0.00       0.00       0.00    1565.62      -0.00       0.00      -0.00    1334.57      -0.00
                            0.00    3085.17    -535.07      -0.00      -0.00      -0.00       0.00      -0.00       0.00      -0.00

    5   5.2  1.5  1.5       0.00      -0.00       0.00   -1565.62      -0.00      -0.00       0.00   -1334.57      -0.00       0.00
                           -0.00      -0.00       0.00       0.00      -0.00   -1565.62       0.00       0.00       0.00    1334.57

    6   6.2  1.5  1.5      -0.00    1079.20   -2939.37       0.00       0.00      -0.00       0.00      -0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00    1565.62      -0.00      -0.00      -0.00   -1334.57      -0.00

    7   7.2  1.5  1.5      -0.00       0.00       0.00      -0.00      -0.00      -0.00       0.00      -0.00      -0.00    2099.92
                           -0.00       0.00      -0.00      -0.00      -0.00       0.00       0.00   -2099.92       0.00       0.00

    8   8.2  1.5  1.5       0.00       0.00       0.00       0.00    1334.57       0.00       0.00       0.00    1558.22       0.00
                         1304.29     263.33    1518.35       0.00      -0.00       0.00    2099.92      -0.00      -0.00      -0.00

    9   9.2  1.5  1.5      -0.00       0.00       0.00   -1334.57       0.00      -0.00       0.00   -1558.22       0.00      -0.00
                            0.00      -0.00      -0.00      -0.00      -0.00    1334.57      -0.00       0.00      -0.00   -1558.22

   10  10.2  1.5  1.5   -1304.29    1446.59     531.12       0.00      -0.00      -0.00   -2099.92      -0.00       0.00      -0.00
                           -0.00       0.00      -0.00       0.00   -1334.57       0.00      -0.00       0.00    1558.22      -0.00

   11   1.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00    -753.03      -0.00

   12   2.2  1.5  0.5       0.00   53520.15       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.00   -1158.14       0.00      -0.00      -0.00    -683.16       0.00

   13   3.2  1.5  0.5       0.00       0.00   53520.15       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00   -1388.12      -0.00      -0.00      -0.00     569.97      -0.00

   14   4.2  1.5  0.5       0.00       0.00       0.00   53520.17       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00       0.00       0.00    -903.91      -0.00       0.00       0.00    -770.51

   15   5.2  1.5  0.5       0.00       0.00       0.00       0.00   53520.17       0.00       0.00       0.00       0.00       0.00
                            0.00    1158.14    1388.12      -0.00       0.00       0.00      -0.00       0.00      -0.00      -0.00

   16   6.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00   53520.17       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00     903.91      -0.00      -0.00       0.00    -770.51       0.00      -0.00

   17   7.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00   54236.85       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00   -1212.39      -0.00

   18   8.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00   54453.43       0.00       0.00
                           -0.00       0.00       0.00      -0.00      -0.00     770.51       0.00       0.00      -0.00     899.64

   19   9.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   54453.43       0.00
                          753.03     683.16    -569.97      -0.00       0.00      -0.00    1212.39       0.00      -0.00      -0.00

   20  10.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   54453.43
                            0.00      -0.00       0.00     770.51       0.00       0.00       0.00    -899.64       0.00      -0.00

   21   1.2  1.5 -0.5       0.00       0.00      -0.00      -0.00       0.00      -0.00      -0.00       0.00      -0.00   -1506.07
                           -0.00      -0.00       0.00      -0.00       0.00       0.00       0.00   -1506.07      -0.00       0.00

   22   2.2  1.5 -0.5      -0.00       0.00       0.00      -0.00      -0.00    1246.16       0.00       0.00       0.00    1670.38
                            0.00      -0.00       0.00   -3562.45       0.00      -0.00      -0.00    -304.07       0.00      -0.00

   23   3.2  1.5 -0.5       0.00      -0.00       0.00       0.00       0.00   -3394.09       0.00       0.00       0.00     613.29
                           -0.00      -0.00       0.00     617.84      -0.00      -0.00       0.00   -1753.24       0.00       0.00

   24   4.2  1.5 -0.5       0.00       0.00      -0.00       0.00   -1807.82       0.00      -0.00       0.00   -1541.03       0.00
                            0.00    3562.45    -617.84       0.00      -0.00      -0.00       0.00      -0.00       0.00      -0.00

   25   5.2  1.5 -0.5      -0.00       0.00      -0.00    1807.82      -0.00       0.00      -0.00    1541.03       0.00      -0.00
                           -0.00      -0.00       0.00       0.00       0.00   -1807.82       0.00       0.00       0.00    1541.03

   26   6.2  1.5 -0.5       0.00   -1246.16    3394.09      -0.00      -0.00      -0.00      -0.00       0.00      -0.00      -0.00
                           -0.00       0.00       0.00       0.00    1807.82       0.00      -0.00      -0.00   -1541.03      -0.00

   27   7.2  1.5 -0.5       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00   -2424.77
                           -0.00       0.00      -0.00      -0.00      -0.00       0.00      -0.00   -2424.77       0.00       0.00

   28   8.2  1.5 -0.5      -0.00      -0.00      -0.00      -0.00   -1541.03      -0.00      -0.00       0.00   -1799.27      -0.00
                         1506.07     304.07    1753.24       0.00      -0.00       0.00    2424.77       0.00      -0.00      -0.00

   29   9.2  1.5 -0.5       0.00      -0.00      -0.00    1541.03      -0.00       0.00      -0.00    1799.27       0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00    1541.03      -0.00       0.00       0.00   -1799.27

   30  10.2  1.5 -0.5    1506.07   -1670.38    -613.29      -0.00       0.00       0.00    2424.77       0.00      -0.00      -0.00
                           -0.00       0.00      -0.00       0.00   -1541.03       0.00      -0.00       0.00    1799.27       0.00

   31   1.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   32   2.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   33   3.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   34   4.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   35   5.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   36   6.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   37   7.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   38   8.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   39   9.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   40  10.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   41   1.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00    1303.20    1561.99      -0.00      -0.00      -0.00       0.00      -0.00       0.00      -0.00

   42   2.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00       0.00       0.00   -1017.14       0.00       0.00      -0.00     908.66

   43   3.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00       0.00    -282.79       0.00      -0.00      -0.00   -1039.03      -0.00

   44   4.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00    1017.14      -0.00      -0.00      -0.00     908.67      -0.00       0.00

   45   5.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00      -0.00    2014.49       0.00       0.00      -0.00    -145.86      -0.00

   46   6.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00      -0.00     793.11      -0.00       0.00       0.00    -932.27

   47   7.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                        -7198.21     703.19    -586.68       0.00      -0.00      -0.00     791.90       0.00       0.00      -0.00

   48   8.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00    -793.10      -0.00      -0.00       0.00    -932.26       0.00       0.00

   49   1.2  0.5 -0.5       0.00      -0.00       0.00    -508.57       0.00       0.00      -0.00     454.33       0.00       0.00
                           -0.00       0.00       0.00      -0.00       0.00     508.57       0.00       0.00       0.00     454.33

   50   2.2  0.5 -0.5       0.00       0.00      -0.00       0.00     508.58      -0.00      -0.00      -0.00    -454.34      -0.00
                           -0.00   -1002.17     173.81       0.00       0.00       0.00       0.00      -0.00       0.00       0.00

   51   3.2  0.5 -0.5       0.00      -0.00      -0.00      -0.00       0.00     943.00      -0.00       0.00      -0.00    -196.60
                            0.00      -0.00      -0.00    -801.60       0.00      -0.00      -0.00    -322.92       0.00       0.00

   52   4.2  0.5 -0.5       0.00     350.56    -954.81      -0.00       0.00      -0.00       0.00       0.00       0.00      -0.00
                           -0.00       0.00       0.00       0.00    -508.57      -0.00       0.00      -0.00    -454.33      -0.00

   53   5.2  0.5 -0.5      -0.00       0.00      -0.00      -0.00       0.00    -381.17      -0.00       0.00      -0.00    -486.38
                            0.00      -0.00       0.00    -626.08      -0.00      -0.00      -0.00     413.45      -0.00      -0.00

   54   6.2  0.5 -0.5      -0.00      -0.00      -0.00      -0.00     396.56      -0.00       0.00       0.00    -466.14       0.00
                         3599.11     -78.25    -451.16       0.00      -0.00      -0.00    -395.95      -0.00      -0.00       0.00

   55   7.2  0.5 -0.5      -0.00       0.00      -0.00    -396.56       0.00       0.00       0.00     466.14      -0.00       0.00
                           -0.00      -0.00       0.00       0.00       0.00    -396.56      -0.00       0.00       0.00    -466.14

   56   8.2  0.5 -0.5   -3599.11    -429.84    -157.82       0.00      -0.00       0.00     395.95       0.00       0.00      -0.00
                           -0.00      -0.00       0.00      -0.00    -396.55       0.00      -0.00       0.00    -466.13      -0.00


   Nr   State  S   Sz       21         22         23         24         25         26         27         28         29         30

    1   1.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    2   2.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    3   3.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    4   4.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    5   5.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    6   6.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    7   7.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    8   8.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    9   9.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   10  10.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   11   1.2  1.5  0.5       0.00      -0.00       0.00       0.00      -0.00       0.00       0.00      -0.00       0.00    1506.07
                            0.00      -0.00       0.00      -0.00       0.00       0.00       0.00   -1506.07      -0.00       0.00

   12   2.2  1.5  0.5       0.00       0.00      -0.00       0.00       0.00   -1246.16      -0.00      -0.00      -0.00   -1670.38
                            0.00       0.00       0.00   -3562.45       0.00      -0.00      -0.00    -304.07       0.00      -0.00

   13   3.2  1.5  0.5      -0.00       0.00       0.00      -0.00      -0.00    3394.09      -0.00      -0.00      -0.00    -613.29
                           -0.00      -0.00      -0.00     617.84      -0.00      -0.00       0.00   -1753.24       0.00       0.00

   14   4.2  1.5  0.5      -0.00      -0.00       0.00       0.00    1807.82      -0.00       0.00      -0.00    1541.03      -0.00
                            0.00    3562.45    -617.84      -0.00      -0.00      -0.00       0.00      -0.00       0.00      -0.00

   15   5.2  1.5  0.5       0.00      -0.00       0.00   -1807.82      -0.00      -0.00       0.00   -1541.03      -0.00       0.00
                           -0.00      -0.00       0.00       0.00      -0.00   -1807.82       0.00       0.00       0.00    1541.03

   16   6.2  1.5  0.5      -0.00    1246.16   -3394.09       0.00       0.00      -0.00       0.00      -0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00    1807.82      -0.00      -0.00      -0.00   -1541.03      -0.00

   17   7.2  1.5  0.5      -0.00       0.00       0.00      -0.00      -0.00      -0.00       0.00      -0.00      -0.00    2424.77
                           -0.00       0.00      -0.00      -0.00      -0.00       0.00       0.00   -2424.77       0.00       0.00

   18   8.2  1.5  0.5       0.00       0.00       0.00       0.00    1541.03       0.00       0.00       0.00    1799.27       0.00
                         1506.07     304.07    1753.24       0.00      -0.00       0.00    2424.77      -0.00      -0.00      -0.00

   19   9.2  1.5  0.5      -0.00       0.00       0.00   -1541.03       0.00      -0.00       0.00   -1799.27       0.00      -0.00
                            0.00      -0.00      -0.00      -0.00      -0.00    1541.03      -0.00       0.00      -0.00   -1799.27

   20  10.2  1.5  0.5   -1506.07    1670.38     613.29       0.00      -0.00      -0.00   -2424.77      -0.00       0.00      -0.00
                           -0.00       0.00      -0.00       0.00   -1541.03       0.00      -0.00       0.00    1799.27      -0.00

   21   1.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00     753.03       0.00

   22   2.2  1.5 -0.5       0.00   53520.15       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00    1158.14      -0.00       0.00       0.00     683.16      -0.00

   23   3.2  1.5 -0.5       0.00       0.00   53520.15       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00    1388.12       0.00       0.00       0.00    -569.97       0.00

   24   4.2  1.5 -0.5       0.00       0.00       0.00   53520.17       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00      -0.00      -0.00     903.91       0.00      -0.00      -0.00     770.51

   25   5.2  1.5 -0.5       0.00       0.00       0.00       0.00   53520.17       0.00       0.00       0.00       0.00       0.00
                           -0.00   -1158.14   -1388.12       0.00      -0.00      -0.00       0.00      -0.00       0.00       0.00

   26   6.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00   53520.17       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00    -903.91       0.00       0.00      -0.00     770.51      -0.00       0.00

   27   7.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00   54236.85       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00    1212.39       0.00

   28   8.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00   54453.43       0.00       0.00
                            0.00      -0.00      -0.00       0.00       0.00    -770.51      -0.00      -0.00       0.00    -899.64

   29   9.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   54453.43       0.00
                         -753.03    -683.16     569.97       0.00      -0.00       0.00   -1212.39      -0.00       0.00       0.00

   30  10.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   54453.43
                           -0.00       0.00      -0.00    -770.51      -0.00      -0.00      -0.00     899.64      -0.00       0.00

   31   1.2  1.5 -1.5       0.00       0.00      -0.00      -0.00       0.00      -0.00      -0.00       0.00      -0.00   -1304.29
                           -0.00      -0.00       0.00      -0.00       0.00       0.00       0.00   -1304.29      -0.00       0.00

   32   2.2  1.5 -1.5      -0.00       0.00       0.00      -0.00      -0.00    1079.20       0.00       0.00       0.00    1446.59
                            0.00      -0.00       0.00   -3085.17       0.00      -0.00      -0.00    -263.33       0.00      -0.00

   33   3.2  1.5 -1.5       0.00      -0.00       0.00       0.00       0.00   -2939.37       0.00       0.00       0.00     531.12
                           -0.00      -0.00       0.00     535.07      -0.00      -0.00       0.00   -1518.35       0.00       0.00

   34   4.2  1.5 -1.5       0.00       0.00      -0.00       0.00   -1565.62       0.00      -0.00       0.00   -1334.57       0.00
                            0.00    3085.17    -535.07       0.00      -0.00      -0.00       0.00      -0.00       0.00      -0.00

   35   5.2  1.5 -1.5      -0.00       0.00      -0.00    1565.62      -0.00       0.00      -0.00    1334.57       0.00      -0.00
                           -0.00      -0.00       0.00       0.00       0.00   -1565.62       0.00       0.00       0.00    1334.57

   36   6.2  1.5 -1.5       0.00   -1079.20    2939.37      -0.00      -0.00      -0.00      -0.00       0.00      -0.00      -0.00
                           -0.00       0.00       0.00       0.00    1565.62       0.00      -0.00      -0.00   -1334.57      -0.00

   37   7.2  1.5 -1.5       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00   -2099.92
                           -0.00       0.00      -0.00      -0.00      -0.00       0.00      -0.00   -2099.92       0.00       0.00

   38   8.2  1.5 -1.5      -0.00      -0.00      -0.00      -0.00   -1334.57      -0.00      -0.00       0.00   -1558.22      -0.00
                         1304.29     263.33    1518.35       0.00      -0.00       0.00    2099.92       0.00      -0.00      -0.00

   39   9.2  1.5 -1.5       0.00      -0.00      -0.00    1334.57      -0.00       0.00      -0.00    1558.22       0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00    1334.57      -0.00       0.00       0.00   -1558.22

   40  10.2  1.5 -1.5    1304.29   -1446.59    -531.12      -0.00       0.00       0.00    2099.92       0.00      -0.00      -0.00
                           -0.00       0.00      -0.00       0.00   -1334.57       0.00      -0.00       0.00    1558.22       0.00

   41   1.2  0.5  0.5       0.00      -0.00       0.00    -508.57       0.00       0.00      -0.00     454.33       0.00       0.00
                            0.00      -0.00      -0.00       0.00      -0.00    -508.57      -0.00      -0.00      -0.00    -454.33

   42   2.2  0.5  0.5       0.00       0.00      -0.00       0.00     508.58      -0.00      -0.00      -0.00    -454.34      -0.00
                            0.00    1002.17    -173.81      -0.00      -0.00      -0.00      -0.00       0.00      -0.00      -0.00

   43   3.2  0.5  0.5       0.00      -0.00      -0.00      -0.00       0.00     943.00      -0.00       0.00      -0.00    -196.60
                           -0.00       0.00       0.00     801.60      -0.00       0.00       0.00     322.92      -0.00      -0.00

   44   4.2  0.5  0.5       0.00     350.56    -954.81      -0.00       0.00      -0.00       0.00       0.00       0.00      -0.00
                            0.00      -0.00      -0.00      -0.00     508.57       0.00      -0.00       0.00     454.33       0.00

   45   5.2  0.5  0.5      -0.00       0.00      -0.00      -0.00       0.00    -381.17      -0.00       0.00      -0.00    -486.38
                           -0.00       0.00      -0.00     626.08       0.00       0.00       0.00    -413.45       0.00       0.00

   46   6.2  0.5  0.5      -0.00      -0.00      -0.00      -0.00     396.56      -0.00       0.00       0.00    -466.14       0.00
                        -3599.11      78.25     451.16      -0.00       0.00       0.00     395.95       0.00       0.00      -0.00

   47   7.2  0.5  0.5      -0.00       0.00      -0.00    -396.56       0.00       0.00       0.00     466.14      -0.00       0.00
                            0.00       0.00      -0.00      -0.00      -0.00     396.56       0.00      -0.00      -0.00     466.14

   48   8.2  0.5  0.5   -3599.11    -429.84    -157.82       0.00      -0.00       0.00     395.95       0.00       0.00      -0.00
                            0.00       0.00      -0.00       0.00     396.55      -0.00       0.00      -0.00     466.13       0.00

   49   1.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00    1303.20    1561.99      -0.00      -0.00      -0.00       0.00      -0.00       0.00      -0.00

   50   2.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00       0.00       0.00   -1017.14       0.00       0.00      -0.00     908.66

   51   3.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00       0.00    -282.79       0.00      -0.00      -0.00   -1039.03      -0.00

   52   4.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00    1017.14      -0.00      -0.00      -0.00     908.67      -0.00       0.00

   53   5.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00      -0.00    2014.49       0.00       0.00      -0.00    -145.86      -0.00

   54   6.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00      -0.00     793.11      -0.00       0.00       0.00    -932.27

   55   7.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                        -7198.21     703.19    -586.68       0.00      -0.00      -0.00     791.90       0.00       0.00      -0.00

   56   8.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00    -793.10      -0.00      -0.00       0.00    -932.26       0.00       0.00


   Nr   State  S   Sz       31         32         33         34         35         36         37         38         39         40

    1   1.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    2   2.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    3   3.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    4   4.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    5   5.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    6   6.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    7   7.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    8   8.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    9   9.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   10  10.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   11   1.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   12   2.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   13   3.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   14   4.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   15   5.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   16   6.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   17   7.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   18   8.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   19   9.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   20  10.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   21   1.2  1.5 -0.5       0.00      -0.00       0.00       0.00      -0.00       0.00       0.00      -0.00       0.00    1304.29
                            0.00      -0.00       0.00      -0.00       0.00       0.00       0.00   -1304.29      -0.00       0.00

   22   2.2  1.5 -0.5       0.00       0.00      -0.00       0.00       0.00   -1079.20      -0.00      -0.00      -0.00   -1446.59
                            0.00       0.00       0.00   -3085.17       0.00      -0.00      -0.00    -263.33       0.00      -0.00

   23   3.2  1.5 -0.5      -0.00       0.00       0.00      -0.00      -0.00    2939.37      -0.00      -0.00      -0.00    -531.12
                           -0.00      -0.00      -0.00     535.07      -0.00      -0.00       0.00   -1518.35       0.00       0.00

   24   4.2  1.5 -0.5      -0.00      -0.00       0.00       0.00    1565.62      -0.00       0.00      -0.00    1334.57      -0.00
                            0.00    3085.17    -535.07      -0.00      -0.00      -0.00       0.00      -0.00       0.00      -0.00

   25   5.2  1.5 -0.5       0.00      -0.00       0.00   -1565.62      -0.00      -0.00       0.00   -1334.57      -0.00       0.00
                           -0.00      -0.00       0.00       0.00      -0.00   -1565.62       0.00       0.00       0.00    1334.57

   26   6.2  1.5 -0.5      -0.00    1079.20   -2939.37       0.00       0.00      -0.00       0.00      -0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00    1565.62      -0.00      -0.00      -0.00   -1334.57      -0.00

   27   7.2  1.5 -0.5      -0.00       0.00       0.00      -0.00      -0.00      -0.00       0.00      -0.00      -0.00    2099.92
                           -0.00       0.00      -0.00      -0.00      -0.00       0.00       0.00   -2099.92       0.00       0.00

   28   8.2  1.5 -0.5       0.00       0.00       0.00       0.00    1334.57       0.00       0.00       0.00    1558.22       0.00
                         1304.29     263.33    1518.35       0.00      -0.00       0.00    2099.92      -0.00      -0.00      -0.00

   29   9.2  1.5 -0.5      -0.00       0.00       0.00   -1334.57       0.00      -0.00       0.00   -1558.22       0.00      -0.00
                            0.00      -0.00      -0.00      -0.00      -0.00    1334.57      -0.00       0.00      -0.00   -1558.22

   30  10.2  1.5 -0.5   -1304.29    1446.59     531.12       0.00      -0.00      -0.00   -2099.92      -0.00       0.00      -0.00
                           -0.00       0.00      -0.00       0.00   -1334.57       0.00      -0.00       0.00    1558.22      -0.00

   31   1.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00    2259.10       0.00

   32   2.2  1.5 -1.5       0.00   53520.15       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00    3474.43      -0.00       0.00       0.00    2049.47      -0.00

   33   3.2  1.5 -1.5       0.00       0.00   53520.15       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00    4164.37       0.00       0.00       0.00   -1709.92       0.00

   34   4.2  1.5 -1.5       0.00       0.00       0.00   53520.17       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00      -0.00      -0.00    2711.73       0.00      -0.00      -0.00    2311.54

   35   5.2  1.5 -1.5       0.00       0.00       0.00       0.00   53520.17       0.00       0.00       0.00       0.00       0.00
                           -0.00   -3474.43   -4164.37       0.00      -0.00      -0.00       0.00      -0.00       0.00       0.00

   36   6.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00   53520.17       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00   -2711.73       0.00       0.00      -0.00    2311.54      -0.00       0.00

   37   7.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00   54236.85       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00    3637.16       0.00

   38   8.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00   54453.43       0.00       0.00
                            0.00      -0.00      -0.00       0.00       0.00   -2311.54      -0.00      -0.00       0.00   -2698.91

   39   9.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   54453.43       0.00
                        -2259.10   -2049.47    1709.92       0.00      -0.00       0.00   -3637.16      -0.00       0.00       0.00

   40  10.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   54453.43
                           -0.00       0.00      -0.00   -2311.54      -0.00      -0.00      -0.00    2698.91      -0.00       0.00

   41   1.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   42   2.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   43   3.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   44   4.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   45   5.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   46   6.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   47   7.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   48   8.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   49   1.2  0.5 -0.5       0.00      -0.00       0.00    -880.87       0.00       0.00      -0.00     786.93       0.00       0.00
                            0.00      -0.00      -0.00       0.00      -0.00    -880.87      -0.00      -0.00      -0.00    -786.93

   50   2.2  0.5 -0.5       0.00       0.00      -0.00       0.00     880.88      -0.00      -0.00      -0.00    -786.94      -0.00
                            0.00    1735.80    -301.05      -0.00      -0.00      -0.00      -0.00       0.00      -0.00      -0.00

   51   3.2  0.5 -0.5       0.00      -0.00      -0.00      -0.00       0.00    1633.32      -0.00       0.00      -0.00    -340.52
                           -0.00       0.00       0.00    1388.41      -0.00       0.00       0.00     559.31      -0.00      -0.00

   52   4.2  0.5 -0.5       0.00     607.19   -1653.78      -0.00       0.00      -0.00       0.00       0.00       0.00      -0.00
                            0.00      -0.00      -0.00      -0.00     880.87       0.00      -0.00       0.00     786.93       0.00

   53   5.2  0.5 -0.5      -0.00       0.00      -0.00      -0.00       0.00    -660.20      -0.00       0.00      -0.00    -842.43
                           -0.00       0.00      -0.00    1084.40       0.00       0.00       0.00    -716.11       0.00       0.00

   54   6.2  0.5 -0.5      -0.00      -0.00      -0.00      -0.00     686.86      -0.00       0.00       0.00    -807.37       0.00
                        -6233.83     135.53     781.43      -0.00       0.00       0.00     685.80       0.00       0.00      -0.00

   55   7.2  0.5 -0.5      -0.00       0.00      -0.00    -686.86       0.00       0.00       0.00     807.37      -0.00       0.00
                            0.00       0.00      -0.00      -0.00      -0.00     686.85       0.00      -0.00      -0.00     807.37

   56   8.2  0.5 -0.5   -6233.84    -744.50    -273.36       0.00      -0.00       0.00     685.81       0.00       0.00      -0.00
                            0.00       0.00      -0.00       0.00     686.85      -0.00       0.00      -0.00     807.36       0.00


   Nr   State  S   Sz       41         42         43         44         45         46         47         48         49         50

    1   1.2  1.5  1.5       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00   -6233.84       0.00       0.00
                            0.00       0.00      -0.00       0.00      -0.00   -6233.83       0.00       0.00       0.00       0.00

    2   2.2  1.5  1.5      -0.00       0.00      -0.00     607.19       0.00      -0.00       0.00    -744.50       0.00       0.00
                           -0.00    1735.80       0.00      -0.00       0.00     135.53       0.00       0.00       0.00       0.00

    3   3.2  1.5  1.5       0.00      -0.00      -0.00   -1653.78      -0.00      -0.00      -0.00    -273.36       0.00       0.00
                           -0.00    -301.05       0.00      -0.00      -0.00     781.43      -0.00      -0.00       0.00       0.00

    4   4.2  1.5  1.5    -880.87       0.00      -0.00      -0.00      -0.00      -0.00    -686.86       0.00       0.00       0.00
                            0.00      -0.00    1388.41      -0.00    1084.40      -0.00      -0.00       0.00       0.00       0.00

    5   5.2  1.5  1.5       0.00     880.88       0.00       0.00       0.00     686.86       0.00      -0.00       0.00       0.00
                           -0.00      -0.00      -0.00     880.87       0.00       0.00      -0.00     686.85       0.00       0.00

    6   6.2  1.5  1.5       0.00      -0.00    1633.32      -0.00    -660.20      -0.00       0.00       0.00       0.00       0.00
                         -880.87      -0.00       0.00       0.00       0.00       0.00     686.85      -0.00       0.00       0.00

    7   7.2  1.5  1.5      -0.00      -0.00      -0.00       0.00      -0.00       0.00       0.00     685.81       0.00       0.00
                           -0.00      -0.00       0.00      -0.00       0.00     685.80       0.00       0.00       0.00       0.00

    8   8.2  1.5  1.5     786.93      -0.00       0.00       0.00       0.00       0.00     807.37       0.00       0.00       0.00
                           -0.00       0.00     559.31       0.00    -716.11       0.00      -0.00      -0.00       0.00       0.00

    9   9.2  1.5  1.5       0.00    -786.94      -0.00       0.00      -0.00    -807.37      -0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00     786.93       0.00       0.00      -0.00     807.36       0.00       0.00

   10  10.2  1.5  1.5       0.00      -0.00    -340.52      -0.00    -842.43       0.00       0.00      -0.00       0.00       0.00
                         -786.93      -0.00      -0.00       0.00       0.00      -0.00     807.37       0.00       0.00       0.00

   11   1.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00      -0.00       0.00       0.00    7198.21      -0.00       0.00       0.00

   12   2.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00
                        -1303.20       0.00      -0.00      -0.00      -0.00       0.00    -703.19       0.00      -0.00    1002.17

   13   3.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                        -1561.99      -0.00       0.00       0.00      -0.00       0.00     586.68      -0.00      -0.00    -173.81

   14   4.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    -508.57       0.00
                            0.00      -0.00      -0.00   -1017.14       0.00      -0.00      -0.00     793.10       0.00      -0.00

   15   5.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     508.58
                            0.00      -0.00     282.79       0.00   -2014.49       0.00       0.00       0.00      -0.00      -0.00

   16   6.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                            0.00    1017.14      -0.00       0.00      -0.00    -793.11       0.00       0.00    -508.57      -0.00

   17   7.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00
                           -0.00      -0.00       0.00       0.00      -0.00       0.00    -791.90      -0.00      -0.00      -0.00

   18   8.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     454.33      -0.00
                            0.00      -0.00       0.00    -908.67       0.00      -0.00      -0.00     932.26      -0.00       0.00

   19   9.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    -454.34
                           -0.00       0.00    1039.03       0.00     145.86      -0.00      -0.00      -0.00      -0.00      -0.00

   20  10.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                            0.00    -908.66       0.00      -0.00       0.00     932.27       0.00      -0.00    -454.33      -0.00

   21   1.2  1.5 -0.5       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00   -3599.11       0.00       0.00
                           -0.00      -0.00       0.00      -0.00       0.00    3599.11      -0.00      -0.00      -0.00      -0.00

   22   2.2  1.5 -0.5      -0.00       0.00      -0.00     350.56       0.00      -0.00       0.00    -429.84       0.00       0.00
                            0.00   -1002.17      -0.00       0.00      -0.00     -78.25      -0.00      -0.00   -1303.20       0.00

   23   3.2  1.5 -0.5       0.00      -0.00      -0.00    -954.81      -0.00      -0.00      -0.00    -157.82       0.00       0.00
                            0.00     173.81      -0.00       0.00       0.00    -451.16       0.00       0.00   -1561.99      -0.00

   24   4.2  1.5 -0.5    -508.57       0.00      -0.00      -0.00      -0.00      -0.00    -396.56       0.00       0.00       0.00
                           -0.00       0.00    -801.60       0.00    -626.08       0.00       0.00      -0.00       0.00      -0.00

   25   5.2  1.5 -0.5       0.00     508.58       0.00       0.00       0.00     396.56       0.00      -0.00       0.00       0.00
                            0.00       0.00       0.00    -508.57      -0.00      -0.00       0.00    -396.55       0.00      -0.00

   26   6.2  1.5 -0.5       0.00      -0.00     943.00      -0.00    -381.17      -0.00       0.00       0.00       0.00       0.00
                          508.57       0.00      -0.00      -0.00      -0.00      -0.00    -396.56       0.00       0.00    1017.14

   27   7.2  1.5 -0.5      -0.00      -0.00      -0.00       0.00      -0.00       0.00       0.00     395.95       0.00       0.00
                            0.00       0.00      -0.00       0.00      -0.00    -395.95      -0.00      -0.00      -0.00      -0.00

   28   8.2  1.5 -0.5     454.33      -0.00       0.00       0.00       0.00       0.00     466.14       0.00       0.00       0.00
                            0.00      -0.00    -322.92      -0.00     413.45      -0.00       0.00       0.00       0.00      -0.00

   29   9.2  1.5 -0.5       0.00    -454.34      -0.00       0.00      -0.00    -466.14      -0.00       0.00       0.00       0.00
                            0.00       0.00       0.00    -454.33      -0.00      -0.00       0.00    -466.13      -0.00       0.00

   30  10.2  1.5 -0.5       0.00      -0.00    -196.60      -0.00    -486.38       0.00       0.00      -0.00       0.00       0.00
                          454.33       0.00       0.00      -0.00      -0.00       0.00    -466.14      -0.00       0.00    -908.66

   31   1.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00

   32   2.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   -1735.80

   33   3.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     301.05

   34   4.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    -880.87       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00

   35   5.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     880.88
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   36   6.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     880.87       0.00

   37   7.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   38   8.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     786.93      -0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00

   39   9.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    -786.94
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   40  10.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     786.93       0.00

   41   1.2  0.5  0.5    9481.06       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00     -33.95
                            0.00      -0.00       9.44       0.00     -67.25       0.00      -0.00      -0.00       0.00      -0.00

   42   2.2  0.5  0.5       0.00    9481.06       0.00       0.00       0.00       0.00       0.00       0.00      33.95       0.00
                            0.00       0.00      -0.00     -33.95      -0.00       0.00       0.00   -4440.02       0.00       0.00

   43   3.2  0.5  0.5       0.00       0.00    9481.04       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00
                           -9.44       0.00      -0.00      -0.00      -0.00       0.00   -5077.12      -0.00       0.00      53.52

   44   4.2  0.5  0.5       0.00       0.00       0.00    9481.08       0.00       0.00       0.00       0.00       0.00      -0.00
                           -0.00      33.95       0.00      -0.00       0.00    4440.02       0.00      -0.00      33.96      -0.00

   45   5.2  0.5  0.5       0.00       0.00       0.00       0.00    9481.05       0.00       0.00       0.00      -0.00      -0.00
                           67.25       0.00       0.00      -0.00       0.00       0.00    -712.73       0.00      -0.00      41.80

   46   6.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00   16400.97       0.00       0.00   -4440.02       0.00
                           -0.00      -0.00      -0.00   -4440.02      -0.00      -0.00       0.00    -163.55      -0.00       0.00

   47   7.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00   16400.97       0.00       0.00    4440.01
                            0.00      -0.00    5077.12      -0.00     712.73      -0.00       0.00      -0.00      -0.00      -0.00

   48   8.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00   16400.97       0.00      -0.00
                            0.00    4440.02       0.00       0.00      -0.00     163.55       0.00      -0.00   -4440.02       0.00

   49   1.2  0.5 -0.5      -0.00      33.95      -0.00       0.00      -0.00   -4440.02       0.00       0.00    9481.06       0.00
                           -0.00      -0.00      -0.00     -33.96       0.00       0.00       0.00    4440.02      -0.00       0.00

   50   2.2  0.5 -0.5     -33.95       0.00      -0.00      -0.00      -0.00       0.00    4440.01      -0.00       0.00    9481.06
                            0.00      -0.00     -53.52       0.00     -41.80      -0.00       0.00      -0.00      -0.00      -0.00

   51   3.2  0.5 -0.5       0.00       0.00      -0.00     -62.96      -0.00      -0.00       0.00   -1921.32       0.00       0.00
                            0.00      53.52      -0.00      -0.00       0.00    3155.80       0.00      -0.00       9.44      -0.00

   52   4.2  0.5 -0.5      -0.00       0.00      62.96      -0.00     -25.45      -0.00       0.00       0.00       0.00       0.00
                           33.96      -0.00       0.00       0.00      -0.00       0.00    4440.02      -0.00       0.00     -33.95

   53   5.2  0.5 -0.5       0.00       0.00       0.00      25.45       0.00       0.00      -0.00   -4753.29       0.00       0.00
                           -0.00      41.80      -0.00       0.00       0.00   -4040.55       0.00       0.00     -67.25      -0.00

   54   6.2  0.5 -0.5    4440.02      -0.00       0.00       0.00      -0.00      -0.00    -163.55       0.00       0.00       0.00
                           -0.00       0.00   -3155.80      -0.00    4040.55      -0.00       0.00      -0.00       0.00       0.00

   55   7.2  0.5 -0.5      -0.00   -4440.01      -0.00      -0.00       0.00     163.55       0.00      -0.00       0.00       0.00
                           -0.00      -0.00      -0.00   -4440.02      -0.00      -0.00      -0.00     163.55      -0.00       0.00

   56   8.2  0.5 -0.5      -0.00       0.00    1921.32      -0.00    4753.29      -0.00       0.00       0.00       0.00       0.00
                        -4440.02       0.00       0.00       0.00      -0.00       0.00    -163.55       0.00      -0.00   -4440.02


   Nr   State  S   Sz       51         52         53         54         55         56

    1   1.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00

    2   2.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00

    3   3.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00

    4   4.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00

    5   5.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00

    6   6.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00

    7   7.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00

    8   8.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00

    9   9.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00

   10  10.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00

   11   1.2  1.5  0.5       0.00       0.00      -0.00      -0.00      -0.00   -3599.11
                           -0.00       0.00      -0.00   -3599.11       0.00       0.00

   12   2.2  1.5  0.5      -0.00     350.56       0.00      -0.00       0.00    -429.84
                            0.00      -0.00       0.00      78.25       0.00       0.00

   13   3.2  1.5  0.5      -0.00    -954.81      -0.00      -0.00      -0.00    -157.82
                            0.00      -0.00      -0.00     451.16      -0.00      -0.00

   14   4.2  1.5  0.5      -0.00      -0.00      -0.00      -0.00    -396.56       0.00
                          801.60      -0.00     626.08      -0.00      -0.00       0.00

   15   5.2  1.5  0.5       0.00       0.00       0.00     396.56       0.00      -0.00
                           -0.00     508.57       0.00       0.00      -0.00     396.55

   16   6.2  1.5  0.5     943.00      -0.00    -381.17      -0.00       0.00       0.00
                            0.00       0.00       0.00       0.00     396.56      -0.00

   17   7.2  1.5  0.5      -0.00       0.00      -0.00       0.00       0.00     395.95
                            0.00      -0.00       0.00     395.95       0.00       0.00

   18   8.2  1.5  0.5       0.00       0.00       0.00       0.00     466.14       0.00
                          322.92       0.00    -413.45       0.00      -0.00      -0.00

   19   9.2  1.5  0.5      -0.00       0.00      -0.00    -466.14      -0.00       0.00
                           -0.00     454.33       0.00       0.00      -0.00     466.13

   20  10.2  1.5  0.5    -196.60      -0.00    -486.38       0.00       0.00      -0.00
                           -0.00       0.00       0.00      -0.00     466.14       0.00

   21   1.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00       0.00    7198.21      -0.00

   22   2.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00    -703.19       0.00

   23   3.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00       0.00     586.68      -0.00

   24   4.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00   -1017.14       0.00      -0.00      -0.00     793.10

   25   5.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00
                          282.79       0.00   -2014.49       0.00       0.00       0.00

   26   6.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00    -793.11       0.00       0.00

   27   7.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00       0.00    -791.90      -0.00

   28   8.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00    -908.67       0.00      -0.00      -0.00     932.26

   29   9.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00
                         1039.03       0.00     145.86      -0.00      -0.00      -0.00

   30  10.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00     932.27       0.00      -0.00

   31   1.2  1.5 -1.5       0.00       0.00      -0.00      -0.00      -0.00   -6233.84
                            0.00      -0.00       0.00    6233.83      -0.00      -0.00

   32   2.2  1.5 -1.5      -0.00     607.19       0.00      -0.00       0.00    -744.50
                           -0.00       0.00      -0.00    -135.53      -0.00      -0.00

   33   3.2  1.5 -1.5      -0.00   -1653.78      -0.00      -0.00      -0.00    -273.36
                           -0.00       0.00       0.00    -781.43       0.00       0.00

   34   4.2  1.5 -1.5      -0.00      -0.00      -0.00      -0.00    -686.86       0.00
                        -1388.41       0.00   -1084.40       0.00       0.00      -0.00

   35   5.2  1.5 -1.5       0.00       0.00       0.00     686.86       0.00      -0.00
                            0.00    -880.87      -0.00      -0.00       0.00    -686.85

   36   6.2  1.5 -1.5    1633.32      -0.00    -660.20      -0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00    -686.85       0.00

   37   7.2  1.5 -1.5      -0.00       0.00      -0.00       0.00       0.00     685.81
                           -0.00       0.00      -0.00    -685.80      -0.00      -0.00

   38   8.2  1.5 -1.5       0.00       0.00       0.00       0.00     807.37       0.00
                         -559.31      -0.00     716.11      -0.00       0.00       0.00

   39   9.2  1.5 -1.5      -0.00       0.00      -0.00    -807.37      -0.00       0.00
                            0.00    -786.93      -0.00      -0.00       0.00    -807.36

   40  10.2  1.5 -1.5    -340.52      -0.00    -842.43       0.00       0.00      -0.00
                            0.00      -0.00      -0.00       0.00    -807.37      -0.00

   41   1.2  0.5  0.5       0.00      -0.00       0.00    4440.02      -0.00      -0.00
                           -0.00     -33.96       0.00       0.00       0.00    4440.02

   42   2.2  0.5  0.5       0.00       0.00       0.00      -0.00   -4440.01       0.00
                          -53.52       0.00     -41.80      -0.00       0.00      -0.00

   43   3.2  0.5  0.5      -0.00      62.96       0.00       0.00      -0.00    1921.32
                            0.00      -0.00       0.00    3155.80       0.00      -0.00

   44   4.2  0.5  0.5     -62.96      -0.00      25.45       0.00      -0.00      -0.00
                            0.00      -0.00      -0.00       0.00    4440.02      -0.00

   45   5.2  0.5  0.5      -0.00     -25.45       0.00      -0.00       0.00    4753.29
                           -0.00       0.00      -0.00   -4040.55       0.00       0.00

   46   6.2  0.5  0.5      -0.00      -0.00       0.00      -0.00     163.55      -0.00
                        -3155.80      -0.00    4040.55       0.00       0.00      -0.00

   47   7.2  0.5  0.5       0.00       0.00      -0.00    -163.55       0.00       0.00
                           -0.00   -4440.02      -0.00      -0.00       0.00     163.55

   48   8.2  0.5  0.5   -1921.32       0.00   -4753.29       0.00      -0.00       0.00
                            0.00       0.00      -0.00       0.00    -163.55      -0.00

   49   1.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00
                           -9.44      -0.00      67.25      -0.00       0.00       0.00

   50   2.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      33.95       0.00      -0.00      -0.00    4440.02

   51   3.2  0.5 -0.5    9481.04       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00      -0.00    5077.12       0.00

   52   4.2  0.5 -0.5       0.00    9481.08       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00   -4440.02      -0.00       0.00

   53   5.2  0.5 -0.5       0.00       0.00    9481.05       0.00       0.00       0.00
                           -0.00       0.00      -0.00      -0.00     712.73      -0.00

   54   6.2  0.5 -0.5       0.00       0.00       0.00   16400.97       0.00       0.00
                            0.00    4440.02       0.00       0.00      -0.00     163.55

   55   7.2  0.5 -0.5       0.00       0.00       0.00       0.00   16400.97       0.00
                        -5077.12       0.00    -712.73       0.00      -0.00       0.00

   56   8.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00   16400.97
                           -0.00      -0.00       0.00    -163.55      -0.00       0.00


 No symmetry adaption


 Spin-orbit eigenstates   (energies)
 ======================

     Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
              (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1  -214.51104259    -0.02446697    -5369.88      0.00000000        0.00      0.0000
     2  -214.51104259    -0.02446697    -5369.88      0.00000000        0.00      0.0000
     3  -214.51104258    -0.02446695    -5369.88      0.00000001        0.00      0.0000
     4  -214.51104258    -0.02446695    -5369.88      0.00000001        0.00      0.0000
     5  -214.46229559     0.02428004     5328.85      0.04874701    10698.73      1.3265
     6  -214.46229559     0.02428004     5328.85      0.04874701    10698.73      1.3265
     7  -214.46229558     0.02428005     5328.86      0.04874702    10698.73      1.3265
     8  -214.46229558     0.02428005     5328.86      0.04874702    10698.73      1.3265
     9  -214.44400575     0.04256988     9343.01      0.06703685    14712.89      1.8242
    10  -214.44400575     0.04256988     9343.01      0.06703685    14712.89      1.8242
    11  -214.44400572     0.04256991     9343.02      0.06703688    14712.89      1.8242
    12  -214.44400572     0.04256991     9343.02      0.06703688    14712.89      1.8242
    13  -214.44400566     0.04256997     9343.03      0.06703694    14712.91      1.8242
    14  -214.44400566     0.04256997     9343.03      0.06703694    14712.91      1.8242
    15  -214.41396848     0.07260715    15935.43      0.09707411    21305.30      2.6415
    16  -214.41396848     0.07260715    15935.43      0.09707411    21305.30      2.6415
    17  -214.36985499     0.11672064    25617.22      0.14118761    30987.10      3.8419
    18  -214.36985499     0.11672064    25617.22      0.14118761    30987.10      3.8419
    19  -214.36985496     0.11672067    25617.23      0.14118764    30987.10      3.8419
    20  -214.36985496     0.11672067    25617.23      0.14118764    30987.10      3.8419
    21  -214.28179729     0.20477834    44943.65      0.22924531    50313.53      6.2381
    22  -214.28179729     0.20477834    44943.65      0.22924531    50313.53      6.2381
    23  -214.27715031     0.20942532    45963.55      0.23389229    51333.42      6.3645
    24  -214.27715031     0.20942532    45963.55      0.23389229    51333.42      6.3645
    25  -214.27715030     0.20942533    45963.55      0.23389229    51333.43      6.3645
    26  -214.27715030     0.20942533    45963.55      0.23389229    51333.43      6.3645
    27  -214.25632108     0.23025455    50535.03      0.25472152    55904.91      6.9313
    28  -214.25632108     0.23025455    50535.03      0.25472152    55904.91      6.9313
    29  -214.25574302     0.23083261    50661.90      0.25529957    56031.78      6.9471
    30  -214.25574302     0.23083261    50661.90      0.25529957    56031.78      6.9471
    31  -214.25574302     0.23083261    50661.90      0.25529957    56031.78      6.9471
    32  -214.25574302     0.23083261    50661.90      0.25529957    56031.78      6.9471
    33  -214.25534561     0.23123002    50749.12      0.25569698    56119.00      6.9579
    34  -214.25534561     0.23123002    50749.12      0.25569698    56119.00      6.9579
    35  -214.25534560     0.23123002    50749.12      0.25569699    56119.00      6.9579
    36  -214.25534560     0.23123002    50749.12      0.25569699    56119.00      6.9579
    37  -214.25534557     0.23123006    50749.13      0.25569702    56119.01      6.9579
    38  -214.25534557     0.23123006    50749.13      0.25569702    56119.01      6.9579
    39  -214.21898302     0.26759261    58729.79      0.29205957    64099.67      7.9473
    40  -214.21898302     0.26759261    58729.79      0.29205957    64099.67      7.9473
    41  -214.21898301     0.26759262    58729.79      0.29205958    64099.67      7.9473
    42  -214.21898301     0.26759262    58729.79      0.29205958    64099.67      7.9473
    43  -214.21800884     0.26856679    58943.60      0.29303376    64313.48      7.9739
    44  -214.21800884     0.26856679    58943.60      0.29303376    64313.48      7.9739
    45  -214.21800879     0.26856683    58943.61      0.29303380    64313.49      7.9739
    46  -214.21800879     0.26856683    58943.61      0.29303380    64313.49      7.9739
    47  -214.21800879     0.26856684    58943.61      0.29303381    64313.49      7.9739
    48  -214.21800879     0.26856684    58943.61      0.29303381    64313.49      7.9739
    49  -214.21800872     0.26856691    58943.62      0.29303388    64313.50      7.9739
    50  -214.21800872     0.26856691    58943.62      0.29303388    64313.50      7.9739
    51  -214.21672484     0.26985079    59225.40      0.29431775    64595.28      8.0088
    52  -214.21672484     0.26985079    59225.40      0.29431775    64595.28      8.0088
    53  -214.21672478     0.26985085    59225.42      0.29431781    64595.29      8.0088
    54  -214.21672478     0.26985085    59225.42      0.29431781    64595.29      8.0088
    55  -214.21672477     0.26985086    59225.42      0.29431782    64595.30      8.0088
    56  -214.21672477     0.26985086    59225.42      0.29431782    64595.30      8.0088


 Eigenvectors of spin-orbit matrix
 =================================

  Basis states          Eigenvectors (columnwise)

   Nr   State  S   Sz        1             2             3             4             5             6             7             8

    1    1.2  1.5  1.5   0.001919883   0.703597348  -0.408865443  -0.001212261  -0.500674844   0.000477814  -0.007579770   0.061752130
                         0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000

    2    2.2  1.5  1.5   0.000032755   0.012005309   0.002047323   0.000006065   0.017875540  -0.000017066  -0.001400980   0.011414767
                         0.000000003  -0.000000002  -0.000000003   0.000000005   0.000000003  -0.000000014  -0.000000000   0.000000027

    3    3.2  1.5  1.5  -0.000005590  -0.002047263   0.012005301   0.000035588  -0.011500360   0.000010967  -0.002177645   0.017742439
                         0.000000003  -0.000000002  -0.000000003   0.000000005   0.000000004  -0.000000017  -0.000000000   0.000000032

    4    4.2  1.5  1.5  -0.006085001   0.000016600   0.000030758  -0.010376579   0.000000283   0.000318108   0.017341571   0.002128426
                        -0.000643714   0.000001752   0.000005300  -0.001790446  -0.000002496  -0.002601590   0.011730132   0.001439709

    5    5.2  1.5  1.5   0.000000004  -0.000000003  -0.000000004   0.000000007   0.000000005  -0.000000022  -0.000000000   0.000000042
                        -0.000016692  -0.006119025  -0.010529977  -0.000031212  -0.002621164   0.000002512   0.002569655  -0.020936501

    6    6.2  1.5  1.5  -0.000643724   0.000001752   0.000005300  -0.001790436  -0.000002496  -0.002601902   0.011730089   0.001439704
                         0.006085090  -0.000016600  -0.000030758   0.010376519  -0.000000283  -0.000318146  -0.017341508  -0.002128418

    7    7.2  1.5  1.5  -0.000008978  -0.003290103   0.001911855   0.000005669  -0.009053170   0.000008640  -0.000137048   0.001116527
                         0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000

    8    8.2  1.5  1.5   0.011310629  -0.000030855  -0.000057173   0.019287602   0.000000179   0.000200694   0.010939147   0.001342621
                         0.001196518  -0.000003256  -0.000009852   0.003328015  -0.000001575  -0.001641343   0.007399424   0.000908176

    9    9.2  1.5  1.5  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000
                        -0.000092503  -0.033900622   0.019699958   0.000058409   0.023046519  -0.000021994   0.000348889  -0.002842388

   10   10.2  1.5  1.5  -0.001196525   0.000003256   0.000009852  -0.003328006   0.000001574   0.001641110  -0.007399455  -0.000908179
                         0.011310696  -0.000030855  -0.000057173   0.019287548   0.000000179   0.000200666   0.010939193   0.001342627

   11    1.2  1.5  0.5  -0.043012693   0.000117040   0.000354149  -0.119635584   0.000059248   0.061755729  -0.278428290  -0.034173172
                         0.406596927  -0.001109180  -0.002055248   0.693351309   0.000006718   0.007551148   0.411622297   0.050520652

   12    2.2  1.5  0.5  -0.000215376   0.000000591  -0.000006046   0.002041309  -0.000010884  -0.011415359  -0.009940718  -0.001220092
                         0.002035963  -0.000005559   0.000035071  -0.011830474  -0.000001348  -0.001395834   0.014696134   0.001803750

   13    3.2  1.5  0.5  -0.001262957   0.000003443   0.000001027  -0.000348120  -0.000016942  -0.017743363   0.006395444   0.000784941
                         0.011938703  -0.000032574  -0.000005977   0.002017527  -0.000002057  -0.002169592  -0.009454892  -0.001160435

   14    4.2  1.5  0.5  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000
                        -0.000028732  -0.010529861   0.006119072   0.000018143  -0.021093396   0.000020130  -0.000319354   0.002601766

   15    5.2  1.5  0.5   0.010471403  -0.000028573   0.000017878  -0.006029881  -0.000002443  -0.002560129   0.002154952   0.000264510
                         0.001107734  -0.000003023   0.000003085  -0.001040434   0.000019981   0.020937217   0.001457652   0.000178920

   16    6.2  1.5  0.5   0.000028733   0.010529936  -0.006118979  -0.000018142   0.021093400  -0.000020130   0.000319327  -0.002601549
                         0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000

   17    7.2  1.5  0.5   0.000201131  -0.000000547  -0.000001656   0.000559419   0.000001071   0.001116649  -0.005034484  -0.000617912
                        -0.001901277   0.000005187   0.000009610  -0.003242130   0.000000121   0.000136538   0.007442871   0.000913504

   18    8.2  1.5  0.5   0.000000009  -0.000000006  -0.000000009   0.000000015  -0.000000004   0.000000016   0.000000000  -0.000000031
                        -0.000089233  -0.032705832  -0.011226669  -0.000033268   0.015215080  -0.000014528  -0.001670265   0.013608769

   19    9.2  1.5  0.5   0.006530225  -0.000017814  -0.000033009   0.011135736   0.000000103   0.000115858   0.006315616   0.000775150
                         0.000690813  -0.000001880  -0.000005688   0.001921436  -0.000000909  -0.000947523   0.004271990   0.000524327

   20   10.2  1.5  0.5  -0.000017581  -0.006439273   0.033974223   0.000100713   0.011396646  -0.000010869   0.002073135  -0.016890934
                         0.000000009  -0.000000006  -0.000000009   0.000000015  -0.000000004   0.000000016   0.000000000  -0.000000031

   21    1.2  1.5 -0.5   0.001115338   0.408865688   0.703596982   0.002085537  -0.062215672   0.000059626   0.060992966  -0.496945900
                         0.000000295  -0.000000171  -0.000000295   0.000000470  -0.000000123   0.000000523   0.000000000  -0.000001002

   22    2.2  1.5 -0.5   0.000005590   0.002047323  -0.012005293  -0.000035588   0.011500381  -0.000010967   0.002177645  -0.017742441
                        -0.000000003   0.000000002   0.000000003  -0.000000005  -0.000000004   0.000000017   0.000000000  -0.000000032

   23    3.2  1.5 -0.5   0.000032755   0.012005319   0.002047340   0.000006065   0.017875516  -0.000017066  -0.001400978   0.011414757
                         0.000000003  -0.000000002  -0.000000003   0.000000005   0.000000003  -0.000000014  -0.000000000   0.000000027

   24    4.2  1.5 -0.5   0.010471432  -0.000028573   0.000017878  -0.006029967  -0.000002443  -0.002560158   0.002155051   0.000264522
                         0.001107738  -0.000003023   0.000003085  -0.001040449   0.000019981   0.020937453   0.001457719   0.000178928

   25    5.2  1.5 -0.5  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000
                         0.000028732   0.010529832  -0.006118984  -0.000018142   0.021093158  -0.000020130   0.000319339  -0.002601647

   26    6.2  1.5 -0.5   0.001107745  -0.000003023   0.000003085  -0.001040433   0.000019981   0.020937457   0.001457597   0.000178913
                        -0.010471507   0.000028573  -0.000017878   0.006029875   0.000002443   0.002560158  -0.002154871  -0.000264500

   27    7.2  1.5 -0.5  -0.000005215  -0.001911886  -0.003290039  -0.000009752  -0.001124965   0.000001078   0.001102862  -0.008985675
                        -0.000000001   0.000000001   0.000000001  -0.000000002  -0.000000002   0.000000009   0.000000000  -0.000000018

   28    8.2  1.5 -0.5   0.032524351  -0.000088739  -0.000032786   0.011063187   0.000001747   0.001846688   0.011272200   0.001383486
                         0.003440647  -0.000009378  -0.000005642   0.001908923  -0.000014423  -0.015102596   0.007624703   0.000935817

   29    9.2  1.5 -0.5  -0.000000005   0.000000003   0.000000005  -0.000000008   0.000000002  -0.000000008  -0.000000000   0.000000015
                         0.000017913   0.006566663   0.011300289   0.000033495  -0.000954580   0.000000915   0.000935829  -0.007624756

   30   10.2  1.5 -0.5  -0.000677404   0.000001859  -0.000017110   0.005776777   0.000010786   0.011312391   0.009463636   0.001161537
                         0.006403542  -0.000017482   0.000099249  -0.033479496   0.000001335   0.001383243  -0.013990827  -0.001717184

   31    1.2  1.5 -1.5  -0.074018186   0.000201971  -0.000206125   0.069520960   0.000474282   0.496973372   0.034598517   0.004246798
                         0.699693172  -0.001909229   0.001194608  -0.402911639   0.000057993   0.060768142  -0.051149470  -0.006278346

   32    2.2  1.5 -1.5  -0.001262956   0.000003443   0.000001027  -0.000348117  -0.000016942  -0.017743387   0.006395449   0.000784942
                         0.011938693  -0.000032574  -0.000005977   0.002017510  -0.000002057  -0.002169595  -0.009454900  -0.001160436

   33    3.2  1.5 -1.5   0.000215369  -0.000000591   0.000006046  -0.002041311   0.000010884   0.011415337   0.009940717   0.001220092
                        -0.002035903   0.000005559  -0.000035071   0.011830482   0.000001348   0.001395831  -0.014696132  -0.001803750

   34    4.2  1.5 -1.5  -0.000000004   0.000000003   0.000000004  -0.000000007  -0.000000005   0.000000022   0.000000000  -0.000000042
                         0.000016692   0.006118955   0.010529914   0.000031212   0.002620966  -0.000002512  -0.002569622   0.020936238

   35    5.2  1.5 -1.5  -0.006085072   0.000016600   0.000030759  -0.010376642   0.000000283   0.000318132   0.017341789   0.002128452
                        -0.000643722   0.000001752   0.000005300  -0.001790457  -0.000002496  -0.002601786   0.011730279   0.001439727

   36    6.2  1.5 -1.5  -0.000016692  -0.006119044  -0.010529853  -0.000031212  -0.002621281   0.000002512   0.002569613  -0.020936162
                        -0.000000004   0.000000003   0.000000004  -0.000000007  -0.000000005   0.000000022   0.000000000  -0.000000042

   37    7.2  1.5 -1.5   0.000346118  -0.000000944   0.000000964  -0.000325080   0.000008576   0.008986240   0.000625568   0.000076785
                        -0.003271847   0.000008928  -0.000005586   0.001884015   0.000001049   0.001098806  -0.000924822  -0.000113517

   38    8.2  1.5 -1.5   0.000000008  -0.000000005  -0.000000008   0.000000013  -0.000000003   0.000000014   0.000000000  -0.000000027
                        -0.000031026  -0.011373740  -0.019572615  -0.000058015   0.001653568  -0.000001585  -0.001620930   0.013206681

   39    9.2  1.5 -1.5  -0.033712512   0.000091990  -0.000057559   0.019413091  -0.000002669  -0.002797213   0.002354358   0.000288986
                        -0.003566333   0.000009731  -0.000009932   0.003349659   0.000021832   0.022876137   0.001592535   0.000195476

   40   10.2  1.5 -1.5  -0.000031026  -0.011373808  -0.019572561  -0.000058015   0.001653332  -0.000001585  -0.001620937   0.013206736
                        -0.000000008   0.000000005   0.000000008  -0.000000013   0.000000003  -0.000000014  -0.000000000   0.000000027

   41    1.2  0.5  0.5   0.176278963  -0.000481007   0.000300966  -0.101508512  -0.000058298  -0.061086948   0.051418346   0.006311349
                         0.018647958  -0.000050884   0.000051931  -0.017514930   0.000476770   0.499580632   0.034780390   0.004269122

   42    2.2  0.5  0.5  -0.000000064   0.000000037   0.000000064  -0.000000102  -0.000000107   0.000000455   0.000000000  -0.000000872
                         0.000485194   0.177839288   0.102009444   0.000302324   0.305813174  -0.000292068  -0.049288840   0.401587829

   43    3.2  0.5  0.5   0.008138925  -0.000022127  -0.000095577   0.032283026  -0.000007299  -0.007973812  -0.282008120  -0.034612590
                        -0.076936765   0.000209863   0.000554608  -0.187097200  -0.000001417  -0.000975133   0.416914607   0.051170275

   44    4.2  0.5  0.5   0.000001504   0.000576678   0.205017843   0.000607738  -0.197487366   0.000188252  -0.056908191   0.463662418
                         0.000000064  -0.000000037  -0.000000064   0.000000102   0.000000107  -0.000000455  -0.000000000   0.000000872

   45    5.2  0.5  0.5   0.019973442  -0.000054489   0.000039023  -0.013154823   0.000480423   0.503362270  -0.004467205  -0.000547974
                        -0.188808690   0.000515186  -0.000226062   0.076239389   0.000058671   0.061549336   0.006604439   0.000810109

   46    6.2  0.5  0.5  -0.000000071   0.000000041   0.000000071  -0.000000113  -0.000000031   0.000000133   0.000000000  -0.000000255
                        -0.000530988  -0.194567762   0.339201322   0.001005571  -0.205103002   0.000195674  -0.018885676   0.153870712

   47    7.2  0.5  0.5  -0.195383020   0.000532997   0.000987614  -0.333177841   0.000003423   0.003847948   0.209757182   0.025744644
                        -0.020668995   0.000056242   0.000170180  -0.057488787  -0.000030192  -0.031469759   0.141883309   0.017414188

   48    8.2  0.5  0.5   0.001066944   0.391041155  -0.001100094  -0.000003402   0.236807278  -0.000226059  -0.012195543   0.099366431
                         0.000000071  -0.000000041  -0.000000071   0.000000113   0.000000031  -0.000000133  -0.000000000   0.000000255

   49    1.2  0.5 -0.5   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000
                        -0.000483690  -0.177262571   0.103008498   0.000305414  -0.503301523   0.000480321  -0.007619615   0.062076741

   50    2.2  0.5 -0.5   0.176852477  -0.000482509  -0.000297939   0.100523994  -0.000034997  -0.037117194  -0.332636855  -0.040826090
                         0.018708666  -0.000050978  -0.000051304   0.017345120   0.000289964   0.303552321  -0.225001125  -0.027615578

   51    3.2  0.5 -0.5   0.000211026   0.077366064   0.189861940   0.000562783  -0.008033217   0.000007417  -0.061777248   0.503335245
                         0.000000073  -0.000000043  -0.000000074   0.000000117   0.000000122  -0.000000521  -0.000000000   0.000000997

   52    4.2  0.5 -0.5  -0.000060704   0.000000094   0.000103235  -0.034860034   0.000186805   0.196027335   0.259780310   0.031884552
                         0.000573475  -0.000001502  -0.000598905   0.202032408   0.000023301   0.023969635  -0.384053419  -0.047137220

   53    5.2  0.5 -0.5   0.000518059   0.189862212  -0.077365973  -0.000229406   0.507111325  -0.000483992  -0.000978035   0.007973365
                         0.000000010  -0.000000006  -0.000000010   0.000000016   0.000000017  -0.000000073  -0.000000000   0.000000140

   54    6.2  0.5 -0.5  -0.193488133   0.000528034  -0.000990947   0.334261937   0.000023882   0.024893889  -0.127451702  -0.015643060
                        -0.020468417   0.000055930  -0.000170870   0.057675772  -0.000194211  -0.203586679  -0.086210555  -0.010581277

   55    7.2  0.5 -0.5  -0.000000142   0.000000082   0.000000142  -0.000000226  -0.000000063   0.000000267   0.000000000  -0.000000510
                         0.000535956   0.196473234   0.338101220   0.001002169   0.031704139  -0.000030384  -0.031081195   0.253236942

   56    8.2  0.5 -0.5  -0.041137429   0.000112172  -0.000000690   0.000186983  -0.000224404  -0.235056574   0.055672867   0.006832926
                         0.388871311  -0.001061031   0.000003333  -0.001084088  -0.000027305  -0.028741853  -0.082305646  -0.010101604


   Nr   State  S   Sz        9            10            11            12            13            14            15            16

    1    1.2  1.5  1.5   0.000000004   0.000000168  -0.000000036  -0.000000000  -0.000000002   0.000000436   0.000000035  -0.000000000
                        -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000

    2    2.2  1.5  1.5  -0.000349261  -0.013975639  -0.018794745  -0.000000003   0.000119909  -0.025664003  -0.017722431  -0.000000107
                        -0.000000002  -0.000000004   0.000000010   0.000000135   0.000000004   0.000000011  -0.000000009   0.000000072

    3    3.2  1.5  1.5   0.000092368   0.003695964  -0.003812565  -0.000000002  -0.000140568   0.030085635  -0.021241802  -0.000000128
                        -0.000000001   0.000000001   0.000000002   0.000000029  -0.000000005  -0.000000013  -0.000000011   0.000000086

    4    4.2  1.5  1.5   0.014474582  -0.000361726  -0.000000071   0.003101696   0.011158980   0.000052137   0.000000050   0.001065828
                        -0.030376622   0.000759141  -0.000000027  -0.009956925   0.009293197   0.000043420  -0.000000087   0.013791015

    5    5.2  1.5  1.5  -0.000000002  -0.000000001   0.000000008   0.000000109  -0.000000001  -0.000000003  -0.000000014   0.000000112
                         0.000152828   0.006115490   0.014968346   0.000000003   0.000031118  -0.006659964   0.027664141   0.000000167

    6    6.2  1.5  1.5   0.013814950  -0.000345258  -0.000000061  -0.032914449   0.003492406   0.000016317  -0.000000087   0.013790979
                         0.006582882  -0.000164514   0.000000245  -0.010253241  -0.004193575  -0.000019597  -0.000000050  -0.001065825

    7    7.2  1.5  1.5   0.000000002   0.000000062   0.000000062  -0.000000000  -0.000000000   0.000000051   0.000000116   0.000000000
                         0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000

    8    8.2  1.5  1.5  -0.006699916   0.000167436  -0.000000102   0.004218869  -0.000671909  -0.000003138  -0.000000055  -0.001173978
                         0.014060563  -0.000351391  -0.000000023  -0.013543203  -0.000559567  -0.000002615   0.000000096  -0.015190396

    9    9.2  1.5  1.5   0.000000000   0.000000002  -0.000000003  -0.000000036  -0.000000003  -0.000000007   0.000000000  -0.000000000
                        -0.000137441  -0.005499635  -0.005033723  -0.000000000   0.000076465  -0.016365779  -0.000000154  -0.000000000

   10   10.2  1.5  1.5   0.018075079  -0.000451716  -0.000000002  -0.003151304  -0.003658736  -0.000017095  -0.000000096   0.015190391
                         0.008612848  -0.000215240   0.000000025  -0.000981670   0.004393295   0.000020526  -0.000000055  -0.001173978

   11    1.2  1.5  0.5  -0.000000141   0.000000004  -0.000000000  -0.000000383   0.000000537   0.000000003   0.000000000  -0.000000048
                        -0.000000067   0.000000002   0.000000000  -0.000000119  -0.000000645  -0.000000003   0.000000000   0.000000004

   12    2.2  1.5  0.5   0.007055743  -0.000176335  -0.000000045  -0.024352949  -0.009526525  -0.000044509   0.000000134  -0.021178508
                         0.003362093  -0.000084022   0.000000180  -0.007586232   0.011439153   0.000053447   0.000000076   0.001636765

   13    3.2  1.5  0.5   0.017074276  -0.000426704  -0.000000009  -0.006881708  -0.018071029  -0.000084430  -0.000000112   0.017669617
                         0.008135963  -0.000203321   0.000000052  -0.002143736   0.021699127   0.000101385  -0.000000064  -0.001365583

   14    4.2  1.5  0.5   0.000000002   0.000000001  -0.000000010  -0.000000144   0.000000002   0.000000007  -0.000000012   0.000000097
                        -0.000166016  -0.006643292  -0.019606271  -0.000000005  -0.000075269   0.016109493   0.023957776   0.000000144

   15    5.2  1.5  0.5  -0.015913870   0.000397698  -0.000000047   0.001751698   0.015947425   0.000074515  -0.000000000  -0.000000007
                         0.033397139  -0.000834631  -0.000000003  -0.005623207   0.013281010   0.000062049   0.000000000  -0.000000085

   16    6.2  1.5  0.5  -0.000275146  -0.011010057  -0.023602434  -0.000000005  -0.000014559   0.003115945   0.023957918   0.000000144
                        -0.000000002  -0.000000003   0.000000012   0.000000172   0.000000000  -0.000000001   0.000000012  -0.000000097

   17    7.2  1.5  0.5   0.000000019  -0.000000000   0.000000000   0.000000004   0.000000037   0.000000000  -0.000000000   0.000000052
                         0.000000009  -0.000000000   0.000000000   0.000000001  -0.000000045  -0.000000000  -0.000000000  -0.000000004

   18    8.2  1.5  0.5   0.000000001  -0.000000000  -0.000000002  -0.000000038   0.000000003   0.000000008  -0.000000004   0.000000036
                         0.000022777   0.000911321  -0.005067075  -0.000000002  -0.000085817   0.018367252   0.008796182   0.000000053

   19    9.2  1.5  0.5   0.003313306  -0.000082799  -0.000000133   0.005607053   0.006445703   0.000030117   0.000000063   0.001355587
                        -0.006953368   0.000173767  -0.000000037  -0.017999491   0.005367980   0.000025080  -0.000000111   0.017540280

   20   10.2  1.5  0.5   0.000215264   0.008613787   0.013785566   0.000000002  -0.000046623   0.009978778  -0.008796330  -0.000000053
                         0.000000001   0.000000002  -0.000000007  -0.000000100  -0.000000002  -0.000000004  -0.000000004   0.000000036

   21    1.2  1.5 -0.5   0.000000004   0.000000156   0.000000401   0.000000000   0.000000004  -0.000000839  -0.000000048  -0.000000000
                         0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000

   22    2.2  1.5 -0.5  -0.000195330  -0.007815829   0.025507196   0.000000010  -0.000069552   0.014886534  -0.021241662  -0.000000128
                        -0.000000002   0.000000002  -0.000000015  -0.000000186  -0.000000001  -0.000000008  -0.000000011   0.000000086

   23    3.2  1.5 -0.5  -0.000472669  -0.018913614   0.007207878   0.000000007  -0.000131937   0.028238524   0.017722307   0.000000107
                        -0.000000005   0.000000000  -0.000000006  -0.000000052  -0.000000003  -0.000000013   0.000000009  -0.000000072

   24    4.2  1.5 -0.5  -0.002857706   0.000071412   0.000000138  -0.005831205  -0.012378904  -0.000057839   0.000000086   0.001846053
                         0.005997236  -0.000149872   0.000000038   0.018719053  -0.010309148  -0.000048166  -0.000000151   0.023886547

   25    5.2  1.5 -0.5  -0.000000006  -0.000000003  -0.000000006  -0.000000045   0.000000006   0.000000008   0.000000000   0.000000000
                         0.000924540   0.036994866  -0.005889728  -0.000000011  -0.000096967   0.020753447   0.000000085   0.000000000

   26    6.2  1.5 -0.5  -0.009939337   0.000248389  -0.000000047  -0.022534382   0.001994025   0.000009317   0.000000151  -0.023886688
                        -0.004736132   0.000118356   0.000000166  -0.007019725  -0.002394364  -0.000011188   0.000000086   0.001846064

   27    7.2  1.5 -0.5  -0.000000001  -0.000000021  -0.000000004   0.000000000   0.000000000  -0.000000058   0.000000052   0.000000000
                         0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000

   28    8.2  1.5 -0.5   0.000392017  -0.000009798   0.000000037  -0.001507026  -0.014113817  -0.000065946   0.000000032   0.000677785
                        -0.000822696   0.000020562   0.000000010   0.004837781  -0.011753983  -0.000054916  -0.000000056   0.008770030

   29    9.2  1.5 -0.5   0.000000002   0.000000002  -0.000000010  -0.000000138   0.000000001   0.000000004   0.000000009  -0.000000071
                        -0.000192486  -0.007702423  -0.018852605  -0.000000004  -0.000039193   0.008388224  -0.017592585  -0.000000106

   30   10.2  1.5 -0.5   0.007776102  -0.000194330   0.000000027   0.013161744   0.006385843   0.000029835  -0.000000056   0.008770177
                         0.003705342  -0.000092598  -0.000000096   0.004100038  -0.007667921  -0.000035827  -0.000000032  -0.000677796

   31    1.2  1.5 -1.5  -0.000000151   0.000000004   0.000000000   0.000000034  -0.000000279  -0.000000001   0.000000000   0.000000034
                        -0.000000072   0.000000002   0.000000000   0.000000011   0.000000335   0.000000002  -0.000000000  -0.000000003

   32    2.2  1.5 -1.5   0.012616518  -0.000315297   0.000000038   0.017944249   0.016423484   0.000076731   0.000000112  -0.017669740
                         0.006011819  -0.000150238  -0.000000130   0.005589845  -0.019720807  -0.000092143   0.000000064   0.001365592

   33    3.2  1.5 -1.5  -0.003336534   0.000083385   0.000000007   0.003640040  -0.019253073  -0.000089952   0.000000134  -0.021178648
                        -0.001589871   0.000039734  -0.000000029   0.001133915   0.023118491   0.000108019   0.000000076   0.001636775

   34    4.2  1.5 -1.5  -0.000000007  -0.000000003   0.000000003   0.000000075   0.000000000  -0.000000007  -0.000000007   0.000000056
                         0.000840916   0.033648963   0.010428848  -0.000000005   0.000067850  -0.014521926   0.013832140   0.000000083

   35    5.2  1.5 -1.5  -0.002630664   0.000065740   0.000000105  -0.004451815  -0.005117669  -0.000023912  -0.000000099  -0.002131645
                         0.005520762  -0.000137966   0.000000029   0.014291002  -0.004261993  -0.000019913   0.000000175  -0.027581892

   36    6.2  1.5 -1.5   0.000382450   0.015303176  -0.034474482  -0.000000015  -0.000025500   0.005457378  -0.013832103  -0.000000083
                         0.000000003  -0.000000001   0.000000020   0.000000252  -0.000000002  -0.000000001  -0.000000007   0.000000056

   37    7.2  1.5 -1.5  -0.000000056   0.000000001  -0.000000000  -0.000000059  -0.000000032  -0.000000000  -0.000000000   0.000000116
                        -0.000000027   0.000000001   0.000000000  -0.000000019   0.000000039   0.000000000  -0.000000000  -0.000000009

   38    8.2  1.5 -1.5   0.000000003   0.000000000   0.000000009   0.000000104  -0.000000001   0.000000001   0.000000008  -0.000000062
                        -0.000389244  -0.015575247   0.014185105   0.000000008  -0.000004084   0.000874401  -0.015235693  -0.000000092

   39    9.2  1.5 -1.5   0.002365746  -0.000059122  -0.000000034   0.001497106  -0.012575839  -0.000058759   0.000000000   0.000000012
                        -0.004964800   0.000124075  -0.000000010  -0.004805938  -0.010473156  -0.000048931  -0.000000000   0.000000153

   40   10.2  1.5 -1.5   0.000500375   0.020022229  -0.003300666  -0.000000006   0.000026712  -0.005717289  -0.015235689  -0.000000092
                         0.000000004   0.000000001   0.000000004   0.000000025  -0.000000001   0.000000003  -0.000000008   0.000000062

   41    1.2  0.5  0.5   0.227158057  -0.005676820   0.000002830  -0.117509304   0.309505254   0.001446077   0.000000000  -0.000000001
                        -0.476717925   0.011913750   0.000000610   0.377222454   0.257755943   0.001204272  -0.000000000  -0.000000017

   42    2.2  0.5  0.5   0.000000055   0.000000090  -0.000000297  -0.000004042  -0.000000076  -0.000000180   0.000000000  -0.000000000
                        -0.008722334  -0.349024286  -0.558569600  -0.000000096   0.001889093  -0.404324091   0.000000069   0.000000000

   43    3.2  0.5  0.5   0.151134688  -0.003776847   0.000001321   0.654467707  -0.201790923  -0.000942806  -0.000000000  -0.000000053
                         0.072016238  -0.001799629  -0.000004836   0.203874395   0.242304269   0.001132159  -0.000000000   0.000000004

   44    4.2  0.5  0.5   0.000923054   0.036931609  -0.205313865  -0.000000071  -0.003477151   0.744208299   0.000000018  -0.000000000
                        -0.000000024   0.000000017   0.000000098   0.000001535  -0.000000113  -0.000000323  -0.000000000   0.000000000

   45    5.2  0.5  0.5   0.678524724  -0.016957072  -0.000000066  -0.118757172   0.082488760   0.000385368   0.000000000  -0.000000130
                         0.323319758  -0.008079958   0.000000967  -0.036994321  -0.099049983  -0.000462854   0.000000000   0.000000010

   46    6.2  0.5  0.5  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000286  -0.000002338
                         0.000000003   0.000000139  -0.000000296  -0.000000000  -0.000000003   0.000000617  -0.575975939  -0.000003471

   47    7.2  0.5  0.5  -0.000000064   0.000000002   0.000000000  -0.000000138  -0.000000560  -0.000000003   0.000002064   0.044381519
                         0.000000134  -0.000000003   0.000000000   0.000000442  -0.000000467  -0.000000002  -0.000003641   0.574263636

   48    8.2  0.5  0.5  -0.000000004  -0.000000141  -0.000000183  -0.000000000  -0.000000000   0.000000093  -0.575975930  -0.000003471
                        -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000286   0.000002338

   49    1.2  0.5 -0.5  -0.000000118   0.000000004  -0.000000275  -0.000002883  -0.000000015  -0.000000210  -0.000000000   0.000000000
                         0.013197110   0.528072688  -0.395101527  -0.000000259   0.001881864  -0.402779875  -0.000000017   0.000000000

   50    2.2  0.5 -0.5   0.150137730  -0.003751988  -0.000003888   0.166127149  -0.310691883  -0.001451672   0.000000000  -0.000000005
                        -0.315081917   0.007874116  -0.000001111  -0.533293323  -0.258744128  -0.001208851   0.000000000  -0.000000069

   51    3.2  0.5 -0.5   0.004183687   0.167415748   0.685487234   0.000000177   0.001473319  -0.315326713   0.000000053  -0.000000000
                         0.000000049   0.000000056  -0.000000363  -0.000005010   0.000000042   0.000000128   0.000000000   0.000000000

   52    4.2  0.5 -0.5  -0.033340040   0.000833277   0.000000389   0.196023047  -0.476250437  -0.002225088   0.000000000   0.000000018
                        -0.015886647   0.000397087  -0.000001487   0.061063476   0.571866692   0.002671995   0.000000000  -0.000000001

   53    5.2  0.5 -0.5   0.018783716   0.751619230  -0.124385875  -0.000000224  -0.000602281   0.128900330   0.000000131   0.000000000
                         0.000000141   0.000000057   0.000000127   0.000000942  -0.000000074  -0.000000024  -0.000000000  -0.000000000

   54    6.2  0.5 -0.5  -0.000000060   0.000000001  -0.000000000   0.000000088   0.000000474   0.000000002   0.000002064   0.044381508
                         0.000000125  -0.000000003   0.000000000  -0.000000282   0.000000395   0.000000002  -0.000003641   0.574263497

   55    7.2  0.5 -0.5   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000286   0.000002338
                        -0.000000004  -0.000000149  -0.000000463  -0.000000000  -0.000000003   0.000000729   0.575976078   0.000003471

   56    8.2  0.5 -0.5   0.000000128  -0.000000003  -0.000000000   0.000000175  -0.000000060  -0.000000000   0.000003641  -0.574263488
                         0.000000061  -0.000000002  -0.000000000   0.000000054   0.000000072   0.000000000   0.000002064   0.044381507


   Nr   State  S   Sz       17            18            19            20            21            22            23            24

    1    1.2  1.5  1.5  -0.000846998   0.075357261  -0.273769695  -0.000097788   0.000000080   0.000000010   0.027454553   0.000536235
                        -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000

    2    2.2  1.5  1.5  -0.000001409   0.000125404   0.000275742   0.000000099  -0.269228876  -0.034286515  -0.321525596  -0.006279928
                         0.000000000   0.000000000   0.000000000   0.000000000   0.000000103   0.000000145  -0.000000019   0.000000024

    3    3.2  1.5  1.5  -0.000003099   0.000275733  -0.000125134  -0.000000045  -0.322690619  -0.041094911   0.113351968   0.002213997
                         0.000000001   0.000000000   0.000000000   0.000000000   0.000000124   0.000000174  -0.000000023   0.000000029

    4    4.2  1.5  1.5  -0.000106687  -0.000001200   0.000000009  -0.000026188  -0.001017970   0.007992620   0.000832611  -0.042627583
                         0.000272159   0.000003058  -0.000000027   0.000076287   0.026740435  -0.209974633  -0.002168820   0.111043602

    5    5.2  1.5  1.5   0.000000001   0.000000000   0.000000000   0.000000000   0.000000161   0.000000227  -0.000000030   0.000000038
                         0.000003281  -0.000291912  -0.000080153  -0.000000029   0.420253854   0.053519668   0.118942830   0.002323116

    6    6.2  1.5  1.5   0.000272250   0.000003059  -0.000000027   0.000075954   0.026740434  -0.209974618  -0.002168803   0.111042712
                         0.000106723   0.000001200  -0.000000009   0.000026074   0.001017970  -0.007992620  -0.000832604   0.042627242

    7    7.2  1.5  1.5  -0.000072054   0.006410658  -0.023289771  -0.000008319  -0.000000363  -0.000000046  -0.300992286  -0.005878906
                        -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000

    8    8.2  1.5  1.5   0.003416283   0.000038418  -0.000000294   0.000836731   0.000752014  -0.005904460  -0.000610779   0.031270359
                        -0.008714911  -0.000097937   0.000000875  -0.002437431  -0.019754203   0.155116450   0.001590983  -0.081458367

    9    9.2  1.5  1.5  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000
                        -0.000050164   0.004463088  -0.016214034  -0.000005792   0.000000567   0.000000072   0.405954793   0.007929007

   10   10.2  1.5  1.5   0.008714962   0.000097937  -0.000000875   0.002437223   0.019754202  -0.155116444  -0.001591001   0.081459240
                         0.003416302   0.000038418  -0.000000294   0.000836659   0.000752014  -0.005904460  -0.000610786   0.031270694

   11    1.2  1.5  0.5  -0.254869429  -0.002864178   0.000025596  -0.071279043   0.000000005  -0.000000038   0.000186365  -0.009541891
                        -0.099909908  -0.001123530   0.000008584  -0.024468949   0.000000000  -0.000000001   0.000071546  -0.003662955

   12    2.2  1.5  0.5  -0.000256743  -0.000002885  -0.000000042   0.000118617  -0.041065227   0.322457578  -0.002066924   0.105821640
                        -0.000100644  -0.000001132  -0.000000015   0.000040719  -0.001563294   0.012274249  -0.000793423   0.040623024

   13    3.2  1.5  0.5   0.000116668   0.000001311  -0.000000093   0.000261017   0.034261596  -0.269033238  -0.005862788   0.300168923
                         0.000045735   0.000000514  -0.000000032   0.000089603   0.001304289  -0.010240668  -0.002250644   0.115229359

   14    4.2  1.5  0.5   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000140   0.000000196   0.000000000   0.000000000
                        -0.000000902   0.000080283  -0.000291932  -0.000000104   0.363950914   0.046349443   0.319499397   0.006240382

   15    5.2  1.5  0.5  -0.000029395  -0.000000330  -0.000000034   0.000094936  -0.000000002   0.000000018  -0.002236451   0.114503366
                         0.000074986   0.000000843   0.000000099  -0.000276552   0.000000059  -0.000000466   0.005825884  -0.298277679

   16    6.2  1.5  0.5   0.000000906  -0.000080564   0.000292173   0.000000104   0.363949976   0.046349324  -0.319500068  -0.006240395
                        -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000140  -0.000000196   0.000000000   0.000000000

   17    7.2  1.5  0.5  -0.021681835  -0.000243657   0.000002178  -0.006063853  -0.000000023   0.000000179  -0.002043171   0.104610374
                        -0.008499372  -0.000095579   0.000000730  -0.002081623  -0.000000001   0.000000007  -0.000784374   0.040157986

   18    8.2  1.5  0.5   0.000000028   0.000000000   0.000000000   0.000000008   0.000000034   0.000000048  -0.000000025   0.000000032
                         0.000092516  -0.008232009  -0.012336573  -0.000004410   0.089621941   0.011413427   0.335130945   0.006545655

   19    9.2  1.5  0.5   0.001972328   0.000022180  -0.000000169   0.000482989  -0.000868352   0.006817893  -0.000352634   0.018053988
                        -0.005031395  -0.000056542   0.000000505  -0.001406966   0.022810222  -0.179113315   0.000918557  -0.047030107

   20   10.2  1.5  0.5  -0.000150440   0.013385469  -0.006385702  -0.000002278  -0.089621285  -0.011413343   0.133625871   0.002609985
                         0.000000028   0.000000000   0.000000000   0.000000008   0.000000034   0.000000048  -0.000000025   0.000000032

   21    1.2  1.5 -0.5   0.003076660  -0.273752471  -0.075362002  -0.000026997   0.000000038   0.000000005   0.010220808   0.000199626
                        -0.000000707  -0.000000011  -0.000000001  -0.000000192  -0.000000000   0.000000000   0.000000003  -0.000000003

   22    2.2  1.5 -0.5   0.000003099  -0.000275765   0.000125412   0.000000045  -0.322691101  -0.041094973  -0.113351003  -0.002213978
                        -0.000000001  -0.000000000  -0.000000000  -0.000000000   0.000000124   0.000000174   0.000000023  -0.000000029

   23    3.2  1.5 -0.5  -0.000001408   0.000125312   0.000275969   0.000000099   0.269228072   0.034286413  -0.321526340  -0.006279942
                         0.000000000   0.000000000   0.000000000   0.000000000  -0.000000103  -0.000000145  -0.000000019   0.000000024

   24    4.2  1.5 -0.5  -0.000029300  -0.000000329  -0.000000034   0.000094786  -0.001763179   0.013843655  -0.002236443   0.114502956
                         0.000074745   0.000000840   0.000000099  -0.000276116   0.046315895  -0.363687532   0.005825863  -0.298276612

   25    5.2  1.5 -0.5   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000
                         0.000000905  -0.000080542   0.000292393   0.000000104  -0.000000466  -0.000000059  -0.319500540  -0.006240404

   26    6.2  1.5 -0.5   0.000075007   0.000000843   0.000000099  -0.000276344  -0.046315775   0.363686595   0.005825876  -0.298277239
                         0.000029403   0.000000330   0.000000034  -0.000094864  -0.001763174   0.013843619   0.002236448  -0.114503197

   27    7.2  1.5 -0.5   0.000261733  -0.023288222  -0.006411199  -0.000002297  -0.000000179  -0.000000023  -0.112053531  -0.002188559
                        -0.000000060  -0.000000001  -0.000000000  -0.000000016   0.000000000   0.000000000  -0.000000028   0.000000036

   28    8.2  1.5 -0.5   0.003004390   0.000033791  -0.000001425   0.004005507  -0.000434178   0.003408963  -0.002345878   0.120105005
                        -0.007664177  -0.000086124   0.000004173  -0.011668203   0.011405165  -0.089557084   0.006110848  -0.312869843

   29    9.2  1.5 -0.5  -0.000000014  -0.000000000  -0.000000000  -0.000000004  -0.000000069  -0.000000097   0.000000013  -0.000000016
                        -0.000060737   0.005404166   0.001487559   0.000000533  -0.179243028  -0.022826745  -0.050376357  -0.000983919

   30   10.2  1.5 -0.5  -0.012462159  -0.000140052  -0.000002152   0.006039738   0.011405082  -0.089556428  -0.002436628   0.124749746
                        -0.004885220  -0.000054931  -0.000000747   0.002073345   0.000434175  -0.003408938  -0.000935343   0.047889181

   31    1.2  1.5 -1.5   0.070159227   0.000788573   0.000092490  -0.258937410   0.000000010  -0.000000080   0.000500616  -0.025630882
                         0.027502721   0.000309124   0.000031750  -0.088889052   0.000000000  -0.000000003   0.000192177  -0.009839228

   32    2.2  1.5 -1.5   0.000116754   0.000001312  -0.000000093   0.000260803  -0.034261698   0.269034042  -0.005862774   0.300168229
                         0.000045768   0.000000515  -0.000000032   0.000089529  -0.001304293   0.010240698  -0.002250638   0.115229093

   33    3.2  1.5 -1.5   0.000256713   0.000002885   0.000000042  -0.000118355  -0.041065166   0.322457096   0.002066942  -0.105822540
                         0.000100633   0.000001132   0.000000015  -0.000040629  -0.001563291   0.012274231   0.000793430  -0.040623370

   34    4.2  1.5 -1.5  -0.000000001  -0.000000000  -0.000000000  -0.000000000   0.000000081   0.000000113   0.000000030  -0.000000038
                        -0.000003285   0.000292323   0.000080656   0.000000029   0.210126696   0.026759805  -0.118944491  -0.002323149

   35    5.2  1.5 -1.5  -0.000106538  -0.000001198   0.000000009  -0.000026025   0.002035942  -0.015985258   0.000832599  -0.042626988
                         0.000271776   0.000003054  -0.000000027   0.000075811  -0.053480930   0.419949728  -0.002168790   0.111042051

   36    6.2  1.5 -1.5   0.000003286  -0.000292420  -0.000080305  -0.000000029  -0.210126681  -0.026759803   0.118943538   0.002323130
                        -0.000000001  -0.000000000  -0.000000000  -0.000000000   0.000000081   0.000000113   0.000000030  -0.000000038

   37    7.2  1.5 -1.5   0.005968461   0.000067084   0.000007868  -0.022027979  -0.000000046   0.000000363  -0.005488398   0.280998838
                         0.002339662   0.000026297   0.000002701  -0.007561851  -0.000000002   0.000000014  -0.002106896   0.107870334

   38    8.2  1.5 -1.5   0.000000024   0.000000000   0.000000000   0.000000007  -0.000000060  -0.000000084  -0.000000022   0.000000028
                         0.000105202  -0.009360591  -0.002577051  -0.000000923  -0.155228785  -0.019768511   0.087254230   0.001704194

   39    9.2  1.5 -1.5   0.001628868   0.000018308   0.000001880  -0.005264462   0.000000003  -0.000000022   0.002841616  -0.145487047
                        -0.004155230  -0.000046704  -0.000005478   0.015335591  -0.000000072   0.000000567  -0.007402321   0.378989198

   40   10.2  1.5 -1.5   0.000105203  -0.009360645  -0.002576830  -0.000000923  -0.155228779  -0.019768511   0.087255166   0.001704213
                        -0.000000024  -0.000000000  -0.000000000  -0.000000007   0.000000060   0.000000084   0.000000022  -0.000000028

   41    1.2  0.5  0.5   0.030587087   0.000343792   0.000035311  -0.098857748   0.000000000  -0.000000003   0.000109457  -0.005604063
                        -0.078027422  -0.000877010  -0.000102863   0.287976626  -0.000000012   0.000000092  -0.000285132   0.014598408

   42    2.2  0.5  0.5   0.000000681   0.000000011   0.000000001   0.000000185  -0.000000000   0.000000000  -0.000000001   0.000000002
                         0.002492287  -0.221760009  -0.224820941  -0.000080379   0.000000212   0.000000027   0.012859907   0.000251175

   43    3.2  0.5  0.5   0.291548076   0.003276388  -0.000013890   0.038469413  -0.000000004   0.000000033  -0.000065477   0.003352497
                         0.114288096   0.001285195  -0.000004545   0.013205930  -0.000000000   0.000000001  -0.000025138   0.001286961

   44    4.2  0.5  0.5   0.003434277  -0.305568751   0.079651361   0.000028376   0.000000005   0.000000001  -0.002777091  -0.000054243
                        -0.000000681  -0.000000011  -0.000000001  -0.000000185  -0.000000000   0.000000000   0.000000001  -0.000000002

   45    5.2  0.5  0.5  -0.037864866  -0.000425668  -0.000105822   0.296201865  -0.000000010   0.000000078  -0.000297119   0.015212136
                        -0.014843193  -0.000166746  -0.000036296   0.101681340  -0.000000000   0.000000003  -0.000114059   0.005839662

   46    6.2  0.5  0.5  -0.000000832  -0.000000013  -0.000000001  -0.000000225   0.000000015   0.000000021  -0.000000001   0.000000001
                        -0.005343171   0.475407557  -0.468993895  -0.000167430   0.039116097   0.004981467  -0.016786338  -0.000327868

   47    7.2  0.5  0.5  -0.234978192  -0.002642431   0.000020189  -0.057548567   0.000189500  -0.001487866  -0.000064341   0.003294112
                         0.599427611   0.006736263  -0.000060199   0.167641313  -0.004977866   0.039087829   0.000167599  -0.008581066

   48    8.2  0.5  0.5  -0.001892830   0.168431243   0.646237899   0.000230923   0.039115901   0.004981442   0.025977426   0.000507383
                         0.000000832   0.000000013   0.000000001   0.000000225  -0.000000015  -0.000000021   0.000000001  -0.000000001

   49    1.2  0.5 -0.5  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000
                         0.000941986  -0.083808403   0.304472316   0.000108755  -0.000000092  -0.000000012  -0.015637105  -0.000305420

   50    2.2  0.5 -0.5  -0.080934508  -0.000910230   0.000025923  -0.072996100   0.000000001  -0.000000008   0.000090018  -0.004608763
                         0.206463331   0.002320123  -0.000076084   0.212640600  -0.000000027   0.000000211  -0.000234490   0.012005686

   51    3.2  0.5 -0.5   0.003519438  -0.313148606  -0.040672993  -0.000014614   0.000000033   0.000000004   0.003591031   0.000070137
                        -0.000000779  -0.000000012  -0.000000001  -0.000000211  -0.000000000   0.000000000   0.000000001  -0.000000002

   52    4.2  0.5 -0.5  -0.284491068  -0.003197137  -0.000026779   0.075336012   0.000000001  -0.000000005  -0.000050641   0.002592622
                        -0.111521719  -0.001254023  -0.000009388   0.025861643   0.000000000  -0.000000000  -0.000019438   0.000995262

   53    5.2  0.5 -0.5  -0.000457163   0.040670241  -0.313168708  -0.000111873   0.000000078   0.000000010   0.016294500   0.000318260
                        -0.000000109  -0.000000002  -0.000000000  -0.000000030  -0.000000000   0.000000000   0.000000000  -0.000000000

   54    6.2  0.5 -0.5   0.173506843   0.001950842   0.000054575  -0.152275521   0.000189500  -0.001487865  -0.000117501   0.006015929
                        -0.442614642  -0.004974303  -0.000158286   0.443584760  -0.004977861   0.039087789   0.000306090  -0.015671303

   55    7.2  0.5 -0.5  -0.000001664  -0.000000027  -0.000000002  -0.000000451  -0.000000015  -0.000000021  -0.000000002   0.000000003
                        -0.007235999   0.643838653   0.177244033   0.000063493  -0.039116136  -0.004981472   0.009191619   0.000179525

   56    8.2  0.5 -0.5   0.156813106   0.001761962  -0.000218485   0.611226046   0.004977836  -0.039087594   0.000473679  -0.024251873
                         0.061471402   0.000691590  -0.000074764   0.209824078   0.000189499  -0.001487857   0.000181838  -0.009309851


   Nr   State  S   Sz       25            26            27            28            29            30            31            32

    1    1.2  1.5  1.5   0.000000000   0.010222721  -0.000000064  -0.000000015  -0.002341832   0.006304714   0.000196093  -0.029846183
                        -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000

    2    2.2  1.5  1.5  -0.000000095   0.113373136  -0.087661980  -0.020594155   0.043626410  -0.117451581   0.001605917  -0.244411450
                         0.000000036   0.000000050   0.000000028  -0.000000250  -0.000000679   0.000000456   0.000000021   0.000000150

    3    3.2  1.5  1.5  -0.000000113   0.321587195  -0.105067830  -0.024683257   0.085104059  -0.229118278  -0.000823044   0.125289810
                         0.000000043   0.000000060   0.000000034  -0.000000300  -0.000000813   0.000000546   0.000000026   0.000000179

    4    4.2  1.5  1.5  -0.207845726  -0.000000053   0.015988292  -0.068056550  -0.110882522  -0.041185670   0.058030543   0.000381415
                        -0.242733150  -0.000000149  -0.001653646   0.007038132  -0.225377176  -0.083714813  -0.016684591  -0.000109699

    5    5.2  1.5  1.5   0.000000057   0.000000079   0.000000044  -0.000000391  -0.000001059   0.000000712   0.000000034   0.000000234
                         0.000000147  -0.319560339   0.136834470   0.032146095  -0.093295013   0.251170059  -0.000396829   0.060374275

    6    6.2  1.5  1.5  -0.242733332  -0.000000149  -0.001653605   0.007037956  -0.225376244  -0.083714467  -0.016682447  -0.000109685
                         0.207845881   0.000000053  -0.015987893   0.068054850   0.110882063   0.041185500  -0.058023088  -0.000381366

    7    7.2  1.5  1.5  -0.000000000  -0.112074971   0.000000887   0.000000208   0.047834362  -0.128780338  -0.004005386   0.609636740
                         0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000

    8    8.2  1.5  1.5   0.152471240   0.000000039   0.107974163  -0.459608126  -0.086542717  -0.032145010   0.045292328   0.000297691
                         0.178063919   0.000000109  -0.011167611   0.047530805  -0.175904668  -0.065338588  -0.013022176  -0.000085619

    9    9.2  1.5  1.5   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000
                         0.000000000   0.151157835  -0.000000239  -0.000000056  -0.028421338   0.076516324   0.002379800  -0.362215688

   10   10.2  1.5  1.5  -0.178063720  -0.000000109   0.011167574  -0.047530646   0.175903910   0.065338306   0.013020336   0.000085607
                         0.152471069   0.000000039   0.107973801  -0.459606584  -0.086542344  -0.032144872   0.045285929   0.000297649

   11    1.2  1.5  0.5   0.020857956   0.000000013  -0.000000001   0.000000005  -0.025105160  -0.009325140  -0.001858382  -0.000012219
                        -0.017860095  -0.000000005  -0.000000010   0.000000044   0.012351399   0.004587744  -0.006463625  -0.000042483

   12    2.2  1.5  0.5   0.244272343   0.000000114   0.002539433  -0.010808158   0.205587204   0.076363909  -0.034619722  -0.000227394
                        -0.209163669  -0.000000040   0.024552535  -0.104511528  -0.101146235  -0.037569371  -0.120408237  -0.000790983

   13    3.2  1.5  0.5  -0.086116221  -0.000000096  -0.002118678   0.009017367  -0.105383150  -0.039143916  -0.067535471  -0.000443767
                         0.073738983   0.000000034  -0.020484456   0.087195143   0.051846951   0.019257662  -0.234891777  -0.001543362

   14    4.2  1.5  0.5   0.000000000  -0.000000000   0.000000038  -0.000000338  -0.000000000   0.000000000  -0.000000000   0.000000000
                         0.000000000   0.118965694   0.118501553   0.027839200   0.021021340  -0.056593947  -0.001760369   0.267935531

   15    5.2  1.5  0.5  -0.077376987   0.000000000  -0.000000245   0.000001042  -0.024986397  -0.009280984  -0.257505942  -0.001691845
                        -0.090364953   0.000000001   0.000000025  -0.000000108  -0.050786404  -0.018864179   0.074037603   0.000486436

   16    6.2  1.5  0.5  -0.000000000  -0.118966674   0.118500465   0.027838944  -0.021024459   0.056602342   0.001760347  -0.267932310
                         0.000000000  -0.000000000  -0.000000038   0.000000338   0.000000000  -0.000000000  -0.000000000  -0.000000000

   17    7.2  1.5  0.5  -0.228672408  -0.000000140   0.000000031  -0.000000133   0.512797187   0.190475013   0.037959226   0.000249578
                         0.195805898   0.000000050   0.000000302  -0.000001287  -0.252289279  -0.093709116   0.132025684   0.000867761

   18    8.2  1.5  0.5   0.000000048   0.000000067  -0.000000086   0.000000762   0.000000955  -0.000000641  -0.000000030  -0.000000211
                         0.000000125  -0.183416921  -0.266769197  -0.062671255   0.067676215  -0.182198781   0.001731637  -0.263540193

   19    9.2  1.5  0.5   0.088029585   0.000000022  -0.124677758   0.530709469  -0.049964633  -0.018558623   0.026145441   0.000171845
                         0.102805571   0.000000063   0.012895240  -0.054883817  -0.101556925  -0.037722626  -0.007517179  -0.000049425

   20   10.2  1.5  0.5  -0.000000124   0.357959267   0.266767923   0.062670955  -0.100492746   0.270547905   0.001016324  -0.154711048
                         0.000000048   0.000000067  -0.000000086   0.000000762   0.000000955  -0.000000641  -0.000000030  -0.000000211

   21    1.2  1.5 -0.5   0.000000013  -0.027459740   0.000000044   0.000000010   0.010392576  -0.027979030   0.000044205  -0.006725477
                        -0.000000005  -0.000000007   0.000000000   0.000000000  -0.000000118   0.000000079   0.000000004   0.000000026

   22    2.2  1.5 -0.5   0.000000113  -0.321587340  -0.105068910  -0.024683511  -0.085105255   0.229121497   0.000823021  -0.125286343
                        -0.000000043  -0.000000060   0.000000034  -0.000000300   0.000000813  -0.000000546  -0.000000026  -0.000000179

   23    3.2  1.5 -0.5  -0.000000095   0.113373019   0.087660173   0.020593731   0.043624576  -0.117446643   0.001605893  -0.244407830
                         0.000000036   0.000000050  -0.000000028   0.000000250  -0.000000678   0.000000456   0.000000022   0.000000150

   24    4.2  1.5 -0.5  -0.077376479   0.000000000   0.027691480  -0.117872913  -0.024983650  -0.009279963  -0.257503382  -0.001691828
                        -0.090364359   0.000000001  -0.002864090   0.012189938  -0.050780819  -0.018862105   0.074036867   0.000486431

   25    5.2  1.5 -0.5  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000
                        -0.000000000  -0.118966476   0.000001048   0.000000246  -0.021023652   0.056600171   0.001760386  -0.267938195

   26    6.2  1.5 -0.5  -0.090365103   0.000000001   0.002864063  -0.012189826  -0.050788352  -0.018864903   0.074035977   0.000486425
                         0.077377116  -0.000000000   0.027691225  -0.117871831   0.024987355   0.009281339   0.257500286   0.001691807

   27    7.2  1.5 -0.5  -0.000000139   0.301049863  -0.000001294  -0.000000304  -0.212278423   0.571498760  -0.000902935   0.137374258
                         0.000000053   0.000000074   0.000000000  -0.000000000   0.000002410  -0.000001619  -0.000000076  -0.000000532

   28    8.2  1.5 -0.5   0.119296249   0.000000045  -0.062338709   0.265354009  -0.080431912  -0.029875120   0.253279231   0.001664208
                         0.139320390   0.000000127   0.006447602  -0.027441834  -0.163484265  -0.060725179  -0.072822133  -0.000478522

   29    9.2  1.5 -0.5  -0.000000024  -0.000000033   0.000000173  -0.000001524  -0.000000477   0.000000321   0.000000015   0.000000105
                        -0.000000062   0.135344720   0.533539852   0.125342852  -0.042040683   0.113182479  -0.000178811   0.027204636

   30   10.2  1.5 -0.5   0.271899847   0.000000125   0.006447572  -0.027441702  -0.242758483  -0.090170915   0.042750487   0.000280804
                        -0.232820339  -0.000000045   0.062338411  -0.265352742   0.119434025   0.044362122   0.148687274   0.000976760

   31    1.2  1.5 -1.5  -0.007765009   0.000000000   0.000000002  -0.000000007   0.005657117   0.002101288  -0.008247200  -0.000054185
                         0.006648960  -0.000000000   0.000000015  -0.000000064  -0.002783244  -0.001033812  -0.028684113  -0.000188458

   32    2.2  1.5 -1.5  -0.086116309  -0.000000096   0.002118721  -0.009017553  -0.105387582  -0.039145562  -0.067536471  -0.000443774
                         0.073739058   0.000000034   0.020484879  -0.087196940   0.051849132   0.019258472  -0.234895255  -0.001543384

   33    3.2  1.5 -1.5  -0.244272232  -0.000000114   0.002539407  -0.010808047  -0.205584316  -0.076362837   0.034620680   0.000227401
                         0.209163575   0.000000040   0.024552283  -0.104510454   0.101144814   0.037568843   0.120411569   0.000791005

   34    4.2  1.5 -1.5  -0.000000057  -0.000000079   0.000000022  -0.000000195   0.000001059  -0.000000712  -0.000000034  -0.000000234
                        -0.000000147   0.319560993   0.068419509   0.016073582   0.093297531  -0.251176839   0.000396876  -0.060381455

   35    5.2  1.5 -1.5  -0.207845300  -0.000000053  -0.031975521   0.136108575  -0.110879529  -0.041184558   0.058023643   0.000381370
                        -0.242732653  -0.000000149   0.003307182  -0.014075796  -0.225371092  -0.083712553  -0.016682607  -0.000109686

   36    6.2  1.5 -1.5   0.000000147  -0.319561232  -0.068417801  -0.016073180  -0.093297145   0.251175800  -0.000396825   0.060373697
                        -0.000000057  -0.000000079   0.000000022  -0.000000195   0.000001059  -0.000000712  -0.000000034  -0.000000234

   37    7.2  1.5 -1.5   0.085130280  -0.000000001  -0.000000021   0.000000091  -0.115552483  -0.042920990   0.168456919   0.001106782
                        -0.072894683   0.000000000  -0.000000207   0.000000882   0.056850653   0.021116689   0.585900353   0.003849435

   38    8.2  1.5 -1.5   0.000000041   0.000000058   0.000000149  -0.000001320   0.000000827  -0.000000555  -0.000000026  -0.000000182
                         0.000000108  -0.234423204   0.462059311   0.108550152   0.072817805  -0.196041051   0.000309758  -0.047127194

   39    9.2  1.5 -1.5   0.098314569  -0.000000000   0.000000056  -0.000000238  -0.033778472  -0.012546724  -0.348112713  -0.002287142
                         0.114816973  -0.000000001  -0.000000006   0.000000025  -0.068656842  -0.025502002   0.100088684   0.000657594

   40   10.2  1.5 -1.5   0.000000108  -0.234422941   0.462057761   0.108549787   0.072817491  -0.196040206   0.000309715  -0.047120536
                        -0.000000041  -0.000000058  -0.000000149   0.000001320  -0.000000827   0.000000555   0.000000026   0.000000182

   41    1.2  0.5  0.5   0.003787027  -0.000000000  -0.000000015   0.000000065   0.002037590   0.000756845   0.020998441   0.000137962
                         0.004422691  -0.000000000   0.000000002  -0.000000007   0.004141529   0.001538336  -0.006037431  -0.000039667

   42    2.2  0.5  0.5   0.000000002   0.000000003   0.000000000   0.000000000  -0.000000075   0.000000050   0.000000002   0.000000017
                         0.000000006  -0.010633711  -0.000000030  -0.000000007  -0.005731550   0.015430554  -0.000099803   0.015188632

   43    3.2  0.5  0.5  -0.012379317  -0.000000007  -0.000000004   0.000000015  -0.018775930  -0.006974190  -0.000507953  -0.000003344
                         0.010600068   0.000000003  -0.000000035   0.000000148   0.009237506   0.003431136  -0.001766750  -0.000011620

   44    4.2  0.5  0.5   0.000000006  -0.016456049  -0.000000035  -0.000000008  -0.007445901   0.020045954   0.000043752  -0.006660936
                        -0.000000002  -0.000000003  -0.000000000  -0.000000000   0.000000075  -0.000000050  -0.000000002  -0.000000017

   45    5.2  0.5  0.5   0.002728178  -0.000000001  -0.000000003   0.000000012   0.001546195   0.000574317  -0.006167991  -0.000040525
                        -0.002336062   0.000000000  -0.000000028   0.000000121  -0.000760721  -0.000282571  -0.021452544  -0.000140947

   46    6.2  0.5  0.5   0.000000002   0.000000003  -0.000000002   0.000000015  -0.000000027   0.000000018   0.000000001   0.000000006
                         0.000000006  -0.020308970  -0.005342906  -0.001255192  -0.003323631   0.008947925   0.000067959  -0.010344295

   47    7.2  0.5  0.5   0.016061605   0.000000004   0.001248521  -0.005314517   0.005682372   0.002110633  -0.002973611  -0.000019545
                         0.018757585   0.000000011  -0.000129133   0.000549606   0.011549854   0.004290114   0.000854955   0.000005621

   48    8.2  0.5  0.5   0.000000006  -0.004385681  -0.005342727  -0.001255150  -0.001457608   0.003924190  -0.000088297   0.013438600
                        -0.000000002  -0.000000003   0.000000002  -0.000000015   0.000000027  -0.000000018  -0.000000001  -0.000000006

   49    1.2  0.5 -0.5  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000
                        -0.000000000  -0.005822523  -0.000000065  -0.000000015  -0.001714436   0.004615630   0.000143551  -0.021849144

   50    2.2  0.5 -0.5  -0.006916274  -0.000000002   0.000000007  -0.000000030  -0.006811844  -0.002530152   0.014597263   0.000095916
                        -0.008077187  -0.000000006  -0.000000001   0.000000003  -0.013845606  -0.005142859  -0.004196960  -0.000027580

   51    3.2  0.5 -0.5   0.000000007  -0.016297513  -0.000000149  -0.000000035  -0.007772517   0.020925273  -0.000012091   0.001838321
                        -0.000000003  -0.000000004   0.000000000  -0.000000000   0.000000086  -0.000000057  -0.000000003  -0.000000019

   52    4.2  0.5 -0.5   0.012499738   0.000000006   0.000000001  -0.000000004   0.017986928   0.006681118  -0.001840588  -0.000012087
                        -0.010703181  -0.000000002   0.000000008  -0.000000035  -0.008849333  -0.003286960  -0.006401587  -0.000042049

   53    5.2  0.5 -0.5   0.000000001   0.003591677  -0.000000121  -0.000000028   0.000640068  -0.001723200  -0.000146658   0.022321643
                        -0.000000000  -0.000000001   0.000000000  -0.000000000   0.000000012  -0.000000008  -0.000000000  -0.000000003

   54    6.2  0.5 -0.5  -0.013209160  -0.000000002   0.001248532  -0.005314562  -0.003950085  -0.001467208  -0.009941535  -0.000065313
                        -0.015426353  -0.000000006  -0.000129134   0.000549610  -0.008028834  -0.002982252   0.002858377   0.000018778

   55    7.2  0.5 -0.5   0.000000004   0.000000006   0.000000002  -0.000000015  -0.000000054   0.000000036   0.000000002   0.000000012
                         0.000000011  -0.024694577   0.005342861   0.001255182  -0.004781198   0.012872003  -0.000020337   0.003094077

   56    8.2  0.5 -0.5   0.003331288   0.000000006   0.000129130  -0.000549592   0.003521119   0.001307899   0.003713395   0.000024399
                        -0.002852493  -0.000000002   0.001248490  -0.005314384  -0.001732335  -0.000643443   0.012915366   0.000084859


   Nr   State  S   Sz       33            34            35            36            37            38            39            40

    1    1.2  1.5  1.5  -0.000000072  -0.000000187  -0.000000008   0.000000000   0.000000130  -0.000000000   0.026824965   0.001262628
                         0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000

    2    2.2  1.5  1.5  -0.087723684  -0.226866281   0.103678277  -0.006392736  -0.432199494   0.000001195   0.081759238   0.003848332
                        -0.000000705   0.000000280  -0.000000809  -0.000001204  -0.000000172  -0.000001365  -0.000000013  -0.000000007

    3    3.2  1.5  1.5   0.023613195   0.061067209   0.214294408  -0.013213214   0.384844255  -0.000001054  -0.031496732  -0.001482531
                         0.000000219  -0.000000044  -0.000001437  -0.000002565   0.000000188   0.000001198  -0.000000015  -0.000000008

    4    4.2  1.5  1.5  -0.416130579   0.160906911   0.003848795   0.062386642   0.000000106   0.150349912   0.000153059  -0.003251618
                         0.198644418  -0.076812381   0.010504820   0.170381242   0.000000685   0.094012759  -0.001318123   0.028004168

    5    5.2  1.5  1.5  -0.000000284   0.000000146  -0.000001621  -0.000002741   0.000000034   0.000000045  -0.000000020  -0.000000010
                         0.038067227   0.098447395  -0.230964495   0.014241091  -0.018620502   0.000000044  -0.028176955  -0.001326257

    6    6.2  1.5  1.5  -0.071415734   0.027615208   0.029609913   0.480253999  -0.000000500  -0.064401677  -0.001317308   0.027986856
                        -0.149605083   0.057848388  -0.010848673  -0.175849660   0.000000066   0.102994259  -0.000152965   0.003249608

    7    7.2  1.5  1.5   0.000001629   0.000004214   0.000000739  -0.000000046  -0.000001847  -0.000000000   0.672485565   0.031653320
                         0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000

    8    8.2  1.5  1.5  -0.204772089   0.079180048  -0.005109431  -0.082820350   0.000000068   0.102004241   0.000525488  -0.011163570
                         0.097750241  -0.037798322  -0.013945444  -0.226186337   0.000000482   0.063782591  -0.004525428   0.096144913

    9    9.2  1.5  1.5  -0.000000338   0.000000121   0.000000148   0.000000356  -0.000000125  -0.000000900   0.000000000  -0.000000000
                         0.040896643   0.105764713   0.028595751  -0.001763183   0.286786273  -0.000000790   0.493311979   0.023219772

   10   10.2  1.5  1.5   0.134173571  -0.051882605  -0.002461739  -0.039928012   0.000000535   0.072261233   0.004525206  -0.096140196
                         0.281073640  -0.108683887   0.000901965   0.014620087  -0.000000079  -0.115563745   0.000525463  -0.011163023

   11    1.2  1.5  0.5  -0.000000060   0.000000023  -0.000000014  -0.000000224  -0.000000000  -0.000000112  -0.000426216   0.009055156
                        -0.000000126   0.000000049   0.000000005   0.000000082  -0.000000000   0.000000179  -0.000049492   0.001051412

   12    2.2  1.5  0.5  -0.028074912   0.010856049   0.015907926   0.258016321  -0.000001409  -0.181983388  -0.001472709   0.031288050
                        -0.058812583   0.022741299  -0.005828438  -0.094475145   0.000000219   0.291036763  -0.000170990   0.003632878

   13    3.2  1.5  0.5  -0.099851703   0.038610907  -0.001806078  -0.029293478  -0.000001785  -0.233530941  -0.003822584   0.081212216
                        -0.209174418   0.080882335   0.000661721   0.010726078   0.000000283   0.373474221  -0.000443851   0.009429662

   14    4.2  1.5  0.5   0.000000296  -0.000000170   0.000002390   0.000004076  -0.000000092  -0.000000368  -0.000000000  -0.000000000
                        -0.041196525  -0.106540204   0.342977834  -0.021147743   0.123273689  -0.000000329  -0.082926351  -0.003903272

   15    5.2  1.5  0.5   0.454964583  -0.175922985   0.004856987   0.078728122   0.000000160   0.180680938  -0.000450253   0.009565788
                        -0.217182315   0.083980682   0.013256347   0.215009989   0.000000906   0.112978595   0.003877777  -0.082384704

   16    6.2  1.5  0.5  -0.068693156  -0.177650522   0.323752009  -0.019962300  -0.069526850   0.000000202   0.082921066   0.003903024
                        -0.000000523   0.000000251  -0.000002290  -0.000003836   0.000000008  -0.000000237   0.000000000   0.000000000

   17    7.2  1.5  0.5   0.000001327  -0.000000513   0.000000311   0.000005052   0.000000000   0.000002302  -0.010684968   0.227007353
                         0.000002779  -0.000001075  -0.000000114  -0.000001850   0.000000000  -0.000003681  -0.001240728   0.026358260

   18    8.2  1.5  0.5   0.000000082   0.000000004  -0.000001334  -0.000002347   0.000000134   0.000000813   0.000000078   0.000000041
                        -0.007107565  -0.018381228  -0.196536903   0.012118304  -0.262207992   0.000000717   0.396574644   0.018666395

   19    9.2  1.5  0.5   0.132149241  -0.051098697  -0.007287366  -0.118123420  -0.000000020  -0.023482312   0.000303378  -0.006445019
                        -0.063082798   0.024393047  -0.019889872  -0.322600960  -0.000000092  -0.014683288  -0.002612647   0.055506952

   20   10.2  1.5  0.5  -0.063730190  -0.164815588   0.147006440  -0.009064311  -0.234517074   0.000000651   0.173049539   0.008145327
                        -0.000000504   0.000000213  -0.000001077  -0.000001730  -0.000000083  -0.000000746   0.000000078   0.000000041

   21    1.2  1.5 -0.5  -0.000000054  -0.000000140   0.000000238  -0.000000015   0.000000211  -0.000000000   0.009115993   0.000429079
                        -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000006  -0.000000003

   22    2.2  1.5 -0.5  -0.025199613  -0.065169938  -0.274768947   0.016942043   0.343249692  -0.000000933   0.031498252   0.001482602
                        -0.000000191  -0.000000011   0.000001923   0.000003261   0.000000128   0.000001079   0.000000015   0.000000008

   23    3.2  1.5 -0.5  -0.089625634  -0.231785030   0.031195459  -0.001923484   0.440476667  -0.000001187   0.081757829   0.003848266
                        -0.000000672   0.000000214  -0.000000225  -0.000000370   0.000000207   0.000001364  -0.000000013  -0.000000007

   24    4.2  1.5 -0.5   0.096147248  -0.037177664  -0.007275298  -0.117927747  -0.000000084  -0.104522115  -0.000450189   0.009564422
                        -0.045896863   0.017747534  -0.019856916  -0.322066516  -0.000000486  -0.065356942   0.003877224  -0.082372942

   25    5.2  1.5 -0.5  -0.000001547   0.000000482   0.000001458   0.000002763  -0.000000096  -0.000000683  -0.000000000  -0.000000000
                         0.194940123   0.504143760   0.228970329  -0.014118113   0.213095670  -0.000000615   0.082938192   0.003903830

   26    6.2  1.5 -0.5   0.076530779  -0.029593157   0.018743835   0.304012899  -0.000000309  -0.036861625   0.003876977  -0.082367693
                         0.160320767  -0.061991892  -0.006867468  -0.111317205   0.000000045   0.058950856   0.000450160  -0.009563813

   27    7.2  1.5 -0.5   0.000001191   0.000003079  -0.000005380   0.000000332  -0.000004342   0.000000000   0.228532490   0.010756760
                         0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000160  -0.000000083

   28    8.2  1.5 -0.5   0.016588132  -0.006414184   0.004168979   0.067576279   0.000000177   0.222322623   0.002152954  -0.045739547
                        -0.007918550   0.003061980   0.011378617   0.184554059   0.000001070   0.139016843  -0.018541821   0.393928091

   29    9.2  1.5 -0.5  -0.000000422   0.000000217  -0.000002412  -0.000004077   0.000000051   0.000000067  -0.000000039  -0.000000020
                         0.056622413   0.146433810  -0.343546973   0.021182839  -0.027695088   0.000000065  -0.055879872  -0.002630201

   30   10.2  1.5 -0.5   0.071001584  -0.027455119   0.008511045   0.138043493  -0.000000978  -0.124335766   0.008090972  -0.171894705
                         0.148737869  -0.057513074  -0.003118310  -0.050545893   0.000000157   0.198843847   0.000939412  -0.019958824

   31    1.2  1.5 -1.5  -0.000000081   0.000000031   0.000000000   0.000000007  -0.000000000  -0.000000069  -0.001254202   0.026645948
                        -0.000000169   0.000000065  -0.000000000  -0.000000003  -0.000000000   0.000000110  -0.000145627   0.003093893

   32    2.2  1.5 -1.5  -0.097732669   0.037791584  -0.006002543  -0.097357054   0.000001791   0.229142596  -0.003822649   0.081213616
                        -0.204735526   0.079165907   0.002199218   0.035648127  -0.000000289  -0.366456100  -0.000443859   0.009429824

   33    3.2  1.5 -1.5   0.026307425  -0.010172651  -0.012406692  -0.201228884  -0.000001575  -0.204035867   0.001472638  -0.031286541
                         0.055110102  -0.021309627   0.004545659   0.073681949   0.000000259   0.326304253   0.000170982  -0.003632703

   34    4.2  1.5 -1.5  -0.000001372   0.000000495  -0.000001342  -0.000002134   0.000000115   0.000000525   0.000000020   0.000000010
                         0.178300802   0.461111985  -0.181443825   0.011187691  -0.177323136   0.000000453   0.028192313   0.001326980

   35    5.2  1.5 -1.5   0.088843885  -0.034353635  -0.004899251  -0.079413641  -0.000000013  -0.015788086   0.000152976  -0.003249846
                        -0.042410541   0.016399436  -0.013371837  -0.216882621  -0.000000062  -0.009872155  -0.001317405   0.027988913

   36    6.2  1.5 -1.5   0.064101760   0.165776623   0.511436218  -0.031534753  -0.121471780   0.000000321  -0.028174884  -0.001326159
                         0.000000521  -0.000000059  -0.000003522  -0.000006089  -0.000000012  -0.000000389   0.000000020   0.000000010

   37    7.2  1.5 -1.5   0.000001815  -0.000000702  -0.000000043  -0.000000694  -0.000000000   0.000000979  -0.031442080   0.667997732
                         0.000003803  -0.000001471   0.000000016   0.000000254   0.000000000  -0.000001566  -0.003650778   0.077562027

   38    8.2  1.5 -1.5  -0.000000691   0.000000175   0.000001632   0.000002875   0.000000040   0.000000373   0.000000068   0.000000035
                         0.087739348   0.226906850   0.240872309  -0.014851994  -0.120304132   0.000000313   0.096790858   0.004555834

   39    9.2  1.5 -1.5   0.095447384  -0.036907017   0.000606590   0.009832265   0.000000192   0.243162204  -0.002678084   0.056896800
                        -0.045562829   0.017618385   0.001655554   0.026852254   0.000001182   0.152047718   0.023064814  -0.490019861

   40   10.2  1.5 -1.5  -0.120432520  -0.311456158  -0.042520501   0.002621776   0.136296239  -0.000000351   0.096786109   0.004555610
                        -0.000000935   0.000000300   0.000000240   0.000000521   0.000000069   0.000000412  -0.000000068  -0.000000035

   41    1.2  0.5  0.5   0.015221733  -0.005885849   0.000210734   0.003415856  -0.000000013  -0.017963684   0.000078403  -0.001665693
                        -0.007266263   0.002809737   0.000575168   0.009328865  -0.000000086  -0.011232573  -0.000675238   0.014345669

   42    2.2  0.5  0.5  -0.000000045   0.000000019  -0.000000097  -0.000000156  -0.000000007  -0.000000067  -0.000000003  -0.000000002
                         0.005738570   0.014840782  -0.013237300   0.000816202   0.021116399  -0.000000059  -0.011471436  -0.000539949

   43    3.2  0.5  0.5   0.003367324  -0.001302088   0.001633821   0.026499533   0.000000008   0.001220498  -0.000133364   0.002833400
                         0.007054057  -0.002727622  -0.000598609  -0.009703058  -0.000000002  -0.001951886  -0.000015487   0.000328993

   44    4.2  0.5  0.5  -0.000639929  -0.001654953  -0.017697357   0.001091205  -0.023610453   0.000000065   0.002970705   0.000139830
                        -0.000000007  -0.000000000   0.000000120   0.000000211  -0.000000012  -0.000000073   0.000000003   0.000000002

   45    5.2  0.5  0.5   0.011397841  -0.004407349  -0.000481803  -0.007814552  -0.000000005  -0.000458765  -0.000700561   0.014883669
                         0.023876779  -0.009232530   0.000176528   0.002861380   0.000000002   0.000733679  -0.000081343   0.001728161

   46    6.2  0.5  0.5  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000003   0.000000002
                         0.000000020   0.000000052   0.000000039  -0.000000002   0.000000046   0.000000000  -0.018179182  -0.000855680

   47    7.2  0.5  0.5   0.000000015  -0.000000006  -0.000000001  -0.000000008  -0.000000000   0.000000062   0.000048183  -0.001023602
                        -0.000000007   0.000000003  -0.000000001  -0.000000022   0.000000000   0.000000039  -0.000414942   0.008815651

   48    8.2  0.5  0.5   0.000000048   0.000000124  -0.000000138   0.000000008  -0.000000296   0.000000000   0.027053996   0.001273407
                         0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000003  -0.000000002

   49    1.2  0.5 -0.5   0.000000050  -0.000000014  -0.000000067  -0.000000119  -0.000000009  -0.000000066  -0.000000000  -0.000000000
                        -0.006522104  -0.016867120  -0.009934576   0.000612558   0.021186426  -0.000000057   0.014442048   0.000679775

   50    2.2  0.5 -0.5   0.013393067  -0.005178752  -0.000280790  -0.004551441   0.000000014   0.017904308   0.000062277  -0.001323076
                        -0.006393321   0.002472190  -0.000766383  -0.012430225   0.000000088   0.011195448  -0.000536346   0.011394881

   51    3.2  0.5 -0.5  -0.003022475  -0.007816559   0.028220110  -0.001740030   0.002302059  -0.000000006  -0.002852436  -0.000134260
                        -0.000000022   0.000000013  -0.000000197  -0.000000335   0.000000004   0.000000006   0.000000003   0.000000002

   52    4.2  0.5 -0.5  -0.000712946   0.000275685   0.001024599   0.016618350   0.000000096   0.012517737  -0.000138897   0.002950880
                        -0.001493511   0.000577501  -0.000375400  -0.006084972  -0.000000016  -0.020018985  -0.000016126   0.000342627

   53    5.2  0.5 -0.5  -0.010230559  -0.026457727  -0.008321941   0.000513124  -0.000865303   0.000000004  -0.014983663  -0.000705268
                        -0.000000080   0.000000025   0.000000052   0.000000101  -0.000000000  -0.000000004   0.000000000   0.000000000

   54    6.2  0.5 -0.5   0.000000047  -0.000000018   0.000000001   0.000000014   0.000000000   0.000000039   0.000098689  -0.002096717
                        -0.000000023   0.000000009   0.000000002   0.000000037  -0.000000000   0.000000025  -0.000849970   0.018057863

   55    7.2  0.5 -0.5   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000   0.000000006   0.000000003
                        -0.000000006  -0.000000016   0.000000024  -0.000000001  -0.000000074   0.000000000   0.008874879   0.000417730

   56    8.2  0.5 -0.5   0.000000053  -0.000000021   0.000000008   0.000000129   0.000000000   0.000000157  -0.001264909   0.026873451
                         0.000000112  -0.000000043  -0.000000003  -0.000000047  -0.000000000  -0.000000251  -0.000146872   0.003120312


   Nr   State  S   Sz       41            42            43            44            45            46            47            48

    1    1.2  1.5  1.5  -0.007685989  -0.004920469  -0.000000137  -0.000000001   0.000000000   0.000000378   0.000000046   0.000001003
                         0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000

    2    2.2  1.5  1.5   0.026556635   0.017001186   0.402571729   0.002358168   0.000086423   0.146554366  -0.018147267  -0.394964060
                        -0.000000024  -0.000000033  -0.000000002   0.000000123   0.000000071   0.000000032  -0.000000068  -0.000000003

    3    3.2  1.5  1.5   0.068932664   0.044129755   0.402560416   0.002358116   0.000255570   0.433709260   0.009030551   0.196543727
                        -0.000000029  -0.000000040  -0.000000004   0.000000135   0.000000071   0.000000036  -0.000000060  -0.000000017

    4    4.2  1.5  1.5  -0.001341311   0.002095232   0.000794217  -0.135590487   0.223031546  -0.000131421  -0.067041618   0.003080376
                        -0.044742930   0.069890480  -0.000881935   0.150550325   0.115728160  -0.000068136   0.150297171  -0.006905662

    5    5.2  1.5  1.5  -0.000000037  -0.000000052   0.000000007  -0.000000120  -0.000000141  -0.000000071   0.000000116   0.000000021
                        -0.069911741  -0.044756540   0.393559607   0.002305382   0.000336849   0.571543916  -0.008284614  -0.180310382

    6    6.2  1.5  1.5  -0.044746034   0.069895329  -0.000628064   0.107211282   0.017515070  -0.000010322  -0.293140235   0.013468808
                         0.001341404  -0.002095377  -0.000565570   0.096557951  -0.033755111   0.000019963  -0.130758229   0.006007881

    7    7.2  1.5  1.5  -0.192683121  -0.123353187  -0.000004066  -0.000000024   0.000000005   0.000008300   0.000001090   0.000023724
                         0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000

    8    8.2  1.5  1.5  -0.004606497   0.007195707   0.000000006  -0.000001087   0.000023195  -0.000000014  -0.000005485   0.000000252
                        -0.153661755   0.240026611  -0.000000007   0.000001207   0.000012036  -0.000000007   0.000012296  -0.000000565

    9    9.2  1.5  1.5   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000
                        -0.141345879  -0.090487763  -0.000001466  -0.000000009   0.000000002   0.000003865   0.000000419   0.000009109

   10   10.2  1.5  1.5   0.153662122  -0.240027184  -0.000000014   0.000002413  -0.000004286   0.000000003   0.000025121  -0.000001154
                        -0.004606508   0.007195725  -0.000000013   0.000002173   0.000008261  -0.000000005   0.000011205  -0.000000515

   11    1.2  1.5  0.5  -0.014472591   0.022606841   0.000000000  -0.000000047   0.000000456  -0.000000000  -0.000000352   0.000000016
                         0.000433862  -0.000677726   0.000000000  -0.000000042  -0.000000879   0.000000001  -0.000000157   0.000000007

   12    2.2  1.5  0.5   0.044109548  -0.068901098  -0.001881015   0.321096728   0.205089318  -0.000120766   0.084051043  -0.003861886
                        -0.001322334   0.002065580  -0.001693907   0.289190094  -0.395248565   0.000232949   0.037491860  -0.001722697

   13    3.2  1.5  0.5  -0.016993801   0.026545099   0.001281033  -0.218674552  -0.066142558   0.000038946   0.435181742  -0.019995138
                         0.000509429  -0.000795780   0.001153582  -0.196945375   0.127470135  -0.000075224   0.194117309  -0.008918984

   14    4.2  1.5  0.5  -0.000000000  -0.000000000  -0.000000005  -0.000000116   0.000000061   0.000000038  -0.000000030  -0.000000019
                         0.023752607   0.015206105   0.351638678   0.002059817  -0.000245015  -0.415829919  -0.013496427  -0.293740324

   15    5.2  1.5  0.5  -0.000455882   0.000712109  -0.000001370   0.000235223   0.008597187  -0.000005058   0.001759413  -0.000080827
                        -0.015206564   0.023753323   0.000001529  -0.000261172   0.004460962  -0.000002609  -0.003944331   0.000181233

   16    6.2  1.5  0.5  -0.023766853  -0.015215225   0.249198346   0.001459765  -0.000050282  -0.085194908   0.025942784   0.564628921
                         0.000000000   0.000000000   0.000000003   0.000000100  -0.000000080  -0.000000042   0.000000058   0.000000002

   17    7.2  1.5  0.5  -0.362819097   0.566739839   0.000000008  -0.000001388   0.000010742  -0.000000006  -0.000008568   0.000000394
                         0.010876649  -0.016990175   0.000000007  -0.000001250  -0.000020703   0.000000012  -0.000003822   0.000000176

   18    8.2  1.5  0.5   0.000000148   0.000000206   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000
                         0.195679931   0.125271577  -0.000003785  -0.000000022   0.000000004   0.000006748   0.000000843   0.000018337

   19    9.2  1.5  0.5  -0.002659536   0.004154402  -0.000000008   0.000001376   0.000027967  -0.000000016   0.000004958  -0.000000228
                        -0.088715775   0.138578054   0.000000009  -0.000001528   0.000014512  -0.000000009  -0.000011115   0.000000511

   20   10.2  1.5  0.5  -0.358890437  -0.229756785  -0.000002583  -0.000000015   0.000000003   0.000005103   0.000000857   0.000018645
                         0.000000148   0.000000206   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000

   21    1.2  1.5 -0.5   0.022616998   0.014479093  -0.000000063  -0.000000000  -0.000000001  -0.000000990   0.000000018   0.000000385
                        -0.000000012  -0.000000017   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000

   22    2.2  1.5 -0.5  -0.068932053  -0.044129364   0.432127318   0.002531312  -0.000262392  -0.445289857  -0.004228695  -0.092033782
                         0.000000029   0.000000040   0.000000007   0.000000145  -0.000000097  -0.000000056   0.000000058   0.000000017

   23    3.2  1.5 -0.5   0.026557023   0.017001435  -0.294289044  -0.001723890   0.000084707   0.143608746  -0.021894149  -0.476513040
                        -0.000000024  -0.000000033  -0.000000002  -0.000000117   0.000000075   0.000000041  -0.000000050  -0.000000008

   24    4.2  1.5 -0.5  -0.000455664   0.000711767   0.001378394  -0.235325143   0.369099301  -0.000217508  -0.119661139   0.005498071
                        -0.015199276   0.023741939  -0.001530646   0.261288801   0.191520824  -0.000112794   0.268262168  -0.012325774

   25    5.2  1.5 -0.5  -0.000000000   0.000000000   0.000000002  -0.000000005  -0.000000013  -0.000000006   0.000000013  -0.000000004
                        -0.023763996  -0.015213396   0.000351484   0.000002053   0.000005691   0.009685650  -0.000198440  -0.004318944

   26    6.2  1.5 -0.5  -0.015208392   0.023756179   0.001084760  -0.185169437  -0.039238605   0.000023086   0.515654714  -0.023692609
                         0.000455937  -0.000712194   0.000976836  -0.166769583   0.075620798  -0.000044670   0.230013117  -0.010568270

   27    7.2  1.5 -0.5   0.566994452   0.362982091  -0.000001868  -0.000000011  -0.000000014  -0.000023324   0.000000431   0.000009382
                        -0.000000302  -0.000000422   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000

   28    8.2  1.5 -0.5  -0.003753665   0.005863570  -0.000000015   0.000002533  -0.000005989   0.000000004   0.000007470  -0.000000343
                        -0.125215326   0.195592064   0.000000016  -0.000002813  -0.000003108   0.000000002  -0.000016747   0.000000769

   29    9.2  1.5 -0.5  -0.000000074  -0.000000103   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000
                        -0.138640311  -0.088755630   0.000002056   0.000000012   0.000000019   0.000031508  -0.000000559  -0.000012170

   30   10.2  1.5 -0.5  -0.229653613   0.358729270  -0.000000011   0.000001919   0.000002350  -0.000000001   0.000017028  -0.000000782
                         0.006884653  -0.010754313  -0.000000010   0.000001728  -0.000004529   0.000000003   0.000007595  -0.000000349

   31    1.2  1.5 -1.5   0.004918259  -0.007682537   0.000000001  -0.000000101  -0.000000174   0.000000000  -0.000000916   0.000000042
                        -0.000147446   0.000230317   0.000000001  -0.000000091   0.000000336  -0.000000000  -0.000000409   0.000000019

   32    2.2  1.5 -1.5  -0.016993552   0.026544711  -0.001752344   0.299135134  -0.067499244   0.000039740   0.360706069  -0.016573256
                         0.000509422  -0.000795769  -0.001578052   0.269410784   0.130084723  -0.000076746   0.160896669  -0.007392598

   33    3.2  1.5 -1.5  -0.044109939   0.068901708  -0.001752314   0.299126725  -0.199755602   0.000117647  -0.179496114   0.008247242
                         0.001322346  -0.002065598  -0.001578008   0.269403212   0.384969376  -0.000226881  -0.080066121   0.003678833

   34    4.2  1.5 -1.5   0.000000037   0.000000052  -0.000000005  -0.000000061   0.000000051   0.000000030  -0.000000032  -0.000000007
                         0.069921879   0.044763030   0.202608441   0.001186840  -0.000148034  -0.251268936  -0.007561541  -0.164571618

   35    5.2  1.5 -1.5  -0.001341116   0.002094928  -0.001542728   0.263379656   0.507314303  -0.000299060   0.073453089  -0.003374803
                        -0.044736443   0.069880347   0.001713119  -0.292438579   0.263238763  -0.000155019  -0.164670808   0.007566081

   36    6.2  1.5 -1.5  -0.069926730  -0.044766136  -0.144283392  -0.000845183   0.000022474   0.038028738  -0.014747997  -0.320981169
                         0.000000037   0.000000052   0.000000000  -0.000000063   0.000000031   0.000000017  -0.000000019  -0.000000005

   37    7.2  1.5 -1.5   0.123297791  -0.192596584   0.000000018  -0.000003021  -0.000003823   0.000000002  -0.000021666   0.000000995
                        -0.003696384   0.005773915   0.000000016  -0.000002721   0.000007368  -0.000000004  -0.000009664   0.000000444

   38    8.2  1.5 -1.5   0.000000128   0.000000179  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000
                         0.240134445   0.153730787   0.000001625   0.000000010  -0.000000015  -0.000026132  -0.000000619  -0.000013464

   39    9.2  1.5 -1.5  -0.002711543   0.004235550   0.000000006  -0.000000981   0.000003430  -0.000000002  -0.000003711   0.000000170
                        -0.090447127   0.141282399  -0.000000006   0.000001090   0.000001780  -0.000000001   0.000008319  -0.000000382

   40   10.2  1.5 -1.5   0.240135018   0.153731154  -0.000003247  -0.000000019  -0.000000005  -0.000009307   0.000001264   0.000027506
                        -0.000000128  -0.000000179   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000

   41    1.2  0.5  0.5   0.000079381  -0.000123997  -0.000000000   0.000000043   0.000000087  -0.000000000  -0.000000013   0.000000001
                         0.002647868  -0.004136086   0.000000000  -0.000000047   0.000000045  -0.000000000   0.000000030  -0.000000001

   42    2.2  0.5  0.5  -0.000000006  -0.000000008  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000
                        -0.008476151  -0.005426315   0.000000137   0.000000001  -0.000000000  -0.000000050   0.000000012   0.000000257

   43    3.2  0.5  0.5  -0.008083999   0.012627571   0.000000000  -0.000000062   0.000001000  -0.000000001  -0.000000474   0.000000022
                         0.000242344  -0.000378560   0.000000000  -0.000000056  -0.000001927   0.000000001  -0.000000211   0.000000010

   44    4.2  0.5  0.5  -0.012614229  -0.008075458   0.000000050   0.000000000  -0.000000000  -0.000000224  -0.000000004  -0.000000085
                         0.000000006   0.000000008  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000

   45    5.2  0.5  0.5   0.001538951  -0.002403908   0.000000001  -0.000000242  -0.000000215   0.000000000  -0.000001977   0.000000091
                        -0.000046138   0.000072068   0.000000001  -0.000000218   0.000000414  -0.000000000  -0.000000882   0.000000041

   46    6.2  0.5  0.5   0.000000006   0.000000008  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000
                         0.017489561   0.011196580   0.000000312   0.000000002  -0.000000000  -0.000000630  -0.000000024  -0.000000531

   47    7.2  0.5  0.5  -0.000422385   0.000659799  -0.000000001   0.000000206   0.000000706  -0.000000000   0.000000121  -0.000000006
                        -0.014089772   0.022008861   0.000000001  -0.000000228   0.000000366  -0.000000000  -0.000000271   0.000000012

   48    8.2  0.5  0.5   0.004529149   0.002899496  -0.000000220  -0.000000001  -0.000000000  -0.000000297   0.000000048   0.000001038
                        -0.000000006  -0.000000008  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000

   49    1.2  0.5 -0.5   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000
                        -0.004137945  -0.002649058  -0.000000064  -0.000000000  -0.000000000  -0.000000098  -0.000000001  -0.000000033

   50    2.2  0.5 -0.5  -0.000162596   0.000253990  -0.000000001   0.000000092  -0.000000044   0.000000000  -0.000000105   0.000000005
                        -0.005423878   0.008472345   0.000000001  -0.000000102  -0.000000023   0.000000000   0.000000235  -0.000000011

   51    3.2  0.5 -0.5  -0.012633244  -0.008087630   0.000000083   0.000000000   0.000000001   0.000002171  -0.000000024  -0.000000519
                         0.000000006   0.000000009  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000

   52    4.2  0.5 -0.5   0.008071832  -0.012608565  -0.000000000   0.000000037   0.000000103  -0.000000000   0.000000078  -0.000000004
                        -0.000241980   0.000377991  -0.000000000   0.000000034  -0.000000199   0.000000000   0.000000035  -0.000000002

   53    5.2  0.5 -0.5   0.002404988   0.001539643   0.000000326   0.000000002  -0.000000000  -0.000000467  -0.000000099  -0.000002165
                         0.000000001   0.000000001  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000

   54    6.2  0.5 -0.5   0.000335507  -0.000524084  -0.000000001   0.000000209  -0.000000559   0.000000000   0.000000216  -0.000000010
                         0.011191553  -0.017481706   0.000000001  -0.000000232  -0.000000290   0.000000000  -0.000000485   0.000000022

   55    7.2  0.5 -0.5   0.000000012   0.000000016   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000
                         0.022018749   0.014096102  -0.000000307  -0.000000002  -0.000000000  -0.000000795   0.000000014   0.000000296

   56    8.2  0.5 -0.5  -0.002898195   0.004527116   0.000000001  -0.000000163   0.000000137  -0.000000000  -0.000000948   0.000000044
                         0.000086878  -0.000135714   0.000000001  -0.000000147  -0.000000264   0.000000000  -0.000000423   0.000000019


   Nr   State  S   Sz       49            50            51            52            53            54            55            56

    1    1.2  1.5  1.5  -0.000000003  -0.000000001  -0.000000000  -0.000000017   0.000000148   0.000000002   0.000000023  -0.000000002
                        -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000

    2    2.2  1.5  1.5   0.189197403   0.062130339  -0.000000091   0.242192940  -0.133697243  -0.001781556   0.062183066  -0.004990396
                        -0.000001019   0.000002659  -0.000000146  -0.000000434   0.000000009  -0.000000019   0.000000042  -0.000000007

    3    3.2  1.5  1.5  -0.168910776  -0.055468451   0.000000074  -0.198532665   0.075951490   0.001012073   0.129931860  -0.010427472
                         0.000000906  -0.000002355   0.000000117   0.000000353  -0.000000022   0.000000011   0.000000062  -0.000000007

    4    4.2  1.5  1.5  -0.141470207   0.430804270  -0.011613302  -0.000000065  -0.000428212   0.032136935  -0.007963817  -0.099233457
                         0.024007380  -0.073085755  -0.095518918  -0.000000027   0.003166602  -0.237637638   0.011342007   0.141327530

    5    5.2  1.5  1.5  -0.000000059   0.000000143  -0.000000004  -0.000000007  -0.000000011  -0.000000004   0.000000075  -0.000000010
                        -0.011475556  -0.003768457   0.000000002  -0.002716421   0.027340745   0.000364327  -0.139646368   0.011207090

    6    6.2  1.5  1.5  -0.024335268   0.074083975   0.103604515   0.000000031  -0.002083706   0.156372298   0.016168357   0.201466307
                        -0.143402435   0.436688284  -0.012596352  -0.000000076  -0.000281778   0.021147049   0.011352640   0.141460105

    7    7.2  1.5  1.5   0.000000192   0.000000063   0.000000000  -0.000000441   0.000002974   0.000000040   0.000000188  -0.000000015
                        -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000

    8    8.2  1.5  1.5  -0.000003722   0.000011334   0.033488277   0.000000197   0.000902533  -0.067734072  -0.013415867  -0.167169089
                         0.000000632  -0.000001923   0.275439754   0.000000081  -0.006674133   0.500861377   0.019106799   0.238080770

    9    9.2  1.5  1.5   0.000000000  -0.000000000   0.000000296   0.000000882  -0.000000033   0.000000034   0.000000012   0.000000002
                         0.000025253   0.000008293  -0.000000186   0.493643845  -0.238546248  -0.003178697  -0.055950969   0.004490262

   10   10.2  1.5  1.5   0.000000670  -0.000002040   0.268081453   0.000000078  -0.007659681   0.574821296  -0.005930407  -0.073896193
                         0.000003949  -0.000012024  -0.032593652  -0.000000187  -0.001035803   0.077736012  -0.004164057  -0.051886328

   11    1.2  1.5  0.5  -0.000000001   0.000000004  -0.000000016   0.000000000   0.000000000  -0.000000035   0.000000008   0.000000102
                        -0.000000008   0.000000023   0.000000002   0.000000000   0.000000000  -0.000000005   0.000000006   0.000000072

   12    2.2  1.5  0.5   0.008572640  -0.026097679   0.208465042   0.000000063  -0.000811061   0.060866300   0.007829709   0.097562331
                         0.050516598  -0.153832866  -0.025345414  -0.000000141  -0.000109683   0.008231271   0.005497641   0.068503652

   13    3.2  1.5  0.5   0.011042642  -0.033617177   0.245654391   0.000000073  -0.001535508   0.115232162  -0.004928116  -0.061406995
                         0.065071892  -0.198156581  -0.029866939  -0.000000162  -0.000207647   0.015583425  -0.003460292  -0.043117061

   14    4.2  1.5  0.5   0.000001391  -0.000003615  -0.000000026  -0.000000083   0.000000020   0.000000002  -0.000000109   0.000000014
                         0.258634677   0.084932781   0.000000017  -0.048288965  -0.014216883  -0.000189449   0.207458411  -0.016649235

   15    5.2  1.5  0.5  -0.164384489   0.500582690  -0.011227156  -0.000000052   0.000590053  -0.044283268  -0.003047788  -0.037977092
                         0.027895901  -0.084923633  -0.092342936  -0.000000029  -0.004363425   0.327453864   0.004340641   0.054086613

   16    6.2  1.5  0.5  -0.248298431  -0.081538478  -0.000000022   0.056127156  -0.064698738  -0.000862134   0.195618858  -0.015699070
                         0.000001335  -0.000003485  -0.000000037  -0.000000103  -0.000000013  -0.000000009   0.000000106  -0.000000015

   17    7.2  1.5  0.5  -0.000000039   0.000000118  -0.000000558  -0.000000000   0.000000010  -0.000000730   0.000000139   0.000001728
                        -0.000000229   0.000000698   0.000000068   0.000000000   0.000000001  -0.000000099   0.000000097   0.000001213

   18    8.2  1.5  0.5  -0.000000000   0.000000000  -0.000000247  -0.000000747   0.000000055  -0.000000020  -0.000000187   0.000000022
                        -0.000021426  -0.000007036   0.000000157  -0.421088441   0.141957320   0.001891614   0.378582791  -0.030382549

   19    9.2  1.5  0.5   0.000000119  -0.000000364   0.001549610   0.000000018  -0.000230828   0.017323726  -0.030449183  -0.379413383
                        -0.000000020   0.000000062   0.012745561   0.000000005   0.001707004  -0.128101272   0.043365515   0.540357488

   20   10.2  1.5  0.5  -0.000021968  -0.000007214   0.000000164  -0.433928423   0.271223726   0.003614142  -0.281672258   0.022605138
                         0.000000000  -0.000000000   0.000000265   0.000000780  -0.000000002   0.000000038  -0.000000166   0.000000025

   21    1.2  1.5 -0.5   0.000000023   0.000000008  -0.000000000   0.000000016   0.000000035   0.000000000  -0.000000124   0.000000010
                        -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000

   22    2.2  1.5 -0.5  -0.156030892  -0.051238822   0.000000079  -0.210000152  -0.061420357  -0.000818444  -0.119210565   0.009567048
                         0.000000838  -0.000002210   0.000000132   0.000000376   0.000000016  -0.000000001  -0.000000052   0.000000012

   23    3.2  1.5 -0.5  -0.200987924  -0.066002205   0.000000092  -0.247463359  -0.116281100  -0.001549485   0.075032659  -0.006021624
                         0.000001079  -0.000002824   0.000000152   0.000000439   0.000000001  -0.000000007   0.000000054  -0.000000001

   24    4.2  1.5 -0.5   0.083735641  -0.254991258   0.005828112   0.000000028   0.000025387  -0.001905258   0.009567380   0.119214745
                        -0.014209844   0.043259154   0.047935970   0.000000014  -0.000187740   0.014088640  -0.013625795  -0.169784678

   25    5.2  1.5 -0.5   0.000002729  -0.000007135  -0.000000048  -0.000000168   0.000000039  -0.000000035  -0.000000002   0.000000006
                         0.507735220   0.166734644   0.000000035  -0.093022937   0.330434625   0.004403140   0.066087979  -0.005303789

   26    6.2  1.5 -0.5  -0.013641969   0.041530317   0.055716865   0.000000017   0.000854358  -0.064115111   0.012848176   0.160095149
                        -0.080389179   0.244800621  -0.006774116  -0.000000039   0.000115530  -0.008670596   0.009021372   0.112411213

   27    7.2  1.5 -0.5   0.000000708   0.000000232  -0.000000000   0.000000562   0.000000737   0.000000010  -0.000002112   0.000000169
                        -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000

   28    8.2  1.5 -0.5  -0.000006937   0.000021124   0.050822162   0.000000264  -0.000253485   0.019024478   0.017459146   0.217550365
                         0.000001177  -0.000003584   0.418010267   0.000000126   0.001874553  -0.140676755  -0.024865186  -0.309833454

   29    9.2  1.5 -0.5  -0.000000000   0.000000000   0.000000018   0.000000033   0.000000053   0.000000018  -0.000000353   0.000000047
                        -0.000000369  -0.000000121  -0.000000007   0.012839416  -0.129267347  -0.001722540   0.660258079  -0.052987929

   30   10.2  1.5 -0.5  -0.000001207   0.000003674  -0.430756389  -0.000000131  -0.003581545   0.268777095  -0.018500130  -0.230521555
                        -0.000007112   0.000021659   0.052371841   0.000000283  -0.000484311   0.036348078  -0.012989897  -0.161861277

   31    1.2  1.5 -1.5   0.000000000  -0.000000001   0.000000016  -0.000000000   0.000000002  -0.000000146  -0.000000002  -0.000000019
                         0.000000001  -0.000000003  -0.000000002   0.000000000   0.000000000  -0.000000020  -0.000000001  -0.000000013

   32    2.2  1.5 -1.5  -0.010394851   0.031645095  -0.240422500  -0.000000073  -0.001765488   0.132491198  -0.004084160  -0.050890840
                        -0.061254601   0.186532156   0.029230836   0.000000156  -0.000238737   0.017917459  -0.002867697  -0.035733122

   33    3.2  1.5 -1.5   0.009280252  -0.028251966   0.197081383   0.000000059   0.001002944  -0.075266350  -0.008533880  -0.106336678
                         0.054686616  -0.166531309  -0.023961377  -0.000000125   0.000135622  -0.010178668  -0.005992084  -0.074664578

   34    4.2  1.5 -1.5  -0.000002348   0.000006151   0.000000061   0.000000167   0.000000005  -0.000000024   0.000000114  -0.000000009
                        -0.436959777  -0.143492766  -0.000000035   0.096222308   0.239800812   0.003195423  -0.172686855   0.013858698

   35    5.2  1.5 -1.5   0.003715343  -0.011313898  -0.000327849  -0.000000004   0.000048821  -0.003664062   0.006440085   0.080246956
                        -0.000630472   0.001919401  -0.002696564  -0.000000001  -0.000361041   0.027094114  -0.009171924  -0.114287069

   36    6.2  1.5 -1.5  -0.442927864  -0.145452616  -0.000000040   0.104367445   0.157795734   0.002102672   0.246169929  -0.019755966
                         0.000002380  -0.000006226  -0.000000072  -0.000000188  -0.000000038   0.000000012   0.000000110  -0.000000021

   37    7.2  1.5 -1.5  -0.000000011   0.000000032   0.000000438   0.000000000   0.000000039  -0.000002947  -0.000000012  -0.000000154
                        -0.000000062   0.000000189  -0.000000053   0.000000000   0.000000005  -0.000000399  -0.000000009  -0.000000108

   38    8.2  1.5 -1.5  -0.000000000   0.000000000  -0.000000186  -0.000000494  -0.000000074   0.000000043   0.000000096  -0.000000029
                        -0.000011496  -0.000003775   0.000000104  -0.277468058  -0.505420640  -0.006734881  -0.290908845   0.023346418

   39    9.2  1.5 -1.5  -0.000008176   0.000024897   0.059579040   0.000000316  -0.000425960   0.031968832   0.002580306   0.032151907
                         0.000001387  -0.000004224   0.490035288   0.000000149   0.003150027  -0.236394386  -0.003674844  -0.045790457

   40   10.2  1.5 -1.5   0.000012196   0.000004005  -0.000000100   0.270055572   0.580053798   0.007729398  -0.090293071   0.007246316
                        -0.000000000   0.000000000  -0.000000176  -0.000000475  -0.000000044   0.000000054  -0.000000108  -0.000000002

   41    1.2  0.5  0.5  -0.000000402   0.000001224   0.003894906   0.000000022   0.000046877  -0.003518015  -0.000206787  -0.002576684
                         0.000000068  -0.000000208   0.032035448   0.000000010  -0.000346646   0.026014063   0.000294505   0.003669688

   42    2.2  0.5  0.5  -0.000000000   0.000000000  -0.000000019  -0.000000056   0.000000000  -0.000000003   0.000000012  -0.000000002
                        -0.000001357  -0.000000445   0.000000012  -0.031060920   0.019414421   0.000258703  -0.020162470   0.001618105

   43    3.2  0.5  0.5  -0.000000002   0.000000005   0.001012881   0.000000000   0.000029454  -0.002210343   0.002734732   0.034076217
                        -0.000000010   0.000000032  -0.000123147  -0.000000001   0.000003983  -0.000298912   0.001920197   0.023926703

   44    4.2  0.5  0.5   0.000001363   0.000000448  -0.000000011   0.030141880  -0.010161334  -0.000135402  -0.027099459   0.002174823
                        -0.000000000   0.000000000  -0.000000018  -0.000000053   0.000000004  -0.000000001  -0.000000013   0.000000002

   45    5.2  0.5  0.5   0.000000001  -0.000000004  -0.001531854  -0.000000000   0.000551362  -0.041377000  -0.000143520  -0.001788319
                         0.000000007  -0.000000022   0.000186245   0.000000002   0.000074559  -0.005595624  -0.000100772  -0.001255678

   46    6.2  0.5  0.5  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000
                        -0.000000002  -0.000000001   0.000000000  -0.000000010   0.000000036   0.000000000   0.000000036  -0.000000003

   47    7.2  0.5  0.5   0.000000009  -0.000000027   0.000000000  -0.000000000   0.000000000  -0.000000002   0.000000003   0.000000033
                        -0.000000001   0.000000005   0.000000000   0.000000000  -0.000000000   0.000000013  -0.000000004  -0.000000047

   48    8.2  0.5  0.5   0.000000086   0.000000028  -0.000000000   0.000000077   0.000000027   0.000000000  -0.000000051   0.000000004
                        -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000

   49    1.2  0.5 -0.5  -0.000000000   0.000000000  -0.000000020  -0.000000057  -0.000000003   0.000000002  -0.000000001  -0.000000001
                        -0.000001242  -0.000000408   0.000000012  -0.032271353  -0.026250864  -0.000349801  -0.004483961   0.000359853

   50    2.2  0.5 -0.5   0.000000439  -0.000001337  -0.003748815  -0.000000020   0.000034667  -0.002601826   0.000929834   0.011586243
                        -0.000000075   0.000000227  -0.030833864  -0.000000009  -0.000256370   0.019239289  -0.001324264  -0.016501036

   51    3.2  0.5 -0.5  -0.000000032  -0.000000011  -0.000000001   0.001020340  -0.002230462  -0.000029722   0.041637432  -0.003341544
                         0.000000000  -0.000000000  -0.000000001  -0.000000002  -0.000000004  -0.000000001   0.000000022  -0.000000003

   52    4.2  0.5 -0.5  -0.000000075   0.000000228  -0.029921542  -0.000000009  -0.000134181   0.010069671   0.001779883   0.022178290
                        -0.000000441   0.000001344   0.003637895   0.000000019  -0.000018145   0.001361776   0.001249749   0.015572544

   53    5.2  0.5 -0.5   0.000000022   0.000000007   0.000000000  -0.001543134  -0.041753648  -0.000556380  -0.002185134   0.000175365
                        -0.000000000   0.000000000   0.000000002   0.000000002   0.000000004  -0.000000004   0.000000003   0.000000001

   54    6.2  0.5 -0.5   0.000000001  -0.000000002  -0.000000001   0.000000000   0.000000000  -0.000000005  -0.000000002  -0.000000020
                        -0.000000000   0.000000000  -0.000000010  -0.000000000  -0.000000000   0.000000036   0.000000002   0.000000029

   55    7.2  0.5 -0.5   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000
                         0.000000027   0.000000009   0.000000000  -0.000000000  -0.000000013  -0.000000000   0.000000057  -0.000000005

   56    8.2  0.5 -0.5  -0.000000005   0.000000014  -0.000000077  -0.000000000   0.000000000  -0.000000027   0.000000003   0.000000042
                        -0.000000028   0.000000085   0.000000009   0.000000000   0.000000000  -0.000000004   0.000000002   0.000000029


 Composition of spin-orbit eigenvectors
 ======================================

   Nr   State  S   Sz       1        2        3        4        5        6        7        8        9       10

    1    1.2  1.5  1.5   0.000%  49.505%  16.717%   0.000%  25.068%   0.000%   0.006%   0.381%   0.000%   0.000%
    2    2.2  1.5  1.5   0.000%   0.014%   0.000%   0.000%   0.032%   0.000%   0.000%   0.013%   0.000%   0.020%
    3    3.2  1.5  1.5   0.000%   0.000%   0.014%   0.000%   0.013%   0.000%   0.000%   0.031%   0.000%   0.001%
    4    4.2  1.5  1.5   0.004%   0.000%   0.000%   0.011%   0.000%   0.001%   0.044%   0.001%   0.113%   0.000%
    5    5.2  1.5  1.5   0.000%   0.004%   0.011%   0.000%   0.001%   0.000%   0.001%   0.044%   0.000%   0.004%
    6    6.2  1.5  1.5   0.004%   0.000%   0.000%   0.011%   0.000%   0.001%   0.044%   0.001%   0.023%   0.000%
    7    7.2  1.5  1.5   0.000%   0.001%   0.000%   0.000%   0.008%   0.000%   0.000%   0.000%   0.000%   0.000%
    8    8.2  1.5  1.5   0.013%   0.000%   0.000%   0.038%   0.000%   0.000%   0.017%   0.000%   0.024%   0.000%
    9    9.2  1.5  1.5   0.000%   0.115%   0.039%   0.000%   0.053%   0.000%   0.000%   0.001%   0.000%   0.003%
   10   10.2  1.5  1.5   0.013%   0.000%   0.000%   0.038%   0.000%   0.000%   0.017%   0.000%   0.040%   0.000%
   11    1.2  1.5  0.5  16.717%   0.000%   0.000%  49.505%   0.000%   0.387%  24.696%   0.372%   0.000%   0.000%
   12    2.2  1.5  0.5   0.000%   0.000%   0.000%   0.014%   0.000%   0.013%   0.031%   0.000%   0.006%   0.000%
   13    3.2  1.5  0.5   0.014%   0.000%   0.000%   0.000%   0.000%   0.032%   0.013%   0.000%   0.036%   0.000%
   14    4.2  1.5  0.5   0.000%   0.011%   0.004%   0.000%   0.044%   0.000%   0.000%   0.001%   0.000%   0.004%
   15    5.2  1.5  0.5   0.011%   0.000%   0.000%   0.004%   0.000%   0.044%   0.001%   0.000%   0.137%   0.000%
   16    6.2  1.5  0.5   0.000%   0.011%   0.004%   0.000%   0.044%   0.000%   0.000%   0.001%   0.000%   0.012%
   17    7.2  1.5  0.5   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.008%   0.000%   0.000%   0.000%
   18    8.2  1.5  0.5   0.000%   0.107%   0.013%   0.000%   0.023%   0.000%   0.000%   0.019%   0.000%   0.000%
   19    9.2  1.5  0.5   0.004%   0.000%   0.000%   0.013%   0.000%   0.000%   0.006%   0.000%   0.006%   0.000%
   20   10.2  1.5  0.5   0.000%   0.004%   0.115%   0.000%   0.013%   0.000%   0.000%   0.029%   0.000%   0.007%
   21    1.2  1.5 -0.5   0.000%  16.717%  49.505%   0.000%   0.387%   0.000%   0.372%  24.696%   0.000%   0.000%
   22    2.2  1.5 -0.5   0.000%   0.000%   0.014%   0.000%   0.013%   0.000%   0.000%   0.031%   0.000%   0.006%
   23    3.2  1.5 -0.5   0.000%   0.014%   0.000%   0.000%   0.032%   0.000%   0.000%   0.013%   0.000%   0.036%
   24    4.2  1.5 -0.5   0.011%   0.000%   0.000%   0.004%   0.000%   0.044%   0.001%   0.000%   0.004%   0.000%
   25    5.2  1.5 -0.5   0.000%   0.011%   0.004%   0.000%   0.044%   0.000%   0.000%   0.001%   0.000%   0.137%
   26    6.2  1.5 -0.5   0.011%   0.000%   0.000%   0.004%   0.000%   0.044%   0.001%   0.000%   0.012%   0.000%
   27    7.2  1.5 -0.5   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.008%   0.000%   0.000%
   28    8.2  1.5 -0.5   0.107%   0.000%   0.000%   0.013%   0.000%   0.023%   0.019%   0.000%   0.000%   0.000%
   29    9.2  1.5 -0.5   0.000%   0.004%   0.013%   0.000%   0.000%   0.000%   0.000%   0.006%   0.000%   0.006%
   30   10.2  1.5 -0.5   0.004%   0.000%   0.000%   0.115%   0.000%   0.013%   0.029%   0.000%   0.007%   0.000%
   31    1.2  1.5 -1.5  49.505%   0.000%   0.000%  16.717%   0.000%  25.068%   0.381%   0.006%   0.000%   0.000%
   32    2.2  1.5 -1.5   0.014%   0.000%   0.000%   0.000%   0.000%   0.032%   0.013%   0.000%   0.020%   0.000%
   33    3.2  1.5 -1.5   0.000%   0.000%   0.000%   0.014%   0.000%   0.013%   0.031%   0.000%   0.001%   0.000%
   34    4.2  1.5 -1.5   0.000%   0.004%   0.011%   0.000%   0.001%   0.000%   0.001%   0.044%   0.000%   0.113%
   35    5.2  1.5 -1.5   0.004%   0.000%   0.000%   0.011%   0.000%   0.001%   0.044%   0.001%   0.004%   0.000%
   36    6.2  1.5 -1.5   0.000%   0.004%   0.011%   0.000%   0.001%   0.000%   0.001%   0.044%   0.000%   0.023%
   37    7.2  1.5 -1.5   0.001%   0.000%   0.000%   0.000%   0.000%   0.008%   0.000%   0.000%   0.000%   0.000%
   38    8.2  1.5 -1.5   0.000%   0.013%   0.038%   0.000%   0.000%   0.000%   0.000%   0.017%   0.000%   0.024%
   39    9.2  1.5 -1.5   0.115%   0.000%   0.000%   0.039%   0.000%   0.053%   0.001%   0.000%   0.003%   0.000%
   40   10.2  1.5 -1.5   0.000%   0.013%   0.038%   0.000%   0.000%   0.000%   0.000%   0.017%   0.000%   0.040%
   41    1.2  0.5  0.5   3.142%   0.000%   0.000%   1.061%   0.000%  25.331%   0.385%   0.006%  27.886%   0.017%
   42    2.2  0.5  0.5   0.000%   3.163%   1.041%   0.000%   9.352%   0.000%   0.243%  16.127%   0.008%  12.182%
   43    3.2  0.5  0.5   0.599%   0.000%   0.000%   3.605%   0.000%   0.006%  25.335%   0.382%   2.803%   0.002%
   44    4.2  0.5  0.5   0.000%   0.000%   4.203%   0.000%   3.900%   0.000%   0.324%  21.498%   0.000%   0.136%
   45    5.2  0.5  0.5   3.605%   0.000%   0.000%   0.599%   0.000%  25.716%   0.006%   0.000%  56.493%   0.035%
   46    6.2  0.5  0.5   0.000%   3.786%  11.506%   0.000%   4.207%   0.000%   0.036%   2.368%   0.000%   0.000%
   47    7.2  0.5  0.5   3.860%   0.000%   0.000%  11.431%   0.000%   0.101%   6.413%   0.097%   0.000%   0.000%
   48    8.2  0.5  0.5   0.000%  15.291%   0.000%   0.000%   5.608%   0.000%   0.015%   0.987%   0.000%   0.000%
   49    1.2  0.5 -0.5   0.000%   3.142%   1.061%   0.000%  25.331%   0.000%   0.006%   0.385%   0.017%  27.886%
   50    2.2  0.5 -0.5   3.163%   0.000%   0.000%   1.041%   0.000%   9.352%  16.127%   0.243%  12.182%   0.008%
   51    3.2  0.5 -0.5   0.000%   0.599%   3.605%   0.000%   0.006%   0.000%   0.382%  25.335%   0.002%   2.803%
   52    4.2  0.5 -0.5   0.000%   0.000%   0.000%   4.203%   0.000%   3.900%  21.498%   0.324%   0.136%   0.000%
   53    5.2  0.5 -0.5   0.000%   3.605%   0.599%   0.000%  25.716%   0.000%   0.000%   0.006%   0.035%  56.493%
   54    6.2  0.5 -0.5   3.786%   0.000%   0.000%  11.506%   0.000%   4.207%   2.368%   0.036%   0.000%   0.000%
   55    7.2  0.5 -0.5   0.000%   3.860%  11.431%   0.000%   0.101%   0.000%   0.097%   6.413%   0.000%   0.000%
   56    8.2  0.5 -0.5  15.291%   0.000%   0.000%   0.000%   0.000%   5.608%   0.987%   0.015%   0.000%   0.000%

   Nr   State  S   Sz      11       12       13       14       15       16       17       18       19       20

    1    1.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.568%   7.495%   0.000%
    2    2.2  1.5  1.5   0.035%   0.000%   0.000%   0.066%   0.031%   0.000%   0.000%   0.000%   0.000%   0.000%
    3    3.2  1.5  1.5   0.001%   0.000%   0.000%   0.091%   0.045%   0.000%   0.000%   0.000%   0.000%   0.000%
    4    4.2  1.5  1.5   0.000%   0.011%   0.021%   0.000%   0.000%   0.019%   0.000%   0.000%   0.000%   0.000%
    5    5.2  1.5  1.5   0.022%   0.000%   0.000%   0.004%   0.077%   0.000%   0.000%   0.000%   0.000%   0.000%
    6    6.2  1.5  1.5   0.000%   0.119%   0.003%   0.000%   0.000%   0.019%   0.000%   0.000%   0.000%   0.000%
    7    7.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.004%   0.054%   0.000%
    8    8.2  1.5  1.5   0.000%   0.020%   0.000%   0.000%   0.000%   0.023%   0.009%   0.000%   0.000%   0.001%
    9    9.2  1.5  1.5   0.003%   0.000%   0.000%   0.027%   0.000%   0.000%   0.000%   0.002%   0.026%   0.000%
   10   10.2  1.5  1.5   0.000%   0.001%   0.003%   0.000%   0.000%   0.023%   0.009%   0.000%   0.000%   0.001%
   11    1.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   7.494%   0.001%   0.000%   0.568%
   12    2.2  1.5  0.5   0.000%   0.065%   0.022%   0.000%   0.000%   0.045%   0.000%   0.000%   0.000%   0.000%
   13    3.2  1.5  0.5   0.000%   0.005%   0.080%   0.000%   0.000%   0.031%   0.000%   0.000%   0.000%   0.000%
   14    4.2  1.5  0.5   0.038%   0.000%   0.000%   0.026%   0.057%   0.000%   0.000%   0.000%   0.000%   0.000%
   15    5.2  1.5  0.5   0.000%   0.003%   0.043%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   16    6.2  1.5  0.5   0.056%   0.000%   0.000%   0.001%   0.057%   0.000%   0.000%   0.000%   0.000%   0.000%
   17    7.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.054%   0.000%   0.000%   0.004%
   18    8.2  1.5  0.5   0.003%   0.000%   0.000%   0.034%   0.008%   0.000%   0.000%   0.007%   0.015%   0.000%
   19    9.2  1.5  0.5   0.000%   0.036%   0.007%   0.000%   0.000%   0.031%   0.003%   0.000%   0.000%   0.000%
   20   10.2  1.5  0.5   0.019%   0.000%   0.000%   0.010%   0.008%   0.000%   0.000%   0.018%   0.004%   0.000%
   21    1.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   7.494%   0.568%   0.000%
   22    2.2  1.5 -0.5   0.065%   0.000%   0.000%   0.022%   0.045%   0.000%   0.000%   0.000%   0.000%   0.000%
   23    3.2  1.5 -0.5   0.005%   0.000%   0.000%   0.080%   0.031%   0.000%   0.000%   0.000%   0.000%   0.000%
   24    4.2  1.5 -0.5   0.000%   0.038%   0.026%   0.000%   0.000%   0.057%   0.000%   0.000%   0.000%   0.000%
   25    5.2  1.5 -0.5   0.003%   0.000%   0.000%   0.043%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   26    6.2  1.5 -0.5   0.000%   0.056%   0.001%   0.000%   0.000%   0.057%   0.000%   0.000%   0.000%   0.000%
   27    7.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.054%   0.004%   0.000%
   28    8.2  1.5 -0.5   0.000%   0.003%   0.034%   0.000%   0.000%   0.008%   0.007%   0.000%   0.000%   0.015%
   29    9.2  1.5 -0.5   0.036%   0.000%   0.000%   0.007%   0.031%   0.000%   0.000%   0.003%   0.000%   0.000%
   30   10.2  1.5 -0.5   0.000%   0.019%   0.010%   0.000%   0.000%   0.008%   0.018%   0.000%   0.000%   0.004%
   31    1.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.568%   0.000%   0.000%   7.495%
   32    2.2  1.5 -1.5   0.000%   0.035%   0.066%   0.000%   0.000%   0.031%   0.000%   0.000%   0.000%   0.000%
   33    3.2  1.5 -1.5   0.000%   0.001%   0.091%   0.000%   0.000%   0.045%   0.000%   0.000%   0.000%   0.000%
   34    4.2  1.5 -1.5   0.011%   0.000%   0.000%   0.021%   0.019%   0.000%   0.000%   0.000%   0.000%   0.000%
   35    5.2  1.5 -1.5   0.000%   0.022%   0.004%   0.000%   0.000%   0.077%   0.000%   0.000%   0.000%   0.000%
   36    6.2  1.5 -1.5   0.119%   0.000%   0.000%   0.003%   0.019%   0.000%   0.000%   0.000%   0.000%   0.000%
   37    7.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.004%   0.000%   0.000%   0.054%
   38    8.2  1.5 -1.5   0.020%   0.000%   0.000%   0.000%   0.023%   0.000%   0.000%   0.009%   0.001%   0.000%
   39    9.2  1.5 -1.5   0.000%   0.003%   0.027%   0.000%   0.000%   0.000%   0.002%   0.000%   0.000%   0.026%
   40   10.2  1.5 -1.5   0.001%   0.000%   0.000%   0.003%   0.023%   0.000%   0.000%   0.009%   0.001%   0.000%
   41    1.2  0.5  0.5   0.000%  15.611%  16.223%   0.000%   0.000%   0.000%   0.702%   0.000%   0.000%   9.270%
   42    2.2  0.5  0.5  31.200%   0.000%   0.000%  16.348%   0.000%   0.000%   0.001%   4.918%   5.054%   0.000%
   43    3.2  0.5  0.5   0.000%  46.989%   9.943%   0.000%   0.000%   0.000%   9.806%   0.001%   0.000%   0.165%
   44    4.2  0.5  0.5   4.215%   0.000%   0.001%  55.385%   0.000%   0.000%   0.001%   9.337%   0.634%   0.000%
   45    5.2  0.5  0.5   0.000%   1.547%   1.662%   0.000%   0.000%   0.000%   0.165%   0.000%   0.000%   9.807%
   46    6.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%  33.175%   0.000%   0.003%  22.601%  21.996%   0.000%
   47    7.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%  33.175%  41.453%   0.005%   0.000%   3.142%
   48    8.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%  33.175%   0.000%   0.000%   2.837%  41.762%   0.000%
   49    1.2  0.5 -0.5  15.611%   0.000%   0.000%  16.223%   0.000%   0.000%   0.000%   0.702%   9.270%   0.000%
   50    2.2  0.5 -0.5   0.000%  31.200%  16.348%   0.000%   0.000%   0.000%   4.918%   0.001%   0.000%   5.054%
   51    3.2  0.5 -0.5  46.989%   0.000%   0.000%   9.943%   0.000%   0.000%   0.001%   9.806%   0.165%   0.000%
   52    4.2  0.5 -0.5   0.000%   4.215%  55.385%   0.001%   0.000%   0.000%   9.337%   0.001%   0.000%   0.634%
   53    5.2  0.5 -0.5   1.547%   0.000%   0.000%   1.662%   0.000%   0.000%   0.000%   0.165%   9.807%   0.000%
   54    6.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%  33.175%  22.601%   0.003%   0.000%  21.996%
   55    7.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%  33.175%   0.000%   0.005%  41.453%   3.142%   0.000%
   56    8.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%  33.175%   2.837%   0.000%   0.000%  41.762%

   Nr   State  S   Sz      21       22       23       24       25       26       27       28       29       30

    1    1.2  1.5  1.5   0.000%   0.000%   0.075%   0.000%   0.000%   0.010%   0.000%   0.000%   0.001%   0.004%
    2    2.2  1.5  1.5   7.248%   0.118%  10.338%   0.004%   0.000%   1.285%   0.768%   0.042%   0.190%   1.379%
    3    3.2  1.5  1.5  10.413%   0.169%   1.285%   0.000%   0.000%  10.342%   1.104%   0.061%   0.724%   5.250%
    4    4.2  1.5  1.5   0.072%   4.415%   0.001%   1.415%  10.212%   0.000%   0.026%   0.468%   6.309%   0.870%
    5    5.2  1.5  1.5  17.661%   0.286%   1.415%   0.001%   0.000%  10.212%   1.872%   0.103%   0.870%   6.309%
    6    6.2  1.5  1.5   0.072%   4.415%   0.001%   1.415%  10.212%   0.000%   0.026%   0.468%   6.309%   0.870%
    7    7.2  1.5  1.5   0.000%   0.000%   9.060%   0.003%   0.000%   1.256%   0.000%   0.000%   0.229%   1.658%
    8    8.2  1.5  1.5   0.039%   2.410%   0.000%   0.761%   5.495%   0.000%   1.178%  21.350%   3.843%   0.530%
    9    9.2  1.5  1.5   0.000%   0.000%  16.480%   0.006%   0.000%   2.285%   0.000%   0.000%   0.081%   0.585%
   10   10.2  1.5  1.5   0.039%   2.410%   0.000%   0.761%   5.495%   0.000%   1.178%  21.350%   3.843%   0.530%
   11    1.2  1.5  0.5   0.000%   0.000%   0.000%   0.010%   0.075%   0.000%   0.000%   0.000%   0.078%   0.011%
   12    2.2  1.5  0.5   0.169%  10.413%   0.000%   1.285%  10.342%   0.000%   0.061%   1.104%   5.250%   0.724%
   13    3.2  1.5  0.5   0.118%   7.248%   0.004%  10.338%   1.285%   0.000%   0.042%   0.768%   1.379%   0.190%
   14    4.2  1.5  0.5  13.246%   0.215%  10.208%   0.004%   0.000%   1.415%   1.404%   0.078%   0.044%   0.320%
   15    5.2  1.5  0.5   0.000%   0.000%   0.004%  10.208%   1.415%   0.000%   0.000%   0.000%   0.320%   0.044%
   16    6.2  1.5  0.5  13.246%   0.215%  10.208%   0.004%   0.000%   1.415%   1.404%   0.078%   0.044%   0.320%
   17    7.2  1.5  0.5   0.000%   0.000%   0.000%   1.256%   9.063%   0.000%   0.000%   0.000%  32.661%   4.506%
   18    8.2  1.5  0.5   0.803%   0.013%  11.231%   0.004%   0.000%   3.364%   7.117%   0.393%   0.458%   3.320%
   19    9.2  1.5  0.5   0.052%   3.213%   0.000%   0.254%   1.832%   0.000%   1.571%  28.466%   1.281%   0.177%
   20   10.2  1.5  0.5   0.803%   0.013%   1.786%   0.001%   0.000%  12.813%   7.117%   0.393%   1.010%   7.320%
   21    1.2  1.5 -0.5   0.000%   0.000%   0.010%   0.000%   0.000%   0.075%   0.000%   0.000%   0.011%   0.078%
   22    2.2  1.5 -0.5  10.413%   0.169%   1.285%   0.000%   0.000%  10.342%   1.104%   0.061%   0.724%   5.250%
   23    3.2  1.5 -0.5   7.248%   0.118%  10.338%   0.004%   0.000%   1.285%   0.768%   0.042%   0.190%   1.379%
   24    4.2  1.5 -0.5   0.215%  13.246%   0.004%  10.208%   1.415%   0.000%   0.078%   1.404%   0.320%   0.044%
   25    5.2  1.5 -0.5   0.000%   0.000%  10.208%   0.004%   0.000%   1.415%   0.000%   0.000%   0.044%   0.320%
   26    6.2  1.5 -0.5   0.215%  13.246%   0.004%  10.208%   1.415%   0.000%   0.078%   1.404%   0.320%   0.044%
   27    7.2  1.5 -0.5   0.000%   0.000%   1.256%   0.000%   0.000%   9.063%   0.000%   0.000%   4.506%  32.661%
   28    8.2  1.5 -0.5   0.013%   0.803%   0.004%  11.231%   3.364%   0.000%   0.393%   7.117%   3.320%   0.458%
   29    9.2  1.5 -0.5   3.213%   0.052%   0.254%   0.000%   0.000%   1.832%  28.466%   1.571%   0.177%   1.281%
   30   10.2  1.5 -0.5   0.013%   0.803%   0.001%   1.786%  12.813%   0.000%   0.393%   7.117%   7.320%   1.010%
   31    1.2  1.5 -1.5   0.000%   0.000%   0.000%   0.075%   0.010%   0.000%   0.000%   0.000%   0.004%   0.001%
   32    2.2  1.5 -1.5   0.118%   7.248%   0.004%  10.338%   1.285%   0.000%   0.042%   0.768%   1.379%   0.190%
   33    3.2  1.5 -1.5   0.169%  10.413%   0.000%   1.285%  10.342%   0.000%   0.061%   1.104%   5.250%   0.724%
   34    4.2  1.5 -1.5   4.415%   0.072%   1.415%   0.001%   0.000%  10.212%   0.468%   0.026%   0.870%   6.309%
   35    5.2  1.5 -1.5   0.286%  17.661%   0.001%   1.415%  10.212%   0.000%   0.103%   1.872%   6.309%   0.870%
   36    6.2  1.5 -1.5   4.415%   0.072%   1.415%   0.001%   0.000%  10.212%   0.468%   0.026%   0.870%   6.309%
   37    7.2  1.5 -1.5   0.000%   0.000%   0.003%   9.060%   1.256%   0.000%   0.000%   0.000%   1.658%   0.229%
   38    8.2  1.5 -1.5   2.410%   0.039%   0.761%   0.000%   0.000%   5.495%  21.350%   1.178%   0.530%   3.843%
   39    9.2  1.5 -1.5   0.000%   0.000%   0.006%  16.480%   2.285%   0.000%   0.000%   0.000%   0.585%   0.081%
   40   10.2  1.5 -1.5   2.410%   0.039%   0.761%   0.000%   0.000%   5.495%  21.350%   1.178%   0.530%   3.843%
   41    1.2  0.5  0.5   0.000%   0.000%   0.000%   0.024%   0.003%   0.000%   0.000%   0.000%   0.002%   0.000%
   42    2.2  0.5  0.5   0.000%   0.000%   0.017%   0.000%   0.000%   0.011%   0.000%   0.000%   0.003%   0.024%
   43    3.2  0.5  0.5   0.000%   0.000%   0.000%   0.001%   0.027%   0.000%   0.000%   0.000%   0.044%   0.006%
   44    4.2  0.5  0.5   0.000%   0.000%   0.001%   0.000%   0.000%   0.027%   0.000%   0.000%   0.006%   0.040%
   45    5.2  0.5  0.5   0.000%   0.000%   0.000%   0.027%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%
   46    6.2  0.5  0.5   0.153%   0.002%   0.028%   0.000%   0.000%   0.041%   0.003%   0.000%   0.001%   0.008%
   47    7.2  0.5  0.5   0.002%   0.153%   0.000%   0.008%   0.061%   0.000%   0.000%   0.003%   0.017%   0.002%
   48    8.2  0.5  0.5   0.153%   0.002%   0.067%   0.000%   0.000%   0.002%   0.003%   0.000%   0.000%   0.002%
   49    1.2  0.5 -0.5   0.000%   0.000%   0.024%   0.000%   0.000%   0.003%   0.000%   0.000%   0.000%   0.002%
   50    2.2  0.5 -0.5   0.000%   0.000%   0.000%   0.017%   0.011%   0.000%   0.000%   0.000%   0.024%   0.003%
   51    3.2  0.5 -0.5   0.000%   0.000%   0.001%   0.000%   0.000%   0.027%   0.000%   0.000%   0.006%   0.044%
   52    4.2  0.5 -0.5   0.000%   0.000%   0.000%   0.001%   0.027%   0.000%   0.000%   0.000%   0.040%   0.006%
   53    5.2  0.5 -0.5   0.000%   0.000%   0.027%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%
   54    6.2  0.5 -0.5   0.002%   0.153%   0.000%   0.028%   0.041%   0.000%   0.000%   0.003%   0.008%   0.001%
   55    7.2  0.5 -0.5   0.153%   0.002%   0.008%   0.000%   0.000%   0.061%   0.003%   0.000%   0.002%   0.017%
   56    8.2  0.5 -0.5   0.002%   0.153%   0.000%   0.067%   0.002%   0.000%   0.000%   0.003%   0.002%   0.000%

   Nr   State  S   Sz      31       32       33       34       35       36       37       38       39       40

    1    1.2  1.5  1.5   0.000%   0.089%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.072%   0.000%
    2    2.2  1.5  1.5   0.000%   5.974%   0.770%   5.147%   1.075%   0.004%  18.680%   0.000%   0.668%   0.001%
    3    3.2  1.5  1.5   0.000%   1.570%   0.056%   0.373%   4.592%   0.017%  14.811%   0.000%   0.099%   0.000%
    4    4.2  1.5  1.5   0.365%   0.000%  21.262%   3.179%   0.013%   3.292%   0.000%   3.144%   0.000%   0.079%
    5    5.2  1.5  1.5   0.000%   0.365%   0.145%   0.969%   5.334%   0.020%   0.035%   0.000%   0.079%   0.000%
    6    6.2  1.5  1.5   0.364%   0.000%   2.748%   0.411%   0.099%  26.157%   0.000%   1.476%   0.000%   0.079%
    7    7.2  1.5  1.5   0.002%  37.166%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  45.224%   0.100%
    8    8.2  1.5  1.5   0.222%   0.000%   5.149%   0.770%   0.022%   5.802%   0.000%   1.447%   0.002%   0.937%
    9    9.2  1.5  1.5   0.001%  13.120%   0.167%   1.119%   0.082%   0.000%   8.225%   0.000%  24.336%   0.054%
   10   10.2  1.5  1.5   0.222%   0.000%   9.700%   1.450%   0.001%   0.181%   0.000%   1.858%   0.002%   0.937%
   11    1.2  1.5  0.5   0.005%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.008%
   12    2.2  1.5  0.5   1.570%   0.000%   0.425%   0.064%   0.029%   7.550%   0.000%  11.782%   0.000%   0.099%
   13    3.2  1.5  0.5   5.974%   0.000%   5.372%   0.803%   0.000%   0.097%   0.000%  19.402%   0.001%   0.668%
   14    4.2  1.5  0.5   0.000%   7.179%   0.170%   1.135%  11.763%   0.045%   1.520%   0.000%   0.688%   0.002%
   15    5.2  1.5  0.5   7.179%   0.000%  25.416%   3.800%   0.020%   5.243%   0.000%   4.541%   0.002%   0.688%
   16    6.2  1.5  0.5   0.000%   7.179%   0.472%   3.156%  10.482%   0.040%   0.483%   0.000%   0.688%   0.002%
   17    7.2  1.5  0.5   1.887%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.012%   5.223%
   18    8.2  1.5  0.5   0.000%   6.945%   0.005%   0.034%   3.863%   0.015%   6.875%   0.000%  15.727%   0.035%
   19    9.2  1.5  0.5   0.074%   0.000%   2.144%   0.321%   0.045%  11.802%   0.000%   0.077%   0.001%   0.312%
   20   10.2  1.5  0.5   0.000%   2.394%   0.406%   2.716%   2.161%   0.008%   5.500%   0.000%   2.995%   0.007%
   21    1.2  1.5 -0.5   0.000%   0.005%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.008%   0.000%
   22    2.2  1.5 -0.5   0.000%   1.570%   0.064%   0.425%   7.550%   0.029%  11.782%   0.000%   0.099%   0.000%
   23    3.2  1.5 -0.5   0.000%   5.974%   0.803%   5.372%   0.097%   0.000%  19.402%   0.000%   0.668%   0.001%
   24    4.2  1.5 -0.5   7.179%   0.000%   1.135%   0.170%   0.045%  11.763%   0.000%   1.520%   0.002%   0.688%
   25    5.2  1.5 -0.5   0.000%   7.179%   3.800%  25.416%   5.243%   0.020%   4.541%   0.000%   0.688%   0.002%
   26    6.2  1.5 -0.5   7.179%   0.000%   3.156%   0.472%   0.040%  10.482%   0.000%   0.483%   0.002%   0.688%
   27    7.2  1.5 -0.5   0.000%   1.887%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   5.223%   0.012%
   28    8.2  1.5 -0.5   6.945%   0.000%   0.034%   0.005%   0.015%   3.863%   0.000%   6.875%   0.035%  15.727%
   29    9.2  1.5 -0.5   0.000%   0.074%   0.321%   2.144%  11.802%   0.045%   0.077%   0.000%   0.312%   0.001%
   30   10.2  1.5 -0.5   2.394%   0.000%   2.716%   0.406%   0.008%   2.161%   0.000%   5.500%   0.007%   2.995%
   31    1.2  1.5 -1.5   0.089%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.072%
   32    2.2  1.5 -1.5   5.974%   0.000%   5.147%   0.770%   0.004%   1.075%   0.000%  18.680%   0.001%   0.668%
   33    3.2  1.5 -1.5   1.570%   0.000%   0.373%   0.056%   0.017%   4.592%   0.000%  14.811%   0.000%   0.099%
   34    4.2  1.5 -1.5   0.000%   0.365%   3.179%  21.262%   3.292%   0.013%   3.144%   0.000%   0.079%   0.000%
   35    5.2  1.5 -1.5   0.365%   0.000%   0.969%   0.145%   0.020%   5.334%   0.000%   0.035%   0.000%   0.079%
   36    6.2  1.5 -1.5   0.000%   0.364%   0.411%   2.748%  26.157%   0.099%   1.476%   0.000%   0.079%   0.000%
   37    7.2  1.5 -1.5  37.166%   0.002%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.100%  45.224%
   38    8.2  1.5 -1.5   0.000%   0.222%   0.770%   5.149%   5.802%   0.022%   1.447%   0.000%   0.937%   0.002%
   39    9.2  1.5 -1.5  13.120%   0.001%   1.119%   0.167%   0.000%   0.082%   0.000%   8.225%   0.054%  24.336%
   40   10.2  1.5 -1.5   0.000%   0.222%   1.450%   9.700%   0.181%   0.001%   1.858%   0.000%   0.937%   0.002%
   41    1.2  0.5  0.5   0.048%   0.000%   0.028%   0.004%   0.000%   0.010%   0.000%   0.045%   0.000%   0.021%
   42    2.2  0.5  0.5   0.000%   0.023%   0.003%   0.022%   0.018%   0.000%   0.045%   0.000%   0.013%   0.000%
   43    3.2  0.5  0.5   0.000%   0.000%   0.006%   0.001%   0.000%   0.080%   0.000%   0.001%   0.000%   0.001%
   44    4.2  0.5  0.5   0.000%   0.004%   0.000%   0.000%   0.031%   0.000%   0.056%   0.000%   0.001%   0.000%
   45    5.2  0.5  0.5   0.050%   0.000%   0.070%   0.010%   0.000%   0.007%   0.000%   0.000%   0.000%   0.022%
   46    6.2  0.5  0.5   0.000%   0.011%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.033%   0.000%
   47    7.2  0.5  0.5   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.008%
   48    8.2  0.5  0.5   0.000%   0.018%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.073%   0.000%
   49    1.2  0.5 -0.5   0.000%   0.048%   0.004%   0.028%   0.010%   0.000%   0.045%   0.000%   0.021%   0.000%
   50    2.2  0.5 -0.5   0.023%   0.000%   0.022%   0.003%   0.000%   0.018%   0.000%   0.045%   0.000%   0.013%
   51    3.2  0.5 -0.5   0.000%   0.000%   0.001%   0.006%   0.080%   0.000%   0.001%   0.000%   0.001%   0.000%
   52    4.2  0.5 -0.5   0.004%   0.000%   0.000%   0.000%   0.000%   0.031%   0.000%   0.056%   0.000%   0.001%
   53    5.2  0.5 -0.5   0.000%   0.050%   0.010%   0.070%   0.007%   0.000%   0.000%   0.000%   0.022%   0.000%
   54    6.2  0.5 -0.5   0.011%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.033%
   55    7.2  0.5 -0.5   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.008%   0.000%
   56    8.2  0.5 -0.5   0.018%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.073%

   Nr   State  S   Sz      41       42       43       44       45       46       47       48       49       50

    1    1.2  1.5  1.5   0.006%   0.002%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    2    2.2  1.5  1.5   0.071%   0.029%  16.206%   0.001%   0.000%   2.148%   0.033%  15.600%   3.580%   0.386%
    3    3.2  1.5  1.5   0.475%   0.195%  16.205%   0.001%   0.000%  18.810%   0.008%   3.863%   2.853%   0.308%
    4    4.2  1.5  1.5   0.200%   0.489%   0.000%   4.105%   6.314%   0.000%   2.708%   0.006%   2.059%  19.093%
    5    5.2  1.5  1.5   0.489%   0.200%  15.489%   0.001%   0.000%  32.666%   0.007%   3.251%   0.013%   0.001%
    6    6.2  1.5  1.5   0.200%   0.489%   0.000%   2.082%   0.145%   0.000%  10.303%   0.022%   2.116%  19.619%
    7    7.2  1.5  1.5   3.713%   1.522%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    8    8.2  1.5  1.5   2.363%   5.766%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    9    9.2  1.5  1.5   1.998%   0.819%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   10   10.2  1.5  1.5   2.363%   5.766%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   11    1.2  1.5  0.5   0.021%   0.051%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   12    2.2  1.5  0.5   0.195%   0.475%   0.001%  18.673%  19.828%   0.000%   0.847%   0.002%   0.263%   2.435%
   13    3.2  1.5  0.5   0.029%   0.071%   0.000%   8.661%   2.062%   0.000%  22.706%   0.048%   0.436%   4.040%
   14    4.2  1.5  0.5   0.056%   0.023%  12.365%   0.000%   0.000%  17.291%   0.018%   8.628%   6.689%   0.721%
   15    5.2  1.5  0.5   0.023%   0.056%   0.000%   0.000%   0.009%   0.000%   0.002%   0.000%   2.780%  25.780%
   16    6.2  1.5  0.5   0.056%   0.023%   6.210%   0.000%   0.000%   0.726%   0.067%  31.881%   6.165%   0.665%
   17    7.2  1.5  0.5  13.176%  32.148%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   18    8.2  1.5  0.5   3.829%   1.569%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   19    9.2  1.5  0.5   0.788%   1.922%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   20   10.2  1.5  0.5  12.880%   5.279%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   21    1.2  1.5 -0.5   0.051%   0.021%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   22    2.2  1.5 -0.5   0.475%   0.195%  18.673%   0.001%   0.000%  19.828%   0.002%   0.847%   2.435%   0.263%
   23    3.2  1.5 -0.5   0.071%   0.029%   8.661%   0.000%   0.000%   2.062%   0.048%  22.706%   4.040%   0.436%
   24    4.2  1.5 -0.5   0.023%   0.056%   0.000%  12.365%  17.291%   0.000%   8.628%   0.018%   0.721%   6.689%
   25    5.2  1.5 -0.5   0.056%   0.023%   0.000%   0.000%   0.000%   0.009%   0.000%   0.002%  25.780%   2.780%
   26    6.2  1.5 -0.5   0.023%   0.056%   0.000%   6.210%   0.726%   0.000%  31.881%   0.067%   0.665%   6.165%
   27    7.2  1.5 -0.5  32.148%  13.176%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   28    8.2  1.5 -0.5   1.569%   3.829%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   29    9.2  1.5 -0.5   1.922%   0.788%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   30   10.2  1.5 -0.5   5.279%  12.880%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   31    1.2  1.5 -1.5   0.002%   0.006%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   32    2.2  1.5 -1.5   0.029%   0.071%   0.001%  16.206%   2.148%   0.000%  15.600%   0.033%   0.386%   3.580%
   33    3.2  1.5 -1.5   0.195%   0.475%   0.001%  16.205%  18.810%   0.000%   3.863%   0.008%   0.308%   2.853%
   34    4.2  1.5 -1.5   0.489%   0.200%   4.105%   0.000%   0.000%   6.314%   0.006%   2.708%  19.093%   2.059%
   35    5.2  1.5 -1.5   0.200%   0.489%   0.001%  15.489%  32.666%   0.000%   3.251%   0.007%   0.001%   0.013%
   36    6.2  1.5 -1.5   0.489%   0.200%   2.082%   0.000%   0.000%   0.145%   0.022%  10.303%  19.619%   2.116%
   37    7.2  1.5 -1.5   1.522%   3.713%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   38    8.2  1.5 -1.5   5.766%   2.363%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   39    9.2  1.5 -1.5   0.819%   1.998%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   40   10.2  1.5 -1.5   5.766%   2.363%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   41    1.2  0.5  0.5   0.001%   0.002%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   42    2.2  0.5  0.5   0.007%   0.003%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   43    3.2  0.5  0.5   0.007%   0.016%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   44    4.2  0.5  0.5   0.016%   0.007%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   45    5.2  0.5  0.5   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   46    6.2  0.5  0.5   0.031%   0.013%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   47    7.2  0.5  0.5   0.020%   0.048%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   48    8.2  0.5  0.5   0.002%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   49    1.2  0.5 -0.5   0.002%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   50    2.2  0.5 -0.5   0.003%   0.007%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   51    3.2  0.5 -0.5   0.016%   0.007%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   52    4.2  0.5 -0.5   0.007%   0.016%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   53    5.2  0.5 -0.5   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   54    6.2  0.5 -0.5   0.013%   0.031%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   55    7.2  0.5 -0.5   0.048%   0.020%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   56    8.2  0.5 -0.5   0.001%   0.002%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%

   Nr   State  S   Sz      51       52       53       54       55       56

    1    1.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    2    2.2  1.5  1.5   0.000%   5.866%   1.787%   0.000%   0.387%   0.002%
    3    3.2  1.5  1.5   0.000%   3.942%   0.577%   0.000%   1.688%   0.011%
    4    4.2  1.5  1.5   0.926%   0.000%   0.001%   5.750%   0.019%   2.982%
    5    5.2  1.5  1.5   0.000%   0.001%   0.075%   0.000%   1.950%   0.013%
    6    6.2  1.5  1.5   1.089%   0.000%   0.000%   2.490%   0.039%   6.060%
    7    7.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    8    8.2  1.5  1.5   7.699%   0.000%   0.005%  25.545%   0.055%   8.463%
    9    9.2  1.5  1.5   0.000%  24.368%   5.690%   0.001%   0.313%   0.002%
   10   10.2  1.5  1.5   7.293%   0.000%   0.006%  33.646%   0.005%   0.815%
   11    1.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   12    2.2  1.5  0.5   4.410%   0.000%   0.000%   0.377%   0.009%   1.421%
   13    3.2  1.5  0.5   6.124%   0.000%   0.000%   1.352%   0.004%   0.563%
   14    4.2  1.5  0.5   0.000%   0.233%   0.020%   0.000%   4.304%   0.028%
   15    5.2  1.5  0.5   0.865%   0.000%   0.002%  10.919%   0.003%   0.437%
   16    6.2  1.5  0.5   0.000%   0.315%   0.419%   0.000%   3.827%   0.025%
   17    7.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   18    8.2  1.5  0.5   0.000%  17.732%   2.015%   0.000%  14.332%   0.092%
   19    9.2  1.5  0.5   0.016%   0.000%   0.000%   1.671%   0.281%  43.594%
   20   10.2  1.5  0.5   0.000%  18.829%   7.356%   0.001%   7.934%   0.051%
   21    1.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   22    2.2  1.5 -0.5   0.000%   4.410%   0.377%   0.000%   1.421%   0.009%
   23    3.2  1.5 -0.5   0.000%   6.124%   1.352%   0.000%   0.563%   0.004%
   24    4.2  1.5 -0.5   0.233%   0.000%   0.000%   0.020%   0.028%   4.304%
   25    5.2  1.5 -0.5   0.000%   0.865%  10.919%   0.002%   0.437%   0.003%
   26    6.2  1.5 -0.5   0.315%   0.000%   0.000%   0.419%   0.025%   3.827%
   27    7.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   28    8.2  1.5 -0.5  17.732%   0.000%   0.000%   2.015%   0.092%  14.332%
   29    9.2  1.5 -0.5   0.000%   0.016%   1.671%   0.000%  43.594%   0.281%
   30   10.2  1.5 -0.5  18.829%   0.000%   0.001%   7.356%   0.051%   7.934%
   31    1.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   32    2.2  1.5 -1.5   5.866%   0.000%   0.000%   1.787%   0.002%   0.387%
   33    3.2  1.5 -1.5   3.942%   0.000%   0.000%   0.577%   0.011%   1.688%
   34    4.2  1.5 -1.5   0.000%   0.926%   5.750%   0.001%   2.982%   0.019%
   35    5.2  1.5 -1.5   0.001%   0.000%   0.000%   0.075%   0.013%   1.950%
   36    6.2  1.5 -1.5   0.000%   1.089%   2.490%   0.000%   6.060%   0.039%
   37    7.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   38    8.2  1.5 -1.5   0.000%   7.699%  25.545%   0.005%   8.463%   0.055%
   39    9.2  1.5 -1.5  24.368%   0.000%   0.001%   5.690%   0.002%   0.313%
   40   10.2  1.5 -1.5   0.000%   7.293%  33.646%   0.006%   0.815%   0.005%
   41    1.2  0.5  0.5   0.104%   0.000%   0.000%   0.069%   0.000%   0.002%
   42    2.2  0.5  0.5   0.000%   0.096%   0.038%   0.000%   0.041%   0.000%
   43    3.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.001%   0.173%
   44    4.2  0.5  0.5   0.000%   0.091%   0.010%   0.000%   0.073%   0.000%
   45    5.2  0.5  0.5   0.000%   0.000%   0.000%   0.174%   0.000%   0.000%
   46    6.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   47    7.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   48    8.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   49    1.2  0.5 -0.5   0.000%   0.104%   0.069%   0.000%   0.002%   0.000%
   50    2.2  0.5 -0.5   0.096%   0.000%   0.000%   0.038%   0.000%   0.041%
   51    3.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.173%   0.001%
   52    4.2  0.5 -0.5   0.091%   0.000%   0.000%   0.010%   0.000%   0.073%
   53    5.2  0.5 -0.5   0.000%   0.000%   0.174%   0.000%   0.000%   0.000%
   54    6.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   55    7.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   56    8.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%


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
              1      21       94.20       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       6     3655.78       700     1000      520     2140     5302     5102   
                                         GEOM     BASIS   MCVARS    MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI        CI     MULTI       INT
 CPU TIMES  *     26266.66  22113.20   1991.85   2143.63      8.03      9.70
 REAL TIME  *     27095.55 SEC
 DISK USED  *         3.66 GB (local),       59.98 GB (total)
 SF USED    *        18.90 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/USERDEF energy=   -214.216724772865

              CI              CI           MULTI
   -214.33135323   -214.16321888   -213.49635923
 **********************************************************************************************************************************
 Molpro calculation terminated with 1 warning(s)
