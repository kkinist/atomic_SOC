
 Working directory              : /wrk/irikura/molpro.gbsWKsxMcS/
 Global scratch directory       : /wrk/irikura/molpro.gbsWKsxMcS/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.gbsWKsxMcS/

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
 {multi
     closed,0,0
     occ,2,6
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
 Default parameters read. Elapsed time= 0.10 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2024.1 linked Wed Jan 31 05:42:09 2024


 **********************************************************************************************************************************
 LABEL *   B SO-CI                                                                                                                                                       
  (4 PROC) 64 bit mpp version                                                            DATE: 15-Feb-24          TIME: 17:34:49  
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

     2.621 MB (compressed) written to integral file ( 20.5%)

     Node minimum: 0.524 MB, node maximum: 0.524 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:     161145.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:     161145      RECORD LENGTH: 524288

 Memory used in sort:       0.72 MW

 SORT1 READ     1711873. AND WROTE       35932. INTEGRALS IN      1 RECORDS. CPU TIME:     0.01 SEC, REAL TIME:     0.01 SEC
 SORT2 READ      173263. AND WROTE      810039. INTEGRALS IN     10 RECORDS. CPU TIME:     0.01 SEC, REAL TIME:     0.02 SEC

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
 CPU TIMES  *         0.68      0.49
 REAL TIME  *         1.66 SEC
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
   1      -24.50737218     -24.50737218     0.00D+00     0.92D-01     0     0       0.01      0.01    start
   2      -24.53087375      -0.02350157     0.72D-02     0.16D-01     1     0       0.00      0.01    diag2
   3      -24.53397033      -0.00309658     0.20D-02     0.34D-02     2     0       0.00      0.01    diag2
   4      -24.53491093      -0.00094059     0.11D-02     0.37D-02     3     0       0.00      0.01    diag2
   5      -24.53495253      -0.00004160     0.24D-03     0.13D-02     4     0       0.00      0.01    diag2
   6      -24.53495314      -0.00000062     0.36D-04     0.16D-03     5     0       0.00      0.01    diag2
   7      -24.53495315      -0.00000000     0.29D-05     0.13D-04     6     0       0.01      0.02    diag2
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
 CPU TIMES  *         0.70      0.01      0.49
 REAL TIME  *         1.69 SEC
 DISK USED  *        29.44 MB (local),      168.29 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of active  orbitals:        8 (    2    6)
 Number of external orbitals:      51 (   25   26)

 State symmetry 1

 Number of active electrons:   5    Spin symmetry=Doublet   Space symmetry=2
 Number of states:             6
 Number of CSFs:             516   (776 determinants, 1568 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  
 *** IN SYMMETRY 1 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.140D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.117D-01 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 2 6 3 4 5 1 5   4 3 2 6 1 5 4 3 6 2   1 6 2 4 3 5 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.181D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.599D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.595D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.209D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.784D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.838D-03 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 3 2 1 2 3 1 3 2 6   5 8 4 910 7 1 2 3 6   5 8 4 910 7 2 3 1 2   3 1

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.33000   0.33000   0.33000   0.00333   0.00333   0.00333
 
 Number of orbital rotations:  206  ( 0 closed/active, 0 closed/virtual, 0 active/active, 206 active/virtual )
 Total number of variables:    4862
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1    6   17    0    -24.54014830     -24.56842023   -0.02827193    0.06769384 0.00045873 0.00131217  0.14E+01      0.18
   2    4   11    0    -24.56770359     -24.56774494   -0.00004135    0.00477488 0.00000085 0.00000898  0.65E-01      0.33
   3    6   17    0    -24.56774470     -24.56774497   -0.00000027    0.00000679 0.00000001 0.00000007  0.10E-03      0.55
   4    7   15    0    -24.56774493     -24.56774497   -0.00000004    0.00000008 0.00000000 0.00000008  0.48E-06      0.75

 CONVERGENCE REACHED!  Final gradient:    0.00000002 ( 0.16E-07)
                       Final energy:    -24.56774497
 
 Results for state 1.2
 =====================
 !MCSCF STATE 1.2 Energy                       -24.570727260432
 Nuclear energy                                  0.00000000
 Kinetic energy                                 24.61577044
 One electron energy                           -32.36997025
 Two electron energy                             7.79924299
 Virial ratio                                    1.99817015
 
 !MCSCF STATE 1.2 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.2
 =====================
 !MCSCF STATE 2.2 Energy                       -24.570727260257
 Nuclear energy                                  0.00000000
 Kinetic energy                                 24.61577044
 One electron energy                           -32.36997025
 Two electron energy                             7.79924299
 Virial ratio                                    1.99817015
 
 !MCSCF STATE 2.2 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.2
 =====================
 !MCSCF STATE 3.2 Energy                       -24.570727260133
 Nuclear energy                                  0.00000000
 Kinetic energy                                 24.61577045
 One electron energy                           -32.36997026
 Two electron energy                             7.79924300
 Virial ratio                                    1.99817015
 
 !MCSCF STATE 3.2 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.2
 =====================
 !MCSCF STATE 4.2 Energy                       -24.272498297353
 Nuclear energy                                  0.00000000
 Kinetic energy                                 24.49996755
 One electron energy                           -31.42081277
 Two electron energy                             7.14831447
 Virial ratio                                    1.99071553
 
 !MCSCF STATE 4.2 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.2
 =====================
 !MCSCF STATE 5.2 Energy                       -24.272498235742
 Nuclear energy                                  0.00000000
 Kinetic energy                                 24.49996776
 One electron energy                           -31.42081295
 Two electron energy                             7.14831471
 Virial ratio                                    1.99071552
 
 !MCSCF STATE 5.2 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.2
 =====================
 !MCSCF STATE 6.2 Energy                       -24.272498175203
 Nuclear energy                                  0.00000000
 Kinetic energy                                 24.49996802
 One electron energy                           -31.42081318
 Two electron energy                             7.14831501
 Virial ratio                                    1.99071550
 
 !MCSCF STATE 6.2 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 !MCSCF expec                      <1.2|LXLX|1.2>     0.999999999860
 !MCSCF expec                      <2.2|LXLX|2.2>     0.000000008827
 !MCSCF expec                      <3.2|LXLX|3.2>     0.999999991289
 !MCSCF expec                      <4.2|LXLX|4.2>     1.000000000000
 !MCSCF expec                      <5.2|LXLX|5.2>     0.000000000000
 !MCSCF expec                      <6.2|LXLX|6.2>     1.000000000000
 
 !MCSCF expec                      <1.2|LYLY|1.2>     0.999999988505
 !MCSCF expec                      <2.2|LYLY|2.2>     0.999999991308
 !MCSCF expec                      <3.2|LYLY|3.2>     0.000000020216
 !MCSCF expec                      <4.2|LYLY|4.2>     0.000000000000
 !MCSCF expec                      <5.2|LYLY|5.2>     1.000000000000
 !MCSCF expec                      <6.2|LYLY|6.2>     1.000000000000
 
 !MCSCF expec                      <1.2|LZLZ|1.2>     0.000000011636
 !MCSCF expec                      <2.2|LZLZ|2.2>     0.999999999865
 !MCSCF expec                      <3.2|LZLZ|3.2>     0.999999988495
 !MCSCF expec                      <4.2|LZLZ|4.2>     1.000000000000
 !MCSCF expec                      <5.2|LZLZ|5.2>     1.000000000000
 !MCSCF expec                      <6.2|LZLZ|6.2>     0.000000000000
 
 !MCSCF expec                      <1.2|L**2|1.2>     2.000000000000
 !MCSCF expec                      <2.2|L**2|2.2>     2.000000000000
 !MCSCF expec                      <3.2|L**2|3.2>     2.000000000000
 !MCSCF expec                      <4.2|L**2|4.2>     2.000000000000
 !MCSCF expec                      <5.2|L**2|5.2>     2.000000000000
 !MCSCF expec                      <6.2|L**2|6.2>     2.000000000000
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 5 3 6 2 4 1 5   3 6 2 4 1 5 3 6 2 4   1 3 5 6 2 4 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   2 1 3 1 2 3 3 1 2 9   710 8 5 6 4 3 1 2 9   710 8 5 6 4 3 1 2 2   1 3
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     1.99999    -7.68979     1  1  s    0.99918
    2.1     1.88809    -0.47728     1  2  s    1.05655
    1.2     0.36487     0.02295     1  1  py   0.99444
    2.2     0.36487     0.02295     1  1  px   0.99444
    3.2     0.36487     0.02295     1  1  pz   0.99444
    4.2     0.00577     0.27123     1  1  px  -0.98211    1  3  px   1.27672    1  6  px   0.30011
    5.2     0.00577     0.27123     1  1  py  -0.98211    1  3  py   1.27672    1  6  py   0.30011
    6.2     0.00577     0.27123     1  1  pz  -0.98211    1  3  pz   1.27672    1  6  pz   0.30011
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 2
 =============================
 
 22 0a0000      0.00001075      0.97148309      0.00009160      0.00000000     -0.02855980     -0.00000000
 22 00a000      0.97148309     -0.00001128     -0.00010236     -0.00000018     -0.00000006     -0.02855980
 22 a00000      0.00010252     -0.00009057      0.97148308     -0.02855980      0.00000012      0.00000019
 22 0000a0      0.00000232     -0.00000205      0.02201158      0.95954112      0.00000002      0.00000003
 22 000a00      0.00000024      0.02201158      0.00000208     -0.00000002      0.95954112      0.00000000
 22 00000a      0.02201158     -0.00000026     -0.00000232     -0.00000003     -0.00000001      0.95954112
 20 2a0000     -0.00000330     -0.15729815     -0.00001184     -0.00000000      0.00692385     -0.00000000
 20 0a2000     -0.00000330     -0.15729815     -0.00001184     -0.00000000      0.00692384     -0.00000000
 20 20a000     -0.15729815      0.00000183      0.00002130      0.00000003      0.00000001      0.00692385
 20 02a000     -0.15729815      0.00000183      0.00002130      0.00000003      0.00000001      0.00692385
 20 a02000     -0.00002086      0.00001467     -0.15729815      0.00692384     -0.00000002     -0.00000003
 20 a20000     -0.00002086      0.00001467     -0.15729815      0.00692384     -0.00000002     -0.00000003
 20 002a00     -0.00000008     -0.00371315     -0.00000028      0.00000000     -0.15462533      0.00000000
 20 02000a     -0.00371315      0.00000004      0.00000050     -0.00000004     -0.00000000     -0.15462533
 20 0020a0     -0.00000049      0.00000035     -0.00371315     -0.15462533     -0.00000000      0.00000004
 20 20000a     -0.00371315      0.00000004      0.00000050     -0.00000004     -0.00000000     -0.15462533
 20 0200a0     -0.00000049      0.00000035     -0.00371315     -0.15462533     -0.00000000      0.00000004
 20 200a00     -0.00000008     -0.00371315     -0.00000028      0.00000000     -0.15462533      0.00000000
 20 00200a     -0.03694305      0.00000043      0.00000500     -0.00000004      0.00000000     -0.15208372
 20 020a00     -0.00000077     -0.03694305     -0.00000278      0.00000000     -0.15208372      0.00000000
 20 2000a0     -0.00000490      0.00000344     -0.03694305     -0.15208371     -0.00000001      0.00000003
 
 Energy:      -24.57072726    -24.57072726    -24.57072726    -24.27249830    -24.27249824    -24.27249818
 


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       29.51       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       5        0.59       700     1000      520     2100     2140   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF   

 PROGRAMS   *        TOTAL     MULTI   RHF-SCF       INT
 CPU TIMES  *         1.42      0.72      0.01      0.49
 REAL TIME  *         2.58 SEC
 DISK USED  *        30.17 MB (local),      171.95 MB (total)
 SF USED    *         3.02 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

        ENERGY      LL
    -24.57072726   2.0
    -24.57072726   2.0
    -24.57072726   2.0
    -24.27249830   2.0
    -24.27249824   2.0
    -24.27249818   2.0
                                                  


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

 Reference space:      282 conf      516 CSFs
 N elec internal:      504 conf     1008 CSFs
 N-1 el internal:      266 conf      714 CSFs
 N-2 el internal:      112 conf      392 CSFs

 Number of electrons in valence space:                      5
 Maximum number of open shell orbitals in reference space:  5
 Maximum number of open shell orbitals in internal spaces:  5


 Number of active  orbitals:        8 (   2   6 )
 Number of external orbitals:      51 (  25  26 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Valence orbitals related to previous ones by unitary transformation. Operators transformed.


 Number of p-space configurations:  14

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1       -24.57072726
     2       -24.57072726
     3       -24.57072726
     4       -24.27249830
     5       -24.27249824
     6       -24.27249818

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.3803D-07

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1262D-06

 Number of blocks in overlap matrix:     4   Smallest eigenvalue:  0.38D-07
 Number of N-2 electron functions:     282
 Number of N-1 electron functions:     714

 Number of internal configurations:                  516
 Number of singly external configurations:         18220
 Number of doubly external configurations:        183323
 Total number of contracted configurations:       202059
 Total number of uncontracted configurations:     272980

 Diagonal Coupling coefficients finished.               Storage:    581285 words, CPU-Time:      0.17 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:    236644 words, CPU-time:      0.01 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000   -24.57072726     0.00000000    -0.06776021  0.19D-01  0.12D-02     0.39
    1     2     2     1.00000000     0.00000000   -24.57072726     0.00000000    -0.06782445  0.19D-01  0.12D-02     0.39
    1     3     3     1.00000000     0.00000000   -24.57072726     0.00000000    -0.06782430  0.19D-01  0.12D-02     0.39
    1     4     4     1.00000000     0.00000000   -24.27249830     0.00000000    -0.08353805  0.50D-01  0.11D-02     0.39
    1     5     5     1.00000000     0.00000000   -24.27249824     0.00000000    -0.08353789  0.50D-01  0.11D-02     0.39
    1     6     6     1.00000000     0.00000000   -24.27249818     0.00000000    -0.08351743  0.49D-01  0.11D-02     0.39
    2     1     1     1.02194522    -0.07138762   -24.64211488    -0.07138762    -0.00150748  0.14D-03  0.65D-04     2.63
    2     2     2     1.02202040    -0.07138307   -24.64211033    -0.07138307    -0.00150930  0.15D-03  0.66D-04     2.63
    2     3     3     1.02202031    -0.07138305   -24.64211031    -0.07138305    -0.00150932  0.15D-03  0.66D-04     2.63
    2     4     4     1.06625259    -0.09543128   -24.36792958    -0.09543128    -0.01036824  0.12D-01  0.72D-04     2.63
    2     5     5     1.06625706    -0.09541957   -24.36791781    -0.09541957    -0.01037617  0.12D-01  0.72D-04     2.63
    2     6     6     1.06625738    -0.09541963   -24.36791780    -0.09541963    -0.01037617  0.12D-01  0.72D-04     2.63
    3     1     1     1.02550793    -0.07492920   -24.64565646    -0.00354159    -0.00102298  0.16D-03  0.33D-04     4.80
    3     2     2     1.02541898    -0.07492498   -24.64565224    -0.00354191    -0.00102427  0.15D-03  0.34D-04     4.80
    3     3     3     1.02541902    -0.07492493   -24.64565219    -0.00354188    -0.00102428  0.15D-03  0.34D-04     4.80
    3     4     4     1.30101938    -0.12680621   -24.39930451    -0.03137493    -0.00539371  0.39D-02  0.84D-04     4.80
    3     5     5     1.30045753    -0.12677311   -24.39927135    -0.03135354    -0.00541915  0.40D-02  0.84D-04     4.80
    3     6     6     1.30045695    -0.12677315   -24.39927132    -0.03135352    -0.00541917  0.40D-02  0.84D-04     4.80
    4     1     1     1.02683420    -0.07745869   -24.64818595    -0.00252949    -0.00027937  0.40D-04  0.11D-04     7.06
    4     2     2     1.02682982    -0.07745765   -24.64818491    -0.00253267    -0.00027949  0.40D-04  0.11D-04     7.06
    4     3     3     1.02682979    -0.07745763   -24.64818489    -0.00253270    -0.00027951  0.40D-04  0.11D-04     7.06
    4     4     4     1.43643807    -0.13461039   -24.40710868    -0.00780417    -0.00091255  0.59D-03  0.31D-04     7.06
    4     5     5     1.43639894    -0.13460435   -24.40710258    -0.00783123    -0.00091446  0.59D-03  0.31D-04     7.06
    4     6     6     1.43639966    -0.13460439   -24.40710257    -0.00783124    -0.00091446  0.59D-03  0.31D-04     7.06
    5     1     1     1.02518067    -0.07791391   -24.64864117    -0.00045522    -0.00010261  0.76D-05  0.45D-05     9.26
    5     2     2     1.02519660    -0.07791365   -24.64864091    -0.00045599    -0.00010271  0.77D-05  0.45D-05     9.26
    5     3     3     1.02519666    -0.07791364   -24.64864090    -0.00045601    -0.00010271  0.77D-05  0.45D-05     9.26
    5     4     4     1.42584772    -0.13645785   -24.40895615    -0.00184747    -0.00055432  0.14D-03  0.23D-04     9.26
    5     5     5     1.42577619    -0.13645504   -24.40895328    -0.00185070    -0.00055422  0.14D-03  0.23D-04     9.26
    5     6     6     1.42577662    -0.13645508   -24.40895326    -0.00185069    -0.00055423  0.14D-03  0.23D-04     9.26
    6     1     1     1.02590491    -0.07815422   -24.64888148    -0.00024032    -0.00007697  0.90D-05  0.28D-05    11.42
    6     2     2     1.02588696    -0.07815385   -24.64888111    -0.00024021    -0.00007713  0.89D-05  0.28D-05    11.42
    6     3     3     1.02588691    -0.07815384   -24.64888110    -0.00024021    -0.00007713  0.89D-05  0.28D-05    11.42
    6     4     4     1.44836134    -0.13793177   -24.41043006    -0.00147391    -0.00063346  0.36D-03  0.18D-04    11.42
    6     5     5     1.44841326    -0.13792907   -24.41042731    -0.00147403    -0.00063411  0.36D-03  0.18D-04    11.42
    6     6     6     1.44841301    -0.13792911   -24.41042728    -0.00147402    -0.00063411  0.36D-03  0.18D-04    11.42
    7     1     1     1.02699399    -0.07827932   -24.64900658    -0.00012510    -0.00003379  0.70D-05  0.11D-05    13.58
    7     2     2     1.02699273    -0.07827916   -24.64900642    -0.00012531    -0.00003380  0.70D-05  0.11D-05    13.58
    7     3     3     1.02699268    -0.07827916   -24.64900642    -0.00012531    -0.00003381  0.70D-05  0.11D-05    13.58
    7     4     4     1.46425325    -0.13893144   -24.41142974    -0.00099968    -0.00031115  0.15D-03  0.91D-05    13.58
    7     5     5     1.46430625    -0.13892980   -24.41142804    -0.00100073    -0.00031168  0.15D-03  0.91D-05    13.58
    7     6     6     1.46430697    -0.13892984   -24.41142802    -0.00100073    -0.00031168  0.15D-03  0.91D-05    13.58
    8     1     1     1.02656962    -0.07833280   -24.64906006    -0.00005348    -0.00001708  0.74D-06  0.76D-06    15.75
    8     2     2     1.02657354    -0.07833272   -24.64905998    -0.00005356    -0.00001711  0.73D-06  0.76D-06    15.75
    8     3     3     1.02657358    -0.07833272   -24.64905998    -0.00005356    -0.00001711  0.74D-06  0.76D-06    15.75
    8     4     4     1.46019234    -0.13941194   -24.41191024    -0.00048050    -0.00016882  0.38D-04  0.68D-05    15.75
    8     5     5     1.46013588    -0.13941102   -24.41190926    -0.00048122    -0.00016887  0.38D-04  0.68D-05    15.75
    8     6     6     1.46013628    -0.13941106   -24.41190924    -0.00048122    -0.00016887  0.38D-04  0.68D-05    15.75
    9     1     1     1.02651030    -0.07836354   -24.64909080    -0.00003074    -0.00001234  0.10D-05  0.51D-06    17.91
    9     2     2     1.02650677    -0.07836347   -24.64909073    -0.00003075    -0.00001235  0.11D-05  0.51D-06    17.91
    9     3     3     1.02650675    -0.07836347   -24.64909073    -0.00003075    -0.00001235  0.11D-05  0.51D-06    17.91
    9     4     4     1.46845456    -0.13977923   -24.41227753    -0.00036729    -0.00018342  0.69D-04  0.66D-05    17.91
    9     5     5     1.46846225    -0.13977855   -24.41227678    -0.00036753    -0.00018356  0.70D-04  0.65D-05    17.91
    9     6     6     1.46846226    -0.13977859   -24.41227676    -0.00036753    -0.00018356  0.70D-04  0.65D-05    17.91
   10     1     1     1.02693536    -0.07838347   -24.64911073    -0.00001993    -0.00000706  0.79D-06  0.27D-06    20.05
   10     2     2     1.02693437    -0.07838343   -24.64911069    -0.00001996    -0.00000707  0.79D-06  0.27D-06    20.05
   10     3     3     1.02693434    -0.07838343   -24.64911069    -0.00001996    -0.00000707  0.79D-06  0.27D-06    20.05
   10     4     4     1.47318084    -0.14006185   -24.41256015    -0.00028262    -0.00010562  0.47D-04  0.34D-05    20.05
   10     5     5     1.47320199    -0.14006155   -24.41255978    -0.00028300    -0.00010574  0.48D-04  0.34D-05    20.05
   10     6     6     1.47320265    -0.14006159   -24.41255977    -0.00028300    -0.00010574  0.48D-04  0.34D-05    20.05
   11     1     1     1.02691125    -0.07839380   -24.64912106    -0.00001033    -0.00000391  0.20D-06  0.19D-06    22.19
   11     2     2     1.02691229    -0.07839377   -24.64912103    -0.00001034    -0.00000392  0.20D-06  0.19D-06    22.19
   11     3     3     1.02691230    -0.07839377   -24.64912103    -0.00001034    -0.00000392  0.20D-06  0.19D-06    22.19
   11     4     4     1.47243243    -0.14020924   -24.41270754    -0.00014739    -0.00005511  0.12D-04  0.23D-05    22.19
   11     5     5     1.47240323    -0.14020916   -24.41270740    -0.00014761    -0.00005512  0.12D-04  0.23D-05    22.19
   11     6     6     1.47240365    -0.14020921   -24.41270738    -0.00014761    -0.00005512  0.12D-04  0.23D-05    22.19
   12     1     1     1.02684016    -0.07840034   -24.64912760    -0.00000655    -0.00000297  0.15D-06  0.13D-06    24.35
   12     2     2     1.02683953    -0.07840032   -24.64912758    -0.00000655    -0.00000298  0.16D-06  0.13D-06    24.35
   12     3     3     1.02683953    -0.07840032   -24.64912758    -0.00000655    -0.00000298  0.16D-06  0.13D-06    24.35
   12     4     4     1.47674171    -0.14031876   -24.41281706    -0.00010952    -0.00005707  0.19D-04  0.22D-05    24.35
   12     5     5     1.47675372    -0.14031872   -24.41281696    -0.00010956    -0.00005709  0.19D-04  0.22D-05    24.35
   12     6     6     1.47675389    -0.14031877   -24.41281694    -0.00010956    -0.00005709  0.19D-04  0.22D-05    24.35
   13     1     1     1.02697078    -0.07840499   -24.64913225    -0.00000465    -0.00000189  0.13D-06  0.84D-07    26.54
   13     2     2     1.02697018    -0.07840498   -24.64913224    -0.00000466    -0.00000189  0.13D-06  0.84D-07    26.54
   13     3     3     1.02697017    -0.07840498   -24.64913224    -0.00000466    -0.00000189  0.13D-06  0.84D-07    26.54
   13     4     4     1.47902349    -0.14040381   -24.41290211    -0.00008505    -0.00003411  0.14D-04  0.12D-05    26.54
   13     5     5     1.47900722    -0.14040386   -24.41290209    -0.00008514    -0.00003410  0.13D-04  0.13D-05    26.54
   13     6     6     1.47902407    -0.14040392   -24.41290209    -0.00008515    -0.00003411  0.14D-04  0.12D-05    26.54
   14     1     1     1.02700171    -0.07840764   -24.64913490    -0.00000265    -0.00000110  0.54D-07  0.56D-07    28.71
   14     2     2     1.02700178    -0.07840763   -24.64913489    -0.00000265    -0.00000111  0.55D-07  0.57D-07    28.71
   14     3     3     1.02700179    -0.07840763   -24.64913489    -0.00000265    -0.00000111  0.55D-07  0.57D-07    28.71
   14     4     4     1.47874362    -0.14044946   -24.41294776    -0.00004565    -0.00001769  0.38D-05  0.81D-06    28.71
   14     5     5     1.47874407    -0.14044951   -24.41294775    -0.00004565    -0.00001769  0.38D-05  0.81D-06    28.71
   14     6     6     1.47876023    -0.14044953   -24.41294771    -0.00004561    -0.00001770  0.37D-05  0.81D-06    28.71
   15     1     1     1.02697639    -0.07840941   -24.64913667    -0.00000176    -0.00000087  0.35D-07  0.41D-07    30.84
   15     2     2     1.02697631    -0.07840940   -24.64913666    -0.00000177    -0.00000087  0.35D-07  0.42D-07    30.84
   15     3     3     1.02697631    -0.07840940   -24.64913666    -0.00000177    -0.00000087  0.35D-07  0.42D-07    30.84
   15     4     4     1.48042763    -0.14048201   -24.41298031    -0.00003255    -0.00001801  0.42D-05  0.81D-06    30.84
   15     5     5     1.48042790    -0.14048206   -24.41298030    -0.00003255    -0.00001801  0.42D-05  0.81D-06    30.84
   15     6     6     1.48042371    -0.14048209   -24.41298027    -0.00003256    -0.00001802  0.42D-05  0.82D-06    30.84
   16     1     1     1.02701457    -0.07841071   -24.64913798    -0.00000131    -0.00000059  0.21D-07  0.31D-07    33.01
   16     2     2     1.02701438    -0.07841071   -24.64913797    -0.00000131    -0.00000060  0.21D-07  0.31D-07    33.01
   16     3     3     1.02701439    -0.07841071   -24.64913797    -0.00000131    -0.00000060  0.21D-07  0.31D-07    33.01
   16     4     4     1.48165337    -0.14050778   -24.41300607    -0.00002576    -0.00001126  0.36D-05  0.48D-06    33.01
   16     5     5     1.48165387    -0.14050783   -24.41300606    -0.00002576    -0.00001126  0.36D-05  0.48D-06    33.01
   16     6     6     1.48163969    -0.14050784   -24.41300601    -0.00002575    -0.00001127  0.35D-05  0.48D-06    33.01
   17     1     1     1.02703777    -0.07841152   -24.64913878    -0.00000080    -0.00000036  0.14D-07  0.19D-07    35.13
   17     2     2     1.02703769    -0.07841151   -24.64913877    -0.00000080    -0.00000036  0.14D-07  0.20D-07    35.13
   17     3     3     1.02703770    -0.07841151   -24.64913877    -0.00000080    -0.00000036  0.14D-07  0.20D-07    35.13
   17     4     4     1.48172030    -0.14052229   -24.41302059    -0.00001451    -0.00000586  0.11D-05  0.30D-06    35.13
   17     5     5     1.48172079    -0.14052234   -24.41302057    -0.00001451    -0.00000586  0.11D-05  0.30D-06    35.13
   17     6     6     1.48172644    -0.14052235   -24.41302053    -0.00001451    -0.00000587  0.11D-05  0.30D-06    35.13
   18     1     1     1.02703125    -0.07841208   -24.64913934    -0.00000056    -0.00000029  0.84D-08  0.15D-07    37.28
   18     2     2     1.02703113    -0.07841207   -24.64913933    -0.00000056    -0.00000029  0.84D-08  0.15D-07    37.28
   18     3     3     1.02703113    -0.07841207   -24.64913933    -0.00000056    -0.00000029  0.84D-08  0.15D-07    37.28
   18     4     4     1.48252012    -0.14053257   -24.41303087    -0.00001028    -0.00000594  0.97D-06  0.30D-06    37.28
   18     5     5     1.48252051    -0.14053262   -24.41303086    -0.00001028    -0.00000594  0.97D-06  0.30D-06    37.28
   18     6     6     1.48252088    -0.14053264   -24.41303082    -0.00001029    -0.00000595  0.96D-06  0.30D-06    37.28
   19     1     1     1.02704259    -0.07841250   -24.64913976    -0.00000042    -0.00000021  0.40D-08  0.12D-07    39.44
   19     2     2     1.02704252    -0.07841249   -24.64913975    -0.00000042    -0.00000021  0.39D-08  0.12D-07    39.44
   19     3     3     1.02704252    -0.07841249   -24.64913975    -0.00000042    -0.00000021  0.39D-08  0.12D-07    39.44
   19     4     4     1.48315239    -0.14054080   -24.41303910    -0.00000823    -0.00000394  0.95D-06  0.20D-06    39.44
   19     5     5     1.48315286    -0.14054085   -24.41303909    -0.00000823    -0.00000394  0.95D-06  0.20D-06    39.44
   19     6     6     1.48314473    -0.14054088   -24.41303905    -0.00000824    -0.00000395  0.94D-06  0.20D-06    39.44
   20     1     1     1.02705600    -0.07841277   -24.64914003    -0.00000027    -0.00000013  0.33D-08  0.74D-08    41.62
   20     2     2     1.02705598    -0.07841277   -24.64914003    -0.00000027    -0.00000013  0.34D-08  0.74D-08    41.62
   20     3     3     1.02705598    -0.07841277   -24.64914003    -0.00000027    -0.00000013  0.34D-08  0.74D-08    41.62
   20     4     4     1.48324132    -0.14054565   -24.41304395    -0.00000485    -0.00000208  0.33D-06  0.12D-06    41.62
   20     5     5     1.48324181    -0.14054570   -24.41304394    -0.00000485    -0.00000208  0.33D-06  0.12D-06    41.62
   20     6     6     1.48324233    -0.14054574   -24.41304391    -0.00000486    -0.00000209  0.33D-06  0.12D-06    41.62
   21     1     1     1.02705603    -0.07841297   -24.64914023    -0.00000020    -0.00000011  0.20D-08  0.61D-08    43.73
   21     2     2     1.02705593    -0.07841296   -24.64914022    -0.00000020    -0.00000011  0.20D-08  0.61D-08    43.73
   21     3     3     1.02705593    -0.07841296   -24.64914022    -0.00000020    -0.00000011  0.20D-08  0.61D-08    43.73
   21     4     4     1.48361696    -0.14054915   -24.41304745    -0.00000350    -0.00000209  0.24D-06  0.11D-06    43.73
   21     5     5     1.48361742    -0.14054920   -24.41304744    -0.00000350    -0.00000209  0.24D-06  0.11D-06    43.73
   21     6     6     1.48361854    -0.14054924   -24.41304741    -0.00000350    -0.00000210  0.24D-06  0.11D-06    43.73
   22     1     1     1.02705602    -0.07841297   -24.64914023    -0.00000000    -0.00000011  0.20D-08  0.60D-08    45.04
   22     2     2     1.02705592    -0.07841296   -24.64914022    -0.00000000    -0.00000011  0.20D-08  0.61D-08    45.04
   22     3     3     1.02705592    -0.07841296   -24.64914022    -0.00000000    -0.00000011  0.20D-08  0.61D-08    45.04
   22     4     4     1.48505536    -0.14055758   -24.41305588    -0.00000843    -0.00000101  0.18D-06  0.43D-07    45.04
   22     5     5     1.48505853    -0.14055764   -24.41305587    -0.00000844    -0.00000100  0.17D-06  0.43D-07    45.04
   22     6     6     1.48505588    -0.14055769   -24.41305587    -0.00000845    -0.00000101  0.18D-06  0.43D-07    45.04
   23     1     1     1.02705614    -0.07841297   -24.64914023    -0.00000000    -0.00000011  0.22D-08  0.60D-08    46.33
   23     2     2     1.02705603    -0.07841296   -24.64914022    -0.00000000    -0.00000011  0.21D-08  0.61D-08    46.33
   23     3     3     1.02705603    -0.07841296   -24.64914022    -0.00000000    -0.00000011  0.21D-08  0.61D-08    46.33
   23     4     4     1.48510944    -0.14055844   -24.41305674    -0.00000086    -0.00000006  0.31D-08  0.39D-08    46.33
   23     5     5     1.48511092    -0.14055849   -24.41305673    -0.00000085    -0.00000006  0.31D-08  0.39D-08    46.33
   23     6     6     1.48510996    -0.14055855   -24.41305673    -0.00000086    -0.00000006  0.31D-08  0.39D-08    46.33


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.5%
 S   0.4%   1.0%
 P   1.5%   9.2%  67.6%

 Initialization:   0.7%
 Other:           19.1%

 Total CPU:       46.3 seconds
 =====================================



 Wavefunction saved on  5203.2

 Reference coefficients greater than 0.0500000
 =============================================
 22/00000          -0.0000492   0.0004385   0.9625274   0.0066962  -0.0000001   0.0000001
 2200/000           0.9624951   0.0078970   0.0000456   0.0000001   0.0066931   0.0002080
 220/0000          -0.0078970   0.9624951  -0.0004389  -0.0000001  -0.0002080   0.0066930
 220000/0           0.0000004  -0.0000036  -0.0078842   0.7896090  -0.0000153   0.0000148
 22000/00           0.0000647  -0.0078839   0.0000036  -0.0000153  -0.0245240   0.7892279
 2200000/          -0.0078840  -0.0000647  -0.0000004   0.0000149   0.7892276   0.0245240
 20/20000           0.0000074  -0.0000662  -0.1452528  -0.0027518   0.0000001  -0.0000001
 20/02000           0.0000074  -0.0000662  -0.1452500  -0.0027274   0.0000001  -0.0000001
 2002/000          -0.1452480  -0.0011917  -0.0000069  -0.0000001  -0.0027505  -0.0000855
 202/0000           0.0011917  -0.1452479   0.0000662   0.0000001   0.0000855  -0.0027504
 200/2000           0.0011917  -0.1452452   0.0000662   0.0000001   0.0000847  -0.0027261
 2020/000          -0.1452451  -0.0011917  -0.0000069  -0.0000000  -0.0027264  -0.0000847
 200200/0          -0.0000000   0.0000002   0.0003319  -0.1215292   0.0000024  -0.0000023
 200020/0          -0.0000000   0.0000002   0.0003412  -0.1215083   0.0000024  -0.0000023
 2002000/           0.0003319   0.0000027   0.0000000  -0.0000023  -0.1214706  -0.0037745
 20200/00          -0.0000027   0.0003319  -0.0000002   0.0000023   0.0037745  -0.1214706
 2020000/           0.0003412   0.0000028   0.0000000  -0.0000023  -0.1214498  -0.0037739
 20002/00          -0.0000028   0.0003412  -0.0000002   0.0000023   0.0037739  -0.1214496
 202000/0           0.0000016  -0.0000140  -0.0306794  -0.1188536   0.0000023  -0.0000022
 20020/00           0.0002517  -0.0306784   0.0000140   0.0000023   0.0036914  -0.1187962
 2000200/          -0.0306784  -0.0002517  -0.0000015  -0.0000022  -0.1187960  -0.0036914

 Coefficients of singly external configurations greater than 0.0500000
 =====================================================================

 22000000   9.2    -0.0000004   0.0000034   0.0074176  -0.5157025   0.0000100  -0.0000097
 22000000   8.2    -0.0000609   0.0074173  -0.0000034   0.0000100   0.0160169  -0.5154539
 22000000   7.2     0.0074172   0.0000609   0.0000004  -0.0000097  -0.5154537  -0.0160169
 20020000   9.2     0.0000001  -0.0000005  -0.0011782   0.0822015  -0.0000016   0.0000015
 20002000   9.2     0.0000001  -0.0000005  -0.0011786   0.0821979  -0.0000016   0.0000015
 20020000   7.2    -0.0011782  -0.0000097  -0.0000001   0.0000015   0.0821621   0.0025531
 20200000   8.2     0.0000097  -0.0011781   0.0000005  -0.0000016  -0.0025531   0.0821619
 20200000   7.2    -0.0011786  -0.0000097  -0.0000001   0.0000015   0.0821598   0.0025530
 20002000   8.2     0.0000097  -0.0011785   0.0000005  -0.0000016  -0.0025529   0.0821582
 20200000   9.2     0.0000002  -0.0000020  -0.0044862   0.0805206  -0.0000016   0.0000015
 20020000   8.2     0.0000368  -0.0044861   0.0000020  -0.0000016  -0.0025008   0.0804818
 20002000   7.2    -0.0044861  -0.0000368  -0.0000002   0.0000015   0.0804807   0.0025008
 2/\00000   3.1     0.0000006  -0.0000057  -0.0125275   0.0699323  -0.0000014   0.0000013
 2/00\000   3.1    -0.0125272  -0.0001028  -0.0000006   0.0000013   0.0698999   0.0021720
 2/0\0000   3.1     0.0001028  -0.0125270   0.0000057  -0.0000014  -0.0021720   0.0698986
 2/\00000   9.1     0.0000006  -0.0000051  -0.0112434   0.0628888  -0.0000012   0.0000012
 2/00\000   9.1    -0.0112431  -0.0000922  -0.0000005   0.0000012   0.0628589   0.0019532
 2/0\0000   9.1     0.0000922  -0.0112430   0.0000051  -0.0000012  -0.0019532   0.0628584
 2/0000\0   9.1    -0.0000022   0.0000193   0.0423296   0.0564499  -0.0000011   0.0000011
 2/000\00   9.1    -0.0003473   0.0423282  -0.0000193  -0.0000011  -0.0017532   0.0564226
 2/00000\   9.1     0.0423283   0.0003473   0.0000020   0.0000011   0.0564226   0.0017532
 2\00/000  13.1    -0.0528380  -0.0004335  -0.0000025   0.0000003   0.0136664   0.0004247

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.986104   -0.008091   -0.000050    0.000002    0.000251   -0.030624
 2           0.008091    0.986104    0.000449   -0.000014   -0.030624   -0.000251
 3           0.000047   -0.000450    0.986137   -0.030625    0.000014   -0.000001
 4           0.000001   -0.000001    0.032153    0.819830   -0.000016    0.000015
 5           0.032138   -0.000999   -0.000001   -0.000016   -0.025463    0.819434
 6           0.000999    0.032138    0.000001    0.000015    0.819434    0.025463

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.986606   -0.000000    0.000000   -0.000000    0.003651    0.000083
 2          -0.000000    0.986606    0.000000    0.000002   -0.000083    0.003651
 3           0.000000    0.000000    0.986606    0.003652    0.000000   -0.000002
 4          -0.000000    0.000002    0.003652    0.820452   -0.000000   -0.000000
 5           0.003651   -0.000083    0.000000   -0.000000    0.820452   -0.000000
 6           0.000083    0.003651   -0.000002   -0.000000   -0.000000    0.820452


 RESULTS FOR STATE 1.2
 =====================

 Coefficient of reference function:   C(0) = 0.98610384 (fixed)   0.98674039 (relaxed)   0.98660570 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00027306   -0.00003833   -0.05476920
 Singles      0.02156872   -0.02862070   -0.02950376
 Pairs        0.00549482    0.00645272    0.00585999
 Total        1.02733659   -0.02220631   -0.07841297
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -24.57036732
 Nuclear energy                         0.00000000
 Kinetic energy                        24.68592937
 One electron energy                  -32.33267370
 Two electron energy                    7.68353347
 Virial quotient                       -0.99850971
 Correlation energy                    -0.07877291
 !MRCI STATE 1.2 Energy               -24.649140226625

 Properties without orbital relaxation:

 !MRCI STATE 1.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -24.65129361 (Davidson, fixed reference)
 Cluster corrected energies           -24.65127152 (Davidson, relaxed reference)
 Cluster corrected energies           -24.65129361 (Davidson, rotated reference)

 Cluster corrected energies           -24.65021672 (Pople, fixed reference)
 Cluster corrected energies           -24.65020568 (Pople, relaxed reference)
 Cluster corrected energies           -24.65021672 (Pople, rotated reference)



 RESULTS FOR STATE 2.2
 =====================

 Coefficient of reference function:   C(0) = 0.98610379 (fixed)   0.98674045 (relaxed)   0.98660576 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00027306   -0.00003833   -0.04853975
 Singles      0.02156864   -0.02862066   -0.02950375
 Pairs        0.00549478    0.00005294   -0.00036947
 Total        1.02733648   -0.02860605   -0.07841296
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -24.57036732
 Nuclear energy                         0.00000000
 Kinetic energy                        24.68592816
 One electron energy                  -32.33267379
 Two electron energy                    7.68353357
 Virial quotient                       -0.99850976
 Correlation energy                    -0.07877290
 !MRCI STATE 2.2 Energy               -24.649140221728

 Properties without orbital relaxation:

 !MRCI STATE 2.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -24.65129360 (Davidson, fixed reference)
 Cluster corrected energies           -24.65127150 (Davidson, relaxed reference)
 Cluster corrected energies           -24.65129360 (Davidson, rotated reference)

 Cluster corrected energies           -24.65021671 (Pople, fixed reference)
 Cluster corrected energies           -24.65020567 (Pople, relaxed reference)
 Cluster corrected energies           -24.65021671 (Pople, rotated reference)



 RESULTS FOR STATE 3.2
 =====================

 Coefficient of reference function:   C(0) = 0.98613698 (fixed)   0.98674045 (relaxed)   0.98660576 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00027306   -0.00003833   -0.04848851
 Singles      0.02156864   -0.02862066   -0.02950375
 Pairs        0.00549478    0.00000031   -0.00042070
 Total        1.02733648   -0.02865869   -0.07841296
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -24.57036732
 Nuclear energy                         0.00000000
 Kinetic energy                        24.68592812
 One electron energy                  -32.33267378
 Two electron energy                    7.68353356
 Virial quotient                       -0.99850976
 Correlation energy                    -0.07877290
 !MRCI STATE 3.2 Energy               -24.649140221573

 Properties without orbital relaxation:

 !MRCI STATE 3.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -24.65129360 (Davidson, fixed reference)
 Cluster corrected energies           -24.65127150 (Davidson, relaxed reference)
 Cluster corrected energies           -24.65129360 (Davidson, rotated reference)

 Cluster corrected energies           -24.65021671 (Pople, fixed reference)
 Cluster corrected energies           -24.65020567 (Pople, relaxed reference)
 Cluster corrected energies           -24.65021671 (Pople, rotated reference)



 RESULTS FOR STATE 4.2
 =====================

 Coefficient of reference function:   C(0) = 0.81983002 (fixed)   0.82057970 (relaxed)   0.82045217 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00031091   -0.00004609   -0.03146752
 Singles      0.46887466   -0.09385402   -0.10754964
 Pairs        0.01638561   -0.00000088   -0.00154127
 Total        1.48557118   -0.09390099   -0.14055844
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -24.27285824
 Nuclear energy                         0.00000000
 Kinetic energy                        24.50275146
 One electron energy                  -31.13556890
 Two electron energy                    6.72251216
 Virial quotient                       -0.99633940
 Correlation energy                    -0.14019850
 !MRCI STATE 4.2 Energy               -24.413056737390

 Properties without orbital relaxation:

 !MRCI STATE 4.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -24.48113309 (Davidson, fixed reference)
 Cluster corrected energies           -24.48106835 (Davidson, relaxed reference)
 Cluster corrected energies           -24.48113309 (Davidson, rotated reference)

 Cluster corrected energies           -24.44529511 (Pople, fixed reference)
 Cluster corrected energies           -24.44526753 (Pople, relaxed reference)
 Cluster corrected energies           -24.44529511 (Pople, rotated reference)



 RESULTS FOR STATE 5.2
 =====================

 Maximum overlap with reference state  6

 Coefficient of reference function:   C(0) = 0.81943409 (fixed)   0.82057930 (relaxed)   0.82045176 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00031091   -0.00004610   -0.00019287
 Singles      0.46887566   -0.09385412   -0.10754983
 Pairs        0.01638608   -0.04646156   -0.03281579
 Total        1.48557266   -0.14036177   -0.14055849
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -24.27285812
 Nuclear energy                         0.00000000
 Kinetic energy                        24.50275247
 One electron energy                  -31.13556981
 Two electron energy                    6.72251308
 Virial quotient                       -0.99633936
 Correlation energy                    -0.14019861
 !MRCI STATE 5.2 Energy               -24.413056727771

 Properties without orbital relaxation:

 !MRCI STATE 5.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -24.48113334 (Davidson, fixed reference)
 Cluster corrected energies           -24.48106860 (Davidson, relaxed reference)
 Cluster corrected energies           -24.48113334 (Davidson, rotated reference)

 Cluster corrected energies           -24.44529521 (Pople, fixed reference)
 Cluster corrected energies           -24.44526763 (Pople, relaxed reference)
 Cluster corrected energies           -24.44529521 (Pople, rotated reference)



 RESULTS FOR STATE 6.2
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.81943436 (fixed)   0.82057956 (relaxed)   0.82045203 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00031091   -0.00004609   -0.03049632
 Singles      0.46887517   -0.09385407   -0.10754972
 Pairs        0.01638562   -0.00144372   -0.00251251
 Total        1.48557170   -0.09534388   -0.14055855
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -24.27285818
 Nuclear energy                         0.00000000
 Kinetic energy                        24.50275150
 One electron energy                  -31.13556893
 Two electron energy                    6.72251221
 Virial quotient                       -0.99633940
 Correlation energy                    -0.14019855
 !MRCI STATE 6.2 Energy               -24.413056726344

 Properties without orbital relaxation:

 !MRCI STATE 6.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -24.48113317 (Davidson, fixed reference)
 Cluster corrected energies           -24.48106844 (Davidson, relaxed reference)
 Cluster corrected energies           -24.48113317 (Davidson, rotated reference)

 Cluster corrected energies           -24.44529514 (Pople, fixed reference)
 Cluster corrected energies           -24.44526756 (Pople, relaxed reference)
 Cluster corrected energies           -24.44529514 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       29.51       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       6       10.51       700     1000      520     2100     2140     5203   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *        48.31     46.88      0.72      0.01      0.49
 REAL TIME  *        52.56 SEC
 DISK USED  *        40.09 MB (local),      221.54 MB (total)
 SF USED    *       101.55 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =       -24.65129361  AU                              
 SETTING HLSDIAG(2)     =       -24.65129360  AU                              
 SETTING HLSDIAG(3)     =       -24.65129360  AU                              
 SETTING HLSDIAG(4)     =       -24.48113309  AU                              
 SETTING HLSDIAG(5)     =       -24.48113334  AU                              
 SETTING HLSDIAG(6)     =       -24.48113317  AU                              


        HLSDIAG
    -24.65129361
    -24.65129360
    -24.65129360
    -24.48113309
    -24.48113334
    -24.48113317
                                                  


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

         920190. SPIN-ORBIT INTEGRALS WRITTEN OUT IN      236 RECORDS ON RECORD     11290 OF FILE 1


 CPU time:      0.17 sec, REAL time:      0.17 sec


 SORTLS1 read      953880. and wrote      953880. SO integrals in    15 records. CPU time:      0.01 sec, REAL time:      0.03 sec
 SORTLS2 read      953880. and wrote     4701996. SO integrals in    15 records. CPU time:      0.00 sec, REAL time:      0.02 sec

 FILE SIZES: FILE 1:    46.4 MBYTE, FILE 4:     0.0 MBYTE, TOTAL:    46.4 MBYTE

 Preparing effective Fock matrices
 eXact-2-Component (X2C) method activated

 Computing Douglas-Kroll / X2C integrals

 Total X Y Z Fock matrices evaluated:     2    2    2
  
 Wavefunction restored from record  5203.2  Symmetry=2  S= 0.5  NSTATE=   6

 Original energies:    -24.649140    -24.649140    -24.649140    -24.413057    -24.413057    -24.413057
 Replaced energies:    -24.651294    -24.651294    -24.651294    -24.481133    -24.481133    -24.481133



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=   -24.65129361

 Wigner-Eckart theorem used for  3 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -4.61       0.00      -0.00
                            0.00      -0.00       0.04      -0.02      -0.00       0.00       0.00       0.00       4.61      -2.12

    2   2.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       4.61       0.00       0.00      -0.00
                            0.00      -0.00      -4.61       2.12      -0.00      -0.00      -0.00       0.00       0.04      -0.02

    3   3.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00       0.00
                           -0.04       4.61      -0.00      -0.00       0.07      -2.12      -4.61      -0.04      -0.00      -0.00

    4   4.2  0.5  0.5       0.00       0.00       0.00   37345.92       0.00       0.00       0.00       0.00      -0.00       0.00
                            0.02      -2.12       0.00      -0.00      -0.03       0.97       2.12       0.02       0.00      -0.00

    5   5.2  0.5  0.5       0.00       0.00       0.00       0.00   37345.86       0.00       0.05       2.12      -0.00       0.00
                            0.00       0.00      -0.07       0.03       0.00      -0.00       0.00      -0.00      -2.12       0.97

    6   6.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00   37345.90      -2.12       0.05      -0.00       0.00
                           -0.00       0.00       2.12      -0.97       0.00      -0.00       0.00      -0.00      -0.07       0.03

    7   1.2  0.5 -0.5      -0.00       4.61      -0.00       0.00       0.05      -2.12       0.00       0.00       0.00       0.00
                           -0.00       0.00       4.61      -2.12      -0.00      -0.00      -0.00       0.00      -0.04       0.02

    8   2.2  0.5 -0.5      -4.61       0.00      -0.00       0.00       2.12       0.05       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.04      -0.02       0.00       0.00      -0.00       0.00       4.61      -2.12

    9   3.2  0.5 -0.5       0.00       0.00       0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00
                           -4.61      -0.04       0.00      -0.00       2.12       0.07       0.04      -4.61       0.00       0.00

   10   4.2  0.5 -0.5      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   37345.92
                            2.12       0.02       0.00       0.00      -0.97      -0.03      -0.02       2.12      -0.00       0.00

   11   5.2  0.5 -0.5      -0.05      -2.12       0.00      -0.00       0.00       0.97       0.00       0.00       0.00       0.00
                            0.00      -0.00      -2.12       0.97       0.00       0.00      -0.00      -0.00       0.07      -0.03

   12   6.2  0.5 -0.5       2.12      -0.05       0.00      -0.00      -0.97      -0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.07       0.03      -0.00      -0.00       0.00      -0.00      -2.12       0.97


   Nr   State  S   Sz       11         12

    1   1.2  0.5  0.5      -0.05       2.12
                           -0.00      -0.00

    2   2.2  0.5  0.5      -2.12      -0.05
                            0.00       0.00

    3   3.2  0.5  0.5       0.00       0.00
                            2.12       0.07

    4   4.2  0.5  0.5      -0.00      -0.00
                           -0.97      -0.03

    5   5.2  0.5  0.5       0.00      -0.97
                           -0.00       0.00

    6   6.2  0.5  0.5       0.97      -0.00
                           -0.00       0.00

    7   1.2  0.5 -0.5       0.00       0.00
                            0.00      -0.00

    8   2.2  0.5 -0.5       0.00       0.00
                            0.00       0.00

    9   3.2  0.5 -0.5       0.00       0.00
                           -0.07       2.12

   10   4.2  0.5 -0.5       0.00       0.00
                            0.03      -0.97

   11   5.2  0.5 -0.5   37345.86       0.00
                           -0.00       0.00

   12   6.2  0.5 -0.5       0.00   37345.90
                           -0.00       0.00


 No symmetry adaption


 Spin-orbit eigenstates   (energies)
 ======================

     Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
              (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1   -24.65133558    -0.00004197       -9.21      0.00000000        0.00      0.0000
     2   -24.65133558    -0.00004197       -9.21      0.00000000        0.00      0.0000
     3   -24.65127262     0.00002099        4.61      0.00006296       13.82      0.0017
     4   -24.65127262     0.00002099        4.61      0.00006296       13.82      0.0017
     5   -24.65127261     0.00002100        4.61      0.00006297       13.82      0.0017
     6   -24.65127261     0.00002100        4.61      0.00006297       13.82      0.0017
     7   -24.48114207     0.17015154    37343.95      0.17019351    37353.16      4.6312
     8   -24.48114207     0.17015154    37343.95      0.17019351    37353.16      4.6312
     9   -24.48112884     0.17016477    37346.85      0.17020674    37356.06      4.6316
    10   -24.48112884     0.17016477    37346.85      0.17020674    37356.06      4.6316
    11   -24.48112869     0.17016492    37346.88      0.17020689    37356.09      4.6316
    12   -24.48112869     0.17016492    37346.88      0.17020689    37356.09      4.6316


 Eigenvectors of spin-orbit matrix
 =================================

  Basis states          Eigenvectors (columnwise)

   Nr   State  S   Sz        1             2             3             4             5             6             7             8

    1    1.2  0.5  0.5   0.575512681  -0.047071173   0.816329342   0.011537478  -0.006503693   0.000667581   0.000064011   0.000012614
                         0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000

    2    2.2  0.5  0.5   0.024713297   0.302155428  -0.003111273   0.216979384   0.054546413   0.585961177   0.000000187  -0.000000850
                         0.040022547   0.489668349  -0.004961997   0.352486014   0.039478863   0.384017331   0.000012689  -0.000064409

    3    3.2  0.5  0.5   0.040048347   0.489648549  -0.004845535   0.342829054  -0.039811907  -0.387600847   0.000012732  -0.000064613
                        -0.019991653  -0.302530432  -0.000364970  -0.211085696   0.060904409   0.590825523   0.000000352   0.000000958

    4    4.2  0.5  0.5  -0.000004549  -0.000055646  -0.000000277   0.000019475  -0.000002261  -0.000022008   0.110646614  -0.561596223
                         0.000002269   0.000034348  -0.000000021  -0.000011979   0.000003461   0.000033579   0.003110063   0.008085459

    5    5.2  0.5  0.5  -0.000065284   0.000006127   0.000046384   0.000000375  -0.000000440  -0.000000724   0.572190798   0.112909139
                         0.000000104   0.000001273   0.000000006  -0.000000458  -0.000000051  -0.000000497  -0.002593162   0.013163905

    6    6.2  0.5  0.5  -0.000004299  -0.000034174   0.000000884   0.000012326   0.000003091   0.000033295   0.014428418  -0.004676676
                        -0.000004547  -0.000055634  -0.000000282   0.000020018   0.000002241   0.000021799   0.111325824  -0.565099694

    7    1.2  0.5 -0.5  -0.024700393  -0.301997775  -0.006043640   0.427615177  -0.000558106  -0.005437169  -0.000000161   0.000000819
                        -0.040069763  -0.489910390  -0.009827910   0.695369582  -0.000366309  -0.003568645  -0.000012613   0.000064006

    8    2.2  0.5 -0.5   0.575389369  -0.047037751  -0.413915943  -0.005856520  -0.700585171   0.067263946   0.000064415   0.000012690
                         0.000261214  -0.000035761  -0.000186805  -0.000051033  -0.000479752  -0.003074634   0.000000026   0.000000024

    9    3.2  0.5 -0.5  -0.000590828  -0.003997119   0.000224990  -0.002849111  -0.000153005   0.000135636  -0.000000132   0.000000515
                         0.575569296  -0.044582051  -0.402602634  -0.003936366   0.706618137  -0.072762054   0.000064620   0.000012727

   10    4.2  0.5 -0.5   0.000000039   0.000000455   0.000000003  -0.000000163  -0.000000026   0.000000009  -0.000902820   0.004524814
                        -0.000065393   0.000005063  -0.000022864  -0.000000225   0.000040148  -0.000004134   0.561653698   0.110597792

   11    5.2  0.5 -0.5   0.000004299   0.000034169   0.000000194   0.000024303   0.000000878  -0.000000396  -0.014606768   0.004724516
                         0.000004548   0.000055628  -0.000000559   0.000039508  -0.000000018  -0.000000199  -0.112731559   0.572177169

   12    6.2  0.5 -0.5  -0.000065291   0.000006127  -0.000023509   0.000000223  -0.000039796   0.000003814   0.565113290   0.111501238
                         0.000000103   0.000001274  -0.000000013   0.000000900  -0.000000045  -0.000000177  -0.002550488   0.013003547


   Nr   State  S   Sz        9            10            11            12

    1    1.2  0.5  0.5  -0.000045362   0.000008332   0.000004215   0.000007237
                         0.000000000  -0.000000000  -0.000000000  -0.000000000

    2    2.2  0.5  0.5  -0.000002268  -0.000015820  -0.000028931   0.000020678
                        -0.000004459  -0.000024276  -0.000003288   0.000001922

    3    3.2  0.5  0.5  -0.000002333  -0.000012690   0.000003986  -0.000002331
                         0.000002202   0.000008095  -0.000035704   0.000024146

    4    4.2  0.5  0.5   0.042840575   0.233253092  -0.070549270   0.041237948
                        -0.040407254  -0.148502388   0.633939586  -0.428726910

    5    5.2  0.5  0.5   0.785648392  -0.150733643  -0.081888605  -0.113584851
                        -0.001769246  -0.009629615  -0.001236919   0.000720959

    6    6.2  0.5  0.5   0.059468032   0.281196885   0.501994013  -0.362872441
                         0.080270071   0.436990464   0.056961700  -0.033282453

    7    1.2  0.5 -0.5  -0.000004524  -0.000024632   0.000007196  -0.000004191
                        -0.000006997  -0.000038092   0.000000770  -0.000000449

    8    2.2  0.5 -0.5   0.000028976  -0.000004976   0.000020765   0.000029117
                         0.000000102   0.000000517   0.000000289  -0.000000190

    9    3.2  0.5 -0.5   0.000000094   0.000000582   0.000000252  -0.000000164
                         0.000015052  -0.000003154  -0.000024257  -0.000035926

   10    4.2  0.5 -0.5  -0.001954413  -0.010668799  -0.004627171   0.002676167
                        -0.276507042   0.057915781   0.430680765   0.637847503

   11    5.2  0.5 -0.5   0.089934800   0.425122086  -0.112862935   0.081555113
                         0.121346991   0.660694890  -0.012806089   0.007485793

   12    6.2  0.5 -0.5  -0.519645088   0.099696552  -0.364353630  -0.505205231
                         0.001156156   0.006350496  -0.005528359   0.003209197


 Composition of spin-orbit eigenvectors
 ======================================

   Nr   State  S   Sz       1        2        3        4        5        6        7        8        9       10

    1    1.2  0.5  0.5  33.121%   0.222%  66.639%   0.013%   0.004%   0.000%   0.000%   0.000%   0.000%   0.000%
    2    2.2  0.5  0.5   0.221%  33.107%   0.003%  17.133%   0.453%  49.082%   0.000%   0.000%   0.000%   0.000%
    3    3.2  0.5  0.5   0.200%  33.128%   0.002%  16.209%   0.529%  49.931%   0.000%   0.000%   0.000%   0.000%
    4    4.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   1.225%  31.546%   0.347%   7.646%
    5    5.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  32.741%   1.292%  61.725%   2.281%
    6    6.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   1.260%  31.936%   0.998%  27.003%
    7    1.2  0.5 -0.5   0.222%  33.121%   0.013%  66.639%   0.000%   0.004%   0.000%   0.000%   0.000%   0.000%
    8    2.2  0.5 -0.5  33.107%   0.221%  17.133%   0.003%  49.082%   0.453%   0.000%   0.000%   0.000%   0.000%
    9    3.2  0.5 -0.5  33.128%   0.200%  16.209%   0.002%  49.931%   0.529%   0.000%   0.000%   0.000%   0.000%
   10    4.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  31.546%   1.225%   7.646%   0.347%
   11    5.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   1.292%  32.741%   2.281%  61.725%
   12    6.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  31.936%   1.260%  27.003%   0.998%

   Nr   State  S   Sz      11       12

    1    1.2  0.5  0.5   0.000%   0.000%
    2    2.2  0.5  0.5   0.000%   0.000%
    3    3.2  0.5  0.5   0.000%   0.000%
    4    4.2  0.5  0.5  40.686%  18.551%
    5    5.2  0.5  0.5   0.671%   1.290%
    6    6.2  0.5  0.5  25.524%  13.278%
    7    1.2  0.5 -0.5   0.000%   0.000%
    8    2.2  0.5 -0.5   0.000%   0.000%
    9    3.2  0.5 -0.5   0.000%   0.000%
   10    4.2  0.5 -0.5  18.551%  40.686%
   11    5.2  0.5 -0.5   1.290%   0.671%
   12    6.2  0.5 -0.5  13.278%  25.524%


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
              1      24       44.28       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       6       10.51       700     1000      520     2100     2140     5203   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *        77.80     29.48     46.88      0.72      0.01      0.49
 REAL TIME  *        85.16 SEC
 DISK USED  *        40.11 MB (local),      297.56 MB (total)
 SF USED    *       101.55 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCVTZ-DK energy=    -24.481128690428

              CI           MULTI         RHF-SCF
    -24.41305673    -24.27249818    -24.53495315
 **********************************************************************************************************************************
 Molpro calculation terminated
