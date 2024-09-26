
 Working directory              : /wrk/irikura/molpro.jPuTMzBnzW/
 Global scratch directory       : /wrk/irikura/molpro.jPuTMzBnzW/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.jPuTMzBnzW/

 id        : nistki

 Nodes            nprocs
 pn112695.nist.gov   12
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1040), CPU time= 0.01 sec
 ***,As SO-CI
 memory,1500,M;
 
 gprint,orbitals,civector;
 
 symmetry,xyz
 geometry={As};
 
 basis=aug-cc-pwCVQZ-PP
 
 {rhf;wf,charge=0,sym=2,spin=3}
 
 PAR=2                                                                           ! parity even (1) or odd (2)
 NQ=1
 ND=8
 
 {multi
     closed,6,3
     occ,7,9
     wf,charge=0,sym=PAR,spin=3;state,NQ;
 weight,99
     wf,charge=0,sym=PAR,spin=1;state,ND;
 weight,all,1
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
 Default parameters read. Elapsed time= 0.13 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2023.2 linked Fri Sep 22 03:27:09 2023


 **********************************************************************************************************************************
 LABEL *   As SO-CI                                                                                                                                                      
  (32 PROC) 64 bit mpp version                                                           DATE: 08-Aug-24          TIME: 16:51:42  
 **********************************************************************************************************************************

 SHA1:             3c61bfe44d37c8635c785372c339f5cbdd4e4b59
 **********************************************************************************************************************************

 Memory per process:      1500 MW
 Total memory per node:  18000 MW

 GA preallocation disabled
 GA check disabled

 Variable memory set to 1500.0 MW


 ZSYMEL=XYZ

 SETTING BASIS          =    AUG-CC-PWCVQZ-PP


 Recomputing integrals since basis changed


 Using spherical harmonics

 Library entry As   ECP ECP10MDF                 selected for group  1
 Library entry AS     S aug-cc-pwCVQZ-PP     selected for orbital group  1
 Library entry AS     P aug-cc-pwCVQZ-PP     selected for orbital group  1
 Library entry AS     D aug-cc-pwCVQZ-PP     selected for orbital group  1
 Library entry AS     F aug-cc-pwCVQZ-PP     selected for orbital group  1
 Library entry AS     G aug-cc-pwCVQZ-PP     selected for orbital group  1
 Library entry AS     H aug-cc-pwCVQZ-PP     selected for orbital group  1


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
 NUMBER OF PRIMITIVE AOS:         300
 NUMBER OF SYMMETRY AOS:          232
 NUMBER OF CONTRACTIONS:          166   (   86Ag  +   80Au  )
 NUMBER OF INNER CORE ORBITALS:     0   (    0Ag  +    0Au  )
 NUMBER OF OUTER CORE ORBITALS:     9   (    6Ag  +    3Au  )
 NUMBER OF VALENCE ORBITALS:        4   (    1Ag  +    3Au  )


 LX: Ag           LY: Ag           LZ: Ag 


 NUCLEAR REPULSION ENERGY    0.00000000

 EXTRA SYMMETRY OF AOS IN SYMMETRY 1:   1 1 1 1 1 1 1 1 1 1   2 3 4 5 6 2 3 4 5 6   2 3 4 5 6 2 3 4 5 6   2 3 4 5 6 2 3 4 5 6
                                        2 3 4 5 6 2 3 4 5 6   7 8 9101112131415 7   8 9101112131415 7 8   9101112131415 7 8 9
                                       101112131415
 EXTRA SYMMETRY OF AOS IN SYMMETRY 2:   1 2 3 1 2 3 1 2 3 1   2 3 1 2 3 1 2 3 1 2   3 1 2 3 1 2 3 4 5 6   7 8 910 4 5 6 7 8 9
                                       10 4 5 6 7 8 910 4 5   6 7 8 910 4 5 6 7 8   910 4 5 6 7 8 91011  12131415161718192021


 Eigenvalues of metric

         1 0.125E-03 0.107E-02 0.343E-02 0.109E-01 0.109E-01 0.109E-01 0.109E-01 0.109E-01
         2 0.132E-03 0.132E-03 0.132E-03 0.205E-02 0.205E-02 0.205E-02 0.263E-01 0.263E-01


 Contracted 2-electron integrals neglected if value below      1.0D-11
 AO integral compression algorithm  1   Integral accuracy      1.0D-11

     91.488 MB (compressed) written to integral file ( 13.3%)

     Node minimum: 3.146 MB, node maximum: 10.748 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:    4051422.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:    4051422      RECORD LENGTH: 524288

 Memory used in sort:       4.61 MW

 SORT1 READ    86907878. AND WROTE      723489. INTEGRALS IN      3 RECORDS. CPU TIME:     0.39 SEC, REAL TIME:     0.40 SEC
 SORT2 READ     8938354. AND WROTE    48612351. INTEGRALS IN    288 RECORDS. CPU TIME:     0.10 SEC, REAL TIME:     0.11 SEC

 Node minimum:     4048764.  Node maximum:     4053420. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      19       29.35       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         2.07      1.85
 REAL TIME  *         2.96 SEC
 DISK USED  *        29.71 MB (local),      555.24 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 Program * Restricted Hartree-Fock

 Orbital guess generated from atomic densities. Full valence occupancy:    7   6

 Initial alpha occupancy:   7   6
 Initial beta  occupancy:   5   5

 NELEC=   23   SYM=2   MS2= 3   THRE=1.0D-08   THRD=3.2D-06   THRG=3.2D-06  HFMA2=F  DIIS_START=2   DIIS_MAX=10   DIIS_INCORE=F

 Level shifts:    0.00 (CLOSED)    0.00 (OPEN)    0.30 (GAP_MIN)

 ITER           ETOT              DE          GRAD        DDIFF     DIIS  NEXP   TIME(IT)  TIME(TOT)  DIAG
   1     -301.88721697    -301.88721697     0.00D+00     0.10D+00     0     0       0.02      0.05    start
   2     -315.82221193     -13.93499496     0.30D+00     0.16D+01     1     0       0.03      0.08    diag2
   3     -328.64607030     -12.82385837     0.29D+00     0.96D+00     2     0       0.03      0.11    diag2
   4     -331.04438520      -2.39831491     0.89D-01     0.70D+00     3     0       0.03      0.14    diag2
   5     -331.19612161      -0.15173641     0.21D-01     0.14D-01     4     0       0.03      0.17    diag2
   6     -331.20958896      -0.01346734     0.36D-02     0.95D-02     5     0       0.02      0.19    diag2
   7     -331.20993237      -0.00034341     0.39D-03     0.70D-03     6     0       0.03      0.22    diag2
   8     -331.20995276      -0.00002039     0.97D-04     0.20D-03     7     0       0.03      0.25    fixocc
   9     -331.20995344      -0.00000068     0.15D-04     0.66D-04     8     0       0.03      0.28    diag2
  10     -331.20995345      -0.00000001     0.49D-05     0.48D-05     9     0       0.03      0.31    diag2/orth
  11     -331.20995345      -0.00000000     0.42D-06     0.91D-06     9     0       0.02      0.33    diag2
  12     -331.20995345      -0.00000000     0.26D-07     0.86D-07     0     0       0.03      0.36    diag

 Final alpha occupancy:   7   6
 Final beta  occupancy:   7   3

 !RHF STATE 1.2 Energy               -331.209953453776
  RHF One-electron energy            -587.018225197658
  RHF Two-electron energy             255.808271743882
  RHF Kinetic energy                  233.768286066719
  RHF Nuclear energy                    0.000000000000
  RHF Virial quotient                  -1.416830139907

 !RHF STATE 1.2 Dipole moment           0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 ELECTRON ORBITALS
 =================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -8.08653     1  1  s    1.00007
    2.1     2.00000    -2.07180     1  1  d2+  0.98327
    3.1     2.00000    -2.07180     1  1  d2-  1.00001
    4.1     2.00000    -2.07180     1  1  d1+  1.00001
    5.1     2.00000    -2.07180     1  1  d1-  1.00001
    6.1     2.00000    -2.07180     1  1  d0   0.98326
    7.1     2.00000    -0.70292     1  1  s   -0.33144    1  4  s    0.41699    1  5  s    0.62747
    1.2     2.00000    -5.99997     1  1  px   1.00010
    2.2     2.00000    -5.99997     1  1  py   1.00010
    3.2     2.00000    -5.99997     1  1  pz   1.00010
    4.2     1.00000    -0.36833     1  2  pz   1.00389
    5.2     1.00000    -0.36833     1  2  py   1.00389
    6.2     1.00000    -0.36833     1  2  px   1.00388


 HOMO      6.2    -0.368331 =     -10.0228eV
 LUMO      8.1     0.053645 =       1.4598eV
 LUMO-HOMO         0.421977 =      11.4826eV

 Orbitals saved in record  2100.2


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      19       29.35       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    

              2       4        0.83       700     1000      520     2100   
                                         GEOM     BASIS   MCVARS     RHF  

 PROGRAMS   *        TOTAL   RHF-SCF       INT
 CPU TIMES  *         2.43      0.36      1.85
 REAL TIME  *         4.26 SEC
 DISK USED  *        32.19 MB (local),      584.97 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING PAR            =         2.00000000                                  
 SETTING NQ             =         1.00000000                                  
 SETTING ND             =         8.00000000                                  

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of closed-shell orbitals:   9 (    6    3)
 Number of active  orbitals:        7 (    1    6)
 Number of external orbitals:     150 (   79   71)

 State symmetry 1

 Number of active electrons:   5    Spin symmetry=Quartet   Space symmetry=2
 Number of states:             1
 Number of CSFs:             104   (110 determinants, 245 intermediate states)

 State symmetry 2

 Number of active electrons:   5    Spin symmetry=Doublet   Space symmetry=2
 Number of states:             8
 Number of CSFs:             280   (390 determinants, 735 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  
 *** IN SYMMETRY 1 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.157D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.136D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.304D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.199D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.158D+00 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 5 3 4 6 2 1 1 5 3   4 6 2 1 3 5 4 6 2 2   6 4 3 5 7 9 8151410  131211 1 2 6 4 3 510
                                       13141512 8 911 7 1 5   3 4 6 21013141512 8   911 7 1 5 3 4 6 2 1  1013141512 8 911 7 5
                                        3 4 6 2 1 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.915D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.376D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.129D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.137D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.378D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.998D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.137D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.378D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  9 SYMMETRY CONTAMINATION OF 0.996D-03 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 2 3 3 2 1 3 2 1 3   2 1 9 710 8 4 5 6 3   2 1 6 5 4 810 9 7 7   910 8 4 5 6 3 2 1 7
                                        910 8 4 5 6 1 2 320  18171514161321111219   7 910 8 4 5 6 1 2 3   7 910 8 4 5 6 1 2 3

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.92523
 Weight factors for state symmetry  2:    0.00935   0.00935   0.00935   0.00935   0.00935   0.00935   0.00935   0.00935
 
 Number of orbital rotations:  1216  ( 24 closed/active, 687 closed/virtual, 0 active/active, 505 active/virtual )
 Total number of variables:    4446
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1   13   24    0   -331.20457932    -331.21292158   -0.00834226    0.00226127 0.00000331 0.00000000  0.16E+01      2.23
   2    8   14    0   -331.21274874    -331.21278841   -0.00003966    0.00266041 0.00000467 0.00000000  0.99E-01      3.78
   3    5   10    0   -331.21278841    -331.21278841   -0.00000000    0.00000062 0.00000001 0.00000000  0.22E-04      4.90

 CONVERGENCE REACHED!  Final gradient:    0.00000000 ( 0.16E-08)
                       Final energy:   -331.21278841
 
 Results for state 1.2 Quartet
 =============================
 !MCSCF STATE 1.2 Quartet Energy              -331.218302333155
 Nuclear energy                                  0.00000000
 Kinetic energy                                233.76813779
 One electron energy                          -586.93323130
 Two electron energy                           255.71492896
 Virial ratio                                    2.41686675
 
 !MCSCF STATE 1.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.2 Doublet
 =============================
 !MCSCF STATE 1.2 Doublet Energy              -331.153943172022
 Nuclear energy                                  0.00000000
 Kinetic energy                                233.69356794
 One electron energy                          -586.65060659
 Two electron energy                           255.49666342
 Virial ratio                                    2.41704346
 
 !MCSCF STATE 1.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.2 Doublet
 =============================
 !MCSCF STATE 2.2 Doublet Energy              -331.153943172016
 Nuclear energy                                  0.00000000
 Kinetic energy                                233.69356794
 One electron energy                          -586.65060659
 Two electron energy                           255.49666342
 Virial ratio                                    2.41704346
 
 !MCSCF STATE 2.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.2 Doublet
 =============================
 !MCSCF STATE 3.2 Doublet Energy              -331.153943171984
 Nuclear energy                                  0.00000000
 Kinetic energy                                233.69356794
 One electron energy                          -586.65060659
 Two electron energy                           255.49666342
 Virial ratio                                    2.41704346
 
 !MCSCF STATE 3.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.2 Doublet
 =============================
 !MCSCF STATE 4.2 Doublet Energy              -331.153943171964
 Nuclear energy                                  0.00000000
 Kinetic energy                                233.69356794
 One electron energy                          -586.65060659
 Two electron energy                           255.49666342
 Virial ratio                                    2.41704346
 
 !MCSCF STATE 4.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.2 Doublet
 =============================
 !MCSCF STATE 5.2 Doublet Energy              -331.153943171961
 Nuclear energy                                  0.00000000
 Kinetic energy                                233.69356794
 One electron energy                          -586.65060660
 Two electron energy                           255.49666342
 Virial ratio                                    2.41704346
 
 !MCSCF STATE 5.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.2 Doublet
 =============================
 !MCSCF STATE 6.2 Doublet Energy              -331.128904343501
 Nuclear energy                                  0.00000000
 Kinetic energy                                233.69297426
 One electron energy                          -586.55393958
 Two electron energy                           255.42503523
 Virial ratio                                    2.41693992
 
 !MCSCF STATE 6.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.2 Doublet
 =============================
 !MCSCF STATE 7.2 Doublet Energy              -331.128904343444
 Nuclear energy                                  0.00000000
 Kinetic energy                                233.69297426
 One electron energy                          -586.55393958
 Two electron energy                           255.42503524
 Virial ratio                                    2.41693992
 
 !MCSCF STATE 7.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.2 Doublet
 =============================
 !MCSCF STATE 8.2 Doublet Energy              -331.128904343407
 Nuclear energy                                  0.00000000
 Kinetic energy                                233.69297426
 One electron energy                          -586.55393958
 Two electron energy                           255.42503524
 Virial ratio                                    2.41693992
 
 !MCSCF STATE 8.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 ? Warning
 ? Transition properties are only calculated between states of the same symmetry
 ? The problem occurs in mu_properties_expec2

 !MCSCF expec      <1.2 Quartet|LXLX|1.2 Quartet>    -0.000000000000
 !MCSCF expec      <1.2 Doublet|LXLX|1.2 Doublet>     3.845585871780
 !MCSCF expec      <2.2 Doublet|LXLX|2.2 Doublet>     3.999999388945
 !MCSCF expec      <3.2 Doublet|LXLX|3.2 Doublet>     1.000000367766
 !MCSCF expec      <4.2 Doublet|LXLX|4.2 Doublet>     1.000000000000
 !MCSCF expec      <5.2 Doublet|LXLX|5.2 Doublet>     0.154421304783
 !MCSCF expec      <6.2 Doublet|LXLX|6.2 Doublet>     0.000000001717
 !MCSCF expec      <7.2 Doublet|LXLX|7.2 Doublet>     0.999999999324
 !MCSCF expec      <8.2 Doublet|LXLX|8.2 Doublet>     1.000000000000
 
 !MCSCF expec      <1.2 Quartet|LYLY|1.2 Quartet>    -0.000000000000
 !MCSCF expec      <1.2 Doublet|LYLY|1.2 Doublet>     1.744559023689
 !MCSCF expec      <2.2 Doublet|LYLY|2.2 Doublet>     1.000001837131
 !MCSCF expec      <3.2 Doublet|LYLY|3.2 Doublet>     3.999999631744
 !MCSCF expec      <4.2 Doublet|LYLY|4.2 Doublet>     1.000000000000
 !MCSCF expec      <5.2 Doublet|LYLY|5.2 Doublet>     2.255421798017
 !MCSCF expec      <6.2 Doublet|LYLY|6.2 Doublet>     0.999999998283
 !MCSCF expec      <7.2 Doublet|LYLY|7.2 Doublet>     0.000000000677
 !MCSCF expec      <8.2 Doublet|LYLY|8.2 Doublet>     1.000000000000
 
 !MCSCF expec      <1.2 Quartet|LZLZ|1.2 Quartet>    -0.000000000000
 !MCSCF expec      <1.2 Doublet|LZLZ|1.2 Doublet>     0.409855104530
 !MCSCF expec      <2.2 Doublet|LZLZ|2.2 Doublet>     0.999998773924
 !MCSCF expec      <3.2 Doublet|LZLZ|3.2 Doublet>     1.000000000489
 !MCSCF expec      <4.2 Doublet|LZLZ|4.2 Doublet>     4.000000000000
 !MCSCF expec      <5.2 Doublet|LZLZ|5.2 Doublet>     3.590156897201
 !MCSCF expec      <6.2 Doublet|LZLZ|6.2 Doublet>     1.000000000000
 !MCSCF expec      <7.2 Doublet|LZLZ|7.2 Doublet>     1.000000000000
 !MCSCF expec      <8.2 Doublet|LZLZ|8.2 Doublet>    -0.000000000000
 
 !MCSCF expec      <1.2 Quartet|L**2|1.2 Quartet>    -0.000000000000
 !MCSCF expec      <1.2 Doublet|L**2|1.2 Doublet>     6.000000000000
 !MCSCF expec      <2.2 Doublet|L**2|2.2 Doublet>     6.000000000000
 !MCSCF expec      <3.2 Doublet|L**2|3.2 Doublet>     6.000000000000
 !MCSCF expec      <4.2 Doublet|L**2|4.2 Doublet>     6.000000000000
 !MCSCF expec      <5.2 Doublet|L**2|5.2 Doublet>     6.000000000000
 !MCSCF expec      <6.2 Doublet|L**2|6.2 Doublet>     2.000000000000
 !MCSCF expec      <7.2 Doublet|L**2|7.2 Doublet>     2.000000000000
 !MCSCF expec      <8.2 Doublet|L**2|8.2 Doublet>     2.000000000000
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 6 3 5 2 4 1 1 3 5   6 4 2 1 3 5 4 6 2 4   6 3 5 2 7 812 91114  151310 1 6 4 3 5 2 8
                                       12111310 9 71415 1 2   6 4 5 3 812 7131011  1415 9 1 2 6 4 5 3 1   812141511 7 91310 2
                                        3 5 6 4 1 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   2 1 3 3 1 2 2 3 1 1   2 3 4 6 810 5 7 9 1   2 3 6 5 4 7 9 810 5   6 4 7 910 8 1 2 3 6
                                        5 7 9 410 8 2 1 312  14162113182019111517   6 810 5 9 7 4 2 1 3   810 6 7 9 5 4 2 1 3
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -8.09118     1  1  s    1.00219
    2.1     2.00000    -2.07667     1  1  d1-  1.00001
    3.1     2.00000    -2.07667     1  1  d2-  1.00001
    4.1     2.00000    -2.07667     1  1  d2+  1.00001
    5.1     2.00000    -2.07667     1  1  d0   1.00001
    6.1     2.00000    -2.07667     1  1  d1+  1.00001
    7.1     1.99179    -0.70586     1  1  s   -0.32693    1  4  s    0.42919    1  5  s    0.62815
    1.2     2.00000    -6.00482     1  1  py   1.00019
    2.2     2.00000    -6.00482     1  1  px   1.00019
    3.2     2.00000    -6.00482     1  1  pz   1.00019
    4.2     0.99949    -0.15320     1  2  pz   1.02166
    5.2     0.99949    -0.15320     1  2  px   1.02166
    6.2     0.99949    -0.15320     1  2  py   1.02166
    7.2     0.00324     0.54643     1  1  py  -0.63830    1  2  py  -4.00549    1  3  py   0.65587    1  4  py   2.58938
                                    1  5  py   1.26746
    8.2     0.00324     0.54643     1  1  pz  -0.63830    1  2  pz  -4.00549    1  3  pz   0.65587    1  4  pz   2.58938
                                    1  5  pz   1.26746
    9.2     0.00324     0.54643     1  1  px  -0.63830    1  2  px  -4.00549    1  3  px   0.65587    1  4  px   2.58938
                                    1  5  px   1.26746
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 2 (Quartet)
 =======================================
 
 2 aaa000       0.99700959
 
 Energy:     -331.21830233
 
 
 CI Coefficients of symmetry 2 (Doublet)
 =======================================

 State:              1               2               3               4               5               6               7
 2 aba000      -0.15972982     -0.00021409      0.00000049     -0.00000002      0.79712012     -0.00000000     -0.00000000
 2 baa000       0.77019052      0.00105980      0.00007524      0.00000011     -0.26022986     -0.00000000     -0.00000000
 2 a02000       0.00000010     -0.00000075     -0.00000045     -0.70404944     -0.00000000     -0.00000006      0.00000043
 2 a20000      -0.00000010      0.00000075      0.00000045      0.70404944     -0.00000000     -0.00000006      0.00000043
 2 20a000      -0.00007362     -0.00022268      0.70404940     -0.00000045     -0.00001525      0.00002884      0.69605403
 2 02a000       0.00007362      0.00022268     -0.70404940      0.00000045      0.00001525      0.00002884      0.69605404
 2 2a0000      -0.00097064      0.70404873      0.00022258     -0.00000075     -0.00000541      0.69605403     -0.00002884
 2 0a2000       0.00097064     -0.70404873     -0.00022258      0.00000075      0.00000541      0.69605403     -0.00002884
 2 aab000      -0.61046070     -0.00084571     -0.00007573     -0.00000009     -0.53689026      0.00000000      0.00000000
 0 a22000       0.00000000      0.00000000      0.00000000      0.00000000     -0.00000000      0.00000001     -0.00000009
 0 22a000       0.00000000      0.00000000     -0.00000000      0.00000000      0.00000000     -0.00000610     -0.14726307
 0 2a2000       0.00000000     -0.00000000     -0.00000000      0.00000000     -0.00000000     -0.14726307      0.00000610
 
 Energy:     -331.15394317   -331.15394317   -331.15394317   -331.15394317   -331.15394317   -331.12890434   -331.12890434

 State:              8
 2 aba000       0.00000000
 2 baa000      -0.00000000
 2 a02000       0.69605403
 2 a20000       0.69605404
 2 20a000      -0.00000043
 2 02a000      -0.00000043
 2 2a0000       0.00000006
 2 0a2000       0.00000006
 2 aab000      -0.00000000
 0 a22000      -0.14726307
 0 22a000       0.00000009
 0 2a2000      -0.00000001
 
 Energy:     -331.12890434
 


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       51.53       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       5        1.41       700     1000      520     2100     2140   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF   

 PROGRAMS   *        TOTAL     MULTI   RHF-SCF       INT
 CPU TIMES  *         7.35      4.91      0.36      1.85
 REAL TIME  *         9.79 SEC
 DISK USED  *        53.04 MB (local),      835.13 MB (total)
 SF USED    *        58.41 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

         ENERGY     LL
    -331.2183023  -0.0
    -331.1539432   6.0
    -331.1539432   6.0
    -331.1539432   6.0
    -331.1539432   6.0
    -331.1539432   6.0
    -331.1289043   2.0
    -331.1289043   2.0
    -331.1289043   2.0
                                                  


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
 Number of external orbitals:     150 (  79  71 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Valence orbitals related to previous ones by unitary transformation. Operators transformed.


 Number of p-space configurations:   1

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -331.21830233

 Number of blocks in overlap matrix:   167   Smallest eigenvalue:  0.87D-06
 Number of N-2 electron functions:     251
 Number of N-1 electron functions:  101369

 Number of internal configurations:                33680
 Number of singly external configurations:       7602383
 Number of doubly external configurations:       1412684
 Total number of contracted configurations:      9048747
 Total number of uncontracted configurations:  353184345

 Diagonal Coupling coefficients finished.               Storage:  10293144 words, CPU-Time:      0.85 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   1763063 words, CPU-time:      0.20 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -331.21830233     0.00000000    -1.06928090  0.46D-01  0.58D-01     2.48
    2     1     1     1.07160382    -0.88937864  -332.10768097    -0.88937864    -0.02440009  0.35D-02  0.96D-03    51.79
    3     1     1     1.05886084    -0.91197636  -332.13027869    -0.02259772    -0.00053293  0.83D-04  0.27D-04   101.20
    4     1     1     1.05805802    -0.91248272  -332.13078505    -0.00050636    -0.00002174  0.28D-05  0.16D-05   150.69
    5     1     1     1.05817881    -0.91250458  -332.13080691    -0.00002186    -0.00000088  0.54D-07  0.13D-06   199.99
    6     1     1     1.05823066    -0.91250555  -332.13080789    -0.00000097    -0.00000005  0.27D-08  0.70D-08   249.40


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   1.2%
 S   1.1%  66.0%
 P   0.3%  27.1%   2.1%

 Initialization:   0.5%
 Other:            1.7%

 Total CPU:      249.4 seconds
 =====================================



 Wavefunction saved on  5302.2

 Reference coefficients greater than 0.0500000
 =============================================
 2222222222///000           0.9692908


 RESULTS FOR STATE 1.2
 =====================

 Coefficient of reference function:   C(0) = 0.97173913 (fixed)   0.97186337 (relaxed)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00073773   -0.00296792   -0.00343818
 Singles      0.01757485   -0.09802689   -0.10770516
 Pairs        0.04069877   -0.81151078   -0.80136221
 Total        1.05901135   -0.91250558   -0.91250555
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -331.21830233
 Nuclear energy                         0.00000000
 Kinetic energy                       234.13453209
 One electron energy                 -586.01983884
 Two electron energy                  253.88903095
 Virial quotient                       -1.41854687
 Correlation energy                    -0.91250555
 !MRCI STATE 1.2 Energy              -332.130807887632

 Properties without orbital relaxation:

 !MRCI STATE 1.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -332.18465607 (Davidson, fixed reference)
 Cluster corrected energies          -332.18440903 (Davidson, relaxed reference)

 Cluster corrected energies          -332.18165498 (Pople, fixed reference)
 Cluster corrected energies          -332.18141037 (Pople, relaxed reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       51.53       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       6       71.86       700     1000      520     2100     2140     5302   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *       258.31    250.95      4.91      0.36      1.85
 REAL TIME  *       264.92 SEC
 DISK USED  *       123.49 MB (local),        1.64 GB (total)
 SF USED    *       972.34 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =      -332.18440903  AU                              


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
 Number of external orbitals:     150 (  79  71 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Coulomb and exchange operators available. No transformation done.


 Number of p-space configurations:   8

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -331.15394317
     2      -331.15394317
     3      -331.15394317
     4      -331.15394317
     5      -331.15394317
     6      -331.12890434
     7      -331.12890434
     8      -331.12890434

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2776D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1113D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1113D-06

 Number of blocks in overlap matrix:   814   Smallest eigenvalue:  0.11D-06
 Number of N-2 electron functions:    1869
 Number of N-1 electron functions:  124768

 Number of internal configurations:                44086
 Number of singly external configurations:       9356224
 Number of doubly external configurations:      10516714
 Total number of contracted configurations:     19917024
 Total number of uncontracted configurations:  466206855

 Diagonal Coupling coefficients finished.               Storage:  27654011 words, CPU-Time:     69.14 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   2140643 words, CPU-time:      1.52 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -331.15394317    -0.00000000    -1.07016326  0.51D-01  0.55D-01    84.34
    1     2     2     1.00000000     0.00000000  -331.15394317     0.00000000    -1.07040252  0.50D-01  0.55D-01    84.34
    1     3     3     1.00000000     0.00000000  -331.15394317    -0.00000000    -1.07100767  0.50D-01  0.55D-01    84.34
    1     4     4     1.00000000     0.00000000  -331.15394317     0.00000000    -1.07021178  0.51D-01  0.55D-01    84.34
    1     5     5     1.00000000     0.00000000  -331.15394317    -0.00000000    -1.07007412  0.51D-01  0.54D-01    84.34
    1     6     6     1.00000000     0.00000000  -331.12890434     0.00000000    -1.05307444  0.33D-01  0.57D-01    84.34
    1     7     7     1.00000000     0.00000000  -331.12890434     0.00000000    -1.05403713  0.33D-01  0.57D-01    84.34
    1     8     8     1.00000000     0.00000000  -331.12890434     0.00000000    -1.05262697  0.33D-01  0.56D-01    84.34
    2     1     1     1.07338801    -0.89740748  -332.05135065    -0.89740748    -0.02536215  0.35D-02  0.12D-02   883.18
    2     2     2     1.07348050    -0.89734500  -332.05128817    -0.89734500    -0.02549225  0.35D-02  0.12D-02   883.18
    2     3     3     1.07358944    -0.89720853  -332.05115170    -0.89720853    -0.02552131  0.37D-02  0.11D-02   883.18
    2     4     4     1.07341802    -0.89718147  -332.05112464    -0.89718147    -0.02564806  0.36D-02  0.12D-02   883.18
    2     5     5     1.07358472    -0.89695631  -332.05089949    -0.89695631    -0.02576068  0.38D-02  0.11D-02   883.18
    2     6     6     1.06452676    -0.89404859  -332.02295293    -0.89404859    -0.02335075  0.27D-02  0.12D-02   883.18
    2     7     7     1.06407396    -0.89390627  -332.02281062    -0.89390627    -0.02336405  0.27D-02  0.12D-02   883.18
    2     8     8     1.06423631    -0.89388560  -332.02278994    -0.89388560    -0.02340296  0.27D-02  0.12D-02   883.18
    3     1     1     1.06225239    -0.92078959  -332.07473276    -0.02338211    -0.00065462  0.73D-04  0.59D-04  1681.05
    3     2     2     1.06224470    -0.92077244  -332.07471561    -0.02342744    -0.00066313  0.73D-04  0.60D-04  1681.05
    3     3     3     1.06222399    -0.92077188  -332.07471505    -0.02356335    -0.00067388  0.77D-04  0.60D-04  1681.05
    3     4     4     1.06222303    -0.92076381  -332.07470699    -0.02358235    -0.00067093  0.75D-04  0.61D-04  1681.05
    3     5     5     1.06215702    -0.92073883  -332.07468200    -0.02378252    -0.00069383  0.78D-04  0.63D-04  1681.05
    3     6     6     1.05844937    -0.91547179  -332.04437613    -0.02142320    -0.00067341  0.50D-04  0.77D-04  1681.05
    3     7     7     1.05829189    -0.91541723  -332.04432157    -0.02151095    -0.00070302  0.51D-04  0.83D-04  1681.05
    3     8     8     1.05825876    -0.91541458  -332.04431893    -0.02152899    -0.00070585  0.51D-04  0.83D-04  1681.05
    4     1     1     1.06195335    -0.92149352  -332.07543669    -0.00070393    -0.00005601  0.37D-05  0.75D-05  2479.37
    4     2     2     1.06193638    -0.92149196  -332.07543513    -0.00071952    -0.00005777  0.40D-05  0.76D-05  2479.37
    4     3     3     1.06193723    -0.92148952  -332.07543270    -0.00071764    -0.00005862  0.39D-05  0.78D-05  2479.37
    4     4     4     1.06192589    -0.92148938  -332.07543255    -0.00072557    -0.00005899  0.39D-05  0.79D-05  2479.37
    4     5     5     1.06189758    -0.92148642  -332.07542959    -0.00074759    -0.00006155  0.41D-05  0.81D-05  2479.37
    4     6     6     1.05929336    -0.91622585  -332.04513020    -0.00075406    -0.00007264  0.46D-05  0.98D-05  2479.37
    4     7     7     1.05923746    -0.91621598  -332.04512032    -0.00079876    -0.00007965  0.51D-05  0.11D-04  2479.37
    4     8     8     1.05923892    -0.91621541  -332.04511975    -0.00080083    -0.00007975  0.51D-05  0.11D-04  2479.37
    5     1     1     1.06233938    -0.92156195  -332.07550512    -0.00006843    -0.00000618  0.41D-06  0.75D-06  3277.93
    5     2     2     1.06233645    -0.92156169  -332.07550486    -0.00006974    -0.00000635  0.42D-06  0.78D-06  3277.93
    5     3     3     1.06233627    -0.92156144  -332.07550461    -0.00007192    -0.00000654  0.44D-06  0.78D-06  3277.93
    5     4     4     1.06233644    -0.92156142  -332.07550459    -0.00007204    -0.00000653  0.44D-06  0.78D-06  3277.93
    5     5     5     1.06233334    -0.92156100  -332.07550417    -0.00007458    -0.00000681  0.46D-06  0.81D-06  3277.93
    5     6     6     1.06003429    -0.91631591  -332.04522025    -0.00009006    -0.00000781  0.54D-06  0.85D-06  3277.93
    5     7     7     1.06003306    -0.91631482  -332.04521916    -0.00009884    -0.00000863  0.60D-06  0.92D-06  3277.93
    5     8     8     1.06003278    -0.91631471  -332.04521906    -0.00009930    -0.00000871  0.61D-06  0.92D-06  3277.93
    6     1     1     1.06241591    -0.92156934  -332.07551252    -0.00000740    -0.00000059  0.42D-07  0.70D-07  4075.79
    6     2     2     1.06241595    -0.92156931  -332.07551248    -0.00000761    -0.00000062  0.45D-07  0.74D-07  4075.79
    6     3     3     1.06241460    -0.92156927  -332.07551244    -0.00000783    -0.00000063  0.44D-07  0.75D-07  4075.79
    6     4     4     1.06241541    -0.92156925  -332.07551242    -0.00000783    -0.00000063  0.43D-07  0.74D-07  4075.79
    6     5     5     1.06241565    -0.92156919  -332.07551236    -0.00000819    -0.00000068  0.46D-07  0.80D-07  4075.79
    6     6     6     1.06011921    -0.91632491  -332.04522925    -0.00000900    -0.00000070  0.40D-07  0.85D-07  4075.79
    6     7     7     1.06011696    -0.91632476  -332.04522910    -0.00000994    -0.00000079  0.42D-07  0.97D-07  4075.79
    6     8     8     1.06011652    -0.91632475  -332.04522910    -0.00001004    -0.00000080  0.43D-07  0.98D-07  4075.79
    7     1     1     1.06243602    -0.92157000  -332.07551318    -0.00000066    -0.00000006  0.47D-08  0.80D-08  4874.14
    7     2     2     1.06243599    -0.92157000  -332.07551317    -0.00000070    -0.00000007  0.53D-08  0.84D-08  4874.14
    7     3     3     1.06243515    -0.92156997  -332.07551315    -0.00000071    -0.00000007  0.52D-08  0.88D-08  4874.14
    7     4     4     1.06243521    -0.92156995  -332.07551313    -0.00000070    -0.00000007  0.51D-08  0.87D-08  4874.14
    7     5     5     1.06243520    -0.92156995  -332.07551312    -0.00000075    -0.00000007  0.58D-08  0.92D-08  4874.14
    7     6     6     1.06013657    -0.91632570  -332.04523004    -0.00000078    -0.00000008  0.61D-08  0.11D-07  4874.14
    7     7     7     1.06013474    -0.91632566  -332.04523000    -0.00000090    -0.00000010  0.74D-08  0.13D-07  4874.14
    7     8     8     1.06013488    -0.91632565  -332.04522999    -0.00000089    -0.00000010  0.72D-08  0.12D-07  4874.14
    8     1     1     1.06243838    -0.92157008  -332.07551325    -0.00000007    -0.00000001  0.81D-09  0.12D-08  5672.23
    8     2     2     1.06243845    -0.92157007  -332.07551325    -0.00000007    -0.00000001  0.73D-09  0.11D-08  5672.23
    8     3     3     1.06243819    -0.92157005  -332.07551322    -0.00000008    -0.00000001  0.83D-09  0.12D-08  5672.23
    8     4     4     1.06243816    -0.92157003  -332.07551320    -0.00000008    -0.00000001  0.82D-09  0.12D-08  5672.23
    8     5     5     1.06243805    -0.92157003  -332.07551320    -0.00000008    -0.00000001  0.91D-09  0.13D-08  5672.23
    8     6     6     1.06014313    -0.91632579  -332.04523014    -0.00000010    -0.00000001  0.11D-08  0.15D-08  5672.23
    8     7     7     1.06014233    -0.91632578  -332.04523012    -0.00000012    -0.00000002  0.13D-08  0.18D-08  5672.23
    8     8     8     1.06014236    -0.91632576  -332.04523011    -0.00000011    -0.00000002  0.13D-08  0.17D-08  5672.23


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.6%
 S   0.5%  35.7%
 P   0.2%  38.4%  17.2%

 Initialization:   1.3%
 Other:            6.1%

 Total CPU:     5672.2 seconds
 =====================================



 Wavefunction saved on  5102.2

 Reference coefficients greater than 0.0500000
 =============================================
 2222222222/\/000           0.9366554   0.0096244  -0.0023441   0.0020007  -0.2374447   0.0000000  -0.0000000   0.0000000
 2222222222//\000           0.2374715  -0.0001727   0.0023687  -0.0102128   0.9366446  -0.0000000   0.0000000   0.0000000
 222222222202/000           0.0065617  -0.6832555  -0.0014602  -0.0040247  -0.0018298   0.6768585  -0.0032636   0.0078125
 222222222220/000          -0.0065617   0.6832553   0.0014602   0.0040247   0.0018298   0.6768587  -0.0032636   0.0078125
 22222222220/2000           0.0012026  -0.0013854   0.6832275  -0.0097505  -0.0021393   0.0033534   0.6768587  -0.0077831
 22222222222/0000          -0.0012026   0.0013854  -0.6832275   0.0097505   0.0021393   0.0033534   0.6768588  -0.0077831
 2222222222/02000           0.0004593  -0.0040603   0.0097637   0.6831819   0.0073073  -0.0077744   0.0078212   0.6768218
 2222222222/20000          -0.0004593   0.0040603  -0.0097637  -0.6831817  -0.0073073  -0.0077744   0.0078212   0.6768221
 22222202222/2000          -0.0000000  -0.0000000  -0.0000000   0.0000000   0.0000000  -0.0006690  -0.1350323   0.0015527
 222222022222/000           0.0000000   0.0000000   0.0000000   0.0000000  -0.0000000  -0.1350323   0.0006511  -0.0015586
 2222220222/22000           0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0000000   0.0015510  -0.0015603  -0.1350249

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.799457    0.001707   -0.009313    0.000652    0.548836    0.000000   -0.000000   -0.000000
 2           0.006245   -0.001966    0.969697   -0.005763    0.007370    0.000000   -0.000000   -0.000000
 3           0.000233    0.969657    0.002072    0.013857   -0.003336    0.000000    0.000000   -0.000000
 4          -0.006374   -0.013838    0.005712    0.969592    0.008273   -0.000000   -0.000000    0.000000
 5           0.548845   -0.003036    0.002597    0.010371   -0.799430   -0.000000    0.000000    0.000000
 6           0.000000   -0.000000    0.000000    0.000000    0.000000    0.004810    0.970764   -0.011150
 7           0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.970764   -0.004681    0.011217
 8           0.000000    0.000000    0.000000   -0.000000    0.000000   -0.011163    0.011205    0.970712

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.969764    0.000000    0.000000   -0.000000    0.000000    0.000000   -0.000000    0.000000
 2           0.000000    0.969764   -0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.000000
 3           0.000000   -0.000000    0.969764    0.000000    0.000000   -0.000000   -0.000000   -0.000000
 4          -0.000000   -0.000000    0.000000    0.969764   -0.000000    0.000000   -0.000000   -0.000000
 5           0.000000   -0.000000    0.000000   -0.000000    0.969764   -0.000000    0.000000   -0.000000
 6           0.000000    0.000000   -0.000000    0.000000   -0.000000    0.970840    0.000000   -0.000000
 7          -0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.000000    0.970840   -0.000000
 8           0.000000    0.000000   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.970840


 RESULTS FOR STATE 1.2
 =====================

 Coefficient of reference function:   C(0) = 0.79945727 (fixed)   0.96986577 (relaxed)   0.96976411 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00083856   -0.00344242   -0.76890392
 Singles      0.02058101   -0.10474481   -0.11634186
 Pairs        0.04190973    0.00000000   -0.03632430
 Total        1.06332930   -0.10818722   -0.92157008
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -331.15394317
 Nuclear energy                         0.00000000
 Kinetic energy                       234.10877341
 One electron energy                 -585.79070656
 Two electron energy                  253.71519331
 Virial quotient                       -1.41846676
 Correlation energy                    -0.92157008
 !MRCI STATE 1.2 Energy              -332.075513249974

 Properties without orbital relaxation:

 !MRCI STATE 1.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -332.13387564 (Davidson, fixed reference)
 Cluster corrected energies          -332.13367023 (Davidson, relaxed reference)
 Cluster corrected energies          -332.13387564 (Davidson, rotated reference)

 Cluster corrected energies          -332.13144871 (Pople, fixed reference)
 Cluster corrected energies          -332.13124128 (Pople, relaxed reference)
 Cluster corrected energies          -332.13144871 (Pople, rotated reference)



 RESULTS FOR STATE 2.2
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.96969685 (fixed)   0.96986574 (relaxed)   0.96976408 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00083856   -0.00344242   -0.76890398
 Singles      0.02058092   -0.10474468   -0.11634177
 Pairs        0.04190989    0.00000000   -0.03632432
 Total        1.06332937   -0.10818709   -0.92157007
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -331.15394317
 Nuclear energy                         0.00000000
 Kinetic energy                       234.10883915
 One electron energy                 -585.79073569
 Two electron energy                  253.71522244
 Virial quotient                       -1.41846636
 Correlation energy                    -0.92157007
 !MRCI STATE 2.2 Energy              -332.075513246060

 Properties without orbital relaxation:

 !MRCI STATE 2.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -332.13387570 (Davidson, fixed reference)
 Cluster corrected energies          -332.13367029 (Davidson, relaxed reference)
 Cluster corrected energies          -332.13387570 (Davidson, rotated reference)

 Cluster corrected energies          -332.13144877 (Pople, fixed reference)
 Cluster corrected energies          -332.13124134 (Pople, relaxed reference)
 Cluster corrected energies          -332.13144877 (Pople, rotated reference)



 RESULTS FOR STATE 3.2
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.96965721 (fixed)   0.96986586 (relaxed)   0.96976420 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00083857   -0.00344242   -0.76890397
 Singles      0.02058098   -0.10474487   -0.11634181
 Pairs        0.04190957    0.00000000   -0.03632427
 Total        1.06332911   -0.10818729   -0.92157005
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -331.15394317
 Nuclear energy                         0.00000000
 Kinetic energy                       234.10876579
 One electron energy                 -585.79070089
 Two electron energy                  253.71518766
 Virial quotient                       -1.41846681
 Correlation energy                    -0.92157005
 !MRCI STATE 3.2 Energy              -332.075513223716

 Properties without orbital relaxation:

 !MRCI STATE 3.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -332.13387544 (Davidson, fixed reference)
 Cluster corrected energies          -332.13367003 (Davidson, relaxed reference)
 Cluster corrected energies          -332.13387544 (Davidson, rotated reference)

 Cluster corrected energies          -332.13144851 (Pople, fixed reference)
 Cluster corrected energies          -332.13124107 (Pople, relaxed reference)
 Cluster corrected energies          -332.13144851 (Pople, rotated reference)



 RESULTS FOR STATE 4.2
 =====================

 Coefficient of reference function:   C(0) = 0.96959240 (fixed)   0.96986587 (relaxed)   0.96976421 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00083857   -0.00344242   -0.76890382
 Singles      0.02058098   -0.10474492   -0.11634180
 Pairs        0.04190955   -0.00000011   -0.03632441
 Total        1.06332909   -0.10818745   -0.92157003
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -331.15394317
 Nuclear energy                         0.00000000
 Kinetic energy                       234.10877055
 One electron energy                 -585.79070180
 Two electron energy                  253.71518859
 Virial quotient                       -1.41846678
 Correlation energy                    -0.92157003
 !MRCI STATE 4.2 Energy              -332.075513202826

 Properties without orbital relaxation:

 !MRCI STATE 4.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -332.13387539 (Davidson, fixed reference)
 Cluster corrected energies          -332.13366998 (Davidson, relaxed reference)
 Cluster corrected energies          -332.13387539 (Davidson, rotated reference)

 Cluster corrected energies          -332.13144846 (Pople, fixed reference)
 Cluster corrected energies          -332.13124103 (Pople, relaxed reference)
 Cluster corrected energies          -332.13144846 (Pople, rotated reference)



 RESULTS FOR STATE 5.2
 =====================

 Coefficient of reference function:   C(0) = 0.79942994 (fixed)   0.96986592 (relaxed)   0.96976426 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00083857   -0.00344242   -0.76890389
 Singles      0.02058105   -0.10474505   -0.11634188
 Pairs        0.04190936   -0.00000000   -0.03632426
 Total        1.06332898   -0.10818747   -0.92157003
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -331.15394317
 Nuclear energy                         0.00000000
 Kinetic energy                       234.10872181
 One electron energy                 -585.79067738
 Two electron energy                  253.71516418
 Virial quotient                       -1.41846707
 Correlation energy                    -0.92157003
 !MRCI STATE 5.2 Energy              -332.075513200154

 Properties without orbital relaxation:

 !MRCI STATE 5.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -332.13387529 (Davidson, fixed reference)
 Cluster corrected energies          -332.13366987 (Davidson, relaxed reference)
 Cluster corrected energies          -332.13387529 (Davidson, rotated reference)

 Cluster corrected energies          -332.13144836 (Pople, fixed reference)
 Cluster corrected energies          -332.13124092 (Pople, relaxed reference)
 Cluster corrected energies          -332.13144836 (Pople, rotated reference)



 RESULTS FOR STATE 6.2
 =====================

 Maximum overlap with reference state  7

 Coefficient of reference function:   C(0) = 0.97076413 (fixed)   0.97093197 (relaxed)   0.97084007 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00078343   -0.00332428   -0.78732611
 Singles      0.01477044   -0.09115044   -0.09866690
 Pairs        0.04541981    0.00943905   -0.03033278
 Total        1.06097368   -0.08503567   -0.91632579
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -331.12890434
 Nuclear energy                         0.00000000
 Kinetic energy                       234.11913257
 One electron energy                 -585.67839640
 Two electron energy                  253.63316626
 Virial quotient                       -1.41827465
 Correlation energy                    -0.91632579
 !MRCI STATE 6.2 Energy              -332.045230135090

 Properties without orbital relaxation:

 !MRCI STATE 6.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -332.10110189 (Davidson, fixed reference)
 Cluster corrected energies          -332.10091788 (Davidson, relaxed reference)
 Cluster corrected energies          -332.10110189 (Davidson, rotated reference)

 Cluster corrected energies          -332.09867142 (Pople, fixed reference)
 Cluster corrected energies          -332.09848633 (Pople, relaxed reference)
 Cluster corrected energies          -332.09867142 (Pople, rotated reference)



 RESULTS FOR STATE 7.2
 =====================

 Maximum overlap with reference state  6

 Coefficient of reference function:   C(0) = 0.97076435 (fixed)   0.97093233 (relaxed)   0.97084044 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00078343   -0.00332429   -0.76947969
 Singles      0.01477050   -0.09115074   -0.09866696
 Pairs        0.04541894   -0.00949584   -0.04817913
 Total        1.06097288   -0.10397086   -0.91632578
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -331.12890434
 Nuclear energy                         0.00000000
 Kinetic energy                       234.11897327
 One electron energy                 -585.67832664
 Two electron energy                  253.63309652
 Virial quotient                       -1.41827561
 Correlation energy                    -0.91632578
 !MRCI STATE 7.2 Energy              -332.045230118885

 Properties without orbital relaxation:

 !MRCI STATE 7.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -332.10110114 (Davidson, fixed reference)
 Cluster corrected energies          -332.10091713 (Davidson, relaxed reference)
 Cluster corrected energies          -332.10110114 (Davidson, rotated reference)

 Cluster corrected energies          -332.09867067 (Pople, fixed reference)
 Cluster corrected energies          -332.09848557 (Pople, relaxed reference)
 Cluster corrected energies          -332.09867067 (Pople, rotated reference)



 RESULTS FOR STATE 8.2
 =====================

 Coefficient of reference function:   C(0) = 0.97071158 (fixed)   0.97093232 (relaxed)   0.97084043 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00078343   -0.00332429   -0.00391266
 Singles      0.01477047   -0.09115073   -0.09866695
 Pairs        0.04541900   -0.82174168   -0.81374615
 Total        1.06097291   -0.91621670   -0.91632576
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -331.12890434
 Nuclear energy                         0.00000000
 Kinetic energy                       234.11899070
 One electron energy                 -585.67833281
 Two electron energy                  253.63310271
 Virial quotient                       -1.41827551
 Correlation energy                    -0.91632576
 !MRCI STATE 8.2 Energy              -332.045230105026

 Properties without orbital relaxation:

 !MRCI STATE 8.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -332.10110115 (Davidson, fixed reference)
 Cluster corrected energies          -332.10091714 (Davidson, relaxed reference)
 Cluster corrected energies          -332.10110115 (Davidson, rotated reference)

 Cluster corrected energies          -332.09867068 (Pople, fixed reference)
 Cluster corrected energies          -332.09848558 (Pople, relaxed reference)
 Cluster corrected energies          -332.09867068 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       51.53       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       7     1297.38       700     1000      520     2100     2140     5302     5102   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *      6488.79   6230.48    250.95      4.91      0.36      1.85
 REAL TIME  *      6617.01 SEC
 DISK USED  *         1.32 GB (local),       16.00 GB (total)
 SF USED    *        12.49 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(2)     =      -332.13387564  AU                              
 SETTING HLSDIAG(3)     =      -332.13387570  AU                              
 SETTING HLSDIAG(4)     =      -332.13387544  AU                              
 SETTING HLSDIAG(5)     =      -332.13387539  AU                              
 SETTING HLSDIAG(6)     =      -332.13387529  AU                              
 SETTING HLSDIAG(7)     =      -332.10110189  AU                              
 SETTING HLSDIAG(8)     =      -332.10110114  AU                              
 SETTING HLSDIAG(9)     =      -332.10110115  AU                              


         HLSDIAG
    -332.1844090
    -332.1338756
    -332.1338757
    -332.1338754
    -332.1338754
    -332.1338753
    -332.1011019
    -332.1011011
    -332.1011012
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Diagonal elements of H will be replaced by values from variable HLSDIAG


   ******************************
   *** Spin-orbit calculation ***
   ******************************


   Spin-orbit matrix elements
   ==========================

 Wavefunction restored from record  5302.2  Symmetry=2  S= 1.5  NSTATE=   1

 Original energies:   -332.130808
 Replaced energies:   -332.184409

 Wavefunction restored from record  5102.2  Symmetry=2  S= 0.5  NSTATE=   8

 Original energies:   -332.075513   -332.075513   -332.075513   -332.075513   -332.075513   -332.045230   -332.045230   -332.045230
 Replaced energies:   -332.133876   -332.133876   -332.133875   -332.133875   -332.133875   -332.101102   -332.101101   -332.101101



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=  -332.18440903

 Wigner-Eckart theorem used for 23 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.2  1.5  1.5       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00      -0.00       0.00     913.74
                            0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00       4.53

    2   1.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      12.12

    3   1.2  1.5 -0.5       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00      -0.00       0.00     527.55
                           -0.00      -0.00       0.00       0.00      -0.00      -0.00       0.00       0.00       0.00      -2.61

    4   1.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    5   1.2  0.5  0.5      -0.00       0.00      -0.00       0.00   11090.80       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00      -0.00      -0.00      -0.01       0.12       3.70       0.05       9.42

    6   2.2  0.5  0.5      -0.00       0.00      -0.00       0.00       0.00   11090.78       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00      -0.00       0.01      -0.00      -6.81       0.17      -0.06       1.98

    7   3.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00   11090.84       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -0.12       6.81       0.00      -0.01       0.21     651.00

    8   4.2  0.5  0.5      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00   11090.85       0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -3.70      -0.17       0.01       0.00      13.11      -9.30

    9   5.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   11090.87       0.00
                            0.00       0.00      -0.00      -0.00      -0.05       0.06      -0.21     -13.11       0.00       0.32

   10   6.2  0.5  0.5     913.74       0.00     527.55       0.00       0.00       0.00       0.00       0.00       0.00   18283.80
                           -4.53     -12.12       2.61      -0.00      -9.42      -1.98    -651.00       9.30      -0.32       0.00

   11   7.2  0.5  0.5      -4.41       0.00      -2.54       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -913.74      12.19     527.55      -0.00      14.62    -650.96       1.74      -3.91       0.61       0.68

   12   8.2  0.5  0.5      10.55       0.00       6.09       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           10.51    1055.04      -6.07      -0.00     723.33      13.92      -8.16      -2.47     204.40      -0.01

   13   1.2  0.5 -0.5       0.00      -0.00       0.00      -0.00      -0.00     -13.21      -0.02      -0.09      -0.00    -184.73
                           -0.00      -0.00      -0.00       0.00      -0.00       0.02      -9.50       0.20       0.05       2.30

   14   2.2  0.5 -0.5       0.00      -0.00       0.00      -0.00      13.21      -0.00      -0.07       0.04      -3.35       0.10
                           -0.00      -0.00      -0.00       0.00      -0.02      -0.00      -0.16      -6.81      -0.09      -3.58

   15   3.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.02       0.07      -0.00      -6.81      -0.08       5.68
                           -0.00       0.00      -0.00      -0.00       9.50       0.16      -0.00      -0.12       9.76      -9.33

   16   4.2  0.5 -0.5       0.00      -0.00       0.00      -0.00       0.09      -0.04       6.81      -0.00      -0.04      11.06
                           -0.00       0.00      -0.00      -0.00      -0.20       6.81       0.12      -0.00      -0.12    -650.98

   17   5.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       3.35       0.08       0.04       0.00    -728.68
                           -0.00       0.00       0.00      -0.00      -0.05       0.09      -9.76       0.12       0.00      -9.58

   18   6.2  0.5 -0.5       0.00     527.55       0.00     913.74     184.73      -0.10      -5.68     -11.06     728.68      -0.00
                           -0.00      -2.61     -12.12       4.53      -2.30       3.58       9.33     650.98       9.58       0.00

   19   7.2  0.5 -0.5       0.00      -2.54       0.00      -4.41      -1.32       3.85      -1.79    -651.03     -10.50      -0.01
                           -0.00    -527.55      12.19     913.74    -538.63     -14.06       2.44      -8.50     524.27      -0.01

   20   8.2  0.5 -0.5       0.00       6.09       0.00      10.55       3.28      -1.37     651.10      -1.90       6.45      -0.00
                           -0.00       6.07    1055.04     -10.51      12.45    -650.96      -1.31       3.74      -7.69      -0.68


   Nr   State  S   Sz       11         12         13         14         15         16         17         18         19         20

    1   1.2  1.5  1.5      -4.41      10.55       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          913.74     -10.51       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    2   1.2  1.5  0.5       0.00       0.00      -0.00      -0.00       0.00      -0.00       0.00     527.55      -2.54       6.09
                          -12.19   -1055.04       0.00       0.00      -0.00      -0.00      -0.00       2.61     527.55      -6.07

    3   1.2  1.5 -0.5      -2.54       6.09       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -527.55       6.07       0.00       0.00       0.00       0.00      -0.00      12.12     -12.19   -1055.04

    4   1.2  1.5 -1.5       0.00       0.00      -0.00      -0.00       0.00      -0.00       0.00     913.74      -4.41      10.55
                            0.00       0.00      -0.00      -0.00       0.00       0.00       0.00      -4.53    -913.74      10.51

    5   1.2  0.5  0.5       0.00       0.00      -0.00      13.21       0.02       0.09       0.00     184.73      -1.32       3.28
                          -14.62    -723.33       0.00       0.02      -9.50       0.20       0.05       2.30     538.63     -12.45

    6   2.2  0.5  0.5       0.00       0.00     -13.21      -0.00       0.07      -0.04       3.35      -0.10       3.85      -1.37
                          650.96     -13.92      -0.02       0.00      -0.16      -6.81      -0.09      -3.58      14.06     650.96

    7   3.2  0.5  0.5       0.00       0.00      -0.02      -0.07      -0.00       6.81       0.08      -5.68      -1.79     651.10
                           -1.74       8.16       9.50       0.16       0.00      -0.12       9.76      -9.33      -2.44       1.31

    8   4.2  0.5  0.5       0.00       0.00      -0.09       0.04      -6.81      -0.00       0.04     -11.06    -651.03      -1.90
                            3.91       2.47      -0.20       6.81       0.12       0.00      -0.12    -650.98       8.50      -3.74

    9   5.2  0.5  0.5       0.00       0.00      -0.00      -3.35      -0.08      -0.04       0.00     728.68     -10.50       6.45
                           -0.61    -204.40      -0.05       0.09      -9.76       0.12      -0.00      -9.58    -524.27       7.69

   10   6.2  0.5  0.5       0.00       0.00    -184.73       0.10       5.68      11.06    -728.68      -0.00      -0.01      -0.00
                           -0.68       0.01      -2.30       3.58       9.33     650.98       9.58      -0.00       0.01       0.68

   11   7.2  0.5  0.5   18283.97       0.00       1.32      -3.85       1.79     651.03      10.50       0.01       0.00      -0.68
                           -0.00       0.01    -538.63     -14.06       2.44      -8.50     524.27      -0.01      -0.00      -0.00

   12   8.2  0.5  0.5       0.00   18283.97      -3.28       1.37    -651.10       1.90      -6.45       0.00       0.68      -0.00
                           -0.01      -0.00      12.45    -650.96      -1.31       3.74      -7.69      -0.68       0.00      -0.00

   13   1.2  0.5 -0.5       1.32      -3.28   11090.80       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          538.63     -12.45       0.00       0.01      -0.12      -3.70      -0.05      -9.42      14.62     723.33

   14   2.2  0.5 -0.5      -3.85       1.37       0.00   11090.78       0.00       0.00       0.00       0.00       0.00       0.00
                           14.06     650.96      -0.01       0.00       6.81      -0.17       0.06      -1.98    -650.96      13.92

   15   3.2  0.5 -0.5       1.79    -651.10       0.00       0.00   11090.84       0.00       0.00       0.00       0.00       0.00
                           -2.44       1.31       0.12      -6.81      -0.00       0.01      -0.21    -651.00       1.74      -8.16

   16   4.2  0.5 -0.5     651.03       1.90       0.00       0.00       0.00   11090.85       0.00       0.00       0.00       0.00
                            8.50      -3.74       3.70       0.17      -0.01      -0.00     -13.11       9.30      -3.91      -2.47

   17   5.2  0.5 -0.5      10.50      -6.45       0.00       0.00       0.00       0.00   11090.87       0.00       0.00       0.00
                         -524.27       7.69       0.05      -0.06       0.21      13.11      -0.00      -0.32       0.61     204.40

   18   6.2  0.5 -0.5       0.01       0.00       0.00       0.00       0.00       0.00       0.00   18283.80       0.00       0.00
                            0.01       0.68       9.42       1.98     651.00      -9.30       0.32      -0.00       0.68      -0.01

   19   7.2  0.5 -0.5       0.00       0.68       0.00       0.00       0.00       0.00       0.00       0.00   18283.97       0.00
                            0.00      -0.00     -14.62     650.96      -1.74       3.91      -0.61      -0.68       0.00      -0.01

   20   8.2  0.5 -0.5      -0.68      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   18283.97
                            0.00       0.00    -723.33     -13.92       8.16       2.47    -204.40       0.01       0.01       0.00


 No symmetry adaption


 Spin-orbit eigenstates   (energies)
 ======================

     Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
              (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1  -332.18482748    -0.00041845      -91.84      0.00000000        0.00      0.0000
     2  -332.18482748    -0.00041845      -91.84      0.00000000        0.00      0.0000
     3  -332.18482748    -0.00041845      -91.84      0.00000000        0.00      0.0000
     4  -332.18482748    -0.00041845      -91.84      0.00000000        0.00      0.0000
     5  -332.13523215     0.04917688    10793.08      0.04959533    10884.92      1.3496
     6  -332.13523215     0.04917688    10793.08      0.04959533    10884.92      1.3496
     7  -332.13523193     0.04917711    10793.13      0.04959555    10884.97      1.3496
     8  -332.13523193     0.04917711    10793.13      0.04959555    10884.97      1.3496
     9  -332.13381358     0.05059545    11104.42      0.05101390    11196.26      1.3882
    10  -332.13381358     0.05059545    11104.42      0.05101390    11196.26      1.3882
    11  -332.13381338     0.05059565    11104.46      0.05101410    11196.30      1.3882
    12  -332.13381338     0.05059565    11104.46      0.05101410    11196.30      1.3882
    13  -332.13381324     0.05059579    11104.49      0.05101423    11196.33      1.3882
    14  -332.13381324     0.05059579    11104.49      0.05101423    11196.33      1.3882
    15  -332.10109520     0.08331383    18285.27      0.08373228    18377.11      2.2785
    16  -332.10109520     0.08331383    18285.27      0.08373228    18377.11      2.2785
    17  -332.09942287     0.08498616    18652.31      0.08540461    18744.15      2.3240
    18  -332.09942287     0.08498616    18652.31      0.08540461    18744.15      2.3240
    19  -332.09942240     0.08498663    18652.41      0.08540507    18744.25      2.3240
    20  -332.09942240     0.08498663    18652.41      0.08540507    18744.25      2.3240


 Eigenvectors of spin-orbit matrix
 =================================

  Basis states          Eigenvectors (columnwise)

   Nr   State  S   Sz        1             2             3             4             5             6             7             8

    1    1.2  1.5  1.5   0.856940765   0.045440093  -0.508401071  -0.002491312   0.004271275  -0.006288844  -0.002198836   0.020950599
                         0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000

    2    1.2  1.5  0.5  -0.026123655   0.498998128  -0.000308185   0.178531749  -0.017315868  -0.011734673  -0.000425254  -0.000036837
                         0.019397034  -0.091760677   0.020381517   0.839120509  -0.002141150  -0.001275141  -0.007554322  -0.000739087

    3    1.2  1.5 -0.5   0.507314506   0.029400357   0.857834182  -0.019812227  -0.011803215   0.017447504  -0.000739986   0.007566281
                        -0.007151513   0.013939484  -0.010831909   0.004793417  -0.000112482  -0.000091753   0.000005159  -0.000004071

    4    1.2  1.5 -1.5  -0.044570477   0.840540951   0.000549175  -0.112069708   0.006245283   0.004241688  -0.001188760  -0.000124764
                         0.008847293  -0.166848386   0.002430030  -0.495895181   0.000738921   0.000501863  -0.020916846  -0.002195294

    5    1.2  0.5  0.5  -0.000075639   0.001475010   0.000053627   0.001182876   0.512513778   0.340299512   0.002656227   0.001128246
                         0.000104110  -0.000253919   0.000115621   0.005524587   0.063254775   0.037333033   0.043997457   0.002343315

    6    2.2  0.5  0.5  -0.000064102  -0.000010445  -0.005845360   0.000122911  -0.337616445   0.509750969   0.009203641  -0.109184763
                         0.000025143  -0.000041628   0.000050147   0.000028898  -0.003573608  -0.001856620  -0.000968549   0.000742846

    7    3.2  0.5  0.5   0.000036172  -0.000070898   0.000042712  -0.000068783  -0.004724194  -0.001997567   0.008540555   0.000550414
                         0.005090890   0.000209077   0.002864738  -0.000112545   0.226568481  -0.330188731   0.049543800  -0.472099432

    8    4.2  0.5  0.5   0.000054162  -0.001037474  -0.000020998  -0.002902719  -0.022379161  -0.010839296   0.579727030   0.060197940
                         0.000187938  -0.004919393  -0.000044340   0.000670728   0.169941594   0.122344679  -0.040294544   0.002586995

    9    5.2  0.5  0.5  -0.000292798   0.005526703  -0.000013066  -0.000378463  -0.037245414  -0.023512327   0.041167468   0.003967361
                         0.000067785  -0.001141249   0.000037333  -0.001452923  -0.002434093  -0.001488624   0.614654243   0.065598794

   10    6.2  0.5  0.5  -0.057789442  -0.003072957   0.000644611   0.000141416  -0.015184408   0.022249527  -0.016099069   0.149454722
                         0.000330469  -0.000064756   0.000064171  -0.000017853   0.000648343   0.001084927   0.000102725  -0.000496132

   11    7.2  0.5  0.5   0.000084113   0.000357983  -0.000303747   0.000698244   0.000624592   0.000305518   0.000652376  -0.000648779
                         0.028357499   0.001097709  -0.050431991   0.000330546  -0.066825410   0.095696880   0.010427813  -0.097921564

   12    8.2  0.5  0.5   0.000460868  -0.005364448   0.001193685   0.048689023   0.014421076   0.008948534   0.051327502   0.006764725
                         0.001192100  -0.028971062   0.000601401  -0.010364500  -0.117315036  -0.081124184  -0.003019535   0.000874631

   13    1.2  0.5 -0.5  -0.001496221  -0.000094462  -0.005649438   0.000124598  -0.342328857   0.516395964  -0.002403557   0.044077291
                         0.000038128  -0.000087391   0.000064037   0.000026821  -0.002909791  -0.002597709  -0.000993466   0.000155483

   14    2.2  0.5 -0.5   0.000002140  -0.000067771  -0.000055281  -0.001239612  -0.506001888  -0.335697739   0.005453614  -0.000444764
                        -0.000042865  -0.000012181  -0.000113517  -0.005712627  -0.061738051  -0.036120119   0.109051008   0.009243770

   15    3.2  0.5 -0.5   0.000110249  -0.000955729   0.000124939   0.002803685   0.040779968   0.021929683   0.471307614   0.049948582
                         0.000191272  -0.005000505   0.000042282  -0.000589829  -0.327666877  -0.225554170  -0.027336968   0.005715626

   16    4.2  0.5 -0.5   0.000059802   0.000016533  -0.000014366  -0.000047878  -0.003610938  -0.002256490  -0.005998525  -0.007335277
                        -0.005027246  -0.000194886   0.002979169  -0.000010708   0.122770810  -0.171393934  -0.059954167   0.581079403

   17    5.2  0.5 -0.5  -0.005643139  -0.000300393   0.001500610   0.000033534   0.023524371  -0.037273422  -0.065718222   0.615999877
                        -0.000043346  -0.000009480   0.000048878  -0.000020975   0.001284319  -0.001958998  -0.000238822   0.006224986

   18    6.2  0.5 -0.5   0.003001539  -0.056747832  -0.000013760   0.000204688  -0.022222886  -0.015003050  -0.007984892  -0.000810919
                        -0.000661829   0.010927596  -0.000141873   0.000614609  -0.001536844  -0.002427977  -0.149242091  -0.016078961

   19    7.2  0.5 -0.5  -0.000137405  -0.005438768  -0.000476333  -0.049258397  -0.011547514  -0.007231531   0.097800618   0.010448030
                         0.001146401  -0.027831181  -0.000608204   0.010820732   0.094998111   0.066435913  -0.004908443   0.000059639

   20    8.2  0.5 -0.5  -0.000378948   0.000219943  -0.000623246   0.000849738   0.000645312   0.000537000  -0.001257060  -0.000102291
                        -0.029461095  -0.001259018  -0.049776052   0.001031752  -0.081613682   0.118196856  -0.006704199   0.051416141


   Nr   State  S   Sz        9            10            11            12            13            14            15            16

    1    1.2  1.5  1.5   0.000000703  -0.000000000   0.000000974   0.000000045   0.000000674   0.000000547   0.000012399  -0.000000108
                         0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000

    2    1.2  1.5  0.5   0.000000003  -0.000000021  -0.000000032   0.000000339   0.000000167  -0.000000186   0.000000056   0.000006793
                        -0.000000010  -0.000000268   0.000000057  -0.000001240   0.000000049  -0.000000060   0.000000149  -0.000001729

    3    1.2  1.5 -0.5  -0.000000269   0.000000009  -0.000001286  -0.000000064   0.000000195   0.000000174   0.000007009  -0.000000016
                         0.000000002  -0.000000004   0.000000006   0.000000016   0.000000005   0.000000009  -0.000000068   0.000000158

    4    1.2  1.5 -1.5   0.000000000   0.000000058   0.000000012  -0.000000252   0.000000516  -0.000000635   0.000000104   0.000011986
                         0.000000000   0.000000700  -0.000000044   0.000000941   0.000000182  -0.000000224  -0.000000028  -0.000003175

    5    1.2  0.5  0.5   0.004150910   0.053204305  -0.011948058   0.094652840   0.002590636  -0.001177059   0.000000044   0.000005908
                         0.013733577   0.683137851   0.015780631  -0.347727173  -0.000202943   0.000570962   0.000000310  -0.000001456

    6    2.2  0.5  0.5   0.717961743  -0.015526057   0.289083950   0.013799975   0.016616019   0.012590261   0.000000238  -0.000000044
                        -0.002346518  -0.002823605  -0.000568837  -0.005568380  -0.000400978  -0.001364028   0.000000065  -0.000000116

    7    3.2  0.5  0.5   0.000043788  -0.002350592   0.002748054   0.002252907  -0.000116413  -0.005148357   0.000000107  -0.000000268
                        -0.023379848  -0.001644515   0.729593608   0.029297174   0.194529898   0.168566824   0.000022190  -0.000000450

    8    4.2  0.5  0.5  -0.000374136  -0.099145218   0.016786332  -0.470450202   0.121647290  -0.148252478  -0.000000053  -0.000006003
                         0.000284753   0.009159546   0.000995128  -0.123430605  -0.359686698   0.432544643  -0.000000505  -0.000021612

    9    5.2  0.5  0.5  -0.000267039  -0.006109693  -0.001385839   0.030065659  -0.457373710   0.557843253   0.000000208   0.000024054
                         0.000339871  -0.063688924   0.005218349  -0.122439411  -0.152701524   0.190598853  -0.000000046  -0.000006586

   10    6.2  0.5  0.5   0.000003368   0.000000011   0.000001366  -0.000000052   0.000004729   0.000003880   0.577487379  -0.004891840
                        -0.000000021  -0.000000010  -0.000000028   0.000000025  -0.000000014   0.000000035  -0.002853482   0.000132090

   11    7.2  0.5  0.5  -0.000000023   0.000000034  -0.000000033   0.000000043  -0.000000048  -0.000000043   0.002893882   0.004648632
                        -0.000005228   0.000000031  -0.000010327  -0.000000466  -0.000003407  -0.000002735   0.577094426  -0.012987346

   12    8.2  0.5  0.5   0.000000106   0.000001863  -0.000000384   0.000008616  -0.000000299   0.000000475  -0.001134315  -0.142346466
                         0.000000080  -0.000000142  -0.000000103   0.000002359   0.000001235  -0.000001302  -0.011435149  -0.559325520

   13    1.2  0.5 -0.5  -0.685197466   0.014030056   0.360376810   0.018336342  -0.000919555  -0.002374979  -0.000006084  -0.000000037
                         0.003529019   0.002999787  -0.001379050  -0.007454058  -0.000930529  -0.001054540   0.000000105  -0.000000311

   14    2.2  0.5 -0.5   0.004099174   0.057095001   0.008951993  -0.075408729   0.011416325  -0.015532925   0.000000013   0.000000213
                         0.015239027   0.715691785  -0.011887303   0.279075934   0.005481129  -0.005914483  -0.000000123  -0.000000124

   15    3.2  0.5 -0.5   0.001833454  -0.023295978  -0.027714443   0.703995402   0.051311898  -0.064707136   0.000000144  -0.000005579
                         0.002206390   0.001979040  -0.009762665   0.191585121  -0.160649833   0.183452667  -0.000000503  -0.000021478

   16    4.2  0.5 -0.5  -0.000920785   0.000252804  -0.002604356  -0.003385695   0.004341952   0.005150746   0.000000269   0.000000078
                         0.099563164  -0.000396424   0.486365834   0.016471439  -0.457225123  -0.379665713  -0.000022428   0.000000502

   17    5.2  0.5 -0.5   0.063976095   0.000316599   0.126048584   0.005399218   0.589473507   0.482117795  -0.000024939   0.000000213
                         0.000816501  -0.000294257   0.002665998   0.000012742   0.006164571   0.008420123  -0.000000207  -0.000000009

   18    6.2  0.5 -0.5   0.000000009   0.000000258  -0.000000037  -0.000000381   0.000003671  -0.000004454   0.004762569   0.558964632
                        -0.000000012   0.000003358   0.000000044   0.000001312   0.000001260  -0.000001589  -0.001124935  -0.145114975

   19    7.2  0.5 -0.5  -0.000000033  -0.000005212   0.000000461  -0.000009966  -0.000000952   0.000001181  -0.007819229  -0.144975301
                        -0.000000032   0.000000410   0.000000080  -0.000002706   0.000002564  -0.000003196  -0.011364004  -0.558595125

   20    8.2  0.5 -0.5  -0.000000013   0.000000089  -0.000000048   0.000000000   0.000000014  -0.000000130  -0.005622099   0.001831625
                        -0.000001868   0.000000099  -0.000008933  -0.000000397   0.000001386   0.000001264  -0.577127322   0.011344358


   Nr   State  S   Sz       17            18            19            20

    1    1.2  1.5  1.5   0.000051696   0.058517408  -0.034392517  -0.001084220
                        -0.000000000   0.000000000  -0.000000000   0.000000000

    2    1.2  1.5  0.5   0.032015219  -0.000018176   0.001571530  -0.049304972
                         0.012587132   0.000787740   0.000366967   0.031475026

    3    1.2  1.5 -0.5  -0.000263877   0.034398995   0.058492354   0.001116272
                         0.000742451  -0.000345298  -0.000549646  -0.001165465

    4    1.2  1.5 -1.5   0.054671706  -0.000048298  -0.000908359   0.028814041
                         0.020863642  -0.000018431   0.000591960  -0.018777547

    5    1.2  0.5  0.5   0.027972391   0.000002204   0.004228006  -0.096891038
                         0.011236952   0.001514755   0.000433230   0.061989877

    6    2.2  0.5  0.5   0.000217790  -0.000932677  -0.118905726  -0.003449712
                        -0.000556272   0.000325729   0.000706117   0.002707690

    7    3.2  0.5  0.5  -0.000332872   0.000521423   0.000587240   0.001537191
                        -0.001624355   0.103498235   0.058672632  -0.000131793

    8    4.2  0.5  0.5   0.035412382  -0.000044299   0.000331608  -0.033163213
                        -0.096269732  -0.001393797   0.000747145  -0.050357021

    9    5.2  0.5  0.5   0.107871947  -0.000094613  -0.001093375   0.024744056
                         0.040164029   0.000022521   0.001009008  -0.017213189

   10    6.2  0.5  0.5   0.000654699   0.799842154  -0.006279240  -0.000193425
                         0.000030882  -0.003985886  -0.000004847  -0.000106018

   11    7.2  0.5  0.5  -0.006085107  -0.001929996   0.003219094   0.002602669
                         0.002256579  -0.394608137   0.695839683   0.010961132

   12    8.2  0.5  0.5  -0.148320375  -0.000073295  -0.004434549  -0.371004344
                         0.377423398   0.004299877   0.010481455  -0.581247868

   13    1.2  0.5 -0.5   0.000542126  -0.030140468  -0.115020373  -0.003305689
                        -0.001414421   0.000525269   0.000965243   0.002671357

   14    2.2  0.5 -0.5  -0.000755248  -0.000005145  -0.004368506   0.100004708
                        -0.000636856  -0.000597364  -0.000385036  -0.064328288

   15    3.2  0.5 -0.5   0.037388142   0.000890139   0.001359815   0.031541958
                        -0.096510535  -0.001398923  -0.000728856   0.049476535

   16    4.2  0.5 -0.5  -0.000538329   0.001238638  -0.000290321   0.000130103
                         0.001286404  -0.102568825   0.060295473   0.000807008

   17    5.2  0.5 -0.5  -0.000080365  -0.115102694   0.030128580   0.001466925
                        -0.000054774  -0.000935887   0.000911502   0.000248388

   18    6.2  0.5 -0.5   0.745856264  -0.000622684  -0.000104168   0.005258099
                         0.288897543  -0.000204572   0.000194427  -0.003432386

   19    7.2  0.5 -0.5  -0.142495700   0.004880645  -0.003804018   0.377215983
                         0.367986796   0.004277847  -0.010604233   0.584731844

   20    8.2  0.5 -0.5   0.001464589   0.004007379   0.006521031   0.009437905
                        -0.004043426   0.405501290   0.689529393   0.006360195


 Composition of spin-orbit eigenvectors
 ======================================

   Nr   State  S   Sz       1        2        3        4        5        6        7        8        9       10

    1    1.2  1.5  1.5  73.435%   0.206%  25.847%   0.001%   0.002%   0.004%   0.000%   0.044%   0.000%   0.000%
    2    1.2  1.5  0.5   0.106%  25.742%   0.042%  73.600%   0.030%   0.014%   0.006%   0.000%   0.000%   0.000%
    3    1.2  1.5 -0.5  25.742%   0.106%  73.600%   0.042%   0.014%   0.030%   0.000%   0.006%   0.000%   0.000%
    4    1.2  1.5 -1.5   0.206%  73.435%   0.001%  25.847%   0.004%   0.002%   0.044%   0.000%   0.000%   0.000%
    5    1.2  0.5  0.5   0.000%   0.000%   0.000%   0.003%  26.667%  11.720%   0.194%   0.001%   0.021%  46.951%
    6    2.2  0.5  0.5   0.000%   0.000%   0.003%   0.000%  11.400%  25.985%   0.009%   1.192%  51.547%   0.025%
    7    3.2  0.5  0.5   0.003%   0.000%   0.001%   0.000%   5.136%  10.903%   0.253%  22.288%   0.055%   0.001%
    8    4.2  0.5  0.5   0.000%   0.003%   0.000%   0.001%   2.938%   1.509%  33.771%   0.363%   0.000%   0.991%
    9    5.2  0.5  0.5   0.000%   0.003%   0.000%   0.000%   0.139%   0.056%  37.949%   0.432%   0.000%   0.409%
   10    6.2  0.5  0.5   0.334%   0.001%   0.000%   0.000%   0.023%   0.050%   0.026%   2.234%   0.000%   0.000%
   11    7.2  0.5  0.5   0.080%   0.000%   0.254%   0.000%   0.447%   0.916%   0.011%   0.959%   0.000%   0.000%
   12    8.2  0.5  0.5   0.000%   0.087%   0.000%   0.248%   1.397%   0.666%   0.264%   0.005%   0.000%   0.000%
   13    1.2  0.5 -0.5   0.000%   0.000%   0.003%   0.000%  11.720%  26.667%   0.001%   0.194%  46.951%   0.021%
   14    2.2  0.5 -0.5   0.000%   0.000%   0.000%   0.003%  25.985%  11.400%   1.192%   0.009%   0.025%  51.547%
   15    3.2  0.5 -0.5   0.000%   0.003%   0.000%   0.001%  10.903%   5.136%  22.288%   0.253%   0.001%   0.055%
   16    4.2  0.5 -0.5   0.003%   0.000%   0.001%   0.000%   1.509%   2.938%   0.363%  33.771%   0.991%   0.000%
   17    5.2  0.5 -0.5   0.003%   0.000%   0.000%   0.000%   0.056%   0.139%   0.432%  37.949%   0.409%   0.000%
   18    6.2  0.5 -0.5   0.001%   0.334%   0.000%   0.000%   0.050%   0.023%   2.234%   0.026%   0.000%   0.000%
   19    7.2  0.5 -0.5   0.000%   0.080%   0.000%   0.254%   0.916%   0.447%   0.959%   0.011%   0.000%   0.000%
   20    8.2  0.5 -0.5   0.087%   0.000%   0.248%   0.000%   0.666%   1.397%   0.005%   0.264%   0.000%   0.000%

   Nr   State  S   Sz      11       12       13       14       15       16       17       18       19       20

    1    1.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.342%   0.118%   0.000%
    2    1.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.118%   0.000%   0.000%   0.342%
    3    1.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.118%   0.342%   0.000%
    4    1.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.342%   0.000%   0.000%   0.118%
    5    1.2  0.5  0.5   0.039%  12.987%   0.001%   0.000%   0.000%   0.000%   0.091%   0.000%   0.002%   1.323%
    6    2.2  0.5  0.5   8.357%   0.022%   0.028%   0.016%   0.000%   0.000%   0.000%   0.000%   1.414%   0.002%
    7    3.2  0.5  0.5  53.231%   0.086%   3.784%   2.844%   0.000%   0.000%   0.000%   1.071%   0.344%   0.000%
    8    4.2  0.5  0.5   0.028%  23.656%  14.417%  20.907%   0.000%   0.000%   1.052%   0.000%   0.000%   0.364%
    9    5.2  0.5  0.5   0.003%   1.590%  23.251%  34.752%   0.000%   0.000%   1.325%   0.000%   0.000%   0.091%
   10    6.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%  33.350%   0.002%   0.000%  63.976%   0.004%   0.000%
   11    7.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%  33.305%   0.019%   0.004%  15.572%  48.420%   0.013%
   12    8.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.013%  33.311%  16.445%   0.002%   0.013%  47.549%
   13    1.2  0.5 -0.5  12.987%   0.039%   0.000%   0.001%   0.000%   0.000%   0.000%   0.091%   1.323%   0.002%
   14    2.2  0.5 -0.5   0.022%   8.357%   0.016%   0.028%   0.000%   0.000%   0.000%   0.000%   0.002%   1.414%
   15    3.2  0.5 -0.5   0.086%  53.231%   2.844%   3.784%   0.000%   0.000%   1.071%   0.000%   0.000%   0.344%
   16    4.2  0.5 -0.5  23.656%   0.028%  20.907%  14.417%   0.000%   0.000%   0.000%   1.052%   0.364%   0.000%
   17    5.2  0.5 -0.5   1.590%   0.003%  34.752%  23.251%   0.000%   0.000%   0.000%   1.325%   0.091%   0.000%
   18    6.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.002%  33.350%  63.976%   0.000%   0.000%   0.004%
   19    7.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.019%  33.305%  15.572%   0.004%   0.013%  48.420%
   20    8.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%  33.311%   0.013%   0.002%  16.445%  47.549%   0.013%


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
              1      21       51.53       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       7     1297.38       700     1000      520     2100     2140     5302     5102   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *     39693.46  33204.66   6230.48    250.95      4.91      0.36      1.85
 REAL TIME  *     40129.86 SEC
 DISK USED  *         1.32 GB (local),       16.00 GB (total)
 SF USED    *        12.49 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCVQZ-PP energy=   -332.099422403696

              CI              CI           MULTI         RHF-SCF
   -332.04523011   -332.13080789   -331.12890434   -331.20995345
 **********************************************************************************************************************************
 Molpro calculation terminated with 1 warning(s)
