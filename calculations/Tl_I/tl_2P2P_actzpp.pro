
 Working directory              : /wrk/irikura/molpro.NGjvviuUts/
 Global scratch directory       : /wrk/irikura/molpro.NGjvviuUts/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.NGjvviuUts/

 id        : nistki

 Nodes            nprocs
 pn112695.nist.gov    6
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1040), CPU time= 0.00 sec
 ***,Tl SO-CI
 memory,1500,M;
 
 gprint,orbitals,civector;
 
 symmetry,xyz
 geometry={Tl};
 
 basis=aug-cc-pwCVTZ-PP
 
                                                                                 ! cation orbitals
 {rhf;wf,nelec=20,sym=1,spin=0}
 
 {multi
     closed,6,3
     occ,8,9
     wf,nelec=21,sym=2,spin=1;state,6;
     expec2,lxx,lyy,lzz;
 }
 table, energy, ll
 title, Energies and &lt;L**2&gt; values
 
 core,0,0
 
 {ci;wf,sym=2,spin=1;state,6; save,5201.2}
 hlsdiag = energd4
 
 table,hlsdiag
 
 {ci;hlsmat,ecp,5201.2;print,vls=0,hls=0}                                        !compute and diagonalize SO matrix
 Commands initialized (846), CPU time= 0.01 sec, 717 directives.
 Default parameters read. Elapsed time= 0.11 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2023.2 linked Fri Sep 22 03:27:09 2023


 **********************************************************************************************************************************
 LABEL *   Tl SO-CI                                                                                                                                                      
  (32 PROC) 64 bit mpp version                                                           DATE: 19-Mar-24          TIME: 16:39:58  
 **********************************************************************************************************************************

 SHA1:             3c61bfe44d37c8635c785372c339f5cbdd4e4b59
 **********************************************************************************************************************************

 Memory per process:      1500 MW
 Total memory per node:   9000 MW

 GA preallocation disabled
 GA check disabled

 Variable memory set to 1500.0 MW


 ZSYMEL=XYZ

 SETTING BASIS          =    AUG-CC-PWCVTZ-PP


 Recomputing integrals since basis changed


 Using spherical harmonics

 Library entry Tl   ECP ECP60MDF                 selected for group  1
 Library entry TL     S aug-cc-pwCVTZ-PP     selected for orbital group  1
 Library entry TL     P aug-cc-pwCVTZ-PP     selected for orbital group  1
 Library entry TL     D aug-cc-pwCVTZ-PP     selected for orbital group  1
 Library entry TL     F aug-cc-pwCVTZ-PP     selected for orbital group  1
 Library entry TL     G aug-cc-pwCVTZ-PP     selected for orbital group  1


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

   1  TL     21.00    0.000000000    0.000000000    0.000000000

 NUCLEAR CHARGE:                   21
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

         1 0.290E-04 0.259E-02 0.126E-01 0.126E-01 0.126E-01 0.126E-01 0.126E-01 0.126E-01
         2 0.944E-02 0.944E-02 0.944E-02 0.148E-01 0.148E-01 0.148E-01 0.795E-01 0.795E-01


 Contracted 2-electron integrals neglected if value below      1.0D-12
 AO integral compression algorithm  1   Integral accuracy      1.0D-12

     15.991 MB (compressed) written to integral file ( 18.2%)

     Node minimum: 2.359 MB, node maximum: 2.884 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:     922392.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:     922392      RECORD LENGTH: 524288

 Memory used in sort:       1.48 MW

 SORT1 READ    11031004. AND WROTE      179214. INTEGRALS IN      1 RECORDS. CPU TIME:     0.06 SEC, REAL TIME:     0.06 SEC
 SORT2 READ     1100136. AND WROTE     5533081. INTEGRALS IN     66 RECORDS. CPU TIME:     0.03 SEC, REAL TIME:     0.03 SEC

 Node minimum:      920824.  Node maximum:      925041. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      19       28.85       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         0.82      0.62
 REAL TIME  *         1.63 SEC
 DISK USED  *        29.19 MB (local),      206.79 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 Program * Restricted Hartree-Fock

 Orbital guess generated from atomic densities. Full valence occupancy:    7   6

 Initial occupancy:   7   3

 NELEC=   20   SYM=1   MS2= 0   THRE=1.0D-08   THRD=3.2D-06   THRG=3.2D-06  HFMA2=F  DIIS_START=2   DIIS_MAX=10   DIIS_INCORE=F

 Level shifts:    0.00 (CLOSED)    0.00 (OPEN)    0.30 (GAP_MIN)

 ITER           ETOT              DE          GRAD        DDIFF     DIIS  NEXP   TIME(IT)  TIME(TOT)  DIAG
   1     -171.32585509    -171.32585509     0.00D+00     0.13D+00     0     0       0.01      0.01    start
   2     -171.33066991      -0.00481481     0.25D-02     0.68D-02     1     0       0.00      0.01    diag
   3     -171.33113511      -0.00046520     0.14D-02     0.14D-02     2     0       0.01      0.02    diag
   4     -171.33119635      -0.00006124     0.22D-03     0.98D-03     3     0       0.00      0.02    diag
   5     -171.33119885      -0.00000250     0.50D-04     0.20D-03     4     0       0.01      0.03    diag
   6     -171.33119886      -0.00000001     0.41D-05     0.15D-04     5     0       0.00      0.03    diag
   7     -171.33119886      -0.00000000     0.22D-06     0.13D-05     6     0       0.01      0.04    diag
   8     -171.33119886       0.00000000     0.13D-07     0.47D-07     0     0       0.00      0.04    fixocc

 Final occupancy:   7   3

 !RHF STATE 1.1 Energy               -171.331198862995
  RHF One-electron energy            -295.976713623747
  RHF Two-electron energy             124.645514760752
  RHF Kinetic energy                   56.457737189082
  RHF Nuclear energy                    0.000000000000
  RHF Virial quotient                  -3.034680583977

 !RHF STATE 1.1 Dipole moment           0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 ELECTRON ORBITALS
 =================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -5.91018     1  1  s    0.99814
    2.1     2.00000    -1.10792     1  1  d2-  0.86806    1  1  d1+ -0.31783    1  1  d1-  0.32108
    3.1     2.00000    -1.10792     1  1  d2+  0.97845
    4.1     2.00000    -1.10792     1  1  d2- -0.46862    1  1  d1+ -0.60164    1  1  d1-  0.64797
    5.1     2.00000    -1.10792     1  1  d0   1.00083
    6.1     2.00000    -1.10792     1  1  d1+  0.72908    1  1  d1-  0.68630
    7.1     2.00000    -0.68793     1  2  s    1.05909
    1.2     2.00000    -3.73505     1  1  px   0.94194    1  1  py  -0.33162
    2.2     2.00000    -3.73505     1  1  px   0.33198    1  1  py   0.94091
    3.2     2.00000    -3.73505     1  1  pz   0.99764


 HOMO      7.1    -0.687926 =     -18.7194eV
 LUMO      4.2    -0.176439 =      -4.8012eV
 LUMO-HOMO         0.511487 =      13.9183eV

 Orbitals saved in record  2100.2


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      19       28.85       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    

              2       4        0.46       700     1000      520     2100   
                                         GEOM     BASIS   MCVARS     RHF  

 PROGRAMS   *        TOTAL   RHF-SCF       INT
 CPU TIMES  *         0.87      0.05      0.62
 REAL TIME  *         2.11 SEC
 DISK USED  *        29.66 MB (local),      209.63 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of closed-shell orbitals:   9 (    6    3)
 Number of active  orbitals:        8 (    2    6)
 Number of external orbitals:      79 (   39   40)

 State symmetry 1

 Number of active electrons:   3    Spin symmetry=Doublet   Space symmetry=2
 Number of states:             6
 Number of CSFs:              94   (120 determinants, 224 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  
 *** IN SYMMETRY 1 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.504D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.265D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.631D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.525D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.490D+00 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 3 5 6 2 4 1 1 2 6   4 5 3 1 2 4 6 3 5 1   2 5 3 4 6 812 71415  1310 911 2 5 3 4 6 1
                                        2 6 3 4 5 1 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.269D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.285D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.446D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.741D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.741D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.123D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.123D-03 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 2 3 3 1 2 3 2 1 3   2 1 6 810 5 4 7 9 3   2 1 810 6 9 7 5 4 8  10 7 9 5 4 6 3 2 1 4
                                        5 9 7 810 6 1 2 3

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.16667   0.16667   0.16667   0.16667   0.16667   0.16667
 
 Number of orbital rotations:  702  ( 30 closed/active, 354 closed/virtual, 0 active/active, 318 active/virtual )
 Total number of variables:    1422
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1    7    6    0   -171.46218118    -171.46694677   -0.00476559    0.04763870 0.00014258 0.00000000  0.82E+00      0.38
   2    8    7    0   -171.46689769    -171.46690012   -0.00000243    0.00140928 0.00000121 0.00000000  0.24E-01      0.85
   3    6    6    0   -171.46690012    -171.46690012   -0.00000000    0.00000025 0.00000001 0.00000000  0.81E-05      1.18

 CONVERGENCE REACHED!  Final gradient:    0.00000000 ( 0.41E-08)
                       Final energy:   -171.46690012
 
 Results for state 1.2
 =====================
 !MCSCF STATE 1.2 Energy                      -171.524772967066
 Nuclear energy                                  0.00000000
 Kinetic energy                                 56.67087232
 One electron energy                          -301.60198937
 Two electron energy                           130.07721641
 Virial ratio                                    4.02668313
 
 !MCSCF STATE 1.2 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.2
 =====================
 !MCSCF STATE 2.2 Energy                      -171.524772966930
 Nuclear energy                                  0.00000000
 Kinetic energy                                 56.67087232
 One electron energy                          -301.60198943
 Two electron energy                           130.07721646
 Virial ratio                                    4.02668313
 
 !MCSCF STATE 2.2 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.2
 =====================
 !MCSCF STATE 3.2 Energy                      -171.524772966804
 Nuclear energy                                  0.00000000
 Kinetic energy                                 56.67087233
 One electron energy                          -301.60198948
 Two electron energy                           130.07721652
 Virial ratio                                    4.02668313
 
 !MCSCF STATE 3.2 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.2
 =====================
 !MCSCF STATE 4.2 Energy                      -171.409027266489
 Nuclear energy                                  0.00000000
 Kinetic energy                                 56.47557323
 One electron energy                          -298.25647780
 Two electron energy                           126.84745054
 Virial ratio                                    4.03510026
 
 !MCSCF STATE 4.2 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.2
 =====================
 !MCSCF STATE 5.2 Energy                      -171.409027265083
 Nuclear energy                                  0.00000000
 Kinetic energy                                 56.47557326
 One electron energy                          -298.25647802
 Two electron energy                           126.84745076
 Virial ratio                                    4.03510026
 
 !MCSCF STATE 5.2 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.2
 =====================
 !MCSCF STATE 6.2 Energy                      -171.409027263645
 Nuclear energy                                  0.00000000
 Kinetic energy                                 56.47557329
 One electron energy                          -298.25647825
 Two electron energy                           126.84745098
 Virial ratio                                    4.03510026
 
 !MCSCF STATE 6.2 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 !MCSCF expec                      <1.2|LXLX|1.2>     0.999999999999
 !MCSCF expec                      <2.2|LXLX|2.2>     0.000000000004
 !MCSCF expec                      <3.2|LXLX|3.2>     1.000000000000
 !MCSCF expec                      <4.2|LXLX|4.2>     1.000000000000
 !MCSCF expec                      <5.2|LXLX|5.2>     0.000000000000
 !MCSCF expec                      <6.2|LXLX|6.2>     1.000000000000
 
 !MCSCF expec                      <1.2|LYLY|1.2>     0.999999999995
 !MCSCF expec                      <2.2|LYLY|2.2>     0.999999999999
 !MCSCF expec                      <3.2|LYLY|3.2>     0.000000000008
 !MCSCF expec                      <4.2|LYLY|4.2>     0.000000000000
 !MCSCF expec                      <5.2|LYLY|5.2>     1.000000000000
 !MCSCF expec                      <6.2|LYLY|6.2>     1.000000000000
 
 !MCSCF expec                      <1.2|LZLZ|1.2>     0.000000000006
 !MCSCF expec                      <2.2|LZLZ|2.2>     0.999999999997
 !MCSCF expec                      <3.2|LZLZ|3.2>     0.999999999992
 !MCSCF expec                      <4.2|LZLZ|4.2>     1.000000000000
 !MCSCF expec                      <5.2|LZLZ|5.2>     1.000000000000
 !MCSCF expec                      <6.2|LZLZ|6.2>     0.000000000000
 
 !MCSCF expec                      <1.2|L**2|1.2>     2.000000000000
 !MCSCF expec                      <2.2|L**2|2.2>     2.000000000000
 !MCSCF expec                      <3.2|L**2|3.2>     2.000000000000
 !MCSCF expec                      <4.2|L**2|4.2>     2.000000000000
 !MCSCF expec                      <5.2|L**2|5.2>     2.000000000000
 !MCSCF expec                      <6.2|L**2|6.2>     2.000000000000
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 3 5 6 4 2 1 1 2 4   6 3 5 1 3 5 6 2 4 1   5 3 6 2 41310141511   812 7 9 3 5 6 2 4 1
                                        3 5 6 4 2 1 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   2 1 3 3 1 2 2 1 3 3   1 2 7 9 810 5 6 4 3   1 2 7 9 810 5 6 4 7   9 810 5 6 4 2 1 3 7
                                        9 810 5 6 4 2 1 3
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -5.71615     1  1  s    0.99945
    2.1     2.00000    -0.91395     1  1  d2-  1.00068
    3.1     2.00000    -0.91395     1  1  d2+  1.00068
    4.1     2.00000    -0.91395     1  1  d1-  1.00068
    5.1     2.00000    -0.91395     1  1  d1+  1.00068
    6.1     2.00000    -0.91395     1  1  d0   1.00068
    7.1     1.95093    -0.50177     1  2  s    1.01218
    8.1     0.00373     0.30002     1  2  s   -1.55102    1  3  s   -1.30349    1  4  s    0.93512    1  5  s    1.73531
    1.2     2.00000    -3.54119     1  1  py   0.99961
    2.2     2.00000    -3.54119     1  1  px   0.99961
    3.2     2.00000    -3.54119     1  1  pz   0.99961
    4.2     0.18183    -0.01461     1  2  pz   1.27820
    5.2     0.18183    -0.01461     1  2  px   1.27820
    6.2     0.18183    -0.01461     1  2  py   1.27820
    7.2     0.16662     0.01739     1  2  py  -0.27270    1  7  py   1.11005
    8.2     0.16662     0.01739     1  2  px  -0.27270    1  7  px   1.11005
    9.2     0.16662     0.01739     1  2  pz  -0.27270    1  7  pz   1.11005
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 2
 =============================
 
 20 00a000      0.00000203     -0.00000108      0.94800010     -0.27762712      0.00000003     -0.00000005
 20 0a0000     -0.00000103      0.94800009      0.00000108     -0.00000003     -0.27762716     -0.00000006
 20 a00000      0.94800007      0.00000103     -0.00000203      0.00000005      0.00000006     -0.27762721
 20 000a00      0.00000060     -0.00000032      0.27739414      0.94647700     -0.00000011      0.00000016
 20 0000a0     -0.00000030      0.27739418      0.00000032      0.00000011      0.94647699      0.00000019
 20 00000a      0.27739423      0.00000030     -0.00000060     -0.00000016     -0.00000019      0.94647697
 00 20a000     -0.00000021      0.00000011     -0.09784570      0.03016144     -0.00000000      0.00000001
 00 2a0000      0.00000011     -0.09784570     -0.00000011      0.00000000      0.03016145      0.00000001
 00 02a000     -0.00000021      0.00000011     -0.09784570      0.03016144     -0.00000000      0.00000001
 00 a20000     -0.09784570     -0.00000011      0.00000021     -0.00000001     -0.00000001      0.03016145
 00 0a2000      0.00000011     -0.09784570     -0.00000011      0.00000000      0.03016145      0.00000001
 00 a02000     -0.09784569     -0.00000011      0.00000021     -0.00000001     -0.00000001      0.03016145
 00 200a00     -0.00000005      0.00000003     -0.02554851     -0.08682901      0.00000001     -0.00000001
 00 2000a0      0.00000003     -0.02554851     -0.00000003     -0.00000001     -0.08682901     -0.00000002
 00 020a00     -0.00000005      0.00000003     -0.02554851     -0.08682901      0.00000001     -0.00000001
 00 02000a     -0.02554851     -0.00000003      0.00000005      0.00000001      0.00000002     -0.08682901
 00 0020a0      0.00000003     -0.02554851     -0.00000003     -0.00000001     -0.08682901     -0.00000002
 00 00200a     -0.02554851     -0.00000003      0.00000005      0.00000001      0.00000002     -0.08682901
 00 20000a     -0.02478043     -0.00000003      0.00000005      0.00000001      0.00000002     -0.08583196
 00 0200a0      0.00000003     -0.02478043     -0.00000003     -0.00000001     -0.08583196     -0.00000002
 00 002a00     -0.00000005      0.00000003     -0.02478042     -0.08583196      0.00000001     -0.00000001
 
 Energy:     -171.52477297   -171.52477297   -171.52477297   -171.40902727   -171.40902727   -171.40902726
 


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       37.18       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       5        0.74       700     1000      520     2100     2140   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF   

 PROGRAMS   *        TOTAL     MULTI   RHF-SCF       INT
 CPU TIMES  *         1.97      1.10      0.05      0.62
 REAL TIME  *         3.52 SEC
 DISK USED  *        38.00 MB (local),      259.69 MB (total)
 SF USED    *        22.37 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

         ENERGY     LL
    -171.5247730   2.0
    -171.5247730   2.0
    -171.5247730   2.0
    -171.4090273   2.0
    -171.4090273   2.0
    -171.4090273   2.0
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 6  Roots:    1   2   3   4   5   6
 Number of reference states: 6  Roots:    1   2   3   4   5   6

 Reference symmetry:                   2   Doublet 
 Number of electrons:                 21
 Maximum number of shells:             5
 Maximum number of spin couplings:    42

 Reference space:       68 conf       94 CSFs
 N elec internal:    25186 conf   106386 CSFs
 N-1 el internal:    12969 conf    77473 CSFs
 N-2 el internal:     3392 conf    24010 CSFs

 Number of electrons in valence space:                     21
 Maximum number of open shell orbitals in reference space:  3
 Maximum number of open shell orbitals in internal spaces:  9


 Number of closed-shell orbitals:   9 (   6   3 )
 Number of active  orbitals:        8 (   2   6 )
 Number of external orbitals:      79 (  39  40 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Valence orbitals related to previous ones by unitary transformation. Operators transformed.


 Number of p-space configurations:   6

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -171.52477297
     2      -171.52477297
     3      -171.52477297
     4      -171.40902727
     5      -171.40902727
     6      -171.40902726

 Number of blocks in overlap matrix:   563   Smallest eigenvalue:  0.11D-05
 Number of N-2 electron functions:    1330
 Number of N-1 electron functions:   77473

 Number of internal configurations:                53272
 Number of singly external configurations:       3060250
 Number of doubly external configurations:       2077248
 Total number of contracted configurations:      5190770
 Total number of uncontracted configurations:   40457792

 Diagonal Coupling coefficients finished.               Storage:  22137764 words, CPU-Time:     50.67 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   1112961 words, CPU-time:      0.10 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -171.52477297     0.00000000    -0.74285697  0.54D-01  0.11D+00    70.72
    1     2     2     1.00000000     0.00000000  -171.52477297    -0.00000000    -0.74295314  0.54D-01  0.11D+00    70.72
    1     3     3     1.00000000     0.00000000  -171.52477297     0.00000000    -0.74299785  0.54D-01  0.11D+00    70.72
    1     4     4     1.00000000     0.00000000  -171.40902727     0.00000000    -0.72277031  0.44D-01  0.10D+00    70.72
    1     5     5     1.00000000     0.00000000  -171.40902727     0.00000000    -0.72281433  0.44D-01  0.10D+00    70.72
    1     6     6     1.00000000     0.00000000  -171.40902726    -0.00000000    -0.72289275  0.44D-01  0.10D+00    70.72
    2     1     1     1.09431387    -0.57471168  -172.09948465    -0.57471168    -0.01718984  0.27D-02  0.14D-02   705.77
    2     2     2     1.09429915    -0.57470040  -172.09947337    -0.57470040    -0.01720428  0.27D-02  0.14D-02   705.77
    2     3     3     1.09424647    -0.57470034  -172.09947331    -0.57470034    -0.01720880  0.27D-02  0.14D-02   705.77
    2     4     4     1.08604497    -0.56531245  -171.97433972    -0.56531245    -0.01607446  0.23D-02  0.12D-02   705.77
    2     5     5     1.08600915    -0.56531168  -171.97433895    -0.56531168    -0.01607499  0.23D-02  0.12D-02   705.77
    2     6     6     1.08602389    -0.56531112  -171.97433839    -0.56531112    -0.01607545  0.23D-02  0.12D-02   705.77
    3     1     1     1.08689543    -0.59064307  -172.11541604    -0.01593139    -0.00030319  0.38D-04  0.34D-04  1381.94
    3     2     2     1.08690973    -0.59064276  -172.11541573    -0.01594236    -0.00030337  0.38D-04  0.34D-04  1381.94
    3     3     3     1.08690427    -0.59064268  -172.11541565    -0.01594234    -0.00030345  0.38D-04  0.34D-04  1381.94
    3     4     4     1.08054583    -0.58017622  -171.98920348    -0.01486377    -0.00025595  0.25D-04  0.26D-04  1381.94
    3     5     5     1.08054943    -0.58017596  -171.98920323    -0.01486428    -0.00025622  0.25D-04  0.26D-04  1381.94
    3     6     6     1.08055529    -0.58017586  -171.98920312    -0.01486474    -0.00025638  0.25D-04  0.26D-04  1381.94
    4     1     1     1.08715466    -0.59094884  -172.11572181    -0.00030576    -0.00001255  0.33D-05  0.12D-05  2291.53
    4     2     2     1.08715495    -0.59094883  -172.11572180    -0.00030608    -0.00001255  0.33D-05  0.12D-05  2291.53
    4     3     3     1.08715388    -0.59094883  -172.11572180    -0.00030615    -0.00001256  0.33D-05  0.12D-05  2291.53
    4     4     4     1.08107899    -0.58042906  -171.98945633    -0.00025284    -0.00000902  0.25D-05  0.70D-06  2291.53
    4     5     5     1.08107912    -0.58042905  -171.98945631    -0.00025308    -0.00000903  0.25D-05  0.70D-06  2291.53
    4     6     6     1.08107966    -0.58042904  -171.98945631    -0.00025318    -0.00000904  0.25D-05  0.70D-06  2291.53
    5     1     1     1.08719312    -0.59096299  -172.11573595    -0.00001415    -0.00000053  0.89D-07  0.63D-07  2990.28
    5     2     2     1.08719305    -0.59096299  -172.11573595    -0.00001415    -0.00000053  0.89D-07  0.63D-07  2990.28
    5     3     3     1.08719355    -0.59096298  -172.11573595    -0.00001415    -0.00000054  0.90D-07  0.63D-07  2990.28
    5     4     4     1.08118810    -0.58043893  -171.98946619    -0.00000987    -0.00000037  0.71D-07  0.39D-07  2990.28
    5     5     5     1.08118805    -0.58043893  -171.98946619    -0.00000988    -0.00000037  0.71D-07  0.39D-07  2990.28
    5     6     6     1.08118812    -0.58043893  -171.98946619    -0.00000988    -0.00000037  0.71D-07  0.39D-07  2990.28
    6     1     1     1.08717619    -0.59096356  -172.11573653    -0.00000058    -0.00000002  0.38D-08  0.32D-08  3822.49
    6     2     2     1.08717619    -0.59096356  -172.11573653    -0.00000058    -0.00000002  0.38D-08  0.32D-08  3822.49
    6     3     3     1.08717623    -0.59096356  -172.11573653    -0.00000058    -0.00000002  0.38D-08  0.32D-08  3822.49
    6     4     4     1.08118803    -0.58043933  -171.98946660    -0.00000040    -0.00000002  0.37D-08  0.20D-08  3822.49
    6     5     5     1.08118803    -0.58043933  -171.98946659    -0.00000040    -0.00000002  0.37D-08  0.20D-08  3822.49
    6     6     6     1.08118802    -0.58043933  -171.98946659    -0.00000040    -0.00000002  0.37D-08  0.20D-08  3822.49


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   3.6%
 S   0.7%  59.2%
 P   0.4%  23.7%   9.0%

 Initialization:   1.3%
 Other:            2.0%

 Total CPU:     3822.5 seconds
 =====================================



 Wavefunction saved on  5201.2

 Reference coefficients greater than 0.0500000
 =============================================
 222222202220/0000           0.0000000   0.9204574   0.0000000   0.0000000   0.0000000  -0.2333814
 2222222022200/000           0.9204333  -0.0000000   0.0066702  -0.2333784  -0.0011795   0.0000000
 22222220222/00000          -0.0066702  -0.0000000   0.9204333   0.0011795  -0.2333784  -0.0000000
 222222202220000/0           0.0000000   0.2333352   0.0000000  -0.0000000   0.0000000   0.9194437
 2222222022200000/          -0.0016909  -0.0000000   0.2333291  -0.0046469   0.9194319  -0.0000000
 22222220222000/00           0.2333291  -0.0000000   0.0016909   0.9194319   0.0046469   0.0000000
 222222002222/0000          -0.0000000  -0.0809447  -0.0000000  -0.0000000  -0.0000000   0.0218779
 222222002220/2000          -0.0000000  -0.0809445   0.0000000  -0.0000000  -0.0000000   0.0218778
 2222220022220/000          -0.0809425   0.0000000  -0.0005866   0.0218777   0.0001106   0.0000000
 22222200222/20000           0.0005866   0.0000000  -0.0809424  -0.0001106   0.0218776  -0.0000000
 22222200222/02000           0.0005866  -0.0000000  -0.0809424  -0.0001106   0.0218776   0.0000000
 2222220022202/000          -0.0809423   0.0000000  -0.0005866   0.0218776   0.0001106   0.0000000
 222222002222000/0          -0.0000000  -0.0183339  -0.0000000  -0.0000000  -0.0000000  -0.0720464
 222222002220020/0           0.0000000  -0.0183339   0.0000000  -0.0000000  -0.0000000  -0.0720463
 22222200222200/00          -0.0183334   0.0000000  -0.0001329  -0.0720455  -0.0003641   0.0000000
 22222200222020/00          -0.0183334  -0.0000000  -0.0001329  -0.0720454  -0.0003641   0.0000000
 2222220022200200/           0.0001329   0.0000000  -0.0183334   0.0003641  -0.0720454  -0.0000000
 2222220022202000/           0.0001329  -0.0000000  -0.0183334   0.0003641  -0.0720454   0.0000000
 222222002220200/0          -0.0000000  -0.0175547  -0.0000000  -0.0000000  -0.0000000  -0.0710541
 2222220022220000/           0.0001272   0.0000000  -0.0175542   0.0003591  -0.0710533  -0.0000000
 22222200222002/00          -0.0175542   0.0000000  -0.0001272  -0.0710532  -0.0003591   0.0000000
 222222/\2220000/0           0.0000000  -0.0185404   0.0000000  -0.0000000  -0.0000000  -0.0705961
 222222/\222000/00          -0.0185399  -0.0000000  -0.0001344  -0.0705953  -0.0003568  -0.0000000
 222222/\22200000/           0.0001344   0.0000000  -0.0185399   0.0003568  -0.0705951  -0.0000000

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1          -0.006931    0.000000    0.956434   -0.034195   -0.000000    0.000248
 2          -0.000000    0.956459   -0.000000   -0.000000   -0.034196   -0.000000
 3           0.956434    0.000000    0.006931   -0.000248    0.000000   -0.034195
 4          -0.000181    0.000000    0.035789    0.958638   -0.000000   -0.004845
 5           0.035789    0.000000    0.000181    0.004845   -0.000000    0.958638
 6          -0.000000    0.035790    0.000000    0.000000    0.958650    0.000000

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.957070    0.000000    0.000000    0.000757   -0.000002    0.000000
 2           0.000000    0.957070    0.000000   -0.000000   -0.000000    0.000757
 3           0.000000    0.000000    0.957070    0.000002    0.000757   -0.000000
 4           0.000757   -0.000000    0.000002    0.959318   -0.000000    0.000000
 5          -0.000002   -0.000000    0.000757   -0.000000    0.959318   -0.000000
 6           0.000000    0.000757   -0.000000    0.000000   -0.000000    0.959318


 RESULTS FOR STATE 1.2
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.95643395 (fixed)   0.95774086 (relaxed)   0.95706985 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00418285   -0.00531125   -0.47605838
 Singles      0.02232059   -0.07354713   -0.07945702
 Pairs        0.06522025   -0.00016414   -0.03544817
 Total        1.09172368   -0.07902252   -0.59096356
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -171.52461860
 Nuclear energy                         0.00000000
 Kinetic energy                        56.80930014
 One electron energy                 -301.07693991
 Two electron energy                  128.96120338
 Virial quotient                       -3.02971056
 Correlation energy                    -0.59111793
 !MRCI STATE 1.2 Energy              -172.115736531130

 Properties without orbital relaxation:

 !MRCI STATE 1.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -172.16995604 (Davidson, fixed reference)
 Cluster corrected energies          -172.16905210 (Davidson, relaxed reference)
 Cluster corrected energies          -172.16995604 (Davidson, rotated reference)

 Cluster corrected energies          -172.16835200 (Pople, fixed reference)
 Cluster corrected energies          -172.16740820 (Pople, relaxed reference)
 Cluster corrected energies          -172.16835200 (Pople, rotated reference)



 RESULTS FOR STATE 2.2
 =====================

 Coefficient of reference function:   C(0) = 0.95645906 (fixed)   0.95774085 (relaxed)   0.95706984 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00418285   -0.00531125   -0.47620873
 Singles      0.02232059   -0.07354713   -0.07945701
 Pairs        0.06522025    0.00000000   -0.03529782
 Total        1.09172369   -0.07885838   -0.59096356
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -171.52461860
 Nuclear energy                         0.00000000
 Kinetic energy                        56.80930004
 One electron energy                 -301.07693993
 Two electron energy                  128.96120339
 Virial quotient                       -3.02971057
 Correlation energy                    -0.59111793
 !MRCI STATE 2.2 Energy              -172.115736531118

 Properties without orbital relaxation:

 !MRCI STATE 2.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -172.16995605 (Davidson, fixed reference)
 Cluster corrected energies          -172.16905210 (Davidson, relaxed reference)
 Cluster corrected energies          -172.16995605 (Davidson, rotated reference)

 Cluster corrected energies          -172.16835201 (Pople, fixed reference)
 Cluster corrected energies          -172.16740820 (Pople, relaxed reference)
 Cluster corrected energies          -172.16835201 (Pople, rotated reference)



 RESULTS FOR STATE 3.2
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.95643392 (fixed)   0.95774084 (relaxed)   0.95706982 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00418286   -0.00531126   -0.49695598
 Singles      0.02232060   -0.07354712   -0.07945702
 Pairs        0.06522028    0.02265028   -0.01455056
 Total        1.09172374   -0.05620809   -0.59096356
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -171.52461860
 Nuclear energy                         0.00000000
 Kinetic energy                        56.80929553
 One electron energy                 -301.07693481
 Two electron energy                  128.96119829
 Virial quotient                       -3.02971081
 Correlation energy                    -0.59111793
 !MRCI STATE 3.2 Energy              -172.115736529725

 Properties without orbital relaxation:

 !MRCI STATE 3.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -172.16995608 (Davidson, fixed reference)
 Cluster corrected energies          -172.16905212 (Davidson, relaxed reference)
 Cluster corrected energies          -172.16995608 (Davidson, rotated reference)

 Cluster corrected energies          -172.16835204 (Pople, fixed reference)
 Cluster corrected energies          -172.16740822 (Pople, relaxed reference)
 Cluster corrected energies          -172.16835204 (Pople, rotated reference)



 RESULTS FOR STATE 4.2
 =====================

 Coefficient of reference function:   C(0) = 0.95863798 (fixed)   0.96005123 (relaxed)   0.95931776 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00501791   -0.00661687   -0.47325282
 Singles      0.01925286   -0.07164541   -0.07622530
 Pairs        0.06234256    0.00253631   -0.03096121
 Total        1.08661333   -0.07572597   -0.58043933
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -171.40918163
 Nuclear energy                         0.00000000
 Kinetic energy                        56.68221951
 One electron energy                 -297.76753936
 Two electron energy                  125.77807276
 Virial quotient                       -3.03427544
 Correlation energy                    -0.58028496
 !MRCI STATE 4.2 Energy              -171.989466595037

 Properties without orbital relaxation:

 !MRCI STATE 4.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -172.03972701 (Davidson, fixed reference)
 Cluster corrected energies          -172.03876392 (Davidson, relaxed reference)
 Cluster corrected energies          -172.03972701 (Davidson, rotated reference)

 Cluster corrected energies          -172.03803081 (Pople, fixed reference)
 Cluster corrected energies          -172.03703388 (Pople, relaxed reference)
 Cluster corrected energies          -172.03803081 (Pople, rotated reference)



 RESULTS FOR STATE 5.2
 =====================

 Maximum overlap with reference state  6

 Coefficient of reference function:   C(0) = 0.95863798 (fixed)   0.96005123 (relaxed)   0.95931777 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00501790   -0.00661687   -0.00908710
 Singles      0.01925286   -0.07164542   -0.07622531
 Pairs        0.06234256   -0.50183233   -0.49512692
 Total        1.08661332   -0.58009462   -0.58043933
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -171.40918163
 Nuclear energy                         0.00000000
 Kinetic energy                        56.68222031
 One electron energy                 -297.76753968
 Two electron energy                  125.77807308
 Virial quotient                       -3.03427540
 Correlation energy                    -0.58028496
 !MRCI STATE 5.2 Energy              -171.989466594313

 Properties without orbital relaxation:

 !MRCI STATE 5.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -172.03972700 (Davidson, fixed reference)
 Cluster corrected energies          -172.03876392 (Davidson, relaxed reference)
 Cluster corrected energies          -172.03972700 (Davidson, rotated reference)

 Cluster corrected energies          -172.03803080 (Pople, fixed reference)
 Cluster corrected energies          -172.03703388 (Pople, relaxed reference)
 Cluster corrected energies          -172.03803080 (Pople, rotated reference)



 RESULTS FOR STATE 6.2
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.95865023 (fixed)   0.96005123 (relaxed)   0.95931777 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00501790   -0.00661687   -0.47091868
 Singles      0.01925285   -0.07164541   -0.07622530
 Pairs        0.06234256   -0.00000000   -0.03329535
 Total        1.08661332   -0.07826228   -0.58043933
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -171.40918163
 Nuclear energy                         0.00000000
 Kinetic energy                        56.68222001
 One electron energy                 -297.76753957
 Two electron energy                  125.77807297
 Virial quotient                       -3.03427541
 Correlation energy                    -0.58028496
 !MRCI STATE 6.2 Energy              -171.989466594179

 Properties without orbital relaxation:

 !MRCI STATE 6.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -172.03972700 (Davidson, fixed reference)
 Cluster corrected energies          -172.03876392 (Davidson, relaxed reference)
 Cluster corrected energies          -172.03972700 (Davidson, rotated reference)

 Cluster corrected energies          -172.03803080 (Pople, fixed reference)
 Cluster corrected energies          -172.03703387 (Pople, relaxed reference)
 Cluster corrected energies          -172.03803080 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       37.18       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       6      246.01       700     1000      520     2100     2140     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *      4345.18   4343.19      1.10      0.05      0.62
 REAL TIME  *      4406.78 SEC
 DISK USED  *       283.27 MB (local),        1.69 GB (total)
 SF USED    *         2.58 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =      -172.16995604  AU                              
 SETTING HLSDIAG(2)     =      -172.16995605  AU                              
 SETTING HLSDIAG(3)     =      -172.16995608  AU                              
 SETTING HLSDIAG(4)     =      -172.03972701  AU                              
 SETTING HLSDIAG(5)     =      -172.03972700  AU                              
 SETTING HLSDIAG(6)     =      -172.03972700  AU                              


         HLSDIAG
    -172.1699560
    -172.1699560
    -172.1699561
    -172.0397270
    -172.0397270
    -172.0397270
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Diagonal elements of H will be replaced by values from variable HLSDIAG


   ******************************
   *** Spin-orbit calculation ***
   ******************************


   Spin-orbit matrix elements
   ==========================

 Wavefunction restored from record  5201.2  Symmetry=2  S= 0.5  NSTATE=   6

 Original energies:   -172.115737   -172.115737   -172.115737   -171.989467   -171.989467   -171.989467
 Replaced energies:   -172.169956   -172.169956   -172.169956   -172.039727   -172.039727   -172.039727



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=  -172.16995608

 Wigner-Eckart theorem used for  3 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.2  0.5  0.5       0.01       0.00       0.00       0.00       0.00       0.00       0.00      18.00      -0.00       0.00
                            0.00    2483.76       0.00      -0.00      -0.00    -986.67       0.00      -0.00   -2483.82       2.16

    2   2.2  0.5  0.5       0.00       0.01       0.00       0.00       0.00       0.00     -18.00       0.00    2483.76       4.99
                        -2483.76       0.00     -18.00     986.69       4.99      -0.00       0.00      -0.00      -0.00      -0.00

    3   3.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00   -2483.76       0.00      -0.00
                           -0.00      18.00       0.00      -0.00      -0.00      -7.15    2483.82       0.00      -0.00    -986.70

    4   4.2  0.5  0.5       0.00       0.00       0.00   28581.98       0.00       0.00      -0.00      -4.99       0.00      -0.00
                            0.00    -986.69       0.00       0.00       0.00     391.26      -2.16       0.00     986.70      -0.00

    5   5.2  0.5  0.5       0.00       0.00       0.00       0.00   28581.98       0.00      -0.00     986.69      -0.00       0.00
                            0.00      -4.99       0.00      -0.00      -0.00       1.98    -986.70      -0.00      -2.16     391.26

    6   6.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00   28581.98       7.15       0.00    -986.67      -1.98
                          986.67       0.00       7.15    -391.26      -1.98       0.00      -0.00       0.00       0.00       0.00

    7   1.2  0.5 -0.5       0.00     -18.00       0.00      -0.00      -0.00       7.15       0.01       0.00       0.00       0.00
                           -0.00      -0.00   -2483.82       2.16     986.70       0.00      -0.00   -2483.76      -0.00       0.00

    8   2.2  0.5 -0.5      18.00       0.00   -2483.76      -4.99     986.69       0.00       0.00       0.01       0.00       0.00
                            0.00       0.00      -0.00      -0.00       0.00      -0.00    2483.76      -0.00      18.00    -986.69

    9   3.2  0.5 -0.5      -0.00    2483.76       0.00       0.00      -0.00    -986.67       0.00       0.00       0.00       0.00
                         2483.82       0.00       0.00    -986.70       2.16      -0.00       0.00     -18.00      -0.00       0.00

   10   4.2  0.5 -0.5       0.00       4.99      -0.00      -0.00       0.00      -1.98       0.00       0.00       0.00   28581.98
                           -2.16       0.00     986.70       0.00    -391.26      -0.00      -0.00     986.69      -0.00      -0.00

   11   5.2  0.5 -0.5       0.00    -986.69       0.00      -0.00      -0.00     391.26       0.00       0.00       0.00       0.00
                         -986.70      -0.00      -2.16     391.26       0.00      -0.00      -0.00       4.99      -0.00       0.00

   12   6.2  0.5 -0.5      -7.15      -0.00     986.67       1.98    -391.26      -0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00    -986.67      -0.00      -7.15     391.26


   Nr   State  S   Sz       11         12

    1   1.2  0.5  0.5       0.00      -7.15
                          986.70       0.00

    2   2.2  0.5  0.5    -986.69      -0.00
                            0.00      -0.00

    3   3.2  0.5  0.5       0.00     986.67
                            2.16      -0.00

    4   4.2  0.5  0.5      -0.00       1.98
                         -391.26      -0.00

    5   5.2  0.5  0.5      -0.00    -391.26
                           -0.00      -0.00

    6   6.2  0.5  0.5     391.26      -0.00
                            0.00      -0.00

    7   1.2  0.5 -0.5       0.00       0.00
                            0.00     986.67

    8   2.2  0.5 -0.5       0.00       0.00
                           -4.99       0.00

    9   3.2  0.5 -0.5       0.00       0.00
                            0.00       7.15

   10   4.2  0.5 -0.5       0.00       0.00
                           -0.00    -391.26

   11   5.2  0.5 -0.5   28581.98       0.00
                            0.00      -1.98

   12   6.2  0.5 -0.5       0.00   28581.98
                            1.98      -0.00


 No symmetry adaption


 Spin-orbit eigenstates   (energies)
 ======================

     Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
              (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1  -172.19312987    -0.02317380    -5086.06      0.00000000        0.00      0.0000
     2  -172.19312987    -0.02317380    -5086.06      0.00000000        0.00      0.0000
     3  -172.15880618     0.01114990     2447.12      0.03432370     7533.18      0.9340
     4  -172.15880618     0.01114990     2447.12      0.03432370     7533.18      0.9340
     5  -172.15880614     0.01114993     2447.13      0.03432373     7533.19      0.9340
     6  -172.15880614     0.01114993     2447.13      0.03432373     7533.19      0.9340
     7  -172.04275290     0.12720317    27917.87      0.15037697    33003.93      4.0920
     8  -172.04275290     0.12720317    27917.87      0.15037697    33003.93      4.0920
     9  -172.03777704     0.13217903    29009.94      0.15535283    34096.00      4.2274
    10  -172.03777704     0.13217903    29009.94      0.15535283    34096.00      4.2274
    11  -172.03777704     0.13217904    29009.95      0.15535283    34096.01      4.2274
    12  -172.03777704     0.13217904    29009.95      0.15535283    34096.01      4.2274


 Eigenvectors of spin-orbit matrix
 =================================

  Basis states          Eigenvectors (columnwise)

   Nr   State  S   Sz        1             2             3             4             5             6             7             8

    1    1.2  0.5  0.5   0.576145248  -0.013921309  -0.014215324   0.363436908   0.000913122   0.730380981   0.000287956   0.034582356
                         0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000

    2    2.2  0.5  0.5   0.000008655   0.000358175  -0.000813244  -0.000037478  -0.002737049   0.000006243   0.000014169  -0.000000118
                         0.576230704  -0.009761245  -0.017691118   0.450328976  -0.001794847  -0.680165459   0.000538152   0.034579392

    3    3.2  0.5  0.5   0.013869997   0.574021554  -0.075182090  -0.007027340  -0.016390327   0.002054027   0.034527014  -0.000287495
                        -0.001194290  -0.049426728   0.810255385   0.031693326   0.047459759  -0.000059993  -0.001955288   0.000016281

    4    4.2  0.5  0.5  -0.034575202   0.000759865  -0.000534901   0.013518236   0.000032629   0.027168320   0.006060164   0.576282209
                         0.000000157   0.000006503   0.000066083   0.000002585   0.000003871  -0.000000005  -0.000071443   0.000000595

    5    5.2  0.5  0.5  -0.000756506  -0.034447763  -0.002795409  -0.000291039  -0.000609752   0.000016835   0.575359650  -0.006054502
                         0.000071667   0.002966003   0.030139285   0.001178905   0.001765379  -0.000002232  -0.032583593   0.000271313

    6    6.2  0.5  0.5  -0.000000519  -0.000021493  -0.000030250  -0.000001394  -0.000101811   0.000000232   0.000236120  -0.000001966
                        -0.034578587   0.000585755  -0.000658061   0.016750995  -0.000066764  -0.025300350   0.008967961   0.576243342

    7    1.2  0.5 -0.5   0.001194290   0.049426698   0.361875610   0.014154256   0.690372785  -0.000863104   0.001955289  -0.000016281
                         0.013869986   0.574021209   0.033651587   0.001316235   0.238415173  -0.000298067   0.034527036  -0.000287495

    8    2.2  0.5 -0.5   0.009694532   0.574107092   0.041659837   0.002447818  -0.222017632   0.003173006   0.034524070  -0.000538093
                        -0.001194258  -0.049425407  -0.448397866  -0.017539818   0.642909965  -0.000803086  -0.001955239   0.000016281

    9    3.2  0.5 -0.5   0.000000000   0.000000000  -0.004062582  -0.000164581   0.001921930   0.000000423   0.000000000   0.000000000
                        -0.576145594   0.013921320  -0.032207854   0.813735896   0.000727194   0.050210273  -0.000287956  -0.034582335

   10    4.2  0.5 -0.5  -0.000071667  -0.002966002   0.013460402   0.000526484   0.025680115  -0.000032105   0.032583630  -0.000271313
                        -0.000756506  -0.034447750   0.001249116   0.000115327   0.008868444  -0.000006992   0.575360314  -0.006054509

   11    5.2  0.5 -0.5   0.000000157   0.000006503  -0.000180631  -0.000007276   0.000015184   0.000000086  -0.000071443   0.000000595
                         0.034575215  -0.000759865  -0.001200789   0.030268643   0.000007605   0.001867715  -0.006060157  -0.576281543

   12    6.2  0.5 -0.5  -0.000581752  -0.034451153   0.001549631   0.000091052  -0.008258467   0.000118027   0.575321433  -0.008966966
                         0.000071665   0.002965931  -0.016679163  -0.000652433   0.023914545  -0.000029873  -0.032582802   0.000271306


   Nr   State  S   Sz        9            10            11            12

    1    1.2  0.5  0.5  -0.000000000  -0.030232486  -0.000000000   0.002674245
                        -0.000000000   0.000000000   0.000000000   0.000000000

    2    2.2  0.5  0.5  -0.000014827  -0.000000460   0.000730938  -0.000005202
                         0.000026359   0.012801209   0.000535598  -0.027503803

    3    3.2  0.5  0.5   0.015225390  -0.000062524  -0.014712524  -0.000706832
                         0.008487515  -0.000000120   0.020008472  -0.000001356

    4    4.2  0.5  0.5  -0.000897459   0.812760177   0.000867228  -0.071851289
                        -0.000500296   0.000000007  -0.001179397   0.000000080

    5    5.2  0.5  0.5  -0.409314243  -0.000101197   0.395525480   0.019159818
                        -0.228175484   0.000003225  -0.537899580   0.000036454

    6    6.2  0.5  0.5   0.000398596   0.000012370  -0.019650298   0.000139852
                        -0.000708630  -0.344144212  -0.014398840   0.739402850

    7    1.2  0.5 -0.5   0.014719870   0.000000000  -0.002154818   0.000000000
                        -0.026406981  -0.000000000  -0.001583775  -0.000000000

    8    2.2  0.5 -0.5   0.011181616  -0.000030243   0.016292845   0.000906165
                         0.006232368   0.000000117  -0.022158574   0.000001318

    9    3.2  0.5 -0.5   0.000030337  -0.000000459   0.000570345  -0.000005192
                        -0.000054671  -0.017431305   0.000417516  -0.024835403

   10    4.2  0.5 -0.5  -0.395724118   0.000000027   0.057895345   0.000000306
                         0.709916563   0.001027487   0.042552755   0.001463922

   11    5.2  0.5 -0.5   0.000052089   0.000012347  -0.015459937   0.000139591
                        -0.000086822   0.468617328  -0.011317699   0.667664845

   12    6.2  0.5 -0.5  -0.300603518   0.000813034  -0.438011291  -0.024361026
                        -0.167549284  -0.000003135   0.595703537  -0.000035441


 Composition of spin-orbit eigenvectors
 ======================================

   Nr   State  S   Sz       1        2        3        4        5        6        7        8        9       10

    1    1.2  0.5  0.5  33.194%   0.019%   0.020%  13.209%   0.000%  53.346%   0.000%   0.120%   0.000%   0.091%
    2    2.2  0.5  0.5  33.204%   0.010%   0.031%  20.280%   0.001%  46.263%   0.000%   0.120%   0.000%   0.016%
    3    3.2  0.5  0.5   0.019%  33.194%  66.217%   0.105%   0.252%   0.000%   0.120%   0.000%   0.030%   0.000%
    4    4.2  0.5  0.5   0.120%   0.000%   0.000%   0.018%   0.000%   0.074%   0.004%  33.210%   0.000%  66.058%
    5    5.2  0.5  0.5   0.000%   0.120%   0.092%   0.000%   0.000%   0.000%  33.210%   0.004%  21.960%   0.000%
    6    6.2  0.5  0.5   0.120%   0.000%   0.000%   0.028%   0.000%   0.064%   0.008%  33.206%   0.000%  11.844%
    7    1.2  0.5 -0.5   0.019%  33.194%  13.209%   0.020%  53.346%   0.000%   0.120%   0.000%   0.091%   0.000%
    8    2.2  0.5 -0.5   0.010%  33.204%  20.280%   0.031%  46.263%   0.001%   0.120%   0.000%   0.016%   0.000%
    9    3.2  0.5 -0.5  33.194%   0.019%   0.105%  66.217%   0.000%   0.252%   0.000%   0.120%   0.000%   0.030%
   10    4.2  0.5 -0.5   0.000%   0.120%   0.018%   0.000%   0.074%   0.000%  33.210%   0.004%  66.058%   0.000%
   11    5.2  0.5 -0.5   0.120%   0.000%   0.000%   0.092%   0.000%   0.000%   0.004%  33.210%   0.000%  21.960%
   12    6.2  0.5 -0.5   0.000%   0.120%   0.028%   0.000%   0.064%   0.000%  33.206%   0.008%  11.844%   0.000%

   Nr   State  S   Sz      11       12

    1    1.2  0.5  0.5   0.000%   0.001%
    2    2.2  0.5  0.5   0.000%   0.076%
    3    3.2  0.5  0.5   0.062%   0.000%
    4    4.2  0.5  0.5   0.000%   0.516%
    5    5.2  0.5  0.5  44.578%   0.037%
    6    6.2  0.5  0.5   0.059%  54.672%
    7    1.2  0.5 -0.5   0.001%   0.000%
    8    2.2  0.5 -0.5   0.076%   0.000%
    9    3.2  0.5 -0.5   0.000%   0.062%
   10    4.2  0.5 -0.5   0.516%   0.000%
   11    5.2  0.5 -0.5   0.037%  44.578%
   12    6.2  0.5 -0.5  54.672%   0.059%


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
              1      21       37.18       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       6      246.01       700     1000      520     2100     2140     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *     12088.71   7743.48   4343.19      1.10      0.05      0.62
 REAL TIME  *     12290.60 SEC
 DISK USED  *       283.27 MB (local),        1.69 GB (total)
 SF USED    *         2.58 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCVTZ-PP energy=   -172.037777038416

              CI           MULTI         RHF-SCF
   -171.98946659   -171.40902726   -171.33119886
 **********************************************************************************************************************************
 Molpro calculation terminated
