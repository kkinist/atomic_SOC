
 Working directory              : /wrk/irikura/molpro.Qcc0ta0Zep/
 Global scratch directory       : /wrk/irikura/molpro.Qcc0ta0Zep/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.Qcc0ta0Zep/

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
 Default parameters read. Elapsed time= 0.15 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2023.2 linked Fri Sep 22 03:27:09 2023


 **********************************************************************************************************************************
 LABEL *   As SO-CI                                                                                                                                                      
  (32 PROC) 64 bit mpp version                                                           DATE: 07-Aug-24          TIME: 11:13:48  
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

     91.750 MB (compressed) written to integral file ( 13.2%)

     Node minimum: 3.146 MB, node maximum: 10.486 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:    4051422.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:    4051422      RECORD LENGTH: 524288

 Memory used in sort:       4.61 MW

 SORT1 READ    86907878. AND WROTE      723489. INTEGRALS IN      3 RECORDS. CPU TIME:     0.40 SEC, REAL TIME:     0.41 SEC
 SORT2 READ     8938354. AND WROTE    48612351. INTEGRALS IN    228 RECORDS. CPU TIME:     0.10 SEC, REAL TIME:     0.11 SEC

 Node minimum:     4048764.  Node maximum:     4053420. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      19       29.35       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         2.13      1.89
 REAL TIME  *         2.99 SEC
 DISK USED  *        29.71 MB (local),      555.61 MB (total)
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
   3     -328.64607030     -12.82385837     0.29D+00     0.96D+00     2     0       0.02      0.10    diag2
   4     -331.04438520      -2.39831491     0.89D-01     0.70D+00     3     0       0.03      0.13    diag2
   5     -331.19612161      -0.15173641     0.21D-01     0.14D-01     4     0       0.03      0.16    diag2
   6     -331.20958896      -0.01346734     0.36D-02     0.95D-02     5     0       0.03      0.19    diag2
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
  RHF Kinetic energy                  233.768286066720
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
 CPU TIMES  *         2.53      0.40      1.89
 REAL TIME  *         4.21 SEC
 DISK USED  *        32.19 MB (local),      585.34 MB (total)
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
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.914D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.375D-03 HAS BEEN REMOVED
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

 Weight factors for state symmetry  1:    0.11111
 Weight factors for state symmetry  2:    0.11111   0.11111   0.11111   0.11111   0.11111   0.11111   0.11111   0.11111
 
 Number of orbital rotations:  1216  ( 24 closed/active, 687 closed/virtual, 0 active/active, 505 active/virtual )
 Total number of variables:    4446
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1   11   20    0   -331.14203258    -331.15359015   -0.01155757    0.02253957 0.00004563 0.00000000  0.16E+01      1.90
   2    8   14    0   -331.15329251    -331.15335915   -0.00006664    0.00336384 0.00000445 0.00000000  0.11E+00      3.57
   3    4    8    0   -331.15335915    -331.15335915   -0.00000000    0.00000082 0.00000001 0.00000000  0.23E-04      4.58

 CONVERGENCE REACHED!  Final gradient:    0.00000001 ( 0.72E-08)
                       Final energy:   -331.15335915
 
 Results for state 1.2 Quartet
 =============================
 !MCSCF STATE 1.2 Quartet Energy              -331.217625292768
 Nuclear energy                                  0.00000000
 Kinetic energy                                233.81379333
 One electron energy                          -586.90779411
 Two electron energy                           255.69016881
 Virial ratio                                    2.41658719
 
 !MCSCF STATE 1.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.2 Doublet
 =============================
 !MCSCF STATE 1.2 Doublet Energy              -331.154501886930
 Nuclear energy                                  0.00000000
 Kinetic energy                                233.73142154
 One electron energy                          -586.58719587
 Two electron energy                           255.43269398
 Virial ratio                                    2.41681636
 
 !MCSCF STATE 1.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.2 Doublet
 =============================
 !MCSCF STATE 2.2 Doublet Energy              -331.154501886886
 Nuclear energy                                  0.00000000
 Kinetic energy                                233.73142154
 One electron energy                          -586.58719587
 Two electron energy                           255.43269398
 Virial ratio                                    2.41681636
 
 !MCSCF STATE 2.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.2 Doublet
 =============================
 !MCSCF STATE 3.2 Doublet Energy              -331.154501886841
 Nuclear energy                                  0.00000000
 Kinetic energy                                233.73142154
 One electron energy                          -586.58719587
 Two electron energy                           255.43269398
 Virial ratio                                    2.41681636
 
 !MCSCF STATE 3.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.2 Doublet
 =============================
 !MCSCF STATE 4.2 Doublet Energy              -331.154501886810
 Nuclear energy                                  0.00000000
 Kinetic energy                                233.73142154
 One electron energy                          -586.58719587
 Two electron energy                           255.43269399
 Virial ratio                                    2.41681636
 
 !MCSCF STATE 4.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.2 Doublet
 =============================
 !MCSCF STATE 5.2 Doublet Energy              -331.154501886782
 Nuclear energy                                  0.00000000
 Kinetic energy                                233.73142154
 One electron energy                          -586.58719587
 Two electron energy                           255.43269399
 Virial ratio                                    2.41681636
 
 !MCSCF STATE 5.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.2 Doublet
 =============================
 !MCSCF STATE 6.2 Doublet Energy              -331.130032555769
 Nuclear energy                                  0.00000000
 Kinetic energy                                233.72756830
 One electron energy                          -586.47941816
 Two electron energy                           255.34938561
 Virial ratio                                    2.41673503
 
 !MCSCF STATE 6.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.2 Doublet
 =============================
 !MCSCF STATE 7.2 Doublet Energy              -331.130032555685
 Nuclear energy                                  0.00000000
 Kinetic energy                                233.72756830
 One electron energy                          -586.47941816
 Two electron energy                           255.34938561
 Virial ratio                                    2.41673503
 
 !MCSCF STATE 7.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.2 Doublet
 =============================
 !MCSCF STATE 8.2 Doublet Energy              -331.130032555576
 Nuclear energy                                  0.00000000
 Kinetic energy                                233.72756830
 One electron energy                          -586.47941816
 Two electron energy                           255.34938561
 Virial ratio                                    2.41673503
 
 !MCSCF STATE 8.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 ? Warning
 ? Transition properties are only calculated between states of the same symmetry
 ? The problem occurs in mu_properties_expec2

 !MCSCF expec      <1.2 Quartet|LXLX|1.2 Quartet>    -0.000000000000
 !MCSCF expec      <1.2 Doublet|LXLX|1.2 Doublet>     2.152238415203
 !MCSCF expec      <2.2 Doublet|LXLX|2.2 Doublet>     1.000000008416
 !MCSCF expec      <3.2 Doublet|LXLX|3.2 Doublet>     4.000000000000
 !MCSCF expec      <4.2 Doublet|LXLX|4.2 Doublet>     1.847750376169
 !MCSCF expec      <5.2 Doublet|LXLX|5.2 Doublet>     1.000000006713
 !MCSCF expec      <6.2 Doublet|LXLX|6.2 Doublet>     1.000000000000
 !MCSCF expec      <7.2 Doublet|LXLX|7.2 Doublet>    -0.000000000000
 !MCSCF expec      <8.2 Doublet|LXLX|8.2 Doublet>     1.000000000000
 
 !MCSCF expec      <1.2 Quartet|LYLY|1.2 Quartet>    -0.000000000000
 !MCSCF expec      <1.2 Doublet|LYLY|1.2 Doublet>     0.196855146017
 !MCSCF expec      <2.2 Doublet|LYLY|2.2 Doublet>     0.999999997085
 !MCSCF expec      <3.2 Doublet|LYLY|3.2 Doublet>     1.000000000000
 !MCSCF expec      <4.2 Doublet|LYLY|4.2 Doublet>     3.803149721325
 !MCSCF expec      <5.2 Doublet|LYLY|5.2 Doublet>     3.999999991499
 !MCSCF expec      <6.2 Doublet|LYLY|6.2 Doublet>     0.999999999703
 !MCSCF expec      <7.2 Doublet|LYLY|7.2 Doublet>     1.000000000000
 !MCSCF expec      <8.2 Doublet|LYLY|8.2 Doublet>     0.000000000402
 
 !MCSCF expec      <1.2 Quartet|LZLZ|1.2 Quartet>    -0.000000000000
 !MCSCF expec      <1.2 Doublet|LZLZ|1.2 Doublet>     3.650906438780
 !MCSCF expec      <2.2 Doublet|LZLZ|2.2 Doublet>     3.999999994498
 !MCSCF expec      <3.2 Doublet|LZLZ|3.2 Doublet>     1.000000000000
 !MCSCF expec      <4.2 Doublet|LZLZ|4.2 Doublet>     0.349099902506
 !MCSCF expec      <5.2 Doublet|LZLZ|5.2 Doublet>     1.000000001789
 !MCSCF expec      <6.2 Doublet|LZLZ|6.2 Doublet>     0.000000000297
 !MCSCF expec      <7.2 Doublet|LZLZ|7.2 Doublet>     1.000000000000
 !MCSCF expec      <8.2 Doublet|LZLZ|8.2 Doublet>     0.999999999598
 
 !MCSCF expec      <1.2 Quartet|L**2|1.2 Quartet>    -0.000000000000
 !MCSCF expec      <1.2 Doublet|L**2|1.2 Doublet>     6.000000000000
 !MCSCF expec      <2.2 Doublet|L**2|2.2 Doublet>     6.000000000000
 !MCSCF expec      <3.2 Doublet|L**2|3.2 Doublet>     6.000000000000
 !MCSCF expec      <4.2 Doublet|L**2|4.2 Doublet>     6.000000000000
 !MCSCF expec      <5.2 Doublet|L**2|5.2 Doublet>     6.000000000000
 !MCSCF expec      <6.2 Doublet|L**2|6.2 Doublet>     2.000000000000
 !MCSCF expec      <7.2 Doublet|L**2|7.2 Doublet>     2.000000000000
 !MCSCF expec      <8.2 Doublet|L**2|8.2 Doublet>     2.000000000000
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 3 5 4 2 6 1 1 3 5   6 4 2 1 4 3 5 6 2 6   4 3 5 2 711 8121514  1310 9 1 4 6 3 5 213
                                       10 812 91415 711 1 2   4 6 5 313101514 812   9 711 1 4 2 6 5 3 1  1310 8121415 9 711 2
                                        3 5 4 6 1 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 2 3 3 2 1 1 2 3 3   1 2 5 6 810 4 7 9 1   3 2 6 5 4 7 9 810 7   9 4 6 510 8 1 2 3 7
                                        9 6 410 8 5 1 2 318  20111517141621131912   810 6 7 9 4 5 1 2 3   810 7 9 4 6 5 1 2 3
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -8.10687     1  1  s    1.00122
    2.1     2.00000    -2.09220     1  1  d2-  1.00011
    3.1     2.00000    -2.09220     1  1  d2+  1.00011
    4.1     2.00000    -2.09220     1  1  d1+  1.00011
    5.1     2.00000    -2.09220     1  1  d0   1.00011
    6.1     2.00000    -2.09220     1  1  d1-  1.00011
    7.1     1.97803    -0.71310     1  1  s   -0.33066    1  4  s    0.43498    1  5  s    0.62831
    1.2     2.00000    -6.02028     1  1  px   1.00019
    2.2     2.00000    -6.02028     1  1  py   1.00019
    3.2     2.00000    -6.02028     1  1  pz   1.00019
    4.2     1.00235    -0.16217     1  2  pz   1.08365
    5.2     1.00235    -0.16217     1  2  py   1.08365
    6.2     1.00235    -0.16217     1  2  px   1.08365
    7.2     0.00497     0.48699     1  1  px  -0.43433    1  2  px  -3.09571    1  4  px   2.05429    1  5  px   1.16576
    8.2     0.00497     0.48699     1  1  py  -0.43433    1  2  py  -3.09571    1  4  py   2.05429    1  5  py   1.16576
    9.2     0.00497     0.48699     1  1  pz  -0.43433    1  2  pz  -3.09571    1  4  pz   2.05429    1  5  pz   1.16576
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 2 (Quartet)
 =======================================
 
 2 aaa000       0.99644804
 
 Energy:     -331.21762529
 
 
 CI Coefficients of symmetry 2 (Doublet)
 =======================================

 State:              1               2               3               4               5               6               7
 2 aba000       0.79249870     -0.00007683      0.00000054     -0.18030198      0.00002450     -0.00000000     -0.00000000
 2 baa000      -0.24010325      0.00002768     -0.00000016      0.77647500     -0.00003352     -0.00000000     -0.00000000
 2 02a000       0.00000048     -0.00000069     -0.70386238      0.00000000      0.00000000      0.00000010      0.69601672
 2 0a2000       0.00001597      0.00001966     -0.00000000     -0.00002545     -0.70386238      0.00001199     -0.00000000
 2 2a0000      -0.00001597     -0.00001966      0.00000000      0.00002545      0.70386238      0.00001199     -0.00000000
 2 20a000      -0.00000048      0.00000069      0.70386238     -0.00000000      0.00000000      0.00000010      0.69601672
 2 a20000       0.00006726      0.70386238     -0.00000069     -0.00000429      0.00001966      0.69601672     -0.00000010
 2 a02000      -0.00006726     -0.70386238      0.00000069      0.00000429     -0.00001966      0.69601672     -0.00000010
 2 aab000      -0.55239545      0.00004915     -0.00000038     -0.59617302      0.00000902      0.00000000      0.00000000
 0 22a000       0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000002     -0.14509495
 0 2a2000      -0.00000000      0.00000000      0.00000000      0.00000000      0.00000000     -0.00000250      0.00000000
 0 a22000      -0.00000000      0.00000000     -0.00000000     -0.00000000      0.00000000     -0.14509495      0.00000002
 
 Energy:     -331.15450189   -331.15450189   -331.15450189   -331.15450189   -331.15450189   -331.13003256   -331.13003256

 State:              8
 2 aba000      -0.00000000
 2 baa000      -0.00000000
 2 02a000      -0.00000000
 2 0a2000       0.69601672
 2 2a0000       0.69601672
 2 20a000       0.00000000
 2 a20000      -0.00001199
 2 a02000      -0.00001199
 2 aab000       0.00000000
 0 22a000      -0.00000000
 0 2a2000      -0.14509495
 0 a22000       0.00000250
 
 Energy:     -331.13003256
 


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
 CPU TIMES  *         7.13      4.59      0.40      1.89
 REAL TIME  *         9.43 SEC
 DISK USED  *        53.04 MB (local),      835.50 MB (total)
 SF USED    *        58.10 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

         ENERGY     LL
    -331.2176253  -0.0
    -331.1545019   6.0
    -331.1545019   6.0
    -331.1545019   6.0
    -331.1545019   6.0
    -331.1545019   6.0
    -331.1300326   2.0
    -331.1300326   2.0
    -331.1300326   2.0
                                                  


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
     1      -331.21762529

 Number of blocks in overlap matrix:   167   Smallest eigenvalue:  0.83D-06
 Number of N-2 electron functions:     251
 Number of N-1 electron functions:  101369

 Number of internal configurations:                33680
 Number of singly external configurations:       7602383
 Number of doubly external configurations:       1412684
 Total number of contracted configurations:      9048747
 Total number of uncontracted configurations:  353184345

 Diagonal Coupling coefficients finished.               Storage:  10293144 words, CPU-Time:      0.85 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   1763063 words, CPU-time:      0.21 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -331.21762529     0.00000000    -1.06958247  0.45D-01  0.59D-01     2.49
    2     1     1     1.07169491    -0.88974958  -332.10737487    -0.88974958    -0.02409121  0.34D-02  0.96D-03    51.90
    3     1     1     1.05897318    -0.91212185  -332.12974715    -0.02237228    -0.00051854  0.81D-04  0.26D-04   101.39
    4     1     1     1.05813784    -0.91261557  -332.13024086    -0.00049371    -0.00002109  0.28D-05  0.15D-05   150.66
    5     1     1     1.05824137    -0.91263664  -332.13026193    -0.00002107    -0.00000082  0.54D-07  0.11D-06   199.91
    6     1     1     1.05828804    -0.91263754  -332.13026283    -0.00000090    -0.00000004  0.24D-08  0.66D-08   249.19


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   1.3%
 S   1.1%  65.9%
 P   0.3%  27.1%   2.1%

 Initialization:   0.5%
 Other:            1.7%

 Total CPU:      249.2 seconds
 =====================================



 Wavefunction saved on  5302.2

 Reference coefficients greater than 0.0500000
 =============================================
 2222222222///000           0.9684365


 RESULTS FOR STATE 1.2
 =====================

 Coefficient of reference function:   C(0) = 0.97168246 (fixed)   0.97185711 (relaxed)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00080021   -0.00261573   -0.00315920
 Singles      0.01734509   -0.09392881   -0.10362738
 Pairs        0.04098959   -0.81609302   -0.80585096
 Total        1.05913489   -0.91263756   -0.91263754
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -331.21762529
 Nuclear energy                         0.00000000
 Kinetic energy                       234.13865892
 One electron energy                 -585.95594362
 Two electron energy                  253.82568079
 Virial quotient                       -1.41851954
 Correlation energy                    -0.91263754
 !MRCI STATE 1.2 Energy              -332.130262829673

 Properties without orbital relaxation:

 !MRCI STATE 1.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -332.18423155 (Davidson, fixed reference)
 Cluster corrected energies          -332.18388416 (Davidson, relaxed reference)

 Cluster corrected energies          -332.18122895 (Pople, fixed reference)
 Cluster corrected energies          -332.18088494 (Pople, relaxed reference)



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
 CPU TIMES  *       257.92    250.78      4.59      0.40      1.89
 REAL TIME  *       264.62 SEC
 DISK USED  *       123.49 MB (local),        1.64 GB (total)
 SF USED    *       972.21 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =      -332.18388416  AU                              


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
     1      -331.15450189
     2      -331.15450189
     3      -331.15450189
     4      -331.15450189
     5      -331.15450189
     6      -331.13003256
     7      -331.13003256
     8      -331.13003256

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1975D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1412D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1412D-06

 Number of blocks in overlap matrix:   796   Smallest eigenvalue:  0.14D-06
 Number of N-2 electron functions:    1869
 Number of N-1 electron functions:  124768

 Number of internal configurations:                44086
 Number of singly external configurations:       9356224
 Number of doubly external configurations:      10516714
 Total number of contracted configurations:     19917024
 Total number of uncontracted configurations:  466206855

 Diagonal Coupling coefficients finished.               Storage:  27654047 words, CPU-Time:     67.70 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   2140643 words, CPU-time:      1.51 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -331.15450189     0.00000000    -1.06944675  0.50D-01  0.55D-01    82.97
    1     2     2     1.00000000     0.00000000  -331.15450189     0.00000000    -1.06973545  0.50D-01  0.55D-01    82.97
    1     3     3     1.00000000     0.00000000  -331.15450189     0.00000000    -1.07039616  0.49D-01  0.56D-01    82.97
    1     4     4     1.00000000     0.00000000  -331.15450189     0.00000000    -1.06965650  0.49D-01  0.55D-01    82.97
    1     5     5     1.00000000     0.00000000  -331.15450189    -0.00000000    -1.06981950  0.49D-01  0.56D-01    82.97
    1     6     6     1.00000000     0.00000000  -331.13003256     0.00000000    -1.05219315  0.32D-01  0.57D-01    82.97
    1     7     7     1.00000000     0.00000000  -331.13003256     0.00000000    -1.05355069  0.32D-01  0.58D-01    82.97
    1     8     8     1.00000000     0.00000000  -331.13003256     0.00000000    -1.05264869  0.32D-01  0.57D-01    82.97
    2     1     1     1.07307533    -0.89716108  -332.05166297    -0.89716108    -0.02494782  0.34D-02  0.12D-02   886.31
    2     2     2     1.07316826    -0.89708151  -332.05158339    -0.89708151    -0.02509341  0.34D-02  0.12D-02   886.31
    2     3     3     1.07329910    -0.89701261  -332.05151450    -0.89701261    -0.02505835  0.36D-02  0.11D-02   886.31
    2     4     4     1.07311325    -0.89696486  -332.05146674    -0.89696486    -0.02520494  0.35D-02  0.12D-02   886.31
    2     5     5     1.07325580    -0.89674726  -332.05124915    -0.89674726    -0.02531481  0.37D-02  0.11D-02   886.31
    2     6     6     1.06428423    -0.89364064  -332.02367320    -0.89364064    -0.02296021  0.26D-02  0.12D-02   886.31
    2     7     7     1.06383966    -0.89352343  -332.02355599    -0.89352343    -0.02295858  0.26D-02  0.12D-02   886.31
    2     8     8     1.06400579    -0.89350770  -332.02354026    -0.89350770    -0.02299482  0.26D-02  0.12D-02   886.31
    3     1     1     1.06208020    -0.92018956  -332.07469145    -0.02302847    -0.00063203  0.71D-04  0.56D-04  1689.18
    3     2     2     1.06206521    -0.92017567  -332.07467755    -0.02309416    -0.00064791  0.74D-04  0.57D-04  1689.18
    3     3     3     1.06207659    -0.92017406  -332.07467594    -0.02316145    -0.00063957  0.71D-04  0.58D-04  1689.18
    3     4     4     1.06207891    -0.92016650  -332.07466838    -0.02320164    -0.00064567  0.73D-04  0.58D-04  1689.18
    3     5     5     1.06199622    -0.92014460  -332.07464649    -0.02339734    -0.00066649  0.76D-04  0.60D-04  1689.18
    3     6     6     1.05825303    -0.91473752  -332.04477008    -0.02109688    -0.00064524  0.49D-04  0.74D-04  1689.18
    3     7     7     1.05811040    -0.91468978  -332.04472233    -0.02116634    -0.00067095  0.49D-04  0.78D-04  1689.18
    3     8     8     1.05807379    -0.91468492  -332.04471747    -0.02117722    -0.00067447  0.49D-04  0.79D-04  1689.18
    4     1     1     1.06175753    -0.92086656  -332.07536844    -0.00067700    -0.00005231  0.36D-05  0.70D-05  2491.09
    4     2     2     1.06174559    -0.92086525  -332.07536714    -0.00068958    -0.00005380  0.38D-05  0.71D-05  2491.09
    4     3     3     1.06174206    -0.92086288  -332.07536477    -0.00068882    -0.00005472  0.37D-05  0.73D-05  2491.09
    4     4     4     1.06173496    -0.92086237  -332.07536425    -0.00069587    -0.00005524  0.37D-05  0.74D-05  2491.09
    4     5     5     1.06170666    -0.92085998  -332.07536187    -0.00071538    -0.00005737  0.40D-05  0.76D-05  2491.09
    4     6     6     1.05903363    -0.91545500  -332.04548756    -0.00071748    -0.00006710  0.43D-05  0.92D-05  2491.09
    4     7     7     1.05898364    -0.91544568  -332.04547824    -0.00075591    -0.00007340  0.47D-05  0.99D-05  2491.09
    4     8     8     1.05898005    -0.91544548  -332.04547804    -0.00076056    -0.00007373  0.47D-05  0.99D-05  2491.09
    5     1     1     1.06211233    -0.92092994  -332.07543183    -0.00006338    -0.00000570  0.37D-06  0.71D-06  3292.25
    5     2     2     1.06210969    -0.92092971  -332.07543160    -0.00006446    -0.00000586  0.38D-06  0.73D-06  3292.25
    5     3     3     1.06210882    -0.92092948  -332.07543136    -0.00006660    -0.00000604  0.40D-06  0.73D-06  3292.25
    5     4     4     1.06210814    -0.92092941  -332.07543130    -0.00006705    -0.00000607  0.41D-06  0.73D-06  3292.25
    5     5     5     1.06210613    -0.92092904  -332.07543093    -0.00006906    -0.00000632  0.42D-06  0.77D-06  3292.25
    5     6     6     1.05973722    -0.91553774  -332.04557030    -0.00008274    -0.00000723  0.50D-06  0.80D-06  3292.25
    5     7     7     1.05973573    -0.91553667  -332.04556923    -0.00009098    -0.00000804  0.56D-06  0.87D-06  3292.25
    5     8     8     1.05973616    -0.91553666  -332.04556922    -0.00009118    -0.00000804  0.56D-06  0.87D-06  3292.25
    6     1     1     1.06218831    -0.92093678  -332.07543866    -0.00000684    -0.00000055  0.38D-07  0.65D-07  4094.20
    6     2     2     1.06218822    -0.92093675  -332.07543863    -0.00000703    -0.00000057  0.41D-07  0.69D-07  4094.20
    6     3     3     1.06218699    -0.92093671  -332.07543860    -0.00000723    -0.00000058  0.40D-07  0.70D-07  4094.20
    6     4     4     1.06218713    -0.92093669  -332.07543858    -0.00000727    -0.00000058  0.39D-07  0.70D-07  4094.20
    6     5     5     1.06218794    -0.92093664  -332.07543853    -0.00000760    -0.00000062  0.42D-07  0.74D-07  4094.20
    6     6     6     1.05982611    -0.91554607  -332.04557863    -0.00000833    -0.00000064  0.36D-07  0.78D-07  4094.20
    6     7     7     1.05982373    -0.91554594  -332.04557850    -0.00000927    -0.00000073  0.39D-07  0.89D-07  4094.20
    6     8     8     1.05982394    -0.91554593  -332.04557848    -0.00000927    -0.00000073  0.38D-07  0.89D-07  4094.20
    7     1     1     1.06220807    -0.92093738  -332.07543927    -0.00000061    -0.00000006  0.44D-08  0.74D-08  4896.85
    7     2     2     1.06220806    -0.92093738  -332.07543927    -0.00000064    -0.00000006  0.44D-08  0.75D-08  4896.85
    7     3     3     1.06220727    -0.92093736  -332.07543925    -0.00000065    -0.00000006  0.45D-08  0.80D-08  4896.85
    7     4     4     1.06220715    -0.92093734  -332.07543923    -0.00000065    -0.00000006  0.46D-08  0.80D-08  4896.85
    7     5     5     1.06220726    -0.92093734  -332.07543922    -0.00000069    -0.00000007  0.51D-08  0.84D-08  4896.85
    7     6     6     1.05984239    -0.91554679  -332.04557934    -0.00000071    -0.00000007  0.52D-08  0.97D-08  4896.85
    7     7     7     1.05984074    -0.91554676  -332.04557931    -0.00000082    -0.00000009  0.63D-08  0.11D-07  4896.85
    7     8     8     1.05984072    -0.91554674  -332.04557930    -0.00000082    -0.00000009  0.63D-08  0.11D-07  4896.85
    8     1     1     1.06221044    -0.92093745  -332.07543934    -0.00000007    -0.00000001  0.72D-09  0.11D-08  5699.08
    8     2     2     1.06221053    -0.92093745  -332.07543933    -0.00000006    -0.00000001  0.65D-09  0.99D-09  5699.08
    8     3     3     1.06221028    -0.92093743  -332.07543932    -0.00000007    -0.00000001  0.74D-09  0.11D-08  5699.08
    8     4     4     1.06221025    -0.92093741  -332.07543930    -0.00000007    -0.00000001  0.74D-09  0.11D-08  5699.08
    8     5     5     1.06221013    -0.92093741  -332.07543930    -0.00000007    -0.00000001  0.81D-09  0.12D-08  5699.08
    8     6     6     1.05984837    -0.91554687  -332.04557943    -0.00000008    -0.00000001  0.95D-09  0.13D-08  5699.08
    8     7     7     1.05984765    -0.91554686  -332.04557941    -0.00000010    -0.00000001  0.12D-08  0.16D-08  5699.08
    8     8     8     1.05984761    -0.91554684  -332.04557940    -0.00000010    -0.00000001  0.12D-08  0.15D-08  5699.08


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.6%
 S   0.5%  35.5%
 P   0.2%  38.1%  17.7%

 Initialization:   1.2%
 Other:            6.1%

 Total CPU:     5699.1 seconds
 =====================================



 Wavefunction saved on  5102.2

 Reference coefficients greater than 0.0500000
 =============================================
 2222222222//\000           0.2345240  -0.0174569   0.0254864   0.0078295   0.9366476   0.0000000  -0.0000000  -0.0000000
 2222222222/\/000           0.9359143  -0.0457190  -0.0010012  -0.0020705  -0.2351479  -0.0000000  -0.0000000   0.0000000
 2222222222/02000           0.0006323   0.0094696  -0.0153602   0.6828683  -0.0052720  -0.0123704  -0.0066897   0.6767937
 2222222222/20000          -0.0006323  -0.0094696   0.0153602  -0.6828682   0.0052720  -0.0123704  -0.0066897   0.6767939
 22222222222/0000           0.0037175   0.0002973  -0.6827160  -0.0152271   0.0177789   0.0003065   0.6769067   0.0066964
 22222222220/2000          -0.0037175  -0.0002973   0.6827158   0.0152271  -0.0177789   0.0003065   0.6769067   0.0066965
 222222222202/000           0.0343521   0.6821844   0.0008033  -0.0094416   0.0041700   0.6768265  -0.0004288   0.0123667
 222222222220/000          -0.0343521  -0.6821843  -0.0008033   0.0094416  -0.0041700   0.6768266  -0.0004288   0.0123667
 22222202222/2000          -0.0000000   0.0000000   0.0000000   0.0000000  -0.0000000  -0.0000602  -0.1330477  -0.0013162
 222222022222/000          -0.0000000  -0.0000000   0.0000000  -0.0000000   0.0000000  -0.1330320   0.0000843  -0.0024307
 2222220222/22000           0.0000000   0.0000000   0.0000000  -0.0000000  -0.0000000   0.0024314   0.0013149  -0.1330254

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.529226    0.000898    0.048770    0.811229   -0.005278   -0.000000    0.000000    0.000000
 2          -0.021759    0.013444    0.968496   -0.044047   -0.000422   -0.000000    0.000000   -0.000000
 3          -0.018125   -0.021807    0.001140    0.018086    0.969251   -0.000000   -0.000000   -0.000000
 4          -0.006866    0.969467   -0.013404    0.004353    0.021618    0.000000    0.000000    0.000000
 5          -0.812189   -0.007485    0.005920    0.529340   -0.025241    0.000000   -0.000000    0.000000
 6          -0.000000   -0.000000   -0.000000    0.000000    0.000000   -0.017743    0.970796    0.000440
 7           0.000000   -0.000000    0.000000   -0.000000    0.000000   -0.009595   -0.000615    0.970911
 8           0.000000   -0.000000    0.000000   -0.000000    0.000000    0.970749    0.017738    0.009605

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.969835   -0.000000    0.000000    0.000000    0.000000    0.000000   -0.000000   -0.000000
 2          -0.000000    0.969835   -0.000000    0.000000   -0.000000    0.000000    0.000000   -0.000000
 3           0.000000   -0.000000    0.969835   -0.000000    0.000000   -0.000000   -0.000000    0.000000
 4           0.000000    0.000000   -0.000000    0.969835    0.000000    0.000000   -0.000000   -0.000000
 5           0.000000   -0.000000    0.000000    0.000000    0.969835    0.000000    0.000000    0.000000
 6           0.000000    0.000000   -0.000000    0.000000    0.000000    0.970958    0.000000   -0.000000
 7          -0.000000    0.000000   -0.000000   -0.000000    0.000000    0.000000    0.970959   -0.000000
 8          -0.000000   -0.000000    0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.970959


 RESULTS FOR STATE 1.2
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.81122870 (fixed)   0.96999141 (relaxed)   0.96983459 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00090784   -0.00307529   -0.77288167
 Singles      0.02009126   -0.10006521   -0.11152098
 Pairs        0.04217566   -0.00000002   -0.03653480
 Total        1.06317477   -0.10314052   -0.92093745
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -331.15450189
 Nuclear energy                         0.00000000
 Kinetic energy                       234.10987329
 One electron energy                 -585.70165844
 Two electron energy                  253.62621910
 Virial quotient                       -1.41845978
 Correlation energy                    -0.92093745
 !MRCI STATE 1.2 Energy              -332.075439337915

 Properties without orbital relaxation:

 !MRCI STATE 1.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -332.13361935 (Davidson, fixed reference)
 Cluster corrected energies          -332.13330278 (Davidson, relaxed reference)
 Cluster corrected energies          -332.13361935 (Davidson, rotated reference)

 Cluster corrected energies          -332.13119267 (Pople, fixed reference)
 Cluster corrected energies          -332.13087310 (Pople, relaxed reference)
 Cluster corrected energies          -332.13119267 (Pople, rotated reference)



 RESULTS FOR STATE 2.2
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.96849603 (fixed)   0.96999138 (relaxed)   0.96983455 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00090784   -0.00307529   -0.77288170
 Singles      0.02009120   -0.10006513   -0.11152092
 Pairs        0.04217580    0.00000000   -0.03653482
 Total        1.06317484   -0.10314042   -0.92093745
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -331.15450189
 Nuclear energy                         0.00000000
 Kinetic energy                       234.10993217
 One electron energy                 -585.70168378
 Two electron energy                  253.62624444
 Virial quotient                       -1.41845942
 Correlation energy                    -0.92093745
 !MRCI STATE 2.2 Energy              -332.075439334444

 Properties without orbital relaxation:

 !MRCI STATE 2.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -332.13361941 (Davidson, fixed reference)
 Cluster corrected energies          -332.13330285 (Davidson, relaxed reference)
 Cluster corrected energies          -332.13361941 (Davidson, rotated reference)

 Cluster corrected energies          -332.13119274 (Pople, fixed reference)
 Cluster corrected energies          -332.13087317 (Pople, relaxed reference)
 Cluster corrected energies          -332.13119274 (Pople, rotated reference)



 RESULTS FOR STATE 3.2
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.96925065 (fixed)   0.96999149 (relaxed)   0.96983466 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00090785   -0.00307530   -0.77288179
 Singles      0.02009125   -0.10006531   -0.11152096
 Pairs        0.04217551    0.00000010   -0.03653468
 Total        1.06317461   -0.10314050   -0.92093743
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -331.15450189
 Nuclear energy                         0.00000000
 Kinetic energy                       234.10986353
 One electron energy                 -585.70165072
 Two electron energy                  253.62621141
 Virial quotient                       -1.41845984
 Correlation energy                    -0.92093743
 !MRCI STATE 3.2 Energy              -332.075439316080

 Properties without orbital relaxation:

 !MRCI STATE 3.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -332.13361918 (Davidson, fixed reference)
 Cluster corrected energies          -332.13330261 (Davidson, relaxed reference)
 Cluster corrected energies          -332.13361918 (Davidson, rotated reference)

 Cluster corrected energies          -332.13119250 (Pople, fixed reference)
 Cluster corrected energies          -332.13087293 (Pople, relaxed reference)
 Cluster corrected energies          -332.13119250 (Pople, rotated reference)



 RESULTS FOR STATE 4.2
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.96946697 (fixed)   0.96999150 (relaxed)   0.96983468 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00090785   -0.00307530   -0.77288164
 Singles      0.02009127   -0.10006538   -0.11152096
 Pairs        0.04217546    0.00000000   -0.03653482
 Total        1.06317458   -0.10314067   -0.92093741
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -331.15450189
 Nuclear energy                         0.00000000
 Kinetic energy                       234.10985770
 One electron energy                 -585.70164636
 Two electron energy                  253.62620706
 Virial quotient                       -1.41845987
 Correlation energy                    -0.92093741
 !MRCI STATE 4.2 Energy              -332.075439298042

 Properties without orbital relaxation:

 !MRCI STATE 4.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -332.13361913 (Davidson, fixed reference)
 Cluster corrected energies          -332.13330256 (Davidson, relaxed reference)
 Cluster corrected energies          -332.13361913 (Davidson, rotated reference)

 Cluster corrected energies          -332.13119245 (Pople, fixed reference)
 Cluster corrected energies          -332.13087288 (Pople, relaxed reference)
 Cluster corrected energies          -332.13119245 (Pople, rotated reference)



 RESULTS FOR STATE 5.2
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.81218851 (fixed)   0.96999156 (relaxed)   0.96983473 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00090785   -0.00307530   -0.77288164
 Singles      0.02009131   -0.10006545   -0.11152100
 Pairs        0.04217529   -0.00000002   -0.03653477
 Total        1.06317446   -0.10314077   -0.92093741
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -331.15450189
 Nuclear energy                         0.00000000
 Kinetic energy                       234.10981503
 One electron energy                 -585.70162502
 Two electron energy                  253.62618573
 Virial quotient                       -1.41846013
 Correlation energy                    -0.92093741
 !MRCI STATE 5.2 Energy              -332.075439296081

 Properties without orbital relaxation:

 !MRCI STATE 5.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -332.13361902 (Davidson, fixed reference)
 Cluster corrected energies          -332.13330244 (Davidson, relaxed reference)
 Cluster corrected energies          -332.13361902 (Davidson, rotated reference)

 Cluster corrected energies          -332.13119234 (Pople, fixed reference)
 Cluster corrected energies          -332.13087276 (Pople, relaxed reference)
 Cluster corrected energies          -332.13119234 (Pople, rotated reference)



 RESULTS FOR STATE 6.2
 =====================

 Maximum overlap with reference state  7

 Coefficient of reference function:   C(0) = 0.97079608 (fixed)   0.97108823 (relaxed)   0.97095831 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00081797   -0.00295972   -0.78188649
 Singles      0.01427761   -0.08656284   -0.09392994
 Pairs        0.04561971   -0.00037396   -0.03973044
 Total        1.06071529   -0.08989652   -0.91554687
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -331.13003256
 Nuclear energy                         0.00000000
 Kinetic energy                       234.11902197
 One electron energy                 -585.58172568
 Two electron energy                  253.53614625
 Virial quotient                       -1.41827681
 Correlation energy                    -0.91554687
 !MRCI STATE 6.2 Energy              -332.045579425978

 Properties without orbital relaxation:

 !MRCI STATE 6.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -332.10116712 (Davidson, fixed reference)
 Cluster corrected energies          -332.10090729 (Davidson, relaxed reference)
 Cluster corrected energies          -332.10116712 (Davidson, rotated reference)

 Cluster corrected energies          -332.09873734 (Pople, fixed reference)
 Cluster corrected energies          -332.09847612 (Pople, relaxed reference)
 Cluster corrected energies          -332.09873734 (Pople, rotated reference)



 RESULTS FOR STATE 7.2
 =====================

 Maximum overlap with reference state  8

 Coefficient of reference function:   C(0) = 0.97091103 (fixed)   0.97108856 (relaxed)   0.97095864 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00081798   -0.00295973   -0.00353453
 Singles      0.01427767   -0.08656309   -0.09392999
 Pairs        0.04561893   -0.82598354   -0.81808234
 Total        1.06071458   -0.91550636   -0.91554686
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -331.13003256
 Nuclear energy                         0.00000000
 Kinetic energy                       234.11887734
 One electron energy                 -585.58166179
 Two electron energy                  253.53608237
 Virial quotient                       -1.41827769
 Correlation energy                    -0.91554686
 !MRCI STATE 7.2 Energy              -332.045579412971

 Properties without orbital relaxation:

 !MRCI STATE 7.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -332.10116646 (Davidson, fixed reference)
 Cluster corrected energies          -332.10090662 (Davidson, relaxed reference)
 Cluster corrected energies          -332.10116646 (Davidson, rotated reference)

 Cluster corrected energies          -332.09873667 (Pople, fixed reference)
 Cluster corrected energies          -332.09847544 (Pople, relaxed reference)
 Cluster corrected energies          -332.09873667 (Pople, rotated reference)



 RESULTS FOR STATE 8.2
 =====================

 Maximum overlap with reference state  6

 Coefficient of reference function:   C(0) = 0.97074910 (fixed)   0.97108858 (relaxed)   0.97095866 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00081798   -0.00295973   -0.77453583
 Singles      0.01427764   -0.08656310   -0.09392997
 Pairs        0.04561892   -0.00817122   -0.04708104
 Total        1.06071454   -0.09769405   -0.91554684
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -331.13003256
 Nuclear energy                         0.00000000
 Kinetic energy                       234.11887629
 One electron energy                 -585.58165937
 Two electron energy                  253.53607997
 Virial quotient                       -1.41827769
 Correlation energy                    -0.91554684
 !MRCI STATE 8.2 Energy              -332.045579398541

 Properties without orbital relaxation:

 !MRCI STATE 8.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -332.10116640 (Davidson, fixed reference)
 Cluster corrected energies          -332.10090657 (Davidson, relaxed reference)
 Cluster corrected energies          -332.10116640 (Davidson, rotated reference)

 Cluster corrected energies          -332.09873662 (Pople, fixed reference)
 Cluster corrected energies          -332.09847539 (Pople, relaxed reference)
 Cluster corrected energies          -332.09873662 (Pople, rotated reference)



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
 CPU TIMES  *      6523.43   6265.51    250.78      4.59      0.40      1.89
 REAL TIME  *      6657.07 SEC
 DISK USED  *         1.32 GB (local),       16.00 GB (total)
 SF USED    *        12.49 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(2)     =      -332.13361935  AU                              
 SETTING HLSDIAG(3)     =      -332.13361941  AU                              
 SETTING HLSDIAG(4)     =      -332.13361918  AU                              
 SETTING HLSDIAG(5)     =      -332.13361913  AU                              
 SETTING HLSDIAG(6)     =      -332.13361902  AU                              
 SETTING HLSDIAG(7)     =      -332.10116712  AU                              
 SETTING HLSDIAG(8)     =      -332.10116646  AU                              
 SETTING HLSDIAG(9)     =      -332.10116640  AU                              


         HLSDIAG
    -332.1838842
    -332.1336193
    -332.1336194
    -332.1336192
    -332.1336191
    -332.1336190
    -332.1011671
    -332.1011665
    -332.1011664
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Diagonal elements of H will be replaced by values from variable HLSDIAG


   ******************************
   *** Spin-orbit calculation ***
   ******************************


   Spin-orbit matrix elements
   ==========================

 Wavefunction restored from record  5302.2  Symmetry=2  S= 1.5  NSTATE=   1

 Original energies:   -332.130263
 Replaced energies:   -332.183884

 Wavefunction restored from record  5102.2  Symmetry=2  S= 0.5  NSTATE=   8

 Original energies:   -332.075439   -332.075439   -332.075439   -332.075439   -332.075439   -332.045579   -332.045579   -332.045579
 Replaced energies:   -332.133619   -332.133619   -332.133619   -332.133619   -332.133619   -332.101167   -332.101166   -332.101166



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=  -332.18388416

 Wigner-Eckart theorem used for 23 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.2  1.5  1.5       0.00       0.00       0.00       0.00      -0.00       0.00       0.00       0.00      -0.00      -0.41
                            0.00       0.00       0.00       0.00      -0.00      -0.00       0.00      -0.00       0.00    -910.75

    2   1.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00       0.00     -19.22

    3   1.2  1.5 -0.5       0.00       0.00       0.00       0.00      -0.00       0.00       0.00       0.00      -0.00      -0.24
                           -0.00      -0.00       0.00       0.00       0.00       0.00      -0.00       0.00      -0.00     525.82

    4   1.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    5   1.2  0.5  0.5      -0.00       0.00      -0.00       0.00   11031.85       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.00       0.00      -0.10      -0.29      -4.19       0.03      -9.62

    6   2.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00   11031.84       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.00       0.10      -0.00      -7.63      -0.05      -0.01       1.26

    7   3.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00   11031.89       0.00       0.00       0.00
                           -0.00       0.00       0.00      -0.00       0.29       7.63      -0.00       0.25       0.37    -649.73

    8   4.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00   11031.90       0.00       0.00
                            0.00       0.00      -0.00      -0.00       4.19       0.05      -0.25       0.00     -14.67     -14.52

    9   5.2  0.5  0.5      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00   11031.92       0.00
                           -0.00      -0.00       0.00      -0.00      -0.03       0.01      -0.37      14.67      -0.00      13.16

   10   6.2  0.5  0.5      -0.41       0.00      -0.24       0.00       0.00       0.00       0.00       0.00       0.00   18154.29
                          910.75      19.22    -525.82      -0.00       9.62      -1.26     649.73      14.52     -13.16      -0.00

   11   7.2  0.5  0.5    -910.85       0.00    -525.88       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.58      10.39       0.33      -0.00     -25.56    -649.51      -1.08       8.99      -1.93       1.71

   12   8.2  0.5  0.5      -9.01       0.00      -5.20       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           16.64   -1051.59      -9.61      -0.00    -721.10      31.11       2.64      -1.29    -205.96       0.02

   13   1.2  0.5 -0.5       0.00      -0.00       0.00      -0.00       0.00       0.01     -10.61       0.15       0.21       0.24
                           -0.00       0.00       0.00      -0.00       0.00      14.80       0.02      -0.16       0.28    -182.25

   14   2.2  0.5 -0.5       0.00       0.00       0.00       0.00      -0.01      -0.00       0.43       7.63      -0.08       2.84
                           -0.00       0.00       0.00      -0.00     -14.80       0.00       0.12       0.05       3.70      13.56

   15   3.2  0.5 -0.5       0.00       0.00       0.00       0.00      10.61      -0.43       0.00       0.09      10.96      14.62
                           -0.00      -0.00       0.00       0.00      -0.02      -0.12       0.00      -7.63       0.07      -7.93

   16   4.2  0.5 -0.5       0.00       0.00       0.00       0.00      -0.15      -7.63      -0.09       0.00       0.20    -649.88
                           -0.00       0.00       0.00      -0.00       0.16      -0.05       7.63      -0.00      -0.25      -5.52

   17   5.2  0.5 -0.5       0.00      -0.00       0.00      -0.00      -0.21       0.08     -10.96      -0.20       0.00       4.85
                           -0.00      -0.00      -0.00       0.00      -0.28      -3.70      -0.07       0.25      -0.00    -727.95

   18   6.2  0.5 -0.5       0.00      -0.24       0.00      -0.41      -0.24      -2.84     -14.62     649.88      -4.85       0.00
                           -0.00     525.82      19.22    -910.75     182.25     -13.56       7.93       5.52     727.95      -0.00

   19   7.2  0.5 -0.5       0.00    -525.88       0.00    -910.85    -538.95      17.56      10.58       4.11     522.04      -0.02
                           -0.00      -0.33      10.39       0.58      -0.68      -9.00       8.18    -649.93       4.72       0.03

   20   8.2  0.5 -0.5       0.00      -5.20       0.00      -9.01      27.37     649.43       0.60       2.93       9.04       1.71
                           -0.00       9.61   -1051.59     -16.64      -0.21      -0.62     650.04       8.17      -3.57       0.00


   Nr   State  S   Sz       11         12         13         14         15         16         17         18         19         20

    1   1.2  1.5  1.5    -910.85      -9.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.58     -16.64       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    2   1.2  1.5  0.5       0.00       0.00      -0.00       0.00       0.00       0.00      -0.00      -0.24    -525.88      -5.20
                          -10.39    1051.59      -0.00      -0.00       0.00      -0.00       0.00    -525.82       0.33      -9.61

    3   1.2  1.5 -0.5    -525.88      -5.20       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.33       9.61      -0.00      -0.00      -0.00      -0.00       0.00     -19.22     -10.39    1051.59

    4   1.2  1.5 -1.5       0.00       0.00      -0.00       0.00       0.00       0.00      -0.00      -0.41    -910.85      -9.01
                            0.00       0.00       0.00       0.00      -0.00       0.00      -0.00     910.75      -0.58      16.64

    5   1.2  0.5  0.5       0.00       0.00       0.00      -0.01      10.61      -0.15      -0.21      -0.24    -538.95      27.37
                           25.56     721.10      -0.00      14.80       0.02      -0.16       0.28    -182.25       0.68       0.21

    6   2.2  0.5  0.5       0.00       0.00       0.01      -0.00      -0.43      -7.63       0.08      -2.84      17.56     649.43
                          649.51     -31.11     -14.80      -0.00       0.12       0.05       3.70      13.56       9.00       0.62

    7   3.2  0.5  0.5       0.00       0.00     -10.61       0.43       0.00      -0.09     -10.96     -14.62      10.58       0.60
                            1.08      -2.64      -0.02      -0.12      -0.00      -7.63       0.07      -7.93      -8.18    -650.04

    8   4.2  0.5  0.5       0.00       0.00       0.15       7.63       0.09       0.00      -0.20     649.88       4.11       2.93
                           -8.99       1.29       0.16      -0.05       7.63       0.00      -0.25      -5.52     649.93      -8.17

    9   5.2  0.5  0.5       0.00       0.00       0.21      -0.08      10.96       0.20       0.00      -4.85     522.04       9.04
                            1.93     205.96      -0.28      -3.70      -0.07       0.25       0.00    -727.95      -4.72       3.57

   10   6.2  0.5  0.5       0.00       0.00       0.24       2.84      14.62    -649.88       4.85       0.00      -0.02       1.71
                           -1.71      -0.02     182.25     -13.56       7.93       5.52     727.95       0.00      -0.03      -0.00

   11   7.2  0.5  0.5   18154.44       0.00     538.95     -17.56     -10.58      -4.11    -522.04       0.02      -0.00      -0.00
                           -0.00       0.03      -0.68      -9.00       8.18    -649.93       4.72       0.03       0.00      -1.71

   12   8.2  0.5  0.5       0.00   18154.45     -27.37    -649.43      -0.60      -2.93      -9.04      -1.71       0.00      -0.00
                           -0.03      -0.00      -0.21      -0.62     650.04       8.17      -3.57       0.00       1.71       0.00

   13   1.2  0.5 -0.5     538.95     -27.37   11031.85       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.68       0.21      -0.00       0.10       0.29       4.19      -0.03       9.62     -25.56    -721.10

   14   2.2  0.5 -0.5     -17.56    -649.43       0.00   11031.84       0.00       0.00       0.00       0.00       0.00       0.00
                            9.00       0.62      -0.10       0.00       7.63       0.05       0.01      -1.26    -649.51      31.11

   15   3.2  0.5 -0.5     -10.58      -0.60       0.00       0.00   11031.89       0.00       0.00       0.00       0.00       0.00
                           -8.18    -650.04      -0.29      -7.63       0.00      -0.25      -0.37     649.73      -1.08       2.64

   16   4.2  0.5 -0.5      -4.11      -2.93       0.00       0.00       0.00   11031.90       0.00       0.00       0.00       0.00
                          649.93      -8.17      -4.19      -0.05       0.25      -0.00      14.67      14.52       8.99      -1.29

   17   5.2  0.5 -0.5    -522.04      -9.04       0.00       0.00       0.00       0.00   11031.92       0.00       0.00       0.00
                           -4.72       3.57       0.03      -0.01       0.37     -14.67       0.00     -13.16      -1.93    -205.96

   18   6.2  0.5 -0.5       0.02      -1.71       0.00       0.00       0.00       0.00       0.00   18154.29       0.00       0.00
                           -0.03      -0.00      -9.62       1.26    -649.73     -14.52      13.16       0.00       1.71       0.02

   19   7.2  0.5 -0.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   18154.44       0.00
                           -0.00      -1.71      25.56     649.51       1.08      -8.99       1.93      -1.71       0.00      -0.03

   20   8.2  0.5 -0.5      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   18154.45
                            1.71      -0.00     721.10     -31.11      -2.64       1.29     205.96      -0.02       0.03       0.00


 No symmetry adaption


 Spin-orbit eigenstates   (energies)
 ======================

     Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
              (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1  -332.18430288    -0.00041872      -91.90      0.00000000        0.00      0.0000
     2  -332.18430288    -0.00041872      -91.90      0.00000000        0.00      0.0000
     3  -332.18430288    -0.00041872      -91.90      0.00000000        0.00      0.0000
     4  -332.18430288    -0.00041872      -91.90      0.00000000        0.00      0.0000
     5  -332.13499365     0.04889051    10730.23      0.04930923    10822.13      1.3418
     6  -332.13499365     0.04889051    10730.23      0.04930923    10822.13      1.3418
     7  -332.13499344     0.04889072    10730.27      0.04930944    10822.17      1.3418
     8  -332.13499344     0.04889072    10730.27      0.04930944    10822.17      1.3418
     9  -332.13354983     0.05033433    11047.11      0.05075305    11139.01      1.3811
    10  -332.13354983     0.05033433    11047.11      0.05075305    11139.01      1.3811
    11  -332.13354965     0.05033451    11047.15      0.05075323    11139.05      1.3811
    12  -332.13354965     0.05033451    11047.15      0.05075323    11139.05      1.3811
    13  -332.13354951     0.05033464    11047.18      0.05075336    11139.08      1.3811
    14  -332.13354951     0.05033464    11047.18      0.05075336    11139.08      1.3811
    15  -332.10118226     0.08270190    18150.97      0.08312062    18242.87      2.2618
    16  -332.10118226     0.08270190    18150.97      0.08312062    18242.87      2.2618
    17  -332.09947036     0.08441379    18526.69      0.08483251    18618.58      2.3084
    18  -332.09947036     0.08441379    18526.69      0.08483251    18618.58      2.3084
    19  -332.09946993     0.08441423    18526.78      0.08483295    18618.68      2.3084
    20  -332.09946993     0.08441423    18526.78      0.08483295    18618.68      2.3084


 Eigenvectors of spin-orbit matrix
 =================================

  Basis states          Eigenvectors (columnwise)

   Nr   State  S   Sz        1             2             3             4             5             6             7             8

    1    1.2  1.5  1.5   0.876093868  -0.020913851  -0.031229047   0.475286340   0.007573300  -0.000316845  -0.021287688  -0.000529503
                         0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000

    2    1.2  1.5  0.5   0.013565106  -0.475983926   0.876205342   0.011622664  -0.000584427   0.003273198  -0.000246900  -0.000391894
                         0.000556835  -0.011284370  -0.010110011  -0.002187241  -0.000613091  -0.021023915   0.000282867  -0.007560636

    3    1.2  1.5 -0.5  -0.476117405  -0.013574729  -0.011645295   0.876263325   0.021277184  -0.000516433   0.007570779   0.000270063
                        -0.000491425   0.000221164  -0.002063364   0.000779999  -0.000017303  -0.000671366   0.000010325  -0.000260843

    4    1.2  1.5 -1.5   0.020907453   0.875825867   0.475259408   0.031227277   0.000048488   0.001158960  -0.000026688   0.001072939
                         0.000517255   0.021668122  -0.005060634  -0.000332513  -0.000313113  -0.007484096  -0.000528830   0.021260632

    5    1.2  0.5  0.5   0.000083367  -0.001281934   0.005740754   0.000133481   0.012894418  -0.094054130   0.004145513   0.001955832
                        -0.000003771  -0.000027113  -0.000060579  -0.000309152   0.049226778   0.610354773  -0.009130520   0.039374245

    6    2.2  0.5  0.5  -0.000009654   0.000102096  -0.000292368   0.000000385  -0.000437162   0.023559749  -0.000594897  -0.002208029
                        -0.000153631   0.000061636   0.000115922  -0.005881126   0.608573509  -0.046709338  -0.111900492  -0.006146058

    7    3.2  0.5  0.5   0.005018991  -0.000150673  -0.000033955  -0.003080953   0.401960758  -0.012894787   0.472026856   0.027654108
                         0.000005081   0.000111559   0.000073827  -0.000006876   0.000282315  -0.014401646  -0.000305049   0.009335114

    8    4.2  0.5  0.5   0.000114252   0.000080085  -0.000041816  -0.000072001   0.017602253   0.205170042   0.025069134  -0.583404676
                        -0.000121337  -0.005175410  -0.002808501  -0.000103151  -0.007143874   0.031303193   0.000689916   0.034521487

    9    5.2  0.5  0.5  -0.000227579  -0.005745891  -0.001279996  -0.000078359  -0.004851138   0.004688623  -0.011257788   0.035474086
                        -0.000002075  -0.000100567   0.000034699  -0.000036062   0.000070737  -0.039341670  -0.016781220   0.618313765

   10    6.2  0.5  0.5   0.000028633  -0.000019108   0.000048455  -0.000002633  -0.000035583   0.000331908   0.000045060   0.000053796
                        -0.058064949   0.001166171   0.000303282   0.001532210  -0.027816169   0.000297821  -0.151134602  -0.004084766

   11    7.2  0.5  0.5   0.030325985  -0.001456740  -0.001920229   0.049491611  -0.116913183   0.005036634   0.099613504   0.002708950
                         0.000014655   0.000280008  -0.000565233   0.000015047   0.000037131   0.002502940   0.000044021   0.000863157

   12    8.2  0.5  0.5   0.000267837   0.000642679   0.000570914   0.000616577  -0.005326844  -0.142960123   0.002909643  -0.051403097
                        -0.000270847  -0.027706732   0.051047669   0.000705290   0.003467548  -0.022235867  -0.001082420   0.002599710

   13    1.2  0.5 -0.5   0.001282213   0.000083248   0.000136765  -0.005741074   0.617558838  -0.046673681   0.039422779   0.008909973
                         0.000004601   0.000005832   0.000307713   0.000000549   0.000457784  -0.020275829  -0.000031190  -0.004600439

   14    2.2  0.5 -0.5  -0.000103589  -0.000013451   0.000063005   0.000293586  -0.049764562  -0.601472125  -0.006249535   0.111788252
                         0.000059092   0.000153345   0.005880788   0.000112803   0.016134200  -0.092699463  -0.001895450  -0.005045854

   15    3.2  0.5 -0.5   0.000147868   0.005017582  -0.003080705   0.000034739  -0.012258691   0.061234037   0.010717068  -0.023486378
                         0.000115251   0.000119054   0.000039681   0.000073461  -0.014946820  -0.397269334   0.027148453  -0.471442293

   16    4.2  0.5 -0.5   0.000047942   0.000111216  -0.000070898   0.000011910  -0.000463190   0.009753443   0.005072920  -0.001952571
                        -0.005175808   0.000124125   0.000103912  -0.002808787   0.207543782  -0.016301675  -0.584403126  -0.025002499

   17    5.2  0.5 -0.5   0.005746621  -0.000227560  -0.000077970   0.001280293  -0.039595782  -0.000812285   0.619315860   0.017327305
                         0.000041575  -0.000003554   0.000036895   0.000021068  -0.001387154   0.004783172   0.004264824   0.010397675

   18    6.2  0.5 -0.5  -0.000009740  -0.001407476  -0.000018947  -0.000045223   0.000243521   0.027483082  -0.004076863   0.150940242
                         0.001166287   0.058047895  -0.001532094   0.000303780   0.000373575   0.004291940   0.000259608  -0.007662471

   19    7.2  0.5 -0.5   0.001449369   0.030317070   0.049488646   0.001914102   0.001702690  -0.017928201   0.000998596  -0.005064672
                         0.000315952   0.000735391  -0.000542010  -0.000585647   0.005360339   0.115530400   0.002662003  -0.099484678

   20    8.2  0.5 -0.5   0.000042779   0.000261057   0.000609032  -0.000027350  -0.000096421  -0.004241884   0.000005593   0.000934392
                        -0.027714151   0.000277389  -0.000711815   0.051050854  -0.144679029   0.004733452  -0.051468795  -0.002960501


   Nr   State  S   Sz        9            10            11            12            13            14            15            16

    1    1.2  1.5  1.5  -0.000000638  -0.000000257   0.000000925  -0.000000082  -0.000000262  -0.000000851   0.000000774   0.000010814
                        -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000

    2    1.2  1.5  0.5  -0.000000117   0.000000324   0.000000099   0.000001024  -0.000000238   0.000000043  -0.000007184   0.000000743
                        -0.000000030  -0.000000060  -0.000000005  -0.000000344   0.000000166  -0.000000028   0.000000125  -0.000000028

    3    1.2  1.5 -0.5  -0.000000330  -0.000000112   0.000001080  -0.000000096   0.000000052   0.000000290  -0.000000744  -0.000007185
                        -0.000000015   0.000000045   0.000000000   0.000000027  -0.000000001   0.000000007  -0.000000016  -0.000000006

    4    1.2  1.5 -1.5  -0.000000254   0.000000633   0.000000078   0.000000877   0.000000710  -0.000000219   0.000010813  -0.000000774
                         0.000000035  -0.000000086  -0.000000026  -0.000000295  -0.000000469   0.000000145  -0.000000180   0.000000013

    5    1.2  0.5  0.5   0.236368671  -0.630233581   0.034093843   0.350995014  -0.005138187  -0.002026580  -0.000007144   0.000000794
                        -0.014925117   0.090368259  -0.024011197  -0.116352268   0.005149627   0.002930789   0.000000133   0.000000032

    6    2.2  0.5  0.5  -0.005310820   0.018857118  -0.001049167  -0.007447616  -0.000072544   0.000992126   0.000000463  -0.000000074
                         0.679556062   0.245802546  -0.276066987   0.025817305   0.007886654   0.018846206   0.000000185   0.000001502

    7    3.2  0.5  0.5   0.008752561   0.009130605   0.728372175  -0.063523640  -0.067513862  -0.246076398   0.000001261   0.000021174
                        -0.001463670   0.004980392  -0.000513958   0.001904163   0.010795208  -0.005357771   0.000000478  -0.000000022

    8    4.2  0.5  0.5  -0.005514482   0.014526070   0.019653742   0.155376305  -0.320682150   0.088238278  -0.000000471   0.000000509
                        -0.038756379   0.099747714   0.029592589   0.456238312  -0.472829611   0.143381331  -0.000019648   0.000001385

    9    5.2  0.5  0.5  -0.024055594   0.058297618   0.007468223   0.120834926   0.600723299  -0.193637460  -0.000022432   0.000001166
                         0.004559400  -0.008312692  -0.003315862  -0.042419787  -0.408335226   0.120034871   0.000000529  -0.000000038

   10    6.2  0.5  0.5  -0.000000047   0.000000169  -0.000000002   0.000000140  -0.000000012   0.000000026  -0.000430907  -0.000227782
                        -0.000002745  -0.000001131   0.000001757  -0.000000023  -0.000001768  -0.000006092   0.040381098   0.576086390

   11    7.2  0.5  0.5   0.000005019   0.000001967  -0.000009212   0.000000836   0.000001383   0.000004141   0.029935361   0.576472438
                         0.000000047  -0.000000137   0.000000005  -0.000000021  -0.000000003  -0.000000021   0.006305462  -0.000191657

   12    8.2  0.5  0.5  -0.000000160  -0.000000394  -0.000000123  -0.000002360   0.000001195  -0.000000162  -0.009763662   0.006817792
                         0.000000782  -0.000002287  -0.000000650  -0.000007050   0.000001663  -0.000000428  -0.575731831   0.040351619

   13    1.2  0.5 -0.5  -0.636664780  -0.236216257  -0.369774350   0.039966254   0.003307154  -0.007126499   0.000000794   0.000007146
                        -0.004329849   0.017169373   0.001509952   0.011900683   0.001326379  -0.001460356  -0.000000046   0.000000015

   14    2.2  0.5 -0.5  -0.014548951   0.097139198   0.015283235   0.086940611   0.009569781  -0.004411493  -0.000000099  -0.000000460
                        -0.246095125   0.672598411   0.022100293   0.262021778   0.016266010  -0.006537836  -0.000001500   0.000000192

   15    3.2  0.5 -0.5   0.008373411  -0.008870087   0.060821438   0.690597435   0.202284001  -0.062265493   0.000021172  -0.000001253
                        -0.006169136  -0.000266870  -0.018429091  -0.231519916  -0.140226539   0.028242989  -0.000000330   0.000000499

   16    4.2  0.5 -0.5   0.000906632   0.000223920  -0.001958493   0.009203970   0.005506982  -0.006609321   0.000000486   0.000000145
                        -0.100795790  -0.039146089   0.481966138  -0.034311483   0.168267267   0.571280316  -0.000001393  -0.000019653

   17    5.2  0.5 -0.5   0.058886225   0.024451156  -0.128052943   0.008135424   0.227725216   0.726307275   0.000001167   0.000022438
                         0.000354429   0.001265178  -0.001720948   0.000764310  -0.006712863   0.009158631   0.000000019   0.000000156

   18    6.2  0.5 -0.5   0.000000320  -0.000000324  -0.000000140  -0.000000562  -0.000003382   0.000000965  -0.009802297   0.001101981
                         0.000001097  -0.000002726   0.000000023  -0.000001665  -0.000005067   0.000001481  -0.576003034   0.040368359

   19    7.2  0.5 -0.5   0.000001968  -0.000004966  -0.000000800  -0.000008734  -0.000003466   0.000001155   0.576396001  -0.029826430
                        -0.000000131   0.000000725   0.000000246   0.000002930   0.000002267  -0.000000761  -0.009389332   0.006802116

   20    8.2  0.5 -0.5  -0.000000081   0.000000264  -0.000000008   0.000000091  -0.000000101   0.000000079   0.006146207   0.000193660
                         0.000002319   0.000000753  -0.000007435   0.000000656  -0.000000446  -0.000002046  -0.040459358  -0.575814582


   Nr   State  S   Sz       17            18            19            20

    1    1.2  1.5  1.5   0.059957559  -0.000200286   0.001110606  -0.032290897
                        -0.000000000   0.000000000  -0.000000000   0.000000000

    2    1.2  1.5  0.5   0.001362017   0.030424048  -0.056737102   0.000388855
                         0.000092260   0.010791556  -0.019374088  -0.000561976

    3    1.2  1.5 -0.5  -0.032281258   0.001314196  -0.000185576  -0.059953720
                        -0.000026504   0.000369446  -0.000657714  -0.000074126

    4    1.2  1.5 -1.5  -0.000188708  -0.056491576  -0.030545487  -0.001050574
                        -0.000067110  -0.020090066  -0.010472593  -0.000360192

    5    1.2  0.5  0.5   0.001652841   0.024155966  -0.110630117  -0.000198426
                        -0.000055303   0.008543630  -0.037762609   0.004898064

    6    2.2  0.5  0.5  -0.000203453  -0.001807142   0.004165284  -0.000168312
                        -0.003554496  -0.001111711   0.001903120   0.119624681

    7    3.2  0.5  0.5   0.101871004   0.001597809   0.001699997   0.062947741
                         0.000033452  -0.001739624  -0.000196106   0.000214713

    8    4.2  0.5  0.5   0.002161731  -0.034454762  -0.018154010   0.000787275
                         0.000383134   0.099656344   0.053806756   0.000197895

    9    5.2  0.5  0.5  -0.001675843   0.110505047   0.024409167   0.000330256
                         0.000132596   0.038403681   0.007926199   0.001051763

   10    6.2  0.5  0.5  -0.000365575  -0.000149466   0.000291662  -0.000006515
                         0.799320789  -0.003223268   0.000208505   0.023697354

   11    7.2  0.5  0.5  -0.420299802  -0.006934471  -0.007953388   0.680414730
                        -0.000192644   0.001368009  -0.002730371   0.000465349

   12    8.2  0.5  0.5  -0.003077324   0.126714002  -0.227630434   0.000124949
                        -0.001387604  -0.357484287   0.666378924  -0.004129336

   13    1.2  0.5 -0.5   0.025622302  -0.001538764   0.001400841   0.116897444
                         0.000044229  -0.000605926  -0.004697664   0.000158152

   14    2.2  0.5 -0.5  -0.002075179   0.001382702   0.038637496  -0.004557360
                         0.000441925  -0.003280849  -0.113213235   0.000449365

   15    3.2  0.5 -0.5   0.000922545  -0.095993327   0.059614884  -0.001544506
                         0.002174442  -0.034102547   0.020212122  -0.000736850

   16    4.2  0.5 -0.5   0.000928970  -0.002165145   0.000808902  -0.000277885
                        -0.105440289  -0.000363348   0.000068131   0.056786071

   17    5.2  0.5 -0.5   0.116985028   0.001534537   0.000653513  -0.025660413
                         0.000843418   0.000686458  -0.000887804  -0.000418621

   18    6.2  0.5 -0.5  -0.001220851  -0.267485135   0.007679370  -0.000343519
                         0.002986858   0.753236722  -0.022418561   0.000102642

   19    7.2  0.5 -0.5  -0.006075227   0.396067964   0.643787420   0.008409001
                        -0.003612472   0.140648957   0.220232103  -0.000003342

   20    8.2  0.5 -0.5  -0.000393769   0.003364379  -0.001221032  -0.000793800
                         0.379277337  -0.000276267   0.003946658   0.704184532


 Composition of spin-orbit eigenvectors
 ======================================

   Nr   State  S   Sz       1        2        3        4        5        6        7        8        9       10

    1    1.2  1.5  1.5  76.754%   0.044%   0.098%  22.590%   0.006%   0.000%   0.045%   0.000%   0.000%   0.000%
    2    1.2  1.5  0.5   0.018%  22.669%  76.784%   0.014%   0.000%   0.045%   0.000%   0.006%   0.000%   0.000%
    3    1.2  1.5 -0.5  22.669%   0.018%   0.014%  76.784%   0.045%   0.000%   0.006%   0.000%   0.000%   0.000%
    4    1.2  1.5 -1.5   0.044%  76.754%  22.590%   0.098%   0.000%   0.006%   0.000%   0.045%   0.000%   0.000%
    5    1.2  0.5  0.5   0.000%   0.000%   0.003%   0.000%   0.259%  38.138%   0.010%   0.155%   5.609%  40.536%
    6    2.2  0.5  0.5   0.000%   0.000%   0.000%   0.003%  37.036%   0.274%   1.252%   0.004%  46.182%   6.077%
    7    3.2  0.5  0.5   0.003%   0.000%   0.000%   0.001%  16.157%   0.037%  22.281%   0.085%   0.008%   0.011%
    8    4.2  0.5  0.5   0.000%   0.003%   0.001%   0.000%   0.036%   4.307%   0.063%  34.155%   0.153%   1.016%
    9    5.2  0.5  0.5   0.000%   0.003%   0.000%   0.000%   0.002%   0.157%   0.041%  38.357%   0.060%   0.347%
   10    6.2  0.5  0.5   0.337%   0.000%   0.000%   0.000%   0.077%   0.000%   2.284%   0.002%   0.000%   0.000%
   11    7.2  0.5  0.5   0.092%   0.000%   0.000%   0.245%   1.367%   0.003%   0.992%   0.001%   0.000%   0.000%
   12    8.2  0.5  0.5   0.000%   0.077%   0.261%   0.000%   0.004%   2.093%   0.001%   0.265%   0.000%   0.000%
   13    1.2  0.5 -0.5   0.000%   0.000%   0.000%   0.003%  38.138%   0.259%   0.155%   0.010%  40.536%   5.609%
   14    2.2  0.5 -0.5   0.000%   0.000%   0.003%   0.000%   0.274%  37.036%   0.004%   1.252%   6.077%  46.182%
   15    3.2  0.5 -0.5   0.000%   0.003%   0.001%   0.000%   0.037%  16.157%   0.085%  22.281%   0.011%   0.008%
   16    4.2  0.5 -0.5   0.003%   0.000%   0.000%   0.001%   4.307%   0.036%  34.155%   0.063%   1.016%   0.153%
   17    5.2  0.5 -0.5   0.003%   0.000%   0.000%   0.000%   0.157%   0.002%  38.357%   0.041%   0.347%   0.060%
   18    6.2  0.5 -0.5   0.000%   0.337%   0.000%   0.000%   0.000%   0.077%   0.002%   2.284%   0.000%   0.000%
   19    7.2  0.5 -0.5   0.000%   0.092%   0.245%   0.000%   0.003%   1.367%   0.001%   0.992%   0.000%   0.000%
   20    8.2  0.5 -0.5   0.077%   0.000%   0.000%   0.261%   2.093%   0.004%   0.265%   0.001%   0.000%   0.000%

   Nr   State  S   Sz      11       12       13       14       15       16       17       18       19       20

    1    1.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.359%   0.000%   0.000%   0.104%
    2    1.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.104%   0.359%   0.000%
    3    1.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.104%   0.000%   0.000%   0.359%
    4    1.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.359%   0.104%   0.000%
    5    1.2  0.5  0.5   0.174%  13.674%   0.005%   0.001%   0.000%   0.000%   0.000%   0.066%   1.367%   0.002%
    6    2.2  0.5  0.5   7.621%   0.072%   0.006%   0.036%   0.000%   0.000%   0.001%   0.000%   0.002%   1.431%
    7    3.2  0.5  0.5  53.053%   0.404%   0.467%   6.058%   0.000%   0.000%   1.038%   0.001%   0.000%   0.396%
    8    4.2  0.5  0.5   0.126%  23.230%  32.640%   2.834%   0.000%   0.000%   0.000%   1.112%   0.322%   0.000%
    9    5.2  0.5  0.5   0.007%   1.640%  52.761%   5.190%   0.000%   0.000%   0.000%   1.369%   0.066%   0.000%
   10    6.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.163%  33.188%  63.891%   0.001%   0.000%   0.056%
   11    7.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.094%  33.232%  17.665%   0.005%   0.007%  46.296%
   12    8.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%  33.156%   0.167%   0.001%  14.385%  49.588%   0.002%
   13    1.2  0.5 -0.5  13.674%   0.174%   0.001%   0.005%   0.000%   0.000%   0.066%   0.000%   0.002%   1.367%
   14    2.2  0.5 -0.5   0.072%   7.621%   0.036%   0.006%   0.000%   0.000%   0.000%   0.001%   1.431%   0.002%
   15    3.2  0.5 -0.5   0.404%  53.053%   6.058%   0.467%   0.000%   0.000%   0.001%   1.038%   0.396%   0.000%
   16    4.2  0.5 -0.5  23.230%   0.126%   2.834%  32.640%   0.000%   0.000%   1.112%   0.000%   0.000%   0.322%
   17    5.2  0.5 -0.5   1.640%   0.007%   5.190%  52.761%   0.000%   0.000%   1.369%   0.000%   0.000%   0.066%
   18    6.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%  33.188%   0.163%   0.001%  63.891%   0.056%   0.000%
   19    7.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%  33.232%   0.094%   0.005%  17.665%  46.296%   0.007%
   20    8.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.167%  33.156%  14.385%   0.001%   0.002%  49.588%


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
 CPU TIMES  *     39713.29  33189.85   6265.51    250.78      4.59      0.40      1.89
 REAL TIME  *     40163.07 SEC
 DISK USED  *         1.32 GB (local),       16.00 GB (total)
 SF USED    *        12.49 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCVQZ-PP energy=   -332.099469930806

              CI              CI           MULTI         RHF-SCF
   -332.04557940   -332.13026283   -331.13003256   -331.20995345
 **********************************************************************************************************************************
 Molpro calculation terminated with 1 warning(s)
