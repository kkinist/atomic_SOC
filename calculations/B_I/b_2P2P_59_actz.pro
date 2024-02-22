
 Working directory              : /wrk/irikura/molpro.bAZ8uAOyQE/
 Global scratch directory       : /wrk/irikura/molpro.bAZ8uAOyQE/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.bAZ8uAOyQE/

 id        : nistki

 Nodes         nprocs
 gamba.nist.gov    5
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1042), CPU time= 0.01 sec
 ***,B SO-CI
                                                                                 ! Active space (5,8) (add 3p virtuals)
 memory,1000,M;
 
 gprint,orbitals,civector;
                                                                                 !gthresh,energy=1.d-10,coeff=1.d-8;
 
 symmetry,xyz
 geometry={B};
 
 basis=aug-cc-pwCVTZ-DK
 
 set,dkho=101
 
 {rhf;wf,nelec=5,sym=2,spin=1}
 
                                                                                 ! K shell closed but not frozen
                                                                                 ! add second 2P
 {multi,wmk_old
     closed,0,0
     occ,3,6
     wf,sym=2,spin=1;state,6;
         weight,3[99],3[1]
     expec2,lxx,lyy,lzz;
 }
 table, energy, ll
 title, Energies and &lt;L**2&gt; values
 
 {ci;option,nstati=6;wf,sym=2,spin=1;state,6; save,5203.2}
 hlsdiag = energd4
 
 table,hlsdiag
 
 {ci;hlsmat,ls,5203.2;print,vls=0,hls=0}                                         !compute and diagonalize SO matrix
 Commands initialized (847), CPU time= 0.01 sec, 718 directives.
 Default parameters read. Elapsed time= 0.11 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2024.1 linked Wed Jan 31 05:42:09 2024


 **********************************************************************************************************************************
 LABEL *   B SO-CI                                                                                                                                                       
  (4 PROC) 64 bit mpp version                                                            DATE: 15-Feb-24          TIME: 17:44:56  
 **********************************************************************************************************************************

 SHA1:             675817fde4514a4a933b69e420913a90cee4ef91
 **********************************************************************************************************************************

 Memory per process:      1000 MW
 Total memory per node:   5000 MW

 GA preallocation disabled
 GA check disabled

 Variable memory set to 1000.0 MW


 ZSYMEL=XYZ

 SETTING BASIS          =    AUG-CC-PWCVTZ-DK
 SETTING DKHO           =       101.00000000                                  


 Recomputing integrals since basis changed


 Using spherical harmonics

 Library entry B      S aug-cc-pwCVTZ-DK     selected for orbital group  1
 Library entry B      P aug-cc-pwCVTZ-DK     selected for orbital group  1
 Library entry B      D aug-cc-pwCVTZ-DK     selected for orbital group  1
 Library entry B      F aug-cc-pwCVTZ-DK     selected for orbital group  1


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

   1  B       5.00    0.000000000    0.000000000    0.000000000

 NUCLEAR CHARGE:                    5
 NUMBER OF PRIMITIVE AOS:          81
 NUMBER OF SYMMETRY AOS:           71
 NUMBER OF CONTRACTIONS:           59   (   27Ag  +   32Au  )
 NUMBER OF INNER CORE ORBITALS:     0   (    0Ag  +    0Au  )
 NUMBER OF OUTER CORE ORBITALS:     1   (    1Ag  +    0Au  )
 NUMBER OF VALENCE ORBITALS:        4   (    1Ag  +    3Au  )


 NUCLEAR REPULSION ENERGY    0.00000000

 One-electron integrals computed with SEWARD

 eXact-2-Component (X2C) method activated

 Computing Douglas-Kroll / X2C integrals

 AO integral compression algorithm  1   Integral accuracy      1.0D-11

     2.884 MB (compressed) written to integral file ( 18.6%)

     Node minimum: 0.524 MB, node maximum: 0.786 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:     161145.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:     161145      RECORD LENGTH: 524288

 Memory used in sort:       0.72 MW

 SORT1 READ     1711873. AND WROTE       35932. INTEGRALS IN      1 RECORDS. CPU TIME:     0.03 SEC, REAL TIME:     0.03 SEC
 SORT2 READ      173263. AND WROTE      810039. INTEGRALS IN     10 RECORDS. CPU TIME:     0.01 SEC, REAL TIME:     0.01 SEC

 Node minimum:      160965.  Node maximum:      162825. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000

 EXTRA SYMMETRY OF AOS IN SYMMETRY 1:   1 1 1 1 1 1 1 2 3 4   5 6 2 3 4 5 6 2 3 4   5 6 2 3 4 5 6
 EXTRA SYMMETRY OF AOS IN SYMMETRY 2:   1 2 3 1 2 3 1 2 3 1   2 3 1 2 3 1 2 3 4 5   6 7 8 910 4 5 6 7 8   910

 Eigenvalues of metric

         1 0.496E-02 0.182E-01 0.705E-01 0.187E+00 0.247E+00 0.247E+00 0.247E+00 0.247E+00
         2 0.152E-01 0.152E-01 0.152E-01 0.186E+00 0.186E+00 0.186E+00 0.432E+00 0.432E+00


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      22       28.71       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600   
                                         AOSYM     SMH  

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         0.74      0.55
 REAL TIME  *         1.69 SEC
 DISK USED  *        29.03 MB (local),      166.24 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 Program * Restricted Hartree-Fock

 Orbital guess generated from atomic densities.

 Initial alpha occupancy:   2   1
 Initial beta  occupancy:   2   0

 NELEC=    5   SYM=2   MS2= 1   THRE=1.0D-08   THRD=3.2D-06   THRG=3.2D-06  HFMA2=F  DIIS_START=2   DIIS_MAX=10   DIIS_INCORE=F

 Level shifts:    0.00 (CLOSED)    0.00 (OPEN)    0.30 (GAP_MIN)

 ITER           ETOT              DE          GRAD        DDIFF     DIIS  NEXP   TIME(IT)  TIME(TOT)  DIAG
   1      -24.50737218     -24.50737218     0.00D+00     0.92D-01     0     0       0.00      0.01    start
   2      -24.53087375      -0.02350157     0.72D-02     0.16D-01     1     0       0.00      0.01    diag2
   3      -24.53397033      -0.00309658     0.20D-02     0.34D-02     2     0       0.00      0.01    diag2
   4      -24.53491093      -0.00094059     0.11D-02     0.37D-02     3     0       0.00      0.01    diag2
   5      -24.53495253      -0.00004160     0.24D-03     0.13D-02     4     0       0.00      0.01    diag2
   6      -24.53495314      -0.00000062     0.36D-04     0.16D-03     5     0       0.01      0.02    diag2
   7      -24.53495315      -0.00000000     0.29D-05     0.13D-04     6     0       0.00      0.02    diag2
   8      -24.53495315      -0.00000000     0.28D-06     0.22D-05     7     0       0.00      0.02    fixocc
   9      -24.53495315      -0.00000000     0.26D-07     0.51D-07     0     0       0.00      0.02    diag

 Final alpha occupancy:   2   1
 Final beta  occupancy:   2   0

 !RHF STATE 1.2 Energy                -24.534953148026
  RHF One-electron energy             -32.375004267273
  RHF Two-electron energy               7.840051119247
  RHF Kinetic energy                   24.581653293385
  RHF Nuclear energy                    0.000000000000
  RHF Virial quotient                  -0.998100203237

 !RHF STATE 1.2 Dipole moment           0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 ELECTRON ORBITALS
 =================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -7.69742     1  1  s    0.99946
    2.1     2.00000    -0.49521     1  2  s    1.00903
    1.2     1.00000    -0.30965     1  1  px   0.99639


 HOMO      1.2    -0.309645 =      -8.4259eV
 LUMO      2.2     0.022718 =       0.6182eV
 LUMO-HOMO         0.332363 =       9.0441eV

 Orbitals saved in record  2100.2


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      22       28.71       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600   
                                         AOSYM     SMH  

              2       4        0.43       700     1000      520     2100   
                                         GEOM     BASIS   MCVARS     RHF  

 PROGRAMS   *        TOTAL   RHF-SCF       INT
 CPU TIMES  *         0.76      0.01      0.55
 REAL TIME  *         1.72 SEC
 DISK USED  *        29.44 MB (local),      168.29 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)

 Number of active  orbitals:        9 (    3    6)
 Number of external orbitals:      50 (   24   26)

 State symmetry 1

 Number of active electrons:   5    Spin symmetry=Doublet   Space symmetry=2
 Number of states:             6
 Number of CSFs:             954   (1512 determinants, 3024 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  
 *** IN SYMMETRY 1 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.140D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.117D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.134D-01 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 2 6 3 4 5 1 5   4 3 2 6 1 5 4 3 6 2   1 6 2 4 3 5 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.181D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.141D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.137D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.209D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.121D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.126D-02 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 3 2 1 2 3 1 3 2 6   5 8 4 910 7 1 2 3 6   5 8 4 910 7 2 3 1 2   3 1

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-01 (gradient)  0.10E-05 (energy)  0.10E-02 (step length)

 Weight factors for state symmetry  1:    0.33000   0.33000   0.33000   0.00333   0.00333   0.00333

 Number of orbital rotations:      228   (     0 Core/Active      0 Core/Virtual   0 Active/Active    228 Active/Virtual)
 Total number of variables:       9300


 ITER. MIC  NCI  NEG     ENERGY(VAR)     ENERGY(PROJ)   ENERGY CHANGE     GRAD(0)  GRAD(ORB)   GRAD(CI)     STEP       TIME

   1  159   17    0     -24.54062607     -24.57586387   -0.03523780    0.06614497 0.00010923 0.00716137  0.17D+01      0.10
   2  182   30    0     -24.57550685     -24.57560186   -0.00009501    0.00537158 0.00000027 0.00000357  0.12D+00      0.25
   3   60   11    0     -24.57560185     -24.57560185   -0.00000000    0.00000272 0.00000007 0.00000100  0.12D-03      0.31
   4  138   13    0     -24.57560185     -24.57560185   -0.00000000    0.00000007 0.00000000 0.00000001  0.26D-05      0.41

 ** WVFN ****  CONVERGENCE REACHED, FINAL GRADIENT:  0.11D-09



 Results for state 1.2
 =====================
 !MCSCF STATE 1.2 Energy              -24.578966647523
 Nuclear energy                         0.00000000
 Kinetic energy                        24.61887570
 One electron energy                  -32.35294281
 Two electron energy                    7.77397616
 Virial ratio                           1.99837892

 !MCSCF STATE 1.2 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Results for state 2.2
 =====================
 !MCSCF STATE 2.2 Energy              -24.578966647522
 Nuclear energy                         0.00000000
 Kinetic energy                        24.61887570
 One electron energy                  -32.35294281
 Two electron energy                    7.77397616
 Virial ratio                           1.99837892

 !MCSCF STATE 2.2 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Results for state 3.2
 =====================
 !MCSCF STATE 3.2 Energy              -24.578966647522
 Nuclear energy                         0.00000000
 Kinetic energy                        24.61887570
 One electron energy                  -32.35294281
 Two electron energy                    7.77397616
 Virial ratio                           1.99837892

 !MCSCF STATE 3.2 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Results for state 4.2
 =====================
 !MCSCF STATE 4.2 Energy              -24.242487266901
 Nuclear energy                         0.00000000
 Kinetic energy                        24.98280292
 One electron energy                  -31.72899652
 Two electron energy                    7.48650925
 Virial ratio                           1.97036699

 !MCSCF STATE 4.2 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Results for state 5.2
 =====================
 !MCSCF STATE 5.2 Energy              -24.242487266901
 Nuclear energy                         0.00000000
 Kinetic energy                        24.98280292
 One electron energy                  -31.72899652
 Two electron energy                    7.48650925
 Virial ratio                           1.97036699

 !MCSCF STATE 5.2 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Results for state 6.2
 =====================
 !MCSCF STATE 6.2 Energy              -24.242487266807
 Nuclear energy                         0.00000000
 Kinetic energy                        24.98280292
 One electron energy                  -31.72899652
 Two electron energy                    7.48650925
 Virial ratio                           1.97036699

 !MCSCF STATE 6.2 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 State-averaged charge density matrix saved on record  2140.2 (density set 1)

 !MCSCF expec        <1.2|LXLX|1.2>     0.000001267094
 !MCSCF expec        <2.2|LXLX|2.2>     1.000000000000
 !MCSCF expec        <3.2|LXLX|3.2>     0.999998732906
 !MCSCF expec        <4.2|LXLX|4.2>     0.999999999954
 !MCSCF expec        <5.2|LXLX|5.2>     0.999999999997
 !MCSCF expec        <6.2|LXLX|6.2>     0.000000000049
 !MCSCF expec        <1.2|LYLY|1.2>     0.999999999671
 !MCSCF expec        <2.2|LYLY|2.2>     0.000271115904
 !MCSCF expec        <3.2|LYLY|3.2>     0.999728884425
 !MCSCF expec        <4.2|LYLY|4.2>     0.999658427863
 !MCSCF expec        <5.2|LYLY|5.2>     0.000341572140
 !MCSCF expec        <6.2|LYLY|6.2>     0.999999999997
 !MCSCF expec        <1.2|LZLZ|1.2>     0.999998733234
 !MCSCF expec        <2.2|LZLZ|2.2>     0.999728884096
 !MCSCF expec        <3.2|LZLZ|3.2>     0.000272382670
 !MCSCF expec        <4.2|LZLZ|4.2>     0.000341572183
 !MCSCF expec        <5.2|LZLZ|5.2>     0.999658427863
 !MCSCF expec        <6.2|LZLZ|6.2>     0.999999999954
 !MCSCF expec        <1.2|L**2|1.2>     2.000000000000
 !MCSCF expec        <2.2|L**2|2.2>     2.000000000000
 !MCSCF expec        <3.2|L**2|3.2>     2.000000000000
 !MCSCF expec        <4.2|L**2|4.2>     2.000000000000
 !MCSCF expec        <5.2|L**2|5.2>     2.000000000000
 !MCSCF expec        <6.2|L**2|6.2>     2.000000000000


 NATURAL ORBITALS (state averaged)
 =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     1.99992    -7.69139     1  1  s    0.99929
    2.1     1.88539    -0.47771     1  2  s    1.02238
    3.1     0.00838     0.53378     1  2  s   -0.98967    1  3  s   -0.81725    1  4  s    1.68364
    1.2     0.36170     0.02175     1  1  py   1.00644
    2.2     0.36170     0.02175     1  1  pz   1.00644
    3.2     0.36170     0.02175     1  1  px   1.00644
    4.2     0.00707     0.36027     1  1  pz  -1.56436    1  2  pz   0.32871    1  3  pz   1.51923
    5.2     0.00707     0.36027     1  1  py  -1.56436    1  2  py   0.32871    1  3  py   1.51923
    6.2     0.00707     0.36027     1  1  px  -1.56436    1  2  px   0.32871    1  3  px   1.51923


 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 1 2 5 4 3 6 5   3 4 6 2 1 2 5 4 3 6   1 3 4 5 2 6 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   2 3 1 3 2 1 1 2 3 6   7 910 8 4 5 1 2 310   8 9 7 4 5 6 1 3 2 1   2 3

 Natural orbital dump (state averaged) at molpro section  2140.2    (Orbital set 2)


 CI vector
 =========

 220 a00000     -0.0000000   0.0000000  -0.9695675   0.0000000  -0.0287570   0.0000000
 220 0a0000      0.0048102   0.9695555   0.0000000  -0.0287570  -0.0000000  -0.0000032
 220 00a000      0.9695555  -0.0048102  -0.0000000   0.0000032  -0.0000000  -0.0287570
 220 0000a0      0.0000000  -0.0000000  -0.0191893  -0.0000000   0.9371962  -0.0000000
 220 000a00      0.0000952   0.0191891   0.0000000   0.9371962   0.0000000   0.0001050
 220 00000a      0.0191891  -0.0000952  -0.0000000  -0.0001050   0.0000000   0.9371962
 2ab a00000     -0.0000000   0.0000000  -0.0099710   0.0000000  -0.1608803   0.0000000
 2ab 00a000      0.0099709  -0.0000495   0.0000000   0.0000180  -0.0000000  -0.1608803
 2ab 0a0000      0.0000495   0.0099709   0.0000000  -0.1608803  -0.0000000  -0.0000180
 200 a02000     -0.0000000   0.0000000   0.1538817   0.0000000  -0.0012274   0.0000000
 200 a20000     -0.0000000   0.0000000   0.1538817   0.0000000  -0.0012274   0.0000000
 200 0a2000     -0.0007634  -0.1538798  -0.0000000  -0.0012274  -0.0000000  -0.0000001
 200 2a0000     -0.0007634  -0.1538798  -0.0000000  -0.0012274  -0.0000000  -0.0000001
 200 02a000     -0.1538798   0.0007634   0.0000000   0.0000001  -0.0000000  -0.0012274
 200 20a000     -0.1538798   0.0007634   0.0000000   0.0000001  -0.0000000  -0.0012274
 200 0020a0     -0.0000000   0.0000000   0.0046048   0.0000000  -0.1487361   0.0000000
 200 0200a0     -0.0000000   0.0000000   0.0046048   0.0000000  -0.1487361   0.0000000
 200 002a00     -0.0000228  -0.0046048   0.0000000  -0.1487361  -0.0000000  -0.0000167
 200 200a00     -0.0000228  -0.0046048   0.0000000  -0.1487361  -0.0000000  -0.0000167
 200 20000a     -0.0046048   0.0000228  -0.0000000   0.0000167  -0.0000000  -0.1487361
 200 02000a     -0.0046048   0.0000228  -0.0000000   0.0000167  -0.0000000  -0.1487361
 200 2000a0      0.0000000   0.0000000   0.0354535   0.0000000  -0.1469395   0.0000000
 200 020a00     -0.0001759  -0.0354531  -0.0000000  -0.1469395  -0.0000000  -0.0000165
 200 00200a     -0.0354531   0.0001759   0.0000000   0.0000165  -0.0000000  -0.1469395
 2aa b00000     -0.0000000  -0.0000000   0.0170851  -0.0000000   0.1213775  -0.0000000
 2aa 00b000     -0.0170849   0.0000848  -0.0000000  -0.0000136   0.0000000   0.1213775
 2aa 0b0000     -0.0000848  -0.0170849  -0.0000000   0.1213775   0.0000000   0.0000136
 2ab 0000a0      0.0000000   0.0000000   0.0560918   0.0000000  -0.0226513   0.0000000
 2ab 00000a     -0.0560911   0.0002783   0.0000000   0.0000025  -0.0000000  -0.0226513
 2ab 000a00     -0.0002783  -0.0560911  -0.0000000  -0.0226513  -0.0000000  -0.0000025

 TOTAL ENERGIES                       -24.57896665   -24.57896665   -24.57896665
                                      -24.24248727   -24.24248727   -24.24248727



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       29.68       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       5        0.59       700     1000      520     2100     2140   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF   

 PROGRAMS   *        TOTAL     MULTI   RHF-SCF       INT
 CPU TIMES  *         1.30      0.54      0.01      0.55
 REAL TIME  *         2.33 SEC
 DISK USED  *        30.35 MB (local),      172.83 MB (total)
 SF USED    *         7.90 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

        ENERGY      LL
    -24.57896665   2.0
    -24.57896665   2.0
    -24.57896665   2.0
    -24.24248727   2.0
    -24.24248727   2.0
    -24.24248727   2.0
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 6  Roots:    1   2   3   4   5   6
 Number of reference states: 6  Roots:    1   2   3   4   5   6

 Program parameters:       NSTATE=  6    NSTATI=  6    NSTATR=  6    NCEPA = -1    NOKOP =  0    ITRDM =  0    ITRANS=  0
                           IDIP  =200    MAXIT = 30    MAXITI= 50    MAXDAV= 18    MAXVI = 18    NOSING=  0    NOPAIR=  0
                           MXSHRF=  5    IKCPS =  0    IOPTGM=  2    IOPTOR=  0    REFOPT=  1    IAVDEN=  0    IDELCG=  1
                           IREST =  0    NATORB=  0    IPUNRF=  0    ISEP  =  0    OLDDEN=  0    NSTPRI=  1    GPSFLI= -1
                           CLUSTE=  0    CLOSED=  1    ILSTYP=  0    ITRLS =  0    ICCSD =  0    LOCAL =  0    IBASO =  0
                           MP    =  0    ITEDIS=  2    INCDIS=  1    MAXDIS=  6    ITYDIS=  1    BRUECK=  0    IBRSTR=  3
                           INCBRK=  1    TRIPLE=  0    ICCTYP=  2    IHPPD =  0    ICCNEW=  0    I3EXT = -1    IDEB  =  0
                           IDLEIG=  1    IDFTYP=  1    IMP3  =  0    IPROCS=  0    NOINT =  0    NOREF =  1    IMP2G =  0
                           IHINT =  0    IFDIA =  0    ISPARO=  1    JKSYM =  0    CPHF  =  0    MP2D  = -1    DKINT =  0
                           NPKEX =  1    DRVK  =  1    HLSTRA=  1    WIGNER=  1    DIIS_C=  1    MAXIT_= 50    MATEL =  0
                           SPDEG =  1    MEMCPH=  0    DISM  =  1    KDCPMA=  5    IKDCP_=  0    IREDTH=  0    USECS =  0
                           IPROCC=  0    I3SAVE=  1    IKDCP =  1    USECI =  0    OLDPAI=  0    IPROCI=  0    KEEPCL=  1
                           DISCON=  0    SHIFTE=  0    DIISIN=  0    MOLCAS=  0    MEM_PT=  0    RECORD=  0    RS2C  =  0
                           KEXT  = -1    CIPT2 =  0    DECP0S=  0    I4EXT = -1    NATCOR=  0    RIMP2 =  0    DDCI  = -1
                           IPOLAR=  0    OVBK  =  0

 Reference symmetry:                   2   Doublet 
 Number of electrons:                  5
 Maximum number of shells:             3
 Maximum number of spin couplings:     5

 Reference space:      462 conf      954 CSFs
 N elec internal:      882 conf     1890 CSFs
 N-1 el internal:      414 conf     1170 CSFs
 N-2 el internal:      156 conf      564 CSFs

 Number of electrons in valence space:                      5
 Maximum number of open shell orbitals in reference space:  5
 Maximum number of open shell orbitals in internal spaces:  5


 Number of active  orbitals:        9 (   3   6 )
 Number of external orbitals:      50 (  24  26 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Coulomb and exchange operators available. No transformation done.


 Number of p-space configurations:  14

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1       -24.57896665
     2       -24.57896665
     3       -24.57896665
     4       -24.24248727
     5       -24.24248727
     6       -24.24248727

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1932D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2194D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1403D-06

 Number of blocks in overlap matrix:     4   Smallest eigenvalue:  0.14D-06
 Number of N-2 electron functions:     406
 Number of N-1 electron functions:    1170

 Number of internal configurations:                  954
 Number of singly external configurations:         29256
 Number of doubly external configurations:        253986
 Total number of contracted configurations:       284196
 Total number of uncontracted configurations:     381768

 Diagonal Coupling coefficients finished.               Storage:   1079116 words, CPU-Time:      0.74 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:    254579 words, CPU-time:      0.00 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000   -24.57896665    -0.00000000    -0.06325382  0.15D-01  0.95D-03     1.07
    1     2     2     1.00000000     0.00000000   -24.57896665    -0.00000000    -0.06319399  0.15D-01  0.95D-03     1.07
    1     3     3     1.00000000     0.00000000   -24.57896665     0.00000000    -0.06325355  0.15D-01  0.95D-03     1.07
    1     4     4     1.00000000     0.00000000   -24.24248727     0.00000000    -0.08714015  0.38D-01  0.95D-03     1.07
    1     5     5     1.00000000     0.00000000   -24.24248727     0.00000000    -0.08715911  0.38D-01  0.95D-03     1.07
    1     6     6     1.00000000     0.00000000   -24.24248727     0.00000000    -0.08715937  0.38D-01  0.95D-03     1.07
    2     1     1     1.01783413    -0.06618046   -24.64514710    -0.06618046    -0.00110715  0.14D-03  0.42D-04     5.68
    2     2     2     1.01790905    -0.06617951   -24.64514616    -0.06617951    -0.00110753  0.14D-03  0.42D-04     5.68
    2     3     3     1.01790893    -0.06617950   -24.64514615    -0.06617950    -0.00110751  0.14D-03  0.42D-04     5.68
    2     4     4     1.05832278    -0.10671847   -24.34920574    -0.10671847    -0.01245048  0.12D-01  0.76D-04     5.68
    2     5     5     1.05834316    -0.10671019   -24.34919746    -0.10671019    -0.01245460  0.12D-01  0.76D-04     5.68
    2     6     6     1.05834280    -0.10671015   -24.34919742    -0.10671015    -0.01245459  0.12D-01  0.76D-04     5.68
    3     1     1     1.02111039    -0.06836714   -24.64733378    -0.00218668    -0.00059210  0.63D-04  0.21D-04    10.07
    3     2     2     1.02105118    -0.06836375   -24.64733040    -0.00218424    -0.00059359  0.63D-04  0.22D-04    10.07
    3     3     3     1.02105075    -0.06836363   -24.64733027    -0.00218412    -0.00059369  0.63D-04  0.22D-04    10.07
    3     4     4     1.39692291    -0.14693453   -24.38942179    -0.04021605    -0.01157640  0.14D-01  0.78D-04    10.07
    3     5     5     1.39651465    -0.14691275   -24.38940002    -0.04020256    -0.01158816  0.14D-01  0.78D-04    10.07
    3     6     6     1.39651355    -0.14691265   -24.38939992    -0.04020250    -0.01158831  0.14D-01  0.78D-04    10.07
    4     1     1     1.02302491    -0.06995029   -24.64891694    -0.00158315    -0.00022180  0.54D-04  0.69D-05    14.41
    4     2     2     1.02301752    -0.06995021   -24.64891686    -0.00158646    -0.00022143  0.54D-04  0.69D-05    14.41
    4     3     3     1.02301737    -0.06994991   -24.64891656    -0.00158629    -0.00022164  0.54D-04  0.69D-05    14.41
    4     4     4     1.79962753    -0.16401853   -24.40650580    -0.01708401    -0.00154481  0.14D-02  0.18D-04    14.41
    4     5     5     1.79953756    -0.16401603   -24.40650330    -0.01710328    -0.00154666  0.14D-02  0.18D-04    14.41
    4     6     6     1.79953075    -0.16401584   -24.40650310    -0.01710318    -0.00154681  0.14D-02  0.18D-04    14.41
    5     1     1     1.02090433    -0.07027784   -24.64924449    -0.00032755    -0.00005465  0.32D-05  0.22D-05    18.77
    5     2     2     1.02091379    -0.07027774   -24.64924439    -0.00032753    -0.00005470  0.32D-05  0.22D-05    18.77
    5     3     3     1.02091492    -0.07027762   -24.64924427    -0.00032771    -0.00005473  0.32D-05  0.22D-05    18.77
    5     4     4     1.81290790    -0.16600433   -24.40849160    -0.00198580    -0.00028899  0.22D-03  0.54D-05    18.77
    5     5     5     1.81289479    -0.16600380   -24.40849106    -0.00198777    -0.00028913  0.22D-03  0.54D-05    18.77
    5     6     6     1.81289593    -0.16600375   -24.40849102    -0.00198792    -0.00028914  0.22D-03  0.54D-05    18.77
    6     1     1     1.02134491    -0.07040178   -24.64936843    -0.00012394    -0.00004114  0.36D-05  0.14D-05    23.13
    6     2     2     1.02133359    -0.07040168   -24.64936833    -0.00012394    -0.00004121  0.36D-05  0.14D-05    23.13
    6     3     3     1.02133234    -0.07040159   -24.64936823    -0.00012396    -0.00004122  0.36D-05  0.14D-05    23.13
    6     4     4     1.84772394    -0.16653815   -24.40902542    -0.00053382    -0.00010672  0.25D-04  0.32D-05    23.13
    6     5     5     1.84772986    -0.16653814   -24.40902541    -0.00053434    -0.00010677  0.25D-04  0.32D-05    23.13
    6     6     6     1.84772869    -0.16653810   -24.40902537    -0.00053435    -0.00010678  0.25D-04  0.32D-05    23.13
    7     1     1     1.02223748    -0.07047631   -24.64944296    -0.00007452    -0.00002091  0.53D-05  0.57D-06    27.45
    7     2     2     1.02223703    -0.07047627   -24.64944291    -0.00007458    -0.00002090  0.53D-05  0.57D-06    27.45
    7     3     3     1.02223688    -0.07047622   -24.64944287    -0.00007464    -0.00002093  0.53D-05  0.57D-06    27.45
    7     4     4     1.85737238    -0.16671492   -24.40920219    -0.00017677    -0.00005134  0.17D-04  0.17D-05    27.45
    7     5     5     1.85735821    -0.16671490   -24.40920216    -0.00017675    -0.00005134  0.17D-04  0.17D-05    27.45
    7     6     6     1.85735778    -0.16671486   -24.40920213    -0.00017676    -0.00005134  0.17D-04  0.17D-05    27.45
    8     1     1     1.02175655    -0.07050587   -24.64947252    -0.00002956    -0.00000755  0.31D-06  0.31D-06    31.77
    8     2     2     1.02175814    -0.07050584   -24.64947248    -0.00002957    -0.00000756  0.31D-06  0.31D-06    31.77
    8     3     3     1.02175882    -0.07050581   -24.64947245    -0.00002959    -0.00000757  0.31D-06  0.31D-06    31.77
    8     4     4     1.85288884    -0.16680940   -24.40929667    -0.00009448    -0.00003851  0.13D-04  0.11D-05    31.77
    8     5     5     1.85289285    -0.16680936   -24.40929663    -0.00009447    -0.00003852  0.13D-04  0.11D-05    31.77
    8     6     6     1.85289304    -0.16680933   -24.40929660    -0.00009447    -0.00003852  0.13D-04  0.11D-05    31.77
    9     1     1     1.02170659    -0.07051981   -24.64948646    -0.00001394    -0.00000534  0.31D-06  0.21D-06    36.09
    9     2     2     1.02170457    -0.07051980   -24.64948645    -0.00001396    -0.00000535  0.32D-06  0.21D-06    36.09
    9     3     3     1.02170393    -0.07051977   -24.64948642    -0.00001397    -0.00000535  0.32D-06  0.21D-06    36.09
    9     4     4     1.85876352    -0.16687151   -24.40935878    -0.00006211    -0.00002390  0.83D-05  0.69D-06    36.09
    9     5     5     1.85876210    -0.16687150   -24.40935877    -0.00006214    -0.00002391  0.83D-05  0.69D-06    36.09
    9     6     6     1.85876123    -0.16687147   -24.40935873    -0.00006214    -0.00002391  0.83D-05  0.69D-06    36.09
   10     1     1     1.02201027    -0.07052929   -24.64949594    -0.00000948    -0.00000328  0.55D-06  0.10D-06    40.40
   10     2     2     1.02200978    -0.07052928   -24.64949593    -0.00000948    -0.00000329  0.55D-06  0.10D-06    40.40
   10     3     3     1.02200984    -0.07052927   -24.64949591    -0.00000949    -0.00000329  0.55D-06  0.10D-06    40.40
   10     4     4     1.85859075    -0.16690634   -24.40939360    -0.00003482    -0.00001255  0.38D-05  0.41D-06    40.40
   10     5     5     1.85859547    -0.16690634   -24.40939360    -0.00003484    -0.00001255  0.38D-05  0.41D-06    40.40
   10     6     6     1.85859097    -0.16690631   -24.40939357    -0.00003484    -0.00001255  0.38D-05  0.41D-06    40.40
   11     1     1     1.02193112    -0.07053378   -24.64950042    -0.00000449    -0.00000135  0.57D-07  0.60D-07    44.77
   11     2     2     1.02193142    -0.07053377   -24.64950042    -0.00000449    -0.00000135  0.58D-07  0.60D-07    44.77
   11     3     3     1.02193152    -0.07053376   -24.64950041    -0.00000450    -0.00000136  0.58D-07  0.60D-07    44.77
   11     4     4     1.85666055    -0.16692909   -24.40941636    -0.00002275    -0.00001057  0.32D-05  0.32D-06    44.77
   11     5     5     1.85666764    -0.16692908   -24.40941635    -0.00002274    -0.00001057  0.33D-05  0.32D-06    44.77
   11     6     6     1.85666751    -0.16692905   -24.40941632    -0.00002274    -0.00001057  0.32D-05  0.32D-06    44.77
   12     1     1     1.02190025    -0.07053607   -24.64950272    -0.00000230    -0.00000098  0.38D-07  0.42D-07    49.13
   12     2     2     1.02189998    -0.07053607   -24.64950272    -0.00000230    -0.00000098  0.38D-07  0.42D-07    49.13
   12     3     3     1.02189976    -0.07053606   -24.64950271    -0.00000230    -0.00000098  0.38D-07  0.42D-07    49.13
   12     4     4     1.85941241    -0.16694581   -24.40943308    -0.00001673    -0.00000738  0.35D-05  0.21D-06    49.13
   12     5     5     1.85941499    -0.16694581   -24.40943308    -0.00001673    -0.00000737  0.35D-05  0.21D-06    49.13
   12     6     6     1.85941126    -0.16694578   -24.40943305    -0.00001673    -0.00000738  0.35D-05  0.21D-06    49.13
   13     1     1     1.02198523    -0.07053775   -24.64950440    -0.00000168    -0.00000066  0.77D-07  0.24D-07    53.42
   13     2     2     1.02198537    -0.07053775   -24.64950440    -0.00000168    -0.00000066  0.77D-07  0.23D-07    53.42
   13     3     3     1.02198525    -0.07053775   -24.64950439    -0.00000168    -0.00000066  0.77D-07  0.23D-07    53.42
   13     4     4     1.85908041    -0.16695631   -24.40944358    -0.00001050    -0.00000419  0.13D-05  0.14D-06    53.42
   13     5     5     1.85908407    -0.16695630   -24.40944357    -0.00001049    -0.00000418  0.13D-05  0.14D-06    53.42
   13     6     6     1.85908034    -0.16695628   -24.40944355    -0.00001050    -0.00000419  0.13D-05  0.14D-06    53.42
   14     1     1     1.02197558    -0.07053865   -24.64950530    -0.00000089    -0.00000030  0.98D-08  0.14D-07    57.75
   14     2     2     1.02197563    -0.07053865   -24.64950530    -0.00000089    -0.00000030  0.98D-08  0.14D-07    57.75
   14     3     3     1.02197558    -0.07053864   -24.64950529    -0.00000090    -0.00000030  0.98D-08  0.14D-07    57.75
   14     4     4     1.85858870    -0.16696374   -24.40945100    -0.00000743    -0.00000370  0.11D-05  0.12D-06    57.75
   14     5     5     1.85858289    -0.16696373   -24.40945100    -0.00000743    -0.00000370  0.11D-05  0.12D-06    57.75
   14     6     6     1.85858912    -0.16696371   -24.40945097    -0.00000743    -0.00000370  0.11D-05  0.12D-06    57.75
   15     1     1     1.02196949    -0.07053913   -24.64950578    -0.00000048    -0.00000022  0.72D-08  0.10D-07    62.06
   15     2     2     1.02196956    -0.07053913   -24.64950578    -0.00000048    -0.00000022  0.72D-08  0.10D-07    62.06
   15     3     3     1.02196941    -0.07053913   -24.64950577    -0.00000048    -0.00000022  0.73D-08  0.10D-07    62.06
   15     4     4     1.85979811    -0.16696959   -24.40945686    -0.00000585    -0.00000277  0.14D-05  0.81D-07    62.06
   15     5     5     1.85979978    -0.16696958   -24.40945685    -0.00000585    -0.00000277  0.14D-05  0.81D-07    62.06
   15     6     6     1.85979782    -0.16696956   -24.40945683    -0.00000585    -0.00000277  0.14D-05  0.81D-07    62.06
   16     1     1     1.02199429    -0.07053950   -24.64950615    -0.00000037    -0.00000016  0.12D-07  0.67D-08    66.39
   16     2     2     1.02199423    -0.07053950   -24.64950615    -0.00000037    -0.00000016  0.12D-07  0.68D-08    66.39
   16     3     3     1.02199427    -0.07053949   -24.64950614    -0.00000037    -0.00000016  0.12D-07  0.68D-08    66.39
   16     4     4     1.85927883    -0.16697346   -24.40946073    -0.00000387    -0.00000164  0.53D-06  0.55D-07    66.39
   16     5     5     1.85928198    -0.16697345   -24.40946072    -0.00000387    -0.00000164  0.53D-06  0.55D-07    66.39
   16     6     6     1.85927877    -0.16697343   -24.40946070    -0.00000387    -0.00000164  0.53D-06  0.55D-07    66.39
   17     1     1     1.02199341    -0.07053971   -24.64950636    -0.00000021    -0.00000008  0.18D-08  0.38D-08    70.67
   17     2     2     1.02199345    -0.07053971   -24.64950636    -0.00000021    -0.00000008  0.18D-08  0.37D-08    70.67
   17     3     3     1.02199341    -0.07053971   -24.64950636    -0.00000021    -0.00000008  0.18D-08  0.38D-08    70.67
   17     4     4     1.85924626    -0.16697633   -24.40946360    -0.00000287    -0.00000149  0.45D-06  0.49D-07    70.67
   17     5     5     1.85924254    -0.16697632   -24.40946359    -0.00000287    -0.00000149  0.44D-06  0.49D-07    70.67
   17     6     6     1.85924660    -0.16697630   -24.40946357    -0.00000287    -0.00000149  0.45D-06  0.49D-07    70.67
   18     1     1     1.02199357    -0.07053972   -24.64950637    -0.00000001    -0.00000007  0.20D-08  0.36D-08    73.45
   18     2     2     1.02199361    -0.07053972   -24.64950636    -0.00000001    -0.00000007  0.20D-08  0.36D-08    73.45
   18     3     3     1.02199357    -0.07053971   -24.64950636    -0.00000001    -0.00000007  0.20D-08  0.36D-08    73.45
   18     4     4     1.85982148    -0.16698458   -24.40947184    -0.00000824    -0.00000053  0.60D-07  0.19D-07    73.45
   18     5     5     1.85981942    -0.16698456   -24.40947182    -0.00000824    -0.00000053  0.60D-07  0.19D-07    73.45
   18     6     6     1.85982126    -0.16698454   -24.40947181    -0.00000824    -0.00000053  0.60D-07  0.19D-07    73.45
   19     1     1     1.02199304    -0.07053972   -24.64950637    -0.00000000    -0.00000007  0.23D-08  0.34D-08    76.27
   19     2     2     1.02199309    -0.07053972   -24.64950637    -0.00000000    -0.00000007  0.23D-08  0.34D-08    76.27
   19     3     3     1.02199305    -0.07053972   -24.64950636    -0.00000000    -0.00000007  0.23D-08  0.34D-08    76.27
   19     4     4     1.85998280    -0.16698510   -24.40947236    -0.00000052    -0.00000005  0.50D-08  0.29D-08    76.27
   19     5     5     1.85998268    -0.16698508   -24.40947235    -0.00000052    -0.00000005  0.50D-08  0.29D-08    76.27
   19     6     6     1.85998299    -0.16698506   -24.40947233    -0.00000052    -0.00000005  0.50D-08  0.29D-08    76.27


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.5%
 S   0.4%   0.8%
 P   1.9%   9.6%  72.1%

 Initialization:   1.2%
 Other:           13.5%

 Total CPU:       76.3 seconds
 =====================================



 Wavefunction saved on  5203.2

 Reference coefficients greater than 0.0500000
 =============================================
 22000/000           0.9622545   0.0000000  -0.0001271   0.0070036  -0.0000002   0.0000010
 220/00000           0.0001271  -0.0002182   0.9622545  -0.0000010  -0.0000002   0.0070035
 2200/0000           0.0000000   0.9622544   0.0002182   0.0000002   0.0070034   0.0000002
 220000/00          -0.0000000  -0.0088803  -0.0000020   0.0000188   0.6936296   0.0000149
 22000000/          -0.0088804  -0.0000000   0.0000012   0.6936295  -0.0000188   0.0000958
 2200000/0          -0.0000012   0.0000020  -0.0088803  -0.0000958  -0.0000149   0.6936295
 2000/2000          -0.0000000  -0.1450073  -0.0000329  -0.0000001  -0.0031982  -0.0000001
 20020/000          -0.1450072  -0.0000000   0.0000191  -0.0031981   0.0000001  -0.0000004
 200/02000          -0.0000191   0.0000329  -0.1450072   0.0000004   0.0000001  -0.0031982
 2002/0000          -0.0000000  -0.1449938  -0.0000329  -0.0000001  -0.0032080  -0.0000001
 20002/000          -0.1449936  -0.0000000   0.0000191  -0.0032077   0.0000001  -0.0000005
 200/20000          -0.0000191   0.0000329  -0.1449936   0.0000005   0.0000001  -0.0032077
 2000200/0           0.0000000  -0.0000001   0.0003559   0.0000147   0.0000023  -0.1064582
 20002000/           0.0003559  -0.0000000  -0.0000000  -0.1064582   0.0000029  -0.0000147
 200200/00           0.0000000   0.0003558   0.0000001  -0.0000029  -0.1064582  -0.0000023
 20020000/           0.0003507  -0.0000000  -0.0000000  -0.1064556   0.0000029  -0.0000147
 2000020/0           0.0000000  -0.0000001   0.0003507   0.0000147   0.0000023  -0.1064554
 200002/00           0.0000000   0.0003507   0.0000001  -0.0000029  -0.1064554  -0.0000023
 2002000/0          -0.0000040   0.0000069  -0.0303591   0.0000144   0.0000022  -0.1045037
 200020/00          -0.0000000  -0.0303591  -0.0000069  -0.0000028  -0.1045037  -0.0000022
 20000200/          -0.0303591  -0.0000000   0.0000040  -0.1045031   0.0000028  -0.0000144
 2//00\000          -0.0237757  -0.0000000   0.0000031   0.0796697  -0.0000022   0.0000110
 2//0\0000          -0.0000000  -0.0237757  -0.0000054   0.0000022   0.0796694   0.0000017
 2//\00000          -0.0000031   0.0000054  -0.0237757  -0.0000110  -0.0000017   0.0796694
 2/\00000/          -0.0574663  -0.0000000   0.0000076  -0.0761720   0.0000021  -0.0000105
 2/\0000/0          -0.0000076   0.0000130  -0.0574663   0.0000105   0.0000016  -0.0761719
 2/\000/00          -0.0000000  -0.0574663  -0.0000130  -0.0000021  -0.0761719  -0.0000016
 2/\00/000          -0.0032807  -0.0000000   0.0000004  -0.0727410   0.0000020  -0.0000100
 2/\0/0000           0.0000000  -0.0032808  -0.0000007  -0.0000020  -0.0727410  -0.0000016
 2/\/00000          -0.0000004   0.0000007  -0.0032808   0.0000100   0.0000016  -0.0727409

 Coefficients of singly external configurations greater than 0.0500000
 =====================================================================

 220000000   9.2     0.0000000   0.0078148   0.0000018  -0.0000169  -0.6238759  -0.0000134
 220000000   8.2     0.0000010  -0.0000018   0.0078148   0.0000861   0.0000134  -0.6238759
 220000000   7.2     0.0078149  -0.0000000  -0.0000010  -0.6238758   0.0000169  -0.0000861
 220000000  17.2     0.0001964  -0.0000000  -0.0000000  -0.1205870   0.0000033  -0.0000166
 220000000  18.2     0.0000000  -0.0000000   0.0001963   0.0000166   0.0000026  -0.1205869
 220000000  19.2     0.0000000   0.0001963   0.0000000  -0.0000033  -0.1205867  -0.0000026
 2\/000000   8.2    -0.0000009   0.0000016  -0.0069692  -0.0000148  -0.0000023   0.1073931
 2\/000000   7.2    -0.0069692  -0.0000000   0.0000009   0.1073931  -0.0000029   0.0000148
 2\/000000   9.2     0.0000000  -0.0069694  -0.0000016   0.0000029   0.1073930   0.0000023
 200200000   9.2    -0.0000000  -0.0011577  -0.0000003   0.0000027   0.0989685   0.0000021
 200200000   7.2    -0.0011570   0.0000000   0.0000002   0.0989682  -0.0000027   0.0000137
 200020000   7.2    -0.0011576   0.0000000   0.0000002   0.0989681  -0.0000027   0.0000137
 200020000   8.2    -0.0000002   0.0000003  -0.0011576  -0.0000137  -0.0000021   0.0989680
 200002000   8.2    -0.0000002   0.0000003  -0.0011569  -0.0000137  -0.0000021   0.0989661
 200002000   9.2    -0.0000000  -0.0011571  -0.0000003   0.0000027   0.0989660   0.0000021
 200200000   8.2    -0.0000000   0.0000001  -0.0002338  -0.0000134  -0.0000021   0.0969584
 200020000   9.2    -0.0000000  -0.0002339  -0.0000001   0.0000026   0.0969580   0.0000021
 200002000   7.2    -0.0002338   0.0000000   0.0000000   0.0969566  -0.0000026   0.0000134
 2\00/0000  14.1    -0.0000000  -0.0530248  -0.0000120   0.0000004   0.0136500   0.0000003

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.988611    0.000000    0.000131   -0.000000   -0.000004   -0.028734
 2           0.000000    0.988611   -0.000224   -0.028734    0.000007   -0.000000
 3          -0.000131    0.000224    0.988611   -0.000007   -0.028734    0.000004
 4           0.030821    0.000001   -0.000004    0.000020   -0.000101    0.729921
 5          -0.000001    0.030821   -0.000001    0.729921   -0.000016   -0.000020
 6           0.000004    0.000001    0.030821    0.000016    0.729921    0.000101

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.989013    0.000000   -0.000000    0.005523   -0.000000    0.000001
 2           0.000000    0.989013   -0.000000    0.000000    0.005523   -0.000001
 3          -0.000000   -0.000000    0.989013   -0.000001    0.000001    0.005523
 4           0.005523    0.000000   -0.000001    0.730550    0.000000    0.000000
 5          -0.000000    0.005523    0.000001    0.000000    0.730550   -0.000000
 6           0.000001   -0.000001    0.005523    0.000000   -0.000000    0.730550


 RESULTS FOR STATE 1.2
 =====================

 Coefficient of reference function:   C(0) = 0.98861135 (fixed)   0.98918161 (relaxed)   0.98901343 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00034011   -0.00006504   -0.04355733
 Singles      0.01877135   -0.02939535   -0.03004353
 Pairs        0.00322917    0.00336207    0.00306114
 Total        1.02234063   -0.02609832   -0.07053972
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -24.57856303
 Nuclear energy                         0.00000000
 Kinetic energy                        24.68465713
 One electron energy                  -32.33003408
 Two electron energy                    7.68052771
 Virial quotient                       -0.99857601
 Correlation energy                    -0.07094333
 !MRCI STATE 1.2 Energy               -24.649506367985

 Properties without orbital relaxation:

 !MRCI STATE 1.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -24.65109129 (Davidson, fixed reference)
 Cluster corrected energies           -24.65106663 (Davidson, relaxed reference)
 Cluster corrected energies           -24.65109129 (Davidson, rotated reference)

 Cluster corrected energies           -24.65029873 (Pople, fixed reference)
 Cluster corrected energies           -24.65028640 (Pople, relaxed reference)
 Cluster corrected energies           -24.65029873 (Pople, rotated reference)



 RESULTS FOR STATE 2.2
 =====================

 Coefficient of reference function:   C(0) = 0.98861131 (fixed)   0.98918158 (relaxed)   0.98901341 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00034011   -0.00006504   -0.04026874
 Singles      0.01877139   -0.02939534   -0.03004354
 Pairs        0.00322918    0.00000000   -0.00022744
 Total        1.02234068   -0.02946037   -0.07053972
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -24.57856303
 Nuclear energy                         0.00000000
 Kinetic energy                        24.68465620
 One electron energy                  -32.33003385
 Two electron energy                    7.68052748
 Virial quotient                       -0.99857605
 Correlation energy                    -0.07094333
 !MRCI STATE 2.2 Energy               -24.649506365634

 Properties without orbital relaxation:

 !MRCI STATE 2.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -24.65109129 (Davidson, fixed reference)
 Cluster corrected energies           -24.65106663 (Davidson, relaxed reference)
 Cluster corrected energies           -24.65109129 (Davidson, rotated reference)

 Cluster corrected energies           -24.65029873 (Pople, fixed reference)
 Cluster corrected energies           -24.65028640 (Pople, relaxed reference)
 Cluster corrected energies           -24.65029873 (Pople, rotated reference)



 RESULTS FOR STATE 3.2
 =====================

 Coefficient of reference function:   C(0) = 0.98861132 (fixed)   0.98918160 (relaxed)   0.98901343 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00034011   -0.00006504   -0.04026827
 Singles      0.01877137   -0.02939537   -0.03004353
 Pairs        0.00322915   -0.00000044   -0.00022791
 Total        1.02234064   -0.02946085   -0.07053972
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -24.57856304
 Nuclear energy                         0.00000000
 Kinetic energy                        24.68465755
 One electron energy                  -32.33003424
 Two electron energy                    7.68052788
 Virial quotient                       -0.99857599
 Correlation energy                    -0.07094333
 !MRCI STATE 3.2 Energy               -24.649506362926

 Properties without orbital relaxation:

 !MRCI STATE 3.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -24.65109128 (Davidson, fixed reference)
 Cluster corrected energies           -24.65106662 (Davidson, relaxed reference)
 Cluster corrected energies           -24.65109128 (Davidson, rotated reference)

 Cluster corrected energies           -24.65029872 (Pople, fixed reference)
 Cluster corrected energies           -24.65028640 (Pople, relaxed reference)
 Cluster corrected energies           -24.65029872 (Pople, rotated reference)



 RESULTS FOR STATE 4.2
 =====================

 Maximum overlap with reference state  6

 Coefficient of reference function:   C(0) = 0.72992082 (fixed)   0.73323896 (relaxed)   0.73055039 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00737396   -0.00008803   -0.00090706
 Singles      0.86273819   -0.12887063   -0.14567031
 Pairs        0.00358609   -0.03764624   -0.02040772
 Total        1.87369824   -0.16660490   -0.16698510
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -24.24289088
 Nuclear energy                         0.00000000
 Kinetic energy                        24.49219698
 One electron energy                  -31.13894490
 Two electron energy                    6.72947254
 Virial quotient                       -0.99662241
 Correlation energy                    -0.16658148
 !MRCI STATE 4.2 Energy               -24.409472362166

 Properties without orbital relaxation:

 !MRCI STATE 4.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -24.55501431 (Davidson, fixed reference)
 Cluster corrected energies           -24.55272957 (Davidson, relaxed reference)
 Cluster corrected energies           -24.55501431 (Davidson, rotated reference)

 Cluster corrected energies           -24.47199276 (Pople, fixed reference)
 Cluster corrected energies           -24.47124971 (Pople, relaxed reference)
 Cluster corrected energies           -24.47199276 (Pople, rotated reference)



 RESULTS FOR STATE 5.2
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.72992083 (fixed)   0.73323899 (relaxed)   0.73055039 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00737402   -0.00008803   -0.02099958
 Singles      0.86273816   -0.12887058   -0.14567027
 Pairs        0.00358605    0.00000102   -0.00031523
 Total        1.87369823   -0.12895759   -0.16698508
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -24.24289088
 Nuclear energy                         0.00000000
 Kinetic energy                        24.49219797
 One electron energy                  -31.13894528
 Two electron energy                    6.72947294
 Virial quotient                       -0.99662237
 Correlation energy                    -0.16658147
 !MRCI STATE 5.2 Energy               -24.409472345019

 Properties without orbital relaxation:

 !MRCI STATE 5.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -24.55501428 (Davidson, fixed reference)
 Cluster corrected energies           -24.55272952 (Davidson, relaxed reference)
 Cluster corrected energies           -24.55501428 (Davidson, rotated reference)

 Cluster corrected energies           -24.47199274 (Pople, fixed reference)
 Cluster corrected energies           -24.47124968 (Pople, relaxed reference)
 Cluster corrected energies           -24.47199274 (Pople, rotated reference)



 RESULTS FOR STATE 6.2
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.72992076 (fixed)   0.73323893 (relaxed)   0.73055033 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00737403   -0.00008803   -0.02099624
 Singles      0.86273844   -0.12887060   -0.14567028
 Pairs        0.00358608   -0.00000520   -0.00031855
 Total        1.87369856   -0.12896382   -0.16698506
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -24.24289088
 Nuclear energy                         0.00000000
 Kinetic energy                        24.49219731
 One electron energy                  -31.13894510
 Two electron energy                    6.72947277
 Virial quotient                       -0.99662239
 Correlation energy                    -0.16658145
 !MRCI STATE 6.2 Energy               -24.409472330968

 Properties without orbital relaxation:

 !MRCI STATE 6.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -24.55501430 (Davidson, fixed reference)
 Cluster corrected energies           -24.55272955 (Davidson, relaxed reference)
 Cluster corrected energies           -24.55501430 (Davidson, rotated reference)

 Cluster corrected energies           -24.47199274 (Pople, fixed reference)
 Cluster corrected energies           -24.47124968 (Pople, relaxed reference)
 Cluster corrected energies           -24.47199274 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       29.68       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       6       14.62       700     1000      520     2100     2140     5203   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *        78.71     77.41      0.54      0.01      0.55
 REAL TIME  *        83.69 SEC
 DISK USED  *        44.38 MB (local),      242.97 MB (total)
 SF USED    *       142.87 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =       -24.65109129  AU                              
 SETTING HLSDIAG(2)     =       -24.65109129  AU                              
 SETTING HLSDIAG(3)     =       -24.65109128  AU                              
 SETTING HLSDIAG(4)     =       -24.55501431  AU                              
 SETTING HLSDIAG(5)     =       -24.55501428  AU                              
 SETTING HLSDIAG(6)     =       -24.55501430  AU                              


        HLSDIAG
    -24.65109129
    -24.65109129
    -24.65109128
    -24.55501431
    -24.55501428
    -24.55501430
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Diagonal elements of H will be replaced by values from variable HLSDIAG


   ******************************
   *** Spin-orbit calculation ***
   ******************************


   Spin-orbit matrix elements
   ==========================

 eXact-2-Component (X2C) method activated

 Computing Douglas-Kroll / X2C integrals

  

 PROGRAM * SEWLS (Spin-orbit & spin-spin integral evaluation)

 Modified from original SEWARD code by Alexander Mitrushchenkov

 Original version: December 2001, 2D-derivatives modifications: Stuttgart 2004
  
  
 The following spin-orbit components are calculated:
  
    Operator      Symmetry
  
      LSX            1
      LSY            1
      LSZ            1
  
 Integral cutoff:   0.10E-09

 Time for Seward_LS:       0.17 sec

         907905. SPIN-ORBIT INTEGRALS WRITTEN OUT IN      236 RECORDS ON RECORD     11290 OF FILE 1


 CPU time:      0.17 sec, REAL time:      0.18 sec


 SORTLS1 read      953880. and wrote      953880. SO integrals in    15 records. CPU time:      0.00 sec, REAL time:      0.03 sec
 SORTLS2 read      953880. and wrote     4701996. SO integrals in    15 records. CPU time:      0.01 sec, REAL time:      0.02 sec

 FILE SIZES: FILE 1:    46.6 MBYTE, FILE 4:     0.0 MBYTE, TOTAL:    46.6 MBYTE

 Preparing effective Fock matrices
 eXact-2-Component (X2C) method activated

 Computing Douglas-Kroll / X2C integrals

 Total X Y Z Fock matrices evaluated:     2    2    2
  
 Wavefunction restored from record  5203.2  Symmetry=2  S= 0.5  NSTATE=   6

 Original energies:    -24.649506    -24.649506    -24.649506    -24.409472    -24.409472    -24.409472
 Replaced energies:    -24.651091    -24.651091    -24.651091    -24.555014    -24.555014    -24.555014



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=   -24.65109129

 Wigner-Eckart theorem used for  3 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       4.61       0.00      -0.00
                           -0.00       0.00      -4.61      -0.00      -0.00       2.14       0.00      -0.00      -0.00       0.00

    2   2.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00      -4.61      -0.00       0.00       2.14
                           -0.00      -0.00       0.00       0.00      -0.00       0.00       0.00       0.00       4.61       0.00

    3   3.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00       0.00
                            4.61      -0.00       0.00      -2.14       0.00      -0.00       0.00      -4.61      -0.00       0.00

    4   4.2  0.5  0.5       0.00       0.00       0.00   21086.46       0.00       0.00       0.00      -2.14      -0.00      -0.00
                            0.00      -0.00       2.14      -0.00       0.00      -0.99      -0.00      -0.00      -0.00       0.00

    5   5.2  0.5  0.5       0.00       0.00       0.00       0.00   21086.47       0.00       2.14       0.00      -0.00      -0.99
                            0.00       0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.00      -2.14      -0.00

    6   6.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00   21086.46       0.00      -0.00      -0.00      -0.00
                           -2.14      -0.00       0.00       0.99      -0.00      -0.00       0.00       2.14       0.00      -0.00

    7   1.2  0.5 -0.5      -0.00      -4.61      -0.00       0.00       2.14       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00       0.00      -0.00       0.00      -0.00       4.61       0.00

    8   2.2  0.5 -0.5       4.61      -0.00      -0.00      -2.14       0.00      -0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       4.61       0.00      -0.00      -2.14       0.00       0.00      -0.00      -0.00

    9   3.2  0.5 -0.5       0.00       0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00
                            0.00      -4.61       0.00       0.00       2.14      -0.00      -4.61       0.00      -0.00       2.14

   10   4.2  0.5 -0.5      -0.00       2.14       0.00      -0.00      -0.99      -0.00       0.00       0.00       0.00   21086.46
                           -0.00      -0.00      -0.00      -0.00       0.00       0.00      -0.00       0.00      -2.14       0.00

   11   5.2  0.5 -0.5      -2.14      -0.00       0.00       0.99      -0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -2.14      -0.00       0.00       0.99      -0.00      -0.00       0.00       0.00

   12   6.2  0.5 -0.5      -0.00       0.00       0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       2.14       0.00      -0.00      -0.99       0.00       2.14       0.00      -0.00      -0.99


   Nr   State  S   Sz       11         12

    1   1.2  0.5  0.5      -2.14      -0.00
                            0.00      -0.00

    2   2.2  0.5  0.5      -0.00       0.00
                           -0.00      -2.14

    3   3.2  0.5  0.5       0.00       0.00
                            2.14      -0.00

    4   4.2  0.5  0.5       0.99       0.00
                            0.00       0.00

    5   5.2  0.5  0.5      -0.00      -0.00
                           -0.00       0.99

    6   6.2  0.5  0.5       0.00       0.00
                           -0.99      -0.00

    7   1.2  0.5 -0.5       0.00       0.00
                            0.00      -2.14

    8   2.2  0.5 -0.5       0.00       0.00
                            0.00      -0.00

    9   3.2  0.5 -0.5       0.00       0.00
                           -0.00       0.00

   10   4.2  0.5 -0.5       0.00       0.00
                           -0.00       0.99

   11   5.2  0.5 -0.5   21086.47       0.00
                            0.00      -0.00

   12   6.2  0.5 -0.5       0.00   21086.46
                            0.00       0.00


 No symmetry adaption


 Spin-orbit eigenstates   (energies)
 ======================

     Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
              (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1   -24.65113330    -0.00004202       -9.22      0.00000000        0.00      0.0000
     2   -24.65113330    -0.00004202       -9.22      0.00000000        0.00      0.0000
     3   -24.65107028     0.00002101        4.61      0.00006302       13.83      0.0017
     4   -24.65107028     0.00002101        4.61      0.00006302       13.83      0.0017
     5   -24.65107028     0.00002101        4.61      0.00006302       13.83      0.0017
     6   -24.65107028     0.00002101        4.61      0.00006302       13.83      0.0017
     7   -24.55502327     0.09606802    21084.49      0.09611003    21093.71      2.6153
     8   -24.55502327     0.09606802    21084.49      0.09611003    21093.71      2.6153
     9   -24.55500982     0.09608147    21087.45      0.09612349    21096.67      2.6157
    10   -24.55500982     0.09608147    21087.45      0.09612349    21096.67      2.6157
    11   -24.55500980     0.09608149    21087.45      0.09612351    21096.67      2.6157
    12   -24.55500980     0.09608149    21087.45      0.09612351    21096.67      2.6157


 Eigenvectors of spin-orbit matrix
 =================================

  Basis states          Eigenvectors (columnwise)

   Nr   State  S   Sz        1             2             3             4             5             6             7             8

    1    1.2  0.5  0.5   0.464073014  -0.343483754   0.664365968   0.141519942   0.452966045   0.008176539   0.000117007  -0.000000099
                        -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000

    2    2.2  0.5  0.5   0.201471242   0.272203169  -0.088005544   0.413146699  -0.004102076   0.227173446   0.000000091   0.000107505
                         0.278304148   0.375790273  -0.124714510   0.584653843  -0.004990557   0.281397800   0.000000066   0.000046550

    3    3.2  0.5  0.5   0.000045679   0.000061716  -0.000002208  -0.000011008   0.000008867  -0.000121329   0.000000000   0.000000024
                        -0.463977552   0.343545016  -0.051574891  -0.010999554   0.814683208   0.014557577  -0.000117025   0.000000110

    4    4.2  0.5  0.5  -0.000094092   0.000069640   0.000067385   0.000014355   0.000045951   0.000000830   0.577876104  -0.000474789
                        -0.000000027   0.000000017   0.000000001   0.000000002  -0.000000022   0.000000000   0.000156110   0.000006078

    5    5.2  0.5  0.5  -0.000040845  -0.000055190  -0.000008928   0.000041906  -0.000000417   0.000023047   0.000432174   0.529007778
                        -0.000056405  -0.000076204  -0.000012651   0.000059303  -0.000000489   0.000028548   0.000206250   0.229059379

    6    6.2  0.5  0.5  -0.000000026   0.000000018   0.000000020  -0.000000006   0.000000013  -0.000000017   0.000156067   0.000011248
                         0.000094093  -0.000069646  -0.000005227  -0.000001128   0.000082627   0.000001471  -0.577703204   0.000493905

    7    1.2  0.5 -0.5   0.201430914   0.272148684   0.081653622  -0.383323276  -0.005135421   0.284493413   0.000000091   0.000107368
                         0.278220553   0.375897401   0.115587975  -0.542628240  -0.006362644   0.352479413   0.000000039   0.000046507

    8    2.2  0.5 -0.5  -0.464018193   0.343575115   0.715898246   0.152639047  -0.361652450  -0.006459827  -0.000117151   0.000000110
                        -0.000106957  -0.000016358   0.000110842  -0.000077790  -0.000040052  -0.000057657  -0.000000015  -0.000000024

    9    3.2  0.5 -0.5  -0.278306367  -0.375793290  -0.008990359   0.042125635  -0.011251901   0.633958293  -0.000000066  -0.000046514
                         0.201416851   0.272129702   0.006337489  -0.029755675   0.009237560  -0.511669435   0.000000091   0.000107384

   10    4.2  0.5 -0.5  -0.000040853  -0.000055201   0.000008284  -0.000038881  -0.000000522   0.000028843   0.000433258   0.530330007
                        -0.000056398  -0.000076199   0.000011724  -0.000055037  -0.000000646   0.000035771   0.000194291   0.229544985

   11    5.2  0.5 -0.5   0.000094090  -0.000069641   0.000072615   0.000015484  -0.000036690  -0.000000643  -0.576469793   0.000478548
                         0.000000015  -0.000000006   0.000000011  -0.000000007  -0.000000004  -0.000000017  -0.000076164  -0.000017482

   12    6.2  0.5 -0.5   0.000056402   0.000076200  -0.000000924   0.000004258  -0.000001134   0.000064306  -0.000206633  -0.229476302
                        -0.000040857  -0.000055201   0.000000646  -0.000003032   0.000000937  -0.000051885   0.000448745   0.530171334


   Nr   State  S   Sz        9            10            11            12

    1    1.2  0.5  0.5  -0.000073951  -0.000000516  -0.000035910  -0.000010612
                        -0.000000000   0.000000000  -0.000000000  -0.000000000

    2    2.2  0.5  0.5  -0.000000031   0.000004111   0.000020780  -0.000070306
                        -0.000000000   0.000002117   0.000010754  -0.000036416

    3    3.2  0.5  0.5   0.000000002   0.000000001  -0.000000000  -0.000000017
                        -0.000069263  -0.000000480   0.000043628   0.000012889

    4    4.2  0.5  0.5   0.728770294   0.005080858   0.352259414   0.104116467
                        -0.000184362  -0.000001849   0.000112722   0.000043821

    5    5.2  0.5  0.5   0.000284348  -0.040813930  -0.205345523   0.694714765
                         0.000145529  -0.021009856  -0.106348375   0.359818933

    6    6.2  0.5  0.5   0.000173030  -0.000002937   0.000137635   0.000050183
                         0.683182412   0.004740054  -0.428329798  -0.126615856

    7    1.2  0.5 -0.5   0.000000459  -0.000065764  -0.000009422   0.000031884
                         0.000000236  -0.000033821  -0.000004882   0.000016521

    8    2.2  0.5 -0.5  -0.000004624  -0.000000027  -0.000079177  -0.000023398
                         0.000000002  -0.000000014  -0.000000013  -0.000000013

    9    3.2  0.5 -0.5   0.000000218  -0.000031675   0.000005915  -0.000020072
                        -0.000000428   0.000061596  -0.000011451   0.000038737

   10    4.2  0.5 -0.5  -0.004517507   0.648003287   0.092462994  -0.312815625
                        -0.002325350   0.333463515   0.047862672  -0.161966327

   11    5.2  0.5 -0.5   0.045904144   0.000319425   0.782367080   0.231250423
                        -0.000017786   0.000000628   0.000146496   0.000050230

   12    6.2  0.5 -0.5  -0.002165229   0.312604041  -0.058208472   0.196942434
                         0.004216622  -0.607467654   0.112442658  -0.380368392


 Composition of spin-orbit eigenvectors
 ======================================

   Nr   State  S   Sz       1        2        3        4        5        6        7        8        9       10

    1    1.2  0.5  0.5  21.536%  11.798%  44.138%   2.003%  20.518%   0.007%   0.000%   0.000%   0.000%   0.000%
    2    2.2  0.5  0.5  11.804%  21.531%   2.330%  51.251%   0.004%  13.079%   0.000%   0.000%   0.000%   0.000%
    3    3.2  0.5  0.5  21.528%  11.802%   0.266%   0.012%  66.371%   0.021%   0.000%   0.000%   0.000%   0.000%
    4    4.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  33.394%   0.000%  53.111%   0.003%
    5    5.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  33.232%   0.000%   0.211%
    6    6.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  33.374%   0.000%  46.674%   0.002%
    7    1.2  0.5 -0.5  11.798%  21.536%   2.003%  44.138%   0.007%  20.518%   0.000%   0.000%   0.000%   0.000%
    8    2.2  0.5 -0.5  21.531%  11.804%  51.251%   2.330%  13.079%   0.004%   0.000%   0.000%   0.000%   0.000%
    9    3.2  0.5 -0.5  11.802%  21.528%   0.012%   0.266%   0.021%  66.371%   0.000%   0.000%   0.000%   0.000%
   10    4.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  33.394%   0.003%  53.111%
   11    5.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  33.232%   0.000%   0.211%   0.000%
   12    6.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  33.374%   0.002%  46.674%

   Nr   State  S   Sz      11       12

    1    1.2  0.5  0.5   0.000%   0.000%
    2    2.2  0.5  0.5   0.000%   0.000%
    3    3.2  0.5  0.5   0.000%   0.000%
    4    4.2  0.5  0.5  12.409%   1.084%
    5    5.2  0.5  0.5   5.348%  61.210%
    6    6.2  0.5  0.5  18.347%   1.603%
    7    1.2  0.5 -0.5   0.000%   0.000%
    8    2.2  0.5 -0.5   0.000%   0.000%
    9    3.2  0.5 -0.5   0.000%   0.000%
   10    4.2  0.5 -0.5   1.084%  12.409%
   11    5.2  0.5 -0.5  61.210%   5.348%
   12    6.2  0.5 -0.5   1.603%  18.347%


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
              1      24       44.46       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       6       14.62       700     1000      520     2100     2140     5203   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *       139.07     60.31     77.41      0.54      0.01      0.55
 REAL TIME  *       146.69 SEC
 DISK USED  *        44.40 MB (local),      318.99 MB (total)
 SF USED    *       142.87 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCVTZ-DK energy=    -24.555009796965

              CI           MULTI         RHF-SCF
    -24.40947233    -24.24248727    -24.53495315
 **********************************************************************************************************************************
 Molpro calculation terminated
