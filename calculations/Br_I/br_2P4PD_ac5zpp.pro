
 Working directory              : /wrk/irikura/molpro.edPF7MJIpV/
 Global scratch directory       : /wrk/irikura/molpro.edPF7MJIpV/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.edPF7MJIpV/

 id        : nistki

 Nodes     nprocs
 comp-18      3
 Distribution of processes:   nprocs(total)=    4   nprocs(compute)=    3   nprocs(helper)=    1
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1042), CPU time= 0.01 sec
 ***,Br SO-CI
                                                                                 ! active space (7/4)
 memory,3000,M;
 
 gprint,orbitals,civector;
                                                                                 !gthresh,energy=1.d-10,coeff=1.d-8;
 
 symmetry,xyz
 geometry={Br};
 
 file,2,acqzpp.wfu,new                                                           !this causes failure in version 2024.1.1
 
 basis=aug-cc-pwCV5Z-PP
 
 {rhf;wf,charge=-1}
 
 NDOUB=3
 NQUAR=8
 
 {multi
     occ,8,9
     closed,6,3
     wf,charge=0,sym=2,spin=1;state,NDOUB;
     wf,charge=0,sym=2,spin=3;state,NQUAR;
     expec2,lxx,lyy,lzz;
 }
 table, energy, ll
 title, Energies and &lt;L**2&gt; values
 
 core,0,0
 
 {ci;wf,sym=2,spin=1;state,NDOUB; save,5203.2}
 hlsdiag = energd4
 {ci;wf,sym=2,spin=3;state,NQUAR; save,5303.2}
 hlsdiag(NDOUB+1) = energd4
 
 table,hlsdiag
 
 {ci;hlsmat,ecp,5203.2,5303.2;print,vls=0,hls=0}                                 !compute and diagonalize SO matrix
 Commands initialized (847), CPU time= 0.01 sec, 718 directives.
 Default parameters read. Elapsed time= 0.12 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2024.1 linked Wed Jan 31 08:33:13 2024


 **********************************************************************************************************************************
 LABEL *   Br SO-CI                                                                                                                                                      
  (16 PROC) 64 bit mpp version                                                           DATE: 26-Jun-24          TIME: 09:31:57  
 **********************************************************************************************************************************

 SHA1:             675817fde4514a4a933b69e420913a90cee4ef91
 **********************************************************************************************************************************

 Memory per process:      3000 MW
 Total memory per node:   9000 MW

 GA preallocation disabled
 GA check disabled

 Variable memory set to 3000.0 MW


 ZSYMEL=XYZ



 Permanent file  2  acqzpp.wfu       assigned.  Implementation=df  



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              2       2       11.50       500      700   
                                          VAR     GEOM   

 PROGRAMS   *        TOTAL      FILE
 CPU TIMES  *         1.80      1.65
 REAL TIME  *        35.18 SEC
 DISK USED  *        23.00 MB (local),       69.01 MB (total)
 **********************************************************************************************************************************
 SETTING BASIS          =    AUG-CC-PWCV5Z-PP


 Recomputing integrals since basis changed


 Using spherical harmonics

 Library entry Br   ECP ECP10MDF                 selected for group  1
 Library entry BR     S aug-cc-pwCV5Z-PP     selected for orbital group  1
 Library entry BR     P aug-cc-pwCV5Z-PP     selected for orbital group  1
 Library entry BR     D aug-cc-pwCV5Z-PP     selected for orbital group  1
 Library entry BR     F aug-cc-pwCV5Z-PP     selected for orbital group  1
 Library entry BR     G aug-cc-pwCV5Z-PP     selected for orbital group  1
 Library entry BR     H aug-cc-pwCV5Z-PP     selected for orbital group  1
 Library entry BR     I aug-cc-pwCV5Z-PP     selected for orbital group  1


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

   1  BR     25.00    0.000000000    0.000000000    0.000000000

 NUCLEAR CHARGE:                   25
 NUMBER OF PRIMITIVE AOS:         465
 NUMBER OF SYMMETRY AOS:          332
 NUMBER OF CONTRACTIONS:          265   (  129Ag  +  136Au  )
 NUMBER OF INNER CORE ORBITALS:     0   (    0Ag  +    0Au  )
 NUMBER OF OUTER CORE ORBITALS:     9   (    6Ag  +    3Au  )
 NUMBER OF VALENCE ORBITALS:        4   (    1Ag  +    3Au  )


 LX: Ag           LY: Ag           LZ: Ag 


 NUCLEAR REPULSION ENERGY    0.00000000

 EXTRA SYMMETRY OF AOS IN SYMMETRY 1:   1 1 1 1 1 1 1 1 1 1   1 1 2 3 4 5 6 2 3 4   5 6 2 3 4 5 6 2 3 4   5 6 2 3 4 5 6 2 3 4
                                        5 6 2 3 4 5 6 2 3 4   5 6 2 3 4 5 6 2 3 4   5 6 7 8 91011121314  15 7 8 9101112131415
                                        7 8 9101112131415 7   8 9101112131415 7 8   9101112131415 7 8 9  10111213141516171819
                                       202122232425262728
 EXTRA SYMMETRY OF AOS IN SYMMETRY 2:   1 2 3 1 2 3 1 2 3 1   2 3 1 2 3 1 2 3 1 2   3 1 2 3 1 2 3 1 2 3   1 2 3 1 2 3 4 5 6 7
                                        8 910 4 5 6 7 8 910   4 5 6 7 8 910 4 5 6   7 8 910 4 5 6 7 8 9  10 4 5 6 7 8 910 4 5
                                        6 7 8 910 4 5 6 7 8   9101112131415161718  19202111121314151617  18192021111213141516
                                       17181920211112131415  161718192021


 Eigenvalues of metric

         1 0.358E-04 0.147E-03 0.542E-03 0.113E-02 0.113E-02 0.113E-02 0.113E-02 0.113E-02
         2 0.224E-04 0.224E-04 0.224E-04 0.516E-03 0.516E-03 0.516E-03 0.338E-02 0.338E-02


 Contracted 2-electron integrals neglected if value below      1.0D-12
 AO integral compression algorithm  1   Integral accuracy      1.0D-12

     554.697 MB (compressed) written to integral file ( 13.6%)

     Node minimum: 176.685 MB, node maximum: 193.987 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:  104294700.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   7  SEGMENT LENGTH:   15998778      RECORD LENGTH: 524288

 Memory used in sort:      16.56 MW

 SORT1 READ   511790813. AND WROTE    17146121. INTEGRALS IN     52 RECORDS. CPU TIME:     1.59 SEC, REAL TIME:     1.87 SEC
 SORT2 READ    53581775. AND WROTE   312900871. INTEGRALS IN   2220 RECORDS. CPU TIME:     0.99 SEC, REAL TIME:     1.16 SEC

 Node minimum:   104288800.  Node maximum:   104317371. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      19       30.46       500      700      610      900      950      970     1000      129      960     1100   
                                          VAR     GEOM    BASINP   SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    

              2       5       11.78       500      700      610     1000      520   
                                          VAR     GEOM    BASINP    BASIS   MCVARS    

 PROGRAMS   *        TOTAL       INT      FILE
 CPU TIMES  *        15.53     13.74      1.65
 REAL TIME  *        50.89 SEC
 DISK USED  *        42.37 MB (local),        1.19 GB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 Program * Restricted Hartree-Fock

 Orbital guess generated from atomic densities.

 Initial occupancy:   7   6

 NELEC=   26   SYM=1   MS2= 0   THRE=1.0D-08   THRD=3.2D-06   THRG=3.2D-06  HFMA2=F  DIIS_START=2   DIIS_MAX=10   DIIS_INCORE=F

 Level shifts:    0.00 (CLOSED)    0.00 (OPEN)    0.30 (GAP_MIN)

 ITER           ETOT              DE          GRAD        DDIFF     DIIS  NEXP   TIME(IT)  TIME(TOT)  DIAG
   1     -415.54383486    -415.54383486     0.00D+00     0.49D-01     0     0       0.40      0.81    start
   2     -415.57584303      -0.03200817     0.35D-02     0.25D-02     1     0       0.42      1.23    diag
   3     -415.57896275      -0.00311972     0.24D-02     0.56D-03     2     0       0.42      1.65    diag
   4     -415.57914137      -0.00017861     0.44D-03     0.21D-03     3     0       0.41      2.06    diag
   5     -415.57917744      -0.00003607     0.89D-04     0.12D-03     4     0       0.41      2.47    diag
   6     -415.57917915      -0.00000171     0.21D-04     0.31D-04     5     0       0.41      2.88    diag
   7     -415.57917920      -0.00000005     0.21D-05     0.69D-05     6     0       0.41      3.29    diag
   8     -415.57917920      -0.00000000     0.33D-06     0.97D-06     7     0       0.42      3.71    fixocc
   9     -415.57917920      -0.00000000     0.73D-07     0.98D-07     0     0       0.41      4.12    diag

 Final occupancy:   7   6

 !RHF STATE 1.1 Energy               -415.579179203884
  RHF One-electron energy            -738.024402868526
  RHF Two-electron energy             322.445223664642
  RHF Kinetic energy                  295.794731113248
  RHF Nuclear energy                    0.000000000000
  RHF Virial quotient                  -1.404958018149

 !RHF STATE 1.1 Dipole moment           0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 ELECTRON ORBITALS
 =================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -9.52314     1  1  s    0.99989
    2.1     2.00000    -2.82152     1  1  d2-  0.97231
    3.1     2.00000    -2.82152     1  1  d1+  0.67057    1  1  d2+  0.59821    1  1  d1- -0.40411
    4.1     2.00000    -2.82152     1  1  d2+  0.30585    1  1  d1-  0.91066
    5.1     2.00000    -2.82152     1  1  d1+ -0.67005    1  1  d2+  0.73533
    6.1     2.00000    -2.82152     1  1  d0   0.99975
    7.1     2.00000    -0.71241     1  1  s   -0.39934    1  5  s    0.50038    1  6  s    0.51355
    1.2     2.00000    -7.27045     1  1  px   1.00004
    2.2     2.00000    -7.27045     1  1  py   1.00003
    3.2     2.00000    -7.27045     1  1  pz   1.00003
    4.2     2.00000    -0.13748     1  1  px  -0.26502    1  4  px   0.26551    1  5  px   0.39262    1  6  px   0.33363
    5.2     2.00000    -0.13748     1  1  py  -0.26037    1  4  py   0.26085    1  5  py   0.38573    1  6  py   0.32777
    6.2     2.00000    -0.13748     1  1  pz  -0.26037    1  4  pz   0.26085    1  5  pz   0.38573    1  6  pz   0.32777


 HOMO      6.2    -0.137478 =      -3.7410eV
 LUMO      7.2     0.191276 =       5.2049eV
 LUMO-HOMO         0.328754 =       8.9458eV

 Orbitals saved in record  2100.2


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      19       30.46       500      700      610      900      950      970     1000      129      960     1100   
                                          VAR     GEOM    BASINP   SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    

              2       6       12.46       500      700      610     1000      520     2100   
                                          VAR     GEOM    BASINP    BASIS   MCVARS     RHF  

 PROGRAMS   *        TOTAL   RHF-SCF       INT      FILE
 CPU TIMES  *        19.65      4.11     13.74      1.65
 REAL TIME  *        55.29 SEC
 DISK USED  *        45.20 MB (local),        1.20 GB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING NDOUB          =         3.00000000                                  
 SETTING NQUAR          =         8.00000000                                  

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of closed-shell orbitals:   9 (    6    3)
 Number of active  orbitals:        8 (    2    6)
 Number of external orbitals:     248 (  121  127)

 State symmetry 1

 Number of active electrons:   7    Spin symmetry=Doublet   Space symmetry=2
 Number of states:             3
 Number of CSFs:            1204   (1980 determinants, 3920 intermediate states)

 State symmetry 2

 Number of active electrons:   7    Spin symmetry=Quartet   Space symmetry=2
 Number of states:             8
 Number of CSFs:             656   (776 determinants, 1568 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  
 *** IN SYMMETRY 1 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.269D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.638D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.432D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.528D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.200D-01 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 3 4 6 5 2 1 1 5 3   2 4 6 1 2 6 4 5 313  10 812 7 9111415 2 6   4 3 5 11310 7 911 8
                                       121415 6 4 2 3 5 111   91310 812 71415 6 4   3 5 2 1 91112 81315  1410 7 2 3 4 6 52623
                                       24192217211628271820  25 1 81211 91514 713  10 3 4 6 5 2 1 3 4 5   6 211 9 714 8121513
                                       10 1 5 6 4 3 2 1 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.214D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.546D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.590D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.160D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.160D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.602D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  9 SYMMETRY CONTAMINATION OF 0.603D-03 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 2 3 1 2 3 3 1 2 3   1 2 9 7 6 5 4 810 3   1 210 8 7 9 6 5 4 3   1 210 8 6 7 9 5 413
                                       21182016141517191112  10 8 5 7 4 9 6 1 2 3  16141820132111171512  19 5 4 810 9 7 6 1 2
                                        3201819141617152113  1211 7 9 5 4 810 6 2   3 1 9 7 5 4 6 81019  21182013121116141517
                                        2 1 3 6 9 7 5 410 8   1 2 3 1 2 3

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.09091   0.09091   0.09091
 Weight factors for state symmetry  2:    0.09091   0.09091   0.09091   0.09091   0.09091   0.09091   0.09091   0.09091
 
 Number of orbital rotations:  2141  ( 30 closed/active, 1107 closed/virtual, 0 active/active, 1004 active/virtual )
 Total number of variables:    14289
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1   14   63    0   -415.14767772    -415.28801993   -0.14034221    0.42098272 0.00300215 0.00184258  0.12E+01      4.11
   2    9   42    0   -415.25076549    -415.25942669   -0.00866120    0.34237664 0.00018204 0.00078761  0.23E+00      8.02
   3    9   42    0   -415.25949615    -415.25949886   -0.00000271    0.00314230 0.00000545 0.00000177  0.18E-01     11.87
   4    5   19    0   -415.25949886    -415.25949886   -0.00000000    0.00000104 0.00000000 0.00000011  0.36E-04     14.89

 CONVERGENCE REACHED!  Final gradient:    0.00000003 ( 0.31E-07)
                       Final energy:   -415.25949886
 
 Results for state 1.2 Doublet
 =============================
 !MCSCF STATE 1.2 Doublet Energy              -415.482811135531
 Nuclear energy                                  0.00000000
 Kinetic energy                                296.10009395
 One electron energy                          -730.59486589
 Two electron energy                           315.11205476
 Virial ratio                                    2.40318365
 
 !MCSCF STATE 1.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.2 Doublet
 =============================
 !MCSCF STATE 2.2 Doublet Energy              -415.482811135530
 Nuclear energy                                  0.00000000
 Kinetic energy                                296.10009395
 One electron energy                          -730.59486589
 Two electron energy                           315.11205476
 Virial ratio                                    2.40318365
 
 !MCSCF STATE 2.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.2 Doublet
 =============================
 !MCSCF STATE 3.2 Doublet Energy              -415.482811135530
 Nuclear energy                                  0.00000000
 Kinetic energy                                296.10009395
 One electron energy                          -730.59486589
 Two electron energy                           315.11205476
 Virial ratio                                    2.40318365
 
 !MCSCF STATE 3.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.2 Quartet
 =============================
 !MCSCF STATE 1.2 Quartet Energy              -415.180605170491
 Nuclear energy                                  0.00000000
 Kinetic energy                                295.31113675
 One electron energy                          -723.30719610
 Two electron energy                           308.12659093
 Virial ratio                                    2.40590907
 
 !MCSCF STATE 1.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.2 Quartet
 =============================
 !MCSCF STATE 2.2 Quartet Energy              -415.180605170491
 Nuclear energy                                  0.00000000
 Kinetic energy                                295.31113675
 One electron energy                          -723.30719610
 Two electron energy                           308.12659093
 Virial ratio                                    2.40590907
 
 !MCSCF STATE 2.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.2 Quartet
 =============================
 !MCSCF STATE 3.2 Quartet Energy              -415.180605170490
 Nuclear energy                                  0.00000000
 Kinetic energy                                295.31113675
 One electron energy                          -723.30719610
 Two electron energy                           308.12659093
 Virial ratio                                    2.40590907
 
 !MCSCF STATE 3.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.2 Quartet
 =============================
 !MCSCF STATE 4.2 Quartet Energy              -415.172847708355
 Nuclear energy                                  0.00000000
 Kinetic energy                                295.32275965
 One electron energy                          -723.34859471
 Two electron energy                           308.17574700
 Virial ratio                                    2.40582747
 
 !MCSCF STATE 4.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.2 Quartet
 =============================
 !MCSCF STATE 5.2 Quartet Energy              -415.172847708355
 Nuclear energy                                  0.00000000
 Kinetic energy                                295.32275965
 One electron energy                          -723.34859471
 Two electron energy                           308.17574700
 Virial ratio                                    2.40582747
 
 !MCSCF STATE 5.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.2 Quartet
 =============================
 !MCSCF STATE 6.2 Quartet Energy              -415.172847708355
 Nuclear energy                                  0.00000000
 Kinetic energy                                295.32275965
 One electron energy                          -723.34859471
 Two electron energy                           308.17574700
 Virial ratio                                    2.40582747
 
 !MCSCF STATE 6.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.2 Quartet
 =============================
 !MCSCF STATE 7.2 Quartet Energy              -415.172847708354
 Nuclear energy                                  0.00000000
 Kinetic energy                                295.32275965
 One electron energy                          -723.34859471
 Two electron energy                           308.17574700
 Virial ratio                                    2.40582747
 
 !MCSCF STATE 7.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.2 Quartet
 =============================
 !MCSCF STATE 8.2 Quartet Energy              -415.172847708353
 Nuclear energy                                  0.00000000
 Kinetic energy                                295.32275965
 One electron energy                          -723.34859471
 Two electron energy                           308.17574700
 Virial ratio                                    2.40582747
 
 !MCSCF STATE 8.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 ? Warning
 ? Transition properties are only calculated between states of the same symmetry
 ? The problem occurs in mu_properties_expec2

 !MCSCF expec      <1.2 Doublet|LXLX|1.2 Doublet>     0.999989377072
 !MCSCF expec      <2.2 Doublet|LXLX|2.2 Doublet>     0.147509228724
 !MCSCF expec      <3.2 Doublet|LXLX|3.2 Doublet>     0.852501394204
 !MCSCF expec      <1.2 Quartet|LXLX|1.2 Quartet>     0.181242504643
 !MCSCF expec      <2.2 Quartet|LXLX|2.2 Quartet>     0.818758878117
 !MCSCF expec      <3.2 Quartet|LXLX|3.2 Quartet>     0.999998617241
 !MCSCF expec      <4.2 Quartet|LXLX|4.2 Quartet>     1.028496991992
 !MCSCF expec      <5.2 Quartet|LXLX|5.2 Quartet>     3.971165829159
 !MCSCF expec      <6.2 Quartet|LXLX|6.2 Quartet>     2.994176089504
 !MCSCF expec      <7.2 Quartet|LXLX|7.2 Quartet>     1.000017423093
 !MCSCF expec      <8.2 Quartet|LXLX|8.2 Quartet>     1.006143666252
 
 !MCSCF expec      <1.2 Doublet|LYLY|1.2 Doublet>     0.999992265350
 !MCSCF expec      <2.2 Doublet|LYLY|2.2 Doublet>     0.852507396725
 !MCSCF expec      <3.2 Doublet|LYLY|3.2 Doublet>     0.147500337924
 !MCSCF expec      <1.2 Quartet|LYLY|1.2 Quartet>     0.818759285934
 !MCSCF expec      <2.2 Quartet|LYLY|2.2 Quartet>     0.181241128603
 !MCSCF expec      <3.2 Quartet|LYLY|3.2 Quartet>     0.999999585463
 !MCSCF expec      <4.2 Quartet|LYLY|4.2 Quartet>     3.971515805658
 !MCSCF expec      <5.2 Quartet|LYLY|5.2 Quartet>     1.028881599273
 !MCSCF expec      <6.2 Quartet|LYLY|6.2 Quartet>     3.005655631446
 !MCSCF expec      <7.2 Quartet|LYLY|7.2 Quartet>     1.000027618001
 !MCSCF expec      <8.2 Quartet|LYLY|8.2 Quartet>     0.993919345621
 
 !MCSCF expec      <1.2 Doublet|LZLZ|1.2 Doublet>     0.000018357577
 !MCSCF expec      <2.2 Doublet|LZLZ|2.2 Doublet>     0.999983374550
 !MCSCF expec      <3.2 Doublet|LZLZ|3.2 Doublet>     0.999998267872
 !MCSCF expec      <1.2 Quartet|LZLZ|1.2 Quartet>     0.999998209423
 !MCSCF expec      <2.2 Quartet|LZLZ|2.2 Quartet>     0.999999993280
 !MCSCF expec      <3.2 Quartet|LZLZ|3.2 Quartet>     0.000001797296
 !MCSCF expec      <4.2 Quartet|LZLZ|4.2 Quartet>     0.999987202349
 !MCSCF expec      <5.2 Quartet|LZLZ|5.2 Quartet>     0.999952571568
 !MCSCF expec      <6.2 Quartet|LZLZ|6.2 Quartet>     0.000168279050
 !MCSCF expec      <7.2 Quartet|LZLZ|7.2 Quartet>     3.999954958906
 !MCSCF expec      <8.2 Quartet|LZLZ|8.2 Quartet>     3.999936988127
 
 !MCSCF expec      <1.2 Doublet|L**2|1.2 Doublet>     2.000000000000
 !MCSCF expec      <2.2 Doublet|L**2|2.2 Doublet>     2.000000000000
 !MCSCF expec      <3.2 Doublet|L**2|3.2 Doublet>     2.000000000000
 !MCSCF expec      <1.2 Quartet|L**2|1.2 Quartet>     2.000000000000
 !MCSCF expec      <2.2 Quartet|L**2|2.2 Quartet>     2.000000000000
 !MCSCF expec      <3.2 Quartet|L**2|3.2 Quartet>     2.000000000000
 !MCSCF expec      <4.2 Quartet|L**2|4.2 Quartet>     6.000000000000
 !MCSCF expec      <5.2 Quartet|L**2|5.2 Quartet>     6.000000000000
 !MCSCF expec      <6.2 Quartet|L**2|6.2 Quartet>     6.000000000000
 !MCSCF expec      <7.2 Quartet|L**2|7.2 Quartet>     6.000000000000
 !MCSCF expec      <8.2 Quartet|L**2|8.2 Quartet>     6.000000000000
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 3 5 4 6 2 1 1 1 2   3 5 4 6 2 3 5 4 6 1  131011 9 812 71415 2   4 6 3 51310 711 9 8
                                       121415 4 6 2 3 5 1 9  111310 7 8121415 6 4   3 5 2 111 913101415   812 7 6 4 3 5 22326
                                       24192216172120182827  25 1 7 812141511 913  10 3 5 4 6 2 1 5 3 6   4 2 7 911 812141513
                                       10 1 2 5 3 6 4 1 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 2 3 3 2 1 3 2 1 3   2 1 9 7 4 5 6 810 3   2 1 810 9 7 6 4 5 3   1 210 8 6 9 7 4 513
                                       21182014161915171112  10 8 9 7 4 5 6 1 2 3  14161321182011121715  19 810 5 4 7 9 6 1 2
                                        3182019141615171112  2113 7 9 4 5 810 6 1   2 3 7 9 4 5 6 81021  13191820111214161517
                                        1 2 3 6 4 5 7 9 810   1 3 2 1 3 2
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000   -10.03783     1  1  s    0.98987
    2.1     2.00000    -3.34010     1  1  d2-  1.00027
    3.1     2.00000    -3.34010     1  1  d2+  1.00027
    4.1     2.00000    -3.34010     1  1  d1+  1.00027
    5.1     2.00000    -3.34010     1  1  d1-  1.00027
    6.1     2.00000    -3.34010     1  1  d0   1.00027
    7.1     1.99775    -1.16824     1  1  s   -0.44361    1  5  s    0.57288    1  6  s    0.54669
    8.1     0.00254     0.57899     1  1  s    0.49206    1  3  s    0.48637    1  4  s   -0.78697    1  5  s   -1.63271
                                    1  6  s    1.15882    1  7  s    0.58514
    1.2     2.00000    -7.78854     1  1  px   0.99972
    2.2     2.00000    -7.78854     1  1  py   0.99972
    3.2     2.00000    -7.78854     1  1  pz   0.99972
    4.2     1.42185    -0.48138     1  1  pz  -0.29990    1  4  pz   0.31414    1  5  pz   0.48334    1  6  pz   0.30531
    5.2     1.42185    -0.48138     1  1  py  -0.29990    1  4  py   0.31414    1  5  py   0.48334    1  6  py   0.30531
    6.2     1.42185    -0.48138     1  1  px  -0.29990    1  4  px   0.31414    1  5  px   0.48334    1  6  px   0.30531
    7.2     0.24472     0.04256     1 12  pz   1.10443
    8.2     0.24472     0.04256     1 12  py   1.10443
    9.2     0.24472     0.04256     1 12  px   1.10443
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 2 (Doublet)
 =======================================
 
 20 a22000      0.99051021      0.00403877      0.00130363
 20 2a2000     -0.00275476      0.38040662      0.91455547
 20 22a000     -0.00322838      0.91455070     -0.38041436
 20 a2a00b      0.06391808      0.00026062      0.00008412
 20 aa20b0      0.06391808      0.00026062      0.00008412
 20 2aa00b     -0.00017777      0.02454782      0.05901669
 20 aa2b00      0.00017777     -0.02454782     -0.05901669
 20 2aa0b0      0.00020833     -0.05901638      0.02454831
 20 a2ab00      0.00020833     -0.05901638      0.02454831
 
 Energy:     -415.48281114   -415.48281114   -415.48281114
 
 
 CI Coefficients of symmetry 2 (Quartet)
 =======================================

 State:              1               2               3               4               5               6               7
 20 2aaa00      0.00000000      0.00000000     -0.00000000      0.00321074      0.00895640      0.81463891      0.00183767
 20 a2a0a0     -0.00000000     -0.00000000     -0.00000000      0.00173545      0.00157188      0.40611352     -0.00026305
 20 a2a00a     -0.00094414     -0.00005784      0.70556992     -0.00066086      0.00193329      0.00157498     -0.70554330
 20 aa20a0     -0.00094414     -0.00005784      0.70556992      0.00066086     -0.00193329     -0.00157498      0.70554330
 20 aa200a     -0.00000000     -0.00000000     -0.00000000     -0.00147529     -0.00738452     -0.40852538     -0.00210072
 20 2aa00a     -0.30037814     -0.63843760     -0.00045428      0.70218813     -0.06874791     -0.00200905     -0.00084989
 20 aa2a00      0.30037814      0.63843760      0.00045428      0.70218813     -0.06874791     -0.00200905     -0.00084989
 20 2aa0a0      0.63843706     -0.30037848      0.00082969     -0.06872425     -0.70214013      0.00799960     -0.00183697
 20 a2aa00      0.63843706     -0.30037848      0.00082969      0.06872425      0.70214013     -0.00799960      0.00183697
 
 Energy:     -415.18060517   -415.18060517   -415.18060517   -415.17284771   -415.17284771   -415.17284771   -415.17284771

 State:              8
 20 2aaa00      0.00143178
 20 a2a0a0      0.70625686
 20 a2a00a     -0.00117111
 20 aa20a0      0.00117111
 20 aa200a      0.70482508
 20 2aa00a     -0.00041751
 20 aa2a00     -0.00041751
 20 2aa0a0     -0.00286905
 20 a2aa00      0.00286905
 
 Energy:     -415.17284771
 


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       93.78       500      700      610      900      950      970     1000      129      960     1100   
                                          VAR     GEOM    BASINP   SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       7       13.91       500      700      610     1000      520     2100     2140   
                                          VAR     GEOM    BASINP    BASIS   MCVARS     RHF     MCSCF   

 PROGRAMS   *        TOTAL     MULTI   RHF-SCF       INT      FILE
 CPU TIMES  *        32.49     12.85      4.11     13.74      1.65
 REAL TIME  *        72.63 SEC
 DISK USED  *       107.82 MB (local),        1.39 GB (total)
 SF USED    *       169.95 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

         ENERGY     LL
    -415.4828111   2.0
    -415.4828111   2.0
    -415.4828111   2.0
    -415.1806052   2.0
    -415.1806052   2.0
    -415.1806052   2.0
    -415.1728477   6.0
    -415.1728477   6.0
    -415.1728477   6.0
    -415.1728477   6.0
    -415.1728477   6.0
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 3  Roots:    1   2   3
 Number of reference states: 3  Roots:    1   2   3

 Reference symmetry:                   2   Doublet 
 Number of electrons:                 25
 Maximum number of shells:             7
 Maximum number of spin couplings:   429

 Reference space:      554 conf     1204 CSFs
 N elec internal:    56699 conf   278292 CSFs
 N-1 el internal:    59743 conf   501108 CSFs
 N-2 el internal:    32490 conf   411156 CSFs

 Number of electrons in valence space:                     25
 Maximum number of open shell orbitals in reference space:  7
 Maximum number of open shell orbitals in internal spaces: 13


 Number of closed-shell orbitals:   9 (   6   3 )
 Number of active  orbitals:        8 (   2   6 )
 Number of external orbitals:     248 ( 121 127 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Valence orbitals related to previous ones by unitary transformation. Operators transformed.


 Number of p-space configurations:  30

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -415.48281114
     2      -415.48281114
     3      -415.48281114

 Number of blocks in overlap matrix:   383   Smallest eigenvalue:  0.19D-06
 Number of N-2 electron functions:     867
 Number of N-1 electron functions:  501108

 Number of internal configurations:               139300
 Number of singly external configurations:      62139036
 Number of doubly external configurations:      13337343
 Total number of contracted configurations:     75615679
 Total number of uncontracted configurations: 6376743232

 Diagonal Coupling coefficients finished.               Storage:  64529615 words, CPU-Time:    192.81 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   7296526 words, CPU-time:      1.08 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -415.48281114     0.00000000    -1.22003488  0.40D-01  0.69D-01   229.00
    1     2     2     1.00000000     0.00000000  -415.48281114     0.00000000    -1.22003858  0.40D-01  0.69D-01   229.00
    1     3     3     1.00000000     0.00000000  -415.48281114     0.00000000    -1.22005669  0.40D-01  0.69D-01   229.00
    2     1     1     1.07920471    -1.04240779  -416.52521892    -1.04240779    -0.02719178  0.51D-02  0.98D-03  3732.39
    2     2     2     1.07921208    -1.04239950  -416.52521063    -1.04239950    -0.02720015  0.51D-02  0.98D-03  3732.39
    2     3     3     1.07920897    -1.04239919  -416.52521033    -1.04239919    -0.02719762  0.51D-02  0.98D-03  3732.39
    3     1     1     1.06538036    -1.06787618  -416.55068732    -0.02546839    -0.00057384  0.60D-04  0.48D-04  7314.30
    3     2     2     1.06538273    -1.06787579  -416.55068693    -0.02547629    -0.00057412  0.60D-04  0.49D-04  7314.30
    3     3     3     1.06538326    -1.06787576  -416.55068690    -0.02547657    -0.00057413  0.60D-04  0.49D-04  7314.30
    4     1     1     1.06514416    -1.06847896  -416.55129010    -0.00060278    -0.00002651  0.10D-05  0.34D-05 10897.78
    4     2     2     1.06514435    -1.06847892  -416.55129006    -0.00060313    -0.00002654  0.10D-05  0.34D-05 10897.78
    4     3     3     1.06514446    -1.06847892  -416.55129005    -0.00060315    -0.00002654  0.10D-05  0.34D-05 10897.78
    5     1     1     1.06541013    -1.06850944  -416.55132057    -0.00003047    -0.00000153  0.54D-07  0.20D-06 14477.74
    5     2     2     1.06540996    -1.06850943  -416.55132057    -0.00003051    -0.00000153  0.54D-07  0.20D-06 14477.74
    5     3     3     1.06540991    -1.06850943  -416.55132057    -0.00003052    -0.00000153  0.54D-07  0.20D-06 14477.74
    6     1     1     1.06545531    -1.06851126  -416.55132240    -0.00000182    -0.00000010  0.63D-08  0.12D-07 18055.18
    6     2     2     1.06545529    -1.06851126  -416.55132240    -0.00000183    -0.00000010  0.63D-08  0.12D-07 18055.18
    6     3     3     1.06545530    -1.06851126  -416.55132240    -0.00000183    -0.00000010  0.63D-08  0.12D-07 18055.18
    7     1     1     1.06546277    -1.06851138  -416.55132251    -0.00000012    -0.00000001  0.34D-09  0.86D-09 21648.47
    7     2     2     1.06546277    -1.06851138  -416.55132251    -0.00000012    -0.00000001  0.34D-09  0.86D-09 21648.47
    7     3     3     1.06546277    -1.06851138  -416.55132251    -0.00000012    -0.00000001  0.34D-09  0.86D-09 21648.47


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.4%
 S   0.3%  36.7%
 P   0.2%  53.5%   5.9%

 Initialization:   0.9%
 Other:            2.2%

 Total CPU:    21648.5 seconds
 =====================================



 Wavefunction saved on  5203.2

 Reference coefficients greater than 0.0500000
 =============================================
 222222202222/2000           0.1433364   0.9475335   0.0806752
 2222222022222/000           0.7782236  -0.0699881  -0.5606633
 22222220222/22000           0.5465312  -0.1488471   0.7771884
 222222202222//00\           0.0100016   0.0661159   0.0056293
 22222220222//2\00          -0.0100016  -0.0661159  -0.0056293
 222222202222//0\0          -0.0543020   0.0048836   0.0391213
 22222220222/2/\00          -0.0543020   0.0048836   0.0391213
 22222220222/2/00\           0.0381352  -0.0103861   0.0542297
 22222220222//20\0           0.0381352  -0.0103861   0.0542297

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.550446    0.783798    0.144363
 2          -0.149913   -0.070490    0.954321
 3           0.782756   -0.564680    0.081253

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.968593    0.000000   -0.000000
 2           0.000000    0.968593    0.000000
 3          -0.000000    0.000000    0.968593


 RESULTS FOR STATE 1.2
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.78379836 (fixed)   0.96876687 (relaxed)   0.96859260 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00041323   -0.00051532   -0.80188094
 Singles      0.01239641   -0.06468835   -0.07311338
 Pairs        0.05309341   -0.14953724   -0.19351706
 Total        1.06590305   -0.21474091   -1.06851138
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -415.48281114
 Nuclear energy                         0.00000000
 Kinetic energy                       296.40489303
 One electron energy                 -729.22965478
 Two electron energy                  312.67833226
 Virial quotient                       -1.40534563
 Correlation energy                    -1.06851138
 !MRCI STATE 1.2 Energy              -416.551322512721

 Properties without orbital relaxation:

 !MRCI STATE 1.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -416.62174067 (Davidson, fixed reference)
 Cluster corrected energies          -416.62133095 (Davidson, relaxed reference)
 Cluster corrected energies          -416.62174067 (Davidson, rotated reference)

 Cluster corrected energies          -416.61959818 (Pople, fixed reference)
 Cluster corrected energies          -416.61917829 (Pople, relaxed reference)
 Cluster corrected energies          -416.61959818 (Pople, rotated reference)



 RESULTS FOR STATE 2.2
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.95432114 (fixed)   0.96876687 (relaxed)   0.96859260 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00041323   -0.00051532   -0.01476666
 Singles      0.01239641   -0.06468835   -0.07311338
 Pairs        0.05309341   -0.98852475   -0.98063134
 Total        1.06590305   -1.05372842   -1.06851138
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -415.48281114
 Nuclear energy                         0.00000000
 Kinetic energy                       296.40489297
 One electron energy                 -729.22965488
 Two electron energy                  312.67833236
 Virial quotient                       -1.40534563
 Correlation energy                    -1.06851138
 !MRCI STATE 2.2 Energy              -416.551322512600

 Properties without orbital relaxation:

 !MRCI STATE 2.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -416.62174067 (Davidson, fixed reference)
 Cluster corrected energies          -416.62133095 (Davidson, relaxed reference)
 Cluster corrected energies          -416.62174067 (Davidson, rotated reference)

 Cluster corrected energies          -416.61959818 (Pople, fixed reference)
 Cluster corrected energies          -416.61917829 (Pople, relaxed reference)
 Cluster corrected energies          -416.61959818 (Pople, rotated reference)



 RESULTS FOR STATE 3.2
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.78275575 (fixed)   0.96876687 (relaxed)   0.96859260 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00041323   -0.00051532   -0.86321103
 Singles      0.01239641   -0.06468834   -0.07311338
 Pairs        0.05309342   -0.08416530   -0.13218696
 Total        1.06590305   -0.14936897   -1.06851138
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -415.48281114
 Nuclear energy                         0.00000000
 Kinetic energy                       296.40489292
 One electron energy                 -729.22965467
 Two electron energy                  312.67833216
 Virial quotient                       -1.40534564
 Correlation energy                    -1.06851138
 !MRCI STATE 3.2 Energy              -416.551322512499

 Properties without orbital relaxation:

 !MRCI STATE 3.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -416.62174068 (Davidson, fixed reference)
 Cluster corrected energies          -416.62133096 (Davidson, relaxed reference)
 Cluster corrected energies          -416.62174068 (Davidson, rotated reference)

 Cluster corrected energies          -416.61959818 (Pople, fixed reference)
 Cluster corrected energies          -416.61917829 (Pople, relaxed reference)
 Cluster corrected energies          -416.61959818 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       93.78       500      700      610      900      950      970     1000      129      960     1100   
                                          VAR     GEOM    BASINP   SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       8     1754.54       500      700      610     1000      520     2100     2140     5203   
                                          VAR     GEOM    BASINP    BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT      FILE
 CPU TIMES  *     22059.08  22026.59     12.85      4.11     13.74      1.65
 REAL TIME  *     22402.79 SEC
 DISK USED  *         1.81 GB (local),        6.49 GB (total)
 SF USED    *        18.78 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =      -416.62174067  AU                              
 SETTING HLSDIAG(2)     =      -416.62174067  AU                              
 SETTING HLSDIAG(3)     =      -416.62174068  AU                              


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 8  Roots:    1   2   3   4   5   6   7   8
 Number of reference states: 8  Roots:    1   2   3   4   5   6   7   8

 Reference symmetry:                   2   Quartet 
 Number of electrons:                 25
 Maximum number of shells:             6
 Maximum number of spin couplings:   572

 Reference space:      344 conf      656 CSFs
 N elec internal:    52189 conf   229224 CSFs
 N-1 el internal:    51137 conf   453552 CSFs
 N-2 el internal:    21984 conf   385640 CSFs

 Number of electrons in valence space:                     25
 Maximum number of open shell orbitals in reference space:  7
 Maximum number of open shell orbitals in internal spaces: 13


 Number of closed-shell orbitals:   9 (   6   3 )
 Number of active  orbitals:        8 (   2   6 )
 Number of external orbitals:     248 ( 121 127 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Coulomb and exchange operators available. No transformation done.


 Number of p-space configurations:   9

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -415.18060517
     2      -415.18060517
     3      -415.18060517
     4      -415.17284771
     5      -415.17284771
     6      -415.17284771
     7      -415.17284771
     8      -415.17284771

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2856D-06

 Number of blocks in overlap matrix:   803   Smallest eigenvalue:  0.29D-06
 Number of N-2 electron functions:    2252
 Number of N-1 electron functions:  453552

 Number of internal configurations:               114452
 Number of singly external configurations:      56243520
 Number of doubly external configurations:      34635708
 Total number of contracted configurations:     90993680
 Total number of uncontracted configurations: 5975322824

 Diagonal Coupling coefficients finished.               Storage:  86403831 words, CPU-Time:    985.32 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:  10286474 words, CPU-time:      2.91 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -415.18060517    -0.00000000    -1.17861632  0.33D-01  0.59D-01  1076.61
    1     2     2     1.00000000     0.00000000  -415.18060517     0.00000000    -1.17869198  0.33D-01  0.59D-01  1076.61
    1     3     3     1.00000000     0.00000000  -415.18060517    -0.00000000    -1.17883989  0.33D-01  0.59D-01  1076.61
    1     4     4     1.00000000     0.00000000  -415.17284771    -0.00000000    -1.18021256  0.35D-01  0.59D-01  1076.61
    1     5     5     1.00000000     0.00000000  -415.17284771     0.00000000    -1.18026011  0.35D-01  0.59D-01  1076.61
    1     6     6     1.00000000     0.00000000  -415.17284771     0.00000000    -1.18055649  0.35D-01  0.59D-01  1076.61
    1     7     7     1.00000000     0.00000000  -415.17284771    -0.00000000    -1.18036100  0.35D-01  0.59D-01  1076.61
    1     8     8     1.00000000     0.00000000  -415.17284771     0.00000000    -1.18429439  0.35D-01  0.62D-01  1076.61
    2     1     1     1.06928547    -1.02063479  -416.20123996    -1.02063479    -0.02156559  0.25D-02  0.98D-03 16315.65
    2     2     2     1.06936275    -1.02058070  -416.20118587    -1.02058070    -0.02163815  0.26D-02  0.98D-03 16315.65
    2     3     3     1.06928315    -1.02057504  -416.20118021    -1.02057504    -0.02162638  0.26D-02  0.99D-03 16315.65
    2     4     4     1.07042455    -1.02130324  -416.19415095    -1.02130324    -0.02200361  0.29D-02  0.97D-03 16315.65
    2     5     5     1.07036634    -1.02106417  -416.19391188    -1.02106417    -0.02216842  0.29D-02  0.98D-03 16315.65
    2     6     6     1.07044469    -1.02102087  -416.19386858    -1.02102087    -0.02222725  0.29D-02  0.98D-03 16315.65
    2     7     7     1.07040809    -1.02101552  -416.19386323    -1.02101552    -0.02223639  0.29D-02  0.99D-03 16315.65
    2     8     8     1.07163105    -1.02064963  -416.19349733    -1.02064963    -0.02276887  0.29D-02  0.12D-02 16315.65
    3     1     1     1.05915816    -1.04103024  -416.22163541    -0.02039545    -0.00050103  0.33D-04  0.50D-04 31544.11
    3     2     2     1.05914824    -1.04102557  -416.22163074    -0.02044486    -0.00050351  0.33D-04  0.50D-04 31544.11
    3     3     3     1.05913003    -1.04102385  -416.22162902    -0.02044881    -0.00050513  0.33D-04  0.51D-04 31544.11
    3     4     4     1.05975855    -1.04215999  -416.21500770    -0.02085675    -0.00049071  0.39D-04  0.48D-04 31544.11
    3     5     5     1.05962986    -1.04213267  -416.21498037    -0.02106849    -0.00050629  0.42D-04  0.48D-04 31544.11
    3     6     6     1.05952515    -1.04209022  -416.21493793    -0.02106934    -0.00053117  0.42D-04  0.52D-04 31544.11
    3     7     7     1.05953352    -1.04208893  -416.21493664    -0.02107341    -0.00053146  0.42D-04  0.52D-04 31544.11
    3     8     8     1.05952254    -1.04208393  -416.21493163    -0.02143430    -0.00053410  0.42D-04  0.53D-04 31544.11
    4     1     1     1.05926514    -1.04159561  -416.22220078    -0.00056536    -0.00004557  0.20D-05  0.56D-05 46780.30
    4     2     2     1.05925706    -1.04159509  -416.22220026    -0.00056952    -0.00004611  0.20D-05  0.57D-05 46780.30
    4     3     3     1.05925922    -1.04159473  -416.22219990    -0.00057088    -0.00004621  0.20D-05  0.57D-05 46780.30
    4     4     4     1.05970093    -1.04270175  -416.21554945    -0.00054176    -0.00004023  0.18D-05  0.52D-05 46780.30
    4     5     5     1.05967149    -1.04269859  -416.21554630    -0.00056592    -0.00004301  0.19D-05  0.54D-05 46780.30
    4     6     6     1.05962694    -1.04269192  -416.21553963    -0.00060170    -0.00004790  0.21D-05  0.59D-05 46780.30
    4     7     7     1.05962549    -1.04269122  -416.21553893    -0.00060229    -0.00004826  0.21D-05  0.60D-05 46780.30
    4     8     8     1.05961999    -1.04269032  -416.21553803    -0.00060639    -0.00004890  0.22D-05  0.60D-05 46780.30
    5     1     1     1.05975499    -1.04165313  -416.22225830    -0.00005752    -0.00000423  0.22D-06  0.43D-06 62042.11
    5     2     2     1.05975514    -1.04165310  -416.22225827    -0.00005801    -0.00000422  0.22D-06  0.43D-06 62042.11
    5     3     3     1.05975502    -1.04165305  -416.22225822    -0.00005832    -0.00000427  0.22D-06  0.43D-06 62042.11
    5     4     4     1.06013429    -1.04275245  -416.21560015    -0.00005070    -0.00000392  0.21D-06  0.42D-06 62042.11
    5     5     5     1.06013539    -1.04275233  -416.21560004    -0.00005374    -0.00000395  0.20D-06  0.43D-06 62042.11
    5     6     6     1.06013229    -1.04275211  -416.21559982    -0.00006019    -0.00000439  0.24D-06  0.45D-06 62042.11
    5     7     7     1.06013230    -1.04275201  -416.21559971    -0.00006078    -0.00000445  0.24D-06  0.45D-06 62042.11
    5     8     8     1.06013201    -1.04275193  -416.21559964    -0.00006161    -0.00000450  0.24D-06  0.46D-06 62042.11
    6     1     1     1.05980709    -1.04165819  -416.22226337    -0.00000506    -0.00000034  0.16D-07  0.39D-07 77315.95
    6     2     2     1.05980708    -1.04165816  -416.22226333    -0.00000506    -0.00000034  0.15D-07  0.38D-07 77315.95
    6     3     3     1.05980711    -1.04165815  -416.22226332    -0.00000510    -0.00000034  0.16D-07  0.38D-07 77315.95
    6     4     4     1.06018830    -1.04275736  -416.21560507    -0.00000491    -0.00000036  0.19D-07  0.40D-07 77315.95
    6     5     5     1.06018813    -1.04275732  -416.21560503    -0.00000499    -0.00000036  0.20D-07  0.40D-07 77315.95
    6     6     6     1.06018801    -1.04275730  -416.21560501    -0.00000520    -0.00000037  0.20D-07  0.41D-07 77315.95
    6     7     7     1.06019042    -1.04275722  -416.21560493    -0.00000521    -0.00000034  0.18D-07  0.38D-07 77315.95
    6     8     8     1.06019163    -1.04275711  -416.21560482    -0.00000518    -0.00000033  0.18D-07  0.38D-07 77315.95
    7     1     1     1.05981292    -1.04165860  -416.22226377    -0.00000040    -0.00000004  0.18D-08  0.47D-08 92586.97
    7     2     2     1.05981278    -1.04165856  -416.22226373    -0.00000040    -0.00000004  0.18D-08  0.47D-08 92586.97
    7     3     3     1.05981290    -1.04165855  -416.22226372    -0.00000040    -0.00000004  0.18D-08  0.46D-08 92586.97
    7     4     4     1.06019554    -1.04275778  -416.21560549    -0.00000042    -0.00000004  0.20D-08  0.49D-08 92586.97
    7     5     5     1.06019536    -1.04275774  -416.21560545    -0.00000042    -0.00000004  0.20D-08  0.49D-08 92586.97
    7     6     6     1.06019524    -1.04275773  -416.21560544    -0.00000042    -0.00000004  0.20D-08  0.49D-08 92586.97
    7     7     7     1.06019634    -1.04275762  -416.21560533    -0.00000040    -0.00000004  0.19D-08  0.48D-08 92586.97
    7     8     8     1.06019696    -1.04275750  -416.21560521    -0.00000039    -0.00000004  0.19D-08  0.48D-08 92586.97


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.2%
 S   0.2%  22.4%
 P   0.1%  58.2%  14.1%

 Initialization:   1.1%
 Other:            3.6%

 Total CPU:    92587.0 seconds
 =====================================



 Wavefunction saved on  5303.2

 Reference coefficients greater than 0.0500000
 =============================================
 22222220222/2/0/0           0.0000000   0.0000000  -0.0000000  -0.0002444   0.0000008   0.0001752   0.0063152   0.7908781
 222222202222///00           0.0000000  -0.0000000  -0.0000000  -0.0003915   0.0001175  -0.0002866   0.6880781   0.3899702
 22222220222//2/00           0.6850966  -0.0000000   0.0000719   0.6849416  -0.0010035   0.0002519   0.0002713   0.0002094
 222222202222//00/          -0.6850950   0.0000000  -0.0000719   0.6849427  -0.0010035   0.0002519   0.0002713   0.0002094
 22222220222/2//00          -0.0000005   0.6850797   0.0049391  -0.0002448   0.0048890   0.6849239   0.0003721  -0.0001547
 22222220222/2/00/          -0.0000719  -0.0049391   0.6850796  -0.0010053  -0.6849233   0.0048886   0.0001194  -0.0000016
 22222220222//20/0          -0.0000719  -0.0049391   0.6850764   0.0010053   0.6849264  -0.0048886  -0.0001194   0.0000016
 222222202222//0/0          -0.0000005   0.6850763   0.0049391   0.0002448  -0.0048890  -0.6849271  -0.0003721   0.0001547
 22222220222//200/          -0.0000000   0.0000000  -0.0000000   0.0001471  -0.0001167   0.0004618  -0.6817634   0.4009082

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.971276   -0.000001   -0.000102   -0.000000    0.000001    0.000000   -0.000000    0.000000
 2          -0.000000    0.971251   -0.007002    0.000002   -0.000000   -0.000000    0.000000    0.000000
 3           0.000102    0.007002    0.971251    0.000000    0.000000    0.000000   -0.000002   -0.000000
 4          -0.000001    0.000000    0.000000   -0.000347    0.971099   -0.000382    0.001425   -0.000300
 5           0.000000   -0.000000    0.000002    0.006932   -0.001423    0.000166    0.971075    0.000001
 6           0.000000   -0.000002   -0.000000    0.971075    0.000357   -0.000531   -0.006931    0.000215
 7          -0.000000    0.000000   -0.000000    0.000527    0.000385    0.971069   -0.000169    0.007692
 8          -0.000000   -0.000000    0.000000   -0.000219    0.000297   -0.007692    0.000002    0.971069

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.971276    0.000000   -0.000000    0.000000   -0.000000    0.000000    0.000000    0.000000
 2           0.000000    0.971276    0.000000   -0.000000    0.000000    0.000000    0.000000   -0.000000
 3          -0.000000    0.000000    0.971276    0.000000   -0.000000    0.000000    0.000000   -0.000000
 4           0.000000   -0.000000    0.000000    0.971100    0.000000   -0.000000    0.000000    0.000000
 5          -0.000000    0.000000   -0.000000    0.000000    0.971100    0.000000   -0.000000   -0.000000
 6           0.000000    0.000000    0.000000   -0.000000    0.000000    0.971100    0.000000   -0.000000
 7           0.000000    0.000000    0.000000    0.000000   -0.000000    0.000000    0.971100    0.000000
 8           0.000000   -0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.000000    0.971100


 RESULTS FOR STATE 1.2
 =====================

 Coefficient of reference function:   C(0) = 0.97127581 (fixed)   0.97134270 (relaxed)   0.97127581 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00019722   -0.00060042   -0.91491182
 Singles      0.01381755   -0.07203743   -0.08153280
 Pairs        0.04600716   -0.00000001   -0.04521398
 Total        1.06002194   -0.07263786   -1.04165860
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -415.18060517
 Nuclear energy                         0.00000000
 Kinetic energy                       296.02664780
 One electron energy                 -722.68922340
 Two electron energy                  306.46695964
 Virial quotient                       -1.40602972
 Correlation energy                    -1.04165860
 !MRCI STATE 1.2 Energy              -416.222263765668

 Properties without orbital relaxation:

 !MRCI STATE 1.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -416.28478613 (Davidson, fixed reference)
 Cluster corrected energies          -416.28463406 (Davidson, relaxed reference)
 Cluster corrected energies          -416.28478613 (Davidson, rotated reference)

 Cluster corrected energies          -416.28201804 (Pople, fixed reference)
 Cluster corrected energies          -416.28186531 (Pople, relaxed reference)
 Cluster corrected energies          -416.28201804 (Pople, rotated reference)



 RESULTS FOR STATE 2.2
 =====================

 Coefficient of reference function:   C(0) = 0.97125064 (fixed)   0.97134277 (relaxed)   0.97127588 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00019722   -0.00060042   -0.91491205
 Singles      0.01381746   -0.07203728   -0.08153266
 Pairs        0.04600711   -0.00000000   -0.04521385
 Total        1.06002180   -0.07263770   -1.04165856
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -415.18060517
 Nuclear energy                         0.00000000
 Kinetic energy                       296.02665043
 One electron energy                 -722.68922970
 Two electron energy                  306.46696597
 Virial quotient                       -1.40602970
 Correlation energy                    -1.04165856
 !MRCI STATE 2.2 Energy              -416.222263729941

 Properties without orbital relaxation:

 !MRCI STATE 2.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -416.28478595 (Davidson, fixed reference)
 Cluster corrected energies          -416.28463387 (Davidson, relaxed reference)
 Cluster corrected energies          -416.28478595 (Davidson, rotated reference)

 Cluster corrected energies          -416.28201786 (Pople, fixed reference)
 Cluster corrected energies          -416.28186513 (Pople, relaxed reference)
 Cluster corrected energies          -416.28201786 (Pople, rotated reference)



 RESULTS FOR STATE 3.2
 =====================

 Coefficient of reference function:   C(0) = 0.97125057 (fixed)   0.97134271 (relaxed)   0.97127582 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00019722   -0.00060042   -0.91491194
 Singles      0.01381749   -0.07203728   -0.08153264
 Pairs        0.04600720    0.00000000   -0.04521397
 Total        1.06002192   -0.07263770   -1.04165855
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -415.18060517
 Nuclear energy                         0.00000000
 Kinetic energy                       296.02664585
 One electron energy                 -722.68922566
 Two electron energy                  306.46696194
 Virial quotient                       -1.40602973
 Correlation energy                    -1.04165855
 !MRCI STATE 3.2 Energy              -416.222263720685

 Properties without orbital relaxation:

 !MRCI STATE 3.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -416.28478606 (Davidson, fixed reference)
 Cluster corrected energies          -416.28463399 (Davidson, relaxed reference)
 Cluster corrected energies          -416.28478606 (Davidson, rotated reference)

 Cluster corrected energies          -416.28201797 (Pople, fixed reference)
 Cluster corrected energies          -416.28186524 (Pople, relaxed reference)
 Cluster corrected energies          -416.28201797 (Pople, rotated reference)



 RESULTS FOR STATE 4.2
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.97109900 (fixed)   0.97116652 (relaxed)   0.97110023 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00019784   -0.00060928   -0.91533080
 Singles      0.01407831   -0.07264202   -0.08234392
 Pairs        0.04612914    0.00029956   -0.04508306
 Total        1.06040529   -0.07295174   -1.04275778
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -415.17284771
 Nuclear energy                         0.00000000
 Kinetic energy                       296.03218869
 One electron energy                 -722.70816644
 Two electron energy                  306.49256095
 Virial quotient                       -1.40598091
 Correlation energy                    -1.04275778
 !MRCI STATE 4.2 Energy              -416.215605485750

 Properties without orbital relaxation:

 !MRCI STATE 4.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -416.27859357 (Davidson, fixed reference)
 Cluster corrected energies          -416.27844262 (Davidson, relaxed reference)
 Cluster corrected energies          -416.27859357 (Davidson, rotated reference)

 Cluster corrected energies          -416.27582446 (Pople, fixed reference)
 Cluster corrected energies          -416.27567276 (Pople, relaxed reference)
 Cluster corrected energies          -416.27582446 (Pople, rotated reference)



 RESULTS FOR STATE 5.2
 =====================

 Maximum overlap with reference state  7

 Coefficient of reference function:   C(0) = 0.97107452 (fixed)   0.97116660 (relaxed)   0.97110031 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00019784   -0.00060928   -0.91504754
 Singles      0.01407825   -0.07264194   -0.08234382
 Pairs        0.04612901   -0.00000102   -0.04536638
 Total        1.06040511   -0.07325224   -1.04275774
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -415.17284771
 Nuclear energy                         0.00000000
 Kinetic energy                       296.03219207
 One electron energy                 -722.70817206
 Two electron energy                  306.49256661
 Virial quotient                       -1.40598089
 Correlation energy                    -1.04275774
 !MRCI STATE 5.2 Energy              -416.215605448380

 Properties without orbital relaxation:

 !MRCI STATE 5.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -416.27859334 (Davidson, fixed reference)
 Cluster corrected energies          -416.27844239 (Davidson, relaxed reference)
 Cluster corrected energies          -416.27859334 (Davidson, rotated reference)

 Cluster corrected energies          -416.27582423 (Pople, fixed reference)
 Cluster corrected energies          -416.27567253 (Pople, relaxed reference)
 Cluster corrected energies          -416.27582423 (Pople, rotated reference)



 RESULTS FOR STATE 6.2
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.97107540 (fixed)   0.97116666 (relaxed)   0.97110037 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00019784   -0.00060928   -0.91484607
 Singles      0.01407824   -0.07264195   -0.08234382
 Pairs        0.04612891   -0.00021475   -0.04556784
 Total        1.06040499   -0.07346598   -1.04275773
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -415.17284771
 Nuclear energy                         0.00000000
 Kinetic energy                       296.03219785
 One electron energy                 -722.70817567
 Two electron energy                  306.49257024
 Virial quotient                       -1.40598086
 Correlation energy                    -1.04275773
 !MRCI STATE 6.2 Energy              -416.215605436402

 Properties without orbital relaxation:

 !MRCI STATE 6.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -416.27859321 (Davidson, fixed reference)
 Cluster corrected energies          -416.27844226 (Davidson, relaxed reference)
 Cluster corrected energies          -416.27859321 (Davidson, rotated reference)

 Cluster corrected energies          -416.27582409 (Pople, fixed reference)
 Cluster corrected energies          -416.27567240 (Pople, relaxed reference)
 Cluster corrected energies          -416.27582409 (Pople, rotated reference)



 RESULTS FOR STATE 7.2
 =====================

 Maximum overlap with reference state  6

 Coefficient of reference function:   C(0) = 0.97106916 (fixed)   0.97116616 (relaxed)   0.97109986 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00019784   -0.00060927   -0.90780535
 Singles      0.01407819   -0.07264177   -0.08234362
 Pairs        0.04613006   -0.00767983   -0.05260864
 Total        1.06040609   -0.08093086   -1.04275762
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -415.17284771
 Nuclear energy                         0.00000000
 Kinetic energy                       296.03215486
 One electron energy                 -722.70814650
 Two electron energy                  306.49254118
 Virial quotient                       -1.40598107
 Correlation energy                    -1.04275762
 !MRCI STATE 7.2 Energy              -416.215605326803

 Properties without orbital relaxation:

 !MRCI STATE 7.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -416.27859424 (Davidson, fixed reference)
 Cluster corrected energies          -416.27844329 (Davidson, relaxed reference)
 Cluster corrected energies          -416.27859424 (Davidson, rotated reference)

 Cluster corrected energies          -416.27582513 (Pople, fixed reference)
 Cluster corrected energies          -416.27567343 (Pople, relaxed reference)
 Cluster corrected energies          -416.27582513 (Pople, rotated reference)



 RESULTS FOR STATE 8.2
 =====================

 Coefficient of reference function:   C(0) = 0.97106904 (fixed)   0.97116587 (relaxed)   0.97109957 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00019785   -0.00060927   -0.00079787
 Singles      0.01407823   -0.07264179   -0.08234340
 Pairs        0.04613065   -0.96947595   -0.95961623
 Total        1.06040672   -1.04272701   -1.04275750
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -415.17284771
 Nuclear energy                         0.00000000
 Kinetic energy                       296.03215290
 One electron energy                 -722.70815038
 Two electron energy                  306.49254517
 Virial quotient                       -1.40598108
 Correlation energy                    -1.04275750
 !MRCI STATE 8.2 Energy              -416.215605211031

 Properties without orbital relaxation:

 !MRCI STATE 8.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -416.27859477 (Davidson, fixed reference)
 Cluster corrected energies          -416.27844382 (Davidson, relaxed reference)
 Cluster corrected energies          -416.27859477 (Davidson, rotated reference)

 Cluster corrected energies          -416.27582567 (Pople, fixed reference)
 Cluster corrected energies          -416.27567396 (Pople, relaxed reference)
 Cluster corrected energies          -416.27582567 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       93.78       500      700      610      900      950      970     1000      129      960     1100   
                                          VAR     GEOM    BASINP   SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       9     7330.86       500      700      610     1000      520     2100     2140     5203     5303   
                                          VAR     GEOM    BASINP    BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT      FILE
 CPU TIMES  *    121541.67  99482.59  22026.59     12.85      4.11     13.74      1.65
 REAL TIME  *    123766.48 SEC
 DISK USED  *         7.25 GB (local),       22.82 GB (total)
 SF USED    *        57.29 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(4)     =      -416.28478613  AU                              
 SETTING HLSDIAG(5)     =      -416.28478595  AU                              
 SETTING HLSDIAG(6)     =      -416.28478606  AU                              
 SETTING HLSDIAG(7)     =      -416.27859357  AU                              
 SETTING HLSDIAG(8)     =      -416.27859334  AU                              
 SETTING HLSDIAG(9)     =      -416.27859321  AU                              
 SETTING HLSDIAG(10)    =      -416.27859424  AU                              
 SETTING HLSDIAG(11)    =      -416.27859477  AU                              


         HLSDIAG
    -416.6217407
    -416.6217407
    -416.6217407
    -416.2847861
    -416.2847859
    -416.2847861
    -416.2785936
    -416.2785933
    -416.2785932
    -416.2785942
    -416.2785948
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Diagonal elements of H will be replaced by values from variable HLSDIAG


   ******************************
   *** Spin-orbit calculation ***
   ******************************


   Spin-orbit matrix elements
   ==========================

 Wavefunction restored from record  5203.2  Symmetry=2  S= 0.5  NSTATE=   3

 Original energies:   -416.551323   -416.551323   -416.551323
 Replaced energies:   -416.621741   -416.621741   -416.621741

 Wavefunction restored from record  5303.2  Symmetry=2  S= 1.5  NSTATE=   8

 Original energies:   -416.222264   -416.222264   -416.222264   -416.215605   -416.215605   -416.215605   -416.215605   -416.215605
 Replaced energies:   -416.284786   -416.284786   -416.284786   -416.278594   -416.278593   -416.278593   -416.278594   -416.278595



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=  -416.62174068

 Wigner-Eckart theorem used for 23 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.2  0.5  0.5       0.00       0.00       0.00       0.00     105.67   -1241.13      -0.02     147.60     215.13      -0.41
                           -0.00    1018.01     194.97       0.00    -734.39      91.67     149.15      -0.28      39.46     161.82

    2   2.2  0.5  0.5       0.00       0.00       0.00    -105.67       0.00     187.75       0.00     -40.48     -19.54      -0.05
                        -1018.01       0.00     715.88     734.39      -0.00    1019.36     -40.65      -1.88     260.73     -43.63

    3   3.2  0.5  0.5       0.00       0.00       0.00    1241.13    -187.75      -0.00       0.02     213.20    -152.69       0.15
                         -194.97    -715.88       0.00     -91.67   -1019.36      -0.00     212.10      -0.16      22.22     229.96

    4   1.2  0.5 -0.5       0.00    -105.67    1241.13       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00    -734.39      91.67       0.00   -1018.01    -194.97       0.00       0.00       0.00       0.00

    5   2.2  0.5 -0.5     105.67       0.00    -187.75       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          734.39       0.00    1019.36    1018.01      -0.00    -715.88       0.00       0.00       0.00       0.00

    6   3.2  0.5 -0.5   -1241.13     187.75      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -91.67   -1019.36       0.00     194.97     715.88      -0.00       0.00       0.00       0.00       0.00

    7   1.2  1.5  1.5      -0.02       0.00       0.02       0.00       0.00       0.00   73952.97       0.00       0.00       0.00
                         -149.15      40.65    -212.10      -0.00      -0.00      -0.00       0.00    -649.52      -4.68       0.26

    8   2.2  1.5  1.5     147.60     -40.48     213.20       0.00       0.00       0.00       0.00   73953.01       0.00       0.00
                            0.28       1.88       0.16      -0.00      -0.00      -0.00     649.52       0.00       0.07     729.44

    9   3.2  1.5  1.5     215.13     -19.54    -152.69       0.00       0.00       0.00       0.00       0.00   73952.99       0.00
                          -39.46    -260.73     -22.22      -0.00      -0.00      -0.00       4.68      -0.07       0.00       5.68

   10   4.2  1.5  1.5      -0.41      -0.05       0.15       0.00       0.00       0.00       0.00       0.00       0.00   75312.08
                         -161.82      43.63    -229.96      -0.00      -0.00      -0.00      -0.26    -729.44      -5.68       0.00

   11   5.2  1.5  1.5    -230.97      20.56     168.87       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -42.48    -282.70     -23.76      -0.00      -0.00      -0.00       5.21       1.07       0.13       4.73

   12   6.2  1.5  1.5     163.34     -44.11     228.72       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.09       2.05       0.20      -0.00      -0.00      -0.00     729.44      -0.27      -0.23     649.15

   13   7.2  1.5  1.5       0.50       2.42       0.30       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          230.98     -20.71    -166.54      -0.00      -0.00      -0.00       0.32      -5.57     732.78      -0.59

   14   8.2  1.5  1.5      49.33     326.32      27.73       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -135.86      12.23      97.77      -0.00      -0.00      -0.00      -0.21      -3.22     415.30       1.51

   15   1.2  1.5  0.5       0.00       0.00       0.00      -0.01       0.00       0.01       0.00      -0.04      -0.00      -0.15
                         -247.17      22.23     178.07     -86.11      23.47    -122.45      -0.00       2.70    -375.00       0.66

   16   2.2  1.5  0.5       0.00       0.00       0.00      85.22     -23.37     123.09       0.04      -0.00    -375.01      -0.62
                           45.15     298.45      25.41       0.16       1.09       0.09      -2.70       0.00      -0.00       3.13

   17   3.2  1.5  0.5       0.00       0.00       0.00     124.21     -11.28     -88.15       0.00     375.01      -0.00       0.15
                            0.30       2.15       0.20     -22.78    -150.53     -12.83     375.00       0.00      -0.00    -421.15

   18   4.2  1.5  0.5       0.00       0.00       0.00      -0.24      -0.03       0.09       0.15       0.62      -0.15      -0.00
                          267.90     -23.96    -193.21     -93.43      25.19    -132.77      -0.66      -3.13     421.14       0.00

   19   5.2  1.5  0.5       0.00       0.00       0.00    -133.35      11.87      97.50      -0.00     421.11       6.04       0.01
                           -0.71      -2.28       0.13     -24.52    -163.22     -13.72    -421.14       0.08      -0.66     374.79

   20   6.2  1.5  0.5       0.00       0.00       0.00      94.31     -25.47     132.05      -0.15      -6.04     421.11       0.96
                          -48.94    -323.64     -27.74       0.05       1.18       0.12       3.01      -0.29       0.15      -2.33

   21   7.2  1.5  0.5       0.00       0.00       0.00       0.29       1.40       0.18      -3.88      -0.08       0.23    -749.57
                          189.15     -51.68     268.78     133.36     -11.96     -96.15       0.07     419.19       3.19      -0.20

   22   8.2  1.5  0.5       0.00       0.00       0.00      28.48     188.40      16.01    -486.29       0.00      -0.15       5.98
                          107.29     -29.13     152.39     -78.44       7.06      56.45      -0.00    -246.50      -1.65      -0.23

   23   1.2  1.5 -0.5      -0.01       0.00       0.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           86.11     -23.47     122.45    -247.17      22.23     178.07      -0.00      -0.00      -0.00      -0.00

   24   2.2  1.5 -0.5      85.22     -23.37     123.09       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.16      -1.09      -0.09      45.15     298.45      25.41      -0.00      -0.00      -0.00      -0.00

   25   3.2  1.5 -0.5     124.21     -11.28     -88.15       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           22.78     150.53      12.83       0.30       2.15       0.20      -0.00      -0.00      -0.00      -0.00

   26   4.2  1.5 -0.5      -0.24      -0.03       0.09       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           93.43     -25.19     132.77     267.90     -23.96    -193.21      -0.00      -0.00      -0.00      -0.00

   27   5.2  1.5 -0.5    -133.35      11.87      97.50       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           24.52     163.22      13.72      -0.71      -2.28       0.13      -0.00      -0.00      -0.00      -0.00

   28   6.2  1.5 -0.5      94.31     -25.47     132.05       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.05      -1.18      -0.12     -48.94    -323.64     -27.74      -0.00      -0.00      -0.00      -0.00

   29   7.2  1.5 -0.5       0.29       1.40       0.18       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -133.36      11.96      96.15     189.15     -51.68     268.78      -0.00      -0.00      -0.00      -0.00

   30   8.2  1.5 -0.5      28.48     188.40      16.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           78.44      -7.06     -56.45     107.29     -29.13     152.39      -0.00      -0.00      -0.00      -0.00

   31   1.2  1.5 -1.5       0.00       0.00       0.00      -0.02       0.00       0.02       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00     149.15     -40.65     212.10      -0.00      -0.00      -0.00      -0.00

   32   2.2  1.5 -1.5       0.00       0.00       0.00     147.60     -40.48     213.20       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.28      -1.88      -0.16      -0.00      -0.00      -0.00      -0.00

   33   3.2  1.5 -1.5       0.00       0.00       0.00     215.13     -19.54    -152.69       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      39.46     260.73      22.22      -0.00      -0.00      -0.00      -0.00

   34   4.2  1.5 -1.5       0.00       0.00       0.00      -0.41      -0.05       0.15       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00     161.82     -43.63     229.96      -0.00      -0.00      -0.00      -0.00

   35   5.2  1.5 -1.5       0.00       0.00       0.00    -230.97      20.56     168.87       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      42.48     282.70      23.76      -0.00      -0.00      -0.00      -0.00

   36   6.2  1.5 -1.5       0.00       0.00       0.00     163.34     -44.11     228.72       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.09      -2.05      -0.20      -0.00      -0.00      -0.00      -0.00

   37   7.2  1.5 -1.5       0.00       0.00       0.00       0.50       2.42       0.30       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00    -230.98      20.71     166.54      -0.00      -0.00      -0.00      -0.00

   38   8.2  1.5 -1.5       0.00       0.00       0.00      49.33     326.32      27.73       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00     135.86     -12.23     -97.77      -0.00      -0.00      -0.00      -0.00


   Nr   State  S   Sz       11         12         13         14         15         16         17         18         19         20

    1   1.2  0.5  0.5    -230.97     163.34       0.50      49.33       0.00       0.00       0.00       0.00       0.00       0.00
                           42.48      -0.09    -230.98     135.86     247.17     -45.15      -0.30    -267.90       0.71      48.94

    2   2.2  0.5  0.5      20.56     -44.11       2.42     326.32       0.00       0.00       0.00       0.00       0.00       0.00
                          282.70      -2.05      20.71     -12.23     -22.23    -298.45      -2.15      23.96       2.28     323.64

    3   3.2  0.5  0.5     168.87     228.72       0.30      27.73       0.00       0.00       0.00       0.00       0.00       0.00
                           23.76      -0.20     166.54     -97.77    -178.07     -25.41      -0.20     193.21      -0.13      27.74

    4   1.2  0.5 -0.5       0.00       0.00       0.00       0.00      -0.01      85.22     124.21      -0.24    -133.35      94.31
                            0.00       0.00       0.00       0.00      86.11      -0.16      22.78      93.43      24.52      -0.05

    5   2.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00     -23.37     -11.28      -0.03      11.87     -25.47
                            0.00       0.00       0.00       0.00     -23.47      -1.09     150.53     -25.19     163.22      -1.18

    6   3.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.01     123.09     -88.15       0.09      97.50     132.05
                            0.00       0.00       0.00       0.00     122.45      -0.09      12.83     132.77      13.72      -0.12

    7   1.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.04       0.00       0.15      -0.00      -0.15
                           -5.21    -729.44      -0.32       0.21       0.00       2.70    -375.00       0.66     421.14      -3.01

    8   2.2  1.5  1.5       0.00       0.00       0.00       0.00      -0.04      -0.00     375.01       0.62     421.11      -6.04
                           -1.07       0.27       5.57       3.22      -2.70      -0.00      -0.00       3.13      -0.08       0.29

    9   3.2  1.5  1.5       0.00       0.00       0.00       0.00      -0.00    -375.01      -0.00      -0.15       6.04     421.11
                           -0.13       0.23    -732.78    -415.30     375.00       0.00       0.00    -421.14       0.66      -0.15

   10   4.2  1.5  1.5       0.00       0.00       0.00       0.00      -0.15      -0.62       0.15      -0.00       0.01       0.96
                           -4.73    -649.15       0.59      -1.51      -0.66      -3.13     421.15      -0.00    -374.79       2.33

   11   5.2  1.5  1.5   75312.13       0.00       0.00       0.00       0.00    -421.12      -6.04      -0.01       0.00     374.80
                           -0.00       0.35     640.15   -1129.51    -421.15       0.08      -0.66     374.79      -0.00       0.20

   12   6.2  1.5  1.5       0.00   75312.16       0.00       0.00       0.15       6.04    -421.12      -0.96    -374.80       0.00
                           -0.35       0.00      -4.31       8.26       3.01      -0.29       0.15      -2.33      -0.20       0.00

   13   7.2  1.5  1.5       0.00       0.00   75311.94       0.00       3.88       0.08      -0.23     749.57      -1.30       0.21
                         -640.15       4.31      -0.00       0.20       0.07     419.19       3.19      -0.20       2.56     379.96

   14   8.2  1.5  1.5       0.00       0.00       0.00   75311.82     486.30      -0.00       0.15      -5.98       0.09      -0.00
                         1129.51      -8.26      -0.20       0.00      -0.00    -246.50      -1.65      -0.23       4.50     646.14

   15   1.2  1.5  0.5       0.00       0.15       3.88     486.30   73952.97       0.00       0.00       0.00       0.00       0.00
                          421.15      -3.01      -0.07       0.00       0.00    -216.51      -1.56       0.09      -1.74    -243.15

   16   2.2  1.5  0.5    -421.12       6.04       0.08      -0.00       0.00   73953.01       0.00       0.00       0.00       0.00
                           -0.08       0.29    -419.19     246.50     216.51       0.00       0.02     243.15      -0.36       0.09

   17   3.2  1.5  0.5      -6.04    -421.12      -0.23       0.15       0.00       0.00   73952.99       0.00       0.00       0.00
                            0.66      -0.15      -3.19       1.65       1.56      -0.02       0.00       1.89      -0.04       0.08

   18   4.2  1.5  0.5      -0.01      -0.96     749.57      -5.98       0.00       0.00       0.00   75312.08       0.00       0.00
                         -374.79       2.33       0.20       0.23      -0.09    -243.15      -1.89       0.00      -1.58    -216.38

   19   5.2  1.5  0.5       0.00    -374.80      -1.30       0.09       0.00       0.00       0.00       0.00   75312.13       0.00
                            0.00       0.20      -2.56      -4.50       1.74       0.36       0.04       1.58      -0.00       0.12

   20   6.2  1.5  0.5     374.80       0.00       0.21      -0.00       0.00       0.00       0.00       0.00       0.00   75312.16
                           -0.20      -0.00    -379.96    -646.14     243.15      -0.09      -0.08     216.38      -0.12       0.00

   21   7.2  1.5  0.5       1.30      -0.21      -0.00      -0.23       0.00       0.00       0.00       0.00       0.00       0.00
                            2.56     379.96       0.00      -0.44       0.11      -1.86     244.26      -0.20    -213.38       1.44

   22   8.2  1.5  0.5      -0.09       0.00       0.23       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            4.50     646.14       0.44      -0.00      -0.07      -1.07     138.43       0.50     376.50      -2.75

   23   1.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00      -0.05      -0.00      -0.17       0.00       0.18
                           -0.00      -0.00      -0.00      -0.00      -0.00       3.12    -433.01       0.76     486.30      -3.47

   24   2.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.05      -0.00    -433.02      -0.71    -486.26       6.98
                           -0.00      -0.00      -0.00      -0.00      -3.12       0.00      -0.00       3.61      -0.09       0.33

   25   3.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00     433.02      -0.00       0.17      -6.98    -486.26
                           -0.00      -0.00      -0.00      -0.00     433.01       0.00      -0.00    -486.30       0.76      -0.18

   26   4.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.17       0.71      -0.17      -0.00      -0.01      -1.11
                           -0.00      -0.00      -0.00      -0.00      -0.76      -3.61     486.29       0.00    -432.77       2.69

   27   5.2  1.5 -0.5       0.00       0.00       0.00       0.00      -0.00     486.26       6.98       0.01       0.00    -432.78
                           -0.00      -0.00      -0.00      -0.00    -486.29       0.09      -0.76     432.77       0.00       0.23

   28   6.2  1.5 -0.5       0.00       0.00       0.00       0.00      -0.18      -6.98     486.26       1.11     432.78       0.00
                           -0.00      -0.00      -0.00      -0.00       3.47      -0.33       0.18      -2.69      -0.23      -0.00

   29   7.2  1.5 -0.5       0.00       0.00       0.00       0.00      -4.49      -0.09       0.26    -865.52       1.50      -0.24
                           -0.00      -0.00      -0.00      -0.00       0.08     484.04       3.68      -0.23       2.96     438.74

   30   8.2  1.5 -0.5       0.00       0.00       0.00       0.00    -561.52       0.00      -0.17       6.91      -0.11       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00    -284.63      -1.90      -0.27       5.19     746.10

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


   Nr   State  S   Sz       21         22         23         24         25         26         27         28         29         30

    1   1.2  0.5  0.5       0.00       0.00      -0.01      85.22     124.21      -0.24    -133.35      94.31       0.29      28.48
                         -189.15    -107.29     -86.11       0.16     -22.78     -93.43     -24.52       0.05     133.36     -78.44

    2   2.2  0.5  0.5       0.00       0.00       0.00     -23.37     -11.28      -0.03      11.87     -25.47       1.40     188.40
                           51.68      29.13      23.47       1.09    -150.53      25.19    -163.22       1.18     -11.96       7.06

    3   3.2  0.5  0.5       0.00       0.00       0.01     123.09     -88.15       0.09      97.50     132.05       0.18      16.01
                         -268.78    -152.39    -122.45       0.09     -12.83    -132.77     -13.72       0.12     -96.15      56.45

    4   1.2  0.5 -0.5       0.29      28.48       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -133.36      78.44     247.17     -45.15      -0.30    -267.90       0.71      48.94    -189.15    -107.29

    5   2.2  0.5 -0.5       1.40     188.40       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           11.96      -7.06     -22.23    -298.45      -2.15      23.96       2.28     323.64      51.68      29.13

    6   3.2  0.5 -0.5       0.18      16.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           96.15     -56.45    -178.07     -25.41      -0.20     193.21      -0.13      27.74    -268.78    -152.39

    7   1.2  1.5  1.5      -3.88    -486.29       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.07       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    8   2.2  1.5  1.5      -0.08       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -419.19     246.50       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    9   3.2  1.5  1.5       0.23      -0.15       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -3.19       1.65       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   10   4.2  1.5  1.5    -749.57       5.98       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.20       0.23       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   11   5.2  1.5  1.5       1.30      -0.09       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -2.56      -4.50       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   12   6.2  1.5  1.5      -0.21       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -379.96    -646.14       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   13   7.2  1.5  1.5      -0.00       0.23       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.44       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   14   8.2  1.5  1.5      -0.23       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.44       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   15   1.2  1.5  0.5       0.00       0.00       0.00       0.05       0.00       0.17      -0.00      -0.18      -4.49    -561.52
                           -0.11       0.07       0.00       3.12    -433.01       0.76     486.29      -3.47      -0.08       0.00

   16   2.2  1.5  0.5       0.00       0.00      -0.05      -0.00     433.02       0.71     486.26      -6.98      -0.09       0.00
                            1.86       1.07      -3.12      -0.00      -0.00       3.61      -0.09       0.33    -484.04     284.63

   17   3.2  1.5  0.5       0.00       0.00      -0.00    -433.02      -0.00      -0.17       6.98     486.26       0.26      -0.17
                         -244.26    -138.43     433.01       0.00       0.00    -486.29       0.76      -0.18      -3.68       1.90

   18   4.2  1.5  0.5       0.00       0.00      -0.17      -0.71       0.17      -0.00       0.01       1.11    -865.52       6.91
                            0.20      -0.50      -0.76      -3.61     486.30      -0.00    -432.77       2.69       0.23       0.27

   19   5.2  1.5  0.5       0.00       0.00       0.00    -486.26      -6.98      -0.01       0.00     432.78       1.50      -0.11
                          213.38    -376.50    -486.30       0.09      -0.76     432.77      -0.00       0.23      -2.96      -5.19

   20   6.2  1.5  0.5       0.00       0.00       0.18       6.98    -486.26      -1.11    -432.78       0.00      -0.24       0.00
                           -1.44       2.75       3.47      -0.33       0.18      -2.69      -0.23       0.00    -438.74    -746.10

   21   7.2  1.5  0.5   75311.94       0.00       4.49       0.09      -0.26     865.52      -1.50       0.24      -0.00       0.27
                           -0.00       0.07       0.08     484.04       3.68      -0.23       2.96     438.74      -0.00      -0.50

   22   8.2  1.5  0.5       0.00   75311.82     561.53      -0.00       0.17      -6.91       0.11      -0.00      -0.27       0.00
                           -0.07       0.00      -0.00    -284.64      -1.90      -0.27       5.19     746.10       0.50       0.00

   23   1.2  1.5 -0.5       4.49     561.53   73952.97       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.08       0.00      -0.00     216.51       1.56      -0.09       1.74     243.15       0.11      -0.07

   24   2.2  1.5 -0.5       0.09      -0.00       0.00   73953.01       0.00       0.00       0.00       0.00       0.00       0.00
                         -484.04     284.64    -216.51      -0.00      -0.02    -243.15       0.36      -0.09      -1.86      -1.07

   25   3.2  1.5 -0.5      -0.26       0.17       0.00       0.00   73952.99       0.00       0.00       0.00       0.00       0.00
                           -3.68       1.90      -1.56       0.02      -0.00      -1.89       0.04      -0.08     244.26     138.43

   26   4.2  1.5 -0.5     865.52      -6.91       0.00       0.00       0.00   75312.08       0.00       0.00       0.00       0.00
                            0.23       0.27       0.09     243.15       1.89      -0.00       1.58     216.38      -0.20       0.50

   27   5.2  1.5 -0.5      -1.50       0.11       0.00       0.00       0.00       0.00   75312.13       0.00       0.00       0.00
                           -2.96      -5.19      -1.74      -0.36      -0.04      -1.58       0.00      -0.12    -213.38     376.50

   28   6.2  1.5 -0.5       0.24      -0.00       0.00       0.00       0.00       0.00       0.00   75312.16       0.00       0.00
                         -438.74    -746.10    -243.15       0.09       0.08    -216.38       0.12      -0.00       1.44      -2.75

   29   7.2  1.5 -0.5      -0.00      -0.27       0.00       0.00       0.00       0.00       0.00       0.00   75311.94       0.00
                            0.00      -0.50      -0.11       1.86    -244.26       0.20     213.38      -1.44       0.00      -0.07

   30   8.2  1.5 -0.5       0.27       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   75311.82
                            0.50      -0.00       0.07       1.07    -138.43      -0.50    -376.50       2.75       0.07      -0.00

   31   1.2  1.5 -1.5       0.00       0.00       0.00      -0.04      -0.00      -0.15       0.00       0.15       3.88     486.30
                           -0.00      -0.00      -0.00       2.70    -375.00       0.66     421.15      -3.01      -0.07       0.00

   32   2.2  1.5 -1.5       0.00       0.00       0.04      -0.00    -375.01      -0.62    -421.12       6.04       0.08      -0.00
                           -0.00      -0.00      -2.70       0.00      -0.00       3.13      -0.08       0.29    -419.19     246.50

   33   3.2  1.5 -1.5       0.00       0.00       0.00     375.01      -0.00       0.15      -6.04    -421.12      -0.23       0.15
                           -0.00      -0.00     375.00       0.00      -0.00    -421.15       0.66      -0.15      -3.19       1.65

   34   4.2  1.5 -1.5       0.00       0.00       0.15       0.62      -0.15      -0.00      -0.01      -0.96     749.57      -5.98
                           -0.00      -0.00      -0.66      -3.13     421.14       0.00    -374.79       2.33       0.20       0.23

   35   5.2  1.5 -1.5       0.00       0.00      -0.00     421.11       6.04       0.01       0.00    -374.80      -1.30       0.09
                           -0.00      -0.00    -421.14       0.08      -0.66     374.79       0.00       0.20      -2.56      -4.50

   36   6.2  1.5 -1.5       0.00       0.00      -0.15      -6.04     421.11       0.96     374.80       0.00       0.21      -0.00
                           -0.00      -0.00       3.01      -0.29       0.15      -2.33      -0.20      -0.00    -379.96    -646.14

   37   7.2  1.5 -1.5       0.00       0.00      -3.88      -0.08       0.23    -749.57       1.30      -0.21      -0.00      -0.23
                           -0.00      -0.00       0.07     419.19       3.19      -0.20       2.56     379.96       0.00      -0.44

   38   8.2  1.5 -1.5       0.00       0.00    -486.29       0.00      -0.15       5.98      -0.09       0.00       0.23       0.00
                           -0.00      -0.00      -0.00    -246.50      -1.65      -0.23       4.50     646.14       0.44      -0.00


   Nr   State  S   Sz       31         32         33         34         35         36         37         38

    1   1.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    2   2.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    3   3.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    4   1.2  0.5 -0.5      -0.02     147.60     215.13      -0.41    -230.97     163.34       0.50      49.33
                         -149.15       0.28     -39.46    -161.82     -42.48       0.09     230.98    -135.86

    5   2.2  0.5 -0.5       0.00     -40.48     -19.54      -0.05      20.56     -44.11       2.42     326.32
                           40.65       1.88    -260.73      43.63    -282.70       2.05     -20.71      12.23

    6   3.2  0.5 -0.5       0.02     213.20    -152.69       0.15     168.87     228.72       0.30      27.73
                         -212.10       0.16     -22.22    -229.96     -23.76       0.20    -166.54      97.77

    7   1.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    8   2.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    9   3.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   10   4.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   11   5.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   12   6.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   13   7.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   14   8.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   15   1.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   16   2.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   17   3.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   18   4.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   19   5.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   20   6.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   21   7.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   22   8.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   23   1.2  1.5 -0.5       0.00       0.04       0.00       0.15      -0.00      -0.15      -3.88    -486.29
                            0.00       2.70    -375.00       0.66     421.14      -3.01      -0.07       0.00

   24   2.2  1.5 -0.5      -0.04      -0.00     375.01       0.62     421.11      -6.04      -0.08       0.00
                           -2.70      -0.00      -0.00       3.13      -0.08       0.29    -419.19     246.50

   25   3.2  1.5 -0.5      -0.00    -375.01      -0.00      -0.15       6.04     421.11       0.23      -0.15
                          375.00       0.00       0.00    -421.14       0.66      -0.15      -3.19       1.65

   26   4.2  1.5 -0.5      -0.15      -0.62       0.15      -0.00       0.01       0.96    -749.57       5.98
                           -0.66      -3.13     421.15      -0.00    -374.79       2.33       0.20       0.23

   27   5.2  1.5 -0.5       0.00    -421.12      -6.04      -0.01       0.00     374.80       1.30      -0.09
                         -421.15       0.08      -0.66     374.79      -0.00       0.20      -2.56      -4.50

   28   6.2  1.5 -0.5       0.15       6.04    -421.12      -0.96    -374.80       0.00      -0.21       0.00
                            3.01      -0.29       0.15      -2.33      -0.20       0.00    -379.96    -646.14

   29   7.2  1.5 -0.5       3.88       0.08      -0.23     749.57      -1.30       0.21      -0.00       0.23
                            0.07     419.19       3.19      -0.20       2.56     379.96      -0.00      -0.44

   30   8.2  1.5 -0.5     486.30      -0.00       0.15      -5.98       0.09      -0.00      -0.23       0.00
                           -0.00    -246.50      -1.65      -0.23       4.50     646.14       0.44       0.00

   31   1.2  1.5 -1.5   73952.97       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00     649.52       4.68      -0.26       5.21     729.44       0.32      -0.21

   32   2.2  1.5 -1.5       0.00   73953.01       0.00       0.00       0.00       0.00       0.00       0.00
                         -649.52      -0.00      -0.07    -729.44       1.07      -0.27      -5.57      -3.22

   33   3.2  1.5 -1.5       0.00       0.00   73952.99       0.00       0.00       0.00       0.00       0.00
                           -4.68       0.07      -0.00      -5.68       0.13      -0.23     732.78     415.30

   34   4.2  1.5 -1.5       0.00       0.00       0.00   75312.08       0.00       0.00       0.00       0.00
                            0.26     729.44       5.68      -0.00       4.73     649.15      -0.59       1.51

   35   5.2  1.5 -1.5       0.00       0.00       0.00       0.00   75312.13       0.00       0.00       0.00
                           -5.21      -1.07      -0.13      -4.73       0.00      -0.35    -640.15    1129.51

   36   6.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00   75312.16       0.00       0.00
                         -729.44       0.27       0.23    -649.15       0.35      -0.00       4.31      -8.26

   37   7.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00   75311.94       0.00
                           -0.32       5.57    -732.78       0.59     640.15      -4.31       0.00      -0.20

   38   8.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00   75311.82
                            0.21       3.22    -415.30      -1.51   -1129.51       8.26       0.20      -0.00


 No symmetry adaption


 Spin-orbit eigenstates   (energies)
 ======================

     Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
              (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1  -416.62750990    -0.00576923    -1266.20      0.00000000        0.00      0.0000
     2  -416.62750990    -0.00576923    -1266.20      0.00000000        0.00      0.0000
     3  -416.62750970    -0.00576902    -1266.15      0.00000021        0.05      0.0000
     4  -416.62750970    -0.00576902    -1266.15      0.00000021        0.05      0.0000
     5  -416.61030037     0.01144031     2510.86      0.01720954     3777.06      0.4683
     6  -416.61030037     0.01144031     2510.86      0.01720954     3777.06      0.4683
     7  -416.28985099     0.33188968    72841.37      0.33765891    74107.56      9.1882
     8  -416.28985098     0.33188969    72841.37      0.33765892    74107.57      9.1882
     9  -416.28985090     0.33188977    72841.39      0.33765900    74107.59      9.1882
    10  -416.28985088     0.33188980    72841.39      0.33765902    74107.59      9.1882
    11  -416.28985083     0.33188985    72841.40      0.33765908    74107.60      9.1882
    12  -416.28985082     0.33188985    72841.40      0.33765908    74107.60      9.1882
    13  -416.28450972     0.33723095    74013.64      0.34300018    75279.84      9.3335
    14  -416.28450972     0.33723095    74013.64      0.34300018    75279.84      9.3335
    15  -416.28450952     0.33723115    74013.68      0.34300038    75279.88      9.3335
    16  -416.28450952     0.33723115    74013.68      0.34300038    75279.88      9.3335
    17  -416.28450946     0.33723122    74013.70      0.34300045    75279.90      9.3335
    18  -416.28450946     0.33723122    74013.70      0.34300045    75279.90      9.3335
    19  -416.28450917     0.33723151    74013.76      0.34300074    75279.96      9.3335
    20  -416.28450917     0.33723151    74013.76      0.34300074    75279.96      9.3335
    21  -416.28447321     0.33726747    74021.65      0.34303670    75287.85      9.3345
    22  -416.28447320     0.33726748    74021.65      0.34303670    75287.85      9.3345
    23  -416.28447316     0.33726752    74021.66      0.34303675    75287.86      9.3345
    24  -416.28447313     0.33726755    74021.67      0.34303678    75287.87      9.3345
    25  -416.28042574     0.34131493    74909.97      0.34708416    76176.17      9.4446
    26  -416.28042572     0.34131495    74909.97      0.34708418    76176.17      9.4446
    27  -416.27550300     0.34623768    75990.39      0.35200691    77256.59      9.5786
    28  -416.27550299     0.34623769    75990.39      0.35200692    77256.59      9.5786
    29  -416.27550233     0.34623835    75990.53      0.35200758    77256.73      9.5786
    30  -416.27550232     0.34623836    75990.54      0.35200759    77256.74      9.5786
    31  -416.27550225     0.34623842    75990.55      0.35200765    77256.75      9.5786
    32  -416.27550223     0.34623844    75990.55      0.35200767    77256.75      9.5786
    33  -416.27098860     0.35075207    76981.18      0.35652130    78247.38      9.7014
    34  -416.27098859     0.35075208    76981.18      0.35652131    78247.38      9.7014
    35  -416.27098849     0.35075219    76981.21      0.35652141    78247.41      9.7014
    36  -416.27098846     0.35075222    76981.21      0.35652145    78247.41      9.7014
    37  -416.26910933     0.35263134    77393.63      0.35840057    78659.83      9.7526
    38  -416.26910931     0.35263137    77393.64      0.35840060    78659.84      9.7526


 Eigenvectors of spin-orbit matrix
 =================================

  Basis states          Eigenvectors (columnwise)

   Nr   State  S   Sz        1             2             3             4             5             6             7             8

    1    1.2  0.5  0.5   0.643498085  -0.123794368   0.448406465   0.190079844   0.328096430  -0.475021528  -0.000001061   0.000001672
                        -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000

    2    2.2  0.5  0.5   0.019296029   0.033016972  -0.123765205   0.248146711  -0.089353814  -0.061716021   0.000000290   0.000010759
                         0.568043953   0.000988118   0.004223387  -0.515326187  -0.000007162   0.567011972   0.000000071  -0.000001776

    3    3.2  0.5  0.5  -0.451712423  -0.173456759   0.635376328  -0.082651994   0.466552955   0.322231958  -0.000001507   0.000000885
                         0.110609264   0.001016886  -0.001647782  -0.098513950  -0.000002124   0.108593574  -0.000000010  -0.000000342

    4    1.2  0.5 -0.5   0.122630459   0.637466987  -0.169165909   0.399082001   0.467163596   0.322668972  -0.000000264  -0.000000159
                        -0.016910399  -0.087904082  -0.086670113   0.204457332   0.086044329   0.059430648  -0.000001843  -0.000001042

    5    2.2  0.5 -0.5  -0.032571556  -0.058482314   0.014119184  -0.108225376  -0.042012172  -0.087876996   0.000000144   0.000000116
                         0.005488989  -0.565350457  -0.571789699  -0.060191353   0.568811411  -0.016178305  -0.000012158   0.000000275

    6    3.2  0.5 -0.5   0.171964807  -0.462588593   0.118475348   0.564733838  -0.336571906   0.458834728   0.000000212  -0.000000236
                        -0.022686978  -0.047866064  -0.049991370   0.291175437   0.048428820   0.084512440  -0.000001034  -0.000001479

    7    1.2  1.5  1.5  -0.000004539  -0.000002290   0.000006799  -0.000000622   0.000000004   0.000000001   0.001273642   0.002325032
                        -0.000008061  -0.000738087   0.002695301   0.000009593   0.002052293   0.000000026  -0.135130988  -0.000320540

    8    2.2  1.5  1.5   0.000041621   0.000738041  -0.002695035  -0.000017920  -0.002052203  -0.000000018  -0.269827585   0.000215566
                        -0.000009575  -0.000002294   0.000006856  -0.000004758   0.000000002   0.000000004  -0.002647481   0.001421423

    9    3.2  1.5  1.5  -0.004663820   0.000006687  -0.000038305   0.001146396  -0.000014796  -0.000001119  -0.000589206  -0.078616458
                         0.000630909   0.000000572  -0.000008165   0.000590231   0.000000216  -0.000000206  -0.000028580  -0.482171929

   10    4.2  1.5  1.5  -0.000003981  -0.000002707   0.000008168   0.000003485   0.000000785  -0.000006431   0.001091907   0.000610300
                        -0.000007235  -0.000778650   0.002843360   0.000011587   0.002190898  -0.000000840  -0.109812679  -0.000054581

   11    5.2  1.5  1.5   0.000777715  -0.000003594  -0.000029683   0.002548219  -0.000015578  -0.004344727   0.000121837   0.005960001
                        -0.000105299  -0.000003011  -0.000008322   0.001313499  -0.000003196  -0.000799857   0.000162051   0.036670361

   12    6.2  1.5  1.5   0.000003070   0.000778543  -0.002842670  -0.000028851  -0.002190411   0.000031354  -0.000106245  -0.000083631
                        -0.000003166  -0.000002676   0.000008243  -0.000008970   0.000000808   0.000003693  -0.000012736  -0.000972345

   13    7.2  1.5  1.5  -0.000385985  -0.000001970   0.000000885   0.000335164  -0.000001183  -0.000393998   0.000002810  -0.179167053
                        -0.002853716   0.000004931  -0.000004233  -0.000650464   0.000000841   0.002143381  -0.000659449   0.029199207

   14    8.2  1.5  1.5  -0.000098391   0.000003220   0.000006857  -0.001319836   0.000000483   0.000696055   0.000000505  -0.143714552
                        -0.000724557  -0.000007789  -0.000012961   0.002560746   0.000000719  -0.003779152  -0.000239932   0.023443833

   15    1.2  1.5  0.5   0.000478444   0.000004938  -0.000000483  -0.001091128   0.000000247   0.000218074  -0.000025091   0.534583551
                         0.003540035  -0.000010765   0.000000666   0.002115750   0.000000014  -0.001183997   0.000777922  -0.087203614

   16    2.2  1.5  0.5   0.001825035   0.000012241   0.000009668  -0.003421088   0.000017213   0.001163925  -0.000111512  -0.048963216
                        -0.000247374   0.000004096   0.000009456  -0.001763129  -0.000000002   0.000214379  -0.000009640  -0.300555891

   17    3.2  1.5  0.5   0.000008557  -0.000428747   0.001569334  -0.000019158  -0.002389460   0.000008385   0.233319924  -0.000331408
                         0.000001515   0.000001359  -0.000003888  -0.000012198   0.000000003   0.000001423   0.002379978  -0.002629864

   18    4.2  1.5  0.5  -0.000383725   0.000003780   0.000006314  -0.000353373   0.000000012  -0.000689666  -0.000148300  -0.090718257
                        -0.002844045   0.000000273  -0.000010083   0.000685837   0.000002140   0.003751895   0.000105762   0.014816024

   19    5.2  1.5  0.5  -0.000018773   0.002866878   0.000785166   0.000018050  -0.000000322  -0.000025617  -0.100058506   0.000147449
                         0.000006370  -0.000007479  -0.000002073   0.000002172  -0.000000656  -0.000010400  -0.000992092   0.000033748

   20    6.2  1.5  0.5  -0.002816803  -0.000019633  -0.000016997   0.000691666   0.000000052  -0.003730790   0.000429501  -0.002522152
                         0.000380001   0.000001505  -0.000003720   0.000356459   0.000001613  -0.000685731  -0.000087016  -0.015146401

   21    7.2  1.5  0.5   0.000002715  -0.000002008  -0.000007200   0.000001012  -0.000000004  -0.000002303  -0.000760217  -0.000694240
                         0.000006101  -0.000731045  -0.002882035  -0.000014680  -0.003842733   0.000001063   0.080118297   0.000097984

   22    8.2  1.5  0.5   0.000003605   0.000007606  -0.000002203  -0.000000554  -0.000000002   0.000000629   0.002128413   0.000987768
                         0.000003911   0.002881014  -0.000731157   0.000006018  -0.002179375   0.000001273  -0.215551106  -0.000158187

   23    1.2  1.5 -0.5   0.000006362   0.000009625  -0.000006398   0.000000126   0.000000000  -0.000000245  -0.005666436  -0.001210189
                         0.000009990   0.003572225  -0.002380502   0.000000814   0.001203913  -0.000000031   0.568473700   0.000230539

   24    2.2  1.5 -0.5   0.000011567  -0.001841689  -0.003848700  -0.000012916   0.001183505  -0.000016928  -0.335130238   0.000035197
                        -0.000005729   0.000004252   0.000009291   0.000004008  -0.000000001  -0.000003120  -0.003286594   0.000019068

   25    3.2  1.5 -0.5  -0.000424901  -0.000008269  -0.000022613  -0.001394936   0.000008505   0.002349931  -0.003209211  -0.038237543
                         0.000057221   0.000002670   0.000002121  -0.000719021   0.000000120   0.000432824   0.000029044  -0.234007253

   26    4.2  1.5 -0.5   0.000003707  -0.000008381  -0.000001785  -0.000001022   0.000001352  -0.000000399   0.000948363   0.000007637
                        -0.000000787  -0.002869796  -0.000771541  -0.000011853  -0.003814755   0.000002102  -0.093663003   0.000085499

   27    5.2  1.5 -0.5   0.002841031   0.000019467   0.000017055  -0.000697832  -0.000027077   0.000000435   0.000353116   0.010253538
                        -0.000384220   0.000003746   0.000006297  -0.000359842   0.000005588  -0.000000587   0.000148825   0.062845999

   28    6.2  1.5 -0.5  -0.000019654   0.002842301   0.000778136   0.000016824  -0.003793287  -0.000000343  -0.011896381   0.000052757
                         0.000001191  -0.000008349  -0.000001874   0.000004439  -0.000001399   0.000001576  -0.000167144  -0.000231430

   29    7.2  1.5 -0.5   0.000097877  -0.000001857  -0.000005793   0.001320508  -0.000002073   0.000696067   0.000002485  -0.086155370
                         0.000724488   0.000006415   0.000013527  -0.002561720  -0.000001463  -0.003779164  -0.000781091   0.014014004

   30    8.2  1.5 -0.5  -0.000386024  -0.000003037   0.000002251   0.000335352   0.000000850   0.000394769  -0.000010075   0.226416569
                        -0.002855040   0.000004367  -0.000005609  -0.000649744  -0.000001138  -0.002143323   0.001032154  -0.036903711

   31    1.2  1.5 -1.5  -0.000098555  -0.000003395  -0.000003821   0.001235012  -0.000000006   0.000371751  -0.000007599  -0.214111962
                        -0.000731461   0.000008605   0.000008821  -0.002395719   0.000000025  -0.002018343  -0.002986953   0.034816062

   32    2.2  1.5 -1.5  -0.000731415   0.000042539   0.000018118  -0.002395456   0.000000017  -0.002018254  -0.001232289  -0.056890281
                         0.000098544   0.000003800   0.000003936  -0.001234942   0.000000007  -0.000371734   0.000005885  -0.349203194

   33    3.2  1.5 -1.5  -0.000006546  -0.004706275  -0.001289451  -0.000037814   0.000001138  -0.000014512   0.521702665  -0.000174875
                         0.000001481   0.000012104   0.000002590  -0.000010199  -0.000000000  -0.000002892   0.005169100  -0.000849983

   34    4.2  1.5 -1.5  -0.000103683  -0.000002956  -0.000008385   0.001303740   0.000006477   0.000397626  -0.000042137  -0.131464975
                        -0.000771699   0.000007712   0.000008724  -0.002526867   0.000000339  -0.002154514  -0.000686835   0.021443495

   35    5.2  1.5 -1.5   0.000003149   0.000784830  -0.002866814  -0.000030212   0.004417740  -0.000015899  -0.036555361   0.000173211
                        -0.000003474  -0.000001928   0.000007118  -0.000006127   0.000000368   0.000000321  -0.000338671  -0.000113285

   36    6.2  1.5 -1.5  -0.000771588   0.000003474   0.000029768  -0.002526220  -0.000031504  -0.002154030   0.001196468  -0.003504653
                         0.000103699   0.000002717   0.000005172  -0.001303492  -0.000002047  -0.000397561  -0.000055551  -0.021429864

   37    7.2  1.5 -1.5   0.000002625   0.000007464  -0.000001708  -0.000001143  -0.000000767  -0.000001011  -0.001923851  -0.000769726
                         0.000004615   0.002879698  -0.000731713   0.000004171   0.002179293  -0.000001042   0.195387712   0.000104944

   38    8.2  1.5 -1.5  -0.000004254   0.000001509   0.000007046   0.000000193   0.000000006   0.000000606  -0.001523444  -0.000363353
                        -0.000007276   0.000731183   0.002880863   0.000014662  -0.003842718  -0.000000620   0.152784302   0.000066461


   Nr   State  S   Sz        9            10            11            12            13            14            15            16

    1    1.2  0.5  0.5  -0.000001133  -0.000001656   0.000003739   0.000001595  -0.000003663   0.000010931  -0.000006761   0.000000940
                        -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000

    2    2.2  0.5  0.5  -0.000007401   0.000000422   0.000024536  -0.000000399  -0.000000729  -0.000003055   0.000001678   0.000007101
                         0.000000859   0.000000112  -0.000002178  -0.000000148   0.000004477  -0.000000000   0.000000051   0.000000193

    3    3.2  0.5  0.5  -0.000000615  -0.000002346   0.000002062   0.000002260   0.000002275   0.000015571  -0.000009574   0.000000435
                         0.000000190  -0.000000016  -0.000000452   0.000000018   0.000001167   0.000000109   0.000000014  -0.000000038

    4    1.2  0.5 -0.5  -0.000000168   0.000000178   0.000000125  -0.000000236   0.000010627   0.000003569   0.000000027   0.000000165
                        -0.000001535   0.000001775   0.000001702  -0.000003370   0.000002582   0.000000864  -0.000000942  -0.000006756

    5    2.2  0.5 -0.5   0.000000095  -0.000000135  -0.000000200   0.000000313  -0.000002969  -0.000000350  -0.000000019   0.000000010
                         0.000000394   0.000011734  -0.000000412  -0.000022261  -0.000000721   0.000004516  -0.000007121   0.000001677

    6    3.2  0.5 -0.5  -0.000000247  -0.000000184   0.000000198   0.000000253   0.000015163  -0.000002493   0.000000045   0.000000249
                        -0.000002177   0.000000995   0.000002410  -0.000001889   0.000003572   0.000000596  -0.000000436  -0.000009566

    7    1.2  1.5  1.5   0.000711457  -0.006542207  -0.001931931  -0.003001548   0.000005847   0.000002432  -0.000001031   0.000008698
                        -0.000119924   0.631718884   0.000520540   0.227848150   0.000004731  -0.000585279  -0.001189723  -0.000025165

    8    2.2  1.5  1.5   0.000434987   0.364979866  -0.000113934   0.513019382   0.000007940   0.000563439   0.001171441   0.000024786
                         0.002064151   0.003767146   0.001427860   0.006726356   0.000008388   0.000002496  -0.000001240   0.000018895

    9    3.2  1.5  1.5  -0.012181844   0.002385155  -0.026390318   0.002427783  -0.001737551  -0.000002063   0.000014329   0.000033390
                        -0.105321282   0.000347323  -0.301148131  -0.000246468  -0.000412987  -0.000023962   0.000026646  -0.001421613

   10    4.2  1.5  1.5  -0.000861057  -0.000356575   0.000982264  -0.002831417  -0.001442170  -0.000112302  -0.000042901   0.001951967
                         0.000316521   0.026667127  -0.000425398   0.216694705  -0.001042630   0.049058353  -0.341632218  -0.006610473

   11    5.2  1.5  1.5   0.007491049   0.002448676  -0.007281795  -0.000687767  -0.507322130  -0.004032757   0.001134970   0.004989509
                         0.065112666   0.000079038  -0.082710518  -0.000454869  -0.120861463  -0.006810127   0.005162555  -0.195556799

   12    6.2  1.5  1.5  -0.000231496   0.243878263   0.000489932  -0.015565741   0.004351075  -0.187398528  -0.016670542   0.000019856
                        -0.001203089   0.002537888   0.001834581  -0.000115809  -0.001458371  -0.000862890  -0.000272436   0.001557398

   13    7.2  1.5  1.5  -0.010977885   0.000285487  -0.163997821  -0.000207074   0.045783456   0.002615295   0.004607827  -0.276503906
                         0.001277738  -0.000236512   0.014388691   0.000891969  -0.191794472  -0.001099782  -0.001244365  -0.006454027

   14    8.2  1.5  1.5  -0.081091998  -0.000083441   0.002155288   0.000047191  -0.144530279  -0.008203590   0.004364074  -0.195388140
                         0.009346140   0.000680072  -0.000194865  -0.000144449   0.607019687   0.002898045  -0.001153349  -0.004815784

   15    1.2  1.5  0.5   0.298980189   0.000051053  -0.003121214  -0.000106392  -0.000083503  -0.000006206  -0.000013285   0.000519892
                        -0.034457613  -0.002470068   0.000293375   0.000753173   0.000353793  -0.000000119   0.000005719   0.000014879

   16    2.2  1.5  0.5   0.013359824  -0.001286364  -0.046008318   0.000607883   0.001670490   0.000009911  -0.000007698  -0.000053594
                         0.116567206   0.000504600  -0.524746000  -0.000664008   0.000397718   0.000021640  -0.000044666   0.002180902

   17    3.2  1.5  0.5  -0.000700493   0.461983544   0.001041748  -0.493964981   0.000014958  -0.000361231  -0.000688229  -0.000015020
                        -0.002653458   0.004806151   0.000855303  -0.006453425  -0.000000613  -0.000001352   0.000000282   0.000010682

   18    4.2  1.5  0.5  -0.102249988  -0.000361630   0.095812618  -0.000119358  -0.015907395  -0.001370946  -0.011617771   0.618257855
                         0.011801810   0.001063061  -0.008455933  -0.000783411   0.067288901  -0.000000414   0.003244439   0.015079049

   19    5.2  1.5  0.5   0.000045680  -0.161547034   0.000040273  -0.198324087  -0.002742964   0.008355321   0.013434717  -0.000598021
                        -0.000351876  -0.001718450   0.001178265  -0.002584053  -0.000680017   0.000009018  -0.000004901  -0.000295345

   20    6.2  1.5  0.5  -0.009898924   0.000150095   0.012573696   0.002353599  -0.330547835  -0.001130767  -0.000168165   0.001169830
                        -0.085746360  -0.000055533   0.142996734   0.000227464  -0.078646582  -0.004836052   0.001000008  -0.054237284

   21    7.2  1.5  0.5  -0.000293094   0.001441804   0.000933096  -0.000620841  -0.003690413  -0.001121627  -0.000143924   0.003530671
                         0.000054165  -0.137402731  -0.000186440   0.050648929  -0.001811525   0.244656034  -0.585267705  -0.011118957

   22    8.2  1.5  0.5  -0.000702395  -0.000968853  -0.000066370  -0.000893361  -0.003724385  -0.001386352  -0.000256147   0.000311000
                         0.000116628   0.095583075  -0.000011491   0.067675296  -0.001477701   0.286015180   0.040409149   0.000423786

   23    1.2  1.5 -0.5   0.002774172  -0.002611501  -0.001406833   0.000264912   0.000006046   0.000002402   0.000002150  -0.000006075
                        -0.000371010   0.245706329   0.000300078  -0.019825277   0.000001349  -0.000363404   0.000519812   0.000013221

   24    2.2  1.5 -0.5  -0.000068869   0.216302369   0.000684513  -0.474148057  -0.000014779   0.001718504   0.002178459   0.000044410
                         0.002274543   0.002195390  -0.000569007  -0.006189731   0.000018694   0.000007995  -0.000000121   0.000008816

   25    3.2  1.5 -0.5  -0.047813100  -0.002954632   0.046298782   0.000287401   0.000354729   0.000014409   0.000011060  -0.000017037
                        -0.415515789  -0.000597167   0.527853616   0.000822056   0.000084793   0.000004179  -0.000014644   0.000683596

   26    4.2  1.5 -0.5  -0.000872693   0.001142117   0.001030296  -0.001237749   0.001332625   0.000430933  -0.000081743  -0.003526546
                         0.000474370  -0.105839324  -0.000017042   0.091190168   0.000321349  -0.069053524   0.618407856   0.011533918

   27    5.2  1.5 -0.5   0.022322740  -0.000882154   0.015925131   0.001302640  -0.008129298  -0.002827727  -0.000278125   0.000334729
                         0.193867302   0.000036028   0.181824879  -0.000021782  -0.001966438   0.000013946  -0.000607754  -0.013474143

   28    6.2  1.5 -0.5  -0.000055229  -0.103175877  -0.000420954   0.132285487   0.002241102  -0.339777181  -0.053988549  -0.000986483
                        -0.000677216  -0.001105414  -0.002433032   0.001758866  -0.004432641  -0.001632171  -0.000162744   0.000150177

   29    7.2  1.5 -0.5   0.119692992   0.000055088  -0.075413365  -0.000096706  -0.056703526  -0.004013277  -0.011195393   0.584972556
                        -0.013782612  -0.000511056   0.006576683   0.000759302   0.238092155   0.000891626   0.003255389   0.014487483

   30    8.2  1.5 -0.5  -0.079117247   0.000031415  -0.034745578  -0.000009930  -0.066188532  -0.003968556   0.000433436  -0.040590015
                         0.009062291  -0.000640275   0.003055919  -0.000068850   0.278241900   0.000554802   0.000316756  -0.000741993

   31    1.2  1.5 -1.5   0.633087694   0.000081280   0.126578422  -0.000280134  -0.000136323  -0.000006828   0.000025324  -0.001189105
                        -0.072758023  -0.000597857  -0.011108005   0.001202151   0.000571332   0.000003218  -0.000008057  -0.000030177

   32    2.2  1.5 -1.5   0.045151956  -0.002130555   0.037835870  -0.000954051   0.000549134  -0.000009721  -0.000018284  -0.000029871
                         0.393179003  -0.000287464   0.431315939   0.000224310   0.000130868   0.000006291  -0.000025145   0.001168104

   33    3.2  1.5 -1.5   0.000391367   0.016981551  -0.000096611   0.262296816  -0.000007685   0.001789955   0.001426883   0.000026305
                         0.001644605   0.000240966   0.002049366   0.003419006   0.000022833   0.000009008   0.000001489   0.000014958

   34    4.2  1.5 -1.5   0.041594341  -0.000284146   0.199825406   0.000318420   0.011489985   0.001646561   0.006660188  -0.341502968
                        -0.004847190   0.001242346  -0.017510440  -0.000889196  -0.047758849  -0.000675756  -0.001789533  -0.008417887

   35    5.2  1.5 -1.5   0.000263330  -0.072391194  -0.000538161   0.077402824  -0.005526966   0.521542880   0.195703780   0.005144526
                         0.002245478  -0.000758524  -0.001046527   0.001035209   0.005665363   0.002352779  -0.000196418   0.001268174

   36    6.2  1.5 -1.5   0.027257430   0.001386066  -0.004165620  -0.001458571  -0.182292209  -0.003881760  -0.001554370   0.000141000
                         0.236965042   0.000159259  -0.048368839  -0.000292935  -0.043410477  -0.002445562  -0.000044740  -0.016772135

   37    7.2  1.5 -1.5   0.000245217   0.000284759   0.000868660  -0.001910276   0.002281740   0.000799882  -0.000328202  -0.001350373
                         0.000190517  -0.028751906  -0.000295815   0.145482799   0.001685102  -0.197140645   0.276445693   0.004564801

   38    8.2  1.5 -1.5   0.000756695  -0.000711746  -0.000324914   0.000087502  -0.007287439  -0.002895796   0.000025328  -0.001263579
                        -0.000168084   0.066943483   0.000104183  -0.006542386  -0.004753579   0.624010524   0.195391094   0.004335789


   Nr   State  S   Sz       17            18            19            20            21            22            23            24

    1    1.2  0.5  0.5   0.000002177  -0.000013252   0.000003283   0.000000424  -0.001589959   0.001456565   0.000786709   0.001758553
                        -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000

    2    2.2  0.5  0.5  -0.000000815  -0.000000780   0.000005293   0.000000089   0.000074729  -0.000391537  -0.000215887   0.000489831
                        -0.000000003   0.000012966   0.000000159  -0.000010119   0.000832716   0.000001073   0.000014388   0.002681843

    3    3.2  0.5  0.5   0.000003224   0.000009172   0.000003926   0.000000002   0.001163454   0.002007103   0.001131539  -0.001161356
                         0.000000437   0.000002541  -0.000000362   0.000001261   0.000161624  -0.000001579  -0.000001396   0.000518900

    4    1.2  0.5 -0.5   0.000012872   0.000002112   0.000000425  -0.000003277  -0.001621965  -0.001992984   0.001193978  -0.000349879
                         0.000003155   0.000000518  -0.000000026   0.000000201  -0.000123866  -0.000004356  -0.000433076   0.000085357

    5    2.2  0.5 -0.5  -0.000002330  -0.000000792   0.000000705  -0.000005273   0.000434313   0.000175178  -0.000111546   0.000098739
                         0.000012765  -0.000000191   0.000010094   0.000000481   0.000053345  -0.000036937  -0.002843476  -0.000014835

    6    3.2  0.5 -0.5  -0.000009515   0.000003232  -0.000000076  -0.000003941  -0.002228748   0.001479477  -0.000887366  -0.000509243
                         0.000000281   0.000000343  -0.000001259  -0.000000123  -0.000174233  -0.000003349  -0.000240975   0.000123529

    7    1.2  1.5  1.5  -0.000164229  -0.000025337  -0.000007843   0.000073882   0.000269358  -0.000211056  -0.000489075   0.000548917
                         0.001823844  -0.000013211  -0.000118897  -0.000006758  -0.003655947  -0.365822378  -0.203268669   0.002199127

    8    2.2  1.5  1.5  -0.001867216   0.000032045   0.000131261   0.000005873   0.004824412   0.365789839   0.203247315  -0.007133286
                        -0.000167874  -0.000023438  -0.000009695   0.000081485   0.000343849  -0.000211398  -0.000489097   0.001814464

    9    3.2  1.5  1.5  -0.000023123  -0.002572722  -0.000006161   0.000213778  -0.161828108   0.008093183   0.002452264   0.686772005
                        -0.000043133  -0.000388978   0.000130786   0.000001486  -0.012686166   0.000125336   0.000018465  -0.165532957

   10    4.2  1.5  1.5   0.014081583   0.002844770   0.028544083  -0.233674019  -0.000321871   0.000131995   0.000211281  -0.000266804
                        -0.150980238   0.001475326   0.380600331   0.019596971   0.001341720   0.137328073   0.077366719  -0.000731526

   11    5.2  1.5  1.5  -0.000699653   0.429810121   0.003536276  -0.099909096  -0.156141416   0.001011664  -0.001732295  -0.035078466
                         0.006310588   0.065309357  -0.062032354  -0.000314972  -0.012264627  -0.000172871  -0.000155327   0.008426194

   12    6.2  1.5  1.5  -0.398411242  -0.000278366   0.325512574   0.017221979  -0.000291911  -0.140002063  -0.075716951   0.001089801
                        -0.036245584  -0.006208619  -0.023904109   0.200006933  -0.000093166   0.000131936   0.000210558  -0.000258943

   13    7.2  1.5  1.5  -0.006117372  -0.052785036   0.167081931   0.003822380  -0.008212797  -0.000030343  -0.000050919  -0.026944267
                         0.001621392   0.348397684   0.003823108  -0.272544392   0.104856413  -0.001926157   0.000417581  -0.111797608

   14    8.2  1.5  1.5   0.002031919   0.023811556   0.043503996   0.000727784   0.008975247   0.000022673   0.000057493  -0.024499016
                        -0.001302714  -0.156191378   0.001308664  -0.071000087  -0.114048437   0.001151597  -0.001081978  -0.101673438

   15    1.2  1.5  0.5  -0.000056728  -0.000541084  -0.000003880  -0.000000012  -0.044250792   0.000207510  -0.000090233  -0.070234109
                         0.000013294   0.003569880   0.000001621   0.000004051   0.562922268  -0.009191354   0.003017249  -0.291271688

   16    2.2  1.5  0.5  -0.000010085  -0.000623464   0.000007819  -0.000305581  -0.376016106   0.004414327  -0.003310861  -0.501782924
                        -0.000008960  -0.000095962  -0.000188619  -0.000001512  -0.029600077  -0.000006319  -0.000154617   0.120917413

   17    3.2  1.5  0.5   0.001075355  -0.000012398  -0.000066554  -0.000006023  -0.004827318  -0.211192780  -0.117384685  -0.002365212
                         0.000096779   0.000014758   0.000002996  -0.000041432  -0.000300055   0.000120365   0.000281431   0.000482629

   18    4.2  1.5  0.5   0.000934553   0.001547582  -0.136762336  -0.003066835  -0.002666117  -0.000076640   0.000210066  -0.036290458
                        -0.000675976  -0.010978833  -0.003156439   0.224722213   0.033808078  -0.001100596  -0.000201195  -0.150800197

   19    5.2  1.5  0.5  -0.123746685  -0.002221769   0.441773451   0.024883784  -0.001755366  -0.077304529   0.137519546  -0.001083870
                        -0.011315060  -0.001871346  -0.031794300   0.270458403  -0.000134529   0.000012371  -0.000318518   0.000498906

   20    6.2  1.5  0.5  -0.000373031  -0.438941993  -0.007759508   0.319737142   0.036958123  -0.000667149  -0.001193271  -0.151576465
                        -0.007123102  -0.066504234   0.195926378   0.002697394   0.002909304  -0.000022697   0.000085677   0.036475668

   21    7.2  1.5  0.5  -0.013363362  -0.002000825   0.011753917  -0.095202808   0.000049137  -0.000043079  -0.000328272   0.000114012
                         0.151692086  -0.000384817   0.155666510   0.008161004  -0.000172310  -0.080401098  -0.133622574   0.000697745

   22    8.2  1.5  0.5  -0.044462672  -0.006960768  -0.008090897   0.066066164   0.000124419  -0.000058583   0.000164496   0.000119763
                         0.490704347  -0.003336464  -0.107354955  -0.005310136  -0.002375610  -0.131761003   0.080734029   0.000288972

   23    1.2  1.5 -0.5   0.000324669   0.000051876   0.000000411  -0.000005254  -0.000544156   0.000306576  -0.000222873  -0.000663403
                        -0.003592214   0.000026400   0.000006167  -0.000001259   0.009573777   0.625627124  -0.131139438  -0.002355163

   24    2.2  1.5 -0.5  -0.000625339   0.000011920   0.000303806   0.000019240   0.000567203   0.219183498   0.600543204  -0.002305198
                        -0.000055051  -0.000006311  -0.000020029   0.000187117   0.000147183  -0.000178740  -0.001350944   0.000673813

   25    3.2  1.5 -0.5  -0.000008498  -0.001065148   0.000003487  -0.000067237  -0.234756966   0.004601245   0.002535823  -0.052650733
                        -0.000017237  -0.000161853  -0.000042104   0.000001044  -0.018462815   0.000109341  -0.000087288   0.012676774

   26    4.2  1.5 -0.5  -0.001131307  -0.000734569   0.016756100  -0.136366225  -0.000150260   0.000053569  -0.000349910   0.000236533
                         0.011198974  -0.000872175   0.224200804   0.011482855   0.001932344   0.075614153  -0.139602598   0.000012834

   27    5.2  1.5 -0.5  -0.002603065   0.122812473  -0.008364806   0.442901780  -0.036011184   0.000635020   0.001202343   0.149303507
                         0.001288105   0.018482824   0.271479488   0.004827479  -0.002806013  -0.000075500   0.000212426  -0.035968181

   28    6.2  1.5 -0.5  -0.442112240   0.002058658  -0.319041179  -0.019681920  -0.001797071  -0.078867088   0.139494440  -0.001145715
                        -0.039984787  -0.006828633   0.022171564  -0.195130373  -0.000125681   0.000053170  -0.000351924   0.000191448

   29    7.2  1.5 -0.5  -0.002021757  -0.023191880   0.095556311   0.002252825  -0.008962765  -0.000035226   0.000034720   0.024820197
                        -0.000106505   0.150728303   0.002346096  -0.156150497   0.113959906  -0.001075085   0.001056222   0.103122782

   30    8.2  1.5 -0.5  -0.007556274  -0.073722724  -0.066307780  -0.001537902  -0.008160890   0.000063910  -0.000042507  -0.026748190
                         0.001583241   0.487139844  -0.001276784   0.107711108   0.103864405  -0.001940957   0.000338037  -0.110955645

   31    1.2  1.5 -1.5   0.000027709   0.000274810   0.000072578   0.000000557   0.031980713  -0.000040962   0.000043984  -0.021949021
                        -0.000006786  -0.001809072   0.000002205  -0.000116578  -0.406583908   0.005231956  -0.003106478  -0.091166061

   32    2.2  1.5 -1.5  -0.000025578  -0.001856130   0.000000910  -0.000134359  -0.406519773   0.007769712  -0.007674933  -0.091148858
                        -0.000030419  -0.000282217  -0.000083382  -0.000001742  -0.031976170   0.000077106  -0.000100645   0.021944879

   33    3.2  1.5 -1.5   0.002595571  -0.000032764   0.000216345   0.000014240  -0.012191856  -0.351935223   0.633615342  -0.000945946
                         0.000235568   0.000036410  -0.000014746   0.000132057  -0.000753622   0.000112529  -0.001364248   0.000231984

   34    4.2  1.5 -1.5  -0.003122258  -0.022270229  -0.234473084  -0.005310986  -0.012085574  -0.000175616  -0.000156573   0.008467333
                         0.000757719   0.149815141  -0.005327435   0.381696267   0.152919001  -0.001935401   0.001096021   0.035215044

   35    5.2  1.5 -1.5  -0.432918613   0.000827826  -0.099720194  -0.007308015  -0.000281885  -0.140467020  -0.078118118   0.001059745
                        -0.038963867  -0.006298523   0.006401784  -0.061712084  -0.000236486   0.000060248   0.000200326  -0.000346800

   36    6.2  1.5 -1.5   0.001748052  -0.395521129   0.005008366  -0.326415339   0.155022004  -0.001000125   0.001738153   0.032962151
                        -0.005964378  -0.059710575  -0.200717837  -0.004033892   0.012250868   0.000060655   0.000026960  -0.007922175

   37    7.2  1.5 -1.5  -0.031745676  -0.005549375   0.020422453  -0.166585955   0.000214479  -0.000036081   0.000179753   0.000118097
                         0.350992502  -0.003029513   0.271881275   0.013994895  -0.002336809  -0.132955396   0.081290238   0.000358311

   38    8.2  1.5 -1.5   0.014079999   0.001666064   0.005051235  -0.043355481  -0.000068123   0.000056625   0.000300550  -0.000214146
                        -0.157316471   0.001752845   0.070842171   0.003957963   0.000245356   0.080899053   0.132220331  -0.000720206


   Nr   State  S   Sz       25            26            27            28            29            30            31            32

    1    1.2  0.5  0.5   0.000853950   0.000583295  -0.000000475   0.000001404   0.000004011   0.000000915  -0.000004714  -0.000001101
                         0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000

    2    2.2  0.5  0.5   0.000108913  -0.000158882  -0.000002889  -0.000000385  -0.000001131   0.000005275   0.000001323  -0.000007136
                        -0.001013938   0.000000021  -0.000000848  -0.000000001   0.000000063  -0.000001701  -0.000000061  -0.000000075

    3    3.2  0.5  0.5  -0.000579616   0.000829517  -0.000000223   0.000002001   0.000005712   0.000000466  -0.000006708  -0.000000637
                        -0.000194206   0.000000028  -0.000000163   0.000000001  -0.000000008  -0.000000240   0.000000004  -0.000000085

    4    1.2  0.5 -0.5  -0.000573729   0.000839992   0.000000383   0.000000135  -0.000000286   0.000001350   0.000000022   0.000000043
                        -0.000105096   0.000153870  -0.000001321  -0.000000459  -0.000000751   0.000004239   0.000001189  -0.000004293

    5    2.2  0.5 -0.5   0.000156273  -0.000075565  -0.000000103  -0.000000011   0.000000022  -0.000000308   0.000000002  -0.000000059
                         0.000028647   0.001016989   0.000000363  -0.000003026  -0.000004790  -0.000001225   0.000007674   0.000001199

    6    3.2  0.5 -0.5  -0.000815919  -0.000605135   0.000000544  -0.000000096   0.000000115   0.000001914   0.000000077   0.000000064
                        -0.000149432   0.000086593  -0.000001882  -0.000000260  -0.000000444   0.000006040   0.000000693  -0.000006108

    7    1.2  1.5  1.5  -0.000006262   0.000008855   0.000065382   0.000022734  -0.000262494  -0.000873525  -0.000381221   0.000057679
                        -0.000014131  -0.487063729   0.000064406  -0.117684041  -0.105009587   0.001092886  -0.236256788  -0.000064840

    8    2.2  1.5  1.5   0.000014138   0.487055957   0.000555438  -0.147706388  -0.216432784  -0.000343251  -0.109708079   0.000510851
                        -0.000006258   0.000009223  -0.001544721  -0.000039139   0.000527080  -0.000920522   0.000185322   0.000383400

    9    3.2  1.5  1.5  -0.000001215   0.003511435  -0.058530832  -0.001158486  -0.001802847   0.031441966  -0.000208269  -0.000647799
                        -0.000000285  -0.000051047   0.202358181   0.000082896  -0.000038193   0.099631430   0.000335538   0.058334279

   10    4.2  1.5  1.5   0.000147858   0.000017106   0.000080968  -0.000135125   0.001255149  -0.001975417  -0.000215566   0.002717894
                         0.000021135   0.050535646  -0.000140983   0.280612366   0.517612969   0.001800414  -0.026626358  -0.001423231

   11    5.2  1.5  1.5   0.099424175  -0.000363361  -0.012892446   0.000932502   0.001722613  -0.058661800   0.002299958  -0.002048106
                         0.018201959  -0.000075858   0.044309193  -0.000347487   0.000295726  -0.185589989  -0.001150232   0.182057406

   12    6.2  1.5  1.5  -0.000719573  -0.050532927   0.000211612   0.138384497  -0.010150186  -0.003065577   0.572821719   0.000973259
                        -0.000083105   0.000017637  -0.000212797   0.000113514   0.000186309  -0.001800095  -0.000909891   0.000150899

   13    7.2  1.5  1.5   0.008960249  -0.000028332  -0.459533891  -0.000120772   0.000588212  -0.328485826  -0.001125844  -0.048971534
                        -0.049017805   0.000021369  -0.132931882  -0.000084242  -0.001257767   0.103707266   0.002257021  -0.000573752

   14    8.2  1.5  1.5  -0.015837375   0.000012981  -0.311376350  -0.000215395  -0.000872656   0.027125042   0.000415861  -0.236975130
                         0.086468219   0.000013137  -0.090057142  -0.000088554   0.001394312  -0.008572225  -0.000778155  -0.002655633

   15    1.2  1.5  0.5   0.050662673  -0.000064041  -0.199577248  -0.000123104  -0.000571701   0.015533925   0.000361158  -0.150343424
                        -0.276602841   0.000007392  -0.057722522  -0.000111464   0.000775650  -0.004910816  -0.000476519  -0.001684314

   16    2.2  1.5  0.5   0.276598422  -0.004062070  -0.043664728  -0.000425763  -0.002587089   0.059346272   0.003066211   0.000563873
                         0.050662153  -0.000005096   0.150944629   0.000047682  -0.000601931   0.188059160   0.000957494  -0.049364240

   17    3.2  1.5  0.5   0.002015791   0.562397563  -0.000418579   0.052020853   0.192995670   0.002542741  -0.219213193  -0.000990232
                         0.000329002   0.000010606   0.001128124   0.000027766  -0.000461886   0.003213030   0.000341763  -0.001848442

   18    4.2  1.5  0.5   0.015738787  -0.000001572  -0.156176967   0.000063281  -0.002243947   0.222391953   0.000941171  -0.289317752
                        -0.086102318   0.000052322  -0.045171975  -0.000189902   0.002391905  -0.070328540  -0.002232111  -0.003158420

   19    5.2  1.5  0.5   0.000591483  -0.000003758   0.000161126   0.135269377  -0.502304106   0.001147324  -0.410087660   0.001337038
                         0.000238719  -0.000015028   0.000245515   0.000028769   0.001227448   0.002581072   0.000619171  -0.000205913

   20    6.2  1.5  0.5   0.086111012  -0.000002239  -0.008244212  -0.000928301   0.000880905   0.098962995   0.005774850   0.002537833
                         0.015739462   0.000035064   0.028242830   0.000221847  -0.001568298   0.313241625   0.002040729  -0.236122145

   21    7.2  1.5  0.5   0.000051877   0.000001663   0.000016592   0.000046125   0.000341695  -0.001812696  -0.000382644   0.001126428
                        -0.000028053  -0.087909726   0.000133238  -0.263958636   0.111789478   0.002326484  -0.282598165  -0.000944348

   22    8.2  1.5  0.5  -0.000015271   0.000000941  -0.000277049  -0.000173473   0.000392780   0.000059838   0.000184786   0.000482151
                        -0.000031326  -0.049814733  -0.000412925   0.561911193   0.159539991  -0.000039510   0.093334865  -0.000319210

   23    1.2  1.5 -0.5  -0.000061661   0.000005530  -0.000073656  -0.000075311  -0.000010652  -0.000747771  -0.000229929   0.000368977
                        -0.000018810  -0.281204744  -0.000145799   0.205200032  -0.002922220   0.001015516  -0.154655903  -0.000279256

   24    2.2  1.5 -0.5  -0.003996501  -0.281200320   0.000159141  -0.153155969   0.195930955   0.001582626  -0.064589214  -0.000704107
                        -0.000726900  -0.000005245  -0.000379664  -0.000048489  -0.000476294   0.002571141   0.000114115  -0.002563355

   25    3.2  1.5 -0.5   0.553194183  -0.002042083  -0.014050475  -0.001164945   0.003383607  -0.064257328  -0.002427758  -0.002246116
                         0.101323701  -0.000039593   0.048610666   0.000090921   0.001152824  -0.203577526  -0.001313402   0.199677465

   26    4.2  1.5 -0.5   0.000007882   0.000032945  -0.000214872  -0.000059375   0.000366234  -0.002053294  -0.000375398   0.001684510
                        -0.000051750  -0.087527395   0.000039193   0.162728455   0.201572840   0.003358418  -0.312147726  -0.000503111

   27    5.2  1.5 -0.5  -0.000006424  -0.000624804  -0.043140193  -0.000177995   0.002226442   0.138169893   0.000188635  -0.005078420
                         0.000014101   0.000128234   0.149078327  -0.000212515   0.000071890   0.437879274   0.001744234   0.451490446

   28    6.2  1.5 -0.5   0.000004116  -0.087536060   0.000508470  -0.025833793   0.306281056   0.001858463  -0.264705171  -0.001548835
                        -0.000034895  -0.000033847  -0.000956612   0.000063429  -0.000655408  -0.000598726   0.000282906  -0.005387048

   29    7.2  1.5 -0.5  -0.015838574  -0.000045972  -0.251712826  -0.000117758   0.001323283  -0.124645295  -0.001185898   0.276184724
                         0.086473450  -0.000036940  -0.072856676  -0.000058806  -0.001939567   0.039275636   0.001455275   0.003047477

   30    8.2  1.5 -0.5  -0.008975061   0.000020665   0.534012095   0.000317756   0.000027967  -0.156456547  -0.000501873  -0.118141314
                         0.049000896  -0.000028061   0.154481468   0.000379506  -0.000019519   0.049370780   0.000745439  -0.001374640

   31    1.2  1.5 -1.5   0.087751643  -0.000008705   0.106564821   0.000039539  -0.000557303  -0.081813266   0.000034870  -0.247025024
                        -0.479093362   0.000012771   0.030841289   0.000079543   0.000833719   0.025806441  -0.000009392  -0.002800574

   32    2.2  1.5 -1.5  -0.479085794   0.000012778  -0.038949632  -0.001606176   0.001132030  -0.062907019  -0.000748229   0.001505046
                        -0.087749883   0.000008703   0.134618731   0.000100970   0.000096288  -0.199344655  -0.000720410  -0.131754719

   33    3.2  1.5 -1.5  -0.003444764  -0.000001240  -0.000384204   0.206879576  -0.114835242  -0.000534237  -0.052032299   0.000251651
                        -0.000682910   0.000000061   0.001033984   0.000071989   0.000276971  -0.001635828   0.000067270  -0.000514287

   34    4.2  1.5 -1.5  -0.009122775   0.000149245  -0.256852641  -0.000154267  -0.000952523   0.500285570   0.002026724   0.025989753
                         0.049707119   0.000005853  -0.074256438   0.000047087   0.002132307  -0.157867368  -0.003645400   0.000130322

   35    5.2  1.5 -1.5   0.000371095   0.101075630   0.000556935   0.047441503   0.175960440   0.001065910  -0.199873116  -0.000975866
                        -0.000009145   0.000010455  -0.000733892  -0.000054908  -0.000345010   0.001522321   0.000305975   0.002721872

   36    6.2  1.5 -1.5   0.049704429  -0.000722763   0.035791191  -0.000268513   0.001856098  -0.017664755  -0.000375747  -0.006449191
                         0.009122822  -0.000047909  -0.123963817   0.000149569   0.001761209  -0.056475959  -0.001191585   0.572007798

   37    7.2  1.5 -1.5   0.000024019  -0.000018557   0.000040392   0.000148839   0.000833150  -0.001125824   0.000056576   0.001714475
                         0.000026125   0.049829510   0.000138601  -0.468758582   0.359904710   0.001027967   0.025193748  -0.000763166

   38    8.2  1.5 -1.5  -0.000015136   0.000001900   0.000030954   0.000117852   0.000008770   0.001358585   0.000363884  -0.000586292
                         0.000010584  -0.087905823   0.000225453  -0.320176620   0.001762074  -0.001613976   0.243971042   0.000287217


   Nr   State  S   Sz       33            34            35            36            37            38

    1    1.2  0.5  0.5   0.003825391   0.001540939   0.005453787   0.000736143  -0.003446350  -0.005014268
                        -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000

    2    2.2  0.5  0.5  -0.001040275   0.002217502   0.000131699  -0.000200691   0.000938624  -0.000646113
                         0.000004035  -0.004338025   0.004725139  -0.000001139  -0.000000017   0.005971218

    3    3.2  0.5  0.5   0.005435972  -0.000656894  -0.003813797   0.001044368  -0.004900880   0.003402343
                         0.000000459  -0.000828638   0.000904447   0.000000638  -0.000000014   0.001143615

    4    1.2  0.5 -0.5  -0.001827247   0.003290416   0.001062937  -0.005267291  -0.004931700   0.003389591
                        -0.000670054   0.001787642  -0.000138819   0.000768402  -0.000906085   0.000622759

    5    2.2  0.5 -0.5   0.000164844  -0.000893225  -0.000289495   0.000468125   0.000443534  -0.000923162
                        -0.004435127  -0.000489419   0.000039130   0.005115025  -0.005989646  -0.000169627

    6    3.2  0.5 -0.5   0.001314209   0.004677035   0.001508384   0.003796800   0.003552971   0.004820168
                        -0.000377409   0.002540808  -0.000197822   0.000438421  -0.000509976   0.000885580

    7    1.2  1.5  1.5  -0.000005972   0.000047433  -0.000036802   0.000015886  -0.000000069   0.000000114
                        -0.154724828  -0.000033799   0.000074768  -0.029734034   0.112966671   0.000000386

    8    2.2  1.5  1.5   0.154715656   0.000512895  -0.001946606   0.029758337  -0.112966024  -0.000000290
                        -0.000005537   0.000298539   0.000237161   0.000015913  -0.000000160   0.000000130

    9    3.2  1.5  1.5   0.001256710  -0.065934548   0.260125541   0.000223177  -0.000814438  -0.000013689
                        -0.000057075  -0.035789279  -0.034211159  -0.000000289   0.000011860  -0.000002525

   10    4.2  1.5  1.5  -0.000162291  -0.000452149  -0.000217475   0.000013842   0.000077544   0.000634694
                        -0.411022963  -0.000306572   0.000021678  -0.079033885   0.217793400   0.000085873

   11    5.2  1.5  1.5   0.003047929  -0.353562159  -0.114058591   0.000410783  -0.001555915   0.428480945
                         0.000561928  -0.192096948   0.015018822   0.000158308  -0.000319729   0.078685358

   12    6.2  1.5  1.5   0.411030617   0.002692726   0.000599089   0.079001591  -0.217791473  -0.003095577
                        -0.000166416   0.001351040  -0.000329512   0.000012825   0.000079806  -0.000362408

   13    7.2  1.5  1.5   0.000257857  -0.046907308   0.053038007   0.000060131  -0.000118621   0.038742294
                        -0.000030472   0.086380161   0.403317241   0.000055692   0.000086905  -0.211290694

   14    8.2  1.5  1.5  -0.000027071   0.194184451   0.012863568  -0.000056602   0.000049757  -0.068479659
                         0.000080325  -0.357421897   0.097471127  -0.000150798   0.000065429   0.372734168

   15    1.2  1.5  0.5   0.000003285   0.062840824  -0.026251928  -0.000014990   0.000013788  -0.011790254
                        -0.000032028  -0.115609303  -0.199778238  -0.000071536  -0.000000188   0.064173486

   16    2.2  1.5  0.5   0.000512986   0.191752721  -0.100591941   0.000185291   0.000940750  -0.064154228
                         0.000040996   0.104171918   0.013251828  -0.000019835   0.000000088  -0.011786754

   17    3.2  1.5  0.5  -0.089336404   0.001367334  -0.000686894  -0.017163968  -0.130457176  -0.000464189
                         0.000003660   0.000715505   0.000080061  -0.000009325  -0.000000179  -0.000078126

   18    4.2  1.5  0.5  -0.000053466   0.054930700   0.052325496   0.000599160  -0.000000560   0.068043158
                         0.000018768  -0.101112617   0.398963607  -0.000054501   0.000216776  -0.371098728

   19    5.2  1.5  0.5  -0.079015408  -0.000929547   0.002751020   0.411027008   0.000017149   0.002548514
                         0.000035485  -0.000371576  -0.000954686   0.000376289  -0.000064745   0.001030212

   20    6.2  1.5  0.5   0.000780745  -0.101109934   0.399006293  -0.002920587  -0.000001305   0.371057909
                        -0.000247942  -0.054930576  -0.052326974   0.000163767   0.000157326   0.068031649

   21    7.2  1.5  0.5   0.000011868  -0.000189856   0.000261577   0.000088436   0.000000513   0.000228153
                         0.396518708   0.000079596  -0.000025140  -0.133884673  -0.378973567  -0.000111211

   22    8.2  1.5  0.5   0.000034838   0.000097864  -0.000065445  -0.000367207   0.000000307  -0.000063167
                         0.133912621  -0.000080010   0.000023171   0.396491512  -0.214754986  -0.000129596

   23    1.2  1.5 -0.5   0.000018444  -0.000006670   0.000006712  -0.000168583  -0.000000131   0.000013528
                         0.148901184  -0.000008909  -0.000089382   0.189060634   0.065244140   0.000002676

   24    2.2  1.5 -0.5   0.208385205  -0.000462821  -0.000253360  -0.120380010   0.065224562   0.000925303
                         0.000005055  -0.000206144   0.000010829  -0.000131872   0.000000094   0.000169914

   25    3.2  1.5 -0.5   0.001477564   0.076850525   0.024790559  -0.000834639   0.000470640  -0.128313000
                         0.000024391   0.041758977  -0.003249400   0.000009710   0.000007040  -0.023574351

   26    4.2  1.5 -0.5  -0.000003565   0.000111769  -0.000592342   0.000252270   0.000135349   0.000038621
                         0.079000710   0.000039952   0.000012187  -0.410985682  -0.377285569  -0.000213308

   27    5.2  1.5 -0.5  -0.000780574   0.101112452  -0.398986154   0.002920022  -0.002692724   0.000005171
                        -0.000053434   0.054962477   0.052456532   0.000600850   0.000552731   0.000066779

   28    6.2  1.5 -0.5  -0.079000738  -0.000754088   0.002846655   0.411026678  -0.377243323   0.000027146
                        -0.000002761  -0.000694928  -0.000225991   0.000248133  -0.000139292  -0.000154971

   29    7.2  1.5 -0.5  -0.000108734  -0.194226802  -0.012787269   0.000262182  -0.000204301  -0.068480471
                        -0.000174661   0.357455533  -0.097426966  -0.000035870  -0.000150607   0.372732784

   30    8.2  1.5 -0.5   0.000052446  -0.046969137   0.053017118  -0.000075499   0.000085545  -0.038806182
                         0.000156467   0.086347521   0.403318304  -0.000038723  -0.000116048   0.211218500

   31    1.2  1.5 -1.5  -0.000020540  -0.072326607   0.005628666   0.000044029   0.000000182  -0.020413268
                        -0.000042911   0.133105975   0.042945018   0.000057663  -0.000000359   0.111107039

   32    2.2  1.5 -1.5  -0.000414219   0.133096419   0.042968266   0.001989669  -0.000000261   0.111106424
                         0.000014996   0.072320986  -0.005631750  -0.000014017  -0.000000181   0.020413063

   33    3.2  1.5 -1.5   0.051505514   0.001034923   0.000323422  -0.267976890  -0.000013922   0.000798888
                         0.000020650   0.000618788  -0.000038959  -0.000260432   0.000000010   0.000158836

   34    4.2  1.5 -1.5   0.000563015  -0.192256292   0.014917310   0.000158283   0.000639760  -0.039431605
                        -0.000045697   0.353517886   0.114132307  -0.000044623   0.000030231   0.214191773

   35    5.2  1.5 -1.5   0.410982200   0.002905223   0.000603462   0.078977436   0.435644166   0.001588060
                         0.000007973   0.000960989  -0.000299168   0.000109429   0.000037437  -0.000033308

   36    6.2  1.5 -1.5  -0.003047400   0.353525126   0.114101586  -0.000410410  -0.003110093   0.214189468
                        -0.000122196   0.192264778  -0.014911875  -0.000228173  -0.000202935   0.039433481

   37    7.2  1.5 -1.5  -0.000036633   0.000174208   0.000076529  -0.000381812  -0.000076188   0.000100964
                         0.133914726   0.000182890  -0.000073525   0.396491283   0.214812382   0.000106908

   38    8.2  1.5 -1.5   0.000003042   0.000018040  -0.000045293  -0.000159960   0.000001562  -0.000060760
                        -0.396468255  -0.000084821   0.000192845   0.133931559  -0.378971122   0.000055360


 Composition of spin-orbit eigenvectors
 ======================================

   Nr   State  S   Sz       1        2        3        4        5        6        7        8        9       10

    1    1.2  0.5  0.5  41.409%   1.533%  20.107%   3.613%  10.765%  22.565%   0.000%   0.000%   0.000%   0.000%
    2    2.2  0.5  0.5  32.305%   0.109%   1.534%  32.714%   0.798%  32.531%   0.000%   0.000%   0.000%   0.000%
    3    3.2  0.5  0.5  21.628%   3.009%  40.371%   1.654%  21.767%  11.563%   0.000%   0.000%   0.000%   0.000%
    4    1.2  0.5 -0.5   1.532%  41.409%   3.613%  20.107%  22.565%  10.765%   0.000%   0.000%   0.000%   0.000%
    5    2.2  0.5 -0.5   0.109%  32.304%  32.714%   1.534%  32.531%   0.798%   0.000%   0.000%   0.000%   0.000%
    6    3.2  0.5 -0.5   3.009%  21.628%   1.654%  40.371%  11.563%  21.767%   0.000%   0.000%   0.000%   0.000%
    7    1.2  1.5  1.5   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   1.826%   0.001%   0.000%  39.911%
    8    2.2  1.5  1.5   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   7.281%   0.000%   0.000%  13.322%
    9    3.2  1.5  1.5   0.002%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  23.867%   1.124%   0.001%
   10    4.2  1.5  1.5   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   1.206%   0.000%   0.000%   0.071%
   11    5.2  1.5  1.5   0.000%   0.000%   0.000%   0.001%   0.000%   0.002%   0.000%   0.138%   0.430%   0.001%
   12    6.2  1.5  1.5   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   5.948%
   13    7.2  1.5  1.5   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   3.295%   0.012%   0.000%
   14    8.2  1.5  1.5   0.000%   0.000%   0.000%   0.001%   0.000%   0.001%   0.000%   2.120%   0.666%   0.000%
   15    1.2  1.5  0.5   0.001%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%  29.338%   9.058%   0.001%
   16    2.2  1.5  0.5   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   9.273%   1.377%   0.000%
   17    3.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   5.444%   0.001%   0.001%  21.345%
   18    4.2  1.5  0.5   0.001%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.845%   1.059%   0.000%
   19    5.2  1.5  0.5   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   1.001%   0.000%   0.000%   2.610%
   20    6.2  1.5  0.5   0.001%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.024%   0.745%   0.000%
   21    7.2  1.5  0.5   0.000%   0.000%   0.001%   0.000%   0.001%   0.000%   0.642%   0.000%   0.000%   1.888%
   22    8.2  1.5  0.5   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   4.647%   0.000%   0.000%   0.914%
   23    1.2  1.5 -0.5   0.000%   0.001%   0.001%   0.000%   0.000%   0.000%  32.319%   0.000%   0.001%   6.038%
   24    2.2  1.5 -0.5   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%  11.232%   0.000%   0.001%   4.679%
   25    3.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.001%   5.622%  17.494%   0.001%
   26    4.2  1.5 -0.5   0.000%   0.001%   0.000%   0.000%   0.001%   0.000%   0.877%   0.000%   0.000%   1.120%
   27    5.2  1.5 -0.5   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.405%   3.808%   0.000%
   28    6.2  1.5 -0.5   0.000%   0.001%   0.000%   0.000%   0.001%   0.000%   0.014%   0.000%   0.000%   1.065%
   29    7.2  1.5 -0.5   0.000%   0.000%   0.000%   0.001%   0.000%   0.001%   0.000%   0.762%   1.452%   0.000%
   30    8.2  1.5 -0.5   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   5.263%   0.634%   0.000%
   31    1.2  1.5 -1.5   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.001%   4.706%  40.609%   0.000%
   32    2.2  1.5 -1.5   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%  12.518%  15.663%   0.000%
   33    3.2  1.5 -1.5   0.000%   0.002%   0.000%   0.000%   0.000%   0.000%  27.220%   0.000%   0.000%   0.029%
   34    4.2  1.5 -1.5   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   1.774%   0.175%   0.000%
   35    5.2  1.5 -1.5   0.000%   0.000%   0.001%   0.000%   0.002%   0.000%   0.134%   0.000%   0.001%   0.524%
   36    6.2  1.5 -1.5   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.047%   5.690%   0.000%
   37    7.2  1.5 -1.5   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   3.818%   0.000%   0.000%   0.083%
   38    8.2  1.5 -1.5   0.000%   0.000%   0.001%   0.000%   0.001%   0.000%   2.335%   0.000%   0.000%   0.448%

   Nr   State  S   Sz      11       12       13       14       15       16       17       18       19       20

    1    1.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    2    2.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    3    3.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    4    1.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    5    2.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    6    3.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    7    1.2  1.5  1.5   0.000%   5.192%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    8    2.2  1.5  1.5   0.000%  26.323%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    9    3.2  1.5  1.5   9.139%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%
   10    4.2  1.5  1.5   0.000%   4.696%   0.000%   0.241%  11.671%   0.005%   2.299%   0.001%  14.567%   5.499%
   11    5.2  1.5  1.5   0.689%   0.000%  27.198%   0.006%   0.003%   3.827%   0.004%  18.900%   0.386%   0.998%
   12    6.2  1.5  1.5   0.000%   0.024%   0.002%   3.512%   0.028%   0.000%  16.005%   0.004%  10.653%   4.030%
   13    7.2  1.5  1.5   2.710%   0.000%   3.888%   0.001%   0.002%   7.650%   0.004%  12.417%   2.793%   7.430%
   14    8.2  1.5  1.5   0.000%   0.000%  38.936%   0.008%   0.002%   3.820%   0.001%   2.496%   0.189%   0.504%
   15    1.2  1.5  0.5   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%
   16    2.2  1.5  0.5  27.748%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   17    3.2  1.5  0.5   0.000%  24.404%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   18    4.2  1.5  0.5   0.925%   0.000%   0.478%   0.000%   0.015%  38.247%   0.000%   0.012%   1.871%   5.051%
   19    5.2  1.5  0.5   0.000%   3.934%   0.001%   0.007%   0.018%   0.000%   1.544%   0.001%  19.617%   7.377%
   20    6.2  1.5  0.5   2.061%   0.001%  11.545%   0.002%   0.000%   0.294%   0.005%  19.709%   3.845%  10.224%
   21    7.2  1.5  0.5   0.000%   0.257%   0.002%   5.986%  34.254%   0.014%   2.319%   0.000%   2.437%   0.913%
   22    8.2  1.5  0.5   0.000%   0.458%   0.002%   8.181%   0.163%   0.000%  24.277%   0.006%   1.159%   0.439%
   23    1.2  1.5 -0.5   0.000%   0.039%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%
   24    2.2  1.5 -0.5   0.000%  22.485%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   25    3.2  1.5 -0.5  28.077%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   26    4.2  1.5 -0.5   0.000%   0.832%   0.000%   0.477%  38.243%   0.015%   0.013%   0.000%   5.055%   1.873%
   27    5.2  1.5 -0.5   3.331%   0.000%   0.007%   0.001%   0.000%   0.018%   0.001%   1.542%   7.377%  19.619%
   28    6.2  1.5 -0.5   0.001%   1.750%   0.002%  11.545%   0.291%   0.000%  19.706%   0.005%  10.228%   3.846%
   29    7.2  1.5 -0.5   0.573%   0.000%   5.990%   0.002%   0.014%  34.240%   0.000%   2.326%   0.914%   2.439%
   30    8.2  1.5 -0.5   0.122%   0.000%   8.180%   0.002%   0.000%   0.165%   0.006%  24.274%   0.440%   1.160%
   31    1.2  1.5 -1.5   1.615%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   32    2.2  1.5 -1.5  18.746%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   33    3.2  1.5 -1.5   0.000%   6.881%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%
   34    4.2  1.5 -1.5   4.024%   0.000%   0.241%   0.000%   0.005%  11.670%   0.001%   2.294%   5.501%  14.572%
   35    5.2  1.5 -1.5   0.000%   0.599%   0.006%  27.201%   3.830%   0.003%  18.894%   0.004%   0.999%   0.386%
   36    6.2  1.5 -1.5   0.236%   0.000%   3.511%   0.002%   0.000%   0.028%   0.004%  16.000%   4.031%  10.656%
   37    7.2  1.5 -1.5   0.000%   2.117%   0.001%   3.887%   7.642%   0.002%  12.420%   0.004%   7.434%   2.795%
   38    8.2  1.5 -1.5   0.000%   0.004%   0.008%  38.940%   3.818%   0.002%   2.495%   0.001%   0.504%   0.190%

   Nr   State  S   Sz      21       22       23       24       25       26       27       28       29       30

    1    1.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    2    2.2  0.5  0.5   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    3    3.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    4    1.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    5    2.2  0.5 -0.5   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    6    3.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    7    1.2  1.5  1.5   0.001%  13.383%   4.132%   0.001%   0.000%  23.723%   0.000%   1.385%   1.103%   0.000%
    8    2.2  1.5  1.5   0.002%  13.380%   4.131%   0.005%   0.000%  23.722%   0.000%   2.182%   4.684%   0.000%
    9    3.2  1.5  1.5   2.635%   0.007%   0.001%  49.906%   0.000%   0.001%   4.437%   0.000%   0.000%   1.092%
   10    4.2  1.5  1.5   0.000%   1.886%   0.599%   0.000%   0.000%   0.255%   0.000%   7.874%  26.792%   0.001%
   11    5.2  1.5  1.5   2.453%   0.000%   0.000%   0.130%   1.022%   0.000%   0.213%   0.000%   0.000%   3.788%
   12    6.2  1.5  1.5   0.000%   1.960%   0.573%   0.000%   0.000%   0.255%   0.000%   1.915%   0.010%   0.001%
   13    7.2  1.5  1.5   1.106%   0.000%   0.000%   1.322%   0.248%   0.000%  22.884%   0.000%   0.000%  11.866%
   14    8.2  1.5  1.5   1.309%   0.000%   0.000%   1.094%   0.773%   0.000%  10.507%   0.000%   0.000%   0.081%
   15    1.2  1.5  0.5  31.884%   0.008%   0.001%   8.977%   7.908%   0.000%   4.316%   0.000%   0.000%   0.027%
   16    2.2  1.5  0.5  14.226%   0.002%   0.001%  26.641%   7.907%   0.002%   2.469%   0.000%   0.001%   3.889%
   17    3.2  1.5  0.5   0.002%   4.460%   1.378%   0.001%   0.000%  31.629%   0.000%   0.271%   3.725%   0.002%
   18    4.2  1.5  0.5   0.115%   0.000%   0.000%   2.406%   0.766%   0.000%   2.643%   0.000%   0.001%   5.440%
   19    5.2  1.5  0.5   0.000%   0.598%   1.891%   0.000%   0.000%   0.000%   0.000%   1.830%  25.231%   0.001%
   20    6.2  1.5  0.5   0.137%   0.000%   0.000%   2.431%   0.766%   0.000%   0.087%   0.000%   0.000%  10.791%
   21    7.2  1.5  0.5   0.000%   0.646%   1.786%   0.000%   0.000%   0.773%   0.000%   6.967%   1.250%   0.001%
   22    8.2  1.5  0.5   0.001%   1.736%   0.652%   0.000%   0.000%   0.248%   0.000%  31.574%   2.545%   0.000%
   23    1.2  1.5 -0.5   0.009%  39.141%   1.720%   0.001%   0.000%   7.908%   0.000%   4.211%   0.001%   0.000%
   24    2.2  1.5 -0.5   0.000%   4.804%  36.065%   0.001%   0.002%   7.907%   0.000%   2.346%   3.839%   0.001%
   25    3.2  1.5 -0.5   5.545%   0.002%   0.001%   0.293%  31.629%   0.000%   0.256%   0.000%   0.001%   4.557%
   26    4.2  1.5 -0.5   0.000%   0.572%   1.949%   0.000%   0.000%   0.766%   0.000%   2.648%   4.063%   0.002%
   27    5.2  1.5 -0.5   0.130%   0.000%   0.000%   2.359%   0.000%   0.000%   2.409%   0.000%   0.000%  21.083%
   28    6.2  1.5 -0.5   0.000%   0.622%   1.946%   0.000%   0.000%   0.766%   0.000%   0.067%   9.381%   0.000%
   29    7.2  1.5 -0.5   1.307%   0.000%   0.000%   1.125%   0.773%   0.000%   6.867%   0.000%   0.001%   1.708%
   30    8.2  1.5 -0.5   1.085%   0.000%   0.000%   1.303%   0.248%   0.000%  30.903%   0.000%   0.000%   2.692%
   31    1.2  1.5 -1.5  16.633%   0.003%   0.001%   0.879%  23.723%   0.000%   1.231%   0.000%   0.000%   0.736%
   32    2.2  1.5 -1.5  16.628%   0.006%   0.006%   0.879%  23.722%   0.000%   1.964%   0.000%   0.000%   4.370%
   33    3.2  1.5 -1.5   0.015%  12.386%  40.147%   0.000%   0.001%   0.000%   0.000%   4.280%   1.319%   0.000%
   34    4.2  1.5 -1.5   2.353%   0.000%   0.000%   0.131%   0.255%   0.000%   7.149%   0.000%   0.001%  27.521%
   35    5.2  1.5 -1.5   0.000%   1.973%   0.610%   0.000%   0.000%   1.022%   0.000%   0.225%   3.096%   0.000%
   36    6.2  1.5 -1.5   2.418%   0.000%   0.000%   0.115%   0.255%   0.000%   1.665%   0.000%   0.001%   0.350%
   37    7.2  1.5 -1.5   0.001%   1.768%   0.661%   0.000%   0.000%   0.248%   0.000%  21.973%  12.953%   0.000%
   38    8.2  1.5 -1.5   0.000%   0.654%   1.748%   0.000%   0.000%   0.773%   0.000%  10.251%   0.000%   0.000%

   Nr   State  S   Sz      31       32       33       34       35       36       37       38

    1    1.2  0.5  0.5   0.000%   0.000%   0.001%   0.000%   0.003%   0.000%   0.001%   0.003%
    2    2.2  0.5  0.5   0.000%   0.000%   0.000%   0.002%   0.002%   0.000%   0.000%   0.004%
    3    3.2  0.5  0.5   0.000%   0.000%   0.003%   0.000%   0.002%   0.000%   0.002%   0.001%
    4    1.2  0.5 -0.5   0.000%   0.000%   0.000%   0.001%   0.000%   0.003%   0.003%   0.001%
    5    2.2  0.5 -0.5   0.000%   0.000%   0.002%   0.000%   0.000%   0.003%   0.004%   0.000%
    6    3.2  0.5 -0.5   0.000%   0.000%   0.000%   0.003%   0.000%   0.001%   0.001%   0.002%
    7    1.2  1.5  1.5   5.582%   0.000%   2.394%   0.000%   0.000%   0.088%   1.276%   0.000%
    8    2.2  1.5  1.5   1.204%   0.000%   2.394%   0.000%   0.000%   0.089%   1.276%   0.000%
    9    3.2  1.5  1.5   0.000%   0.340%   0.000%   0.563%   6.884%   0.000%   0.000%   0.000%
   10    4.2  1.5  1.5   0.071%   0.001%  16.894%   0.000%   0.000%   0.625%   4.743%   0.000%
   11    5.2  1.5  1.5   0.001%   3.315%   0.001%  16.191%   1.323%   0.000%   0.000%  18.979%
   12    6.2  1.5  1.5  32.813%   0.000%  16.895%   0.001%   0.000%   0.624%   4.743%   0.001%
   13    7.2  1.5  1.5   0.001%   0.240%   0.000%   0.966%  16.548%   0.000%   0.000%   4.614%
   14    8.2  1.5  1.5   0.000%   5.616%   0.000%  16.546%   0.967%   0.000%   0.000%  14.362%
   15    1.2  1.5  0.5   0.000%   2.261%   0.000%   1.731%   4.060%   0.000%   0.000%   0.426%
   16    2.2  1.5  0.5   0.001%   0.244%   0.000%   4.762%   1.029%   0.000%   0.000%   0.425%
   17    3.2  1.5  0.5   4.805%   0.000%   0.798%   0.000%   0.000%   0.029%   1.702%   0.000%
   18    4.2  1.5  0.5   0.001%   8.371%   0.000%   1.324%  16.191%   0.000%   0.000%  14.234%
   19    5.2  1.5  0.5  16.817%   0.000%   0.624%   0.000%   0.001%  16.894%   0.000%   0.001%
   20    6.2  1.5  0.5   0.004%   5.576%   0.000%   1.324%  16.194%   0.001%   0.000%  14.231%
   21    7.2  1.5  0.5   7.986%   0.000%  15.723%   0.000%   0.000%   1.793%  14.362%   0.000%
   22    8.2  1.5  0.5   0.871%   0.000%   1.793%   0.000%   0.000%  15.721%   4.612%   0.000%
   23    1.2  1.5 -0.5   2.392%   0.000%   2.217%   0.000%   0.000%   3.574%   0.426%   0.000%
   24    2.2  1.5 -0.5   0.417%   0.001%   4.342%   0.000%   0.000%   1.449%   0.425%   0.000%
   25    3.2  1.5 -0.5   0.001%   3.988%   0.000%   0.765%   0.063%   0.000%   0.000%   1.702%
   26    4.2  1.5 -0.5   9.744%   0.000%   0.624%   0.000%   0.000%  16.891%  14.234%   0.000%
   27    5.2  1.5 -0.5   0.000%  20.387%   0.000%   1.324%  16.194%   0.001%   0.001%   0.000%
   28    6.2  1.5 -0.5   7.007%   0.003%   0.624%   0.000%   0.001%  16.894%  14.231%   0.000%
   29    7.2  1.5 -0.5   0.000%   7.629%   0.000%  16.550%   0.966%   0.000%   0.000%  14.362%
   30    8.2  1.5 -0.5   0.000%   1.396%   0.000%   0.966%  16.548%   0.000%   0.000%   4.612%
   31    1.2  1.5 -1.5   0.000%   6.103%   0.000%   2.295%   0.188%   0.000%   0.000%   1.276%
   32    2.2  1.5 -1.5   0.000%   1.736%   0.000%   2.294%   0.188%   0.000%   0.000%   1.276%
   33    3.2  1.5 -1.5   0.271%   0.000%   0.265%   0.000%   0.000%   7.181%   0.000%   0.000%
   34    4.2  1.5 -1.5   0.002%   0.068%   0.000%  16.194%   1.325%   0.000%   0.000%   4.743%
   35    5.2  1.5 -1.5   3.995%   0.001%  16.891%   0.001%   0.000%   0.624%  18.979%   0.000%
   36    6.2  1.5 -1.5   0.000%  32.723%   0.001%  16.195%   1.324%   0.000%   0.001%   4.743%
   37    7.2  1.5 -1.5   0.063%   0.000%   1.793%   0.000%   0.000%  15.721%   4.614%   0.000%
   38    8.2  1.5 -1.5   5.952%   0.000%  15.719%   0.000%   0.000%   1.794%  14.362%   0.000%


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
              1      21       93.78       500      700      610      900      950      970     1000      129      960     1100   
                                          VAR     GEOM    BASINP   SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       9     7330.86       500      700      610     1000      520     2100     2140     5203     5303   
                                          VAR     GEOM    BASINP    BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI        CI     MULTI   RHF-SCF       INT      FILE
 CPU TIMES  *    413939.22 292397.54  99482.59  22026.59     12.85      4.11     13.74      1.65
 REAL TIME  *    419745.79 SEC
 DISK USED  *         7.25 GB (local),       22.82 GB (total)
 SF USED    *        57.29 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCV5Z-PP energy=   -416.269109307483

              CI              CI           MULTI         RHF-SCF
   -416.21560521   -416.55132251   -415.17284771   -415.57917920
 **********************************************************************************************************************************
 Molpro calculation terminated with 1 warning(s)
