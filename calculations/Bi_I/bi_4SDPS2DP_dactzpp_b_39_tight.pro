
 Working directory              : /wrk/irikura/molpro.Spgi9173Xr/
 Global scratch directory       : /wrk/irikura/molpro.Spgi9173Xr/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.Spgi9173Xr/

 id        : nistki

 Nodes            nprocs
 pn112695.nist.gov   16
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1040), CPU time= 0.02 sec
 ***,Bi SO-CI
                                                                                 ! valence s2 inactive
                                                                                 ! include 8p in active space
 memory,1500,M;
 
 gprint,orbitals,civector;
 gthresh,twoint=1d-15,prefac=1d-20,energy=1d-9,gradient=1d-5,step=1d-6,orbital=1d-7,civec=1d-8,coeff=1d-7
 
 symmetry,xyz
 geometry={Bi};
 
 basis={
 ecp,bi,ECP60MDF;
 spdfg,bi,aug-cc-pwCVTZ-PP;C; spdf,1,even,nprim=1,ratio=3.0;
 }
 
 PAR=2                                                                           ! parity even (1) or odd (2)
 NQ=10
 ND=8
 
 {multi
     closed,7,3
     occ,7,12
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
 Commands initialized (846), CPU time= 0.02 sec, 717 directives.
 Default parameters read. Elapsed time= 0.21 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2023.2 linked Fri Sep 22 03:27:09 2023


 **********************************************************************************************************************************
 LABEL *   Bi SO-CI                                                                                                                                                      
  (32 PROC) 64 bit mpp version                                                           DATE: 25-Feb-25          TIME: 16:30:05  
 **********************************************************************************************************************************

 SHA1:             3c61bfe44d37c8635c785372c339f5cbdd4e4b59
 **********************************************************************************************************************************

 Memory per process:      1500 MW
 Total memory per node:  24000 MW

 GA preallocation disabled
 GA check disabled

 Variable memory set to 1500.0 MW



 THRESHOLDS:

 ZERO    =  1.00D-12  ONEINT  =  1.00D-12  TWOINT  =  1.00D-15  PREFAC  =  1.00D-20  XXXXXX  =  1.00D-09  EORDER  =  1.00D-04
 ENERGY  =  1.00D-09  ETEST   =  0.00D+00  EDENS   =  0.00D+00  THRDEDEF=  1.00D-06  GRADIENT=  1.00D-05  STEP    =  1.00D-06
 ORBITAL =  1.00D-07  CIVEC   =  1.00D-08  COEFF   =  1.00D-07  PRINTCI =  5.00D-02  PUNCHCI =  9.90D+01  OPTGRAD =  3.00D-04
 OPTENERG=  1.00D-06  OPTSTEP =  3.00D-04  THRGRAD =  1.00D-10  COMPRESS=  1.00D-11  VARMIN  =  1.00D-07  VARMAX  =  1.00D-03
 THRDOUB =  0.00D+00  THRDIV  =  1.00D-05  THRRED  =  1.00D-07  THRPSP  =  1.00D+00  THRDC   =  1.00D-10  THRCS   =  1.00D-10
 THRNRM  =  1.00D-08  THREQ   =  0.00D+00  THRDE   =  1.00D+00  THRREF  =  1.00D-05  SPARFAC =  1.00D+00  THRDLP  =  1.00D-07
 THRDIA  =  1.00D-10  THRDLS  =  1.00D-07  THRGPS  =  0.00D+00  THRKEX  =  0.00D+00  THRDIS  =  2.00D-01  THRVAR  =  1.00D-10
 THRLOC  =  1.00D-06  THRGAP  =  1.00D-06  THRLOCT = -1.00D+00  THRGAPT = -1.00D+00  THRORB  =  1.00D-06  THRMLTP =  0.00D+00
 THRCPQCI=  1.00D-10  KEXTA   =  0.00D+00  THRCOARS=  0.00D+00  SYMTOL  =  1.00D-06  GRADTOL =  1.00D-06  THROVL  =  1.00D-08
 THRORTH =  1.00D-08  THRDLOVL= -1.00D+00  GRID    =  1.00D-06  GRIDMAX =  1.00D-03  DTMAX   =  0.00D+00  THROCCDE=  1.00D-01
 THROCCDE=  1.00D-01  THRPRINT=  2.50D-01

 ZSYMEL=XYZ

 SETTING BASIS          =    USERDEF
 SETTING PAR            =         2.00000000                                  
 SETTING NQ             =        10.00000000                                  
 SETTING ND             =         8.00000000                                  


 Recomputing integrals since basis changed


 Using spherical harmonics

 Library entry Bi   ECP ECP60MDF                 selected for group  1
 Library entry BI     S AUG-CC-PWCVTZ-PP     selected for orbital group  1
 Even tempered Bi S diffuse               selected for group 1    nprim= 1    centre=  0.010    ratio= 3.000    dratio= 1.000
 Library entry BI     P AUG-CC-PWCVTZ-PP     selected for orbital group  1
 Even tempered Bi P diffuse               selected for group 1    nprim= 1    centre=  0.009    ratio= 3.000    dratio= 1.000
 Library entry BI     D AUG-CC-PWCVTZ-PP     selected for orbital group  1
 Even tempered Bi D diffuse               selected for group 1    nprim= 1    centre=  0.016    ratio= 3.000    dratio= 1.000
 Library entry BI     F AUG-CC-PWCVTZ-PP     selected for orbital group  1
 Even tempered Bi F diffuse               selected for group 1    nprim= 1    centre=  0.040    ratio= 3.000    dratio= 1.000
 Library entry BI     G AUG-CC-PWCVTZ-PP     selected for orbital group  1


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
 NUMBER OF PRIMITIVE AOS:         198
 NUMBER OF SYMMETRY AOS:          165
 NUMBER OF CONTRACTIONS:          112   (   53Ag  +   59Au  )
 NUMBER OF INNER CORE ORBITALS:     0   (    0Ag  +    0Au  )
 NUMBER OF OUTER CORE ORBITALS:     9   (    6Ag  +    3Au  )
 NUMBER OF VALENCE ORBITALS:        4   (    1Ag  +    3Au  )


 LX: Ag           LY: Ag           LZ: Ag 


 NUCLEAR REPULSION ENERGY    0.00000000

 EXTRA SYMMETRY OF AOS IN SYMMETRY 1:   1 1 1 1 1 1 1 1 1 2   3 4 5 6 2 3 4 5 6 2   3 4 5 6 2 3 4 5 6 2   3 4 5 6 2 3 4 5 6 2
                                        3 4 5 6 7 8 9101112  131415
 EXTRA SYMMETRY OF AOS IN SYMMETRY 2:   1 2 3 1 2 3 1 2 3 1   2 3 1 2 3 1 2 3 1 2   3 1 2 3 4 5 6 7 8 9  10 4 5 6 7 8 910 4 5
                                        6 7 8 910 4 5 6 7 8   910 4 5 6 7 8 910


 Eigenvalues of metric

         1 0.314E-04 0.158E-02 0.704E-02 0.870E-02 0.870E-02 0.870E-02 0.870E-02 0.870E-02
         2 0.561E-02 0.561E-02 0.561E-02 0.957E-02 0.957E-02 0.957E-02 0.609E-01 0.609E-01


 Contracted 2-electron integrals neglected if value below      1.0D-15
 AO integral compression algorithm  1   Integral accuracy      1.0D-15

     41.157 MB (compressed) written to integral file ( 24.2%)

     Node minimum: 1.311 MB, node maximum: 3.408 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:     633990.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:     633990      RECORD LENGTH: 524288

 Memory used in sort:       1.19 MW

 SORT1 READ    21109381. AND WROTE      124163. INTEGRALS IN      1 RECORDS. CPU TIME:     0.10 SEC, REAL TIME:     0.11 SEC
 SORT2 READ     2032599. AND WROTE    10190541. INTEGRALS IN    128 RECORDS. CPU TIME:     0.02 SEC, REAL TIME:     0.02 SEC

 Node minimum:      632995.  Node maximum:      639690. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      19       28.94       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         1.06      0.73
 REAL TIME  *         1.93 SEC
 DISK USED  *        29.28 MB (local),      551.78 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of closed-shell orbitals:  10 (    7    3)
 Number of active  orbitals:        9 (    0    9)
 Number of external orbitals:      93 (   46   47)

 State symmetry 1

 Number of active electrons:   3    Spin symmetry=Quartet   Space symmetry=2
 Number of states:            10
 Number of CSFs:              84   (84 determinants, 84 intermediate states)

 State symmetry 2

 Number of active electrons:   3    Spin symmetry=Doublet   Space symmetry=2
 Number of states:             8
 Number of CSFs:             240   (324 determinants, 324 intermediate states)

 Orbital guess generated from atomic densities.
 *** IN SYMMETRY 1 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.310D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.475D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.614D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.692D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.245D+00 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 5 6 3 4 2 1 1 6 4   3 5 2 1 6 4 5 3 2 1   3 6 4 2 5 1 2 3 6 5   4111413 9 8151210 7
                                        2 5 4 6 3 1 2 5 6 3   4 1 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.157D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.157D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.816D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.816D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.121D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.459D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  9 SYMMETRY CONTAMINATION OF 0.448D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 10 SYMMETRY CONTAMINATION OF 0.117D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 11 SYMMETRY CONTAMINATION OF 0.496D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 12 SYMMETRY CONTAMINATION OF 0.496D+00 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   2 3 1 3 2 1 1 3 2 1   2 3 6 9 4 7 5 810 3   2 1 7 5 6 9 4 810 5   7 6 9 4 810 1 3 2 7
                                        6 8 9 5 410 1 2 3 6   5 710 9 4 8 2 1 3

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-08 (energy)

 Weight factors for state symmetry  1:    0.05556   0.05556   0.05556   0.05556   0.05556   0.05556   0.05556   0.05556
                                          0.05556   0.05556
 Weight factors for state symmetry  2:    0.05556   0.05556   0.05556   0.05556   0.05556   0.05556   0.05556   0.05556
 
 Number of orbital rotations:  913  ( 27 closed/active, 463 closed/virtual, 0 active/active, 423 active/virtual )
 Total number of variables:    4345
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1    8   14    0   -213.43215948    -213.44529235   -0.01313287    0.10275578 0.00040382 0.00000000  0.14E+01      0.98
   2    8   14    0   -213.44519057    -213.44519456   -0.00000399    0.00226904 0.00000246 0.00000000  0.39E-01      2.12
   3   21   42    0   -213.44519456    -213.44519456   -0.00000000    0.00000152 0.00000003 0.00000000  0.67E-04      4.51
   4   21   42    0   -213.44519456    -213.44519456    0.00000000    0.00000001 0.00000005 0.00000000  0.93E-07      6.84

 CONVERGENCE REACHED!  Final gradient:    0.00000017 ( 0.17E-06)
                       Final energy:   -213.44519456
 
 Results for state 1.2 Quartet
 =============================
 !MCSCF STATE 1.2 Quartet Energy              -213.591070517598
 Nuclear energy                                  0.00000000
 Kinetic energy                                 69.08604448
 One electron energy                          -373.11509809
 Two electron energy                           159.52402757
 Virial ratio                                    4.09166739
 
 !MCSCF STATE 1.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.2 Quartet
 =============================
 !MCSCF STATE 2.2 Quartet Energy              -213.361764682100
 Nuclear energy                                  0.00000000
 Kinetic energy                                 68.71372419
 One electron energy                          -368.48765605
 Two electron energy                           155.12589137
 Virial ratio                                    4.10508224
 
 !MCSCF STATE 2.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.2 Quartet
 =============================
 !MCSCF STATE 3.2 Quartet Energy              -213.361764682071
 Nuclear energy                                  0.00000000
 Kinetic energy                                 68.71372419
 One electron energy                          -368.48765603
 Two electron energy                           155.12589135
 Virial ratio                                    4.10508224
 
 !MCSCF STATE 3.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.2 Quartet
 =============================
 !MCSCF STATE 4.2 Quartet Energy              -213.361764682071
 Nuclear energy                                  0.00000000
 Kinetic energy                                 68.71372419
 One electron energy                          -368.48765603
 Two electron energy                           155.12589135
 Virial ratio                                    4.10508224
 
 !MCSCF STATE 4.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.2 Quartet
 =============================
 !MCSCF STATE 5.2 Quartet Energy              -213.361764681984
 Nuclear energy                                  0.00000000
 Kinetic energy                                 68.71372419
 One electron energy                          -368.48765598
 Two electron energy                           155.12589130
 Virial ratio                                    4.10508224
 
 !MCSCF STATE 5.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.2 Quartet
 =============================
 !MCSCF STATE 6.2 Quartet Energy              -213.361764681984
 Nuclear energy                                  0.00000000
 Kinetic energy                                 68.71372419
 One electron energy                          -368.48765598
 Two electron energy                           155.12589130
 Virial ratio                                    4.10508224
 
 !MCSCF STATE 6.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.2 Quartet
 =============================
 !MCSCF STATE 7.2 Quartet Energy              -213.359338566001
 Nuclear energy                                  0.00000000
 Kinetic energy                                 68.72130931
 One electron energy                          -368.48173598
 Two electron energy                           155.12239742
 Virial ratio                                    4.10470421
 
 !MCSCF STATE 7.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.2 Quartet
 =============================
 !MCSCF STATE 8.2 Quartet Energy              -213.358033179273
 Nuclear energy                                  0.00000000
 Kinetic energy                                 68.71381129
 One electron energy                          -368.46611736
 Two electron energy                           155.10808418
 Virial ratio                                    4.10502400
 
 !MCSCF STATE 8.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 9.2 Quartet
 =============================
 !MCSCF STATE 9.2 Quartet Energy              -213.358033179189
 Nuclear energy                                  0.00000000
 Kinetic energy                                 68.71381130
 One electron energy                          -368.46611741
 Two electron energy                           155.10808423
 Virial ratio                                    4.10502400
 
 !MCSCF STATE 9.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 10.2 Quartet
 ==============================
 !MCSCF STATE 10.2 Quartet Energy             -213.358033179186
 Nuclear energy                                  0.00000000
 Kinetic energy                                 68.71381130
 One electron energy                          -368.46611741
 Two electron energy                           155.10808423
 Virial ratio                                    4.10502400
 
 !MCSCF STATE 10.2 Quartet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.2 Doublet
 =============================
 !MCSCF STATE 1.2 Doublet Energy              -213.535710882290
 Nuclear energy                                  0.00000000
 Kinetic energy                                 69.01459593
 One electron energy                          -372.81647137
 Two electron energy                           159.28076048
 Virial ratio                                    4.09406594
 
 !MCSCF STATE 1.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.2 Doublet
 =============================
 !MCSCF STATE 2.2 Doublet Energy              -213.535710882289
 Nuclear energy                                  0.00000000
 Kinetic energy                                 69.01459593
 One electron energy                          -372.81647137
 Two electron energy                           159.28076048
 Virial ratio                                    4.09406594
 
 !MCSCF STATE 2.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.2 Doublet
 =============================
 !MCSCF STATE 3.2 Doublet Energy              -213.535710882286
 Nuclear energy                                  0.00000000
 Kinetic energy                                 69.01459593
 One electron energy                          -372.81647137
 Two electron energy                           159.28076049
 Virial ratio                                    4.09406594
 
 !MCSCF STATE 3.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.2 Doublet
 =============================
 !MCSCF STATE 4.2 Doublet Energy              -213.535710882280
 Nuclear energy                                  0.00000000
 Kinetic energy                                 69.01459593
 One electron energy                          -372.81647137
 Two electron energy                           159.28076049
 Virial ratio                                    4.09406594
 
 !MCSCF STATE 4.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.2 Doublet
 =============================
 !MCSCF STATE 5.2 Doublet Energy              -213.535710882280
 Nuclear energy                                  0.00000000
 Kinetic energy                                 69.01459593
 One electron energy                          -372.81647137
 Two electron energy                           159.28076049
 Virial ratio                                    4.09406594
 
 !MCSCF STATE 5.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.2 Doublet
 =============================
 !MCSCF STATE 6.2 Doublet Energy              -213.500538574056
 Nuclear energy                                  0.00000000
 Kinetic energy                                 68.96790269
 One electron energy                          -372.59311556
 Two electron energy                           159.09257698
 Virial ratio                                    4.09565073
 
 !MCSCF STATE 6.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.2 Doublet
 =============================
 !MCSCF STATE 7.2 Doublet Energy              -213.500538574054
 Nuclear energy                                  0.00000000
 Kinetic energy                                 68.96790270
 One electron energy                          -372.59311556
 Two electron energy                           159.09257699
 Virial ratio                                    4.09565073
 
 !MCSCF STATE 7.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.2 Doublet
 =============================
 !MCSCF STATE 8.2 Doublet Energy              -213.500538574038
 Nuclear energy                                  0.00000000
 Kinetic energy                                 68.96790270
 One electron energy                          -372.59311556
 Two electron energy                           159.09257699
 Virial ratio                                    4.09565073
 
 !MCSCF STATE 8.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 ? Warning
 ? Transition properties are only calculated between states of the same symmetry
 ? The problem occurs in mu_properties_expec2

 !MCSCF expec      <1.2 Quartet|LXLX|1.2 Quartet>    -0.000000000000
 !MCSCF expec      <2.2 Quartet|LXLX|2.2 Quartet>     0.000002163869
 !MCSCF expec      <3.2 Quartet|LXLX|3.2 Quartet>     0.999999999996
 !MCSCF expec      <4.2 Quartet|LXLX|4.2 Quartet>     0.999999999898
 !MCSCF expec      <5.2 Quartet|LXLX|5.2 Quartet>     3.999997816208
 !MCSCF expec      <6.2 Quartet|LXLX|6.2 Quartet>     3.999999989075
 !MCSCF expec      <7.2 Quartet|LXLX|7.2 Quartet>    -0.000000000000
 !MCSCF expec      <8.2 Quartet|LXLX|8.2 Quartet>     0.000000000189
 !MCSCF expec      <9.2 Quartet|LXLX|9.2 Quartet>     0.999999999839
 !MCSCF expec    <10.2 Quartet|LXLX|10.2 Quartet>     0.999999999960
 !MCSCF expec      <1.2 Doublet|LXLX|1.2 Doublet>     3.521230276508
 !MCSCF expec      <2.2 Doublet|LXLX|2.2 Doublet>     3.999999443706
 !MCSCF expec      <3.2 Doublet|LXLX|3.2 Doublet>     1.000000034653
 !MCSCF expec      <4.2 Doublet|LXLX|4.2 Doublet>     1.000000421056
 !MCSCF expec      <5.2 Doublet|LXLX|5.2 Doublet>     0.478780537553
 !MCSCF expec      <6.2 Doublet|LXLX|6.2 Doublet>     0.000000002647
 !MCSCF expec      <7.2 Doublet|LXLX|7.2 Doublet>     0.999999999888
 !MCSCF expec      <8.2 Doublet|LXLX|8.2 Doublet>     0.999999999280
 
 !MCSCF expec      <1.2 Quartet|LYLY|1.2 Quartet>    -0.000000000000
 !MCSCF expec      <2.2 Quartet|LYLY|2.2 Quartet>     2.997451059062
 !MCSCF expec      <3.2 Quartet|LYLY|3.2 Quartet>     1.002171681227
 !MCSCF expec      <4.2 Quartet|LYLY|4.2 Quartet>     3.998216882926
 !MCSCF expec      <5.2 Quartet|LYLY|5.2 Quartet>     1.002560656111
 !MCSCF expec      <6.2 Quartet|LYLY|6.2 Quartet>     1.000013439516
 !MCSCF expec      <7.2 Quartet|LYLY|7.2 Quartet>    -0.000000000000
 !MCSCF expec      <8.2 Quartet|LYLY|8.2 Quartet>     0.999999999871
 !MCSCF expec      <9.2 Quartet|LYLY|9.2 Quartet>     0.000000208408
 !MCSCF expec    <10.2 Quartet|LYLY|10.2 Quartet>     0.999999718865
 !MCSCF expec      <1.2 Doublet|LYLY|1.2 Doublet>     0.114932179604
 !MCSCF expec      <2.2 Doublet|LYLY|2.2 Doublet>     1.000000442831
 !MCSCF expec      <3.2 Doublet|LYLY|3.2 Doublet>     1.000000411298
 !MCSCF expec      <4.2 Doublet|LYLY|4.2 Doublet>     3.999999248083
 !MCSCF expec      <5.2 Doublet|LYLY|5.2 Doublet>     3.885073385729
 !MCSCF expec      <6.2 Doublet|LYLY|6.2 Doublet>     0.999999997428
 !MCSCF expec      <7.2 Doublet|LYLY|7.2 Doublet>     0.999999999975
 !MCSCF expec      <8.2 Doublet|LYLY|8.2 Doublet>     0.000000000721
 
 !MCSCF expec      <1.2 Quartet|LZLZ|1.2 Quartet>    -0.000000000000
 !MCSCF expec      <2.2 Quartet|LZLZ|2.2 Quartet>     3.002546777068
 !MCSCF expec      <3.2 Quartet|LZLZ|3.2 Quartet>     3.997828318777
 !MCSCF expec      <4.2 Quartet|LZLZ|4.2 Quartet>     1.001783117175
 !MCSCF expec      <5.2 Quartet|LZLZ|5.2 Quartet>     0.997441527681
 !MCSCF expec      <6.2 Quartet|LZLZ|6.2 Quartet>     0.999986571408
 !MCSCF expec      <7.2 Quartet|LZLZ|7.2 Quartet>    -0.000000000000
 !MCSCF expec      <8.2 Quartet|LZLZ|8.2 Quartet>     0.999999999939
 !MCSCF expec      <9.2 Quartet|LZLZ|9.2 Quartet>     0.999999791753
 !MCSCF expec    <10.2 Quartet|LZLZ|10.2 Quartet>     0.000000281175
 !MCSCF expec      <1.2 Doublet|LZLZ|1.2 Doublet>     2.363837543889
 !MCSCF expec      <2.2 Doublet|LZLZ|2.2 Doublet>     1.000000113463
 !MCSCF expec      <3.2 Doublet|LZLZ|3.2 Doublet>     3.999999554048
 !MCSCF expec      <4.2 Doublet|LZLZ|4.2 Doublet>     1.000000330861
 !MCSCF expec      <5.2 Doublet|LZLZ|5.2 Doublet>     1.636146076718
 !MCSCF expec      <6.2 Doublet|LZLZ|6.2 Doublet>     0.999999999925
 !MCSCF expec      <7.2 Doublet|LZLZ|7.2 Doublet>     0.000000000136
 !MCSCF expec      <8.2 Doublet|LZLZ|8.2 Doublet>     0.999999999998
 
 !MCSCF expec      <1.2 Quartet|L**2|1.2 Quartet>    -0.000000000000
 !MCSCF expec      <2.2 Quartet|L**2|2.2 Quartet>     6.000000000000
 !MCSCF expec      <3.2 Quartet|L**2|3.2 Quartet>     6.000000000000
 !MCSCF expec      <4.2 Quartet|L**2|4.2 Quartet>     6.000000000000
 !MCSCF expec      <5.2 Quartet|L**2|5.2 Quartet>     6.000000000000
 !MCSCF expec      <6.2 Quartet|L**2|6.2 Quartet>     6.000000000000
 !MCSCF expec      <7.2 Quartet|L**2|7.2 Quartet>    -0.000000000000
 !MCSCF expec      <8.2 Quartet|L**2|8.2 Quartet>     2.000000000000
 !MCSCF expec      <9.2 Quartet|L**2|9.2 Quartet>     2.000000000000
 !MCSCF expec    <10.2 Quartet|L**2|10.2 Quartet>     2.000000000000
 !MCSCF expec      <1.2 Doublet|L**2|1.2 Doublet>     6.000000000000
 !MCSCF expec      <2.2 Doublet|L**2|2.2 Doublet>     6.000000000000
 !MCSCF expec      <3.2 Doublet|L**2|3.2 Doublet>     6.000000000000
 !MCSCF expec      <4.2 Doublet|L**2|4.2 Doublet>     6.000000000000
 !MCSCF expec      <5.2 Doublet|L**2|5.2 Doublet>     6.000000000000
 !MCSCF expec      <6.2 Doublet|L**2|6.2 Doublet>     2.000000000000
 !MCSCF expec      <7.2 Doublet|L**2|7.2 Doublet>     2.000000000000
 !MCSCF expec      <8.2 Doublet|L**2|8.2 Doublet>     2.000000000000
 
 ? Warning
 ? Extra symmerty contamination removed!
 ? The problem occurs in mu_orbitals_clean_extra
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 2 4 6 3 5 1 1 2 4   6 3 5 1 3 5 6 2 4 1   2 4 6 3 5 1 2 4 6 5   3 9 7 8121114151310
                                        2 4 6 5 3 1 2 4 6 5   3 1 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 1 2 2 1 3 3 1 2 2   1 3 9 7 810 5 6 4 1   2 3 4 6 5 810 7 9 4   6 5 810 7 9 3 1 2 4
                                        6 5 810 7 9 3 1 2 4   6 5 810 7 9 3 1 2
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -6.78233     1  1  s    0.99933
    2.1     2.00000    -1.41036     1  1  d0   1.00055
    3.1     2.00000    -1.41036     1  1  d1+  1.00055
    4.1     2.00000    -1.41036     1  1  d1-  1.00055
    5.1     2.00000    -1.41036     1  1  d2-  1.00055
    6.1     2.00000    -1.41036     1  1  d2+  1.00055
    7.1     2.00000    -0.76223     1  2  s    1.02571
    1.2     2.00000    -4.35853     1  1  pz   0.99948
    2.2     2.00000    -4.35853     1  1  px   0.99948
    3.2     2.00000    -4.35853     1  1  py   0.99948
    4.2     0.82816    -0.18681     1  2  py   1.02219
    5.2     0.82816    -0.18681     1  2  px   1.02219
    6.2     0.82815    -0.18681     1  2  pz   1.02219
    7.2     0.16852     0.02415     1  2  pz  -0.35001    1  7  pz   0.45660    1  8  pz   0.73360
    8.2     0.16852     0.02415     1  2  px  -0.35001    1  7  px   0.45660    1  8  px   0.73360
    9.2     0.16852     0.02415     1  2  py  -0.35001    1  7  py   0.45660    1  8  py   0.73360
   10.2     0.00332     0.29598     1  1  py  -0.34050    1  2  py  -2.04456    1  4  py   2.26294    1  7  py   0.27573
                                    1  8  py  -0.59116
   11.2     0.00332     0.29598     1  1  px  -0.34050    1  2  px  -2.04456    1  4  px   2.26294    1  7  px   0.27573
                                    1  8  px  -0.59116
   12.2     0.00332     0.29598     1  1  pz  -0.34050    1  2  pz  -2.04456    1  4  pz   2.26294    1  7  pz   0.27573
                                    1  8  pz  -0.59116
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 2 (Quartet)
 =======================================

 State:              1               2               3               4               5               6               7
 aaa000000      0.99778667      0.00000001      0.00000000      0.00000000      0.00000100      0.00000000     -0.00006154
 a0a0a0000     -0.00080624      0.81200260     -0.00000001     -0.00000035      0.00059729      0.00000102     -0.56978163
 aa0a00000      0.00080553      0.40548412      0.00000052      0.00000013      0.70351351      0.00000329      0.56978169
 aa000a000      0.00000000     -0.00000088     -0.00000012     -0.00000135     -0.00000278      0.70321508      0.00000000
 0aaa00000     -0.00000000     -0.00000088     -0.00000012     -0.00000135     -0.00000278      0.70321506     -0.00000000
 a0aa00000     -0.00000000     -0.00000030     -0.01892019     -0.70296054      0.00000031     -0.00000135      0.00000000
 aa00a0000      0.00000000      0.00000030      0.01892019      0.70296053     -0.00000031      0.00000135      0.00000000
 a0a00a000     -0.00000000      0.00000000      0.70296048     -0.01892019     -0.00000052      0.00000008     -0.00000000
 0aa0a0000     -0.00000000     -0.00000000     -0.70296045      0.01892019      0.00000052     -0.00000008     -0.00000000
 0aa00a000      0.00080694      0.40651848     -0.00000053     -0.00000047     -0.70291626     -0.00000227      0.56978157
 a00aa0000      0.00734156     -0.02491200      0.00000003      0.00000003      0.04307466      0.00000014      0.07067690
 0a0a0a000     -0.00734156     -0.04975947      0.00000000      0.00000002     -0.00003561     -0.00000006     -0.07067650
 00a0aa000      0.00734156     -0.02484747     -0.00000003     -0.00000001     -0.04311126     -0.00000020      0.07067610
 
 Energy:     -213.59107052   -213.36176468   -213.36176468   -213.36176468   -213.36176468   -213.36176468   -213.35933857

 State:              8               9              10
 aaa000000     -0.00000000      0.00000000     -0.00000000
 a0a0a0000     -0.00000000      0.00000000     -0.00000000
 aa0a00000     -0.00000000     -0.00000000     -0.00000000
 aa000a000      0.70291310     -0.00000798     -0.00000548
 0aaa00000     -0.70291308      0.00000798      0.00000548
 a0aa00000      0.00000797      0.70291303     -0.00032077
 aa00a0000      0.00000797      0.70291307     -0.00032077
 a0a00a000      0.00000548      0.00032077      0.70291297
 0aa0a0000      0.00000548      0.00032077      0.70291299
 0aa00a000     -0.00000000      0.00000000      0.00000000
 a00aa0000     -0.00000000     -0.00000000      0.00000000
 0a0a0a000      0.00000000      0.00000000     -0.00000000
 00a0aa000     -0.00000000      0.00000000      0.00000000
 
 Energy:     -213.35803318   -213.35803318   -213.35803318
 
 
 CI Coefficients of symmetry 2 (Doublet)
 =======================================

 State:              1               2               3               4               5               6               7
 baa000000      0.80003020     -0.00000002     -0.00000015     -0.00000125     -0.13760299     -0.00000000     -0.00000000
 aba000000     -0.28084739      0.00000010      0.00000086      0.00000687      0.76164800     -0.00000000      0.00000000
 0a2000000     -0.00000000     -0.70302003     -0.00013662     -0.00027015      0.00000009      0.69899698      0.00000606
 02a000000      0.00000000      0.00013672     -0.70302000     -0.00026028      0.00000079     -0.00000606      0.69899691
 a02000000     -0.00000001      0.00027010      0.00026033     -0.70301999      0.00000634     -0.00003545     -0.00000350
 20a000000     -0.00000000     -0.00013672      0.70301995      0.00026028     -0.00000079     -0.00000606      0.69899682
 a20000000      0.00000001     -0.00027010     -0.00026033      0.70301994     -0.00000634     -0.00003545     -0.00000350
 2a0000000      0.00000000      0.70301994      0.00013662      0.00027015     -0.00000009      0.69899682      0.00000606
 aab000000     -0.51918280     -0.00000008     -0.00000070     -0.00000562     -0.62404501      0.00000000      0.00000000
 aa000b000     -0.00000000     -0.02858961     -0.00000556     -0.00001099      0.00000000     -0.05411441     -0.00000047
 a0a00b000      0.00000000      0.00000556     -0.02858960     -0.00001058      0.00000003      0.00000047     -0.05411441
 aa00b0000      0.00000000     -0.00001098     -0.00001059      0.02858911     -0.00000026     -0.00000274     -0.00000027
 0aa0b0000     -0.00000000     -0.00000556      0.02858909      0.00001058     -0.00000003      0.00000047     -0.05411390
 a0ab00000     -0.00000000      0.00001098      0.00001059     -0.02858859      0.00000026     -0.00000274     -0.00000027
 0aab00000     -0.00000000     -0.02858858     -0.00000556     -0.00001099      0.00000000      0.05411338      0.00000047
 
 Energy:     -213.53571088   -213.53571088   -213.53571088   -213.53571088   -213.53571088   -213.50053857   -213.50053857

 State:              8
 baa000000      0.00000000
 aba000000      0.00000000
 0a2000000      0.00003545
 02a000000      0.00000350
 a02000000      0.69899697
 20a000000      0.00000350
 a20000000      0.69899689
 2a0000000      0.00003545
 aab000000     -0.00000000
 aa000b000     -0.00000274
 a0a00b000     -0.00000027
 aa00b0000      0.05411392
 0aa0b0000     -0.00000027
 a0ab00000      0.05411339
 0aab00000      0.00000274
 
 Energy:     -213.50053857
 


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       42.95       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       4        0.56       700     1000      520     2140   
                                         GEOM     BASIS   MCVARS    MCSCF   

 PROGRAMS   *        TOTAL     MULTI       INT
 CPU TIMES  *         8.21      7.15      0.73
 REAL TIME  *         9.71 SEC
 DISK USED  *        43.59 MB (local),      780.76 MB (total)
 SF USED    *        37.66 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

         ENERGY     LL
    -213.5910705  -0.0
    -213.3617647   6.0
    -213.3617647   6.0
    -213.3617647   6.0
    -213.3617647   6.0
    -213.3617647   6.0
    -213.3593386  -0.0
    -213.3580332   2.0
    -213.3580332   2.0
    -213.3580332   2.0
    -213.5357109   6.0
    -213.5357109   6.0
    -213.5357109   6.0
    -213.5357109   6.0
    -213.5357109   6.0
    -213.5005386   2.0
    -213.5005386   2.0
    -213.5005386   2.0
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-14  THRDEN = 1.00D-09

 Number of optimized states: 10  Roots:   1   2   3   4   5   6   7   8   9  10
 Number of reference states: 10  Roots:   1   2   3   4   5   6   7   8   9  10

 Reference symmetry:                   2   Quartet 
 Number of electrons:                 23
 Maximum number of shells:             4
 Maximum number of spin couplings:    48

 Reference space:       84 conf       84 CSFs
 N elec internal:    49854 conf   199164 CSFs
 N-1 el internal:    22386 conf   136416 CSFs
 N-2 el internal:     4989 conf    57729 CSFs

 Number of electrons in valence space:                     23
 Maximum number of open shell orbitals in reference space:  3
 Maximum number of open shell orbitals in internal spaces:  9


 Number of closed-shell orbitals:  10 (   7   3 )
 Number of active  orbitals:        9 (   0   9 )
 Number of external orbitals:      93 (  46  47 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Valence orbitals related to previous ones by unitary transformation. Operators transformed.


 Number of p-space configurations:  19

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -213.59107052
     2      -213.36176468
     3      -213.36176468
     4      -213.36176468
     5      -213.36176468
     6      -213.36176468
     7      -213.35933857
     8      -213.35803318
     9      -213.35803318
    10      -213.35803318

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1827D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1826D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1827D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1826D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1827D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1826D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1827D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1826D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1827D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1826D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1827D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1826D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1827D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1826D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1827D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1826D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1827D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1826D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1827D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1826D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1827D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1826D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1827D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1826D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1827D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1826D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1827D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1826D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1827D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1826D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1827D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1826D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1827D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1826D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1827D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1826D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1827D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1826D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1827D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1826D-06

 Number of blocks in overlap matrix:  1061   Smallest eigenvalue:  0.18D-06
 Number of N-2 electron functions:    1729
 Number of N-1 electron functions:  136416

 Number of internal configurations:               109200
 Number of singly external configurations:       6350484
 Number of doubly external configurations:       3742732
 Total number of contracted configurations:     10202416
 Total number of uncontracted configurations:  130634748

 Diagonal Coupling coefficients finished.               Storage:  54826932 words, CPU-Time:     78.78 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   1954880 words, CPU-time:      0.27 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -213.59107052     0.00000000    -0.80900182  0.59D-01  0.10D+00   129.28
    1     2     2     1.00000000     0.00000000  -213.36176468    -0.00000000    -0.77764166  0.50D-01  0.93D-01   129.28
    1     3     3     1.00000000     0.00000000  -213.36176468    -0.00000000    -0.77785987  0.50D-01  0.93D-01   129.28
    1     4     4     1.00000000     0.00000000  -213.36176468    -0.00000000    -0.77807825  0.50D-01  0.93D-01   129.28
    1     5     5     1.00000000     0.00000000  -213.36176468    -0.00000000    -0.77754516  0.50D-01  0.93D-01   129.28
    1     6     6     1.00000000     0.00000000  -213.36176468     0.00000000    -0.77800203  0.50D-01  0.93D-01   129.28
    1     7     7     1.00000000     0.00000000  -213.35933857    -0.00000000    -0.77788208  0.51D-01  0.92D-01   129.28
    1     8     8     1.00000000     0.00000000  -213.35803318    -0.00000000    -0.77828903  0.50D-01  0.93D-01   129.28
    1     9     9     1.00000000     0.00000000  -213.35803318    -0.00000000    -0.77845478  0.50D-01  0.93D-01   129.28
    1    10    10     1.00000000     0.00000000  -213.35803318     0.00000000    -0.77805248  0.50D-01  0.93D-01   129.28
    2     1     1     1.09356775    -0.62151781  -214.21258833    -0.62151781    -0.02019133  0.32D-02  0.16D-02  1403.58
    2     2     2     1.08685076    -0.61597013  -213.97773481    -0.61597013    -0.01663471  0.23D-02  0.11D-02  1403.58
    2     3     3     1.08689670    -0.61593588  -213.97770056    -0.61593588    -0.01666619  0.24D-02  0.11D-02  1403.58
    2     4     4     1.08689179    -0.61592505  -213.97768974    -0.61592505    -0.01669026  0.24D-02  0.11D-02  1403.58
    2     5     5     1.08698851    -0.61584699  -213.97761167    -0.61584699    -0.01677277  0.24D-02  0.11D-02  1403.58
    2     6     6     1.08699004    -0.61583444  -213.97759912    -0.61583444    -0.01679232  0.24D-02  0.11D-02  1403.58
    2     7     7     1.08681173    -0.61585984  -213.97519841    -0.61585984    -0.01674636  0.24D-02  0.11D-02  1403.58
    2     8     8     1.08674383    -0.61605458  -213.97408776    -0.61605458    -0.01668028  0.23D-02  0.12D-02  1403.58
    2     9     9     1.08677537    -0.61599810  -213.97403128    -0.61599810    -0.01674663  0.23D-02  0.12D-02  1403.58
    2    10    10     1.08682913    -0.61595749  -213.97399067    -0.61595749    -0.01679385  0.23D-02  0.12D-02  1403.58
    3     1     1     1.08389708    -0.64020812  -214.23127863    -0.01869030    -0.00028356  0.37D-04  0.28D-04  2661.71
    3     2     2     1.08016713    -0.63160209  -213.99336677    -0.01563196    -0.00022492  0.30D-04  0.19D-04  2661.71
    3     3     3     1.08016477    -0.63160120  -213.99336588    -0.01566532    -0.00022581  0.30D-04  0.19D-04  2661.71
    3     4     4     1.08016175    -0.63160020  -213.99336489    -0.01567515    -0.00022654  0.31D-04  0.19D-04  2661.71
    3     5     5     1.08016152    -0.63159931  -213.99336399    -0.01575233    -0.00022765  0.31D-04  0.19D-04  2661.71
    3     6     6     1.08016213    -0.63159930  -213.99336398    -0.01576486    -0.00022755  0.31D-04  0.19D-04  2661.71
    3     7     7     1.08008301    -0.63157762  -213.99091618    -0.01571778    -0.00022684  0.28D-04  0.19D-04  2661.71
    3     8     8     1.08015501    -0.63170386  -213.98973704    -0.01564928    -0.00022139  0.27D-04  0.19D-04  2661.71
    3     9     9     1.08014867    -0.63170331  -213.98973649    -0.01570521    -0.00022189  0.27D-04  0.19D-04  2661.71
    3    10    10     1.08015223    -0.63170264  -213.98973582    -0.01574516    -0.00022266  0.27D-04  0.19D-04  2661.71
    4     1     1     1.08385310    -0.64049863  -214.23156915    -0.00029051    -0.00000771  0.15D-05  0.78D-06  3913.62
    4     2     2     1.08028346    -0.63183637  -213.99360105    -0.00023428    -0.00000672  0.15D-05  0.49D-06  3913.62
    4     3     3     1.08028271    -0.63183628  -213.99360096    -0.00023508    -0.00000681  0.15D-05  0.50D-06  3913.62
    4     4     4     1.08028256    -0.63183626  -213.99360094    -0.00023606    -0.00000676  0.15D-05  0.49D-06  3913.62
    4     5     5     1.08028209    -0.63183623  -213.99360091    -0.00023692    -0.00000679  0.15D-05  0.49D-06  3913.62
    4     6     6     1.08028195    -0.63183622  -213.99360090    -0.00023692    -0.00000681  0.15D-05  0.50D-06  3913.62
    4     7     7     1.08023272    -0.63181319  -213.99115176    -0.00023557    -0.00000690  0.15D-05  0.49D-06  3913.62
    4     8     8     1.08029906    -0.63193354  -213.98996672    -0.00022968    -0.00000633  0.13D-05  0.46D-06  3913.62
    4     9     9     1.08029931    -0.63193353  -213.98996671    -0.00023022    -0.00000633  0.13D-05  0.46D-06  3913.62
    4    10    10     1.08029925    -0.63193353  -213.98996671    -0.00023089    -0.00000633  0.13D-05  0.46D-06  3913.62
    5     1     1     1.08391187    -0.64050681  -214.23157733    -0.00000818    -0.00000023  0.27D-07  0.27D-07  5158.93
    5     2     2     1.08034602    -0.63184359  -213.99360827    -0.00000722    -0.00000023  0.39D-07  0.19D-07  5158.93
    5     3     3     1.08034614    -0.63184359  -213.99360827    -0.00000731    -0.00000023  0.40D-07  0.19D-07  5158.93
    5     4     4     1.08034608    -0.63184352  -213.99360820    -0.00000726    -0.00000023  0.39D-07  0.19D-07  5158.93
    5     5     5     1.08034597    -0.63184352  -213.99360820    -0.00000729    -0.00000023  0.40D-07  0.19D-07  5158.93
    5     6     6     1.08034567    -0.63184352  -213.99360820    -0.00000730    -0.00000023  0.40D-07  0.19D-07  5158.93
    5     7     7     1.08029639    -0.63182055  -213.99115912    -0.00000736    -0.00000024  0.41D-07  0.18D-07  5158.93
    5     8     8     1.08036945    -0.63194032  -213.98997350    -0.00000678    -0.00000021  0.34D-07  0.17D-07  5158.93
    5     9     9     1.08036934    -0.63194032  -213.98997350    -0.00000679    -0.00000021  0.34D-07  0.17D-07  5158.93
    5    10    10     1.08036919    -0.63194032  -213.98997350    -0.00000679    -0.00000021  0.34D-07  0.17D-07  5158.93
    6     1     1     1.08390801    -0.64050705  -214.23157757    -0.00000024    -0.00000001  0.81D-09  0.97D-09  6403.02
    6     2     2     1.08034656    -0.63184383  -213.99360851    -0.00000024    -0.00000001  0.11D-08  0.83D-09  6403.02
    6     3     3     1.08034656    -0.63184383  -213.99360851    -0.00000024    -0.00000001  0.11D-08  0.82D-09  6403.02
    6     4     4     1.08034645    -0.63184376  -213.99360844    -0.00000024    -0.00000001  0.11D-08  0.83D-09  6403.02
    6     5     5     1.08034640    -0.63184376  -213.99360844    -0.00000024    -0.00000001  0.11D-08  0.84D-09  6403.02
    6     6     6     1.08034647    -0.63184376  -213.99360844    -0.00000024    -0.00000001  0.11D-08  0.82D-09  6403.02
    6     7     7     1.08029759    -0.63182079  -213.99115936    -0.00000025    -0.00000001  0.12D-08  0.74D-09  6403.02
    6     8     8     1.08037187    -0.63194053  -213.98997371    -0.00000022    -0.00000001  0.89D-09  0.68D-09  6403.02
    6     9     9     1.08037183    -0.63194053  -213.98997371    -0.00000022    -0.00000001  0.89D-09  0.68D-09  6403.02
    6    10    10     1.08037186    -0.63194053  -213.98997371    -0.00000022    -0.00000001  0.89D-09  0.67D-09  6403.02
    7     1     1     1.08391042    -0.64050706  -214.23157757    -0.00000001    -0.00000000  0.23D-10  0.48D-10  7639.94
    7     2     2     1.08034788    -0.63184383  -213.99360852    -0.00000001    -0.00000000  0.43D-10  0.39D-10  7639.94
    7     3     3     1.08034789    -0.63184383  -213.99360852    -0.00000001    -0.00000000  0.43D-10  0.37D-10  7639.94
    7     4     4     1.08034779    -0.63184377  -213.99360845    -0.00000001    -0.00000000  0.43D-10  0.39D-10  7639.94
    7     5     5     1.08034779    -0.63184377  -213.99360845    -0.00000001    -0.00000000  0.43D-10  0.39D-10  7639.94
    7     6     6     1.08034778    -0.63184377  -213.99360845    -0.00000001    -0.00000000  0.43D-10  0.38D-10  7639.94
    7     7     7     1.08029883    -0.63182080  -213.99115937    -0.00000001    -0.00000000  0.51D-10  0.28D-10  7639.94
    7     8     8     1.08037347    -0.63194054  -213.98997372    -0.00000001    -0.00000000  0.36D-10  0.26D-10  7639.94
    7     9     9     1.08037348    -0.63194054  -213.98997372    -0.00000001    -0.00000000  0.36D-10  0.26D-10  7639.94
    7    10    10     1.08037348    -0.63194054  -213.98997372    -0.00000001    -0.00000000  0.36D-10  0.25D-10  7639.94
    8     1     1     1.08391030    -0.64050706  -214.23157757    -0.00000000    -0.00000000  0.16D-11  0.24D-11  8878.26
    8     2     2     1.08034796    -0.63184383  -213.99360852    -0.00000000    -0.00000000  0.18D-11  0.24D-11  8878.26
    8     3     3     1.08034796    -0.63184383  -213.99360852    -0.00000000    -0.00000000  0.17D-11  0.23D-11  8878.26
    8     4     4     1.08034786    -0.63184377  -213.99360845    -0.00000000    -0.00000000  0.18D-11  0.24D-11  8878.26
    8     5     5     1.08034786    -0.63184377  -213.99360845    -0.00000000    -0.00000000  0.18D-11  0.24D-11  8878.26
    8     6     6     1.08034786    -0.63184377  -213.99360845    -0.00000000    -0.00000000  0.18D-11  0.23D-11  8878.26
    8     7     7     1.08029897    -0.63182080  -213.99115937    -0.00000000    -0.00000000  0.19D-11  0.15D-11  8878.26
    8     8     8     1.08037359    -0.63194054  -213.98997372    -0.00000000    -0.00000000  0.13D-11  0.14D-11  8878.26
    8     9     9     1.08037359    -0.63194054  -213.98997372    -0.00000000    -0.00000000  0.13D-11  0.15D-11  8878.26
    8    10    10     1.08037358    -0.63194054  -213.98997372    -0.00000000    -0.00000000  0.13D-11  0.14D-11  8878.26
    9     1     1     1.08391031    -0.64050706  -214.23157757    -0.00000000    -0.00000000  0.82D-13  0.15D-12 10116.14
    9     2     2     1.08034797    -0.63184383  -213.99360852    -0.00000000    -0.00000000  0.88D-13  0.16D-12 10116.14
    9     3     3     1.08034797    -0.63184383  -213.99360852    -0.00000000    -0.00000000  0.81D-13  0.15D-12 10116.14
    9     4     4     1.08034787    -0.63184377  -213.99360845    -0.00000000    -0.00000000  0.85D-13  0.16D-12 10116.14
    9     5     5     1.08034787    -0.63184377  -213.99360845    -0.00000000    -0.00000000  0.86D-13  0.16D-12 10116.14
    9     6     6     1.08034787    -0.63184377  -213.99360845    -0.00000000    -0.00000000  0.82D-13  0.15D-12 10116.14
    9     7     7     1.08029898    -0.63182080  -213.99115937    -0.00000000    -0.00000000  0.77D-13  0.10D-12 10116.14
    9     8     8     1.08037361    -0.63194054  -213.98997372    -0.00000000    -0.00000000  0.54D-13  0.96D-13 10116.14
    9     9     9     1.08037361    -0.63194054  -213.98997372    -0.00000000    -0.00000000  0.54D-13  0.98D-13 10116.14
    9    10    10     1.08037361    -0.63194054  -213.98997372    -0.00000000    -0.00000000  0.52D-13  0.90D-13 10116.14
   10     1     1     1.08391032    -0.64050706  -214.23157757    -0.00000000    -0.00000000  0.38D-14  0.71D-14 11353.23
   10     2     2     1.08034797    -0.63184383  -213.99360852    -0.00000000    -0.00000000  0.51D-14  0.99D-14 11353.23
   10     3     3     1.08034797    -0.63184383  -213.99360852    -0.00000000    -0.00000000  0.45D-14  0.90D-14 11353.23
   10     4     4     1.08034788    -0.63184377  -213.99360845    -0.00000000    -0.00000000  0.48D-14  0.98D-14 11353.23
   10     5     5     1.08034788    -0.63184377  -213.99360845    -0.00000000    -0.00000000  0.49D-14  0.99D-14 11353.23
   10     6     6     1.08034788    -0.63184377  -213.99360845    -0.00000000    -0.00000000  0.46D-14  0.93D-14 11353.23
   10     7     7     1.08029898    -0.63182080  -213.99115937    -0.00000000    -0.00000000  0.41D-14  0.71D-14 11353.23
   10     8     8     1.08037362    -0.63194054  -213.98997372    -0.00000000    -0.00000000  0.27D-14  0.59D-14 11353.23
   10     9     9     1.08037362    -0.63194054  -213.98997372    -0.00000000    -0.00000000  0.28D-14  0.60D-14 11353.23
   10    10    10     1.08037362    -0.63194054  -213.98997372    -0.00000000    -0.00000000  0.25D-14  0.54D-14 11353.23
   11     1     1     1.08391031    -0.64050706  -214.23157757    -0.00000000    -0.00000000  0.22D-15  0.41D-15 12270.91
   11     2     2     1.08034797    -0.63184383  -213.99360852    -0.00000000    -0.00000000  0.39D-15  0.69D-15 12270.91
   11     3     3     1.08034797    -0.63184383  -213.99360852    -0.00000000    -0.00000000  0.34D-15  0.62D-15 12270.91
   11     4     4     1.08034787    -0.63184377  -213.99360845    -0.00000000    -0.00000000  0.36D-15  0.74D-15 12270.91
   11     5     5     1.08034787    -0.63184377  -213.99360845    -0.00000000    -0.00000000  0.37D-15  0.73D-15 12270.91
   11     6     6     1.08034787    -0.63184377  -213.99360845     0.00000000    -0.00000000  0.35D-15  0.67D-15 12270.91
   11     7     7     1.08029899    -0.63182080  -213.99115937    -0.00000000    -0.00000000  0.28D-15  0.53D-15 12270.91
   11     8     8     1.08037362    -0.63194054  -213.98997372     0.00000000    -0.00000000  0.27D-14  0.58D-14 12270.91
   11     9     9     1.08037362    -0.63194054  -213.98997372     0.00000000    -0.00000000  0.28D-14  0.59D-14 12270.91
   11    10    10     1.08037362    -0.63194054  -213.98997372     0.00000000    -0.00000000  0.25D-14  0.54D-14 12270.91


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   2.3%
 S   0.9%  73.2%
 P   0.3%  16.4%   4.8%

 Initialization:   0.7%
 Other:            1.6%

 Total CPU:    12270.9 seconds
 =====================================



 Wavefunction saved on  5302.2

 Reference coefficients greater than 0.0500000
 =============================================
 2222222222///000000           0.9581944  -0.0000000   0.0000010   0.0000000   0.0000000   0.0000000   0.0140701   0.0000000
                              -0.0000000  -0.0000000
 2222222222/0/0/0000           0.0080261   0.7790534   0.0088220  -0.0000587  -0.0004452   0.0001058  -0.5468155   0.0000000
                              -0.0000000   0.0000000
 2222222222//0/00000          -0.0080268   0.3818870   0.6790908   0.0001449   0.0004066   0.0000685   0.5468156   0.0000000
                              -0.0000001  -0.0000000
 22222222220//00/000          -0.0080254   0.3971663  -0.6702688  -0.0002036  -0.0008515   0.0000374   0.5468155   0.0000000
                              -0.0000000   0.0000000
 2222222222/0//00000          -0.0000000  -0.0003897   0.0006486  -0.1781897  -0.6504691  -0.0197353   0.0000001  -0.1109170
                               0.6652787  -0.0000206
 2222222222//00/0000           0.0000000   0.0003898  -0.0006485   0.1781897   0.6504691   0.0197353  -0.0000001  -0.1109170
                               0.6652786  -0.0000206
 2222222222//000/000          -0.0000000  -0.0001149   0.0000014   0.2229263  -0.0802360   0.6317576  -0.0000000   0.1763631
                               0.0294238   0.6503296
 22222222220///00000          -0.0000000  -0.0001149   0.0000014   0.2229263  -0.0802360   0.6317576  -0.0000000  -0.1763631
                              -0.0294238  -0.6503295
 2222222222/0/00/000           0.0000000  -0.0000134  -0.0000031   0.6113950  -0.1603224  -0.2361026  -0.0000000   0.6414762
                               0.1069430  -0.1788008
 22222222220//0/0000          -0.0000000   0.0000134   0.0000031  -0.6113950   0.1603224   0.2361027  -0.0000000   0.6414761
                               0.1069430  -0.1788007
 2222222222/00//0000           0.0060070  -0.0252410   0.0425964   0.0000129   0.0000541  -0.0000024   0.0704012  -0.0000000
                              -0.0000000  -0.0000000
 22222222220/0/0/000          -0.0060070  -0.0495098  -0.0005597   0.0000037   0.0000283  -0.0000067  -0.0704008  -0.0000000
                               0.0000000  -0.0000000
 222222222200/0//000           0.0060070  -0.0242688  -0.0431570  -0.0000092  -0.0000258  -0.0000044   0.0704004  -0.0000000
                               0.0000000   0.0000000
 222222222200/0/0/00           0.0102832  -0.0505215   0.0045950   0.0000051   0.0000337  -0.0000067   0.0277026   0.0000000
                              -0.0000000  -0.0000000
 2222222222/000/000/          -0.0102832   0.0504048   0.0057379  -0.0000025  -0.0000240   0.0000070  -0.0277028  -0.0000000
                              -0.0000000  -0.0000000

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.959518    0.000000    0.000000    0.000000    0.000000   -0.000000   -0.014320    0.000000    0.000000   -0.000000
 2          -0.000000    0.960194   -0.000019    0.000555   -0.000163   -0.009645   -0.000000   -0.000000    0.000000   -0.000000
 3          -0.000000    0.009645   -0.000004   -0.000923    0.000002    0.960194   -0.000000    0.000000    0.000000   -0.000000
 4           0.000000   -0.000073    0.870116    0.253593    0.317261    0.000248    0.000000    0.000000    0.000000   -0.000000
 5           0.000000   -0.000550   -0.228165    0.925725   -0.114189    0.000895    0.000000   -0.000000    0.000000   -0.000000
 6           0.000000    0.000130   -0.336013    0.028087    0.899096    0.000022    0.000000   -0.000000    0.000000    0.000000
 7           0.014755    0.000000    0.000000   -0.000000   -0.000000    0.000000    0.960186    0.000000    0.000000   -0.000000
 8           0.000000    0.000000    0.000000    0.000000   -0.000000    0.000000    0.000000    0.251085   -0.157910    0.913257
 9          -0.000000   -0.000000    0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.041890    0.947144    0.152253
 10         -0.000000    0.000000   -0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.925862   -0.000029   -0.254555

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.959625    0.000000   -0.000000    0.000000    0.000000    0.000000    0.000213    0.000000   -0.000000   -0.000000
 2           0.000000    0.960243   -0.000000    0.000000    0.000000   -0.000000    0.000000    0.000000   -0.000000    0.000000
 3          -0.000000   -0.000000    0.960243   -0.000000   -0.000000   -0.000000    0.000000    0.000000   -0.000000    0.000000
 4           0.000000    0.000000   -0.000000    0.960243    0.000000   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000
 5           0.000000    0.000000   -0.000000    0.000000    0.960243    0.000000   -0.000000    0.000000    0.000000    0.000000
 6           0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.960243   -0.000000   -0.000000    0.000000    0.000000
 7           0.000213    0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.960299    0.000000   -0.000000   -0.000000
 8           0.000000    0.000000    0.000000   -0.000000    0.000000   -0.000000    0.000000    0.960218    0.000000   -0.000000
 9          -0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.000000   -0.000000    0.000000    0.960218    0.000000
 10         -0.000000    0.000000    0.000000   -0.000000    0.000000    0.000000   -0.000000   -0.000000    0.000000    0.960218


 RESULTS FOR STATE 1.2
 =====================

 Coefficient of reference function:   C(0) = 0.95951811 (fixed)   0.95973421 (relaxed)   0.95962493 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00185209   -0.00532612   -0.50759731
 Singles      0.02203205   -0.09048437   -0.09632042
 Pairs        0.06203367    0.00000000   -0.03658933
 Total        1.08591781   -0.09581049   -0.64050706
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.59101738
 Nuclear energy                         0.00000000
 Kinetic energy                        69.24748740
 One electron energy                 -372.53903134
 Two electron energy                  158.30745377
 Virial quotient                       -3.09370904
 Correlation energy                    -0.64056020
 !MRCI STATE 1.2 Energy              -214.231577573359

 Properties without orbital relaxation:

 !MRCI STATE 1.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.28661311 (Davidson, fixed reference)
 Cluster corrected energies          -214.28645470 (Davidson, relaxed reference)
 Cluster corrected energies          -214.28661311 (Davidson, rotated reference)

 Cluster corrected energies          -214.28472469 (Pople, fixed reference)
 Cluster corrected energies          -214.28456071 (Pople, relaxed reference)
 Cluster corrected energies          -214.28472469 (Pople, rotated reference)



 RESULTS FOR STATE 2.2
 =====================

 Coefficient of reference function:   C(0) = 0.96019437 (fixed)   0.96030345 (relaxed)   0.96024298 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00386210   -0.00948493   -0.49949080
 Singles      0.02229363   -0.09257612   -0.09834966
 Pairs        0.05836466    0.00000000   -0.03400337
 Total        1.08452038   -0.10206106   -0.63184383
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.36176468
 Nuclear energy                         0.00000000
 Kinetic energy                        69.02757427
 One electron energy                 -368.16597531
 Two electron energy                  154.17236679
 Virial quotient                       -3.10011775
 Correlation energy                    -0.63184383
 !MRCI STATE 2.2 Energy              -213.993608516358

 Properties without orbital relaxation:

 !MRCI STATE 2.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.04701220 (Davidson, fixed reference)
 Cluster corrected energies          -214.04692590 (Davidson, relaxed reference)
 Cluster corrected energies          -214.04701220 (Davidson, rotated reference)

 Cluster corrected energies          -214.04511930 (Pople, fixed reference)
 Cluster corrected energies          -214.04503017 (Pople, relaxed reference)
 Cluster corrected energies          -214.04511930 (Pople, rotated reference)



 RESULTS FOR STATE 3.2
 =====================

 Maximum overlap with reference state  6

 Coefficient of reference function:   C(0) = 0.96019409 (fixed)   0.96030345 (relaxed)   0.96024298 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00386210   -0.00948493   -0.49949080
 Singles      0.02229363   -0.09257612   -0.09834966
 Pairs        0.05836466    0.00000000   -0.03400337
 Total        1.08452038   -0.10206105   -0.63184383
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.36176468
 Nuclear energy                         0.00000000
 Kinetic energy                        69.02757427
 One electron energy                 -368.16597525
 Two electron energy                  154.17236673
 Virial quotient                       -3.10011775
 Correlation energy                    -0.63184383
 !MRCI STATE 3.2 Energy              -213.993608516158

 Properties without orbital relaxation:

 !MRCI STATE 3.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.04701220 (Davidson, fixed reference)
 Cluster corrected energies          -214.04692590 (Davidson, relaxed reference)
 Cluster corrected energies          -214.04701220 (Davidson, rotated reference)

 Cluster corrected energies          -214.04511930 (Pople, fixed reference)
 Cluster corrected energies          -214.04503017 (Pople, relaxed reference)
 Cluster corrected energies          -214.04511930 (Pople, rotated reference)



 RESULTS FOR STATE 4.2
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.87011633 (fixed)   0.96030349 (relaxed)   0.96024302 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00386210   -0.00948494   -0.49949087
 Singles      0.02229353   -0.09257605   -0.09834954
 Pairs        0.05836466    0.00000002   -0.03400335
 Total        1.08452028   -0.10206097   -0.63184377
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.36176468
 Nuclear energy                         0.00000000
 Kinetic energy                        69.02757308
 One electron energy                 -368.16597429
 Two electron energy                  154.17236584
 Virial quotient                       -3.10011781
 Correlation energy                    -0.63184377
 !MRCI STATE 4.2 Energy              -213.993608447572

 Properties without orbital relaxation:

 !MRCI STATE 4.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.04701206 (Davidson, fixed reference)
 Cluster corrected energies          -214.04692577 (Davidson, relaxed reference)
 Cluster corrected energies          -214.04701206 (Davidson, rotated reference)

 Cluster corrected energies          -214.04511917 (Pople, fixed reference)
 Cluster corrected energies          -214.04503004 (Pople, relaxed reference)
 Cluster corrected energies          -214.04511917 (Pople, rotated reference)



 RESULTS FOR STATE 5.2
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.92572514 (fixed)   0.96030349 (relaxed)   0.96024302 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00386210   -0.00948494   -0.49949085
 Singles      0.02229353   -0.09257605   -0.09834954
 Pairs        0.05836466    0.00000000   -0.03400337
 Total        1.08452028   -0.10206098   -0.63184377
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.36176468
 Nuclear energy                         0.00000000
 Kinetic energy                        69.02757308
 One electron energy                 -368.16597430
 Two electron energy                  154.17236585
 Virial quotient                       -3.10011781
 Correlation energy                    -0.63184377
 !MRCI STATE 5.2 Energy              -213.993608447538

 Properties without orbital relaxation:

 !MRCI STATE 5.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.04701206 (Davidson, fixed reference)
 Cluster corrected energies          -214.04692577 (Davidson, relaxed reference)
 Cluster corrected energies          -214.04701206 (Davidson, rotated reference)

 Cluster corrected energies          -214.04511917 (Pople, fixed reference)
 Cluster corrected energies          -214.04503004 (Pople, relaxed reference)
 Cluster corrected energies          -214.04511917 (Pople, rotated reference)



 RESULTS FOR STATE 6.2
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.89909562 (fixed)   0.96030349 (relaxed)   0.96024302 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00386210   -0.00948494   -0.49949083
 Singles      0.02229353   -0.09257605   -0.09834954
 Pairs        0.05836466   -0.00000003   -0.03400340
 Total        1.08452028   -0.10206101   -0.63184377
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.36176468
 Nuclear energy                         0.00000000
 Kinetic energy                        69.02757308
 One electron energy                 -368.16597426
 Two electron energy                  154.17236581
 Virial quotient                       -3.10011781
 Correlation energy                    -0.63184377
 !MRCI STATE 6.2 Energy              -213.993608447368

 Properties without orbital relaxation:

 !MRCI STATE 6.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.04701206 (Davidson, fixed reference)
 Cluster corrected energies          -214.04692577 (Davidson, relaxed reference)
 Cluster corrected energies          -214.04701206 (Davidson, rotated reference)

 Cluster corrected energies          -214.04511917 (Pople, fixed reference)
 Cluster corrected energies          -214.04503004 (Pople, relaxed reference)
 Cluster corrected energies          -214.04511917 (Pople, rotated reference)



 RESULTS FOR STATE 7.2
 =====================

 Coefficient of reference function:   C(0) = 0.96018579 (fixed)   0.96037293 (relaxed)   0.96029912 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00379023   -0.00935148   -0.49924174
 Singles      0.02244152   -0.09284102   -0.09869114
 Pairs        0.05816182    0.00000000   -0.03388792
 Total        1.08439357   -0.10219250   -0.63182080
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.35939171
 Nuclear energy                         0.00000000
 Kinetic energy                        69.03006103
 One electron energy                 -368.13068026
 Two electron energy                  154.13952089
 Virial quotient                       -3.09997059
 Correlation energy                    -0.63176766
 !MRCI STATE 7.2 Energy              -213.991159369516

 Properties without orbital relaxation:

 !MRCI STATE 7.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.04447650 (Davidson, fixed reference)
 Cluster corrected energies          -214.04437120 (Davidson, relaxed reference)
 Cluster corrected energies          -214.04447650 (Davidson, rotated reference)

 Cluster corrected energies          -214.04258120 (Pople, fixed reference)
 Cluster corrected energies          -214.04247247 (Pople, relaxed reference)
 Cluster corrected energies          -214.04258120 (Pople, rotated reference)



 RESULTS FOR STATE 8.2
 =====================

 Maximum overlap with reference state 10

 Coefficient of reference function:   C(0) = 0.91325733 (fixed)   0.96027120 (relaxed)   0.96021778 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00389096   -0.00952398   -0.03494751
 Singles      0.02215680   -0.09241173   -0.09811519
 Pairs        0.05852955   -0.50408440   -0.49887785
 Total        1.08457731   -0.60602010   -0.63194054
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.35803318
 Nuclear energy                         0.00000000
 Kinetic energy                        69.02733636
 One electron energy                 -368.14025596
 Two electron energy                  154.15028224
 Virial quotient                       -3.10007578
 Correlation energy                    -0.63194054
 !MRCI STATE 8.2 Energy              -213.989973721086

 Properties without orbital relaxation:

 !MRCI STATE 8.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.04342155 (Davidson, fixed reference)
 Cluster corrected energies          -214.04334529 (Davidson, relaxed reference)
 Cluster corrected energies          -214.04342155 (Davidson, rotated reference)

 Cluster corrected energies          -214.04152956 (Pople, fixed reference)
 Cluster corrected energies          -214.04145078 (Pople, relaxed reference)
 Cluster corrected energies          -214.04152956 (Pople, rotated reference)



 RESULTS FOR STATE 9.2
 =====================

 Coefficient of reference function:   C(0) = 0.94714439 (fixed)   0.96027120 (relaxed)   0.96021778 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00389096   -0.00952398   -0.42223801
 Singles      0.02215680   -0.09241173   -0.09811519
 Pairs        0.05852955   -0.08403791   -0.11158735
 Total        1.08457731   -0.18597361   -0.63194054
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.35803318
 Nuclear energy                         0.00000000
 Kinetic energy                        69.02733636
 One electron energy                 -368.14025598
 Two electron energy                  154.15028226
 Virial quotient                       -3.10007578
 Correlation energy                    -0.63194054
 !MRCI STATE 9.2 Energy              -213.989973721055

 Properties without orbital relaxation:

 !MRCI STATE 9.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.04342155 (Davidson, fixed reference)
 Cluster corrected energies          -214.04334529 (Davidson, relaxed reference)
 Cluster corrected energies          -214.04342155 (Davidson, rotated reference)

 Cluster corrected energies          -214.04152956 (Pople, fixed reference)
 Cluster corrected energies          -214.04145078 (Pople, relaxed reference)
 Cluster corrected energies          -214.04152956 (Pople, rotated reference)



 RESULTS FOR STATE 10.2
 ======================

 Maximum overlap with reference state  8

 Coefficient of reference function:   C(0) = 0.92586167 (fixed)   0.96027120 (relaxed)   0.96021778 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00389097   -0.00952398   -0.62927072
 Singles      0.02215680   -0.09241173   -0.09811519
 Pairs        0.05852955    0.14050508    0.09544537
 Total        1.08457731    0.03856937   -0.63194054
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.35803318
 Nuclear energy                         0.00000000
 Kinetic energy                        69.02733635
 One electron energy                 -368.14025586
 Two electron energy                  154.15028214
 Virial quotient                       -3.10007578
 Correlation energy                    -0.63194054
 !MRCI STATE 10.2 Energy             -213.989973720671

 Properties without orbital relaxation:

 !MRCI STATE 10.2 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.04342155 (Davidson, fixed reference)
 Cluster corrected energies          -214.04334529 (Davidson, relaxed reference)
 Cluster corrected energies          -214.04342155 (Davidson, rotated reference)

 Cluster corrected energies          -214.04152956 (Pople, fixed reference)
 Cluster corrected energies          -214.04145078 (Pople, relaxed reference)
 Cluster corrected energies          -214.04152956 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       42.95       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       5      798.96       700     1000      520     2140     5302   
                                         GEOM     BASIS   MCVARS    MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI       INT
 CPU TIMES  *     13910.41  13902.19      7.15      0.73
 REAL TIME  *     14087.18 SEC
 DISK USED  *       841.99 MB (local),       13.24 GB (total)
 SF USED    *         8.34 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =      -214.28661311  AU                              
 SETTING HLSDIAG(2)     =      -214.04701220  AU                              
 SETTING HLSDIAG(3)     =      -214.04701220  AU                              
 SETTING HLSDIAG(4)     =      -214.04701206  AU                              
 SETTING HLSDIAG(5)     =      -214.04701206  AU                              
 SETTING HLSDIAG(6)     =      -214.04701206  AU                              
 SETTING HLSDIAG(7)     =      -214.04447650  AU                              
 SETTING HLSDIAG(8)     =      -214.04342155  AU                              
 SETTING HLSDIAG(9)     =      -214.04342155  AU                              
 SETTING HLSDIAG(10)    =      -214.04342155  AU                              


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-14  THRDEN = 1.00D-09

 Number of optimized states: 8  Roots:    1   2   3   4   5   6   7   8
 Number of reference states: 8  Roots:    1   2   3   4   5   6   7   8

 Reference symmetry:                   2   Doublet 
 Number of electrons:                 23
 Maximum number of shells:             5
 Maximum number of spin couplings:    42

 Reference space:      156 conf      240 CSFs
 N elec internal:    52806 conf   246300 CSFs
 N-1 el internal:    24375 conf   156741 CSFs
 N-2 el internal:     9039 conf    76758 CSFs

 Number of electrons in valence space:                     23
 Maximum number of open shell orbitals in reference space:  3
 Maximum number of open shell orbitals in internal spaces:  9


 Number of closed-shell orbitals:  10 (   7   3 )
 Number of active  orbitals:        9 (   0   9 )
 Number of external orbitals:      93 (  46  47 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Coulomb and exchange operators available. No transformation done.


 Number of p-space configurations:  62

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -213.53571088
     2      -213.53571088
     3      -213.53571088
     4      -213.53571088
     5      -213.53571088
     6      -213.50053857
     7      -213.50053857
     8      -213.50053857

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2617D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.3307D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2921D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2617D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.3307D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2921D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2617D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.3307D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2921D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2617D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.3307D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2921D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2617D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.3307D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2921D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2617D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.3307D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2921D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2617D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.3307D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2921D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2617D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.3307D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2921D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2617D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.3307D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2921D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2617D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.3307D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2921D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2617D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.3307D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2921D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2617D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.3307D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2921D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2617D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.3307D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2921D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2617D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.3307D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2921D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2617D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.3307D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2921D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2617D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.3307D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2921D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2617D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.3307D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2921D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2617D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.3307D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2921D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2617D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.3307D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2921D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2617D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.3307D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2921D-06

 Number of blocks in overlap matrix:   883   Smallest eigenvalue:  0.26D-06
 Number of N-2 electron functions:    1838
 Number of N-1 electron functions:  156741

 Number of internal configurations:               137562
 Number of singly external configurations:       7297863
 Number of doubly external configurations:       3977870
 Total number of contracted configurations:     11413295
 Total number of uncontracted configurations:  172908369

 Diagonal Coupling coefficients finished.               Storage:  65681225 words, CPU-Time:    137.34 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   2011472 words, CPU-time:      0.54 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -213.53571088     0.00000000    -0.81429195  0.65D-01  0.10D+00   185.86
    1     2     2     1.00000000     0.00000000  -213.53571088    -0.00000000    -0.81393765  0.65D-01  0.10D+00   185.86
    1     3     3     1.00000000     0.00000000  -213.53571088     0.00000000    -0.81431339  0.65D-01  0.10D+00   185.86
    1     4     4     1.00000000     0.00000000  -213.53571088     0.00000000    -0.81490200  0.65D-01  0.10D+00   185.86
    1     5     5     1.00000000     0.00000000  -213.53571088     0.00000000    -0.81554774  0.66D-01  0.10D+00   185.86
    1     6     6     1.00000000     0.00000000  -213.50053857    -0.00000000    -0.80969435  0.52D-01  0.11D+00   185.86
    1     7     7     1.00000000     0.00000000  -213.50053857    -0.00000000    -0.81008927  0.52D-01  0.11D+00   185.86
    1     8     8     1.00000000     0.00000000  -213.50053857     0.00000000    -0.81212177  0.52D-01  0.11D+00   185.86
    2     1     1     1.09737539    -0.62914961  -214.16486049    -0.62914961    -0.02016105  0.33D-02  0.14D-02  1336.17
    2     2     2     1.09735292    -0.62914744  -214.16485832    -0.62914744    -0.02014789  0.33D-02  0.14D-02  1336.17
    2     3     3     1.09728087    -0.62913204  -214.16484293    -0.62913204    -0.02018149  0.33D-02  0.14D-02  1336.17
    2     4     4     1.09794622    -0.62890737  -214.16461825    -0.62890737    -0.02042045  0.34D-02  0.15D-02  1336.17
    2     5     5     1.09819362    -0.62871422  -214.16442510    -0.62871422    -0.02064716  0.35D-02  0.15D-02  1336.17
    2     6     6     1.09352332    -0.63162071  -214.13215928    -0.63162071    -0.02050642  0.34D-02  0.15D-02  1336.17
    2     7     7     1.09350062    -0.63161037  -214.13214895    -0.63161037    -0.02049727  0.34D-02  0.14D-02  1336.17
    2     8     8     1.09513019    -0.63113851  -214.13167709    -0.63113851    -0.02101678  0.34D-02  0.17D-02  1336.17
    3     1     1     1.08862074    -0.64764221  -214.18335309    -0.01849261    -0.00032108  0.46D-04  0.31D-04  2481.10
    3     2     2     1.08860624    -0.64764124  -214.18335212    -0.01849380    -0.00032154  0.46D-04  0.31D-04  2481.10
    3     3     3     1.08860770    -0.64764011  -214.18335099    -0.01850806    -0.00032266  0.46D-04  0.31D-04  2481.10
    3     4     4     1.08866719    -0.64763749  -214.18334837    -0.01873012    -0.00032666  0.47D-04  0.31D-04  2481.10
    3     5     5     1.08868687    -0.64763397  -214.18334485    -0.01891975    -0.00033046  0.47D-04  0.32D-04  2481.10
    3     6     6     1.08649794    -0.65037812  -214.15091670    -0.01875742    -0.00031871  0.35D-04  0.35D-04  2481.10
    3     7     7     1.08647856    -0.65037530  -214.15091388    -0.01876493    -0.00032097  0.35D-04  0.36D-04  2481.10
    3     8     8     1.08671875    -0.65037114  -214.15090971    -0.01923263    -0.00032799  0.37D-04  0.36D-04  2481.10
    4     1     1     1.08852749    -0.64796421  -214.18367509    -0.00032200    -0.00001062  0.22D-05  0.10D-05  3620.06
    4     2     2     1.08852417    -0.64796411  -214.18367500    -0.00032288    -0.00001070  0.22D-05  0.10D-05  3620.06
    4     3     3     1.08851429    -0.64796387  -214.18367475    -0.00032376    -0.00001085  0.23D-05  0.11D-05  3620.06
    4     4     4     1.08851058    -0.64796375  -214.18367464    -0.00032627    -0.00001094  0.22D-05  0.11D-05  3620.06
    4     5     5     1.08851037    -0.64796371  -214.18367459    -0.00032974    -0.00001093  0.23D-05  0.11D-05  3620.06
    4     6     6     1.08679991    -0.65069794  -214.15123651    -0.00031982    -0.00000931  0.17D-05  0.99D-06  3620.06
    4     7     7     1.08675033    -0.65069742  -214.15123600    -0.00032212    -0.00000961  0.18D-05  0.11D-05  3620.06
    4     8     8     1.08674419    -0.65069730  -214.15123587    -0.00032616    -0.00000972  0.17D-05  0.12D-05  3620.06
    5     1     1     1.08853656    -0.64797556  -214.18368644    -0.00001135    -0.00000040  0.63D-07  0.53D-07  4750.61
    5     2     2     1.08853650    -0.64797555  -214.18368643    -0.00001143    -0.00000041  0.65D-07  0.54D-07  4750.61
    5     3     3     1.08853408    -0.64797551  -214.18368639    -0.00001164    -0.00000044  0.67D-07  0.63D-07  4750.61
    5     4     4     1.08853391    -0.64797551  -214.18368639    -0.00001175    -0.00000044  0.66D-07  0.63D-07  4750.61
    5     5     5     1.08853296    -0.64797549  -214.18368637    -0.00001178    -0.00000045  0.68D-07  0.66D-07  4750.61
    5     6     6     1.08688247    -0.65070791  -214.15124648    -0.00000997    -0.00000030  0.39D-07  0.43D-07  4750.61
    5     7     7     1.08687247    -0.65070784  -214.15124641    -0.00001042    -0.00000035  0.37D-07  0.63D-07  4750.61
    5     8     8     1.08687164    -0.65070784  -214.15124641    -0.00001054    -0.00000035  0.36D-07  0.63D-07  4750.61
    6     1     1     1.08852307    -0.64797598  -214.18368686    -0.00000042    -0.00000002  0.19D-08  0.28D-08  5883.37
    6     2     2     1.08852305    -0.64797598  -214.18368686    -0.00000043    -0.00000002  0.20D-08  0.29D-08  5883.37
    6     3     3     1.08852225    -0.64797598  -214.18368686    -0.00000047    -0.00000002  0.22D-08  0.37D-08  5883.37
    6     4     4     1.08852225    -0.64797598  -214.18368686    -0.00000047    -0.00000002  0.22D-08  0.37D-08  5883.37
    6     5     5     1.08852198    -0.64797598  -214.18368686    -0.00000048    -0.00000002  0.23D-08  0.39D-08  5883.37
    6     6     6     1.08688264    -0.65070823  -214.15124680    -0.00000032    -0.00000001  0.11D-08  0.20D-08  5883.37
    6     7     7     1.08688044    -0.65070822  -214.15124679    -0.00000038    -0.00000002  0.14D-08  0.33D-08  5883.37
    6     8     8     1.08688057    -0.65070822  -214.15124679    -0.00000038    -0.00000002  0.14D-08  0.33D-08  5883.37
    7     1     1     1.08852364    -0.64797600  -214.18368688    -0.00000002    -0.00000000  0.11D-09  0.15D-09  7008.51
    7     2     2     1.08852363    -0.64797600  -214.18368688    -0.00000002    -0.00000000  0.11D-09  0.16D-09  7008.51
    7     3     3     1.08852338    -0.64797600  -214.18368688    -0.00000002    -0.00000000  0.14D-09  0.20D-09  7008.51
    7     4     4     1.08852334    -0.64797600  -214.18368688    -0.00000002    -0.00000000  0.15D-09  0.21D-09  7008.51
    7     5     5     1.08852339    -0.64797600  -214.18368688    -0.00000002    -0.00000000  0.13D-09  0.20D-09  7008.51
    7     6     6     1.08688494    -0.65070824  -214.15124681    -0.00000001    -0.00000000  0.55D-10  0.10D-09  7008.51
    7     7     7     1.08688461    -0.65070824  -214.15124681    -0.00000002    -0.00000000  0.76D-10  0.18D-09  7008.51
    7     8     8     1.08688464    -0.65070824  -214.15124681    -0.00000002    -0.00000000  0.76D-10  0.19D-09  7008.51
    8     1     1     1.08852320    -0.64797600  -214.18368688    -0.00000000    -0.00000000  0.53D-11  0.10D-10  8134.96
    8     2     2     1.08852322    -0.64797600  -214.18368688    -0.00000000    -0.00000000  0.51D-11  0.97D-11  8134.96
    8     3     3     1.08852317    -0.64797600  -214.18368688    -0.00000000    -0.00000000  0.61D-11  0.13D-10  8134.96
    8     4     4     1.08852317    -0.64797600  -214.18368688    -0.00000000    -0.00000000  0.61D-11  0.12D-10  8134.96
    8     5     5     1.08852317    -0.64797600  -214.18368688    -0.00000000    -0.00000000  0.60D-11  0.12D-10  8134.96
    8     6     6     1.08688483    -0.65070824  -214.15124681    -0.00000000    -0.00000000  0.28D-11  0.56D-11  8134.96
    8     7     7     1.08688476    -0.65070824  -214.15124681    -0.00000000    -0.00000000  0.50D-11  0.11D-10  8134.96
    8     8     8     1.08688476    -0.65070824  -214.15124681    -0.00000000    -0.00000000  0.51D-11  0.11D-10  8134.96
    9     1     1     1.08852320    -0.64797600  -214.18368688    -0.00000000    -0.00000000  0.24D-12  0.56D-12  9258.53
    9     2     2     1.08852321    -0.64797600  -214.18368688    -0.00000000    -0.00000000  0.23D-12  0.54D-12  9258.53
    9     3     3     1.08852319    -0.64797600  -214.18368688    -0.00000000    -0.00000000  0.31D-12  0.71D-12  9258.53
    9     4     4     1.08852320    -0.64797600  -214.18368688    -0.00000000    -0.00000000  0.30D-12  0.68D-12  9258.53
    9     5     5     1.08852319    -0.64797600  -214.18368688    -0.00000000    -0.00000000  0.31D-12  0.70D-12  9258.53
    9     6     6     1.08688491    -0.65070824  -214.15124681    -0.00000000    -0.00000000  0.23D-12  0.68D-12  9258.53
    9     7     7     1.08688493    -0.65070824  -214.15124681    -0.00000000    -0.00000000  0.12D-12  0.30D-12  9258.53
    9     8     8     1.08688491    -0.65070824  -214.15124681    -0.00000000    -0.00000000  0.24D-12  0.70D-12  9258.53
   10     1     1     1.08852322    -0.64797600  -214.18368688    -0.00000000    -0.00000000  0.21D-13  0.36D-13 10385.69
   10     2     2     1.08852323    -0.64797600  -214.18368688    -0.00000000    -0.00000000  0.20D-13  0.35D-13 10385.69
   10     3     3     1.08852322    -0.64797600  -214.18368688    -0.00000000    -0.00000000  0.27D-13  0.46D-13 10385.69
   10     4     4     1.08852322    -0.64797600  -214.18368688    -0.00000000    -0.00000000  0.27D-13  0.44D-13 10385.69
   10     5     5     1.08852322    -0.64797600  -214.18368688    -0.00000000    -0.00000000  0.27D-13  0.46D-13 10385.69
   10     6     6     1.08688494    -0.65070824  -214.15124681    -0.00000000    -0.00000000  0.15D-13  0.43D-13 10385.69
   10     7     7     1.08688495    -0.65070824  -214.15124681    -0.00000000    -0.00000000  0.65D-14  0.15D-13 10385.69
   10     8     8     1.08688495    -0.65070824  -214.15124681    -0.00000000    -0.00000000  0.15D-13  0.44D-13 10385.69
   11     1     1     1.08852323    -0.64797600  -214.18368688    -0.00000000    -0.00000000  0.11D-14  0.26D-14 11503.90
   11     2     2     1.08852323    -0.64797600  -214.18368688    -0.00000000    -0.00000000  0.99D-15  0.25D-14 11503.90
   11     3     3     1.08852323    -0.64797600  -214.18368688    -0.00000000    -0.00000000  0.13D-14  0.35D-14 11503.90
   11     4     4     1.08852323    -0.64797600  -214.18368688    -0.00000000    -0.00000000  0.13D-14  0.33D-14 11503.90
   11     5     5     1.08852323    -0.64797600  -214.18368688    -0.00000000    -0.00000000  0.13D-14  0.34D-14 11503.90
   11     6     6     1.08688495    -0.65070824  -214.15124681    -0.00000000    -0.00000000  0.12D-14  0.30D-14 11503.90
   11     7     7     1.08688495    -0.65070824  -214.15124681    -0.00000000    -0.00000000  0.37D-15  0.96D-15 11503.90
   11     8     8     1.08688495    -0.65070824  -214.15124681     0.00000000    -0.00000000  0.12D-14  0.31D-14 11503.90


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   2.2%
 S   1.0%  65.3%
 P   0.3%  21.2%   7.5%

 Initialization:   1.2%
 Other:            1.3%

 Total CPU:    11503.9 seconds
 =====================================



 Wavefunction saved on  5102.2

 Reference coefficients greater than 0.0500000
 =============================================
 2222222222//\000000           0.8865787  -0.3465497   0.0403083  -0.0322571   0.0112633  -0.0000000   0.0000000   0.0000000
 2222222222/\/000000           0.1192136   0.2641656   0.3293312   0.8463714  -0.0105638  -0.0000000  -0.0000000   0.0000000
 2222222222/02000000           0.2326657   0.5920853  -0.1580265  -0.1557987   0.0226147   0.0004569   0.6682911  -0.0541171
 2222222222/20000000          -0.2326656  -0.5920852   0.1580265   0.1557986  -0.0226147   0.0004569   0.6682910  -0.0541171
 222222222202/000000          -0.0143008  -0.0028932   0.0853825  -0.0219660   0.6681839   0.1089431   0.0533239   0.6594162
 222222222220/000000           0.0143008   0.0028932  -0.0853825   0.0219660  -0.6681839   0.1089431   0.0533239   0.6594161
 22222222220/2000000           0.0008083   0.0945615   0.6059298  -0.2664714  -0.0857608   0.6615686  -0.0092426  -0.1085513
 22222222222/0000000          -0.0008083  -0.0945615  -0.6059297   0.2664714   0.0857607   0.6615685  -0.0092426  -0.1085513
 2222222222//00\0000          -0.0096764  -0.0246245   0.0065722   0.0064796  -0.0009405   0.0000382   0.0559098  -0.0045275
 2222222222/0/\00000           0.0096762   0.0246240  -0.0065721  -0.0064794   0.0009405   0.0000382   0.0559092  -0.0045274
 2222222222//000\000           0.0000336   0.0039328   0.0252008  -0.0110826  -0.0035668  -0.0553480   0.0007733   0.0090816
 22222222220//\00000           0.0000336   0.0039327   0.0251998  -0.0110822  -0.0035667   0.0553468  -0.0007732  -0.0090814
 2222222222/0/00\000          -0.0005948  -0.0001203   0.0035511  -0.0009136   0.0277900  -0.0091144  -0.0044612  -0.0551680
 22222222220//0\0000           0.0005948   0.0001203  -0.0035510   0.0009136  -0.0277894  -0.0091143  -0.0044611  -0.0551674

  Internal coefficients greater than 0.0500000
 =============================================
 2222220222/22000000          -0.0000000  -0.0000000   0.0000000   0.0000000  -0.0000000  -0.0000358  -0.0523806   0.0042417
 22222202222/2000000          -0.0000000  -0.0000000  -0.0000000   0.0000000   0.0000000  -0.0518537   0.0007244   0.0085082
 222222022222/000000           0.0000000   0.0000000  -0.0000000   0.0000000  -0.0000000  -0.0085390  -0.0041795  -0.0516850

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.664795    0.001148   -0.020307    0.330384    0.604017    0.000000    0.000000   -0.000000
 2          -0.021120    0.134277   -0.004108    0.840758   -0.437023   -0.000000    0.000000   -0.000000
 3           0.279062    0.860417    0.121243   -0.224397   -0.181961   -0.000000   -0.000000    0.000000
 4           0.629350   -0.378388   -0.031192   -0.221233   -0.571997    0.000000   -0.000000    0.000000
 5          -0.000833   -0.121780    0.948817    0.032113    0.015483    0.000000   -0.000000    0.000000
 6          -0.000000    0.000000   -0.000000    0.000000    0.000000    0.943950    0.155444    0.000652
 7          -0.000000   -0.000000   -0.000000    0.000000    0.000000   -0.013188    0.076084    0.953542
 8           0.000000   -0.000000    0.000000   -0.000000   -0.000000   -0.154885    0.940879   -0.077216

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.957265   -0.000000    0.000000    0.000000   -0.000000   -0.000000    0.000000   -0.000000
 2          -0.000000    0.957265    0.000000    0.000000    0.000000    0.000000   -0.000000   -0.000000
 3           0.000000    0.000000    0.957265    0.000000    0.000000    0.000000   -0.000000   -0.000000
 4           0.000000    0.000000    0.000000    0.957265   -0.000000   -0.000000    0.000000    0.000000
 5          -0.000000    0.000000    0.000000   -0.000000    0.957265   -0.000000   -0.000000    0.000000
 6          -0.000000    0.000000    0.000000   -0.000000   -0.000000    0.956663    0.000000    0.000000
 7           0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.000000    0.956663    0.000000
 8          -0.000000   -0.000000   -0.000000    0.000000    0.000000    0.000000    0.000000    0.956663


 RESULTS FOR STATE 1.2
 =====================

 Coefficient of reference function:   C(0) = 0.66479474 (fixed)   0.95741400 (relaxed)   0.95726479 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00253173   -0.00669112   -0.50728808
 Singles      0.02545309   -0.09602363   -0.10310527
 Pairs        0.06329425    0.00000000   -0.03758265
 Total        1.09127907   -0.10271475   -0.64797600
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.53571088
 Nuclear energy                         0.00000000
 Kinetic energy                        69.20825713
 One electron energy                 -372.28532268
 Two electron energy                  158.10163580
 Virial quotient                       -3.09477071
 Correlation energy                    -0.64797600
 !MRCI STATE 1.2 Energy              -214.183686881822

 Properties without orbital relaxation:

 !MRCI STATE 1.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.24283353 (Davidson, fixed reference)
 Cluster corrected energies          -214.24261314 (Davidson, relaxed reference)
 Cluster corrected energies          -214.24283353 (Davidson, rotated reference)

 Cluster corrected energies          -214.24174969 (Pople, fixed reference)
 Cluster corrected energies          -214.24151632 (Pople, relaxed reference)
 Cluster corrected energies          -214.24174969 (Pople, rotated reference)



 RESULTS FOR STATE 2.2
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.84075751 (fixed)   0.95741400 (relaxed)   0.95726479 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00253173   -0.00669112   -0.50728808
 Singles      0.02545309   -0.09602363   -0.10310527
 Pairs        0.06329425    0.00000000   -0.03758265
 Total        1.09127907   -0.10271475   -0.64797600
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.53571088
 Nuclear energy                         0.00000000
 Kinetic energy                        69.20825714
 One electron energy                 -372.28532268
 Two electron energy                  158.10163580
 Virial quotient                       -3.09477071
 Correlation energy                    -0.64797600
 !MRCI STATE 2.2 Energy              -214.183686881778

 Properties without orbital relaxation:

 !MRCI STATE 2.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.24283353 (Davidson, fixed reference)
 Cluster corrected energies          -214.24261314 (Davidson, relaxed reference)
 Cluster corrected energies          -214.24283353 (Davidson, rotated reference)

 Cluster corrected energies          -214.24174969 (Pople, fixed reference)
 Cluster corrected energies          -214.24151632 (Pople, relaxed reference)
 Cluster corrected energies          -214.24174969 (Pople, rotated reference)



 RESULTS FOR STATE 3.2
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.86041658 (fixed)   0.95741400 (relaxed)   0.95726479 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00253173   -0.00669112   -0.50728808
 Singles      0.02545309   -0.09602364   -0.10310527
 Pairs        0.06329425   -0.00000000   -0.03758265
 Total        1.09127907   -0.10271475   -0.64797600
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.53571088
 Nuclear energy                         0.00000000
 Kinetic energy                        69.20825714
 One electron energy                 -372.28532266
 Two electron energy                  158.10163578
 Virial quotient                       -3.09477071
 Correlation energy                    -0.64797600
 !MRCI STATE 3.2 Energy              -214.183686881729

 Properties without orbital relaxation:

 !MRCI STATE 3.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.24283353 (Davidson, fixed reference)
 Cluster corrected energies          -214.24261314 (Davidson, relaxed reference)
 Cluster corrected energies          -214.24283353 (Davidson, rotated reference)

 Cluster corrected energies          -214.24174969 (Pople, fixed reference)
 Cluster corrected energies          -214.24151632 (Pople, relaxed reference)
 Cluster corrected energies          -214.24174969 (Pople, rotated reference)



 RESULTS FOR STATE 4.2
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.62934993 (fixed)   0.95741400 (relaxed)   0.95726479 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00253173   -0.00669112   -0.50728808
 Singles      0.02545309   -0.09602364   -0.10310527
 Pairs        0.06329425   -0.00000000   -0.03758265
 Total        1.09127907   -0.10271475   -0.64797600
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.53571088
 Nuclear energy                         0.00000000
 Kinetic energy                        69.20825713
 One electron energy                 -372.28532267
 Two electron energy                  158.10163579
 Virial quotient                       -3.09477071
 Correlation energy                    -0.64797600
 !MRCI STATE 4.2 Energy              -214.183686881699

 Properties without orbital relaxation:

 !MRCI STATE 4.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.24283353 (Davidson, fixed reference)
 Cluster corrected energies          -214.24261314 (Davidson, relaxed reference)
 Cluster corrected energies          -214.24283353 (Davidson, rotated reference)

 Cluster corrected energies          -214.24174969 (Pople, fixed reference)
 Cluster corrected energies          -214.24151632 (Pople, relaxed reference)
 Cluster corrected energies          -214.24174969 (Pople, rotated reference)



 RESULTS FOR STATE 5.2
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.94881713 (fixed)   0.95741400 (relaxed)   0.95726479 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00253173   -0.00669112   -0.50728808
 Singles      0.02545309   -0.09602364   -0.10310527
 Pairs        0.06329425   -0.00000000   -0.03758265
 Total        1.09127907   -0.10271475   -0.64797600
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.53571088
 Nuclear energy                         0.00000000
 Kinetic energy                        69.20825715
 One electron energy                 -372.28532265
 Two electron energy                  158.10163577
 Virial quotient                       -3.09477071
 Correlation energy                    -0.64797600
 !MRCI STATE 5.2 Energy              -214.183686881583

 Properties without orbital relaxation:

 !MRCI STATE 5.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.24283353 (Davidson, fixed reference)
 Cluster corrected energies          -214.24261314 (Davidson, relaxed reference)
 Cluster corrected energies          -214.24283353 (Davidson, rotated reference)

 Cluster corrected energies          -214.24174969 (Pople, fixed reference)
 Cluster corrected energies          -214.24151632 (Pople, relaxed reference)
 Cluster corrected energies          -214.24174969 (Pople, rotated reference)



 RESULTS FOR STATE 6.2
 =====================

 Coefficient of reference function:   C(0) = 0.94395002 (fixed)   0.95683289 (relaxed)   0.95666342 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00530556   -0.01131162   -0.51789165
 Singles      0.02027893   -0.08790972   -0.09253215
 Pairs        0.06706699   -0.00037582   -0.04028445
 Total        1.09265148   -0.09959716   -0.65070824
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.50053857
 Nuclear energy                         0.00000000
 Kinetic energy                        69.18465429
 One electron energy                 -372.10513157
 Two electron energy                  157.95388476
 Virial quotient                       -3.09535762
 Correlation energy                    -0.65070824
 !MRCI STATE 6.2 Energy              -214.151246811419

 Properties without orbital relaxation:

 !MRCI STATE 6.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.21153589 (Davidson, fixed reference)
 Cluster corrected energies          -214.21128406 (Davidson, relaxed reference)
 Cluster corrected energies          -214.21153589 (Davidson, rotated reference)

 Cluster corrected energies          -214.21050146 (Pople, fixed reference)
 Cluster corrected energies          -214.21023419 (Pople, relaxed reference)
 Cluster corrected energies          -214.21050146 (Pople, rotated reference)



 RESULTS FOR STATE 7.2
 =====================

 Maximum overlap with reference state  8

 Coefficient of reference function:   C(0) = 0.95354189 (fixed)   0.95683289 (relaxed)   0.95666342 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00530556   -0.01131162   -0.01515896
 Singles      0.02027893   -0.08790972   -0.09253215
 Pairs        0.06706699   -0.54968743   -0.54301713
 Total        1.09265148   -0.64890877   -0.65070824
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.50053857
 Nuclear energy                         0.00000000
 Kinetic energy                        69.18465434
 One electron energy                 -372.10513163
 Two electron energy                  157.95388482
 Virial quotient                       -3.09535762
 Correlation energy                    -0.65070824
 !MRCI STATE 7.2 Energy              -214.151246811409

 Properties without orbital relaxation:

 !MRCI STATE 7.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.21153589 (Davidson, fixed reference)
 Cluster corrected energies          -214.21128407 (Davidson, relaxed reference)
 Cluster corrected energies          -214.21153589 (Davidson, rotated reference)

 Cluster corrected energies          -214.21050146 (Pople, fixed reference)
 Cluster corrected energies          -214.21023419 (Pople, relaxed reference)
 Cluster corrected energies          -214.21050146 (Pople, rotated reference)



 RESULTS FOR STATE 8.2
 =====================

 Maximum overlap with reference state  7

 Coefficient of reference function:   C(0) = 0.94087896 (fixed)   0.95683289 (relaxed)   0.95666342 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00530556   -0.01131162   -0.55897389
 Singles      0.02027893   -0.08790972   -0.09253215
 Pairs        0.06706699    0.04451275    0.00079779
 Total        1.09265148   -0.05470859   -0.65070824
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.50053857
 Nuclear energy                         0.00000000
 Kinetic energy                        69.18465429
 One electron energy                 -372.10513156
 Two electron energy                  157.95388475
 Virial quotient                       -3.09535762
 Correlation energy                    -0.65070824
 !MRCI STATE 8.2 Energy              -214.151246811299

 Properties without orbital relaxation:

 !MRCI STATE 8.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.21153589 (Davidson, fixed reference)
 Cluster corrected energies          -214.21128406 (Davidson, relaxed reference)
 Cluster corrected energies          -214.21153589 (Davidson, rotated reference)

 Cluster corrected energies          -214.21050146 (Pople, fixed reference)
 Cluster corrected energies          -214.21023419 (Pople, relaxed reference)
 Cluster corrected energies          -214.21050146 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       42.95       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       6     1514.67       700     1000      520     2140     5302     5102   
                                         GEOM     BASIS   MCVARS    MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI       INT
 CPU TIMES  *     27001.81  13091.39  13902.19      7.15      0.73
 REAL TIME  *     27358.18 SEC
 DISK USED  *         1.52 GB (local),       24.42 GB (total)
 SF USED    *         8.34 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(11)    =      -214.24283353  AU                              
 SETTING HLSDIAG(12)    =      -214.24283353  AU                              
 SETTING HLSDIAG(13)    =      -214.24283353  AU                              
 SETTING HLSDIAG(14)    =      -214.24283353  AU                              
 SETTING HLSDIAG(15)    =      -214.24283353  AU                              
 SETTING HLSDIAG(16)    =      -214.21153589  AU                              
 SETTING HLSDIAG(17)    =      -214.21153589  AU                              
 SETTING HLSDIAG(18)    =      -214.21153589  AU                              


         HLSDIAG
    -214.2866131
    -214.0470122
    -214.0470122
    -214.0470121
    -214.0470121
    -214.0470121
    -214.0444765
    -214.0434216
    -214.0434216
    -214.0434216
    -214.2428335
    -214.2428335
    -214.2428335
    -214.2428335
    -214.2428335
    -214.2115359
    -214.2115359
    -214.2115359
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Diagonal elements of H will be replaced by values from variable HLSDIAG


   ******************************
   *** Spin-orbit calculation ***
   ******************************


   Spin-orbit matrix elements
   ==========================

 Wavefunction restored from record  5302.2  Symmetry=2  S= 1.5  NSTATE=  10

 Original energies:   -214.231578   -213.993609   -213.993609   -213.993608   -213.993608   -213.993608   -213.991159   -213.989974
                      -213.989974   -213.989974
 Replaced energies:   -214.286613   -214.047012   -214.047012   -214.047012   -214.047012   -214.047012   -214.044476   -214.043422
                      -214.043422   -214.043422

 Wavefunction restored from record  5102.2  Symmetry=2  S= 0.5  NSTATE=   8

 Original energies:   -214.183687   -214.183687   -214.183687   -214.183687   -214.183687   -214.151247   -214.151247   -214.151247
 Replaced energies:   -214.242834   -214.242834   -214.242834   -214.242834   -214.242834   -214.211536   -214.211536   -214.211536



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=  -214.28661311

 Wigner-Eckart theorem used for 23 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00      -0.00      -0.00       0.00   -1789.12    -298.27     498.69

    2   2.2  1.5  1.5       0.00   52586.32       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.08   -4483.56    1175.25    1729.61      -0.00    1361.04     227.34    -377.87

    3   3.2  1.5  1.5       0.00       0.00   52586.32       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.08      -0.00    2521.86    -661.37    -970.96      -0.00    2419.08     403.29    -676.80

    4   4.2  1.5  1.5       0.00       0.00       0.00   52586.35       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00    4483.56   -2521.86       0.00     987.85    -674.16      -0.00     312.42    -794.59     643.56

    5   5.2  1.5  1.5       0.00       0.00       0.00       0.00   52586.35       0.00       0.00       0.00       0.00       0.00
                            0.00   -1175.25     661.37    -987.85      -0.00   -2573.60       0.00     589.24     403.06    2349.31

    6   6.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00   52586.35       0.00       0.00       0.00       0.00
                            0.00   -1729.61     970.96     674.16    2573.60      -0.00      -0.00     408.81   -2331.32      71.29

    7   7.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00   53142.84       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00      -0.00       0.00      -0.00   -3919.60    -653.45    1092.52

    8   8.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00   53374.38       0.00       0.00
                         1789.12   -1361.04   -2419.08    -312.42    -589.24    -408.81    3919.60      -0.00     743.20     444.51

    9   9.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   53374.38       0.00
                          298.27    -227.34    -403.29     794.59    -403.06    2331.32     653.45    -743.20       0.00   -2666.33

   10  10.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   53374.38
                         -498.69     377.87     676.80    -643.56   -2349.31     -71.29   -1092.52    -444.51    2666.33       0.00

   11   1.2  1.5  0.5      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00     178.61   -1071.28       0.03
                           -0.00       0.00      -0.00      -0.00       0.00       0.00      -0.00    -283.99     -47.38   -1047.21

   12   2.2  1.5  0.5       0.00       0.00      -3.67     744.77    2717.78      82.33      -0.00    -141.05     847.40      -0.12
                           -0.00      -0.00       0.56     -13.13       4.61     -34.41      -0.00    -439.82     -73.41   -1625.01

   13   3.2  1.5  0.5       0.00       3.67      -0.00     441.16    1610.45      48.86      -0.00     238.42   -1430.04       0.04
                            0.00      -0.56      -0.00    1084.05    -390.04    3067.52      -0.00      -6.32      -1.06     -18.03

   14   4.2  1.5  0.5       0.00    -744.77    -441.16      -0.00     -47.70    1579.47      -0.00    -112.73     -19.20    1402.95
                            0.00      13.13   -1084.05      -0.00    1533.02     195.61      -0.00     149.13    1365.55    -102.09

   15   5.2  1.5  0.5       0.00   -2717.78   -1610.45      47.70      -0.00    -433.12      -0.00      74.69      10.57    -380.37
                           -0.00      -4.61     390.04   -1533.02      -0.00     544.21       0.00    1395.42    -118.92    -372.05

   16   6.2  1.5  0.5       0.00     -82.33     -48.86   -1579.47     433.12       0.00       0.00   -1433.20    -238.87    -130.16
                           -0.00      34.41   -3067.52    -195.61    -544.21       0.00       0.00     124.52    -496.97     -11.52

   17   7.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00      -0.00       0.00     391.29   -2346.95       0.07
                            0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00    -622.17    -103.80   -2294.22

   18   8.2  1.5  0.5    -178.61     141.05    -238.42     112.73     -74.69    1433.20    -391.29       0.00       0.05    1596.53
                          283.99     439.82       6.32    -149.13   -1395.42    -124.52     622.17       0.00   -1560.65      70.61

   19   9.2  1.5  0.5    1071.28    -847.40    1430.04      19.20     -10.57     238.87    2346.95      -0.05       0.00     266.18
                           47.38      73.41       1.06   -1365.55     118.92     496.97     103.80    1560.65      -0.00    -423.23

   20  10.2  1.5  0.5      -0.03       0.12      -0.04   -1402.95     380.37     130.16      -0.07   -1596.53    -266.18      -0.00
                         1047.21    1625.01      18.03     102.09     372.05      11.52    2294.22     -70.61     423.23      -0.00

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

   41   1.2  0.5  0.5       0.00    -452.96    -266.92    -292.70   -1093.00     -18.36       0.00      65.20    -417.35     -12.84
                            0.00       0.22       1.81    -670.73     235.25   -1145.38       0.00    -275.96     -59.74    -195.02

   42   2.2  0.5  0.5       0.00   -1150.62    -682.70     280.18     640.01     -14.30      -0.00     -78.80     -56.62      21.09
                            0.00      -2.45     213.66    -516.56     130.38     485.58       0.00    -451.35     -78.01     448.19

   43   3.2  0.5  0.5       0.00     307.33     181.83     643.26      48.66    -323.78      -0.00    -485.57    -320.21     229.99
                            0.00     -15.51    1369.20      31.31     -96.23    -363.84       0.00     182.54     112.38     157.86

   44   4.2  0.5  0.5       0.00     303.29     178.78     -74.24     763.47     149.72      -0.00     325.58    -507.39     -86.90
                           -0.00       6.94    -602.12     -42.75      56.64    -652.20       0.00     295.07      28.13     519.14

   45   5.2  0.5  0.5       0.00     -43.85     -26.03    -343.59      89.64    -673.68       0.00     242.15      43.15     588.34
                           -0.00       1.76    -193.05    -224.94    -721.08     -19.84       0.00    -127.36     619.99      -5.36

   46   6.2  0.5  0.5      -4.13      -0.22       0.38     474.43    -121.45    -280.80       0.24    -590.69     -98.47     275.75
                         5977.33    -643.08      -7.37      23.92      88.89       2.73    -346.53      17.19    -105.74       0.12

   47   7.2  0.5  0.5   -6038.07    -331.20     558.95     -21.72       7.90     -39.35     350.05      22.35       3.73      48.15
                          -83.51       9.02       0.06    -498.01     176.98     198.21       4.84    -616.37    -155.91     174.21

   48   8.2  0.5  0.5     488.95      26.92     -45.26    -266.27      87.68    -487.87     -28.35     271.07      45.21     596.91
                         -980.77     105.85       0.66     187.91     524.36       0.31      56.86     157.24    -631.14     -14.09

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

    1   1.2  1.5  1.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00    -178.61    1071.28      -0.03
                            0.00       0.00      -0.00      -0.00       0.00       0.00      -0.00    -283.99     -47.38   -1047.21

    2   2.2  1.5  1.5      -0.00       0.00       3.67    -744.77   -2717.78     -82.33       0.00     141.05    -847.40       0.12
                           -0.00       0.00       0.56     -13.13       4.61     -34.41      -0.00    -439.82     -73.41   -1625.01

    3   3.2  1.5  1.5      -0.00      -3.67      -0.00    -441.16   -1610.45     -48.86       0.00    -238.42    1430.04      -0.04
                            0.00      -0.56       0.00    1084.05    -390.04    3067.52      -0.00      -6.32      -1.06     -18.03

    4   4.2  1.5  1.5      -0.00     744.77     441.16      -0.00      47.70   -1579.47       0.00     112.73      19.20   -1402.95
                            0.00      13.13   -1084.05       0.00    1533.02     195.61      -0.00     149.13    1365.55    -102.09

    5   5.2  1.5  1.5      -0.00    2717.78    1610.45     -47.70      -0.00     433.12       0.00     -74.69     -10.57     380.37
                           -0.00      -4.61     390.04   -1533.02       0.00     544.21       0.00    1395.42    -118.92    -372.05

    6   6.2  1.5  1.5      -0.00      82.33      48.86    1579.47    -433.12       0.00      -0.00    1433.20     238.87     130.16
                           -0.00      34.41   -3067.52    -195.61    -544.21      -0.00       0.00     124.52    -496.97     -11.52

    7   7.2  1.5  1.5      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00    -391.29    2346.95      -0.07
                            0.00       0.00       0.00       0.00      -0.00      -0.00       0.00    -622.17    -103.80   -2294.22

    8   8.2  1.5  1.5     178.61    -141.05     238.42    -112.73      74.69   -1433.20     391.29       0.00      -0.05   -1596.53
                          283.99     439.82       6.32    -149.13   -1395.42    -124.52     622.17      -0.00   -1560.65      70.61

    9   9.2  1.5  1.5   -1071.28     847.40   -1430.04     -19.20      10.57    -238.87   -2346.95       0.05       0.00    -266.18
                           47.38      73.41       1.06   -1365.55     118.92     496.97     103.80    1560.65       0.00    -423.23

   10  10.2  1.5  1.5       0.03      -0.12       0.04    1402.95    -380.37    -130.16       0.07    1596.53     266.18      -0.00
                         1047.21    1625.01      18.03     102.09     372.05      11.52    2294.22     -70.61     423.23       0.00

   11   1.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00      -0.00      -0.00       0.00    -596.37     -99.42     166.23

   12   2.2  1.5  0.5       0.00   52586.32       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.03   -1494.52     391.75     576.54      -0.00     453.68      75.78    -125.96

   13   3.2  1.5  0.5       0.00       0.00   52586.32       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.03      -0.00     840.62    -220.46    -323.65      -0.00     806.36     134.43    -225.60

   14   4.2  1.5  0.5       0.00       0.00       0.00   52586.35       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00    1494.52    -840.62       0.00     329.28    -224.72      -0.00     104.14    -264.86     214.52

   15   5.2  1.5  0.5       0.00       0.00       0.00       0.00   52586.35       0.00       0.00       0.00       0.00       0.00
                            0.00    -391.75     220.46    -329.28      -0.00    -857.87       0.00     196.41     134.35     783.10

   16   6.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00   52586.35       0.00       0.00       0.00       0.00
                            0.00    -576.54     323.65     224.72     857.87      -0.00      -0.00     136.27    -777.11      23.76

   17   7.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00   53142.84       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00      -0.00       0.00      -0.00   -1306.53    -217.82     364.17

   18   8.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00   53374.38       0.00       0.00
                          596.37    -453.68    -806.36    -104.14    -196.41    -136.27    1306.53      -0.00     247.73     148.17

   19   9.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   53374.38       0.00
                           99.42     -75.78    -134.43     264.86    -134.35     777.11     217.82    -247.73       0.00    -888.78

   20  10.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   53374.38
                         -166.23     125.96     225.60    -214.52    -783.10     -23.76    -364.17    -148.17     888.78       0.00

   21   1.2  1.5 -0.5      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00     206.24   -1237.01       0.04
                           -0.00       0.00      -0.00      -0.00       0.00       0.00      -0.00    -327.93     -54.71   -1209.21

   22   2.2  1.5 -0.5       0.00       0.00      -4.24     859.98    3138.22      95.07      -0.00    -162.87     978.50      -0.14
                           -0.00      -0.00       0.64     -15.16       5.32     -39.73      -0.00    -507.86     -84.76   -1876.40

   23   3.2  1.5 -0.5       0.00       4.24      -0.00     509.41    1859.59      56.41      -0.00     275.30   -1651.27       0.04
                            0.00      -0.64      -0.00    1251.75    -450.38    3542.07      -0.00      -7.30      -1.23     -20.82

   24   4.2  1.5 -0.5       0.00    -859.98    -509.41      -0.00     -55.08    1823.81      -0.00    -130.17     -22.17    1619.98
                            0.00      15.16   -1251.75      -0.00    1770.18     225.87      -0.00     172.20    1576.80    -117.89

   25   5.2  1.5 -0.5       0.00   -3138.22   -1859.59      55.08      -0.00    -500.12      -0.00      86.24      12.21    -439.22
                           -0.00      -5.32     450.38   -1770.18      -0.00     628.40       0.00    1611.30    -137.32    -429.60

   26   6.2  1.5 -0.5       0.00     -95.07     -56.41   -1823.81     500.12       0.00       0.00   -1654.92    -275.82    -150.29
                           -0.00      39.73   -3542.07    -225.87    -628.40       0.00       0.00     143.79    -573.86     -13.30

   27   7.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00      -0.00       0.00     451.82   -2710.03       0.08
                            0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00    -718.42    -119.86   -2649.13

   28   8.2  1.5 -0.5    -206.24     162.87    -275.30     130.17     -86.24    1654.92    -451.82       0.00       0.06    1843.51
                          327.93     507.86       7.30    -172.20   -1611.30    -143.79     718.42       0.00   -1802.09      81.53

   29   9.2  1.5 -0.5    1237.01    -978.50    1651.27      22.17     -12.21     275.82    2710.03      -0.06       0.00     307.35
                           54.71      84.76       1.23   -1576.80     137.32     573.86     119.86    1802.09      -0.00    -488.71

   30  10.2  1.5 -0.5      -0.04       0.14      -0.04   -1619.98     439.22     150.29      -0.08   -1843.51    -307.35      -0.00
                         1209.21    1876.40      20.82     117.89     429.60      13.30    2649.13     -81.53     488.71      -0.00

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
                            0.00     -32.58      18.29     299.88     -87.31     207.28       0.00    -686.15    -113.49     454.96

   42   2.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -6.65       3.58     729.44     -88.72     556.34      -0.00     446.37     179.22     542.02

   43   3.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00     194.66    -109.96     691.19     642.04    -382.51      -0.00    -188.29     640.04    -157.03

   44   4.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00     -50.15      28.42    1256.01    -681.97    -746.91       0.00      30.75    -290.16    -171.82

   45   5.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00    1519.57    -854.46     -37.80    -108.42      31.36      -0.00      12.32     -92.98      26.50

   46   6.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                        -1136.58     -60.32    -105.98    -170.03    -620.08     -19.24      65.89     123.39    -740.95      -0.48

   47   7.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -556.32     -29.23     -52.19    -212.31      85.90    -608.10      32.25    -200.14     -22.75    -731.64

   48   8.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                        -6879.57    -362.79    -645.33      45.12      95.10      52.29     398.84      -4.20     124.25      59.24

   49   1.2  0.5 -0.5       0.00    -261.52    -154.11    -168.99    -631.04     -10.60       0.00      37.64    -240.96      -7.41
                            0.00       0.13       1.04    -387.25     135.82    -661.29       0.00    -159.33     -34.49    -112.59

   50   2.2  0.5 -0.5       0.00    -664.31    -394.16     161.76     369.51      -8.26      -0.00     -45.49     -32.69      12.18
                            0.00      -1.41     123.36    -298.24      75.27     280.35       0.00    -260.59     -45.04     258.76

   51   3.2  0.5 -0.5       0.00     177.44     104.98     371.39      28.10    -186.94      -0.00    -280.34    -184.87     132.79
                            0.00      -8.95     790.51      18.08     -55.56    -210.06       0.00     105.39      64.88      91.14

   52   4.2  0.5 -0.5       0.00     175.11     103.22     -42.86     440.79      86.44      -0.00     187.97    -292.94     -50.17
                           -0.00       4.00    -347.64     -24.68      32.70    -376.55       0.00     170.36      16.24     299.73

   53   5.2  0.5 -0.5       0.00     -25.31     -15.03    -198.37      51.75    -388.95       0.00     139.81      24.91     339.68
                           -0.00       1.02    -111.46    -129.87    -416.31     -11.45       0.00     -73.53     357.95      -3.09

   54   6.2  0.5 -0.5      -2.38      -0.13       0.22     273.92     -70.12    -162.12       0.14    -341.04     -56.85     159.20
                         3451.01    -371.28      -4.26      13.81      51.32       1.58    -200.07       9.92     -61.05       0.07

   55   7.2  0.5 -0.5   -3486.08    -191.22     322.71     -12.54       4.56     -22.72     202.10      12.91       2.15      27.80
                          -48.21       5.21       0.04    -287.53     102.18     114.44       2.80    -355.86     -90.02     100.58

   56   8.2  0.5 -0.5     282.30      15.54     -26.13    -153.73      50.62    -281.67     -16.37     156.50      26.10     344.63
                         -566.25      61.11       0.38     108.49     302.74       0.18      32.83      90.78    -364.39      -8.13


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

   11   1.2  1.5  0.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00    -206.24    1237.01      -0.04
                            0.00       0.00      -0.00      -0.00       0.00       0.00      -0.00    -327.93     -54.71   -1209.21

   12   2.2  1.5  0.5      -0.00       0.00       4.24    -859.98   -3138.22     -95.07       0.00     162.87    -978.50       0.14
                           -0.00       0.00       0.64     -15.16       5.32     -39.73      -0.00    -507.86     -84.76   -1876.40

   13   3.2  1.5  0.5      -0.00      -4.24      -0.00    -509.41   -1859.59     -56.41       0.00    -275.30    1651.27      -0.04
                            0.00      -0.64       0.00    1251.75    -450.38    3542.07      -0.00      -7.30      -1.23     -20.82

   14   4.2  1.5  0.5      -0.00     859.98     509.41      -0.00      55.08   -1823.81       0.00     130.17      22.17   -1619.98
                            0.00      15.16   -1251.75       0.00    1770.18     225.87      -0.00     172.20    1576.80    -117.89

   15   5.2  1.5  0.5      -0.00    3138.22    1859.59     -55.08      -0.00     500.12       0.00     -86.24     -12.21     439.22
                           -0.00      -5.32     450.38   -1770.18       0.00     628.40       0.00    1611.30    -137.32    -429.60

   16   6.2  1.5  0.5      -0.00      95.07      56.41    1823.81    -500.12       0.00      -0.00    1654.92     275.82     150.29
                           -0.00      39.73   -3542.07    -225.87    -628.40      -0.00       0.00     143.79    -573.86     -13.30

   17   7.2  1.5  0.5      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00    -451.82    2710.03      -0.08
                            0.00       0.00       0.00       0.00      -0.00      -0.00       0.00    -718.42    -119.86   -2649.13

   18   8.2  1.5  0.5     206.24    -162.87     275.30    -130.17      86.24   -1654.92     451.82       0.00      -0.06   -1843.51
                          327.93     507.86       7.30    -172.20   -1611.30    -143.79     718.42      -0.00   -1802.09      81.53

   19   9.2  1.5  0.5   -1237.01     978.50   -1651.27     -22.17      12.21    -275.82   -2710.03       0.06       0.00    -307.35
                           54.71      84.76       1.23   -1576.80     137.32     573.86     119.86    1802.09       0.00    -488.71

   20  10.2  1.5  0.5       0.04      -0.14       0.04    1619.98    -439.22    -150.29       0.08    1843.51     307.35      -0.00
                         1209.21    1876.40      20.82     117.89     429.60      13.30    2649.13     -81.53     488.71       0.00

   21   1.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00       0.00       0.00      -0.00     596.37      99.42    -166.23

   22   2.2  1.5 -0.5       0.00   52586.32       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.03    1494.52    -391.75    -576.54       0.00    -453.68     -75.78     125.96

   23   3.2  1.5 -0.5       0.00       0.00   52586.32       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.03       0.00    -840.62     220.46     323.65       0.00    -806.36    -134.43     225.60

   24   4.2  1.5 -0.5       0.00       0.00       0.00   52586.35       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00   -1494.52     840.62      -0.00    -329.28     224.72       0.00    -104.14     264.86    -214.52

   25   5.2  1.5 -0.5       0.00       0.00       0.00       0.00   52586.35       0.00       0.00       0.00       0.00       0.00
                           -0.00     391.75    -220.46     329.28       0.00     857.87      -0.00    -196.41    -134.35    -783.10

   26   6.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00   52586.35       0.00       0.00       0.00       0.00
                           -0.00     576.54    -323.65    -224.72    -857.87       0.00       0.00    -136.27     777.11     -23.76

   27   7.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00   53142.84       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.00    1306.53     217.82    -364.17

   28   8.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00   53374.38       0.00       0.00
                         -596.37     453.68     806.36     104.14     196.41     136.27   -1306.53       0.00    -247.73    -148.17

   29   9.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   53374.38       0.00
                          -99.42      75.78     134.43    -264.86     134.35    -777.11    -217.82     247.73      -0.00     888.78

   30  10.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   53374.38
                          166.23    -125.96    -225.60     214.52     783.10      23.76     364.17     148.17    -888.78      -0.00

   31   1.2  1.5 -1.5      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00     178.61   -1071.28       0.03
                           -0.00       0.00      -0.00      -0.00       0.00       0.00      -0.00    -283.99     -47.38   -1047.21

   32   2.2  1.5 -1.5       0.00       0.00      -3.67     744.77    2717.78      82.33      -0.00    -141.05     847.40      -0.12
                           -0.00      -0.00       0.56     -13.13       4.61     -34.41      -0.00    -439.82     -73.41   -1625.01

   33   3.2  1.5 -1.5       0.00       3.67      -0.00     441.16    1610.45      48.86      -0.00     238.42   -1430.04       0.04
                            0.00      -0.56      -0.00    1084.05    -390.04    3067.52      -0.00      -6.32      -1.06     -18.03

   34   4.2  1.5 -1.5       0.00    -744.77    -441.16      -0.00     -47.70    1579.47      -0.00    -112.73     -19.20    1402.95
                            0.00      13.13   -1084.05      -0.00    1533.02     195.61      -0.00     149.13    1365.55    -102.09

   35   5.2  1.5 -1.5       0.00   -2717.78   -1610.45      47.70      -0.00    -433.12      -0.00      74.69      10.57    -380.37
                           -0.00      -4.61     390.04   -1533.02      -0.00     544.21       0.00    1395.42    -118.92    -372.05

   36   6.2  1.5 -1.5       0.00     -82.33     -48.86   -1579.47     433.12       0.00       0.00   -1433.20    -238.87    -130.16
                           -0.00      34.41   -3067.52    -195.61    -544.21       0.00       0.00     124.52    -496.97     -11.52

   37   7.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00      -0.00       0.00     391.29   -2346.95       0.07
                            0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00    -622.17    -103.80   -2294.22

   38   8.2  1.5 -1.5    -178.61     141.05    -238.42     112.73     -74.69    1433.20    -391.29       0.00       0.05    1596.53
                          283.99     439.82       6.32    -149.13   -1395.42    -124.52     622.17       0.00   -1560.65      70.61

   39   9.2  1.5 -1.5    1071.28    -847.40    1430.04      19.20     -10.57     238.87    2346.95      -0.05       0.00     266.18
                           47.38      73.41       1.06   -1365.55     118.92     496.97     103.80    1560.65      -0.00    -423.23

   40  10.2  1.5 -1.5      -0.03       0.12      -0.04   -1402.95     380.37     130.16      -0.07   -1596.53    -266.18      -0.00
                         1047.21    1625.01      18.03     102.09     372.05      11.52    2294.22     -70.61     423.23      -0.00

   41   1.2  0.5  0.5       0.00    -261.52    -154.11    -168.99    -631.04     -10.60       0.00      37.64    -240.96      -7.41
                           -0.00      -0.13      -1.04     387.25    -135.82     661.29      -0.00     159.33      34.49     112.59

   42   2.2  0.5  0.5       0.00    -664.31    -394.16     161.76     369.51      -8.26      -0.00     -45.49     -32.69      12.18
                           -0.00       1.41    -123.36     298.24     -75.27    -280.35      -0.00     260.59      45.04    -258.76

   43   3.2  0.5  0.5       0.00     177.44     104.98     371.39      28.10    -186.94      -0.00    -280.34    -184.87     132.79
                           -0.00       8.95    -790.51     -18.08      55.56     210.06      -0.00    -105.39     -64.88     -91.14

   44   4.2  0.5  0.5       0.00     175.11     103.22     -42.86     440.79      86.44      -0.00     187.97    -292.94     -50.17
                            0.00      -4.00     347.64      24.68     -32.70     376.55      -0.00    -170.36     -16.24    -299.73

   45   5.2  0.5  0.5       0.00     -25.31     -15.03    -198.37      51.75    -388.95       0.00     139.81      24.91     339.68
                            0.00      -1.02     111.46     129.87     416.31      11.45      -0.00      73.53    -357.95       3.09

   46   6.2  0.5  0.5      -2.38      -0.13       0.22     273.92     -70.12    -162.12       0.14    -341.04     -56.85     159.20
                        -3451.01     371.28       4.26     -13.81     -51.32      -1.58     200.07      -9.92      61.05      -0.07

   47   7.2  0.5  0.5   -3486.08    -191.22     322.71     -12.54       4.56     -22.72     202.10      12.91       2.15      27.80
                           48.21      -5.21      -0.04     287.53    -102.18    -114.44      -2.80     355.86      90.02    -100.58

   48   8.2  0.5  0.5     282.30      15.54     -26.13    -153.73      50.62    -281.67     -16.37     156.50      26.10     344.63
                          566.25     -61.11      -0.38    -108.49    -302.74      -0.18     -32.83     -90.78     364.39       8.13

   49   1.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00     -32.58      18.29     299.88     -87.31     207.28       0.00    -686.15    -113.49     454.96

   50   2.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -6.65       3.58     729.44     -88.72     556.34      -0.00     446.37     179.22     542.02

   51   3.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00     194.66    -109.96     691.19     642.04    -382.51      -0.00    -188.29     640.04    -157.03

   52   4.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00     -50.15      28.42    1256.01    -681.97    -746.91       0.00      30.75    -290.16    -171.82

   53   5.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00    1519.57    -854.46     -37.80    -108.42      31.36      -0.00      12.32     -92.98      26.50

   54   6.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                        -1136.58     -60.32    -105.98    -170.03    -620.08     -19.24      65.89     123.39    -740.95      -0.48

   55   7.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -556.32     -29.23     -52.19    -212.31      85.90    -608.10      32.25    -200.14     -22.75    -731.64

   56   8.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                        -6879.57    -362.79    -645.33      45.12      95.10      52.29     398.84      -4.20     124.25      59.24


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

   21   1.2  1.5 -0.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00    -178.61    1071.28      -0.03
                            0.00       0.00      -0.00      -0.00       0.00       0.00      -0.00    -283.99     -47.38   -1047.21

   22   2.2  1.5 -0.5      -0.00       0.00       3.67    -744.77   -2717.78     -82.33       0.00     141.05    -847.40       0.12
                           -0.00       0.00       0.56     -13.13       4.61     -34.41      -0.00    -439.82     -73.41   -1625.01

   23   3.2  1.5 -0.5      -0.00      -3.67      -0.00    -441.16   -1610.45     -48.86       0.00    -238.42    1430.04      -0.04
                            0.00      -0.56       0.00    1084.05    -390.04    3067.52      -0.00      -6.32      -1.06     -18.03

   24   4.2  1.5 -0.5      -0.00     744.77     441.16      -0.00      47.70   -1579.47       0.00     112.73      19.20   -1402.95
                            0.00      13.13   -1084.05       0.00    1533.02     195.61      -0.00     149.13    1365.55    -102.09

   25   5.2  1.5 -0.5      -0.00    2717.78    1610.45     -47.70      -0.00     433.12       0.00     -74.69     -10.57     380.37
                           -0.00      -4.61     390.04   -1533.02       0.00     544.21       0.00    1395.42    -118.92    -372.05

   26   6.2  1.5 -0.5      -0.00      82.33      48.86    1579.47    -433.12       0.00      -0.00    1433.20     238.87     130.16
                           -0.00      34.41   -3067.52    -195.61    -544.21      -0.00       0.00     124.52    -496.97     -11.52

   27   7.2  1.5 -0.5      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00    -391.29    2346.95      -0.07
                            0.00       0.00       0.00       0.00      -0.00      -0.00       0.00    -622.17    -103.80   -2294.22

   28   8.2  1.5 -0.5     178.61    -141.05     238.42    -112.73      74.69   -1433.20     391.29       0.00      -0.05   -1596.53
                          283.99     439.82       6.32    -149.13   -1395.42    -124.52     622.17      -0.00   -1560.65      70.61

   29   9.2  1.5 -0.5   -1071.28     847.40   -1430.04     -19.20      10.57    -238.87   -2346.95       0.05       0.00    -266.18
                           47.38      73.41       1.06   -1365.55     118.92     496.97     103.80    1560.65       0.00    -423.23

   30  10.2  1.5 -0.5       0.03      -0.12       0.04    1402.95    -380.37    -130.16       0.07    1596.53     266.18      -0.00
                         1047.21    1625.01      18.03     102.09     372.05      11.52    2294.22     -70.61     423.23       0.00

   31   1.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00       0.00       0.00      -0.00    1789.12     298.27    -498.69

   32   2.2  1.5 -1.5       0.00   52586.32       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.08    4483.56   -1175.25   -1729.61       0.00   -1361.04    -227.34     377.87

   33   3.2  1.5 -1.5       0.00       0.00   52586.32       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.08       0.00   -2521.86     661.37     970.96       0.00   -2419.08    -403.29     676.80

   34   4.2  1.5 -1.5       0.00       0.00       0.00   52586.35       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00   -4483.56    2521.86      -0.00    -987.85     674.16       0.00    -312.42     794.59    -643.56

   35   5.2  1.5 -1.5       0.00       0.00       0.00       0.00   52586.35       0.00       0.00       0.00       0.00       0.00
                           -0.00    1175.25    -661.37     987.85       0.00    2573.60      -0.00    -589.24    -403.06   -2349.31

   36   6.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00   52586.35       0.00       0.00       0.00       0.00
                           -0.00    1729.61    -970.96    -674.16   -2573.60       0.00       0.00    -408.81    2331.32     -71.29

   37   7.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00   53142.84       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.00    3919.60     653.45   -1092.52

   38   8.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00   53374.38       0.00       0.00
                        -1789.12    1361.04    2419.08     312.42     589.24     408.81   -3919.60       0.00    -743.20    -444.51

   39   9.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   53374.38       0.00
                         -298.27     227.34     403.29    -794.59     403.06   -2331.32    -653.45     743.20      -0.00    2666.33

   40  10.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   53374.38
                          498.69    -377.87    -676.80     643.56    2349.31      71.29    1092.52     444.51   -2666.33      -0.00

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

   49   1.2  0.5 -0.5       0.00    -452.96    -266.92    -292.70   -1093.00     -18.36       0.00      65.20    -417.35     -12.84
                           -0.00      -0.22      -1.81     670.73    -235.25    1145.38      -0.00     275.96      59.74     195.02

   50   2.2  0.5 -0.5       0.00   -1150.62    -682.70     280.18     640.01     -14.30      -0.00     -78.80     -56.62      21.09
                           -0.00       2.45    -213.66     516.56    -130.38    -485.58      -0.00     451.35      78.01    -448.19

   51   3.2  0.5 -0.5       0.00     307.33     181.83     643.26      48.66    -323.78      -0.00    -485.57    -320.21     229.99
                           -0.00      15.51   -1369.20     -31.31      96.23     363.84      -0.00    -182.54    -112.38    -157.86

   52   4.2  0.5 -0.5       0.00     303.29     178.78     -74.24     763.47     149.72      -0.00     325.58    -507.39     -86.90
                            0.00      -6.94     602.12      42.75     -56.64     652.20      -0.00    -295.07     -28.13    -519.14

   53   5.2  0.5 -0.5       0.00     -43.85     -26.03    -343.59      89.64    -673.68       0.00     242.15      43.15     588.34
                            0.00      -1.76     193.05     224.94     721.08      19.84      -0.00     127.36    -619.99       5.36

   54   6.2  0.5 -0.5      -4.13      -0.22       0.38     474.43    -121.45    -280.80       0.24    -590.69     -98.47     275.75
                        -5977.33     643.08       7.37     -23.92     -88.89      -2.73     346.53     -17.19     105.74      -0.12

   55   7.2  0.5 -0.5   -6038.07    -331.20     558.95     -21.72       7.90     -39.35     350.05      22.35       3.73      48.15
                           83.51      -9.02      -0.06     498.01    -176.98    -198.21      -4.84     616.37     155.91    -174.21

   56   8.2  0.5 -0.5     488.95      26.92     -45.26    -266.27      87.68    -487.87     -28.35     271.07      45.21     596.91
                          980.77    -105.85      -0.66    -187.91    -524.36      -0.31     -56.86    -157.24     631.14      14.09


   Nr   State  S   Sz       41         42         43         44         45         46         47         48         49         50

    1   1.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00      -4.13   -6038.07     488.95       0.00       0.00
                           -0.00      -0.00      -0.00       0.00       0.00   -5977.33      83.51     980.77       0.00       0.00

    2   2.2  1.5  1.5    -452.96   -1150.62     307.33     303.29     -43.85      -0.22    -331.20      26.92       0.00       0.00
                           -0.22       2.45      15.51      -6.94      -1.76     643.08      -9.02    -105.85       0.00       0.00

    3   3.2  1.5  1.5    -266.92    -682.70     181.83     178.78     -26.03       0.38     558.95     -45.26       0.00       0.00
                           -1.81    -213.66   -1369.20     602.12     193.05       7.37      -0.06      -0.66       0.00       0.00

    4   4.2  1.5  1.5    -292.70     280.18     643.26     -74.24    -343.59     474.43     -21.72    -266.27       0.00       0.00
                          670.73     516.56     -31.31      42.75     224.94     -23.92     498.01    -187.91       0.00       0.00

    5   5.2  1.5  1.5   -1093.00     640.01      48.66     763.47      89.64    -121.45       7.90      87.68       0.00       0.00
                         -235.25    -130.38      96.23     -56.64     721.08     -88.89    -176.98    -524.36       0.00       0.00

    6   6.2  1.5  1.5     -18.36     -14.30    -323.78     149.72    -673.68    -280.80     -39.35    -487.87       0.00       0.00
                         1145.38    -485.58     363.84     652.20      19.84      -2.73    -198.21      -0.31       0.00       0.00

    7   7.2  1.5  1.5       0.00      -0.00      -0.00      -0.00       0.00       0.24     350.05     -28.35       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00     346.53      -4.84     -56.86       0.00       0.00

    8   8.2  1.5  1.5      65.20     -78.80    -485.57     325.58     242.15    -590.69      22.35     271.07       0.00       0.00
                          275.96     451.35    -182.54    -295.07     127.36     -17.19     616.37    -157.24       0.00       0.00

    9   9.2  1.5  1.5    -417.35     -56.62    -320.21    -507.39      43.15     -98.47       3.73      45.21       0.00       0.00
                           59.74      78.01    -112.38     -28.13    -619.99     105.74     155.91     631.14       0.00       0.00

   10  10.2  1.5  1.5     -12.84      21.09     229.99     -86.90     588.34     275.75      48.15     596.91       0.00       0.00
                          195.02    -448.19    -157.86    -519.14       5.36      -0.12    -174.21      14.09       0.00       0.00

   11   1.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00       0.00       0.00    1136.58     556.32    6879.57      -0.00      -0.00

   12   2.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    -261.52    -664.31
                           32.58       6.65    -194.66      50.15   -1519.57      60.32      29.23     362.79      -0.13       1.41

   13   3.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    -154.11    -394.16
                          -18.29      -3.58     109.96     -28.42     854.46     105.98      52.19     645.33      -1.04    -123.36

   14   4.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    -168.99     161.76
                         -299.88    -729.44    -691.19   -1256.01      37.80     170.03     212.31     -45.12     387.25     298.24

   15   5.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    -631.04     369.51
                           87.31      88.72    -642.04     681.97     108.42     620.08     -85.90     -95.10    -135.82     -75.27

   16   6.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     -10.60      -8.26
                         -207.28    -556.34     382.51     746.91     -31.36      19.24     608.10     -52.29     661.29    -280.35

   17   7.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                           -0.00       0.00       0.00      -0.00       0.00     -65.89     -32.25    -398.84      -0.00      -0.00

   18   8.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      37.64     -45.49
                          686.15    -446.37     188.29     -30.75     -12.32    -123.39     200.14       4.20     159.33     260.59

   19   9.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    -240.96     -32.69
                          113.49    -179.22    -640.04     290.16      92.98     740.95      22.75    -124.25      34.49      45.04

   20  10.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -7.41      12.18
                         -454.96    -542.02     157.03     171.82     -26.50       0.48     731.64     -59.24     112.59    -258.76

   21   1.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00      -2.38   -3486.08     282.30       0.00       0.00
                            0.00       0.00       0.00      -0.00      -0.00    3451.01     -48.21    -566.25      -0.00       0.00

   22   2.2  1.5 -0.5    -261.52    -664.31     177.44     175.11     -25.31      -0.13    -191.22      15.54       0.00       0.00
                            0.13      -1.41      -8.95       4.00       1.02    -371.28       5.21      61.11      32.58       6.65

   23   3.2  1.5 -0.5    -154.11    -394.16     104.98     103.22     -15.03       0.22     322.71     -26.13       0.00       0.00
                            1.04     123.36     790.51    -347.64    -111.46      -4.26       0.04       0.38     -18.29      -3.58

   24   4.2  1.5 -0.5    -168.99     161.76     371.39     -42.86    -198.37     273.92     -12.54    -153.73       0.00       0.00
                         -387.25    -298.24      18.08     -24.68    -129.87      13.81    -287.53     108.49    -299.88    -729.44

   25   5.2  1.5 -0.5    -631.04     369.51      28.10     440.79      51.75     -70.12       4.56      50.62       0.00       0.00
                          135.82      75.27     -55.56      32.70    -416.31      51.32     102.18     302.74      87.31      88.72

   26   6.2  1.5 -0.5     -10.60      -8.26    -186.94      86.44    -388.95    -162.12     -22.72    -281.67       0.00       0.00
                         -661.29     280.35    -210.06    -376.55     -11.45       1.58     114.44       0.18    -207.28    -556.34

   27   7.2  1.5 -0.5       0.00      -0.00      -0.00      -0.00       0.00       0.14     202.10     -16.37       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00    -200.07       2.80      32.83      -0.00       0.00

   28   8.2  1.5 -0.5      37.64     -45.49    -280.34     187.97     139.81    -341.04      12.91     156.50       0.00       0.00
                         -159.33    -260.59     105.39     170.36     -73.53       9.92    -355.86      90.78     686.15    -446.37

   29   9.2  1.5 -0.5    -240.96     -32.69    -184.87    -292.94      24.91     -56.85       2.15      26.10       0.00       0.00
                          -34.49     -45.04      64.88      16.24     357.95     -61.05     -90.02    -364.39     113.49    -179.22

   30  10.2  1.5 -0.5      -7.41      12.18     132.79     -50.17     339.68     159.20      27.80     344.63       0.00       0.00
                         -112.59     258.76      91.14     299.73      -3.09       0.07     100.58      -8.13    -454.96    -542.02

   31   1.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   32   2.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    -452.96   -1150.62
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.22      -2.45

   33   3.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    -266.92    -682.70
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       1.81     213.66

   34   4.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    -292.70     280.18
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    -670.73    -516.56

   35   5.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   -1093.00     640.01
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     235.25     130.38

   36   6.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     -18.36     -14.30
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   -1145.38     485.58

   37   7.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   38   8.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      65.20     -78.80
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    -275.96    -451.35

   39   9.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    -417.35     -56.62
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     -59.74     -78.01

   40  10.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     -12.84      21.09
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    -195.02     448.19

   41   1.2  0.5  0.5    9608.51       0.00       0.00       0.00       0.00       0.00       0.00       0.00**********************
                     **************************************************************************************************************

   42   2.2  0.5  0.5       0.00    9608.51       0.00       0.00       0.00       0.00       0.00       0.00**********************
                     **************************************************************************************************************

   43   3.2  0.5  0.5       0.00       0.00    9608.51       0.00       0.00       0.00       0.00       0.00**********************
                     **************************************************************************************************************

   44   4.2  0.5  0.5       0.00       0.00       0.00    9608.51       0.00       0.00       0.00       0.00**********************
                     **************************************************************************************************************

   45   5.2  0.5  0.5       0.00       0.00       0.00       0.00    9608.51       0.00       0.00       0.00**********************
                     **************************************************************************************************************

   46   6.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00   16477.54       0.00       0.00**********************
                     **************************************************************************************************************

   47   7.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00   16477.54       0.00**********************
                     **************************************************************************************************************

   48   8.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00   16477.54**********************
                     **************************************************************************************************************

   49   1.2  0.5 -0.5****************************************************************************************    9608.51       0.00
                     **************************************************************************************************************

   50   2.2  0.5 -0.5****************************************************************************************       0.00    9608.51
                     **************************************************************************************************************

   51   3.2  0.5 -0.5****************************************************************************************       0.00       0.00
                     **************************************************************************************************************

   52   4.2  0.5 -0.5****************************************************************************************       0.00       0.00
                     **************************************************************************************************************

   53   5.2  0.5 -0.5****************************************************************************************       0.00       0.00
                     **************************************************************************************************************

   54   6.2  0.5 -0.5****************************************************************************************       0.00       0.00
                     **************************************************************************************************************

   55   7.2  0.5 -0.5****************************************************************************************       0.00       0.00
                     **************************************************************************************************************

   56   8.2  0.5 -0.5****************************************************************************************       0.00       0.00
                     **************************************************************************************************************


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

   11   1.2  1.5  0.5       0.00       0.00       0.00      -2.38   -3486.08     282.30
                           -0.00       0.00       0.00   -3451.01      48.21     566.25

   12   2.2  1.5  0.5     177.44     175.11     -25.31      -0.13    -191.22      15.54
                            8.95      -4.00      -1.02     371.28      -5.21     -61.11

   13   3.2  1.5  0.5     104.98     103.22     -15.03       0.22     322.71     -26.13
                         -790.51     347.64     111.46       4.26      -0.04      -0.38

   14   4.2  1.5  0.5     371.39     -42.86    -198.37     273.92     -12.54    -153.73
                          -18.08      24.68     129.87     -13.81     287.53    -108.49

   15   5.2  1.5  0.5      28.10     440.79      51.75     -70.12       4.56      50.62
                           55.56     -32.70     416.31     -51.32    -102.18    -302.74

   16   6.2  1.5  0.5    -186.94      86.44    -388.95    -162.12     -22.72    -281.67
                          210.06     376.55      11.45      -1.58    -114.44      -0.18

   17   7.2  1.5  0.5      -0.00      -0.00       0.00       0.14     202.10     -16.37
                           -0.00      -0.00      -0.00     200.07      -2.80     -32.83

   18   8.2  1.5  0.5    -280.34     187.97     139.81    -341.04      12.91     156.50
                         -105.39    -170.36      73.53      -9.92     355.86     -90.78

   19   9.2  1.5  0.5    -184.87    -292.94      24.91     -56.85       2.15      26.10
                          -64.88     -16.24    -357.95      61.05      90.02     364.39

   20  10.2  1.5  0.5     132.79     -50.17     339.68     159.20      27.80     344.63
                          -91.14    -299.73       3.09      -0.07    -100.58       8.13

   21   1.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00    1136.58     556.32    6879.57

   22   2.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00
                         -194.66      50.15   -1519.57      60.32      29.23     362.79

   23   3.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00
                          109.96     -28.42     854.46     105.98      52.19     645.33

   24   4.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00
                         -691.19   -1256.01      37.80     170.03     212.31     -45.12

   25   5.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00
                         -642.04     681.97     108.42     620.08     -85.90     -95.10

   26   6.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00
                          382.51     746.91     -31.36      19.24     608.10     -52.29

   27   7.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00     -65.89     -32.25    -398.84

   28   8.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00
                          188.29     -30.75     -12.32    -123.39     200.14       4.20

   29   9.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00
                         -640.04     290.16      92.98     740.95      22.75    -124.25

   30  10.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00
                          157.03     171.82     -26.50       0.48     731.64     -59.24

   31   1.2  1.5 -1.5       0.00       0.00       0.00      -4.13   -6038.07     488.95
                            0.00      -0.00      -0.00    5977.33     -83.51    -980.77

   32   2.2  1.5 -1.5     307.33     303.29     -43.85      -0.22    -331.20      26.92
                          -15.51       6.94       1.76    -643.08       9.02     105.85

   33   3.2  1.5 -1.5     181.83     178.78     -26.03       0.38     558.95     -45.26
                         1369.20    -602.12    -193.05      -7.37       0.06       0.66

   34   4.2  1.5 -1.5     643.26     -74.24    -343.59     474.43     -21.72    -266.27
                           31.31     -42.75    -224.94      23.92    -498.01     187.91

   35   5.2  1.5 -1.5      48.66     763.47      89.64    -121.45       7.90      87.68
                          -96.23      56.64    -721.08      88.89     176.98     524.36

   36   6.2  1.5 -1.5    -323.78     149.72    -673.68    -280.80     -39.35    -487.87
                         -363.84    -652.20     -19.84       2.73     198.21       0.31

   37   7.2  1.5 -1.5      -0.00      -0.00       0.00       0.24     350.05     -28.35
                            0.00       0.00       0.00    -346.53       4.84      56.86

   38   8.2  1.5 -1.5    -485.57     325.58     242.15    -590.69      22.35     271.07
                          182.54     295.07    -127.36      17.19    -616.37     157.24

   39   9.2  1.5 -1.5    -320.21    -507.39      43.15     -98.47       3.73      45.21
                          112.38      28.13     619.99    -105.74    -155.91    -631.14

   40  10.2  1.5 -1.5     229.99     -86.90     588.34     275.75      48.15     596.91
                          157.86     519.14      -5.36       0.12     174.21     -14.09

   41   1.2  0.5  0.5******************************************************************
                     ******************************************************************

   42   2.2  0.5  0.5******************************************************************
                     ******************************************************************

   43   3.2  0.5  0.5******************************************************************
                     ******************************************************************

   44   4.2  0.5  0.5******************************************************************
                     ******************************************************************

   45   5.2  0.5  0.5******************************************************************
                     ******************************************************************

   46   6.2  0.5  0.5******************************************************************
                     ******************************************************************

   47   7.2  0.5  0.5******************************************************************
                     ******************************************************************

   48   8.2  0.5  0.5******************************************************************
                     ******************************************************************

   49   1.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00
                     ******************************************************************

   50   2.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00
                     ******************************************************************

   51   3.2  0.5 -0.5    9608.51       0.00       0.00       0.00       0.00       0.00
                     ******************************************************************

   52   4.2  0.5 -0.5       0.00    9608.51       0.00       0.00       0.00       0.00
                     ******************************************************************

   53   5.2  0.5 -0.5       0.00       0.00    9608.51       0.00       0.00       0.00
                     ******************************************************************

   54   6.2  0.5 -0.5       0.00       0.00       0.00   16477.54       0.00       0.00
                     ******************************************************************

   55   7.2  0.5 -0.5       0.00       0.00       0.00       0.00   16477.54       0.00
                     ******************************************************************

   56   8.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00   16477.54
                     ******************************************************************


 No symmetry adaption


 Spin-orbit eigenstates   (energies)
 ======================

     Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
              (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1******************************************      0.00000000        0.00      0.0000
     2******************************************5349018.02801049************************
     3******************************************6191923.59500995************************
     4******************************************7122150.24860972************************
     5******************************************7527834.62373558************************
     6******************************************8108341.91765430************************
     7******************************************8522614.55350195************************
     8******************************************8684327.34747406************************
     9  -214.28714158    -0.00052847     -115.998830576.28436167************************
    10  -214.28714158    -0.00052847     -115.998830576.28436167************************
    11  -214.28714158    -0.00052847     -115.998830576.28436167************************
    12  -214.28714157    -0.00052847     -115.998830576.28436167************************
    13  -214.08885574     0.19775737    43402.738830576.48264751************************
    14  -214.08885574     0.19775737    43402.738830576.48264751************************
    15  -214.08509404     0.20151906    44228.328830576.48640920************************
    16  -214.08509404     0.20151906    44228.328830576.48640920************************
    17  -214.08509404     0.20151906    44228.328830576.48640920************************
    18  -214.08509404     0.20151906    44228.328830576.48640920************************
    19  -214.06225110     0.22436200    49241.778830576.50925214************************
    20  -214.06225110     0.22436200    49241.778830576.50925214************************
    21  -214.06225110     0.22436200    49241.778830576.50925214************************
    22  -214.06225110     0.22436200    49241.778830576.50925214************************
    23  -214.06165840     0.22495471    49371.858830576.50984485************************
    24  -214.06165840     0.22495471    49371.858830576.50984485************************
    25  -214.06139048     0.22522263    49430.658830576.51011277************************
    26  -214.06139048     0.22522263    49430.658830576.51011277************************
    27  -214.06139041     0.22522269    49430.678830576.51011284************************
    28  -214.06139041     0.22522270    49430.678830576.51011284************************
    29  -214.06139041     0.22522270    49430.678830576.51011284************************
    30  -214.06139041     0.22522270    49430.678830576.51011284************************
    31  -214.02141313     0.26519997    58204.678830576.55009012************************
    32  -214.02141313     0.26519997    58204.678830576.55009012************************
    33  -214.02141313     0.26519997    58204.678830576.55009012************************
    34  -214.02141313     0.26519998    58204.678830576.55009012************************
    35  -214.02115115     0.26546196    58262.178830576.55035210************************
    36  -214.02115115     0.26546196    58262.178830576.55035210************************
    37  -214.02115114     0.26546197    58262.178830576.55035211************************
    38  -214.02115114     0.26546197    58262.178830576.55035211************************
    39  -214.02115114     0.26546197    58262.178830576.55035211************************
    40  -214.02115114     0.26546197    58262.178830576.55035211************************
    41  -214.02115112     0.26546198    58262.178830576.55035212************************
    42  -214.02115112     0.26546198    58262.178830576.55035212************************
    43  -214.02058003     0.26603308    58387.518830576.55092322************************
    44  -214.02058003     0.26603308    58387.518830576.55092322************************
    45  -214.02057999     0.26603311    58387.528830576.55092325************************
    46  -214.02057999     0.26603311    58387.528830576.55092325************************
    47  -214.02057999     0.26603311    58387.528830576.55092325************************
    48  -214.02057999     0.26603311    58387.528830576.55092325************************
    49125620.26146090125834.54807401************8956410.83296415************************
    50548325.59480241548539.88141551************9379116.16630565************************
    51838595.10222126838809.38883437************9669385.67372451************************
    52**********************************************************************************
    53**********************************************************************************
    54**********************************************************************************
    55**********************************************************************************
    56**********************************************************************************


 Eigenvectors of spin-orbit matrix
 =================================

  Basis states          Eigenvectors (columnwise)

   Nr   State  S   Sz        1             2             3             4             5             6             7             8

    1    1.2  1.5  1.5  -0.000000002   0.000000003   0.000000000   0.000000003   0.000000005  -0.000000011  -0.000000048   0.000000104
                         0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000

    2    2.2  1.5  1.5   0.000000000   0.000000001  -0.000000001   0.000000001  -0.000000000   0.000000001   0.000000003   0.000000001
                        -0.000000000   0.000000000   0.000000000  -0.000000001   0.000000000   0.000000001   0.000000000   0.000000002

    3    3.2  1.5  1.5  -0.000000000  -0.000000000  -0.000000000  -0.000000001  -0.000000001   0.000000003   0.000000005  -0.000000010
                        -0.000000000   0.000000000   0.000000001  -0.000000001   0.000000000   0.000000001  -0.000000004   0.000000003

    4    4.2  1.5  1.5  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000001   0.000000005  -0.000000011
                        -0.000000000  -0.000000001   0.000000000  -0.000000001   0.000000000  -0.000000001   0.000000004  -0.000000002

    5    5.2  1.5  1.5  -0.000000000   0.000000000   0.000000001  -0.000000001   0.000000001  -0.000000000   0.000000002  -0.000000025
                         0.000000000   0.000000000   0.000000000   0.000000000   0.000000001  -0.000000002   0.000000001   0.000000008

    6    6.2  1.5  1.5  -0.000000000   0.000000000   0.000000000   0.000000002  -0.000000000  -0.000000002   0.000000006  -0.000000014
                         0.000000000  -0.000000001  -0.000000001   0.000000001   0.000000001  -0.000000001   0.000000009   0.000000005

    7    7.2  1.5  1.5   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000001   0.000000003  -0.000000006
                        -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000

    8    8.2  1.5  1.5  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000001  -0.000000001   0.000000002
                         0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000001  -0.000000005

    9    9.2  1.5  1.5   0.000000000   0.000000000  -0.000000000  -0.000000001  -0.000000000   0.000000000  -0.000000005   0.000000009
                        -0.000000000   0.000000000  -0.000000000   0.000000001  -0.000000001   0.000000001   0.000000003  -0.000000011

   10   10.2  1.5  1.5   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000001  -0.000000000   0.000000007
                        -0.000000000   0.000000000  -0.000000000   0.000000001  -0.000000001   0.000000001  -0.000000007   0.000000014

   11    1.2  1.5  0.5   0.000000000  -0.000000000  -0.000000003  -0.000000010  -0.000000001  -0.000000018   0.000000005   0.000000019
                         0.000000000   0.000000002  -0.000000003  -0.000000004  -0.000000006   0.000000007  -0.000000009  -0.000000035

   12    2.2  1.5  0.5   0.000000000   0.000000000  -0.000000001  -0.000000001  -0.000000000   0.000000004  -0.000000008   0.000000005
                        -0.000000000   0.000000000   0.000000000   0.000000001  -0.000000000   0.000000002   0.000000004  -0.000000008

   13    3.2  1.5  0.5   0.000000000  -0.000000000   0.000000000  -0.000000001   0.000000000  -0.000000002   0.000000008   0.000000007
                         0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000002   0.000000003   0.000000002   0.000000008

   14    4.2  1.5  0.5   0.000000000   0.000000000   0.000000001  -0.000000001  -0.000000000  -0.000000001  -0.000000000   0.000000008
                         0.000000000   0.000000000   0.000000001   0.000000001  -0.000000002  -0.000000001  -0.000000004   0.000000022

   15    5.2  1.5  0.5  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000001  -0.000000000   0.000000009  -0.000000011
                         0.000000000   0.000000000   0.000000001  -0.000000000  -0.000000000   0.000000002   0.000000002  -0.000000005

   16    6.2  1.5  0.5  -0.000000000  -0.000000000   0.000000000   0.000000001   0.000000000  -0.000000001   0.000000000  -0.000000012
                        -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000001   0.000000004   0.000000001  -0.000000018

   17    7.2  1.5  0.5  -0.000000000   0.000000000   0.000000000   0.000000001   0.000000000   0.000000001  -0.000000000  -0.000000001
                        -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000001   0.000000002

   18    8.2  1.5  0.5  -0.000000000   0.000000001   0.000000000   0.000000000   0.000000000  -0.000000001   0.000000004  -0.000000002
                         0.000000000  -0.000000000  -0.000000000   0.000000001   0.000000000   0.000000002   0.000000002   0.000000004

   19    9.2  1.5  0.5   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000008  -0.000000004
                        -0.000000000   0.000000000   0.000000001   0.000000000   0.000000000   0.000000000   0.000000001   0.000000002

   20   10.2  1.5  0.5   0.000000000   0.000000000   0.000000000   0.000000001  -0.000000001   0.000000001   0.000000004   0.000000005
                         0.000000000   0.000000000  -0.000000000  -0.000000001  -0.000000001   0.000000002   0.000000001  -0.000000007

   21    1.2  1.5 -0.5   0.000000001  -0.000000000  -0.000000003   0.000000004   0.000000003  -0.000000011   0.000000011   0.000000011
                        -0.000000002   0.000000003   0.000000001   0.000000001  -0.000000002  -0.000000001   0.000000029   0.000000038

   22    2.2  1.5 -0.5  -0.000000000   0.000000001   0.000000000   0.000000000  -0.000000000   0.000000001  -0.000000003   0.000000008
                        -0.000000000  -0.000000001   0.000000000  -0.000000001   0.000000000   0.000000000  -0.000000005  -0.000000003

   23    3.2  1.5 -0.5   0.000000000   0.000000000  -0.000000000   0.000000001  -0.000000000   0.000000000  -0.000000002  -0.000000008
                        -0.000000000   0.000000001  -0.000000001  -0.000000000   0.000000001  -0.000000001   0.000000001  -0.000000001

   24    4.2  1.5 -0.5   0.000000000   0.000000000  -0.000000000  -0.000000001  -0.000000003   0.000000003   0.000000000   0.000000000
                        -0.000000000   0.000000000  -0.000000001   0.000000000   0.000000002   0.000000001   0.000000001   0.000000011

   25    5.2  1.5 -0.5   0.000000000   0.000000000  -0.000000000  -0.000000001   0.000000002  -0.000000000  -0.000000002  -0.000000015
                         0.000000000  -0.000000000   0.000000000   0.000000001   0.000000001   0.000000002   0.000000001  -0.000000005

   26    6.2  1.5 -0.5   0.000000000  -0.000000000   0.000000001  -0.000000000   0.000000000  -0.000000002  -0.000000011  -0.000000008
                         0.000000000   0.000000000   0.000000001  -0.000000001  -0.000000000   0.000000001   0.000000004   0.000000005

   27    7.2  1.5 -0.5  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000001  -0.000000001  -0.000000001
                         0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000002  -0.000000002

   28    8.2  1.5 -0.5   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000005  -0.000000010
                         0.000000000   0.000000000  -0.000000001  -0.000000000  -0.000000000   0.000000001  -0.000000001   0.000000005

   29    9.2  1.5 -0.5   0.000000000   0.000000000   0.000000001   0.000000001   0.000000001   0.000000001  -0.000000002   0.000000002
                        -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000002   0.000000001   0.000000002   0.000000003

   30   10.2  1.5 -0.5  -0.000000000   0.000000000  -0.000000000  -0.000000001  -0.000000001   0.000000000  -0.000000003  -0.000000004
                        -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000003   0.000000002  -0.000000005

   31    1.2  1.5 -1.5   0.000000000  -0.000000002   0.000000001  -0.000000001   0.000000007   0.000000012  -0.000000026  -0.000000008
                        -0.000000000   0.000000002   0.000000003  -0.000000002   0.000000004   0.000000006   0.000000006  -0.000000005

   32    2.2  1.5 -1.5   0.000000000  -0.000000000  -0.000000000  -0.000000001  -0.000000001  -0.000000000   0.000000001   0.000000010
                         0.000000000   0.000000001   0.000000000  -0.000000001   0.000000001  -0.000000001   0.000000006   0.000000002

   33    3.2  1.5 -1.5  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000005   0.000000003   0.000000006
                        -0.000000000   0.000000000  -0.000000000  -0.000000001  -0.000000002  -0.000000001   0.000000006   0.000000009

   34    4.2  1.5 -1.5   0.000000000  -0.000000001  -0.000000000   0.000000000  -0.000000002   0.000000000  -0.000000001   0.000000005
                        -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000001  -0.000000002  -0.000000001   0.000000001

   35    5.2  1.5 -1.5   0.000000000   0.000000000   0.000000001   0.000000001  -0.000000000  -0.000000001   0.000000002  -0.000000007
                        -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000001   0.000000003  -0.000000004  -0.000000008

   36    6.2  1.5 -1.5   0.000000000  -0.000000001   0.000000000  -0.000000001  -0.000000001   0.000000001   0.000000004   0.000000009
                        -0.000000000  -0.000000000  -0.000000000   0.000000002   0.000000001  -0.000000001   0.000000003  -0.000000009

   37    7.2  1.5 -1.5  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000001   0.000000002   0.000000000
                         0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000

   38    8.2  1.5 -1.5  -0.000000000  -0.000000000  -0.000000000   0.000000001   0.000000000  -0.000000000  -0.000000004  -0.000000003
                        -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000004  -0.000000001   0.000000005

   39    9.2  1.5 -1.5  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000001  -0.000000000   0.000000001  -0.000000001
                         0.000000000   0.000000000   0.000000000   0.000000000   0.000000001  -0.000000001  -0.000000002  -0.000000005

   40   10.2  1.5 -1.5  -0.000000000   0.000000001  -0.000000000   0.000000000   0.000000001  -0.000000002   0.000000003   0.000000004
                         0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000001  -0.000000001   0.000000001  -0.000000000

   41    1.2  0.5  0.5   0.024836105   0.482497184   0.122176946  -0.178236274   0.000595737   0.071131310  -0.117423431  -0.231012212
                        -0.200133198   0.103616086  -0.095249238   0.119160180   0.007909283  -0.097263132   0.182677689  -0.107413799

   42    2.2  0.5  0.5  -0.050673374   0.209206065  -0.104962976   0.358950157  -0.190209387   0.220748285  -0.021395445   0.271873485
                         0.016947163   0.051181401  -0.082029728  -0.309938108   0.133848945   0.106065660  -0.171608267  -0.039527032

   43    3.2  0.5  0.5  -0.038760034   0.052781068   0.419049053   0.045157881  -0.118860601   0.030763474  -0.101766446   0.237224276
                         0.357496349   0.105001783   0.021941209   0.328718197   0.032189885  -0.076529153  -0.001131241  -0.019279463

   44    4.2  0.5  0.5   0.098365621  -0.134486565   0.070046308   0.048899221  -0.063341353  -0.131757997  -0.176771856   0.464888309
                        -0.320327967  -0.120334173  -0.166310199   0.074054869  -0.045510288   0.056730591   0.281088282  -0.197360765

   45    5.2  0.5  0.5  -0.057826368   0.029677056   0.090494664   0.289655709  -0.180262041  -0.006881072  -0.026314452  -0.264366066
                        -0.111422982  -0.127456440   0.311243824  -0.057630317   0.097544233  -0.212350693   0.402707655   0.032693822

   46    6.2  0.5  0.5  -0.016381954  -0.077469645  -0.176186369  -0.000080105   0.105359868  -0.066271863  -0.186259874  -0.092505925
                         0.430059199  -0.093704856  -0.249414656  -0.095437755   0.020484484  -0.049456045   0.426576838  -0.123941108

   47    7.2  0.5  0.5  -0.084494490   0.234252561  -0.175937484   0.148619605   0.239889965  -0.331844150  -0.118382878   0.408754043
                         0.014533595   0.066949138   0.220649569  -0.027688566  -0.069402533   0.003941524   0.193712300   0.106685593

   48    8.2  0.5  0.5   0.021326308  -0.080613925   0.379474183  -0.001803621   0.119665039  -0.292949497   0.042622436  -0.000704177
                        -0.045506264   0.000607146  -0.162268534  -0.365475612   0.150119624  -0.117610313   0.053492727   0.117151009

   49    1.2  0.5 -0.5   0.025251140  -0.007809352   0.145246460   0.227761541  -0.032938932  -0.044500392   0.173391830  -0.010192744
                         0.031071773   0.284789117   0.145527776   0.016068809   0.217294430   0.043676060  -0.078647279  -0.196810366

   50    2.2  0.5 -0.5   0.014898987  -0.069344267  -0.090378156  -0.234267528   0.094312855   0.287314686   0.003673920   0.267951129
                        -0.036675095   0.123718685   0.122324206  -0.081361662   0.340153747  -0.006218530   0.393465942   0.188231352

   51    3.2  0.5 -0.5  -0.060110101  -0.075027155   0.046022066   0.157055921   0.567498977   0.111828652  -0.072953300  -0.093080535
                        -0.080038669  -0.074617092   0.035667221   0.103812810   0.150112274   0.128551117  -0.137472843  -0.120223693

   52    4.2  0.5 -0.5  -0.014879691   0.065736156  -0.276706083  -0.069961959   0.024454544  -0.178777609   0.039794377   0.050288573
                        -0.010237474  -0.079143532  -0.059645628   0.173018107   0.292409819  -0.435630677  -0.215900605  -0.139620418

   53    5.2  0.5 -0.5  -0.389819719  -0.438648964   0.182467802  -0.116228869  -0.083616872  -0.009490407  -0.138274895  -0.053577468
                        -0.110434965  -0.049664044  -0.120044486   0.150477211   0.038624067  -0.076191078   0.023701582  -0.111460187

   54    6.2  0.5 -0.5   0.108653344  -0.004204748  -0.031085102  -0.131224577  -0.193138057  -0.239309961  -0.126705973  -0.138396842
                         0.033635703  -0.100768560   0.083354238   0.126202372   0.345404428   0.425604795  -0.067195372  -0.019158634

   55    7.2  0.5 -0.5   0.069528997  -0.140253887   0.033974595  -0.183743379  -0.008137819  -0.128834032  -0.237650659  -0.039682148
                         0.017126485   0.333069959   0.258255367  -0.225158959  -0.024499654  -0.109585267  -0.052379006  -0.161679662

   56    8.2  0.5 -0.5   0.548020371  -0.303194257   0.160768530   0.000803473   0.042253947   0.081731901  -0.053264527  -0.051761968
                         0.089256896  -0.123630261  -0.055547834   0.143976012  -0.026680436  -0.139711256  -0.027690276  -0.066471605


   Nr   State  S   Sz        9            10            11            12            13            14            15            16

    1    1.2  1.5  1.5  -0.257763180   0.128755631  -0.178799744   0.939521492  -0.000000000  -0.000000003  -0.000756559   0.024069272
                         0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000

    2    2.2  1.5  1.5   0.000214188   0.000634388   0.000980984  -0.000638273  -0.048299987  -0.346288781  -0.097441862   0.126231835
                         0.000059163   0.000177055   0.000685568   0.000122438   0.078097035   0.080923433  -0.148227448  -0.012331054

    3    3.2  1.5  1.5   0.000332680  -0.000583246  -0.000237290  -0.001290844   0.027194425   0.194750879   0.045898337   0.211763116
                        -0.000033210  -0.000098939  -0.000385752  -0.000068965  -0.043792087  -0.045542955   0.083356736   0.006961214

    4    4.2  1.5  1.5  -0.000175030   0.000086866   0.000643698   0.000062276   0.008024695   0.089221895  -0.146912667  -0.089829789
                         0.000144793  -0.001220176  -0.000602643   0.000092256   0.004710001   0.381685306   0.088238262   0.042044418

    5    5.2  1.5  1.5  -0.000627219   0.000734762  -0.000814780  -0.000428681  -0.020484909  -0.058133014   0.067066052  -0.182965218
                        -0.000256827  -0.000546045   0.000430580   0.000086313  -0.211393232  -0.058491320  -0.022388257  -0.091736245

    6    6.2  1.5  1.5  -0.000222059  -0.000855690  -0.000027377   0.000050992  -0.221758645   0.005251290   0.060019296  -0.068206465
                         0.000618610  -0.000394043   0.000924824   0.000399721  -0.002682175  -0.107158983  -0.063389572   0.189502076

    7    7.2  1.5  1.5  -0.001229805   0.000614302  -0.000853065   0.004482519   0.000000010   0.000000003   0.008223308  -0.261617574
                        -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000028  -0.000000003   0.000000000  -0.000000000

    8    8.2  1.5  1.5  -0.000811311   0.004760373  -0.002447649  -0.001340778   0.038945440  -0.012876858   0.003663038  -0.011525070
                         0.006231585  -0.003923457   0.004696618  -0.034222725  -0.031505134  -0.001392276  -0.004465105   0.271457432

    9    9.2  1.5  1.5   0.009166715  -0.009209524   0.008298380   0.005356309   0.025978232   0.024219187  -0.021585653   0.161245118
                         0.003743173   0.011511122  -0.003231294  -0.007394595   0.157992192  -0.033574738  -0.000501100   0.103183556

   10   10.2  1.5  1.5   0.002572025   0.011570264  -0.003817963  -0.001606578   0.155260886  -0.031711974   0.000231079   0.055094767
                        -0.011375025   0.010776682  -0.010034192   0.003907276  -0.018532521  -0.025076485   0.023940252  -0.245200686

   11    1.2  1.5  0.5   0.429574845  -0.461977743   0.402081981   0.257687526  -0.000000001   0.000000001   0.002688162  -0.019760553
                         0.124901251   0.561793084  -0.185372936  -0.078001103   0.000000001  -0.000000000  -0.000029358  -0.007016146

   12    2.2  1.5  0.5   0.001459253  -0.000145937  -0.000039304   0.000411934   0.023653168   0.031858044  -0.071523989   0.092381216
                         0.000019231  -0.000025065   0.000118096   0.000031463   0.198593683  -0.040566137  -0.216468659   0.016840674

   13    3.2  1.5  0.5  -0.000066429  -0.000729138   0.000728074   0.000221820   0.042180401   0.057360165   0.008666812   0.179915280
                         0.000208525   0.001000755  -0.000391999  -0.000154543   0.353009386  -0.072191742   0.122075496   0.072887852

   14    4.2  1.5  0.5   0.000026681  -0.000516547   0.000339900  -0.000286504   0.013007568  -0.064283224  -0.227228428   0.046055430
                        -0.001051283  -0.000273616   0.000444982  -0.000703327   0.036461211   0.134883127   0.057827059   0.088569253

   15    5.2  1.5  0.5   0.000399781  -0.000068847   0.000194438  -0.001411006  -0.055498640  -0.341192240   0.051635700   0.242585178
                         0.000263130   0.000079120  -0.000125979   0.000230681   0.069424743   0.036548051  -0.014661866  -0.031114160

   16    6.2  1.5  0.5   0.000041623   0.000173504  -0.000095253  -0.000078031   0.071367140   0.065216103   0.086726502   0.014574374
                         0.000825801  -0.000103910   0.000119322  -0.001258533   0.047259501   0.324469749  -0.030576648   0.227885913

   17    7.2  1.5  0.5   0.002049529  -0.002204126   0.001918360   0.001229444   0.000000009   0.000000035  -0.029218605   0.214784542
                         0.000595912   0.002680351  -0.000884426  -0.000372149  -0.000000009  -0.000000011   0.000319094   0.076261026

   18    8.2  1.5  0.5   0.000782314   0.005678348  -0.002064382   0.002773580  -0.169362309   0.056682386  -0.023479304  -0.005208013
                        -0.003881271   0.000629351  -0.009896005  -0.008965274   0.021042395   0.048899036   0.061932008  -0.036531938

   19    9.2  1.5  0.5   0.006107900   0.011846844   0.019404727  -0.018627398  -0.041132250  -0.082977933  -0.110277358   0.203850221
                         0.000465952   0.003429008   0.011195443   0.000799023   0.024387725   0.029753399  -0.148101617  -0.019182850

   20   10.2  1.5  0.5   0.000649928   0.001325118   0.012822807   0.002437705   0.069149690   0.010477408  -0.150714743  -0.021210415
                         0.006336303  -0.017180728  -0.010103938  -0.019699740   0.006384439   0.079946001   0.085927258   0.207971823

   21    1.2  1.5 -0.5   0.015834340   0.547447010   0.634982266   0.050163079   0.000000000   0.000000001   0.010499902  -0.000626856
                         0.044507694   0.132965490   0.513752181   0.091760698  -0.000000002  -0.000000001   0.016616494   0.001373811

   22    2.2  1.5 -0.5  -0.000331279   0.000582785   0.000237602   0.001291350   0.027255952   0.194740570  -0.045920222  -0.211569779
                         0.000033575   0.000099506   0.000385595   0.000068925  -0.043791082  -0.045552507  -0.083512171  -0.006900343

   23    3.2  1.5 -0.5   0.000213282   0.000633616   0.000981780  -0.000638263   0.048277752   0.346206665  -0.097397711   0.126343567
                         0.000059467   0.000177904   0.000685207   0.000122328  -0.078556310  -0.080844021  -0.147990869  -0.012233913

   24    4.2  1.5 -0.5   0.000316268  -0.000108340  -0.000005623   0.000100232  -0.104841184   0.038711351  -0.099715864  -0.008980711
                        -0.000810963  -0.000032805  -0.000040612   0.001247262   0.106461805  -0.000218763  -0.036647082  -0.226153050

   25    5.2  1.5 -0.5   0.001267776   0.000283279  -0.000411653   0.000229098   0.082104618   0.046312311  -0.034703781  -0.004882692
                         0.000166534  -0.000513325   0.000303419  -0.000212472   0.333176739  -0.075862141  -0.249430645   0.037328767

   26    6.2  1.5 -0.5  -0.000041868  -0.000472950   0.000264940   0.000103921  -0.327243662   0.068780785  -0.234648175  -0.019929956
                        -0.001085482  -0.000299646   0.000470951  -0.000735941   0.049450407   0.050950291   0.052353161   0.092985199

   27    7.2  1.5 -0.5   0.000075547   0.002611906   0.003029542   0.000239331  -0.000000004  -0.000000011  -0.114127216   0.006813513
                         0.000212349   0.000634387   0.002451145   0.000437796  -0.000000032   0.000000008  -0.180610632  -0.014932441

   28    8.2  1.5 -0.5  -0.001278203  -0.002208334  -0.003615346  -0.000736078  -0.065309574  -0.038029061   0.027228660   0.050622789
                        -0.006640134   0.012013902   0.004853281  -0.002544566  -0.036587816  -0.166373572   0.006077622  -0.030545429

   29    9.2  1.5 -0.5   0.007493305   0.014441929  -0.016192724  -0.003004973   0.000355961   0.008883610  -0.023558745  -0.186343669
                        -0.005439074  -0.019291998   0.009618640   0.002982125   0.088150297  -0.046986216  -0.199767314  -0.088945039

   30   10.2  1.5 -0.5   0.001966423   0.006900236   0.001242211  -0.000169731  -0.078721050   0.029603599  -0.211144302   0.045794332
                        -0.027812284   0.006097714  -0.006372158  -0.009678796   0.017439456   0.062817728   0.088566600  -0.173904779

   31    1.2  1.5 -1.5   0.851920393   0.150495936  -0.255684071   0.164445694   0.000000000  -0.000000000   0.006506169   0.000772465
                        -0.055795235  -0.334738493   0.192793501   0.067256511  -0.000000001   0.000000001   0.024282543   0.002052983

   32    2.2  1.5 -1.5  -0.000066023  -0.000728795   0.000729027   0.000220503  -0.042133776  -0.056920871   0.008567227   0.180154683
                         0.000208541   0.001000744  -0.000391723  -0.000154480  -0.353113670   0.072055875   0.121996564   0.072874161

   33    3.2  1.5 -1.5  -0.001459048   0.000145031   0.000038521  -0.000412842   0.023665657   0.031879987   0.071628090  -0.092244168
                        -0.000019340   0.000024913  -0.000118907  -0.000031349   0.198600101  -0.040508633   0.216632044  -0.016870139

   34    4.2  1.5 -1.5  -0.000189732  -0.000625107   0.000253951   0.000081943   0.389216932  -0.007166175   0.027553158  -0.058764721
                         0.000621845  -0.000310252   0.001086578   0.000419911  -0.046415430  -0.005935124  -0.105299401   0.181652381

   35    5.2  1.5 -1.5   0.000075587   0.001037005   0.000962787   0.000061851  -0.074820934   0.205690032  -0.123687614   0.021384424
                        -0.000093590   0.000264047   0.000496452   0.000032617  -0.034677222  -0.052899318  -0.144501237  -0.062429725

   36    6.2  1.5 -1.5   0.000003777   0.000134767  -0.000807131  -0.000171038  -0.098931153   0.078213084   0.156195336   0.038501322
                        -0.000205389   0.001038212   0.000717691  -0.000062046   0.041512063   0.207525423  -0.095942377  -0.065162584

   37    7.2  1.5 -1.5   0.004064567   0.000718026  -0.001219886   0.000784581  -0.000000002  -0.000000032  -0.070717893  -0.008396196
                        -0.000266203  -0.001597059   0.000919830   0.000320885   0.000000005  -0.000000004  -0.263935685  -0.022314604

   38    8.2  1.5 -1.5   0.002267379   0.014443477  -0.001683784  -0.001677761  -0.005703870   0.016320007   0.276348704   0.025458859
                         0.030043113   0.002704777  -0.010738223   0.005828245  -0.011628317  -0.047360093  -0.087188270  -0.013539321

   39    9.2  1.5 -1.5   0.000035162  -0.009446235  -0.014030076  -0.001365860  -0.023291768  -0.157371009   0.132765503  -0.000932196
                         0.004044839  -0.002428646  -0.012915284  -0.001015343   0.034224630   0.029508733   0.122671132   0.009086310

   40   10.2  1.5 -1.5   0.000369430  -0.000544159   0.012471784   0.002549426  -0.034394632  -0.035575027  -0.221308004  -0.018466460
                        -0.008681164  -0.012750391  -0.010569353  -0.002645812  -0.021248254  -0.152262317   0.106786134  -0.002034210

   41    1.2  0.5  0.5  -0.000000007  -0.000000001   0.000000008   0.000000018   0.000000003  -0.000000003   0.000000002   0.000000000
                         0.000000025  -0.000000006  -0.000000007   0.000000017   0.000000002   0.000000001   0.000000002   0.000000001

   42    2.2  0.5  0.5   0.000000045  -0.000000000  -0.000000004  -0.000000040  -0.000000007   0.000000001  -0.000000003   0.000000003
                        -0.000000033   0.000000015   0.000000015  -0.000000007  -0.000000004  -0.000000003  -0.000000003  -0.000000001

   43    3.2  0.5  0.5   0.000000022   0.000000001   0.000000004  -0.000000034  -0.000000002   0.000000001  -0.000000002   0.000000003
                        -0.000000007   0.000000011  -0.000000000   0.000000003  -0.000000002  -0.000000001  -0.000000002  -0.000000001

   44    4.2  0.5  0.5   0.000000035   0.000000003  -0.000000011  -0.000000072  -0.000000002   0.000000003  -0.000000005   0.000000005
                        -0.000000025   0.000000014  -0.000000006   0.000000027  -0.000000003  -0.000000004  -0.000000003  -0.000000005

   45    5.2  0.5  0.5   0.000000032  -0.000000013   0.000000004   0.000000033   0.000000007   0.000000002   0.000000003   0.000000004
                         0.000000042   0.000000010  -0.000000032   0.000000002  -0.000000001   0.000000001   0.000000001  -0.000000002

   46    6.2  0.5  0.5   0.000000011  -0.000000002   0.000000001  -0.000000004   0.000000004   0.000000000   0.000000001   0.000000002
                         0.000000016   0.000000003  -0.000000021   0.000000023  -0.000000001  -0.000000000   0.000000000  -0.000000003

   47    7.2  0.5  0.5  -0.000000016   0.000000005  -0.000000014  -0.000000046  -0.000000001   0.000000004   0.000000001  -0.000000001
                        -0.000000012   0.000000001  -0.000000002   0.000000003   0.000000001   0.000000003  -0.000000006  -0.000000002

   48    8.2  0.5  0.5  -0.000000011   0.000000000  -0.000000004   0.000000004   0.000000001   0.000000002   0.000000002  -0.000000001
                         0.000000014  -0.000000010  -0.000000004  -0.000000008   0.000000003   0.000000003  -0.000000003   0.000000001

   49    1.2  0.5 -0.5  -0.000000064  -0.000000002   0.000000002   0.000000013  -0.000000001  -0.000000002  -0.000000005  -0.000000007
                        -0.000000024  -0.000000005   0.000000017   0.000000023   0.000000010  -0.000000002   0.000000003   0.000000004

   50    2.2  0.5 -0.5  -0.000000033  -0.000000015  -0.000000001  -0.000000020   0.000000004   0.000000006   0.000000002   0.000000000
                         0.000000026   0.000000014  -0.000000022  -0.000000007  -0.000000003   0.000000005  -0.000000003   0.000000004

   51    3.2  0.5 -0.5   0.000000028  -0.000000000   0.000000010  -0.000000005  -0.000000004  -0.000000003  -0.000000001   0.000000003
                        -0.000000016   0.000000010  -0.000000001   0.000000001  -0.000000005  -0.000000002   0.000000003  -0.000000004

   52    4.2  0.5 -0.5   0.000000016   0.000000009   0.000000001  -0.000000006  -0.000000004   0.000000000  -0.000000005  -0.000000001
                        -0.000000029  -0.000000012   0.000000010  -0.000000007   0.000000005  -0.000000001   0.000000001   0.000000001

   53    5.2  0.5 -0.5  -0.000000027   0.000000004   0.000000012   0.000000005   0.000000001  -0.000000002  -0.000000000  -0.000000001
                         0.000000004  -0.000000006   0.000000003   0.000000015   0.000000005   0.000000001   0.000000001   0.000000001

   54    6.2  0.5 -0.5   0.000000003   0.000000004   0.000000003   0.000000007   0.000000001  -0.000000002   0.000000003  -0.000000001
                         0.000000022  -0.000000007   0.000000005   0.000000007  -0.000000001  -0.000000001   0.000000001  -0.000000002

   55    7.2  0.5 -0.5   0.000000079   0.000000006   0.000000002  -0.000000016  -0.000000001  -0.000000002  -0.000000001   0.000000006
                        -0.000000001   0.000000002  -0.000000004   0.000000002  -0.000000004  -0.000000004  -0.000000001  -0.000000004

   56    8.2  0.5 -0.5  -0.000000024   0.000000001   0.000000010   0.000000010   0.000000000  -0.000000001  -0.000000000  -0.000000000
                        -0.000000002  -0.000000002   0.000000001   0.000000007   0.000000003   0.000000001   0.000000002   0.000000002


   Nr   State  S   Sz       17            18            19            20            21            22            23            24

    1    1.2  1.5  1.5  -0.007451404   0.019766173  -0.004893175   0.001190156  -0.021521410   0.001607602   0.000000003   0.000000000
                         0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000

    2    2.2  1.5  1.5  -0.240898088   0.012169235  -0.120950399  -0.044019144   0.174960457   0.043545490  -0.081556527   0.069858447
                        -0.041333036  -0.006239581   0.001290921   0.151631887  -0.000206876  -0.111098022   0.013309627  -0.073097954

    3    3.2  1.5  1.5   0.048043742   0.225104338   0.141496574   0.006832480   0.225339574  -0.048650381   0.045845162  -0.039278991
                         0.023255282   0.003480568  -0.000652170  -0.085333539   0.000103523   0.062575906  -0.007453483   0.041137824

    4    4.2  1.5  1.5  -0.081553652   0.073117468   0.023673642   0.194330222  -0.007065754  -0.167148467   0.007701453  -0.091698863
                         0.233776183   0.040308250   0.068959525   0.059945370  -0.019591454  -0.096758519   0.061074769  -0.085057130

    5    5.2  1.5  1.5  -0.078591769   0.196013520   0.201893261  -0.040435359  -0.044416069   0.047750398   0.035447274   0.025295296
                        -0.104269344   0.071543110  -0.105873790   0.088511179   0.018847330  -0.135469035  -0.062902787  -0.026616785

    6    6.2  1.5  1.5  -0.022433551   0.076942003  -0.080090141   0.033736037   0.012534198  -0.101305852  -0.047834835  -0.015061882
                         0.009078330  -0.229760611  -0.249604350  -0.024084004   0.056761978   0.017980522  -0.066615249   0.026826675

    7    7.2  1.5  1.5   0.080992011  -0.214845726   0.135313633  -0.032912060   0.595143386  -0.044455898  -0.000000096  -0.000000006
                        -0.000000004  -0.000000012   0.000000022   0.000000007  -0.000000009   0.000000054   0.000000010   0.000000002

    8    8.2  1.5  1.5  -0.004819877   0.012357295  -0.039050833   0.016685591   0.007705317  -0.028061333  -0.112288785  -0.077784348
                        -0.125446790   0.318510222  -0.098598410   0.003926141  -0.315112652   0.041911572  -0.009055359   0.049363820

    9    9.2  1.5  1.5   0.078381186  -0.167626479   0.132579352   0.012106717  -0.029876258  -0.005383352   0.202624119  -0.014211259
                         0.010196402  -0.005701470  -0.080367709   0.071222564  -0.042254712  -0.102236505  -0.297655225  -0.294121421

   10   10.2  1.5  1.5   0.029588762  -0.055925759  -0.060803760   0.067103454   0.009774688  -0.103894525  -0.281662049  -0.287564021
                        -0.047445637   0.087466469  -0.111910891  -0.013825932   0.119243712  -0.006026677  -0.210518993   0.001182746

   11    1.2  1.5  0.5  -0.009589798   0.020550177  -0.015129642  -0.001014180   0.003389522   0.000076110  -0.000000000   0.000000000
                        -0.003767996   0.007121989   0.006953574  -0.007675359  -0.001117911   0.011881612  -0.000000001  -0.000000000

   12    2.2  1.5  0.5   0.192097454  -0.042506870  -0.136090077   0.014458804   0.035788121   0.051860625  -0.034082575   0.000242074
                         0.089202705   0.004744640   0.040169520  -0.226469357  -0.028390370  -0.089459395   0.045525731   0.046457048

   13    3.2  1.5  0.5   0.004621701  -0.217519521  -0.151074204  -0.023371956   0.030676958  -0.028002653  -0.060442156   0.000270604
                        -0.005910725  -0.086310176   0.081992091   0.011912319  -0.000875249   0.229020778   0.080954350   0.082735153

   14    4.2  1.5  0.5   0.052912949   0.095481019   0.012233935  -0.188275927   0.052521698  -0.177941642  -0.017043595  -0.005659599
                        -0.174942647   0.003953364   0.061649267  -0.026946246   0.078831010  -0.060304415   0.030296989  -0.042085069

   15    5.2  1.5  0.5  -0.092786472   0.183804761   0.063016186   0.033218076   0.277772947   0.024821548  -0.079756614   0.075538157
                         0.048276229  -0.007655143  -0.018179226   0.007710960  -0.029762455   0.016779985   0.003179698  -0.061689552

   16    6.2  1.5  0.5  -0.030420553  -0.010355321   0.003661894   0.070650617   0.016751674   0.065956989   0.010026194  -0.065948293
                        -0.013568422   0.213686705   0.044448145  -0.006219049   0.269729498   0.000887709   0.076292859  -0.067095039

   17    7.2  1.5  0.5   0.104234987  -0.223367337   0.418388313   0.028045706  -0.093732373  -0.002104682   0.000000012  -0.000000018
                         0.040955725  -0.077411468  -0.192291008   0.212250935   0.030914217  -0.328568762   0.000000006   0.000000019

   18    8.2  1.5  0.5   0.050726416  -0.044967584  -0.050628165  -0.005347217   0.043239799  -0.026854688   0.285592790   0.391255407
                         0.004491470   0.159109942  -0.123291709   0.011899957  -0.025392599   0.000365241   0.199918995   0.011676749

   19    9.2  1.5  0.5  -0.270540946   0.062623412   0.088258553   0.043819311  -0.224724540  -0.039714910   0.219890045  -0.082264704
                        -0.043376816   0.019783889  -0.021780275  -0.138815561  -0.004044695   0.103181573   0.005170126   0.156255078

   20   10.2  1.5  0.5  -0.046661066   0.002456158   0.008488668  -0.144567879  -0.001360427   0.114568766  -0.116199827   0.055468101
                         0.160271885   0.218149629  -0.156537300  -0.020303882  -0.160464453   0.061521403  -0.230688899   0.140651743

   21    1.2  1.5 -0.5   0.022808748   0.009763596  -0.013347482  -0.003181722   0.003210766   0.004712229  -0.000000001   0.000000000
                         0.004628523   0.000707965   0.000114927   0.013264166  -0.000018256  -0.009714455   0.000000000   0.000000001

   22    2.2  1.5 -0.5  -0.047867680  -0.225274200  -0.141712463  -0.006797414  -0.225283582   0.048718043   0.045857941  -0.039265376
                        -0.023145927  -0.003508858   0.000729232   0.085123231  -0.000123019  -0.062526295  -0.007440920   0.041139404

   23    3.2  1.5 -0.5  -0.241007552   0.011993299  -0.121037591  -0.044029780   0.174973227   0.043459999   0.081641575  -0.069849039
                        -0.041367612  -0.006359377   0.001318674   0.151767504  -0.000184009  -0.110826450  -0.013409848   0.072992868

   24    4.2  1.5 -0.5   0.070224147   0.033695357  -0.013516785  -0.060800622  -0.003762641  -0.047279555  -0.042441655  -0.027062729
                         0.035791853  -0.193957025  -0.044743483  -0.047457005  -0.267300218  -0.050640382   0.001375200   0.021817411

   25    5.2  1.5 -0.5   0.149523925   0.061495049  -0.042448812   0.047335293   0.018492121   0.079460934  -0.048353908   0.010048414
                         0.079242100   0.101113568   0.004958877  -0.196686391   0.045521528  -0.181452081   0.084696693   0.079184983

   26    6.2  1.5 -0.5   0.080321222   0.045510380  -0.006168237  -0.189586586  -0.022289791  -0.176392284  -0.077073676  -0.076900686
                        -0.179056131   0.007191045   0.064076306  -0.033926751   0.083142980  -0.068141210  -0.053949764   0.002723535

   27    7.2  1.5 -0.5  -0.247916547  -0.106124074   0.369105270   0.087985897  -0.088789096  -0.130309891   0.000000029   0.000000004
                        -0.050309106  -0.007695137  -0.003178149  -0.366801254   0.000504853   0.268639229  -0.000000022  -0.000000022

   28    8.2  1.5 -0.5   0.039951627  -0.045540315   0.003443385   0.128311070   0.003330535  -0.039925325   0.076193284  -0.244379063
                        -0.164704738  -0.024662212   0.004411557   0.007519155  -0.004672696  -0.054694423   0.383942398  -0.248615679

   29    9.2  1.5 -0.5   0.048551705   0.244311898  -0.128731566  -0.006246412   0.025398863  -0.047183276   0.140506443  -0.041448382
                         0.001664599   0.101289721   0.078164025   0.062297643   0.004378247   0.250405798  -0.106963029  -0.216010184

   30   10.2  1.5 -0.5   0.090272253  -0.029814796  -0.066912250   0.194626294   0.027500768   0.020406441   0.147885927   0.246723798
                        -0.185331089   0.145288162  -0.201042200   0.001396538   0.049268860   0.046615136   0.031454296   0.076466680

   31    1.2  1.5 -1.5  -0.016146326  -0.006778407  -0.003404390   0.001836055   0.001211432   0.004496282   0.000000000   0.000000000
                        -0.007878823  -0.004540632  -0.000394059  -0.015502461  -0.001851623  -0.014510680   0.000000000   0.000000002

   32    2.2  1.5 -1.5   0.004406523  -0.217385293  -0.151111653  -0.023384372   0.030972017  -0.028006697   0.060544163  -0.000355322
                        -0.005900950  -0.086293926   0.082026760   0.012020109  -0.000884080   0.228936497  -0.080980985  -0.082634627

   33    3.2  1.5 -1.5  -0.191918403   0.042718403   0.136295524  -0.014424471  -0.035665184  -0.051927375  -0.034078757   0.000227558
                        -0.089141826  -0.004770016  -0.040182157   0.226305175   0.028342800   0.089586754   0.045538867   0.046446541

   34    4.2  1.5 -1.5  -0.080990774   0.042080573  -0.129266873   0.022713031   0.024460730  -0.082770242   0.099045382   0.061507560
                        -0.000724207  -0.225501329  -0.237163258   0.020149566   0.054120643  -0.012313136   0.076376736  -0.002500532

   35    5.2  1.5 -1.5  -0.221692796  -0.114347734  -0.146633154  -0.043441765   0.037005015   0.081390724   0.022069176  -0.056177738
                        -0.041307840   0.054917624   0.069305255   0.175954364  -0.015769334  -0.130404200  -0.029347169   0.045357947

   36    6.2  1.5 -1.5   0.051015964  -0.021672747   0.025354127  -0.199244624  -0.003670273   0.175548610  -0.023967786  -0.073606233
                        -0.254301072  -0.020189034  -0.094367955  -0.029308556   0.023864620   0.053798341   0.019289323  -0.036164781

   37    7.2  1.5 -1.5   0.175500281   0.073676948   0.094143463  -0.050773409  -0.033500399  -0.124338186  -0.000000006  -0.000000000
                         0.085637788   0.049353772   0.010897142   0.428698092   0.051203967   0.401271869  -0.000000015  -0.000000065

   38    8.2  1.5 -1.5  -0.146118785  -0.075507340   0.013746131  -0.258279693  -0.032402425  -0.200750157  -0.035826419  -0.027492896
                         0.259013712   0.110792097   0.019033963  -0.054751630  -0.010453063  -0.041504335   0.084874375  -0.109247005

   39    9.2  1.5 -1.5   0.163972725   0.068030475  -0.120416956  -0.072312467   0.024105681   0.009856249   0.292424172  -0.260064982
                         0.081405308   0.024318887   0.004225918   0.112811656  -0.001909578  -0.096225123  -0.034604572   0.249040934

   40   10.2  1.5 -1.5  -0.006889564   0.011418730   0.000639532  -0.051428886   0.007868270   0.145355761   0.046369884  -0.254183359
                         0.118738181   0.051326307  -0.130877934  -0.020179232   0.033126978   0.059924930   0.283803241  -0.242986720

   41    1.2  0.5  0.5  -0.000000001  -0.000000004  -0.000000003  -0.000000000  -0.000000001  -0.000000001   0.000000000  -0.000000000
                         0.000000001  -0.000000004  -0.000000001   0.000000001  -0.000000002   0.000000006  -0.000000001   0.000000000

   42    2.2  0.5  0.5   0.000000002   0.000000009   0.000000006  -0.000000005   0.000000004  -0.000000003   0.000000000   0.000000000
                        -0.000000005   0.000000001  -0.000000003  -0.000000001   0.000000001  -0.000000006   0.000000001  -0.000000000

   43    3.2  0.5  0.5   0.000000000   0.000000006   0.000000003   0.000000001   0.000000004  -0.000000001  -0.000000000   0.000000000
                         0.000000001   0.000000001   0.000000000  -0.000000002  -0.000000001  -0.000000004   0.000000000  -0.000000000

   44    4.2  0.5  0.5   0.000000001   0.000000014   0.000000007  -0.000000000   0.000000008  -0.000000005  -0.000000000   0.000000000
                         0.000000001  -0.000000000  -0.000000001  -0.000000003  -0.000000004  -0.000000011   0.000000001  -0.000000000

   45    5.2  0.5  0.5   0.000000005  -0.000000007  -0.000000002  -0.000000002  -0.000000002   0.000000004  -0.000000001  -0.000000000
                         0.000000003   0.000000001   0.000000005  -0.000000004  -0.000000003   0.000000006  -0.000000001  -0.000000000

   46    6.2  0.5  0.5   0.000000001  -0.000000001  -0.000000000  -0.000000002   0.000000001   0.000000000  -0.000000000  -0.000000000
                         0.000000002  -0.000000003  -0.000000000  -0.000000001  -0.000000004   0.000000002  -0.000000000  -0.000000000

   47    7.2  0.5  0.5  -0.000000003   0.000000008   0.000000003   0.000000006   0.000000003   0.000000004  -0.000000000   0.000000001
                         0.000000003   0.000000005  -0.000000001  -0.000000001   0.000000001  -0.000000012  -0.000000000  -0.000000000

   48    8.2  0.5  0.5  -0.000000000   0.000000000  -0.000000001   0.000000002  -0.000000000   0.000000004   0.000000000   0.000000000
                         0.000000002   0.000000003  -0.000000001  -0.000000002   0.000000001  -0.000000003  -0.000000001   0.000000000

   49    1.2  0.5 -0.5  -0.000000006  -0.000000002  -0.000000007   0.000000004  -0.000000003  -0.000000009   0.000000001  -0.000000000
                         0.000000001  -0.000000007  -0.000000003   0.000000006   0.000000001  -0.000000001  -0.000000001  -0.000000001

   50    2.2  0.5 -0.5  -0.000000001   0.000000001  -0.000000001   0.000000008   0.000000001   0.000000005  -0.000000001   0.000000001
                         0.000000005   0.000000007   0.000000003  -0.000000003   0.000000006  -0.000000008  -0.000000000   0.000000000

   51    3.2  0.5 -0.5   0.000000002   0.000000002   0.000000003  -0.000000008   0.000000001  -0.000000003   0.000000000  -0.000000000
                        -0.000000005  -0.000000005  -0.000000003   0.000000001  -0.000000005   0.000000005   0.000000001   0.000000000

   52    4.2  0.5 -0.5  -0.000000000   0.000000004   0.000000001  -0.000000003   0.000000001  -0.000000007   0.000000001   0.000000000
                        -0.000000002  -0.000000002  -0.000000003   0.000000001   0.000000000  -0.000000001  -0.000000000  -0.000000000

   53    5.2  0.5 -0.5  -0.000000003  -0.000000002  -0.000000003   0.000000002   0.000000001  -0.000000002   0.000000000  -0.000000000
                         0.000000002  -0.000000003  -0.000000001   0.000000001  -0.000000000   0.000000001  -0.000000001   0.000000000

   54    6.2  0.5 -0.5  -0.000000001  -0.000000000   0.000000003  -0.000000002  -0.000000001   0.000000002  -0.000000000  -0.000000000
                        -0.000000001  -0.000000001  -0.000000001   0.000000002  -0.000000002   0.000000003   0.000000000   0.000000000

   55    7.2  0.5 -0.5   0.000000005   0.000000005   0.000000005  -0.000000007   0.000000004  -0.000000003  -0.000000000  -0.000000000
                        -0.000000002  -0.000000003  -0.000000002  -0.000000003  -0.000000005   0.000000003   0.000000001  -0.000000000

   56    8.2  0.5 -0.5  -0.000000002  -0.000000002  -0.000000003   0.000000002   0.000000000  -0.000000002   0.000000000  -0.000000000
                         0.000000001  -0.000000002  -0.000000000   0.000000001   0.000000000   0.000000002  -0.000000000   0.000000000


   Nr   State  S   Sz       25            26            27            28            29            30            31            32

    1    1.2  1.5  1.5  -0.000000005  -0.000000001  -0.000000005   0.000000638  -0.000000010   0.000000140   0.023144122   0.002320569
                        -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000

    2    2.2  1.5  1.5   0.102022594   0.238482664  -0.052683066   0.115266654  -0.147173279   0.044611325  -0.064243177  -0.042223482
                        -0.001422902  -0.101075113  -0.090799083   0.014262374   0.114175344  -0.058584141  -0.001059691   0.008560281

    3    3.2  1.5  1.5   0.181145848   0.423834955   0.030255287   0.220740682   0.077745179   0.036258763  -0.048803926   0.015204689
                        -0.001834357  -0.180605539   0.050247844  -0.007936860  -0.063850758   0.033195176   0.000600804  -0.004810770

    4    4.2  1.5  1.5  -0.051035873   0.025735175  -0.202038462  -0.013949151   0.194206133   0.073314864  -0.015154772   0.017547263
                        -0.039978233   0.007107446   0.003898127   0.023038356   0.088199817  -0.102654480   0.037260122   0.028631569

    5    5.2  1.5  1.5  -0.137893940   0.043665644  -0.228838187  -0.087630069  -0.076913074   0.388847243  -0.032773042   0.030572945
                         0.051699208  -0.041272477   0.194592783  -0.017285183  -0.067923502   0.088283113  -0.025186576  -0.007421182

    6    6.2  1.5  1.5  -0.037395713   0.035632235  -0.070609975  -0.023320686   0.181221147   0.118498464  -0.013561094  -0.003352227
                        -0.137847901   0.046661891  -0.294926146   0.049550063  -0.200824983  -0.266511449   0.022081575  -0.047304096

    7    7.2  1.5  1.5   0.000000164   0.000000028   0.000000236  -0.000018581   0.000000269  -0.000004165   0.583032808   0.058458385
                         0.000000007  -0.000000017  -0.000000039  -0.000000004   0.000000061  -0.000000016   0.000000002   0.000000008

    8    8.2  1.5  1.5   0.014321377   0.100433235   0.006628085  -0.000976322   0.040996028   0.008142407   0.007741332  -0.019566504
                         0.060858108   0.250166646  -0.083339829   0.109078051   0.009299862   0.070103450   0.447792771   0.011747491

    9    9.2  1.5  1.5  -0.128916896   0.061526537  -0.256515056   0.006667709  -0.087513630  -0.054822744  -0.120967341   0.112127495
                         0.041527000   0.009301302   0.101660725   0.024969364  -0.156190230  -0.026035540   0.027781987  -0.001334779

   10   10.2  1.5  1.5  -0.030084300   0.003070044  -0.130849479   0.000623328   0.095257239  -0.003155742  -0.044578868  -0.003132971
                        -0.152462467  -0.022844354  -0.238922844  -0.067554543  -0.051749964   0.133692340   0.002371763  -0.121160671

   11    1.2  1.5  0.5  -0.000000001   0.000000003  -0.000000018   0.000000126  -0.000000112  -0.000000595   0.011250904  -0.010618703
                         0.000000003  -0.000000001  -0.000000061   0.000000021  -0.000000170  -0.000000116   0.004313796   0.000302771

   12    2.2  1.5  0.5   0.447970471  -0.148613713   0.176371619  -0.012103152   0.073411672   0.081193970   0.008104242   0.043544799
                        -0.106846577   0.107283708  -0.073577799  -0.006538778   0.119446331   0.034499381   0.007280239   0.008183096

   13    3.2  1.5  0.5  -0.251630663   0.083021114  -0.090885808  -0.048692774   0.009490964   0.218826681   0.036788567  -0.063460460
                         0.059991333  -0.060239835   0.069677257  -0.005931301   0.007569480   0.033713932   0.011747383  -0.003488649

   14    4.2  1.5  0.5  -0.027749767   0.067667673   0.282243855   0.010802013  -0.212519426  -0.001741239  -0.019014672   0.006027513
                        -0.144135563   0.066534524   0.431860091   0.026268047  -0.006599078  -0.036950394  -0.014577147  -0.065016466

   15    5.2  1.5  0.5   0.042107097   0.064978156   0.011243840   0.052137742   0.309125950  -0.024198228  -0.071458994  -0.009344280
                         0.036987836  -0.056536560   0.044681580  -0.032230054  -0.185665901   0.109054192   0.006218380   0.017281212

   16    6.2  1.5  0.5   0.016242160   0.020467607   0.062291891  -0.022393519  -0.087490639   0.101462656  -0.002364719  -0.003304110
                         0.092952217   0.056053438  -0.239923478   0.019140149  -0.278424820   0.068419078  -0.073100964   0.017220235

   17    7.2  1.5  0.5   0.000000071  -0.000000115   0.000000508  -0.000003694   0.000003245   0.000017361   0.283426036  -0.267499978
                        -0.000000077   0.000000032   0.000001788  -0.000000629   0.000004992   0.000003394   0.108670572   0.007627220

   18    8.2  1.5  0.5   0.014680285   0.011288884  -0.048742435   0.034157573  -0.047308736  -0.078797817  -0.085354835  -0.043976276
                        -0.023535959  -0.071161099   0.035342410  -0.098582313   0.081054422   0.330154523   0.097910283  -0.094547010

   19    9.2  1.5  0.5  -0.089428781  -0.213571882  -0.054735343  -0.110441485  -0.133621426  -0.021015871   0.362919149   0.191573005
                        -0.003217615   0.080205962  -0.073646087  -0.003929101   0.113825198   0.003186894   0.021028797  -0.054262517

   20   10.2  1.5  0.5  -0.001284743  -0.086855168  -0.066246464   0.008596192   0.121737358  -0.030524113   0.011537210  -0.036122115
                        -0.087889812  -0.204857290   0.041076571  -0.079889997   0.105451259  -0.130302420   0.101222828  -0.123791352

   21    1.2  1.5 -0.5  -0.000000003  -0.000000001   0.000000157   0.000000020   0.000000430  -0.000000049  -0.010014544  -0.013842569
                         0.000000001  -0.000000001   0.000000268  -0.000000043  -0.000000335   0.000000175  -0.000374721   0.003067984

   22    2.2  1.5 -0.5   0.182938216   0.423770637  -0.025006815  -0.219910974  -0.077391730  -0.035590152   0.048832190  -0.015199209
                        -0.002222591  -0.180032340  -0.051339050   0.007857782   0.065722520  -0.033392941  -0.000590626   0.004828008

   23    3.2  1.5 -0.5  -0.102508824  -0.238234336  -0.055368774   0.114939583  -0.147348134   0.043602812  -0.064213905  -0.042309594
                         0.000771642   0.101792030  -0.090446741   0.014332205   0.113078132  -0.058657569  -0.001045834   0.008547245

   24    4.2  1.5 -0.5  -0.015126625   0.063116847  -0.005358422  -0.014344671  -0.004771612   0.064374608  -0.002706697   0.021140747
                         0.094791963   0.132366116  -0.006820935   0.498562480   0.037748821   0.242780693   0.070825944  -0.013744350

   25    5.2  1.5 -0.5  -0.085075769   0.011953499   0.048340806  -0.066998019   0.079692583   0.323054449  -0.010660678   0.065470926
                        -0.006652791  -0.054373114   0.022226235  -0.141252197   0.102811426  -0.003187626  -0.018330721   0.014967363

   26    6.2  1.5 -0.5   0.016502193  -0.042380927  -0.047858692   0.009109220  -0.070449793  -0.050763214   0.000228008   0.010289075
                         0.057658373  -0.084272470  -0.019093121  -0.269931234   0.057941157   0.275561447  -0.015695035  -0.066966642

   27    7.2  1.5 -0.5   0.000000106   0.000000049  -0.000004594  -0.000000584  -0.000012556   0.000001399  -0.252280372  -0.348713704
                        -0.000000050   0.000000033  -0.000007805   0.000001258   0.000009767  -0.000005135  -0.009439752   0.077286826

   28    8.2  1.5 -0.5  -0.051525300   0.026602318  -0.118201697   0.016682117   0.199388144  -0.063282718  -0.045574530   0.068996671
                        -0.050426669   0.010494985   0.104437209   0.020388446   0.252672951  -0.072784914   0.077344491   0.111861441

   29    9.2  1.5 -0.5   0.219083903  -0.069811233  -0.113843835   0.036069043  -0.026233988  -0.171915335   0.170578248  -0.356309903
                        -0.062647485   0.055473833   0.042560264   0.010657842  -0.052598854  -0.053659999   0.065066150  -0.007573595

   30   10.2  1.5 -0.5  -0.051546889   0.051006786   0.101798613  -0.011899759  -0.047672455   0.055257717  -0.052733876  -0.037191394
                        -0.216819711   0.071278284   0.054599267   0.035860334  -0.074979691  -0.174783816   0.082639000   0.073671691

   31    1.2  1.5 -1.5   0.000000000   0.000000003  -0.000000512  -0.000000031  -0.000000146   0.000000091  -0.003405681   0.021587201
                         0.000000001  -0.000000004   0.000000256   0.000000006  -0.000000262  -0.000000031   0.000180273   0.002763094

   32    2.2  1.5 -1.5   0.252343856  -0.082784595  -0.091500850  -0.046572984   0.010672818   0.218126630   0.036698824  -0.063491974
                        -0.060120707   0.059530373   0.070479678  -0.006476495   0.006949337   0.033875601   0.011751534  -0.003475018

   33    3.2  1.5 -1.5   0.448063095  -0.146625289  -0.177833327   0.016514558  -0.071993739  -0.082248114  -0.008115952  -0.043506517
                        -0.106762733   0.105799770   0.074552885   0.005750601  -0.119835999  -0.034505438  -0.007267019  -0.008189832

   34    4.2  1.5 -1.5   0.015930156   0.017444022  -0.048892236  -0.075985344   0.073992389  -0.104068683  -0.020568789  -0.015817308
                        -0.020325722  -0.062651269   0.076362672   0.071880277   0.068966338   0.250527253   0.021699351  -0.042802954

   35    5.2  1.5 -1.5   0.059486308   0.141971701   0.116017556  -0.339325589   0.238759323  -0.081004692  -0.027781789  -0.041287342
                         0.007169430  -0.041277105   0.138397914  -0.056297194  -0.227451943   0.036834570  -0.005909250   0.022785935

   36    6.2  1.5 -1.5   0.000605862  -0.051033222  -0.134650483   0.009687673   0.215299725  -0.082031574   0.005016289  -0.010153053
                        -0.058261305  -0.132976659   0.082911652   0.362528837   0.206240582  -0.035062605  -0.042600900  -0.029284357

   37    7.2  1.5 -1.5   0.000000040  -0.000000145   0.000014932   0.000000919   0.000004221  -0.000002587  -0.085793861   0.543811788
                        -0.000000028   0.000000140  -0.000007485  -0.000000192   0.000007660   0.000000936   0.004541330   0.069606185

   38    8.2  1.5 -1.5  -0.067818833   0.024416383   0.063430184   0.051056007  -0.052183394   0.010697482   0.021886250   0.064589137
                        -0.260802672   0.057287192   0.095491979   0.084048483  -0.002575731   0.007926584   0.032727544  -0.425369952

   39    9.2  1.5 -1.5   0.043494181   0.128347039  -0.012366296  -0.312520720  -0.076578395  -0.056969380  -0.105175962  -0.139651298
                        -0.044267823  -0.043058464  -0.030173163   0.021097767   0.058756273  -0.028951344   0.001380855  -0.037582133

   40   10.2  1.5 -1.5   0.015979548  -0.066667958   0.030484814  -0.007280771  -0.040456125   0.029835267   0.002988749  -0.045301575
                         0.016917670  -0.140651855  -0.055909019   0.297735189  -0.083319234   0.078064581  -0.120256996  -0.036818609

   41    1.2  0.5  0.5   0.000000000   0.000000002   0.000000004   0.000000000  -0.000000003  -0.000000002   0.000000000  -0.000000002
                         0.000000001  -0.000000000   0.000000005   0.000000001   0.000000002  -0.000000003  -0.000000001  -0.000000002

   42    2.2  0.5  0.5  -0.000000004   0.000000003  -0.000000006   0.000000002   0.000000002  -0.000000001   0.000000001   0.000000001
                         0.000000002  -0.000000002  -0.000000004  -0.000000001   0.000000000  -0.000000003   0.000000000  -0.000000001

   43    3.2  0.5  0.5  -0.000000003   0.000000002  -0.000000004  -0.000000000   0.000000001   0.000000001   0.000000001   0.000000002
                         0.000000001  -0.000000001  -0.000000003  -0.000000001  -0.000000004  -0.000000002   0.000000000   0.000000000

   44    4.2  0.5  0.5  -0.000000005   0.000000004  -0.000000006   0.000000001  -0.000000001   0.000000002   0.000000001   0.000000003
                         0.000000003  -0.000000002   0.000000001  -0.000000001  -0.000000009  -0.000000004   0.000000000  -0.000000002

   45    5.2  0.5  0.5  -0.000000004   0.000000004   0.000000008   0.000000001  -0.000000005  -0.000000003  -0.000000001  -0.000000001
                        -0.000000001   0.000000001   0.000000002   0.000000002   0.000000003  -0.000000006  -0.000000001  -0.000000003

   46    6.2  0.5  0.5  -0.000000002   0.000000005   0.000000003   0.000000001  -0.000000004  -0.000000002   0.000000000  -0.000000000
                         0.000000001  -0.000000001   0.000000006   0.000000002  -0.000000001  -0.000000005  -0.000000001  -0.000000003

   47    7.2  0.5  0.5   0.000000001  -0.000000002  -0.000000006  -0.000000001   0.000000002   0.000000003  -0.000000000   0.000000004
                        -0.000000000  -0.000000002  -0.000000000  -0.000000000  -0.000000009   0.000000006  -0.000000000   0.000000004

   48    8.2  0.5  0.5   0.000000004  -0.000000002   0.000000001   0.000000000   0.000000001   0.000000000  -0.000000001   0.000000001
                        -0.000000001   0.000000001  -0.000000000   0.000000001   0.000000001   0.000000002  -0.000000000   0.000000001

   49    1.2  0.5 -0.5   0.000000010  -0.000000006  -0.000000001  -0.000000002   0.000000002   0.000000002  -0.000000001   0.000000001
                         0.000000001  -0.000000002   0.000000010  -0.000000004  -0.000000003   0.000000008   0.000000001   0.000000002

   50    2.2  0.5 -0.5   0.000000000  -0.000000002   0.000000001  -0.000000002   0.000000000   0.000000005  -0.000000002   0.000000006
                        -0.000000002   0.000000001   0.000000001  -0.000000004  -0.000000007   0.000000003  -0.000000002   0.000000003

   51    3.2  0.5 -0.5  -0.000000003   0.000000003  -0.000000001   0.000000002  -0.000000001  -0.000000005   0.000000001  -0.000000002
                         0.000000003  -0.000000001  -0.000000002   0.000000004   0.000000004  -0.000000005   0.000000001  -0.000000004

   52    4.2  0.5 -0.5   0.000000002   0.000000000  -0.000000003   0.000000001  -0.000000001  -0.000000001   0.000000000  -0.000000002
                         0.000000004  -0.000000000  -0.000000000  -0.000000000  -0.000000001   0.000000001   0.000000002  -0.000000002

   53    5.2  0.5 -0.5   0.000000002  -0.000000001  -0.000000000  -0.000000001  -0.000000002   0.000000002   0.000000000   0.000000001
                        -0.000000001   0.000000000   0.000000004  -0.000000000  -0.000000002   0.000000000  -0.000000000   0.000000000

   54    6.2  0.5 -0.5   0.000000001   0.000000001  -0.000000000   0.000000001  -0.000000002  -0.000000003   0.000000000  -0.000000001
                        -0.000000003   0.000000002   0.000000000   0.000000003   0.000000002  -0.000000005  -0.000000001  -0.000000001

   55    7.2  0.5 -0.5  -0.000000008   0.000000007   0.000000000   0.000000002  -0.000000003  -0.000000003   0.000000002  -0.000000003
                         0.000000001   0.000000001  -0.000000004   0.000000006   0.000000002  -0.000000013   0.000000001  -0.000000006

   56    8.2  0.5 -0.5   0.000000002  -0.000000001  -0.000000000  -0.000000001  -0.000000001   0.000000002  -0.000000000   0.000000000
                         0.000000000  -0.000000000   0.000000002  -0.000000001  -0.000000001   0.000000001  -0.000000000   0.000000001


   Nr   State  S   Sz       33            34            35            36            37            38            39            40

    1    1.2  1.5  1.5   0.015870156   0.000086440   0.000000003  -0.000000008   0.000000044  -0.000000665  -0.000000896  -0.000001043
                        -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000

    2    2.2  1.5  1.5   0.021295298   0.039123799   0.412938146  -0.245881481  -0.121904879   0.149824742  -0.307025576  -0.166321528
                         0.000227629   0.012172315  -0.088329813  -0.004496097   0.096429215   0.055907481  -0.146782055   0.097564819

    3    3.2  1.5  1.5  -0.070262004  -0.022292022  -0.230734589   0.137650749   0.083682366  -0.317504465  -0.138833693  -0.265685022
                        -0.000135642  -0.006824081   0.048120309   0.003224702  -0.054322534  -0.031624027   0.082595439  -0.054696857

    4    4.2  1.5  1.5   0.019557110  -0.009507736   0.079225009   0.048833864  -0.073704529  -0.106171418   0.149426476  -0.065107256
                        -0.058314411  -0.038572752   0.259291760  -0.224294912  -0.210432028   0.388908290  -0.289552471  -0.005315691

    5    5.2  1.5  1.5   0.043428705  -0.034406226   0.076137226   0.154237200  -0.059861185  -0.040165193  -0.182770959   0.185639464
                         0.037979096  -0.029993728  -0.082851487   0.071469333  -0.143018521  -0.113489739   0.046483669   0.024392223

    6    6.2  1.5  1.5   0.020477572  -0.041231013  -0.037784212   0.011522673   0.273603481  -0.005460603  -0.138304332   0.136627674
                        -0.025552881   0.049163889  -0.192697763  -0.078229172   0.120084025  -0.029079517  -0.006840091   0.032221849

    7    7.2  1.5  1.5   0.399791419   0.002177557   0.000000078  -0.000000254   0.000001090  -0.000016551  -0.000022336  -0.000026055
                        -0.000000016   0.000000021   0.000000002   0.000000002   0.000000034   0.000000003  -0.000000003  -0.000000000

    8    8.2  1.5  1.5  -0.008359256  -0.012692212  -0.000000018  -0.000000048   0.000005872   0.000000930  -0.000000289  -0.000000166
                         0.227129359   0.054571717   0.000000103  -0.000000305   0.000004604  -0.000004940  -0.000012825  -0.000016566

    9    9.2  1.5  1.5   0.160709754  -0.127313119   0.000000072   0.000000454  -0.000008584  -0.000011645  -0.000010209   0.000016200
                         0.107398166  -0.118838242  -0.000000074   0.000000109  -0.000008875  -0.000003175  -0.000007678   0.000003054

   10   10.2  1.5  1.5   0.066132330  -0.121682808   0.000000015   0.000000048   0.000015744  -0.000003643  -0.000007050   0.000009163
                        -0.232281375   0.118652413   0.000000316  -0.000000057   0.000008557   0.000016000  -0.000001421  -0.000000220

   11    1.2  1.5  0.5  -0.014917736   0.011521381   0.000000015  -0.000000011   0.000000644   0.000000888   0.000000169  -0.000000711
                        -0.006399394   0.011774177   0.000000002  -0.000000006  -0.000000238   0.000000210   0.000000443  -0.000000529

   12    2.2  1.5  0.5  -0.018563231   0.052432766   0.135899182   0.237250682  -0.100223317  -0.103139617  -0.210571336   0.248083953
                        -0.012074573   0.052871353  -0.025689612   0.011942317  -0.286126951  -0.012039378  -0.043332005   0.031930265

   13    3.2  1.5  0.5  -0.044287091   0.012805191   0.231038894   0.412877935  -0.165946635  -0.254190485   0.061108803   0.101942863
                        -0.016695217   0.013487769  -0.046633787   0.020824031   0.245410133  -0.067130229  -0.131095822   0.167008081

   14    4.2  1.5  0.5  -0.015537761   0.035685066  -0.051038790   0.043421761  -0.004254422   0.110902216   0.008845416   0.100946122
                        -0.021824137  -0.035808129   0.103573794  -0.049409490   0.040364589   0.024227806   0.102420887   0.125113140

   15    5.2  1.5  0.5  -0.048388850  -0.009655169  -0.259698217   0.148676058  -0.106933287   0.364528784   0.153658250   0.282207481
                         0.007351748   0.009382691   0.026065276   0.020827146   0.054560222   0.029624820  -0.145013359   0.026616738

   16    6.2  1.5  0.5  -0.000666077  -0.013806820   0.045853606   0.007862603   0.056945983   0.044888871  -0.092429926   0.072727220
                        -0.045574729   0.013534768   0.244397479  -0.144250066   0.073922945   0.021369894   0.367926149   0.306477612

   17    7.2  1.5  0.5  -0.375798619   0.290239712   0.000000423  -0.000000285   0.000016065   0.000022066   0.000004179  -0.000017764
                        -0.161209691   0.296607968   0.000000022  -0.000000147  -0.000005979   0.000005228   0.000011057  -0.000013209

   18    8.2  1.5  0.5   0.043139679  -0.054941995  -0.000000093   0.000000201   0.000005178  -0.000002938  -0.000006115   0.000012652
                         0.010400495   0.122532520   0.000000246   0.000000001   0.000012013   0.000011838   0.000001507  -0.000016801

   19    9.2  1.5  0.5  -0.028044333  -0.184929447   0.000000350  -0.000000277  -0.000001509  -0.000004258  -0.000018034  -0.000013494
                         0.000816961  -0.034455564  -0.000000000   0.000000002   0.000004428   0.000003231  -0.000003230  -0.000000468

   20   10.2  1.5  0.5  -0.011380560  -0.032884055  -0.000000006  -0.000000066   0.000001022   0.000002258  -0.000001032  -0.000000410
                         0.386017749   0.150059640  -0.000000258   0.000000261   0.000000130  -0.000019489  -0.000009312  -0.000010222

   21    1.2  1.5 -0.5   0.016552019   0.014083072  -0.000000033   0.000000034   0.000000489  -0.000000984   0.000000678   0.000000073
                         0.000074038   0.004374499   0.000000001   0.000000000  -0.000000375  -0.000000205   0.000000566  -0.000000377

   22    2.2  1.5 -0.5   0.070219654   0.022343011  -0.222316538   0.131133649  -0.087486086   0.326693600   0.134466966   0.264284189
                         0.000114629   0.006889710   0.050364630   0.002835372   0.056423291   0.030744590  -0.086633029   0.056140070

   23    3.2  1.5 -0.5   0.021265751   0.039101259  -0.394117879   0.233083874  -0.128327704   0.171630561  -0.322171311  -0.172528721
                         0.000208421   0.012161632   0.087512219   0.005183135   0.096888334   0.053209184  -0.153735774   0.102952052

   24    4.2  1.5 -0.5   0.000697223   0.023449103  -0.052277430  -0.068938970   0.167267061   0.015823978   0.027422407  -0.028304667
                         0.043537667  -0.002350259  -0.042638434  -0.093610189   0.121983837   0.067732902  -0.050999491   0.002689607

   25    5.2  1.5 -0.5   0.005638343   0.033314230  -0.148802301  -0.269924572   0.062213557   0.132107820   0.244921730  -0.295076113
                        -0.013659427   0.042655076   0.047998785   0.017513037   0.301001380  -0.006485293   0.068529960  -0.041370294

   26    6.2  1.5 -0.5  -0.002027494   0.038099784  -0.033133169   0.003327411   0.387470647  -0.050401763  -0.094688711   0.130843782
                        -0.023043284  -0.035841773  -0.140451973  -0.254659095   0.110800473   0.171656600  -0.169174607   0.041427237

   27    7.2  1.5 -0.5   0.416968522   0.354772263  -0.000000798   0.000000891   0.000012165  -0.000024523   0.000016868   0.000001889
                         0.001865109   0.110199758   0.000000026   0.000000020  -0.000009401  -0.000005125   0.000014095  -0.000009378

   28    8.2  1.5 -0.5   0.056639508  -0.048666443  -0.000000037  -0.000000023  -0.000011432  -0.000004818   0.000011394  -0.000007102
                        -0.129079155  -0.013279817   0.000000730  -0.000000718  -0.000004703   0.000018382  -0.000010100  -0.000003325

   29    9.2  1.5 -0.5  -0.196674980   0.002539647   0.000000394   0.000000251   0.000001964   0.000005777  -0.000007417   0.000002276
                        -0.093843818   0.011471904   0.000000069  -0.000000053  -0.000020017   0.000005332   0.000002582  -0.000006481

   30   10.2  1.5 -0.5   0.083841200  -0.275190923  -0.000000039   0.000000078  -0.000013563   0.000000844  -0.000003917   0.000002389
                        -0.132856886   0.287950867  -0.000000237  -0.000000022   0.000006361  -0.000001036   0.000014043  -0.000011352

   31    1.2  1.5 -1.5   0.001743002   0.012322718  -0.000000024  -0.000000017   0.000000012  -0.000000097   0.000000704  -0.000000541
                        -0.000734122   0.012337153   0.000000002  -0.000000003   0.000001221  -0.000000073  -0.000000100   0.000000182

   32    2.2  1.5 -1.5  -0.044305495   0.012834337  -0.238482526  -0.411675807  -0.168442988  -0.253627692   0.053869919   0.109196640
                        -0.016703129   0.013487124   0.044179709  -0.016841515   0.237704267  -0.067097492  -0.129976699   0.164543606

   33    3.2  1.5 -1.5   0.018483409  -0.052476890   0.130187421   0.227533056   0.098876185   0.111914006   0.213198818  -0.251968389
                         0.012083386  -0.052884012  -0.024675664   0.007826287   0.288680627   0.014159360   0.038040206  -0.029319941

   34    4.2  1.5 -1.5   0.032449409  -0.026855513   0.080685486  -0.032435773   0.109437650  -0.129546681  -0.203313105   0.158575072
                        -0.025661756   0.051942686   0.206356294   0.252306295   0.239751036   0.329939350   0.159480138  -0.208992994

   35    5.2  1.5 -1.5   0.046236315   0.053974886   0.133658435  -0.083257453   0.031749563  -0.191021619  -0.036573730  -0.225362948
                         0.005286896  -0.000678262  -0.094139557  -0.065536997  -0.104361584  -0.108767298   0.011848899   0.009826122

   36    6.2  1.5 -1.5  -0.005839116   0.001392155   0.024074152   0.002637987   0.003768803   0.042486749   0.004558700  -0.041084989
                         0.066268563   0.029691317   0.076634668  -0.192389658  -0.051169272  -0.118683292   0.193186939   0.278237094

   37    7.2  1.5 -1.5   0.043908641   0.310426457  -0.000000650  -0.000000437   0.000000269  -0.000002400   0.000017579  -0.000013453
                        -0.018493550   0.310790133   0.000000062  -0.000000078   0.000030474  -0.000001808  -0.000002515   0.000004537

   38    8.2  1.5 -1.5  -0.042345225   0.180752926   0.000000068  -0.000000082   0.000016967   0.000003220  -0.000003439   0.000005511
                         0.015484684  -0.185822150   0.000000422   0.000000384   0.000002405   0.000000129  -0.000005963   0.000011399

   39    9.2  1.5 -1.5   0.172797553   0.183163680  -0.000000309   0.000000357   0.000010453  -0.000020900  -0.000000270  -0.000009143
                         0.003391722   0.016560428   0.000000005   0.000000058  -0.000005050  -0.000003016   0.000007265  -0.000003489

   40   10.2  1.5 -1.5   0.002842470  -0.105932988  -0.000000040  -0.000000008   0.000000481   0.000003101  -0.000007499   0.000004596
                         0.179643888   0.206192923  -0.000000493   0.000000350   0.000006437  -0.000007351   0.000021279   0.000009452

   41    1.2  0.5  0.5  -0.000000002   0.000000001  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000
                         0.000000002  -0.000000001   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000

   42    2.2  0.5  0.5   0.000000004  -0.000000005   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000
                        -0.000000002  -0.000000002  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000

   43    3.2  0.5  0.5   0.000000002  -0.000000001   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000
                        -0.000000002  -0.000000001  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000

   44    4.2  0.5  0.5   0.000000005  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000
                        -0.000000005  -0.000000002  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000

   45    5.2  0.5  0.5  -0.000000000   0.000000001   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000
                         0.000000005  -0.000000004   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000

   46    6.2  0.5  0.5   0.000000000   0.000000001   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000
                         0.000000001  -0.000000001   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000

   47    7.2  0.5  0.5   0.000000005   0.000000003   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000
                        -0.000000004   0.000000003   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000

   48    8.2  0.5  0.5   0.000000000   0.000000002  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000
                         0.000000001   0.000000002   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000

   49    1.2  0.5 -0.5  -0.000000001   0.000000002  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000
                        -0.000000006   0.000000004   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000

   50    2.2  0.5 -0.5   0.000000004   0.000000006   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000
                        -0.000000002   0.000000003   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000

   51    3.2  0.5 -0.5   0.000000000  -0.000000005   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000
                         0.000000003  -0.000000002  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000

   52    4.2  0.5 -0.5   0.000000000  -0.000000003  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000
                        -0.000000001   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000

   53    5.2  0.5 -0.5  -0.000000002   0.000000001  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000
                        -0.000000001   0.000000002   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000

   54    6.2  0.5 -0.5  -0.000000002  -0.000000001  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000
                         0.000000003  -0.000000003  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000

   55    7.2  0.5 -0.5   0.000000000  -0.000000006   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000
                         0.000000003  -0.000000005  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000

   56    8.2  0.5 -0.5  -0.000000002   0.000000001  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000
                        -0.000000001   0.000000002   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000


   Nr   State  S   Sz       41            42            43            44            45            46            47            48

    1    1.2  1.5  1.5   0.000000001  -0.000000013  -0.000000003  -0.000000002  -0.000000054   0.000000200   0.000000030   0.000000042
                        -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000

    2    2.2  1.5  1.5  -0.078160863  -0.103234427  -0.053433334  -0.136480164   0.005685218   0.047425965   0.069731486   0.101490585
                         0.011211398   0.030903442   0.021890758  -0.057842429  -0.056551268  -0.018965583   0.010597489   0.011046419

    3    3.2  1.5  1.5  -0.148687138  -0.171574178  -0.094771835  -0.243624457  -0.046905301   0.129338870  -0.014384696  -0.026789893
                         0.025453840   0.049882354   0.038476747  -0.103090242   0.031597252   0.010522646  -0.002615246  -0.007305807

    4    4.2  1.5  1.5  -0.087784049   0.081211149  -0.035843701   0.011971030  -0.014289571  -0.006531571  -0.076097846   0.082319744
                        -0.117324502   0.081712230   0.007496540   0.007462283  -0.002006707   0.031904552  -0.095552703  -0.104075048

    5    5.2  1.5  1.5  -0.348826229   0.276592341  -0.028735056   0.029476189  -0.097985756  -0.040130118  -0.145913585   0.179575429
                         0.028592970  -0.053113549   0.079626664  -0.013134755   0.118708965   0.009248541   0.084051691   0.042105615

    6    6.2  1.5  1.5   0.000847665   0.030129916  -0.073699811   0.010629248   0.215022711   0.072365196  -0.127837060   0.053528671
                        -0.339601447   0.271589937  -0.034926692   0.029463523  -0.005577846   0.013421782  -0.110221400  -0.008228654

    7    7.2  1.5  1.5   0.000000090  -0.000000371  -0.000000087  -0.000000049  -0.000001317   0.000004894   0.000000706   0.000001018
                         0.000000013  -0.000000004  -0.000000032  -0.000000006  -0.000000017   0.000000003   0.000000001   0.000000015

    8    8.2  1.5  1.5   0.000003145   0.000002956   0.101740899  -0.166295040  -0.015019202  -0.007467796  -0.008001443   0.006551014
                         0.000009122   0.000014510   0.221030116   0.382536240   0.058996163  -0.204556590   0.123627046  -0.133824221

    9    9.2  1.5  1.5  -0.000006782   0.000006545   0.123982174  -0.113664624   0.116451689  -0.006326436   0.408161944  -0.091184291
                         0.000001249   0.000001976  -0.172868441   0.091381281   0.283001396   0.076857166  -0.256808119   0.066989846

   10   10.2  1.5  1.5  -0.000000311  -0.000000632   0.181594746   0.022605396   0.016447971  -0.029922398   0.198379132  -0.025503684
                        -0.000010206   0.000001745   0.056952967  -0.196177786   0.159240245   0.102538846   0.415156178  -0.285932992

   11    1.2  1.5  0.5  -0.000000011  -0.000000015   0.000000001  -0.000000004   0.000000035   0.000000031   0.000000010  -0.000000122
                         0.000000000   0.000000000  -0.000000003  -0.000000001  -0.000000156  -0.000000042   0.000000036  -0.000000034

   12    2.2  1.5  0.5  -0.180026073   0.145034710   0.120106305  -0.097043774   0.022029375  -0.004673231   0.090870907  -0.005232225
                        -0.006656354  -0.010346679  -0.235065361   0.031386465   0.081117658   0.030410129  -0.067033758   0.024305613

   13    3.2  1.5  0.5   0.102493584  -0.079144705  -0.067361863   0.054761198  -0.039862768  -0.020507284  -0.058567595   0.096189950
                         0.003603926   0.006619368   0.132291969  -0.017381139   0.077429206   0.016559563   0.009043640   0.012650205

   14    4.2  1.5  0.5   0.067782174   0.094619458  -0.089461161   0.005419815  -0.050781852  -0.013718282   0.101347142  -0.075151603
                        -0.329018269   0.354930820  -0.046290806   0.013892392   0.117943460   0.017029730   0.255415688  -0.064828240

   15    5.2  1.5  0.5   0.156375126   0.175803363   0.004958931  -0.050671469  -0.038197152   0.058831038  -0.123865196  -0.126286392
                         0.051789516  -0.160004774   0.020425997  -0.022749599   0.064776476   0.028179359  -0.085285476  -0.007707064

   16    6.2  1.5  0.5   0.024875929   0.051817207   0.024116591   0.012483340   0.113142651   0.045791391  -0.068102604  -0.009685164
                         0.301058802   0.072104964  -0.000634124  -0.056843519   0.003102562  -0.012144236   0.007661148   0.182972497

   17    7.2  1.5  0.5  -0.000000308  -0.000000403   0.000000021  -0.000000084   0.000000892   0.000000747   0.000000281  -0.000002924
                         0.000000006   0.000000012  -0.000000106  -0.000000011  -0.000003812  -0.000001024   0.000000891  -0.000000821

   18    8.2  1.5  0.5   0.000001109   0.000001113   0.008705623   0.103594651   0.530193123   0.104041279  -0.096033976   0.125974448
                        -0.000002862  -0.000003982  -0.048344972  -0.071812694   0.084407463   0.114458579   0.080781575  -0.281285858

   19    9.2  1.5  0.5  -0.000009939  -0.000012134  -0.145578156  -0.361536725  -0.028983133   0.252920305  -0.146171485  -0.180804543
                         0.000001217   0.000002818   0.051560148  -0.172231873   0.166006145   0.069798184  -0.007040641  -0.079082809

   20   10.2  1.5  0.5  -0.000001721  -0.000003407  -0.057436894   0.151581869   0.013278618   0.012530865   0.003556098  -0.056285643
                        -0.000009610  -0.000011716  -0.140079550  -0.358213232  -0.015895480   0.101242049   0.171198408   0.359697829

   21    1.2  1.5 -0.5  -0.000000005   0.000000011  -0.000000003  -0.000000004  -0.000000041   0.000000030  -0.000000099  -0.000000147
                         0.000000009  -0.000000001   0.000000002  -0.000000003   0.000000097   0.000000032  -0.000000016  -0.000000017

   22    2.2  1.5 -0.5  -0.140877281  -0.176938272  -0.094783418  -0.243276779   0.047554499  -0.129756626   0.015510483   0.028104992
                         0.024964976   0.050951747   0.038410098  -0.102754250  -0.031228921  -0.010082862   0.003210859   0.006922390

   23    3.2  1.5 -0.5   0.081497669   0.091779876   0.053204422   0.137282736   0.005489403   0.047737030   0.069253198   0.100474892
                        -0.015095042  -0.028209759  -0.021470693   0.057937509  -0.056986319  -0.019259710   0.010209157   0.011202371

   24    4.2  1.5 -0.5  -0.006380614   0.145946351  -0.004862601   0.038868578  -0.056164482  -0.019740290   0.005181513   0.020187918
                         0.366144059   0.301751650  -0.013413019  -0.091834803  -0.052422338   0.290058021   0.023351715   0.105553411

   25    5.2  1.5 -0.5  -0.214039535   0.136058128  -0.023657109   0.009787563  -0.009555743  -0.022547229   0.006307329   0.107932219
                        -0.110980199  -0.088201970   0.049420443   0.018862850   0.180765280  -0.028205986  -0.053118714   0.005025942

   26    6.2  1.5 -0.5  -0.033624773  -0.048418474   0.046678139  -0.019328857  -0.140967414  -0.037966470   0.026486688  -0.026150357
                         0.078640209  -0.299944583   0.035847570   0.015067892  -0.002391633  -0.137918287  -0.043933953   0.097842213

   27    7.2  1.5 -0.5  -0.000000095   0.000000239  -0.000000072  -0.000000137  -0.000000985   0.000000725  -0.000002419  -0.000003611
                         0.000000235  -0.000000016   0.000000050  -0.000000074   0.000002325   0.000000784  -0.000000394  -0.000000412

   28    8.2  1.5 -0.5  -0.000001794   0.000001739   0.123948963  -0.038005903   0.232604212   0.090484842  -0.073086953  -0.086165407
                        -0.000003278   0.000002117  -0.011452721  -0.029215787   0.047414697  -0.125936619   0.281071558   0.501234283

   29    9.2  1.5 -0.5   0.000012421  -0.000010038  -0.165997423   0.145454747   0.034953167  -0.024943860   0.115535932   0.105550471
                        -0.000000166   0.000001089   0.364054813  -0.053548899   0.303905390   0.072235066  -0.095147913   0.157302632

   30   10.2  1.5 -0.5   0.000000369   0.000000683   0.347828597  -0.047122499  -0.276406010  -0.068804269  -0.010932502  -0.015982944
                        -0.000012504   0.000009692   0.178293499  -0.144265200  -0.137628265  -0.024709686  -0.234031066   0.123632010

   31    1.2  1.5 -1.5  -0.000000014  -0.000000004   0.000000002  -0.000000002  -0.000000059  -0.000000010  -0.000000160   0.000000075
                         0.000000003   0.000000004   0.000000000   0.000000000  -0.000000046  -0.000000025   0.000000089  -0.000000022

   32    2.2  1.5 -1.5  -0.103575169   0.086660834   0.067853457  -0.054788999  -0.039828083  -0.020230372  -0.057630281   0.096157103
                        -0.004572875  -0.004904082  -0.132413002   0.017978040   0.077482759   0.016719525   0.008473780   0.012769678

   33    3.2  1.5 -1.5  -0.181133124   0.145395428   0.120430691  -0.097562429  -0.021987699   0.005414737  -0.088831349   0.005720155
                        -0.006594979  -0.012819132  -0.235665274   0.031612460  -0.081361848  -0.030156541   0.066029053  -0.024088408

   34    4.2  1.5 -1.5   0.057761241   0.060614190  -0.004084958  -0.032852414  -0.125679563  -0.080396787  -0.008274418  -0.063833886
                        -0.106067364  -0.144426647   0.013708222   0.017589596  -0.028175466   0.066402685  -0.034742554   0.030534718

   35    5.2  1.5 -1.5   0.279914368   0.346921352  -0.031440759  -0.074443610   0.050023682  -0.147019948  -0.134774226  -0.179248399
                        -0.014002155  -0.055636641   0.007931531  -0.042420275   0.111566098   0.009383585  -0.008386709  -0.023719987

   36    6.2  1.5 -1.5  -0.038229568  -0.085147251   0.011027456  -0.033888547  -0.052695591  -0.024445411  -0.001281789   0.021981685
                        -0.269105701  -0.322915447   0.029708570   0.073952433  -0.080215496   0.223127030  -0.065523483  -0.136912560

   37    7.2  1.5 -1.5  -0.000000406  -0.000000145   0.000000003  -0.000000012  -0.000001408  -0.000000188  -0.000003845   0.000001867
                         0.000000093   0.000000136   0.000000022  -0.000000000  -0.000001167  -0.000000626   0.000002184  -0.000000561

   38    8.2  1.5 -1.5  -0.000000682  -0.000000794   0.373781004  -0.064913340   0.055749298  -0.072704303  -0.082597630   0.031618151
                        -0.000014902   0.000009750   0.186302160  -0.235422683  -0.041712028  -0.141873766  -0.199034694   0.018473504

   39    9.2  1.5 -1.5   0.000005535   0.000007166   0.147081224   0.207036820  -0.179121211   0.549973544  -0.024208913  -0.032262990
                        -0.000003383  -0.000000476  -0.002935912   0.052330752   0.079393251   0.004098552  -0.037670590  -0.017497611

   40   10.2  1.5 -1.5  -0.000001263  -0.000002173  -0.142409047   0.102282194  -0.098347591  -0.036845797   0.047826732   0.008354857
                        -0.000001773  -0.000009664  -0.136847325  -0.162565338   0.122760764  -0.475787830  -0.121824843  -0.246581312

   41    1.2  0.5  0.5  -0.000000000  -0.000000000  -0.000000001  -0.000000002  -0.000000000  -0.000000001   0.000000006  -0.000000002
                        -0.000000000   0.000000000   0.000000001  -0.000000003   0.000000002   0.000000001   0.000000009  -0.000000006

   42    2.2  0.5  0.5   0.000000000  -0.000000000  -0.000000004   0.000000001   0.000000002   0.000000004  -0.000000005   0.000000005
                        -0.000000000   0.000000000   0.000000009  -0.000000002  -0.000000007  -0.000000003  -0.000000007  -0.000000004

   43    3.2  0.5  0.5   0.000000000  -0.000000000  -0.000000002   0.000000001   0.000000004   0.000000002  -0.000000008   0.000000003
                        -0.000000000   0.000000000   0.000000005  -0.000000002  -0.000000003  -0.000000003  -0.000000002   0.000000002

   44    4.2  0.5  0.5   0.000000000  -0.000000000  -0.000000005   0.000000001   0.000000004   0.000000006  -0.000000015   0.000000003
                        -0.000000000   0.000000000   0.000000011  -0.000000004  -0.000000002  -0.000000005   0.000000007  -0.000000000

   45    5.2  0.5  0.5   0.000000000  -0.000000000  -0.000000008   0.000000002   0.000000008   0.000000002   0.000000014  -0.000000004
                         0.000000000  -0.000000000   0.000000002  -0.000000002  -0.000000000   0.000000002   0.000000009  -0.000000005

   46    6.2  0.5  0.5   0.000000000  -0.000000000  -0.000000006  -0.000000002   0.000000003   0.000000002   0.000000004  -0.000000003
                         0.000000000  -0.000000000   0.000000005  -0.000000005   0.000000000   0.000000001   0.000000013  -0.000000007

   47    7.2  0.5  0.5  -0.000000000   0.000000000   0.000000003  -0.000000002  -0.000000005   0.000000001  -0.000000018  -0.000000000
                         0.000000000   0.000000000  -0.000000000   0.000000003   0.000000001   0.000000001  -0.000000001   0.000000009

   48    8.2  0.5  0.5  -0.000000000   0.000000000   0.000000004  -0.000000003  -0.000000002   0.000000000   0.000000001  -0.000000002
                         0.000000000   0.000000000  -0.000000006   0.000000002   0.000000002   0.000000002  -0.000000002   0.000000002

   49    1.2  0.5 -0.5  -0.000000000   0.000000000   0.000000015  -0.000000006  -0.000000016  -0.000000005  -0.000000008  -0.000000005
                        -0.000000000   0.000000000  -0.000000009   0.000000004   0.000000010  -0.000000002   0.000000005   0.000000002

   50    2.2  0.5 -0.5  -0.000000000   0.000000000  -0.000000000   0.000000001   0.000000000   0.000000001  -0.000000009  -0.000000002
                         0.000000000  -0.000000000  -0.000000003   0.000000003   0.000000009  -0.000000005   0.000000003   0.000000009

   51    3.2  0.5 -0.5   0.000000000  -0.000000000  -0.000000003   0.000000001   0.000000005   0.000000001   0.000000006   0.000000002
                        -0.000000000   0.000000000   0.000000006  -0.000000005  -0.000000011   0.000000003  -0.000000001  -0.000000007

   52    4.2  0.5 -0.5  -0.000000000  -0.000000000   0.000000005  -0.000000002  -0.000000003   0.000000001  -0.000000003   0.000000001
                        -0.000000000   0.000000000   0.000000001  -0.000000004  -0.000000004  -0.000000001   0.000000000   0.000000001

   53    5.2  0.5 -0.5  -0.000000000   0.000000000   0.000000002  -0.000000002  -0.000000002  -0.000000001  -0.000000003   0.000000001
                         0.000000000  -0.000000000  -0.000000004   0.000000001   0.000000004  -0.000000000   0.000000007  -0.000000001

   54    6.2  0.5 -0.5  -0.000000000   0.000000000  -0.000000004  -0.000000000   0.000000004   0.000000000   0.000000004   0.000000002
                         0.000000000  -0.000000000  -0.000000006   0.000000001  -0.000000005   0.000000002   0.000000003  -0.000000007

   55    7.2  0.5 -0.5   0.000000000  -0.000000000  -0.000000012   0.000000004   0.000000016   0.000000005   0.000000007   0.000000006
                         0.000000000  -0.000000000   0.000000010  -0.000000007  -0.000000011   0.000000003   0.000000003  -0.000000011

   56    8.2  0.5 -0.5  -0.000000000   0.000000000   0.000000002  -0.000000002  -0.000000003  -0.000000001  -0.000000002   0.000000000
                        -0.000000000   0.000000000  -0.000000002   0.000000000   0.000000003  -0.000000001   0.000000003   0.000000001


   Nr   State  S   Sz       49            50            51            52            53            54            55            56

    1    1.2  1.5  1.5   0.000000059   0.000000016  -0.000000005   0.000000010   0.000000002  -0.000000004  -0.000000001  -0.000000002
                         0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000

    2    2.2  1.5  1.5  -0.000000009   0.000000000   0.000000000  -0.000000002  -0.000000000  -0.000000001  -0.000000000   0.000000000
                         0.000000006  -0.000000001  -0.000000001  -0.000000000  -0.000000001   0.000000000  -0.000000001  -0.000000000

    3    3.2  1.5  1.5  -0.000000011  -0.000000003   0.000000001  -0.000000003  -0.000000000   0.000000000   0.000000001  -0.000000000
                        -0.000000003  -0.000000002   0.000000000  -0.000000001  -0.000000001  -0.000000000  -0.000000001   0.000000000

    4    4.2  1.5  1.5   0.000000006   0.000000001  -0.000000001   0.000000000  -0.000000001   0.000000000  -0.000000001  -0.000000000
                         0.000000001  -0.000000001  -0.000000000   0.000000000  -0.000000000   0.000000001   0.000000000  -0.000000000

    5    5.2  1.5  1.5   0.000000004   0.000000002   0.000000001   0.000000001   0.000000001  -0.000000000  -0.000000001  -0.000000000
                         0.000000001   0.000000001  -0.000000000  -0.000000003  -0.000000002  -0.000000000  -0.000000000  -0.000000000

    6    6.2  1.5  1.5  -0.000000007   0.000000000  -0.000000001  -0.000000001  -0.000000001  -0.000000000  -0.000000000  -0.000000000
                        -0.000000006   0.000000001  -0.000000001   0.000000001   0.000000001  -0.000000001   0.000000000   0.000000000

    7    7.2  1.5  1.5  -0.000000003  -0.000000001   0.000000000  -0.000000001  -0.000000000   0.000000000   0.000000000   0.000000000
                         0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000

    8    8.2  1.5  1.5  -0.000000000  -0.000000001   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000001  -0.000000000
                        -0.000000000  -0.000000001   0.000000000  -0.000000000  -0.000000000   0.000000001   0.000000000   0.000000000

    9    9.2  1.5  1.5   0.000000001  -0.000000002   0.000000000  -0.000000001  -0.000000001   0.000000000  -0.000000000   0.000000000
                        -0.000000007  -0.000000003  -0.000000001   0.000000001   0.000000000  -0.000000000  -0.000000000  -0.000000000

   10   10.2  1.5  1.5  -0.000000001  -0.000000002   0.000000001   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000
                        -0.000000001  -0.000000000   0.000000000  -0.000000001  -0.000000000   0.000000000   0.000000001  -0.000000000

   11    1.2  1.5  0.5  -0.000000053  -0.000000012   0.000000000  -0.000000001  -0.000000005  -0.000000005  -0.000000002   0.000000000
                        -0.000000062  -0.000000013   0.000000006   0.000000006   0.000000007  -0.000000003  -0.000000001  -0.000000000

   12    2.2  1.5  0.5   0.000000022   0.000000001  -0.000000001  -0.000000002  -0.000000001  -0.000000000   0.000000000   0.000000000
                        -0.000000010  -0.000000002  -0.000000000   0.000000001   0.000000001  -0.000000001   0.000000001   0.000000000

   13    3.2  1.5  0.5   0.000000007  -0.000000004   0.000000000   0.000000001   0.000000000  -0.000000000  -0.000000000   0.000000000
                        -0.000000005  -0.000000000   0.000000002   0.000000000  -0.000000001  -0.000000000  -0.000000000  -0.000000000

   14    4.2  1.5  0.5   0.000000007  -0.000000003   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000001   0.000000000
                        -0.000000018  -0.000000005   0.000000001  -0.000000001  -0.000000001   0.000000001  -0.000000000  -0.000000000

   15    5.2  1.5  0.5   0.000000002  -0.000000002   0.000000002  -0.000000000  -0.000000001   0.000000000   0.000000000  -0.000000000
                         0.000000011  -0.000000000  -0.000000003   0.000000000  -0.000000001  -0.000000000  -0.000000000  -0.000000000

   16    6.2  1.5  0.5   0.000000012  -0.000000001  -0.000000002  -0.000000001   0.000000001  -0.000000000  -0.000000000   0.000000000
                        -0.000000010   0.000000003  -0.000000001  -0.000000002   0.000000001  -0.000000000  -0.000000000  -0.000000000

   17    7.2  1.5  0.5   0.000000003   0.000000001  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000
                         0.000000004   0.000000001  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000

   18    8.2  1.5  0.5  -0.000000009   0.000000001  -0.000000000  -0.000000001  -0.000000001  -0.000000000   0.000000000  -0.000000000
                        -0.000000009   0.000000001  -0.000000000  -0.000000000   0.000000001   0.000000000   0.000000001  -0.000000000

   19    9.2  1.5  0.5  -0.000000004  -0.000000002   0.000000000  -0.000000001  -0.000000001   0.000000000   0.000000000  -0.000000000
                         0.000000005  -0.000000001  -0.000000002  -0.000000001   0.000000000   0.000000000  -0.000000000   0.000000000

   20   10.2  1.5  0.5   0.000000002   0.000000001  -0.000000002   0.000000001   0.000000000   0.000000000   0.000000000   0.000000000
                        -0.000000010  -0.000000001   0.000000001  -0.000000002   0.000000001  -0.000000000  -0.000000000   0.000000000

   21    1.2  1.5 -0.5   0.000000010   0.000000005  -0.000000004  -0.000000000  -0.000000003  -0.000000001  -0.000000002   0.000000000
                         0.000000007   0.000000005  -0.000000009   0.000000002  -0.000000002   0.000000004  -0.000000002   0.000000002

   22    2.2  1.5 -0.5  -0.000000002   0.000000001   0.000000001  -0.000000000   0.000000001  -0.000000001   0.000000000  -0.000000000
                         0.000000006  -0.000000001   0.000000001  -0.000000001  -0.000000001  -0.000000001  -0.000000000   0.000000000

   23    3.2  1.5 -0.5  -0.000000003   0.000000002  -0.000000001  -0.000000001  -0.000000000   0.000000000  -0.000000001   0.000000000
                        -0.000000004  -0.000000001   0.000000002   0.000000001  -0.000000000   0.000000001   0.000000000  -0.000000000

   24    4.2  1.5 -0.5  -0.000000005   0.000000004  -0.000000002   0.000000003  -0.000000002  -0.000000000   0.000000001   0.000000000
                         0.000000002  -0.000000002  -0.000000000  -0.000000001  -0.000000000  -0.000000000  -0.000000000  -0.000000000

   25    5.2  1.5 -0.5   0.000000012  -0.000000001  -0.000000002  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000
                        -0.000000013  -0.000000003   0.000000001   0.000000001  -0.000000002  -0.000000001  -0.000000000   0.000000000

   26    6.2  1.5 -0.5   0.000000002  -0.000000001  -0.000000000  -0.000000000   0.000000001   0.000000000   0.000000000   0.000000000
                         0.000000020  -0.000000002   0.000000003   0.000000000   0.000000000   0.000000000  -0.000000001   0.000000000

   27    7.2  1.5 -0.5  -0.000000001  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000
                        -0.000000000  -0.000000000   0.000000001  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000

   28    8.2  1.5 -0.5   0.000000004  -0.000000003  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000
                        -0.000000000   0.000000003  -0.000000001  -0.000000001   0.000000001  -0.000000000  -0.000000000   0.000000000

   29    9.2  1.5 -0.5  -0.000000006  -0.000000003  -0.000000001   0.000000001   0.000000001   0.000000000  -0.000000000   0.000000000
                        -0.000000001  -0.000000000  -0.000000001  -0.000000000  -0.000000002  -0.000000000  -0.000000000  -0.000000000

   30   10.2  1.5 -0.5  -0.000000003  -0.000000001  -0.000000001   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000
                         0.000000034   0.000000001   0.000000002  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000

   31    1.2  1.5 -1.5  -0.000000124  -0.000000002  -0.000000017   0.000000001   0.000000003  -0.000000001  -0.000000001  -0.000000000
                        -0.000000014  -0.000000023  -0.000000016   0.000000002  -0.000000004  -0.000000002   0.000000004   0.000000000

   32    2.2  1.5 -1.5   0.000000018  -0.000000002   0.000000002  -0.000000001  -0.000000000  -0.000000001  -0.000000000  -0.000000000
                        -0.000000006   0.000000003   0.000000002  -0.000000000   0.000000001  -0.000000000   0.000000001  -0.000000000

   33    3.2  1.5 -1.5   0.000000020   0.000000003   0.000000003  -0.000000001   0.000000001  -0.000000000  -0.000000000  -0.000000000
                         0.000000016  -0.000000000  -0.000000001  -0.000000000   0.000000003   0.000000000   0.000000000  -0.000000000

   34    4.2  1.5 -1.5   0.000000012  -0.000000001  -0.000000001   0.000000001  -0.000000000  -0.000000000  -0.000000001  -0.000000000
                         0.000000012  -0.000000004  -0.000000000  -0.000000000  -0.000000002  -0.000000000  -0.000000000   0.000000000

   35    5.2  1.5 -1.5   0.000000012  -0.000000002   0.000000004   0.000000001  -0.000000001  -0.000000000   0.000000000  -0.000000000
                         0.000000007  -0.000000002  -0.000000002   0.000000001  -0.000000001  -0.000000000   0.000000000   0.000000000

   36    6.2  1.5 -1.5  -0.000000015   0.000000007   0.000000002   0.000000000  -0.000000001  -0.000000001   0.000000000  -0.000000000
                         0.000000010  -0.000000001   0.000000001   0.000000000  -0.000000001   0.000000000  -0.000000000  -0.000000000

   37    7.2  1.5 -1.5   0.000000007   0.000000000   0.000000001  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000
                         0.000000001   0.000000001   0.000000001  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000

   38    8.2  1.5 -1.5  -0.000000005   0.000000002   0.000000002  -0.000000000  -0.000000000   0.000000000  -0.000000001   0.000000000
                        -0.000000004   0.000000001  -0.000000000  -0.000000000   0.000000001  -0.000000000  -0.000000000   0.000000000

   39    9.2  1.5 -1.5   0.000000002  -0.000000001   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000
                         0.000000005  -0.000000003  -0.000000000  -0.000000001   0.000000001   0.000000000   0.000000000  -0.000000000

   40   10.2  1.5 -1.5  -0.000000004  -0.000000001   0.000000000  -0.000000000   0.000000001   0.000000001   0.000000000   0.000000000
                         0.000000005  -0.000000001   0.000000002   0.000000001  -0.000000000  -0.000000000   0.000000000   0.000000000

   41    1.2  0.5  0.5  -0.016076374  -0.008952698  -0.184518242   0.149426379  -0.005218044   0.015293870   0.392038224   0.051134961
                         0.057237221   0.148201019   0.083033204   0.260040920   0.319509857   0.121494585   0.206132064   0.216332134

   42    2.2  0.5  0.5   0.270977038   0.081833104  -0.065827483   0.469094172  -0.055383459   0.259028980  -0.075509053   0.030452862
                        -0.083662973   0.056370173  -0.073585541  -0.101549150   0.130158557  -0.169898266   0.188697557   0.005290013

   43    3.2  0.5  0.5   0.090709025   0.165580052   0.069666757   0.101076391   0.077091220  -0.113511954   0.274697051  -0.093202638
                         0.005463223  -0.171488071   0.132269368  -0.176587557  -0.168985667   0.190701889   0.255662413  -0.345892362

   44    4.2  0.5  0.5   0.157090949   0.332838522  -0.152042840  -0.010743393   0.027201103  -0.331365371  -0.145256787   0.030045142
                        -0.002153587   0.012914317   0.183923667   0.048420248  -0.067161963  -0.040896824  -0.054796994   0.293166790

   45    5.2  0.5  0.5   0.130087282   0.040772188  -0.002463383  -0.172596433  -0.068856275   0.143325693  -0.090194280  -0.020434857
                         0.254136640   0.212933339  -0.125990925  -0.253928387  -0.304873442   0.056732154   0.258459075   0.135625560

   46    6.2  0.5  0.5   0.082414671   0.037095093  -0.282969157   0.002398254  -0.025191417   0.044206685  -0.226998206  -0.000675631
                         0.102380742   0.154722131   0.007650703   0.224305540   0.160457563  -0.003736288  -0.000615992  -0.431030396

   47    7.2  0.5  0.5  -0.174577452  -0.224414202   0.154794712  -0.216558039   0.072422814   0.311853934   0.024175977   0.109950388
                        -0.102730330  -0.087637852   0.306583089   0.048823200   0.065995563  -0.054174895   0.198812841   0.000839414

   48    8.2  0.5  0.5  -0.115382323  -0.360219629   0.139974806   0.355852430   0.231105380  -0.220879120  -0.202823845  -0.033784667
                         0.001005801   0.133424536   0.019616177  -0.042675825   0.032439562   0.261171320   0.082839531   0.047456321

   49    1.2  0.5 -0.5  -0.406034938   0.220646668  -0.344524920  -0.061604459   0.203336723   0.130514404  -0.008449619   0.036947751
                        -0.249187511   0.390936727   0.121813013   0.007653606  -0.095489326   0.050228794  -0.237467550  -0.042796248

   50    2.2  0.5 -0.5  -0.257122394   0.034309276   0.005324877   0.267454881  -0.076441106   0.102406411   0.155737147   0.001566542
                         0.104397627  -0.203397307  -0.250038542   0.153718790  -0.258078796   0.056502209  -0.190720321   0.020349422

   51    3.2  0.5 -0.5   0.313965530  -0.071988563  -0.174992506  -0.039046882   0.434628400   0.056826402   0.049755456  -0.070704476
                        -0.020770389  -0.109793658  -0.157032120   0.233426322  -0.247044606  -0.044667614   0.159204225   0.058963398

   52    4.2  0.5 -0.5   0.047159250   0.063073400   0.316431865   0.117721802  -0.203632848  -0.107740519  -0.002440322  -0.018349588
                        -0.136755698   0.314743302   0.019955874   0.300403129  -0.298058167  -0.087592768   0.116689395  -0.062756666

   53    5.2  0.5 -0.5  -0.159782869  -0.019914041   0.045123382   0.127340868  -0.029652293   0.411250892   0.005538018  -0.397742674
                        -0.009772647  -0.008886556   0.156899253   0.024282694   0.145694138  -0.255702031   0.093467527   0.120870923

   54    6.2  0.5 -0.5   0.084504525  -0.369929701  -0.278582709   0.147151973  -0.214842433  -0.022213353   0.053566301   0.118211162
                         0.081216409  -0.050579138   0.310006384  -0.061237849  -0.253418003  -0.143326536  -0.014390200   0.000881047

   55    7.2  0.5 -0.5   0.471926653   0.086064027   0.205421202   0.042920060   0.091569088   0.229730702   0.118798708   0.071429190
                         0.161714459   0.075999309   0.181094729   0.034055482   0.027122132   0.140553883  -0.393475891   0.003524357

   56    8.2  0.5 -0.5  -0.129374920   0.044719837   0.090883915   0.094220806   0.010137604   0.306749227  -0.053622680   0.542476265
                        -0.033186607  -0.054601160  -0.023738604   0.017070064   0.071679544  -0.074069441   0.202034835   0.108751349


 Composition of spin-orbit eigenvectors
 ======================================

   Nr   State  S   Sz       1        2        3        4        5        6        7        8        9       10

    1    1.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   6.644%   1.658%
    2    2.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    3    3.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    4    4.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    5    5.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    6    6.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    7    7.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    8    8.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.004%   0.004%
    9    9.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.010%   0.022%
   10   10.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.014%   0.025%
   11    1.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  20.013%  52.903%
   12    2.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   13    3.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   14    4.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   15    5.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   16    6.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   17    7.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%
   18    8.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.002%   0.003%
   19    9.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.004%   0.015%
   20   10.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.004%   0.030%
   21    1.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.223%  31.738%
   22    2.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   23    3.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   24    4.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   25    5.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   26    6.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   27    7.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%
   28    8.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.005%   0.015%
   29    9.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.009%   0.058%
   30   10.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.078%   0.008%
   31    1.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  72.888%  13.470%
   32    2.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   33    3.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   34    4.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   35    5.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   36    6.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   37    7.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.002%   0.000%
   38    8.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.091%   0.022%
   39    9.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.002%   0.010%
   40   10.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.008%   0.016%
   41    1.2  0.5  0.5   4.067%  24.354%   2.400%   4.597%   0.006%   1.452%   4.716%   6.490%   0.000%   0.000%
   42    2.2  0.5  0.5   0.285%   4.639%   1.775%  22.491%   5.410%   5.998%   2.991%   7.548%   0.000%   0.000%
   43    3.2  0.5  0.5  12.931%   1.381%  17.608%  11.009%   1.516%   0.680%   1.036%   5.665%   0.000%   0.000%
   44    4.2  0.5  0.5  11.229%   3.257%   3.257%   0.788%   0.608%   2.058%  11.026%  25.507%   0.000%   0.000%
   45    5.2  0.5  0.5   1.576%   1.713%  10.506%   8.722%   4.201%   4.514%  16.287%   7.096%   0.000%   0.000%
   46    6.2  0.5  0.5  18.522%   1.478%   9.325%   0.911%   1.152%   0.684%  21.666%   2.392%   0.000%   0.000%
   47    7.2  0.5  0.5   0.735%   5.936%   7.964%   2.285%   6.236%  11.014%   5.154%  17.846%   0.000%   0.000%
   48    8.2  0.5  0.5   0.253%   0.650%  17.033%  13.358%   3.686%   9.965%   0.468%   1.372%   0.000%   0.000%
   49    1.2  0.5 -0.5   0.160%   8.117%   4.227%   5.213%   4.830%   0.389%   3.625%   3.884%   0.000%   0.000%
   50    2.2  0.5 -0.5   0.157%   2.011%   2.313%   6.150%  12.460%   8.259%  15.483%  10.723%   0.000%   0.000%
   51    3.2  0.5 -0.5   1.002%   1.120%   0.339%   3.544%  34.459%   2.903%   2.422%   2.312%   0.000%   0.000%
   52    4.2  0.5 -0.5   0.033%   1.058%   8.012%   3.483%   8.610%  22.174%   4.820%   2.202%   0.000%   0.000%
   53    5.2  0.5 -0.5  16.416%  19.488%   4.771%   3.615%   0.848%   0.590%   1.968%   1.529%   0.000%   0.000%
   54    6.2  0.5 -0.5   1.294%   1.017%   0.791%   3.315%  15.661%  23.841%   2.057%   1.952%   0.000%   0.000%
   55    7.2  0.5 -0.5   0.513%  13.061%   6.785%   8.446%   0.067%   2.861%   5.922%   2.771%   0.000%   0.000%
   56    8.2  0.5 -0.5  30.829%  10.721%   2.893%   2.073%   0.250%   2.620%   0.360%   0.710%   0.000%   0.000%

   Nr   State  S   Sz      11       12       13       14       15       16       17       18       19       20

    1    1.2  1.5  1.5   3.197%  88.270%   0.000%   0.000%   0.000%   0.058%   0.006%   0.039%   0.002%   0.000%
    2    2.2  1.5  1.5   0.000%   0.000%   0.843%  12.646%   3.147%   1.609%   5.974%   0.019%   1.463%   2.493%
    3    3.2  1.5  1.5   0.000%   0.000%   0.266%   4.000%   0.906%   4.489%   0.285%   5.068%   2.002%   0.733%
    4    4.2  1.5  1.5   0.000%   0.000%   0.009%  15.364%   2.937%   0.984%   6.130%   0.697%   0.532%   4.136%
    5    5.2  1.5  1.5   0.000%   0.000%   4.511%   0.680%   0.500%   4.189%   1.705%   4.354%   5.197%   0.947%
    6    6.2  1.5  1.5   0.000%   0.000%   4.918%   1.151%   0.762%   4.056%   0.059%   5.871%   6.872%   0.172%
    7    7.2  1.5  1.5   0.000%   0.002%   0.000%   0.000%   0.007%   6.844%   0.656%   4.616%   1.831%   0.108%
    8    8.2  1.5  1.5   0.003%   0.117%   0.251%   0.017%   0.003%   7.382%   1.576%  10.160%   1.125%   0.029%
    9    9.2  1.5  1.5   0.008%   0.008%   2.564%   0.171%   0.047%   3.665%   0.625%   2.813%   2.404%   0.522%
   10   10.2  1.5  1.5   0.012%   0.002%   2.445%   0.163%   0.057%   6.316%   0.313%   1.078%   1.622%   0.469%
   11    1.2  1.5  0.5  19.603%   7.249%   0.000%   0.000%   0.001%   0.044%   0.011%   0.047%   0.028%   0.006%
   12    2.2  1.5  0.5   0.000%   0.000%   4.000%   0.266%   5.197%   0.882%   4.486%   0.183%   2.013%   5.150%
   13    3.2  1.5  0.5   0.000%   0.000%  12.639%   0.850%   1.498%   3.768%   0.006%   5.476%   2.955%   0.069%
   14    4.2  1.5  0.5   0.000%   0.000%   0.150%   2.233%   5.498%   0.997%   3.340%   0.913%   0.395%   3.617%
   15    5.2  1.5  0.5   0.000%   0.000%   0.790%  11.775%   0.288%   5.982%   1.094%   3.384%   0.430%   0.116%
   16    6.2  1.5  0.5   0.000%   0.000%   0.733%  10.953%   0.846%   5.214%   0.111%   4.577%   0.199%   0.503%
   17    7.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.085%   5.195%   1.254%   5.589%  21.202%   4.584%
   18    8.2  1.5  0.5   0.010%   0.009%   2.913%   0.560%   0.439%   0.136%   0.259%   2.734%   1.776%   0.017%
   19    9.2  1.5  0.5   0.050%   0.035%   0.229%   0.777%   3.410%   4.192%   7.507%   0.431%   0.826%   2.119%
   20   10.2  1.5  0.5   0.027%   0.039%   0.482%   0.650%   3.010%   4.370%   2.786%   4.760%   2.458%   2.131%
   21    1.2  1.5 -0.5  66.714%   1.094%   0.000%   0.000%   0.039%   0.000%   0.054%   0.010%   0.018%   0.019%
   22    2.2  1.5 -0.5   0.000%   0.000%   0.266%   4.000%   0.908%   4.481%   0.283%   5.076%   2.008%   0.729%
   23    3.2  1.5 -0.5   0.000%   0.000%   0.850%  12.639%   3.139%   1.611%   5.980%   0.018%   1.465%   2.497%
   24    4.2  1.5 -0.5   0.000%   0.000%   2.233%   0.150%   1.129%   5.123%   0.621%   3.875%   0.218%   0.595%
   25    5.2  1.5 -0.5   0.000%   0.000%  11.775%   0.790%   6.342%   0.142%   2.864%   1.401%   0.183%   4.093%
   26    6.2  1.5 -0.5   0.000%   0.000%  10.953%   0.733%   5.780%   0.904%   3.851%   0.212%   0.414%   3.709%
   27    7.2  1.5 -0.5   0.002%   0.000%   0.000%   0.000%   4.565%   0.027%   6.399%   1.132%  13.625%  14.228%
   28    8.2  1.5 -0.5   0.004%   0.001%   0.560%   2.913%   0.078%   0.350%   2.872%   0.268%   0.003%   1.652%
   29    9.2  1.5 -0.5   0.035%   0.002%   0.777%   0.229%   4.046%   4.264%   0.236%   6.995%   2.268%   0.392%
   30   10.2  1.5 -0.5   0.004%   0.009%   0.650%   0.482%   5.243%   3.234%   4.250%   2.200%   4.490%   3.788%
   31    1.2  1.5 -1.5  10.254%   3.157%   0.000%   0.000%   0.063%   0.000%   0.032%   0.007%   0.001%   0.024%
   32    2.2  1.5 -1.5   0.000%   0.000%  12.646%   0.843%   1.496%   3.777%   0.005%   5.470%   2.956%   0.069%
   33    3.2  1.5 -1.5   0.000%   0.000%   4.000%   0.266%   5.206%   0.879%   4.478%   0.185%   2.019%   5.142%
   34    4.2  1.5 -1.5   0.000%   0.000%  15.364%   0.009%   1.185%   3.645%   0.656%   5.262%   7.296%   0.092%
   35    5.2  1.5 -1.5   0.000%   0.000%   0.680%   4.511%   3.618%   0.435%   5.085%   1.609%   2.630%   3.285%
   36    6.2  1.5 -1.5   0.000%   0.000%   1.151%   4.918%   3.360%   0.573%   6.727%   0.088%   0.955%   4.056%
   37    7.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   7.466%   0.057%   3.813%   0.786%   0.898%  18.636%
   38    8.2  1.5 -1.5   0.012%   0.004%   0.017%   0.251%   8.397%   0.083%   8.844%   1.798%   0.055%   6.971%
   39    9.2  1.5 -1.5   0.036%   0.000%   0.171%   2.564%   3.267%   0.008%   3.351%   0.522%   1.452%   1.796%
   40   10.2  1.5 -1.5   0.027%   0.001%   0.163%   2.445%   6.038%   0.035%   1.415%   0.276%   1.713%   0.305%
   41    1.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   42    2.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   43    3.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   44    4.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   45    5.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   46    6.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   47    7.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   48    8.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   49    1.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   50    2.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   51    3.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   52    4.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   53    5.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   54    6.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   55    7.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   56    8.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%

   Nr   State  S   Sz      21       22       23       24       25       26       27       28       29       30

    1    1.2  1.5  1.5   0.046%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    2    2.2  1.5  1.5   3.061%   1.424%   0.683%   1.022%   1.041%   6.709%   1.102%   1.349%   3.470%   0.542%
    3    3.2  1.5  1.5   5.078%   0.628%   0.216%   0.324%   3.282%  21.225%   0.344%   4.879%   1.012%   0.242%
    4    4.2  1.5  1.5   0.043%   3.730%   0.379%   1.564%   0.420%   0.071%   4.083%   0.073%   4.550%   1.591%
    5    5.2  1.5  1.5   0.233%   2.063%   0.521%   0.135%   2.169%   0.361%   9.023%   0.798%   1.053%  15.900%
    6    6.2  1.5  1.5   0.338%   1.059%   0.673%   0.095%   2.040%   0.345%   9.197%   0.300%   7.317%   8.507%
    7    7.2  1.5  1.5  35.420%   0.198%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    8    8.2  1.5  1.5   9.936%   0.254%   1.269%   0.849%   0.391%   7.267%   0.699%   1.190%   0.177%   0.498%
    9    9.2  1.5  1.5   0.268%   1.048%  12.966%   8.671%   1.834%   0.387%   7.613%   0.067%   3.205%   0.368%
   10   10.2  1.5  1.5   1.431%   1.083%  12.365%   8.269%   2.415%   0.053%   7.421%   0.456%   1.175%   1.788%
   11    1.2  1.5  0.5   0.001%   0.014%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   12    2.2  1.5  0.5   0.209%   1.069%   0.323%   0.216%  21.209%   3.360%   3.652%   0.019%   1.966%   0.778%
   13    3.2  1.5  0.5   0.094%   5.323%   1.021%   0.685%   6.692%   1.052%   1.312%   0.241%   0.015%   4.902%
   14    4.2  1.5  0.5   0.897%   3.530%   0.121%   0.180%   2.155%   0.901%  26.616%   0.081%   4.521%   0.137%
   15    5.2  1.5  0.5   7.804%   0.090%   0.637%   0.951%   0.314%   0.742%   0.212%   0.376%  13.003%   1.248%
   16    6.2  1.5  0.5   7.303%   0.435%   0.592%   0.885%   0.890%   0.356%   6.144%   0.087%   8.517%   1.498%
   17    7.2  1.5  0.5   0.974%  10.796%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   18    8.2  1.5  0.5   0.251%   0.072%  12.153%  15.322%   0.077%   0.519%   0.362%   1.089%   0.881%  11.521%
   19    9.2  1.5  0.5   5.052%   1.222%   4.838%   3.118%   0.801%   5.205%   0.842%   1.221%   3.081%   0.045%
   20   10.2  1.5  0.5   2.575%   1.691%   6.672%   2.286%   0.773%   4.951%   0.608%   0.646%   2.594%   1.791%
   21    1.2  1.5 -0.5   0.001%   0.012%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   22    2.2  1.5 -0.5   5.075%   0.628%   0.216%   0.323%   3.347%  21.199%   0.326%   4.842%   1.031%   0.238%
   23    3.2  1.5 -0.5   3.062%   1.417%   0.685%   1.021%   1.051%   6.712%   1.125%   1.342%   3.450%   0.534%
   24    4.2  1.5 -0.5   7.146%   0.480%   0.180%   0.121%   0.921%   2.150%   0.008%  24.877%   0.145%   6.309%
   25    5.2  1.5 -0.5   0.241%   3.924%   0.951%   0.637%   0.728%   0.310%   0.283%   2.444%   1.692%  10.437%
   26    6.2  1.5 -0.5   0.741%   3.576%   0.885%   0.592%   0.360%   0.890%   0.266%   7.295%   0.832%   7.851%
   27    7.2  1.5 -0.5   0.788%   8.915%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   28    8.2  1.5 -0.5   0.003%   0.459%  15.322%  12.153%   0.520%   0.082%   2.488%   0.069%  10.360%   0.930%
   29    9.2  1.5 -0.5   0.066%   6.493%   3.118%   4.838%   5.192%   0.795%   1.477%   0.141%   0.345%   3.243%
   30   10.2  1.5 -0.5   0.318%   0.259%   2.286%   6.672%   4.967%   0.768%   1.334%   0.143%   0.789%   3.360%
   31    1.2  1.5 -1.5   0.000%   0.023%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   32    2.2  1.5 -1.5   0.096%   5.320%   1.022%   0.683%   6.729%   1.040%   1.334%   0.221%   0.016%   4.873%
   33    3.2  1.5 -1.5   0.208%   1.072%   0.324%   0.216%  21.216%   3.269%   3.718%   0.031%   1.954%   0.796%
   34    4.2  1.5 -1.5   0.353%   0.700%   1.564%   0.379%   0.067%   0.423%   0.822%   1.094%   1.023%   7.359%
   35    5.2  1.5 -1.5   0.162%   2.363%   0.135%   0.521%   0.359%   2.186%   3.261%  11.831%  10.874%   0.792%
   36    6.2  1.5 -1.5   0.058%   3.371%   0.095%   0.673%   0.339%   2.029%   2.501%  13.152%   8.889%   0.796%
   37    7.2  1.5 -1.5   0.374%  17.648%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   38    8.2  1.5 -1.5   0.116%   4.202%   0.849%   1.269%   7.262%   0.388%   1.314%   0.967%   0.273%   0.018%
   39    9.2  1.5 -1.5   0.058%   0.936%   8.671%  12.966%   0.385%   1.833%   0.106%   9.811%   0.932%   0.408%
   40   10.2  1.5 -1.5   0.116%   2.472%   8.269%  12.365%   0.054%   2.423%   0.406%   8.870%   0.858%   0.698%
   41    1.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   42    2.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   43    3.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   44    4.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   45    5.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   46    6.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   47    7.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   48    8.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   49    1.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   50    2.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   51    3.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   52    4.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   53    5.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   54    6.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   55    7.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   56    8.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%

   Nr   State  S   Sz      31       32       33       34       35       36       37       38       39       40

    1    1.2  1.5  1.5   0.054%   0.001%   0.025%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    2    2.2  1.5  1.5   0.413%   0.186%   0.045%   0.168%  17.832%   6.048%   2.416%   2.557%  11.581%   3.718%
    3    3.2  1.5  1.5   0.238%   0.025%   0.494%   0.054%   5.555%   1.896%   0.995%  10.181%   2.610%   7.358%
    4    4.2  1.5  1.5   0.162%   0.113%   0.378%   0.158%   7.351%   5.269%   4.971%  16.252%  10.617%   0.427%
    5    5.2  1.5  1.5   0.171%   0.099%   0.333%   0.208%   1.266%   2.890%   2.404%   1.449%   3.557%   3.506%
    6    6.2  1.5  1.5   0.067%   0.225%   0.107%   0.412%   3.856%   0.625%   8.928%   0.088%   1.917%   1.971%
    7    7.2  1.5  1.5  33.993%   0.342%  15.983%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    8    8.2  1.5  1.5  20.058%   0.052%   5.166%   0.314%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    9    9.2  1.5  1.5   1.540%   1.257%   3.736%   3.033%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   10   10.2  1.5  1.5   0.199%   1.469%   5.833%   2.889%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   11    1.2  1.5  0.5   0.015%   0.011%   0.026%   0.027%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   12    2.2  1.5  0.5   0.012%   0.196%   0.049%   0.554%   1.913%   5.643%   9.191%   1.078%   4.622%   6.257%
   13    3.2  1.5  0.5   0.149%   0.404%   0.224%   0.035%   5.555%  17.090%   8.776%   6.912%   2.092%   3.828%
   14    4.2  1.5  0.5   0.057%   0.426%   0.072%   0.256%   1.333%   0.433%   0.165%   1.289%   1.057%   2.584%
   15    5.2  1.5  0.5   0.515%   0.039%   0.240%   0.018%   6.812%   2.254%   1.441%  13.376%   4.464%   8.035%
   16    6.2  1.5  0.5   0.535%   0.031%   0.208%   0.037%   6.183%   2.087%   0.871%   0.247%  14.391%   9.922%
   17    7.2  1.5  0.5   9.214%   7.161%  16.721%  17.222%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   18    8.2  1.5  0.5   1.687%   1.087%   0.197%   1.803%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   19    9.2  1.5  0.5  13.215%   3.964%   0.079%   3.539%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   20   10.2  1.5  0.5   1.038%   1.663%  14.914%   2.360%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   21    1.2  1.5 -0.5   0.010%   0.020%   0.027%   0.022%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   22    2.2  1.5 -0.5   0.238%   0.025%   0.493%   0.055%   5.196%   1.720%   1.084%  10.767%   2.559%   7.300%
   23    3.2  1.5 -0.5   0.412%   0.186%   0.045%   0.168%  16.299%   5.435%   2.586%   3.229%  12.743%   4.037%
   24    4.2  1.5 -0.5   0.502%   0.064%   0.190%   0.056%   0.455%   1.352%   4.286%   0.484%   0.335%   0.081%
   25    5.2  1.5 -0.5   0.045%   0.451%   0.022%   0.293%   2.445%   7.317%   9.447%   1.749%   6.468%   8.878%
   26    6.2  1.5 -0.5   0.025%   0.459%   0.054%   0.274%   2.082%   6.486%  16.241%   3.201%   3.759%   1.884%
   27    7.2  1.5 -0.5   6.373%  12.757%  17.387%  13.801%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   28    8.2  1.5 -0.5   0.806%   1.727%   1.987%   0.254%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   29    9.2  1.5 -0.5   3.333%  12.701%   4.749%   0.014%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   30   10.2  1.5 -0.5   0.961%   0.681%   2.468%  15.865%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   31    1.2  1.5 -1.5   0.001%   0.047%   0.000%   0.030%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   32    2.2  1.5 -1.5   0.148%   0.404%   0.224%   0.035%   5.883%  16.976%   8.488%   6.883%   1.980%   3.900%
   33    3.2  1.5 -1.5   0.012%   0.196%   0.049%   0.555%   1.756%   5.183%   9.311%   1.273%   4.690%   6.435%
   34    4.2  1.5 -1.5   0.089%   0.208%   0.171%   0.342%   4.909%   6.471%   6.946%  12.564%   6.677%   6.882%
   35    5.2  1.5 -1.5   0.081%   0.222%   0.217%   0.291%   2.673%   1.123%   1.190%   4.832%   0.148%   5.089%
   36    6.2  1.5 -1.5   0.184%   0.096%   0.443%   0.088%   0.645%   3.702%   0.263%   1.589%   3.734%   7.910%
   37    7.2  1.5 -1.5   0.738%  30.058%   0.227%  19.296%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   38    8.2  1.5 -1.5   0.155%  18.511%   0.203%   6.720%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   39    9.2  1.5 -1.5   1.106%   2.091%   2.987%   3.382%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   40   10.2  1.5 -1.5   1.447%   0.341%   3.228%   5.374%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   41    1.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   42    2.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   43    3.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   44    4.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   45    5.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   46    6.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   47    7.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   48    8.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   49    1.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   50    2.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   51    3.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   52    4.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   53    5.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   54    6.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   55    7.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   56    8.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%

   Nr   State  S   Sz      41       42       43       44       45       46       47       48       49       50

    1    1.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    2    2.2  1.5  1.5   0.623%   1.161%   0.333%   2.197%   0.323%   0.261%   0.497%   1.042%   0.000%   0.000%
    3    3.2  1.5  1.5   2.276%   3.193%   1.046%   6.998%   0.320%   1.684%   0.021%   0.077%   0.000%   0.000%
    4    4.2  1.5  1.5   2.147%   1.327%   0.134%   0.020%   0.021%   0.106%   1.492%   1.761%   0.000%   0.000%
    5    5.2  1.5  1.5  12.250%   7.932%   0.717%   0.104%   2.369%   0.170%   2.836%   3.402%   0.000%   0.000%
    6    6.2  1.5  1.5  11.533%   7.467%   0.665%   0.098%   4.627%   0.542%   2.849%   0.293%   0.000%   0.000%
    7    7.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    8    8.2  1.5  1.5   0.000%   0.000%   5.921%  17.399%   0.371%   4.190%   1.535%   1.795%   0.000%   0.000%
    9    9.2  1.5  1.5   0.000%   0.000%   4.526%   2.127%   9.365%   0.595%  23.255%   1.280%   0.000%   0.000%
   10   10.2  1.5  1.5   0.000%   0.000%   3.622%   3.900%   2.563%   1.141%  21.171%   8.241%   0.000%   0.000%
   11    1.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   12    2.2  1.5  0.5   3.245%   2.114%   6.968%   1.040%   0.707%   0.095%   1.275%   0.062%   0.000%   0.000%
   13    3.2  1.5  0.5   1.052%   0.631%   2.204%   0.330%   0.758%   0.069%   0.351%   0.941%   0.000%   0.000%
   14    4.2  1.5  0.5  11.285%  13.493%   1.015%   0.022%   1.649%   0.048%   7.551%   0.985%   0.000%   0.000%
   15    5.2  1.5  0.5   2.714%   5.651%   0.044%   0.309%   0.566%   0.426%   2.262%   1.601%   0.000%   0.000%
   16    6.2  1.5  0.5   9.126%   0.788%   0.058%   0.339%   1.281%   0.224%   0.470%   3.357%   0.000%   0.000%
   17    7.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   18    8.2  1.5  0.5   0.000%   0.000%   0.241%   1.589%  28.823%   2.393%   1.575%   9.499%   0.000%   0.000%
   19    9.2  1.5  0.5   0.000%   0.000%   2.385%  16.037%   2.840%   6.884%   2.142%   3.894%   0.000%   0.000%
   20   10.2  1.5  0.5   0.000%   0.000%   2.292%  15.129%   0.043%   1.041%   2.932%  13.255%   0.000%   0.000%
   21    1.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   22    2.2  1.5 -0.5   2.047%   3.390%   1.046%   6.974%   0.324%   1.694%   0.025%   0.084%   0.000%   0.000%
   23    3.2  1.5 -0.5   0.687%   0.922%   0.329%   2.220%   0.328%   0.265%   0.490%   1.022%   0.000%   0.000%
   24    4.2  1.5 -0.5  13.410%  11.235%   0.020%   0.994%   0.590%   8.452%   0.057%   1.155%   0.000%   0.000%
   25    5.2  1.5 -0.5   5.813%   2.629%   0.300%   0.045%   3.277%   0.130%   0.286%   1.167%   0.000%   0.000%
   26    6.2  1.5 -0.5   0.731%   9.231%   0.346%   0.060%   1.988%   2.046%   0.263%   1.026%   0.000%   0.000%
   27    7.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   28    8.2  1.5 -0.5   0.000%   0.000%   1.549%   0.230%   5.635%   2.405%   8.434%  25.866%   0.000%   0.000%
   29    9.2  1.5 -0.5   0.000%   0.000%  16.009%   2.402%   9.358%   0.584%   2.240%   3.589%   0.000%   0.000%
   30   10.2  1.5 -0.5   0.000%   0.000%  15.277%   2.303%   9.534%   0.534%   5.489%   1.554%   0.000%   0.000%
   31    1.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   32    2.2  1.5 -1.5   1.075%   0.753%   2.214%   0.333%   0.759%   0.069%   0.339%   0.941%   0.000%   0.000%
   33    3.2  1.5 -1.5   3.285%   2.130%   7.004%   1.052%   0.710%   0.094%   1.225%   0.061%   0.000%   0.000%
   34    4.2  1.5 -1.5   1.459%   2.453%   0.020%   0.139%   1.659%   1.087%   0.128%   0.501%   0.000%   0.000%
   35    5.2  1.5 -1.5   7.855%  12.345%   0.105%   0.734%   1.495%   2.170%   1.823%   3.269%   0.000%   0.000%
   36    6.2  1.5 -1.5   7.388%  11.152%   0.100%   0.662%   0.921%   5.038%   0.429%   1.923%   0.000%   0.000%
   37    7.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   38    8.2  1.5 -1.5   0.000%   0.000%  17.442%   5.964%   0.485%   2.541%   4.644%   0.134%   0.000%   0.000%
   39    9.2  1.5 -1.5   0.000%   0.000%   2.164%   4.560%   3.839%  30.249%   0.201%   0.135%   0.000%   0.000%
   40   10.2  1.5 -1.5   0.000%   0.000%   3.901%   3.689%   2.474%  22.773%   1.713%   6.087%   0.000%   0.000%
   41    1.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.353%   2.204%
   42    2.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   8.043%   0.987%
   43    3.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.826%   5.682%
   44    4.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   2.468%  11.095%
   45    5.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   8.151%   4.700%
   46    6.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   1.727%   2.531%
   47    7.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   4.103%   5.804%
   48    8.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   1.331%  14.756%
   49    1.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  22.696%  20.152%
   50    2.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   7.701%   4.255%
   51    3.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   9.901%   1.724%
   52    4.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   2.093%  10.304%
   53    5.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   2.563%   0.048%
   54    6.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   1.374%  13.941%
   55    7.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  24.887%   1.318%
   56    8.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   1.784%   0.498%

   Nr   State  S   Sz      51       52       53       54       55       56

    1    1.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    2    2.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    3    3.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    4    4.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    5    5.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    6    6.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    7    7.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    8    8.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    9    9.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   10   10.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   11    1.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   12    2.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   13    3.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   14    4.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   15    5.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   16    6.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   17    7.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   18    8.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   19    9.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   20   10.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   21    1.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   22    2.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   23    3.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   24    4.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   25    5.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   26    6.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   27    7.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   28    8.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   29    9.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   30   10.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   31    1.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   32    2.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   33    3.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   34    4.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   35    5.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   36    6.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   37    7.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   38    8.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   39    9.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   40   10.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   41    1.2  0.5  0.5   4.094%   8.995%  10.211%   1.499%  19.618%   4.941%
   42    2.2  0.5  0.5   0.975%  23.036%   2.001%   9.596%   4.131%   0.096%
   43    3.2  0.5  0.5   2.235%   4.140%   3.450%   4.925%  14.082%  12.833%
   44    4.2  0.5  0.5   5.694%   0.246%   0.525%  11.148%   2.410%   8.685%
   45    5.2  0.5  0.5   1.588%   9.427%   9.769%   2.376%   7.494%   1.881%
   46    6.2  0.5  0.5   8.013%   5.032%   2.638%   0.197%   5.153%  18.579%
   47    7.2  0.5  0.5  11.795%   4.928%   0.960%  10.019%   4.011%   1.209%
   48    8.2  0.5  0.5   1.998%  12.845%   5.446%  11.700%   4.800%   0.339%
   49    1.2  0.5 -0.5  13.354%   0.385%   5.046%   1.956%   5.646%   0.320%
   50    2.2  0.5 -0.5   6.255%   9.516%   7.245%   1.368%   6.063%   0.042%
   51    3.2  0.5 -0.5   5.528%   5.601%  24.993%   0.522%   2.782%   0.848%
   52    4.2  0.5 -0.5  10.053%  10.410%  13.031%   1.928%   1.362%   0.428%
   53    5.2  0.5 -0.5   2.665%   1.681%   2.211%  23.451%   0.877%  17.281%
   54    6.2  0.5 -0.5  17.371%   2.540%  11.038%   2.104%   0.308%   1.397%
   55    7.2  0.5 -0.5   7.499%   0.300%   0.912%   7.253%  16.894%   0.511%
   56    8.2  0.5 -0.5   0.882%   0.917%   0.524%   9.958%   4.369%  30.611%


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
              1      21       42.95       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       6     1514.67       700     1000      520     2140     5302     5102   
                                         GEOM     BASIS   MCVARS    MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI        CI     MULTI       INT
 CPU TIMES  *    120860.59  93858.77  13091.39  13902.19      7.15      0.73
 REAL TIME  *    122133.89 SEC
 DISK USED  *         1.52 GB (local),       24.42 GB (total)
 SF USED    *         8.34 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/USERDEF energy=9119575.834750829265

              CI              CI           MULTI
   -214.15124681   -213.98997372   -213.50053857
 **********************************************************************************************************************************
 Molpro calculation terminated with 2 warning(s)
